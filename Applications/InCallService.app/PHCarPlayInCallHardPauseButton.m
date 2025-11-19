@interface PHCarPlayInCallHardPauseButton
- (PHCarPlayInCallHardPauseButton)init;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)hardPausePressed;
- (void)setHidden:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PHCarPlayInCallHardPauseButton

- (PHCarPlayInCallHardPauseButton)init
{
  v23.receiver = self;
  v23.super_class = PHCarPlayInCallHardPauseButton;
  v2 = [(PHCarPlayInCallHardPauseButton *)&v23 initWithFrame:0.0, 0.0, 107.0, 28.0];
  v3 = v2;
  if (v2)
  {
    [(PHCarPlayInCallHardPauseButton *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [(PHCarPlayInCallHardPauseButton *)v3 layer];
    [v4 setCornerRadius:3.0];

    v5 = +[UIColor _externalSystemSuperDarkGrayColor];
    [(PHCarPlayInCallHardPauseButton *)v3 setBackgroundColor:v5];

    [(PHCarPlayInCallHardPauseButton *)v3 setClipsToBounds:1];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CARPLAY_HARD_PAUSE_DEFAULT_TITLE" value:&stru_100361FD0 table:@"PHCarPlay"];
    [(PHCarPlayInCallHardPauseButton *)v3 setTitle:v7 forState:0];

    v8 = +[UIColor whiteColor];
    [(PHCarPlayInCallHardPauseButton *)v3 setTitleColor:v8 forState:0];

    v9 = +[UIColor lightGrayColor];
    [(PHCarPlayInCallHardPauseButton *)v3 setTitleColor:v9 forState:2];

    v10 = +[UIColor _externalSystemSuperDarkGrayColor];
    [(PHCarPlayInCallHardPauseButton *)v3 setTitleColor:v10 forState:1];

    [(PHCarPlayInCallHardPauseButton *)v3 setTitleEdgeInsets:0.0, 14.0, 0.0, 14.0];
    v11 = +[UIColor clearColor];
    v12 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v12 setBackgroundColor:v11];

    v13 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v13 setOpaque:0];

    v14 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [UIFont systemFontOfSize:17.0];
    v16 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v16 setFont:v15];

    v17 = +[UIColor whiteColor];
    v18 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v18 setTextColor:v17];

    v19 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v19 setTextAlignment:1];

    v20 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v20 setLineBreakMode:4];

    v21 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [v21 setNumberOfLines:1];

    [(PHCarPlayInCallHardPauseButton *)v3 addTarget:v3 action:"hardPausePressed" forControlEvents:64];
  }

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  [(PHCarPlayInCallHardPauseButton *)self setEnabled:!a3];
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallHardPauseButton;
  [(PHCarPlayInCallHardPauseButton *)&v7 setHidden:v3];
  v5 = [(PHCarPlayInCallHardPauseButton *)self delegate];

  if (v5)
  {
    v6 = [(PHCarPlayInCallHardPauseButton *)self delegate];
    [v6 hardPauseButtonDidChangeVisibility:self];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    +[UIColor externalSystemTealColor];
  }

  else
  {
    +[UIColor _externalSystemSuperDarkGrayColor];
  }
  v5 = ;
  [(PHCarPlayInCallHardPauseButton *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = PHCarPlayInCallHardPauseButton;
  [(PHCarPlayInCallHardPauseButton *)&v6 setHighlighted:v3];
}

- (void)hardPausePressed
{
  v3 = [(PHCarPlayInCallHardPauseButton *)self delegate];
  [v3 hardPauseButtonDidSendHardPauseDigits:self];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  [(PHCarPlayInCallHardPauseButton *)self setHighlighted:v5 == self];
}

@end