@interface ExpandedHitAreaButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithFrame:(CGRect)frame;
@end

@implementation ExpandedHitAreaButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(ExpandedHitAreaButton *)selfCopy bounds];
  v14.origin.x = sub_1001FEF20(v7, v8, v9, v10, *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets), *&selfCopy->hitAreaInsets[OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets]);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = *&UIEdgeInsetsZero.bottom;
  v8 = (self + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets);
  *v8 = *&UIEdgeInsetsZero.top;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ExpandedHitAreaButton();
  return [(ExpandedHitAreaButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator21ExpandedHitAreaButton)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ExpandedHitAreaButton();
  coderCopy = coder;
  v7 = [(ExpandedHitAreaButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end