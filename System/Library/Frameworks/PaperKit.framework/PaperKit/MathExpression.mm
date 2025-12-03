@interface MathExpression
- (_TtC8PaperKit14MathExpression)init;
- (void)setStrokeGroupIdentifier:(id)identifier;
@end

@implementation MathExpression

- (void)setStrokeGroupIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC8PaperKit14MathExpression_strokeGroupIdentifier);
  *(self + OBJC_IVAR____TtC8PaperKit14MathExpression_strokeGroupIdentifier) = identifier;
  identifierCopy = identifier;
}

- (_TtC8PaperKit14MathExpression)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8PaperKit14MathExpression_expression);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC8PaperKit14MathExpression_expressionType) = 1;
  *(self + OBJC_IVAR____TtC8PaperKit14MathExpression_strokeGroupIdentifier) = 0;
  *(self + OBJC_IVAR____TtC8PaperKit14MathExpression_isAssociatedWithCurrentSession) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MathExpression *)&v6 init];
}

@end