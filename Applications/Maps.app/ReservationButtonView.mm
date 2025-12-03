@interface ReservationButtonView
- (ReservationButtonView)initWithFrame:(CGRect)frame;
- (void)setupConstraints;
@end

@implementation ReservationButtonView

- (void)setupConstraints
{
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UIButton *)self->_button leadingAnchor];
  leadingAnchor2 = [(ReservationButtonView *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v20[0] = v17;
  trailingAnchor = [(UIButton *)self->_button trailingAnchor];
  trailingAnchor2 = [(ReservationButtonView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v20[1] = v14;
  topAnchor = [(UIButton *)self->_button topAnchor];
  topAnchor2 = [(ReservationButtonView *)self topAnchor];
  v4 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v20[2] = v4;
  bottomAnchor = [(UIButton *)self->_button bottomAnchor];
  safeAreaLayoutGuide = [(ReservationButtonView *)self safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
  v20[3] = v8;
  button = [(ReservationButtonView *)self button];
  heightAnchor = [button heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:44.0];
  v20[4] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:5];
  [NSLayoutConstraint activateConstraints:v12];
}

- (ReservationButtonView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = ReservationButtonView;
  v3 = [(ReservationButtonView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    theme = [(ReservationButtonView *)v3 theme];
    hairlineColor = [theme hairlineColor];
    [(ReservationButtonView *)v4 setHairlineColor:hairlineColor];

    [(ReservationButtonView *)v4 setBottomHairlineHidden:1];
    v7 = +[UIButtonConfiguration _mapsui_filledButtonConfiguration];
    if (v7)
    {
      v8 = [UIButton buttonWithType:1];
      button = v4->_button;
      v4->_button = v8;

      [(UIButton *)v4->_button setConfiguration:v7];
    }

    else
    {
      v10 = +[OverridenBackgroundColorButton newChromeBlueButton];
      v11 = v4->_button;
      v4->_button = v10;
    }

    button = [(ReservationButtonView *)v4 button];
    [(ReservationButtonView *)v4 addSubview:button];

    [(ReservationButtonView *)v4 setupConstraints];
  }

  return v4;
}

@end