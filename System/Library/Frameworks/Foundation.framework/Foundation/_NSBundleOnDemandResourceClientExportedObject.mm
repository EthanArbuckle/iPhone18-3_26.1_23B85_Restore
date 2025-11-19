@interface _NSBundleOnDemandResourceClientExportedObject
- (void)sendLowDiskSpaceNotification;
@end

@implementation _NSBundleOnDemandResourceClientExportedObject

- (void)sendLowDiskSpaceNotification
{
  v2 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v2 postNotificationName:@"NSBundleResourceRequestLowDiskSpaceNotification" object:0];
}

@end