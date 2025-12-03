@interface BSAuditHistory
- (BSAuditHistory)init;
- (BSAuditHistory)initWithCoder:(id)coder;
- (BSAuditHistory)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addItem:(id)item;
- (void)addItemWithFormat:(id)format;
- (void)encodeWithCoder:(id)coder;
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

- (void)addItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    [(NSMutableArray *)self->_items addObject:itemCopy];
  }
}

- (void)addItemWithFormat:(id)format
{
  formatCopy = format;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v8];
  items = self->_items;
  v7 = [BSAuditHistoryItem itemWithString:v5];
  [(NSMutableArray *)items addObject:v7];
}

- (BSAuditHistory)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(BSAuditHistory *)self init];
  v6 = v5;
  if (v5)
  {
    items = v5->_items;
    v8 = BSCreateDeserializedArrayFromXPCDictionaryWithKey(dictionaryCopy, "items", &__block_literal_global_26);
    [(NSMutableArray *)items addObjectsFromArray:v8];
  }

  return v6;
}

- (BSAuditHistory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BSAuditHistory *)self init];
  if (v5)
  {
    if (qword_1ED450088 != -1)
    {
      dispatch_once(&qword_1ED450088, &__block_literal_global_36);
    }

    v6 = [coderCopy decodeObjectOfClasses:_MergedGlobals_34 forKey:@"items"];
    [(NSMutableArray *)v5->_items addObjectsFromArray:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(NSMutableArray *)self->_items copy];
  [coderCopy encodeObject:v4 forKey:@"items"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSAuditHistory *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_items withName:{"count"), @"itemCount"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSAuditHistory *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSAuditHistory *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendArraySection:self->_items withName:0 multilinePrefix:prefixCopy skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

@end