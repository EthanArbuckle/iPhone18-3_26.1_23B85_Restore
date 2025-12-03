@interface CNStarkCardViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (id)starkCardControllerForCalendarEventWithContact:(id)contact;
- (CNStarkCardViewController)init;
- (CNStarkCardViewController)initWithCoder:(id)coder;
- (CNStarkCardViewController)initWithContact:(id)contact displayedContactProperties:(id)properties;
- (CNStarkCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupLayoutGuides;
- (void)setupViewControllers;
- (void)showMore:(id)more;
- (void)traitCollectionDidChange:(id)change;
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
  layoutConstraints = [(CNStarkCardViewController *)self layoutConstraints];
  LODWORD(v3) = (*(v3 + 16))(v3, layoutConstraints);

  if (v3)
  {
    [(CNStarkCardViewController *)self setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v131[4] = *MEMORY[0x1E69E9840];
  centeringLayoutGuide = [(CNStarkCardViewController *)self centeringLayoutGuide];
  topAnchor = [centeringLayoutGuide topAnchor];
  view = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v101 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v131[0] = v101;
  centeringLayoutGuide2 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  bottomAnchor = [centeringLayoutGuide2 bottomAnchor];
  actionsController = [(CNStarkCardViewController *)self actionsController];
  view2 = [actionsController view];
  topAnchor3 = [view2 topAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v131[1] = v71;
  centeringLayoutGuide3 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  leftAnchor = [centeringLayoutGuide3 leftAnchor];
  view3 = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v5 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v131[2] = v5;
  centeringLayoutGuide4 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  rightAnchor = [centeringLayoutGuide4 rightAnchor];
  view4 = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v131[3] = v11;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];

  avatarAndDetailsLayoutGuide = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  centerYAnchor = [avatarAndDetailsLayoutGuide centerYAnchor];
  centeringLayoutGuide5 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  centerYAnchor2 = [centeringLayoutGuide5 centerYAnchor];
  v102 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v130[0] = v102;
  avatarAndDetailsLayoutGuide2 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  centerXAnchor = [avatarAndDetailsLayoutGuide2 centerXAnchor];
  centeringLayoutGuide6 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  centerXAnchor2 = [centeringLayoutGuide6 centerXAnchor];
  v77 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v130[1] = v77;
  avatarAndDetailsLayoutGuide3 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  leftAnchor3 = [avatarAndDetailsLayoutGuide3 leftAnchor];
  centeringLayoutGuide7 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  leftAnchor4 = [centeringLayoutGuide7 leftAnchor];
  v58 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4];
  v130[2] = v58;
  avatarAndDetailsLayoutGuide4 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  rightAnchor3 = [avatarAndDetailsLayoutGuide4 rightAnchor];
  centeringLayoutGuide8 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  rightAnchor4 = [centeringLayoutGuide8 rightAnchor];
  v53 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4];
  v130[3] = v53;
  avatarAndDetailsLayoutGuide5 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  topAnchor4 = [avatarAndDetailsLayoutGuide5 topAnchor];
  centeringLayoutGuide9 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  topAnchor5 = [centeringLayoutGuide9 topAnchor];
  v15 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v130[4] = v15;
  avatarAndDetailsLayoutGuide6 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  bottomAnchor2 = [avatarAndDetailsLayoutGuide6 bottomAnchor];
  centeringLayoutGuide10 = [(CNStarkCardViewController *)self centeringLayoutGuide];
  bottomAnchor3 = [centeringLayoutGuide10 bottomAnchor];
  v20 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v130[5] = v20;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:6];

  avatarViewController = [(CNStarkCardViewController *)self avatarViewController];
  view5 = [avatarViewController view];
  centerYAnchor3 = [view5 centerYAnchor];
  avatarAndDetailsLayoutGuide7 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  centerYAnchor4 = [avatarAndDetailsLayoutGuide7 centerYAnchor];
  v93 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v129[0] = v93;
  avatarViewController2 = [(CNStarkCardViewController *)self avatarViewController];
  view6 = [avatarViewController2 view];
  leadingAnchor = [view6 leadingAnchor];
  avatarAndDetailsLayoutGuide8 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  leadingAnchor2 = [avatarAndDetailsLayoutGuide8 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v129[1] = v21;
  avatarViewController3 = [(CNStarkCardViewController *)self avatarViewController];
  view7 = [avatarViewController3 view];
  widthAnchor = [view7 widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:64.0];
  v129[2] = v25;
  avatarViewController4 = [(CNStarkCardViewController *)self avatarViewController];
  view8 = [avatarViewController4 view];
  heightAnchor = [view8 heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:64.0];
  v129[3] = v29;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:4];

  contactInfoViewController = [(CNStarkCardViewController *)self contactInfoViewController];
  view9 = [contactInfoViewController view];
  centerYAnchor5 = [view9 centerYAnchor];
  avatarAndDetailsLayoutGuide9 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  centerYAnchor6 = [avatarAndDetailsLayoutGuide9 centerYAnchor];
  v89 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v128[0] = v89;
  contactInfoViewController2 = [(CNStarkCardViewController *)self contactInfoViewController];
  view10 = [contactInfoViewController2 view];
  leadingAnchor3 = [view10 leadingAnchor];
  avatarViewController5 = [(CNStarkCardViewController *)self avatarViewController];
  view11 = [avatarViewController5 view];
  trailingAnchor = [view11 trailingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  v128[1] = v32;
  contactInfoViewController3 = [(CNStarkCardViewController *)self contactInfoViewController];
  view12 = [contactInfoViewController3 view];
  trailingAnchor2 = [view12 trailingAnchor];
  avatarAndDetailsLayoutGuide10 = [(CNStarkCardViewController *)self avatarAndDetailsLayoutGuide];
  trailingAnchor3 = [avatarAndDetailsLayoutGuide10 trailingAnchor];
  v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v128[2] = v38;
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];

  actionsController2 = [(CNStarkCardViewController *)self actionsController];
  view13 = [actionsController2 view];
  leadingAnchor4 = [view13 leadingAnchor];
  view14 = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide4 = [view14 safeAreaLayoutGuide];
  leadingAnchor5 = [safeAreaLayoutGuide4 leadingAnchor];
  v85 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v127[0] = v85;
  actionsController3 = [(CNStarkCardViewController *)self actionsController];
  view15 = [actionsController3 view];
  trailingAnchor4 = [view15 trailingAnchor];
  view16 = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide5 = [view16 safeAreaLayoutGuide];
  trailingAnchor5 = [safeAreaLayoutGuide5 trailingAnchor];
  v40 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v127[1] = v40;
  actionsController4 = [(CNStarkCardViewController *)self actionsController];
  view17 = [actionsController4 view];
  bottomAnchor4 = [view17 bottomAnchor];
  view18 = [(CNStarkCardViewController *)self view];
  safeAreaLayoutGuide6 = [view18 safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide6 bottomAnchor];
  v47 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-12.0];
  v127[2] = v47;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:3];

  v126[0] = v125;
  v126[1] = v124;
  v126[2] = v122;
  v126[3] = v119;
  v126[4] = v59;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:5];
  _cn_flatten = [v48 _cn_flatten];
  [(CNStarkCardViewController *)self setLayoutConstraints:_cn_flatten];

  view19 = [(CNStarkCardViewController *)self view];
  layoutConstraints = [(CNStarkCardViewController *)self layoutConstraints];
  [view19 addConstraints:layoutConstraints];
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
  view = [(CNStarkCardViewController *)self view];
  layoutConstraints = [(CNStarkCardViewController *)self layoutConstraints];
  [view removeConstraints:layoutConstraints];

  [(CNStarkCardViewController *)self setLayoutConstraints:0];
  view2 = [(CNStarkCardViewController *)self view];
  [view2 setNeedsUpdateConstraints];
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
  view = [(CNStarkCardViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(CNStarkCardViewController *)self view];
  [view2 setAccessibilityIdentifier:@"CNStarkCardView"];
}

- (void)setupViewControllers
{
  avatarViewController = [(CNStarkCardViewController *)self avatarViewController];
  [(CNStarkCardViewController *)self addChildViewController:avatarViewController];

  contactInfoViewController = [(CNStarkCardViewController *)self contactInfoViewController];
  [(CNStarkCardViewController *)self addChildViewController:contactInfoViewController];

  actionsController = [(CNStarkCardViewController *)self actionsController];
  [(CNStarkCardViewController *)self addChildViewController:actionsController];

  avatarViewController2 = [(CNStarkCardViewController *)self avatarViewController];
  view = [avatarViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contactInfoViewController2 = [(CNStarkCardViewController *)self contactInfoViewController];
  view2 = [contactInfoViewController2 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionsController2 = [(CNStarkCardViewController *)self actionsController];
  view3 = [actionsController2 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(CNStarkCardViewController *)self view];
  avatarViewController3 = [(CNStarkCardViewController *)self avatarViewController];
  view5 = [avatarViewController3 view];
  [view4 addSubview:view5];

  view6 = [(CNStarkCardViewController *)self view];
  contactInfoViewController3 = [(CNStarkCardViewController *)self contactInfoViewController];
  view7 = [contactInfoViewController3 view];
  [view6 addSubview:view7];

  view8 = [(CNStarkCardViewController *)self view];
  actionsController3 = [(CNStarkCardViewController *)self actionsController];
  view9 = [actionsController3 view];
  [view8 addSubview:view9];
}

- (void)setupLayoutGuides
{
  v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  view = [(CNStarkCardViewController *)self view];
  [view addLayoutGuide:v6];

  [(CNStarkCardViewController *)self setCenteringLayoutGuide:v6];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  view2 = [(CNStarkCardViewController *)self view];
  [view2 addLayoutGuide:v4];

  [(CNStarkCardViewController *)self setAvatarAndDetailsLayoutGuide:v4];
}

- (void)updateViewControllers
{
  v6[1] = *MEMORY[0x1E69E9840];
  contact = [(CNStarkCardViewController *)self contact];
  v6[0] = contact;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  avatarViewController = [(CNStarkCardViewController *)self avatarViewController];
  [avatarViewController setContacts:v4];
}

- (void)updateNavigationItems
{
  contact = [(CNStarkCardViewController *)self contact];
  phoneNumbers = [contact phoneNumbers];
  if (![phoneNumbers count])
  {
    contact2 = [(CNStarkCardViewController *)self contact];
    emailAddresses = [contact2 emailAddresses];
    if (![emailAddresses count])
    {
      contact3 = [(CNStarkCardViewController *)self contact];
      postalAddresses = [contact3 postalAddresses];
      v13 = [postalAddresses count];

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
  navigationItem = [(CNStarkCardViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9];
}

- (void)showMore:(id)more
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:10];

  if (v6)
  {
    v7 = objc_alloc_init(CNContactContentViewControllerConfiguration);
    displayedContactProperties = [(CNStarkCardViewController *)self displayedContactProperties];
    [(CNContactContentViewControllerConfiguration *)v7 setDisplayedProperties:displayedContactProperties];

    v9 = [CNStarkContactDisplayViewController alloc];
    contact = [(CNStarkCardViewController *)self contact];
    v15 = [(CNStarkContactDisplayViewController *)v9 initWithContact:contact contactViewConfiguration:v7];

    [(CNContactContentDisplayViewController *)v15 setDelegate:self];
  }

  else
  {
    v11 = [CNStarkContactViewController alloc];
    contact2 = [(CNStarkCardViewController *)self contact];
    v15 = [(CNStarkContactViewController *)v11 initWithContact:contact2];

    displayedContactProperties2 = [(CNStarkCardViewController *)self displayedContactProperties];
    [(CNStarkContactDisplayViewController *)v15 setDisplayedProperties:displayedContactProperties2];

    [(CNStarkContactDisplayViewController *)v15 setContactDelegate:self];
  }

  navigationController = [(CNStarkCardViewController *)self navigationController];
  [navigationController pushViewController:v15 animated:1];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CNStarkCardViewController;
  [(CNStarkCardViewController *)&v4 traitCollectionDidChange:change];
  [(CNStarkCardViewController *)self resetLayoutConstraints];
}

- (CNStarkCardViewController)initWithContact:(id)contact displayedContactProperties:(id)properties
{
  contactCopy = contact;
  propertiesCopy = properties;
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

    v14 = [[CNStarkContactInfoViewController alloc] initWithContact:contactCopy];
    contactInfoViewController = v9->_contactInfoViewController;
    v9->_contactInfoViewController = v14;

    v16 = [[CNStarkActionsController alloc] initWithContact:contactCopy];
    actionsController = v9->_actionsController;
    v9->_actionsController = v16;

    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v9->_displayedContactProperties, properties);
    v18 = v9;
  }

  return v9;
}

- (CNStarkCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  selfCopy = self;
  v9 = CNInitializerUnavailableException();
  objc_exception_throw(v9);
}

- (CNStarkCardViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = CNInitializerUnavailableException();
  objc_exception_throw(v6);
}

- (CNStarkCardViewController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)starkCardControllerForCalendarEventWithContact:(id)contact
{
  contactCopy = contact;
  v4 = +[CNStarkContactsListViewController makeContactsDisplayedProperties];
  v5 = [objc_alloc(objc_opt_class()) initWithContact:contactCopy displayedContactProperties:v4];

  return v5;
}

@end