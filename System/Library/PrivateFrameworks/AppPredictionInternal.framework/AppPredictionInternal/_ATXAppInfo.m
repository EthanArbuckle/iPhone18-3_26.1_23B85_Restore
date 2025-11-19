@interface _ATXAppInfo
- (_ATXAppInfo)initWithBundleId:(id)a3 isExtension:(BOOL)a4 isEnterpriseApp:(BOOL)a5 installDate:(id)a6 lastLaunch:(id)a7 lastSpotlightLaunch:(id)a8 averageSecondsBetweenLaunches:(id)a9 medianSecondsBetweenLaunches:(id)a10 genreId:(id)a11 subGenreIds:(id)a12 app2VecCluster:(id)a13;
@end

@implementation _ATXAppInfo

- (_ATXAppInfo)initWithBundleId:(id)a3 isExtension:(BOOL)a4 isEnterpriseApp:(BOOL)a5 installDate:(id)a6 lastLaunch:(id)a7 lastSpotlightLaunch:(id)a8 averageSecondsBetweenLaunches:(id)a9 medianSecondsBetweenLaunches:(id)a10 genreId:(id)a11 subGenreIds:(id)a12 app2VecCluster:(id)a13
{
  v17 = a3;
  v50 = a6;
  v49 = a7;
  v18 = a8;
  v19 = a9;
  v20 = self;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = v17;
  if (!v17)
  {
    [_ATXAppInfo initWithBundleId:a2 isExtension:v20 isEnterpriseApp:? installDate:? lastLaunch:? lastSpotlightLaunch:? averageSecondsBetweenLaunches:? medianSecondsBetweenLaunches:? genreId:? subGenreIds:? app2VecCluster:?];
  }

  v51.receiver = v20;
  v51.super_class = _ATXAppInfo;
  v26 = [(_ATXAppInfo *)&v51 init];
  if (v26)
  {
    v27 = [v25 copy];
    bundleId = v26->_bundleId;
    v26->_bundleId = v27;

    v26->_isExtension = a4;
    v26->_isEnterpriseApp = a5;
    v29 = [v50 copy];
    installDate = v26->_installDate;
    v26->_installDate = v29;

    v31 = [v49 copy];
    lastLaunch = v26->_lastLaunch;
    v26->_lastLaunch = v31;

    v33 = [v18 copy];
    lastSpotlightLaunch = v26->_lastSpotlightLaunch;
    v26->_lastSpotlightLaunch = v33;

    v35 = [v19 copy];
    averageSecondsBetweenLaunches = v26->_averageSecondsBetweenLaunches;
    v26->_averageSecondsBetweenLaunches = v35;

    v37 = [v21 copy];
    medianSecondsBetweenLaunches = v26->_medianSecondsBetweenLaunches;
    v26->_medianSecondsBetweenLaunches = v37;

    v39 = [v22 copy];
    genreId = v26->_genreId;
    v26->_genreId = v39;

    v41 = [v23 count];
    if (v41)
    {
      v41 = [v23 copy];
    }

    subGenreIds = v26->_subGenreIds;
    v26->_subGenreIds = v41;

    v43 = [v24 copy];
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