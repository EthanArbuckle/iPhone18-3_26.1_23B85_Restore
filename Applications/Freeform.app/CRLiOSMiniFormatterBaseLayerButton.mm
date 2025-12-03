@interface CRLiOSMiniFormatterBaseLayerButton
- (_TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton)initWithCoder:(id)coder;
- (_TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton)initWithFrame:(CGRect)frame;
- (id)targetForAction:(SEL)action withSender:(id)sender;
@end

@implementation CRLiOSMiniFormatterBaseLayerButton

- (_TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
  return [(CRLiOSMiniFormatterBaseLayerButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
  coderCopy = coder;
  v6 = [(CRLiOSMiniFormatterBaseLayerButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_101307048(action, v16, v17);

  sub_10000CAAC(v16, &unk_1019F4D00);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100020E58(v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_100005070(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end