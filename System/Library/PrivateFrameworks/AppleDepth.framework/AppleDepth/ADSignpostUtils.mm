@interface ADSignpostUtils
+ (void)markEndFrame:(BOOL)frame name:(id)name mappingId:(unint64_t)id;
+ (void)markEndMeasurement;
+ (void)markStartFrame:(id)frame mappingId:(unint64_t)id;
+ (void)markStartMeasurement;
@end

@implementation ADSignpostUtils

+ (void)markEndFrame:(BOOL)frame name:(id)name mappingId:(unint64_t)id
{
  nameCopy = name;
  [nameCopy UTF8String];
  kdebug_trace();
}

+ (void)markStartFrame:(id)frame mappingId:(unint64_t)id
{
  frameCopy = frame;
  [frameCopy UTF8String];
  kdebug_trace();
}

+ (void)markEndMeasurement
{
  kdebug_trace();
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  NSLog(&cfstr_PnpMeasurement_0.isa, v2);
}

+ (void)markStartMeasurement
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  NSLog(&cfstr_PnpMeasurement.isa, v3);

  kdebug_trace();
}

@end