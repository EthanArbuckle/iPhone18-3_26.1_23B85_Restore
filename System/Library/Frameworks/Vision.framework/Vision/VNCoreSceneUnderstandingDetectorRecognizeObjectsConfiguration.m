@interface VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration
- (BOOL)isEqual:(id)a3;
- (VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration)initWithObservationsRecipient:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration;
  v4 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_disallowedList);
    *(v5 + 4) = LODWORD(self->_minimumDetectionConfidence);
    *(v5 + 5) = LODWORD(self->_nonMaximumSuppressionThreshold);
    objc_storeStrong(v5 + 4, self->_targetedIdentifiers);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v19.receiver = self;
      v19.super_class = VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration;
      if ([(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v19 isEqual:v5]&& ([(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)self minimumDetectionConfidence], v7 = v6, [(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)v5 minimumDetectionConfidence], v7 == v8) && ([(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)self nonMaximumSuppressionThreshold], v10 = v9, [(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)v5 nonMaximumSuppressionThreshold], v10 == v11) && ([(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)self disallowedList], v12 = objc_claimAutoreleasedReturnValue(), [(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)v5 disallowedList], v13 = objc_claimAutoreleasedReturnValue(), v14 = VisionCoreEqualOrNilObjects(), v13, v12, (v14 & 1) != 0))
      {
        v15 = [(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)self targetedIdentifiers];
        v16 = [(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration *)v5 targetedIdentifiers];
        v17 = VisionCoreEquivalentOrNilUnorderedArrays();
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration)initWithObservationsRecipient:(id)a3
{
  v4.receiver = self;
  v4.super_class = VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration;
  result = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)&v4 initWithObservationsRecipient:a3];
  if (result)
  {
    result->_minimumDetectionConfidence = 0.1;
    result->_nonMaximumSuppressionThreshold = 0.3;
  }

  return result;
}

@end