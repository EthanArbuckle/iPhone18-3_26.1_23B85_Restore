@interface AXBrailleTable
+ (id)defaultTableForLocale:(id)a3;
+ (id)languageAgnosticTables;
+ (id)supportedLocales;
+ (id)tablesForLocale:(id)a3;
- (AXBrailleTable)initWithBRLTTable:(id)a3;
- (AXBrailleTable)initWithCoder:(id)a3;
- (AXBrailleTable)initWithIdentifier:(id)a3;
- (BOOL)isEightDot;
- (NSSet)locales;
- (NSString)identifier;
- (NSString)language;
- (NSString)localizedName;
- (NSString)localizedProviderName;
- (NSString)providerIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXBrailleTable

- (AXBrailleTable)initWithBRLTTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXBrailleTable;
  v6 = [(AXBrailleTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brltTable, a3);
  }

  return v7;
}

- (AXBrailleTable)initWithIdentifier:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(getBRLTTableClass()) initWithExternalIdentifier:v4];
  v6 = [[AXBrailleTable alloc] initWithBRLTTable:v5];
  v7 = [(AXBrailleTable *)v6 locales];
  v8 = [v7 count];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v21 = v4;
    v22 = self;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = +[AXBrailleTable languageAgnosticTables];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * v14) brltTable];
          v16 = [v15 identifier];
          v17 = [v5 identifier];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v9 = v6;

            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
    v4 = v21;
    self = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXBrailleTable *)self providerIdentifier];
  v5 = [(AXBrailleTable *)self brltTable];
  v6 = [v5 tableIdentifier];
  v7 = [v3 stringWithFormat:@"%@.%@", v4, v6];

  return v7;
}

- (NSString)localizedName
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)providerIdentifier
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 externalServiceIdentifier];

  return v3;
}

- (NSString)localizedProviderName
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 localizedService];

  return v3;
}

- (NSString)language
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 language];

  return v3;
}

- (NSSet)locales
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 locales];

  return v3;
}

- (BOOL)isEightDot
{
  v2 = [(AXBrailleTable *)self brltTable];
  v3 = [v2 supportsTranslationMode8Dot];

  return v3;
}

+ (id)supportedLocales
{
  v2 = [(objc_class *)getBRLTTableEnumeratorClass() tableEnumeratorWithSystemBundlePath];
  v3 = [v2 supportedLocales];

  return v3;
}

+ (id)defaultTableForLocale:(id)a3
{
  v3 = getBRLTTableEnumeratorClass;
  v4 = a3;
  v5 = [(objc_class *)v3() defaultTablesArrayForLocale:v4];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [[AXBrailleTable alloc] initWithBRLTTable:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)tablesForLocale:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v3 = objc_opt_new();
  [(objc_class *)getBRLTTableEnumeratorClass() tableEnumeratorWithSystemBundlePath];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v27 = 0u;
  obj = [v18 translatorBundles];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v18 tablesForLocale:v19 inBundle:v8];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [[AXBrailleTable alloc] initWithBRLTTable:*(*(&v20 + 1) + 8 * j)];
              [v3 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)languageAgnosticTables
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [(objc_class *)getBRLTTableEnumeratorClass() tableEnumeratorWithSystemBundlePath];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 languageAgnosticTables];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[AXBrailleTable alloc] initWithBRLTTable:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AXBrailleTable alloc];
  v5 = [(AXBrailleTable *)self brltTable];
  v6 = [v5 copy];
  v7 = [(AXBrailleTable *)v4 initWithBRLTTable:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(AXBrailleTable *)self brltTable];
  v5 = [v6 identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (AXBrailleTable)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AXBrailleTable;
  v5 = [(AXBrailleTable *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [objc_alloc(getBRLTTableClass()) initWithIdentifier:v6];
    brltTable = v5->_brltTable;
    v5->_brltTable = v7;
  }

  return v5;
}

@end