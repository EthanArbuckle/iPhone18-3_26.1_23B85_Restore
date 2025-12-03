@interface CNThumbnailImageDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNThumbnailImageDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  thumbnailImageData = [contactCopy thumbnailImageData];
  if (!thumbnailImageData)
  {
    thumbnailImageData2 = [otherCopy thumbnailImageData];
    if (!thumbnailImageData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  thumbnailImageData3 = [contactCopy thumbnailImageData];
  thumbnailImageData4 = [otherCopy thumbnailImageData];
  v11 = [thumbnailImageData3 isEqual:thumbnailImageData4];

  if (!thumbnailImageData)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_thumbnailImageData"];

  v7 = [v9 copy];
  v8 = contactCopy[37];
  contactCopy[37] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A190];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  result = ABPersonCopyImageDataWithFormat(person, kABPersonImageFormatThumbnail);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setCNValue:(id)value onABPerson:(void *)person withDependentPropertiesContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  contextCopy = context;
  v9 = valueCopy;
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
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          v25 = v23;
          v26 = 2048;
          v27 = v22;
          v28 = 2048;
          v29 = v14;
          v30 = 2048;
          v31 = v15;
          _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_DEFAULT, "Unexpected dimensions for a thumbnail: (%ld x %ld). Max is (%f x %f). Attempting to resize", buf, 0x2Au);
        }

        v21 = 0x3FF0000000000000;
        v17 = CNImageUtilsImageDataByScalingImageData(v10, 0, v14, &v21, v23, v22, 0.8);
        v18 = v17;
        if (v17)
        {
          v11 = v17;
          os_log2 = v10;
        }

        else
        {
          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218752;
            v25 = v23;
            v26 = 2048;
            v27 = v22;
            v28 = 2048;
            v29 = v14;
            v30 = 2048;
            v31 = v15;
            _os_log_error_impl(&dword_1954A0000, os_log2, OS_LOG_TYPE_ERROR, "Failed to resize thumbnailImageData with original dimensions: (%ld x %ld) to (%f x %f).", buf, 0x2Au);
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

  [contextCopy setPendingThumbnailImageData:v11];

  return 1;
}

@end