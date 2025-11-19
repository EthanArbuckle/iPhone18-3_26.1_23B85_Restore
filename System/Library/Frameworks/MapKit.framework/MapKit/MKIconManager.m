@interface MKIconManager
+ (CGColor)newFillColorForStyleAttributes:(id)a3 forScale:(double)a4;
+ (CGColor)newGlyphColorForStyleAttributes:(id)a3 forScale:(double)a4;
+ (CGColor)newHaloColorForStyleAttributes:(id)a3 forScale:(double)a4;
+ (id)_imageForFeatureStyleAttributes:(id)a3 iconText:(id)a4 size:(unint64_t)a5 forScale:(double)a6 navMode:(BOOL)a7 nightMode:(BOOL)a8;
+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5;
+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 navMode:(BOOL)a6;
+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 navMode:(BOOL)a6 nightMode:(BOOL)a7;
+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 nightMode:(BOOL)a6;
+ (id)_markerStyleAttributesForCustomStyleAttributes:(id)a3 selected:(BOOL)a4;
+ (id)imageForIconID:(unsigned int)a3 contentScale:(double)a4 sizeGroup:(unint64_t)a5 nightMode:(BOOL)a6;
+ (id)imageForMapItem:(id)a3 forScale:(double)a4;
+ (id)imageForMapItem:(id)a3 forScale:(double)a4 fallbackToBundleIcon:(BOOL)a5;
+ (id)imageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6;
+ (id)imageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 fallbackToBundleIcon:(BOOL)a7;
+ (id)imageForRouteAnnotationStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 nightMode:(BOOL)a9;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 nightMode:(BOOL)a10;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 isCarplay:(BOOL)a12;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 isCarplay:(BOOL)a12 nightMode:(BOOL)a13;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 nightMode:(BOOL)a12;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 nightMode:(BOOL)a11;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 nightMode:(BOOL)a8;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 nightMode:(BOOL)a7;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 nightMode:(BOOL)a8;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 interactive:(BOOL)a9;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 interactive:(BOOL)a9 nightMode:(BOOL)a10;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 isCarplay:(BOOL)a9;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 isCarplay:(BOOL)a9 nightMode:(BOOL)a10;
+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 nightMode:(BOOL)a9;
+ (id)imageForTrafficIncidentType:(int64_t)a3 size:(unint64_t)a4 forScale:(double)a5 nightMode:(BOOL)a6;
+ (id)markerBalloonIconForConfiguration:(id)a3;
+ (id)poiBalloonIconForConfiguration:(id)a3;
+ (void)_updatePickingStateStyleAttribute:(id)a3 selected:(BOOL)a4;
+ (void)requestImageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 completionHandler:(id)a6;
+ (void)requestImageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 completionHandler:(id)a6;
@end

@implementation MKIconManager

+ (id)_markerStyleAttributesForCustomStyleAttributes:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 copy];

    if ([v7 poiType] == -1)
    {
      v8 = 348;
    }

    else
    {
      v8 = [v7 poiType];
    }

    v10 = 0x300000005;
    v11 = 6;
    v12 = v8;
    v13 = xmmword_1A30F7100;
    v14 = 65617;
    v15 = 65573;
    v16 = v4;
    [v7 replaceAttributes:&v10 count:6];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 348, 65572, 1, 65567, 3, 65617, 0, 65573, v4, 0}];
  }

  return v7;
}

+ (void)_updatePickingStateStyleAttribute:(id)a3 selected:(BOOL)a4
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x100010025;
  [a3 replaceAttributes:v4 count:1];
}

+ (id)markerBalloonIconForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DF438]) initSearchResultModifiers];
  [v5 setNightMode:{objc_msgSend(v4, "darkMode")}];
  [v5 setGlyphHidden:{objc_msgSend(v4, "glyphHidden")}];
  [v5 setIncreaseContrast:{objc_msgSend(v4, "increasedContrast")}];
  v6 = +[MKSystemController sharedInstance];
  [v5 setNewInterfaceEnabled:{objc_msgSend(v6, "isGlassEnabled")}];

  v7 = [v4 glyphColor];

  if (v7)
  {
    v8 = [v4 glyphColor];
    *&v9 = MKGetVKColorForMKColor(v8);
    [v5 setGlyphColor:v9];
  }

  v10 = [v4 fillColor];

  if (v10)
  {
    v11 = [v4 fillColor];
    *&v12 = MKGetVKColorForMKColor(v11);
    [v5 setFillColor:v12];
  }

  v13 = [v4 styleAttributes];
  v14 = [a1 _markerStyleAttributesForCustomStyleAttributes:v13 selected:{objc_msgSend(v4, "selected")}];

  v15 = [MEMORY[0x1E69DF430] sharedManager];
  [v4 scale];
  *&v16 = v16;
  v17 = [v15 balloonIconForStyleAttributes:v14 withStylesheetName:@"default" contentScale:8 sizeGroup:v5 modifiers:v16];

  if (!v17)
  {
    v17 = [v4 styleAttributes];

    if (v17)
    {
      v18 = [a1 _markerStyleAttributesForCustomStyleAttributes:0 selected:{objc_msgSend(v4, "selected")}];

      v19 = [MEMORY[0x1E69DF430] sharedManager];
      [v4 scale];
      *&v20 = v20;
      v17 = [v19 balloonIconForStyleAttributes:v18 withStylesheetName:@"default" contentScale:8 sizeGroup:v5 modifiers:v20];

      v14 = v18;
    }
  }

  return v17;
}

+ (id)poiBalloonIconForConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v5 setNightMode:{objc_msgSend(v4, "darkMode")}];
  [v5 setIncreaseContrast:{objc_msgSend(v4, "increasedContrast")}];
  [v5 setElevated:{objc_msgSend(v4, "elevated")}];
  v6 = +[MKSystemController sharedInstance];
  [v5 setNewInterfaceEnabled:{objc_msgSend(v6, "isGlassEnabled")}];

  v7 = [v4 styleAttributes];
  v8 = [v7 copy];

  [a1 _updatePickingStateStyleAttribute:v8 selected:{objc_msgSend(v4, "selected")}];
  v9 = [MEMORY[0x1E69DF430] sharedManager];
  [v4 scale];
  *&v10 = v10;
  v11 = [v9 balloonIconForStyleAttributes:v8 withStylesheetName:@"default" contentScale:8 sizeGroup:v5 modifiers:v10];

  return v11;
}

+ (void)requestImageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [v9 _identifier];

  if (v11)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__10797;
    v24 = __Block_byref_object_dispose__10798;
    v25 = 0;
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MKIconManager_requestImageForMapItem_size_forScale_completionHandler___block_invoke;
    block[3] = &unk_1E76C7E40;
    v17 = buf;
    v15 = v9;
    v18 = a4;
    v19 = a5;
    v16 = v10;
    dispatch_async(v12, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = GEOGetMKIconManagerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Cannot request an image for MapItem with no identifier.", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __72__MKIconManager_requestImageForMapItem_size_forScale_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MKIconManager imageForMapItem:*(a1 + 32) size:*(a1 + 56) forScale:0 format:1 fallbackToBundleIcon:*(a1 + 64)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MKIconManager_requestImageForMapItem_size_forScale_completionHandler___block_invoke_2;
  v7[3] = &unk_1E76C9408;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

+ (void)requestImageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MapKit.SnapshotService"];
  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E54D0];
  [v11 setRemoteObjectInterface:v12];

  [v11 resume];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__MKIconManager_requestImageForStyleAttributes_size_scale_completionHandler___block_invoke;
  v21[3] = &unk_1E76C7DF0;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v22 = v14;
  v15 = [v14 remoteObjectProxyWithErrorHandler:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__MKIconManager_requestImageForStyleAttributes_size_scale_completionHandler___block_invoke_2;
  v18[3] = &unk_1E76C7E18;
  v16 = v13;
  v20 = v16;
  v17 = v14;
  v19 = v17;
  [v15 requestIconWithStyleAttributes:v9 size:a4 scale:v18 completionHandler:a5];
}

uint64_t __77__MKIconManager_requestImageForStyleAttributes_size_scale_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __77__MKIconManager_requestImageForStyleAttributes_size_scale_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 isCarplay:(BOOL)a12 nightMode:(BOOL)a13
{
  v13 = a9;
  v14 = a8;
  v16 = *&a6;
  v20 = a3;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __142__MKIconManager_imageForStyle_size_forScale_format_customIconID_fallbackToBundleIcon_transparent_transitmode_interactive_isCarplay_nightMode___block_invoke;
  v36[3] = &unk_1E76C7DC8;
  v41 = a12;
  v42 = a10;
  v43 = v13;
  v44 = a13;
  v34 = v20;
  v37 = v34;
  v38 = a1;
  v39 = a5;
  v40 = a4;
  v21 = MEMORY[0x1A58E9F30](v36);
  if (_diskCache(void)::once != -1)
  {
    dispatch_once(&_diskCache(void)::once, &__block_literal_global_202);
  }

  v22 = _diskCache(void)::singleton;
  v23 = v22;
  if (!a7 && v22 && GEOConfigGetBOOL())
  {
    v24 = [v23 imageForStyleAttributes:v34 size:a4 scale:a12 isCarplay:a10 isTransit:v13 isTransparent:a13 isNightMode:a5 drawingBlock:v21];
  }

  else
  {
    v24 = v21[2](v21);
  }

  v25 = v24;
  if (!v24 && v14)
  {
    v35 = a5;
    v26 = [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:v16 scale:&v35];
    v27 = [MEMORY[0x1E696AAE8] _mapkitBundle];
    v28 = [v27 _cfBundle];

    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v29 = getLICreateIconForBundleSymbolLoc::ptr;
    v53 = getLICreateIconForBundleSymbolLoc::ptr;
    if (!getLICreateIconForBundleSymbolLoc::ptr)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __getLICreateIconForBundleSymbolLoc_block_invoke;
      v48 = &unk_1E76CD7B0;
      v49 = &v50;
      v30 = MobileIconsLibrary();
      v31 = dlsym(v30, "LICreateIconForBundle");
      *(v49[1] + 24) = v31;
      getLICreateIconForBundleSymbolLoc::ptr = *(v49[1] + 24);
      v29 = v51[3];
    }

    _Block_object_dispose(&v50, 8);
    if (!v29)
    {
      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    v32 = (v29)(v28, 0, v26, 0);
    if (v32)
    {
      v25 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v32 scale:0 orientation:v35];
      CGImageRelease(v32);
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

id __142__MKIconManager_imageForStyle_size_forScale_format_customIconID_fallbackToBundleIcon_transparent_transitmode_interactive_isCarplay_nightMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && GEOConfigGetBOOL())
  {
    if (*(a1 + 64))
    {
      v2 = @"default-search-car";
    }

    else
    {
      v2 = @"default-search";
    }

    if (*(a1 + 65) == 1)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DF438]) initTransitModifiers];
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x1E69DF438]);
    }

    v5 = v3;
    if (*(a1 + 66) == 1)
    {
      [v3 setGlyphOnly:1];
    }

    v6 = +[MKSystemController sharedInstance];
    [v5 setNewInterfaceEnabled:{objc_msgSend(v6, "isGlassEnabled")}];

    if (*(a1 + 67) == 1)
    {
      [v5 setNightMode:1];
    }

    v7 = [*(a1 + 40) iconManager];
    v8 = v7;
    v9 = *(a1 + 48);
    *&v9 = v9;
    v10 = *(a1 + 56);
    if (v10 > 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = qword_1A30F75E8[v10];
    }

    v12 = [v7 imageForStyleAttributes:*(a1 + 32) withStylesheetName:v2 contentScale:v11 sizeGroup:v5 modifiers:v9];

    if (v12)
    {
      v13 = CGImageRetain([v12 image]);
      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
        [v12 contentScale];
        v4 = [v14 initWithCGImage:v13 scale:0 orientation:v15];
      }

      else
      {
        v4 = 0;
      }

      CGImageRelease(v13);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 isCarplay:(BOOL)a12
{
  BYTE3(v14) = 0;
  *(&v14 + 1) = __PAIR16__(a12, a11);
  LOBYTE(v14) = a10;
  v12 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:a3 forScale:a4 format:*&a6 customIconID:a7 fallbackToBundleIcon:a8 transparent:a9 transitmode:a5 interactive:v14 isCarplay:? nightMode:?];

  return v12;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11 nightMode:(BOOL)a12
{
  BYTE3(v14) = a12;
  BYTE2(v14) = 0;
  LOWORD(v14) = __PAIR16__(a11, a10);
  v12 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:a3 forScale:a4 format:*&a6 customIconID:a7 fallbackToBundleIcon:a8 transparent:a9 transitmode:a5 interactive:v14 isCarplay:? nightMode:?];

  return v12;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 interactive:(BOOL)a11
{
  BYTE2(v13) = 0;
  LOWORD(v13) = __PAIR16__(a11, a10);
  v11 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:" size:a3 forScale:a4 format:*&a6 customIconID:a7 fallbackToBundleIcon:a8 transparent:a9 transitmode:a5 interactive:v13 isCarplay:?];

  return v11;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10 nightMode:(BOOL)a11
{
  BYTE2(v13) = a11;
  LOWORD(v13) = a10;
  v11 = [a1 imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:a9 transparent:a5 transitmode:v13 interactive:? nightMode:?];

  return v11;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 transitmode:(BOOL)a10
{
  LOWORD(v12) = a10;
  v10 = [a1 imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:a9 transparent:a5 transitmode:v12 interactive:?];

  return v10;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9 nightMode:(BOOL)a10
{
  BYTE1(v12) = a10;
  LOBYTE(v12) = 0;
  v10 = [a1 imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:a9 transparent:a5 transitmode:v12 nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 transparent:(BOOL)a9
{
  LOBYTE(v11) = 0;
  v9 = [a1 imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:a9 transparent:a5 transitmode:v11];

  return v9;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8 nightMode:(BOOL)a9
{
  LOBYTE(v11) = a9;
  v9 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:0 transparent:a5 nightMode:v11];

  return v9;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 fallbackToBundleIcon:(BOOL)a8
{
  v8 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:a8 fallbackToBundleIcon:0 transparent:a5];

  return v8;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7 nightMode:(BOOL)a8
{
  v8 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:0 fallbackToBundleIcon:a8 nightMode:a5];

  return v8;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 customIconID:(unint64_t)a7
{
  v7 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 customIconID:0 fallbackToBundleIcon:a5];

  return v7;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 interactive:(BOOL)a9 nightMode:(BOOL)a10
{
  BYTE2(v12) = a10;
  BYTE1(v12) = a9;
  LOBYTE(v12) = a8;
  v10 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:nightMode:" size:a3 forScale:a4 format:*&a6 customIconID:0 fallbackToBundleIcon:0 transparent:a7 transitmode:a5 interactive:v12 nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 interactive:(BOOL)a9
{
  BYTE1(v11) = a9;
  LOBYTE(v11) = a8;
  v9 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:0 customIconID:0 fallbackToBundleIcon:a7 transparent:a5 transitmode:v11 interactive:?];

  return v9;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 isCarplay:(BOOL)a9 nightMode:(BOOL)a10
{
  BYTE3(v12) = a10;
  BYTE2(v12) = a9;
  LOWORD(v12) = a8;
  v10 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:a3 forScale:a4 format:*&a6 customIconID:0 fallbackToBundleIcon:0 transparent:a7 transitmode:a5 interactive:v12 isCarplay:? nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 isCarplay:(BOOL)a9
{
  BYTE2(v11) = a9;
  LOWORD(v11) = a8;
  v9 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:" size:a3 forScale:a4 format:*&a6 customIconID:0 fallbackToBundleIcon:0 transparent:a7 transitmode:a5 interactive:v11 isCarplay:?];

  return v9;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8 nightMode:(BOOL)a9
{
  LOBYTE(v11) = a9;
  v9 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 transparent:a8 transitMode:0 isCarplay:a5 nightMode:v11];

  return v9;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 transitMode:(BOOL)a8
{
  v8 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:a7 transparent:a8 transitMode:0 isCarplay:a5];

  return v8;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7 nightMode:(BOOL)a8
{
  LOBYTE(v10) = a8;
  v8 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:0 customIconID:0 fallbackToBundleIcon:a7 transparent:a5 nightMode:v10];

  return v8;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 transparent:(BOOL)a7
{
  v7 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:0 customIconID:0 fallbackToBundleIcon:a7 transparent:a5];

  return v7;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 nightMode:(BOOL)a7
{
  v7 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:0 customIconID:0 fallbackToBundleIcon:a7 nightMode:a5];

  return v7;
}

+ (id)imageForStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6
{
  v6 = [MKIconManager imageForStyle:a3 size:a4 forScale:*&a6 format:0 customIconID:0 fallbackToBundleIcon:a5];

  return v6;
}

+ (id)imageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6 fallbackToBundleIcon:(BOOL)a7
{
  v7 = a7;
  v8 = *&a6;
  v11 = a3;
  v12 = [v11 _styleAttributes];
  v13 = +[MKIconManager imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:](MKIconManager, "imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:", v12, a4, v8, [v11 _customIconID], v7, a5);

  return v13;
}

+ (id)imageForMapItem:(id)a3 size:(unint64_t)a4 forScale:(double)a5 format:(int)a6
{
  v6 = [MKIconManager imageForMapItem:a3 size:a4 forScale:*&a6 format:1 fallbackToBundleIcon:a5];

  return v6;
}

+ (id)imageForMapItem:(id)a3 forScale:(double)a4 fallbackToBundleIcon:(BOOL)a5
{
  v5 = [MKIconManager imageForMapItem:a3 size:3 forScale:0 format:a5 fallbackToBundleIcon:a4];

  return v5;
}

+ (id)imageForMapItem:(id)a3 forScale:(double)a4
{
  v4 = [MKIconManager imageForMapItem:a3 forScale:1 fallbackToBundleIcon:a4];

  return v4;
}

+ (id)imageForIconID:(unsigned int)a3 contentScale:(double)a4 sizeGroup:(unint64_t)a5 nightMode:(BOOL)a6
{
  v6 = a6;
  v9 = *&a3;
  v11 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v11 setNightMode:v6];
  v12 = +[MKSystemController sharedInstance];
  [v11 setNewInterfaceEnabled:{objc_msgSend(v12, "isGlassEnabled")}];

  v13 = [a1 iconManager];
  v15 = v13;
  if (a5 > 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = qword_1A30F75E8[a5];
  }

  *&v14 = a4;
  v17 = [v13 imageForIconID:v9 contentScale:v16 sizeGroup:v11 modifiers:v14];

  if (v17)
  {
    v18 = [v17 image];
    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v17 contentScale];
      v18 = [v19 initWithCGImage:v18 scale:0 orientation:v20];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)imageForRouteAnnotationStyle:(id)a3 size:(unint64_t)a4 forScale:(double)a5
{
  v5 = [a1 _imageForFeatureStyleAttributes:a3 size:a4 forScale:0 nightMode:a5];

  return v5;
}

+ (id)imageForTrafficIncidentType:(int64_t)a3 size:(unint64_t)a4 forScale:(double)a5 nightMode:(BOOL)a6
{
  v6 = a6;
  v10 = [MEMORY[0x1E69A1DB0] styleAttributesForTrafficIncidentType:a3];
  v11 = [a1 _imageForFeatureStyleAttributes:v10 size:a4 forScale:v6 nightMode:a5];

  return v11;
}

+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 nightMode:(BOOL)a6
{
  v6 = [a1 _imageForFeatureStyleAttributes:a3 size:a4 forScale:0 navMode:a6 nightMode:a5];

  return v6;
}

+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5
{
  v5 = [a1 _imageForFeatureStyleAttributes:a3 size:a4 forScale:0 navMode:a5];

  return v5;
}

+ (id)_imageForFeatureStyleAttributes:(id)a3 iconText:(id)a4 size:(unint64_t)a5 forScale:(double)a6 navMode:(BOOL)a7 nightMode:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = [objc_alloc(MEMORY[0x1E69DF438]) initNavigationModifiers];
  [v15 setNightMode:v8];
  [v15 setText:v14];
  v16 = +[MKSystemController sharedInstance];
  [v15 setNewInterfaceEnabled:{objc_msgSend(v16, "isGlassEnabled")}];

  v17 = [a1 iconManager];
  v19 = v17;
  if (a5 > 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = qword_1A30F75E8[a5];
  }

  *&v18 = a6;
  v21 = [v17 imageForStyleAttributes:v13 withStylesheetName:@"default-search" contentScale:v20 sizeGroup:v15 modifiers:v18];

  if (v21)
  {
    v22 = [v21 image];
    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v21 contentScale];
      v22 = [v23 initWithCGImage:v22 scale:0 orientation:v24];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 navMode:(BOOL)a6 nightMode:(BOOL)a7
{
  v7 = [a1 _imageForFeatureStyleAttributes:a3 iconText:0 size:a4 forScale:a6 navMode:a7 nightMode:a5];

  return v7;
}

+ (id)_imageForFeatureStyleAttributes:(id)a3 size:(unint64_t)a4 forScale:(double)a5 navMode:(BOOL)a6
{
  v6 = [a1 _imageForFeatureStyleAttributes:a3 iconText:0 size:a4 forScale:a6 navMode:0 nightMode:a5];

  return v6;
}

+ (CGColor)newGlyphColorForStyleAttributes:(id)a3 forScale:(double)a4
{
  v6 = a3;
  v7 = [a1 iconManager];
  *&v8 = a4;
  v9 = [v7 imageForStyleAttributes:v6 withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

  if (v9)
  {
    v10 = CGColorRetain([v9 glyphColor]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGColor)newHaloColorForStyleAttributes:(id)a3 forScale:(double)a4
{
  v6 = a3;
  v7 = [a1 iconManager];
  *&v8 = a4;
  v9 = [v7 imageForStyleAttributes:v6 withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

  if (v9)
  {
    v10 = CGColorRetain([v9 haloColor]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGColor)newFillColorForStyleAttributes:(id)a3 forScale:(double)a4
{
  v6 = a3;
  v7 = [a1 iconManager];
  *&v8 = a4;
  v9 = [v7 imageForStyleAttributes:v6 withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

  if (v9)
  {
    v10 = CGColorRetain([v9 fillColor]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end