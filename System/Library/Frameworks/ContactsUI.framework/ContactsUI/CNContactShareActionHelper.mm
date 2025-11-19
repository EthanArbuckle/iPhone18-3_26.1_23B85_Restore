@interface CNContactShareActionHelper
+ (BOOL)contact:(id)a3 hasPrivateProperties:(id)a4;
+ (BOOL)contactHasShareableAddressingGrammarValue:(id)a3;
+ (BOOL)contactsHavePrivateProperties:(id)a3;
+ (BOOL)contactsHaveShareableAddressingGrammarValue:(id)a3;
@end

@implementation CNContactShareActionHelper

+ (BOOL)contactHasShareableAddressingGrammarValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 valueForKey:*MEMORY[0x1E695C1C0]];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 _cn_any:&__block_literal_global_29176];
  return v7;
}

uint64_t __72__CNContactShareActionHelper_contactHasShareableAddressingGrammarValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 value];

  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = (*(*MEMORY[0x1E6996528] + 16))();
  return v6 ^ 1u;
}

+ (BOOL)contactsHaveShareableAddressingGrammarValue:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__CNContactShareActionHelper_contactsHaveShareableAddressingGrammarValue___block_invoke;
  v4[3] = &__block_descriptor_40_e19_B16__0__CNContact_8l;
  v4[4] = a1;
  return [a3 _cn_any:v4];
}

+ (BOOL)contact:(id)a3 hasPrivateProperties:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v26 = *MEMORY[0x1E695C1C0];
    v24 = *MEMORY[0x1E6996530];
    v23 = *MEMORY[0x1E6996530] + 16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
        v13 = [v12 objectForKey:v11];

        v14 = [v5 valueForKey:v11];
        if (v14)
        {
          if ([v13 isSingleValue])
          {
            v15 = [v13 nilValue];

            if (v14 != v15)
            {
              v16 = v14;
LABEL_21:

              v21 = 1;
              goto LABEL_22;
            }
          }

          if ([v13 isMultiValue])
          {
            objc_opt_class();
            v16 = v14;
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if ([v11 isEqualToString:v26])
            {
              v19 = [a1 contactHasShareableAddressingGrammarValue:v5];

              v14 = v16;
              if (v19)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v20 = (*(v24 + 16))(v24, v18);

              if (!v20)
              {
                goto LABEL_21;
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

+ (BOOL)contactsHavePrivateProperties:(id)a3
{
  v4 = a3;
  v5 = [CNContactCardFieldPicker privateCardPropertiesForContacts:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CNContactShareActionHelper_contactsHavePrivateProperties___block_invoke;
  v9[3] = &unk_1E74E3C80;
  v10 = v5;
  v11 = a1;
  v6 = v5;
  v7 = [v4 _cn_any:v9];

  return v7;
}

@end