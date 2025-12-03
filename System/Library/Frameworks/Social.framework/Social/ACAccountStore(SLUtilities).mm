@interface ACAccountStore(SLUtilities)
+ (uint64_t)SLDuplicateAccountExistsForAccount:()SLUtilities withTypeIdentifier:andAccountPropertyIDKey:;
@end

@implementation ACAccountStore(SLUtilities)

+ (uint64_t)SLDuplicateAccountExistsForAccount:()SLUtilities withTypeIdentifier:andAccountPropertyIDKey:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v10 accountTypeWithAccountTypeIdentifier:v8];
  [v10 accountsWithAccountType:v11];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v22 = v11;
    v23 = v10;
    v24 = v8;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 accountPropertyForKey:{v9, v22, v23, v24}];
        v17 = [v7 accountPropertyForKey:v9];
        identifier = [v7 identifier];
        identifier2 = [v15 identifier];
        if (([identifier isEqualToString:identifier2] & 1) != 0 || !v16)
        {
        }

        else
        {
          v20 = [v16 isEqualToString:v17];

          if (v20)
          {

            v12 = 1;
            goto LABEL_13;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
LABEL_13:
    v10 = v23;
    v8 = v24;
    v11 = v22;
  }

  return v12;
}

@end