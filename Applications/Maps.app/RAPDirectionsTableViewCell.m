@interface RAPDirectionsTableViewCell
- (RAPDirectionsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7;
- (void)updateHeightForWidth:(double)a3;
@end

@implementation RAPDirectionsTableViewCell

- (void)updateHeightForWidth:(double)a3
{
  v5 = objc_opt_class();
  v6 = *(&self->super._alignSeparatorWithLeadingText + 1);
  v7 = *(&self->_route + 1);
  v8 = [(RAPDirectionsTableViewCell *)self traitCollection];
  [v5 heightForWidth:v6 route:v7 step:objc_msgSend(v8 idiom:{"userInterfaceIdiom"), a3}];
  v10 = v9;

  v11 = [(RAPDirectionsTableViewCell *)self contentView];
  v12 = [v11 heightAnchor];
  v13 = [v12 constraintEqualToConstant:v10];

  if (*(&self->_step + 1))
  {
    v19 = *(&self->_step + 1);
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    [NSLayoutConstraint deactivateConstraints:v14];

    v15 = *(&self->_step + 1);
  }

  else
  {
    v15 = 0;
  }

  *(&self->_step + 1) = v13;
  v16 = v13;

  v18 = *(&self->_step + 1);
  v17 = [NSArray arrayWithObjects:&v18 count:1];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)setRoute:(id)a3 step:(id)a4 stepIndex:(unint64_t)a5 alignToLeftEdgeIfNoManeuverSign:(BOOL)a6 size:(int64_t)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = *(&self->super._alignSeparatorWithLeadingText + 1);
  *(&self->super._alignSeparatorWithLeadingText + 1) = v12;
  v15 = v12;

  v16 = *(&self->_route + 1);
  *(&self->_route + 1) = v13;
  v17 = v13;

  v18.receiver = self;
  v18.super_class = RAPDirectionsTableViewCell;
  [(DirectionsStepTableViewCell *)&v18 setRoute:v15 step:v17 stepIndex:a5 alignToLeftEdgeIfNoManeuverSign:v8 size:a7];
}

- (RAPDirectionsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = RAPDirectionsTableViewCell;
  v4 = [(DirectionsStepTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RAPDirectionsTableViewCell *)v4 backgroundView];

    if (!v6)
    {
      v7 = [DirectionsTableViewCellBackgroundView alloc];
      [(RAPDirectionsTableViewCell *)v5 bounds];
      v8 = [(DirectionsTableViewCellBackgroundView *)v7 initWithFrame:?];
      [(RAPDirectionsTableViewCell *)v5 setBackgroundView:v8];
    }
  }

  return v5;
}

@end