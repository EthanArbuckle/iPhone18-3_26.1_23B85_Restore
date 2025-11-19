@interface CLTripSegmentProcessorOptions
- (CLTripSegmentProcessorOptions)init;
- (CLTripSegmentProcessorOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:-[CLTripSegmentProcessorOptions runLinearInterpolator](self forKey:{"runLinearInterpolator"), @"runLinearInterpolator"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions runInertialIntegrator](self forKey:{"runInertialIntegrator"), @"runInertialIntegrator"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions runMapIntegrator](self forKey:{"runMapIntegrator"), @"runMapIntegrator"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions useXPCServiceForMapQuery](self forKey:{"useXPCServiceForMapQuery"), @"useXPCServiceForMapQuery"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions shouldRecordDataInFileForReplay](self forKey:{"shouldRecordDataInFileForReplay"), @"shouldRecordDataInFileForReplay"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions createSparseDataFromOneHzData](self forKey:{"createSparseDataFromOneHzData"), @"createSparseDataFromOneHzData"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions isSimulatedSparseProcessing](self forKey:{"isSimulatedSparseProcessing"), @"isSimulatedSparseProcessing"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions isNetworkAccessAllowed](self forKey:{"isNetworkAccessAllowed"), @"isNetworkAccessAllowed"}];
  [(CLTripSegmentProcessorOptions *)self timeBetweenReconstructedPointsSeconds];
  [a3 encodeDouble:@"timeBetweenReconstructedPointsSeconds" forKey:?];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions useParticleMapMatcherForSnappingInMapIntegrator](self forKey:{"useParticleMapMatcherForSnappingInMapIntegrator"), @"useParticleMapMatcherForSnappingInMapIntegrator"}];
  [a3 encodeObject:-[CLTripSegmentProcessorOptions tripSegmentRecorderLoggingDirectory](self forKey:{"tripSegmentRecorderLoggingDirectory"), @"tripSegmentRecorderLoggingDirectory"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions useNonGNSSFixesForRouteReconstruction](self forKey:{"useNonGNSSFixesForRouteReconstruction"), @"useNonGNSSFixesForRouteReconstruction"}];
  [(CLTripSegmentProcessorOptions *)self maxProcessingTimeInMilliSec];
  [a3 encodeDouble:@"maxProcessingTimeMilliSec" forKey:?];
  [(CLTripSegmentProcessorOptions *)self useXPCServiceForVehicularAStarSearch];
  [a3 encodeBool:v5 != 0.0 forKey:@"useXPCServiceForVehicularAStarSearch"];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions runLocationOutlierRejector](self forKey:{"runLocationOutlierRejector"), @"runLocationOutlierRejector"}];
  [a3 encodeInteger:-[CLTripSegmentProcessorOptions windowSizeForLocationOutlierRejector](self forKey:{"windowSizeForLocationOutlierRejector"), @"windowSizeForLocationOutlierRejector"}];
  [a3 encodeInteger:-[CLTripSegmentProcessorOptions stepSizeForLocationOutlierRejector](self forKey:{"stepSizeForLocationOutlierRejector"), @"stepSizeForLocationOutlierRejector"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions isWatch](self forKey:{"isWatch"), @"isWatch"}];
  [a3 encodeBool:-[CLTripSegmentProcessorOptions enableUseWifiInPTS](self forKey:{"enableUseWifiInPTS"), @"enableUseWifiInPTS"}];
  [(CLTripSegmentProcessorOptions *)self minDistanceBetweenODVisitsToGenerateTripSegmentMeters];
  [a3 encodeDouble:@"minDistanceBetweenODVisitsToGenerateTripSegmentMeters" forKey:?];
  [(CLTripSegmentProcessorOptions *)self maxTripSegmentDurationSeconds];

  [a3 encodeDouble:@"maxTripSegmentDurationSeconds" forKey:?];
}

- (CLTripSegmentProcessorOptions)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(CLTripSegmentProcessorOptions);
  -[CLTripSegmentProcessorOptions setRunLinearInterpolator:](v4, "setRunLinearInterpolator:", [a3 decodeBoolForKey:@"runLinearInterpolator"]);
  -[CLTripSegmentProcessorOptions setRunInertialIntegrator:](v4, "setRunInertialIntegrator:", [a3 decodeBoolForKey:@"runInertialIntegrator"]);
  -[CLTripSegmentProcessorOptions setRunMapIntegrator:](v4, "setRunMapIntegrator:", [a3 decodeBoolForKey:@"runMapIntegrator"]);
  -[CLTripSegmentProcessorOptions setUseXPCService:](v4, "setUseXPCService:", [a3 decodeBoolForKey:@"useXPCServiceForMapQuery"]);
  -[CLTripSegmentProcessorOptions setshouldRecordDataInFileForReplay:](v4, "setshouldRecordDataInFileForReplay:", [a3 decodeBoolForKey:@"shouldRecordDataInFileForReplay"]);
  -[CLTripSegmentProcessorOptions setCreateSparseDataFromOneHzData:](v4, "setCreateSparseDataFromOneHzData:", [a3 decodeBoolForKey:@"createSparseDataFromOneHzData"]);
  -[CLTripSegmentProcessorOptions setSimulatedSparseProcessing:](v4, "setSimulatedSparseProcessing:", [a3 decodeBoolForKey:@"isSimulatedSparseProcessing"]);
  -[CLTripSegmentProcessorOptions setNetworkAccessAllowed:](v4, "setNetworkAccessAllowed:", [a3 decodeBoolForKey:@"isNetworkAccessAllowed"]);
  [a3 decodeDoubleForKey:@"timeBetweenReconstructedPointsSeconds"];
  [(CLTripSegmentProcessorOptions *)v4 setTimeBetweenReconstructedPointsSeconds:?];
  -[CLTripSegmentProcessorOptions setUseParticleMapMatcherForSnappingInMapIntegrator:](v4, "setUseParticleMapMatcherForSnappingInMapIntegrator:", [a3 decodeBoolForKey:@"useParticleMapMatcherForSnappingInMapIntegrator"]);
  -[CLTripSegmentProcessorOptions setTripSegmentRecorderLoggingDirectory:](v4, "setTripSegmentRecorderLoggingDirectory:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tripSegmentRecorderLoggingDirectory"]);
  -[CLTripSegmentProcessorOptions setUseNonGNSSFixesForRouteReconstruction:](v4, "setUseNonGNSSFixesForRouteReconstruction:", [a3 decodeBoolForKey:@"useNonGNSSFixesForRouteReconstruction"]);
  [a3 decodeDoubleForKey:@"maxProcessingTimeMilliSec"];
  [(CLTripSegmentProcessorOptions *)v4 setMaxProcessingTimeInMilliSec:?];
  -[CLTripSegmentProcessorOptions setUseXPCServiceForVehicularAStarSearch:](v4, "setUseXPCServiceForVehicularAStarSearch:", [a3 decodeBoolForKey:@"useXPCServiceForVehicularAStarSearch"]);
  -[CLTripSegmentProcessorOptions setRunLocationOutlierRejector:](v4, "setRunLocationOutlierRejector:", [a3 decodeBoolForKey:@"runLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setWindowSizeForLocationOutlierRejector:](v4, "setWindowSizeForLocationOutlierRejector:", [a3 decodeIntegerForKey:@"windowSizeForLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setStepSizeForLocationOutlierRejector:](v4, "setStepSizeForLocationOutlierRejector:", [a3 decodeIntegerForKey:@"stepSizeForLocationOutlierRejector"]);
  -[CLTripSegmentProcessorOptions setIsWatch:](v4, "setIsWatch:", [a3 decodeBoolForKey:@"isWatch"]);
  -[CLTripSegmentProcessorOptions setEnableUseWifiInPTS:](v4, "setEnableUseWifiInPTS:", [a3 decodeBoolForKey:@"enableUseWifiInPTS"]);
  [a3 decodeDoubleForKey:@"minDistanceBetweenODVisitsToGenerateTripSegmentMeters"];
  [(CLTripSegmentProcessorOptions *)v4 setMinDistanceBetweenODVisitsToGenerateTripSegmentMeters:?];
  [a3 decodeDoubleForKey:@"maxTripSegmentDurationSeconds"];
  [(CLTripSegmentProcessorOptions *)v4 setMaxTripSegmentDurationSeconds:?];
  return v4;
}

@end