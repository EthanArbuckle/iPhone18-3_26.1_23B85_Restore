@interface PageCurlViewController
- (BOOL)canNavigateInDirection:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)passThroughView:(id)a3 gestureRecognizer:(id)a4 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a5;
- (BOOL)passThroughView:(id)a3 shouldPassthroughHitAtPoint:(CGPoint)a4;
- (_TtC5Books22PageCurlViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (double)interactiveAnimationDuration;
- (int64_t)validateTapDirection:(int64_t)a3;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PageCurlViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10058E3D4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10058EAE0();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100598C9C();
}

- (BOOL)canNavigateInDirection:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1005918E4(a3);

  return a3 & 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  ObjectType = swift_getObjectType();
  v9 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = self;
  [(PageCurlViewController *)&v14 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v13 = sub_1007A0F74();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_10058FAF8(v11);
  swift_unknownObjectRelease();

  sub_100007840(v11, &unk_100AEB380);
}

- (_TtC5Books22PageCurlViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)interactiveAnimationDuration
{
  v2 = self;
  v3 = sub_100594CFC();

  return v3;
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  sub_10000A7C4(0, &qword_100AD7CB0);
  v6 = sub_1007A25E4();
  v7 = a3;
  v8 = self;
  sub_1005951E0(v7, v6);
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v9 = self;
  sub_100599518(v8, v6);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100596ACC(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  sub_10000A7C4(0, &qword_100ADAF70);
  v5 = a3;
  v6 = self;
  v7 = sub_10058E1F4();
  LOBYTE(self) = sub_1007A3184();

  if ((self & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v9 = Strong;
    v10 = [Strong gestureRecognizerShouldBegin:v5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (int64_t)validateTapDirection:(int64_t)a3
{
  v4 = self;
  v5 = sub_100596EB4(a3);

  return v5;
}

- (BOOL)passThroughView:(id)a3 gestureRecognizer:(id)a4 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a3;
    v12 = a4;
    v13 = a5;
    v14 = self;
    v15.super.super.isa = v11;
    v16.super.isa = v12;
    v17.super.isa = v13;
    v18 = sub_10079F5B4(v15, v16, v17);
  }

  else
  {
    return 0;
  }

  return v18;
}

- (BOOL)passThroughView:(id)a3 shouldPassthroughHitAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  LOBYTE(self) = sub_100597010(v7, x, y);

  return self & 1;
}

@end