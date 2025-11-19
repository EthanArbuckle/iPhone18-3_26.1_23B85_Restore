@interface PHImageDisplaySpec
- (CGRect)normalizedCropRect;
- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable;
- (CGSize)requestSizeFromFullSizedWidth:(int64_t)a3 height:(int64_t)a4;
- (CGSize)requestSizeFromFullSizedWidth:(int64_t)a3 height:(int64_t)a4 resizeMode:(int64_t)a5;
- (CGSize)targetSize;
- (PHImageDisplaySpec)initWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 normalizedCropRect:(CGRect)a5;
- (id)description;
- (id)shortDescription;
- (void)setNormalizedCropRect:(CGRect)a3;
@end

@implementation PHImageDisplaySpec

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable
{
  width = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.width;
  height = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)requestSizeFromFullSizedWidth:(int64_t)a3 height:(int64_t)a4
{
  [(PHImageDisplaySpec *)self requestSizeFromFullSizedWidth:a3 height:a4 resizeMode:1];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)requestSizeFromFullSizedWidth:(int64_t)a3 height:(int64_t)a4 resizeMode:(int64_t)a5
{
  if (a3 && a4 && self->_targetSize.width > 0.0 && self->_targetSize.height > 0.0)
  {
    [(PHImageDisplaySpec *)self normalizedCropRect];
    width = v24.size.width;
    height = v24.size.height;
    v11 = CGRectEqualToRect(v24, *MEMORY[0x1E695F058]);
    [(PHImageDisplaySpec *)self targetSize];
    v13 = v12;
    v15 = v14;
    v16 = v12 / v14;
    v17 = [(PHImageDisplaySpec *)self contentMode];
    if (v17 == 1 && a5 == 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = a3 / a4;
    }

    v20 = a3 / a4 * width / height;
    if (v11)
    {
      v20 = v19;
    }

    if (v17 == 1)
    {
      if (v20 <= v16)
      {
LABEL_16:
        v15 = v13 / v20;
LABEL_21:
        v21 = round(v13);
        v22 = round(v15);
        goto LABEL_22;
      }
    }

    else
    {
      if (v17)
      {
        v13 = *MEMORY[0x1E695F060];
        v15 = *(MEMORY[0x1E695F060] + 8);
        goto LABEL_21;
      }

      if (v20 > v16)
      {
        goto LABEL_16;
      }
    }

    v13 = v15 * v20;
    goto LABEL_21;
  }

  v21 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);
LABEL_22:
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setNormalizedCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  self->_normalizedCropRect.origin.x = PHSanitizeNormalizedCropRect(&v13, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  self->_normalizedCropRect.origin.y = v8;
  self->_normalizedCropRect.size.width = v9;
  self->_normalizedCropRect.size.height = v10;
  if (v13 == 1)
  {
    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      v12 = NSStringFromRect(v17);
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Invalid crop rect specified for image request (%{public}@, will attempt to fix if possible, otherwise will ignore crop rect", buf, 0xCu);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHImageDisplaySpec *)self shortDescription];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = DCIM_NSStringFromCGSize();
  v5 = v4;
  contentMode = self->_contentMode;
  v7 = @"fit";
  if (contentMode)
  {
    v7 = 0;
  }

  if (contentMode == 1)
  {
    v8 = @"fill";
  }

  else
  {
    v8 = v7;
  }

  v9 = [v3 stringWithFormat:@"size: %@, cm: %@", v4, v8];

  if (!CGRectEqualToRect(*MEMORY[0x1E695F058], self->_normalizedCropRect))
  {
    v10 = DCIM_NSStringFromCGRect();
    v11 = [v9 stringByAppendingFormat:@", crop: %@", v10];

    v9 = v11;
  }

  return v9;
}

- (PHImageDisplaySpec)initWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 normalizedCropRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PHImageDisplaySpec;
  v12 = [(PHImageDisplaySpec *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(PHImageDisplaySpec *)v12 setNormalizedCropRect:x, y, width, height];
    v13->_contentMode = a4;
    if (v11 <= 0.0 || v10 <= 0.0)
    {
      v14 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
      if ((v11 != *MEMORY[0x1E695F060] || v10 != v15) && (v11 != -1.0 || v10 != -1.0))
      {
        v18 = PLImageManagerGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25.width = v11;
          v25.height = v10;
          v19 = NSStringFromSize(v25);
          *buf = 138543362;
          v23 = v19;
          _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "Invalid target size specified for image request (%{public}@, defaulting to max size", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = v11;
      v15 = v10;
    }

    v13->_targetSize.width = v14;
    v13->_targetSize.height = v15;
  }

  return v13;
}

@end