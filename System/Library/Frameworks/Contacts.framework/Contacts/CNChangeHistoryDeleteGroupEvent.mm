@interface CNChangeHistoryDeleteGroupEvent
- (BOOL)isEqual:(id)equal;
- (CNChangeHistoryDeleteGroupEvent)init;
- (CNChangeHistoryDeleteGroupEvent)initWithCoder:(id)coder;
- (CNChangeHistoryDeleteGroupEvent)initWithGroupIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)class;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryDeleteGroupEvent

- (CNChangeHistoryDeleteGroupEvent)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryDeleteGroupEvent)initWithGroupIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag
{
  identifierCopy = identifier;
  iCopy = i;
  tagCopy = tag;
  if (!identifierCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [CNChangeHistoryAddContactEvent initWithContact:containerIdentifier:];
    }

    v11 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [CNChangeHistoryDeleteGroupEvent initWithGroupIdentifier:v11 externalURI:? externalModificationTag:?];
    }
  }

  v26.receiver = self;
  v26.super_class = CNChangeHistoryDeleteGroupEvent;
  v12 = [(CNChangeHistoryDeleteGroupEvent *)&v26 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    groupIdentifier = v12->_groupIdentifier;
    v12->_groupIdentifier = v13;

    v15 = MEMORY[0x1E69964C0];
    v16 = *MEMORY[0x1E69964C0];
    v17 = [iCopy copy];
    v18 = (*(v16 + 16))(v16, v17);
    externalURI = v12->_externalURI;
    v12->_externalURI = v18;

    v20 = *v15;
    v21 = [tagCopy copy];
    v22 = (*(v20 + 16))(v20, v21);
    externalModificationTag = v12->_externalModificationTag;
    v12->_externalModificationTag = v22;

    v24 = v12;
  }

  return v12;
}

- (CNChangeHistoryDeleteGroupEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalURI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalModificationTag"];

  v8 = [(CNChangeHistoryDeleteGroupEvent *)self initWithGroupIdentifier:v5 externalURI:v6 externalModificationTag:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  groupIdentifier = self->_groupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:groupIdentifier forKey:@"_groupIdentifier"];
  [coderCopy encodeObject:self->_externalURI forKey:@"_externalURI"];
  [coderCopy encodeObject:self->_externalModificationTag forKey:@"_externalModificationTag"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (groupIdentifier = self->_groupIdentifier, groupIdentifier | equalCopy->_groupIdentifier) && ![(NSString *)groupIdentifier isEqual:?]|| (externalURI = self->_externalURI, externalURI | equalCopy->_externalURI) && ![(NSString *)externalURI isEqual:?]|| (externalModificationTag = self->_externalModificationTag, externalModificationTag | equalCopy->_externalModificationTag) && ![(NSString *)externalModificationTag isEqual:?])
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E6996730] objectHash:self->_groupIdentifier];
  v4 = [MEMORY[0x1E6996730] objectHash:self->_externalURI] - v3 + 32 * v3;
  return [MEMORY[0x1E6996730] objectHash:self->_externalModificationTag] - v4 + 32 * v4 + 506447;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"groupIdentifier" object:self->_groupIdentifier];
  v5 = [v3 appendName:@"externalURI" object:self->_externalURI];
  v6 = [v3 appendName:@"externalModificationTag" object:self->_externalModificationTag];
  build = [v3 build];

  return build;
}

- (void)acceptEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:visitorCopy];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitDeleteGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)class
{
  classCopy = class;
  groupIdentifier = [(CNChangeHistoryDeleteGroupEvent *)self groupIdentifier];
  groupIdentifier2 = [classCopy groupIdentifier];

  v7 = [groupIdentifier compare:groupIdentifier2];
  return v7;
}

- (void)initWithGroupIdentifier:(void *)a1 externalURI:externalModificationTag:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v3, v4, "parameter ‘groupIdentifier’ must be nonnull and of type %{public}@", v5, v6, v7, v8, v9);
}

@end