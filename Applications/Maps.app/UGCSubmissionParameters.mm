@interface UGCSubmissionParameters
- (UGCSubmissionParameters)initWithRequestParameters:(id)parameters attachedImages:(id)images;
@end

@implementation UGCSubmissionParameters

- (UGCSubmissionParameters)initWithRequestParameters:(id)parameters attachedImages:(id)images
{
  parametersCopy = parameters;
  imagesCopy = images;
  v17.receiver = self;
  v17.super_class = UGCSubmissionParameters;
  v9 = [(UGCSubmissionParameters *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestParams, parameters);
    v11 = +[MKMapService sharedService];
    defaultTraits = [v11 defaultTraits];
    traits = v10->_traits;
    v10->_traits = defaultTraits;

    v14 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v14 isInternalInstall];

    if (!isInternalInstall || (GEOConfigGetBOOL() & 1) == 0)
    {
      [(GEOMapServiceTraits *)v10->_traits setDeviceLocation:0];
    }

    objc_storeStrong(&v10->_attachedImages, images);
  }

  return v10;
}

@end