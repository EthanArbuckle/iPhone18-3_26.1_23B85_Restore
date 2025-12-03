@interface CLTripSegmentProcessorOptions
- (CLTripSegmentProcessorOptions)init;
- (CLTripSegmentProcessorOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentProcessorOptions

- (CLTripSegmentProcessorOptions)init
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentProcessorOptions;
  result = [(CLTripSegmentProcessorOptions *)&v3 init];
  if (result)
  {
    result->_shouldRecordDataInFileForReplay = 1;
    *&result->_runLinearInterpolator = 16843009;
    result->_timeBetweenReconstructedPointsSeconds = 1.0;
    result->_tripSegmentRecorderLoggingDirectory = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
    *&result->_maxProcessingTimeInMilliSec = xmmword_19BA8CF00;
    *&result->_createSparseDataFromOneHzData = 0x101010000;
    result->_windowSizeForLocationOutlierRejector = 0;
    result->_stepSizeForLocationOutlierRejector = 0;
    *&result->_minDistanceBetweenODVisitsToGenerateTripSegmentMeters = xmmword_19BA8CF10;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setRunLinearInterpolator:{-[CLTripSegmentProcessorOptions runLinearInterpolator](self, "runLinearInterpolator")}];
  [v4 setRunInertialIntegrator:{-[CLTripSegmentProcessorOptions runInertialIntegrator](self, "runInertialIntegrator")}];
  [v4 setRunMapIntegrator:{-[CLTripSegmentProcessorOptions runMapIntegrator](self, "runMapIntegrator")}];
  [v4 setUseXPCService:{-[CLTripSegmentProcessorOptions useXPCServiceForMapQuery](self, "useXPCServiceForMapQuery")}];
  [v4 setshouldRecordDataInFileForReplay:{-[CLTripSegmentProcessorOptions shouldRecordDataInFileForReplay](self, "shouldRecordDataInFileForReplay")}];
  [v4 setCreateSparseDataFromOneHzData:{-[CLTripSegmentProcessorOptions createSparseDataFromOneHzData](self, "createSparseDataFromOneHzData")}];
  [v4 setSimulatedSparseProcessing:{-[CLTripSegmentProcessorOptions isSimulatedSparseProcessing](self, "isSimulatedSparseProcessing")}];
  [v4 setNetworkAccessAllowed:{-[CLTripSegmentProcessorOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [(CLTripSegmentProcessorOptions *)self timeBetweenReconstructedPointsSeconds];
  [v4 setTimeBetweenReconstructedPointsSeconds:?];
  [v4 setUseParticleMapMatcherForSnappingInMapIntegrator:{-[CLTripSegmentProcessorOptions useParticleMapMatcherForSnappingInMapIntegrator](self, "useParticleMapMatcherForSnappingInMapIntegrator")}];
  [v4 setTripSegmentRecorderLoggingDirectory:{-[CLTripSegmentProcessorOptions tripSegmentRecorderLoggingDirectory](self, "tripSegmentRecorderLoggingDirectory")}];
  [v4 setUseNonGNSSFixesForRouteReconstruction:{-[CLTripSegmentProcessorOptions useNonGNSSFixesForRouteReconstruction](self, "useNonGNSSFixesForRouteReconstruction")}];
  [(CLTripSegmentProcessorOptions *)self maxProcessingTimeInMilliSec];
  [v4 setMaxProcessingTimeInMilliSec:?];
  [(CLTripSegmentProcessorOptions *)self useXPCServiceForVehicularAStarSearch];
  [v4 setUseXPCServiceForVehicularAStarSearch:v5 != 0.0];
  [v4 setRunLocationOutlierRejector:{-[CLTripSegmentProcessorOptions runLocationOutlierRejector](self, "runLocationOutlierRejector")}];
  [v4 setWindowSizeForLocationOutlierRejector:{-[CLTripSegmentProcessorOptions windowSizeForLocationOutlierRejector](self, "windowSizeForLocationOutlierRejector")}];
  [v4 setStepSizeForLocationOutlierRejector:{-[CLTripSegmentProcessorOptions stepSizeForLocationOutlierRejector](self, "stepSizeForLocationOutlierRejector")}];
  [v4 setIsWatch:{-[CLTripSegmentProcessorOptions isWatch](self, "isWatch")}];
  [v4 setEnableUseWifiInPTS:{-[CLTripSegmentProcessorOptions enableUseWifiInPTS](self, "enableUseWifiInPTS")}];
  [(CLTripSegmentProcessorOptions *)self minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
  [v4 setMinDistanceBetweenODVisitsToGenerateTripSegmentMeters:?];
  [(CLTripSegmentProcessorOptions *)self maxTripSegmentDurationSeconds];
  [v4 setMaxTripSegmentDurationSeconds:?];
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLTripSegmentProcessorOptions;
  [(CLTripSegmentProcessorOptions *)&v2 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  return [v2 stringWithFormat:@"%@", NSStringFromClass(v3)];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:-[CLTripSegmentProcessorOptions runLinearInterpolator](self forKey:{"runLinearInterpolator"), @"runLinearInterpolator"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions runInertialIntegrator](self forKey:{"runInertialIntegrator"), @"runInertialIntegrator"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions runMapIntegrator](self forKey:{"runMapIntegrator"), @"runMapIntegrator"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions useXPCServiceForMapQuery](self forKey:{"useXPCServiceForMapQuery"), @"useXPCServiceForMapQuery"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions shouldRecordDataInFileForReplay](self forKey:{"shouldRecordDataInFileForReplay"), @"shouldRecordDataInFileForReplay"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions createSparseDataFromOneHzData](self forKey:{"createSparseDataFromOneHzData"), @"createSparseDataFromOneHzData"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions isSimulatedSparseProcessing](self forKey:{"isSimulatedSparseProcessing"), @"isSimulatedSparseProcessing"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions isNetworkAccessAllowed](self forKey:{"isNetworkAccessAllowed"), @"isNetworkAccessAllowed"}];
  [(CLTripSegmentProcessorOptions *)self timeBetweenReconstructedPointsSeconds];
  [coder encodeDouble:@"timeBetweenReconstructedPointsSeconds" forKey:?];
  [coder encodeBool:-[CLTripSegmentProcessorOptions useParticleMapMatcherForSnappingInMapIntegrator](self forKey:{"useParticleMapMatcherForSnappingInMapIntegrator"), @"useParticleMapMatcherForSnappingInMapIntegrator"}];
  [coder encodeObject:-[CLTripSegmentProcessorOptions tripSegmentRecorderLoggingDirectory](self forKey:{"tripSegmentRecorderLoggingDirectory"), @"tripSegmentRecorderLoggingDirectory"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions useNonGNSSFixesForRouteReconstruction](self forKey:{"useNonGNSSFixesForRouteReconstruction"), @"useNonGNSSFixesForRouteReconstruction"}];
  [(CLTripSegmentProcessorOptions *)self maxProcessingTimeInMilliSec];
  [coder encodeDouble:@"maxProcessingTimeMilliSec" forKey:?];
  [(CLTripSegmentProcessorOptions *)self useXPCServiceForVehicularAStarSearch];
  [coder encodeBool:v5 != 0.0 forKey:@"useXPCServiceForVehicularAStarSearch"];
  [coder encodeBool:-[CLTripSegmentProcessorOptions runLocationOutlierRejector](self forKey:{"runLocationOutlierRejector"), @"runLocationOutlierRejector"}];
  [coder encodeInteger:-[CLTripSegmentProcessorOptions windowSizeForLocationOutlierRejector](self forKey:{"windowSizeForLocationOutlierRejector"), @"windowSizeForLocationOutlierRejector"}];
  [coder encodeInteger:-[CLTripSegmentProcessorOptions stepSizeForLocationOutlierRejector](self forKey:{"stepSizeForLocationOutlierRejector"), @"stepSizeForLocationOutlierRejector"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions isWatch](self forKey:{"isWatch"), @"isWatch"}];
  [coder encodeBool:-[CLTripSegmentProcessorOptions enableUseWifiInPTS](self forKey:{"enableUseWifiInPTS"), @"enableUseWifiInPTS"}];
  [(CLTripSegmentProcessorOptions *)self minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
  [coder encodeDouble:@"minDistanceBetweenODVisitsToGenerateTripSegmentMeters" forKey:?];
  [(CLTripSegmentProcessorOptions *)self maxTripSegmentDurationSeconds];

  [coder encodeDouble:@"maxTripSegmentDurationSeconds" forKey:?];
}

- (CLTripSegmentProcessorOptions)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(CLTripSegmentProcessorOptions);
  -[CLTripSegmentProcessorOptions setRunLinearInterpolator:](v4, "setRunLinearInterpolator:", [coder decodeBoolForKey:@"runLinearInterpolator"]);
  -[CLTripSegmentProcessorOptions setRunInertialIntegrator:](v4, "setRunInertialIntegrator:", [coder decodeBoolForKey:@"runInertialIntegrator"]);
  -[CLTripSegmentProcessorOptions setRunMapIntegrator:](v4, "setRunMapIntegrator:", [coder decodeBoolForKey:@"runMapIntegrator"]);
  -[CLTripSegmentProcessorOptions setUseXPCService:](v4, "setUseXPCService:", [coder decodeBoolForKey:@"useXPCServiceForMapQuery"]);
  -[CLTripSegmentProcessorOptions setshouldRecordDataInFileForReplay:](v4, "setshouldRecordDataInFileForReplay:", [coder decodeBoolForKey:@"shouldRecordDataInFileForReplay"]);
  -[CLTripSegmentProcessorOptions setCreateSparseDataFromOneHzData:](v4, "setCreateSparseDataFromOneHzData:", [coder decodeBoolForKey:@"createSparseDataFromOneHzData"]);
  -[CLTripSegmentProcessorOptions setSimulatedSparseProcessing:](v4, "setSimulatedSparseProcessing:", [coder decodeBoolForKey:@"isSimulatedSparseProcessing"]);
  -[CLTripSegmentProcessorOptions setNetworkAccessAllowed:](v4, "setNetworkAccessAllowed:", [coder decodeBoolForKey:@"isNetworkAccessAllowed"]);
  [coder decodeDoubleForKey:@"timeBetweenReconstructedPointsSeconds"];
  [(CLTripSegmentProcessorOptions *)v4 setTimeBetweenReconstructedPointsSeconds:?];
  -[CLTripSegmentProcessorOptions setUseParticleMapMatcherForSnappingInMapIntegrator:](v4, "setUseParticleMapMatcherForSnappingInMapIntegrator:", [coder decodeBoolForKey:@"useParticleMapMatcherForSnappingInMapIntegrator"]);
  -[CLTripSegmentProcessorOptions setTripSegmentRecorderLoggingDirectory:](v4, "setTripSegmentRecorderLoggingDirectory:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentRecorderLoggingDirectory"]);
  -[CLTripSegmentProcessorOptions setUseNonGNSSFixesForRouteReconstruction:](v4, "setUseNonGNSSFixesForRouteReconstruction:", [coder decodeBoolForKey:@"useNonGNSSFixesForRouteReconstruction"]);
  [coder decodeDoubleForKey:@"maxProcessingTimeMilliSec"];
  [(CLTripSegmentProcessorOptions *)v4 setMaxProcessingTimeInMilliSec:?];
  -[CLTripSegmentProcessorOptions setUseXPCServiceForVehicularAStarSearch:](v4, "setUseXPCServiceForVehicularAStarSearch:", [coder decodeBoolForKey:@"useXPCServiceForVehicularAStarSearch"]);
  -[CLTripSegmentProcessorOptions setRunLocationOutlierRejector:](v4, "setRunLocationOutlierRejector:", [coder decodeBoolForKey:@"runLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setWindowSizeForLocationOutlierRejector:](v4, "setWindowSizeForLocationOutlierRejector:", [coder decodeIntegerForKey:@"windowSizeForLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setStepSizeForLocationOutlierRejector:](v4, "setStepSizeForLocationOutlierRejector:", [coder decodeIntegerForKey:@"stepSizeForLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setIsWatch:](v4, "setIsWatch:", [coder decodeBoolForKey:@"isWatch"]);
  -[CLTripSegmentProcessorOptions setEnableUseWifiInPTS:](v4, "setEnableUseWifiInPTS:", [coder decodeBoolForKey:@"enableUseWifiInPTS"]);
  [coder decodeDoubleForKey:@"minDistanceBetweenODVisitsToGenerateTripSegmentMeters"];
  [(CLTripSegmentProcessorOptions *)v4 setMinDistanceBetweenODVisitsToGenerateTripSegmentMeters:?];
  [coder decodeDoubleForKey:@"maxTripSegmentDurationSeconds"];
  [(CLTripSegmentProcessorOptions *)v4 setMaxTripSegmentDurationSeconds:?];
  return v4;
}

@end