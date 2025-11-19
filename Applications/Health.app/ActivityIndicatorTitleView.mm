@interface ActivityIndicatorTitleView
- (UIActivityIndicatorView)activityIndicatorView;
- (UILabel)titleLabel;
- (_TtC6Health26ActivityIndicatorTitleView)initWithCoder:(id)a3;
- (_TtC6Health26ActivityIndicatorTitleView)initWithFrame:(CGRect)a3;
@end

@implementation ActivityIndicatorTitleView

- (UILabel)titleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIActivityIndicatorView)activityIndicatorView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6Health26ActivityIndicatorTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ActivityIndicatorTitleView();
  return [(ActivityIndicatorTitleView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC6Health26ActivityIndicatorTitleView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivityIndicatorTitleView();
  v5 = a3;
  v6 = [(ActivityIndicatorTitleView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end