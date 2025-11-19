@interface PHAmbientAudioRoutesControlView
- (PHAmbientAudioRoutesControlView)initWithFrame:(CGRect)a3;
- (PHAudioCallControlsViewDelegate)delegate;
- (id)menuForAudioControlsButton:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)reload;
- (void)setDelegate:(id)a3;
@end

@implementation PHAmbientAudioRoutesControlView

- (PHAmbientAudioRoutesControlView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = PHAmbientAudioRoutesControlView;
  v3 = [(PHAmbientAudioRoutesControlView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v10 = [(PHAudioControlsButton *)v3->_button imageView];
    [v10 setContentMode:1];

    v11 = v3->_button;
    +[PHUIConfiguration ambientAudioRoutesSymbolInset];
    v13 = v12;
    +[PHUIConfiguration ambientAudioRoutesSymbolInset];
    [(PHAudioControlsButton *)v11 setImageEdgeInsets:0.0, v13, 0.0, v14];
    v34 = [(PHAmbientAudioRoutesControlView *)v3 topAnchor];
    v33 = [(PHAudioControlsButton *)v3->_button topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v36[0] = v32;
    v31 = [(PHAmbientAudioRoutesControlView *)v3 bottomAnchor];
    v30 = [(PHAudioControlsButton *)v3->_button bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v36[1] = v29;
    v28 = [(PHAmbientAudioRoutesControlView *)v3 leadingAnchor];
    v27 = [(PHAudioControlsButton *)v3->_button leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v36[2] = v26;
    v15 = [(PHAmbientAudioRoutesControlView *)v3 trailingAnchor];
    v16 = [(PHAudioControlsButton *)v3->_button trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v36[3] = v17;
    v18 = [(PHAmbientAudioRoutesControlView *)v3 widthAnchor];
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v19 = [v18 constraintEqualToConstant:?];
    v36[4] = v19;
    v20 = [(PHAmbientAudioRoutesControlView *)v3 heightAnchor];
    +[PHUIConfiguration ambientAudioRoutesButtonSize];
    v21 = [v20 constraintEqualToConstant:?];
    v36[5] = v21;
    v22 = [NSArray arrayWithObjects:v36 count:6];
    [NSLayoutConstraint activateConstraints:v22];

    [(PHAudioControlsButton *)v3->_button addTarget:v3 action:"buttonTapped:" forControlEvents:64];
    [(PHAmbientAudioRoutesControlView *)v3 reload];
    v23 = +[TUCallCenter sharedInstance];
    v24 = [v23 routeController];
    [v24 addDelegate:v3];
  }

  return v3;
}

- (void)reload
{
  objc_initWeak(&location, self);
  v3 = [(PHAmbientAudioRoutesControlView *)self delegate];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100143B04;
  v16 = &unk_10035A1A0;
  objc_copyWeak(&v17, &location);
  [v3 fetchAudioRoutesImageWithCompletion:&v13];

  v4 = [TUCallCenter sharedInstance:v13];
  v5 = [v4 routeController];
  v6 = [v5 areAuxiliaryRoutesAvailable];

  v7 = [(PHAmbientAudioRoutesControlView *)self button];
  if (v6)
  {
    [v7 setControlType:3];
  }

  else
  {
    [v7 setControlType:2];
  }

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 routeController];
  v10 = [v9 pickedRoute];

  if ([v10 isAuxiliary])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v10 isSpeaker];
  }

  v12 = [(PHAmbientAudioRoutesControlView *)self button];
  [v12 setSelected:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [(PHAmbientAudioRoutesControlView *)self delegate];
  [v5 controlTypeTapped:objc_msgSend(v4 forView:{"controlType"), v4}];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(PHAmbientAudioRoutesControlView *)self reload];
}

- (id)menuForAudioControlsButton:(id)a3
{
  v3 = [(PHAmbientAudioRoutesControlView *)self delegate];
  v4 = [v3 audioRouteMenu];

  return v4;
}

- (PHAudioCallControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end