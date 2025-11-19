@interface CNChangeHistoryAddContactEvent
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryAddContactEvent)init;
- (CNChangeHistoryAddContactEvent)initWithCoder:(id)a3;
- (CNChangeHistoryAddContactEvent)initWithContact:(id)a3 contactIdentifier:(id)a4 containerIdentifier:(id)a5;
- (CNChangeHistoryAddContactEvent)initWithContact:(id)a3 containerIdentifier:(id)a4;
- (id)contactIdentifiers;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)a3;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryAddContactEvent

- (CNChangeHistoryAddContactEvent)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryAddContactEvent)initWithContact:(id)a3 containerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v8 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryAddContactEvent initWithContact:v8 containerIdentifier:?];
    }
  }

  v9 = [v6 identifier];
  v10 = [(CNChangeHistoryAddContactEvent *)self initWithContact:v6 contactIdentifier:v9 containerIdentifier:v7];

  return v10;
}

- (CNChangeHistoryAddContactEvent)initWithContact:(id)a3 contactIdentifier:(id)a4 containerIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = CNChangeHistoryAddContactEvent;
  v12 = [(CNChangeHistoryAddContactEvent *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    v14 = [v10 copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v14;

    v16 = [v11 copy];
    containerIdentifier = v13->_containerIdentifier;
    v13->_containerIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

- (CNChangeHistoryAddContactEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];

  v8 = [(CNChangeHistoryAddContactEvent *)self initWithContact:v5 contactIdentifier:v6 containerIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"_contact"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactIdentifier];
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke_2(uint64_t a1)
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
  v7[2] = __38__CNChangeHistoryAddContactEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__CNChangeHistoryAddContactEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __38__CNChangeHistoryAddContactEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __38__CNChangeHistoryAddContactEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) containerIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:v4];

  v6 = [(CNChangeHistoryAddContactEvent *)self containerIdentifier];
  v7 = [v3 appendName:@"containerIdentifier" object:v6];

  v8 = [(CNChangeHistoryAddContactEvent *)self contact];
  v9 = [v3 appendName:@"contact" object:v8];

  v10 = [v3 build];

  return v10;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitAddContactEvent:self];
}

- (id)contactIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)comparisonResultWithinSameClass:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  v6 = [v4 contactIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)initWithContact:(void *)a1 containerIdentifier:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘contact’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

@end