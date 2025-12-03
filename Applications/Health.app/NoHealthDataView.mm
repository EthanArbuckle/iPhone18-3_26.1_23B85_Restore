@interface NoHealthDataView
- (_TtC6Health16NoHealthDataView)initWithCoder:(id)coder;
- (_TtC6Health16NoHealthDataView)initWithFrame:(CGRect)frame;
@end

@implementation NoHealthDataView

- (_TtC6Health16NoHealthDataView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC6Health16NoHealthDataView_label;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UILabel) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for NoHealthDataView();
  height = [(NoHealthDataView *)&v11 initWithFrame:x, y, width, height];
  sub_10006B088();

  return height;
}

- (_TtC6Health16NoHealthDataView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC6Health16NoHealthDataView_label;
  v6 = objc_allocWithZone(UILabel);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for NoHealthDataView();
  v8 = [(NoHealthDataView *)&v12 initWithCoder:coderCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_10006B088();
  }

  return v9;
}

@end