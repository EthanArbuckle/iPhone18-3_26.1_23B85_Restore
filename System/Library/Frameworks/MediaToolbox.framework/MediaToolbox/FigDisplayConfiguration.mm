@interface FigDisplayConfiguration
- (CGSize)canvasSize;
- (CGSize)maxDisplaySize;
- (FigDisplayConfiguration)init;
- (NSString)chromaLocation;
- (NSString)clientName;
- (NSString)displayLabel;
- (id)description;
- (int64_t)clientPID;
- (int64_t)displayMode;
- (int64_t)imagePoolSize;
- (int64_t)numOfIdleFrames;
- (int64_t)preferredUIScaleFactor;
- (unint64_t)preset;
- (unint64_t)toneMappingMode;
- (unsigned)refreshRate;
- (void)dealloc;
- (void)setCanvasSize:(CGSize)a3;
- (void)setChromaLocation:(id)a3;
- (void)setClientName:(id)a3;
- (void)setClientPID:(int64_t)a3;
- (void)setDisplayLabel:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setImagePoolSize:(int64_t)a3;
- (void)setMaxDisplaySize:(CGSize)a3;
- (void)setNumOfIdleFrames:(int64_t)a3;
- (void)setPreferredUIScaleFactor:(int64_t)a3;
- (void)setPreset:(unint64_t)a3;
- (void)setRefreshRate:(unsigned int)a3;
- (void)setToneMappingMode:(unint64_t)a3;
@end

@implementation FigDisplayConfiguration

- (FigDisplayConfiguration)init
{
  v4.receiver = self;
  v4.super_class = FigDisplayConfiguration;
  v2 = [(FigDisplayConfiguration *)&v4 init];
  if (v2)
  {
    v2->_fvdOptions = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2->_lock = FigSimpleMutexCreate();
    CFDictionarySetValue(v2->_fvdOptions, @"usage", @"Uncompressed");
    v2->_preset = 0;
    CFDictionarySetValue(v2->_fvdOptions, @"DisplayLabel", @"FigScreenCaptureController Display");
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
  v4.super_class = FigDisplayConfiguration;
  [(FigDisplayConfiguration *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, options = %@>", NSStringFromClass(v4), self, -[__CFDictionary description](self->_fvdOptions, "description")];
}

- (void)setMaxDisplaySize:(CGSize)a3
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(a3);
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

- (CGSize)maxDisplaySize
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

- (void)setRefreshRate:(unsigned int)a3
{
  FigSimpleMutexLock();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();

  FigSimpleMutexUnlock();
}

- (unsigned)refreshRate
{
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexUnlock();
  return 60;
}

- (void)setPreset:(unint64_t)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = convertPresetEnumToUsageModeString(a3);
  if (v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexLock();
  if (v6 - 7 <= 7)
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

    if (v6 - 9 > 1)
    {
      if (v6 - 11 > 1)
      {
        if (v6 - 13 > 1)
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
  self->_preset = v6;
  FigSimpleMutexUnlock();
}

- (unint64_t)preset
{
  FigSimpleMutexLock();
  preset = self->_preset;
  FigSimpleMutexUnlock();
  return preset;
}

- (void)setNumOfIdleFrames:(int64_t)a3
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

- (void)setImagePoolSize:(int64_t)a3
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

- (void)setClientName:(id)a3
{
  FigSimpleMutexLock();
  fvdOptions = self->_fvdOptions;
  if (a3)
  {
    CFDictionarySetValue(fvdOptions, @"clientName", a3);
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

- (void)setClientPID:(int64_t)a3
{
  FigSimpleMutexLock();
  if (a3 < 1)
  {
    CFDictionaryRemoveValue(self->_fvdOptions, @"clientPID");
    CFDictionaryRemoveValue(self->_fvdOptions, @"MirroringMode");
  }

  else
  {
    FigCFDictionarySetInt();
    FigCFDictionarySetInt();
  }

  FigSimpleMutexUnlock();
}

- (int64_t)clientPID
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setDisplayMode:(int64_t)a3
{
  if (a3 <= 3 && a3 != 2)
  {
    FigSimpleMutexLock();
    FigCFDictionarySetInt();

    FigSimpleMutexUnlock();
  }
}

- (int64_t)displayMode
{
  FigSimpleMutexLock();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setDisplayLabel:(id)a3
{
  FigSimpleMutexLock();
  fvdOptions = self->_fvdOptions;
  if (a3)
  {
    CFDictionarySetValue(fvdOptions, @"DisplayLabel", a3);
  }

  else
  {
    CFDictionaryRemoveValue(fvdOptions, @"DisplayLabel");
  }

  FigSimpleMutexUnlock();
}

- (NSString)displayLabel
{
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  FigSimpleMutexUnlock();
  return Value;
}

- (void)setCanvasSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  FigSimpleMutexLock();
  if (width > 0.0 && height > 0.0)
  {
    FigCFDictionarySetInt();
    FigCFDictionarySetInt();
  }

  FigSimpleMutexUnlock();
}

- (CGSize)canvasSize
{
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexUnlock();
  v2 = 0;
  v3 = 0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredUIScaleFactor:(int64_t)a3
{
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

  [value setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", a3), @"preferredUIScale"}];
  CFDictionarySetValue(self->_fvdOptions, @"deviceInfo", value);
  FigSimpleMutexUnlock();
}

- (int64_t)preferredUIScaleFactor
{
  FigSimpleMutexLock();
  FigCFDictionaryGetValue();
  FigCFDictionaryGetIntIfPresent();
  FigSimpleMutexUnlock();
  return 0;
}

- (void)setToneMappingMode:(unint64_t)a3
{
  if (a3 - 1 <= 1)
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

- (void)setChromaLocation:(id)a3
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