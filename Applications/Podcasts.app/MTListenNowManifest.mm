@interface MTListenNowManifest
+ (void)createManifestForActivity:(id)a3 completion:(id)a4;
- (void)nextManifest:(id)a3;
@end

@implementation MTListenNowManifest

- (void)nextManifest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[MTListenNowManager sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100128128;
    v6[3] = &unk_1004DC940;
    v6[4] = self;
    v7 = v4;
    [v5 results:v6];
  }
}

+ (void)createManifestForActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 userInfo];
  v9 = [v8 valueForKey:@"MTPodcastManifestActivitySectionType"];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100128870;
  v12[3] = &unk_1004DA248;
  v13 = v9;
  v14 = v6;
  v10 = v9;
  v11 = v6;
  [a1 episodeUuidForActivity:v7 completion:v12];
}

@end