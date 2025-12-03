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
  window = [self window];
  [self convertRect:0 toView:{a2, a3, a4, a5}];
  [window _convertRectToSceneReferenceSpace:?];
  v12 = v11;

  return v12;
}

- (double)bn_convertRectFromSceneReferenceSpace:()BannerKitAdditions
{
  window = [self window];
  [window _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
  [self convertRect:0 fromView:?];
  v12 = v11;

  return v12;
}

- (void)bn_addGaussianBlurIfNeededWithInputRadius:()BannerKitAdditions
{
  bn_existingGaussianBlurFilter = [self bn_existingGaussianBlurFilter];
  if (bn_existingGaussianBlurFilter)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [bn_existingGaussianBlurFilter setValue:v4 forKey:@"inputRadius"];
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
    layer = [self layer];
    filters = [layer filters];
    v9 = [filters mutableCopy];

    [v9 addObject:v4];
    layer2 = [self layer];
    [layer2 setFilters:v9];
  }
}

- (void)bn_removeBlurFilter
{
  layer = [self layer];
  filters = [layer filters];
  v6 = [filters mutableCopy];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_4];
  [v6 filterUsingPredicate:v4];

  layer2 = [self layer];
  [layer2 setFilters:v6];
}

- (uint64_t)bn_existingGaussianBlurFilter
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layer = [self layer];
  filters = [layer filters];

  v3 = [filters countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(filters);
      }

      name = [*(*(&v11 + 1) + 8 * v7) name];
      v9 = [name isEqualToString:v6];

      if (v9)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [filters countByEnumeratingWithState:&v11 objects:v15 count:16];
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