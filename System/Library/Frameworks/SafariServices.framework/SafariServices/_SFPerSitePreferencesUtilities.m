@interface _SFPerSitePreferencesUtilities
+ (BOOL)isBinaryPreferenceValueOn:(id)a3 preference:(id)a4 preferenceManager:(id)a5;
+ (id)preferenceValueForBoolValue:(BOOL)a3 preference:(id)a4 preferenceManager:(id)a5;
+ (id)preferenceValueForPSSpecifierValue:(id)a3 specifier:(id)a4 preference:(id)a5 preferenceManager:(id)a6;
+ (id)specifierValueForSpecifier:(id)a3 preferenceValue:(id)a4 preference:(id)a5 preferenceManager:(id)a6;
@end

@implementation _SFPerSitePreferencesUtilities

+ (id)preferenceValueForPSSpecifierValue:(id)a3 specifier:(id)a4 preference:(id)a5 preferenceManager:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a4 cellType] == 6 && objc_msgSend(v12, "conformsToProtocol:", &unk_1F5061748))
  {
    v13 = [a1 preferenceValueForBoolValue:objc_msgSend(v10 preference:"BOOLValue") preferenceManager:{v11, v12}];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v12 valuesForPreference:{v11, 0}];
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
          if ([v19 isEqual:v10])
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

+ (id)specifierValueForSpecifier:(id)a3 preferenceValue:(id)a4 preference:(id)a5 preferenceManager:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([a3 cellType] == 6)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isBinaryPreferenceValueOn:preference:preferenceManager:", v10, v11, v12)}];
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  return v14;
}

+ (BOOL)isBinaryPreferenceValueOn:(id)a3 preference:(id)a4 preferenceManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 conformsToProtocol:&unk_1F5061748])
  {
    v10 = [v9 onValueForPreference:v8];
    v11 = [v7 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)preferenceValueForBoolValue:(BOOL)a3 preference:(id)a4 preferenceManager:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v8 conformsToProtocol:&unk_1F5061748])
  {
    if (a3)
    {
      [v8 onValueForPreference:v7];
    }

    else
    {
      [v8 offValueForPreference:v7];
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