@interface NSCompoundPredicate(HKFilterExtension)
- (_HKCompoundFilter)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:;
@end

@implementation NSCompoundPredicate(HKFilterExtension)

- (_HKCompoundFilter)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subpredicates = [self subpredicates];
  v9 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(subpredicates);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) hk_filterRepresentationForDataTypes:v6 isSubpredicate:a4];
        [v7 hk_addNonNilObject:v13];
      }

      v10 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = -[_HKCompoundFilter initWithType:subfilters:]([_HKCompoundFilter alloc], "initWithType:subfilters:", [self compoundPredicateType], v7);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end