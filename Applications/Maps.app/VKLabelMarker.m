@interface VKLabelMarker
- (BOOL)_maps_hasCustomPOIAnnotation;
- (BOOL)_maps_isOfflineAnnotation;
- (BOOL)_maps_isOfflineClusterAnnotation;
- (BOOL)_maps_lineShouldZoomMapRegionOnSelection;
- (CustomPOIAnnotation)_maps_customPOIAnnotation;
- (NSArray)_maps_lineIdentifiers;
- (id)_maps_analyticsEventValue;
- (id)_maps_mapItem;
- (id)_maps_selectableRouteAnnotations;
- (unint64_t)_maps_numLines;
- (void)_maps_loadLineInfoUsingTraits:(id)a3 withCompletion:(id)a4;
- (void)set_maps_lineShouldZoomMapRegionOnSelection:(BOOL)a3;
@end

@implementation VKLabelMarker

- (void)set_maps_lineShouldZoomMapRegionOnSelection:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_10195CB9A, v4, 3);
}

- (BOOL)_maps_lineShouldZoomMapRegionOnSelection
{
  v2 = objc_getAssociatedObject(self, &unk_10195CB9A);
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_maps_analyticsEventValue
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(VKLabelMarker *)self _maps_lineIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [*(*(&v12 + 1) + 8 * i) muid]);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

- (void)_maps_loadLineInfoUsingTraits:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(VKLabelMarker *)self isTransitLine]& 1) != 0)
  {
    v8 = objc_getAssociatedObject(self, &unk_10195CB98);
    if (v8)
    {
      if (v7)
      {
        v7[2](v7, v8, 0);
      }
    }

    else
    {
      v9 = objc_getAssociatedObject(self, &unk_10195CB99);
      if (v9)
      {
        v10 = v9;
        if (v7)
        {
          v11 = objc_retainBlock(v7);
          [v10 addObject:v11];
        }
      }

      else
      {
        if (v7)
        {
          v12 = objc_retainBlock(v7);
          v13 = [NSMutableArray arrayWithObject:v12];
        }

        else
        {
          v13 = +[NSMutableArray array];
        }

        objc_setAssociatedObject(self, &unk_10195CB99, v13, 1);
        v14 = +[MKMapService sharedService];
        v15 = [(VKLabelMarker *)self _maps_lineIdentifiers];
        v16 = [v14 ticketForTransitLines:v15 traits:v6];

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1005CFC18;
        v17[3] = &unk_10165FE18;
        v17[4] = self;
        v10 = v13;
        v18 = v10;
        [v16 submitWithHandler:v17 networkActivity:0];
      }
    }
  }

  else if (v7)
  {
    v7[2](v7, 0, 0);
  }
}

- (NSArray)_maps_lineIdentifiers
{
  if ([(VKLabelMarker *)self isTransitLine])
  {
    v3 = [(VKLabelMarker *)self _maps_numLines];
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v6 = *([(VKLabelMarker *)self featureIDs]+ i);
        v7 = [MKMapItemIdentifier alloc];
        [(VKLabelMarker *)self coordinate];
        v8 = [v7 initWithMUID:v6 resultProviderID:0 coordinate:?];
        if (v8)
        {
          [v4 addObject:v8];
        }
      }
    }

    v9 = [NSArray arrayWithArray:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_maps_numLines
{
  if (![(VKLabelMarker *)self isTransitLine])
  {
    return 0;
  }

  return [(VKLabelMarker *)self countFeatureIDs];
}

- (id)_maps_mapItem
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 poiSearchManager];
  v5 = [(VKLabelMarker *)self identifier];
  v6 = [v4 searchResultForIdentifier:v5];

  v7 = [v6 mapItem];
  if (!v7)
  {
    v7 = [[MKMapItem alloc] _initWithLabelMarker:self];
  }

  return v7;
}

- (BOOL)_maps_isOfflineClusterAnnotation
{
  if ([(VKLabelMarker *)self isCluster])
  {
    v3 = [(VKLabelMarker *)self clusterFeatureCount]!= 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(VKLabelMarker *)self clusterFeatureAnnotations];
  v5 = [v4 firstObject];

  isKindOfClass = 0;
  if (v3 && v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_maps_isOfflineAnnotation
{
  v2 = [(VKLabelMarker *)self featureAnnotation];
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CustomPOIAnnotation)_maps_customPOIAnnotation
{
  v2 = [(VKLabelMarker *)self featureAnnotation];
  v3 = v2;
  if (v2 && [v2 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_maps_hasCustomPOIAnnotation
{
  v2 = [(VKLabelMarker *)self featureAnnotation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_maps_selectableRouteAnnotations
{
  if ([(VKLabelMarker *)self isRouteAnnotation])
  {
    v3 = [(VKLabelMarker *)self routeAnnotations];
    v4 = sub_100021DB0(v3, &stru_1016577C8);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

@end