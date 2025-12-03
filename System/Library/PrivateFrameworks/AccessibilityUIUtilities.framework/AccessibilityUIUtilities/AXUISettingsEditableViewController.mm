@interface AXUISettingsEditableViewController
- (id)specifiers;
- (void)_configureEditButton;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXUISettingsEditableViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXUISettingsEditableViewController;
  [(AXUISettingsEditableViewController *)&v4 viewWillAppear:appear];
  [(AXUISettingsEditableViewController *)self _configureEditButton];
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    makeSpecifiers = [(AXUISettingsEditableViewController *)self makeSpecifiers];
    v6 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = makeSpecifiers;

    [(AXUISettingsEditableViewController *)self _configureEditButton];
    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [(AXUISettingsEditableViewController *)self specifierAtIndexPath:path];
    [(AXUISettingsEditableViewController *)self removeDataForSpecifier:v7];
    [(AXUISettingsEditableViewController *)self removeSpecifier:v7 animated:1];
    if (![(AXUISettingsEditableViewController *)self canEditTable])
    {
      [(PSEditableListController *)self setEditable:0];
    }
  }
}

- (void)_configureEditButton
{
  v3 = [(AXUISettingsEditableViewController *)self canEditTable]^ 1;

  [(PSEditableListController *)self setEditingButtonHidden:v3 animated:1];
}

@end