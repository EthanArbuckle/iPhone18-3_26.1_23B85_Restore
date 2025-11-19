@interface BSPluginSpecification
+ (id)specificationsFromHostBundle:(uint64_t)a1;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)matchesPluginBundle:(uint64_t)a1;
@end

@implementation BSPluginSpecification

+ (id)specificationsFromHostBundle:(uint64_t)a1
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v2 = objc_opt_self();
  v28 = [MEMORY[0x1E695DF70] array];
  v3 = [v27 URLForResource:@"PluginSpecification" withExtension:@"plist"];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithContentsOfURL:{v3, v3}];
  }

  else
  {
    v5 = [v27 infoDictionary];
    v4 = [v5 bs_safeArrayForKey:@"BSPluginSpecification"];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v2 alloc];
          v11 = v9;
          if (v10 && (v34.receiver = v10, v34.super_class = BSPluginSpecification, (v12 = objc_msgSendSuper2(&v34, sel_init)) != 0))
          {
            v13 = [v11 bs_safeObjectForKey:@"BSPluginType" ofType:objc_opt_class()];
            v14 = [v13 copy];
            v15 = v12[2];
            v12[2] = v14;

            v16 = [v11 bs_safeObjectForKey:@"BSPluginBundleController" ofType:objc_opt_class()];
            v17 = [v16 copy];
            v18 = v12[3];
            v12[3] = v17;

            v19 = [v11 bs_safeObjectForKey:@"BSPluginAllowList" ofType:objc_opt_class()];
            v20 = [v19 copy];
            v21 = v12[1];
            v12[1] = v20;

            if (!v12[1])
            {
              v22 = [v11 bs_safeObjectForKey:@"BSPluginWhitelist" ofType:objc_opt_class()];
              v23 = [v22 copy];
              v24 = v12[1];
              v12[1] = v23;
            }

            if (v12[2] && v12[3])
            {
              [v28 addObject:v12];
            }
          }

          else
          {

            v12 = 0;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  return v28;
}

- (uint64_t)matchesPluginBundle:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = [v3 type];
    LODWORD(v5) = [v5 isEqualToString:v6];
    a1 = v5 && ((v7 = *(a1 + 8)) == 0 || ([v4 name], v8 = ;
  }

  return a1;
}

- (id)succinctDescription
{
  v2 = [(BSPluginSpecification *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_type withName:@"type"];
  v5 = [v3 appendObject:self->_classOrProtocolName withName:@"classOrProtocol"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSPluginSpecification *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(BSPluginSpecification *)self succinctDescriptionBuilder];

  return v3;
}

@end