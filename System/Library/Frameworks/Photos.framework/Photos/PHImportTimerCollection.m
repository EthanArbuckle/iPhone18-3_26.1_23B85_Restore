@interface PHImportTimerCollection
- (double)duration:(unsigned __int8)a3;
- (id)description;
- (id)initForMediaType:(unsigned __int8)a3 fileSize:(unint64_t)a4;
- (id)startTiming:(unsigned __int8)a3 subtype:(unsigned __int8)a4;
- (void)processTimesOfType:(unsigned __int8)a3 withBlock:(id)a4;
- (void)stopTiming:(id)a3;
@end

@implementation PHImportTimerCollection

- (double)duration:(unsigned __int8)a3
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
  [(PHImportTimerCollection *)self processTimesOfType:a3 withBlock:v5];
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

- (void)processTimesOfType:(unsigned __int8)a3 withBlock:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
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
          if ([v12 type] == v4)
          {
            v13 = [v12 startTime];
            v14 = [v12 endTime];
            v6[2](v6, v13, v14);
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)stopTiming:(id)a3
{
  runningTimers = self->_runningTimers;
  v4 = a3;
  -[NSMutableIndexSet removeIndex:](runningTimers, "removeIndex:", [v4 type]);
  [v4 stop];
}

- (id)startTiming:(unsigned __int8)a3 subtype:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  [(NSMutableIndexSet *)self->_runningTimers addIndex:a3];
  v7 = [[PHImportTimer alloc] initWithType:v5 subtype:v4];
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

- (id)initForMediaType:(unsigned __int8)a3 fileSize:(unint64_t)a4
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
      v9->_mediaType = a3;
      v9->_fileSize = a4;
      v11 = objc_opt_new();
      timers = v10->_timers;
      v10->_timers = v11;

      v13 = [MEMORY[0x1E696AD50] indexSet];
      runningTimers = v10->_runningTimers;
      v10->_runningTimers = v13;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end