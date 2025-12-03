@interface MTListenNowManifest
+ (void)createManifestForActivity:(id)activity completion:(id)completion;
- (void)nextManifest:(id)manifest;
@end

@implementation MTListenNowManifest

- (void)nextManifest:(id)manifest
{
  manifestCopy = manifest;
  if (manifestCopy)
  {
    v5 = +[MTListenNowManager sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100128128;
    v6[3] = &unk_1004DC940;
    v6[4] = self;
    v7 = manifestCopy;
    [v5 results:v6];
  }
}

+ (void)createManifestForActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v9 = [userInfo valueForKey:@"MTPodcastManifestActivitySectionType"];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100128870;
  v12[3] = &unk_1004DA248;
  v13 = v9;
  v14 = completionCopy;
  v10 = v9;
  v11 = completionCopy;
  [self episodeUuidForActivity:activityCopy completion:v12];
}

@end