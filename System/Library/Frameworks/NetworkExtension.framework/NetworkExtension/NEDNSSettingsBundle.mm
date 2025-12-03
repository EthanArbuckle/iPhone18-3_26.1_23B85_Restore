@interface NEDNSSettingsBundle
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEDNSSettingsBundle)init;
- (NEDNSSettingsBundle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSSettingsBundle

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v21 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  settings = [(NEDNSSettingsBundle *)self settings];

  if (settings)
  {
    settings2 = [(NEDNSSettingsBundle *)self settings];
    LODWORD(settings) = [settings2 checkValidityAndCollectErrors:errorsCopy];
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  onDemandRules = [(NEDNSSettingsBundle *)self onDemandRules];

  if (onDemandRules)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    onDemandRules2 = [(NEDNSSettingsBundle *)self onDemandRules];
    v9 = [onDemandRules2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(onDemandRules2);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(settings) = [v13 checkValidityAndCollectErrors:errorsCopy] & settings;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(settings) = 0;
          }
        }

        v10 = [onDemandRules2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return settings;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEDNSSettingsBundle allocWithZone:?]];
  [(NEDNSSettingsBundle *)v4 setEnabled:[(NEDNSSettingsBundle *)self isEnabled]];
  onDemandRules = [(NEDNSSettingsBundle *)self onDemandRules];

  if (onDemandRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    onDemandRules2 = [(NEDNSSettingsBundle *)self onDemandRules];
    v8 = [v6 initWithArray:onDemandRules2 copyItems:1];
    [(NEDNSSettingsBundle *)v4 setOnDemandRules:v8];
  }

  settings = [(NEDNSSettingsBundle *)self settings];
  [(NEDNSSettingsBundle *)v4 setSettings:settings];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEDNSSettingsBundle isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  onDemandRules = [(NEDNSSettingsBundle *)self onDemandRules];
  [coderCopy encodeObject:onDemandRules forKey:@"OnDemandRules"];

  settings = [(NEDNSSettingsBundle *)self settings];
  [coderCopy encodeObject:settings forKey:@"Settings"];
}

- (NEDNSSettingsBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEDNSSettingsBundle;
  v5 = [(NEDNSSettingsBundle *)&v15 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"Settings"];
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