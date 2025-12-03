@interface AXVKExplorationVertexElement
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates;
- (AXVKExplorationVertexElement)initWithCoordinates:(id)coordinates betweenRoads:(id)roads;
- (CGPoint)getScreenPoint;
- (VKMapView)mapView;
- (id)accessibilityLabel;
- (id)connectingRoadWith:(id)with;
- (id)description;
- (void)setIsComputed:(BOOL)computed;
- (void)setRoads:(id)roads;
@end

@implementation AXVKExplorationVertexElement

- (AXVKExplorationVertexElement)initWithCoordinates:(id)coordinates betweenRoads:(id)roads
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  roadsCopy = roads;
  v19.receiver = self;
  v19.super_class = AXVKExplorationVertexElement;
  v8 = [(AXVKExplorationVertexElement *)&v19 init];
  if (v8 && [roadsCopy count])
  {
    v9 = objc_opt_new();
    edges = v8->_edges;
    v8->_edges = v9;

    v11 = objc_opt_new();
    neighbors = v8->_neighbors;
    v8->_neighbors = v11;

    v13 = [roadsCopy mutableCopy];
    roads = v8->_roads;
    v8->_roads = v13;

    v8->_coordinates.latitude = var0;
    v8->_coordinates.longitude = var1;
    firstObject = [roadsCopy firstObject];
    accessibilityContainer = [firstObject accessibilityContainer];
    objc_storeWeak(&v8->_mapView, accessibilityContainer);

    v8->_isDeadEnd = [roadsCopy count] == 1;
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setIsComputed:(BOOL)computed
{
  if (!computed)
  {
    neighbors = [(AXVKExplorationVertexElement *)self neighbors];
    [neighbors removeAllObjects];

    edges = [(AXVKExplorationVertexElement *)self edges];
    [edges removeAllObjects];
  }

  self->_isComputed = computed;
}

- (void)setRoads:(id)roads
{
  roadsCopy = roads;
  if (![(NSMutableArray *)roadsCopy count])
  {
    _AXAssert();
  }

  roads = self->_roads;
  self->_roads = roadsCopy;
}

- (id)connectingRoadWith:(id)with
{
  v26 = *MEMORY[0x29EDCA608];
  withCopy = with;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  edges = [(AXVKExplorationVertexElement *)self edges];
  v6 = [edges countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(edges);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        vertices = [v9 vertices];
        v11 = [vertices countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = *v17;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(vertices);
              }

              if (*(*(&v16 + 1) + 8 * j) == withCopy)
              {
                road = [v9 road];

                goto LABEL_19;
              }
            }

            v11 = [vertices countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [edges countByEnumeratingWithState:&v20 objects:v25 count:16];
      road = 0;
    }

    while (v6);
  }

  else
  {
    road = 0;
  }

LABEL_19:

  return road;
}

- (CGPoint)getScreenPoint
{
  mapView = [(AXVKExplorationVertexElement *)self mapView];
  [(AXVKExplorationVertexElement *)self coordinates];
  [mapView accessibilityConvertCoordinateToWindow:?];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  roads = [(AXVKExplorationVertexElement *)self roads];
  v5 = [roads countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(roads);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        trueLabel = [v8 trueLabel];
        v10 = trueLabel == 0;

        if (v10)
        {
          AXVectorKitLocString(@"UNNAMED_ROAD");
        }

        else
        {
          [v8 trueLabel];
        }
        v11 = ;
        [v3 addObject:v11];
      }

      v5 = [roads countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = AXFormatAndListWithElements();

  return v12;
}

- (id)description
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%p: ", objc_opt_class(), self];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  roads = [(AXVKExplorationVertexElement *)self roads];
  v7 = [roads countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(roads);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        trueLabel = [v10 trueLabel];
        v12 = trueLabel == 0;

        if (!v12)
        {
          trueLabel2 = [v10 trueLabel];
          [v5 addObject:trueLabel2];
        }
      }

      v7 = [roads countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v5 componentsJoinedByString:@" - "];
  [v4 appendString:v14];

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates
{
  latitude = self->_coordinates.latitude;
  longitude = self->_coordinates.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (VKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

@end