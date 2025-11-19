@interface MapsMapDisplayDebugController
+ (void)completelyFlushTiles;
+ (void)resetSSAOValues;
- ($6EFE6C6748B912A6EAC8A8E593ED1344)mapDisplayStyleInAllLayers;
- (MapsMapDisplayDebugController)init;
- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 forVectorKitDebugKey:(id)a5;
- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 key:(id)a5;
- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 selector:(SEL)a5 key:(id)a6;
- (id)valueForKeyInAllMapLayers:(id)a3;
- (void)_activateMapInspector:(id)a3;
- (void)_setAllMapLayersNeedLayout;
- (void)dealloc;
- (void)disableMapDisplayStyleOverrideForAllLayers;
- (void)enableMapDisplayStyleOverrideForAllLayers:(id)a3;
- (void)prepareContent;
- (void)runNextTourIndex:(unint64_t)a3 withTours:(id)a4;
- (void)setMapDisplayStyleForAllLayers:(id)a3;
- (void)setValue:(id)a3 forKeyInAllMapLayers:(id)a4;
@end

@implementation MapsMapDisplayDebugController

- (void)runNextTourIndex:(unint64_t)a3 withTours:(id)a4
{
  v6 = a4;
  v7 = [(MapsDebugValuesViewController *)self delegate];
  v8 = [v7 allVisibleMapViewsForDebugController:self];
  v9 = [v8 firstObject];

  v10 = [v6 objectAtIndexedSubscript:a3];
  v11 = [v10 unsignedLongLongValue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A89B88;
  v13[3] = &unk_101636A88;
  v15 = self;
  v16 = a3;
  v14 = v6;
  v12 = v6;
  [v9 _startFlyoverTourAnimation:v11 duration:v13 completion:180.0];
}

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v3 = +[VKDebugSettings sharedSettingsExt];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A89D6C;
  v6[3] = &unk_101658D78;
  objc_copyWeak(&v8, &location);
  v4 = v3;
  v7 = v4;
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Map Display" content:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_activateMapInspector:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100AA781C;
  v6[3] = &unk_1016619A8;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addSwitchRowWithTitle:@"Activate Map Inspector" get:&stru_101633260 set:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setAllMapLayersNeedLayout
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(MapsDebugValuesViewController *)self delegate];
  v4 = [v3 allVisibleMapViewsForDebugController:self];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) _mapLayer];
        [v9 setNeedsLayout];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 forVectorKitDebugKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA7BEC;
  v17[3] = &unk_101651FD0;
  v18 = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100AA7C4C;
  v14[3] = &unk_10165FC50;
  v11 = v18;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = [v8 addSwitchRowWithTitle:v9 get:v17 set:v14];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v12;
}

- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 selector:(SEL)a5 key:(id)a6
{
  var1 = a6.var0.var1;
  v7 = *&a6.var0.var0;
  v11 = a3;
  v12 = a4;
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100AA7E48;
  v17[3] = &unk_1016548B0;
  v17[4] = v7;
  v17[5] = var1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AA7E54;
  v15[3] = &unk_101633240;
  objc_copyWeak(v16, &location);
  v16[1] = v7;
  v16[2] = var1;
  v16[3] = a5;
  v13 = [v11 addSwitchRowWithTitle:v12 get:v17 set:v15];
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);

  return v13;
}

- (id)addAllMapsSwitchRowToSection:(id)a3 title:(id)a4 key:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100AA809C;
  v18[3] = &unk_101633218;
  objc_copyWeak(&v20, &location);
  v11 = v10;
  v19 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AA80F4;
  v15[3] = &unk_10165FC50;
  objc_copyWeak(&v17, &location);
  v12 = v11;
  v16 = v12;
  v13 = [v8 addSwitchRowWithTitle:v9 get:v18 set:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

- (void)disableMapDisplayStyleOverrideForAllLayers
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MapsDebugValuesViewController *)self delegate];
  v4 = [v3 allVisibleMapViewsForDebugController:self];

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

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 _mapLayer];
        [v10 disableMapDisplayStyleDebugOverride];

        v11 = [v9 _mapLayer];
        [v11 setNeedsLayout];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)enableMapDisplayStyleOverrideForAllLayers:(id)a3
{
  v3 = *&a3.var0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MapsDebugValuesViewController *)self delegate];
  v6 = [v5 allVisibleMapViewsForDebugController:self];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 _mapLayer];
        [v12 enableMapDisplayStyleDebugOverride:v3 & 0xFFFFFFFFFFFFLL];

        v13 = [v11 _mapLayer];
        [v13 setNeedsLayout];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)setMapDisplayStyleForAllLayers:(id)a3
{
  v3 = *&a3.var0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MapsDebugValuesViewController *)self delegate];
  v6 = [v5 allVisibleMapViewsForDebugController:self];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 _mapLayer];
        [v12 setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL];

        v13 = [v11 _mapLayer];
        [v13 setNeedsLayout];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- ($6EFE6C6748B912A6EAC8A8E593ED1344)mapDisplayStyleInAllLayers
{
  v3 = [(MapsDebugValuesViewController *)self delegate];
  v4 = [v3 allVisibleMapViewsForDebugController:self];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 _mapLayer];
    v7 = [v6 mapDisplayStyle];
    v8 = v7;
    v9 = v7 >> 8;
    v10.i64[0] = 0xFFFFFFFFFFFFLL;
    v10.i64[1] = 0xFFFFFFFFFFFFLL;
    v11 = vandq_s8(vdupq_n_s64(v7), v10);
    v24 = vshlq_u64(v11, xmmword_1012128E0);
    v23 = vshlq_u64(v11, xmmword_1012128F0);

    v12.i64[0] = 255;
    v12.i64[1] = 255;
    v13 = vandq_s8(v23, v12);
    v14 = v13.i64[1];
    v15 = v13.i64[0];
    v16 = vandq_s8(v24, v12);
    v17 = v16.i64[1];
    v18 = v16.i64[0];
  }

  else
  {
    LOBYTE(v9) = 0;
    v8 = 0;
    v18 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
  }

  v19.i64[0] = v18;
  v19.i64[1] = v17;
  v20.i64[0] = v15;
  v20.i64[1] = v14;
  v21 = vorrq_s8(vshlq_u64(v19, xmmword_101212900), vshlq_u64(v20, xmmword_101212910));
  return (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | (v9 << 8) | v8);
}

- (void)setValue:(id)a3 forKeyInAllMapLayers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(MapsDebugValuesViewController *)self delegate];
  v9 = [v8 allVisibleMapViewsForDebugController:self];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 _mapLayer];
        [v15 setValue:v6 forKey:v7];

        v16 = [v14 _mapLayer];
        [v16 setNeedsLayout];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)valueForKeyInAllMapLayers:(id)a3
{
  v4 = a3;
  v5 = [(MapsDebugValuesViewController *)self delegate];
  v6 = [v5 allVisibleMapViewsForDebugController:self];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 _mapLayer];
    v9 = [v8 valueForKey:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_mapsFeatureListeners;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        MapsFeature_RemoveBlockListener();
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MapsMapDisplayDebugController;
  [(MapsDebugValuesViewController *)&v8 dealloc];
}

- (MapsMapDisplayDebugController)init
{
  v7.receiver = self;
  v7.super_class = MapsMapDisplayDebugController;
  v2 = [(MapsDebugValuesViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MapsMapDisplayDebugController *)v2 setTitle:@"Map Display"];
    v3->_shouldCaptureFrameToFile = 0;
    v4 = +[NSMutableArray array];
    mapsFeatureListeners = v3->_mapsFeatureListeners;
    v3->_mapsFeatureListeners = v4;
  }

  return v3;
}

+ (void)resetSSAOValues
{
  v2 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v3) = 1.0;
  [v2 setSsaoMaxIntensity:v3];

  v4 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v5) = 1025758986;
  [v4 setSsaoMaxDistance:v5];

  v6 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v7) = 1109393408;
  [v6 setSsaoFalloffScale:v7];

  v8 = +[VKDebugSettings sharedSettingsExt];
  [v8 setSsaoOverrideOn:0];

  v9 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v10) = 0.5;
  [v9 setSsaoOverrideIntensity:v10];

  v11 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v12) = 0.5;
  [v11 setSsaoOverrideRadius:v12];

  GEOConfigSetBOOL();
}

+ (void)completelyFlushTiles
{
  v2 = +[GEOTileLoader modernLoader];
  [v2 shrinkDiskCacheToSize:0 callbackQ:&_dispatch_main_q finished:&stru_101636AA8];
}

@end