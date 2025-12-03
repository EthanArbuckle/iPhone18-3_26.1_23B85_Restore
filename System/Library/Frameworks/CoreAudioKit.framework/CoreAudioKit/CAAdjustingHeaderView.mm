@interface CAAdjustingHeaderView
- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithCoder:(id)coder;
- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation CAAdjustingHeaderView

- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAAdjustingHeaderView();
  return [(CAAUEQHeaderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12CoreAudioKit21CAAdjustingHeaderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAAdjustingHeaderView();
  coderCopy = coder;
  v5 = [(CAAUEQHeaderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end