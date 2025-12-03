@interface CNChangeHistoryDropEverythingEvent
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)acceptEventVisitor:(id)visitor;
@end

@implementation CNChangeHistoryDropEverythingEvent

- (BOOL)isEqual:(id)equal
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  build = [v2 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitDropEverythingEvent:self];
}

@end