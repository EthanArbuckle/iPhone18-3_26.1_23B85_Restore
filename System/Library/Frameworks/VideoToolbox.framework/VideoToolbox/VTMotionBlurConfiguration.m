@interface VTMotionBlurConfiguration
+ (NSIndexSet)supportedRevisions;
+ (int64_t)defaultRevision;
- (VTMotionBlurConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7;
- (void)dealloc;
@end

@implementation VTMotionBlurConfiguration

- (VTMotionBlurConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7
{
  v9 = a5;
  v29[4] = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce())
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_9:

    return 0;
  }

  v23.receiver = self;
  v23.super_class = VTMotionBlurConfiguration;
  self = [(VTMotionBlurConfiguration *)&v23 init];
  if (!self)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_9;
  }

  v13 = [objc_alloc(NSClassFromString(&cfstr_Vemotionblurco.isa)) initWithFrameWidth:a3 frameHeight:a4 usePrecomputedFlow:v9 qualityPrioritization:a6 revision:a7];
  self->_veConfiguration = v13;
  if (!v13)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_9;
  }

  self->_frameWidth = a3;
  self->_frameHeight = a4;
  self->_usePrecomputedFlow = v9;
  self->_qualityPrioritization = a6;
  self->_revision = a7;
  v14 = [-[VEMotionBlurConfiguration framePreferredPixelFormats](v13 "framePreferredPixelFormats")];
  self->_frameSupportedPixelFormats = v14;
  v15 = *MEMORY[0x1E6966130];
  v29[0] = v14;
  v16 = *MEMORY[0x1E6966208];
  v26[0] = v15;
  v26[1] = v16;
  v29[1] = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v27 = *MEMORY[0x1E69660B8];
  v17 = v27;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v28 = *MEMORY[0x1E69660D8];
  v19 = v28;
  v20 = MEMORY[0x1E695E0F8];
  v29[2] = v18;
  v29[3] = MEMORY[0x1E695E0F8];
  self->_sourcePixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v26 count:{4), "copy"}];
  v25[0] = self->_frameSupportedPixelFormats;
  v24[0] = v15;
  v24[1] = v16;
  v25[1] = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v24[2] = v17;
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v24[3] = v19;
  v25[2] = v21;
  v25[3] = v20;
  self->_destinationPixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{4), "copy"}];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTMotionBlurConfiguration;
  [(VTMotionBlurConfiguration *)&v3 dealloc];
}

+ (int64_t)defaultRevision
{
  if (loadVEFrameworkOnce())
  {
    v2 = NSClassFromString(&cfstr_Vemotionblurco.isa);

    return [(objc_class *)v2 defaultRevision];
  }

  else
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
    return 0;
  }
}

+ (NSIndexSet)supportedRevisions
{
  if (loadVEFrameworkOnce())
  {
    result = [NSClassFromString(&cfstr_Vemotionblurco.isa) supportedRevisions];
    if (result)
    {
      return result;
    }
  }

  else
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
  }

  v3 = MEMORY[0x1E696AC90];

  return objc_alloc_init(v3);
}

@end