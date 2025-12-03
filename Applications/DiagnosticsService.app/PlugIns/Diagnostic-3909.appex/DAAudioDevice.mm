@interface DAAudioDevice
- (BOOL)initilizeAudioSessionWithError:(id *)error;
- (BOOL)isHeadphonesConnected;
- (BOOL)startPlayAndRecordWithError:(id *)error;
- (id)getAllMicrophoneSourceForPort:(id)port error:(id *)error;
- (id)getBuiltInMicrophonePortWithError:(id *)error;
- (id)numberOfInputComponents;
- (id)playSignalFile:(id)file fileName:(id)name fromOutput:(unint64_t)output atVolume:(id)volume withChannel:(id)channel sendRawData:(BOOL)data error:(id *)error;
- (void)cancel;
- (void)playAndRecordFinished;
@end

@implementation DAAudioDevice

- (id)playSignalFile:(id)file fileName:(id)name fromOutput:(unint64_t)output atVolume:(id)volume withChannel:(id)channel sendRawData:(BOOL)data error:(id *)error
{
  fileCopy = file;
  nameCopy = name;
  volumeCopy = volume;
  channelCopy = channel;
  v15 = objc_alloc_init(NSMutableArray);
  [(DAAudioDevice *)self setResults:v15];

  if (![(DAAudioDevice *)self sequentialAudioInput])
  {
    v27 = +[AVAudioSession sharedInstance];
    [v27 setAllowAllBuiltInDataSources:1];

    v28 = [(DAAudioDevice *)self getBuiltInMicrophonePortWithError:error];
    if (!v28)
    {
      goto LABEL_15;
    }

    results = v28;
    numberOfInputComponents = [(DAAudioDevice *)self getAllMicrophoneSourceForPort:v28 error:error];
    if (numberOfInputComponents)
    {
      if ([results setPreferredDataSource:numberOfInputComponents error:0])
      {
        v29 = +[AVAudioSession sharedInstance];
        v30 = [v29 setPreferredInput:results error:0];

        if (v30)
        {
          v31 = +[AVAudioSession sharedInstance];
          v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 inputNumberOfChannels]);

          v33 = [DAPlayAndRecord alloc];
          LOBYTE(v39) = [(DAAudioDevice *)self sequentialAudioInput];
          LOBYTE(v38) = data;
          v34 = [(DAPlayAndRecord *)v33 initWithFileURL:fileCopy fileName:nameCopy numberOfInputs:v32 inputID:-1 outputID:output volume:volumeCopy channel:channelCopy sendRawData:v38 delegate:self sequentialAudioInput:v39 error:error];
          [(DAAudioDevice *)self setPlayAndRecord:v34];

          LOBYTE(v34) = [(DAAudioDevice *)self startPlayAndRecordWithError:error];
          if (v34)
          {
            goto LABEL_9;
          }

LABEL_15:
          v26 = 0;
          goto LABEL_24;
        }

        v35 = -8;
      }

      else
      {
        v35 = -7;
      }

      [LegacyAudioSystemController setCode:v35 forError:error];
    }

LABEL_22:

    v26 = 0;
    goto LABEL_23;
  }

  results = [(DAAudioDevice *)self getBuiltInMicrophonePortWithError:error];
  numberOfInputComponents = [(DAAudioDevice *)self numberOfInputComponents];
  if ([numberOfInputComponents intValue] >= 1)
  {
    v18 = 0;
    while (1)
    {
      v19 = [DAPlayAndRecord alloc];
      LOBYTE(v39) = [(DAAudioDevice *)self sequentialAudioInput];
      LOBYTE(v38) = data;
      v20 = [(DAPlayAndRecord *)v19 initWithFileURL:fileCopy fileName:nameCopy numberOfInputs:&off_1000108B8 inputID:v18 outputID:output volume:volumeCopy channel:channelCopy sendRawData:v38 delegate:self sequentialAudioInput:v39 error:error];
      [(DAAudioDevice *)self setPlayAndRecord:v20];

      dataSources = [results dataSources];
      v22 = [dataSources objectAtIndex:v18];

      if (![results setPreferredDataSource:v22 error:0])
      {
        v36 = -7;
        goto LABEL_19;
      }

      v23 = +[AVAudioSession sharedInstance];
      v24 = [v23 setPreferredInput:results error:0];

      if (!v24)
      {
        break;
      }

      v25 = [(DAAudioDevice *)self startPlayAndRecordWithError:error];

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (++v18 >= [numberOfInputComponents intValue])
      {
        goto LABEL_8;
      }
    }

    v36 = -8;
LABEL_19:
    [LegacyAudioSystemController setCode:v36 forError:error];

    goto LABEL_22;
  }

LABEL_8:

LABEL_9:
  results = [(DAAudioDevice *)self results];
  v26 = [results copy];
LABEL_23:

LABEL_24:

  return v26;
}

- (BOOL)startPlayAndRecordWithError:(id *)error
{
  playAndRecord = [(DAAudioDevice *)self playAndRecord];

  if (!playAndRecord)
  {
    return 0;
  }

  if ([(DAAudioDevice *)self isHeadphonesConnected])
  {
    [LegacyAudioSystemController setCode:-54 forError:error];
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = [(DAAudioDevice *)selfCopy isCancelled];
  objc_sync_exit(selfCopy);

  if (isCancelled)
  {
    return 0;
  }

  playAndRecord2 = [(DAAudioDevice *)selfCopy playAndRecord];
  startAudioTestCase = [playAndRecord2 startAudioTestCase];

  if (startAudioTestCase)
  {
    return 0;
  }

  v11 = dispatch_semaphore_create(0);
  [(DAAudioDevice *)selfCopy setAudioPlayingSemaphore:v11];

  audioPlayingSemaphore = [(DAAudioDevice *)selfCopy audioPlayingSemaphore];
  v13 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(audioPlayingSemaphore, v13);

  return 1;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DAAudioDevice *)selfCopy setIsCancelled:1];
  objc_sync_exit(selfCopy);

  playAndRecord = [(DAAudioDevice *)selfCopy playAndRecord];

  if (playAndRecord)
  {
    playAndRecord2 = [(DAAudioDevice *)selfCopy playAndRecord];
    [playAndRecord2 cancel];
  }

  audioPlayingSemaphore = [(DAAudioDevice *)selfCopy audioPlayingSemaphore];

  if (audioPlayingSemaphore)
  {
    audioPlayingSemaphore2 = [(DAAudioDevice *)selfCopy audioPlayingSemaphore];
    dispatch_semaphore_signal(audioPlayingSemaphore2);
  }
}

- (void)playAndRecordFinished
{
  results = [(DAAudioDevice *)self results];
  playAndRecord = [(DAAudioDevice *)self playAndRecord];
  results2 = [playAndRecord results];
  [results addObject:results2];

  audioPlayingSemaphore = [(DAAudioDevice *)self audioPlayingSemaphore];

  if (audioPlayingSemaphore)
  {
    audioPlayingSemaphore2 = [(DAAudioDevice *)self audioPlayingSemaphore];
    dispatch_semaphore_signal(audioPlayingSemaphore2);
  }
}

- (BOOL)initilizeAudioSessionWithError:(id *)error
{
  v4 = +[AVAudioSession sharedInstance];
  if (![v4 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeRaw options:1 error:error])
  {
    v6 = -2;
    goto LABEL_7;
  }

  if (![v4 setMode:AVAudioSessionModeMeasurement error:0])
  {
    v6 = -3;
    goto LABEL_7;
  }

  v5 = 1;
  if (([v4 setActive:1 error:0] & 1) == 0)
  {
    v6 = -4;
LABEL_7:
    [LegacyAudioSystemController setCode:v6 forError:error];
    v5 = 0;
  }

  return v5;
}

- (id)numberOfInputComponents
{
  v2 = [(DAAudioDevice *)self getBuiltInMicrophonePortWithError:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataSources = [v2 dataSources];
  v4 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(dataSources);
        }

        dataSourceID = [*(*(&v13 + 1) + 8 * i) dataSourceID];
        intValue = [dataSourceID intValue];

        if (intValue == 1634495520)
        {
          v6 = v6;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }

      v5 = [dataSources countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [NSNumber numberWithInt:v6];

  return v11;
}

- (id)getBuiltInMicrophonePortWithError:(id *)error
{
  v4 = +[AVAudioSession sharedInstance];
  availableInputs = [v4 availableInputs];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = availableInputs;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      portType = [v11 portType];
      v13 = [portType isEqualToString:AVAudioSessionPortBuiltInMic];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [LegacyAudioSystemController setCode:-5 forError:error, v16];
  v14 = 0;
LABEL_12:

  return v14;
}

- (id)getAllMicrophoneSourceForPort:(id)port error:(id *)error
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataSources = [port dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(dataSources);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      dataSourceID = [v10 dataSourceID];
      intValue = [dataSourceID intValue];

      if (intValue == 1634495520)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [dataSources countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [LegacyAudioSystemController setCode:-6 forError:error];
  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)isHeadphonesConnected
{
  v2 = +[AVAudioSession sharedInstance];
  currentRoute = [v2 currentRoute];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  outputs = [currentRoute outputs];
  v5 = [outputs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(outputs);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        portType = [v9 portType];
        if ([portType isEqualToString:AVAudioSessionPortBuiltInReceiver])
        {
        }

        else
        {
          portType2 = [v9 portType];
          v12 = [portType2 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          if (!v12)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }
      }

      v6 = [outputs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end