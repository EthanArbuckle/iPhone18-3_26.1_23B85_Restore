@interface CRLUnknownRep
+ (void)presentUnsupportedItemAlertWithLayerHost:(id)a3 forGroup:(BOOL)a4;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (_TtC8Freeform13CRLUnknownRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation CRLUnknownRep

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_1010A2EA0(v4);
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v4 = self;
  v5 = sub_1010A572C();

  return v5;
}

+ (void)presentUnsupportedItemAlertWithLayerHost:(id)a3 forGroup:(BOOL)a4
{
  swift_unknownObjectRetain();
  sub_1010A52D4(a3, a4);

  swift_unknownObjectRelease();
}

- (_TtC8Freeform13CRLUnknownRep)initWithLayout:(id)a3 canvas:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUnknownRep_sidePadding) = 0x4028000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUnknownRep_topPadding) = 0x4018000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUnknownRep();
  return [(CRLCanvasRep *)&v7 initWithLayout:a3 canvas:a4];
}

@end