@interface GEORPCorrectedLabel
- (void)populateWithLabelMarker:(id)a3;
@end

@implementation GEORPCorrectedLabel

- (void)populateWithLabelMarker:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 featureHandles];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = sub_1007A364C(*(*(&v19 + 1) + 8 * v9));
        [(GEORPCorrectedLabel *)self addFeatureHandle:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  -[GEORPCorrectedLabel setUid:](self, "setUid:", [v4 featureID]);
  v11 = [v4 mapRegion];
  [(GEORPCorrectedLabel *)self setFeatureRegion:v11];

  v12 = objc_alloc_init(GEOLatLng);
  [(GEORPCorrectedLabel *)self setCoordinate:v12];

  [v4 coordinate];
  v14 = v13;
  v15 = [(GEORPCorrectedLabel *)self coordinate];
  [v15 setLat:v14];

  [v4 coordinate];
  v17 = v16;
  v18 = [(GEORPCorrectedLabel *)self coordinate];
  [v18 setLng:v17];
}

@end