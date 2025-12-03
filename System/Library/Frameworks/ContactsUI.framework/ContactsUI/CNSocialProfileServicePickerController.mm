@interface CNSocialProfileServicePickerController
+ (id)defaultServices;
- (CNSocialProfileServicePickerController)initWithStyle:(int64_t)style;
- (id)titleForAddCustomItem;
@end

@implementation CNSocialProfileServicePickerController

- (id)titleForAddCustomItem
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ADD_CUSTOM_SERVICE_BUTTON" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNSocialProfileServicePickerController)initWithStyle:(int64_t)style
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CNSocialProfileServicePickerController;
  v3 = [(CNPickerController *)&v15 initWithStyle:style];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    defaultServices = [objc_opt_class() defaultServices];
    v6 = [defaultServices countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(defaultServices);
          }

          [array addObject:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [defaultServices countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [(CNPickerController *)v3 setBuiltinItems:array];
  }

  return v3;
}

+ (id)defaultServices
{
  if (defaultServices_onceToken_49360 != -1)
  {
    dispatch_once(&defaultServices_onceToken_49360, &__block_literal_global_49361);
  }

  v3 = defaultServices__services_49362;

  return v3;
}

void __57__CNSocialProfileServicePickerController_defaultServices__block_invoke()
{
  v13[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69967B0] defaultCountryCode];
  v1 = [v0 isEqualToString:@"cn"];

  if (v1)
  {
    v2 = MEMORY[0x1E695CC60];
    v3 = MEMORY[0x1E695CC58];
    v4 = MEMORY[0x1E695CC50];
    v13[0] = *MEMORY[0x1E695CC68];
    v5 = MEMORY[0x1E695CC48];
    v6 = MEMORY[0x1E695CC78];
    v7 = v13;
  }

  else
  {
    v2 = MEMORY[0x1E695CC68];
    v3 = MEMORY[0x1E695CC60];
    v4 = MEMORY[0x1E695CC58];
    v12 = *MEMORY[0x1E695CC78];
    v5 = MEMORY[0x1E695CC50];
    v6 = MEMORY[0x1E695CC48];
    v7 = &v12;
  }

  v8 = *v5;
  v7[1] = *v6;
  v7[2] = v8;
  v9 = *v3;
  v7[3] = *v4;
  v7[4] = v9;
  v7[5] = *v2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v11 = defaultServices__services_49362;
  defaultServices__services_49362 = v10;
}

@end