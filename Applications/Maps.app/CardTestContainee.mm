@interface CardTestContainee
- (CardTestContainee)initWithContext:(id)context;
- (double)heightForLayout:(unint64_t)layout;
- (id)description;
- (void)_createSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CardTestContainee

- (double)heightForLayout:(unint64_t)layout
{
  if (layout > 2)
  {
    if (layout - 3 < 2)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v5 = v4;

      return v5;
    }

    if (layout == 5)
    {
      v7.receiver = self;
      v7.super_class = CardTestContainee;
      [(ContaineeViewController *)&v7 heightForLayout:?];
      return result;
    }

    return -1.0;
  }

  if (layout == 1)
  {
    return 88.0;
  }

  if (layout != 2)
  {
    return -1.0;
  }

  sub_100068BB8();
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CardTestContainee;
  [(ContaineeViewController *)&v10 viewWillAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Containee %lu", [WeakRetained indexOfContainee:self]);
  [(UILabel *)self->_containeeLabel setText:v5];

  v6 = objc_loadWeakRetained(&self->_context);
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Context %lu", [v6 indexOfContext]);
  [(UILabel *)self->_contextLabel setText:v7];

  v8 = objc_loadWeakRetained(&self->_context);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = @"Custom Container";
  }

  else
  {
    v9 = @"Chrome-owned Container";
  }

  [(UILabel *)self->_typeLabel setText:v9];
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(NSMutableArray);
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1007DB604;
  v109[3] = &unk_101658910;
  v109[4] = self;
  v4 = [UIAction actionWithTitle:@"Pop" image:0 identifier:0 handler:v109];
  v5 = [UIButton buttonWithType:1 primaryAction:v4];
  [v3 addObject:v5];

  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1007DB650;
  v108[3] = &unk_101658910;
  v108[4] = self;
  v6 = [UIAction actionWithTitle:@"Push" image:0 identifier:0 handler:v108];
  v7 = [UIButton buttonWithType:1 primaryAction:v6];
  [v3 addObject:v7];

  v8 = objc_alloc_init(NSMutableArray);
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_1007DB69C;
  v107[3] = &unk_101658910;
  v107[4] = self;
  v9 = [UIAction actionWithTitle:@"Pop" image:0 identifier:0 handler:v107];
  v10 = [UIButton buttonWithType:1 primaryAction:v9];
  [v8 addObject:v10];

  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_1007DB6E8;
  v106[3] = &unk_101658910;
  v106[4] = self;
  v11 = [UIAction actionWithTitle:@"Push" image:0 identifier:0 handler:v106];
  v12 = [UIButton buttonWithType:1 primaryAction:v11];
  [v8 addObject:v12];

  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_1007DB748;
  v105[3] = &unk_101658910;
  v105[4] = self;
  v13 = [UIAction actionWithTitle:@"Push (Custom)" image:0 identifier:0 handler:v105];
  v14 = [UIButton buttonWithType:1 primaryAction:v13];
  [v8 addObject:v14];

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1007DB7A8;
  v104[3] = &unk_101658910;
  v104[4] = self;
  v15 = [UIAction actionWithTitle:@"Push (No Floating Controls)" image:0 identifier:0 handler:v104];
  v16 = [UIButton buttonWithType:1 primaryAction:v15];
  [v8 addObject:v16];

  [v3 enumerateObjectsUsingBlock:&stru_10162A850];
  [v8 enumerateObjectsUsingBlock:&stru_10162A850];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_1007DB7F8;
  v103[3] = &unk_10162A878;
  v103[4] = self;
  v17 = objc_retainBlock(v103);
  v18 = (v17 + 16);
  v19 = v17;
  v20 = (*(v17 + 2))();
  typeLabel = self->_typeLabel;
  self->_typeLabel = v20;

  view = [(CardTestContainee *)self view];
  [view addSubview:self->_typeLabel];

  v97 = v19;
  v23 = (*v18)(v19);
  containeeLabel = self->_containeeLabel;
  self->_containeeLabel = v23;

  view2 = [(CardTestContainee *)self view];
  [view2 addSubview:self->_containeeLabel];

  v26 = (*v18)(v19);
  contextLabel = self->_contextLabel;
  self->_contextLabel = v26;

  view3 = [(CardTestContainee *)self view];
  [view3 addSubview:self->_contextLabel];

  v93 = v3;
  v29 = [[UIStackView alloc] initWithArrangedSubviews:v3];
  [v29 setDistribution:2];
  [v29 setAxis:1];
  v96 = v29;
  [v29 setSpacing:20.0];
  v94 = v8;
  v30 = [[UIStackView alloc] initWithArrangedSubviews:v8];
  [v30 setDistribution:2];
  [v30 setAxis:1];
  v95 = v30;
  [v30 setSpacing:20.0];
  v31 = [UIStackView alloc];
  v111[0] = v30;
  v111[1] = v29;
  v32 = [NSArray arrayWithObjects:v111 count:2];
  v33 = [v31 initWithArrangedSubviews:v32];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setDistribution:1];
  [v33 setAlignment:1];
  [v33 setAxis:0];
  [v33 setSpacing:20.0];
  view4 = [(CardTestContainee *)self view];
  [view4 addSubview:v33];

  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_1007DB908;
  v101[3] = &unk_10162A8A0;
  v35 = objc_alloc_init(NSMutableArray);
  v102 = v35;
  [v8 enumerateObjectsUsingBlock:v101];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_1007DB978;
  v99[3] = &unk_10162A8A0;
  v100 = v35;
  v98 = v35;
  [v3 enumerateObjectsUsingBlock:v99];
  topAnchor = [(UILabel *)self->_typeLabel topAnchor];
  view5 = [(CardTestContainee *)self view];
  topAnchor2 = [view5 topAnchor];
  v89 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v110[0] = v89;
  leadingAnchor = [(UILabel *)self->_typeLabel leadingAnchor];
  view6 = [(CardTestContainee *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v85 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v110[1] = v85;
  view7 = [(CardTestContainee *)self view];
  trailingAnchor = [view7 trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_typeLabel trailingAnchor];
  v81 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
  v110[2] = v81;
  topAnchor3 = [(UILabel *)self->_contextLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_typeLabel bottomAnchor];
  v78 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
  v110[3] = v78;
  topAnchor4 = [(UILabel *)self->_containeeLabel topAnchor];
  topAnchor5 = [(UILabel *)self->_contextLabel topAnchor];
  v75 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v110[4] = v75;
  bottomAnchor2 = [(UILabel *)self->_containeeLabel bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_contextLabel bottomAnchor];
  v72 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v110[5] = v72;
  leadingAnchor3 = [(UILabel *)self->_contextLabel leadingAnchor];
  view8 = [(CardTestContainee *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v110[6] = v68;
  leadingAnchor5 = [(UILabel *)self->_containeeLabel leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_contextLabel trailingAnchor];
  v65 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v110[7] = v65;
  view9 = [(CardTestContainee *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  trailingAnchor5 = [(UILabel *)self->_containeeLabel trailingAnchor];
  v60 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:20.0];
  v110[8] = v60;
  widthAnchor = [(UILabel *)self->_contextLabel widthAnchor];
  widthAnchor2 = [(UILabel *)self->_containeeLabel widthAnchor];
  v57 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v110[9] = v57;
  heightAnchor = [v33 heightAnchor];
  v55 = [heightAnchor constraintGreaterThanOrEqualToConstant:100.0];
  v110[10] = v55;
  heightAnchor2 = [v33 heightAnchor];
  v53 = [heightAnchor2 constraintLessThanOrEqualToConstant:200.0];
  v110[11] = v53;
  topAnchor6 = [v33 topAnchor];
  bottomAnchor4 = [(UILabel *)self->_contextLabel bottomAnchor];
  v50 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:20.0];
  v110[12] = v50;
  leadingAnchor6 = [v33 leadingAnchor];
  view10 = [(CardTestContainee *)self view];
  leadingAnchor7 = [view10 leadingAnchor];
  v36 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:20.0];
  v110[13] = v36;
  view11 = [(CardTestContainee *)self view];
  trailingAnchor6 = [view11 trailingAnchor];
  v63 = v33;
  trailingAnchor7 = [v33 trailingAnchor];
  v40 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:20.0];
  v110[14] = v40;
  view12 = [(CardTestContainee *)self view];
  bottomAnchor5 = [view12 bottomAnchor];
  bottomAnchor6 = [v33 bottomAnchor];
  LODWORD(v44) = 1144733696;
  v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:60.0 priority:v44];
  v110[15] = v45;
  v46 = [NSArray arrayWithObjects:v110 count:16];
  [v98 addObjectsFromArray:v46];

  [NSLayoutConstraint activateConstraints:v98];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CardTestContainee;
  [(ContaineeViewController *)&v5 viewDidLoad];
  v3 = [UIColor colorWithHue:((arc4random() % 0x64) * 0.01) saturation:0.800000012 brightness:0.800000012 alpha:1.0];
  view = [(CardTestContainee *)self view];
  [view setBackgroundColor:v3];

  [(CardTestContainee *)self _createSubviews];
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = CardTestContainee;
  v14 = [(CardTestContainee *)&v15 description];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  chromeViewController = [WeakRetained chromeViewController];
  contexts = [chromeViewController contexts];
  v6 = objc_loadWeakRetained(&self->_context);
  v7 = [contexts indexOfObject:v6];
  v8 = objc_loadWeakRetained(&self->_context);
  containees = [v8 containees];
  v10 = [containees indexOfObject:self];
  v11 = objc_loadWeakRetained(&self->_context);
  v12 = [NSString stringWithFormat:@"%@ %lu.%lu %s (context: %@)", v14, v7, v10, "card", v11];

  return v12;
}

- (CardTestContainee)initWithContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = CardTestContainee;
  v5 = [(CardTestContainee *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    [(ContaineeViewController *)v6 setContaineeDelegate:contextCopy];
    v7 = sub_10000FA08(v6);
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    v9 = cardPresentationController;
    if (v7 == 5)
    {
      [cardPresentationController setTakesAvailableHeight:1];
    }

    else
    {
      [cardPresentationController setAllowResizeInFloatingStyle:1];
      v7 = 2;
    }

    cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController2 setDefaultContaineeLayout:v7];

    cardPresentationController3 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController3 setBlurInCardView:0];

    WeakRetained = objc_loadWeakRetained(&v6->_context);
    if (WeakRetained)
    {
      v13 = objc_loadWeakRetained(&v6->_context);
      containees = [v13 containees];
      v15 = (([containees count] % 0xA) * 0.1);
    }

    else
    {
      v15 = 0.0;
    }

    v16 = [UIColor colorWithHue:v15 saturation:0.699999988 brightness:0.899999976 alpha:1.0];
    cardPresentationController4 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController4 setCardColor:v16];
  }

  return v6;
}

@end