@interface MKTileOverlay
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (CGSize)tileSize;
- (CLLocationCoordinate2D)coordinate;
- (MKTileOverlay)initWithURLTemplate:(NSString *)URLTemplate;
- (NSURL)URLForTilePath:(MKTileOverlayPath *)path;
- (id)_tilesInMapRect:(id)a3 zoomScale:(double)a4 contentScale:(double)a5;
- (int)_zoomLevelForScale:(double)a3;
- (uint64_t)_keyForPath:(double *)a3;
- (void)_flushCaches;
- (void)_loadTile:(uint64_t)a3 result:(void *)a4;
- (void)_minLifetimeCacheCleanupFired;
- (void)dealloc;
- (void)loadTileAtPath:(MKTileOverlayPath *)path result:(void *)result;
@end

@implementation MKTileOverlay

- (CGSize)tileSize
{
  objc_copyStruct(v4, &self->_tileSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_flushCaches
{
  v3 = _MKOverlayTileLoader();
  [v3 clearAllCaches];

  [(GEOTileCache *)self->_tileCache removeAllObjects];
  minimumLifetimeTileCache = self->_minimumLifetimeTileCache;

  [(GEOTileCache *)minimumLifetimeTileCache removeAllObjects];
}

- (id)_tilesInMapRect:(id)a3 zoomScale:(double)a4 contentScale:(double)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v10 = self;
  v11 = [(MKTileOverlay *)self _zoomLevelForScale:a4];
  [(MKTileOverlay *)v10 boundingMapRect];
  v53 = v13;
  v54 = v12;
  v15 = v14;
  v17 = v16;
  if ([(MKTileOverlay *)v10 minimumZ]<= v11 && (v18 = v11, [(MKTileOverlay *)v10 maximumZ]>= v11))
  {
    width = v10->_tileSize.width;
    height = v10->_tileSize.height;
    v23 = vcvtmd_s64_f64(v9 * a4 / width);
    v24 = vcvtmd_s64_f64((v9 + var0) * a4 / width);
    v25 = [MEMORY[0x1E695DF70] array];
    v19 = v25;
    if (v23 <= v24)
    {
      v26 = v23;
      v48 = v24 + 1;
      v49 = vcvtmd_s64_f64((v8 + var1) * a4 / height);
      v50 = vcvtmd_s64_f64(v8 * a4 / height);
      v27 = (-1 << v18) + 1;
      v51 = v25;
      do
      {
        if (v50 <= v49)
        {
          v28 = v26;
          v29 = v50;
          do
          {
            v30 = [(MKTileOverlay *)v10 isGeometryFlipped];
            v31 = v27 + v29;
            if (v27 + v29 < 0)
            {
              v31 = -v31;
            }

            if (v30)
            {
              v32 = v31;
            }

            else
            {
              v32 = v29;
            }

            v33 = v10->_tileSize.width;
            v34 = v10->_tileSize.height;
            v35 = v33 * v28 / a4;
            v36 = v34 * v29 / a4;
            v37 = v33 / a4;
            v38 = v34 / a4;
            v62.origin.x = v35;
            v62.origin.y = v36;
            v62.size.width = v37;
            v62.size.height = v38;
            v63.origin.y = v53;
            v63.origin.x = v54;
            v63.size.width = v15;
            v63.size.height = v17;
            if (MKMapRectIntersectsRect(v62, v63))
            {
              v39 = objc_alloc_init(MKTileOverlayTile);
              [(MKTileOverlayTile *)v39 setFrame:v35, v36, v37, v38];
              [(MKTileOverlayTile *)v39 setScale:a4];
              v57 = v26;
              v58 = v32;
              v59 = v18;
              v60 = a5;
              [(MKTileOverlayTile *)v39 setPath:&v57];
              v55 = 0;
              v56 = 0;
              v40 = v26;
              v57 = v26;
              v58 = v32;
              v41 = v18;
              v59 = v18;
              v60 = a5;
              v42 = v10;
              v55 = [(MKTileOverlay *)v10 _keyForPath:&v57];
              v56 = v43;
              v44 = _MKOverlayTileLoader();
              v45 = [v44 cachedTileForKey:&v55];
              v46 = [v45 data];
              [(MKTileOverlayTile *)v39 setImage:v46];

              v19 = v51;
              [v51 addObject:v39];

              v47 = v41;
              v26 = v40;
              v10 = v42;
              v18 = v47;
            }

            ++v29;
          }

          while (v49 + 1 != v29);
        }

        ++v26;
      }

      while (v48 != v26);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (int)_zoomLevelForScale:(double)a3
{
  [(MKTileOverlay *)self tileSize];
  v5 = log2(268435456.0 / v4);
  v6 = v5 + vcvtmd_s64_f64(log2(a3) + 0.5);
  return v6 & ~(v6 >> 31);
}

- (void)_minLifetimeCacheCleanupFired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[5] = MEMORY[0x1E69E9820];
  v5[6] = 3221225472;
  v5[7] = __46__MKTileOverlay__minLifetimeCacheCleanupFired__block_invoke;
  v5[8] = &unk_1E76CD7E8;
  v5[9] = self;
  v5[10] = &v6;
  geo_isolate_sync();
  GEOMachAbsoluteTimeGetCurrent();
  minimumLifetimeTileCache = self->_minimumLifetimeTileCache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MKTileOverlay__minLifetimeCacheCleanupFired__block_invoke_2;
  v5[3] = &__block_descriptor_40_e749_B32__0r___GEOTileKey_b7b1_____GEOStandardTileKey_b40b6b26b26b14b4b4___GEOGloriaQuadIDTileKey_b6b64b14b4______b10b10b12____b10b22_I____GEORegionalResourceKey_b32b8b6b8b8b1b57___GEOSputnikMetadataKey_b32b24b14b8b42___GEOFlyoverKey_b6b26b26b8b24b14b8b8___GEOTransitLineSelectionKey_b6b25b25b64___GEOPolygonSelectionKey_b6b25b25b64___GEORoadSelectionKey_b6b25b25b64___GEOContourLinesKey_b6b26b26b4b8b50___GEOTileOverlayKey_b6b26b26b8b32b16b6___GEOIdentifiedResourceKey_QCCb1b39___GEOMuninMeshKey_b64b32b16b5b3___GEOVisualLocalizationTrackKey_SCb16b6b26b26b22___GEOVisualLocalizationMetadataKey_b6b9b25b6b26b26b22___GEOVisualLocalizationDataKey_QCb5b21b21b1___GEOS2TileKey_b6b26b26b3b14b4b4b37___GEOLiveTileKey_b6b26b26b14b4b4b4b36___8__GEOTileData_16d24l;
  v5[4] = v4;
  [(GEOTileCache *)minimumLifetimeTileCache removeTilesMatchingPredicate:v5];
  if (*(v7 + 24) == 1)
  {
    [(MKTileOverlay *)self _scheduleMinLifetimeCacheCleanupIfNecessary];
  }

  _Block_object_dispose(&v6, 8);
}

void __46__MKTileOverlay__minLifetimeCacheCleanupFired__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;

    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 104);
  *(*(a1 + 32) + 104) = 0;
}

BOOL __46__MKTileOverlay__minLifetimeCacheCleanupFired__block_invoke_2(uint64_t a1, double a2)
{
  v2 = *(a1 + 32) - a2;
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 > 10.0;
}

void __60__MKTileOverlay__scheduleMinLifetimeCacheCleanupIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    *(v1 + 104) = 1;
  }

  else
  {
    objc_initWeak(&location, v1);
    objc_copyWeak(&v6, &location);
    v3 = geo_dispatch_timer_create_on_qos();
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    dispatch_activate(*(*(a1 + 32) + 88));
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __60__MKTileOverlay__scheduleMinLifetimeCacheCleanupIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _minLifetimeCacheCleanupFired];
}

- (void)_loadTile:(uint64_t)a3 result:(void *)a4
{
  v6 = a4;
  v7 = _MKOverlayTileLoader();
  v8 = GEOTileLoaderClientIdentifier();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__MKTileOverlay__loadTile_result___block_invoke;
  v10[3] = &unk_1E76CD1E8;
  v10[4] = a1;
  v9 = v6;
  v11 = v9;
  [v7 loadKey:a3 priority:2147483646 forClient:v8 options:3 reason:1 callbackQ:MEMORY[0x1E69E96A0] beginNetwork:0 callback:v10];
}

void __34__MKTileOverlay__loadTile_result___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a3;
  v10 = a5;
  v11 = a6;
  if (v12)
  {
    [*(*(a1 + 32) + 64) setTile:v12 forKey:a2 cost:{objc_msgSend(v12, "length")}];
    [*(*(a1 + 32) + 72) setTile:v12 forKey:a2 cost:0];
    [*(a1 + 32) _scheduleMinLifetimeCacheCleanupIfNecessary];
  }

  (*(*(a1 + 40) + 16))();
}

- (uint64_t)_keyForPath:(double *)a3
{
  v5 = a3[3];
  +[_MKOverlayTileRequester tileProviderIdentifier];
  *&v12 = GEOTileKeyMakeEmpty();
  *(&v12 + 1) = v6;
  v7 = *a3;
  if ([a1 isGeometryFlipped])
  {
    v8 = *(a3 + 4);
    v9 = ~*(a3 + 1);
    v10 = v9 + (1 << v8);
    if (v10 >= 0)
    {
      LODWORD(v9) = v9 + (1 << v8);
    }

    else
    {
      v9 = -v10;
    }

    LODWORD(v9) = *(&v12 + 5) & 0xFC000000 | v9;
  }

  else
  {
    v9 = *(&v12 + 5) & 0xFFFFFFFFFC000000 | *(a3 + 1);
    v8 = *(a3 + 4);
  }

  *(&v12 + 1) = v8 & 0x3F | (LODWORD(v7) << 6);
  *(&v12 + 5) = v9 & 0x3FFFFFF | (v5 << 26);
  return v12;
}

- (void)loadTileAtPath:(MKTileOverlayPath *)path result:(void *)result
{
  v6 = result;
  v7 = *&path->z;
  v17[0] = *&path->x;
  v17[1] = v7;
  v8 = [(MKTileOverlay *)self URLForTilePath:v17];
  v9 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v8 cachePolicy:1 timeoutInterval:120.0];
  v10 = [MEMORY[0x1E696AF78] sharedSession];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__MKTileOverlay_loadTileAtPath_result___block_invoke;
  v14[3] = &unk_1E76CD410;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  v13 = [v10 dataTaskWithRequest:v9 completionHandler:v14];
  [v13 resume];
}

void __39__MKTileOverlay_loadTileAtPath_result___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Error loading URL %{public}@: %{public}@", &v12, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (NSURL)URLForTilePath:(MKTileOverlayPath *)path
{
  v4 = [(NSString *)self->_URLTemplate mutableCopy];
  fillTemplate(v4, &cfstr_X.isa, path->x);
  fillTemplate(v4, &cfstr_Y.isa, path->y);
  fillTemplate(v4, &cfstr_Z.isa, path->z);
  contentScaleFactor = path->contentScaleFactor;
  v6 = v4;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", *&contentScaleFactor];
  [(NSMutableString *)v6 replaceOccurrencesOfString:@"{scale}" withString:v7 options:0 range:0, [(NSMutableString *)v6 length]];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v8;
}

- (CLLocationCoordinate2D)coordinate
{
  v4 = CLLocationCoordinate2DMake(0.0, 0.0);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  v2 = 268435456.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 268435456.0;
  result.var1.var1 = v5;
  result.var1.var0 = v2;
  result.var0.var1 = v4;
  result.var0.var0 = v3;
  return result;
}

- (void)dealloc
{
  [_MKOverlayTileRequester unregisterDataSource:self->_providerID];
  dispatch_source_cancel(self->_memoryNotificationEventSource);
  minimumLifetimeTileCacheEvictionTimer = self->_minimumLifetimeTileCacheEvictionTimer;
  if (minimumLifetimeTileCacheEvictionTimer)
  {
    dispatch_source_cancel(minimumLifetimeTileCacheEvictionTimer);
  }

  v4.receiver = self;
  v4.super_class = MKTileOverlay;
  [(MKTileOverlay *)&v4 dealloc];
}

- (MKTileOverlay)initWithURLTemplate:(NSString *)URLTemplate
{
  v4 = URLTemplate;
  v21.receiver = self;
  v21.super_class = MKTileOverlay;
  v5 = [(MKTileOverlay *)&v21 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    [v5 _assignProviderID];
    *(v5 + 1) = vdupq_n_s64(0x4070000000000000uLL);
    v5[32] = 0;
    *(v5 + 40) = xmmword_1A30F71D0;
    v8 = objc_alloc_init(MEMORY[0x1E69A25F8]);
    v9 = *(v5 + 8);
    *(v5 + 8) = v8;

    [*(v5 + 8) setMaxCapacity:512];
    [*(v5 + 8) setMaxCost:0x400000];
    v10 = objc_alloc_init(MEMORY[0x1E69A25F8]);
    v11 = *(v5 + 9);
    *(v5 + 9) = v10;

    [*(v5 + 9) setMaxCapacity:-1];
    [*(v5 + 9) setMaxCost:-1];
    v12 = geo_isolater_create();
    v13 = *(v5 + 10);
    *(v5 + 10) = v12;

    v14 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, MEMORY[0x1E69E96A0]);
    v15 = *(v5 + 12);
    *(v5 + 12) = v14;

    objc_initWeak(&location, v5);
    v16 = *(v5 + 12);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__MKTileOverlay_initWithURLTemplate___block_invoke;
    v18[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v16, v18);
    dispatch_activate(*(v5 + 12));
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __37__MKTileOverlay_initWithURLTemplate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedMemoryNotification];
}

@end