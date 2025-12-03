@interface UberHeaderView
- (_TtC22SubscribePageExtension14UberHeaderView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)mute;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UberHeaderView

- (void)mute
{
  selfCopy = self;
  sub_10064235C();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_100753094();
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
  sub_100754314();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100643DBC(&qword_1009224E8, 255, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_100752F44();

LABEL_8:
  sub_100642624(v10, v12, v18, v15, context);

  sub_10000C8CC(v18, &unk_100923520);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100642BEC(change);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100642D38();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1006432F8(event, x, y);

  return v10;
}

- (_TtC22SubscribePageExtension14UberHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end