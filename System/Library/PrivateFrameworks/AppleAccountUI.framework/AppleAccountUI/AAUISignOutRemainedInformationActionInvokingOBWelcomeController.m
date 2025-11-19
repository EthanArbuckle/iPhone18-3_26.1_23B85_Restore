@interface AAUISignOutRemainedInformationActionInvokingOBWelcomeController
- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation AAUISignOutRemainedInformationActionInvokingOBWelcomeController

- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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

  SignOutRemainedInformationActionInvokingOBWelcomeController.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUISignOutRemainedInformationActionInvokingOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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

  SignOutRemainedInformationActionInvokingOBWelcomeController.init(title:detailText:icon:contentLayout:)(v7);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  SignOutRemainedInformationActionInvokingOBWelcomeController.viewDidLoad()();
  MEMORY[0x1E69E5920](self);
}

@end