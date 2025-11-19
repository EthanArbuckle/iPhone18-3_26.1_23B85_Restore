@interface AFPluginBundle
- (AFPluginBundle)init;
- (BOOL)supportsClassIdentifier:(id)a3 forDomainKey:(id)a4 groupIdentifier:(id)a5;
- (void)registerClassIdentifier:(id)a3 forDomain:(id)a4 inGroup:(id)a5;
@end

@implementation AFPluginBundle

- (BOOL)supportsClassIdentifier:(id)a3 forDomainKey:(id)a4 groupIdentifier:(id)a5
{
  if (!a3 || !a4 || !a5)
  {
    return 0;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AFPluginBundle *)self classIdentifiers];
  v12 = [v11 objectForKeyedSubscript:v9];

  v13 = [v12 objectForKeyedSubscript:v8];

  LOBYTE(v8) = [v13 containsObject:v10];
  return v8;
}

- (void)registerClassIdentifier:(id)a3 forDomain:(id)a4 inGroup:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && v8 && v9)
  {
    v10 = [(AFPluginBundle *)self classIdentifiers];
    v11 = [v10 objectForKeyedSubscript:v8];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [(AFPluginBundle *)self classIdentifiers];
      [v12 setObject:v11 forKeyedSubscript:v8];
    }

    v13 = [v11 objectForKeyedSubscript:v9];
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      [v11 setObject:v13 forKeyedSubscript:v9];
    }

    [v13 addObject:v14];
  }
}

- (AFPluginBundle)init
{
  v6.receiver = self;
  v6.super_class = AFPluginBundle;
  v2 = [(AFPluginBundle *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    classIdentifiers = v2->_classIdentifiers;
    v2->_classIdentifiers = v3;
  }

  return v2;
}

@end