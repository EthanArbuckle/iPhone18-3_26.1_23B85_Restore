@interface CDCloudSyncVersions
- (CDCloudSyncVersions)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (NSPersistentHistoryToken)historyToken;
- (id)mutableCopy;
- (void)setHistoryToken:(id)a3;
@end

@implementation CDCloudSyncVersions

- (id)mutableCopy
{
  v3 = objc_allocWithZone(type metadata accessor for CDMutableCloudSyncVersions());
  v4 = self;

  return sub_1E788(v4, v3);
}

- (NSPersistentHistoryToken)historyToken
{
  v2 = self;
  v3 = sub_1CD10();

  return v3;
}

- (void)setHistoryToken:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1CFB8(a3);
}

- (CDCloudSyncVersions)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CDCloudSyncVersions();
  return [(CDCloudSyncVersions *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end