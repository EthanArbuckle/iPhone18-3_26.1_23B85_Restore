@interface CDCloudSyncVersions
- (CDCloudSyncVersions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSPersistentHistoryToken)historyToken;
- (id)mutableCopy;
- (void)setHistoryToken:(id)token;
@end

@implementation CDCloudSyncVersions

- (id)mutableCopy
{
  v3 = objc_allocWithZone(type metadata accessor for CDMutableCloudSyncVersions());
  selfCopy = self;

  return sub_1E788(selfCopy, v3);
}

- (NSPersistentHistoryToken)historyToken
{
  selfCopy = self;
  v3 = sub_1CD10();

  return v3;
}

- (void)setHistoryToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_1CFB8(token);
}

- (CDCloudSyncVersions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CDCloudSyncVersions();
  return [(CDCloudSyncVersions *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end