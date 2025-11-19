@interface UberHeaderView
- (_TtC22SubscribePageExtension14UberHeaderView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)mute;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UberHeaderView

- (void)mute
{
  v2 = self;
  sub_10064235C();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_100753094();
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
  sub_100754314();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100643DBC(&qword_1009224E8, 255, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_100752F44();

LABEL_8:
  sub_100642624(v10, v12, v18, v15, a6);

  sub_10000C8CC(v18, &unk_100923520);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100642BEC(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100642D38();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1006432F8(a4, x, y);

  return v10;
}

- (_TtC22SubscribePageExtension14UberHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end