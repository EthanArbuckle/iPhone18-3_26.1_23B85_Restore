@interface AVCaptureEventSound
+ (AVCaptureEventSound)beginVideoRecordingSound;
+ (AVCaptureEventSound)cameraShutterSound;
+ (AVCaptureEventSound)endVideoRecordingSound;
+ (id)_defaultCaptureSound;
- (AVCaptureEventSound)initWithSystemSoundID:(unsigned int)a3;
- (AVCaptureEventSound)initWithURL:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation AVCaptureEventSound

- (void)dealloc
{
  if (self->isCustomSound)
  {
    AudioServicesDisposeSystemSoundID(self->__identifier);
  }

  v3.receiver = self;
  v3.super_class = AVCaptureEventSound;
  [(AVCaptureEventSound *)&v3 dealloc];
}

- (AVCaptureEventSound)initWithSystemSoundID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = AVCaptureEventSound;
  result = [(AVCaptureEventSound *)&v5 init];
  if (result)
  {
    result->__identifier = a3;
  }

  return result;
}

- (AVCaptureEventSound)initWithURL:(id)a3 error:(id *)a4
{
  v5 = self;
  outSystemSoundID = 0;
  self->isCustomSound = 1;
  v6 = AudioServicesCreateSystemSoundID(a3, &outSystemSoundID);
  if (v6)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = [(AVCaptureEventSound *)v5 initWithSystemSoundID:outSystemSoundID];
    v5 = v7;
  }

  return v7;
}

+ (id)_defaultCaptureSound
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVCaptureEventSound__defaultCaptureSound__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = 1134;
  if (_defaultCaptureSound_defaultCaptureSoundToken != -1)
  {
    dispatch_once(&_defaultCaptureSound_defaultCaptureSoundToken, block);
  }

  v2 = _defaultCaptureSound_defaultCaptureSound;

  return v2;
}

uint64_t __43__AVCaptureEventSound__defaultCaptureSound__block_invoke(uint64_t a1)
{
  v1 = [[AVCaptureEventSound alloc] initWithSystemSoundID:*(a1 + 32)];
  v2 = _defaultCaptureSound_defaultCaptureSound;
  _defaultCaptureSound_defaultCaptureSound = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (AVCaptureEventSound)endVideoRecordingSound
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVCaptureEventSound_endVideoRecordingSound__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = 1135;
  if (endVideoRecordingSound_endVideoRecordingSoundToken != -1)
  {
    dispatch_once(&endVideoRecordingSound_endVideoRecordingSoundToken, block);
  }

  v2 = endVideoRecordingSound_endVideoRecordingSound;

  return v2;
}

uint64_t __45__AVCaptureEventSound_endVideoRecordingSound__block_invoke(uint64_t a1)
{
  v1 = [[AVCaptureEventSound alloc] initWithSystemSoundID:*(a1 + 32)];
  v2 = endVideoRecordingSound_endVideoRecordingSound;
  endVideoRecordingSound_endVideoRecordingSound = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (AVCaptureEventSound)cameraShutterSound
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AVCaptureEventSound_cameraShutterSound__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = 1133;
  if (cameraShutterSound_cameraShutterSoundToken != -1)
  {
    dispatch_once(&cameraShutterSound_cameraShutterSoundToken, block);
  }

  v2 = cameraShutterSound_cameraShutterSound;

  return v2;
}

uint64_t __41__AVCaptureEventSound_cameraShutterSound__block_invoke(uint64_t a1)
{
  v1 = [[AVCaptureEventSound alloc] initWithSystemSoundID:*(a1 + 32)];
  v2 = cameraShutterSound_cameraShutterSound;
  cameraShutterSound_cameraShutterSound = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (AVCaptureEventSound)beginVideoRecordingSound
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureEventSound_beginVideoRecordingSound__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = 1134;
  if (beginVideoRecordingSound_beginVideoRecordingSoundToken != -1)
  {
    dispatch_once(&beginVideoRecordingSound_beginVideoRecordingSoundToken, block);
  }

  v2 = beginVideoRecordingSound_beginVideoRecordingSound;

  return v2;
}

uint64_t __47__AVCaptureEventSound_beginVideoRecordingSound__block_invoke(uint64_t a1)
{
  v1 = [[AVCaptureEventSound alloc] initWithSystemSoundID:*(a1 + 32)];
  v2 = beginVideoRecordingSound_beginVideoRecordingSound;
  beginVideoRecordingSound_beginVideoRecordingSound = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end