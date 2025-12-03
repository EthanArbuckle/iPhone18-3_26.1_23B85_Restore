@interface BSKeyedSettingsDiff
+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings;
- (id)_keyDescriptionForSetting:(unint64_t)setting;
- (id)allKeys;
- (id)allSettings;
- (id)copyApplyingDiff:(id)diff;
- (id)copyWithKeys:(id)keys;
- (id)copyWithSettings:(id)settings;
- (unint64_t)_diffTypesForKey:(id)key;
- (unint64_t)_diffTypesForSetting:(unint64_t)setting;
- (void)applyToSettings:(id)settings;
- (void)inspectKeyedChangesWithBlock:(id)block;
@end

@implementation BSKeyedSettingsDiff

- (id)allKeys
{
  allKeys = [(BSSettings *)self->super._changes allKeys];
  v4 = [allKeys mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  [v7 unionSet:self->super._flagRemovals];
  [v7 unionSet:self->super._objectRemovals];

  return v7;
}

- (id)allSettings
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(BSKeyedSettingsDiff *)self allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [v3 addValue:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "hash")}];
      }

      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings
{
  v60 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  if (settingsCopy && ([settingsCopy isKeyedSettings] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!from || [from isKeyedSettings]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2048;
      selfCopy2 = self;
      LOWORD(v57) = 2114;
      *(&v57 + 2) = @"BSSettingsDiff.m";
      WORD5(v57) = 1024;
      HIDWORD(v57) = 462;
      v58 = 2114;
      v59 = v20;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    qword_1EAD33B00 = [v20 UTF8String];
    __break(0);
    JUMPOUT(0x18FF7B630);
  }

  if (toSettingsCopy && ([toSettingsCopy isKeyedSettings] & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!to || [to isKeyedSettings]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v28;
      *&buf[22] = 2048;
      selfCopy2 = self;
      LOWORD(v57) = 2114;
      *(&v57 + 2) = @"BSSettingsDiff.m";
      WORD5(v57) = 1024;
      HIDWORD(v57) = 463;
      v58 = 2114;
      v59 = v25;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    qword_1EAD33B00 = [v25 UTF8String];
    __break(0);
    JUMPOUT(0x18FF7B738);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy2 = __Block_byref_object_copy__7;
  *&v57 = __Block_byref_object_dispose__7;
  *(&v57 + 1) = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__7;
  v53 = __Block_byref_object_dispose__7;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__7;
  v47 = __Block_byref_object_dispose__7;
  v48 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke;
  v40[3] = &unk_1E72CC028;
  v9 = settingsCopy;
  v41 = v9;
  v42 = buf;
  [toSettingsCopy enumerateKeyedFlagsWithBlock:v40];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_2;
  v37[3] = &unk_1E72CC050;
  v10 = v9;
  v38 = v10;
  v39 = buf;
  [toSettingsCopy enumerateKeyedObjectsWithBlock:v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_3;
  v34[3] = &unk_1E72CC028;
  v11 = toSettingsCopy;
  v35 = v11;
  v36 = &v49;
  [v10 enumerateKeyedFlagsWithBlock:v34];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_4;
  v30[3] = &unk_1E72CC078;
  v12 = v11;
  v31 = v12;
  v32 = buf;
  v33 = &v43;
  [v10 enumerateKeyedObjectsWithBlock:v30];
  if (!BSSettingsIsEmpty(*(*&buf[8] + 40)) || [v50[5] count] || objc_msgSend(v44[5], "count"))
  {
    descriptionProvider = [v12 descriptionProvider];
    v14 = descriptionProvider;
    if (descriptionProvider)
    {
      descriptionProvider2 = descriptionProvider;
    }

    else
    {
      descriptionProvider2 = [v10 descriptionProvider];
    }

    v16 = descriptionProvider2;

    [*(*&buf[8] + 40) setDescriptionProvider:v16];
    v17 = [self alloc];
    v18 = [(BSSettingsDiff *)v17 _initWithChanges:v50[5] flagRemovals:v44[5] objectRemovals:?];
    [v18 setDescriptionProvider:v16];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(buf, 8);

  return v18;
}

void __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 flagForKey:v10] != a3)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 setFlag:a3 forKey:v10];
  }
}

void __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || ([v6 objectForKey:v15], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, (v8 & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) objectForKey:v15];
      v10 = [BSSettingsDiff diffFromSettings:v9 toSettings:v5];

      v5 = v10;
    }

    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v11 setObject:v5 forKey:v15];
  }
}

void __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  if (!v3 || [v3 flagForKey:v8] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v4 addObject:v8];
  }
}

void __51__BSKeyedSettingsDiff_diffFromSettings_toSettings___block_invoke_4(void *a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = a1[4];
  if (!v6 || ([v6 objectForKey:v17], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [BSSettingsDiff diffFromSettings:v5 toSettings:0];
      v9 = *(*(a1[5] + 8) + 40);
      if (!v9)
      {
        v10 = objc_opt_new();
        v11 = *(a1[5] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v9 = *(*(a1[5] + 8) + 40);
      }

      [v9 setObject:v8 forKey:v17];
    }

    v13 = *(*(a1[6] + 8) + 40);
    if (!v13)
    {
      v14 = objc_opt_new();
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(a1[6] + 8) + 40);
    }

    [v13 addObject:v17];
  }
}

- (void)applyToSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  [settingsCopy applySettings:self->super._changes];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->super._flagRemovals;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [settingsCopy setFlag:0x7FFFFFFFFFFFFFFFLL forKey:*(*(&v17 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = self->super._objectRemovals;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [settingsCopy setObject:0 forKey:{*(*(&v13 + 1) + 8 * v12++), v13}];
      }

      while (v10 != v12);
      v10 = [(NSSet *)v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)inspectKeyedChangesWithBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = objc_opt_class();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(BSKeyedSettingsDiff *)self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v14 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(BSKeyedSettingsDiff *)self _diffTypesForKey:v8];
        if ((v9 & 2) != 0)
        {
          v10 = [(BSSettings *)self->super._changes objectForKey:v8];
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          blockCopy[2](blockCopy, v8, v9, v12);
        }

        else
        {
          blockCopy[2](blockCopy, v8, v9, 0);
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (id)copyWithKeys:(id)keys
{
  v28 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if ([keysCopy count])
  {
    v5 = self->super._changes;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(BSSettings *)v5 allKeys];
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    selfCopy = self;
    v7 = 0;
    if (v6)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          selfCopy = [(BSSettings *)v5 objectForKey:v10, selfCopy];
          v12 = objc_opt_class();
          v13 = selfCopy;
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            if (!v7)
            {
              v7 = [(BSSettings *)selfCopy->super._changes mutableCopy];
            }

            v16 = [v15 copyWithKeys:keysCopy];

            [v7 setObject:v16 forKey:v10];
          }

          else if ([keysCopy containsObject:v10])
          {
            v16 = 0;
          }

          else
          {
            if (!v7)
            {
              v7 = [(BSSettings *)selfCopy->super._changes mutableCopy];
            }

            [v7 setObject:0 forKey:v10];
            [v7 setFlag:0x7FFFFFFFFFFFFFFFLL forKey:v10];
            v16 = 0;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v17 = [v7 copy];
    if (!v17)
    {
      v17 = selfCopy->super._changes;
      if (!v17)
      {
        if (selfCopy->super._flagRemovals)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          if (!selfCopy->super._objectRemovals)
          {
LABEL_30:

            goto LABEL_31;
          }
        }
      }
    }

    v18 = [(BSSettingsDiff *)[BSKeyedSettingsDiff alloc] _initWithChanges:v17 flagRemovals:selfCopy->super._flagRemovals objectRemovals:selfCopy->super._objectRemovals];
    descriptionProvider = [(BSSettingsDiff *)selfCopy descriptionProvider];
    [v18 setDescriptionProvider:descriptionProvider];

    goto LABEL_30;
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (id)copyWithSettings:(id)settings
{
  v24 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call -copyWithSettings: on a keyed diff"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138544642;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    selfCopy = self;
    v18 = 2114;
    v19 = @"BSSettingsDiff.m";
    v20 = 1024;
    v21 = 600;
    v22 = 2114;
    v23 = v6;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
  }

  v10 = v6;
  result = [v6 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (id)copyApplyingDiff:(id)diff
{
  v80 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  v6 = diffCopy;
  selfCopy = self;
  if (!diffCopy)
  {
    selfCopy2 = self;
LABEL_51:
    selfCopy3 = self;
    goto LABEL_58;
  }

  if (([diffCopy _isKeyed] & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot apply a non-keyed diff to a keyed diff"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      v69 = v41;
      v70 = 2114;
      v71 = v43;
      v72 = 2048;
      selfCopy4 = self;
      v74 = 2114;
      v75 = @"BSSettingsDiff.m";
      v76 = 1024;
      v77 = 605;
      v78 = 2114;
      v79 = v40;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v44 = v40;
    qword_1EAD33B00 = [v40 UTF8String];
    __break(0);
    JUMPOUT(0x18FF7CB34);
  }

  selfCopy5 = self;
  v47 = v6;
  if (v47 == selfCopy5)
  {
    goto LABEL_51;
  }

  p_isa = &selfCopy5->super.super.isa;
  v8 = objc_opt_new();
  [(BSSettings *)selfCopy5->super._changes _applyToSettings:v8 preserveDiffs:1];
  [v47[1] _applyToSettings:v8 preserveDiffs:1];
  descriptionProvider = [(BSSettings *)selfCopy5->super._changes descriptionProvider];
  descriptionProvider2 = descriptionProvider;
  if (!descriptionProvider)
  {
    descriptionProvider2 = [v47[1] descriptionProvider];
  }

  [v8 setDescriptionProvider:descriptionProvider2];
  if (!descriptionProvider)
  {
  }

  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = v47[2];
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v14)
  {
    v15 = *v61;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        [v8 setFlag:0x7FFFFFFFFFFFFFFFLL forKey:v17];
        [v11 addObject:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v14);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v18 = v47[3];
  v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v19)
  {
    v20 = *v57;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v56 + 1) + 8 * j);
        [v8 setObject:0 forKey:v22];
        [v12 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v19);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = p_isa[2];
  v24 = [v23 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v24)
  {
    v25 = *v53;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v53 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v52 + 1) + 8 * k);
        if ([v8 flagForKey:v27] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 addObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v24);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = p_isa[3];
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v29)
  {
    v30 = *v49;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v48 + 1) + 8 * m);
        v33 = [v8 objectForKey:v32];
        v34 = v33 == 0;

        if (v34)
        {
          [v12 addObject:v32];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v29);
  }

  if (BSSettingsIsEmpty(v8))
  {

    v8 = 0;
  }

  if (![v11 count])
  {

    v11 = 0;
  }

  if (![v12 count])
  {

    v12 = 0;
  }

  if (v8 || v11 || v12)
  {
    selfCopy3 = [(BSSettingsDiff *)[BSKeyedSettingsDiff alloc] _initWithChanges:v8 flagRemovals:v11 objectRemovals:v12];
    descriptionProvider3 = [p_isa descriptionProvider];
    descriptionProvider4 = descriptionProvider3;
    if (!descriptionProvider3)
    {
      descriptionProvider4 = [v47 descriptionProvider];
    }

    [(BSSettingsDiff *)selfCopy3 setDescriptionProvider:descriptionProvider4];
    if (!descriptionProvider3)
    {
    }
  }

  else
  {
    selfCopy3 = 0;
  }

LABEL_58:
  return selfCopy3;
}

- (unint64_t)_diffTypesForSetting:(unint64_t)setting
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [(BSSettings *)self->super._changes allKeys];
  v6 = 0;
  v7 = [allKeys countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v31 + 1) + 8 * i) hash] == setting)
        {
          v10 = [(BSSettings *)self->super._changes flagForSetting:setting];
          v11 = [(BSSettings *)self->super._changes objectForSetting:setting];
          v12 = v10 != 0x7FFFFFFFFFFFFFFFLL;
          v13 = v11 == 0;

          if (v13)
          {
            v6 |= v12;
          }

          else
          {
            v6 |= v12 | 2;
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->super._flagRemovals;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v6 |= [*(*(&v27 + 1) + 8 * j) hash] == setting;
      }

      v15 = [(NSSet *)v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v15);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->super._objectRemovals;
  v19 = [(NSSet *)v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v19)
  {
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if ([*(*(&v23 + 1) + 8 * k) hash] == setting)
        {
          v6 |= 2uLL;
        }
      }

      v19 = [(NSSet *)v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }

  return v6;
}

- (unint64_t)_diffTypesForKey:(id)key
{
  keyCopy = key;
  changes = self->super._changes;
  v6 = changes && [(BSSettings *)changes flagForKey:keyCopy]!= 0x7FFFFFFFFFFFFFFFLL || [(NSSet *)self->super._flagRemovals containsObject:keyCopy];
  v7 = self->super._changes;
  if (v7 && ([(BSSettings *)self->super._changes objectForKey:keyCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSSet *)self->super._objectRemovals containsObject:keyCopy];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:
  if (v9)
  {
    v10 = v6 | 2;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (id)_keyDescriptionForSetting:(unint64_t)setting
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(BSKeyedSettingsDiff *)self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      if ([v9 hash] == setting)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v12.receiver = self;
  v12.super_class = BSKeyedSettingsDiff;
  v10 = [(BSSettingsDiff *)&v12 _keyDescriptionForSetting:setting];
LABEL_12:

  return v10;
}

@end