@interface CalculateDocumentProvider
- (NSSet)declaredVariables;
- (_TtC8PaperKit25CalculateDocumentProvider)init;
- (void)setDeclaredVariables:(id)variables;
@end

@implementation CalculateDocumentProvider

- (NSSet)declaredVariables
{

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDeclaredVariables:(id)variables
{
  *(self + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC8PaperKit25CalculateDocumentProvider)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables) = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CalculateDocumentProvider *)&v6 init];
}

@end