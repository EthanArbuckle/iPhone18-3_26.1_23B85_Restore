@interface VSKeychainFetchRequest
- (NSPredicate)predicate;
- (VSKeychainFetchRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VSKeychainFetchRequest

- (VSKeychainFetchRequest)init
{
  v6.receiver = self;
  v6.super_class = VSKeychainFetchRequest;
  v2 = [(VSKeychainFetchRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    itemKind = v2->_itemKind;
    v2->_itemKind = v3;
  }

  return v2;
}

- (NSPredicate)predicate
{
  v2 = self->_predicate;
  if (!v2)
  {
    v2 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    if (!v2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The predicate parameter must not be nil."];
      v2 = 0;
    }
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VSKeychainFetchRequest allocWithZone:?]];
  v5 = [(VSKeychainFetchRequest *)self itemKind];
  v6 = [v5 forceUnwrapObject];
  v7 = [v6 copy];
  v8 = [VSOptional optionalWithObject:v7];
  [(VSKeychainFetchRequest *)v4 setItemKind:v8];

  v9 = [(VSKeychainFetchRequest *)self predicate];
  [(VSKeychainFetchRequest *)v4 setPredicate:v9];

  v10 = [(VSKeychainFetchRequest *)self sortDescriptors];
  [(VSKeychainFetchRequest *)v4 setSortDescriptors:v10];

  [(VSKeychainFetchRequest *)v4 setFetchLimit:[(VSKeychainFetchRequest *)self fetchLimit]];
  [(VSKeychainFetchRequest *)v4 setIncludesDataValues:[(VSKeychainFetchRequest *)self includesDataValues]];
  return v4;
}

@end