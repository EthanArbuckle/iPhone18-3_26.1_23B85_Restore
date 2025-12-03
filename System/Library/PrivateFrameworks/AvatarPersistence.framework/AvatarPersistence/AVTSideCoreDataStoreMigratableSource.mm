@interface AVTSideCoreDataStoreMigratableSource
- (AVTSideCoreDataStoreMigratableSource)initWithConfiguration:(id)configuration environment:(id)environment;
- (BOOL)finalizeMigration:(id *)migration;
- (BOOL)migrationNeeded;
- (id)createSourceBackend;
@end

@implementation AVTSideCoreDataStoreMigratableSource

- (AVTSideCoreDataStoreMigratableSource)initWithConfiguration:(id)configuration environment:(id)environment
{
  configurationCopy = configuration;
  environmentCopy = environment;
  v12.receiver = self;
  v12.super_class = AVTSideCoreDataStoreMigratableSource;
  v9 = [(AVTSideCoreDataStoreMigratableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_environment, environment);
  }

  return v10;
}

- (id)createSourceBackend
{
  v3 = [AVTCoreDataStoreBackend alloc];
  configuration = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  environment = [(AVTSideCoreDataStoreMigratableSource *)self environment];
  v6 = [(AVTCoreDataStoreBackend *)v3 initWithConfiguration:configuration environment:environment];

  return v6;
}

- (BOOL)finalizeMigration:(id *)migration
{
  configuration = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  LOBYTE(migration) = [configuration tearDownAndEraseAllContent:migration];

  return migration;
}

- (BOOL)migrationNeeded
{
  configuration = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  contentExists = [configuration contentExists];

  return contentExists;
}

@end