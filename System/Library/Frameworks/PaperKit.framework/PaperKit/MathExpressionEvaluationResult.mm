@interface MathExpressionEvaluationResult
- (CGRect)bounds;
- (NSArray)strokes;
- (_TtC8PaperKit30MathExpressionEvaluationResult)init;
- (void)setStrokeGroupIdentifier:(id)identifier;
@end

@implementation MathExpressionEvaluationResult

- (NSArray)strokes
{
  selfCopy = self;
  MathExpressionEvaluationResult.strokes.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8CHStroke_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CGRect)bounds
{
  v2 = *(self + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing);
  if (v2)
  {
    [v2 bounds];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setStrokeGroupIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier);
  *(self + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier) = identifier;
  identifierCopy = identifier;
}

- (_TtC8PaperKit30MathExpressionEvaluationResult)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing) = 0;
  v5 = OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier;
  *(self + v5) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MathExpressionEvaluationResult *)&v7 init];
}

@end