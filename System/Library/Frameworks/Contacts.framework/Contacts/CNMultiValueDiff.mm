@interface CNMultiValueDiff
+ (id)diffMultiValue:(id)value toMultiValue:(id)multiValue;
+ (id)emptyDiff;
- (BOOL)applyToABPerson:(void *)person propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error;
- (CNMultiValueDiff)initWithUpdates:(id)updates;
- (id)multiValueByApplyToMultiValue:(id)value withIdentifierMap:(id)map;
@end

@implementation CNMultiValueDiff

+ (id)emptyDiff
{
  if (emptyDiff_cn_once_token_0 != -1)
  {
    +[CNMultiValueDiff emptyDiff];
  }

  v3 = emptyDiff_cn_once_object_0;

  return v3;
}

void __29__CNMultiValueDiff_emptyDiff__block_invoke()
{
  v0 = [CNMultiValueDiff alloc];
  v3 = [MEMORY[0x1E695DEC8] array];
  v1 = [(CNMultiValueDiff *)v0 initWithUpdates:v3];
  v2 = emptyDiff_cn_once_object_0;
  emptyDiff_cn_once_object_0 = v1;
}

+ (id)diffMultiValue:(id)value toMultiValue:(id)multiValue
{
  v4 = [CNCalculatesMultiValueDiff diffMultiValue:value toMultiValue:multiValue];
  if ([v4 count])
  {
    v5 = [[CNMultiValueDiff alloc] initWithUpdates:v4];
  }

  else
  {
    v5 = +[CNMultiValueDiff emptyDiff];
  }

  v6 = v5;

  return v6;
}

- (CNMultiValueDiff)initWithUpdates:(id)updates
{
  updatesCopy = updates;
  v10.receiver = self;
  v10.super_class = CNMultiValueDiff;
  v5 = [(CNMultiValueDiff *)&v10 init];
  if (v5)
  {
    v6 = [updatesCopy copy];
    updates = v5->_updates;
    v5->_updates = v6;

    v8 = v5;
  }

  return v5;
}

- (id)multiValueByApplyToMultiValue:(id)value withIdentifierMap:(id)map
{
  v20 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v7 = [value mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_updates;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * i) applyToMutableMultiValue:v7 withIdentifierMap:{mapCopy, v15}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v7 copy];

  return v13;
}

- (BOOL)applyToABPerson:(void *)person propertyDescription:(id)description isUnified:(BOOL)unified logger:(id)logger error:(id *)error
{
  unifiedCopy = unified;
  v36 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  loggerCopy = logger;
  v14 = [descriptionCopy ABMutableMultiValueForABPerson:person];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  updates = [(CNMultiValueDiff *)self updates];
  v16 = [updates countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(updates);
        }

        if (![*(*(&v28 + 1) + 8 * i) applyToABPerson:person abmultivalue:v14 propertyDescription:descriptionCopy isUnified:unifiedCopy logger:loggerCopy error:error])
        {

          v21 = 0;
          goto LABEL_14;
        }
      }

      v17 = [updates countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  cf = 0;
  v20 = [descriptionCopy setABValue:v14 onABPerson:person error:&cf];
  v21 = v20;
  if (error)
  {
    if ((v20 & 1) == 0)
    {
      v33 = @"CNKeyPaths";
      v22 = [descriptionCopy key];
      v32 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v34 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v25 = [CNErrorFactory errorForiOSABError:cf];
      *error = [CNErrorFactory errorByAddingUserInfoEntries:v24 toError:v25];

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

LABEL_14:

  return v21;
}

@end