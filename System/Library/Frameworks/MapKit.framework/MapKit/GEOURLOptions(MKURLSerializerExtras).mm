@interface GEOURLOptions(MKURLSerializerExtras)
- (id)initWithLaunchOptions:()MKURLSerializerExtras;
- (id)launchOptions;
@end

@implementation GEOURLOptions(MKURLSerializerExtras)

- (id)launchOptions
{
  if (([a1 hasEnableTraffic] & 1) == 0 && (objc_msgSend(a1, "hasMapType") & 1) == 0 && (objc_msgSend(a1, "hasTransportType") & 1) == 0 && (objc_msgSend(a1, "hasCenterSpan") & 1) == 0 && (objc_msgSend(a1, "hasCamera") & 1) == 0 && !objc_msgSend(a1, "hasReferralIdentifier"))
  {
    v2 = 0;
    goto LABEL_38;
  }

  v2 = [MEMORY[0x1E695DF90] dictionary];
  if ([a1 hasMapType])
  {
    v3 = [a1 mapType];
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (v3 == 2);
    }

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v2 setObject:v5 forKey:@"MKLaunchOptionsMapType"];
  }

  if ([a1 hasTransportType])
  {
    v6 = [a1 transportType];
    if (v6 > 3)
    {
      v7 = &MKLaunchOptionsDirectionsModeDefault;
    }

    else
    {
      v7 = off_1E76CCB40[v6];
    }

    [v2 setObject:*v7 forKey:@"MKLaunchOptionsDirectionsMode"];
  }

  if ([a1 hasCamera])
  {
    v8 = [a1 camera];
    v9 = objc_alloc_init(MKMapCamera);
    [v8 latitude];
    v11 = v10;
    [v8 longitude];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    [(MKMapCamera *)v9 setCenterCoordinate:v13.latitude, v13.longitude];
    [v8 heading];
    [(MKMapCamera *)v9 setHeading:?];
    [v8 pitch];
    [(MKMapCamera *)v9 _setPrecisePitch:?];
    [v8 altitude];
    [(MKMapCamera *)v9 setAltitude:?];
    v14 = &MKLaunchOptionsCameraKey;
LABEL_19:
    [v2 setObject:v9 forKey:*v14];

    goto LABEL_20;
  }

  if (![a1 hasCenterSpan])
  {
    goto LABEL_28;
  }

  v8 = [a1 centerSpan];
  if ([v8 hasLatitude] && objc_msgSend(v8, "hasLongitude"))
  {
    [v8 latitude];
    v16 = v15;
    [v8 longitude];
    v18 = CLLocationCoordinate2DMake(v16, v17);
    v19 = [MEMORY[0x1E696B098] valueWithMKCoordinate:{v18.latitude, v18.longitude}];
    [v2 setObject:v19 forKey:@"MKLaunchOptionsMapCenter"];
  }

  if ([v8 hasLatitudeDelta] && objc_msgSend(v8, "hasLongitudeDelta"))
  {
    [v8 latitudeDelta];
    v21 = v20;
    [v8 longitudeDelta];
    v9 = [MEMORY[0x1E696B098] valueWithMKCoordinateSpan:{v21, v22}];
    v14 = &MKLaunchOptionsMapSpanKey;
    goto LABEL_19;
  }

LABEL_20:

LABEL_28:
  if ([a1 hasEnableTraffic])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "enableTraffic")}];
    [v2 setObject:v23 forKey:@"MKLaunchOptionsShowsTraffic"];
  }

  if ([a1 hasReferralIdentifier])
  {
    v24 = [a1 referralIdentifier];
    [v2 setObject:v24 forKey:@"MKLaunchOptionsReferralIdentifierKey"];
  }

  if ([a1 hasRouteHandle])
  {
    v25 = [a1 routeHandle];
    [v2 setObject:v25 forKey:@"MKLaunchOptionsRouteHandle"];
  }

  if ([a1 hasTimePoint])
  {
    v26 = [a1 timePoint];
    [v2 setObject:v26 forKey:@"MKLaunchOptionsTimePointKey"];
  }

  if ([a1 hasConnectedToCar])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "connectedToCar")}];
    [v2 setObject:v27 forKey:@"MKLaunchOptionsConnectedToCarKey"];
  }

LABEL_38:

  return v2;
}

- (id)initWithLaunchOptions:()MKURLSerializerExtras
{
  v4 = a3;
  v32.receiver = a1;
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