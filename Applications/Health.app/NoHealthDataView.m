@interface NoHealthDataView
- (_TtC6Health16NoHealthDataView)initWithCoder:(id)a3;
- (_TtC6Health16NoHealthDataView)initWithFrame:(CGRect)a3;
@end

@implementation NoHealthDataView

- (_TtC6Health16NoHealthDataView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC6Health16NoHealthDataView_label;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UILabel) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for NoHealthDataView();
  v9 = [(NoHealthDataView *)&v11 initWithFrame:x, y, width, height];
  sub_10006B088();

  return v9;
}

- (_TtC6Health16NoHealthDataView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC6Health16NoHealthDataView_label;
  v6 = objc_allocWithZone(UILabel);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for NoHealthDataView();
  v8 = [(NoHealthDataView *)&v12 initWithCoder:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_10006B088();
  }

  return v9;
}

@end