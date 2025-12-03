@interface AMSLookupResult
- (AMSLookupResult)initWithResult:(id)result dictionary:(id)dictionary;
- (NSArray)allItems;
- (id)appStoreURLWithReason:(int64_t)reason initialIndex:(int64_t)index;
- (id)itemForKey:(id)key;
- (void)_enumerateItemsWithBlock:(id)block;
@end

@implementation AMSLookupResult

- (AMSLookupResult)initWithResult:(id)result dictionary:(id)dictionary
{
  resultCopy = result;
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = AMSLookupResult;
    v8 = [(AMSURLResult *)&v12 initWithResult:resultCopy];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_response, dictionary);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSArray)allItems
{
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSLookupResult_allItems__block_invoke;
  v6[3] = &unk_1E73B89A8;
  v4 = array;
  v7 = v4;
  [(AMSLookupResult *)self _enumerateItemsWithBlock:v6];

  return v4;
}

- (id)appStoreURLWithReason:(int64_t)reason initialIndex:(int64_t)index
{
  v4 = [(AMSLookupResult *)self allItems:reason];
  firstObject = [v4 firstObject];

  productPageURL = [firstObject productPageURL];

  return productPageURL;
}

- (id)itemForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_response objectForKey:@"results"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[AMSLookupItem alloc] initWithLookupDictionary:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_enumerateItemsWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSDictionary *)self->_response objectForKey:@"results"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__AMSLookupResult__enumerateItemsWithBlock___block_invoke;
    v6[3] = &unk_1E73B89D8;
    v7 = blockCopy;
    v8 = v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }
}

void __44__AMSLookupResult__enumerateItemsWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[AMSLookupItem alloc] initWithLookupDictionary:v4];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
    v5 = v6;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

@end