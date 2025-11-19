@interface UIView(BannerKitAdditions)
- (double)bn_convertRectFromSceneReferenceSpace:()BannerKitAdditions;
- (double)bn_convertRectToSceneReferenceSpace:()BannerKitAdditions;
- (uint64_t)bn_existingGaussianBlurFilter;
- (void)bn_addGaussianBlurIfNeededWithInputRadius:()BannerKitAdditions;
- (void)bn_removeBlurFilter;
@end

@implementation UIView(BannerKitAdditions)

- (double)bn_convertRectToSceneReferenceSpace:()BannerKitAdditions
{
  v10 = [a1 window];
  [a1 convertRect:0 toView:{a2, a3, a4, a5}];
  [v10 _convertRectToSceneReferenceSpace:?];
  v12 = v11;

  return v12;
}

- (double)bn_convertRectFromSceneReferenceSpace:()BannerKitAdditions
{
  v10 = [a1 window];
  [v10 _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
  [a1 convertRect:0 fromView:?];
  v12 = v11;

  return v12;
}

- (void)bn_addGaussianBlurIfNeededWithInputRadius:()BannerKitAdditions
{
  v11 = [a1 bn_existingGaussianBlurFilter];
  if (v11)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v11 setValue:v4 forKey:@"inputRadius"];
  }

  else
  {
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v4 setName:@"gaussianBlur"];
    [v4 setValue:@"default" forKey:@"inputQuality"];
    [v4 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v4 setValue:v5 forKey:@"inputRadius"];

    v6 = MEMORY[0x1E695E110];
    [v4 setValue:MEMORY[0x1E695E110] forKey:@"inputNormalizeEdges"];
    [v4 setValue:v6 forKey:@"inputHardEdges"];
    v7 = [a1 layer];
    v8 = [v7 filters];
    v9 = [v8 mutableCopy];

    [v9 addObject:v4];
    v10 = [a1 layer];
    [v10 setFilters:v9];
  }
}

- (void)bn_removeBlurFilter
{
  v2 = [a1 layer];
  v3 = [v2 filters];
  v6 = [v3 mutableCopy];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_4];
  [v6 filterUsingPredicate:v4];

  v5 = [a1 layer];
  [v5 setFilters:v6];
}

- (uint64_t)bn_existingGaussianBlurFilter
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 layer];
  v2 = [v1 filters];

  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x1E6979928];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [*(*(&v11 + 1) + 8 * v7) name];
      v9 = [v8 isEqualToString:v6];

      if (v9)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 0;
}

@end