@interface MKIconManager
+ (CGColor)newFillColorForStyleAttributes:(id)attributes forScale:(double)scale;
+ (CGColor)newGlyphColorForStyleAttributes:(id)attributes forScale:(double)scale;
+ (CGColor)newHaloColorForStyleAttributes:(id)attributes forScale:(double)scale;
+ (id)_imageForFeatureStyleAttributes:(id)attributes iconText:(id)text size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode nightMode:(BOOL)nightMode;
+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale;
+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode;
+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode nightMode:(BOOL)nightMode;
+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale nightMode:(BOOL)mode;
+ (id)_markerStyleAttributesForCustomStyleAttributes:(id)attributes selected:(BOOL)selected;
+ (id)imageForIconID:(unsigned int)d contentScale:(double)scale sizeGroup:(unint64_t)group nightMode:(BOOL)mode;
+ (id)imageForMapItem:(id)item forScale:(double)scale;
+ (id)imageForMapItem:(id)item forScale:(double)scale fallbackToBundleIcon:(BOOL)icon;
+ (id)imageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale format:(int)format;
+ (id)imageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale format:(int)format fallbackToBundleIcon:(BOOL)icon;
+ (id)imageForRouteAnnotationStyle:(id)style size:(unint64_t)size forScale:(double)scale;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon nightMode:(BOOL)mode;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent nightMode:(BOOL)self0;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 isCarplay:(BOOL)self2;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 isCarplay:(BOOL)self2 nightMode:(BOOL)self3;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 nightMode:(BOOL)self2;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 nightMode:(BOOL)self1;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d nightMode:(BOOL)mode;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format nightMode:(BOOL)mode;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent nightMode:(BOOL)mode;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode interactive:(BOOL)interactive;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode interactive:(BOOL)interactive nightMode:(BOOL)self0;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode isCarplay:(BOOL)carplay;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode isCarplay:(BOOL)carplay nightMode:(BOOL)self0;
+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode nightMode:(BOOL)nightMode;
+ (id)imageForTrafficIncidentType:(int64_t)type size:(unint64_t)size forScale:(double)scale nightMode:(BOOL)mode;
+ (id)markerBalloonIconForConfiguration:(id)configuration;
+ (id)poiBalloonIconForConfiguration:(id)configuration;
+ (void)_updatePickingStateStyleAttribute:(id)attribute selected:(BOOL)selected;
+ (void)requestImageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale completionHandler:(id)handler;
+ (void)requestImageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler;
@end

@implementation MKIconManager

+ (id)_markerStyleAttributesForCustomStyleAttributes:(id)attributes selected:(BOOL)selected
{
  selectedCopy = selected;
  v17 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v6 = attributesCopy;
  if (attributesCopy)
  {
    v7 = [attributesCopy copy];

    if ([v7 poiType] == -1)
    {
      poiType = 348;
    }

    else
    {
      poiType = [v7 poiType];
    }

    v10 = 0x300000005;
    v11 = 6;
    v12 = poiType;
    v13 = xmmword_1A30F7100;
    v14 = 65617;
    v15 = 65573;
    v16 = selectedCopy;
    [v7 replaceAttributes:&v10 count:6];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 348, 65572, 1, 65567, 3, 65617, 0, 65573, selectedCopy, 0}];
  }

  return v7;
}

+ (void)_updatePickingStateStyleAttribute:(id)attribute selected:(BOOL)selected
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x100010025;
  [attribute replaceAttributes:v4 count:1];
}

+ (id)markerBalloonIconForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  initSearchResultModifiers = [objc_alloc(MEMORY[0x1E69DF438]) initSearchResultModifiers];
  [initSearchResultModifiers setNightMode:{objc_msgSend(configurationCopy, "darkMode")}];
  [initSearchResultModifiers setGlyphHidden:{objc_msgSend(configurationCopy, "glyphHidden")}];
  [initSearchResultModifiers setIncreaseContrast:{objc_msgSend(configurationCopy, "increasedContrast")}];
  v6 = +[MKSystemController sharedInstance];
  [initSearchResultModifiers setNewInterfaceEnabled:{objc_msgSend(v6, "isGlassEnabled")}];

  glyphColor = [configurationCopy glyphColor];

  if (glyphColor)
  {
    glyphColor2 = [configurationCopy glyphColor];
    *&v9 = MKGetVKColorForMKColor(glyphColor2);
    [initSearchResultModifiers setGlyphColor:v9];
  }

  fillColor = [configurationCopy fillColor];

  if (fillColor)
  {
    fillColor2 = [configurationCopy fillColor];
    *&v12 = MKGetVKColorForMKColor(fillColor2);
    [initSearchResultModifiers setFillColor:v12];
  }

  styleAttributes = [configurationCopy styleAttributes];
  v14 = [self _markerStyleAttributesForCustomStyleAttributes:styleAttributes selected:{objc_msgSend(configurationCopy, "selected")}];

  mEMORY[0x1E69DF430] = [MEMORY[0x1E69DF430] sharedManager];
  [configurationCopy scale];
  *&v16 = v16;
  styleAttributes2 = [mEMORY[0x1E69DF430] balloonIconForStyleAttributes:v14 withStylesheetName:@"default" contentScale:8 sizeGroup:initSearchResultModifiers modifiers:v16];

  if (!styleAttributes2)
  {
    styleAttributes2 = [configurationCopy styleAttributes];

    if (styleAttributes2)
    {
      v18 = [self _markerStyleAttributesForCustomStyleAttributes:0 selected:{objc_msgSend(configurationCopy, "selected")}];

      mEMORY[0x1E69DF430]2 = [MEMORY[0x1E69DF430] sharedManager];
      [configurationCopy scale];
      *&v20 = v20;
      styleAttributes2 = [mEMORY[0x1E69DF430]2 balloonIconForStyleAttributes:v18 withStylesheetName:@"default" contentScale:8 sizeGroup:initSearchResultModifiers modifiers:v20];

      v14 = v18;
    }
  }

  return styleAttributes2;
}

+ (id)poiBalloonIconForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v5 setNightMode:{objc_msgSend(configurationCopy, "darkMode")}];
  [v5 setIncreaseContrast:{objc_msgSend(configurationCopy, "increasedContrast")}];
  [v5 setElevated:{objc_msgSend(configurationCopy, "elevated")}];
  v6 = +[MKSystemController sharedInstance];
  [v5 setNewInterfaceEnabled:{objc_msgSend(v6, "isGlassEnabled")}];

  styleAttributes = [configurationCopy styleAttributes];
  v8 = [styleAttributes copy];

  [self _updatePickingStateStyleAttribute:v8 selected:{objc_msgSend(configurationCopy, "selected")}];
  mEMORY[0x1E69DF430] = [MEMORY[0x1E69DF430] sharedManager];
  [configurationCopy scale];
  *&v10 = v10;
  v11 = [mEMORY[0x1E69DF430] balloonIconForStyleAttributes:v8 withStylesheetName:@"default" contentScale:8 sizeGroup:v5 modifiers:v10];

  return v11;
}

+ (void)requestImageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  _identifier = [itemCopy _identifier];

  if (_identifier)
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
    v15 = itemCopy;
    sizeCopy = size;
    scaleCopy = scale;
    v16 = handlerCopy;
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

    (*(handlerCopy + 2))(handlerCopy, 0);
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

+ (void)requestImageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MapKit.SnapshotService"];
  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E54D0];
  [v11 setRemoteObjectInterface:v12];

  [v11 resume];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__MKIconManager_requestImageForStyleAttributes_size_scale_completionHandler___block_invoke;
  v21[3] = &unk_1E76C7DF0;
  v13 = handlerCopy;
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
  [v15 requestIconWithStyleAttributes:attributesCopy size:size scale:v18 completionHandler:scale];
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

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 isCarplay:(BOOL)self2 nightMode:(BOOL)self3
{
  transparentCopy = transparent;
  iconCopy = icon;
  v16 = *&format;
  styleCopy = style;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __142__MKIconManager_imageForStyle_size_forScale_format_customIconID_fallbackToBundleIcon_transparent_transitmode_interactive_isCarplay_nightMode___block_invoke;
  v36[3] = &unk_1E76C7DC8;
  carplayCopy = carplay;
  transitmodeCopy = transitmode;
  v43 = transparentCopy;
  modeCopy = mode;
  v34 = styleCopy;
  v37 = v34;
  selfCopy = self;
  scaleCopy = scale;
  sizeCopy = size;
  v21 = MEMORY[0x1A58E9F30](v36);
  if (_diskCache(void)::once != -1)
  {
    dispatch_once(&_diskCache(void)::once, &__block_literal_global_202);
  }

  v22 = _diskCache(void)::singleton;
  v23 = v22;
  if (!d && v22 && GEOConfigGetBOOL())
  {
    v24 = [v23 imageForStyleAttributes:v34 size:size scale:carplay isCarplay:transitmode isTransit:transparentCopy isTransparent:mode isNightMode:scale drawingBlock:v21];
  }

  else
  {
    v24 = v21[2](v21);
  }

  v25 = v24;
  if (!v24 && iconCopy)
  {
    scaleCopy2 = scale;
    v26 = [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:v16 scale:&scaleCopy2];
    _mapkitBundle = [MEMORY[0x1E696AAE8] _mapkitBundle];
    _cfBundle = [_mapkitBundle _cfBundle];

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

    v32 = (v29)(_cfBundle, 0, v26, 0);
    if (v32)
    {
      v25 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v32 scale:0 orientation:scaleCopy2];
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

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 isCarplay:(BOOL)self2
{
  BYTE3(v14) = 0;
  *(&v14 + 1) = __PAIR16__(carplay, interactive);
  LOBYTE(v14) = transitmode;
  v12 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:style forScale:size format:*&format customIconID:d fallbackToBundleIcon:icon transparent:transparent transitmode:scale interactive:v14 isCarplay:? nightMode:?];

  return v12;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1 nightMode:(BOOL)self2
{
  BYTE3(v14) = mode;
  BYTE2(v14) = 0;
  LOWORD(v14) = __PAIR16__(interactive, transitmode);
  v12 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:style forScale:size format:*&format customIconID:d fallbackToBundleIcon:icon transparent:transparent transitmode:scale interactive:v14 isCarplay:? nightMode:?];

  return v12;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 interactive:(BOOL)self1
{
  BYTE2(v13) = 0;
  LOWORD(v13) = __PAIR16__(interactive, transitmode);
  v11 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:" size:style forScale:size format:*&format customIconID:d fallbackToBundleIcon:icon transparent:transparent transitmode:scale interactive:v13 isCarplay:?];

  return v11;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0 nightMode:(BOOL)self1
{
  BYTE2(v13) = mode;
  LOWORD(v13) = transitmode;
  v11 = [self imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:transparent transparent:scale transitmode:v13 interactive:? nightMode:?];

  return v11;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent transitmode:(BOOL)self0
{
  LOWORD(v12) = transitmode;
  v10 = [self imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:transparent transparent:scale transitmode:v12 interactive:?];

  return v10;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent nightMode:(BOOL)self0
{
  BYTE1(v12) = mode;
  LOBYTE(v12) = 0;
  v10 = [self imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:transparent transparent:scale transitmode:v12 nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon transparent:(BOOL)transparent
{
  LOBYTE(v11) = 0;
  v9 = [self imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:transparent transparent:scale transitmode:v11];

  return v9;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon nightMode:(BOOL)mode
{
  LOBYTE(v11) = mode;
  v9 = [MKIconManager imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:0 transparent:scale nightMode:v11];

  return v9;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d fallbackToBundleIcon:(BOOL)icon
{
  v8 = [MKIconManager imageForStyle:style size:size forScale:*&format format:d customIconID:icon fallbackToBundleIcon:0 transparent:scale];

  return v8;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d nightMode:(BOOL)mode
{
  v8 = [MKIconManager imageForStyle:style size:size forScale:*&format format:d customIconID:0 fallbackToBundleIcon:mode nightMode:scale];

  return v8;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format customIconID:(unint64_t)d
{
  v7 = [MKIconManager imageForStyle:style size:size forScale:*&format format:d customIconID:0 fallbackToBundleIcon:scale];

  return v7;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode interactive:(BOOL)interactive nightMode:(BOOL)self0
{
  BYTE2(v12) = nightMode;
  BYTE1(v12) = interactive;
  LOBYTE(v12) = mode;
  v10 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:nightMode:" size:style forScale:size format:*&format customIconID:0 fallbackToBundleIcon:0 transparent:transparent transitmode:scale interactive:v12 nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode interactive:(BOOL)interactive
{
  BYTE1(v11) = interactive;
  LOBYTE(v11) = mode;
  v9 = [MKIconManager imageForStyle:style size:size forScale:*&format format:0 customIconID:0 fallbackToBundleIcon:transparent transparent:scale transitmode:v11 interactive:?];

  return v9;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode isCarplay:(BOOL)carplay nightMode:(BOOL)self0
{
  BYTE3(v12) = nightMode;
  BYTE2(v12) = carplay;
  LOWORD(v12) = mode;
  v10 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:nightMode:" size:style forScale:size format:*&format customIconID:0 fallbackToBundleIcon:0 transparent:transparent transitmode:scale interactive:v12 isCarplay:? nightMode:?];

  return v10;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode isCarplay:(BOOL)carplay
{
  BYTE2(v11) = carplay;
  LOWORD(v11) = mode;
  v9 = [MKIconManager imageForStyle:"imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:transparent:transitmode:interactive:isCarplay:" size:style forScale:size format:*&format customIconID:0 fallbackToBundleIcon:0 transparent:transparent transitmode:scale interactive:v11 isCarplay:?];

  return v9;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode nightMode:(BOOL)nightMode
{
  LOBYTE(v11) = nightMode;
  v9 = [MKIconManager imageForStyle:style size:size forScale:*&format format:transparent transparent:mode transitMode:0 isCarplay:scale nightMode:v11];

  return v9;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent transitMode:(BOOL)mode
{
  v8 = [MKIconManager imageForStyle:style size:size forScale:*&format format:transparent transparent:mode transitMode:0 isCarplay:scale];

  return v8;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent nightMode:(BOOL)mode
{
  LOBYTE(v10) = mode;
  v8 = [MKIconManager imageForStyle:style size:size forScale:*&format format:0 customIconID:0 fallbackToBundleIcon:transparent transparent:scale nightMode:v10];

  return v8;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format transparent:(BOOL)transparent
{
  v7 = [MKIconManager imageForStyle:style size:size forScale:*&format format:0 customIconID:0 fallbackToBundleIcon:transparent transparent:scale];

  return v7;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format nightMode:(BOOL)mode
{
  v7 = [MKIconManager imageForStyle:style size:size forScale:*&format format:0 customIconID:0 fallbackToBundleIcon:mode nightMode:scale];

  return v7;
}

+ (id)imageForStyle:(id)style size:(unint64_t)size forScale:(double)scale format:(int)format
{
  v6 = [MKIconManager imageForStyle:style size:size forScale:*&format format:0 customIconID:0 fallbackToBundleIcon:scale];

  return v6;
}

+ (id)imageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale format:(int)format fallbackToBundleIcon:(BOOL)icon
{
  iconCopy = icon;
  v8 = *&format;
  itemCopy = item;
  _styleAttributes = [itemCopy _styleAttributes];
  v13 = +[MKIconManager imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:](MKIconManager, "imageForStyle:size:forScale:format:customIconID:fallbackToBundleIcon:", _styleAttributes, size, v8, [itemCopy _customIconID], iconCopy, scale);

  return v13;
}

+ (id)imageForMapItem:(id)item size:(unint64_t)size forScale:(double)scale format:(int)format
{
  v6 = [MKIconManager imageForMapItem:item size:size forScale:*&format format:1 fallbackToBundleIcon:scale];

  return v6;
}

+ (id)imageForMapItem:(id)item forScale:(double)scale fallbackToBundleIcon:(BOOL)icon
{
  v5 = [MKIconManager imageForMapItem:item size:3 forScale:0 format:icon fallbackToBundleIcon:scale];

  return v5;
}

+ (id)imageForMapItem:(id)item forScale:(double)scale
{
  v4 = [MKIconManager imageForMapItem:item forScale:1 fallbackToBundleIcon:scale];

  return v4;
}

+ (id)imageForIconID:(unsigned int)d contentScale:(double)scale sizeGroup:(unint64_t)group nightMode:(BOOL)mode
{
  modeCopy = mode;
  v9 = *&d;
  v11 = objc_alloc_init(MEMORY[0x1E69DF438]);
  [v11 setNightMode:modeCopy];
  v12 = +[MKSystemController sharedInstance];
  [v11 setNewInterfaceEnabled:{objc_msgSend(v12, "isGlassEnabled")}];

  iconManager = [self iconManager];
  v15 = iconManager;
  if (group > 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = qword_1A30F75E8[group];
  }

  *&v14 = scale;
  v17 = [iconManager imageForIconID:v9 contentScale:v16 sizeGroup:v11 modifiers:v14];

  if (v17)
  {
    image = [v17 image];
    if (image)
    {
      v19 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v17 contentScale];
      image = [v19 initWithCGImage:image scale:0 orientation:v20];
    }
  }

  else
  {
    image = 0;
  }

  return image;
}

+ (id)imageForRouteAnnotationStyle:(id)style size:(unint64_t)size forScale:(double)scale
{
  v5 = [self _imageForFeatureStyleAttributes:style size:size forScale:0 nightMode:scale];

  return v5;
}

+ (id)imageForTrafficIncidentType:(int64_t)type size:(unint64_t)size forScale:(double)scale nightMode:(BOOL)mode
{
  modeCopy = mode;
  v10 = [MEMORY[0x1E69A1DB0] styleAttributesForTrafficIncidentType:type];
  v11 = [self _imageForFeatureStyleAttributes:v10 size:size forScale:modeCopy nightMode:scale];

  return v11;
}

+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale nightMode:(BOOL)mode
{
  v6 = [self _imageForFeatureStyleAttributes:attributes size:size forScale:0 navMode:mode nightMode:scale];

  return v6;
}

+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale
{
  v5 = [self _imageForFeatureStyleAttributes:attributes size:size forScale:0 navMode:scale];

  return v5;
}

+ (id)_imageForFeatureStyleAttributes:(id)attributes iconText:(id)text size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode nightMode:(BOOL)nightMode
{
  nightModeCopy = nightMode;
  attributesCopy = attributes;
  textCopy = text;
  initNavigationModifiers = [objc_alloc(MEMORY[0x1E69DF438]) initNavigationModifiers];
  [initNavigationModifiers setNightMode:nightModeCopy];
  [initNavigationModifiers setText:textCopy];
  v16 = +[MKSystemController sharedInstance];
  [initNavigationModifiers setNewInterfaceEnabled:{objc_msgSend(v16, "isGlassEnabled")}];

  iconManager = [self iconManager];
  v19 = iconManager;
  if (size > 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = qword_1A30F75E8[size];
  }

  *&v18 = scale;
  v21 = [iconManager imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:v20 sizeGroup:initNavigationModifiers modifiers:v18];

  if (v21)
  {
    image = [v21 image];
    if (image)
    {
      v23 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v21 contentScale];
      image = [v23 initWithCGImage:image scale:0 orientation:v24];
    }
  }

  else
  {
    image = 0;
  }

  return image;
}

+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode nightMode:(BOOL)nightMode
{
  v7 = [self _imageForFeatureStyleAttributes:attributes iconText:0 size:size forScale:mode navMode:nightMode nightMode:scale];

  return v7;
}

+ (id)_imageForFeatureStyleAttributes:(id)attributes size:(unint64_t)size forScale:(double)scale navMode:(BOOL)mode
{
  v6 = [self _imageForFeatureStyleAttributes:attributes iconText:0 size:size forScale:mode navMode:0 nightMode:scale];

  return v6;
}

+ (CGColor)newGlyphColorForStyleAttributes:(id)attributes forScale:(double)scale
{
  attributesCopy = attributes;
  iconManager = [self iconManager];
  *&v8 = scale;
  v9 = [iconManager imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

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

+ (CGColor)newHaloColorForStyleAttributes:(id)attributes forScale:(double)scale
{
  attributesCopy = attributes;
  iconManager = [self iconManager];
  *&v8 = scale;
  v9 = [iconManager imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

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

+ (CGColor)newFillColorForStyleAttributes:(id)attributes forScale:(double)scale
{
  attributesCopy = attributes;
  iconManager = [self iconManager];
  *&v8 = scale;
  v9 = [iconManager imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:4 sizeGroup:0 modifiers:v8];

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