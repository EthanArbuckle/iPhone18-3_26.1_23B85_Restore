@interface SCATOnboardingBaseVideoController
- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 cancelButtonTitle:(id)a6 videoURL:(id)a7 completion:(id)a8;
- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 videoURL:(id)a6 completion:(id)a7;
- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 videoURL:(id)a5 completion:(id)a6;
- (void)_addCancelButton:(id)a3;
- (void)_addNextButton:(id)a3;
- (void)_didReachVideoEnd;
- (void)_setUpVideo;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingBaseVideoController

- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 videoURL:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SCATOnboardingBaseVideoController;
  v12 = [(SCATOnboardingBaseVideoController *)&v17 initWithTitle:a3 detailText:a4 icon:0 contentLayout:3];
  v13 = v12;
  if (v12)
  {
    [(SCATOnboardingBaseVideoController *)v12 setCompletionHandler:v11];
    v14 = [AVPlayer playerWithURL:v10];
    [(SCATOnboardingBaseVideoController *)v13 setPlayer:v14];

    v15 = AXParameterizedLocalizedString();
    [(SCATOnboardingBaseVideoController *)v13 _addNextButton:v15];
  }

  return v13;
}

- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 videoURL:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = SCATOnboardingBaseVideoController;
  v15 = [(SCATOnboardingBaseVideoController *)&v19 initWithTitle:a3 detailText:a4 icon:0 contentLayout:3];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingBaseVideoController *)v15 setCompletionHandler:v14];
    v17 = [AVPlayer playerWithURL:v13];
    [(SCATOnboardingBaseVideoController *)v16 setPlayer:v17];

    [(SCATOnboardingBaseVideoController *)v16 _addNextButton:v12];
  }

  return v16;
}

- (SCATOnboardingBaseVideoController)initWithTitle:(id)a3 detailText:(id)a4 nextButtonTitle:(id)a5 cancelButtonTitle:(id)a6 videoURL:(id)a7 completion:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = SCATOnboardingBaseVideoController;
  v18 = [(SCATOnboardingBaseVideoController *)&v22 initWithTitle:a3 detailText:a4 icon:0 contentLayout:3];
  v19 = v18;
  if (v18)
  {
    [(SCATOnboardingBaseVideoController *)v18 setCompletionHandler:v17];
    v20 = [AVPlayer playerWithURL:v16];
    [(SCATOnboardingBaseVideoController *)v19 setPlayer:v20];

    [(SCATOnboardingBaseVideoController *)v19 _addNextButton:v14];
    [(SCATOnboardingBaseVideoController *)v19 _addCancelButton:v15];
  }

  return v19;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SCATOnboardingBaseVideoController;
  [(SCATOnboardingBaseVideoController *)&v13 viewDidLayoutSubviews];
  v3 = [(SCATOnboardingBaseVideoController *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [v12 setFrame:{v5, v7 + 20.0, v9, v11}];
}

- (void)_addNextButton:(id)a3
{
  v4 = a3;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingBaseVideoController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)_addCancelButton:(id)a3
{
  v4 = a3;
  v6 = +[OBLinkTrayButton linkButton];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_didTapCancelButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingBaseVideoController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = SCATOnboardingBaseVideoController;
  [(SCATOnboardingBaseVideoController *)&v29 viewDidLoad];
  v3 = [(SCATOnboardingBaseVideoController *)self contentView];
  [v3 setClipsToBounds:1];

  v4 = +[UIColor clearColor];
  v5 = [(SCATOnboardingBaseVideoController *)self contentView];
  [v5 setBackgroundColor:v4];

  [(SCATOnboardingBaseVideoController *)self _setUpVideo];
  v6 = [(SCATOnboardingBaseVideoController *)self contentView];
  v7 = [v6 superview];

  v20 = v7;
  v18 = [v7 superview];
  v28 = [(SCATOnboardingBaseVideoController *)self contentView];
  v26 = [v28 topAnchor];
  v27 = [(SCATOnboardingBaseVideoController *)self headerView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(SCATOnboardingBaseVideoController *)self contentView];
  v21 = [v23 leadingAnchor];
  v22 = [(SCATOnboardingBaseVideoController *)self view];
  v19 = [v22 leadingAnchor];
  v8 = [v21 constraintEqualToAnchor:v19];
  v30[1] = v8;
  v9 = [(SCATOnboardingBaseVideoController *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [(SCATOnboardingBaseVideoController *)self view];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v30[2] = v13;
  v14 = [v7 heightAnchor];
  v15 = [v18 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v30[3] = v16;
  v17 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_setUpVideo
{
  v3 = [(SCATOnboardingBaseVideoController *)self player];
  v4 = [AVPlayerLayer playerLayerWithPlayer:v3];
  [(SCATOnboardingBaseVideoController *)self setPlayerLayer:v4];

  v5 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [v5 setVideoGravity:AVLayerVideoGravityResizeAspect];

  v6 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [v6 setMasksToBounds:0];

  v7 = [(SCATOnboardingBaseVideoController *)self contentView];
  v8 = [v7 layer];
  v9 = [(SCATOnboardingBaseVideoController *)self playerLayer];
  [v8 addSublayer:v9];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = [(SCATOnboardingBaseVideoController *)self player];
  v12 = [v11 currentItem];
  [v10 addObserver:self selector:"_didReachVideoEnd" name:AVPlayerItemDidPlayToEndTimeNotification object:v12];

  v13 = [(SCATOnboardingBaseVideoController *)self player];
  [v13 play];
}

- (void)_didReachVideoEnd
{
  v3 = [(SCATOnboardingBaseVideoController *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v3 seekToTime:&v5];

  v4 = [(SCATOnboardingBaseVideoController *)self player];
  [v4 play];
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