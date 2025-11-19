@interface AVPlayerItemAccessLog
- (AVPlayerItemAccessLog)init;
- (AVPlayerItemAccessLog)initWithLogArray:(id)a3;
- (NSArray)events;
- (id)_common_init;
- (id)accessLogArray;
- (id)description;
- (void)dealloc;
@end

@implementation AVPlayerItemAccessLog

- (id)_common_init
{
  v3 = objc_alloc_init(AVPlayerItemAccessLogInternal);
  if (!v3)
  {
    self->_playerItemAccessLog = 0;
    goto LABEL_5;
  }

  v4 = CFRetain(v3);
  self->_playerItemAccessLog = v4;
  if (!v4)
  {
LABEL_5:

    return 0;
  }

  v4->logArray = 0;
  return self;
}

- (AVPlayerItemAccessLog)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemAccessLog;
  result = [(AVPlayerItemAccessLog *)&v3 init];
  if (result)
  {
    return [(AVPlayerItemAccessLog *)result _common_init];
  }

  return result;
}

- (AVPlayerItemAccessLog)initWithLogArray:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVPlayerItemAccessLog;
  v4 = [(AVPlayerItemAccessLog *)&v8 init];
  if (!v4)
  {
    return 0;
  }

  v5 = [(AVPlayerItemAccessLog *)v4 _common_init];
  v6 = v5;
  if (a3 && v5)
  {
    *(*(v5 + 8) + 8) = a3;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
  [v5 appendFormat:@"\n%@", objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", -[AVPlayerItemAccessLog extendedLogData](self, "extendedLogData"), -[AVPlayerItemAccessLog extendedLogDataStringEncoding](self, "extendedLogDataStringEncoding"))];
  return v5;
}

- (void)dealloc
{
  playerItemAccessLog = self->_playerItemAccessLog;
  if (playerItemAccessLog)
  {

    v4 = self->_playerItemAccessLog;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = AVPlayerItemAccessLog;
  [(AVPlayerItemAccessLog *)&v5 dealloc];
}

- (NSArray)events
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_playerItemAccessLog->logArray, "count")}];
  if (v3)
  {
    v4 = v3;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    logArray = self->_playerItemAccessLog->logArray;
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

          v10 = [[AVPlayerItemAccessLogEvent alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v9)];
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

- (id)accessLogArray
{
  v2 = self->_playerItemAccessLog->logArray;

  return v2;
}

@end