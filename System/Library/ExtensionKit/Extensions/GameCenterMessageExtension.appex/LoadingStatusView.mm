@interface LoadingStatusView
- (UIActivityIndicatorView)activityIndicator;
- (_TtC26GameCenterMessageExtension17LoadingStatusView)initWithCoder:(id)coder;
- (_TtC26GameCenterMessageExtension17LoadingStatusView)initWithFrame:(CGRect)frame;
@end

@implementation LoadingStatusView

- (UIActivityIndicatorView)activityIndicator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26GameCenterMessageExtension17LoadingStatusView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LoadingStatusView();
  return [(LoadingStatusView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26GameCenterMessageExtension17LoadingStatusView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for LoadingStatusView();
  coderCopy = coder;
  v6 = [(LoadingStatusView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end