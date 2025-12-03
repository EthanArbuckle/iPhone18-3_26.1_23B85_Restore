@interface AXSDKShotRecordingManager
+ (BOOL)_cleanupKShotFiles:(id)files;
+ (id)_retrieveFilesOlderThan:(double)than;
+ (id)defaults;
+ (id)requestForDetector:(id)detector;
+ (void)cleanupKShotFiles;
- (AXSDKShotRecordingManager)initWithSampleLength:(double)length bufferSize:(double)size;
- (AXSDKShotRecordingManagerDelegate)delegate;
- (id)_directory;
- (id)_saveCachedAudioFileTimer:(id)timer;
- (id)audioFileSettings;
- (id)path;
- (unint64_t)nRecordingsSoFar;
- (void)_cacheResultAndWaitForSave:(id)save;
- (void)_directory;
- (void)_kShotShouldSaveCurrentSoundDidChange;
- (void)_recordCachedResultToFile;
- (void)listenEngineFailedToStartWithError:(id)error;
- (void)receivedObservation:(id)observation forDetector:(id)detector;
- (void)request:(id)request didProduceResult:(id)result;
- (void)reset;
- (void)saveDetectionResult:(id)result;
- (void)setTargetDetector:(id)detector;
- (void)trackBuffer:(id)buffer atTime:(id)time;
- (void)trackBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file;
- (void)updateShouldSendSimilarityWarning:(id)warning;
@end

@implementation AXSDKShotRecordingManager

- (AXSDKShotRecordingManager)initWithSampleLength:(double)length bufferSize:(double)size
{
  v17.receiver = self;
  v17.super_class = AXSDKShotRecordingManager;
  v6 = [(AXSDKShotRecordingManager *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.ax.kshot.file_write_q", 0);
    fileProcessingQueue = v6->_fileProcessingQueue;
    v6->_fileProcessingQueue = v7;

    v6->_sampleLength = length;
    v9 = [[AXSDRingBuffer alloc] initWithCount:vcvtpd_u64_f64(60.0 / (length * size))];
    audioRingBuffer = v6->_audioRingBuffer;
    v6->_audioRingBuffer = v9;

    v6->_isFile = 0;
    [(AXSDKShotRecordingManager *)v6 reset];
    objc_initWeak(&location, v6);
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__AXSDKShotRecordingManager_initWithSampleLength_bufferSize___block_invoke;
    v14[3] = &unk_278BDD060;
    objc_copyWeak(&v15, &location);
    [mEMORY[0x277CE6F98] registerUpdateBlock:v14 forRetrieveSelector:sel_kShotShouldSaveCurrentSound withListener:v6];

    if ([MEMORY[0x277D12B60] isInternalInstall])
    {
      v13 = v6;
      AXPerformBlockOnMainThread();
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __61__AXSDKShotRecordingManager_initWithSampleLength_bufferSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _kShotShouldSaveCurrentSoundDidChange];
}

uint64_t __61__AXSDKShotRecordingManager_initWithSampleLength_bufferSize___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 cleanupKShotFiles];
}

- (void)reset
{
  [(AXSDRingBuffer *)self->_audioRingBuffer reset];
  v3 = objc_opt_new();
  currentDetections = self->_currentDetections;
  self->_currentDetections = v3;

  v5 = objc_opt_new();
  detectionResultCollection = self->_detectionResultCollection;
  self->_detectionResultCollection = v5;

  self->_isDetectionInProgress = 0;
  self->_numNonDetections = 0;
  self->_numObservations = 0;
}

- (void)setTargetDetector:(id)detector
{
  objc_storeStrong(&self->_targetDetector, detector);

  [(AXSDKShotRecordingManager *)self reset];
}

- (unint64_t)nRecordingsSoFar
{
  targetDetector = [(AXSDKShotRecordingManager *)self targetDetector];
  recordings = [targetDetector recordings];
  v4 = [recordings count];

  return v4;
}

+ (void)cleanupKShotFiles
{
  v15 = *MEMORY[0x277D85DE8];
  defaults = [objc_opt_class() defaults];
  v4 = [defaults objectForKey:@"com.apple.accessibility.kshot.last_cleanup_key"];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v5 dateByAddingTimeInterval:-86400.0];

  if (v4 && ([v4 laterDate:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v4))
  {
    v11 = AXLogUltronKShot();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "Not cleaning up KShot Files - last cleanup was recent: %@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = [self _retrieveFilesOlderThan:432000.0];
    if ([v8 count])
    {
      [self _cleanupKShotFiles:v8];
    }

    defaults2 = [self defaults];
    v10 = [MEMORY[0x277CBEAA8] now];
    [defaults2 setObject:v10 forKey:@"com.apple.accessibility.kshot.last_cleanup_key"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_cleanupKShotFiles:(id)files
{
  v30 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v4 = AXLogUltronKShot();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = filesCopy;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "Cleaning up KShot Files - at paths %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = filesCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v22;
    v11 = 1;
    *&v7 = 138412546;
    v19 = v7;
    do
    {
      v12 = 0;
      v13 = v9;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v21 + 1) + 8 * v12);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v20 = v13;
        [defaultManager removeItemAtPath:v14 error:&v20];
        v9 = v20;

        if (v9)
        {
          v16 = AXLogUltronKShot();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = v14;
            v27 = 2112;
            v28 = v9;
            _os_log_error_impl(&dword_23D62D000, v16, OS_LOG_TYPE_ERROR, "KShot cleanup: failed to remove: %@. Error: %@", buf, 0x16u);
          }

          v11 = 0;
        }

        ++v12;
        v13 = v9;
      }

      while (v8 != v12);
      v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v11 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

+ (id)_retrieveFilesOlderThan:(double)than
{
  v48 = *MEMORY[0x277D85DE8];
  if (than <= 0.0)
  {
    thanCopy = than;
  }

  else
  {
    thanCopy = -than;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v32 = [date dateByAddingTimeInterval:thanCopy];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  decodedKShotDetectors = [mEMORY[0x277CE6F98] decodedKShotDetectors];
  allValues = [decodedKShotDetectors allValues];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = allValues;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if ([v14 isModelReady])
        {
          identifier = [v14 identifier];
          v16 = [@"/var/mobile/Library/Accessibility/SoundDetectionKShot/TrainingFiles" stringByAppendingPathComponent:identifier];

          [v5 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v11);
  }

  v30 = v9;

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v33 = 0;
        v24 = [defaultManager attributesOfItemAtPath:v22 error:&v33];
        v25 = v33;
        fileCreationDate = [v24 fileCreationDate];

        if (v25)
        {
          v27 = AXLogUltronKShot();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = v22;
            v44 = 2112;
            v45 = v25;
            _os_log_error_impl(&dword_23D62D000, v27, OS_LOG_TYPE_ERROR, "KShot cleanup: failed to find creation date for file %@. error: %@", buf, 0x16u);
          }
        }

        else if ([fileCreationDate compare:v32] == -1)
        {
          [v31 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v19);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];

  return v2;
}

- (void)trackBuffer:(id)buffer atTime:(id)time
{
  audioRingBuffer = self->_audioRingBuffer;
  timeCopy = time;
  bufferCopy = buffer;
  v8 = [[AXSDTimedAudioBuffer alloc] initWithBuffer:bufferCopy atTime:timeCopy];

  [(AXSDRingBuffer *)audioRingBuffer addObject:v8];
}

- (void)trackBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file
{
  fileCopy = file;
  bufferCopy = buffer;
  timeCopy = time;
  if (self->_isFile != fileCopy)
  {
    content = AXLogUltronKShot();
    v11 = os_log_type_enabled(content, OS_LOG_TYPE_DEFAULT);
    if (fileCopy)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_23D62D000, content, OS_LOG_TYPE_DEFAULT, "AUTOMATION: RESETTING Audio Recording Buffer since we're recieving audio from a file.", buf, 2u);
      }
    }

    else
    {
      if (v11)
      {
        *v16 = 0;
        _os_log_impl(&dword_23D62D000, content, OS_LOG_TYPE_DEFAULT, "AUTOMATION: Moving from recording from a file to recording from the mic. Resetting Audio Recording Buffer", v16, 2u);
      }

      content = [(AXSDRingBuffer *)self->_audioRingBuffer content];
      v12 = [content copy];
      cachedCurrentAudioFile = self->_cachedCurrentAudioFile;
      self->_cachedCurrentAudioFile = v12;
    }

    [(AXSDRingBuffer *)self->_audioRingBuffer reset];
    self->_isFile = fileCopy;
  }

  audioRingBuffer = self->_audioRingBuffer;
  v15 = [[AXSDTimedAudioBuffer alloc] initWithBuffer:bufferCopy atTime:timeCopy];
  [(AXSDRingBuffer *)audioRingBuffer addObject:v15];
}

- (void)listenEngineFailedToStartWithError:(id)error
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [AXSDKShotRecordingManager listenEngineFailedToStartWithError:];
  }
}

- (id)path
{
  targetDetector = [(AXSDKShotRecordingManager *)self targetDetector];
  identifier = [targetDetector identifier];
  v4 = [@"/var/mobile/Library/Accessibility/SoundDetectionKShot/TrainingFiles" stringByAppendingFormat:@"/%@", identifier];

  return v4;
}

- (id)_directory
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277CCA140];
  v17[0] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v15 = 1;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(AXSDKShotRecordingManager *)self path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v15];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltronKShot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AXSDKShotRecordingManager _directory];
    }

    path2 = [(AXSDKShotRecordingManager *)self path];
    v14 = 0;
    [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:v3 error:&v14];
    v9 = v14;

    if (v9)
    {
      v10 = AXLogUltronKShot();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotRecordingManager _directory];
      }
    }
  }

  path3 = [(AXSDKShotRecordingManager *)self path];

  v12 = *MEMORY[0x277D85DE8];

  return path3;
}

- (void)receivedObservation:(id)observation forDetector:(id)detector
{
  observationCopy = observation;
  [(AXSDKShotRecordingManager *)self setNumObservations:[(AXSDKShotRecordingManager *)self numObservations]+ 1];
  if ([(AXSDKShotRecordingManager *)self numObservations]>= 5)
  {
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    if ([mEMORY[0x277CE6F98] soundDetectionKShotListeningState] == 1)
    {
    }

    else
    {
      mEMORY[0x277CE6F98]2 = [MEMORY[0x277CE6F98] sharedInstance];
      soundDetectionKShotListeningState = [mEMORY[0x277CE6F98]2 soundDetectionKShotListeningState];

      if (soundDetectionKShotListeningState != 2)
      {
        goto LABEL_16;
      }
    }

    if ([observationCopy detected])
    {
      [(AXSDKShotRecordingManager *)self saveDetectionResult:observationCopy];
      goto LABEL_16;
    }

    identifier = [observationCopy identifier];
    currentDetectionType = [(AXSDKShotRecordingManager *)self currentDetectionType];
    if (![identifier isEqualToString:currentDetectionType])
    {
      goto LABEL_14;
    }

    isDetectionInProgress = [(AXSDKShotRecordingManager *)self isDetectionInProgress];

    if (isDetectionInProgress)
    {
      [(AXSDKShotRecordingManager *)self setNumNonDetections:[(AXSDKShotRecordingManager *)self numNonDetections]+ 1];
      if ([(AXSDKShotRecordingManager *)self numNonDetections]== 6)
      {
        mEMORY[0x277CE6F98]3 = [MEMORY[0x277CE6F98] sharedInstance];
        [mEMORY[0x277CE6F98]3 setSoundDetectionKShotListeningState:3];

        [(AXSDKShotRecordingManager *)self setIsDetectionInProgress:0];
        identifier = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotRecordingManager nRecordingsSoFar](self, "nRecordingsSoFar")}];
        cachedCurrentAudio = self->_cachedCurrentAudio;
        self->_cachedCurrentAudio = 0;

        cachedCurrentResults = self->_cachedCurrentResults;
        self->_cachedCurrentResults = 0;

        cachedDetectionResult = self->_cachedDetectionResult;
        self->_cachedDetectionResult = 0;

        if (!self->_cachedCurrentAudioFile)
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __61__AXSDKShotRecordingManager_receivedObservation_forDetector___block_invoke;
          v18[3] = &unk_278BDD2C0;
          v18[4] = self;
          v19 = identifier;
          dispatch_async(MEMORY[0x277D85CD0], v18);

          goto LABEL_15;
        }

        v16 = AXLogUltron();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_DEFAULT, "AUTOMATION: Audio File Ring Buffer is not nil! Will take recording from file instead of the mic.", buf, 2u);
        }

        currentDetectionType = [(AXSDKShotRecordingManager *)self currentDetections];
        v17 = [currentDetectionType objectForKey:identifier];
        [(AXSDKShotRecordingManager *)self _cacheResultAndWaitForSave:v17];

LABEL_14:
LABEL_15:
      }
    }
  }

LABEL_16:
}

void __61__AXSDKShotRecordingManager_receivedObservation_forDetector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveCachedAudioFileTimer:*(a1 + 40)];
  [*(a1 + 32) setTimer:v2];
}

- (id)_saveCachedAudioFileTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__AXSDKShotRecordingManager__saveCachedAudioFileTimer___block_invoke;
  v9[3] = &unk_278BDD3B0;
  objc_copyWeak(&v11, &location);
  v6 = timerCopy;
  v10 = v6;
  v7 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __55__AXSDKShotRecordingManager__saveCachedAudioFileTimer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "KSHOT: Scheduled timer for adding padding to audio recording has fired!", buf, 2u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 currentDetections];
  v7 = [v6 objectForKey:*(a1 + 32)];
  [v5 _cacheResultAndWaitForSave:v7];

  v8 = [MEMORY[0x277CE6F98] sharedInstance];
  LODWORD(v6) = [v8 kShotShouldSaveCurrentSound];

  if (v6)
  {
    v9 = AXLogUltronKShot();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23D62D000, v9, OS_LOG_TYPE_DEFAULT, "KSHOT: Saving cached audio file from timer being fired.", v11, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _recordCachedResultToFile];
  }

  [v3 invalidate];
}

- (void)saveDetectionResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifier = [resultCopy identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotRecordingManager nRecordingsSoFar](self, "nRecordingsSoFar")}];
  v7 = AXLogUltronKShot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = resultCopy;
    _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "KSHOT: Detected an electronic sound, adding audio from detection result: %@", &v17, 0xCu);
  }

  [(AXSDKShotRecordingManager *)self setCurrentDetectionType:identifier];
  [(AXSDKShotRecordingManager *)self setIsDetectionInProgress:1];
  [(AXSDKShotRecordingManager *)self setNumNonDetections:0];
  v8 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:v6];

  if (!v8)
  {
    detectionResultCollection = self->_detectionResultCollection;
    v10 = [[AXSDRingBuffer alloc] initWithCount:[(AXSDRingBuffer *)self->_audioRingBuffer count]];
    [(NSMutableDictionary *)detectionResultCollection setObject:v10 forKey:v6];
  }

  v11 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:v6];
  [v11 addObject:resultCopy];

  v12 = [(NSMutableDictionary *)self->_currentDetections objectForKey:v6];

  if (!v12)
  {
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    [mEMORY[0x277CE6F98] setSoundDetectionKShotListeningState:2];

    [(NSMutableDictionary *)self->_currentDetections setObject:resultCopy forKey:v6];
    v14 = AXLogUltronKShot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [resultCopy confidence];
      v17 = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = v15;
      _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_DEFAULT, "KSHOT: Beginning audio save for sound number %@ with confidence %f", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_cacheResultAndWaitForSave:(id)save
{
  cachedCurrentAudioFile = self->_cachedCurrentAudioFile;
  if (cachedCurrentAudioFile)
  {
    saveCopy = save;
    v7 = [(NSArray *)cachedCurrentAudioFile mutableCopy];
    cachedCurrentAudio = self->_cachedCurrentAudio;
    self->_cachedCurrentAudio = v7;

    content = self->_cachedCurrentAudioFile;
    self->_cachedCurrentAudioFile = 0;
  }

  else
  {
    audioRingBuffer = self->_audioRingBuffer;
    saveCopy2 = save;
    content = [(AXSDRingBuffer *)audioRingBuffer content];
    v12 = [content mutableCopy];
    v13 = self->_cachedCurrentAudio;
    self->_cachedCurrentAudio = v12;
  }

  ax_deepMutableCopy = [(NSMutableDictionary *)self->_detectionResultCollection ax_deepMutableCopy];
  cachedCurrentResults = self->_cachedCurrentResults;
  self->_cachedCurrentResults = ax_deepMutableCopy;

  v16 = [save copy];
  cachedDetectionResult = self->_cachedDetectionResult;
  self->_cachedDetectionResult = v16;
}

- (void)_kShotShouldSaveCurrentSoundDidChange
{
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  kShotShouldSaveCurrentSound = [mEMORY[0x277CE6F98] kShotShouldSaveCurrentSound];

  if (kShotShouldSaveCurrentSound)
  {
    timer = [(AXSDKShotRecordingManager *)self timer];
    isValid = [timer isValid];

    if ((isValid & 1) == 0)
    {
      v7 = AXLogUltronKShot();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "KSHOT: Saving cached audio file from _kShotShouldSaveCurrentSoundDidChange.", buf, 2u);
      }

      [(AXSDKShotRecordingManager *)self _recordCachedResultToFile];
    }
  }

  else
  {
    cachedCurrentAudio = self->_cachedCurrentAudio;
    self->_cachedCurrentAudio = 0;

    cachedCurrentResults = self->_cachedCurrentResults;
    self->_cachedCurrentResults = 0;

    cachedDetectionResult = self->_cachedDetectionResult;
    self->_cachedDetectionResult = 0;

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotRecordingManager nRecordingsSoFar](self, "nRecordingsSoFar")}];
    [(NSMutableDictionary *)self->_currentDetections removeObjectForKey:v11];
  }
}

- (void)_recordCachedResultToFile
{
  fileProcessingQueue = self->_fileProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(fileProcessingQueue, block);
}

void __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) cachedDetectionResult];
  v3 = [v2 identifier];

  v4 = [MEMORY[0x277CE6F98] sharedInstance];
  v5 = [v4 kShotCategoryForDetectionType:v3];

  if (v5)
  {
    v6 = [*v1 targetDetector];
    v7 = [v6 identifier];

    if (v7)
    {
      v8 = [*v1 targetDetector];
      v9 = [v8 identifier];

      v10 = [*v1 _directory];
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSince1970];
      v14 = [v11 stringWithFormat:@"%ld", v13];

      v72 = v14;
      v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", v9, v3, v14];
      v70 = [v71 stringByAppendingPathExtension:@"wav"];
      v69 = [v10 stringByAppendingPathComponent:?];
      v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      v16 = objc_alloc(MEMORY[0x277CB8398]);
      v17 = [*v1 audioFileSettings];
      v68 = v15;
      v78 = [v16 initForWriting:v15 settings:v17 commonFormat:1 interleaved:1 error:0];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*v1, "nRecordingsSoFar")}];
      v19 = [*v1 cachedCurrentResults];
      v67 = v18;
      v20 = [v19 objectForKey:v18];
      v21 = [v20 content];
      v22 = [v21 reverseObjectEnumerator];

      v23 = *(*v1 + 1);
      v24 = vcvtpd_s64_f64(2.0 / v23);
      v25 = [*v1 cachedDetectionResult];
      v26 = v25;
      if (v25)
      {
        [v25 timeRange];
        v27 = v98;
      }

      else
      {
        v27 = 0;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
      }

      v76 = v5;
      v77 = v3;
      v74 = v10;
      v75 = v9;
      if (v27 >= v24)
      {
        v30 = [*v1 cachedDetectionResult];
        v31 = v30;
        if (v30)
        {
          [v30 timeRange];
          v32 = v95;
        }

        else
        {
          v32 = 0;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
        }

        v29 = v32 - v24;
      }

      else
      {
        v29 = 0;
      }

      v33 = [*v1 cachedDetectionResult];
      v34 = v33;
      if (v33)
      {
        [v33 timeRange];
        v35 = v92;
      }

      else
      {
        v35 = 0;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
      }

      v36 = 5.0 / v23;
      v37 = [*v1 cachedDetectionResult];
      v38 = v37;
      if (v37)
      {
        [v37 timeRange];
        v39 = *(&v90 + 1);
      }

      else
      {
        v39 = 0;
        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
      }

      v40 = vcvtpd_s64_f64(v36);
      v41 = v39 + v35;

      v42 = 0;
      while (1)
      {
        v43 = v42;
        v42 = [v22 nextObject];

        if (!v42)
        {
          break;
        }

        if (([v42 detected] & 1) == 0)
        {
          v44 = [*v1 cachedDetectionResult];

          if (v42 != v44)
          {
            continue;
          }
        }

        [v42 timeRange];
        [v42 timeRange];
        v41 = v87 + v88;
        break;
      }

      v65 = v42;
      v66 = v22;
      v45 = AXLogUltronKShot();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_1(v1, v45);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v73 = v1;
      v46 = [*v1 cachedCurrentAudio];
      v47 = [v46 countByEnumeratingWithState:&v83 objects:v103 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = v41 + v40;
        v50 = *v84;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v84 != v50)
            {
              objc_enumerationMutation(v46);
            }

            v52 = *(*(&v83 + 1) + 8 * i);
            v53 = [v52 time];
            if ([v53 sampleTime] >= v29)
            {
              v54 = [v52 time];
              v55 = [v54 sampleTime];

              if (v55 > v49)
              {
                continue;
              }

              v56 = [v52 buffer];
              v82 = 0;
              [v78 writeFromBuffer:v56 error:&v82];
              v53 = v82;

              if (v53)
              {
                v57 = AXLogUltronKShot();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v102 = v53;
                  _os_log_error_impl(&dword_23D62D000, v57, OS_LOG_TYPE_ERROR, "Error writing KShot audio to file: %@", buf, 0xCu);
                }
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v83 objects:v103 count:16];
        }

        while (v48);
      }

      v58 = AXLogUltronKShot();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_2();
      }

      v59 = dispatch_time(0, 1000000000);
      v60 = *v73;
      v61 = *(*v73 + 2);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_41;
      block[3] = &unk_278BDD338;
      block[4] = v60;
      v80 = v69;
      v81 = v68;
      v62 = v68;
      v63 = v69;
      dispatch_after(v59, v61, block);

      v5 = v76;
      v3 = v77;
      v28 = v75;
    }

    else
    {
      v28 = AXLogUltronKShot();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_3();
      }
    }
  }

  else
  {
    v28 = AXLogUltronKShot();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_4();
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

void __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) targetDetector];
  [v2 addRecording:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  AXPerformBlockOnMainThread();
}

void __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) targetDetector];
  v3 = [v2 recordings];
  v4 = [v3 count];

  if (v4 == 1 && ([*(a1 + 32) updateShouldSendSimilarityWarning:*(a1 + 40)], objc_msgSend(*(a1 + 32), "shouldSendSimilarityWarning")))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.kshot.model.similarity.warning", 0, 0, 1u);
  }

  else
  {
    v6 = [*(a1 + 32) delegate];
    v7 = [*(a1 + 32) targetDetector];
    [v6 savedTrainingRecordingForDetector:v7];

    v8 = [MEMORY[0x277CE6F98] sharedInstance];
    [v8 setKShotShouldSaveCurrentSound:0];
  }
}

- (void)updateShouldSendSimilarityWarning:(id)warning
{
  v39 = *MEMORY[0x277D85DE8];
  warningCopy = warning;
  [(AXSDKShotRecordingManager *)self setShouldSendSimilarityWarning:0];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  decodedKShotDetectors = [mEMORY[0x277CE6F98] decodedKShotDetectors];
  allValues = [decodedKShotDetectors allValues];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = allValues;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    *&v10 = 138412290;
    v27 = v10;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if ([v14 isModelReady])
        {
          v15 = AXLogUltronKShot();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            name = [v14 name];
            identifier = [v14 identifier];
            *buf = 138412546;
            v35 = name;
            v36 = 2112;
            v37 = identifier;
            _os_log_debug_impl(&dword_23D62D000, v15, OS_LOG_TYPE_DEBUG, "CONFIDENCE FOR DETECTOR %@ %@", buf, 0x16u);
          }

          v16 = objc_alloc(MEMORY[0x277CDC8D8]);
          v29 = 0;
          v17 = [v16 initWithURL:warningCopy error:&v29];
          v18 = v29;
          if (v18)
          {
            v24 = v18;
            v25 = AXLogUltronKShot();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [AXSDKShotRecordingManager updateShouldSendSimilarityWarning:];
            }

            goto LABEL_22;
          }

          v19 = [AXSDKShotRecordingManager requestForDetector:v14];
          v28 = 0;
          [v17 addRequest:v19 withObserver:self error:&v28];
          v20 = v28;
          if (v20)
          {
            v21 = AXLogUltronKShot();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = v27;
              v35 = v20;
              _os_log_debug_impl(&dword_23D62D000, v21, OS_LOG_TYPE_DEBUG, "KSHOT MODEL CHECK ERROR adding request %@", buf, 0xCu);
            }
          }

          else
          {
            [v17 analyze];
          }

          if (v20)
          {
            goto LABEL_22;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)requestForDetector:(id)detector
{
  detectorCopy = detector;
  mlModel = [detectorCopy mlModel];
  if (mlModel)
  {
    v21 = 0;
    v5 = [objc_alloc(MEMORY[0x277CDC900]) initWithMLModel:mlModel error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      modelDescription = [mlModel modelDescription];
      inputDescriptionsByName = [modelDescription inputDescriptionsByName];
      v12 = [inputDescriptionsByName objectForKeyedSubscript:@"td_audio"];
      multiArrayConstraint = [v12 multiArrayConstraint];
      shape = [multiArrayConstraint shape];
      lastObject = [shape lastObject];
      int64ValueSafe = [lastObject int64ValueSafe];

      CMTimeMake(&v20, int64ValueSafe, 16000);
      v19 = v20;
      [v5 setWindowDuration:&v19];
      [v5 setOverlapFactor:((int64ValueSafe + -7800.0) / int64ValueSafe)];
      v10 = v5;
    }

    else
    {
      v9 = AXLogUltronKShot();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotRecordingManager requestForDetector:detectorCopy];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = AXLogUltronKShot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotRecordingManager requestForDetector:detectorCopy];
    }

    v10 = 0;
  }

  return v10;
}

- (void)request:(id)request didProduceResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  classifications = [result classifications];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [classifications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(classifications);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        if ([identifier isEqualToString:@"1"])
        {
          [v10 confidence];
          v13 = v12;

          if (v13 > 0.85)
          {
            [(AXSDKShotRecordingManager *)self setShouldSendSimilarityWarning:1];
          }
        }

        else
        {
        }
      }

      v7 = [classifications countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)audioFileSettings
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8288];
  v7[0] = *MEMORY[0x277CB8280];
  v7[1] = v2;
  v8[0] = &unk_284FB2C18;
  v8[1] = &unk_284FB2C30;
  v3 = *MEMORY[0x277CB82B0];
  v7[2] = *MEMORY[0x277CB82A0];
  v7[3] = v3;
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = &unk_284FB2C48;
  v7[4] = *MEMORY[0x277CB82E0];
  v8[4] = &unk_284FB2C60;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (AXSDKShotRecordingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_directory
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23D62D000, v0, OS_LOG_TYPE_ERROR, "Error creating KShot directory: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 path];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "KSHOT Recording result to file at path %@.", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __54__AXSDKShotRecordingManager__recordCachedResultToFile__block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23D62D000, v0, OS_LOG_TYPE_ERROR, "We shouldn't get here unless listening type category wasn't found %@.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateShouldSendSimilarityWarning:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "KSHOT MODEL CHECK ERROR audioAnalyzer init %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)requestForDetector:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "Unable to create request from detector %@ %@. error: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)requestForDetector:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "Unable to create model from compiled model for detector %@ %@. error: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end