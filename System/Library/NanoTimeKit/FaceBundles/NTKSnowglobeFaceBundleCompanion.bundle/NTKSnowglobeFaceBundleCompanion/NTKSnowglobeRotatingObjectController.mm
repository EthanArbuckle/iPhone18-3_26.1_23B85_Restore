@interface NTKSnowglobeRotatingObjectController
- (NTKSnowglobeRotatingObjectController)init;
- (SCNVector3)rotationAxis;
- (void)updateAtTime:(double)a3;
@end

@implementation NTKSnowglobeRotatingObjectController

- (NTKSnowglobeRotatingObjectController)init
{
  v5.receiver = self;
  v5.super_class = NTKSnowglobeRotatingObjectController;
  v2 = [(NTKSnowglobeRotatingObjectController *)&v5 init];
  if (v2)
  {
    v3 = arc4random();
    v2->_offset = (v3 / 4294967300.0 + v3 / 4294967300.0) * 3.14159265;
  }

  return v2;
}

- (void)updateAtTime:(double)a3
{
  rotationSpeed = self->_rotationSpeed;
  rotation = self->_rotation;
  offset = self->_offset;
  v6 = offset + rotationSpeed * rotation;
  *&rotationSpeed = self->_rotationAxis.x;
  *&rotation = self->_rotationAxis.y;
  *&offset = self->_rotationAxis.z;
  *&v6 = v6;
  [(SCNNode *)self->_node setRotation:rotationSpeed, rotation, offset, v6];
}

- (SCNVector3)rotationAxis
{
  objc_copyStruct(dest, &self->_rotationAxis, 12, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

@end