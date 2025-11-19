@interface CNStarkContactViewController
- (CGSize)setupTableHeaderView;
- (CNStarkContactViewController)initWithContact:(id)a3;
- (void)_initiateBestiMessagePropertyQuery;
- (void)dealloc;
- (void)loadContactViewControllerViews;
- (void)queryComplete;
- (void)setupConstraints;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CNStarkContactViewController

- (void)queryComplete
{
  v3 = [(CNStarkContactViewController *)self bestiMessageQuery];
  v23 = [v3 bestIDSProperty];

  v4 = [v23 property];
  if ([v4 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v5 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v6 = [(CNStarkContactViewController *)self iMessageEmailGroup];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      goto LABEL_15;
    }

    v8 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v9 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
    if ([v8 containsObject:v9])
    {
      v4 = [(CNContactContentUnitaryViewController *)self cardFaceTimeGroup];
    }

    else
    {
      v10 = [(CNContactContentUnitaryViewController *)self propertyGroups];
      v4 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695C330]];
    }

    v11 = [(CNStarkContactViewController *)self iMessageEmailGroup];

    if (!v11)
    {
      [v23 setAllowsIMessage:1];
      [v23 setAllowsEmail:0];
      v12 = [CNCardiMessageEmailGroup alloc];
      v13 = [(CNContactContentUnitaryViewController *)self contact];
      v14 = [(CNCardiMessageEmailGroup *)v12 initWithContact:v13 propertyItem:v23];
      [(CNStarkContactViewController *)self setIMessageEmailGroup:v14];
    }

    if (v4)
    {
      v15 = [(CNStarkContactViewController *)self iMessageEmailGroup];
      [(CNContactContentUnitaryViewController *)self addCardGroup:v15 afterGroup:v4];
    }

    v16 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v17 = [v16 indexOfObject:v4];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 + 1;
    }

    v19 = [(CNContactContentUnitaryViewController *)self contactView];
    [v19 beginUpdates];
    v20 = [(CNContactContentUnitaryViewController *)self displayGroups];
    v21 = [(CNStarkContactViewController *)self iMessageEmailGroup];
    [v20 insertObject:v21 atIndex:v18];

    v22 = [MEMORY[0x1E696AC90] indexSetWithIndex:v18];
    [v19 insertSections:v22 withRowAnimation:6];

    [v19 endUpdates];
  }

LABEL_15:
}

- (void)_initiateBestiMessagePropertyQuery
{
  v3 = [(CNContactContentUnitaryViewController *)self propertyGroups];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695C330]];

  v5 = [(CNContactContentUnitaryViewController *)self propertyGroups];
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
    v14 = [(CNPropertyBestIDSValueQuery *)v12 initWithPropertyItems:v7 service:*v13];
    [(CNStarkContactViewController *)self setBestiMessageQuery:v14];

    v15 = [(CNStarkContactViewController *)self bestiMessageQuery];
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v12 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  objc_opt_class();
  v9 = v8;
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

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v8 viewWillAppear:a3];
  v4 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  v5 = [(CNStarkContactViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
  v7 = [(CNContactContentUnitaryViewController *)self contactView];
  [v7 setBackgroundColor:v6];
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
  v4 = [(CNStarkContactViewController *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  v31 = [(CNContactContentUnitaryViewController *)self contactView];
  v29 = [v31 widthAnchor];
  v30 = [(CNStarkContactViewController *)self view];
  v28 = [v30 safeAreaLayoutGuide];
  v27 = [v28 widthAnchor];
  v26 = [v29 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(CNContactContentUnitaryViewController *)self contactView];
  v23 = [v25 heightAnchor];
  v24 = [(CNStarkContactViewController *)self view];
  v22 = [v24 safeAreaLayoutGuide];
  v21 = [v22 heightAnchor];
  v20 = [v23 constraintEqualToAnchor:v21];
  v32[1] = v20;
  v19 = [(CNContactContentUnitaryViewController *)self contactView];
  v17 = [v19 topAnchor];
  v18 = [(CNStarkContactViewController *)self view];
  v16 = [v18 safeAreaLayoutGuide];
  v5 = [v16 topAnchor];
  v6 = [v17 constraintEqualToAnchor:v5];
  v32[2] = v6;
  v7 = [(CNContactContentUnitaryViewController *)self contactView];
  v8 = [v7 leftAnchor];
  v9 = [(CNStarkContactViewController *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [v10 leftAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  v32[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  [(CNStarkContactViewController *)self setActivatedConstraints:v13];

  v14 = MEMORY[0x1E696ACD8];
  v15 = [(CNStarkContactViewController *)self activatedConstraints];
  [v14 activateConstraints:v15];
}

- (void)loadContactViewControllerViews
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentUnitaryViewController *)self contactView];
  v4 = [(CNStarkContactViewController *)self view];
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
  v26 = [(CNContactContentUnitaryViewController *)self contact];
  v27 = [(CNStarkContactNameView *)v25 initWithName:v26];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  [v4 resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v5 viewDidAppear:a3];
  v4 = [(CNContactContentUnitaryViewController *)self contactView];
  [v4 becomeFirstResponder];
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v21 viewWillLayoutSubviews];
  v3 = [(CNStarkContactViewController *)self contactNameView];
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
  v13 = [(CNStarkContactViewController *)self view];
  [v13 frame];
  v14 = CGRectGetWidth(v23) * 0.6;

  if (Width >= v14)
  {
    Width = v14;
  }

  v15 = [(CNStarkContactViewController *)self contactNameView];
  [v15 setFrame:{v5, v7, Width, v11}];

  v16 = [(CNStarkContactViewController *)self contactNameView];
  [v16 setNeedsLayout];

  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  v18 = [(CNStarkContactViewController *)self contactNameView];
  v19 = [v17 initWithCustomView:v18];

  [v19 _setPrefersNoPlatter:1];
  v20 = [(CNStarkContactViewController *)self navigationItem];
  [v20 setRightBarButtonItem:v19];
}

- (void)dealloc
{
  v3 = [(CNStarkContactViewController *)self bestiMessageQuery];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNStarkContactViewController;
  [(CNContactContentUnitaryViewController *)&v4 dealloc];
}

- (CNStarkContactViewController)initWithContact:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNStarkContactViewController;
  v3 = [(CNContactContentUnitaryViewController *)&v8 initWithContact:a3];
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