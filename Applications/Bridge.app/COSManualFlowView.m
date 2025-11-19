@interface COSManualFlowView
- (COSManualFlowView)initWithFrame:(CGRect)a3;
- (COSManualFlowViewDelegate)delegate;
- (void)layoutSubviews;
- (void)pressedCancel:(id)a3;
- (void)pressedDone:(id)a3;
@end

@implementation COSManualFlowView

- (COSManualFlowView)initWithFrame:(CGRect)a3
{
  v62.receiver = self;
  v62.super_class = COSManualFlowView;
  v3 = [(COSManualFlowView *)&v62 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[_UIBackdropView alloc] initWithStyle:2030];
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    [(COSManualFlowView *)v3 bounds];
    [(_UIBackdropView *)v3->_backdropView setFrame:?];
    v6 = [(_UIBackdropView *)v3->_backdropView inputSettings];
    [v6 setBlurRadius:3.0];

    v7 = [(_UIBackdropView *)v3->_backdropView inputSettings];
    [v7 setGrayscaleTintLevel:0.0];

    v8 = [(_UIBackdropView *)v3->_backdropView inputSettings];
    [v8 setGrayscaleTintAlpha:0.8];

    [(COSManualFlowView *)v3 addSubview:v3->_backdropView];
    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    instructions = v3->_instructions;
    v3->_instructions = v13;

    v15 = v3->_instructions;
    v16 = +[UIColor clearColor];
    [(UILabel *)v15 setBackgroundColor:v16];

    v17 = v3->_instructions;
    v18 = BPSTextColor();
    [(UILabel *)v17 setTextColor:v18];

    v19 = v3->_instructions;
    v20 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v3->_instructions setTextAlignment:1];
    [(UILabel *)v3->_instructions setText:@"Enter values from the Gizmo..."];
    [(UILabel *)v3->_instructions setNumberOfLines:0];
    [(COSManualFlowView *)v3 addSubview:v3->_instructions];
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceName = v3->_deviceName;
    v3->_deviceName = v21;

    v23 = v3->_deviceName;
    v24 = +[UIColor clearColor];
    [(UILabel *)v23 setBackgroundColor:v24];

    v25 = v3->_deviceName;
    v26 = BPSTextColor();
    [(UILabel *)v25 setTextColor:v26];

    v27 = v3->_deviceName;
    v28 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)v27 setFont:v28];

    [(UILabel *)v3->_deviceName setTextAlignment:1];
    [(UILabel *)v3->_deviceName setText:@"Giz: "];
    [(COSManualFlowView *)v3 addSubview:v3->_deviceName];
    v29 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    deviceNameTextField = v3->_deviceNameTextField;
    v3->_deviceNameTextField = v29;

    v31 = v3->_deviceNameTextField;
    v32 = BPSTextColor();
    [(UITextField *)v31 setBackgroundColor:v32];

    [(UITextField *)v3->_deviceNameTextField setAutocapitalizationType:0];
    [(UITextField *)v3->_deviceNameTextField setAutocorrectionType:1];
    [(COSManualFlowView *)v3 addSubview:v3->_deviceNameTextField];
    v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    btData = v3->_btData;
    v3->_btData = v33;

    v35 = v3->_btData;
    v36 = +[UIColor clearColor];
    [(UILabel *)v35 setBackgroundColor:v36];

    v37 = v3->_btData;
    v38 = BPSTextColor();
    [(UILabel *)v37 setTextColor:v38];

    v39 = v3->_btData;
    v40 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)v39 setFont:v40];

    [(UILabel *)v3->_btData setTextAlignment:1];
    [(UILabel *)v3->_btData setText:@"BT: "];
    [(COSManualFlowView *)v3 addSubview:v3->_btData];
    v41 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    btDataTextField = v3->_btDataTextField;
    v3->_btDataTextField = v41;

    v43 = v3->_btDataTextField;
    v44 = BPSTextColor();
    [(UITextField *)v43 setBackgroundColor:v44];

    [(UITextField *)v3->_btDataTextField setAutocapitalizationType:0];
    [(UITextField *)v3->_btDataTextField setAutocorrectionType:1];
    [(COSManualFlowView *)v3 addSubview:v3->_btDataTextField];
    v45 = [UIButton buttonWithType:1];
    doneButton = v3->_doneButton;
    v3->_doneButton = v45;

    [(UIButton *)v3->_doneButton addTarget:v3 action:"pressedDone:" forControlEvents:64];
    v47 = v3->_doneButton;
    v48 = +[NSBundle mainBundle];
    v49 = [v48 localizedStringForKey:@"DONE" value:&stru_10026E598 table:@"Localizable"];
    [(UIButton *)v47 setTitle:v49 forState:0];

    v50 = [(UIButton *)v3->_doneButton titleLabel];
    [v50 setTextAlignment:1];

    v51 = [(UIButton *)v3->_doneButton titleLabel];
    v52 = [UIFont systemFontOfSize:18.0];
    [v51 setFont:v52];

    [(COSManualFlowView *)v3 addSubview:v3->_doneButton];
    v53 = [UIButton buttonWithType:1];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v53;

    [(UIButton *)v3->_cancelButton addTarget:v3 action:"pressedCancel:" forControlEvents:64];
    v55 = v3->_cancelButton;
    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
    [(UIButton *)v55 setTitle:v57 forState:0];

    v58 = [(UIButton *)v3->_cancelButton titleLabel];
    [v58 setTextAlignment:1];

    v59 = [(UIButton *)v3->_cancelButton titleLabel];
    v60 = [UIFont systemFontOfSize:18.0];
    [v59 setFont:v60];

    [(COSManualFlowView *)v3 addSubview:v3->_cancelButton];
  }

  return v3;
}

- (void)pressedCancel:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CANCEL", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressedCancel:self];
}

- (void)pressedDone:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DONE", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressedDone:self];
}

- (void)layoutSubviews
{
  [(COSManualFlowView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  [(UILabel *)self->_instructions setFrame:0.0, 40.0, CGRectGetWidth(v23), 25.0];
  deviceName = self->_deviceName;
  [(UILabel *)self->_instructions frame];
  v12 = CGRectGetMaxY(v24) + 3.0;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  [(UILabel *)deviceName setFrame:0.0, v12, CGRectGetWidth(v25), 25.0];
  deviceNameTextField = self->_deviceNameTextField;
  [(UILabel *)self->_deviceName frame];
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  [(UITextField *)deviceNameTextField setFrame:0.0, MaxY, CGRectGetWidth(v27), 25.0];
  btData = self->_btData;
  [(UITextField *)self->_deviceNameTextField frame];
  v16 = CGRectGetMaxY(v28) + 3.0;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  [(UILabel *)btData setFrame:0.0, v16, CGRectGetWidth(v29), 25.0];
  btDataTextField = self->_btDataTextField;
  [(UILabel *)self->_btData frame];
  v18 = CGRectGetMaxY(v30);
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  [(UITextField *)btDataTextField setFrame:0.0, v18, CGRectGetWidth(v31), 25.0];
  doneButton = self->_doneButton;
  [(UITextField *)self->_btDataTextField frame];
  [(UIButton *)doneButton setFrame:0.0, CGRectGetMaxY(v32) + 6.0, 120.0, 30.0];
  cancelButton = self->_cancelButton;
  [(UITextField *)self->_btDataTextField frame];
  v21 = CGRectGetMaxY(v33) + 6.0;

  [(UIButton *)cancelButton setFrame:120.0, v21, 120.0, 30.0];
}

- (COSManualFlowViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end