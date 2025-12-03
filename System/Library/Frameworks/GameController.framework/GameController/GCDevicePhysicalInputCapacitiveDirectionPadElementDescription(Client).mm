@interface GCDevicePhysicalInputCapacitiveDirectionPadElementDescription(Client)
- (void)makeParameters;
@end

@implementation GCDevicePhysicalInputCapacitiveDirectionPadElementDescription(Client)

- (void)makeParameters
{
  v9.receiver = self;
  v9.super_class = &off_1F4EABE90;
  v2 = objc_msgSendSuper2(&v9, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  touchedSources = [self touchedSources];
  v6 = [v3 setWithArray:touchedSources];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 152);
  }

  eventTouchedValueField = [self eventTouchedValueField];
  if (v2)
  {
    v2[20] = eventTouchedValueField;
  }

  return v2;
}

@end