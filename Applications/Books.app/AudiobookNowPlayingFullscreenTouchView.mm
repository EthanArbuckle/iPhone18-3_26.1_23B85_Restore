@interface AudiobookNowPlayingFullscreenTouchView
- (_TtC5Books38AudiobookNowPlayingFullscreenTouchView)initWithFrame:(CGRect)frame;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)dealloc;
- (void)layoutSubviews;
- (void)onClose:(id)close;
- (void)setChapterProgress:(id)progress;
@end

@implementation AudiobookNowPlayingFullscreenTouchView

- (void)dealloc
{
  v3 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView();
  v6[3] = v3;
  v6[0] = self;
  selfCopy = self;
  sub_1007A2B34();
  sub_1000074E0(v6);
  v5.receiver = selfCopy;
  v5.super_class = v3;
  [(AudiobookNowPlayingFullscreenTouchView *)&v5 dealloc];
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_100397148(collection);

  sub_1000074E0(&v8);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003980E0();
  sub_100398AFC();
}

- (_TtC5Books38AudiobookNowPlayingFullscreenTouchView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onClose:(id)close
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong close:1];

    swift_unknownObjectRelease();
  }
}

- (void)setChapterProgress:(id)progress
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10039F4EC();
  swift_unknownObjectRelease();
}

@end