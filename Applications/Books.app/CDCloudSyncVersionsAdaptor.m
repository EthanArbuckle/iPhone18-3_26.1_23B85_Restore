@interface CDCloudSyncVersionsAdaptor
- (NSPersistentHistoryToken)historyToken;
- (NSString)dataType;
@end

@implementation CDCloudSyncVersionsAdaptor

- (NSString)dataType
{
  sub_10000E3E8(self->cdVersions, *&self->cdVersions[24]);

  sub_100799864();

  v2 = sub_1007A2214();

  return v2;
}

- (NSPersistentHistoryToken)historyToken
{
  sub_10000E3E8(self->cdVersions, *&self->cdVersions[24]);

  v2 = sub_100799854();

  return v2;
}

@end