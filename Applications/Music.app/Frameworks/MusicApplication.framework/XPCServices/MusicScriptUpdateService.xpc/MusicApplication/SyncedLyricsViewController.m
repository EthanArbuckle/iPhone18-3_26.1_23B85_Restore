@interface SyncedLyricsViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC7LyricsX26SyncedLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)displayLinkFired:(id)a3;
- (void)menuHandler:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)shareGestureHandler:(id)a3;
- (void)tapHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation SyncedLyricsViewController

- (void)viewDidLoad
{
  v2 = self;
  SyncedLyricsViewController.viewDidLoad()();
}

- (void)tapHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10049D054(v4);
}

- (void)menuHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004B225C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  SyncedLyricsViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  SyncedLyricsViewController.viewDidDisappear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SyncedLyricsViewController.viewDidLayoutSubviews()();
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  SyncedLyricsViewController.viewLayoutMarginsDidChange()();
}

- (void)displayLinkFired:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004B26A0();
}

- (void)shareGestureHandler:(id)a3
{
  v4 = a3;
  v9 = self;
  if ([(SyncedLyricsViewController *)v4 state]== 1)
  {
    v5 = [(SyncedLyricsViewController *)v4 view];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for SyncedLyricsLineView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        sub_10049FBDC(v7);
        v8 = v6;
      }

      else
      {
        v8 = v4;
        v4 = v9;
        v9 = v6;
      }
    }
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SyncedLyricsViewController.didUpdateFocus(in:with:)(v6, v7);
}

- (_TtC7LyricsX26SyncedLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SyncedLyricsViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1004B2B40(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = SyncedLyricsViewController.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v3)
  {
    v5 = v3;
    v6 = self;
    sub_1004A3320();
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  _s7LyricsX06SyncedA14ViewControllerC06scrollC17WillBeginDraggingyySo08UIScrollC0CF_0();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s7LyricsX06SyncedA14ViewControllerC06scrollC14DidEndDragging_14willDecelerateySo08UIScrollC0C_SbtF_0();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  sub_1004B33B0(a5, x, y);
}

@end