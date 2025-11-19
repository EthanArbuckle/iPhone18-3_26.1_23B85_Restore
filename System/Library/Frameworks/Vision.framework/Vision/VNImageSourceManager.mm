@interface VNImageSourceManager
- (CGImageSource)_cgImageSourceAtAddress:(CGImageSource *)a3 forSubSampleFactor:(unsigned int)a4 protectedWithUnfairLock:(os_unfair_lock_s *)a5 operatingInLowPriority:(BOOL)a6 error:(id *)a7;
- (VNImageSourceManager)initWithImageData:(id)a3;
- (VNImageSourceManager)initWithImageURL:(id)a3;
- (id)ciImageWithSubSampleFactor:(int)a3 useLowPriority:(void *)a4 error:;
- (unsigned)exifOrientation;
- (void)dealloc;
@end

@implementation VNImageSourceManager

- (unsigned)exifOrientation
{
  os_unfair_lock_lock(&self->_getOrientationLock);
  if (!self->_orientation)
  {
    self->_orientation = 1;
    v3 = [(VNImageSourceManager *)self _cgImageSourceAtAddress:&self->_imageSourceSubsample1 forSubSampleFactor:1 protectedWithUnfairLock:&self->_loadSubSample1Lock operatingInLowPriority:0 error:0];
    if (v3)
    {
      v4 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
      v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 intValue];
        if (v7 - 1 <= 7)
        {
          self->_orientation = v7;
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_getOrientationLock);
  return self->_orientation;
}

- (CGImageSource)_cgImageSourceAtAddress:(CGImageSource *)a3 forSubSampleFactor:(unsigned int)a4 protectedWithUnfairLock:(os_unfair_lock_s *)a5 operatingInLowPriority:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v10 = *&a4;
  [VNError VNAssert:a3 != 0 log:@"Internal error: image source cannot be NULL"];
  os_unfair_lock_lock(a5);
  v13 = *a3;
  if (!*a3)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF90]);
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v10 < 2];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    v17 = [v14 initWithObjectsAndKeys:{MEMORY[0x1E695E110], *MEMORY[0x1E696E0A8], MEMORY[0x1E695E118], *MEMORY[0x1E696E0C8], v15, *MEMORY[0x1E696E138], v16, *MEMORY[0x1E696E0F8], MEMORY[0x1E695E118], *MEMORY[0x1E696E058], 0}];

    if (v10 >= 2)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695F990]];
    }

    imageURL = self->_imageURL;
    if (imageURL)
    {
      v20 = CGImageSourceCreateWithURL(imageURL, v17);
    }

    else
    {
      imageData = self->_imageData;
      if (!imageData)
      {
        v13 = *a3;
        if (a7)
        {
LABEL_9:
          if (!v13)
          {
            *a7 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: cannot create image source"];
          }
        }

LABEL_11:

        goto LABEL_12;
      }

      v20 = CGImageSourceCreateWithData(imageData, v17);
    }

    v13 = v20;
    *a3 = v20;
    if (a7)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_unlock(a5);
  return v13;
}

- (void)dealloc
{
  imageSourceSubsample1 = self->_imageSourceSubsample1;
  if (imageSourceSubsample1)
  {
    CFRelease(imageSourceSubsample1);
    self->_imageSourceSubsample1 = 0;
  }

  imageSourceSubsample2 = self->_imageSourceSubsample2;
  if (imageSourceSubsample2)
  {
    CFRelease(imageSourceSubsample2);
    self->_imageSourceSubsample2 = 0;
  }

  imageSourceSubsample4 = self->_imageSourceSubsample4;
  if (imageSourceSubsample4)
  {
    CFRelease(imageSourceSubsample4);
    self->_imageSourceSubsample4 = 0;
  }

  imageSourceSubsample8 = self->_imageSourceSubsample8;
  if (imageSourceSubsample8)
  {
    CFRelease(imageSourceSubsample8);
    self->_imageSourceSubsample8 = 0;
  }

  v7.receiver = self;
  v7.super_class = VNImageSourceManager;
  [(VNImageSourceManager *)&v7 dealloc];
}

- (VNImageSourceManager)initWithImageData:(id)a3
{
  v5 = a3;
  if (v5 && (v11.receiver = self, v11.super_class = VNImageSourceManager, v6 = [(VNImageSourceManager *)&v11 init], (self = v6) != 0))
  {
    *&v6->_getOrientationLock._os_unfair_lock_opaque = 0;
    *&v6->_loadSubSample2Lock._os_unfair_lock_opaque = 0;
    v6->_loadSubSample8Lock._os_unfair_lock_opaque = 0;
    *&v6->_imageSourceSubsample1 = 0u;
    *&v6->_imageSourceSubsample4 = 0u;
    imageURL = v6->_imageURL;
    v6->_imageURL = 0;

    imageData = self->_imageData;
    self->_imageData = 0;

    self->_orientation = 0;
    objc_storeStrong(&self->_imageData, a3);
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (VNImageSourceManager)initWithImageURL:(id)a3
{
  v5 = a3;
  if (v5 && (v11.receiver = self, v11.super_class = VNImageSourceManager, v6 = [(VNImageSourceManager *)&v11 init], (self = v6) != 0))
  {
    *&v6->_getOrientationLock._os_unfair_lock_opaque = 0;
    *&v6->_loadSubSample2Lock._os_unfair_lock_opaque = 0;
    v6->_loadSubSample8Lock._os_unfair_lock_opaque = 0;
    *&v6->_imageSourceSubsample1 = 0u;
    *&v6->_imageSourceSubsample4 = 0u;
    imageURL = v6->_imageURL;
    v6->_imageURL = 0;

    imageData = self->_imageData;
    self->_imageData = 0;

    self->_orientation = 0;
    objc_storeStrong(&self->_imageURL, a3);
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)ciImageWithSubSampleFactor:(int)a3 useLowPriority:(void *)a4 error:
{
  v4 = a1;
  v19[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 < 2)
    {
      v12 = *MEMORY[0x1E696E0C8];
      v16[0] = *MEMORY[0x1E696E0A8];
      v16[1] = v12;
      v17[0] = MEMORY[0x1E695E110];
      v17[1] = MEMORY[0x1E695E118];
      v16[2] = *MEMORY[0x1E696E138];
      v17[2] = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    }

    else
    {
      v6 = *MEMORY[0x1E695F990];
      v18[0] = *MEMORY[0x1E696E0A8];
      v18[1] = v6;
      if (a3)
      {
        v7 = MEMORY[0x1E695E118];
      }

      else
      {
        v7 = MEMORY[0x1E695E110];
      }

      v19[0] = MEMORY[0x1E695E110];
      v19[1] = v7;
      v8 = *MEMORY[0x1E696E138];
      v18[2] = *MEMORY[0x1E696E0C8];
      v18[3] = v8;
      v19[2] = MEMORY[0x1E695E118];
      v19[3] = MEMORY[0x1E695E110];
      v18[4] = *MEMORY[0x1E696E0F8];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v19[4] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

      v11 = v10;
    }

    v13 = v4[8];
    if (v13)
    {
      [MEMORY[0x1E695F658] imageWithContentsOfURL:v4[8] options:v11];
    }

    else
    {
      [MEMORY[0x1E695F658] imageWithData:v4[9] options:v11];
    }
    v4 = ;

    if (v4)
    {
      v14 = v4;
    }

    else if (a4)
    {
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot obtain a CIImage from the image source"];
    }
  }

  return v4;
}

@end