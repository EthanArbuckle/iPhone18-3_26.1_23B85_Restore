@interface _ATXAppInfo
- (_ATXAppInfo)initWithBundleId:(id)id isExtension:(BOOL)extension isEnterpriseApp:(BOOL)app installDate:(id)date lastLaunch:(id)launch lastSpotlightLaunch:(id)spotlightLaunch averageSecondsBetweenLaunches:(id)launches medianSecondsBetweenLaunches:(id)self0 genreId:(id)self1 subGenreIds:(id)self2 app2VecCluster:(id)self3;
@end

@implementation _ATXAppInfo

- (_ATXAppInfo)initWithBundleId:(id)id isExtension:(BOOL)extension isEnterpriseApp:(BOOL)app installDate:(id)date lastLaunch:(id)launch lastSpotlightLaunch:(id)spotlightLaunch averageSecondsBetweenLaunches:(id)launches medianSecondsBetweenLaunches:(id)self0 genreId:(id)self1 subGenreIds:(id)self2 app2VecCluster:(id)self3
{
  idCopy = id;
  dateCopy = date;
  launchCopy = launch;
  spotlightLaunchCopy = spotlightLaunch;
  launchesCopy = launches;
  selfCopy = self;
  betweenLaunchesCopy = betweenLaunches;
  genreIdCopy = genreId;
  idsCopy = ids;
  clusterCopy = cluster;
  v25 = idCopy;
  if (!idCopy)
  {
    [_ATXAppInfo initWithBundleId:a2 isExtension:selfCopy isEnterpriseApp:? installDate:? lastLaunch:? lastSpotlightLaunch:? averageSecondsBetweenLaunches:? medianSecondsBetweenLaunches:? genreId:? subGenreIds:? app2VecCluster:?];
  }

  v51.receiver = selfCopy;
  v51.super_class = _ATXAppInfo;
  v26 = [(_ATXAppInfo *)&v51 init];
  if (v26)
  {
    v27 = [v25 copy];
    bundleId = v26->_bundleId;
    v26->_bundleId = v27;

    v26->_isExtension = extension;
    v26->_isEnterpriseApp = app;
    v29 = [dateCopy copy];
    installDate = v26->_installDate;
    v26->_installDate = v29;

    v31 = [launchCopy copy];
    lastLaunch = v26->_lastLaunch;
    v26->_lastLaunch = v31;

    v33 = [spotlightLaunchCopy copy];
    lastSpotlightLaunch = v26->_lastSpotlightLaunch;
    v26->_lastSpotlightLaunch = v33;

    v35 = [launchesCopy copy];
    averageSecondsBetweenLaunches = v26->_averageSecondsBetweenLaunches;
    v26->_averageSecondsBetweenLaunches = v35;

    v37 = [betweenLaunchesCopy copy];
    medianSecondsBetweenLaunches = v26->_medianSecondsBetweenLaunches;
    v26->_medianSecondsBetweenLaunches = v37;

    v39 = [genreIdCopy copy];
    genreId = v26->_genreId;
    v26->_genreId = v39;

    v41 = [idsCopy count];
    if (v41)
    {
      v41 = [idsCopy copy];
    }

    subGenreIds = v26->_subGenreIds;
    v26->_subGenreIds = v41;

    v43 = [clusterCopy copy];
    app2VecCluster = v26->_app2VecCluster;
    v26->_app2VecCluster = v43;
  }

  return v26;
}

- (void)initWithBundleId:(uint64_t)a1 isExtension:(uint64_t)a2 isEnterpriseApp:installDate:lastLaunch:lastSpotlightLaunch:averageSecondsBetweenLaunches:medianSecondsBetweenLaunches:genreId:subGenreIds:app2VecCluster:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppInfo.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
}

@end