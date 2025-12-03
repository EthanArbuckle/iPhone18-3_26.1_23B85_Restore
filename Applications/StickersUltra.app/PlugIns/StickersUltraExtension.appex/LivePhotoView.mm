@interface LivePhotoView
- (CGSize)intrinsicContentSize;
- (_TtC22StickersUltraExtension13LivePhotoView)initWithCoder:(id)coder;
- (_TtC22StickersUltraExtension13LivePhotoView)initWithFrame:(CGRect)frame;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LivePhotoView

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_10007D7D0();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_10007DC10();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100012E28(&qword_1000B2550);
  v15 = sub_10007D740();

LABEL_8:
  sub_1000104AC(v10, v12, v18, v15, context);

  sub_10000B348(v18, &qword_1000B2528);
}

- (_TtC22StickersUltraExtension13LivePhotoView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerItemContext) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_startPlaybackWhenReady) = 0;
  result = sub_10007DD90();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImage) size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC22StickersUltraExtension13LivePhotoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end