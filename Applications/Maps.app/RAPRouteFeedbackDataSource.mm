@interface RAPRouteFeedbackDataSource
+ (Class)_cellClassForItemType:(unint64_t)type;
- (NSArray)allItems;
- (NSString)description;
- (RAPRouteFeedbackDataSource)initWithRecording:(id)recording traitCollection:(id)collection delegate:(id)delegate;
- (id)_buildDataSourceForRoute:(id)route displayedStepIndices:(id)indices missedStepIndex:(unint64_t)index includeOrigin:(BOOL)origin includeDestination:(BOOL)destination;
- (id)_buildStepItems;
- (id)_routeForStepItem:(id)item;
- (id)_stepItemForIndexPath:(id)path;
- (id)_userPathForStepItem:(id)item;
- (void)_setNeedsUpdateData;
- (void)_setupRoutes;
- (void)_updateData;
- (void)setTraitCollection:(id)collection;
- (void)setVehicle:(id)vehicle;
@end

@implementation RAPRouteFeedbackDataSource

- (void)_updateData
{
  if (self->_needsUpdateData)
  {
    concatenatedStepItems = self->_concatenatedStepItems;
    self->_concatenatedStepItems = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataSourceDidUpdate:self];

    self->_needsUpdateData = 0;
  }
}

- (void)_setNeedsUpdateData
{
  if (!self->_needsUpdateData)
  {
    self->_needsUpdateData = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100581840;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  userPaths = [(RAPDirectionsRecording *)self->_recording userPaths];
  v5 = userPaths;
  if (userPaths)
  {
    if ([userPaths count])
    {
      v44 = v3;
      selfCopy = self;
      v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v46 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      v10 = *v50;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v49 + 1) + 8 * v11);
          if (v12)
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_13;
            }

            v15 = [v12 performSelector:"accessibilityIdentifier"];
            v16 = v15;
            if (v15 && ![v15 isEqualToString:v14])
            {
              v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];
            }

            else
            {

LABEL_13:
              v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
            }

            goto LABEL_16;
          }

          v17 = @"<nil>";
LABEL_16:

          [v6 addObject:v17];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
        v9 = v18;
        if (!v18)
        {
LABEL_20:

          v19 = [v7 componentsJoinedByString:{@", "}];
          v20 = [NSString stringWithFormat:@"<%p> [%@]", v7, v19];

          v5 = v46;
          self = selfCopy;
          v3 = v44;
          goto LABEL_23;
        }
      }
    }

    v20 = [NSString stringWithFormat:@"<%p> (empty)", v5];
  }

  else
  {
    v20 = @"<nil>";
  }

LABEL_23:

  allItems = [(RAPRouteFeedbackDataSource *)self allItems];
  v22 = allItems;
  if (allItems)
  {
    if ([allItems count])
    {
      v43 = v20;
      v45 = v3;
      v47 = v5;
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v42 = v22;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v25)
      {
        goto LABEL_42;
      }

      v26 = v25;
      v27 = *v50;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v49 + 1) + 8 * v28);
          if (v29)
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_35;
            }

            v32 = [v29 performSelector:"accessibilityIdentifier"];
            v33 = v32;
            if (v32 && ![v32 isEqualToString:v31])
            {
              v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];
            }

            else
            {

LABEL_35:
              v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
            }

            goto LABEL_38;
          }

          v34 = @"<nil>";
LABEL_38:

          [v23 addObject:v34];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v35 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
        v26 = v35;
        if (!v35)
        {
LABEL_42:

          v36 = [v24 componentsJoinedByString:{@", "}];
          v37 = [NSString stringWithFormat:@"<%p> [%@]", v24, v36];

          v5 = v47;
          v3 = v45;
          v22 = v42;
          v20 = v43;
          goto LABEL_45;
        }
      }
    }

    v37 = [NSString stringWithFormat:@"<%p> (empty)", v22];
  }

  else
  {
    v37 = @"<nil>";
  }

LABEL_45:

  vehicle = self->_vehicle;
  traitCollection = [(RAPRouteFeedbackDataSource *)self traitCollection];
  v40 = [NSString stringWithFormat:@"<%@ %p: userPaths='%@', allItems='%@', vehicle: %@, traitCollection: %@>", v3, self, v20, v37, vehicle, traitCollection];

  return v40;
}

- (id)_stepItemForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section != 1)
  {
    if (!section)
    {
      lastObject = [(NSArray *)self->_concatenatedStepItems lastObject];
LABEL_6:
      v8 = lastObject;
      goto LABEL_34;
    }

    v9 = sub_100798874();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v36 = pathCopy;
      v37 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_stepItemForIndexPath: called with invalid section: %lu, dataSource: %@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v7 = [pathCopy row];
  if (v7 < [(NSArray *)self->_concatenatedStepItems count])
  {
    lastObject = -[NSArray objectAtIndexedSubscript:](self->_concatenatedStepItems, "objectAtIndexedSubscript:", [pathCopy row]);
    goto LABEL_6;
  }

  v9 = sub_100798874();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = self->_concatenatedStepItems;
    v11 = v10;
    if (v10)
    {
      if ([(NSArray *)v10 count])
      {
        v29 = v9;
        v30 = pathCopy;
        v12 = [NSMutableArray arrayWithCapacity:[(NSArray *)v11 count]];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v28 = v11;
        v13 = v11;
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:buf count:16];
        if (!v14)
        {
          goto LABEL_29;
        }

        v15 = v14;
        v16 = *v32;
        while (1)
        {
          v17 = 0;
          do
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * v17);
            if (v18)
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_22;
              }

              v21 = [v18 performSelector:"accessibilityIdentifier"];
              v22 = v21;
              if (v21 && ![v21 isEqualToString:v20])
              {
                v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
              }

              else
              {

LABEL_22:
                v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
              }

              goto LABEL_25;
            }

            v23 = @"<nil>";
LABEL_25:

            [v12 addObject:v23];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v24 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:buf count:16];
          v15 = v24;
          if (!v24)
          {
LABEL_29:

            v25 = [(NSArray *)v13 componentsJoinedByString:@", "];
            v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

            v9 = v29;
            pathCopy = v30;
            v11 = v28;
            goto LABEL_32;
          }
        }
      }

      v26 = [NSString stringWithFormat:@"<%p> (empty)", v11];
    }

    else
    {
      v26 = @"<nil>";
    }

LABEL_32:

    *buf = 138412546;
    v36 = pathCopy;
    v37 = 2112;
    selfCopy = v26;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_stepItemForIndexPath: called with invalid indexPath: %@, _concatenatedStepItems: %@", buf, 0x16u);
  }

LABEL_33:

  v8 = 0;
LABEL_34:

  return v8;
}

- (id)_buildStepItems
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_dataSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        items = [*(*(&v16 + 1) + 8 * i) items];
        [v3 addObjectsFromArray:items];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100582338;
  v14[3] = &unk_101622438;
  v15 = v3;
  v10 = v3;
  [v10 enumerateObjectsUsingBlock:v14];
  lastObject = [v10 lastObject];
  [lastObject setShowsHairline:0];

  v12 = [v10 copy];

  return v12;
}

- (void)setVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  vehicle = self->_vehicle;
  v7 = vehicleCopy;
  vehicleCopy2 = vehicle;
  if (v7 | vehicleCopy2)
  {
    v9 = vehicleCopy2;
    v10 = [v7 isEqual:vehicleCopy2];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_vehicle, vehicle);
      dataSources = self->_dataSources;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100582504;
      v12[3] = &unk_101622410;
      v13 = v7;
      [(NSArray *)dataSources enumerateObjectsUsingBlock:v12];
    }
  }
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = self->_traitCollection;
  v7 = collectionCopy;
  v8 = traitCollection;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_traitCollection, collection);
      dataSources = self->_dataSources;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100582600;
      v12[3] = &unk_101622410;
      v13 = v7;
      [(NSArray *)dataSources enumerateObjectsUsingBlock:v12];
    }
  }
}

- (NSArray)allItems
{
  concatenatedStepItems = self->_concatenatedStepItems;
  if (!concatenatedStepItems)
  {
    _buildStepItems = [(RAPRouteFeedbackDataSource *)self _buildStepItems];
    v5 = self->_concatenatedStepItems;
    self->_concatenatedStepItems = _buildStepItems;

    concatenatedStepItems = self->_concatenatedStepItems;
  }

  return concatenatedStepItems;
}

- (id)_routeForStepItem:(id)item
{
  itemCopy = item;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        items = [v10 items];
        v12 = [items countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(items);
              }

              if (*(*(&v18 + 1) + 8 * j) == itemCopy)
              {
                route = [v10 route];

                goto LABEL_20;
              }
            }

            v13 = [items countByEnumeratingWithState:&v18 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v7);
  }

  v5 = sub_100798874();
  if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v27 = itemCopy;
    _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_FAULT, "Failed to find route for stepItem: %@", buf, 0xCu);
  }

  route = 0;
LABEL_20:

  return route;
}

- (id)_userPathForStepItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    step = [v7 step];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_24:
      v13 = sub_100798874();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v33) = 138412290;
        *(&v33 + 4) = itemCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to find a userPath for stepItem: %@", &v33, 0xCu);
      }

      v21 = 0;
      goto LABEL_29;
    }

    v9 = itemCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v7 = v10;

    step = [v7 arrivalStep];
  }

  v11 = step;

  if (!v11)
  {
    goto LABEL_24;
  }

  *&v33 = 0;
  *(&v33 + 1) = &v33;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  dataSources = self->_dataSources;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100582C0C;
  v27[3] = &unk_1016223E8;
  v13 = v11;
  v28 = v13;
  v29 = &v33;
  [(NSArray *)dataSources enumerateObjectsUsingBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  userPaths = [(RAPDirectionsRecording *)self->_recording userPaths];
  v15 = [userPaths countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v15)
  {
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(userPaths);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        routeIndex = [v18 routeIndex];
        if (*(*(&v33 + 1) + 24) == routeIndex)
        {
          stepIndex = [v18 stepIndex];
          if ([v13 stepIndex]== stepIndex)
          {
            v21 = v18;
            goto LABEL_28;
          }
        }
      }

      v15 = [userPaths countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  userPaths = sub_100798874();
  if (os_log_type_enabled(userPaths, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v31 = itemCopy;
    _os_log_impl(&_mh_execute_header, userPaths, OS_LOG_TYPE_FAULT, "Failed to find selected userPath for stepItem: %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_28:

  _Block_object_dispose(&v33, 8);
LABEL_29:

  return v21;
}

- (id)_buildDataSourceForRoute:(id)route displayedStepIndices:(id)indices missedStepIndex:(unint64_t)index includeOrigin:(BOOL)origin includeDestination:(BOOL)destination
{
  routeCopy = route;
  if (route)
  {
    v10 = 66;
    if (origin)
    {
      v10 = 67;
    }

    if (destination)
    {
      v11 = v10 | 4;
    }

    else
    {
      v11 = v10;
    }

    indicesCopy = indices;
    v13 = routeCopy;
    v14 = [RouteStepListDataSource alloc];
    traitCollection = [(RAPRouteFeedbackDataSource *)self traitCollection];
    v16 = +[RouteStepListMetrics rapMetrics];
    routeCopy = [(RouteStepListDataSource *)v14 initWithTraitCollection:traitCollection options:v11 metrics:v16 context:2];

    traitCollection2 = [(RAPRouteFeedbackDataSource *)self traitCollection];
    [(RouteStepListDataSource *)routeCopy setTraitCollection:traitCollection2];

    [(RouteStepListDataSource *)routeCopy setRoute:v13];
    [(RouteStepListDataSource *)routeCopy setAllowedStepIndices:indicesCopy];

    [(RouteStepListDataSource *)routeCopy setMissedStepIndex:index];
    vehicle = [(RAPRouteFeedbackDataSource *)self vehicle];
    [(RouteStepListDataSource *)routeCopy setVehicle:vehicle];

    [(RouteStepListDataSource *)routeCopy setDelegate:self];
  }

  return routeCopy;
}

- (void)_setupRoutes
{
  recording = self->_recording;
  if (recording)
  {
    userPaths = [(RAPDirectionsRecording *)recording userPaths];

    if (userPaths)
    {
      v5 = objc_opt_new();
      v6 = objc_opt_new();
      v7 = +[NSMapTable strongToStrongObjectsMapTable];
      v8 = +[NSMapTable strongToStrongObjectsMapTable];
      userPaths2 = [(RAPDirectionsRecording *)self->_recording userPaths];
      v10 = [userPaths2 sortedArrayUsingComparator:&stru_101622350];

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1005831F4;
      v35[3] = &unk_101622378;
      v11 = v6;
      v36 = v11;
      selfCopy = self;
      v12 = v7;
      v38 = v12;
      v13 = v8;
      v39 = v13;
      [v10 enumerateObjectsUsingBlock:v35];
      allKeys = [v11 allKeys];
      v15 = [allKeys sortedArrayUsingComparator:&stru_101622398];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1005836D0;
      v28[3] = &unk_1016223C0;
      v29 = v11;
      v30 = v12;
      v31 = v13;
      selfCopy2 = self;
      v33 = v15;
      v34 = v5;
      v16 = v5;
      v17 = v15;
      v18 = v13;
      v19 = v12;
      v20 = v11;
      [v17 enumerateObjectsUsingBlock:v28];
      v21 = [v16 copy];
      dataSources = self->_dataSources;
      self->_dataSources = v21;
    }

    else
    {
      v10 = sub_1007A6D7C(self->_recording, 0);
      if (v10)
      {
        v23 = [(RAPRouteFeedbackDataSource *)self _buildDataSourceForRoute:v10 displayedStepIndices:0 missedStepIndex:0x7FFFFFFFFFFFFFFFLL includeOrigin:1 includeDestination:1];
        v24 = v23;
        if (v23)
        {
          v40 = v23;
          v25 = [NSArray arrayWithObjects:&v40 count:1];
          p_super = &self->_dataSources->super;
          self->_dataSources = v25;
        }

        else
        {
          p_super = sub_100798874();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v10;
            _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "Failed to create a dataSource for route: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v24 = sub_100798874();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v27 = self->_recording;
          *buf = 138412290;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to create a route from recording: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v10 = sub_100798874();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Cannot setup content without a recording", buf, 2u);
    }
  }
}

- (RAPRouteFeedbackDataSource)initWithRecording:(id)recording traitCollection:(id)collection delegate:(id)delegate
{
  recordingCopy = recording;
  collectionCopy = collection;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = RAPRouteFeedbackDataSource;
  v12 = [(RAPRouteFeedbackDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_recording, recording);
    objc_storeStrong(&v13->_traitCollection, collection);
    v14 = [MKMapItem alloc];
    endWaypoint = [(RAPDirectionsRecording *)v13->_recording endWaypoint];
    placeMapItemStorage = [endWaypoint placeMapItemStorage];
    v17 = [v14 initWithGeoMapItem:placeMapItemStorage isPlaceHolderPlace:0];
    [(RAPRouteFeedbackDataSource *)v13 setEndWaypointMapItem:v17];

    [(RAPRouteFeedbackDataSource *)v13 _setupRoutes];
  }

  return v13;
}

+ (Class)_cellClassForItemType:(unint64_t)type
{
  if (type > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end