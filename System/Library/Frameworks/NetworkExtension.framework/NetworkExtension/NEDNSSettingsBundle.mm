@interface NEDNSSettingsBundle
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEDNSSettingsBundle)init;
- (NEDNSSettingsBundle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSSettingsBundle

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEDNSSettingsBundle *)self settings];

  if (v5)
  {
    v6 = [(NEDNSSettingsBundle *)self settings];
    LODWORD(v5) = [v6 checkValidityAndCollectErrors:v4];
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v7 = [(NEDNSSettingsBundle *)self onDemandRules];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NEDNSSettingsBundle *)self onDemandRules];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(v5) = [v13 checkValidityAndCollectErrors:v4] & v5;
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEDNSSettingsBundle allocWithZone:?]];
  [(NEDNSSettingsBundle *)v4 setEnabled:[(NEDNSSettingsBundle *)self isEnabled]];
  v5 = [(NEDNSSettingsBundle *)self onDemandRules];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    v7 = [(NEDNSSettingsBundle *)self onDemandRules];
    v8 = [v6 initWithArray:v7 copyItems:1];
    [(NEDNSSettingsBundle *)v4 setOnDemandRules:v8];
  }

  v9 = [(NEDNSSettingsBundle *)self settings];
  [(NEDNSSettingsBundle *)v4 setSettings:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NEDNSSettingsBundle isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  v5 = [(NEDNSSettingsBundle *)self onDemandRules];
  [v4 encodeObject:v5 forKey:@"OnDemandRules"];

  v6 = [(NEDNSSettingsBundle *)self settings];
  [v4 encodeObject:v6 forKey:@"Settings"];
}

- (NEDNSSettingsBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEDNSSettingsBundle;
  v5 = [(NEDNSSettingsBundle *)&v15 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v12;
  }

  return v5;
}

- (NEDNSSettingsBundle)init
{
  v5.receiver = self;
  v5.super_class = NEDNSSettingsBundle;
  v2 = [(NEDNSSettingsBundle *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEDNSSettingsBundle *)v2 setEnabled:0];
  }

  return v3;
}

@end