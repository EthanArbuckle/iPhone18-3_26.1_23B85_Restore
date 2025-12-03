@interface SHRecordingBuffer
- (SHRecordingBuffer)initWithTap:(id)tap;
- (SHRecordingBuffer)initWithTap:(id)tap signatureGenerator:(id)generator;
@end

@implementation SHRecordingBuffer

- (SHRecordingBuffer)initWithTap:(id)tap
{
  tapCopy = tap;
  v5 = [[SHSignatureGenerator alloc] initSignatureRingBufferWithDuration:3.0];
  v6 = [(SHRecordingBuffer *)self initWithTap:tapCopy signatureGenerator:v5];

  return v6;
}

- (SHRecordingBuffer)initWithTap:(id)tap signatureGenerator:(id)generator
{
  tapCopy = tap;
  generatorCopy = generator;
  v16.receiver = self;
  v16.super_class = SHRecordingBuffer;
  v9 = [(SHRecordingBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tap, tap);
    objc_storeStrong(&v10->_signatureGenerator, generator);
    objc_initWeak(&location, v10);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006D98;
    v12[3] = &unk_10007CF00;
    v13 = generatorCopy;
    objc_copyWeak(&v14, &location);
    [(SHAudioTap *)v10->_tap setCompletion:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  return v10;
}

@end