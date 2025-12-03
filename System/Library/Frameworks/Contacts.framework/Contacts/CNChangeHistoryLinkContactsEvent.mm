@interface CNChangeHistoryLinkContactsEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryLinkContactsEvent)init;
- (CNChangeHistoryLinkContactsEvent)initWithCoder:(id)coder;
- (CNChangeHistoryLinkContactsEvent)initWithFromContact:(id)contact toContact:(id)toContact unifiedContact:(id)unifiedContact;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryLinkContactsEvent

- (CNChangeHistoryLinkContactsEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryLinkContactsEvent)initWithFromContact:(id)contact toContact:(id)toContact unifiedContact:(id)unifiedContact
{
  contactCopy = contact;
  toContactCopy = toContact;
  unifiedContactCopy = unifiedContact;
  if (contactCopy)
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

  v12 = CNGuardOSLog_cn_once_object_0_3;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (toContactCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNChangeHistoryLinkContactsEvent initWithFromContact:v12 toContact:? unifiedContact:?];
    if (toContactCopy)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [CNChangeHistoryAddMemberToGroupEvent initWithMember:group:];
  }

  v13 = CNGuardOSLog_cn_once_object_0_3;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
    [CNChangeHistoryLinkContactsEvent initWithFromContact:v13 toContact:? unifiedContact:?];
    if (!unifiedContactCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!unifiedContactCopy)
  {
    goto LABEL_17;
  }

LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddMemberToGroupEvent initWithMember:group:];
    }

    v14 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryLinkContactsEvent initWithFromContact:v14 toContact:? unifiedContact:?];
    }
  }

LABEL_17:
  v19.receiver = self;
  v19.super_class = CNChangeHistoryLinkContactsEvent;
  v15 = [(CNChangeHistoryLinkContactsEvent *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromContact, contact);
    objc_storeStrong(&v16->_toContact, toContact);
    objc_storeStrong(&v16->_unifiedContact, unifiedContact);
    v17 = v16;
  }

  return v16;
}

- (CNChangeHistoryLinkContactsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fromContact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_toContact"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_unifiedContact"];

  v8 = [(CNChangeHistoryLinkContactsEvent *)self initWithFromContact:v5 toContact:v6 unifiedContact:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  fromContact = self->_fromContact;
  coderCopy = coder;
  [coderCopy encodeObject:fromContact forKey:@"_fromContact"];
  [coderCopy encodeObject:self->_toContact forKey:@"_toContact"];
  [coderCopy encodeObject:self->_unifiedContact forKey:@"_unifiedContact"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v6 = v16;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke_3;
  v11[3] = &unk_1E7412228;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = _Block_copy(v11);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v8 withBlocks:{v15, v7, v9, 0}];

  return self;
}

uint64_t __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) fromContact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) fromContact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) toContact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) toContact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __44__CNChangeHistoryLinkContactsEvent_isEqual___block_invoke_3(uint64_t a1)
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
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke_3;
  v8[3] = &unk_1E7412250;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) fromContact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) toContact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __40__CNChangeHistoryLinkContactsEvent_hash__block_invoke_3(uint64_t a1)
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
  fromContact = [(CNChangeHistoryLinkContactsEvent *)self fromContact];
  v5 = [v3 appendName:@"fromContact" object:fromContact];

  toContact = [(CNChangeHistoryLinkContactsEvent *)self toContact];
  v7 = [v3 appendName:@"toContact" object:toContact];

  unifiedContact = [(CNChangeHistoryLinkContactsEvent *)self unifiedContact];
  v9 = [v3 appendName:@"unifiedContact" object:unifiedContact];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitLinkContactsEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  fromContact = [(CNChangeHistoryLinkContactsEvent *)self fromContact];
  identifier = [fromContact identifier];
  fromContact2 = [classCopy fromContact];
  identifier2 = [fromContact2 identifier];
  v9 = [identifier compare:identifier2];

  if (!v9)
  {
    toContact = [(CNChangeHistoryLinkContactsEvent *)self toContact];
    identifier3 = [toContact identifier];
    toContact2 = [classCopy toContact];
    identifier4 = [toContact2 identifier];
    v9 = [identifier3 compare:identifier4];
  }

  return v9;
}

- (void)initWithFromContact:(void *)a1 toContact:unifiedContact:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘fromContact’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

- (void)initWithFromContact:(void *)a1 toContact:unifiedContact:.cold.4(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘toContact’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

- (void)initWithFromContact:(void *)a1 toContact:unifiedContact:.cold.6(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘unifiedContact’ must be of type %{public}@", v5, v6, v7, v8, v9);
}

@end