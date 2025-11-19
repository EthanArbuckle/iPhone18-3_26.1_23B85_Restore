@interface CNInstantMessagePickerController
+ (id)defaultServices;
- (CNInstantMessagePickerController)initWithStyle:(int64_t)a3;
- (id)titleForAddCustomItem;
@end

@implementation CNInstantMessagePickerController

- (id)titleForAddCustomItem
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ADD_CUSTOM_SERVICE_BUTTON" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNInstantMessagePickerController)initWithStyle:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CNInstantMessagePickerController;
  v3 = [(CNPickerController *)&v15 initWithStyle:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [objc_opt_class() defaultServices];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          [v4 addObject:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [(CNPickerController *)v3 setBuiltinItems:v4];
  }

  return v3;
}

+ (id)defaultServices
{
  if (defaultServices_onceToken != -1)
  {
    dispatch_once(&defaultServices_onceToken, &__block_literal_global_20961);
  }

  v3 = defaultServices__services;

  return v3;
}

void __51__CNInstantMessagePickerController_defaultServices__block_invoke()
{
  v18[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69967B0] defaultCountryCode];
  v1 = [v0 isEqualToString:@"cn"];

  if (v1)
  {
    v2 = MEMORY[0x1E695C498];
    v3 = MEMORY[0x1E695C490];
    v4 = MEMORY[0x1E695C4B8];
    v5 = MEMORY[0x1E695C470];
    v6 = MEMORY[0x1E695C478];
    v7 = MEMORY[0x1E695C488];
    v18[0] = *MEMORY[0x1E695C4A8];
    v8 = MEMORY[0x1E695C4A0];
    v9 = MEMORY[0x1E695C4B0];
    v10 = v18;
  }

  else
  {
    v2 = MEMORY[0x1E695C4A8];
    v3 = MEMORY[0x1E695C498];
    v4 = MEMORY[0x1E695C490];
    v5 = MEMORY[0x1E695C4B8];
    v6 = MEMORY[0x1E695C470];
    v7 = MEMORY[0x1E695C478];
    v17 = *MEMORY[0x1E695C4B0];
    v8 = MEMORY[0x1E695C488];
    v9 = MEMORY[0x1E695C4A0];
    v10 = &v17;
  }

  v11 = *v8;
  v10[1] = *v9;
  v10[2] = v11;
  v12 = *v6;
  v10[3] = *v7;
  v10[4] = v12;
  v13 = *v4;
  v10[5] = *v5;
  v10[6] = v13;
  v14 = *v2;
  v10[7] = *v3;
  v10[8] = v14;
  v10[9] = *MEMORY[0x1E695C480];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v16 = defaultServices__services;
  defaultServices__services = v15;
}

@end