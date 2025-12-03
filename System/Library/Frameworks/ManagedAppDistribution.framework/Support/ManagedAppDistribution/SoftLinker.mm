@interface SoftLinker
+ (void)fetchMediaAPIMetadataForItemID:(id)d versionID:(id)iD distributorID:(id)distributorID completion:(id)completion;
+ (void)notifyOfGameCenterEnabledAppInstall:(id)install withCompletionHandler:(id)handler;
@end

@implementation SoftLinker

+ (void)notifyOfGameCenterEnabledAppInstall:(id)install withCompletionHandler:(id)handler
{
  installCopy = install;
  handlerCopy = handler;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v7 = qword_10078B110;
  v13 = qword_10078B110;
  if (!qword_10078B110)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001ECF68;
    v9[3] = &unk_100756D08;
    v9[4] = &v10;
    sub_1001ECF68(v9);
    v7 = v11[3];
  }

  v8 = v7;
  _Block_object_dispose(&v10, 8);
  [v7 gameCenterEnabledGameInstalled:installCopy withCompletionHandler:handlerCopy];
}

+ (void)fetchMediaAPIMetadataForItemID:(id)d versionID:(id)iD distributorID:(id)distributorID completion:(id)completion
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001EB2EC;
  v13[3] = &unk_100756CE0;
  dCopy = d;
  iDCopy = iD;
  distributorIDCopy = distributorID;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = distributorIDCopy;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

@end