@interface WFHealthKitUnitPlistCompiler
+ (void)compileUnitDataIntoPlistAtPath:(id)path;
@end

@implementation WFHealthKitUnitPlistCompiler

+ (void)compileUnitDataIntoPlistAtPath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = [&unk_28509CBF0 mutableCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke;
  v24[3] = &unk_278C1E168;
  v25 = &unk_28509CC38;
  v5 = [&unk_28509CBF0 if_map:v24];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObjectsFromArray:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_3(@"si");
  v11 = [v4 if_map:v10];

  v12 = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_3(@"non_si");
  v13 = [&unk_28509CC08 if_map:v12];

  v14 = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_3(@"compound");
  v15 = [&unk_28509CC20 if_map:v14];

  v16 = objc_opt_new();
  [v16 addObjectsFromArray:v4];
  [v16 addObjectsFromArray:&unk_28509CC08];
  [v16 addObjectsFromArray:&unk_28509CC20];
  v19 = 0;
  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v16 format:100 options:0 error:&v19];
  [v17 writeToFile:pathCopy atomically:1];

  v18 = *MEMORY[0x277D85DE8];
}

id __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_2;
  v8[3] = &unk_278C1B0C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 if_map:v8];

  return v6;
}

id __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_3(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_4;
  aBlock[3] = &unk_278C1B0F0;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

id __63__WFHealthKitUnitPlistCompiler_compileUnitDataIntoPlistAtPath___block_invoke_4(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"unitString";
  v7[1] = @"important";
  v8[0] = a2;
  v8[1] = MEMORY[0x277CBEC28];
  v7[2] = @"group";
  v8[2] = *(a1 + 32);
  v2 = MEMORY[0x277CBEAC0];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end