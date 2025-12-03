@interface ReservationLabelReusableView
- (ReservationLabelReusableView)initWithFrame:(CGRect)frame;
- (void)_updateConstraintsForMargins;
- (void)setMarginsRequired:(BOOL)required;
- (void)updateConstraints;
@end

@implementation ReservationLabelReusableView

- (void)_updateConstraintsForMargins
{
  if ([(ReservationLabelReusableView *)self isMarginsRequired])
  {
    leadingConstraintWithMargin = [(ReservationLabelReusableView *)self leadingConstraintWithMargin];
    v13 = leadingConstraintWithMargin;
    v4 = [NSArray arrayWithObjects:&v13 count:1];
    [NSLayoutConstraint activateConstraints:v4];

    leadingConstraintWithoutMargin = [(ReservationLabelReusableView *)self leadingConstraintWithoutMargin];
    v12 = leadingConstraintWithoutMargin;
    v6 = &v12;
  }

  else
  {
    leadingConstraintWithoutMargin2 = [(ReservationLabelReusableView *)self leadingConstraintWithoutMargin];
    v11 = leadingConstraintWithoutMargin2;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [NSLayoutConstraint activateConstraints:v8];

    leadingConstraintWithoutMargin = [(ReservationLabelReusableView *)self leadingConstraintWithMargin];
    v10 = leadingConstraintWithoutMargin;
    v6 = &v10;
  }

  v9 = [NSArray arrayWithObjects:v6 count:1];
  [NSLayoutConstraint deactivateConstraints:v9];
}

- (void)updateConstraints
{
  [(ReservationLabelReusableView *)self _updateConstraintsForMargins];
  v3.receiver = self;
  v3.super_class = ReservationLabelReusableView;
  [(ReservationLabelReusableView *)&v3 updateConstraints];
}

- (void)setMarginsRequired:(BOOL)required
{
  if (self->_marginsRequired != required)
  {
    self->_marginsRequired = required;
    [(ReservationLabelReusableView *)self _updateConstraintsForMargins];

    [(ReservationLabelReusableView *)self setNeedsLayout];
  }
}

- (ReservationLabelReusableView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = ReservationLabelReusableView;
  v3 = [(ReservationLabelReusableView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ReservationLabelReusableView *)v3 setUserInteractionEnabled:0];
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UILabel *)v5 setTextAlignment:4];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v5 setFont:v6];

    v7 = +[UIColor labelColor];
    [(UILabel *)v5 setTextColor:v7];

    [(ReservationLabelReusableView *)v4 addSubview:v5];
    [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [(UILabel *)v5 leadingAnchor];
    leadingAnchor2 = [(ReservationLabelReusableView *)v4 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    leadingConstraintWithoutMargin = v4->_leadingConstraintWithoutMargin;
    v4->_leadingConstraintWithoutMargin = v10;

    leadingAnchor3 = [(UILabel *)v5 leadingAnchor];
    layoutMarginsGuide = [(ReservationLabelReusableView *)v4 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    leadingConstraintWithMargin = v4->_leadingConstraintWithMargin;
    v4->_leadingConstraintWithMargin = v15;

    v27[0] = v4->_leadingConstraintWithoutMargin;
    trailingAnchor = [(UILabel *)v5 trailingAnchor];
    trailingAnchor2 = [(ReservationLabelReusableView *)v4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v19;
    topAnchor = [(UILabel *)v5 topAnchor];
    topAnchor2 = [(ReservationLabelReusableView *)v4 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v27[2] = v22;
    v23 = [NSArray arrayWithObjects:v27 count:3];
    [(ReservationLabelReusableView *)v4 addConstraints:v23];

    label = v4->_label;
    v4->_label = v5;
  }

  return v4;
}

@end