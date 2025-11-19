@interface MKOverlayContainerView
+ (int64_t)_defaultOverlayLevel;
- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFractionOfVisible:(double)a3;
- (BOOL)_overlaySpansGlobeAndReplacesMapContent;
- (BOOL)requiresModernMap;
- (BOOL)supportsElevation;
- (MKMapView)mapView;
- (MKOverlayContainerView)initWithFrame:(CGRect)a3;
- (MKOverlayContainerViewDelegate)delegate;
- (NSArray)allDrawables;
- (NSArray)overlays;
- (id)_allOverlays;
- (id)_considerAddingDrawable:(id)a3 inAddRect:(id)a4 level:(int64_t)a5;
- (id)_viewContainerForLevel:(int64_t)a3;
- (id)drawableForOverlay:(id)a3;
- (id)overlaysInLevel:(int64_t)a3;
- (int64_t)_drawableIndexForDrawable:(id)a3 level:(int64_t)a4;
- (int64_t)_levelForOverlay:(id)a3 exists:(BOOL *)a4;
- (unint64_t)_overlayCount;
- (void)_configureAndAddDrawable:(id)a3 forOverlay:(id)a4 level:(int64_t)a5;
- (void)_exchangeOverlayAtIndex:(unint64_t)a3 withOverlayAtIndex:(unint64_t)a4 level:(int64_t)a5;
- (void)_flexTerrainIfNeeded;
- (void)_insertDrawable:(id)a3 forOverlay:(id)a4 atIndex:(int64_t)a5 level:(int64_t)a6;
- (void)_removeDrawable:(id)a3 forOverlay:(id)a4 level:(int64_t)a5;
- (void)_unFlexTerrainIfNeeded;
- (void)_updateContentScale:(id)a3;
- (void)_updateShowsAppleLogoIfNeeded;
- (void)addAndRemoveOverlayViews;
- (void)addInternalOverlay:(id)a3 level:(int64_t)a4 provider:(id)a5;
- (void)addOverlay:(id)a3;
- (void)addOverlay:(id)a3 level:(int64_t)a4;
- (void)addOverlays:(id)a3;
- (void)addOverlays:(id)a3 level:(int64_t)a4;
- (void)didMoveToWindow;
- (void)exchangeOverlay:(id)a3 withOverlay:(id)a4;
- (void)exchangeOverlayAtIndex:(unint64_t)a3 withOverlayAtIndex:(unint64_t)a4;
- (void)insertOverlay:(id)a3 aboveOverlay:(id)a4;
- (void)insertOverlay:(id)a3 atIndex:(unint64_t)a4;
- (void)insertOverlay:(id)a3 atIndex:(unint64_t)a4 level:(int64_t)a5;
- (void)insertOverlay:(id)a3 belowOverlay:(id)a4;
- (void)removeOverlay:(id)a3;
- (void)removeOverlays:(id)a3;
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
  v3 = [MEMORY[0x1E695DF70] array];
  overlays = self->_overlays;
  v5 = [(NSMutableOrderedSet *)self->_overlays[0] array];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableOrderedSet *)overlays[1] array];
  [v3 addObjectsFromArray:v6];

  return v3;
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
  v3 = [(MKOverlayContainerView *)self _overlaySpansGlobeAndReplacesMapContent];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained _setShowsAppleLogo:!v3];
}

- (void)_unFlexTerrainIfNeeded
{
  v2 = [(MKOverlayContainerView *)self mapView];
  [v2 _updateCartographicConfiguration];
}

- (void)_flexTerrainIfNeeded
{
  v2 = [(MKOverlayContainerView *)self mapView];
  [v2 _updateCartographicConfiguration];
}

- (BOOL)requiresModernMap
{
  v2 = [(MKOverlayContainerView *)self _allOverlays];
  v3 = [MKStandardMapConfiguration _overlaysRequireModernMap:v2];

  return v3;
}

- (BOOL)supportsElevation
{
  v3 = _MKLinkedOnOrAfterReleaseSet(3338);
  if (v3)
  {
    v4 = [(MKOverlayContainerView *)self _allOverlays];
    v5 = [MKStandardMapConfiguration _overlaysSupportElevation:v4];

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

- (void)_insertDrawable:(id)a3 forOverlay:(id)a4 atIndex:(int64_t)a5 level:(int64_t)a6
{
  v26 = a3;
  v10 = self->_overlayToDrawable[a6];
  v11 = a4;
  [(NSMapTable *)v10 setObject:v26 forKey:v11];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained vk_mapLayer];

  v14 = [MEMORY[0x1E69DF460] overlayWithDrawable:v26 forOverlay:v11 atLevel:a6];

  v15 = [(MKOverlayContainerView *)self mapView];
  [v26 _setMapView:v15];

  [(MKOverlayContainerView *)self _updateContentScale:v26];
  drawables = self->_drawables;
  v17 = [(NSMutableArray *)self->_drawables[a6] count];
  v18 = self->_drawables[a6];
  if (v17 <= a5)
  {
    [(NSMutableArray *)v18 addObject:v26];
    [(NSMutableArray *)self->_vkOverlays[a6] addObject:v14];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(NSMutableArray *)v18 insertObject:v26 atIndex:a5];
    [(NSMutableArray *)self->_vkOverlays[a6] insertObject:v14 atIndex:a5];
    if (a5)
    {
LABEL_3:
      v19 = [(NSMutableArray *)drawables[a6] objectAtIndex:a5 - 1];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = a5 + 1;
  if (a5 + 1 >= [(NSMutableArray *)drawables[a6] count])
  {
    v21 = 0;
  }

  else
  {
    v21 = [(NSMutableArray *)drawables[a6] objectAtIndex:a5 + 1];
  }

  if (a5)
  {
    a5 = [(NSMutableArray *)self->_vkOverlays[a6] objectAtIndex:a5 - 1];
  }

  if (v20 >= [(NSMutableArray *)self->_vkOverlays[a6] count])
  {
    v22 = 0;
  }

  else
  {
    v22 = [(NSMutableArray *)self->_vkOverlays[a6] objectAtIndex:v20];
  }

  v23 = [v26 _mk_overlayView];
  if (v23)
  {
    v24 = [(MKOverlayContainerView *)self _viewContainerForLevel:a6];
    if (v19)
    {
LABEL_16:
      v25 = [v19 _mk_overlayView];
      if (v23)
      {
        [v24 insertSubview:v23 aboveSubview:v25];
      }

      [v13 insertOverlay:v14 aboveOverlay:a5];
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
    v25 = [v21 _mk_overlayView];
    if (v23)
    {
      [v24 insertSubview:v23 belowSubview:v25];
    }

    [v13 insertOverlay:v14 belowOverlay:v22];
    goto LABEL_24;
  }

  if (v23)
  {
    [v24 addSubview:v23];
  }

  [v13 addOverlay:v14];
LABEL_25:
}

- (void)_updateContentScale:(id)a3
{
  v16 = a3;
  v4 = [(MKOverlayContainerView *)self window];
  v5 = [v4 screen];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v8 = v7;

  [v8 scale];
  v10 = v9;
  [v8 nativeScale];
  v12 = v11;
  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v13 _isClassic])
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
  [v16 setContentScaleFactor:v15 * (v15 / v10)];
}

- (void)_removeDrawable:(id)a3 forOverlay:(id)a4 level:(int64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  vkOverlays = self->_vkOverlays;
  v11 = self->_vkOverlays[a5];
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
        v16 = [v15 delegate];

        if (v16 == v8)
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

  [v8 _setMapView:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [WeakRetained vk_mapLayer];
  [v18 removeOverlay:v12];

  [v12 setDelegate:0];
  v19 = [v8 _mk_overlayView];
  [v19 removeFromSuperview];

  [(NSMapTable *)self->_overlayToDrawable[a5] removeObjectForKey:v9];
  [(NSMutableArray *)self->_drawables[a5] removeObjectIdenticalTo:v8];
  if (v12)
  {
    [(NSMutableArray *)vkOverlays[a5] removeObjectIdenticalTo:v12];
  }
}

- (NSArray)allDrawables
{
  v3 = [MEMORY[0x1E695DF70] array];
  overlayToDrawable = self->_overlayToDrawable;
  v5 = [(NSMapTable *)self->_overlayToDrawable[0] objectEnumerator];
  v6 = [v5 allObjects];

  v7 = [(NSMapTable *)overlayToDrawable[1] objectEnumerator];
  v8 = [v7 allObjects];

  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  if (v8)
  {
    [v3 addObjectsFromArray:v8];
  }

  return v3;
}

- (id)drawableForOverlay:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MKOverlayContainerView *)self _levelForOverlay:v4 exists:&v8];
  if (v8 == 1)
  {
    v6 = [(NSMapTable *)self->_overlayToDrawable[v5] objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)overlaysInLevel:(int64_t)a3
{
  checkLevel(a3);
  v5 = [(NSMutableOrderedSet *)self->_overlays[a3] array];
  v6 = [v5 copy];

  return v6;
}

- (NSArray)overlays
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MKOverlayContainerView _overlayCount](self, "_overlayCount")}];
  overlays = self->_overlays;
  v5 = [(NSMutableOrderedSet *)self->_overlays[0] array];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableOrderedSet *)overlays[1] array];
  [v3 addObjectsFromArray:v6];

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

- (void)insertOverlay:(id)a3 belowOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:v7 exists:&v9];
  if (v9)
  {
    [(MKOverlayContainerView *)self insertOverlay:v6 atIndex:[(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:v7] level:v8];
  }

  else
  {
    [(MKOverlayContainerView *)self addOverlay:v6];
  }
}

- (void)insertOverlay:(id)a3 aboveOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:v7 exists:&v9];
  if (v9)
  {
    [(MKOverlayContainerView *)self insertOverlay:v6 atIndex:[(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:v7]+ 1 level:v8];
  }

  else
  {
    [(MKOverlayContainerView *)self addOverlay:v6];
  }
}

- (void)exchangeOverlay:(id)a3 withOverlay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [(MKOverlayContainerView *)self _levelForOverlay:v6 exists:&v13 + 1];
  v9 = [(MKOverlayContainerView *)self _levelForOverlay:v7 exists:&v13];
  if (HIBYTE(v13) == 1 && v13 == 1)
  {
    v10 = v9;
    v11 = [(NSMutableOrderedSet *)self->_overlays[v8] indexOfObject:v6];
    v12 = [(NSMutableOrderedSet *)self->_overlays[v10] indexOfObject:v7];
    if (v8 == v10)
    {
      [(MKOverlayContainerView *)self _exchangeOverlayAtIndex:v11 withOverlayAtIndex:v12 level:v8];
    }

    else
    {
      [(MKOverlayContainerView *)self insertOverlay:v7 atIndex:v11 level:v8];
      [(MKOverlayContainerView *)self insertOverlay:v6 atIndex:v12 level:v10];
    }
  }
}

- (void)exchangeOverlayAtIndex:(unint64_t)a3 withOverlayAtIndex:(unint64_t)a4
{
  v7 = [objc_opt_class() _defaultOverlayLevel];

  [(MKOverlayContainerView *)self _exchangeOverlayAtIndex:a3 withOverlayAtIndex:a4 level:v7];
}

- (void)_exchangeOverlayAtIndex:(unint64_t)a3 withOverlayAtIndex:(unint64_t)a4 level:(int64_t)a5
{
  if (a3 != a4)
  {
    if (a3 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a3;
    }

    if (a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    overlays = self->_overlays;
    v14 = [(NSMutableOrderedSet *)self->_overlays[a5] objectAtIndex:v9];
    v11 = [(NSMutableOrderedSet *)overlays[a5] objectAtIndex:v8];
    v12 = [(NSMapTable *)self->_overlayToDrawable[a5] objectForKey:v14];
    v13 = [(NSMapTable *)self->_overlayToDrawable[a5] objectForKey:v11];
    [(NSMutableOrderedSet *)overlays[a5] exchangeObjectAtIndex:v9 withObjectAtIndex:v8];
    if (v12)
    {
      [(MKOverlayContainerView *)self _removeDrawable:v12 forOverlay:v14 level:a5];
    }

    if (v13)
    {
      [(MKOverlayContainerView *)self _removeDrawable:v13 forOverlay:v11 level:a5];
    }

    if (v12)
    {
      [(MKOverlayContainerView *)self _insertDrawable:v12 forOverlay:v14 atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:v12 level:a5] level:a5];
    }

    if (v13)
    {
      [(MKOverlayContainerView *)self _insertDrawable:v13 forOverlay:v11 atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:v13 level:a5] level:a5];
    }
  }
}

- (void)insertOverlay:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  -[MKOverlayContainerView insertOverlay:atIndex:level:](self, "insertOverlay:atIndex:level:", v6, a4, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)insertOverlay:(id)a3 atIndex:(unint64_t)a4 level:(int64_t)a5
{
  v13 = a3;
  [(MKOverlayContainerView *)self removeOverlay:?];
  v8 = [(NSMutableOrderedSet *)self->_overlays[a5] count];
  v9 = self->_overlays[a5];
  if (v8 <= a4)
  {
    [(NSMutableOrderedSet *)v9 addObject:v13];
  }

  else
  {
    [(NSMutableOrderedSet *)v9 insertObject:v13 atIndex:a4];
  }

  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v10 = [(MKOverlayContainerView *)self _considerAddingDrawable:v13 inAddRect:a5 level:?];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
    [WeakRetained overlayContainerAddedDrawables:v12];
  }
}

- (void)removeOverlays:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MKOverlayContainerView *)self removeOverlay:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeOverlay:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = 0;
    v5 = [(MKOverlayContainerView *)self _levelForOverlay:v4 exists:&v8];
    if (v8 == 1)
    {
      v6 = v5;
      v7 = [(NSMapTable *)self->_overlayToDrawable[v5] objectForKey:v4];
      if (v7)
      {
        [(MKOverlayContainerView *)self _removeDrawable:v7 forOverlay:v4 level:v6];
      }

      [(NSMutableOrderedSet *)self->_overlays[v6] removeObject:v4];
      [(NSMapTable *)self->_internalOverlayToProvider removeObjectForKey:v4];
      [(MKOverlayContainerView *)self _updateShowsAppleLogoIfNeeded];
      [(MKOverlayContainerView *)self _unFlexTerrainIfNeeded];
    }
  }
}

- (int64_t)_levelForOverlay:(id)a3 exists:(BOOL *)a4
{
  v6 = 0;
  overlays = self->_overlays;
  v8 = 1;
  do
  {
    v9 = v8;
    if (([(NSMutableOrderedSet *)overlays[v6] containsObject:a3]& 1) != 0)
    {
      *a4 = 1;
      return v6;
    }

    v8 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  *a4 = 0;
  v10 = objc_opt_class();

  return [v10 _defaultOverlayLevel];
}

- (void)addOverlays:(id)a3
{
  v4 = a3;
  -[MKOverlayContainerView addOverlays:level:](self, "addOverlays:level:", v4, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)addOverlay:(id)a3
{
  v4 = a3;
  -[MKOverlayContainerView addOverlay:level:](self, "addOverlay:level:", v4, [objc_opt_class() _defaultOverlayLevel]);
}

- (void)addOverlays:(id)a3 level:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  checkLevel(a4);
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v17 = v15;
  if (!v16)
  {
    goto LABEL_14;
  }

  v18 = v16;
  v17 = 0;
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
      [(NSMutableOrderedSet *)self->_overlays[a4] addObject:v21];
      v22 = [(MKOverlayContainerView *)self _considerAddingDrawable:v21 inAddRect:a4 level:v8, v10, v12, v14];
      if (v22)
      {
        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] array];
        }

        [v17 addObject:v22];
      }
    }

    v18 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v18);

  if (v17)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayContainerAddedDrawables:v17];

LABEL_14:
  }
}

- (void)addInternalOverlay:(id)a3 level:(int64_t)a4 provider:(id)a5
{
  v15 = a3;
  v8 = a5;
  checkLevel(a4);
  [(MKOverlayContainerView *)self removeOverlay:v15];
  [(NSMutableOrderedSet *)self->_overlays[a4] addObject:v15];
  internalOverlayToProvider = self->_internalOverlayToProvider;
  if (!internalOverlayToProvider)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    v11 = self->_internalOverlayToProvider;
    self->_internalOverlayToProvider = v10;

    internalOverlayToProvider = self->_internalOverlayToProvider;
  }

  [(NSMapTable *)internalOverlayToProvider setObject:v8 forKey:v15];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v12 = [(MKOverlayContainerView *)self _considerAddingDrawable:v15 inAddRect:a4 level:?];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
    [WeakRetained overlayContainerAddedDrawables:v14];
  }
}

- (void)addOverlay:(id)a3 level:(int64_t)a4
{
  v6 = a3;
  checkLevel(a4);
  [(MKOverlayContainerView *)self removeOverlay:v6];
  [(NSMutableOrderedSet *)self->_overlays[a4] addObject:v6];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v9 = [(MKOverlayContainerView *)self _considerAddingDrawable:v6 inAddRect:a4 level:?];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
    [WeakRetained overlayContainerAddedDrawables:v8];
  }
}

- (void)addAndRemoveOverlayViews
{
  v2 = self;
  v70 = *MEMORY[0x1E69E9840];
  [(MKOverlayContainerView *)self _mapRectWithFractionOfVisible:3.0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKOverlayContainerView *)v2 _mapRectWithFractionOfVisible:5.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v58 = 0;
  p_isa = &v2->super.super.super.isa;
  v19 = 0;
  drawables = v2->_drawables;
  v20 = 1;
  do
  {
    v57 = v20;
    v21 = [(NSMutableArray *)drawables[v19] count];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    overlays = v2->_overlays;
    v22 = v2->_overlays[v19];
    v23 = [(NSMutableOrderedSet *)v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v65;
      v26 = v19;
      v27 = (&v2->super.super.super.isa + v19);
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
    v2 = p_isa;
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

- (id)_considerAddingDrawable:(id)a3 inAddRect:(id)a4 level:(int64_t)a5
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v8 = a4.var0.var1;
  v9 = a4.var0.var0;
  v11 = a3;
  [(MKOverlayContainerView *)self _updateShowsAppleLogoIfNeeded];
  [(MKOverlayContainerView *)self _flexTerrainIfNeeded];
  v12 = [(NSMapTable *)self->_overlayToDrawable[a5] objectForKey:v11];

  if (v12)
  {
    goto LABEL_2;
  }

  v15 = v11;
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
    [(MKOverlayContainerView *)self _configureAndAddDrawable:v13 forOverlay:v15 level:a5];
  }

LABEL_3:

  return v13;
}

- (void)_configureAndAddDrawable:(id)a3 forOverlay:(id)a4 level:(int64_t)a5
{
  v8 = a4;
  v19 = a3;
  [v8 boundingMapRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v19 set_boundingMapRect:?];
  v17 = [v19 _mk_overlayLayer];
  [v17 setPosition:{v10 + v14 * 0.5, v12 + v16 * 0.5}];

  v18 = [v19 _mk_overlayLayer];
  [v18 setBounds:{0.0, 0.0, v14, v16}];

  [(MKOverlayContainerView *)self _insertDrawable:v19 forOverlay:v8 atIndex:[(MKOverlayContainerView *)self _drawableIndexForDrawable:v19 level:a5] level:a5];
}

- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFractionOfVisible:(double)a3
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
    v19 = v7 - v11 * a3;
    v17 = v9 - v13 * a3;
    v11 = v11 - -(v11 * a3) * 2.0;
    v13 = v13 - -(v13 * a3) * 2.0;
  }

  v20 = 0x41B0000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0x41B0000000000000;
  v24 = v11;
  v25 = v13;

  return MKMapRectIntersection(*&v21, *(&v17 - 1));
}

- (int64_t)_drawableIndexForDrawable:(id)a3 level:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [a3 overlay];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_overlays[a4];
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    v12 = (&self->super.super.super.isa + a4);
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      if (*(*(&v16 + 1) + 8 * v13) == v6)
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

- (id)_viewContainerForLevel:(int64_t)a3
{
  viewContainers = self->_viewContainers;
  v5 = self->_viewContainers[a3];
  if (!v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MKOverlayContainerView *)self bounds];
    v8 = [v7 initWithFrame:?];
    v9 = viewContainers[a3];
    viewContainers[a3] = v8;

    if (a3 < 1)
    {
LABEL_9:
      [(MKOverlayContainerView *)self insertSubview:viewContainers[a3] atIndex:0];
    }

    else
    {
      v10 = a3;
      while (v10 >= 1)
      {
        v11 = self->_vkOverlays[v10-- + 1];
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
      [(MKOverlayContainerView *)self insertSubview:viewContainers[a3] aboveSubview:v12];
    }

    v5 = viewContainers[a3];
  }

  return v5;
}

- (MKOverlayContainerView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = MKOverlayContainerView;
  v3 = [(MKOverlayContainerView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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