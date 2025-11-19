@interface RCDuplicateActivity
- (id)_systemImageName;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation RCDuplicateActivity

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DUPLICATE_MENU_ITEM" value:&stru_100295BB8 table:0];

  return v3;
}

- (id)_systemImageName
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 duplicateActivitySystemImageName];

  return v3;
}

- (void)performActivity
{
  v3 = [(RCUIActivity *)self recordingUUIDs];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
    v6 = [(RCUIActivity *)self recordingUUIDs];
    v7 = [v6 firstObject];
    v8 = [v5 duplicateRecordingWithUUID:v7];
  }

  [(RCDuplicateActivity *)self activityDidFinish:v4 == 1];
}

@end