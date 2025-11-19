@interface AVPlayerItemOutput
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_itemTimeForHostTimeAsCMTime:(SEL)a3;
- (AVPlayerItemOutput)init;
- (BOOL)_attachToPlayerItem:(id)a3;
- (BOOL)isDefunct;
- (CMTime)itemTimeForHostTime:(SEL)a3;
- (CMTime)itemTimeForMachAbsoluteTime:(SEL)a3;
- (OpaqueCMTimebase)_copyTimebase;
- (void)_detachFromPlayerItem;
- (void)_setTimebase:(OpaqueCMTimebase *)a3;
- (void)dealloc;
@end

@implementation AVPlayerItemOutput

- (AVPlayerItemOutput)init
{
  v10.receiver = self;
  v10.super_class = AVPlayerItemOutput;
  v3 = [(AVPlayerItemOutput *)&v10 init];
  if (v3)
  {
    v4 = objc_opt_class();
    AVRequireConcreteObject(v3, a2, v4);
    v5 = objc_alloc_init(AVPlayerItemOutputInternal);
    v3->_outputInternal = v5;
    if (v5 && (CFRetain(v5), v6 = MEMORY[0x1E696AEC0], v7 = objc_opt_class(), v8 = [objc_msgSend(v6 stringWithFormat:@"<%@: %p> timebase read/write queue", NSStringFromClass(v7), v3), "UTF8String"], (v3->_outputInternal->timebaseReadWriteQueue = av_readwrite_dispatch_queue_create(v8)) != 0))
    {
      v3->_outputInternal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v3];
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  outputInternal = self->_outputInternal;
  if (outputInternal)
  {

    v4 = self->_outputInternal;
    if (v4->timebaseReadWriteQueue)
    {
      dispatch_release(v4->timebaseReadWriteQueue);
      v4 = self->_outputInternal;
    }

    if (v4->timebase)
    {
      CFRelease(v4->timebase);
      v4 = self->_outputInternal;
    }

    CFRelease(v4);
  }

  v5.receiver = self;
  v5.super_class = AVPlayerItemOutput;
  [(AVPlayerItemOutput *)&v5 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_itemTimeForHostTimeAsCMTime:(SEL)a3
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(AVPlayerItemOutput *)self _copyTimebase];
  if (result)
  {
    v7 = result;
    HostTimeClock = CMClockGetHostTimeClock();
    v9 = *a4;
    CMSyncConvertTime(retstr, &v9, HostTimeClock, v7);
    CFRelease(v7);
  }

  return result;
}

- (CMTime)itemTimeForHostTime:(SEL)a3
{
  memset(&v8, 0, sizeof(v8));
  result = CMTimeMakeWithSeconds(&v8, hostTimeInSeconds, 1000000000);
  if (self)
  {
    v7 = v8;
    return [(AVPlayerItemOutput *)self _itemTimeForHostTimeAsCMTime:&v7];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (CMTime)itemTimeForMachAbsoluteTime:(SEL)a3
{
  memset(&v8, 0, sizeof(v8));
  result = CMClockMakeHostTimeFromSystemUnits(&v8, machAbsoluteTime);
  if (self)
  {
    v7 = v8;
    return [(AVPlayerItemOutput *)self _itemTimeForHostTimeAsCMTime:&v7];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (BOOL)_attachToPlayerItem:(id)a3
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (void)_detachFromPlayerItem
{
  v4 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v4);
}

- (OpaqueCMTimebase)_copyTimebase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  timebaseReadWriteQueue = self->_outputInternal->timebaseReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AVPlayerItemOutput__copyTimebase__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(timebaseReadWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __35__AVPlayerItemOutput__copyTimebase__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setTimebase:(OpaqueCMTimebase *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  timebaseReadWriteQueue = self->_outputInternal->timebaseReadWriteQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__AVPlayerItemOutput__setTimebase___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = a3;
  av_readwrite_dispatch_queue_write_async(timebaseReadWriteQueue, v6);
}

void __35__AVPlayerItemOutput__setTimebase___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = *(a1 + 40);
}

- (BOOL)isDefunct
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end