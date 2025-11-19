@interface SHShazamKitServerMatcher
- (NSISO8601DateFormatter)iso8601Formatter;
- (SHMatcherDelegate)delegate;
- (SHShazamKitServerMatcher)initWithCatalog:(id)a3;
- (SHShazamKitServerMatcher)initWithCatalog:(id)a3 recognitionRequester:(id)a4;
- (id)buildURLForSignature:(id)a3 endpoint:(id)a4;
- (id)partnerURLRequestForSignature:(id)a3 endpoint:(id)a4;
- (id)payloadForSignature:(id)a3 location:(id)a4;
- (id)payloadForSpectralPeaksData:(id)a3 musicalFeaturesData:(id)a4 audioStartDate:(id)a5 recordingSource:(int64_t)a6 sessionDuration:(double)a7 signatureRecordingOffset:(double)a8 location:(id)a9;
- (void)dealloc;
- (void)matchSignature:(id)a3 tokenizedURL:(id)a4;
- (void)responseForServerData:(id)a3 signature:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHShazamKitServerMatcher

- (void)dealloc
{
  [(SHNetworkRecognitionRequester *)self->_networkRequester invalidate];
  v3.receiver = self;
  v3.super_class = SHShazamKitServerMatcher;
  [(SHShazamKitServerMatcher *)&v3 dealloc];
}

- (SHShazamKitServerMatcher)initWithCatalog:(id)a3
{
  v4 = a3;
  v5 = [SHAMSEndpointRequester alloc];
  v6 = [v4 clientIdentifier];
  v7 = -[SHAMSEndpointRequester initWithClientIdentifier:clientType:](v5, "initWithClientIdentifier:clientType:", v6, [v4 clientType]);

  v8 = [(SHShazamKitServerMatcher *)self initWithCatalog:v4 recognitionRequester:v7];
  return v8;
}

- (SHShazamKitServerMatcher)initWithCatalog:(id)a3 recognitionRequester:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHShazamKitServerMatcher;
  v9 = [(SHShazamKitServerMatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_catalog, a3);
    objc_storeStrong(&v10->_networkRequester, a4);
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

- (void)responseForServerData:(id)a3 signature:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SHShazamKitServerMatcher *)self catalog];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007568;
  v11[3] = &unk_10007CF78;
  objc_copyWeak(&v15, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  v14 = self;
  [v8 loadContext:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)startRecognitionForRequest:(id)a3
{
  v4 = a3;
  [(SHShazamKitServerMatcher *)self setMatcherRequest:v4];
  v5 = [(SHShazamKitServerMatcher *)self matcherRequest];
  v6 = [v5 requestID];
  v7 = [v6 UUIDString];
  v8 = [(SHShazamKitServerMatcher *)self catalog];
  v9 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", v7, [v8 clientType]);
  [(SHShazamKitServerMatcher *)self setLocationProvider:v9];

  v10 = [v4 signature];
  objc_initWeak(&location, self);
  v11 = [(SHShazamKitServerMatcher *)self catalog];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007814;
  v13[3] = &unk_10007CFA0;
  objc_copyWeak(&v15, &location);
  v12 = v10;
  v14 = v12;
  [v11 loadConfiguration:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)matchSignature:(id)a3 tokenizedURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHShazamKitServerMatcher *)self partnerURLRequestForSignature:v6 endpoint:v7];
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 metrics];
    [v10 signatureRecordingOffset];
    v12 = v11;
    [v6 duration];
    v14 = v13;
    v15 = [v6 dataRepresentation];
    *buf = 134218754;
    v23 = v12;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = [v15 length];
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shazam service matching signature with offset %f of duration %f with data of length %lu at %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v16 = [(SHShazamKitServerMatcher *)self networkRequester];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007B6C;
  v18[3] = &unk_10007CFC8;
  objc_copyWeak(&v21, buf);
  v17 = v6;
  v19 = v17;
  v20 = self;
  [v16 performRequest:v8 withReply:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (id)partnerURLRequestForSignature:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = [(SHShazamKitServerMatcher *)self buildURLForSignature:v6 endpoint:a4];
  v8 = [NSURLRequest requestWithURL:v7];
  v9 = [v8 mutableCopy];

  [v9 setHTTPMethod:@"POST"];
  v10 = [(SHShazamKitServerMatcher *)self locationProvider];
  v11 = [v10 location];
  v12 = [(SHShazamKitServerMatcher *)self payloadForSignature:v6 location:v11];

  v15 = 0;
  v13 = [NSJSONSerialization dataWithJSONObject:v12 options:0 error:&v15];
  [v9 setHTTPBody:v13];

  [v9 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

  return v9;
}

- (id)payloadForSignature:(id)a3 location:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 spectralPeaksData];
  v9 = [v7 musicalFeaturesData];
  v10 = [v7 audioStartDate];
  v11 = [v7 metrics];
  v12 = [v11 recordingSource];
  v13 = [v7 metrics];
  [v13 sessionDuration];
  v15 = v14;
  v16 = [v7 metrics];

  [v16 signatureRecordingOffset];
  v18 = [(SHShazamKitServerMatcher *)self payloadForSpectralPeaksData:v8 musicalFeaturesData:v9 audioStartDate:v10 recordingSource:v12 sessionDuration:v6 signatureRecordingOffset:v15 location:v17];

  return v18;
}

- (id)payloadForSpectralPeaksData:(id)a3 musicalFeaturesData:(id)a4 audioStartDate:(id)a5 recordingSource:(int64_t)a6 sessionDuration:(double)a7 signatureRecordingOffset:(double)a8 location:(id)a9
{
  v34 = a4;
  v16 = a9;
  v17 = a5;
  v18 = [a3 base64EncodedStringWithOptions:0];
  v19 = [(SHShazamKitServerMatcher *)self iso8601Formatter];
  v20 = [v19 stringFromDate:v17];

  v21 = @"unknown";
  if (a6 == 2)
  {
    v21 = @"external";
  }

  if (a6 == 1)
  {
    v22 = @"internal";
  }

  else
  {
    v22 = v21;
  }

  v37 = @"sessionDurationInSeconds";
  v23 = [NSNumber numberWithDouble:a7];
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
  v27 = [NSNumber numberWithDouble:a8 * 1000.0];
  v36[3] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

  if ([v34 length])
  {
    v30 = [v34 base64EncodedStringWithOptions:0];
    v31 = [NSString stringWithFormat:@"data:audio/vnd.shazam.sffbase64, %@", v30];;
    [v29 setValue:v31 forKey:@"musicalFeaturesUri"];
  }

  if (v16)
  {
    v32 = [SHLocationProvider anonymizeCoordinatesPayloadForLocation:v16 truncatingToDecimalPlaces:2];
    [v25 setValue:v32 forKey:@"approximateCoordinates"];
  }

  [v25 setValue:v29 forKey:@"signature"];

  return v25;
}

- (id)buildURLForSignature:(id)a3 endpoint:(id)a4
{
  v5 = a4;
  v6 = [a3 _ID];
  v7 = [v6 UUIDString];
  [v5 updateToken:1 withValue:v7];

  v8 = [v5 URLRepresentation];

  return v8;
}

- (void)stopRecognition
{
  v4 = [(SHShazamKitServerMatcher *)self matcherRequest];
  v3 = [v4 requestID];
  [(SHShazamKitServerMatcher *)self stopRecognitionForRequestID:v3];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHShazamKitServerMatcher *)self matcherRequest];
  v6 = [v5 requestID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(SHShazamKitServerMatcher *)self matcherRequest];
    v9 = [v8 requestID];
    v10 = [v9 UUIDString];
    v11 = [(SHShazamKitServerMatcher *)self catalog];
    v19 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", v10, [v11 clientType]);

    [v19 stopUpdatingLocation];
    v12 = [SHError privateErrorWithCode:203 underlyingError:0];
    v13 = [(SHShazamKitServerMatcher *)self matcherRequest];
    v14 = [v13 signature];
    if (v14)
    {
      v15 = [SHMatcherResponse errorResponseForSignature:v14 error:v12];
    }

    else
    {
      v16 = objc_opt_new();
      v15 = [SHMatcherResponse errorResponseForSignature:v16 error:v12];
    }

    v17 = [(SHShazamKitServerMatcher *)self delegate];
    [v17 matcher:self didProduceResponse:v15];

    [(SHShazamKitServerMatcher *)self setDelegate:0];
    v18 = [(SHShazamKitServerMatcher *)self networkRequester];
    [v18 invalidate];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end