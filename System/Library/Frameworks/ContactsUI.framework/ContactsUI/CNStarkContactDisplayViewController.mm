@interface CNStarkContactDisplayViewController
- (CGSize)setupTableHeaderView;
- (CNStarkContactDisplayViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration;
- (void)_initiateBestiMessagePropertyQuery;
- (void)dealloc;
- (void)loadContactViewControllerViews;
- (void)queryComplete;
- (void)setupConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CNStarkContactDisplayViewController

- (void)queryComplete
{
  bestiMessageQuery = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
  bestIDSProperty = [bestiMessageQuery bestIDSProperty];

  property = [bestIDSProperty property];
  if ([property isEqualToString:*MEMORY[0x1E695C208]])
  {
    displayGroups = [(CNContactContentDisplayViewController *)self displayGroups];
    iMessageEmailGroup = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];
    v7 = [displayGroups containsObject:iMessageEmailGroup];

    if (v7)
    {
      goto LABEL_13;
    }

    displayGroups2 = [(CNContactContentDisplayViewController *)self displayGroups];
    cardFaceTimeGroup = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
    if ([displayGroups2 containsObject:cardFaceTimeGroup])
    {
      property = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
    }

    else
    {
      propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
      property = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C330]];
    }

    iMessageEmailGroup2 = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];

    if (!iMessageEmailGroup2)
    {
      [bestIDSProperty setAllowsIMessage:1];
      [bestIDSProperty setAllowsEmail:0];
      v12 = [CNCardiMessageEmailGroup alloc];
      contact = [(CNContactContentDisplayViewController *)self contact];
      v14 = [(CNCardiMessageEmailGroup *)v12 initWithContact:contact propertyItem:bestIDSProperty];
      [(CNStarkContactDisplayViewController *)self setIMessageEmailGroup:v14];
    }

    displayGroups3 = [(CNContactContentDisplayViewController *)self displayGroups];
    v16 = [displayGroups3 indexOfObject:property];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }

    contactView = [(CNContactContentDisplayViewController *)self contactView];
    [contactView beginUpdates];
    displayGroups4 = [(CNContactContentDisplayViewController *)self displayGroups];
    iMessageEmailGroup3 = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];
    [displayGroups4 insertObject:iMessageEmailGroup3 atIndex:v17];

    v21 = [MEMORY[0x1E696AC90] indexSetWithIndex:v17];
    [contactView insertSections:v21 withRowAnimation:6];

    [contactView endUpdates];
  }

LABEL_13:
}

- (void)_initiateBestiMessagePropertyQuery
{
  propertyGroups = [(CNContactContentDisplayViewController *)self propertyGroups];
  v4 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C330]];

  propertyGroups2 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [propertyGroups2 objectForKeyedSubscript:*MEMORY[0x1E695C208]];

  array = [MEMORY[0x1E695DF70] array];
  displayItems = [v4 displayItems];

  if (displayItems)
  {
    displayItems2 = [v4 displayItems];
    [array addObjectsFromArray:displayItems2];
  }

  displayItems3 = [v6 displayItems];

  if (displayItems3)
  {
    displayItems4 = [v6 displayItems];
    [array addObjectsFromArray:displayItems4];
  }

  v12 = [CNPropertyBestIDSValueQuery alloc];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v13 = getIDSServiceNameiMessageSymbolLoc_ptr_52237;
  v22 = getIDSServiceNameiMessageSymbolLoc_ptr_52237;
  if (!getIDSServiceNameiMessageSymbolLoc_ptr_52237)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getIDSServiceNameiMessageSymbolLoc_block_invoke_52238;
    v18[3] = &unk_1E74E7518;
    v18[4] = &v19;
    __getIDSServiceNameiMessageSymbolLoc_block_invoke_52238(v18);
    v13 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v13)
  {
    v14 = [(CNPropertyBestIDSValueQuery *)v12 initWithPropertyItems:array service:*v13];
    [(CNStarkContactDisplayViewController *)self setBestiMessageQuery:v14];

    bestiMessageQuery = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
    [bestiMessageQuery setDelegate:self];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameiMessage(void)"];
    [currentHandler handleFailureInFunction:v17 file:@"CNUIIDS_SoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v8 viewWillAppear:appear];
  v4 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  view = [(CNStarkContactDisplayViewController *)self view];
  [view setBackgroundColor:v4];

  v6 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  [contactView setBackgroundColor:v6];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v3 viewDidLoad];
  [(CNStarkContactDisplayViewController *)self _initiateBestiMessagePropertyQuery];
}

- (void)setupConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNStarkContactDisplayViewController *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

  contactView = [(CNContactContentDisplayViewController *)self contactView];
  widthAnchor = [contactView widthAnchor];
  view = [(CNStarkContactDisplayViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v30[0] = v25;
  heightAnchor = [contactView heightAnchor];
  view2 = [(CNStarkContactDisplayViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  heightAnchor2 = [safeAreaLayoutGuide2 heightAnchor];
  v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v30[1] = v19;
  v23 = contactView;
  topAnchor = [contactView topAnchor];
  view3 = [(CNStarkContactDisplayViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v8;
  leftAnchor = [contactView leftAnchor];
  view4 = [(CNStarkContactDisplayViewController *)self view];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide4 leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v30[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [(CNStarkContactDisplayViewController *)self setActivatedConstraints:v14];

  v15 = MEMORY[0x1E696ACD8];
  activatedConstraints2 = [(CNStarkContactDisplayViewController *)self activatedConstraints];
  [v15 activateConstraints:activatedConstraints2];
}

- (void)loadContactViewControllerViews
{
  v33[3] = *MEMORY[0x1E69E9840];
  contactView = [(CNContactContentDisplayViewController *)self contactView];
  view = [(CNStarkContactDisplayViewController *)self view];
  [view addSubview:contactView];

  [contactView setCellsLayoutCachingEnabled:0];
  [contactView setBackgroundView:0];
  [contactView setTableHeaderView:0];
  [contactView setShouldUseMapTiles:0];
  [contactView setLayoutMarginsFollowReadableWidth:0];
  v30 = *MEMORY[0x1E69DB648];
  v5 = v30;
  v6 = +[CNUIFontRepository carPlayTableViewCellTitleFont];
  v33[0] = v6;
  v31 = *MEMORY[0x1E69DB650];
  v7 = v31;
  v8 = +[CNUIColorRepository carPlayTableViewCellTitleTextColor];
  v33[1] = v8;
  v32 = @"ABHilightedColorAttributeName";
  v9 = +[CNUIColorRepository carPlayTableViewCellTitleTextHighlightedColor];
  v33[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v30 count:3];
  [contactView setLabelTextAttributes:v10];

  v28[0] = v5;
  v11 = +[CNUIFontRepository carPlayTableViewCellSubtitleFont];
  v29[0] = v11;
  v28[1] = v7;
  v12 = +[CNUIColorRepository carPlayTableViewCellSubtitleTextColor];
  v29[1] = v12;
  v28[2] = @"ABHilightedColorAttributeName";
  v13 = +[CNUIColorRepository carPlayTableViewCellSubtitleTextHighlightedColor];
  v29[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  [contactView setValueTextAttributes:v14];

  [contactView setDataSource:self];
  [contactView setDelegate:self];
  v15 = objc_opt_class();
  v16 = [CNContactView cellIdentifierForProperty:0];
  [contactView registerClass:v15 forCellReuseIdentifier:v16];

  v17 = objc_opt_class();
  v18 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C330]];
  [contactView registerClass:v17 forCellReuseIdentifier:v18];

  v19 = objc_opt_class();
  v20 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C208]];
  [contactView registerClass:v19 forCellReuseIdentifier:v20];

  v21 = objc_opt_class();
  v22 = +[CNContactView cellIdentifierForFaceTimeGroup];
  [contactView registerClass:v21 forCellReuseIdentifier:v22];

  v23 = objc_opt_class();
  v24 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C360]];
  [contactView registerClass:v23 forCellReuseIdentifier:v24];

  v25 = [CNStarkContactNameView alloc];
  contact = [(CNContactContentDisplayViewController *)self contact];
  v27 = [(CNStarkContactNameView *)v25 initWithName:contact];
  [(CNStarkContactDisplayViewController *)self setContactNameView:v27];
}

- (CGSize)setupTableHeaderView
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v5 viewWillDisappear:disappear];
  view = [(CNStarkContactDisplayViewController *)self view];
  [view resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v5 viewDidAppear:appear];
  view = [(CNStarkContactDisplayViewController *)self view];
  [view becomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v21 viewWillLayoutSubviews];
  contactNameView = [(CNStarkContactDisplayViewController *)self contactNameView];
  [contactNameView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Width = CGRectGetWidth(v22);
  view = [(CNStarkContactDisplayViewController *)self view];
  [view frame];
  v14 = CGRectGetWidth(v23) * 0.6;

  if (Width >= v14)
  {
    Width = v14;
  }

  contactNameView2 = [(CNStarkContactDisplayViewController *)self contactNameView];
  [contactNameView2 setFrame:{v5, v7, Width, v11}];

  contactNameView3 = [(CNStarkContactDisplayViewController *)self contactNameView];
  [contactNameView3 setNeedsLayout];

  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  contactNameView4 = [(CNStarkContactDisplayViewController *)self contactNameView];
  v19 = [v17 initWithCustomView:contactNameView4];

  [v19 _setPrefersNoPlatter:1];
  navigationItem = [(CNStarkContactDisplayViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v19];
}

- (void)dealloc
{
  bestiMessageQuery = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
  [bestiMessageQuery cancel];

  v4.receiver = self;
  v4.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v4 dealloc];
}

- (CNStarkContactDisplayViewController)initWithContact:(id)contact contactViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  contactCopy = contact;
  [configurationCopy setAllowsActions:1];
  [configurationCopy setAllowsCardActions:0];
  [configurationCopy setAllowsEditing:0];
  [configurationCopy setAllowsAddingToAddressBook:0];
  [configurationCopy setAllowsSharing:0];
  [configurationCopy setAllowsAddToFavorites:0];
  v8 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  [configurationCopy setAllowsConferencing:{objc_msgSend(v8, "isFaceTimeAudioAvailable")}];

  v12.receiver = self;
  v12.super_class = CNStarkContactDisplayViewController;
  v9 = [(CNContactContentDisplayViewController *)&v12 initWithContact:contactCopy contactViewConfiguration:configurationCopy];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

@end