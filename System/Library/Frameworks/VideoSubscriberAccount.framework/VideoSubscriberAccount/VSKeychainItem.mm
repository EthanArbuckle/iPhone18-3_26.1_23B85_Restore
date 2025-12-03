@interface VSKeychainItem
- (BOOL)hasChanges;
- (BOOL)hasPersistentChangedValues;
- (NSData)data;
- (VSKeychainEditingContext)editingContext;
- (VSKeychainItem)init;
- (VSKeychainItem)initWithItemKind:(id)kind insertIntoEditingContext:(id)context;
- (id)changedValues;
- (id)committedValueForKey:(id)key;
- (id)committedValuesForKeys:(id)keys;
- (id)description;
- (id)primitiveValueForKey:(id)key;
- (void)_setCommittedValues:(id)values registeringUndo:(BOOL)undo;
- (void)setData:(id)data;
- (void)setDeleted:(BOOL)deleted;
- (void)setInserted:(BOOL)inserted;
- (void)setPrimitiveValue:(id)value forKey:(id)key;
- (void)setPrimitiveValues:(id)values;
- (void)setUpdated:(BOOL)updated;
- (void)willAccessValueForKey:(id)key;
- (void)willChangeValueForKey:(id)key;
@end

@implementation VSKeychainItem

- (VSKeychainItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSKeychainItem)initWithItemKind:(id)kind insertIntoEditingContext:(id)context
{
  kindCopy = kind;
  contextCopy = context;
  if (!kindCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The itemKind parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSKeychainItem;
  v8 = [(VSKeychainItem *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    committedValues = v8->_committedValues;
    v8->_committedValues = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    primitiveValues = v8->_primitiveValues;
    v8->_primitiveValues = v11;

    v13 = [kindCopy copy];
    itemKind = v8->_itemKind;
    v8->_itemKind = v13;

    objc_storeWeak(&v8->_editingContext, contextCopy);
    [contextCopy insertItem:v8];
  }

  return v8;
}

- (void)setDeleted:(BOOL)deleted
{
  if (self->_deleted != deleted)
  {
    editingContext = [(VSKeychainItem *)self editingContext];
    undoManager = [editingContext undoManager];
    v7 = [undoManager prepareWithInvocationTarget:self];
    [v7 setDeleted:self->_deleted];

    self->_deleted = deleted;
  }
}

- (void)setInserted:(BOOL)inserted
{
  if (self->_inserted != inserted)
  {
    editingContext = [(VSKeychainItem *)self editingContext];
    undoManager = [editingContext undoManager];
    v7 = [undoManager prepareWithInvocationTarget:self];
    [v7 setInserted:self->_inserted];

    self->_inserted = inserted;
  }
}

- (void)setUpdated:(BOOL)updated
{
  if (self->_updated != updated)
  {
    editingContext = [(VSKeychainItem *)self editingContext];
    undoManager = [editingContext undoManager];
    v7 = [undoManager prepareWithInvocationTarget:self];
    [v7 setUpdated:self->_updated];

    self->_updated = updated;
  }
}

- (void)_setCommittedValues:(id)values registeringUndo:(BOOL)undo
{
  undoCopy = undo;
  valuesCopy = values;
  if (self->_committedValues != valuesCopy)
  {
    v12 = valuesCopy;
    if (undoCopy)
    {
      editingContext = [(VSKeychainItem *)self editingContext];
      undoManager = [editingContext undoManager];
      v9 = [undoManager prepareWithInvocationTarget:self];
      [v9 _setCommittedValues:self->_committedValues registeringUndo:1];
    }

    v10 = [(NSMutableDictionary *)v12 mutableCopy];
    committedValues = self->_committedValues;
    self->_committedValues = v10;

    valuesCopy = v12;
  }
}

- (void)setPrimitiveValues:(id)values
{
  if (self->_primitiveValues != values)
  {
    self->_primitiveValues = [values mutableCopy];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)hasChanges
{
  if ([(VSKeychainItem *)self isInserted]|| [(VSKeychainItem *)self isUpdated])
  {
    return 1;
  }

  return [(VSKeychainItem *)self isDeleted];
}

- (BOOL)hasPersistentChangedValues
{
  changedValues = [(VSKeychainItem *)self changedValues];
  v3 = [changedValues count];

  return v3 != 0;
}

- (id)primitiveValueForKey:(id)key
{
  keyCopy = key;
  itemKind = [(VSKeychainItem *)self itemKind];
  attributesByName = [itemKind attributesByName];
  v7 = [attributesByName objectForKey:keyCopy];

  primitiveValues = [(VSKeychainItem *)self primitiveValues];
  defaultValue = [primitiveValues objectForKey:keyCopy];

  if (!defaultValue)
  {
    defaultValue = [v7 defaultValue];
  }

  return defaultValue;
}

- (void)setPrimitiveValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([(VSKeychainItem *)self isDeleted])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to modify a deleted object."];
  }

  primitiveValues = [(VSKeychainItem *)self primitiveValues];
  v8 = primitiveValues;
  if (valueCopy)
  {
    [primitiveValues setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    itemKind = [(VSKeychainItem *)self itemKind];
    attributesByName = [itemKind attributesByName];
    v11 = [attributesByName objectForKey:keyCopy];

    defaultValue = [v11 defaultValue];
    if (defaultValue)
    {
      [v8 setObject:defaultValue forKey:keyCopy];
    }

    else
    {
      [v8 removeObjectForKey:keyCopy];
    }
  }

  if (![(VSKeychainItem *)self isInserted])
  {
    changedValues = [(VSKeychainItem *)self changedValues];
    v14 = [changedValues count];

    [(VSKeychainItem *)self setUpdated:v14 != 0];
  }
}

- (id)committedValuesForKeys:(id)keys
{
  keysCopy = keys;
  committedValues = [(VSKeychainItem *)self committedValues];
  v6 = committedValues;
  if (keysCopy)
  {
    v7 = [committedValues dictionaryWithValuesForKeys:keysCopy];

    v6 = v7;
  }

  return v6;
}

- (id)committedValueForKey:(id)key
{
  keyCopy = key;
  committedValues = [(VSKeychainItem *)self committedValues];
  v6 = [committedValues objectForKey:keyCopy];

  return v6;
}

- (id)changedValues
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemKind = [(VSKeychainItem *)self itemKind];
  attributesByName = [itemKind attributesByName];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = attributesByName;
  allKeys = [attributesByName allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(VSKeychainItem *)self committedValueForKey:v11];
        v13 = [(VSKeychainItem *)self primitiveValueForKey:v11];
        v14 = v12;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {

          goto LABEL_17;
        }

        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {

          if (!v16)
          {
            null = [MEMORY[0x277CBEB68] null];
            [v3 setObject:null forKey:v11];

            goto LABEL_17;
          }

LABEL_16:
          [v3 setObject:v16 forKey:v11];
          goto LABEL_17;
        }

        v19 = [v14 isEqual:v15];

        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_17:
      }

      v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)willChangeValueForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = VSKeychainItem;
  keyCopy = key;
  [(VSKeychainItem *)&v9 willChangeValueForKey:keyCopy];
  v5 = [(VSKeychainItem *)self valueForKey:keyCopy, v9.receiver, v9.super_class];
  editingContext = [(VSKeychainItem *)self editingContext];
  undoManager = [editingContext undoManager];
  v8 = [undoManager prepareWithInvocationTarget:self];
  [v8 setValue:v5 forKey:keyCopy];
}

- (void)willAccessValueForKey:(id)key
{
  if ([key isEqual:@"data"] && -[VSKeychainItem hasFaultForData](self, "hasFaultForData"))
  {
    editingContext = [(VSKeychainItem *)self editingContext];
    [editingContext fulfillFault:self];
  }
}

- (NSData)data
{
  [(VSKeychainItem *)self willAccessValueForKey:@"data"];
  v3 = [(VSKeychainItem *)self primitiveValueForKey:@"data"];
  [(VSKeychainItem *)self didAccessValueForKey:@"data"];

  return v3;
}

- (void)setData:(id)data
{
  v4 = [data copy];
  [(VSKeychainItem *)self willChangeValueForKey:@"data"];
  [(VSKeychainItem *)self setPrimitiveValue:v4 forKey:@"data"];
  [(VSKeychainItem *)self didChangeValueForKey:@"data"];
}

- (id)description
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  itemKind = [(VSKeychainItem *)self itemKind];
  attributesByName = [itemKind attributesByName];

  v25 = attributesByName;
  allKeys = [attributesByName allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v25 objectForKey:v11];
        secItemAttributeKey = [v12 secItemAttributeKey];
        primitiveValues = [(VSKeychainItem *)self primitiveValues];
        v15 = [primitiveValues objectForKey:v11];

        committedValues = [(VSKeychainItem *)self committedValues];
        v17 = [committedValues objectForKey:v11];

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@) = %@(%@)", v11, secItemAttributeKey, v15, v17];
        [v26 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v19 = MEMORY[0x277CCACA8];
  v27.receiver = self;
  v27.super_class = VSKeychainItem;
  v20 = [(VSKeychainItem *)&v27 description];
  v21 = [v26 componentsJoinedByString:{@", "}];
  v22 = [v19 stringWithFormat:@"<%@ %@>", v20, v21];

  return v22;
}

- (VSKeychainEditingContext)editingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_editingContext);

  return WeakRetained;
}

@end