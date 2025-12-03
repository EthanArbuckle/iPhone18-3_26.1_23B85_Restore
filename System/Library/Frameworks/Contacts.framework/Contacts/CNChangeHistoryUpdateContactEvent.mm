@interface CNChangeHistoryUpdateContactEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryUpdateContactEvent)init;
- (CNChangeHistoryUpdateContactEvent)initWithCoder:(id)coder;
- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)contact contactIdentifier:(id)identifier imagesChanged:(BOOL)changed;
- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)contact imagesChanged:(BOOL)changed;
- (id)contactIdentifiers;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryUpdateContactEvent

- (CNChangeHistoryUpdateContactEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)contact imagesChanged:(BOOL)changed
{
  changedCopy = changed;
  contactCopy = contact;
  if (!contactCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

  identifier = [contactCopy identifier];
  v9 = [(CNChangeHistoryUpdateContactEvent *)self initWithContact:contactCopy contactIdentifier:identifier imagesChanged:changedCopy];

  return v9;
}

- (CNChangeHistoryUpdateContactEvent)initWithContact:(id)contact contactIdentifier:(id)identifier imagesChanged:(BOOL)changed
{
  contactCopy = contact;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CNChangeHistoryUpdateContactEvent;
  v11 = [(CNChangeHistoryUpdateContactEvent *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contact, contact);
    v13 = [identifierCopy copy];
    contactIdentifier = v12->_contactIdentifier;
    v12->_contactIdentifier = v13;

    v12->_imagesChanged = changed;
    v15 = v12;
  }

  return v12;
}

- (CNChangeHistoryUpdateContactEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"_imagesChanged"];

  v8 = [(CNChangeHistoryUpdateContactEvent *)self initWithContact:v5 contactIdentifier:v6 imagesChanged:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"_contact"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeBool:self->_imagesChanged forKey:@"_imagesChanged"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45__CNChangeHistoryUpdateContactEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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
  contactIdentifier = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:contactIdentifier];

  v6 = [v3 appendName:@"imagesChanged" BOOLValue:{-[CNChangeHistoryUpdateContactEvent imagesChanged](self, "imagesChanged")}];
  contact = [(CNChangeHistoryUpdateContactEvent *)self contact];
  v8 = [v3 appendName:@"contact" object:contact];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitUpdateContactEvent:self];
}

- (id)contactIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  contactIdentifier = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  v5[0] = contactIdentifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  contactIdentifier = [(CNChangeHistoryUpdateContactEvent *)self contactIdentifier];
  contactIdentifier2 = [classCopy contactIdentifier];

  v7 = [contactIdentifier compare:contactIdentifier2];
  return v7;
}

@end