@interface PHCarPlayInCallDialerLCDView
- (PHCarPlayInCallDialerLCDView)initWithFrame:(CGRect)a3;
- (id)text;
- (void)deleteCharacter;
- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (void)setText:(id)a3 needsFormat:(BOOL)a4;
@end

@implementation PHCarPlayInCallDialerLCDView

- (PHCarPlayInCallDialerLCDView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = PHCarPlayInCallDialerLCDView;
  v3 = [(PHCarPlayInCallDialerLCDView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIFont systemFontOfSize:20.0];
    v6 = [v5 withCaseSensitiveAttribute];
    [v4 setFont:v6];

    [v4 setTextAlignment:1];
    v7 = +[UIColor clearColor];
    [v4 setBackgroundColor:v7];

    v8 = +[UIColor dynamicLabelColor];
    [v4 setTextColor:v8];

    [v4 setAdjustsFontSizeToFitWidth:0];
    [v4 setLineBreakMode:3];
    [v4 setAccessibilityIdentifier:@"PHCarPlayInCallDialerLCDView"];
    [v4 setText:&stru_100361FD0];
    [(PHCarPlayInCallDialerLCDView *)v3 addSubview:v4];
    [(PHCarPlayInCallDialerLCDView *)v3 setMainNumberLabel:v4];
    v26 = @"numberLabel";
    v9 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v27 = v9;
    v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v22 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v21 = [NSLayoutConstraint constraintWithItem:v22 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    v25[0] = v21;
    v20 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v10 = [NSLayoutConstraint constraintWithItem:v3 attribute:3 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:0.0];
    v25[1] = v10;
    v11 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v12 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:v11 attribute:4 multiplier:1.0 constant:0.0];
    v25[2] = v12;
    v13 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v14 = [NSLayoutConstraint constraintWithItem:v3 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:0.0];
    v25[3] = v14;
    v15 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v16 = [NSLayoutConstraint constraintWithItem:v3 attribute:6 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:0.0];
    v25[4] = v16;
    v17 = [NSArray arrayWithObjects:v25 count:5];
    [(PHCarPlayInCallDialerLCDView *)v3 addConstraints:v17];

    v18 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[numberLabel]" options:0 metrics:0 views:v23];
    [(PHCarPlayInCallDialerLCDView *)v3 addConstraints:v18];
  }

  return v3;
}

- (id)text
{
  v2 = [(PHCarPlayInCallDialerLCDView *)self mainNumberLabel];
  v3 = [v2 text];
  v4 = [v3 copy];

  return v4;
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4
{
  v5 = a3;
  v6 = [(PHCarPlayInCallDialerLCDView *)self mainNumberLabel];
  [v6 setText:v5];
}

- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v7 = a3;
  if (([v7 isEqualToString:{@", "}] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @";") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"+") & 1) == 0)
  {
    v5 = [(PHCarPlayInCallDialerLCDView *)self text];
    v6 = [v5 stringByAppendingString:v7];
    [(PHCarPlayInCallDialerLCDView *)self setText:v6 needsFormat:1];
  }
}

- (void)deleteCharacter
{
  v4 = [(PHCarPlayInCallDialerLCDView *)self text];
  v3 = [v4 stringByTrimmingLastCharacter];
  [(PHCarPlayInCallDialerLCDView *)self setText:v3 needsFormat:0];
}

@end