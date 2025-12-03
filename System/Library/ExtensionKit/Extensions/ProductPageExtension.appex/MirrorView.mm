@interface MirrorView
- (UIColor)backgroundColor;
- (_TtC20ProductPageExtension10MirrorView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension10MirrorView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation MirrorView

- (_TtC20ProductPageExtension10MirrorView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CALayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    v5 = sub_10076FF6C();
    [Strong removeObserver:selfCopy forKeyPath:v5];
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for MirrorView();
  [(MirrorView *)&v6 dealloc];
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MirrorView();
  backgroundColor = [(MirrorView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for MirrorView();
  v4 = v10.receiver;
  colorCopy = color;
  [(MirrorView *)&v10 setBackgroundColor:colorCopy];
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer];
  backgroundColor = [v4 backgroundColor];
  if (backgroundColor)
  {
    v8 = backgroundColor;
    cGColor = [backgroundColor CGColor];
  }

  else
  {
    cGColor = 0;
  }

  [v6 setBackgroundColor:cGColor];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000F8028();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_10076FF9C();
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
  sub_10077123C();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000F88F8();
  v15 = sub_10076FE4C();

LABEL_8:
  sub_1000F8510(v10, v12, v18, v15, context);

  sub_1000258C0(v18);
}

- (_TtC20ProductPageExtension10MirrorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end