@interface AAUISignOutRemainedInformationActionInvokingOBWelcomeController
- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation AAUISignOutRemainedInformationActionInvokingOBWelcomeController

- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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

  SignOutRemainedInformationActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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

  SignOutRemainedInformationActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v7);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  SignOutRemainedInformationActionInvokingOBWelcomeController.viewDidLoad()();
  MEMORY[0x1E69E5920](self);
}

@end