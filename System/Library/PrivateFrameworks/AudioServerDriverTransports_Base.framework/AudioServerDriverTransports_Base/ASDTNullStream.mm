@interface ASDTNullStream
- (BOOL)changePhysicalFormat:(id)a3;
- (id)updateClientPositionBlock;
- (unsigned)ioBufferSize;
- (void)configureStreamBuffer;
- (void)setPhysicalFormat:(id)a3;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDTNullStream

- (unsigned)ioBufferSize
{
  v2 = [(ASDTNullStream *)self streamBuffer];
  v3 = [v2 length];

  return v3;
}

- (id)updateClientPositionBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__ASDTNullStream_updateClientPositionBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_v16__0Q8l;
  aBlock[4] = &self->_clientPosition;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (void)configureStreamBuffer
{
  [(ASDTNullStream *)self setStreamBuffer:0];
  v10 = [(ASDStream *)self physicalFormat];
  [v10 sampleRate];
  if (v3 != 0.0)
  {
    v4 = [(ASDStream *)self physicalFormat];
    v5 = [v4 bytesPerFrame];

    if (!v5)
    {
      return;
    }

    v11 = [(ASDStream *)self physicalFormat];
    [v11 sampleRate];
    v7 = v6;
    v8 = [(ASDStream *)self physicalFormat];
    v9 = [v8 bytesPerFrame] * (v7 * 300.0 / 1000.0);

    v12 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    [(ASDTNullStream *)self setStreamBuffer:?];

    v10 = [(ASDTNullStream *)self streamBuffer];
    -[ASDTStream setIoBufferPtr:](self, "setIoBufferPtr:", [v10 mutableBytes]);
  }
}

- (BOOL)changePhysicalFormat:(id)a3
{
  v4 = a3;
  v5 = [(ASDStream *)self physicalFormat];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v7 = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__ASDTNullStream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE64A8;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [v7 requestConfigurationChange:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __39__ASDTNullStream_changePhysicalFormat___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPhysicalFormat:v2];

  v12 = objc_loadWeakRetained((a1 + 40));
  v3 = [v12 device];
  [v3 samplingRate];
  v5 = v4;
  [*(a1 + 32) sampleRate];
  v7 = v6;

  if (v5 != v7)
  {
    [*(a1 + 32) sampleRate];
    v9 = v8;
    v13 = objc_loadWeakRetained((a1 + 40));
    v10 = [v13 device];
    [v10 setSamplingRate:v9];
  }
}

- (void)setPhysicalFormat:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ASDTNullStream;
  [(ASDTStream *)&v5 setPhysicalFormat:v4];
  [(ASDTNullStream *)self configureStreamBuffer];
}

- (void)startStream
{
  [(ASDTStream *)self clearBuffer];
  v3.receiver = self;
  v3.super_class = ASDTNullStream;
  [(ASDStream *)&v3 startStream];
}

- (void)stopStream
{
  v2.receiver = self;
  v2.super_class = ASDTNullStream;
  [(ASDStream *)&v2 stopStream];
}

@end