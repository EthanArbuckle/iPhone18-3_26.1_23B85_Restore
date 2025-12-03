@interface CRLTableKnob
- (CRLImage)knobImage;
- (_TtC8Freeform12CRLTableKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (int64_t)knobIndex;
@end

@implementation CRLTableKnob

- (int64_t)knobIndex
{
  if (*(&self->super._renderable + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant) >= 2u)
  {
    return -1;
  }

  else
  {
    return *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
  }
}

- (CRLImage)knobImage
{
  selfCopy = self;
  v3 = sub_1012052D8();
  v4 = v3;

  return v3;
}

- (_TtC8Freeform12CRLTableKnob)initWithType:(unint64_t)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end