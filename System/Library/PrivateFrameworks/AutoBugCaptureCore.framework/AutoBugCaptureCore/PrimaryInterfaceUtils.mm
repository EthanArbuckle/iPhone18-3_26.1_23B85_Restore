@interface PrimaryInterfaceUtils
+ (PrimaryInterfaceUtils)sharedInstance;
- (BOOL)hasPrimaryInterface;
- (NSDate)estimatedInterfaceBecamePrimaryDate;
- (NSDate)interfaceBecamePrimaryDate;
- (PrimaryInterfaceUtils)init;
- (int64_t)primaryInterfaceType;
- (void)_setEstimatedInterfaceBecamePrimaryDate:(id)date;
- (void)_setHasPrimaryInterface:(BOOL)interface;
- (void)_setInterfaceBecamePrimaryDate:(id)date;
- (void)_setPrimaryInterfaceType:(int64_t)type;
- (void)getDefaultPathInfoUsingSecondsSinceChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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
    mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
    [mEMORY[0x277CD9200] addObserver:v3 forKeyPath:@"path" options:7 context:0];
  }

  return v3;
}

- (void)getDefaultPathInfoUsingSecondsSinceChange
{
  v24 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];
  status = [path status];

  if (status == 1)
  {
    path2 = [mEMORY[0x277CD9200] path];
    interface = [path2 interface];
    type = [interface type];

    path3 = [mEMORY[0x277CD9200] path];
    secondsSinceInterfaceChange = [path3 secondsSinceInterfaceChange];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-secondsSinceInterfaceChange];
    date = [MEMORY[0x277CBEAA8] date];
    v13 = symptomsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [InterfaceUtils stringForInterfaceType:type];
      v18 = 138412802;
      v19 = v14;
      v20 = 2048;
      status2 = *&secondsSinceInterfaceChange;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "PrimaryInterfaceUtils: Informed that interfaceType %@ became primary %.1fs ago at %@", &v18, 0x20u);
    }

    [(PrimaryInterfaceUtils *)self _setHasPrimaryInterface:(type & 0xFFFFFFFFFFFFFFFBLL) != 0];
    [(PrimaryInterfaceUtils *)self _setPrimaryInterfaceType:type];
    [(PrimaryInterfaceUtils *)self _setInterfaceBecamePrimaryDate:v11];
    [(PrimaryInterfaceUtils *)self _setEstimatedInterfaceBecamePrimaryDate:date];
  }

  else
  {
    v11 = symptomsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      path4 = [mEMORY[0x277CD9200] path];
      path5 = [mEMORY[0x277CD9200] path];
      v18 = 138412546;
      v19 = path4;
      v20 = 2048;
      status2 = [path5 status];
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "PrimaryInterfaceUtils: path [%@] not satisfied (%ld)", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v10 = *MEMORY[0x277CCA2F0];
  changeCopy = change;
  v12 = [changeCopy objectForKeyedSubscript:v10];
  v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];

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

  if ([pathCopy isEqualToString:@"path"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & v14)
    {
      [(PrimaryInterfaceUtils *)self getDefaultPathInfoUsingSecondsSinceChange];
    }
  }
}

- (void)_setHasPrimaryInterface:(BOOL)interface
{
  interfaceCopy = interface;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hasPrimaryInterface != interfaceCopy)
  {
    [(PrimaryInterfaceUtils *)obj willChangeValueForKey:@"hasPrimaryInterface"];
    obj->_hasPrimaryInterface = interfaceCopy;
    [(PrimaryInterfaceUtils *)obj didChangeValueForKey:@"hasPrimaryInterface"];
  }

  objc_sync_exit(obj);
}

- (BOOL)hasPrimaryInterface
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasPrimaryInterface = selfCopy->_hasPrimaryInterface;
  objc_sync_exit(selfCopy);

  return hasPrimaryInterface;
}

- (void)_setPrimaryInterfaceType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_primaryInterfaceType != type)
  {
    [(PrimaryInterfaceUtils *)obj willChangeValueForKey:@"primaryInterfaceType"];
    obj->_primaryInterfaceType = type;
    [(PrimaryInterfaceUtils *)obj didChangeValueForKey:@"primaryInterfaceType"];
  }

  objc_sync_exit(obj);
}

- (int64_t)primaryInterfaceType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  primaryInterfaceType = selfCopy->_primaryInterfaceType;
  objc_sync_exit(selfCopy);

  return primaryInterfaceType;
}

- (void)_setInterfaceBecamePrimaryDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_interfaceBecamePrimaryDate != dateCopy)
  {
    [(PrimaryInterfaceUtils *)selfCopy willChangeValueForKey:@"interfaceBecamePrimaryDate"];
    objc_storeStrong(&selfCopy->_interfaceBecamePrimaryDate, date);
    [(PrimaryInterfaceUtils *)selfCopy didChangeValueForKey:@"interfaceBecamePrimaryDate"];
  }

  objc_sync_exit(selfCopy);
}

- (NSDate)interfaceBecamePrimaryDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_interfaceBecamePrimaryDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setEstimatedInterfaceBecamePrimaryDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_estimatedInterfaceBecamePrimaryDate != dateCopy)
  {
    [(PrimaryInterfaceUtils *)selfCopy willChangeValueForKey:@"estimatedInterfaceBecamePrimaryDate"];
    objc_storeStrong(&selfCopy->_estimatedInterfaceBecamePrimaryDate, date);
    [(PrimaryInterfaceUtils *)selfCopy didChangeValueForKey:@"estimatedInterfaceBecamePrimaryDate"];
  }

  objc_sync_exit(selfCopy);
}

- (NSDate)estimatedInterfaceBecamePrimaryDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_estimatedInterfaceBecamePrimaryDate;
  objc_sync_exit(selfCopy);

  return v3;
}

@end