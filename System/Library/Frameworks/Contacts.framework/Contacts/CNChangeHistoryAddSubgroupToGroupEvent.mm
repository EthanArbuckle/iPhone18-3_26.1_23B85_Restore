@interface CNChangeHistoryAddSubgroupToGroupEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryAddSubgroupToGroupEvent)init;
- (CNChangeHistoryAddSubgroupToGroupEvent)initWithCoder:(id)coder;
- (CNChangeHistoryAddSubgroupToGroupEvent)initWithSubgroup:(id)subgroup group:(id)group;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryAddSubgroupToGroupEvent

- (CNChangeHistoryAddSubgroupToGroupEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryAddSubgroupToGroupEvent)initWithSubgroup:(id)subgroup group:(id)group
{
  subgroupCopy = subgroup;
  groupCopy = group;
  if (subgroupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_3;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (groupCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNChangeHistoryAddSubgroupToGroupEvent initWithSubgroup:v9 group:?];
    if (groupCopy)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [CNChangeHistoryAddMemberToGroupEvent initWithMember:group:];
  }

  v10 = CNGuardOSLog_cn_once_object_0_3;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
    [CNChangeHistoryAddGroupEvent initWithGroup:v10 containerIdentifier:?];
  }

LABEL_12:
  v15.receiver = self;
  v15.super_class = CNChangeHistoryAddSubgroupToGroupEvent;
  v11 = [(CNChangeHistoryAddSubgroupToGroupEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subgroup, subgroup);
    objc_storeStrong(&v12->_group, group);
    v13 = v12;
  }

  return v12;
}

- (CNChangeHistoryAddSubgroupToGroupEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subgroup"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_group"];

  v7 = [(CNChangeHistoryAddSubgroupToGroupEvent *)self initWithSubgroup:v5 group:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  subgroup = self->_subgroup;
  coderCopy = coder;
  [coderCopy encodeObject:subgroup forKey:@"_subgroup"];
  [coderCopy encodeObject:self->_group forKey:@"_group"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CNChangeHistoryAddSubgroupToGroupEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__CNChangeHistoryAddSubgroupToGroupEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

  return self;
}

uint64_t __50__CNChangeHistoryAddSubgroupToGroupEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subgroup];
  v3 = [*(a1 + 40) subgroup];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __50__CNChangeHistoryAddSubgroupToGroupEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) group];
  v3 = [*(a1 + 40) group];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNChangeHistoryAddSubgroupToGroupEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CNChangeHistoryAddSubgroupToGroupEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __46__CNChangeHistoryAddSubgroupToGroupEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) subgroup];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __46__CNChangeHistoryAddSubgroupToGroupEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) group];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  subgroup = [(CNChangeHistoryAddSubgroupToGroupEvent *)self subgroup];
  v5 = [v3 appendName:@"subgroup" object:subgroup];

  group = [(CNChangeHistoryAddSubgroupToGroupEvent *)self group];
  v7 = [v3 appendName:@"group" object:group];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitAddSubgroupToGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  group = [(CNChangeHistoryAddSubgroupToGroupEvent *)self group];
  identifier = [group identifier];
  group2 = [classCopy group];
  identifier2 = [group2 identifier];
  v9 = [identifier compare:identifier2];

  if (!v9)
  {
    subgroup = [(CNChangeHistoryAddSubgroupToGroupEvent *)self subgroup];
    identifier3 = [subgroup identifier];
    subgroup2 = [classCopy subgroup];
    identifier4 = [subgroup2 identifier];
    v9 = [identifier3 compare:identifier4];
  }

  return v9;
}

- (void)initWithSubgroup:(void *)a1 group:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘subgroup’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

@end