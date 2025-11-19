@interface CRLLabelView_mi
- (_TtC8Freeform15CRLLabelView_mi)initWithCoder:(id)a3;
- (_TtC8Freeform15CRLLabelView_mi)initWithFrame:(CGRect)a3;
@end

@implementation CRLLabelView_mi

- (_TtC8Freeform15CRLLabelView_mi)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLLabelView_mi();
  return [(CRLLabelView_mi *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform15CRLLabelView_mi)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLLabelView_mi();
  v4 = a3;
  v5 = [(CRLLabelView_mi *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end