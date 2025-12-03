@interface OSDPropertyBasedDevice
- (BOOL)setProperty:(__CFString *)property BOOLean:(BOOL)lean error:(id *)error;
- (BOOL)setProperty:(__CFString *)property value:(void *)value error:(id *)error;
- (id)copyProperty:(__CFString *)property error:(id *)error;
- (int)backingCopyProperty:(__CFString *)property dest:(const void *)dest;
- (int)backingSetProperty:(__CFString *)property value:(void *)value;
- (void)backingRef;
@end

@implementation OSDPropertyBasedDevice

- (BOOL)setProperty:(__CFString *)property value:(void *)value error:(id *)error
{
  if (![(OSDPropertyBasedDevice *)self backingRef])
  {
    [OSDError setError:error withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> No backing reference!", self, v11, v12, v13];
    return 0;
  }

  v9 = [(OSDPropertyBasedDevice *)self backingSetProperty:property value:value];
  if (v9)
  {
    [OSDError setError:error withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:v9 format:@"%@ >> Error %d (0x%08x) setting property '%@'!", self, v9, v9, property];
    return 0;
  }

  return 1;
}

- (BOOL)setProperty:(__CFString *)property BOOLean:(BOOL)lean error:(id *)error
{
  v5 = &kCFBooleanTrue;
  if (!lean)
  {
    v5 = &kCFBooleanFalse;
  }

  return [(OSDPropertyBasedDevice *)self setProperty:property value:*v5 error:error];
}

- (id)copyProperty:(__CFString *)property error:(id *)error
{
  v9 = 0;
  if ([(OSDPropertyBasedDevice *)self backingRef])
  {
    v7 = [(OSDPropertyBasedDevice *)self backingCopyProperty:property dest:&v9];
    if (v7)
    {
      [OSDError setError:error withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:self format:v7, v7, property];
      result = 0;
      v9 = 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    [OSDError setError:error withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> No backing ref!", self];
    return 0;
  }

  return result;
}

- (void)backingRef
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];

  return 0;
}

- (int)backingSetProperty:(__CFString *)property value:(void *)value
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v4];

  return 1;
}

- (int)backingCopyProperty:(__CFString *)property dest:(const void *)dest
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v4];

  return 1;
}

@end