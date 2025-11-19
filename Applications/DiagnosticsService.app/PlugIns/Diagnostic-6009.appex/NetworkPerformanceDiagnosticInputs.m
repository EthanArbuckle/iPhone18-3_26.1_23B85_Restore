@interface NetworkPerformanceDiagnosticInputs
- (NetworkPerformanceDiagnosticInputs)init;
@end

@implementation NetworkPerformanceDiagnosticInputs

- (NetworkPerformanceDiagnosticInputs)init
{
  *(&self->super.isa + OBJC_IVAR___NetworkPerformanceDiagnosticInputs_predicates) = &_swiftEmptyDictionarySingleton;
  *(&self->super.isa + OBJC_IVAR___NetworkPerformanceDiagnosticInputs_parameters) = &_swiftEmptyDictionarySingleton;
  *(&self->super.isa + OBJC_IVAR___NetworkPerformanceDiagnosticInputs_specifications) = &_swiftEmptyDictionarySingleton;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NetworkPerformanceDiagnosticInputs();
  return [(NetworkPerformanceDiagnosticInputs *)&v3 init];
}

@end