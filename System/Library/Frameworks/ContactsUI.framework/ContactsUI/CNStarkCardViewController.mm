@interface CNStarkCardViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (id)starkCardControllerForCalendarEventWithContact:(id)a3;
- (CNStarkCardViewController)init;
- (CNStarkCardViewController)initWithCoder:(id)a3;
- (CNStarkCardViewController)initWithContact:(id)a3 displayedContactProperties:(id)a4;
- (CNStarkCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupLayoutGuides;
- (void)setupViewControllers;
- (void)showMore:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateNavigationItems;
- (void)updateViewConstraints;
- (void)updateViewControllers;
- (void)viewDidLoad;
@end

@implementation CNStarkCardViewController

- (void)updateViewConstraints
{
  v5.receiver = self;
  v5.super_class = CNStarkCardViewController;
  [(CNStarkCardViewController *)&v5 updateViewConstraints];
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNStarkCardViewController *)self layoutConstraints];
  LODWORD(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    [(CNStarkCardViewController *)self setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v131[4] = *MEMORY[0x1E69E9840];
  v123 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v116 = [v123 topAnchor];
  v120 = [(CNStarkCardViewController *)self view];
  v111 = [v120 safeAreaLayoutGuide];
  v106 = [v111 topAnchor];
  v101 = [v116 constraintEqualToAnchor:v106];
  v131[0] = v101;
  v96 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v86 = [v96 bottomAnchor];
  v91 = [(CNStarkCardViewController *)self actionsController];
  v81 = [v91 view];
  v76 = [v81 topAnchor];
  v71 = [v86 constraintEqualToAnchor:v76];
  v131[1] = v71;
  v66 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v60 = [v66 leftAnchor];
  v63 = [(CNStarkCardViewController *)self view];
  v3 = [v63 safeAreaLayoutGuide];
  v4 = [v3 leftAnchor];
  v5 = [v60 constraintEqualToAnchor:v4];
  v131[2] = v5;
  v6 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v7 = [v6 rightAnchor];
  v8 = [(CNStarkCardViewController *)self view];
  v9 = [v8 safeAreaLayoutGuide];
  v10 = [v9 rightAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];
  v131[3] = v11;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];

  v121 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v112 = [v121 centerYAnchor];
  v117 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v107 = [v117 centerYAnchor];
  v102 = [v112 constraintEqualToAnchor:v107];
  v130[0] = v102;
  v97 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v87 = [v97 centerXAnchor];
  v92 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v82 = [v92 centerXAnchor];
  v77 = [v87 constraintEqualToAnchor:v82];
  v130[1] = v77;
  v72 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v64 = [v72 leftAnchor];
  v67 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v61 = [v67 leftAnchor];
  v58 = [v64 constraintGreaterThanOrEqualToAnchor:v61];
  v130[2] = v58;
  v57 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v55 = [v57 rightAnchor];
  v56 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v54 = [v56 rightAnchor];
  v53 = [v55 constraintLessThanOrEqualToAnchor:v54];
  v130[3] = v53;
  v52 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v12 = [v52 topAnchor];
  v13 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14];
  v130[4] = v15;
  v16 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v17 = [v16 bottomAnchor];
  v18 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintLessThanOrEqualToAnchor:v19];
  v130[5] = v20;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:6];

  v118 = [(CNStarkCardViewController *)self avatarViewController];
  v113 = [v118 view];
  v103 = [v113 centerYAnchor];
  v108 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v98 = [v108 centerYAnchor];
  v93 = [v103 constraintEqualToAnchor:v98];
  v129[0] = v93;
  v88 = [(CNStarkCardViewController *)self avatarViewController];
  v83 = [v88 view];
  v73 = [v83 leadingAnchor];
  v78 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v68 = [v78 leadingAnchor];
  v21 = [v73 constraintEqualToAnchor:v68];
  v129[1] = v21;
  v22 = [(CNStarkCardViewController *)self avatarViewController];
  v23 = [v22 view];
  v24 = [v23 widthAnchor];
  v25 = [v24 constraintEqualToConstant:64.0];
  v129[2] = v25;
  v26 = [(CNStarkCardViewController *)self avatarViewController];
  v27 = [v26 view];
  v28 = [v27 heightAnchor];
  v29 = [v28 constraintEqualToConstant:64.0];
  v129[3] = v29;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:4];

  v114 = [(CNStarkCardViewController *)self contactInfoViewController];
  v109 = [v114 view];
  v99 = [v109 centerYAnchor];
  v104 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v94 = [v104 centerYAnchor];
  v89 = [v99 constraintEqualToAnchor:v94];
  v128[0] = v89;
  v84 = [(CNStarkCardViewController *)self contactInfoViewController];
  v79 = [v84 view];
  v69 = [v79 leadingAnchor];
  v74 = [(CNStarkCardViewController *)self avatarViewController];
  v30 = [v74 view];
  v31 = [v30 trailingAnchor];
  v32 = [v69 constraintEqualToAnchor:v31 constant:12.0];
  v128[1] = v32;
  v33 = [(CNStarkCardViewController *)self contactInfoViewController];
  v34 = [v33 view];
  v35 = [v34 trailingAnchor];
  v36 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v128[2] = v38;
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];

  v115 = [(CNStarkCardViewController *)self actionsController];
  v110 = [v115 view];
  v100 = [v110 leadingAnchor];
  v105 = [(CNStarkCardViewController *)self view];
  v95 = [v105 safeAreaLayoutGuide];
  v90 = [v95 leadingAnchor];
  v85 = [v100 constraintEqualToAnchor:v90];
  v127[0] = v85;
  v80 = [(CNStarkCardViewController *)self actionsController];
  v75 = [v80 view];
  v65 = [v75 trailingAnchor];
  v70 = [(CNStarkCardViewController *)self view];
  v62 = [v70 safeAreaLayoutGuide];
  v39 = [v62 trailingAnchor];
  v40 = [v65 constraintEqualToAnchor:v39];
  v127[1] = v40;
  v41 = [(CNStarkCardViewController *)self actionsController];
  v42 = [v41 view];
  v43 = [v42 bottomAnchor];
  v44 = [(CNStarkCardViewController *)self view];
  v45 = [v44 safeAreaLayoutGuide];
  v46 = [v45 bottomAnchor];
  v47 = [v43 constraintEqualToAnchor:v46 constant:-12.0];
  v127[2] = v47;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:3];

  v126[0] = v125;
  v126[1] = v124;
  v126[2] = v122;
  v126[3] = v119;
  v126[4] = v59;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:5];
  v49 = [v48 _cn_flatten];
  [(CNStarkCardViewController *)self setLayoutConstraints:v49];

  v50 = [(CNStarkCardViewController *)self view];
  v51 = [(CNStarkCardViewController *)self layoutConstraints];
  [v50 addConstraints:v51];
}

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:0];
  v10[0] = v3;
  v4 = +[CNStarkContactInfoViewController descriptorForRequiredKeys];
  v10[1] = v4;
  v5 = +[CNStarkActionsController descriptorForRequiredKeys];
  v10[2] = v5;
  v6 = +[(CNContactContentUnitaryViewController *)CNStarkContactViewController];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v2 descriptorWithKeyDescriptors:v7 description:@"CNStarkCardViewController descriptorForRequiredKeys"];

  return v8;
}

- (void)resetLayoutConstraints
{
  v3 = [(CNStarkCardViewController *)self view];
  v4 = [(CNStarkCardViewController *)self layoutConstraints];
  [v3 removeConstraints:v4];

  [(CNStarkCardViewController *)self setLayoutConstraints:0];
  v5 = [(CNStarkCardViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNStarkCardViewController;
  [(CNStarkCardViewController *)&v6 viewDidLoad];
  [(CNStarkCardViewController *)self setupViewControllers];
  [(CNStarkCardViewController *)self setupLayoutGuides];
  [(CNStarkCardViewController *)self updateViewControllers];
  [(CNStarkCardViewController *)self updateNavigationItems];
  v3 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  v4 = [(CNStarkCardViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CNStarkCardViewController *)self view];
  [v5 setAccessibilityIdentifier:@"CNStarkCardView"];
}

- (void)setupViewControllers
{
  v3 = [(CNStarkCardViewController *)self avatarViewController];
  [(CNStarkCardViewController *)self addChildViewController:v3];

  v4 = [(CNStarkCardViewController *)self contactInfoViewController];
  [(CNStarkCardViewController *)self addChildViewController:v4];

  v5 = [(CNStarkCardViewController *)self actionsController];
  [(CNStarkCardViewController *)self addChildViewController:v5];

  v6 = [(CNStarkCardViewController *)self avatarViewController];
  v7 = [v6 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(CNStarkCardViewController *)self contactInfoViewController];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(CNStarkCardViewController *)self actionsController];
  v11 = [v10 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CNStarkCardViewController *)self view];
  v13 = [(CNStarkCardViewController *)self avatarViewController];
  v14 = [v13 view];
  [v12 addSubview:v14];

  v15 = [(CNStarkCardViewController *)self view];
  v16 = [(CNStarkCardViewController *)self contactInfoViewController];
  v17 = [v16 view];
  [v15 addSubview:v17];

  v20 = [(CNStarkCardViewController *)self view];
  v18 = [(CNStarkCardViewController *)self actionsController];
  v19 = [v18 view];
  [v20 addSubview:v19];
}

- (void)setupLayoutGuides
{
  v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v3 = [(CNStarkCardViewController *)self view];
  [v3 addLayoutGuide:v6];

  [(CNStarkCardViewController *)self setCenteringLayoutGuide:v6];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v5 = [(CNStarkCardViewController *)self view];
  [v5 addLayoutGuide:v4];

  [(CNStarkCardViewController *)self setAvatarAndDetailsLayoutGuide:v4];
}

- (void)updateViewControllers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNStarkCardViewController *)self contact];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [(CNStarkCardViewController *)self avatarViewController];
  [v5 setContacts:v4];
}

- (void)updateNavigationItems
{
  v3 = [(CNStarkCardViewController *)self contact];
  v4 = [v3 phoneNumbers];
  if (![v4 count])
  {
    v5 = [(CNStarkCardViewController *)self contact];
    v6 = [v5 emailAddresses];
    if (![v6 count])
    {
      v11 = [(CNStarkCardViewController *)self contact];
      v12 = [v11 postalAddresses];
      v13 = [v12 count];

      if (!v13)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v14 = CNContactsUIBundle();
  v8 = [v14 localizedStringForKey:@"SHOW_MORE" value:&stru_1F0CE7398 table:@"Localized"];
  v9 = [v7 initWithTitle:v8 style:0 target:self action:sel_showMore_];
  v10 = [(CNStarkCardViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];
}

- (void)showMore:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:10];

  if (v6)
  {
    v7 = objc_alloc_init(CNContactContentViewControllerConfiguration);
    v8 = [(CNStarkCardViewController *)self displayedContactProperties];
    [(CNContactContentViewControllerConfiguration *)v7 setDisplayedProperties:v8];

    v9 = [CNStarkContactDisplayViewController alloc];
    v10 = [(CNStarkCardViewController *)self contact];
    v15 = [(CNStarkContactDisplayViewController *)v9 initWithContact:v10 contactViewConfiguration:v7];

    [(CNContactContentDisplayViewController *)v15 setDelegate:self];
  }

  else
  {
    v11 = [CNStarkContactViewController alloc];
    v12 = [(CNStarkCardViewController *)self contact];
    v15 = [(CNStarkContactViewController *)v11 initWithContact:v12];

    v13 = [(CNStarkCardViewController *)self displayedContactProperties];
    [(CNStarkContactDisplayViewController *)v15 setDisplayedProperties:v13];

    [(CNStarkContactDisplayViewController *)v15 setContactDelegate:self];
  }

  v14 = [(CNStarkCardViewController *)self navigationController];
  [v14 pushViewController:v15 animated:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNStarkCardViewController;
  [(CNStarkCardViewController *)&v4 traitCollectionDidChange:a3];
  [(CNStarkCardViewController *)self resetLayoutConstraints];
}

- (CNStarkCardViewController)initWithContact:(id)a3 displayedContactProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CNStarkCardViewController;
  v9 = [(CNStarkCardViewController *)&v20 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [CNAvatarViewController alloc];
    v11 = +[CNAvatarViewControllerSettings defaultSettings];
    v12 = [(CNAvatarViewController *)v10 initWithSettings:v11];
    avatarViewController = v9->_avatarViewController;
    v9->_avatarViewController = v12;

    v14 = [[CNStarkContactInfoViewController alloc] initWithContact:v7];
    contactInfoViewController = v9->_contactInfoViewController;
    v9->_contactInfoViewController = v14;

    v16 = [[CNStarkActionsController alloc] initWithContact:v7];
    actionsController = v9->_actionsController;
    v9->_actionsController = v16;

    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v9->_displayedContactProperties, a4);
    v18 = v9;
  }

  return v9;
}

- (CNStarkCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNInitializerUnavailableException();
  objc_exception_throw(v9);
}

- (CNStarkCardViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNInitializerUnavailableException();
  objc_exception_throw(v6);
}

- (CNStarkCardViewController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)starkCardControllerForCalendarEventWithContact:(id)a3
{
  v3 = a3;
  v4 = +[CNStarkContactsListViewController makeContactsDisplayedProperties];
  v5 = [objc_alloc(objc_opt_class()) initWithContact:v3 displayedContactProperties:v4];

  return v5;
}

@end