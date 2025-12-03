@interface _SFPerSitePreferencesUtilities
+ (BOOL)isBinaryPreferenceValueOn:(id)on preference:(id)preference preferenceManager:(id)manager;
+ (id)preferenceValueForBoolValue:(BOOL)value preference:(id)preference preferenceManager:(id)manager;
+ (id)preferenceValueForPSSpecifierValue:(id)value specifier:(id)specifier preference:(id)preference preferenceManager:(id)manager;
+ (id)specifierValueForSpecifier:(id)specifier preferenceValue:(id)value preference:(id)preference preferenceManager:(id)manager;
@end

@implementation _SFPerSitePreferencesUtilities

+ (id)preferenceValueForPSSpecifierValue:(id)value specifier:(id)specifier preference:(id)preference preferenceManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  preferenceCopy = preference;
  managerCopy = manager;
  if ([specifier cellType] == 6 && objc_msgSend(managerCopy, "conformsToProtocol:", &unk_1F5061748))
  {
    v13 = [self preferenceValueForBoolValue:objc_msgSend(valueCopy preference:"BOOLValue") preferenceManager:{preferenceCopy, managerCopy}];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [managerCopy valuesForPreference:{preferenceCopy, 0}];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if ([v19 isEqual:valueCopy])
          {
            v13 = v19;

            goto LABEL_14;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

LABEL_14:

  return v13;
}

+ (id)specifierValueForSpecifier:(id)specifier preferenceValue:(id)value preference:(id)preference preferenceManager:(id)manager
{
  valueCopy = value;
  preferenceCopy = preference;
  managerCopy = manager;
  if ([specifier cellType] == 6)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isBinaryPreferenceValueOn:preference:preferenceManager:", valueCopy, preferenceCopy, managerCopy)}];
  }

  else
  {
    v13 = valueCopy;
  }

  v14 = v13;

  return v14;
}

+ (BOOL)isBinaryPreferenceValueOn:(id)on preference:(id)preference preferenceManager:(id)manager
{
  onCopy = on;
  preferenceCopy = preference;
  managerCopy = manager;
  if ([managerCopy conformsToProtocol:&unk_1F5061748])
  {
    v10 = [managerCopy onValueForPreference:preferenceCopy];
    v11 = [onCopy isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)preferenceValueForBoolValue:(BOOL)value preference:(id)preference preferenceManager:(id)manager
{
  preferenceCopy = preference;
  managerCopy = manager;
  if ([managerCopy conformsToProtocol:&unk_1F5061748])
  {
    if (value)
    {
      [managerCopy onValueForPreference:preferenceCopy];
    }

    else
    {
      [managerCopy offValueForPreference:preferenceCopy];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end