@interface CPSURLOverrideDetailsController
- (CPSURLOverrideDetailsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)_anyTextFieldDidUpdate:(id)update;
- (void)cancelAndDismiss:(id)dismiss;
- (void)chooseImage:(id)image;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)removeOverride:(id)override;
- (void)saveAndDismiss:(id)dismiss;
- (void)setModel:(id)model;
- (void)setModelValue:(id)value forSpecifier:(id)specifier;
- (void)updateHeroImageSpecifier;
- (void)updateSaveItem;
- (void)viewDidLoad;
@end

@implementation CPSURLOverrideDetailsController

- (CPSURLOverrideDetailsController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = CPSURLOverrideDetailsController;
  v4 = [(CPSURLOverrideDetailsController *)&v11 initWithNibName:name bundle:bundle];
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
  table = [(CPSURLOverrideDetailsController *)self table];
  [table setKeyboardDismissMode:1];

  navigationItem = [(CPSURLOverrideDetailsController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:self->_cancelItem];
  [navigationItem setRightBarButtonItem:self->_saveItem];
}

- (void)saveAndDismiss:(id)dismiss
{
  [(CPSDeveloperOverride *)self->_model save];
  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dismissHandler[2](dismissHandler, 1);
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
  navigationController = [(CPSURLOverrideDetailsController *)self navigationController];
  v6 = [navigationController popViewControllerAnimated:1];

  SFKillProcessNamed();
}

- (void)cancelAndDismiss:(id)dismiss
{
  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dismissHandler[2](dismissHandler, 0, dismiss);
  }

  navigationController = [(CPSURLOverrideDetailsController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (void)setModel:(id)model
{
  objc_storeStrong(&self->_model, model);
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

- (void)setModelValue:(id)value forSpecifier:(id)specifier
{
  [(CPSDeveloperOverride *)self->_model setValue:value forSpecifier:specifier];

  [(CPSURLOverrideDetailsController *)self updateSaveItem];
}

- (void)_anyTextFieldDidUpdate:(id)update
{
  object = [update object];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_opt_self();
    v8 = sub_2FB0(object, v7);

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
              text = [object text];
              v17 = [(CPSURLOverrideDetailsController *)self specifierForID:v14];
              [(CPSURLOverrideDetailsController *)self setModelValue:text forSpecifier:v17];

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
  isComplete = [(CPSDeveloperOverride *)self->_model isComplete];
  saveItem = self->_saveItem;

  [(UIBarButtonItem *)saveItem setEnabled:isComplete];
}

- (void)updateHeroImageSpecifier
{
  if ([(CPSDeveloperOverride *)self->_model heroImage])
  {
    specifiers = [(CPSURLOverrideDetailsController *)self specifiers];
    v5 = [specifiers specifierForID:@"CardPreviewSpecifier"];

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

- (void)chooseImage:(id)image
{
  v6 = objc_alloc_init(PHPickerConfiguration);
  v4 = +[PHPickerFilter imagesFilter];
  [v6 setFilter:v4];

  v5 = [[PHPickerViewController alloc] initWithConfiguration:v6];
  [v5 setDelegate:self];
  [(CPSURLOverrideDetailsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)removeOverride:(id)override
{
  [(CPSDeveloperOverride *)self->_model clear];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
  navigationController = [(CPSURLOverrideDetailsController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];

  SFKillProcessNamed();
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  [picker dismissViewControllerAnimated:1 completion:0];
  firstObject = [pickingCopy firstObject];

  itemProvider = [firstObject itemProvider];

  v9 = objc_opt_self();
  LODWORD(firstObject) = [itemProvider canLoadObjectOfClass:v9];

  if (firstObject)
  {
    v10 = objc_opt_self();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_33E0;
    v12[3] = &unk_30EC8;
    v12[4] = self;
    v11 = [itemProvider loadObjectOfClass:v10 completionHandler:v12];
  }
}

@end