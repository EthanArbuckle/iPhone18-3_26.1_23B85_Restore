@interface FMDRemoteAssetValidator
- (BOOL)isValidReponse:(id)a3 validationError:(id *)a4;
- (FMDRemoteAssetValidator)initWithRequestURL:(id)a3 mimeTypeProvider:(id)a4;
@end

@implementation FMDRemoteAssetValidator

- (FMDRemoteAssetValidator)initWithRequestURL:(id)a3 mimeTypeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMDRemoteAssetValidator;
  v9 = [(FMDRemoteAssetValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestURL, a3);
    objc_storeStrong(&v10->_mimeTypeProvider, a4);
  }

  return v10;
}

- (BOOL)isValidReponse:(id)a3 validationError:(id *)a4
{
  v6 = a3;
  v7 = [(FMDRemoteAssetValidator *)self mimeTypeProvider];
  v8 = [(FMDRemoteAssetValidator *)self requestURL];
  v9 = [v8 pathExtension];
  v10 = [v7 mimeTypeForFileExtension:v9];

  v11 = [v6 MIMEType];
  v12 = [(FMDRemoteAssetValidator *)self requestURL];
  v13 = [v12 pathExtension];

  v14 = [v6 URL];

  v15 = [v14 pathExtension];

  if (v10 && v11 && [v10 length] && objc_msgSend(v11, "length"))
  {
    v16 = v10;
    v17 = v11;
LABEL_11:
    v18 = [v16 isEqualToString:v17];
    goto LABEL_25;
  }

  if (v13 && v15 && [v13 length] && objc_msgSend(v15, "length"))
  {
    v16 = v13;
    v17 = v15;
    goto LABEL_11;
  }

  if (a4)
  {
    if (v10 && v13 && [v10 length] && objc_msgSend(v13, "length"))
    {
      if (v11 && v15 && [v11 length] && objc_msgSend(v15, "length"))
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
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

  return v18;
}

@end