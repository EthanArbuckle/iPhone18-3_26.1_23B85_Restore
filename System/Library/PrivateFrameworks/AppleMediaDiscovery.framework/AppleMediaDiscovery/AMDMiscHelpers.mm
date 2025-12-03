@interface AMDMiscHelpers
+ (BOOL)createOrMoveSymbolicLinkAtURL:(id)l toDestinationURL:(id)rL;
+ (BOOL)ensureDir:(id)dir removeIfExists:(BOOL)exists;
+ (BOOL)isValidDSID:(id)d;
+ (id)convertDataArrayToBase64StringArray:(id)array;
+ (id)extractPECSimilarityScores:(id)scores error:(id *)error;
+ (id)getCurrentEpochSeconds;
+ (id)logAndCreateError:(int64_t)error errorMessage:(id)message;
+ (id)sortArrayElements:(id)elements inDescendingOrder:(BOOL)order withComparisonKey:(id)key isKeyString:(BOOL)string;
+ (void)AMDInitialize:(id)initialize;
+ (void)AMDPerformCleanup;
+ (void)printInput:(id)input withRawData:(void *)data withType:(int64_t)type andSize:(int)size;
+ (void)setAppStoreDirAttributes;
@end

@implementation AMDMiscHelpers

+ (void)setAppStoreDirAttributes
{
  v3 = &setAppStoreDirAttributes_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_2);
  if (*v3 != -1)
  {
    dispatch_once(v3, location);
  }

  objc_storeStrong(&location, 0);
}

void __42__AMDMiscHelpers_setAppStoreDirAttributes__block_invoke(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v19[0] URLsForDirectory:14 inDomains:?];
  v18 = [v5 lastObject];
  MEMORY[0x277D82BD8](v5);
  v17 = 0;
  v6 = v18;
  v21 = *MEMORY[0x277CBE878];
  v22[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v15 = v17;
  v8 = [v6 setResourceValues:? error:?];
  objc_storeStrong(&v17, v15);
  MEMORY[0x277D82BD8](v7);
  v16 = v8;
  if ((v8 & 1) != 0 && !v17)
  {
    v11 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v10 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v1 = v11;
      v2 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_240CB9000, v1, v2, "Set NSURLIsExcludedFromBackupKey on root directory", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v17 localizedDescription];
    v14 = [v3 stringWithFormat:@"Failed to set NSURLIsExcludedFromBackupKey flag: %@", v4];
    MEMORY[0x277D82BD8](v4);
    v13 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v14);
      _os_log_error_impl(&dword_240CB9000, v13, v12, "%@", v20, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    [AMDFrameworkMetrics log:v14 withKey:@"SetAppStoreDirAttributesError" atVerbosity:0];
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

+ (BOOL)ensureDir:(id)dir removeIfExists:(BOOL)exists
{
  v34 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dir);
  existsCopy = exists;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  path = [location[0] path];
  if (([defaultManager fileExistsAtPath:path isDirectory:&v24] & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!existsCopy)
  {
    v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_4_0(v33, path, v24 & 1);
      _os_log_debug_impl(&dword_240CB9000, v22, v21, "Existing %@, is-directory: %d", v33, 0x12u);
    }

    objc_storeStrong(&v22, 0);
    v28 = v24 & 1;
    v20 = 1;
    goto LABEL_24;
  }

  v19 = 0;
  v18 = 0;
  v6 = [defaultManager removeItemAtURL:location[0] error:&v18];
  objc_storeStrong(&v19, v18);
  if ((v6 & 1) != 0 && !v19)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v31, path);
      _os_log_debug_impl(&dword_240CB9000, oslog, v14, "Removed dir %@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v20 = 0;
  }

  else
  {
    v17 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v32, path, v19);
      _os_log_error_impl(&dword_240CB9000, v17, v16, "Could not remove existing dir %@, %@", v32, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    v28 = 1;
    v20 = 1;
  }

  objc_storeStrong(&v19, 0);
  if (!v20)
  {
LABEL_15:
    v13 = 0;
    obj = 0;
    v5 = [defaultManager createDirectoryAtURL:location[0] withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong(&v13, obj);
    v12 = v5;
    if ((v5 & 1) != 0 && !v13)
    {
      v8 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v29, path);
        _os_log_debug_impl(&dword_240CB9000, v8, OS_LOG_TYPE_DEBUG, "Created dir %@", v29, 0xCu);
      }

      objc_storeStrong(&v8, 0);
      v28 = 1;
      v20 = 1;
    }

    else
    {
      v10 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v30, path, v13);
        _os_log_error_impl(&dword_240CB9000, v10, v9, "Could not create dir %@, %@", v30, 0x16u);
      }

      objc_storeStrong(&v10, 0);
      v28 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v13, 0);
  }

LABEL_24:
  objc_storeStrong(&path, 0);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v28 & 1;
}

+ (BOOL)createOrMoveSymbolicLinkAtURL:(id)l toDestinationURL:(id)rL
{
  v47 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v40 = 0;
  objc_storeStrong(&v40, rL);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v19 = defaultManager;
  path = [location[0] path];
  v36 = v38;
  v20 = [v19 attributesOfItemAtPath:? error:?];
  objc_storeStrong(&v38, v36);
  v37 = v20;
  MEMORY[0x277D82BD8](path);
  if (v20 && !v38)
  {
    v14 = defaultManager;
    path2 = [location[0] path];
    v35 = v38;
    v16 = [v14 removeItemAtPath:? error:?];
    objc_storeStrong(&v38, v35);
    v17 = 1;
    if (v16)
    {
      v17 = v38 != 0;
    }

    MEMORY[0x277D82BD8](path2);
    if (v17)
    {
      v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v33 = 16;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        type = v33;
        path3 = [location[0] path];
        v32 = MEMORY[0x277D82BE0](path3);
        __os_log_helper_16_2_2_8_64_8_64(v46, v32, v38);
        _os_log_error_impl(&dword_240CB9000, log, type, "Could not remove existing link %@, %@", v46, 0x16u);
        MEMORY[0x277D82BD8](path3);
        objc_storeStrong(&v32, 0);
      }

      objc_storeStrong(&v34, 0);
      v42 = 0;
      v31 = 1;
      goto LABEL_21;
    }

    v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v29 = 2;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v8 = v30;
      v9 = v29;
      path4 = [location[0] path];
      v28 = MEMORY[0x277D82BE0](path4);
      __os_log_helper_16_2_1_8_64(v45, v28);
      _os_log_debug_impl(&dword_240CB9000, v8, v9, "Removed existing link %@", v45, 0xCu);
      MEMORY[0x277D82BD8](path4);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
  }

  v27 = v38;
  [defaultManager createSymbolicLinkAtURL:location[0] withDestinationURL:v40 error:&v27];
  objc_storeStrong(&v38, v27);
  objc_storeStrong(&v38, 0);
  v5 = defaultManager;
  path5 = [location[0] path];
  v25 = v38;
  v6 = [v5 attributesOfItemAtPath:? error:?];
  objc_storeStrong(&v38, v25);
  v26 = v6;
  MEMORY[0x277D82BD8](path5);
  if (v6 && !v38)
  {
    v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v43, location[0], v40);
      _os_log_debug_impl(&dword_240CB9000, v22, OS_LOG_TYPE_DEBUG, "Created link %@ to %@", v43, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    v42 = 1;
    v31 = 1;
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v44, location[0], v40, v38);
      _os_log_error_impl(&dword_240CB9000, oslog, v23, "Could not create symbolic link %@ to %@, %@", v44, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v42 = 0;
    v31 = 1;
  }

  objc_storeStrong(&v26, 0);
LABEL_21:
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v42 & 1;
}

+ (void)printInput:(id)input withRawData:(void *)data withType:(int64_t)type andSize:(int)size
{
  v36 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  dataCopy = data;
  typeCopy = type;
  sizeCopy = size;
  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
  v29 = 0;
  if (type == 65600)
  {
    objc_storeStrong(&v29, @"double");
    v28 = dataCopy;
    for (i = 0; i < sizeCopy; ++i)
    {
      v26 = *v28++;
      v11 = v30;
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [v11 addObject:?];
      MEMORY[0x277D82BD8](v12);
    }

LABEL_16:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature name: %@, type: %@, value: %@", location[0], v29, v30];
    [AMDPerf log:v16 atLevel:3];
    objc_storeStrong(&v16, 0);
    v17 = 0;
    goto LABEL_17;
  }

  if (typeCopy == 65568)
  {
    objc_storeStrong(&v29, @"float");
    v25 = dataCopy;
    for (j = 0; j < sizeCopy; ++j)
    {
      v23 = *v25;
      v25 = (v25 + 4);
      v9 = v30;
      LODWORD(v6) = v23;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v9 addObject:?];
      MEMORY[0x277D82BD8](v10);
    }

    goto LABEL_16;
  }

  if (typeCopy == 131104)
  {
    objc_storeStrong(&v29, @"int");
    v22 = dataCopy;
    for (k = 0; k < sizeCopy; ++k)
    {
      v20 = *v22;
      v22 = (v22 + 4);
      v7 = v30;
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v20];
      [v7 addObject:?];
      MEMORY[0x277D82BD8](v8);
    }

    goto LABEL_16;
  }

  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_8_0(v35, typeCopy);
    _os_log_error_impl(&dword_240CB9000, oslog, type, "Unsupported Input Data Type: %ld", v35, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v17 = 1;
LABEL_17:
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (BOOL)isValidDSID:(id)d
{
  v6 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  [location[0] longLongValue];
  v5 = 1;
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v5 & 1;
}

+ (void)AMDInitialize:(id)initialize
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, initialize);
  v10 = [location[0] objectForKey:@"disableCoreData"];
  if (v10)
  {
    v4 = [v10 intValue] != 0;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;
  if (!v4)
  {
    v3 = +[AMDCoreDataPersistentContainer sharedContainer];
    getManagedObjectContext = [v3 getManagedObjectContext];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&getManagedObjectContext, 0);
  }

  v7 = +[AMDSQLite allocSharedInstance];
  v5 = [location[0] objectForKey:0x2852A90A8];
  v6 = v5 == 0;
  [v7 setEnable:v5 == 0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

+ (void)AMDPerformCleanup
{
  v15[2] = self;
  v15[1] = a2;
  v15[0] = +[AMDSQLite getSharedInstance];
  if ([v15[0] getDb])
  {
    v10 = sqlite3_close([v15[0] getDb]);
    if (v10)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQL Connection could not be closed with error code: %u", v10];
      [AMDFrameworkMetrics log:v6 withKey:@"AMDCleanupFailed" atVerbosity:0];
      objc_storeStrong(&v6, 0);
    }

    else
    {
      v9 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v8 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v2 = v9;
        v3 = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_impl(&dword_240CB9000, v2, v3, "SQL Connection closed successfully", v7, 2u);
      }

      objc_storeStrong(&v9, 0);
      [AMDFrameworkMetrics log:@"SQL connection closed" withKey:@"AMDCleanupSuccess" atVerbosity:0];
    }

    v11 = 0;
  }

  else
  {
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v13 = 1;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      log = location;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_240CB9000, log, type, "Nil SQL database connection", v12, 2u);
    }

    objc_storeStrong(&location, 0);
    [AMDFrameworkMetrics log:@"SQL database unusable" withKey:@"AMDCleanupFailed" atVerbosity:0];
    v11 = 1;
  }

  objc_storeStrong(v15, 0);
}

+ (id)logAndCreateError:(int64_t)error errorMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9 = a2;
  errorCopy = error;
  location = 0;
  objc_storeStrong(&location, message);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v11, location);
    _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "%@", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [AMDError allocError:errorCopy withMessage:location];
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getCurrentEpochSeconds
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277CBEAA8] date];
  [v5[0] timeIntervalSince1970];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2];
  objc_storeStrong(v5, 0);

  return v4;
}

+ (id)sortArrayElements:(id)elements inDescendingOrder:(BOOL)order withComparisonKey:(id)key isKeyString:(BOOL)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  orderCopy = order;
  v27 = 0;
  objc_storeStrong(&v27, key);
  stringCopy = string;
  v22[0] = 0;
  v22[1] = v22;
  v23 = 0x20000000;
  v24 = 32;
  stringCopy2 = string;
  v18[0] = 0;
  v18[1] = v18;
  v19 = 0x20000000;
  v20 = 32;
  v21 = orderCopy;
  v11 = location[0];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __84__AMDMiscHelpers_sortArrayElements_inDescendingOrder_withComparisonKey_isKeyString___block_invoke;
  v16 = &unk_278CB5E60;
  v17[1] = v18;
  v17[0] = MEMORY[0x277D82BE0](v27);
  v17[2] = v22;
  v7 = [v11 sortedArrayUsingComparator:&v12];
  objc_storeStrong(v17, 0);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v22, 8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);

  return v7;
}

uint64_t __84__AMDMiscHelpers_sortArrayElements_inDescendingOrder_withComparisonKey_isKeyString___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = 0;
  v12 = 0;
  if (*(*(a1[5] + 8) + 24))
  {
    v3 = [v14 objectForKey:a1[4]];
    v4 = v13[0];
    v13[0] = v3;
    MEMORY[0x277D82BD8](v4);
    v5 = [location[0] objectForKey:a1[4]];
  }

  else
  {
    v7 = [location[0] objectForKey:a1[4]];
    v8 = v13[0];
    v13[0] = v7;
    MEMORY[0x277D82BD8](v8);
    v5 = [v14 objectForKey:a1[4]];
  }

  v6 = v12;
  v12 = v5;
  MEMORY[0x277D82BD8](v6);
  v16 = [v13[0] compare:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

+ (id)convertDataArrayToBase64StringArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  if (location[0])
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v7);
        v11 = [v13 base64EncodedStringWithOptions:0];
        [v14 addObject:v11];
        objc_storeStrong(&v11, 0);
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    v15 = 0;
    MEMORY[0x277D82BD8](obj);
    if (!v15)
    {
      v17 = MEMORY[0x277D82BE0](v14);
      v15 = 1;
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v17 = 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v17;

  return v3;
}

+ (id)extractPECSimilarityScores:(id)scores error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scores);
  errorCopy = error;
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](location[0]);
      v21 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
      if (v21)
      {
        v17 = *__b[2];
        v18 = 0;
        v19 = v21;
        while (1)
        {
          v16 = v18;
          if (*__b[2] != v17)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(__b[1] + 8 * v18);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v9 = v25;
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v27, "identifier")}];
          [v9 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v10);
          v12 = v25;
          v11 = MEMORY[0x277CCABB0];
          [v27 score];
          v13 = [v11 numberWithFloat:?];
          [v12 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v13);
          metadata = [v27 metadata];
          MEMORY[0x277D82BD8](metadata);
          if (metadata)
          {
            metadata2 = [v27 metadata];
            v24 = [metadata2 base64EncodedStringWithOptions:0];
            MEMORY[0x277D82BD8](metadata2);
            [v25 setObject:v24 forKey:@"metadata"];
            objc_storeStrong(&v24, 0);
          }

          [v28 addObject:v25];
          objc_storeStrong(&v25, 0);
          ++v18;
          if (v16 + 1 >= v19)
          {
            v18 = 0;
            v19 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
            if (!v19)
            {
              goto LABEL_15;
            }
          }
        }

        v15 = [AMDError allocError:14 withMessage:@"score not an instance of CMLSimilarityScore"];
        v5 = v15;
        *errorCopy = v15;
        v32 = 0;
        v29 = 1;
      }

      else
      {
LABEL_15:
        v29 = 0;
      }

      MEMORY[0x277D82BD8](obj);
      if (!v29)
      {
        v32 = MEMORY[0x277D82BE0](v28);
        v29 = 1;
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v22 = [AMDError allocError:14 withMessage:@"similarityScoresArray not an instance of NSArray"];
      v4 = v22;
      *errorCopy = v22;
      v32 = 0;
      v29 = 1;
    }
  }

  else
  {
    v32 = 0;
    v29 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v32;

  return v6;
}

@end