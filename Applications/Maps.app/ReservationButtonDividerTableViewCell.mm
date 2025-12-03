@interface ReservationButtonDividerTableViewCell
- (ReservationButtonDividerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ReservationButtonDividerTableViewCell

- (ReservationButtonDividerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = ReservationButtonDividerTableViewCell;
  v4 = [(ReservationButtonDividerTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIButton buttonWithType:1];
    button = v4->_button;
    v4->_button = v5;

    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_button];

    centerXAnchor = [(UIButton *)v4->_button centerXAnchor];
    contentView2 = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    centerYAnchor = [(UIButton *)v4->_button centerYAnchor];
    contentView3 = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v19[0] = v11;
    v19[1] = v15;
    v16 = [NSArray arrayWithObjects:v19 count:2];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v4;
}

@end