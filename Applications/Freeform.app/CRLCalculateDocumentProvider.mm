@interface CRLCalculateDocumentProvider
- (NSSet)declaredVariables;
- (_TtC8Freeform28CRLCalculateDocumentProvider)init;
- (void)setDeclaredVariables:(id)variables;
@end

@implementation CRLCalculateDocumentProvider

- (NSSet)declaredVariables
{

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDeclaredVariables:(id)variables
{
  *(self + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC8Freeform28CRLCalculateDocumentProvider)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables) = _swiftEmptySetSingleton;
  *(self + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions) = _swiftEmptyArrayStorage;
  *(self + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CRLCalculateDocumentProvider *)&v5 init];
}

@end