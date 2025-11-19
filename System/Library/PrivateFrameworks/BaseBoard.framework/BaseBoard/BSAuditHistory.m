@interface BSAuditHistory
- (BSAuditHistory)init;
- (BSAuditHistory)initWithCoder:(id)a3;
- (BSAuditHistory)initWithXPCDictionary:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addItem:(id)a3;
- (void)addItemWithFormat:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BSAuditHistory

- (BSAuditHistory)init
{
  v6.receiver = self;
  v6.super_class = BSAuditHistory;
  v2 = [(BSAuditHistory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (void)addItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableArray *)self->_items addObject:v4];
  }
}

- (void)addItemWithFormat:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v4 arguments:&v8];
  items = self->_items;
  v7 = [BSAuditHistoryItem itemWithString:v5];
  [(NSMutableArray *)items addObject:v7];
}

- (BSAuditHistory)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BSAuditHistory *)self init];
  v6 = v5;
  if (v5)
  {
    items = v5->_items;
    v8 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(v4, "items", &__block_literal_global_26);
    [(NSMutableArray *)items addObjectsFromArray:v8];
  }

  return v6;
}

- (BSAuditHistory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BSAuditHistory *)self init];
  if (v5)
  {
    if (qword_1ED450088 != -1)
    {
      dispatch_once(&qword_1ED450088, &__block_literal_global_36);
    }

    v6 = [v4 decodeObjectOfClasses:_MergedGlobals_34 forKey:@"items"];
    [(NSMutableArray *)v5->_items addObjectsFromArray:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->_items copy];
  [v5 encodeObject:v4 forKey:@"items"];
}

- (id)succinctDescription
{
  v2 = [(BSAuditHistory *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_items withName:{"count"), @"itemCount"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSAuditHistory *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSAuditHistory *)self succinctDescriptionBuilder];
  [v5 appendArraySection:self->_items withName:0 multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

@end