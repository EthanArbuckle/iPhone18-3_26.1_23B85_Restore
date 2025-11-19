@interface PrimaryInterfaceUtils
+ (PrimaryInterfaceUtils)sharedInstance;
- (BOOL)hasPrimaryInterface;
- (NSDate)estimatedInterfaceBecamePrimaryDate;
- (NSDate)interfaceBecamePrimaryDate;
- (PrimaryInterfaceUtils)init;
- (int64_t)primaryInterfaceType;
- (void)_setEstimatedInterfaceBecamePrimaryDate:(id)a3;
- (void)_setHasPrimaryInterface:(BOOL)a3;
- (void)_setInterfaceBecamePrimaryDate:(id)a3;
- (void)_setPrimaryInterfaceType:(int64_t)a3;
- (void)getDefaultPathInfoUsingSecondsSinceChange;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PrimaryInterfaceUtils

+ (PrimaryInterfaceUtils)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PrimaryInterfaceUtils sharedInstance];
  }

  v3 = sharedInstance_primaryInterfaceUtil;

  return v3;
}

uint64_t __39__PrimaryInterfaceUtils_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PrimaryInterfaceUtils);
  v1 = sharedInstance_primaryInterfaceUtil;
  sharedInstance_primaryInterfaceUtil = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PrimaryInterfaceUtils)init
{
  v6.receiver = self;
  v6.super_class = PrimaryInterfaceUtils;
  v2 = [(PrimaryInterfaceUtils *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasPrimaryInterface = 0;
    v4 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
    [v4 addObserver:v3 forKeyPath:@"path" options:7 context:0];
  }

  return v3;
}

- (void)getDefaultPathInfoUsingSecondsSinceChange
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  v4 = [v3 path];
  v5 = [v4 status];

  if (v5 == 1)
  {
    v6 = [v3 path];
    v7 = [v6 interface];
    v8 = [v7 type];

    v9 = [v3 path];
    v10 = [v9 secondsSinceInterfaceChange];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v10];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = symptomsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [InterfaceUtils stringForInterfaceType:v8];
      v18 = 138412802;
      v19 = v14;
      v20 = 2048;
      v21 = *&v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "PrimaryInterfaceUtils: Informed that interfaceType %@ became primary %.1fs ago at %@", &v18, 0x20u);
    }

    [(PrimaryInterfaceUtils *)self _setHasPrimaryInterface:(v8 & 0xFFFFFFFFFFFFFFFBLL) != 0];
    [(PrimaryInterfaceUtils *)self _setPrimaryInterfaceType:v8];
    [(PrimaryInterfaceUtils *)self _setInterfaceBecamePrimaryDate:v11];
    [(PrimaryInterfaceUtils *)self _setEstimatedInterfaceBecamePrimaryDate:v12];
  }

  else
  {
    v11 = symptomsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = [v3 path];
      v16 = [v3 path];
      v18 = 138412546;
      v19 = v15;
      v20 = 2048;
      v21 = [v16 status];
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "PrimaryInterfaceUtils: path [%@] not satisfied (%ld)", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v15 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CCA2F0];
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];

  v14 = v13 == 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 isEqualToPath:v13] ^ 1;
    }
  }

  if ([v15 isEqualToString:@"path"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & v14)
    {
      [(PrimaryInterfaceUtils *)self getDefaultPathInfoUsingSecondsSinceChange];
    }
  }
}

- (void)_setHasPrimaryInterface:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hasPrimaryInterface != v3)
  {
    [(PrimaryInterfaceUtils *)obj willChangeValueForKey:@"hasPrimaryInterface"];
    obj->_hasPrimaryInterface = v3;
    [(PrimaryInterfaceUtils *)obj didChangeValueForKey:@"hasPrimaryInterface"];
  }

  objc_sync_exit(obj);
}

- (BOOL)hasPrimaryInterface
{
  v2 = self;
  objc_sync_enter(v2);
  hasPrimaryInterface = v2->_hasPrimaryInterface;
  objc_sync_exit(v2);

  return hasPrimaryInterface;
}

- (void)_setPrimaryInterfaceType:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_primaryInterfaceType != a3)
  {
    [(PrimaryInterfaceUtils *)obj willChangeValueForKey:@"primaryInterfaceType"];
    obj->_primaryInterfaceType = a3;
    [(PrimaryInterfaceUtils *)obj didChangeValueForKey:@"primaryInterfaceType"];
  }

  objc_sync_exit(obj);
}

- (int64_t)primaryInterfaceType
{
  v2 = self;
  objc_sync_enter(v2);
  primaryInterfaceType = v2->_primaryInterfaceType;
  objc_sync_exit(v2);

  return primaryInterfaceType;
}

- (void)_setInterfaceBecamePrimaryDate:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_interfaceBecamePrimaryDate != v6)
  {
    [(PrimaryInterfaceUtils *)v5 willChangeValueForKey:@"interfaceBecamePrimaryDate"];
    objc_storeStrong(&v5->_interfaceBecamePrimaryDate, a3);
    [(PrimaryInterfaceUtils *)v5 didChangeValueForKey:@"interfaceBecamePrimaryDate"];
  }

  objc_sync_exit(v5);
}

- (NSDate)interfaceBecamePrimaryDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_interfaceBecamePrimaryDate;
  objc_sync_exit(v2);

  return v3;
}

- (void)_setEstimatedInterfaceBecamePrimaryDate:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_estimatedInterfaceBecamePrimaryDate != v6)
  {
    [(PrimaryInterfaceUtils *)v5 willChangeValueForKey:@"estimatedInterfaceBecamePrimaryDate"];
    objc_storeStrong(&v5->_estimatedInterfaceBecamePrimaryDate, a3);
    [(PrimaryInterfaceUtils *)v5 didChangeValueForKey:@"estimatedInterfaceBecamePrimaryDate"];
  }

  objc_sync_exit(v5);
}

- (NSDate)estimatedInterfaceBecamePrimaryDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_estimatedInterfaceBecamePrimaryDate;
  objc_sync_exit(v2);

  return v3;
}

@end