@interface VFXWorld(AVTExtensionMRR)
+ (id)avt_newWorldWithURL:()AVTExtensionMRR options:error:;
+ (id)avt_nodeNamed:()AVTExtensionMRR forWorldAtURL:options:error:;
+ (id)avt_rootNodeForWorldAtURL:()AVTExtensionMRR options:error:;
+ (uint64_t)avt_rootObjectForWorldAtURL:()AVTExtensionMRR options:error:;
- (uint64_t)avt_init;
- (uint64_t)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:;
@end

@implementation VFXWorld(AVTExtensionMRR)

- (uint64_t)avt_init
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DF3E0];
  v4[0] = MEMORY[0x1E695E118];
  result = [a1 initWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)avt_rootObjectForWorldAtURL:()AVTExtensionMRR options:error:
{
  v8 = [a3 pathExtension];
  v9 = [v8 isEqualToString:@"vfx-world"];
  v10 = [v8 isEqualToString:@"vfxz-world"];
  v11 = v10;
  if ((v9 & 1) != 0 || v10)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:a5];
    v18 = v17;
    if (v11)
    {
      v18 = [v17 vfx_uncompressedDataUsingCompressionAlgorithm:517];
    }

    v19 = [objc_alloc(MEMORY[0x1E69DF2F0]) initForReadingWithData:v18 secure:0];
    [v19 setDocumentURL:a3];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v19 decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithObjects:", v21, objc_opt_class(), 0), *MEMORY[0x1E696A508]}];
    [v19 finishDecoding];

    return v22;
  }

  else
  {
    v12 = [v8 isEqualToString:@"scn"];
    v13 = [v8 isEqualToString:@"scnz"];
    if (v12 & 1) != 0 || (v13)
    {
      return 0;
    }

    else
    {
      v14 = _AVTUpgradeVFXWorldOptions(a4);
      v15 = MEMORY[0x1E69DF388];

      return [v15 worldWithURL:a3 options:v14 error:a5];
    }
  }
}

+ (id)avt_newWorldWithURL:()AVTExtensionMRR options:error:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = [a1 avt_rootObjectForWorldAtURL:a3 options:a4 error:a5];
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
      v11 = objc_alloc_init(a1);
      v12 = [v11 rootNode];
      v13 = [v10 childNodes];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            [v18 removeFromParentNode];
            [v12 addChildNode:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (id)avt_rootNodeForWorldAtURL:()AVTExtensionMRR options:error:
{
  v9 = objc_autoreleasePoolPush();
  v10 = [a1 avt_rootObjectForWorldAtURL:a3 options:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 rootNode];
    v12 = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v9);

  return v11;
}

+ (id)avt_nodeNamed:()AVTExtensionMRR forWorldAtURL:options:error:
{
  v11 = objc_autoreleasePoolPush();
  v12 = [a1 avt_rootObjectForWorldAtURL:a4 options:a5 error:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v12 rootNode];
LABEL_4:
    v13 = [v12 childNodeWithName:a3 recursively:1];
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
  v11 = [a4 pathExtension];
  v12 = [v11 isEqualToString:@"vfx-world"];
  v13 = [v11 isEqualToString:@"vfxz-world"];
  if (a3 && (v14 = v13, ((v12 | v13) & 1) != 0))
  {
    v15 = [MEMORY[0x1E69DF2E8] archivedDataWithRootObject:objc_msgSend(a1 options:{"rootNode"), a5}];
    if (v14)
    {
      v15 = [v15 vfx_compressedDataUsingCompressionAlgorithm:517];
    }

    return [v15 writeToURL:a4 options:1 error:a6];
  }

  else
  {

    return [a1 writeToURL:a4 options:a5 progressHandler:0];
  }
}

@end