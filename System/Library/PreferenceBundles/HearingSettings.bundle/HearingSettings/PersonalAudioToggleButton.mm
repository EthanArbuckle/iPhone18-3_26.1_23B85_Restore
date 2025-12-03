@interface PersonalAudioToggleButton
+ (id)linkWithTitle:(id)title;
- (void)buttonPressed:(id)pressed;
@end

@implementation PersonalAudioToggleButton

+ (id)linkWithTitle:(id)title
{
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___PersonalAudioToggleButton;
  titleCopy = title;
  v4 = objc_msgSendSuper2(&v13, "buttonWithType:", 0);
  [v4 setTitle:titleCopy forState:{0, v13.receiver, v13.super_class}];

  layer = [v4 layer];
  v6 = +[UIColor systemBlueColor];
  [layer setBorderColor:{objc_msgSend(v6, "CGColor")}];

  layer2 = [v4 layer];
  [layer2 setBorderWidth:2.0];

  v8 = +[UIColor clearColor];
  [v4 setTintColor:v8];

  [v4 setClipsToBounds:1];
  [v4 _setContinuousCornerRadius:5.0];
  v9 = +[UIColor systemBlueColor];
  [v4 setTitleColor:v9 forState:0];

  titleLabel = [v4 titleLabel];
  [titleLabel setLineBreakMode:0];

  v11 = [[TapOffGestureRecognizer alloc] initWithTarget:v4 action:"buttonPressed:"];
  [(TapOffGestureRecognizer *)v11 setCancelsTouchesInView:0];
  [v4 addGestureRecognizer:v11];

  return v4;
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy state] < 1 || objc_msgSend(pressedCopy, "state") > 2)
  {
    v9 = +[UIColor whiteColor];
    [(PersonalAudioToggleButton *)self setBackgroundColor:v9];

    layer = [(PersonalAudioToggleButton *)self layer];
    [layer setBorderWidth:2.0];

    v11 = +[UIColor systemBlueColor];
    [(PersonalAudioToggleButton *)self setTitleColor:v11 forState:0];

    v8 = 1;
  }

  else
  {
    layer2 = [(PersonalAudioToggleButton *)self layer];
    [layer2 setBorderWidth:0.0];

    v5 = +[UIColor systemBlueColor];
    [(PersonalAudioToggleButton *)self setBackgroundColor:v5];

    v6 = +[UIColor whiteColor];
    [(PersonalAudioToggleButton *)self setTitleColor:v6 forState:0];

    v7 = +[PASettings sharedInstance];
    LOBYTE(v6) = [v7 personalMediaEnabled];

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = 0;
  }

  v12 = +[PASettings sharedInstance];
  [v12 setPersonalMediaEnabled:v8];

LABEL_7:
}

@end