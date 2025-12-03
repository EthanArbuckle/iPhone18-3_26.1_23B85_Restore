@interface ASDTExclavesSensorManager
+ (id)forSensorName:(id)name;
- (ASDTExclavesSensorManager)initWithSensorName:(id)name;
- (void)ioThreadStartStop:(BOOL)stop withStatusTracker:(void *)tracker;
@end

@implementation ASDTExclavesSensorManager

+ (id)forSensorName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (+[ASDTExclavesSensorManager forSensorName:]::onceToken == -1)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  +[ASDTExclavesSensorManager forSensorName:];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = LABEL_3:;
  if (!v5)
  {
    v5 = [[ASDTExclavesSensorManager alloc] initWithSensorName:v4];
    if (v5)
    {
    }
  }

LABEL_9:

  return v5;
}

uint64_t __43__ASDTExclavesSensorManager_forSensorName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);

  [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];

  return MEMORY[0x2821F96F8]();
}

- (ASDTExclavesSensorManager)initWithSensorName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ASDTExclavesSensorManager;
  if ([(ASDTExclavesSensorManager *)&v9 init])
  {
    uTF8String = [nameCopy UTF8String];
    ASDT::Exclaves::Sensor::Create(uTF8String, v6);
  }

  v7 = 0;

  return v7;
}

- (void)ioThreadStartStop:(BOOL)stop withStatusTracker:(void *)tracker
{
  if (tracker)
  {
    stopCopy = stop;
    v12 = 0;
    Status = ASDT::Exclaves::Sensor::GetStatus(self->_sensor.__ptr_, &v12);
    if (!Status)
    {
      if (stopCopy)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      v8 = v12;
      ASDTTime::machAbsoluteTime(Status, v9 + 1);
      *&v9[0] = -1;
      v10 = v8;
      v11 = v7;
      ASDT::Exclaves::StatusTracker::Push(tracker, v9);
    }
  }
}

- (void)initWithSensorName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "ASDTExclavesSensorManager(%@): Exclaves sensor creation fails unexpectedly.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end