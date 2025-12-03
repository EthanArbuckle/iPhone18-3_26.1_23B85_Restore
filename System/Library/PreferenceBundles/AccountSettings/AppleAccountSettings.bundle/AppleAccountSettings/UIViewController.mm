@interface UIViewController
- (void)aaui_showViewController:(id)controller sender:(id)sender;
@end

@implementation UIViewController

- (void)aaui_showViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_356D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_2E834(controller, v12, v10);

  sub_2DFB0(v10, &qword_69F98, &qword_405E0);
  sub_2DFB0(v12, &qword_69FB8, &qword_40698);
}

@end