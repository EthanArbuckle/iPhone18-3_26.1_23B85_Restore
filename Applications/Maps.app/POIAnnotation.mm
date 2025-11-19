@interface POIAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMarkedLocation;
- (NSSet)keys;
- (POIAnnotation)initWithItem:(id)a3 defaultLocale:(id)a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(POIAnnotation *)self keys];
      v7 = [(POIAnnotation *)v5 keys];

      v8 = [v6 intersectsSet:v7];
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

  v6 = [(POIAnnotation *)self address];
  v7 = [v6 addressValue];
  v8 = [v7 description];
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
  v2 = [(PersonalizedCompoundItem *)self->_compoundItem keys];
  v3 = [v2 anyObject];

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (NSSet)keys
{
  v3 = [(PersonalizedCompoundItem *)self->_compoundItem keys];
  if (v3)
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

- (POIAnnotation)initWithItem:(id)a3 defaultLocale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v139.receiver = self;
  v139.super_class = POIAnnotation;
  v9 = [(POIAnnotation *)&v139 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_44;
  }

  objc_storeStrong(&v9->_compoundItem, a3);
  v10->_presentationAttributesHash = sub_100044AE0(v7);
  [v7 coordinate];
  v12 = v11;
  [v7 coordinate];
  v10->_coordinate.latitude = v12;
  v10->_coordinate.longitude = v13;
  v10->_showsBalloonCallout = [v7 showsBalloonCallout];
  v10->_sortOrder = [v7 sortOrder];
  v14 = [v7 title];
  v15 = [v7 subtitle];
  if ([qword_10195F778 length])
  {
    v16 = qword_10195F778;

    v8 = v16;
  }

  v17 = [v14 value];
  v18 = [v7 prefix];
  v19 = [v18 value];

  if ([v19 length])
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Custom POI title with prefix" value:@"localized string not found" table:0];
    v22 = [NSString stringWithFormat:v21, v19, v17];

    v17 = v22;
  }

  objc_storeStrong(&v10->_text, v17);
  v23 = [v14 locale];
  if (v23)
  {
    v24 = [v14 locale];
  }

  else
  {
    v24 = v8;
  }

  textLocale = v10->_textLocale;
  v10->_textLocale = v24;

  v26 = [v15 value];
  subtext = v10->_subtext;
  v10->_subtext = v26;

  v28 = [v15 locale];
  if (v28)
  {
    v29 = [v15 locale];
  }

  else
  {
    v29 = v8;
  }

  subtextLocale = v10->_subtextLocale;
  v10->_subtextLocale = v29;

  v31 = [v7 labelGeometry];
  v32 = [v31 labelShape];
  v33 = [v32 count];

  v137 = v15;
  v138 = v14;
  v135 = v19;
  v136 = v17;
  if (v33)
  {
    v34 = [v7 labelGeometry];
    v35 = [v34 labelShape];
    v36 = [v35 count];

    v37 = malloc_type_malloc(24 * v36, 0x1000040504FFAC1uLL);
    v38 = v37;
    if (v36)
    {
      v39 = 0;
      v40 = v37 + 2;
      do
      {
        v41 = [v7 labelGeometry];
        v42 = [v41 labelShape];
        v43 = [v42 objectAtIndex:v39];

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

  v75 = [v7 enhancedPlacement];

  if (v75)
  {
    v76 = [v7 enhancedPlacement];
    v77 = [v76 elevationInMeters];

    if (v77)
    {
      latitude = v10->_coordinate.latitude;
      longitude = v10->_coordinate.longitude;
      v80 = [v7 enhancedPlacement];
      v81 = [v80 elevationInMeters];
      [v81 doubleValue];
      v83 = v82;

      v84 = [[VKCustomFeature alloc] initWithCoordinate3D:{latitude, longitude, v83}];
    }

    else
    {
      v84 = [[VKCustomFeature alloc] initWithCoordinate:{v10->_coordinate.latitude, v10->_coordinate.longitude}];
    }

    v96 = v10->_customFeature;
    v10->_customFeature = v84;

    v97 = [v7 enhancedPlacement];
    v98 = [v97 buildingHeightInMeters];

    if (v98)
    {
      v99 = v10->_customFeature;
      v100 = [v7 enhancedPlacement];
      v101 = [v100 buildingHeightInMeters];
      [v101 floatValue];
      [(VKCustomFeature *)v99 setBuildingHeight:?];
    }

    v102 = [v7 enhancedPlacement];
    v103 = [v102 buildingFaceAzimuth];

    if (v103)
    {
      v104 = v10->_customFeature;
      v105 = [v7 enhancedPlacement];
      v106 = [v105 buildingFaceAzimuth];
      [v106 floatValue];
      [(VKCustomFeature *)v104 setBuildingFaceAzimuth:?];
    }

    goto LABEL_17;
  }

  if (VKLocationCoordinate2DIsValid())
  {
    v87 = [[VKCustomFeature alloc] initWithCoordinate:{v10->_coordinate.latitude, v10->_coordinate.longitude}];
    v88 = v10->_customFeature;
    v10->_customFeature = v87;

    v89 = [v7 searchResult];
    v90 = [v89 findMyHandle];
    if (v90)
    {

LABEL_48:
      v91 = [v7 searchResult];
      v92 = [v91 findMyHandle];
      v93 = [v92 identifier];
      v94 = v93;
      if (v93)
      {
        v95 = v93;
      }

      else
      {
        v133 = [v7 searchResult];
        v113 = [v133 autocompletePerson];
        v114 = [v113 handle];
        v115 = [v114 handle];
        v116 = [v115 handleIdentifier];

        v95 = v116;
      }

      v117 = [v7 searchResult];
      v118 = [v117 findMyHandle];
      v119 = [v118 contact];
      v120 = v119;
      if (v119)
      {
        v121 = v119;
      }

      else
      {
        v122 = v95;
        v134 = [v7 searchResult];
        v123 = [v134 autocompletePerson];
        v124 = [v123 contact];
        v125 = v124;
        if (v124)
        {
          v126 = v124;
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
      v128 = [v121 identifier];
      [(VKCustomFeature *)v127 setImageProvider:v121 withKey:v128];

      goto LABEL_17;
    }

    v107 = [v7 searchResult];
    v108 = [v107 autocompletePerson];
    v109 = [v108 handle];
    if (v109)
    {
      v110 = v109;
      v111 = [v7 searchResult];
      v112 = [v111 locationType];

      if (v112 == 4)
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
  v49 = [v7 styleAttributes];
  v50 = [v49 styleAttributes];
  v51 = v50;
  if (byte_10195F780 == 1)
  {
    v52 = [v50 copyWithAirportStyleAttributes];
  }

  else
  {
    v52 = [v50 copy];
  }

  v53 = v52;

  v54 = 1;
  if (objc_opt_respondsToSelector())
  {
    if ([v7 isRouteStartOrEnd])
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
  v55 = [v7 labelGeometry];
  v56 = [v55 labelShape];
  v57 = [v56 count];

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
  v58 = [v7 clientFeatureID];
  -[VKCustomFeature setClientFeatureID:](v10->_customFeature, "setClientFeatureID:", [v58 clientFeatureID]);

  v10->_isLabelPOI = [v53 isLabelPOI];
  v59 = [v7 mapItem];
  v60 = v59;
  if (v59)
  {
    -[VKCustomFeature setBusinessID:](v10->_customFeature, "setBusinessID:", [v59 _muid]);
    -[VKCustomFeature setFeatureID:](v10->_customFeature, "setFeatureID:", [v60 _customIconID]);
    if ([v60 _hasAreaHighlightId])
    {
      -[VKCustomFeature setFeatureID:](v10->_customFeature, "setFeatureID:", [v60 _areaHighlightId]);
    }

    -[VKCustomFeature setSortKey:](v10->_customFeature, "setSortKey:", [v7 sortOrder]);
    v61 = [v60 _venueInfo];
    v62 = v10->_customFeature;
    v63 = [v61 venueIdentifier];
    -[VKCustomFeature setVenueID:](v62, "setVenueID:", [v63 venueID]);

    v132 = v61;
    v64 = [v61 venueIdentifier];
    v65 = [v64 componentIdentifiers];
    v66 = [v65 firstObject];

    -[VKCustomFeature setVenueBuildingID:](v10->_customFeature, "setVenueBuildingID:", [v66 buildingID]);
    v67 = v10->_customFeature;
    v68 = [v66 floorInfo];
    -[VKCustomFeature setVenueLevelID:](v67, "setVenueLevelID:", [v68 levelID]);

    -[VKCustomFeature setVenueComponentID:](v10->_customFeature, "setVenueComponentID:", [v66 unitID]);
    v69 = [v7 searchResult];
    if ([v69 type] == 3 && objc_msgSend(v69, "hasFloorOrdinal"))
    {
      -[VKCustomFeature setVenueFloorOrdinal:](v10->_customFeature, "setVenueFloorOrdinal:", [v69 floorOrdinal]);
    }

    else
    {
      v70 = v10->_customFeature;
      [v66 floorInfo];
      v71 = v49;
      v73 = v72 = v8;
      -[VKCustomFeature setVenueFloorOrdinal:](v70, "setVenueFloorOrdinal:", [v73 ordinal]);

      v8 = v72;
      v49 = v71;
    }

    v74 = [v60 _venueFeatureType] == 1 || objc_msgSend(v60, "_venueFeatureType") == 2;
    v10->_isVenueOrBuilding = v74;
  }

  v85 = v10;

LABEL_44:
  return v10;
}

@end