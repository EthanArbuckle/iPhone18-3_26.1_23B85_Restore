@interface MusicKit_SoftLinking_CoverArtworkDataSource
+ (MusicKit_SoftLinking_CoverArtworkDataSource)sharedDataSource;
+ (id)_bundle;
- (MusicKit_SoftLinking_CoverArtworkDataSource)init;
- (double)roundValueFor:(double)a3 toScale:(double)a4;
- (id)_cacheIdentifierForCoverArtworkRecipeToken:(id)a3 withSize:(CGSize)a4;
- (id)_coverArtworkImageWithSize:(CGSize)a3 destinationScale:(double)a4 coverArtworkToken:(id)a5;
- (id)_errorWithDescription:(id)a3;
- (id)_generateAngularGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateGradientArchesImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateGradientSoundwaveImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateGradientVinylImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateLinearGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateNineDotGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateRadialGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)_generateSimpleGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)imageForCoverArtworkRecipe:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MusicKit_SoftLinking_CoverArtworkDataSource

+ (MusicKit_SoftLinking_CoverArtworkDataSource)sharedDataSource
{
  if (sharedDataSource_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_CoverArtworkDataSource sharedDataSource];
  }

  v3 = sharedDataSource_sSharedDataSource;

  return v3;
}

- (MusicKit_SoftLinking_CoverArtworkDataSource)init
{
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_CoverArtworkDataSource;
  v2 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  if (v5 && ([v4 fittingSize], -[MusicKit_SoftLinking_CoverArtworkDataSource _cacheIdentifierForCoverArtworkRecipeToken:withSize:](self, "_cacheIdentifierForCoverArtworkRecipeToken:withSize:", v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(NSCache *)self->_cache objectForKey:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 token];
  if (v8)
  {
    [v6 fittingSize];
    v10 = v9;
    v12 = v11;
    [v6 destinationScale];
    v14 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _coverArtworkImageWithSize:v8 destinationScale:v10 coverArtworkToken:v12, v13];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v15 = getMPArtworkRepresentationClass_softClass;
    v27 = getMPArtworkRepresentationClass_softClass;
    if (!getMPArtworkRepresentationClass_softClass)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __getMPArtworkRepresentationClass_block_invoke;
      v23[3] = &unk_278229610;
      v23[4] = &v24;
      __getMPArtworkRepresentationClass_block_invoke(v23);
      v15 = v25[3];
    }

    v16 = v15;
    _Block_object_dispose(&v24, 8);
    v17 = [v15 representationForVisualIdentity:v8 withSize:v14 image:{v10, v12}];
    v18 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _cacheIdentifierForCoverArtworkRecipeToken:v8 withSize:v10, v12];
    if (v18)
    {
      [(NSCache *)self->_cache setObject:v17 forKey:v18];
    }

    v7[2](v7, v17, 0);
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [v6 token];
    v21 = [v19 stringWithFormat:@"MPArtworkCatalog token can not be converted to MusicKit_SoftLinking_CoverArtworkToken: %@", v20];
    v22 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _errorWithDescription:v21];

    (v7)[2](v7, 0, v22);
  }
}

- (id)_cacheIdentifierForCoverArtworkRecipeToken:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [a3 stringRepresentation];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, width: %f, height: %f", v6, *&width, *&height];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_coverArtworkImageWithSize:(CGSize)a3 destinationScale:(double)a4 coverArtworkToken:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [v9 playlistName];
  v11 = [getUIGraphicsImageRendererFormatClass() preferredFormat];
  [v11 setScale:a4];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v12 = getEMFStringUtilitiesClass_softClass;
  v42 = getEMFStringUtilitiesClass_softClass;
  if (!getEMFStringUtilitiesClass_softClass)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __getEMFStringUtilitiesClass_block_invoke;
    v38[3] = &unk_278229610;
    v38[4] = &v39;
    __getEMFStringUtilitiesClass_block_invoke(v38);
    v12 = v40[3];
  }

  v13 = v12;
  _Block_object_dispose(&v39, 8);
  v14 = [v10 _containsEmoji];
  if (width >= 270.0)
  {
    v15 = width;
  }

  else
  {
    v15 = 270.0;
  }

  if (v14)
  {
    v16 = height;
  }

  else
  {
    v16 = v15;
  }

  if (v14)
  {
    v17 = width;
  }

  else
  {
    v17 = v15;
  }

  v18 = [objc_alloc(getUIGraphicsImageRendererClass()) initWithSize:v11 format:{v17, v16}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __109__MusicKit_SoftLinking_CoverArtworkDataSource__coverArtworkImageWithSize_destinationScale_coverArtworkToken___block_invoke;
  v31[3] = &unk_278229750;
  v35 = v17;
  v36 = v16;
  v31[4] = self;
  v19 = v9;
  v32 = v19;
  v20 = v10;
  v33 = v20;
  v37 = 270.0 / v17;
  v21 = v11;
  v34 = v21;
  v22 = [v18 imageWithActions:v31];
  if (v17 != width || v16 != height)
  {
    v24 = [objc_alloc(getUIGraphicsImageRendererClass()) initWithSize:v21 format:{width, height}];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __109__MusicKit_SoftLinking_CoverArtworkDataSource__coverArtworkImageWithSize_destinationScale_coverArtworkToken___block_invoke_2;
    v27[3] = &unk_278229778;
    v28 = v22;
    v29 = width;
    v30 = height;
    v25 = v22;
    v22 = [v24 imageWithActions:v27];
  }

  return v22;
}

- (double)roundValueFor:(double)a3 toScale:(double)a4
{
  v4 = 0;
  if (a4 != 0.0)
  {
    v5 = fabs(a4);
    v4 = v5 != INFINITY;
    if (v5 > fmax(v5 * 0.0000000149011612, 0.0))
    {
      v4 = 0;
    }
  }

  if (a4 < 0.0)
  {
    v4 = 1;
  }

  v6 = 1.0;
  if (!v4)
  {
    v6 = a4;
  }

  return round(a3 * a4) / v6;
}

- (id)_errorWithDescription:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA068];
  v10[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MusicKit_SoftLinking_CoverArtworkRecipeError" code:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)imageForCoverArtworkRecipe:(id)a3
{
  v4 = a3;
  v5 = [v4 version];
  v6 = [v5 isEqual:@"1.0"];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v4 backgroundColor];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v4 primaryColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 secondaryColor];
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = [v4 tertiaryColor];

    if (v12)
    {
      v8 = [getUIGraphicsImageRendererFormatClass() preferredFormat];
      v10 = [objc_alloc(getUIGraphicsImageRendererClass()) initWithSize:v8 format:{180.0, 180.0}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v14 = [v4 expression];
      v11 = 0;
      if (v14 > 4)
      {
        if (v14 > 6)
        {
          if (v14 == 7)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientArchesImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          if (v14 == 8)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateNineDotGradientImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (v14 == 5)
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateAngularGradientImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }

        else
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateRadialGradientImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }
      }

      else
      {
        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateSimpleGradientImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          if (v14 == 2)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientVinylImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
LABEL_26:
            v11 = v15;
          }

LABEL_27:

          goto LABEL_28;
        }

        if (v14 == 3)
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateLinearGradientImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }

        else
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientSoundwaveImageForCoverArtworkRecipe:v4 withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }
      }
      v15 = ;
      goto LABEL_26;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_29;
  }

  v11 = 0;
LABEL_28:

LABEL_29:

  return v11;
}

- (id)_generateSimpleGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateSimpleGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = v12;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = v15;
    v18[8] = a6;
    v18[9] = v13;
    v16 = [v10 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientVinylImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __128__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientVinylImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &unk_2782297E8;
    v20 = v12;
    v21 = width;
    v22 = height;
    v23 = v15;
    v24 = a6;
    v25 = v14;
    v19 = v10;
    v16 = [v19 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateLinearGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateLinearGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = v12;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = v13;
    v18[8] = v14;
    v18[9] = a6;
    v16 = [v10 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientSoundwaveImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __132__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientSoundwaveImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = v15;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = v12;
    v18[8] = v13;
    v18[9] = a6;
    v16 = [v10 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateAngularGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateAngularGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v15;
    v18[7] = a6;
    *&v18[8] = width;
    *&v18[9] = height;
    v16 = [v10 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateRadialGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateRadialGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = v15;
    v18[5] = v12;
    v18[6] = v13;
    v18[7] = a6;
    *&v18[8] = width;
    *&v18[9] = height;
    v16 = [v10 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientArchesImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a4;
  v12 = a3;
  v13 = [v12 backgroundColor];

  v14 = [v12 primaryColor];

  v15 = [v12 secondaryColor];

  v16 = [v12 tertiaryColor];

  v17 = 0;
  if (v13 && v14 && v15 && v16)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientArchesImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v33[3] = &unk_278229810;
    v33[5] = 0;
    v33[6] = 0;
    v33[4] = self;
    *&v33[7] = width;
    *&v33[8] = height;
    v18 = [v11 imageWithActions:v33];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientArchesImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke_2;
    v21[3] = &unk_2782297C0;
    v24 = v14;
    v25 = v16;
    v26 = a6;
    v27 = width;
    v28 = height;
    v29 = 0;
    v30 = 0;
    v31 = width;
    v32 = height;
    v22 = v18;
    v23 = v13;
    v19 = v18;
    v17 = [v11 imageWithActions:v21];
  }

  return v17;
}

- (id)_generateNineDotGradientImageForCoverArtworkRecipe:(id)a3 withImageRenderer:(id)a4 size:(CGSize)a5 andSpace:(CGColorSpace *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = a3;
  v12 = [v11 backgroundColor];

  v13 = [v11 primaryColor];

  v14 = [v11 secondaryColor];

  v15 = [v11 tertiaryColor];

  v16 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v17 = [getUIColorClass() colorWithCGColor:v15];
    v18 = objc_alloc(getUIGraphicsImageRendererClass());
    v19 = [v10 format];
    v20 = [v18 initWithSize:v19 format:{width * 1.1, height * 1.1}];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateNineDotGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v52[3] = &unk_2782297E8;
    v54 = v12;
    v55 = width * 1.1;
    v56 = height * 1.1;
    v57 = v14;
    v21 = v17;
    v53 = v21;
    v58 = v15;
    v59 = a6;
    v22 = [v20 imageWithActions:v52];
    [v22 scale];
    v24 = width * v23;
    [v22 scale];
    v26 = height * v25;
    v27 = height * v25 * 0.05;
    v28 = [v22 CGImage];
    v61.origin.x = v24 * 0.05;
    v61.origin.y = v27;
    v61.size.width = v24;
    v61.size.height = v26;
    v29 = CGImageCreateWithImageInRect(v28, v61);
    v37 = [objc_alloc(getUIImageClass(v29 v30];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateNineDotGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke_2;
    v51[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v51[4] = width;
    *&v51[5] = height;
    v38 = [v10 imageWithActions:v51];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateNineDotGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke_3;
    v43[3] = &unk_278229858;
    v47 = 0;
    v48 = 0;
    v49 = width;
    v50 = height;
    v44 = v21;
    v45 = v38;
    v46 = v37;
    v39 = v37;
    v40 = v38;
    v41 = v21;
    v16 = [v10 imageWithActions:v43];
  }

  return v16;
}

+ (id)_bundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MusicKit_SoftLinking_CoverArtworkDataSource__bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bundle_sOnceToken != -1)
  {
    dispatch_once(&_bundle_sOnceToken, block);
  }

  v2 = _bundle_sBundle;

  return v2;
}

@end