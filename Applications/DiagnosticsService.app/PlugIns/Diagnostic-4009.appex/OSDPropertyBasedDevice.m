@interface OSDPropertyBasedDevice
- (BOOL)setProperty:(__CFString *)a3 BOOLean:(BOOL)a4 error:(id *)a5;
- (BOOL)setProperty:(__CFString *)a3 value:(void *)a4 error:(id *)a5;
- (id)copyProperty:(__CFString *)a3 error:(id *)a4;
- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4;
- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4;
- (void)backingRef;
@end

@implementation OSDPropertyBasedDevice

- (BOOL)setProperty:(__CFString *)a3 value:(void *)a4 error:(id *)a5
{
  if (![(OSDPropertyBasedDevice *)self backingRef])
  {
    [OSDError setError:a5 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> No backing reference!", self, v11, v12, v13];
    return 0;
  }

  v9 = [(OSDPropertyBasedDevice *)self backingSetProperty:a3 value:a4];
  if (v9)
  {
    [OSDError setError:a5 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:v9 format:@"%@ >> Error %d (0x%08x) setting property '%@'!", self, v9, v9, a3];
    return 0;
  }

  return 1;
}

- (BOOL)setProperty:(__CFString *)a3 BOOLean:(BOOL)a4 error:(id *)a5
{
  v5 = &kCFBooleanTrue;
  if (!a4)
  {
    v5 = &kCFBooleanFalse;
  }

  return [(OSDPropertyBasedDevice *)self setProperty:a3 value:*v5 error:a5];
}

- (id)copyProperty:(__CFString *)a3 error:(id *)a4
{
  v9 = 0;
  if ([(OSDPropertyBasedDevice *)self backingRef])
  {
    v7 = [(OSDPropertyBasedDevice *)self backingCopyProperty:a3 dest:&v9];
    if (v7)
    {
      [OSDError setError:a4 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:self format:v7, v7, a3];
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
    [OSDError setError:a4 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> No backing ref!", self];
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

- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v4];

  return 1;
}

- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v4];

  return 1;
}

@end