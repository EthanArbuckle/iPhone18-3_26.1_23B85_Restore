@interface ARCameraParameters
- (ARCameraParameters)initWithCoder:(id)coder;
- (ARCameraParameters)initWithFocalLength:(CGPoint)length imageResolution:(CGSize)resolution principalPoint:(CGPoint)point;
- (CGPoint)focalLength;
- (CGPoint)principalPoint;
- (CGSize)imageResolution;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARCameraParameters

- (ARCameraParameters)initWithFocalLength:(CGPoint)length imageResolution:(CGSize)resolution principalPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = resolution.height;
  width = resolution.width;
  v9 = length.y;
  v10 = length.x;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ARCameraParameters *)self imageResolution];
  *&v5 = v4;
  [coderCopy encodeFloat:@"resolutionHeight" forKey:v5];
  [(ARCameraParameters *)self imageResolution];
  *&v6 = v6;
  [coderCopy encodeFloat:@"resolutionWidth" forKey:v6];
  [(ARCameraParameters *)self focalLength];
  *&v7 = v7;
  [coderCopy encodeFloat:@"focalLengthX" forKey:v7];
  [(ARCameraParameters *)self focalLength];
  *&v9 = v8;
  [coderCopy encodeFloat:@"focalLengthY" forKey:v9];
  [(ARCameraParameters *)self principalPoint];
  *&v10 = v10;
  [coderCopy encodeFloat:@"principalPointX" forKey:v10];
  [(ARCameraParameters *)self principalPoint];
  *&v12 = v11;
  [coderCopy encodeFloat:@"principalPointY" forKey:v12];
}

- (ARCameraParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"resolutionHeight"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"resolutionWidth"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"focalLengthX"];
  v10 = v9;
  [coderCopy decodeFloatForKey:@"focalLengthY"];
  v12 = v11;
  [coderCopy decodeFloatForKey:@"principalPointX"];
  v14 = v13;
  [coderCopy decodeFloatForKey:@"principalPointY"];
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