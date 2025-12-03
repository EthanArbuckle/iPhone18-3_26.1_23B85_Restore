@interface NSArray(BacklightServices)
- (id)bls_boundedDescriptionWithMax:()BacklightServices transformer:;
@end

@implementation NSArray(BacklightServices)

- (id)bls_boundedDescriptionWithMax:()BacklightServices transformer:
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [self count];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__NSArray_BacklightServices__bls_boundedDescriptionWithMax_transformer___block_invoke;
  v26[3] = &unk_278429318;
  v9 = v7;
  v27 = v9;
  v28 = v8;
  [v9 appendProem:0 block:v26];
  v10 = a3 - 1;
  if (a3 >= 1)
  {
    if (v8 <= a3)
    {
      v18 = [self bs_mapNoNulls:{v6, v10}];
    }

    else
    {
      v11 = [self subarrayWithRange:{0, v10}];
      v12 = [v11 bs_mapNoNulls:v6];
      v29[0] = @"...";
      lastObject = [self lastObject];
      v14 = v6[2](v6, lastObject);
      v15 = v14;
      v16 = @"<NULL>";
      if (v14)
      {
        v16 = v14;
      }

      v29[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v18 = [v12 arrayByAddingObjectsFromArray:v17];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__NSArray_BacklightServices__bls_boundedDescriptionWithMax_transformer___block_invoke_2;
    v23[3] = &unk_278428688;
    v24 = v18;
    v25 = v9;
    v19 = v18;
    [v25 appendBodySectionWithOpenDelimiter:@" {" closeDelimiter:@"} " block:v23];
  }

  v20 = [v9 description];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end