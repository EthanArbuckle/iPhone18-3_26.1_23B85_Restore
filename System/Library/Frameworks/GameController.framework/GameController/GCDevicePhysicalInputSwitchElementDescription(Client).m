@interface GCDevicePhysicalInputSwitchElementDescription(Client)
- (id)makeParameters;
@end

@implementation GCDevicePhysicalInputSwitchElementDescription(Client)

- (id)makeParameters
{
  v10.receiver = a1;
  v10.super_class = &off_1F4EAA278;
  v2 = objc_msgSendSuper2(&v10, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a1 sources];
  v6 = [v3 setWithArray:v4];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 48);
  }

  v7 = [a1 isSequential];
  if (v2)
  {
    *(v2 + 40) = v7;
    *(v2 + 41) = [a1 canWrap];
    *(v2 + 8) = [a1 positionRange];
    *(v2 + 9) = v8;
    *(v2 + 7) = [a1 eventPositionField];
  }

  else
  {
    [a1 canWrap];
    [a1 positionRange];
    [a1 eventPositionField];
  }

  return v2;
}

@end