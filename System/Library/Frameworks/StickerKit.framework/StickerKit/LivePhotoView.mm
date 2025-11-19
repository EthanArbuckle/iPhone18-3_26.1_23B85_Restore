@interface LivePhotoView
- (CGSize)intrinsicContentSize;
- (_TtC10StickerKit13LivePhotoView)initWithCoder:(id)a3;
- (_TtC10StickerKit13LivePhotoView)initWithFrame:(CGRect)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation LivePhotoView

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_19A7AB014();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_19A7ABB44();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_19A765C84();
  v15 = sub_19A7AAF44();

LABEL_8:
  sub_19A763A24(v10, v12, v18, v15, a6);

  sub_19A5F2B54(v18, &unk_1EAFCD750);
}

- (_TtC10StickerKit13LivePhotoView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerObserver);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerItemContext) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit13LivePhotoView_startPlaybackWhenReady) = 0;
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImage) size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC10StickerKit13LivePhotoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end