@interface ReservationButtonView
- (ReservationButtonView)initWithFrame:(CGRect)a3;
- (void)setupConstraints;
@end

@implementation ReservationButtonView

- (void)setupConstraints
{
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(UIButton *)self->_button leadingAnchor];
  v18 = [(ReservationButtonView *)self leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:15.0];
  v20[0] = v17;
  v16 = [(UIButton *)self->_button trailingAnchor];
  v15 = [(ReservationButtonView *)self trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:-15.0];
  v20[1] = v14;
  v13 = [(UIButton *)self->_button topAnchor];
  v3 = [(ReservationButtonView *)self topAnchor];
  v4 = [v13 constraintEqualToAnchor:v3 constant:15.0];
  v20[2] = v4;
  v5 = [(UIButton *)self->_button bottomAnchor];
  v6 = [(ReservationButtonView *)self safeAreaLayoutGuide];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:-15.0];
  v20[3] = v8;
  v9 = [(ReservationButtonView *)self button];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:44.0];
  v20[4] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:5];
  [NSLayoutConstraint activateConstraints:v12];
}

- (ReservationButtonView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = ReservationButtonView;
  v3 = [(ReservationButtonView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ReservationButtonView *)v3 theme];
    v6 = [v5 hairlineColor];
    [(ReservationButtonView *)v4 setHairlineColor:v6];

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

    v12 = [(ReservationButtonView *)v4 button];
    [(ReservationButtonView *)v4 addSubview:v12];

    [(ReservationButtonView *)v4 setupConstraints];
  }

  return v4;
}

@end