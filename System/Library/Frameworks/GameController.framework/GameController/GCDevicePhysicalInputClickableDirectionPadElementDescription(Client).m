@interface GCDevicePhysicalInputClickableDirectionPadElementDescription(Client)
- (void)makeParameters;
@end

@implementation GCDevicePhysicalInputClickableDirectionPadElementDescription(Client)

- (void)makeParameters
{
  v9.receiver = a1;
  v9.super_class = &off_1F4EAAA38;
  v2 = objc_msgSendSuper2(&v9, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a1 pressedSources];
  v6 = [v3 setWithArray:v4];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 136);
  }

  v7 = [a1 eventPressedValueField];
  if (v2)
  {
    v2[18] = v7;
  }

  return v2;
}

@end