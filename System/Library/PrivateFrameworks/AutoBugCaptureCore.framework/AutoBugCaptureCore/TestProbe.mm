@interface TestProbe
+ (id)testProbeStatusString:(unsigned int)string;
+ (void)autoBugCapturePath:(id *)path autoBugCaptureUID:(id *)d autoBugCaptureGID:(id *)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval;
- (TestProbe)initWithQueue:(id)queue;
- (void)cancelTest:(id)test;
- (void)removeProbeOutputFiles;
- (void)stopPeriodicTimer;
@end

@implementation TestProbe

+ (void)autoBugCapturePath:(id *)path autoBugCaptureUID:(id *)d autoBugCaptureGID:(id *)iD
{
  if (autoBugCapturePath)
  {
    v8 = autoBugCaptureUID == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || autoBugCaptureGID == 0)
  {
    v10 = +[ABCAdministrator sharedInstance];
    configurationManager = [v10 configurationManager];

    if (configurationManager)
    {
      logArchivePath = [configurationManager logArchivePath];
      v13 = autoBugCapturePath;
      autoBugCapturePath = logArchivePath;

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(configurationManager, "logArchiveUID")}];
      v15 = autoBugCaptureUID;
      autoBugCaptureUID = v14;

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(configurationManager, "logArchiveGID")}];
      v17 = autoBugCaptureGID;
      autoBugCaptureGID = v16;
    }
  }

  if (path)
  {
    *path = autoBugCapturePath;
  }

  if (d)
  {
    *d = autoBugCaptureUID;
  }

  if (iD)
  {
    *iD = autoBugCaptureGID;
  }
}

- (TestProbe)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = TestProbe;
  v6 = [(TestProbe *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = uUID;

    v7->_status = -1;
    array = [MEMORY[0x277CBEB18] array];
    probeOutputFilePaths = v7->_probeOutputFilePaths;
    v7->_probeOutputFilePaths = array;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(TestProbe *)equalCopy uuid];
      v6 = [uuid isEqual:self->_uuid];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)cancelTest:(id)test
{
  testCopy = test;
  [(TestProbe *)self stopTest];
  v4 = testCopy;
  if (testCopy)
  {
    (*(testCopy + 2))(testCopy, 4);
    v4 = testCopy;
  }
}

+ (id)testProbeStatusString:(unsigned int)string
{
  if (string + 1 > 6)
  {
    return @"UNEXPECTED PROBE STATUS!";
  }

  else
  {
    return off_278CF0608[string + 1];
  }
}

- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval
{
  queue = [(TestProbe *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  if (v8)
  {
    dispatch_source_set_timer(v8, at, interval, 0);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__TestProbe_startPeriodicTimerAt_repeatInterval___block_invoke;
    v14 = &unk_278CF04F8;
    selfCopy = self;
    v9 = v8;
    v16 = v9;
    dispatch_source_set_event_handler(v9, &v11);
    [(TestProbe *)self setPeriodicTimer:v9, v11, v12, v13, v14, selfCopy];
    dispatch_resume(v9);
  }

  return v8 != 0;
}

- (void)stopPeriodicTimer
{
  periodicTimer = [(TestProbe *)self periodicTimer];

  if (periodicTimer)
  {
    periodicTimer2 = [(TestProbe *)self periodicTimer];
    dispatch_source_cancel(periodicTimer2);

    [(TestProbe *)self setPeriodicTimer:0];
  }
}

- (void)removeProbeOutputFiles
{
  queue = [(TestProbe *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TestProbe_removeProbeOutputFiles__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__TestProbe_removeProbeOutputFiles__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) probeOutputFilePaths];
  if ([v1 count])
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v2 fileExistsAtPath:v8])
          {
            v14 = 0;
            v9 = [v2 removeItemAtPath:v8 error:&v14];
            v10 = v14;
            if ((v9 & 1) == 0)
            {
              v11 = symptomsLogHandle();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v20 = v8;
                v21 = 2112;
                v22 = v10;
                _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "Couldn't delete canceled file: %@ because %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v10 = symptomsLogHandle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v20 = v8;
              _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Couldn't locate file at %@", buf, 0xCu);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v5);
    }

    v1 = v13;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end