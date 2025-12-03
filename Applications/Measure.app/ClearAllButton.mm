@interface ClearAllButton
- (CGSize)intrinsicContentSize;
- (_TtC7Measure14ClearAllButton)initWithCoder:(id)coder;
@end

@implementation ClearAllButton

- (_TtC7Measure14ClearAllButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Measure14ClearAllButton_separator;
  type metadata accessor for SeparatorView();
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  if (qword_1004A0060 != -1)
  {
    swift_once();
  }

  CGSize.init(_:_:)();
  result.height = v4;
  result.width = v3;
  return result;
}

@end