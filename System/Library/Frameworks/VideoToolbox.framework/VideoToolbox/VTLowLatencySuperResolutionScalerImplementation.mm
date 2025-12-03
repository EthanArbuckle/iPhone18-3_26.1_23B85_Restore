@interface VTLowLatencySuperResolutionScalerImplementation
- (BOOL)processWithParams:(id)params error:(id *)error;
- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error;
- (VTLowLatencySuperResolutionScalerImplementation)init;
- (void)dealloc;
@end

@implementation VTLowLatencySuperResolutionScalerImplementation

- (VTLowLatencySuperResolutionScalerImplementation)init
{
  if (loadVCPFrameworkOnce())
  {
    v4.receiver = self;
    v4.super_class = VTLowLatencySuperResolutionScalerImplementation;
    self = [(VTLowLatencySuperResolutionScalerImplementation *)&v4 init];
    self->_vcpSuperResolutionProcessor = objc_alloc_init(NSClassFromString(&cfstr_Vcpframesuperr_0.isa));
  }

  else
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
  }

  return self;
}

- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error
{
  vcpSuperResolutionProcessor = self->_vcpSuperResolutionProcessor;
  vcpConfiguration = [configuration vcpConfiguration];

  return [(VCPFrameSuperResolutionProcessor *)vcpSuperResolutionProcessor startSessionWithConfigurationMode:vcpConfiguration error:error];
}

- (BOOL)processWithParams:(id)params error:(id *)error
{
  v7 = [objc_msgSend(params "sourceFrame")];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_msgSend(params "destinationFrame")];
  if (v9)
  {
    v10 = CFRetain(v9);
    v11 = v10;
    if (v8 && v10)
    {
      v12 = [(VCPFrameSuperResolutionProcessor *)self->_vcpSuperResolutionProcessor processWithSourceFrame:v8 destinationframe:v10 error:error];
      CFRelease(v8);
      v8 = v11;
LABEL_9:
      CFRelease(v8);
      return v12;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v12 = 0;
    v8 = v11;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencySuperResolutionScalerImplementation;
  [(VTLowLatencySuperResolutionScalerImplementation *)&v3 dealloc];
}

@end