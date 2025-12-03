@interface NavigationBarManualCheckLayoutMarginsChange
- (_TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange)initWithFrame:(CGRect)frame;
- (void)layoutMarginsDidChange;
@end

@implementation NavigationBarManualCheckLayoutMarginsChange

- (void)layoutMarginsDidChange
{
  selfCopy = self;
  sub_3C578();
}

- (_TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(NavigationBarManualCheckLayoutMarginsChange *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(NavigationBarManualCheckLayoutMarginsChange *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end