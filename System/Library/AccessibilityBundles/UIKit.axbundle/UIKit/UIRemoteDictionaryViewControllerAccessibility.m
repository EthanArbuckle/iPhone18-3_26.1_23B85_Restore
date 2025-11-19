@interface UIRemoteDictionaryViewControllerAccessibility
@end

@implementation UIRemoteDictionaryViewControllerAccessibility

void __82___UIRemoteDictionaryViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(id *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  location[2] = a1;
  location[1] = a1;
  location[0] = [a1[4] accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(__b, 0, sizeof(__b));
    obj = [location[0] allTargets];
    v18 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
    if (v18)
    {
      v14 = *__b[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*__b[2] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(__b[1] + 8 * v15);
        memset(v19, 0, sizeof(v19));
        v11 = [location[0] actionsForTarget:v22 forControlEvent:64];
        v12 = [v11 countByEnumeratingWithState:v19 objects:v24 count:16];
        if (v12)
        {
          v8 = *v19[2];
          v9 = 0;
          v10 = v12;
          while (1)
          {
            v7 = v9;
            if (*v19[2] != v8)
            {
              objc_enumerationMutation(v11);
            }

            v20 = *(v19[1] + 8 * v9);
            if ([v20 isEqualToString:{@"_handleDeleteButton:", v2}])
            {
              v5 = accessibilityLocalizedString(@"dictionary.delete.button");
              [location[0] setAccessibilityLabel:?];
              MEMORY[0x29EDC9740](v5);
              v6 = accessibilityLocalizedString(@"dictionary.delete.button.hint");
              [location[0] setAccessibilityHint:?];
              MEMORY[0x29EDC9740](v6);
              goto LABEL_16;
            }

            if ([v20 isEqualToString:@"_handleDownloadButton:"])
            {
              break;
            }

            v2 = v20;
            _AXAssert();
            ++v9;
            if (v7 + 1 >= v10)
            {
              v9 = 0;
              v10 = [v11 countByEnumeratingWithState:v19 objects:v24 count:{16, v2}];
              if (!v10)
              {
                goto LABEL_16;
              }
            }
          }

          v3 = accessibilityLocalizedString(@"dictionary.download.button");
          [location[0] setAccessibilityLabel:?];
          MEMORY[0x29EDC9740](v3);
          v4 = accessibilityLocalizedString(@"dictionary.download.button.hint");
          [location[0] setAccessibilityHint:?];
          MEMORY[0x29EDC9740](v4);
        }

LABEL_16:
        *&v1 = MEMORY[0x29EDC9740](v11).n128_u64[0];
        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, v1}];
          if (!v16)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
  }

  objc_storeStrong(location, 0);
}

double __82___UIRemoteDictionaryViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_360(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end