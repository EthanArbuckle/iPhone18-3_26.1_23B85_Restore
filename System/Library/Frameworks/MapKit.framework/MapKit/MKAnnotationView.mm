@interface MKAnnotationView
+ (BOOL)_isInitiallyHiddenWhenAdded;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)_compactCalloutAccessory;
+ (id)_disclosureCalloutButton;
+ (id)_fullCalloutAccessory;
+ (id)_openInMapsAccessory;
+ (id)_sheetAccessoryWithViewController:(id)controller;
- (BOOL)_canShowSelectionAccessory:(id)accessory;
- (BOOL)_isProvidingVKLabelContents;
- (BOOL)_isSelectable;
- (BOOL)_shouldShowCalloutIfSelected;
- (BOOL)_titleRequiresCustomFeature;
- (BOOL)isCollidingWithAnnotationView:(id)view previouslyCollided:(BOOL)collided;
- (BOOL)isProvidingCustomFeature;
- (BOOL)shouldShowCallout;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated;
- (CGPoint)_anchorPoint;
- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)position;
- (CGPoint)_bottomCalloutOffset;
- (CGPoint)_calculateMapOffsetForPresentationFrame:(CGRect)frame;
- (CGPoint)_offsetToAnnotationView:(id)view;
- (CGPoint)_openInMapsAnchorPoint;
- (CGPoint)accessoryOffset;
- (CGPoint)calloutOffset;
- (CGPoint)centerOffset;
- (CGPoint)leftCalloutOffset;
- (CGPoint)rightCalloutOffset;
- (CGRect)_calculateAccessoryFrameForSize:(CGSize)size anchorPosition:(int64_t)position anchorPoint:(CGPoint)point pointerHeight:(double)height;
- (CGRect)_calculatePresentationFrameForCalloutView:(id)view;
- (CGRect)_calculatePresentationFrameForOpenInMapsView:(id)view;
- (CGRect)_collisionFrame;
- (CGRect)_labelDisplayFrame;
- (CGRect)_mapkit_visibleRect;
- (CGRect)_significantFrame;
- (CGSize)_effectiveMapViewportSize;
- (CLLocationCoordinate2D)_presentationCoordinate;
- (CLLocationCoordinate2D)coordinate;
- (MKAnnotationView)clusterAnnotationView;
- (MKAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(NSString *)reuseIdentifier;
- (MKAnnotationView)initWithCoder:(NSCoder *)aDecoder;
- (MKAnnotationView)initWithFrame:(CGRect)frame;
- (MKUsageCounter)_usageCounter;
- (MKUserLocationAnnotationViewProxy)_userLocationProxy;
- (UIEdgeInsets)_annotationTrackingInsets;
- (UIEdgeInsets)_collisionAlignmentRectInsets;
- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (VKAnchorWrapper)anchor;
- (_MKStaticMapView)_staticMapView;
- (double)_labelDisplayHeight;
- (double)_pointsForDistance:(double)distance;
- (float)_clampZPriority:(float)priority;
- (float)_defaultSelectedZPriority;
- (float)_defaultZPriority;
- (float)_effectiveZPriority;
- (id)_annotationContainer;
- (id)_containerView;
- (id)_effectiveSubtitle;
- (id)_effectiveTitleIsCollidable:(BOOL *)collidable;
- (id)_getPopover:(id)popover;
- (id)_hitTest:(CGPoint)test view:(id)view withEvent:(id)event;
- (id)_mapItem;
- (id)_mapView;
- (id)_resolvedAccessoryFor:(id)for;
- (id)_resolvedAutomaticCalloutStyle;
- (id)_resolvedAutomaticStyleWithViewController:(id)controller;
- (id)_urlForOpenInMaps;
- (id)customFeatureAnnotation;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (int64_t)_calloutAnchorPositionForCurrentFrame;
- (int64_t)_effectiveCalloutStyle;
- (int64_t)compareForClustering:(id)clustering;
- (int64_t)compareForCollision:(id)collision;
- (unint64_t)_reasonToDeferSelectionAccessoryPresentationStyle:(id)style;
- (void)_addAnnotationObservation;
- (void)_commonInit;
- (void)_dismissCallout:(BOOL)callout;
- (void)_dismissPresentedSelectionAccessoryFromViewController:(id)controller animated:(BOOL)animated;
- (void)_dismissSelectionAccessoryAnimated:(BOOL)animated;
- (void)_dismissSelectionAccessoryPresentation:(id)presentation animated:(BOOL)animated;
- (void)_dismissSelectionAccessoryViewAnimated:(BOOL)animated;
- (void)_enableRotationForHeadingMode:(double)mode;
- (void)_fetchMapItemForSelectionAccessoryView;
- (void)_invalidateCachedCoordinate;
- (void)_invalidateCustomFeatureForced:(BOOL)forced coordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count;
- (void)_layoutCalloutSelectionAccessoryView:(id)view;
- (void)_layoutOpenInMapsAccessory;
- (void)_mapVisibleCenteringRectChanged;
- (void)_metricsDidChange;
- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_performHideAnimationIfNeeded;
- (void)_performOffsetAnimationIfNeeded;
- (void)_performStateUpdatesIfNeeded;
- (void)_presentSelectionAccessorySheetFromViewController:(id)controller animated:(BOOL)animated;
- (void)_removeAnnotationObservation;
- (void)_removePopover;
- (void)_setAnimatingToCoordinate:(BOOL)coordinate;
- (void)_setCanDisplayDisclosureInCallout:(BOOL)callout;
- (void)_setCanDisplayPlacemarkInCallout:(BOOL)callout;
- (void)_setDirection:(double)direction;
- (void)_setDragState:(unint64_t)state animated:(BOOL)animated;
- (void)_setHidden:(BOOL)hidden forReason:(unint64_t)reason animated:(BOOL)animated completion:(id)completion;
- (void)_setMapRotationRadians:(double)radians;
- (void)_setPositionOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_setRotationRadians:(double)radians withAnimation:(id)animation;
- (void)_setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)_setSelectedZPriority:(float)priority;
- (void)_setTracking:(BOOL)tracking;
- (void)_setZIndex:(unint64_t)index;
- (void)_setZPriority:(float)priority;
- (void)_showCallout:(BOOL)callout;
- (void)_showCalloutSelectionAccessoryView:(id)view animated:(BOOL)animated;
- (void)_showDeferredSelectionAccessoryForReasonIfNeeded:(unint64_t)needed;
- (void)_showMapItemDetailCalloutAccessory:(id)accessory animated:(BOOL)animated;
- (void)_showMapItemDetailOpenInMapsAccessory:(id)accessory animated:(BOOL)animated;
- (void)_showMapItemDetailSheetAccessory:(id)accessory animated:(BOOL)animated;
- (void)_showSelectionAccessory:(id)accessory animated:(BOOL)animated;
- (void)_showSelectionAccessoryWithStyle:(id)style animated:(BOOL)animated;
- (void)_updateAnchorPosition:(CGPoint)position alignToPixels:(BOOL)pixels;
- (void)_updateEffectiveZPriority;
- (void)_updateFromMap;
- (void)_updateSelectionAccessoryIfNeededAnimated:(BOOL)animated;
- (void)_updateSelectionAccessoryViewContent;
- (void)_userTrackingModeDidChange:(id)change;
- (void)configureCustomFeature:(id)feature;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)selectionAccessoryViewDidRequestDismissal:(id)dismissal;
- (void)setAlpha:(double)alpha;
- (void)setAnnotation:(id)annotation;
- (void)setBounds:(CGRect)bounds;
- (void)setCalloutOffset:(CGPoint)calloutOffset;
- (void)setCanShowCallout:(BOOL)canShowCallout;
- (void)setCenterOffset:(CGPoint)centerOffset;
- (void)setClusteringIdentifier:(NSString *)clusteringIdentifier;
- (void)setCollisionMode:(MKAnnotationViewCollisionMode)collisionMode;
- (void)setDetailCalloutAccessoryView:(UIView *)detailCalloutAccessoryView;
- (void)setDisplayPriority:(MKFeatureDisplayPriority)displayPriority;
- (void)setDraggable:(BOOL)draggable;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(UIImage *)image;
- (void)setLeftCalloutAccessoryView:(UIView *)leftCalloutAccessoryView;
- (void)setRightCalloutAccessoryView:(UIView *)rightCalloutAccessoryView;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelectedZPriority:(MKAnnotationViewZPriority)selectedZPriority;
- (void)setSubtitleVisibility:(int64_t)visibility;
- (void)setTitleVisibility:(int64_t)visibility;
- (void)setZPriority:(MKAnnotationViewZPriority)zPriority;
@end

@implementation MKAnnotationView

- (void)_commonInit
{
  self->_realAlpha = 1.0;
  [objc_opt_class() _defaultDisplayPriority];
  self->_displayPriority = v3;
  self->_selectionPriority = 1000.0;
  self->_titleVisibility = 1;
  self->_subtitleVisibility = 1;
  self->_allowedCalloutEdges = 1;
  v4 = objc_opt_class();
  self->_subclassImplementsAlignmentRectInsets = [v4 _mapkit_instanceImplementationOfSelector:sel_alignmentRectInsets isFromSubclassOfClass:{objc_msgSend(objc_opt_class(), "_mapkitLeafClass")}];
  [(MKAnnotationView *)self _defaultZPriority];
  self->_zPriority = v5;
  [(MKAnnotationView *)self _defaultSelectedZPriority];
  self->_selectedZPriority = v6;
  self->_wantsViewBasedPositioning = [objc_opt_class() _wantsViewBasedPositioning];
}

- (float)_defaultZPriority
{
  if ([objc_opt_class() _zIndex] == 20)
  {
    return 500.0;
  }

  else
  {
    return vcvts_n_f32_u64([objc_opt_class() _zIndex], 0x1FuLL) * 1000.0;
  }
}

- (float)_defaultSelectedZPriority
{
  if ([objc_opt_class() _selectedZIndex] != 2147483646)
  {
    self->_selectedZPriority = vcvts_n_f32_u64([objc_opt_class() _selectedZIndex], 0x1FuLL) * 1000.0;
  }

  return 1000.0;
}

- (VKAnchorWrapper)anchor
{
  anchor = self->_anchor;
  if (!anchor)
  {
    v4 = objc_alloc_init(_MKAnnotationViewAnchor);
    v5 = self->_anchor;
    self->_anchor = v4;

    -[VKAnchorWrapper setFollowsTerrain:](self->_anchor, "setFollowsTerrain:", [objc_opt_class() _followsTerrain]);
    [(_MKAnnotationViewAnchor *)self->_anchor setAnnotationView:self];
    anchor = self->_anchor;
  }

  return anchor;
}

- (_MKStaticMapView)_staticMapView
{
  WeakRetained = objc_loadWeakRetained(&self->_staticMapView);

  return WeakRetained;
}

- (id)_mapView
{
  superview = [(MKAnnotationView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (void)_metricsDidChange
{
  _annotationContainer = [(MKAnnotationView *)self _annotationContainer];
  [_annotationContainer annotationViewDidChangeMetrics:self];

  isProvidingCustomFeature = [(MKAnnotationView *)self isProvidingCustomFeature];

  [(MKAnnotationView *)self invalidateCustomFeatureForced:isProvidingCustomFeature];
}

- (id)_annotationContainer
{
  superview = [(MKAnnotationView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = superview;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isProvidingCustomFeature
{
  if ([(MKAnnotationView *)self isHidden])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    [(MKAnnotationView *)self displayPriority];
    if (v4 < 1000.0 || (v3 = [(MKAnnotationView *)self _titleRequiresCustomFeature]))
    {
      LOBYTE(v3) = [(MKAnnotationView *)self dragState]== MKAnnotationViewDragStateNone;
    }
  }

  return v3;
}

- (BOOL)_titleRequiresCustomFeature
{
  if ([(MKAnnotationView *)self titleVisibility]!= 1 || [(MKAnnotationView *)self subtitleVisibility]!= 1)
  {
    return 1;
  }

  _mapItem = [(MKAnnotationView *)self _mapItem];
  v4 = _mapItem != 0;

  return v4;
}

- (id)_mapItem
{
  if (objc_opt_respondsToSelector())
  {
    _representedMapItem = [(MKAnnotation *)self->_annotation _representedMapItem];
  }

  else
  {
    _representedMapItem = 0;
  }

  return _representedMapItem;
}

- (id)_containerView
{
  superview = [(MKAnnotationView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = superview;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CLLocationCoordinate2D)_presentationCoordinate
{
  v2 = &OBJC_IVAR___MKAnnotationView__presentationCoordinate;
  if (!self->_animatingToCoordinate && !self->_tracking)
  {
    v2 = &OBJC_IVAR___MKAnnotationView__coordinate;
  }

  v3 = (self + *v2);
  v4 = *v3;
  v5 = v3[1];
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v4 layoutSubviews];
  if (self->_imageLayer)
  {
    layer = [(MKAnnotationView *)self layer];
    [layer bounds];
    [(CALayer *)self->_imageLayer setFrame:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKAnnotationView *)self _layoutOpenInMapsAccessory];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MKAnnotationView *)self _layoutCalloutSelectionAccessoryView:self->_selectionAccessoryView];
    }
  }
}

- (void)_mapVisibleCenteringRectChanged
{
  calloutView = self->_calloutView;
  if (calloutView)
  {
    [(MKCalloutView *)calloutView annotationViewFrameDidChange];
  }
}

- (void)_invalidateCachedCoordinate
{
  v11 = *MEMORY[0x1E69E9840];
  p_coordinate = &self->_coordinate;
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  annotation = [(MKAnnotationView *)self annotation];
  [annotation coordinate];
  p_coordinate->latitude = v7;
  p_coordinate->longitude = v8;

  if (vabdd_f64(p_coordinate->latitude, latitude) >= 0.00000000999999994 || vabdd_f64(p_coordinate->longitude, longitude) >= 0.00000000999999994)
  {
    *v9 = latitude;
    *&v9[1] = longitude;
    v10 = *p_coordinate;
    [(MKAnnotationView *)self _invalidateCustomFeatureForced:[(MKAnnotationView *)self isProvidingCustomFeature] coordinates:v9 count:2];
  }
}

- (CGPoint)centerOffset
{
  x = self->_centerOffset.x;
  y = self->_centerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)_collisionAlignmentRectInsets
{
  if (self->_subclassImplementsAlignmentRectInsets)
  {
    [(MKAnnotationView *)self alignmentRectInsets];
  }

  else
  {
    [(MKAnnotationView *)self _defaultCollisionAlignmentRectInsets];
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets
{
  v2 = -5.0;
  v3 = -5.0;
  v4 = -5.0;
  v5 = -5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updateFromMap
{
  if (_MKLinkedOnOrAfterReleaseSet(3852))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_titleVisibility = 1;
      self->_subtitleVisibility = 1;
    }
  }
}

- (MKUserLocationAnnotationViewProxy)_userLocationProxy
{
  userLocationProxy = self->_userLocationProxy;
  if (!userLocationProxy)
  {
    v4 = objc_alloc_init(MKUserLocationAnnotationViewProxy);
    v5 = self->_userLocationProxy;
    self->_userLocationProxy = v4;

    [(MKUserLocationAnnotationViewProxy *)self->_userLocationProxy setAnnotationView:self];
    userLocationProxy = self->_userLocationProxy;
  }

  return userLocationProxy;
}

- (CGRect)_collisionFrame
{
  x = self->_collisionFrame.origin.x;
  y = self->_collisionFrame.origin.y;
  width = self->_collisionFrame.size.width;
  height = self->_collisionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_performStateUpdatesIfNeeded
{
  hiddenReasons = self->_hiddenReasons;
  superview = [(MKAnnotationView *)self superview];

  if (superview && (hiddenReasons & 0xFFFFFFFE) == 2)
  {
    [(MKAnnotationView *)self prepareForDisplay];
  }

  [(MKAnnotationView *)self _performOffsetAnimationIfNeeded];

  [(MKAnnotationView *)self _performHideAnimationIfNeeded];
}

- (float)_effectiveZPriority
{
  v3 = 1001.0;
  if ([(MKAnnotationView *)self dragState]!= MKAnnotationViewDragStateStarting && [(MKAnnotationView *)self dragState]!= MKAnnotationViewDragStateDragging && [(MKAnnotationView *)self dragState]!= MKAnnotationViewDragStateEnding)
  {
    if ([(MKAnnotationView *)self isSelected])
    {
      [(MKAnnotationView *)self selectedZPriority];
      v5 = v4;
      v6 = 0.0;
      if (v5 > 0.0)
      {
        [(MKAnnotationView *)self selectedZPriority];
      }
    }

    else
    {
      [(MKAnnotationView *)self zPriority];
      v8 = v7;
      v6 = 0.0;
      if (v8 > 0.0)
      {
        [(MKAnnotationView *)self zPriority];
      }
    }

    return fminf(v6, 1000.0);
  }

  return v3;
}

- (CGPoint)_anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_performOffsetAnimationIfNeeded
{
  if ((*&self->_flags & 0x1000) != 0)
  {
    *&self->_flags &= ~0x1000u;
    v2 = *(MEMORY[0x1E695EFF8] + 8) == self->_realOffset.y && *MEMORY[0x1E695EFF8] == self->_realOffset.x;
    v3 = 0.3;
    if (v2)
    {
      v3 = 0.5;
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__MKAnnotationView__performOffsetAnimationIfNeeded__block_invoke;
    v4[3] = &unk_1E76CDB38;
    v4[4] = self;
    [MEMORY[0x1E69DD250] _mapkit_animateFromCurrentStateWithDuration:v4 animations:&__block_literal_global_15891 completion:v3];
  }
}

- (void)_performHideAnimationIfNeeded
{
  if ((*&self->_flags & 0x2000) != 0)
  {
    *&self->_flags &= ~0x2000u;
    isHidden = [(MKAnnotationView *)self isHidden];
    v4 = isHidden;
    v5 = 0.3;
    if (!isHidden)
    {
      v5 = 0.5;
    }

    if (self->_realOffset.y == *(MEMORY[0x1E695EFF8] + 8) && self->_realOffset.x == *MEMORY[0x1E695EFF8])
    {
      v7 = 0.4;
    }

    else
    {
      v7 = v5;
    }

    v12.receiver = self;
    v12.super_class = MKAnnotationView;
    if ([(MKAnnotationView *)&v12 isHidden])
    {
      v11.receiver = self;
      v11.super_class = MKAnnotationView;
      [(MKAnnotationView *)&v11 setHidden:0];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MKAnnotationView__performHideAnimationIfNeeded__block_invoke;
    v9[3] = &unk_1E76CA760;
    v10 = v4;
    v9[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__MKAnnotationView__performHideAnimationIfNeeded__block_invoke_2;
    v8[3] = &unk_1E76CA670;
    v8[4] = self;
    [MEMORY[0x1E69DD250] _mapkit_animateFromCurrentStateWithDuration:v9 animations:v8 completion:v7];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKUsageCounter)_usageCounter
{
  WeakRetained = objc_loadWeakRetained(&self->_usageCounter);

  return WeakRetained;
}

- (CGPoint)accessoryOffset
{
  x = self->_accessoryOffset.x;
  y = self->_accessoryOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (MKAnnotationView)clusterAnnotationView
{
  WeakRetained = objc_loadWeakRetained(&self->_clusterAnnotationView);

  return WeakRetained;
}

- (CGPoint)_bottomCalloutOffset
{
  x = self->_bottomCalloutOffset.x;
  y = self->_bottomCalloutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightCalloutOffset
{
  x = self->_rightCalloutOffset.x;
  y = self->_rightCalloutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftCalloutOffset
{
  x = self->_leftCalloutOffset.x;
  y = self->_leftCalloutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)configureCustomFeature:(id)feature
{
  featureCopy = feature;
  v8 = 0;
  v5 = [(MKAnnotationView *)self _effectiveTitleIsCollidable:&v8];
  _effectiveSubtitle = [(MKAnnotationView *)self _effectiveSubtitle];
  if ([v5 length])
  {
    [featureCopy setText:v5 locale:0];
  }

  if ([_effectiveSubtitle length])
  {
    [featureCopy setAnnotationText:_effectiveSubtitle locale:0];
  }

  if ([_effectiveSubtitle length] || objc_msgSend(v5, "length"))
  {
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [featureCopy setTextDisplayMode:v7];
  }

  if ([(_MKDeferredSelectionAccessoryPresentation *)self->_deferredSelectionAccessory reason]== 2)
  {
    [(_MKDeferredSelectionAccessoryPresentation *)self->_deferredSelectionAccessory setReady:1];
  }
}

- (id)_effectiveSubtitle
{
  annotation = [(MKAnnotationView *)self annotation];
  if (![(MKAnnotationView *)self isSelected]|| ![(MKAnnotationView *)self canShowCallout]) && (objc_opt_respondsToSelector() & 1) != 0 && ((subtitleVisibility = self->_subtitleVisibility, subtitleVisibility == 2) || !subtitleVisibility && ([(MKAnnotationView *)self isSelected]|| (objc_opt_class(), (objc_opt_isKindOfClass()))))
  {
    subtitle = [annotation subtitle];
  }

  else
  {
    subtitle = 0;
  }

  return subtitle;
}

- (id)_effectiveTitleIsCollidable:(BOOL *)collidable
{
  if (![(MKAnnotationView *)self isSelected]|| ![(MKAnnotationView *)self canShowCallout])
  {
    annotation = [(MKAnnotationView *)self annotation];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      titleVisibility = self->_titleVisibility;
      if (titleVisibility == 2)
      {
LABEL_9:
        annotation2 = [(MKAnnotationView *)self annotation];
        title = [annotation2 title];

        goto LABEL_11;
      }

      if (!titleVisibility)
      {
        isSelected = [(MKAnnotationView *)self isSelected];
        if (collidable && !isSelected)
        {
          *collidable = 1;
        }

        goto LABEL_9;
      }
    }
  }

  title = 0;
LABEL_11:

  return title;
}

- (BOOL)_isProvidingVKLabelContents
{
  titleVisibility = self->_titleVisibility;
  if (titleVisibility != 1)
  {
    v4 = [(MKAnnotationView *)self _effectiveTitleIsCollidable:0];
    if (v4)
    {
      isKindOfClass = 1;
LABEL_12:

      return isKindOfClass & 1;
    }
  }

  subtitleVisibility = self->_subtitleVisibility;
  if (subtitleVisibility == 1 || ([(MKAnnotationView *)self _effectiveSubtitle], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (subtitleVisibility == 1)
    {
      goto LABEL_10;
    }

    v7 = 0;
  }

  else
  {
    isKindOfClass = 1;
  }

LABEL_10:
  if (titleVisibility != 1)
  {
    v4 = 0;
    goto LABEL_12;
  }

  return isKindOfClass & 1;
}

- (void)_invalidateCustomFeatureForced:(BOOL)forced coordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count
{
  customFeatureAnnotation = self->_customFeatureAnnotation;
  if (customFeatureAnnotation)
  {
    v6 = 0;
  }

  else
  {
    v6 = !forced;
  }

  if (!v6)
  {
    self->_customFeatureAnnotation = 0;

    if (count)
    {
      p_longitude = &coordinates->longitude;
      do
      {
        if (fabs(*p_longitude) <= 180.0 && fabs(*(p_longitude - 1)) <= 90.0)
        {
          GEOMapPointForCoordinate();
          v22 = v11;
          v23 = v12;
          GEOMapRectBoundingMapPoints();
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [(MKAnnotationView *)self _annotationContainer:v22];
          [v21 invalidateCustomFeatureDataSourceRect:{v14, v16, v18, v20}];
        }

        p_longitude += 2;
        --count;
      }

      while (count);
    }
  }
}

- (id)customFeatureAnnotation
{
  customFeatureAnnotation = self->_customFeatureAnnotation;
  if (!customFeatureAnnotation)
  {
    v4 = objc_opt_new();
    v5 = self->_customFeatureAnnotation;
    self->_customFeatureAnnotation = v4;

    [(_MKAnnotationViewCustomFeatureAnnotation *)self->_customFeatureAnnotation setAnnotationView:self];
    customFeatureAnnotation = self->_customFeatureAnnotation;
  }

  return customFeatureAnnotation;
}

- (void)setSubtitleVisibility:(int64_t)visibility
{
  if (self->_subtitleVisibility != visibility)
  {
    self->_subtitleVisibility = visibility;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:1];
  }
}

- (void)setTitleVisibility:(int64_t)visibility
{
  if (self->_titleVisibility != visibility)
  {
    self->_titleVisibility = visibility;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:1];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  if (self->_clusteringIdentifier || self->_displayPriority < 1000.0)
  {
    [(MKAnnotationView *)self _defaultCollisionAlignmentRectInsets];
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isCollidingWithAnnotationView:(id)view previouslyCollided:(BOOL)collided
{
  x = self->_collisionFrame.origin.x;
  y = self->_collisionFrame.origin.y;
  width = self->_collisionFrame.size.width;
  height = self->_collisionFrame.size.height;
  v11 = *(view + 82);
  v10 = *(view + 83);
  v13 = *(view + 84);
  v12 = *(view + 85);
  if (!collided)
  {
    v61 = CGRectInset(self->_collisionFrame, 5.0, 5.0);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    v61.origin.x = v11;
    v61.origin.y = v10;
    v61.size.width = v13;
    v61.size.height = v12;
    v62 = CGRectInset(v61, 5.0, 5.0);
    v11 = v62.origin.x;
    v10 = v62.origin.y;
    v13 = v62.size.width;
    v12 = v62.size.height;
  }

  collisionMode = self->_collisionMode;
  v15 = *(view + 88);
  if (collisionMode == 2 || v15 == 2)
  {
    return 0;
  }

  if (collisionMode != v15)
  {
    if (v15 == 1)
    {
      v20 = v12;
    }

    else
    {
      v20 = height;
    }

    v21 = v10;
    if (v15 == 1)
    {
      v22 = v13;
    }

    else
    {
      v22 = width;
    }

    v23 = v12;
    if (v15 == 1)
    {
      v24 = v21;
    }

    else
    {
      v24 = y;
    }

    v25 = v13;
    if (v15 == 1)
    {
      v26 = v11;
    }

    else
    {
      v26 = x;
    }

    if (v15 == 1)
    {
      v23 = height;
    }

    recta = v23;
    v27 = v11;
    if (v15 == 1)
    {
      v28 = width;
    }

    else
    {
      v28 = v25;
    }

    if (v15 == 1)
    {
      v29 = x;
    }

    else
    {
      y = v21;
      v29 = v27;
    }

    v30 = v20;
    v70.origin.x = v26;
    v70.origin.y = v24;
    v70.size.width = v22;
    v70.size.height = v30;
    MidX = CGRectGetMidX(v70);
    v71.origin.x = v26;
    v71.origin.y = v24;
    v56 = v22;
    v71.size.width = v22;
    v71.size.height = v30;
    MidY = CGRectGetMidY(v71);
    v72.origin.x = v29;
    v72.origin.y = y;
    v72.size.width = v28;
    v72.size.height = recta;
    v60.x = MidX;
    v60.y = MidY;
    if (CGRectContainsPoint(v72, v60))
    {
      return 1;
    }

    v73.origin.x = v29;
    v73.origin.y = y;
    v73.size.width = v28;
    v73.size.height = recta;
    MinX = CGRectGetMinX(v73);
    v74.origin.x = v29;
    v74.origin.y = y;
    v74.size.width = v28;
    v74.size.height = recta;
    v34 = fmin(fmax(MidX, MinX), CGRectGetMaxX(v74));
    v75.origin.x = v29;
    v75.origin.y = y;
    v75.size.width = v28;
    v75.size.height = recta;
    MinY = CGRectGetMinY(v75);
    v76.origin.x = v29;
    v76.origin.y = y;
    v76.size.width = v28;
    v76.size.height = recta;
    v36 = fmin(fmax(MidY, MinY), CGRectGetMaxY(v76));
    v37 = (MidX - v34) * (MidX - v34) + (MidY - v36) * (MidY - v36);
    v38 = v56;
    if (v56 >= v30)
    {
      v38 = v30;
    }

    return v37 < v38 * 0.5 * (v38 * 0.5);
  }

  if (collisionMode)
  {
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v54 = CGRectGetMidX(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v53 = CGRectGetMidY(v64);
    v65.origin.x = v11;
    v65.origin.y = v10;
    v65.size.width = v13;
    v65.size.height = v12;
    v52 = CGRectGetMidX(v65);
    v66.origin.x = v11;
    v66.origin.y = v10;
    v55 = v13;
    rect = v12;
    v66.size.width = v13;
    v66.size.height = v12;
    v51 = CGRectGetMidY(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v18 = CGRectGetWidth(v67) * 0.5;
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    if (v18 >= CGRectGetHeight(v68) * 0.5)
    {
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v19 = CGRectGetHeight(v77);
    }

    else
    {
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      v19 = CGRectGetWidth(v69);
    }

    v48 = v19 * 0.5;
    v78.origin.x = v11;
    v78.origin.y = v10;
    v78.size.width = v55;
    v78.size.height = rect;
    v49 = CGRectGetWidth(v78) * 0.5;
    v79.origin.x = v11;
    v79.origin.y = v10;
    v79.size.width = v55;
    v79.size.height = rect;
    if (v49 >= CGRectGetHeight(v79) * 0.5)
    {
      v81.origin.x = v11;
      v81.origin.y = v10;
      v81.size.width = v55;
      v81.size.height = rect;
      v50 = CGRectGetHeight(v81);
    }

    else
    {
      v80.origin.x = v11;
      v80.origin.y = v10;
      v80.size.width = v55;
      v80.size.height = rect;
      v50 = CGRectGetWidth(v80);
    }

    return (v54 - v52) * (v54 - v52) + (v53 - v51) * (v53 - v51) < (v48 + v50 * 0.5) * (v48 + v50 * 0.5);
  }

  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  v44 = v11;
  v45 = v10;
  v46 = v13;
  v47 = v12;

  return CGRectIntersectsRect(*&v40, *&v44);
}

- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (MKAnnotationKVOContext == context)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
    }

    else
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __70__MKAnnotationView__mkObserveValueForKeyPath_ofObject_change_context___block_invoke;
      v7[3] = &unk_1E76CD1C0;
      objc_copyWeak(&v8, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __70__MKAnnotationView__mkObserveValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCalloutViewIfNeededAnimated:1];
}

- (void)_removeAnnotationObservation
{
  annotationObserver = self->_annotationObserver;
  if (annotationObserver)
  {
    [(_MKKVOProxy *)annotationObserver removeObserverForObject:self forKeyPath:@"annotation.title" context:MKAnnotationKVOContext];
    v4 = self->_annotationObserver;
    self->_annotationObserver = 0;
  }
}

- (void)_addAnnotationObservation
{
  if (!self->_annotationObserver)
  {
    v3 = [[_MKKVOProxy alloc] initWithDelegate:self];
    annotationObserver = self->_annotationObserver;
    self->_annotationObserver = v3;

    v5 = self->_annotationObserver;
    v6 = MKAnnotationKVOContext;

    [(_MKKVOProxy *)v5 addObserverForObject:self forKeyPath:@"annotation.title" options:0 context:v6];
  }
}

- (double)_pointsForDistance:(double)distance
{
  anchor = [(MKAnnotationView *)self anchor];
  [anchor pointOffsetForDistanceOffset:distance];
  v6 = v5;

  return v6;
}

- (void)_setRotationRadians:(double)radians withAnimation:(id)animation
{
  animationCopy = animation;
  if (vabdd_f64(radians, self->_rotationRadians) >= 0.000001 && (*&self->_flags & 0x300) != 0x100)
  {
    CGAffineTransformMakeRotation(&v11, radians);
    _contentLayer = [(MKAnnotationView *)self _contentLayer];
    v10 = v11;
    [_contentLayer setAffineTransform:&v10];

    *&self->_flags |= 0x200u;
    self->_rotationRadians = radians;
    _contentLayer2 = [(MKAnnotationView *)self _contentLayer];
    v9 = _contentLayer2;
    if (animationCopy)
    {
      [_contentLayer2 addAnimation:animationCopy forKey:@"rotation"];
    }

    else
    {
      [_contentLayer2 removeAnimationForKey:@"rotation"];
    }
  }
}

- (void)_userTrackingModeDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  object = [change object];
  v5 = object;
  if ((*&self->_flags & 0x100) != 0 && [object userTrackingMode] == 2)
  {
    v6 = MKGetAnnotationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138477827;
      selfCopy = self;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "A custom transform was applied to '%{private}@' and is not supported with MKUserTrackingModeFollowWithHeading.", &v8, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"MKMapViewUserTrackingModeDidChangeNotification" object:0];
  }
}

- (void)_enableRotationForHeadingMode:(double)mode
{
  _contentLayer = [(MKAnnotationView *)self _contentLayer];
  defaultCenter = _contentLayer;
  if (_contentLayer)
  {
    [_contentLayer affineTransform];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  if (CGAffineTransformIsIdentity(&v8))
  {
    goto LABEL_7;
  }

  flags = self->_flags;

  if ((flags & 0x200) == 0)
  {
    *&self->_flags |= 0x100u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__userTrackingModeDidChange_ name:@"MKMapViewUserTrackingModeDidChangeNotification" object:0];
LABEL_7:
  }

  [(MKAnnotationView *)self _setRotationRadians:0 withAnimation:mode, *&v8.a, *&v8.c, *&v8.tx];
}

- (CGPoint)_offsetToAnnotationView:(id)view
{
  [(MKAnnotationView *)self center];
  v5 = v4;
  v7 = v6;
  [view center];
  v9 = v8 - v5;
  v11 = v10 - v7;
  result.y = v11;
  result.x = v9;
  return result;
}

- (void)_setPositionOffset:(CGPoint)offset animated:(BOOL)animated
{
  if (self->_realOffset.x != offset.x || self->_realOffset.y != offset.y)
  {
    v11 = v4;
    v12 = v5;
    self->_realOffset = offset;
    flags = self->_flags;
    *&self->_flags = flags & 0xEFFF;
    if (animated)
    {
      *&self->_flags = flags | 0x1000;
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
      CGAffineTransformMakeTranslation(&v10, offset.x, offset.y);
      v9 = v10;
      [(MKAnnotationView *)self setTransform:&v9];
    }
  }
}

- (void)_setHidden:(BOOL)hidden forReason:(unint64_t)reason animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  reasonCopy = reason;
  hiddenCopy = hidden;
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = completionCopy;
  hiddenReasons = self->_hiddenReasons;
  v13 = 1 << reasonCopy;
  if (hiddenCopy)
  {
    self->_hiddenReasons = hiddenReasons | v13;
    if (hiddenReasons)
    {
      goto LABEL_23;
    }

    v14 = 1;
  }

  else
  {
    v15 = hiddenReasons & ~v13;
    self->_hiddenReasons = v15;
    v14 = v15 != 0;
    if ((hiddenReasons == 0) != (v15 != 0))
    {
      goto LABEL_23;
    }
  }

  if (completionCopy)
  {
    hiddenCompletionBlocks = self->_hiddenCompletionBlocks;
    if (hiddenCompletionBlocks)
    {
      v17 = MEMORY[0x1A58E9F30](completionCopy);
      [(NSMutableArray *)hiddenCompletionBlocks addObject:v17];
    }

    else
    {
      v18 = MEMORY[0x1E695DF70];
      v17 = MEMORY[0x1A58E9F30](completionCopy);
      v19 = [v18 arrayWithObject:v17];
      v20 = self->_hiddenCompletionBlocks;
      self->_hiddenCompletionBlocks = v19;
    }
  }

  flags = self->_flags;
  *&self->_flags = flags & 0xDFFF;
  if (animatedCopy)
  {
    *&self->_flags = flags | 0x2000;
  }

  else
  {
    realAlpha = 0.0;
    if (!v14)
    {
      realAlpha = self->_realAlpha;
    }

    v34.receiver = self;
    v34.super_class = MKAnnotationView;
    [(MKAnnotationView *)&v34 setAlpha:realAlpha];
    v33.receiver = self;
    v33.super_class = MKAnnotationView;
    [(MKAnnotationView *)&v33 setHidden:v14];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = self->_hiddenCompletionBlocks;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v23);
          }

          (*(*(*(&v29 + 1) + 8 * i) + 16))(*(*(&v29 + 1) + 8 * i));
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v25);
    }

    [(NSMutableArray *)self->_hiddenCompletionBlocks removeAllObjects];
  }

  [(MKAnnotationView *)self invalidateCustomFeatureForced:[(MKAnnotationView *)self isProvidingCustomFeature]];
  _annotationContainer = [(MKAnnotationView *)self _annotationContainer];
  [_annotationContainer annotationViewDidChangeHidden:self];

LABEL_23:
}

uint64_t __51__MKAnnotationView__performOffsetAnimationIfNeeded__block_invoke(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  v1 = *(a1 + 32);
  CGAffineTransformMakeTranslation(&v4, v1[65], v1[66]);
  v3 = v4;
  return [(CGFloat *)v1 setTransform:&v3];
}

id __49__MKAnnotationView__performHideAnimationIfNeeded__block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = *(*(a1 + 32) + 512);
  }

  v3.receiver = *(a1 + 32);
  v3.super_class = MKAnnotationView;
  return objc_msgSendSuper2(&v3, sel_setAlpha_, v1);
}

uint64_t __49__MKAnnotationView__performHideAnimationIfNeeded__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v13.receiver = v2;
  v13.super_class = MKAnnotationView;
  objc_msgSendSuper2(&v13, sel_setHidden_, [v2 isHidden]);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 504);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i));
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  return [*(*(a1 + 32) + 504) removeAllObjects];
}

- (void)setAlpha:(double)alpha
{
  self->_realAlpha = alpha;
  v3.receiver = self;
  v3.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v3 setAlpha:?];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];

  [(MKAnnotationView *)self _setHidden:hiddenCopy forReason:0 animated:_mapkit_shouldAdoptImplicitAnimationParameters];
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  [(MKAnnotationView *)self prepareForSnapshotting];

  return [(MKAnnotationView *)self snapshotViewAfterScreenUpdates:updatesCopy];
}

- (void)didMoveToSuperview
{
  superview = [(MKAnnotationView *)self superview];
  if (superview)
  {
    v5 = superview;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    superview = v5;
    if ((isKindOfClass & 1) == 0)
    {
      [(MKAnnotationView *)self prepareForSnapshotting];
      superview = v5;
    }
  }
}

- (void)_updateEffectiveZPriority
{
  _containerView = [(MKAnnotationView *)self _containerView];
  [_containerView annotationViewDidChangeZPriority:self];
}

- (void)_setZIndex:(unint64_t)index
{
  if (self->_zIndex != index)
  {
    self->_zIndex = index;
    *&v3 = vcvts_n_f32_u64(index, 0x1FuLL) * 1000.0;
    [(MKAnnotationView *)self setZPriority:v3];
  }
}

- (void)_setCanDisplayPlacemarkInCallout:(BOOL)callout
{
  if (callout)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFBF | v3;
}

- (void)_setCanDisplayDisclosureInCallout:(BOOL)callout
{
  if (callout)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFDF | v3;
}

- (void)_setDragState:(unint64_t)state animated:(BOOL)animated
{
  dragState = self->_dragState;
  self->_dragState = state;
  [(MKAnnotationView *)self _updateEffectiveZPriority];
  if (state == 1 || !state && dragState)
  {
    [(MKAnnotationView *)self invalidateCustomFeatureForced:state != 1];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dragState];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v10 = [v7 dictionaryWithObjectsAndKeys:{v8, @"oldValue", v9, @"newValue", 0}];
  [defaultCenter postNotificationName:@"MKAnnotationViewDragStateChangedNotification" object:self userInfo:v10];
}

- (void)setDraggable:(BOOL)draggable
{
  if (draggable)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFF7F | v3;
  if (draggable)
  {
    WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
    [WeakRetained countUsageOfTypeIfNeeded:43];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFEF | v3;
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *&self->_flags = *&self->_flags & 0xFFFD | v3;
}

- (CGRect)_significantFrame
{
  [(MKAnnotationView *)self _significantBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKAnnotationView *)self frame];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (CGRect)_mapkit_visibleRect
{
  [(MKAnnotationView *)self _significantBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  _calloutView = [(MKAnnotationView *)self _calloutView];

  if (_calloutView)
  {
    _calloutView2 = [(MKAnnotationView *)self _calloutView];
    [_calloutView2 frame];
    v24.origin.x = v13;
    v24.origin.y = v14;
    v24.size.width = v15;
    v24.size.height = v16;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectUnion(v21, v24);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_setTracking:(BOOL)tracking
{
  if (self->_tracking != tracking)
  {
    trackingCopy = tracking;
    [(MKAnnotationView *)self _presentationCoordinate];
    self->_tracking = trackingCopy;
    if (trackingCopy)
    {
      self->_presentationCoordinate.latitude = v5;
      self->_presentationCoordinate.longitude = v6;
    }
  }
}

- (void)_setAnimatingToCoordinate:(BOOL)coordinate
{
  if (self->_animatingToCoordinate != coordinate)
  {
    coordinateCopy = coordinate;
    [(MKAnnotationView *)self _presentationCoordinate];
    self->_animatingToCoordinate = coordinateCopy;
    if (coordinateCopy)
    {
      self->_presentationCoordinate.latitude = v5;
      self->_presentationCoordinate.longitude = v6;
    }
  }
}

- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)coordinate
{
  self->_presentationCoordinate = coordinate;
  _presentationCoordinateChangedCallback = [(MKAnnotationView *)self _presentationCoordinateChangedCallback];

  if (_presentationCoordinateChangedCallback)
  {
    _presentationCoordinateChangedCallback2 = [(MKAnnotationView *)self _presentationCoordinateChangedCallback];
    _presentationCoordinateChangedCallback2[2]();
  }
}

- (void)_setDirection:(double)direction
{
  self->_direction = direction;
  CGAffineTransformMakeRotation(&v4, -(self->_mapRotationRadians - direction * 0.0174532925));
  [(MKAnnotationView *)self setTransform:&v4];
}

- (void)_setMapRotationRadians:(double)radians
{
  self->_mapRotationRadians = radians;
  direction = self->_direction;
  if (direction > 0.0)
  {
    v8 = v3;
    v9 = v4;
    CGAffineTransformMakeRotation(&v7, -(radians - direction * 0.0174532925));
    [(MKAnnotationView *)self setTransform:&v7];
  }
}

- (void)setCalloutOffset:(CGPoint)calloutOffset
{
  y = calloutOffset.y;
  x = calloutOffset.x;
  p_calloutOffset = &self->_calloutOffset;
  if (vabdd_f64(calloutOffset.x, self->_calloutOffset.x) >= 0.001 || vabdd_f64(calloutOffset.y, self->_calloutOffset.y) >= 0.001)
  {
    [(MKAnnotationView *)self willChangeValueForKey:@"calloutOffset"];
    p_calloutOffset->x = x;
    p_calloutOffset->y = y;

    [(MKAnnotationView *)self didChangeValueForKey:@"calloutOffset"];
  }
}

- (CGPoint)calloutOffset
{
  x = self->_calloutOffset.x;
  y = self->_calloutOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setCenterOffset:(CGPoint)centerOffset
{
  self->_centerOffset = centerOffset;
  if (_notifyCenterOffsetChanged_onceToken != -1)
  {
    dispatch_once(&_notifyCenterOffsetChanged_onceToken, &__block_literal_global_815);
  }

  if (_notifyCenterOffsetChanged_notify == 1)
  {

    [(MKAnnotationView *)self _metricsDidChange];
  }
}

- (void)setCanShowCallout:(BOOL)canShowCallout
{
  if (canShowCallout)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFF7 | v4;
  WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
  if (WeakRetained)
  {
    flags = self->_flags;

    if ((flags & 8) == 0)
    {
      v7 = objc_loadWeakRetained(&self->_usageCounter);
      [v7 countUsageOfTypeIfNeeded:46];
    }
  }
}

- (void)_dismissCallout:(BOOL)callout
{
  calloutCopy = callout;
  v5 = self->_calloutView;
  if (v5)
  {
    calloutView = self->_calloutView;
    self->_calloutView = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__MKAnnotationView__dismissCallout___block_invoke;
    v7[3] = &unk_1E76CDB38;
    v8 = v5;
    [(MKCalloutView *)v8 dismissAnimated:calloutCopy completionBlock:v7];
  }
}

- (void)_showCallout:(BOOL)callout
{
  calloutCopy = callout;
  if (!self->_calloutView)
  {
    [(MKAnnotationView *)self _effectiveCalloutStyle];
    objc_opt_class();
    v5 = [objc_alloc(objc_claimAutoreleasedReturnValue()) initWithAnnotationView:self];
    calloutView = self->_calloutView;
    self->_calloutView = v5;
  }

  _mapView = [(MKAnnotationView *)self _mapView];
  _calloutShowAnimationGroup = [_mapView _calloutShowAnimationGroup];

  if (_calloutShowAnimationGroup)
  {
    dispatch_group_enter(_calloutShowAnimationGroup);
  }

  v9 = self->_calloutView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__MKAnnotationView__showCallout___block_invoke;
  v11[3] = &unk_1E76CDB38;
  v12 = _calloutShowAnimationGroup;
  v10 = _calloutShowAnimationGroup;
  [(MKCalloutView *)v9 showAnimated:calloutCopy completionBlock:v11];
}

void __33__MKAnnotationView__showCallout___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

- (void)_fetchMapItemForSelectionAccessoryView
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_selectionAccessoryMapItemRequest)
  {
    objc_initWeak(&location, self);
    v3 = self->_annotation;
    v4 = [[MKMapItemRequest alloc] initWithMapFeatureAnnotation:v3];
    selectionAccessoryMapItemRequest = self->_selectionAccessoryMapItemRequest;
    self->_selectionAccessoryMapItemRequest = v4;

    v6 = self->_selectionAccessoryMapItemRequest;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__MKAnnotationView__fetchMapItemForSelectionAccessoryView__block_invoke;
    v7[3] = &unk_1E76C87E0;
    objc_copyWeak(&v8, &location);
    [(MKMapItemRequest *)v6 getMapItemWithCompletionHandler:v7];
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

void __58__MKAnnotationView__fetchMapItemForSelectionAccessoryView__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 115);
    if (v6)
    {
      [v5 displayMapItem:v6];
    }

    else
    {
      [v5 displayError];
    }
  }
}

- (void)_updateSelectionAccessoryViewContent
{
  _mapItem = [(MKAnnotationView *)self _mapItem];
  v4 = _mapItem;
  if (_mapItem)
  {
    [(MKSelectionAccessoryView *)self->_selectionAccessoryView displayMapItem:_mapItem];
  }

  else
  {
    [(MKAnnotationView *)self _fetchMapItemForSelectionAccessoryView];
  }
}

- (void)_dismissSelectionAccessoryViewAnimated:(BOOL)animated
{
  superview = [(MKSelectionAccessoryView *)self->_selectionAccessoryView superview];

  if (superview)
  {
    [(MKSelectionAccessoryView *)self->_selectionAccessoryView removeFromSuperview];
  }

  selectionAccessoryView = self->_selectionAccessoryView;
  self->_selectionAccessoryView = 0;

  selectionAccessoryViewController = self->_selectionAccessoryViewController;
  self->_selectionAccessoryViewController = 0;
}

- (void)_dismissSelectionAccessoryPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationCopy = presentation;
  _presentationViewController = [presentationCopy _presentationViewController];

  if (_presentationViewController)
  {
    _presentationViewController2 = [presentationCopy _presentationViewController];
    [(MKAnnotationView *)self _dismissPresentedSelectionAccessoryFromViewController:_presentationViewController2 animated:animatedCopy];
  }
}

- (CGRect)_calculateAccessoryFrameForSize:(CGSize)size anchorPosition:(int64_t)position anchorPoint:(CGPoint)point pointerHeight:(double)height
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  v11 = 0.0;
  if (position > 2)
  {
    if (position == 3)
    {
      [(MKAnnotationView *)self _horizontalAccessoryDisplayPadding:size.width];
      v13 = x + v23;
    }

    else
    {
      v13 = 0.0;
      if (position != 4)
      {
        goto LABEL_11;
      }

      [(MKAnnotationView *)self _horizontalAccessoryDisplayPadding:size.width];
      v13 = x - v18 - width;
    }

    v27.origin.y = 0.0;
    v27.origin.x = v13;
    v27.size.width = width;
    v27.size.height = height;
    v11 = y - CGRectGetMidY(v27);
    goto LABEL_11;
  }

  if (position == 1)
  {
    v19 = 0;
    v20 = width;
    heightCopy = height;
    v13 = x - CGRectGetMidX(*(&v11 - 1));
    [(MKAnnotationView *)self _verticalAccessoryDisplayPadding];
    v11 = y + v22 + height;
  }

  else
  {
    v13 = 0.0;
    if (position == 2)
    {
      v14 = 0;
      v15 = width;
      heightCopy2 = height;
      v13 = x - CGRectGetMidX(*(&v11 - 1));
      [(MKAnnotationView *)self _verticalAccessoryDisplayPadding];
      v11 = y - v17 - height - height;
    }
  }

LABEL_11:
  v24 = v13;
  v25 = width;
  heightCopy3 = height;
  result.size.height = heightCopy3;
  result.size.width = v25;
  result.origin.y = v11;
  result.origin.x = v24;
  return result;
}

- (CGPoint)_calculateMapOffsetForPresentationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _containerView = [(MKAnnotationView *)self _containerView];
  _containerView2 = [(MKAnnotationView *)self _containerView];
  [_containerView _visibleCenteringRectInView:_containerView2];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  rect = height;
  v34 = *MEMORY[0x1E695EFF8];
  v30 = v15;
  v32 = *(MEMORY[0x1E695EFF8] + 8);
  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v15;
  v29 = v17;
  v36.size.height = v17;
  v45.origin.x = x;
  v18 = y;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (!CGRectContainsRect(v36, v45))
  {
    v21 = x;
    if (x >= v11)
    {
      v37.origin.x = x;
      v37.origin.y = v18;
      v22 = width;
      v37.size.width = width;
      v37.size.height = rect;
      MaxX = CGRectGetMaxX(v37);
      v38.origin.x = v11;
      v38.origin.y = v13;
      v24 = v29;
      v23 = v30;
      v38.size.width = v30;
      v38.size.height = v29;
      v25 = MaxX <= CGRectGetMaxX(v38);
      v19 = v34;
      if (!v25)
      {
        v39.origin.x = x;
        v39.origin.y = v18;
        v39.size.width = v22;
        v39.size.height = rect;
        v26 = CGRectGetMaxX(v39);
        v40.origin.x = v11;
        v40.origin.y = v13;
        v40.size.width = v30;
        v40.size.height = v29;
        v19 = v26 - CGRectGetMaxX(v40);
      }
    }

    else
    {
      v19 = x - v11;
      v22 = width;
      v24 = v29;
      v23 = v30;
    }

    if (v18 < v13)
    {
      v20 = v18 - v13;
      goto LABEL_11;
    }

    v34 = v19;
    v41.origin.x = v21;
    v41.origin.y = v18;
    v41.size.width = v22;
    v41.size.height = rect;
    MaxY = CGRectGetMaxY(v41);
    v42.origin.x = v11;
    v42.origin.y = v13;
    v42.size.width = v23;
    v42.size.height = v24;
    if (MaxY > CGRectGetMaxY(v42))
    {
      v43.origin.x = v21;
      v43.origin.y = v18;
      v43.size.width = v22;
      v43.size.height = rect;
      v27 = CGRectGetMaxY(v43);
      v44.origin.x = v11;
      v44.origin.y = v13;
      v44.size.width = v23;
      v44.size.height = v24;
      v20 = v27 - CGRectGetMaxY(v44);
      v19 = v34;
      goto LABEL_11;
    }
  }

  v19 = v34;
  v20 = v32;
LABEL_11:
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGRect)_calculatePresentationFrameForCalloutView:(id)view
{
  viewCopy = view;
  [(MKAnnotationView *)self _frameForSelectionAdjustment];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  calloutStyle = [viewCopy calloutStyle];
  if (calloutStyle == 1)
  {
    v14 = off_1E76C4678;
  }

  else
  {
    if (calloutStyle != 2)
    {
      v16 = *MEMORY[0x1E695F060];
      v18 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_7;
    }

    v14 = off_1E76C45F8;
  }

  [(__objc2_class *)*v14 contentSize];
  v16 = v15;
  v18 = v17;
LABEL_7:
  -[MKAnnotationView _anchorPointForCalloutAnchorPosition:](self, "_anchorPointForCalloutAnchorPosition:", [viewCopy pointerEdge]);
  v20 = v19;
  v22 = v21;
  pointerEdge = [viewCopy pointerEdge];
  +[MKCalloutSelectionAccessoryView pointerHeight];
  [(MKAnnotationView *)self _calculateAccessoryFrameForSize:pointerEdge anchorPosition:v16 anchorPoint:v18 pointerHeight:v20, v22, v24];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  superview = [(MKAnnotationView *)self superview];
  [(MKAnnotationView *)self convertRect:superview toView:v26, v28, v30, v32];
  v49.origin.x = v34;
  v49.origin.y = v35;
  v49.size.width = v36;
  v49.size.height = v37;
  v46.origin.x = v6;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v47 = CGRectUnion(v46, v49);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;

  v42 = x;
  v43 = y + -40.0;
  v44 = width;
  v45 = height + 60.0;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (void)_showCalloutSelectionAccessoryView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  objc_storeStrong(&self->_selectionAccessoryView, view);
  [(MKAnnotationView *)self _calculatePresentationFrameForCalloutView:viewCopy];
  [(MKAnnotationView *)self _calculateMapOffsetForPresentationFrame:?];
  v8 = v7;
  v10 = v9;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__MKAnnotationView__showCalloutSelectionAccessoryView_animated___block_invoke;
  v25[3] = &unk_1E76C87B8;
  objc_copyWeak(&v27, &location);
  v11 = viewCopy;
  v26 = v11;
  v12 = MEMORY[0x1A58E9F30](v25);
  v13 = v12;
  if (v8 == *MEMORY[0x1E695EFF8] && v10 == *(MEMORY[0x1E695EFF8] + 8))
  {
    (*(v12 + 16))(v12);
  }

  else
  {
    _mapView = [(MKAnnotationView *)self _mapView];
    _annotationContainer = [(MKAnnotationView *)self _annotationContainer];
    [(MKAnnotationView *)self coordinate];
    v18 = v17;
    v20 = v19;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__MKAnnotationView__showCalloutSelectionAccessoryView_animated___block_invoke_2;
    v21[3] = &unk_1E76CAA70;
    v22 = v11;
    selfCopy = self;
    v24 = v13;
    [_mapView annotationContainer:_annotationContainer scrollToRevealCalloutWithOffset:v21 annotationCoordinate:v8 completionHandler:{v10, v18, v20}];
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __64__MKAnnotationView__showCalloutSelectionAccessoryView_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addSubview:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _updateSelectionAccessoryViewContent];
}

void *__64__MKAnnotationView__showCalloutSelectionAccessoryView_animated___block_invoke_2(void *result)
{
  if (result[4] == *(result[5] + 920))
  {
    return (*(result[6] + 16))();
  }

  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  _mapView = [(MKAnnotationView *)self _mapView];
  [_mapView deselectAnnotation:self->_annotation animated:1];
}

- (void)selectionAccessoryViewDidRequestDismissal:(id)dismissal
{
  _mapView = [(MKAnnotationView *)self _mapView];
  [_mapView deselectAnnotation:self->_annotation animated:1];
}

- (void)_dismissPresentedSelectionAccessoryFromViewController:(id)controller animated:(BOOL)animated
{
  [controller dismissViewControllerAnimated:animated completion:0];
  selectionAccessoryView = self->_selectionAccessoryView;
  self->_selectionAccessoryView = 0;

  selectionAccessoryViewController = self->_selectionAccessoryViewController;
  self->_selectionAccessoryViewController = 0;
}

- (void)_presentSelectionAccessorySheetFromViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  initAsAccessory = [[MKFullDeveloperPlaceCardSelectionAccessoryView alloc] initAsAccessory];
  selectionAccessoryView = self->_selectionAccessoryView;
  self->_selectionAccessoryView = initAsAccessory;
  v12 = initAsAccessory;

  [(MKSelectionAccessoryView *)self->_selectionAccessoryView setDelegate:self];
  [(MKAnnotationView *)self _updateSelectionAccessoryViewContent];
  v9 = [[MKPresentableSelectionAccessoryViewController alloc] initWithSelectionAccessoryView:v12];
  [(MKPresentableSelectionAccessoryViewController *)v9 setModalPresentationStyle:2];
  sheetPresentationController = [(MKPresentableSelectionAccessoryViewController *)v9 sheetPresentationController];
  [sheetPresentationController setDelegate:self];

  [controllerCopy presentViewController:v9 animated:animatedCopy completion:0];
  selectionAccessoryViewController = self->_selectionAccessoryViewController;
  self->_selectionAccessoryViewController = v9;
}

- (void)_dismissSelectionAccessoryAnimated:(BOOL)animated
{
  activeSelectionAccessory = self->_activeSelectionAccessory;
  if (activeSelectionAccessory)
  {
    animatedCopy = animated;
    if (![(MKSelectionAccessory *)activeSelectionAccessory _style])
    {
      [(MKMapItemRequest *)self->_selectionAccessoryMapItemRequest cancel];
      selectionAccessoryMapItemRequest = self->_selectionAccessoryMapItemRequest;
      self->_selectionAccessoryMapItemRequest = 0;

      deferredSelectionAccessory = self->_deferredSelectionAccessory;
      if (deferredSelectionAccessory)
      {
        self->_deferredSelectionAccessory = 0;
      }

      else
      {
        deferredSelectionAccessory = [(MKSelectionAccessory *)self->_resolvedSelectionAccessory _mapItemDetailPresentationStyle];
        if ([deferredSelectionAccessory _style] == 2)
        {
          [(MKAnnotationView *)self _dismissSelectionAccessoryPresentation:deferredSelectionAccessory animated:animatedCopy];
        }

        else
        {
          [(MKAnnotationView *)self _dismissSelectionAccessoryViewAnimated:animatedCopy];
        }
      }

      v8 = self->_activeSelectionAccessory;
      self->_activeSelectionAccessory = 0;

      resolvedSelectionAccessory = self->_resolvedSelectionAccessory;
      self->_resolvedSelectionAccessory = 0;
    }
  }
}

- (void)_showMapItemDetailCalloutAccessory:(id)accessory animated:(BOOL)animated
{
  animatedCopy = animated;
  accessoryCopy = accessory;
  _calloutStyle = [accessoryCopy _calloutStyle];
  if (_calloutStyle == 2)
  {
    v8 = [MKCompactDeveloperPlaceCardSelectionAccessoryView alloc];
    initAsAccessory = [(MKViewSwitchingSelectionAccessoryView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else
  {
    if (_calloutStyle != 1)
    {
      goto LABEL_6;
    }

    initAsAccessory = [[MKFullDeveloperPlaceCardSelectionAccessoryView alloc] initAsAccessory];
  }

  v9 = initAsAccessory;
  v10 = -[MKCalloutSelectionAccessoryView initWithSelectionAccessoryView:style:pointerEdge:pointerUnitLocation:]([MKCalloutSelectionAccessoryView alloc], "initWithSelectionAccessoryView:style:pointerEdge:pointerUnitLocation:", initAsAccessory, [accessoryCopy _calloutStyle], -[MKAnnotationView _calloutAnchorPositionForCurrentFrame](self, "_calloutAnchorPositionForCurrentFrame"), 0.5);
  [(MKAnnotationView *)self _showCalloutSelectionAccessoryView:v10 animated:animatedCopy];

LABEL_6:
}

- (int64_t)_calloutAnchorPositionForCurrentFrame
{
  _mapView = [(MKAnnotationView *)self _mapView];
  [_mapView bounds];
  v5 = v4;
  _mapView2 = [(MKAnnotationView *)self _mapView];
  [_mapView2 bounds];
  v8 = v7;
  v10 = v9;

  [(MKAnnotationView *)self frame];
  if (v5 >= 500.0)
  {
    if (v8 - CGRectGetMaxX(*&v11) <= v11)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }
  }

  else if (v10 - CGRectGetMaxY(*&v11) > v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  return v15;
}

- (CGRect)_calculatePresentationFrameForOpenInMapsView:(id)view
{
  viewCopy = view;
  [(MKAnnotationView *)self _frameForSelectionAdjustment];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MKAnnotationView *)self _openInMapsAnchorPoint];
  v14 = v13;
  v16 = v15;
  [viewCopy systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v18 = v17;
  v20 = v19;

  [(MKAnnotationView *)self _calculateAccessoryFrameForSize:1 anchorPosition:v18 anchorPoint:v20 pointerHeight:v14, v16, 0.0];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  superview = [(MKAnnotationView *)self superview];
  [(MKAnnotationView *)self convertRect:superview toView:v22, v24, v26, v28];
  v45.origin.x = v30;
  v45.origin.y = v31;
  v45.size.width = v32;
  v45.size.height = v33;
  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v43 = CGRectUnion(v42, v45);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;

  v38 = y + -10.0;
  v39 = height + 20.0;
  v40 = x;
  v41 = width;
  result.size.height = v39;
  result.size.width = v41;
  result.origin.y = v38;
  result.origin.x = v40;
  return result;
}

- (void)_showMapItemDetailOpenInMapsAccessory:(id)accessory animated:(BOOL)animated
{
  v5 = [(MKAnnotationView *)self _urlForOpenInMaps:accessory];
  if (v5)
  {
    v6 = [[MKOpenInMapsSelectionAccessoryView alloc] initWithURL:v5];
    objc_storeStrong(&self->_selectionAccessoryView, v6);
    [(MKAnnotationView *)self _calculatePresentationFrameForOpenInMapsView:v6];
    [(MKAnnotationView *)self _calculateMapOffsetForPresentationFrame:?];
    v9 = v8;
    v10 = v7;
    if (v8 == *MEMORY[0x1E695EFF8] && v7 == *(MEMORY[0x1E695EFF8] + 8))
    {
      [(MKAnnotationView *)self addSubview:v6];
    }

    else
    {
      _mapView = [(MKAnnotationView *)self _mapView];
      _annotationContainer = [(MKAnnotationView *)self _annotationContainer];
      [(MKAnnotationView *)self coordinate];
      v15 = v14;
      v17 = v16;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67__MKAnnotationView__showMapItemDetailOpenInMapsAccessory_animated___block_invoke;
      v18[3] = &unk_1E76CD810;
      v19 = v6;
      selfCopy = self;
      [_mapView annotationContainer:_annotationContainer scrollToRevealCalloutWithOffset:v18 annotationCoordinate:v9 completionHandler:{v10, v15, v17}];
    }
  }
}

void *__67__MKAnnotationView__showMapItemDetailOpenInMapsAccessory_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[115])
  {
    return [result addSubview:?];
  }

  return result;
}

- (id)_urlForOpenInMaps
{
  _mapItem = [(MKAnnotationView *)self _mapItem];
  if (_mapItem)
  {
    muid = [MKMapItem urlForMapItem:_mapItem options:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      marker = [(MKAnnotation *)self->_annotation marker];
      identifier = [marker identifier];
      muid = [identifier muid];

      if (muid)
      {
        v7 = MEMORY[0x1E695DFF8];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maps://?auid=%llu", muid];
        muid = [v7 URLWithString:v8];
      }
    }

    else
    {
      muid = 0;
    }
  }

  return muid;
}

- (CGRect)_labelDisplayFrame
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    annotation = [(MKAnnotationView *)self annotation];
    marker = [annotation marker];

    _mapView = [(MKAnnotationView *)self _mapView];
    [marker screenBounds];
    [_mapView convertRect:self toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else if ([(MKAnnotationView *)self _isProvidingVKLabelContents])
  {
    _mapView2 = [(MKAnnotationView *)self _mapView];
    v15 = _mapView2[83];
    customFeatureAnnotation = [(MKAnnotationView *)self customFeatureAnnotation];
    _annotationContainer = [(MKAnnotationView *)self _annotationContainer];
    v18 = [v15 labelMarkerForCustomFeatureAnnotation:customFeatureAnnotation dataSource:_annotationContainer];

    [v18 screenCollisionBounds];
    v23 = v22;
    if (v20 == -INFINITY || v21 == -INFINITY)
    {
      v7 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v11 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v25 = v19;
      v26 = v20;
      v27 = v21;
      _mapView3 = [(MKAnnotationView *)self _mapView];
      [_mapView3 convertRect:self toView:{v23, v25, v26, v27}];
      v7 = v29;
      v9 = v30;
      v11 = v31;
      v13 = v32;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v33 = v7;
  v34 = v9;
  v35 = v11;
  v36 = v13;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (double)_labelDisplayHeight
{
  _isProvidingVKLabelContents = [(MKAnnotationView *)self _isProvidingVKLabelContents];
  result = 0.0;
  if (_isProvidingVKLabelContents)
  {
    return 25.0;
  }

  return result;
}

- (void)_showMapItemDetailSheetAccessory:(id)accessory animated:(BOOL)animated
{
  animatedCopy = animated;
  accessoryCopy = accessory;
  _presentationViewController = [accessoryCopy _presentationViewController];

  if (_presentationViewController)
  {
    _presentationViewController2 = [accessoryCopy _presentationViewController];
    [(MKAnnotationView *)self _presentSelectionAccessorySheetFromViewController:_presentationViewController2 animated:animatedCopy];
  }
}

- (void)_showSelectionAccessoryWithStyle:(id)style animated:(BOOL)animated
{
  animatedCopy = animated;
  styleCopy = style;
  _style = [styleCopy _style];
  if (_style == 1)
  {
    [(MKAnnotationView *)self _showMapItemDetailCalloutAccessory:styleCopy animated:animatedCopy];
    goto LABEL_8;
  }

  if (_style == 3)
  {
    [(MKAnnotationView *)self _showMapItemDetailOpenInMapsAccessory:styleCopy animated:animatedCopy];
    goto LABEL_8;
  }

  v7 = _style == 2;
  v8 = styleCopy;
  if (v7)
  {
    [(MKAnnotationView *)self _showMapItemDetailSheetAccessory:styleCopy animated:animatedCopy];
LABEL_8:
    v8 = styleCopy;
  }
}

- (void)_showSelectionAccessory:(id)accessory animated:(BOOL)animated
{
  animatedCopy = animated;
  accessoryCopy = accessory;
  if ([(MKAnnotationView *)self _canShowSelectionAccessory:accessoryCopy])
  {
    v7 = [(MKAnnotationView *)self _resolvedAccessoryFor:accessoryCopy];
    _mapItemDetailPresentationStyle = [(MKSelectionAccessory *)v7 _mapItemDetailPresentationStyle];
    v9 = [(MKAnnotationView *)self _reasonToDeferSelectionAccessoryPresentationStyle:_mapItemDetailPresentationStyle];
    if (v9)
    {
      v10 = v9;
      v11 = [[_MKDeferredSelectionAccessoryPresentation alloc] initWithReason:v9 animated:animatedCopy];
      deferredSelectionAccessory = self->_deferredSelectionAccessory;
      self->_deferredSelectionAccessory = v11;

      [(_MKDeferredSelectionAccessoryPresentation *)self->_deferredSelectionAccessory setReady:v10 == 1];
    }

    else
    {
      [(MKAnnotationView *)self _showSelectionAccessoryWithStyle:_mapItemDetailPresentationStyle animated:animatedCopy];
    }

    objc_storeStrong(&self->_activeSelectionAccessory, accessory);
    resolvedSelectionAccessory = self->_resolvedSelectionAccessory;
    self->_resolvedSelectionAccessory = v7;
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)_canShowSelectionAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy && ![accessoryCopy _style])
  {
    _mapItem = [(MKAnnotationView *)self _mapItem];

    if (_mapItem)
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_showDeferredSelectionAccessoryForReasonIfNeeded:(unint64_t)needed
{
  if ([(_MKDeferredSelectionAccessoryPresentation *)self->_deferredSelectionAccessory reason]== needed)
  {
    _mapItemDetailPresentationStyle = [(MKSelectionAccessory *)self->_resolvedSelectionAccessory _mapItemDetailPresentationStyle];
    [(MKAnnotationView *)self _showSelectionAccessoryWithStyle:_mapItemDetailPresentationStyle animated:[(_MKDeferredSelectionAccessoryPresentation *)self->_deferredSelectionAccessory animated]];

    deferredSelectionAccessory = self->_deferredSelectionAccessory;
    self->_deferredSelectionAccessory = 0;
  }
}

- (unint64_t)_reasonToDeferSelectionAccessoryPresentationStyle:(id)style
{
  if (([style _style] | 2) != 3)
  {
    return 0;
  }

  if ([(MKAnnotationView *)self _isProvidingVKLabelContents])
  {
    return 2;
  }

  return 0;
}

- (CGSize)_effectiveMapViewportSize
{
  _mapView = [(MKAnnotationView *)self _mapView];
  [_mapView bounds];
  v4 = v3;
  v6 = v5;
  [_mapView _edgeInsets];
  v9 = v4 - (v7 + v8);
  v12 = v6 - (v10 + v11);

  v13 = v9;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)_resolvedAutomaticCalloutStyle
{
  v3 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom && [(MKAnnotationView *)self _viewportCanDisplayFullCalloutAccessory])
  {
    _fullCalloutAccessory = [objc_opt_class() _fullCalloutAccessory];
  }

  else
  {
    _fullCalloutAccessory = [objc_opt_class() _compactCalloutAccessory];
  }

  return _fullCalloutAccessory;
}

- (id)_resolvedAutomaticStyleWithViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if ([(MKAnnotationView *)self _viewportCanDisplayFullCalloutAccessory])
    {
      _fullCalloutAccessory = [objc_opt_class() _fullCalloutAccessory];
      goto LABEL_10;
    }

LABEL_6:
    _viewportCanDisplayCompactCalloutAccessory = [(MKAnnotationView *)self _viewportCanDisplayCompactCalloutAccessory];
    v9 = objc_opt_class();
    if (_viewportCanDisplayCompactCalloutAccessory)
    {
      [v9 _compactCalloutAccessory];
    }

    else
    {
      [v9 _openInMapsAccessory];
    }
    _fullCalloutAccessory = ;
    goto LABEL_10;
  }

  if (!controllerCopy)
  {
    goto LABEL_6;
  }

  _fullCalloutAccessory = [objc_opt_class() _sheetAccessoryWithViewController:controllerCopy];
LABEL_10:
  v10 = _fullCalloutAccessory;

  return v10;
}

- (id)_resolvedAccessoryFor:(id)for
{
  forCopy = for;
  _mapItemDetailPresentationStyle = [forCopy _mapItemDetailPresentationStyle];
  _style = [_mapItemDetailPresentationStyle _style];

  v7 = forCopy;
  if (!_style)
  {
    _mapItemDetailPresentationStyle2 = [forCopy _mapItemDetailPresentationStyle];
    _presentationViewController = [_mapItemDetailPresentationStyle2 _presentationViewController];
    v7 = [(MKAnnotationView *)self _resolvedAutomaticStyleWithViewController:_presentationViewController];
  }

  _mapItemDetailPresentationStyle3 = [v7 _mapItemDetailPresentationStyle];
  _style2 = [_mapItemDetailPresentationStyle3 _style];

  if (_style2 == 1)
  {
    _mapItemDetailPresentationStyle4 = [v7 _mapItemDetailPresentationStyle];
    v13 = _mapItemDetailPresentationStyle4;
    if (!_mapItemDetailPresentationStyle4 || ![_mapItemDetailPresentationStyle4 _calloutStyle])
    {
      _resolvedAutomaticCalloutStyle = [(MKAnnotationView *)self _resolvedAutomaticCalloutStyle];

      v7 = _resolvedAutomaticCalloutStyle;
    }
  }

  return v7;
}

- (void)_updateSelectionAccessoryIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isSelected = [(MKAnnotationView *)self isSelected];
  activeSelectionAccessory = self->_activeSelectionAccessory;
  if (isSelected)
  {
    if (!activeSelectionAccessory)
    {
      _mapView = [(MKAnnotationView *)self _mapView];
      delegate = [_mapView delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [delegate mapViewShouldDelaySelectionAccessoryPresentation:_mapView];
      }

      else
      {
        v9 = 0;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__MKAnnotationView__updateSelectionAccessoryIfNeededAnimated___block_invoke;
      v14[3] = &unk_1E76C8790;
      v15 = delegate;
      selfCopy = self;
      v17 = _mapView;
      v18 = animatedCopy;
      v10 = _mapView;
      v11 = delegate;
      v12 = MEMORY[0x1A58E9F30](v14);
      v13 = v12;
      if (v9)
      {
        dispatch_async(MEMORY[0x1E69E96A0], v12);
      }

      else
      {
        v12[2](v12);
      }
    }
  }

  else if (activeSelectionAccessory)
  {

    [(MKAnnotationView *)self _dismissSelectionAccessoryAnimated:animatedCopy];
  }
}

void __62__MKAnnotationView__updateSelectionAccessoryIfNeededAnimated___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) mapView:*(a1 + 48) selectionAccessoryForAnnotation:v2[80]];
    [v2 _showSelectionAccessory:v3 animated:*(a1 + 56)];
  }
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(MKAnnotationView *)self isSelected]&& [(MKAnnotationView *)self _shouldShowCalloutIfSelected])
  {
    if (![(MKCalloutView *)self->_calloutView isVisible])
    {
      [(MKAnnotationView *)self _showCallout:animatedCopy];
    }

    LOBYTE(v5) = 1;
  }

  else if ([(MKCalloutView *)self->_calloutView isVisible]|| (v5 = [(MKCalloutView *)self->_calloutView hasPendingVisibility]))
  {
    [(MKAnnotationView *)self setHighlighted:0];
    [(MKAnnotationView *)self _dismissCallout:animatedCopy];
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldShowCalloutIfSelected
{
  if ((self->_allowedCalloutEdges & 0xF) != 0 && ([(MKAnnotationView *)self _effectiveCalloutStyle]!= 1 || [(MKAnnotationView *)self conformsToProtocol:&unk_1F1673870]) && [(MKAnnotationView *)self _allowedToShowCallout]&& [(MKAnnotationView *)self shouldShowCallout])
  {
    _containerView = [(MKAnnotationView *)self _containerView];
    v4 = [_containerView suppressCallout] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (int64_t)_effectiveCalloutStyle
{
  calloutViewClass = [objc_opt_class() calloutViewClass];
  if (calloutViewClass && calloutViewClass == objc_opt_class())
  {
    return 1;
  }

  else
  {
    return self->_calloutStyle;
  }
}

- (void)setRightCalloutAccessoryView:(UIView *)rightCalloutAccessoryView
{
  v5 = rightCalloutAccessoryView;
  if (self->_rightCalloutAccessoryView != v5)
  {
    v6 = v5;
    [(MKAnnotationView *)self willChangeValueForKey:@"rightCalloutAccessoryView"];
    objc_storeStrong(&self->_rightCalloutAccessoryView, rightCalloutAccessoryView);
    [(MKAnnotationView *)self didChangeValueForKey:@"rightCalloutAccessoryView"];
    [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
    v5 = v6;
  }
}

- (void)setLeftCalloutAccessoryView:(UIView *)leftCalloutAccessoryView
{
  v5 = leftCalloutAccessoryView;
  if (self->_leftCalloutAccessoryView != v5)
  {
    v6 = v5;
    [(MKAnnotationView *)self willChangeValueForKey:@"leftCalloutAccessoryView"];
    objc_storeStrong(&self->_leftCalloutAccessoryView, leftCalloutAccessoryView);
    [(MKAnnotationView *)self didChangeValueForKey:@"leftCalloutAccessoryView"];
    [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
    v5 = v6;
  }
}

- (void)setDetailCalloutAccessoryView:(UIView *)detailCalloutAccessoryView
{
  v8 = detailCalloutAccessoryView;
  if (self->_detailCalloutAccessoryView != v8)
  {
    [(MKAnnotationView *)self willChangeValueForKey:@"detailCalloutAccessoryView"];
    objc_storeStrong(&self->_detailCalloutAccessoryView, detailCalloutAccessoryView);
    [(MKAnnotationView *)self didChangeValueForKey:@"detailCalloutAccessoryView"];
    [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
    WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
    if (WeakRetained)
    {
      v6 = self->_detailCalloutAccessoryView;

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_usageCounter);
        [v7 countUsageOfTypeIfNeeded:47];
      }
    }
  }
}

- (void)_setSelected:(BOOL)selected animated:(BOOL)animated
{
  flags = self->_flags;
  if (((((flags & 4) == 0) ^ selected) & 1) == 0)
  {
    selectedCopy = selected;
    if ((flags & 0xC000) != 0x8000)
    {
      *&self->_flags = flags & 0x3FFF | 0x4000;
      [(MKAnnotationView *)self setSelected:selected animated:animated];
      flags = self->_flags;
    }

    if (selectedCopy)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = flags & 0xFFFB | v8;
    if (selectedCopy)
    {
      [(MKAnnotationView *)self _addAnnotationObservation];
    }

    else
    {
      [(MKAnnotationView *)self _removeAnnotationObservation];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MKAnnotationView__setSelected_animated___block_invoke;
    v10[3] = &unk_1E76CA760;
    v10[4] = self;
    animatedCopy = animated;
    v9 = MEMORY[0x1A58E9F30](v10);
    if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
    }

    else
    {
      v9[2](v9);
    }

    flags = self->_flags;
  }

  *&self->_flags = flags & 0x3FFF;
}

uint64_t __42__MKAnnotationView__setSelected_animated___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) updateCalloutViewIfNeededAnimated:*(a1 + 40)] || objc_msgSend(*(a1 + 32), "_calloutPermitsSelectionAccessory"))
  {
    [*(a1 + 32) _updateSelectionAccessoryIfNeededAnimated:*(a1 + 40)];
  }

  v2 = *(a1 + 32);

  return [v2 _updateEffectiveZPriority];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  flags = self->_flags;
  if ((flags & 0xC000) == 0x4000)
  {
    if (selected)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = flags & 0x7FFB | v6;
    v7 = !selected || [(MKAnnotationView *)self isProvidingCustomFeature:selected];

    [(MKAnnotationView *)self invalidateCustomFeatureForced:v7];
  }

  else
  {
    *&self->_flags = flags & 0x3FFF | 0x8000;

    [(MKAnnotationView *)self _setSelected:selected animated:animated];
  }
}

- (void)setSelected:(BOOL)selected
{
  flags = self->_flags;
  if ((flags & 0xC000) == 0x4000)
  {
    if (selected)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = flags & 0x7FFB | v5;
    v6 = !selected || [(MKAnnotationView *)self isProvidingCustomFeature];

    [(MKAnnotationView *)self invalidateCustomFeatureForced:v6];
  }

  else
  {
    *&self->_flags = flags & 0x3FFF | 0x8000;

    [(MKAnnotationView *)self _setSelected:selected animated:0];
  }
}

- (void)setCollisionMode:(MKAnnotationViewCollisionMode)collisionMode
{
  if (self->_collisionMode != collisionMode)
  {
    self->_collisionMode = collisionMode;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:[(MKAnnotationView *)self isProvidingCustomFeature]];
    WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
    if (WeakRetained)
    {
      v5 = self->_collisionMode;

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_usageCounter);
        [v6 countUsageOfTypeIfNeeded:44];
      }
    }
  }
}

- (void)setClusteringIdentifier:(NSString *)clusteringIdentifier
{
  v4 = clusteringIdentifier;
  v5 = v4;
  if (self->_clusteringIdentifier != v4)
  {
    v12 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v12;
    if (!v6)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_clusteringIdentifier;
      self->_clusteringIdentifier = v7;

      [(MKAnnotationView *)self invalidateCustomFeatureForced:[(MKAnnotationView *)self isProvidingCustomFeature]];
      WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
      v5 = v12;
      if (WeakRetained)
      {
        v10 = self->_clusteringIdentifier;

        v5 = v12;
        if (v10)
        {
          v11 = objc_loadWeakRetained(&self->_usageCounter);
          [v11 countUsageOfTypeIfNeeded:45];

          v5 = v12;
        }
      }
    }
  }
}

- (void)_setSelectedZPriority:(float)priority
{
  if (self->_selectedZPriority != priority)
  {
    self->_selectedZPriority = priority;
    if ([(MKAnnotationView *)self isSelected])
    {
      _containerView = [(MKAnnotationView *)self _containerView];
      [_containerView annotationViewDidChangeZPriority:self];
    }
  }
}

- (void)setSelectedZPriority:(MKAnnotationViewZPriority)selectedZPriority
{
  [(MKAnnotationView *)self _clampZPriority:?];

  [(MKAnnotationView *)self _setSelectedZPriority:?];
}

- (void)_setZPriority:(float)priority
{
  if (self->_zPriority != priority)
  {
    self->_zPriority = priority;
    if (![(MKAnnotationView *)self isSelected])
    {
      _containerView = [(MKAnnotationView *)self _containerView];
      [_containerView annotationViewDidChangeZPriority:self];
    }
  }
}

- (void)setZPriority:(MKAnnotationViewZPriority)zPriority
{
  [(MKAnnotationView *)self _clampZPriority:?];

  [(MKAnnotationView *)self _setZPriority:?];
}

- (float)_clampZPriority:(float)priority
{
  priorityCopy = 1000.0;
  if (priority <= 1000.0)
  {
    priorityCopy = priority;
  }

  v4 = priority < 0.0;
  result = 0.0;
  if (!v4)
  {
    return priorityCopy;
  }

  return result;
}

- (void)setDisplayPriority:(MKFeatureDisplayPriority)displayPriority
{
  if (self->_displayPriority != displayPriority)
  {
    self->_displayPriority = displayPriority;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:[(MKAnnotationView *)self isProvidingCustomFeature]];
    _containerView = [(MKAnnotationView *)self _containerView];
    [_containerView annotationViewDidChangeDisplayPriority:self];

    WeakRetained = objc_loadWeakRetained(&self->_usageCounter);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = self->_displayPriority;
      [objc_opt_class() _defaultDisplayPriority];
      v9 = v8;

      if (v7 != v9)
      {
        v10 = objc_loadWeakRetained(&self->_usageCounter);
        [v10 countUsageOfTypeIfNeeded:42];
      }
    }
  }
}

- (void)setImage:(UIImage *)image
{
  v5 = image;
  if (self->_image != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_image, image);
    if (v15)
    {
      [(UIImage *)v15 size];
      v7 = v6;
      [(UIImage *)v15 size];
      [(MKAnnotationView *)self setBounds:0.0, 0.0, v7, v8];
      p_imageLayer = &self->_imageLayer;
      if (!self->_imageLayer)
      {
        layer = [MEMORY[0x1E6979398] layer];
        v11 = *p_imageLayer;
        *p_imageLayer = layer;

        layer2 = [(MKAnnotationView *)self layer];
        [layer2 insertSublayer:*p_imageLayer atIndex:0];

        [(MKAnnotationView *)self setOpaque:0];
      }
    }

    else
    {
      p_imageLayer = &self->_imageLayer;
    }

    layer3 = [(MKAnnotationView *)self layer];
    [layer3 bounds];
    [(CALayer *)*p_imageLayer setFrame:?];

    v14 = v15;
    [(CALayer *)*p_imageLayer setContents:[(UIImage *)v15 CGImage]];
    v5 = v15;
  }
}

- (id)_hitTest:(CGPoint)test view:(id)view withEvent:(id)event
{
  y = test.y;
  x = test.x;
  viewCopy = view;
  eventCopy = event;
  superview = [viewCopy superview];

  if (superview)
  {
    [viewCopy convertPoint:self fromView:{x, y}];
    v12 = [viewCopy hitTest:eventCopy withEvent:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = MKAnnotationView;
  v8 = [(MKAnnotationView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    v8 = [(MKAnnotationView *)self _hitTest:self->_calloutView view:eventCopy withEvent:x, y];
    if (!v8)
    {
      v8 = [(MKAnnotationView *)self _hitTest:self->_selectionAccessoryView view:eventCopy withEvent:x, y];
    }
  }

  v9 = v8;

  return v9;
}

- (void)setAnnotation:(id)annotation
{
  v5 = annotation;
  if (self->_annotation != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_annotation, annotation);
    [(MKAnnotationView *)self _invalidateCachedCoordinate];
    _vkNavigationPuckMarker = [(MKAnnotationView *)self _vkNavigationPuckMarker];
    [_vkNavigationPuckMarker setAnnotation:v7];

    v5 = v7;
  }
}

- (void)_removePopover
{
  v2 = [(MKAnnotationView *)self _getPopover:self];
  if (v2)
  {
    v3 = v2;
    [v2 removeFromSuperview];
    v2 = v3;
  }
}

- (id)_getPopover:(id)popover
{
  v19 = *MEMORY[0x1E69E9840];
  popoverCopy = popover;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subviews = [popoverCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        NSClassFromString(&cfstr_Mkpopoverembed.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = popoverCopy;

          goto LABEL_12;
        }

        v8 = [(MKAnnotationView *)self _getPopover:v12];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (void)prepareForReuse
{
  [(MKAnnotationView *)self _removePopover];
  [(MKAnnotationView *)self setSelected:0];
  self->_hiddenReasons = 0;
  v8.receiver = self;
  v8.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v8 setHidden:0];
  v7.receiver = self;
  v7.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v7 setAlpha:1.0];
  self->_pendingSelectionAnimated = 0;
  [objc_opt_class() _defaultDisplayPriority];
  self->_displayPriority = v3;
  clusteringIdentifier = self->_clusteringIdentifier;
  self->_clusteringIdentifier = 0;

  objc_storeWeak(&self->_clusterAnnotationView, 0);
  [(MKAnnotationView *)self _defaultZPriority];
  self->_zPriority = v5;
  [(MKAnnotationView *)self _defaultSelectedZPriority];
  self->_selectedZPriority = v6;
  objc_storeWeak(&self->_staticMapView, 0);
  [(NSMutableArray *)self->_hiddenCompletionBlocks removeAllObjects];
  objc_storeWeak(&self->_usageCounter, 0);
}

- (void)dealloc
{
  [(_MKKVOProxy *)self->_annotationObserver removeObserverForObject:self forKeyPath:@"annotation.title" context:MKAnnotationKVOContext];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MKUserLocationAnnotationViewProxy *)self->_userLocationProxy setAnnotationView:0];
  [(_MKAnnotationViewAnchor *)self->_anchor setAnnotationView:0];
  v4.receiver = self;
  v4.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v4 dealloc];
}

- (MKAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
  v6 = annotation;
  v7 = reuseIdentifier;
  if (_MKLinkedOnOrAfterReleaseSet(1283))
  {
    v13.receiver = self;
    v13.super_class = MKAnnotationView;
    v8 = [(MKAnnotationView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else
  {
    v8 = [(MKAnnotationView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v9 = v8;
  if (v8)
  {
    [(MKAnnotationView *)v8 _commonInit];
    [(MKAnnotationView *)v9 setAnnotation:v6];
    v10 = [(NSString *)v7 copy];
    v11 = v9->_reuseIdentifier;
    v9->_reuseIdentifier = v10;
  }

  return v9;
}

- (MKAnnotationView)initWithCoder:(NSCoder *)aDecoder
{
  v6.receiver = self;
  v6.super_class = MKAnnotationView;
  v3 = [(MKAnnotationView *)&v6 initWithCoder:aDecoder];
  v4 = v3;
  if (v3)
  {
    [(MKAnnotationView *)v3 _commonInit];
  }

  return v4;
}

- (MKAnnotationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (_MKLinkedOnOrAfterReleaseSet(1283))
  {
    v8 = [(MKAnnotationView *)self initWithAnnotation:0 reuseIdentifier:0];
    [(MKAnnotationView *)v8 setFrame:x, y, width, height];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MKAnnotationView;
    v8 = [(MKAnnotationView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MKAnnotationView *)v8 _commonInit];
  }

  return v8;
}

- (void)_layoutCalloutSelectionAccessoryView:(id)view
{
  viewCopy = view;
  pointerEdge = [viewCopy pointerEdge];
  [(MKAnnotationView *)self _anchorPointForCalloutAnchorPosition:pointerEdge];
  v6 = v5;
  v8 = v7;
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;
  +[MKCalloutSelectionAccessoryView pointerHeight];
  [(MKAnnotationView *)self _calculateAccessoryFrameForSize:pointerEdge anchorPosition:v10 anchorPoint:v12 pointerHeight:v6, v8, v13];
  [viewCopy setFrame:?];
}

- (void)_layoutOpenInMapsAccessory
{
  [(MKAnnotationView *)self _openInMapsAnchorPoint];
  v4 = v3;
  v6 = v5;
  [(MKSelectionAccessoryView *)self->_selectionAccessoryView bounds];
  [(MKAnnotationView *)self _calculateAccessoryFrameForSize:1 anchorPosition:v7 anchorPoint:v8 pointerHeight:v4, v6, 0.0];
  selectionAccessoryView = self->_selectionAccessoryView;

  [(MKSelectionAccessoryView *)selectionAccessoryView setFrame:?];
}

- (CGPoint)_openInMapsAnchorPoint
{
  [(MKAnnotationView *)self _anchorPointForCalloutAnchorPosition:1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)position
{
  switch(position)
  {
    case 4:
      [(MKAnnotationView *)self center];
      v17 = v16;
      v19 = v18;
      superview = [(MKAnnotationView *)self superview];
      [(MKAnnotationView *)self convertPoint:superview fromView:v17, v19];
      v11 = v21;
      v13 = v22;

      [(MKAnnotationView *)self bounds];
      v15 = -0.5;
      goto LABEL_8;
    case 3:
      [(MKAnnotationView *)self center];
      v6 = v5;
      v8 = v7;
      superview2 = [(MKAnnotationView *)self superview];
      [(MKAnnotationView *)self convertPoint:superview2 fromView:v6, v8];
      v11 = v10;
      v13 = v12;

      [(MKAnnotationView *)self bounds];
      v15 = 0.5;
LABEL_8:
      v23 = v11 + v14 * v15;
      MaxY = v13 + self->_accessoryOffset.y;
      break;
    case 1:
      if ([(MKAnnotationView *)self _isProvidingVKLabelContents])
      {
        [(MKAnnotationView *)self _labelDisplayFrame];
        MaxY = CGRectGetMaxY(v27);
      }

      else
      {
        [(MKAnnotationView *)self bounds];
        MaxY = v24;
      }

      [(MKAnnotationView *)self bounds];
      v23 = CGRectGetMidX(v29) + self->_accessoryOffset.x;
      break;
    default:
      [(MKAnnotationView *)self bounds];
      v23 = CGRectGetMidX(v28) + self->_accessoryOffset.x;
      MaxY = 0.0;
      break;
  }

  v25 = MaxY;
  result.y = v25;
  result.x = v23;
  return result;
}

- (int64_t)compareForCollision:(id)collision
{
  v3 = (*&self->_flags >> 2) & 1;
  v4 = (*(collision + 428) >> 2) & 1;
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 > v4)
  {
    return -1;
  }

  displayPriority = self->_displayPriority;
  v9 = *(collision + 162);
  if (displayPriority < v9)
  {
    return 1;
  }

  if (displayPriority > v9)
  {
    return -1;
  }

  [(MKAnnotationView *)self _collisionFrame];
  v11 = v10;
  [collision _collisionFrame];
  if (v11 < v12)
  {
    return 1;
  }

  if (v11 > v12)
  {
    return -1;
  }

  v13 = self - collision;
  if (self - collision >= 1)
  {
    v13 = 1;
  }

  if (v13 < 0)
  {
    return -1;
  }

  else
  {
    return v13;
  }
}

- (int64_t)compareForClustering:(id)clustering
{
  annotation = self->_annotation;
  annotation = *(clustering + 80);
  if (!annotation)
  {
    annotation = [clustering annotation];
  }

  [(MKAnnotation *)annotation coordinate];
  v8 = v7;
  v10 = v9;
  [annotation coordinate];
  if (v8 < v11)
  {
    return -1;
  }

  if (v8 > v11)
  {
    return 1;
  }

  if (v10 < v12)
  {
    return -1;
  }

  if (v10 > v12)
  {
    return 1;
  }

  v14 = self - clustering;
  if (self - clustering >= 1)
  {
    v14 = 1;
  }

  if (v14 < 0)
  {
    return -1;
  }

  else
  {
    return v14;
  }
}

- (void)_updateAnchorPosition:(CGPoint)position alignToPixels:(BOOL)pixels
{
  pixelsCopy = pixels;
  y = position.y;
  x = position.x;
  self->_anchorPoint = position;
  [(MKAnnotationView *)self centerOffset];
  v9 = x + v8;
  v11 = y + v10;
  [(MKAnnotationView *)self bounds];
  v13 = v12;
  v15 = v14;
  v16 = v9 - v12 * 0.5;
  v17 = v11 - v14 * 0.5;
  [(MKAnnotationView *)self _collisionAlignmentRectInsets];
  self->_collisionFrame.origin.x = v18 + v16 + -5.0;
  self->_collisionFrame.origin.y = v19 + v17 + -5.0;
  self->_collisionFrame.size.width = v13 - (v18 + v20) + 10.0;
  self->_collisionFrame.size.height = v15 - (v19 + v21) + 10.0;
  if (pixelsCopy && ![(MKAnnotationView *)self isHidden])
  {
    [(UIView *)self _mapkit_currentScreenScale];
    v9 = MKIntegralCenterForViewWithScale(self, v9, v11, v22);
    v11 = v23;
  }

  v24 = fabs(v11) != INFINITY;
  if (fabs(v9) != INFINITY && v24)
  {
    if (self->_wantsViewBasedPositioning)
    {
      goto LABEL_11;
    }

    if ([(MKAnnotationView *)self isSelected])
    {
      leftCalloutAccessoryView = [(MKAnnotationView *)self leftCalloutAccessoryView];
      if (leftCalloutAccessoryView || ([(MKAnnotationView *)self rightCalloutAccessoryView], (leftCalloutAccessoryView = objc_claimAutoreleasedReturnValue()) != 0))
      {

        goto LABEL_11;
      }

      detailCalloutAccessoryView = [(MKAnnotationView *)self detailCalloutAccessoryView];

      if (detailCalloutAccessoryView)
      {
LABEL_11:
        [(MKAnnotationView *)self center];
        if (v27 == v9 && v26 == v11)
        {
          return;
        }

        [(MKAnnotationView *)self setCenter:v9, v11];
LABEL_22:
        calloutView = self->_calloutView;

        [(MKCalloutView *)calloutView annotationViewFrameDidChange];
        return;
      }
    }

    layer = [(MKAnnotationView *)self layer];
    [layer position];
    if (v32 == v9 && v31 == v11)
    {
      return;
    }

    [layer setPosition:{v9, v11}];
    goto LABEL_22;
  }

  v28 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *v34 = 0;
    _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "Invalid point for annotation.", v34, 2u);
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MKAnnotationView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MKAnnotationView;
  [(MKAnnotationView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    if (_notifyOnSizeChange_onceToken != -1)
    {
      dispatch_once(&_notifyOnSizeChange_onceToken, &__block_literal_global_812);
    }

    if (_notifyOnSizeChange_notify == 1)
    {
      [(MKAnnotationView *)self _metricsDidChange];
    }
  }
}

- (UIEdgeInsets)_annotationTrackingInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)_isSelectable
{
  if ((*&self->_flags & 2) != 0)
  {
    return 0;
  }

  if (_MKLinkedOnOrAfterReleaseSet(2053) || ![(MKAnnotationView *)self canShowCallout])
  {
    return 1;
  }

  title = [(MKAnnotation *)self->_annotation title];
  if ([title length])
  {
    v4 = 1;
  }

  else
  {
    detailCalloutAccessoryView = [(MKAnnotationView *)self detailCalloutAccessoryView];
    v4 = detailCalloutAccessoryView != 0;
  }

  return v4;
}

- (BOOL)shouldShowCallout
{
  annotation = [(MKAnnotationView *)self annotation];
  if (objc_opt_respondsToSelector())
  {
    title = [annotation title];
    v5 = [title length] != 0;
  }

  else
  {
    v5 = 0;
  }

  if (_MKLinkedOnOrAfterReleaseSet(1540) && self->_detailCalloutAccessoryView)
  {
    v5 = 1;
  }

  return v5;
}

+ (id)_sheetAccessoryWithViewController:(id)controller
{
  v3 = [MKMapItemDetailSelectionAccessoryPresentationStyle sheetPresentedFromViewController:controller];
  v4 = [MKSelectionAccessory mapItemDetailWithPresentationStyle:v3];

  return v4;
}

+ (id)_openInMapsAccessory
{
  v2 = +[MKMapItemDetailSelectionAccessoryPresentationStyle openInMaps];
  v3 = [MKSelectionAccessory mapItemDetailWithPresentationStyle:v2];

  return v3;
}

+ (id)_compactCalloutAccessory
{
  v2 = [MKMapItemDetailSelectionAccessoryPresentationStyle calloutWithCalloutStyle:2];
  v3 = [MKSelectionAccessory mapItemDetailWithPresentationStyle:v2];

  return v3;
}

+ (id)_fullCalloutAccessory
{
  v2 = [MKMapItemDetailSelectionAccessoryPresentationStyle calloutWithCalloutStyle:1];
  v3 = [MKSelectionAccessory mapItemDetailWithPresentationStyle:v2];

  return v3;
}

+ (BOOL)_isInitiallyHiddenWhenAdded
{
  v2 = _MKLinkedOnOrAfterReleaseSet(1796);
  if (v2)
  {
    if (_MKLinkedOnOrAfterReleaseSet(2053))
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      [objc_opt_class() _defaultDisplayPriority];
      LOBYTE(v2) = v3 < 1000.0;
    }
  }

  return v2;
}

+ (id)_disclosureCalloutButton
{
  v2 = _disclosureCalloutButton__disclosureCalloutButton;
  if (!_disclosureCalloutButton__disclosureCalloutButton)
  {
    v3 = [MEMORY[0x1E69DC738] buttonWithType:2];
    v4 = +[MKSystemController sharedInstance];
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v6 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"ShowInfo.png"];
      [v3 setImage:v6 forState:0];

      v7 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"ShowInfoPressed.png"];
      [v3 setImage:v7 forState:1];
    }

    v8 = _disclosureCalloutButton__disclosureCalloutButton;
    _disclosureCalloutButton__disclosureCalloutButton = v3;

    v2 = _disclosureCalloutButton__disclosureCalloutButton;
  }

  return v2;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"calloutOffset"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MKAnnotationView;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

@end