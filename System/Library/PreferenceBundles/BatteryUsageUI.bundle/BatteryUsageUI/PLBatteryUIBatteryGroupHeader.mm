@interface PLBatteryUIBatteryGroupHeader
+ (id)headerViewWithRange:(id)range Cycles:(id)cycles;
- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)frame;
- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)frame range:(id)range cycles:(id)cycles;
- (PLBatteryUIBatteryGroupHeader)initWithSpecifier:(id)specifier;
- (PLBatteryUIBatteryGroupHeaderDelegate)delegate;
- (void)layoutSubviews;
- (void)refresh1:(id)refresh1;
@end

@implementation PLBatteryUIBatteryGroupHeader

+ (id)headerViewWithRange:(id)range Cycles:(id)cycles
{
  cyclesCopy = cycles;
  rangeCopy = range;
  v7 = objc_alloc_init(PLBatteryUIBatteryGroupHeader);
  [(PLBatteryUIBatteryGroupHeader *)v7 setRange:rangeCopy];

  [(PLBatteryUIBatteryGroupHeader *)v7 setCycle:cyclesCopy];

  return v7;
}

- (PLBatteryUIBatteryGroupHeader)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIDurationValueKey"];
  usageDuration = self->_usageDuration;
  self->_usageDuration = v5;

  v7 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUITitleLabelString"];
  titleLabelString = self->_titleLabelString;
  self->_titleLabelString = v7;

  v9 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  self->_iconDisplayType = [v9 intValue];

  v10 = [specifierCopy propertyForKey:@"PLBatteryUIBatteryGroupHeaderDelegateKey"];

  [(PLBatteryUIBatteryGroupHeader *)self setDelegate:v10];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;

  return [(PLBatteryUIBatteryGroupHeader *)self initWithFrame:CGRectZero.origin.x, y, width, height];
}

- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = PLBatteryUIBatteryGroupHeader;
  v3 = [(PLBatteryUIBatteryGroupHeader *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (PLBatteryUIBatteryGroupHeader)initWithFrame:(CGRect)frame range:(id)range cycles:(id)cycles
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rangeCopy = range;
  cyclesCopy = cycles;
  height = [(PLBatteryUIBatteryGroupHeader *)self initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_rangeString, range);
    objc_storeStrong(&v15->_cycles, cycles);
  }

  return v15;
}

- (void)layoutSubviews
{
  [(PLBatteryUIBatteryGroupHeader *)self bounds];
  v4 = v3;
  superview = [(PLBatteryUIBatteryGroupHeader *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(PLBatteryUIBatteryGroupHeader *)self superview];
    [superview2 _backgroundInset];
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
    userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
    v25 = v16 - v21;
    if (!userInterfaceLayoutDirection)
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

- (void)refresh1:(id)refresh1
{
  delegate = [(PLBatteryUIBatteryGroupHeader *)self delegate];

  if (delegate)
  {
    delegate2 = [(PLBatteryUIBatteryGroupHeader *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(PLBatteryUIBatteryGroupHeader *)self delegate];
      [delegate3 didPushBatteryButton:self];
    }
  }
}

- (PLBatteryUIBatteryGroupHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end