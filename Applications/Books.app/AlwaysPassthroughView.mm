@interface AlwaysPassthroughView
- (_TtC5Books21AlwaysPassthroughView)initWithCoder:(id)coder;
- (_TtC5Books21AlwaysPassthroughView)initWithFrame:(CGRect)frame;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation AlwaysPassthroughView

- (_TtC5Books21AlwaysPassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AlwaysPassthroughView();
  height = [(AlwaysPassthroughView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  clearColor = [v8 clearColor];
  [(AlwaysPassthroughView *)v9 setBackgroundColor:clearColor];

  return v9;
}

- (_TtC5Books21AlwaysPassthroughView)initWithCoder:(id)coder
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AlwaysPassthroughView();
  [(AlwaysPassthroughView *)&v4 setUserInteractionEnabled:enabledCopy];
}

@end