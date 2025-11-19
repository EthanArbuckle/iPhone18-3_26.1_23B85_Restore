@interface AVCapturePhotoInitiationSettings
+ (id)photoInitiationSettingsWithUserInitiatedRequestTimestamp:(unint64_t)a3;
- (id)_initWithTimestamp:(unint64_t)a3;
- (void)dealloc;
@end

@implementation AVCapturePhotoInitiationSettings

+ (id)photoInitiationSettingsWithUserInitiatedRequestTimestamp:(unint64_t)a3
{
  v3 = [[AVCapturePhotoInitiationSettings alloc] _initWithTimestamp:a3];

  return v3;
}

- (id)_initWithTimestamp:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = AVCapturePhotoInitiationSettings;
  v4 = [(AVCapturePhotoInitiationSettings *)&v6 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(AVCapturePhotoInitiationSettingsInternal);
    v4->_internal->uniqueID = +[AVCapturePhotoSettings uniqueID];
    v4->_internal->timestamp = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePhotoInitiationSettings;
  [(AVCapturePhotoInitiationSettings *)&v3 dealloc];
}

@end