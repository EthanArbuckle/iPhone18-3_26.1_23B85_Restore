@interface NSPersistentHistoryToken
- (NSPersistentHistoryToken)initWithCoder:(id)coder;
- (NSPersistentHistoryToken)initWithDictionary:(id)dictionary;
- (NSPersistentHistoryToken)initWithTransactionNumber:(id)number andStoreID:(id)d;
- (id)storeTokens;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPersistentHistoryToken

uint64_t __33___NSPersistentHistoryToken_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (NSPersistentHistoryToken)initWithTransactionNumber:(id)number andStoreID:(id)d
{
  v6 = [(NSPersistentHistoryToken *)self init];
  if (v6)
  {
  }

  v7 = [_NSPersistentHistoryToken alloc];

  return [(_NSPersistentHistoryToken *)v7 initWithTransactionNumber:number andStoreID:d];
}

- (NSPersistentHistoryToken)initWithDictionary:(id)dictionary
{
  v4 = [(NSPersistentHistoryToken *)self init];
  if (v4)
  {
  }

  v5 = [_NSPersistentHistoryToken alloc];

  return [(_NSPersistentHistoryToken *)v5 initWithDictionary:dictionary];
}

- (NSPersistentHistoryToken)initWithCoder:(id)coder
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)storeTokens
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F8];
}

@end