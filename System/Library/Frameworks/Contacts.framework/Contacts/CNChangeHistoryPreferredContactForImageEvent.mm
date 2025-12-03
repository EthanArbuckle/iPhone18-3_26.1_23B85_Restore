@interface CNChangeHistoryPreferredContactForImageEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryPreferredContactForImageEvent)init;
- (CNChangeHistoryPreferredContactForImageEvent)initWithCoder:(id)coder;
- (CNChangeHistoryPreferredContactForImageEvent)initWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryPreferredContactForImageEvent

- (CNChangeHistoryPreferredContactForImageEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryPreferredContactForImageEvent)initWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact
{
  contactCopy = contact;
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

  v9 = CNGuardOSLog_cn_once_object_0_3;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (!unifiedContactCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [CNChangeHistoryPreferredContactForNameEvent initWithPreferredContact:v9 unifiedContact:?];
    if (!unifiedContactCopy)
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
  v15.super_class = CNChangeHistoryPreferredContactForImageEvent;
  v11 = [(CNChangeHistoryPreferredContactForImageEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preferredContact, contact);
    objc_storeStrong(&v12->_unifiedContact, unifiedContact);
    v13 = v12;
  }

  return v12;
}

- (CNChangeHistoryPreferredContactForImageEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredContact"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_unifiedContact"];

  v7 = [(CNChangeHistoryPreferredContactForImageEvent *)self initWithPreferredContact:v5 unifiedContact:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  preferredContact = self->_preferredContact;
  coderCopy = coder;
  [coderCopy encodeObject:preferredContact forKey:@"_preferredContact"];
  [coderCopy encodeObject:self->_unifiedContact forKey:@"_unifiedContact"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__CNChangeHistoryPreferredContactForImageEvent_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__CNChangeHistoryPreferredContactForImageEvent_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

  return self;
}

uint64_t __56__CNChangeHistoryPreferredContactForImageEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) preferredContact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) preferredContact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

uint64_t __56__CNChangeHistoryPreferredContactForImageEvent_isEqual___block_invoke_2(uint64_t a1)
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
  v7[2] = __52__CNChangeHistoryPreferredContactForImageEvent_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CNChangeHistoryPreferredContactForImageEvent_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __52__CNChangeHistoryPreferredContactForImageEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) preferredContact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

uint64_t __52__CNChangeHistoryPreferredContactForImageEvent_hash__block_invoke_2(uint64_t a1)
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
  preferredContact = [(CNChangeHistoryPreferredContactForImageEvent *)self preferredContact];
  v5 = [v3 appendName:@"preferredContact" object:preferredContact];

  unifiedContact = [(CNChangeHistoryPreferredContactForImageEvent *)self unifiedContact];
  v7 = [v3 appendName:@"unifiedContact" object:unifiedContact];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitPreferredContactForImageEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  unifiedContact = [(CNChangeHistoryPreferredContactForImageEvent *)self unifiedContact];
  identifier = [unifiedContact identifier];
  unifiedContact2 = [classCopy unifiedContact];
  identifier2 = [unifiedContact2 identifier];
  v9 = [identifier compare:identifier2];

  if (!v9)
  {
    preferredContact = [(CNChangeHistoryPreferredContactForImageEvent *)self preferredContact];
    identifier3 = [preferredContact identifier];
    preferredContact2 = [classCopy preferredContact];
    identifier4 = [preferredContact2 identifier];
    v9 = [identifier3 compare:identifier4];
  }

  return v9;
}

@end