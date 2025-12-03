@interface BorderView
- (UIColor)backgroundColor;
- (_TtC23ShelfKitCollectionViews10BorderView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews10BorderView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
- (void)setClipsToBounds:(BOOL)bounds;
@end

@implementation BorderView

- (_TtC23ShelfKitCollectionViews10BorderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10BorderView_roundedCorners) = -1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(BorderView *)&v11 initWithFrame:x, y, width, height];
  [(BorderView *)height setUserInteractionEnabled:0];
  return height;
}

- (_TtC23ShelfKitCollectionViews10BorderView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10BorderView_roundedCorners) = -1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(BorderView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (UIColor)backgroundColor
{
  clearColor = [objc_opt_self() clearColor];

  return clearColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_21AD70();
}

- (void)setClipsToBounds:(BOOL)bounds
{
  selfCopy = self;
  sub_21AE24();
}

@end