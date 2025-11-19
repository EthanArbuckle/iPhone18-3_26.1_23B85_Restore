@interface ReservationButtonDividerTableViewCell
- (ReservationButtonDividerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ReservationButtonDividerTableViewCell

- (ReservationButtonDividerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = ReservationButtonDividerTableViewCell;
  v4 = [(ReservationButtonDividerTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIButton buttonWithType:1];
    button = v4->_button;
    v4->_button = v5;

    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_button];

    v8 = [(UIButton *)v4->_button centerXAnchor];
    v9 = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    v10 = [v9 centerXAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];

    v12 = [(UIButton *)v4->_button centerYAnchor];
    v13 = [(ReservationButtonDividerTableViewCell *)v4 contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];

    v19[0] = v11;
    v19[1] = v15;
    v16 = [NSArray arrayWithObjects:v19 count:2];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v4;
}

@end