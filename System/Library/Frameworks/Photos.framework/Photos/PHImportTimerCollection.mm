@interface PHImportTimerCollection
- (double)duration:(unsigned __int8)duration;
- (id)description;
- (id)initForMediaType:(unsigned __int8)type fileSize:(unint64_t)size;
- (id)startTiming:(unsigned __int8)timing subtype:(unsigned __int8)subtype;
- (void)processTimesOfType:(unsigned __int8)type withBlock:(id)block;
- (void)stopTiming:(id)timing;
@end

@implementation PHImportTimerCollection

- (double)duration:(unsigned __int8)duration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PHImportTimerCollection_duration___block_invoke;
  v5[3] = &unk_1E75A93E0;
  v5[4] = &v6;
  [(PHImportTimerCollection *)self processTimesOfType:duration withBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __36__PHImportTimerCollection_duration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 timeIntervalSinceDate:a2];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

- (void)processTimesOfType:(unsigned __int8)type withBlock:(id)block
{
  typeCopy = type;
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_timers;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 type] == typeCopy)
          {
            startTime = [v12 startTime];
            endTime = [v12 endTime];
            blockCopy[2](blockCopy, startTime, endTime);
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)stopTiming:(id)timing
{
  runningTimers = self->_runningTimers;
  timingCopy = timing;
  -[NSMutableIndexSet removeIndex:](runningTimers, "removeIndex:", [timingCopy type]);
  [timingCopy stop];
}

- (id)startTiming:(unsigned __int8)timing subtype:(unsigned __int8)subtype
{
  subtypeCopy = subtype;
  timingCopy = timing;
  [(NSMutableIndexSet *)self->_runningTimers addIndex:timing];
  v7 = [[PHImportTimer alloc] initWithType:timingCopy subtype:subtypeCopy];
  [(NSMutableArray *)self->_timers addObject:v7];
  [(PHImportTimer *)v7 start];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>: mediaType: %hhu, fileSize: %lu\ntimers:\n%@", v5, self, self->_mediaType, self->_fileSize, self->_timers];

  return v6;
}

- (id)initForMediaType:(unsigned __int8)type fileSize:(unint64_t)size
{
  v7 = PLImportGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v17.receiver = self;
    v17.super_class = PHImportTimerCollection;
    v9 = [(PHImportTimerCollection *)&v17 init];
    v10 = v9;
    if (v9)
    {
      v9->_mediaType = type;
      v9->_fileSize = size;
      v11 = objc_opt_new();
      timers = v10->_timers;
      v10->_timers = v11;

      indexSet = [MEMORY[0x1E696AD50] indexSet];
      runningTimers = v10->_runningTimers;
      v10->_runningTimers = indexSet;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end