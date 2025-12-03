@interface CRLWPKnobPositioning_i
- (BOOL)shouldCreateKnobsForSelection:(id)selection inStorage:(id)storage;
- (CGPoint)centerOfSelectionHeadPinIn:(id)in;
- (CGPoint)centerOfSelectionTailPinIn:(id)in;
- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob;
- (_TtC8Freeform22CRLWPKnobPositioning_i)init;
- (_TtC8Freeform22CRLWPKnobPositioning_i)initWithLayout:(id)layout;
@end

@implementation CRLWPKnobPositioning_i

- (BOOL)shouldCreateKnobsForSelection:(id)selection inStorage:(id)storage
{
  selectionCopy = selection;
  storageCopy = storage;
  selfCopy = self;
  v9 = sub_100D8B5F8(selectionCopy);

  return v9 & 1;
}

- (_TtC8Freeform22CRLWPKnobPositioning_i)initWithLayout:(id)layout
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius) = 0x402E000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout) = layout;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLWPKnobPositioning_i();
  layoutCopy = layout;
  return [(CRLWPKnobPositioning_i *)&v6 init];
}

- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob
{
  selectionCopy = selection;
  knobCopy = knob;
  selfCopy = self;
  sub_100D8A798(selectionCopy, knobCopy);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)centerOfSelectionHeadPinIn:(id)in
{
  v3 = sub_100D8B474(self, a2, in, sub_100D8AFE4);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerOfSelectionTailPinIn:(id)in
{
  v3 = sub_100D8B474(self, a2, in, sub_100D8B22C);
  result.y = v4;
  result.x = v3;
  return result;
}

- (_TtC8Freeform22CRLWPKnobPositioning_i)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end