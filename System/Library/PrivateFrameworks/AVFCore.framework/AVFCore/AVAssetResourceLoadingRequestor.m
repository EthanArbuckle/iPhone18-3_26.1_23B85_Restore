@interface AVAssetResourceLoadingRequestor
- (AVAssetResourceLoadingRequestor)initWithRequestInfo:(__CFDictionary *)a3;
- (void)dealloc;
@end

@implementation AVAssetResourceLoadingRequestor

- (AVAssetResourceLoadingRequestor)initWithRequestInfo:(__CFDictionary *)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetResourceLoadingRequestor;
  v3 = [(AVAssetResourceLoadingRequestor *)&v6 init];
  if (v3)
  {
    v4 = objc_alloc_init(AVAssetResourceLoadingRequestorInternal);
    v3->_requestor = v4;
    if (v4)
    {
      if (FigCustomURLRequestInfoGetIsSecureStopSupported())
      {
        v3->_requestor->providesExpiredSessionReports = 0;
      }

      else
      {
        v3->_requestor->providesExpiredSessionReports = 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetResourceLoadingRequestor;
  [(AVAssetResourceLoadingRequestor *)&v3 dealloc];
}

@end