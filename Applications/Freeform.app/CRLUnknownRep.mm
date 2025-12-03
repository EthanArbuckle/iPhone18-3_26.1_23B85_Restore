@interface CRLUnknownRep
+ (void)presentUnsupportedItemAlertWithLayerHost:(id)host forGroup:(BOOL)group;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (_TtC8Freeform13CRLUnknownRep)initWithLayout:(id)layout canvas:(id)canvas;
- (void)drawInContext:(CGContext *)context;
@end

@implementation CRLUnknownRep

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1010A2EA0(contextCopy);
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_1010A572C();

  return v5;
}

+ (void)presentUnsupportedItemAlertWithLayerHost:(id)host forGroup:(BOOL)group
{
  swift_unknownObjectRetain();
  sub_1010A52D4(host, group);

  swift_unknownObjectRelease();
}

- (_TtC8Freeform13CRLUnknownRep)initWithLayout:(id)layout canvas:(id)canvas
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUnknownRep_sidePadding) = 0x4028000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUnknownRep_topPadding) = 0x4018000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUnknownRep();
  return [(CRLCanvasRep *)&v7 initWithLayout:layout canvas:canvas];
}

@end