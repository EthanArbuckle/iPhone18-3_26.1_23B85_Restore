@interface AXVKExplorationVertexElement
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinates;
- (AXVKExplorationVertexElement)initWithCoordinates:(id)a3 betweenRoads:(id)a4;
- (CGPoint)getScreenPoint;
- (VKMapView)mapView;
- (id)accessibilityLabel;
- (id)connectingRoadWith:(id)a3;
- (id)description;
- (void)setIsComputed:(BOOL)a3;
- (void)setRoads:(id)a3;
@end

@implementation AXVKExplorationVertexElement

- (AXVKExplorationVertexElement)initWithCoordinates:(id)a3 betweenRoads:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = AXVKExplorationVertexElement;
  v8 = [(AXVKExplorationVertexElement *)&v19 init];
  if (v8 && [v7 count])
  {
    v9 = objc_opt_new();
    edges = v8->_edges;
    v8->_edges = v9;

    v11 = objc_opt_new();
    neighbors = v8->_neighbors;
    v8->_neighbors = v11;

    v13 = [v7 mutableCopy];
    roads = v8->_roads;
    v8->_roads = v13;

    v8->_coordinates.latitude = var0;
    v8->_coordinates.longitude = var1;
    v15 = [v7 firstObject];
    v16 = [v15 accessibilityContainer];
    objc_storeWeak(&v8->_mapView, v16);

    v8->_isDeadEnd = [v7 count] == 1;
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setIsComputed:(BOOL)a3
{
  if (!a3)
  {
    v5 = [(AXVKExplorationVertexElement *)self neighbors];
    [v5 removeAllObjects];

    v6 = [(AXVKExplorationVertexElement *)self edges];
    [v6 removeAllObjects];
  }

  self->_isComputed = a3;
}

- (void)setRoads:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)v4 count])
  {
    _AXAssert();
  }

  roads = self->_roads;
  self->_roads = v4;
}

- (id)connectingRoadWith:(id)a3
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(AXVKExplorationVertexElement *)self edges];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 vertices];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = *v17;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if (*(*(&v16 + 1) + 8 * j) == v4)
              {
                v14 = [v9 road];

                goto LABEL_19;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v6);
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (CGPoint)getScreenPoint
{
  v3 = [(AXVKExplorationVertexElement *)self mapView];
  [(AXVKExplorationVertexElement *)self coordinates];
  [v3 accessibilityConvertCoordinateToWindow:?];
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
  v4 = [(AXVKExplorationVertexElement *)self roads];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 trueLabel];
        v10 = v9 == 0;

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

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v6 = [(AXVKExplorationVertexElement *)self roads];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 trueLabel];
        v12 = v11 == 0;

        if (!v12)
        {
          v13 = [v10 trueLabel];
          [v5 addObject:v13];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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