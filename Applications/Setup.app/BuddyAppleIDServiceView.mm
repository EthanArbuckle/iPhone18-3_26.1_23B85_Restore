@interface BuddyAppleIDServiceView
- (BuddyAppleIDServiceView)initWithImage:(id)a3 description:(id)a4;
@end

@implementation BuddyAppleIDServiceView

- (BuddyAppleIDServiceView)initWithImage:(id)a3 description:(id)a4
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, a4);
  v5 = v65;
  v65 = 0;
  v62.receiver = v5;
  v62.super_class = BuddyAppleIDServiceView;
  v6 = [(BuddyAppleIDServiceView *)&v62 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v65 = v6;
  objc_storeStrong(&v65, v6);
  if (v6)
  {
    v7 = [UIImageView alloc];
    v8 = [v7 initWithImage:location[0]];
    [v65 setImageView:v8];

    v9 = [v65 imageView];
    [v9 setAccessibilityIgnoresInvertColors:1];

    v10 = [v65 imageView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v65 setLabel:v11];

    v12 = [v65 label];
    [v12 setNumberOfLines:0];

    v13 = v63;
    v14 = [v65 label];
    [v14 setText:v13];

    v15 = [v65 label];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor lightGrayColor];
    v17 = [v65 label];
    [v17 setTextColor:v16];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v19 = [v65 label];
    [v19 setFont:v18];

    v20 = v65;
    v21 = [v65 imageView];
    [v20 addSubview:v21];

    v22 = v65;
    v23 = [v65 label];
    [v22 addSubview:v23];

    v60 = [v65 topAnchor];
    v61 = [v65 imageView];
    v59 = [v61 topAnchor];
    v58 = [v60 constraintEqualToAnchor:0.0 constant:?];
    v66[0] = v58;
    v56 = [v65 leadingAnchor];
    v57 = [v65 imageView];
    v55 = [v57 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:0.0 constant:?];
    v66[1] = v54;
    v53 = [v65 imageView];
    v52 = [v53 heightAnchor];
    v51 = [v52 constraintEqualToConstant:40.0];
    v66[2] = v51;
    v50 = [v65 imageView];
    v49 = [v50 widthAnchor];
    v48 = [v49 constraintEqualToConstant:40.0];
    v66[3] = v48;
    v47 = [v65 imageView];
    v46 = [v47 bottomAnchor];
    v45 = [v65 bottomAnchor];
    v44 = [v46 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v66[4] = v44;
    v42 = [v65 topAnchor];
    v43 = [v65 label];
    v41 = [v43 topAnchor];
    UIRoundToViewScale();
    v40 = [v42 constraintEqualToAnchor:v41 constant:?];
    v66[5] = v40;
    v39 = [v65 imageView];
    v37 = [v39 trailingAnchor];
    v38 = [v65 label];
    v36 = [v38 leadingAnchor];
    v24 = [v37 constraintEqualToAnchor:-12.0 constant:?];
    v66[6] = v24;
    v25 = [v65 label];
    v26 = [v25 trailingAnchor];
    v27 = [v65 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];
    v66[7] = v28;
    v29 = [v65 label];
    v30 = [v29 bottomAnchor];
    v31 = [v65 bottomAnchor];
    v32 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:0.0];
    v66[8] = v32;
    v33 = [NSArray arrayWithObjects:v66 count:9];
    [NSLayoutConstraint activateConstraints:v33];
  }

  v34 = v65;
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v65, 0);
  return v34;
}

@end