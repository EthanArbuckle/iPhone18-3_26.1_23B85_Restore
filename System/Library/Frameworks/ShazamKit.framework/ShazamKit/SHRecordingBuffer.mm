@interface SHRecordingBuffer
- (SHRecordingBuffer)initWithTap:(id)a3;
- (SHRecordingBuffer)initWithTap:(id)a3 signatureGenerator:(id)a4;
@end

@implementation SHRecordingBuffer

- (SHRecordingBuffer)initWithTap:(id)a3
{
  v4 = a3;
  v5 = [[SHSignatureGenerator alloc] initSignatureRingBufferWithDuration:3.0];
  v6 = [(SHRecordingBuffer *)self initWithTap:v4 signatureGenerator:v5];

  return v6;
}

- (SHRecordingBuffer)initWithTap:(id)a3 signatureGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SHRecordingBuffer;
  v9 = [(SHRecordingBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tap, a3);
    objc_storeStrong(&v10->_signatureGenerator, a4);
    objc_initWeak(&location, v10);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006D98;
    v12[3] = &unk_10007CF00;
    v13 = v8;
    objc_copyWeak(&v14, &location);
    [(SHAudioTap *)v10->_tap setCompletion:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  return v10;
}

@end