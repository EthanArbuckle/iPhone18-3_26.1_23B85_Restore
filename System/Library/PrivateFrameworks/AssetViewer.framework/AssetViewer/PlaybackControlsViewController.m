@interface PlaybackControlsViewController
- (_TtC11AssetViewer30PlaybackControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation PlaybackControlsViewController

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for PlaybackControlsViewController();
  v2 = v13.receiver;
  [(PlaybackControlsViewController *)&v13 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_241286A60(v4);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame_];
    sub_241281990();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC11AssetViewer30PlaybackControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end