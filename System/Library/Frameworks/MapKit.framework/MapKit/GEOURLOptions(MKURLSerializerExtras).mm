@interface GEOURLOptions(MKURLSerializerExtras)
- (id)initWithLaunchOptions:()MKURLSerializerExtras;
- (id)launchOptions;
@end

@implementation GEOURLOptions(MKURLSerializerExtras)

- (id)launchOptions
{
  if (([self hasEnableTraffic] & 1) == 0 && (objc_msgSend(self, "hasMapType") & 1) == 0 && (objc_msgSend(self, "hasTransportType") & 1) == 0 && (objc_msgSend(self, "hasCenterSpan") & 1) == 0 && (objc_msgSend(self, "hasCamera") & 1) == 0 && !objc_msgSend(self, "hasReferralIdentifier"))
  {
    dictionary = 0;
    goto LABEL_38;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([self hasMapType])
  {
    mapType = [self mapType];
    if (mapType == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (mapType == 2);
    }

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [dictionary setObject:v5 forKey:@"MKLaunchOptionsMapType"];
  }

  if ([self hasTransportType])
  {
    transportType = [self transportType];
    if (transportType > 3)
    {
      v7 = &MKLaunchOptionsDirectionsModeDefault;
    }

    else
    {
      v7 = off_1E76CCB40[transportType];
    }

    [dictionary setObject:*v7 forKey:@"MKLaunchOptionsDirectionsMode"];
  }

  if ([self hasCamera])
  {
    camera = [self camera];
    v9 = objc_alloc_init(MKMapCamera);
    [camera latitude];
    v11 = v10;
    [camera longitude];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    [(MKMapCamera *)v9 setCenterCoordinate:v13.latitude, v13.longitude];
    [camera heading];
    [(MKMapCamera *)v9 setHeading:?];
    [camera pitch];
    [(MKMapCamera *)v9 _setPrecisePitch:?];
    [camera altitude];
    [(MKMapCamera *)v9 setAltitude:?];
    v14 = &MKLaunchOptionsCameraKey;
LABEL_19:
    [dictionary setObject:v9 forKey:*v14];

    goto LABEL_20;
  }

  if (![self hasCenterSpan])
  {
    goto LABEL_28;
  }

  camera = [self centerSpan];
  if ([camera hasLatitude] && objc_msgSend(camera, "hasLongitude"))
  {
    [camera latitude];
    v16 = v15;
    [camera longitude];
    v18 = CLLocationCoordinate2DMake(v16, v17);
    v19 = [MEMORY[0x1E696B098] valueWithMKCoordinate:{v18.latitude, v18.longitude}];
    [dictionary setObject:v19 forKey:@"MKLaunchOptionsMapCenter"];
  }

  if ([camera hasLatitudeDelta] && objc_msgSend(camera, "hasLongitudeDelta"))
  {
    [camera latitudeDelta];
    v21 = v20;
    [camera longitudeDelta];
    v9 = [MEMORY[0x1E696B098] valueWithMKCoordinateSpan:{v21, v22}];
    v14 = &MKLaunchOptionsMapSpanKey;
    goto LABEL_19;
  }

LABEL_20:

LABEL_28:
  if ([self hasEnableTraffic])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "enableTraffic")}];
    [dictionary setObject:v23 forKey:@"MKLaunchOptionsShowsTraffic"];
  }

  if ([self hasReferralIdentifier])
  {
    referralIdentifier = [self referralIdentifier];
    [dictionary setObject:referralIdentifier forKey:@"MKLaunchOptionsReferralIdentifierKey"];
  }

  if ([self hasRouteHandle])
  {
    routeHandle = [self routeHandle];
    [dictionary setObject:routeHandle forKey:@"MKLaunchOptionsRouteHandle"];
  }

  if ([self hasTimePoint])
  {
    timePoint = [self timePoint];
    [dictionary setObject:timePoint forKey:@"MKLaunchOptionsTimePointKey"];
  }

  if ([self hasConnectedToCar])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "connectedToCar")}];
    [dictionary setObject:v27 forKey:@"MKLaunchOptionsConnectedToCarKey"];
  }

LABEL_38:

  return dictionary;
}

- (id)initWithLaunchOptions:()MKURLSerializerExtras
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = &off_1F16CE150;
  v5 = objc_msgSendSuper2(&v32, sel_init);
  if (v5)
  {
    v6 = [v4 objectForKey:@"MKLaunchOptionsMapType"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue] - 1;
      if (v8 > 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = dword_1A30F7380[v8];
      }

      [v5 setMapType:v9];
    }

    v10 = [v4 objectForKey:@"MKLaunchOptionsMapCenter"];
    v11 = [v4 objectForKey:@"MKLaunchOptionsMapSpan"];
    if (v10 | v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69A26C0]);
      if (v10)
      {
        [v10 MKCoordinateValue];
        v14 = v13;
        [v12 setLatitude:?];
        [v12 setLongitude:v14];
      }

      if (v11)
      {
        [v11 MKCoordinateSpanValue];
        v16 = v15;
        [v12 setLatitudeDelta:?];
        [v12 setLongitudeDelta:v16];
      }

      [v5 setCenterSpan:v12];
    }

    v17 = [v4 objectForKey:@"MKLaunchOptionsCameraKey"];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69A26B8]);
      [v17 centerCoordinate];
      [v18 setLatitude:?];
      [v17 centerCoordinate];
      [v18 setLongitude:v19];
      [v17 heading];
      [v18 setHeading:?];
      [v17 _precisePitch];
      [v18 setPitch:?];
      [v17 altitude];
      [v18 setAltitude:?];
      [v5 setCamera:v18];
    }

    v20 = [v4 objectForKey:@"MKLaunchOptionsShowsTraffic"];
    v21 = v20;
    if (v20)
    {
      [v5 setEnableTraffic:{objc_msgSend(v20, "BOOLValue")}];
    }

    v31 = v11;
    v22 = [v4 objectForKey:@"MKLaunchOptionsReferralIdentifierKey"];
    if (v22)
    {
      [v5 setReferralIdentifier:v22];
    }

    v23 = v10;
    v24 = [v4 objectForKey:@"MKLaunchOptionsRouteHandle"];
    if (v24)
    {
      [v5 setRouteHandle:v24];
    }

    v25 = v7;
    v26 = [v4 objectForKey:@"MKLaunchOptionsTimePointKey"];
    if (v26)
    {
      [v5 setTimePoint:v26];
    }

    v27 = [v4 objectForKey:@"MKLaunchOptionsConnectedToCarKey"];
    v28 = v27;
    if (v27)
    {
      [v5 setConnectedToCar:{objc_msgSend(v27, "BOOLValue")}];
    }

    v29 = v5;
  }

  return v5;
}

@end