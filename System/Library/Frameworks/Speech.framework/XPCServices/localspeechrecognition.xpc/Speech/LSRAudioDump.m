@interface LSRAudioDump
+ (id)dumpDirectory;
+ (id)filenameForTaskIdentifier:(id)a3;
+ (id)urlForTaskIdentifier:(id)a3;
+ (void)initialize;
- (LSRAudioDump)initWithTaskIdentifier:(id)a3;
- (void)appendBytes:(id)a3;
- (void)close;
- (void)dealloc;
- (void)discard;
@end

@implementation LSRAudioDump

- (void)discard
{
  [(LSRAudioDump *)self close];
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtURL:self->_url error:0];
}

- (void)close
{
  extendedFile = self->_extendedFile;
  if (extendedFile)
  {
    ExtAudioFileDispose(extendedFile);
  }

  fileID = self->_fileID;
  if (fileID)
  {
    AudioFileClose(fileID);
  }

  v5 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    url = self->_url;
    v7 = 136315394;
    v8 = "[LSRAudioDump close]";
    v9 = 2112;
    v10 = url;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Closed audio dump file at: %@", &v7, 0x16u);
  }
}

- (void)appendBytes:(id)a3
{
  if (self->_extendedFile)
  {
    v4 = a3;
    v5 = [v4 length];
    v6 = [v4 bytes];

    *&ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = v5;
    ioData.mBuffers[0].mData = v6;
    v7 = ExtAudioFileWriteAsync(self->_extendedFile, v5 / SupportedASBD[6], &ioData);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
      v9 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v8 description];
        url = self->_url;
        *buf = 136315650;
        v15 = "[LSRAudioDump appendBytes:]";
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = url;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to write to dump file. Error: %@, URL: %@", buf, 0x20u);
      }
    }
  }
}

- (void)dealloc
{
  [(LSRAudioDump *)self close];
  v3.receiver = self;
  v3.super_class = LSRAudioDump;
  [(LSRAudioDump *)&v3 dealloc];
}

- (LSRAudioDump)initWithTaskIdentifier:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = LSRAudioDump;
  v5 = [(LSRAudioDump *)&v30 init];
  if (!v5)
  {
LABEL_14:
    v19 = v5;
    goto LABEL_15;
  }

  v6 = [LSRAudioDump urlForTaskIdentifier:v4];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = +[NSFileManager defaultManager];
  v9 = +[LSRAudioDump dumpDirectory];
  [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v10 = AudioFileCreateWithURL(*(v5 + 1), 0x57415645u, SupportedASBD, 1u, v5 + 2);
  if (v10)
  {
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:0];
    v12 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v11 description];
      v15 = *(v5 + 1);
      *buf = 136315650;
      v32 = "[LSRAudioDump initWithTaskIdentifier:]";
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      v16 = "%s Failed to create audio dump file. Error: %@, URL: %@";
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);

      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v17 = ExtAudioFileWrapAudioFileID(*(v5 + 2), 1u, v5 + 3);
  if (!v17)
  {
    v20 = ExtAudioFileWriteAsync(*(v5 + 3), 0, 0);
    if (v20)
    {
      v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v20 userInfo:0];
      v22 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        v27 = v22;
        v28 = [v21 description];
        v29 = *(v5 + 1);
        *buf = 136315650;
        v32 = "[LSRAudioDump initWithTaskIdentifier:]";
        v33 = 2112;
        v34 = v28;
        v35 = 2112;
        v36 = v29;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Failed to prewarm dump file. Error: %@, URL: %@", buf, 0x20u);
      }
    }

    v23 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 1);
      *buf = 136315394;
      v32 = "[LSRAudioDump initWithTaskIdentifier:]";
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Created audio file at: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:0];
  v18 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    v13 = v18;
    v14 = [v11 description];
    v26 = *(v5 + 1);
    *buf = 136315650;
    v32 = "[LSRAudioDump initWithTaskIdentifier:]";
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v26;
    v16 = "%s Failed to extend audio dump file. Error: %@, URL: %@";
    goto LABEL_17;
  }

LABEL_7:

  v19 = 0;
LABEL_15:

  return v19;
}

+ (id)filenameForTaskIdentifier:(id)a3
{
  memset(&v7, 0, sizeof(v7));
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  v3 = a3;
  gettimeofday(&v6, 0);
  localtime_r(&v6.tv_sec, &v7);
  v4 = [NSString stringWithFormat:@"%@-%04d%02d%02d-%02d%02d%02d.%d.wav", v3, (v7.tm_year + 1900), (v7.tm_mon + 1), v7.tm_mday, v7.tm_hour, v7.tm_min, v7.tm_sec, getpid(), v6.tv_sec, *&v6.tv_usec];

  return v4;
}

+ (id)dumpDirectory
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Caches/com.apple.speech.localspeechrecognition/lsr_audio_dumps"];

  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

+ (id)urlForTaskIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[LSRAudioDump dumpDirectory];
  v6 = [a1 filenameForTaskIdentifier:v4];

  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    SFLogInitIfNeeded();
  }
}

@end