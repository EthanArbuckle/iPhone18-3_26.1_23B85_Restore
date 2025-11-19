@interface MathExpressionEvaluationResult
- (CGRect)bounds;
- (NSArray)strokes;
- (_TtC8Freeform30MathExpressionEvaluationResult)init;
- (void)setStrokeGroupIdentifier:(id)a3;
@end

@implementation MathExpressionEvaluationResult

- (NSArray)strokes
{
  v2 = self;
  sub_100A6A3C0();

  sub_1005B981C(&unk_101A0E7D0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CGRect)bounds
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing);
  if (v2)
  {
    [v2 bounds];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setStrokeGroupIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier);
  *(self + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier) = a3;
  v3 = a3;
}

- (_TtC8Freeform30MathExpressionEvaluationResult)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing) = 0;
  v5 = OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier;
  *(self + v5) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MathExpressionEvaluationResult *)&v7 init];
}

@end