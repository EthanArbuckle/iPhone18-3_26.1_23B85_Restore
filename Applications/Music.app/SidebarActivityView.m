@interface SidebarActivityView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC5Music19SidebarActivityView)initWithFrame:(CGRect)a3;
- (void)addSubview:(id)a3;
- (void)layoutSubviews;
@end

@implementation SidebarActivityView

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005A0CF0(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005A2988();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1005A2DC0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_1005A2FB0(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC5Music19SidebarActivityView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end