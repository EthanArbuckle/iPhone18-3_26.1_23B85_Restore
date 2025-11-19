@interface SKInstallSheetStatusUpdateRequest
- (SKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)a3 isInstallSheetOpen:(BOOL)a4 completionHandler:(id)a5;
- (void)start;
@end

@implementation SKInstallSheetStatusUpdateRequest

- (SKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)a3 isInstallSheetOpen:(BOOL)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
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

  return sub_1B2515C28(v7, v9, a4, v11, v10);
}

- (void)start
{
  v2 = self;
  sub_1B2515DB4();
}

@end