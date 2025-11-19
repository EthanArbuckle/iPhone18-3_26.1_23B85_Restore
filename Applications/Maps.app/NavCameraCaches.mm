@interface NavCameraCaches
+ (id)cachesWithRoute:(id)a3 context:(id)a4;
- (NavCameraCaches)init;
- (void)_calculateRoadTileGroupedManeuversWithUpdateHandler:(id)a3;
- (void)_calculateRouteGroupedManeuvers;
- (void)_roadForCoordinate:(id)a3 course:(double)a4 handler:(id)a5;
- (void)_updateGroupedManeuverCounts;
- (void)recalculateGroupedManeuversCaches;
@end

@implementation NavCameraCaches

- (void)_roadForCoordinate:(id)a3 course:(double)a4 handler:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a5;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0x4039000000000000;
  mapFeatureAccess = self->_mapFeatureAccess;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1009EB004;
  v13[3] = &unk_101631820;
  v16 = var0;
  v17 = var1;
  v18 = a4;
  v15 = v19;
  v11 = v9;
  v14 = v11;
  v12 = [(GEOMapFeatureAccess *)mapFeatureAccess findRoadsNear:v13 radius:0 handler:var0 completionHandler:var1, 50.0];

  _Block_object_dispose(v19, 8);
}

- (void)_calculateRoadTileGroupedManeuversWithUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(NavCameraCaches *)self currentRoute];
  v6 = [v5 stepsCount];

  v7 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F70 withCapacity:v6];
  v8 = [v7 mutableCopy];

  v9 = [(NavCameraCaches *)self currentRoute];
  v10 = [v9 steps];

  GEOConfigGetDouble();
  v12 = v11;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [v17 stepIndex];
        v19 = [v8 objectAtIndexedSubscript:v18];
        v20 = [v19 integerValue];

        if ((v20 & 0x8000000000000000) != 0)
        {
          [v17 distance];
          if (v22 > v12)
          {
            [v8 setObject:&off_1016E7F58 atIndexedSubscript:v18];
            v4[2](v4);
          }

          v23 = [(NavCameraCaches *)self currentRoute];
          [v23 pointAtRouteCoordinate:{objc_msgSend(v17, "endRouteCoordinate")}];
          v25 = v24;
          v27 = v26;

          v28 = [(NavCameraCaches *)self currentRoute];
          [v28 courseAtRouteCoordinateIndex:{objc_msgSend(v17, "endRouteCoordinate")}];
          v30 = v29;

          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1009EB480;
          v32[3] = &unk_1016317F8;
          v32[4] = self;
          v35 = v18;
          v33 = v8;
          v34 = v4;
          [(NavCameraCaches *)self _roadForCoordinate:v32 course:v25 handler:v27, v30];
        }

        else
        {
          v21 = [(NSArray *)self->_stepsWithRampCache objectAtIndexedSubscript:v18];
          [v8 setObject:v21 atIndexedSubscript:v18];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }
}

- (void)_calculateRouteGroupedManeuvers
{
  v4 = [(NavCameraCaches *)self currentRoute];
  v5 = [v4 stepsCount];

  GEOConfigGetDouble();
  v7 = v6;
  GEOConfigGetDouble();
  v9 = v8;
  GEOConfigGetDouble();
  v11 = v10;
  v12 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v5];
  v48 = [v12 mutableCopy];

  v13 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v5];
  v47 = [v13 mutableCopy];

  v14 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v5];
  v46 = [v14 mutableCopy];

  v45 = self;
  v15 = [(NavCameraCaches *)self currentRoute];
  v16 = [v15 steps];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v52;
    v20 = &off_1016E7F88;
    do
    {
      v21 = 0;
      v49 = v18;
      do
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v51 + 1) + 8 * v21);
        v23 = [v22 stepIndex];
        [v22 distance];
        if (v24 > 0.0)
        {
          [v22 distance];
          if (v25 <= v7)
          {
            [v48 setObject:v20 atIndexedSubscript:v23];
          }
        }

        [v22 distance];
        if (v26 > 0.0)
        {
          [v22 distance];
          if (v27 <= v9)
          {
            [v47 setObject:v20 atIndexedSubscript:v23];
          }
        }

        v28 = [v22 geoStep];
        v29 = [v28 maneuverType];
        if (v29 < 41 || ([v22 geoStep], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "maneuverType") >= 60))
        {
          v33 = [v22 geoStep];
          if ([v33 maneuverType] == 6)
          {
            [v22 distance];
            if (v34 <= 0.0)
            {

              if (v29 > 40)
              {
LABEL_24:
              }

              goto LABEL_36;
            }

            [v22 distance];
            v36 = v35 <= v11;
          }

          else
          {
            v37 = v19;
            v38 = v20;
            v39 = [v22 geoStep];
            if ([v39 maneuverType] != 7)
            {

              if (v29 > 40)
              {
              }

              v20 = v38;
              v19 = v37;
              v18 = v49;
              goto LABEL_36;
            }

            [v22 distance];
            if (v40 <= 0.0)
            {
              v36 = 0;
            }

            else
            {
              [v22 distance];
              v36 = v41 <= v11;
            }

            v20 = v38;
            v19 = v37;
            v18 = v49;
          }

          if (v29 <= 40)
          {

            if (!v36)
            {
              goto LABEL_36;
            }

LABEL_35:
            [v46 setObject:v20 atIndexedSubscript:v23];
            goto LABEL_36;
          }

          if (v36)
          {
            goto LABEL_35;
          }
        }

        else
        {
          [v22 distance];
          if (v30 <= 0.0)
          {
            goto LABEL_24;
          }

          [v22 distance];
          v32 = v31;

          if (v32 <= v11)
          {
            goto LABEL_35;
          }
        }

LABEL_36:
        v21 = v21 + 1;
      }

      while (v18 != v21);
      v18 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v18);
  }

  v42 = [v48 copy];
  [(NavCameraCaches *)v45 setStepsWithCloseDistanceCache:v42];

  v43 = [v47 copy];
  [(NavCameraCaches *)v45 setStepsWithNearDistanceCache:v43];

  v44 = [v46 copy];
  [(NavCameraCaches *)v45 setStepsWithRoundaboutCache:v44];
}

- (void)_updateGroupedManeuverCounts
{
  v3 = [(NavCameraCaches *)self currentRoute];
  v4 = [v3 stepsCount];

  v5 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v4];
  v6 = [v5 mutableCopy];

  v7 = [(NavCameraCaches *)self stepsWithCloseDistanceCache];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1009EBC8C;
  v32[3] = &unk_101652D90;
  v8 = v6;
  v33 = v8;
  [v7 enumerateObjectsUsingBlock:v32];

  v9 = [(NavCameraCaches *)self stepsWithRoundaboutCache];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1009EBCEC;
  v30[3] = &unk_101652D90;
  v10 = v8;
  v31 = v10;
  [v9 enumerateObjectsUsingBlock:v30];

  stepsWithRampCache = self->_stepsWithRampCache;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1009EBD4C;
  v28[3] = &unk_101652D90;
  v12 = v10;
  v29 = v12;
  [(NSArray *)stepsWithRampCache enumerateObjectsUsingBlock:v28];
  stepsWithNearDistanceCache = self->_stepsWithNearDistanceCache;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1009EBDAC;
  v26 = &unk_101652D90;
  v14 = v12;
  v27 = v14;
  [(NSArray *)stepsWithNearDistanceCache enumerateObjectsUsingBlock:&v23];
  if ([v14 count])
  {
    v15 = [v14 count];
    if (v15)
    {
      v16 = 0;
      v17 = v15 - 1;
      do
      {
        v18 = [v14 objectAtIndexedSubscript:v17];
        if ([v18 unsignedIntegerValue])
        {
          v19 = [NSNumber numberWithUnsignedInteger:++v16];
        }

        else
        {
          if (v16)
          {
            v20 = v16 + 1;
          }

          else
          {
            v20 = 0;
          }

          v19 = [NSNumber numberWithUnsignedInteger:v20];
          v16 = 0;
        }

        [v14 setObject:v19 atIndexedSubscript:v17];

        --v17;
      }

      while (v17 != -1);
    }
  }

  [(NavCameraCaches *)self setGroupedManeuverCounts:v14];
  v21 = [(NavCameraCaches *)self groupedManeuverCounts];
  v22 = [(NavCameraCaches *)self navContex];
  [v22 setGroupedManeuverCounts:v21];
}

- (void)recalculateGroupedManeuversCaches
{
  [(NavCameraCaches *)self _calculateRouteGroupedManeuvers];
  [(NavCameraCaches *)self _updateGroupedManeuverCounts];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1009EBE94;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(NavCameraCaches *)self _calculateRoadTileGroupedManeuversWithUpdateHandler:v3];
}

- (NavCameraCaches)init
{
  v7.receiver = self;
  v7.super_class = NavCameraCaches;
  v2 = [(NavCameraCaches *)&v7 init];
  if (v2)
  {
    v3 = [[GEOMapFeatureAccess alloc] initWithQueue:&_dispatch_main_q];
    mapFeatureAccess = v2->_mapFeatureAccess;
    v2->_mapFeatureAccess = v3;

    [(GEOMapFeatureAccess *)v2->_mapFeatureAccess setAllowNetworkTileLoad:1];
    v5 = v2;
  }

  return v2;
}

+ (id)cachesWithRoute:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NavCameraCaches);
  [(NavCameraCaches *)v7 setCurrentRoute:v6];

  [(NavCameraCaches *)v7 setNavContex:v5];
  v8 = [(NavCameraCaches *)v7 currentRoute];
  v9 = [v8 stepsCount];

  v10 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v9];
  [(NavCameraCaches *)v7 setStepsWithCloseDistanceCache:v10];

  v11 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v9];
  [(NavCameraCaches *)v7 setStepsWithNearDistanceCache:v11];

  v12 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:v9];
  [(NavCameraCaches *)v7 setStepsWithRoundaboutCache:v12];

  v13 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F70 withCapacity:v9];
  [(NavCameraCaches *)v7 setStepsWithRampCache:v13];

  [(NavCameraCaches *)v7 recalculateGroupedManeuversCaches];

  return v7;
}

@end