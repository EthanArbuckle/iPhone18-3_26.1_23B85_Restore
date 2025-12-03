@interface RouteTileLoadingDebugOverlayRenderer
- (RouteTileLoadingDebugOverlayRenderer)initWithOverlay:(id)overlay;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation RouteTileLoadingDebugOverlayRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  v12 = log2(MKMapSizeWorld.width * 0.001953125);
  v13 = vcvtmd_s64_f64(log2(scale) + 0.5);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100EC6A58;
  v33[3] = &unk_1016585B8;
  v33[4] = self;
  v33[5] = (v12 + v13) & ~((v12 + v13) >> 31);
  *&v33[6] = v10;
  *&v33[7] = v9;
  *&v33[8] = var0;
  *&v33[9] = var1;
  v33[10] = context;
  v14 = objc_retainBlock(v33);
  CGContextSaveGState(context);
  CGContextSetLineWidth(context, 2.0 / scale);
  CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 0.2);
  CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.5, 0.4);
  overlay = [(RouteTileLoadingDebugOverlayRenderer *)self overlay];
  v16 = v14;
  if (overlay)
  {
    os_unfair_lock_lock((overlay + 32));
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v17 = *(overlay + 16);
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = *v35;
      do
      {
        v20 = 0;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          (v16[2])(v16, *(*(&v34 + 1) + 8 * v20));
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);
    }

    os_unfair_lock_unlock((overlay + 32));
  }

  CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 0.2);
  CGContextSetRGBStrokeColor(context, 0.0, 0.5, 0.0, 0.4);
  overlay2 = [(RouteTileLoadingDebugOverlayRenderer *)self overlay];
  v22 = v16;
  if (overlay2)
  {
    os_unfair_lock_lock((overlay2 + 32));
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v23 = *(overlay2 + 8);
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v24)
    {
      v25 = *v35;
      do
      {
        v26 = 0;
        do
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v22[2](v22, *(*(&v34 + 1) + 8 * v26));
          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    os_unfair_lock_unlock((overlay2 + 32));
  }

  CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 0.2);
  CGContextSetRGBStrokeColor(context, 0.5, 0.0, 0.0, 0.4);
  overlay3 = [(RouteTileLoadingDebugOverlayRenderer *)self overlay];
  v28 = v22;
  if (overlay3)
  {
    os_unfair_lock_lock((overlay3 + 32));
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v29 = *(overlay3 + 24);
    v30 = [v29 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v30)
    {
      v31 = *v35;
      do
      {
        v32 = 0;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v28[2](v28, *(*(&v34 + 1) + 8 * v32));
          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [v29 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v30);
    }

    os_unfair_lock_unlock((overlay3 + 32));
  }

  CGContextRestoreGState(context);
}

- (RouteTileLoadingDebugOverlayRenderer)initWithOverlay:(id)overlay
{
  v36.receiver = self;
  v36.super_class = RouteTileLoadingDebugOverlayRenderer;
  v3 = [(RouteTileLoadingDebugOverlayRenderer *)&v36 initWithOverlay:overlay];
  if (v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    tileTypeToZoomLevels = v3->_tileTypeToZoomLevels;
    v3->_tileTypeToZoomLevels = v4;

    v6 = +[GEOResourceManifestManager modernManager];
    activeTileGroup = [v6 activeTileGroup];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = activeTileGroup;
    obj = [activeTileGroup tileSets];
    v29 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v29)
    {
      v28 = *v33;
      do
      {
        v8 = 0;
        do
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v8;
          v9 = *(*(&v32 + 1) + 8 * v8);
          v10 = v3->_tileTypeToZoomLevels;
          v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 style]);
          v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];

          if (!v12)
          {
            v13 = +[NSMutableArray array];
            v14 = v3->_tileTypeToZoomLevels;
            v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 style]);
            [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
          }

          availableTiles = [v9 availableTiles];
          if ([v9 availableTilesCount])
          {
            v16 = 0;
            do
            {
              v17 = &availableTiles[24 * v16];
              v18 = *(v17 + 5);
              v19 = *(v17 + 2);
              while (v18 <= v19)
              {
                v20 = v3->_tileTypeToZoomLevels;
                v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 style]);
                v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];
                v23 = [NSNumber numberWithUnsignedInt:v18];
                [v22 addObject:v23];

                v18 = (v18 + 1);
              }

              ++v16;
            }

            while (v16 < [v9 availableTilesCount]);
          }

          v8 = v30 + 1;
        }

        while ((v30 + 1) != v29);
        v29 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v29);
    }

    v24 = v3;
  }

  return v3;
}

@end