@interface BSDescriptionStream(BacklightServices)
- (id)bls_appendTimeInterval:()BacklightServices withName:decomposeUnits:;
- (void)bls_appendBoundedCollection:()BacklightServices withName:maximumItems:itemBlock:;
@end

@implementation BSDescriptionStream(BacklightServices)

- (void)bls_appendBoundedCollection:()BacklightServices withName:maximumItems:itemBlock:
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 count];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __102__BSDescriptionStream_BacklightServices__bls_appendBoundedCollection_withName_maximumItems_itemBlock___block_invoke;
  v46[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
  v46[4] = v13;
  [a1 appendCustomFormatWithName:0 block:v46];
  v14 = _NSIsNSSet();
  v15 = v10;
  v16 = v15;
  if (v13 <= a5)
  {
    goto LABEL_24;
  }

  v17 = v15;
  if (([a1 sortKeys] & v14) == 1)
  {
    v37 = v11;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      v22 = &unk_278429000;
      while (2)
      {
        v23 = v14;
        v24 = 0;
        v25 = *(v22 + 409);
        do
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v42 + 1) + 8 * v24);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v17 = v18;
            LODWORD(v14) = v23;
            goto LABEL_15;
          }

          ++v24;
        }

        while (v20 != v24);
        v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
        v14 = v23;
        v22 = &unk_278429000;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = sel_compare_;
    }

    v27 = [v18 allObjects];
    v17 = [v27 sortedArrayUsingSelector:v25];

    v18 = v27;
LABEL_15:

    v11 = v37;
  }

  v28 = a5 - 1;
  if (a5 == 1)
  {
    v29 = [v17 allObjects];
    v30 = [v29 firstObject];
    v48[0] = v30;
    v48[1] = @"…";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  }

  else
  {
    if (!a5)
    {
      v49 = @"…";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      goto LABEL_22;
    }

    v29 = [v17 allObjects];
    v31 = [v29 subarrayWithRange:{0, v28}];

    v47[0] = @"…";
    v32 = [v29 lastObject];
    v47[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v16 = [v31 arrayByAddingObjectsFromArray:v33];
  }

  v17 = v29;
LABEL_22:

  if (v14)
  {
    v34 = [MEMORY[0x277CBEB98] setWithArray:v16];

    v16 = v34;
  }

LABEL_24:
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __102__BSDescriptionStream_BacklightServices__bls_appendBoundedCollection_withName_maximumItems_itemBlock___block_invoke_2;
  v38[3] = &unk_278428740;
  v39 = @"…";
  v40 = a1;
  v41 = v12;
  v35 = v12;
  [a1 appendCollection:v16 withName:v11 itemBlock:v38];

  v36 = *MEMORY[0x277D85DE8];
}

- (id)bls_appendTimeInterval:()BacklightServices withName:decomposeUnits:
{
  if (a2 >= 1.0 || (a5 & 1) != 0)
  {
    v6 = [a1 appendTimeInterval:? withName:? decomposeUnits:?];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__BSDescriptionStream_BacklightServices__bls_appendTimeInterval_withName_decomposeUnits___block_invoke;
    v8[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    *&v8[4] = a2;
    [a1 appendCustomFormatWithName:a4 block:v8];
    v6 = a1;
  }

  return v6;
}

@end