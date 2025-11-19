@interface ARObjectScanningConfiguration
+ (id)supportedVideoFormats;
- (ARObjectScanningConfiguration)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageSensorSettings;
- (void)createTechniques:(id)a3;
@end

@implementation ARObjectScanningConfiguration

- (ARObjectScanningConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARObjectScanningConfiguration;
  v2 = [(ARConfiguration *)&v5 initPrivate];
  v3 = v2;
  if (v2)
  {
    [(ARConfiguration *)v2 setAutoFocusEnabled:1];
    [(ARObjectScanningConfiguration *)v3 setLowQosSchedulingEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableLowQosScheduling"]];
  }

  return v3;
}

+ (id)supportedVideoFormats
{
  v2 = +[ARWorldTrackingConfiguration supportedVideoFormats];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_54];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)imageSensorSettings
{
  v4.receiver = self;
  v4.super_class = ARObjectScanningConfiguration;
  v2 = [(ARConfiguration *)&v4 imageSensorSettings];
  [v2 setVisionDataOutputEnabled:0];

  return v2;
}

- (void)createTechniques:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ARObjectScanningConfiguration *)self imageSensorSettings];
  [v5 setImageSensorSettings:v6];

  v7 = [(ARConfiguration *)self deviceModel];
  [v5 setDeviceModel:v7];

  [v5 setSlamConfiguration:@"ObjectDetectionMapBuilding"];
  [v5 setPlaneDetection:{-[ARObjectScanningConfiguration planeDetection](self, "planeDetection")}];
  [v5 setMlModelEnabled:{-[ARObjectScanningConfiguration isMLModelEnabled](self, "isMLModelEnabled")}];
  [v5 setLowQosSchedulingEnabled:{-[ARObjectScanningConfiguration isLowQosSchedulingEnabled](self, "isLowQosSchedulingEnabled")}];
  [v5 setPlaneEstimationShouldUseJasperData:0];
  v8 = [(ARConfiguration *)self replaySensor];
  v9 = v8;
  if (v8 && [v8 replayMode])
  {
    [v5 setDeterministicMode:1];
  }

  v10 = [[ARWorldTrackingTechnique alloc] initWithOptions:v5];
  if (v10)
  {
    v11 = [ARParentTechnique alloc];
    v18[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v13 = [(ARParentTechnique *)v11 initWithParallelTechniques:v12];

    [v4 addObject:v13];
    v14 = [(ARWorldTrackingTechnique *)v10 options];
    v15 = [v14 planeDetection];

    if (v15)
    {
      v16 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v10];
      [v4 addObject:v16];
    }

    v17.receiver = self;
    v17.super_class = ARObjectScanningConfiguration;
    [(ARConfiguration *)&v17 createTechniques:v4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARObjectScanningConfiguration;
  if ([(ARConfiguration *)&v8 isEqual:v4])
  {
    v5 = v4;
    v6 = self->_planeDetection == v5[15] && self->_mlModelEnabled == *(v5 + 112) && self->_lowQosSchedulingEnabled == *(v5 + 113) && self->_deliverRawSceneUnderstandingResults == *(v5 + 114);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = ARObjectScanningConfiguration;
  result = [(ARConfiguration *)&v5 copyWithZone:a3];
  *(result + 15) = self->_planeDetection;
  *(result + 112) = self->_mlModelEnabled;
  *(result + 113) = self->_lowQosSchedulingEnabled;
  *(result + 114) = self->_deliverRawSceneUnderstandingResults;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARConfiguration *)self isAutoFocusEnabled];
  v8 = @"Disabled";
  if (v7)
  {
    v8 = @"Enabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v9];

  v10 = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:v10];

  [v6 appendString:@">"];

  return v6;
}

@end