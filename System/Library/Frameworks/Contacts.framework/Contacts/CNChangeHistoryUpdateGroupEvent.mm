@interface CNChangeHistoryUpdateGroupEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryUpdateGroupEvent)init;
- (CNChangeHistoryUpdateGroupEvent)initWithCoder:(id)coder;
- (CNChangeHistoryUpdateGroupEvent)initWithGroup:(id)group;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
@end

@implementation CNChangeHistoryUpdateGroupEvent

- (CNChangeHistoryUpdateGroupEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryUpdateGroupEvent)initWithGroup:(id)group
{
  groupCopy = group;
  if (!groupCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryAddGroupEvent initWithGroup:v6 containerIdentifier:?];
    }
  }

  v11.receiver = self;
  v11.super_class = CNChangeHistoryUpdateGroupEvent;
  v7 = [(CNChangeHistoryUpdateGroupEvent *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_group, group);
    v9 = v8;
  }

  return v8;
}

- (CNChangeHistoryUpdateGroupEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_group"];

  v6 = [(CNChangeHistoryUpdateGroupEvent *)self initWithGroup:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNChangeHistoryUpdateGroupEvent_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __43__CNChangeHistoryUpdateGroupEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) group];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) group];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CNChangeHistoryUpdateGroupEvent_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __39__CNChangeHistoryUpdateGroupEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) group];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  group = [(CNChangeHistoryUpdateGroupEvent *)self group];
  v5 = [v3 appendName:@"group" object:group];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitUpdateGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  group = [(CNChangeHistoryUpdateGroupEvent *)self group];
  identifier = [group identifier];
  group2 = [classCopy group];

  identifier2 = [group2 identifier];
  v9 = [identifier compare:identifier2];

  return v9;
}

@end