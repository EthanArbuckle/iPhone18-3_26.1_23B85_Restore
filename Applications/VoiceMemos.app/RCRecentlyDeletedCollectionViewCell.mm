@interface RCRecentlyDeletedCollectionViewCell
- (id)accessibilityCustomActions;
- (void)_createShuttleBarIfNeeded;
@end

@implementation RCRecentlyDeletedCollectionViewCell

- (id)accessibilityCustomActions
{
  v3 = [UIAccessibilityCustomAction alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AX_ACTION_RECOVER" value:&stru_100295BB8 table:0];
  v6 = [v3 initWithName:v5 target:self selector:"performRecoverAXAction"];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (void)_createShuttleBarIfNeeded
{
  v4.receiver = self;
  v4.super_class = RCRecentlyDeletedCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v4 _createShuttleBarIfNeeded];
  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [shuttleBar setRecentlyDeleted:1];
}

@end