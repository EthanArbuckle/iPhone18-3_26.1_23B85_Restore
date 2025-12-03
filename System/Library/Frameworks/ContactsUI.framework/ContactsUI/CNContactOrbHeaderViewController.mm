@interface CNContactOrbHeaderViewController
- (CNContactOrbHeaderViewController)initWithContacts:(id)contacts;
- (double)suggestedHeaderWidth;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNContactOrbHeaderViewController

- (double)suggestedHeaderWidth
{
  view = [(CNContactOrbHeaderViewController *)self view];
  [view bounds];
  v5 = v4;

  view2 = [(CNContactOrbHeaderViewController *)self view];
  [view2 bounds];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  traitCollection = [(CNContactOrbHeaderViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
    view3 = [(CNContactOrbHeaderViewController *)self view];
    [view3 bounds];
    if (v12 >= 320.0)
    {
      view4 = [(CNContactOrbHeaderViewController *)self view];
      [view4 bounds];
      v15 = v14;

      if (v15 < 414.0)
      {
        view5 = [(CNContactOrbHeaderViewController *)self view];
        [view5 bounds];
        v5 = v17;

        return v5;
      }
    }

    else
    {
    }

    if (v5 > 414.0)
    {
      return 414.0;
    }
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CNContactOrbHeaderViewController;
  [(CNContactOrbHeaderViewController *)&v17 viewWillAppear:appear];
  view = [(CNContactOrbHeaderViewController *)self view];
  [view frame];
  if (v5 == 0.0)
  {
    [(CNContactOrbHeaderViewController *)self suggestedHeaderWidth];
    v8 = v9;
  }

  else
  {
    view2 = [(CNContactOrbHeaderViewController *)self view];
    [view2 frame];
    v8 = v7;
  }

  headerView = [(CNContactOrbHeaderViewController *)self headerView];
  LODWORD(v11) = 1148846080;
  LODWORD(v12) = 1112014848;
  [headerView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v11, v12}];
  v14 = v13;

  headerView2 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView2 frame];
  [(CNContactOrbHeaderViewController *)self setPreferredContentSize:v16, v14];
}

- (void)viewDidLoad
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CNContactOrbHeaderViewController;
  [(CNContactOrbHeaderViewController *)&v39 viewDidLoad];
  [(CNContactOrbHeaderViewController *)self suggestedHeaderWidth];
  v4 = v3;
  headerView = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView setFrame:{0.0, 0.0, v4, 55.0}];

  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  headerView2 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView2 setContactFormatter:mEMORY[0x1E695CD80]];

  headerView3 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView3 setAlwaysShowsMonogram:1];

  headerView4 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView4 setCentersPhotoAndLabels:1];

  headerView5 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView5 setContentMargins:{10.0, 10.0, 10.0, 10.0}];

  headerView6 = [(CNContactOrbHeaderViewController *)self headerView];
  [headerView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CNContactOrbHeaderViewController *)self view];
  headerView7 = [(CNContactOrbHeaderViewController *)self headerView];
  [view addSubview:headerView7];

  headerView8 = [(CNContactOrbHeaderViewController *)self headerView];
  contacts = [(CNContactOrbHeaderViewController *)self contacts];
  [headerView8 updateWithContacts:contacts];

  headerView9 = [(CNContactOrbHeaderViewController *)self headerView];
  topAnchor = [headerView9 topAnchor];
  view2 = [(CNContactOrbHeaderViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[0] = v34;
  headerView10 = [(CNContactOrbHeaderViewController *)self headerView];
  bottomAnchor = [headerView10 bottomAnchor];
  view3 = [(CNContactOrbHeaderViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[1] = v29;
  headerView11 = [(CNContactOrbHeaderViewController *)self headerView];
  leadingAnchor = [headerView11 leadingAnchor];
  view4 = [(CNContactOrbHeaderViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[2] = v19;
  headerView12 = [(CNContactOrbHeaderViewController *)self headerView];
  trailingAnchor = [headerView12 trailingAnchor];
  view5 = [(CNContactOrbHeaderViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[3] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view6 = [(CNContactOrbHeaderViewController *)self view];
  [view6 setBackgroundColor:systemBackgroundColor];
}

- (CNContactOrbHeaderViewController)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v12.receiver = self;
  v12.super_class = CNContactOrbHeaderViewController;
  v6 = [(CNContactOrbHeaderViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contacts, contacts);
    v8 = [(CNContactOrbHeaderView *)[CNAvatarCardHeaderView alloc] initWithContact:0 frame:0.0, 0.0, 55.0, 55.0];
    headerView = v7->_headerView;
    v7->_headerView = &v8->super;

    v10 = v7;
  }

  return v7;
}

@end