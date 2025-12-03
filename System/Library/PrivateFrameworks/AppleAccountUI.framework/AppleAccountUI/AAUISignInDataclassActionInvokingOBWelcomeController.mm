@interface AAUISignInDataclassActionInvokingOBWelcomeController
- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelFlow;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUISignInDataclassActionInvokingOBWelcomeController

- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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

  SignInDataclassActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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

  SignInDataclassActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v7);
}

- (void)viewWillAppear:(BOOL)appear
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1C5594AC4();
  SignInDataclassActionInvokingOBWelcomeController.viewWillAppear(_:)(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (void)cancelFlow
{
  MEMORY[0x1E69E5928](self);
  sub_1C548BF54();
  MEMORY[0x1E69E5920](self);
}

@end