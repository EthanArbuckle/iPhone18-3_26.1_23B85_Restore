@interface WISGeoMetadataRequesterDelegateImpl
- (WISGeoMetadataRequesterDelegateImpl)init;
- (id).cxx_construct;
- (void)callOnFailedWithErrorCallback:(id)callback ofMetaDataType:(int64_t)type forLocation:(id)location;
- (void)callOnReceivedResultsCallback:(id)callback ofMetaDataType:(int64_t)type forLocation:(id)location;
- (void)callOnResultsDidNotChangeCallbackOfMetaDataType:(int64_t)type forLocation:(id)location;
- (void)callOnSkippedLocationCallbackOfMetaDataType:(int64_t)type forLocation:(id)location;
- (void)geoGeographicMetadataRequester:(id)requester failedWithError:(id)error forLocation:(id)location;
- (void)geoGeographicMetadataRequester:(id)requester resultsDidNotChangeForLocation:(id)location;
- (void)geoGeographicMetadataRequester:(id)requester returnedNewResults:(id)results forLocation:(id)location;
- (void)geoGeographicMetadataRequester:(id)requester skippedLocation:(id)location;
- (void)onFailedWithErrorCallback:(function<void (NSError *);
- (void)onReceivedResultsCallback:(function<void (NSArray<NSData *> *);
- (void)onResultsDidNotChangeCallback:(function<void)(GEOGeographicMetadataType;
- (void)onSkippedLocationCallback:(function<void)(GEOGeographicMetadataType;
@end

@implementation WISGeoMetadataRequesterDelegateImpl

- (WISGeoMetadataRequesterDelegateImpl)init
{
  v10.receiver = self;
  v10.super_class = WISGeoMetadataRequesterDelegateImpl;
  v2 = [(WISGeoMetadataRequesterDelegateImpl *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.wirelessinsightsd.geometadatarequester", v3);
    fObj = v2->fQueue.fObj.fObj;
    v2->fQueue.fObj.fObj = v4;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v6 = [[GEOGeographicMetadataRequester alloc] initWithDataType:4 delegateQueue:v2->fQueue.fObj.fObj delegate:v2];
    fGEOGeographicMetadataRequester = v2->fGEOGeographicMetadataRequester;
    v2->fGEOGeographicMetadataRequester = v6;

    v8 = v2;
  }

  return v2;
}

- (void)onReceivedResultsCallback:(function<void (NSArray<NSData *> *)
{
  selfCopy = self;
  sub_100032B20(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onFailedWithErrorCallback:(function<void (NSError *)
{
  selfCopy = self;
  sub_100032DBC(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onResultsDidNotChangeCallback:(function<void)(GEOGeographicMetadataType
{
  selfCopy = self;
  sub_100033058(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onSkippedLocationCallback:(function<void)(GEOGeographicMetadataType
{
  selfCopy = self;
  sub_100033058(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnReceivedResultsCallback:(id)callback ofMetaDataType:(int64_t)type forLocation:(id)location
{
  callbackCopy = callback;
  locationCopy = location;
  selfCopy = self;
  v10 = callbackCopy;
  v11 = locationCopy;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnFailedWithErrorCallback:(id)callback ofMetaDataType:(int64_t)type forLocation:(id)location
{
  callbackCopy = callback;
  locationCopy = location;
  selfCopy = self;
  v10 = callbackCopy;
  v11 = locationCopy;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnResultsDidNotChangeCallbackOfMetaDataType:(int64_t)type forLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  v7 = locationCopy;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnSkippedLocationCallbackOfMetaDataType:(int64_t)type forLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  v7 = locationCopy;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)geoGeographicMetadataRequester:(id)requester returnedNewResults:(id)results forLocation:(id)location
{
  requesterCopy = requester;
  resultsCopy = results;
  locationCopy = location;
  -[WISGeoMetadataRequesterDelegateImpl callOnReceivedResultsCallback:ofMetaDataType:forLocation:](self, "callOnReceivedResultsCallback:ofMetaDataType:forLocation:", resultsCopy, [requesterCopy metadataType], locationCopy);
}

- (void)geoGeographicMetadataRequester:(id)requester failedWithError:(id)error forLocation:(id)location
{
  requesterCopy = requester;
  errorCopy = error;
  locationCopy = location;
  -[WISGeoMetadataRequesterDelegateImpl callOnFailedWithErrorCallback:ofMetaDataType:forLocation:](self, "callOnFailedWithErrorCallback:ofMetaDataType:forLocation:", errorCopy, [requesterCopy metadataType], locationCopy);
}

- (void)geoGeographicMetadataRequester:(id)requester resultsDidNotChangeForLocation:(id)location
{
  requesterCopy = requester;
  locationCopy = location;
  -[WISGeoMetadataRequesterDelegateImpl callOnResultsDidNotChangeCallbackOfMetaDataType:forLocation:](self, "callOnResultsDidNotChangeCallbackOfMetaDataType:forLocation:", [requesterCopy metadataType], locationCopy);
}

- (void)geoGeographicMetadataRequester:(id)requester skippedLocation:(id)location
{
  requesterCopy = requester;
  locationCopy = location;
  -[WISGeoMetadataRequesterDelegateImpl callOnSkippedLocationCallbackOfMetaDataType:forLocation:](self, "callOnSkippedLocationCallbackOfMetaDataType:forLocation:", [requesterCopy metadataType], locationCopy);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  *(self + 18) = 0;
  return self;
}

@end