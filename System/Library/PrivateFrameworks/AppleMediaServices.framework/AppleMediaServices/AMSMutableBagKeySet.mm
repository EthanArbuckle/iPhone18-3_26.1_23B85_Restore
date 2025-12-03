@interface AMSMutableBagKeySet
- (void)addBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value;
- (void)unionBagKeySet:(id)set;
@end

@implementation AMSMutableBagKeySet

- (void)addBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  defaultValues = [(AMSBagKeySet *)self defaultValues];
  [defaultValues setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (void)unionBagKeySet:(id)set
{
  defaultValues = [set defaultValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AMSMutableBagKeySet_unionBagKeySet___block_invoke;
  v5[3] = &unk_1E73B42F8;
  v5[4] = self;
  [defaultValues enumerateKeysAndObjectsUsingBlock:v5];
}

void __38__AMSMutableBagKeySet_unionBagKeySet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultValues];
  [v7 setObject:v5 forKeyedSubscript:v6];
}

@end