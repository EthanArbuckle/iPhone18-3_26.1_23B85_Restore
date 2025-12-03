@interface SHShazamKitServerMatcher
- (NSISO8601DateFormatter)iso8601Formatter;
- (SHMatcherDelegate)delegate;
- (SHShazamKitServerMatcher)initWithCatalog:(id)catalog;
- (SHShazamKitServerMatcher)initWithCatalog:(id)catalog recognitionRequester:(id)requester;
- (id)buildURLForSignature:(id)signature endpoint:(id)endpoint;
- (id)partnerURLRequestForSignature:(id)signature endpoint:(id)endpoint;
- (id)payloadForSignature:(id)signature location:(id)location;
- (id)payloadForSpectralPeaksData:(id)data musicalFeaturesData:(id)featuresData audioStartDate:(id)date recordingSource:(int64_t)source sessionDuration:(double)duration signatureRecordingOffset:(double)offset location:(id)location;
- (void)dealloc;
- (void)matchSignature:(id)signature tokenizedURL:(id)l;
- (void)responseForServerData:(id)data signature:(id)signature;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHShazamKitServerMatcher

- (void)dealloc
{
  [(SHNetworkRecognitionRequester *)self->_networkRequester invalidate];
  v3.receiver = self;
  v3.super_class = SHShazamKitServerMatcher;
  [(SHShazamKitServerMatcher *)&v3 dealloc];
}

- (SHShazamKitServerMatcher)initWithCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = [SHAMSEndpointRequester alloc];
  clientIdentifier = [catalogCopy clientIdentifier];
  v7 = -[SHAMSEndpointRequester initWithClientIdentifier:clientType:](v5, "initWithClientIdentifier:clientType:", clientIdentifier, [catalogCopy clientType]);

  v8 = [(SHShazamKitServerMatcher *)self initWithCatalog:catalogCopy recognitionRequester:v7];
  return v8;
}

- (SHShazamKitServerMatcher)initWithCatalog:(id)catalog recognitionRequester:(id)requester
{
  catalogCopy = catalog;
  requesterCopy = requester;
  v12.receiver = self;
  v12.super_class = SHShazamKitServerMatcher;
  v9 = [(SHShazamKitServerMatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_catalog, catalog);
    objc_storeStrong(&v10->_networkRequester, requester);
  }

  return v10;
}

- (NSISO8601DateFormatter)iso8601Formatter
{
  iso8601Formatter = self->_iso8601Formatter;
  if (!iso8601Formatter)
  {
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    v5 = self->_iso8601Formatter;
    self->_iso8601Formatter = v4;

    [(NSISO8601DateFormatter *)self->_iso8601Formatter setFormatOptions:3955];
    iso8601Formatter = self->_iso8601Formatter;
  }

  return iso8601Formatter;
}

- (void)responseForServerData:(id)data signature:(id)signature
{
  dataCopy = data;
  signatureCopy = signature;
  objc_initWeak(&location, self);
  catalog = [(SHShazamKitServerMatcher *)self catalog];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007568;
  v11[3] = &unk_10007CF78;
  objc_copyWeak(&v15, &location);
  v9 = dataCopy;
  v12 = v9;
  v10 = signatureCopy;
  v13 = v10;
  selfCopy = self;
  [catalog loadContext:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  [(SHShazamKitServerMatcher *)self setMatcherRequest:requestCopy];
  matcherRequest = [(SHShazamKitServerMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  uUIDString = [requestID UUIDString];
  catalog = [(SHShazamKitServerMatcher *)self catalog];
  v9 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", uUIDString, [catalog clientType]);
  [(SHShazamKitServerMatcher *)self setLocationProvider:v9];

  signature = [requestCopy signature];
  objc_initWeak(&location, self);
  catalog2 = [(SHShazamKitServerMatcher *)self catalog];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007814;
  v13[3] = &unk_10007CFA0;
  objc_copyWeak(&v15, &location);
  v12 = signature;
  v14 = v12;
  [catalog2 loadConfiguration:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)matchSignature:(id)signature tokenizedURL:(id)l
{
  signatureCopy = signature;
  lCopy = l;
  v8 = [(SHShazamKitServerMatcher *)self partnerURLRequestForSignature:signatureCopy endpoint:lCopy];
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    metrics = [signatureCopy metrics];
    [metrics signatureRecordingOffset];
    v12 = v11;
    [signatureCopy duration];
    v14 = v13;
    dataRepresentation = [signatureCopy dataRepresentation];
    *buf = 134218754;
    v23 = v12;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = [dataRepresentation length];
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shazam service matching signature with offset %f of duration %f with data of length %lu at %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  networkRequester = [(SHShazamKitServerMatcher *)self networkRequester];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007B6C;
  v18[3] = &unk_10007CFC8;
  objc_copyWeak(&v21, buf);
  v17 = signatureCopy;
  v19 = v17;
  selfCopy = self;
  [networkRequester performRequest:v8 withReply:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (id)partnerURLRequestForSignature:(id)signature endpoint:(id)endpoint
{
  signatureCopy = signature;
  v7 = [(SHShazamKitServerMatcher *)self buildURLForSignature:signatureCopy endpoint:endpoint];
  v8 = [NSURLRequest requestWithURL:v7];
  v9 = [v8 mutableCopy];

  [v9 setHTTPMethod:@"POST"];
  locationProvider = [(SHShazamKitServerMatcher *)self locationProvider];
  location = [locationProvider location];
  v12 = [(SHShazamKitServerMatcher *)self payloadForSignature:signatureCopy location:location];

  v15 = 0;
  v13 = [NSJSONSerialization dataWithJSONObject:v12 options:0 error:&v15];
  [v9 setHTTPBody:v13];

  [v9 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

  return v9;
}

- (id)payloadForSignature:(id)signature location:(id)location
{
  locationCopy = location;
  signatureCopy = signature;
  spectralPeaksData = [signatureCopy spectralPeaksData];
  musicalFeaturesData = [signatureCopy musicalFeaturesData];
  audioStartDate = [signatureCopy audioStartDate];
  metrics = [signatureCopy metrics];
  recordingSource = [metrics recordingSource];
  metrics2 = [signatureCopy metrics];
  [metrics2 sessionDuration];
  v15 = v14;
  metrics3 = [signatureCopy metrics];

  [metrics3 signatureRecordingOffset];
  v18 = [(SHShazamKitServerMatcher *)self payloadForSpectralPeaksData:spectralPeaksData musicalFeaturesData:musicalFeaturesData audioStartDate:audioStartDate recordingSource:recordingSource sessionDuration:locationCopy signatureRecordingOffset:v15 location:v17];

  return v18;
}

- (id)payloadForSpectralPeaksData:(id)data musicalFeaturesData:(id)featuresData audioStartDate:(id)date recordingSource:(int64_t)source sessionDuration:(double)duration signatureRecordingOffset:(double)offset location:(id)location
{
  featuresDataCopy = featuresData;
  locationCopy = location;
  dateCopy = date;
  v18 = [data base64EncodedStringWithOptions:0];
  iso8601Formatter = [(SHShazamKitServerMatcher *)self iso8601Formatter];
  v20 = [iso8601Formatter stringFromDate:dateCopy];

  v21 = @"unknown";
  if (source == 2)
  {
    v21 = @"external";
  }

  if (source == 1)
  {
    v22 = @"internal";
  }

  else
  {
    v22 = v21;
  }

  v37 = @"sessionDurationInSeconds";
  v23 = [NSNumber numberWithDouble:duration];
  v38 = v23;
  v24 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

  v35[0] = @"uri";
  v26 = [NSString stringWithFormat:@"data:audio/vnd.shazam.sigbase64, %@", v18];;
  v36[0] = v26;
  v36[1] = v22;
  v35[1] = @"audioSource";
  v35[2] = @"startDate";
  v36[2] = v20;
  v35[3] = @"recordingOffsetInMilliseconds";
  v27 = [NSNumber numberWithDouble:offset * 1000.0];
  v36[3] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

  if ([featuresDataCopy length])
  {
    v30 = [featuresDataCopy base64EncodedStringWithOptions:0];
    v31 = [NSString stringWithFormat:@"data:audio/vnd.shazam.sffbase64, %@", v30];;
    [v29 setValue:v31 forKey:@"musicalFeaturesUri"];
  }

  if (locationCopy)
  {
    v32 = [SHLocationProvider anonymizeCoordinatesPayloadForLocation:locationCopy truncatingToDecimalPlaces:2];
    [v25 setValue:v32 forKey:@"approximateCoordinates"];
  }

  [v25 setValue:v29 forKey:@"signature"];

  return v25;
}

- (id)buildURLForSignature:(id)signature endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = [signature _ID];
  uUIDString = [v6 UUIDString];
  [endpointCopy updateToken:1 withValue:uUIDString];

  uRLRepresentation = [endpointCopy URLRepresentation];

  return uRLRepresentation;
}

- (void)stopRecognition
{
  matcherRequest = [(SHShazamKitServerMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHShazamKitServerMatcher *)self stopRecognitionForRequestID:requestID];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  matcherRequest = [(SHShazamKitServerMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  v7 = [requestID isEqual:dCopy];

  if (v7)
  {
    matcherRequest2 = [(SHShazamKitServerMatcher *)self matcherRequest];
    requestID2 = [matcherRequest2 requestID];
    uUIDString = [requestID2 UUIDString];
    catalog = [(SHShazamKitServerMatcher *)self catalog];
    v19 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", uUIDString, [catalog clientType]);

    [v19 stopUpdatingLocation];
    v12 = [SHError privateErrorWithCode:203 underlyingError:0];
    matcherRequest3 = [(SHShazamKitServerMatcher *)self matcherRequest];
    signature = [matcherRequest3 signature];
    if (signature)
    {
      v15 = [SHMatcherResponse errorResponseForSignature:signature error:v12];
    }

    else
    {
      v16 = objc_opt_new();
      v15 = [SHMatcherResponse errorResponseForSignature:v16 error:v12];
    }

    delegate = [(SHShazamKitServerMatcher *)self delegate];
    [delegate matcher:self didProduceResponse:v15];

    [(SHShazamKitServerMatcher *)self setDelegate:0];
    networkRequester = [(SHShazamKitServerMatcher *)self networkRequester];
    [networkRequester invalidate];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end