@interface RouteCollection
- (BOOL)isEqual:(id)equal;
- (GEOComposedRoute)currentRoute;
- (NSArray)alternateRoutes;
- (NSArray)uniqueRouteIDs;
- (NSString)shortDescription;
- (RouteCollection)initWithRoutes:(id)routes currentRouteIndex:(unint64_t)index;
- (id)description;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectForKey:(id)key;
- (id)routeCollectionByChangingCurrentRouteIndex:(unint64_t)index;
- (id)routeCollectionByReplacingAlternateComposedRoutes:(id)routes withTraffics:(id)traffics;
- (id)routeCollectionByReplacingAlternateRoutes:(id)routes;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)fastestRouteIndex;
- (unint64_t)hash;
- (unint64_t)indexForUniqueRouteID:(id)d;
- (unint64_t)indexOfRoute:(id)route;
- (unint64_t)shortestRouteIndex;
- (void)dealloc;
- (void)enumerateRoutesUsingBlock:(id)block;
@end

@implementation RouteCollection

- (GEOComposedRoute)currentRoute
{
  routes = [(RouteCollection *)self routes];
  v4 = [routes objectAtIndexedSubscript:{-[RouteCollection currentRouteIndex](self, "currentRouteIndex")}];

  return v4;
}

- (unint64_t)hash
{
  routes = [(RouteCollection *)self routes];
  v4 = [routes hash];
  v5 = [NSNumber numberWithUnsignedInteger:[(RouteCollection *)self currentRouteIndex]];
  v6 = v4 ^ ([v5 hash] << 8);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    currentRouteIndex = [(RouteCollection *)v6 currentRouteIndex];
    if (currentRouteIndex == [(RouteCollection *)self currentRouteIndex])
    {
      routes = [(RouteCollection *)v6 routes];
      routes2 = [(RouteCollection *)self routes];
      v10 = [routes isEqual:routes2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)uniqueRouteIDs
{
  routes = [(RouteCollection *)self routes];
  v3 = sub_100021DB0(routes, &stru_101636C70);

  return v3;
}

- (unint64_t)indexOfRoute:(id)route
{
  routeCopy = route;
  routes = [(RouteCollection *)self routes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AAB960;
  v9[3] = &unk_10163B1E8;
  v10 = routeCopy;
  v6 = routeCopy;
  v7 = [routes indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)indexForUniqueRouteID:(id)d
{
  dCopy = d;
  routes = [(RouteCollection *)self routes];
  v6 = [routes count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      routes2 = [(RouteCollection *)self routes];
      v9 = [routes2 objectAtIndexedSubscript:v7];

      uniqueRouteID = [v9 uniqueRouteID];
      v11 = [uniqueRouteID isEqual:dCopy];

      if (v11)
      {
        break;
      }

      ++v7;
      routes3 = [(RouteCollection *)self routes];
      v13 = [routes3 count];

      if (v7 >= v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (NSArray)alternateRoutes
{
  alternateRoutes = self->_alternateRoutes;
  if (!alternateRoutes)
  {
    routes = [(RouteCollection *)self routes];
    v5 = [routes mutableCopy];

    [(NSArray *)v5 removeObjectAtIndex:[(RouteCollection *)self currentRouteIndex]];
    v6 = self->_alternateRoutes;
    self->_alternateRoutes = v5;

    alternateRoutes = self->_alternateRoutes;
  }

  return alternateRoutes;
}

- (unint64_t)count
{
  routes = [(RouteCollection *)self routes];
  v3 = [routes count];

  return v3;
}

- (id)routeCollectionByReplacingAlternateComposedRoutes:(id)routes withTraffics:(id)traffics
{
  routesCopy = routes;
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  currentRoute = [(RouteCollection *)self currentRoute];
  [v6 addObject:currentRoute];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = routesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        uniqueRouteID = [v13 uniqueRouteID];
        v15 = [(RouteCollection *)self objectForKeyedSubscript:uniqueRouteID];

        if (!v15)
        {
          v15 = v13;
        }

        [v6 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [objc_alloc(objc_opt_class()) initWithRoutes:v6 currentRouteIndex:0];

  return v16;
}

- (id)routeCollectionByReplacingAlternateRoutes:(id)routes
{
  routesCopy = routes;
  v5 = [[NSMutableArray alloc] initWithCapacity:3];
  currentRoute = [(RouteCollection *)self currentRoute];
  [v5 addObject:currentRoute];

  [v5 addObjectsFromArray:routesCopy];
  v7 = [objc_alloc(objc_opt_class()) initWithRoutes:v5 currentRouteIndex:0];

  return v7;
}

- (id)routeCollectionByChangingCurrentRouteIndex:(unint64_t)index
{
  v5 = objc_alloc(objc_opt_class());
  routes = [(RouteCollection *)self routes];
  v7 = [v5 initWithRoutes:routes currentRouteIndex:index];

  return v7;
}

- (NSString)shortDescription
{
  v3 = objc_opt_class();
  currentRouteIndex = [(RouteCollection *)self currentRouteIndex];
  routes = [(RouteCollection *)self routes];
  v6 = [NSString stringWithFormat:@"<%@: %p currentRouteIndex=%lu routes=%@>", v3, self, currentRouteIndex, routes];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  currentRouteIndex = [(RouteCollection *)self currentRouteIndex];
  routes = [(RouteCollection *)self routes];
  v6 = [NSString stringWithFormat:@"<%@: %p currentRouteIndex=%lu routes=%@>", v3, self, currentRouteIndex, routes];

  return v6;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  routes = [(RouteCollection *)self routes];
  v4 = [routes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(routes);
        }

        [*(*(&v9 + 1) + 8 * v7) _maps_routeCollectionOnly_Clear];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [routes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = RouteCollection;
  [(RouteCollection *)&v8 dealloc];
}

- (unint64_t)fastestRouteIndex
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0x7FEFFFFFFFFFFFFFLL;
  routes = [(RouteCollection *)self routes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AAC148;
  v5[3] = &unk_101636C50;
  v5[4] = v6;
  v5[5] = &v7;
  [routes enumerateObjectsUsingBlock:v5];

  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (unint64_t)shortestRouteIndex
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0x7FEFFFFFFFFFFFFFLL;
  routes = [(RouteCollection *)self routes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AAC2D0;
  v5[3] = &unk_101636C50;
  v5[4] = v6;
  v5[5] = &v7;
  [routes enumerateObjectsUsingBlock:v5];

  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (RouteCollection)initWithRoutes:(id)routes currentRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v7 = routesCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL || [routesCopy count] <= index)
  {
    [NSException raise:NSInvalidArgumentException format:@"currentRouteIndex is out of bounds"];
    selfCopy = 0;
  }

  else
  {
    v36.receiver = self;
    v36.super_class = RouteCollection;
    v8 = [(RouteCollection *)&v36 init];
    if (v8)
    {
      v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v10 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      indexCopy = index;
      v11 = [v7 objectAtIndexedSubscript:index];
      uniqueRouteID = [v11 uniqueRouteID];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = v7;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v32 + 1) + 8 * i);
            uniqueRouteID2 = [v17 uniqueRouteID];
            v19 = [v10 containsObject:uniqueRouteID2];

            if ((v19 & 1) == 0)
            {
              [v9 addObject:v17];
              [v17 _maps_routeCollectionOnly_setRouteCollectionWhenNil:v8];
              uniqueRouteID3 = [v17 uniqueRouteID];
              [v10 addObject:uniqueRouteID3];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v14);
      }

      v21 = [v9 copy];
      routes = v8->_routes;
      v8->_routes = v21;

      v23 = indexCopy;
      v24 = [(NSArray *)v8->_routes objectAtIndexedSubscript:indexCopy];
      v25 = [uniqueRouteID isEqual:v24];

      if ((v25 & 1) == 0)
      {
        v26 = [(RouteCollection *)v8 indexForUniqueRouteID:uniqueRouteID];
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }
      }

      v8->_currentRouteIndex = v23;

      v7 = v31;
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  routes = [(RouteCollection *)self routes];
  v9 = [routes countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)enumerateRoutesUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  routes = [(RouteCollection *)self routes];
  v6 = [routes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(routes);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      blockCopy[2](blockCopy, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [routes countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  routes = [(RouteCollection *)self routes];
  v5 = [routes objectAtIndexedSubscript:index];

  return v5;
}

- (id)objectForKey:(id)key
{
  v4 = [(RouteCollection *)self indexForUniqueRouteID:key];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(RouteCollection *)self objectAtIndexedSubscript:v4];
  }

  return v5;
}

@end