@interface CNContactOrbHeaderViewController
- (CNContactOrbHeaderViewController)initWithContacts:(id)a3;
- (double)suggestedHeaderWidth;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNContactOrbHeaderViewController

- (double)suggestedHeaderWidth
{
  v3 = [(CNContactOrbHeaderViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(CNContactOrbHeaderViewController *)self view];
  [v6 bounds];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  v9 = [(CNContactOrbHeaderViewController *)self traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 != 1)
  {
    v11 = [(CNContactOrbHeaderViewController *)self view];
    [v11 bounds];
    if (v12 >= 320.0)
    {
      v13 = [(CNContactOrbHeaderViewController *)self view];
      [v13 bounds];
      v15 = v14;

      if (v15 < 414.0)
      {
        v16 = [(CNContactOrbHeaderViewController *)self view];
        [v16 bounds];
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

- (void)viewWillAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = CNContactOrbHeaderViewController;
  [(CNContactOrbHeaderViewController *)&v17 viewWillAppear:a3];
  v4 = [(CNContactOrbHeaderViewController *)self view];
  [v4 frame];
  if (v5 == 0.0)
  {
    [(CNContactOrbHeaderViewController *)self suggestedHeaderWidth];
    v8 = v9;
  }

  else
  {
    v6 = [(CNContactOrbHeaderViewController *)self view];
    [v6 frame];
    v8 = v7;
  }

  v10 = [(CNContactOrbHeaderViewController *)self headerView];
  LODWORD(v11) = 1148846080;
  LODWORD(v12) = 1112014848;
  [v10 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v11, v12}];
  v14 = v13;

  v15 = [(CNContactOrbHeaderViewController *)self headerView];
  [v15 frame];
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
  v5 = [(CNContactOrbHeaderViewController *)self headerView];
  [v5 setFrame:{0.0, 0.0, v4, 55.0}];

  v6 = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  v7 = [(CNContactOrbHeaderViewController *)self headerView];
  [v7 setContactFormatter:v6];

  v8 = [(CNContactOrbHeaderViewController *)self headerView];
  [v8 setAlwaysShowsMonogram:1];

  v9 = [(CNContactOrbHeaderViewController *)self headerView];
  [v9 setCentersPhotoAndLabels:1];

  v10 = [(CNContactOrbHeaderViewController *)self headerView];
  [v10 setContentMargins:{10.0, 10.0, 10.0, 10.0}];

  v11 = [(CNContactOrbHeaderViewController *)self headerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CNContactOrbHeaderViewController *)self view];
  v13 = [(CNContactOrbHeaderViewController *)self headerView];
  [v12 addSubview:v13];

  v14 = [(CNContactOrbHeaderViewController *)self headerView];
  v15 = [(CNContactOrbHeaderViewController *)self contacts];
  [v14 updateWithContacts:v15];

  v38 = [(CNContactOrbHeaderViewController *)self headerView];
  v36 = [v38 topAnchor];
  v37 = [(CNContactOrbHeaderViewController *)self view];
  v35 = [v37 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[0] = v34;
  v33 = [(CNContactOrbHeaderViewController *)self headerView];
  v31 = [v33 bottomAnchor];
  v32 = [(CNContactOrbHeaderViewController *)self view];
  v30 = [v32 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v40[1] = v29;
  v28 = [(CNContactOrbHeaderViewController *)self headerView];
  v16 = [v28 leadingAnchor];
  v17 = [(CNContactOrbHeaderViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v40[2] = v19;
  v20 = [(CNContactOrbHeaderViewController *)self headerView];
  v21 = [v20 trailingAnchor];
  v22 = [(CNContactOrbHeaderViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v40[3] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
  v25 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v26 = [(CNContactOrbHeaderViewController *)self view];
  [v26 setBackgroundColor:v25];
}

- (CNContactOrbHeaderViewController)initWithContacts:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNContactOrbHeaderViewController;
  v6 = [(CNContactOrbHeaderViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contacts, a3);
    v8 = [(CNContactOrbHeaderView *)[CNAvatarCardHeaderView alloc] initWithContact:0 frame:0.0, 0.0, 55.0, 55.0];
    headerView = v7->_headerView;
    v7->_headerView = &v8->super;

    v10 = v7;
  }

  return v7;
}

@end