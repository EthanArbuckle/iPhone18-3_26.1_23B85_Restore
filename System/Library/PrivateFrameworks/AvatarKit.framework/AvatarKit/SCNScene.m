@interface SCNScene
@end

@implementation SCNScene

uint64_t __92__SCNScene_AVTExtensionMRR__avt_writeByArchivingRootNodeInsteadOfScene_toURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a2 model];
  [v2 setIdentifier:0];
  [objc_msgSend(v2 "mesh")];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 materials];
  result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setIdentifier:0];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __92__SCNScene_AVTExtensionMRR__avt_writeByArchivingRootNodeInsteadOfScene_toURL_options_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 40);

    return [v7 setObject:a3 forKeyedSubscript:v6];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);

    return [v9 doesNotRecognizeSelector:v10];
  }
}

void __90__SCNScene_AVTExtension__avt_setInitialValuesExportedAsAnimationsWithWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 animationKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 animationPlayerForKey:v9];
        v11 = [v10 animation];
        v12 = [v11 caAnimation];

        v13 = AVTSetInitialValuesExportedAsAnimations(v3, v12, *(a1 + 40), *(a1 + 32));
        if (v13 != v12)
        {
          [v3 removeAnimationForKey:v9];
          if (v13)
          {
            [v3 addAnimation:v13 forKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 skinner];
  v4 = [v3 skeleton];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [v3 setSkeleton:*(a1 + 40)];
    v6 = [v3 bones];
    v7 = [v6 containsObject:*(a1 + 32)];

    if (v7)
    {
      v8 = avt_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

void __76__SCNScene_AVTExtension__avt_removeFaceSetsExportedAsDummyNodesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 containsString:@"_MTL"];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Root joint shouldn't never be bound", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end