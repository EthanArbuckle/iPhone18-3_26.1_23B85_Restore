@interface NSExtension
@end

@implementation NSExtension

void __125__NSExtension_RPExtensions__extensionsWithMatchingPointName_baseIdentifier_activationRule_unwantedActivationRule_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a3;
  obj = v5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v6 = *v34;
    v7 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 extensionPointIdentifier];
        v11 = [v9 _extensionBundle];
        NSLog(&cfstr_Nsextensionpoi.isa, v10, v11);

        if (*(a1 + 32))
        {
          v12 = [v9 identifier];
          v13 = [v12 hasPrefix:*(a1 + 32)];

          if (!v13)
          {
            continue;
          }
        }

        v14 = [v9 attributes];
        v15 = [v14 objectForKeyedSubscript:@"NSExtensionActivationRule"];
        v16 = *(v7 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v6;
          v18 = v15;
          v19 = v18;
          if (*(a1 + 40))
          {
            v20 = [v18 objectForKeyedSubscript:?];
            if (!v20)
            {
              goto LABEL_15;
            }

            v21 = v20;
            v22 = [v19 objectForKeyedSubscript:*(a1 + 40)];
            v23 = [v22 BOOLValue];

            if (!v23)
            {
              goto LABEL_15;
            }
          }

          if (*(a1 + 48))
          {
            v24 = [v19 objectForKeyedSubscript:?];
            if (v24)
            {
              v25 = v24;
              v26 = [v19 objectForKeyedSubscript:*(a1 + 48)];
              v27 = [v26 BOOLValue];

              if (v27)
              {
LABEL_15:

                v6 = v17;
                v7 = 0x277CBE000;
LABEL_20:

                continue;
              }
            }
          }

          v6 = v17;
          v7 = 0x277CBE000;
        }

        else if (*(a1 + 40))
        {
          goto LABEL_20;
        }

        [*(a1 + 56) addObject:v9];
        goto LABEL_20;
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    (*(v28 + 16))(v28, *(a1 + 56), v30);
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end