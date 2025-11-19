@interface MailBoldTrayButton
+ (id)boldButton;
- (id)boldConfiguration;
- (void)tintColorDidChange;
- (void)updateConfiguration;
@end

@implementation MailBoldTrayButton

+ (id)boldButton
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MailBoldTrayButton;
  v2 = objc_msgSendSuper2(&v5, "buttonWithType:", 0);
  v3 = [v2 boldConfiguration];
  [v2 setConfiguration:v3];

  return v2;
}

- (id)boldConfiguration
{
  v2 = +[UIButtonConfiguration filledButtonConfiguration];
  [v2 setButtonSize:3];
  v3 = [v2 background];
  [v3 setCornerRadius:14.0];

  return v2;
}

- (void)updateConfiguration
{
  v5.receiver = self;
  v5.super_class = MailBoldTrayButton;
  [(MailBoldTrayButton *)&v5 updateConfiguration];
  v3 = [(MailBoldTrayButton *)self configuration];
  v4 = [(MailBoldTrayButton *)self tintColor];
  [v3 setBaseBackgroundColor:v4];

  [(MailBoldTrayButton *)self setConfiguration:v3];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MailBoldTrayButton;
  [(MailBoldTrayButton *)&v3 tintColorDidChange];
  [(MailBoldTrayButton *)self setNeedsUpdateConfiguration];
}

@end