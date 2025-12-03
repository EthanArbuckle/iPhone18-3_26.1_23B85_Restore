@interface SHAMSEndpointRequester
- (BOOL)isTokenFailureError:(id)error;
- (SHAMSEndpointRequester)initWithClientIdentifier:(id)identifier clientType:(int64_t)type;
- (id)buildEncoderForSession:(id)session clientType:(int64_t)type clientIdentifier:(id)identifier;
- (id)sessionConfiguration;
- (void)handleResultData:(id)data forResponse:(id)response callback:(id)callback error:(id)error;
- (void)invalidate;
- (void)performDownloadRequest:(id)request filename:(id)filename fileType:(id)type reply:(id)reply;
- (void)performRequest:(id)request withReply:(id)reply;
@end

@implementation SHAMSEndpointRequester

- (SHAMSEndpointRequester)initWithClientIdentifier:(id)identifier clientType:(int64_t)type
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = SHAMSEndpointRequester;
  v8 = [(SHAMSEndpointRequester *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientIdentifier, identifier);
    v9->_clientType = type;
    v10 = [AMSURLSession alloc];
    sessionConfiguration = [(SHAMSEndpointRequester *)v9 sessionConfiguration];
    v12 = [v10 initWithConfiguration:sessionConfiguration];
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
  session = [(SHAMSEndpointRequester *)self session];
  [session invalidateAndCancel];
}

- (void)handleResultData:(id)data forResponse:(id)response callback:(id)callback error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  if (dataCopy)
  {
    callbackCopy = callback;
    v14 = [[SHNetworkResponse alloc] initWithData:dataCopy urlResponse:responseCopy error:0];
    (*(callback + 2))(callbackCopy, v14);
  }

  else
  {
    callbackCopy2 = callback;
    v16 = sh_log_object();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = errorCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to fetch data task %@", buf, 0xCu);
    }

    if ([(SHAMSEndpointRequester *)self isTokenFailureError:errorCopy])
    {
      clientIdentifier = [(SHAMSEndpointRequester *)self clientIdentifier];
      v18 = [NSString stringWithFormat:@"Please check that you have enabled the ShazamKit App Service for this app identifier (%@)", clientIdentifier];

      v20 = NSDebugDescriptionErrorKey;
      v21 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = [SHError errorWithCode:202 underlyingError:errorCopy keyOverrides:v19];
    }

    else
    {
      v14 = [SHError errorWithCode:500 underlyingError:errorCopy];
    }

    callbackCopy = [[SHNetworkResponse alloc] initWithData:0 urlResponse:0 error:v14];
    callbackCopy2[2](callbackCopy2, callbackCopy);
  }
}

- (BOOL)isTokenFailureError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:AMSErrorDomain])
  {
    v5 = [errorCopy code] == 306;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  objc_initWeak(&location, self);
  encoder = [(SHAMSEndpointRequester *)self encoder];
  v9 = [encoder requestByEncodingRequest:requestCopy parameters:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D60C;
  v11[3] = &unk_10007D0D0;
  v10 = replyCopy;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [v9 addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)performDownloadRequest:(id)request filename:(id)filename fileType:(id)type reply:(id)reply
{
  requestCopy = request;
  filenameCopy = filename;
  typeCopy = type;
  replyCopy = reply;
  objc_initWeak(&location, self);
  encoder = [(SHAMSEndpointRequester *)self encoder];
  v15 = [encoder requestByEncodingRequest:requestCopy parameters:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000DA48;
  v19[3] = &unk_10007D120;
  v16 = replyCopy;
  v22 = v16;
  objc_copyWeak(&v23, &location);
  v17 = filenameCopy;
  v20 = v17;
  v18 = typeCopy;
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

- (id)buildEncoderForSession:(id)session clientType:(int64_t)type clientIdentifier:(id)identifier
{
  sessionCopy = session;
  identifierCopy = identifier;
  v9 = [AMSMediaTokenService alloc];
  v10 = +[SHRemoteConfiguration sharedInstance];
  amsBag = [v10 amsBag];
  v12 = [v9 initWithClientIdentifier:identifierCopy bag:amsBag];

  [v12 setSession:sessionCopy];
  if (type == 1)
  {
    v13 = 0;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_6;
    }

    v13 = 1;
  }

  [v12 setClientType:v13];
LABEL_6:
  v14 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v12];
  [sessionCopy setProtocolHandler:v14];
  v15 = [AMSMediaRequestEncoder alloc];
  v16 = +[SHRemoteConfiguration sharedInstance];
  amsBag2 = [v16 amsBag];
  v18 = [v15 initWithTokenService:v12 bag:amsBag2];

  return v18;
}

@end