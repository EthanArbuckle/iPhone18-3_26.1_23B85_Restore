@interface ReadableWidthContainer
- (_TtC17SequoiaTranslator22ReadableWidthContainer)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator22ReadableWidthContainer)initWithFrame:(CGRect)frame;
@end

@implementation ReadableWidthContainer

- (_TtC17SequoiaTranslator22ReadableWidthContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_readableWidthEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_sizingConstraints) = _swiftEmptyArrayStorage;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReadableWidthContainer();
  return [(ReadableWidthContainer *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator22ReadableWidthContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_wrappedView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_readableWidthEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_sizingConstraints) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end