@interface CPSURLOverrideDetailsController
- (CPSURLOverrideDetailsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)_anyTextFieldDidUpdate:(id)a3;
- (void)cancelAndDismiss:(id)a3;
- (void)chooseImage:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)removeOverride:(id)a3;
- (void)saveAndDismiss:(id)a3;
- (void)setModel:(id)a3;
- (void)setModelValue:(id)a3 forSpecifier:(id)a4;
- (void)updateHeroImageSpecifier;
- (void)updateSaveItem;
- (void)viewDidLoad;
@end

@implementation CPSURLOverrideDetailsController

- (CPSURLOverrideDetailsController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = CPSURLOverrideDetailsController;
  v4 = [(CPSURLOverrideDetailsController *)&v11 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"cancelAndDismiss:"];
    cancelItem = v4->_cancelItem;
    v4->_cancelItem = v5;

    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:v4 action:"saveAndDismiss:"];
    saveItem = v4->_saveItem;
    v4->_saveItem = v7;

    v9 = v4;
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CPSURLOverrideDetailsController;
  [(CPSURLOverrideDetailsController *)&v5 viewDidLoad];
  v3 = [(CPSURLOverrideDetailsController *)self table];
  [v3 setKeyboardDismissMode:1];

  v4 = [(CPSURLOverrideDetailsController *)self navigationItem];
  [v4 setLeftBarButtonItem:self->_cancelItem];
  [v4 setRightBarButtonItem:self->_saveItem];
}

- (void)saveAndDismiss:(id)a3
{
  [(CPSDeveloperOverride *)self->_model save];
  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dismissHandler[2](dismissHandler, 1);
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
  v5 = [(CPSURLOverrideDetailsController *)self navigationController];
  v6 = [v5 popViewControllerAnimated:1];

  SFKillProcessNamed();
}

- (void)cancelAndDismiss:(id)a3
{
  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dismissHandler[2](dismissHandler, 0, a3);
  }

  v6 = [(CPSURLOverrideDetailsController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (void)setModel:(id)a3
{
  objc_storeStrong(&self->_model, a3);
  [(CPSURLOverrideDetailsController *)self updateHeroImageSpecifier];

  [(CPSURLOverrideDetailsController *)self updateSaveItem];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (qword_35D28 != -1)
    {
      sub_24670();
    }

    v6 = qword_35D20;
    v7 = [(CPSURLOverrideDetailsController *)self loadSpecifiersFromPlistName:@"URLOverrideDetailsSettings" target:self bundle:v6];

    v8 = [v7 specifierForID:@"RESET"];
    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v9 = OBJC_IVAR___PSViewController__specifier;
    v10 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"DeveloperOverride"];

    if (!v10)
    {
      [v7 removeObject:v8];
    }

    objc_storeStrong(&self->PSListController_opaque[v2], v7);
    v11 = [*&self->PSListController_opaque[v9] propertyForKey:@"DeveloperOverride"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(CPSDeveloperOverride);
    }

    v14 = v13;

    [(CPSURLOverrideDetailsController *)self setModel:v14];
    v4 = *&self->PSListController_opaque[v2];
  }

  return v4;
}

- (void)setModelValue:(id)a3 forSpecifier:(id)a4
{
  [(CPSDeveloperOverride *)self->_model setValue:a3 forSpecifier:a4];

  [(CPSURLOverrideDetailsController *)self updateSaveItem];
}

- (void)_anyTextFieldDidUpdate:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_opt_self();
    v8 = sub_2FB0(v4, v7);

    if (v8)
    {
      v23[0] = @"URL_OVERRIDE";
      v23[1] = @"URL_OVERRIDE_CLIP_BUNDLE_ID";
      v23[2] = @"ABR_TITLE";
      v23[3] = @"ABR_SUBTITLE";
      [NSArray arrayWithObjects:v23 count:4];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v21 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [(CPSURLOverrideDetailsController *)self cachedCellForSpecifierID:v14, v18];

            if (v15 == v8)
            {
              v16 = [v4 text];
              v17 = [(CPSURLOverrideDetailsController *)self specifierForID:v14];
              [(CPSURLOverrideDetailsController *)self setModelValue:v16 forSpecifier:v17];

              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (void)updateSaveItem
{
  v3 = [(CPSDeveloperOverride *)self->_model isComplete];
  saveItem = self->_saveItem;

  [(UIBarButtonItem *)saveItem setEnabled:v3];
}

- (void)updateHeroImageSpecifier
{
  if ([(CPSDeveloperOverride *)self->_model heroImage])
  {
    v3 = [(CPSURLOverrideDetailsController *)self specifiers];
    v5 = [v3 specifierForID:@"CardPreviewSpecifier"];

    if (v5)
    {
      [(CPSURLOverrideDetailsController *)self reloadSpecifier:v5];
    }

    else
    {
      v4 = [(CPSURLOverrideDetailsController *)self indexOfSpecifierID:@"ABR_HERO_IMAGE"];
      v5 = [CPSCardPreviewTableViewCell specifierForOverride:self->_model];
      [v5 setIdentifier:@"CardPreviewSpecifier"];
      [(CPSURLOverrideDetailsController *)self insertSpecifier:v5 atIndex:v4];
    }
  }
}

- (void)chooseImage:(id)a3
{
  v6 = objc_alloc_init(PHPickerConfiguration);
  v4 = +[PHPickerFilter imagesFilter];
  [v6 setFilter:v4];

  v5 = [[PHPickerViewController alloc] initWithConfiguration:v6];
  [v5 setDelegate:self];
  [(CPSURLOverrideDetailsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)removeOverride:(id)a3
{
  [(CPSDeveloperOverride *)self->_model clear];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
  v4 = [(CPSURLOverrideDetailsController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  SFKillProcessNamed();
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = a4;
  [a3 dismissViewControllerAnimated:1 completion:0];
  v7 = [v6 firstObject];

  v8 = [v7 itemProvider];

  v9 = objc_opt_self();
  LODWORD(v7) = [v8 canLoadObjectOfClass:v9];

  if (v7)
  {
    v10 = objc_opt_self();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_33E0;
    v12[3] = &unk_30EC8;
    v12[4] = self;
    v11 = [v8 loadObjectOfClass:v10 completionHandler:v12];
  }
}

@end