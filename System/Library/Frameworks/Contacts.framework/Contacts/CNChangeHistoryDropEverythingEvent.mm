@interface CNChangeHistoryDropEverythingEvent
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)acceptEventVisitor:(id)a3;
@end

@implementation CNChangeHistoryDropEverythingEvent

- (BOOL)isEqual:(id)a3
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [v3 isEqual:v4];
}

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitDropEverythingEvent:self];
}

@end