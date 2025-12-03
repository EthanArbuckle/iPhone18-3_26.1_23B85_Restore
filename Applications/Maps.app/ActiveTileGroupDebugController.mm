@interface ActiveTileGroupDebugController
- (ActiveTileGroupDebugController)init;
- (ActiveTileGroupDebugController)initWithResourceManifest:(id)manifest;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)activeTileGroupOverridesDidChange:(id)change;
- (void)dealloc;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ActiveTileGroupDebugController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section == 1)
  {
    v18 = [TileSetOverrideDebugController alloc];
    tableView = [(ActiveTileGroupDebugController *)self tableView];
    v8 = -[TileSetOverrideDebugController initWithStyle:](v18, "initWithStyle:", [tableView style]);

    [(TileSetOverrideDebugController *)v8 setTitle:@"Custom Tile Set Override"];
    v11 = GEOConfigGetArray();
    v20 = [pathCopy row];
    if (v20 < [(TileGroupSectionsDebugController *)v11 count])
    {
      v21 = -[TileGroupSectionsDebugController objectAtIndexedSubscript:](v11, "objectAtIndexedSubscript:", [pathCopy row]);
      v22 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideStyleKey];
      intValue = [v22 intValue];

      v23 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideSizeKey];
      intValue2 = [v23 intValue];

      v25 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideScaleKey];
      intValue3 = [v25 intValue];

      v27 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideVersionKey];
      unsignedIntValue = [v27 unsignedIntValue];

      v29 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideBaseURLKey];
      v30 = [v21 objectForKeyedSubscript:GEOActiveTileGroupOverrideLocalizationURLKey];
      [(TileSetOverrideDebugController *)v8 setStyle:intValue];
      [(TileSetOverrideDebugController *)v8 setSize:intValue2];
      [(TileSetOverrideDebugController *)v8 setScale:intValue3];
      [(TileSetOverrideDebugController *)v8 setVersion:unsignedIntValue];
      [(TileSetOverrideDebugController *)v8 setBaseURL:v29];
      [(TileSetOverrideDebugController *)v8 setLocalizationURL:v30];
    }

    navigationController = [(ActiveTileGroupDebugController *)self navigationController];
    v16 = navigationController;
    v17 = v8;
  }

  else
  {
    if (section)
    {
      goto LABEL_10;
    }

    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v9 = [TileGroupSectionsDebugController alloc];
    tableView2 = [(ActiveTileGroupDebugController *)self tableView];
    v11 = -[TileGroupSectionsDebugController initWithStyle:](v9, "initWithStyle:", [tableView2 style]);

    [(TileGroupSectionsDebugController *)v11 setTileGroupIdentifier:[(TileSetOverrideDebugController *)v8 tag]];
    [(TileGroupSectionsDebugController *)v11 setCanChangeActiveTileGroup:self->_canChangeTileGroup];
    [(TileGroupSectionsDebugController *)v11 setResourceManifest:self->_resourceManifest];
    [(TileGroupSectionsDebugController *)v11 setTitle:@"Tile Group Details"];
    navigationItem = [(ActiveTileGroupDebugController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (!rightBarButtonItem)
    {
      navigationItem2 = [(TileGroupSectionsDebugController *)v11 navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }

    navigationController = [(ActiveTileGroupDebugController *)self navigationController];
    v16 = navigationController;
    v17 = v11;
  }

  [navigationController pushViewController:v17 animated:1];

LABEL_10:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] > 1)
  {
    goto LABEL_11;
  }

  section = [pathCopy section];
  if (section == 1)
  {
    resources = GEOConfigGetArray();
    v17 = [pathCopy row];
    if (v17 < [resources count])
    {
      v12 = [viewCopy dequeueReusableCellWithIdentifier:@"ExistingTileGroupOverrideCell"];
      if (!v12)
      {
        v12 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"ExistingTileGroupOverrideCell"];
      }

      v18 = [resources objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v19 = [v18 objectForKeyedSubscript:GEOActiveTileGroupOverrideStyleKey];
      intValue = [v19 intValue];

      v21 = [v18 objectForKeyedSubscript:GEOActiveTileGroupOverrideSizeKey];
      intValue2 = [v21 intValue];

      v23 = [v18 objectForKeyedSubscript:GEOActiveTileGroupOverrideScaleKey];
      intValue3 = [v23 intValue];

      v25 = [v18 objectForKeyedSubscript:GEOActiveTileGroupOverrideVersionKey];
      unsignedIntValue = [v25 unsignedIntValue];

      v27 = @"RASTER_STANDARD";
      switch(intValue)
      {
        case 0:
          break;
        case 1:
          v27 = @"VECTOR_STANDARD";
          break;
        case 2:
          v27 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
          break;
        case 3:
          v27 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
          break;
        case 4:
          v27 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
          break;
        case 5:
          v27 = @"RASTER_STANDARD_BACKGROUND";
          break;
        case 6:
          v27 = @"RASTER_HYBRID";
          break;
        case 7:
          v27 = @"RASTER_SATELLITE";
          break;
        case 8:
          v27 = @"RASTER_TERRAIN";
          break;
        case 11:
          v27 = @"VECTOR_BUILDINGS";
          break;
        case 12:
          v27 = @"VECTOR_TRAFFIC";
          break;
        case 13:
          v27 = @"VECTOR_POI";
          break;
        case 14:
          v27 = @"SPUTNIK_METADATA";
          break;
        case 15:
          v27 = @"SPUTNIK_C3M";
          break;
        case 16:
          v27 = @"SPUTNIK_DSM";
          break;
        case 17:
          v27 = @"SPUTNIK_DSM_GLOBAL";
          break;
        case 18:
          v27 = @"VECTOR_REALISTIC";
          break;
        case 19:
          v27 = @"VECTOR_LEGACY_REALISTIC";
          break;
        case 20:
          v27 = @"VECTOR_ROADS";
          break;
        case 21:
          v27 = @"RASTER_VEGETATION";
          break;
        case 22:
          v27 = @"VECTOR_TRAFFIC_SKELETON";
          break;
        case 23:
          v27 = @"RASTER_COASTLINE_MASK";
          break;
        case 24:
          v27 = @"RASTER_HILLSHADE";
          break;
        case 25:
          v27 = @"VECTOR_TRAFFIC_WITH_GREEN";
          break;
        case 26:
          v27 = @"VECTOR_TRAFFIC_STATIC";
          break;
        case 27:
          v27 = @"RASTER_COASTLINE_DROP_MASK";
          break;
        case 28:
          v27 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
          break;
        case 29:
          v27 = @"VECTOR_SPEED_PROFILES";
          break;
        case 30:
          v27 = @"VECTOR_VENUES";
          break;
        case 31:
          v27 = @"RASTER_DOWN_SAMPLED";
          break;
        case 32:
          v27 = @"RASTER_COLOR_BALANCED";
          break;
        case 33:
          v27 = @"RASTER_SATELLITE_NIGHT";
          break;
        case 34:
          v27 = @"SPUTNIK_VECTOR_BORDER";
          break;
        case 35:
          v27 = @"RASTER_SATELLITE_DIGITIZE";
          break;
        case 36:
          v27 = @"RASTER_HILLSHADE_PARKS";
          break;
        case 37:
          v27 = @"VECTOR_TRANSIT";
          break;
        case 38:
          v27 = @"RASTER_STANDARD_BASE";
          break;
        case 39:
          v27 = @"RASTER_STANDARD_LABELS";
          break;
        case 40:
          v27 = @"RASTER_HYBRID_ROADS";
          break;
        case 41:
          v27 = @"RASTER_HYBRID_LABELS";
          break;
        case 42:
          v27 = @"FLYOVER_C3M_MESH";
          break;
        case 43:
          v27 = @"FLYOVER_C3M_JPEG_TEXTURE";
          break;
        case 44:
          v27 = @"FLYOVER_C3M_ASTC_TEXTURE";
          break;
        case 45:
          v27 = @"RASTER_SATELLITE_ASTC";
          break;
        case 46:
          v27 = @"RASTER_HYBRID_ROADS_AND_LABELS";
          break;
        case 47:
          v27 = @"VECTOR_TRANSIT_SELECTION";
          break;
        case 48:
          v27 = @"VECTOR_COVERAGE";
          break;
        case 52:
          v27 = @"FLYOVER_METADATA";
          break;
        case 53:
          v27 = @"VECTOR_ROAD_NETWORK";
          break;
        case 54:
          v27 = @"VECTOR_LAND_COVER";
          break;
        case 55:
          v27 = @"VECTOR_DEBUG";
          break;
        case 56:
          v27 = @"VECTOR_STREET_POI";
          break;
        case 57:
          v27 = @"MUNIN_METADATA";
          break;
        case 58:
          v27 = @"VECTOR_SPR_MERCATOR";
          break;
        case 59:
          v27 = @"VECTOR_SPR_MODELS";
          break;
        case 60:
          v27 = @"VECTOR_SPR_MATERIALS";
          break;
        case 61:
          v27 = @"VECTOR_SPR_METADATA";
          break;
        case 62:
          v27 = @"VECTOR_TRACKS";
          break;
        case 63:
          v27 = @"VECTOR_RESERVED_2";
          break;
        case 64:
          v27 = @"VECTOR_STREET_LANDMARKS";
          break;
        case 65:
          v27 = @"COARSE_LOCATION_POLYGONS";
          break;
        case 66:
          v27 = @"VECTOR_SPR_ROADS";
          break;
        case 67:
          v27 = @"VECTOR_SPR_STANDARD";
          break;
        case 68:
          v27 = @"VECTOR_POI_V2";
          break;
        case 69:
          v27 = @"VECTOR_POLYGON_SELECTION";
          break;
        case 70:
          v27 = @"VL_METADATA";
          break;
        case 71:
          v27 = @"VL_DATA";
          break;
        case 72:
          v27 = @"PROACTIVE_APP_CLIP";
          break;
        case 73:
          v27 = @"VECTOR_BUILDINGS_V2";
          break;
        case 74:
          v27 = @"POI_BUSYNESS";
          break;
        case 75:
          v27 = @"POI_DP_BUSYNESS";
          break;
        case 76:
          v27 = @"SMART_INTERFACE_SELECTION";
          break;
        case 77:
          v27 = @"VECTOR_ASSETS";
          break;
        case 78:
          v27 = @"SPR_ASSET_METADATA";
          break;
        case 79:
          v27 = @"VECTOR_SPR_POLAR";
          break;
        case 80:
          v27 = @"SMART_DATA_MODE";
          break;
        case 81:
          v27 = @"CELLULAR_PERFORMANCE_SCORE";
          break;
        case 82:
          v27 = @"VECTOR_SPR_MODELS_OCCLUSION";
          break;
        case 83:
          v27 = @"VECTOR_TOPOGRAPHIC";
          break;
        case 84:
          v27 = @"VECTOR_POI_V2_UPDATE";
          break;
        case 85:
          v27 = @"VECTOR_LIVE_DATA_UPDATES";
          break;
        case 86:
          v27 = @"VECTOR_TRAFFIC_V2";
          break;
        case 87:
          v27 = @"VECTOR_ROAD_SELECTION";
          break;
        case 88:
          v27 = @"VECTOR_REGION_METADATA";
          break;
        case 89:
          v27 = @"RAY_TRACING";
          break;
        case 90:
          v27 = @"VECTOR_CONTOURS";
          break;
        case 91:
          v27 = @"RASTER_SATELLITE_POLAR";
          break;
        case 92:
          v27 = @"VMAP4_ELEVATION";
          break;
        case 93:
          v27 = @"VMAP4_ELEVATION_POLAR";
          break;
        case 94:
          v27 = @"CELLULAR_COVERAGE_PLMN";
          break;
        case 95:
          v27 = @"RASTER_SATELLITE_POLAR_NIGHT";
          break;
        case 96:
          v27 = @"BLUEPOI_MODEL";
          break;
        case 97:
          v27 = @"BLUEPOI_AOI";
          break;
        case 98:
          v27 = @"UNUSED_98";
          break;
        case 99:
          v27 = @"UNUSED_99";
          break;
        case 100:
          v27 = @"UNUSED_100";
          break;
        case 101:
          v27 = @"UNUSED_101";
          break;
        case 102:
          v27 = @"UNUSED_102";
          break;
        case 103:
          v27 = @"UNUSED_103";
          break;
        case 104:
          v27 = @"UNUSED_104";
          break;
        case 105:
          v27 = @"UNUSED_105";
          break;
        case 106:
          v27 = @"UNUSED_106";
          break;
        case 107:
          v27 = @"UNUSED_107";
          break;
        case 108:
          v27 = @"UNUSED_108";
          break;
        case 109:
          v27 = @"UNUSED_109";
          break;
        case 110:
          v27 = @"UNUSED_110";
          break;
        case 111:
          v27 = @"UNUSED_111";
          break;
        case 112:
          v27 = @"UNUSED_112";
          break;
        case 113:
          v27 = @"UNUSED_113";
          break;
        case 114:
          v27 = @"UNUSED_114";
          break;
        case 115:
          v27 = @"UNUSED_115";
          break;
        case 116:
          v27 = @"UNUSED_116";
          break;
        case 117:
          v27 = @"UNUSED_117";
          break;
        case 118:
          v27 = @"UNUSED_118";
          break;
        case 119:
          v27 = @"UNUSED_119";
          break;
        default:
          v27 = [NSString stringWithFormat:@"(unknown: %i)", intValue];
          break;
      }

      textLabel = [v12 textLabel];
      [textLabel setText:v27];

      if (intValue2 >= 3)
      {
        v41 = [NSString stringWithFormat:@"(unknown: %i)", intValue2];
      }

      else
      {
        v41 = *(&off_1016301B8 + intValue2);
      }

      if (intValue3 >= 3)
      {
        v42 = [NSString stringWithFormat:@"(unknown: %i)", intValue3];
      }

      else
      {
        v42 = *(&off_1016301D0 + intValue3);
      }

      v43 = [NSString stringWithFormat:@"%@ - %@ - %u", v41, v42, unsignedIntValue];
      detailTextLabel = [v12 detailTextLabel];
      [detailTextLabel setText:v43];

      [v12 setAccessoryType:1];
      goto LABEL_152;
    }

    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"AddActiveTileGroupOverrideCell"];
    if (!v12)
    {
      v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AddActiveTileGroupOverrideCell"];
    }

    textLabel2 = [v12 textLabel];
    [textLabel2 setText:@"Add TileSet Override"];
    goto LABEL_29;
  }

  if (section)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_153;
  }

  canChangeTileGroup = self->_canChangeTileGroup;
  resources = [(GEOResourceManifestDownload *)self->_resourceManifest resources];
  v11 = [pathCopy row];
  if (v11 < [resources tileGroupsCount] + canChangeTileGroup)
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"ActiveTileGroupCell"];
    if (!v12)
    {
      v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ActiveTileGroupCell"];
    }

    [v12 setAccessoryView:0];
    v13 = +[UIColor labelColor];
    textLabel3 = [v12 textLabel];
    [textLabel3 setTextColor:v13];

    if ([pathCopy row] || !canChangeTileGroup)
    {
      v29 = [resources tileGroupAtIndex:{objc_msgSend(pathCopy, "row") - canChangeTileGroup}];
      identifier = [v29 identifier];

      v31 = [NSString stringWithFormat:@"%d", identifier];
      textLabel4 = [v12 textLabel];
      [textLabel4 setText:v31];

      [v12 setTag:identifier];
      if (!GEOConfigGetBOOL())
      {
        goto LABEL_30;
      }

      v33 = +[GEOResourceManifestManager modernManager];
      activeTileGroupIdentifier = [v33 activeTileGroupIdentifier];

      if (identifier != activeTileGroupIdentifier)
      {
        goto LABEL_30;
      }

      textLabel2 = +[UIColor systemBlueColor];
      textLabel5 = [v12 textLabel];
      [textLabel5 setTextColor:textLabel2];
    }

    else
    {
      if ([resources tileGroupsCount])
      {
        v15 = [resources tileGroupAtIndex:0];
        identifier2 = [v15 identifier];
      }

      else
      {
        identifier2 = 0;
      }

      [v12 setTag:-1];
      if ((GEOConfigGetBOOL() & 1) == 0)
      {
        v36 = +[UIColor systemBlueColor];
        textLabel6 = [v12 textLabel];
        [textLabel6 setTextColor:v36];

        v38 = +[GEOResourceManifestManager modernManager];
        activeTileGroup = [v38 activeTileGroup];
        identifier2 = [activeTileGroup identifier];
      }

      textLabel2 = [NSString stringWithFormat:@"Default (%d)", identifier2];
      textLabel5 = [v12 textLabel];
      [textLabel5 setText:textLabel2];
    }

LABEL_29:
LABEL_30:
    [v12 setAccessoryType:1];
    goto LABEL_152;
  }

  v12 = 0;
LABEL_152:

LABEL_153:

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  resourceManifest = self->_resourceManifest;
  if (resourceManifest)
  {
    if (section == 1)
    {
      resources = GEOConfigGetArray();
      v10 = [resources count] + 1;
      goto LABEL_7;
    }

    if (!section)
    {
      canChangeTileGroup = self->_canChangeTileGroup;
      resources = [(GEOResourceManifestDownload *)resourceManifest resources];
      v10 = [resources tileGroupsCount] + canChangeTileGroup;
LABEL_7:

      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = @"Tile Set Overrides";
  if (section != 1)
  {
    v4 = 0;
  }

  if (section)
  {
    return v4;
  }

  else
  {
    return @"Tile Groups";
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (!self->_resourceManifest)
  {
    return 0;
  }

  if (self->_canChangeTileGroup)
  {
    return 2;
  }

  return 1;
}

- (void)dealloc
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ActiveTileGroupDebugController;
  [(MapsDebugValuesViewController *)&v5 dealloc];
}

- (ActiveTileGroupDebugController)initWithResourceManifest:(id)manifest
{
  manifestCopy = manifest;
  v11.receiver = self;
  v11.super_class = ActiveTileGroupDebugController;
  v6 = [(ActiveTileGroupDebugController *)&v11 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceManifest, manifest);
    v7->_canChangeTileGroup = 0;
    navigationItem = [(ActiveTileGroupDebugController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:0];

    v9 = v7;
  }

  return v7;
}

- (ActiveTileGroupDebugController)init
{
  v2 = [(ActiveTileGroupDebugController *)self initWithResourceManifest:0];
  v3 = v2;
  if (v2)
  {
    v2->_canChangeTileGroup = 1;
    v4 = +[GEOResourceManifestManager modernManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1009776B8;
    v10[3] = &unk_101630078;
    v5 = v3;
    v11 = v5;
    [v4 getResourceManifestWithHandler:v10];

    v6 = +[GEOResourceManifestManager modernManager];
    [v6 addTileGroupObserver:v5 queue:&_dispatch_main_q];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"activeTileGroupOverridesDidChange:" name:@"ActiveTileGroupOverridesDidChangeNotification" object:0];

    v8 = v5;
  }

  return v3;
}

- (void)activeTileGroupOverridesDidChange:(id)change
{
  tableView = [(ActiveTileGroupDebugController *)self tableView];
  [tableView reloadData];
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  tableView = [(ActiveTileGroupDebugController *)self tableView];
  [tableView reloadData];
}

@end