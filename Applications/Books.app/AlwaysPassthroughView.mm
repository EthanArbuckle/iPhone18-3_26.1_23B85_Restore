@interface AlwaysPassthroughView
- (_TtC5Books21AlwaysPassthroughView)initWithCoder:(id)a3;
- (_TtC5Books21AlwaysPassthroughView)initWithFrame:(CGRect)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation AlwaysPassthroughView

- (_TtC5Books21AlwaysPassthroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AlwaysPassthroughView();
  v7 = [(AlwaysPassthroughView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [(AlwaysPassthroughView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC5Books21AlwaysPassthroughView)initWithCoder:(id)a3
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AlwaysPassthroughView();
  [(AlwaysPassthroughView *)&v4 setUserInteractionEnabled:v3];
}

@end