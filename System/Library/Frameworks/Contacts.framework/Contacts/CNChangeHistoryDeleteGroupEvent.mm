@interface CNChangeHistoryDeleteGroupEvent
- (BOOL)isEqual:(id)a3;
- (CNChangeHistoryDeleteGroupEvent)init;
- (CNChangeHistoryDeleteGroupEvent)initWithCoder:(id)a3;
- (CNChangeHistoryDeleteGroupEvent)initWithGroupIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5;
- (id)description;
- (int64_t)comparisonResultWithinSameClass:(id)a3;
- (unint64_t)hash;
- (void)acceptEventVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryDeleteGroupEvent

- (CNChangeHistoryDeleteGroupEvent)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNChangeHistoryDeleteGroupEvent)initWithGroupIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
    v13 = [v8 copy];
    groupIdentifier = v12->_groupIdentifier;
    v12->_groupIdentifier = v13;

    v15 = MEMORY[0x1E69964C0];
    v16 = *MEMORY[0x1E69964C0];
    v17 = [v9 copy];
    v18 = (*(v16 + 16))(v16, v17);
    externalURI = v12->_externalURI;
    v12->_externalURI = v18;

    v20 = *v15;
    v21 = [v10 copy];
    v22 = (*(v20 + 16))(v20, v21);
    externalModificationTag = v12->_externalModificationTag;
    v12->_externalModificationTag = v22;

    v24 = v12;
  }

  return v12;
}

- (CNChangeHistoryDeleteGroupEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalURI"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalModificationTag"];

  v8 = [(CNChangeHistoryDeleteGroupEvent *)self initWithGroupIdentifier:v5 externalURI:v6 externalModificationTag:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  groupIdentifier = self->_groupIdentifier;
  v5 = a3;
  [v5 encodeObject:groupIdentifier forKey:@"_groupIdentifier"];
  [v5 encodeObject:self->_externalURI forKey:@"_externalURI"];
  [v5 encodeObject:self->_externalModificationTag forKey:@"_externalModificationTag"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (groupIdentifier = self->_groupIdentifier, groupIdentifier | v4->_groupIdentifier) && ![(NSString *)groupIdentifier isEqual:?]|| (externalURI = self->_externalURI, externalURI | v4->_externalURI) && ![(NSString *)externalURI isEqual:?]|| (externalModificationTag = self->_externalModificationTag, externalModificationTag | v4->_externalModificationTag) && ![(NSString *)externalModificationTag isEqual:?])
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
  v7 = [v3 build];

  return v7;
}

- (void)acceptEventVisitor:(id)a3
{
  v4 = a3;
  v5 = [[CNSafeChangeHistoryEventVisitorWrapper alloc] initWithChangeHistoryEventVisitor:v4];

  [(CNSafeChangeHistoryEventVisitorWrapper *)v5 visitDeleteGroupEvent:self];
}

- (int64_t)comparisonResultWithinSameClass:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryDeleteGroupEvent *)self groupIdentifier];
  v6 = [v4 groupIdentifier];

  v7 = [v5 compare:v6];
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