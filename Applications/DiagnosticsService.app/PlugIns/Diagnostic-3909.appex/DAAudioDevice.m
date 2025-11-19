@interface DAAudioDevice
- (BOOL)initilizeAudioSessionWithError:(id *)a3;
- (BOOL)isHeadphonesConnected;
- (BOOL)startPlayAndRecordWithError:(id *)a3;
- (id)getAllMicrophoneSourceForPort:(id)a3 error:(id *)a4;
- (id)getBuiltInMicrophonePortWithError:(id *)a3;
- (id)numberOfInputComponents;
- (id)playSignalFile:(id)a3 fileName:(id)a4 fromOutput:(unint64_t)a5 atVolume:(id)a6 withChannel:(id)a7 sendRawData:(BOOL)a8 error:(id *)a9;
- (void)cancel;
- (void)playAndRecordFinished;
@end

@implementation DAAudioDevice

- (id)playSignalFile:(id)a3 fileName:(id)a4 fromOutput:(unint64_t)a5 atVolume:(id)a6 withChannel:(id)a7 sendRawData:(BOOL)a8 error:(id *)a9
{
  v43 = a3;
  v42 = a4;
  v41 = a6;
  v40 = a7;
  v15 = objc_alloc_init(NSMutableArray);
  [(DAAudioDevice *)self setResults:v15];

  if (![(DAAudioDevice *)self sequentialAudioInput])
  {
    v27 = +[AVAudioSession sharedInstance];
    [v27 setAllowAllBuiltInDataSources:1];

    v28 = [(DAAudioDevice *)self getBuiltInMicrophonePortWithError:a9];
    if (!v28)
    {
      goto LABEL_15;
    }

    v16 = v28;
    v17 = [(DAAudioDevice *)self getAllMicrophoneSourceForPort:v28 error:a9];
    if (v17)
    {
      if ([v16 setPreferredDataSource:v17 error:0])
      {
        v29 = +[AVAudioSession sharedInstance];
        v30 = [v29 setPreferredInput:v16 error:0];

        if (v30)
        {
          v31 = +[AVAudioSession sharedInstance];
          v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 inputNumberOfChannels]);

          v33 = [DAPlayAndRecord alloc];
          LOBYTE(v39) = [(DAAudioDevice *)self sequentialAudioInput];
          LOBYTE(v38) = a8;
          v34 = [(DAPlayAndRecord *)v33 initWithFileURL:v43 fileName:v42 numberOfInputs:v32 inputID:-1 outputID:a5 volume:v41 channel:v40 sendRawData:v38 delegate:self sequentialAudioInput:v39 error:a9];
          [(DAAudioDevice *)self setPlayAndRecord:v34];

          LOBYTE(v34) = [(DAAudioDevice *)self startPlayAndRecordWithError:a9];
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

      [LegacyAudioSystemController setCode:v35 forError:a9];
    }

LABEL_22:

    v26 = 0;
    goto LABEL_23;
  }

  v16 = [(DAAudioDevice *)self getBuiltInMicrophonePortWithError:a9];
  v17 = [(DAAudioDevice *)self numberOfInputComponents];
  if ([v17 intValue] >= 1)
  {
    v18 = 0;
    while (1)
    {
      v19 = [DAPlayAndRecord alloc];
      LOBYTE(v39) = [(DAAudioDevice *)self sequentialAudioInput];
      LOBYTE(v38) = a8;
      v20 = [(DAPlayAndRecord *)v19 initWithFileURL:v43 fileName:v42 numberOfInputs:&off_1000108B8 inputID:v18 outputID:a5 volume:v41 channel:v40 sendRawData:v38 delegate:self sequentialAudioInput:v39 error:a9];
      [(DAAudioDevice *)self setPlayAndRecord:v20];

      v21 = [v16 dataSources];
      v22 = [v21 objectAtIndex:v18];

      if (![v16 setPreferredDataSource:v22 error:0])
      {
        v36 = -7;
        goto LABEL_19;
      }

      v23 = +[AVAudioSession sharedInstance];
      v24 = [v23 setPreferredInput:v16 error:0];

      if (!v24)
      {
        break;
      }

      v25 = [(DAAudioDevice *)self startPlayAndRecordWithError:a9];

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (++v18 >= [v17 intValue])
      {
        goto LABEL_8;
      }
    }

    v36 = -8;
LABEL_19:
    [LegacyAudioSystemController setCode:v36 forError:a9];

    goto LABEL_22;
  }

LABEL_8:

LABEL_9:
  v16 = [(DAAudioDevice *)self results];
  v26 = [v16 copy];
LABEL_23:

LABEL_24:

  return v26;
}

- (BOOL)startPlayAndRecordWithError:(id *)a3
{
  v5 = [(DAAudioDevice *)self playAndRecord];

  if (!v5)
  {
    return 0;
  }

  if ([(DAAudioDevice *)self isHeadphonesConnected])
  {
    [LegacyAudioSystemController setCode:-54 forError:a3];
    return 0;
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(DAAudioDevice *)v6 isCancelled];
  objc_sync_exit(v6);

  if (v7)
  {
    return 0;
  }

  v8 = [(DAAudioDevice *)v6 playAndRecord];
  v9 = [v8 startAudioTestCase];

  if (v9)
  {
    return 0;
  }

  v11 = dispatch_semaphore_create(0);
  [(DAAudioDevice *)v6 setAudioPlayingSemaphore:v11];

  v12 = [(DAAudioDevice *)v6 audioPlayingSemaphore];
  v13 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v12, v13);

  return 1;
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  [(DAAudioDevice *)v2 setIsCancelled:1];
  objc_sync_exit(v2);

  v3 = [(DAAudioDevice *)v2 playAndRecord];

  if (v3)
  {
    v4 = [(DAAudioDevice *)v2 playAndRecord];
    [v4 cancel];
  }

  v5 = [(DAAudioDevice *)v2 audioPlayingSemaphore];

  if (v5)
  {
    v6 = [(DAAudioDevice *)v2 audioPlayingSemaphore];
    dispatch_semaphore_signal(v6);
  }
}

- (void)playAndRecordFinished
{
  v3 = [(DAAudioDevice *)self results];
  v4 = [(DAAudioDevice *)self playAndRecord];
  v5 = [v4 results];
  [v3 addObject:v5];

  v6 = [(DAAudioDevice *)self audioPlayingSemaphore];

  if (v6)
  {
    v7 = [(DAAudioDevice *)self audioPlayingSemaphore];
    dispatch_semaphore_signal(v7);
  }
}

- (BOOL)initilizeAudioSessionWithError:(id *)a3
{
  v4 = +[AVAudioSession sharedInstance];
  if (![v4 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeRaw options:1 error:a3])
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
    [LegacyAudioSystemController setCode:v6 forError:a3];
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
  v3 = [v2 dataSources];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) dataSourceID];
        v10 = [v9 intValue];

        if (v10 == 1634495520)
        {
          v6 = v6;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)getBuiltInMicrophonePortWithError:(id *)a3
{
  v4 = +[AVAudioSession sharedInstance];
  v5 = [v4 availableInputs];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
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
      v12 = [v11 portType];
      v13 = [v12 isEqualToString:AVAudioSessionPortBuiltInMic];

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

  [LegacyAudioSystemController setCode:-5 forError:a3, v16];
  v14 = 0;
LABEL_12:

  return v14;
}

- (id)getAllMicrophoneSourceForPort:(id)a3 error:(id *)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 dataSources];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 dataSourceID];
      v12 = [v11 intValue];

      if (v12 == 1634495520)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  [LegacyAudioSystemController setCode:-6 forError:a4];
  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)isHeadphonesConnected
{
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 currentRoute];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 outputs];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 portType];
        if ([v10 isEqualToString:AVAudioSessionPortBuiltInReceiver])
        {
        }

        else
        {
          v11 = [v9 portType];
          v12 = [v11 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          if (!v12)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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