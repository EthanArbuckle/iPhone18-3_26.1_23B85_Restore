@interface ASDRingBufferOutputStream
- (ASDRingBufferOutputStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4;
- (ASDRingBufferOutputStream)initWithRingBuffer:(id)a3 withPlugin:(id)a4;
- (id)writeMixBlock;
- (void)setPhysicalFormat:(id)a3;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDRingBufferOutputStream

- (ASDRingBufferOutputStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnavailableMethod" reason:@"Method is unavailable" userInfo:0];
  objc_exception_throw(v5);
}

- (ASDRingBufferOutputStream)initWithRingBuffer:(id)a3 withPlugin:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ASDRingBufferOutputStream;
  v8 = [(ASDStream *)&v11 initWithDirection:1869968496 withPlugin:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ringBuffer, a3);
  }

  return v9;
}

- (void)startStream
{
  if (!self->_bufferList.__ptr_)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"ASDRingBufferStream.mm" lineNumber:47 description:@"Format must be set before starting stream"];
  }

  v6.receiver = self;
  v6.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v6 startStream];
  v3 = [(ASDRingBufferOutputStream *)self ringBuffer];
  [v3 startWriter];
}

- (void)stopStream
{
  v4.receiver = self;
  v4.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v4 stopStream];
  v3 = [(ASDRingBufferOutputStream *)self ringBuffer];
  [v3 stopWriter];
}

- (void)setPhysicalFormat:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v5 setPhysicalFormat:v4];
  if (v4)
  {
    [v4 audioStreamBasicDescription];
  }

  operator new();
}

- (id)writeMixBlock
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__6;
  v7[4] = __Block_byref_object_dispose__6;
  v8 = [(ASDRingBuffer *)self->_ringBuffer writeBlock];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = &self->_bufferList;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASDRingBufferOutputStream_writeMixBlock__block_invoke;
  v5[3] = &unk_278CE42A8;
  v5[4] = v6;
  v5[5] = v7;
  v3 = MEMORY[0x245CEBEA0](v5);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);

  return v3;
}

uint64_t __42__ASDRingBufferOutputStream_writeMixBlock__block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = 2003329396;
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    ASDBufferList::setBufferListFromData(v6, a4, a2);
    v8 = *(**(*(*(a1 + 32) + 8) + 24) + 40);
    v9 = *(a3 + 144);
    v10 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
    if ((v10 + 2) > 6)
    {
      if (CALog_DefaultScope)
      {
        v12 = *CALog_DefaultScope;
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
        v19 = 1024;
        v20 = 104;
        v21 = 2080;
        v22 = "[ASDRingBufferOutputStream writeMixBlock]_block_invoke";
        _os_log_impl(&dword_2415D8000, v12, OS_LOG_TYPE_ERROR, "%s:%d:%s: Unknown audio ring buffer error", &v17, 0x1Cu);
      }

      goto LABEL_17;
    }

    v11 = 1 << (v10 + 2);
    if ((v11 & 0x1B) == 0)
    {
      if ((v11 & 0x60) != 0)
      {
        if (CALog_DefaultScope)
        {
          v12 = *CALog_DefaultScope;
        }

        else
        {
          v12 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315906;
          v18 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
          v19 = 1024;
          v20 = 100;
          v21 = 2080;
          v22 = "[ASDRingBufferOutputStream writeMixBlock]_block_invoke";
          v23 = 1024;
          v24 = v10;
          _os_log_impl(&dword_2415D8000, v12, OS_LOG_TYPE_ERROR, "%s:%d:%s: Audio ring buffer error %d", &v17, 0x22u);
        }

LABEL_17:

        goto LABEL_18;
      }

      v5 = 0;
    }
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end