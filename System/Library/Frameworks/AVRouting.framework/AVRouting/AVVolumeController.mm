@interface AVVolumeController
- (AVVolumeController)initWithType:(unsigned int)a3;
- (void)dealloc;
@end

@implementation AVVolumeController

- (AVVolumeController)initWithType:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = AVVolumeController;
  result = [(AVVolumeController *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVVolumeController;
  [(AVVolumeController *)&v2 dealloc];
}

@end