@interface ADSpeechLog
+ (id)buffersFromSpeechLogAtURL:(id)l isNarrowBand:(BOOL *)band;
- (ADSpeechLog)init;
- (id)_dateFormatter;
- (id)_nowString;
- (void)appendSpeechPacket:(id)packet;
- (void)appendSpeechPackets:(id)packets;
- (void)beginNewSpeechLogWithFormat:(id)format;
- (void)cancelCurrentSpeechLog;
- (void)endSpeechLog;
@end

@implementation ADSpeechLog

- (void)endSpeechLog
{
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A1AAC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(logQueue, block);
}

- (void)cancelCurrentSpeechLog
{
  logQueue = self->_logQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A1C9C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(logQueue, block);
}

- (void)appendSpeechPackets:(id)packets
{
  packetsCopy = packets;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [packetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(packetsCopy);
        }

        [(ADSpeechLog *)self appendSpeechPacket:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [packetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)appendSpeechPacket:(id)packet
{
  packetCopy = packet;
  v5 = packetCopy;
  if (packetCopy)
  {
    logQueue = self->_logQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001A2000;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = packetCopy;
    dispatch_async(logQueue, v7);
  }
}

- (void)beginNewSpeechLogWithFormat:(id)format
{
  formatCopy = format;
  logQueue = self->_logQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A2154;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = formatCopy;
  v6 = formatCopy;
  dispatch_async(logQueue, v7);
}

- (id)_nowString
{
  _dateFormatter = [(ADSpeechLog *)self _dateFormatter];
  v3 = +[NSDate date];
  v4 = [_dateFormatter stringFromDate:v3];

  return v4;
}

- (id)_dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    v6 = self->_dateFormatter;
    v7 = [NSLocale localeWithLocaleIdentifier:@"en-US"];
    [(NSDateFormatter *)v6 setLocale:v7];

    [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyy_MM_dd-HHmmss"];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (ADSpeechLog)init
{
  v10.receiver = self;
  v10.super_class = ADSpeechLog;
  v2 = [(ADSpeechLog *)&v10 init];
  if (v2)
  {
    v3 = +[AFPreferences sharedPreferences];
    fileLoggingIsEnabled = [v3 fileLoggingIsEnabled];

    if (!fileLoggingIsEnabled)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ADSpeechLogQueue", v5);
    logQueue = v2->_logQueue;
    v2->_logQueue = v6;

    v2->_fd = -1;
  }

  v8 = v2;
LABEL_6:

  return v8;
}

+ (id)buffersFromSpeechLogAtURL:(id)l isNarrowBand:(BOOL *)band
{
  lCopy = l;
  v6 = lCopy;
  if (!lCopy)
  {
LABEL_21:
    v12 = 0;
    goto LABEL_26;
  }

  if (band)
  {
    path = [lCopy path];
    lastPathComponent = [path lastPathComponent];

    if ([lastPathComponent containsString:@"Speex_NB"])
    {
      v9 = 1;
    }

    else
    {
      v9 = [lastPathComponent containsString:@"8000Hz"];
    }

    *band = v9;
  }

  path2 = [v6 path];
  v11 = open([path2 fileSystemRepresentation], 0);

  if (v11 < 0)
  {
    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v20 = v16;
      v21 = __error();
      v22 = strerror(*v21);
      *buf = 136315650;
      v27 = "+[ADSpeechLog buffersFromSpeechLogAtURL:isNarrowBand:]";
      v28 = 2114;
      v29 = v6;
      v30 = 2082;
      v31 = v22;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Error opening speech log at URL %{public}@ %{public}s", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v12 = +[NSMutableArray array];
  while (1)
  {
    v13 = 0;
    v23 = 0x80;
    while (read(v11, &v23, 1uLL) == 1)
    {
      v14 = v23 & 0x7F | (v13 << 7);
      v13 = v14;
      if ((v23 & 0x80) == 0)
      {
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }
    }

    v14 = v13;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_15:
    if (v14 >= 0x401)
    {
      v17 = AFSiriLogContextSpeech;
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v24 = 136315138;
      v25 = "+[ADSpeechLog buffersFromSpeechLogAtURL:isNarrowBand:]";
      v18 = "%s buffer not big enough";
      goto LABEL_30;
    }

    if (read(v11, buf, v14) != v14)
    {
      break;
    }

    v15 = [NSData dataWithBytes:buf length:v14];
    [v12 addObject:v15];

    if (!v23)
    {
      goto LABEL_25;
    }
  }

  v17 = AFSiriLogContextSpeech;
  if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_25;
  }

  *v24 = 136315138;
  v25 = "+[ADSpeechLog buffersFromSpeechLogAtURL:isNarrowBand:]";
  v18 = "%s Read incorrect number of bytes";
LABEL_30:
  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, v24, 0xCu);
LABEL_25:
  close(v11);
LABEL_26:

  return v12;
}

@end