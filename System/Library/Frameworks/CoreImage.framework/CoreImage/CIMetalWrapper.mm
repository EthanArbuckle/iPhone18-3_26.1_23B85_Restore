@interface CIMetalWrapper
- (CIMetalWrapper)init;
- (id)attributes;
- (id)dummyImagesForImages:(id)images;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CIMetalWrapper

- (CIMetalWrapper)init
{
  v4.receiver = self;
  v4.super_class = CIMetalWrapper;
  v2 = [(CIMetalWrapper *)&v4 init];
  if (v2)
  {
    v2->_dict = [MEMORY[0x1E695DF90] dictionary];
  }

  return v2;
}

- (void)dealloc
{
  dict = self->_dict;
  if (dict)
  {
  }

  v4.receiver = self;
  v4.super_class = CIMetalWrapper;
  [(CIFilter *)&v4 dealloc];
}

- (void)setValue:(id)value forKey:(id)key
{
  if (value && key)
  {
    if ([key isEqualToString:@"inputFilterName"])
    {
      self->inputFilterName = value;
    }

    else
    {
      dict = self->_dict;

      [(NSMutableDictionary *)dict setValue:value forKey:key];
    }
  }
}

- (id)inputKeys
{
  if (!self->inputFilterName)
  {
    return MEMORY[0x1E695E0F0];
  }

  v2 = [CIFilter filterWithName:?];

  return [(CIFilter *)v2 inputKeys];
}

- (id)attributes
{
  if (!self->inputFilterName)
  {
    return MEMORY[0x1E695E0F8];
  }

  v2 = [CIFilter filterWithName:?];

  return [(CIFilter *)v2 attributes];
}

- (id)dummyImagesForImages:(id)images
{
  v36 = *MEMORY[0x1E69E9840];
  if (images)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(images, "count")}];
    v5 = +[CIColor whiteColor];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [images countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = *MEMORY[0x1E695F040];
      v10 = *(MEMORY[0x1E695F040] + 8);
      v11 = *(MEMORY[0x1E695F040] + 16);
      v12 = *(MEMORY[0x1E695F040] + 24);
      do
      {
        v13 = 0;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(images);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          v15 = [CIImage imageWithColor:v5];
          [v14 extent];
          v41.origin.x = v9;
          v41.origin.y = v10;
          v41.size.width = v11;
          v41.size.height = v12;
          if (!CGRectEqualToRect(v38, v41))
          {
            [v14 extent];
            v15 = [(CIImage *)v15 imageByCroppingToRect:?];
          }

          properties = [v14 properties];
          [v14 extent];
          v42.origin.x = v9;
          v42.origin.y = v10;
          v42.size.width = v11;
          v42.size.height = v12;
          if (!CGRectEqualToRect(v39, v42))
          {
            [(CIImage *)v15 extent];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;
            [v14 extent];
            v43.origin.x = v25;
            v43.origin.y = v26;
            v43.size.width = v27;
            v43.size.height = v28;
            v40.origin.x = v18;
            v40.origin.y = v20;
            v40.size.width = v22;
            v40.size.height = v24;
            if (!CGRectEqualToRect(v40, v43))
            {
              [v14 extent];
              v15 = [(CIImage *)v15 imageByCroppingToRect:?];
            }
          }

          if (properties)
          {
            v15 = [(CIImage *)v15 imageBySettingPropertiesNoCopy:properties];
          }

          if ([v14 colorSpace])
          {
            if (CGColorSpaceGetModel([v14 colorSpace]) == kCGColorSpaceModelRGB)
            {
              v15 = -[CIImage imageByTaggingWithColorSpace:](v15, "imageByTaggingWithColorSpace:", [v14 colorSpace]);
            }
          }

          [v4 addObject:v15];
          ++v13;
        }

        while (v7 != v13);
        v7 = [images countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    return v4;
  }

  else
  {
    v30 = MEMORY[0x1E695DEC8];

    return [v30 array];
  }
}

- (id)outputImage
{
  v48 = *MEMORY[0x1E69E9840];
  inputFilterName = self->inputFilterName;
  if (inputFilterName)
  {
    v4 = [CIFilter filterWithName:inputFilterName withInputParameters:self->_dict];
    if (v4)
    {
      outputImage = [(CIFilter *)v4 outputImage];
      if (outputImage)
      {
        v33 = outputImage;
        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        allKeys = [(NSMutableDictionary *)self->_dict allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v41;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v40 + 1) + 8 * i);
              v13 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:v12];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v13];
                [array2 addObject:v12];
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v9);
        }

        v32 = array;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        allKeys2 = [(NSMutableDictionary *)self->_dict allKeys];
        v16 = [allKeys2 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(allKeys2);
              }

              v20 = *(*(&v36 + 1) + 8 * j);
              v21 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:v20];
              if (v21)
              {
                v22 = v21;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [dictionary setObject:v22 forKeyedSubscript:v20];
                }
              }
            }

            v17 = [allKeys2 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v17);
        }

        v23 = self->inputFilterName;
        v44[0] = @"filterName";
        v44[1] = @"filterParameters";
        v45[0] = v23;
        v45[1] = dictionary;
        v44[2] = @"inputImages";
        v24 = [(CIMetalWrapper *)self dummyImagesForImages:v32];
        v44[3] = @"inputImageKeys";
        v45[2] = v24;
        v45[3] = array2;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];
        v35 = 0;
        v26 = v33;
        [v33 extent];
        v27 = [(CIImageProcessorKernel *)CIMetalProcessor applyWithExtent:v32 inputs:v25 arguments:&v35 error:?];
        if (!v27)
        {
          v31 = ci_logger_api();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(CIMetalWrapper *)&self->inputFilterName outputImage];
          }

          return v26;
        }

        return [CIImage imageForRenderingWithMetal:v33 orNonMetal:v27];
      }

      else
      {
        v30 = ci_logger_api();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(CIMetalWrapper *)&self->inputFilterName outputImage];
        }

        return +[CIImage emptyImage];
      }
    }
  }

  return +[CIImage emptyImage];
}

- (void)outputImage
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Unable to create filter wrapper image for filter %{public}@", &v3, 0xCu);
}

@end