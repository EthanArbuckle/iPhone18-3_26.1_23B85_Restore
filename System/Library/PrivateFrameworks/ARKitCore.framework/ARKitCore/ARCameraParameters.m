@interface ARCameraParameters
- (ARCameraParameters)initWithCoder:(id)a3;
- (ARCameraParameters)initWithFocalLength:(CGPoint)a3 imageResolution:(CGSize)a4 principalPoint:(CGPoint)a5;
- (CGPoint)focalLength;
- (CGPoint)principalPoint;
- (CGSize)imageResolution;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARCameraParameters

- (ARCameraParameters)initWithFocalLength:(CGPoint)a3 imageResolution:(CGSize)a4 principalPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v9 = a3.y;
  v10 = a3.x;
  v12.receiver = self;
  v12.super_class = ARCameraParameters;
  result = [(ARCameraParameters *)&v12 init];
  if (result)
  {
    result->_focalLength.x = v10;
    result->_focalLength.y = v9;
    result->_imageResolution.width = width;
    result->_imageResolution.height = height;
    result->_principalPoint.x = x;
    result->_principalPoint.y = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [(ARCameraParameters *)self imageResolution];
    v4[1] = v5;
    v4[2] = v6;
    [(ARCameraParameters *)self focalLength];
    v4[3] = v7;
    v4[4] = v8;
    [(ARCameraParameters *)self principalPoint];
    v4[5] = v9;
    v4[6] = v10;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [(ARCameraParameters *)self imageResolution];
  *&v5 = v4;
  [v13 encodeFloat:@"resolutionHeight" forKey:v5];
  [(ARCameraParameters *)self imageResolution];
  *&v6 = v6;
  [v13 encodeFloat:@"resolutionWidth" forKey:v6];
  [(ARCameraParameters *)self focalLength];
  *&v7 = v7;
  [v13 encodeFloat:@"focalLengthX" forKey:v7];
  [(ARCameraParameters *)self focalLength];
  *&v9 = v8;
  [v13 encodeFloat:@"focalLengthY" forKey:v9];
  [(ARCameraParameters *)self principalPoint];
  *&v10 = v10;
  [v13 encodeFloat:@"principalPointX" forKey:v10];
  [(ARCameraParameters *)self principalPoint];
  *&v12 = v11;
  [v13 encodeFloat:@"principalPointY" forKey:v12];
}

- (ARCameraParameters)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"resolutionHeight"];
  v6 = v5;
  [v4 decodeFloatForKey:@"resolutionWidth"];
  v8 = v7;
  [v4 decodeFloatForKey:@"focalLengthX"];
  v10 = v9;
  [v4 decodeFloatForKey:@"focalLengthY"];
  v12 = v11;
  [v4 decodeFloatForKey:@"principalPointX"];
  v14 = v13;
  [v4 decodeFloatForKey:@"principalPointY"];
  v16 = v15;

  return [(ARCameraParameters *)self initWithFocalLength:v10 imageResolution:v12 principalPoint:v8, v6, v14, v16];
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)focalLength
{
  x = self->_focalLength.x;
  y = self->_focalLength.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)principalPoint
{
  x = self->_principalPoint.x;
  y = self->_principalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end