@interface CAAdjustingHeaderView
- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithCoder:(id)a3;
- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation CAAdjustingHeaderView

- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAAdjustingHeaderView();
  return [(CAAUEQHeaderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAAdjustingHeaderView();
  v4 = a3;
  v5 = [(CAAUEQHeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end