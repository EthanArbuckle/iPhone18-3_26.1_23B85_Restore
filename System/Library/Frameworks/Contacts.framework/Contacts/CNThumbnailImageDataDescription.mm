@interface CNThumbnailImageDataDescription
- (BOOL)abPropertyID:(int *)a3;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6;
- (void)ABValueForABPerson:(void *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNThumbnailImageDataDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 thumbnailImageData];
  if (!v8)
  {
    v4 = [v7 thumbnailImageData];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 thumbnailImageData];
  v10 = [v7 thumbnailImageData];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_thumbnailImageData"];

  v7 = [v9 copy];
  v8 = v5[37];
  v5[37] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A190];
  }

  return a3 != 0;
}

- (void)ABValueForABPerson:(void *)a3
{
  result = ABPersonCopyImageDataWithFormat(a3, kABPersonImageFormatThumbnail);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setCNValue:(id)a3 onABPerson:(void *)a4 withDependentPropertiesContext:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = v9;
  if (v9)
  {
    v22 = 0;
    v23 = 0;
    v11 = v9;
    if (CNImageUtilsCopyImageSourceAndGetSizeFromData(v9, 0, &v23, &v22))
    {
      ABPersonSizeForFormat();
      v14 = v13;
      v15 = v12;
      if (v13 < v23 || (v11 = v10, v12 < v22))
      {
        v16 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          v25 = v23;
          v26 = 2048;
          v27 = v22;
          v28 = 2048;
          v29 = v14;
          v30 = 2048;
          v31 = v15;
          _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Unexpected dimensions for a thumbnail: (%ld x %ld). Max is (%f x %f). Attempting to resize", buf, 0x2Au);
        }

        v21 = 0x3FF0000000000000;
        v17 = CNImageUtilsImageDataByScalingImageData(v10, 0, v14, &v21, v23, v22, 0.8);
        v18 = v17;
        if (v17)
        {
          v11 = v17;
          v19 = v10;
        }

        else
        {
          v19 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218752;
            v25 = v23;
            v26 = 2048;
            v27 = v22;
            v28 = 2048;
            v29 = v14;
            v30 = 2048;
            v31 = v15;
            _os_log_error_impl(&dword_1954A0000, v19, OS_LOG_TYPE_ERROR, "Failed to resize thumbnailImageData with original dimensions: (%ld x %ld) to (%f x %f).", buf, 0x2Au);
          }

          v11 = v10;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  [v8 setPendingThumbnailImageData:v11];

  return 1;
}

@end