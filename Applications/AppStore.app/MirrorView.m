@interface MirrorView
- (UIColor)backgroundColor;
- (_TtC8AppStore10MirrorView)initWithCoder:(id)a3;
- (_TtC8AppStore10MirrorView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBackgroundColor:(id)a3;
@end

@implementation MirrorView

- (_TtC8AppStore10MirrorView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CALayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = self;
  if (Strong)
  {
    v5 = String._bridgeToObjectiveC()();
    [Strong removeObserver:v4 forKeyPath:v5];
  }

  v6.receiver = v4;
  v6.super_class = type metadata accessor for MirrorView();
  [(MirrorView *)&v6 dealloc];
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MirrorView();
  v2 = [(MirrorView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for MirrorView();
  v4 = v10.receiver;
  v5 = a3;
  [(MirrorView *)&v10 setBackgroundColor:v5];
  v6 = *&v4[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer];
  v7 = [v4 backgroundColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v6 setBackgroundColor:v9];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001DA280();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1001DAB50();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_1001DA768(v10, v12, v18, v15, a6);

  sub_10003D444(v18);
}

- (_TtC8AppStore10MirrorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end