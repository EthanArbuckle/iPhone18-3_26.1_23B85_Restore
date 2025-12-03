@interface INWidgetExtensionProvider
+ (INWidgetExtensionProvider)sharedProvider;
- (INWidgetExtensionProvider)init;
- (id)descriptorForIntent:(id)intent;
@end

@implementation INWidgetExtensionProvider

- (id)descriptorForIntent:(id)intent
{
  intentCopy = intent;
  provider = [(INWidgetExtensionProvider *)self provider];
  extensions = [provider extensions];
  allObjects = [extensions allObjects];

  v8 = [allObjects if_flatMap:&__block_literal_global_3_111759];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__INWidgetExtensionProvider_descriptorForIntent___block_invoke_3;
  v16[3] = &unk_1E7286598;
  v9 = intentCopy;
  v17 = v9;
  v10 = [v8 if_firstObjectPassingTest:v16];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [allObjects if_flatMap:&__block_literal_global_11_111760];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__INWidgetExtensionProvider_descriptorForIntent___block_invoke_6;
    v14[3] = &unk_1E72865E0;
    v15 = v9;
    v11 = [v12 if_firstObjectPassingTest:v14];
  }

  return v11;
}

id __49__INWidgetExtensionProvider_descriptorForIntent___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 orderedControlDescriptors];
  v3 = [v2 if_compactMap:&__block_literal_global_14];

  return v3;
}

INControlDescriptor *__49__INWidgetExtensionProvider_descriptorForIntent___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 intentType];

  if (v3)
  {
    v4 = [v2 intentType];
    v5 = [v4 componentsSeparatedByString:@"."];
    v6 = [v5 lastObject];

    v7 = [INControlDescriptor alloc];
    v8 = [v2 extensionIdentity];
    v9 = [v8 extensionBundleIdentifier];
    v10 = [v2 kind];
    v11 = [v2 actionIntentType];
    v12 = [(INControlDescriptor *)v7 initWithExtensionBundleIdentifier:v9 kind:v10 intentClassName:v6 actionIntentType:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __49__INWidgetExtensionProvider_descriptorForIntent___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 orderedDescriptors];
  v3 = [v2 if_compactMap:&__block_literal_global_6_111771];

  return v3;
}

INWidgetDescriptor *__49__INWidgetExtensionProvider_descriptorForIntent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 intentType];

  if (v3)
  {
    if (([v2 supportedFamilies] & 8) != 0)
    {
      v4 = 3;
    }

    else if (([v2 supportedFamilies] & 4) != 0)
    {
      v4 = 2;
    }

    else if (([v2 supportedFamilies] & 2) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = ([v2 supportedFamilies] >> 2) & 4;
    }

    v5 = [v2 intentType];
    v6 = [v5 componentsSeparatedByString:@"."];
    v7 = [v6 lastObject];

    v8 = [INWidgetDescriptor alloc];
    v9 = [v2 extensionBundleIdentifier];
    v10 = [v2 kind];
    v3 = [(INWidgetDescriptor *)v8 initWithExtensionBundleIdentifier:v9 kind:v10 intentClassName:v7 preferredSizeClass:v4];
  }

  return v3;
}

- (INWidgetExtensionProvider)init
{
  v18.receiver = self;
  v18.super_class = INWidgetExtensionProvider;
  v2 = [(INWidgetExtensionProvider *)&v18 init];
  if (v2)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v3 = getCHSWidgetDescriptorsPredicateClass_softClass;
    v27 = getCHSWidgetDescriptorsPredicateClass_softClass;
    if (!getCHSWidgetDescriptorsPredicateClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getCHSWidgetDescriptorsPredicateClass_block_invoke;
      v22 = &unk_1E72888B8;
      v23 = &v24;
      __getCHSWidgetDescriptorsPredicateClass_block_invoke(&v19);
      v3 = v25[3];
    }

    v4 = v3;
    _Block_object_dispose(&v24, 8);
    visible = [v3 visible];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v6 = getCHSControlDescriptorsPredicateClass_softClass;
    v27 = getCHSControlDescriptorsPredicateClass_softClass;
    if (!getCHSControlDescriptorsPredicateClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getCHSControlDescriptorsPredicateClass_block_invoke;
      v22 = &unk_1E72888B8;
      v23 = &v24;
      __getCHSControlDescriptorsPredicateClass_block_invoke(&v19);
      v6 = v25[3];
    }

    v7 = v6;
    _Block_object_dispose(&v24, 8);
    visible2 = [v6 visible];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v9 = getCHSWidgetExtensionProviderOptionsClass_softClass;
    v27 = getCHSWidgetExtensionProviderOptionsClass_softClass;
    if (!getCHSWidgetExtensionProviderOptionsClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getCHSWidgetExtensionProviderOptionsClass_block_invoke;
      v22 = &unk_1E72888B8;
      v23 = &v24;
      __getCHSWidgetExtensionProviderOptionsClass_block_invoke(&v19);
      v9 = v25[3];
    }

    v10 = v9;
    _Block_object_dispose(&v24, 8);
    v11 = [[v9 alloc] initWithWidgetsPredicate:visible controlsPredicate:visible2 includeIntents:0];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v12 = getCHSWidgetExtensionProviderClass_softClass;
    v27 = getCHSWidgetExtensionProviderClass_softClass;
    if (!getCHSWidgetExtensionProviderClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getCHSWidgetExtensionProviderClass_block_invoke;
      v22 = &unk_1E72888B8;
      v23 = &v24;
      __getCHSWidgetExtensionProviderClass_block_invoke(&v19);
      v12 = v25[3];
    }

    v13 = v12;
    _Block_object_dispose(&v24, 8);
    v14 = [[v12 alloc] initWithOptions:v11];
    provider = v2->_provider;
    v2->_provider = v14;

    v16 = v2;
  }

  return v2;
}

+ (INWidgetExtensionProvider)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_111788);
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

uint64_t __43__INWidgetExtensionProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(INWidgetExtensionProvider);
  v1 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end