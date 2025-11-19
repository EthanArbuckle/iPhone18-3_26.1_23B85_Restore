@interface TetheringSetupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 inTableView:(id)a4 shouldSetSize:(BOOL)a5;
- (TetheringSetupView)initWithSpecifier:(id)a3;
- (void)layoutSubviews;
@end

@implementation TetheringSetupView

- (TetheringSetupView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TetheringSetupView;
  v5 = [(TetheringSetupView *)&v19 init];
  if (v5)
  {
    v6 = [v4 propertyForKey:@"SupportsWifi"];
    v5->_showWifiView = [v6 BOOLValue];

    if (v5->_showWifiView)
    {
      v7 = [WiFiSetupView alloc];
      v8 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v11 = *(MEMORY[0x277CBF3A0] + 24);
      v12 = [(WiFiSetupView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
      wifiView = v5->_wifiView;
      v5->_wifiView = v12;

      [(WiFiSetupView *)v5->_wifiView setAutoresizingMask:2];
      [(TetheringSetupView *)v5 addSubview:v5->_wifiView];
    }

    else
    {
      v8 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v11 = *(MEMORY[0x277CBF3A0] + 24);
    }

    v14 = [[BluetoothSetupView alloc] initWithFrame:v8, v9, v10, v11];
    btView = v5->_btView;
    v5->_btView = v14;

    [(BluetoothSetupView *)v5->_btView setAutoresizingMask:2];
    [(TetheringSetupView *)v5 addSubview:v5->_btView];
    v16 = [[USBSetupView alloc] initWithFrame:v8, v9, v10, v11];
    usbView = v5->_usbView;
    v5->_usbView = v16;

    [(USBSetupView *)v5->_usbView setAutoresizingMask:2];
    [(TetheringSetupView *)v5 addSubview:v5->_usbView];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3 inTableView:(id)a4 shouldSetSize:(BOOL)a5
{
  v5 = a5;
  width = a3.width;
  v8 = a4;
  if (self->_showWifiView)
  {
    [(SetupView *)self->_wifiView sizeThatFits:width, 1.79769313e308];
    v11 = v10;
    if (v5)
    {
      v27.size.width = v9;
      v27.origin.x = 0.0;
      v27.origin.y = 20.0;
      v27.size.height = v11;
      v28 = CGRectIntegral(v27);
      [(WiFiSetupView *)self->_wifiView setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
    }

    v12 = v11 + 20.0 + 10.0;
  }

  else
  {
    v12 = 20.0;
  }

  [(SetupView *)self->_btView sizeThatFits:width, 1.79769313e308];
  v15 = v14;
  if (v5)
  {
    v29.size.width = v13;
    v29.origin.x = 0.0;
    v29.origin.y = v12;
    v29.size.height = v15;
    v30 = CGRectIntegral(v29);
    [(BluetoothSetupView *)self->_btView setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
  }

  v16 = v12 + v15 + 10.0;
  [(SetupView *)self->_usbView sizeThatFits:width, 1.79769313e308];
  v19 = v18;
  if (v5)
  {
    v31.size.width = v17;
    v31.origin.x = 0.0;
    v31.origin.y = v16;
    v31.size.height = v19;
    v32 = CGRectIntegral(v31);
    [(USBSetupView *)self->_usbView setFrame:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
  }

  v20 = width;
  v21 = ceilf(v20);
  v22 = v16 + v19 + 10.0;
  v23 = ceilf(v22);

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TetheringSetupView *)self superview];
  [(TetheringSetupView *)self sizeThatFits:v6 inTableView:0 shouldSetSize:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = TetheringSetupView;
  [(TetheringSetupView *)&v8 layoutSubviews];
  [(TetheringSetupView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(TetheringSetupView *)self superview];
  [(TetheringSetupView *)self sizeThatFits:v7 inTableView:1 shouldSetSize:v4, v6];
}

@end