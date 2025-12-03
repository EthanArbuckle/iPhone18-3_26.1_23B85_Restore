@interface CRLLabelView_mi
- (_TtC8Freeform15CRLLabelView_mi)initWithCoder:(id)coder;
- (_TtC8Freeform15CRLLabelView_mi)initWithFrame:(CGRect)frame;
@end

@implementation CRLLabelView_mi

- (_TtC8Freeform15CRLLabelView_mi)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLLabelView_mi();
  return [(CRLLabelView_mi *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform15CRLLabelView_mi)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLLabelView_mi();
  coderCopy = coder;
  v5 = [(CRLLabelView_mi *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end