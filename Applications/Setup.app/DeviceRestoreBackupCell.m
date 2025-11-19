@interface DeviceRestoreBackupCell
- (DeviceRestoreBackupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DeviceRestoreBackupCell

- (DeviceRestoreBackupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v46 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v4 = v46;
  v46 = 0;
  v44.receiver = v4;
  v44.super_class = DeviceRestoreBackupCell;
  v46 = [(DeviceRestoreBackupCell *)&v44 initWithStyle:3 reuseIdentifier:location[0]];
  objc_storeStrong(&v46, v46);
  if (v46)
  {
    v5 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v6 = *(v46 + 1);
    *(v46 + 1) = v5;

    [*(v46 + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v46 + 1) setContentMode:1];
    v7 = [v46 contentView];
    [v7 addSubview:*(v46 + 1)];

    v37 = [*(v46 + 1) leadingAnchor];
    v39 = [v46 contentView];
    v36 = [v39 leadingAnchor];
    v34 = [v37 constraintEqualToAnchor:2.0 constant:?];
    v48[0] = v34;
    v33 = [v46 contentView];
    v8 = [v33 centerYAnchor];
    v9 = [*(v46 + 1) centerYAnchor];
    v10 = [v8 constraintLessThanOrEqualToAnchor:v9];
    v48[1] = v10;
    v11 = [*(v46 + 1) widthAnchor];
    v12 = [v11 constraintEqualToConstant:39.0];
    v48[2] = v12;
    v13 = [*(v46 + 1) heightAnchor];
    v14 = [v13 constraintEqualToConstant:39.0];
    v48[3] = v14;
    v15 = [NSArray arrayWithObjects:v48 count:4];
    [NSLayoutConstraint activateConstraints:v15];

    v43 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v43 setAxis:1];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = *(v46 + 2);
    *(v46 + 2) = v16;

    [*(v46 + 2) setNumberOfLines:0];
    [*(v46 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 addArrangedSubview:*(v46 + 2)];
    [v43 setCustomSpacing:*(v46 + 2) afterView:2.0];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v19 = *(v46 + 3);
    *(v46 + 3) = v18;

    [*(v46 + 3) setNumberOfLines:0];
    [*(v46 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 addArrangedSubview:*(v46 + 3)];
    v20 = [v46 contentView];
    [v20 addSubview:v43];

    v42 = [v46 contentView];
    v41 = [v42 heightAnchor];
    v40 = [v43 heightAnchor];
    v38 = [v41 constraintEqualToAnchor:2.0 * 9.0 constant:?];
    v47[0] = v38;
    v35 = [v46 contentView];
    v21 = [v35 trailingAnchor];
    v22 = [v43 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v47[1] = v23;
    v24 = [v43 leadingAnchor];
    v25 = [*(v46 + 1) trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];
    v47[2] = v26;
    v27 = [v43 centerYAnchor];
    v28 = [v46 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v47[3] = v29;
    v30 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v30];

    objc_storeStrong(&v43, 0);
  }

  v31 = v46;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v46, 0);
  return v31;
}

@end