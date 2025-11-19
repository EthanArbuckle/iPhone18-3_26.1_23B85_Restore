@interface TopHeaderCustomFlowLayout
- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)init;
- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation TopHeaderCustomFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_10021FE84(x, y, width, height);

  if (v8)
  {
    sub_100220304();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  return [(TopHeaderCustomFlowLayout *)&v3 init];
}

- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  v4 = a3;
  v5 = [(TopHeaderCustomFlowLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end