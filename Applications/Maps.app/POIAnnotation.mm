@interface POIAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMarkedLocation;
- (NSSet)keys;
- (POIAnnotation)initWithItem:(id)item defaultLocale:(id)locale;
- (id)debugDictionary;
@end

@implementation POIAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keys = [(POIAnnotation *)self keys];
      keys2 = [(POIAnnotation *)v5 keys];

      v8 = [keys intersectsSet:keys2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)debugDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(POIAnnotation *)self description];
  [v3 setObject:v4 forKeyedSubscript:@"self"];

  [v3 setObject:self->_text forKeyedSubscript:@"title"];
  [v3 setObject:self->_subtext forKeyedSubscript:@"subtitle"];
  v5 = [(GEOFeatureStyleAttributes *)self->_styleAttributes description];
  [v3 setObject:v5 forKeyedSubscript:@"styleAttributes"];

  address = [(POIAnnotation *)self address];
  addressValue = [address addressValue];
  v8 = [addressValue description];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  [v3 setObject:v10 forKeyedSubscript:@"address"];

  v11 = [v3 copy];

  return v11;
}

- (BOOL)isMarkedLocation
{
  keys = [(PersonalizedCompoundItem *)self->_compoundItem keys];
  anyObject = [keys anyObject];

  objc_opt_class();
  LOBYTE(keys) = objc_opt_isKindOfClass();

  return keys & 1;
}

- (NSSet)keys
{
  keys = [(PersonalizedCompoundItem *)self->_compoundItem keys];
  if (keys)
  {
    [(PersonalizedCompoundItem *)self->_compoundItem keys];
  }

  else
  {
    +[NSSet set];
  }
  v4 = ;

  return v4;
}

- (POIAnnotation)initWithItem:(id)item defaultLocale:(id)locale
{
  itemCopy = item;
  localeCopy = locale;
  v139.receiver = self;
  v139.super_class = POIAnnotation;
  v9 = [(POIAnnotation *)&v139 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_44;
  }

  objc_storeStrong(&v9->_compoundItem, item);
  v10->_presentationAttributesHash = sub_100044AE0(itemCopy);
  [itemCopy coordinate];
  v12 = v11;
  [itemCopy coordinate];
  v10->_coordinate.latitude = v12;
  v10->_coordinate.longitude = v13;
  v10->_showsBalloonCallout = [itemCopy showsBalloonCallout];
  v10->_sortOrder = [itemCopy sortOrder];
  title = [itemCopy title];
  subtitle = [itemCopy subtitle];
  if ([qword_10195F778 length])
  {
    v16 = qword_10195F778;

    localeCopy = v16;
  }

  value = [title value];
  prefix = [itemCopy prefix];
  value2 = [prefix value];

  if ([value2 length])
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Custom POI title with prefix" value:@"localized string not found" table:0];
    v22 = [NSString stringWithFormat:v21, value2, value];

    value = v22;
  }

  objc_storeStrong(&v10->_text, value);
  locale = [title locale];
  if (locale)
  {
    locale2 = [title locale];
  }

  else
  {
    locale2 = localeCopy;
  }

  textLocale = v10->_textLocale;
  v10->_textLocale = locale2;

  value3 = [subtitle value];
  subtext = v10->_subtext;
  v10->_subtext = value3;

  locale3 = [subtitle locale];
  if (locale3)
  {
    locale4 = [subtitle locale];
  }

  else
  {
    locale4 = localeCopy;
  }

  subtextLocale = v10->_subtextLocale;
  v10->_subtextLocale = locale4;

  labelGeometry = [itemCopy labelGeometry];
  labelShape = [labelGeometry labelShape];
  v33 = [labelShape count];

  v137 = subtitle;
  v138 = title;
  v135 = value2;
  v136 = value;
  if (v33)
  {
    labelGeometry2 = [itemCopy labelGeometry];
    labelShape2 = [labelGeometry2 labelShape];
    v36 = [labelShape2 count];

    v37 = malloc_type_malloc(24 * v36, 0x1000040504FFAC1uLL);
    v38 = v37;
    if (v36)
    {
      v39 = 0;
      v40 = v37 + 2;
      do
      {
        labelGeometry3 = [itemCopy labelGeometry];
        labelShape3 = [labelGeometry3 labelShape];
        v43 = [labelShape3 objectAtIndex:v39];

        [v43 lat];
        *(v40 - 2) = v44;
        [v43 lng];
        *(v40 - 1) = v45;
        [v43 elevationM];
        *v40 = v46;
        v40 += 3;

        ++v39;
      }

      while (v36 != v39);
    }

    v47 = [[VKCustomFeature alloc] initLineWithCoordinates:v38 count:v36];
    customFeature = v10->_customFeature;
    v10->_customFeature = v47;

    free(v38);
    goto LABEL_17;
  }

  enhancedPlacement = [itemCopy enhancedPlacement];

  if (enhancedPlacement)
  {
    enhancedPlacement2 = [itemCopy enhancedPlacement];
    elevationInMeters = [enhancedPlacement2 elevationInMeters];

    if (elevationInMeters)
    {
      latitude = v10->_coordinate.latitude;
      longitude = v10->_coordinate.longitude;
      enhancedPlacement3 = [itemCopy enhancedPlacement];
      elevationInMeters2 = [enhancedPlacement3 elevationInMeters];
      [elevationInMeters2 doubleValue];
      v83 = v82;

      v84 = [[VKCustomFeature alloc] initWithCoordinate3D:{latitude, longitude, v83}];
    }

    else
    {
      v84 = [[VKCustomFeature alloc] initWithCoordinate:{v10->_coordinate.latitude, v10->_coordinate.longitude}];
    }

    v96 = v10->_customFeature;
    v10->_customFeature = v84;

    enhancedPlacement4 = [itemCopy enhancedPlacement];
    buildingHeightInMeters = [enhancedPlacement4 buildingHeightInMeters];

    if (buildingHeightInMeters)
    {
      v99 = v10->_customFeature;
      enhancedPlacement5 = [itemCopy enhancedPlacement];
      buildingHeightInMeters2 = [enhancedPlacement5 buildingHeightInMeters];
      [buildingHeightInMeters2 floatValue];
      [(VKCustomFeature *)v99 setBuildingHeight:?];
    }

    enhancedPlacement6 = [itemCopy enhancedPlacement];
    buildingFaceAzimuth = [enhancedPlacement6 buildingFaceAzimuth];

    if (buildingFaceAzimuth)
    {
      v104 = v10->_customFeature;
      enhancedPlacement7 = [itemCopy enhancedPlacement];
      buildingFaceAzimuth2 = [enhancedPlacement7 buildingFaceAzimuth];
      [buildingFaceAzimuth2 floatValue];
      [(VKCustomFeature *)v104 setBuildingFaceAzimuth:?];
    }

    goto LABEL_17;
  }

  if (VKLocationCoordinate2DIsValid())
  {
    v87 = [[VKCustomFeature alloc] initWithCoordinate:{v10->_coordinate.latitude, v10->_coordinate.longitude}];
    v88 = v10->_customFeature;
    v10->_customFeature = v87;

    searchResult = [itemCopy searchResult];
    findMyHandle = [searchResult findMyHandle];
    if (findMyHandle)
    {

LABEL_48:
      searchResult2 = [itemCopy searchResult];
      findMyHandle2 = [searchResult2 findMyHandle];
      identifier = [findMyHandle2 identifier];
      v94 = identifier;
      if (identifier)
      {
        v95 = identifier;
      }

      else
      {
        searchResult3 = [itemCopy searchResult];
        autocompletePerson = [searchResult3 autocompletePerson];
        handle = [autocompletePerson handle];
        v114Handle = [handle handle];
        handleIdentifier = [v114Handle handleIdentifier];

        v95 = handleIdentifier;
      }

      searchResult4 = [itemCopy searchResult];
      findMyHandle3 = [searchResult4 findMyHandle];
      contact = [findMyHandle3 contact];
      v120 = contact;
      if (contact)
      {
        v121 = contact;
      }

      else
      {
        v122 = v95;
        searchResult5 = [itemCopy searchResult];
        autocompletePerson2 = [searchResult5 autocompletePerson];
        contact2 = [autocompletePerson2 contact];
        v125 = contact2;
        if (contact2)
        {
          v126 = contact2;
        }

        else
        {
          v126 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v122];
        }

        v121 = v126;

        v95 = v122;
      }

      if (!v121)
      {
        v129 = sub_10006D178();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v142 = "[POIAnnotation initWithItem:defaultLocale:]";
          *&v142[8] = 2080;
          *&v142[10] = "CustomPOIsController.m";
          v143 = 1024;
          v144 = 174;
          v145 = 2080;
          v146 = "contact != nil";
          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v130 = sub_10006D178();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            v131 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *v142 = v131;
            _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v127 = v10->_customFeature;
      identifier2 = [v121 identifier];
      [(VKCustomFeature *)v127 setImageProvider:v121 withKey:identifier2];

      goto LABEL_17;
    }

    searchResult6 = [itemCopy searchResult];
    autocompletePerson3 = [searchResult6 autocompletePerson];
    handle2 = [autocompletePerson3 handle];
    if (handle2)
    {
      v110 = handle2;
      searchResult7 = [itemCopy searchResult];
      locationType = [searchResult7 locationType];

      if (locationType == 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }
  }

LABEL_17:
  [(VKCustomFeature *)v10->_customFeature setText:v10->_text locale:v10->_textLocale];
  [(VKCustomFeature *)v10->_customFeature setAnnotationText:v10->_subtext locale:v10->_subtextLocale];
  styleAttributes = [itemCopy styleAttributes];
  v49StyleAttributes = [styleAttributes styleAttributes];
  v51 = v49StyleAttributes;
  if (byte_10195F780 == 1)
  {
    copyWithAirportStyleAttributes = [v49StyleAttributes copyWithAirportStyleAttributes];
  }

  else
  {
    copyWithAirportStyleAttributes = [v49StyleAttributes copy];
  }

  v53 = copyWithAirportStyleAttributes;

  v54 = 1;
  if (objc_opt_respondsToSelector())
  {
    if ([itemCopy isRouteStartOrEnd])
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }
  }

  *buf = 65567;
  *v142 = v54;
  *&v142[4] = 0x100010024;
  [v53 replaceAttributes:buf count:2];
  labelGeometry4 = [itemCopy labelGeometry];
  labelShape4 = [labelGeometry4 labelShape];
  v57 = [labelShape4 count];

  if (v57)
  {
    v140 = 0x1500000005;
    [v53 replaceAttributes:&v140 count:1];
  }

  objc_storeStrong(&v10->_styleAttributes, v53);
  if (GEOConfigGetBOOL() && [v53 isTransit])
  {
    v140 = 0x7F00000006;
    [v53 replaceAttributes:&v140 count:1];
  }

  [(VKCustomFeature *)v10->_customFeature setStyleAttributes:v53];
  clientFeatureID = [itemCopy clientFeatureID];
  -[VKCustomFeature setClientFeatureID:](v10->_customFeature, "setClientFeatureID:", [clientFeatureID clientFeatureID]);

  v10->_isLabelPOI = [v53 isLabelPOI];
  mapItem = [itemCopy mapItem];
  v60 = mapItem;
  if (mapItem)
  {
    -[VKCustomFeature setBusinessID:](v10->_customFeature, "setBusinessID:", [mapItem _muid]);
    -[VKCustomFeature setFeatureID:](v10->_customFeature, "setFeatureID:", [v60 _customIconID]);
    if ([v60 _hasAreaHighlightId])
    {
      -[VKCustomFeature setFeatureID:](v10->_customFeature, "setFeatureID:", [v60 _areaHighlightId]);
    }

    -[VKCustomFeature setSortKey:](v10->_customFeature, "setSortKey:", [itemCopy sortOrder]);
    _venueInfo = [v60 _venueInfo];
    v62 = v10->_customFeature;
    venueIdentifier = [_venueInfo venueIdentifier];
    -[VKCustomFeature setVenueID:](v62, "setVenueID:", [venueIdentifier venueID]);

    v132 = _venueInfo;
    venueIdentifier2 = [_venueInfo venueIdentifier];
    componentIdentifiers = [venueIdentifier2 componentIdentifiers];
    firstObject = [componentIdentifiers firstObject];

    -[VKCustomFeature setVenueBuildingID:](v10->_customFeature, "setVenueBuildingID:", [firstObject buildingID]);
    v67 = v10->_customFeature;
    floorInfo = [firstObject floorInfo];
    -[VKCustomFeature setVenueLevelID:](v67, "setVenueLevelID:", [floorInfo levelID]);

    -[VKCustomFeature setVenueComponentID:](v10->_customFeature, "setVenueComponentID:", [firstObject unitID]);
    searchResult8 = [itemCopy searchResult];
    if ([searchResult8 type] == 3 && objc_msgSend(searchResult8, "hasFloorOrdinal"))
    {
      -[VKCustomFeature setVenueFloorOrdinal:](v10->_customFeature, "setVenueFloorOrdinal:", [searchResult8 floorOrdinal]);
    }

    else
    {
      v70 = v10->_customFeature;
      [firstObject floorInfo];
      v71 = styleAttributes;
      v73 = v72 = localeCopy;
      -[VKCustomFeature setVenueFloorOrdinal:](v70, "setVenueFloorOrdinal:", [v73 ordinal]);

      localeCopy = v72;
      styleAttributes = v71;
    }

    v74 = [v60 _venueFeatureType] == 1 || objc_msgSend(v60, "_venueFeatureType") == 2;
    v10->_isVenueOrBuilding = v74;
  }

  v85 = v10;

LABEL_44:
  return v10;
}

@end