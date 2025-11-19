@interface ADSignpostUtils
+ (void)markEndFrame:(BOOL)a3 name:(id)a4 mappingId:(unint64_t)a5;
+ (void)markEndMeasurement;
+ (void)markStartFrame:(id)a3 mappingId:(unint64_t)a4;
+ (void)markStartMeasurement;
@end

@implementation ADSignpostUtils

+ (void)markEndFrame:(BOOL)a3 name:(id)a4 mappingId:(unint64_t)a5
{
  v5 = a4;
  [v5 UTF8String];
  kdebug_trace();
}

+ (void)markStartFrame:(id)a3 mappingId:(unint64_t)a4
{
  v4 = a3;
  [v4 UTF8String];
  kdebug_trace();
}

+ (void)markEndMeasurement
{
  kdebug_trace();
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 systemUptime];
  NSLog(&cfstr_PnpMeasurement_0.isa, v2);
}

+ (void)markStartMeasurement
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  NSLog(&cfstr_PnpMeasurement.isa, v3);

  kdebug_trace();
}

@end