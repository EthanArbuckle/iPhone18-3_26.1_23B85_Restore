@interface CNContactHandleStringIndexer
+ (id)indexByMatchingIndexWithRawHandles:(id)a3 toTargetHandleStrings:(id)a4;
- (CNContactHandleStringIndexer)initWithTargetHandleStrings:(id)a3;
- (NSDictionary)index;
- (id)description;
- (id)indexWithRawHandles;
- (void)indexContact:(id)a3;
- (void)indexContacts:(id)a3;
- (void)indexEmailAddressesOnContact:(id)a3;
- (void)indexPhoneNumbersOnContact:(id)a3;
@end

@implementation CNContactHandleStringIndexer

- (NSDictionary)index
{
  if (self->_targetHandleStrings)
  {
    [objc_opt_class() indexByMatchingIndexWithRawHandles:self->_indexImpl toTargetHandleStrings:self->_targetHandleStrings];
  }

  else
  {
    [(CNContactHandleStringIndexer *)self indexWithRawHandles];
  }
  v2 = ;

  return v2;
}

- (CNContactHandleStringIndexer)initWithTargetHandleStrings:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNContactHandleStringIndexer;
  v5 = [(CNContactHandleStringIndexer *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6996660]);
    indexImpl = v5->_indexImpl;
    v5->_indexImpl = v6;

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v8 = [v4 copy];
      targetHandleStrings = v5->_targetHandleStrings;
      v5->_targetHandleStrings = v8;
    }

    v10 = v5;
  }

  return v5;
}

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (id)indexWithRawHandles
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(CNCache *)self->_indexImpl allObjects];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    v4 = MEMORY[0x1E695E0F0];
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = [v12 first];
              v14 = [v3 objectForKeyedSubscript:v13];

              if (v14)
              {
                v15 = v14;
              }

              else
              {
                v15 = v4;
              }

              v16 = [v12 second];
              v17 = [v15 arrayByAddingObject:v16];

              v18 = [v12 first];
              [v3 setObject:v17 forKeyedSubscript:v18];
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  return v3;
}

- (void)indexContacts:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CNContactHandleStringIndexer *)self indexContact:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)indexContact:(id)a3
{
  v4 = a3;
  [(CNContactHandleStringIndexer *)self indexEmailAddressesOnContact:v4];
  [(CNContactHandleStringIndexer *)self indexPhoneNumbersOnContact:v4];
}

- (void)indexEmailAddressesOnContact:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isKeyAvailable:@"emailAddresses"])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [v4 emailAddresses];
    v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v14 + 1) + 8 * v8) value];
          v10 = [CNContactHandleIndexableString emailIndexKey:v9];
          v11 = [(CNCache *)self->_indexImpl objectForKey:v10 onCacheMiss:*MEMORY[0x1E6996468]];
          v12 = [MEMORY[0x1E69967A8] pairWithFirst:v9 second:v4];
          [v11 addObject:v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (void)indexPhoneNumbersOnContact:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isKeyAvailable:@"phoneNumbers"])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [v4 phoneNumbers];
    v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v15 + 1) + 8 * v8) value];
          v10 = [v9 stringValue];

          v11 = [CNContactHandleIndexableString phoneNumberIndexKey:v10];
          v12 = [(CNCache *)self->_indexImpl objectForKey:v11 onCacheMiss:*MEMORY[0x1E6996468]];
          v13 = [MEMORY[0x1E69967A8] pairWithFirst:v10 second:v4];
          [v12 addObject:v13];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

+ (id)indexByMatchingIndexWithRawHandles:(id)a3 toTargetHandleStrings:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = a4;
  v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v24 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v27 = *(*(&v36 + 1) + 8 * v6);
        v7 = [[CNContactHandleIndexableString alloc] initWithString:v27];
        v28 = [(CNContactHandleIndexableString *)v7 indexKey];
        v8 = [v25 objectForKeyedSubscript:?];
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v33;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v31 = 1;
              v16 = [v15 first];
              v17 = [(CNContactHandleIndexableString *)v7 isEquivalentToString:v16 strict:&v31];

              if (v17)
              {
                v18 = [v15 second];
                if (v31)
                {
                  v19 = v30;
                }

                else
                {
                  v19 = v12;
                  if (!v12)
                  {
                    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v12 = v19;
                  }
                }

                [v19 addObject:v18];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        v20 = v30;
        if ([v30 count] || (v20 = v12, objc_msgSend(v12, "count")))
        {
          [v23 setObject:v20 forKeyedSubscript:v27];
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v26);
  }

  return v23;
}

@end