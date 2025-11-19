@interface CNMultiValueUpdate
+ (id)addValue:(id)a3;
+ (id)removeValue:(id)a3;
+ (id)reorderValues:(id)a3;
+ (id)replaceValue:(id)a3 withValue:(id)a4;
- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8;
- (int64_t)multiValueIndexForValue:(id)a3 inMultiValue:(void *)a4 identifier:(id *)a5;
- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4;
@end

@implementation CNMultiValueUpdate

+ (id)addValue:(id)a3
{
  v3 = a3;
  v4 = [(CNMultiValueSingleUpdate *)[CNMultiValueAddUpdate alloc] initWithValue:v3];

  return v4;
}

+ (id)removeValue:(id)a3
{
  v3 = a3;
  v4 = [(CNMultiValueSingleUpdate *)[CNMultiValueRemoveUpdate alloc] initWithValue:v3];

  return v4;
}

+ (id)replaceValue:(id)a3 withValue:(id)a4
{
  v4 = a4;
  v5 = [(CNMultiValueSingleUpdate *)[CNMultiValueReplaceUpdate alloc] initWithValue:v4];

  return v5;
}

+ (id)reorderValues:(id)a3
{
  v3 = a3;
  v4 = [[CNMultiValueReorderUpdate alloc] initWithValues:v3];

  return v4;
}

- (void)applyToMutableMultiValue:(id)a3 withIdentifierMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (BOOL)applyToABPerson:(void *)a3 abmultivalue:(void *)a4 propertyDescription:(id)a5 isUnified:(BOOL)a6 logger:(id)a7 error:(id *)a8
{
  v10 = a5;
  v11 = a7;
  v12 = self;
  v13 = CNAbstractMethodException();
  objc_exception_throw(v13);
}

- (int64_t)multiValueIndexForValue:(id)a3 inMultiValue:(void *)a4 identifier:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 identifier];
  IndexForGUID = ABMultiValueGetIndexForGUID(a4, v8);
  if (IndexForGUID == -1)
  {

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [v7 linkedIdentifiers];
    v8 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = ABMultiValueGetIndexForGUID(a4, v16);
          if (v17 != -1)
          {
            v10 = v17;
            v8 = v16;
            goto LABEL_15;
          }
        }

        v8 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v10 = -1;
LABEL_15:

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = IndexForGUID;
    if (a5)
    {
LABEL_3:
      v11 = v8;
      *a5 = v8;
    }
  }

  return v10;
}

@end