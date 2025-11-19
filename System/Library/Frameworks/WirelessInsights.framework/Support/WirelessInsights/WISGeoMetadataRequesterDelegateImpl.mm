@interface WISGeoMetadataRequesterDelegateImpl
- (WISGeoMetadataRequesterDelegateImpl)init;
- (id).cxx_construct;
- (void)callOnFailedWithErrorCallback:(id)a3 ofMetaDataType:(int64_t)a4 forLocation:(id)a5;
- (void)callOnReceivedResultsCallback:(id)a3 ofMetaDataType:(int64_t)a4 forLocation:(id)a5;
- (void)callOnResultsDidNotChangeCallbackOfMetaDataType:(int64_t)a3 forLocation:(id)a4;
- (void)callOnSkippedLocationCallbackOfMetaDataType:(int64_t)a3 forLocation:(id)a4;
- (void)geoGeographicMetadataRequester:(id)a3 failedWithError:(id)a4 forLocation:(id)a5;
- (void)geoGeographicMetadataRequester:(id)a3 resultsDidNotChangeForLocation:(id)a4;
- (void)geoGeographicMetadataRequester:(id)a3 returnedNewResults:(id)a4 forLocation:(id)a5;
- (void)geoGeographicMetadataRequester:(id)a3 skippedLocation:(id)a4;
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
  v6 = self;
  sub_100032B20(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onFailedWithErrorCallback:(function<void (NSError *)
{
  v6 = self;
  sub_100032DBC(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onResultsDidNotChangeCallback:(function<void)(GEOGeographicMetadataType
{
  v6 = self;
  sub_100033058(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)onSkippedLocationCallback:(function<void)(GEOGeographicMetadataType
{
  v6 = self;
  sub_100033058(&v7, a3);
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnReceivedResultsCallback:(id)a3 ofMetaDataType:(int64_t)a4 forLocation:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  v10 = v7;
  v11 = v8;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnFailedWithErrorCallback:(id)a3 ofMetaDataType:(int64_t)a4 forLocation:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  v10 = v7;
  v11 = v8;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnResultsDidNotChangeCallbackOfMetaDataType:(int64_t)a3 forLocation:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = v5;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)callOnSkippedLocationCallbackOfMetaDataType:(int64_t)a3 forLocation:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = v5;
  fObj = self->fQueue.fObj.fObj;
  operator new();
}

- (void)geoGeographicMetadataRequester:(id)a3 returnedNewResults:(id)a4 forLocation:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  -[WISGeoMetadataRequesterDelegateImpl callOnReceivedResultsCallback:ofMetaDataType:forLocation:](self, "callOnReceivedResultsCallback:ofMetaDataType:forLocation:", v8, [v10 metadataType], v9);
}

- (void)geoGeographicMetadataRequester:(id)a3 failedWithError:(id)a4 forLocation:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  -[WISGeoMetadataRequesterDelegateImpl callOnFailedWithErrorCallback:ofMetaDataType:forLocation:](self, "callOnFailedWithErrorCallback:ofMetaDataType:forLocation:", v8, [v10 metadataType], v9);
}

- (void)geoGeographicMetadataRequester:(id)a3 resultsDidNotChangeForLocation:(id)a4
{
  v7 = a3;
  v6 = a4;
  -[WISGeoMetadataRequesterDelegateImpl callOnResultsDidNotChangeCallbackOfMetaDataType:forLocation:](self, "callOnResultsDidNotChangeCallbackOfMetaDataType:forLocation:", [v7 metadataType], v6);
}

- (void)geoGeographicMetadataRequester:(id)a3 skippedLocation:(id)a4
{
  v7 = a3;
  v6 = a4;
  -[WISGeoMetadataRequesterDelegateImpl callOnSkippedLocationCallbackOfMetaDataType:forLocation:](self, "callOnSkippedLocationCallbackOfMetaDataType:forLocation:", [v7 metadataType], v6);
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