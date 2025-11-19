@interface ExpandedHitAreaButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithFrame:(CGRect)a3;
@end

@implementation ExpandedHitAreaButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(ExpandedHitAreaButton *)v6 bounds];
  v14.origin.x = sub_1001FEF20(v7, v8, v9, v10, *(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets), *&v6->hitAreaInsets[OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets]);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *&UIEdgeInsetsZero.bottom;
  v8 = (self + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets);
  *v8 = *&UIEdgeInsetsZero.top;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExpandedHitAreaButton();
  return [(ExpandedHitAreaButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ExpandedHitAreaButton();
  v6 = a3;
  v7 = [(ExpandedHitAreaButton *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end