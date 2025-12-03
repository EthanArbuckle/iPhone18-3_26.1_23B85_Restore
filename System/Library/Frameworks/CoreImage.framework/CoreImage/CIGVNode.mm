@interface CIGVNode
+ (__CFDictionary)textAttributesForLabel;
+ (__CFDictionary)textAttributesForTitle;
- (CGRect)badgeFrame;
- (CGRect)contentFrame;
- (CGRect)extent;
- (CGRect)imagesFrame;
- (CGRect)labelFrame;
- (CGRect)roisFrame;
- (CGRect)titleFrame;
- (CGSize)contentCornerSize;
- (CGSize)contentInsertSize;
- (CIGVNode)init;
- (CIGVNode)initWithCINode:(void *)node extent:(CGRect)extent;
- (void)addImage:(CGImage *)image;
- (void)addRoi:(CGRect)roi;
- (void)dealloc;
- (void)setLabel:(__CFString *)label;
- (void)setTitle:(__CFString *)title;
- (void)updateBadgeSize;
- (void)updateContentSize;
- (void)updateSize;
@end

@implementation CIGVNode

+ (__CFDictionary)textAttributesForTitle
{
  if (textAttributesForTitle_onceToken != -1)
  {
    +[CIGVNode textAttributesForTitle];
  }

  return textAttributesForTitle_attributes;
}

void __34__CIGVNode_textAttributesForTitle__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontUserFixedPitch, 12.0, 0);
  v3 = 2;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v3;
  v1 = CTParagraphStyleCreate(&settings, 1uLL);
  v2 = *MEMORY[0x1E6965A30];
  v4[0] = *MEMORY[0x1E6965658];
  v4[1] = v2;
  v5[0] = UIFontForLanguage;
  v5[1] = v1;
  textAttributesForTitle_attributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  CFRetain(textAttributesForTitle_attributes);
  CFRelease(v1);
  CFRelease(UIFontForLanguage);
}

+ (__CFDictionary)textAttributesForLabel
{
  if (textAttributesForLabel_onceToken != -1)
  {
    +[CIGVNode textAttributesForLabel];
  }

  return textAttributesForLabel_attributes;
}

void __34__CIGVNode_textAttributesForLabel__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontUserFixedPitch, 12.0, 0);
  v3 = 0x3FF4000000000000;
  settings.spec = kCTParagraphStyleSpecifierLineHeightMultiple;
  settings.valueSize = 8;
  settings.value = &v3;
  v1 = CTParagraphStyleCreate(&settings, 1uLL);
  v2 = *MEMORY[0x1E6965A30];
  v4[0] = *MEMORY[0x1E6965658];
  v4[1] = v2;
  v5[0] = UIFontForLanguage;
  v5[1] = v1;
  textAttributesForLabel_attributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  CFRetain(textAttributesForLabel_attributes);
  CFRelease(v1);
  CFRelease(UIFontForLanguage);
}

- (CIGVNode)init
{
  v6.receiver = self;
  v6.super_class = CIGVNode;
  v2 = [(GVNode *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->color = 0;
    v2->shape = 0;
    v2->images = [MEMORY[0x1E695DF70] array];
    v3->rois = [MEMORY[0x1E695DF70] array];
    v4 = *(MEMORY[0x1E695F050] + 16);
    v3->extent.origin = *MEMORY[0x1E695F050];
    v3->extent.size = v4;
  }

  return v3;
}

- (CIGVNode)initWithCINode:(void *)node extent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v8 = [(CIGVNode *)self init];
  v9 = v8;
  if (v8)
  {
    p_extent = &v8->extent;
    v13 = *contentScale;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectApplyAffineTransform(v14, &v13);
    *p_extent = v15;
    if (CGRectIsInfinite(v15))
    {
      v11 = *(MEMORY[0x1E695F050] + 16);
      p_extent->origin = *MEMORY[0x1E695F050];
      v9->extent.size = v11;
    }
  }

  return v9;
}

- (void)dealloc
{
  title = self->title;
  if (title)
  {
    CFRelease(title);
  }

  label = self->label;
  if (label)
  {
    CFRelease(label);
  }

  self->title = 0;
  self->label = 0;
  v5.receiver = self;
  v5.super_class = CIGVNode;
  [(CIGVNode *)&v5 dealloc];
}

- (CGRect)extent
{
  x = self->extent.origin.x;
  y = self->extent.origin.y;
  width = self->extent.size.width;
  height = self->extent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTitle:(__CFString *)title
{
  title = self->title;
  if (title)
  {
    CFRelease(title);
  }

  v6 = CFRetain(title);
  self->title = v6;
  self->titleSize.width = sizeForStringWithAttributes(v6, +[CIGVNode textAttributesForTitle]);
  self->titleSize.height = v7;

  [(CIGVNode *)self updateBadgeSize];
}

- (void)setLabel:(__CFString *)label
{
  label = self->label;
  if (label)
  {
    CFRelease(label);
  }

  v6 = CFRetain(label);
  self->label = v6;
  self->labelSize.width = sizeForStringWithAttributes(v6, +[CIGVNode textAttributesForLabel]);
  self->labelSize.height = v7;

  [(CIGVNode *)self updateContentSize];
}

- (void)addImage:(CGImage *)image
{
  v19 = *MEMORY[0x1E69E9840];
  if (image)
  {
    [(NSMutableArray *)self->images addObject:?];
    images = self->images;
    v6 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMutableArray *)images countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(images);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = vcvtd_n_f64_u64(CGImageGetWidth(v11), 1uLL);
          v13 = vcvtd_n_f64_u64(CGImageGetHeight(v11), 1uLL);
          v6 = v6 + v12;
          if (v5 <= v13)
          {
            v5 = v13;
          }
        }

        v8 = [(NSMutableArray *)images countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    self->imagesSize.width = v6 + ([(NSMutableArray *)images count]- 1) * 5.0;
    self->imagesSize.height = v5;
    [(CIGVNode *)self updateContentSize];
  }
}

- (void)addRoi:(CGRect)roi
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = *contentScale;
  v22 = CGRectApplyAffineTransform(roi, &v20);
  [(NSMutableArray *)self->rois addObject:valueWithRect(v22.origin.x, v22.origin.y, v22.size.width, v22.size.height)];
  rois = self->rois;
  x = self->extent.origin.x;
  y = self->extent.origin.y;
  width = self->extent.size.width;
  height = self->extent.size.height;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableArray *)rois countByEnumeratingWithState:&v16 objects:&v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(rois);
        }

        v25.origin.x = rectFromValue(*(*(&v16 + 1) + 8 * v12));
        v25.origin.y = v13;
        v25.size.width = v14;
        v25.size.height = v15;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v24 = CGRectUnion(v23, v25);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)rois countByEnumeratingWithState:&v16 objects:&v20 count:16];
    }

    while (v10);
  }

  self->roisSize.width = width;
  self->roisSize.height = height;
  [(CIGVNode *)self updateContentSize];
}

- (CGRect)titleFrame
{
  [(GVNode *)self size];
  v4 = (v3 - self->titleSize.width) * 0.5;
  v6 = v5 - self->badgeSize.height + (self->badgeSize.height - self->titleSize.height) * 0.5;
  [(GVNode *)self origin];
  v8 = v4 + v7;
  [(GVNode *)self origin];
  v10 = v9 + v6;
  width = self->titleSize.width;
  height = self->titleSize.height;
  v13 = v8;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v10;
  result.origin.x = v13;
  return result;
}

- (CGRect)badgeFrame
{
  [(GVNode *)self size];
  v4 = (v3 - self->badgeSize.width) * 0.5;
  v6 = v5 - self->badgeSize.height;
  [(GVNode *)self origin];
  v8 = v4 + v7;
  [(GVNode *)self origin];
  v10 = v6 + v9;
  width = self->badgeSize.width;
  height = self->badgeSize.height;
  v13 = v8;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v10;
  result.origin.x = v13;
  return result;
}

- (CGSize)contentInsertSize
{
  shape = self->shape;
  v3 = 4.0;
  if (shape >= 3)
  {
    if (shape != 3)
    {
      [CIGVNode contentInsertSize];
    }

    width = self->contentSize.width;
    if (width >= self->contentSize.height)
    {
      width = self->contentSize.height;
    }

    v3 = width * 0.1 + 4.0;
  }

  v5 = 4.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGSize)contentCornerSize
{
  shape = self->shape;
  if ((shape - 1) < 2)
  {
    v3 = 8.0;
    v4 = 8.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    if (shape)
    {
      if (shape != 3)
      {
        [CIGVNode contentCornerSize];
      }

      width = self->contentSize.width;
      if (width >= self->contentSize.height)
      {
        width = self->contentSize.height;
      }

      v4 = width * 0.1;
      v3 = 4.0;
    }
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGRect)labelFrame
{
  [(GVNode *)self size];
  v4 = v3;
  [(CIGVNode *)self contentInsertSize];
  v5 = (v4 - self->labelSize.width) * 0.5;
  v7 = v6 + 5.0;
  [(GVNode *)self origin];
  v9 = v8 + v5;
  [(GVNode *)self origin];
  v11 = v7 + v10;
  width = self->labelSize.width;
  height = self->labelSize.height;
  v14 = v9;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v11;
  result.origin.x = v14;
  return result;
}

- (CGRect)imagesFrame
{
  [(GVNode *)self size];
  v4 = v3;
  [(CIGVNode *)self contentInsertSize];
  v5 = (v4 - self->imagesSize.width) * 0.5;
  v7 = v6 + self->labelSize.height + 10.0;
  [(GVNode *)self origin];
  v9 = v5 + v8;
  [(GVNode *)self origin];
  v11 = v7 + v10;
  width = self->imagesSize.width;
  height = self->imagesSize.height;
  v14 = v9;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v11;
  result.origin.x = v14;
  return result;
}

- (CGRect)roisFrame
{
  [(GVNode *)self size];
  v4 = v3;
  [(CIGVNode *)self contentInsertSize];
  width = self->roisSize.width;
  v7 = v6 + self->labelSize.height + 10.0;
  if ([(NSMutableArray *)self->images count])
  {
    v7 = v7 + self->imagesSize.height + 10.0;
  }

  [(GVNode *)self origin];
  v9 = (v4 - width) * 0.5 + v8;
  [(GVNode *)self origin];
  v11 = v7 + v10;
  v12 = self->roisSize.width;
  height = self->roisSize.height;
  v14 = v9;
  result.size.height = height;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v14;
  return result;
}

- (CGRect)contentFrame
{
  [(GVNode *)self size];
  v4 = v3;
  v6 = v5;
  [(GVNode *)self origin];
  v8 = v7;
  [(GVNode *)self origin];
  v10 = v6 + self->badgeSize.height * -0.5;
  v11 = v8;
  v12 = v4;
  result.size.height = v10;
  result.size.width = v12;
  result.origin.y = v9;
  result.origin.x = v11;
  return result;
}

- (void)updateSize
{
  v3 = self->contentSize.width + 10.0;
  v4 = self->contentSize.height + self->badgeSize.height + 10.0;
  [(CIGVNode *)self contentInsertSize];
  v6 = v3 + v5 * 2.0;
  v8 = v4 + v7 * 2.0;

  [(GVNode *)self setSize:v6, v8];
}

- (void)updateBadgeSize
{
  self->badgeSize = self->titleSize;
  self->badgeSize = vaddq_f64(self->badgeSize, xmmword_19CF268E0);
  [(CIGVNode *)self updateSize];
}

- (void)updateContentSize
{
  p_contentSize = &self->contentSize;
  self->contentSize = self->labelSize;
  if ([(NSMutableArray *)self->images count])
  {
    width = self->imagesSize.width;
    if (p_contentSize->width > width)
    {
      width = p_contentSize->width;
    }

    v5 = p_contentSize->height + self->imagesSize.height + 10.0;
    p_contentSize->width = width;
    p_contentSize->height = v5;
  }

  if ([(NSMutableArray *)self->rois count])
  {
    v6 = self->roisSize.width;
    if (p_contentSize->width > v6)
    {
      v6 = p_contentSize->width;
    }

    v7 = p_contentSize->height + self->roisSize.height + 10.0;
    p_contentSize->width = v6;
    p_contentSize->height = v7;
  }

  [(CIGVNode *)self updateSize];
}

@end