@interface CNMultiValueDiff
+ (id)diffMultiValue:(id)a3 toMultiValue:(id)a4;
+ (id)emptyDiff;
- (BOOL)applyToABPerson:(void *)a3 propertyDescription:(id)a4 isUnified:(BOOL)a5 logger:(id)a6 error:(id *)a7;
- (CNMultiValueDiff)initWithUpdates:(id)a3;
- (id)multiValueByApplyToMultiValue:(id)a3 withIdentifierMap:(id)a4;
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

+ (id)diffMultiValue:(id)a3 toMultiValue:(id)a4
{
  v4 = [CNCalculatesMultiValueDiff diffMultiValue:a3 toMultiValue:a4];
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

- (CNMultiValueDiff)initWithUpdates:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNMultiValueDiff;
  v5 = [(CNMultiValueDiff *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    updates = v5->_updates;
    v5->_updates = v6;

    v8 = v5;
  }

  return v5;
}

- (id)multiValueByApplyToMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 mutableCopy];
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

        [*(*(&v15 + 1) + 8 * i) applyToMutableMultiValue:v7 withIdentifierMap:{v6, v15}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v7 copy];

  return v13;
}

- (BOOL)applyToABPerson:(void *)a3 propertyDescription:(id)a4 isUnified:(BOOL)a5 logger:(id)a6 error:(id *)a7
{
  v9 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = [v12 ABMutableMultiValueForABPerson:a3];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [(CNMultiValueDiff *)self updates];
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v35 count:16];
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
          objc_enumerationMutation(v15);
        }

        if (![*(*(&v28 + 1) + 8 * i) applyToABPerson:a3 abmultivalue:v14 propertyDescription:v12 isUnified:v9 logger:v13 error:a7])
        {

          v21 = 0;
          goto LABEL_14;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  cf = 0;
  v20 = [v12 setABValue:v14 onABPerson:a3 error:&cf];
  v21 = v20;
  if (a7)
  {
    if ((v20 & 1) == 0)
    {
      v33 = @"CNKeyPaths";
      v22 = [v12 key];
      v32 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v34 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v25 = [CNErrorFactory errorForiOSABError:cf];
      *a7 = [CNErrorFactory errorByAddingUserInfoEntries:v24 toError:v25];

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