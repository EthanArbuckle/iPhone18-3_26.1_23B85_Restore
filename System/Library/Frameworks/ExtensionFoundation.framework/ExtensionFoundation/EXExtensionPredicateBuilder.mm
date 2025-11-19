@interface EXExtensionPredicateBuilder
@end

@implementation EXExtensionPredicateBuilder

void __136___EXExtensionPredicateBuilder_gatherChildrenPredicateWithRuleDictionary_parentType_parentAccepted_acceptedChildTypes_exceptChildTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"ACCEPT"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"REJECT") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"TYPE") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"TYPES") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"EXCEPT_TYPES") & 1) == 0)
  {
    v7 = _NSIsNSDictionary();
    v8 = v5;
    if (v7)
    {
      v9 = [v6 objectForKey:@"ACCEPT"];
      v10 = [v6 objectForKey:@"REJECT"];
      v11 = [v6 objectForKey:@"TYPES"];
      if (!v11)
      {
        v12 = [v6 objectForKey:@"TYPE"];
        if (v12)
        {
          v11 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
        }

        else
        {
          v11 = 0;
        }
      }

      v13 = [v6 objectForKey:@"EXCEPT_TYPES"];
      v14 = v6;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v13 = 0;
      v14 = 0;
      v9 = v6;
    }

    v15 = v6;
    v38 = 0;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 72);
    v36 = 0;
    v37 = 0;
    v34 = v9;
    LOBYTE(v33) = v18;
    v35 = v8;
    v19 = [v16 applyRuleWithRuleName:v8 acceptRule:v9 rejectRule:v10 types:v11 exceptTypes:v13 parentType:v17 children:v14 parentAccepted:v33 accepted:&v38 acceptedTypesInSubtree:&v37 exceptTypesInSubtree:&v36];
    v20 = v37;
    v21 = v36;
    if (v19)
    {
      v22 = *(*(*(a1 + 48) + 8) + 40);
      if (!v22)
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = *(*(a1 + 48) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

        v22 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v22 addObject:v19];
    }

    if (v38 == 1 && [v11 count] || objc_msgSend(v20, "count"))
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v27 = *(*(a1 + 56) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

      if (v38 == 1 && [v11 count])
      {
        [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v11];
      }

      if ([v20 count])
      {
        [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v20];
      }
    }

    if (v38 == 1 && [v13 count] || objc_msgSend(v21, "count"))
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30 = *(*(a1 + 64) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;
      }

      if (v38 == 1 && [v13 count])
      {
        [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v13];
      }

      if ([v21 count])
      {
        v32 = *(*(*(a1 + 64) + 8) + 40);
        [v32 addObjectsFromArray:v32];
      }
    }
  }
}

@end