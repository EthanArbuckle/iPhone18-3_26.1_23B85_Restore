@interface AAUISignOutRemovedInformationActionInvokingOBWelcomeController
- (AAUISignOutRemovedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (AAUISignOutRemovedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUISignOutRemovedInformationActionInvokingOBWelcomeController

- (AAUISignOutRemovedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](name);
  sub_1C5596574();
  if (text)
  {
    sub_1C5596574();
    MEMORY[0x1E69E5920](text);
  }

  if (name)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](name);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  SignOutRemovedInformationActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUISignOutRemovedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](icon);
  sub_1C5596574();
  if (text)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](text);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  SignOutRemovedInformationActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v7);
}

- (void)viewWillAppear:(BOOL)appear
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1C5594AC4();
  SignOutRemovedInformationActionInvokingOBWelcomeController.viewWillAppear(_:)(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  SignOutRemovedInformationActionInvokingOBWelcomeController.viewDidLoad()();
  MEMORY[0x1E69E5920](self);
}

@end