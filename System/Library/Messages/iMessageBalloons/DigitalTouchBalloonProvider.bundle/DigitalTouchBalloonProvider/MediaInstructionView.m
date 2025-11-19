@interface MediaInstructionView
+ (BOOL)isInstructionAllowed;
+ (void)disallowInstruction;
- (CGSize)_textLabelSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MediaInstructionView)init;
- (void)_updateTextLabelFrame;
- (void)updateForVideoState:(unint64_t)a3;
@end

@implementation MediaInstructionView

+ (BOOL)isInstructionAllowed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"HideMediaInstruction"];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

+ (void)disallowInstruction
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setObject:&__kCFBooleanTrue forKey:@"HideMediaInstruction"];
}

- (MediaInstructionView)init
{
  v12.receiver = self;
  v12.super_class = MediaInstructionView;
  v2 = [(MediaInstructionView *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(UILabel);
    textLabel = v2->_textLabel;
    v2->_textLabel = v3;

    v5 = v2->_textLabel;
    v6 = +[UIColor whiteColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = v2->_textLabel;
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)v2->_textLabel setNumberOfLines:3];
    [(UILabel *)v2->_textLabel setTextAlignment:1];
    [(UILabel *)v2->_textLabel setAdjustsFontSizeToFitWidth:1];
    [(MediaInstructionView *)v2 addSubview:v2->_textLabel];
    v9 = [UIColor colorWithWhite:0.0 alpha:0.4];
    [(MediaInstructionView *)v2 setBackgroundColor:v9];

    [(MediaInstructionView *)v2 setUserInteractionEnabled:0];
    v10 = v2;
  }

  return v2;
}

- (void)_updateTextLabelFrame
{
  [(MediaInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(MediaInstructionView *)self _textLabelSizeForSize:v3, v5];
  v8 = v7;
  v9 = (v4 - v7) * 0.5;
  textLabel = self->_textLabel;
  v12 = (v6 - v10) * 0.5;

  [(UILabel *)textLabel setFrame:v9, v12, v8];
}

- (void)updateForVideoState:(unint64_t)a3
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v5;
  if (a3 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 localizedStringForKey:off_247C8[a3] value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];
  }

  [(UILabel *)self->_textLabel setText:v6];
  [(MediaInstructionView *)self _updateTextLabelFrame];
}

- (CGSize)_textLabelSizeForSize:(CGSize)a3
{
  [(UILabel *)self->_textLabel sizeThatFits:a3.width + -30.0, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MediaInstructionView *)self _textLabelSizeForSize:a3.width, a3.height];
  v4 = v3 + 30.0;
  v6 = v5 + 30.0;
  result.height = v6;
  result.width = v4;
  return result;
}

@end