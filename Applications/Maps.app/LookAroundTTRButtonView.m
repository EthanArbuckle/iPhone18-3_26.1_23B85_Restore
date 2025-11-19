@interface LookAroundTTRButtonView
- (LookAroundTTRButtonView)init;
- (LookAroundTTRButtonViewDelegate)delegate;
- (id)contentView;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)buttonTapped:(id)a3;
@end

@implementation LookAroundTTRButtonView

- (LookAroundTTRButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundTTRButtonView *)self delegate];
  [v5 lookAroundTTRButtonView:self didTapTTRButton:v4];
}

- (void)_setupConstraints
{
  v3 = [(LookAroundTTRButtonView *)self blurView];
  v4 = [(LookAroundTTRButtonView *)self button];
  v35 = [v3 topAnchor];
  v34 = [(LookAroundTTRButtonView *)self topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v36[0] = v33;
  v32 = [v3 bottomAnchor];
  v30 = [(LookAroundTTRButtonView *)self bottomAnchor];
  v29 = [v32 constraintEqualToAnchor:v30];
  v36[1] = v29;
  v31 = v3;
  v28 = [v3 leadingAnchor];
  v27 = [(LookAroundTTRButtonView *)self leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v36[2] = v26;
  v25 = [v3 trailingAnchor];
  v24 = [(LookAroundTTRButtonView *)self trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v36[3] = v23;
  v20 = [v4 topAnchor];
  v21 = [(LookAroundTTRButtonView *)self contentView];
  v19 = [v21 topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v36[4] = v18;
  v16 = [v4 bottomAnchor];
  v17 = [(LookAroundTTRButtonView *)self contentView];
  v15 = [v17 bottomAnchor];
  v5 = [v16 constraintEqualToAnchor:v15];
  v36[5] = v5;
  v22 = v4;
  v6 = [v4 leadingAnchor];
  v7 = [(LookAroundTTRButtonView *)self contentView];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v36[6] = v9;
  v10 = [v4 trailingAnchor];
  v11 = [(LookAroundTTRButtonView *)self contentView];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v36[7] = v13;
  v14 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setupViews
{
  v12 = [UIImage imageNamed:@"LookAroundTTR"];
  v3 = [MapsTheme visualEffectViewAllowingBlur:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundTTRButtonView *)self addSubview:v3];
  v4 = +[UIColor clearColor];
  [(LookAroundTTRButtonView *)self setBackgroundColor:v4];

  [v12 size];
  v6 = v5 * 0.5;
  v7 = [(LookAroundTTRButtonView *)self layer];
  [v7 setCornerRadius:v6];

  v8 = [(LookAroundTTRButtonView *)self layer];
  [v8 setMasksToBounds:1];

  [(LookAroundTTRButtonView *)self setBlurView:v3];
  v9 = [UIButton buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addTarget:self action:"buttonTapped:" forControlEvents:64];
  v10 = [UIImage imageNamed:@"LookAroundTTR"];
  [v9 setImage:v10 forState:0];

  v11 = [(LookAroundTTRButtonView *)self contentView];
  [v11 addSubview:v9];

  [(LookAroundTTRButtonView *)self setButton:v9];
}

- (LookAroundTTRButtonView)init
{
  v5.receiver = self;
  v5.super_class = LookAroundTTRButtonView;
  v2 = [(LookAroundTTRButtonView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LookAroundTTRButtonView *)v2 setAccessibilityIdentifier:@"LookAroundTTRButtonView"];
    [(LookAroundTTRButtonView *)v3 _setupViews];
    [(LookAroundTTRButtonView *)v3 _setupConstraints];
  }

  return v3;
}

- (id)contentView
{
  v2 = [(LookAroundTTRButtonView *)self blurView];
  v3 = [v2 contentView];

  return v3;
}

@end