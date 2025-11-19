@interface UGCSubmissionParameters
- (UGCSubmissionParameters)initWithRequestParameters:(id)a3 attachedImages:(id)a4;
@end

@implementation UGCSubmissionParameters

- (UGCSubmissionParameters)initWithRequestParameters:(id)a3 attachedImages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = UGCSubmissionParameters;
  v9 = [(UGCSubmissionParameters *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestParams, a3);
    v11 = +[MKMapService sharedService];
    v12 = [v11 defaultTraits];
    traits = v10->_traits;
    v10->_traits = v12;

    v14 = +[GEOPlatform sharedPlatform];
    v15 = [v14 isInternalInstall];

    if (!v15 || (GEOConfigGetBOOL() & 1) == 0)
    {
      [(GEOMapServiceTraits *)v10->_traits setDeviceLocation:0];
    }

    objc_storeStrong(&v10->_attachedImages, a4);
  }

  return v10;
}

@end