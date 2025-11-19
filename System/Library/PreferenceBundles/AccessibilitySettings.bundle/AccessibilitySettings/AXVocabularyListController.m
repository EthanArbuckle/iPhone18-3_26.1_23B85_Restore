@interface AXVocabularyListController
- (Class)detailViewControllerClass;
- (NSArray)items;
- (id)_detailTextForSpecifier:(id)a3;
- (id)detailTextForItem:(id)a3;
- (id)specifiers;
- (id)textForItem:(id)a3;
- (void)_handleDoneButtonTapped:(id)a3;
- (void)_handleEditButtonTapped:(id)a3;
- (void)_updateEditButton;
- (void)addButtonTapped;
- (void)deleteItem:(id)a3;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AXVocabularyListController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v5 viewDidLoad];
  [(AXVocabularyListController *)self _updateEditButton];
  v3 = [(AXVocabularyListController *)self table];
  [v3 setCountStringInsignificantRowCount:9];

  v4 = [(AXVocabularyListController *)self table];
  [v4 setIndexHidden:0 animated:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v7 viewWillAppear:a3];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addButtonTapped:"];
  v5 = [(AXVocabularyListController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  v6 = [(AXVocabularyListController *)self navigationController];
  [v6 setToolbarHidden:0 animated:1];

  [(AXVocabularyListController *)self _updateEditButton];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v6 viewDidAppear:a3];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addButtonTapped:"];
  v5 = [(AXVocabularyListController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v5 viewWillDisappear:a3];
  v4 = [(AXVocabularyListController *)self navigationController];
  [v4 setToolbarHidden:1 animated:1];

  [(AXVocabularyListController *)self setToolbarItems:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v4 viewDidDisappear:a3];
  [(AXVocabularyListController *)self setEditing:0 animated:0];
  [(AXVocabularyListController *)self _updateEditButton];
}

- (void)_updateEditButton
{
  if ([(AXVocabularyListController *)self isEditing])
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDoneButtonTapped:"];
    v9 = v3;
    v4 = &v9;
LABEL_5:
    v7 = [NSArray arrayWithObjects:v4 count:1];
    [(AXVocabularyListController *)self setToolbarItems:v7];

    return;
  }

  v5 = [(AXVocabularyListController *)self items];
  v6 = [v5 count];

  if (v6)
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_handleEditButtonTapped:"];
    v8 = v3;
    v4 = &v8;
    goto LABEL_5;
  }

  [(AXVocabularyListController *)self setToolbarItems:0];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v19 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(AXVocabularyListController *)self items];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __40__AXVocabularyListController_specifiers__block_invoke;
    v25[3] = &unk_258908;
    v25[4] = self;
    v6 = [v5 sortedArrayUsingComparator:v25];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(AXVocabularyListController *)self detailViewControllerClass];
          v13 = [(AXVocabularyListController *)self textForItem:v11];
          if (v12)
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }

          v15 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_detailTextForSpecifier:" detail:v12 cell:v14 edit:0];

          [v15 setProperty:v11 forKey:@"AXVocabularyListItem"];
          [v4 addObject:v15];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v16 = *&self->AXUISettingsBaseListController_opaque[v19];
    *&self->AXUISettingsBaseListController_opaque[v19] = v4;
    v17 = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v19];
  }

  return v3;
}

id __40__AXVocabularyListController_specifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 textForItem:a2];
  v8 = [*(a1 + 32) textForItem:v6];

  v9 = [v7 localizedCompare:v8];
  return v9;
}

- (id)_detailTextForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"AXVocabularyListItem"];
  v5 = [(AXVocabularyListController *)self detailTextForItem:v4];

  return v5;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = AXVocabularyListController;
  [(AXVocabularyListController *)&v3 reloadSpecifiers];
  [(AXVocabularyListController *)self _updateEditButton];
}

- (void)_handleDoneButtonTapped:(id)a3
{
  [(AXVocabularyListController *)self setEditing:0 animated:1];

  [(AXVocabularyListController *)self _updateEditButton];
}

- (void)_handleEditButtonTapped:(id)a3
{
  [(AXVocabularyListController *)self setEditing:1 animated:1];

  [(AXVocabularyListController *)self _updateEditButton];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    v9 = [(AXVocabularyListController *)self specifierAtIndexPath:v8];
    v10 = [v9 propertyForKey:@"AXVocabularyListItem"];
    [(AXVocabularyListController *)self deleteItem:v10];
    [(AXVocabularyListController *)self removeSpecifier:v9 animated:1];
  }

  v11 = [(AXVocabularyListController *)self items];
  v12 = [v11 count];

  if (!v12)
  {
    [(AXVocabularyListController *)self _handleDoneButtonTapped:0];
  }
}

- (NSArray)items
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)textForItem:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return &stru_25D420;
}

- (id)detailTextForItem:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (Class)detailViewControllerClass
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)deleteItem:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (void)addButtonTapped
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

@end