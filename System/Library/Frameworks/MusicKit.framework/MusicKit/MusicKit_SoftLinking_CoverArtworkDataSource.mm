@interface MusicKit_SoftLinking_CoverArtworkDataSource
+ (MusicKit_SoftLinking_CoverArtworkDataSource)sharedDataSource;
+ (id)_bundle;
- (MusicKit_SoftLinking_CoverArtworkDataSource)init;
- (double)roundValueFor:(double)for toScale:(double)scale;
- (id)_cacheIdentifierForCoverArtworkRecipeToken:(id)token withSize:(CGSize)size;
- (id)_coverArtworkImageWithSize:(CGSize)size destinationScale:(double)scale coverArtworkToken:(id)token;
- (id)_errorWithDescription:(id)description;
- (id)_generateAngularGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateGradientArchesImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateGradientSoundwaveImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateGradientVinylImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateLinearGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateNineDotGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateRadialGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)_generateSimpleGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)imageForCoverArtworkRecipe:(id)recipe;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
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

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  if (token && ([catalogCopy fittingSize], -[MusicKit_SoftLinking_CoverArtworkDataSource _cacheIdentifierForCoverArtworkRecipeToken:withSize:](self, "_cacheIdentifierForCoverArtworkRecipeToken:withSize:", token), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  token = [catalogCopy token];
  if (token)
  {
    [catalogCopy fittingSize];
    v10 = v9;
    v12 = v11;
    [catalogCopy destinationScale];
    v14 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _coverArtworkImageWithSize:token destinationScale:v10 coverArtworkToken:v12, v13];
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
    v17 = [v15 representationForVisualIdentity:token withSize:v14 image:{v10, v12}];
    v18 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _cacheIdentifierForCoverArtworkRecipeToken:token withSize:v10, v12];
    if (v18)
    {
      [(NSCache *)self->_cache setObject:v17 forKey:v18];
    }

    handlerCopy[2](handlerCopy, v17, 0);
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    token2 = [catalogCopy token];
    v21 = [v19 stringWithFormat:@"MPArtworkCatalog token can not be converted to MusicKit_SoftLinking_CoverArtworkToken: %@", token2];
    v22 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _errorWithDescription:v21];

    (handlerCopy)[2](handlerCopy, 0, v22);
  }
}

- (id)_cacheIdentifierForCoverArtworkRecipeToken:(id)token withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  stringRepresentation = [token stringRepresentation];
  if (stringRepresentation)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, width: %f, height: %f", stringRepresentation, *&width, *&height];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_coverArtworkImageWithSize:(CGSize)size destinationScale:(double)scale coverArtworkToken:(id)token
{
  height = size.height;
  width = size.width;
  tokenCopy = token;
  playlistName = [tokenCopy playlistName];
  preferredFormat = [getUIGraphicsImageRendererFormatClass() preferredFormat];
  [preferredFormat setScale:scale];
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
  _containsEmoji = [playlistName _containsEmoji];
  if (width >= 270.0)
  {
    v15 = width;
  }

  else
  {
    v15 = 270.0;
  }

  if (_containsEmoji)
  {
    v16 = height;
  }

  else
  {
    v16 = v15;
  }

  if (_containsEmoji)
  {
    v17 = width;
  }

  else
  {
    v17 = v15;
  }

  v18 = [objc_alloc(getUIGraphicsImageRendererClass()) initWithSize:preferredFormat format:{v17, v16}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __109__MusicKit_SoftLinking_CoverArtworkDataSource__coverArtworkImageWithSize_destinationScale_coverArtworkToken___block_invoke;
  v31[3] = &unk_278229750;
  v35 = v17;
  v36 = v16;
  v31[4] = self;
  v19 = tokenCopy;
  v32 = v19;
  v20 = playlistName;
  v33 = v20;
  v37 = 270.0 / v17;
  v21 = preferredFormat;
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

- (double)roundValueFor:(double)for toScale:(double)scale
{
  v4 = 0;
  if (scale != 0.0)
  {
    v5 = fabs(scale);
    v4 = v5 != INFINITY;
    if (v5 > fmax(v5 * 0.0000000149011612, 0.0))
    {
      v4 = 0;
    }
  }

  if (scale < 0.0)
  {
    v4 = 1;
  }

  scaleCopy = 1.0;
  if (!v4)
  {
    scaleCopy = scale;
  }

  return round(for * scale) / scaleCopy;
}

- (id)_errorWithDescription:(id)description
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA068];
  v10[0] = description;
  v3 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MusicKit_SoftLinking_CoverArtworkRecipeError" code:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)imageForCoverArtworkRecipe:(id)recipe
{
  recipeCopy = recipe;
  version = [recipeCopy version];
  v6 = [version isEqual:@"1.0"];

  if (!v6)
  {
    goto LABEL_11;
  }

  backgroundColor = [recipeCopy backgroundColor];
  if (!backgroundColor)
  {
    goto LABEL_11;
  }

  preferredFormat = backgroundColor;
  primaryColor = [recipeCopy primaryColor];
  if (primaryColor)
  {
    v10 = primaryColor;
    secondaryColor = [recipeCopy secondaryColor];
    if (!secondaryColor)
    {
      goto LABEL_27;
    }

    tertiaryColor = [recipeCopy tertiaryColor];

    if (tertiaryColor)
    {
      preferredFormat = [getUIGraphicsImageRendererFormatClass() preferredFormat];
      v10 = [objc_alloc(getUIGraphicsImageRendererClass()) initWithSize:preferredFormat format:{180.0, 180.0}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      expression = [recipeCopy expression];
      secondaryColor = 0;
      if (expression > 4)
      {
        if (expression > 6)
        {
          if (expression == 7)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientArchesImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          if (expression == 8)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateNineDotGradientImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (expression == 5)
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateAngularGradientImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }

        else
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateRadialGradientImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }
      }

      else
      {
        if (expression <= 2)
        {
          if (expression == 1)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateSimpleGradientImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
            goto LABEL_26;
          }

          if (expression == 2)
          {
            v15 = [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientVinylImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
LABEL_26:
            secondaryColor = v15;
          }

LABEL_27:

          goto LABEL_28;
        }

        if (expression == 3)
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateLinearGradientImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }

        else
        {
          [(MusicKit_SoftLinking_CoverArtworkDataSource *)self _generateGradientSoundwaveImageForCoverArtworkRecipe:recipeCopy withImageRenderer:v10 size:DeviceRGB andSpace:180.0, 180.0];
        }
      }
      v15 = ;
      goto LABEL_26;
    }

LABEL_11:
    secondaryColor = 0;
    goto LABEL_29;
  }

  secondaryColor = 0;
LABEL_28:

LABEL_29:

  return secondaryColor;
}

- (id)_generateSimpleGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateSimpleGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = backgroundColor;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = tertiaryColor;
    v18[8] = space;
    v18[9] = primaryColor;
    v16 = [rendererCopy imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientVinylImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __128__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientVinylImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &unk_2782297E8;
    v20 = backgroundColor;
    v21 = width;
    v22 = height;
    v23 = tertiaryColor;
    spaceCopy = space;
    v25 = secondaryColor;
    v19 = rendererCopy;
    v16 = [v19 imageWithActions:v18];
  }

  return v16;
}

- (id)_generateLinearGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateLinearGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = backgroundColor;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = primaryColor;
    v18[8] = secondaryColor;
    v18[9] = space;
    v16 = [rendererCopy imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientSoundwaveImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __132__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientSoundwaveImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = tertiaryColor;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = backgroundColor;
    v18[8] = primaryColor;
    v18[9] = space;
    v16 = [rendererCopy imageWithActions:v18];
  }

  return v16;
}

- (id)_generateAngularGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateAngularGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = backgroundColor;
    v18[5] = secondaryColor;
    v18[6] = tertiaryColor;
    v18[7] = space;
    *&v18[8] = width;
    *&v18[9] = height;
    v16 = [rendererCopy imageWithActions:v18];
  }

  return v16;
}

- (id)_generateRadialGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateRadialGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v18[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = tertiaryColor;
    v18[5] = backgroundColor;
    v18[6] = primaryColor;
    v18[7] = space;
    *&v18[8] = width;
    *&v18[9] = height;
    v16 = [rendererCopy imageWithActions:v18];
  }

  return v16;
}

- (id)_generateGradientArchesImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v17 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
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
    v18 = [rendererCopy imageWithActions:v33];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __129__MusicKit_SoftLinking_CoverArtworkDataSource__generateGradientArchesImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke_2;
    v21[3] = &unk_2782297C0;
    v24 = primaryColor;
    v25 = tertiaryColor;
    spaceCopy = space;
    v27 = width;
    v28 = height;
    v29 = 0;
    v30 = 0;
    v31 = width;
    v32 = height;
    v22 = v18;
    v23 = backgroundColor;
    v19 = v18;
    v17 = [rendererCopy imageWithActions:v21];
  }

  return v17;
}

- (id)_generateNineDotGradientImageForCoverArtworkRecipe:(id)recipe withImageRenderer:(id)renderer size:(CGSize)size andSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  recipeCopy = recipe;
  backgroundColor = [recipeCopy backgroundColor];

  primaryColor = [recipeCopy primaryColor];

  secondaryColor = [recipeCopy secondaryColor];

  tertiaryColor = [recipeCopy tertiaryColor];

  v16 = 0;
  if (backgroundColor && primaryColor && secondaryColor && tertiaryColor)
  {
    v17 = [getUIColorClass() colorWithCGColor:tertiaryColor];
    v18 = objc_alloc(getUIGraphicsImageRendererClass());
    format = [rendererCopy format];
    v20 = [v18 initWithSize:format format:{width * 1.1, height * 1.1}];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateNineDotGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke;
    v52[3] = &unk_2782297E8;
    v54 = backgroundColor;
    v55 = width * 1.1;
    v56 = height * 1.1;
    v57 = secondaryColor;
    v21 = v17;
    v53 = v21;
    v58 = tertiaryColor;
    spaceCopy = space;
    v22 = [v20 imageWithActions:v52];
    [v22 scale];
    v24 = width * v23;
    [v22 scale];
    v26 = height * v25;
    v27 = height * v25 * 0.05;
    cGImage = [v22 CGImage];
    v61.origin.x = v24 * 0.05;
    v61.origin.y = v27;
    v61.size.width = v24;
    v61.size.height = v26;
    v29 = CGImageCreateWithImageInRect(cGImage, v61);
    v37 = [objc_alloc(getUIImageClass(v29 v30];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __130__MusicKit_SoftLinking_CoverArtworkDataSource__generateNineDotGradientImageForCoverArtworkRecipe_withImageRenderer_size_andSpace___block_invoke_2;
    v51[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v51[4] = width;
    *&v51[5] = height;
    v38 = [rendererCopy imageWithActions:v51];
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
    v16 = [rendererCopy imageWithActions:v43];
  }

  return v16;
}

+ (id)_bundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MusicKit_SoftLinking_CoverArtworkDataSource__bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundle_sOnceToken != -1)
  {
    dispatch_once(&_bundle_sOnceToken, block);
  }

  v2 = _bundle_sBundle;

  return v2;
}

@end