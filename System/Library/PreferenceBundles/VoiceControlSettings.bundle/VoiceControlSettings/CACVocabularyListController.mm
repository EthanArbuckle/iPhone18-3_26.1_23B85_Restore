@interface CACVocabularyListController
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
- (void)viewDidLoad;
@end

@implementation CACVocabularyListController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CACVocabularyListController;
  [(CACVocabularyListController *)&v7 viewDidLoad];
  [(CACVocabularyListController *)self _updateEditButton];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addButtonTapped:"];
  v4 = [(CACVocabularyListController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(CACVocabularyListController *)self table];
  [v5 setCountStringInsignificantRowCount:9];

  v6 = [(CACVocabularyListController *)self table];
  [v6 setIndexHidden:0 animated:0];
}

- (void)_updateEditButton
{
  v3 = +[UIBarButtonItem flexibleSpaceItem];
  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = +[NSLocale currentLocale];
  [v4 setLocale:v5];

  [v4 setUsesGroupingSeparator:1];
  v6 = +[CACVocabularyImportExportUtilities maximumNumberOfAllowedEntries];
  v7 = [(CACVocabularyListController *)self items];
  v8 = [v7 count];

  if (v8 <= v6)
  {
    v16 = settingsLocString(@"VOCABULARY_COUNT_UNDER_LIMIT", @"CommandAndControlSettings");
    v17 = [(CACVocabularyListController *)self items];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
    v19 = [v4 stringFromNumber:v18];
    v20 = [NSNumber numberWithUnsignedInteger:v6];
    v21 = [v4 stringFromNumber:v20];
    v15 = [NSString localizedStringWithFormat:v16, v19, v21];

    +[UIColor secondaryLabelColor];
  }

  else
  {
    v9 = settingsLocString(@"VOCABULARY_COUNT_OVER_LIMIT", @"CommandAndControlSettings");
    v10 = [(CACVocabularyListController *)self items];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
    v12 = [v4 stringFromNumber:v11];
    v13 = [NSNumber numberWithUnsignedInteger:v6];
    v14 = [v4 stringFromNumber:v13];
    v15 = [NSString localizedStringWithFormat:v9, v12, v14];

    +[UIColor systemRedColor];
  }
  v22 = ;
  v23 = [[UIBarButtonItem alloc] initWithTitle:v15 menu:0];
  [v23 setTintColor:v22];
  if ([(CACVocabularyListController *)self isEditing])
  {
    v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDoneButtonTapped:"];
    v30[0] = v24;
    v30[1] = v3;
    v30[2] = v23;
    v25 = v30;
  }

  else
  {
    v26 = [(CACVocabularyListController *)self items];
    v27 = [v26 count];

    if (!v27)
    {
      [(CACVocabularyListController *)self setToolbarItems:0];
      goto LABEL_9;
    }

    v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_handleEditButtonTapped:"];
    v29[0] = v24;
    v29[1] = v3;
    v29[2] = v23;
    v25 = v29;
  }

  v28 = [NSArray arrayWithObjects:v25 count:3];
  [(CACVocabularyListController *)self setToolbarItems:v28];

LABEL_9:
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v20 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(CACVocabularyListController *)self items];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_59AC;
    v28[3] = &unk_28EC0;
    v28[4] = self;
    v6 = [v5 sortedArrayUsingComparator:v28];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      v21 = PSEnabledKey;
      v22 = PSCellClassKey;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = +[CACPreferences sharedPreferences];
          v13 = [v12 bestLocaleIdentifier];
          v14 = [v13 hasPrefix:@"en"];

          v15 = [(CACVocabularyListController *)self textForItem:v11];
          if (v14)
          {
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"_detailTextForSpecifier:" detail:0 cell:-1 edit:0];

            [v16 setProperty:objc_opt_class() forKey:v22];
            [v16 setProperty:&__kCFBooleanTrue forKey:v21];
          }

          else
          {
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"_detailTextForSpecifier:" detail:0 cell:3 edit:0];
          }

          [v16 setProperty:v11 forKey:@"CACVocabularyListItem"];
          [v4 addObject:v16];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = *&self->AXUISettingsBaseListController_opaque[v20];
    *&self->AXUISettingsBaseListController_opaque[v20] = v4;
    v18 = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v20];
  }

  return v3;
}

- (id)_detailTextForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"CACVocabularyListItem"];
  v5 = [(CACVocabularyListController *)self detailTextForItem:v4];

  return v5;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = CACVocabularyListController;
  [(CACVocabularyListController *)&v3 reloadSpecifiers];
  [(CACVocabularyListController *)self _updateEditButton];
}

- (void)_handleDoneButtonTapped:(id)a3
{
  [(CACVocabularyListController *)self setEditing:0 animated:1];

  [(CACVocabularyListController *)self _updateEditButton];
}

- (void)_handleEditButtonTapped:(id)a3
{
  [(CACVocabularyListController *)self setEditing:1 animated:1];

  [(CACVocabularyListController *)self _updateEditButton];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    v9 = [(CACVocabularyListController *)self specifierAtIndexPath:v8];
    v10 = [v9 propertyForKey:@"CACVocabularyListItem"];
    [(CACVocabularyListController *)self deleteItem:v10];
    [(CACVocabularyListController *)self removeSpecifier:v9 animated:1];
  }

  v11 = [(CACVocabularyListController *)self items];
  v12 = [v11 count];

  if (!v12)
  {
    [(CACVocabularyListController *)self _handleDoneButtonTapped:0];
  }
}

- (NSArray)items
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)textForItem:(id)a3
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();
  NSRequestConcreteImplementation();
  return &stru_29500;
}

- (id)detailTextForItem:(id)a3
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();
  NSRequestConcreteImplementation();
  return 0;
}

- (Class)detailViewControllerClass
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)deleteItem:(id)a3
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();

  NSRequestConcreteImplementation();
}

- (void)addButtonTapped
{
  sub_5C74();
  objc_opt_class();
  sub_5C64();

  NSRequestConcreteImplementation();
}

@end