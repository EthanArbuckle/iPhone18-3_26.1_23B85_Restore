@interface BSSettingsDiff
+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings;
- (BOOL)isEmpty;
- (BOOL)settingChangedForKey:(id)key type:(unint64_t *)type;
- (BSSettingDescriptionProvider)descriptionProvider;
- (BSSettingsDiff)initWithBSXPCCoder:(id)coder;
- (BSSettingsDiff)initWithCoder:(id)coder;
- (BSSettingsDiff)initWithXPCDictionary:(id)dictionary;
- (id)_initWithChanges:(void *)changes flagRemovals:(void *)removals objectRemovals:;
- (id)allSettings;
- (id)copyApplyingDiff:(id)diff;
- (id)copyWithKeys:(id)keys;
- (id)copyWithSettings:(id)settings;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (unint64_t)_diffTypesForSetting:(unint64_t)setting;
- (void)_enumerateSettingsInSet:(void *)set withBlock:;
- (void)applyToSettings:(id)settings;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)inspectChangesWithBlock:(id)block;
@end

@implementation BSSettingsDiff

- (BOOL)isEmpty
{
  IsEmpty = BSSettingsIsEmpty(self->_changes);
  if (IsEmpty)
  {
    if ([(NSSet *)self->_flagRemovals count])
    {
      LOBYTE(IsEmpty) = 0;
    }

    else
    {
      LOBYTE(IsEmpty) = [(NSSet *)self->_objectRemovals count]== 0;
    }
  }

  return IsEmpty;
}

- (id)allSettings
{
  allSettings = [(BSSettings *)self->_changes allSettings];
  v4 = [allSettings mutableCopy];
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

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__BSSettingsDiff_allSettings__block_invoke;
  v12[3] = &unk_1E72CBF60;
  v8 = v7;
  v13 = v8;
  v9 = MEMORY[0x193AE5AC0](v12);
  [(BSSettingsDiff *)self _enumerateSettingsInSet:v9 withBlock:?];
  [(BSSettingsDiff *)self _enumerateSettingsInSet:v9 withBlock:?];
  v10 = v8;

  return v8;
}

- (BSSettingDescriptionProvider)descriptionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionProvider);

  return WeakRetained;
}

+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings
{
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  if (([settingsCopy isKeyedSettings] & 1) != 0 || objc_msgSend(toSettingsCopy, "isKeyedSettings"))
  {
    v8 = [BSKeyedSettingsDiff diffFromSettings:settingsCopy toSettings:toSettingsCopy];
  }

  else
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__7;
    v48 = __Block_byref_object_dispose__7;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__7;
    v42 = __Block_byref_object_dispose__7;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__7;
    v36 = __Block_byref_object_dispose__7;
    v37 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke;
    v29[3] = &unk_1E72CBEC0;
    v9 = settingsCopy;
    v30 = v9;
    v31 = &v44;
    [toSettingsCopy enumerateFlagsWithBlock:v29];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_2;
    v26[3] = &unk_1E72CBEE8;
    v10 = v9;
    v27 = v10;
    v28 = &v44;
    [toSettingsCopy enumerateObjectsWithBlock:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_3;
    v23[3] = &unk_1E72CBF10;
    v11 = toSettingsCopy;
    v24 = v11;
    v25 = &v38;
    [(BSSettings *)v10 _enumerateSettingsForFlagsWithBlock:v23];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_4;
    v19[3] = &unk_1E72CBF38;
    v12 = v11;
    v20 = v12;
    v21 = &v44;
    v22 = &v32;
    [v10 enumerateObjectsWithBlock:v19];
    if (!BSSettingsIsEmpty(v45[5]) || [v39[5] count] || objc_msgSend(v33[5], "count"))
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

      [v45[5] setDescriptionProvider:v16];
      v17 = [self alloc];
      v8 = [(BSSettingsDiff *)v17 _initWithChanges:v39[5] flagRemovals:v33[5] objectRemovals:?];
      [v8 setDescriptionProvider:v16];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
  }

  return v8;
}

uint64_t __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = [v6 flagForSetting:a2], result != a3))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v8 setFlag:a3 forSetting:a2];
  }

  return result;
}

void __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [*(a1 + 32) objectForSetting:a2];
  if (!v5 || ([v11 isEqual:v5] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [BSSettingsDiff diffFromSettings:v5 toSettings:v11];

      v11 = v6;
    }

    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = objc_opt_new();
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 setObject:v11 forSetting:a2];
  }
}

void __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (!v4 || [v4 flagForSetting:a2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v5 addObject:?];
  }
}

void __46__BSSettingsDiff_diffFromSettings_toSettings___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = a1[4];
  if (!v5 || ([v5 objectForSetting:a2], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [BSSettingsDiff diffFromSettings:v17 toSettings:0];
      v8 = *(*(a1[5] + 8) + 40);
      if (!v8)
      {
        v9 = objc_opt_new();
        v10 = *(a1[5] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(a1[5] + 8) + 40);
      }

      [v8 setObject:v7 forSetting:a2];
    }

    v12 = *(*(a1[6] + 8) + 40);
    if (!v12)
    {
      v13 = objc_opt_new();
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(a1[6] + 8) + 40);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v12 addObject:v16];
  }
}

- (id)_initWithChanges:(void *)changes flagRemovals:(void *)removals objectRemovals:
{
  v8 = a2;
  changesCopy = changes;
  removalsCopy = removals;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = BSSettingsDiff;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, changes);
      objc_storeStrong(self + 3, removals);
    }
  }

  return self;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_changes forKey:@"_changes"];
  [coderCopy encodeCollection:self->_flagRemovals forKey:@"_flagRemovals"];
  [coderCopy encodeCollection:self->_objectRemovals forKey:@"_objectRemovals"];
}

- (BSSettingsDiff)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changes"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_msgSend(objc_opt_class() forKey:{"_removalClass"), @"_flagRemovals"}];
  v8 = objc_opt_class();
  v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_msgSend(objc_opt_class() forKey:{"_removalClass"), @"_objectRemovals"}];
  v10 = [(BSSettingsDiff *)&self->super.isa _initWithChanges:v5 flagRemovals:v7 objectRemovals:v9];

  return v10;
}

- (BSSettingsDiff)initWithXPCDictionary:(id)dictionary
{
  v4 = [BSXPCCoder coderWithMessage:dictionary];
  v5 = [(BSSettingsDiff *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v4 = [BSXPCCoder coderWithMessage:dictionary];
  [(BSSettingsDiff *)self encodeWithBSXPCCoder:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_changes forKey:@"changes"];
  [coderCopy encodeObject:self->_flagRemovals forKey:@"flagRemovals"];
  [coderCopy encodeObject:self->_objectRemovals forKey:@"objectRemovals"];
}

- (BSSettingsDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_msgSend(objc_opt_class(), "_removalClass"), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"flagRemovals"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"objectRemovals"];
  v11 = [(BSSettingsDiff *)&self->super.isa _initWithChanges:v5 flagRemovals:v9 objectRemovals:v10];

  return v11;
}

- (void)applyToSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy applySettings:self->_changes];
  flagRemovals = self->_flagRemovals;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__BSSettingsDiff_applyToSettings___block_invoke;
  v11[3] = &unk_1E72CBF60;
  v6 = settingsCopy;
  v12 = v6;
  [(BSSettingsDiff *)self _enumerateSettingsInSet:v11 withBlock:?];
  objectRemovals = self->_objectRemovals;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__BSSettingsDiff_applyToSettings___block_invoke_2;
  v9[3] = &unk_1E72CBF60;
  v8 = v6;
  v10 = v8;
  [(BSSettingsDiff *)self _enumerateSettingsInSet:v9 withBlock:?];
}

- (void)_enumerateSettingsInSet:(void *)set withBlock:
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = a2;
  setCopy = set;
  v6 = setCopy;
  if (self && setCopy)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v13;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (v18)
        {
          break;
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (v6)[2](v6, [v11 unsignedIntegerValue], &v18);
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__enumerateSettingsInSet_withBlock_ object:self file:@"BSSettingsDiff.m" lineNumber:314 description:@"Unexpected type found in the hashtable."];
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }
}

- (void)inspectChangesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    allSettings = [(BSSettingsDiff *)self allSettings];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__BSSettingsDiff_inspectChangesWithBlock___block_invoke;
    v6[3] = &unk_1E72CBF88;
    v6[4] = self;
    v7 = blockCopy;
    [allSettings enumerateWithBlock:v6];
  }
}

uint64_t __42__BSSettingsDiff_inspectChangesWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _diffTypesForSetting:a2];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

- (id)copyWithSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__7;
    v17 = __Block_byref_object_dispose__7;
    v18 = 0;
    allSettings = [(BSSettings *)self->_changes allSettings];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__BSSettingsDiff_copyWithSettings___block_invoke;
    v10[3] = &unk_1E72CBFB0;
    v10[4] = self;
    v11 = settingsCopy;
    v12 = &v13;
    [allSettings enumerateWithBlock:v10];

    v6 = [v14[5] copy];
    if (!v6)
    {
      v6 = self->_changes;
      if (!v6)
      {
        if (self->_flagRemovals)
        {
          v6 = 0;
        }

        else
        {
          v6 = 0;
          v7 = 0;
          if (!self->_objectRemovals)
          {
LABEL_9:

            _Block_object_dispose(&v13, 8);
            goto LABEL_10;
          }
        }
      }
    }

    v7 = [[BSSettingsDiff alloc] _initWithChanges:v6 flagRemovals:self->_flagRemovals objectRemovals:self->_objectRemovals];
    WeakRetained = objc_loadWeakRetained(&self->_descriptionProvider);
    [v7 setDescriptionProvider:WeakRetained];

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

void __35__BSSettingsDiff_copyWithSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 8) objectForSetting:a2];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [*(*(a1 + 32) + 8) mutableCopy];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v17 = [v8 copyWithSettings:*(a1 + 40)];

    [*(*(*(a1 + 48) + 8) + 40) setObject:v17 forSetting:a2];
    v12 = v17;
  }

  else if ([*(a1 + 40) containsValue:a2])
  {
    v12 = 0;
  }

  else
  {
    v13 = *(*(*(a1 + 48) + 8) + 40);
    if (!v13)
    {
      v14 = [*(*(a1 + 32) + 8) mutableCopy];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v13 setObject:0 forSetting:a2];
    [*(*(*(a1 + 48) + 8) + 40) setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:a2];
    v12 = 0;
  }
}

- (id)copyWithKeys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call -copyWithKeys: on a non-keyed diff"];
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
    v21 = 241;
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

  if ([diffCopy _isKeyed])
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot apply a keyed diff to a non-keyed diff"];
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
      v77 = 247;
      v78 = 2114;
      v79 = v40;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v44 = v40;
    qword_1EAD33B00 = [v40 UTF8String];
    __break(0);
    JUMPOUT(0x18FF7A750);
  }

  selfCopy5 = self;
  v47 = v6;
  if (v47 == selfCopy5)
  {
    goto LABEL_51;
  }

  p_isa = &selfCopy5->super.isa;
  v8 = objc_opt_new();
  [(BSSettings *)selfCopy5->_changes _applyToSettings:v8 preserveDiffs:1];
  [v47[1] _applyToSettings:v8 preserveDiffs:1];
  descriptionProvider = [(BSSettings *)selfCopy5->_changes descriptionProvider];
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
        [v8 setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:{objc_msgSend(v17, "unsignedIntegerValue")}];
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
        [v8 setObject:0 forSetting:{objc_msgSend(v22, "unsignedIntegerValue")}];
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
        if ([v8 flagForSetting:{objc_msgSend(v27, "unsignedIntegerValue")}] == 0x7FFFFFFFFFFFFFFFLL)
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
        v33 = [v8 objectForSetting:{objc_msgSend(v32, "unsignedIntegerValue")}];
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
    selfCopy3 = [[BSSettingsDiff alloc] _initWithChanges:v8 flagRemovals:v11 objectRemovals:v12];
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
  changes = self->_changes;
  v8 = 1;
  if (!changes || [(BSSettings *)changes flagForSetting:setting]== 0x7FFFFFFFFFFFFFFFLL)
  {
    flagRemovals = self->_flagRemovals;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:setting];
    LODWORD(flagRemovals) = [(NSSet *)flagRemovals containsObject:v7];

    if (!flagRemovals)
    {
      v8 = 0;
    }
  }

  v9 = self->_changes;
  if (v9 && ([(BSSettings *)self->_changes objectForSetting:setting], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = 1;
  }

  else
  {
    objectRemovals = self->_objectRemovals;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:setting];
    v11 = [(NSSet *)objectRemovals containsObject:v13];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = 0;
  }

LABEL_12:
  if (v11)
  {
    return v8 | 2;
  }

  else
  {
    return v8;
  }
}

- (BOOL)settingChangedForKey:(id)key type:(unint64_t *)type
{
  v5 = [(BSSettingsDiff *)self _diffTypesForKey:key];
  if (type)
  {
    *type = v5;
  }

  return v5 != 0;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSSettingsDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v6 = [BSDescriptionBuilder builderWithObject:self];
  allSettings = [(BSSettingsDiff *)self allSettings];
  if ([allSettings count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__BSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke;
    v13[3] = &unk_1E72CC000;
    v14 = allSettings;
    selfCopy = self;
    v8 = v6;
    v16 = v8;
    v17 = a2;
    [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v13];
    v9 = v16;
    v10 = v8;
  }

  else
  {
    v11 = [v6 appendObject:@"(empty)" withName:0];
  }

  return v6;
}

void __56__BSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__BSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E72CBFD8;
  v2 = a1[4];
  v3 = a1[6];
  v6[4] = a1[5];
  v4 = v3;
  v5 = a1[7];
  v7 = v4;
  v8 = v5;
  [v2 enumerateWithBlock:v6];
}

void __56__BSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = [v5 flagForSetting:a2];
    v4 = *(a1 + 32);
    v7 = *(v4 + 8);
    if (v7)
    {
      v26 = [v7 objectForSetting:a2];
      v4 = *(a1 + 32);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  WeakRetained = objc_loadWeakRetained((v4 + 32));
  if (*(*(a1 + 32) + 8) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained settings:*(*(a1 + 32) + 8) keyDescriptionForSetting:a2];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_12:
      v10 = [*(a1 + 32) _keyDescriptionForSetting:a2];
      goto LABEL_13;
    }

    v9 = [WeakRetained keyDescriptionForSetting:a2];
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (*(*(a1 + 32) + 8) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [WeakRetained settings:*(*(a1 + 32) + 8) valueDescriptionForFlag:v6 object:v26 ofSetting:a2];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_20;
    }

    v11 = [WeakRetained valueDescriptionForFlag:v6 object:v26 ofSetting:a2];
  }

  v12 = v11;
  if (v11)
  {
    [BSSettings _appendObject:v11 toBuilder:*(a1 + 40) forName:v10];
    goto LABEL_30;
  }

LABEL_20:
  v13 = [*(a1 + 32) _diffTypesForSetting:a2];
  v14 = v26;
  if (!v26)
  {
    v14 = @"(removed)" & (v13 << 62 >> 63);
  }

  v26 = v14;
  if ((~v13 & 3) != 0)
  {
    if ((v13 & 1) == 0)
    {
      if ((v13 & 2) == 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid diff type for %@", v10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(*(a1 + 48));
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = *(a1 + 32);
          *buf = 138544642;
          v28 = v21;
          v29 = 2114;
          v30 = v23;
          v31 = 2048;
          v32 = v24;
          v33 = 2114;
          v34 = @"BSSettingsDiff.m";
          v35 = 1024;
          v36 = 432;
          v37 = 2114;
          v38 = v20;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v25 = v20;
        qword_1EAD33B00 = [v20 UTF8String];
        __break(0);
        JUMPOUT(0x18FF7B074);
      }

      [BSSettings _appendObject:v14 toBuilder:*(a1 + 40) forName:v10];
      goto LABEL_29;
    }

    v19 = BSSettingFlagDescription(v6);
    [BSSettings _appendObject:v19 toBuilder:*(a1 + 40) forName:v10];
  }

  else
  {
    v15 = BSSettingFlagDescription(v6);
    v16 = *(a1 + 40);
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [flag]", v10];
    [BSSettings _appendObject:v15 toBuilder:v16 forName:v17];

    v18 = *(a1 + 40);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [obj]", v10];
    [BSSettings _appendObject:v26 toBuilder:v18 forName:v19];
  }

LABEL_29:
  v12 = 0;
LABEL_30:
}

@end