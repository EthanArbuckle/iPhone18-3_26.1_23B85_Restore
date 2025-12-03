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
- (void)_maps_loadLineInfoUsingTraits:(id)traits withCompletion:(id)completion;
- (void)set_maps_lineShouldZoomMapRegionOnSelection:(BOOL)selection;
@end

@implementation VKLabelMarker

- (void)set_maps_lineShouldZoomMapRegionOnSelection:(BOOL)selection
{
  v4 = [NSNumber numberWithBool:selection];
  objc_setAssociatedObject(self, &unk_10195CB9A, v4, 3);
}

- (BOOL)_maps_lineShouldZoomMapRegionOnSelection
{
  v2 = objc_getAssociatedObject(self, &unk_10195CB9A);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)_maps_analyticsEventValue
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _maps_lineIdentifiers = [(VKLabelMarker *)self _maps_lineIdentifiers];
  v5 = [_maps_lineIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_maps_lineIdentifiers);
        }

        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [*(*(&v12 + 1) + 8 * i) muid]);
        [v3 addObject:v9];
      }

      v6 = [_maps_lineIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

- (void)_maps_loadLineInfoUsingTraits:(id)traits withCompletion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  if (([(VKLabelMarker *)self isTransitLine]& 1) != 0)
  {
    v8 = objc_getAssociatedObject(self, &unk_10195CB98);
    if (v8)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v8, 0);
      }
    }

    else
    {
      v9 = objc_getAssociatedObject(self, &unk_10195CB99);
      if (v9)
      {
        v10 = v9;
        if (completionCopy)
        {
          v11 = objc_retainBlock(completionCopy);
          [v10 addObject:v11];
        }
      }

      else
      {
        if (completionCopy)
        {
          v12 = objc_retainBlock(completionCopy);
          v13 = [NSMutableArray arrayWithObject:v12];
        }

        else
        {
          v13 = +[NSMutableArray array];
        }

        objc_setAssociatedObject(self, &unk_10195CB99, v13, 1);
        v14 = +[MKMapService sharedService];
        _maps_lineIdentifiers = [(VKLabelMarker *)self _maps_lineIdentifiers];
        v16 = [v14 ticketForTransitLines:_maps_lineIdentifiers traits:traitsCopy];

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

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (NSArray)_maps_lineIdentifiers
{
  if ([(VKLabelMarker *)self isTransitLine])
  {
    _maps_numLines = [(VKLabelMarker *)self _maps_numLines];
    v4 = [[NSMutableArray alloc] initWithCapacity:_maps_numLines];
    if (_maps_numLines)
    {
      for (i = 0; i != _maps_numLines; ++i)
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
  poiSearchManager = [v3 poiSearchManager];
  identifier = [(VKLabelMarker *)self identifier];
  v6 = [poiSearchManager searchResultForIdentifier:identifier];

  mapItem = [v6 mapItem];
  if (!mapItem)
  {
    mapItem = [[MKMapItem alloc] _initWithLabelMarker:self];
  }

  return mapItem;
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

  clusterFeatureAnnotations = [(VKLabelMarker *)self clusterFeatureAnnotations];
  firstObject = [clusterFeatureAnnotations firstObject];

  isKindOfClass = 0;
  if (v3 && firstObject)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_maps_isOfflineAnnotation
{
  featureAnnotation = [(VKLabelMarker *)self featureAnnotation];
  if (featureAnnotation)
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
  featureAnnotation = [(VKLabelMarker *)self featureAnnotation];
  v3 = featureAnnotation;
  if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
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
  featureAnnotation = [(VKLabelMarker *)self featureAnnotation];
  v3 = featureAnnotation;
  if (featureAnnotation)
  {
    v4 = [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation];
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
    routeAnnotations = [(VKLabelMarker *)self routeAnnotations];
    v4 = sub_100021DB0(routeAnnotations, &stru_1016577C8);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

@end