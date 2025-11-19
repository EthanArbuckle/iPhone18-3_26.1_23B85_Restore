@interface CLMiLoPrediction
- (CLMiLoPrediction)initWithCoder:(id)a3;
- (CLMiLoPrediction)initWithPlacePredictions:(id)a3 locationSimilarityList:(id)a4 closeDeviceList:(id)a5 error:(id)a6 requestIdentifier:(id)a7 predictionTime:(id)a8 confidence:(unint64_t)a9 placeConfidenceReasons:(id)a10 localizationFingerprintMetaInfo:(id)a11;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoPrediction

- (CLMiLoPrediction)initWithPlacePredictions:(id)a3 locationSimilarityList:(id)a4 closeDeviceList:(id)a5 error:(id)a6 requestIdentifier:(id)a7 predictionTime:(id)a8 confidence:(unint64_t)a9 placeConfidenceReasons:(id)a10 localizationFingerprintMetaInfo:(id)a11
{
  v19.receiver = self;
  v19.super_class = CLMiLoPrediction;
  v17 = [(CLMiLoPrediction *)&v19 init];
  if (v17)
  {
    v17->_placePredictions = a3;
    v17->_locationSimilarityList = a4;
    v17->_closeDeviceList = a5;
    v17->_error = a6;
    v17->_requestIdentifier = a7;
    v17->_predictionTime = a8;
    v17->_confidence = a9;
    v17->_placeConfidenceReasons = a10;
    v17->_localizationFingerprintMetaInfo = a11;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPrediction;
  [(CLMiLoPrediction *)&v3 dealloc];
}

- (CLMiLoPrediction)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPredictionPlacePredictions"}];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionError"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPredictionTime"];
  v12 = [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [a3 decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons"}];
  return -[CLMiLoPrediction initWithPlacePredictions:locationSimilarityList:closeDeviceList:error:requestIdentifier:predictionTime:confidence:placeConfidenceReasons:localizationFingerprintMetaInfo:](self, "initWithPlacePredictions:locationSimilarityList:closeDeviceList:error:requestIdentifier:predictionTime:confidence:placeConfidenceReasons:localizationFingerprintMetaInfo:", v6, v7, v8, v9, v10, v11, v12, v15, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo"]);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_placePredictions forKey:@"kCLMiLoConnectionCodingKeyPredictionPlacePredictions"];
  [a3 encodeObject:self->_locationSimilarityList forKey:@"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList"];
  [a3 encodeObject:self->_closeDeviceList forKey:@"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList"];
  [a3 encodeObject:self->_error forKey:@"kCLMiLoConnectionCodingKeyPredictionError"];
  [a3 encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier"];
  [a3 encodeObject:self->_predictionTime forKey:@"kCLMiLoConnectionCodingKeyPredictionTime"];
  [a3 encodeInteger:self->_confidence forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  [a3 encodeObject:self->_placeConfidenceReasons forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons"];
  localizationFingerprintMetaInfo = self->_localizationFingerprintMetaInfo;

  [a3 encodeObject:localizationFingerprintMetaInfo forKey:@"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo"];
}

@end