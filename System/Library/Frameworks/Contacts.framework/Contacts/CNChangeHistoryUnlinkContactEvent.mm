@interface CNChangeHistoryUnlinkContactEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryUnlinkContactEvent)init;
- (CNChangeHistoryUnlinkContactEvent)initWithCoder:(id)coder;
- (CNChangeHistoryUnlinkContactEvent)initWithContact:(id)contact;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
@end

@implementation CNChangeHistoryUnlinkContactEvent

- (CNChangeHistoryUnlinkContactEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryUnlinkContactEvent)initWithContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryAddContactEvent initWithContact:v6 containerIdentifier:?];
    }
  }

  v11.receiver = self;
  v11.super_class = CNChangeHistoryUnlinkContactEvent;
  v7 = [(CNChangeHistoryUnlinkContactEvent *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contact, contact);
    v9 = v8;
  }

  return v8;
}

- (CNChangeHistoryUnlinkContactEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contact"];

  v6 = [(CNChangeHistoryUnlinkContactEvent *)self initWithContact:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CNChangeHistoryUnlinkContactEvent_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __45__CNChangeHistoryUnlinkContactEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) contact];
  v4 = [v3 identifier];
  v5 = [*(a1 + 40) contact];
  v6 = [v5 identifier];
  v7 = [v2 isObject:v4 equalToOther:v6];

  return v7;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CNChangeHistoryUnlinkContactEvent_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __41__CNChangeHistoryUnlinkContactEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contact];
  v3 = [v2 identifier];
  v4 = [v1 objectHash:v3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contact = [(CNChangeHistoryUnlinkContactEvent *)self contact];
  v5 = [v3 appendName:@"contact" object:contact];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitUnlinkContactEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  contact = [(CNChangeHistoryUnlinkContactEvent *)self contact];
  identifier = [contact identifier];
  contact2 = [classCopy contact];

  identifier2 = [contact2 identifier];
  v9 = [identifier compare:identifier2];

  return v9;
}

@end