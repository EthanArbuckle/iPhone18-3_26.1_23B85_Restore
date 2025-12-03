@interface RidesharingTippingOptionView
- (RidesharingTippingOptionView)initWithCoder:(id)coder;
- (RidesharingTippingOptionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)setAmount:(id)amount;
- (void)setOther:(BOOL)other;
- (void)setSelected:(BOOL)selected;
- (void)updateTheme;
@end

@implementation RidesharingTippingOptionView

- (void)updateTheme
{
  theme = [(RidesharingTippingOptionView *)self theme];
  v4 = [theme ridesharingTippingOptionsBackgroundColor:{-[RidesharingTippingOptionView isSelected](self, "isSelected")}];
  [(RidesharingTippingOptionView *)self setBackgroundColor:v4];

  attributedText = [(UILabel *)self->_tipLabel attributedText];
  v6 = [attributedText mutableCopy];

  v29 = NSForegroundColorAttributeName;
  theme2 = [(RidesharingTippingOptionView *)self theme];
  v8 = [theme2 ridesharingTippingOptionsForegroundColor:{-[RidesharingTippingOptionView isSelected](self, "isSelected")}];
  v30 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v6 addAttributes:v9 range:{0, objc_msgSend(v6, "length")}];

  amount = self->_amount;
  if (amount)
  {
    currencySymbol = [(RideBookingCurrencyAmount *)amount currencySymbol];
    if (currencySymbol)
    {
      string = [v6 string];
      v13 = [string rangeOfString:currencySymbol];
      v15 = v14;

      v27 = NSForegroundColorAttributeName;
      theme3 = [(RidesharingTippingOptionView *)self theme];
      v17 = [theme3 ridesharingTippingOptionsForegroundCurrencyColor:[(RidesharingTippingOptionView *)self isSelected]];
      v28 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v6 addAttributes:v18 range:{v13, v15}];
    }

    else
    {
      theme3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(theme3, OS_LOG_TYPE_ERROR))
      {
        v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingTippingOptionView.m");
        v20 = [[NSString alloc] initWithFormat:@"Couldn't get range of currency symbol to apply styling. RideBookingCurrencyAmount: %@", self->_amount];
        *buf = 136315394;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, theme3, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }
  }

  tipLabel = self->_tipLabel;
  v22 = [v6 copy];
  [(UILabel *)tipLabel setAttributedText:v22];
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (self->_amount)
  {
    [(RidesharingTippingOptionView *)self setAmount:?];
  }

  [(RidesharingTippingOptionView *)self updateTheme];
}

- (void)setOther:(BOOL)other
{
  self->_other = other;
  tipLabel = self->_tipLabel;
  if (other)
  {
    v5 = [NSAttributedString alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"ridesharing.feedback.tippingOption.other" value:@"localized string not found" table:0];
    v8 = [v5 initWithString:v7];
    [(UILabel *)tipLabel setAttributedText:v8];
  }

  else
  {
    [(UILabel *)self->_tipLabel setAttributedText:0];
  }

  [(RidesharingTippingOptionView *)self updateTheme];
}

- (void)setAmount:(id)amount
{
  objc_storeStrong(&self->_amount, amount);
  amountCopy = amount;
  v6 = [NSAttributedString alloc];
  formattedString = [(RideBookingCurrencyAmount *)self->_amount formattedString];
  v8 = [v6 initWithString:formattedString];

  [(UILabel *)self->_tipLabel setAttributedText:v8];
  [(RidesharingTippingOptionView *)self updateTheme];
}

- (void)_commonInit
{
  self->_selected = 0;
  v3 = objc_alloc_init(UILabel);
  tipLabel = self->_tipLabel;
  self->_tipLabel = v3;

  [(UILabel *)self->_tipLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RidesharingTippingOptionView *)self addSubview:self->_tipLabel];
  topAnchor = [(UILabel *)self->_tipLabel topAnchor];
  topAnchor2 = [(RidesharingTippingOptionView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  [v7 setActive:1];

  leadingAnchor = [(UILabel *)self->_tipLabel leadingAnchor];
  leadingAnchor2 = [(RidesharingTippingOptionView *)self leadingAnchor];
  v10 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:10.0];
  [v10 setActive:1];

  bottomAnchor = [(UILabel *)self->_tipLabel bottomAnchor];
  bottomAnchor2 = [(RidesharingTippingOptionView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  [v13 setActive:1];

  trailingAnchor = [(UILabel *)self->_tipLabel trailingAnchor];
  trailingAnchor2 = [(RidesharingTippingOptionView *)self trailingAnchor];
  v16 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-10.0];
  [v16 setActive:1];

  centerXAnchor = [(UILabel *)self->_tipLabel centerXAnchor];
  centerXAnchor2 = [(RidesharingTippingOptionView *)self centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];
}

- (RidesharingTippingOptionView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingOptionView;
  v3 = [(RidesharingTippingOptionView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingOptionView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (RidesharingTippingOptionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingOptionView;
  v3 = [(RidesharingTippingOptionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingOptionView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

@end