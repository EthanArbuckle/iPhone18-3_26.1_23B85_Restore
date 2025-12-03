@interface SCATOnboardingBaseVideoController
- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle videoURL:(id)l completion:(id)completion;
- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle videoURL:(id)l completion:(id)completion;
- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text videoURL:(id)l completion:(id)completion;
- (void)_addCancelButton:(id)button;
- (void)_addNextButton:(id)button;
- (void)_didReachVideoEnd;
- (void)_setUpVideo;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingBaseVideoController

- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text videoURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = SCATOnboardingBaseVideoController;
  v12 = [(SCATOnboardingBaseVideoController *)&v17 initWithTitle:title detailText:text icon:0 contentLayout:3];
  v13 = v12;
  if (v12)
  {
    [(SCATOnboardingBaseVideoController *)v12 setCompletionHandler:completionCopy];
    v14 = [AVPlayer playerWithURL:lCopy];
    [(SCATOnboardingBaseVideoController *)v13 setPlayer:v14];

    v15 = AXParameterizedLocalizedString();
    [(SCATOnboardingBaseVideoController *)v13 _addNextButton:v15];
  }

  return v13;
}

- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle videoURL:(id)l completion:(id)completion
{
  buttonTitleCopy = buttonTitle;
  lCopy = l;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = SCATOnboardingBaseVideoController;
  v15 = [(SCATOnboardingBaseVideoController *)&v19 initWithTitle:title detailText:text icon:0 contentLayout:3];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingBaseVideoController *)v15 setCompletionHandler:completionCopy];
    v17 = [AVPlayer playerWithURL:lCopy];
    [(SCATOnboardingBaseVideoController *)v16 setPlayer:v17];

    [(SCATOnboardingBaseVideoController *)v16 _addNextButton:buttonTitleCopy];
  }

  return v16;
}

- (SCATOnboardingBaseVideoController)initWithTitle:(id)title detailText:(id)text nextButtonTitle:(id)buttonTitle cancelButtonTitle:(id)cancelButtonTitle videoURL:(id)l completion:(id)completion
{
  buttonTitleCopy = buttonTitle;
  cancelButtonTitleCopy = cancelButtonTitle;
  lCopy = l;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = SCATOnboardingBaseVideoController;
  v18 = [(SCATOnboardingBaseVideoController *)&v22 initWithTitle:title detailText:text icon:0 contentLayout:3];
  v19 = v18;
  if (v18)
  {
    [(SCATOnboardingBaseVideoController *)v18 setCompletionHandler:completionCopy];
    v20 = [AVPlayer playerWithURL:lCopy];
    [(SCATOnboardingBaseVideoController *)v19 setPlayer:v20];

    [(SCATOnboardingBaseVideoController *)v19 _addNextButton:buttonTitleCopy];
    [(SCATOnboardingBaseVideoController *)v19 _addCancelButton:cancelButtonTitleCopy];
  }

  return v19;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SCATOnboardingBaseVideoController;
  [(SCATOnboardingBaseVideoController *)&v13 viewDidLayoutSubviews];
  contentView = [(SCATOnboardingBaseVideoController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  playerLayer = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [playerLayer setFrame:{v5, v7 + 20.0, v9, v11}];
}

- (void)_addNextButton:(id)button
{
  buttonCopy = button;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:buttonCopy forState:0];

  [v6 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingBaseVideoController *)self buttonTray];
  [buttonTray addButton:v6];
}

- (void)_addCancelButton:(id)button
{
  buttonCopy = button;
  v6 = +[OBLinkTrayButton linkButton];
  [v6 setTitle:buttonCopy forState:0];

  [v6 addTarget:self action:"_didTapCancelButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingBaseVideoController *)self buttonTray];
  [buttonTray addButton:v6];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = SCATOnboardingBaseVideoController;
  [(SCATOnboardingBaseVideoController *)&v29 viewDidLoad];
  contentView = [(SCATOnboardingBaseVideoController *)self contentView];
  [contentView setClipsToBounds:1];

  v4 = +[UIColor clearColor];
  contentView2 = [(SCATOnboardingBaseVideoController *)self contentView];
  [contentView2 setBackgroundColor:v4];

  [(SCATOnboardingBaseVideoController *)self _setUpVideo];
  contentView3 = [(SCATOnboardingBaseVideoController *)self contentView];
  superview = [contentView3 superview];

  v20 = superview;
  v7Superview = [superview superview];
  contentView4 = [(SCATOnboardingBaseVideoController *)self contentView];
  topAnchor = [contentView4 topAnchor];
  headerView = [(SCATOnboardingBaseVideoController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v24 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v30[0] = v24;
  contentView5 = [(SCATOnboardingBaseVideoController *)self contentView];
  leadingAnchor = [contentView5 leadingAnchor];
  view = [(SCATOnboardingBaseVideoController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[1] = v8;
  contentView6 = [(SCATOnboardingBaseVideoController *)self contentView];
  trailingAnchor = [contentView6 trailingAnchor];
  view2 = [(SCATOnboardingBaseVideoController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[2] = v13;
  heightAnchor = [superview heightAnchor];
  heightAnchor2 = [v7Superview heightAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v30[3] = v16;
  v17 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_setUpVideo
{
  player = [(SCATOnboardingBaseVideoController *)self player];
  v4 = [AVPlayerLayer playerLayerWithPlayer:player];
  [(SCATOnboardingBaseVideoController *)self setPlayerLayer:v4];

  playerLayer = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [playerLayer setVideoGravity:AVLayerVideoGravityResizeAspect];

  playerLayer2 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [playerLayer2 setMasksToBounds:0];

  contentView = [(SCATOnboardingBaseVideoController *)self contentView];
  layer = [contentView layer];
  playerLayer3 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [layer addSublayer:playerLayer3];

  v10 = +[NSNotificationCenter defaultCenter];
  player2 = [(SCATOnboardingBaseVideoController *)self player];
  currentItem = [player2 currentItem];
  [v10 addObserver:self selector:"_didReachVideoEnd" name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];

  player3 = [(SCATOnboardingBaseVideoController *)self player];
  [player3 play];
}

- (void)_didReachVideoEnd
{
  player = [(SCATOnboardingBaseVideoController *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [player seekToTime:&v5];

  player2 = [(SCATOnboardingBaseVideoController *)self player];
  [player2 play];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCATOnboardingBaseVideoController;
  [(SCATOnboardingBaseVideoController *)&v4 dealloc];
}

@end