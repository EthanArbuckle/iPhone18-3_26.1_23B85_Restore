@interface DSP_HALBypass_Factory
- (id)createProcessor:(id)processor withHost:(id)host;
@end

@implementation DSP_HALBypass_Factory

- (id)createProcessor:(id)processor withHost:(id)host
{
  hostCopy = host;
  v5 = objc_alloc_init(DSP_HALBypass_IOProcessor);
  [(DSP_HALBypass_IOProcessor *)v5 setHostCallbacks:hostCopy];

  return v5;
}

@end