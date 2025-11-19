@interface VFXCamera_CEKWorkaround
- (double)focalLength;
- (double)sensorHeight;
- (void)setFocalLength:(double)a3;
- (void)setSensorHeight:(double)a3;
@end

@implementation VFXCamera_CEKWorkaround

- (double)sensorHeight
{
  v4.receiver = self;
  v4.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v4 sensorHeight];
  return v2;
}

- (void)setSensorHeight:(double)a3
{
  *&a3 = a3;
  v3.receiver = self;
  v3.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v3 setSensorHeight:a3];
}

- (double)focalLength
{
  v4.receiver = self;
  v4.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v4 focalLength];
  return v2;
}

- (void)setFocalLength:(double)a3
{
  *&a3 = a3;
  v3.receiver = self;
  v3.super_class = VFXCamera_CEKWorkaround;
  [(VFXCamera_CEKWorkaround *)&v3 setFocalLength:a3];
}

@end