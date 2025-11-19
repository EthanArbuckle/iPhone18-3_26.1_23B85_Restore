@interface ASDTIOPAudioIOBufferDevice
- (BOOL)mapIOBuffer;
- (BOOL)open;
- (id).cxx_construct;
- (id)initForIOObject:(unsigned int)a3 andIDValue:(id)a4;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioIOBufferDevice

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
    [ASDTIOPAudioIOBufferDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  if ((v4 & 1) == 0)
  {
    v5 = ASDTIOPLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioIOBufferDevice *)v6 open];
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
    [ASDTIOPAudioIOBufferDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)mapIOBuffer
{
  v6[15] = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIOBufferDevice mapIOBuffer];
  }

  ASDT::IOPAudio::IOBuffer::UserClient::MapIOBuffer(ptr, v6);
  ASDT::IOMemoryMap::operator=();
  MEMORY[0x245CEDC00](v6);
  result = self[1]._memoryMap.__vftable != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  self->_userClient.__ptr_ = 0;
  p_memoryMap = &self->_memoryMap;
  self->_memoryMap.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_memoryMap.refcount);
  *&p_memoryMap[2].refcount = 0;
  LODWORD(p_memoryMap[2].meta) = 0;
  return self;
}

- (void)open
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to open connection to IOBuffer user client", buf, 0xCu);
}

@end