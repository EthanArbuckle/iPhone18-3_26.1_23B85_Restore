@interface ASCloudKitServerChangeTokenCache
+ (id)changeTokenCacheFromUserDefaultsWithSerialQueue:(id)queue cloudType:(unint64_t)type;
+ (id)databaseDefaultsKeyForCloudType:(unint64_t)type;
+ (id)timestampDefaultsKeyForCloudType:(unint64_t)type;
+ (id)zoneDefaultsKeyForCloudType:(unint64_t)type;
- (ASCloudKitServerChangeTokenCache)initWithSerialQueue:(id)queue cloudType:(unint64_t)type;
- (BOOL)isExpired;
- (id)copyWithZone:(_NSZone *)zone;
- (id)emptyCopy;
- (id)fetchDateForRecordZoneID:(id)d;
- (id)serverChangeTokenForDatabase:(id)database;
- (id)serverChangeTokenForRecordZoneID:(id)d;
- (void)persistToUserDefaults;
- (void)setExpired:(BOOL)expired;
- (void)setFetchDate:(id)date forRecordZoneID:(id)d;
- (void)setServerChangeToken:(id)token forDatabase:(id)database;
- (void)setServerChangeToken:(id)token forRecordZoneID:(id)d;
@end

@implementation ASCloudKitServerChangeTokenCache

+ (id)changeTokenCacheFromUserDefaultsWithSerialQueue:(id)queue cloudType:(unint64_t)type
{
  queueCopy = queue;
  v6 = [objc_alloc(objc_opt_class()) initWithSerialQueue:queueCopy cloudType:type];

  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v9 = [ASCloudKitServerChangeTokenCache databaseDefaultsKeyForCloudType:type];
  v10 = [v8 dictionaryForKey:v9];

  v11 = [ASCloudKitServerChangeTokenCache zoneDefaultsKeyForCloudType:type];
  v12 = [v8 dictionaryForKey:v11];

  v13 = [v8 dictionaryForKey:*MEMORY[0x277CE9200]];
  v14 = _MapDataToChangeTokens(v10);
  v15 = v6[1];
  v6[1] = v14;

  v16 = _MapDataToChangeTokens(v12);
  v17 = v6[2];
  v6[2] = v16;

  v18 = [v13 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v21 = v6[5];
  v6[5] = v20;

  v22 = [ASCloudKitServerChangeTokenCache timestampDefaultsKeyForCloudType:type];
  [v8 doubleForKey:v22];
  v6[3] = v23;

  return v6;
}

+ (id)databaseDefaultsKeyForCloudType:(unint64_t)type
{
  v3 = MEMORY[0x277CE92F0];
  if (type != 1)
  {
    v3 = MEMORY[0x277CE91E0];
  }

  return *v3;
}

+ (id)zoneDefaultsKeyForCloudType:(unint64_t)type
{
  v3 = MEMORY[0x277CE9320];
  if (type != 1)
  {
    v3 = MEMORY[0x277CE9338];
  }

  return *v3;
}

+ (id)timestampDefaultsKeyForCloudType:(unint64_t)type
{
  v3 = MEMORY[0x277CE92E8];
  if (type != 1)
  {
    v3 = MEMORY[0x277CE91B8];
  }

  return *v3;
}

- (ASCloudKitServerChangeTokenCache)initWithSerialQueue:(id)queue cloudType:(unint64_t)type
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ASCloudKitServerChangeTokenCache;
  v8 = [(ASCloudKitServerChangeTokenCache *)&v17 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    databaseChangeTokensByDatabaseScope = v8->_databaseChangeTokensByDatabaseScope;
    v8->_databaseChangeTokensByDatabaseScope = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    zoneChangeTokensByZoneID = v8->_zoneChangeTokensByZoneID;
    v8->_zoneChangeTokensByZoneID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    zoneFetchDateByZoneID = v8->_zoneFetchDateByZoneID;
    v8->_zoneFetchDateByZoneID = dictionary2;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8->_timestamp = v15;
    objc_storeStrong(&v8->_serialQueue, queue);
    v8->_cloudType = type;
  }

  return v8;
}

- (id)emptyCopy
{
  v2 = [[ASCloudKitServerChangeTokenCache alloc] initWithSerialQueue:self->_serialQueue cloudType:self->_cloudType];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSerialQueue:", self->_serialQueue}];
  serialQueue = self->_serialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ASCloudKitServerChangeTokenCache_copyWithZone___block_invoke;
  v9[3] = &unk_278C4B250;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(serialQueue, v9);
  v7 = v6;

  return v7;
}

void __49__ASCloudKitServerChangeTokenCache_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 8) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(*(a1 + 40) + 16) mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  *(*(a1 + 32) + 24) = *(*(a1 + 40) + 24);
  v8 = [*(*(a1 + 40) + 40) mutableCopy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(a1 + 32) + 48) = *(*(a1 + 40) + 48);
}

- (BOOL)isExpired
{
  v15 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    timestamp = self->_timestamp;
    v5 = MEMORY[0x277CBEAA8];
    v6 = v3;
    [v5 timeIntervalSinceReferenceDate];
    *buf = 134218240;
    *&buf[4] = timestamp;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Checking for change token expiration, timestamp=%f, now=%f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__ASCloudKitServerChangeTokenCache_isExpired__block_invoke;
  v12[3] = &unk_278C4BA58;
  v12[4] = self;
  v12[5] = buf;
  dispatch_sync(serialQueue, v12);
  v9 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __45__ASCloudKitServerChangeTokenCache_isExpired__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(*(*(a1 + 40) + 8) + 24) = v3 - *(*(a1 + 32) + 24) > *MEMORY[0x277CE91B0];
  return result;
}

- (void)setExpired:(BOOL)expired
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ASCloudKitServerChangeTokenCache_setExpired___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

double __47__ASCloudKitServerChangeTokenCache_setExpired___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  result = v2 - *MEMORY[0x277CE91B0];
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (void)persistToUserDefaults
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASCloudKitServerChangeTokenCache_persistToUserDefaults__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __57__ASCloudKitServerChangeTokenCache_persistToUserDefaults__block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Persisting change tokens to disk", v12, 2u);
  }

  v3 = _MapChangeTokensToData(*(*(a1 + 32) + 8));
  v4 = _MapChangeTokensToData(*(*(a1 + 32) + 16));
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v7 = [ASCloudKitServerChangeTokenCache databaseDefaultsKeyForCloudType:*(*(a1 + 32) + 48)];
  [v6 setObject:v3 forKey:v7];

  v8 = [ASCloudKitServerChangeTokenCache zoneDefaultsKeyForCloudType:*(*(a1 + 32) + 48)];
  [v6 setObject:v4 forKey:v8];

  [v6 setObject:*(*(a1 + 32) + 40) forKey:*MEMORY[0x277CE9200]];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v11 = [ASCloudKitServerChangeTokenCache timestampDefaultsKeyForCloudType:*(v9 + 48)];
  [v6 setDouble:v11 forKey:v10];

  [v6 synchronize];
}

- (id)serverChangeTokenForDatabase:(id)database
{
  databaseCopy = database;
  v5 = databaseCopy;
  if (databaseCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ASCloudKitServerChangeTokenCache_serverChangeTokenForDatabase___block_invoke;
    block[3] = &unk_278C4BAD0;
    v11 = &v12;
    block[4] = self;
    v10 = databaseCopy;
    dispatch_sync(serialQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __65__ASCloudKitServerChangeTokenCache_serverChangeTokenForDatabase___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = _DictionaryKeyForDatabase(*(a1 + 40));
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setServerChangeToken:(id)token forDatabase:(id)database
{
  tokenCopy = token;
  databaseCopy = database;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCloudKitServerChangeTokenCache_setServerChangeToken_forDatabase___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = tokenCopy;
  selfCopy = self;
  v14 = databaseCopy;
  v9 = databaseCopy;
  v10 = tokenCopy;
  dispatch_async(serialQueue, block);
}

void __69__ASCloudKitServerChangeTokenCache_setServerChangeToken_forDatabase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  v3 = _DictionaryKeyForDatabase(*(a1 + 48));
  v4 = v3;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:v3];
  }

  else
  {
    [v2 removeObjectForKey:v3];
  }
}

- (id)serverChangeTokenForRecordZoneID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__ASCloudKitServerChangeTokenCache_serverChangeTokenForRecordZoneID___block_invoke;
    block[3] = &unk_278C4BAD0;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(serialQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __69__ASCloudKitServerChangeTokenCache_serverChangeTokenForRecordZoneID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = _DictionaryKeyForRecordZoneID(*(a1 + 40));
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setServerChangeToken:(id)token forRecordZoneID:(id)d
{
  tokenCopy = token;
  dCopy = d;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ASCloudKitServerChangeTokenCache_setServerChangeToken_forRecordZoneID___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = tokenCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = tokenCopy;
  dispatch_async(serialQueue, block);
}

void __73__ASCloudKitServerChangeTokenCache_setServerChangeToken_forRecordZoneID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 16);
  v3 = _DictionaryKeyForRecordZoneID(*(a1 + 48));
  v4 = v3;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:v3];
  }

  else
  {
    [v2 removeObjectForKey:v3];
  }
}

- (id)fetchDateForRecordZoneID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ASCloudKitServerChangeTokenCache_fetchDateForRecordZoneID___block_invoke;
    block[3] = &unk_278C4BAD0;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(serialQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __61__ASCloudKitServerChangeTokenCache_fetchDateForRecordZoneID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v6 = _DictionaryKeyForRecordZoneID(*(a1 + 40));
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setFetchDate:(id)date forRecordZoneID:(id)d
{
  dateCopy = date;
  dCopy = d;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCloudKitServerChangeTokenCache_setFetchDate_forRecordZoneID___block_invoke;
  block[3] = &unk_278C4BB98;
  v12 = dateCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = dateCopy;
  dispatch_async(serialQueue, block);
}

void __65__ASCloudKitServerChangeTokenCache_setFetchDate_forRecordZoneID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 40);
  v3 = _DictionaryKeyForRecordZoneID(*(a1 + 48));
  v4 = v3;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:v3];
  }

  else
  {
    [v2 removeObjectForKey:v3];
  }
}

@end