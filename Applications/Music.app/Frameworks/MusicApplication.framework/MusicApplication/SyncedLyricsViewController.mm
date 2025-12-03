@interface SyncedLyricsViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC7LyricsX26SyncedLyricsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)displayLinkFired:(id)fired;
- (void)menuHandler:(id)handler;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)shareGestureHandler:(id)handler;
- (void)tapHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation SyncedLyricsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  SyncedLyricsViewController.viewDidLoad()();
}

- (void)tapHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  sub_9819CC(handlerCopy);
}

- (void)menuHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  sub_996BD4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  SyncedLyricsViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  SyncedLyricsViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  SyncedLyricsViewController.viewDidLayoutSubviews()();
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  SyncedLyricsViewController.viewLayoutMarginsDidChange()();
}

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;
  selfCopy = self;
  sub_997018();
}

- (void)shareGestureHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  if ([(SyncedLyricsViewController *)handlerCopy state]== &dword_0 + 1)
  {
    view = [(SyncedLyricsViewController *)handlerCopy view];
    if (view)
    {
      v6 = view;
      type metadata accessor for SyncedLyricsLineView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        sub_984554(v7);
        v8 = v6;
      }

      else
      {
        v8 = handlerCopy;
        handlerCopy = selfCopy;
        selfCopy = v6;
      }
    }
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  SyncedLyricsViewController.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (_TtC7LyricsX26SyncedLyricsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SyncedLyricsViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_9974B8(touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = SyncedLyricsViewController.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v3)
  {
    v5 = v3;
    selfCopy = self;
    sub_987C98();
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  _s7LyricsX06SyncedA14ViewControllerC06scrollC17WillBeginDraggingyySo08UIScrollC0CF_0();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  _s7LyricsX06SyncedA14ViewControllerC06scrollC14DidEndDragging_14willDecelerateySo08UIScrollC0C_SbtF_0();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_997D28(offset, x, y);
}

@end