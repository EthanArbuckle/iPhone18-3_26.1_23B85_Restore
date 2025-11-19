@interface RouteCollection
- (BOOL)isEqual:(id)a3;
- (GEOComposedRoute)currentRoute;
- (NSArray)alternateRoutes;
- (NSArray)uniqueRouteIDs;
- (NSString)shortDescription;
- (RouteCollection)initWithRoutes:(id)a3 currentRouteIndex:(unint64_t)a4;
- (id)description;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)routeCollectionByChangingCurrentRouteIndex:(unint64_t)a3;
- (id)routeCollectionByReplacingAlternateComposedRoutes:(id)a3 withTraffics:(id)a4;
- (id)routeCollectionByReplacingAlternateRoutes:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)fastestRouteIndex;
- (unint64_t)hash;
- (unint64_t)indexForUniqueRouteID:(id)a3;
- (unint64_t)indexOfRoute:(id)a3;
- (unint64_t)shortestRouteIndex;
- (void)dealloc;
- (void)enumerateRoutesUsingBlock:(id)a3;
@end

@implementation RouteCollection

- (GEOComposedRoute)currentRoute
{
  v3 = [(RouteCollection *)self routes];
  v4 = [v3 objectAtIndexedSubscript:{-[RouteCollection currentRouteIndex](self, "currentRouteIndex")}];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(RouteCollection *)self routes];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithUnsignedInteger:[(RouteCollection *)self currentRouteIndex]];
  v6 = v4 ^ ([v5 hash] << 8);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RouteCollection *)v6 currentRouteIndex];
    if (v7 == [(RouteCollection *)self currentRouteIndex])
    {
      v8 = [(RouteCollection *)v6 routes];
      v9 = [(RouteCollection *)self routes];
      v10 = [v8 isEqual:v9];
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
  v2 = [(RouteCollection *)self routes];
  v3 = sub_100021DB0(v2, &stru_101636C70);

  return v3;
}

- (unint64_t)indexOfRoute:(id)a3
{
  v4 = a3;
  v5 = [(RouteCollection *)self routes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AAB960;
  v9[3] = &unk_10163B1E8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (unint64_t)indexForUniqueRouteID:(id)a3
{
  v4 = a3;
  v5 = [(RouteCollection *)self routes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(RouteCollection *)self routes];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [v9 uniqueRouteID];
      v11 = [v10 isEqual:v4];

      if (v11)
      {
        break;
      }

      ++v7;
      v12 = [(RouteCollection *)self routes];
      v13 = [v12 count];

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
    v4 = [(RouteCollection *)self routes];
    v5 = [v4 mutableCopy];

    [(NSArray *)v5 removeObjectAtIndex:[(RouteCollection *)self currentRouteIndex]];
    v6 = self->_alternateRoutes;
    self->_alternateRoutes = v5;

    alternateRoutes = self->_alternateRoutes;
  }

  return alternateRoutes;
}

- (unint64_t)count
{
  v2 = [(RouteCollection *)self routes];
  v3 = [v2 count];

  return v3;
}

- (id)routeCollectionByReplacingAlternateComposedRoutes:(id)a3 withTraffics:(id)a4
{
  v5 = a3;
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  v7 = [(RouteCollection *)self currentRoute];
  [v6 addObject:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
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
        v14 = [v13 uniqueRouteID];
        v15 = [(RouteCollection *)self objectForKeyedSubscript:v14];

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

- (id)routeCollectionByReplacingAlternateRoutes:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:3];
  v6 = [(RouteCollection *)self currentRoute];
  [v5 addObject:v6];

  [v5 addObjectsFromArray:v4];
  v7 = [objc_alloc(objc_opt_class()) initWithRoutes:v5 currentRouteIndex:0];

  return v7;
}

- (id)routeCollectionByChangingCurrentRouteIndex:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(RouteCollection *)self routes];
  v7 = [v5 initWithRoutes:v6 currentRouteIndex:a3];

  return v7;
}

- (NSString)shortDescription
{
  v3 = objc_opt_class();
  v4 = [(RouteCollection *)self currentRouteIndex];
  v5 = [(RouteCollection *)self routes];
  v6 = [NSString stringWithFormat:@"<%@: %p currentRouteIndex=%lu routes=%@>", v3, self, v4, v5];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(RouteCollection *)self currentRouteIndex];
  v5 = [(RouteCollection *)self routes];
  v6 = [NSString stringWithFormat:@"<%@: %p currentRouteIndex=%lu routes=%@>", v3, self, v4, v5];

  return v6;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(RouteCollection *)self routes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) _maps_routeCollectionOnly_Clear];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(RouteCollection *)self routes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AAC148;
  v5[3] = &unk_101636C50;
  v5[4] = v6;
  v5[5] = &v7;
  [v2 enumerateObjectsUsingBlock:v5];

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
  v2 = [(RouteCollection *)self routes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AAC2D0;
  v5[3] = &unk_101636C50;
  v5[4] = v6;
  v5[5] = &v7;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (RouteCollection)initWithRoutes:(id)a3 currentRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || [v6 count] <= a4)
  {
    [NSException raise:NSInvalidArgumentException format:@"currentRouteIndex is out of bounds"];
    v27 = 0;
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
      v30 = a4;
      v11 = [v7 objectAtIndexedSubscript:a4];
      v29 = [v11 uniqueRouteID];

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
            v18 = [v17 uniqueRouteID];
            v19 = [v10 containsObject:v18];

            if ((v19 & 1) == 0)
            {
              [v9 addObject:v17];
              [v17 _maps_routeCollectionOnly_setRouteCollectionWhenNil:v8];
              v20 = [v17 uniqueRouteID];
              [v10 addObject:v20];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v14);
      }

      v21 = [v9 copy];
      routes = v8->_routes;
      v8->_routes = v21;

      v23 = v30;
      v24 = [(NSArray *)v8->_routes objectAtIndexedSubscript:v30];
      v25 = [v29 isEqual:v24];

      if ((v25 & 1) == 0)
      {
        v26 = [(RouteCollection *)v8 indexForUniqueRouteID:v29];
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
    v27 = self;
  }

  return v27;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(RouteCollection *)self routes];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)enumerateRoutesUsingBlock:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(RouteCollection *)self routes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      v4[2](v4, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(RouteCollection *)self routes];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = [(RouteCollection *)self indexForUniqueRouteID:a3];
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