@interface ADDictationOnDeviceSampling
+ (id)_readDictationSampledPlist;
+ (id)sharedManager;
- (ADDictationOnDeviceSampling)init;
- (BOOL)isRequestSelectedForSampling;
- (BOOL)isSamplingDateCurrent;
- (void)_createDictationSampledPlistIfItDoesNotExist;
- (void)_writeDictationSamplingVariablesToFile:(id)file;
- (void)createDictationSampledPlistIfItDoesNotExist;
- (void)decrementRequestCount;
- (void)setRequestCount:(int64_t)count;
- (void)updateDateToCurrent;
- (void)updateRequestCountWithFlag:(BOOL)flag;
@end

@implementation ADDictationOnDeviceSampling

- (void)_writeDictationSamplingVariablesToFile:(id)file
{
  fileCopy = file;
  if (([(NSMutableDictionary *)self->_dictationSamplingVaribles writeToFile:fileCopy atomically:1]& 1) == 0)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADDictationOnDeviceSampling _writeDictationSamplingVariablesToFile:]";
      v8 = 2112;
      v9 = fileCopy;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Error while writing _dictationSamplingVaribles to plist - %@", &v6, 0x16u);
    }
  }
}

- (void)_createDictationSampledPlistIfItDoesNotExist
{
  v3 = +[AFDictationSamplingUtilities createSamplingDirectory];
  if (v3)
  {
    v4 = +[AFDictationSamplingUtilities sampledPlistFileName];
    v5 = [v3 stringByAppendingPathComponent:v4];

    v11 = 0;
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v5 isDirectory:&v11];

    if (v7 && (v11 & 1) != 0)
    {
      v8 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[ADDictationOnDeviceSampling _createDictationSampledPlistIfItDoesNotExist]";
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Error while creating plist file. The dictationSampledPlistPath - %@ - is returned as Directory. Should not happen.", buf, 0x16u);
      }
    }

    else
    {
      [(ADDictationOnDeviceSampling *)self _writeDictationSamplingVariablesToFile:v5];
    }
  }

  else
  {
    v9 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v5 = v9;
    v10 = +[AFDictationSamplingUtilities sampledLibraryDirectoryPath];
    *buf = 136315394;
    v13 = "[ADDictationOnDeviceSampling _createDictationSampledPlistIfItDoesNotExist]";
    v14 = 2112;
    v15 = v10;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Error while creating directory - %@", buf, 0x16u);
  }

LABEL_9:
}

- (void)createDictationSampledPlistIfItDoesNotExist
{
  fileQueue = self->_fileQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100249BD8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(fileQueue, block);
}

- (BOOL)isRequestSelectedForSampling
{
  v3 = +[AFPreferences sharedPreferences];
  isDictationHIPAACompliant = [v3 isDictationHIPAACompliant];

  if (isDictationHIPAACompliant)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
      v6 = "%s Dictation Sampling: HIPAA Device, Sampling is DISABLED.";
LABEL_15:
      v16 = v5;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v6, &v18, 0xCu);
    }
  }

  else
  {
    v7 = +[AFPreferences sharedPreferences];
    isDictationOnDeviceSamplingDisabled = [v7 isDictationOnDeviceSamplingDisabled];

    if (isDictationOnDeviceSamplingDisabled)
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
        v6 = "%s Dictation Sampling: Sampling is DISABLED.";
        goto LABEL_15;
      }
    }

    else
    {
      v9 = +[AFPreferences sharedPreferences];
      siriDataSharingOptInStatus = [v9 siriDataSharingOptInStatus];

      if (siriDataSharingOptInStatus == 1)
      {
        if (self->_numberOfRequestsTillNow)
        {
          if ([(ADDictationOnDeviceSampling *)self isSamplingDateCurrent])
          {
            v11 = arc4random_uniform(LODWORD(self->_numberOfRequestsTillNow) + 1) + 1;
            v12 = AFSiriLogContextConnection;
            v13 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
            if (v11 > 1)
            {
              if (!v13)
              {
                return 0;
              }

              v18 = 136315138;
              v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
              v6 = "%s Dictation Sampling: NOT Selected for sampling";
              v16 = v12;
              goto LABEL_16;
            }

            if (!v13)
            {
              return 1;
            }

            v18 = 136315138;
            v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
            v14 = "%s Dictation Sampling: Selected for sampling.";
            v15 = 1;
          }

          else
          {
            [(ADDictationOnDeviceSampling *)self setRequestCount:0];
            [(ADDictationOnDeviceSampling *)self updateDateToCurrent];
            v12 = AFSiriLogContextConnection;
            v15 = 1;
            if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
            {
              return v15;
            }

            v18 = 136315138;
            v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
            v14 = "%s Dictation Sampling: Selected for sampling - Sampling Date has been changed.";
          }
        }

        else
        {
          v12 = AFSiriLogContextConnection;
          v15 = 1;
          if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            return v15;
          }

          v18 = 136315138;
          v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
          v14 = "%s Dictation Sampling: Selected for sampling - number of requests was 0.";
        }

        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
        return v15;
      }

      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "[ADDictationOnDeviceSampling isRequestSelectedForSampling]";
        v6 = "%s Dictation Sampling: User is NOT opted in.";
        goto LABEL_15;
      }
    }
  }

  return 0;
}

- (BOOL)isSamplingDateCurrent
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self->_currentSamplingDate];
  v5 = +[NSDate date];
  v6 = [v3 date:v5 matchesComponents:v4];

  return v6;
}

- (void)updateDateToCurrent
{
  v3 = +[NSDate date];
  currentSamplingDate = self->_currentSamplingDate;
  self->_currentSamplingDate = v3;

  v5 = self->_currentSamplingDate;
  dictationSamplingVaribles = self->_dictationSamplingVaribles;
  v7 = +[AFDictationSamplingUtilities sampledCurrentSamplingDateKey];
  [(NSMutableDictionary *)dictationSamplingVaribles setObject:v5 forKeyedSubscript:v7];

  [(ADDictationOnDeviceSampling *)self createDictationSampledPlistIfItDoesNotExist];
}

- (void)setRequestCount:(int64_t)count
{
  self->_numberOfRequestsTillNow = count;
  v4 = [NSNumber numberWithInteger:?];
  [(NSMutableDictionary *)self->_dictationSamplingVaribles setObject:v4 forKeyedSubscript:@"numberOfRequestsTillNow"];

  [(ADDictationOnDeviceSampling *)self createDictationSampledPlistIfItDoesNotExist];
}

- (void)decrementRequestCount
{
  if (self->_isRequestConsideredForSampling)
  {
    numberOfRequestsTillNow = self->_numberOfRequestsTillNow;
    if (numberOfRequestsTillNow >= 1)
    {
      self->_numberOfRequestsTillNow = numberOfRequestsTillNow - 1;
      [(ADDictationOnDeviceSampling *)self setRequestCount:?];
      v3 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = "[ADDictationOnDeviceSampling decrementRequestCount]";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Done decrementing total number of dictation requests by 1, for the current sampling date.", &v4, 0xCu);
      }
    }
  }
}

- (void)updateRequestCountWithFlag:(BOOL)flag
{
  self->_isRequestConsideredForSampling = flag;
  if (flag)
  {
    [(ADDictationOnDeviceSampling *)self incrementRequestCount];
  }
}

- (ADDictationOnDeviceSampling)init
{
  v14.receiver = self;
  v14.super_class = ADDictationOnDeviceSampling;
  v2 = [(ADDictationOnDeviceSampling *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADDictationOnDeviceSampling file queue", v3);
    fileQueue = v2->_fileQueue;
    v2->_fileQueue = v4;

    _readDictationSampledPlist = [objc_opt_class() _readDictationSampledPlist];
    dictationSamplingVaribles = v2->_dictationSamplingVaribles;
    v2->_dictationSamplingVaribles = _readDictationSampledPlist;

    if ([(NSMutableDictionary *)v2->_dictationSamplingVaribles count])
    {
      v8 = v2->_dictationSamplingVaribles;
      v9 = +[AFDictationSamplingUtilities sampledCurrentSamplingDateKey];
      v10 = [(NSMutableDictionary *)v8 objectForKey:v9];
      currentSamplingDate = v2->_currentSamplingDate;
      v2->_currentSamplingDate = v10;

      v12 = [(NSMutableDictionary *)v2->_dictationSamplingVaribles objectForKey:@"numberOfRequestsTillNow"];
      v2->_numberOfRequestsTillNow = [v12 integerValue];
    }

    else
    {
      [(ADDictationOnDeviceSampling *)v2 updateDateToCurrent];
      [(ADDictationOnDeviceSampling *)v2 resetRequestCount];
    }
  }

  return v2;
}

+ (id)_readDictationSampledPlist
{
  v2 = +[AFDictationSamplingUtilities sampledLibraryDirectoryPath];
  v3 = +[AFDictationSamplingUtilities sampledPlistFileName];
  v4 = [NSString stringWithFormat:@"%@/%@", v2, v3];

  v5 = [NSURL fileURLWithPath:v4];
  v12 = 0;
  v6 = [NSMutableDictionary dictionaryWithContentsOfURL:v5 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[ADDictationOnDeviceSampling _readDictationSampledPlist]";
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Error while reading plist at location %@ - %@", buf, 0x20u);
    }

    v9 = +[NSMutableDictionary dictionary];
  }

  else
  {
    v9 = [v6 mutableCopy];
  }

  v10 = v9;

  return v10;
}

+ (id)sharedManager
{
  if (qword_100590690 != -1)
  {
    dispatch_once(&qword_100590690, &stru_100517948);
  }

  v3 = qword_100590688;

  return v3;
}

@end