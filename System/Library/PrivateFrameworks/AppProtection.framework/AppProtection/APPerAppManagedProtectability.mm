@interface APPerAppManagedProtectability
- (APPerAppManagedProtectability)initWithCoder:(id)a3;
- (APPerAppManagedProtectability)initWithPerAppProtectability:(id)a3;
- (id)description;
- (id)managedBundleIdentifiers;
@end

@implementation APPerAppManagedProtectability

- (APPerAppManagedProtectability)initWithPerAppProtectability:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APPerAppManagedProtectability;
  v5 = [(APPerAppManagedProtectability *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    map = v5->_map;
    v5->_map = v6;
  }

  return v5;
}

- (APPerAppManagedProtectability)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"map"];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__APPerAppManagedProtectability_initWithCoder___block_invoke;
  v13[3] = &unk_1E6EE8998;
  v13[4] = &v14;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  if (v9)
  {
    if ((v15[3] & 1) == 0)
    {
      v12.receiver = self;
      v12.super_class = APPerAppManagedProtectability;
      v10 = [(APPerAppManagedProtectability *)&v12 init];
      self = v10;
      if (v10)
      {
        objc_storeStrong(&v10->_map, v9);
      }
    }
  }

  _Block_object_dispose(&v14, 8);

  return self;
}

void __47__APPerAppManagedProtectability_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)managedBundleIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSDictionary *)self->_map allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@", objc_opt_class()];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_map;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_map objectForKey:v9];
        [v3 appendFormat:@" %@: %@", v9, v10, v13];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

@end