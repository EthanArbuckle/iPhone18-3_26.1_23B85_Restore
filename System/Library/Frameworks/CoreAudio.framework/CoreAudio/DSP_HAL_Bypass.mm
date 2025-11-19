@interface DSP_HAL_Bypass
- (id)createFactory;
@end

@implementation DSP_HAL_Bypass

- (id)createFactory
{
  v2 = objc_alloc_init(DSP_HALBypass_Factory);

  return v2;
}

@end