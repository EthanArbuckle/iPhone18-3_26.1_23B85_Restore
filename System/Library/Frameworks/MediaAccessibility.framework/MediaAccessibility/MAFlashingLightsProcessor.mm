@interface MAFlashingLightsProcessor
- (BOOL)canProcessSurface:(IOSurfaceRef)surface;
- (MAFlashingLightsProcessor)init;
- (MAFlashingLightsProcessorResult)processSurface:(IOSurfaceRef)inSurface outSurface:(IOSurfaceRef)outSurface timestamp:(CFAbsoluteTime)timestamp options:(NSDictionary *)options;
@end

@implementation MAFlashingLightsProcessor

- (MAFlashingLightsProcessor)init
{
  v7.receiver = self;
  v7.super_class = MAFlashingLightsProcessor;
  v2 = [(MAFlashingLightsProcessor *)&v7 init];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getPSEVideoProcessorClass_softClass;
  v12 = getPSEVideoProcessorClass_softClass;
  if (!getPSEVideoProcessorClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPSEVideoProcessorClass_block_invoke;
    v8[3] = &unk_1E7A93FF8;
    v8[4] = &v9;
    __getPSEVideoProcessorClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = objc_alloc_init(v3);
  [(MAFlashingLightsProcessor *)v2 setPse:v5];

  return v2;
}

- (BOOL)canProcessSurface:(IOSurfaceRef)surface
{
  v4 = [(MAFlashingLightsProcessor *)self pse];
  LOBYTE(surface) = [v4 canProcessSurface:surface];

  return surface;
}

- (MAFlashingLightsProcessorResult)processSurface:(IOSurfaceRef)inSurface outSurface:(IOSurfaceRef)outSurface timestamp:(CFAbsoluteTime)timestamp options:(NSDictionary *)options
{
  v10 = options;
  v11 = [(MAFlashingLightsProcessor *)self pse];
  v12 = [v11 canProcessSurface:inSurface];

  if (v12)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v13 = [(MAFlashingLightsProcessor *)self pse:MEMORY[0x1E69E9820]];
    [v13 setValidationCallback:&v20];

    v14 = [(NSDictionary *)v10 mutableCopy];
    if (!v14)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v14 setObject:&unk_1F264CFF8 forKeyedSubscript:@"sourceSurfaceEDR"];
    [v14 setObject:&unk_1F264CFF8 forKeyedSubscript:@"displayEDRFactor"];
    [v14 setObject:&unk_1F264D008 forKeyedSubscript:@"displayMaxNits"];
    v15 = [(MAFlashingLightsProcessor *)self pse];
    [v15 processSourceSurface:inSurface withTimestamp:outSurface toDestinationSurface:v14 options:timestamp];

    v16 = objc_opt_new();
    [v16 setSurfaceProcessed:1];
    v17 = v26[3];
    *&v17 = v17;
    [v16 setIntensityLevel:v17];
    v18 = v22[3];
    *&v18 = v18;
    [v16 setMitigationLevel:v18];

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

uint64_t __73__MAFlashingLightsProcessor_processSurface_outSurface_timestamp_options___block_invoke(uint64_t result, double a2, double a3, double a4)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = a4;
  return result;
}

@end