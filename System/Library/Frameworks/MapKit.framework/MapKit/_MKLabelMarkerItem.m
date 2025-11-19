@interface _MKLabelMarkerItem
+ (id)labelMarkerItemWithLabelMarker:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)_hasVenueFeatureType;
- (BOOL)_isTransitDisplayFeature;
- (_MKLabelMarkerItem)initWithLabelMarker:(id)a3;
- (id)_identifier;
- (id)_place;
- (id)_venueInfo;
- (int)_venueFeatureType;
- (int)referenceFrame;
@end

@implementation _MKLabelMarkerItem

- (id)_place
{
  [(_MKLabelMarkerItem *)self coordinate];
  v5 = [objc_alloc(MEMORY[0x1E69A2348]) initWithLatitude:v3 longitude:v4];
  v6 = [(_MKLabelMarkerItem *)self name];
  [v5 setName:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69A1BA8]);
  v8 = [(_MKLabelMarkerItem *)self name];
  [v7 setName:v8];

  [v7 setUID:{-[_MKLabelMarkerItem _muid](self, "_muid")}];
  [v5 addBusiness:v7];

  return v5;
}

- (int)_venueFeatureType
{
  v3 = [(_MKLabelMarkerItem *)self _venueInfo];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_MKLabelMarkerItem *)self _venueInfo];
  v5 = [v4 venueFeatureType];

  return v5;
}

- (BOOL)_hasVenueFeatureType
{
  v2 = [(_MKLabelMarkerItem *)self _venueInfo];
  v3 = v2 != 0;

  return v3;
}

- (id)_venueInfo
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(VKLabelMarker *)self->_labelMarker venueID])
  {
    if ([(VKLabelMarker *)self->_labelMarker venueBuildingID])
    {
      if ([(VKLabelMarker *)self->_labelMarker venueLevelID])
      {
        v3 = [objc_alloc(MEMORY[0x1E69A2750]) initWithOrdinal:-[VKLabelMarker venueFloorOrdinal](self->_labelMarker levelID:{"venueFloorOrdinal"), -[VKLabelMarker venueLevelID](self->_labelMarker, "venueLevelID")}];
        v4 = [(VKLabelMarker *)self->_labelMarker venueComponentID];
        v5 = objc_alloc(MEMORY[0x1E69A2748]);
        v6 = [(VKLabelMarker *)self->_labelMarker venueBuildingID];
        if (v4)
        {
          v7 = [v5 initWithBuildingID:v6 floorInfo:v3 unitID:{-[VKLabelMarker venueComponentID](self->_labelMarker, "venueComponentID")}];
          v17[0] = v7;
          v8 = 4;
          v9 = v17;
        }

        else
        {
          v7 = [v5 initWithBuildingID:v6 floorInfo:v3];
          v16 = v7;
          v8 = 3;
          v9 = &v16;
        }

        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      }

      else
      {
        v3 = [objc_alloc(MEMORY[0x1E69A2748]) initWithBuildingID:{-[VKLabelMarker venueBuildingID](self->_labelMarker, "venueBuildingID")}];
        v15 = v3;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
        v8 = 2;
      }
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
      v8 = 1;
    }

    v12 = [objc_alloc(MEMORY[0x1E69A2758]) initWithVenueID:-[VKLabelMarker venueID](self->_labelMarker componentIdentifiers:{"venueID"), v11}];
    v13 = objc_alloc(MEMORY[0x1E69A21F8]);
    v10 = [v13 initWithIdentifier:v12 featureType:v8 filters:MEMORY[0x1E695E0F0] parent:0 contents:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isTransitDisplayFeature
{
  if (([(VKLabelMarker *)self->_labelMarker isTransit]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _MKLabelMarkerItem;
  return [(GEOBaseMapItem *)&v4 _isTransitDisplayFeature];
}

- (id)_identifier
{
  if ([(VKLabelMarker *)self->_labelMarker _mapkit_hasMUID])
  {
    labelMarker = self->_labelMarker;
    if (labelMarker)
    {
      [(VKLabelMarker *)labelMarker coordinate];
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = -180.0;
      v7 = -180.0;
    }

    v8 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:-[VKLabelMarker _mapkit_muid](self->_labelMarker resultProviderID:"_mapkit_muid") coordinate:{0, v5, v7}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  labelMarker = self->_labelMarker;
  if (labelMarker)
  {
    [(VKLabelMarker *)labelMarker coordinate];
  }

  else
  {
    v3 = -180.0;
    v4 = -180.0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (int)referenceFrame
{
  v2 = MEMORY[0x1E69A1E80];
  [(_MKLabelMarkerItem *)self coordinate];
  if ([v2 isLocationShiftRequiredForCoordinate:?])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (_MKLabelMarkerItem)initWithLabelMarker:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKLabelMarkerItem;
  v6 = [(_MKLabelMarkerItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labelMarker, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)labelMarkerItemWithLabelMarker:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithLabelMarker:v3];

  return v4;
}

@end