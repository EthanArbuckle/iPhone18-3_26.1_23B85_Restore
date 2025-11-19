@interface HMAccessorySelectionSetting
- (HMAccessorySelectionSetting)initWithInternal:(id)a3;
- (HMAccessorySelectionSetting)initWithKey:(id)a3 properties:(unint64_t)a4 value:(id)a5 items:(id)a6;
- (NSArray)items;
- (void)_setting:(id)a3 didAddConstraint:(id)a4;
- (void)addItem:(id)a3 completionHandler:(id)a4;
- (void)removeItem:(id)a3 completionHandler:(id)a4;
- (void)updateValue:(id)a3;
@end

@implementation HMAccessorySelectionSetting

- (void)_setting:(id)a3 didAddConstraint:(id)a4
{
  v5 = [a4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setSetting:self];
}

- (void)removeItem:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [(HMAccessorySetting *)self internal];
    v8 = [v7 constraints];

    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v12 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if ([v6 isEqual:v15])
          {
            v9 = v12;

            goto LABEL_15;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    objc_initWeak(&location, v6);
    v16 = [(HMAccessorySetting *)self internal];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__HMAccessorySelectionSetting_removeItem_completionHandler___block_invoke;
    v24[3] = &unk_1E754D910;
    objc_copyWeak(&v26, &location);
    v25 = v23;
    [v16 removeConstraint:v9 completionHandler:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);

    v17 = v23;
  }

  else
  {
    v18 = [(HMAccessorySetting *)self internal];
    v19 = [v18 context];
    v20 = [v19 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    v17 = v23;
    [v20 callCompletion:v23 error:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __60__HMAccessorySelectionSetting_removeItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSetting:0];

    v3 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x1EEE66BB8](v5, v3);
}

- (void)addItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [[HMAccessorySettingConstraint alloc] initWithType:4 value:v6];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v9 = [(HMAccessorySetting *)self internal];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__HMAccessorySelectionSetting_addItem_completionHandler___block_invoke;
    v13[3] = &unk_1E754D8E8;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, &from);
    v14 = v7;
    [v9 addConstraint:v8 completionHandler:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [(HMAccessorySetting *)self internal];
    v10 = [(HMAccessorySettingConstraint *)v8 context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v11 callCompletion:v7 error:v12];
  }
}

uint64_t __57__HMAccessorySelectionSetting_addItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 setSetting:WeakRetained];

    v3 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v3 = v8;
  }

  return MEMORY[0x1EEE66BB8](v6, v3);
}

- (NSArray)items
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessorySetting *)self internal];
  v3 = [v2 constraints];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 type] == 4)
        {
          v11 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            [v4 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (HMAccessorySelectionSetting)initWithInternal:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HMAccessorySelectionSetting;
  v5 = [(HMAccessorySetting *)&v20 initWithInternal:v4];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 constraints];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * v10) value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          [v13 setSetting:v5];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)updateValue:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySetting *)self internal];
  [v5 setValue:v4];

  v6 = [(HMAccessorySetting *)self internal];
  [(HMAccessorySetting *)self _settingDidUpdateValue:v6];
}

- (HMAccessorySelectionSetting)initWithKey:(id)a3 properties:(unint64_t)a4 value:(id)a5 items:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[HMAccessorySettingConstraint alloc] initWithType:4 value:*(*(&v24 + 1) + 8 * v17)];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = [[_HMAccessorySetting alloc] initWithType:4 properties:a4 name:v9 constraints:v12];
  [(_HMAccessorySetting *)v19 setValue:v10];
  v20 = [(HMAccessorySelectionSetting *)self initWithInternal:v19];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end