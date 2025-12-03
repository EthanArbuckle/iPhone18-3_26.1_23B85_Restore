@interface VIOSessionDailyUsageEntry
+ (id)loadOrCreateEntry;
+ (void)clearEntry;
- (BOOL)isOld;
- (VIOSessionDailyUsageEntry)init;
- (VIOSessionDailyUsageEntry)initWithCoder:(id)coder;
- (double)timeMultiplier;
- (double)timeRemaining;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)save;
@end

@implementation VIOSessionDailyUsageEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  creationDate = [(VIOSessionDailyUsageEntry *)self creationDate];
  v6 = NSStringFromSelector("creationDate");
  [coderCopy encodeObject:creationDate forKey:v6];

  lastStartDate = [(VIOSessionDailyUsageEntry *)self lastStartDate];
  v8 = NSStringFromSelector("lastStartDate");
  [coderCopy encodeObject:lastStartDate forKey:v8];

  [(VIOSessionDailyUsageEntry *)self currentUsage];
  v9 = [NSNumber numberWithDouble:?];
  v10 = NSStringFromSelector("currentUsage");
  [coderCopy encodeObject:v9 forKey:v10];

  isRunningVIO = [(VIOSessionDailyUsageEntry *)self isRunningVIO];
  v12 = NSStringFromSelector("isRunningVIO");
  [coderCopy encodeBool:isRunningVIO forKey:v12];
}

- (VIOSessionDailyUsageEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = VIOSessionDailyUsageEntry;
  v5 = [(VIOSessionDailyUsageEntry *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("creationDate");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("lastStartDate");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    lastStartDate = v5->_lastStartDate;
    v5->_lastStartDate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector("currentUsage");
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    [v16 doubleValue];
    v5->_currentUsage = v17;

    v18 = NSStringFromSelector("isRunningVIO");
    v5->_isRunningVIO = [coderCopy decodeBoolForKey:v18];
  }

  return v5;
}

- (double)timeMultiplier
{
  isRunningVIO = [(VIOSessionDailyUsageEntry *)self isRunningVIO];
  result = 1.2;
  if (isRunningVIO)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)isOld
{
  v3 = +[NSCalendar currentCalendar];
  creationDate = [(VIOSessionDailyUsageEntry *)self creationDate];
  v5 = +[NSDate date];
  v6 = [v3 components:16 fromDate:creationDate toDate:v5 options:0];

  v7 = [v6 day];
  v8 = sub_100F628C0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ is %ld day(s) old", &v10, 0x16u);
  }

  return v7 != 0;
}

- (double)timeRemaining
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v25 = 136316418;
        v26 = "[VIOSessionDailyUsageEntry timeRemaining]";
        v27 = 2080;
        v28 = "VIOSessionDailyUsageEntry.m";
        v29 = 1024;
        v30 = 89;
        v31 = 2080;
        v32 = "dispatch_get_main_queue()";
        v33 = 2080;
        v34 = dispatch_queue_get_label(&_dispatch_main_q);
        v35 = 2080;
        v36 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v25, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v25 = 138412290;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
        }
      }
    }
  }

  [(VIOSessionDailyUsageEntry *)self dailyUsageLimit];
  v7 = v6;
  [(VIOSessionDailyUsageEntry *)self currentUsage];
  v9 = v7 - v8;
  if (v9 < 0.0)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315906;
      v26 = "[VIOSessionDailyUsageEntry timeRemaining]";
      v27 = 2080;
      v28 = "VIOSessionDailyUsageEntry.m";
      v29 = 1024;
      v30 = 93;
      v31 = 2080;
      v32 = "timeRemaining >= 0";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v25, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        v25 = 138412290;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
      }
    }
  }

  [(VIOSessionDailyUsageEntry *)self dailyUsageLimit];
  if (v9 > v10)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315906;
      v26 = "[VIOSessionDailyUsageEntry timeRemaining]";
      v27 = 2080;
      v28 = "VIOSessionDailyUsageEntry.m";
      v29 = 1024;
      v30 = 94;
      v31 = 2080;
      v32 = "timeRemaining <= self.dailyUsageLimit";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v25, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
      }
    }
  }

  if (v9 < 0.0 || ([(VIOSessionDailyUsageEntry *)self dailyUsageLimit], v9 > v11))
  {
    v12 = sub_100F628C0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134217984;
      v26 = *&v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Detected invalid value for time remaining (%f); clamping", &v25, 0xCu);
    }

    v9 = fmax(v9, 0.0);
    [(VIOSessionDailyUsageEntry *)self dailyUsageLimit];
    if (v9 >= v13)
    {
      [(VIOSessionDailyUsageEntry *)self dailyUsageLimit];
      return v14;
    }
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  creationDate = [(VIOSessionDailyUsageEntry *)self creationDate];
  lastStartDate = [(VIOSessionDailyUsageEntry *)self lastStartDate];
  [(VIOSessionDailyUsageEntry *)self currentUsage];
  v8 = v7;
  [(VIOSessionDailyUsageEntry *)self timeRemaining];
  v10 = [NSString stringWithFormat:@"<%@ %p: creationDate: %@ lastStartDate: %@ currentUsage: %f timeRemaining: %f>", v4, self, creationDate, lastStartDate, v8, v9];

  return v10;
}

- (VIOSessionDailyUsageEntry)init
{
  v6.receiver = self;
  v6.super_class = VIOSessionDailyUsageEntry;
  v2 = [(VIOSessionDailyUsageEntry *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate date];
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;
  }

  return v2;
}

- (void)save
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v7 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v5 = v7;
  [v3 setObject:v4 forKey:@"kVIOSessionDailyUsageEntryUserDefaultsKey"];

  if (v5)
  {
    v6 = sub_100F628C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error saving entry %@: %@", buf, 0x16u);
    }
  }
}

+ (void)clearEntry
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"kVIOSessionDailyUsageEntryUserDefaultsKey"];
}

+ (id)loadOrCreateEntry
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dataForKey:@"kVIOSessionDailyUsageEntryUserDefaultsKey"];

  if (!v3)
  {
    goto LABEL_12;
  }

  v27 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v27];
  v5 = v27;
  if (v5)
  {
    v6 = v5;
    v7 = sub_100F628C0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error loading last entry: %@; creating a new one", buf, 0xCu);
    }

    v8 = objc_opt_new();
LABEL_6:
    v4 = v8;
LABEL_15:
    [v4 save];
    goto LABEL_16;
  }

  if (!v4)
  {
LABEL_12:
    v10 = sub_100F628C0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Entry is nil; creating a new one", buf, 2u);
    }

    v4 = objc_opt_new();
    v6 = 0;
    goto LABEL_15;
  }

  if ([v4 isOld])
  {
    v9 = sub_100F628C0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Entry is old (%@); creating a new one", buf, 0xCu);
    }

    v8 = objc_opt_new();
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_16:
  lastStartDate = [v4 lastStartDate];

  if (lastStartDate)
  {
    v12 = sub_100F628C0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      lastStartDate2 = [v4 lastStartDate];
      *buf = 138412290;
      v29 = lastStartDate2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Detected last VIO session did not end gracefully; assuming VIO session was running consecutively since %@", buf, 0xCu);
    }

    v14 = +[NSDate date];
    lastStartDate3 = [v4 lastStartDate];
    [v14 timeIntervalSinceDate:lastStartDate3];
    v17 = v16;
    [v4 timeMultiplier];
    v19 = v18;
    [v4 currentUsage];
    [v4 setCurrentUsage:v20 + v19 * v17];

    [v4 currentUsage];
    v21 = 0.0;
    if (v22 > 0.0)
    {
      [v4 currentUsage];
      v21 = v23;
    }

    [v4 dailyUsageLimit];
    if (v21 >= v24)
    {
      [v4 dailyUsageLimit];
      v21 = v25;
    }

    [v4 setCurrentUsage:v21];
    [v4 setLastStartDate:0];
    [v4 save];
  }

  return v4;
}

@end