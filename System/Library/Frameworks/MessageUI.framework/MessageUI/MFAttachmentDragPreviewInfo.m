@interface MFAttachmentDragPreviewInfo
- (CGPoint)center;
- (CGSize)displaySize;
- (MFAttachmentDragPreviewInfo)initWithCoder:(id)a3;
- (id)targetedDragPreviewInContainer:(id)a3 centerOffset:(CGPoint)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFAttachmentDragPreviewInfo

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MFAttachmentDragPreviewInfo *)self image];
  [v5 encodeObject:v4 forKey:@"imageData"];

  [v5 encodeBool:-[MFAttachmentDragPreviewInfo isInlineImage](self forKey:{"isInlineImage"), @"inlineImage"}];
  [(MFAttachmentDragPreviewInfo *)self center];
  [v5 encodeCGPoint:@"center" forKey:?];
  [(MFAttachmentDragPreviewInfo *)self displaySize];
  [v5 encodeCGSize:@"displaySize" forKey:?];
}

- (MFAttachmentDragPreviewInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFAttachmentDragPreviewInfo;
  v5 = [(MFAttachmentDragPreviewInfo *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    [(MFAttachmentDragPreviewInfo *)v5 setImage:v6];

    -[MFAttachmentDragPreviewInfo setIsInlineImage:](v5, "setIsInlineImage:", [v4 decodeBoolForKey:@"inlineImage"]);
    [v4 decodeCGPointForKey:@"center"];
    [(MFAttachmentDragPreviewInfo *)v5 setCenter:?];
    [v4 decodeCGSizeForKey:@"displaySize"];
    [(MFAttachmentDragPreviewInfo *)v5 setDisplaySize:?];
  }

  return v5;
}

- (id)targetedDragPreviewInContainer:(id)a3 centerOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(MFAttachmentDragPreviewInfo *)self center];
  v9 = v8;
  [(MFAttachmentDragPreviewInfo *)self center];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v13 = [(MFAttachmentDragPreviewInfo *)self image];
  v14 = [v12 initWithImage:v13];

  [(MFAttachmentDragPreviewInfo *)self displaySize];
  if (v16 != *MEMORY[0x1E695F060] || v15 != *(MEMORY[0x1E695F060] + 8))
  {
    [(MFAttachmentDragPreviewInfo *)self displaySize];
    v19 = v18;
    [(MFAttachmentDragPreviewInfo *)self displaySize];
    [v14 setFrame:{0.0, 0.0, v19, v20}];
  }

  if ([(MFAttachmentDragPreviewInfo *)self isInlineImage])
  {
    [v14 frame];
    v32 = CGRectInset(v31, 0.0, 1.0);
    [v14 setFrame:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
    [v14 setContentMode:2];
    v21 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  }

  else
  {
    v22 = MEMORY[0x1E696B098];
    [v14 frame];
    v23 = [v22 valueWithCGRect:?];
    v24 = objc_alloc(MEMORY[0x1E69DC9A0]);
    v29[0] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v21 = [v24 initWithTextLineRects:v25];
  }

  v26 = [objc_alloc(MEMORY[0x1E69DC9A8]) initWithContainer:v7 center:{x + v9, y + v11}];
  v27 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v14 parameters:v21 target:v26];

  return v27;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)displaySize
{
  width = self->_displaySize.width;
  height = self->_displaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end