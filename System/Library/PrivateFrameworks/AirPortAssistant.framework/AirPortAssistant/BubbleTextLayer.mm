@interface BubbleTextLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (BOOL)isAnnotationBubble;
- (BubbleTextLayer)initWithOwningView:(id)view;
- (CGImage)image;
- (CGRect)textFrame;
- (CGSize)boundsSizeConstraint;
- (CGSize)calculatePreferredSubframeSizes;
- (CGSize)getImagePreferredSize;
- (CGSize)getRightAccessoryLayerPreferredSize;
- (CGSize)preferredFrameSize;
- (CGSize)textPreferredFrameSizeForLayerSize:(CGSize)size;
- (double)textBaselineOffset;
- (void)addAnnotationPoint:(CGPoint)point;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setBoundsSizeConstraint:(CGSize)constraint;
- (void)setFont:(id)font;
- (void)setImage:(CGImage *)image;
- (void)setOwningView:(id)view;
- (void)setRightAccessoryLayer:(id)layer;
@end

@implementation BubbleTextLayer

- (BubbleTextLayer)initWithOwningView:(id)view
{
  v17.receiver = self;
  v17.super_class = BubbleTextLayer;
  v4 = [(BubbleTextLayer *)&v17 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, view);
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v6, v7, 1);
    v8 = sub_23EBFD680(0.0, 0.0, 0.0, 0.0);
    objc_msgSend_setFillColor_(v6, v9, v8);
    CGColorRelease(v8);
    if (sub_23EC132F8(v10, v11, v12))
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    }

    v6->_whiteShadowColor = v15;
    v6->_generalShadowColor = 0;
    objc_msgSend_setFontSize_(v6, v13, v14, 17.0);
  }

  return v6;
}

- (void)dealloc
{
  theLine = self->_theLine;
  if (theLine)
  {
    CFRelease(theLine);
    self->_theLine = 0;
  }

  curCTFont = self->_curCTFont;
  if (curCTFont)
  {
    CFRelease(curCTFont);
    self->_curCTFont = 0;
  }

  generalShadowColor = self->_generalShadowColor;
  if (generalShadowColor)
  {
    CFRelease(generalShadowColor);
    self->_generalShadowColor = 0;
  }

  whiteShadowColor = self->_whiteShadowColor;
  if (whiteShadowColor)
  {
    CFRelease(whiteShadowColor);
    self->_whiteShadowColor = 0;
  }

  v7.receiver = self;
  v7.super_class = BubbleTextLayer;
  [(BubbleTextLayer *)&v7 dealloc];
}

- (void)addAnnotationPoint:(CGPoint)point
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(point);
  objc_msgSend_addObject_(self->_annotationPoints, v5, DictionaryRepresentation);

  objc_msgSend_setNeedsLayout(self, v6, v7);
}

- (void)setOwningView:(id)view
{
  self->_owningView = view;
  v4 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, view);
  objc_msgSend_scale(v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v7);
}

- (CGImage)image
{
  result = self->_leftImageLayer;
  if (result)
  {
    return objc_msgSend_contents(result, a2, v2);
  }

  return result;
}

- (void)setImage:(CGImage *)image
{
  if (!self->_leftImageLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, image);
    self->_leftImageLayer = v5;
    objc_msgSend_addSublayer_(self, v6, v5);
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, image);
  v7 = MEMORY[0x277CD9FF0];
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, 0.0);
  objc_msgSend_setValue_forKey_(v7, v11, v10, *MEMORY[0x277CDA908]);
  objc_msgSend_setContents_(self->_leftImageLayer, v12, image);
  objc_msgSend_setNeedsLayout(self, v13, v14);
  v16 = MEMORY[0x277CD9FF0];

  MEMORY[0x2821F9670](v16, sel_commit, v15);
}

- (void)setRightAccessoryLayer:(id)layer
{
  if (layer && self->_rightAccessoryLayer != layer)
  {
    objc_msgSend_addSublayer_(self, a2, layer);
  }

  rightAccessoryLayer = self->_rightAccessoryLayer;
  if (rightAccessoryLayer)
  {
    v6 = rightAccessoryLayer == layer;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_msgSend_removeFromSuperlayer(rightAccessoryLayer, a2, layer);
  }

  self->_rightAccessoryLayer = layer;

  objc_msgSend_setNeedsLayout(self, a2, layer);
}

- (void)setFont:(id)font
{
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setFont:]", 800, "%@\n", v3, v4, v5, v6, self);
    }

    if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setFont:]", 800, "%@\n", v3, v4, v5, v6, font);
    }
  }

  v9 = CFGetTypeID(font);
  if (v9 == CGFontGetTypeID())
  {
    objc_msgSend_fontSize(self, v10, v11);
    v13 = CTFontCreateWithGraphicsFont(font, v12, 0, 0);
  }

  else if (v9 == CFStringGetTypeID())
  {
    objc_msgSend_fontSize(self, v16, v17);
    v13 = CTFontCreateWithName(font, v18, 0);
  }

  else
  {
    if (v9 != CTFontGetTypeID())
    {
      return;
    }

    v13 = CFRetain(font);
  }

  v19 = v13;
  if (v13)
  {
    curCTFont = self->_curCTFont;
    if (curCTFont)
    {
      CFRelease(curCTFont);
    }

    self->_curCTFont = v19;

    objc_msgSend_setNeedsLayout(self, v14, v15);
  }
}

- (void)setBoundsSizeConstraint:(CGSize)constraint
{
  height = constraint.height;
  width = constraint.width;
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setBoundsSizeConstraint:]", 800, "%@  constraint = (w = %.2f h = %.2f)\n", v4, v5, v6, v7, self);
  }

  self->_boundsSizeConstraint.width = width;
  self->_boundsSizeConstraint.height = height;

  objc_msgSend_layoutSublayers(self, a2, v3);
}

- (CGSize)boundsSizeConstraint
{
  width = self->_boundsSizeConstraint.width;
  height = self->_boundsSizeConstraint.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)getImagePreferredSize
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer getImagePreferredSize]", 800, "%@\n", v3, v4, v5, v6, self);
  }

  v8 = objc_msgSend_contents(self->_leftImageLayer, a2, v2);
  if (v8)
  {
    v13 = v8;
    Width = CGImageGetWidth(v8);
    objc_msgSend_contentsScale(self, v15, v16);
    v18 = Width / v17;
    Height = CGImageGetHeight(v13);
    objc_msgSend_contentsScale(self, v20, v21);
    v23 = Height / v22;
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A8];
    v23 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer getImagePreferredSize]", 800, "image layer size w = %.1f h = %.1f\n", v9, v10, v11, v12, *&v18);
  }

  v24 = v18;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)getRightAccessoryLayerPreferredSize
{
  rightAccessoryLayer = self->_rightAccessoryLayer;
  if (rightAccessoryLayer)
  {
    objc_msgSend_preferredFrameSize(rightAccessoryLayer, a2, v2);
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)isAnnotationBubble
{
  annotationPoints = self->_annotationPoints;
  if (annotationPoints)
  {
    LOBYTE(annotationPoints) = objc_msgSend_count(annotationPoints, a2, v2) != 0;
  }

  return annotationPoints;
}

- (CGSize)textPreferredFrameSizeForLayerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_string(self, a2, v3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = MEMORY[0x277CC4838];
  v11 = MEMORY[0x277CC49C0];
  if (isKindOfClass)
  {
    theLine = self->_theLine;
    if (theLine)
    {
      CFRelease(theLine);
    }

    v13 = objc_msgSend_string(self, v8, v9);
    self->_theLine = CTLineCreateWithAttributedString(v13);
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEAC0]);
    curCTFont = self->_curCTFont;
    v16 = *v10;
    v19 = objc_msgSend_foregroundColor(self, v17, v18);
    v21 = objc_msgSend_initWithObjectsAndKeys_(v14, v20, curCTFont, v16, v19, *v11, 0);
    v24 = objc_msgSend_string(self, v22, v23);
    v25 = CFAttributedStringCreate(0, v24, v21);
    v26 = self->_theLine;
    if (v26)
    {
      CFRelease(v26);
    }

    self->_theLine = CTLineCreateWithAttributedString(v25);
    CFRelease(v21);
    CFRelease(v25);
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    TruncatedLine = self->_theLine;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CBEAC0]);
    v29 = self->_curCTFont;
    v30 = *v10;
    v33 = objc_msgSend_foregroundColor(self, v31, v32);
    v35 = objc_msgSend_initWithObjectsAndKeys_(v28, v34, v29, v30, v33, *v11, 0);
    v36 = CFAttributedStringCreate(0, @"…", v35);
    v37 = CTLineCreateWithAttributedString(v36);
    TruncatedLine = CTLineCreateTruncatedLine(self->_theLine, width, kCTLineTruncationMiddle, v37);
    if (v35)
    {
      CFRelease(v35);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    v39 = self->_theLine;
    if (v39)
    {
      CFRelease(v39);
    }

    self->_theLine = TruncatedLine;
  }

  TypographicBounds = CTLineGetTypographicBounds(TruncatedLine, &self->_ascent, &self->_descent, &self->_leading);
  *&v45 = ceilf(TypographicBounds);
  v46 = self->_ascent + self->_descent;
  v47 = ceilf(v46);
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer textPreferredFrameSizeForLayerSize:]", 800, "width = %.2f  height = %.2f  ascent = %.2f  descent = %.2f  leading = %.2f\n", v40, v41, v42, v43, v45);
  }

  v48 = *&v45;
  v49 = v47;
  result.height = v49;
  result.width = v48;
  return result;
}

- (CGSize)calculatePreferredSubframeSizes
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "\n", v3, v4, v5, v6, v47);
  }

  objc_msgSend_boundsSizeConstraint(self, a2, v2);
  v9 = v8;
  v11 = v10;
  p_leftImageLayerSize = &self->_leftImageLayerSize;
  objc_msgSend_getImagePreferredSize(self, v13, v14);
  self->_leftImageLayerSize.width = v15;
  self->_leftImageLayerSize.height = v16;
  p_rightAccessoryLayerSize = &self->_rightAccessoryLayerSize;
  objc_msgSend_getRightAccessoryLayerPreferredSize(self, v18, v19);
  self->_rightAccessoryLayerSize.width = v22;
  self->_rightAccessoryLayerSize.height = v23;
  if (v9 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
  {
    if (self->_leftImageLayer)
    {
      v9 = v9 - (*p_leftImageLayerSize + 7.0);
    }

    v25 = v9 - (v22 + 7.0);
    if (!self->_rightAccessoryLayer)
    {
      v25 = v9;
    }

    v9 = v25 + -16.0;
  }

  p_textSize = &self->_textSize;
  objc_msgSend_textPreferredFrameSizeForLayerSize_(self, v20, v21, v9, v11);
  self->_textSize.width = width;
  self->_textSize.height = v34;
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        goto LABEL_19;
      }

      width = p_textSize->width;
    }

    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "text area size w = %.1f h = %.1f\n", v29, v30, v31, v32, *&width);
LABEL_19:
    if (dword_27E382F28 <= 800)
    {
      if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "image layer size w = %.1f h = %.1f\n", v29, v30, v31, v32, *p_leftImageLayerSize);
      }

      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "right accessory layer size w = %.1f h = %.1f\n", v29, v30, v31, v32, *p_rightAccessoryLayerSize);
      }
    }
  }

  v35 = p_textSize->width;
  if (self->_leftImageLayer)
  {
    v35 = v35 + *p_leftImageLayerSize + 7.0;
  }

  if (self->_rightAccessoryLayer)
  {
    v35 = v35 + *p_rightAccessoryLayerSize + 7.0;
  }

  height = self->_textSize.height;
  self->_contentSize.width = v35;
  self->_contentSize.height = height;
  v37 = height + 12.0;
  v38 = v35 + 16.0;
  if (objc_msgSend_isAnnotationBubble(self, v27, v28))
  {
    v37 = v37 + 16.0;
  }

  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "final bubble size w = %.1f h = %.1f\n", v39, v40, v41, v42, *&v38);
  }

  self->_bubbleSize.width = v38;
  self->_bubbleSize.height = v37;
  v43 = v37 + 4.0;
  v44 = ceilf(v43);
  v45 = v38 + 2.0;
  v46 = ceilf(v45);
  result.height = v44;
  result.width = v46;
  return result;
}

- (CGSize)preferredFrameSize
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer preferredFrameSize]", 800, "\n", v3, v4, v5, v6, v10);
  }

  objc_msgSend_calculatePreferredSubframeSizes(self, a2, v2);
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)textFrame
{
  x = self->_textFrame.origin.x;
  y = self->_textFrame.origin.y;
  width = self->_textFrame.size.width;
  height = self->_textFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)textBaselineOffset
{
  result = 0.0;
  if (self->_textSize.width != *MEMORY[0x277CBF3A8] || self->_textSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer textBaselineOffset]", 800, "returning %.2f\n", v2, v3, v4, v5, *&self->_ascent);
    }

    return self->_ascent;
  }

  return result;
}

- (void)layoutSublayers
{
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "%@\n", v3, v4, v5, v6, self);
    }

    if (dword_27E382F28 <= 800)
    {
      if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        objc_msgSend_frame(self, a2, v2);
        v9 = v8;
        objc_msgSend_frame(self, v10, v11);
        objc_msgSend_frame(self, v12, v13);
        objc_msgSend_frame(self, v14, v15);
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "bubble layer frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v16, v17, v18, v19, v9);
      }

      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        objc_msgSend_boundsSizeConstraint(self, a2, v2);
        v21 = v20;
        objc_msgSend_boundsSizeConstraint(self, v22, v23);
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "constraint = (w = %.2f h = %.2f)\n", v24, v25, v26, v27, v21);
      }
    }
  }

  objc_msgSend_frame(self, a2, v2);
  if (v31 != *MEMORY[0x277CBF3A8] || v30 != *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_calculatePreferredSubframeSizes(self, v28, v29);
    objc_msgSend_bounds(self, v33, v34);
    v36 = v35;
    objc_msgSend_bounds(self, v37, v38);
    self->_bubbleFrame.origin.y = 0.0;
    bubbleSize = self->_bubbleSize;
    self->_bubbleFrame.origin.x = ceil(v36 + (v40 - bubbleSize.width) * 0.5);
    self->_bubbleFrame.size = bubbleSize;
    objc_msgSend_bounds(self, v41, v42);
    v46 = (v45 - self->_contentSize.width) * 0.5;
    v47 = floorf(v46);
    p_textFrame = &self->_textFrame;
    self->_textFrame.origin.x = v47;
    if (self->_leftImageLayer)
    {
      *p_textFrame = self->_leftImageLayerSize.width + 7.0 + -1.0 + v47;
    }

    objc_msgSend_bounds(self, v43, v44);
    v50 = v49 - self->_ascent;
    objc_msgSend_bounds(self, v51, v52);
    width = self->_textSize.width;
    height = self->_textSize.height;
    v62 = v50 + (v61 - height) * -0.5;
    self->_textFrame.origin.y = ceilf(v62);
    self->_textFrame.size.width = width;
    self->_textFrame.size.height = height;
    if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_textFrame placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v55, v56, v57, v58, *p_textFrame);
    }

    if (self->_leftImageLayer)
    {
      objc_msgSend_bounds(self, v53, v54);
      v64 = (v63 - self->_contentSize.width) * 0.5;
      *&v65 = ceilf(v64);
      v66 = (self->_bubbleSize.height - self->_leftImageLayerSize.height) * 0.5;
      objc_msgSend_setFrame_(self->_leftImageLayer, v67, v68, *&v65, ceilf(v66), self->_leftImageLayerSize.width, self->_leftImageLayerSize.height);
      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_leftImageLayer placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v69, v70, v71, v72, v65);
      }
    }

    if (self->_rightAccessoryLayer)
    {
      *&v84.origin.x = *p_textFrame;
      v84.origin.y = self->_textFrame.origin.y;
      v84.size.width = self->_textFrame.size.width;
      v84.size.height = self->_textFrame.size.height;
      v73 = CGRectGetMaxX(v84) + 7.0;
      objc_msgSend_bounds(self, v74, v75);
      MaxY = CGRectGetMaxY(v85);
      objc_msgSend_setFrame_(self->_rightAccessoryLayer, v77, v78, v73, MaxY - self->_rightAccessoryLayerSize.height, self->_rightAccessoryLayerSize.width, self->_rightAccessoryLayerSize.height);
      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_rightAccessoryLayer placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v79, v80, v81, v82, *&v73);
      }
    }

    objc_msgSend_setNeedsDisplay(self, v53, v54);
  }
}

- (void)drawInContext:(CGContext *)context
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer drawInContext:]", 800, "\n", v3, v4, v5, v6, v47);
  }

  CGContextSaveGState(context);
  if (objc_msgSend_isAnnotationBubble(self, v9, v10))
  {
    sub_23EBFD864(context, self->_bubbleFrame.origin.x, self->_bubbleFrame.origin.y, self->_bubbleFrame.size.width, self->_bubbleFrame.size.height, self->_bubbleFrame.size.height * 0.5, 16.0);
  }

  else
  {
    sub_23EBFDA80(context, self->_bubbleFrame.origin.x, self->_bubbleFrame.origin.y, self->_bubbleFrame.size.width, self->_bubbleFrame.size.height, self->_bubbleFrame.size.height * 0.5);
  }

  CGContextClosePath(context);
  generalShadowColor = self->_generalShadowColor;
  if (generalShadowColor)
  {
    v48.width = 0.0;
    v48.height = 1.0;
    CGContextSetShadowWithColor(context, v48, 1.0, generalShadowColor);
  }

  p_bubbleFrame = &self->_bubbleFrame;
  CGContextBeginTransparencyLayerWithRect(context, self->_bubbleFrame, 0);
  if (objc_msgSend_fillColor(self, v13, v14) && objc_msgSend_fillColor2(self, v15, v16))
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v18 = MEMORY[0x277CBEA60];
    v21 = objc_msgSend_fillColor(self, v19, v20);
    v24 = objc_msgSend_fillColor2(self, v22, v23);
    v26 = objc_msgSend_arrayWithObjects_(v18, v25, v21, v24, 0);
    v27 = CGGradientCreateWithColors(DeviceRGB, v26, 0);
    CGContextClip(context);
    v55.origin.x = p_bubbleFrame->origin.x;
    v55.origin.y = self->_bubbleFrame.origin.y;
    v55.size.width = self->_bubbleFrame.size.width;
    v55.size.height = self->_bubbleFrame.size.height;
    MidX = CGRectGetMidX(v55);
    v56.origin.x = p_bubbleFrame->origin.x;
    v56.origin.y = self->_bubbleFrame.origin.y;
    v56.size.width = self->_bubbleFrame.size.width;
    v56.size.height = self->_bubbleFrame.size.height;
    v29 = CGRectGetMidX(v56);
    v57.origin.x = p_bubbleFrame->origin.x;
    v57.origin.y = self->_bubbleFrame.origin.y;
    v57.size.width = self->_bubbleFrame.size.width;
    v57.size.height = self->_bubbleFrame.size.height;
    v54.y = CGRectGetMaxY(v57);
    v49.y = 0.0;
    v49.x = MidX;
    v54.x = v29;
    CGContextDrawLinearGradient(context, v27, v49, v54, 0);
    CGGradientRelease(v27);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v30 = objc_msgSend_fillColor(self, v15, v16);
    CGContextSetFillColorWithColor(context, v30);
    CGContextDrawPath(context, kCGPathFill);
  }

  CGContextEndTransparencyLayer(context);
  v50.width = 0.0;
  v50.height = 0.0;
  CGContextSetShadowWithColor(context, v50, 0.0, 0);
  objc_msgSend_frameWidth(self, v31, v32);
  if (v35 != 0.0 && objc_msgSend_frameColor(self, v33, v34))
  {
    objc_msgSend_frameWidth(self, v36, v37);
    CGContextSetLineWidth(context, v38);
    v41 = objc_msgSend_frameColor(self, v39, v40);
    CGContextSetStrokeColorWithColor(context, v41);
    CGContextDrawPath(context, kCGPathStroke);
  }

  CGContextSetShouldSmoothFonts(context, 0);
  CGContextSetAllowsFontSmoothing(context, 0);
  CGContextSetTextPosition(context, self->_textFrame.origin.x, self->_textFrame.origin.y);
  objc_msgSend_bounds(self, v42, v43);
  CGContextTranslateCTM(context, 0.0, v44);
  CGContextScaleCTM(context, 1.0, -1.0);
  v45 = self->_generalShadowColor;
  if (v45)
  {
    v51.width = 0.0;
    v51.height = -1.0;
    CGContextSetShadowWithColor(context, v51, 1.0, v45);
  }

  whiteShadowColor = self->_whiteShadowColor;
  if (whiteShadowColor)
  {
    v52.width = 0.0;
    v52.height = 1.0;
    CGContextSetShadowWithColor(context, v52, 0.0, whiteShadowColor);
  }

  CTLineDraw(self->_theLine, context);
  v53.width = 0.0;
  v53.height = 0.0;
  CGContextSetShadowWithColor(context, v53, 0.0, 0);
  CGContextRestoreGState(context);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"foregroundColor") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v5, @"fillColor") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v6, @"fillColor2") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v7, @"frameColor") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v8, @"frameWidth") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v9, @"fontSize") & 1) != 0 || (objc_msgSend_isEqualToString_(key, v10, @"string"))
  {
    return 1;
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___BubbleTextLayer;
  return objc_msgSendSuper2(&v12, sel_needsDisplayForKey_, key);
}

@end