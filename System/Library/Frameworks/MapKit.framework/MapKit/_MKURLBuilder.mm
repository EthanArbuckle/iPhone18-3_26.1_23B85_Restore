@interface _MKURLBuilder
+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier;
+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier extraStorage:(id)storage useWebPlaceCard:(BOOL)card;
+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier extraStorage:(id)storage useWebPlaceCard:(BOOL)card muninViewState:(id)state;
+ (id)URLForDirectionsFrom:(id)from to:(id)to transport:(unint64_t)transport;
+ (id)URLForDirectionsFrom:(id)from toDestinations:(id)destinations transport:(unint64_t)transport;
+ (id)URLForDirectionsFromHereTo:(id)to label:(id)label muid:(unint64_t)muid provider:(int)provider transport:(unint64_t)transport;
+ (id)URLForDirectionsFromHereTo:(id)to transport:(unint64_t)transport;
+ (id)URLForDirectionsFromHereToDestinations:(id)destinations transport:(unint64_t)transport;
+ (id)URLForMapFrameWithCenter:(CLLocationCoordinate2D)center distance:(double)distance heading:(double)heading pitch:(double)pitch mapType:(unint64_t)type trackingMode:(int64_t)mode span:(id)span;
- (id)initForAddress:(id)address abPersonID:(int64_t)d abAddressID:(int64_t)iD cnContactIdentifier:(id)identifier cnAddressIdentifier:(id)addressIdentifier;
- (id)initForAddress:(id)address label:(id)label;
- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label;
- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier;
- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate label:(id)label;
- (id)initForDirectionsTo:(id)to;
- (id)initForDirectionsToAddresses:(id)addresses;
- (id)initForExternalBusiness:(id)business id:(id)id ofContentProvider:(id)provider;
- (id)initForInternalBusiness:(id)business id:(unint64_t)id provider:(int)provider;
- (id)initForMapFrameWithCenter:(CLLocationCoordinate2D)center distance:(double)distance heading:(double)heading pitch:(double)pitch mapType:(unint64_t)type trackingMode:(int64_t)mode span:(id)span;
- (id)initForSearch:(id)search;
- (void)setMapType:(unint64_t)type;
- (void)setTransportType:(unint64_t)type;
- (void)setUserTrackingMode:(int64_t)mode;
@end

@implementation _MKURLBuilder

- (id)initForMapFrameWithCenter:(CLLocationCoordinate2D)center distance:(double)distance heading:(double)heading pitch:(double)pitch mapType:(unint64_t)type trackingMode:(int64_t)mode span:(id)span
{
  var1 = span.var1;
  var0 = span.var0;
  longitude = center.longitude;
  latitude = center.latitude;
  v26.receiver = self;
  v26.super_class = _MKURLBuilder;
  v18 = [(_MKURLBuilder *)&v26 init];
  if (!v18)
  {
    return v18;
  }

  v19 = objc_alloc(MEMORY[0x1E69A2218]);
  if (type > 3)
  {
    if (type != 4)
    {
      if (type == 108)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      if (type == 104)
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

  if (type != 1)
  {
    if (type != 2)
    {
      if (type != 3)
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
  if (mode == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * (mode == 2);
  }

  v23 = [v19 initForMapFrameWithCenter:v20 distance:v22 heading:latitude pitch:longitude mapType:distance trackingMode:heading span:{pitch, var0, var1}];
  realBuilder = v18->_realBuilder;
  v18->_realBuilder = v23;

  return v18;
}

- (void)setUserTrackingMode:(int64_t)mode
{
  realBuilder = self->_realBuilder;
  if (mode == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (mode == 2);
  }

  [(GEOMapURLBuilder *)realBuilder setUserTrackingMode:v4];
}

- (void)setMapType:(unint64_t)type
{
  realBuilder = self->_realBuilder;
  if (type <= 3)
  {
    if (type == 1)
    {
LABEL_5:
      v4 = 1;
      goto LABEL_6;
    }

    if (type != 2)
    {
      if (type != 3)
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

  if (type == 4)
  {
    goto LABEL_14;
  }

  if (type == 108)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (type == 104)
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

- (id)initForExternalBusiness:(id)business id:(id)id ofContentProvider:(id)provider
{
  businessCopy = business;
  idCopy = id;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = _MKURLBuilder;
  v11 = [(_MKURLBuilder *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A2218]) initForExternalBusiness:businessCopy id:idCopy ofContentProvider:providerCopy];
    realBuilder = v11->_realBuilder;
    v11->_realBuilder = v12;
  }

  return v11;
}

- (id)initForInternalBusiness:(id)business id:(unint64_t)id provider:(int)provider
{
  v5 = *&provider;
  businessCopy = business;
  v13.receiver = self;
  v13.super_class = _MKURLBuilder;
  v9 = [(_MKURLBuilder *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A2218]) initForInternalBusiness:businessCopy id:id provider:v5];
    realBuilder = v9->_realBuilder;
    v9->_realBuilder = v10;
  }

  return v9;
}

- (void)setTransportType:(unint64_t)type
{
  realBuilder = self->_realBuilder;
  if (type - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[type - 1];
  }

  [(GEOMapURLBuilder *)realBuilder setTransportType:v4];
}

- (id)initForDirectionsToAddresses:(id)addresses
{
  addressesCopy = addresses;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForDirectionsToAddresses:addressesCopy];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

- (id)initForDirectionsTo:(id)to
{
  toCopy = to;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForDirectionsTo:toCopy];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

- (id)initForAddress:(id)address abPersonID:(int64_t)d abAddressID:(int64_t)iD cnContactIdentifier:(id)identifier cnAddressIdentifier:(id)addressIdentifier
{
  addressCopy = address;
  identifierCopy = identifier;
  addressIdentifierCopy = addressIdentifier;
  v19.receiver = self;
  v19.super_class = _MKURLBuilder;
  v15 = [(_MKURLBuilder *)&v19 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69A2218]) initForAddress:addressCopy abPersonID:d abAddressID:iD cnContactIdentifier:identifierCopy cnAddressIdentifier:addressIdentifierCopy];
    realBuilder = v15->_realBuilder;
    v15->_realBuilder = v16;
  }

  return v15;
}

- (id)initForAddress:(id)address label:(id)label
{
  addressCopy = address;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = _MKURLBuilder;
  v8 = [(_MKURLBuilder *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2218]) initForAddress:addressCopy label:labelCopy];
    realBuilder = v8->_realBuilder;
    v8->_realBuilder = v9;
  }

  return v8;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate label:(id)label
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = _MKURLBuilder;
  v8 = [(_MKURLBuilder *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2218]) initForCoordinate:labelCopy label:{latitude, longitude}];
    realBuilder = v8->_realBuilder;
    v8->_realBuilder = v9;
  }

  return v8;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  addressCopy = address;
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = _MKURLBuilder;
  v11 = [(_MKURLBuilder *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A2218]) initForCoordinate:addressCopy address:labelCopy label:{latitude, longitude}];
    realBuilder = v11->_realBuilder;
    v11->_realBuilder = v12;
  }

  return v11;
}

- (id)initForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  addressCopy = address;
  labelCopy = label;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = _MKURLBuilder;
  v14 = [(_MKURLBuilder *)&v20 init];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A2218]);
    geoMapItemIdentifier = [identifierCopy geoMapItemIdentifier];
    v17 = [v15 initForCoordinate:addressCopy address:labelCopy label:geoMapItemIdentifier mapItemIdentifier:{latitude, longitude}];
    realBuilder = v14->_realBuilder;
    v14->_realBuilder = v17;
  }

  return v14;
}

- (id)initForSearch:(id)search
{
  searchCopy = search;
  v9.receiver = self;
  v9.super_class = _MKURLBuilder;
  v5 = [(_MKURLBuilder *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2218]) initForSearch:searchCopy];
    realBuilder = v5->_realBuilder;
    v5->_realBuilder = v6;
  }

  return v5;
}

+ (id)URLForMapFrameWithCenter:(CLLocationCoordinate2D)center distance:(double)distance heading:(double)heading pitch:(double)pitch mapType:(unint64_t)type trackingMode:(int64_t)mode span:(id)span
{
  if (type > 3)
  {
    if (type != 4)
    {
      if (type == 108)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      if (type == 104)
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

  switch(type)
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
  if (mode == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (mode == 2);
  }

  return [MEMORY[0x1E69A2218] URLForMapFrameWithCenter:v9 distance:v11 heading:center.latitude pitch:center.longitude mapType:distance trackingMode:heading span:{pitch, span.var0, span.var1}];
}

+ (id)URLForDirectionsFromHereTo:(id)to label:(id)label muid:(unint64_t)muid provider:(int)provider transport:(unint64_t)transport
{
  if (transport - 1 > 7)
  {
    v7 = 4;
  }

  else
  {
    v7 = dword_1A30F7AE8[transport - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereTo:to label:label muid:muid provider:*&provider transport:v7];
}

+ (id)URLForDirectionsFromHereToDestinations:(id)destinations transport:(unint64_t)transport
{
  if (transport - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[transport - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereToDestinations:destinations transport:v4];
}

+ (id)URLForDirectionsFromHereTo:(id)to transport:(unint64_t)transport
{
  if (transport - 1 > 7)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_1A30F7AE8[transport - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFromHereTo:to transport:v4];
}

+ (id)URLForDirectionsFrom:(id)from toDestinations:(id)destinations transport:(unint64_t)transport
{
  if (transport - 1 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_1A30F7AE8[transport - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFrom:from toDestinations:destinations transport:v5];
}

+ (id)URLForDirectionsFrom:(id)from to:(id)to transport:(unint64_t)transport
{
  if (transport - 1 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_1A30F7AE8[transport - 1];
  }

  return [MEMORY[0x1E69A2218] URLForDirectionsFrom:from to:to transport:v5];
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier extraStorage:(id)storage useWebPlaceCard:(BOOL)card muninViewState:(id)state
{
  cardCopy = card;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v16 = MEMORY[0x1E69A2218];
  stateCopy = state;
  storageCopy = storage;
  labelCopy = label;
  addressCopy = address;
  geoMapItemIdentifier = [identifier geoMapItemIdentifier];
  v22 = [v16 URLForCoordinate:addressCopy address:labelCopy label:geoMapItemIdentifier mapItemIdentifier:storageCopy extraStorage:cardCopy useWebPlaceCard:stateCopy muninViewState:{latitude, longitude}];

  return v22;
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier extraStorage:(id)storage useWebPlaceCard:(BOOL)card
{
  cardCopy = card;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v14 = MEMORY[0x1E69A2218];
  storageCopy = storage;
  labelCopy = label;
  addressCopy = address;
  geoMapItemIdentifier = [identifier geoMapItemIdentifier];
  v19 = [v14 URLForCoordinate:addressCopy address:labelCopy label:geoMapItemIdentifier mapItemIdentifier:storageCopy extraStorage:cardCopy useWebPlaceCard:{latitude, longitude}];

  return v19;
}

+ (id)URLForCoordinate:(CLLocationCoordinate2D)coordinate address:(id)address label:(id)label mapItemIdentifier:(id)identifier
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v10 = MEMORY[0x1E69A2218];
  labelCopy = label;
  addressCopy = address;
  geoMapItemIdentifier = [identifier geoMapItemIdentifier];
  v14 = [v10 URLForCoordinate:addressCopy address:labelCopy label:geoMapItemIdentifier mapItemIdentifier:{latitude, longitude}];

  return v14;
}

@end