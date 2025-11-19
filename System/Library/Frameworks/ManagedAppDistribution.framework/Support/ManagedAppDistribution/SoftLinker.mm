@interface SoftLinker
+ (void)fetchMediaAPIMetadataForItemID:(id)a3 versionID:(id)a4 distributorID:(id)a5 completion:(id)a6;
+ (void)notifyOfGameCenterEnabledAppInstall:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation SoftLinker

+ (void)notifyOfGameCenterEnabledAppInstall:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  [v7 gameCenterEnabledGameInstalled:v5 withCompletionHandler:v6];
}

+ (void)fetchMediaAPIMetadataForItemID:(id)a3 versionID:(id)a4 distributorID:(id)a5 completion:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001EB2EC;
  v13[3] = &unk_100756CE0;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = v17;
  v10 = v16;
  v11 = v15;
  v12 = v14;
  dispatch_async(&_dispatch_main_q, v13);
}

@end