@interface CompassRichDialView
- (UIView)needleAODView;
- (UIView)needleView;
- (UIView)ticksView;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation CompassRichDialView

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v24.receiver = self;
  v24.super_class = CompassRichDialView;
  v3 = [(NanoCompassBaseRichView *)&v24 initFullColorImageViewWithDevice:a3];
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_ticksView(v3, v4, v5, v6);
    objc_msgSend_addSubview_(v7, v9, v8, v10);

    v14 = objc_msgSend_needleView(v7, v11, v12, v13);
    objc_msgSend_addSubview_(v7, v15, v14, v16);

    v20 = objc_msgSend_needleAODView(v7, v17, v18, v19);
    objc_msgSend_addSubview_(v7, v21, v20, v22);
  }

  return v7;
}

- (UIView)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    v6 = objc_msgSend__newTicksView(self, a2, v2, v3);
    v7 = self->_ticksView;
    self->_ticksView = v6;

    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (UIView)needleView
{
  needleView = self->_needleView;
  if (!needleView)
  {
    v6 = objc_msgSend__newNeedleView(self, a2, v2, v3);
    v7 = self->_needleView;
    self->_needleView = v6;

    needleView = self->_needleView;
  }

  return needleView;
}

- (UIView)needleAODView
{
  needleAODView = self->_needleAODView;
  if (!needleAODView)
  {
    v6 = objc_msgSend__newNeedleAODView(self, a2, v2, v3);
    v7 = self->_needleAODView;
    self->_needleAODView = v6;

    needleAODView = self->_needleAODView;
  }

  return needleAODView;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v9 = objc_msgSend_metadata(v5, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"heading", v11);

  v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14, v15);
  isEqual = objc_msgSend_isEqual_(v12, v17, v16, v18);

  if (isEqual)
  {

    v12 = 0;
  }

  objc_msgSend_heading(v12, v20, v21, v22);
  CGAffineTransformMakeRotation(&v56, v23 * -3.14159265 / 180.0);
  needleView = self->_needleView;
  v55 = v56;
  objc_msgSend_setTransform_(needleView, v25, &v55, v26);
  v30 = objc_msgSend_metadata(v5, v27, v28, v29);
  v33 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"alwayson", v32);
  v37 = objc_msgSend_BOOLValue(v33, v34, v35, v36);

  objc_msgSend_setHidden_(self->_needleAODView, v38, v37 ^ 1u, v39);
  v43 = objc_msgSend_metadata(v5, v40, v41, v42);

  v46 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"nodata", v45);
  v50 = objc_msgSend_BOOLValue(v46, v47, v48, v49);

  if (v12)
  {
    v54 = objc_msgSend_isAccurate(v12, v51, v52, v53) ^ 1 | v50 | v37;
  }

  else
  {
    LOBYTE(v54) = 1;
  }

  objc_msgSend_setHidden_(self->_needleView, v51, v54 & 1, v53);
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CompassRichDialView;
  [(CompassRichDialView *)&v19 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  objc_msgSend_setCenter_(self->_ticksView, v10, v11, v12);
  objc_msgSend_setCenter_(self->_needleView, v13, v14, v15, v7, v9);
  objc_msgSend_setCenter_(self->_needleAODView, v16, v17, v18, v7, v9);
}

- (id)_newTicksView
{
  objc_opt_class();
  sub_23BD2921C();
  return 0;
}

- (id)_newNeedleView
{
  objc_opt_class();
  sub_23BD2921C();
  return 0;
}

- (id)_newNeedleAODView
{
  objc_opt_class();
  sub_23BD2921C();
  return 0;
}

@end