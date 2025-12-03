@interface _CLKTimeFormatterCache
+ (id)sharedInstance;
+ (id)timeZoneName:(id)name;
- (_CLKTimeFormatterCache)init;
- (id)timeAndDesignatorFormatterForTimeZone:(id)zone suppressWhitespace:(BOOL)whitespace forcedNumberSystem:(unint64_t)system;
- (id)timeOnlyFormatterForTimeZone:(id)zone hasSeconds:(BOOL)seconds forcedNumberSystem:(unint64_t)system;
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
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

+ (id)timeZoneName:(id)name
{
  if (name)
  {
    name = [name name];
  }

  else
  {
    name = @"[NSTimeZone localTimeZone]";
  }

  return name;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__invalidateFormatters name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _CLKTimeFormatterCache;
  [(_CLKTimeFormatterCache *)&v4 dealloc];
}

- (id)timeOnlyFormatterForTimeZone:(id)zone hasSeconds:(BOOL)seconds forcedNumberSystem:(unint64_t)system
{
  secondsCopy = seconds;
  zoneCopy = zone;
  os_unfair_lock_lock(&self->_cacheLock);
  if (!self->_timeOnlyFormatters)
  {
    v9 = objc_opt_new();
    timeOnlyFormatters = self->_timeOnlyFormatters;
    self->_timeOnlyFormatters = v9;
  }

  v11 = [objc_opt_class() timeZoneName:zoneCopy];
  system = [v11 stringByAppendingFormat:@"%i%lu", secondsCopy, system];

  v13 = [(NSMutableDictionary *)self->_timeOnlyFormatters objectForKeyedSubscript:system];
  if (!v13)
  {
    v14 = objc_opt_new();
    v13 = v14;
    if (system != -1)
    {
      _ForceDateFormatterLocaleToUseNumberSystem(v14, system);
    }

    if (zoneCopy)
    {
      [v13 setTimeZone:zoneCopy];
    }

    else
    {
      localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      [v13 setTimeZone:localTimeZone];
    }

    if (secondsCopy)
    {
      v16 = @"Jmmss";
    }

    else
    {
      v16 = @"Jmm";
    }

    [v13 setLocalizedDateFormatFromTemplate:v16];
    [(NSMutableDictionary *)self->_timeOnlyFormatters setObject:v13 forKeyedSubscript:system];
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return v13;
}

- (id)timeAndDesignatorFormatterForTimeZone:(id)zone suppressWhitespace:(BOOL)whitespace forcedNumberSystem:(unint64_t)system
{
  whitespaceCopy = whitespace;
  zoneCopy = zone;
  os_unfair_lock_lock(&self->_cacheLock);
  v9 = [objc_opt_class() timeZoneName:zoneCopy];
  system = [v9 stringByAppendingFormat:@"%lu", system];

  if (!whitespaceCopy)
  {
    timeAndDesignatorFormatters = self->_timeAndDesignatorFormatters;
    if (!timeAndDesignatorFormatters)
    {
      v18 = objc_opt_new();
      v19 = self->_timeAndDesignatorFormatters;
      self->_timeAndDesignatorFormatters = v18;

      timeAndDesignatorFormatters = self->_timeAndDesignatorFormatters;
    }

    v14 = [(NSMutableDictionary *)timeAndDesignatorFormatters objectForKeyedSubscript:system];
    if (!v14)
    {
      v20 = objc_opt_new();
      v16 = v20;
      if (zoneCopy)
      {
        [v20 setTimeZone:zoneCopy];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v16 setTimeZone:localTimeZone];
      }

      v25 = _BasicTimeFormat();
      [v16 setDateFormat:v25];

      [(NSMutableDictionary *)self->_timeAndDesignatorFormatters setObject:v16 forKeyedSubscript:system];
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

  v14 = [(NSMutableDictionary *)timeAndDesignatorFormattersSuppressingWhitespace objectForKeyedSubscript:system];
  if (v14)
  {
LABEL_12:
    v16 = v14;
    goto LABEL_21;
  }

  v15 = objc_opt_new();
  v16 = v15;
  if (system != -1)
  {
    _ForceDateFormatterLocaleToUseNumberSystem(v15, system);
  }

  if (zoneCopy)
  {
    [v16 setTimeZone:zoneCopy];
  }

  else
  {
    localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v16 setTimeZone:localTimeZone2];
  }

  v22 = _BasicTimeFormat();
  if ((CLKDesignatorRequiresWhitespace() & 1) == 0)
  {
    v23 = [v22 stringByReplacingOccurrencesOfString:@"a " withString:@"a"];

    v22 = [v23 stringByReplacingOccurrencesOfString:@" a" withString:@"a"];
  }

  [v16 setDateFormat:v22];
  [(NSMutableDictionary *)self->_timeAndDesignatorFormattersSuppressingWhitespace setObject:v16 forKeyedSubscript:system];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"_FormatterCacheInvalidatedNotification" object:0];
}

@end