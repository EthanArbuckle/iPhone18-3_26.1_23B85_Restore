@interface VNCoreSceneUnderstandingDetectorFeatureConfiguration
- (BOOL)isEqual:(id)a3;
- (VNCoreSceneUnderstandingDetectorFeatureConfiguration)initWithObservationsRecipient:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCoreSceneUnderstandingDetectorFeatureConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)self observationsRecipient];
      v7 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)v5 observationsRecipient];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  observationsRecipient = self->_observationsRecipient;

  return [v4 initWithObservationsRecipient:observationsRecipient];
}

- (VNCoreSceneUnderstandingDetectorFeatureConfiguration)initWithObservationsRecipient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VNCoreSceneUnderstandingDetectorFeatureConfiguration;
  v6 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, a3);
  }

  return v7;
}

@end