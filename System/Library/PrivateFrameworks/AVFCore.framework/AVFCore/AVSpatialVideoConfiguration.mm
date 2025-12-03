@interface AVSpatialVideoConfiguration
- (AVSpatialVideoConfiguration)init;
- (AVSpatialVideoConfiguration)initWithFormatDescription:(opaqueCMFormatDescription *)description;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
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

- (AVSpatialVideoConfiguration)initWithFormatDescription:(opaqueCMFormatDescription *)description
{
  v4 = [(AVSpatialVideoConfiguration *)self init];
  if (v4)
  {
    v4->_cameraCalibrationDataLensCollection = [CMFormatDescriptionGetExtension(description *MEMORY[0x1E6962750])];
    v4->_horizontalFieldOfView = [CMFormatDescriptionGetExtension(description *MEMORY[0x1E6960068])];
    v4->_cameraSystemBaseline = [CMFormatDescriptionGetExtension(description *MEMORY[0x1E69600B0])];
    v4->_disparityAdjustment = [CMFormatDescriptionGetExtension(description *MEMORY[0x1E6960060])];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVSpatialVideoConfiguration;
  [(AVSpatialVideoConfiguration *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  cameraCalibrationDataLensCollection = [(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection];
  if (cameraCalibrationDataLensCollection == [equal cameraCalibrationDataLensCollection] || (v6 = -[NSArray isEqual:](-[AVSpatialVideoConfiguration cameraCalibrationDataLensCollection](self, "cameraCalibrationDataLensCollection"), "isEqual:", objc_msgSend(equal, "cameraCalibrationDataLensCollection"))) != 0)
  {
    horizontalFieldOfView = [(AVSpatialVideoConfiguration *)self horizontalFieldOfView];
    if (horizontalFieldOfView == [equal horizontalFieldOfView] || (v6 = -[NSNumber isEqual:](-[AVSpatialVideoConfiguration horizontalFieldOfView](self, "horizontalFieldOfView"), "isEqual:", objc_msgSend(equal, "horizontalFieldOfView"))) != 0)
    {
      cameraSystemBaseline = [(AVSpatialVideoConfiguration *)self cameraSystemBaseline];
      if (cameraSystemBaseline == [equal cameraSystemBaseline] || (v6 = -[NSNumber isEqual:](-[AVSpatialVideoConfiguration cameraSystemBaseline](self, "cameraSystemBaseline"), "isEqual:", objc_msgSend(equal, "cameraSystemBaseline"))) != 0)
      {
        disparityAdjustment = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
        if (disparityAdjustment != [equal disparityAdjustment])
        {
          disparityAdjustment2 = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
          disparityAdjustment3 = [equal disparityAdjustment];

          LOBYTE(v6) = [(NSNumber *)disparityAdjustment2 isEqual:disparityAdjustment3];
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

- (id)copyWithZone:(_NSZone *)zone
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection])
  {
    cameraCalibrationDataLensCollection = [(AVSpatialVideoConfiguration *)self cameraCalibrationDataLensCollection];
    [dictionary setObject:cameraCalibrationDataLensCollection forKey:*MEMORY[0x1E6960010]];
  }

  if ([(AVSpatialVideoConfiguration *)self horizontalFieldOfView])
  {
    horizontalFieldOfView = [(AVSpatialVideoConfiguration *)self horizontalFieldOfView];
    [dictionary setObject:horizontalFieldOfView forKey:*MEMORY[0x1E6960068]];
  }

  if ([(AVSpatialVideoConfiguration *)self cameraSystemBaseline])
  {
    cameraSystemBaseline = [(AVSpatialVideoConfiguration *)self cameraSystemBaseline];
    [dictionary setObject:cameraSystemBaseline forKey:*MEMORY[0x1E69600B0]];
  }

  if ([(AVSpatialVideoConfiguration *)self disparityAdjustment])
  {
    disparityAdjustment = [(AVSpatialVideoConfiguration *)self disparityAdjustment];
    [dictionary setObject:disparityAdjustment forKey:*MEMORY[0x1E6960060]];
  }

  return dictionary;
}

@end