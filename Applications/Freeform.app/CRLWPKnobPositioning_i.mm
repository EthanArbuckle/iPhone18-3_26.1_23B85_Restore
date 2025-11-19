@interface CRLWPKnobPositioning_i
- (BOOL)shouldCreateKnobsForSelection:(id)a3 inStorage:(id)a4;
- (CGPoint)centerOfSelectionHeadPinIn:(id)a3;
- (CGPoint)centerOfSelectionTailPinIn:(id)a3;
- (CGPoint)knobCenterForSelection:(id)a3 knob:(id)a4;
- (_TtC8Freeform22CRLWPKnobPositioning_i)init;
- (_TtC8Freeform22CRLWPKnobPositioning_i)initWithLayout:(id)a3;
@end

@implementation CRLWPKnobPositioning_i

- (BOOL)shouldCreateKnobsForSelection:(id)a3 inStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100D8B5F8(v6);

  return v9 & 1;
}

- (_TtC8Freeform22CRLWPKnobPositioning_i)initWithLayout:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius) = 0x402E000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLWPKnobPositioning_i();
  v4 = a3;
  return [(CRLWPKnobPositioning_i *)&v6 init];
}

- (CGPoint)knobCenterForSelection:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100D8A798(v6, v7);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)centerOfSelectionHeadPinIn:(id)a3
{
  v3 = sub_100D8B474(self, a2, a3, sub_100D8AFE4);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)centerOfSelectionTailPinIn:(id)a3
{
  v3 = sub_100D8B474(self, a2, a3, sub_100D8B22C);
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