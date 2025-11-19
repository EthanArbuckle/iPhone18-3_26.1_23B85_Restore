@interface _CLKTimeFormatterCache
+ (id)sharedInstance;
+ (id)timeZoneName:(id)a3;
- (_CLKTimeFormatterCache)init;
- (id)timeAndDesignatorFormatterForTimeZone:(id)a3 suppressWhitespace:(BOOL)a4 forcedNumberSystem:(unint64_t)a5;
- (id)timeOnlyFormatterForTimeZone:(id)a3 hasSeconds:(BOOL)a4 forcedNumberSystem:(unint64_t)a5;
- (void)_invalidateFormatters;
- (void)dealloc;
@end

@implementation _CLKTimeFormatterCache

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___CLKTimeFormatterCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

+ (id)timeZoneName:(id)a3
{
  if (a3)
  {
    v4 = [a3 name];
  }

  else
  {
    v4 = @"[NSTimeZone localTimeZone]";
  }

  return v4;
}

- (_CLKTimeFormatterCache)init
{
  v6.receiver = self;
  v6.super_class = _CLKTimeFormatterCache;
  v2 = [(_CLKTimeFormatterCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__invalidateFormatters name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _CLKTimeFormatterCache;
  [(_CLKTimeFormatterCache *)&v4 dealloc];
}

- (id)timeOnlyFormatterForTimeZone:(id)a3 hasSeconds:(BOOL)a4 forcedNumberSystem:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  if (!self->_timeOnlyFormatters)
  {
    v9 = objc_opt_new();
    timeOnlyFormatters = self->_timeOnlyFormatters;
    self->_timeOnlyFormatters = v9;
  }

  v11 = [objc_opt_class() timeZoneName:v8];
  v12 = [v11 stringByAppendingFormat:@"%i%lu", v6, a5];

  v13 = [(NSMutableDictionary *)self->_timeOnlyFormatters objectForKeyedSubscript:v12];
  if (!v13)
  {
    v14 = objc_opt_new();
    v13 = v14;
    if (a5 != -1)
    {
      _ForceDateFormatterLocaleToUseNumberSystem(v14, a5);
    }

    if (v8)
    {
      [v13 setTimeZone:v8];
    }

    else
    {
      v15 = [MEMORY[0x277CBEBB0] localTimeZone];
      [v13 setTimeZone:v15];
    }

    if (v6)
    {
      v16 = @"Jmmss";
    }

    else
    {
      v16 = @"Jmm";
    }

    [v13 setLocalizedDateFormatFromTemplate:v16];
    [(NSMutableDictionary *)self->_timeOnlyFormatters setObject:v13 forKeyedSubscript:v12];
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return v13;
}

- (id)timeAndDesignatorFormatterForTimeZone:(id)a3 suppressWhitespace:(BOOL)a4 forcedNumberSystem:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v9 = [objc_opt_class() timeZoneName:v8];
  v10 = [v9 stringByAppendingFormat:@"%lu", a5];

  if (!v6)
  {
    timeAndDesignatorFormatters = self->_timeAndDesignatorFormatters;
    if (!timeAndDesignatorFormatters)
    {
      v18 = objc_opt_new();
      v19 = self->_timeAndDesignatorFormatters;
      self->_timeAndDesignatorFormatters = v18;

      timeAndDesignatorFormatters = self->_timeAndDesignatorFormatters;
    }

    v14 = [(NSMutableDictionary *)timeAndDesignatorFormatters objectForKeyedSubscript:v10];
    if (!v14)
    {
      v20 = objc_opt_new();
      v16 = v20;
      if (v8)
      {
        [v20 setTimeZone:v8];
      }

      else
      {
        v24 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v16 setTimeZone:v24];
      }

      v25 = _BasicTimeFormat();
      [v16 setDateFormat:v25];

      [(NSMutableDictionary *)self->_timeAndDesignatorFormatters setObject:v16 forKeyedSubscript:v10];
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  timeAndDesignatorFormattersSuppressingWhitespace = self->_timeAndDesignatorFormattersSuppressingWhitespace;
  if (!timeAndDesignatorFormattersSuppressingWhitespace)
  {
    v12 = objc_opt_new();
    v13 = self->_timeAndDesignatorFormattersSuppressingWhitespace;
    self->_timeAndDesignatorFormattersSuppressingWhitespace = v12;

    timeAndDesignatorFormattersSuppressingWhitespace = self->_timeAndDesignatorFormattersSuppressingWhitespace;
  }

  v14 = [(NSMutableDictionary *)timeAndDesignatorFormattersSuppressingWhitespace objectForKeyedSubscript:v10];
  if (v14)
  {
LABEL_12:
    v16 = v14;
    goto LABEL_21;
  }

  v15 = objc_opt_new();
  v16 = v15;
  if (a5 != -1)
  {
    _ForceDateFormatterLocaleToUseNumberSystem(v15, a5);
  }

  if (v8)
  {
    [v16 setTimeZone:v8];
  }

  else
  {
    v21 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v16 setTimeZone:v21];
  }

  v22 = _BasicTimeFormat();
  if ((CLKDesignatorRequiresWhitespace() & 1) == 0)
  {
    v23 = [v22 stringByReplacingOccurrencesOfString:@"a " withString:@"a"];

    v22 = [v23 stringByReplacingOccurrencesOfString:@" a" withString:@"a"];
  }

  [v16 setDateFormat:v22];
  [(NSMutableDictionary *)self->_timeAndDesignatorFormattersSuppressingWhitespace setObject:v16 forKeyedSubscript:v10];

LABEL_21:
  os_unfair_lock_unlock(&self->_cacheLock);

  return v16;
}

- (void)_invalidateFormatters
{
  os_unfair_lock_lock(&self->_cacheLock);
  timeOnlyFormatters = self->_timeOnlyFormatters;
  self->_timeOnlyFormatters = 0;

  timeAndDesignatorFormatters = self->_timeAndDesignatorFormatters;
  self->_timeAndDesignatorFormatters = 0;

  timeAndDesignatorFormattersSuppressingWhitespace = self->_timeAndDesignatorFormattersSuppressingWhitespace;
  self->_timeAndDesignatorFormattersSuppressingWhitespace = 0;

  os_unfair_lock_unlock(&self->_cacheLock);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"_FormatterCacheInvalidatedNotification" object:0];
}

@end