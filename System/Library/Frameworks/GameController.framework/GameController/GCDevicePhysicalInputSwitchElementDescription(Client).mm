@interface GCDevicePhysicalInputSwitchElementDescription(Client)
- (id)makeParameters;
@end

@implementation GCDevicePhysicalInputSwitchElementDescription(Client)

- (id)makeParameters
{
  v10.receiver = self;
  v10.super_class = &off_1F4EAA278;
  v2 = objc_msgSendSuper2(&v10, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  sources = [self sources];
  v6 = [v3 setWithArray:sources];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 48);
  }

  isSequential = [self isSequential];
  if (v2)
  {
    *(v2 + 40) = isSequential;
    *(v2 + 41) = [self canWrap];
    *(v2 + 8) = [self positionRange];
    *(v2 + 9) = v8;
    *(v2 + 7) = [self eventPositionField];
  }

  else
  {
    [self canWrap];
    [self positionRange];
    [self eventPositionField];
  }

  return v2;
}

@end