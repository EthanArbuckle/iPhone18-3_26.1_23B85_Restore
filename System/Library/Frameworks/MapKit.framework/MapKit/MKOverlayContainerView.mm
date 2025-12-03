@interface MKOverlayContainerView
+ (int64_t)_defaultOverlayLevel;
- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFractionOfVisible:(double)visible;
- (BOOL)_overlaySpansGlobeAndReplacesMapContent;
- (BOOL)requiresModernMap;
- (BOOL)supportsElevation;
- (MKMapView)mapView;
- (MKOverlayContainerView)initWithFrame:(CGRect)frame;
- (MKOverlayContainerViewDelegate)delegate;
- (NSArray)allDrawables;
- (NSArray)overlays;
- (id)_allOverlays;
- (id)_considerAddingDrawable:(id)drawable inAddRect:(id)rect level:(int64_t)level;
- (id)_viewContainerForLevel:(int64_t)level;
- (id)drawableForOverlay:(id)overlay;
- (id)overlaysInLevel:(int64_t)level;
- (int64_t)_drawableIndexForDrawable:(id)drawable level:(int64_t)level;
- (int64_t)_levelForOverlay:(id)overlay exists:(BOOL *)exists;
- (unint64_t)_overlayCount;
- (void)_configureAndAddDrawable:(id)drawable forOverlay:(id)overlay level:(int64_t)level;
- (void)_exchangeOverlayAtIndex:(unint64_t)index withOverlayAtIndex:(unint64_t)atIndex level:(int64_t)level;
- (void)_flexTerrainIfNeeded;
- (void)_insertDrawable:(id)drawable forOverlay:(id)overlay atIndex:(int64_t)index level:(int64_t)level;
- (void)_removeDrawable:(id)drawable forOverlay:(id)overlay level:(int64_t)level;
- (void)_unFlexTerrainIfNeeded;
- (void)_updateContentScale:(id)scale;
- (void)_updateShowsAppleLogoIfNeeded;
- (void)addAndRemoveOverlayViews;
- (void)addInternalOverlay:(id)overlay level:(int64_t)level provider:(id)provider;
- (void)addOverlay:(id)overlay;
- (void)addOverlay:(id)overlay level:(int64_t)level;
- (void)addOverlays:(id)overlays;
- (void)addOverlays:(id)overlays level:(int64_t)level;
- (void)didMoveToWindow;
- (void)exchangeOverlay:(id)overlay withOverlay:(id)withOverlay;
- (void)exchangeOverlayAtIndex:(unint64_t)index withOverlayAtIndex:(unint64_t)atIndex;
- (void)insertOverlay:(id)overlay aboveOverlay:(id)aboveOverlay;
- (void)insertOverlay:(id)overlay atIndex:(unint64_t)index;
- (void)insertOverlay:(id)overlay atIndex:(unint64_t)index level:(int64_t)level;
- (void)insertOverlay:(id)overlay belowOverlay:(id)belowOverlay;
- (void)removeOverlay:(id)overlay;
- (void)removeOverlays:(id)overlays;
@end

@implementation MKOverlayContainerView

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (MKOverlayContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_allOverlays
{
  array = [MEMORY[0x1E695DF70] array];
  overlays = self->_overlays;
  array2 = [(NSMutableOrderedSet *)self->_overlays[0] array];
  [array addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)overlays[1] array];
  [array addObjectsFromArray:array3];

  return array;
}

- (BOOL)_overlaySpansGlobeAndReplacesMapContent
{
  v2 = 0;
  v30 = *MEMORY[0x1E69E9840];
  overlays = self->_overlays;
  v4 = 1;
  v5 = 0uLL;
  do
  {
    v24 = v4;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v6 = overlays;
    v7 = overlays[v2];
    v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 boundingMapRect];
            if (v14 != INFINITY || v13 != INFINITY)
            {
              v18 = v13 > 0.0;
              v19 = v13 + v15;
              if (!v18 && v19 >= 268435456.0)
              {
                v21 = v14 + v16;
                v22 = v14 > 0.0 || v21 < 268435456.0;
                if (!v22 && ([v12 canReplaceMapContent] & 1) != 0)
                {

                  return 1;
                }
              }
            }
          }
        }

        v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
    result = 0;
    v2 = 1;
    overlays = v6;
    v5 = 0uLL;
  }

  while ((v24 & 1) != 0);
  return result;
}

- (void)_updateShowsAppleLogoIfNeeded
{
  _overlaySpansGlobeAndReplacesMapContent = [(MKOverlayContainerView *)self _overlaySpansGlobeAndReplacesMapContent];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained _setShowsAppleLogo:!_overlaySpansGlobeAndReplacesMapContent];
}

- (void)_unFlexTerrainIfNeeded
{
  mapView = [(MKOverlayContainerView *)self mapView];
  [mapView _updateCartographicConfiguration];
}

- (void)_flexTerrainIfNeeded
{
  mapView = [(MKOverlayContainerView *)self mapView];
  [mapView _updateCartographicConfiguration];
}

- (BOOL)requiresModernMap
{
  _allOverlays = [(MKOverlayContainerView *)self _allOverlays];
  v3 = [MKStandardMapConfiguration _overlaysRequireModernMap:_allOverlays];

  return v3;
}

- (BOOL)supportsElevation
{
  v3 = _MKLinkedOnOrAfterReleaseSet(3338);
  if (v3)
  {
    _allOverlays = [(MKOverlayContainerView *)self _allOverlays];
    v5 = [MKStandardMapConfiguration _overlaysSupportElevation:_allOverlays];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MKOverlayContainerView;
  [(MKOverlayContainerView *)&v15 didMoveToWindow];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_drawables[v3];
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(MKOverlayContainerView *)self _updateContentScale:*(*(&v11 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (void)_insertDrawable:(id)drawable forOverlay:(id)overlay atIndex:(int64_t)index level:(int64_t)level
{
  drawableCopy = drawable;
  v10 = self->_overlayToDrawable[level];
  overlayCopy = overlay;
  [(NSMapTable *)v10 setObject:drawableCopy forKey:overlayCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vk_mapLayer = [WeakRetained vk_mapLayer];

  v14 = [MEMORY[0x1E69DF460] overlayWithDrawable:drawableCopy forOverlay:overlayCopy atLevel:level];

  mapView = [(MKOverlayContainerView *)self mapView];
  [drawableCopy _setMapView:mapView];

  [(MKOverlayContainerView *)self _updateContentScale:drawableCopy];
  drawables = self->_drawables;
  v17 = [(NSMutableArray *)self->_drawables[level] count];
  v18 = self->_drawables[level];
  if (v17 <= index)
  {
    [(NSMutableArray *)v18 addObject:drawableCopy];
    [(NSMutableArray *)self->_vkOverlays[level] addObject:v14];
    if (index)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(NSMutableArray *)v18 insertObject:drawableCopy atIndex:index];
    [(NSMutableArray *)self->_vkOverlays[level] insertObject:v14 atIndex:index];
    if (index)
    {
LABEL_3:
      v19 = [(NSMutableArray *)drawables[level] objectAtIndex:index - 1];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = index + 1;
  if (index + 1 >= [(NSMutableArray *)drawables[level] count])
  {
    v21 = 0;
  }

  else
  {
    v21 = [(NSMutableArray *)drawables[level] objectAtIndex:index + 1];
  }

  if (index)
  {
    index = [(NSMutableArray *)self->_vkOverlays[level] objectAtIndex:index - 1];
  }

  if (v20 >= [(NSMutableArray *)self->_vkOverlays[level] count])
  {
    v22 = 0;
  }

  else
  {
    v22 = [(NSMutableArray *)self->_vkOverlays[level] objectAtIndex:v20];
  }

  _mk_overlayView = [drawableCopy _mk_overlayView];
  if (_mk_overlayView)
  {
    v24 = [(MKOverlayContainerView *)self _viewContainerForLevel:level];
    if (v19)
    {
LABEL_16:
      _mk_overlayView2 = [v19 _mk_overlayView];
      if (_mk_overlayView)
      {
        [v24 insertSubview:_mk_overlayView aboveSubview:_mk_overlayView2];
      }

      [vk_mapLayer insertOverlay:v14 aboveOverlay:index];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
    v24 = 0;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  if (v21)
  {
    _mk_overlayView2 = [v21 _mk_overlayView];
    if (_mk_overlayView)
    {
      [v24 insertSubview:_mk_overlayView belowSubview:_mk_overlayView2];
    }

    [vk_mapLayer insertOverlay:v14 belowOverlay:v22];
    goto LABEL_24;
  }

  if (_mk_overlayView)
  {
    [v24 addSubview:_mk_overlayView];
  }

  [vk_mapLayer addOverlay:v14];
LABEL_25:
}

- (void)_updateContentScale:(id)scale
{
  scaleCopy = scale;
  window = [(MKOverlayContainerView *)self window];
  screen = [window screen];
  v6 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v8 = mainScreen;

  [v8 scale];
  v10 = v9;
  [v8 nativeScale];
  v12 = v11;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] _isClassic])
  {

LABEL_10:
    v10 = fmin(v10, 2.0);
    v15 = v10;
    goto LABEL_11;
  }

  v14 = _MKLinkedOnOrAfterReleaseSet(769);

  if (!v14)
  {
    goto LABEL_10;
  }

  if (_MKLinkedOnOrAfterReleaseSet(1540))
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

LABEL_11:
  [scaleCopy setContentScaleFactor:v15 * (v15 / v10)];
}

- (void)_removeDrawable:(id)drawable forOverlay:(id)overlay level:(int64_t)level
{
  v25 = *MEMORY[0x1E69E9840];
  drawableCopy = drawable;
  overlayCopy = overlay;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  vkOverlays = self->_vkOverlays;
  v11 = self->_vkOverlays[level];
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        delegate = [v15 delegate];

        if (delegate == drawableCopy)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_11:
    vkOverlays = self->_vkOverlays;
  }

  [drawableCopy _setMapView:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  vk_mapLayer = [WeakRetained vk_mapLayer];
  [vk_mapLayer removeOverlay:v12];

  [v12 setDelegate:0];
  _mk_overlayView = [drawableCopy _mk_overlayView];
  [_mk_overlayView removeFromSuperview];

  [(NSMapTable *)self->_overlayToDrawable[level] removeObjectForKey:overlayCopy];
  [(NSMutableArray *)self->_drawables[level] removeObjectIdenticalTo:drawableCopy];
  if (v12)
  {
    [(NSMutableArray *)vkOverlays[level] removeObjectIdenticalTo:v12];
  }
}

- (NSArray)allDrawables
{
  array = [MEMORY[0x1E695DF70] array];
  overlayToDrawable = self->_overlayToDrawable;
  objectEnumerator = [(NSMapTable *)self->_overlayToDrawable[0] objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  objectEnumerator2 = [(NSMapTable *)overlayToDrawable[1] objectEnumerator];
  allObjects2 = [objectEnumerator2 allObjects];

  if (allObjects)
  {
    [array addObjectsFromArray:allObjects];
  }

  if (allObjects2)
  {
    [array addObjectsFromArray:allObjects2];
  }

  return array;
}

- (id)drawableForOverlay:(id)overlay
{
  overlayCopy = overlay;
  v8 = 0;
  v5 = [(MKOverlayContainerView *)self _levelForOverlay:overlayCopy exists:&v8];
  if (v8 == 1)
  {
    v6 = [(NSMapTable *)self->_overlayToDrawable[v5] objectForKey:overlayCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)overlaysInLevel:(int64_t)level
{
  checkLevel(level);
  array = [(NSMutableOrderedSet *)self->_overlays[level] array];
  v6 = [array copy];

  return v6;
}

- (NSArray)overlays
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MKOverlayContainerView _overlayCount](self, "_overlayCount")}];
  overlays = self->_overlays;
  array = [(NSMutableOrderedSet *)self->_overlays[0] array];
  [v3 addObjectsFromArray:array];

  array2 = [(NSMutableOrderedSet *)overlays[1] array];
  [v3 addObjectsFromArray:array2];

  return v3;
}

- (unint64_t)_overlayCount
{
  v2 = 0;
  v3 = 0;
  overlays = self->_overlays;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [(NSMutableOrderedSet *)overlays[v2] count];
    v5 = 0;
    v3 += v7;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  return v3;
}

- (void)insertOverlay:(id)overlay belowOverlay:(id)belowOverlay
{
  overlayCopy = overlay;
  belowOverlayCopy = belowOverlay;
  v9 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:belowOverlayCopy exists:&v9];
  if (v9)
  {
    [(MKOverlayContainerView *)self insertOverlay:overlayCopy atIndex:[(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:belowOverlayCopy] level:v8];
  }

  else
  {
    [(MKOverlayContainerView *)self addOverlay:overlayCopy];
  }
}

- (void)insertOverlay:(id)overlay aboveOverlay:(id)aboveOverlay
{
  overlayCopy = overlay;
  aboveOverlayCopy = aboveOverlay;
  v9 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:aboveOverlayCopy exists:&v9];
  if (v9)
  {
    [(MKOverlayContainerView *)self insertOverlay:overlayCopy atIndex:[(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:aboveOverlayCopy]+ 1 level:v8];
  }

  else
  {
    [(MKOverlayContainerView *)self addOverlay:overlayCopy];
  }
}

- (void)exchangeOverlay:(id)overlay withOverlay:(id)withOverlay
{
  overlayCopy = overlay;
  withOverlayCopy = withOverlay;
  v13 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:overlayCopy exists:&v13 + 1];
  v9 = [(MKOverlayContainerView *)self _levelForOverlay:withOverlayCopy exists:&v13];
  if (HIBYTE(v13) == 1 && v13 == 1)
  {
    v10 = v9;
    v11 = [(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:overlayCopy];
    v12 = [(NSMutableOrderedSet *)self->_overlays[v10] indexOfObject:withOverlayCopy];
    if (v8 == v10)
    {
      [(MKOverlayContainerView *)self _exchangeOverlayAtIndex:v11 withOverlayAtIndex:v12 level:v8];
    }

    else
    {
      [(MKOverlayContainerView *)self insertOverlay:withOverlayCopy atIndex:v11 level:v8];
      [(MKOverlayContainerView *)self insertOverlay:overlayCopy atIndex:v12 level:v10];
    }
  }
}

- (void)exchangeOverlayAtIndex:(unint64_t)index withOverlayAtIndex:(unint64_t)atIndex
{
  _defaultOverlayLevel = [objc_opt_class() _defaultOverlayLevel];

  [(MKOverlayContainerView *)self _exchangeOverlayAtIndex:index withOverlayAtIndex:atIndex level:_defaultOverlayLevel];
}

- (void)_exchangeOverlayAtIndex:(unint64_t)index withOverlayAtIndex:(unint64_t)atIndex level:(int64_t)level
{
  if (index != atIndex)
  {
    if (index <= atIndex)
    {
      indexCopy = atIndex;
    }

    else
    {
      indexCopy = index;
    }

    if (index >= atIndex)
    {
      indexCopy2 = atIndex;
    }

    else
    {
      indexCopy2 = index;
    }

    overlays = self->_overlays;
    v14 = [(NSMutableOrderedSet *)self->_overlays[level] objectAtIndex:indexCopy2];
    v11 = [(NSMutableOrderedSet *)overlays[level] objectAtIndex:indexCopy];
    v12 = [(NSMapTable *)self->_overlayToDrawable[level] objectForKey:v14];
    v13 = [(NSMapTable *)self->_overlayToDrawable[level] objectForKey:v11];
    [(NSMutableOrderedSet *)overlays[level] exchangeObjectAtIndex:indexCopy2 withObjectAtIndex:indexCopy];
    if (v12)
    {
      [(MKOverlayContainerView *)self _removeDrawable:v12 forOverlay:v14 level:level];
    }

    if (v13)
    {
      [(MKOverlayContainerView *)self _removeDrawable:v13 forOverlay:v11 level:level];
    }

    if (v12)
    {
      [(MKOverlayContainerView *)self _insertDrawable:v12 forOverlay:v14 atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:v12 level:level] level:level];
    }

    if (v13)
    {
      [(MKOverlayContainerView *)self _insertDrawable:v13 forOverlay:v11 atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:v13 level:level] level:level];
    }
  }
}

- (void)insertOverlay:(id)overlay atIndex:(unint64_t)index
{
  overlayCopy = overlay;
  -[MKOverlayContainerView insertOverlay:atIndex:level:](self, "insertOverlay:atIndex:level:", overlayCopy, index, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)insertOverlay:(id)overlay atIndex:(unint64_t)index level:(int64_t)level
{
  overlayCopy = overlay;
  [(MKOverlayContainerView *)self removeOverlay:?];
  v8 = [(NSMutableOrderedSet *)self->_overlays[level] count];
  v9 = self->_overlays[level];
  if (v8 <= index)
  {
    [(NSMutableOrderedSet *)v9 addObject:overlayCopy];
  }

  else
  {
    [(NSMutableOrderedSet *)v9 insertObject:overlayCopy atIndex:index];
  }

  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v10 = [(MKOverlayContainerView *)self _considerAddingDrawable:overlayCopy inAddRect:level level:?];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
    [WeakRetained overlayContainerAddedDrawables:v12];
  }
}

- (void)removeOverlays:(id)overlays
{
  v14 = *MEMORY[0x1E69E9840];
  overlaysCopy = overlays;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [overlaysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(overlaysCopy);
        }

        [(MKOverlayContainerView *)self removeOverlay:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [overlaysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (overlayCopy)
  {
    v8 = 0;
    v5 = [(MKOverlayContainerView *)self _levelForOverlay:overlayCopy exists:&v8];
    if (v8 == 1)
    {
      v6 = v5;
      v7 = [(NSMapTable *)self->_overlayToDrawable[v5] objectForKey:overlayCopy];
      if (v7)
      {
        [(MKOverlayContainerView *)self _removeDrawable:v7 forOverlay:overlayCopy level:v6];
      }

      [(NSMutableOrderedSet *)self->_overlays[v6] removeObject:overlayCopy];
      [(NSMapTable *)self->_internalOverlayToProvider removeObjectForKey:overlayCopy];
      [(MKOverlayContainerView *)self _updateShowsAppleLogoIfNeeded];
      [(MKOverlayContainerView *)self _unFlexTerrainIfNeeded];
    }
  }
}

- (int64_t)_levelForOverlay:(id)overlay exists:(BOOL *)exists
{
  v6 = 0;
  overlays = self->_overlays;
  v8 = 1;
  do
  {
    v9 = v8;
    if (([(NSMutableOrderedSet *)overlays[v6] containsObject:overlay]& 1) != 0)
    {
      *exists = 1;
      return v6;
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  *exists = 0;
  v10 = objc_opt_class();

  return [v10 _defaultOverlayLevel];
}

- (void)addOverlays:(id)overlays
{
  overlaysCopy = overlays;
  -[MKOverlayContainerView addOverlays:level:](self, "addOverlays:level:", overlaysCopy, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)addOverlay:(id)overlay
{
  overlayCopy = overlay;
  -[MKOverlayContainerView addOverlay:level:](self, "addOverlay:level:", overlayCopy, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)addOverlays:(id)overlays level:(int64_t)level
{
  v29 = *MEMORY[0x1E69E9840];
  overlaysCopy = overlays;
  checkLevel(level);
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = overlaysCopy;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  array = v15;
  if (!v16)
  {
    goto LABEL_14;
  }

  v18 = v16;
  array = 0;
  v19 = *v25;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v25 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v24 + 1) + 8 * i);
      [(MKOverlayContainerView *)self removeOverlay:v21, v24];
      [(NSMutableOrderedSet *)self->_overlays[level] addObject:v21];
      v22 = [(MKOverlayContainerView *)self _considerAddingDrawable:v21 inAddRect:level level:v8, v10, v12, v14];
      if (v22)
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObject:v22];
      }
    }

    v18 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v18);

  if (array)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayContainerAddedDrawables:array];

LABEL_14:
  }
}

- (void)addInternalOverlay:(id)overlay level:(int64_t)level provider:(id)provider
{
  overlayCopy = overlay;
  providerCopy = provider;
  checkLevel(level);
  [(MKOverlayContainerView *)self removeOverlay:overlayCopy];
  [(NSMutableOrderedSet *)self->_overlays[level] addObject:overlayCopy];
  internalOverlayToProvider = self->_internalOverlayToProvider;
  if (!internalOverlayToProvider)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    v11 = self->_internalOverlayToProvider;
    self->_internalOverlayToProvider = v10;

    internalOverlayToProvider = self->_internalOverlayToProvider;
  }

  [(NSMapTable *)internalOverlayToProvider setObject:providerCopy forKey:overlayCopy];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v12 = [(MKOverlayContainerView *)self _considerAddingDrawable:overlayCopy inAddRect:level level:?];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
    [WeakRetained overlayContainerAddedDrawables:v14];
  }
}

- (void)addOverlay:(id)overlay level:(int64_t)level
{
  overlayCopy = overlay;
  checkLevel(level);
  [(MKOverlayContainerView *)self removeOverlay:overlayCopy];
  [(NSMutableOrderedSet *)self->_overlays[level] addObject:overlayCopy];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v9 = [(MKOverlayContainerView *)self _considerAddingDrawable:overlayCopy inAddRect:level level:?];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
    [WeakRetained overlayContainerAddedDrawables:v8];
  }
}

- (void)addAndRemoveOverlayViews
{
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKOverlayContainerView *)selfCopy _mapRectWithFractionOfVisible:5.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v58 = 0;
  p_isa = &selfCopy->super.super.super.isa;
  v19 = 0;
  drawables = selfCopy->_drawables;
  v20 = 1;
  do
  {
    v57 = v20;
    v21 = [(NSMutableArray *)drawables[v19] count];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    overlays = selfCopy->_overlays;
    v22 = selfCopy->_overlays[v19];
    v23 = [(NSMutableOrderedSet *)v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v65;
      v26 = v19;
      v27 = (&selfCopy->super.super.super.isa + v19);
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v64 + 1) + 8 * i);
          v30 = [v27[54] objectForKey:v29];
          v31 = v30;
          if (v30 && v21 >= 0x65)
          {
            [v29 boundingMapRect];
            if (!MKMapRectIntersectsMapRectWrappingMeridian(v32, v33, v34, v35, v12, v14, v16, v18))
            {
              [p_isa _removeDrawable:v31 forOverlay:v29 level:v26];
              --v21;
            }
          }

          else if (!v30)
          {
            [v29 boundingMapRect];
            if (MKMapRectIntersectsMapRectWrappingMeridian(v36, v37, v38, v39, v4, v6, v8, v10))
            {
              v40 = [p_isa _considerAddingDrawable:v29 inAddRect:v26 level:{v4, v6, v8, v10}];
              if (v40)
              {
                v41 = v58;
                if (!v58)
                {
                  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v58 = v41;
                [v41 addObject:v40];
                ++v21;
              }
            }
          }
        }

        v24 = [(NSMutableOrderedSet *)v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = v19;
    }

    if (v21 >= 0x65)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v42 = overlays[v26];
      v43 = [(NSMutableOrderedSet *)v42 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v61;
LABEL_25:
        v46 = 0;
        while (1)
        {
          if (*v61 != v45)
          {
            objc_enumerationMutation(v42);
          }

          if (v21 < 0x65)
          {
            break;
          }

          v47 = *(*(&v60 + 1) + 8 * v46);
          v48 = [p_isa[v26 + 54] objectForKey:v47];
          if (v48)
          {
            [v47 boundingMapRect];
            if (!MKMapRectIntersectsMapRectWrappingMeridian(v49, v50, v51, v52, v12, v14, v16, v18))
            {
              [p_isa _removeDrawable:v48 forOverlay:v47 level:v26];
              --v21;
            }
          }

          if (v44 == ++v46)
          {
            v44 = [(NSMutableOrderedSet *)v42 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v44)
            {
              goto LABEL_25;
            }

            break;
          }
        }
      }
    }

    v20 = 0;
    v19 = 1;
    selfCopy = p_isa;
  }

  while ((v57 & 1) != 0);
  v53 = v58;
  if (v58)
  {
    WeakRetained = objc_loadWeakRetained(p_isa + 62);
    [WeakRetained overlayContainerAddedDrawables:v58];

    v53 = v58;
  }
}

- (id)_considerAddingDrawable:(id)drawable inAddRect:(id)rect level:(int64_t)level
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  drawableCopy = drawable;
  [(MKOverlayContainerView *)self _updateShowsAppleLogoIfNeeded];
  [(MKOverlayContainerView *)self _flexTerrainIfNeeded];
  v12 = [(NSMapTable *)self->_overlayToDrawable[level] objectForKey:drawableCopy];

  if (v12)
  {
    goto LABEL_2;
  }

  v15 = drawableCopy;
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 intersectsMapRect:{v9, v8, var0, var1}];

    if (v16)
    {
      goto LABEL_10;
    }

LABEL_2:
    v13 = 0;
    goto LABEL_3;
  }

  [v15 boundingMapRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (!MKMapRectIntersectsMapRectWrappingMeridian(v18, v20, v22, v24, v9, v8, var0, var1))
  {
    goto LABEL_2;
  }

LABEL_10:
  v25 = [(NSMapTable *)self->_internalOverlayToProvider objectForKey:v15];
  v26 = v25;
  if (v25)
  {
    WeakRetained = v25;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  v28 = WeakRetained;

  v13 = [v28 createDrawableForOverlay:v15];
  if (v13)
  {
    [(MKOverlayContainerView *)self _configureAndAddDrawable:v13 forOverlay:v15 level:level];
  }

LABEL_3:

  return v13;
}

- (void)_configureAndAddDrawable:(id)drawable forOverlay:(id)overlay level:(int64_t)level
{
  overlayCopy = overlay;
  drawableCopy = drawable;
  [overlayCopy boundingMapRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [drawableCopy set_boundingMapRect:?];
  _mk_overlayLayer = [drawableCopy _mk_overlayLayer];
  [_mk_overlayLayer setPosition:{v10 + v14 * 0.5, v12 + v16 * 0.5}];

  _mk_overlayLayer2 = [drawableCopy _mk_overlayLayer];
  [_mk_overlayLayer2 setBounds:{0.0, 0.0, v14, v16}];

  [(MKOverlayContainerView *)self _insertDrawable:drawableCopy forOverlay:overlayCopy atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:drawableCopy level:level] level:level];
}

- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFractionOfVisible:(double)visible
{
  v26[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained overlayContainerVisibleMapRect:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v7 + v11 > 268435456.0)
  {
    v26[0] = v7 + v11 + -268435456.0;
    v26[1] = v9 + v13;
    v26[2] = v7;
    v26[3] = v9;
    v7 = MKMapRectBoundingMapPoints(v26, 2);
    v9 = v14;
    v11 = v15;
    v13 = v16;
  }

  v17 = INFINITY;
  if (v7 == INFINITY && v9 == INFINITY)
  {
    v19 = INFINITY;
  }

  else
  {
    v19 = v7 - v11 * visible;
    v17 = v9 - v13 * visible;
    v11 = v11 - -(v11 * visible) * 2.0;
    v13 = v13 - -(v13 * visible) * 2.0;
  }

  v20 = 0x41B0000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0x41B0000000000000;
  v24 = v11;
  v25 = v13;

  return MKMapRectIntersection(*&v21, *(&v17 - 1));
}

- (int64_t)_drawableIndexForDrawable:(id)drawable level:(int64_t)level
{
  v21 = *MEMORY[0x1E69E9840];
  overlay = [drawable overlay];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_overlays[level];
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    v12 = (&self->super.super.super.isa + level);
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      if (*(*(&v16 + 1) + 8 * v13) == overlay)
      {
        break;
      }

      v14 = [v12[54] objectForKey:v16];

      if (v14)
      {
        ++v10;
      }

      if (v9 == ++v13)
      {
        v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_viewContainerForLevel:(int64_t)level
{
  viewContainers = self->_viewContainers;
  v5 = self->_viewContainers[level];
  if (!v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MKOverlayContainerView *)self bounds];
    v8 = [v7 initWithFrame:?];
    v9 = viewContainers[level];
    viewContainers[level] = v8;

    if (level < 1)
    {
LABEL_9:
      [(MKOverlayContainerView *)self insertSubview:viewContainers[level] atIndex:0];
    }

    else
    {
      levelCopy = level;
      while (levelCopy >= 1)
      {
        v11 = self->_vkOverlays[levelCopy-- + 1];
        if (v11)
        {
          v12 = v11;
          goto LABEL_8;
        }
      }

      v12 = *(viewContainers - 1);
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      [(MKOverlayContainerView *)self insertSubview:viewContainers[level] aboveSubview:v12];
    }

    v5 = viewContainers[level];
  }

  return v5;
}

- (MKOverlayContainerView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = MKOverlayContainerView;
  v3 = [(MKOverlayContainerView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v8 = v3->_overlays[v4];
      v3->_overlays[v4] = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = v3->_drawables[v4];
      v3->_drawables[v4] = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = v3->_vkOverlays[v4];
      v3->_vkOverlays[v4] = v11;

      v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
      v14 = v3->_overlayToDrawable[v4];
      v3->_overlayToDrawable[v4] = v13;

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }

  return v3;
}

+ (int64_t)_defaultOverlayLevel
{
  if (_defaultOverlayLevel_onceToken != -1)
  {
    dispatch_once(&_defaultOverlayLevel_onceToken, &__block_literal_global_7104);
  }

  return ~_defaultOverlayLevel_level & 1;
}

BOOL __46__MKOverlayContainerView__defaultOverlayLevel__block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(3338);
  if (result)
  {
    _defaultOverlayLevel_level = 1;
  }

  return result;
}

@end