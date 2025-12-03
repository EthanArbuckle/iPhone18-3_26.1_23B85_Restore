@interface AVTPresetStore
- (AVTPresetStore)init;
- (char)setPreset:(uint64_t)preset forCategory:;
- (id)debugDescription;
- (id)presetForCategory:(id *)category;
- (id)resolvedPresetForCategory:(id *)category;
- (unint64_t)solveDependencies;
- (void)registerDependenciesForPreset:(id)preset previouslyRegisteredPresets:(id)presets;
- (void)solveDependenciesForCategory:(int64_t)category;
@end

@implementation AVTPresetStore

- (AVTPresetStore)init
{
  v9.receiver = self;
  v9.super_class = AVTPresetStore;
  v2 = [(AVTPresetStore *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    unresolvedDependencies = v2->_unresolvedDependencies;
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = unresolvedDependencies[v4];
      unresolvedDependencies[v4] = v6;

      ++v4;
    }

    while (v4 != 40);
  }

  return v3;
}

- (void)registerDependenciesForPreset:(id)preset previouslyRegisteredPresets:(id)presets
{
  presetCopy = preset;
  presetsCopy = presets;
  if (([presetsCopy containsObject:presetCopy] & 1) == 0)
  {
    [presetsCopy addObject:presetCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__AVTPresetStore_registerDependenciesForPreset_previouslyRegisteredPresets___block_invoke;
    v13[3] = &unk_1E7F47A00;
    v13[4] = self;
    v8 = presetCopy;
    v14 = v8;
    v9 = presetsCopy;
    v15 = v9;
    [v8 enumeratePresetDependencies:v13];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__AVTPresetStore_registerDependenciesForPreset_previouslyRegisteredPresets___block_invoke_2;
    v10[3] = &unk_1E7F47A28;
    v10[4] = self;
    v11 = v8;
    v12 = v9;
    [v11 enumeratePresetSpecificPresetDependencies:v10];
  }
}

void __76__AVTPresetStore_registerDependenciesForPreset_previouslyRegisteredPresets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 8 * a2 + 648);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [(AVTPresetStoreDependency *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 overridePreset];

        if (v13 == v5)
        {
          [v12 addConditionOnPreset:*(a1 + 40)];
          v14 = v7;
          goto LABEL_11;
        }
      }

      v9 = [(AVTPresetStoreDependency *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [[AVTPresetStoreDependency alloc] initWithOverridePreset:v5 conditionedOnPreset:*(a1 + 40)];
  [(AVTPresetStoreDependency *)v7 addObject:v14];
  ++*(*(a1 + 32) + 968);
  [*(a1 + 32) registerDependenciesForPreset:v5 previouslyRegisteredPresets:*(a1 + 48)];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

void __76__AVTPresetStore_registerDependenciesForPreset_previouslyRegisteredPresets___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8 * a2 + 648);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [(AVTPresetStoreDependency *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 overridePreset];

        if (v16 == v8)
        {
          [v15 addConditionOnPreset:*(a1 + 40) forSpecificPresetIdentifier:v7];
          v17 = v10;
          goto LABEL_11;
        }
      }

      v12 = [(AVTPresetStoreDependency *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = [[AVTPresetStoreDependency alloc] initWithOverridePreset:v8 conditionedOnPreset:*(a1 + 40) forSpecificPresetIdentifier:v7];
  [(AVTPresetStoreDependency *)v10 addObject:v17];
  ++*(*(a1 + 32) + 968);
  [*(a1 + 32) registerDependenciesForPreset:v8 previouslyRegisteredPresets:*(a1 + 48)];
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (unint64_t)solveDependencies
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  resolvedPresets = self->_resolvedPresets;
  self->_unresolvedDependencyCount = 0;
  do
  {
    objc_storeStrong((v20 + v3 * 8), self->_resolvedPresets[v3]);
    objc_storeStrong(&self->_resolvedPresets[v3], self->_presets[v3]);
    [(NSMutableArray *)self->_unresolvedDependencies[v3++] removeAllObjects];
  }

  while (v3 != 40);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  for (i = 8; i != 328; i += 8)
  {
    v7 = *(&self->super.isa + i);
    if (v7)
    {
      [(AVTPresetStore *)self registerDependenciesForPreset:v7 previouslyRegisteredPresets:v5];
    }
  }

  v8 = 0;
  while (self->_unresolvedDependencyCount)
  {
    for (j = 0; j != 40; ++j)
    {
      [(AVTPresetStore *)self solveDependenciesForCategory:j];
    }

    if (++v8 == 5)
    {
      v10 = avt_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AVTPresetStore *)v10 solveDependencies];
      }

      break;
    }
  }

  v11 = 0;
  v12 = xmmword_1BB4F0510;
  v13 = 0uLL;
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v13 = vorrq_s8(vbicq_s8(vshlq_u64(v14, v12), vceqq_s64(v20[v11 / 2], *&resolvedPresets[v11])), v13);
    v12 = vaddq_s64(v12, v15);
    v11 += 2;
  }

  while (v11 != 40);
  v19 = v13;

  for (k = 312; k != -8; k -= 8)
  {
  }

  v17 = *MEMORY[0x1E69E9840];
  return vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
}

- (void)solveDependenciesForCategory:(int64_t)category
{
  categoryCopy = category;
  selfCopy = self;
  v74 = *MEMORY[0x1E69E9840];
  v5 = (&self->super.isa + category);
  v6 = v5[81];
  if (![v6 count])
  {
    goto LABEL_67;
  }

  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v7 = v6;
  v50 = v6;
  v55 = [v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
  v47 = v5;
  v8 = 0;
  if (!v55)
  {
    v48 = 0;
    v49 = 0;
    goto LABEL_55;
  }

  v48 = 0;
  v49 = 0;
  v53 = selfCopy;
  v54 = *v68;
  presets = selfCopy->_presets;
  resolvedPresets = selfCopy->_resolvedPresets;
  v51 = categoryCopy;
  v52 = v7;
  do
  {
    for (i = 0; i != v55; ++i)
    {
      if (*v68 != v54)
      {
        objc_enumerationMutation(v7);
      }

      *buf = *(*(&v67 + 1) + 8 * i);
      [v8 removeAllObjects];
      conditions = [*buf conditions];
      v61 = [conditions count];
      if (!v61)
      {
        v35 = [v8 count];
        goto LABEL_44;
      }

      v56 = i;
      v11 = 0;
      v12 = 0;
      v60 = conditions;
      do
      {
        v66 = [conditions objectAtIndexedSubscript:v12];
        presetOfOtherCategory = [v66 presetOfOtherCategory];
        category = [presetOfOtherCategory category];

        v15 = [(AVTPresetStore *)selfCopy hasUnresolvedDependenciesForCategory:category];
        if (v15)
        {
LABEL_10:
          v11 |= !v15;
          goto LABEL_33;
        }

        presetOfOtherCategory2 = [v66 presetOfOtherCategory];
        v17 = resolvedPresets[category];

        if (presetOfOtherCategory2 == v17)
        {
          specificPresetIdentifier = [v66 specificPresetIdentifier];

          conditions = v60;
          if (!specificPresetIdentifier)
          {
            goto LABEL_10;
          }

          specificPresetIdentifier2 = [v66 specificPresetIdentifier];
          identifier = [(AVTPreset *)presets[categoryCopy] identifier];
          v23 = [specificPresetIdentifier2 isEqualToString:identifier];

          v24 = [v7 count];
          v19 = v24 != 1;
          LOBYTE(v18) = v19 | v23;
          if (v24 != 1 && (v23 & 1) == 0)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v25 = v7;
            v26 = [v25 countByEnumeratingWithState:&v62 objects:v72 count:16];
            if (v26)
            {
              v27 = v26;
              v57 = v8;
              v28 = *v63;
              while (2)
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v63 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v62 + 1) + 8 * j);
                  if (v30 != *buf)
                  {
                    specificPresetIdentifier3 = [v66 specificPresetIdentifier];
                    overridePreset = [v30 overridePreset];
                    identifier2 = [overridePreset identifier];
                    v34 = [specificPresetIdentifier3 isEqualToString:identifier2];

                    if (v34)
                    {
                      v18 = 1;
                      goto LABEL_36;
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v62 objects:v72 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }

              v18 = 0;
LABEL_36:
              v7 = v52;
              selfCopy = v53;
              v8 = v57;
              categoryCopy = v51;
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;
          }
        }

        else
        {
          LOBYTE(v18) = 0;
          v19 = 0;
        }

        if (v19 || (v18 & 1) != 0)
        {
          v11 |= !v19;
        }

        else if (v8)
        {
          [v8 addObject:v66];
        }

        else
        {
          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v66 count:1];
        }

        conditions = v60;
LABEL_33:

        ++v12;
      }

      while (v12 != v61);
      v35 = [v8 count];
      if ((v11 & 1) == 0)
      {
        v6 = v50;
        i = v56;
LABEL_44:
        if (v35 == v61)
        {
          if (v49)
          {
            [v49 addObject:*buf];
          }

          else
          {
            v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:buf count:1];
          }
        }

        else
        {
          [conditions removeObjectsInArray:v8];
        }

        goto LABEL_51;
      }

      if (v48)
      {
        [v48 addObject:*buf];
      }

      else
      {
        v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:buf count:1];
      }

      v6 = v50;
      i = v56;
LABEL_51:
    }

    v55 = [v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
  }

  while (v55);
LABEL_55:

  v36 = v48;
  if ([v48 count])
  {
    firstObject = [v48 firstObject];
    overridePreset2 = [firstObject overridePreset];

    if ([v48 count] >= 2)
    {
      v39 = 1;
      do
      {
        v40 = [v36 objectAtIndexedSubscript:v39];
        overridePreset3 = [v40 overridePreset];

        if (overridePreset2 != overridePreset3)
        {
          v42 = avt_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [(AVTPresetStore *)buf solveDependenciesForCategory:v42];
          }
        }

        ++v39;
        v36 = v48;
      }

      while (v39 < [v48 count]);
    }

    v43 = v47[41];
    v47[41] = overridePreset2;
    v44 = overridePreset2;

    selfCopy->_unresolvedDependencyCount -= [v7 count];
    [v7 removeAllObjects];

    v45 = v49;
    v6 = v50;
  }

  else
  {
    v45 = v49;
    if ([v49 count])
    {
      selfCopy->_unresolvedDependencyCount -= [v49 count];
      [v7 removeObjectsInArray:v49];
    }
  }

LABEL_67:
  v46 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  if (debugDescription_onceToken != -1)
  {
    [AVTPresetStore debugDescription];
  }

  v3 = MEMORY[0x1E696AD60];
  v4 = [(AVTPresetStore *)self description];
  v5 = [v3 stringWithString:v4];

  v6 = 0;
  presets = self->_presets;
  resolvedPresets = self->_resolvedPresets;
  do
  {
    v9 = presets[v6];
    v10 = resolvedPresets[v6];
    v11 = AVTPresetCategoryToString(v6);
    [v5 appendFormat:@"\n * %@", v11];
    v12 = debugDescription_maxCategoryToStringLength;
    for (i = v12 - [v11 length]; i; --i)
    {
      [v5 appendString:@"."];
    }

    identifier = [(AVTPreset *)v9 identifier];
    v15 = identifier;
    if (v9 == v10)
    {
      [v5 appendFormat:@": %@", identifier];
    }

    else
    {
      identifier2 = [(AVTPreset *)v10 identifier];
      [v5 appendFormat:@": %@ → %@", v15, identifier2];
    }

    ++v6;
  }

  while (v6 != 40);

  return v5;
}

void __34__AVTPresetStore_debugDescription__block_invoke()
{
  for (i = 0; i != 40; ++i)
  {
    v1 = AVTPresetCategoryToString(i);
    v2 = debugDescription_maxCategoryToStringLength;
    v3 = [v1 length];
    if (v2 <= v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = v2;
    }

    debugDescription_maxCategoryToStringLength = v4;
  }
}

- (id)presetForCategory:(id *)category
{
  if (category)
  {
    category = category[a2 + 1];
    v2 = vars8;
  }

  return category;
}

- (char)setPreset:(uint64_t)preset forCategory:
{
  v6 = a2;
  if (self)
  {
    v7 = &self[8 * preset];
    v9 = *(v7 + 1);
    v8 = (v7 + 8);
    if (v9 == v6)
    {
      self = 0;
    }

    else
    {
      objc_storeStrong(v8, a2);
      self = [self solveDependencies];
    }
  }

  return self;
}

- (id)resolvedPresetForCategory:(id *)category
{
  if (category)
  {
    category = category[a2 + 41];
    v2 = vars8;
  }

  return category;
}

- (void)solveDependenciesForCategory:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "overridePreset == otherOverridePreset";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Two resolved dependencies disagree on the resolved preset!", buf, 0xCu);
}

@end