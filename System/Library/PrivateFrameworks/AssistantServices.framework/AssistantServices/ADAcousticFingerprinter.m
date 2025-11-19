@interface ADAcousticFingerprinter
- (ADAcousticFingerprinter)init;
- (ADAcousticFingerprinterDelegate)delegate;
- (id)_connection;
- (id)_convertPCMDataForFingerprinting:(id)a3;
- (id)_service;
- (id)_serviceWithErrorHandler:(id)a3;
- (void)_cleanUpConnection;
- (void)_configureWithCurrentASBD;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)appendPCMData:(id)a3;
- (void)dealloc;
- (void)flush;
- (void)reset;
- (void)setASBD:(AudioStreamBasicDescription *)a3;
- (void)setFingerprintInterval:(double)a3;
@end

@implementation ADAcousticFingerprinter

- (ADAcousticFingerprinterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157818;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)flush
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157904;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)appendPCMData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100157BF4;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_convertPCMDataForFingerprinting:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_fingerprinterConverter)
  {
    v6 = 2 * [v4 length] / self->_sourceASBD.mBytesPerPacket;
    v7 = [v5 length] / self->_sourceASBD.mBytesPerPacket;
    v8 = [[NSMutableData alloc] initWithLength:v6];
    ioOutputDataPacketSize = v7;
    *&outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = 1;
    outOutputData.mBuffers[0].mDataByteSize = [v8 length];
    outOutputData.mBuffers[0].mData = [v8 mutableBytes];
    fingerprinterConverter = self->_fingerprinterConverter;
    inInputDataProcUserData[0] = _NSConcreteStackBlock;
    inInputDataProcUserData[1] = 3221225472;
    inInputDataProcUserData[2] = sub_1001582DC;
    inInputDataProcUserData[3] = &unk_100513818;
    v16 = v7;
    v15 = v5;
    v10 = AudioConverterFillComplexBuffer(fingerprinterConverter, sub_100158334, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
    [v8 setLength:2 * ioOutputDataPacketSize];
    if (v10)
    {
      v13 = bswap32(v10);
      v11 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "[ADAcousticFingerprinter _convertPCMDataForFingerprinting:]";
        v21 = 1042;
        v22 = 4;
        v23 = 2082;
        v24 = &v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error during conversion for fingerprinter %{public}.4s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)_configureWithCurrentASBD
{
  self->_nextFingerprintSampleNumber = [(ADAcousticFingerprinter *)self _samplesPerInterval];
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    mSampleRate = self->_sourceASBD.mSampleRate;
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "[ADAcousticFingerprinter _configureWithCurrentASBD]";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = mSampleRate;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Setting sample rate to %d", &buf, 0x12u);
  }

  v5 = sub_100157E1C(self->_sourceASBD.mSampleRate);
  v6 = [(ADAcousticFingerprinter *)self _service];
  [v6 setSampleRate:v5];

  fingerprinterConverter = self->_fingerprinterConverter;
  if (fingerprinterConverter)
  {
    AudioConverterDispose(fingerprinterConverter);
    self->_fingerprinterConverter = 0;
  }

  if ([(ADAcousticFingerprinter *)self _needsConversion])
  {
    *&buf.mSampleRate = xmmword_1003F03C8;
    *&buf.mBytesPerPacket = unk_1003F03D8;
    *&buf.mBitsPerChannel = 16;
    buf.mSampleRate = self->_sourceASBD.mSampleRate;
    v8 = AudioConverterNew(&self->_sourceASBD, &buf, &self->_fingerprinterConverter);
    if (v8)
    {
      v10 = bswap32(v8);
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *v11 = 136315650;
        v12 = "[ADAcousticFingerprinter _configureWithCurrentASBD]";
        v13 = 1042;
        v14 = 4;
        v15 = 2082;
        v16 = &v10;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Could not make Fingerprinter decoder: %{public}.4s", v11, 0x1Cu);
      }
    }
  }
}

- (void)setASBD:(AudioStreamBasicDescription *)a3
{
  if (a3)
  {
    v3 = *&a3->mSampleRate;
    v4 = *&a3->mBytesPerPacket;
    *&self->_sourceASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
    *&self->_sourceASBD.mSampleRate = v3;
    *&self->_sourceASBD.mBytesPerPacket = v4;
    [(ADAcousticFingerprinter *)self _configureWithCurrentASBD];
  }
}

- (void)setFingerprintInterval:(double)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100158624;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

- (id)_serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ADAcousticFingerprinter *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_service
{
  v2 = [(ADAcousticFingerprinter *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)_cleanUpConnection
{
  asxConnection = self->_asxConnection;
  if (asxConnection)
  {
    [(NSXPCConnection *)asxConnection setExportedObject:0];
    [(NSXPCConnection *)self->_asxConnection invalidate];
    v4 = self->_asxConnection;
    self->_asxConnection = 0;
  }
}

- (void)_connectionInvalidated
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADAcousticFingerprinter _connectionInvalidated]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADAcousticFingerprinter *)self _cleanUpConnection];
}

- (void)_connectionInterrupted
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADAcousticFingerprinter _connectionInterrupted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADAcousticFingerprinter *)self _cleanUpConnection];
}

- (id)_connection
{
  asxConnection = self->_asxConnection;
  if (!asxConnection)
  {
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.siri.acousticsignature"];
    v5 = self->_asxConnection;
    self->_asxConnection = v4;

    [(NSXPCConnection *)self->_asxConnection _setQueue:self->_queue];
    v6 = self->_asxConnection;
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASXSignatureExtracting];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_asxConnection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100158A88;
    v13[3] = &unk_10051B5F0;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_asxConnection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100158AC8;
    v11[3] = &unk_10051B5F0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_asxConnection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    asxConnection = self->_asxConnection;
  }

  return asxConnection;
}

- (void)dealloc
{
  fingerprinterConverter = self->_fingerprinterConverter;
  if (fingerprinterConverter)
  {
    AudioConverterDispose(fingerprinterConverter);
  }

  [(ADAcousticFingerprinter *)self _cleanUpConnection];
  v4.receiver = self;
  v4.super_class = ADAcousticFingerprinter;
  [(ADAcousticFingerprinter *)&v4 dealloc];
}

- (ADAcousticFingerprinter)init
{
  v7.receiver = self;
  v7.super_class = ADAcousticFingerprinter;
  v2 = [(ADAcousticFingerprinter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADAcousticFingerprinter", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    *(v2 + 6) = 0x40CF400000000000;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 11) = 0x3FF0000000000000;
    *(v2 + 5) = [v2 _samplesPerInterval];
  }

  return v2;
}

@end