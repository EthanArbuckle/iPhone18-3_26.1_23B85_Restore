@interface EAUSBBuffer
- (AccessoryEAInterface)eaInterface;
- (EAUSBBuffer)initWithSession:(id)session bufferSize:(unint64_t)size;
- (unint64_t)dataLength;
- (unint64_t)writeSpaceRemaining;
- (void)attemptWrite;
- (void)dealloc;
- (void)moveReadPtr:(unint64_t)ptr;
- (void)moveWritePtr:(unint64_t)ptr;
- (void)reset;
@end

@implementation EAUSBBuffer

- (EAUSBBuffer)initWithSession:(id)session bufferSize:(unint64_t)size
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = EAUSBBuffer;
  v7 = [(EAUSBBuffer *)&v9 init];
  if (v7)
  {
    v7->_bufPtr = malloc_type_malloc(size, 0x100004077774924uLL);
    objc_storeWeak(&v7->_eaInterface, sessionCopy);
    v7->_bufferLength = size;
    [(EAUSBBuffer *)v7 reset];
  }

  return v7;
}

- (void)dealloc
{
  free(self->_bufPtr);
  v3.receiver = self;
  v3.super_class = EAUSBBuffer;
  [(EAUSBBuffer *)&v3 dealloc];
}

- (void)reset
{
  self->_usbError = 0;
  bufPtr = self->_bufPtr;
  self->_readPtr = 0;
  self->_writePtr = bufPtr;
  self->_writeAttempts = 10;
}

- (unint64_t)writeSpaceRemaining
{
  if (&self->_bufPtr[self->_bufferLength] == self->_writePtr)
  {
    return 0;
  }

  else
  {
    return &self->_bufPtr[self->_bufferLength] - self->_writePtr;
  }
}

- (unint64_t)dataLength
{
  readPtr = self->_readPtr;
  if (readPtr)
  {
    return self->_writePtr - readPtr;
  }

  else
  {
    return 0;
  }
}

- (void)moveReadPtr:(unint64_t)ptr
{
  readPtr = self->_readPtr;
  if (readPtr)
  {
    writePtr = &readPtr[ptr];
    if (writePtr > self->_writePtr)
    {
      writePtr = self->_writePtr;
    }

    self->_readPtr = writePtr;
  }
}

- (void)moveWritePtr:(unint64_t)ptr
{
  if (ptr)
  {
    bufPtr = self->_bufPtr;
    if (!self->_readPtr)
    {
      self->_readPtr = bufPtr;
    }

    v4 = &bufPtr[self->_bufferLength];
    if (&self->_writePtr[ptr] < v4)
    {
      v4 = &self->_writePtr[ptr];
    }

    self->_writePtr = v4;
  }
}

- (void)attemptWrite
{
  writeAttempts = self->_writeAttempts;
  if (writeAttempts)
  {
    self->_writeAttempts = writeAttempts - 1;
  }
}

- (AccessoryEAInterface)eaInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_eaInterface);

  return WeakRetained;
}

@end