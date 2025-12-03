@interface CNChangeHistoryAddGroupEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryAddGroupEvent)init;
- (CNChangeHistoryAddGroupEvent)initWithCoder:(id)coder;
- (CNChangeHistoryAddGroupEvent)initWithGroup:(id)group containerIdentifier:(id)identifier;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryAddGroupEvent

- (CNChangeHistoryAddGroupEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryAddGroupEvent)initWithGroup:(id)group containerIdentifier:(id)identifier
{
  groupCopy = group;
  identifierCopy = identifier;
  if (!groupCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v9 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryAddGroupEvent initWithGroup:v9 containerIdentifier:?];
    }
  }

  v16.receiver = self;
  v16.super_class = CNChangeHistoryAddGroupEvent;
  v10 = [(CNChangeHistoryAddGroupEvent *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_group, group);
    v12 = [identifierCopy copy];
    containerIdentifier = v11->_containerIdentifier;
    v11->_containerIdentifier = v12;

    v14 = v11;
  }

  return v11;
}

- (CNChangeHistoryAddGroupEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_group"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];

  v7 = [(CNChangeHistoryAddGroupEvent *)self initWithGroup:v5 containerIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  group = self->_group;
  coderCopy = coder;
  [coderCopy encodeObject:group forKey:@"_group"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CNChangeHistoryAddGroupEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __40__CNChangeHistoryAddGroupEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

  return self;
}

uint64_t __40__CNChangeHistoryAddGroupEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) group];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) group];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __40__CNChangeHistoryAddGroupEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) containerIdentifier];
  v4 = [*(a1 + 40) containerIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CNChangeHistoryAddGroupEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CNChangeHistoryAddGroupEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __36__CNChangeHistoryAddGroupEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) group];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __36__CNChangeHistoryAddGroupEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) containerIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  group = [(CNChangeHistoryAddGroupEvent *)self group];
  v5 = [v3 appendName:@"group" object:group];

  containerIdentifier = [(CNChangeHistoryAddGroupEvent *)self containerIdentifier];
  v7 = [v3 appendName:@"containerIdentifier" object:containerIdentifier];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitAddGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  group = [(CNChangeHistoryAddGroupEvent *)self group];
  identifier = [group identifier];
  group2 = [classCopy group];

  identifier2 = [group2 identifier];
  v9 = [identifier compare:identifier2];

  return v9;
}

- (void)initWithGroup:(void *)a1 containerIdentifier:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘group’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

@end