@interface TrackPreviewViewController
- (_TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController)initWithCoder:(id)coder;
- (_TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TrackPreviewViewController

- (_TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack) = 0;
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000D6E0();
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for TrackPreviewViewController();
  v2 = v15.receiver;
  [(TrackPreviewViewController *)&v15 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView];
  if (v3)
  {
    v4 = v3;
    view = [v2 view];
    if (view)
    {
      v6 = view;
      [view bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame:{v8, v10, v12, v14}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end