@interface MigratorConfigurationStore
- (MigratorConfigurationStore)init;
@end

@implementation MigratorConfigurationStore

- (MigratorConfigurationStore)init
{
  v16.receiver = self;
  v16.super_class = MigratorConfigurationStore;
  v2 = [(MigratorConfigurationStore *)&v16 init];
  if (v2)
  {
    v3 = sub_1003D6C18();
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
      v5 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          v10 = 0;
          do
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = sub_1002C0A84([MigratorConfiguration alloc], *(*(&v17 + 1) + 8 * v10));
            v12 = v11;
            if (v11)
            {
              v13 = v11[1];
              [(NSMutableDictionary *)v5 setObject:v12 forKey:v13];
            }

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = objc_opt_new();
    }

    configuration = v2->_configuration;
    v2->_configuration = v5;
  }

  return v2;
}

@end