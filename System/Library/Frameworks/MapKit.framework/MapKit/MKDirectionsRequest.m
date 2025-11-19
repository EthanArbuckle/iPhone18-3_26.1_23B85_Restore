@interface MKDirectionsRequest
+ (BOOL)isDirectionsRequestURL:(NSURL *)url;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (MKDirectionsRequest)init;
- (MKDirectionsRequest)initWithContentsOfURL:(NSURL *)url;
- (id)_mapkit_initWithDictionaryRepresentation:(id)a3;
- (id)_mapkit_initWithSource:(id)a3 destination:(id)a4 transportType:(unint64_t)a5 arrivalDate:(id)a6;
- (id)_mapkit_initWithSource:(id)a3 destination:(id)a4 transportType:(unint64_t)a5 departureDate:(id)a6 includeTravelTimes:(BOOL)a7 includeTrafficIncidents:(BOOL)a8 includeRoutePoints:(BOOL)a9 resolveExtraAutomobileOptions:(BOOL)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setArrivalDate:(NSDate *)arrivalDate;
- (void)setDepartureDate:(NSDate *)departureDate;
@end

@implementation MKDirectionsRequest

- (MKDirectionsRequest)init
{
  v3.receiver = self;
  v3.super_class = MKDirectionsRequest;
  result = [(MKDirectionsRequest *)&v3 init];
  if (result)
  {
    result->_transportType = 0xFFFFFFFLL;
    *&result->_requestsAlternateRoutes = 256;
    result->_includeDistanceInETA = 1;
    result->_includeRoutePoints = 1;
    result->_tollPreference = 0;
    result->_highwayPreference = 0;
  }

  return result;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MKDirectionsRequest *)self dictionaryRepresentation];
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:v6 options:0 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [(MKDirectionsRequest *)self source];

  if (v4)
  {
    v5 = [(MKDirectionsRequest *)self source];
    v6 = [v5 dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"MKDirectionsRequestSource"];
  }

  v7 = [(MKDirectionsRequest *)self destination];

  if (v7)
  {
    v8 = [(MKDirectionsRequest *)self destination];
    v9 = [v8 dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"MKDirectionsRequestDestination"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MKDirectionsRequest;
  v4 = [(MKDirectionsRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ source:%@ destination:%@ transportType:%lu>", v4, self->_source, self->_destination, self->_transportType];

  return v5;
}

- (id)_mapkit_initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(MKDirectionsRequest *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"MKDirectionsRequestSource"];
    v7 = [v4 objectForKey:@"MKDirectionsRequestDestination"];
    if (v6)
    {
      v8 = [MKMapItem mapItemWithDictionary:v6];
      [(MKDirectionsRequest *)v5 setSource:v8];
    }

    if (v7)
    {
      v9 = [MKMapItem mapItemWithDictionary:v7];
      [(MKDirectionsRequest *)v5 setDestination:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MKDirectionsRequest)initWithContentsOfURL:(NSURL *)url
{
  v4 = url;
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v4];
  v16 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v16];
  v7 = v16;
  if (!v6)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not read directions request from %@", v4];
    v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v8 = v7;
  v9 = [(MKDirectionsRequest *)self _mapkit_initWithDictionaryRepresentation:v6];

  return v9;
}

- (id)_mapkit_initWithSource:(id)a3 destination:(id)a4 transportType:(unint64_t)a5 arrivalDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = MKDirectionsRequest;
  v14 = [(MKDirectionsRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, a3);
    objc_storeStrong(&v15->_destination, a4);
    v15->_transportType = a5;
    objc_storeStrong(&v15->_arrivalDate, a6);
    v16 = v15;
  }

  return v15;
}

- (id)_mapkit_initWithSource:(id)a3 destination:(id)a4 transportType:(unint64_t)a5 departureDate:(id)a6 includeTravelTimes:(BOOL)a7 includeTrafficIncidents:(BOOL)a8 includeRoutePoints:(BOOL)a9 resolveExtraAutomobileOptions:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v24.receiver = self;
  v24.super_class = MKDirectionsRequest;
  v20 = [(MKDirectionsRequest *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_source, a3);
    objc_storeStrong(&v21->_destination, a4);
    v21->_transportType = a5;
    objc_storeStrong(&v21->_departureDate, a6);
    v21->_includeTravelTimes = a7;
    v21->_includeTrafficIncidents = a8;
    v21->_includeRoutePoints = a9;
    v21->_resolveExtraAutomobileOptions = a10;
    v22 = v21;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MKDirectionsRequest allocWithZone:?]];
  v5 = [(MKDirectionsRequest *)self source];
  source = v4->_source;
  v4->_source = v5;

  v7 = [(MKDirectionsRequest *)self destination];
  destination = v4->_destination;
  v4->_destination = v7;

  [(MKDirectionsRequest *)v4 setTransportType:[(MKDirectionsRequest *)self transportType]];
  [(MKDirectionsRequest *)v4 setRequestsAlternateRoutes:[(MKDirectionsRequest *)self requestsAlternateRoutes]];
  v4->_includeTravelTimes = self->_includeTravelTimes;
  v4->_includeTrafficIncidents = self->_includeTrafficIncidents;
  v4->_includeRoutePoints = self->_includeRoutePoints;
  v4->_includeDistanceInETA = self->_includeDistanceInETA;
  v4->_resolveExtraAutomobileOptions = self->_resolveExtraAutomobileOptions;
  objc_storeStrong(&v4->_additionalTransportTypesRequested, self->_additionalTransportTypesRequested);
  v4->_useBackgroundURL = self->_useBackgroundURL;
  v9 = [(MKDirectionsRequest *)self departureDate];
  [(MKDirectionsRequest *)v4 setDepartureDate:v9];

  v10 = [(MKDirectionsRequest *)self arrivalDate];
  [(MKDirectionsRequest *)v4 setArrivalDate:v10];

  v11 = [(GEOAutomobileOptions *)self->_automobileOptions copy];
  automobileOptions = v4->_automobileOptions;
  v4->_automobileOptions = v11;

  v13 = [(GEOTransitOptions *)self->_transitOptions copy];
  transitOptions = v4->_transitOptions;
  v4->_transitOptions = v13;

  v15 = [(GEOWalkingOptions *)self->_walkingOptions copy];
  walkingOptions = v4->_walkingOptions;
  v4->_walkingOptions = v15;

  v17 = [(GEOCyclingOptions *)self->_cyclingOptions copy];
  cyclingOptions = v4->_cyclingOptions;
  v4->_cyclingOptions = v17;

  [(MKDirectionsRequest *)v4 setTollPreference:[(MKDirectionsRequest *)self tollPreference]];
  [(MKDirectionsRequest *)v4 setHighwayPreference:[(MKDirectionsRequest *)self highwayPreference]];
  return v4;
}

- (void)setArrivalDate:(NSDate *)arrivalDate
{
  v4 = [(NSDate *)arrivalDate copy];
  v5 = self->_arrivalDate;
  self->_arrivalDate = v4;
}

- (void)setDepartureDate:(NSDate *)departureDate
{
  v4 = [(NSDate *)departureDate copy];
  v5 = self->_departureDate;
  self->_departureDate = v4;
}

+ (BOOL)isDirectionsRequestURL:(NSURL *)url
{
  v3 = url;
  if ([(NSURL *)v3 isFileURL])
  {
    v4 = [(NSURL *)v3 lastPathComponent];
    v5 = [v4 pathExtension];
    v6 = [v5 isEqualToString:@"mkdirectionsrequest"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end