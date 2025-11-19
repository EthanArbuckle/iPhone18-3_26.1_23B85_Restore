@interface BuddyMandatoryUpdateAboutController
- (BuddyMandatoryUpdateAboutController)initWithScanOptions:(id)a3;
- (UIStackView)topLevelStackView;
- (id)_boldFontForFont:(id)a3;
- (id)_makeDetailLabelWithViewModel:(id)a3;
- (id)_makeRowViewWithViewModel:(id)a3;
- (id)_makeRowViews;
- (id)_makeSpacer;
- (id)_makeTitleLabelWithViewModel:(id)a3;
- (id)_sortViewsForInterfaceDirection:(id)a3;
- (int64_t)_detailTextAlignment;
- (void)_doneTapped:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation BuddyMandatoryUpdateAboutController

- (BuddyMandatoryUpdateAboutController)initWithScanOptions:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = BuddyMandatoryUpdateAboutController;
  v4 = [(BuddyMandatoryUpdateAboutController *)&v9 initWithNibName:0 bundle:0];
  v11 = v4;
  objc_storeStrong(&v11, v4);
  if (v4)
  {
    v5 = [location[0] copy];
    v6 = *(v11 + 2);
    *(v11 + 2) = v5;
  }

  v7 = v11;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)loadView
{
  v24 = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = BuddyMandatoryUpdateAboutController;
  [(BuddyMandatoryUpdateAboutController *)&v22 loadView];
  v2 = +[UIColor systemBackgroundColor];
  v3 = [(BuddyMandatoryUpdateAboutController *)v24 view];
  [v3 setBackgroundColor:v2];

  v4 = [(BuddyMandatoryUpdateAboutController *)v24 view];
  v5 = [(BuddyMandatoryUpdateAboutController *)v24 topLevelStackView];
  [v4 addSubview:v5];

  v6 = [(BuddyMandatoryUpdateAboutController *)v24 view];
  v21 = [v6 safeAreaLayoutGuide];

  location = [(BuddyMandatoryUpdateAboutController *)v24 topLevelStackView];
  v19 = [v21 topAnchor];
  v18 = [location topAnchor];
  v17 = [v19 constraintEqualToAnchor:-57.0 constant:?];
  v25[0] = v17;
  v7 = [v21 bottomAnchor];
  v8 = [location bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 constant:57.0];
  v25[1] = v9;
  v10 = [v21 leadingAnchor];
  v11 = [location leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-sub_1000BC3F0()];
  v25[2] = v12;
  v13 = [v21 trailingAnchor];
  v14 = [location trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:sub_1000BC3F0()];
  v25[3] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v21, 0);
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyMandatoryUpdateAboutController;
  [(BuddyMandatoryUpdateAboutController *)&v7 viewDidLoad];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [(BuddyMandatoryUpdateAboutController *)v9 setTitle:v3];

  v4 = [UIBarButtonItem alloc];
  v5 = [v4 initWithBarButtonSystemItem:0 target:v9 action:"_doneTapped:"];
  v6 = [(BuddyMandatoryUpdateAboutController *)v9 navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (void)_doneTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyMandatoryUpdateAboutController *)v4 dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (UIStackView)topLevelStackView
{
  if (!self->_topLevelStackView)
  {
    v2 = [UIStackView alloc];
    v3 = [(BuddyMandatoryUpdateAboutController *)self _makeRowViews];
    v4 = [v2 initWithArrangedSubviews:v3];
    topLevelStackView = self->_topLevelStackView;
    self->_topLevelStackView = v4;

    [(UIStackView *)self->_topLevelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_topLevelStackView setAxis:1];
    [(UIStackView *)self->_topLevelStackView setSpacing:16.0];
  }

  v6 = self->_topLevelStackView;

  return v6;
}

- (id)_makeRowViews
{
  v15 = self;
  v14[1] = a2;
  v2 = [(BuddyMandatoryUpdateAboutController *)self scanOptions];
  v14[0] = [BuddyMandatoryUpdateAboutRowViewModel viewModelsWithScanOptions:v2];

  location = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14[0], "count")}];
  memset(v11, 0, sizeof(v11));
  v3 = v14[0];
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = location;
        v8 = [(BuddyMandatoryUpdateAboutController *)v15 _makeRowViewWithViewModel:v12];
        [v7 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
  return v9;
}

- (id)_makeRowViewWithViewModel:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(BuddyMandatoryUpdateAboutController *)v13 _makeTitleLabelWithViewModel:location[0]];
  v10 = [(BuddyMandatoryUpdateAboutController *)v13 _makeDetailLabelWithViewModel:location[0]];
  v9 = [(BuddyMandatoryUpdateAboutController *)v13 _makeSpacer];
  v3 = v13;
  v14[0] = v11;
  v14[1] = v9;
  v14[2] = v10;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  v8 = [(BuddyMandatoryUpdateAboutController *)v3 _sortViewsForInterfaceDirection:v4];

  v7 = [[UIStackView alloc] initWithArrangedSubviews:v8];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAlignment:2];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_makeTitleLabelWithViewModel:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = objc_alloc_init(UILabel);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [location[0] title];
  [v10 setText:v3];

  LODWORD(v4) = 1144750080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = v12;
  v6 = [v10 font];
  v7 = [(BuddyMandatoryUpdateAboutController *)v5 _boldFontForFont:v6];
  [v10 setFont:v7];

  v8 = v10;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)_makeDetailLabelWithViewModel:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(UILabel);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [location[0] detail];
  [v6 setText:v3];

  [v6 setNumberOfLines:3];
  [v6 setTextAlignment:{-[BuddyMandatoryUpdateAboutController _detailTextAlignment](v8, "_detailTextAlignment")}];
  v4 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_makeSpacer
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(UIView);
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [location[0] widthAnchor];
  v3 = [v2 constraintGreaterThanOrEqualToConstant:32.0];
  [v3 setActive:1];

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_sortViewsForInterfaceDirection:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (sub_100196140())
  {
    v3 = [location[0] reverseObjectEnumerator];
    v7 = [v3 allObjects];
  }

  else
  {
    v7 = location[0];
  }

  objc_storeStrong(location, 0);
  v4 = v7;

  return v4;
}

- (int64_t)_detailTextAlignment
{
  if (sub_100196140())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)_boldFontForFont:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] fontDescriptor];
  v6 = [v3 fontDescriptorWithSymbolicTraits:2];

  [location[0] pointSize];
  v4 = [UIFont fontWithDescriptor:v6 size:?];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end