@interface PHCarPlayInCallHardPauseButton
- (PHCarPlayInCallHardPauseButton)init;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)hardPausePressed;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
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
    layer = [(PHCarPlayInCallHardPauseButton *)v3 layer];
    [layer setCornerRadius:3.0];

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
    titleLabel = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel setBackgroundColor:v11];

    titleLabel2 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel2 setOpaque:0];

    titleLabel3 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [UIFont systemFontOfSize:17.0];
    titleLabel4 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel4 setFont:v15];

    v17 = +[UIColor whiteColor];
    titleLabel5 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel5 setTextColor:v17];

    titleLabel6 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel6 setTextAlignment:1];

    titleLabel7 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel7 setLineBreakMode:4];

    titleLabel8 = [(PHCarPlayInCallHardPauseButton *)v3 titleLabel];
    [titleLabel8 setNumberOfLines:1];

    [(PHCarPlayInCallHardPauseButton *)v3 addTarget:v3 action:"hardPausePressed" forControlEvents:64];
  }

  return v3;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [(PHCarPlayInCallHardPauseButton *)self setEnabled:!hidden];
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallHardPauseButton;
  [(PHCarPlayInCallHardPauseButton *)&v7 setHidden:hiddenCopy];
  delegate = [(PHCarPlayInCallHardPauseButton *)self delegate];

  if (delegate)
  {
    delegate2 = [(PHCarPlayInCallHardPauseButton *)self delegate];
    [delegate2 hardPauseButtonDidChangeVisibility:self];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (highlighted)
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
  [(PHCarPlayInCallHardPauseButton *)&v6 setHighlighted:highlightedCopy];
}

- (void)hardPausePressed
{
  delegate = [(PHCarPlayInCallHardPauseButton *)self delegate];
  [delegate hardPauseButtonDidSendHardPauseDigits:self];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  [(PHCarPlayInCallHardPauseButton *)self setHighlighted:nextFocusedItem == self];
}

@end