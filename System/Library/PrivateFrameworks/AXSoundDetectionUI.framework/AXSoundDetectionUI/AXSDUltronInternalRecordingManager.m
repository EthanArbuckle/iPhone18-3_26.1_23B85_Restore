@interface AXSDUltronInternalRecordingManager
+ (BOOL)_cleanupUltronFiles:(id)a3;
+ (BOOL)isEnrolled;
+ (BOOL)wasPrompted;
+ (id)_directory;
+ (id)_retrieveFilesOlderThan:(double)a3;
+ (id)defaults;
+ (void)_reduceFileDirectorySize;
+ (void)cleanupUltron;
+ (void)enroll;
+ (void)setPrompted;
+ (void)unenroll;
- (AXSDUltronInternalRecordingManager)initWithSampleLength:(double)a3 bufferSize:(double)a4;
- (id)audioFileSettings;
- (id)getDictionaryForListenType;
- (void)_recordResultToFile:(id)a3;
- (void)dealloc;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)saveDetectionResult:(id)a3;
- (void)trackBuffer:(id)a3 atTime:(id)a4;
@end

@implementation AXSDUltronInternalRecordingManager

- (AXSDUltronInternalRecordingManager)initWithSampleLength:(double)a3 bufferSize:(double)a4
{
  v27.receiver = self;
  v27.super_class = AXSDUltronInternalRecordingManager;
  v6 = [(AXSDUltronInternalRecordingManager *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.ax.ultron.file_write_q", 0);
    fileProcessingQueue = v6->_fileProcessingQueue;
    v6->_fileProcessingQueue = v7;

    v6->_sampleLength = a3;
    v9 = [[AXSDRingBuffer alloc] initWithCount:vcvtpd_u64_f64(20.0 / (a3 * a4))];
    audioRingBuffer = v6->_audioRingBuffer;
    v6->_audioRingBuffer = v9;

    v11 = objc_opt_new();
    currentDetections = v6->_currentDetections;
    v6->_currentDetections = v11;

    v13 = objc_opt_new();
    detectionResultCollection = v6->_detectionResultCollection;
    v6->_detectionResultCollection = v13;

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke;
    v25 = &unk_278BDD248;
    v26 = v6;
    AXPerformBlockOnMainThread();
    v15 = MEMORY[0x277CBEBB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_2;
    v20[3] = &unk_278BDD270;
    v16 = v26;
    v21 = v16;
    v17 = [v15 scheduledTimerWithTimeInterval:1 repeats:v20 block:86400.0];
    cleanupTimer = v16->_cleanupTimer;
    v16->_cleanupTimer = v17;
  }

  return v6;
}

uint64_t __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 cleanupUltron];
}

void __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  AXPerformBlockOnMainThread();
}

uint64_t __70__AXSDUltronInternalRecordingManager_initWithSampleLength_bufferSize___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 cleanupUltron];
}

- (void)dealloc
{
  [(NSTimer *)self->_cleanupTimer invalidate];
  v3.receiver = self;
  v3.super_class = AXSDUltronInternalRecordingManager;
  [(AXSDUltronInternalRecordingManager *)&v3 dealloc];
}

+ (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];

  return v2;
}

+ (BOOL)isEnrolled
{
  v2 = [a1 defaults];
  v3 = [v2 stringForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
  v4 = v3 != 0;

  return v4;
}

+ (void)enroll
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 defaults];
  v2 = [v1 stringForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)unenroll
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AXSDUltronInternalRecordingManager unenroll];
  }

  v4 = [a1 defaults];
  [v4 removeObjectForKey:@"com.apple.accessibility.ultron.user_identifier_key"];
}

+ (BOOL)wasPrompted
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"com.apple.accessibility.ultron.user_identifier_prompt_key"];

  return v3;
}

+ (void)setPrompted
{
  v2 = [a1 defaults];
  [v2 setBool:1 forKey:@"com.apple.accessibility.ultron.user_identifier_prompt_key"];

  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[AXSDUltronInternalRecordingManager setPrompted];
  }
}

+ (void)cleanupUltron
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() defaults];
  v4 = [v3 objectForKey:@"com.apple.accessibility.ultron.last_cleanup_key"];

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v5 dateByAddingTimeInterval:-86400.0];

  if (v4 && ([v4 laterDate:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v4))
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "Not cleaning up Ultron Files - last cleanup was recent: %@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = [a1 _retrieveFilesOlderThan:1209600.0];
    if ([v8 count])
    {
      [a1 _cleanupUltronFiles:v8];
    }

    [a1 _reduceFileDirectorySize];
    v9 = [a1 defaults];
    v10 = [MEMORY[0x277CBEAA8] now];
    [v9 setObject:v10 forKey:@"com.apple.accessibility.ultron.last_cleanup_key"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_directory
{
  v10 = 1;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 path];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v10];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[AXSDUltronInternalRecordingManager _directory];
    }

    v7 = [a1 path];
    [v3 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = [a1 path];

  return v8;
}

+ (id)_retrieveFilesOlderThan:(double)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v23 = [v5 dateByAddingTimeInterval:v4];

  v6 = [a1 _directory];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 enumeratorAtPath:v6];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v8 nextObject];
  if (v10)
  {
    v12 = v10;
    *&v11 = 138412546;
    v22 = v11;
    do
    {
      v13 = [v6 stringByAppendingPathComponent:{v12, v22}];
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = 0;
      v15 = [v14 attributesOfItemAtPath:v13 error:&v24];
      v16 = v24;
      v17 = [v15 fileCreationDate];

      if (v16)
      {
        v18 = AXLogUltron();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v22;
          v26 = v13;
          v27 = 2112;
          v28 = v16;
          _os_log_error_impl(&dword_23D62D000, v18, OS_LOG_TYPE_ERROR, "Ultron cleanup: failed to find creation date for file %@. error: %@", buf, 0x16u);
        }
      }

      else if ([v17 compare:v23] == -1)
      {
        [v9 addObject:v13];
      }

      v19 = [v8 nextObject];

      v12 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)trackBuffer:(id)a3 atTime:(id)a4
{
  audioRingBuffer = self->_audioRingBuffer;
  v6 = a4;
  v7 = a3;
  v8 = [[AXSDTimedAudioBuffer alloc] initWithBuffer:v7 atTime:v6];

  [(AXSDRingBuffer *)audioRingBuffer addObject:v8];
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AXSDUltronInternalRecordingManager listenEngineFailedToStartWithError:];
  }
}

+ (BOOL)_cleanupUltronFiles:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v20;
    v9 = 1;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = v11;
        [v13 removeItemAtPath:v12 error:&v18];
        v7 = v18;

        if (v7)
        {
          v14 = AXLogUltron();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v12;
            v25 = 2112;
            v26 = v7;
            _os_log_error_impl(&dword_23D62D000, v14, OS_LOG_TYPE_ERROR, "Ultron cleanup: failed to remove: %@. Error: %@", buf, 0x16u);
          }

          v9 = 0;
        }

        ++v10;
        v11 = v7;
      }

      while (v6 != v10);
      v6 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (void)saveDetectionResult:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:v5];

  if (!v6)
  {
    detectionResultCollection = self->_detectionResultCollection;
    v8 = [[AXSDRingBuffer alloc] initWithCount:[(AXSDRingBuffer *)self->_audioRingBuffer count]];
    [(NSMutableDictionary *)detectionResultCollection setObject:v8 forKey:v5];
  }

  v9 = [(NSMutableDictionary *)self->_detectionResultCollection objectForKey:v5];
  [v9 addObject:v4];

  if ([v4 detected])
  {
    v10 = [(NSMutableDictionary *)self->_currentDetections objectForKey:v5];

    if (!v10)
    {
      v11 = AXLogUltron();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(AXSDUltronInternalRecordingManager *)v5 saveDetectionResult:v4];
      }

      v12 = MEMORY[0x277CBEBB8];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__AXSDUltronInternalRecordingManager_saveDetectionResult___block_invoke;
      v15[3] = &unk_278BDD298;
      v15[4] = self;
      v16 = v4;
      v13 = v5;
      v17 = v13;
      v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:10.0];
      [(NSMutableDictionary *)self->_currentDetections setObject:v14 forKey:v13];
    }
  }
}

void __58__AXSDUltronInternalRecordingManager_saveDetectionResult___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 _recordResultToFile:v4];
  [*(a1[4] + 48) removeObjectForKey:a1[6]];
  [v5 invalidate];
}

- (void)_recordResultToFile:(id)a3
{
  v4 = a3;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDUltronInternalRecordingManager _recordResultToFile:v4];
  }

  v6 = [(AXSDRingBuffer *)self->_audioRingBuffer content];
  v7 = [(NSMutableDictionary *)self->_detectionResultCollection ax_deepMutableCopy];
  fileProcessingQueue = self->_fileProcessingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke;
  v12[3] = &unk_278BDD2E8;
  v13 = v4;
  v14 = self;
  v15 = v7;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v4;
  dispatch_async(fileProcessingQueue, v12);
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke(id *a1)
{
  v132 = *MEMORY[0x277D85DE8];
  v1 = a1 + 4;
  v2 = [a1[4] identifier];
  v3 = v1[1];
  v4 = [objc_opt_class() _directory];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"%ld", v7];

  v83 = v2;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v2, v8];
  v10 = [v9 stringByAppendingPathExtension:@"wav"];
  v85 = v9;
  v11 = [v9 stringByAppendingPathExtension:@"txt"];
  v12 = MEMORY[0x277CBEBC0];
  v13 = [v4 stringByAppendingPathComponent:v10];
  v14 = [v12 fileURLWithPath:v13];

  v15 = [v4 stringByAppendingPathComponent:v11];
  v16 = objc_alloc(MEMORY[0x277CB8398]);
  v17 = [v1[1] audioFileSettings];
  v18 = [v16 initForWriting:v14 settings:v17 commonFormat:1 interleaved:1 error:0];

  v19 = v1[2];
  v20 = [*v1 identifier];
  v21 = [v19 objectForKey:v20];

  v76 = v21;
  v22 = [v21 content];
  v86 = [v22 reverseObjectEnumerator];

  v23 = vcvtpd_s64_f64(10.0 / *(v1[1] + 1));
  v77 = v15;
  v84 = v18;
  if (!*v1)
  {
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    if (v23 > 0)
    {
      v94 = 0;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  [*v1 timeRange];
  v24 = *v1;
  if (v126 >= v23)
  {
    if (v24)
    {
      [v24 timeRange];
      v25 = v123;
      v24 = *v1;
      goto LABEL_10;
    }

LABEL_9:
    v24 = 0;
    v25 = 0;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
LABEL_10:
    v94 = v25 - v23;
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_13:
    v26 = 0;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    goto LABEL_14;
  }

  v94 = 0;
  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_11:
  [v24 timeRange];
  v26 = v120;
  if (*v1)
  {
    [*v1 timeRange];
    v27 = *(&v118 + 1);
    goto LABEL_15;
  }

LABEL_14:
  v27 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
LABEL_15:
  v28 = 0;
  v29 = v27 + v26;
  v81 = v8;
  v82 = v4;
  v79 = v11;
  v80 = v10;
  v78 = v14;
  while (1)
  {
    v30 = [v86 nextObject];

    v28 = v30;
    if (!v30)
    {
      break;
    }

    if (([v30 detected] & 1) != 0 || v30 == *v1)
    {
      [v30 timeRange];
      v75 = v30;
      [v30 timeRange];
      v29 = v115 + v116;
      goto LABEL_21;
    }
  }

  v75 = 0;
LABEL_21:
  v93 = v29 + v23;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = a1[7];
  v32 = [v31 countByEnumeratingWithState:&v111 objects:v131 count:16];
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = v32;
  v34 = *v112;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v112 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v111 + 1) + 8 * i);
      v37 = [v36 time];
      if ([v37 sampleTime] >= v94)
      {
        v38 = [v36 time];
        v39 = [v38 sampleTime];

        if (v39 > v93)
        {
          continue;
        }

        v37 = [v36 buffer];
        [v84 writeFromBuffer:v37 error:0];
      }
    }

    v33 = [v31 countByEnumeratingWithState:&v111 objects:v131 count:16];
  }

  while (v33);
LABEL_32:

  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = [a1[6] allKeys];
  v89 = [obj countByEnumeratingWithState:&v107 objects:v130 count:16];
  if (v89)
  {
    v88 = *v108;
    do
    {
      v41 = 0;
      do
      {
        if (*v108 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v90 = v41;
        v42 = *(*(&v107 + 1) + 8 * v41);
        v43 = [a1[6] objectForKey:v42];
        v44 = [v43 content];

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v92 = v44;
        v45 = [v92 countByEnumeratingWithState:&v103 objects:v129 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v104;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v104 != v47)
              {
                objc_enumerationMutation(v92);
              }

              v49 = *(*(&v103 + 1) + 8 * j);
              if (v49)
              {
                [*(*(&v103 + 1) + 8 * j) timeRange];
                v50 = v100;
              }

              else
              {
                v50 = 0;
                v101 = 0u;
                v102 = 0u;
                v100 = 0u;
              }

              v51 = v50 - v94;
              if (v50 >= v94 && v50 <= v93)
              {
                v53 = [v40 objectForKeyedSubscript:v42];

                if (!v53)
                {
                  v54 = [a1[5] getDictionaryForListenType];
                  [v40 setValue:v54 forKey:v42];
                }

                [v49 confidence];
                v56 = v55;
                [v49 confidence];
                if (v57 < 0.001)
                {
                  v56 = 0.0;
                }

                v58 = [v40 objectForKey:v42];
                v59 = [v58 objectForKey:@"confidence"];
                v60 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
                [v59 addObject:v60];

                v61 = [v40 objectForKey:v42];
                v62 = [v61 objectForKey:@"timestamp"];
                v63 = [MEMORY[0x277CCABB0] numberWithLongLong:v51];
                [v62 addObject:v63];
              }
            }

            v46 = [v92 countByEnumeratingWithState:&v103 objects:v129 count:16];
          }

          while (v46);
        }

        v41 = v90 + 1;
      }

      while (v90 + 1 != v89);
      v89 = [obj countByEnumeratingWithState:&v107 objects:v130 count:16];
    }

    while (v89);
  }

  v64 = MGCopyAnswer();
  v65 = [MEMORY[0x277CBEAA8] date];
  v66 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v66 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v67 = [v66 stringFromDate:v65];
  v68 = [v84 length];

  v69 = objc_opt_new();
  v95 = v64;
  [v69 setSafeObject:v64 forKey:@"buildVersion"];
  [v69 setSafeObject:&unk_284FB2B88 forKey:@"ultronVersion"];
  [v69 setSafeObject:v83 forKey:@"listenType"];
  [v69 setSafeObject:v85 forKey:@"fileName"];
  [v69 setSafeObject:v67 forKey:@"audioStringDate"];
  [v69 setSafeObject:v40 forKey:@"confidenceValues"];
  [v69 setSafeObject:&unk_284FB2BA0 forKey:@"userFeedback"];
  v70 = [MEMORY[0x277CCABB0] numberWithLongLong:v68];
  [v69 setSafeObject:v70 forKey:@"numberOfSamples"];

  v71 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v69 options:1 error:0];
  if (v71)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83;
    block[3] = &unk_278BDD2C0;
    v72 = v77;
    v98 = v77;
    v99 = v71;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v73 = v98;
  }

  else
  {
    v73 = AXLogUltron();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_cold_1(v1, v73);
    }

    v72 = v77;
  }

  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_84;
  v96[3] = &unk_278BDD248;
  v96[4] = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v96);

  v74 = *MEMORY[0x277D85DE8];
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (a1 + 32);
  [v2 createFileAtPath:v3 contents:v4 attributes:0];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:*v5];

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83_cold_1(v7, v5, v8);
  }
}

uint64_t __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 _reduceFileDirectorySize];
}

- (id)getDictionaryForListenType
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 setValue:v3 forKey:@"timestamp"];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 setValue:v4 forKey:@"confidence"];

  return v2;
}

- (id)audioFileSettings
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8288];
  v7[0] = *MEMORY[0x277CB8280];
  v7[1] = v2;
  v8[0] = &unk_284FB2BB8;
  v8[1] = &unk_284FB2BD0;
  v3 = *MEMORY[0x277CB82B0];
  v7[2] = *MEMORY[0x277CB82A0];
  v7[3] = v3;
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = &unk_284FB2BE8;
  v7[4] = *MEMORY[0x277CB82E0];
  v8[4] = &unk_284FB2C00;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)_reduceFileDirectorySize
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Failed to get files list. Giving up on directory size reduction. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __62__AXSDUltronInternalRecordingManager__reduceFileDirectorySize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 stringByAppendingPathComponent:a2];
  v8 = [*(a1 + 32) stringByAppendingPathComponent:v6];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v9 attributesOfItemAtPath:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = *(*(a1 + 40) + 8);
  v20 = *(v13 + 40);
  v14 = [v12 attributesOfItemAtPath:v8 error:&v20];
  objc_storeStrong((v13 + 40), v20);

  v15 = *MEMORY[0x277CCA108];
  v16 = [v11 objectForKey:*MEMORY[0x277CCA108]];
  v17 = [v14 objectForKey:v15];
  v18 = [v17 compare:v16];

  return v18;
}

- (void)saveDetectionResult:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 confidence];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_recordResultToFile:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Unalbe to create JSON to write file for detection %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __58__AXSDUltronInternalRecordingManager__recordResultToFile___block_invoke_83_cold_1(char a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5[0] = 67109378;
  v5[1] = a1 & 1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_23D62D000, log, OS_LOG_TYPE_DEBUG, "Wrote data %d at %@.", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end