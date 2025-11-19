@interface NTKLeghornButton
- (NTKLeghornButton)initWithSymbol:(id)a3 device:(id)a4;
- (void)_setSymbolColor:(id)a3 enabled:(BOOL)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setSymbolColor:(id)a3;
- (void)setSymbolName:(id)a3;
@end

@implementation NTKLeghornButton

- (NTKLeghornButton)initWithSymbol:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = NTKLeghornButton;
  v8 = [(NTKLeghornButton *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
    v9->_assetGenerationSize = *MEMORY[0x277CBF3A8];
    device = v9->_device;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23BED2200;
    v33[3] = &unk_278BA1288;
    v33[4] = 9;
    v11 = sub_23BED2200(v33, device);
    objc_msgSend_setBounds_(v9, v12, 0.0, 0.0, v11, v11);
    v13 = objc_alloc(MEMORY[0x277D755E8]);
    objc_msgSend_bounds(v9, v14, v15);
    v18 = objc_msgSend_initWithFrame_(v13, v16, v17);
    symbolIcon = v9->_symbolIcon;
    v9->_symbolIcon = v18;

    objc_msgSend_addSubview_(v9, v20, v21, v9->_symbolIcon);
    objc_msgSend_bringSubviewToFront_(v9, v22, v23, v9->_symbolIcon);
    objc_msgSend_setSymbolName_(v9, v24, v25, v6);
    v28 = objc_msgSend_prominentGlassButtonConfiguration(MEMORY[0x277D75230], v26, v27);
    objc_msgSend_setConfiguration_(v9, v29, v30, v28);
  }

  return v9;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKLeghornButton;
  [(NTKLeghornButton *)&v13 layoutSubviews];
  objc_msgSend_size(self->_symbolImage, v3, v4);
  objc_msgSend_setFrame_(self->_symbolIcon, v5, 0.0, 0.0, v6, v7);
  v10 = objc_msgSend_bounds(self, v8, v9);
  MEMORY[0x23EEC0EA0](v10);
  objc_msgSend_setCenter_(self->_symbolIcon, v11, v12);
}

- (void)setSymbolName:(id)a3
{
  v5 = a3;
  if ((NTKEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_symbolName, a3);
    device = self->_device;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23BED2200;
    v19[3] = &unk_278BA1288;
    v19[4] = 9;
    sub_23BED2200(v19, device);
    v9 = objc_msgSend_configurationWithPointSize_weight_scale_(MEMORY[0x277D755D0], v7, v8, 5, 1);
    v12 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v10, v11, self->_symbolName, v9);
    v15 = objc_msgSend_imageWithRenderingMode_(v12, v13, v14, 2);
    symbolImage = self->_symbolImage;
    self->_symbolImage = v15;

    objc_msgSend_setImage_(self->_symbolIcon, v17, v18, self->_symbolImage);
  }
}

- (void)_setSymbolColor:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = NTKColorByPremultiplyingAlpha();
  }

  v9 = v8;
  symbolColor = self->_symbolColor;
  self->_symbolColor = v7;
  v13 = v7;

  objc_msgSend_setTintColor_(self->_symbolIcon, v11, v12, v9);
}

- (void)setSymbolColor:(id)a3
{
  v9 = a3;
  isEnabled = objc_msgSend_isEnabled(self, v4, v5);
  objc_msgSend__setSymbolColor_enabled_(self, v7, v8, v9, isEnabled);
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = NTKLeghornButton;
  [(NTKLeghornButton *)&v10 setEnabled:?];
  v7 = objc_msgSend_symbolColor(self, v5, v6);
  objc_msgSend__setSymbolColor_enabled_(self, v8, v9, v7, v3);
}

@end