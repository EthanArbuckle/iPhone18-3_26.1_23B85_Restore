@interface CNPhotoPickerImageWithEffectGenerator
+ (id)coreImageFilterDisplayNames;
+ (id)displayNameForFilterNamed:(id)named;
+ (id)imageByApplyingEffect:(id)effect withContext:(id)context toImage:(id)image withSize:(CGSize)size;
+ (id)imageByApplyingEffect:(id)effect withContext:(id)context toImageData:(id)data;
+ (void)imagesByApplyingEffectsToImageData:(id)data withScaleFactor:(double)factor originalImageScale:(double)scale cropRect:(CGRect)rect completion:(id)completion;
@end

@implementation CNPhotoPickerImageWithEffectGenerator

+ (id)imageByApplyingEffect:(id)effect withContext:(id)context toImage:(id)image withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  effectCopy = effect;
  contextCopy = context;
  imageCopy = image;
  v13 = objc_alloc_init(MEMORY[0x1E6996838]);
  v14 = [imageCopy imageByApplyingFilter:effectCopy];
  v15 = [contextCopy createCGImage:v14 fromRect:{0.0, 0.0, width, height}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__CNPhotoPickerImageWithEffectGenerator_imageByApplyingEffect_withContext_toImage_withSize___block_invoke;
  v22[3] = &__block_descriptor_40_e5_v8__0l;
  v22[4] = v15;
  v16 = [v22 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v13 push:v18];

  v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15];

  [v13 popAllWithHandler:&__block_literal_global_65121];
  v20 = objc_opt_self();

  return v19;
}

+ (id)imageByApplyingEffect:(id)effect withContext:(id)context toImageData:(id)data
{
  dataCopy = data;
  contextCopy = context;
  effectCopy = effect;
  v10 = objc_opt_class();
  v11 = [MEMORY[0x1E695F658] imageWithData:dataCopy];
  v12 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];

  [v12 size];
  v13 = [v10 imageByApplyingEffect:effectCopy withContext:contextCopy toImage:v11 withSize:?];

  return v13;
}

+ (void)imagesByApplyingEffectsToImageData:(id)data withScaleFactor:(double)factor originalImageScale:(double)scale cropRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v15 = [MEMORY[0x1E695F658] imageWithData:data];
  v16 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
  v27 = v15;
  [v16 setValue:v15 forKey:@"inputImage"];
  v17 = factor / scale;
  *&v17 = factor / scale;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  [v16 setValue:v18 forKey:@"inputScale"];

  [v16 setValue:&unk_1F0D4B408 forKey:@"inputAspectRatio"];
  v19 = [v16 valueForKey:@"outputImage"];
  v20 = [MEMORY[0x1E695F620] contextWithOptions:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [objc_opt_class() coreImageFilterNames];
  v21 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v29 + 1) + 8 * i);
        v26 = [objc_opt_class() imageByApplyingEffect:v25 withContext:v20 toImage:v19 withSize:{width, height}];
        completionCopy[2](completionCopy, v26, v25, x, y, width, height);
      }

      v22 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }
}

+ (id)displayNameForFilterNamed:(id)named
{
  namedCopy = named;
  coreImageFilterDisplayNames = [self coreImageFilterDisplayNames];
  v6 = [coreImageFilterDisplayNames objectForKeyedSubscript:namedCopy];

  return v6;
}

+ (id)coreImageFilterDisplayNames
{
  v23[9] = *MEMORY[0x1E69E9840];
  v22[0] = @"CIPhotoEffect3DVivid";
  v21 = CNContactsUIBundle();
  v20 = [v21 localizedStringForKey:@"PHOTO_FILTER_VIVID_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[0] = v20;
  v22[1] = @"CIPhotoEffect3DVividWarm";
  v19 = CNContactsUIBundle();
  v18 = [v19 localizedStringForKey:@"PHOTO_FILTER_VIVIDWARM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[1] = v18;
  v22[2] = @"CIPhotoEffect3DVividCool";
  v17 = CNContactsUIBundle();
  v16 = [v17 localizedStringForKey:@"PHOTO_FILTER_VIVIDCOOL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[2] = v16;
  v22[3] = @"CIPhotoEffect3DDramatic";
  v15 = CNContactsUIBundle();
  v14 = [v15 localizedStringForKey:@"PHOTO_FILTER_DRAMATIC_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[3] = v14;
  v22[4] = @"CIPhotoEffect3DDramaticWarm";
  v13 = CNContactsUIBundle();
  v2 = [v13 localizedStringForKey:@"PHOTO_FILTER_DRAMATICWARM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[4] = v2;
  v22[5] = @"CIPhotoEffect3DDramaticCool";
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"PHOTO_FILTER_DRAMATICCOOL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[5] = v4;
  v22[6] = @"CIPhotoEffectMono";
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"PHOTO_FILTER_MONO_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[6] = v6;
  v22[7] = @"CIPhotoEffect3DSilverplate";
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"PHOTO_FILTER_SILVERTONE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[7] = v8;
  v22[8] = @"CIPhotoEffect3DNoir";
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"PHOTO_FILTER_NOIR_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23[8] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];

  return v11;
}

@end