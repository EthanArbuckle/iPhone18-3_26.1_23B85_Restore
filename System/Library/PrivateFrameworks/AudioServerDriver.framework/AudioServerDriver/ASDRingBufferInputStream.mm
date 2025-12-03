@interface ASDRingBufferInputStream
- (ASDRingBufferInputStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (ASDRingBufferInputStream)initWithRingBuffer:(id)buffer withPlugin:(id)plugin;
- (id)readInputBlock;
- (void)setPhysicalFormat:(id)format;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDRingBufferInputStream

- (ASDRingBufferInputStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  pluginCopy = plugin;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnavailableMethod" reason:@"Method is unavailable" userInfo:0];
  objc_exception_throw(v5);
}

- (ASDRingBufferInputStream)initWithRingBuffer:(id)buffer withPlugin:(id)plugin
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = ASDRingBufferInputStream;
  v8 = [(ASDStream *)&v11 initWithDirection:1768845428 withPlugin:plugin];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ringBuffer, buffer);
  }

  return v9;
}

- (void)startStream
{
  v6.receiver = self;
  v6.super_class = ASDRingBufferInputStream;
  [(ASDStream *)&v6 startStream];
  if (!self->_bufferList.__ptr_)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDRingBufferStream.mm" lineNumber:155 description:@"Format must be set before starting stream"];
  }

  ringBuffer = [(ASDRingBufferInputStream *)self ringBuffer];
  [ringBuffer startReader];
}

- (void)stopStream
{
  v4.receiver = self;
  v4.super_class = ASDRingBufferInputStream;
  [(ASDStream *)&v4 stopStream];
  ringBuffer = [(ASDRingBufferInputStream *)self ringBuffer];
  [ringBuffer stopReader];
}

- (void)setPhysicalFormat:(id)format
{
  formatCopy = format;
  v5.receiver = self;
  v5.super_class = ASDRingBufferInputStream;
  [(ASDStream *)&v5 setPhysicalFormat:formatCopy];
  if (formatCopy)
  {
    [formatCopy audioStreamBasicDescription];
  }

  operator new();
}

- (id)readInputBlock
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__6;
  v7[4] = __Block_byref_object_dispose__6;
  readWithZerosBlock = [(ASDRingBuffer *)self->_ringBuffer readWithZerosBlock];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = &self->_bufferList;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASDRingBufferInputStream_readInputBlock__block_invoke;
  v5[3] = &unk_278CE42A8;
  v5[4] = v6;
  v5[5] = v7;
  v3 = MEMORY[0x245CEBEA0](v5);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);

  return v3;
}

uint64_t __42__ASDRingBufferInputStream_readInputBlock__block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  ASDBufferList::setBufferListFromData(**(*(*(a1 + 32) + 8) + 24), a4, a2);
  v6 = *(**(*(*(a1 + 32) + 8) + 24) + 40);
  v7 = *(a3 + 80);
  v8 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v9 = v8;
  if ((v8 + 2) >= 5)
  {
    if ((v8 - 3) >= 2)
    {
      if (CALog_DefaultScope)
      {
        v11 = *CALog_DefaultScope;
      }

      else
      {
        v11 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315650;
      v19 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
      v20 = 1024;
      v21 = 213;
      v22 = 2080;
      v23 = "[ASDRingBufferInputStream readInputBlock]_block_invoke";
      v13 = "%s:%d:%s: Unknown audio ring buffer error";
      v14 = v11;
      v15 = 28;
    }

    else
    {
      if (CALog_DefaultScope)
      {
        v11 = *CALog_DefaultScope;
      }

      else
      {
        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315906;
      v19 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
      v20 = 1024;
      v21 = 208;
      v22 = 2080;
      v23 = "[ASDRingBufferInputStream readInputBlock]_block_invoke";
      v24 = 1024;
      v25 = v9;
      v13 = "%s:%d:%s: Audio ring buffer error %d";
      v14 = v11;
      v15 = 34;
    }

    _os_log_impl(&dword_2415D8000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_15:

    result = 2003329396;
    goto LABEL_16;
  }

  result = 0;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end