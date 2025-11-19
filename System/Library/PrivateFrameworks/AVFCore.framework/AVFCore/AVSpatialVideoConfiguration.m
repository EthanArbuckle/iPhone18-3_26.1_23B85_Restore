@interface AVSpatialVideoConfiguration
- (AVSpatialVideoConfiguration)init;
- (AVSpatialVideoConfiguration)initWithFormatDescription:(opaqueCMFormatDescription *)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toDictionary;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVSpatialVideoConfiguration

- (AVSpatialVideoConfiguration)init
{
  v3.receiver = self;
  v3.super_class = AVSpatialVideoConfiguration;
  return [(AVSpatialVideoConfiguration *)&v3 init];
}

- (AVSpatialVideoConfiguration)initWithFormatDescription:(opaqueCMFormatDescription *)a3
{
  v4 = [(AVSpatialVideoConfiguration *)self init];
  if (v4)
  {
    v4->_cameraCalibrationDataLensCollection = [CMFormatDescriptionGetExtension(a3 *MEMORY[0x1E6962750])];
    v4->_horizontalFieldOfView = [CMFormatDescriptionGetExtension(a3 *MEMORY[0x1E6960068])];
    v4->_cameraSystemBaseline = [CMFormatDescriptionGetExtension(a3 *MEMORY[0x1E69600B0])];
    v4->_disparityAdjustment = [CMFormatDescriptionGetExtension(a3 *MEMORY[0x1E6960060])];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVSpatialVideoConfiguration;
  [(AVSpatialVideoConfiguration *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = [(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection];
  if (v5 == [a3 cameraCalibrationDataLensCollection] || (v6 = -[NSArray isEqual:](-[AVSpatialVideoConfiguration cameraCalibrationDataLensCollection](self, "cameraCalibrationDataLensCollection"), "isEqual:", objc_msgSend(a3, "cameraCalibrationDataLensCollection"))) != 0)
  {
    v7 = [(AVSpatialVideoConfiguration *)self horizontalFieldOfView];
    if (v7 == [a3 horizontalFieldOfView] || (v6 = -[NSNumber isEqual:](-[AVSpatialVideoConfiguration horizontalFieldOfView](self, "horizontalFieldOfView"), "isEqual:", objc_msgSend(a3, "horizontalFieldOfView"))) != 0)
    {
      v8 = [(AVSpatialVideoConfiguration *)self cameraSystemBaseline];
      if (v8 == [a3 cameraSystemBaseline] || (v6 = -[NSNumber isEqual:](-[AVSpatialVideoConfiguration cameraSystemBaseline](self, "cameraSystemBaseline"), "isEqual:", objc_msgSend(a3, "cameraSystemBaseline"))) != 0)
      {
        v9 = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
        if (v9 != [a3 disparityAdjustment])
        {
          v10 = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
          v11 = [a3 disparityAdjustment];

          LOBYTE(v6) = [(NSNumber *)v10 isEqual:v11];
          return v6;
        }

LABEL_13:
        LOBYTE(v6) = 1;
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)[(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection] hash];
  v4 = [(NSNumber *)[(AVSpatialVideoConfiguration *)self horizontalFieldOfView] hash]^ v3;
  v5 = [(NSNumber *)[(AVSpatialVideoConfiguration *)self cameraSystemBaseline] hash];
  return v4 ^ v5 ^ [(NSNumber *)[(AVSpatialVideoConfiguration *)self disparityAdjustment] hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVSpatialVideoConfiguration allocWithZone:?]];
  if (v4)
  {
    [(AVSpatialVideoConfiguration *)v4 setCameraCalibrationDataLensCollection:[(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection]];
    [(AVSpatialVideoConfiguration *)v4 setHorizontalFieldOfView:[(AVSpatialVideoConfiguration *)self horizontalFieldOfView]];
    [(AVSpatialVideoConfiguration *)v4 setCameraSystemBaseline:[(AVSpatialVideoConfiguration *)self cameraSystemBaseline]];
    [(AVSpatialVideoConfiguration *)v4 setDisparityAdjustment:[(AVSpatialVideoConfiguration *)self disparityAdjustment]];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> horizontalFieldOfView: %@, cameraSystemBaseline: %@, disparityAdjustment: %@, cameraCalibrationDataLensCollection: %@", NSStringFromClass(v4), self, -[AVSpatialVideoConfiguration horizontalFieldOfView](self, "horizontalFieldOfView"), -[AVSpatialVideoConfiguration cameraSystemBaseline](self, "cameraSystemBaseline"), -[AVSpatialVideoConfiguration disparityAdjustment](self, "disparityAdjustment"), -[AVSpatialVideoConfiguration cameraCalibrationDataLensCollection](self, "cameraCalibrationDataLensCollection")];
}

- (id)toDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection])
  {
    v4 = [(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection];
    [v3 setObject:v4 forKey:*MEMORY[0x1E6960010]];
  }

  if ([(AVSpatialVideoConfiguration *)self horizontalFieldOfView])
  {
    v5 = [(AVSpatialVideoConfiguration *)self horizontalFieldOfView];
    [v3 setObject:v5 forKey:*MEMORY[0x1E6960068]];
  }

  if ([(AVSpatialVideoConfiguration *)self cameraSystemBaseline])
  {
    v6 = [(AVSpatialVideoConfiguration *)self cameraSystemBaseline];
    [v3 setObject:v6 forKey:*MEMORY[0x1E69600B0]];
  }

  if ([(AVSpatialVideoConfiguration *)self disparityAdjustment])
  {
    v7 = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
    [v3 setObject:v7 forKey:*MEMORY[0x1E6960060]];
  }

  return v3;
}

@end