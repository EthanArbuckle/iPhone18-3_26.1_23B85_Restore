@interface CNChangeHistoryAddContactEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryAddContactEvent)init;
- (CNChangeHistoryAddContactEvent)initWithCoder:(id)coder;
- (CNChangeHistoryAddContactEvent)initWithContact:(id)contact contactIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier;
- (CNChangeHistoryAddContactEvent)initWithContact:(id)contact containerIdentifier:(id)identifier;
- (id)contactIdentifiers;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryAddContactEvent

- (CNChangeHistoryAddContactEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryAddContactEvent)initWithContact:(id)contact containerIdentifier:(id)identifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  if (!contactCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

  identifier = [contactCopy identifier];
  v10 = [(CNChangeHistoryAddContactEvent *)self initWithContact:contactCopy contactIdentifier:identifier containerIdentifier:identifierCopy];

  return v10;
}

- (CNChangeHistoryAddContactEvent)initWithContact:(id)contact contactIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier
{
  contactCopy = contact;
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  v20.receiver = self;
  v20.super_class = CNChangeHistoryAddContactEvent;
  v12 = [(CNChangeHistoryAddContactEvent *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    v14 = [identifierCopy copy];
    contactIdentifier = v13->_contactIdentifier;
    v13->_contactIdentifier = v14;

    v16 = [containerIdentifierCopy copy];
    containerIdentifier = v13->_containerIdentifier;
    v13->_containerIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

- (CNChangeHistoryAddContactEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];

  v8 = [(CNChangeHistoryAddContactEvent *)self initWithContact:v5 contactIdentifier:v6 containerIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"_contact"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNChangeHistoryAddContactEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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
  contactIdentifier = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:contactIdentifier];

  containerIdentifier = [(CNChangeHistoryAddContactEvent *)self containerIdentifier];
  v7 = [v3 appendName:@"containerIdentifier" object:containerIdentifier];

  contact = [(CNChangeHistoryAddContactEvent *)self contact];
  v9 = [v3 appendName:@"contact" object:contact];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitAddContactEvent:self];
}

- (id)contactIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  contactIdentifier = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  v5[0] = contactIdentifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  contactIdentifier = [(CNChangeHistoryAddContactEvent *)self contactIdentifier];
  contactIdentifier2 = [classCopy contactIdentifier];

  v7 = [contactIdentifier compare:contactIdentifier2];
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