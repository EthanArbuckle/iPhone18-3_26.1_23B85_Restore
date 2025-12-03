@interface VNImageScoreObservation
- (BOOL)isEqual:(id)equal;
- (VNImageScoreObservation)initWithCoder:(id)coder;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageScoreObservation

- (id)description
{
  v11.receiver = self;
  v11.super_class = VNImageScoreObservation;
  v3 = [(VNObservation *)&v11 description];
  blurScore = [(VNImageScoreObservation *)self blurScore];
  v5 = blurScore;
  if (blurScore)
  {
    v6 = [v3 stringByAppendingFormat:@" blurScore=%@", blurScore];

    v3 = v6;
  }

  exposureScore = [(VNImageScoreObservation *)self exposureScore];
  v8 = exposureScore;
  if (exposureScore)
  {
    v9 = [v3 stringByAppendingFormat:@" exposureScore=%@", exposureScore];

    v3 = v9;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNImageScoreObservation;
    if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      blurScore = [(VNImageScoreObservation *)self blurScore];
      blurScore2 = [(VNImageScoreObservation *)v5 blurScore];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        exposureScore = [(VNImageScoreObservation *)self exposureScore];
        exposureScore2 = [(VNImageScoreObservation *)v5 exposureScore];
        v11 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNImageScoreObservation;
  v3 = [(VNObservation *)&v9 hash];
  blurScore = [(VNImageScoreObservation *)self blurScore];
  v5 = [blurScore hash];

  exposureScore = [(VNImageScoreObservation *)self exposureScore];
  v7 = [exposureScore hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageScoreObservation;
  vn_cloneObject = [(VNObservation *)&v6 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    [vn_cloneObject setBlurScore:self->_blurScore];
    [v4 setExposureScore:self->_exposureScore];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNImageScoreObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_blurScore forKey:@"blur"];
  [coderCopy encodeObject:self->_exposureScore forKey:@"exposure"];
}

- (VNImageScoreObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VNImageScoreObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blur"];
    blurScore = v5->_blurScore;
    v5->_blurScore = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exposure"];
    exposureScore = v5->_exposureScore;
    v5->_exposureScore = v8;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end