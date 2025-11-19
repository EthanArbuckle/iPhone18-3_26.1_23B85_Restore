@interface THNoteCardStorageLayer
- (CGRect)contentFrame;
- (CGRect)textFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (THNoteCardStorageLayer)init;
- (double)p_textVerticalCenter;
- (void)dealloc;
- (void)i_performWithEachLine:(id)a3;
- (void)i_updateStorageImageWithSize:(CGSize)a3;
- (void)layoutSublayers;
- (void)setFontFamily:(id)a3 textColor:(id)a4 underlineColor:(id)a5 characterSpacing:(double)a6 lineSpacingMode:(int)a7 lineSpacingAmount:(double)a8 alignment:(unsigned int)a9;
- (void)setFontSize:(double)a3 lineSpacing:(id)a4;
- (void)setFontSize:(double)a3 lineSpacingMode:(int)a4 lineSpacingAmount:(double)a5;
- (void)setLayoutContext:(id)a3;
- (void)setStorage:(id)a3 range:(_NSRange)a4;
- (void)setText:(id)a3 context:(id)a4;
@end

@implementation THNoteCardStorageLayer

- (THNoteCardStorageLayer)init
{
  v5.receiver = self;
  v5.super_class = THNoteCardStorageLayer;
  v2 = [(THNoteCardStorageLayer *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v2->_imageLayer = v3;
    [(CALayer *)v3 setContentsGravity:kCAGravityResizeAspect];
    [(THNoteCardStorageLayer *)v2 addSublayer:v2->_imageLayer];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNoteCardStorageLayer;
  [(THNoteCardBodyLayer *)&v3 dealloc];
}

- (void)setStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > [a3 length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if ([a3 length] < length)
    {
      length = [a3 length];
    }

    location = ([a3 length] - length);
  }

  -[THNoteCardStorageLayer setContext:](self, "setContext:", +[THTemporaryObjectContext temporaryContextForDocumentContext:](THTemporaryObjectContext, "temporaryContextForDocumentContext:", [a3 context]));
  v8 = [[THWPStorage alloc] initTemporaryWithContext:[(THNoteCardStorageLayer *)self context] storage:a3 range:location, length];
  [v8 setApplyTheme:0];
  self->_storage = v8;
  self->_hasGraphicalAttachments = 0;
  v9 = [(TSWPStorage *)self->_storage attachmentCount];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (([-[TSWPStorage attachmentAtAttachmentIndex:outCharIndex:](self->_storage attachmentAtAttachmentIndex:v11 outCharIndex:{0), "elementKind"}] & 0x10000F) == 0)
    {
      if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }

    self->_hasGraphicalAttachments = 1;
  }

LABEL_11:
  self->_storageImageValid = 0;

  [(THNoteCardStorageLayer *)self setNeedsLayout];
}

- (void)setText:(id)a3 context:(id)a4
{
  v7 = [[THWPStorage alloc] initTemporaryWithContext:a4 string:a3];
  [v7 setApplyTheme:0];
  self->_storage = v7;
  self->_hasGraphicalAttachments = 0;
  self->_storageImageValid = 0;

  [(THNoteCardStorageLayer *)self setNeedsLayout];
}

- (void)setFontFamily:(id)a3 textColor:(id)a4 underlineColor:(id)a5 characterSpacing:(double)a6 lineSpacingMode:(int)a7 lineSpacingAmount:(double)a8 alignment:(unsigned int)a9
{
  v9 = *&a9;
  v15 = [[TSWPLineSpacing alloc] initWithMode:*&a7 amount:a8];
  [(TSWPStorage *)self->_storage setFontFamily:a3 fontSize:a4 textColor:a5 underlineColor:v15 underlineWidth:v9 lineSpacing:1 characterSpacing:0.0 alignment:0.0 stripOtherAttributes:a6];

  self->_storageImageValid = 0;

  [(THNoteCardStorageLayer *)self setNeedsLayout];
}

- (CGRect)textFrame
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5012000000;
  v15 = sub_F8A34;
  v16 = nullsub_22;
  v17 = "";
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v19 = size;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_F8A44;
  v11[3] = &unk_45D768;
  v11[4] = &v12;
  [(THNoteCardStorageLayer *)self i_performWithEachLine:v11];
  v3 = v13[6];
  v4 = v13[7];
  v5 = v13[8];
  v6 = v13[9];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setLayoutContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = THNoteCardStorageLayer;
  [(THNoteCardBodyLayer *)&v4 setLayoutContext:a3];
  self->_storageImageValid = 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_storage)
  {
    [(THNoteCardStorageLayer *)self i_updateStorageImageWithSize:a3.width, a3.height];
    height = self->_imageSize.height;
    [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] noteCardBodyHeight];
    if (height <= v6)
    {
      [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] noteCardBodyHeight];
      *&v7 = v7;
      height = floorf(*&v7);
    }
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)contentFrame
{
  [(THNoteCardStorageLayer *)self layoutIfNeeded];
  imageLayer = self->_imageLayer;

  [(CALayer *)imageLayer frame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)i_performWithEachLine:(id)a3
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  lines = self->_lines;
  v6 = [(NSArray *)lines countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(lines);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        if (v10)
        {
          [*(*(&v30 + 1) + 8 * i) lineMetrics];
          v12 = *(&v25 + 1);
          v11 = *&v25;
          v14 = *(&v27 + 1);
          v13 = *&v27;
        }

        else
        {
          v29 = 0.0;
          v14 = 0.0;
          v13 = 0.0;
          v12 = 0.0;
          v11 = 0.0;
          v25 = 0u;
          v27 = 0u;
        }

        [(THNoteCardStorageLayer *)self convertRect:self->_imageLayer fromLayer:v11, v12, v13, v14, v25, v27];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if (v10)
        {
          [v10 lineMetrics];
          v23 = v29;
        }

        else
        {
          v29 = 0.0;
          v23 = 0.0;
          v26 = 0u;
          v28 = 0u;
        }

        [(THNoteCardStorageLayer *)self convertPoint:self->_imageLayer fromLayer:0.0, v23, v26, v28];
        (*(a3 + 2))(a3, v16, v18, v20, v22, v24);
      }

      v7 = [(NSArray *)lines countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }
}

- (void)layoutSublayers
{
  v11.receiver = self;
  v11.super_class = THNoteCardStorageLayer;
  [(THNoteCardStorageLayer *)&v11 layoutSublayers];
  if (self->_storage)
  {
    [(THNoteCardStorageLayer *)self bounds];
    [(THNoteCardStorageLayer *)self i_updateStorageImageWithSize:v3, v4];
    v5 = 0.0;
    if (self->_centerVertically)
    {
      height = self->_imageSize.height;
      [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] noteCardBodyHeight];
      if (height < v7)
      {
        [(THNoteCardStorageLayer *)self bounds];
        MidY = CGRectGetMidY(v12);
        [(THNoteCardStorageLayer *)self p_textVerticalCenter];
        v5 = MidY - v9;
      }
    }

    [(THNoteCardStorageLayer *)self bounds];
    MinX = CGRectGetMinX(v13);
    [(THNoteCardStorageLayer *)self bounds];
    [(CALayer *)self->_imageLayer setFrame:MinX, v5, CGRectGetWidth(v14), self->_imageSize.height];
  }
}

- (double)p_textVerticalCenter
{
  v3 = [(NSArray *)self->_lines firstObject];
  v4 = v3;
  if (v3)
  {
    [v3 lineMetrics];
    [v4 lineMetrics];
    v5 = v16 - v15;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(NSArray *)self->_lines lastObject];
  v7 = v6;
  if (v6)
  {
    [v6 lineMetrics];
    v8 = v16;
  }

  else
  {
    v8 = 0.0;
  }

  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] textScale];
  v10 = v9;
  if (v4)
  {
    [v4 lineMetrics];
    [v4 lineMetrics];
    if (v16 > v15 + v15)
    {
      return self->_imageSize.height * 0.5;
    }
  }

  v11 = (v5 + (v8 - v5) * 0.5) * v10;
  if (v7)
  {
    [v7 lineMetrics];
    [v7 lineMetrics];
    if (v14 > v13 + v13)
    {
      return self->_imageSize.height * 0.5;
    }
  }

  return v11;
}

- (void)setFontSize:(double)a3 lineSpacingMode:(int)a4 lineSpacingAmount:(double)a5
{
  v7 = [[TSWPLineSpacing alloc] initWithMode:*&a4 amount:a5];
  [(THNoteCardStorageLayer *)self setFontSize:v7 lineSpacing:a3];
}

- (void)setFontSize:(double)a3 lineSpacing:(id)a4
{
  storage = self->_storage;
  if (storage)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F9174;
    v9[3] = &unk_45D790;
    *&v9[5] = a3;
    v9[4] = a4;
    [(TSWPStorage *)storage modifyEachParagraphStyleWithBlock:v9];
    v7 = self->_storage;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_F9218;
    v8[3] = &unk_45D7B0;
    *&v8[4] = a3;
    [(TSWPStorage *)v7 modifyEachCharacterStyleWithBlock:v8];
    [(TSWPStorage *)self->_storage replaceListLabelTypeNumberWithBullet];
  }
}

- (void)i_updateStorageImageWithSize:(CGSize)a3
{
  width = a3.width;
  if (!self->_storage)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  if (!self->_storageImageValid)
  {
    TSUScreenScale();
    v6 = v5;
    v7 = [(TSWPStorage *)self->_storage context];
    v8 = [TSWPShapeStyle defaultStyleWithContext:v7];
    [v8 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
    [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] textScale];
    v10 = [[TSDInfoGeometry alloc] initWithWidth:width / v9];
    v11 = [[THNoteCardShapeInfo alloc] initWithContext:v7 geometry:v10 style:v8 wpStorage:self->_storage];
    [(THNoteCardShapeInfo *)v11 setIgnoreEquationAlignment:[(TSWPStorage *)self->_storage paragraphCount]== &dword_0 + 1];
    v20 = 0;
    v12 = &qword_34A868;
    v13 = 4;
    do
    {
      v14 = v12[1];
      [(THNoteCardStorageLayer *)self setFontSize:1 lineSpacingMode:*v12 lineSpacingAmount:*(v12 + 3)];
      [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] textScale];
      v16 = +[TSDImager imageForShapeInfo:viewScale:screenScale:lines:documentRoot:](TSDImager, "imageForShapeInfo:viewScale:screenScale:lines:documentRoot:", v11, &v20, [v7 documentRoot], v15, v6);
      v17 = [v20 count] >= v14 || v13-- == 0;
      v12 += 4;
    }

    while (!v17);
    self->_centerVertically = *(v12 - 2) & 1;

    self->_lines = v20;
    -[CALayer setContents:](self->_imageLayer, "setContents:", [v16 CGImage]);
    [v16 size];
    self->_imageSize.width = v18;
    self->_imageSize.height = v19;

    self->_storageImageValid = 1;
  }
}

@end