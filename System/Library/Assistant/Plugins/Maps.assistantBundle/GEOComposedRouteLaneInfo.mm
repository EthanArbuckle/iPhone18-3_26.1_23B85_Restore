@interface GEOComposedRouteLaneInfo
+ (id)_debug_laneWithDirections:(id)directions good:(BOOL)good preferred:(BOOL)preferred;
@end

@implementation GEOComposedRouteLaneInfo

+ (id)_debug_laneWithDirections:(id)directions good:(BOOL)good preferred:(BOOL)preferred
{
  directionsCopy = directions;
  v8 = objc_alloc_init(GEOComposedRouteLaneInfo);
  if (v8)
  {
    v9 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = directionsCopy;
    v10 = directionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = objc_alloc_init(GEOLaneArrowhead);
          [v16 setCategory:{objc_msgSend(v15, "integerValue")}];
          v17 = [[GEOComposedRouteLaneDirectionInfo alloc] initWithLaneArrowHead:v16];
          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v8 setDirections:v9];
    *(v8 + OBJC_IVAR___GEOComposedRouteLaneInfo__good) = good;
    *(v8 + OBJC_IVAR___GEOComposedRouteLaneInfo__preferred) = preferred;

    directionsCopy = v19;
  }

  return v8;
}

@end