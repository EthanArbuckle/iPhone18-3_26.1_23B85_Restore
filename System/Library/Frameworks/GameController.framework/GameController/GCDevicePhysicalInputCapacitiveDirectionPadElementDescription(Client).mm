@interface GCDevicePhysicalInputCapacitiveDirectionPadElementDescription(Client)
- (void)makeParameters;
@end

@implementation GCDevicePhysicalInputCapacitiveDirectionPadElementDescription(Client)

- (void)makeParameters
{
  v9.receiver = a1;
  v9.super_class = &off_1F4EABE90;
  v2 = objc_msgSendSuper2(&v9, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a1 touchedSources];
  v6 = [v3 setWithArray:v4];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 152);
  }

  v7 = [a1 eventTouchedValueField];
  if (v2)
  {
    v2[20] = v7;
  }

  return v2;
}

@end