@interface VFXCamera_CEKWorkaround
- (double)focalLength;
- (double)sensorHeight;
- (void)setFocalLength:(double)length;
- (void)setSensorHeight:(double)height;
@end

@implementation VFXCamera_CEKWorkaround

- (double)sensorHeight
{
  v4.receiver = self;
  v4.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v4 sensorHeight];
  return v2;
}

- (void)setSensorHeight:(double)height
{
  *&height = height;
  v3.receiver = self;
  v3.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v3 setSensorHeight:height];
}

- (double)focalLength
{
  v4.receiver = self;
  v4.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v4 focalLength];
  return v2;
}

- (void)setFocalLength:(double)length
{
  *&length = length;
  v3.receiver = self;
  v3.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v3 setFocalLength:length];
}

@end