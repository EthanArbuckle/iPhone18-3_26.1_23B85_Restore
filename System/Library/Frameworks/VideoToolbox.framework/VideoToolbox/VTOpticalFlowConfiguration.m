@interface VTOpticalFlowConfiguration
+ (NSIndexSet)supportedRevisions;
+ (int64_t)defaultRevision;
- (VTOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6;
- (void)dealloc;
@end

@implementation VTOpticalFlowConfiguration

- (VTOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce())
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_9:

    return 0;
  }

  v20.receiver = self;
  v20.super_class = VTOpticalFlowConfiguration;
  self = [(VTOpticalFlowConfiguration *)&v20 init];
  if (!self)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_9;
  }

  v11 = [objc_alloc(NSClassFromString(&cfstr_Veopticalflowc.isa)) initWithFrameWidth:a3 frameHeight:a4 qualityPrioritization:a5 revision:a6];
  self->_veConfiguration = v11;
  if (!v11)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_9;
  }

  self->_frameSupportedPixelFormats = [-[VEOpticalFlowConfiguration framePreferredPixelFormats](v11 "framePreferredPixelFormats")];
  self->_flowPixelFormat = [(VEOpticalFlowConfiguration *)self->_veConfiguration flowBufferPixelFormat];
  self->_frameWidth = a3;
  self->_frameHeight = a4;
  self->_qualityPrioritization = a5;
  self->_revision = a6;
  v12 = *MEMORY[0x1E6966130];
  v26[0] = self->_frameSupportedPixelFormats;
  v13 = *MEMORY[0x1E6966208];
  v23[0] = v12;
  v23[1] = v13;
  v26[1] = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v24 = *MEMORY[0x1E69660B8];
  v14 = v24;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v25 = *MEMORY[0x1E69660D8];
  v16 = v25;
  v17 = MEMORY[0x1E695E0F8];
  v26[2] = v15;
  v26[3] = MEMORY[0x1E695E0F8];
  self->_sourcePixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v23 count:{4), "copy"}];
  v21[0] = v12;
  v22[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VEOpticalFlowConfiguration flowBufferPixelFormat](self->_veConfiguration, "flowBufferPixelFormat")}];
  v21[1] = v13;
  v22[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VEOpticalFlowConfiguration flowBufferWidth](self->_veConfiguration, "flowBufferWidth")}];
  v21[2] = v14;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VEOpticalFlowConfiguration flowBufferHeight](self->_veConfiguration, "flowBufferHeight")}];
  v21[3] = v16;
  v22[2] = v18;
  v22[3] = v17;
  self->_destinationPixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{4), "copy"}];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTOpticalFlowConfiguration;
  [(VTOpticalFlowConfiguration *)&v3 dealloc];
}

+ (int64_t)defaultRevision
{
  if (loadVEFrameworkOnce())
  {
    v2 = NSClassFromString(&cfstr_Veopticalflowc.isa);

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
    result = [NSClassFromString(&cfstr_Veopticalflowc.isa) supportedRevisions];
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