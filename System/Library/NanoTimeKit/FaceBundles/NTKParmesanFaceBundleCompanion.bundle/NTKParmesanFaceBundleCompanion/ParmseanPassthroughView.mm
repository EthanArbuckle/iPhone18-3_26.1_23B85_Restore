@interface ParmseanPassthroughView
- (_TtC30NTKParmesanFaceBundleCompanion23ParmseanPassthroughView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion23ParmseanPassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ParmseanPassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ParmseanPassthroughView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ParmseanPassthroughView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_23BFEACC0();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_23BFFA880();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC30NTKParmesanFaceBundleCompanion23ParmseanPassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmseanPassthroughView();
  return [(ParmseanPassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanion23ParmseanPassthroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmseanPassthroughView();
  coderCopy = coder;
  v5 = [(ParmseanPassthroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end