@interface AVPlayerItemErrorLog
- (AVPlayerItemErrorLog)init;
- (AVPlayerItemErrorLog)initWithLogArray:(id)array;
- (NSArray)events;
- (id)_common_init;
- (id)description;
- (id)errorLogArray;
- (void)dealloc;
@end

@implementation AVPlayerItemErrorLog

- (id)_common_init
{
  v3 = objc_alloc_init(AVPlayerItemErrorLogInternal);
  self->_playerItemErrorLog = v3;
  if (v3)
  {
    CFRetain(v3);
    self->_playerItemErrorLog->logArray = 0;
  }

  else
  {

    return 0;
  }

  return self;
}

- (AVPlayerItemErrorLog)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemErrorLog;
  result = [(AVPlayerItemErrorLog *)&v3 init];
  if (result)
  {
    return [(AVPlayerItemErrorLog *)result _common_init];
  }

  return result;
}

- (AVPlayerItemErrorLog)initWithLogArray:(id)array
{
  v8.receiver = self;
  v8.super_class = AVPlayerItemErrorLog;
  v4 = [(AVPlayerItemErrorLog *)&v8 init];
  if (!v4)
  {
    return 0;
  }

  _common_init = [(AVPlayerItemErrorLog *)v4 _common_init];
  v6 = _common_init;
  if (array && _common_init)
  {
    *(*(_common_init + 8) + 8) = array;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
  [v5 appendFormat:@"\n%@", objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", -[AVPlayerItemErrorLog extendedLogData](self, "extendedLogData"), -[AVPlayerItemErrorLog extendedLogDataStringEncoding](self, "extendedLogDataStringEncoding"))];
  return v5;
}

- (void)dealloc
{
  playerItemErrorLog = self->_playerItemErrorLog;
  if (playerItemErrorLog)
  {

    CFRelease(self->_playerItemErrorLog);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemErrorLog;
  [(AVPlayerItemErrorLog *)&v4 dealloc];
}

- (NSArray)events
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_playerItemErrorLog->logArray, "count")}];
  if (v3)
  {
    v4 = v3;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    logArray = self->_playerItemErrorLog->logArray;
    v6 = [(NSArray *)logArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(logArray);
          }

          v10 = [[AVPlayerItemErrorLogEvent alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v9)];
          if (v10)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)logArray countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    return v4;
  }

  else
  {
    v12 = MEMORY[0x1E695DEC8];

    return [v12 array];
  }
}

- (id)errorLogArray
{
  v2 = self->_playerItemErrorLog->logArray;

  return v2;
}

@end