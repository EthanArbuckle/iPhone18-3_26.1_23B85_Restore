@interface VTSuperResolutionScalerConfiguration
+ (NSIndexSet)supportedRevisions;
+ (int64_t)defaultRevision;
- (VTSuperResolutionScalerConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9;
- (float)configurationModelPercentageAvailable;
- (int64_t)configurationModelStatus;
- (void)dealloc;
- (void)downloadConfigurationModelWithCompletionHandler:(id)a3;
@end

@implementation VTSuperResolutionScalerConfiguration

- (VTSuperResolutionScalerConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9
{
  v10 = a7;
  v32[4] = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce())
  {
    v16 = 0;
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_11:

    return 0;
  }

  v16 = +[VTSuperResolutionScalerConfiguration supportedScaleFactors];
  if (!-[NSArray containsObject:](v16, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:a5]))
  {
    NSLog(&cfstr_UnsupportedSca.isa);
    goto LABEL_11;
  }

  v26.receiver = self;
  v26.super_class = VTSuperResolutionScalerConfiguration;
  self = [(VTSuperResolutionScalerConfiguration *)&v26 init];
  if (!self)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_11;
  }

  v17 = [objc_alloc(NSClassFromString(&cfstr_Vesuperresolut.isa)) initWithFrameWidth:a3 frameHeight:a4 scaleFactor:a5 inputType:a6 usePrecomputedFlow:v10 qualityPrioritization:a8 revision:a9];
  self->_veConfiguration = v17;
  if (!v17)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_11;
  }

  self->_frameWidth = a3;
  self->_frameHeight = a4;
  self->_precomputedFlow = v10;
  self->_qualityPrioritization = a8;
  self->_revision = a9;
  self->_inputType = a6;
  self->_scaleFactor = a5;
  v18 = [-[VESuperResolutionConfiguration framePreferredPixelFormats](v17 "framePreferredPixelFormats")];
  self->_frameSupportedPixelFormats = v18;
  v19 = *MEMORY[0x1E6966130];
  v32[0] = v18;
  v20 = *MEMORY[0x1E6966208];
  v29[0] = v19;
  v29[1] = v20;
  v32[1] = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v30 = *MEMORY[0x1E69660B8];
  v21 = v30;
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v31 = *MEMORY[0x1E69660D8];
  v23 = v31;
  v32[2] = v22;
  v32[3] = MEMORY[0x1E695E0F8];
  self->_sourcePixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v29 count:{4), "copy"}];
  v28[0] = self->_frameSupportedPixelFormats;
  v27[0] = v19;
  v27[1] = v20;
  v28[1] = [MEMORY[0x1E696AD98] numberWithInteger:a5 * a3];
  v27[2] = v21;
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:a5 * a4];
  v27[3] = v23;
  v28[2] = v24;
  v28[3] = MEMORY[0x1E695E0F8];
  self->_destinationPixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{4), "copy"}];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTSuperResolutionScalerConfiguration;
  [(VTSuperResolutionScalerConfiguration *)&v3 dealloc];
}

- (int64_t)configurationModelStatus
{
  v2 = [(VESuperResolutionConfiguration *)self->_veConfiguration getAssetStatusWithPercentCompleted:0];
  if (v2 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 1);
  }
}

- (float)configurationModelPercentageAvailable
{
  v3 = 0;
  [(VESuperResolutionConfiguration *)self->_veConfiguration getAssetStatusWithPercentCompleted:&v3];
  return v3 / 100.0;
}

- (void)downloadConfigurationModelWithCompletionHandler:(id)a3
{
  veConfiguration = self->_veConfiguration;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__VTSuperResolutionScalerConfiguration_downloadConfigurationModelWithCompletionHandler___block_invoke;
  v4[3] = &unk_1E72C8EA0;
  v4[4] = a3;
  [(VESuperResolutionConfiguration *)veConfiguration downloadAssetWithCompletionHandler:v4];
}

uint64_t __88__VTSuperResolutionScalerConfiguration_downloadConfigurationModelWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"VTFrameProcessorErrorDomain" code:-19743 userInfo:0];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (int64_t)defaultRevision
{
  if (loadVEFrameworkOnce())
  {
    v2 = NSClassFromString(&cfstr_Vesuperresolut.isa);

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
    result = [NSClassFromString(&cfstr_Vesuperresolut.isa) supportedRevisions];
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