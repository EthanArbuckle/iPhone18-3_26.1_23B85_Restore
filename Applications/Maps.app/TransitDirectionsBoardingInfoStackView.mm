@interface TransitDirectionsBoardingInfoStackView
- (TransitDirectionsBoardingInfoStackView)initWithFrame:(CGRect)frame;
- (void)_axisDidChange;
- (void)setAxis:(int64_t)axis;
@end

@implementation TransitDirectionsBoardingInfoStackView

- (void)_axisDidChange
{
  axis = [(TransitDirectionsBoardingInfoStackView *)self axis];
  if (axis)
  {
    v4 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__horizontalLayoutConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___TransitDirectionsBoardingInfoStackView__verticalLayoutConstraints;
  }

  if (axis)
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

- (void)setAxis:(int64_t)axis
{
  if (self->_axis != axis)
  {
    self->_axis = axis;
    [(TransitDirectionsBoardingInfoStackView *)self _axisDidChange];
  }
}

- (TransitDirectionsBoardingInfoStackView)initWithFrame:(CGRect)frame
{
  v56.receiver = self;
  v56.super_class = TransitDirectionsBoardingInfoStackView;
  v3 = [(TransitDirectionsBoardingInfoStackView *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    topView = [(TransitDirectionsBoardingInfoStackView *)v3 topView];
    bottomView = [(TransitDirectionsBoardingInfoStackView *)v4 bottomView];
    topAnchor = [topView topAnchor];
    topAnchor2 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[0] = v48;
    leadingAnchor = [topView leadingAnchor];
    leadingAnchor2 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[1] = v42;
    v55 = topView;
    bottomAnchor = [topView bottomAnchor];
    bottomAnchor2 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v36 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v58[2] = v36;
    topAnchor3 = [bottomView topAnchor];
    topAnchor4 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v58[3] = v30;
    leadingAnchor3 = [bottomView leadingAnchor];
    trailingAnchor = [topView trailingAnchor];
    v9 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
    v58[4] = v9;
    v54 = bottomView;
    trailingAnchor2 = [bottomView trailingAnchor];
    trailingAnchor3 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v12 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v58[5] = v12;
    bottomAnchor3 = [bottomView bottomAnchor];
    bottomAnchor4 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v15 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v58[6] = v15;
    v16 = [NSArray arrayWithObjects:v58 count:7];
    horizontalLayoutConstraints = v4->_horizontalLayoutConstraints;
    v4->_horizontalLayoutConstraints = v16;

    topAnchor5 = [v55 topAnchor];
    topAnchor6 = [(TransitDirectionsBoardingInfoStackView *)v4 topAnchor];
    v49 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v57[0] = v49;
    leadingAnchor4 = [v55 leadingAnchor];
    leadingAnchor5 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v43 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v57[1] = v43;
    trailingAnchor4 = [v55 trailingAnchor];
    trailingAnchor5 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v37 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    v57[2] = v37;
    topAnchor7 = [v54 topAnchor];
    bottomAnchor5 = [v55 bottomAnchor];
    v31 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5];
    v57[3] = v31;
    leadingAnchor6 = [v54 leadingAnchor];
    leadingAnchor7 = [(TransitDirectionsBoardingInfoStackView *)v4 leadingAnchor];
    v20 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v57[4] = v20;
    trailingAnchor6 = [v54 trailingAnchor];
    trailingAnchor7 = [(TransitDirectionsBoardingInfoStackView *)v4 trailingAnchor];
    v23 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v57[5] = v23;
    bottomAnchor6 = [v54 bottomAnchor];
    bottomAnchor7 = [(TransitDirectionsBoardingInfoStackView *)v4 bottomAnchor];
    v26 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v57[6] = v26;
    v27 = [NSArray arrayWithObjects:v57 count:7];
    verticalLayoutConstraints = v4->_verticalLayoutConstraints;
    v4->_verticalLayoutConstraints = v27;

    [(TransitDirectionsBoardingInfoStackView *)v4 _axisDidChange];
  }

  return v4;
}

@end