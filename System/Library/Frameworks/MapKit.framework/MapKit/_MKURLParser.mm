@interface _MKURLParser
+ (BOOL)isAppleMapsGuidesURL:(id)a3;
+ (void)urlParserForURL:(id)a3 completion:(id)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)span;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)searchCoordinate;
- (MKMapCamera)mapCamera;
- (_MKURLParser)initWithGEOParser:(id)a3;
- (_MKURLParser)initWithURL:(id)a3;
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
  v2 = [(GEOMapURLParser *)self->parser trackingMode];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (unint64_t)transportType
{
  v2 = [(GEOMapURLParser *)self->parser transportType];
  if (v2 > 5)
  {
    return 0xFFFFFFFLL;
  }

  else
  {
    return qword_1A30F74C0[v2];
  }
}

- (MKMapCamera)mapCamera
{
  v3 = objc_alloc_init(MKMapCamera);
  v4 = [(_MKURLParser *)self muninViewState];

  if (v4)
  {
    v5 = [(_MKURLParser *)self muninViewState];
    v6 = [v5 cameraFrame];

    [v6 altitude];
    [(MKMapCamera *)v3 setAltitude:?];
    [v6 latitude];
    v8 = v7;
    [v6 longitude];
    v10 = CLLocationCoordinate2DMake(v8, v9);
    [(MKMapCamera *)v3 setCenterCoordinate:v10.latitude, v10.longitude];
    [v6 pitch];
    [(MKMapCamera *)v3 setPitch:?];
    [v6 yaw];
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
  v3 = [MEMORY[0x1E69A2478] modernManager];
  if ([v3 isMuninEnabled])
  {
    v4 = [(_MKURLParser *)self muninViewState];

    if (v4)
    {
      return 107;
    }
  }

  else
  {
  }

  v6 = [(GEOMapURLParser *)self->parser mapType];
  if (v6 > 4)
  {
    return 103;
  }

  else
  {
    return qword_1A30F7498[v6];
  }
}

- (_MKURLParser)initWithGEOParser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKURLParser;
  v6 = [(_MKURLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->parser, a3);
  }

  return v7;
}

- (_MKURLParser)initWithURL:(id)a3
{
  v4 = MEMORY[0x1E69A2220];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  v7 = [(_MKURLParser *)self initWithGEOParser:v6];
  return v7;
}

+ (void)urlParserForURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69A2220];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___MKURLParser_urlParserForURL_completion___block_invoke;
  v8[3] = &unk_1E76C6AC8;
  v9 = v5;
  v7 = v5;
  [v6 mapURLParserForURL:a3 completion:v8];
}

+ (BOOL)isAppleMapsGuidesURL:(id)a3
{
  v3 = a3;
  v4 = [[_MKURLParser alloc] initWithURL:v3];

  v5 = 1;
  [(_MKURLParser *)v4 parseIncludingCustomParameters:1];
  v6 = [(_MKURLParser *)v4 collectionStorage];

  if (!v6 && ![(_MKURLParser *)v4 curatedCollectionMUID])
  {
    v5 = [(_MKURLParser *)v4 publisherMUID]!= 0;
  }

  return v5;
}

@end