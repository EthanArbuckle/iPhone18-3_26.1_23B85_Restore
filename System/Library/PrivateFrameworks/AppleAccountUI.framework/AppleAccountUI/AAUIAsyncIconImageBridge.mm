@interface AAUIAsyncIconImageBridge
+ (id)hostingControllerWithIcon:(id)icon size:(CGSize)size;
@end

@implementation AAUIAsyncIconImageBridge

+ (id)hostingControllerWithIcon:(id)icon size:(CGSize)size
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](icon);
  swift_getObjCClassMetadata();
  v7 = static AsyncIconImageBridge.hostingController(icon:size:)(icon, size.width, size.height);
  MEMORY[0x1E69E5920](icon);

  return v7;
}

@end