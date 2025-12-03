@interface CRLTextSelectionRect
- (CGRect)rect;
- (_TtC8Freeform20CRLTextSelectionRect)init;
- (id)description;
- (void)setWritingDirection:(int64_t)direction;
@end

@implementation CRLTextSelectionRect

- (id)description
{
  v1 = [self debugDescription];

  return v1;
}

- (void)setWritingDirection:(int64_t)direction
{
  selfCopy = self;
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection) = sub_1007260E4(direction);
}

- (CGRect)rect
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect);
  v3 = *&self->_rect[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect];
  v4 = *&self->_rect[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect + 8];
  v5 = *&self->_rect[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect + 16];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC8Freeform20CRLTextSelectionRect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end