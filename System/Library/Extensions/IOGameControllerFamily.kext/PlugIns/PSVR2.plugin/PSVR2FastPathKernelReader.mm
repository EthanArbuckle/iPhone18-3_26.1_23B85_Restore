@interface PSVR2FastPathKernelReader
- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position;
- (PSVR2FastPathKernelReader)initWithQueue:(id)queue;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)readCurrentSample:(__IOGCFastPathSample *)sample;
- (int)readNextSample:(__IOGCFastPathSample *)sample;
- (int)readPreviousSample:(__IOGCFastPathSample *)sample;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0;
- (int)sampleDestroy:(__IOGCFastPathSample *)destroy;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelReader

- (PSVR2FastPathKernelReader)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = PSVR2FastPathKernelReader;
  v4 = [(PSVR2FastPathKernelReader *)&v6 init];
  v4->_IOGCFastPathReaderVTBL = IOGCFastPathReaderInterfacePrepareObjCVtbl();
  v4->_IOGCFastPathSampleContainerVTBL = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  v4->_queue = queue;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PSVR2FastPathKernelReader;
  [(PSVR2FastPathKernelReader *)&v3 dealloc];
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x6Bu, 0x29u, 0x76u, 0xBCu, 0xFu, 0xD5u, 0x4Bu, 0x35u, 0xAAu, 0x8Cu, 7u, 0x9Du, 0x84u, 0xBEu, 0xAu, 0x4Bu), CFEqual(v6, v8)))
  {
    v9 = 8;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x4Eu, 0x78u, 0xA7u, 0x1Fu, 0x35u, 0xD1u, 0x4Fu, 0x65u, 0xA7u, 0x27u, 0xC1u, 0x39u, 0x1Eu, 0x29u, 0xE2u, 0x31u);
    if (!CFEqual(v6, v12))
    {
      v10 = -2147483644;
      goto LABEL_5;
    }

    v9 = 16;
  }

  *outInterface = self + v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

- (int)readCurrentSample:(__IOGCFastPathSample *)sample
{
  sample->var0 = &self->_IOGCFastPathSampleContainerVTBL;
  sample->var1[0] = self->_queue;
  *&sample->var1[1] = self->_cursor;
  return 0;
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0
{
  if (!dword_165E4)
  {
    mach_timebase_info(&dword_165E0);
  }

  return sub_5098(self, sample);
}

- (int)sampleDestroy:(__IOGCFastPathSample *)destroy
{
  destroy->var0 = 0;
  destroy->var1[0] = 0;
  destroy->var1[1] = 0;
  destroy->var1[2] = -1;
  return 0;
}

- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position
{
  *d = self->_queue->_client->_serviceID;
  *iD = self->_queue->_queueID;
  *channel = 0;
  *position = sample->var1[2];
  return 1;
}

- (int)readNextSample:(__IOGCFastPathSample *)sample
{
  sub_6310(self);
  IOCircularDataQueueCursorMoveNext();
  sub_6364();
  v7 = v6 | 0xE0000000;
  if (!v8)
  {
    result = v7;
  }

  if (!v4 && (v5 & 1) == 0)
  {
    sub_62F0();
  }

  return result;
}

- (int)readPreviousSample:(__IOGCFastPathSample *)sample
{
  sub_6310(self);
  IOCircularDataQueueCursorMovePrevious();
  sub_6364();
  v7 = v6 | 0xE0000000;
  if (!v8)
  {
    result = v7;
  }

  if (!v4 && (v5 & 1) == 0)
  {
    sub_62F0();
  }

  return result;
}

@end