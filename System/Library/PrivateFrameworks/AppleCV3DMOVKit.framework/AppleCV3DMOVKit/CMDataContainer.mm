@interface CMDataContainer
+ (id)classes;
- (CMDataContainer)init;
- (CMDataContainer)initWithCoder:(id)coder;
- (id)grabNextDataRecv;
- (id)grabNextDataSent;
- (id)grabNextEvent;
- (id)grabNextMessageRecv;
- (id)grabNextMessageSent;
- (void)appendCMData:(id)data sending:(BOOL)sending;
- (void)appendCMMessage:(id)message sending:(BOOL)sending;
- (void)encodeWithCoder:(id)coder;
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

- (CMDataContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CMDataContainer;
  v5 = [(CMDataContainer *)&v32 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"v"];
    version = v5->_version;
    v5->_version = v7;

    v9 = [coderCopy decodeObjectForKey:@"cv"];
    cvPlayerVersion = v5->_cvPlayerVersion;
    v5->_cvPlayerVersion = v9;

    v11 = [coderCopy decodeObjectForKey:@"cv3d"];
    cv3dVersion = v5->_cv3dVersion;
    v5->_cv3dVersion = v11;

    v13 = [coderCopy decodeObjectForKey:@"iOS"];
    iOSVersion = v5->_iOSVersion;
    v5->_iOSVersion = v13;

    v15 = [coderCopy decodeObjectForKey:@"macOS"];
    macOSVersion = v5->_macOSVersion;
    v5->_macOSVersion = v15;

    v17 = [coderCopy decodeObjectForKey:@"hw"];
    deviceString = v5->_deviceString;
    v5->_deviceString = v17;

    v19 = [coderCopy decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v19;

    v21 = [coderCopy decodeObjectForKey:@"dsd"];
    cmDataSent = v5->_cmDataSent;
    v5->_cmDataSent = v21;

    v23 = [coderCopy decodeObjectForKey:@"drv"];
    cmDataRecv = v5->_cmDataRecv;
    v5->_cmDataRecv = v23;

    v25 = [coderCopy decodeObjectForKey:@"ds"];
    cmMsgSent = v5->_cmMsgSent;
    v5->_cmMsgSent = v25;

    v27 = [coderCopy decodeObjectForKey:@"dr"];
    cmMsgRecv = v5->_cmMsgRecv;
    v5->_cmMsgRecv = v27;

    v29 = [coderCopy decodeObjectForKey:@"e"];
    cmEvents = v5->_cmEvents;
    v5->_cmEvents = v29;

    objc_autoreleasePoolPop(v6);
    [(CMDataContainer *)v5 resetReader];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_version forKey:@"v"];
  [coderCopy encodeObject:self->_cvPlayerVersion forKey:@"cv"];
  [coderCopy encodeObject:self->_cv3dVersion forKey:@"cv3d"];
  [coderCopy encodeObject:self->_iOSVersion forKey:@"ios"];
  [coderCopy encodeObject:self->_macOSVersion forKey:@"macOS"];
  [coderCopy encodeObject:self->_deviceString forKey:@"hw"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sid"];
  [coderCopy encodeObject:self->_cmDataSent forKey:@"dsd"];
  [coderCopy encodeObject:self->_cmDataRecv forKey:@"drv"];
  [coderCopy encodeObject:self->_cmMsgSent forKey:@"ds"];
  [coderCopy encodeObject:self->_cmMsgRecv forKey:@"dr"];
  [coderCopy encodeObject:self->_cmEvents forKey:@"e"];
  objc_autoreleasePoolPop(v4);
}

- (void)appendCMData:(id)data sending:(BOOL)sending
{
  sendingCopy = sending;
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 112;
  if (sendingCopy)
  {
    v7 = 104;
  }

  [*(&selfCopy->super.isa + v7) addObject:dataCopy];
  objc_sync_exit(selfCopy);
}

- (void)appendCMMessage:(id)message sending:(BOOL)sending
{
  v4 = 128;
  if (sending)
  {
    v4 = 120;
  }

  [*(&self->super.isa + v4) addObject:message];
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