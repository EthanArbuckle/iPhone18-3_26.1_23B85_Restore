@interface _MKURLBuilder
+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6;
+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6 extraStorage:(id)a7 useWebPlaceCard:(BOOL)a8;
+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6 extraStorage:(id)a7 useWebPlaceCard:(BOOL)a8 muninViewState:(id)a9;
+ (id)URLForDirectionsFrom:(id)a3 to:(id)a4 transport:(unint64_t)a5;
+ (id)URLForDirectionsFrom:(id)a3 toDestinations:(id)a4 transport:(unint64_t)a5;
+ (id)URLForDirectionsFromHereTo:(id)a3 label:(id)a4 muid:(unint64_t)a5 provider:(int)a6 transport:(unint64_t)a7;
+ (id)URLForDirectionsFromHereTo:(id)a3 transport:(unint64_t)a4;
+ (id)URLForDirectionsFromHereToDestinations:(id)a3 transport:(unint64_t)a4;
+ (id)URLForMapFrameWithCenter:(CLLocationCoordinate2D)a3 distance:(double)a4 heading:(double)a5 pitch:(double)a6 mapType:(unint64_t)a7 trackingMode:(int64_t)a8 span:(id)a9;
- (id)initForAddress:(id)a3 abPersonID:(int64_t)a4 abAddressID:(int64_t)a5 cnContactIdentifier:(id)a6 cnAddressIdentifier:(id)a7;
- (id)initForAddress:(id)a3 label:(id)a4;
- (id)initForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5;
- (id)initForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6;
- (id)initForCoordinate:(CLLocationCoordinate2D)a3 label:(id)a4;
- (id)initForDirectionsTo:(id)a3;
- (id)initForDirectionsToAddresses:(id)a3;
- (id)initForExternalBusiness:(id)a3 id:(id)a4 ofContentProvider:(id)a5;
- (id)initForInternalBusiness:(id)a3 id:(unint64_t)a4 provider:(int)a5;
- (id)initForMapFrameWithCenter:(CLLocationCoordinate2D)a3 distance:(double)a4 heading:(double)a5 pitch:(double)a6 mapType:(unint64_t)a7 trackingMode:(int64_t)a8 span:(id)a9;
- (id)initForSearch:(id)a3;
- (void)setMapType:(unint64_t)a3;
- (void)setTransportType:(unint64_t)a3;
- (void)setUserTrackingMode:(int64_t)a3;
@end

@implementation _MKURLBuilder

- (id)initForMapFrameWithCenter:(CLLocationCoordinate2D)a3 distance:(double)a4 heading:(double)a5 pitch:(double)a6 mapType:(unint64_t)a7 trackingMode:(int64_t)a8 span:(id)a9
{
  var1 = a9.var1;
  var0 = a9.var0;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v26.receiver = self;
  v26.super_class = _MKURLBuilder;
  v18 = [(_MKURLBuilder *)&v26 init];
  if (!v18)
  {
    return v18;
  }

  v19 = objc_alloc(MEMORY[0x1E69A2218]);
  if (a7 > 3)
  {
    if (a7 != 4)
    {
      if (a7 == 108)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      if (a7 == 104)
      {
        v20 = 3;
      }

      else
      {
        v20 = v21;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a7 != 1)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        v20 = 0;
        goto LABEL_15;
      }

      goto LABEL_6;
    }

LABEL_14:
    v20 = 2;
    goto LABEL_15;
  }

LABEL_6:
  v20 = 1;
LABEL_15:
  if (a8 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * (a8 == 2);
  }

  v23 = [v19 initForMapFrameWithCenter:v20 distance:v22 heading:latitude pitch:longitude mapType:a4 trackingMode:a5 span:{a6, var0, var1}];
  realBuilder = v18->_realBuilder;
  v18->_realBuilder = v23;

  return v18;
}

- (void)setUserTrackingMode:(int64_t)a3
{
  realBuilder = self->_realBuilder;
  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a3 == 2);
  }

  [(GEOMapURLBuilder *)realBuilder setUserTrackingMode:v4];
}

- (void)setMapType:(unint64_t)a3
{
  realBuilder = self->_realBuilder;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
LABEL_5:
      v4 = 1;
      goto LABEL_6;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        v4 = 0;
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_14:
    v4 = 2;
    goto LABEL_6;
  }

  if (a3 == 4)
  {
    goto LABEL_14;
  }

  if (a3 == 108)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 104)
  {
    v4 = 3;
  }

  else
  {
    v4 = v5;
  }

LABEL_6:
  [(GEOMapURLBuilder *)realBuilder setMapType:v4];
}

- (id)initForExternalBusiness:(id)a3 id:(id)a4 ofContentProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _MKURLBuilder;
  v11 = [(_MKURLBuilder *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A2218]) initForExternalBusiness:v8 id:v9 ofContentProvider:v10];
    realBuilder = v11->_realBuilder;
    v11->_realBuilder = v12;
  }

  return v11;
}

- (id)initForInternalBusiness:(id)a3 id:(unint64_t)a4 provider:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _MKURLBuilder;
  v9 = [(_MKURLBuilder *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A2218]) initForInternalBusiness:v8 id:a4 provider:v5];
    realBuilder = v9->_realBuilder;
    v9->_realBuilder = v10;
  }

  return v9;
}

- (void)setTransportType:(unint64_t)a3
{
  realBuilder = self->_realBuilder;
  if (a3 - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[a3 - 1];
  }

  [(GEOMapURLBuilder *)realBuilder setTransportType:v4];
}

- (id)initForDirectionsToAddresses:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForDirectionsToAddresses:v4];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

- (id)initForDirectionsTo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForDirectionsTo:v4];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

- (id)initForAddress:(id)a3 abPersonID:(int64_t)a4 abAddressID:(int64_t)a5 cnContactIdentifier:(id)a6 cnAddressIdentifier:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = _MKURLBuilder;
  v15 = [(_MKURLBuilder *)&v19 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69A2218]) initForAddress:v12 abPersonID:a4 abAddressID:a5 cnContactIdentifier:v13 cnAddressIdentifier:v14];
    realBuilder = v15->_realBuilder;
    v15->_realBuilder = v16;
  }

  return v15;
}

- (id)initForAddress:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MKURLBuilder;
  v8 = [(_MKURLBuilder *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2218]) initForAddress:v6 label:v7];
    realBuilder = v8->_realBuilder;
    v8->_realBuilder = v9;
  }

  return v8;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)a3 label:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MKURLBuilder;
  v8 = [(_MKURLBuilder *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2218]) initForCoordinate:v7 label:{latitude, longitude}];
    realBuilder = v8->_realBuilder;
    v8->_realBuilder = v9;
  }

  return v8;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _MKURLBuilder;
  v11 = [(_MKURLBuilder *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A2218]) initForCoordinate:v9 address:v10 label:{latitude, longitude}];
    realBuilder = v11->_realBuilder;
    v11->_realBuilder = v12;
  }

  return v11;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _MKURLBuilder;
  v14 = [(_MKURLBuilder *)&v20 init];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A2218]);
    v16 = [v13 geoMapItemIdentifier];
    v17 = [v15 initForCoordinate:v11 address:v12 label:v16 mapItemIdentifier:{latitude, longitude}];
    realBuilder = v14->_realBuilder;
    v14->_realBuilder = v17;
  }

  return v14;
}

- (id)initForSearch:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForSearch:v4];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

+ (id)URLForMapFrameWithCenter:(CLLocationCoordinate2D)a3 distance:(double)a4 heading:(double)a5 pitch:(double)a6 mapType:(unint64_t)a7 trackingMode:(int64_t)a8 span:(id)a9
{
  if (a7 > 3)
  {
    if (a7 != 4)
    {
      if (a7 == 108)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      if (a7 == 104)
      {
        v9 = 3;
      }

      else
      {
        v9 = v10;
      }

      goto LABEL_14;
    }

LABEL_13:
    v9 = 2;
    goto LABEL_14;
  }

  switch(a7)
  {
    case 1uLL:
LABEL_5:
      v9 = 1;
      goto LABEL_14;
    case 2uLL:
      goto LABEL_13;
    case 3uLL:
      goto LABEL_5;
  }

  v9 = 0;
LABEL_14:
  if (a8 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (a8 == 2);
  }

  return [MEMORY[0x1E69A2218] URLForMapFrameWithCenter:v9 distance:v11 heading:a3.latitude pitch:a3.longitude mapType:a4 trackingMode:a5 span:{a6, a9.var0, a9.var1}];
}

+ (id)URLForDirectionsFromHereTo:(id)a3 label:(id)a4 muid:(unint64_t)a5 provider:(int)a6 transport:(unint64_t)a7
{
  if (a7 - 1 > 7)
  {
    v7 = 4;
  }

  else
  {
    v7 = dword_1A30F7AE8[a7 - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereTo:a3 label:a4 muid:a5 provider:*&a6 transport:v7];
}

+ (id)URLForDirectionsFromHereToDestinations:(id)a3 transport:(unint64_t)a4
{
  if (a4 - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[a4 - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereToDestinations:a3 transport:v4];
}

+ (id)URLForDirectionsFromHereTo:(id)a3 transport:(unint64_t)a4
{
  if (a4 - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[a4 - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereTo:a3 transport:v4];
}

+ (id)URLForDirectionsFrom:(id)a3 toDestinations:(id)a4 transport:(unint64_t)a5
{
  if (a5 - 1 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_1A30F7AE8[a5 - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFrom:a3 toDestinations:a4 transport:v5];
}

+ (id)URLForDirectionsFrom:(id)a3 to:(id)a4 transport:(unint64_t)a5
{
  if (a5 - 1 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_1A30F7AE8[a5 - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFrom:a3 to:a4 transport:v5];
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6 extraStorage:(id)a7 useWebPlaceCard:(BOOL)a8 muninViewState:(id)a9
{
  v9 = a8;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v16 = MEMORY[0x1E69A2218];
  v17 = a9;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = [a6 geoMapItemIdentifier];
  v22 = [v16 URLForCoordinate:v20 address:v19 label:v21 mapItemIdentifier:v18 extraStorage:v9 useWebPlaceCard:v17 muninViewState:{latitude, longitude}];

  return v22;
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6 extraStorage:(id)a7 useWebPlaceCard:(BOOL)a8
{
  v8 = a8;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v14 = MEMORY[0x1E69A2218];
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = [a6 geoMapItemIdentifier];
  v19 = [v14 URLForCoordinate:v17 address:v16 label:v18 mapItemIdentifier:v15 extraStorage:v8 useWebPlaceCard:{latitude, longitude}];

  return v19;
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)a3 address:(id)a4 label:(id)a5 mapItemIdentifier:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = MEMORY[0x1E69A2218];
  v11 = a5;
  v12 = a4;
  v13 = [a6 geoMapItemIdentifier];
  v14 = [v10 URLForCoordinate:v12 address:v11 label:v13 mapItemIdentifier:{latitude, longitude}];

  return v14;
}

@end