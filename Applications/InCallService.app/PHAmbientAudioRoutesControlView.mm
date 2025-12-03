@interface PHAmbientAudioRoutesControlView
- (PHAmbientAudioRoutesControlView)initWithFrame:(CGRect)frame;
- (PHAudioCallControlsViewDelegate)delegate;
- (id)menuForAudioControlsButton:(id)button;
- (void)buttonTapped:(id)tapped;
- (void)reload;
- (void)setDelegate:(id)delegate;
@end

@implementation PHAmbientAudioRoutesControlView

- (PHAmbientAudioRoutesControlView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = PHAmbientAudioRoutesControlView;
  v3 = [(PHAmbientAudioRoutesControlView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [PHAudioControlsButton alloc];
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v6 = v5;
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v8 = [(PHAudioControlsButton *)v4 initWithSize:v6, v7];
    button = v3->_button;
    v3->_button = v8;

    [(PHAudioControlsButton *)v3->_button setControlType:3];
    [(PHAudioControlsButton *)v3->_button setMenuDataSource:v3];
    [(PHAudioControlsButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHAmbientAudioRoutesControlView *)v3 addSubview:v3->_button];
    imageView = [(PHAudioControlsButton *)v3->_button imageView];
    [imageView setContentMode:1];

    v11 = v3->_button;
    +[PHUIConfiguration ambientAudioRoutesSymbolInset];
    v13 = v12;
    +[PHUIConfiguration ambientAudioRoutesSymbolInset];
    [(PHAudioControlsButton *)v11 setImageEdgeInsets:0.0, v13, 0.0, v14];
    topAnchor = [(PHAmbientAudioRoutesControlView *)v3 topAnchor];
    topAnchor2 = [(PHAudioControlsButton *)v3->_button topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v32;
    bottomAnchor = [(PHAmbientAudioRoutesControlView *)v3 bottomAnchor];
    bottomAnchor2 = [(PHAudioControlsButton *)v3->_button bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[1] = v29;
    leadingAnchor = [(PHAmbientAudioRoutesControlView *)v3 leadingAnchor];
    leadingAnchor2 = [(PHAudioControlsButton *)v3->_button leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[2] = v26;
    trailingAnchor = [(PHAmbientAudioRoutesControlView *)v3 trailingAnchor];
    trailingAnchor2 = [(PHAudioControlsButton *)v3->_button trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v36[3] = v17;
    widthAnchor = [(PHAmbientAudioRoutesControlView *)v3 widthAnchor];
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v19 = [widthAnchor constraintEqualToConstant:?];
    v36[4] = v19;
    heightAnchor = [(PHAmbientAudioRoutesControlView *)v3 heightAnchor];
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v21 = [heightAnchor constraintEqualToConstant:?];
    v36[5] = v21;
    v22 = [NSArray arrayWithObjects:v36 count:6];
    [NSLayoutConstraint activateConstraints:v22];

    [(PHAudioControlsButton *)v3->_button addTarget:v3 action:"buttonTapped:" forControlEvents:64];
    [(PHAmbientAudioRoutesControlView *)v3 reload];
    v23 = +[TUCallCenter sharedInstance];
    routeController = [v23 routeController];
    [routeController addDelegate:v3];
  }

  return v3;
}

- (void)reload
{
  objc_initWeak(&location, self);
  delegate = [(PHAmbientAudioRoutesControlView *)self delegate];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100143B04;
  v16 = &unk_10035A1A0;
  objc_copyWeak(&v17, &location);
  [delegate fetchAudioRoutesImageWithCompletion:&v13];

  v4 = [TUCallCenter sharedInstance:v13];
  routeController = [v4 routeController];
  areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

  button = [(PHAmbientAudioRoutesControlView *)self button];
  if (areAuxiliaryRoutesAvailable)
  {
    [button setControlType:3];
  }

  else
  {
    [button setControlType:2];
  }

  v8 = +[TUCallCenter sharedInstance];
  routeController2 = [v8 routeController];
  pickedRoute = [routeController2 pickedRoute];

  if ([pickedRoute isAuxiliary])
  {
    isSpeaker = 1;
  }

  else
  {
    isSpeaker = [pickedRoute isSpeaker];
  }

  button2 = [(PHAmbientAudioRoutesControlView *)self button];
  [button2 setSelected:isSpeaker];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHAmbientAudioRoutesControlView *)self delegate];
  [delegate controlTypeTapped:objc_msgSend(tappedCopy forView:{"controlType"), tappedCopy}];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(PHAmbientAudioRoutesControlView *)self reload];
}

- (id)menuForAudioControlsButton:(id)button
{
  delegate = [(PHAmbientAudioRoutesControlView *)self delegate];
  audioRouteMenu = [delegate audioRouteMenu];

  return audioRouteMenu;
}

- (PHAudioCallControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end