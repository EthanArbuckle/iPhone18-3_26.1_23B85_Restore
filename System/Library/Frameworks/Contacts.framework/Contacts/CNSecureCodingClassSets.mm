@interface CNSecureCodingClassSets
+ (id)contactStoreClasses;
+ (id)keyDescriptorClasses;
@end

@implementation CNSecureCodingClassSets

+ (id)keyDescriptorClasses
{
  if (keyDescriptorClasses_cn_once_token_0 != -1)
  {
    +[CNSecureCodingClassSets keyDescriptorClasses];
  }

  v3 = keyDescriptorClasses_cn_once_object_0;

  return v3;
}

void __47__CNSecureCodingClassSets_keyDescriptorClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v7 = [v9 copy];
  v8 = keyDescriptorClasses_cn_once_object_0;
  keyDescriptorClasses_cn_once_object_0 = v7;
}

+ (id)contactStoreClasses
{
  if (contactStoreClasses_onceToken != -1)
  {
    +[CNSecureCodingClassSets contactStoreClasses];
  }

  v3 = contactStoreClasses_contactStoreClasses;

  return v3;
}

void __46__CNSecureCodingClassSets_contactStoreClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFA8];
  v1 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = NSClassFromString(&cfstr_Cnsuggestedcon.isa);
  if (v2)
  {
    [v8 addObject:v2];
  }

  v3 = NSClassFromString(&cfstr_Cnaggregatecon.isa);
  if (v3)
  {
    [v8 addObject:v3];
  }

  v4 = NSClassFromString(&cfstr_Cnmockcontacts.isa);
  v5 = v8;
  if (v4)
  {
    [v8 addObject:?];
    v5 = v8;
  }

  v6 = [v5 copy];
  v7 = contactStoreClasses_contactStoreClasses;
  contactStoreClasses_contactStoreClasses = v6;
}

@end