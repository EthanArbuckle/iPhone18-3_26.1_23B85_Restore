@interface DisplayMainViewController
- (BOOL)backgrounded;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (NSUndoManager)undoManager;
- (SidecarRequest)request;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (void)_batteryStateChangedWithNote:(id)note;
- (void)loadView;
- (void)receivedItems:(id)items;
- (void)requestDidFinish:(id)finish;
- (void)requestDidStart:(id)start;
- (void)setBackgrounded:(BOOL)backgrounded;
- (void)sidecarServiceActive;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  selfCopy = self;
  v3 = sub_10002B888();

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  selfCopy = self;
  v3 = sub_10002B99C();

  return v3 & 1;
}

- (void)loadView
{
  selfCopy = self;
  sub_10002BC74();
}

- (void)_batteryStateChangedWithNote:(id)note
{
  v4 = sub_1000575E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000575A0();
  selfCopy = self;
  sub_10002C78C();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10002D570(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10002D714(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002D844(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)requestDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_10002D930(startCopy);
}

- (void)requestDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_10002DB30(finishCopy);
}

- (void)receivedItems:(id)items
{
  sub_100005A1C(0, &unk_10007FAA0);
  sub_100057BF0();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1000324B0();
}

- (void)sidecarServiceActive
{
  selfCopy = self;
  sub_1000325B0();
}

- (BOOL)backgrounded
{
  selfCopy = self;
  v3 = sub_1000357C0();

  return v3 & 1;
}

- (void)setBackgrounded:(BOOL)backgrounded
{
  selfCopy = self;
  sub_100035844(backgrounded);
}

@end