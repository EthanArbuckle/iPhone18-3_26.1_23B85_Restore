@interface VCVideoFrameBufferPool
- (BOOL)addFrame:(__CVBuffer *)frame time:(int64_t)time;
- (BOOL)releaseFrameWithTime:(int64_t)time;
- (VCVideoFrameBufferPool)initWithCapacity:(int)capacity;
- (void)dealloc;
@end

@implementation VCVideoFrameBufferPool

- (VCVideoFrameBufferPool)initWithCapacity:(int)capacity
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCVideoFrameBufferPool;
  v4 = [(VCVideoFrameBufferPool *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxBufferCount = capacity;
    v4->_bufferPool = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoFrameBufferPool;
  [(VCVideoFrameBufferPool *)&v3 dealloc];
}

- (BOOL)addFrame:(__CVBuffer *)frame time:(int64_t)time
{
  v7 = [(NSMutableDictionary *)self->_bufferPool count];
  maxBufferCount = self->_maxBufferCount;
  if (maxBufferCount == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoFrameBufferPool addFrame:v9 time:v10];
      }
    }
  }

  else
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_bufferPool, "setObject:forKeyedSubscript:", frame, [MEMORY[0x1E696AD98] numberWithLongLong:time]);
  }

  return maxBufferCount != v7;
}

- (BOOL)releaseFrameWithTime:(int64_t)time
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_bufferPool, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLongLong:?]);
  if (v5)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_bufferPool, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithLongLong:time]);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoFrameBufferPool *)v6 releaseFrameWithTime:time, v7];
    }
  }

  return v5 != 0;
}

- (void)addFrame:(uint64_t)a1 time:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoFrameBufferPool addFrame:time:]";
  v6 = 1024;
  v7 = 35;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Dropping the frame, Client fell behind. Buffer is full.", &v2, 0x1Cu);
}

- (void)releaseFrameWithTime:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCVideoFrameBufferPool releaseFrameWithTime:]";
  v7 = 1024;
  v8 = 44;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can't release frame with time %lld, doesn't exist", &v3, 0x26u);
}

@end