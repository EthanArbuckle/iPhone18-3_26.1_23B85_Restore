@interface AAUISignInDataclassActionInvokingOBWelcomeController
- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelFlow;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AAUISignInDataclassActionInvokingOBWelcomeController

- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1C5596574();
  if (a4)
  {
    sub_1C5596574();
    MEMORY[0x1E69E5920](a4);
  }

  if (a5)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](a5);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  SignInDataclassActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUISignInDataclassActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1C5596574();
  if (a4)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](a4);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  SignInDataclassActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v7);
}

- (void)viewWillAppear:(BOOL)a3
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