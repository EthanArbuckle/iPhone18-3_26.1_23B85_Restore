@interface GCSettings_Bridge
+ (id)gcsController_initWithController:(id)controller;
@end

@implementation GCSettings_Bridge

+ (id)gcsController_initWithController:(id)controller
{
  v3 = MEMORY[0x1E69A0728];
  controllerCopy = controller;
  v5 = [[v3 alloc] initWithController:controllerCopy];

  return v5;
}

@end