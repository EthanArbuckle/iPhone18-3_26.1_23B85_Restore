@interface MPNondurableMediaItem
- (MPNondurableMediaItem)initWithCoder:(id)coder;
- (MPNondurableMediaItem)initWithPersistentID:(unint64_t)d;
- (id)valueForProperty:(id)property;
- (id)valuesForProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation MPNondurableMediaItem

- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPNondurableMediaItem_enumerateValuesForProperties_usingBlock___block_invoke;
  v8[3] = &unk_1E7678D88;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [properties enumerateObjectsUsingBlock:v8];
}

void __65__MPNondurableMediaItem_enumerateValuesForProperties_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForProperty:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPNondurableMediaItem;
  coderCopy = coder;
  [(MPMediaItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_persistentID forKey:{@"MPPersistentID", v5.receiver, v5.super_class}];
}

- (MPNondurableMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MPNondurableMediaItem;
  v5 = [(MPMediaItem *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_persistentID = [coderCopy decodeInt64ForKey:@"MPPersistentID"];
  }

  return v5;
}

- (void)setValue:(id)value forKey:(id)key
{
  v6 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v6 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1435 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPNondurableMediaItem class]"}];
  }
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  defaultPropertyValues = [objc_opt_class() defaultPropertyValues];
  v7 = [defaultPropertyValues objectForKey:propertyCopy];

  null = [MEMORY[0x1E695DFB0] null];
  LOBYTE(defaultPropertyValues) = [v7 isEqual:null];

  if ((defaultPropertyValues & 1) == 0)
  {
    if (v7)
    {
      v9 = v7;
      goto LABEL_7;
    }

    v10 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v10 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1430 description:{@"Subclass %@ must implement -%@ defined in %@.", v14, v15, @"[MPNondurableMediaItem class]"}];
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)valuesForProperties:(id)properties
{
  v4 = MEMORY[0x1E695DF90];
  propertiesCopy = properties;
  dictionary = [v4 dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__MPNondurableMediaItem_valuesForProperties___block_invoke;
  v11[3] = &unk_1E767A410;
  v11[4] = self;
  v7 = dictionary;
  v12 = v7;
  [propertiesCopy enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __45__MPNondurableMediaItem_valuesForProperties___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForProperty:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

- (MPNondurableMediaItem)initWithPersistentID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = MPNondurableMediaItem;
  result = [(MPNondurableMediaItem *)&v5 init];
  if (result)
  {
    result->_persistentID = d;
  }

  return result;
}

@end