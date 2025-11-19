@interface RAPMapState
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (RAPMapState)initWithMapView:(id)a3 traits:(id)a4 place:(id)a5;
- (RAPMapState)initWithTraits:(id)a3;
- (id)copyWithReportedPlace:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RAPMapState

- (NSString)debugDescription
{
  v3 = [NSMutableString alloc];
  v12.receiver = self;
  v12.super_class = RAPMapState;
  v4 = [(RAPMapState *)&v12 description];
  v5 = [v3 initWithString:v4];

  if (self->_isShowingImagery)
  {
    v6 = @"\nis showing imagery";
  }

  else
  {
    v6 = @"\nis not showing imagery";
  }

  [v5 appendString:v6];
  if (self->_isShowingLabels)
  {
    v7 = @"\nis showing labels";
  }

  else
  {
    v7 = @"\nis not showing labels";
  }

  [v5 appendString:v7];
  [v5 appendFormat:@"\nzoom level: %f", *&self->_mapZoomLevel];
  [v5 appendFormat:@"\nmap type: %lu", self->_mapType];
  [v5 appendFormat:@"\ncamera: %@", self->_mapCamera];
  [v5 appendFormat:@"\nregion: %@", self->_mapRegion];
  [v5 appendFormat:@"\ntraits: %@", self->_traits];
  if (self->_reportedLine)
  {
    [v5 appendFormat:@"\nreported line: %@", self->_reportedLine];
  }

  if (self->_reportedPlace)
  {
    [v5 appendFormat:@"\nreported place: %@", self->_reportedPlace];
  }

  if (self->_isShowingTraffic)
  {
    v8 = @"\nis showing traffic";
  }

  else
  {
    v8 = @"\nis not showing traffic";
  }

  [v5 appendString:v8];
  if (self->_isSprMap)
  {
    v9 = @"\nis showing spr";
  }

  else
  {
    v9 = @"\nis not showing spr";
  }

  [v5 appendString:v9];
  v10 = [v5 copy];

  return v10;
}

- (unint64_t)hash
{
  mapZoomLevel = self->_mapZoomLevel;
  v4 = (self->_isShowingImagery ^ self->_isShowingLabels) & 1 ^ self->_mapType;
  v5 = v4 ^ [(GEOMapRegion *)self->_mapRegion hash];
  v6 = v5 ^ [(NSArray *)self->_mapVisibleTileSets hash];
  v7 = v6 ^ [(MKMapCamera *)self->_mapCamera hash];
  v8 = v7 ^ [(GEOMapServiceTraits *)self->_traits hash]^ mapZoomLevel;
  v9 = [(RAPPlace *)self->_reportedPlace hash];
  v10 = v9 ^ [(RAPTransitLine *)self->_reportedLine hash];
  return v8 ^ v10 ^ [(RAPLookAroundContext *)self->_reportedLookAroundContext hash]^ self->_isShowingTraffic ^ self->_isSprMap;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      isShowingLabels = self->_isShowingLabels;
      if (isShowingLabels != [(RAPMapState *)v6 isShowingLabels]|| (isShowingImagery = self->_isShowingImagery, isShowingImagery != [(RAPMapState *)v6 isShowingImagery]) || (mapZoomLevel = self->_mapZoomLevel, [(RAPMapState *)v6 mapZoomLevel], mapZoomLevel != v10) || (mapType = self->_mapType, mapType != [(RAPMapState *)v6 mapType]))
      {
        v23 = 0;
LABEL_19:

        goto LABEL_20;
      }

      mapRegion = self->_mapRegion;
      v13 = [(RAPMapState *)v6 mapRegion];
      if (![(GEOMapRegion *)mapRegion isEqual:v13])
      {
        v23 = 0;
LABEL_61:

        goto LABEL_19;
      }

      mapVisibleTileSets = self->_mapVisibleTileSets;
      v15 = [(RAPMapState *)v6 mapVisibleTileSets];
      if (![(NSArray *)mapVisibleTileSets isEqual:v15])
      {
        v23 = 0;
LABEL_60:

        goto LABEL_61;
      }

      mapCamera = self->_mapCamera;
      v17 = [(RAPMapState *)v6 mapCamera];
      if (![(MKMapCamera *)mapCamera isEqual:v17])
      {
        v23 = 0;
LABEL_59:

        goto LABEL_60;
      }

      traits = self->_traits;
      v19 = [(RAPMapState *)v6 traits];
      if (![(GEOMapServiceTraits *)traits isEqual:v19])
      {
        v23 = 0;
LABEL_58:

        goto LABEL_59;
      }

      reportedPlace = self->_reportedPlace;
      v21 = reportedPlace;
      if (!reportedPlace)
      {
        v22 = [(RAPMapState *)v6 reportedPlace];
        if (!v22)
        {
          v40 = 0;
          v43 = 0;
          goto LABEL_27;
        }

        v40 = v22;
        v21 = self->_reportedPlace;
      }

      v3 = [(RAPMapState *)v6 reportedPlace];
      if (![(RAPPlace *)v21 isEqual:v3])
      {
        v23 = 0;
        goto LABEL_55;
      }

      v43 = 1;
LABEL_27:
      reportedLine = self->_reportedLine;
      v42 = reportedLine;
      if (!reportedLine)
      {
        v26 = [(RAPMapState *)v6 reportedLine];
        if (!v26)
        {
          v39 = v3;
          v37 = 0;
          v38 = 0;
          goto LABEL_34;
        }

        v37 = v26;
        reportedLine = self->_reportedLine;
      }

      v41 = [(RAPMapState *)v6 reportedLine];
      if (![(RAPTransitLine *)reportedLine isEqual:?])
      {
        v23 = 0;
LABEL_50:

        goto LABEL_53;
      }

      v39 = v3;
      v38 = 1;
LABEL_34:
      reportedLookAroundContext = self->_reportedLookAroundContext;
      v28 = reportedLookAroundContext;
      if (!reportedLookAroundContext)
      {
        v29 = [(RAPMapState *)v6 reportedLookAroundContext];
        if (!v29)
        {
          v35 = 0;
          v36 = 0;
          goto LABEL_41;
        }

        v35 = v29;
        v28 = self->_reportedLookAroundContext;
      }

      v30 = [(RAPMapState *)v6 reportedLookAroundContext];
      if (v28 != v30)
      {
        v23 = 0;
        goto LABEL_46;
      }

      v33 = v30;
      v36 = 1;
LABEL_41:
      isShowingTraffic = self->_isShowingTraffic;
      if (isShowingTraffic == [(RAPMapState *)v6 isShowingTraffic:v33])
      {
        isSprMap = self->_isSprMap;
        v23 = isSprMap == [(RAPMapState *)v6 isSprMap];
        if ((v36 & 1) == 0)
        {
LABEL_47:
          if (reportedLookAroundContext)
          {
            if (v38)
            {
LABEL_49:
              v3 = v39;
              goto LABEL_50;
            }
          }

          else
          {

            if (v38)
            {
              goto LABEL_49;
            }
          }

          v3 = v39;
LABEL_53:
          if (v42)
          {
            if (!v43)
            {
              goto LABEL_56;
            }
          }

          else
          {

            if ((v43 & 1) == 0)
            {
LABEL_56:
              if (!reportedPlace)
              {
              }

              goto LABEL_58;
            }
          }

LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
        v23 = 0;
        if (!v36)
        {
          goto LABEL_47;
        }
      }

      v30 = v34;
LABEL_46:

      goto LABEL_47;
    }

    v23 = 0;
  }

LABEL_20:

  return v23;
}

- (id)copyWithReportedPlace:(id)a3
{
  v4 = a3;
  v5 = [(RAPMapState *)self copyWithZone:0];
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_mapSnapshotImageData copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 9) = self->_isShowingImagery;
  *(v5 + 8) = self->_isShowingLabels;
  *(v5 + 6) = *&self->_mapZoomLevel;
  v8 = [(GEOMapRegion *)self->_mapRegion copyWithZone:a3];
  v9 = *(v5 + 5);
  *(v5 + 5) = v8;

  *(v5 + 7) = self->_mapType;
  v10 = [(NSArray *)self->_mapVisibleTileSets copyWithZone:a3];
  v11 = *(v5 + 9);
  *(v5 + 9) = v10;

  v12 = [(MKMapCamera *)self->_mapCamera copyWithZone:a3];
  v13 = *(v5 + 10);
  *(v5 + 10) = v12;

  v14 = [(GEOMapServiceTraits *)self->_traits copyWithZone:a3];
  v15 = *(v5 + 4);
  *(v5 + 4) = v14;

  objc_storeStrong(v5 + 2, self->_reportedPlace);
  v16 = [(RAPTransitLine *)self->_reportedLine copyWithZone:a3];
  v17 = *(v5 + 3);
  *(v5 + 3) = v16;

  objc_storeStrong(v5 + 11, self->_reportedLookAroundContext);
  *(v5 + 10) = self->_isShowingTraffic;
  *(v5 + 11) = self->_isSprMap;
  return v5;
}

- (RAPMapState)initWithMapView:(id)a3 traits:(id)a4 place:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = RAPMapState;
  v11 = [(RAPMapState *)&v20 init];
  if (v11)
  {
    v11->_isShowingImagery = [v8 isShowingImagery];
    v11->_isShowingLabels = ([v8 mapType] & 0xFFFFFFFFFFFFFFFDLL) != 1;
    [v8 _zoomLevel];
    v11->_mapZoomLevel = v12;
    v13 = [v8 mapRegion];
    mapRegion = v11->_mapRegion;
    v11->_mapRegion = v13;

    v11->_mapType = [v8 mapType];
    v11->_isShowingTraffic = [v8 showsTraffic];
    v11->_isSprMap = [v8 _isShowingCuratedElevatedGround];
    v15 = [v8 _visibleTileSets];
    mapVisibleTileSets = v11->_mapVisibleTileSets;
    v11->_mapVisibleTileSets = v15;

    v17 = [v8 camera];
    mapCamera = v11->_mapCamera;
    v11->_mapCamera = v17;

    objc_storeStrong(&v11->_traits, a4);
    objc_storeStrong(&v11->_reportedPlace, a5);
  }

  return v11;
}

- (RAPMapState)initWithTraits:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPMapState;
  v6 = [(RAPMapState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, a3);
  }

  return v7;
}

@end