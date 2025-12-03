@interface AVSDetailController
- (AVSDetailController)initWithIdentifier:(id)identifier title:(id)title withCompletion:(id)completion;
- (id)specifiers;
- (void)_removeButtonTapped:(id)tapped;
@end

@implementation AVSDetailController

- (AVSDetailController)initWithIdentifier:(id)identifier title:(id)title withCompletion:(id)completion
{
  identifierCopy = identifier;
  titleCopy = title;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = AVSDetailController;
  v11 = [(AVSDetailController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    navigationItem = [(AVSDetailController *)v11 navigationItem];
    [navigationItem setTitle:titleCopy];

    [(AVSDetailController *)v12 setIdentifier:identifierCopy];
    [(AVSDetailController *)v12 setCompletion:completionCopy];
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

- (void)_removeButtonTapped:(id)tapped
{
  v6 = objc_alloc_init(AVSStore);
  [v6 deleteShortcutWithIdentifier:self->_identifier];
  navigationController = [(AVSDetailController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];

  (*(self->_completion + 2))();
}

@end