@interface CustomLocationManager
+ (id)sharedManager;
- (CustomLocationManager)init;
- (void)dealloc;
- (void)processSearchResult:(id)a3 traits:(id)a4;
@end

@implementation CustomLocationManager

- (void)processSearchResult:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 needsReverseGeocodeCheck] && !CFDictionaryGetValue(self->_reverseGeocodeRequestsForSearchResults, v6))
  {
    if (!v7)
    {
      v8 = +[UIApplication sharedMapsDelegate];
      v9 = [v8 chromeViewController];
      v7 = [v9 currentTraits];
    }

    [v6 setHasIncompleteNavData:1];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_1006F98FC;
    v25[4] = sub_1006F990C;
    v26 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1006F9914;
    v24[3] = &unk_10165F5C8;
    v24[4] = v25;
    v10 = objc_retainBlock(v24);
    if ([v6 hasFloorOrdinal])
    {
      v11 = +[MKMapService sharedService];
      [v6 coordinate];
      v14 = [v11 ticketForReverseGeocodeDroppedPinCoordinate:objc_msgSend(v6 floorOrdinal:"floorOrdinal") traits:{v7, v12, v13}];
    }

    else
    {
      if ([v6 isDynamicCurrentLocation])
      {
        v11 = +[MKMapService sharedService];
        v15 = +[MKLocationManager sharedLocationManager];
        v16 = [v15 lastLocation];
        v17 = [v11 ticketForReverseGeocodeLocation:v16 traits:v7];

LABEL_12:
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1006F99B0;
        v20[3] = &unk_101627160;
        v18 = v17;
        v21 = v18;
        v19 = v6;
        v22 = v19;
        v23 = self;
        [v18 submitWithHandler:v20 networkActivity:v10];
        CFDictionarySetValue(self->_reverseGeocodeRequestsForSearchResults, v19, v18);

        _Block_object_dispose(v25, 8);
        goto LABEL_13;
      }

      v11 = +[MKMapService sharedService];
      [v6 coordinate];
      v14 = [v11 ticketForReverseGeocodeDroppedPinCoordinate:v7 traits:?];
    }

    v17 = v14;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)dealloc
{
  CFRelease(self->_reverseGeocodeRequestsForSearchResults);
  v3.receiver = self;
  v3.super_class = CustomLocationManager;
  [(CustomLocationManager *)&v3 dealloc];
}

- (CustomLocationManager)init
{
  v4.receiver = self;
  v4.super_class = CustomLocationManager;
  v2 = [(CustomLocationManager *)&v4 init];
  if (v2)
  {
    v2->_reverseGeocodeRequestsForSearchResults = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v2;
}

+ (id)sharedManager
{
  v2 = qword_10195CFD8;
  if (!qword_10195CFD8)
  {
    v3 = objc_alloc_init(CustomLocationManager);
    v4 = qword_10195CFD8;
    qword_10195CFD8 = v3;

    v2 = qword_10195CFD8;
  }

  return v2;
}

@end