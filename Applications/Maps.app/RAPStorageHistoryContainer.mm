@interface RAPStorageHistoryContainer
+ (id)directionsRecordingStorage;
+ (id)searchRecordingStorage;
@end

@implementation RAPStorageHistoryContainer

+ (id)searchRecordingStorage
{
  if (qword_10195F900 != -1)
  {
    dispatch_once(&qword_10195F900, &stru_10165FAB8);
  }

  v3 = qword_10195F8F8;

  return v3;
}

+ (id)directionsRecordingStorage
{
  if (qword_10195F8F0 != -1)
  {
    dispatch_once(&qword_10195F8F0, &stru_10165FA98);
  }

  v3 = qword_10195F8E8;

  return v3;
}

@end