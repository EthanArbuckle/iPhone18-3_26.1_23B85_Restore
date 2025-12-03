@interface CLMiLoPrediction
- (CLMiLoPrediction)initWithCoder:(id)coder;
- (CLMiLoPrediction)initWithPlacePredictions:(id)predictions locationSimilarityList:(id)list closeDeviceList:(id)deviceList error:(id)error requestIdentifier:(id)identifier predictionTime:(id)time confidence:(unint64_t)confidence placeConfidenceReasons:(id)self0 localizationFingerprintMetaInfo:(id)self1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPrediction

- (CLMiLoPrediction)initWithPlacePredictions:(id)predictions locationSimilarityList:(id)list closeDeviceList:(id)deviceList error:(id)error requestIdentifier:(id)identifier predictionTime:(id)time confidence:(unint64_t)confidence placeConfidenceReasons:(id)self0 localizationFingerprintMetaInfo:(id)self1
{
  v19.receiver = self;
  v19.super_class = CLMiLoPrediction;
  v17 = [(CLMiLoPrediction *)&v19 init];
  if (v17)
  {
    v17->_placePredictions = predictions;
    v17->_locationSimilarityList = list;
    v17->_closeDeviceList = deviceList;
    v17->_error = error;
    v17->_requestIdentifier = identifier;
    v17->_predictionTime = time;
    v17->_confidence = confidence;
    v17->_placeConfidenceReasons = reasons;
    v17->_localizationFingerprintMetaInfo = info;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPrediction;
  [(CLMiLoPrediction *)&v3 dealloc];
}

- (CLMiLoPrediction)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [coder decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPredictionPlacePredictions"}];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionError"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionTime"];
  v12 = [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [coder decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons"}];
  return -[CLMiLoPrediction initWithPlacePredictions:locationSimilarityList:closeDeviceList:error:requestIdentifier:predictionTime:confidence:placeConfidenceReasons:localizationFingerprintMetaInfo:](self, "initWithPlacePredictions:locationSimilarityList:closeDeviceList:error:requestIdentifier:predictionTime:confidence:placeConfidenceReasons:localizationFingerprintMetaInfo:", v6, v7, v8, v9, v10, v11, v12, v15, [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo"]);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_placePredictions forKey:@"kCLMiLoConnectionCodingKeyPredictionPlacePredictions"];
  [coder encodeObject:self->_locationSimilarityList forKey:@"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList"];
  [coder encodeObject:self->_closeDeviceList forKey:@"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList"];
  [coder encodeObject:self->_error forKey:@"kCLMiLoConnectionCodingKeyPredictionError"];
  [coder encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier"];
  [coder encodeObject:self->_predictionTime forKey:@"kCLMiLoConnectionCodingKeyPredictionTime"];
  [coder encodeInteger:self->_confidence forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  [coder encodeObject:self->_placeConfidenceReasons forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons"];
  localizationFingerprintMetaInfo = self->_localizationFingerprintMetaInfo;

  [coder encodeObject:localizationFingerprintMetaInfo forKey:@"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo"];
}

@end