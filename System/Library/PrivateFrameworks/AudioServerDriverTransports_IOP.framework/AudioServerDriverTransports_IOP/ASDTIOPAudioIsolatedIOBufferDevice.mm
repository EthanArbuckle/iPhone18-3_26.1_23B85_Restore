@interface ASDTIOPAudioIsolatedIOBufferDevice
- (BOOL)getStreamDescription:(AudioStreamBasicDescription *)a3;
- (BOOL)open;
- (BOOL)setStreamDescription:(const AudioStreamBasicDescription *)a3 withBufferFrameSize:(unsigned int)a4;
- (BOOL)setupClientIO:(unint64_t)a3 withBufferFrameSize:(unsigned int)a4;
- (BOOL)setupIO;
- (BOOL)teardownClientIO:(unint64_t)a3;
- (BOOL)teardownIO;
- (id)initForIOObject:(unsigned int)a3 andIDValue:(id)a4;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioIsolatedIOBufferDevice

- (id)initForIOObject:(unsigned int)a3 andIDValue:(id)a4
{
  v5 = *MEMORY[0x277D85DE8];
  [a4 clientType];
  operator new();
}

- (BOOL)open
{
  v10 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  if ((v4 & 1) == 0)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioIsolatedIOBufferDevice *)v6 open];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)close
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)setStreamDescription:(const AudioStreamBasicDescription *)a3 withBufferFrameSize:(unsigned int)a4
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setStreamDescription:withBufferFrameSize:];
  }

  if (!a3)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setStreamDescription:withBufferFrameSize:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetStreamDescription(ptr, a3, a4);
}

- (BOOL)getStreamDescription:(AudioStreamBasicDescription *)a3
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice getStreamDescription:];
  }

  if (!a3)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice getStreamDescription:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(ptr, a3);
}

- (BOOL)setupIO
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setupIO];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupIO(ptr);
}

- (BOOL)teardownIO
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice teardownIO];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownIO(ptr);
}

- (BOOL)setupClientIO:(unint64_t)a3 withBufferFrameSize:(unsigned int)a4
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setupClientIO:withBufferFrameSize:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupClientIO(ptr, a3, a4);
}

- (BOOL)teardownClientIO:(unint64_t)a3
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice teardownClientIO:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownClientIO(ptr, a3);
}

- (void)initForIOObject:(uint64_t)a1 andIDValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to create IsolatedIOBuffer user client", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to open connection to IsolatedIOBuffer user client", buf, 0xCu);
}

@end