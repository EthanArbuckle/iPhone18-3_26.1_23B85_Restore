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
  duplicateActivitySystemImageName = [v2 duplicateActivitySystemImageName];

  return duplicateActivitySystemImageName;
}

- (void)performActivity
{
  recordingUUIDs = [(RCUIActivity *)self recordingUUIDs];
  v4 = [recordingUUIDs count];

  if (v4 == 1)
  {
    v5 = +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
    recordingUUIDs2 = [(RCUIActivity *)self recordingUUIDs];
    firstObject = [recordingUUIDs2 firstObject];
    v8 = [v5 duplicateRecordingWithUUID:firstObject];
  }

  [(RCDuplicateActivity *)self activityDidFinish:v4 == 1];
}

@end