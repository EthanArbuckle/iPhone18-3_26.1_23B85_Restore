@interface ASDDSPGraphUtilities
+ (BOOL)startInjectingBoxes:(id)boxes inGraph:(id)graph error:(id *)error;
+ (BOOL)startRecordingAllBoxesInGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type error:(id *)error;
+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type andMode:(int64_t)mode error:(id *)error;
+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph toDirectory:(id)directory withMode:(int64_t)mode error:(id *)error;
+ (BOOL)stopInjectingBoxesInGraph:(id)graph;
+ (BOOL)stopRecordingBoxesInGraph:(id)graph;
+ (optional<AudioCapturerOptions>)getCapturerOptions:(int64_t)options;
@end

@implementation ASDDSPGraphUtilities

+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph toDirectory:(id)directory withMode:(int64_t)mode error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  directoryCopy = directory;
  v46 = graphCopy;
  [ASDDSPGraphUtilities stopRecordingBoxesInGraph:graphCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(graphCopy) = [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:error];

  if (graphCopy)
  {
    v39 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v39 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    date = [MEMORY[0x277CBEAA8] date];
    v44 = [v39 stringFromDate:date];

    v14 = [ASDDSPGraphUtilities getCapturerOptions:mode];
    v16 = v15;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = boxesCopy;
    v17 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (!v17)
    {
      v18 = 1;
LABEL_29:

      goto LABEL_30;
    }

    v42 = *v48;
    v18 = 1;
LABEL_4:
    v40 = v17;
    v19 = 0;
    while (1)
    {
      if (*v48 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v20 = [v46 boxWithName:*(*(&v47 + 1) + 8 * v19)];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 numOutputs] ? objc_msgSend(v21, "numOutputs") : objc_msgSend(v21, "numInputs");
        v23 = v22;
        if (v22 >= 1)
        {
          break;
        }
      }

LABEL_21:

      if (++v19 == v40)
      {
        v17 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_4;
      }
    }

    v24 = 0;
    while ((v16 & 1) != 0)
    {
      if ((v14 & 4) != 0)
      {
        v25 = MEMORY[0x277CCACA8];
        name = [v46 name];
        name2 = [v21 name];
        v28 = [v25 stringWithFormat:@"%@/%@_%@_bus%d.caf", directoryCopy, name, name2, v24];

        v29 = [v21 startRecordingPort:v24 toFile:v28 withAudioCapturerOptions:v14];
LABEL_17:
        v18 = v29;
      }

      if (error && (v18 & 1) == 0)
      {
        v53 = *MEMORY[0x277CCA450];
        v33 = MEMORY[0x277CCACA8];
        name3 = [v21 name];
        v35 = [v33 stringWithFormat:@"%@ startRecordingPort was unsuccessful", name3];
        v54 = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASDDSPGraphUtilities" code:-1 userInfo:v36];

LABEL_27:
        v18 = 0;
        goto LABEL_30;
      }

      if (v23 == ++v24)
      {
        goto LABEL_21;
      }
    }

    v30 = MEMORY[0x277CCACA8];
    name4 = [v46 name];
    name5 = [v21 name];
    v28 = [v30 stringWithFormat:@"%@/%@_%@_bus%d_%@.caf", directoryCopy, name4, name5, v24, v44];

    v29 = [v21 startRecordingPort:v24 toFile:v28];
    goto LABEL_17;
  }

  v18 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = directoryCopy;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create path at: %@ for audio DSP captures.", buf, 0xCu);
    goto LABEL_27;
  }

LABEL_30:

  v37 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

+ (BOOL)startRecordingAllBoxesInGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type error:(id *)error
{
  typeCopy = type;
  errorCopy = error;
  v29 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  streamCopy = stream;
  directoryCopy = directory;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  boxes = [graphCopy boxes];
  v15 = [boxes countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(boxes);
        }

        name = [*(*(&v24 + 1) + 8 * v17) name];
        [v13 addObject:name];

        ++v17;
      }

      while (v15 != v17);
      v15 = [boxes countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = [self startRecordingBoxes:v13 inGraph:graphCopy fromStream:streamCopy toDirectory:directoryCopy withType:typeCopy error:errorCopy];
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type andMode:(int64_t)mode error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  streamCopy = stream;
  directoryCopy = directory;
  if (type == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start Recording Boxes with AudioDebugTypeReinitializeGraph...", &v24, 2u);
    }

    isRunning = [streamCopy isRunning];
    if (isRunning)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP stream was running, suspend processing to reinitialize graph...", &v24, 2u);
      }

      [streamCopy suspendProcessing];
    }

    initialized = [graphCopy initialized];
    if (initialized)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Uninitializing graph", &v24, 2u);
      }

      [graphCopy uninitialize];
    }

    v19 = [self startRecordingBoxes:boxesCopy inGraph:graphCopy toDirectory:directoryCopy withMode:mode error:error];
    if (initialized)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Reinitializing graph", &v24, 2u);
      }

      if ([graphCopy initialize])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = boxesCopy;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Started recording %@", &v24, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[ASDDSPGraphUtilities startRecordingBoxes:inGraph:fromStream:toDirectory:withType:andMode:error:];
        }

        [ASDDSPGraphUtilities stopRecordingBoxesInGraph:graphCopy];
        if (([graphCopy initialize] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[ASDDSPGraphUtilities startRecordingBoxes:inGraph:fromStream:toDirectory:withType:andMode:error:];
        }
      }
    }

    if (isRunning)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP stream was running, resume processing after reinitialized graph...", &v24, 2u);
      }

      [streamCopy resumeProcessing];
    }
  }

  else if (type)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraphUtilities startRecordingBoxes:type inGraph:? fromStream:? toDirectory:? withType:? andMode:? error:?];
    }

    v19 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start Recording Boxes with AudioDebugTypeKeepGraphInitialized...", &v24, 2u);
    }

    v19 = [self startRecordingBoxes:boxesCopy inGraph:graphCopy toDirectory:directoryCopy error:error];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)stopRecordingBoxesInGraph:(id)graph
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  boxes = [graph boxes];
  v4 = [boxes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(boxes);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 numOutputs])
        {
          numOutputs = [v7 numOutputs];
        }

        else
        {
          numOutputs = [v7 numInputs];
        }

        v9 = numOutputs;
        if (numOutputs >= 1)
        {
          v10 = 0;
          do
          {
            [v7 stopRecordingPort:v10++];
          }

          while (v9 != v10);
        }
      }

      v4 = [boxes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)startInjectingBoxes:(id)boxes inGraph:(id)graph error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = boxesCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v7)
  {
    v9 = *v31;
    v10 = MEMORY[0x277D86220];
    *&v8 = 136315138;
    v27 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v30 + 1) + 8 * i) componentsSeparatedByString:{@":", v27}];
        if ([v12 count] >= 3)
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          v14 = [v12 objectAtIndexedSubscript:1];
          intValue = [v14 intValue];

          v16 = [v12 objectAtIndexedSubscript:2];
          if ([v12 count] == 4)
          {
            v17 = [v12 objectAtIndexedSubscript:3];
            bOOLValue = [v17 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            name = [graphCopy name];
            *buf = 138413314;
            v35 = name;
            v36 = 2112;
            v37 = v13;
            v38 = 1024;
            v39 = intValue;
            v40 = 2112;
            v41 = v16;
            v42 = 1024;
            v43 = bOOLValue;
            _os_log_impl(&dword_2415D8000, v10, OS_LOG_TYPE_DEFAULT, "Injecting file to DSP graph: %@, box: %@, bus: %d, filePath: %@, shouldLoop: %d", buf, 0x2Cu);
          }

          v20 = [graphCopy boxWithName:v13];
          v21 = v20;
          if (v20)
          {
            if (([v20 startInjectingPort:intValue toFile:v16 shouldLoop:bOOLValue] & 1) == 0)
            {

              v24 = 0;
              goto LABEL_21;
            }
          }

          else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v13;
            uTF8String = [v13 UTF8String];
            *buf = v27;
            v35 = uTF8String;
            _os_log_impl(&dword_2415D8000, v10, OS_LOG_TYPE_DEFAULT, "Box %s doesn't exist in graph", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v7);
  }

  v24 = 1;
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (BOOL)stopInjectingBoxesInGraph:(id)graph
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  boxes = [graph boxes];
  v4 = [boxes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(boxes);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 numOutputs])
        {
          numOutputs = [v7 numOutputs];
        }

        else
        {
          numOutputs = [v7 numInputs];
        }

        v9 = numOutputs;
        if (numOutputs >= 1)
        {
          v10 = 0;
          do
          {
            [v7 stopInjectingPort:v10++];
          }

          while (v9 != v10);
        }
      }

      v4 = [boxes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (optional<AudioCapturerOptions>)getCapturerOptions:(int64_t)options
{
  if ((options - 1) > 2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = qword_241642ED0[options - 1] | 4;
    v4 = 1;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (void)startRecordingBoxes:(uint64_t)a1 inGraph:fromStream:toDirectory:withType:andMode:error:.cold.3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The ASDDSPGraphAudioDebugType provided: %ld was invalid!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end