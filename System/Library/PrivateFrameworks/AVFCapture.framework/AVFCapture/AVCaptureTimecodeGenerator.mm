@interface AVCaptureTimecodeGenerator
+ (AVCaptureTimecodeSource)frameCountSource;
+ (AVCaptureTimecodeSource)realTimeClockSource;
- ($2E8A01A2A08DED190407574E8D555C56)generateInitialTimecode;
- ($C5587664185624E7BFF05F93290A091A)_newestTimecodeRingBufferEntry;
- (AVCaptureTimecodeGenerator)init;
- (AVCaptureTimecodeGeneratorDelegate)delegate;
- (BOOL)_timecodeIsCoherent:(id *)coherent;
- (NSArray)availableSources;
- (double)_timeOfDay;
- (id)callbackQueue;
- (void)_addTimecodeToRingBuffer:(id *)buffer timestamp:(unint64_t)timestamp;
- (void)_notifyDelegateOfSourceListUpdate:(id)update;
- (void)_notifyDelegateOfSynchronizationStatusChange:(int64_t)change filterRedundancy:(BOOL)redundancy;
- (void)_notifyDelegateOfTimecodeUpdate:(id *)update;
- (void)_openMidiTimecodeDataStreamWithUUID:(id)d success:(BOOL *)success;
- (void)_pollRingBufferStatus;
- (void)_registerMidiEndpointAsSynchronizationSource:(unsigned int)source;
- (void)_registerSynchronizationSource:(id)source;
- (void)_removeMidiEndpointAsSynchronizationSource:(unsigned int)source;
- (void)_removeSynchronizationSource:(id)source;
- (void)_resetTimecodeRingBuffer;
- (void)_scheduleTimecodeRingBufferPolling;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setTimecodeFrameDuration:(id *)duration;
- (void)startExternalSourceObserver;
- (void)startSynchronizationWithTimecodeSource:(id)source;
@end

@implementation AVCaptureTimecodeGenerator

- (AVCaptureTimecodeGenerator)init
{
  v13.receiver = self;
  v13.super_class = AVCaptureTimecodeGenerator;
  v2 = [(AVCaptureTimecodeGenerator *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_resourceLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v3->_ringBufferStatusPollingQueue = v4;
    [(NSOperationQueue *)v4 setName:@"com.apple.avfoundation.timecode.ringBufferStatusPollingQueue"];
    [(NSOperationQueue *)v3->_ringBufferStatusPollingQueue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v3->_statusNotificationSchedulingQueue = v5;
    [(NSOperationQueue *)v5 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_statusNotificationSchedulingQueue setName:@"com.apple.avfoundation.timecode.statusOperationSchedulingQueue"];
    v3->_timecodeRingBufferCapacity = 7;
    v3->_timecodeRingBuffer = malloc_type_malloc(0x150uLL, 0x1000040EED21634uLL);
    v3->_timecodeRingBufferHead = 0;
    v3->_isTimecodeRingBufferFull = 0;
    v3->_timecodeRingBufferIngestTimeStamp = 1.79769313e308;
    v3->_timecodeAlignmentOffset = 0.0;
    CMTimeMake(&v12, 1001, 30000);
    v3->_timecodeFrameDuration = v12;
    mach_timebase_info(&v3->_machTimebase);
    v3->_localGMTOffset = 0.0;
    v3->_currentSource = +[AVCaptureTimecodeGenerator frameCountSource];
    v3->_synchronizationStatus = 0;
    v3->_synchronizationTimeout = 15.0;
    v3->_delegateStorage = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(AVCaptureTimecodeGenerator *)v3 startExternalSourceObserver];
    }

    else
    {
      objc_initWeak(&v12, v3);
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __34__AVCaptureTimecodeGenerator_init__block_invoke;
      v10 = &unk_1E7875D40;
      objc_copyWeak(&v11, &v12);
      dispatch_sync(MEMORY[0x1E69E96A0], &v7);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v12);
    }

    [(AVCaptureTimecodeGenerator *)v3 _scheduleTimecodeRingBufferPolling:v7];
  }

  return v3;
}

void __34__AVCaptureTimecodeGenerator_init__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  if (objc_loadWeak(&to))
  {
    [objc_loadWeak(&to) startExternalSourceObserver];
  }

  objc_destroyWeak(&to);
}

- (NSArray)availableSources
{
  os_unfair_lock_lock(&self->_resourceLock);
  v3 = [(NSMutableArray *)self->_mutableSynchronizationSources copy];
  os_unfair_lock_unlock(&self->_resourceLock);
  return v3;
}

- (void)startExternalSourceObserver
{
  self->_mutableSynchronizationSources = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{+[AVCaptureTimecodeGenerator frameCountSource](AVCaptureTimecodeGenerator, "frameCountSource"), +[AVCaptureTimecodeGenerator realTimeClockSource](AVCaptureTimecodeGenerator, "realTimeClockSource"), 0}];
  notifyBlock[0] = MEMORY[0x1E69E9820];
  notifyBlock[1] = 3221225472;
  notifyBlock[2] = __57__AVCaptureTimecodeGenerator_startExternalSourceObserver__block_invoke;
  notifyBlock[3] = &unk_1E7876348;
  notifyBlock[4] = self;
  if (!MIDIClientCreateWithBlock(@"MIDI Discovery Client", &self->_midiSourceDiscoveryClient, notifyBlock))
  {
    v3 = MIDIGetNumberOfSources();
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        [(AVCaptureTimecodeGenerator *)self _registerMidiEndpointAsSynchronizationSource:MIDIGetSource(i)];
      }
    }
  }
}

uint64_t __57__AVCaptureTimecodeGenerator_startExternalSourceObserver__block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 3)
  {
    return [*(result + 32) _removeMidiEndpointAsSynchronizationSource:a2[4]];
  }

  if (*a2 == 2)
  {
    return [*(result + 32) _registerMidiEndpointAsSynchronizationSource:a2[4]];
  }

  return result;
}

- (void)_registerSynchronizationSource:(id)source
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  availableSources = [(AVCaptureTimecodeGenerator *)self availableSources];
  v6 = [(NSArray *)availableSources countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(availableSources);
      }

      if ([*(*(&v11 + 1) + 8 * v9) isEqual:source])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)availableSources countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    [(AVCaptureTimecodeGenerator *)self willChangeValueForKey:@"availableSources"];
    os_unfair_lock_lock(&self->_resourceLock);
    [(NSMutableArray *)self->_mutableSynchronizationSources addObject:source];
    os_unfair_lock_unlock(&self->_resourceLock);
    [(AVCaptureTimecodeGenerator *)self didChangeValueForKey:@"availableSources"];
    [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSourceListUpdate:[(AVCaptureTimecodeGenerator *)self availableSources]];
  }
}

- (void)_removeSynchronizationSource:(id)source
{
  [(AVCaptureTimecodeGenerator *)self willChangeValueForKey:@"availableSources"];
  os_unfair_lock_lock(&self->_resourceLock);
  [(NSMutableArray *)self->_mutableSynchronizationSources removeObject:source];
  v5 = [(NSMutableArray *)self->_mutableSynchronizationSources copy];
  os_unfair_lock_unlock(&self->_resourceLock);
  [(AVCaptureTimecodeGenerator *)self didChangeValueForKey:@"availableSources"];

  [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSourceListUpdate:v5];
}

- (void)_notifyDelegateOfSynchronizationStatusChange:(int64_t)change filterRedundancy:(BOOL)redundancy
{
  redundancyCopy = redundancy;
  os_unfair_lock_lock(&self->_resourceLock);
  if (redundancyCopy && self->_synchronizationStatus == change)
  {

    os_unfair_lock_unlock(&self->_resourceLock);
  }

  else
  {
    self->_synchronizationStatus = change;
    v7 = [(AVCaptureTimecodeSource *)self->_currentSource copy];
    v12 = self->_delegateStorage;
    delegate = [(AVWeakReferencingDelegateStorage *)v12 delegate];
    delegateQueue = [(AVWeakReferencingDelegateStorage *)v12 delegateQueue];
    os_unfair_lock_unlock(&self->_resourceLock);
    if (delegate)
    {
      statusNotificationSchedulingQueue = self->_statusNotificationSchedulingQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[8] = v12;
      v11 = MEMORY[0x1E69E96A0];
      v13[9] = change;
      if (delegateQueue)
      {
        v11 = delegateQueue;
      }

      v13[2] = __92__AVCaptureTimecodeGenerator__notifyDelegateOfSynchronizationStatusChange_filterRedundancy___block_invoke;
      v13[3] = &unk_1E7876370;
      v13[4] = v11;
      v13[5] = delegate;
      v13[6] = self;
      v13[7] = v7;
      [(NSOperationQueue *)statusNotificationSchedulingQueue addOperationWithBlock:v13];
    }

    else
    {
    }
  }
}

void __92__AVCaptureTimecodeGenerator__notifyDelegateOfSynchronizationStatusChange_filterRedundancy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__AVCaptureTimecodeGenerator__notifyDelegateOfSynchronizationStatusChange_filterRedundancy___block_invoke_2;
  v4[3] = &unk_1E786EDF0;
  v5 = *(a1 + 40);
  v3 = *(a1 + 72);
  v6 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v2, v4);
}

- (void)_notifyDelegateOfSourceListUpdate:(id)update
{
  os_unfair_lock_lock(&self->_resourceLock);
  v10 = self->_delegateStorage;
  os_unfair_lock_unlock(&self->_resourceLock);
  v5 = [update copy];
  delegate = [(AVWeakReferencingDelegateStorage *)v10 delegate];
  delegateQueue = [(AVWeakReferencingDelegateStorage *)v10 delegateQueue];
  if (delegate)
  {
    v8 = MEMORY[0x1E69E96A0];
    statusNotificationSchedulingQueue = self->_statusNotificationSchedulingQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[7] = v5;
    v11[8] = v10;
    if (delegateQueue)
    {
      v8 = delegateQueue;
    }

    v11[2] = __64__AVCaptureTimecodeGenerator__notifyDelegateOfSourceListUpdate___block_invoke;
    v11[3] = &unk_1E7875980;
    v11[4] = v8;
    v11[5] = delegate;
    v11[6] = self;
    [(NSOperationQueue *)statusNotificationSchedulingQueue addOperationWithBlock:v11, v10];
  }

  else
  {
  }
}

void __64__AVCaptureTimecodeGenerator__notifyDelegateOfSourceListUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AVCaptureTimecodeGenerator__notifyDelegateOfSourceListUpdate___block_invoke_2;
  block[3] = &unk_1E786EFD0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_sync(v2, block);
}

- (void)_notifyDelegateOfTimecodeUpdate:(id *)update
{
  os_unfair_lock_lock(&self->_resourceLock);
  v5 = [(AVCaptureTimecodeSource *)self->_currentSource copy];
  v11 = self->_delegateStorage;
  os_unfair_lock_unlock(&self->_resourceLock);
  delegate = [(AVWeakReferencingDelegateStorage *)v11 delegate];
  delegateQueue = [(AVWeakReferencingDelegateStorage *)v11 delegateQueue];
  if (delegate)
  {
    statusNotificationSchedulingQueue = self->_statusNotificationSchedulingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[8] = v11;
    v9 = *&update->var5.var1;
    v13 = *&update->var0;
    v10 = MEMORY[0x1E69E96A0];
    if (delegateQueue)
    {
      v10 = delegateQueue;
    }

    v12[2] = __62__AVCaptureTimecodeGenerator__notifyDelegateOfTimecodeUpdate___block_invoke;
    v12[3] = &unk_1E78763C0;
    v12[4] = v10;
    v12[5] = delegate;
    v14 = v9;
    var6 = update->var6;
    v12[6] = self;
    v12[7] = v5;
    [(NSOperationQueue *)statusNotificationSchedulingQueue addOperationWithBlock:v12];
  }

  else
  {
  }
}

void __62__AVCaptureTimecodeGenerator__notifyDelegateOfTimecodeUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__AVCaptureTimecodeGenerator__notifyDelegateOfTimecodeUpdate___block_invoke_2;
  v3[3] = &unk_1E7876398;
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v5 = *(a1 + 56);
  dispatch_sync(v2, v3);
}

uint64_t __62__AVCaptureTimecodeGenerator__notifyDelegateOfTimecodeUpdate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v4;
  v7 = *(a1 + 88);
  return [v2 timecodeGenerator:v1 didReceiveUpdate:v6 fromSource:v3];
}

- (double)_timeOfDay
{
  os_unfair_lock_lock(&self->_resourceLock);
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v4 = v3 + self->_localGMTOffset;
  os_unfair_lock_unlock(&self->_resourceLock);
  return v4;
}

- (AVCaptureTimecodeGeneratorDelegate)delegate
{
  result = self->_delegateStorage;
  if (result)
  {
    return [(AVCaptureTimecodeGeneratorDelegate *)result delegate];
  }

  return result;
}

- (id)callbackQueue
{
  result = self->_delegateStorage;
  if (result)
  {
    return [result delegateQueue];
  }

  return result;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  os_unfair_lock_lock(&self->_resourceLock);
  if (delegate)
  {
    v7 = objc_opt_new();
    self->_delegateStorage = v7;
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = MEMORY[0x1E69E96A0];
    }

    [(AVWeakReferencingDelegateStorage *)v7 setDelegate:delegate queue:queueCopy];
  }

  else
  {
    delegateStorage = self->_delegateStorage;
    if (delegateStorage)
    {

      self->_delegateStorage = 0;
    }
  }

  v10 = [(NSMutableArray *)self->_mutableSynchronizationSources copy];
  os_unfair_lock_unlock(&self->_resourceLock);

  [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSourceListUpdate:v10];
}

- (void)startSynchronizationWithTimecodeSource:(id)source
{
  if (-[NSUUID isEqual:](-[AVCaptureTimecodeSource uuid](self->_currentSource, "uuid"), "isEqual:", [source uuid]) && self->_synchronizationStatus)
  {
    selfCopy3 = self;
  }

  else
  {
    os_unfair_lock_lock(&self->_resourceLock);
    [(NSOperationQueue *)self->_statusNotificationSchedulingQueue cancelAllOperations];
    [(AVCaptureTimecodeGenerator *)self _resetTimecodeRingBuffer];
    midiClient = self->_midiClient;
    if (midiClient)
    {
      MIDIClientDispose(midiClient);
      self->_midiClient = 0;
    }

    midiInputPort = self->_midiInputPort;
    if (midiInputPort)
    {
      MIDIPortDispose(midiInputPort);
      self->_midiInputPort = 0;
    }

    self->_currentSource = [source copy];
    os_unfair_lock_unlock(&self->_resourceLock);
    [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:1 filterRedundancy:1];
    type = [source type];
    if (type == 2)
    {
      v10 = 0;
      -[AVCaptureTimecodeGenerator _openMidiTimecodeDataStreamWithUUID:success:](self, "_openMidiTimecodeDataStreamWithUUID:success:", [source uuid], &v10);
      if (v10 == 1)
      {
        [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:2 filterRedundancy:1];
        self->_timecodeRingBufferIngestTimeStamp = CACurrentMediaTime();
      }

      else
      {
        [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:5 filterRedundancy:1];
      }

      return;
    }

    if (type == 1)
    {
      [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:2 filterRedundancy:1];
      systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
      self->_localGMTOffset = [systemTimeZone secondsFromGMTForDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
      selfCopy3 = self;
    }

    else
    {
      if (type)
      {
        return;
      }

      selfCopy3 = self;
    }
  }

  [AVCaptureTimecodeGenerator _notifyDelegateOfSynchronizationStatusChange:selfCopy3 filterRedundancy:"_notifyDelegateOfSynchronizationStatusChange:filterRedundancy:"];
}

- ($2E8A01A2A08DED190407574E8D555C56)generateInitialTimecode
{
  *&retstr->var0 = 0u;
  *&retstr->var5.var1 = 0u;
  retstr->var6 = [(AVCaptureTimecodeSource *)self->_currentSource type];
  os_unfair_lock_lock(&self->_resourceLock);
  _isTimecodeRingBufferEmpty = [(AVCaptureTimecodeGenerator *)self _isTimecodeRingBufferEmpty];
  os_unfair_lock_unlock(&self->_resourceLock);
  result = [(AVCaptureTimecodeSource *)self->_currentSource utilizesRingBufferSyncDiscipline];
  if (result && _isTimecodeRingBufferEmpty)
  {
    goto LABEL_3;
  }

  result = [(AVCaptureTimecodeSource *)self->_currentSource type];
  if (result != 2)
  {
    if (result == 1)
    {
      [(AVCaptureTimecodeGenerator *)self _timeOfDay];
      v8 = fmod(v7, 86400.0);
      retstr->var0 = v8 / 3600 - 24 * (((715827883 * (v8 / 3600)) >> 34) + (715827883 * (v8 / 3600) < 0));
      retstr->var1 = v8 / 60 % 60;
      retstr->var2 = v8 % 60;
      goto LABEL_4;
    }

    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = [(AVCaptureTimecodeGenerator *)self _isTimecodeRingBufferEmpty];
  if (result)
  {
LABEL_3:
    *&retstr->var0 = 0;
    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_resourceLock);
  [(AVCaptureTimecodeGenerator *)self _newestTimecodeRingBufferEntry];
  v9 = *(&v25 + 1);
  v10 = BYTE3(v25);
  v11 = v26;
  v12 = DWORD1(v26);
  v13 = *(&v26 + 1);
  v14 = var6;
  v15 = v28;
  os_unfair_lock_unlock(&self->_resourceLock);
  *&retstr->var0 = v25;
  retstr->var5.var1 = v11;
  retstr->var5.var2 = v12;
  v16 = 0.0;
  v17 = 0.0;
  retstr->var5.var3 = v13;
  retstr->var6 = v14;
  if (v12)
  {
    v17 = v11 / v9;
    if (!v11)
    {
      v17 = 0.0;
    }
  }

  if (self->_timecodeFrameDuration.flags)
  {
    timescale = self->_timecodeFrameDuration.timescale;
    if (timescale)
    {
      v16 = timescale / self->_timecodeFrameDuration.value;
    }
  }

  v19 = v17 == v16;
  v20 = (v16 + -1.0) * v10 / (v17 + -1.0);
  if (v19)
  {
    v20 = v10;
  }

  if (v20 > 255.0)
  {
    v20 = 255.0;
  }

  retstr->var3 = v20;
  v21 = mach_absolute_time() - v15;
  info = 0;
  result = mach_timebase_info(&info);
  v22 = vcvtad_u64_f64(v16 * ((v21 * info.numer / info.denom) / 1000000000.0));
  if (v22)
  {
    v23 = *&retstr->var5.var1;
    v25 = *&retstr->var0;
    v26 = v23;
    var6 = retstr->var6;
    AVCaptureTimecodeAdvancedByFrames(&v25, v22, retstr);
  }

LABEL_4:
  *&retstr->var5.var0 = *&self->_timecodeFrameDuration.value;
  retstr->var5.var3 = self->_timecodeFrameDuration.epoch;
  return result;
}

+ (AVCaptureTimecodeSource)frameCountSource
{
  v2 = [[AVCaptureTimecodeSource alloc] initWithDisplayName:@"Frame Counter" sourceType:0 uuid:tg_UUIDFromSInt32(0)];

  return v2;
}

+ (AVCaptureTimecodeSource)realTimeClockSource
{
  v2 = [[AVCaptureTimecodeSource alloc] initWithDisplayName:@"Real Time Clock" sourceType:1 uuid:tg_UUIDFromSInt32(1u)];

  return v2;
}

- (BOOL)_timecodeIsCoherent:(id *)coherent
{
  v4 = coherent->var1 <= 0x3Bu && coherent->var2 < 0x3Cu;
  if (coherent->var5.var2)
  {
    time1 = coherent->var5;
    v9 = **&MEMORY[0x1E6960CC0];
    v5 = CMTimeCompare(&time1, &v9) > 0;
  }

  else
  {
    v5 = 0;
  }

  time1 = coherent->var5;
  Seconds = CMTimeGetSeconds(&time1);
  if (Seconds <= 0.0)
  {
    v7 = 0;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v7 = llround(1.0 / Seconds);
    if (!v4)
    {
      return 0;
    }
  }

  return v7 > coherent->var3 && v5;
}

- (void)_addTimecodeToRingBuffer:(id *)buffer timestamp:(unint64_t)timestamp
{
  v7 = *&buffer->var5.var1;
  v15 = *&buffer->var0;
  v16 = v7;
  var6 = buffer->var6;
  if ([(AVCaptureTimecodeGenerator *)self _timecodeIsCoherent:&v15])
  {
    os_unfair_lock_lock(&self->_resourceLock);
    _isTimecodeRingBufferStale = [(AVCaptureTimecodeGenerator *)self _isTimecodeRingBufferStale];
    v9 = &self->_timecodeRingBuffer[self->_timecodeRingBufferHead];
    v10 = buffer->var6;
    v11 = *&buffer->var5.var1;
    *&v9->var0.var0 = *&buffer->var0;
    *&v9->var0.var5.var1 = v11;
    v9->var0.var6 = v10;
    v9->var1 = timestamp;
    v12 = (self->_timecodeRingBufferHead + 1) % self->_timecodeRingBufferCapacity;
    self->_timecodeRingBufferHead = v12;
    if (!v12)
    {
      self->_isTimecodeRingBufferFull = 1;
    }

    os_unfair_lock_unlock(&self->_resourceLock);
    if (self->_isTimecodeRingBufferFull)
    {
      if (_isTimecodeRingBufferStale)
      {
        [(AVCaptureTimecodeGenerator *)self _resetTimecodeRingBuffer];
        [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:2 filterRedundancy:1];
        v13 = *&buffer->var5.var1;
        v15 = *&buffer->var0;
        v16 = v13;
        var6 = buffer->var6;
        [(AVCaptureTimecodeGenerator *)self _addTimecodeToRingBuffer:&v15 timestamp:timestamp];
      }

      else
      {
        [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:3 filterRedundancy:1];
        v14 = *&buffer->var5.var1;
        v15 = *&buffer->var0;
        v16 = v14;
        var6 = buffer->var6;
        [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfTimecodeUpdate:&v15];
      }
    }

    self->_timecodeRingBufferIngestTimeStamp = CACurrentMediaTime();
  }
}

- ($C5587664185624E7BFF05F93290A091A)_newestTimecodeRingBufferEntry
{
  var3 = self->var0.var5.var3;
  if (var3)
  {
    goto LABEL_4;
  }

  if (self->var0.var6)
  {
    var3 = self->var1;
LABEL_4:
    v4 = *&self->var0.var5.var1 + 48 * var3;
    v5 = *(v4 - 32);
    *&retstr->var0.var0 = *(v4 - 48);
    *&retstr->var0.var5.var1 = v5;
    *&retstr->var0.var6 = *(v4 - 16);
    return self;
  }

  *&retstr->var0.var5.var1 = 0u;
  *&retstr->var0.var6 = 0u;
  *&retstr->var0.var0 = 0u;
  return self;
}

- (void)_resetTimecodeRingBuffer
{
  self->_timecodeRingBufferHead = 0;
  self->_isTimecodeRingBufferFull = 0;
  bzero(self->_timecodeRingBuffer, 48 * self->_timecodeRingBufferCapacity);
}

- (void)_scheduleTimecodeRingBufferPolling
{
  objc_initWeak(&location, self);
  ringBufferStatusPollingQueue = self->_ringBufferStatusPollingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AVCaptureTimecodeGenerator__scheduleTimecodeRingBufferPolling__block_invoke;
  v4[3] = &unk_1E7875D40;
  objc_copyWeak(&v5, &location);
  [(NSOperationQueue *)ringBufferStatusPollingQueue addOperationWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__AVCaptureTimecodeGenerator__scheduleTimecodeRingBufferPolling__block_invoke(uint64_t a1)
{
  if (objc_loadWeak((a1 + 32)))
  {
    while (1)
    {
      v2 = objc_autoreleasePoolPush();
      objc_copyWeak(&to, (a1 + 32));
      if (!objc_loadWeak(&to))
      {
        break;
      }

      [objc_loadWeak(&to) _pollRingBufferStatus];
      objc_destroyWeak(&to);
      objc_autoreleasePoolPop(v2);
      [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
      if (!objc_loadWeak((a1 + 32)))
      {
        return;
      }
    }

    objc_destroyWeak(&to);
    objc_autoreleasePoolPop(v2);
  }
}

- (void)_pollRingBufferStatus
{
  os_unfair_lock_lock(&self->_resourceLock);
  if ([(AVCaptureTimecodeGenerator *)self _isTimecodeRingBufferStale])
  {
    type = [(AVCaptureTimecodeSource *)self->_currentSource type];
    os_unfair_lock_unlock(&self->_resourceLock);
    if (type == 2)
    {

      [(AVCaptureTimecodeGenerator *)self _notifyDelegateOfSynchronizationStatusChange:4 filterRedundancy:1];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_resourceLock);
  }
}

- (void)_registerMidiEndpointAsSynchronizationSource:(unsigned int)source
{
  *outEntity = 0;
  if (!MIDIEndpointGetEntity(source, outEntity) && outEntity[0] && !MIDIEntityGetDevice(outEntity[0], &outEntity[1]) && outEntity[1] != 0)
  {
    str = 0;
    MIDIObjectGetStringProperty(outEntity[1], *MEMORY[0x1E695FCB0], &str);
    if (str)
    {
      v5 = str;
    }

    else
    {
      v5 = @"Unnamed MIDI Device";
    }

    outValue = 0;
    MIDIObjectGetIntegerProperty(outEntity[1], *MEMORY[0x1E695FCE0], &outValue);
    v6 = [[AVCaptureTimecodeSource alloc] initWithDisplayName:v5 sourceType:2 uuid:tg_UUIDFromSInt32(outValue)];
    [(AVCaptureTimecodeGenerator *)self _registerSynchronizationSource:v6];

    if (str)
    {
      CFRelease(str);
    }
  }
}

- (void)_removeMidiEndpointAsSynchronizationSource:(unsigned int)source
{
  *outEntity = 0;
  if (!MIDIEndpointGetEntity(source, outEntity) && outEntity[0] && !MIDIEntityGetDevice(outEntity[0], &outEntity[1]) && outEntity[1] != 0)
  {
    outValue = 0;
    MIDIObjectGetIntegerProperty(outEntity[1], *MEMORY[0x1E695FCE0], &outValue);
    v5 = tg_UUIDFromSInt32(outValue);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    availableSources = [(AVCaptureTimecodeGenerator *)self availableSources];
    v7 = [(NSArray *)availableSources countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(availableSources);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v11 "uuid")])
          {
            [(AVCaptureTimecodeGenerator *)self _removeSynchronizationSource:v11];
            return;
          }
        }

        v8 = [(NSArray *)availableSources countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)_openMidiTimecodeDataStreamWithUUID:(id)d success:(BOOL *)success
{
  if (success)
  {
    *success = 0;
  }

  if (!MIDIClientCreateWithBlock(@"MIDIClient", &self->_midiClient, &__block_literal_global_28))
  {
    midiClient = self->_midiClient;
    receiveBlock[0] = MEMORY[0x1E69E9820];
    receiveBlock[1] = 3221225472;
    receiveBlock[2] = __74__AVCaptureTimecodeGenerator__openMidiTimecodeDataStreamWithUUID_success___block_invoke_2;
    receiveBlock[3] = &unk_1E7876408;
    receiveBlock[4] = self;
    if (MIDIInputPortCreateWithProtocol(midiClient, @"InputPort", kMIDIProtocol_1_0, &self->_midiInputPort, receiveBlock))
    {
      MIDIClientDispose(self->_midiClient);
      self->_midiClient = 0;
    }

    else
    {
      v8 = MIDIGetNumberOfSources();
      if (!v8)
      {
        goto LABEL_25;
      }

      v9 = v8;
      v10 = 0;
      v11 = *MEMORY[0x1E695FCE0];
      v12 = *MEMORY[0x1E697B308];
      while (1)
      {
        v13 = MIDIGetSource(v10);
        *outEntity = 0;
        Entity = MIDIEndpointGetEntity(v13, &outEntity[1]);
        if (!Entity && outEntity[1])
        {
          Entity = MIDIEntityGetDevice(outEntity[1], outEntity);
        }

        if (!Entity && outEntity[0])
        {
          outValue = 0;
          MIDIObjectGetIntegerProperty(outEntity[0], v11, &outValue);
          if ((uuidEncryptionParametersInitialized & 1) == 0)
          {
            v15 = SecRandomCopyBytes(v12, 0x10uLL, &kEncryptionKey);
            if (v15 | SecRandomCopyBytes(v12, 0x10uLL, &kEncryptionIV))
            {
              tg_UUIDFromSInt32_cold_1();
            }

            uuidEncryptionParametersInitialized = 1;
          }

          dataIn[0] = 0;
          dataIn[1] = 0;
          [d getUUIDBytes:dataIn];
          dataOut[0] = 0;
          dataOut[1] = 0;
          v22 = 0;
          v16 = CCCrypt(1u, 0, 0, &kEncryptionKey, 0x10uLL, &kEncryptionIV, dataIn, 0x10uLL, dataOut, 0x10uLL, &v22);
          v17 = v22 == 16 && v16 == 0;
          v18 = bswap32(dataOut[0]);
          if (!v17)
          {
            v18 = 0;
          }

          if (outValue == v18)
          {
            break;
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_25;
        }
      }

      if (!MIDIPortConnectSource(self->_midiInputPort, v13, 0))
      {
        if (success)
        {
          *success = 1;
        }
      }

      else
      {
LABEL_25:
        MIDIClientDispose(self->_midiClient);
        self->_midiClient = 0;
        MIDIPortDispose(self->_midiInputPort);
        self->_midiInputPort = 0;
      }
    }
  }
}

uint64_t __74__AVCaptureTimecodeGenerator__openMidiTimecodeDataStreamWithUUID_success___block_invoke_2(uint64_t result, uint64_t a2)
{
  v16 = result;
  *(&_block_invoke_timecode + 8) = *MEMORY[0x1E6960C70];
  qword_1EB3857D8 = *(MEMORY[0x1E6960C70] + 16);
  qword_1EB3857E0 = 2;
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = 0;
    v4 = (a2 + 8);
    v5 = &AVCCM_AUVoiceIOChatFlavorChangedContext;
    while (1)
    {
      v6 = *(v4 + 2);
      if (v6)
      {
        break;
      }

      v6 = 0;
LABEL_34:
      v4 = (v4 + 4 * v6 + 12);
      if (++v3 >= v2)
      {
        return result;
      }
    }

    v7 = 3;
    while (1)
    {
      v8 = *(v4 + v7);
      if (BYTE2(v8) == 242)
      {
        _block_invoke_userBits = _block_invoke_userBits & ~(15 << ((v8 >> 10) & 0x1C)) | (((v8 >> 8) & 0xF) << ((v8 >> 10) & 0x1C));
        DWORD1(_block_invoke_timecode) = _block_invoke_userBits;
      }

      else if (BYTE2(v8) == 241)
      {
        v9 = (v8 >> 12) & 7;
        if (v9 <= 3)
        {
          if (((v8 >> 12) & 7) > 1)
          {
            if (v9 == 2)
            {
              BYTE2(_block_invoke_timecode) = BYTE2(_block_invoke_timecode) & 0xF0 | BYTE1(v8) & 0xF;
            }

            else
            {
              BYTE2(_block_invoke_timecode) = BYTE2(_block_invoke_timecode) & 0xF | (16 * BYTE1(v8));
            }
          }

          else if (v9)
          {
            *(v5 + 1987) = *(v5 + 1987) & 0xF | (16 * BYTE1(v8));
          }

          else
          {
            *(v5 + 1987) = *(v5 + 1987) & 0xF0 | BYTE1(v8) & 0xF;
          }

          goto LABEL_12;
        }

        if (((v8 >> 12) & 7) <= 5)
        {
          if (v9 == 4)
          {
            BYTE1(_block_invoke_timecode) = BYTE1(_block_invoke_timecode) & 0xF0 | BYTE1(v8) & 0xF;
          }

          else
          {
            BYTE1(_block_invoke_timecode) = BYTE1(_block_invoke_timecode) & 0xF | (16 * BYTE1(v8));
          }

          goto LABEL_12;
        }

        if (v9 != 6)
        {
          LOBYTE(_block_invoke_timecode) = _block_invoke_timecode & 0xF | (16 * (BYTE1(v8) & 1));
          v10 = (v8 >> 9) & 3;
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v11 = 1000;
              v12 = 24000;
            }

            else
            {
              v11 = 1000;
LABEL_31:
              v12 = 30000;
            }
          }

          else
          {
            if (!v10)
            {
              v11 = 1001;
              goto LABEL_31;
            }

            v11 = 1000;
            v12 = 25000;
          }

          CMTimeMake(v17, v11, v12);
          *(&_block_invoke_timecode + 8) = *v17;
          qword_1EB3857D8 = *&v17[16];
          v13 = *(v16 + 32);
          v14 = *v4;
          *v17 = _block_invoke_timecode;
          *&v17[16] = unk_1EB3857D0;
          v18 = qword_1EB3857E0;
          result = [v13 _addTimecodeToRingBuffer:v17 timestamp:v14];
          v6 = *(v4 + 2);
          v5 = &AVCCM_AUVoiceIOChatFlavorChangedContext;
          goto LABEL_12;
        }

        LOBYTE(_block_invoke_timecode) = _block_invoke_timecode & 0xF0 | BYTE1(v8) & 0xF;
      }

LABEL_12:
      if (++v7 - 3 >= v6)
      {
        v2 = *(a2 + 4);
        goto LABEL_34;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_ringBufferStatusPollingQueue cancelAllOperations];
  [(NSOperationQueue *)self->_ringBufferStatusPollingQueue waitUntilAllOperationsAreFinished];
  free(self->_timecodeRingBuffer);
  midiSourceDiscoveryClient = self->_midiSourceDiscoveryClient;
  if (midiSourceDiscoveryClient)
  {
    MIDIClientDispose(midiSourceDiscoveryClient);
  }

  midiClient = self->_midiClient;
  if (midiClient)
  {
    MIDIClientDispose(midiClient);
  }

  midiInputPort = self->_midiInputPort;
  if (midiInputPort)
  {
    MIDIPortDispose(midiInputPort);
  }

  delegateStorage = self->_delegateStorage;
  if (delegateStorage)
  {

    self->_delegateStorage = 0;
  }

  v7.receiver = self;
  v7.super_class = AVCaptureTimecodeGenerator;
  [(AVCaptureTimecodeGenerator *)&v7 dealloc];
}

- (void)setTimecodeFrameDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_timecodeFrameDuration.epoch = duration->var3;
  *&self->_timecodeFrameDuration.value = v3;
}

@end