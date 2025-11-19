@interface DisplayMainViewController
- (BOOL)backgrounded;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (NSUndoManager)undoManager;
- (SidecarRequest)request;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (void)_batteryStateChangedWithNote:(id)a3;
- (void)loadView;
- (void)receivedItems:(id)a3;
- (void)requestDidFinish:(id)a3;
- (void)requestDidStart:(id)a3;
- (void)setBackgrounded:(BOOL)a3;
- (void)sidecarServiceActive;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DisplayMainViewController

- (NSUndoManager)undoManager
{
  v2 = sub_10002B764();

  return v2;
}

- (SidecarRequest)request
{
  v2 = sub_10002B7F8();

  return v2;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  v2 = self;
  v3 = sub_10002B888();

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_10002B99C();

  return v3 & 1;
}

- (void)loadView
{
  v2 = self;
  sub_10002BC74();
}

- (void)_batteryStateChangedWithNote:(id)a3
{
  v4 = sub_1000575E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000575A0();
  v8 = self;
  sub_10002C78C();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10002D570(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10002D714(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10002D844(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)requestDidStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002D930(v4);
}

- (void)requestDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002DB30(v4);
}

- (void)receivedItems:(id)a3
{
  sub_100005A1C(0, &unk_10007FAA0);
  sub_100057BF0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1000324B0();
}

- (void)sidecarServiceActive
{
  v2 = self;
  sub_1000325B0();
}

- (BOOL)backgrounded
{
  v2 = self;
  v3 = sub_1000357C0();

  return v3 & 1;
}

- (void)setBackgrounded:(BOOL)a3
{
  v4 = self;
  sub_100035844(a3);
}

@end