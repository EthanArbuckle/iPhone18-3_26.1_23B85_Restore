@interface NavigationBarManualCheckLayoutMarginsChange
- (_TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange)initWithFrame:(CGRect)a3;
- (void)layoutMarginsDidChange;
@end

@implementation NavigationBarManualCheckLayoutMarginsChange

- (void)layoutMarginsDidChange
{
  v2 = self;
  sub_10003EDAC();
}

- (_TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(NavigationBarManualCheckLayoutMarginsChange *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(NavigationBarManualCheckLayoutMarginsChange *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end