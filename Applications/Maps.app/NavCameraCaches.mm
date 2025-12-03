@interface NavCameraCaches
+ (id)cachesWithRoute:(id)route context:(id)context;
- (NavCameraCaches)init;
- (void)_calculateRoadTileGroupedManeuversWithUpdateHandler:(id)handler;
- (void)_calculateRouteGroupedManeuvers;
- (void)_roadForCoordinate:(id)coordinate course:(double)course handler:(id)handler;
- (void)_updateGroupedManeuverCounts;
- (void)recalculateGroupedManeuversCaches;
@end

@implementation NavCameraCaches

- (void)_roadForCoordinate:(id)coordinate course:(double)course handler:(id)handler
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  handlerCopy = handler;
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
  courseCopy = course;
  v15 = v19;
  v11 = handlerCopy;
  v14 = v11;
  v12 = [(GEOMapFeatureAccess *)mapFeatureAccess findRoadsNear:v13 radius:0 handler:var0 completionHandler:var1, 50.0];

  _Block_object_dispose(v19, 8);
}

- (void)_calculateRoadTileGroupedManeuversWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  currentRoute = [(NavCameraCaches *)self currentRoute];
  stepsCount = [currentRoute stepsCount];

  v7 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F70 withCapacity:stepsCount];
  v8 = [v7 mutableCopy];

  currentRoute2 = [(NavCameraCaches *)self currentRoute];
  steps = [currentRoute2 steps];

  GEOConfigGetDouble();
  v12 = v11;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = steps;
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
        stepIndex = [v17 stepIndex];
        v19 = [v8 objectAtIndexedSubscript:stepIndex];
        integerValue = [v19 integerValue];

        if ((integerValue & 0x8000000000000000) != 0)
        {
          [v17 distance];
          if (v22 > v12)
          {
            [v8 setObject:&off_1016E7F58 atIndexedSubscript:stepIndex];
            handlerCopy[2](handlerCopy);
          }

          currentRoute3 = [(NavCameraCaches *)self currentRoute];
          [currentRoute3 pointAtRouteCoordinate:{objc_msgSend(v17, "endRouteCoordinate")}];
          v25 = v24;
          v27 = v26;

          currentRoute4 = [(NavCameraCaches *)self currentRoute];
          [currentRoute4 courseAtRouteCoordinateIndex:{objc_msgSend(v17, "endRouteCoordinate")}];
          v30 = v29;

          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1009EB480;
          v32[3] = &unk_1016317F8;
          v32[4] = self;
          v35 = stepIndex;
          v33 = v8;
          v34 = handlerCopy;
          [(NavCameraCaches *)self _roadForCoordinate:v32 course:v25 handler:v27, v30];
        }

        else
        {
          v21 = [(NSArray *)self->_stepsWithRampCache objectAtIndexedSubscript:stepIndex];
          [v8 setObject:v21 atIndexedSubscript:stepIndex];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }
}

- (void)_calculateRouteGroupedManeuvers
{
  currentRoute = [(NavCameraCaches *)self currentRoute];
  stepsCount = [currentRoute stepsCount];

  GEOConfigGetDouble();
  v7 = v6;
  GEOConfigGetDouble();
  v9 = v8;
  GEOConfigGetDouble();
  v11 = v10;
  v12 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  v48 = [v12 mutableCopy];

  v13 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  v47 = [v13 mutableCopy];

  v14 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  v46 = [v14 mutableCopy];

  selfCopy = self;
  currentRoute2 = [(NavCameraCaches *)self currentRoute];
  steps = [currentRoute2 steps];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = steps;
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
        stepIndex = [v22 stepIndex];
        [v22 distance];
        if (v24 > 0.0)
        {
          [v22 distance];
          if (v25 <= v7)
          {
            [v48 setObject:v20 atIndexedSubscript:stepIndex];
          }
        }

        [v22 distance];
        if (v26 > 0.0)
        {
          [v22 distance];
          if (v27 <= v9)
          {
            [v47 setObject:v20 atIndexedSubscript:stepIndex];
          }
        }

        geoStep = [v22 geoStep];
        maneuverType = [geoStep maneuverType];
        if (maneuverType < 41 || ([v22 geoStep], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "maneuverType") >= 60))
        {
          geoStep2 = [v22 geoStep];
          if ([geoStep2 maneuverType] == 6)
          {
            [v22 distance];
            if (v34 <= 0.0)
            {

              if (maneuverType > 40)
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
            geoStep3 = [v22 geoStep];
            if ([geoStep3 maneuverType] != 7)
            {

              if (maneuverType > 40)
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

          if (maneuverType <= 40)
          {

            if (!v36)
            {
              goto LABEL_36;
            }

LABEL_35:
            [v46 setObject:v20 atIndexedSubscript:stepIndex];
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
  [(NavCameraCaches *)selfCopy setStepsWithCloseDistanceCache:v42];

  v43 = [v47 copy];
  [(NavCameraCaches *)selfCopy setStepsWithNearDistanceCache:v43];

  v44 = [v46 copy];
  [(NavCameraCaches *)selfCopy setStepsWithRoundaboutCache:v44];
}

- (void)_updateGroupedManeuverCounts
{
  currentRoute = [(NavCameraCaches *)self currentRoute];
  stepsCount = [currentRoute stepsCount];

  v5 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  v6 = [v5 mutableCopy];

  stepsWithCloseDistanceCache = [(NavCameraCaches *)self stepsWithCloseDistanceCache];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1009EBC8C;
  v32[3] = &unk_101652D90;
  v8 = v6;
  v33 = v8;
  [stepsWithCloseDistanceCache enumerateObjectsUsingBlock:v32];

  stepsWithRoundaboutCache = [(NavCameraCaches *)self stepsWithRoundaboutCache];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1009EBCEC;
  v30[3] = &unk_101652D90;
  v10 = v8;
  v31 = v10;
  [stepsWithRoundaboutCache enumerateObjectsUsingBlock:v30];

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
  groupedManeuverCounts = [(NavCameraCaches *)self groupedManeuverCounts];
  navContex = [(NavCameraCaches *)self navContex];
  [navContex setGroupedManeuverCounts:groupedManeuverCounts];
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

+ (id)cachesWithRoute:(id)route context:(id)context
{
  contextCopy = context;
  routeCopy = route;
  v7 = objc_alloc_init(NavCameraCaches);
  [(NavCameraCaches *)v7 setCurrentRoute:routeCopy];

  [(NavCameraCaches *)v7 setNavContex:contextCopy];
  currentRoute = [(NavCameraCaches *)v7 currentRoute];
  stepsCount = [currentRoute stepsCount];

  v10 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  [(NavCameraCaches *)v7 setStepsWithCloseDistanceCache:v10];

  v11 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  [(NavCameraCaches *)v7 setStepsWithNearDistanceCache:v11];

  v12 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F58 withCapacity:stepsCount];
  [(NavCameraCaches *)v7 setStepsWithRoundaboutCache:v12];

  v13 = [NSArray _navigation_newArrayWithDefaultValue:&off_1016E7F70 withCapacity:stepsCount];
  [(NavCameraCaches *)v7 setStepsWithRampCache:v13];

  [(NavCameraCaches *)v7 recalculateGroupedManeuversCaches];

  return v7;
}

@end