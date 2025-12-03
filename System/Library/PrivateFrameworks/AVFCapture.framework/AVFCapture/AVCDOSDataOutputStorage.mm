@interface AVCDOSDataOutputStorage
- (AVCDOSDataOutputStorage)initWithDataOutput:(id)output;
- (BOOL)hasAllExpectedSynchronizedDataForLeaderTimestamp:(id *)timestamp;
- (BOOL)isLive;
- (void)dealloc;
- (void)updateDelegateOverrideCallbackQueueQOSClass:(unsigned int)class;
@end

@implementation AVCDOSDataOutputStorage

- (AVCDOSDataOutputStorage)initWithDataOutput:(id)output
{
  v6.receiver = self;
  v6.super_class = AVCDOSDataOutputStorage;
  v4 = [(AVCDOSDataOutputStorage *)&v6 init];
  if (v4)
  {
    v4->_dataOutput = output;
    v4->_synchronizedDataQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
    {
      v4->_delegateOverrideCallbackQueue = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avfoundation.dataoutputsynchronizer.dataoutputqueue_%@_%@", v4->_dataOutput, objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")), "UTF8String"], 0);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCDOSDataOutputStorage;
  [(AVCDOSDataOutputStorage *)&v3 dealloc];
}

- (void)updateDelegateOverrideCallbackQueueQOSClass:(unsigned int)class
{
  dispatch_sync(self->_delegateOverrideCallbackQueue, &__block_literal_global_21);
  dispatch_release(self->_delegateOverrideCallbackQueue);
  v5 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avfoundation.dataoutputsynchronizer.dataoutputqueue_%@_%@", self->_dataOutput, objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")), "UTF8String"];
  v6 = dispatch_queue_attr_make_with_qos_class(0, class, 0);
  self->_delegateOverrideCallbackQueue = dispatch_queue_create(v5, v6);
}

- (BOOL)isLive
{
  v2 = [-[AVCaptureDataOutputDelegateOverride connections](self->_dataOutput "connections")];

  return [v2 isLive];
}

- (BOOL)hasAllExpectedSynchronizedDataForLeaderTimestamp:(id *)timestamp
{
  if (![(NSMutableArray *)[(AVCDOSDataOutputStorage *)self synchronizedDataQueue] count])
  {
    return 0;
  }

  if (![(AVCDOSDataOutputStorage *)self timestampAdjustmentsDataQueue])
  {
    v7 = [(NSMutableArray *)[(AVCDOSDataOutputStorage *)self synchronizedDataQueue] objectAtIndexedSubscript:0];
    if (v7)
    {
      [v7 timestamp];
      goto LABEL_10;
    }

LABEL_9:
    memset(&time1, 0, sizeof(time1));
    goto LABEL_10;
  }

  v5 = [(NSMutableArray *)[(AVCDOSDataOutputStorage *)self synchronizedDataQueue] objectAtIndexedSubscript:0];
  if (!v5)
  {
    return 0;
  }

  [v5 adjustedTimestamp];
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)[(AVCDOSDataOutputStorage *)self synchronizedDataQueue] objectAtIndexedSubscript:0];
  if (!v6)
  {
    goto LABEL_9;
  }

  [v6 adjustedTimestamp];
LABEL_10:
  v26 = time1;
  time1 = *timestamp;
  time2 = v26;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 0;
  }

  [(AVCDOSDataOutputStorage *)self dataOutput];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataOutput = [(AVCDOSDataOutputStorage *)self dataOutput];
    v9 = [MEMORY[0x1E695DFA8] setWithArray:{-[AVCaptureDataOutputDelegateOverride metadataObjectTypes](dataOutput, "metadataObjectTypes")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    synchronizedDataQueue = [(AVCDOSDataOutputStorage *)self synchronizedDataQueue];
    v11 = [(NSMutableArray *)synchronizedDataQueue countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(synchronizedDataQueue);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (v15)
          {
            [*(*(&v19 + 1) + 8 * i) adjustedTimestamp];
            if (v17)
            {
              [v9 minusSet:{objc_msgSend(v15, "handledMetadataObjectTypes")}];
            }
          }

          else
          {
            v17 = 0;
          }
        }

        v12 = [(NSMutableArray *)synchronizedDataQueue countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      return 0;
    }
  }

  return 1;
}

@end