@interface SKSoundSource
+ (SKSoundSource)sourceWithBuffer:(id)a3;
+ (id)source;
- (BOOL)isPlaying;
- (BOOL)play;
- (BOOL)shouldLoop;
- (CGPoint)position;
- (SKSoundSource)init;
- (double)gain;
- (id)description;
- (int)completedBufferCount;
- (int)queuedBufferCount;
- (void)dealloc;
- (void)pause;
- (void)purgeCompletedBuffers;
- (void)queueBuffer:(id)a3;
- (void)setGain:(double)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setShouldLoop:(BOOL)a3;
- (void)stop;
@end

@implementation SKSoundSource

- (SKSoundSource)init
{
  v7.receiver = self;
  v7.super_class = SKSoundSource;
  v2 = [(SKSoundSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_sourceId = 0;
    v4 = [MEMORY[0x277CBEB18] array];
    buffers = v3->_buffers;
    v3->_buffers = v4;
  }

  return v3;
}

+ (id)source
{
  v2 = objc_alloc_init(SKSoundSource);
  sources = 0;
  alGenSources(1, &sources);
  v2->_sourceId = sources;

  return v2;
}

+ (SKSoundSource)sourceWithBuffer:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[SKSoundSource source];
    [v4 queueBuffer:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)queueBuffer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_sourceId)
  {
    bids = [v4 bufferId];
    alSourceQueueBuffers(self->_sourceId, 1, &bids);
    [(NSMutableArray *)self->_buffers addObject:v5];
  }
}

- (BOOL)play
{
  sourceId = self->_sourceId;
  result = 1;
  if (sourceId)
  {
    alSourcePlay(sourceId);
    if (alGetError())
    {
      return 0;
    }
  }

  return result;
}

- (void)pause
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    alSourcePause(sourceId);
  }
}

- (void)stop
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    alSourceStop(sourceId);
  }
}

- (BOOL)shouldLoop
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    value = 0;
    alGetSourcei(sourceId, 4103, &value);
    LOBYTE(sourceId) = value == 1;
  }

  return sourceId;
}

- (void)setShouldLoop:(BOOL)a3
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    alSourcei(sourceId, 4103, a3);
  }
}

- (double)gain
{
  sourceId = self->_sourceId;
  if (!sourceId)
  {
    return 0.0;
  }

  value = 0.0;
  alGetSourcef(sourceId, 4106, &value);
  return value;
}

- (void)setGain:(double)a3
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    v4 = a3;
    alSourcef(sourceId, 4106, v4);
  }
}

- (CGPoint)position
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    value1 = 0.0;
    value3 = 0.0;
    value2 = 0.0;
    alGetSource3f(sourceId, 4100, &value1, &value2, &value3);
    v3 = value1;
    v4 = value2;
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    x = a3.x;
    y = a3.y;
    alSource3f(sourceId, 4100, x, y, 0.0);
  }
}

- (BOOL)isPlaying
{
  sourceId = self->_sourceId;
  if (sourceId)
  {
    value = 0;
    alGetSourcei(sourceId, 4112, &value);
    LOBYTE(sourceId) = value == 4114;
  }

  return sourceId;
}

- (int)completedBufferCount
{
  result = self->_sourceId;
  if (result)
  {
    value = 0;
    alGetSourcei(result, 4118, &value);
    return value;
  }

  return result;
}

- (int)queuedBufferCount
{
  result = self->_sourceId;
  if (result)
  {
    value = 0;
    alGetSourcei(result, 4117, &value);
    v4 = value;
    return v4 - [(SKSoundSource *)self completedBufferCount];
  }

  return result;
}

- (void)purgeCompletedBuffers
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (self->_sourceId)
  {
    v3 = [(SKSoundSource *)self completedBufferCount];
    if (v3 >= 1)
    {
      v4 = v3;
      MEMORY[0x28223BE20]();
      alSourceUnqueueBuffers(self->_sourceId, v6, (v7 - v5));
      [(NSMutableArray *)self->_buffers removeObjectsInRange:0, v4];
    }
  }
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_buffers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = &stru_282E190D8;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v18 + 1) + 8 * v8) description];
        v7 = [(__CFString *)v9 stringByAppendingFormat:@"\n\t%@", v10];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_282E190D8;
  }

  v11 = [(SKSoundSource *)self queuedBufferCount];
  v12 = [(SKSoundSource *)self completedBufferCount];
  v13 = MEMORY[0x277CCACA8];
  v14 = [(SKSoundSource *)self isPlaying];
  v15 = @"NO";
  if (v14)
  {
    v15 = @"YES";
  }

  v16 = [v13 stringWithFormat:@"paused:%@ totalBuffers:%d completed:%d queued:%d buffers = {%@\n}", v15, (v12 + v11), v12, v11, v7];

  return v16;
}

- (void)dealloc
{
  [(SKSoundSource *)self stop];
  [(SKSoundSource *)self purgeCompletedBuffers];
  [(NSMutableArray *)self->_buffers removeAllObjects];
  if (self->_sourceId)
  {
    alDeleteSources(1, &self->_sourceId);
    self->_sourceId = 0;
  }

  v3.receiver = self;
  v3.super_class = SKSoundSource;
  [(SKSoundSource *)&v3 dealloc];
}

@end