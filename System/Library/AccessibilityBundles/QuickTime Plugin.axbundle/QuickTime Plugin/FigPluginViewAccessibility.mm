@interface FigPluginViewAccessibility
- (void)webPlugInStart;
@end

@implementation FigPluginViewAccessibility

- (void)webPlugInStart
{
  v5.receiver = self;
  v5.super_class = FigPluginViewAccessibility;
  [(FigPluginViewAccessibility *)&v5 webPlugInStart];
  v2 = *MEMORY[0x29EDC75E8];
  LODWORD(v3) = 1.0;
  v4 = [MEMORY[0x29EDBA070] numberWithFloat:v3];
  UIAccessibilityPostNotification(v2, v4);
}

@end