@interface CNChangeHistoryDifferentMeCardEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryDifferentMeCardEvent)init;
- (CNChangeHistoryDifferentMeCardEvent)initWithCoder:(id)coder;
- (CNChangeHistoryDifferentMeCardEvent)initWithContactIdentifier:(id)identifier;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
@end

@implementation CNChangeHistoryDifferentMeCardEvent

- (CNChangeHistoryDifferentMeCardEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryDifferentMeCardEvent)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryDeleteContactEvent initWithContactIdentifier:v5 externalURI:? externalModificationTag:?];
    }
  }

  v11.receiver = self;
  v11.super_class = CNChangeHistoryDifferentMeCardEvent;
  v6 = [(CNChangeHistoryDifferentMeCardEvent *)&v11 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNChangeHistoryDifferentMeCardEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];

  v6 = [(CNChangeHistoryDifferentMeCardEvent *)self initWithContactIdentifier:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CNChangeHistoryDifferentMeCardEvent_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __47__CNChangeHistoryDifferentMeCardEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [*(a1 + 40) contactIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CNChangeHistoryDifferentMeCardEvent_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __43__CNChangeHistoryDifferentMeCardEvent_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactIdentifier = [(CNChangeHistoryDifferentMeCardEvent *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:contactIdentifier];

  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitDifferentMeCardEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  contactIdentifier = [(CNChangeHistoryDifferentMeCardEvent *)self contactIdentifier];
  contactIdentifier2 = [classCopy contactIdentifier];

  v7 = [contactIdentifier compare:contactIdentifier2];
  return v7;
}

@end