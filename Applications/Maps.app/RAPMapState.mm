@interface RAPMapState
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (RAPMapState)initWithMapView:(id)view traits:(id)traits place:(id)place;
- (RAPMapState)initWithTraits:(id)traits;
- (id)copyWithReportedPlace:(id)place;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      isShowingLabels = self->_isShowingLabels;
      if (isShowingLabels != [(RAPMapState *)v6 isShowingLabels]|| (isShowingImagery = self->_isShowingImagery, isShowingImagery != [(RAPMapState *)v6 isShowingImagery]) || (mapZoomLevel = self->_mapZoomLevel, [(RAPMapState *)v6 mapZoomLevel], mapZoomLevel != v10) || (mapType = self->_mapType, mapType != [(RAPMapState *)v6 mapType]))
      {
        v23 = 0;
LABEL_19:

        goto LABEL_20;
      }

      mapRegion = self->_mapRegion;
      mapRegion = [(RAPMapState *)v6 mapRegion];
      if (![(GEOMapRegion *)mapRegion isEqual:mapRegion])
      {
        v23 = 0;
LABEL_61:

        goto LABEL_19;
      }

      mapVisibleTileSets = self->_mapVisibleTileSets;
      mapVisibleTileSets = [(RAPMapState *)v6 mapVisibleTileSets];
      if (![(NSArray *)mapVisibleTileSets isEqual:mapVisibleTileSets])
      {
        v23 = 0;
LABEL_60:

        goto LABEL_61;
      }

      mapCamera = self->_mapCamera;
      mapCamera = [(RAPMapState *)v6 mapCamera];
      if (![(MKMapCamera *)mapCamera isEqual:mapCamera])
      {
        v23 = 0;
LABEL_59:

        goto LABEL_60;
      }

      traits = self->_traits;
      traits = [(RAPMapState *)v6 traits];
      if (![(GEOMapServiceTraits *)traits isEqual:traits])
      {
        v23 = 0;
LABEL_58:

        goto LABEL_59;
      }

      reportedPlace = self->_reportedPlace;
      v21 = reportedPlace;
      if (!reportedPlace)
      {
        reportedPlace = [(RAPMapState *)v6 reportedPlace];
        if (!reportedPlace)
        {
          v40 = 0;
          v43 = 0;
          goto LABEL_27;
        }

        v40 = reportedPlace;
        v21 = self->_reportedPlace;
      }

      reportedPlace2 = [(RAPMapState *)v6 reportedPlace];
      if (![(RAPPlace *)v21 isEqual:reportedPlace2])
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
        reportedLine = [(RAPMapState *)v6 reportedLine];
        if (!reportedLine)
        {
          v39 = reportedPlace2;
          v37 = 0;
          v38 = 0;
          goto LABEL_34;
        }

        v37 = reportedLine;
        reportedLine = self->_reportedLine;
      }

      reportedLine2 = [(RAPMapState *)v6 reportedLine];
      if (![(RAPTransitLine *)reportedLine isEqual:?])
      {
        v23 = 0;
LABEL_50:

        goto LABEL_53;
      }

      v39 = reportedPlace2;
      v38 = 1;
LABEL_34:
      reportedLookAroundContext = self->_reportedLookAroundContext;
      v28 = reportedLookAroundContext;
      if (!reportedLookAroundContext)
      {
        reportedLookAroundContext = [(RAPMapState *)v6 reportedLookAroundContext];
        if (!reportedLookAroundContext)
        {
          v35 = 0;
          v36 = 0;
          goto LABEL_41;
        }

        v35 = reportedLookAroundContext;
        v28 = self->_reportedLookAroundContext;
      }

      reportedLookAroundContext2 = [(RAPMapState *)v6 reportedLookAroundContext];
      if (v28 != reportedLookAroundContext2)
      {
        v23 = 0;
        goto LABEL_46;
      }

      v33 = reportedLookAroundContext2;
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
              reportedPlace2 = v39;
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

          reportedPlace2 = v39;
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

      reportedLookAroundContext2 = v34;
LABEL_46:

      goto LABEL_47;
    }

    v23 = 0;
  }

LABEL_20:

  return v23;
}

- (id)copyWithReportedPlace:(id)place
{
  placeCopy = place;
  v5 = [(RAPMapState *)self copyWithZone:0];
  v6 = v5[2];
  v5[2] = placeCopy;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_mapSnapshotImageData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 9) = self->_isShowingImagery;
  *(v5 + 8) = self->_isShowingLabels;
  *(v5 + 6) = *&self->_mapZoomLevel;
  v8 = [(GEOMapRegion *)self->_mapRegion copyWithZone:zone];
  v9 = *(v5 + 5);
  *(v5 + 5) = v8;

  *(v5 + 7) = self->_mapType;
  v10 = [(NSArray *)self->_mapVisibleTileSets copyWithZone:zone];
  v11 = *(v5 + 9);
  *(v5 + 9) = v10;

  v12 = [(MKMapCamera *)self->_mapCamera copyWithZone:zone];
  v13 = *(v5 + 10);
  *(v5 + 10) = v12;

  v14 = [(GEOMapServiceTraits *)self->_traits copyWithZone:zone];
  v15 = *(v5 + 4);
  *(v5 + 4) = v14;

  objc_storeStrong(v5 + 2, self->_reportedPlace);
  v16 = [(RAPTransitLine *)self->_reportedLine copyWithZone:zone];
  v17 = *(v5 + 3);
  *(v5 + 3) = v16;

  objc_storeStrong(v5 + 11, self->_reportedLookAroundContext);
  *(v5 + 10) = self->_isShowingTraffic;
  *(v5 + 11) = self->_isSprMap;
  return v5;
}

- (RAPMapState)initWithMapView:(id)view traits:(id)traits place:(id)place
{
  viewCopy = view;
  traitsCopy = traits;
  placeCopy = place;
  v20.receiver = self;
  v20.super_class = RAPMapState;
  v11 = [(RAPMapState *)&v20 init];
  if (v11)
  {
    v11->_isShowingImagery = [viewCopy isShowingImagery];
    v11->_isShowingLabels = ([viewCopy mapType] & 0xFFFFFFFFFFFFFFFDLL) != 1;
    [viewCopy _zoomLevel];
    v11->_mapZoomLevel = v12;
    mapRegion = [viewCopy mapRegion];
    mapRegion = v11->_mapRegion;
    v11->_mapRegion = mapRegion;

    v11->_mapType = [viewCopy mapType];
    v11->_isShowingTraffic = [viewCopy showsTraffic];
    v11->_isSprMap = [viewCopy _isShowingCuratedElevatedGround];
    _visibleTileSets = [viewCopy _visibleTileSets];
    mapVisibleTileSets = v11->_mapVisibleTileSets;
    v11->_mapVisibleTileSets = _visibleTileSets;

    camera = [viewCopy camera];
    mapCamera = v11->_mapCamera;
    v11->_mapCamera = camera;

    objc_storeStrong(&v11->_traits, traits);
    objc_storeStrong(&v11->_reportedPlace, place);
  }

  return v11;
}

- (RAPMapState)initWithTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = RAPMapState;
  v6 = [(RAPMapState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, traits);
  }

  return v7;
}

@end