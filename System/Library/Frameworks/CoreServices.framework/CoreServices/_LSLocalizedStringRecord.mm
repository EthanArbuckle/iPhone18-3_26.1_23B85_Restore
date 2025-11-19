@interface _LSLocalizedStringRecord
+ (id)sanitizeString:(id)a3;
- (NSDictionary)allStringValues;
- (NSString)defaultStringValue;
- (id)_missingBundleLocsWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LocalizedString *)a6;
- (id)debugDescription;
- (id)stringValueWithPreferredLocalizations:(id)a3;
@end

@implementation _LSLocalizedStringRecord

- (NSString)defaultStringValue
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__35;
  v14 = __Block_byref_object_dispose__35;
  v15 = 0;
  v3 = objc_autoreleasePoolPush();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46___LSLocalizedStringRecord_defaultStringValue__block_invoke;
  v9[3] = &unk_1E6A1D2C8;
  v9[4] = &v10;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___LSLocalizedStringRecord_defaultStringValue__block_invoke_2;
  v8[3] = &unk_1E6A19408;
  v8[4] = self;
  v8[5] = &v10;
  [(LSRecord *)self _ifAttached:v9 else:v8];
  if (v11[5])
  {
    v4 = [objc_opt_class() sanitizeString:v11[5]];
    v5 = v11[5];
    v11[5] = v4;
  }

  objc_autoreleasePoolPop(v3);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

+ (id)sanitizeString:(id)a3
{
  v3 = a3;
  v4 = _LSBalanceBiDiControlCharacters(v3);

  v5 = _LSReplaceForbiddenCharacters(v4, 1);

  return v5;
}

- (id)stringValueWithPreferredLocalizations:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__35;
  v17 = __Block_byref_object_dispose__35;
  v18 = 0;
  v6 = objc_autoreleasePoolPush();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke;
  v12[3] = &unk_1E6A1D250;
  v12[4] = a3;
  v12[5] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2;
  v11[3] = &unk_1E6A1D278;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = &v13;
  v11[7] = a2;
  [(LSRecord *)self _ifAttached:v12 else:v11];
  if (v14[5])
  {
    v7 = [objc_opt_class() sanitizeString:v14[5]];
    v8 = v14[5];
    v14[5] = v7;
  }

  objc_autoreleasePoolPop(v6);
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)_missingBundleLocsWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LocalizedString *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = LaunchServices::LocalizedString::getBundleLocs(a6, a3->db);
  v8 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v8 initWithArray:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(_LSLocalizedStringRecord *)self _allUnsanitizedStringValues];
  v12 = [v11 allKeys];

  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [v10 removeObject:*(*(&v19 + 1) + 8 * i)];
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v16 = [v10 allObjects];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSDictionary)allStringValues
{
  v2 = [(_LSLocalizedStringRecord *)self _allUnsanitizedStringValues];
  v3 = [v2 count];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v3];
    v5 = objc_opt_class();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __43___LSLocalizedStringRecord_allStringValues__block_invoke;
    v14 = &unk_1E6A1D2A0;
    v16 = v5;
    v6 = v4;
    v15 = v6;
    [v2 enumerateKeysAndObjectsUsingBlock:&v11];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = v8;

  return v8;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(_LSLocalizedStringRecord *)self stringValue];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

@end