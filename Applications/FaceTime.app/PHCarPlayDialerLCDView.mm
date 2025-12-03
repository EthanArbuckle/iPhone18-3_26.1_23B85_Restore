@interface PHCarPlayDialerLCDView
- (CGSize)intrinsicContentSize;
- (PHCarPlayDialerLCDView)initWithFrame:(CGRect)frame;
- (id)text;
- (void)dealloc;
- (void)deleteCharacter;
- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (void)setText:(id)text needsFormat:(BOOL)format;
@end

@implementation PHCarPlayDialerLCDView

- (PHCarPlayDialerLCDView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = PHCarPlayDialerLCDView;
  v3 = [(PHCarPlayDialerLCDView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    [v4 setText:&stru_10010E930];
    [(PHCarPlayDialerLCDView *)v3 addSubview:v4];
    [(PHCarPlayDialerLCDView *)v3 setMainNumberLabel:v4];
    mainNumberLabel = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v9 = [NSLayoutConstraint constraintWithItem:mainNumberLabel attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v9];

    mainNumberLabel2 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v11 = [NSLayoutConstraint constraintWithItem:mainNumberLabel2 attribute:1 relatedBy:1 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v11];

    mainNumberLabel3 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v13 = [NSLayoutConstraint constraintWithItem:mainNumberLabel3 attribute:2 relatedBy:-1 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerLCDView *)v3 addConstraint:v13];

    v19 = @"numberLabel";
    mainNumberLabel4 = [(PHCarPlayDialerLCDView *)v3 mainNumberLabel];
    v20 = mainNumberLabel4;
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
  mainNumberLabel = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  text = [mainNumberLabel text];
  v4 = +[NSCharacterSet unicodeDirectionalCharactersSet];
  v5 = [text stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)setText:(id)text needsFormat:(BOOL)format
{
  textCopy = text;
  v11 = textCopy;
  if (format)
  {
    v7 = PHFormatDialerLCDViewText();
  }

  else
  {
    v7 = textCopy;
  }

  v8 = v7;
  mainNumberLabel = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  [mainNumberLabel setText:v8];

  delegate = [(PHCarPlayDialerLCDView *)self delegate];
  [delegate dialerLCDFieldTextDidChange:self];
}

- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  characterCopy = character;
  positionCopy = position;
  text = [(PHCarPlayDialerLCDView *)self text];
  v7 = [text mutableCopy];

  if ((![v7 isEqualToString:@"*"] || (objc_msgSend(positionCopy, "isEqualToString:", @",") & 1) == 0) && (!objc_msgSend(v7, "isEqualToString:", @"#") || (objc_msgSend(positionCopy, "isEqualToString:", @";") & 1) == 0))
  {
    if (characterCopy)
    {
      [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
    }

    v8 = [v7 stringByAppendingString:positionCopy];
    [(PHCarPlayDialerLCDView *)self setText:v8 needsFormat:!characterCopy];
  }
}

- (void)deleteCharacter
{
  mainNumberLabel = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  text = [mainNumberLabel text];
  v5 = UIFormattedPhoneStringByRemovingFromEnd();
  [(PHCarPlayDialerLCDView *)self setText:v5 needsFormat:0];

  delegate = [(PHCarPlayDialerLCDView *)self delegate];
  [delegate dialerLCDFieldTextDidChange:self];
}

- (CGSize)intrinsicContentSize
{
  mainNumberLabel = [(PHCarPlayDialerLCDView *)self mainNumberLabel];
  [mainNumberLabel bounds];
  v4 = v3;

  v5 = 150.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

@end