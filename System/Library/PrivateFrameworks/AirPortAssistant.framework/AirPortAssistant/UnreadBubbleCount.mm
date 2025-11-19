@interface UnreadBubbleCount
+ (int)initImageCache;
+ (void)deallocImageCache;
- (UnreadBubbleCount)initWithFrame:(CGRect)a3;
- (void)calculateTextMetrics;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCount:(int64_t)a3;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation UnreadBubbleCount

+ (int)initImageCache
{
  if (qword_27E3834B0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  qword_27E3834B0 = objc_msgSend_imageNamed_inBundle_(ImageStore, v7, @"UnreadBubble", v6);
  if (qword_27E3834B0 && (v8 = MEMORY[0x277CCA8D8], v9 = objc_opt_class(), v11 = objc_msgSend_bundleForClass_(v8, v10, v9), (qword_27E3834B8 = objc_msgSend_imageNamed_inBundle_(ImageStore, v12, @"UnreadBubbleSelected", v11)) != 0))
  {
    return 0;
  }

  else
  {
    return -6729;
  }
}

+ (void)deallocImageCache
{
  qword_27E3834B0 = 0;

  qword_27E3834B8 = 0;
}

- (UnreadBubbleCount)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UnreadBubbleCount;
  v5 = [(UnreadBubbleCount *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    objc_msgSend_initImageCache(UnreadBubbleCount, v3, v4);
    objc_msgSend_setOpaque_(v5, v6, 0);
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UnreadBubbleCount;
  [(UnreadBubbleCount *)&v2 dealloc];
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    objc_msgSend_calculateTextMetrics(self, a2, a3);

    objc_msgSend_setNeedsDisplay(self, v5, v6);
  }
}

- (void)setIsSelected:(BOOL)a3
{
  if (self->_isSelected != a3)
  {
    self->_isSelected = a3;
    objc_msgSend_setNeedsDisplay(self, a2, a3);
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = UnreadBubbleCount;
  [(UnreadBubbleCount *)&v26 layoutSubviews];
  objc_msgSend_frame(self, v3, v4);
  v6 = v5;
  v8 = v7;
  objc_msgSend_frame(self, v9, v10);
  MinX = CGRectGetMinX(v27);
  objc_msgSend_frame(self, v12, v13);
  v15 = v14;
  objc_msgSend_frame(self, v16, v17);
  v19 = v18;
  objc_msgSend_bounds(self, v20, v21);
  v23 = (v19 - v22) * 0.5;
  objc_msgSend_setFrame_(self, v24, v25, MinX, v15 + roundf(v23), v6, v8);
}

- (void)drawRect:(CGRect)a3
{
  v58[2] = *MEMORY[0x277D85DE8];
  if (self->_count >= 1)
  {
    if (self->_isSelected)
    {
      v5 = objc_msgSend_resizableImageWithCapInsets_(qword_27E3834B8, a2, v3, 0.0, 9.0, 0.0, 9.0);
      v6 = 0.122;
      v7 = 0.357;
      v8 = 0.906;
    }

    else
    {
      v5 = objc_msgSend_resizableImageWithCapInsets_(qword_27E3834B0, a2, v3, 0.0, 9.0, 0.0, 9.0);
      v6 = 1.0;
      v7 = 1.0;
      v8 = 1.0;
    }

    v9 = sub_23EBFD680(v6, v7, v8, 1.0);
    objc_msgSend_frame(self, v10, v11);
    v13 = v12;
    objc_msgSend_frame(self, v14, v15);
    objc_msgSend_drawInRect_(v5, v16, v17, 0.0, 0.0, v13);
    v20 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v18, v19, 17.0);
    v22 = sub_23EB6CDA8(self->_count, v21);
    objc_msgSend_bounds(self, v23, v24);
    v26 = (v25 - self->_textSize.height) * 0.5;
    v27 = floorf(v26);
    objc_msgSend_leading(v20, v28, v29);
    v31 = v30;
    objc_msgSend_ascender(v20, v32, v33);
    v35 = v34;
    objc_msgSend_descender(v20, v36, v37);
    v39 = v31 - (v35 - v38);
    objc_msgSend_ascender(v20, v40, v41);
    v43 = v42;
    objc_msgSend_capHeight(v20, v44, v45);
    *&v46 = v39 + v43 - v46;
    *&v39 = v27 - floorf(*&v46);
    objc_msgSend_bounds(self, v47, v48);
    v50 = (v49 - self->_textSize.width) * 0.5;
    v51 = roundf(v50);
    v58[0] = v20;
    v52 = *MEMORY[0x277D740C0];
    v57[0] = *MEMORY[0x277D740A8];
    v57[1] = v52;
    v58[1] = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v53, v9);
    v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v58, v57, 2);
    objc_msgSend_drawAtPoint_withAttributes_(v22, v56, v55, v51, *&v39);
    CGColorRelease(v9);
  }
}

- (void)calculateTextMetrics
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (self->_count >= 1)
  {
    v4 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], a2, v2, 17.0);
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%u", self->_count);
    v9 = objc_msgSend_length(v6, v7, v8);
    v23 = *MEMORY[0x277D740A8];
    v24[0] = v4;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v24, &v23, 1);
    objc_msgSend_sizeWithAttributes_(v6, v12, v11);
    v14 = v13;
    objc_msgSend_capHeight(v4, v15, v16);
    self->_textSize.width = v14;
    self->_textSize.height = v19;
    if (v9)
    {
      objc_msgSend_characterAtIndex_(v6, v17, 0);
      objc_msgSend_characterAtIndex_(v6, v20, v9 - 1);
    }

    objc_msgSend_size(qword_27E3834B0, v17, v18);
  }

  objc_msgSend_frame(self, a2, v2);
  objc_msgSend_setFrame_(self, v21, v22);
}

@end