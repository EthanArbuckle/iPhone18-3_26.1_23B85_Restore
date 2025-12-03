@interface PageCurlViewController
- (BOOL)canNavigateInDirection:(int64_t)direction;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)passThroughView:(id)view gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)passThroughView:(id)view shouldPassthroughHitAtPoint:(CGPoint)point;
- (_TtC5Books22PageCurlViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (double)interactiveAnimationDuration;
- (int64_t)validateTapDirection:(int64_t)direction;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PageCurlViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10058E3D4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10058EAE0();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_100598C9C();
}

- (BOOL)canNavigateInDirection:(int64_t)direction
{
  selfCopy = self;
  LOBYTE(direction) = sub_1005918E4(direction);

  return direction & 1;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  ObjectType = swift_getObjectType();
  v9 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  swift_unknownObjectRetain();
  selfCopy = self;
  [(PageCurlViewController *)&v14 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v13 = sub_1007A0F74();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_10058FAF8(v11);
  swift_unknownObjectRelease();

  sub_100007840(v11, &unk_100AEB380);
}

- (_TtC5Books22PageCurlViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)interactiveAnimationDuration
{
  selfCopy = self;
  v3 = sub_100594CFC();

  return v3;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  sub_10000A7C4(0, &qword_100AD7CB0);
  v6 = sub_1007A25E4();
  controllerCopy = controller;
  selfCopy = self;
  sub_1005951E0(controllerCopy, v6);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  selfCopy = self;
  sub_100599518(controllerCopy, completedCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100596ACC(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  sub_10000A7C4(0, &qword_100ADAF70);
  beginCopy = begin;
  selfCopy = self;
  v7 = sub_10058E1F4();
  LOBYTE(self) = sub_1007A3184();

  if ((self & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v9 = Strong;
    v10 = [Strong gestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (int64_t)validateTapDirection:(int64_t)direction
{
  selfCopy = self;
  v5 = sub_100596EB4(direction);

  return v5;
}

- (BOOL)passThroughView:(id)view gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    viewCopy = view;
    recognizerCopy = recognizer;
    gestureRecognizerCopy = gestureRecognizer;
    selfCopy = self;
    v15.super.super.isa = viewCopy;
    v16.super.isa = recognizerCopy;
    v17.super.isa = gestureRecognizerCopy;
    v18 = sub_10079F5B4(v15, v16, v17);
  }

  else
  {
    return 0;
  }

  return v18;
}

- (BOOL)passThroughView:(id)view shouldPassthroughHitAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100597010(viewCopy, x, y);

  return self & 1;
}

@end