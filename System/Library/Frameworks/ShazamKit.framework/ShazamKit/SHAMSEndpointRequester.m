@interface SHAMSEndpointRequester
- (BOOL)isTokenFailureError:(id)a3;
- (SHAMSEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4;
- (id)buildEncoderForSession:(id)a3 clientType:(int64_t)a4 clientIdentifier:(id)a5;
- (id)sessionConfiguration;
- (void)handleResultData:(id)a3 forResponse:(id)a4 callback:(id)a5 error:(id)a6;
- (void)invalidate;
- (void)performDownloadRequest:(id)a3 filename:(id)a4 fileType:(id)a5 reply:(id)a6;
- (void)performRequest:(id)a3 withReply:(id)a4;
@end

@implementation SHAMSEndpointRequester

- (SHAMSEndpointRequester)initWithClientIdentifier:(id)a3 clientType:(int64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = SHAMSEndpointRequester;
  v8 = [(SHAMSEndpointRequester *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientIdentifier, a3);
    v9->_clientType = a4;
    v10 = [AMSURLSession alloc];
    v11 = [(SHAMSEndpointRequester *)v9 sessionConfiguration];
    v12 = [v10 initWithConfiguration:v11];
    session = v9->_session;
    v9->_session = v12;

    v14 = [(SHAMSEndpointRequester *)v9 buildEncoderForSession:v9->_session clientType:v9->_clientType clientIdentifier:v9->_clientIdentifier];
    encoder = v9->_encoder;
    v9->_encoder = v14;
  }

  return v9;
}

- (void)invalidate
{
  v2 = [(SHAMSEndpointRequester *)self session];
  [v2 invalidateAndCancel];
}

- (void)handleResultData:(id)a3 forResponse:(id)a4 callback:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = a5;
    v14 = [[SHNetworkResponse alloc] initWithData:v10 urlResponse:v11 error:0];
    (*(a5 + 2))(v13, v14);
  }

  else
  {
    v15 = a5;
    v16 = sh_log_object();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to fetch data task %@", buf, 0xCu);
    }

    if ([(SHAMSEndpointRequester *)self isTokenFailureError:v12])
    {
      v17 = [(SHAMSEndpointRequester *)self clientIdentifier];
      v18 = [NSString stringWithFormat:@"Please check that you have enabled the ShazamKit App Service for this app identifier (%@)", v17];

      v20 = NSDebugDescriptionErrorKey;
      v21 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = [SHError errorWithCode:202 underlyingError:v12 keyOverrides:v19];
    }

    else
    {
      v14 = [SHError errorWithCode:500 underlyingError:v12];
    }

    v13 = [[SHNetworkResponse alloc] initWithData:0 urlResponse:0 error:v14];
    v15[2](v15, v13);
  }
}

- (BOOL)isTokenFailureError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:AMSErrorDomain])
  {
    v5 = [v3 code] == 306;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performRequest:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SHAMSEndpointRequester *)self encoder];
  v9 = [v8 requestByEncodingRequest:v6 parameters:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D60C;
  v11[3] = &unk_10007D0D0;
  v10 = v7;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [v9 addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)performDownloadRequest:(id)a3 filename:(id)a4 fileType:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(SHAMSEndpointRequester *)self encoder];
  v15 = [v14 requestByEncodingRequest:v10 parameters:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000DA48;
  v19[3] = &unk_10007D120;
  v16 = v13;
  v22 = v16;
  objc_copyWeak(&v23, &location);
  v17 = v11;
  v20 = v17;
  v18 = v12;
  v21 = v18;
  [v15 addFinishBlock:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (id)sessionConfiguration
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setTimeoutIntervalForRequest:30.0];
  [v2 setWaitsForConnectivity:0];
  [v2 setDiscretionary:0];

  return v2;
}

- (id)buildEncoderForSession:(id)a3 clientType:(int64_t)a4 clientIdentifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [AMSMediaTokenService alloc];
  v10 = +[SHRemoteConfiguration sharedInstance];
  v11 = [v10 amsBag];
  v12 = [v9 initWithClientIdentifier:v8 bag:v11];

  [v12 setSession:v7];
  if (a4 == 1)
  {
    v13 = 0;
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v13 = 1;
  }

  [v12 setClientType:v13];
LABEL_6:
  v14 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v12];
  [v7 setProtocolHandler:v14];
  v15 = [AMSMediaRequestEncoder alloc];
  v16 = +[SHRemoteConfiguration sharedInstance];
  v17 = [v16 amsBag];
  v18 = [v15 initWithTokenService:v12 bag:v17];

  return v18;
}

@end