@interface TileGroupTileSetsDebugController
- (id)_tileGroup;
- (id)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
@end

@implementation TileGroupTileSetsDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TileGroupTileSetsDebugController *)self _tileGroup];
  if ([v7 row] <= 5)
  {
    if ([v7 row] == 4 || objc_msgSend(v7, "row") == 5)
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"TileSetInfoWithSubtitleCell"];
      if (v10)
      {
        goto LABEL_10;
      }

      v11 = [UITableViewCell alloc];
      v12 = @"TileSetInfoWithSubtitleCell";
      v13 = 3;
    }

    else
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"TileSetInfoCell"];
      if (v10)
      {
        goto LABEL_10;
      }

      v11 = [UITableViewCell alloc];
      v12 = @"TileSetInfoCell";
      v13 = 1;
    }

    v10 = [v11 initWithStyle:v13 reuseIdentifier:v12];
LABEL_10:
    v9 = v10;
    v14 = [v8 tileSets];
    v15 = &v14[8 * [v7 section]];
    v16 = [(GEOResourceManifestDownload *)self->_resourceManifest resources];
    v17 = [v16 tileSetAtIndex:v15[1]];

    v18 = [v7 row];
    if (v18 > 2)
    {
      switch(v18)
      {
        case 3:
          v26 = [v9 textLabel];
          [v26 setText:@"Version"];

          [NSString stringWithFormat:@"%i", *v15];
          v23 = LABEL_27:;
          goto LABEL_29;
        case 4:
          v28 = [v9 textLabel];
          [v28 setText:@"Base URL"];

          v23 = [v17 baseURL];
          goto LABEL_29;
        case 5:
          v22 = [v9 textLabel];
          [v22 setText:@"Localization URL"];

          v23 = [v17 localizationURL];
LABEL_29:
          v25 = v23;
          goto LABEL_30;
      }
    }

    else
    {
      switch(v18)
      {
        case 0:
          v24 = [v9 textLabel];
          [v24 setText:@"Style"];

          v20 = [v17 style];
          v25 = @"RASTER_STANDARD";
          switch(v20)
          {
            case 0:
              goto LABEL_30;
            case 1:
              v25 = @"VECTOR_STANDARD";
              break;
            case 2:
              v25 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
              break;
            case 3:
              v25 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
              break;
            case 4:
              v25 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
              break;
            case 5:
              v25 = @"RASTER_STANDARD_BACKGROUND";
              break;
            case 6:
              v25 = @"RASTER_HYBRID";
              break;
            case 7:
              v25 = @"RASTER_SATELLITE";
              break;
            case 8:
              v25 = @"RASTER_TERRAIN";
              break;
            case 11:
              v25 = @"VECTOR_BUILDINGS";
              break;
            case 12:
              v25 = @"VECTOR_TRAFFIC";
              break;
            case 13:
              v25 = @"VECTOR_POI";
              break;
            case 14:
              v25 = @"SPUTNIK_METADATA";
              break;
            case 15:
              v25 = @"SPUTNIK_C3M";
              break;
            case 16:
              v25 = @"SPUTNIK_DSM";
              break;
            case 17:
              v25 = @"SPUTNIK_DSM_GLOBAL";
              break;
            case 18:
              v25 = @"VECTOR_REALISTIC";
              break;
            case 19:
              v25 = @"VECTOR_LEGACY_REALISTIC";
              break;
            case 20:
              v25 = @"VECTOR_ROADS";
              break;
            case 21:
              v25 = @"RASTER_VEGETATION";
              break;
            case 22:
              v25 = @"VECTOR_TRAFFIC_SKELETON";
              break;
            case 23:
              v25 = @"RASTER_COASTLINE_MASK";
              break;
            case 24:
              v25 = @"RASTER_HILLSHADE";
              break;
            case 25:
              v25 = @"VECTOR_TRAFFIC_WITH_GREEN";
              break;
            case 26:
              v25 = @"VECTOR_TRAFFIC_STATIC";
              break;
            case 27:
              v25 = @"RASTER_COASTLINE_DROP_MASK";
              break;
            case 28:
              v25 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
              break;
            case 29:
              v25 = @"VECTOR_SPEED_PROFILES";
              break;
            case 30:
              v25 = @"VECTOR_VENUES";
              break;
            case 31:
              v25 = @"RASTER_DOWN_SAMPLED";
              break;
            case 32:
              v25 = @"RASTER_COLOR_BALANCED";
              break;
            case 33:
              v25 = @"RASTER_SATELLITE_NIGHT";
              break;
            case 34:
              v25 = @"SPUTNIK_VECTOR_BORDER";
              break;
            case 35:
              v25 = @"RASTER_SATELLITE_DIGITIZE";
              break;
            case 36:
              v25 = @"RASTER_HILLSHADE_PARKS";
              break;
            case 37:
              v25 = @"VECTOR_TRANSIT";
              break;
            case 38:
              v25 = @"RASTER_STANDARD_BASE";
              break;
            case 39:
              v25 = @"RASTER_STANDARD_LABELS";
              break;
            case 40:
              v25 = @"RASTER_HYBRID_ROADS";
              break;
            case 41:
              v25 = @"RASTER_HYBRID_LABELS";
              break;
            case 42:
              v25 = @"FLYOVER_C3M_MESH";
              break;
            case 43:
              v25 = @"FLYOVER_C3M_JPEG_TEXTURE";
              break;
            case 44:
              v25 = @"FLYOVER_C3M_ASTC_TEXTURE";
              break;
            case 45:
              v25 = @"RASTER_SATELLITE_ASTC";
              break;
            case 46:
              v25 = @"RASTER_HYBRID_ROADS_AND_LABELS";
              break;
            case 47:
              v25 = @"VECTOR_TRANSIT_SELECTION";
              break;
            case 48:
              v25 = @"VECTOR_COVERAGE";
              break;
            case 52:
              v25 = @"FLYOVER_METADATA";
              break;
            case 53:
              v25 = @"VECTOR_ROAD_NETWORK";
              break;
            case 54:
              v25 = @"VECTOR_LAND_COVER";
              break;
            case 55:
              v25 = @"VECTOR_DEBUG";
              break;
            case 56:
              v25 = @"VECTOR_STREET_POI";
              break;
            case 57:
              v25 = @"MUNIN_METADATA";
              break;
            case 58:
              v25 = @"VECTOR_SPR_MERCATOR";
              break;
            case 59:
              v25 = @"VECTOR_SPR_MODELS";
              break;
            case 60:
              v25 = @"VECTOR_SPR_MATERIALS";
              break;
            case 61:
              v25 = @"VECTOR_SPR_METADATA";
              break;
            case 62:
              v25 = @"VECTOR_TRACKS";
              break;
            case 63:
              v25 = @"VECTOR_RESERVED_2";
              break;
            case 64:
              v25 = @"VECTOR_STREET_LANDMARKS";
              break;
            case 65:
              v25 = @"COARSE_LOCATION_POLYGONS";
              break;
            case 66:
              v25 = @"VECTOR_SPR_ROADS";
              break;
            case 67:
              v25 = @"VECTOR_SPR_STANDARD";
              break;
            case 68:
              v25 = @"VECTOR_POI_V2";
              break;
            case 69:
              v25 = @"VECTOR_POLYGON_SELECTION";
              break;
            case 70:
              v25 = @"VL_METADATA";
              break;
            case 71:
              v25 = @"VL_DATA";
              break;
            case 72:
              v25 = @"PROACTIVE_APP_CLIP";
              break;
            case 73:
              v25 = @"VECTOR_BUILDINGS_V2";
              break;
            case 74:
              v25 = @"POI_BUSYNESS";
              break;
            case 75:
              v25 = @"POI_DP_BUSYNESS";
              break;
            case 76:
              v25 = @"SMART_INTERFACE_SELECTION";
              break;
            case 77:
              v25 = @"VECTOR_ASSETS";
              break;
            case 78:
              v25 = @"SPR_ASSET_METADATA";
              break;
            case 79:
              v25 = @"VECTOR_SPR_POLAR";
              break;
            case 80:
              v25 = @"SMART_DATA_MODE";
              break;
            case 81:
              v25 = @"CELLULAR_PERFORMANCE_SCORE";
              break;
            case 82:
              v25 = @"VECTOR_SPR_MODELS_OCCLUSION";
              break;
            case 83:
              v25 = @"VECTOR_TOPOGRAPHIC";
              break;
            case 84:
              v25 = @"VECTOR_POI_V2_UPDATE";
              break;
            case 85:
              v25 = @"VECTOR_LIVE_DATA_UPDATES";
              break;
            case 86:
              v25 = @"VECTOR_TRAFFIC_V2";
              break;
            case 87:
              v25 = @"VECTOR_ROAD_SELECTION";
              break;
            case 88:
              v25 = @"VECTOR_REGION_METADATA";
              break;
            case 89:
              v25 = @"RAY_TRACING";
              break;
            case 90:
              v25 = @"VECTOR_CONTOURS";
              break;
            case 91:
              v25 = @"RASTER_SATELLITE_POLAR";
              break;
            case 92:
              v25 = @"VMAP4_ELEVATION";
              break;
            case 93:
              v25 = @"VMAP4_ELEVATION_POLAR";
              break;
            case 94:
              v25 = @"CELLULAR_COVERAGE_PLMN";
              break;
            case 95:
              v25 = @"RASTER_SATELLITE_POLAR_NIGHT";
              break;
            case 96:
              v25 = @"BLUEPOI_MODEL";
              break;
            case 97:
              v25 = @"BLUEPOI_AOI";
              break;
            case 98:
              v25 = @"UNUSED_98";
              break;
            case 99:
              v25 = @"UNUSED_99";
              break;
            case 100:
              v25 = @"UNUSED_100";
              break;
            case 101:
              v25 = @"UNUSED_101";
              break;
            case 102:
              v25 = @"UNUSED_102";
              break;
            case 103:
              v25 = @"UNUSED_103";
              break;
            case 104:
              v25 = @"UNUSED_104";
              break;
            case 105:
              v25 = @"UNUSED_105";
              break;
            case 106:
              v25 = @"UNUSED_106";
              break;
            case 107:
              v25 = @"UNUSED_107";
              break;
            case 108:
              v25 = @"UNUSED_108";
              break;
            case 109:
              v25 = @"UNUSED_109";
              break;
            case 110:
              v25 = @"UNUSED_110";
              break;
            case 111:
              v25 = @"UNUSED_111";
              break;
            case 112:
              v25 = @"UNUSED_112";
              break;
            case 113:
              v25 = @"UNUSED_113";
              break;
            case 114:
              v25 = @"UNUSED_114";
              break;
            case 115:
              v25 = @"UNUSED_115";
              break;
            case 116:
              v25 = @"UNUSED_116";
              break;
            case 117:
              v25 = @"UNUSED_117";
              break;
            case 118:
              v25 = @"UNUSED_118";
              break;
            case 119:
              v25 = @"UNUSED_119";
              break;
            default:
              goto LABEL_26;
          }

          goto LABEL_30;
        case 1:
          v27 = [v9 textLabel];
          [v27 setText:@"Size"];

          v20 = [v17 size];
          if (v20 < 3)
          {
            v21 = &off_1016301B8;
            goto LABEL_25;
          }

          goto LABEL_26;
        case 2:
          v19 = [v9 textLabel];
          [v19 setText:@"Scale"];

          v20 = [v17 scale];
          if (v20 < 3)
          {
            v21 = &off_1016301D0;
LABEL_25:
            v25 = v21[v20];
LABEL_30:
            v29 = [v9 detailTextLabel];
            [v29 setText:v25];

            break;
          }

LABEL_26:
          [NSString stringWithFormat:@"(unknown: %i)", v20];
          goto LABEL_27;
      }
    }

    v30 = [v9 detailTextLabel];
    v31 = [v30 text];
    if ([v31 length])
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v32 = ;
    v33 = [v9 textLabel];
    [v33 setTextColor:v32];

    goto LABEL_35;
  }

  v9 = 0;
LABEL_35:

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(TileGroupTileSetsDebugController *)self _tileGroup];
  v4 = [v3 tileSetsCount];

  return v4;
}

- (id)_tileGroup
{
  v3 = [(GEOResourceManifestDownload *)self->_resourceManifest resources];
  if (![v3 tileGroupsCount])
  {
LABEL_12:
    v11 = 0;
    goto LABEL_15;
  }

  if ([(TileGroupTileSetsDebugController *)self tileGroupIdentifier]!= -1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 tileGroups];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 identifier];
          if ([(TileGroupTileSetsDebugController *)self tileGroupIdentifier]== v10)
          {
            v11 = v9;

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v11 = [v3 tileGroupAtIndex:0];
LABEL_15:

  return v11;
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v3 = [(TileGroupTileSetsDebugController *)self tableView];
  [v3 reloadData];
}

@end