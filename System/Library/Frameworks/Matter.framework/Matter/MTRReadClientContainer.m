@interface MTRReadClientContainer
- (void)cleanup;
- (void)onDone;
@end

@implementation MTRReadClientContainer

- (void)cleanup
{
  readClientPtr = self->_readClientPtr;
  if (readClientPtr)
  {
    (**readClientPtr)(self->_readClientPtr, a2);
    j__free(readClientPtr);
    self->_readClientPtr = 0;
  }

  pathParams = self->_pathParams;
  if (pathParams)
  {
    j__free(pathParams);
    self->_pathParams = 0;
  }

  eventPathParams = self->_eventPathParams;
  if (eventPathParams)
  {
    j__free(eventPathParams);
    self->_eventPathParams = 0;
  }

  callback = self->_callback;
  if (callback)
  {
    v7 = sub_238EF679C(callback);
    j__free(v7);
    self->_callback = 0;
  }
}

- (void)onDone
{
  [(MTRReadClientContainer *)self cleanup];
  deviceID = self->_deviceID;
  if (qword_27DF775A8 != -1)
  {
    sub_23952C3B4();
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:deviceID];
  [qword_27DF77598 lock];
  v4 = [qword_27DF775A0 objectForKeyedSubscript:v8];
  v5 = 0;
  while (v5 < [v4 count])
  {
    v6 = [v4 objectAtIndexedSubscript:v5];
    v7 = [v6 readClientPtr];

    if (v7)
    {
      ++v5;
    }

    else
    {
      [v4 removeObjectAtIndex:v5];
    }
  }

  [qword_27DF77598 unlock];
}

@end