@interface BuddyAppleIDTableCell
- (BuddyAppleIDTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 columnCount:(unint64_t)a5;
- (id)addService:(id)a3 description:(id)a4;
@end

@implementation BuddyAppleIDTableCell

- (BuddyAppleIDTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 columnCount:(unint64_t)a5
{
  v41 = self;
  v40 = a2;
  v39 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v37 = a5;
  v6 = v41;
  v41 = 0;
  v36.receiver = v6;
  v36.super_class = BuddyAppleIDTableCell;
  v41 = [(BuddyAppleIDTableCell *)&v36 initWithStyle:v39 reuseIdentifier:location];
  objc_storeStrong(&v41, v41);
  if (v41)
  {
    [v41 setSelectionStyle:0];
    [v41 setColumnCount:v37];
    v7 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v41 setStackView:v7];

    v8 = [v41 stackView];
    [v8 setAxis:1];

    v9 = [v41 stackView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [v41 stackView];
    [v10 setSpacing:20.0];

    v11 = [v41 contentView];
    v12 = [v41 stackView];
    [v11 addSubview:v12];

    v35 = [v41 contentView];
    v33 = [v35 topAnchor];
    v34 = [v41 stackView];
    v32 = [v34 topAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v42[0] = v31;
    v30 = [v41 contentView];
    v28 = [v30 trailingAnchor];
    v29 = [v41 stackView];
    v27 = [v29 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:?];
    v42[1] = v26;
    v25 = [v41 contentView];
    v13 = [v25 bottomAnchor];
    v14 = [v41 stackView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v42[2] = v16;
    v17 = [v41 contentView];
    v18 = [v17 leadingAnchor];
    v19 = [v41 stackView];
    v20 = [v19 leadingAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v42[3] = v21;
    v22 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  v23 = v41;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v41, 0);
  return v23;
}

- (id)addService:(id)a3 description:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v5 = [BuddyAppleIDServiceView alloc];
  v19 = [(BuddyAppleIDServiceView *)v5 initWithImage:location[0] description:v20];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(BuddyAppleIDTableCell *)v22 columnCount]== 1)
  {
    v6 = [(BuddyAppleIDTableCell *)v22 stackView];
    [(UIStackView *)v6 addArrangedSubview:v19];
  }

  else
  {
    v7 = [(BuddyAppleIDTableCell *)v22 rowStackView];

    if (v7)
    {
      v16 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v16 addArrangedSubview:v19];

      [(BuddyAppleIDTableCell *)v22 setRowStackView:0];
    }

    else
    {
      v8 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(BuddyAppleIDTableCell *)v22 setRowStackView:v8];

      v9 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v9 setAxis:0];

      v10 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v11 setDistribution:1];

      v12 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v12 setSpacing:23.0];

      v13 = [(BuddyAppleIDTableCell *)v22 stackView];
      v14 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v13 addArrangedSubview:v14];

      v15 = [(BuddyAppleIDTableCell *)v22 rowStackView];
      [(UIStackView *)v15 addArrangedSubview:v19];
    }
  }

  v17 = v19;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v17;
}

@end