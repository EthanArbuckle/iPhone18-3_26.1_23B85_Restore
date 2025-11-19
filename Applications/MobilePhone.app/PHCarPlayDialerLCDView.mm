@interface PHCarPlayDialerLCDView
- (CGSize)intrinsicContentSize;
- (PHCarPlayDialerLCDView)initWithFrame:(CGRect)a3;
- (id)text;
- (void)dealloc;
- (void)deleteCharacter;
- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (void)setText:(id)a3 needsFormat:(BOOL)a4;
@end

@implementation PHCarPlayDialerLCDView

- (PHCarPlayDialerLCDView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PHCarPlayDialerLCDView;
  v3 = [(PHCarPlayDialerLCDView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 150.0, 22.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIFont systemFontOfSize:20.0];
    [v4 setFont:v5];

    [v4 setTextAlignment:1];
    v6 = +[UIColor clearColor];
    [v4 setBackgroundColor:v6];

    v7 = +[UIColor dynamicLabelColor];
    [v4 setTextColor:v7];

    [v4 setAdjustsFontSizeToFitWidth:1];
    [v4 setMinimumScaleFactor:0.699999988];
    [v4 setLineBreakMode:3];
    [v4 setAccessibilityIdentifier:@"PHCarPlayDialerLCDView"];
    [v4 setText:&stru_10028F310];
    [(PHCarPlayDialerLCDView *)v3 addSubview:v4];
    [(PHCarPlayDialerLCDView *)v3 setMainNumberLabel:v4];
    v8 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v9 = [NSLayoutConstraint constraintWithItem:v8 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v9];

    v10 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v11 = [NSLayoutConstraint constraintWithItem:v10 attribute:1 relatedBy:1 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v11];

    v12 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v13 = [NSLayoutConstraint constraintWithItem:v12 attribute:2 relatedBy:-1 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v13];

    v19 = @"numberLabel";
    v14 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v20 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[numberLabel]" options:0 metrics:0 views:v15];
    [(PHCarPlayDialerLCDView *)v3 addConstraints:v16];
  }

  return v3;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = PHCarPlayDialerLCDView;
  [(PHCarPlayDialerLCDView *)&v2 dealloc];
}

- (id)text
{
  v2 = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  v3 = [v2 text];
  v4 = +[NSCharacterSet unicodeDirectionalCharactersSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4
{
  v6 = a3;
  v11 = v6;
  if (a4)
  {
    v7 = PHFormatDialerLCDViewText();
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  [v9 setText:v8];

  v10 = [(PHCarPlayDialerLCDView *)self delegate];
  [v10 dialerLCDFieldTextDidChange:self];
}

- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(PHCarPlayDialerLCDView *)self text];
  v7 = [v6 mutableCopy];

  if ((![v7 isEqualToString:@"*"] || (objc_msgSend(v9, "isEqualToString:", @",") & 1) == 0) && (!objc_msgSend(v7, "isEqualToString:", @"#") || (objc_msgSend(v9, "isEqualToString:", @";") & 1) == 0))
  {
    if (v4)
    {
      [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
    }

    v8 = [v7 stringByAppendingString:v9];
    [(PHCarPlayDialerLCDView *)self setText:v8 needsFormat:!v4];
  }
}

- (void)deleteCharacter
{
  v3 = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  v4 = [v3 text];
  v5 = UIFormattedPhoneStringByRemovingFromEnd();
  [(PHCarPlayDialerLCDView *)self setText:v5 needsFormat:0];

  v6 = [(PHCarPlayDialerLCDView *)self delegate];
  [v6 dialerLCDFieldTextDidChange:self];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  [v2 bounds];
  v4 = v3;

  v5 = 150.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

@end