@interface SOProfile
+ (id)stringWithAuthenticationMethod:(int64_t)a3;
+ (id)stringWithProfileType:(int64_t)a3;
+ (id)stringWithScreenLockedBehavior:(int64_t)a3;
- (BOOL)matchesURL:(id)a3;
- (SOProfile)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)preLoadURLData;
@end

@implementation SOProfile

- (void)preLoadURLData
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  urlPredicates = self->_urlPredicates;
  self->_urlPredicates = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  urlNoWildCards = self->_urlNoWildCards;
  self->_urlNoWildCards = v5;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_URLPrefix;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 containsString:@"*"])
        {
          v13 = MEMORY[0x1E696AE18];
          v14 = [v12 stringByAppendingString:@"*"];
          v15 = [v13 predicateWithFormat:@"SELF LIKE[c] %@", v14];

          [(NSMutableDictionary *)self->_urlPredicates setObject:v15 forKeyedSubscript:v12];
        }

        else
        {
          [(NSMutableDictionary *)self->_urlNoWildCards setObject:&unk_1F49EB650 forKeyedSubscript:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)matchesURL:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_URLPrefix;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_urlNoWildCards valueForKey:v10, v20];

        if (v11)
        {
          v12 = [v4 lowercaseString];
          v13 = [v10 lowercaseString];
          v14 = [v12 hasPrefix:v13];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v15 = [(NSMutableDictionary *)self->_urlPredicates valueForKey:v10];
          v16 = v15;
          if (v15 && ([v15 evaluateWithObject:v4] & 1) != 0)
          {

LABEL_16:
            v17 = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)stringWithProfileType:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %d>", a3];
  }

  else
  {
    v4 = off_1E836CD98[a3];
  }

  return v4;
}

+ (id)stringWithScreenLockedBehavior:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %d>", a3];
  }

  else
  {
    v4 = off_1E836CDB0[a3];
  }

  return v4;
}

+ (id)stringWithAuthenticationMethod:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %d>", a3];
  }

  else
  {
    v4 = off_1E836CDC8[a3 - 1];
  }

  return v4;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v14[0] = @"Type";
  v3 = [objc_opt_class() stringWithProfileType:self->_type];
  v15 = v3;
  v14[1] = @"URLPrefix";
  v14[2] = @"Hosts";
  v13 = vdupq_n_s64(@"<null>");
  v16 = vbslq_s8(vceqzq_s64(*&self->_URLPrefix), v13, *&self->_URLPrefix);
  v14[3] = @"BundleIdentifier";
  v4 = [(SOProfile *)self extensionBundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<null>";
  }

  v17 = v6;
  v14[4] = @"Realm";
  v14[5] = @"DeniedBundleIdentifiers";
  v18 = vbslq_s8(vceqzq_s64(*&self->_realm), v13, *&self->_realm);
  v14[6] = @"ScreenLockedBehavior";
  v7 = [objc_opt_class() stringWithScreenLockedBehavior:self->_screenLockedBehavior];
  v19 = v7;
  v14[7] = @"AuthenticationMethod";
  v8 = [objc_opt_class() stringWithAuthenticationMethod:self->_pssoAuthenticationMethod];
  v20 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:v14 count:8];
  v10 = [v9 description];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (SOProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = SOProfile;
  v5 = [(SOProfile *)&v42 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_type);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v5->_type = [v8 integerValue];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_URLPrefix);
    v13 = [v4 decodeObjectOfClasses:v11 forKey:v12];
    URLPrefix = v5->_URLPrefix;
    v5->_URLPrefix = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_hosts);
    v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];
    hosts = v5->_hosts;
    v5->_hosts = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_extensionBundleIdentifier);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_realm);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];
    realm = v5->_realm;
    v5->_realm = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = NSStringFromSelector(sel_deniedBundleIdentifiers);
    v33 = [v4 decodeObjectOfClasses:v31 forKey:v32];
    deniedBundleIdentifiers = v5->_deniedBundleIdentifiers;
    v5->_deniedBundleIdentifiers = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_screenLockedBehavior);
    v37 = [v4 decodeObjectOfClass:v35 forKey:v36];
    v5->_screenLockedBehavior = [v37 integerValue];

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_pssoAuthenticationMethod);
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    v5->_pssoAuthenticationMethod = [v40 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  v8 = NSStringFromSelector(sel_type);
  [v6 encodeObject:v7 forKey:v8];

  URLPrefix = self->_URLPrefix;
  v10 = NSStringFromSelector(sel_URLPrefix);
  [v6 encodeObject:URLPrefix forKey:v10];

  hosts = self->_hosts;
  v12 = NSStringFromSelector(sel_hosts);
  [v6 encodeObject:hosts forKey:v12];

  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v14 = NSStringFromSelector(sel_extensionBundleIdentifier);
  [v6 encodeObject:extensionBundleIdentifier forKey:v14];

  realm = self->_realm;
  v16 = NSStringFromSelector(sel_realm);
  [v6 encodeObject:realm forKey:v16];

  deniedBundleIdentifiers = self->_deniedBundleIdentifiers;
  v18 = NSStringFromSelector(sel_deniedBundleIdentifiers);
  [v6 encodeObject:deniedBundleIdentifiers forKey:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:self->_screenLockedBehavior];
  v20 = NSStringFromSelector(sel_screenLockedBehavior);
  [v6 encodeObject:v19 forKey:v20];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pssoAuthenticationMethod];
  v21 = NSStringFromSelector(sel_pssoAuthenticationMethod);
  [v6 encodeObject:v22 forKey:v21];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v4[3] = self->_type;
  v5 = [(NSArray *)self->_URLPrefix copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSArray *)self->_hosts copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(NSString *)self->_extensionBundleIdentifier copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSString *)self->_realm copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSArray *)self->_deniedBundleIdentifiers copy];
  v14 = v4[8];
  v4[8] = v13;

  v4[9] = self->_screenLockedBehavior;
  v4[10] = self->_pssoAuthenticationMethod;
  return v4;
}

@end