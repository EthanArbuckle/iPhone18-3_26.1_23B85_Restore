@interface CNContactSubsetCalculator
+ (BOOL)_isLabel:(id)a3 subsumableIntoLabel:(id)a4 equivalencies:(id)a5;
+ (BOOL)_isLabeledValue:(id)a3 availableInLabeledValues:(id)a4 claimedIndices:(id)a5 forMultiValueProperty:(id)a6;
+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 forMultiValueProperty:(id)a5;
+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 forSingleValueProperty:(id)a5;
+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 ignoringProperties:(id)a5;
@end

@implementation CNContactSubsetCalculator

+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 ignoringProperties:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v27 = v9;
  if (v7 == v8)
  {
    v24 = 1;
  }

  else
  {
    v10 = v9;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = +[CN writableContactProperties];
    v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [v15 key];
        v17 = [v10 containsKey:v16];

        if ((v17 & 1) == 0)
        {
          break;
        }

LABEL_21:
        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }
      }

      if (v7)
      {
        v18 = [v15 key];
        v34 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        v20 = [v7 areKeysAvailable:v19];

        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v20 = 1;
        if (v8)
        {
LABEL_10:
          v21 = [v15 key];
          v33 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          v23 = [v8 areKeysAvailable:v22];

          if (v7)
          {
            v10 = v27;
            if ((v20 ^ v23))
            {
              goto LABEL_25;
            }
          }

          else
          {
            v10 = v27;
          }

LABEL_16:
          if ((v20 & v23) == 1)
          {
            if ([v15 isMultiValue])
            {
              if (([a1 isContact:v7 subsetOfContact:v8 forMultiValueProperty:v15] & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else if (![a1 isContact:v7 subsetOfContact:v8 forSingleValueProperty:v15])
            {
LABEL_25:
              v24 = 0;
              goto LABEL_26;
            }
          }

          goto LABEL_21;
        }
      }

      v23 = 1;
      goto LABEL_16;
    }

LABEL_23:
    v24 = 1;
LABEL_26:
  }

  return v24;
}

+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 forSingleValueProperty:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 CNValueForContact:v7];
  v11 = [v8 CNValueForContact:v9];

  if ([v8 canUnifyValue:v10 withValue:v11] & 1) != 0 || (+[CNContact emptyContact](CNContact, "emptyContact"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v8, "isEqualIgnoringIdentifiersForContact:other:", v7, v12), v12, (v13))
  {
    v14 = 1;
  }

  else
  {
    v15 = [v8 CNValueForContact:v7];
    v14 = v15 == 0;
  }

  return v14;
}

+ (BOOL)isContact:(id)a3 subsetOfContact:(id)a4 forMultiValueProperty:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v9 CNValueForContact:a3];
  v11 = [v9 CNValueForContact:v8];
  v12 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (![a1 _isLabeledValue:*(*(&v20 + 1) + 8 * i) availableInLabeledValues:v11 claimedIndices:v12 forMultiValueProperty:{v9, v20}])
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  return v18;
}

+ (BOOL)_isLabeledValue:(id)a3 availableInLabeledValues:(id)a4 claimedIndices:(id)a5 forMultiValueProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 equivalentLabelSets];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v15 = [v10 label];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __107__CNContactSubsetCalculator__isLabeledValue_availableInLabeledValues_claimedIndices_forMultiValueProperty___block_invoke;
  v22[3] = &unk_1E7416110;
  v16 = v12;
  v23 = v16;
  v29 = a1;
  v17 = v15;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v19 = v13;
  v26 = v19;
  v20 = v10;
  v27 = v20;
  v28 = &v30;
  [v11 enumerateObjectsUsingBlock:v22];
  LOBYTE(v14) = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return v14;
}

uint64_t __107__CNContactSubsetCalculator__isLabeledValue_availableInLabeledValues_claimedIndices_forMultiValueProperty___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [*(a1 + 32) containsIndex:a3];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = [v14 label];
    if ([*(a1 + 80) _isLabel:*(a1 + 40) subsumableIntoLabel:v9 equivalencies:*(a1 + 48)])
    {
      v10 = *(a1 + 56);
      v11 = [*(a1 + 64) value];
      v12 = [v14 value];
      LODWORD(v10) = [v10 canUnifyValue:v11 withValue:v12];

      if (v10)
      {
        [*(a1 + 32) addIndex:a3];
        *(*(*(a1 + 72) + 8) + 24) = 1;
        *a4 = 1;
      }
    }

    v8 = v14;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

+ (BOOL)_isLabel:(id)a3 subsumableIntoLabel:(id)a4 equivalencies:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((*(*MEMORY[0x1E6996568] + 16))() & 1) != 0 || ([v7 isEqual:v8])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = [CNLabeledValue localizedStringForLabel:v7];
    v12 = [CNLabeledValue localizedStringForLabel:v8];
    if ([v11 isEqual:v12])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v9;
      v10 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v14 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if ([v16 containsObject:{v7, v18}] && (objc_msgSend(v16, "containsObject:", v8) & 1) != 0)
            {
              LOBYTE(v10) = 1;
              goto LABEL_17;
            }
          }

          v10 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  return v10;
}

@end