@interface CNChangeHistoryPreferredContactForNameEvent
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryPreferredContactForNameEvent)init;
- (CNChangeHistoryPreferredContactForNameEvent)initWithCoder:(id)a3;
- (CNChangeHistoryPreferredContactForNameEvent)initWithPreferredContact:(id)a3 unifiedContact:(id)a4;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)a3;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryPreferredContactForNameEvent

- (CNChangeHistoryPreferredContactForNameEvent)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryPreferredContactForNameEvent)initWithPreferredContact:(id)a3 unifiedContact:(id)a4
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
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [CNChangeHistoryPreferredContactForNameEvent initWithPreferredContact:v9 unifiedContact:?];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddMemberToGroupEvent initWithMember:group:];
    }

    v10 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryLinkContactsEvent initWithFromContact:v10 toContact:? unifiedContact:?];
    }
  }

LABEL_12:
  v15.receiver = self;
  v15.super_class = CNChangeHistoryPreferredContactForNameEvent;
  v11 = [(CNChangeHistoryPreferredContactForNameEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preferredContact, a3);
    objc_storeStrong(&v12->_unifiedContact, a4);
    v13 = v12;
  }

  return v12;
}

- (CNChangeHistoryPreferredContactForNameEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferredContact"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_unifiedContact"];

  v7 = [(CNChangeHistoryPreferredContactForNameEvent *)self initWithPreferredContact:v5 unifiedContact:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  preferredContact = self->_preferredContact;
  v5 = a3;
  [v5 encodeObject:preferredContact forKey:@"_preferredContact"];
  [v5 encodeObject:self->_unifiedContact forKey:@"_unifiedContact"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__CNChangeHistoryPreferredContactForNameEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__CNChangeHistoryPreferredContactForNameEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __55__CNChangeHistoryPreferredContactForNameEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) preferredContact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) preferredContact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __55__CNChangeHistoryPreferredContactForNameEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) unifiedContact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) unifiedContact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CNChangeHistoryPreferredContactForNameEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CNChangeHistoryPreferredContactForNameEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __51__CNChangeHistoryPreferredContactForNameEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) preferredContact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __51__CNChangeHistoryPreferredContactForNameEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) unifiedContact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryPreferredContactForNameEvent *)self preferredContact];
  v5 = [v3 appendName:@"preferredContact" object:v4];

  v6 = [(CNChangeHistoryPreferredContactForNameEvent *)self unifiedContact];
  v7 = [v3 appendName:@"unifiedContact" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitPreferredContactForNameEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryPreferredContactForNameEvent *)self unifiedContact];
  v6 = [v5 identifier];
  v7 = [v4 unifiedContact];
  v8 = [v7 identifier];
  v9 = [v6 compare:v8];

  if (!v9)
  {
    v10 = [(CNChangeHistoryPreferredContactForNameEvent *)self preferredContact];
    v11 = [v10 identifier];
    v12 = [v4 preferredContact];
    v13 = [v12 identifier];
    v9 = [v11 compare:v13];
  }

  return v9;
}

- (void)initWithPreferredContact:(void *)a1 unifiedContact:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘preferredContact’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

@end