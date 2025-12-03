@interface CNStarkContactViewController
- (CGSize)setupTableHeaderView;
- (CNStarkContactViewController)initWithContact:(id)contact;
- (void)_initiateBestiMessagePropertyQuery;
- (void)dealloc;
- (void)loadContactViewControllerViews;
- (void)queryComplete;
- (void)setupConstraints;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CNStarkContactViewController

- (void)queryComplete
{
  bestiMessageQuery = [(CNStarkContactViewController *)self bestiMessageQuery];
  bestIDSProperty = [bestiMessageQuery bestIDSProperty];

  property = [bestIDSProperty property];
  if ([property isEqualToString:*MEMORY[0x1E695C208]])
  {
    displayGroups = [(CNContactContentUnitaryViewController *)self displayGroups];
    iMessageEmailGroup = [(CNStarkContactViewController *)self iMessageEmailGroup];
    v7 = [displayGroups containsObject:iMessageEmailGroup];

    if (v7)
    {
      goto LABEL_15;
    }

    displayGroups2 = [(CNContactContentUnitaryViewController *)self displayGroups];
    cardFaceTimeGroup = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
    if ([displayGroups2 containsObject:cardFaceTimeGroup])
    {
      property = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
    }

    else
    {
      propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
      property = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C330]];
    }

    iMessageEmailGroup2 = [(CNStarkContactViewController *)self iMessageEmailGroup];

    if (!iMessageEmailGroup2)
    {
      [bestIDSProperty setAllowsIMessage:1];
      [bestIDSProperty setAllowsEmail:0];
      v12 = [CNCardiMessageEmailGroup alloc];
      contact = [(CNContactContentUnitaryViewController *)self contact];
      v14 = [(CNCardiMessageEmailGroup *)v12 initWithContact:contact propertyItem:bestIDSProperty];
      [(CNStarkContactViewController *)self setIMessageEmailGroup:v14];
    }

    if (property)
    {
      iMessageEmailGroup3 = [(CNStarkContactViewController *)self iMessageEmailGroup];
      [(CNContactContentUnitaryViewController *)self addCardGroup:iMessageEmailGroup3 afterGroup:property];
    }

    displayGroups3 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v17 = [displayGroups3 indexOfObject:property];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 + 1;
    }

    contactView = [(CNContactContentUnitaryViewController *)self contactView];
    [contactView beginUpdates];
    displayGroups4 = [(CNContactContentUnitaryViewController *)self displayGroups];
    iMessageEmailGroup4 = [(CNStarkContactViewController *)self iMessageEmailGroup];
    [displayGroups4 insertObject:iMessageEmailGroup4 atIndex:v18];

    v22 = [MEMORY[0x1E696AC90] indexSetWithIndex:v18];
    [contactView insertSections:v22 withRowAnimation:6];

    [contactView endUpdates];
  }

LABEL_15:
}

- (void)_initiateBestiMessagePropertyQuery
{
  propertyGroups = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v4 = [propertyGroups objectForKeyedSubscript:*MEMORY[0x1E695C330]];

  propertyGroups2 = [(CNContactContentUnitaryViewController *)self propertyGroups];
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
  v13 = getIDSServiceNameiMessageSymbolLoc_ptr_42786;
  v22 = getIDSServiceNameiMessageSymbolLoc_ptr_42786;
  if (!getIDSServiceNameiMessageSymbolLoc_ptr_42786)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getIDSServiceNameiMessageSymbolLoc_block_invoke_42787;
    v18[3] = &unk_1E74E7518;
    v18[4] = &v19;
    __getIDSServiceNameiMessageSymbolLoc_block_invoke_42787(v18);
    v13 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v13)
  {
    v14 = [(CNPropertyBestIDSValueQuery *)v12 initWithPropertyItems:array service:*v13];
    [(CNStarkContactViewController *)self setBestiMessageQuery:v14];

    bestiMessageQuery = [(CNStarkContactViewController *)self bestiMessageQuery];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v12 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  objc_opt_class();
  v9 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setShowSeparator:1];
  [v11 setSeparatorInset:{0.0, 108.0, 0.0, 0.0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v8 viewWillAppear:appear];
  v4 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  view = [(CNStarkContactViewController *)self view];
  [view setBackgroundColor:v4];

  v6 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView setBackgroundColor:v6];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v3 viewDidLoad];
  [(CNStarkContactViewController *)self _initiateBestiMessagePropertyQuery];
}

- (void)setupConstraints
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNStarkContactViewController *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  widthAnchor = [contactView widthAnchor];
  view = [(CNStarkContactViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v32[0] = v26;
  contactView2 = [(CNContactContentUnitaryViewController *)self contactView];
  heightAnchor = [contactView2 heightAnchor];
  view2 = [(CNStarkContactViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  heightAnchor2 = [safeAreaLayoutGuide2 heightAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v32[1] = v20;
  contactView3 = [(CNContactContentUnitaryViewController *)self contactView];
  topAnchor = [contactView3 topAnchor];
  view3 = [(CNStarkContactViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v6;
  contactView4 = [(CNContactContentUnitaryViewController *)self contactView];
  leftAnchor = [contactView4 leftAnchor];
  view4 = [(CNStarkContactViewController *)self view];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide4 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v32[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [(CNStarkContactViewController *)self setActivatedConstraints:v13];

  v14 = MEMORY[0x1E696ACD8];
  activatedConstraints2 = [(CNStarkContactViewController *)self activatedConstraints];
  [v14 activateConstraints:activatedConstraints2];
}

- (void)loadContactViewControllerViews
{
  v33[3] = *MEMORY[0x1E69E9840];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  view = [(CNStarkContactViewController *)self view];
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
  contact = [(CNContactContentUnitaryViewController *)self contact];
  v27 = [(CNStarkContactNameView *)v25 initWithName:contact];
  [(CNStarkContactViewController *)self setContactNameView:v27];
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
  v5.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v5 viewWillDisappear:disappear];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v5 viewDidAppear:appear];
  contactView = [(CNContactContentUnitaryViewController *)self contactView];
  [contactView becomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v21 viewWillLayoutSubviews];
  contactNameView = [(CNStarkContactViewController *)self contactNameView];
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
  view = [(CNStarkContactViewController *)self view];
  [view frame];
  v14 = CGRectGetWidth(v23) * 0.6;

  if (Width >= v14)
  {
    Width = v14;
  }

  contactNameView2 = [(CNStarkContactViewController *)self contactNameView];
  [contactNameView2 setFrame:{v5, v7, Width, v11}];

  contactNameView3 = [(CNStarkContactViewController *)self contactNameView];
  [contactNameView3 setNeedsLayout];

  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  contactNameView4 = [(CNStarkContactViewController *)self contactNameView];
  v19 = [v17 initWithCustomView:contactNameView4];

  [v19 _setPrefersNoPlatter:1];
  navigationItem = [(CNStarkContactViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v19];
}

- (void)dealloc
{
  bestiMessageQuery = [(CNStarkContactViewController *)self bestiMessageQuery];
  [bestiMessageQuery cancel];

  v4.receiver = self;
  v4.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v4 dealloc];
}

- (CNStarkContactViewController)initWithContact:(id)contact
{
  v8.receiver = self;
  v8.super_class = CNStarkContactViewController;
  v3 = [(CNContactContentUnitaryViewController *)&v8 initWithContact:contact];
  v4 = v3;
  if (v3)
  {
    [(CNContactContentUnitaryViewController *)v3 setAllowsActions:1];
    [(CNContactContentUnitaryViewController *)v4 setAllowsCardActions:0];
    [(CNContactContentUnitaryViewController *)v4 setAllowsEditing:0];
    [(CNContactContentUnitaryViewController *)v4 setAllowsAddingToAddressBook:0];
    [(CNContactContentUnitaryViewController *)v4 setAllowsSharing:0];
    [(CNContactContentUnitaryViewController *)v4 setAllowsAddToFavorites:0];
    v5 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    -[CNContactContentUnitaryViewController setAllowsConferencing:](v4, "setAllowsConferencing:", [v5 isFaceTimeAudioAvailable]);

    v6 = v4;
  }

  return v4;
}

@end