@interface ARVisualLocalizationResultData
- (ARVisualLocalizationResultData)initWithCoder:(id)a3;
- (ARVisualLocalizationResultData)initWithVLLocalizationResult:(id)a3 errorCode:(int64_t)a4 debugInfo:(id)a5 heading:(double)a6 inputLocation:(id)a7 algorithmVersion:(int64_t)a8 undulation:(double)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARVisualLocalizationResultData

- (ARVisualLocalizationResultData)initWithVLLocalizationResult:(id)a3 errorCode:(int64_t)a4 debugInfo:(id)a5 heading:(double)a6 inputLocation:(id)a7 algorithmVersion:(int64_t)a8 undulation:(double)a9
{
  v36 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a5;
  v19 = a7;
  v32.receiver = self;
  v32.super_class = ARVisualLocalizationResultData;
  v20 = [(ARVisualLocalizationResultData *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_localizationResult, a3);
    v21->_errorCode = a4;
    objc_storeStrong(&v21->_debugInfo, a5);
    v21->_heading = a6;
    objc_storeStrong(&v21->_inputLocation, a7);
    v21->_algorithmVersion = a8;
    v21->_undulation = a9;
    if (v21->_localizationResult)
    {
      if (v17)
      {
        [v17 location];
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
      v25 = [MEMORY[0x1E695DF00] date];
      v26 = [v23 initWithCoordinate:v25 altitude:v24.latitude horizontalAccuracy:v24.longitude verticalAccuracy:v22 timestamp:{0.0, 0.0}];
      location = v21->_location;
      v21->_location = v26;
    }
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(ARVisualLocalizationResultData *)self heading];
  [v6 encodeDouble:@"ARVisualLocalizationResultData_headingKey" forKey:?];
  v4 = [(ARVisualLocalizationResultData *)self localizationResult];
  [v6 encodeObject:v4 forKey:@"ARVisualLocalizationResultData_localizationResultKey"];

  [v6 encodeInteger:-[ARVisualLocalizationResultData errorCode](self forKey:{"errorCode"), @"ARVisualLocalizationResultData_errorCodeKey"}];
  v5 = [(ARVisualLocalizationResultData *)self debugInfo];
  [v6 encodeObject:v5 forKey:@"ARVisualLocalizationResultData_debugInfoKey"];

  [v6 encodeObject:self->_inputLocation forKey:@"ARVisualLocalizationResultData_inputLocationKey"];
  [v6 encodeInteger:-[ARVisualLocalizationResultData algorithmVersion](self forKey:{"algorithmVersion"), @"ARVisualLocalizationResultData_algorithmVersionKey"}];
  [v6 encodeDouble:@"ARVisualLocalizationResultData_undulationKey" forKey:self->_undulation];
}

- (ARVisualLocalizationResultData)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"ARVisualLocalizationResultData_headingKey"];
  v6 = v5;
  v7 = [v4 decodeObjectForKey:@"ARVisualLocalizationResultData_localizationResultKey"];
  v8 = [v4 decodeIntegerForKey:@"ARVisualLocalizationResultData_errorCodeKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ARVisualLocalizationResultData_debugInfoKey"];
  v10 = [v4 decodeObjectForKey:@"ARVisualLocalizationResultData_inputLocationKey"];
  v11 = [v4 decodeIntegerForKey:@"ARVisualLocalizationResultData_algorithmVersionKey"];
  [v4 decodeDoubleForKey:@"ARVisualLocalizationResultData_undulationKey"];
  v13 = v12;

  v14 = [(ARVisualLocalizationResultData *)self initWithVLLocalizationResult:v7 errorCode:v8 debugInfo:v9 heading:v10 inputLocation:v11 algorithmVersion:v6 undulation:v13];
  return v14;
}

@end