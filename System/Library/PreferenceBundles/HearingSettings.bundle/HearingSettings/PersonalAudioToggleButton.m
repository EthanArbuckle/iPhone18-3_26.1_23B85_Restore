@interface PersonalAudioToggleButton
+ (id)linkWithTitle:(id)a3;
- (void)buttonPressed:(id)a3;
@end

@implementation PersonalAudioToggleButton

+ (id)linkWithTitle:(id)a3
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___PersonalAudioToggleButton;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v13, "buttonWithType:", 0);
  [v4 setTitle:v3 forState:{0, v13.receiver, v13.super_class}];

  v5 = [v4 layer];
  v6 = +[UIColor systemBlueColor];
  [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

  v7 = [v4 layer];
  [v7 setBorderWidth:2.0];

  v8 = +[UIColor clearColor];
  [v4 setTintColor:v8];

  [v4 setClipsToBounds:1];
  [v4 _setContinuousCornerRadius:5.0];
  v9 = +[UIColor systemBlueColor];
  [v4 setTitleColor:v9 forState:0];

  v10 = [v4 titleLabel];
  [v10 setLineBreakMode:0];

  v11 = [[TapOffGestureRecognizer alloc] initWithTarget:v4 action:"buttonPressed:"];
  [(TapOffGestureRecognizer *)v11 setCancelsTouchesInView:0];
  [v4 addGestureRecognizer:v11];

  return v4;
}

- (void)buttonPressed:(id)a3
{
  v13 = a3;
  if ([v13 state] < 1 || objc_msgSend(v13, "state") > 2)
  {
    v9 = +[UIColor whiteColor];
    [(PersonalAudioToggleButton *)self setBackgroundColor:v9];

    v10 = [(PersonalAudioToggleButton *)self layer];
    [v10 setBorderWidth:2.0];

    v11 = +[UIColor systemBlueColor];
    [(PersonalAudioToggleButton *)self setTitleColor:v11 forState:0];

    v8 = 1;
  }

  else
  {
    v4 = [(PersonalAudioToggleButton *)self layer];
    [v4 setBorderWidth:0.0];

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