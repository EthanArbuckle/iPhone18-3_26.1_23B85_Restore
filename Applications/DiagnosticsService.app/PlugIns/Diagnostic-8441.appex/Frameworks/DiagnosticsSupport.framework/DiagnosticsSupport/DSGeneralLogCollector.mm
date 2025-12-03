@interface DSGeneralLogCollector
+ (id)latestRootLog;
+ (id)latestUserLog;
- (DSGeneralLogCollector)initWithLogIDs:(id)ds;
- (id)logFilesFromEnumerator:(id)enumerator;
- (void)enumerateLogLinesWithBlock:(id)block;
- (void)getLogFiles;
@end

@implementation DSGeneralLogCollector

+ (id)latestUserLog
{
  v2 = [@"/private/var/mobile/Library/Logs/AppleSupport" stringByAppendingPathComponent:@"general.log"];
  v3 = [DSGeneralLogFile alloc];
  v4 = [NSURL fileURLWithPath:v2];
  v5 = [(DSGeneralLogFile *)v3 initWithURL:v4];

  return v5;
}

+ (id)latestRootLog
{
  v2 = [@"/private/var/logs/AppleSupport" stringByAppendingPathComponent:@"general.log"];
  v3 = [DSGeneralLogFile alloc];
  v4 = [NSURL fileURLWithPath:v2];
  v5 = [(DSGeneralLogFile *)v3 initWithURL:v4];

  return v5;
}

- (DSGeneralLogCollector)initWithLogIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = DSGeneralLogCollector;
  v6 = [(DSGeneralLogCollector *)&v11 init];
  if (!dsCopy)
  {
    goto LABEL_7;
  }

  v7 = +[NSNull null];
  if ([dsCopy isEqual:v7])
  {

LABEL_7:
    v9 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSGeneralLogCollector initWithLogIDs:v9];
    }

    v6 = 0;
    goto LABEL_10;
  }

  v8 = [dsCopy count];

  if (!v8)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    objc_storeStrong(&v6->_logIDs, ds);
    [(DSGeneralLogCollector *)v6 getLogFiles];
  }

LABEL_10:

  return v6;
}

- (void)getLogFiles
{
  v3 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL URLWithString:@"/private/var/logs/AppleSupport"];
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v7 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v6];
  [v3 addObjectsFromArray:v7];

  v8 = +[NSFileManager defaultManager];
  v9 = [NSURL URLWithString:@"/private/var/mobile/Library/Logs/AppleSupport"];
  v10 = [v8 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:4 errorHandler:0];

  v11 = [(DSGeneralLogCollector *)self logFilesFromEnumerator:v10];
  [v3 addObjectsFromArray:v11];

  v12 = [NSSortDescriptor sortDescriptorWithKey:@"logStartDate" ascending:1];
  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [v3 sortedArrayUsingDescriptors:v13];
  logFiles = self->_logFiles;
  self->_logFiles = v14;
}

- (id)logFilesFromEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = enumeratorCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [DSGeneralLogFile alloc];
        v12 = [(DSGeneralLogFile *)v11 initWithURL:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)enumerateLogLinesWithBlock:(id)block
{
  blockCopy = block;
  v5 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIDs = [(DSGeneralLogCollector *)self logIDs];
    *buf = 138412290;
    v20 = logIDs;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Requesting log lines for: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  logFiles = [(DSGeneralLogCollector *)self logFiles];
  v8 = [logFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(logFiles);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      logIDs2 = [(DSGeneralLogCollector *)self logIDs];
      LOBYTE(v12) = [v12 enumerateLogLinesWithIDs:logIDs2 usingBlock:blockCopy];

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [logFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

@end