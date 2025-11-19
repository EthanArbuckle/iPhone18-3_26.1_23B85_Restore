@interface MKRoute
- (MKDirectionsTransportType)transportType;
- (NSArray)advisoryNotices;
- (id)_initWithGEOComposedRoute:(id)a3;
@end

@implementation MKRoute

- (NSArray)advisoryNotices
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(GEOComposedRoute *)self->_geoComposedRoute advisories];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 advisoryItems];
        v11 = [v10 count];

        if (v11)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [v9 advisoryItems];
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v19 + 1) + 8 * j) subtitleString];
                __26__MKRoute_advisoryNotices__block_invoke(v17, v3);
              }

              v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }
        }

        else
        {
          v12 = [v9 titleString];
          __26__MKRoute_advisoryNotices__block_invoke(v12, v3);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return v3;
}

void __26__MKRoute_advisoryNotices__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringWithDefaultOptions];
  if (v4)
  {
    [v3 addObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: evaluatedString != ((void *)0)", v5, 2u);
  }
}

- (MKDirectionsTransportType)transportType
{
  if ([(GEOComposedRoute *)self->_geoComposedRoute transportType]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_initWithGEOComposedRoute:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v65.receiver = self;
  v65.super_class = MKRoute;
  v6 = [(MKRoute *)&v65 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoComposedRoute, a3);
    if ([v5 elevationModel] || !GEOConfigGetBOOL())
    {
      v11 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E69A2478] modernManager];
      v9 = [v8 activeTileGroup];
      v10 = [v9 activeTileSetForTileType:92 scale:1];
      v11 = v10 != 0;
    }

    v12 = [(GEOComposedRoute *)v7->_geoComposedRoute pointCount];
    if (v12)
    {
      v13 = v12;
      v14 = malloc_type_malloc(16 * v12, 0x1000040451B5BE8uLL);
      if (v14)
      {
        v15 = v14;
        v16 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = v15 + 1;
          do
          {
            [(GEOComposedRoute *)v7->_geoComposedRoute pointAt:v18];
            *(v19 - 1) = v20;
            *v19 = v21;
            v17[v18++] = v22;
            v19 += 2;
          }

          while (v13 != v18);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __37__MKRoute__initWithGEOComposedRoute___block_invoke_2;
          v64[3] = &__block_descriptor_48_e5_v8__0l;
          v64[4] = v15;
          v64[5] = v17;
          v53 = MEMORY[0x1A58E9F30](v64);
          v23 = [(MKPolyline *)MKRoutePolyline polylineWithCoordinates:v15 elevations:v17 count:v13 elevationCorrection:v11];
          polyline = v7->_polyline;
          v7->_polyline = v23;

          v25 = [(MKRoute *)v7 name];
          [(MKShape *)v7->_polyline setTitle:v25];

          v54 = v5;
          -[MKRoutePolyline _setRequiresModernMap:](v7->_polyline, "_setRequiresModernMap:", [v5 transportType] != 0);
          v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[GEOComposedRoute stepsCount](v7->_geoComposedRoute, "stepsCount")}];
          v26 = [(GEOComposedRoute *)v7->_geoComposedRoute stepsCount];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          obj = [(GEOComposedRoute *)v7->_geoComposedRoute steps];
          v57 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
          if (v57)
          {
            v27 = 0;
            v58 = *v61;
            v28 = 1;
            v56 = v26;
            while (2)
            {
              v29 = 0;
              v30 = v27;
              do
              {
                if (*v61 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v60 + 1) + 8 * v29);
                [v31 endRouteCoordinate];
                v32 = GEOPolylineCoordinateNearestIndex();
                if (v32 < v30 || (v27 = v32, [(MKRoutePolyline *)v7->_polyline _stepWithRange:v30, v32 - v30 + 1], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
                {
                  v52 = v53;
                  v53[2](v53);
LABEL_36:

                  v50 = 0;
                  v5 = v54;
                  goto LABEL_33;
                }

                v34 = v33;
                v35 = MEMORY[0x1E696AEC0];
                v36 = _MKLocalizedStringFromThisBundle(@"Step %d of %d");
                v37 = [v35 stringWithFormat:v36, v28, v56];
                [v34 setTitle:v37];

                v38 = [v31 geoStep];
                v39 = [v38 instructionSet];
                v40 = [v39 genericInstruction];
                v41 = [v40 maneuver];

                [v34 setSubtitle:v41];
                if ([(GEOComposedRoute *)v7->_geoComposedRoute transportType]== 2)
                {
                  v42 = 2;
                }

                else
                {
                  v42 = 1;
                }

                v43 = [v31 geoStep];
                v44 = [v43 hasOverrideTransportType];

                if (v44)
                {
                  v45 = [v31 geoStep];
                  if ([v45 overrideTransportType] == 2)
                  {
                    v42 = 2;
                  }

                  else
                  {
                    v42 = 1;
                  }
                }

                v46 = [[MKRouteStep alloc] _initWithGEOComposedRouteStep:v31 instructions:v41 transportType:v42 polyline:v34];
                if (!v46)
                {
                  v52 = v53;
                  v53[2](v53);

                  goto LABEL_36;
                }

                v47 = v46;
                [(NSArray *)v59 addObject:v46];
                v28 = (v28 + 1);

                ++v29;
                v30 = v27;
              }

              while (v57 != v29);
              v57 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          steps = v7->_steps;
          v7->_steps = v59;
          v49 = v59;

          [(GEOComposedRoute *)v7->_geoComposedRoute clearPoints];
          v53[2](v53);

          v5 = v54;
          goto LABEL_30;
        }

        free(v15);
      }
    }

    v50 = 0;
    goto LABEL_33;
  }

LABEL_30:
  v50 = v7;
LABEL_33:

  return v50;
}

void __37__MKRoute__initWithGEOComposedRoute___block_invoke_2(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

@end