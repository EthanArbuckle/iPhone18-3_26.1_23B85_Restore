@interface CNPermissivePolicy
+ (id)sharedPermissivePolicy;
- (CNPermissivePolicy)initWithCoder:(id)a3;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3;
@end

@implementation CNPermissivePolicy

+ (id)sharedPermissivePolicy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CNPermissivePolicy_sharedPermissivePolicy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedPermissivePolicy_cn_once_token_0 != -1)
  {
    dispatch_once(&sharedPermissivePolicy_cn_once_token_0, block);
  }

  v2 = sharedPermissivePolicy_cn_once_object_0;

  return v2;
}

uint64_t __44__CNPermissivePolicy_sharedPermissivePolicy__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedPermissivePolicy_cn_once_object_0;
  sharedPermissivePolicy_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3
{
  v3 = a3;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    if ([v5 isMultiValue])
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CNPermissivePolicy)initWithCoder:(id)a3
{
  v4 = [objc_opt_class() sharedPermissivePolicy];

  return v4;
}

@end