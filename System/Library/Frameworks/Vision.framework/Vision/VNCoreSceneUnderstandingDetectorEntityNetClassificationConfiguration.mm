@interface VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration
- (BOOL)isEqual:(id)equal;
- (VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration)initWithObservationsRecipient:(id)recipient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration;
  v4 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_disallowedList);
    *(v5 + 4) = LODWORD(self->_minimumConfidence);
    v5[4] = self->_maximumClassifications;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14.receiver = self;
      v14.super_class = VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration;
      if ([(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v14 isEqual:v5]&& ([(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)self minimumConfidence], v7 = v6, [(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)v5 minimumConfidence], v7 == v8) && (v9 = [(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)self maximumClassifications], v9 == [(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)v5 maximumClassifications]))
      {
        disallowedList = [(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)self disallowedList];
        disallowedList2 = [(VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration *)v5 disallowedList];
        v12 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration)initWithObservationsRecipient:(id)recipient
{
  v4.receiver = self;
  v4.super_class = VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration;
  result = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v4 initWithObservationsRecipient:recipient];
  if (result)
  {
    result->_maximumClassifications = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end