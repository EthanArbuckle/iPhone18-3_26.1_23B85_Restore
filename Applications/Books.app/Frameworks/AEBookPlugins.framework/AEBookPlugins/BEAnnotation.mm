@interface BEAnnotation
- (BEAnnotation)init;
- (NSArray)rects;
- (void)setRects:(id)rects;
@end

@implementation BEAnnotation

- (NSArray)rects
{
  swift_beginAccess();
  type metadata accessor for CGRect(0);

  v2.super.isa = sub_139A30().super.isa;

  return v2.super.isa;
}

- (void)setRects:(id)rects
{
  type metadata accessor for CGRect(0);
  v4 = sub_139A40();
  v5 = OBJC_IVAR___BEAnnotation_rects;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BEAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end