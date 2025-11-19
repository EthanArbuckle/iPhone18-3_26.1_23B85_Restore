@interface VTTemporalNoiseFilterConfiguration
+ (CFIndex)_loadCapabilities;
+ (void)_loadCapabilities;
- (BOOL)loadProperties;
- (VTTemporalNoiseFilterConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4;
- (VTTemporalNoiseFilterConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 sourcePixelFormat:(unsigned int)a5;
- (void)dealloc;
@end

@implementation VTTemporalNoiseFilterConfiguration

- (VTTemporalNoiseFilterConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 sourcePixelFormat:(unsigned int)a5
{
  v5 = *&a5;
  v12.receiver = self;
  v12.super_class = VTTemporalNoiseFilterConfiguration;
  v8 = [(VTTemporalNoiseFilterConfiguration *)&v12 init];
  if (!v8)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return 0;
  }

  v9 = v8;
  +[VTTemporalNoiseFilterConfiguration _loadCapabilities];
  if (a3 > +[VTTemporalNoiseFilterConfiguration maximumDimensions])
  {
    NSLog(&cfstr_FramewidthIsGr.isa);
    return 0;
  }

  if (a4 > +[VTTemporalNoiseFilterConfiguration maximumDimensions]>> 32)
  {
    NSLog(&cfstr_FrameheightIsG.isa);
    return 0;
  }

  if (a3 < +[VTTemporalNoiseFilterConfiguration minimumDimensions])
  {
    NSLog(&cfstr_FramewidthIsLe.isa);
    return 0;
  }

  if (a4 < +[VTTemporalNoiseFilterConfiguration minimumDimensions]>> 32)
  {
    NSLog(&cfstr_FrameheightIsL.isa);
    return 0;
  }

  v10 = +[VTTemporalNoiseFilterConfiguration supportedSourcePixelFormats];
  if (!-[NSArray containsObject:](v10, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]))
  {
    NSLog(&cfstr_Sourcepixelfor.isa);
    return 0;
  }

  v9->_frameWidth = a3;
  v9->_frameHeight = a4;
  v9->_sourcePixelFormat = v5;
  if (![(VTTemporalNoiseFilterConfiguration *)v9 loadProperties])
  {
    NSLog(&cfstr_FailedToLoadPr.isa);
    return 0;
  }

  return v9;
}

- (VTTemporalNoiseFilterConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = VTTemporalNoiseFilterConfiguration;
  v6 = [(VTTemporalNoiseFilterConfiguration *)&v9 init];
  if (!v6)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return 0;
  }

  v7 = v6;
  +[VTTemporalNoiseFilterConfiguration _loadCapabilities];
  if (a3 > +[VTTemporalNoiseFilterConfiguration maximumDimensions])
  {
    NSLog(&cfstr_FramewidthIsGr.isa);
    return 0;
  }

  if (a4 > +[VTTemporalNoiseFilterConfiguration maximumDimensions]>> 32)
  {
    NSLog(&cfstr_FrameheightIsG.isa);
    return 0;
  }

  if (a3 < +[VTTemporalNoiseFilterConfiguration minimumDimensions])
  {
    NSLog(&cfstr_FramewidthIsLe.isa);
    return 0;
  }

  if (a4 < +[VTTemporalNoiseFilterConfiguration minimumDimensions]>> 32)
  {
    NSLog(&cfstr_FrameheightIsL.isa);
    return 0;
  }

  v7->_frameWidth = a3;
  v7->_frameHeight = a4;
  v7->_sourcePixelFormat = 0;
  if (![(VTTemporalNoiseFilterConfiguration *)v7 loadProperties])
  {
    NSLog(&cfstr_FailedToLoadPr.isa);
    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTTemporalNoiseFilterConfiguration;
  [(VTTemporalNoiseFilterConfiguration *)&v3 dealloc];
}

+ (void)_loadCapabilities
{
  v12 = 0;
  v10 = 0;
  propertyValueOut = 0;
  v8 = 0;
  theArray = 0;
  if ((_loadedCapabilities & 1) == 0)
  {
    _loadedCapabilities = 1;
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    v2 = *MEMORY[0x1E695E480];
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"Class", @"TemporalNoiseReduction");
    v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
    CFDictionaryAddValue(v6, @"TemporalFilterID", @"com.apple.videotoolbox.temporalfilter.mctf");
    CFDictionaryAddValue(Mutable, @"TemporalFilterSpecifications", v6);
    if (!VTCopyTemporalFilterList(Mutable, &theArray))
    {
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        _processorSupported = Count > 0;
        if (Count >= 1)
        {
          CFArrayGetValueAtIndex(theArray, 0);
          if (FigCFDictionaryGetValueIfPresent())
          {
            if (v10)
            {
              FigCFDictionaryGetValueIfPresent();
              if (FigCFDictionaryGetValueIfPresent() && v8 && CFArrayGetCount(v8) >= 1)
              {
                CFArrayGetValueAtIndex(v8, 0);
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  LODWORD(_minimumDimensions) = 0;
                }

                if (FigCFDictionaryGetInt32IfPresent())
                {
                  HIDWORD(_minimumDimensions) = 0;
                }
              }

              if (!VTTemporalFilterSessionCreate(v2, @"TemporalNoiseReduction", 640, 480, v6, 0, 0, 0, filterOutputCallback, 0, &v12) && !VTSessionCopyProperty(v12, @"FilterSourcePixelBufferAttributes", v2, &propertyValueOut) && FigCFDictionaryGetValueIfPresent())
              {
                _supportedSourcePixelFormats = [0 copy];
              }
            }
          }
        }
      }

      else
      {
        _processorSupported = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
      }
    }
  }
}

- (BOOL)loadProperties
{
  session[2] = *MEMORY[0x1E69E9840];
  propertyValueOut = 0;
  session[0] = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  valuePtr = 100;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"TemporalFilterID", @"com.apple.videotoolbox.temporalfilter.mctf");
  if (VTTemporalFilterSessionCreate(v3, @"TemporalNoiseReduction", LODWORD(self->_frameWidth), LODWORD(self->_frameHeight), Mutable, 0, 0, 0, filterOutputCallback, 0, session))
  {
    v6 = 0;
    v7 = 0;
    UInt32 = 0;
    if (Mutable)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (self->_sourcePixelFormat)
  {
    UInt32 = FigCFNumberCreateUInt32();
    if (VTSessionSetProperty(session[0], @"SourceFramePixelFormat", UInt32))
    {
      v6 = 0;
      v7 = 0;
      if (!Mutable)
      {
        goto LABEL_18;
      }

LABEL_17:
      CFRelease(Mutable);
      goto LABEL_18;
    }
  }

  else
  {
    UInt32 = 0;
  }

  v7 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  if (!VTSessionSetProperty(session[0], @"FilterStrength", v7) && !VTSessionCopyProperty(session[0], @"MaxLookAhead", v3, &propertyValueOut))
  {
    self->_nextFrameCount = FigCFNumberGetUInt32() + 1;
    if (!VTSessionCopyProperty(session[0], @"MaxLookBehind", v3, &v13))
    {
      self->_previousFrameCount = FigCFNumberGetUInt32();
      if (!VTSessionCopyProperty(session[0], @"FilterSourcePixelBufferAttributes", v3, &v12))
      {
        self->_sourcePixelBufferAttributes = [v12 copy];
        if (self->_sourcePixelFormat)
        {
          v8 = &v11;
          if (VTSessionCopyProperty(session[0], @"FilterDestinationPixelBufferAttributes", v3, &v11))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v8 = &v12;
        }

        self->_destinationPixelBufferAttributes = [*v8 copy];
        FigCFDictionaryGetValueIfPresent();
        v6 = 1;
        if (!Mutable)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

LABEL_13:
  v6 = 0;
  if (Mutable)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (session[0])
  {
    CFRelease(session[0]);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  return v6;
}

+ (CFIndex)_loadCapabilities
{
  result = CFArrayGetCount(a1);
  if (result > 0)
  {
    CFArrayGetValueAtIndex(*a2, 0);
    if (FigCFDictionaryGetInt32IfPresent())
    {
      LODWORD(_maximumDimensions) = 0;
    }

    result = FigCFDictionaryGetInt32IfPresent();
    if (result)
    {
      v4 = 0;
      HIDWORD(_maximumDimensions) = 0;
    }

    else
    {
      v4 = HIDWORD(_maximumDimensions);
    }

    v5 = _maximumDimensions;
    if (_maximumDimensions > 0x2000 || v4 > 0x2000)
    {
      do
      {
        do
        {
          v5 >>= 1;
          v4 >>= 1;
        }

        while (v5 > 0x2000);
      }

      while (v4 > 0x2000);
      LODWORD(_maximumDimensions) = v5;
      HIDWORD(_maximumDimensions) = v4;
    }
  }

  return result;
}

@end