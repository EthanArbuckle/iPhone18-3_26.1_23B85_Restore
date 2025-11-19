@interface THNotesAnnotationLayer
- (CGSize)sizeThatFits:(CGSize)result;
- (THNotesAnnotationLayer)initWithAnnotation:(id)a3 maxLines:(unint64_t)a4 showHighlight:(BOOL)a5;
- (void)dealloc;
- (void)i_updateStorageImageWithSize:(CGSize)a3;
- (void)layoutSublayers;
@end

@implementation THNotesAnnotationLayer

- (THNotesAnnotationLayer)initWithAnnotation:(id)a3 maxLines:(unint64_t)a4 showHighlight:(BOOL)a5
{
  v5 = a5;
  v11.receiver = self;
  v11.super_class = THNotesAnnotationLayer;
  v8 = [(THNoteCardStorageLayer *)&v11 init];
  if (v8)
  {
    if (v5)
    {
      v9 = objc_alloc_init(AEHighlight);
      v8->_highlight = v9;
      [(AEHighlight *)v9 setAnnotation:a3];
      v8->_renderingController = objc_alloc_init(AEHighlightRenderingController);
    }

    v8->_annotation = a3;
    v8->_maxLines = a4;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesAnnotationLayer;
  [(THNoteCardStorageLayer *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (self->super._storage)
  {
    [(THNotesAnnotationLayer *)self i_updateStorageImageWithSize:result.width, result.height];
    return self->super._imageSize;
  }

  return result;
}

- (void)layoutSublayers
{
  v18.receiver = self;
  v18.super_class = THNotesAnnotationLayer;
  [(THNoteCardStorageLayer *)&v18 layoutSublayers];
  if (self->_highlight)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v3 = +[NSMutableArray array];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_12D9B8;
    v16[3] = &unk_45DD58;
    v16[5] = v3;
    v16[6] = v17;
    v16[4] = self;
    [(THNoteCardStorageLayer *)self i_performWithEachLine:v16];
    [(AEHighlight *)self->_highlight setLines:v3];
    [-[AEHighlightRenderingController highlightLayers](self->_renderingController "highlightLayers")];
    v4 = [(AEHighlightRenderingController *)self->_renderingController highlightWithData:[(AEHighlight *)self->_highlight annotation]];
    highlight = self->_highlight;
    if (v4)
    {
      [(AEHighlightRenderingController *)self->_renderingController updatedHighlight:highlight];
    }

    else
    {
      [(AEHighlightRenderingController *)self->_renderingController addHighlight:highlight forData:[(AEHighlight *)highlight annotation]];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(AEHighlightRenderingController *)self->_renderingController highlightLayers];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    if (v7)
    {
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          LODWORD(v8) = 1.0;
          [v11 setOpacity:v8];
          [(THNotesAnnotationLayer *)self insertSublayer:v11 atIndex:0];
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(v17, 8);
  }
}

- (void)i_updateStorageImageWithSize:(CGSize)a3
{
  width = a3.width;
  if (!self->super._storage)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  if (!self->super._storageImageValid)
  {
    v14 = 0;
    v5 = [(TSWPStorage *)self->super._storage characterCount:a3.width];
    v13[0] = 0;
    v13[1] = v5 - 1;
    v6 = [(TSWPStorage *)self->super._storage valueForProperty:18 atCharIndex:0 effectiveRange:v13];
    if (!v6)
    {
      v6 = +[TSUColor blackColor];
    }

    -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:](self, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{15.0), "familyName"}], v6, 0, 4, 0.0, 3.0);
    [(THNoteCardStorageLayer *)self setFontSize:15.0];
    storage = self->super._storage;
    maxLines = self->_maxLines;
    [(THNotesAnnotationLayer *)self contentsScale];
    v10 = +[TSDImager imageForStorage:maxWidth:lines:layoutRect:useCullingRect:maxLines:allowsLastLineTruncation:contentsScale:documentRoot:](TSDImager, "imageForStorage:maxWidth:lines:layoutRect:useCullingRect:maxLines:allowsLastLineTruncation:contentsScale:documentRoot:", storage, &v14, 0, 0, maxLines, 1, width, v9, [-[TSWPStorage context](self->super._storage "context")]);

    self->super._lines = v14;
    -[CALayer setContents:](self->super._imageLayer, "setContents:", [v10 CGImage]);
    [v10 size];
    self->super._imageSize.width = v11;
    self->super._imageSize.height = v12;
    self->super._storageImageValid = 1;
  }
}

@end