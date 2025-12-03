@interface ARVisualLocalizationResultData
- (ARVisualLocalizationResultData)initWithCoder:(id)coder;
- (ARVisualLocalizationResultData)initWithVLLocalizationResult:(id)result errorCode:(int64_t)code debugInfo:(id)info heading:(double)heading inputLocation:(id)location algorithmVersion:(int64_t)version undulation:(double)undulation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARVisualLocalizationResultData

- (ARVisualLocalizationResultData)initWithVLLocalizationResult:(id)result errorCode:(int64_t)code debugInfo:(id)info heading:(double)heading inputLocation:(id)location algorithmVersion:(int64_t)version undulation:(double)undulation
{
  v36 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  infoCopy = info;
  locationCopy = location;
  v32.receiver = self;
  v32.super_class = ARVisualLocalizationResultData;
  v20 = [(ARVisualLocalizationResultData *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_localizationResult, result);
    v21->_errorCode = code;
    objc_storeStrong(&v21->_debugInfo, info);
    v21->_heading = heading;
    objc_storeStrong(&v21->_inputLocation, location);
    v21->_algorithmVersion = version;
    v21->_undulation = undulation;
    if (v21->_localizationResult)
    {
      if (resultCopy)
      {
        [resultCopy location];
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
      }

      ARECEFToLLA(&v30);
      *latitude = v30;
      v22 = ARWGS84ToMSLAltitude(v31, v21->_undulation);
      v23 = objc_alloc(MEMORY[0x1E6985C40]);
      v24 = CLLocationCoordinate2DMake(latitude[0], latitude[1]);
      date = [MEMORY[0x1E695DF00] date];
      v26 = [v23 initWithCoordinate:date altitude:v24.latitude horizontalAccuracy:v24.longitude verticalAccuracy:v22 timestamp:{0.0, 0.0}];
      location = v21->_location;
      v21->_location = v26;
    }
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ARVisualLocalizationResultData *)self heading];
  [coderCopy encodeDouble:@"ARVisualLocalizationResultData_headingKey" forKey:?];
  localizationResult = [(ARVisualLocalizationResultData *)self localizationResult];
  [coderCopy encodeObject:localizationResult forKey:@"ARVisualLocalizationResultData_localizationResultKey"];

  [coderCopy encodeInteger:-[ARVisualLocalizationResultData errorCode](self forKey:{"errorCode"), @"ARVisualLocalizationResultData_errorCodeKey"}];
  debugInfo = [(ARVisualLocalizationResultData *)self debugInfo];
  [coderCopy encodeObject:debugInfo forKey:@"ARVisualLocalizationResultData_debugInfoKey"];

  [coderCopy encodeObject:self->_inputLocation forKey:@"ARVisualLocalizationResultData_inputLocationKey"];
  [coderCopy encodeInteger:-[ARVisualLocalizationResultData algorithmVersion](self forKey:{"algorithmVersion"), @"ARVisualLocalizationResultData_algorithmVersionKey"}];
  [coderCopy encodeDouble:@"ARVisualLocalizationResultData_undulationKey" forKey:self->_undulation];
}

- (ARVisualLocalizationResultData)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"ARVisualLocalizationResultData_headingKey"];
  v6 = v5;
  v7 = [coderCopy decodeObjectForKey:@"ARVisualLocalizationResultData_localizationResultKey"];
  v8 = [coderCopy decodeIntegerForKey:@"ARVisualLocalizationResultData_errorCodeKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ARVisualLocalizationResultData_debugInfoKey"];
  v10 = [coderCopy decodeObjectForKey:@"ARVisualLocalizationResultData_inputLocationKey"];
  v11 = [coderCopy decodeIntegerForKey:@"ARVisualLocalizationResultData_algorithmVersionKey"];
  [coderCopy decodeDoubleForKey:@"ARVisualLocalizationResultData_undulationKey"];
  v13 = v12;

  v14 = [(ARVisualLocalizationResultData *)self initWithVLLocalizationResult:v7 errorCode:v8 debugInfo:v9 heading:v10 inputLocation:v11 algorithmVersion:v6 undulation:v13];
  return v14;
}

@end