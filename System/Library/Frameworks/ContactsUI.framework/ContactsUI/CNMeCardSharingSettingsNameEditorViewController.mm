@interface CNMeCardSharingSettingsNameEditorViewController
- (CNMeCardSharingSettingsNameEditorViewController)initWithTextFields:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)setUpCollectionView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNMeCardSharingSettingsNameEditorViewController

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNMeCardSharingSettingsNameEditingCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];
  [v9 setTextField:v12];

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields:a3];
  v5 = [v4 count];

  return v5;
}

- (void)setUpCollectionView
{
  v11 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:v11];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(CNMeCardSharingSettingsNameEditorViewController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [v6 setAutoresizingMask:18];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [v6 setAllowsSelection:0];
  v7 = objc_opt_class();
  v8 = +[CNMeCardSharingSettingsNameEditingCell cellIdentifier];
  [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

  [(CNMeCardSharingSettingsNameEditorViewController *)self setCollectionView:v6];
  v9 = [(CNMeCardSharingSettingsNameEditorViewController *)self view];
  v10 = [(CNMeCardSharingSettingsNameEditorViewController *)self collectionView];
  [v9 addSubview:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNMeCardSharingSettingsNameEditorViewController;
  [(CNMeCardSharingSettingsNameEditorViewController *)&v6 viewWillAppear:a3];
  v4 = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields];
  v5 = [v4 firstObject];

  [v5 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsNameEditorViewController;
  [(CNMeCardSharingSettingsNameEditorViewController *)&v3 viewDidLoad];
  [(CNMeCardSharingSettingsNameEditorViewController *)self setUpCollectionView];
}

- (CNMeCardSharingSettingsNameEditorViewController)initWithTextFields:(id)a3
{
  v4 = a3;
  v5 = [(CNMeCardSharingSettingsNameEditorViewController *)self init];
  if (v5)
  {
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SHARING_NAME_CELL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNMeCardSharingSettingsNameEditorViewController *)v5 setTitle:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneTapped];
    v9 = [(CNMeCardSharingSettingsNameEditorViewController *)v5 navigationItem];
    [v9 setRightBarButtonItem:v8];

    [(CNMeCardSharingSettingsNameEditorViewController *)v5 setTextFields:v4];
    v10 = v5;
  }

  return v5;
}

@end