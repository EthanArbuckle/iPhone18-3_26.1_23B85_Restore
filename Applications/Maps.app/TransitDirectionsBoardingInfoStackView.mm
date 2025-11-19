@interface TransitDirectionsBoardingInfoStackView
- (TransitDirectionsBoardingInfoStackView)initWithFrame:(CGRect)a3;
- (void)_axisDidChange;
- (void)setAxis:(int64_t)a3;
@end

@implementation TransitDirectionsBoardingInfoStackView

- (void)_axisDidChange
{
  v3 = [(TransitDirectionsBoardingInfoStackView *)self axis];
  if (v3)
  {
    v4 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__horizontalLayoutConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__verticalLayoutConstraints;
  }

  if (v3)
  {
    v5 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__verticalLayoutConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__horizontalLayoutConstraints;
  }

  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.isa + *v4)];
  v6 = *(&self->super.super.super.isa + *v5);

  [NSLayoutConstraint activateConstraints:v6];
}

- (void)setAxis:(int64_t)a3
{
  if (self->_axis != a3)
  {
    self->_axis = a3;
    [(TransitDirectionsBoardingInfoStackView *)self _axisDidChange];
  }
}

- (TransitDirectionsBoardingInfoStackView)initWithFrame:(CGRect)a3
{
  v56.receiver = self;
  v56.super_class = TransitDirectionsBoardingInfoStackView;
  v3 = [(TransitDirectionsBoardingInfoStackView *)&v56 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(TransitDirectionsBoardingInfoStackView *)v3 topView];
    v6 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomView];
    v52 = [v5 topAnchor];
    v50 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v48 = [v52 constraintEqualToAnchor:v50];
    v58[0] = v48;
    v46 = [v5 leadingAnchor];
    v44 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v42 = [v46 constraintEqualToAnchor:v44];
    v58[1] = v42;
    v55 = v5;
    v40 = [v5 bottomAnchor];
    v38 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v36 = [v40 constraintLessThanOrEqualToAnchor:v38];
    v58[2] = v36;
    v34 = [v6 topAnchor];
    v32 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v30 = [v34 constraintEqualToAnchor:v32];
    v58[3] = v30;
    v7 = [v6 leadingAnchor];
    v8 = [v5 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:6.0];
    v58[4] = v9;
    v54 = v6;
    v10 = [v6 trailingAnchor];
    v11 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v58[5] = v12;
    v13 = [v6 bottomAnchor];
    v14 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v58[6] = v15;
    v16 = [NSArray arrayWithObjects:v58 count:7];
    horizontalLayoutConstraints = v4->_horizontalLayoutConstraints;
    v4->_horizontalLayoutConstraints = v16;

    v53 = [v55 topAnchor];
    v51 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v49 = [v53 constraintEqualToAnchor:v51];
    v57[0] = v49;
    v47 = [v55 leadingAnchor];
    v45 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v43 = [v47 constraintEqualToAnchor:v45];
    v57[1] = v43;
    v41 = [v55 trailingAnchor];
    v39 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v37 = [v41 constraintLessThanOrEqualToAnchor:v39];
    v57[2] = v37;
    v35 = [v54 topAnchor];
    v33 = [v55 bottomAnchor];
    v31 = [v35 constraintEqualToAnchor:v33];
    v57[3] = v31;
    v18 = [v54 leadingAnchor];
    v19 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v57[4] = v20;
    v21 = [v54 trailingAnchor];
    v22 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v57[5] = v23;
    v24 = [v54 bottomAnchor];
    v25 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v57[6] = v26;
    v27 = [NSArray arrayWithObjects:v57 count:7];
    verticalLayoutConstraints = v4->_verticalLayoutConstraints;
    v4->_verticalLayoutConstraints = v27;

    [(TransitDirectionsBoardingInfoStackView *)v4 _axisDidChange];
  }

  return v4;
}

@end