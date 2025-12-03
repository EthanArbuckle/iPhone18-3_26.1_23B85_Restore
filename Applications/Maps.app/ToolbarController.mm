@interface ToolbarController
- (ToolbarController)initWithSettingsController:(id)controller;
@end

@implementation ToolbarController

- (ToolbarController)initWithSettingsController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ToolbarController;
  return [(ToolbarController *)&v4 init];
}

@end