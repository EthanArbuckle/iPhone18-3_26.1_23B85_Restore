@interface _ATXAppDailyDoseCurrentStore
- (BOOL)isExpiredAt:(id)at;
- (BOOL)isExpiredNow;
- (_ATXAppDailyDoseCurrentStore)initWithPath:(id)path;
- (double)currentDoseFor:(id)for;
- (id)_getCacheFromFile;
- (void)_overwrite;
- (void)_readCacheAndExpiration;
- (void)closePermanently;
- (void)dealloc;
- (void)increaseDoseFor:(id)for by:(double)by;
- (void)resetWithDurationMap:(id)map on:(id)on;
@end

@implementation _ATXAppDailyDoseCurrentStore

- (_ATXAppDailyDoseCurrentStore)initWithPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = _ATXAppDailyDoseCurrentStore;
  v6 = [(_ATXAppDailyDoseCurrentStore *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v6->_queue;
    v6->_queue = v11;

    objc_storeStrong(&v6->_path, path);
    [(_ATXAppDailyDoseCurrentStore *)v6 _openFd];
  }

  return v6;
}

- (void)dealloc
{
  [(_ATXAppDailyDoseCurrentStore *)self closePermanently];
  v3.receiver = self;
  v3.super_class = _ATXAppDailyDoseCurrentStore;
  [(_ATXAppDailyDoseCurrentStore *)&v3 dealloc];
}

- (void)closePermanently
{
  p_fd = &self->_fd;
  v3 = atomic_load(&self->_fd);
  v4 = v3;
  atomic_compare_exchange_strong(p_fd, &v4, 0xFFFFFFFF);
  if (v4 == v3 && (v4 & 0x80000000) == 0)
  {
    close(v4);
  }
}

- (void)_overwrite
{
  v25[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v25[0] = &unk_283A55EF8;
  v24[0] = @"version";
  v24[1] = @"expires";
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_expires timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v24[2] = @"doses";
  cache = self->_cache;
  v25[1] = v5;
  v25[2] = cache;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v21 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:&v21];
  v9 = v21;
  if (!v8)
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23[0] = v9;
      v17 = "Could not serialize daily dose: %@";
      v18 = v13;
      v19 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  p_fd = &self->_fd;
  v11 = atomic_load(p_fd);
  ftruncate(v11, 0);
  LODWORD(p_fd) = atomic_load(p_fd);
  v12 = pwrite(p_fd, [v8 bytes], objc_msgSend(v8, "length"), 0);
  if (v12 != [v8 length])
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 67109378;
      LODWORD(v23[0]) = v14;
      WORD2(v23[0]) = 2080;
      *(v23 + 6) = v16;
      v17 = "Could not write daily dose (errno=%i): %s";
      v18 = v13;
      v19 = 18;
LABEL_7:
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v3);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_readCacheAndExpiration
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  cache = self->_cache;
  self->_cache = 0;

  expires = self->_expires;
  self->_expires = 0;

  v6 = atomic_load(&self->_fd);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v7 = atomic_load(&self->_fd);
  v8 = readWholeFile(v7, 0);
  if (!v8)
  {
    v9 = atomic_load(&self->_fd);
    close(v9);
    [(_ATXAppDailyDoseCurrentStore *)self _openFd];
    v10 = atomic_load(&self->_fd);
    v8 = readWholeFile(v10, 1);
    if (!v8)
    {
LABEL_10:
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *__error();
        *buf = 67109120;
        LODWORD(v32) = v22;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Could not read daily dose (errno=%i)", buf, 8u);
      }

      v11 = 0;
      goto LABEL_17;
    }
  }

  v11 = v8;
  if ([v8 length])
  {
    v30 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:1 error:&v30];
    v13 = v30;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"version"];
      integerValue = [v14 integerValue];

      if (integerValue != 1)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v16 = [v12 objectForKeyedSubscript:@"doses"];
      v17 = self->_cache;
      self->_cache = v16;

      v18 = [v12 objectForKeyedSubscript:@"expires"];
      p_super = &v18->super;
      if (v18)
      {
        v20 = MEMORY[0x277CBEAA8];
        [(NSDate *)v18 doubleValue];
        v18 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
      }

      v21 = self->_expires;
      self->_expires = v18;
    }

    else
    {
      p_super = __atxlog_handle_default();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v13;
        _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_DEFAULT, "Could not parse daily dose: %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_18:
  if (!self->_cache || (v23 = self->_expires) == 0 || ([(NSDate *)v23 timeIntervalSinceNow], v24 < 0.0))
  {
    v25 = objc_opt_new();
    v26 = self->_cache;
    self->_cache = v25;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v28 = self->_expires;
    self->_expires = distantPast;
  }

  objc_autoreleasePoolPop(v3);
  v29 = *MEMORY[0x277D85DE8];
}

- (id)_getCacheFromFile
{
  dispatch_assert_queue_V2(self->_queue);
  cache = self->_cache;
  if (!cache)
  {
    [(_ATXAppDailyDoseCurrentStore *)self _readCacheAndExpiration];
    cache = self->_cache;
  }

  return cache;
}

- (BOOL)isExpiredAt:(id)at
{
  atCopy = at;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ATXAppDailyDoseCurrentStore_isExpiredAt___block_invoke;
  block[3] = &unk_27859B1C0;
  v9 = atCopy;
  v10 = &v11;
  block[4] = self;
  v6 = atCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)isExpiredNow
{
  v3 = objc_opt_new();
  LOBYTE(self) = [(_ATXAppDailyDoseCurrentStore *)self isExpiredAt:v3];

  return self;
}

- (void)resetWithDurationMap:(id)map on:(id)on
{
  mapCopy = map;
  onCopy = on;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___ATXAppDailyDoseCurrentStore_resetWithDurationMap_on___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v12 = mapCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = mapCopy;
  dispatch_sync(queue, block);
}

- (double)currentDoseFor:(id)for
{
  forCopy = for;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___ATXAppDailyDoseCurrentStore_currentDoseFor___block_invoke;
  block[3] = &unk_27859A8B0;
  v10 = forCopy;
  v11 = &v12;
  block[4] = self;
  v6 = forCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)increaseDoseFor:(id)for by:(double)by
{
  forCopy = for;
  sel_getName(a2);
  v8 = os_transaction_create();
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51___ATXAppDailyDoseCurrentStore_increaseDoseFor_by___block_invoke;
  v12[3] = &unk_278599FF0;
  v12[4] = self;
  v13 = forCopy;
  byCopy = by;
  v14 = v8;
  v10 = v8;
  v11 = forCopy;
  dispatch_sync(queue, v12);
}

@end