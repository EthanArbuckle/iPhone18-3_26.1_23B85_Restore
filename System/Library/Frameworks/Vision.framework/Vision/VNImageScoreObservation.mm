@interface VNImageScoreObservation
- (BOOL)isEqual:(id)a3;
- (VNImageScoreObservation)initWithCoder:(id)a3;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageScoreObservation

- (id)description
{
  v11.receiver = self;
  v11.super_class = VNImageScoreObservation;
  v3 = [(VNObservation *)&v11 description];
  v4 = [(VNImageScoreObservation *)self blurScore];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 stringByAppendingFormat:@" blurScore=%@", v4];

    v3 = v6;
  }

  v7 = [(VNImageScoreObservation *)self exposureScore];
  v8 = v7;
  if (v7)
  {
    v9 = [v3 stringByAppendingFormat:@" exposureScore=%@", v7];

    v3 = v9;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNImageScoreObservation;
    if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNImageScoreObservation *)self blurScore];
      v7 = [(VNImageScoreObservation *)v5 blurScore];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        v9 = [(VNImageScoreObservation *)self exposureScore];
        v10 = [(VNImageScoreObservation *)v5 exposureScore];
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
  v4 = [(VNImageScoreObservation *)self blurScore];
  v5 = [v4 hash];

  v6 = [(VNImageScoreObservation *)self exposureScore];
  v7 = [v6 hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageScoreObservation;
  v3 = [(VNObservation *)&v6 vn_cloneObject];
  v4 = v3;
  if (v3)
  {
    [v3 setBlurScore:self->_blurScore];
    [v4 setExposureScore:self->_exposureScore];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNImageScoreObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_blurScore forKey:@"blur"];
  [v4 encodeObject:self->_exposureScore forKey:@"exposure"];
}

- (VNImageScoreObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VNImageScoreObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blur"];
    blurScore = v5->_blurScore;
    v5->_blurScore = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exposure"];
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