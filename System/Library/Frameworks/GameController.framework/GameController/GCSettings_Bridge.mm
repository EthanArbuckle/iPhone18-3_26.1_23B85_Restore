@interface GCSettings_Bridge
+ (id)gcsController_initWithController:(id)a3;
@end

@implementation GCSettings_Bridge

+ (id)gcsController_initWithController:(id)a3
{
  v3 = MEMORY[0x1E69A0728];
  v4 = a3;
  v5 = [[v3 alloc] initWithController:v4];

  return v5;
}

@end