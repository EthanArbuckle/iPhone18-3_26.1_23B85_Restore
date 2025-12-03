@interface MKMapSnapshotOptions
- ($F9C4767691F2EDF2F3162F5FE7B1523A)_resolvedCartographicConfigurationWithAuditToken:(SEL)token;
- (BOOL)_overlaysRequireModernMap;
- (BOOL)_overlaysSupportElevation;
- (BOOL)_showsPointsOfInterest;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (MKCoordinateRegion)region;
- (MKMapRect)mapRect;
- (MKMapSnapshotOptions)init;
- (MKMapSnapshotOptions)initWithCoder:(id)coder;
- (UIEdgeInsets)_edgeInsets;
- (id)_allOverlayRenderers;
- (id)_allOverlays;
- (id)_encodableOverlayRenderers;
- (id)_overlayRenderersForOverlayLevel:(int64_t)level;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addCameraKVO;
- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_prepareToSubmit;
- (void)_removeCameraKVO;
- (void)_setCamera:(id)camera;
- (void)_setCartographicConfiguration:(id *)configuration;
- (void)_setComposedRouteForRouteLine:(id)line;
- (void)_setOverlayRenderers:(id)renderers forOverlayLevel:(int64_t)level;
- (void)_setSelectedTrailWithId:(id)id name:(id)name locale:(id)locale;
- (void)_setShowsNightMode:(BOOL)mode;
- (void)_setUseSnapshotService:(BOOL)service;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCamera:(MKMapCamera *)camera;
- (void)setMapRect:(MKMapRect)mapRect;
- (void)setMapType:(MKMapType)mapType;
- (void)setRegion:(MKCoordinateRegion)region;
- (void)setScale:(CGFloat)scale;
- (void)setShowsBuildings:(BOOL)showsBuildings;
- (void)setShowsPointsOfInterest:(BOOL)showsPointsOfInterest;
- (void)setSize:(CGSize)size;
- (void)setTraitCollection:(UITraitCollection *)traitCollection;
@end

@implementation MKMapSnapshotOptions

- (id)_allOverlayRenderers
{
  v3 = [(MKMapSnapshotOptions *)self _overlayRenderersForOverlayLevel:0];
  v4 = [(MKMapSnapshotOptions *)self _overlayRenderersForOverlayLevel:1];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)_edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MKCoordinateRegion)region
{
  latitude = self->_region.center.latitude;
  longitude = self->_region.center.longitude;
  latitudeDelta = self->_region.span.latitudeDelta;
  longitudeDelta = self->_region.span.longitudeDelta;
  result.span.longitudeDelta = longitudeDelta;
  result.span.latitudeDelta = latitudeDelta;
  result.center.longitude = longitude;
  result.center.latitude = latitude;
  return result;
}

- (MKMapRect)mapRect
{
  x = self->_mapRect.origin.x;
  y = self->_mapRect.origin.y;
  width = self->_mapRect.size.width;
  height = self->_mapRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (MKCameraKVOContext == context)
  {
    width = self->_size.width;
    *&width = width;
    height = self->_size.height;
    *&width = *&width / height;
    [(MKMapCamera *)self->_camera _enclosingGEOMapRectForAspectRatio:path, object, change, width];
    self->_mapRect = v9;
    self->_region = MKCoordinateRegionForMapRect(v9);
    self->_mode = 2;
  }
}

- (void)_prepareToSubmit
{
  if (([(UITraitCollection *)self->_traitCollection userInterfaceStyle]- 1) >= 2 && !self->_allowsSimultaneousLightDarkSnapshots)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    traitCollection = self->_traitCollection;
    if (traitCollection)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__MKMapSnapshotOptions__prepareToSubmit__block_invoke;
      v11[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
      v11[4] = v5;
      v7 = [(UITraitCollection *)traitCollection traitCollectionByModifyingTraits:v11];
      v8 = self->_traitCollection;
      self->_traitCollection = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v5];
      v10 = self->_traitCollection;
      self->_traitCollection = v9;
    }
  }
}

- (void)_setSelectedTrailWithId:(id)id name:(id)name locale:(id)locale
{
  idCopy = id;
  nameCopy = name;
  localeCopy = locale;
  selectedTrailID = self->_selectedTrailID;
  self->_selectedTrailID = idCopy;
  v15 = idCopy;

  selectedTrailName = self->_selectedTrailName;
  self->_selectedTrailName = nameCopy;
  v13 = nameCopy;

  selectedTrailLocale = self->_selectedTrailLocale;
  self->_selectedTrailLocale = localeCopy;
}

- (id)_allOverlays
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _allOverlayRenderers = [(MKMapSnapshotOptions *)self _allOverlayRenderers];
  v5 = [_allOverlayRenderers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_allOverlayRenderers);
        }

        overlay = [*(*(&v11 + 1) + 8 * i) overlay];
        [array addObject:overlay];
      }

      v6 = [_allOverlayRenderers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)_overlayRenderersForOverlayLevel:(int64_t)level
{
  overlayRenderers = self->_overlayRenderers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  v5 = [(NSMutableDictionary *)overlayRenderers objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (void)_setOverlayRenderers:(id)renderers forOverlayLevel:(int64_t)level
{
  renderersCopy = renderers;
  overlayRenderers = self->_overlayRenderers;
  if (!overlayRenderers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_overlayRenderers;
    self->_overlayRenderers = dictionary;

    overlayRenderers = self->_overlayRenderers;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  [(NSMutableDictionary *)overlayRenderers setObject:renderersCopy forKeyedSubscript:v9];
}

- (void)_setComposedRouteForRouteLine:(id)line
{
  v8 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  v4 = MEMORY[0x1E695DEC8];
  lineCopy2 = line;
  v6 = [v4 arrayWithObjects:&lineCopy count:1];

  [(MKMapSnapshotOptions *)self _setComposedRoutesForRouteLines:v6 selectedRouteIndex:0, lineCopy, v8];
}

- (void)setShowsBuildings:(BOOL)showsBuildings
{
  if (_MKLinkedOnOrAfterReleaseSet(3595))
  {
    v5 = 0;
    if (showsBuildings)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = GEOConfigGetBOOL() ^ 1;
    if (showsBuildings)
    {
      goto LABEL_11;
    }
  }

  if ((v5 & 1) == 0)
  {
    [(MKMapSnapshotOptions *)self _cartographicConfiguration];
    if (v7 == 2)
    {
      showsBuildings = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "WARNING: Setting MKMapSnapshotter.Options showsBuildings to false is no longer supported.", v6, 2u);
      }

      showsBuildings = 1;
    }
  }

LABEL_11:
  self->_showsBuildings = showsBuildings;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(_selectedTrailLocale) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      camera = [(MKMapSnapshotOptions *)self camera];
      camera2 = [(MKMapSnapshotOptions *)v5 camera];
      if (![camera isEqual:camera2])
      {
        LOBYTE(_selectedTrailLocale) = 0;
LABEL_28:

        goto LABEL_29;
      }

      preferredConfiguration = [(MKMapSnapshotOptions *)self preferredConfiguration];
      preferredConfiguration2 = [(MKMapSnapshotOptions *)v5 preferredConfiguration];
      if (![preferredConfiguration isEqual:preferredConfiguration2] || (v10 = -[MKMapSnapshotOptions showsBuildings](self, "showsBuildings"), v10 != -[MKMapSnapshotOptions showsBuildings](v5, "showsBuildings")))
      {
        LOBYTE(_selectedTrailLocale) = 0;
LABEL_27:

        goto LABEL_28;
      }

      pointOfInterestFilter = [(MKMapSnapshotOptions *)self pointOfInterestFilter];
      pointOfInterestFilter2 = [(MKMapSnapshotOptions *)v5 pointOfInterestFilter];
      v14 = pointOfInterestFilter;
      v15 = pointOfInterestFilter2;
      if (v14 | v15 && (LODWORD(_selectedTrailLocale) = [v14 isEqual:v15], v15, v14, !_selectedTrailLocale) || (-[MKMapSnapshotOptions size](self, "size"), v17 = v16, v19 = v18, -[MKMapSnapshotOptions size](v5, "size"), LOBYTE(_selectedTrailLocale) = 0, v17 != v21) || v19 != v20)
      {
LABEL_26:

        goto LABEL_27;
      }

      traitCollection = [(MKMapSnapshotOptions *)self traitCollection];
      [traitCollection displayScale];
      v23 = v22;
      traitCollection2 = [(MKMapSnapshotOptions *)v5 traitCollection];
      [traitCollection2 displayScale];
      if (v23 != v24)
      {
        LOBYTE(_selectedTrailLocale) = 0;
        v34 = traitCollection;
        goto LABEL_25;
      }

      traitCollection3 = [(MKMapSnapshotOptions *)self traitCollection];
      userInterfaceStyle = [traitCollection3 userInterfaceStyle];
      traitCollection4 = [(MKMapSnapshotOptions *)v5 traitCollection];
      if (userInterfaceStyle != [traitCollection4 userInterfaceStyle] || (-[MKMapSnapshotOptions _edgeInsets](v5, "_edgeInsets"), v27.f64[1] = v26, v29.f64[1] = v28, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v27), vceqq_f64(*&self->_edgeInsets.bottom, v29)))) & 1) == 0) || (allowsSimultaneousLightDarkSnapshots = self->_allowsSimultaneousLightDarkSnapshots, allowsSimultaneousLightDarkSnapshots != -[MKMapSnapshotOptions _allowsSimultaneousLightDarkSnapshots](v5, "_allowsSimultaneousLightDarkSnapshots")) || (networkUsageMode = self->_networkUsageMode, networkUsageMode != -[MKMapSnapshotOptions _networkUsageMode](v5, "_networkUsageMode")))
      {
        LOBYTE(_selectedTrailLocale) = 0;
        v34 = traitCollection;
LABEL_23:

LABEL_25:
        goto LABEL_26;
      }

      _selectedTrailID = [(MKMapSnapshotOptions *)self _selectedTrailID];
      _selectedTrailID2 = [(MKMapSnapshotOptions *)v5 _selectedTrailID];
      v50 = _selectedTrailID;
      if (_selectedTrailID != _selectedTrailID2)
      {
        _selectedTrailID3 = [(MKMapSnapshotOptions *)self _selectedTrailID];
        _selectedTrailID4 = [(MKMapSnapshotOptions *)v5 _selectedTrailID];
        v46 = _selectedTrailID3;
        if (![_selectedTrailID3 isEqual:?])
        {
          LOBYTE(_selectedTrailLocale) = 0;
          v34 = traitCollection;
          goto LABEL_40;
        }
      }

      _selectedTrailName = [(MKMapSnapshotOptions *)self _selectedTrailName];
      _selectedTrailName2 = [(MKMapSnapshotOptions *)v5 _selectedTrailName];
      v48 = _selectedTrailName;
      if (_selectedTrailName == _selectedTrailName2 || (-[MKMapSnapshotOptions _selectedTrailName](self, "_selectedTrailName"), v37 = objc_claimAutoreleasedReturnValue(), -[MKMapSnapshotOptions _selectedTrailName](v5, "_selectedTrailName"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v37, [v37 isEqualToString:?]))
      {
        _selectedTrailLocale = [(MKMapSnapshotOptions *)self _selectedTrailLocale];
        _selectedTrailLocale2 = [(MKMapSnapshotOptions *)v5 _selectedTrailLocale];
        v44 = _selectedTrailLocale;
        if (_selectedTrailLocale == _selectedTrailLocale2)
        {

          LOBYTE(_selectedTrailLocale) = 1;
        }

        else
        {
          v41 = _selectedTrailLocale2;
          _selectedTrailLocale3 = [(MKMapSnapshotOptions *)self _selectedTrailLocale];
          _selectedTrailLocale4 = [(MKMapSnapshotOptions *)v5 _selectedTrailLocale];
          LOBYTE(_selectedTrailLocale) = [_selectedTrailLocale3 isEqualToString:_selectedTrailLocale4];
        }

        v34 = traitCollection;
        if (v48 == _selectedTrailName2)
        {

LABEL_39:
          if (v50 == _selectedTrailID2)
          {
LABEL_41:

            goto LABEL_23;
          }

LABEL_40:

          goto LABEL_41;
        }
      }

      else
      {
        LOBYTE(_selectedTrailLocale) = 0;
        v34 = traitCollection;
      }

      goto LABEL_39;
    }

    LOBYTE(_selectedTrailLocale) = 0;
  }

LABEL_29:

  return _selectedTrailLocale;
}

- (void)_setShowsNightMode:(BOOL)mode
{
  traitCollection = self->_traitCollection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MKMapSnapshotOptions__setShowsNightMode___block_invoke;
  v7[3] = &__block_descriptor_33_e27_v16__0___UIMutableTraits__8l;
  modeCopy = mode;
  v5 = [(UITraitCollection *)traitCollection traitCollectionByModifyingTraits:v7];
  v6 = self->_traitCollection;
  self->_traitCollection = v5;
}

uint64_t __43__MKMapSnapshotOptions__setShowsNightMode___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (void)setShowsPointsOfInterest:(BOOL)showsPointsOfInterest
{
  if (showsPointsOfInterest)
  {
    preferredConfiguration = self->_preferredConfiguration;

    [(MKMapConfiguration *)preferredConfiguration set_pointOfInterestFilter:0];
  }

  else
  {
    v5 = +[MKPointOfInterestFilter filterExcludingAllCategories];
    [(MKMapConfiguration *)self->_preferredConfiguration set_pointOfInterestFilter:v5];
  }
}

- (BOOL)_showsPointsOfInterest
{
  _pointOfInterestFilter = [(MKMapConfiguration *)self->_preferredConfiguration _pointOfInterestFilter];
  v3 = _pointOfInterestFilter;
  if (_pointOfInterestFilter)
  {
    v4 = [_pointOfInterestFilter _excludesAllCategories] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)setMapType:(MKMapType)mapType
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MKCartographicConfigurationForMapType(mapType, &v7);
  v5[0] = v7;
  v5[1] = v8;
  v5[2] = v9;
  v6 = v10;
  v4 = [MKMapConfiguration _mapConfigurationWithCartographicConfiguration:v5];
  [v4 _setInternalStateFromMapConfiguration:self->_preferredConfiguration];
  [(MKMapSnapshotOptions *)self setPreferredConfiguration:v4];
}

- (void)_setCartographicConfiguration:(id *)configuration
{
  v4 = *&configuration->var2;
  v6[0] = *&configuration->var0;
  v6[1] = v4;
  v6[2] = *&configuration->var4;
  v7 = *&configuration->var6;
  v5 = [MKMapConfiguration _mapConfigurationWithCartographicConfiguration:v6];
  [v5 _setInternalStateFromMapConfiguration:self->_preferredConfiguration];
  [(MKMapSnapshotOptions *)self setPreferredConfiguration:v5];
}

- ($F9C4767691F2EDF2F3162F5FE7B1523A)_resolvedCartographicConfigurationWithAuditToken:(SEL)token
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_preferredConfiguration;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0;
  [MKMapConfiguration _cartographicConfigurationForMapConfiguration:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((MapKitFeature_IsEnabled_SPRForMapSnapshots() & 1) == 0)
  {
    _overlaysRequireModernMap = [(MKMapSnapshotOptions *)self _overlaysRequireModernMap];
    _allowsTerrainModePromotion = 0;
    goto LABEL_8;
  }

  _allowsTerrainModePromotion = [(MKMapConfiguration *)v7 _allowsTerrainModePromotion];
  _overlaysRequireModernMap = [(MKMapSnapshotOptions *)self _overlaysRequireModernMap];
  if (!_allowsTerrainModePromotion || (v10 = [(MKMapConfiguration *)v7 elevationStyle], _allowsTerrainModePromotion = _MKLinkedOnOrAfterReleaseSet(3595), v10 != 1))
  {
LABEL_8:
    v12 = 0;
    _overlaysSupportElevation = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    currentProcessAuditToken = v6;
    goto LABEL_10;
  }

  _overlaysSupportElevation = [(MKMapSnapshotOptions *)self _overlaysSupportElevation];
  v12 = 1;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  currentProcessAuditToken = [MEMORY[0x1E69A1B68] currentProcessAuditToken];
LABEL_10:
  v14 = currentProcessAuditToken;
  v15 = MEMORY[0x1E69A22E8];
  offlineCohortId = [currentProcessAuditToken offlineCohortId];
  v17 = [v15 activeStateForCohortId:offlineCohortId];

  if (v17 >= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v25[0] = 67109120;
      v25[1] = v17;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", v25, 8u);
    }

    v18 = 0;
  }

  else
  {
    v18 = 4u >> (v17 & 7);
  }

  var2 = retstr->var2;
  BOOL = GEOConfigGetBOOL();
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = var2;
  }

  if (BOOL)
  {
    v21 = 1;
  }

  retstr->var2 = v21;
  var3 = retstr->var3;
  if (GEOConfigGetBOOL())
  {
    v23 = 1;
  }

  else if ((v18 | _overlaysRequireModernMap))
  {
    v23 = 0;
  }

  else
  {
    v23 = 3;
    if (!_allowsTerrainModePromotion)
    {
      v23 = var3;
    }

    if ((_overlaysSupportElevation & v12) != 0)
    {
      v23 = 1;
    }
  }

  retstr->var3 = v23;
LABEL_29:

  return result;
}

- (BOOL)_overlaysRequireModernMap
{
  _allOverlays = [(MKMapSnapshotOptions *)self _allOverlays];
  v3 = [MKStandardMapConfiguration _overlaysRequireModernMap:_allOverlays];

  return v3;
}

- (BOOL)_overlaysSupportElevation
{
  v3 = _MKLinkedOnOrAfterReleaseSet(3595);
  if (v3)
  {
    _allOverlays = [(MKMapSnapshotOptions *)self _allOverlays];
    v5 = [MKStandardMapConfiguration _overlaysSupportElevation:_allOverlays];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setUseSnapshotService:(BOOL)service
{
  if (self->_useSnapshotService != service)
  {
    self->_useSnapshotService = service;
  }
}

- (void)setMapRect:(MKMapRect)mapRect
{
  self->_mapRect = mapRect;
  self->_region = MKCoordinateRegionForMapRect(mapRect);
  size = self->_mapRect.size;
  v7[0] = self->_mapRect.origin;
  v7[1] = size;
  width = self->_size.width;
  *&width = width;
  *&size.width = self->_size.height;
  *&width = *&width / *&size.width;
  v6 = [MKMapCamera _cameraLookingAtGEOMapRect:v7 aspectRatio:width];
  [(MKMapSnapshotOptions *)self _setCamera:v6];

  self->_mode = 1;
}

- (void)setRegion:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  if (fabs(region.center.longitude) > 180.0 || fabs(region.center.latitude) > 90.0 || region.span.latitudeDelta < 0.0 || region.span.latitudeDelta > 180.0 || region.span.longitudeDelta < 0.0 || region.span.longitudeDelta > 360.0)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&region.center.latitude, *&region.center.longitude];
    v18 = [v16 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v17, *&latitudeDelta, *&longitudeDelta];

    v20 = [v16 stringWithFormat:@"Invalid Region %@", v18];

    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    [v19 raise];
  }

  else
  {
    self->_region = region;
    GEOMapRectForCoordinateRegion();
    self->_mapRect.origin.x = v6;
    self->_mapRect.origin.y = v7;
    self->_mapRect.size.width = v8;
    self->_mapRect.size.height = v9;
    GEOMapRectForCoordinateRegion();
    v21[0] = v10;
    v21[1] = v11;
    v21[2] = v12;
    v21[3] = v13;
    width = self->_size.width;
    *&width = width;
    *&v11 = self->_size.height;
    *&width = *&width / *&v11;
    v15 = [MKMapCamera _cameraLookingAtGEOMapRect:v21 aspectRatio:width];
    [(MKMapSnapshotOptions *)self _setCamera:v15];

    self->_mode = 0;
  }
}

- (void)_addCameraKVO
{
  [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:self->_camera forKeyPath:@"altitude" options:0 context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:self->_camera forKeyPath:@"pitch" options:0 context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:self->_camera forKeyPath:@"heading" options:0 context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:self->_camera forKeyPath:@"centerCoordinate" options:0 context:MKCameraKVOContext];
  kvoProxy = self->_kvoProxy;
  camera = self->_camera;
  v5 = MKCameraKVOContext;

  [(_MKKVOProxy *)kvoProxy addObserverForObject:camera forKeyPath:@"centerCoordinateDistance" options:0 context:v5];
}

- (void)_removeCameraKVO
{
  [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:self->_camera forKeyPath:@"altitude" context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:self->_camera forKeyPath:@"pitch" context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:self->_camera forKeyPath:@"heading" context:MKCameraKVOContext];
  [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:self->_camera forKeyPath:@"centerCoordinate" context:MKCameraKVOContext];
  kvoProxy = self->_kvoProxy;
  camera = self->_camera;
  v5 = MKCameraKVOContext;

  [(_MKKVOProxy *)kvoProxy removeObserverForObject:camera forKeyPath:@"centerCoordinateDistance" context:v5];
}

- (void)_setCamera:(id)camera
{
  cameraCopy = camera;
  if (!self->_kvoProxy)
  {
    v5 = [[_MKKVOProxy alloc] initWithDelegate:self];
    kvoProxy = self->_kvoProxy;
    self->_kvoProxy = v5;
  }

  [(MKMapSnapshotOptions *)self _removeCameraKVO];
  camera = self->_camera;
  self->_camera = cameraCopy;

  [(MKMapSnapshotOptions *)self _addCameraKVO];
}

- (void)setCamera:(MKMapCamera *)camera
{
  v7 = camera;
  if ([(MKMapCamera *)v7 _validate])
  {
    v4 = [(MKMapCamera *)v7 copy];
    [(MKMapSnapshotOptions *)self _setCamera:v4];

    width = self->_size.width;
    *&width = width;
    height = self->_size.height;
    *&width = *&width / height;
    [(MKMapCamera *)self->_camera _enclosingGEOMapRectForAspectRatio:width];
    self->_mapRect = v9;
    self->_region = MKCoordinateRegionForMapRect(v9);
    self->_mode = 2;
  }
}

- (void)setTraitCollection:(UITraitCollection *)traitCollection
{
  v7 = traitCollection;
  [(UITraitCollection *)v7 displayScale];
  if (v4 == 0.0)
  {
    v5 = [(UITraitCollection *)v7 traitCollectionByModifyingTraits:&__block_literal_global_44111];
  }

  else
  {
    v5 = v7;
  }

  v6 = self->_traitCollection;
  self->_traitCollection = v5;
}

void __43__MKMapSnapshotOptions_setTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[MKSystemController sharedInstance];
  [v3 screenScale];
  [v2 setDisplayScale:?];
}

- (void)setScale:(CGFloat)scale
{
  traitCollection = self->_traitCollection;
  if (traitCollection)
  {
    [(UITraitCollection *)traitCollection displayScale];
    if (v6 != scale)
    {
      v7 = self->_traitCollection;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__MKMapSnapshotOptions_setScale___block_invoke;
      v12[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
      *&v12[4] = scale;
      v8 = [(UITraitCollection *)v7 traitCollectionByModifyingTraits:v12];
      v9 = self->_traitCollection;
      self->_traitCollection = v8;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithDisplayScale:scale];
    v11 = self->_traitCollection;
    self->_traitCollection = v10;
  }
}

- (void)setSize:(CGSize)size
{
  if (size.width * size.height == 0.0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set a zero area size." userInfo:0];
    [v14 raise];
  }

  else
  {
    self->_size = size;
    mode = self->_mode;
    switch(mode)
    {
      case 2:
        camera = self->_camera;

        [(MKMapSnapshotOptions *)self setCamera:camera];
        break;
      case 1:
        x = self->_mapRect.origin.x;
        y = self->_mapRect.origin.y;
        width = self->_mapRect.size.width;
        height = self->_mapRect.size.height;

        [(MKMapSnapshotOptions *)self setMapRect:x, y, width, height];
        break;
      case 0:
        latitude = self->_region.center.latitude;
        longitude = self->_region.center.longitude;
        latitudeDelta = self->_region.span.latitudeDelta;
        longitudeDelta = self->_region.span.longitudeDelta;

        [(MKMapSnapshotOptions *)self setRegion:latitude, longitude, latitudeDelta, longitudeDelta];
        break;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  span = self->_region.span;
  *(v4 + 48) = self->_region.center;
  *(v4 + 64) = span;
  size = self->_mapRect.size;
  *(v4 + 16) = self->_mapRect.origin;
  *(v4 + 32) = size;
  *(v4 + 112) = self->_size;
  v7 = *&self->_edgeInsets.bottom;
  *(v4 + 136) = *&self->_edgeInsets.top;
  *(v4 + 152) = v7;
  *(v4 + 96) = self->_showsPointLabels;
  *(v4 + 97) = self->_showsRoadLabels;
  *(v4 + 98) = self->_showsRoadShields;
  *(v4 + 99) = self->_showsBuildings;
  *(v4 + 100) = self->_showsVenues;
  *(v4 + 101) = self->_showsAppleLogo;
  v8 = [(MKMapCamera *)self->_camera copy];
  [v4 _setCamera:v8];

  *(v4 + 88) = self->_mode;
  *(v4 + 102) = self->_rendersInBackground;
  *(v4 + 103) = self->_useSnapshotService;
  *(v4 + 104) = self->_snapshotServiceSerialPerProcess;
  v9 = [(UITraitCollection *)self->_traitCollection copy];
  v10 = *(v4 + 128);
  *(v4 + 128) = v9;

  v11 = [(NSArray *)self->_customFeatureAnnotations copy];
  v12 = *(v4 + 296);
  *(v4 + 296) = v11;

  v13 = [(NSArray *)self->_annotationViews copy];
  v14 = *(v4 + 288);
  *(v4 + 288) = v13;

  *(v4 + 281) = self->_searchResultsType;
  *(v4 + 168) = self->_signpostId;
  objc_storeStrong((v4 + 184), self->_routeContext);
  objc_storeStrong((v4 + 192), self->_routeOverlay);
  v15 = [(NSArray *)self->_composedRoutesForRouteLines copy];
  v16 = *(v4 + 200);
  *(v4 + 200) = v15;

  *(v4 + 208) = self->_selectedRouteIndex;
  objc_storeStrong((v4 + 216), self->_auditToken);
  *(v4 + 224) = self->_allowsSimultaneousLightDarkSnapshots;
  *(v4 + 232) = self->_networkUsageMode;
  v17 = [(MKMapConfiguration *)self->_preferredConfiguration copy];
  v18 = *(v4 + 80);
  *(v4 + 80) = v17;

  v19 = [(NSMutableDictionary *)self->_overlayRenderers mutableCopy];
  v20 = *(v4 + 240);
  *(v4 + 240) = v19;

  objc_storeStrong((v4 + 248), self->_selectedTrailID);
  objc_storeStrong((v4 + 256), self->_selectedTrailName);
  objc_storeStrong((v4 + 264), self->_selectedTrailLocale);
  *(v4 + 176) = self->_captureMemoryStatistics;
  return v4;
}

- (id)_encodableOverlayRenderers
{
  if (self->_overlayRenderers)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_overlayRenderers, "count")}];
    overlayRenderers = self->_overlayRenderers;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MKMapSnapshotOptions__encodableOverlayRenderers__block_invoke;
    v7[3] = &unk_1E76CD398;
    v5 = v3;
    v8 = v5;
    [(NSMutableDictionary *)overlayRenderers enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __50__MKMapSnapshotOptions__encodableOverlayRenderers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a1;
  v24 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 conformsToProtocol:{&unk_1F162A120, v15}])
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = MKGetSnapshotLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "Unable to encode overlay renderer of class %@ as it is not conforming to NSSecureCoding. This encoding will be lossy.", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  [*(v15 + 32) setObject:v5 forKeyedSubscript:v16];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_camera forKey:@"camera"];
  [coderCopy encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [coderCopy encodeBool:self->_snapshotServiceSerialPerProcess forKey:@"snapshotServiceSerialPerProcess"];
  _pointOfInterestFilter = [(MKMapConfiguration *)self->_preferredConfiguration _pointOfInterestFilter];
  [coderCopy encodeObject:_pointOfInterestFilter forKey:@"pointOfInterestFilter"];

  [coderCopy encodeBool:self->_showsPointLabels forKey:@"showsPointLabels"];
  [coderCopy encodeBool:self->_showsRoadLabels forKey:@"showsRoadLabels"];
  [coderCopy encodeBool:self->_showsRoadShields forKey:@"showsRoadShields"];
  [coderCopy encodeBool:self->_showsBuildings forKey:@"showsBuildings"];
  [coderCopy encodeBool:self->_showsVenues forKey:@"showsVenues"];
  [coderCopy encodeBool:self->_allowsSimultaneousLightDarkSnapshots forKey:@"allowsSimultaneousLightDarkSnapshots"];
  [coderCopy encodeInteger:self->_networkUsageMode forKey:@"networkUsageMode"];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  [(MKMapSnapshotOptions *)self _cartographicConfiguration];
  [coderCopy encodeInteger:v14 forKey:@"mapStyle"];
  [coderCopy encodeInteger:*(&v14 + 1) forKey:@"mapEmphasis"];
  [coderCopy encodeInteger:v15 forKey:@"mapProjection"];
  [coderCopy encodeBool:v17 forKey:@"gridOnly"];
  [coderCopy encodeInteger:*(&v15 + 1) forKey:@"terrainMode"];
  [coderCopy encodeInteger:v16 forKey:@"mapkitUsage"];
  [coderCopy encodeInteger:*(&v16 + 1) forKey:@"mapkitClientMode"];
  [coderCopy encodeInteger:_MKMapTypeForCartographicConfiguration(&v14) forKey:@"mapType"];
  [coderCopy encodeObject:self->_preferredConfiguration forKey:@"preferredConfiguration"];
  [coderCopy encodeBool:self->_showsAppleLogo forKey:@"showsAppleLogo"];
  v6 = [MEMORY[0x1E696B098] valueWithCGSize:{self->_size.width, self->_size.height}];
  [coderCopy encodeObject:v6 forKey:@"size"];

  v7 = [MEMORY[0x1E696B098] valueWithBytes:&self->_edgeInsets objCType:"{UIEdgeInsets=dddd}"];
  [coderCopy encodeObject:v7 forKey:@"edgeInsets"];

  [coderCopy encodeDouble:@"mapRectOriginX" forKey:self->_mapRect.origin.x];
  [coderCopy encodeDouble:@"mapRectOriginY" forKey:self->_mapRect.origin.y];
  [coderCopy encodeDouble:@"mapRectSizeWidth" forKey:self->_mapRect.size.width];
  [coderCopy encodeDouble:@"mapRectSizeHeight" forKey:self->_mapRect.size.height];
  [coderCopy encodeDouble:@"regionCenterLat" forKey:self->_region.center.latitude];
  [coderCopy encodeDouble:@"regionCenterLong" forKey:self->_region.center.longitude];
  [coderCopy encodeDouble:@"regionSpanLatDelta" forKey:self->_region.span.latitudeDelta];
  [coderCopy encodeDouble:@"regionSpanLongDelta" forKey:self->_region.span.longitudeDelta];
  [coderCopy encodeInt:LODWORD(self->_mode) forKey:@"mode"];
  [coderCopy encodeInteger:self->_searchResultsType forKey:@"searchResultsType"];
  [coderCopy encodeObject:self->_customFeatureAnnotations forKey:@"customFeatureAnnotations"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_signpostId];
  [coderCopy encodeObject:v8 forKey:@"signpostId"];

  [coderCopy encodeObject:self->_auditToken forKey:@"auditToken"];
  if ([(NSArray *)self->_composedRoutesForRouteLines count])
  {
    [coderCopy encodeObject:self->_composedRoutesForRouteLines forKey:@"composedRoutesForRouteLines"];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_selectedRouteIndex];
    [coderCopy encodeObject:v9 forKey:@"selectedRouteIndex"];
  }

  _encodableOverlayRenderers = [(MKMapSnapshotOptions *)self _encodableOverlayRenderers];
  if (_encodableOverlayRenderers)
  {
    [coderCopy encodeObject:_encodableOverlayRenderers forKey:@"overlayRenderers"];
  }

  selectedTrailID = self->_selectedTrailID;
  if (selectedTrailID)
  {
    [coderCopy encodeInt64:-[NSNumber unsignedLongLongValue](selectedTrailID forKey:{"unsignedLongLongValue"), @"selectedTrailID"}];
  }

  selectedTrailName = self->_selectedTrailName;
  if (selectedTrailName)
  {
    [coderCopy encodeObject:selectedTrailName forKey:@"selectedTrailName"];
  }

  selectedTrailLocale = self->_selectedTrailLocale;
  if (selectedTrailLocale)
  {
    [coderCopy encodeObject:selectedTrailLocale forKey:@"selectedTrailLocale"];
  }

  [coderCopy encodeBool:self->_captureMemoryStatistics forKey:@"captureMemoryStatistics"];
}

- (void)dealloc
{
  [(MKMapSnapshotOptions *)self _removeCameraKVO];
  v3.receiver = self;
  v3.super_class = MKMapSnapshotOptions;
  [(MKMapSnapshotOptions *)&v3 dealloc];
}

- (MKMapSnapshotOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v87.receiver = self;
  v87.super_class = MKMapSnapshotOptions;
  v5 = [(MKMapSnapshotOptions *)&v87 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    if (!*(v5 + 16))
    {
      v8 = MEMORY[0x1E69DD1B8];
      [coderCopy decodeDoubleForKey:@"scale"];
      v9 = [v8 traitCollectionWithDisplayScale:?];
      v10 = *(v5 + 16);
      *(v5 + 16) = v9;
    }

    v5[104] = [coderCopy decodeBoolForKey:@"snapshotServiceSerialPerProcess"];
    v5[96] = [coderCopy decodeBoolForKey:@"showsPointLabels"];
    if ([coderCopy containsValueForKey:@"showsRoadLabels"])
    {
      v11 = [coderCopy decodeBoolForKey:@"showsRoadLabels"];
    }

    else
    {
      v11 = 1;
    }

    v5[97] = v11;
    if ([coderCopy containsValueForKey:@"showsRoadShields"])
    {
      v13 = [coderCopy decodeBoolForKey:@"showsRoadShields"];
    }

    else
    {
      v13 = 1;
    }

    v5[98] = v13;
    [v5 setShowsBuildings:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"showsBuildings"}];
    v5[100] = [coderCopy decodeBoolForKey:@"showsVenues"];
    v5[224] = [coderCopy decodeBoolForKey:@"allowsSimultaneousLightDarkSnapshots"];
    *(v5 + 29) = [coderCopy decodeIntegerForKey:@"networkUsageMode"];
    v5[101] = [coderCopy decodeBoolForKey:@"showsAppleLogo"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v15 = v14;
    if (v14)
    {
      sizep[0] = 0;
      NSGetSizeAndAlignment([v14 objCType], sizep, 0);
      if (sizep[0] != 16)
      {
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
        [coderCopy failWithError:v23];

        v12 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    [v15 CGSizeValue];
    *(v5 + 14) = v16;
    *(v5 + 15) = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edgeInsets"];
    v19 = v18;
    if (v18)
    {
      v86 = 0;
      NSGetSizeAndAlignment([v18 objCType], &v86, 0);
      if (v86 != 32)
      {
        v40 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
        [coderCopy failWithError:v40];

        v12 = 0;
LABEL_45:

        goto LABEL_46;
      }

      v20 = *(MEMORY[0x1E69DDCE0] + 16);
      *sizep = *MEMORY[0x1E69DDCE0];
      v81 = v20;
      [v19 getValue:sizep size:32];
      v21 = *sizep;
      v22 = v81;
    }

    else
    {
      v21 = *MEMORY[0x1E69DDCE0];
      v22 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    *(v5 + 136) = v21;
    *(v5 + 152) = v22;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"camera"];
    [v5 setCamera:v24];

    [coderCopy decodeDoubleForKey:@"mapRectOriginX"];
    *(v5 + 2) = v25;
    [coderCopy decodeDoubleForKey:@"mapRectOriginY"];
    *(v5 + 3) = v26;
    [coderCopy decodeDoubleForKey:@"mapRectSizeWidth"];
    *(v5 + 4) = v27;
    [coderCopy decodeDoubleForKey:@"mapRectSizeHeight"];
    *(v5 + 5) = v28;
    [coderCopy decodeDoubleForKey:@"regionCenterLat"];
    *(v5 + 6) = v29;
    [coderCopy decodeDoubleForKey:@"regionCenterLong"];
    *(v5 + 7) = v30;
    [coderCopy decodeDoubleForKey:@"regionSpanLatDelta"];
    *(v5 + 8) = v31;
    [coderCopy decodeDoubleForKey:@"regionSpanLongDelta"];
    *(v5 + 9) = v32;
    *(&v86 + 3) = 0;
    LODWORD(v86) = 0;
    v79 = v19;
    if ([coderCopy containsValueForKey:@"mapStyle"])
    {
      v33 = [coderCopy decodeIntegerForKey:@"mapStyle"];
      v34 = [coderCopy decodeIntegerForKey:@"mapEmphasis"];
      v35 = [coderCopy decodeIntegerForKey:@"mapProjection"];
      v36 = [coderCopy decodeIntegerForKey:@"terrainMode"];
      if ([coderCopy containsValueForKey:@"mapkitUsage"])
      {
        v37 = [coderCopy decodeIntegerForKey:@"mapkitUsage"];
      }

      else
      {
        v37 = 1;
      }

      if ([coderCopy containsValueForKey:@"mapkitClientMode"])
      {
        v38 = [coderCopy decodeIntegerForKey:@"mapkitClientMode"];
      }

      else
      {
        v38 = 0;
      }

      v39 = [coderCopy decodeBoolForKey:@"gridOnly"];
    }

    else if ([coderCopy containsValueForKey:@"mapType"])
    {
      _MKCartographicConfigurationForMapType([coderCopy decodeIntegerForKey:@"mapType"], sizep);
      v33 = sizep[0];
      v34 = sizep[1];
      v36 = *(&v81 + 1);
      v35 = v81;
      v37 = v82;
      v38 = v83;
      v39 = v84;
      LODWORD(v86) = *v85;
      *(&v86 + 3) = *&v85[3];
    }

    else
    {
      v39 = 0;
      v38 = 0;
      v36 = 0;
      v35 = 0;
      v33 = 0;
      v37 = 1;
      v34 = 1;
    }

    if ([coderCopy containsValueForKey:@"preferredConfiguration"])
    {
      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredConfiguration"];
      v42 = *(v5 + 10);
      *(v5 + 10) = v41;
    }

    else
    {
      sizep[0] = v33;
      sizep[1] = v34;
      *&v81 = v35;
      *(&v81 + 1) = v36;
      v82 = v37;
      v83 = v38;
      v84 = v39;
      *v85 = v86;
      *&v85[3] = *(&v86 + 3);
      v43 = [MKMapConfiguration _mapConfigurationWithCartographicConfiguration:sizep];
      v44 = *(v5 + 10);
      *(v5 + 10) = v43;

      if ([coderCopy containsValueForKey:@"pointOfInterestFilter"])
      {
        v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointOfInterestFilter"];
      }

      else
      {
        if (![coderCopy containsValueForKey:@"showsPointsOfInterest"] || (objc_msgSend(coderCopy, "decodeBoolForKey:", @"showsPointsOfInterest") & 1) != 0)
        {
          goto LABEL_36;
        }

        v45 = +[MKPointOfInterestFilter filterExcludingAllCategories];
      }

      v42 = v45;
      [*(v5 + 10) set_pointOfInterestFilter:v45];
    }

LABEL_36:
    *(v5 + 11) = [coderCopy decodeIntegerForKey:@"mode"];
    v5[281] = [coderCopy decodeIntegerForKey:@"searchResultsType"];
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = [v46 setWithObjects:{v47, v48, v49, v50, v51, objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"customFeatureAnnotations"];
    [v5 _setCustomFeatureAnnotations:v53];

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostId"];
    v55 = v54;
    if (v54)
    {
      *(v5 + 21) = [v54 unsignedLongLongValue];
    }

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    v57 = *(v5 + 27);
    *(v5 + 27) = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];

    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"composedRoutesForRouteLines"];
    v62 = *(v5 + 25);
    *(v5 + 25) = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedRouteIndex"];
    *(v5 + 26) = [v63 unsignedIntegerValue];

    v64 = MEMORY[0x1E695DFD8];
    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [v64 setWithObjects:{v65, v66, v67, objc_opt_class(), 0}];

    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"overlayRenderers"];
    v70 = *(v5 + 30);
    *(v5 + 30) = v69;

    if ([coderCopy containsValueForKey:@"selectedTrailID"])
    {
      v71 = [coderCopy decodeInt64ForKey:@"selectedTrailID"];
      v72 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v71];
      v73 = *(v5 + 31);
      *(v5 + 31) = v72;
    }

    if ([coderCopy containsValueForKey:@"selectedTrailName"])
    {
      v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedTrailName"];
      v75 = *(v5 + 32);
      *(v5 + 32) = v74;
    }

    if ([coderCopy containsValueForKey:@"selectedTrailLocale"])
    {
      v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedTrailLocale"];
      v77 = *(v5 + 33);
      *(v5 + 33) = v76;
    }

    v5[176] = [coderCopy decodeBoolForKey:@"captureMemoryStatistics"];
    v12 = v5;

    v19 = v79;
    goto LABEL_45;
  }

  v12 = 0;
LABEL_47:

  return v12;
}

- (MKMapSnapshotOptions)init
{
  v29.receiver = self;
  v29.super_class = MKMapSnapshotOptions;
  v2 = [(MKMapSnapshotOptions *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v2->_size = vdupq_n_s64(0x4070000000000000uLL);
    v4 = MEMORY[0x1E69DD1B8];
    v5 = +[MKSystemController sharedInstance];
    [v5 screenScale];
    v6 = [v4 traitCollectionWithDisplayScale:?];
    traitCollection = v3->_traitCollection;
    v3->_traitCollection = v6;

    *&v3->_useSnapshotService = 257;
    v8 = objc_alloc_init(MKStandardMapConfiguration);
    preferredConfiguration = v3->_preferredConfiguration;
    v3->_preferredConfiguration = &v8->super;

    v10 = MKDefaultCoordinateRegion();
    v3->_region.center.latitude = v10;
    v3->_region.center.longitude = v13;
    v3->_region.span.latitudeDelta = v11;
    v3->_region.span.longitudeDelta = v12;
    if (fabs(v13) > 180.0 || fabs(v10) > 90.0 || v11 < 0.0 || v11 > 180.0 || v12 < 0.0 || v12 > 360.0)
    {
      CLLocationCoordinate2DMake(37.3328, -122.029);
      GEOCoordinateRegionMakeWithDistance();
      v3->_region.center.latitude = v14;
      v3->_region.center.longitude = v15;
      v3->_region.span.latitudeDelta = v16;
      v3->_region.span.longitudeDelta = v17;
    }

    GEOMapRectForCoordinateRegion();
    v3->_mapRect.origin.x = v18;
    v3->_mapRect.origin.y = v19;
    v3->_mapRect.size.width = v20;
    v3->_mapRect.size.height = v21;
    *v28 = v18;
    *&v28[1] = v19;
    *&v28[2] = v20;
    *&v28[3] = v21;
    width = v3->_size.width;
    *&width = width;
    *&v19 = v3->_size.height;
    *&width = *&width / *&v19;
    v23 = [MKMapCamera _cameraLookingAtGEOMapRect:v28 aspectRatio:width];
    [(MKMapSnapshotOptions *)v3 _setCamera:v23];

    *&v3->_showsPointLabels = 16843009;
    v24 = MKGetSnapshotLog();
    v3->_signpostId = os_signpost_id_generate(v24);

    v3->_captureMemoryStatistics = 0;
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v3->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&v3->_edgeInsets.bottom = v25;
    v3->_showsAppleLogo = 1;
    v26 = v3;
  }

  return v3;
}

@end