@interface AVTArchiverBasedStoreMigratableSource
- (AVTArchiverBasedStoreMigratableSource)initWithStoreLocation:(id)a3 environment:(id)a4;
- (BOOL)finalizeMigration:(id *)a3;
- (BOOL)migrationNeeded;
- (id)createSourceBackend;
- (id)migratedRecordFromRecord:(id)a3 index:(unint64_t)a4 totalCount:(unint64_t)a5;
@end

@implementation AVTArchiverBasedStoreMigratableSource

- (AVTArchiverBasedStoreMigratableSource)initWithStoreLocation:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTArchiverBasedStoreMigratableSource;
  v9 = [(AVTArchiverBasedStoreMigratableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeLocation, a3);
    objc_storeStrong(&v10->_environment, a4);
  }

  return v10;
}

- (BOOL)migrationNeeded
{
  v2 = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  v3 = [AVTArchiverBasedStorePersistence contentExistsAtLocation:v2];

  return v3;
}

- (id)createSourceBackend
{
  v3 = [AVTArchiverBasedStoreBackend alloc];
  v4 = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  v5 = [(AVTArchiverBasedStoreMigratableSource *)self environment];
  v6 = [(AVTArchiverBasedStoreBackend *)v3 initWithStoreLocation:v4 domainIdentifier:&stru_285387388 environment:v5];

  return v6;
}

- (id)migratedRecordFromRecord:(id)a3 index:(unint64_t)a4 totalCount:(unint64_t)a5
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = -a5;
  v8 = a3;
  v9 = [v6 dateWithTimeIntervalSinceNow:v7];
  v10 = [v9 dateByAddingTimeInterval:a4];
  v11 = [AVTAvatarRecord alloc];
  v12 = [v8 avatarData];
  v13 = [v8 identifier];

  v14 = [(AVTAvatarRecord *)v11 initWithAvatarData:v12 identifier:v13 orderDate:v10];

  return v14;
}

- (BOOL)finalizeMigration:(id *)a3
{
  v4 = [(AVTArchiverBasedStoreMigratableSource *)self storeLocation];
  LOBYTE(a3) = [AVTArchiverBasedStorePersistence removeFilesAtLocation:v4 error:a3];

  return a3;
}

@end