@interface ViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)addPoint;
- (void)clearAll;
- (void)copy:(id)a3;
- (void)copyAll;
- (void)nextMeasurement;
- (void)previousMeasurement;
- (void)showDebugController;
- (void)showHistory;
- (void)takeScreenshot;
- (void)undo;
- (void)validateCommand:(id)a3;
@end

@implementation ViewController

- (void)addPoint
{
  v2 = self;
  sub_1001D122C();
}

- (void)takeScreenshot
{
  v2 = self;
  sub_1001D136C();
}

- (void)undo
{
  v2 = *(**(self + qword_1004AF9B0) + 200);
  v5 = self;

  v4 = v2(v3);

  (*(*v4 + 280))(sub_100084EAC, 0);
}

- (void)clearAll
{
  v2 = *(self + qword_1004AF910);
  if (v2)
  {
    v4 = self;
    v3 = v2;
    sub_10014F314();
  }
}

- (void)copyAll
{
  v2 = self;
  sub_1001CD160();
}

- (void)previousMeasurement
{
  v2 = self;
  sub_1001CCA0C(sub_1001564E0, sub_1000C47A8);
}

- (void)nextMeasurement
{
  v2 = self;
  sub_1001CCA0C(sub_100156830, sub_1000C49E0);
}

- (void)showHistory
{
  v2 = self;
  sub_1001CCB48();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1001D1B10(a3, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D2094(v4);
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1001D220C();

  sub_100018F04(v6, &unk_1004A6970);
}

- (void)showDebugController
{
  v2 = qword_1004A0180;
  v3 = self;
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
    [(ViewController *)v3 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

@end