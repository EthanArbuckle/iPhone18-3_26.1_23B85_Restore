@interface AWAttentionStreamer
- ($EB925890EBEBD6850280D1FB85A9BD43)getStreamerOptionsWithMask:(unint64_t)mask;
- (AWAttentionStreamer)initWithOptions:(id)options;
- (BOOL)isStreamerRunningWithMask:(unint64_t)mask;
- (id)cancelEventStreamWithMask:(unint64_t)mask;
- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation;
- (void)setNotificationHandler:(id)handler withMask:(unint64_t)mask;
@end

@implementation AWAttentionStreamer

- ($EB925890EBEBD6850280D1FB85A9BD43)getStreamerOptionsWithMask:(unint64_t)mask
{
  if (mask == 128)
  {
    return [(StreamingOperation *)self->_faceDetectStreamer getStreamerOptions];
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (void)setNotificationHandler:(id)handler withMask:(unint64_t)mask
{
  if (mask == 128)
  {
    [(StreamingOperation *)self->_faceDetectStreamer setNotificationHandler:handler];
  }
}

- (BOOL)isStreamerRunningWithMask:(unint64_t)mask
{
  v12 = *MEMORY[0x1E69E9840];
  if (mask != 128)
  {
LABEL_9:
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }

  faceDetectStreamer = self->_faceDetectStreamer;
  if (!faceDetectStreamer)
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = absTimeNS();
        if (v8 == -1)
        {
          v9 = INFINITY;
        }

        else
        {
          v9 = v8 / 1000000000.0;
        }

        v10 = 134217984;
        v11 = v9;
        _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: No Attention streamer available", &v10, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v4 = *MEMORY[0x1E69E9840];

  return [(StreamingOperation *)faceDetectStreamer attentionStreamerRunning];
}

- (id)cancelEventStreamWithMask:(unint64_t)mask
{
  v24 = *MEMORY[0x1E69E9840];
  if (mask == 128)
  {
    faceDetectStreamer = self->_faceDetectStreamer;
    if (faceDetectStreamer)
    {
      cancelEventStream = [(StreamingOperation *)faceDetectStreamer cancelEventStream];
      goto LABEL_6;
    }

    if (currentLogLevel >= 3)
    {
      v13 = _AALog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = absTimeNS();
        if (v16 == -1)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16 / 1000000000.0;
        }

        *buf = 134217984;
        v23 = v17;
        _os_log_error_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_ERROR, "%13.5f: No Attention streamer available", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A798];
    v20 = *MEMORY[0x1E696A578];
    v21 = @" No attention streamer found";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8 = v14;
    v9 = v15;
    v10 = 19;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A798];
    v18 = *MEMORY[0x1E696A578];
    v19 = @" Invalid mask to start a stream";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = v5;
    v9 = v6;
    v10 = 22;
  }

  cancelEventStream = [v8 errorWithDomain:v9 code:v10 userInfo:v7];

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];

  return cancelEventStream;
}

- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation
{
  foundationCopy = foundation;
  v16.receiver = self;
  v16.super_class = AWAttentionStreamer;
  v6 = [(AWAttentionStreamer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_unitTestMode = test;
    v8 = awQueue(1);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = +[AWSampleLogger sharedLogger];
    sampleLogger = v7->_sampleLogger;
    v7->_sampleLogger = v10;

    v12 = off_1E7F37058;
    if (!foundationCopy)
    {
      v12 = off_1E7F37088;
    }

    v13 = [objc_alloc(*v12) initForUnitTest:v7->_unitTestMode queue:v7->_queue];
    faceDetectStreamer = v7->_faceDetectStreamer;
    v7->_faceDetectStreamer = v13;
  }

  return v7;
}

- (AWAttentionStreamer)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (!optionsCopy)
  {
    goto LABEL_7;
  }

  selfCopy = [optionsCopy valueForKey:@"eventMask"];

  if (selfCopy)
  {
    selfCopy = [v5 valueForKey:@"useAVFoundation"];

    if (selfCopy)
    {
      selfCopy = [v5 valueForKey:@"unitTest"];

      if (selfCopy)
      {
        v7 = [v5 valueForKey:@"eventMask"];
        unsignedLongValue = [v7 unsignedLongValue];

        v9 = [v5 valueForKey:@"unitTest"];
        bOOLValue = [v9 BOOLValue];

        v11 = [v5 valueForKey:@"useAVFoundation"];
        bOOLValue2 = [v11 BOOLValue];

        if (unsignedLongValue == 128)
        {
          self = [(AWAttentionStreamer *)self initForUnitTest:bOOLValue useAVFoundation:bOOLValue2];
          selfCopy = self;
          goto LABEL_8;
        }

LABEL_7:
        selfCopy = 0;
      }
    }
  }

LABEL_8:

  return selfCopy;
}

@end