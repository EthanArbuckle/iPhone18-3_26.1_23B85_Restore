@interface TopHeaderCustomFlowLayout
- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)init;
- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation TopHeaderCustomFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
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

- (_TtC11FTMInternal25TopHeaderCustomFlowLayout)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  coderCopy = coder;
  v5 = [(TopHeaderCustomFlowLayout *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end