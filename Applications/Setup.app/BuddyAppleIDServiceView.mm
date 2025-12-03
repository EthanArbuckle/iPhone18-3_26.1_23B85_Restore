@interface BuddyAppleIDServiceView
- (BuddyAppleIDServiceView)initWithImage:(id)image description:(id)description;
@end

@implementation BuddyAppleIDServiceView

- (BuddyAppleIDServiceView)initWithImage:(id)image description:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v63 = 0;
  objc_storeStrong(&v63, description);
  v5 = selfCopy;
  selfCopy = 0;
  v62.receiver = v5;
  v62.super_class = BuddyAppleIDServiceView;
  v6 = [(BuddyAppleIDServiceView *)&v62 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    v7 = [UIImageView alloc];
    v8 = [v7 initWithImage:location[0]];
    [selfCopy setImageView:v8];

    imageView = [selfCopy imageView];
    [imageView setAccessibilityIgnoresInvertColors:1];

    imageView2 = [selfCopy imageView];
    [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [selfCopy setLabel:v11];

    label = [selfCopy label];
    [label setNumberOfLines:0];

    v13 = v63;
    label2 = [selfCopy label];
    [label2 setText:v13];

    label3 = [selfCopy label];
    [label3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor lightGrayColor];
    label4 = [selfCopy label];
    [label4 setTextColor:v16];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    label5 = [selfCopy label];
    [label5 setFont:v18];

    v20 = selfCopy;
    imageView3 = [selfCopy imageView];
    [v20 addSubview:imageView3];

    v22 = selfCopy;
    label6 = [selfCopy label];
    [v22 addSubview:label6];

    topAnchor = [selfCopy topAnchor];
    imageView4 = [selfCopy imageView];
    topAnchor2 = [imageView4 topAnchor];
    v58 = [topAnchor constraintEqualToAnchor:0.0 constant:?];
    v66[0] = v58;
    leadingAnchor = [selfCopy leadingAnchor];
    imageView5 = [selfCopy imageView];
    leadingAnchor2 = [imageView5 leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:0.0 constant:?];
    v66[1] = v54;
    imageView6 = [selfCopy imageView];
    heightAnchor = [imageView6 heightAnchor];
    v51 = [heightAnchor constraintEqualToConstant:40.0];
    v66[2] = v51;
    imageView7 = [selfCopy imageView];
    widthAnchor = [imageView7 widthAnchor];
    v48 = [widthAnchor constraintEqualToConstant:40.0];
    v66[3] = v48;
    imageView8 = [selfCopy imageView];
    bottomAnchor = [imageView8 bottomAnchor];
    bottomAnchor2 = [selfCopy bottomAnchor];
    v44 = [bottomAnchor constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v66[4] = v44;
    topAnchor3 = [selfCopy topAnchor];
    label7 = [selfCopy label];
    topAnchor4 = [label7 topAnchor];
    UIRoundToViewScale();
    v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
    v66[5] = v40;
    imageView9 = [selfCopy imageView];
    trailingAnchor = [imageView9 trailingAnchor];
    label8 = [selfCopy label];
    leadingAnchor3 = [label8 leadingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:-12.0 constant:?];
    v66[6] = v24;
    label9 = [selfCopy label];
    trailingAnchor2 = [label9 trailingAnchor];
    trailingAnchor3 = [selfCopy trailingAnchor];
    v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:0.0];
    v66[7] = v28;
    label10 = [selfCopy label];
    bottomAnchor3 = [label10 bottomAnchor];
    bottomAnchor4 = [selfCopy bottomAnchor];
    v32 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:0.0];
    v66[8] = v32;
    v33 = [NSArray arrayWithObjects:v66 count:9];
    [NSLayoutConstraint activateConstraints:v33];
  }

  v34 = selfCopy;
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v34;
}

@end