@interface _MKURLParser
+ (BOOL)isAppleMapsGuidesURL:(id)l;
+ (void)urlParserForURL:(id)l completion:(id)completion;
- ($F24F406B2B787EFB06265DBA3D28CBD5)span;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)searchCoordinate;
- (MKMapCamera)mapCamera;
- (_MKURLParser)initWithGEOParser:(id)parser;
- (_MKURLParser)initWithURL:(id)l;
- (double)cameraCenterBasedAltitude;
- (int64_t)trackingMode;
- (unint64_t)mapType;
- (unint64_t)transportType;
@end

@implementation _MKURLParser

- (CLLocationCoordinate2D)searchCoordinate
{
  [(GEOMapURLParser *)self->parser searchCoordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (double)cameraCenterBasedAltitude
{
  [(GEOMapURLParser *)self->parser cameraDistance];
  v4 = v3;
  [(GEOMapURLParser *)self->parser cameraDistance];
  v6 = v5;
  if (v4 > 0.0)
  {
    [(_MKURLParser *)self tilt];
    return cos(v7 * 0.0174532925) * v6;
  }

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)span
{
  [(GEOMapURLParser *)self->parser span];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  [(GEOMapURLParser *)self->parser centerCoordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (int64_t)trackingMode
{
  trackingMode = [(GEOMapURLParser *)self->parser trackingMode];
  if (trackingMode == 2)
  {
    return 2;
  }

  else
  {
    return trackingMode == 1;
  }
}

- (unint64_t)transportType
{
  transportType = [(GEOMapURLParser *)self->parser transportType];
  if (transportType > 5)
  {
    return 0xFFFFFFFLL;
  }

  else
  {
    return qword_1A30F74C0[transportType];
  }
}

- (MKMapCamera)mapCamera
{
  v3 = objc_alloc_init(MKMapCamera);
  muninViewState = [(_MKURLParser *)self muninViewState];

  if (muninViewState)
  {
    muninViewState2 = [(_MKURLParser *)self muninViewState];
    cameraFrame = [muninViewState2 cameraFrame];

    [cameraFrame altitude];
    [(MKMapCamera *)v3 setAltitude:?];
    [cameraFrame latitude];
    v8 = v7;
    [cameraFrame longitude];
    v10 = CLLocationCoordinate2DMake(v8, v9);
    [(MKMapCamera *)v3 setCenterCoordinate:v10.latitude, v10.longitude];
    [cameraFrame pitch];
    [(MKMapCamera *)v3 setPitch:?];
    [cameraFrame yaw];
    [(MKMapCamera *)v3 setHeading:?];
  }

  else
  {
    [(_MKURLParser *)self altitude];
    [(MKMapCamera *)v3 setAltitude:?];
    [(_MKURLParser *)self centerCoordinate];
    [(MKMapCamera *)v3 setCenterCoordinate:?];
    [(_MKURLParser *)self tilt];
    [(MKMapCamera *)v3 setPitch:?];
    [(_MKURLParser *)self rotation];
    [(MKMapCamera *)v3 setHeading:?];
  }

  return v3;
}

- (unint64_t)mapType
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  if ([modernManager isMuninEnabled])
  {
    muninViewState = [(_MKURLParser *)self muninViewState];

    if (muninViewState)
    {
      return 107;
    }
  }

  else
  {
  }

  mapType = [(GEOMapURLParser *)self->parser mapType];
  if (mapType > 4)
  {
    return 103;
  }

  else
  {
    return qword_1A30F7498[mapType];
  }
}

- (_MKURLParser)initWithGEOParser:(id)parser
{
  parserCopy = parser;
  v9.receiver = self;
  v9.super_class = _MKURLParser;
  v6 = [(_MKURLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->parser, parser);
  }

  return v7;
}

- (_MKURLParser)initWithURL:(id)l
{
  v4 = MEMORY[0x1E69A2220];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  v7 = [(_MKURLParser *)self initWithGEOParser:v6];
  return v7;
}

+ (void)urlParserForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69A2220];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___MKURLParser_urlParserForURL_completion___block_invoke;
  v8[3] = &unk_1E76C6AC8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 mapURLParserForURL:l completion:v8];
}

+ (BOOL)isAppleMapsGuidesURL:(id)l
{
  lCopy = l;
  v4 = [[_MKURLParser alloc] initWithURL:lCopy];

  v5 = 1;
  [(_MKURLParser *)v4 parseIncludingCustomParameters:1];
  collectionStorage = [(_MKURLParser *)v4 collectionStorage];

  if (!collectionStorage && ![(_MKURLParser *)v4 curatedCollectionMUID])
  {
    v5 = [(_MKURLParser *)v4 publisherMUID]!= 0;
  }

  return v5;
}

@end