@interface MTEpisodeManifest
+ (void)createManifestForActivity:(id)activity completion:(id)completion;
+ (void)episodeUuidForActivity:(id)activity completion:(id)completion;
- (MTEpisodeManifest)initWithEpisodeUuid:(id)uuid;
- (id)activity;
@end

@implementation MTEpisodeManifest

- (MTEpisodeManifest)initWithEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    v5 = [NSFetchRequest alloc];
    v6 = [v5 initWithEntityName:kMTEpisodeEntityName];
    v7 = [MTEpisode predicateForEpisodeUuid:uuidCopy];
    [v6 setPredicate:v7];

    [v6 setSortDescriptors:&__NSArray0__struct];
    v13.receiver = self;
    v13.super_class = MTEpisodeManifest;
    v8 = [(MTPredicateManifest *)&v13 initWithInitialEpisodeUuid:uuidCopy fetchRequest:v6];
    v9 = v8;
    if (v8)
    {
      activity = [(MTEpisodeManifest *)v8 activity];
      [activity setValue:uuidCopy forKey:@"MTEpisodeManifestEpisodeUuid"];
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)episodeUuidForActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  userInfo = [activityCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"MTEpisodeManifestEpisodeUuid"];

  if ([v9 length] && (+[MTEpisode exists:](MTEpisode, "exists:", v9) & 1) != 0)
  {
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___MTEpisodeManifest;
    objc_msgSendSuper2(&v10, "episodeUuidForActivity:completion:", activityCopy, completionCopy);
  }
}

- (id)activity
{
  v4.receiver = self;
  v4.super_class = MTEpisodeManifest;
  activity = [(MTPlayerManifest *)&v4 activity];

  return activity;
}

+ (void)createManifestForActivity:(id)activity completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006C8C4;
  v7[3] = &unk_1004D9220;
  completionCopy = completion;
  v6 = completionCopy;
  [self episodeUuidForActivity:activity completion:v7];
}

@end