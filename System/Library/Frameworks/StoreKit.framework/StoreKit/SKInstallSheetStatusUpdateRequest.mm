@interface SKInstallSheetStatusUpdateRequest
- (SKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)id isInstallSheetOpen:(BOOL)open completionHandler:(id)handler;
- (void)start;
@end

@implementation SKInstallSheetStatusUpdateRequest

- (SKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)id isInstallSheetOpen:(BOOL)open completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1B256D9BC();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v11 = sub_1B25170F0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  return sub_1B2515C28(v7, v9, open, v11, v10);
}

- (void)start
{
  selfCopy = self;
  sub_1B2515DB4();
}

@end