@interface ARObjectScanningConfiguration
+ (id)supportedVideoFormats;
- (ARObjectScanningConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (void)createTechniques:(id)techniques;
@end

@implementation ARObjectScanningConfiguration

- (ARObjectScanningConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARObjectScanningConfiguration;
  initPrivate = [(ARConfiguration *)&v5 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(ARConfiguration *)initPrivate setAutoFocusEnabled:1];
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
  imageSensorSettings = [(ARConfiguration *)&v4 imageSensorSettings];
  [imageSensorSettings setVisionDataOutputEnabled:0];

  return imageSensorSettings;
}

- (void)createTechniques:(id)techniques
{
  v18[1] = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  v5 = objc_opt_new();
  imageSensorSettings = [(ARObjectScanningConfiguration *)self imageSensorSettings];
  [v5 setImageSensorSettings:imageSensorSettings];

  deviceModel = [(ARConfiguration *)self deviceModel];
  [v5 setDeviceModel:deviceModel];

  [v5 setSlamConfiguration:@"ObjectDetectionMapBuilding"];
  [v5 setPlaneDetection:{-[ARObjectScanningConfiguration planeDetection](self, "planeDetection")}];
  [v5 setMlModelEnabled:{-[ARObjectScanningConfiguration isMLModelEnabled](self, "isMLModelEnabled")}];
  [v5 setLowQosSchedulingEnabled:{-[ARObjectScanningConfiguration isLowQosSchedulingEnabled](self, "isLowQosSchedulingEnabled")}];
  [v5 setPlaneEstimationShouldUseJasperData:0];
  replaySensor = [(ARConfiguration *)self replaySensor];
  v9 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
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

    [techniquesCopy addObject:v13];
    options = [(ARWorldTrackingTechnique *)v10 options];
    planeDetection = [options planeDetection];

    if (planeDetection)
    {
      v16 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v10];
      [techniquesCopy addObject:v16];
    }

    v17.receiver = self;
    v17.super_class = ARObjectScanningConfiguration;
    [(ARConfiguration *)&v17 createTechniques:techniquesCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARObjectScanningConfiguration;
  if ([(ARConfiguration *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = self->_planeDetection == v5[15] && self->_mlModelEnabled == *(v5 + 112) && self->_lowQosSchedulingEnabled == *(v5 + 113) && self->_deliverRawSceneUnderstandingResults == *(v5 + 114);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = ARObjectScanningConfiguration;
  result = [(ARConfiguration *)&v5 copyWithZone:zone];
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

  isAutoFocusEnabled = [(ARConfiguration *)self isAutoFocusEnabled];
  v8 = @"Disabled";
  if (isAutoFocusEnabled)
  {
    v8 = @"Enabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v9];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  [v6 appendString:@">"];

  return v6;
}

@end