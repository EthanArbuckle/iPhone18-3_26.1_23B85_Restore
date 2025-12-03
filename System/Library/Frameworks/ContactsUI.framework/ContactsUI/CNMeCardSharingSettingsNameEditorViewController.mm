@interface CNMeCardSharingSettingsNameEditorViewController
- (CNMeCardSharingSettingsNameEditorViewController)initWithTextFields:(id)fields;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)setUpCollectionView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNMeCardSharingSettingsNameEditorViewController

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNMeCardSharingSettingsNameEditingCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  textFields = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields];
  v11 = [pathCopy row];

  v12 = [textFields objectAtIndexedSubscript:v11];
  [v9 setTextField:v12];

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields:view];
  v5 = [v4 count];

  return v5;
}

- (void)setUpCollectionView
{
  v11 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:v11];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(CNMeCardSharingSettingsNameEditorViewController *)self view];
  [view frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [v6 setAutoresizingMask:18];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [v6 setAllowsSelection:0];
  v7 = objc_opt_class();
  v8 = +[CNMeCardSharingSettingsNameEditingCell cellIdentifier];
  [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

  [(CNMeCardSharingSettingsNameEditorViewController *)self setCollectionView:v6];
  view2 = [(CNMeCardSharingSettingsNameEditorViewController *)self view];
  collectionView = [(CNMeCardSharingSettingsNameEditorViewController *)self collectionView];
  [view2 addSubview:collectionView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CNMeCardSharingSettingsNameEditorViewController;
  [(CNMeCardSharingSettingsNameEditorViewController *)&v6 viewWillAppear:appear];
  textFields = [(CNMeCardSharingSettingsNameEditorViewController *)self textFields];
  firstObject = [textFields firstObject];

  [firstObject becomeFirstResponder];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsNameEditorViewController;
  [(CNMeCardSharingSettingsNameEditorViewController *)&v3 viewDidLoad];
  [(CNMeCardSharingSettingsNameEditorViewController *)self setUpCollectionView];
}

- (CNMeCardSharingSettingsNameEditorViewController)initWithTextFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [(CNMeCardSharingSettingsNameEditorViewController *)self init];
  if (v5)
  {
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SHARING_NAME_CELL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNMeCardSharingSettingsNameEditorViewController *)v5 setTitle:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneTapped];
    navigationItem = [(CNMeCardSharingSettingsNameEditorViewController *)v5 navigationItem];
    [navigationItem setRightBarButtonItem:v8];

    [(CNMeCardSharingSettingsNameEditorViewController *)v5 setTextFields:fieldsCopy];
    v10 = v5;
  }

  return v5;
}

@end