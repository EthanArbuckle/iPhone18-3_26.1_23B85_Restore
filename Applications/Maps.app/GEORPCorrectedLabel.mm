@interface GEORPCorrectedLabel
- (void)populateWithLabelMarker:(id)marker;
@end

@implementation GEORPCorrectedLabel

- (void)populateWithLabelMarker:(id)marker
{
  markerCopy = marker;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  featureHandles = [markerCopy featureHandles];
  v6 = [featureHandles countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(featureHandles);
        }

        v10 = sub_1007A364C(*(*(&v19 + 1) + 8 * v9));
        [(GEORPCorrectedLabel *)self addFeatureHandle:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [featureHandles countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  -[GEORPCorrectedLabel setUid:](self, "setUid:", [markerCopy featureID]);
  mapRegion = [markerCopy mapRegion];
  [(GEORPCorrectedLabel *)self setFeatureRegion:mapRegion];

  v12 = objc_alloc_init(GEOLatLng);
  [(GEORPCorrectedLabel *)self setCoordinate:v12];

  [markerCopy coordinate];
  v14 = v13;
  coordinate = [(GEORPCorrectedLabel *)self coordinate];
  [coordinate setLat:v14];

  [markerCopy coordinate];
  v17 = v16;
  coordinate2 = [(GEORPCorrectedLabel *)self coordinate];
  [coordinate2 setLng:v17];
}

@end