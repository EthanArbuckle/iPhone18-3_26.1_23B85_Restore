@interface ReservationLabelReusableView
- (ReservationLabelReusableView)initWithFrame:(CGRect)a3;
- (void)_updateConstraintsForMargins;
- (void)setMarginsRequired:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation ReservationLabelReusableView

- (void)_updateConstraintsForMargins
{
  if ([(ReservationLabelReusableView *)self isMarginsRequired])
  {
    v3 = [(ReservationLabelReusableView *)self leadingConstraintWithMargin];
    v13 = v3;
    v4 = [NSArray arrayWithObjects:&v13 count:1];
    [NSLayoutConstraint activateConstraints:v4];

    v5 = [(ReservationLabelReusableView *)self leadingConstraintWithoutMargin];
    v12 = v5;
    v6 = &v12;
  }

  else
  {
    v7 = [(ReservationLabelReusableView *)self leadingConstraintWithoutMargin];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    [NSLayoutConstraint activateConstraints:v8];

    v5 = [(ReservationLabelReusableView *)self leadingConstraintWithMargin];
    v10 = v5;
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

- (void)setMarginsRequired:(BOOL)a3
{
  if (self->_marginsRequired != a3)
  {
    self->_marginsRequired = a3;
    [(ReservationLabelReusableView *)self _updateConstraintsForMargins];

    [(ReservationLabelReusableView *)self setNeedsLayout];
  }
}

- (ReservationLabelReusableView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = ReservationLabelReusableView;
  v3 = [(ReservationLabelReusableView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UILabel *)v5 leadingAnchor];
    v9 = [(ReservationLabelReusableView *)v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    leadingConstraintWithoutMargin = v4->_leadingConstraintWithoutMargin;
    v4->_leadingConstraintWithoutMargin = v10;

    v12 = [(UILabel *)v5 leadingAnchor];
    v13 = [(ReservationLabelReusableView *)v4 layoutMarginsGuide];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    leadingConstraintWithMargin = v4->_leadingConstraintWithMargin;
    v4->_leadingConstraintWithMargin = v15;

    v27[0] = v4->_leadingConstraintWithoutMargin;
    v17 = [(UILabel *)v5 trailingAnchor];
    v18 = [(ReservationLabelReusableView *)v4 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v27[1] = v19;
    v20 = [(UILabel *)v5 topAnchor];
    v21 = [(ReservationLabelReusableView *)v4 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];
    v27[2] = v22;
    v23 = [NSArray arrayWithObjects:v27 count:3];
    [(ReservationLabelReusableView *)v4 addConstraints:v23];

    label = v4->_label;
    v4->_label = v5;
  }

  return v4;
}

@end