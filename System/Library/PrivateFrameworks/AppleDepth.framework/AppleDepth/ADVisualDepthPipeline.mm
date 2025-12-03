@interface ADVisualDepthPipeline
+ (BOOL)predictsDisparity;
+ (CGSize)povcDimensions;
+ (id)defaults;
- (ADVisualDepthPipeline)initWithMetalCommandQueue:(id)queue dimensions:(CGSize)dimensions format:(unsigned int)format;
- (void)dealloc;
@end

@implementation ADVisualDepthPipeline

- (ADVisualDepthPipeline)initWithMetalCommandQueue:(id)queue dimensions:(CGSize)dimensions format:(unsigned int)format
{
  height = dimensions.height;
  width = dimensions.width;
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v16 = 335680168;
  v17 = 0u;
  v18 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v20 = queueCopy;
      v21 = 2048;
      v22 = width;
      v23 = 2048;
      v24 = height;
      v9 = MEMORY[0x277D86220];
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v9, v10, "initialized visual depth pipeline with cmdQueue %p, dimensions: (%f,%f)", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v20 = queueCopy;
    v21 = 2048;
    v22 = width;
    v23 = 2048;
    v24 = height;
    v9 = MEMORY[0x277D86220];
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  v15.receiver = self;
  v15.super_class = ADVisualDepthPipeline;
  v11 = [(ADVisualDepthPipeline *)&v15 init];
  if (v11)
  {
    v12 = objc_opt_new();
    pipelineParameters = v11->_pipelineParameters;
    v11->_pipelineParameters = v12;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "visual depth not supported in this build", buf, 2u);
    }
  }

  kdebug_trace();

  return 0;
}

- (void)dealloc
{
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth pipeline deallocated", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "visual depth pipeline deallocated", buf, 2u);
  }

  v3.receiver = self;
  v3.super_class = ADVisualDepthPipeline;
  [(ADVisualDepthPipeline *)&v3 dealloc];
}

+ (CGSize)povcDimensions
{
  v2 = 160.0;
  v3 = 128.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)predictsDisparity
{
  v2 = +[ADVisualDepthPipeline defaults];
  v3 = [v2 BOOLForKey:kADDeviceConfigurationKeyVisualDepthOutputDisparity];

  return v3;
}

+ (id)defaults
{
  v7[5] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6[0] = kADDeviceConfigurationKeyVisualDepthOutputDisparity;
    v6[1] = kADDeviceConfigurationKeyVisualDepthFovScale;
    v7[0] = &unk_28524A908;
    v7[1] = &unk_28524AAC8;
    v6[2] = kADDeviceConfigurationKeyVisualDepthMeshRenderRatio;
    v6[3] = kADDeviceConfigurationKeyVisualDepthOcclusionScale;
    v7[2] = &unk_28524A908;
    v7[3] = &unk_28524AAD8;
    v6[4] = kADDeviceConfigurationKeyVisualDepthMinLevel;
    v7[4] = &unk_28524A920;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];
    +[ADVisualDepthPipeline defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[154];

  return v3;
}

@end