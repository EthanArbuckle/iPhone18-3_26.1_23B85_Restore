@interface MailBoldTrayButton
+ (id)boldButton;
- (id)boldConfiguration;
- (void)tintColorDidChange;
- (void)updateConfiguration;
@end

@implementation MailBoldTrayButton

+ (id)boldButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MailBoldTrayButton;
  v2 = objc_msgSendSuper2(&v5, "buttonWithType:", 0);
  boldConfiguration = [v2 boldConfiguration];
  [v2 setConfiguration:boldConfiguration];

  return v2;
}

- (id)boldConfiguration
{
  v2 = +[UIButtonConfiguration filledButtonConfiguration];
  [v2 setButtonSize:3];
  background = [v2 background];
  [background setCornerRadius:14.0];

  return v2;
}

- (void)updateConfiguration
{
  v5.receiver = self;
  v5.super_class = MailBoldTrayButton;
  [(MailBoldTrayButton *)&v5 updateConfiguration];
  configuration = [(MailBoldTrayButton *)self configuration];
  tintColor = [(MailBoldTrayButton *)self tintColor];
  [configuration setBaseBackgroundColor:tintColor];

  [(MailBoldTrayButton *)self setConfiguration:configuration];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MailBoldTrayButton;
  [(MailBoldTrayButton *)&v3 tintColorDidChange];
  [(MailBoldTrayButton *)self setNeedsUpdateConfiguration];
}

@end