@interface FMDRemoteAssetValidator
- (BOOL)isValidReponse:(id)reponse validationError:(id *)error;
- (FMDRemoteAssetValidator)initWithRequestURL:(id)l mimeTypeProvider:(id)provider;
@end

@implementation FMDRemoteAssetValidator

- (FMDRemoteAssetValidator)initWithRequestURL:(id)l mimeTypeProvider:(id)provider
{
  lCopy = l;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = FMDRemoteAssetValidator;
  v9 = [(FMDRemoteAssetValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestURL, l);
    objc_storeStrong(&v10->_mimeTypeProvider, provider);
  }

  return v10;
}

- (BOOL)isValidReponse:(id)reponse validationError:(id *)error
{
  reponseCopy = reponse;
  mimeTypeProvider = [(FMDRemoteAssetValidator *)self mimeTypeProvider];
  requestURL = [(FMDRemoteAssetValidator *)self requestURL];
  pathExtension = [requestURL pathExtension];
  v10 = [mimeTypeProvider mimeTypeForFileExtension:pathExtension];

  mIMEType = [reponseCopy MIMEType];
  requestURL2 = [(FMDRemoteAssetValidator *)self requestURL];
  pathExtension2 = [requestURL2 pathExtension];

  v14 = [reponseCopy URL];

  pathExtension3 = [v14 pathExtension];

  if (v10 && mIMEType && [v10 length] && objc_msgSend(mIMEType, "length"))
  {
    v16 = v10;
    v17 = mIMEType;
LABEL_11:
    v18 = [v16 isEqualToString:v17];
    goto LABEL_25;
  }

  if (pathExtension2 && pathExtension3 && [pathExtension2 length] && objc_msgSend(pathExtension3, "length"))
  {
    v16 = pathExtension2;
    v17 = pathExtension3;
    goto LABEL_11;
  }

  if (error)
  {
    if (v10 && pathExtension2 && [v10 length] && objc_msgSend(pathExtension2, "length"))
    {
      if (mIMEType && pathExtension3 && [mIMEType length] && objc_msgSend(pathExtension3, "length"))
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }

    [NSError errorWithDomain:@"com.apple.icloud.findmydevice.RemoteAssetValidation" code:v19 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

  return v18;
}

@end