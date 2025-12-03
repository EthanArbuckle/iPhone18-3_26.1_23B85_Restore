@interface AVTArchiverBasedStoreMigratableSource
- (AVTArchiverBasedStoreMigratableSource)initWithStoreLocation:(id)location environment:(id)environment;
- (BOOL)finalizeMigration:(id *)migration;
- (BOOL)migrationNeeded;
- (id)createSourceBackend;
- (id)migratedRecordFromRecord:(id)record index:(unint64_t)index totalCount:(unint64_t)count;
@end

@implementation AVTArchiverBasedStoreMigratableSource

- (AVTArchiverBasedStoreMigratableSource)initWithStoreLocation:(id)location environment:(id)environment
{
  locationCopy = location;
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = AVTArchiverBasedStoreMigratableSource;
  v9 = [(AVTArchiverBasedStoreMigratableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeLocation, location);
    objc_storeStrong(&v10->_environment, environment);
  }

  return v10;
}

- (BOOL)migrationNeeded
{
  storeLocation = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  v3 = [AVTArchiverBasedStorePersistence contentExistsAtLocation:storeLocation];

  return v3;
}

- (id)createSourceBackend
{
  v3 = [AVTArchiverBasedStoreBackend alloc];
  storeLocation = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  environment = [(AVTArchiverBasedStoreMigratableSource *)self environment];
  v6 = [(AVTArchiverBasedStoreBackend *)v3 initWithStoreLocation:storeLocation domainIdentifier:&stru_285387388 environment:environment];

  return v6;
}

- (id)migratedRecordFromRecord:(id)record index:(unint64_t)index totalCount:(unint64_t)count
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = -count;
  recordCopy = record;
  v9 = [v6 dateWithTimeIntervalSinceNow:v7];
  v10 = [v9 dateByAddingTimeInterval:index];
  v11 = [AVTAvatarRecord alloc];
  avatarData = [recordCopy avatarData];
  identifier = [recordCopy identifier];

  v14 = [(AVTAvatarRecord *)v11 initWithAvatarData:avatarData identifier:identifier orderDate:v10];

  return v14;
}

- (BOOL)finalizeMigration:(id *)migration
{
  storeLocation = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  LOBYTE(migration) = [AVTArchiverBasedStorePersistence removeFilesAtLocation:storeLocation error:migration];

  return migration;
}

@end