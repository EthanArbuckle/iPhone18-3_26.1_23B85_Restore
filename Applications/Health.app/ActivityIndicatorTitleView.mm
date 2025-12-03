@interface ActivityIndicatorTitleView
- (UIActivityIndicatorView)activityIndicatorView;
- (UILabel)titleLabel;
- (_TtC6Health26ActivityIndicatorTitleView)initWithCoder:(id)coder;
- (_TtC6Health26ActivityIndicatorTitleView)initWithFrame:(CGRect)frame;
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

- (_TtC6Health26ActivityIndicatorTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for ActivityIndicatorTitleView();
  return [(ActivityIndicatorTitleView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC6Health26ActivityIndicatorTitleView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivityIndicatorTitleView();
  coderCopy = coder;
  v6 = [(ActivityIndicatorTitleView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end