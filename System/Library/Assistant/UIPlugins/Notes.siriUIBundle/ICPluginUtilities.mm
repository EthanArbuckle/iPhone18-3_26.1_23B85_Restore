@interface ICPluginUtilities
+ (void)setupNoteContextWithOptions:(unint64_t)options;
@end

@implementation ICPluginUtilities

+ (void)setupNoteContextWithOptions:(unint64_t)options
{
  [ICNoteContext startSharedContextWithOptions:options];
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_93D8;
  v6[3] = &unk_18600;
  v7 = managedObjectContext;
  v5 = managedObjectContext;
  [v5 performBlockAndWait:v6];
}

@end