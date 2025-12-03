@interface RCFavoriteActionActivity
- (BOOL)isAlreadyFavorite;
- (id)_systemImageName;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation RCFavoriteActionActivity

- (id)activityTitle
{
  isAlreadyFavorite = [(RCFavoriteActionActivity *)self isAlreadyFavorite];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (isAlreadyFavorite)
  {
    v5 = @"REMOVE_FROM_FAVORITES";
  }

  else
  {
    v5 = @"ADD_TO_FAVORITES";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100295BB8 table:0];

  return v6;
}

- (id)_systemImageName
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 favoriteActivitySystemImageName:{-[RCFavoriteActionActivity isAlreadyFavorite](self, "isAlreadyFavorite")}];

  return v4;
}

- (void)performActivity
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  LODWORD(defaultSceneDelegate) = [(RCFavoriteActionActivity *)self isAlreadyFavorite];
  recordingUUIDs = [(RCUIActivity *)self recordingUUIDs];
  [mainViewController setFavorite:defaultSceneDelegate ^ 1 forRecordingsWithUUIDs:recordingUUIDs];

  [(RCFavoriteActionActivity *)self activityDidFinish:1];
}

- (BOOL)isAlreadyFavorite
{
  +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DB54;
  v5[3] = &unk_10028AFE8;
  v3 = v8 = &v9;
  v6 = v3;
  selfCopy = self;
  [v3 performBlockAndWait:v5];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

@end