@interface PLBatteryUIBatteryGroupHeader
+ (id)headerViewWithRange:(id)a3 Cycles:(id)a4;
- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)a3;
- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)a3 range:(id)a4 cycles:(id)a5;
- (PLBatteryUIBatteryGroupHeader)initWithSpecifier:(id)a3;
- (PLBatteryUIBatteryGroupHeaderDelegate)delegate;
- (void)layoutSubviews;
- (void)refresh1:(id)a3;
@end

@implementation PLBatteryUIBatteryGroupHeader

+ (id)headerViewWithRange:(id)a3 Cycles:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PLBatteryUIBatteryGroupHeader);
  [(PLBatteryUIBatteryGroupHeader *)v7 setRange:v6];

  [(PLBatteryUIBatteryGroupHeader *)v7 setCycle:v5];

  return v7;
}

- (PLBatteryUIBatteryGroupHeader)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"PLBatteryUIDurationValueKey"];
  usageDuration = self->_usageDuration;
  self->_usageDuration = v5;

  v7 = [v4 objectForKeyedSubscript:@"PLBatteryUITitleLabelString"];
  titleLabelString = self->_titleLabelString;
  self->_titleLabelString = v7;

  v9 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  self->_iconDisplayType = [v9 intValue];

  v10 = [v4 propertyForKey:@"PLBatteryUIBatteryGroupHeaderDelegateKey"];

  [(PLBatteryUIBatteryGroupHeader *)self setDelegate:v10];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;

  return [(PLBatteryUIBatteryGroupHeader *)self initWithFrame:CGRectZero.origin.x, y, width, height];
}

- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = PLBatteryUIBatteryGroupHeader;
  v3 = [(PLBatteryUIBatteryGroupHeader *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    batteryChargeCyclesString = v3->_batteryChargeCyclesString;
    v3->_batteryChargeCyclesString = v8;

    v10 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_batteryChargeCyclesString setFont:v10];

    v11 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_batteryChargeCyclesString setTextColor:v11];

    [(UILabel *)v3->_batteryChargeCyclesString setTextAlignment:2];
    v12 = +[UIColor clearColor];
    [(UILabel *)v3->_batteryChargeCyclesString setBackgroundColor:v12];

    [(PLBatteryUIBatteryGroupHeader *)v3 addSubview:v3->_batteryChargeCyclesString];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    v15 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_titleLabel setFont:v15];

    v16 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_titleLabel setTextColor:v16];

    [(UILabel *)v3->_titleLabel setTextAlignment:0];
    v17 = +[UIColor clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v17];

    [(PLBatteryUIBatteryGroupHeader *)v3 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)a3 range:(id)a4 cycles:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v14 = [(PLBatteryUIBatteryGroupHeader *)self initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rangeString, a4);
    objc_storeStrong(&v15->_cycles, a5);
  }

  return v15;
}

- (void)layoutSubviews
{
  [(PLBatteryUIBatteryGroupHeader *)self bounds];
  v4 = v3;
  v5 = [(PLBatteryUIBatteryGroupHeader *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(PLBatteryUIBatteryGroupHeader *)self superview];
    [v7 _backgroundInset];
    v9 = v8;

    v10 = v9 + 15.0;
    [(UILabel *)self->_titleLabel setText:self->_titleLabelString];
    [(UILabel *)self->_titleLabel setTextAlignment:2];
    [(UILabel *)self->_titleLabel sizeToFit];
    v11 = v4 + v10 * -2.0;
    [(UILabel *)self->_batteryChargeCyclesString frame];
    v13 = v12;
    v15 = v14;
    v16 = v4 - v10;
    [(UILabel *)self->_batteryChargeCyclesString size];
    v18 = v4 - v10 - v17;
    if (v11 >= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = v4 + v10 * -2.0;
    }

    [(UILabel *)self->_batteryChargeCyclesString setFrame:v18, v10, v19, v15];
    [(UILabel *)self->_titleLabel frame];
    v21 = v20;
    v23 = v22;
    v24 = [UIApp userInterfaceLayoutDirection];
    v25 = v16 - v21;
    if (!v24)
    {
      v25 = v10;
    }

    titleLabel = self->_titleLabel;
    if (v11 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v11;
    }

    [(UILabel *)titleLabel setFrame:v25, v10, v27, v23];
  }
}

- (void)refresh1:(id)a3
{
  v4 = [(PLBatteryUIBatteryGroupHeader *)self delegate];

  if (v4)
  {
    v5 = [(PLBatteryUIBatteryGroupHeader *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PLBatteryUIBatteryGroupHeader *)self delegate];
      [v7 didPushBatteryButton:self];
    }
  }
}

- (PLBatteryUIBatteryGroupHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end