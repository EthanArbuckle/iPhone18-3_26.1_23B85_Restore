@interface COSManualPairingHeader
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSManualPairingHeader)initWithFrame:(CGRect)a3;
- (id)deviceListTitleName;
- (id)pairingInstructionAttributedString;
- (void)layoutSubviews;
@end

@implementation COSManualPairingHeader

- (COSManualPairingHeader)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = COSManualPairingHeader;
  v3 = [(COSManualPairingHeader *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(COSManualPairingHeader *)v3 pairingInstructionAttributedString];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v10;

    v12 = v4->_headerLabel;
    v13 = +[UIColor clearColor];
    [(UILabel *)v12 setBackgroundColor:v13];

    v14 = v4->_headerLabel;
    v15 = BPSTextColor();
    [(UILabel *)v14 setTextColor:v15];

    [(UILabel *)v4->_headerLabel setNumberOfLines:0];
    [(UILabel *)v4->_headerLabel setAttributedText:v5];
    [(COSManualPairingHeader *)v4 addSubview:v4->_headerLabel];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    devices = v4->_devices;
    v4->_devices = v16;

    v18 = v4->_devices;
    v19 = +[UIColor clearColor];
    [(UILabel *)v18 setBackgroundColor:v19];

    v20 = v4->_devices;
    v21 = BPSDetailTextColor();
    [(UILabel *)v20 setTextColor:v21];

    v22 = v4->_devices;
    v23 = [UIFont systemFontOfSize:13.0];
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v4->_devices setNumberOfLines:0];
    [(UILabel *)v4->_devices setTextAlignment:4];
    v24 = v4->_devices;
    v25 = [(COSManualPairingHeader *)v4 deviceListTitleName];
    [(UILabel *)v24 setText:v25];

    [(COSManualPairingHeader *)v4 addSubview:v4->_devices];
    v26 = [UIApp bridgeController];
    v27 = [UIApp setupController];
    v28 = [v27 activationManager];
    [v26 setRuiDelegate:v28];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = COSManualPairingHeader;
  [(COSManualPairingHeader *)&v15 layoutSubviews];
  [(COSManualPairingHeader *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [(UILabel *)self->_headerLabel sizeThatFits:CGRectGetWidth(v16), 0.0];
  v8 = v7;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v9 = CGRectGetWidth(v17);
  [(UILabel *)self->_headerLabel setFrame:0.0, 20.0, v9, v8];
  [(UILabel *)self->_devices sizeThatFits:0.0, 0.0];
  v11 = v10;
  v13 = v12;
  if ([(COSManualPairingHeader *)self _shouldReverseLayoutDirection])
  {
    v14 = width - v11 + -18.0;
  }

  else
  {
    v14 = 18.0;
  }

  v18.origin.x = 0.0;
  v18.origin.y = 20.0;
  v18.size.width = v9;
  v18.size.height = v8;
  [(UILabel *)self->_devices setFrame:v14, CGRectGetMaxY(v18) + 30.0, v11, v13];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UILabel *)self->_headerLabel sizeThatFits:a3.width, 1.79769313e308];
  [(UILabel *)self->_devices sizeThatFits:width, 1.79769313e308];
  UIRoundToViewScale();
  v6 = v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)pairingInstructionAttributedString
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSManualPairingHeader pairingInstructionAttributedString]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v5, 0xCu);
  }

  v3 = objc_opt_new();

  return v3;
}

- (id)deviceListTitleName
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSManualPairingHeader deviceListTitleName]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return &stru_10026E598;
}

@end