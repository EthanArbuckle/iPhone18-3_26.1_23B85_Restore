@interface GEORPPhotoMetadata
- (GEORPPhotoMetadata)initWithUUID:(id)d location:(id)location;
@end

@implementation GEORPPhotoMetadata

- (GEORPPhotoMetadata)initWithUUID:(id)d location:(id)location
{
  dCopy = d;
  locationCopy = location;
  v17.receiver = self;
  v17.super_class = GEORPPhotoMetadata;
  v8 = [(GEORPPhotoMetadata *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(GEORPPhotoMetadata *)v8 setClientImageUuid:dCopy];
    if (locationCopy)
    {
      [locationCopy coordinate];
      if (CLLocationCoordinate2DIsValid(v18))
      {
        v10 = [[GEOLocation alloc] initWithCLLocation:locationCopy];
        [(GEORPPhotoMetadata *)v9 setGeotag:v10];

        timestamp = [locationCopy timestamp];

        if (timestamp)
        {
          timestamp2 = [locationCopy timestamp];
          [timestamp2 timeIntervalSinceReferenceDate];
          v14 = v13;
          geotag = [(GEORPPhotoMetadata *)v9 geotag];
          [geotag setTimestamp:v14];
        }
      }
    }
  }

  return v9;
}

@end