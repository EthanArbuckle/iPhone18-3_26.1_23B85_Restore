@interface ADAudioFileWriter
+ (id)_generateTemporaryFileURL;
+ (id)_savedAudioFilesDirectory;
- (id)_initWithType:(int64_t)type pathGenerator:(id)generator xorFileHandle:(id)handle priority:(unsigned int)priority;
- (void)_close;
- (void)_delete;
- (void)appendAudioData:(id)data;
- (void)cancel;
- (void)configureWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
@end

@implementation ADAudioFileWriter

- (void)cancel
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008DFBC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E090;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)appendAudioData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E3A4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)configureWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v5 = *&description->mBytesPerPacket;
  v12 = *&description->mSampleRate;
  v13 = v5;
  v14 = *&description->mBitsPerChannel;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[ADAudioFileWriter configureWithAudioStreamBasicDescription:]";
    v17 = 1040;
    v18 = 4;
    v19 = 2080;
    v20 = &v12 + 8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Configuring with asbd %.4s", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E674;
  block[3] = &unk_10050FD10;
  block[4] = self;
  block[5] = a2;
  v9 = v12;
  v10 = v13;
  v11 = v14;
  dispatch_async(queue, block);
}

- (void)_delete
{
  if (self->_url)
  {
    v3 = +[NSFileManager defaultManager];
    url = self->_url;
    v9 = 0;
    v5 = [v3 removeItemAtURL:url error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[ADAudioFileWriter _delete]";
        v12 = 2114;
        v13 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error removing item at URL %{public}@", buf, 0x16u);
      }
    }

    v8 = self->_url;
    self->_url = 0;
  }
}

- (void)_close
{
  audioFile = self->_audioFile;
  if (audioFile)
  {
    v4 = ExtAudioFileDispose(audioFile);
    if (v4)
    {
      v5 = v4;
      v6 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[ADAudioFileWriter _close]";
        v9 = 1026;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failure disposing audio file %{public}d", &v7, 0x12u);
      }
    }

    self->_audioFile = 0;
  }
}

- (void)dealloc
{
  [(ADAudioFileWriter *)self _close];
  v3.receiver = self;
  v3.super_class = ADAudioFileWriter;
  [(ADAudioFileWriter *)&v3 dealloc];
}

- (id)_initWithType:(int64_t)type pathGenerator:(id)generator xorFileHandle:(id)handle priority:(unsigned int)priority
{
  generatorCopy = generator;
  handleCopy = handle;
  if (!type)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"ADAudioFileWriter.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"type != AFAudioFileTypeNone"}];
  }

  v26.receiver = self;
  v26.super_class = ADAudioFileWriter;
  v13 = [(ADAudioFileWriter *)&v26 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, priority, 0);

    v16 = dispatch_queue_create("AudioFileWriterQueue", v15);
    queue = v13->_queue;
    v13->_queue = v16;

    v18 = v13->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008EF58;
    block[3] = &unk_10051C0D8;
    v22 = v13;
    typeCopy = type;
    v23 = handleCopy;
    v24 = generatorCopy;
    dispatch_async(v18, block);
  }

  return v13;
}

+ (id)_generateTemporaryFileURL
{
  _savedAudioFilesDirectory = [self _savedAudioFilesDirectory];
  v3 = [_savedAudioFilesDirectory URLByAppendingPathComponent:@"SavedAudioFile"];

  return v3;
}

+ (id)_savedAudioFilesDirectory
{
  if (qword_100590530 != -1)
  {
    dispatch_once(&qword_100590530, &stru_100516BD0);
  }

  v1 = qword_100590528;

  return v1;
}

@end