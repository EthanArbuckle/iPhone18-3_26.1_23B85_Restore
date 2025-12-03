@interface AVTPresetStoreDependency
- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset;
- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset forSpecificPresetIdentifier:(id)identifier;
- (void)addConditionOnPreset:(id)preset;
- (void)addConditionOnPreset:(id)preset forSpecificPresetIdentifier:(id)identifier;
@end

@implementation AVTPresetStoreDependency

- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset
{
  presetCopy = preset;
  onPresetCopy = onPreset;
  v14.receiver = self;
  v14.super_class = AVTPresetStoreDependency;
  v9 = [(AVTPresetStoreDependency *)&v14 init];
  if (v9)
  {
    v13 = objc_alloc_init(AVTPresetStoreDependencyCondition);
    [(AVTPresetStoreDependencyCondition *)v13 setPresetOfOtherCategory:onPresetCopy];
    objc_storeStrong(&v9->_overridePreset, preset);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v13 count:1];
    conditions = v9->_conditions;
    v9->_conditions = v10;
  }

  return v9;
}

- (AVTPresetStoreDependency)initWithOverridePreset:(id)preset conditionedOnPreset:(id)onPreset forSpecificPresetIdentifier:(id)identifier
{
  presetCopy = preset;
  onPresetCopy = onPreset;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = AVTPresetStoreDependency;
  v12 = [(AVTPresetStoreDependency *)&v17 init];
  if (v12)
  {
    v16 = objc_alloc_init(AVTPresetStoreDependencyCondition);
    [(AVTPresetStoreDependencyCondition *)v16 setPresetOfOtherCategory:onPresetCopy];
    [(AVTPresetStoreDependencyCondition *)v16 setSpecificPresetIdentifier:identifierCopy];
    objc_storeStrong(&v12->_overridePreset, preset);
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v16 count:1];
    conditions = v12->_conditions;
    v12->_conditions = v13;
  }

  return v12;
}

- (void)addConditionOnPreset:(id)preset
{
  v20 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_conditions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        presetOfOtherCategory = [v10 presetOfOtherCategory];
        v12 = presetOfOtherCategory;
        if (presetOfOtherCategory == presetCopy)
        {
          specificPresetIdentifier = [v10 specificPresetIdentifier];

          if (!specificPresetIdentifier)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v5 = objc_alloc_init(AVTPresetStoreDependencyCondition);
  [(NSMutableArray *)v5 setPresetOfOtherCategory:presetCopy];
  [(NSMutableArray *)self->_conditions addObject:v5];
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addConditionOnPreset:(id)preset forSpecificPresetIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_conditions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        presetOfOtherCategory = [v13 presetOfOtherCategory];
        v15 = presetOfOtherCategory;
        if (presetOfOtherCategory == presetCopy)
        {
          specificPresetIdentifier = [v13 specificPresetIdentifier];
          v17 = [specificPresetIdentifier isEqualToString:identifierCopy];

          if (v17)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v8 = objc_alloc_init(AVTPresetStoreDependencyCondition);
  [(NSMutableArray *)v8 setPresetOfOtherCategory:presetCopy];
  [(NSMutableArray *)v8 setSpecificPresetIdentifier:identifierCopy];
  [(NSMutableArray *)self->_conditions addObject:v8];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

@end