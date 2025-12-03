@interface PHCarPlayInCallDialerLCDView
- (PHCarPlayInCallDialerLCDView)initWithFrame:(CGRect)frame;
- (id)text;
- (void)deleteCharacter;
- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (void)setText:(id)text needsFormat:(BOOL)format;
@end

@implementation PHCarPlayInCallDialerLCDView

- (PHCarPlayInCallDialerLCDView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = PHCarPlayInCallDialerLCDView;
  v3 = [(PHCarPlayInCallDialerLCDView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIFont systemFontOfSize:20.0];
    withCaseSensitiveAttribute = [v5 withCaseSensitiveAttribute];
    [v4 setFont:withCaseSensitiveAttribute];

    [v4 setTextAlignment:1];
    v7 = +[UIColor clearColor];
    [v4 setBackgroundColor:v7];

    v8 = +[UIColor dynamicLabelColor];
    [v4 setTextColor:v8];

    [v4 setAdjustsFontSizeToFitWidth:0];
    [v4 setLineBreakMode:3];
    [v4 setAccessibilityIdentifier:@"PHCarPlayInCallDialerLCDView"];
    [v4 setText:&stru_10010E930];
    [(PHCarPlayInCallDialerLCDView *)v3 addSubview:v4];
    [(PHCarPlayInCallDialerLCDView *)v3 setMainNumberLabel:v4];
    v26 = @"numberLabel";
    mainNumberLabel = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v27 = mainNumberLabel;
    v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    mainNumberLabel2 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v21 = [NSLayoutConstraint constraintWithItem:mainNumberLabel2 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    v25[0] = v21;
    mainNumberLabel3 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v10 = [NSLayoutConstraint constraintWithItem:v3 attribute:3 relatedBy:0 toItem:mainNumberLabel3 attribute:3 multiplier:1.0 constant:0.0];
    v25[1] = v10;
    mainNumberLabel4 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v12 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:mainNumberLabel4 attribute:4 multiplier:1.0 constant:0.0];
    v25[2] = v12;
    mainNumberLabel5 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v14 = [NSLayoutConstraint constraintWithItem:v3 attribute:5 relatedBy:0 toItem:mainNumberLabel5 attribute:5 multiplier:1.0 constant:0.0];
    v25[3] = v14;
    mainNumberLabel6 = [(PHCarPlayInCallDialerLCDView *)v3 mainNumberLabel];
    v16 = [NSLayoutConstraint constraintWithItem:v3 attribute:6 relatedBy:0 toItem:mainNumberLabel6 attribute:6 multiplier:1.0 constant:0.0];
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
  mainNumberLabel = [(PHCarPlayInCallDialerLCDView *)self mainNumberLabel];
  text = [mainNumberLabel text];
  v4 = [text copy];

  return v4;
}

- (void)setText:(id)text needsFormat:(BOOL)format
{
  textCopy = text;
  mainNumberLabel = [(PHCarPlayInCallDialerLCDView *)self mainNumberLabel];
  [mainNumberLabel setText:textCopy];
}

- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  positionCopy = position;
  if (([positionCopy isEqualToString:{@", "}] & 1) == 0 && (objc_msgSend(positionCopy, "isEqualToString:", @";") & 1) == 0 && (objc_msgSend(positionCopy, "isEqualToString:", @"+") & 1) == 0)
  {
    text = [(PHCarPlayInCallDialerLCDView *)self text];
    v6 = [text stringByAppendingString:positionCopy];
    [(PHCarPlayInCallDialerLCDView *)self setText:v6 needsFormat:1];
  }
}

- (void)deleteCharacter
{
  text = [(PHCarPlayInCallDialerLCDView *)self text];
  stringByTrimmingLastCharacter = [text stringByTrimmingLastCharacter];
  [(PHCarPlayInCallDialerLCDView *)self setText:stringByTrimmingLastCharacter needsFormat:0];
}

@end