@interface CNStarkContactDisplayViewController
- (CGSize)setupTableHeaderView;
- (CNStarkContactDisplayViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4;
- (void)_initiateBestiMessagePropertyQuery;
- (void)dealloc;
- (void)loadContactViewControllerViews;
- (void)queryComplete;
- (void)setupConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CNStarkContactDisplayViewController

- (void)queryComplete
{
  v3 = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
  v22 = [v3 bestIDSProperty];

  v4 = [v22 property];
  if ([v4 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v5 = [(CNContactContentDisplayViewController *)self displayGroups];
    v6 = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      goto LABEL_13;
    }

    v8 = [(CNContactContentDisplayViewController *)self displayGroups];
    v9 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
    if ([v8 containsObject:v9])
    {
      v4 = [(CNContactContentDisplayViewController *)self cardFaceTimeGroup];
    }

    else
    {
      v10 = [(CNContactContentDisplayViewController *)self propertyGroups];
      v4 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695C330]];
    }

    v11 = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];

    if (!v11)
    {
      [v22 setAllowsIMessage:1];
      [v22 setAllowsEmail:0];
      v12 = [CNCardiMessageEmailGroup alloc];
      v13 = [(CNContactContentDisplayViewController *)self contact];
      v14 = [(CNCardiMessageEmailGroup *)v12 initWithContact:v13 propertyItem:v22];
      [(CNStarkContactDisplayViewController *)self setIMessageEmailGroup:v14];
    }

    v15 = [(CNContactContentDisplayViewController *)self displayGroups];
    v16 = [v15 indexOfObject:v4];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }

    v18 = [(CNContactContentDisplayViewController *)self contactView];
    [v18 beginUpdates];
    v19 = [(CNContactContentDisplayViewController *)self displayGroups];
    v20 = [(CNStarkContactDisplayViewController *)self iMessageEmailGroup];
    [v19 insertObject:v20 atIndex:v17];

    v21 = [MEMORY[0x1E696AC90] indexSetWithIndex:v17];
    [v18 insertSections:v21 withRowAnimation:6];

    [v18 endUpdates];
  }

LABEL_13:
}

- (void)_initiateBestiMessagePropertyQuery
{
  v3 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695C330]];

  v5 = [(CNContactContentDisplayViewController *)self propertyGroups];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695C208]];

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v4 displayItems];

  if (v8)
  {
    v9 = [v4 displayItems];
    [v7 addObjectsFromArray:v9];
  }

  v10 = [v6 displayItems];

  if (v10)
  {
    v11 = [v6 displayItems];
    [v7 addObjectsFromArray:v11];
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
    v14 = [(CNPropertyBestIDSValueQuery *)v12 initWithPropertyItems:v7 service:*v13];
    [(CNStarkContactDisplayViewController *)self setBestiMessageQuery:v14];

    v15 = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
    [v15 setDelegate:self];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameiMessage(void)"];
    [v16 handleFailureInFunction:v17 file:@"CNUIIDS_SoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v8 viewWillAppear:a3];
  v4 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  v5 = [(CNStarkContactDisplayViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  v7 = [(CNContactContentDisplayViewController *)self contactView];
  [v7 setBackgroundColor:v6];
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
  v4 = [(CNStarkContactDisplayViewController *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [(CNContactContentDisplayViewController *)self contactView];
  v28 = [v5 widthAnchor];
  v29 = [(CNStarkContactDisplayViewController *)self view];
  v27 = [v29 safeAreaLayoutGuide];
  v26 = [v27 widthAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v22 = [v5 heightAnchor];
  v24 = [(CNStarkContactDisplayViewController *)self view];
  v21 = [v24 safeAreaLayoutGuide];
  v20 = [v21 heightAnchor];
  v19 = [v22 constraintEqualToAnchor:v20];
  v30[1] = v19;
  v23 = v5;
  v17 = [v5 topAnchor];
  v18 = [(CNStarkContactDisplayViewController *)self view];
  v6 = [v18 safeAreaLayoutGuide];
  v7 = [v6 topAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v30[2] = v8;
  v9 = [v5 leftAnchor];
  v10 = [(CNStarkContactDisplayViewController *)self view];
  v11 = [v10 safeAreaLayoutGuide];
  v12 = [v11 leftAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];
  v30[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [(CNStarkContactDisplayViewController *)self setActivatedConstraints:v14];

  v15 = MEMORY[0x1E696ACD8];
  v16 = [(CNStarkContactDisplayViewController *)self activatedConstraints];
  [v15 activateConstraints:v16];
}

- (void)loadContactViewControllerViews
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentDisplayViewController *)self contactView];
  v4 = [(CNStarkContactDisplayViewController *)self view];
  [v4 addSubview:v3];

  [v3 setCellsLayoutCachingEnabled:0];
  [v3 setBackgroundView:0];
  [v3 setTableHeaderView:0];
  [v3 setShouldUseMapTiles:0];
  [v3 setLayoutMarginsFollowReadableWidth:0];
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
  [v3 setLabelTextAttributes:v10];

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
  [v3 setValueTextAttributes:v14];

  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v15 = objc_opt_class();
  v16 = [CNContactView cellIdentifierForProperty:0];
  [v3 registerClass:v15 forCellReuseIdentifier:v16];

  v17 = objc_opt_class();
  v18 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C330]];
  [v3 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = objc_opt_class();
  v20 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C208]];
  [v3 registerClass:v19 forCellReuseIdentifier:v20];

  v21 = objc_opt_class();
  v22 = +[CNContactView cellIdentifierForFaceTimeGroup];
  [v3 registerClass:v21 forCellReuseIdentifier:v22];

  v23 = objc_opt_class();
  v24 = [CNContactView cellIdentifierForProperty:*MEMORY[0x1E695C360]];
  [v3 registerClass:v23 forCellReuseIdentifier:v24];

  v25 = [CNStarkContactNameView alloc];
  v26 = [(CNContactContentDisplayViewController *)self contact];
  v27 = [(CNStarkContactNameView *)v25 initWithName:v26];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CNStarkContactDisplayViewController *)self view];
  [v4 resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v5 viewDidAppear:a3];
  v4 = [(CNStarkContactDisplayViewController *)self view];
  [v4 becomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v21 viewWillLayoutSubviews];
  v3 = [(CNStarkContactDisplayViewController *)self contactNameView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Width = CGRectGetWidth(v22);
  v13 = [(CNStarkContactDisplayViewController *)self view];
  [v13 frame];
  v14 = CGRectGetWidth(v23) * 0.6;

  if (Width >= v14)
  {
    Width = v14;
  }

  v15 = [(CNStarkContactDisplayViewController *)self contactNameView];
  [v15 setFrame:{v5, v7, Width, v11}];

  v16 = [(CNStarkContactDisplayViewController *)self contactNameView];
  [v16 setNeedsLayout];

  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  v18 = [(CNStarkContactDisplayViewController *)self contactNameView];
  v19 = [v17 initWithCustomView:v18];

  [v19 _setPrefersNoPlatter:1];
  v20 = [(CNStarkContactDisplayViewController *)self navigationItem];
  [v20 setRightBarButtonItem:v19];
}

- (void)dealloc
{
  v3 = [(CNStarkContactDisplayViewController *)self bestiMessageQuery];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNStarkContactDisplayViewController;
  [(CNContactContentDisplayViewController *)&v4 dealloc];
}

- (CNStarkContactDisplayViewController)initWithContact:(id)a3 contactViewConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 setAllowsActions:1];
  [v6 setAllowsCardActions:0];
  [v6 setAllowsEditing:0];
  [v6 setAllowsAddingToAddressBook:0];
  [v6 setAllowsSharing:0];
  [v6 setAllowsAddToFavorites:0];
  v8 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  [v6 setAllowsConferencing:{objc_msgSend(v8, "isFaceTimeAudioAvailable")}];

  v12.receiver = self;
  v12.super_class = CNStarkContactDisplayViewController;
  v9 = [(CNContactContentDisplayViewController *)&v12 initWithContact:v7 contactViewConfiguration:v6];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

@end