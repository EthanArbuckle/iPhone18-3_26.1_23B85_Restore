@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___INHServing];
  [v5 setClass:objc_opt_class() forSelector:"loadDataImageForImage:scaledWidth:scaledHeight:usingPortableImageLoader:completion:" argumentIndex:0 ofReply:0];
  [v5 setClass:objc_opt_class() forSelector:"loadDataImageForImage:scaledWidth:scaledHeight:usingPortableImageLoader:completion:" argumentIndex:0 ofReply:1];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v5 setClasses:v7 forSelector:"loadDataImageForImage:scaledWidth:scaledHeight:usingPortableImageLoader:completion:" argumentIndex:1 ofReply:0];

  [v5 setClass:objc_opt_class() forSelector:"fetchShareExtensionIntentForExtensionContextUUID:completion:" argumentIndex:0 ofReply:0];
  [v5 setClass:objc_opt_class() forSelector:"fetchShareExtensionIntentForExtensionContextUUID:completion:" argumentIndex:0 ofReply:1];
  [v5 setClass:objc_opt_class() forSelector:"storeUserContext:forBundleIdentifier:" argumentIndex:0 ofReply:0];
  [v5 setClass:objc_opt_class() forSelector:"filePathForImage:usingPortableImageLoader:completion:" argumentIndex:0 ofReply:0];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  [v5 setClasses:v9 forSelector:"filePathForImage:usingPortableImageLoader:completion:" argumentIndex:1 ofReply:0];

  [v4 setExportedInterface:v5];
  v10 = [[INHService alloc] initWithServingConnection:v4];
  [v4 setExportedObject:v10];
  [v4 resume];

  return 1;
}

@end