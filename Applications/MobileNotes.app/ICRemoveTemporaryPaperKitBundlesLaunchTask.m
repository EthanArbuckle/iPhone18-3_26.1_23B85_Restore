@interface ICRemoveTemporaryPaperKitBundlesLaunchTask
- (ICRemoveTemporaryPaperKitBundlesLaunchTask)init;
- (void)runOneTimeLaunchTask;
@end

@implementation ICRemoveTemporaryPaperKitBundlesLaunchTask

- (void)runOneTimeLaunchTask
{
  v2 = self;
  sub_1002CBAAC();
}

- (ICRemoveTemporaryPaperKitBundlesLaunchTask)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICRemoveTemporaryPaperKitBundlesLaunchTask *)&v3 init];
}

@end