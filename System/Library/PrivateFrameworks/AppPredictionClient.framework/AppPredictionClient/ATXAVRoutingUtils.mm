@interface ATXAVRoutingUtils
+ (BOOL)isTVExperienceAppWithBundleId:(id)id;
@end

@implementation ATXAVRoutingUtils

+ (BOOL)isTVExperienceAppWithBundleId:(id)id
{
  idCopy = id;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getAVSystemControllerClass_softClass;
  v13 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getAVSystemControllerClass_block_invoke;
    v9[3] = &unk_1E80C0758;
    v9[4] = &v10;
    __getAVSystemControllerClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  sharedAVSystemController = [v4 sharedAVSystemController];
  v7 = [sharedAVSystemController hasRouteSharingPolicyLongFormVideo:idCopy];

  return v7;
}

@end