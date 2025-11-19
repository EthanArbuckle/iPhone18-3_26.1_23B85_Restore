@interface NTKUltraCubePhoto
+ (BOOL)validateDictionary:(id)a3;
+ (id)decodeFromDictionary:(id)a3 forResourceDirectory:(id)a4;
- (CGRect)originalCrop;
- (NSString)uniqueIdentifier;
- (NTKUltraCubePhoto)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsDictionary;
@end

@implementation NTKUltraCubePhoto

- (NTKUltraCubePhoto)init
{
  v4.receiver = self;
  v4.super_class = NTKUltraCubePhoto;
  result = [(NTKUltraCubePhoto *)&v4 init];
  if (result)
  {
    size = CGRectNull.size;
    result->_originalCrop.origin = CGRectNull.origin;
    result->_originalCrop.size = size;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_localIdentifier copyWithZone:a3];
  [v5 setLocalIdentifier:v6];

  v7 = [(NSDate *)self->_modificationDate copyWithZone:a3];
  [v5 setModificationDate:v7];

  [v5 setOriginalCrop:{self->_originalCrop.origin.x, self->_originalCrop.origin.y, self->_originalCrop.size.width, self->_originalCrop.size.height}];
  v8 = [(NSURL *)self->_baseImageURL copyWithZone:a3];
  [v5 setBaseImageURL:v8];

  v9 = [(NSURL *)self->_maskImageURL copyWithZone:a3];
  [v5 setMaskImageURL:v9];

  v10 = [(NSURL *)self->_backgroundImageURL copyWithZone:a3];
  [v5 setBackgroundImageURL:v10];

  [v5 setTimeElementUnitBaseline:self->_timeElementUnitBaseline];
  [v5 setTimeElementUnitHeight:self->_timeElementUnitHeight];
  [v5 setBaseImageZorder:self->_baseImageZorder];
  [v5 setMaskedImageZorder:self->_maskedImageZorder];
  [v5 setTimeElementZorder:self->_timeElementZorder];
  [v5 setImageAOTBrightness:self->_imageAOTBrightness];
  [v5 setUserAdjusted:self->_userAdjusted];
  [v5 setParallaxScale:self->_parallaxScale];
  [v5 setParallaxFlat:self->_parallaxFlat];
  return v5;
}

+ (id)decodeFromDictionary:(id)a3 forResourceDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"localIdentifier"];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 objectForKeyedSubscript:@"modificationDate"];
    if (v9)
    {
      v10 = v9;
      v11 = [v5 objectForKeyedSubscript:@"baseImageURL"];

      if (v11)
      {
        v12 = objc_opt_new();
        v13 = [v5 objectForKeyedSubscript:@"localIdentifier"];
        [v12 setLocalIdentifier:v13];

        v14 = [v5 objectForKeyedSubscript:@"modificationDate"];
        [v12 setModificationDate:v14];

        v15 = [v5 objectForKeyedSubscript:@"baseImageURL"];
        v16 = [v6 stringByAppendingPathComponent:v15];

        v17 = [[NSURL alloc] initFileURLWithPath:v16 isDirectory:0];
        [v12 setBaseImageURL:v17];

        v18 = [v5 objectForKeyedSubscript:@"maskImageURL"];
        if (v18)
        {
          v19 = [v6 stringByAppendingPathComponent:v18];
          v20 = [[NSURL alloc] initFileURLWithPath:v19 isDirectory:0];
          [v12 setMaskImageURL:v20];
        }

        v21 = [v5 objectForKeyedSubscript:@"backgroundImageURL"];
        if (v21)
        {
          v22 = [v6 stringByAppendingPathComponent:v21];
          v23 = [[NSURL alloc] initFileURLWithPath:v22 isDirectory:0];
          [v12 setBackgroundImageURL:v23];
        }

        v24 = [v5 objectForKeyedSubscript:@"originalCropX"];
        [v24 doubleValue];
        v26 = v25;

        v27 = [v5 objectForKeyedSubscript:@"originalCropY"];
        [v27 doubleValue];
        v29 = v28;

        v30 = [v5 objectForKeyedSubscript:@"originalCropW"];
        [v30 doubleValue];
        v32 = v31;

        v33 = [v5 objectForKeyedSubscript:@"originalCropH"];
        [v33 doubleValue];
        v35 = v34;

        [v12 setOriginalCrop:{v26, v29, v32, v35}];
        v36 = [v5 objectForKeyedSubscript:@"timeElementUnitBaseline"];
        [v36 floatValue];
        [v12 setTimeElementUnitBaseline:v37];

        v38 = [v5 objectForKeyedSubscript:@"timeElementUnitHeight"];
        [v38 floatValue];
        [v12 setTimeElementUnitHeight:v39];

        v40 = [v5 objectForKeyedSubscript:@"baseImageZorder"];
        [v40 floatValue];
        [v12 setBaseImageZorder:v41];

        v42 = [v5 objectForKeyedSubscript:@"maskedImageZorder"];
        [v42 floatValue];
        [v12 setMaskedImageZorder:v43];

        v44 = [v5 objectForKeyedSubscript:@"timeElementZorder"];
        [v44 floatValue];
        [v12 setTimeElementZorder:v45];

        v46 = [v5 objectForKeyedSubscript:@"imageAOTBrightness"];
        [v46 floatValue];
        [v12 setImageAOTBrightness:v47];

        v48 = [v5 objectForKeyedSubscript:@"userAdjusted"];
        v49 = v48;
        if (v48)
        {
          v50 = [v48 BOOLValue];
        }

        else
        {
          v50 = 0;
        }

        [v12 setUserAdjusted:v50];
        v52 = [v5 objectForKeyedSubscript:@"parallaxScale"];
        v53 = v52;
        if (v52)
        {
          [v52 floatValue];
          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        [v12 setParallaxScale:v55];
        v56 = [v5 objectForKeyedSubscript:@"parallaxFlat"];
        v57 = v56;
        if (v56)
        {
          v58 = [v56 BOOLValue];
        }

        else
        {
          v58 = 0;
        }

        [v12 setParallaxFlat:v58];

        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v51 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    sub_29BF0(v5, v51);
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)encodeAsDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:self->_localIdentifier forKeyedSubscript:@"localIdentifier"];
  [v3 setObject:self->_modificationDate forKeyedSubscript:@"modificationDate"];
  v4 = [[NSString alloc] initWithUTF8String:{-[NSURL fileSystemRepresentation](self->_baseImageURL, "fileSystemRepresentation")}];
  v5 = [v4 lastPathComponent];
  [v3 setObject:v5 forKeyedSubscript:@"baseImageURL"];

  if (self->_maskImageURL)
  {
    v6 = [[NSString alloc] initWithUTF8String:{-[NSURL fileSystemRepresentation](self->_maskImageURL, "fileSystemRepresentation")}];
    v7 = [v6 lastPathComponent];
    [v3 setObject:v7 forKeyedSubscript:@"maskImageURL"];
  }

  if (self->_backgroundImageURL)
  {
    v8 = [[NSString alloc] initWithUTF8String:{-[NSURL fileSystemRepresentation](self->_backgroundImageURL, "fileSystemRepresentation")}];
    v9 = [v8 lastPathComponent];
    [v3 setObject:v9 forKeyedSubscript:@"backgroundImageURL"];
  }

  v10 = [NSNumber numberWithDouble:self->_originalCrop.origin.x];
  [v3 setObject:v10 forKeyedSubscript:@"originalCropX"];

  v11 = [NSNumber numberWithDouble:self->_originalCrop.origin.y];
  [v3 setObject:v11 forKeyedSubscript:@"originalCropY"];

  v12 = [NSNumber numberWithDouble:self->_originalCrop.size.width];
  [v3 setObject:v12 forKeyedSubscript:@"originalCropW"];

  v13 = [NSNumber numberWithDouble:self->_originalCrop.size.height];
  [v3 setObject:v13 forKeyedSubscript:@"originalCropH"];

  v14 = [NSNumber numberWithDouble:self->_timeElementUnitBaseline];
  [v3 setObject:v14 forKeyedSubscript:@"timeElementUnitBaseline"];

  v15 = [NSNumber numberWithDouble:self->_timeElementUnitHeight];
  [v3 setObject:v15 forKeyedSubscript:@"timeElementUnitHeight"];

  v16 = [NSNumber numberWithDouble:self->_baseImageZorder];
  [v3 setObject:v16 forKeyedSubscript:@"baseImageZorder"];

  v17 = [NSNumber numberWithDouble:self->_maskedImageZorder];
  [v3 setObject:v17 forKeyedSubscript:@"maskedImageZorder"];

  v18 = [NSNumber numberWithDouble:self->_timeElementZorder];
  [v3 setObject:v18 forKeyedSubscript:@"timeElementZorder"];

  v19 = [NSNumber numberWithDouble:self->_imageAOTBrightness];
  [v3 setObject:v19 forKeyedSubscript:@"imageAOTBrightness"];

  v20 = [NSNumber numberWithBool:self->_userAdjusted];
  [v3 setObject:v20 forKeyedSubscript:@"userAdjusted"];

  v21 = [NSNumber numberWithDouble:self->_parallaxScale];
  [v3 setObject:v21 forKeyedSubscript:@"parallaxScale"];

  v22 = [NSNumber numberWithBool:self->_parallaxFlat];
  [v3 setObject:v22 forKeyedSubscript:@"parallaxFlat"];

  return v3;
}

- (CGRect)originalCrop
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)uniqueIdentifier
{
  v3 = [(NTKUltraCubePhoto *)self localIdentifier];
  v4 = [PHObject uuidFromLocalIdentifier:v3];

  if (!v4)
  {
    v4 = [(NTKUltraCubePhoto *)self localIdentifier];
  }

  [(NTKUltraCubePhoto *)self maskedImageZorder];
  v6 = v5;
  [(NTKUltraCubePhoto *)self timeElementZorder];
  v8 = v7;
  [(NTKUltraCubePhoto *)self timeElementUnitBaseline];
  v10 = [NSString stringWithFormat:@"%05.1f-%05.1f-%05.1f", v6, v8, v9];
  v11 = [(NTKUltraCubePhoto *)self modificationDate];
  [v11 timeIntervalSince1970];
  v13 = [NSString stringWithFormat:@"%@-%ld-%@", v4, v12, v10];

  [(NTKUltraCubePhoto *)self originalCrop];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (!CGRectIsEmpty(v21))
  {
    v18 = [v13 stringByAppendingFormat:@"-((%05.1f-%05.1f)-(%05.1f, %05.1f))", *&x, *&y, *&width, *&height];

    v13 = v18;
  }

  return v13;
}

+ (BOOL)validateDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();
  objc_opt_class();
  NTKValidateDictionaryValue();

  return 1;
}

@end