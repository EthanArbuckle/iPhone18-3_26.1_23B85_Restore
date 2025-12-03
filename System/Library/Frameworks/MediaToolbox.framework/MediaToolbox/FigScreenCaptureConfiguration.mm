@interface FigScreenCaptureConfiguration
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minFrameInterval;
- (BOOL)includePrivateContent;
- (CGSize)size;
- (FigScreenCaptureConfiguration)init;
- (NSString)chromaLocation;
- (NSString)clientName;
- (id)contentIDs;
- (id)description;
- (int64_t)displayID;
- (int64_t)imagePoolSize;
- (int64_t)numOfIdleFrames;
- (unint64_t)preset;
- (unint64_t)toneMappingMode;
- (unsigned)pixelFormat;
- (void)dealloc;
- (void)setChromaLocation:(id)location;
- (void)setClientName:(id)name;
- (void)setContentIDs:(id)ds;
- (void)setDisplayID:(int64_t)d;
- (void)setImagePoolSize:(int64_t)size;
- (void)setIncludePrivateContent:(BOOL)content;
- (void)setMinFrameInterval:(id *)interval;
- (void)setNumOfIdleFrames:(int64_t)frames;
- (void)setPixelFormat:(unsigned int)format;
- (void)setPreset:(unint64_t)preset;
- (void)setSize:(CGSize)size;
- (void)setToneMappingMode:(unint64_t)mode;
@end

@implementation FigScreenCaptureConfiguration

- (FigScreenCaptureConfiguration)init
{
  v4.receiver = self;
  v4.super_class = FigScreenCaptureConfiguration;
  v2 = [(FigScreenCaptureConfiguration *)&v4 init];
  if (v2)
  {
    v2->_fvdOptions = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2->_lock = FigSimpleMutexCreate();
    CFDictionarySetValue(v2->_fvdOptions, @"usage", @"Uncompressed");
    v2->_preset = 0;
    CFDictionarySetValue(v2->_fvdOptions, @"ScreenRecording", *MEMORY[0x1E695E4D0]);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v2->_fvdOptions, @"DisplayLabel", @"ScreenCapture");
  }

  return v2;
}

- (void)dealloc
{
  fvdOptions = self->_fvdOptions;
  if (fvdOptions)
  {
    CFRelease(fvdOptions);
    self->_fvdOptions = 0;
  }

  FigSimpleMutexDestroy();
  self->_lock = 0;
  v4.receiver = self;
  v4.super_class = FigScreenCaptureConfiguration;
  [(FigScreenCaptureConfiguration *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, options = %@>", NSStringFromClass(v4), self, -[__CFDictionary description](self->_fvdOptions, "description")];
}

- (void)setSize:(CGSize)size
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(size);
  FigSimpleMutexLock();
  v5 = CFDictionaryGetValue(self->_fvdOptions, @"deviceInfo");
  if (v5)
  {
    value = v5;
    v6 = v5;
  }

  else
  {
    value = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [value setObject:DictionaryRepresentation forKeyedSubscript:@"displaySizeInPixels"];
  CFDictionarySetValue(self->_fvdOptions, @"deviceInfo", value);
  FigSimpleMutexUnlock();
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }
}

- (CGSize)size
{
  v4 = *MEMORY[0x1E695F060];
  FigSimpleMutexLock();
  FigCFDictionaryGetValue();
  FigCFDictionaryGetCGSizeIfPresent();
  FigSimpleMutexUnlock();
  v3 = *(&v4 + 1);
  v2 = *&v4;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMinFrameInterval:(id *)interval
{
  v3 = *interval;
  CMTimeGetSeconds(&v3);
  FigSimpleMutexLock();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minFrameInterval
{
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexUnlock();
  return CMTimeMake(retstr, 1, 60);
}

- (void)setPixelFormat:(unsigned int)format
{
  FigSimpleMutexLock();
  FigCFDictionarySetInt();

  FigSimpleMutexUnlock();
}

- (unsigned)pixelFormat
{
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setPreset:(unint64_t)preset
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = convertPresetEnumToUsageModeString(preset);
  if (v5)
  {
    presetCopy = preset;
  }

  else
  {
    presetCopy = 0;
  }

  FigSimpleMutexLock();
  if (presetCopy - 7 <= 7)
  {
    Value = CFDictionaryGetValue(self->_fvdOptions, @"deviceInfo");
    if (Value)
    {
      v8 = Value;
      v9 = Value;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (presetCopy - 9 > 1)
    {
      if (presetCopy - 11 > 1)
      {
        if (presetCopy - 13 > 1)
        {
          v15 = @"HDRMode";
          v16 = @"HDR10";
          v10 = MEMORY[0x1E695DF20];
          v11 = &v16;
          v12 = &v15;
        }

        else
        {
          v17 = @"HDRMode";
          v18 = @"HDR10+";
          v10 = MEMORY[0x1E695DF20];
          v11 = &v18;
          v12 = &v17;
        }
      }

      else
      {
        v19 = @"HDRMode";
        v20 = @"HLG";
        v10 = MEMORY[0x1E695DF20];
        v11 = &v20;
        v12 = &v19;
      }
    }

    else
    {
      v21 = @"HDRMode";
      v22[0] = @"DoVi";
      v10 = MEMORY[0x1E695DF20];
      v11 = v22;
      v12 = &v21;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    [v8 setObject:v13 forKeyedSubscript:@"HDRInfo"];
    CFDictionarySetValue(self->_fvdOptions, @"HDRInfo", v13);
    CFDictionarySetValue(self->_fvdOptions, @"deviceInfo", v8);
  }

  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = @"Uncompressed";
  }

  CFDictionarySetValue(self->_fvdOptions, @"usage", v14);
  self->_preset = presetCopy;
  FigSimpleMutexUnlock();
}

- (unint64_t)preset
{
  FigSimpleMutexLock();
  preset = self->_preset;
  FigSimpleMutexUnlock();
  return preset;
}

- (void)setNumOfIdleFrames:(int64_t)frames
{
  FigSimpleMutexLock();
  FigCFDictionarySetInt();

  FigSimpleMutexUnlock();
}

- (int64_t)numOfIdleFrames
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setImagePoolSize:(int64_t)size
{
  FigSimpleMutexLock();
  FigCFDictionarySetInt();

  FigSimpleMutexUnlock();
}

- (int64_t)imagePoolSize
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setClientName:(id)name
{
  FigSimpleMutexLock();
  fvdOptions = self->_fvdOptions;
  if (name)
  {
    CFDictionarySetValue(fvdOptions, @"clientName", name);
  }

  else
  {
    CFDictionaryRemoveValue(fvdOptions, @"clientName");
  }

  FigSimpleMutexUnlock();
}

- (NSString)clientName
{
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  FigSimpleMutexUnlock();
  return Value;
}

- (void)setContentIDs:(id)ds
{
  FigSimpleMutexLock();
  fvdOptions = self->_fvdOptions;
  if (ds)
  {
    CFDictionarySetValue(fvdOptions, @"ContentIDs", ds);
  }

  else
  {
    CFDictionaryRemoveValue(fvdOptions, @"ContentIDs");
  }

  FigCFDictionarySetInt32();

  FigSimpleMutexUnlock();
}

- (id)contentIDs
{
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  FigSimpleMutexUnlock();
  return Value;
}

- (void)setIncludePrivateContent:(BOOL)content
{
  contentCopy = content;
  FigSimpleMutexLock();
  fvdOptions = self->_fvdOptions;
  if (contentCopy)
  {
    CFDictionarySetValue(fvdOptions, @"IncludePrivateContent", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    CFDictionaryRemoveValue(fvdOptions, @"IncludePrivateContent");
  }

  FigSimpleMutexUnlock();
}

- (BOOL)includePrivateContent
{
  FigSimpleMutexLock();
  FigCFDictionaryGetBooleanIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setDisplayID:(int64_t)d
{
  FigSimpleMutexLock();
  FigCFDictionarySetInt32();

  FigSimpleMutexUnlock();
}

- (int64_t)displayID
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 1;
}

- (void)setToneMappingMode:(unint64_t)mode
{
  if (mode - 1 <= 1)
  {
    FigSimpleMutexLock();
    FigCFDictionarySetInt32();

    FigSimpleMutexUnlock();
  }
}

- (unint64_t)toneMappingMode
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setChromaLocation:(id)location
{
  FigSimpleMutexLock();
  FigCFDictionarySetValue();

  FigSimpleMutexUnlock();
}

- (NSString)chromaLocation
{
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  FigSimpleMutexUnlock();
  if (Value)
  {
    return Value;
  }

  else
  {
    return *MEMORY[0x1E6965D30];
  }
}

@end