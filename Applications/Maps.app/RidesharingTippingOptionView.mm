@interface RidesharingTippingOptionView
- (RidesharingTippingOptionView)initWithCoder:(id)a3;
- (RidesharingTippingOptionView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)setAmount:(id)a3;
- (void)setOther:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateTheme;
@end

@implementation RidesharingTippingOptionView

- (void)updateTheme
{
  v3 = [(RidesharingTippingOptionView *)self theme];
  v4 = [v3 ridesharingTippingOptionsBackgroundColor:{-[RidesharingTippingOptionView isSelected](self, "isSelected")}];
  [(RidesharingTippingOptionView *)self setBackgroundColor:v4];

  v5 = [(UILabel *)self->_tipLabel attributedText];
  v6 = [v5 mutableCopy];

  v29 = NSForegroundColorAttributeName;
  v7 = [(RidesharingTippingOptionView *)self theme];
  v8 = [v7 ridesharingTippingOptionsForegroundColor:{-[RidesharingTippingOptionView isSelected](self, "isSelected")}];
  v30 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v6 addAttributes:v9 range:{0, objc_msgSend(v6, "length")}];

  amount = self->_amount;
  if (amount)
  {
    v11 = [(RideBookingCurrencyAmount *)amount currencySymbol];
    if (v11)
    {
      v12 = [v6 string];
      v13 = [v12 rangeOfString:v11];
      v15 = v14;

      v27 = NSForegroundColorAttributeName;
      v16 = [(RidesharingTippingOptionView *)self theme];
      v17 = [v16 ridesharingTippingOptionsForegroundCurrencyColor:[(RidesharingTippingOptionView *)self isSelected]];
      v28 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v6 addAttributes:v18 range:{v13, v15}];
    }

    else
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingTippingOptionView.m");
        v20 = [[NSString alloc] initWithFormat:@"Couldn't get range of currency symbol to apply styling. RideBookingCurrencyAmount: %@", self->_amount];
        *buf = 136315394;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }
    }
  }

  tipLabel = self->_tipLabel;
  v22 = [v6 copy];
  [(UILabel *)tipLabel setAttributedText:v22];
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (self->_amount)
  {
    [(RidesharingTippingOptionView *)self setAmount:?];
  }

  [(RidesharingTippingOptionView *)self updateTheme];
}

- (void)setOther:(BOOL)a3
{
  self->_other = a3;
  tipLabel = self->_tipLabel;
  if (a3)
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

- (void)setAmount:(id)a3
{
  objc_storeStrong(&self->_amount, a3);
  v5 = a3;
  v6 = [NSAttributedString alloc];
  v7 = [(RideBookingCurrencyAmount *)self->_amount formattedString];
  v8 = [v6 initWithString:v7];

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
  v5 = [(UILabel *)self->_tipLabel topAnchor];
  v6 = [(RidesharingTippingOptionView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:5.0];
  [v7 setActive:1];

  v8 = [(UILabel *)self->_tipLabel leadingAnchor];
  v9 = [(RidesharingTippingOptionView *)self leadingAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:10.0];
  [v10 setActive:1];

  v11 = [(UILabel *)self->_tipLabel bottomAnchor];
  v12 = [(RidesharingTippingOptionView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-5.0];
  [v13 setActive:1];

  v14 = [(UILabel *)self->_tipLabel trailingAnchor];
  v15 = [(RidesharingTippingOptionView *)self trailingAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-10.0];
  [v16 setActive:1];

  v19 = [(UILabel *)self->_tipLabel centerXAnchor];
  v17 = [(RidesharingTippingOptionView *)self centerXAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
  [v18 setActive:1];
}

- (RidesharingTippingOptionView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingOptionView;
  v3 = [(RidesharingTippingOptionView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingOptionView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (RidesharingTippingOptionView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingOptionView;
  v3 = [(RidesharingTippingOptionView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingOptionView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

@end