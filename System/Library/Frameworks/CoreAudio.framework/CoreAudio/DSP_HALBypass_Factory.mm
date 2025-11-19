@interface DSP_HALBypass_Factory
- (id)createProcessor:(id)a3 withHost:(id)a4;
@end

@implementation DSP_HALBypass_Factory

- (id)createProcessor:(id)a3 withHost:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(DSP_HALBypass_IOProcessor);
  [(DSP_HALBypass_IOProcessor *)v5 setHostCallbacks:v4];

  return v5;
}

@end