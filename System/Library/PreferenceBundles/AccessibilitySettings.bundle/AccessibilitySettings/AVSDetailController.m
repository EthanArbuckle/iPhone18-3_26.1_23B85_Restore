@interface AVSDetailController
- (AVSDetailController)initWithIdentifier:(id)a3 title:(id)a4 withCompletion:(id)a5;
- (id)specifiers;
- (void)_removeButtonTapped:(id)a3;
@end

@implementation AVSDetailController

- (AVSDetailController)initWithIdentifier:(id)a3 title:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AVSDetailController;
  v11 = [(AVSDetailController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(AVSDetailController *)v11 navigationItem];
    [v13 setTitle:v9];

    [(AVSDetailController *)v12 setIdentifier:v8];
    [(AVSDetailController *)v12 setCompletion:v10];
    v14 = v12;
  }

  return v12;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = settingsLocString(@"AVS_REMOVE", @"Accessibility");
    v7 = [PSSpecifier deleteButtonSpecifierWithName:v6 target:self action:"_removeButtonTapped:"];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v5 addObject:v7];
    v8 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_removeButtonTapped:(id)a3
{
  v6 = objc_alloc_init(AVSStore);
  [v6 deleteShortcutWithIdentifier:self->_identifier];
  v4 = [(AVSDetailController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  (*(self->_completion + 2))();
}

@end