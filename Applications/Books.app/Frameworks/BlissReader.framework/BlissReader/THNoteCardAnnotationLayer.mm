@interface THNoteCardAnnotationLayer
- (void)dealloc;
- (void)layoutSublayers;
- (void)p_setupContentLayerForHighlightLine:(id)line;
@end

@implementation THNoteCardAnnotationLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNoteCardAnnotationLayer;
  [(THNoteCardStorageLayer *)&v3 dealloc];
}

- (void)layoutSublayers
{
  v13.receiver = self;
  v13.super_class = THNoteCardAnnotationLayer;
  [(THNoteCardStorageLayer *)&v13 layoutSublayers];
  [(NSMutableArray *)self->_highlightLayers makeObjectsPerformSelector:"removeFromSuperlayer"];
  [(NSMutableArray *)self->_highlightLayers removeAllObjects];
  if (!self->_highlightLayers)
  {
    self->_highlightLayers = objc_alloc_init(NSMutableArray);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_E4FF0;
  v12[3] = &unk_45D370;
  v12[4] = self;
  [(THNoteCardStorageLayer *)self i_performWithEachLine:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  highlightLayers = self->_highlightLayers;
  v4 = [(NSMutableArray *)highlightLayers countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(highlightLayers);
        }

        [(THNoteCardAnnotationLayer *)self insertSublayer:*(*(&v8 + 1) + 8 * i) atIndex:0];
      }

      v5 = [(NSMutableArray *)highlightLayers countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)p_setupContentLayerForHighlightLine:(id)line
{
  annotationStyle = [(THAnnotation *)self->_annotation annotationStyle];
  v5 = [objc_msgSend(+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme themeForAnnotationStyle:annotationStyle pageTheme:4 isUnderline:{annotationStyle == 6), "highlightColor"), "CGColor"}];
  [line currentLineRect];
  v9 = v8;
  v11 = v10;
  if (annotationStyle == 6)
  {
    [line baseline];
    v13 = v12;
    [line underlineOffset];
    v15 = v13 + v14;
    v16 = 2.0;
  }

  else
  {
    v15 = v6;
    v16 = v7;
  }

  v17 = +[CALayer layer];
  [(CALayer *)v17 setContentsGravity:kCAGravityBottom];
  [(CALayer *)v17 setHidden:0];
  [(CALayer *)v17 setFrame:v9, v15, v11, v16];
  LODWORD(v18) = 1.0;
  [(CALayer *)v17 setOpacity:v18];
  [(CALayer *)v17 setBackgroundColor:v5];

  [line setContentLayer:v17];
}

@end