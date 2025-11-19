@interface CMDataContainer
+ (id)classes;
- (CMDataContainer)init;
- (CMDataContainer)initWithCoder:(id)a3;
- (id)grabNextDataRecv;
- (id)grabNextDataSent;
- (id)grabNextEvent;
- (id)grabNextMessageRecv;
- (id)grabNextMessageSent;
- (void)appendCMData:(id)a3 sending:(BOOL)a4;
- (void)appendCMMessage:(id)a3 sending:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)resetReader;
@end

@implementation CMDataContainer

+ (id)classes
{
  v7[10] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:10];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)resetReader
{
  self->nextEvent = 0;
  *&self->nextMsgSent = 0u;
  *&self->nextDataSent = 0u;
}

- (CMDataContainer)init
{
  v16.receiver = self;
  v16.super_class = CMDataContainer;
  v2 = [(CMDataContainer *)&v16 init];
  if (v2)
  {
    v3 = +[CMDataContainer versionS];
    version = v2->_version;
    v2->_version = v3;

    v5 = objc_opt_new();
    cmDataSent = v2->_cmDataSent;
    v2->_cmDataSent = v5;

    v7 = objc_opt_new();
    cmDataRecv = v2->_cmDataRecv;
    v2->_cmDataRecv = v7;

    v9 = objc_opt_new();
    cmMsgSent = v2->_cmMsgSent;
    v2->_cmMsgSent = v9;

    v11 = objc_opt_new();
    cmMsgRecv = v2->_cmMsgRecv;
    v2->_cmMsgRecv = v11;

    v13 = objc_opt_new();
    cmEvents = v2->_cmEvents;
    v2->_cmEvents = v13;
  }

  return v2;
}

- (CMDataContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CMDataContainer;
  v5 = [(CMDataContainer *)&v32 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"v"];
    version = v5->_version;
    v5->_version = v7;

    v9 = [v4 decodeObjectForKey:@"cv"];
    cvPlayerVersion = v5->_cvPlayerVersion;
    v5->_cvPlayerVersion = v9;

    v11 = [v4 decodeObjectForKey:@"cv3d"];
    cv3dVersion = v5->_cv3dVersion;
    v5->_cv3dVersion = v11;

    v13 = [v4 decodeObjectForKey:@"iOS"];
    iOSVersion = v5->_iOSVersion;
    v5->_iOSVersion = v13;

    v15 = [v4 decodeObjectForKey:@"macOS"];
    macOSVersion = v5->_macOSVersion;
    v5->_macOSVersion = v15;

    v17 = [v4 decodeObjectForKey:@"hw"];
    deviceString = v5->_deviceString;
    v5->_deviceString = v17;

    v19 = [v4 decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v19;

    v21 = [v4 decodeObjectForKey:@"dsd"];
    cmDataSent = v5->_cmDataSent;
    v5->_cmDataSent = v21;

    v23 = [v4 decodeObjectForKey:@"drv"];
    cmDataRecv = v5->_cmDataRecv;
    v5->_cmDataRecv = v23;

    v25 = [v4 decodeObjectForKey:@"ds"];
    cmMsgSent = v5->_cmMsgSent;
    v5->_cmMsgSent = v25;

    v27 = [v4 decodeObjectForKey:@"dr"];
    cmMsgRecv = v5->_cmMsgRecv;
    v5->_cmMsgRecv = v27;

    v29 = [v4 decodeObjectForKey:@"e"];
    cmEvents = v5->_cmEvents;
    v5->_cmEvents = v29;

    objc_autoreleasePoolPop(v6);
    [(CMDataContainer *)v5 resetReader];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_version forKey:@"v"];
  [v5 encodeObject:self->_cvPlayerVersion forKey:@"cv"];
  [v5 encodeObject:self->_cv3dVersion forKey:@"cv3d"];
  [v5 encodeObject:self->_iOSVersion forKey:@"ios"];
  [v5 encodeObject:self->_macOSVersion forKey:@"macOS"];
  [v5 encodeObject:self->_deviceString forKey:@"hw"];
  [v5 encodeObject:self->_sessionID forKey:@"sid"];
  [v5 encodeObject:self->_cmDataSent forKey:@"dsd"];
  [v5 encodeObject:self->_cmDataRecv forKey:@"drv"];
  [v5 encodeObject:self->_cmMsgSent forKey:@"ds"];
  [v5 encodeObject:self->_cmMsgRecv forKey:@"dr"];
  [v5 encodeObject:self->_cmEvents forKey:@"e"];
  objc_autoreleasePoolPop(v4);
}

- (void)appendCMData:(id)a3 sending:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = 112;
  if (v4)
  {
    v7 = 104;
  }

  [*(&v6->super.isa + v7) addObject:v8];
  objc_sync_exit(v6);
}

- (void)appendCMMessage:(id)a3 sending:(BOOL)a4
{
  v4 = 128;
  if (a4)
  {
    v4 = 120;
  }

  [*(&self->super.isa + v4) addObject:a3];
}

- (id)grabNextDataRecv
{
  nextDataRecv = self->nextDataRecv;
  if (nextDataRecv >= [(NSMutableArray *)self->_cmDataRecv count])
  {
    v6 = 0;
  }

  else
  {
    cmDataRecv = self->_cmDataRecv;
    ++self->nextDataRecv;
    v5 = [(NSMutableArray *)cmDataRecv objectAtIndexedSubscript:?];
    [v5 setIsSent:0];
    v6 = v5;
  }

  return v6;
}

- (id)grabNextDataSent
{
  nextDataSent = self->nextDataSent;
  if (nextDataSent >= [(NSMutableArray *)self->_cmDataSent count])
  {
    v6 = 0;
  }

  else
  {
    cmDataSent = self->_cmDataSent;
    ++self->nextDataSent;
    v5 = [(NSMutableArray *)cmDataSent objectAtIndexedSubscript:?];
    [v5 setIsSent:1];
    v6 = v5;
  }

  return v6;
}

- (id)grabNextMessageRecv
{
  nextMsgRecv = self->nextMsgRecv;
  if (nextMsgRecv >= [(NSMutableArray *)self->_cmMsgRecv count])
  {
    v6 = 0;
  }

  else
  {
    cmMsgRecv = self->_cmMsgRecv;
    ++self->nextMsgRecv;
    v5 = [(NSMutableArray *)cmMsgRecv objectAtIndexedSubscript:?];
    [v5 setIsSent:0];
    v6 = v5;
  }

  return v6;
}

- (id)grabNextMessageSent
{
  nextMsgSent = self->nextMsgSent;
  if (nextMsgSent >= [(NSMutableArray *)self->_cmMsgSent count])
  {
    v6 = 0;
  }

  else
  {
    cmMsgSent = self->_cmMsgSent;
    ++self->nextMsgSent;
    v5 = [(NSMutableArray *)cmMsgSent objectAtIndexedSubscript:?];
    [v5 setIsSent:1];
    v6 = v5;
  }

  return v6;
}

- (id)grabNextEvent
{
  nextEvent = self->nextEvent;
  if (nextEvent >= [(NSMutableArray *)self->_cmEvents count])
  {
    v5 = 0;
  }

  else
  {
    cmEvents = self->_cmEvents;
    ++self->nextEvent;
    v5 = [(NSMutableArray *)cmEvents objectAtIndexedSubscript:?];
  }

  return v5;
}

@end