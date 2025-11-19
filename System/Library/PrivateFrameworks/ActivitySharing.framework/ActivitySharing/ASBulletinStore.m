@interface ASBulletinStore
- (void)_persistBulletins;
- (void)addBulletins:(id)a3;
- (void)loadBulletins;
- (void)removeAllBulletins;
- (void)removeBulletinsMatchingCriteria:(id)a3;
- (void)removeBulletinsOlderThanInterval:(double)a3;
@end

@implementation ASBulletinStore

- (void)loadBulletins
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  v4 = [v3 valueForKey:@"bulletins"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hk_map:&__block_literal_global_9];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  bulletins = self->_bulletins;
  self->_bulletins = v6;

  ASLoggingInitialize();
  v8 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_bulletins;
    v10 = v8;
    v12 = 134217984;
    v13 = [(NSArray *)v9 count];
    _os_log_impl(&dword_23E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Loaded %lu pending bulletins", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

ASCodableBulletin *__32__ASBulletinStore_loadBulletins__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ASCodableBulletin alloc] initWithData:v2];

  return v3;
}

- (void)addBulletins:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [(NSArray *)self->_bulletins arrayByAddingObjectsFromArray:v6];
    bulletins = self->_bulletins;
    self->_bulletins = v4;

    [(ASBulletinStore *)self _persistBulletins];
  }
}

- (void)removeAllBulletins
{
  ASLoggingInitialize();
  v3 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23E4FA000, v3, OS_LOG_TYPE_DEFAULT, "Removing all pending bulletins", v5, 2u);
  }

  bulletins = self->_bulletins;
  self->_bulletins = MEMORY[0x277CBEBF8];

  [(ASBulletinStore *)self _persistBulletins];
}

- (void)removeBulletinsMatchingCriteria:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = self;
  location = &self->_bulletins;
  v5 = self->_bulletins;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (v4[2](v4, v12))
        {
          ASLoggingInitialize();
          v13 = ASLogNotifications;
          if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [v12 type];
            v16 = [v12 title];
            *buf = 134218242;
            v26 = v15;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_23E4FA000, v14, OS_LOG_TYPE_DEFAULT, "Removing matching pending bulletin: %lu/%@", buf, 0x16u);
          }

          v8 = 1;
        }

        else
        {
          v17 = [v10 arrayByAddingObject:v12];

          v10 = v17;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(location, v10);
  if (v8)
  {
    [(ASBulletinStore *)v19 _persistBulletins];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletinsOlderThanInterval:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v5 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a3;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Removing pending bulletins older than %ld seconds", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ASBulletinStore_removeBulletinsOlderThanInterval___block_invoke;
  v10[3] = &__block_descriptor_48_e27_B16__0__ASCodableBulletin_8l;
  v10[4] = v8;
  *&v10[5] = a3;
  [(ASBulletinStore *)self removeBulletinsMatchingCriteria:v10];
  v9 = *MEMORY[0x277D85DE8];
}

BOOL __52__ASBulletinStore_removeBulletinsOlderThanInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 timestamp];
  return v3 - v4 > *(a1 + 40);
}

- (void)_persistBulletins
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_bulletins hk_map:&__block_literal_global_13_0];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  [v4 setObject:v3 forKey:@"bulletins"];
  [v4 synchronize];
  ASLoggingInitialize();
  v5 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    bulletins = self->_bulletins;
    v7 = v5;
    v9 = 134217984;
    v10 = [(NSArray *)bulletins count];
    _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Persisted %lu pending bulletins", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end