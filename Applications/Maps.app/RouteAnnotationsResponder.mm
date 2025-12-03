@interface RouteAnnotationsResponder
+ (id)routeAtPoint:(CGPoint)point inMapView:(id)view withRoutes:(id)routes selectedRoute:(id)route overlappingRouteSelectorBlock:(id)block;
@end

@implementation RouteAnnotationsResponder

+ (id)routeAtPoint:(CGPoint)point inMapView:(id)view withRoutes:(id)routes selectedRoute:(id)route overlappingRouteSelectorBlock:(id)block
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  routesCopy = routes;
  routeCopy = route;
  blockCopy = block;
  [viewCopy convertPoint:viewCopy toCoordinateFromView:{x, y}];
  v14 = MKMapPointForCoordinate(v74);
  v56 = +[NSMapTable strongToStrongObjectsMapTable];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = routesCopy;
  v15 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    v18 = 1.79769313e308;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        [v20 _maps_closestMapPointToMapPoint:{v14.x, v14.y}];
        v21 = MKCoordinateForMapPoint(v75);
        [viewCopy convertCoordinate:viewCopy toPointToView:{v21.latitude, v21.longitude}];
        UIDistanceBetweenPoints();
        v23 = v22;
        v24 = [NSNumber numberWithDouble:?];
        [v56 setObject:v24 forKey:v20];

        v25 = sub_1007D7FB4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          uniqueRouteID = [v20 uniqueRouteID];
          uUIDString = [uniqueRouteID UUIDString];
          *buf = 134349570;
          selfCopy8 = self;
          v68 = 2048;
          v69 = *&v23;
          v70 = 2112;
          v71 = uUIDString;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding minimum distance (%f) for route: %@", buf, 0x20u);
        }

        v18 = fmin(v23, v18);
      }

      v16 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1.79769313e308;
  }

  v28 = sub_1007D7FB4();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy8 = self;
    v68 = 2048;
    v69 = *&v18;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Calculated closest route distance: %f", buf, 0x16u);
  }

  v29 = sub_1007D7FB4();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (v18 > 30.0)
  {
    v32 = blockCopy;
    v31 = routeCopy;
    if (v30)
    {
      *buf = 134349312;
      selfCopy8 = self;
      v68 = 2048;
      v69 = 0x403E000000000000;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}p] Closest route distance was larger than the maximum (%f)", buf, 0x16u);
    }

LABEL_39:
    firstObject = 0;
    goto LABEL_44;
  }

  if (v30)
  {
    *buf = 134349312;
    selfCopy8 = self;
    v68 = 2048;
    v69 = 0x403E000000000000;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}p] Closest route distance was smaller than the maximum (%f)", buf, 0x16u);
  }

  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v33 = v56;
  v34 = [v33 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v58;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v58 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v57 + 1) + 8 * j);
        v39 = [v33 objectForKey:v38];
        [v39 cgFloatValue];
        v41 = v40;

        if (vabdd_f64(v41, v18) < 0.00999999978)
        {
          [v29 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v35);
  }

  v42 = [v29 count];
  v43 = sub_1007D7FB4();
  v44 = v43;
  if (!v42)
  {
    v32 = blockCopy;
    v31 = routeCopy;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      selfCopy8 = self;
      v68 = 2048;
      v69 = 0x3F847AE140000000;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%{public}p] Did not find any routes within %f of the closestRouteDistance", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v32 = blockCopy;
  v31 = routeCopy;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v45 = sub_100021DB0(v29, &stru_10162A6F8);
    *buf = 134349314;
    selfCopy8 = self;
    v68 = 2112;
    v69 = v45;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[%{public}p] Found closest routes: %@", buf, 0x16u);
  }

  if ([v29 count]== 1)
  {
    goto LABEL_43;
  }

  if (!blockCopy)
  {
    v50 = sub_1007D7FB4();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "[%{public}p] overlappingRouteSelectorBlock is nil; cannot differentiate between multiple overlapping routes", buf, 0xCu);
    }

LABEL_43:
    firstObject = [v29 firstObject];
    goto LABEL_44;
  }

  firstObject = (*(blockCopy + 2))(blockCopy, v29, routeCopy);
  v47 = sub_1007D7FB4();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID2 = [firstObject uniqueRouteID];
    uUIDString2 = [uniqueRouteID2 UUIDString];
    *buf = 134349314;
    selfCopy8 = self;
    v68 = 2112;
    v69 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "[%{public}p] Differentiated between multiple overlapping routes: %@", buf, 0x16u);
  }

LABEL_44:

  return firstObject;
}

@end