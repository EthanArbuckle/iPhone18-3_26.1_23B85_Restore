@interface AltitudeRichDialView
- (UIView)bottomView;
- (UIView)topView;
- (id)_newBottomView;
- (id)_newTopView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (void)layoutSubviews;
@end

@implementation AltitudeRichDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v18.receiver = self;
  v18.super_class = AltitudeRichDialView;
  v3 = [(AltitudeRichDialView *)&v18 init];
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_topView(v3, v4, v5, v6);
    objc_msgSend_addSubview_(v7, v9, v8, v10);

    v14 = objc_msgSend_bottomView(v7, v11, v12, v13);
    objc_msgSend_addSubview_(v7, v15, v14, v16);
  }

  return v7;
}

- (UIView)topView
{
  topView = self->_topView;
  if (!topView)
  {
    v6 = objc_msgSend__newTopView(self, a2, v2, v3);
    v7 = self->_topView;
    self->_topView = v6;

    topView = self->_topView;
  }

  return topView;
}

- (UIView)bottomView
{
  bottomView = self->_bottomView;
  if (!bottomView)
  {
    v6 = objc_msgSend__newBottomView(self, a2, v2, v3);
    v7 = self->_bottomView;
    self->_bottomView = v6;

    bottomView = self->_bottomView;
  }

  return bottomView;
}

- (id)monochromeAccentViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_topView;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_bottomView;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = AltitudeRichDialView;
  [(AltitudeRichDialView *)&v16 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  objc_msgSend_setCenter_(self->_topView, v10, v11, v12);
  objc_msgSend_setCenter_(self->_bottomView, v13, v14, v15, v7, v9);
}

- (id)_newTopView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_newBottomView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end