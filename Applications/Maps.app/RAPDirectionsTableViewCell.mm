@interface RAPDirectionsTableViewCell
- (RAPDirectionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size;
- (void)updateHeightForWidth:(double)width;
@end

@implementation RAPDirectionsTableViewCell

- (void)updateHeightForWidth:(double)width
{
  v5 = objc_opt_class();
  v6 = *(&self->super._alignSeparatorWithLeadingText + 1);
  v7 = *(&self->_route + 1);
  traitCollection = [(RAPDirectionsTableViewCell *)self traitCollection];
  [v5 heightForWidth:v6 route:v7 step:objc_msgSend(traitCollection idiom:{"userInterfaceIdiom"), width}];
  v10 = v9;

  contentView = [(RAPDirectionsTableViewCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:v10];

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

- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size
{
  signCopy = sign;
  routeCopy = route;
  stepCopy = step;
  v14 = *(&self->super._alignSeparatorWithLeadingText + 1);
  *(&self->super._alignSeparatorWithLeadingText + 1) = routeCopy;
  v15 = routeCopy;

  v16 = *(&self->_route + 1);
  *(&self->_route + 1) = stepCopy;
  v17 = stepCopy;

  v18.receiver = self;
  v18.super_class = RAPDirectionsTableViewCell;
  [(DirectionsStepTableViewCell *)&v18 setRoute:v15 step:v17 stepIndex:index alignToLeftEdgeIfNoManeuverSign:signCopy size:size];
}

- (RAPDirectionsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = RAPDirectionsTableViewCell;
  v4 = [(DirectionsStepTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    backgroundView = [(RAPDirectionsTableViewCell *)v4 backgroundView];

    if (!backgroundView)
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