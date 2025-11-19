@interface ADSpeechSamplingSendAudioData
+ (BOOL)isUserOptedIn;
- (ADSpeechSamplingSendAudioData)initWithFilePaths:(id)a3 samplingType:(int64_t)a4 ignoreMinimumSampleAge:(BOOL)a5;
- (id)convertToALAC:(id)a3 samplingRate:(int)a4;
- (id)convertToWAV:(id)a3 samplingRate:(int)a4;
- (void)dealloc;
- (void)enqueueAudioDataWithAudioFileName:(id)a3 audioMetadataDict:(id)a4 folderPath:(id)a5;
- (void)sendAudioDataToServer;
@end

@implementation ADSpeechSamplingSendAudioData

- (id)convertToALAC:(id)a3 samplingRate:(int)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    samplingComponent = self->_samplingComponent;
    v33 = v7;
    v34 = [v6 lastPathComponent];
    *inPropertyData = 136315650;
    *&inPropertyData[4] = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
    *&inPropertyData[12] = 2112;
    *&inPropertyData[14] = samplingComponent;
    *&inPropertyData[22] = 2112;
    v68 = v34;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: convertToALAC: Converting file: %@", inPropertyData, 0x20u);
  }

  v8 = [v6 stringByDeletingPathExtension];
  v9 = [v8 stringByAppendingPathExtension:@"wav"];
  v10 = [v8 stringByAppendingPathExtension:@"caf"];
  v69 = 16;
  *inPropertyData = a4;
  v68 = 0x100000002;
  *&inPropertyData[8] = xmmword_1003F02E0;
  *&inStreamDesc.mBitsPerChannel = 0;
  inStreamDesc.mSampleRate = *inPropertyData;
  *&inStreamDesc.mFormatID = xmmword_1003F0310;
  *&inStreamDesc.mBytesPerFrame = &_mh_execute_header;
  inExtAudioFile = 0;
  outExtAudioFile = 0;
  v11 = [NSURL fileURLWithPath:v9];
  v12 = ExtAudioFileOpenURL(v11, &outExtAudioFile);
  if (v12)
  {
    v13 = v12;
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_samplingComponent;
      *buf = 136315906;
      v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
      v61 = 2112;
      v62 = v15;
      v63 = 2112;
      v64 = v11;
      v65 = 1024;
      v66 = v13;
      v16 = "%s %@ Sampling: convertToALAC: Failed to open input file: %@, status: %i";
      v17 = v14;
      v18 = 38;
LABEL_37:
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v19 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
  if (!v19)
  {
    v24 = [NSURL fileURLWithPath:v10];
    v25 = ExtAudioFileCreateWithURL(v24, 0x63616666u, &inStreamDesc, 0, 1u, &inExtAudioFile);
    if (v25)
    {
      v26 = v25;
      v27 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_samplingComponent;
        *buf = 136315906;
        v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
        v61 = 2112;
        v62 = v28;
        v63 = 2112;
        v64 = v24;
        v65 = 1024;
        v66 = v26;
        v29 = "%s %@ Sampling: convertToALAC: Failed to open output file: %@, status: %i";
        v30 = v27;
        v31 = 38;
LABEL_47:
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
      }
    }

    else
    {
      v35 = ExtAudioFileSetProperty(inExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
      if (!v35)
      {
        v52 = v24;
        v53 = self;
        v38 = malloc_type_malloc(0x10000uLL, 0x1000040BDFB0063uLL);
        while (1)
        {
          *&ioData.mNumberBuffers = 1;
          *&ioData.mBuffers[0].mNumberChannels = 0x800000000001;
          ioData.mBuffers[0].mData = v38;
          ioNumberFrames = 0x4000;
          v39 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
          if (v39)
          {
            v40 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
            {
              v44 = v53->_samplingComponent;
              *buf = 136315650;
              v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
              v61 = 2112;
              v62 = v44;
              v63 = 1024;
              LODWORD(v64) = v39;
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s %@ Sampling: convertToALAC: Failed to read from input file, status: %i", buf, 0x1Cu);
            }
          }

          v41 = ioNumberFrames;
          v42 = ExtAudioFileWrite(inExtAudioFile, ioNumberFrames, &ioData);
          if (v42)
          {
            break;
          }

          if (v39)
          {
            v43 = 1;
          }

          else
          {
            v43 = v41 == 0;
          }

          if (v43)
          {
            goto LABEL_40;
          }
        }

        v46 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v50 = v53->_samplingComponent;
          *buf = 136315650;
          v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
          v61 = 2112;
          v62 = v50;
          v63 = 1024;
          LODWORD(v64) = v42;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s %@ Sampling: convertToALAC: Failed to write to output file, status: %i", buf, 0x1Cu);
        }

LABEL_40:
        ExtAudioFileDispose(outExtAudioFile);
        ExtAudioFileDispose(inExtAudioFile);
        free(v38);
        v47 = AFSiriLogContextSpeech;
        if (!v42)
        {
          v24 = v52;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
          {
            v51 = v53->_samplingComponent;
            *buf = 136315650;
            v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
            v61 = 2112;
            v62 = v51;
            v63 = 2112;
            v64 = v10;
            _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: convertToALAC: Created ALAC file at path: %@", buf, 0x20u);
          }

          v22 = v10;
          goto LABEL_24;
        }

        v24 = v52;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v48 = v53->_samplingComponent;
          *buf = 136315394;
          v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
          v61 = 2112;
          v62 = v48;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s %@ Sampling: convertToALAC: ALAC conversion failed, returning nil.", buf, 0x16u);
        }

LABEL_23:
        v22 = 0;
LABEL_24:

        goto LABEL_11;
      }

      v36 = v35;
      v37 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v49 = self->_samplingComponent;
        *buf = 136315650;
        v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
        v61 = 2112;
        v62 = v49;
        v63 = 1024;
        LODWORD(v64) = v36;
        v29 = "%s %@ Sampling: convertToALAC: Failed to set output file's data format, status: %i";
        v30 = v37;
        v31 = 28;
        goto LABEL_47;
      }
    }

    if (outExtAudioFile)
    {
      ExtAudioFileDispose(outExtAudioFile);
    }

    if (inExtAudioFile)
    {
      ExtAudioFileDispose(inExtAudioFile);
    }

    goto LABEL_23;
  }

  v20 = v19;
  v21 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v45 = self->_samplingComponent;
    *buf = 136315650;
    v60 = "[ADSpeechSamplingSendAudioData convertToALAC:samplingRate:]";
    v61 = 2112;
    v62 = v45;
    v63 = 1024;
    LODWORD(v64) = v20;
    v16 = "%s %@ Sampling: convertToALAC: Failed to set input file's data format, status: %i";
    v17 = v21;
    v18 = 28;
    goto LABEL_37;
  }

LABEL_8:
  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (id)convertToWAV:(id)a3 samplingRate:(int)a4
{
  v6 = a3;
  v35 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    samplingComponent = self->_samplingComponent;
    v19 = v7;
    v20 = [v6 lastPathComponent];
    *buf = 136315650;
    v37 = "[ADSpeechSamplingSendAudioData convertToWAV:samplingRate:]";
    v38 = 2112;
    v39 = samplingComponent;
    v40 = 2112;
    v41 = v20;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: convertToWAV: Adding WAV headers to file: %@", buf, 0x20u);
  }

  v8 = [v6 stringByDeletingPathExtension];
  v9 = [v8 stringByAppendingPathExtension:@"wav"];
  v10 = [NSMutableData dataWithContentsOfFile:v6];
  v34 = 1;
  v33 = 16;
  v32 = 2 * a4;
  v31 = 2;
  v29 = 16;
  v30 = (16 * [v10 length]) >> 3;
  __ptr = v30 + 46;
  v27 = 1;
  *__error() = 0;
  v11 = fopen([v9 cStringUsingEncoding:1], "w");
  if (v11)
  {
    v12 = v11;
    fwrite("RIFF", 1uLL, 4uLL, v11);
    fwrite(&__ptr, 4uLL, 1uLL, v12);
    fwrite("WAVE", 1uLL, 4uLL, v12);
    fwrite("fmt ", 1uLL, 4uLL, v12);
    fwrite(&v29, 4uLL, 1uLL, v12);
    fwrite(&v27, 2uLL, 1uLL, v12);
    fwrite(&v34, 2uLL, 1uLL, v12);
    fwrite(&v35, 4uLL, 1uLL, v12);
    fwrite(&v32, 4uLL, 1uLL, v12);
    fwrite(&v31, 2uLL, 1uLL, v12);
    fwrite(&v33, 2uLL, 1uLL, v12);
    fwrite("data", 1uLL, 4uLL, v12);
    fwrite(&v30, 4uLL, 1uLL, v12);
    fclose(v12);
    v13 = [NSFileHandle fileHandleForUpdatingAtPath:v9];
    [v13 seekToEndOfFile];
    [v13 writeData:v10];
    [v13 closeFile];
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->_samplingComponent;
      *buf = 136315650;
      v37 = "[ADSpeechSamplingSendAudioData convertToWAV:samplingRate:]";
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v9;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: convertToWAV: Created WAV file at path: %@", buf, 0x20u);
    }

    v15 = v9;
  }

  else
  {
    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_samplingComponent;
      v23 = v16;
      v24 = *__error();
      v25 = __error();
      v26 = [NSString stringWithUTF8String:strerror(*v25)];
      *buf = 136316162;
      v37 = "[ADSpeechSamplingSendAudioData convertToWAV:samplingRate:]";
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v9;
      v42 = 1024;
      v43 = v24;
      v44 = 2112;
      v45 = v26;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s %@ Sampling: convertToWAV: Failed to open output file: %@, errno: %d, error: %@", buf, 0x30u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)enqueueAudioDataWithAudioFileName:(id)a3 audioMetadataDict:(id)a4 folderPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    samplingComponent = self->_samplingComponent;
    *buf = 136315650;
    v55 = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]";
    v56 = 2112;
    v57 = samplingComponent;
    v58 = 2112;
    v59 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: Preparing audio file: %@", buf, 0x20u);
  }

  v12 = objc_alloc_init(DUSchemaSpeechAudioRecord);
  v13 = [v9 valueForKey:@"codec"];
  [v12 setCodec:v13];

  v46 = v8;
  v14 = [v10 stringByAppendingPathComponent:v8];
  v15 = [v9 valueForKey:@"language"];
  [v12 setLanguage:v15];
  v16 = [v9 objectForKey:@"samplingRate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v17 = 0;
    goto LABEL_10;
  }

  v17 = v16;

  if (!v17)
  {
LABEL_10:
    v19 = 16000;
    goto LABEL_11;
  }

  v18 = +[NSNull null];

  v19 = 16000;
  if (v17 != v18)
  {
    if ([v17 intValue] == 8000)
    {
      v19 = 8000;
    }

    else
    {
      v19 = 16000;
    }
  }

LABEL_11:
  v20 = [(ADSpeechSamplingSendAudioData *)self convertToWAV:v14 samplingRate:v19];
  if (v20)
  {
    v45 = v15;
    v21 = [(ADSpeechSamplingSendAudioData *)self convertToALAC:v20 samplingRate:v19];
    [objc_opt_class() deleteItemAtFilePath:v20 error:0];
    if (v19 == 16000)
    {
      v22 = @"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE";
    }

    else
    {
      v22 = @"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE";
    }

    [v12 setCodec:v22];
    v25 = [v12 codec];

    if (v25)
    {
      if (v21)
      {
        v44 = v10;
        v26 = [NSUUID alloc];
        v27 = [v9 valueForKey:@"asrSelfComponentIdentifier"];
        v42 = [v26 initWithUUIDString:v27];

        v28 = [NSUUID alloc];
        v29 = [v9 valueForKey:@"interactionIdentifier"];
        v43 = [v28 initWithUUIDString:v29];

        v30 = [[SISchemaUUID alloc] initWithNSUUID:v43];
        [v12 setInteractionId:v30];

        v31 = +[ADAccount activeAccount];
        v32 = [v31 speechIdentifier];
        [v12 setSpeechIdString:v32];

        v33 = [v9 valueForKey:@"samplingTimestamp"];
        v34 = 1000 * [v33 longLongValue];

        [v12 setAudioCreatedTimestampMs:v34];
        v35 = +[AssistantSiriAnalytics sharedStream];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10026F374;
        v47[3] = &unk_100518360;
        v47[4] = self;
        v48 = v14;
        v49 = v42;
        v50 = v21;
        v51 = v12;
        v52 = v10;
        v53 = v46;
        v36 = v42;
        [v35 enqueueLargeMessageObjectFromPath:v50 assetIdentifier:v43 messageMetadata:v51 completion:v47];

        v10 = v44;
        v15 = v45;
LABEL_23:

        goto LABEL_24;
      }

      v37 = AFSiriLogContextSpeech;
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v41 = self->_samplingComponent;
      *buf = 136315394;
      v55 = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]";
      v56 = 2112;
      v57 = v41;
      v39 = "%s %@ Sampling: Failed while converting audio.";
    }

    else
    {
      v37 = AFSiriLogContextSpeech;
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v38 = self->_samplingComponent;
      *buf = 136315394;
      v55 = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]";
      v56 = 2112;
      v57 = v38;
      v39 = "%s %@ Sampling: No codec was specified in the metadata.";
    }

    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);
    goto LABEL_23;
  }

  v23 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v24 = self->_samplingComponent;
    *buf = 136315394;
    v55 = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]";
    v56 = 2112;
    v57 = v24;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to create WAV file.", buf, 0x16u);
  }

LABEL_24:
}

- (void)sendAudioDataToServer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027030C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    samplingComponent = self->_samplingComponent;
    *buf = 136315650;
    v7 = "[ADSpeechSamplingSendAudioData dealloc]";
    v8 = 2112;
    v9 = samplingComponent;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ Sampling: Deallocating instance: %p", buf, 0x20u);
  }

  v5.receiver = self;
  v5.super_class = ADSpeechSamplingSendAudioData;
  [(ADSpeechSamplingSendAudioData *)&v5 dealloc];
}

- (ADSpeechSamplingSendAudioData)initWithFilePaths:(id)a3 samplingType:(int64_t)a4 ignoreMinimumSampleAge:(BOOL)a5
{
  v8 = a3;
  if ([v8 count])
  {
    v32.receiver = self;
    v32.super_class = ADSpeechSamplingSendAudioData;
    v9 = [(ADSpeechSamplingSendAudioData *)&v32 init];
    if (v9)
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.siri.speech.sampling.upload", v10);
      queue = v9->_queue;
      v9->_queue = v11;

      v9->_samplingType = a4;
      v9->_ignoreMinimumSampleAge = a5;
      v13 = sub_100270078(a4);
      samplingComponent = v9->_samplingComponent;
      v9->_samplingComponent = v13;

      v15 = sub_10027018C(v9->_samplingType);
      samplingUtilities = v9->_samplingUtilities;
      v9->_samplingUtilities = v15;

      v17 = +[NSMutableArray array];
      audioFilePaths = v9->_audioFilePaths;
      v9->_audioFilePaths = v17;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        do
        {
          v23 = 0;
          do
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = v9->_audioFilePaths;
            v25 = [*(*(&v28 + 1) + 8 * v23) stringByAppendingPathExtension:{@"pcm", v28}];
            [(NSMutableArray *)v24 addObject:v25];

            v23 = v23 + 1;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v21);
      }
    }

    self = v9;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)isUserOptedIn
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 siriDataSharingOptInStatus];

  if (v3 != 1)
  {
    return 0;
  }

  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 siriDataSharingOptInStatus];
  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 siriDataSharingOptInStatusHistory];
  if (qword_100590550 != -1)
  {
    dispatch_once(&qword_100590550, &stru_100516C10);
  }

  v8 = byte_100590549;
  v9 = v7;
  v10 = v9;
  v11 = (v5 != 2) & v8;
  if (v11)
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_17;
  }

  v14 = v9;
  v15 = [v14 count];
  if (!v5 || v15)
  {
    v19 = [v14 firstObject];
    v17 = [v19 objectForKey:kAFSiriDataSharingOptInStatusHistoryNewOptInStatusKey];

    if (AFSiriDataSharingOptInStatusGetFromName() == v5)
    {

      v13 = 1;
      v12 = 1;
      goto LABEL_17;
    }

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v28 = v20;
      v29 = AFSiriDataSharingOptInStatusGetName();
      v30 = AFSiriDataSharingOptInStatusGetName();
      v31 = 136315906;
      v32 = "_ADIsOptInStatusExplainable";
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = v30;
      v37 = 2048;
      v38 = [v14 count];
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Inconsistent opt-in status change history. Opt-in status = %@; mostRecentOptInStatusChangeValue = %@; optInStatusHistory size = %lu", &v31, 0x2Au);
    }

    goto LABEL_15;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = AFSiriDataSharingOptInStatusGetName();
    v31 = 136315394;
    v32 = "_ADIsOptInStatusExplainable";
    v33 = 2112;
    v34 = v18;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Inconsistent opt-in status change history. optInStatusHistory is empty and currentOptInStatus is not Unspecified (%@)", &v31, 0x16u);

LABEL_15:
  }

  v12 = 0;
  v13 = 3;
LABEL_17:

  if (!v12)
  {
    v21 = @"ADOptInStateInconsistencyConditionUnexplainable";
    if (v11)
    {
      v21 = @"ADOptInStateInconsistencyConditionDemoModeWatch";
    }

    v22 = v21;
    v23 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v31 = 136315394;
      v32 = "+[ADSpeechSamplingSendAudioData isUserOptedIn]";
      v33 = 2112;
      v34 = v22;
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s Inconsistent condition: %@", &v31, 0x16u);
    }

    v24 = objc_alloc_init(OPTINSchemaOPTINClientEvent);
    v25 = objc_alloc_init(OPTINSchemaOPTINInconsistentStateDetected);
    [v25 setInconsistencyTrigger:1];
    [v25 setInconsistencyCondition:v13];
    [v24 setInconsistentStateDetected:v25];
    [v24 setHasInconsistentStateDetected:1];
    v26 = +[AssistantSiriAnalytics sharedStream];
    [v26 emitMessage:v24];
  }

  return v12;
}

@end