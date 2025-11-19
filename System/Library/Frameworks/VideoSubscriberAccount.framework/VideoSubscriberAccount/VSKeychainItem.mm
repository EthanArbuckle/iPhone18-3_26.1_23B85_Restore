@interface VSKeychainItem
- (BOOL)hasChanges;
- (BOOL)hasPersistentChangedValues;
- (NSData)data;
- (VSKeychainEditingContext)editingContext;
- (VSKeychainItem)init;
- (VSKeychainItem)initWithItemKind:(id)a3 insertIntoEditingContext:(id)a4;
- (id)changedValues;
- (id)committedValueForKey:(id)a3;
- (id)committedValuesForKeys:(id)a3;
- (id)description;
- (id)primitiveValueForKey:(id)a3;
- (void)_setCommittedValues:(id)a3 registeringUndo:(BOOL)a4;
- (void)setData:(id)a3;
- (void)setDeleted:(BOOL)a3;
- (void)setInserted:(BOOL)a3;
- (void)setPrimitiveValue:(id)a3 forKey:(id)a4;
- (void)setPrimitiveValues:(id)a3;
- (void)setUpdated:(BOOL)a3;
- (void)willAccessValueForKey:(id)a3;
- (void)willChangeValueForKey:(id)a3;
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

- (VSKeychainItem)initWithItemKind:(id)a3 insertIntoEditingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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

    v13 = [v6 copy];
    itemKind = v8->_itemKind;
    v8->_itemKind = v13;

    objc_storeWeak(&v8->_editingContext, v7);
    [v7 insertItem:v8];
  }

  return v8;
}

- (void)setDeleted:(BOOL)a3
{
  if (self->_deleted != a3)
  {
    v5 = [(VSKeychainItem *)self editingContext];
    v6 = [v5 undoManager];
    v7 = [v6 prepareWithInvocationTarget:self];
    [v7 setDeleted:self->_deleted];

    self->_deleted = a3;
  }
}

- (void)setInserted:(BOOL)a3
{
  if (self->_inserted != a3)
  {
    v5 = [(VSKeychainItem *)self editingContext];
    v6 = [v5 undoManager];
    v7 = [v6 prepareWithInvocationTarget:self];
    [v7 setInserted:self->_inserted];

    self->_inserted = a3;
  }
}

- (void)setUpdated:(BOOL)a3
{
  if (self->_updated != a3)
  {
    v5 = [(VSKeychainItem *)self editingContext];
    v6 = [v5 undoManager];
    v7 = [v6 prepareWithInvocationTarget:self];
    [v7 setUpdated:self->_updated];

    self->_updated = a3;
  }
}

- (void)_setCommittedValues:(id)a3 registeringUndo:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_committedValues != v6)
  {
    v12 = v6;
    if (v4)
    {
      v7 = [(VSKeychainItem *)self editingContext];
      v8 = [v7 undoManager];
      v9 = [v8 prepareWithInvocationTarget:self];
      [v9 _setCommittedValues:self->_committedValues registeringUndo:1];
    }

    v10 = [(NSMutableDictionary *)v12 mutableCopy];
    committedValues = self->_committedValues;
    self->_committedValues = v10;

    v6 = v12;
  }
}

- (void)setPrimitiveValues:(id)a3
{
  if (self->_primitiveValues != a3)
  {
    self->_primitiveValues = [a3 mutableCopy];

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
  v2 = [(VSKeychainItem *)self changedValues];
  v3 = [v2 count];

  return v3 != 0;
}

- (id)primitiveValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(VSKeychainItem *)self itemKind];
  v6 = [v5 attributesByName];
  v7 = [v6 objectForKey:v4];

  v8 = [(VSKeychainItem *)self primitiveValues];
  v9 = [v8 objectForKey:v4];

  if (!v9)
  {
    v9 = [v7 defaultValue];
  }

  return v9;
}

- (void)setPrimitiveValue:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([(VSKeychainItem *)self isDeleted])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to modify a deleted object."];
  }

  v7 = [(VSKeychainItem *)self primitiveValues];
  v8 = v7;
  if (v15)
  {
    [v7 setObject:v15 forKey:v6];
  }

  else
  {
    v9 = [(VSKeychainItem *)self itemKind];
    v10 = [v9 attributesByName];
    v11 = [v10 objectForKey:v6];

    v12 = [v11 defaultValue];
    if (v12)
    {
      [v8 setObject:v12 forKey:v6];
    }

    else
    {
      [v8 removeObjectForKey:v6];
    }
  }

  if (![(VSKeychainItem *)self isInserted])
  {
    v13 = [(VSKeychainItem *)self changedValues];
    v14 = [v13 count];

    [(VSKeychainItem *)self setUpdated:v14 != 0];
  }
}

- (id)committedValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = [(VSKeychainItem *)self committedValues];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 dictionaryWithValuesForKeys:v4];

    v6 = v7;
  }

  return v6;
}

- (id)committedValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(VSKeychainItem *)self committedValues];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)changedValues
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(VSKeychainItem *)self itemKind];
  v5 = [v4 attributesByName];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v5;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
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
            v18 = [MEMORY[0x277CBEB68] null];
            [v3 setObject:v18 forKey:v11];

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

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)willChangeValueForKey:(id)a3
{
  v9.receiver = self;
  v9.super_class = VSKeychainItem;
  v4 = a3;
  [(VSKeychainItem *)&v9 willChangeValueForKey:v4];
  v5 = [(VSKeychainItem *)self valueForKey:v4, v9.receiver, v9.super_class];
  v6 = [(VSKeychainItem *)self editingContext];
  v7 = [v6 undoManager];
  v8 = [v7 prepareWithInvocationTarget:self];
  [v8 setValue:v5 forKey:v4];
}

- (void)willAccessValueForKey:(id)a3
{
  if ([a3 isEqual:@"data"] && -[VSKeychainItem hasFaultForData](self, "hasFaultForData"))
  {
    v4 = [(VSKeychainItem *)self editingContext];
    [v4 fulfillFault:self];
  }
}

- (NSData)data
{
  [(VSKeychainItem *)self willAccessValueForKey:@"data"];
  v3 = [(VSKeychainItem *)self primitiveValueForKey:@"data"];
  [(VSKeychainItem *)self didAccessValueForKey:@"data"];

  return v3;
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  [(VSKeychainItem *)self willChangeValueForKey:@"data"];
  [(VSKeychainItem *)self setPrimitiveValue:v4 forKey:@"data"];
  [(VSKeychainItem *)self didChangeValueForKey:@"data"];
}

- (id)description
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(VSKeychainItem *)self itemKind];
  v4 = [v3 attributesByName];

  v25 = v4;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

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
        v13 = [v12 secItemAttributeKey];
        v14 = [(VSKeychainItem *)self primitiveValues];
        v15 = [v14 objectForKey:v11];

        v16 = [(VSKeychainItem *)self committedValues];
        v17 = [v16 objectForKey:v11];

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@) = %@(%@)", v11, v13, v15, v17];
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