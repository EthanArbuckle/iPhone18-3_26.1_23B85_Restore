@interface MathExpression
- (_TtC8Freeform14MathExpression)init;
- (void)setStrokeGroupIdentifier:(id)a3;
@end

@implementation MathExpression

- (void)setStrokeGroupIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform14MathExpression_strokeGroupIdentifier);
  *(self + OBJC_IVAR____TtC8Freeform14MathExpression_strokeGroupIdentifier) = a3;
  v3 = a3;
}

- (_TtC8Freeform14MathExpression)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8Freeform14MathExpression_expression);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC8Freeform14MathExpression_expressionType) = 1;
  *(self + OBJC_IVAR____TtC8Freeform14MathExpression_strokeGroupIdentifier) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MathExpression *)&v6 init];
}

@end