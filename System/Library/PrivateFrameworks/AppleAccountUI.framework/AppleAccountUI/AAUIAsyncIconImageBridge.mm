@interface AAUIAsyncIconImageBridge
+ (id)hostingControllerWithIcon:(id)a3 size:(CGSize)a4;
@end

@implementation AAUIAsyncIconImageBridge

+ (id)hostingControllerWithIcon:(id)a3 size:(CGSize)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v7 = static AsyncIconImageBridge.hostingController(icon:size:)(a3, a4.width, a4.height);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

@end