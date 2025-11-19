@interface AVTSideCoreDataStoreMigratableSource
- (AVTSideCoreDataStoreMigratableSource)initWithConfiguration:(id)a3 environment:(id)a4;
- (BOOL)finalizeMigration:(id *)a3;
- (BOOL)migrationNeeded;
- (id)createSourceBackend;
@end

@implementation AVTSideCoreDataStoreMigratableSource

- (AVTSideCoreDataStoreMigratableSource)initWithConfiguration:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTSideCoreDataStoreMigratableSource;
  v9 = [(AVTSideCoreDataStoreMigratableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_environment, a4);
  }

  return v10;
}

- (id)createSourceBackend
{
  v3 = [AVTCoreDataStoreBackend alloc];
  v4 = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  v5 = [(AVTSideCoreDataStoreMigratableSource *)self environment];
  v6 = [(AVTCoreDataStoreBackend *)v3 initWithConfiguration:v4 environment:v5];

  return v6;
}

- (BOOL)finalizeMigration:(id *)a3
{
  v4 = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  LOBYTE(a3) = [v4 tearDownAndEraseAllContent:a3];

  return a3;
}

- (BOOL)migrationNeeded
{
  v2 = [(AVTSideCoreDataStoreMigratableSource *)self configuration];
  v3 = [v2 contentExists];

  return v3;
}

@end