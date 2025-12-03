@interface BuddyMandatoryUpdateAboutController
- (BuddyMandatoryUpdateAboutController)initWithScanOptions:(id)options;
- (UIStackView)topLevelStackView;
- (id)_boldFontForFont:(id)font;
- (id)_makeDetailLabelWithViewModel:(id)model;
- (id)_makeRowViewWithViewModel:(id)model;
- (id)_makeRowViews;
- (id)_makeSpacer;
- (id)_makeTitleLabelWithViewModel:(id)model;
- (id)_sortViewsForInterfaceDirection:(id)direction;
- (int64_t)_detailTextAlignment;
- (void)_doneTapped:(id)tapped;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation BuddyMandatoryUpdateAboutController

- (BuddyMandatoryUpdateAboutController)initWithScanOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = BuddyMandatoryUpdateAboutController;
  v4 = [(BuddyMandatoryUpdateAboutController *)&v9 initWithNibName:0 bundle:0];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    v5 = [location[0] copy];
    v6 = *(selfCopy + 2);
    *(selfCopy + 2) = v5;
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)loadView
{
  selfCopy = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = BuddyMandatoryUpdateAboutController;
  [(BuddyMandatoryUpdateAboutController *)&v22 loadView];
  v2 = +[UIColor systemBackgroundColor];
  view = [(BuddyMandatoryUpdateAboutController *)selfCopy view];
  [view setBackgroundColor:v2];

  view2 = [(BuddyMandatoryUpdateAboutController *)selfCopy view];
  topLevelStackView = [(BuddyMandatoryUpdateAboutController *)selfCopy topLevelStackView];
  [view2 addSubview:topLevelStackView];

  view3 = [(BuddyMandatoryUpdateAboutController *)selfCopy view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];

  location = [(BuddyMandatoryUpdateAboutController *)selfCopy topLevelStackView];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [location topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:-57.0 constant:?];
  v25[0] = v17;
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  bottomAnchor2 = [location bottomAnchor];
  v9 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:57.0];
  v25[1] = v9;
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  leadingAnchor2 = [location leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-sub_1000BC3F0()];
  v25[2] = v12;
  trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
  trailingAnchor2 = [location trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:sub_1000BC3F0()];
  v25[3] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&safeAreaLayoutGuide, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyMandatoryUpdateAboutController;
  [(BuddyMandatoryUpdateAboutController *)&v7 viewDidLoad];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_TITLE" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [(BuddyMandatoryUpdateAboutController *)selfCopy setTitle:v3];

  v4 = [UIBarButtonItem alloc];
  v5 = [v4 initWithBarButtonSystemItem:0 target:selfCopy action:"_doneTapped:"];
  navigationItem = [(BuddyMandatoryUpdateAboutController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem:v5];
}

- (void)_doneTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(BuddyMandatoryUpdateAboutController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (UIStackView)topLevelStackView
{
  if (!self->_topLevelStackView)
  {
    v2 = [UIStackView alloc];
    _makeRowViews = [(BuddyMandatoryUpdateAboutController *)self _makeRowViews];
    v4 = [v2 initWithArrangedSubviews:_makeRowViews];
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
  selfCopy = self;
  v14[1] = a2;
  scanOptions = [(BuddyMandatoryUpdateAboutController *)self scanOptions];
  v14[0] = [BuddyMandatoryUpdateAboutRowViewModel viewModelsWithScanOptions:scanOptions];

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
        v8 = [(BuddyMandatoryUpdateAboutController *)selfCopy _makeRowViewWithViewModel:v12];
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

- (id)_makeRowViewWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v11 = [(BuddyMandatoryUpdateAboutController *)selfCopy _makeTitleLabelWithViewModel:location[0]];
  v10 = [(BuddyMandatoryUpdateAboutController *)selfCopy _makeDetailLabelWithViewModel:location[0]];
  _makeSpacer = [(BuddyMandatoryUpdateAboutController *)selfCopy _makeSpacer];
  v3 = selfCopy;
  v14[0] = v11;
  v14[1] = _makeSpacer;
  v14[2] = v10;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  v8 = [(BuddyMandatoryUpdateAboutController *)v3 _sortViewsForInterfaceDirection:v4];

  v7 = [[UIStackView alloc] initWithArrangedSubviews:v8];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAlignment:2];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&_makeSpacer, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_makeTitleLabelWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v10 = objc_alloc_init(UILabel);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  title = [location[0] title];
  [v10 setText:title];

  LODWORD(v4) = 1144750080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = selfCopy;
  font = [v10 font];
  v7 = [(BuddyMandatoryUpdateAboutController *)v5 _boldFontForFont:font];
  [v10 setFont:v7];

  v8 = v10;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)_makeDetailLabelWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v6 = objc_alloc_init(UILabel);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  detail = [location[0] detail];
  [v6 setText:detail];

  [v6 setNumberOfLines:3];
  [v6 setTextAlignment:{-[BuddyMandatoryUpdateAboutController _detailTextAlignment](selfCopy, "_detailTextAlignment")}];
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
  widthAnchor = [location[0] widthAnchor];
  v3 = [widthAnchor constraintGreaterThanOrEqualToConstant:32.0];
  [v3 setActive:1];

  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_sortViewsForInterfaceDirection:(id)direction
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, direction);
  if (sub_100196140())
  {
    reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  else
  {
    allObjects = location[0];
  }

  objc_storeStrong(location, 0);
  v4 = allObjects;

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

- (id)_boldFontForFont:(id)font
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, font);
  fontDescriptor = [location[0] fontDescriptor];
  v6 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  [location[0] pointSize];
  v4 = [UIFont fontWithDescriptor:v6 size:?];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end