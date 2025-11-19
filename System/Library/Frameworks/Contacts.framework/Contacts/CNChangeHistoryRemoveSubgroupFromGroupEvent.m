@interface CNChangeHistoryRemoveSubgroupFromGroupEvent
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryRemoveSubgroupFromGroupEvent)init;
- (CNChangeHistoryRemoveSubgroupFromGroupEvent)initWithCoder:(id)a3;
- (CNChangeHistoryRemoveSubgroupFromGroupEvent)initWithSubgroup:(id)a3 group:(id)a4;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)a3;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryRemoveSubgroupFromGroupEvent

- (CNChangeHistoryRemoveSubgroupFromGroupEvent)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryRemoveSubgroupFromGroupEvent)initWithSubgroup:(id)a3 group:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
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
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNChangeHistoryAddSubgroupToGroupEvent initWithSubgroup:v9 group:?];
    if (v8)
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
  v15.super_class = CNChangeHistoryRemoveSubgroupFromGroupEvent;
  v11 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subgroup, a3);
    objc_storeStrong(&v12->_group, a4);
    v13 = v12;
  }

  return v12;
}

- (CNChangeHistoryRemoveSubgroupFromGroupEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subgroup"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_group"];

  v7 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)self initWithSubgroup:v5 group:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  subgroup = self->_subgroup;
  v5 = a3;
  [v5 encodeObject:subgroup forKey:@"_subgroup"];
  [v5 encodeObject:self->_group forKey:@"_group"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CNChangeHistoryRemoveSubgroupFromGroupEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__CNChangeHistoryRemoveSubgroupFromGroupEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __55__CNChangeHistoryRemoveSubgroupFromGroupEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subgroup];
  v3 = [*(a1 + 40) subgroup];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __55__CNChangeHistoryRemoveSubgroupFromGroupEvent_isEqual___block_invoke_2(uint64_t a1)
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
  v7[2] = __51__CNChangeHistoryRemoveSubgroupFromGroupEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CNChangeHistoryRemoveSubgroupFromGroupEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __51__CNChangeHistoryRemoveSubgroupFromGroupEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) subgroup];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __51__CNChangeHistoryRemoveSubgroupFromGroupEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) group];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)self subgroup];
  v5 = [v3 appendName:@"subgroup" object:v4];

  v6 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)self group];
  v7 = [v3 appendName:@"group" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitRemoveSubgroupFromGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)self group];
  v6 = [v5 identifier];
  v7 = [v4 group];
  v8 = [v7 identifier];
  v9 = [v6 compare:v8];

  if (!v9)
  {
    v10 = [(CNChangeHistoryRemoveSubgroupFromGroupEvent *)self subgroup];
    v11 = [v10 identifier];
    v12 = [v4 subgroup];
    v13 = [v12 identifier];
    v9 = [v11 compare:v13];
  }

  return v9;
}

@end