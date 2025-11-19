@interface CICoreMLModelFilter
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CICoreMLModelFilter

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryStillImage";
  v7[1] = @"CICategoryBuiltIn";
  v7[2] = @"CICategoryStylize";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v9[1] = @"12";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.14";
  v8[3] = @"inputHeadIndex";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1081A88;
  v6[1] = &unk_1F1081AA0;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1081A88;
  v6[3] = @"CIAttributeTypeInteger";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[4] = @"inputSoftmaxNormalization";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E110];
  v4[3] = @"CIAttributeTypeBoolean";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v49 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(CIImage *)self->inputImage count];
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = [(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] inputDescriptionsByName];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:{-[NSDictionary allKeys](v4, "allKeys")}];
  if (v3 != [v5 count])
  {
    v18 = ci_logger_filter();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CICoreMLModelFilter outputImage];
    }

    return 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v41;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [(NSDictionary *)[(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] inputDescriptionsByName] objectForKey:v11];
        if (!v12 || (v13 = [v12 type], (v13 - 6) <= 0xFFFFFFFFFFFFFFFDLL))
        {
          v23 = ci_logger_filter();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [CICoreMLModelFilter outputImage];
          }

          return 0;
        }

        v14 = v13;
        v15 = channelCountOfName(self->inputModel, v11, 0);
        if (v15 > 4 || ((1 << v15) & 0x1A) == 0)
        {
          v37 = ci_logger_filter();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [CICoreMLModelFilter outputImage];
          }

          return 0;
        }

        if (v8)
        {
          if (v8 != v14)
          {
            v32 = ci_logger_filter();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [CICoreMLModelFilter outputImage];
            }

            return 0;
          }
        }

        else
        {
          v8 = v14;
        }

        if (v3 >= 2 && ![(CIImage *)self->inputImage objectForKey:v11])
        {
          v36 = ci_logger_filter();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [CICoreMLModelFilter outputImage];
          }

          return 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v17 = v8 == 4;
  }

  else
  {
    v17 = 0;
  }

  v19 = [(NSNumber *)self->inputHeadIndex intValue];
  v20 = [(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] outputDescriptionsByName];
  if (v20 && (v21 = v20, [(NSDictionary *)v20 count]> v19))
  {
    v22 = [(NSArray *)[(NSDictionary *)v21 allKeys] objectAtIndex:v19];
  }

  else
  {
    v22 = 0;
  }

  v24 = [-[NSDictionary objectForKey:](-[MLModelDescription outputDescriptionsByName](-[MLModel modelDescription](self->inputModel "modelDescription")];
  v25 = channelCountOfName(self->inputModel, v22, 1);
  if (v24 == 5)
  {
    goto LABEL_42;
  }

  if (v24 != 4)
  {
    v31 = ci_logger_filter();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CICoreMLModelFilter outputImage];
    }

    return 0;
  }

  if (v25 > 4 || ((1 << v25) & 0x1A) == 0)
  {
    v38 = ci_logger_filter();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [CICoreMLModelFilter outputImage];
    }

    return 0;
  }

  if (v3 == 1 && v17)
  {
    v26 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v27 = [v5 anyObject];
    inputImage = self->inputImage;
    v46 = v27;
    v47 = inputImage;
    v29 = process([MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1], self->inputModel, v22, self->_logName, 0, v26);
    CGColorSpaceRelease(v26);
    return v29;
  }

LABEL_42:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = self->inputImage;
  }

  else
  {
    v34 = [v5 anyObject];
    v35 = self->inputImage;
    v44 = v34;
    v45 = v35;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  }

  return process(v30, self->inputModel, v22, self->_logName, [(NSNumber *)self->inputSoftmaxNormalization BOOLValue], 0);
}

- (void)outputImage
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end