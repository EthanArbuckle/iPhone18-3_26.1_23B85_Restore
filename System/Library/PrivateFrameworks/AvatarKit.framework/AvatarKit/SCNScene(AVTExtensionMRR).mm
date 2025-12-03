@interface SCNScene(AVTExtensionMRR)
+ (id)avt_newSceneWithURL:()AVTExtensionMRR options:error:;
+ (id)avt_nodeNamed:()AVTExtensionMRR forSceneAtURL:options:error:;
+ (id)avt_rootNodeForSceneAtURL:()AVTExtensionMRR options:error:;
+ (uint64_t)avt_rootObjectForSceneAtURL:()AVTExtensionMRR options:error:;
- (uint64_t)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:;
@end

@implementation SCNScene(AVTExtensionMRR)

+ (uint64_t)avt_rootObjectForSceneAtURL:()AVTExtensionMRR options:error:
{
  pathExtension = [a3 pathExtension];
  v9 = [pathExtension isEqualToString:@"scn"];
  v10 = [pathExtension isEqualToString:@"scnz"];
  v11 = v10;
  if ((v9 & 1) != 0 || v10)
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:a5];
    v15 = v14;
    if (v11)
    {
      v15 = [v14 scn_uncompressedDataUsingCompressionAlgorithm:517];
    }

    v16 = [objc_alloc(MEMORY[0x1E697A890]) initForReadingWithData:v15 secure:0];
    [v16 setDocumentURL:a3];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v16 decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, objc_opt_class(), 0), *MEMORY[0x1E696A508]}];
    [v16 finishDecoding];

    return v19;
  }

  else
  {
    v12 = MEMORY[0x1E697A8C8];

    return [v12 sceneWithURL:a3 options:a4 error:a5];
  }
}

+ (id)avt_newSceneWithURL:()AVTExtensionMRR options:error:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = [self avt_rootObjectForSceneAtURL:a3 options:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_alloc_init(self);
      rootNode = [v11 rootNode];
      childNodes = [v10 childNodes];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [childNodes countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(childNodes);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            [v18 removeFromParentNode];
            [rootNode addChildNode:v18];
          }

          v15 = [childNodes countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)avt_rootNodeForSceneAtURL:()AVTExtensionMRR options:error:
{
  v9 = objc_autoreleasePoolPush();
  v10 = [self avt_rootObjectForSceneAtURL:a3 options:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootNode = [v10 rootNode];
    v12 = rootNode;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rootNode = v10;
    }

    else
    {
      rootNode = 0;
    }
  }

  objc_autoreleasePoolPop(v9);

  return rootNode;
}

+ (id)avt_nodeNamed:()AVTExtensionMRR forSceneAtURL:options:error:
{
  v11 = objc_autoreleasePoolPush();
  rootNode = [self avt_rootObjectForSceneAtURL:a4 options:a5 error:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootNode = [rootNode rootNode];
LABEL_4:
    v13 = [rootNode childNodeWithName:a3 recursively:1];
    v14 = v13;
    [v13 removeFromParentNode];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v13 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v11);

  return v13;
}

- (uint64_t)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:
{
  v34[2] = *MEMORY[0x1E69E9840];
  pathExtension = [a4 pathExtension];
  v13 = [pathExtension isEqualToString:@"scn"];
  v14 = [pathExtension isEqualToString:@"scnz"];
  v15 = v14;
  if ((v13 & 1) != 0 || v14)
  {
    if (a3)
    {
      v19 = [MEMORY[0x1E697A888] archivedDataWithRootObject:objc_msgSend(self options:{"rootNode"), a5}];
      if (v15)
      {
        v19 = [v19 scn_compressedDataUsingCompressionAlgorithm:517];
      }

      v20 = *MEMORY[0x1E69E9840];

      return [v19 writeToURL:a4 options:1 error:a6];
    }

    else
    {
      v22 = *MEMORY[0x1E69E9840];

      return [self writeToURL:a4 options:a5 delegate:0 progressHandler:0];
    }
  }

  else
  {
    v16 = [pathExtension isEqualToString:@"vfx-world"];
    v17 = [pathExtension isEqualToString:@"vfxz-world"];
    if ((v16 & 1) != 0 || v17)
    {
      v23 = [MEMORY[0x1E69DF388] worldWithSceneKitScene:self options:MEMORY[0x1E695E0F8]];
      rootNode = [v23 rootNode];
      AVTFixMaterialsContainingSceneKitShaderModifiersInVFXNodeHierarchy(rootNode, v25);
      [objc_msgSend(v23 "rootNode")];
      v26 = *MEMORY[0x1E69DF3D0];
      v27 = *MEMORY[0x1E697A9A8];
      v33[0] = *MEMORY[0x1E697A9A0];
      v33[1] = v27;
      v28 = *MEMORY[0x1E69DF3D8];
      v34[0] = v26;
      v34[1] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      if ([a5 count])
      {
        v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a5, "count")}];
      }

      else
      {
        v30 = 0;
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __92__SCNScene_AVTExtensionMRR__avt_writeByArchivingRootNodeInsteadOfScene_toURL_options_error___block_invoke_2;
      v32[3] = &unk_1E7F47E50;
      v32[4] = v29;
      v32[5] = v30;
      v32[6] = self;
      v32[7] = a2;
      [a5 enumerateKeysAndObjectsUsingBlock:v32];
      v18 = [v23 avt_writeByArchivingRootNodeInsteadOfScene:a3 toURL:a4 options:v30 error:a6];
    }

    else
    {
      [self doesNotRecognizeSelector:a2];
      v18 = 0;
    }

    v31 = *MEMORY[0x1E69E9840];
    return v18;
  }
}

@end