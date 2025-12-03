@interface VNCoreSceneUnderstandingDetectorFeatureConfiguration
- (BOOL)isEqual:(id)equal;
- (VNCoreSceneUnderstandingDetectorFeatureConfiguration)initWithObservationsRecipient:(id)recipient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCoreSceneUnderstandingDetectorFeatureConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      observationsRecipient = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)self observationsRecipient];
      observationsRecipient2 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)v5 observationsRecipient];
      v8 = [observationsRecipient isEqual:observationsRecipient2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  observationsRecipient = self->_observationsRecipient;

  return [v4 initWithObservationsRecipient:observationsRecipient];
}

- (VNCoreSceneUnderstandingDetectorFeatureConfiguration)initWithObservationsRecipient:(id)recipient
{
  recipientCopy = recipient;
  v9.receiver = self;
  v9.super_class = VNCoreSceneUnderstandingDetectorFeatureConfiguration;
  v6 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, recipient);
  }

  return v7;
}

@end