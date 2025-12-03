@interface ViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)addPoint;
- (void)clearAll;
- (void)copy:(id)copy;
- (void)copyAll;
- (void)nextMeasurement;
- (void)previousMeasurement;
- (void)showDebugController;
- (void)showHistory;
- (void)takeScreenshot;
- (void)undo;
- (void)validateCommand:(id)command;
@end

@implementation ViewController

- (void)addPoint
{
  selfCopy = self;
  sub_1001D122C();
}

- (void)takeScreenshot
{
  selfCopy = self;
  sub_1001D136C();
}

- (void)undo
{
  v2 = *(**(self + qword_1004AF9B0) + 200);
  selfCopy = self;

  v4 = v2(v3);

  (*(*v4 + 280))(sub_100084EAC, 0);
}

- (void)clearAll
{
  v2 = *(self + qword_1004AF910);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    sub_10014F314();
  }
}

- (void)copyAll
{
  selfCopy = self;
  sub_1001CD160();
}

- (void)previousMeasurement
{
  selfCopy = self;
  sub_1001CCA0C(sub_1001564E0, sub_1000C47A8);
}

- (void)nextMeasurement
{
  selfCopy = self;
  sub_1001CCA0C(sub_100156830, sub_1000C49E0);
}

- (void)showHistory
{
  selfCopy = self;
  sub_1001CCB48();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1001D1B10(action, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1001D2094(commandCopy);
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1001D220C();

  sub_100018F04(v6, &unk_1004A6970);
}

- (void)showDebugController
{
  v2 = qword_1004A0180;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = xmmword_1004D4AB8;
  if (xmmword_1004D4AB8)
  {
    v5 = objc_allocWithZone(UINavigationController);
    v6 = v4;
    v7 = [v5 initWithRootViewController:v6];
    [v7 setModalPresentationStyle:-2];
    [(ViewController *)selfCopy presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

@end