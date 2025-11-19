@interface TopoProgressBar
+ (int)initImageCache;
+ (void)deallocImageCache;
- (CGImage)composeProgressBar;
- (CGSize)preferredFrameSize;
- (TopoProgressBar)initWithOwningView:(id)a3;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setOwningView:(id)a3;
- (void)setProgressValue:(float)a3;
@end

@implementation TopoProgressBar

+ (int)initImageCache
{
  if (qword_27E3834C0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_imageNamed_inBundle_(ImageStore, v7, @"TopoProgressFill", v6);
  if (v8 && (qword_27E3834C0 = objc_msgSend_resizableImageWithCapInsets_(v8, v9, v10, 0.0, 5.0, 0.0, 5.0)) != 0 && (v11 = MEMORY[0x277CCA8D8], v12 = objc_opt_class(), v14 = objc_msgSend_bundleForClass_(v11, v13, v12), (v16 = objc_msgSend_imageNamed_inBundle_(ImageStore, v15, @"TopoProgressTrack", v14)) != 0) && (qword_27E3834C8 = objc_msgSend_resizableImageWithCapInsets_(v16, v17, v18, 0.0, 5.0, 0.0, 5.0)) != 0)
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
  qword_27E3834C0 = 0;

  qword_27E3834C8 = 0;
}

- (TopoProgressBar)initWithOwningView:(id)a3
{
  v11.receiver = self;
  v11.super_class = TopoProgressBar;
  v4 = [(TopoProgressBar *)&v11 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, a3);
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v6, v7, 1);
    objc_msgSend_initImageCache(TopoProgressBar, v8, v9);
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
  v2 = *(MEMORY[0x277CBF3A8] + 8);
  if (self->_progressValue != 0.0)
  {
    v2 = 12.0;
  }

  v3 = 100.0;
  if (self->_progressValue == 0.0)
  {
    v3 = *MEMORY[0x277CBF3A8];
  }

  result.height = v2;
  result.width = v3;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TopoProgressBar;
  [(TopoProgressBar *)&v2 dealloc];
}

- (void)setProgressValue:(float)a3
{
  if (self->_progressValue != a3)
  {
    v4 = a3;
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    v5 = fmin(v4, 1.0);
    self->_progressValue = v5;
    objc_msgSend_setNeedsLayout(self, a2, v3);
  }
}

- (void)layoutSublayers
{
  v5 = objc_msgSend_composeProgressBar(self, a2, v2);

  objc_msgSend_setContents_(self, v4, v5);
}

- (CGImage)composeProgressBar
{
  objc_msgSend_bounds(self, a2, v2);
  if (CGRectIsEmpty(v29))
  {
    ImageFromCurrentImageContext = 0;
  }

  else
  {
    objc_msgSend_bounds(self, v4, v5);
    v8 = v7;
    v10 = v9;
    objc_msgSend_scale(qword_27E3834C8, v11, v12);
    v14 = v13;
    v28.width = v8;
    v28.height = v10;
    UIGraphicsBeginImageContextWithOptions(v28, 0, v14);
    v15 = qword_27E3834C8;
    objc_msgSend_bounds(self, v16, v17);
    objc_msgSend_drawInRect_(v15, v18, v19);
    objc_msgSend_bounds(self, v20, v21);
    v23 = (v22 + -2.0) * self->_progressValue;
    objc_msgSend_drawInRect_(qword_27E3834C0, v24, v25, 1.0, 1.0, roundf(v23), 9.0);
    ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return objc_msgSend_CGImage(ImageFromCurrentImageContext, v4, v5);
}

@end