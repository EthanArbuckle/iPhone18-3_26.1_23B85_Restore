@interface MPNondurableMediaItem
- (MPNondurableMediaItem)initWithCoder:(id)a3;
- (MPNondurableMediaItem)initWithPersistentID:(unint64_t)a3;
- (id)valueForProperty:(id)a3;
- (id)valuesForProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValuesForProperties:(id)a3 usingBlock:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation MPNondurableMediaItem

- (void)enumerateValuesForProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPNondurableMediaItem_enumerateValuesForProperties_usingBlock___block_invoke;
  v8[3] = &unk_1E7678D88;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
}

void __65__MPNondurableMediaItem_enumerateValuesForProperties_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForProperty:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPNondurableMediaItem;
  v4 = a3;
  [(MPMediaItem *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_persistentID forKey:{@"MPPersistentID", v5.receiver, v5.super_class}];
}

- (MPNondurableMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPNondurableMediaItem;
  v5 = [(MPMediaItem *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_persistentID = [v4 decodeInt64ForKey:@"MPPersistentID"];
  }

  return v5;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v6 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1435 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPNondurableMediaItem class]"}];
  }
}

- (id)valueForProperty:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() defaultPropertyValues];
  v7 = [v6 objectForKey:v5];

  v8 = [MEMORY[0x1E695DFB0] null];
  LOBYTE(v6) = [v7 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      v9 = v7;
      goto LABEL_7;
    }

    v10 = [objc_opt_class() instanceMethodForSelector:a2];
    if (v10 == [objc_opt_class() instanceMethodForSelector:a2])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      [v12 handleFailureInMethod:a2 object:self file:@"MPMediaItem.m" lineNumber:1430 description:{@"Subclass %@ must implement -%@ defined in %@.", v14, v15, @"[MPNondurableMediaItem class]"}];
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)valuesForProperties:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__MPNondurableMediaItem_valuesForProperties___block_invoke;
  v11[3] = &unk_1E767A410;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

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

- (MPNondurableMediaItem)initWithPersistentID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPNondurableMediaItem;
  result = [(MPNondurableMediaItem *)&v5 init];
  if (result)
  {
    result->_persistentID = a3;
  }

  return result;
}

@end