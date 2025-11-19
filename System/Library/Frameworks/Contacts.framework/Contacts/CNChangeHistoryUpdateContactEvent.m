@interface CNChangeHistoryUpdateContactEvent
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryUpdateContactEvent)init;
- (CNChangeHistoryUpdateContactEvent)initWithCoder:(id)a3;
- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)a3 contactIdentifier:(id)a4 imagesChanged:(BOOL)a5;
- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)a3 imagesChanged:(BOOL)a4;
- (id)contactIdentifiers;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)a3;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryUpdateContactEvent

- (CNChangeHistoryUpdateContactEvent)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)a3 imagesChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v7 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryAddContactEvent initWithContact:v7 containerIdentifier:?];
    }
  }

  v8 = [v6 identifier];
  v9 = [(CNChangeHistoryUpdateContactEvent *)self initWithContact:v6 contactIdentifier:v8 imagesChanged:v4];

  return v9;
}

- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)a3 contactIdentifier:(id)a4 imagesChanged:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = CNChangeHistoryUpdateContactEvent;
  v11 = [(CNChangeHistoryUpdateContactEvent *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, a3);
    v13 = [v10 copy];
    contactIdentifier = v12->_contactIdentifier;
    v12->_contactIdentifier = v13;

    v12->_imagesChanged = a5;
    v15 = v12;
  }

  return v12;
}

- (CNChangeHistoryUpdateContactEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
  v7 = [v4 decodeBoolForKey:@"_imagesChanged"];

  v8 = [(CNChangeHistoryUpdateContactEvent *)self initWithContact:v5 contactIdentifier:v6 imagesChanged:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"_contact"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [v5 encodeBool:self->_imagesChanged forKey:@"_imagesChanged"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contactIdentifier];
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) imagesChanged];
  v4 = [*(a1 + 40) imagesChanged];

  return [v2 isBool:v3 equalToOther:v4];
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CNChangeHistoryUpdateContactEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CNChangeHistoryUpdateContactEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __41__CNChangeHistoryUpdateContactEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __41__CNChangeHistoryUpdateContactEvent_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) imagesChanged];

  return [v1 BOOLHash:v2];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:v4];

  v6 = [v3 appendName:@"imagesChanged" BOOLValue:{-[CNChangeHistoryUpdateContactEvent imagesChanged](self, "imagesChanged")}];
  v7 = [(CNChangeHistoryUpdateContactEvent *)self contact];
  v8 = [v3 appendName:@"contact" object:v7];

  v9 = [v3 build];

  return v9;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitUpdateContactEvent:self];
}

- (id)contactIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)comparisonResultWithinSameClass:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  v6 = [v4 contactIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end