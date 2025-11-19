@interface TopoNumberBadge
+ (id)imageBadgeForCount:(int64_t)a3;
+ (int)initImageCache;
- (CGImage)newNumberBadge;
- (CGSize)preferredFrameSize;
- (TopoNumberBadge)initWithOwningView:(id)a3;
- (void)calculateBadgeMetrics;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setCount:(int64_t)a3;
- (void)setOwningView:(id)a3;
@end

@implementation TopoNumberBadge

+ (int)initImageCache
{
  if (qword_27E3834D0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_imageNamed_inBundle_(ImageStore, v7, @"TopoBadgeBG", v6);
  if (v8 && (qword_27E3834D0 = objc_msgSend_resizableImageWithCapInsets_(v8, v9, v10, 0.0, 14.0, 0.0, 14.0)) != 0)
  {
    return 0;
  }

  else
  {
    return -6729;
  }
}

- (TopoNumberBadge)initWithOwningView:(id)a3
{
  v15.receiver = self;
  v15.super_class = TopoNumberBadge;
  v4 = [(TopoNumberBadge *)&v15 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, a3);
    v9 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v7, v8, 17.0);
    v6->_font = v9;
    v10 = v9;
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v6, v11, 1);
    objc_msgSend_initImageCache(TopoNumberBadge, v12, v13);
  }

  return v6;
}

- (void)setOwningView:(id)a3
{
  self->_owningView = a3;
  v4 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, a3);
  objc_msgSend_scale(v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v7);
}

- (CGSize)preferredFrameSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  font = self->_font;
  if (font)
  {
  }

  self->_font = 0;
  v4.receiver = self;
  v4.super_class = TopoNumberBadge;
  [(TopoNumberBadge *)&v4 dealloc];
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    MEMORY[0x2821F9670](self, sel_calculateBadgeMetrics, a3);
  }
}

- (void)layoutSublayers
{
  v4 = objc_msgSend_newNumberBadge(self, a2, v2);
  objc_msgSend_setContents_(self, v5, v4);

  CGImageRelease(v4);
}

- (void)calculateBadgeMetrics
{
  v28[1] = *MEMORY[0x277D85DE8];
  count = self->_count;
  if (count < 1)
  {
    _Q0 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v5 = sub_23EB6CDA8(count, a2);
    v8 = objc_msgSend_length(v5, v6, v7);
    font = self->_font;
    v27 = *MEMORY[0x277D740A8];
    v28[0] = font;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v28, &v27, 1);
    objc_msgSend_sizeWithAttributes_(v5, v12, v11);
    v14 = v13;
    objc_msgSend_capHeight(self->_font, v15, v16);
    self->_textSize.width = v14;
    self->_textSize.height = v17;
    if (v8)
    {
      if (objc_msgSend_characterAtIndex_(v5, a2, 0) == 49)
      {
        v14 = v14 + 1.0;
      }

      if (objc_msgSend_characterAtIndex_(v5, v18, v8 - 1) == 49)
      {
        v14 = v14 + -1.0;
      }
    }

    v19 = v14 + 20.0;
    v20 = floorf(v19);
    if (v20 <= 23.0)
    {
      v20 = 23.0;
    }

    v21 = v20;
    __asm { FMOV            V0.2D, #31.0 }

    _Q0.width = v21;
  }

  self->_imageSize = _Q0;
  objc_msgSend_setNeedsLayout(self, a2, v2);
}

+ (id)imageBadgeForCount:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = objc_alloc_init(TopoNumberBadge);
    v6 = v4;
    if (v4)
    {
      objc_msgSend_setCount_(v4, v5, v3);
      v7 = *MEMORY[0x277CBF348];
      v8 = *(MEMORY[0x277CBF348] + 8);
      objc_msgSend_preferredFrameSize(v6, v9, v10);
      objc_msgSend_setFrame_(v6, v11, v12, v7, v8, v13, v14);
      v17 = objc_msgSend_newNumberBadge(v6, v15, v16);
      v3 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D755B8], v18, v17);
      CGImageRelease(v17);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v3;
}

- (CGImage)newNumberBadge
{
  v63[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_bounds(self, a2, v2);
  if (CGRectIsEmpty(v65))
  {
    return 0;
  }

  objc_msgSend_bounds(self, v4, v5);
  v8 = v7;
  v10 = v9;
  objc_msgSend_scale(qword_27E3834D0, v11, v12);
  v14 = v13;
  v64.width = v8;
  v64.height = v10;
  UIGraphicsBeginImageContextWithOptions(v64, 0, v14);
  v15 = qword_27E3834D0;
  objc_msgSend_bounds(self, v16, v17);
  objc_msgSend_drawInRect_(v15, v18, v19);
  v21 = sub_23EB6CDA8(self->_count, v20);
  objc_msgSend_bounds(self, v22, v23);
  v25 = (v24 - self->_textSize.height) * 0.5 + -4.0;
  v26 = floorf(v25);
  objc_msgSend_leading(self->_font, v27, v28);
  v30 = v29;
  objc_msgSend_ascender(self->_font, v31, v32);
  v34 = v33;
  objc_msgSend_descender(self->_font, v35, v36);
  v38 = v30 - (v34 - v37);
  objc_msgSend_ascender(self->_font, v39, v40);
  v42 = v41;
  objc_msgSend_capHeight(self->_font, v43, v44);
  *&v45 = v38 + v42 - v45;
  *&v38 = v26 - floorf(*&v45);
  objc_msgSend_bounds(self, v46, v47);
  v49 = (v48 - self->_textSize.width) * 0.5;
  v50 = roundf(v49);
  font = self->_font;
  v52 = *MEMORY[0x277D740C0];
  v62[0] = *MEMORY[0x277D740A8];
  v62[1] = v52;
  v63[0] = font;
  v63[1] = objc_msgSend_whiteColor(MEMORY[0x277D75348], v53, v54);
  v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, v63, v62, 2);
  objc_msgSend_drawAtPoint_withAttributes_(v21, v57, v56, v50, *&v38);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (ImageFromCurrentImageContext)
  {
    v60 = objc_msgSend_CGImage(ImageFromCurrentImageContext, v58, v59);
    ImageFromCurrentImageContext = v60;
    if (v60)
    {
      CGImageRetain(v60);
    }
  }

  return ImageFromCurrentImageContext;
}

@end