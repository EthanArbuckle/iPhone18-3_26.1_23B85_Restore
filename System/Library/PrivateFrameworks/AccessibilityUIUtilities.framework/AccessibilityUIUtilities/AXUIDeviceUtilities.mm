@interface AXUIDeviceUtilities
@end

@implementation AXUIDeviceUtilities

void __38__AXUIDeviceUtilities_setOrientation___block_invoke(uint64_t a1)
{
  v2 = GSEventCreateWithEventRecord();
  [*MEMORY[0x1E69DDA98] _handleDeviceOrientationChangedEvent:v2];
  v3 = [MEMORY[0x1E6989860] server];
  [v3 setDeviceOrientation:*(a1 + 32)];

  if (v2)
  {
    CFRelease(v2);
  }
}

@end