@interface GEOComposedRouteLaneInfo
+ (id)_debug_laneWithDirections:(id)a3 good:(BOOL)a4 preferred:(BOOL)a5;
@end

@implementation GEOComposedRouteLaneInfo

+ (id)_debug_laneWithDirections:(id)a3 good:(BOOL)a4 preferred:(BOOL)a5
{
  v7 = a3;
  v8 = objc_alloc_init(GEOComposedRouteLaneInfo);
  if (v8)
  {
    v9 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v7;
    v10 = v7;
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
    *(v8 + OBJC_IVAR___GEOComposedRouteLaneInfo__good) = a4;
    *(v8 + OBJC_IVAR___GEOComposedRouteLaneInfo__preferred) = a5;

    v7 = v19;
  }

  return v8;
}

@end