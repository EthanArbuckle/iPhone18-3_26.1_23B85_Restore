@interface MKMapView
+ ($E1D56841AF022BCD1A238A621DF8CB5F)_regionThatFitsMapType:(SEL)type viewSize:(unint64_t)size viewInsets:(CGSize)insets edgePadding:(UIEdgeInsets)padding region:(UIEdgeInsets)region minZoomLevel:(id *)level maxZoomLevel:(double)zoomLevel snapToZoomLevel:(double)self0;
+ ($E1D56841AF022BCD1A238A621DF8CB5F)regionThatFitsMapType:(SEL)type viewSize:(unint64_t)size edgeInsets:(CGSize)insets region:(UIEdgeInsets)region;
+ (float64_t)_mapRectThatFitsViewBounds:(double)bounds mapRect:(double)rect viewInsets:(float64_t)insets edgePadding:(float64_t)padding minZoomLevel:(float64_t)level maxZoomLevel:(float64_t)zoomLevel snapToZoomLevel:(uint64_t)toZoomLevel;
+ (unint64_t)minZoomLevelForMapType:(unint64_t)type viewSize:(CGSize)size;
- ($1B94325D8169464FEFE398C26867413B)_zoomRegionForMapRect:(SEL)rect edgePadding:(id)padding maxZoomLevel:(UIEdgeInsets)level minZoomLevel:(int64_t)zoomLevel;
- ($9433BFB5400FDC760880D1BFD6845728)_convertRect:(CGRect)rect toMapRectFromView:(id)view;
- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFraction:(double)fraction ofVisible:(id)visible;
- ($9433BFB5400FDC760880D1BFD6845728)overlayContainerVisibleMapRect:(id)rect;
- ($E1D56841AF022BCD1A238A621DF8CB5F)_convertRect:(SEL)rect toRegionFromView:(CGRect)view;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_centerMapPoint;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_convertPoint:(CGPoint)point toMapPointFromView:(id)view;
- ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfiguration;
- ($FF918C85BF8E73478720C66798E418D4)_userTrackingBehavior;
- (BOOL)_canEnter3DMode;
- (BOOL)_canShowAppleLogo;
- (BOOL)_canShowControls;
- (BOOL)_hasSelectedTransitLines;
- (BOOL)_isHandlingNonselectingTap;
- (BOOL)_isHybridMap;
- (BOOL)_isPoint:(CGPoint)point nearUserLocationView:(double)view;
- (BOOL)_isShowingAttributionBadge;
- (BOOL)_isUserLocationInView:(BOOL)view;
- (BOOL)_isUserLocationViewCentered:(double)centered;
- (BOOL)_mapViewHasUpdatedCamera;
- (BOOL)_mustWaitUntilSized;
- (BOOL)_pressEnded:(id)ended;
- (BOOL)_roomForCompass;
- (BOOL)_rotationPossible;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldCallAnnotationViewCallback:(id)callback;
- (BOOL)_shouldDeselectMapFeatureForNewPreferredConfiguration:(id)configuration;
- (BOOL)_shouldDisplayScaleForCurrentRegion;
- (BOOL)_shouldSupportAlwaysShowHeadingIndicator;
- (BOOL)_shouldUpdateSelectedRouteFromRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (BOOL)_showsPointsOfInterest;
- (BOOL)_supportsVKMapType:(int)type;
- (BOOL)_updateRotationSupported;
- (BOOL)_userLocationWithinVisibleMapBounds;
- (BOOL)accessoryViewContainsPoint:(CGPoint)point;
- (BOOL)annotationContainer:(id)container isAnnotationView:(id)view validForDisplayAtPoint:(CGPoint)point;
- (BOOL)annotationContainerIsRotated:(id)rotated;
- (BOOL)annotationContainerShouldAlignToPixels:(id)pixels;
- (BOOL)annotationManager:(id)manager canSelectAnnotationRepresentation:(id)representation;
- (BOOL)annotationManager:(id)manager shouldAnimateDeselectionOfAnnotation:(id)annotation forSelectionOfAnnotation:(id)ofAnnotation;
- (BOOL)calloutViewContainsPoint:(CGPoint)point;
- (BOOL)canBecomeFocused;
- (BOOL)canPossiblyShowCompassForInternalControl:(BOOL)control;
- (BOOL)canRotateForHeading;
- (BOOL)canShowCompass;
- (BOOL)canShowPitch;
- (BOOL)canShowZoom;
- (BOOL)displayedFloorIsDefaultForBuildingsInVenue:(id)venue;
- (BOOL)effectsEnabled;
- (BOOL)gestureController:(id)controller shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasUserLocation;
- (BOOL)isCurrentlyRotated;
- (BOOL)isPitchEnabled;
- (BOOL)isRegionChanging;
- (BOOL)isWithinHikingBoundary;
- (BOOL)isWithinHikingBufferRegion;
- (BOOL)shouldShowExternalCompass;
- (BOOL)showsScale;
- (CGPoint)_centerPoint;
- (CGPoint)_convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view;
- (CGPoint)_convertMapPoint:(id)point toPointToView:(id)view;
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(UIView *)view;
- (CGPoint)gestureController:(id)controller focusPointForPoint:(CGPoint)point gestureKind:(int64_t)kind;
- (CGRect)_convertMapRect:(id)rect toRectToView:(id)view;
- (CGRect)_convertRegion:(id *)region toRectToView:(id)view;
- (CGRect)_currentEnvironmentLabelFrame;
- (CGRect)_currentEnvironmentNameFrame;
- (CGRect)annotationVisibleRect;
- (CGRect)attributionBadgeBounds;
- (CGRect)attributionFrame;
- (CGRect)convertRegion:(MKCoordinateRegion)region toRectToView:(UIView *)view;
- (CGRect)gestureControllerSignificantViewFrame:(id)frame;
- (CGRect)visibleCenteringRectInView:(id)view;
- (CGRect)visibleRectInView:(id)view;
- (CLLocation)predictedUserLocation;
- (CLLocationCoordinate2D)_convertPoint:(CGPoint)point toCoordinateFromView:(id)view;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(UIView *)view;
- (MKAnnotationView)dequeueReusableAnnotationViewWithIdentifier:(NSString *)identifier forAnnotation:(id)annotation;
- (MKCoordinateRegion)convertRect:(CGRect)rect toRegionFromView:(UIView *)view;
- (MKCoordinateRegion)region;
- (MKCoordinateRegion)regionThatFits:(MKCoordinateRegion)region;
- (MKMapRect)mapRectThatFits:(MKMapRect)mapRect;
- (MKMapRect)mapRectThatFits:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets;
- (MKMapRect)visibleMapRect;
- (MKMapView)initWithCoder:(id)coder;
- (MKMapView)initWithFrame:(CGRect)frame locationManager:(id)manager;
- (MKMapViewDelegate)_safeDelegate;
- (MKOverlayRenderer)rendererForOverlay:(id)overlay;
- (MKOverlayView)viewForOverlay:(id)overlay;
- (MKUserLocation)userLocation;
- (NSArray)_transitLineMarkersInCurrentViewport;
- (NSArray)_visibleTileSets;
- (NSArray)annotations;
- (NSArray)selectedAnnotations;
- (NSDictionary)_detailedDescriptionDictionaryRepresentation;
- (NSSet)annotationsInMapRect:(MKMapRect)mapRect;
- (NSString)_detailedDescription;
- (UIEdgeInsets)_attributionInsets;
- (UIEdgeInsets)_compassInsets;
- (UIEdgeInsets)_edgeInsets;
- (UIEdgeInsets)_labelEdgeInsets;
- (UIEdgeInsets)_labelEdgeWidths;
- (UIEdgeInsets)_labelEdgeWidthsForScrollEdgeEffectInsets:(UIEdgeInsets)insets;
- (UILayoutGuide)_edgeInsetsLayoutGuide;
- (double)_animationDurationWhenSettingCameraBoundary:(id)boundary;
- (double)_boundedZoomLevel:(double)level;
- (double)_cameraAltitudeClampedToZoomRange:(id)range;
- (double)_defaultAnimationDurationForMapRect:(id)rect edgePadding:(UIEdgeInsets)padding;
- (double)_distanceFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint fromView:(id)view withPrecision:(int64_t)precision;
- (double)_durationForCamera:(id)camera;
- (double)_geoCoordinateRegionForOffline;
- (double)_goToCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(double)level animated:(BOOL)animated;
- (double)_mapKitZoomLevelForVectorKitTileZoomLevel:(double)level;
- (double)_vectorKitTileZoomLevelForMapKitZoomLevel:(double)level;
- (double)_zoomLevelForMapRect:(id)rect includeAccessoryPadding:(BOOL)padding;
- (double)_zoomLevelForRegion:(id *)region includeAccessoryPadding:(BOOL)padding;
- (double)_zoomScaleForMapRegion:(id)region;
- (double)annotationContainer:(id)container pinDropDistanceForCoordinate:(CLLocationCoordinate2D)coordinate maxDistance:(double *)distance;
- (double)gestureController:(id)controller shouldWaitForNextTapForDuration:(double)duration afterTouch:(id)touch;
- (double)presentationYaw;
- (double)zoomToFocusVenue:(id)venue;
- (double)zoomToFocusVenueBuilding:(id)building;
- (id)_annotationAtPoint:(CGPoint)point avoidCurrent:(BOOL)current;
- (id)_commonInitFromIB:(BOOL)b gestureRecognizerHostView:(id)view locationManager:(id)manager showsAttribution:(BOOL)attribution showsAppleLogo:(BOOL)logo allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type;
- (id)_commonVisibilityAnimation:(BOOL)animation;
- (id)_controlStackView;
- (id)_debugConsoleAdditionalInfoProvider;
- (id)_flattenedAnnotationsForAnnotationViews:(id)views maxDisplayPriority:(float *)priority;
- (id)_initWithFrame:(CGRect)frame allowsAntialiasing:(BOOL)antialiasing;
- (id)_initWithFrame:(CGRect)frame gestureRecognizerHostView:(id)view showsAttribution:(BOOL)attribution showsAppleLogo:(BOOL)logo allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type;
- (id)_labelMarkerAtPoint:(CGPoint)point;
- (id)_labelMarkerForCustomFeatureAnnotation:(id)annotation;
- (id)_labelMarkersInCurrentViewport;
- (id)_labelMarkersInCurrentViewportForType:(int)type;
- (id)_mapRegionWithCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomScale:(double)scale;
- (id)_pitchButton;
- (id)_routeInfoForRoute:(id)route;
- (id)_selectedTransitLineIDs;
- (id)_transitLineMarkerForIdentifier:(id)identifier;
- (id)_transitLineMarkersForSelectionAtPoint:(CGPoint)point;
- (id)_userTrackingButton;
- (id)_vkTimingFunctionForUIViewAnimationCurve:(int64_t)curve;
- (id)annotationContainer:(id)container requestAddingClusterForAnnotationViews:(id)views;
- (id)annotationCoordinateTest;
- (id)annotationManager:(id)manager representationForAnnotation:(id)annotation;
- (id)annotationRectTest;
- (id)beginStoppingEffects;
- (id)compassView;
- (id)createDrawableForOverlay:(id)overlay;
- (id)delegate;
- (id)initFromIBWithFrame:(CGRect)frame;
- (id)mapAttributionWithStringAttributes:(id)attributes underlineText:(BOOL)text linkAttribution:(BOOL)attribution;
- (id)mapLayerPresentationForAnnotation:(id)annotation;
- (id)overlayContainer;
- (id)scaleView;
- (id)urlForMapAttribution;
- (int)_viewIndexForSubview:(id)subview;
- (int64_t)_controlsUserInterfaceStyleOverride;
- (int64_t)_interfaceOrientation;
- (int64_t)_roundedZoomLevel;
- (int64_t)labelTextSize;
- (signed)defaultFloorForBuildingsInVenue:(id)venue;
- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)venue;
- (unint64_t)_compassInsetEdges;
- (void)_addAnnotation:(id)annotation allowAnimation:(BOOL)animation;
- (void)_addAnnotations:(id)annotations allowAnimation:(BOOL)animation;
- (void)_addAnnotationsCustomFeatureStoreIfNeeded;
- (void)_addDebugGesture;
- (void)_addDependentAuxiliaryBlock:(id)block;
- (void)_addDependentSetRegionBlock:(id)block completion:(id)completion;
- (void)_addInternalOverlay:(id)overlay level:(int64_t)level provider:(id)provider;
- (void)_addSetRegionBlock:(id)block completion:(id)completion;
- (void)_addViewsForAnnotations:(id)annotations;
- (void)_annotationViewDragStateChanged:(id)changed;
- (void)_clearFixedUserLocation;
- (void)_clearGesturesAndAnimations;
- (void)_clearLayoutGuides;
- (void)_clearRouteContext;
- (void)_configureGestureRecognizers:(id)recognizers;
- (void)_countUsageForAnnotationViewsIfNeeded:(id)needed;
- (void)_countUsageForRendererIfNeeded:(id)needed;
- (void)_countUsageOfTypeIfNeeded:(unint64_t)needed forAnnotationView:(id)view countedEventTypes:(id)types;
- (void)_createAnnotationViewSetIfNeeded;
- (void)_createOverlayRendererDictionaryIfNeeded;
- (void)_deselectCurrentFeatureAnnotationIfNeededAnimated:(BOOL)animated;
- (void)_deselectLabelMarkerAnimated:(BOOL)animated;
- (void)_deselectTransitLineMarker;
- (void)_didChangeRegionMidstream:(BOOL)midstream;
- (void)_didEndZoom;
- (void)_disableScrollEdgeEffectViewInteraction;
- (void)_displayWorld;
- (void)_dropDraggingAnnotationView:(BOOL)view;
- (void)_enableScrollEdgeEffectViewInteraction;
- (void)_enter3DMode;
- (void)_enterARMode;
- (void)_enterARModeWithLocation:(id)location;
- (void)_exit3DMode;
- (void)_exitARMode;
- (void)_fixUserLocationFromPresentationValue;
- (void)_forceManifestUpdateIfNecessary;
- (void)_geoapLogMapViewEngagementIfRequired;
- (void)_goToMapRegion:(id)region duration:(double)duration timingFunction:(id)function animated:(BOOL)animated completionHandler:(id)handler;
- (void)_handleCompassTap:(id)tap;
- (void)_handleLongPressGesture:(id)gesture;
- (void)_handleSelectGestureToDeselect:(id)deselect;
- (void)_handleSelectGestureToSelect:(id)select;
- (void)_handleSelectionAtPoint:(CGPoint)point;
- (void)_insertSubview:(id)subview;
- (void)_insertSubviewBelowAnnotationContainerView:(id)view;
- (void)_invalidateAllOverlayRendererColors;
- (void)_issueDatasetCheckinCall;
- (void)_layoutAttribution;
- (void)_locationManager:(id)manager didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp;
- (void)_offlineStateDidChange:(id)change;
- (void)_pauseFlyoverAnimation;
- (void)_pauseUserLocationUpdates;
- (void)_performActionAsIfGoingToDefaultLocation:(id)location;
- (void)_performFlyoverAnimation:(id)animation animateToStart:(BOOL)start;
- (void)_performWhenSizedBlocks;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_postDidChangeZoomNotificationIfNeeded;
- (void)_postDidUpdateYawNotification;
- (void)_prepareFlyoverAnimation:(id)animation completion:(id)completion;
- (void)_registerSceneLifecycleNotifications;
- (void)_registerTraitCollectionObservation;
- (void)_replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation;
- (void)_resumeFlyoverAnimation;
- (void)_resumePropagatingEdgeInsets;
- (void)_resumeUserInteraction;
- (void)_resumeUserLocationUpdates:(BOOL)updates;
- (void)_selectLabelMarker:(id)marker animated:(BOOL)animated;
- (void)_selectTransitLineMarker:(id)marker;
- (void)_selectTransitLineMarkerWithIdentifier:(id)identifier;
- (void)_selectUserLocationTypeWithDeltaZoomLevel:(double)level;
- (void)_setAlwaysShowHeadingIndicatorIfSupported:(BOOL)supported;
- (void)_setAttributionLinkDisplayStyle:(int64_t)style;
- (void)_setCamera:(id)camera animated:(BOOL)animated completionHandler:(id)handler;
- (void)_setCamera:(id)camera completionHandler:(id)handler;
- (void)_setCamera:(id)camera duration:(double)duration springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity completionHandler:(id)handler;
- (void)_setCamera:(id)camera duration:(double)duration timing:(id)timing completionHandler:(id)handler;
- (void)_setCamera:(id)camera duration:(double)duration timingCurve:(int64_t)curve completionHandler:(id)handler;
- (void)_setCamera:(id)camera springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity;
- (void)_setCameraBoundary:(id)boundary animated:(BOOL)animated;
- (void)_setCameraZoomRange:(id)range animated:(BOOL)animated;
- (void)_setCanSelectAllLabels:(BOOL)labels;
- (void)_setCanSelectPOIs:(BOOL)is;
- (void)_setCartographicConfiguration:(id *)configuration;
- (void)_setCartographicConfiguration:(id *)configuration animated:(BOOL)animated;
- (void)_setCartographicConfiguration:(id *)configuration onInit:(BOOL)init animated:(BOOL)animated;
- (void)_setClearUserLocationOnLocationReset:(BOOL)reset;
- (void)_setCompassInsetEdges:(unint64_t)edges;
- (void)_setCompassInsets:(UIEdgeInsets)insets animated:(BOOL)animated;
- (void)_setCompassSuppressedForFloorPicker:(BOOL)picker;
- (void)_setCompassViewSize:(int64_t)size style:(int64_t)style;
- (void)_setCompassVisible:(BOOL)visible animationAllowed:(BOOL)allowed force:(BOOL)force;
- (void)_setControlBackgroundStyle:(unint64_t)style;
- (void)_setControlSize:(unint64_t)size;
- (void)_setDebugConsoleAdditionalInfoProvider:(id)provider;
- (void)_setEdgeInsets:(UIEdgeInsets)insets explicit:(BOOL)explicit;
- (void)_setLabelSelectionFilter:(id)filter animated:(BOOL)animated;
- (void)_setLocationPropagationEnabled:(BOOL)enabled;
- (void)_setLocationPulseEnabled:(BOOL)enabled;
- (void)_setMapDisplayStyle:(id)style;
- (void)_setMapType:(unint64_t)type animated:(BOOL)animated;
- (void)_setPitchButtonBackgroundStyle:(unint64_t)style;
- (void)_setPitchButtonControlSize:(unint64_t)size;
- (void)_setPitchButtonVisible:(BOOL)visible animationAllowed:(BOOL)allowed;
- (void)_setPreferredConfiguration:(id)configuration onInit:(BOOL)init;
- (void)_setRouteContext:(id)context;
- (void)_setRouteContextForRoute:(id)route;
- (void)_setRouteContextForRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (void)_setScaleControlSize:(unint64_t)size;
- (void)_setScaleVisibility:(int64_t)visibility;
- (void)_setScrollEdgeEffectViewInteractionDisabled:(BOOL)disabled;
- (void)_setSelectedFeatureID:(unint64_t)d;
- (void)_setShouldAnimatePositionWithRouteMatch:(BOOL)match;
- (void)_setShouldLoadFallbackTiles:(BOOL)tiles;
- (void)_setShouldSplitRouteLine:(BOOL)line;
- (void)_setShowHeadingIndicator:(BOOL)indicator;
- (void)_setShowHeadingIndicatorForStepping:(BOOL)stepping;
- (void)_setShowsAppleLogo:(BOOL)logo force:(BOOL)force;
- (void)_setShowsCurrentEnvironmentName:(BOOL)name;
- (void)_setShowsNightMode:(BOOL)mode;
- (void)_setShowsPressedLabelMarkerEffect:(BOOL)effect;
- (void)_setShowsVenues:(BOOL)venues;
- (void)_setTracePlaybackSpeedMultiplier:(double)multiplier;
- (void)_setTrackingButtonVisible:(BOOL)visible animationAllowed:(BOOL)allowed;
- (void)_setUseBalloonCalloutsForLabels:(BOOL)labels;
- (void)_setUseVehicleHeading:(BOOL)heading;
- (void)_setUserTrackingButtonBackgroundStyle:(unint64_t)style;
- (void)_setUserTrackingControlSize:(unint64_t)size;
- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)_setVectorKitConsoleEnabled:(BOOL)enabled;
- (void)_setVisibleMapRect:(id)rect animated:(BOOL)animated completionHandler:(id)handler;
- (void)_setVisibleMapRect:(id)rect duration:(double)duration completionHandler:(id)handler;
- (void)_setZoomScale:(double)scale centerCoordinate:(CLLocationCoordinate2D)coordinate duration:(double)duration animated:(BOOL)animated;
- (void)_setZoomScale:(double)scale centerCoordinate:(CLLocationCoordinate2D)coordinate duration:(double)duration timingFunction:(id)function animated:(BOOL)animated;
- (void)_setZoomScale:(double)scale centerMapPoint:(id)point duration:(double)duration timingFunction:(id)function animated:(BOOL)animated;
- (void)_showOrHideScaleIfNecessary:(BOOL)necessary;
- (void)_sizeDidChangeWithCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_snapToNorthIfNecessary;
- (void)_snapToTrueNorthAndCallBack:(BOOL)back;
- (void)_startEffects;
- (void)_startFlyoverTourAnimation:(unint64_t)animation duration:(double)duration completion:(id)completion;
- (void)_startPanningAtPoint:(CGPoint)point;
- (void)_startTrackingHeading;
- (void)_stopFlyoverAnimation;
- (void)_stopPanningAtPoint:(CGPoint)point;
- (void)_stopPostingCompassUpdateNotifications;
- (void)_stopPostingScaleUpdateNotifications;
- (void)_stopTrackingHeading;
- (void)_suspendUserInteraction;
- (void)_traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)_unregisterSceneLifecycleNotifications;
- (void)_updateAppearanceIfNeeded;
- (void)_updateAppleLogoVisibility;
- (void)_updateAttribution;
- (void)_updateCartographicConfigurationOnInit:(BOOL)init;
- (void)_updateCompassPositionClassic;
- (void)_updateCompassVisibility;
- (void)_updateContentBounds;
- (void)_updateControlsPosition:(BOOL)position;
- (void)_updateCourseForMapViewHeading:(id)heading;
- (void)_updateEffects;
- (void)_updateEnvironmentLabelText;
- (void)_updateFallbackTileLoading;
- (void)_updateFramingUsingSetRegionBlock:(id)block;
- (void)_updateFromCamera:(id)camera duration:(double)duration timing:(id)timing completionHandler:(id)handler;
- (void)_updateHeading:(id)heading animated:(BOOL)animated;
- (void)_updateHeadingIndicatorAnimated:(BOOL)animated;
- (void)_updateHeadingOrientation;
- (void)_updateIconsShouldAlignToPixels;
- (void)_updateInsets;
- (void)_updateInsetsWithForce:(BOOL)force;
- (void)_updateLabelEdgeInsets;
- (void)_updateLabelEdgeWidths;
- (void)_updatePitchButtonVisibility;
- (void)_updatePointOfInterestFilter;
- (void)_updateRotationAttributes;
- (void)_updateScale;
- (void)_updateScalePosition;
- (void)_updateScrollContainerView:(BOOL)view forReason:(int64_t)reason;
- (void)_updateScrollingAndGestures;
- (void)_updateShouldDisplayEffects;
- (void)_updateShowHeadingIndicator;
- (void)_updateShowsHiking;
- (void)_updateShowsTraffic;
- (void)_updateStackViewPosition;
- (void)_updateTrackingVisibility;
- (void)_updateUserLocation:(id)location routeMatch:(id)match;
- (void)_updateUserLocationViewWithLocation:(id)location hadUserLocation:(BOOL)userLocation;
- (void)_updateVectorKitConsoleFrameWithEdgeInsets;
- (void)_updateWaypointCaptions;
- (void)_willChangeRegionAnimated:(BOOL)animated;
- (void)_willChangeStatusBarFrame:(id)frame;
- (void)_willStartZoom:(BOOL)zoom;
- (void)_withEffectiveTraitCollection:(id)collection;
- (void)_zoomWithAmount:(double)amount completionHandler:(id)handler;
- (void)addAnnotation:(id)annotation;
- (void)addAnnotationRepresentation:(id)representation allowAnimation:(BOOL)animation;
- (void)addAnnotations:(NSArray *)annotations;
- (void)addOverlay:(id)overlay;
- (void)addOverlay:(id)overlay level:(MKOverlayLevel)level;
- (void)addOverlays:(NSArray *)overlays;
- (void)addOverlays:(NSArray *)overlays level:(MKOverlayLevel)level;
- (void)annotationContainer:(id)container annotationView:(id)view calloutAccessoryControlTapped:(id)tapped;
- (void)annotationContainer:(id)container calloutPrimaryActionTriggeredForAnnotationView:(id)view;
- (void)annotationContainer:(id)container requestRemovingClusterAnnotationView:(id)view updateVisible:(BOOL)visible;
- (void)annotationContainer:(id)container scrollToRevealCalloutWithOffset:(CGPoint)offset annotationCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)annotationContainerDidDropPins:(id)pins;
- (void)annotationContainerDidFinishMapsTransitionExpanding:(id)expanding;
- (void)annotationContainerWillDropPins:(id)pins;
- (void)annotationManager:(id)manager didAddAnnotationRepresentations:(id)representations;
- (void)annotationManager:(id)manager didDeselectAnnotationRepresentation:(id)representation;
- (void)annotationManager:(id)manager didSelectAnnotationRepresentation:(id)representation;
- (void)annotationManager:(id)manager willDeselectAnnotationRepresentation:(id)representation;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)calloutDidAppearForAnnotationView:(id)view inContainer:(id)container;
- (void)checkIfCoordinate:(CLLocationCoordinate2D)coordinate isInHikingContextualRegionWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deselectAnnotationRepresentation:(id)representation animated:(BOOL)animated;
- (void)deviceOrientationDidChange:(id)change;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect forViewPrintFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
- (void)exchangeOverlay:(id)overlay1 withOverlay:(id)overlay2;
- (void)exchangeOverlayAtIndex:(NSUInteger)index1 withOverlayAtIndex:(NSUInteger)index2;
- (void)gestureControllerDidStopPanning:(id)panning willDecelerate:(BOOL)decelerate;
- (void)gestureControllerDidStopPanningDecelerating:(id)decelerating;
- (void)gestureControllerDidStopRotating:(id)rotating willDecelerate:(BOOL)decelerate;
- (void)gestureControllerDidStopRotatingDecelerating:(id)decelerating;
- (void)gestureControllerDidStopTilting:(id)tilting willDecelerate:(BOOL)decelerate tiltDirection:(int64_t)direction;
- (void)gestureControllerDidStopTiltingDecelerating:(id)decelerating;
- (void)gestureControllerDidStopTwoFingerLongPress:(id)press;
- (void)gestureControllerDidStopUserInteraction:(id)interaction;
- (void)gestureControllerDidStopZooming:(id)zooming direction:(int64_t)direction type:(int64_t)type willDecelerate:(BOOL)decelerate;
- (void)gestureControllerDidStopZoomingDecelerating:(id)decelerating direction:(int64_t)direction type:(int64_t)type;
- (void)gestureControllerWillStartPanning:(id)panning;
- (void)gestureControllerWillStartRotating:(id)rotating;
- (void)gestureControllerWillStartTilting:(id)tilting;
- (void)gestureControllerWillStartTwoFingerLongPress:(id)press;
- (void)gestureControllerWillStartUserInteraction:(id)interaction;
- (void)gestureControllerWillStartZooming:(id)zooming animated:(BOOL)animated;
- (void)goToDefaultLocation;
- (void)insertOverlay:(id)overlay aboveOverlay:(id)sibling;
- (void)insertOverlay:(id)overlay atIndex:(NSUInteger)index;
- (void)insertOverlay:(id)overlay atIndex:(NSUInteger)index level:(MKOverlayLevel)level;
- (void)insertOverlay:(id)overlay belowOverlay:(id)sibling;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)locationManagerDidReset:(id)reset;
- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error;
- (void)locationManagerUpdatedHeading:(id)heading;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)mapLayer:(id)layer arSessionWasInterrupted:(unint64_t)interrupted;
- (void)mapLayer:(id)layer arTrackingStateDidChange:(unint64_t)change reason:(unint64_t)reason;
- (void)mapLayer:(id)layer canShowFlyoverDidChange:(BOOL)change;
- (void)mapLayer:(id)layer didEncounterARError:(id)error;
- (void)mapLayer:(id)layer didStopFlyoverTourCompleted:(BOOL)completed;
- (void)mapLayer:(id)layer didUpdateVerticalYawTo:(double)to;
- (void)mapLayer:(id)layer flyoverModeDidChange:(int)change;
- (void)mapLayer:(id)layer flyoverModeWillChange:(int)change;
- (void)mapLayer:(id)layer flyoverTourLabelDidChange:(id)change;
- (void)mapLayer:(id)layer labelMarkerDidChangeState:(id)state;
- (void)mapLayer:(id)layer location:(id)location isInHikingContextualRegion:(BOOL)region;
- (void)mapLayer:(id)layer locationInHikingToolTipRegion:(unint64_t)region;
- (void)mapLayer:(id)layer puckLocationTracingEvent:(id)event;
- (void)mapLayer:(id)layer selectedLabelMarkerDidChangeState:(id)state;
- (void)mapLayer:(id)layer selectedLabelMarkerDidCompleteLayout:(id)layout;
- (void)mapLayer:(id)layer selectedLabelMarkerWillDisappear:(id)disappear;
- (void)mapLayer:(id)layer showingFlyoverDidChange:(BOOL)change;
- (void)mapLayer:(id)layer venueWithFocusDidChange:(id)change building:(id)building;
- (void)mapLayerARSessionInterruptionEnded:(id)ended;
- (void)mapLayerCanEnter3DModeDidChange:(BOOL)change;
- (void)mapLayerCanZoomInDidChange:(BOOL)change;
- (void)mapLayerCanZoomOutDidChange:(BOOL)change;
- (void)mapLayerDidBecomePitched:(BOOL)pitched;
- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated;
- (void)mapLayerDidChangeSceneState:(id)state withState:(unint64_t)withState;
- (void)mapLayerDidChangeVisibleRegion;
- (void)mapLayerDidDraw:(id)draw;
- (void)mapLayerDidEnterAR:(id)r;
- (void)mapLayerDidExitAR:(id)r;
- (void)mapLayerDidFailLoadingTiles:(id)tiles withError:(id)error;
- (void)mapLayerDidFinishInitialTrackingAnimation;
- (void)mapLayerDidFinishLoadingTiles:(id)tiles;
- (void)mapLayerDidStartLoadingTiles:(id)tiles;
- (void)mapLayerLabelsDidLayout:(id)layout;
- (void)mapLayerMuninAvailabilityDidChange:(int64_t)change;
- (void)mapLayerNavigationCameraDidLeaveDefaultZoom;
- (void)mapLayerNavigationCameraDidReturnToDefaultZoom;
- (void)mapLayerNavigationCameraHasStartedPanning;
- (void)mapLayerNavigationCameraHasStoppedPanning;
- (void)mapLayerWillEnterAR:(id)r;
- (void)mapLayerWillPerformZoomBounceAnimation;
- (void)mapLayerWillStartFlyoverTour:(id)tour;
- (void)moveAnnotationRepresentation:(id)representation fromCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated duration:(double)duration;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)overlayContainerAddedDrawables:(id)drawables;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeAnnotation:(id)annotation;
- (void)removeAnnotationRepresentation:(id)representation;
- (void)removeAnnotations:(NSArray *)annotations;
- (void)removeOverlay:(id)overlay;
- (void)removeOverlays:(NSArray *)overlays;
- (void)removeUserLocation;
- (void)requestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location;
- (void)resetDisplayedFloorOrdinalForAllVenues;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)safeAreaInsetsDidChange;
- (void)selectAnnotationRepresentation:(id)representation animated:(BOOL)animated;
- (void)setAttributionCorner:(int)corner;
- (void)setBackdropViewQualityChangingDisabled:(BOOL)disabled;
- (void)setBounds:(CGRect)bounds;
- (void)setCamera:(MKMapCamera *)camera;
- (void)setCamera:(id)camera animated:(BOOL)animated completionHandler:(id)handler;
- (void)setCamera:(id)camera duration:(double)duration springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity completionHandler:(id)handler;
- (void)setCamera:(id)camera springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity;
- (void)setCameraBoundary:(MKMapCameraBoundary *)cameraBoundary animated:(BOOL)animated;
- (void)setCameraZoomRange:(MKMapCameraZoomRange *)cameraZoomRange;
- (void)setCameraZoomRange:(MKMapCameraZoomRange *)cameraZoomRange animated:(BOOL)animated;
- (void)setCanShowAttributionBadge:(BOOL)badge;
- (void)setCenter:(CGPoint)center;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(double)level animated:(BOOL)animated;
- (void)setCompassEnabled:(BOOL)enabled;
- (void)setCompassViewSize:(int64_t)size;
- (void)setCustomOverrideInterfaceStyle:(int64_t)style;
- (void)setDelegate:(id)delegate;
- (void)setDimmingOutsideVenueWithFocus:(BOOL)focus;
- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal forBuildingsInVenue:(id)venue;
- (void)setFlyoverMode:(int)mode;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setIgnoreLocationUpdates:(BOOL)updates;
- (void)setLabelTextSize:(int64_t)size;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setLocationConsoleEnabled:(BOOL)enabled;
- (void)setMapType:(MKMapType)mapType;
- (void)setPitchButtonVisibility:(MKFeatureVisibility)pitchButtonVisibility;
- (void)setPitchEnabled:(BOOL)pitchEnabled;
- (void)setPredictedUserLocation:(id)location;
- (void)setRegion:(MKCoordinateRegion)region;
- (void)setRegion:(MKCoordinateRegion)region animated:(BOOL)animated;
- (void)setRotateEnabled:(BOOL)rotateEnabled;
- (void)setScrollEnabled:(BOOL)scrollEnabled;
- (void)setSelectableMapFeatures:(MKMapFeatureOptions)selectableMapFeatures;
- (void)setSelectedAnnotations:(NSArray *)selectedAnnotations;
- (void)setShowsAttribution:(BOOL)attribution;
- (void)setShowsBuildings:(BOOL)showsBuildings;
- (void)setShowsPointsOfInterest:(BOOL)showsPointsOfInterest;
- (void)setShowsScale:(BOOL)showsScale;
- (void)setShowsUserLocation:(BOOL)showsUserLocation;
- (void)setShowsUserTrackingButton:(BOOL)showsUserTrackingButton;
- (void)setSuspended:(BOOL)suspended;
- (void)setUserTrackingMode:(MKUserTrackingMode)mode animated:(BOOL)animated;
- (void)setVehicleState:(id)state;
- (void)setVisibleMapRect:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets animated:(BOOL)animate;
- (void)setVisibleMapRect:(MKMapRect)visibleMapRect;
- (void)setZoomEnabled:(BOOL)zoomEnabled;
- (void)set_startEffectsTimer:(id)timer;
- (void)showAnnotations:(NSArray *)annotations animated:(BOOL)animated;
- (void)snapToNorth:(id)north;
- (void)startLinearZoomIn:(BOOL)in;
- (void)startUpdatingUserLocation;
- (void)stopUpdatingUserLocation;
- (void)toggleLocationConsole:(id)console;
- (void)updateLayoutGuides;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)willMoveToWindow:(id)window;
- (void)zoomIn:(id)in;
- (void)zoomOut:(id)out;
@end

@implementation MKMapView

- (void)_updateHeadingOrientation
{
  if (self->_internal && [(MKMapView *)self _showHeadingIndicator])
  {
    _interfaceOrientation = [(MKMapView *)self _interfaceOrientation];
    locationManager = self->_locationManager;

    [(MKLocationManager *)locationManager setHeadingOrientation:_interfaceOrientation];
  }
}

- (void)_updateInsets
{
  flags = self->_flags;
  if ((flags & 0x10000000000) != 0)
  {
    [(MKMapView *)self _edgeInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    goto LABEL_21;
  }

  v5 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v11 = *(MEMORY[0x1E69DDCE0] + 24);
  if ((flags & 0x400000000000000) == 0)
  {
    if ((flags & 0x800000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    [(MKMapView *)self layoutMargins];
    v5 = v5 + v40;
    v7 = v7 + v41;
    v11 = v11 + v42;
    v9 = v9 + v43;
    goto LABEL_21;
  }

  _mapkit_findNearestViewController = [(UIView *)self _mapkit_findNearestViewController];
  if (_mapkit_findNearestViewController)
  {
    window = [(MKMapView *)self window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    [(MKMapView *)self convertRect:0 fromView:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    MaxY = 0.0;
    if (fabs(v23) >= 0.000001)
    {
      v45.origin.x = v17;
      v45.origin.y = v19;
      v45.size.width = v21;
      v45.size.height = v23;
      MaxY = CGRectGetMaxY(v45);
    }

    topLayoutGuide = [_mapkit_findNearestViewController topLayoutGuide];
    [topLayoutGuide length];
    v27 = v26;

    bottomLayoutGuide = [_mapkit_findNearestViewController bottomLayoutGuide];
    [bottomLayoutGuide length];
    v30 = v29;

    view = [_mapkit_findNearestViewController view];
    [view bounds];
    v32 = CGRectGetMaxY(v46) - v30;
    [(MKMapView *)self convertPoint:view fromView:0.0, v27];
    v5 = v33;
    [(MKMapView *)self convertPoint:view fromView:0.0, v32];
    v35 = v34;
    [(MKMapView *)self bounds];
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    if (v5 <= CGRectGetMinY(v47) || (v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, v5 >= CGRectGetMaxY(v48)))
    {
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      if (MaxY <= CGRectGetMinY(v49))
      {
        v5 = 0.0;
      }

      else
      {
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        v5 = 0.0;
        if (MaxY < CGRectGetMaxY(v50))
        {
          v5 = MaxY;
        }
      }
    }

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v11 = 0.0;
    v9 = 0.0;
    if (v35 > CGRectGetMinY(v51))
    {
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (v35 < CGRectGetMaxY(v52))
      {
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v9 = CGRectGetMaxY(v53) - v35;
      }
    }

    v7 = 0.0;
  }

  if ((*&self->_flags & 0x800000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:

  [(MKMapView *)self _setEdgeInsets:(flags >> 40) & 1 explicit:v5, v7, v9, v11];
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

- (void)_updateVectorKitConsoleFrameWithEdgeInsets
{
  if (self->_vectorKitDebugView)
  {
    [(VKMapView *)self->_mapView edgeInsets];
    v4 = v3;
    [(VKMapView *)self->_mapView edgeInsets];
    v6 = v5;
    [(MKMapView *)self bounds];
    v8 = v7;
    [(VKMapView *)self->_mapView edgeInsets];
    v10 = v8 - v9;
    [(VKMapView *)self->_mapView edgeInsets];
    v12 = v10 - v11;
    [(UITextView *)self->_vectorKitDebugView contentSize];
    vectorKitDebugView = self->_vectorKitDebugView;

    [(UITextView *)vectorKitDebugView setFrame:v4, v6, v12, v13];
  }
}

- (void)_updateCompassVisibility
{
  [(VKMapView *)self->_mapView presentationYaw];
  v4 = v3;
  _canShowControls = [(MKMapView *)self _canShowControls];
  canShowCompass = [(MKMapView *)self canShowCompass];
  v7 = !canShowCompass || [(MKMapView *)self _roomForCompass];
  self->_lastPossiblyVisible = [(MKMapView *)self canPossiblyShowCompassForInternalControl:0];
  [(MKMapView *)self _setCompassVisible:canShowCompass animationAllowed:v7 force:!_canShowControls];
  if (vabdd_f64(v4, self->_lastYaw) >= 2.22044605e-16)
  {
    [(MKCompassView *)self->_compassView setMapHeading:v4];
    self->_lastYaw = v4;
    [(MKMapView *)self _postDidUpdateYawNotification];
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate;
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v12 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didUpdateYaw:self->_lastYaw];
    }
  }
}

- (BOOL)_canShowControls
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(MKMapView *)self _edgeInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (_canShowControls_onceToken != -1)
  {
    dispatch_once(&_canShowControls_onceToken, &__block_literal_global_346);
  }

  return v6 - (v8 + v12) >= *&_canShowControls_minHeight && v4 - (v10 + v14) >= *&_canShowControls_minWidth;
}

- (BOOL)canShowCompass
{
  _roomForCompass = [(MKMapView *)self _roomForCompass];
  if (_roomForCompass)
  {
    _roomForCompass = [(MKMapView *)self canPossiblyShowCompassForInternalControl:1];
    if (_roomForCompass)
    {
      _roomForCompass = [(MKMapView *)self isCompassEnabled];
      if (_roomForCompass)
      {
        LOBYTE(_roomForCompass) = ![(MKMapView *)self _isCompassSuppressedForFloorPicker];
      }
    }
  }

  return _roomForCompass;
}

- (BOOL)_roomForCompass
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMapView *)self _compassDiameter];
  v12 = v11;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v13 = v12 + v12;
  if (CGRectGetWidth(v15) < v13)
  {
    return 0;
  }

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  return CGRectGetHeight(v16) >= v13;
}

- (void)_updateTrackingVisibility
{
  if ([(MKMapView *)self _roomForCompass]&& [(MKMapView *)self showsUserTrackingButton])
  {
    _roomForCompass = [(MKMapView *)self _roomForCompass];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    _roomForCompass = 1;
  }

  [(MKMapView *)self _setTrackingButtonVisible:v4 animationAllowed:_roomForCompass];
}

- (void)_updatePitchButtonVisibility
{
  pitchButtonVisibility = self->_pitchButtonVisibility;
  _roomForCompass = [(MKMapView *)self _roomForCompass];
  v5 = pitchButtonVisibility != 1 && _roomForCompass;
  v6 = !v5 || [(MKMapView *)self _roomForCompass];

  [(MKMapView *)self _setPitchButtonVisible:v5 animationAllowed:v6];
}

double __29__MKMapView__canShowControls__block_invoke()
{
  *&_canShowControls_minWidth = GEOConfigGetInteger();
  result = GEOConfigGetInteger();
  *&_canShowControls_minHeight = result;
  return result;
}

- (void)_updateAppleLogoVisibility
{
  if (_MKLinkedOnOrAfterReleaseSet(2310))
  {
    if ((*(&self->_flags + 3) & 4) == 0 || self->_attributionBadgeView)
    {
      p_appleLogoImageView = &self->_appleLogoImageView;
      appleLogoImageView = self->_appleLogoImageView;
      if (!appleLogoImageView)
      {
        return;
      }

      goto LABEL_5;
    }

    _canShowAppleLogo = [(MKMapView *)self _canShowAppleLogo];
    p_appleLogoImageView = &self->_appleLogoImageView;
    appleLogoImageView = self->_appleLogoImageView;
    if (((_canShowAppleLogo ^ (appleLogoImageView == 0)) & 1) == 0)
    {
      if (!_canShowAppleLogo)
      {
LABEL_5:
        v5 = appleLogoImageView;
        v6 = *p_appleLogoImageView;
        *p_appleLogoImageView = 0;

        v7 = MEMORY[0x1E69DD250];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __39__MKMapView__updateAppleLogoVisibility__block_invoke;
        v20[3] = &unk_1E76CDB38;
        v21 = v5;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __39__MKMapView__updateAppleLogoVisibility__block_invoke_2;
        v17[3] = &unk_1E76CDB88;
        v18 = v21;
        selfCopy = self;
        v8 = v21;
        [v7 _mapkit_animateWithDuration:v20 animations:v17 completion:0.200000003];

        return;
      }

      if (GEOConfigGetBOOL())
      {
        v10 = [[MKAppleLogoLabel alloc] initForMapType:[(MKMapView *)self mapType] forDarkMode:[(MKMapView *)self _showsNightMode]];
        v11 = *p_appleLogoImageView;
        *p_appleLogoImageView = v10;

        [*p_appleLogoImageView intrinsicContentSize];
        self->_appleLogoImageWidth = v12;
      }

      else
      {
        v13 = [[MKAppleLogoImageView alloc] initForMapType:[(MKMapView *)self mapType] forDarkMode:[(MKMapView *)self _showsNightMode]];
        v14 = *p_appleLogoImageView;
        *p_appleLogoImageView = v13;

        image = [*p_appleLogoImageView image];
        [image size];
        self->_appleLogoImageWidth = v16;
      }

      [(MKMapView *)self addSubview:*p_appleLogoImageView];

      [(MKMapView *)self _layoutAttribution];
    }
  }
}

- (void)_updateScalePosition
{
  v59 = *MEMORY[0x1E69E9840];
  if (self->_scaleView)
  {
    v3 = +[MKSystemController sharedInstance];
    supportsExtendedGestures = [v3 supportsExtendedGestures];

    if (supportsExtendedGestures)
    {
      v5 = 12.0;
    }

    else
    {
      v5 = 90.0;
    }

    v6 = 60.0;
    if (supportsExtendedGestures)
    {
      v6 = 10.0;
    }

    v55 = v5;
    v56 = v6;
    [(MKScaleView *)self->_scaleView intrinsicContentSize];
    v8 = v7;
    v53 = v9;
    [(MKScaleView *)self->_scaleView alignmentRectInsets];
    v11 = v10;
    v13 = v12;
    v54 = v14;
    v16 = v15;
    _compassInsetEdges = [(MKMapView *)self _compassInsetEdges];
    [(MKMapView *)self _edgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(MKMapView *)self bounds];
    if (*MEMORY[0x1E695F060] != v27 || *(MEMORY[0x1E695F060] + 8) != v26)
    {
      v29 = v16 + v8 + v13;
      v30 = v53 + v11;
      [(MKMapView *)self bounds];
      v32 = v21 + v31;
      v34 = v19 + v33;
      v36 = v35 - (v21 + v25);
      v38 = v37 - (v19 + v23);
      effectiveUserInterfaceLayoutDirection = [(MKMapView *)self effectiveUserInterfaceLayoutDirection];
      if ((_compassInsetEdges & 8) != 0)
      {
        [(MKScaleView *)self->_scaleView setLegendAlignment:effectiveUserInterfaceLayoutDirection == 1];
        v61.origin.x = v32;
        v61.origin.y = v34;
        v61.size.width = v36;
        v61.size.height = v38;
        v40 = v55 + CGRectGetMinX(v61);
      }

      else
      {
        [(MKScaleView *)self->_scaleView setLegendAlignment:effectiveUserInterfaceLayoutDirection != 1];
        v60.origin.x = v32;
        v60.origin.y = v34;
        v60.size.width = v36;
        v60.size.height = v38;
        v40 = CGRectGetMaxX(v60) - (v55 + v29);
      }

      v41 = v54 + v30;
      v62.origin.x = v32;
      v62.origin.y = v34;
      v62.size.width = v36;
      v62.size.height = v38;
      v42 = v56 + CGRectGetMinY(v62);
      if ((*(&self->_flags + 5) & 1) == 0)
      {
        if ((_compassInsetEdges & 8) != 0)
        {
          v43 = 2;
        }

        else
        {
          v43 = 8;
        }

        [(UIView *)self _mapkit_translateRect:v43 ifNeededFromSingleEdge:v40, v42, v29, v41];
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
        if (CGRectIsNull(v63))
        {
          [(UIView *)self _mapkit_translateRect:1 ifNeededFromSingleEdge:v40, v42, v29, v41];
          x = v48;
          y = v49;
          width = v50;
          height = v51;
        }

        v64.origin.x = x;
        v64.origin.y = y;
        v64.size.width = width;
        v64.size.height = height;
        if (!CGRectIsNull(v64))
        {
          goto LABEL_25;
        }

        v52 = MKGetMKMapViewLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v58 = _compassInsetEdges;
          _os_log_impl(&dword_1A2EA0000, v52, OS_LOG_TYPE_DEBUG, "Could not inset scale from edge %lu", buf, 0xCu);
        }
      }

      x = v40;
      y = v42;
      width = v29;
      height = v41;
LABEL_25:
      [(MKScaleView *)self->_scaleView setFrame:x, y, width, height];
    }
  }
}

- (CGRect)_currentEnvironmentNameFrame
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMapView *)self _edgeInsets];
  v12 = v11;
  v14 = v6 + v13;
  v16 = v11 + v15;
  v18 = v10 - (v13 + v17);
  vectorKitDebugView = self->_vectorKitDebugView;
  if (vectorKitDebugView)
  {
    [(UITextView *)vectorKitDebugView bounds];
    v14 = v14 + v20;
    [(UITextView *)self->_vectorKitDebugView bounds];
    v18 = v18 - v21;
  }

  v22 = v4 + v12;
  v23 = v8 - v16;
  [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = +[MKSystemController sharedInstance];
  if ([v32 userInterfaceIdiom] == 2)
  {
  }

  else
  {
    v33 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v33 isGlassEnabled];

    if (!isGlassEnabled)
    {
      v45.origin.x = v22;
      v45.origin.y = v14;
      v45.size.width = v23;
      v45.size.height = v18;
      v38 = CGRectGetMinX(v45) + 4.0;
      goto LABEL_8;
    }
  }

  v43.origin.x = v22;
  v43.origin.y = v14;
  v43.size.width = v23;
  v43.size.height = v18;
  MaxX = CGRectGetMaxX(v43);
  v36 = v25;
  v37 = MaxX + -4.0;
  v44.origin.x = v36;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  v38 = v37 - CGRectGetWidth(v44);
LABEL_8:
  v46.origin.x = v22;
  v46.origin.y = v14;
  v46.size.width = v23;
  v46.size.height = v18;
  v39 = CGRectGetMinY(v46) + 4.0;
  v40 = v38;
  v41 = v29;
  v42 = v31;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v39;
  result.origin.x = v40;
  return result;
}

- (void)_updateStackViewPosition
{
  if (self->_controlStackView)
  {
    [(MKMapView *)self bringSubviewToFront:?];
    [(NSLayoutConstraint *)self->_controlStackWidthConstraint setConstant:MKCompassViewDiameterForSize(self->_compassViewSize)];
    effectiveUserInterfaceLayoutDirection = [(MKMapView *)self effectiveUserInterfaceLayoutDirection];
    [(MKMapView *)self _edgeInsets];
    p_compassInsets = &self->_compassInsets;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = 8;
    if (!effectiveUserInterfaceLayoutDirection)
    {
      v8 = 24;
    }

    [(NSLayoutConstraint *)self->_controlStackHorizontalPositionConstraint setConstant:-*(&p_compassInsets->top + v8) - v7];
    [(MKMapView *)self _edgeInsets];
    v10 = v9 + p_compassInsets->top;
    controlStackVerticalPositionConstraint = self->_controlStackVerticalPositionConstraint;

    [(NSLayoutConstraint *)controlStackVerticalPositionConstraint setConstant:v10];
  }
}

- (void)_layoutAttribution
{
  v111 = *MEMORY[0x1E69E9840];
  [(MKMapView *)self bounds];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != v5 || v4 != v3)
  {
    v7 = [(UIView *)self _mapkit_userInterfaceDirection:*MEMORY[0x1E695F060]];
    [(MKMapView *)self _edgeInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    left = self->_attributionInsets.left;
    bottom = self->_attributionInsets.bottom;
    right = self->_attributionInsets.right;
    if (_MKLinkedOnOrAfterReleaseSet(2310) && ([(UIImageView *)self->_attributionBadgeView superview], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      if (GEOConfigGetBOOL() && _MKLinkedOnOrAfterReleaseSet(3595))
      {
        v101 = v7 == 0;
        v102 = 8;
        v103 = 4;
      }

      else
      {
        v101 = v7 == 0;
        v102 = 4;
        v103 = 8;
      }

      if (v101)
      {
        v18 = v103;
      }

      else
      {
        v18 = v102;
      }

      v19 = 10.0;
    }

    else
    {
      if (v7)
      {
        v18 = 8;
      }

      else
      {
        v18 = 4;
      }

      v19 = 11.0;
    }

    if (!GEOConfigGetBOOL() || (v20 = v18, !_MKLinkedOnOrAfterReleaseSet(3595)))
    {
      if (v18 == 8)
      {
        v20 = 4;
      }

      else
      {
        v20 = 8;
      }
    }

    v21 = v11 + bottom;
    v106 = v9 + left;
    v107 = v13 + right;
    _compassInsetEdges = [(MKMapView *)self _compassInsetEdges];
    if (_compassInsetEdges)
    {
      v23 = 1;
    }

    else
    {
      v23 = 4;
    }

    if (_compassInsetEdges)
    {
      v24 = 2;
    }

    else
    {
      v24 = 8;
    }

    if ((_compassInsetEdges & 2) == 0)
    {
      v23 = v24;
    }

    if (v18 == 8)
    {
      v25 = 4;
    }

    else
    {
      v25 = 8;
    }

    if (v23 == v18)
    {
      v26 = v25;
    }

    else
    {
      v26 = v18;
    }

    superview = [(MKAppleLogoView *)self->_appleLogoImageView superview];

    v108 = v11 + bottom;
    if (!superview)
    {
LABEL_46:
      superview2 = [(MKAttributionLabel *)self->_attributionLabel superview];

      if (!superview2)
      {
        goto LABEL_69;
      }

      [(MKMapView *)self bounds];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      [(MKAttributionLabel *)self->_attributionLabel frame];
      v59 = v57 - v58 + -10.0 - v21;
      if (v26 == 4)
      {
        v60 = v106 + v19;
        appleLogoImageView = self->_appleLogoImageView;
        if (appleLogoImageView && v20 == 4)
        {
          [(MKAppleLogoView *)appleLogoImageView frame];
          v60 = v19 + CGRectGetMaxX(v115);
        }
      }

      else
      {
        v116.origin.x = v53;
        v116.origin.y = v57 - v58 + -10.0 - v21;
        v116.size.width = v55;
        v116.size.height = v57;
        MaxX = CGRectGetMaxX(v116);
        [(MKAttributionLabel *)self->_attributionLabel frame];
        v60 = MaxX - (v107 + v19 + v63);
        v64 = self->_appleLogoImageView;
        if (v64 && v20 == 8)
        {
          [(MKAppleLogoView *)v64 frame];
          v60 = v60 - CGRectGetWidth(v117);
        }
      }

      [(MKAttributionLabel *)self->_attributionLabel frame];
      v67 = v65;
      v68 = v66;
      if ((*(&self->_flags + 5) & 1) == 0)
      {
        if (v26 == 4)
        {
          v69 = 2;
        }

        else
        {
          v69 = 8;
        }

        [(UIView *)self _mapkit_translateRect:v69 ifNeededFromSingleEdge:v60, v59, v65, v66];
        x = v118.origin.x;
        y = v118.origin.y;
        width = v118.size.width;
        height = v118.size.height;
        if (CGRectIsNull(v118))
        {
          [(UIView *)self _mapkit_translateRect:4 ifNeededFromSingleEdge:v60, v59, v67, v68];
          x = v74;
          y = v75;
          width = v76;
          height = v77;
        }

        v119.origin.x = x;
        v119.origin.y = y;
        v119.size.width = width;
        v119.size.height = height;
        if (!CGRectIsNull(v119))
        {
          goto LABEL_65;
        }

        v78 = MKGetMKMapViewLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v110 = v26;
          _os_log_impl(&dword_1A2EA0000, v78, OS_LOG_TYPE_DEBUG, "Could not inset legal attribution from corner %lu", buf, 0xCu);
        }
      }

      x = v60;
      y = v59;
      width = v67;
      height = v68;
LABEL_65:
      [(MKAttributionLabel *)self->_attributionLabel setFrame:x, y, width, height];
      if (v26 == 8)
      {
        v79 = 9;
      }

      else
      {
        v79 = 12;
      }

      [(MKAttributionLabel *)self->_attributionLabel setAutoresizingMask:v79];
      v21 = v108;
LABEL_69:
      superview3 = [(UIImageView *)self->_attributionBadgeView superview];

      if (!superview3)
      {
        return;
      }

      [(UIImageView *)self->_attributionBadgeView sizeToFit];
      [(UIImageView *)self->_attributionBadgeView frame];
      v82 = v81;
      v84 = v83;
      if (self->_attributionCorner == 4)
      {
        v85 = v106 + 4.0;
      }

      else
      {
        [(MKMapView *)self bounds];
        v85 = v86 - v82 + -4.0 - v107;
      }

      superview4 = [(MKAttributionLabel *)self->_attributionLabel superview];
      if (superview4 && (attributionCorner = self->_attributionCorner, superview4, v26 == attributionCorner))
      {
        [(MKAttributionLabel *)self->_attributionLabel frame];
        v89 = CGRectGetMinY(v120) - v84 + -4.0;
      }

      else
      {
        [(MKMapView *)self bounds];
        v89 = v90 - v84 + -4.0 - v21;
      }

      if ((*(&self->_flags + 5) & 1) == 0)
      {
        if (v26 == 4)
        {
          v91 = 8;
        }

        else
        {
          v91 = 2;
        }

        [(UIView *)self _mapkit_translateRect:v91 ifNeededFromSingleEdge:v85, v89, v82, v84];
        v92 = v121.origin.x;
        v93 = v121.origin.y;
        v94 = v121.size.width;
        v95 = v121.size.height;
        if (CGRectIsNull(v121))
        {
          [(UIView *)self _mapkit_translateRect:4 ifNeededFromSingleEdge:v85, v89, v82, v84];
          v92 = v96;
          v93 = v97;
          v94 = v98;
          v95 = v99;
        }

        v122.origin.x = v92;
        v122.origin.y = v93;
        v122.size.width = v94;
        v122.size.height = v95;
        if (!CGRectIsNull(v122))
        {
          goto LABEL_88;
        }

        v100 = MKGetMKMapViewLog();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v110 = v26;
          _os_log_impl(&dword_1A2EA0000, v100, OS_LOG_TYPE_DEBUG, "Could not inset legal attribution from corner %lu", buf, 0xCu);
        }
      }

      v92 = v85;
      v93 = v89;
      v94 = v82;
      v95 = v84;
LABEL_88:
      [(UIImageView *)self->_attributionBadgeView setFrame:v92, v93, v94, v95];
      return;
    }

    [(MKMapView *)self bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(MKAppleLogoView *)self->_appleLogoImageView frame];
    v35 = v34;
    v37 = v36;
    [(MKAppleLogoView *)self->_appleLogoImageView bottomLayoutAdjustment];
    v39 = v33 + v38 - v37 + -7.0 - v21;
    if (v20 == 4)
    {
      v40 = v106 + 10.0;
    }

    else
    {
      v112.origin.x = v29;
      v112.origin.y = v39;
      v112.size.width = v31;
      v112.size.height = v33;
      v40 = CGRectGetMaxX(v112) - (v107 + v35 + 10.0);
    }

    v104 = v19;
    if ((*(&self->_flags + 5) & 1) == 0)
    {
      if (v20 == 4)
      {
        v41 = 2;
      }

      else
      {
        v41 = 8;
      }

      [(UIView *)self _mapkit_translateRect:v41 ifNeededFromSingleEdge:v40, v39, v35, v37, *&v19];
      v42 = v113.origin.x;
      v43 = v113.origin.y;
      v44 = v113.size.width;
      v45 = v113.size.height;
      if (CGRectIsNull(v113))
      {
        [(UIView *)self _mapkit_translateRect:4 ifNeededFromSingleEdge:v40, v39, v35, v37];
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v45 = v49;
      }

      v114.origin.x = v42;
      v114.origin.y = v43;
      v114.size.width = v44;
      v114.size.height = v45;
      if (!CGRectIsNull(v114))
      {
        goto LABEL_45;
      }

      v50 = MKGetMKMapViewLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v110 = v20;
        _os_log_impl(&dword_1A2EA0000, v50, OS_LOG_TYPE_DEBUG, "Could not inset logo attribution from corner %lu", buf, 0xCu);
      }
    }

    v42 = v40;
    v43 = v39;
    v44 = v35;
    v45 = v37;
LABEL_45:
    [(MKAppleLogoView *)self->_appleLogoImageView setFrame:v42, v43, v44, v45, *&v104];
    v21 = v108;
    v19 = v105;
    goto LABEL_46;
  }
}

- (id)_controlStackView
{
  v24[4] = *MEMORY[0x1E69E9840];
  controlStackView = self->_controlStackView;
  if (!controlStackView)
  {
    v4 = objc_alloc_init(MKPassThroughStackView);
    v5 = self->_controlStackView;
    self->_controlStackView = &v4->super;

    [(UIStackView *)self->_controlStackView setAlignment:3];
    [(UIStackView *)self->_controlStackView setAxis:1];
    [(UIStackView *)self->_controlStackView setSpacing:10.0];
    [(UIStackView *)self->_controlStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_controlStackView setDistribution:3];
    [(MKMapView *)self addSubview:self->_controlStackView];
    trailingAnchor = [(UIStackView *)self->_controlStackView trailingAnchor];
    trailingAnchor2 = [(MKMapView *)self trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-11.0];
    controlStackHorizontalPositionConstraint = self->_controlStackHorizontalPositionConstraint;
    self->_controlStackHorizontalPositionConstraint = v8;

    topAnchor = [(UIStackView *)self->_controlStackView topAnchor];
    topAnchor2 = [(MKMapView *)self topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];
    controlStackVerticalPositionConstraint = self->_controlStackVerticalPositionConstraint;
    self->_controlStackVerticalPositionConstraint = v12;

    widthAnchor = [(UIStackView *)self->_controlStackView widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:MKCompassViewDiameterForSize(self->_compassViewSize)];
    controlStackWidthConstraint = self->_controlStackWidthConstraint;
    self->_controlStackWidthConstraint = v15;

    v17 = MEMORY[0x1E696ACD8];
    v18 = self->_controlStackVerticalPositionConstraint;
    v24[0] = self->_controlStackHorizontalPositionConstraint;
    v24[1] = v18;
    v24[2] = self->_controlStackWidthConstraint;
    bottomAnchor = [(UIStackView *)self->_controlStackView bottomAnchor];
    bottomAnchor2 = [(MKMapView *)self bottomAnchor];
    v21 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v24[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v22];

    controlStackView = self->_controlStackView;
  }

  return controlStackView;
}

- (unint64_t)_compassInsetEdges
{
  if (self->_explicitCompassInsetEdges)
  {
    return self->_compassInsetEdges;
  }

  if ([(UIView *)self _mapkit_userInterfaceDirection:v2])
  {
    return 3;
  }

  return 9;
}

- (id)_pitchButton
{
  pitchButton = self->_pitchButton;
  if (!pitchButton)
  {
    v4 = [MKPitchButton pitchButtonWithMapView:self];
    v5 = self->_pitchButton;
    self->_pitchButton = v4;

    [(MKPitchButton *)self->_pitchButton _setBackgroundStyle:self->_pitchButtonBackgroundStyle];
    [(MKPitchButton *)self->_pitchButton setVisibility:[(MKMapView *)self pitchButtonVisibility]];
    [(MKPitchButton *)self->_pitchButton setTranslatesAutoresizingMaskIntoConstraints:0];
    pitchButton = self->_pitchButton;
  }

  return pitchButton;
}

- (void)_registerTraitCollectionObservation
{
  v3 = MEMORY[0x1E695DF70];
  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v6 = [v3 arrayWithArray:systemTraitsAffectingColorAppearance];

  [v6 addObject:objc_opt_class()];
  [v6 addObject:objc_opt_class()];
  [v6 addObject:objc_opt_class()];
  [v6 addObject:objc_opt_class()];
  [v6 addObject:objc_opt_class()];
  v5 = [(MKMapView *)self registerForTraitChanges:v6 withAction:sel__traitEnvironment_didChangeTraitCollection_];
}

- (BOOL)_canEnter3DMode
{
  v3 = +[MKSystemController sharedInstance];
  supportsExtendedGestures = [v3 supportsExtendedGestures];

  canEnter3DMode = [(VKMapView *)self->_mapView canEnter3DMode];
  if (((supportsExtendedGestures ^ 1) & 1) != 0 || (canEnter3DMode & 1) == 0)
  {
    return (supportsExtendedGestures ^ 1) & canEnter3DMode;
  }

  return [(MKMapView *)self isPitchEnabled];
}

- (void)_updateShowsTraffic
{
  _showsTraffic = [(MKMapConfiguration *)self->_preferredConfiguration _showsTraffic];
  [(MKBasicMapView *)self->_basicMapView updateStatsForTrafficEnabledTime];
  [(MKBasicMapView *)self->_basicMapView updateStatsForEnablingTraffic:_showsTraffic];
  mapView = self->_mapView;

  [(VKMapView *)mapView setTrafficEnabled:_showsTraffic];
}

- (void)_updatePointOfInterestFilter
{
  _pointOfInterestFilter = [(MKMapConfiguration *)self->_preferredConfiguration _pointOfInterestFilter];
  if ([_pointOfInterestFilter _includesAllCategories])
  {
    [(VKMapView *)self->_mapView setPointsOfInterestFilter:0];
  }

  else
  {
    _geoPOICategoryFilter = [_pointOfInterestFilter _geoPOICategoryFilter];
    [(VKMapView *)self->_mapView setPointsOfInterestFilter:_geoPOICategoryFilter];
  }

  [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:8];
}

- (void)_updateAppearanceIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  traitCollection = [(MKMapView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    mapType = [(MKMapView *)self mapType];
    v5 = 0;
    if (mapType - 1 >= 4)
    {
      v5 = mapType != 107;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    if ([(MKMapView *)self _showsNightMode])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "MKMapView: _updateAppearanceIfNeeded shouldShowNightMode : %@ self.showsNightMode : %@", &v21, 0x16u);
  }

  if (v5 != [(MKMapView *)self _showsNightMode])
  {
    [(MKMapView *)self _setShowsNightMode:v5];
    if ((*&self->_flags & 0x10) != 0 && ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters] & 1) == 0)
    {
      isInBackground = [(MKBasicMapView *)self->_basicMapView isInBackground];
      rendersInBackground = [(VKMapView *)self->_mapView rendersInBackground];
      if (!isInBackground || (rendersInBackground & 1) != 0)
      {
        _mapLayer = [(MKMapView *)self _mapLayer];
        [_mapLayer forceFrame];
      }

      else
      {
        [(VKMapView *)self->_mapView setRendersInBackground:1];
        _mapLayer2 = [(MKMapView *)self _mapLayer];
        [_mapLayer2 forceFrame];

        [(VKMapView *)self->_mapView setRendersInBackground:0];
      }
    }
  }

  mapType2 = [(MKMapView *)self mapType];
  _showsNightMode = [(MKMapView *)self _showsNightMode];
  v17 = mapType2 - 1 < 4 || mapType2 == 107;
  v18 = _showsNightMode || v17;
  [(MKScaleView *)self->_scaleView setUseLightText:v18];
  _controlsUserInterfaceStyleOverride = [(MKMapView *)self _controlsUserInterfaceStyleOverride];
  [(MKCompassView *)self->_compassView setOverrideUserInterfaceStyle:_controlsUserInterfaceStyleOverride];
  [(MKUserTrackingButton *)self->_trackingButton setOverrideUserInterfaceStyle:_controlsUserInterfaceStyleOverride];
  [(MKPitchButton *)self->_pitchButton setOverrideUserInterfaceStyle:_controlsUserInterfaceStyleOverride];
  appleLogoImageView = self->_appleLogoImageView;
  if (appleLogoImageView)
  {
    [(MKAppleLogoView *)appleLogoImageView updateForMapType:mapType2 darkMode:[(MKMapView *)self _showsNightMode]];
  }
}

- (id)annotationRectTest
{
  annotationRectTest = self->_annotationRectTest;
  if (!annotationRectTest)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__MKMapView_annotationRectTest__block_invoke;
    v8[3] = &unk_1E76C67B8;
    objc_copyWeak(&v9, &location);
    v4 = [v8 copy];
    v5 = self->_annotationRectTest;
    self->_annotationRectTest = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    annotationRectTest = self->_annotationRectTest;
  }

  v6 = MEMORY[0x1A58E9F30](annotationRectTest, a2);

  return v6;
}

- (id)annotationCoordinateTest
{
  annotationCoordinateTest = self->_annotationCoordinateTest;
  if (!annotationCoordinateTest)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__MKMapView_annotationCoordinateTest__block_invoke;
    v8[3] = &unk_1E76C67E0;
    objc_copyWeak(&v9, &location);
    v4 = [v8 copy];
    v5 = self->_annotationCoordinateTest;
    self->_annotationCoordinateTest = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    annotationCoordinateTest = self->_annotationCoordinateTest;
  }

  v6 = MEMORY[0x1A58E9F30](annotationCoordinateTest, a2);

  return v6;
}

uint64_t __31__MKMapView_annotationRectTest__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained[83] annotationRectTest];
    v12 = v11;
    if (v11)
    {
      v13 = (*(v11 + 16))(v11, a2 * 0.0000000037252903, 1.0 - (a3 + a5) * 0.0000000037252903, (a2 + a4) * 0.0000000037252903, 1.0 - a3 * 0.0000000037252903);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateShowsHiking
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (objc_opt_respondsToSelector() & 1) != 0 && [(MKMapConfiguration *)self->_preferredConfiguration _showsHiking];
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [(MKMapConfiguration *)self->_preferredConfiguration _showsTopographicFeatures];
  v5 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "MKMapView: Setting hiking feature - showsHiking: %d - withTopographicFeatures: %d", v6, 0xEu);
  }

  [(VKMapView *)self->_mapView setShowsHiking:v3 withTopographicFeatures:v4];
}

- (int64_t)_controlsUserInterfaceStyleOverride
{
  mapType = [(MKMapView *)self mapType];
  v4 = 2;
  if (mapType - 1 >= 4 && mapType != 107)
  {
    traitCollection = [(MKMapView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)_updateIconsShouldAlignToPixels
{
  iconsShouldAlignToPixels = [(VKMapView *)self->_mapView iconsShouldAlignToPixels];
  _iconsShouldAlignToPixels = [(MKMapView *)self _iconsShouldAlignToPixels];
  [(VKMapView *)self->_mapView setIconsShouldAlignToPixels:_iconsShouldAlignToPixels];
  if (iconsShouldAlignToPixels != _iconsShouldAlignToPixels)
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView setNeedsDisplay];
  }
}

- (MKMapViewDelegate)_safeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);

  return WeakRetained;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MKMapView;
  [(MKMapView *)&v3 layoutMarginsDidChange];
  [(MKMapView *)self _updateInsetsWithForce:0];
}

- (void)goToDefaultLocation
{
  v3 = MKGetMKMapViewLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GoToDefaultLocation", &unk_1A30FEA0E, buf, 2u);
  }

  if ([(MKMapView *)self userTrackingMode]== MKUserTrackingModeNone || ![(MKMapView *)self hasUserLocation])
  {
    v4 = MKDefaultCoordinateRegion();
    if (fabs(v7) > 180.0 || fabs(v4) > 90.0 || v5 < 0.0 || v5 > 180.0 || v6 < 0.0 || v6 > 360.0)
    {
      *&self->_flags |= 0x8000000000000uLL;
      [(MKMapView *)self _displayWorld];
      *&self->_flags &= ~0x8000000000000uLL;
    }

    else
    {
      *&self->_flags |= 0x8000000000000uLL;
      [(MKMapView *)self setRegion:0 animated:?];
      *&self->_flags &= ~0x8000000000000uLL;
      v8 = MKGetMKMapViewLog();
      if (os_signpost_enabled(v8))
      {
        *v9 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GoToDefaultLocation", &unk_1A30FEA0E, v9, 2u);
      }
    }
  }
}

- (BOOL)_mustWaitUntilSized
{
  [(MKMapView *)self bounds];
  if (v3 <= 0.0)
  {
    return 1;
  }

  [(MKMapView *)self bounds];
  return v4 <= 0.0;
}

- (void)_addDebugGesture
{
  if (GEOConfigGetBOOL())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_toggleLocationConsole_];
    [(UIGestureRecognizer *)v3 setNumberOfTapsRequired:2];
    [(UIGestureRecognizer *)v3 setNumberOfTouchesRequired:3];
    [(UIGestureRecognizer *)v3 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v3 setDelaysTouchesBegan:0];
    locationConsoleGesture = self->_locationConsoleGesture;
    self->_locationConsoleGesture = v3;
    v5 = v3;

    [(UIView *)self->_contentView addGestureRecognizer:self->_locationConsoleGesture];
  }
}

- (void)_updateEffects
{
  suspendedEffectsCount = self->_suspendedEffectsCount;
  if (suspendedEffectsCount == 1)
  {
    startEffectsTimer = self->_startEffectsTimer;
    if (startEffectsTimer)
    {
      CFRunLoopTimerSetNextFireDate(startEffectsTimer, 3153600000.0);
    }

    [(MKMapView *)self _updateShouldDisplayEffects];
  }

  else if (!suspendedEffectsCount)
  {
    if (!self->_startEffectsTimer)
    {
      v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self->_internal target:sel_startEffects selector:0 userInfo:1 repeats:3153600000.0];
      v5 = self->_startEffectsTimer;
      self->_startEffectsTimer = v4;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:self->_startEffectsTimer forMode:*MEMORY[0x1E695D918]];
    }

    v7 = CFAbsoluteTimeGetCurrent() + 0.1;
    v8 = self->_startEffectsTimer;

    CFRunLoopTimerSetNextFireDate(v8, v7);
  }
}

- (void)_updateShouldDisplayEffects
{
  if ([(MKMapView *)self effectsEnabled])
  {
    v3 = (*(&self->_flags + 5) >> 3) & 1;
  }

  else
  {
    v3 = 0;
  }

  userLocationView = [(MKAnnotationContainerView *)self->_annotationContainer userLocationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = userLocationView;
LABEL_8:
    v5 = _mkUserLocationView;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [userLocationView _mkUserLocationView];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_10:

  [v5 setEffectsEnabled:v3];
}

- (void)_updateScrollingAndGestures
{
  v3 = +[MKSystemController sharedInstance];
  supportsExtendedGestures = [v3 supportsExtendedGestures];

  if (supportsExtendedGestures)
  {
    [(MKMapGestureController *)self->_gestureController setScrollEnabled:[(MKMapView *)self isScrollEnabled]];
  }

  [(MKMapGestureController *)self->_gestureController setZoomEnabled:[(MKMapView *)self isZoomEnabled]];
  [(MKMapGestureController *)self->_gestureController setRotationEnabled:[(MKMapView *)self isRotateEnabled]];
  [(MKMapGestureController *)self->_gestureController setTiltEnabled:[(MKMapView *)self isPitchEnabled]];

  [(MKMapView *)self _updateFallbackTileLoading];
}

- (void)_updateFallbackTileLoading
{
  v3 = (*(&self->_flags + 1) & 0x1020) != 0 || [(MKMapView *)self isRotateEnabled]|| [(MKMapView *)self isPitchEnabled];
  isUserInteractionEnabled = [(MKMapView *)self isUserInteractionEnabled];
  v5 = 0;
  if (isUserInteractionEnabled && v3)
  {
    v5 = (*(&self->_flags + 6) >> 6) & 1;
  }

  mapView = self->_mapView;

  [(VKMapView *)mapView setShouldLoadFallbackTiles:v5];
}

- (BOOL)hasUserLocation
{
  location = [(MKUserLocation *)self->_userLocation location];
  v3 = location != 0;

  return v3;
}

- (MKCoordinateRegion)region
{
  [(MKMapView *)self centerCoordinate];
  v4 = v3;
  v6 = v5;
  [(MKMapView *)self visibleMapRect];
  result = MKCoordinateRegionForMapRect(v9);
  v7 = v4;
  v8 = v6;
  result.center.longitude = v8;
  result.center.latitude = v7;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  [(VKMapView *)self->_mapView centerCoordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (MKMapRect)visibleMapRect
{
  mapRegion = [(VKMapView *)self->_mapView mapRegion];
  GEOMapRectForMapRegion();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (int64_t)_roundedZoomLevel
{
  [(MKMapView *)self _zoomLevel];
  [(MKMapView *)self _boundedZoomLevel:round(v3)];
  return v4;
}

- (void)_suspendUserInteraction
{
  ++self->_userInteractionDisabledCount;
  [(UIView *)self->_contentView setUserInteractionEnabled:0];

  [(MKMapView *)self _updateScrollingAndGestures];
}

- (void)mapLayerDidChangeVisibleRegion
{
  *&self->_flags |= 0x400000000uLL;
  [(MKMapView *)self _didChangeRegionMidstream:1];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v4 = _safeDelegate;
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewDidChangeVisibleRegion:self];
  }

  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
  if (mEMORY[0x1E69A22E8])
  {
    v9 = mEMORY[0x1E69A22E8];
    [mEMORY[0x1E69A22E8] mapView:self viewPortUpdated:-[MKMapView _geoCoordinateRegionForOffline](self)];
    mEMORY[0x1E69A22E8] = v9;
  }
}

- (void)_updateScale
{
  scaleVisibility = self->_scaleVisibility;
  if ((scaleVisibility == 2 || !scaleVisibility && (*(&self->_flags + 2) & 0x40) != 0) && self->_scaleVisible)
  {
    [(MKMapView *)self bounds];
    [(MKMapView *)self _distanceFromPoint:self toPoint:1 fromView:1.0 withPrecision:1.0, CGRectGetMaxX(v7) + -1.0, 1.0];
    if (v4 > 0.0)
    {
      scaleView = self->_scaleView;

      [(MKScaleView *)scaleView setDistanceInMeters:?];
    }
  }
}

- (void)_postDidChangeZoomNotificationIfNeeded
{
  if (self->_zoomUpdateNotificationObserversCount)
  {
    pitchButton3DMinimumZoomLevel = self->_pitchButton3DMinimumZoomLevel;
    [(MKMapView *)self _zoomLevel];
    lastNotifiedZoomSize = self->_lastNotifiedZoomSize;
    v6 = lastNotifiedZoomSize >= pitchButton3DMinimumZoomLevel || v4 <= pitchButton3DMinimumZoomLevel;
    if (!v6 || (lastNotifiedZoomSize > pitchButton3DMinimumZoomLevel ? (v7 = v4 < pitchButton3DMinimumZoomLevel) : (v7 = 0), v7))
    {
      self->_lastNotifiedZoomSize = v4;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MKMapViewDidChangeZoomNotification" object:self];
    }
  }
}

- (double)_geoCoordinateRegionForOffline
{
  if (!self)
  {
    return 0.0;
  }

  if (self[1408] == 1 && ([self _mapLayer], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "mapRegionIgnoringEdgeInsets"), v3 = objc_claimAutoreleasedReturnValue(), v2, v3))
  {
    GEOMapRectForMapRegion();
    GEOCoordinateRegionForMapRect();
    v5 = v4;
  }

  else
  {
    [self visibleMapRect];
    *&v5 = MKCoordinateRegionForMapRect(v7);
  }

  return v5;
}

- (void)_updateRotationAttributes
{
  if ([(MKMapView *)self _updateRotationSupported])
  {

    [(MKMapView *)self _updateContentBounds];
  }
}

- (BOOL)_updateRotationSupported
{
  isHeadingServicesAvailable = [(MKLocationManager *)self->_locationManager isHeadingServicesAvailable];
  if (isHeadingServicesAvailable)
  {
    _rotationPossible = [(MKMapView *)self _rotationPossible];
    v5 = _rotationPossible ^ ((*&self->_flags & 0x1000) == 0);
    if ((v5 & 1) == 0)
    {
      v6 = 4096;
      if (!_rotationPossible)
      {
        v6 = 0;
      }

      *&self->_flags = *&self->_flags & 0xFFFFFFFFFFFFEFFFLL | v6;
      if (!_rotationPossible && [(MKMapView *)self userTrackingMode]== MKUserTrackingModeFollowWithHeading)
      {
        [(MKMapView *)self setUserTrackingMode:1];
      }
    }

    LOBYTE(isHeadingServicesAvailable) = v5 ^ 1;
  }

  return isHeadingServicesAvailable;
}

- (BOOL)_rotationPossible
{
  isAuthorizedForPreciseLocation = [(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation];
  if (isAuthorizedForPreciseLocation)
  {
    mapView = self->_mapView;

    LOBYTE(isAuthorizedForPreciseLocation) = [(VKMapView *)mapView canRotate];
  }

  return isAuthorizedForPreciseLocation;
}

- (void)_clearFixedUserLocation
{
  if ((*(&self->_flags + 1) & 4) == 0)
  {
    [(MKUserLocation *)self->_userLocation setFixedLocation:0];
  }
}

- (void)_resumeUserInteraction
{
  userInteractionDisabledCount = self->_userInteractionDisabledCount;
  if (userInteractionDisabledCount)
  {
    v4 = userInteractionDisabledCount - 1;
    self->_userInteractionDisabledCount = v4;
    [(UIView *)self->_contentView setUserInteractionEnabled:v4 == 0];

    [(MKMapView *)self _updateScrollingAndGestures];
  }
}

- (void)_updateContentBounds
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView setBounds:?];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMidY(v15);
  [(UIView *)self->_contentView setCenter:MKIntegralCenterForView(self->_contentView, MidX)];
  [(MKBasicMapView *)self->_basicMapView setFrame:v4, v6, v8, v10];
  [(MKBasicMapView *)self->_basicMapView layoutIfNeeded];
  annotationContainer = self->_annotationContainer;

  [(MKAnnotationContainerView *)annotationContainer setFrame:v4, v6, v8, v10];
}

- ($F9C4767691F2EDF2F3162F5FE7B1523A)_cartographicConfiguration
{
  v3 = *&self[18].var6;
  *&retstr->var0 = *&self[18].var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[19].var1;
  *&retstr->var6 = self[19].var3;
  return self;
}

- (BOOL)isPitchEnabled
{
  if ((*(&self->_flags + 4) & 1) == 0)
  {
    return 0;
  }

  mapView = self->_mapView;
  if (mapView)
  {
    return [(VKMapView *)mapView isPitchable];
  }

  else
  {
    return 1;
  }
}

- (void)_updateAttribution
{
  if ((*(&self->_flags + 3) & 8) != 0 && ([MEMORY[0x1E69A2478] modernManager], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "activeTileGroup"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "attributionsCount"), v4, v3, v5) && (+[MKMapAttributionImage badgeImageForView:](MKMapAttributionImage, "badgeImageForView:", self), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    attributionBadgeView = self->_attributionBadgeView;
    if (!attributionBadgeView)
    {
      v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [v7 size];
      v11 = v10;
      [v7 size];
      v13 = [v9 initWithFrame:{0.0, 0.0, v11, v12}];
      v14 = self->_attributionBadgeView;
      self->_attributionBadgeView = v13;

      [(UIImageView *)self->_attributionBadgeView setAutoresizingMask:9];
      [(MKMapView *)self addSubview:self->_attributionBadgeView];
      attributionBadgeView = self->_attributionBadgeView;
    }

    [(UIImageView *)attributionBadgeView setImage:v7];
    [(MKMapView *)self _updateAppleLogoVisibility];
  }

  else
  {
    v15 = self->_attributionBadgeView;
    [(UIImageView *)v15 removeFromSuperview];
    v16 = self->_attributionBadgeView;
    self->_attributionBadgeView = 0;

    if (v15)
    {
      [(MKMapView *)self _updateAppleLogoVisibility];
    }
  }

  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  attributionsCount = [activeTileGroup attributionsCount];

  if (attributionsCount)
  {
    modernManager2 = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup2 = [modernManager2 activeTileGroup];
    v27 = [activeTileGroup2 attributionAtIndex:0];
  }

  else
  {
    v27 = 0;
  }

  if ((*(&self->_flags + 3) & 2) != 0 && ([v27 url], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v23))
  {
    if (!self->_attributionLabel)
    {
      v24 = objc_alloc_init(MKAttributionLabel);
      attributionLabel = self->_attributionLabel;
      self->_attributionLabel = v24;

      [(MKAttributionLabel *)self->_attributionLabel setMapType:[(MKMapView *)self mapType]];
      [(MKAttributionLabel *)self->_attributionLabel setDisplayStyle:self->_attributionLinkDisplayStyle];
      [(MKAttributionLabel *)self->_attributionLabel setUserInteractionEnabled:0];
      [(MKAttributionLabel *)self->_attributionLabel sizeToFit];
      [(MKMapView *)self addSubview:self->_attributionLabel];
    }
  }

  else
  {
    [(MKAttributionLabel *)self->_attributionLabel removeFromSuperview];
    v26 = self->_attributionLabel;
    self->_attributionLabel = 0;
  }

  [(MKMapView *)self _layoutAttribution];
}

- (BOOL)effectsEnabled
{
  if (self->_suspendedEffectsCount)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (*&self->_flags >> 4) & 1;
  }

  return v2;
}

- (void)_postDidUpdateYawNotification
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (self->_compassUpdateNotificationObserversCount)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7[0] = @"MKMapViewDidUpdateYawDegreesKey";
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastYaw];
    v7[1] = @"MKMapViewDidUpdateYawVisibleKey";
    v8[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_lastPossiblyVisible];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [defaultCenter postNotificationName:@"MKMapViewDidUpdateYawNotification" object:self userInfo:v6];
  }
}

- (BOOL)_shouldSupportAlwaysShowHeadingIndicator
{
  v2 = +[MKSystemController sharedInstance];
  supportsAlwaysOnCompass = [v2 supportsAlwaysOnCompass];

  return supportsAlwaysOnCompass;
}

- (void)_updateShowHeadingIndicator
{
  _showHeadingIndicator = [(MKMapView *)self _showHeadingIndicator];
  window = [(MKMapView *)self window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  window2 = [(MKMapView *)self window];

  if (window2 && activationState <= 1 && ([(MKMapView *)self _alwaysShowHeadingIndicator]|| [(MKMapView *)self _showHeadingIndicatorForStepping]|| self->_userTrackingMode == 2) && [(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation])
  {
    isHeadingServicesAvailable = [(MKLocationManager *)self->_locationManager isHeadingServicesAvailable];
    [(MKMapView *)self _setShowHeadingIndicator:isHeadingServicesAvailable];
    if (!_showHeadingIndicator && isHeadingServicesAvailable)
    {
      [(MKMapView *)self _updateHeadingOrientation];
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      [currentDevice beginGeneratingDeviceOrientationNotifications];
      goto LABEL_13;
    }
  }

  else
  {
    [(MKMapView *)self _setShowHeadingIndicator:0];
    LOBYTE(isHeadingServicesAvailable) = 0;
  }

  if (isHeadingServicesAvailable || !_showHeadingIndicator)
  {
    return;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];
LABEL_13:
}

- (void)startUpdatingUserLocation
{
  userLocation = self->_userLocation;
  if (!userLocation)
  {
    selfCopy = self;
    v5 = objc_alloc_init(MKUserLocation);
    v6 = selfCopy->_userLocation;
    selfCopy->_userLocation = v5;

    userLocation = selfCopy->_userLocation;
  }

  v7 = userLocation;
  isUpdating = [(MKUserLocation *)v7 isUpdating];

  if (!isUpdating)
  {
    v9 = self->_userLocation;
    if (!v9)
    {
      selfCopy2 = self;
      v11 = objc_alloc_init(MKUserLocation);
      v12 = selfCopy2->_userLocation;
      selfCopy2->_userLocation = v11;

      v9 = selfCopy2->_userLocation;
    }

    v13 = v9;
    [(MKUserLocation *)v13 setUpdating:1];

    [(MKLocationManager *)self->_locationManager startLocationUpdateWithObserver:self];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_locationManagerApprovalDidChange_ name:MKLocationManagerApprovalDidChangeNotification object:0];

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v16 = _safeDelegate;
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v19 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapViewWillStartLocatingUser:self];
    }
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MKMapView;
  [(MKMapView *)&v3 didMoveToSuperview];
  [(MKMapView *)self updateLayoutGuides];
}

- (void)updateLayoutGuides
{
  [(MKMapView *)self _clearLayoutGuides];
  if ((*(&self->_flags + 7) & 4) != 0)
  {
    _mapkit_findNearestViewController = [(UIView *)self _mapkit_findNearestViewController];
    if (_mapkit_findNearestViewController)
    {
      v8 = _mapkit_findNearestViewController;
      topLayoutGuide = [_mapkit_findNearestViewController topLayoutGuide];
      topLayoutGuide = self->_topLayoutGuide;
      self->_topLayoutGuide = topLayoutGuide;

      bottomLayoutGuide = [v8 bottomLayoutGuide];
      bottomLayoutGuide = self->_bottomLayoutGuide;
      self->_bottomLayoutGuide = bottomLayoutGuide;

      [self->_topLayoutGuide addObserver:self forKeyPath:@"bounds" options:0 context:0];
      [self->_bottomLayoutGuide addObserver:self forKeyPath:@"bounds" options:0 context:0];
      _mapkit_findNearestViewController = v8;
    }
  }
}

- (void)_clearLayoutGuides
{
  if ((*(&self->_flags + 7) & 4) != 0)
  {
    [self->_topLayoutGuide removeObserver:self forKeyPath:@"bounds"];
    [self->_bottomLayoutGuide removeObserver:self forKeyPath:@"bounds"];
    topLayoutGuide = self->_topLayoutGuide;
    self->_topLayoutGuide = 0;

    bottomLayoutGuide = self->_bottomLayoutGuide;
    self->_bottomLayoutGuide = 0;
  }
}

- (NSArray)annotations
{
  annotations = [(MKAnnotationManager *)self->_annotationManager annotations];
  v3 = _filterLabelMarkersPredicate();
  v4 = [annotations filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)_startEffects
{
  suspendedEffectsCount = self->_suspendedEffectsCount;
  if (suspendedEffectsCount)
  {
    self->_suspendedEffectsCount = suspendedEffectsCount - 1;
    [(MKMapView *)self _updateEffects];
  }
}

- (void)_unregisterSceneLifecycleNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE360] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69DEA28] object:0];
}

- (void)_forceManifestUpdateIfNecessary
{
  if (_forceManifestUpdateIfNecessary_once != -1)
  {
    dispatch_once(&_forceManifestUpdateIfNecessary_once, &__block_literal_global_254);
  }
}

void __44__MKMapView__forceManifestUpdateIfNecessary__block_invoke()
{
  if ((GEOConfigGetBOOL() & 1) != 0 || ([MEMORY[0x1E696AAE8] mainBundle], v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "bundleIdentifier"), v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "isEqualToString:", @"com.apple.Maps"), v1, v0, v2) && GEOConfigGetBOOL())
  {
    v3 = dispatch_get_global_queue(17, 0);
    dispatch_async(v3, &__block_literal_global_256);
  }
}

- (void)_geoapLogMapViewEngagementIfRequired
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_geoapShouldLogEngagement & 1) == 0 && _onscreenMapViews >= 1)
  {
    _geoapShouldLogEngagement = 1;
    myAppType = [MEMORY[0x1E69A15A8] myAppType];
    v3 = myAppType;
    if (myAppType > 1)
    {
      if (myAppType == 2)
      {
        [MEMORY[0x1E69A1598] captureMapsEngagementWithUser_mapsUseLastDate:0];
        v4 = 493;
        goto LABEL_14;
      }

      if (myAppType == 3)
      {
        v4 = 494;
        goto LABEL_14;
      }
    }

    else
    {
      if (!myAppType)
      {
        v4 = 491;
        goto LABEL_14;
      }

      if (myAppType == 1)
      {
        [MEMORY[0x1E69A1598] captureMapsEngagementWithUser_mapsUseLastDate:0];
        v4 = 492;
LABEL_14:
        v5 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__MKMapView__geoapLogMapViewEngagementIfRequired__block_invoke;
        block[3] = &__block_descriptor_36_e5_v8__0l;
        v7 = v4;
        dispatch_async(v5, block);

        return;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid app type (%d)", buf, 8u);
    }
  }
}

void __44__MKMapView__forceManifestUpdateIfNecessary__block_invoke_2()
{
  v0 = [MEMORY[0x1E69A2478] modernManager];
  [v0 updateManifest:0 completionHandler:&__block_literal_global_259];
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = MKMapView;
  [(MKMapView *)&v8 didMoveToWindow];
  window = [(MKMapView *)self window];

  if (window)
  {
    [(MKMapView *)self _registerSceneLifecycleNotifications];
    [(MKMapView *)self _updateShowHeadingIndicator];
    window2 = [(MKMapView *)self window];
    windowScene = [window2 windowScene];
    activationState = [windowScene activationState];

    if (activationState <= 1)
    {
      [(MKMapView *)self _issueDatasetCheckinCall];
    }
  }

  superview = [(UIImageView *)self->_attributionBadgeView superview];

  if (superview)
  {
    [(MKMapView *)self _updateAttribution];
  }

  [(MKMapView *)self updateLayoutGuides];
}

- (void)_registerSceneLifecycleNotifications
{
  window = [(MKMapView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:windowScene];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x1E69DE338] object:windowScene];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:windowScene];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__sceneDidFinishSuspensionSnapshot_ name:*MEMORY[0x1E69DEA28] object:windowScene];
  }
}

- (void)_startTrackingHeading
{
  if (![(MKMapView *)self _useVehicleHeading])
  {
    locationManager = self->_locationManager;

    [(MKLocationManager *)locationManager startHeadingUpdateWithObserver:self];
  }
}

- (MKUserLocation)userLocation
{
  userLocation = self->_userLocation;
  if (!userLocation)
  {
    selfCopy = self;
    v4 = objc_alloc_init(MKUserLocation);
    v5 = selfCopy->_userLocation;
    selfCopy->_userLocation = v4;

    userLocation = selfCopy->_userLocation;
  }

  return userLocation;
}

- (int64_t)_interfaceOrientation
{
  v3 = [MEMORY[0x1E69DD258] viewControllerForView:self];
  v4 = v3;
  if (v3)
  {
    interfaceOrientation = [v3 interfaceOrientation];
  }

  else
  {
    window = [(MKMapView *)self window];
    windowScene = [window windowScene];
    effectiveGeometry = [windowScene effectiveGeometry];
    interfaceOrientation = [effectiveGeometry interfaceOrientation];
  }

  return interfaceOrientation;
}

- (void)_issueDatasetCheckinCall
{
  GEOMachAbsoluteTimeGetCurrent();
  if (v2 - *&_issueDatasetCheckinCall_lastCheckinTime >= 30.0)
  {
    _issueDatasetCheckinCall_lastCheckinTime = *&v2;
    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    v4 = [mEMORY[0x1E69A2208] ticketForDatasetCheckWithTraits:0];

    [v4 submitWithHandler:&__block_literal_global_420 networkActivity:&__block_literal_global_422];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_centerMapPoint
{
  [(MKMapView *)self centerCoordinate];

  v4 = MKTilePointForCoordinate(v2, v3, 21.0);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)_mapViewHasUpdatedCamera
{
  [(VKMapView *)self->_mapView centerCoordinate];
  v13 = CLLocationCoordinate2DMake(v3, v4);
  [(VKMapView *)self->_mapView yaw];
  v6 = v5;
  [(VKMapView *)self->_mapView pitch];
  v8 = v7;
  [(VKMapView *)self->_mapView altitude];
  v10 = v9;
  CLLocationCoordinate2DGetDistanceFrom();
  if (fabs(v11) <= 0.00000011920929 && vabdd_f64(self->_oldHeading, v6) <= 0.00000011920929 && vabdd_f64(self->_oldPitch, v8) <= 0.00000011920929 && vabdd_f64(self->_oldAltitude, v10) <= 0.00000011920929)
  {
    return 0;
  }

  self->_oldCenterCoordinate = v13;
  self->_oldHeading = v6;
  self->_oldPitch = v8;
  self->_oldAltitude = v10;
  return 1;
}

uint64_t __37__MKMapView_annotationCoordinateTest__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[83] annotationCoordinateTest];
    v8 = v7;
    if (v7)
    {
      v9 = (*(v7 + 16))(v7, a2, a3);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = MKMapView;
  [(MKMapView *)&v3 safeAreaInsetsDidChange];
  [(MKMapView *)self _updateInsetsWithForce:1];
}

- (UIEdgeInsets)_compassInsets
{
  top = self->_compassInsets.top;
  left = self->_compassInsets.left;
  bottom = self->_compassInsets.bottom;
  right = self->_compassInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MKMapView;
  [(MKMapView *)&v4 layoutSubviews];
  [(MKMapView *)self _updateInsetsWithForce:1];
  scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
  if (scrollEdgeEffectViewInteraction)
  {
    [(_UIScrollEdgeEffectViewInteraction *)scrollEdgeEffectViewInteraction update];
    [(MKMapView *)self _updateLabelEdgeInsets];
    [(MKMapView *)self _updateLabelEdgeWidths];
  }
}

- (BOOL)shouldShowExternalCompass
{
  if ((*(&self->_flags + 3) & 0x20) != 0)
  {
    return 1;
  }

  [(VKMapView *)self->_mapView presentationYaw];
  v4 = v3;
  return [(MKMapView *)self userTrackingMode]== MKUserTrackingModeFollowWithHeading || fabs(v4) > 2.0;
}

- (UIEdgeInsets)_labelEdgeInsets
{
  top = self->_labelEdgeInsets.top;
  left = self->_labelEdgeInsets.left;
  bottom = self->_labelEdgeInsets.bottom;
  right = self->_labelEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_labelEdgeWidths
{
  top = self->_labelEdgeWidths.top;
  left = self->_labelEdgeWidths.left;
  bottom = self->_labelEdgeWidths.bottom;
  right = self->_labelEdgeWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_attributionInsets
{
  top = self->_attributionInsets.top;
  left = self->_attributionInsets.left;
  bottom = self->_attributionInsets.bottom;
  right = self->_attributionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)canBecomeFocused
{
  traitCollection = [(MKMapView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != 3;

  return v3;
}

- (void)_resumePropagatingEdgeInsets
{
  suspendPropagatingEdgeInsetsCount = self->_suspendPropagatingEdgeInsetsCount;
  if (suspendPropagatingEdgeInsetsCount)
  {
    v4 = suspendPropagatingEdgeInsetsCount - 1;
    self->_suspendPropagatingEdgeInsetsCount = v4;
    if (!v4)
    {
      [(MKMapView *)self _edgeInsets];
      *&v5 = v5;
      *&v6 = v6;
      *&v7 = v7;
      mapView = self->_mapView;
      *&v9 = v9;

      [(VKMapView *)mapView setEdgeInsets:v5, v6, v7, v9];
    }
  }
}

- (CGPoint)_centerPoint
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMapView *)self _edgeInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  MidY = CGRectGetMidY(v24);
  v21 = MidX;
  result.y = MidY;
  result.x = v21;
  return result;
}

- (id)delegate
{
  if (self)
  {
    selfCopy = self;
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_44594 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_44594, &__block_literal_global_18_44595);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_44596 == 1)
    {
      return selfCopy[66];
    }

    else
    {

      return [selfCopy _safeDelegate];
    }
  }

  return self;
}

- (void)_insertSubviewBelowAnnotationContainerView:(id)view
{
  annotationContainer = self->_annotationContainer;
  viewCopy = view;
  superview = [(MKAnnotationContainerView *)annotationContainer superview];
  [superview insertSubview:viewCopy belowSubview:self->_annotationContainer];
}

- (void)zoomOut:(id)out
{
  if (![(MKMapView *)self isZoomEnabled])
  {
    return;
  }

  [(MKMapGestureController *)self->_gestureController zoomOut];
  v4 = MEMORY[0x1E69A1598];
  currentMapViewTargetForAnalytics = [(MKMapView *)self currentMapViewTargetForAnalytics];
  mapRegion = [(MKMapView *)self mapRegion];
  [(MKMapView *)self _zoomLevel];
  v7 = v6;
  mapType = [(MKMapView *)self mapType];
  v9 = 1;
  if (mapType > MKMapTypeHybrid)
  {
    if (mapType <= 101)
    {
      if (mapType != MKMapTypeSatelliteFlyover)
      {
        if (mapType != MKMapTypeHybridFlyover)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

LABEL_15:
      v9 = 2;
      goto LABEL_17;
    }

    if (mapType == 102)
    {
      goto LABEL_17;
    }

    if (mapType == 104)
    {
      v9 = 4;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (mapType)
  {
    if (mapType == MKMapTypeSatellite)
    {
      goto LABEL_15;
    }

    if (mapType == MKMapTypeHybrid)
    {
LABEL_11:
      v9 = 3;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  [v4 captureUserAction:1003 target:currentMapViewTargetForAnalytics value:0 mapRegion:mapRegion zoomLevel:v9 mapType:v7];
}

- (void)zoomIn:(id)in
{
  if (![(MKMapView *)self isZoomEnabled])
  {
    return;
  }

  [(MKMapGestureController *)self->_gestureController zoomIn];
  v4 = MEMORY[0x1E69A1598];
  currentMapViewTargetForAnalytics = [(MKMapView *)self currentMapViewTargetForAnalytics];
  mapRegion = [(MKMapView *)self mapRegion];
  [(MKMapView *)self _zoomLevel];
  v7 = v6;
  mapType = [(MKMapView *)self mapType];
  v9 = 1;
  if (mapType > MKMapTypeHybrid)
  {
    if (mapType <= 101)
    {
      if (mapType != MKMapTypeSatelliteFlyover)
      {
        if (mapType != MKMapTypeHybridFlyover)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

LABEL_15:
      v9 = 2;
      goto LABEL_17;
    }

    if (mapType == 102)
    {
      goto LABEL_17;
    }

    if (mapType == 104)
    {
      v9 = 4;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (mapType)
  {
    if (mapType == MKMapTypeSatellite)
    {
      goto LABEL_15;
    }

    if (mapType == MKMapTypeHybrid)
    {
LABEL_11:
      v9 = 3;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  [v4 captureUserAction:1002 target:currentMapViewTargetForAnalytics value:0 mapRegion:mapRegion zoomLevel:v9 mapType:v7];
}

- (void)_clearGesturesAndAnimations
{
  [(MKMapGestureController *)self->_gestureController clearGestureRecognizersInFlight];
  gestureController = self->_gestureController;

  [(MKMapGestureController *)gestureController stopDynamicAnimations];
}

- (void)setVehicleState:(id)state
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  [_mapLayer setVehicleState:state.var0];
}

- (void)_stopPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(MKMapView *)self setScrollEnabled:(*&self->_flags >> 13) & 1];
  [(MKMapGestureController *)self->_gestureController setScrollEnabled:(*&self->_flags >> 13) & 1];
  [(MKBasicMapView *)self->_basicMapView convertPoint:self fromView:x, y];
  mapView = self->_mapView;

  [(VKMapView *)mapView stopPanningAtPoint:?];
}

- (void)_startPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(MKMapGestureController *)self->_gestureController setScrollEnabled:0];
  [(MKBasicMapView *)self->_basicMapView convertPoint:self fromView:x, y];
  mapView = self->_mapView;

  [(VKMapView *)mapView startPanningAtPoint:?];
}

- (void)_zoomWithAmount:(double)amount completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MKBasicMapView *)self->_basicMapView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(MKBasicMapView *)self->_basicMapView edgeInsets];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  MidY = CGRectGetMidY(v30);
  [(MKMapGestureController *)self->_gestureController startUserInteractionFromExternalGesture];
  mapView = self->_mapView;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __47__MKMapView__zoomWithAmount_completionHandler___block_invoke;
  v27[3] = &unk_1E76CDA20;
  v27[4] = self;
  v28 = handlerCopy;
  v26 = handlerCopy;
  [(VKMapView *)mapView zoom:v27 withFocusPoint:amount completionHandler:MidX, MidY];
}

uint64_t __47__MKMapView__zoomWithAmount_completionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 624) stopUserInteractionFromExternalGesture];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startLinearZoomIn:(BOOL)in
{
  inCopy = in;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"ZoomingDefault"];
  v7 = v6;

  gestureController = self->_gestureController;
  if (inCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  [(MKMapGestureController *)gestureController handleZoomArrowMask:v9 speed:v7];
}

- (void)setCameraBoundary:(MKMapCameraBoundary *)cameraBoundary animated:(BOOL)animated
{
  v4 = animated;
  v8 = cameraBoundary;
  if (![(MKMapCameraBoundary *)v8 isEqual:self->_cameraBoundary])
  {
    v6 = [(MKMapCameraBoundary *)v8 copy];
    v7 = self->_cameraBoundary;
    self->_cameraBoundary = v6;

    [(MKMapView *)self _setCameraBoundary:self->_cameraBoundary animated:v4];
    [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:10];
  }
}

- (void)setCameraZoomRange:(MKMapCameraZoomRange *)cameraZoomRange animated:(BOOL)animated
{
  v4 = animated;
  v10 = cameraZoomRange;
  v6 = [(MKMapCameraZoomRange *)v10 isEqual:self->_cameraZoomRange];
  v7 = v10;
  if (!v6)
  {
    if (v10)
    {
      v8 = [(MKMapCameraZoomRange *)v10 copy];
    }

    else
    {
      v8 = [[MKMapCameraZoomRange alloc] initWithMinCenterCoordinateDistance:-1.0 maxCenterCoordinateDistance:-1.0];
    }

    v9 = self->_cameraZoomRange;
    self->_cameraZoomRange = v8;

    [(MKMapView *)self _setCameraZoomRange:self->_cameraZoomRange animated:v4];
    [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:9];
    v7 = v10;
  }
}

- (void)setCameraZoomRange:(MKMapCameraZoomRange *)cameraZoomRange
{
  [(MKMapView *)self setCameraZoomRange:cameraZoomRange animated:0];
  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:9];
}

- (void)setCamera:(id)camera springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity
{
  cameraCopy = camera;
  [(MKMapView *)self _clearGestureRecognizers];
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__MKMapView_setCamera_springMass_springStiffness_springDamping_springVelocity___block_invoke;
    v17[3] = &unk_1E76C87B8;
    objc_copyWeak(&v19, &location);
    v18 = cameraCopy;
    [(MKMapView *)self _addSetRegionBlock:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v13 = mass;
    *&v14 = stiffness;
    *&v15 = damping;
    *&v16 = velocity;
    [(MKMapView *)self _setCamera:cameraCopy springMass:v13 springStiffness:v14 springDamping:v15 springVelocity:v16];
  }
}

void __79__MKMapView_setCamera_springMass_springStiffness_springDamping_springVelocity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setCamera:*(a1 + 32) animated:0];
}

- (void)setCamera:(id)camera duration:(double)duration springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity completionHandler:(id)handler
{
  cameraCopy = camera;
  handlerCopy = handler;
  [(MKMapView *)self _clearGestureRecognizers];
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __106__MKMapView_setCamera_duration_springMass_springStiffness_springDamping_springVelocity_completionHandler___block_invoke;
    v22[3] = &unk_1E76C87B8;
    objc_copyWeak(&v24, &location);
    v23 = cameraCopy;
    [(MKMapView *)self _addSetRegionBlock:v22];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v18 = mass;
    *&v19 = stiffness;
    *&v20 = damping;
    *&v21 = velocity;
    [(MKMapView *)self _setCamera:cameraCopy duration:handlerCopy springMass:duration springStiffness:v18 springDamping:v19 springVelocity:v20 completionHandler:v21];
  }
}

void __106__MKMapView_setCamera_duration_springMass_springStiffness_springDamping_springVelocity_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setCamera:*(a1 + 32) animated:0];
}

- (void)setCamera:(id)camera animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  cameraCopy = camera;
  handlerCopy = handler;
  [(MKMapView *)self _clearGestureRecognizers];
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MKMapView_setCamera_animated_completionHandler___block_invoke;
    v10[3] = &unk_1E76C66C8;
    objc_copyWeak(&v13, &location);
    v11 = cameraCopy;
    v12 = handlerCopy;
    [(MKMapView *)self _addSetRegionBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MKMapView *)self _setCamera:cameraCopy animated:animatedCopy completionHandler:handlerCopy];
  }
}

void __50__MKMapView_setCamera_animated_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setCamera:*(a1 + 32) animated:0 completionHandler:*(a1 + 40)];
}

- (void)setCamera:(MKMapCamera *)camera
{
  v4 = camera;
  [(MKMapView *)self _clearGestureRecognizers];
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __23__MKMapView_setCamera___block_invoke;
    v5[3] = &unk_1E76C87B8;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    [(MKMapView *)self _addSetRegionBlock:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MKMapView *)self _setCamera:v4];
  }
}

void __23__MKMapView_setCamera___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setCamera:*(a1 + 32) animated:0];
}

- (void)annotationManager:(id)manager didDeselectAnnotationRepresentation:(id)representation
{
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  if (viewRepresentation)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    annotation = [viewRepresentation annotation];
    v9 = annotation;
    if (isKindOfClass)
    {
      v10 = annotation;
      [(VKMapView *)self->_mapView deselectLabelMarker];
      selectedLabelMarkerState = self->_selectedLabelMarkerState;
      self->_selectedLabelMarkerState = 0;

      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v17 = _safeDelegate;
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v24 = _safeDelegate2;
        [(MKMapViewDelegate *)_safeDelegate2 mapView:self didDeselectLabelMarker:v10];
      }

      v25 = dispatch_time(0, 250000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__MKMapView_annotationManager_didDeselectAnnotationRepresentation___block_invoke;
      block[3] = &unk_1E76CCC28;
      block[4] = self;
      v37 = v10;
      v38 = v10;
      v26 = v10;
      dispatch_after(v25, MEMORY[0x1E69E96A0], block);

      goto LABEL_74;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      [(VKMapView *)self->_mapView deselectLabelMarker];
      v15 = self->_selectedLabelMarkerState;
      self->_selectedLabelMarkerState = 0;
    }

    if ([(MKMapView *)self _shouldCallAnnotationViewCallback:viewRepresentation])
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate3 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate3 = [(MKMapView *)self _safeDelegate];
        }

        v28 = _safeDelegate3;
      }

      else
      {
        v28 = 0;
      }

      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        if (self)
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
          {
            _safeDelegate4 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate4 = [(MKMapView *)self _safeDelegate];
          }

          v31 = _safeDelegate4;
        }

        else
        {
          v31 = 0;
        }

        [(MKMapViewDelegate *)v31 mapView:self didDeselectAnnotationView:viewRepresentation];
      }
    }

    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate5 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate5 = [(MKMapView *)self _safeDelegate];
      }

      v33 = _safeDelegate5;
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate6 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate6 = [(MKMapView *)self _safeDelegate];
        }

        v22 = _safeDelegate6;
      }

      else
      {
        v22 = 0;
      }

      annotation2 = [viewRepresentation annotation];
      [v22 mapView:self didDeselectAnnotation:annotation2];
LABEL_73:
    }
  }

  else
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate7 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate7 = [(MKMapView *)self _safeDelegate];
      }

      v20 = _safeDelegate7;
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(MKMapView *)self _labelMarkerForCustomFeatureAnnotation:representationCopy];
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate8 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate8 = [(MKMapView *)self _safeDelegate];
        }

        annotation2 = _safeDelegate8;
      }

      else
      {
        annotation2 = 0;
      }

      [annotation2 mapView:self didDeselectLabelMarker:v22];
      goto LABEL_73;
    }
  }

LABEL_74:
}

void __67__MKMapView_annotationManager_didDeselectAnnotationRepresentation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedLabelMarker];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 removeAnnotation:v5];
  }
}

- (void)annotationManager:(id)manager willDeselectAnnotationRepresentation:(id)representation
{
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  if (viewRepresentation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([viewRepresentation annotation], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass))
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate = [(MKMapView *)self _safeDelegate];
        }

        v19 = _safeDelegate;
      }

      else
      {
        v19 = 0;
      }

      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        if (self)
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
          {
            _safeDelegate2 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate2 = [(MKMapView *)self _safeDelegate];
          }

          v16 = _safeDelegate2;
        }

        else
        {
          v16 = 0;
        }

        [v16 _mapView:self willDeselectLabelMarker:representationCopy];
LABEL_58:
      }
    }

    else
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate3 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate3 = [(MKMapView *)self _safeDelegate];
        }

        v11 = _safeDelegate3;
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        if (self)
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
          {
            _safeDelegate4 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate4 = [(MKMapView *)self _safeDelegate];
          }

          v16 = _safeDelegate4;
        }

        else
        {
          v16 = 0;
        }

        [v16 _mapView:self willDeselectAnnotationView:viewRepresentation];
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate5 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate5 = [(MKMapView *)self _safeDelegate];
      }

      v14 = _safeDelegate5;
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(MKMapView *)self _labelMarkerForCustomFeatureAnnotation:representationCopy];
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate6 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate6 = [(MKMapView *)self _safeDelegate];
        }

        v18 = _safeDelegate6;
      }

      else
      {
        v18 = 0;
      }

      [(MKMapViewDelegate *)v18 _mapView:self willDeselectLabelMarker:v16];

      goto LABEL_58;
    }
  }
}

- (BOOL)annotationManager:(id)manager canSelectAnnotationRepresentation:(id)representation
{
  viewRepresentation = [representation viewRepresentation];
  if (!viewRepresentation)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  annotation = [viewRepresentation annotation];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      annotation2 = [viewRepresentation annotation];
      annotation = [annotation2 marker];

      goto LABEL_5;
    }

LABEL_6:
    isVisible = 1;
    goto LABEL_7;
  }

LABEL_5:
  isVisible = [annotation isVisible];

LABEL_7:
  return isVisible;
}

- (BOOL)annotationManager:(id)manager shouldAnimateDeselectionOfAnnotation:(id)annotation forSelectionOfAnnotation:(id)ofAnnotation
{
  annotationCopy = annotation;
  if (_MKLinkedOnOrAfterReleaseSet(2053))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)annotationManager:(id)manager didSelectAnnotationRepresentation:(id)representation
{
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  if (!viewRepresentation)
  {
    [(MKMapView *)self _addAnnotationsCustomFeatureStoreIfNeeded];
    annotation = [(MKMapView *)self _labelMarkerForCustomFeatureAnnotation:representationCopy];
    [(MKMapView *)self _selectLabelMarker:annotation animated:1];
LABEL_56:

    goto LABEL_57;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  annotation = [viewRepresentation annotation];
  if (isKindOfClass)
  {
    v8 = [MKMapViewLabelMarkerState stateForLabelMarker:annotation];
    selectedLabelMarkerState = self->_selectedLabelMarkerState;
    self->_selectedLabelMarkerState = v8;

    [(VKMapView *)self->_mapView selectLabelMarker:annotation];
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v17 = _safeDelegate;
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    annotation3 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didSelectLabelMarker:annotation];
    goto LABEL_55;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    annotation2 = [viewRepresentation annotation];
    marker = [annotation2 marker];

    v14 = [MKMapViewLabelMarkerState stateForLabelMarker:marker];
    v15 = self->_selectedLabelMarkerState;
    self->_selectedLabelMarkerState = v14;

    [(VKMapView *)self->_mapView selectLabelMarker:marker];
  }

  if ([(MKMapView *)self _shouldCallAnnotationViewCallback:viewRepresentation])
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate3 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate3 = [(MKMapView *)self _safeDelegate];
      }

      v21 = _safeDelegate3;
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate4 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate4 = [(MKMapView *)self _safeDelegate];
        }

        v24 = _safeDelegate4;
      }

      else
      {
        v24 = 0;
      }

      [(MKMapViewDelegate *)v24 mapView:self didSelectAnnotationView:viewRepresentation];
    }
  }

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate5 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate5 = [(MKMapView *)self _safeDelegate];
    }

    v26 = _safeDelegate5;
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate6 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate6 = [(MKMapView *)self _safeDelegate];
      }

      annotation = _safeDelegate6;
    }

    else
    {
      annotation = 0;
    }

    annotation3 = [viewRepresentation annotation];
    [annotation mapView:self didSelectAnnotation:annotation3];
LABEL_55:

    goto LABEL_56;
  }

LABEL_57:
}

- (id)annotationManager:(id)manager representationForAnnotation:(id)annotation
{
  managerCopy = manager;
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*&self->_flags & 0x4000000000) != 0)
    {
      v8 = off_1E76C4C28;
    }

    else
    {
      v8 = off_1E76C4BF0;
    }

    v9 = *v8;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_43;
  }

  v12 = _MKLinkedOnOrAfterReleaseSet(3852);
  featureType = [annotationCopy featureType];
  if (!featureType && !v12)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v15 = _safeDelegate;
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      goto LABEL_24;
    }

LABEL_19:
    v10 = [[_MKMapFeatureAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];
    goto LABEL_7;
  }

  if (featureType)
  {
    goto LABEL_19;
  }

LABEL_24:
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v18 = _safeDelegate2;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v21 = _safeDelegate3;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(MKMapViewDelegate *)v21 mapView:self viewForAnnotation:annotationCopy];

  if (!v22)
  {
LABEL_58:
    v9 = _MKPointOfInterestAnnotationView;
LABEL_6:
    v10 = [[v9 alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];
    [(_MKMapFeatureAnnotationView *)v10 setMapView:self];
    goto LABEL_7;
  }

LABEL_43:
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate4 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate4 = [(MKMapView *)self _safeDelegate];
    }

    v24 = _safeDelegate4;
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate5 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate5 = [(MKMapView *)self _safeDelegate];
      }

      v27 = _safeDelegate5;
    }

    else
    {
      v27 = 0;
    }

    v10 = [(MKMapViewDelegate *)v27 mapView:self viewForAnnotation:annotationCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clusteringIdentifier = [annotationCopy clusteringIdentifier];
      clusteringIdentifier2 = [(MKAnnotationView *)v10 clusteringIdentifier];
      if (clusteringIdentifier2)
      {
        v30 = clusteringIdentifier2;
        clusteringIdentifier3 = [(MKAnnotationView *)v10 clusteringIdentifier];
        v32 = [clusteringIdentifier3 isEqualToString:clusteringIdentifier];

        if ((v32 & 1) == 0)
        {
          v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"MKAnnotationView instances for cluster annotations cannot use a different clusteringIdentifier than its annotation." userInfo:0];
          objc_exception_throw(v33);
        }
      }

      [(MKAnnotationView *)v10 setClusteringIdentifier:clusteringIdentifier];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (void)annotationManager:(id)manager didAddAnnotationRepresentations:(id)representations
{
  v27 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  representationsCopy = representations;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v8 = _safeDelegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate2;
    }

    else
    {
      v11 = 0;
    }

    [(MKMapViewDelegate *)v11 mapView:self didAddAnnotationViews:representationsCopy];
  }

  [(MKAnnotationContainerView *)self->_annotationContainer dropPinsIfNeeded];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(representationsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = representationsCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          usageCounter = self->_usageCounter;
          v20 = v18;
          [v20 _setUsageCounter:usageCounter];
          [v12 addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    [(MKMapView *)self _countUsageForAnnotationViewsIfNeeded:v12];
  }
}

- (BOOL)_shouldCallAnnotationViewCallback:(id)callback
{
  callbackCopy = callback;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [callbackCopy shouldShowCallout];

  return v4;
}

- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFraction:(double)fraction ofVisible:(id)visible
{
  var1 = visible.var1.var1;
  var0 = visible.var1.var0;
  v6 = INFINITY;
  if (visible.var0.var0 == INFINITY && visible.var0.var1 == INFINITY)
  {
    v10 = INFINITY;
  }

  else
  {
    v8 = -(visible.var1.var1 * fraction);
    v9 = -(var0 * fraction);
    v10 = visible.var0.var0 + v9;
    v6 = visible.var0.var1 + v8;
    var0 = var0 - v9 * 2.0;
    var1 = visible.var1.var1 - v8 * 2.0;
  }

  v15.size.width = 268435456.0;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.height = 268435456.0;
  v11 = v10;
  v12 = var0;
  result = MKMapRectIntersection(v15, *(&v6 - 1));
  v13 = v10;
  v14 = var0;
  result.var1.var0 = v14;
  result.var0.var0 = v13;
  return result;
}

- (void)moveAnnotationRepresentation:(id)representation fromCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated duration:(double)duration
{
  viewRepresentation = [representation viewRepresentation];
  if (viewRepresentation)
  {
    v8 = viewRepresentation;
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationView:viewRepresentation];
    viewRepresentation = v8;
  }
}

- (void)deselectAnnotationRepresentation:(id)representation animated:(BOOL)animated
{
  animatedCopy = animated;
  viewRepresentation = [representation viewRepresentation];
  if (viewRepresentation)
  {
    selectAnnotationViewAfterRedrawBlock = self->_selectAnnotationViewAfterRedrawBlock;
    self->_selectAnnotationViewAfterRedrawBlock = 0;

    [(MKAnnotationContainerView *)self->_annotationContainer deselectAnnotationView:viewRepresentation animated:animatedCopy];
  }

  else
  {
    [(MKMapView *)self _addAnnotationsCustomFeatureStoreIfNeeded];
    [(MKMapView *)self _deselectLabelMarkerAnimated:animatedCopy];
  }
}

- (void)selectAnnotationRepresentation:(id)representation animated:(BOOL)animated
{
  animatedCopy = animated;
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  if (viewRepresentation)
  {
    if ((*(&self->_flags + 4) & 4) != 0)
    {
      objc_initWeak(&location, self);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53__MKMapView_selectAnnotationRepresentation_animated___block_invoke;
      v11[3] = &unk_1E76CD198;
      objc_copyWeak(&v13, &location);
      v12 = representationCopy;
      v14 = animatedCopy;
      v9 = [v11 copy];
      selectAnnotationViewAfterRedrawBlock = self->_selectAnnotationViewAfterRedrawBlock;
      self->_selectAnnotationViewAfterRedrawBlock = v9;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      [(MKAnnotationContainerView *)self->_annotationContainer selectAnnotationView:viewRepresentation animated:animatedCopy];
    }
  }

  else
  {
    [(MKMapView *)self _addAnnotationsCustomFeatureStoreIfNeeded];
    v8 = [(MKMapView *)self _labelMarkerForCustomFeatureAnnotation:representationCopy];
    [(VKMapView *)self->_mapView selectLabelMarker:v8];
  }
}

void __53__MKMapView_selectAnnotationRepresentation_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained selectAnnotationRepresentation:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)removeAnnotationRepresentation:(id)representation
{
  v13[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  if (viewRepresentation)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"MKAnnotationViewDragStateChangedNotification" object:viewRepresentation];

    userLocationView = [(MKMapView *)self userLocationView];

    if (viewRepresentation == userLocationView)
    {
      [(MKAnnotationContainerView *)self->_annotationContainer setUserLocationView:0];
      userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
      [userLocationAnimator stop];

      [viewRepresentation _setVKNavigationPuckMarker:0];
    }

    vk_mapLayer = [(MKMapView *)self vk_mapLayer];
    anchor = [viewRepresentation anchor];
    [vk_mapLayer removeExternalAnchor:anchor];

    [(MKAnnotationContainerView *)self->_annotationContainer removeAnnotationView:viewRepresentation];
  }

  else
  {
    [(MKMapView *)self _addAnnotationsCustomFeatureStoreIfNeeded];
    annotationsCustomFeatureStore = self->_annotationsCustomFeatureStore;
    v13[0] = representationCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(_MKCustomFeatureStore *)annotationsCustomFeatureStore removeAnnotations:v12];
  }
}

- (void)addAnnotationRepresentation:(id)representation allowAnimation:(BOOL)animation
{
  animationCopy = animation;
  v27[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  viewRepresentation = [representationCopy viewRepresentation];
  v8 = viewRepresentation;
  if (viewRepresentation)
  {
    annotation = [viewRepresentation annotation];
    userLocation = self->_userLocation;

    if (annotation != userLocation)
    {
LABEL_16:
      vk_mapLayer = [(MKMapView *)self vk_mapLayer];
      anchor = [v8 anchor];
      [vk_mapLayer addExternalAnchor:anchor];

      [(MKAnnotationContainerView *)self->_annotationContainer addAnnotationView:v8 allowAnimation:animationCopy];
      goto LABEL_17;
    }

    _vkNavigationPuckMarker = [v8 _vkNavigationPuckMarker];
    if (_vkNavigationPuckMarker)
    {
      v12 = _vkNavigationPuckMarker;
      _vkNavigationPuckMarker2 = [v8 _vkNavigationPuckMarker];
      navigationPuck = [(VKMapView *)self->_mapView navigationPuck];

      if (_vkNavigationPuckMarker2 != navigationPuck)
      {
        [v8 _setVKNavigationPuckMarker:0];
      }
    }

    v15 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView = v15;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = 0;
        goto LABEL_13;
      }

      _mkUserLocationView = [v15 _mkUserLocationView];
    }

    v19 = _mkUserLocationView;
LABEL_13:

    location = [(MKUserLocation *)self->_userLocation location];
    [v19 updateStateFromLocation:location duration:0.0];

    [v19 _setShowingPreciseAuthorizedLocation:{-[MKLocationManager isAuthorizedForPreciseLocation](self->_locationManager, "isAuthorizedForPreciseLocation")}];
    v21 = self->_userTrackingMode == 2;
    [v19 setShouldDisplayHeading:{-[MKMapView _showHeadingIndicator](self, "_showHeadingIndicator")}];
    [v19 setShouldDisplayInaccurateHeading:v21];
    [v19 setForcesConeIndicator:v21];
    [v19 _setForceHeadingUp:v21];
    heading = [(MKUserLocation *)self->_userLocation heading];
    v23 = heading;
    if (heading)
    {
      [heading headingAccuracy];
      [v19 setHeadingAccuracy:?];
      [v23 heading];
      [v19 setHeading:?];
    }

    [(MKAnnotationContainerView *)self->_annotationContainer setUserLocationView:v15];
    navigationPuck2 = [(VKMapView *)self->_mapView navigationPuck];
    [v15 _setVKNavigationPuckMarker:navigationPuck2];

    goto LABEL_16;
  }

  [(MKMapView *)self _addAnnotationsCustomFeatureStoreIfNeeded];
  annotationsCustomFeatureStore = self->_annotationsCustomFeatureStore;
  v27[0] = representationCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [(_MKCustomFeatureStore *)annotationsCustomFeatureStore addAnnotations:v18];

LABEL_17:
}

- (void)_addAnnotationsCustomFeatureStoreIfNeeded
{
  if (!self->_annotationsCustomFeatureStore)
  {
    v3 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
    annotationsCustomFeatureStore = self->_annotationsCustomFeatureStore;
    self->_annotationsCustomFeatureStore = v3;

    [(MKMapView *)self _setDisplayedSearchResultsType:1];
    v5 = self->_annotationsCustomFeatureStore;

    [(MKMapView *)self _addCustomFeatureDataSource:v5];
  }
}

- (void)mapLayerARSessionInterruptionEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_safeDelegate);
    [v6 mapViewARSessionInterruptionEnded:self];
  }
}

- (void)mapLayer:(id)layer puckLocationTracingEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_safeDelegate);
    [v7 mapView:self puckLocationTracingEvent:eventCopy];
  }
}

- (void)mapLayer:(id)layer arSessionWasInterrupted:(unint64_t)interrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_safeDelegate);
    [v8 mapView:self arSessionWasInterrupted:interrupted];
  }
}

- (void)mapLayer:(id)layer arTrackingStateDidChange:(unint64_t)change reason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_safeDelegate);
    [v10 mapView:self arTrackingStateDidChange:change reason:reason];
  }
}

- (void)mapLayer:(id)layer didEncounterARError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_safeDelegate);
    [v7 mapView:self didEncounterARError:errorCopy];
  }
}

- (void)mapLayerDidExitAR:(id)r
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_safeDelegate);
    [v6 mapViewDidExitAR:self];
  }
}

- (void)mapLayerDidEnterAR:(id)r
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_safeDelegate);
    [v6 mapViewDidEnterAR:self];
  }
}

- (void)mapLayerWillEnterAR:(id)r
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_safeDelegate);
    [v6 mapViewWillEnterAR:self];
  }
}

- (void)setFlyoverMode:(int)mode
{
  v3 = *&mode;
  _mapLayer = [(MKMapView *)self _mapLayer];
  [_mapLayer setFlyoverMode:v3];
}

- (void)_resumeFlyoverAnimation
{
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__MKMapView__resumeFlyoverAnimation__block_invoke;
    v4[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v5, &location);
    [(MKMapView *)self _addDependentAuxiliaryBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    vk_mapLayer = [(MKMapView *)self vk_mapLayer];
    [vk_mapLayer resumeFlyoverTourAnimation];
  }
}

void __36__MKMapView__resumeFlyoverAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeFlyoverAnimation];
}

- (void)_pauseFlyoverAnimation
{
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__MKMapView__pauseFlyoverAnimation__block_invoke;
    v4[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v5, &location);
    [(MKMapView *)self _addDependentAuxiliaryBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    vk_mapLayer = [(MKMapView *)self vk_mapLayer];
    [vk_mapLayer pauseFlyoverTourAnimation];
  }
}

void __35__MKMapView__pauseFlyoverAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pauseFlyoverAnimation];
}

- (void)_stopFlyoverAnimation
{
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __34__MKMapView__stopFlyoverAnimation__block_invoke;
    v4[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v5, &location);
    [(MKMapView *)self _addDependentAuxiliaryBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView stopFlyoverAnimation];
  }
}

void __34__MKMapView__stopFlyoverAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopFlyoverAnimation];
}

- (void)_startFlyoverTourAnimation:(unint64_t)animation duration:(double)duration completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke;
    v23[3] = &unk_1E76C6718;
    objc_copyWeak(v25, &location);
    v25[1] = animation;
    v25[2] = *&duration;
    v24 = completionCopy;
    [(MKMapView *)self _addDependentAuxiliaryBlock:v23];

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }

  else
  {
    showsUserLocation = [(MKMapView *)self showsUserLocation];
    showsCompass = [(MKMapView *)self showsCompass];
    [(MKMapView *)self setCompassEnabled:0];
    showsScale = [(MKMapView *)self showsScale];
    [(MKMapView *)self setShowsScale:0];
    [(MKMapView *)self setShowsCompass:0];
    [(MKMapView *)self setShowsUserLocation:0];
    v12 = [[MKMapItemIdentifier alloc] initWithMUID:animation];
    v13 = +[MKMapService sharedService];
    v27[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v15 = [v13 ticketForIdentifiers:v14 traits:0];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_2;
    v16[3] = &unk_1E76C6790;
    durationCopy = duration;
    v16[4] = self;
    v20 = showsCompass;
    v21 = showsScale;
    v22 = showsUserLocation;
    v17 = completionCopy;
    animationCopy = animation;
    [v15 submitWithHandler:v16 networkActivity:0];
  }
}

void __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startFlyoverTourAnimation:*(a1 + 48) duration:*(a1 + 32) completion:*(a1 + 56)];
}

void __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 664);
    v6 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_6;
    v14[3] = &unk_1E76C6740;
    v14[4] = v4;
    v16 = *(a1 + 64);
    v17 = *(a1 + 65);
    v15 = *(a1 + 40);
    [v5 startFlyoverTourAnimation:v6 animateToStart:1 completion:v14];
  }

  else
  {
    v7 = [a2 firstObject];
    if ([v7 _hasFlyover])
    {
      v8 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 664);
      v10 = [v7 _flyover];
      if (v8 <= 0.0)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_5;
        v18[3] = &unk_1E76C6740;
        v13 = *(a1 + 40);
        v18[4] = *(a1 + 32);
        v20 = *(a1 + 64);
        v21 = *(a1 + 65);
        v12 = &v19;
        v19 = v13;
        [v9 startFlyoverAnimation:v10 animateToStart:1 completion:v18];
      }

      else
      {
        v11 = *(a1 + 48);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_3;
        v22[3] = &unk_1E76C6768;
        v22[4] = *(a1 + 32);
        v12 = &v23;
        v23 = v7;
        v25 = *(a1 + 64);
        v26 = *(a1 + 65);
        v24 = *(a1 + 40);
        [v9 moveToFlyoverTourStartPosition:v10 duration:v22 completion:v11];

        v10 = v24;
      }
    }
  }
}

void __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 664);
  v3 = [*(a1 + 40) _flyover];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_4;
  v4[3] = &unk_1E76C6740;
  v4[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v5 = *(a1 + 48);
  [v2 startFlyoverAnimation:v3 animateToStart:0 completion:v4];
}

uint64_t __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setCompassEnabled:*(a1 + 48)];
  [*(a1 + 32) setShowsScale:*(a1 + 49)];
  [*(a1 + 32) setShowsCompass:*(a1 + 48)];
  [*(a1 + 32) setShowsUserLocation:*(a1 + 50)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setCompassEnabled:*(a1 + 48)];
  [*(a1 + 32) setShowsScale:*(a1 + 49)];
  [*(a1 + 32) setShowsCompass:*(a1 + 48)];
  [*(a1 + 32) setShowsUserLocation:*(a1 + 50)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __60__MKMapView__startFlyoverTourAnimation_duration_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCompassEnabled:*(a1 + 48)];
  [*(a1 + 32) setShowsScale:*(a1 + 49)];
  [*(a1 + 32) setShowsCompass:*(a1 + 48)];
  [*(a1 + 32) setShowsUserLocation:*(a1 + 50)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_performFlyoverAnimation:(id)animation animateToStart:(BOOL)start
{
  startCopy = start;
  animationCopy = animation;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__MKMapView__performFlyoverAnimation_animateToStart___block_invoke;
    v15[3] = &unk_1E76CD198;
    objc_copyWeak(&v17, &location);
    v16 = animationCopy;
    v18 = startCopy;
    [(MKMapView *)self _addDependentAuxiliaryBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    showsUserLocation = [(MKMapView *)self showsUserLocation];
    isCompassEnabled = [(MKMapView *)self isCompassEnabled];
    [(MKMapView *)self setCompassEnabled:0];
    showsScale = [(MKMapView *)self showsScale];
    [(MKMapView *)self setShowsScale:0];
    [(MKMapView *)self setShowsCompass:0];
    [(MKMapView *)self setShowsUserLocation:0];
    mapView = self->_mapView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__MKMapView__performFlyoverAnimation_animateToStart___block_invoke_2;
    v11[3] = &unk_1E76C66F0;
    v11[4] = self;
    v12 = isCompassEnabled;
    v13 = showsScale;
    v14 = showsUserLocation;
    [(VKMapView *)mapView startFlyoverAnimation:animationCopy animateToStart:startCopy completion:v11];
  }
}

void __53__MKMapView__performFlyoverAnimation_animateToStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performFlyoverAnimation:*(a1 + 32) animateToStart:*(a1 + 48)];
}

uint64_t __53__MKMapView__performFlyoverAnimation_animateToStart___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCompassEnabled:*(a1 + 40)];
  [*(a1 + 32) setShowsScale:*(a1 + 41)];
  [*(a1 + 32) setShowsCompass:*(a1 + 40)];
  v2 = *(a1 + 42);
  v3 = *(a1 + 32);

  return [v3 setShowsUserLocation:v2];
}

- (void)_prepareFlyoverAnimation:(id)animation completion:(id)completion
{
  animationCopy = animation;
  completionCopy = completion;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__MKMapView__prepareFlyoverAnimation_completion___block_invoke;
    v8[3] = &unk_1E76C66C8;
    objc_copyWeak(&v11, &location);
    v9 = animationCopy;
    v10 = completionCopy;
    [(MKMapView *)self _addDependentAuxiliaryBlock:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VKMapView *)self->_mapView prepareFlyoverAnimation:animationCopy completion:completionCopy];
  }
}

void __49__MKMapView__prepareFlyoverAnimation_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _prepareFlyoverAnimation:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)requestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location
{
  mapView = self->_mapView;
  VKLocationCoordinate2DMake();

  [(VKMapView *)mapView requestHikingToolTipRegionIDForLocation:?];
}

- (signed)defaultFloorForBuildingsInVenue:(id)venue
{
  buildings = [venue buildings];
  firstObject = [buildings firstObject];

  if (firstObject)
  {
    v6 = [(VKMapView *)self->_mapView defaultFloorOrdinalForVenueBuilding:firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)displayedFloorIsDefaultForBuildingsInVenue:(id)venue
{
  buildings = [venue buildings];
  firstObject = [buildings firstObject];

  if (firstObject)
  {
    v6 = [(VKMapView *)self->_mapView displayedFloorIsDefaultForVenueBuilding:firstObject];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (signed)displayedFloorOrdinalForBuildingsInVenue:(id)venue
{
  buildings = [venue buildings];
  firstObject = [buildings firstObject];

  if (firstObject)
  {
    v6 = [(VKMapView *)self->_mapView displayedFloorOrdinalForVenueBuilding:firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)resetDisplayedFloorOrdinalForAllVenues
{
  v36 = *MEMORY[0x1E69E9840];
  clearVenueBuildingFloorSelections = [(VKMapView *)self->_mapView clearVenueBuildingFloorSelections];
  if ([clearVenueBuildingFloorSelections count])
  {
    v4 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = clearVenueBuildingFloorSelections;
    v5 = clearVenueBuildingFloorSelections;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v30 + 1) + 8 * i), "venueID", v24)}];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          unsignedLongLongValue = [*(*(&v26 + 1) + 8 * v14) unsignedLongLongValue];
          v16 = [(VKMapView *)self->_mapView venueWithID:unsignedLongLongValue];
          if (v16)
          {
            v17 = [(MKMapView *)self displayedFloorOrdinalForBuildingsInVenue:v16];
            v18 = v17;
            if (unsignedLongLongValue == self->_cachedVenueIDWithFocus)
            {
              self->_cachedDisplayedFloorOrdinalForVenueWithFocus = v17;
            }

            if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
            {
              dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
            }

            if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
            {
              _safeDelegate = self->_unsafeDelegate;
            }

            else
            {
              _safeDelegate = [(MKMapView *)self _safeDelegate];
            }

            v20 = _safeDelegate;
            v21 = objc_opt_respondsToSelector();

            if (v21)
            {
              if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
              {
                dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
              }

              if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
              {
                _safeDelegate2 = self->_unsafeDelegate;
              }

              else
              {
                _safeDelegate2 = [(MKMapView *)self _safeDelegate];
              }

              v23 = _safeDelegate2;
              [(MKMapViewDelegate *)_safeDelegate2 mapView:self didChangeDisplayedFloorOrdinal:v18 forVenue:v16];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v12);
    }

    clearVenueBuildingFloorSelections = v24;
  }
}

- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal forBuildingsInVenue:(id)venue
{
  ordinalCopy = ordinal;
  v23 = *MEMORY[0x1E69E9840];
  venueCopy = venue;
  if ([venueCopy venueID] == self->_cachedVenueIDWithFocus)
  {
    self->_cachedDisplayedFloorOrdinalForVenueWithFocus = ordinalCopy;
  }

  v7 = [(MKMapView *)self displayedFloorOrdinalForBuildingsInVenue:venueCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  buildings = [venueCopy buildings];
  v9 = [buildings countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(buildings);
        }

        [(VKMapView *)self->_mapView setDisplayedFloorOrdinal:ordinalCopy forVenueBuilding:*(*(&v18 + 1) + 8 * i)];
      }

      v10 = [buildings countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if (v7 != ordinalCopy)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v14 = _safeDelegate;
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v17 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didChangeDisplayedFloorOrdinal:ordinalCopy forVenue:venueCopy];
    }
  }
}

- (double)zoomToFocusVenueBuilding:(id)building
{
  [(VKMapView *)self->_mapView zoomToRevealVenueBuildingFloorplan:building];
  v5 = v4;

  [(MKMapView *)self _mapKitZoomLevelForVectorKitTileZoomLevel:v5];
  return result;
}

- (double)zoomToFocusVenue:(id)venue
{
  [(VKMapView *)self->_mapView zoomToRevealVenueFloorplan:venue];
  v5 = v4;

  [(MKMapView *)self _mapKitZoomLevelForVectorKitTileZoomLevel:v5];
  return result;
}

- (void)setDimmingOutsideVenueWithFocus:(BOOL)focus
{
  focusCopy = focus;
  if ([(VKMapView *)self->_mapView isDimmingBaseMap]!= focus)
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView setDimmingBaseMap:focusCopy];
  }
}

- (void)_setEdgeInsets:(UIEdgeInsets)insets explicit:(BOOL)explicit
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v9 = 0x1000000;
  if (explicit)
  {
    v9 = 0x10001000000;
  }

  *&self->_flags = v9 | *&self->_flags & 0xFFFFFEFFFEFFFFFFLL;
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
  v15 = _mapkit_shouldAdoptImplicitAnimationParameters;
  if (!self->_suspendPropagatingEdgeInsetsCount)
  {
    if (_mapkit_shouldAdoptImplicitAnimationParameters)
    {
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      v36 = v16;
      _mapkit_currentAnimationTimingFunction = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
      layer = [(MKMapView *)self layer];
      v19 = MEMORY[0x1E696AD98];
      layer2 = [(MKMapView *)self layer];
      v21 = [layer2 valueForKey:@"__mapkit_edgeInsetsSentinel"];
      v22 = [v19 numberWithInteger:{objc_msgSend(v21, "integerValue") ^ 1}];
      [layer setValue:v22 forKey:@"__mapkit_edgeInsetsSentinel"];

      objc_initWeak(&location, self);
      mapView = self->_mapView;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __37__MKMapView__setEdgeInsets_explicit___block_invoke;
      v37[3] = &unk_1E76C66A0;
      objc_copyWeak(&v38, &location);
      *&v24 = top;
      *&v25 = left;
      *&v26 = bottom;
      *&v27 = right;
      [(VKMapView *)mapView setEdgeInsets:_mapkit_currentAnimationTimingFunction duration:v37 timingFunction:v24 completionHandler:v25, v26, v27, v36];
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    else
    {
      *&v11 = top;
      *&v12 = left;
      *&v13 = bottom;
      *&v14 = right;
      [(VKMapView *)self->_mapView setEdgeInsets:v11, v12, v13, v14];
    }
  }

  v28 = self->_edgeInsets.left == left;
  if (self->_edgeInsets.top != top)
  {
    v28 = 0;
  }

  if (self->_edgeInsets.right != right)
  {
    v28 = 0;
  }

  v29 = self->_edgeInsets.bottom == bottom && v28;
  self->_edgeInsets.top = top;
  self->_edgeInsets.left = left;
  self->_edgeInsets.bottom = bottom;
  self->_edgeInsets.right = right;
  [(NSLayoutConstraint *)self->_edgeInsetsTopConstraint setConstant:top];
  [(NSLayoutConstraint *)self->_edgeInsetsLeftConstraint setConstant:left];
  [(NSLayoutConstraint *)self->_edgeInsetsRightConstraint setConstant:-right];
  [(NSLayoutConstraint *)self->_edgeInsetsBottomConstraint setConstant:-bottom];
  debugLocationConsole = self->_debugLocationConsole;
  [(MKMapView *)self _edgeInsets];
  [(MKDebugLocationConsole *)debugLocationConsole updateFrameWithEdgeInsets:?];
  [(MKMapView *)self _updateVectorKitConsoleFrameWithEdgeInsets];
  [(MKMapView *)self _updateCompassVisibility];
  [(MKMapView *)self _updateTrackingVisibility];
  [(MKMapView *)self _updatePitchButtonVisibility];
  [(MKMapView *)self _updateAppleLogoVisibility];
  [(MKMapView *)self _showOrHideScaleIfNecessary:1];
  [(MKMapView *)self _updateScalePosition];
  [(MKMapView *)self _currentEnvironmentNameFrame];
  [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel setFrame:?];
  [(MKMapView *)self _updateControlsPosition:0];
  [(MKMapView *)self _layoutAttribution];
  [(MKAnnotationContainerView *)self->_annotationContainer visibleCenteringRectChanged];
  if (!v15 || self->_suspendPropagatingEdgeInsetsCount)
  {
    *&self->_flags &= ~0x1000000uLL;
  }

  if (!v29)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v32 = _safeDelegate;
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v35 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapViewDidChangeEdgeInsets:self];
    }
  }
}

void __37__MKMapView__setEdgeInsets_explicit___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      WeakRetained[122] &= ~0x1000000uLL;
      if (*(WeakRetained + 1113) == 1)
      {
        *(WeakRetained + 1113) = 0;
        v4 = WeakRetained;
        [WeakRetained _updateInsetsWithForce:0];
        WeakRetained = v4;
      }
    }
  }
}

- (UILayoutGuide)_edgeInsetsLayoutGuide
{
  v27[4] = *MEMORY[0x1E69E9840];
  edgeInsetsGuide = self->_edgeInsetsGuide;
  if (!edgeInsetsGuide)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v5 = self->_edgeInsetsGuide;
    self->_edgeInsetsGuide = v4;

    [(UILayoutGuide *)self->_edgeInsetsGuide setIdentifier:@"Edge Insets"];
    topAnchor = [(UILayoutGuide *)self->_edgeInsetsGuide topAnchor];
    topAnchor2 = [(MKMapView *)self topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_edgeInsets.top];
    edgeInsetsTopConstraint = self->_edgeInsetsTopConstraint;
    self->_edgeInsetsTopConstraint = v8;

    leftAnchor = [(UILayoutGuide *)self->_edgeInsetsGuide leftAnchor];
    leftAnchor2 = [(MKMapView *)self leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:self->_edgeInsets.left];
    edgeInsetsLeftConstraint = self->_edgeInsetsLeftConstraint;
    self->_edgeInsetsLeftConstraint = v12;

    rightAnchor = [(UILayoutGuide *)self->_edgeInsetsGuide rightAnchor];
    rightAnchor2 = [(MKMapView *)self rightAnchor];
    v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-self->_edgeInsets.right];
    edgeInsetsRightConstraint = self->_edgeInsetsRightConstraint;
    self->_edgeInsetsRightConstraint = v16;

    bottomAnchor = [(UILayoutGuide *)self->_edgeInsetsGuide bottomAnchor];
    bottomAnchor2 = [(MKMapView *)self bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_edgeInsets.bottom];
    edgeInsetsBottomConstraint = self->_edgeInsetsBottomConstraint;
    self->_edgeInsetsBottomConstraint = v20;

    [(UIView *)self->_contentView addLayoutGuide:self->_edgeInsetsGuide];
    v22 = MEMORY[0x1E696ACD8];
    v23 = self->_edgeInsetsLeftConstraint;
    v27[0] = self->_edgeInsetsTopConstraint;
    v27[1] = v23;
    v24 = self->_edgeInsetsBottomConstraint;
    v27[2] = self->_edgeInsetsRightConstraint;
    v27[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v22 activateConstraints:v25];

    edgeInsetsGuide = self->_edgeInsetsGuide;
  }

  return edgeInsetsGuide;
}

- (UIEdgeInsets)_labelEdgeWidthsForScrollEdgeEffectInsets:(UIEdgeInsets)insets
{
  v3 = fmin(insets.top, 20.0);
  v4 = fmin(insets.left, 20.0);
  v5 = fmin(insets.bottom, 20.0);
  v6 = fmin(insets.right, 20.0);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_updateLabelEdgeWidths
{
  v36 = *MEMORY[0x1E69E9840];
  [(VKMapView *)self->_mapView labelEdgeWidths];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
  if (scrollEdgeEffectViewInteraction)
  {
    [(_UIScrollEdgeEffectViewInteraction *)scrollEdgeEffectViewInteraction effectInsets];
    [(MKMapView *)self _labelEdgeWidthsForScrollEdgeEffectInsets:?];
    UIEdgeInsetsMax();
    top = v12;
    left = v14;
    bottom = v16;
    right = v18;
  }

  else
  {
    top = self->_labelEdgeWidths.top;
    left = self->_labelEdgeWidths.left;
    bottom = self->_labelEdgeWidths.bottom;
    right = self->_labelEdgeWidths.right;
  }

  if (left != v6 || top != v4 || right != v10 || bottom != v8)
  {
    v23 = MKGetMKMapViewLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = 134349824;
      v29 = top;
      v30 = 2050;
      v31 = left;
      v32 = 2050;
      v33 = bottom;
      v34 = 2050;
      v35 = right;
      _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_DEBUG, "Updating label edge widths: %{public}.1f %{public}.1f %{public}.1f %{public}.1f", &v28, 0x2Au);
    }

    *&v24 = top;
    *&v25 = left;
    *&v26 = bottom;
    *&v27 = right;
    [(VKMapView *)self->_mapView setLabelEdgeWidths:v24, v25, v26, v27];
  }
}

- (void)_updateLabelEdgeInsets
{
  v36 = *MEMORY[0x1E69E9840];
  [(VKMapView *)self->_mapView labelEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
  if (scrollEdgeEffectViewInteraction)
  {
    [(_UIScrollEdgeEffectViewInteraction *)scrollEdgeEffectViewInteraction effectInsets];
    UIEdgeInsetsMax();
    top = v12;
    left = v14;
    bottom = v16;
    right = v18;
  }

  else
  {
    top = self->_labelEdgeInsets.top;
    left = self->_labelEdgeInsets.left;
    bottom = self->_labelEdgeInsets.bottom;
    right = self->_labelEdgeInsets.right;
  }

  if (left != v6 || top != v4 || right != v10 || bottom != v8)
  {
    v23 = MKGetMKMapViewLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = 134349824;
      v29 = top;
      v30 = 2050;
      v31 = left;
      v32 = 2050;
      v33 = bottom;
      v34 = 2050;
      v35 = right;
      _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_DEBUG, "Updating label edge insets: %{public}.1f %{public}.1f %{public}.1f %{public}.1f", &v28, 0x2Au);
    }

    *&v24 = top;
    *&v25 = left;
    *&v26 = bottom;
    *&v27 = right;
    [(VKMapView *)self->_mapView setLabelEdgeInsets:v24, v25, v26, v27];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"bounds"])
  {
    [(MKMapView *)self _updateInsetsWithForce:1];
  }

  else if (MKMapConfigurationKVOContext == context)
  {
    [(MKMapView *)self _setPreferredConfiguration:self->_preferredConfiguration onInit:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MKMapView;
    [(MKMapView *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = MKMapView;
  [(MKMapView *)&v4 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
  *(&self->_flags + 9) = 1;
}

- (void)_updateInsetsWithForce:(BOOL)force
{
  if (!force && (*(&self->_flags + 3) & 1) != 0)
  {
    self->_hasPendingEdgeInsetsChange = 1;
  }

  else
  {
    [(MKMapView *)self _updateInsets];
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(double)level animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__MKMapView_setCenterCoordinate_zoomLevel_animated___block_invoke;
    v20[3] = &unk_1E76C6678;
    objc_copyWeak(v21, &location);
    v21[1] = *&latitude;
    v21[2] = *&longitude;
    v21[3] = *&level;
    v22 = animatedCopy;
    [(MKMapView *)self _addSetRegionBlock:v20];
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = [(MKMapView *)self _mapRegionWithCenterCoordinate:latitude zoomScale:longitude, (1.0 / exp2(21.0 - level))];
    v10 = 0.0;
    if (animatedCopy)
    {
      vk_mapLayer = [(MKMapView *)self vk_mapLayer];
      [vk_mapLayer durationToAnimateToMapRegion:v19];
      v10 = v12;
    }

    vk_mapLayer2 = [(MKMapView *)self vk_mapLayer];
    vk_mapLayer3 = [(MKMapView *)self vk_mapLayer];
    [vk_mapLayer3 pitch];
    v16 = v15;
    vk_mapLayer4 = [(MKMapView *)self vk_mapLayer];
    [vk_mapLayer4 yaw];
    [vk_mapLayer2 setMapRegion:v19 pitch:0 yaw:v16 duration:v18 completion:v10];
  }
}

void __52__MKMapView_setCenterCoordinate_zoomLevel_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCenterCoordinate:*(a1 + 64) zoomLevel:*(a1 + 40) animated:{*(a1 + 48), *(a1 + 56)}];
}

- (double)_goToCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(double)level animated:(BOOL)animated
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  [(MKMapView *)self centerCoordinate];
  v11 = v10;
  v13 = v12;
  [(MKMapView *)self _zoomLevel];
  v15 = v14;
  v16 = vabdd_f64(latitude, v11);
  if (v16 >= 0.00000000999999994 || vabdd_f64(longitude, v13) >= 0.00000000999999994 || (v17 = 0.0, vabdd_f64(level, v14) >= 0.00001))
  {
    window = [(MKMapView *)self window];

    if (!window)
    {
      animated = 0;
    }

    v17 = 0.0;
    if (([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      if (self->_userTrackingMode && (v16 >= 0.00000000999999994 || vabdd_f64(longitude, v13) >= 0.00000000999999994))
      {
        [(MKUserLocation *)self->_userLocation coordinate];
        if ((vabdd_f64(latitude, v20) >= 0.00000000999999994 || vabdd_f64(longitude, v19) >= 0.00000000999999994) && (*(&self->_flags + 6) & 8) == 0)
        {
          [(MKMapView *)self setUserTrackingMode:0];
        }
      }

      v21 = -1.0;
      if (level != -1.0)
      {
        [(MKMapView *)self _boundedZoomLevel:level];
        v21 = v22;
      }

      _roundedZoomLevel = [(MKMapView *)self _roundedZoomLevel];
      v24 = llround(v21);
      if (_roundedZoomLevel != v24 && animated)
      {
        if (_roundedZoomLevel >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = _roundedZoomLevel;
        }

        [(MKMapView *)self centerCoordinate];
        v28 = MKTilePointForCoordinate(v26, v27, v25);
        v30 = v29;
        cameraBoundary = self->_cameraBoundary;
        v32 = longitude;
        v33 = latitude;
        if (cameraBoundary)
        {
          [(MKMapCameraBoundary *)cameraBoundary _clampedCoordinateForCoordinate:latitude, longitude];
        }

        v34 = MKTilePointForCoordinate(v33, v32, v25);
        if (sqrt((v34 - v28) * (v34 - v28) + (v35 - v30) * (v35 - v30)) > 1000.0)
        {
          v36 = -1.0;
          if (v21 == -1.0 || vabdd_f64(v15, v21) < 0.00001)
          {
            goto LABEL_33;
          }

          v37 = 1.0 / exp2(21.0 - v21);
          goto LABEL_29;
        }
      }

      v38 = exp2(21.0 - v21);
      v36 = -1.0;
      v37 = 1.0 / v38;
      if (v21 == -1.0)
      {
        if (!animated)
        {
          goto LABEL_33;
        }
      }

      else if (!animated)
      {
        if (vabdd_f64(v15, v21) < 0.00001)
        {
LABEL_33:
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __54__MKMapView__goToCenterCoordinate_zoomLevel_animated___block_invoke;
          v42[3] = &unk_1E76C6650;
          v42[4] = self;
          *&v42[5] = v36;
          *&v42[6] = latitude;
          *&v42[7] = longitude;
          v42[8] = 0;
          v43 = 0;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v42];
          return v17;
        }

LABEL_29:
        v36 = v37;
        goto LABEL_33;
      }

      if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
      {
        [MEMORY[0x1E69DD250] _currentAnimationDuration];
        v17 = v39;
        _mapkit_currentAnimationTimingFunction = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
      }

      else
      {
        _mapkit_currentAnimationTimingFunction = 0;
        v17 = -1.0;
      }

      [(MKMapView *)self _setZoomScale:_mapkit_currentAnimationTimingFunction centerCoordinate:1 duration:v37 timingFunction:latitude animated:longitude, v17];
      if ((*&self->_flags & 1) == 0)
      {
        v17 = 0.0;
      }
    }
  }

  return v17;
}

- (double)_zoomScaleForMapRegion:(id)region
{
  GEOMapRectForMapRegion();
  v5 = v4;
  v7 = v6;
  [(VKMapView *)self->_mapView mapRegionBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(MKMapView *)self _edgeInsets];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);
  memset(&v27, 0, sizeof(v27));
  [(VKMapView *)self->_mapView presentationYaw];
  CGAffineTransformMakeRotation(&v27, v24 * -0.0174532925);
  v26 = v27;
  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  v29 = CGRectApplyAffineTransform(v28, &v26);
  result = v29.size.width / v5;
  if (v29.size.width / v5 >= v29.size.height / v7)
  {
    result = v29.size.height / v7;
  }

  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.001953125;
  }

  return result;
}

- (id)_mapRegionWithCenterCoordinate:(CLLocationCoordinate2D)coordinate zoomScale:(double)scale
{
  scaleCopy = scale;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (scale == -1.0)
  {
    [(MKMapView *)self _zoomScale];
    scaleCopy = v8;
  }

  v9 = MKTilePointForCoordinate(latitude, longitude, 21.0);
  v11 = v10;
  [(MKMapView *)self bounds];
  v13 = v12;
  v15 = v14;
  [(MKMapView *)self _edgeInsets];
  v20 = (v15 - (v18 + v19)) / scaleCopy * 0.5;
  v21 = v11 - v20;
  v22 = v11 + v20;
  if (v11 - v20 >= 0.0)
  {
    if (v22 > 268435456.0)
    {
      v21 = v21 - (v22 + -268435456.0);
    }
  }

  else
  {
    v22 = v22 - v21;
  }

  v23 = (v13 - (v16 + v17)) / scaleCopy * 0.5;
  v24 = v9 + v23;
  v31.x = v9 - v23;
  v31.y = fmax(v21, 0.0);
  v25 = fmin(v22, 268435456.0);
  v26 = MKCoordinateForMapPoint(v31);
  v32.x = v24;
  v32.y = v25;
  v27 = MKCoordinateForMapPoint(v32);
  v28 = objc_alloc_init(MEMORY[0x1E69A2200]);
  [v28 setNorthLat:v26.latitude];
  [v28 setWestLng:v26.longitude];
  [v28 setSouthLat:v27.latitude];
  [v28 setEastLng:v27.longitude];

  return v28;
}

- (double)_zoomLevelForRegion:(id *)region includeAccessoryPadding:(BOOL)padding
{
  v44 = v6;
  v45 = v7;
  v42 = v4;
  v43 = v5;
  v10 = [MKSystemController sharedInstance:region];
  if ([v10 supports3DMaps])
  {

LABEL_4:
    GEOMapRectForCoordinateRegion();

    [(MKMapView *)self _zoomLevelForMapRect:region includeAccessoryPadding:?];
    return result;
  }

  mEMORY[0x1E69DF468] = [MEMORY[0x1E69DF468] sharedPlatform];
  supportsHiResRTT = [mEMORY[0x1E69DF468] supportsHiResRTT];

  if (supportsHiResRTT)
  {
    goto LABEL_4;
  }

  [(MKMapView *)self _minimumZoomLevel];
  v15 = v14;
  [(MKMapView *)self _maximumZoomLevel];
  v17 = v16;
  [(MKMapView *)self bounds];
  v19 = v18;
  v21 = v20;
  [(MKMapView *)self _edgeInsets];
  if (v17 > v15)
  {
    v40 = (v21 - (v22 + v24)) * 0.5;
    v41 = (v19 - (v23 + v25)) * 0.5;
    while (1)
    {
      v26 = MKTilePointForCoordinate(v42, v43, v17);
      v27 = v26 - v41;
      v28 = v41 + v26;
      v30 = v29 - v40;
      v31 = v40 + v29;
      v32 = ldexp(1.0, v17);
      v46 = v28 * 0.0078125 * (360.0 / v32) + -180.0;
      v47 = v27 * 0.0078125 * (360.0 / v32) + -180.0;
      v33 = v30 * 0.0078125;
      v34 = v32 / 6.28318531;
      v35 = v32 * 0.5;
      v36 = exp((v33 - v32 * 0.5) / (v32 / 6.28318531));
      v37 = (atan(v36) * -2.0 + 1.57079633) * 57.2957795;
      v38 = exp((v31 * 0.0078125 - v35) / v34);
      if (v37 - (atan(v38) * -2.0 + 1.57079633) * 57.2957795 + 0.0001 >= v44 && v46 - v47 + 0.0001 >= v45)
      {
        break;
      }

      if (--v17 <= v15)
      {
        return v15;
      }
    }
  }

  return v17;
}

- (double)_zoomLevelForMapRect:(id)rect includeAccessoryPadding:(BOOL)padding
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  if (padding)
  {
    [(MKAnnotationContainerView *)self->_annotationContainer accessoryPadding];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [(MKMapView *)self _minimumZoomLevel];
  v17 = v16;
  [(MKMapView *)self _maximumZoomLevel];
  v19 = vcvtpd_s64_f64(v18);

  [(MKMapView *)self _zoomRegionForMapRect:v19 edgePadding:v17 maxZoomLevel:v6 minZoomLevel:v5, var0, var1, v9, v11, v13, v15];
  return result;
}

- (double)_defaultAnimationDurationForMapRect:(id)rect edgePadding:(UIEdgeInsets)padding
{
  [(MKMapView *)self _zoomRegionForMapRect:-1 edgePadding:-1 maxZoomLevel:rect.var0.var0 minZoomLevel:rect.var0.var1, rect.var1.var0, rect.var1.var1, padding.top, padding.left, padding.bottom, padding.right];
  v6 = v5;
  v8 = v7;
  v9 = -1.0;
  if (v10 != -1.0)
  {
    [(MKMapView *)self _boundedZoomLevel:?];
    v9 = v11;
  }

  v12 = [(MKMapView *)self _mapRegionWithCenterCoordinate:v6 zoomScale:v8, (1.0 / exp2(21.0 - v9))];
  [(VKMapView *)self->_mapView durationToAnimateToMapRegion:v12];
  v14 = v13;

  return v14;
}

- (void)setVisibleMapRect:(MKMapRect)visibleMapRect
{
  height = visibleMapRect.size.height;
  width = visibleMapRect.size.width;
  y = visibleMapRect.origin.y;
  x = visibleMapRect.origin.x;
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
  v9 = *MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *(MEMORY[0x1E69DDCE0] + 24);

  [(MKMapView *)self setVisibleMapRect:_mapkit_shouldAdoptImplicitAnimationParameters edgePadding:x animated:y, width, height, v9, v10, v11, v12];
}

- (void)_setVisibleMapRect:(id)rect duration:(double)duration completionHandler:(id)handler
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  handlerCopy = handler;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__MKMapView__setVisibleMapRect_duration_completionHandler___block_invoke;
    v17[3] = &unk_1E76C65D8;
    objc_copyWeak(v18, &location);
    v18[1] = *&v9;
    v18[2] = *&v8;
    v18[3] = *&var0;
    v18[4] = *&var1;
    [(MKMapView *)self _addSetRegionBlock:v17 completion:handlerCopy];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MKMapView *)self mapRectThatFits:v9, v8, var0, var1];
    v16 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v12, v13, v14, v15}];
    [(MKMapView *)self _goToMapRegion:v16 duration:duration > 0.0 animated:handlerCopy completionHandler:duration];
  }
}

void __59__MKMapView__setVisibleMapRect_duration_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVisibleMapRect:0 edgePadding:*(a1 + 40) animated:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (void)_setVisibleMapRect:(id)rect animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  handlerCopy = handler;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__MKMapView__setVisibleMapRect_animated_completionHandler___block_invoke;
    v18[3] = &unk_1E76C65D8;
    objc_copyWeak(v19, &location);
    v19[1] = *&v9;
    v19[2] = *&v8;
    v19[3] = *&var0;
    v19[4] = *&var1;
    [(MKMapView *)self _addSetRegionBlock:v18 completion:handlerCopy];
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MKMapView *)self mapRectThatFits:v9, v8, var0, var1];
    v16 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v12, v13, v14, v15}];
    v17 = 0.0;
    if (animatedCopy)
    {
      [(VKMapView *)self->_mapView durationToAnimateToMapRegion:v16, 0.0];
    }

    [(MKMapView *)self _goToMapRegion:v16 duration:animatedCopy animated:handlerCopy completionHandler:v17];
  }
}

void __59__MKMapView__setVisibleMapRect_animated_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVisibleMapRect:0 edgePadding:*(a1 + 40) animated:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (void)setVisibleMapRect:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets animated:(BOOL)animate
{
  v5 = animate;
  bottom = insets.bottom;
  right = insets.right;
  top = insets.top;
  left = insets.left;
  height = mapRect.size.height;
  width = mapRect.size.width;
  y = mapRect.origin.y;
  x = mapRect.origin.x;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(location, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__MKMapView_setVisibleMapRect_edgePadding_animated___block_invoke;
    v28[3] = &unk_1E76C6628;
    objc_copyWeak(v29, location);
    v29[1] = *&x;
    v29[2] = *&y;
    v29[3] = *&width;
    v29[4] = *&height;
    v29[5] = *&top;
    v29[6] = *&left;
    v29[7] = *&bottom;
    v29[8] = *&right;
    [(MKMapView *)self _addSetRegionBlock:v28];
    objc_destroyWeak(v29);
    objc_destroyWeak(location);
  }

  else
  {
    [(MKMapView *)self visibleMapRect];
    v17 = x == v14 && y == v11 && width == v12 && height == v13;
    if (v17 && (v21.f64[0] = bottom, v21.f64[1] = right, v22.f64[0] = top, v22.f64[1] = left, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, *MEMORY[0x1E69DDCE0]), vceqq_f64(v21, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0))
    {
      v23 = MKGetMKMapViewLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_DEBUG, "MKMapView: setVisibleMapRect:edgePadding:animated: requested rect is equal to existing rect", location, 2u);
      }
    }

    else
    {
      [(MKMapView *)self _zoomRegionForMapRect:-1 edgePadding:-1 maxZoomLevel:x minZoomLevel:y, width, height];

      [(MKMapView *)self _goToCenterCoordinate:v5 zoomLevel:v19 animated:v20, v18];
    }
  }
}

void __52__MKMapView_setVisibleMapRect_edgePadding_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVisibleMapRect:0 edgePadding:*(a1 + 40) animated:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

- (void)_goToMapRegion:(id)region duration:(double)duration timingFunction:(id)function animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  regionCopy = region;
  functionCopy = function;
  handlerCopy = handler;
  if (!animatedCopy)
  {
    duration = 0.0;
  }

  [(MKMapView *)self _clearGestureRecognizers];
  if (animatedCopy)
  {
    v16 = MEMORY[0x1E69DD250];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__MKMapView__goToMapRegion_duration_timingFunction_animated_completionHandler___block_invoke;
    v27[3] = &unk_1E76CD810;
    v28 = regionCopy;
    selfCopy = self;
    [v16 performWithoutAnimation:v27];
  }

  [(MKMapView *)self _suspendUserInteraction];
  if (functionCopy)
  {
    v17 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__MKMapView__goToMapRegion_duration_timingFunction_animated_completionHandler___block_invoke_2;
    v25[3] = &unk_1E76C9988;
    v7 = &v26;
    v26 = functionCopy;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x1A58E9F30](v17);
  objc_initWeak(&location, self);
  mapView = self->_mapView;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__MKMapView__goToMapRegion_duration_timingFunction_animated_completionHandler___block_invoke_3;
  v21[3] = &unk_1E76C6600;
  objc_copyWeak(&v23, &location);
  v20 = handlerCopy;
  v22 = v20;
  [(VKMapView *)mapView setMapRegion:regionCopy pitch:v18 yaw:v21 duration:0.0 timingCurve:0.0 completion:duration];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  if (functionCopy)
  {
  }
}

uint64_t __79__MKMapView__goToMapRegion_duration_timingFunction_animated_completionHandler___block_invoke(uint64_t a1)
{
  GEOMapRectForMapRegion();
  v2 = *(*(a1 + 40) + 456);

  return [v2 showAnnotationsInMapRect:?];
}

void __79__MKMapView__goToMapRegion_duration_timingFunction_animated_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained _resumeUserInteraction];
    v5 = v7;
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
      v5 = v7;
    }
  }
}

- (void)_setZoomScale:(double)scale centerCoordinate:(CLLocationCoordinate2D)coordinate duration:(double)duration timingFunction:(id)function animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  functionCopy = function;
  v13 = MKTilePointForCoordinate(latitude, longitude, 21.0);
  [(MKMapView *)self _setZoomScale:functionCopy centerMapPoint:animatedCopy duration:scale timingFunction:v13 animated:v14, duration];
}

- (void)_setZoomScale:(double)scale centerCoordinate:(CLLocationCoordinate2D)coordinate duration:(double)duration animated:(BOOL)animated
{
  animatedCopy = animated;
  v11 = MKTilePointForCoordinate(coordinate.latitude, coordinate.longitude, 21.0);

  [(MKMapView *)self _setZoomScale:animatedCopy centerMapPoint:scale duration:v11 animated:v10, duration];
}

- (void)_setZoomScale:(double)scale centerMapPoint:(id)point duration:(double)duration timingFunction:(id)function animated:(BOOL)animated
{
  animatedCopy = animated;
  var1 = point.var1;
  var0 = point.var0;
  functionCopy = function;
  v27.x = var0;
  v27.y = var1;
  v14 = MKCoordinateForMapPoint(v27);
  if (scale == -1.0)
  {
    v18 = 0;
  }

  else
  {
    v15 = log2(scale) + 21.0;
    if (v15 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    [(MKMapView *)self _zoomLevel];
    v18 = vabdd_f64(v16, v17) >= 1.0e-12;
  }

  if (v14.longitude == -180.0 && v14.latitude == -180.0)
  {
    v19 = 0;
  }

  else
  {
    [(MKMapView *)self centerCoordinate];
    v19 = vabdd_f64(v14.latitude, v20) >= 0.00000000999999994;
    if (vabdd_f64(v14.longitude, v21) >= 0.00000000999999994)
    {
      v19 = 1;
    }
  }

  if (v18 || v19)
  {
    if ([(MKMapView *)self _mustWaitUntilSized])
    {
      objc_initWeak(&location, self);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __75__MKMapView__setZoomScale_centerMapPoint_duration_timingFunction_animated___block_invoke;
      v24[3] = &unk_1E76C65D8;
      objc_copyWeak(v25, &location);
      v25[1] = *&scale;
      v25[2] = *&var0;
      v25[3] = *&var1;
      v25[4] = *&duration;
      [(MKMapView *)self _addSetRegionBlock:v24];
      objc_destroyWeak(v25);
      objc_destroyWeak(&location);
    }

    else
    {
      scale = [(MKMapView *)self _mapRegionWithCenterCoordinate:v14.latitude zoomScale:v14.longitude, scale];
      if (duration < 0.0 && animatedCopy)
      {
        [(VKMapView *)self->_mapView durationToAnimateToMapRegion:scale];
        duration = v23;
      }

      [(MKMapView *)self _goToMapRegion:scale duration:functionCopy timingFunction:animatedCopy animated:0 completionHandler:duration];
    }
  }
}

void __75__MKMapView__setZoomScale_centerMapPoint_duration_timingFunction_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setZoomScale:0 centerMapPoint:0 duration:*(a1 + 40) timingFunction:*(a1 + 48) animated:{*(a1 + 56), *(a1 + 64)}];
}

- (MKMapRect)mapRectThatFits:(MKMapRect)mapRect
{
  [(MKMapView *)self mapRectThatFits:mapRect.origin.x edgePadding:mapRect.origin.y, mapRect.size.width, mapRect.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (MKMapRect)mapRectThatFits:(MKMapRect)mapRect edgePadding:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(MKMapView *)self _minimumZoomLevel];
  v31 = v5;
  [(MKMapView *)self _maximumZoomLevel];
  v30 = v6;
  [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:34];
  [(MKMapView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(MKMapView *)self _edgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = +[MKSystemController sharedInstance];
  if ([v23 supports3DMaps])
  {
    v24 = 0;
  }

  else
  {
    mEMORY[0x1E69DF468] = [MEMORY[0x1E69DF468] sharedPlatform];
    v24 = [mEMORY[0x1E69DF468] supportsHiResRTT] ^ 1;
  }

  [MKMapView _mapRectThatFitsViewBounds:v24 mapRect:v8 viewInsets:v10 edgePadding:v12 minZoomLevel:v14 maxZoomLevel:mapRect.origin.x snapToZoomLevel:mapRect.origin.y, mapRect.size.width, mapRect.size.height, v16, v18, v20, v22, *&top, *&left, *&bottom, *&right, v31, v30];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (MKCoordinateRegion)regionThatFits:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  mapType = [(MKMapView *)self mapType];
  [(MKMapView *)self bounds];
  v6 = v5;
  v8 = v7;
  [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:33];
  [(MKMapView *)self _edgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(MKMapView *)self _minimumZoomLevel];
  v18 = v17;
  [(MKMapView *)self _maximumZoomLevel];
  v20 = v19;
  v21 = +[MKSystemController sharedInstance];
  if ([v21 supports3DMaps])
  {
    v22 = 0;
  }

  else
  {
    mEMORY[0x1E69DF468] = [MEMORY[0x1E69DF468] sharedPlatform];
    v22 = [mEMORY[0x1E69DF468] supportsHiResRTT] ^ 1;
  }

  [MKMapView _regionThatFitsMapType:mapType viewSize:v22 viewInsets:v6 edgePadding:v8 region:v10 minZoomLevel:v12 maxZoomLevel:v14 snapToZoomLevel:v16, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *&latitude, *&longitude, *&latitudeDelta, *&longitudeDelta, v18, v20];
  result.span.longitudeDelta = v27;
  result.span.latitudeDelta = v26;
  result.center.longitude = v25;
  result.center.latitude = v24;
  return result;
}

- ($1B94325D8169464FEFE398C26867413B)_zoomRegionForMapRect:(SEL)rect edgePadding:(id)padding maxZoomLevel:(UIEdgeInsets)level minZoomLevel:(int64_t)zoomLevel
{
  right = level.right;
  bottom = level.bottom;
  left = level.left;
  top = level.top;
  if (a7 == -1)
  {
    [(MKMapView *)self _minimumZoomLevel];
  }

  else
  {
    v9 = a7;
  }

  v32 = v9;
  if (zoomLevel == -1)
  {
    [(MKMapView *)self _maximumZoomLevel];
  }

  else
  {
    zoomLevelCopy = zoomLevel;
  }

  v31 = zoomLevelCopy;
  [(MKMapView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(MKMapView *)self _edgeInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = +[MKSystemController sharedInstance];
  if ([v27 supports3DMaps])
  {
    v28 = 0;
  }

  else
  {
    mEMORY[0x1E69DF468] = [MEMORY[0x1E69DF468] sharedPlatform];
    v28 = [mEMORY[0x1E69DF468] supportsHiResRTT] ^ 1;
  }

  v40 = 0uLL;
  v39 = 0;
  v38[0] = 0.0;
  v38[1] = 0.0;

  _scaleForMapRect(&v40, &v39, v38, v28, v12 + v22, v14 + v20, v16 - (v22 + v26), v18 - (v20 + v24), padding.var0.var0, padding.var0.var1, padding.var1.var0, padding.var1.var1, top, left, bottom, right, v32, v31);
  v41.x = v40.f64[0];
  v41.y = fmin(fmax(v40.f64[1], 0.0), 268435456.0);
  MKCoordinateForMapPoint(v41);
  return result;
}

- (void)setRegion:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];

  [(MKMapView *)self setRegion:_mapkit_shouldAdoptImplicitAnimationParameters animated:latitude, longitude, latitudeDelta, longitudeDelta];
}

- (void)setRegion:(MKCoordinateRegion)region animated:(BOOL)animated
{
  v4 = animated;
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __32__MKMapView_setRegion_animated___block_invoke;
    v21[3] = &unk_1E76C65D8;
    objc_copyWeak(v22, location);
    v22[1] = *&latitude;
    v22[2] = *&longitude;
    v22[3] = *&latitudeDelta;
    v22[4] = *&longitudeDelta;
    [(MKMapView *)self _addSetRegionBlock:v21];
    objc_destroyWeak(v22);
    objc_destroyWeak(location);
  }

  else
  {
    [(MKMapView *)self region];
    if (vabdd_f64(latitude, v13) >= 0.00000000999999994 || vabdd_f64(longitude, v10) >= 0.00000000999999994 || vabdd_f64(latitudeDelta, v11) >= 0.00000000999999994 || vabdd_f64(longitudeDelta, v12) >= 0.00000000999999994)
    {
      if (fabs(longitude) > 180.0 || fabs(latitude) > 90.0 || latitudeDelta < 0.0 || latitudeDelta > 180.0 || longitudeDelta < 0.0 || longitudeDelta > 360.0)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
        v18 = [v16 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v17, *&latitudeDelta, *&longitudeDelta];

        v20 = [v16 stringWithFormat:@"Invalid Region %@", v18];

        v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
        [v19 raise];
      }

      else
      {
        [(MKMapView *)self _zoomLevelForRegion:0 includeAccessoryPadding:latitude, longitude, latitudeDelta, longitudeDelta];

        [(MKMapView *)self _goToCenterCoordinate:v4 zoomLevel:latitude animated:longitude, v15];
      }
    }

    else
    {
      v14 = MKGetMKMapViewLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_DEBUG, "MKMapView: setRegion:animated: requested region is equal to existing region", location, 2u);
      }
    }
  }
}

void __32__MKMapView_setRegion_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRegion:0 animated:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
{
  longitude = centerCoordinate.longitude;
  latitude = centerCoordinate.latitude;
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];

  [(MKMapView *)self setCenterCoordinate:_mapkit_shouldAdoptImplicitAnimationParameters animated:latitude, longitude];
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated
{
  v4 = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__MKMapView_setCenterCoordinate_animated___block_invoke;
    v14[3] = &unk_1E76C9910;
    objc_copyWeak(v15, &location);
    v15[1] = *&latitude;
    v15[2] = *&longitude;
    [(MKMapView *)self _addDependentSetRegionBlock:v14];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    if (fabs(longitude) > 180.0 || fabs(latitude) > 90.0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
      v13 = [v10 stringWithFormat:@"Invalid Coordinate %@", v11];

      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
      [v12 raise];
    }

    else
    {
      camera = [(MKMapView *)self camera];
      v13 = [camera copy];

      [v13 setCenterCoordinate:{latitude, longitude}];
      _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
      if (!v4 || (_mapkit_shouldAdoptImplicitAnimationParameters & 1) != 0)
      {
        [(MKMapView *)self setCamera:v13];
      }

      else
      {
        [(MKMapView *)self setCamera:v13 animated:1];
      }
    }
  }
}

void __42__MKMapView_setCenterCoordinate_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCenterCoordinate:0 animated:{*(a1 + 40), *(a1 + 48)}];
}

- (void)drawRect:(CGRect)rect forViewPrintFormatter:(id)formatter
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(MKMapView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v37.height = v15;
  rect_8 = v15;
  v37.width = v13;
  v31 = v13;
  UIGraphicsBeginImageContextWithOptions(v37, 1, 0.0);
  layer = [(MKMapView *)self layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  rect_16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CurrentContext = UIGraphicsGetCurrentContext();
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v18 = CGRectGetHeight(v38);
  CGContextTranslateCTM(CurrentContext, 0.0, v18);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v32 = height;
  v19 = CGRectGetWidth(v39);
  rect = v10;
  v40.origin.x = v10;
  v40.origin.y = v12;
  v40.size.width = v14;
  v40.size.height = rect_8;
  v20 = v19 / CGRectGetWidth(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v21 = CGRectGetHeight(v41);
  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v31;
  v42.size.height = rect_8;
  v22 = v21 / CGRectGetHeight(v42);
  if (v20 < v22)
  {
    v22 = v20;
  }

  v23 = v31 * v22;
  v24 = rect_8 * v22;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = v32;
  v25 = CGRectGetWidth(v43);
  v44.origin.x = rect;
  v44.origin.y = v12;
  v44.size.width = v23;
  v44.size.height = v24;
  v26 = (v25 - CGRectGetWidth(v44)) * 0.5;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = v32;
  v27 = CGRectGetHeight(v45);
  v46.origin.x = v26;
  v46.origin.y = v12;
  v46.size.width = v23;
  v46.size.height = v24;
  v28 = (v27 - CGRectGetHeight(v46)) * 0.5;
  v29 = rect_16;
  cGImage = [rect_16 CGImage];
  v47.origin.x = v26;
  v47.origin.y = v28;
  v47.size.width = v23;
  v47.size.height = v24;
  CGContextDrawImage(CurrentContext, v47, cGImage);
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = MKMapView;
  [(MKMapView *)&v5 setHidden:?];
  if (self->_internal)
  {
    [(MKBasicMapView *)self->_basicMapView setHidden:hiddenCopy];
  }
}

- (void)_willChangeStatusBarFrame:(id)frame
{
  if (!_MKLinkedOnOrAfterReleaseSet(2310))
  {
    v4 = MEMORY[0x1E69DD250];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] statusBarOrientationAnimationDuration];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__MKMapView__willChangeStatusBarFrame___block_invoke;
    v6[3] = &unk_1E76CDB38;
    v6[4] = self;
    [v4 animateWithDuration:v6 animations:?];
  }
}

- ($FF918C85BF8E73478720C66798E418D4)_userTrackingBehavior
{
  result = self->_mapView;
  if (result)
  {
    return [($FF918C85BF8E73478720C66798E418D4 *)result annotationTrackingBehavior];
  }

  *&retstr->var0 = 0;
  retstr->var1 = 0.0;
  *&retstr->var2 = 0;
  return result;
}

- (void)_exitARMode
{
  [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
  mapView = self->_mapView;

  [(VKMapView *)mapView exitARMode];
}

- (void)_enterARModeWithLocation:(id)location
{
  locationCopy = location;
  [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
  if (locationCopy && ([locationCopy location], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    location = [locationCopy location];
    [location coordinate];
    location2 = [locationCopy location];
    [location2 coordinate];
    VKLocationCoordinate2DMake();
    v8 = v7;
    v10 = v9;
  }

  else
  {
    [(VKMapView *)self->_mapView centerCoordinate];
    VKLocationCoordinate2DMake();
    v8 = v11;
    v10 = v12;
  }

  [(VKMapView *)self->_mapView enterARModeAtCoordinate:v8, v10];
}

- (void)_enterARMode
{
  [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
  [(VKMapView *)self->_mapView centerCoordinate];
  VKLocationCoordinate2DMake();
  mapView = self->_mapView;

  [(VKMapView *)mapView enterARModeAtCoordinate:?];
}

- (void)_exit3DMode
{
  [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:[(MKMapView *)self _canShowFlyover]];
  [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_safeDelegate);
    [v5 mapView:self didPerformPitchAction:0];
  }

  mapView = self->_mapView;

  [(VKMapView *)mapView exit3DMode];
}

- (void)_enter3DMode
{
  [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:[(MKMapView *)self _canShowFlyover]];
  [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_safeDelegate);
    [v5 mapView:self didPerformPitchAction:1];
  }

  mapView = self->_mapView;

  [(VKMapView *)mapView enter3DMode];
}

- (MKCoordinateRegion)convertRect:(CGRect)rect toRegionFromView:(UIView *)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  usageCounter = self->_usageCounter;
  v10 = view;
  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:31];
  [(MKMapView *)self _convertRect:v10 toRegionFromView:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.span.longitudeDelta = v22;
  result.span.latitudeDelta = v21;
  result.center.longitude = v20;
  result.center.latitude = v19;
  return result;
}

- (CGRect)convertRegion:(MKCoordinateRegion)region toRectToView:(UIView *)view
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  usageCounter = self->_usageCounter;
  v10 = view;
  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:32];
  [(MKMapView *)self _convertRegion:v10 toRectToView:latitude, longitude, latitudeDelta, longitudeDelta];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(UIView *)view
{
  y = point.y;
  x = point.x;
  usageCounter = self->_usageCounter;
  v8 = view;
  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:29];
  [(MKMapView *)self _convertPoint:v8 toCoordinateFromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.longitude = v14;
  result.latitude = v13;
  return result;
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(UIView *)view
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  usageCounter = self->_usageCounter;
  v8 = view;
  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:30];
  [(MKMapView *)self _convertCoordinate:v8 toPointToView:latitude, longitude];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (MKAnnotationView)dequeueReusableAnnotationViewWithIdentifier:(NSString *)identifier forAnnotation:(id)annotation
{
  v6 = identifier;
  v7 = annotation;
  v8 = [(MKAnnotationManager *)self->_annotationManager dequeueReusableAnnotationRepresentationWithIdentifier:v6];
  v9 = v8;
  if (v8)
  {
    [v8 setAnnotation:v7];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to dequeue an annotation view with identifier %@ - must register a class for the identifier", v6}];
  }

  return v9;
}

- (void)_addViewsForAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    [(MKAnnotationManager *)self->_annotationManager addRepresentationsForAnnotations:annotationsCopy];
  }
}

- (void)_replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation
{
  if (annotation)
  {
    if (withAnnotation)
    {
      [MKAnnotationManager replaceAnnotation:"replaceAnnotation:withAnnotation:" withAnnotation:?];
    }
  }
}

- (void)removeAnnotations:(NSArray *)annotations
{
  v11 = annotations;
  userLocation = [(MKMapView *)self userLocation];
  v5 = [(NSArray *)v11 containsObject:userLocation];

  if (v5)
  {
    v6 = MEMORY[0x1E695DEC8];
    userLocation2 = [(MKMapView *)self userLocation];
    v8 = [v6 arrayWithObject:userLocation2];
    v9 = [(NSArray *)v11 arrayByExcludingObjectsInArray:v8];

    v10 = v9;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10;
  [(MKAnnotationManager *)self->_annotationManager removeAnnotations:v10];
  [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:15];
}

- (void)removeAnnotation:(id)annotation
{
  v4 = annotation;
  if (v4)
  {
    v6 = v4;
    userLocation = [(MKMapView *)self userLocation];

    v4 = v6;
    if (userLocation != v6)
    {
      [(MKAnnotationManager *)self->_annotationManager removeAnnotation:v6];
      [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:14];
      v4 = v6;
    }
  }
}

- (void)_addAnnotations:(id)annotations allowAnimation:(BOOL)animation
{
  animationCopy = animation;
  v16 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [annotationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        [(MKMapView *)self _addAnnotation:*(*(&v11 + 1) + 8 * v10++) allowAnimation:animationCopy];
      }

      while (v8 != v10);
      v8 = [annotationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addAnnotations:(NSArray *)annotations
{
  [(MKAnnotationManager *)self->_annotationManager addAnnotations:annotations];
  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:13];
}

- (void)addAnnotation:(id)annotation
{
  [(MKMapView *)self _addAnnotation:annotation allowAnimation:1];
  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:12];
}

- (void)_addAnnotation:(id)annotation allowAnimation:(BOOL)animation
{
  animationCopy = animation;
  annotationCopy = annotation;
  v7 = annotationCopy;
  if (annotationCopy)
  {
    if (self->_userLocation == annotationCopy)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "WARNING: Passed MKUserLocation to [MKMapView addAnnotation:]. Use [MKMapView setShowsUserLocation:YES] instead", v8, 2u);
      }

      [(MKMapView *)self setShowsUserLocation:1];
    }

    else
    {
      [(MKAnnotationManager *)self->_annotationManager addAnnotation:annotationCopy allowAnimation:animationCopy];
    }
  }
}

- (id)_labelMarkerForCustomFeatureAnnotation:(id)annotation
{
  annotationCopy = annotation;
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  v6 = [vk_mapLayer labelMarkerForCustomFeatureAnnotation:annotationCopy];

  return v6;
}

- (id)_labelMarkerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  v7 = [vk_mapLayer labelMarkerForSelectionAtPoint:-[MKMapView _canSelectAllLabels](self selectableLabelsOnly:{"_canSelectAllLabels") ^ 1, x, y}];

  if (v7 && (([v7 isSelectable] & 1) != 0 || -[MKMapView _canSelectAllLabels](self, "_canSelectAllLabels")))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isHybridMap
{
  preferredConfiguration = [(MKMapView *)self preferredConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    preferredConfiguration2 = [(MKMapView *)self preferredConfiguration];
    v5 = [preferredConfiguration2 elevationStyle] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_selectLabelMarker:(id)marker animated:(BOOL)animated
{
  animatedCopy = animated;
  markerCopy = marker;
  if (markerCopy)
  {
    v14 = markerCopy;
    _selectedLabelMarker = [(MKMapView *)self _selectedLabelMarker];

    markerCopy = v14;
    if (_selectedLabelMarker != v14)
    {
      if ([(MKLabelSelectionFilter *)self->_labelSelectionFilter selectionEnabled])
      {
        v8 = [[MKMapFeatureAnnotation alloc] initWithVKLabelMarker:v14 isHybridMap:[(MKMapView *)self _isHybridMap]];
        [(MKMapView *)self addAnnotation:v8];
        [(MKMapView *)self _selectAnnotation:v8 animated:animatedCopy];
      }

      else
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate = [(MKMapView *)self _safeDelegate];
        }

        v10 = _safeDelegate;
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
          {
            _safeDelegate2 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate2 = [(MKMapView *)self _safeDelegate];
          }

          v13 = _safeDelegate2;
          [(MKMapViewDelegate *)_safeDelegate2 mapView:self willSelectLabelMarker:v14];
        }

        [(MKMapView *)self addAnnotation:v14];
        [(MKMapView *)self _selectAnnotation:v14 animated:animatedCopy];
      }

      markerCopy = v14;
    }
  }
}

- (void)_deselectLabelMarkerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _selectedLabelMarker = [(MKMapView *)self _selectedLabelMarker];

  if (_selectedLabelMarker)
  {
    annotationManager = self->_annotationManager;
    _selectedLabelMarker2 = [(MKMapView *)self _selectedLabelMarker];
    [(MKAnnotationManager *)annotationManager deselectAnnotation:_selectedLabelMarker2 animated:animatedCopy];
  }
}

- (void)_setCanSelectAllLabels:(BOOL)labels
{
  labelsCopy = labels;
  labelSelectionFilter = self->_labelSelectionFilter;
  self->_labelSelectionFilter = 0;

  [(VKMapView *)self->_mapView setLabelSelectionFilter:0];
  flags = self->_flags;
  v7 = 0x4000000000;
  if (!labelsCopy)
  {
    v7 = 0;
  }

  *&self->_flags = flags & 0xFFFFFFBFFFFFFFFFLL | v7;
  mapView = self->_mapView;

  [(VKMapView *)mapView setLabelMarkerSelectionEnabled:(flags >> 37) & 1 | labelsCopy];
}

- (void)_setCanSelectPOIs:(BOOL)is
{
  isCopy = is;
  labelSelectionFilter = self->_labelSelectionFilter;
  self->_labelSelectionFilter = 0;

  [(VKMapView *)self->_mapView setLabelSelectionFilter:0];
  flags = self->_flags;
  v7 = 0x2000000000;
  if (!isCopy)
  {
    v7 = 0;
  }

  *&self->_flags = flags & 0xFFFFFFDFFFFFFFFFLL | v7;
  mapView = self->_mapView;

  [(VKMapView *)mapView setLabelMarkerSelectionEnabled:isCopy | (flags >> 38) & 1];
}

- (void)setSelectedAnnotations:(NSArray *)selectedAnnotations
{
  v7 = selectedAnnotations;
  v4 = [(NSArray *)v7 count];
  annotationManager = self->_annotationManager;
  if (v4)
  {
    v6 = [(NSArray *)v7 objectAtIndex:0];
    [(MKAnnotationManager *)annotationManager selectAnnotation:v6 animated:0];
  }

  else
  {
    [(MKAnnotationManager *)annotationManager deselectAnnotation:0 animated:0];
  }
}

- (NSArray)selectedAnnotations
{
  selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
  if (selectedAnnotationRepresentation && (v4 = selectedAnnotationRepresentation, [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    v8 = MEMORY[0x1E695DEC8];
    selectedAnnotationRepresentation2 = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
    annotation = [selectedAnnotationRepresentation2 annotation];
    _mapkit_fakeNil = [v8 arrayWithObject:annotation];
  }

  else
  {
    if (selectedAnnotations_once != -1)
    {
      dispatch_once(&selectedAnnotations_once, &__block_literal_global_459);
    }

    if (selectedAnnotations_shouldReturnNil == 1)
    {
      _mapkit_fakeNil = [MEMORY[0x1E695DFB0] _mapkit_fakeNil];
    }

    else
    {
      _mapkit_fakeNil = MEMORY[0x1E695E0F0];
    }
  }

  return _mapkit_fakeNil;
}

BOOL __32__MKMapView_selectedAnnotations__block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(1026);
  selectedAnnotations_shouldReturnNil = !result;
  return result;
}

- (NSSet)annotationsInMapRect:(MKMapRect)mapRect
{
  v4 = [(MKAnnotationManager *)self->_annotationManager annotationsInMapRect:mapRect.origin.x, mapRect.origin.y, mapRect.size.width, mapRect.size.height];
  v5 = _filterLabelMarkersPredicate();
  v6 = [v4 filteredSetUsingPredicate:v5];

  if (annotationsInMapRect__once != -1)
  {
    dispatch_once(&annotationsInMapRect__once, &__block_literal_global_455);
  }

  if ((annotationsInMapRect__shouldIncludeUserLocation & 1) == 0 && [v6 containsObject:self->_userLocation])
  {
    v7 = [MEMORY[0x1E695DFA8] setWithSet:v6];
    [v7 removeObject:self->_userLocation];
    v8 = [MEMORY[0x1E695DFD8] setWithSet:v7];

    v6 = v8;
  }

  [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:16];

  return v6;
}

BOOL __34__MKMapView_annotationsInMapRect___block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(257);
  annotationsInMapRect__shouldIncludeUserLocation = result;
  return result;
}

- (CGRect)annotationVisibleRect
{
  annotationContainer = self->_annotationContainer;
  [(MKMapView *)self bounds];

  [(MKAnnotationContainerView *)annotationContainer convertRect:self fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_updateFramingUsingSetRegionBlock:(id)block
{
  blockCopy = block;
  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    [(MKMapView *)self _addSetRegionBlock:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)_performActionAsIfGoingToDefaultLocation:(id)location
{
  *&self->_flags |= 0x8000000000000uLL;
  (*(location + 2))(location, a2);
  *&self->_flags &= ~0x8000000000000uLL;
}

- (void)_displayWorld
{
  layer = [(MKMapView *)self layer];
  [layer doubleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v12 = CGRectGetWidth(v19) * 0.0000000037252903;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  if (v12 <= CGRectGetHeight(v20) * 0.0000000037252903)
  {
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    Height = CGRectGetHeight(v22);
  }

  else
  {
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    Height = CGRectGetWidth(v21);
  }

  v14 = vcvtmd_s64_f64(log2(Height * 0.0000000037252903) + 0.5);
  if (v14 >= -21)
  {
    v15 = v14 + 21;
  }

  else
  {
    v15 = 0;
  }

  [(MKMapView *)self _minimumZoomLevel];
  if (v15 <= v16)
  {
    [(MKMapView *)self _minimumZoomLevel];
    v15 = v17;
  }

  [(MKMapView *)self _goToCenterCoordinate:0 zoomLevel:30.0 animated:-40.0, v15];
}

- (void)calloutDidAppearForAnnotationView:(id)view inContainer:(id)container
{
  viewCopy = view;
  containerCopy = container;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v8 = _safeDelegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate2;
    }

    else
    {
      v11 = 0;
    }

    [(MKMapViewDelegate *)v11 _mapView:self calloutDidAppearForAnnotationView:viewCopy];
  }
}

- (void)annotationContainer:(id)container calloutPrimaryActionTriggeredForAnnotationView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    annotation = [viewCopy annotation];
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate;
    }

    else
    {
      v8 = 0;
    }

    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v15 = _safeDelegate2;
      }

      else
      {
        v15 = 0;
      }

      [(MKMapViewDelegate *)v15 mapView:self calloutPrimaryActionTriggeredForLabelMarker:annotation];
    }

LABEL_38:

    goto LABEL_39;
  }

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate3;
  }

  else
  {
    v9 = 0;
  }

  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = viewCopy;
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      annotation = _safeDelegate4;
      v13 = viewCopy;
    }

    else
    {
      annotation = 0;
    }

    [annotation mapView:self calloutPrimaryActionTriggeredForAnnotationView:v13];
    goto LABEL_38;
  }

LABEL_39:
}

- (void)annotationContainer:(id)container annotationView:(id)view calloutAccessoryControlTapped:(id)tapped
{
  viewCopy = view;
  tappedCopy = tapped;
  annotation = [viewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v12 = _safeDelegate;
    }

    else
    {
      v12 = 0;
    }

    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v18 = _safeDelegate2;
      }

      else
      {
        v18 = 0;
      }

      annotation2 = [viewCopy annotation];
      [(MKMapViewDelegate *)v18 mapView:self labelMarker:annotation2 calloutAccessoryControlTapped:tappedCopy];

LABEL_38:
    }
  }

  else
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate3 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate3 = [(MKMapView *)self _safeDelegate];
      }

      v13 = _safeDelegate3;
    }

    else
    {
      v13 = 0;
    }

    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate4 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate4 = [(MKMapView *)self _safeDelegate];
        }

        v18 = _safeDelegate4;
      }

      else
      {
        v18 = 0;
      }

      [(MKMapViewDelegate *)v18 mapView:self annotationView:viewCopy calloutAccessoryControlTapped:tappedCopy];
      goto LABEL_38;
    }
  }
}

- (void)annotationContainerDidDropPins:(id)pins
{
  pinsCopy = pins;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewDidAnimateInAnnotationViews:self];
  }
}

- (void)annotationContainerWillDropPins:(id)pins
{
  pinsCopy = pins;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewWillAnimateInAnnotationViews:self];
  }
}

- (double)annotationContainer:(id)container pinDropDistanceForCoordinate:(CLLocationCoordinate2D)coordinate maxDistance:(double *)distance
{
  [(MKMapView *)self convertCoordinate:self toPointToView:coordinate.latitude, coordinate.longitude];
  v8 = v7;
  if (distance)
  {
    [(MKMapView *)self bounds];
    *distance = v9;
  }

  return v8;
}

- (BOOL)annotationContainer:(id)container isAnnotationView:(id)view validForDisplayAtPoint:(CGPoint)point
{
  v5 = fabs(point.y) != INFINITY;
  if (fabs(point.x) == INFINITY || !v5)
  {
    return 0;
  }

  if (self->_cachedVenueIDWithFocus)
  {
    annotation = [view annotation];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [annotation venueID] == self->_cachedVenueIDWithFocus && self->_cachedDisplayedFloorOrdinalForVenueWithFocus != objc_msgSend(annotation, "venueFloorOrdinal"))
    {
      return 0;
    }
  }

  return 1;
}

- (void)annotationContainerDidFinishMapsTransitionExpanding:(id)expanding
{
  expandingCopy = expanding;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewDidFinishCalloutExpansion:self];
  }
}

- (void)annotationContainer:(id)container requestRemovingClusterAnnotationView:(id)view updateVisible:(BOOL)visible
{
  visibleCopy = visible;
  annotationManager = self->_annotationManager;
  annotation = [view annotation];
  [(MKAnnotationManager *)annotationManager removeAnnotation:annotation updateVisible:visibleCopy];
}

- (id)annotationContainer:(id)container requestAddingClusterForAnnotationViews:(id)views
{
  v22 = -1082130432;
  v6 = [(MKMapView *)self _flattenedAnnotationsForAnnotationViews:views maxDisplayPriority:&v22];
  firstObject = [views firstObject];
  clusterAnnotationView = [firstObject clusterAnnotationView];

  annotation = [clusterAnnotationView annotation];
  memberAnnotations = [annotation memberAnnotations];
  v11 = [memberAnnotations isEqualToArray:v6];

  if (v11)
  {
    v12 = clusterAnnotationView;
  }

  else
  {
    delegate = [(MKMapView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0 || (-[MKMapView delegate](self, "delegate"), v15 = objc_claimAutoreleasedReturnValue(), [v15 mapView:self clusterAnnotationForMemberAnnotations:v6], v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
    {
      v16 = [[MKClusterAnnotation alloc] initWithMemberAnnotations:v6];
    }

    v17 = [(MKMapView *)self viewForAnnotation:v16];
    if (!v17)
    {
      firstObject2 = [views firstObject];
      clusteringIdentifier = [firstObject2 clusteringIdentifier];
      [(MKClusterAnnotation *)v16 setClusteringIdentifier:clusteringIdentifier];

      v17 = [(MKAnnotationManager *)self->_annotationManager addRepresentationForAnnotation:v16];
      LODWORD(v20) = v22;
      [v17 setDisplayPriority:v20];
      [v17 _setHidden:1 forReason:4 animated:0];
    }

    v12 = v17;
  }

  return v12;
}

- (void)annotationContainer:(id)container scrollToRevealCalloutWithOffset:(CGPoint)offset annotationCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  y = offset.y;
  x = offset.x;
  containerCopy = container;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (*&self->_flags)
  {
    v15 = [handlerCopy copy];
    showCalloutAfterRegionChangeBlock = self->_showCalloutAfterRegionChangeBlock;
    self->_showCalloutAfterRegionChangeBlock = v15;
  }

  else
  {
    if (self->_userTrackingMode >= 1)
    {
      [(MKMapView *)self setUserTrackingMode:0 animated:0];
    }

    [(MKMapView *)self bounds];
    v17 = v68.origin.x;
    v18 = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
    if (fabs(x) <= CGRectGetWidth(v68) && (v69.origin.x = v17, v69.origin.y = v18, v69.size.width = width, v69.size.height = height, fabs(y) <= CGRectGetHeight(v69)))
    {
      [(MKMapView *)self _centerPoint];
      v37 = x + v36;
      [(MKMapView *)self _centerPoint];
      [(MKMapView *)self convertPoint:self toCoordinateFromView:v37, y + v38];
      cameraBoundary = self->_cameraBoundary;
      if (cameraBoundary && (v42 = v39, v43 = v40, ![(MKMapCameraBoundary *)cameraBoundary _containsCoordinate:?]))
      {
        [(MKMapCameraBoundary *)self->_cameraBoundary _clampedCoordinateForCoordinate:v42, v43];
        v49 = v48;
        v50 = v47;
        v51 = v42 - v48;
        if (v51 >= 0.0)
        {
          v52 = v51;
        }

        else
        {
          v52 = -v51;
        }

        if (v43 - v47 >= 0.0)
        {
          v53 = v43 - v47;
        }

        else
        {
          v53 = -(v43 - v47);
        }

        [(MKMapView *)self region];
        v56 = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{v49, v50, v54 + v52 * 2.0, v55 + v53 * 2.0}];
        vk_mapLayer = [(MKMapView *)self vk_mapLayer];
        vk_mapLayer2 = [(MKMapView *)self vk_mapLayer];
        [vk_mapLayer2 pitch];
        v60 = v59;
        vk_mapLayer3 = [(MKMapView *)self vk_mapLayer];
        [vk_mapLayer3 yaw];
        v63 = v62;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __104__MKMapView_annotationContainer_scrollToRevealCalloutWithOffset_annotationCoordinate_completionHandler___block_invoke_2;
        v64[3] = &unk_1E76C9DD8;
        v65 = v14;
        [vk_mapLayer setMapRegion:v56 pitch:v64 yaw:v60 duration:v63 completion:0.150000006];
      }

      else
      {
        [(MKMapView *)self convertCoordinate:self toPointToView:latitude, longitude];
        [(VKMapView *)self->_mapView panWithOffset:1 relativeToScreenPoint:v14 animated:-x duration:-y completionHandler:v44, v45, 0.150000006];
      }
    }

    else
    {
      VKLocationCoordinate2DMake();
      v22 = v21;
      v24 = v23;
      mapView = self->_mapView;
      [(VKMapView *)mapView altitude];
      v27 = v26;
      [(VKMapView *)self->_mapView yaw];
      v29 = v28;
      [(VKMapView *)self->_mapView pitch];
      v31 = v30;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __104__MKMapView_annotationContainer_scrollToRevealCalloutWithOffset_annotationCoordinate_completionHandler___block_invoke;
      v66[3] = &unk_1E76C9DD8;
      v67 = v14;
      [(VKMapView *)mapView setCenterCoordinate:0 altitude:v66 yaw:v22 pitch:v24 duration:v27 timingCurve:v29 completion:v31, 0.150000006];
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v33 = _safeDelegate;
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v46 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapViewDidScrollToRevealAnnotationCallout:self];
    }
  }
}

uint64_t __104__MKMapView_annotationContainer_scrollToRevealCalloutWithOffset_annotationCoordinate_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __104__MKMapView_annotationContainer_scrollToRevealCalloutWithOffset_annotationCoordinate_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)annotationContainerShouldAlignToPixels:(id)pixels
{
  if (([(VKMapView *)self->_mapView iconsShouldAlignToPixels]& 1) != 0)
  {
    return 1;
  }

  v4 = MEMORY[0x1E69DD250];

  return [v4 _mapkit_shouldAdoptImplicitAnimationParameters];
}

- (BOOL)annotationContainerIsRotated:(id)rotated
{
  if (self->_userTrackingMode == 2)
  {
    return 1;
  }

  [(VKMapView *)self->_mapView presentationYaw:rotated];
  return v6 != 0.0;
}

- (CGRect)visibleCenteringRectInView:(id)view
{
  viewCopy = view;
  [(MKMapView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MKMapView *)self _edgeInsets];
  [viewCopy convertRect:self fromView:{v6 + v16, v8 + v13, v10 - (v16 + v14), v12 - (v13 + v15)}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)visibleRectInView:(id)view
{
  viewCopy = view;
  [(MKMapView *)self bounds];
  [viewCopy convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)applicationWillTerminate:(id)terminate
{
  [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:[(MKMapView *)self _canShowFlyover]];
  basicMapView = self->_basicMapView;

  [(MKBasicMapView *)basicMapView updateStatsForTrafficEnabledTime];
}

- (void)applicationDidBecomeActive:(id)active
{
  [(MKMapView *)self setSuspended:0];
  [(MKBasicMapView *)self->_basicMapView setMapModeStartTime:CFAbsoluteTimeGetCurrent()];
  [(MKBasicMapView *)self->_basicMapView setTrafficStartTime:CFAbsoluteTimeGetCurrent()];
  [MEMORY[0x1E69A1598] reportDailyUsageCountType:154];

  [(MKMapView *)self _geoapLogMapViewEngagementIfRequired];
}

- (void)applicationWillResignActive:(id)active
{
  [(MKMapView *)self setSuspended:1];
  [(MKMapView *)self _dropDraggingAnnotationView:1];
  [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:[(MKMapView *)self _canShowFlyover]];
  basicMapView = self->_basicMapView;

  [(MKBasicMapView *)basicMapView updateStatsForTrafficEnabledTime];
}

- (void)mapLayerNavigationCameraDidReturnToDefaultZoom
{
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v4 = _safeDelegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v7 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewNavigationCameraDidReturnToDefaultZoom:self];
  }
}

- (void)mapLayerNavigationCameraDidLeaveDefaultZoom
{
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v4 = _safeDelegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v7 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewNavigationCameraDidLeaveDefaultZoom:self];
  }
}

- (void)mapLayerNavigationCameraHasStoppedPanning
{
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v4 = _safeDelegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v7 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewNavigationCameraHasStoppedPanning:self];
  }
}

- (void)mapLayerNavigationCameraHasStartedPanning
{
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v4 = _safeDelegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v7 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewNavigationCameraHasStartedPanning:self];
  }
}

- (void)mapLayerCanZoomOutDidChange:(BOOL)change
{
  changeCopy = change;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v6 = _safeDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self canZoomOutDidChange:changeCopy];
  }
}

- (void)mapLayerCanZoomInDidChange:(BOOL)change
{
  changeCopy = change;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v6 = _safeDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self canZoomInDidChange:changeCopy];
  }
}

- (void)mapLayerMuninAvailabilityDidChange:(int64_t)change
{
  if (change >= 3)
  {
    if (!self)
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    self->_cachedLookAroundAvailability = change;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v5 = _safeDelegate;
  v6 = 0;
LABEL_10:
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    [(MKMapViewDelegate *)v8 mapView:self didChangeLookAroundAvailability:self->_cachedLookAroundAvailability];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKMapViewDidChangeLookAroundAvailabilityNotification" object:self];
}

- (void)mapLayerCanEnter3DModeDidChange:(BOOL)change
{
  changeCopy = change;
  isPitchEnabled = [(MKMapView *)self isPitchEnabled];
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    [(MKMapViewDelegate *)v10 mapView:self canEnter3DModeDidChange:isPitchEnabled & changeCopy];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKMapViewCanEnter3DDidChangeNotification" object:self];
}

- (void)mapLayerDidBecomePitched:(BOOL)pitched
{
  pitchedCopy = pitched;
  [(MKMapView *)self _updateIconsShouldAlignToPixels];
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v6 = _safeDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v9 = _safeDelegate2;
    }

    else
    {
      v9 = 0;
    }

    [(MKMapViewDelegate *)v9 mapView:self didBecomePitched:pitchedCopy];
  }

  if ([(VKMapView *)self->_mapView canShowFlyover])
  {
    [(MKMapView *)self mapLayer:self->_mapView showingFlyoverDidChange:pitchedCopy];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKMapViewPitchStateDidChangeNotification" object:self];
}

- (id)mapLayerPresentationForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  userLocation = [(MKMapView *)self userLocation];

  if (userLocation == annotationCopy)
  {
    userLocationView = [(MKMapView *)self userLocationView];
    _userLocationProxy = [userLocationView _userLocationProxy];
  }

  else
  {
    _userLocationProxy = 0;
  }

  return _userLocationProxy;
}

- (void)mapLayerDidFinishInitialTrackingAnimation
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKMapViewDidFinishInitialUserTrackingModeAnimationNotification" object:self];

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v8 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewDidFinishInitialUserTrackingModeAnimation:self];
  }
}

- (void)mapLayerWillPerformZoomBounceAnimation
{
  zoomBounceFeedbackGenerator = self->_zoomBounceFeedbackGenerator;
  if (!zoomBounceFeedbackGenerator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCCF0]);
    v5 = self->_zoomBounceFeedbackGenerator;
    self->_zoomBounceFeedbackGenerator = v4;

    zoomBounceFeedbackGenerator = self->_zoomBounceFeedbackGenerator;
  }

  [(UINotificationFeedbackGenerator *)zoomBounceFeedbackGenerator notificationOccurred:2];
}

- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated
{
  flags = self->_flags;
  *&self->_flags = flags & 0xFFFFFFF7FFFFFBFFLL | 0x400;
  [(MKMapView *)self _didChangeRegionMidstream:0];
  *&self->_flags &= ~0x400uLL;
  [(MKMapView *)self _clearFixedUserLocation];
  if (self->_showCalloutAfterRegionChangeBlock)
  {
    v5 = MEMORY[0x1A58E9F30]();
    showCalloutAfterRegionChangeBlock = self->_showCalloutAfterRegionChangeBlock;
    self->_showCalloutAfterRegionChangeBlock = 0;

    v5[2](v5);
  }

  if ([(MKMapView *)self _automaticallySnapsToNorth]&& (flags & 0x100000000000000) != 0)
  {

    [(MKMapView *)self _snapToNorthIfNecessary];
  }
}

- (void)mapLayer:(id)layer location:(id)location isInHikingContextualRegion:(BOOL)region
{
  locationIsInHikingContextCallback = self->_locationIsInHikingContextCallback;
  if (locationIsInHikingContextCallback)
  {
    regionCopy = region;
    var1 = location.var1;
    var0 = location.var0;
    v12 = MEMORY[0x1A58E9F30](locationIsInHikingContextCallback, a2, layer);
    v10 = self->_locationIsInHikingContextCallback;
    self->_locationIsInHikingContextCallback = 0;

    v11 = CLLocationCoordinate2DMake(var0, var1);
    v12[2](v12, regionCopy, v11.latitude, v11.longitude);
  }
}

- (void)mapLayer:(id)layer locationInHikingToolTipRegion:(unint64_t)region
{
  WeakRetained = objc_loadWeakRetained(&self->_safeDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_safeDelegate);
    [v8 mapView:self didGetHikingToolTipRegionId:region];
  }
}

- (void)mapLayer:(id)layer venueWithFocusDidChange:(id)change building:(id)building
{
  changeCopy = change;
  buildingCopy = building;
  if ([changeCopy venueID])
  {
    v8 = changeCopy;
  }

  else
  {
    if (!self->_cachedVenueIDWithFocus)
    {
      goto LABEL_19;
    }

    v8 = 0;
    buildingCopy = 0;
  }

  changeCopy = v8;
  if ([v8 venueID] != self->_cachedVenueIDWithFocus)
  {
    self->_cachedVenueIDWithFocus = [changeCopy venueID];
    self->_cachedDisplayedFloorOrdinalForVenueWithFocus = [(VKMapView *)self->_mapView displayedFloorOrdinalForVenueBuilding:buildingCopy];
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v10 = _safeDelegate;
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v13 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didChangeFocusedVenue:changeCopy focusedBuilding:buildingCopy];
  }

LABEL_19:
}

- (void)mapLayer:(id)layer flyoverModeWillChange:(int)change
{
  v4 = *&change;
  layerCopy = layer;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    [(MKMapViewDelegate *)v10 mapView:self flyoverModeWillChange:v4];
  }
}

- (void)mapLayer:(id)layer flyoverModeDidChange:(int)change
{
  v4 = *&change;
  layerCopy = layer;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    [(MKMapViewDelegate *)v10 mapView:self flyoverModeDidChange:v4];
  }
}

- (void)mapLayer:(id)layer showingFlyoverDidChange:(BOOL)change
{
  changeCopy = change;
  layerCopy = layer;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    [(MKMapViewDelegate *)v10 mapView:self showingFlyoverDidChange:changeCopy];
  }
}

- (void)mapLayer:(id)layer canShowFlyoverDidChange:(BOOL)change
{
  changeCopy = change;
  [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:!change];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v7 = _safeDelegate;
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v10 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self canShowFlyoverDidChange:changeCopy];
  }
}

- (void)mapLayerDidDraw:(id)draw
{
  drawCopy = draw;
  if (self->_shouldUseTapeworm)
  {
    GEOInsertTapeworm();
  }

  flags = self->_flags;
  *&self->_flags = flags & 0xFFFFFFFBFFFFFFFFLL;
  if ((flags & 0x800000) == 0)
  {
    if ([(MKMapView *)self _mapViewHasUpdatedCamera])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [(MKMapView *)self _updateScrollContainerView:0 forReason:v5];
  }

  if (self->_selectAnnotationViewAfterRedrawBlock)
  {
    v6 = MEMORY[0x1A58E9F30]();
    selectAnnotationViewAfterRedrawBlock = self->_selectAnnotationViewAfterRedrawBlock;
    self->_selectAnnotationViewAfterRedrawBlock = 0;

    v6[2](v6);
  }

  if ((*(&self->_flags + 4) & 0x80) != 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v10 = @"\n| external zoom: %.1f";
    }

    else
    {
      v10 = @"\n| e: %.1f";
    }

    v11 = [drawCopy consoleString:userInterfaceIdiom == 1];
    [(MKMapView *)self _zoomLevel];
    v13 = [v11 stringByAppendingFormat:v10, v12];

    [(UITextView *)self->_vectorKitDebugView setText:v13];
    [(MKMapView *)self _updateVectorKitConsoleFrameWithEdgeInsets];
  }
}

- (void)mapLayer:(id)layer flyoverTourLabelDidChange:(id)change
{
  layerCopy = layer;
  changeCopy = change;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v8 = _safeDelegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate2;
    }

    else
    {
      v11 = 0;
    }

    [(MKMapViewDelegate *)v11 mapView:self flyoverTourLabelDidChange:changeCopy];
  }
}

- (void)mapLayer:(id)layer didStopFlyoverTourCompleted:(BOOL)completed
{
  completedCopy = completed;
  layerCopy = layer;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    [(MKMapViewDelegate *)v10 mapView:self didStopFlyoverTourCompleted:completedCopy];
  }
}

- (void)mapLayerWillStartFlyoverTour:(id)tour
{
  tourCopy = tour;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewWillStartFlyoverTour:self];
  }
}

- (void)mapLayer:(id)layer didUpdateVerticalYawTo:(double)to
{
  if (self->_verticalYawOverride != to)
  {
    self->_verticalYawOverride = to;
    [(MKMapView *)self _updateCompassVisibility];
  }
}

- (void)mapLayer:(id)layer selectedLabelMarkerDidChangeState:(id)state
{
  stateCopy = state;
  _selectedLabelMarker = [(MKMapView *)self _selectedLabelMarker];

  v6 = stateCopy;
  if (_selectedLabelMarker == stateCopy)
  {
    v7 = self->_selectedLabelMarkerState;
    v8 = [MKMapViewLabelMarkerState stateForLabelMarker:stateCopy];
    selectedLabelMarkerState = self->_selectedLabelMarkerState;
    self->_selectedLabelMarkerState = v8;

    if ([(MKMapViewLabelMarkerState *)v7 isVisible]|| ![(MKMapViewLabelMarkerState *)self->_selectedLabelMarkerState isVisible])
    {
      balloonBehavior = [(MKMapViewLabelMarkerState *)v7 balloonBehavior];
      if (balloonBehavior != [(MKMapViewLabelMarkerState *)self->_selectedLabelMarkerState balloonBehavior])
      {
        v11 = [(MKAnnotationManager *)self->_annotationManager representationForAnnotation:stateCopy];
        viewRepresentation = [v11 viewRepresentation];

        [(MKAnnotationContainerView *)self->_annotationContainer updateCalloutStateForSelectedAnnotationView:viewRepresentation];
      }
    }

    else
    {
      [(MKAnnotationManager *)self->_annotationManager _annotationDidChangeState:stateCopy animated:1];
    }

    v6 = stateCopy;
  }
}

- (void)mapLayer:(id)layer selectedLabelMarkerWillDisappear:(id)disappear
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(MKMapView *)self _deselectLabelMarkerAnimated:1];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MKMapView_mapLayer_selectedLabelMarkerWillDisappear___block_invoke;
    block[3] = &unk_1E76CDB38;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)mapLayer:(id)layer labelMarkerDidChangeState:(id)state
{
  v5 = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation:layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
    [selectedAnnotationRepresentation setNeedsLayout];
  }
}

- (void)mapLayer:(id)layer selectedLabelMarkerDidCompleteLayout:(id)layout
{
  v5 = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation:layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
    [selectedAnnotationRepresentation _showDeferredSelectionAccessoryForReasonIfNeeded:1];
    [selectedAnnotationRepresentation setNeedsLayout];
  }
}

- (void)mapLayerLabelsDidLayout:(id)layout
{
  layoutCopy = layout;
  labelsDidLayoutCallback = self->_labelsDidLayoutCallback;
  if (labelsDidLayoutCallback)
  {
    dispatch_async(MEMORY[0x1E69E96A0], labelsDidLayoutCallback);
  }

  selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selectedAnnotationRepresentation2 = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
    [selectedAnnotationRepresentation2 _showDeferredSelectionAccessoryForReasonIfNeeded:2];
  }
}

- (void)mapLayerDidChangeSceneState:(id)state withState:(unint64_t)withState
{
  stateCopy = state;
  flags = self->_flags;
  if (withState == 1 || !(*&self->_flags & 0x20 | withState))
  {
    *&self->_flags = flags | 0x20;
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v11 = _safeDelegate;
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v14 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapViewWillStartRenderingMap:self];
    }

    if (withState == 1)
    {
      v15 = MKGetMKMapViewLog();
      mEMORY[0x1E69A22E8] = v15;
      mapViewDidFinishRenderingSignpostID = self->_mapViewDidFinishRenderingSignpostID;
      if (mapViewDidFinishRenderingSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, mEMORY[0x1E69A22E8], OS_SIGNPOST_EVENT, mapViewDidFinishRenderingSignpostID, "mapViewDidFinishRenderingRequiredData", &unk_1A30FEA0E, buf, 2u);
      }

      goto LABEL_39;
    }
  }

  else if (withState - 2 <= 2)
  {
    if ((flags & 0x10) == 0)
    {
      *&self->_flags = flags | 0x10;
      [(MKBasicMapView *)self->_basicMapView setHasRenderedSomething:1];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MKMapViewDidFinishInitialRenderNotification" object:self];

      [(MKMapView *)self _updateShouldDisplayEffects];
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v18 = _safeDelegate3;
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v21 = _safeDelegate4;
      [(MKMapViewDelegate *)_safeDelegate4 mapViewDidFinishRenderingMap:self fullyRendered:withState < 3];

      v22 = MKGetMKMapViewLog();
      v23 = v22;
      v24 = self->_mapViewDidFinishRenderingSignpostID;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *v25 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v23, OS_SIGNPOST_EVENT, v24, "mapViewDidFinishRenderingMapFullyRendered", &unk_1A30FEA0E, v25, 2u);
      }
    }

    *&self->_flags &= ~0x20uLL;
    mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
    if (mEMORY[0x1E69A22E8])
    {
      [mEMORY[0x1E69A22E8] mapView:self viewPortUpdated:withState == 3 showingGrid:[(MKMapView *)self _geoCoordinateRegionForOffline]];
    }

LABEL_39:
  }
}

- (void)mapLayerDidFailLoadingTiles:(id)tiles withError:(id)error
{
  tilesCopy = tiles;
  errorCopy = error;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v8 = _safeDelegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate2;
    }

    else
    {
      v11 = 0;
    }

    [(MKMapViewDelegate *)v11 mapViewDidFailLoadingMap:self withError:errorCopy];
  }
}

- (void)mapLayerDidFinishLoadingTiles:(id)tiles
{
  tilesCopy = tiles;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewDidFinishLoadingMap:self];
  }
}

- (void)mapLayerDidStartLoadingTiles:(id)tiles
{
  tilesCopy = tiles;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
    }

    else
    {
      v8 = 0;
    }

    [(MKMapViewDelegate *)v8 mapViewWillStartLoadingMap:self];
  }
}

- (void)_snapToTrueNorthAndCallBack:(BOOL)back
{
  backCopy = back;
  v5 = self->_mapView;
  if (backCopy && [(MKMapView *)self userTrackingMode]== MKUserTrackingModeFollowWithHeading)
  {
    [(MKMapView *)self _setUserTrackingMode:1 animated:1 fromTrackingButton:0];
  }

  *&self->_flags &= ~0x4000000000000uLL;
  [(VKMapView *)v5 setYaw:1 animated:0.0];
}

- (void)snapToNorth:(id)north
{
  v4 = self->_mapView;
  if ([(MKMapView *)self userTrackingMode]== MKUserTrackingModeFollowWithHeading)
  {
    [(MKMapView *)self setUserTrackingMode:1 animated:1];
  }

  *&self->_flags &= ~0x4000000000000uLL;
  [(VKMapView *)v4 setYaw:1 animated:self->_verticalYawOverride];
}

- (id)_commonVisibilityAnimation:(BOOL)animation
{
  animationCopy = animation;
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v5 = v4;
  if (animationCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (animationCopy)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (animationCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v4 set_mapkit_ID:v6];
  *&v9 = v7;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v5 setFromValue:v10];

  *&v11 = v8;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [v5 setToValue:v12];

  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:*MEMORY[0x1E69797E8]];
  if (_MKLinkedOnOrAfterReleaseSet(2824))
  {
    if (animationCopy)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.430000007;
    }

    [MEMORY[0x1E69DD250] _mapkit_currentAnimationDuration];
    [v5 setDuration:v13 * v14];
  }

  _mapkit_currentAnimationTimingFunction = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
  [v5 setTimingFunction:_mapkit_currentAnimationTimingFunction];

  return v5;
}

- (void)_setCompassVisible:(BOOL)visible animationAllowed:(BOOL)allowed force:(BOOL)force
{
  if (self->_compassVisible != visible)
  {
    allowedCopy = allowed;
    visibleCopy = visible;
    if (!self->_compassVisible || (*(&self->_flags + 3) & 0x20) == 0 || force)
    {
      v8 = !_MKLinkedOnOrAfterReleaseSet(2824);
      _mapkit_shouldAdoptImplicitAnimationParameters = v8 & allowedCopy;
      if (!v8 && allowedCopy)
      {
        _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
      }

      self->_compassVisible = visibleCopy;
      if (visibleCopy)
      {
        superview = [(MKCompassView *)self->_compassView superview];

        if (!superview)
        {
          v11 = _MKLinkedOnOrAfterReleaseSet(3595);
          compassView = [(MKMapView *)self compassView];
          _controlStackView = compassView;
          if (v11)
          {
            [compassView setTranslatesAutoresizingMaskIntoConstraints:0];

            _controlStackView = [(MKMapView *)self _controlStackView];
            compassView2 = [(MKMapView *)self compassView];
            [_controlStackView addArrangedSubview:compassView2];
          }

          else
          {
            [(MKMapView *)self addSubview:compassView];
          }
        }

        [(MKMapView *)self _updateControlsPosition:_mapkit_shouldAdoptImplicitAnimationParameters];
        if (_mapkit_shouldAdoptImplicitAnimationParameters)
        {
          goto LABEL_19;
        }

        layer = [(MKCompassView *)self->_compassView layer];
        [layer removeAnimationForKey:@"controlVisibility"];
      }

      else
      {
        [(MKMapView *)self _updateControlsPosition:_mapkit_shouldAdoptImplicitAnimationParameters];
        if (_mapkit_shouldAdoptImplicitAnimationParameters)
        {
LABEL_19:
          v15 = [(MKMapView *)self _commonVisibilityAnimation:visibleCopy];
          layer2 = [(MKCompassView *)self->_compassView layer];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __55__MKMapView__setCompassVisible_animationAllowed_force___block_invoke;
          v18[3] = &unk_1E76CCF40;
          v19 = visibleCopy;
          v18[4] = self;
          [layer2 _mapkit_addAnimation:v15 forKey:@"controlVisibility" completion:v18];

          return;
        }

        [(MKCompassView *)self->_compassView removeFromSuperview];

        [(MKMapView *)self _updateControlsPosition:0];
      }
    }
  }
}

uint64_t __55__MKMapView__setCompassVisible_animationAllowed_force___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if ((*(result + 40) & 1) == 0)
    {
      v3 = [*(*(result + 32) + 688) layer];
      [v3 removeAnimationForKey:@"controlVisibility"];

      v4 = *(*(v2 + 32) + 688);

      return [v4 removeFromSuperview];
    }
  }

  return result;
}

- (void)_setPitchButtonVisible:(BOOL)visible animationAllowed:(BOOL)allowed
{
  if (self->_pitchButtonVisible != visible)
  {
    allowedCopy = allowed;
    visibleCopy = visible;
    self->_pitchButtonVisible = visible;
    v7 = +[MKSystemController sharedInstance];
    supportsExtendedGestures = [v7 supportsExtendedGestures];

    if (supportsExtendedGestures)
    {
      pitchButton = self->_pitchButton;
      if (visibleCopy)
      {
        superview = [(MKPitchButton *)pitchButton superview];

        if (!superview)
        {
          userTrackingVisible = self->_userTrackingVisible;
          _controlStackView = [(MKMapView *)self _controlStackView];
          _pitchButton = [(MKMapView *)self _pitchButton];
          [_controlStackView insertArrangedSubview:_pitchButton atIndex:userTrackingVisible];

          [(MKMapView *)self _updateControlsPosition:allowedCopy];
        }
      }

      else
      {

        [(MKPitchButton *)pitchButton removeFromSuperview];
      }
    }
  }
}

- (void)_setTrackingButtonVisible:(BOOL)visible animationAllowed:(BOOL)allowed
{
  if (self->_userTrackingVisible != visible)
  {
    allowedCopy = allowed;
    visibleCopy = visible;
    self->_userTrackingVisible = visible;
    v7 = +[MKSystemController sharedInstance];
    supportsExtendedGestures = [v7 supportsExtendedGestures];

    if (supportsExtendedGestures)
    {
      trackingButton = self->_trackingButton;
      if (visibleCopy)
      {
        superview = [(MKUserTrackingButton *)trackingButton superview];

        if (!superview)
        {
          _controlStackView = [(MKMapView *)self _controlStackView];
          _userTrackingButton = [(MKMapView *)self _userTrackingButton];
          [_controlStackView insertArrangedSubview:_userTrackingButton atIndex:0];

          [(MKMapView *)self _updateControlsPosition:allowedCopy];
        }
      }

      else
      {

        [(MKUserTrackingButton *)trackingButton removeFromSuperview];
      }
    }
  }
}

- (void)_handleCompassTap:(id)tap
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:1040 onTarget:-[MKMapView currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];

  [(MKMapView *)self _snapToTrueNorthAndCallBack:1];
}

- (void)_updateCompassPositionClassic
{
  v73 = *MEMORY[0x1E69E9840];
  [(MKMapView *)self _edgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMapView *)self bounds];
  v14 = v13;
  v16 = v15;
  v17 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] != v11 || v17 != v12)
  {
    v19 = v11;
    v20 = v12;
    rect_8 = v6;
    rect_24 = v10;
    v68 = v4;
    v69 = v8;
    [(MKCompassView *)self->_compassView bounds:*MEMORY[0x1E695F060]];
    rect = v21;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    rect_16 = self->_compassInsets.top;
    bottom = self->_compassInsets.bottom;
    left = self->_compassInsets.left;
    right = self->_compassInsets.right;
    [(MKMapView *)self _compassDiameter];
    v29 = v25 == v28;
    v30 = v27 == v28;
    if (v29 && v30)
    {
      v31 = v27;
    }

    else
    {
      v31 = v28;
    }

    if (v29 && v30)
    {
      v32 = v25;
    }

    else
    {
      v32 = v28;
    }

    _compassInsetEdges = [(MKMapView *)self _compassInsetEdges];
    v70 = v32;
    v67 = v23;
    v34 = v14;
    v35 = v16;
    v36 = v19;
    v37 = v20;
    if ((_compassInsetEdges & 2) != 0)
    {
      v39 = rect_8 + left + CGRectGetMinX(*&v34);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v34);
      v74.origin.x = rect;
      v74.origin.y = v23;
      v74.size.width = v32;
      v74.size.height = v31;
      v39 = MaxX - CGRectGetWidth(v74) - right - rect_24;
    }

    v40 = v31;
    v41 = v14;
    v42 = v16;
    v43 = v19;
    v44 = v20;
    if (_compassInsetEdges)
    {
      v47 = v68 + rect_16 + CGRectGetMinY(*&v41);
      v46 = v70;
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v41);
      v75.origin.x = v39;
      v75.origin.y = v67;
      v46 = v70;
      v75.size.width = v70;
      v75.size.height = v31;
      v47 = MaxY - CGRectGetHeight(v75) - bottom - v69;
    }

    if (*(&self->_flags + 5))
    {
      x = v39;
      y = v47;
      height = v40;
      width = v46;
    }

    else
    {
      [(UIView *)self _mapkit_translateRect:_compassInsetEdges & 5 ifNeededFromSingleEdge:v39, v47, v46, v40];
      x = v76.origin.x;
      y = v76.origin.y;
      v50 = v40;
      width = v76.size.width;
      height = v76.size.height;
      if (CGRectIsNull(v76))
      {
        v53 = v46;
        v54 = v50;
        [(UIView *)self _mapkit_translateRect:_compassInsetEdges & 0xA ifNeededFromSingleEdge:v39, v47, v53, v50];
        x = v55;
        y = v56;
        width = v57;
        height = v58;
      }

      else
      {
        v54 = v50;
      }

      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      if (CGRectIsNull(v77))
      {
        v59 = MKGetMKMapViewLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v72 = _compassInsetEdges;
          _os_log_impl(&dword_1A2EA0000, v59, OS_LOG_TYPE_DEBUG, "Could not inset compass from edges %lu", buf, 0xCu);
        }

        x = v39;
        y = v47;
        width = v70;
        height = v54;
      }
    }

    [(MKCompassView *)self->_compassView setFrame:x, y, width, height];
  }
}

- (void)_updateControlsPosition:(BOOL)position
{
  if (_MKLinkedOnOrAfterReleaseSet(3595))
  {

    [(MKMapView *)self _updateStackViewPosition];
  }

  else
  {

    [(MKMapView *)self _updateCompassPositionClassic];
  }
}

- (id)compassView
{
  compassView = self->_compassView;
  if (!compassView)
  {
    [(MKMapView *)self _compassDiameter];
    v5 = [[MKCompassView alloc] initWithFrame:0.0, 0.0, v4, v4];
    v6 = self->_compassView;
    self->_compassView = v5;

    [(MKCompassView *)self->_compassView setCompassViewSize:self->_compassViewSize style:self->_compassViewStyle];
    [(MKCompassView *)self->_compassView setOverrideUserInterfaceStyle:[(MKMapView *)self _controlsUserInterfaceStyleOverride]];
    [(MKMapGestureController *)self->_gestureController setCompassView:self->_compassView];
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleCompassTap_];
    [v7 setNumberOfTapsRequired:1];
    [v7 setDelegate:self];
    [(MKCompassView *)self->_compassView addGestureRecognizer:v7];

    compassView = self->_compassView;
  }

  return compassView;
}

- (void)_setControlSize:(unint64_t)size
{
  self->_controlSize = size;
  [(MKMapView *)self _setUserTrackingControlSize:?];
  [(MKMapView *)self _setPitchButtonControlSize:size];

  [(MKMapView *)self _setScaleControlSize:size];
}

- (void)_setControlBackgroundStyle:(unint64_t)style
{
  self->_controlBackgroundStyle = style;
  [(MKMapView *)self _setUserTrackingButtonBackgroundStyle:?];

  [(MKMapView *)self _setPitchButtonBackgroundStyle:style];
}

- (void)_setScaleControlSize:(unint64_t)size
{
  if (self->_scaleControlSize != size)
  {
    self->_scaleControlSize = size;
    scaleView = [(MKMapView *)self scaleView];
    [scaleView _setControlSize:size];
  }
}

- (void)_setPitchButtonControlSize:(unint64_t)size
{
  if (self->_pitchButtonControlSize != size)
  {
    self->_pitchButtonControlSize = size;
    _pitchButton = [(MKMapView *)self _pitchButton];
    [_pitchButton _setControlSize:size];
  }
}

- (void)_setPitchButtonBackgroundStyle:(unint64_t)style
{
  if (self->_pitchButtonBackgroundStyle != style)
  {
    self->_pitchButtonBackgroundStyle = style;
    if (self->_pitchButton)
    {
      _pitchButton = [(MKMapView *)self _pitchButton];
      [_pitchButton _setBackgroundStyle:style];
    }
  }
}

- (void)_setUserTrackingControlSize:(unint64_t)size
{
  if (self->_userTrackingControlSize != size)
  {
    self->_userTrackingControlSize = size;
    _userTrackingButton = [(MKMapView *)self _userTrackingButton];
    [_userTrackingButton _setControlSize:size];
  }
}

- (void)_setUserTrackingButtonBackgroundStyle:(unint64_t)style
{
  if (self->_userTrackingButtonBackgroundStyle != style)
  {
    self->_userTrackingButtonBackgroundStyle = style;
    _userTrackingButton = [(MKMapView *)self _userTrackingButton];
    [_userTrackingButton setBackgroundStyle:style];
  }
}

- (id)_userTrackingButton
{
  trackingButton = self->_trackingButton;
  if (!trackingButton)
  {
    v4 = [MKUserTrackingButton userTrackingButtonWithMapView:self];
    v5 = self->_trackingButton;
    self->_trackingButton = v4;

    [(MKUserTrackingButton *)self->_trackingButton setBackgroundStyle:self->_userTrackingButtonBackgroundStyle];
    [(MKUserTrackingButton *)self->_trackingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    trackingButton = self->_trackingButton;
  }

  return trackingButton;
}

- (void)setPitchButtonVisibility:(MKFeatureVisibility)pitchButtonVisibility
{
  if (self->_pitchButtonVisibility != pitchButtonVisibility)
  {
    self->_pitchButtonVisibility = pitchButtonVisibility;
    [(MKPitchButton *)self->_pitchButton setVisibility:?];

    [(MKMapView *)self _updatePitchButtonVisibility];
  }
}

- (void)setShowsUserTrackingButton:(BOOL)showsUserTrackingButton
{
  if (self->_showsUserTrackingButton != showsUserTrackingButton)
  {
    self->_showsUserTrackingButton = showsUserTrackingButton;
    [(MKMapView *)self _updateTrackingVisibility];
  }
}

- (double)presentationYaw
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  [_mapLayer presentationYaw];
  v4 = v3;

  return v4;
}

- (void)_setCompassSuppressedForFloorPicker:(BOOL)picker
{
  if (self->_compassSuppressedForFloorPicker != picker)
  {
    self->_compassSuppressedForFloorPicker = picker;
    [(MKMapView *)self _updateCompassVisibility];
  }
}

- (void)setCompassEnabled:(BOOL)enabled
{
  if (self->_showsCompass != enabled)
  {
    [(MKMapView *)self setShowsCompass:?];
  }
}

- (void)_showOrHideScaleIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  _canShowControls = [(MKMapView *)self _canShowControls];
  v6 = _canShowControls;
  scaleVisibility = self->_scaleVisibility;
  if (scaleVisibility)
  {
    if (scaleVisibility == 2)
    {
      LODWORD(v8) = 0;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      LODWORD(v8) = 0;
    }
  }

  else
  {
    flags = self->_flags;
    v9 = (flags >> 22) & 1;
    v8 = (flags >> 57) & 1;
  }

  if (v8 | v9)
  {
    v11 = _canShowControls;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 && [(MKMapView *)self _shouldDisplayScaleForCurrentRegion];
  if (self->_scaleUpdateNotificationObserversCount)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MKMapViewShouldUpdateScaleNotification" object:self];
  }

  if (self->_scaleVisible != v12)
  {
    self->_scaleVisible = v12;
    scaleView = [(MKMapView *)self scaleView];
    v15 = scaleView;
    if (v12)
    {
      superview = [scaleView superview];

      if (!superview)
      {
        [(MKMapView *)self addSubview:v15];
        [(MKMapView *)self _updateScalePosition];
        [(MKMapView *)self _updateScale];
      }
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__MKMapView__showOrHideScaleIfNecessary___block_invoke;
    v29[3] = &unk_1E76CDB88;
    v29[4] = self;
    v17 = v15;
    v30 = v17;
    v18 = MEMORY[0x1A58E9F30](v29);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __41__MKMapView__showOrHideScaleIfNecessary___block_invoke_2;
    v26 = &unk_1E76CA760;
    v28 = v12;
    v19 = v17;
    v27 = v19;
    v20 = MEMORY[0x1A58E9F30](&v23);
    v21 = v20;
    if (necessaryCopy)
    {
      v22 = 0.349999994;
      if (v6)
      {
        v22 = 0.699999988;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v20 options:v18 animations:v22 completion:{0.0, v23, v24, v25, v26}];
    }

    else
    {
      (*(v20 + 16))(v20);
      v18[2](v18, 1);
    }
  }
}

uint64_t __41__MKMapView__showOrHideScaleIfNecessary___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(*(result + 32) + 744) & 1) == 0)
    {
      return [*(result + 40) removeFromSuperview];
    }
  }

  return result;
}

uint64_t __41__MKMapView__showOrHideScaleIfNecessary___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

- (BOOL)_canShowAppleLogo
{
  [(MKMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(MKMapView *)self _edgeInsets];
  v8 = v7;
  v11 = v6 - (v9 + v10);
  v13 = v12 + 10.0 + self->_appleLogoImageWidth + self->_attributionInsets.left;
  [(MKAttributionLabel *)self->_attributionLabel bounds];
  v14 = v4 - (v8 + v13 + CGRectGetWidth(v17) + self->_attributionInsets.right + 10.0);
  Integer = GEOConfigGetInteger();
  return v11 >= GEOConfigGetInteger() && v14 >= Integer;
}

- (BOOL)_shouldDisplayScaleForCurrentRegion
{
  if (_shouldDisplayScaleForCurrentRegion_onceToken != -1)
  {
    dispatch_once(&_shouldDisplayScaleForCurrentRegion_onceToken, &__block_literal_global_344);
  }

  v3 = _shouldDisplayScaleForCurrentRegion__grQuality;
  if ([(MKMapView *)self _isPitched])
  {
    return 0;
  }

  if (v3 != 100)
  {
    return 0;
  }

  [(MKMapView *)self bounds];
  MidX = CGRectGetMidX(v8);
  [(MKMapView *)self bounds];
  MidY = CGRectGetMidY(v9);
  [(MKMapView *)self _distanceFromPoint:self toPoint:0 fromView:MidX withPrecision:MidY, MidX + 1.0, MidY];
  result = v6 <= 7500.0;
  if (v6 <= 0.0)
  {
    return 0;
  }

  return result;
}

void __48__MKMapView__shouldDisplayScaleForCurrentRegion__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  _shouldDisplayScaleForCurrentRegion__grQuality = [v0 _graphicsQuality];
}

- (id)scaleView
{
  if (!self->_scaleView)
  {
    v3 = objc_alloc_init(MKScaleView);
    scaleView = self->_scaleView;
    self->_scaleView = v3;

    [(MKScaleView *)self->_scaleView setUsedInternallyByMapView:1];
  }

  mapType = [(MKMapView *)self mapType];
  [(MKScaleView *)self->_scaleView setMapType:mapType];
  _showsNightMode = [(MKMapView *)self _showsNightMode];
  v7 = mapType - 1 < 4 || mapType == 107;
  v8 = _showsNightMode || v7;
  [(MKScaleView *)self->_scaleView setUseLightText:v8];
  v9 = self->_scaleView;

  return v9;
}

- (void)_setScaleVisibility:(int64_t)visibility
{
  if (self->_scaleVisibility != visibility)
  {
    self->_scaleVisibility = visibility;
    [(MKMapView *)self _showOrHideScaleIfNecessary:0];
  }
}

- (void)setShowsScale:(BOOL)showsScale
{
  v3 = showsScale;
  v5 = _MKLinkedOnOrAfterReleaseSet(1791);
  v6 = 1;
  if (v3)
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = !v3;
  }

  else
  {
    v7 = v6;
  }

  [(MKMapView *)self _setScaleVisibility:v7];
}

- (BOOL)showsScale
{
  v3 = _MKLinkedOnOrAfterReleaseSet(1791);
  v4 = 2;
  if (v3)
  {
    v4 = 0;
  }

  return self->_scaleVisibility == v4;
}

- (BOOL)canShowZoom
{
  _canShowControls = [(MKMapView *)self _canShowControls];
  if (_canShowControls)
  {

    LOBYTE(_canShowControls) = [(MKMapView *)self isZoomEnabled];
  }

  return _canShowControls;
}

- (BOOL)canShowPitch
{
  _canShowControls = [(MKMapView *)self _canShowControls];
  if (_canShowControls)
  {

    LOBYTE(_canShowControls) = [(MKMapView *)self isPitchEnabled];
  }

  return _canShowControls;
}

- (BOOL)canPossiblyShowCompassForInternalControl:(BOOL)control
{
  controlCopy = control;
  _roomForCompass = [(MKMapView *)self _roomForCompass];
  if (_roomForCompass)
  {
    v6 = !controlCopy || [(MKMapView *)self _canShowControls];
    if (canPossiblyShowCompassForInternalControl__onceToken != -1)
    {
      dispatch_once(&canPossiblyShowCompassForInternalControl__onceToken, &__block_literal_global_341);
    }

    if (canPossiblyShowCompassForInternalControl__alwaysShowInHeadingMode != 1 || [(MKMapView *)self userTrackingMode]!= MKUserTrackingModeFollowWithHeading)
    {
      [(VKMapView *)self->_mapView presentationYaw];
      if (!v6)
      {
        LOBYTE(_roomForCompass) = 0;
        return _roomForCompass;
      }

      v8 = v7;
      if ([(MKMapView *)self userTrackingMode]!= MKUserTrackingModeFollowWithHeading)
      {
        LOBYTE(_roomForCompass) = fabs(v8) > 2.0;
        return _roomForCompass;
      }
    }

    LOBYTE(_roomForCompass) = 1;
  }

  return _roomForCompass;
}

BOOL __54__MKMapView_canPossiblyShowCompassForInternalControl___block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(257);
  canPossiblyShowCompassForInternalControl__alwaysShowInHeadingMode = !result;
  return result;
}

- (id)_labelMarkersInCurrentViewportForType:(int)type
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  labelMarkers = [vk_mapLayer labelMarkers];

  v8 = [labelMarkers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(labelMarkers);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 featureType] == type)
        {
          [array addObject:v12];
        }
      }

      v9 = [labelMarkers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)_labelMarkersInCurrentViewport
{
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  labelMarkers = [vk_mapLayer labelMarkers];

  return labelMarkers;
}

- (void)_sizeDidChangeWithCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  [(MKMapView *)self _updateContentBounds:coordinate.latitude];
  [(MKMapView *)self _updateScrollContainerView:1 forReason:1];
  [(MKMapView *)self _updateCompassVisibility];
  [(MKMapView *)self _updateTrackingVisibility];
  [(MKMapView *)self _updatePitchButtonVisibility];
  [(MKMapView *)self _showOrHideScaleIfNecessary:1];
  [(MKMapView *)self _updateAppleLogoVisibility];
  if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
  {
    v4 = MEMORY[0x1E69DD250];
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__MKMapView__sizeDidChangeWithCenterCoordinate___block_invoke;
    v6[3] = &unk_1E76CDB38;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__MKMapView__sizeDidChangeWithCenterCoordinate___block_invoke_2;
    v5[3] = &unk_1E76CA670;
    v5[4] = self;
    [v4 animateWithDuration:v6 animations:v5 completion:?];
  }

  else
  {
    [(MKAnnotationContainerView *)self->_annotationContainer stopSuppressingUpdates];
  }

  *&self->_flags &= ~0x800000uLL;
  [(MKMapView *)self _performWhenSizedBlocks];
  if (([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters] & 1) == 0)
  {
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:1];
  }

  if (self->_forceLayoutOnBoundsChange)
  {
    [(VKMapView *)self->_mapView _forceLayoutForSuspensionSnapShot];
  }
}

uint64_t __48__MKMapView__sizeDidChangeWithCenterCoordinate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 464) stopSuppressingUpdates];
  [*(*(a1 + 32) + 464) updateAnnotationViewsForReason:1];
  v2 = *(*(a1 + 32) + 464);

  return [v2 suppressUpdates];
}

- (void)_selectUserLocationTypeWithDeltaZoomLevel:(double)level
{
  if (level >= 3.0)
  {
    [(MKMapView *)self _clearFixedUserLocation];
  }

  else
  {
    [(MKMapView *)self _fixUserLocationFromPresentationValue];
  }
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = MKMapView;
  [(MKMapView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->_contentView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_attributionLabel)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_compassView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_controlStackView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)_insertSubview:(id)subview
{
  v18 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (!superview)
  {
    v6 = [(MKMapView *)self _viewIndexForSubview:subviewCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    subviews = [(UIView *)self->_scrollContainerView subviews];
    v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(subviews);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([(MKMapView *)self _viewIndexForSubview:v12]> v6)
          {
            [(UIView *)self->_scrollContainerView insertSubview:subviewCopy belowSubview:v12];

            goto LABEL_12;
          }
        }

        v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(UIView *)self->_scrollContainerView addSubview:subviewCopy];
  }

LABEL_12:
}

- (int)_viewIndexForSubview:(id)subview
{
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 2;
    }

    else if (self->_annotationContainer == subviewCopy)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_fixUserLocationFromPresentationValue
{
  userLocationView = [(MKMapView *)self userLocationView];
  superview = [userLocationView superview];

  if (superview)
  {
    annotationContainer = self->_annotationContainer;
    userLocationView2 = [(MKMapView *)self userLocationView];
    [(MKAnnotationContainerView *)annotationContainer coordinateForAnnotationView:userLocationView2];
    v8 = v7;
    v10 = v9;

    if (fabs(v10) <= 180.0 && fabs(v8) <= 90.0)
    {
      userLocation = [(MKMapView *)self userLocation];
      location = [userLocation location];

      v12 = objc_alloc(MEMORY[0x1E6985C40]);
      [location horizontalAccuracy];
      v14 = v13;
      timestamp = [location timestamp];
      v16 = [v12 initWithCoordinate:timestamp altitude:v8 horizontalAccuracy:v10 verticalAccuracy:0.0 timestamp:{v14, 0.0}];

      userLocation = self->_userLocation;
      if (!userLocation)
      {
        selfCopy = self;
        v19 = objc_alloc_init(MKUserLocation);
        v20 = selfCopy->_userLocation;
        selfCopy->_userLocation = v19;

        userLocation = selfCopy->_userLocation;
      }

      v21 = userLocation;
      [(MKUserLocation *)v21 setFixedLocation:v16];
    }
  }
}

- (void)showAnnotations:(NSArray *)annotations animated:(BOOL)animated
{
  v4 = animated;
  v61 = annotations;
  v6 = [(NSArray *)v61 count];
  v7 = v61;
  if (v6)
  {
    [(MKMapView *)self addAnnotations:v61];
    v8 = [MEMORY[0x1E69A2200] _mapkit_mapRegionEnclosingAnnotations:v61];
    GEOMapRectForMapRegion();
    v12 = v9;
    v13 = v10;
    v15 = v14;
    v16 = v11;
    if (v14 == 0.0 || v11 == 0.0)
    {
      MKCoordinateForMapPoint(*&v9);
      GEOMapPointsPerMeterAtLatitude();
      v18 = v12 == INFINITY && v13 == INFINITY;
      v19 = v17 * -100.0;
      v20 = v12 + v19;
      v21 = v13 + v19;
      v22 = v15 - v19 * 2.0;
      v23 = v16 - v19 * 2.0;
      if (v18)
      {
        v13 = INFINITY;
      }

      else
      {
        v16 = v23;
        v15 = v22;
        v13 = v21;
      }

      if (v18)
      {
        v12 = INFINITY;
      }

      else
      {
        v12 = v20;
      }
    }

    [v8 centerLat];
    v25 = v24;
    [v8 centerLng];
    v27 = CLLocationCoordinate2DMake(v25, v26);
    cameraBoundary = [(MKMapView *)self cameraBoundary];
    v29 = v16;
    v30 = v15;
    v31 = v13;
    v32 = v12;
    if (cameraBoundary)
    {
      v33 = cameraBoundary;
      cameraBoundary2 = [(MKMapView *)self cameraBoundary];
      v35 = [cameraBoundary2 _containsCoordinate:{v27.latitude, v27.longitude}];

      v29 = v16;
      v30 = v15;
      v31 = v13;
      v32 = v12;
      if ((v35 & 1) == 0)
      {
        cameraBoundary3 = [(MKMapView *)self cameraBoundary];
        [cameraBoundary3 _clampedCoordinateForCoordinate:{v27.latitude, v27.longitude}];
        v38 = v37;
        v40 = v39;

        v41 = MKTilePointForCoordinate(v38, v40, 21.0);
        v43 = vabdd_f64(v41, v12);
        v44 = vabdd_f64(v41, v15 + v12);
        if (v43 <= v44)
        {
          v43 = v44;
        }

        v45 = vabdd_f64(v42, v13);
        v46 = vabdd_f64(v42, v16 + v13);
        if (v45 <= v46)
        {
          v45 = v46;
        }

        v47 = v43 + v43;
        if (v47 <= v15)
        {
          v30 = v15;
        }

        else
        {
          v30 = v47;
        }

        if (v45 + v45 <= v16)
        {
          v29 = v16;
        }

        else
        {
          v29 = v45 + v45;
        }

        v32 = v41 - v30 * 0.5;
        v31 = v42 - v29 * 0.5;
      }
    }

    [(MKAnnotationContainerView *)self->_annotationContainer accessoryPadding];
    v58 = v49;
    v59 = v48;
    v57 = v50;
    v60 = v51;
    [(MKMapView *)self mapRectThatFits:v32 edgePadding:v31, v30, v29, v48, v49, v50, v51];
    v64.origin.x = v12;
    v64.origin.y = v13;
    v64.size.width = v15;
    v64.size.height = v16;
    v52 = MKMapRectContainsRect(v63, v64);
    if (v52)
    {
      v53 = v32;
    }

    else
    {
      v53 = v12;
    }

    if (v52)
    {
      v54 = v31;
    }

    else
    {
      v54 = v13;
    }

    if (v52)
    {
      v55 = v30;
    }

    else
    {
      v55 = v15;
    }

    if (v52)
    {
      v56 = v29;
    }

    else
    {
      v56 = v16;
    }

    [(MKMapView *)self setVisibleMapRect:v4 edgePadding:v53 animated:v54, v55, v56, v59, v58, v57, v60];
    [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:11];

    v7 = v61;
  }
}

- (void)set_startEffectsTimer:(id)timer
{
  timerCopy = timer;
  startEffectsTimer = self->_startEffectsTimer;
  if (startEffectsTimer != timerCopy)
  {
    v7 = timerCopy;
    [(NSTimer *)startEffectsTimer invalidate];
    objc_storeStrong(&self->_startEffectsTimer, timer);
    timerCopy = v7;
  }
}

- (id)beginStoppingEffects
{
  [(MKMapView *)self _stopEffects];
  v3 = [[_MKMapViewSuspendedEffectsToken alloc] initWithOwner:self];

  return v3;
}

- (void)_updateScrollContainerView:(BOOL)view forReason:(int64_t)reason
{
  [(MKMapView *)self _zoomScale];
  v8 = v7;
  [(MKMapView *)self _centerMapPoint];
  v10 = v8 * v9;
  v12 = v8 * v11;
  [(MKMapView *)self bounds];
  v14 = v10 - v13 * 0.5;
  [(MKMapView *)self bounds];
  v16 = v12 - v15 * 0.5;
  [(VKMapView *)self->_mapView edgeInsets];
  LODWORD(v10) = v17;
  [(VKMapView *)self->_mapView edgeInsets];
  v19 = ((*&v10 - v18) * 0.5) - v16;
  [(VKMapView *)self->_mapView edgeInsets];
  LODWORD(v16) = v20;
  [(VKMapView *)self->_mapView edgeInsets];
  v22 = ((*&v16 - v21) * 0.5) - v14;
  if ([(VKMapView *)self->_mapView iconsShouldAlignToPixels])
  {
    window = [(MKMapView *)self window];
    if (!window || (v24 = window, -[MKMapView window](self, "window"), v25 = objc_claimAutoreleasedReturnValue(), [v25 screen], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "scale"), v28 = v27, v26, v25, v24, v28 == 1.0))
    {
      v22 = round(v22);
      v19 = round(v19);
    }

    else
    {
      v29 = floor(v22);
      v22 = v29 + round((v22 - v29) * v28) / v28;
      v30 = floor(v19);
      v19 = v30 + round((v19 - v30) * v28) / v28;
    }
  }

  if (!view)
  {
    v31 = +[MKThreadContext currentContext];
    [v31 _CA_setDisableActions:1];
  }

  layer = [(UIView *)self->_scrollContainerView layer];
  [layer setDoubleBounds:{0.0, 0.0, v8 * 268435456.0, v8 * 268435456.0}];
  [layer setAnchorPoint:{0.0, 0.0}];
  [layer setDoublePosition:{v22, v19}];
  [(MKMapView *)self _centerMapPoint];
  v34 = v33;
  v36 = v35;
  v37 = v8 * v33;
  v38 = v8 * v35;
  [(VKMapView *)self->_mapView presentationYaw];
  v40 = v39 * -0.0174532925;
  v41 = *(MEMORY[0x1E69792E8] + 80);
  *&v55.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v55.m33 = v41;
  v42 = *(MEMORY[0x1E69792E8] + 112);
  *&v55.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v55.m43 = v42;
  v43 = *(MEMORY[0x1E69792E8] + 16);
  *&v55.m11 = *MEMORY[0x1E69792E8];
  *&v55.m13 = v43;
  v44 = *(MEMORY[0x1E69792E8] + 48);
  *&v55.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v55.m23 = v44;
  CATransform3DTranslate_(&off_1A30F6000, &v55, v37, v38, 0.0);
  CATransform3DRotate_(v45, &v55, v40, 0.0, 0.0, 1.0);
  CATransform3DTranslate_(v46, &v55, -(v8 * v34), -(v8 * v36), 0.0);
  v54 = v55;
  [layer setTransform:&v54];
  if (!view)
  {
    v47 = +[MKThreadContext currentContext];
    [v47 _CA_setDisableActions:0];
  }

  v48 = +[MKThreadContext currentContext];
  [v48 _CA_setDisableActions:1];

  [(MKAnnotationContainerView *)self->_annotationContainer setAnnotationViewsRotationRadians:0 animation:-v40];
  annotationContainer = self->_annotationContainer;
  [(VKMapView *)self->_mapView pitch];
  [(MKAnnotationContainerView *)annotationContainer setMapPitchRadians:v50 * 0.0174532925];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:reason];
  layer2 = [(MKOverlayContainerView *)self->_overlayContainer layer];
  [layer2 setAnchorPoint:{0.0, 0.0}];
  CATransform3DMakeScale(&v53, v8, v8, 1.0);
  v54 = v53;
  [layer2 setTransform:&v54];
  [layer2 setDoublePosition:{0.0, 0.0}];
  [(MKOverlayContainerView *)self->_overlayContainer setMapZoomScale:v8];
  v52 = +[MKThreadContext currentContext];
  [v52 _CA_setDisableActions:0];
}

- (double)_boundedZoomLevel:(double)level
{
  [(MKMapView *)self _minimumZoomLevel];
  if (v5 >= level)
  {
    [(MKMapView *)self _minimumZoomLevel];
    level = v6;
  }

  [(MKMapView *)self _maximumZoomLevel];
  if (level < v7)
  {
    return level;
  }

  [(MKMapView *)self _maximumZoomLevel];
  return result;
}

- (void)checkIfCoordinate:(CLLocationCoordinate2D)coordinate isInHikingContextualRegionWithCompletionHandler:(id)handler
{
  v5 = MEMORY[0x1A58E9F30](handler, a2);
  locationIsInHikingContextCallback = self->_locationIsInHikingContextCallback;
  self->_locationIsInHikingContextCallback = v5;

  VKLocationCoordinate2DMake();
  v8 = v7;
  v10 = v9;
  _mapLayer = [(MKMapView *)self _mapLayer];
  [_mapLayer requestHikingContextualRegionDoesIntersectForLocation:{v8, v10}];
}

- (BOOL)isWithinHikingBufferRegion
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  isCameraInHikingBufferRegion = [_mapLayer isCameraInHikingBufferRegion];

  return isCameraInHikingBufferRegion;
}

- (BOOL)isWithinHikingBoundary
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  isCameraInHikingBoundary = [_mapLayer isCameraInHikingBoundary];

  return isCameraInHikingBoundary;
}

- (int64_t)labelTextSize
{
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  labelScaleFactor = [vk_mapLayer labelScaleFactor];
  if (labelScaleFactor > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1A30F7430[labelScaleFactor];
  }

  return v4;
}

- (void)setLabelTextSize:(int64_t)size
{
  v5 = size != 2;
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  v7 = vk_mapLayer;
  if (size == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = v5;
  }

  if (size == 1)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  [vk_mapLayer setLabelScaleFactor:v8];

  vk_mapLayer2 = [(MKMapView *)self vk_mapLayer];
  [vk_mapLayer2 setShieldSize:v9];
}

- (void)_annotationViewDragStateChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo objectForKey:@"oldValue"];
  integerValue = [v5 integerValue];

  v7 = [userInfo objectForKey:@"newValue"];
  integerValue2 = [v7 integerValue];

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v10 = _safeDelegate;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v13 = _safeDelegate2;
    }

    else
    {
      v13 = 0;
    }

    object = [changedCopy object];
    [(MKMapViewDelegate *)v13 mapView:self annotationView:object didChangeDragState:integerValue2 fromOldState:integerValue];
  }

  if (!integerValue2)
  {
    if ((*&self->_flags & 4) == 0)
    {
      object2 = [changedCopy object];
      annotationManager = self->_annotationManager;
      annotation = [object2 annotation];
      [(MKAnnotationManager *)annotationManager selectAnnotation:annotation animated:1];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    object3 = [changedCopy object];
    [defaultCenter removeObserver:self name:@"MKAnnotationViewDragStateChangedNotification" object:object3];
  }
}

- (void)_setShouldLoadFallbackTiles:(BOOL)tiles
{
  flags = self->_flags;
  if (((((flags & 0x40000000000000) == 0) ^ tiles) & 1) == 0)
  {
    v4 = 0x40000000000000;
    if (!tiles)
    {
      v4 = 0;
    }

    *&self->_flags = flags & 0xFFBFFFFFFFFFFFFFLL | v4;
    [(MKMapView *)self _updateFallbackTileLoading];
  }
}

- (void)_setShouldAnimatePositionWithRouteMatch:(BOOL)match
{
  v3 = 0x200000000000;
  if (!match)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)_setShouldSplitRouteLine:(BOOL)line
{
  v4 = 0x100000000000;
  if (!line)
  {
    v4 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFEFFFFFFFFFFFLL | v4;
  if (line)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v6 = _safeDelegate;
    if (objc_opt_respondsToSelector())
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v8 = _safeDelegate2;
      v9 = [(MKMapViewDelegate *)_safeDelegate2 mapViewCurrentRouteMatch:self];

      if (v9)
      {
        mapView = self->_mapView;
        userLocationView = [(MKMapView *)self userLocationView];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          _userLocationProxy = [userLocationView _userLocationProxy];
        }

        else
        {
          _userLocationProxy = 0;
        }

        [(VKMapView *)mapView setRouteLineSplitAnnotation:_userLocationProxy];

        return;
      }
    }

    else
    {
    }
  }

  v12 = self->_mapView;

  [(VKMapView *)v12 setRouteLineSplitAnnotation:0];
}

- (void)_setLocationPulseEnabled:(BOOL)enabled
{
  v3 = 0x80000000000;
  if (!enabled)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFF7FFFFFFFFFFLL | v3;
  [(MKMapView *)self _updateShouldDisplayEffects];
}

- (void)_didEndZoom
{
  flags = self->_flags;
  *&self->_flags = flags & 0xFFFFFFFFFF9FFFFFLL;
  [(MKMapView *)self _updateIconsShouldAlignToPixels];
  [(MKMapView *)self _showOrHideScaleIfNecessary:1];
  if ((flags & 0x200000) == 0)
  {
    return;
  }

  *&self->_flags &= ~0x400uLL;
  userLocationView = [(MKMapView *)self userLocationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = userLocationView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_8;
    }

    _mkUserLocationView = [userLocationView _mkUserLocationView];
  }

  v5 = _mkUserLocationView;
LABEL_8:

  [v5 setZoomDirection:0];
}

- (void)_willStartZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  v5 = 0x400000;
  if (zoom)
  {
    v5 = 6291456;
  }

  *&self->_flags = v5 | *&self->_flags & 0xFFFFFFFFFF9FFFFFLL;
  [(MKMapView *)self _showOrHideScaleIfNecessary:0];
  if (zoomCopy)
  {

    [(MKMapView *)self _updateIconsShouldAlignToPixels];
  }
}

- (void)_didChangeRegionMidstream:(BOOL)midstream
{
  if (self->_cartographicConfiguration.projection == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (*(&self->_flags + 4) >> 3) & 1;
  }

  if (_MKLinkedOnOrAfterReleaseSet(2824))
  {
    [(MKMapCamera *)self->_camera _mapViewStateChanged];
  }

  if (midstream)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *&self->_flags &= 0xFEFFFFFFFFFFFFFELL;
    [(MKMapView *)self _updateCameraState];
    [(MKMapView *)self _updateIconsShouldAlignToPixels];
    [(MKMapView *)self _updateRotationAttributes];
    [(MKMapView *)self _updateEffects];
    [(MKOverlayContainerView *)self->_overlayContainer addAndRemoveOverlayViews];
  }

  [(MKAnnotationManager *)self->_annotationManager updateVisibleAnnotations];
LABEL_11:
  [(MKMapView *)self _showOrHideScaleIfNecessary:1];
  [(MKMapView *)self _updateScale];
  [(MKMapView *)self _updateCompassVisibility];
  [(MKMapView *)self _updateTrackingVisibility];
  v8 = self->_userTrackingMode && ([(MKUserLocation *)self->_userLocation location], v6 = [(MKMapView *)self _updatePitchButtonVisibility];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v10 = _safeDelegate;
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (!v8)
    {
      goto LABEL_40;
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v13 = _safeDelegate2;
    v14 = [(MKMapViewDelegate *)_safeDelegate2 _mapViewCanChangeUserTrackingModeWhenRegionDidChange:self];

    if ((v14 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (!v8)
  {
    goto LABEL_40;
  }

  if (![(MKMapView *)self _isUserLocationViewCentered:30.0])
  {
    selfCopy2 = self;
    v16 = 0;
    v17 = 0;
    goto LABEL_39;
  }

  if (self->_userTrackingMode == 2 && ![(MKMapView *)self _isUserLocationViewCentered:5.0])
  {
    selfCopy2 = self;
    v16 = 1;
    v17 = 1;
LABEL_39:
    [(MKMapView *)selfCopy2 _setUserTrackingMode:v16 animated:v17 fromTrackingButton:0];
  }

LABEL_40:
  [(MKMapView *)self _postDidChangeZoomNotificationIfNeeded];
  if (!midstream)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v19 = _safeDelegate3;
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v22 = _safeDelegate4;
      [(MKMapViewDelegate *)_safeDelegate4 mapView:self regionDidChangeAnimated:(*&self->_flags >> 11) & 1];
    }
  }
}

- (void)_willChangeRegionAnimated:(BOOL)animated
{
  v4 = 2049;
  if (!animated)
  {
    v4 = 1;
  }

  *&self->_flags = v4 | *&self->_flags & 0xFFFFFFFFFFFFF7FELL;
  [(MKMapView *)self _dropDraggingAnnotationView:1];
  [(MKMapView *)self _updateIconsShouldAlignToPixels];
  layer = [(MKMapView *)self layer];
  v6 = MEMORY[0x1E696AD98];
  layer2 = [(MKMapView *)self layer];
  v8 = [layer2 valueForKey:@"__mapkit_regionSentinel"];
  v9 = [v6 numberWithInteger:{objc_msgSend(v8, "integerValue") ^ 1}];
  [layer setValue:v9 forKey:@"__mapkit_regionSentinel"];

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v11 = _safeDelegate;
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v14 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self regionWillChangeAnimated:(*&self->_flags >> 11) & 1];
  }
}

- (void)toggleLocationConsole:(id)console
{
  if ([console state] == 3)
  {
    v4 = [(MKMapView *)self isLocationConsoleEnabled]^ 1;

    [(MKMapView *)self setLocationConsoleEnabled:v4];
  }
}

- (CGRect)_currentEnvironmentLabelFrame
{
  [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setShowsCurrentEnvironmentName:(BOOL)name
{
  flags = self->_flags;
  if (((((flags & 0x800000000000) == 0) ^ name) & 1) == 0)
  {
    v5 = 0x800000000000;
    if (!name)
    {
      v5 = 0;
    }

    *&self->_flags = flags & 0xFFFF7FFFFFFFFFFFLL | v5;
    if (name)
    {
      v6 = [_MKEnvironmentLabel alloc];
      v7 = [(_MKEnvironmentLabel *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      debugCurrentEnvironmentLabel = self->_debugCurrentEnvironmentLabel;
      self->_debugCurrentEnvironmentLabel = v7;

      [(UIView *)self->_contentView addSubview:self->_debugCurrentEnvironmentLabel];

      [(MKMapView *)self _updateEnvironmentLabelText];
    }

    else
    {
      [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel removeFromSuperview];
      v9 = self->_debugCurrentEnvironmentLabel;
      self->_debugCurrentEnvironmentLabel = 0;
    }
  }
}

- (void)_updateEnvironmentLabelText
{
  if ((*(&self->_flags + 5) & 0x80) != 0)
  {
    modernManager = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup = [modernManager activeTileGroup];

    v5 = MEMORY[0x1E696AEC0];
    environment = [activeTileGroup environment];
    v7 = [v5 stringWithFormat:@"%@ - %i", environment, objc_msgSend(activeTileGroup, "identifier")];

    if ([(MKMapView *)self _isUsingDevResourceStyleSheet])
    {
      v8 = [v7 stringByAppendingString:@"- DevResource Style Sheet"];

      v7 = v8;
    }

    [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel setText:v7];
    [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel sizeToFit];
    [(MKMapView *)self _currentEnvironmentNameFrame];
    [(_MKEnvironmentLabel *)self->_debugCurrentEnvironmentLabel setFrame:?];
  }
}

- (void)_setDebugConsoleAdditionalInfoProvider:(id)provider
{
  if (self->_debugConsoleAdditionalInfoProvider != provider)
  {
    v4 = [provider copy];
    debugConsoleAdditionalInfoProvider = self->_debugConsoleAdditionalInfoProvider;
    self->_debugConsoleAdditionalInfoProvider = v4;
  }
}

- (id)_debugConsoleAdditionalInfoProvider
{
  v2 = MEMORY[0x1A58E9F30](self->_debugConsoleAdditionalInfoProvider, a2);

  return v2;
}

- (void)_handleSelectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(VKMapView *)self->_mapView enableDebugLabelHighlighting])
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView debugHighlightLabelAtPoint:x, y];
    return;
  }

  [(MKAttributionLabel *)self->_attributionLabel frame];
  v43.x = x;
  v43.y = y;
  if (!CGRectContainsPoint(v45, v43) && (([(UIImageView *)self->_attributionBadgeView frame], v44.x = x, v44.y = y, !CGRectContainsPoint(v46, v44)) || !self->_attributionBadgeClickable) || ([(MKMapView *)self urlForMapAttribution], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(MKMapView *)self convertPoint:self->_annotationContainer toView:x, y];
    v10 = v9;
    v12 = v11;
    v13 = [MKAnnotationContainerView _annotationViewForSelectionAtPoint:"_annotationViewForSelectionAtPoint:avoidCurrent:maxDistance:" avoidCurrent:1 maxDistance:?];
    v14 = v13;
    if (v13)
    {
      [v13 _selectionPriority];
      if (v15 >= 250.0)
      {
        v16 = 0;
        goto LABEL_24;
      }
    }

    v16 = [(VKMapView *)self->_mapView labelMarkerForSelectionAtPoint:(*&self->_flags & 0x4000000000) == 0 selectableLabelsOnly:v10, v12];
    featureAnnotation = [v16 featureAnnotation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = featureAnnotation;
      annotationView = [v18 annotationView];
      isEnabled = [annotationView isEnabled];

      if (isEnabled)
      {
        annotationView2 = [v18 annotationView];

        v14 = annotationView2;
      }

LABEL_16:
      v16 = 0;
      v22 = 0;
      if (!v14)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    if ((*(&self->_flags + 4) & 0x60) != 0)
    {
      v28 = 1;
      goto LABEL_32;
    }

    if (featureAnnotation)
    {
      allAnnotations = [(_MKCustomFeatureStore *)self->_annotationsCustomFeatureStore allAnnotations];
      featureAnnotation2 = [v16 featureAnnotation];
      v28 = [allAnnotations containsObject:featureAnnotation2];
    }

    else
    {
LABEL_31:
      v28 = 0;
    }

LABEL_32:
    selectionEnabled = [(MKLabelSelectionFilter *)self->_labelSelectionFilter selectionEnabled];
    if (v16 && selectionEnabled)
    {
      featureAnnotation3 = [v16 featureAnnotation];
      if (featureAnnotation3)
      {

        if ((v28 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if ((([(MKLabelSelectionFilter *)self->_labelSelectionFilter isLabelSelectable:v16]| v28) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!v28)
    {
      goto LABEL_16;
    }

    if (v14 && v16)
    {

      goto LABEL_43;
    }

    if (!v14)
    {
      if (!v16)
      {
        v22 = 0;
        goto LABEL_17;
      }

LABEL_43:
      v41 = v16;
      if (([v41 isSelectable] & 1) != 0 || (*(&self->_flags + 4) & 0x40) != 0)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate = [(MKMapView *)self _safeDelegate];
        }

        v36 = _safeDelegate;
        v37 = objc_opt_respondsToSelector();

        if ((v37 & 1) == 0)
        {
          goto LABEL_62;
        }

        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v39 = _safeDelegate2;
        v40 = [(MKMapViewDelegate *)_safeDelegate2 mapView:self shouldSelectLabelMarker:v41];

        if (v40)
        {
LABEL_62:
          if ([v41 selectionType] == 1)
          {
            -[MKMapView _startFlyoverTourAnimation:duration:completion:](self, "_startFlyoverTourAnimation:duration:completion:", [v41 animationID], 0, 0.0);
          }

          else
          {
            [(MKMapView *)self _selectLabelMarker:v41 animated:1];
          }

          v14 = v41;
          goto LABEL_25;
        }
      }

      v22 = v41;
LABEL_17:
      v41 = v22;
      selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
      v14 = selectedAnnotationRepresentation;
      if (selectedAnnotationRepresentation)
      {
        viewRepresentation = [selectedAnnotationRepresentation viewRepresentation];
        v25 = viewRepresentation;
        annotationManager = self->_annotationManager;
        if (viewRepresentation)
        {
          annotation = [viewRepresentation annotation];
          [(MKAnnotationManager *)annotationManager deselectAnnotation:annotation animated:1];
        }

        else
        {
          [(MKAnnotationManager *)annotationManager deselectAnnotation:v14 animated:1];
        }
      }

      goto LABEL_25;
    }

LABEL_24:
    v29 = self->_annotationManager;
    annotation2 = [v14 annotation];
    [(MKAnnotationManager *)v29 selectAnnotation:annotation2 animated:1];

    v41 = v16;
LABEL_25:

    goto LABEL_26;
  }

  v41 = v7;
  v8 = +[MKSystemController sharedInstance];
  [v8 openURL:v41 completionHandler:0];

LABEL_26:
}

- (BOOL)accessoryViewContainsPoint:(CGPoint)point
{
  [(MKAnnotationContainerView *)self->_annotationContainer convertPoint:self fromView:point.x, point.y];
  annotationContainer = self->_annotationContainer;

  return [(MKAnnotationContainerView *)annotationContainer accessoryContainsPoint:?];
}

- (BOOL)calloutViewContainsPoint:(CGPoint)point
{
  [(MKAnnotationContainerView *)self->_annotationContainer convertPoint:self fromView:point.x, point.y];
  annotationContainer = self->_annotationContainer;

  return [(MKAnnotationContainerView *)annotationContainer calloutContainsPoint:?];
}

- (void)_dropDraggingAnnotationView:(BOOL)view
{
  flags = self->_flags;
  if ((flags & 0x10000000000000) != 0)
  {
    v11 = v3;
    v9 = 4;
    if (!view)
    {
      v9 = 0;
    }

    *&self->_flags = flags & 0xFFEFFFFFFFFFFFFBLL | v9;
    [(MKAnnotationContainerView *)self->_annotationContainer _dropDraggingAnnotationViewAnimated:!view, v4, v11, v5];
    annotationManager = self->_annotationManager;

    [(MKAnnotationManager *)annotationManager setDraggedAnnotation:0];
  }
}

- (id)_annotationAtPoint:(CGPoint)point avoidCurrent:(BOOL)current
{
  currentCopy = current;
  [(MKMapView *)self convertPoint:self->_annotationContainer toView:point.x, point.y];
  v6 = [MKAnnotationContainerView _annotationViewForSelectionAtPoint:"_annotationViewForSelectionAtPoint:avoidCurrent:maxDistance:" avoidCurrent:currentCopy maxDistance:?];
  v7 = v6;
  if (v6)
  {
    annotation = [v6 annotation];
  }

  else
  {
    annotation = 0;
  }

  return annotation;
}

- (void)_setAlwaysShowHeadingIndicatorIfSupported:(BOOL)supported
{
  if (supported)
  {
    _shouldSupportAlwaysShowHeadingIndicator = [(MKMapView *)self _shouldSupportAlwaysShowHeadingIndicator];
    p_flags = &self->_flags;
    flags = self->_flags;
    if ((_shouldSupportAlwaysShowHeadingIndicator ^ ((flags & 0x10000) == 0)))
    {
      return;
    }

    v7 = 0x10000;
    if (!_shouldSupportAlwaysShowHeadingIndicator)
    {
      v7 = 0;
    }
  }

  else
  {
    p_flags = &self->_flags;
    flags = self->_flags;
    if ((flags & 0x10000) == 0)
    {
      return;
    }

    v7 = 0;
  }

  *p_flags = flags & 0xFFFFFFFFFFFEFFFFLL | v7;

  [(MKMapView *)self _updateShowHeadingIndicator];
}

- (void)_setShowHeadingIndicatorForStepping:(BOOL)stepping
{
  flags = self->_flags;
  if (((((flags & 0x20000) == 0) ^ stepping) & 1) == 0)
  {
    v4 = 0x20000;
    if (!stepping)
    {
      v4 = 0;
    }

    *&self->_flags = flags & 0xFFFFFFFFFFFDFFFFLL | v4;
    [(MKMapView *)self _updateShowHeadingIndicator];
  }
}

- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  animatedCopy = animated;
  modeCopy = mode;
  if (mode == 2)
  {
    if ([(MKLocationManager *)self->_locationManager isHeadingServicesAvailable]&& [(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation])
    {
      modeCopy = 2;
    }

    else
    {
      modeCopy = 1;
    }
  }

  userTrackingMode = self->_userTrackingMode;
  if (modeCopy != userTrackingMode)
  {
    v49 = buttonCopy;
    if (modeCopy)
    {
      [(MKMapGestureController *)self->_gestureController stopDynamicAnimations];
      hasUserLocation = [(MKMapView *)self hasUserLocation];
    }

    else
    {
      hasUserLocation = 0;
    }

    [(VKMapView *)self->_mapView setStaysCenteredDuringPinch:hasUserLocation];
    self->_userTrackingMode = modeCopy;
    userLocationView = [(MKMapView *)self userLocationView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView3 = userLocationView;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
LABEL_16:

        [v13 setForcesConeIndicator:modeCopy == 2];
        userLocationView2 = [(MKMapView *)self userLocationView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _mkUserLocationView2 = userLocationView2;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = 0;
LABEL_22:

            [v16 _setForceHeadingUp:modeCopy == 2];
            [(MKMapView *)self _updateShowHeadingIndicator];
            v17 = MEMORY[0x1E6985C80];
            if (!modeCopy)
            {
              v17 = MEMORY[0x1E6985C78];
            }

            [(MKLocationManager *)self->_locationManager setDesiredAccuracy:*v17];
            if (!modeCopy || userTrackingMode)
            {
              if (modeCopy || !userTrackingMode)
              {
LABEL_31:
                v20 = -1.0;
                if (animatedCopy && [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
                {
                  [MEMORY[0x1E69DD250] _mapkit_currentAnimationDuration];
                  v20 = v21;
                  _mapkit_currentAnimationTimingFunction = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
                  v23 = VKAnimationCurveForCAMediaTimingFunction();
                }

                else
                {
                  v23 = 0;
                }

                if (modeCopy != 2 || userTrackingMode == 2)
                {
                  if (!modeCopy)
                  {
                    if (userTrackingMode)
                    {
                      [(VKMapView *)self->_mapView stopTrackingAnnotation];
                    }

                    goto LABEL_55;
                  }
                }

                else if ([(MKMapView *)self hasUserLocation])
                {
                  mapView = self->_mapView;
                  userLocation = [(MKMapView *)self userLocation];
                  v26 = mapView;
                  v27 = userLocation;
                  v28 = 1;
LABEL_50:
                  [(VKMapView *)v26 startTrackingAnnotation:v27 trackHeading:v28 animated:animatedCopy duration:v23 timingFunction:v20];

                  goto LABEL_55;
                }

                v30 = modeCopy == 2 || userTrackingMode != 2;
                if ((!userTrackingMode || !v30) && [(MKMapView *)self hasUserLocation])
                {
                  v31 = self->_mapView;
                  userLocation = [(MKMapView *)self userLocation];
                  v26 = v31;
                  v27 = userLocation;
                  v28 = 0;
                  goto LABEL_50;
                }

                if (![(MKMapView *)self hasUserLocation])
                {
                  self->_userTrackingModeShouldAnimate = animatedCopy;
                }

LABEL_55:
                userLocationView3 = [(MKMapView *)self userLocationView];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  _mkUserLocationView = userLocationView3;
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v34 = 0;
                    goto LABEL_61;
                  }

                  _mkUserLocationView = [userLocationView3 _mkUserLocationView];
                }

                v34 = _mkUserLocationView;
LABEL_61:

                [v34 setShouldDisplayInaccurateHeading:modeCopy == 2];
                v35 = *(&self->_flags + 8);
                if (v35)
                {
                  if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
                  {
                    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
                  }

                  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
                  {
                    _safeDelegate = self->_unsafeDelegate;
                  }

                  else
                  {
                    _safeDelegate = [(MKMapView *)self _safeDelegate];
                  }

                  v37 = _safeDelegate;
                  [(MKMapViewDelegate *)_safeDelegate mapView:self didChangeUserTrackingMode:self->_userTrackingMode animated:animatedCopy fromTrackingButton:v49];

                  v35 = *(&self->_flags + 8);
                }

                if ((v35 & 2) != 0)
                {
                  delegate = [(MKMapView *)self delegate];
                  [delegate mapView:self didChangeUserTrackingMode:self->_userTrackingMode animated:animatedCopy];
                }

                defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
                [defaultCenter postNotificationName:@"MKMapViewUserTrackingModeDidChangeNotification" object:self];

                defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
                [defaultCenter2 postNotificationName:@"MKUserTrackingViewModeDidChangeNotification" object:self];

                [(MKMapView *)self _updateIconsShouldAlignToPixels];
                if (self->_userTrackingMode)
                {
                  if ((*(&self->_flags + 2) & 8) != 0)
                  {
                    locationManager = self->_locationManager;
                    v50 = 0;
                    v42 = [(MKLocationManager *)locationManager isLocationServicesPossiblyAvailable:&v50];
                    v43 = v50;
                    if (!v42)
                    {
                      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
                      {
                        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
                      }

                      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
                      {
                        _safeDelegate2 = self->_unsafeDelegate;
                      }

                      else
                      {
                        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
                      }

                      v45 = _safeDelegate2;
                      v46 = objc_opt_respondsToSelector();

                      if (v46)
                      {
                        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
                        {
                          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
                        }

                        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
                        {
                          _safeDelegate3 = self->_unsafeDelegate;
                        }

                        else
                        {
                          _safeDelegate3 = [(MKMapView *)self _safeDelegate];
                        }

                        v48 = _safeDelegate3;
                        [(MKMapViewDelegate *)_safeDelegate3 mapView:self didFailToLocateUserWithError:v43];
                      }
                    }
                  }

                  else
                  {
                    [(MKMapView *)self setShowsUserLocation:1];
                  }
                }

                return;
              }

              v18 = 3;
            }

            else
            {
              v18 = 2;
            }

            userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
            [userLocationAnimator setBehavior:v18];

            goto LABEL_31;
          }

          _mkUserLocationView2 = [userLocationView2 _mkUserLocationView];
        }

        v16 = _mkUserLocationView2;
        goto LABEL_22;
      }

      _mkUserLocationView3 = [userLocationView _mkUserLocationView];
    }

    v13 = _mkUserLocationView3;
    goto LABEL_16;
  }
}

- (void)setUserTrackingMode:(MKUserTrackingMode)mode animated:(BOOL)animated
{
  v4 = animated;
  if (mode == MKUserTrackingModeNone && self->_userTrackingMode == 2)
  {
    [(MKMapView *)self _snapToTrueNorthAndCallBack:0];
  }

  if ([(MKMapView *)self _mustWaitUntilSized])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__MKMapView_setUserTrackingMode_animated___block_invoke;
    v7[3] = &unk_1E76CA208;
    objc_copyWeak(v8, &location);
    v8[1] = mode;
    [(MKMapView *)self _addDependentAuxiliaryBlock:v7];
    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }

  else
  {

    [(MKMapView *)self _setUserTrackingMode:mode animated:v4 fromTrackingButton:0];
  }
}

void __42__MKMapView_setUserTrackingMode_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserTrackingMode:*(a1 + 40) animated:0];
}

- (BOOL)isCurrentlyRotated
{
  canRotateForHeading = [(MKMapView *)self canRotateForHeading];
  if (canRotateForHeading)
  {
    [(MKMapCamera *)self->_camera heading];
    LOBYTE(canRotateForHeading) = v4 != 0.0;
  }

  return canRotateForHeading;
}

- (BOOL)canRotateForHeading
{
  isHeadingServicesAvailable = [(MKLocationManager *)self->_locationManager isHeadingServicesAvailable];
  if (isHeadingServicesAvailable)
  {
    return (*(&self->_flags + 1) >> 4) & 1;
  }

  return isHeadingServicesAvailable;
}

- (void)setShowsUserLocation:(BOOL)showsUserLocation
{
  v3 = showsUserLocation;
  if ([(MKMapView *)self showsUserLocation]!= showsUserLocation)
  {
    v5 = 0x80000;
    if (!v3)
    {
      v5 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFFFFFFFFF7FFFFLL | v5;
    v6 = MKGetMKMapViewLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager startUpdatingUserLocation", buf, 2u);
      }

      [(MKMapView *)self startUpdatingUserLocation];
    }

    else
    {
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager stopUpdatingUserLocation", v8, 2u);
      }

      [(MKMapView *)self stopUpdatingUserLocation];
    }
  }
}

- (void)_setTracePlaybackSpeedMultiplier:(double)multiplier
{
  userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
  [userLocationAnimator setTracePlaybackSpeedMultiplier:multiplier];
}

- (void)setPitchEnabled:(BOOL)pitchEnabled
{
  v3 = pitchEnabled;
  v5 = +[MKSystemController sharedInstance];
  supportsExtendedGestures = [v5 supportsExtendedGestures];

  if (!supportsExtendedGestures)
  {
    return;
  }

  v7 = +[MKSystemController sharedInstance];
  supportsPitchAPI = [v7 supportsPitchAPI];

  if (supportsPitchAPI)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v3;
  }

  if (v9)
  {
    p_flags = &self->_flags;
    if ((((*(&self->_flags + 4) & 1) == 0) ^ v3))
    {
      return;
    }

    _canEnter3DMode = [(MKMapView *)self _canEnter3DMode];
    v12 = 0x100000000;
    if (!v3)
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (setPitchEnabled__onceToken != -1)
  {
    dispatch_once(&setPitchEnabled__onceToken, &__block_literal_global_295);
  }

  p_flags = &self->_flags;
  if (*(&self->_flags + 4))
  {
    _canEnter3DMode = [(MKMapView *)self _canEnter3DMode];
    v12 = 0;
LABEL_15:
    *p_flags = *p_flags & 0xFFFFFFFEFFFFFFFFLL | v12;
    [(MKMapView *)self _updateScrollingAndGestures];
    _canEnter3DMode2 = [(MKMapView *)self _canEnter3DMode];
    if (_canEnter3DMode != _canEnter3DMode2)
    {
      v14 = _canEnter3DMode2;
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v16 = _safeDelegate;
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v19 = _safeDelegate2;
        [(MKMapViewDelegate *)_safeDelegate2 mapView:self canEnter3DModeDidChange:v14];
      }
    }
  }
}

void __29__MKMapView_setPitchEnabled___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MKMapView pitch cannot be enabled on this device.", v0, 2u);
  }
}

- (void)setRotateEnabled:(BOOL)rotateEnabled
{
  v3 = rotateEnabled;
  v7 = +[MKSystemController sharedInstance];
  if ([v7 supportsExtendedGestures])
  {
    v5 = (*&self->_flags >= 0) ^ v3;

    if ((v5 & 1) == 0)
    {
      v6 = 0x80000000;
      if (!v3)
      {
        v6 = 0;
      }

      *&self->_flags = *&self->_flags & 0xFFFFFFFF7FFFFFFFLL | v6;

      [(MKMapView *)self _updateScrollingAndGestures];
    }
  }

  else
  {
  }
}

- (void)setZoomEnabled:(BOOL)zoomEnabled
{
  flags = self->_flags;
  if (((((flags & 0x100000) == 0) ^ zoomEnabled) & 1) == 0)
  {
    v4 = 0x100000;
    if (!zoomEnabled)
    {
      v4 = 0;
    }

    *&self->_flags = flags & 0xFFFFFFFFFFEFFFFFLL | v4;
    [(MKMapView *)self _updateScrollingAndGestures];
  }
}

- (void)setScrollEnabled:(BOOL)scrollEnabled
{
  if (((((*&self->_flags & 0x2000) == 0) ^ scrollEnabled) & 1) == 0)
  {
    v3 = 0x2000;
    if (!scrollEnabled)
    {
      v3 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFFFFFFFFFFDFFFLL | v3;
    [(MKMapView *)self _updateScrollingAndGestures];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(MKMapView *)self center];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = MKMapView;
  [(MKMapView *)&v11 setCenter:x, y];
  if (x != v7 || y != v9)
  {
    [(MKMapView *)self _updateInsetsWithForce:0];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MKMapView *)self frame];
  if (v9 == width && v8 == height)
  {
    v15.receiver = self;
    v15.super_class = MKMapView;
    [(MKMapView *)&v15 setFrame:x, y, width, height];
  }

  else
  {
    [(MKMapView *)self _sizeWillChange];
    [(MKMapView *)self centerCoordinate];
    v12 = v11;
    v14 = v13;
    v16.receiver = self;
    v16.super_class = MKMapView;
    [(MKMapView *)&v16 setFrame:x, y, width, height];
    [(MKMapView *)self _sizeDidChangeWithCenterCoordinate:v12, v14];
  }

  [(MKMapView *)self _updateHeadingOrientation];
  [(MKMapView *)self _updateInsetsWithForce:0];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MKMapView *)self bounds];
  if (v9 == width && v8 == height)
  {
    v15.receiver = self;
    v15.super_class = MKMapView;
    [(MKMapView *)&v15 setBounds:x, y, width, height];
  }

  else
  {
    [(MKMapView *)self _sizeWillChange];
    [(MKMapView *)self centerCoordinate];
    v12 = v11;
    v14 = v13;
    v16.receiver = self;
    v16.super_class = MKMapView;
    [(MKMapView *)&v16 setBounds:x, y, width, height];
    [(MKMapView *)self _sizeDidChangeWithCenterCoordinate:v12, v14];
  }
}

- (double)_vectorKitTileZoomLevelForMapKitZoomLevel:(double)level
{
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  [vk_mapLayer zoomLevelAdjustmentForTileSize:128];
  v6 = level - v5;

  return v6;
}

- (double)_mapKitZoomLevelForVectorKitTileZoomLevel:(double)level
{
  vk_mapLayer = [(MKMapView *)self vk_mapLayer];
  [vk_mapLayer zoomLevelAdjustmentForTileSize:128];
  v6 = v5 + level;

  return v6;
}

- (BOOL)isRegionChanging
{
  if ([(MKMapView *)self _isChangingRegionForGesture])
  {
    LOBYTE(flags) = 1;
  }

  else
  {
    flags = self->_flags;
  }

  return flags & 1;
}

- (void)setSuspended:(BOOL)suspended
{
  if (((((*(&self->_flags + 1) & 1) == 0) ^ suspended) & 1) == 0)
  {
    if (suspended)
    {
      [(MKMapView *)self _stopEffects];
      v4 = 256;
    }

    else
    {
      [(MKMapView *)self _startEffects];
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFFFFFFFFFFFEFFLL | v4;
  }
}

- (void)_setMapDisplayStyle:(id)style
{
  v3 = *&style.var0;
  v8 = *MEMORY[0x1E69E9840];
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
  v6 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "MKMapView: _setMapDisplayStyle %d", v7, 8u);
  }

  [(VKMapView *)self->_mapView setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL animated:_mapkit_shouldAdoptImplicitAnimationParameters];
  [(MKAnnotationContainerView *)self->_annotationContainer setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL];
}

- (void)_setShowsNightMode:(BOOL)mode
{
  modeCopy = mode;
  v19 = *MEMORY[0x1E69E9840];
  if ([(MKMapView *)self _showsNightMode]!= mode)
  {
    v5 = MKGetMKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if ([(MKMapView *)self _showsNightMode])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (modeCopy)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "MKMapView: _setShowsNightMode self.showsNightMode : %@ showsNightMode : %@", &v15, 0x16u);
    }

    if (!modeCopy || (v10 = [(MKMapView *)self mapType], v10 - 1 >= 4) && v10 != 107)
    {
      v11 = [(MKMapView *)self _mapDisplayStyle]& 0xFFFFFFFFFFFFFF00;
      v12 = MKGetMKMapViewLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (modeCopy)
        {
          v13 = @"YES";
        }

        v14 = v13;
        v15 = 138412546;
        v16 = v14;
        v17 = 1024;
        LODWORD(v18) = modeCopy;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, "MKMapView: _setShowsNightMode showsNightMode %@, setting style.timePeriod %d", &v15, 0x12u);
      }

      [(MKMapView *)self _setMapDisplayStyle:(v11 | modeCopy) & 0xFFFFFFFFFFFFLL];
    }
  }
}

- (BOOL)_shouldDeselectMapFeatureForNewPreferredConfiguration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = __67__MKMapView__shouldDeselectMapFeatureForNewPreferredConfiguration___block_invoke(self->_preferredConfiguration);
  LOBYTE(v6) = 0;
  if (__67__MKMapView__shouldDeselectMapFeatureForNewPreferredConfiguration___block_invoke(configurationCopy) && (v5 & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v7 = [(MKMapView *)self selectedAnnotations:0];
    v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v7);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

uint64_t __67__MKMapView__shouldDeselectMapFeatureForNewPreferredConfiguration___block_invoke(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    if (v1)
    {
      [v1 cartographicConfiguration];
    }

    isKindOfClass = (_MKMapTypeForCartographicConfiguration(&v4) & 0x7D) == 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_setPreferredConfiguration:(id)configuration onInit:(BOOL)init
{
  initCopy = init;
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  [(MKMapView *)self willChangeValueForKey:@"preferredConfiguration"];
  if (self->_preferredConfiguration != configurationCopy)
  {
    [(MKMapView *)self _unregisterConfigurationObservers];
    v7 = [(MKMapView *)self _shouldDeselectMapFeatureForNewPreferredConfiguration:configurationCopy];
    v8 = [(MKMapConfiguration *)configurationCopy copy];
    preferredConfiguration = self->_preferredConfiguration;
    self->_preferredConfiguration = v8;

    [(MKMapView *)self _registerConfigurationObservers];
    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      selectedAnnotations = [(MKMapView *)self selectedAnnotations];
      v11 = [selectedAnnotations countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(selectedAnnotations);
            }

            v15 = *(*(&v16 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MKMapView *)self deselectAnnotation:v15 animated:0];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [selectedAnnotations countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  [(MKMapView *)self _updateShowsTraffic];
  [(MKMapView *)self _updatePointOfInterestFilter];
  [(MKMapView *)self _updateShowsHiking];
  [(MKMapView *)self _updateCartographicConfigurationOnInit:initCopy];
  [(MKMapView *)self didChangeValueForKey:@"preferredConfiguration"];
}

- (void)_updateCartographicConfigurationOnInit:(BOOL)init
{
  initCopy = init;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [MKMapConfiguration _cartographicConfigurationForMapConfiguration:self->_preferredConfiguration];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  requiresModernMap = [(MKOverlayContainerView *)self->_overlayContainer requiresModernMap];
  if ((_UIApplicationIsExtension() & 1) != 0 || ![(MKMapConfiguration *)self->_preferredConfiguration _allowsTerrainModePromotion])
  {
    v7 = 0;
    goto LABEL_8;
  }

  elevationStyle = [(MKMapConfiguration *)self->_preferredConfiguration elevationStyle];
  v7 = _MKLinkedOnOrAfterReleaseSet(3338);
  if (elevationStyle != MKMapElevationStyleRealistic)
  {
LABEL_8:
    v10 = 0;
    supportsElevation = 0;
    goto LABEL_9;
  }

  overlayContainer = self->_overlayContainer;
  if (overlayContainer)
  {
    supportsElevation = [(MKOverlayContainerView *)overlayContainer supportsElevation];
    v10 = 1;
  }

  else
  {
    v10 = 1;
    supportsElevation = 1;
  }

LABEL_9:
  if (GEOConfigGetBOOL())
  {
    v11 = 1;
  }

  else
  {
    v11 = v18;
  }

  *&v18 = v11;
  BOOL = GEOConfigGetBOOL();
  v13 = 3;
  if (!v7)
  {
    v13 = *(&v18 + 1);
  }

  if ((supportsElevation & v10) != 0)
  {
    v13 = 1;
  }

  if ((BOOL | requiresModernMap))
  {
    v14 = BOOL;
  }

  else
  {
    v14 = v13;
  }

  *(&v18 + 1) = v14;
LABEL_20:
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v16 = v20;
  [(MKMapView *)self _setCartographicConfiguration:v15 onInit:initCopy animated:1];
}

- (void)_deselectCurrentFeatureAnnotationIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selectedAnnotations = [(MKMapView *)self selectedAnnotations];
  if ([selectedAnnotations count])
  {
    v5 = [selectedAnnotations objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [selectedAnnotations objectAtIndexedSubscript:0];
      if (![(MKLabelSelectionFilter *)self->_labelSelectionFilter isFeatureAnnotationSelectable:v7])
      {
        [(MKMapView *)self deselectAnnotation:v7 animated:animatedCopy];
      }
    }
  }
}

- (void)_setLabelSelectionFilter:(id)filter animated:(BOOL)animated
{
  animatedCopy = animated;
  filterCopy = filter;
  if (([filterCopy isEqual:self->_labelSelectionFilter] & 1) == 0)
  {
    v6 = [filterCopy copy];
    labelSelectionFilter = self->_labelSelectionFilter;
    self->_labelSelectionFilter = v6;

    [(MKLabelSelectionFilter *)self->_labelSelectionFilter setMapView:self];
    [(VKMapView *)self->_mapView setLabelSelectionFilter:self->_labelSelectionFilter];
    [(MKMapView *)self _deselectCurrentFeatureAnnotationIfNeededAnimated:animatedCopy];
  }
}

- (void)setSelectableMapFeatures:(MKMapFeatureOptions)selectableMapFeatures
{
  selectionHandler = [(MKLabelSelectionFilter *)self->_labelSelectionFilter selectionHandler];
  if (selectionHandler)
  {
  }

  else if ([(MKLabelSelectionFilter *)self->_labelSelectionFilter mapFeatureOptions]== selectableMapFeatures)
  {
    return;
  }

  [(VKMapView *)self->_mapView setIsMKRenderingSelectionBalloon:selectableMapFeatures != 0];
  v6 = [[MKLabelSelectionFilter alloc] initWithMapFeatureOptions:selectableMapFeatures];
  labelSelectionFilter = self->_labelSelectionFilter;
  self->_labelSelectionFilter = v6;

  v8 = self->_labelSelectionFilter;
  mapView = self->_mapView;

  [(VKMapView *)mapView setLabelSelectionFilter:v8];
}

- (void)_setCartographicConfiguration:(id *)configuration animated:(BOOL)animated
{
  v5 = *&configuration->var2;
  v7[0] = *&configuration->var0;
  v7[1] = v5;
  v7[2] = *&configuration->var4;
  v8 = *&configuration->var6;
  animated = [MKMapConfiguration _mapConfigurationWithCartographicConfiguration:v7, animated];
  [animated _setInternalStateFromMapConfiguration:self->_preferredConfiguration];
  [(MKMapView *)self setPreferredConfiguration:animated];
}

- (void)_setCartographicConfiguration:(id *)configuration
{
  v3 = *&configuration->var2;
  v4[0] = *&configuration->var0;
  v4[1] = v3;
  v4[2] = *&configuration->var4;
  v5 = *&configuration->var6;
  [(MKMapView *)self _setCartographicConfiguration:v4 animated:0];
}

- (void)_setCartographicConfiguration:(id *)configuration onInit:(BOOL)init animated:(BOOL)animated
{
  animatedCopy = animated;
  v9 = MKGetMKMapViewLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetMapType", &unk_1A30FEA0E, buf, 2u);
  }

  v10 = _VKMapTypeForMKCartographicConfiguration(&configuration->var0);
  v39 = _VKEmphasisForMKCartographicConfiguration(&configuration->var0);
  v11 = _VKTerrainModeForMKCartographicConfiguration(configuration);
  v40 = _VKMapKitUsageForMKCartographicConfiguration(configuration);
  v12 = _VKMapKitClientModeForMKCartographicConfiguration(configuration);
  v13 = configuration->var2 == 1;
  v14 = [(MKMapView *)self _supportsVKMapType:v10];
  v15 = v10 != 3 && v13;
  if (v10 == 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v10 == 4)
  {
    v15 = 0;
    v17 = 2;
  }

  else
  {
    v17 = v16;
  }

  if (v14)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  v38 = v18;
  if (v14)
  {
    v19 = v10;
  }

  else
  {
    v19 = v17;
  }

  if (!_MKCartographicConfigurationEquals(&self->_cartographicConfiguration, configuration) || init)
  {
    v23 = _MKMapTypeForCartographicConfiguration(&configuration->var0);
    *&self->_flags |= 0x2000000000000uLL;
    v24 = NSStringFromSelector(sel_mapType);
    [(MKMapView *)self willChangeValueForKey:v24];

    v25 = *&configuration->var0;
    v26 = *&configuration->var2;
    v27 = *&configuration->var4;
    *&self->_cartographicConfiguration.gridOnly = *&configuration->var6;
    *&self->_cartographicConfiguration.projection = v26;
    *&self->_cartographicConfiguration.mapkitUsage = v27;
    *&self->_cartographicConfiguration.style = v25;
    [(MKAnnotationContainerView *)self->_annotationContainer setMapType:v23];
    [(MKBasicMapView *)self->_basicMapView updateStatsForSwitchingToMapType:v19];
    if (!init)
    {
      [(MKBasicMapView *)self->_basicMapView updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:[(MKMapView *)self _canShowFlyover]];
    }

    [(VKMapView *)self->_mapView setTerrainMode:v11];
    [(VKMapView *)self->_mapView setMapType:v19 animated:animatedCopy];
    [(VKMapView *)self->_mapView setEmphasis:v39 animated:animatedCopy];
    [(VKMapView *)self->_mapView setMapKitUsage:v40];
    [(VKMapView *)self->_mapView setMapKitClientMode:v12];
    [(VKMapView *)self->_mapView setEnableGlobe:v38];
    [(MKAttributionLabel *)self->_attributionLabel setMapType:v23];
    [(MKMapView *)self _layoutAttribution];
    [(MKScaleView *)self->_scaleView setMapType:v23];
    _showsNightMode = [(MKMapView *)self _showsNightMode];
    v29 = (v23 - 1) < 4 || v23 == 107;
    v30 = _showsNightMode || v29;
    [(MKScaleView *)self->_scaleView setUseLightText:v30];
    [(MKMapView *)self _updateAppearanceIfNeeded];
    [(MKMapView *)self _updateIconsShouldAlignToPixels];
    [(MKAnnotationManager *)self->_annotationManager updateVisibleAnnotations];
    *&self->_flags &= ~0x2000000000000uLL;
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v32 = _safeDelegate;
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v35 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didChangeMapType:v23];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MKMapViewDidChangeMapTypeNotification" object:self];

    v37 = NSStringFromSelector(sel_mapType);
    [(MKMapView *)self didChangeValueForKey:v37];

    v20 = MKGetMKMapViewLog();
    if (os_signpost_enabled(v20))
    {
      *v41 = 0;
      v21 = v41;
      v22 = v20;
      goto LABEL_44;
    }
  }

  else
  {
    [(VKMapView *)self->_mapView setTerrainMode:v11];
    [(VKMapView *)self->_mapView setMapType:v19 animated:animatedCopy];
    [(VKMapView *)self->_mapView setEmphasis:v39 animated:animatedCopy];
    [(VKMapView *)self->_mapView setMapKitUsage:v40];
    [(VKMapView *)self->_mapView setMapKitClientMode:v12];
    [(VKMapView *)self->_mapView setEnableGlobe:v38];
    v20 = MKGetMKMapViewLog();
    if (os_signpost_enabled(v20))
    {
      v42 = 0;
      v21 = &v42;
      v22 = v20;
LABEL_44:
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetMapType", &unk_1A30FEA0E, v21, 2u);
    }
  }
}

- (void)_setMapType:(unint64_t)type animated:(BOOL)animated
{
  typeCopy = type;
  if (type >= 3 && !_MKLinkedOnOrAfterReleaseSet(1026))
  {
    typeCopy = 0;
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MKCartographicConfigurationForMapType(typeCopy, &v9);
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v8 = v12;
  v6 = [MKMapConfiguration _mapConfigurationWithCartographicConfiguration:v7];
  [v6 _setInternalStateFromMapConfiguration:self->_preferredConfiguration];
  [(MKMapView *)self setPreferredConfiguration:v6];
}

- (BOOL)_supportsVKMapType:(int)type
{
  mapView = self->_mapView;
  if (!mapView)
  {
    if ((type - 3) > 1)
    {
      return 1;
    }

LABEL_6:
    v7 = +[MKSystemController sharedInstance];
    supports3DImagery = [v7 supports3DImagery];

    return supports3DImagery;
  }

  v5 = [(VKMapView *)mapView supportsMapType:*&type];
  result = ((type - 5) < 0xFFFFFFFE) & v5;
  if (type - 5) >= 0xFFFFFFFE && (v5)
  {
    goto LABEL_6;
  }

  return result;
}

- (void)setMapType:(MKMapType)mapType
{
  [(MKMapView *)self _setMapType:mapType animated:1];
  if (mapType)
  {
    usageCounter = self->_usageCounter;

    [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:7];
  }
}

- (BOOL)_isHandlingNonselectingTap
{
  _nonselectingTapGestureRecognizer = [(MKMapView *)self _nonselectingTapGestureRecognizer];
  v3 = [_nonselectingTapGestureRecognizer state] == 3;

  return v3;
}

- (void)_setShowsPressedLabelMarkerEffect:(BOOL)effect
{
  v3 = 0x20000000000000;
  if (!effect)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)_setShowsVenues:(BOOL)venues
{
  if (((((*&self->_flags & 0x10000000) == 0) ^ venues) & 1) == 0)
  {
    v3 = 0x10000000;
    if (!venues)
    {
      v3 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFFFFFFEFFFFFFFLL | v3;
    [(VKMapView *)self->_mapView setShowsVenues:?];
  }
}

- (void)setShowsBuildings:(BOOL)showsBuildings
{
  v3 = showsBuildings;
  if (_MKLinkedOnOrAfterReleaseSet(3338) || GEOConfigGetBOOL())
  {
    if (self->_cartographicConfiguration.mapkitUsage == 2)
    {
      v3 = v3;
    }

    else
    {
      v3 = 1;
    }
  }

  v5 = 0x200000000;
  if (!v3)
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFDFFFFFFFFLL | v5;
  mapView = self->_mapView;

  [(VKMapView *)mapView setShowsBuildings:v3];
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

- (void)_addInternalOverlay:(id)overlay level:(int64_t)level provider:(id)provider
{
  providerCopy = provider;
  overlayCopy = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer addInternalOverlay:overlayCopy level:level provider:providerCopy];
}

- (void)_offlineStateDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
  v5 = mEMORY[0x1E69A22E8];
  if (mEMORY[0x1E69A22E8])
  {
    state = [mEMORY[0x1E69A22E8] state];
    v7 = state;
    if (state >= 3u)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v11[0] = 67109120;
        v11[1] = v7;
        _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", v11, 8u);
      }

      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = 4u >> (state & 7);
    }

    mapView = self->_mapView;
    v10 = v8 & 1;
  }

  else
  {
    mapView = self->_mapView;
    v10 = 0;
  }

  [(VKMapView *)mapView setOfflineMode:v10];
}

- (void)deviceOrientationDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MKMapView_deviceOrientationDidChange___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  var0 = key.var0;
  if (key.var0 == 103 && key.var1 == &MapKitConfig_VectorKitDebugConsoleEnabled_Metadata)
  {
    [(MKMapView *)self _setVectorKitConsoleEnabled:GEOConfigGetBOOL()];
  }

  if (var0 == *MEMORY[0x1E69B3718] && var1 == *(MEMORY[0x1E69B3718] + 8))
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView _mapkit_configureFromDefaults];
  }

  else if (var0 == 1 && var1 == &MapKitConfig_MapTextSize_Metadata)
  {
    v7 = self->_mapView;
    traitCollection = [(MKMapView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(VKMapView *)v7 _mapkit_configureLabelSizesForContentSizeCategory:preferredContentSizeCategory];
  }
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  [(MKMapView *)self _updateAppearanceIfNeeded];
  [(MKMapView *)self _updateAttribution];
  [(MKMapView *)self _updateEnvironmentLabelText];
  v4 = *&self->_cartographicConfiguration.projection;
  v5[0] = *&self->_cartographicConfiguration.style;
  v5[1] = v4;
  v5[2] = *&self->_cartographicConfiguration.mapkitUsage;
  v6 = *&self->_cartographicConfiguration.gridOnly;
  [(MKMapView *)self _setCartographicConfiguration:v5 onInit:0 animated:0];
}

- (void)_setVectorKitConsoleEnabled:(BOOL)enabled
{
  flags = self->_flags;
  if (((((flags & 0x8000000000) == 0) ^ enabled) & 1) == 0)
  {
    v22 = v5;
    v23 = v4;
    v24 = v3;
    v13 = 0x8000000000;
    if (!enabled)
    {
      v13 = 0;
    }

    *&self->_flags = flags & 0xFFFFFF7FFFFFFFFFLL | v13;
    if (enabled)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69DD168]);
      vectorKitDebugView = self->_vectorKitDebugView;
      self->_vectorKitDebugView = v14;

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v17 = [blackColor colorWithAlphaComponent:0.5];
      [(UITextView *)self->_vectorKitDebugView setBackgroundColor:v17];

      greenColor = [MEMORY[0x1E69DC888] greenColor];
      [(UITextView *)self->_vectorKitDebugView setTextColor:greenColor];

      v19 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
      [(UITextView *)self->_vectorKitDebugView setFont:v19];

      [(UITextView *)self->_vectorKitDebugView setEditable:0];
      [(UITextView *)self->_vectorKitDebugView setAutoresizingMask:34];
      [(MKMapView *)self addSubview:self->_vectorKitDebugView];
    }

    else
    {
      [(UITextView *)self->_vectorKitDebugView removeFromSuperview];
      v20 = self->_vectorKitDebugView;
      self->_vectorKitDebugView = 0;
    }

    [(MKMapView *)self _currentEnvironmentNameFrame:v8];
    debugCurrentEnvironmentLabel = self->_debugCurrentEnvironmentLabel;

    [(_MKEnvironmentLabel *)debugCurrentEnvironmentLabel setFrame:?];
  }
}

- (id)mapAttributionWithStringAttributes:(id)attributes underlineText:(BOOL)text linkAttribution:(BOOL)attribution
{
  attributionCopy = attribution;
  textCopy = text;
  mapView = self->_mapView;
  attributesCopy = attributes;
  attributionsForCurrentRegion = [(VKMapView *)mapView attributionsForCurrentRegion];
  v11 = [MKMapAttribution alloc];
  [(UIView *)self _mapkit_currentScreenScale];
  v12 = [(MKMapAttribution *)v11 initWithStringAttributes:attributesCopy regionalAttributions:attributionsForCurrentRegion underlineText:textCopy applyLinkAttribution:attributionCopy scale:?];

  return v12;
}

- (id)urlForMapAttribution
{
  attributionsForCurrentRegion = [(VKMapView *)self->_mapView attributionsForCurrentRegion];
  v3 = [MKMapAttribution attributionUrlFromRegionalAttributions:attributionsForCurrentRegion];

  return v3;
}

- (CGRect)attributionFrame
{
  attributionLabel = self->_attributionLabel;
  if (attributionLabel)
  {
    [(MKAttributionLabel *)attributionLabel frame];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void __39__MKMapView__updateAppleLogoVisibility__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setOpacity:0.0];
}

uint64_t __39__MKMapView__updateAppleLogoVisibility__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 _layoutAttribution];
}

- (void)setAttributionCorner:(int)corner
{
  if (corner == 4 || corner == 8)
  {
    self->_attributionCorner = corner;

    [(MKMapView *)self _layoutAttribution];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v5 = MKGetMKMapViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "On iOS, only BottomLeft and BottomRight are supported locations for attribution.", v6, 2u);
    }
  }
}

- (void)_setCompassInsetEdges:(unint64_t)edges
{
  self->_compassInsetEdges = edges;
  self->_explicitCompassInsetEdges = 1;
  [(MKMapView *)self _updateControlsPosition:1];
  if (self->_scaleVisibility != 1)
  {

    [(MKMapView *)self _updateScalePosition];
  }
}

- (void)_setCompassInsets:(UIEdgeInsets)insets animated:(BOOL)animated
{
  self->_compassInsets = insets;
  [(MKMapView *)self _updateControlsPosition:animated];
  if (self->_scaleVisibility != 1)
  {

    [(MKMapView *)self _updateScalePosition];
  }
}

- (void)_setCompassViewSize:(int64_t)size style:(int64_t)style
{
  if (self->_compassViewSize != size || self->_compassViewStyle != style)
  {
    self->_compassViewSize = size;
    self->_compassViewStyle = style;
    compassView = self->_compassView;
    if (compassView)
    {
      [MKCompassView setCompassViewSize:"setCompassViewSize:style:" style:?];
    }

    [(MKMapView *)self _updateCompassVisibility];
  }
}

- (void)setCompassViewSize:(int64_t)size
{
  if (self->_compassViewSize != size)
  {
    self->_compassViewSize = size;
    compassView = self->_compassView;
    if (compassView)
    {
      [(MKCompassView *)compassView setCompassViewSize:?];
    }

    [(MKMapView *)self _updateCompassVisibility];
  }
}

- (void)_setAttributionLinkDisplayStyle:(int64_t)style
{
  if (self->_attributionLinkDisplayStyle != style)
  {
    self->_attributionLinkDisplayStyle = style;
    attributionLabel = self->_attributionLabel;
    if (attributionLabel)
    {
      [(MKAttributionLabel *)attributionLabel setDisplayStyle:?];
      [(MKAttributionLabel *)self->_attributionLabel sizeToFit];

      [(MKMapView *)self _layoutAttribution];
    }
  }
}

- (CGRect)attributionBadgeBounds
{
  if ([(MKMapView *)self _isShowingAttributionBadge])
  {
    [(UIImageView *)self->_attributionBadgeView bounds];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_isShowingAttributionBadge
{
  attributionBadgeView = self->_attributionBadgeView;
  if (!attributionBadgeView)
  {
    return 0;
  }

  superview = [(UIImageView *)attributionBadgeView superview];
  v4 = superview != 0;

  return v4;
}

- (void)setCanShowAttributionBadge:(BOOL)badge
{
  v3 = 0x8000000;
  if (!badge)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFF7FFFFFFLL | v3;
  [(MKMapView *)self _updateAttribution];
}

- (void)_setShowsAppleLogo:(BOOL)logo force:(BOOL)force
{
  forceCopy = force;
  logoCopy = logo;
  _mapkit_shouldShowAppleLogo = [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo];
  v8 = 0x4000000;
  if (((_mapkit_shouldShowAppleLogo | forceCopy) & logoCopy) == 0)
  {
    v8 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFFBFFFFFFLL | v8;

  [(MKMapView *)self _updateAppleLogoVisibility];
}

- (void)setShowsAttribution:(BOOL)attribution
{
  v3 = 0x2000000;
  if (!attribution)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFFDFFFFFFLL | v3;
  [(MKMapView *)self _updateAttribution];
}

- (void)_withEffectiveTraitCollection:(id)collection
{
  collectionCopy = collection;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__972;
  v12 = __Block_byref_object_dispose__973;
  v13 = 0;
  lastEffectiveTraitCollectionIsolationQueue = self->_lastEffectiveTraitCollectionIsolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MKMapView__withEffectiveTraitCollection___block_invoke;
  v7[3] = &unk_1E76CD7E8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(lastEffectiveTraitCollectionIsolationQueue, v7);
  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v9[5]];
  collectionCopy[2](collectionCopy);
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];

  _Block_object_dispose(&v8, 8);
}

- (void)_traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  v34 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v6 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "MKMapView: _traitEnvironment:didChangeTraitCollection:", buf, 2u);
  }

  traitCollection = [(MKMapView *)self traitCollection];
  [(MKMapGestureController *)self->_gestureController _setTraitCollection:traitCollection];
  traitCollection2 = [(MKMapView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];
  v11 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v11 & 1) == 0)
  {
    mapView = self->_mapView;
    traitCollection3 = [(MKMapView *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
    [(VKMapView *)mapView _mapkit_configureLabelSizesForContentSizeCategory:preferredContentSizeCategory3];
  }

  v15 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    traitCollection4 = [(MKMapView *)self traitCollection];
    userInterfaceStyle = [traitCollection4 userInterfaceStyle];
    if (userInterfaceStyle >= 3)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown %ld>", userInterfaceStyle];
    }

    else
    {
      v18 = off_1E76C6840[userInterfaceStyle];
    }

    *buf = 138412290;
    v33 = v18;
    _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "MKMapView: _traitEnvironment:didChangeTraitCollection: self.traitCollection.userInterfaceStyle : %@", buf, 0xCu);
  }

  v19 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    userInterfaceStyle2 = [collectionCopy userInterfaceStyle];
    if (userInterfaceStyle2 >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown %ld>", userInterfaceStyle2];
    }

    else
    {
      v21 = off_1E76C6840[userInterfaceStyle2];
    }

    *buf = 138412290;
    v33 = v21;
    _os_log_impl(&dword_1A2EA0000, v19, OS_LOG_TYPE_INFO, "MKMapView: _traitEnvironment:didChangeTraitCollection: previousTraitCollection.userInterfaceStyle : %@", buf, 0xCu);
  }

  traitCollection5 = [(MKMapView *)self traitCollection];
  userInterfaceStyle3 = [traitCollection5 userInterfaceStyle];
  userInterfaceStyle4 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle3 != userInterfaceStyle4)
  {
    [(MKMapView *)self _updateAppearanceIfNeeded];
  }

  lastEffectiveTraitCollectionIsolationQueue = self->_lastEffectiveTraitCollectionIsolationQueue;
  if (lastEffectiveTraitCollectionIsolationQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MKMapView__traitEnvironment_didChangeTraitCollection___block_invoke;
    block[3] = &unk_1E76CD810;
    block[4] = self;
    v31 = traitCollection;
    dispatch_sync(lastEffectiveTraitCollectionIsolationQueue, block);
    traitCollection6 = [(MKMapView *)self traitCollection];
    v27 = [traitCollection6 hasDifferentColorAppearanceComparedToTraitCollection:collectionCopy];

    if (v27)
    {
      [(MKMapView *)self _invalidateAllOverlayRendererColors];
      v28 = self->_mapView;
      traitCollection7 = [(MKMapView *)self traitCollection];
      -[VKMapView setIncreaseContrastEnabled:](v28, "setIncreaseContrastEnabled:", [traitCollection7 accessibilityContrast] == 1);
    }
  }
}

- (void)_setScrollEdgeEffectViewInteractionDisabled:(BOOL)disabled
{
  scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
  if (scrollEdgeEffectViewInteraction)
  {
    v5 = !disabled;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (scrollEdgeEffectViewInteraction)
    {
      return;
    }

    if (disabled)
    {
      return;
    }

    v6 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v6 isGlassEnabled];

    if (!isGlassEnabled)
    {
      return;
    }

    [(MKMapView *)self _enableScrollEdgeEffectViewInteraction];
  }

  else
  {
    [(MKMapView *)self _disableScrollEdgeEffectViewInteraction];
  }

  [(MKMapView *)self _updateLabelEdgeInsets];

  [(MKMapView *)self _updateLabelEdgeWidths];
}

- (void)_disableScrollEdgeEffectViewInteraction
{
  scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
  if (scrollEdgeEffectViewInteraction)
  {
    effectView = [(_UIScrollEdgeEffectViewInteraction *)scrollEdgeEffectViewInteraction effectView];
    [effectView removeFromSuperview];

    captureView = [(_UIScrollEdgeEffectViewInteraction *)self->_scrollEdgeEffectViewInteraction captureView];
    [captureView removeFromSuperview];

    [(MKMapView *)self removeInteraction:self->_scrollEdgeEffectViewInteraction];
    v6 = self->_scrollEdgeEffectViewInteraction;
    self->_scrollEdgeEffectViewInteraction = 0;
  }
}

- (void)_enableScrollEdgeEffectViewInteraction
{
  if (!self->_scrollEdgeEffectViewInteraction)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD6B0]);
    scrollEdgeEffectViewInteraction = self->_scrollEdgeEffectViewInteraction;
    self->_scrollEdgeEffectViewInteraction = v3;

    [(_UIScrollEdgeEffectViewInteraction *)self->_scrollEdgeEffectViewInteraction setOrdersBlurOverLuminanceAdjustment:1];
    [(MKMapView *)self addInteraction:self->_scrollEdgeEffectViewInteraction];
    contentView = self->_contentView;
    captureView = [(_UIScrollEdgeEffectViewInteraction *)self->_scrollEdgeEffectViewInteraction captureView];
    [(UIView *)contentView insertSubview:captureView aboveSubview:self->_basicMapView];

    v7 = self->_contentView;
    effectView = [(_UIScrollEdgeEffectViewInteraction *)self->_scrollEdgeEffectViewInteraction effectView];
    [(UIView *)v7 addSubview:effectView];
  }
}

- (void)setBackdropViewQualityChangingDisabled:(BOOL)disabled
{
  v3 = 0x1000000000;
  if (!disabled)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)willMoveToWindow:(id)window
{
  v28 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = MKGetMKMapViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    mapView = self->_mapView;
    window = [(MKMapView *)self window];
    if (windowCopy)
    {
      windowScene = [windowCopy windowScene];
    }

    else
    {
      windowScene = 0;
    }

    v18 = 134219008;
    selfCopy = self;
    v20 = 2048;
    v21 = mapView;
    v22 = 2048;
    v23 = window;
    v24 = 2048;
    v25 = windowCopy;
    v26 = 2048;
    v27 = windowScene;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "willMoveToWindow called; MKMapView: %p | VKMapView: %p | self.window: %p | newWindow: %p | newWindow.windowScene: %p", &v18, 0x34u);
    if (windowCopy)
    {
    }
  }

  v9 = _onscreenMapViews;
  window2 = [(MKMapView *)self window];

  if (!windowCopy || window2)
  {
    window3 = [(MKMapView *)self window];

    if (!windowCopy && window3)
    {
      --_onscreenMapViews;
      [(MKMapView *)self _stopEffects];
    }
  }

  else
  {
    ++_onscreenMapViews;
    [(MKMapView *)self _startEffects];
  }

  if ((*(&self->_flags + 4) & 0x10) == 0)
  {
    if (v9 > 0 || _onscreenMapViews < 1)
    {
      if (v9 >= 1 && _onscreenMapViews <= 0)
      {
        v14 = +[MKSystemController sharedInstance];
        overrideBlurStyle = [v14 overrideBlurStyle];

        if (overrideBlurStyle)
        {
          v16 = MEMORY[0x1E69DD370];
          currentDevice = [MEMORY[0x1E69DC938] currentDevice];
          [v16 setAllBackdropViewsToGraphicsQuality:{objc_msgSend(currentDevice, "_graphicsQuality")}];
        }
      }
    }

    else
    {
      v12 = +[MKSystemController sharedInstance];
      overrideBlurStyle2 = [v12 overrideBlurStyle];

      if (overrideBlurStyle2)
      {
        [MEMORY[0x1E69DD370] setAllBackdropViewsToGraphicsQuality:10];
      }
    }
  }

  [(MKMapView *)self _unregisterSceneLifecycleNotifications];
  [(MKMapView *)self _forceManifestUpdateIfNecessary];
  [(MKMapView *)self _geoapLogMapViewEngagementIfRequired];
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  internal = self->_internal;
  if (internal)
  {
    objc_storeWeak(&internal->view, 0);
  }

  MapsFeature_RemoveBlockListener();
  [(VKMapView *)self->_mapView setCameraDelegate:0];
  [(VKMapView *)self->_mapView setMapDelegate:0];
  [(MKLocationManager *)self->_locationManager stopHeadingUpdateWithObserver:self];
  [(MKLocationManager *)self->_locationManager stopLocationUpdateWithObserver:self];
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager removeTileGroupObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UITapGestureRecognizer *)self->_selectingTapGestureRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_nonselectingTapGestureRecognizer setDelegate:0];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
  [(MKAnnotationManager *)self->_annotationManager setDelegate:0];
  [(MKAnnotationManager *)self->_annotationManager setContainer:0];
  annotationContainer = self->_annotationContainer;
  if (annotationContainer->_selectedAnnotationView)
  {
    [(MKAnnotationView *)annotationContainer->_selectedAnnotationView _setSelected:0 animated:0];
    annotationContainer = self->_annotationContainer;
  }

  [(MKAnnotationContainerView *)annotationContainer setDelegate:0];
  [(MKOverlayContainerView *)self->_overlayContainer setDelegate:0];
  [(MKMapGestureController *)self->_gestureController setDelegate:0];
  [(MKMapView *)self set_startEffectsTimer:0];
  [(MKMapCamera *)self->_camera _setMapView:0];
  [(MKMapView *)self _clearLayoutGuides];
  [(MKMapView *)self _unregisterConfigurationObservers];
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  v7.receiver = self;
  v7.super_class = MKMapView;
  [(MKMapView *)&v7 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MKMapView;
  coderCopy = coder;
  [(MKMapView *)&v9 encodeWithCoder:coderCopy];
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken, &__block_literal_global_1908);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate == 1)
    {
      v5 = self->_unsafeDelegate;
    }

    else
    {
      v5 = [(MKMapView *)self _safeDelegate:v9.receiver];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [coderCopy encodeConditionalObject:v6 forKey:{@"MKDelegate", v9.receiver, v9.super_class}];

  [coderCopy encodeInteger:-[MKMapView mapType](self forKey:{"mapType"), @"MKMapType"}];
  [coderCopy encodeBool:-[MKMapView isZoomEnabled](self forKey:{"isZoomEnabled"), @"MKZoomEnabled"}];
  [coderCopy encodeBool:-[MKMapView isScrollEnabled](self forKey:{"isScrollEnabled"), @"MKScrollEnabled"}];
  [coderCopy encodeBool:-[MKMapView showsUserLocation](self forKey:{"showsUserLocation"), @"MKShowsUserLocation"}];
  [coderCopy encodeInteger:-[MKMapView pitchButtonVisibility](self forKey:{"pitchButtonVisibility"), @"MKPitchButtonVisibility"}];
  [coderCopy encodeBool:-[MKMapView isPitchEnabled](self forKey:{"isPitchEnabled"), @"MKPitchEnabled"}];
  [coderCopy encodeBool:-[MKMapView isRotateEnabled](self forKey:{"isRotateEnabled"), @"MKRotateEnabled"}];
  [coderCopy encodeBool:-[MKMapView showsBuildings](self forKey:{"showsBuildings"), @"MKShowsBuildings"}];
  [coderCopy encodeBool:-[MKMapView showsTraffic](self forKey:{"showsTraffic"), @"MKShowsTraffic"}];
  [coderCopy encodeBool:-[MKMapView showsCompass](self forKey:{"showsCompass"), @"MKShowsCompass"}];
  [coderCopy encodeBool:-[MKMapView showsScale](self forKey:{"showsScale"), @"MKShowsScaleKey"}];
  [coderCopy encodeBool:-[MKMapView showsUserTrackingButton](self forKey:{"showsUserTrackingButton"), @"MKShowsUserTrackingButton"}];
  [coderCopy encodeBool:-[MKMapView _showsPointsOfInterest](self forKey:{"_showsPointsOfInterest"), @"MKShowsPointsOfInterest"}];
  _pointOfInterestFilter = [(MKMapConfiguration *)self->_preferredConfiguration _pointOfInterestFilter];
  [coderCopy encodeObject:_pointOfInterestFilter forKey:@"MKPointOfInterestFilter"];

  preferredConfiguration = [(MKMapView *)self preferredConfiguration];
  [coderCopy encodeObject:preferredConfiguration forKey:@"MKPreferredConfiguration"];
}

- (MKMapView)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695DA20];
    v12 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v14 = NSStringFromSelector(a2);
    v15 = [v12 stringWithFormat:@"%@ %@", selfCopy, v14];

    [v10 raise:v11 format:{@"%@: MKMapView must be initialized on the main thread.", v15}];
    v6 = 0;
    goto LABEL_38;
  }

  v20.receiver = self;
  v20.super_class = MKMapView;
  v6 = [(MKMapView *)&v20 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = -[MKMapView _commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:](v6, "_commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:", 0, 0, 0, 1, [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo], 1, 0);
    if ([coderCopy containsValueForKey:@"MKZoomEnabled"])
    {
      -[MKMapView setZoomEnabled:](v6, "setZoomEnabled:", [coderCopy decodeBoolForKey:@"MKZoomEnabled"]);
    }

    if ([coderCopy containsValueForKey:@"MKScrollEnabled"])
    {
      -[MKMapView setScrollEnabled:](v6, "setScrollEnabled:", [coderCopy decodeBoolForKey:@"MKScrollEnabled"]);
    }

    if ([coderCopy containsValueForKey:@"MKShowsUserLocation"])
    {
      -[MKMapView setShowsUserLocation:](v6, "setShowsUserLocation:", [coderCopy decodeBoolForKey:@"MKShowsUserLocation"]);
    }

    if ([coderCopy containsValueForKey:@"MKDelegate"])
    {
      v8 = [coderCopy decodeObjectForKey:@"MKDelegate"];
      [(MKMapView *)v6 setDelegate:v8];
    }

    if ([coderCopy containsValueForKey:@"MKPitchButtonVisibility"])
    {
      -[MKMapView setPitchButtonVisibility:](v6, "setPitchButtonVisibility:", [coderCopy decodeIntegerForKey:@"MKPitchButtonVisibility"]);
    }

    if ([coderCopy containsValueForKey:@"MKPitchEnabled"])
    {
      -[MKMapView setPitchEnabled:](v6, "setPitchEnabled:", [coderCopy decodeBoolForKey:@"MKPitchEnabled"]);
    }

    if ([coderCopy containsValueForKey:@"MKRotateEnabled"])
    {
      -[MKMapView setRotateEnabled:](v6, "setRotateEnabled:", [coderCopy decodeBoolForKey:@"MKRotateEnabled"]);
    }

    if ([coderCopy containsValueForKey:@"MKPreferredConfiguration"])
    {
      preferredConfiguration = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPreferredConfiguration"];
      [(MKMapView *)v6 setPreferredConfiguration:preferredConfiguration];
      goto LABEL_31;
    }

    if ([coderCopy containsValueForKey:@"MKMapType"])
    {
      -[MKMapView setMapType:](v6, "setMapType:", [coderCopy decodeIntegerForKey:@"MKMapType"]);
    }

    if ([coderCopy containsValueForKey:@"MKPointOfInterestFilter"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPointOfInterestFilter"];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"MKShowsPointsOfInterest"] || (objc_msgSend(coderCopy, "decodeBoolForKey:", @"MKShowsPointsOfInterest") & 1) != 0)
      {
        goto LABEL_27;
      }

      v16 = +[MKPointOfInterestFilter filterExcludingAllCategories];
    }

    v17 = v16;
    [(MKMapConfiguration *)v6->_preferredConfiguration set_pointOfInterestFilter:v16];

LABEL_27:
    if ([coderCopy containsValueForKey:@"MKShowsBuildings"])
    {
      -[MKMapView setShowsBuildings:](v6, "setShowsBuildings:", [coderCopy decodeBoolForKey:@"MKShowsBuildings"]);
    }

    if (![coderCopy containsValueForKey:@"MKShowsTraffic"])
    {
      goto LABEL_32;
    }

    v18 = [coderCopy decodeBoolForKey:@"MKShowsTraffic"];
    preferredConfiguration = [(MKMapView *)v6 preferredConfiguration];
    [preferredConfiguration set_showsTraffic:v18];
LABEL_31:

LABEL_32:
    if ([coderCopy containsValueForKey:@"MKShowsCompass"])
    {
      -[MKMapView setShowsCompass:](v6, "setShowsCompass:", [coderCopy decodeBoolForKey:@"MKShowsCompass"]);
    }

    if ([coderCopy containsValueForKey:@"MKShowsScaleKey"])
    {
      -[MKMapView setShowsScale:](v6, "setShowsScale:", [coderCopy decodeBoolForKey:@"MKShowsScaleKey"]);
    }

    if ([coderCopy containsValueForKey:@"MKShowsUserTrackingButton"])
    {
      -[MKMapView setShowsUserTrackingButton:](v6, "setShowsUserTrackingButton:", [coderCopy decodeBoolForKey:@"MKShowsUserTrackingButton"]);
    }
  }

LABEL_38:

  return v6;
}

- (id)initFromIBWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (initFromIBWithFrame__onceToken != -1)
    {
      dispatch_once(&initFromIBWithFrame__onceToken, &__block_literal_global_231);
    }

    v18.receiver = self;
    v18.super_class = MKMapView;
    height = [(MKMapView *)&v18 initWithFrame:x, y, width, height];
    if (height)
    {
      v10 = -[MKMapView _commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:](height, "_commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:", 1, 0, 0, 1, [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo], 1, 0);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695DA20];
    v13 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v15 = NSStringFromSelector(a2);
    v16 = [v13 stringWithFormat:@"%@ %@", selfCopy, v15];

    [v11 raise:v12 format:{@"%@: MKMapView must be initialized on the main thread.", v16}];
    return 0;
  }

  return height;
}

uint64_t __33__MKMapView_initFromIBWithFrame___block_invoke()
{
  GEODefaultsDisableServer();
  GEONetworkDefaultsDisableServerConnection();
  [MEMORY[0x1E69A1CD8] disableServerConnection];
  [MEMORY[0x1E69A2478] disableServerConnection];
  v0 = MEMORY[0x1E69A2610];

  return [v0 useLocalLoader];
}

- (MKMapView)initWithFrame:(CGRect)frame locationManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  managerCopy = manager;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695DA20];
    v16 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v18 = NSStringFromSelector(a2);
    v19 = [v16 stringWithFormat:@"%@ %@", selfCopy, v18];

    [v14 raise:v15 format:{@"%@: MKMapView must be initialized on the main thread.", v19}];
    v20 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v23.receiver = self;
  v23.super_class = MKMapView;
  height = [(MKMapView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = height;
    if (managerCopy)
    {
      v13 = [[MKLocationManager alloc] initWithCLLocationManager:managerCopy];
    }

    else
    {
      v13 = 0;
    }

    v21 = -[MKMapView _commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:](v12, "_commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:", 0, 0, v13, 1, [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo], 1, 0);
    selfCopy = v12;

    v20 = selfCopy;
    goto LABEL_9;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (id)_initWithFrame:(CGRect)frame allowsAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v20.receiver = self;
    v20.super_class = MKMapView;
    height = [(MKMapView *)&v20 initWithFrame:x, y, width, height];
    if (height)
    {
      v12 = -[MKMapView _commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:](height, "_commonInitFromIB:gestureRecognizerHostView:locationManager:showsAttribution:showsAppleLogo:allowsAntialiasing:carDisplayType:", 0, 0, 0, 1, [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo], antialiasingCopy, 0);
    }
  }

  else
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695DA20];
    v15 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v17 = NSStringFromSelector(a2);
    v18 = [v15 stringWithFormat:@"%@ %@", selfCopy, v17];

    [v13 raise:v14 format:{@"%@: MKMapView must be initialized on the main thread.", v18}];
    return 0;
  }

  return height;
}

- (id)_initWithFrame:(CGRect)frame gestureRecognizerHostView:(id)view showsAttribution:(BOOL)attribution showsAppleLogo:(BOOL)logo allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type
{
  antialiasingCopy = antialiasing;
  logoCopy = logo;
  attributionCopy = attribution;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v29.receiver = self;
    v29.super_class = MKMapView;
    height = [(MKMapView *)&v29 initWithFrame:x, y, width, height];
    v20 = height;
    if (height)
    {
      v21 = [(MKMapView *)height _commonInitFromIB:0 gestureRecognizerHostView:viewCopy locationManager:0 showsAttribution:attributionCopy showsAppleLogo:logoCopy allowsAntialiasing:antialiasingCopy carDisplayType:type];
    }
  }

  else
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695DA20];
    v24 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v26 = NSStringFromSelector(a2);
    v27 = [v24 stringWithFormat:@"%@ %@", selfCopy, v26];

    [v22 raise:v23 format:{@"%@: MKMapView must be initialized on the main thread.", v27}];
    v20 = 0;
  }

  return v20;
}

- (id)_commonInitFromIB:(BOOL)b gestureRecognizerHostView:(id)view locationManager:(id)manager showsAttribution:(BOOL)attribution showsAppleLogo:(BOOL)logo allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type
{
  antialiasingCopy = antialiasing;
  logoCopy = logo;
  attributionCopy = attribution;
  bCopy = b;
  v142 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  obj = manager;
  v14 = MKGetMKMapViewLog();
  self->_mapViewDidFinishRenderingSignpostID = os_signpost_id_generate(v14);

  v15 = MKGetMKMapViewLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CommonInitialization", &unk_1A30FEA0E, buf, 2u);
  }

  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];
  if (isInternalInstall)
  {
    LOBYTE(isInternalInstall) = GEOConfigGetBOOL();
  }

  self->_shouldUseTapeworm = isInternalInstall;

  if (self->_shouldUseTapeworm)
  {
    GEOConfigGetUint64();
    self->_tapewormInstructionCount = GEOGetApproximateTapewormIterations();
  }

  v18 = _MKLinkedOnOrAfterReleaseSet(1540);
  v19 = 0x400000000000000;
  if (v18)
  {
    v19 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFBFFFFFFFFFFFFFFLL | v19;
  v20 = _MKLinkedOnOrAfterReleaseSet(769);
  v21 = 0x800000000000000;
  if (!v20)
  {
    v21 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7FFFFFFFFFFFFFFLL | v21;
  v22 = objc_alloc_init(MKStandardMapConfiguration);
  preferredConfiguration = self->_preferredConfiguration;
  self->_preferredConfiguration = &v22->super;

  [MKMapConfiguration _cartographicConfigurationForMapConfiguration:self->_preferredConfiguration];
  v24 = v139;
  *&self->_cartographicConfiguration.style = *buf;
  *&self->_cartographicConfiguration.projection = v24;
  *&self->_cartographicConfiguration.mapkitUsage = v140;
  *&self->_cartographicConfiguration.gridOnly = v141;
  v25 = obj;
  v26 = obj;
  if (!obj)
  {
    v26 = +[MKLocationManager sharedLocationManager];
    v25 = 0;
  }

  v27 = v25 == 0;
  objc_storeStrong(&self->_locationManager, v26);
  if (v27)
  {
  }

  if (_commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___once != -1)
  {
    dispatch_once(&_commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___once, &__block_literal_global_992);
  }

  [(MKLocationManager *)self->_locationManager setEnabled:!bCopy];
  v28 = dispatch_group_create();
  calloutShowAnimationGroup = self->_calloutShowAnimationGroup;
  self->_calloutShowAnimationGroup = v28;

  v30 = objc_alloc_init(MKMapViewInternal);
  internal = self->_internal;
  self->_internal = v30;

  objc_storeWeak(&self->_internal->view, self);
  v32 = MEMORY[0x1E69DDCE0];
  v33 = *(MEMORY[0x1E69DDCE0] + 16);
  *&self->_attributionInsets.top = *MEMORY[0x1E69DDCE0];
  *&self->_attributionInsets.bottom = v33;
  self->_compassViewSize = _MKLinkedOnOrAfterReleaseSet(3081);
  mapType = [(MKMapView *)self mapType];
  if (mapType - 1 < 4 || mapType == 107)
  {
    self->_compassViewStyle = 0;
  }

  else
  {
    traitCollection = [(MKMapView *)self traitCollection];
    self->_compassViewStyle = [traitCollection userInterfaceStyle] != 2;
  }

  v35 = +[MKSystemController sharedInstance];
  if ([v35 isGlassEnabled])
  {
    v36 = 16.0;
  }

  else
  {
    v36 = 5.0;
  }

  self->_compassInsets.top = v36;
  self->_compassInsets.left = v36;
  self->_compassInsets.bottom = v36;
  self->_compassInsets.right = v36;
  [(MKMapView *)self bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  *&self->_flags |= 0x102000uLL;
  v45 = +[MKSystemController sharedInstance];
  supportsExtendedGestures = [v45 supportsExtendedGestures];

  if (supportsExtendedGestures)
  {
    v47 = +[MKSystemController sharedInstance];
    supportsPitchAPI = [v47 supportsPitchAPI];
    v49 = 0x100000000;
    if (!supportsPitchAPI)
    {
      v49 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFFFFFEFFFFFFFFLL | v49;

    *&self->_flags |= 0x80000000uLL;
    self->_showsCompass = 1;
  }

  else
  {
    *&self->_flags &= 0xFFFFFFFE7FFFFFFFLL;
  }

  self->_scaleVisibility = 1;
  self->_pitchButtonVisibility = 1;
  self->_pitchButtonControlSize = 1;
  self->_userTrackingVisible = 0;
  self->_userTrackingControlSize = 1;
  [(MKMapView *)self _registerTraitCollectionObservation];
  traitCollection2 = [(MKMapView *)self traitCollection];
  lastTraitCollection = self->_lastTraitCollection;
  self->_lastTraitCollection = traitCollection2;

  v52 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v53 = dispatch_queue_create("com.apple.MapKit.MKMapView.effectiveTraitCollectionIsolation", v52);
  lastEffectiveTraitCollectionIsolationQueue = self->_lastEffectiveTraitCollectionIsolationQueue;
  self->_lastEffectiveTraitCollectionIsolationQueue = v53;

  v55 = 0x2000000;
  if (!attributionCopy)
  {
    v55 = 0;
  }

  v56 = 0x4000000;
  if (!logoCopy)
  {
    v56 = 0;
  }

  *&self->_flags = v56 | v55 | *&self->_flags & 0xFFFFFFFFF9FFFFFFLL;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v59 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];
  v60 = 0x10000000;
  if (!v59)
  {
    v60 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFEFFFFFFFLL | v60;

  *&self->_flags |= 0x20008000000uLL;
  v61 = _MKLinkedOnOrAfterReleaseSet(2310);
  v62 = 0x6C0000000000;
  if (v61)
  {
    v62 = 0x680000000000;
  }

  *&self->_flags = v62 | *&self->_flags & 0xFFFF93FFFFFFFFFFLL;
  IsExtension = _UIApplicationIsExtension();
  v64 = 0x40000000000000;
  if (IsExtension)
  {
    v64 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFBFFFFFFFFFFFFFLL | v64;
  v65 = [[_MKMapContentView alloc] initWithFrame:v38, v40, v42, v44];
  contentView = self->_contentView;
  self->_contentView = &v65->super;

  [(UIView *)self->_contentView setAutoresizesSubviews:0];
  [(UIView *)self->_contentView setClipsToBounds:1];
  v67 = *v32;
  v68 = v32[1];
  v69 = v32[2];
  v70 = v32[3];
  [(UIView *)self->_contentView setLayoutMargins:*v32, v68, v69, v70];
  v71 = objc_alloc_init(MKMapCameraZoomRange);
  cameraZoomRange = self->_cameraZoomRange;
  self->_cameraZoomRange = v71;

  v73 = [[MKMapCameraBoundary alloc] initWithMapRect:0.0, 0.0, 268435456.0, 268435456.0];
  cameraBoundary = self->_cameraBoundary;
  self->_cameraBoundary = v73;

  if (!bCopy)
  {
    v75 = +[MKSystemController sharedInstance];
    requiresRTT = [v75 requiresRTT];

    v77 = [[MKBasicMapView alloc] initWithFrame:0 andGlobe:requiresRTT shouldRasterize:antialiasingCopy allowsAntialiasing:type carDisplayType:v38, v40, v42, v44];
    basicMapView = self->_basicMapView;
    self->_basicMapView = v77;

    mapView = [(MKBasicMapView *)self->_basicMapView mapView];
    mapView = self->_mapView;
    self->_mapView = mapView;

    v81 = +[MKSystemController sharedInstance];
    -[VKMapView setIsPitchable:](self->_mapView, "setIsPitchable:", [v81 supportsPitchAPI]);

    [(MKBasicMapView *)self->_basicMapView setRendersInBackground:_sRendersInBackgroundByDefault];
    [(VKMapView *)self->_mapView _mapkit_configureFromDefaults];
    v82 = self->_mapView;
    traitCollection3 = [(MKMapView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
    [(VKMapView *)v82 _mapkit_configureLabelSizesForContentSizeCategory:preferredContentSizeCategory];

    v85 = self->_mapView;
    traitCollection4 = [(MKMapView *)self traitCollection];
    -[VKMapView setIncreaseContrastEnabled:](v85, "setIncreaseContrastEnabled:", [traitCollection4 accessibilityContrast] == 1);

    v87 = [[MKLabelSelectionFilter alloc] initWithMapFeatureOptions:0];
    labelSelectionFilter = self->_labelSelectionFilter;
    self->_labelSelectionFilter = v87;

    [(VKMapView *)self->_mapView setLabelSelectionFilter:self->_labelSelectionFilter];
    [(VKMapView *)self->_mapView setShowsVenues:(*&self->_flags >> 28) & 1];
    mEMORY[0x1E69A22E8] = [MEMORY[0x1E69A22E8] sharedNoCreate];
    v90 = mEMORY[0x1E69A22E8];
    if (mEMORY[0x1E69A22E8])
    {
      state = [mEMORY[0x1E69A22E8] state];
      v92 = state;
      if (state >= 3u)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *&buf[4] = v92;
          _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
        }

        LOBYTE(v93) = 0;
      }

      else
      {
        v93 = 4u >> (state & 7);
      }

      [(VKMapView *)self->_mapView setOfflineMode:v93 & 1];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__offlineStateDidChange_ name:*MEMORY[0x1E69A16A8] object:0];

    [(VKMapView *)self->_mapView setMapDelegate:self];
    [(VKMapView *)self->_mapView setCameraDelegate:self];
    [(VKMapView *)self->_mapView setMapType:0 animated:0];
  }

  *&self->_flags |= 0x200000000uLL;
  [(VKMapView *)self->_mapView setShowsPointsOfInterest:1];
  [(VKMapView *)self->_mapView setShowsBuildings:(*&self->_flags >> 33) & 1];
  v96 = +[MKSystemController sharedInstance];
  -[VKMapView setNewInterfaceEnabled:](self->_mapView, "setNewInterfaceEnabled:", [v96 isGlassEnabled]);

  v97 = [[MKScrollContainerView alloc] initWithFrame:0.0, 0.0, 268435456.0, 268435456.0];
  scrollContainerView = self->_scrollContainerView;
  self->_scrollContainerView = &v97->super;

  [(UIView *)self->_scrollContainerView setAutoresizesSubviews:0];
  [(UIView *)self->_contentView addSubview:self->_scrollContainerView];
  v99 = [[MKAnnotationContainerView alloc] initWithFrame:v38, v40, v42, v44];
  annotationContainer = self->_annotationContainer;
  self->_annotationContainer = v99;

  [(VKMapView *)self->_mapView addCustomFeatureDataSource:self->_annotationContainer];
  [(MKAnnotationContainerView *)self->_annotationContainer setAutoresizesSubviews:0];
  [(MKAnnotationContainerView *)self->_annotationContainer setAutoresizingMask:18];
  [(MKAnnotationContainerView *)self->_annotationContainer setDelegate:self];
  [(UIView *)self->_contentView insertSubview:self->_annotationContainer aboveSubview:self->_scrollContainerView];
  v101 = objc_alloc_init(MKAnnotationManager);
  annotationManager = self->_annotationManager;
  self->_annotationManager = v101;

  [(MKAnnotationManager *)self->_annotationManager setDelegate:self];
  [(MKAnnotationManager *)self->_annotationManager setContainer:self];
  v103 = objc_alloc_init(MKMapCamera);
  camera = self->_camera;
  self->_camera = v103;

  [(MKMapCamera *)self->_camera _setMapView:self];
  if (!bCopy)
  {
    [(UIView *)self->_contentView insertSubview:self->_basicMapView belowSubview:self->_scrollContainerView];
  }

  v105 = +[MKSystemController sharedInstance];
  if ([v105 isGlassEnabled])
  {
    _mapkit_shouldEnableScrollEdgeEffectViewInteraction = [MEMORY[0x1E696AAE8] _mapkit_shouldEnableScrollEdgeEffectViewInteraction];

    if (_mapkit_shouldEnableScrollEdgeEffectViewInteraction)
    {
      [(MKMapView *)self _enableScrollEdgeEffectViewInteraction];
    }
  }

  else
  {
  }

  [(MKMapView *)self addSubview:self->_contentView];
  [(MKMapView *)self setClipsToBounds:1];
  if ([(MKMapView *)self effectiveUserInterfaceLayoutDirection])
  {
    v107 = 4;
  }

  else
  {
    v107 = 8;
  }

  self->_attributionCorner = v107;
  [(MKMapView *)self _setPreferredConfiguration:self->_preferredConfiguration onInit:1];
  [(MKMapView *)self _registerConfigurationObservers];
  v108 = [[_MKOfflineRegionsOverlayManager alloc] initWithMapView:self];
  offlineRegionsOverlayManager = self->_offlineRegionsOverlayManager;
  self->_offlineRegionsOverlayManager = v108;

  if ((*(&self->_flags + 9) & 1) == 0)
  {
    [(MKMapView *)self setLayoutMargins:v67, v68, v69, v70];
  }

  [(MKMapView *)self _updateAppearanceIfNeeded];
  _GEOConfigAddDelegateListenerForKey();
  _GEOConfigAddDelegateListenerForKey();

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter2 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter2 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
  [defaultCenter2 addObserver:self selector:sel_applicationWillTerminate_ name:*MEMORY[0x1E69DDBD0] object:0];
  [defaultCenter2 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter2 addObserver:self selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x1E69DDCB8] object:0];
  if (!_MKLinkedOnOrAfterReleaseSet(2310))
  {
    [defaultCenter2 addObserver:self selector:sel__willChangeStatusBarFrame_ name:*MEMORY[0x1E69DDBB0] object:0];
  }

  objc_initWeak(buf, self);
  v136[1] = MEMORY[0x1E69E9820];
  v136[2] = 3221225472;
  v136[3] = __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_217;
  v136[4] = &unk_1E76C6590;
  objc_copyWeak(&v137, buf);
  v111 = MapsFeature_AddBlockListener();
  shelbyvilleListener = self->_shelbyvilleListener;
  self->_shelbyvilleListener = v111;

  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager addTileGroupObserver:self queue:MEMORY[0x1E69E96A0]];

  [(MKMapView *)self setUserInteractionEnabled:1];
  [(MKMapView *)self setMultipleTouchEnabled:1];
  self->_automaticallySnapsToNorth = 1;
  [(MKMapView *)self goToDefaultLocation];
  if (!bCopy)
  {
    [(MKMapView *)self _configureGestureRecognizers:viewCopy];
  }

  v114 = [[MKRotationFilter alloc] initWithMapLayer:self->_mapView];
  rotationFilter = self->_rotationFilter;
  self->_rotationFilter = v114;

  [(MKRotationFilter *)self->_rotationFilter setDelegate:self];
  [(MKMapGestureController *)self->_gestureController setRotationFilter:self->_rotationFilter];
  [(MKMapView *)self _updateAttribution];
  [(MKMapView *)self _updateAppleLogoVisibility];
  [(MKMapView *)self _stopEffects];
  self->_cachedLookAroundAvailability = 0;
  v116 = objc_alloc_init(MKUsageCounter);
  usageCounter = self->_usageCounter;
  self->_usageCounter = v116;

  [(MKUsageCounter *)self->_usageCounter count:0];
  [MEMORY[0x1E69A1598] reportDailyUsageCountType:153];
  [(MKMapView *)self _setVectorKitConsoleEnabled:GEOConfigGetBOOL()];
  _GEOConfigAddDelegateListenerForKey();

  v118 = +[MKSystemController sharedInstance];
  if ([v118 isGlassEnabled])
  {
    v119 = 2;
  }

  else
  {
    v119 = 1;
  }

  self->_controlBackgroundStyle = v119;
  [(MKMapView *)self _setPitchButtonBackgroundStyle:v119];
  self->_userTrackingButtonBackgroundStyle = v119;
  GEOConfigGetDouble();
  self->_pitchButton3DMinimumZoomLevel = v120;
  v135[1] = MEMORY[0x1E69E9820];
  v135[2] = 3221225472;
  v135[3] = __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_2;
  v135[4] = &unk_1E76C9E60;
  objc_copyWeak(v136, buf);
  v121 = _GEOConfigAddBlockListenerForKey();
  pitchButton3DMinimumZoomLevelListener = self->_pitchButton3DMinimumZoomLevelListener;
  self->_pitchButton3DMinimumZoomLevelListener = v121;

  self->_mapViewPortIgnoresEdgeInsets = GEOConfigGetBOOL();
  v131 = MEMORY[0x1E69E9820];
  v132 = 3221225472;
  v133 = __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_3;
  v134 = &unk_1E76C9E60;
  objc_copyWeak(v135, buf);
  v123 = _GEOConfigAddBlockListenerForKey();
  mapViewPortIgnoresEdgeInsetsListener = self->_mapViewPortIgnoresEdgeInsetsListener;
  self->_mapViewPortIgnoresEdgeInsetsListener = v123;

  v125 = MKGetMKMapViewLog();
  if (os_signpost_enabled(v125))
  {
    *v130 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v125, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CommonInitialization", &unk_1A30FEA0E, v130, 2u);
  }

  objc_destroyWeak(v135);
  objc_destroyWeak(v136);
  objc_destroyWeak(&v137);
  objc_destroyWeak(buf);

  return self;
}

void __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAppearanceIfNeeded];
    WeakRetained = v2;
  }
}

void __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    GEOConfigGetDouble();
    WeakRetained = v3;
    *(v3 + 174) = v2;
  }
}

void __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[1408] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

void __139__MKMapView__commonInitFromIB_gestureRecognizerHostView_locationManager_showsAttribution_showsAppleLogo_allowsAntialiasing_carDisplayType___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  [v0 updateProvidersForCurrentCountry];

  v1 = +[MKTrafficSupport sharedTrafficSupport];
  [v1 setupTrafficIncidents];

  if (MKRegisterGEOMultitaskingNotifications__once != -1)
  {
    dispatch_once(&MKRegisterGEOMultitaskingNotifications__once, &__block_literal_global_37443);
  }

  v4 = @"ZoomingDefault";
  v5[0] = &unk_1F1610CB0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 registerDefaults:v2];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"__mapkit_regionSentinel"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"__mapkit_edgeInsetsSentinel"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MKMapView;
    v5 = [(MKMapView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_setUseBalloonCalloutsForLabels:(BOOL)labels
{
  if (!labels)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Do not use this SPI"];
  }
}

+ ($E1D56841AF022BCD1A238A621DF8CB5F)regionThatFitsMapType:(SEL)type viewSize:(unint64_t)size edgeInsets:(CGSize)insets region:(UIEdgeInsets)region
{
  right = region.right;
  bottom = region.bottom;
  left = region.left;
  top = region.top;
  height = insets.height;
  width = insets.width;
  v11 = [MKMapView minZoomLevelForMapType:size viewSize:a7];
  v12 = +[MKSystemController sharedInstance];
  if ([v12 supports3DMaps])
  {
    v13 = 0;
  }

  else
  {
    mEMORY[0x1E69DF468] = [MEMORY[0x1E69DF468] sharedPlatform];
    v13 = [mEMORY[0x1E69DF468] supportsHiResRTT] ^ 1;
  }

  return [MKMapView _regionThatFitsMapType:size viewSize:v13 viewInsets:width edgePadding:height region:*MEMORY[0x1E69DDCE0] minZoomLevel:*(MEMORY[0x1E69DDCE0] + 8) maxZoomLevel:*(MEMORY[0x1E69DDCE0] + 16) snapToZoomLevel:*(MEMORY[0x1E69DDCE0] + 24), *&top, *&left, *&bottom, *&right, v19, v20, v21, v22, v11, 0x4035000000000000];
}

- (void)_setSelectedFeatureID:(unint64_t)d
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  v5 = _mapLayer;
  if (d)
  {
    [_mapLayer setSelectedFeatureId:d];
  }

  else
  {
    [_mapLayer deselectFeatureId];
  }
}

- (void)_stopPostingScaleUpdateNotifications
{
  if (self)
  {
    v3 = *(self + 1320);
    if (v3)
    {
      *(self + 1320) = v3 - 1;
    }

    else
    {
      v5 = v1;
      v6 = v2;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v4 = 0;
        _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _scaleUpdateNotificationObserversCount > 0", v4, 2u);
      }
    }
  }
}

- (void)_stopPostingCompassUpdateNotifications
{
  if (self)
  {
    v3 = *(self + 1312);
    if (v3)
    {
      *(self + 1312) = v3 - 1;
    }

    else
    {
      v5 = v1;
      v6 = v2;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v4 = 0;
        _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _compassUpdateNotificationObserversCount > 0", v4, 2u);
      }
    }
  }
}

- (void)locationManagerApprovalDidChange:(id)change
{
  [(MKMapView *)self _updateShowHeadingIndicator];
  [(MKMapView *)self _updateRotationSupported];
  userLocationView = [(MKAnnotationContainerView *)self->_annotationContainer userLocationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = userLocationView;
LABEL_5:
    v6 = _mkUserLocationView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [userLocationView _mkUserLocationView];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  if (v6)
  {
    [v6 _setShowingPreciseAuthorizedLocation:{-[MKLocationManager isAuthorizedForPreciseLocation](self->_locationManager, "isAuthorizedForPreciseLocation")}];
  }
}

- (void)locationManagerDidReset:(id)reset
{
  resetCopy = reset;
  if ((*(&self->_flags + 5) & 0x40) != 0)
  {
    v6 = resetCopy;
    if (self->_userLocation)
    {
      if (self->_userTrackingMode && [(MKMapView *)self hasUserLocation])
      {
        [(VKMapView *)self->_mapView stopTrackingAnnotation];
      }

      [(MKMapView *)self removeUserLocation];
      [(MKUserLocation *)self->_userLocation reset];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MKUserTrackingViewDidResetUserLocationNotification" object:self userInfo:0];
    }

    [(MKMapView *)self _updateLocationConsole];
    resetCopy = v6;
  }
}

- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error
{
  errorCopy = error;
  userLocationView = [(MKMapView *)self userLocationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = userLocationView;
LABEL_5:
    v7 = _mkUserLocationView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [userLocationView _mkUserLocationView];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  [v7 locationManagerFailedToUpdateLocation];
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v12 = _safeDelegate2;
    }

    else
    {
      v12 = 0;
    }

    [(MKMapViewDelegate *)v12 mapView:self didFailToLocateUserWithError:errorCopy];
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  v32 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  *&self->_flags |= 0x1000000000000uLL;
  hasUserLocation = [(MKMapView *)self hasUserLocation];
  lastLocation = [locationCopy lastLocation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [lastLocation uuid];
    if (uuid)
    {
      v8 = MKGetPuckTrackingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v28 = 138412546;
        v29 = uuid;
        v30 = 2080;
        v31 = "[MKMapView(UserPositioningInternal) locationManagerUpdatedLocation:]";
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "[MK] %@ Received - in %s", &v28, 0x16u);
      }
    }
  }

  flags = self->_flags;
  v10 = lastLocation;
  if ((flags & 0x20000000000) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    timestamp = [lastLocation timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v14 = v13;

    v15 = *&_userTrackingScrollDuration_kUserTrackingScrollDuration;
    if (*&_userTrackingScrollDuration_kUserTrackingScrollDuration < 0.0)
    {
      v16 = +[MKLocationManager sharedLocationManager];
      [v16 expectedGpsUpdateInterval];
      *&_userTrackingScrollDuration_kUserTrackingScrollDuration = v17 + 0.1;

      v15 = *&_userTrackingScrollDuration_kUserTrackingScrollDuration;
    }

    v18 = Current + v15 - v14;
    v19 = CFAbsoluteTimeGetCurrent();
    timestamp2 = [lastLocation timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    v22 = v21;

    v10 = lastLocation;
    if (v18 > 0.0)
    {
      [locationCopy expectedGpsUpdateInterval];
      v10 = lastLocation;
      if (v19 - v22 < v23)
      {
        v10 = [lastLocation propagateLocationToTime:v18];
      }
    }

    [(MKMapView *)self setPredictedUserLocation:v10];
    flags = self->_flags;
  }

  if ((flags & 0x80) != 0)
  {
    [(MKMapView *)self _updateLocationConsole];
    *&self->_flags &= ~0x1000000000000uLL;
  }

  else
  {
    [(MKMapView *)self _updateUserLocationViewWithLocation:v10 hadUserLocation:hasUserLocation];
    *&self->_flags &= ~0x1000000000000uLL;
    if (self->_userTrackingMode)
    {
      cameraBoundary = [(MKMapView *)self cameraBoundary];
      if (cameraBoundary)
      {
        v25 = cameraBoundary;
        cameraBoundary2 = [(MKMapView *)self cameraBoundary];
        [v10 coordinate];
        v27 = [cameraBoundary2 _containsCoordinate:?];

        if ((v27 & 1) == 0)
        {
          [(MKMapView *)self setUserTrackingMode:0];
        }
      }
    }

    if ([(MKMapView *)self _useVehicleHeading])
    {
      [(MKMapView *)self _updateCourseForMapViewHeading:lastLocation];
    }
  }
}

- (void)_updateUserLocationViewWithLocation:(id)location hadUserLocation:(BOOL)userLocation
{
  userLocationCopy = userLocation;
  locationCopy = location;
  v6 = self->_userLocation;
  if (v6)
  {
    v7 = v6;
    if (userLocationCopy)
    {
      if ([(MKUserLocation *)v6 isEqualToLocation:locationCopy])
      {
        if ([(MKAnnotationManager *)self->_annotationManager containsAnnotation:v7])
        {
          userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
          hasElevation = [userLocationAnimator hasElevation];

          if (hasElevation)
          {
            [(MKUserLocation *)v7 setLocation:locationCopy];
            [locationCopy course];
            [(MKUserLocation *)v7 setCourse:?];
            *&self->_flags &= ~0x1000000000000uLL;
            goto LABEL_42;
          }
        }
      }
    }
  }

  else
  {
    v10 = objc_alloc_init(MKUserLocation);
    userLocation = self->_userLocation;
    self->_userLocation = v10;

    v7 = self->_userLocation;
  }

  if (!self->_userTrackingMode)
  {
    [(MKUserLocation *)v7 setLocation:locationCopy];
  }

  userLocationView = [(MKAnnotationContainerView *)self->_annotationContainer userLocationView];
  if (userLocationView && (-[MKAnnotationManager annotationRepresentations](self->_annotationManager, "annotationRepresentations"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:userLocationView], v13, v14))
  {
    _userLocationProxy = [userLocationView _userLocationProxy];
    userLocationAnimator2 = [(VKMapView *)self->_mapView userLocationAnimator];
    [userLocationAnimator2 setTarget:_userLocationProxy];

    if (self->_userTrackingMode)
    {
      userLocationAnimator3 = [(VKMapView *)self->_mapView userLocationAnimator];
      [userLocationAnimator3 setBehavior:2];
    }

    userLocationAnimator4 = [(VKMapView *)self->_mapView userLocationAnimator];
    [userLocationAnimator4 start];

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  [(MKLocationManager *)self->_locationManager expectedGpsUpdateInterval];
  [(MKUserLocation *)self->_userLocation setExpectedCoordinateUpdateInterval:?];
  if (self->_userTrackingMode)
  {
    [(MKUserLocation *)self->_userLocation setLocation:locationCopy];
  }

  v20 = userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = v20;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      goto LABEL_24;
    }

    _mkUserLocationView = [v20 _mkUserLocationView];
  }

  v22 = _mkUserLocationView;
LABEL_24:

  [(MKUserLocation *)self->_userLocation expectedCoordinateUpdateInterval];
  [v22 updateStateFromLocation:locationCopy duration:v23 + 0.1];

  _navigation_routeMatch = [locationCopy _navigation_routeMatch];
  [(MKMapView *)self _updateUserLocation:locationCopy routeMatch:_navigation_routeMatch];

  if (v19)
  {
    userLocationAnimator5 = [(VKMapView *)self->_mapView userLocationAnimator];
    [(MKLocationManager *)self->_locationManager currentVehicleHeading];
    [userLocationAnimator5 updateVehicleHeading:?];
  }

  [(MKAnnotationManager *)self->_annotationManager addAnnotation:v7];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v27 = _safeDelegate;
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v30 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didUpdateUserLocation:v7];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:self];

  if (!userLocationCopy && self->_userTrackingMode)
  {
    [(VKMapView *)self->_mapView setStaysCenteredDuringPinch:1];
    [(MKAnnotationManager *)self->_annotationManager updateVisibleAnnotations];
    [(VKMapView *)self->_mapView startTrackingAnnotation:self->_userLocation trackHeading:self->_userTrackingMode == 2 animated:self->_userTrackingModeShouldAnimate duration:0 timingFunction:-1.0];
  }

LABEL_42:
}

- (void)_updateUserLocation:(id)location routeMatch:(id)match
{
  v20 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  matchCopy = match;
  userLocationView = [(MKAnnotationContainerView *)self->_annotationContainer userLocationView];
  [userLocationView _setRouteMatch:matchCopy];
  v9 = userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    _userLocationProxy = [v9 _userLocationProxy];
  }

  else
  {
    _userLocationProxy = 0;
  }

  if (matchCopy != 0 && (*&self->_flags & 0x100000000000) != 0)
  {
    v11 = _userLocationProxy;
  }

  else
  {
    v11 = 0;
  }

  [(VKMapView *)self->_mapView setRouteLineSplitAnnotation:v11];
  objc_opt_class();
  uuid = 0;
  if (objc_opt_isKindOfClass())
  {
    uuid = [locationCopy uuid];
  }

  userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
  [userLocationAnimator updateLocation:locationCopy routeMatch:matchCopy & ((*&self->_flags << 18) >> 63) locationUpdateUUID:uuid];

  if (uuid)
  {
    v14 = MKGetPuckTrackingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = uuid;
      v18 = 2080;
      v19 = "[MKMapView(UserPositioningInternal) _updateUserLocation:routeMatch:]";
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "[MK] %@ Processed - in %s", &v16, 0x16u);
    }
  }

  [locationCopy coordinate];
  [(VKRouteContext *)self->_routeContext setPuckLocation:?];
  if (matchCopy)
  {
    route = [matchCopy route];
    -[VKRouteContext setRouteOffset:](self->_routeContext, "setRouteOffset:", [matchCopy routeCoordinate]);
    -[VKRouteContext setCurrentSegmentIndex:](self->_routeContext, "setCurrentSegmentIndex:", [route segmentIndexForStepIndex:{objc_msgSend(matchCopy, "stepIndex")}]);
    -[VKRouteContext setCurrentStepIndex:](self->_routeContext, "setCurrentStepIndex:", [matchCopy stepIndex]);
    -[VKRouteContext setPuckSnappedStopID:](self->_routeContext, "setPuckSnappedStopID:", [matchCopy transitID]);
  }

  else
  {
    [(VKRouteContext *)self->_routeContext setRouteOffset:*MEMORY[0x1E69A1918]];
    [(VKRouteContext *)self->_routeContext setCurrentSegmentIndex:0x7FFFFFFFFFFFFFFFLL];
    [(VKRouteContext *)self->_routeContext setCurrentStepIndex:0x7FFFFFFFFFFFFFFFLL];
    [(VKRouteContext *)self->_routeContext setPuckSnappedStopID:0];
  }
}

- (void)_resumeUserLocationUpdates:(BOOL)updates
{
  updatesCopy = updates;
  [(MKMapView *)self setIgnoreLocationUpdates:0];
  *&self->_flags &= ~0x400uLL;
  userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
  [userLocationAnimator resume];

  if (updatesCopy)
  {
    [(MKMapView *)self _clearFixedUserLocation];
    if ((*(&self->_flags + 2) & 8) != 0)
    {
      lastLocation = [(MKLocationManager *)self->_locationManager lastLocation];

      if (lastLocation)
      {
        locationManager = self->_locationManager;

        [(MKMapView *)self locationManagerUpdatedLocation:locationManager];
      }
    }
  }
}

- (void)_pauseUserLocationUpdates
{
  [(MKMapView *)self setIgnoreLocationUpdates:1];
  *&self->_flags |= 0x400uLL;
  userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
  [userLocationAnimator pause];
}

- (void)setIgnoreLocationUpdates:(BOOL)updates
{
  v3 = 128;
  if (!updates)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)removeUserLocation
{
  [(MKUserLocation *)self->_userLocation coordinate];
  if (fabs(v4) <= 180.0 && fabs(v3) <= 90.0)
  {
    annotationManager = self->_annotationManager;
    userLocation = self->_userLocation;

    [(MKAnnotationManager *)annotationManager removeAnnotation:userLocation];
  }
}

- (void)setPredictedUserLocation:(id)location
{
  locationCopy = location;
  userLocation = self->_userLocation;
  if (!userLocation)
  {
    selfCopy = self;
    v6 = objc_alloc_init(MKUserLocation);
    v7 = selfCopy->_userLocation;
    selfCopy->_userLocation = v6;

    userLocation = selfCopy->_userLocation;
  }

  v8 = userLocation;
  [(MKUserLocation *)v8 setPredictedLocation:locationCopy];
}

- (CLLocation)predictedUserLocation
{
  userLocation = self->_userLocation;
  if (!userLocation)
  {
    selfCopy = self;
    v4 = objc_alloc_init(MKUserLocation);
    v5 = selfCopy->_userLocation;
    selfCopy->_userLocation = v4;

    userLocation = selfCopy->_userLocation;
  }

  v6 = userLocation;
  predictedLocation = [(MKUserLocation *)v6 predictedLocation];

  return predictedLocation;
}

- (BOOL)_userLocationWithinVisibleMapBounds
{
  [(MKMapView *)self visibleMapRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  userLocationView = [(MKMapView *)self userLocationView];
  [userLocationView coordinate];
  v17.x = MKTilePointForCoordinate(v12, v13, 21.0);
  v17.y = v14;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v15 = MKMapRectContainsPoint(v18, v17);

  return v15;
}

- (BOOL)_isPoint:(CGPoint)point nearUserLocationView:(double)view
{
  y = point.y;
  x = point.x;
  userLocationView = [(MKMapView *)self userLocationView];
  v9 = userLocationView;
  if (userLocationView && ([userLocationView superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    basicMapView = self->_basicMapView;
    [v9 _presentationCoordinate];
    [(MKBasicMapView *)basicMapView convertCoordinate:self toCameraModelPointToView:?];
    if (sqrt((v12 - x) * (v12 - x) + (v13 - y) * (v13 - y)) >= view)
    {
      v15 = self->_basicMapView;
      [v9 coordinate];
      [(MKBasicMapView *)v15 convertCoordinate:self toCameraModelPointToView:?];
      v14 = sqrt((v16 - x) * (v16 - x) + (v17 - y) * (v17 - y)) < view;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isUserLocationViewCentered:(double)centered
{
  [(MKMapView *)self _centerPoint];

  return [MKMapView _isPoint:"_isPoint:nearUserLocationView:" nearUserLocationView:?];
}

- (BOOL)_isUserLocationInView:(BOOL)view
{
  if (![(MKMapView *)self hasUserLocation])
  {
    return 0;
  }

  userLocationView = [(MKAnnotationContainerView *)self->_annotationContainer userLocationView];
  v5 = userLocationView;
  if (userLocationView && ([userLocationView superview], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = objc_msgSend(v5, "isHidden"), v7, (v8 & 1) == 0))
  {
    [v5 bounds];
    [v5 convertRect:self toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(MKMapView *)self bounds];
    v20.origin.x = v12;
    v20.origin.y = v14;
    v20.size.width = v16;
    v20.size.height = v18;
    v9 = CGRectIntersectsRect(v19, v20);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setClearUserLocationOnLocationReset:(BOOL)reset
{
  v3 = 0x400000000000;
  if (!reset)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)_setLocationPropagationEnabled:(BOOL)enabled
{
  v3 = 0x20000000000;
  if (!enabled)
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setLocationConsoleEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(MKMapView *)self isLocationConsoleEnabled]!= enabled)
  {
    if (enabledCopy)
    {
      v5 = [[MKDebugLocationConsole alloc] initWithMapView:self];
      debugLocationConsole = self->_debugLocationConsole;
      self->_debugLocationConsole = v5;

      v7 = self->_debugLocationConsole;

      [(MKMapView *)self addSubview:v7];
    }

    else
    {
      [(MKDebugLocationConsole *)self->_debugLocationConsole removeFromSuperview];
      v8 = self->_debugLocationConsole;
      self->_debugLocationConsole = 0;
    }
  }
}

- (void)stopUpdatingUserLocation
{
  v3 = MKGetPuckTrackingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v26[0] = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "DebugMKLocationManager stopUpdatingUserLocation", v26, 2u);
  }

  userLocation = self->_userLocation;
  if (!userLocation)
  {
    selfCopy = self;
    v6 = objc_alloc_init(MKUserLocation);
    v7 = selfCopy->_userLocation;
    selfCopy->_userLocation = v6;

    userLocation = selfCopy->_userLocation;
  }

  v8 = userLocation;
  isUpdating = [(MKUserLocation *)v8 isUpdating];

  if (isUpdating)
  {
    [(MKMapView *)self removeUserLocation];
    selfCopy2 = self;
    v11 = selfCopy2->_userLocation;
    if (!v11)
    {
      v12 = objc_alloc_init(MKUserLocation);
      v13 = selfCopy2->_userLocation;
      selfCopy2->_userLocation = v12;

      v11 = selfCopy2->_userLocation;
    }

    v14 = v11;

    [(MKUserLocation *)v14 setUpdating:0];
    v15 = selfCopy2->_userLocation;
    if (!v15)
    {
      v16 = selfCopy2;
      v17 = objc_alloc_init(MKUserLocation);
      v18 = v16->_userLocation;
      v16->_userLocation = v17;

      v15 = v16->_userLocation;
    }

    v19 = v15;
    [(MKUserLocation *)v19 setLocation:0];

    [(MKLocationManager *)selfCopy2->_locationManager stopLocationUpdateWithObserver:selfCopy2];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy2 name:MKLocationManagerApprovalDidChangeNotification object:0];

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
    {
      _safeDelegate = selfCopy2->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)selfCopy2 _safeDelegate];
    }

    v22 = _safeDelegate;
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2221 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2221, &__block_literal_global_2222);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2223 == 1)
      {
        _safeDelegate2 = selfCopy2->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)selfCopy2 _safeDelegate];
      }

      v25 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapViewDidStopLocatingUser:selfCopy2];
    }
  }
}

- (void)_locationManager:(id)manager didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  userLocationAnimator = [(VKMapView *)self->_mapView userLocationAnimator];
  [userLocationAnimator updateVehicleHeading:heading];

  if ([(MKMapView *)self _useVehicleHeading])
  {
    _showHeadingIndicator = [(MKMapView *)self _showHeadingIndicator];
    if (heading >= 0.0 && _showHeadingIndicator)
    {
      [timestampCopy timeIntervalSinceReferenceDate];
      memset(v12, 0, sizeof(v12));
      headingCopy = heading;
      v14 = 0;
      v15 = v10;
      v16 = 0u;
      v17 = 0u;
      v11 = [objc_alloc(MEMORY[0x1E695FBD0]) initWithClientHeading:v12];
      [(MKMapView *)self _updateHeading:v11 animated:1];
    }
  }
}

- (void)locationManagerUpdatedHeading:(id)heading
{
  headingCopy = heading;
  if (![(MKMapView *)self _useVehicleHeading])
  {
    if ((*&self->_flags & 2) != 0)
    {
      [(MKMapView *)self _updateLocationConsole];
    }

    heading = [headingCopy heading];
    [heading headingAccuracy];
    v6 = v5;

    if (v6 >= 0.0)
    {
      v9 = *&self->_flags & 0x8040;
      heading2 = [headingCopy heading];
      if (v9 == 0x8000)
      {
        [(MKMapView *)self _updateHeading:heading2 animated:1];
LABEL_16:

        goto LABEL_17;
      }

      v11 = headingCopy;
      v12 = heading2;
LABEL_15:
      [v11 setThrottledHeading:v12];
      goto LABEL_16;
    }

    userLocationView = [(MKMapView *)self userLocationView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView = userLocationView;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        heading2 = 0;
        goto LABEL_14;
      }

      _mkUserLocationView = [userLocationView _mkUserLocationView];
    }

    heading2 = _mkUserLocationView;
LABEL_14:

    heading3 = [headingCopy heading];
    [heading3 headingAccuracy];
    [heading2 setHeadingAccuracy:?];

    v11 = headingCopy;
    v12 = 0;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_updateCourseForMapViewHeading:(id)heading
{
  headingCopy = heading;
  if ([(MKMapView *)self _useVehicleHeading])
  {
    if ([(MKMapView *)self _showHeadingIndicator])
    {
      [(MKLocationManager *)self->_locationManager currentVehicleHeading];
      if (v5 < 0.0)
      {
        [headingCopy course];
        if (v6 >= 0.0)
        {
          if ([headingCopy _navigation_hasValidCourse])
          {
            v17 = 0u;
            v18 = 0u;
            [headingCopy course];
            v8 = v7;
            timestamp = [headingCopy timestamp];
            [timestamp timeIntervalSinceReferenceDate];
            v11 = v10;

            v14 = v8;
            v15 = 0;
            v16 = v11;
            v12 = [objc_alloc(MEMORY[0x1E695FBD0]) initWithClientHeading:&v13];
            [(MKMapView *)self _updateHeading:v12 animated:1];
          }
        }
      }
    }
  }
}

- (void)_updateHeadingIndicatorAnimated:(BOOL)animated
{
  heading = [(MKUserLocation *)self->_userLocation heading];
  if (heading)
  {
    v8 = heading;
    userLocationView = [(MKMapView *)self userLocationView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView = userLocationView;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_8;
      }

      _mkUserLocationView = [userLocationView _mkUserLocationView];
    }

    v7 = _mkUserLocationView;
LABEL_8:

    [v8 headingAccuracy];
    [v7 setHeadingAccuracy:?];
    [v7 setHeading:self->_heading];

    heading = v8;
  }
}

- (void)_updateHeading:(id)heading animated:(BOOL)animated
{
  headingCopy = heading;
  [headingCopy heading];
  *&v5 = v5;
  v6 = roundf(*&v5);
  [(MKLocationManager *)self->_locationManager headingUpdateTimeInterval];
  v8 = v7;
  userLocation = [(MKMapView *)self userLocation];
  [userLocation setExpectedHeadingUpdateInterval:v8];

  if (headingCopy)
  {
    [headingCopy headingAccuracy];
    v11 = v10;
    userLocationView = [(MKMapView *)self userLocationView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView = userLocationView;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 0;
        goto LABEL_8;
      }

      _mkUserLocationView = [userLocationView _mkUserLocationView];
    }

    v14 = _mkUserLocationView;
LABEL_8:

    [v14 setHeadingAccuracy:v11];
  }

  userLocation2 = [(MKMapView *)self userLocation];
  [userLocation2 setHeading:headingCopy];

  if (v6 != -1.0 && vabdd_f64(v6, self->_heading) >= 0.001)
  {
    self->_heading = v6;
    [(MKMapView *)self _updateHeadingIndicatorAnimated:1];
    if ((*(&self->_flags + 7) & 0x40) != 0)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2874 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2874, &__block_literal_global_2875);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2876 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v17 = _safeDelegate;
      userLocation3 = [(MKMapView *)self userLocation];
      [(MKMapViewDelegate *)v17 mapView:self didUpdateUserLocation:userLocation3];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MKMapViewDidUpdateUserLocationNotification" object:self];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:self];
  }
}

- (void)_stopTrackingHeading
{
  [(MKLocationManager *)self->_locationManager stopHeadingUpdateWithObserver:self];
  userLocation = [(MKMapView *)self userLocation];
  [userLocation setHeading:0];

  if ((*(&self->_flags + 7) & 0x40) != 0)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_2874 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_2874, &__block_literal_global_2875);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_2876 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
    userLocation2 = [(MKMapView *)self userLocation];
    [(MKMapViewDelegate *)v5 mapView:self didUpdateUserLocation:userLocation2];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MKMapViewDidUpdateUserLocationNotification" object:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:self];
}

- (void)_setUseVehicleHeading:(BOOL)heading
{
  flags = self->_flags;
  if (((((flags & 0x40000) == 0) ^ heading) & 1) == 0)
  {
    v6 = 0x40000;
    if (!heading)
    {
      v6 = 0;
    }

    *&self->_flags = flags & 0xFFFFFFFFFFFBFFFFLL | v6;
    [(VKMapView *)self->_mapView setHasVehicleHeading:?];
    if ([(MKMapView *)self _showHeadingIndicator])
    {
      locationManager = self->_locationManager;
      if (heading)
      {

        [(MKLocationManager *)locationManager stopHeadingUpdateWithObserver:self];
      }

      else
      {

        [(MKLocationManager *)locationManager startHeadingUpdateWithObserver:self];
      }
    }
  }
}

- (void)_setShowHeadingIndicator:(BOOL)indicator
{
  if ((((*&self->_flags & 0x8000) == 0) ^ indicator))
  {
    return;
  }

  indicatorCopy = indicator;
  v6 = 0x8000;
  if (!indicator)
  {
    v6 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFFFFFFFFFF7FFFLL | v6;
  userLocationView = [(MKMapView *)self userLocationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = userLocationView;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_10;
    }

    _mkUserLocationView = [userLocationView _mkUserLocationView];
  }

  v9 = _mkUserLocationView;
LABEL_10:

  [v9 setShouldDisplayHeading:indicatorCopy];
  if (indicatorCopy)
  {
    [(MKMapView *)self _startTrackingHeading];
    heading = [(MKLocationManager *)self->_locationManager heading];
  }

  else
  {
    [(MKMapView *)self _stopTrackingHeading];
    heading = 0;
  }

  -[MKMapView _updateHeading:animated:](self, "_updateHeading:animated:", heading, [MEMORY[0x1E6979518] disableActions] ^ 1);
}

- (void)_snapToNorthIfNecessary
{
  if (self->_userTrackingMode != 2)
  {
    [(VKMapView *)self->_mapView yaw];
    v4 = v3 * 3.14159265 / 180.0;
    if (fabs(v4) >= 0.0001)
    {
      v5 = self->_verticalYawOverride * 3.14159265 / 180.0;
      v6 = vabdd_f64(v5, v4);
      if (v6 >= 0.0001)
      {
        if (fabs(v5) <= 0.0001 || v6 >= 0.24)
        {
          if (vabdd_f64(0.0, v4) < 0.12)
          {

            [(MKMapView *)self _snapToTrueNorthAndCallBack:1];
          }
        }

        else
        {

          [(MKMapView *)self snapToNorth:0];
        }
      }
    }
  }
}

- (void)_updateFromCamera:(id)camera duration:(double)duration timing:(id)timing completionHandler:(id)handler
{
  cameraCopy = camera;
  timingCopy = timing;
  handlerCopy = handler;
  if (self->_camera == cameraCopy)
  {
    [(MKMapCamera *)cameraCopy pitch];
    if (v12 != 0.0)
    {
      v13 = +[MKSystemController sharedInstance];
      supportsPitchAPI = [v13 supportsPitchAPI];

      if ((supportsPitchAPI & 1) == 0)
      {
        if (_updateFromCamera_duration_timing_completionHandler__onceToken != -1)
        {
          dispatch_once(&_updateFromCamera_duration_timing_completionHandler__onceToken, &__block_literal_global_4364);
        }

        [(MKMapCamera *)cameraCopy setPitch:0.0];
      }
    }

    v15 = self->_mapView;
    [(MKMapCamera *)cameraCopy pitch];
    if (v16 != 0.0 && ([(VKMapView *)v15 isPitchable]& 1) == 0)
    {
      [(MKMapCamera *)cameraCopy setPitch:0.0];
    }

    *&self->_flags |= 0x800000000uLL;
    [(MKMapCamera *)cameraCopy centerCoordinate];
    [(MKMapCamera *)cameraCopy centerCoordinate];
    VKLocationCoordinate2DMake();
    v18 = v17;
    v20 = v19;
    [(MKMapCamera *)cameraCopy altitude];
    v22 = v21;
    [(MKMapCamera *)cameraCopy heading];
    v24 = v23;
    [(MKMapCamera *)cameraCopy pitch];
    [(VKMapView *)v15 setCenterCoordinate:timingCopy altitude:handlerCopy yaw:v18 pitch:v20 duration:v22 timingCurve:v24 completion:v25, duration];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

void __75__MKMapView_MKCamera___updateFromCamera_duration_timing_completionHandler___block_invoke()
{
  v0 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A2EA0000, v0, OS_LOG_TYPE_ERROR, "MKMapView does not support non-zero pitch on this device", v1, 2u);
  }
}

- (double)_animationDurationWhenSettingCameraBoundary:(id)boundary
{
  boundaryCopy = boundary;
  [(MKMapCamera *)self->_camera centerCoordinate];
  v24 = v5;
  v25 = v6;
  v7 = 0.0;
  if (boundaryCopy)
  {
    v8 = v5;
    v9 = v6;
    if (([boundaryCopy _containsCoordinate:?] & 1) == 0)
    {
      [boundaryCopy _clampedCoordinateForCoordinate:{v8, v9}];
      v22 = v10;
      v23 = v11;
      CLLocationCoordinate2DGetDistanceFrom();
      v13 = v12;
      [(MKMapCamera *)self->_camera altitude:v22];
      v15 = v14;
      v16 = 0.0001;
      if (v15 > 0.0001)
      {
        [(MKMapCamera *)self->_camera altitude];
      }

      v17 = 0.25;
      v18 = v13 / v16 * 0.25;
      v19 = v18 >= 2.0;
      v20 = v18 > 0.25 || v18 >= 2.0;
      if (v18 <= 0.25)
      {
        v19 = 1;
      }

      if (v20)
      {
        v17 = 2.0;
      }

      if (v19)
      {
        v7 = v17;
      }

      else
      {
        v7 = v18;
      }
    }
  }

  return v7;
}

- (void)_setCameraBoundary:(id)boundary animated:(BOOL)animated
{
  animatedCopy = animated;
  boundaryCopy = boundary;
  v21 = boundaryCopy;
  if (boundaryCopy)
  {
    if ([boundaryCopy _isEmpty])
    {
      v7 = 1;
    }

    else
    {
      if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
      {
        [MEMORY[0x1E69DD250] _currentAnimationDuration];
        v9 = v8;
        v10 = -[MKMapView _vkTimingFunctionForUIViewAnimationCurve:](self, "_vkTimingFunctionForUIViewAnimationCurve:", [MEMORY[0x1E69DD250] _currentAnimationCurve]);
        mapView = self->_mapView;
        _vkRegionRestriction = [v21 _vkRegionRestriction];
        [(VKMapView *)mapView setRegionRestriction:_vkRegionRestriction duration:v10 timingFunction:v9];

LABEL_12:
        if ([(MKMapView *)self userTrackingMode])
        {
          userLocation = [(MKMapView *)self userLocation];
          location = [userLocation location];

          if (location)
          {
            userLocation2 = [(MKMapView *)self userLocation];
            location2 = [userLocation2 location];

            [location2 coordinate];
            if (([v21 _containsCoordinate:?] & 1) == 0)
            {
              [(MKMapView *)self setUserTrackingMode:0];
            }
          }
        }

        goto LABEL_17;
      }

      v7 = 0;
    }

    boundaryCopy = v21;
  }

  else
  {
    v7 = 1;
  }

  v13 = 0.0;
  if (animatedCopy)
  {
    [(MKMapView *)self _animationDurationWhenSettingCameraBoundary:v21];
    boundaryCopy = v21;
    v13 = v14;
  }

  v15 = self->_mapView;
  _vkRegionRestriction2 = [boundaryCopy _vkRegionRestriction];
  [(VKMapView *)v15 setRegionRestriction:_vkRegionRestriction2 duration:*MEMORY[0x1E69DF4E8] timingFunction:v13];

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_17:
}

- (void)_setCameraZoomRange:(id)range animated:(BOOL)animated
{
  animatedCopy = animated;
  rangeCopy = range;
  [rangeCopy minCenterCoordinateDistance];
  v7 = -1.0;
  v8 = -1.0;
  if (v9 >= 0.0)
  {
    [rangeCopy minCenterCoordinateDistance];
    v8 = v10;
  }

  [rangeCopy maxCenterCoordinateDistance];
  if (v11 >= 0.0)
  {
    [rangeCopy maxCenterCoordinateDistance];
    v7 = v12;
  }

  _bouncesZoom = [rangeCopy _bouncesZoom];
  if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
  {
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    v15 = v14;
    v16 = -[MKMapView _vkTimingFunctionForUIViewAnimationCurve:](self, "_vkTimingFunctionForUIViewAnimationCurve:", [MEMORY[0x1E69DD250] _currentAnimationCurve]);
    mapView = self->_mapView;
    v23 = v8;
    v24 = v7;
    v25 = _bouncesZoom;
    memset(v26, 0, sizeof(v26));
    [(VKMapView *)mapView setCenterCoordinateDistanceRange:&v23 duration:v16 timingFunction:v15];
  }

  else
  {
    v18 = 0.0;
    if (animatedCopy)
    {
      camera = [(MKMapView *)self camera];
      [(MKMapView *)self _durationForCamera:camera];
      v18 = v20;
    }

    v21 = self->_mapView;
    v22 = *MEMORY[0x1E69DF4E8];
    v23 = v8;
    v24 = v7;
    v25 = _bouncesZoom;
    memset(v26, 0, sizeof(v26));
    [(VKMapView *)v21 setCenterCoordinateDistanceRange:&v23 duration:v22 timingFunction:v18];
  }
}

- (void)_setCamera:(id)camera duration:(double)duration springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity completionHandler:(id)handler
{
  cameraCopy = camera;
  v12 = VKAnimationCurveSpring();
  [(MKMapView *)self _setCamera:cameraCopy duration:v12 timing:0 completionHandler:duration];
}

- (void)_setCamera:(id)camera springMass:(float)mass springStiffness:(float)stiffness springDamping:(float)damping springVelocity:(float)velocity
{
  cameraCopy = camera;
  [(MKMapView *)self _durationForCamera:cameraCopy];
  [MKMapView _setCamera:"_setCamera:duration:springMass:springStiffness:springDamping:springVelocity:completionHandler:" duration:cameraCopy springMass:0 springStiffness:? springDamping:? springVelocity:? completionHandler:?];
}

- (void)_setCamera:(id)camera duration:(double)duration timing:(id)timing completionHandler:(id)handler
{
  cameraCopy = camera;
  timingCopy = timing;
  handlerCopy = handler;
  if (cameraCopy)
  {
    if ([(MKMapCamera *)cameraCopy _validate])
    {
      camera = self->_camera;
      if (camera != cameraCopy)
      {
        [(MKMapCamera *)camera _setMapView:0];
        v13 = [(MKMapCamera *)cameraCopy copy];
        v14 = self->_camera;
        self->_camera = v13;

        [(MKMapCamera *)self->_camera _setMapView:self];
        [(MKMapView *)self _updateFromCamera:self->_camera duration:timingCopy timing:handlerCopy completionHandler:duration];
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"camera parameter should not be nil" userInfo:0];
    [v15 raise];
  }
}

- (void)_setCamera:(id)camera duration:(double)duration timingCurve:(int64_t)curve completionHandler:(id)handler
{
  handlerCopy = handler;
  cameraCopy = camera;
  v12 = [(MKMapView *)self _vkTimingFunctionForUIViewAnimationCurve:curve];
  [(MKMapView *)self _setCamera:cameraCopy duration:v12 timing:handlerCopy completionHandler:duration];
}

- (id)_vkTimingFunctionForUIViewAnimationCurve:(int64_t)curve
{
  if (curve > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = MEMORY[0x1A58E9F30](**(&unk_1E76C6E78 + curve), a2);
  }

  v4 = MEMORY[0x1A58E9F30](v3);

  return v4;
}

- (void)_setCamera:(id)camera animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  cameraCopy = camera;
  handlerCopy = handler;
  if (cameraCopy)
  {
    v9 = 0.0;
    if (animatedCopy)
    {
      [(MKMapView *)self _durationForCamera:cameraCopy];
      v9 = v10;
    }

    if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
    {
      _currentAnimationCurve = [MEMORY[0x1E69DD250] _currentAnimationCurve];
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      [(MKMapView *)self _setCamera:cameraCopy duration:_currentAnimationCurve timingCurve:handlerCopy completionHandler:?];
    }

    else
    {
      [(MKMapView *)self _setCamera:cameraCopy duration:*MEMORY[0x1E69DF4E8] timing:handlerCopy completionHandler:v9];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"camera parameter should not be nil" userInfo:0];
    [v12 raise];
  }
}

- (double)_cameraAltitudeClampedToZoomRange:(id)range
{
  rangeCopy = range;
  [rangeCopy pitch];
  v6 = cos(v5);
  cameraZoomRange = [(MKMapView *)self cameraZoomRange];
  [cameraZoomRange minCenterCoordinateDistance];
  v9 = v6 * v8;

  cameraZoomRange2 = [(MKMapView *)self cameraZoomRange];
  [cameraZoomRange2 maxCenterCoordinateDistance];
  v12 = v11;

  [rangeCopy altitude];
  if (v9 <= v13)
  {
    [rangeCopy altitude];
    v9 = v14;
  }

  if (v9 >= v6 * v12)
  {
    v15 = v6 * v12;
  }

  else
  {
    v15 = v9;
  }

  if (v6 * v12 <= 0.0)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (double)_durationForCamera:(id)camera
{
  cameraCopy = camera;
  [(MKMapView *)self _cameraAltitudeClampedToZoomRange:cameraCopy];
  v6 = v5;
  v7 = v5;
  [(MKMapCamera *)self->_camera altitude];
  v9 = v6 < v8;
  v10 = v7;
  if (!v9)
  {
    [(MKMapCamera *)self->_camera altitude];
  }

  v11 = 0.0001;
  if (v10 > 0.0001)
  {
    [(MKMapCamera *)self->_camera altitude];
    v11 = v7;
    if (v6 >= v12)
    {
      [(MKMapCamera *)self->_camera altitude];
      v11 = v13;
    }
  }

  [(MKMapCamera *)self->_camera altitude];
  if (v6 <= v14)
  {
    [(MKMapCamera *)self->_camera altitude];
    v7 = v15;
  }

  v16 = 0.0;
  if (v11 < v7)
  {
    v17 = 0.0;
    do
    {
      v17 = v17 + 1.0;
      v11 = v11 + v11;
    }

    while (v11 < v7);
    v16 = v17 * 0.25;
  }

  cameraBoundary = [(MKMapView *)self cameraBoundary];
  if (cameraBoundary)
  {
    cameraBoundary2 = [(MKMapView *)self cameraBoundary];
    [cameraCopy centerCoordinate];
    [cameraBoundary2 _clampedCoordinateForCoordinate:?];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    [cameraCopy centerCoordinate];
    v21 = v24;
    v23 = v25;
  }

  v44 = v21;
  v45 = v23;
  v26 = fmin(v16, 2.0);

  [(MKMapCamera *)self->_camera centerCoordinate];
  v42 = v27;
  v43 = v28;
  CLLocationCoordinate2DGetDistanceFrom();
  v30 = fmin(v29 / fmax(v6, 0.0001) * 0.25, 2.0);
  [cameraCopy heading];
  v32 = v31;
  [(MKMapCamera *)self->_camera heading];
  v34 = fmod(v32 - v33, 360.0) / 45.0 * 0.25;
  [cameraCopy pitch];
  v36 = v35;
  [(MKMapCamera *)self->_camera pitch];
  v38 = vabdd_f64(v36, v37) / 20.0 * 0.25;
  if (v26 <= v30)
  {
    v39 = v30;
  }

  else
  {
    v39 = v26;
  }

  if (v39 <= v34)
  {
    v39 = v34;
  }

  if (v39 > v38)
  {
    v38 = v39;
  }

  v40 = fmax(v38, 0.25);

  return v40;
}

- (void)_setCamera:(id)camera completionHandler:(id)handler
{
  cameraCopy = camera;
  handlerCopy = handler;
  if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
  {
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    -[MKMapView _setCamera:duration:timingCurve:completionHandler:](self, "_setCamera:duration:timingCurve:completionHandler:", cameraCopy, [MEMORY[0x1E69DD250] _currentAnimationCurve], handlerCopy, v7);
  }

  else
  {
    [(MKMapView *)self _setCamera:cameraCopy duration:0 timing:handlerCopy completionHandler:0.0];
  }
}

- (id)_selectedTransitLineIDs
{
  v19 = *MEMORY[0x1E69E9840];
  _mapLayer = [(MKMapView *)self _mapLayer];
  selectedTransitLineIDs = [_mapLayer selectedTransitLineIDs];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(selectedTransitLineIDs, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = selectedTransitLineIDs;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MKMapItemIdentifier alloc];
        v12 = -[MKMapItemIdentifier initWithMUID:](v11, "initWithMUID:", [v10 unsignedLongLongValue]);
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_hasSelectedTransitLines
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  selectedTransitLineIDs = [_mapLayer selectedTransitLineIDs];
  v4 = [selectedTransitLineIDs count] != 0;

  return v4;
}

- (void)_deselectTransitLineMarker
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  [_mapLayer deselectTransitLineMarker];
}

- (void)_selectTransitLineMarkerWithIdentifier:(id)identifier
{
  v4 = [(MKMapView *)self _transitLineMarkerForIdentifier:identifier];
  [(MKMapView *)self _selectTransitLineMarker:v4];
}

- (void)_selectTransitLineMarker:(id)marker
{
  markerCopy = marker;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mapItemIdentifier = [markerCopy mapItemIdentifier];
    v5 = [(MKMapView *)self _transitLineMarkerForIdentifier:mapItemIdentifier];

    markerCopy = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mapLayer = [(MKMapView *)self _mapLayer];
    [_mapLayer selectTransitLineMarker:markerCopy];
  }
}

- (id)_transitLineMarkerForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _transitLineMarkersInCurrentViewport = [(MKMapView *)self _transitLineMarkersInCurrentViewport];
  v6 = [_transitLineMarkersInCurrentViewport countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(_transitLineMarkersInCurrentViewport);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        mapItemIdentifier = [v10 mapItemIdentifier];
        v12 = [mapItemIdentifier isEqual:identifierCopy];

        if (v12)
        {
          v14 = v10;
          goto LABEL_11;
        }
      }

      v7 = [_transitLineMarkersInCurrentViewport countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_alloc(MEMORY[0x1E69DF4B0]);
  _transitLineMarkersInCurrentViewport = [identifierCopy geoMapItemIdentifier];
  v14 = [v13 initWithIdentifier:_transitLineMarkersInCurrentViewport];
LABEL_11:
  v15 = v14;

  return v15;
}

- (NSArray)_transitLineMarkersInCurrentViewport
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  transitLineMarkersInCurrentViewport = [_mapLayer transitLineMarkersInCurrentViewport];

  return transitLineMarkersInCurrentViewport;
}

- (void)_invalidateAllOverlayRendererColors
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allDrawables = [(MKOverlayContainerView *)self->_overlayContainer allDrawables];
  v3 = [allDrawables countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allDrawables);
        }

        [*(*(&v7 + 1) + 8 * v6++) _updateRenderColors];
      }

      while (v4 != v6);
      v4 = [allDrawables countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- ($9433BFB5400FDC760880D1BFD6845728)overlayContainerVisibleMapRect:(id)rect
{
  mapRegionIgnoringEdgeInsets = [(VKMapView *)self->_mapView mapRegionIgnoringEdgeInsets];
  GEOMapRectForMapRegion();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var1.var1 = v15;
  result.var1.var0 = v14;
  result.var0.var1 = v13;
  result.var0.var0 = v12;
  return result;
}

- (void)overlayContainerAddedDrawables:(id)drawables
{
  drawablesCopy = drawables;
  lastObject = [drawablesCopy lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate;
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = drawablesCopy;
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v15 = _safeDelegate2;
        v12 = drawablesCopy;
      }

      else
      {
        v15 = 0;
      }

      [(MKMapViewDelegate *)v15 mapView:self didAddOverlayRenderers:v12];
LABEL_39:
    }
  }

  else
  {
    lastObject2 = [drawablesCopy lastObject];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      if (self)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
        {
          _safeDelegate3 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate3 = [(MKMapView *)self _safeDelegate];
        }

        v14 = _safeDelegate3;
      }

      else
      {
        v14 = 0;
      }

      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = drawablesCopy;
        if (self)
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
          {
            _safeDelegate4 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate4 = [(MKMapView *)self _safeDelegate];
          }

          v15 = _safeDelegate4;
          v17 = drawablesCopy;
        }

        else
        {
          v15 = 0;
        }

        [(MKMapViewDelegate *)v15 mapView:self didAddOverlayViews:v17];
        goto LABEL_39;
      }
    }
  }
}

- (id)createDrawableForOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v6 = _safeDelegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate2;
    }

    else
    {
      v10 = 0;
    }

    v12 = [(MKMapViewDelegate *)v10 mapView:self rendererForOverlay:overlayCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 _setUsageCounter:self->_usageCounter];
    }

    [(MKMapView *)self _countUsageForRendererIfNeeded:v12];
  }

  else
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
      {
        _safeDelegate3 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate3 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate3;
    }

    else
    {
      v11 = 0;
    }

    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_41;
    }

    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_6228 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_6228, &__block_literal_global_6229);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_6230 == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v10 = _safeDelegate4;
    }

    else
    {
      v10 = 0;
    }

    v12 = [(MKMapViewDelegate *)v10 mapView:self viewForOverlay:overlayCopy];
  }

LABEL_41:

  return v12;
}

- (id)overlayContainer
{
  overlayContainer = self->_overlayContainer;
  if (!overlayContainer)
  {
    v4 = [[MKOverlayContainerView alloc] initWithFrame:0.0, 0.0, 268435456.0, 268435456.0];
    v5 = self->_overlayContainer;
    self->_overlayContainer = v4;

    [(MKOverlayContainerView *)self->_overlayContainer setDelegate:self];
    v6 = self->_overlayContainer;
    [(MKMapView *)self _zoomScale];
    [(MKOverlayContainerView *)v6 setMapZoomScale:?];
    [(MKOverlayContainerView *)self->_overlayContainer setMapView:self];
    [(MKMapView *)self _insertSubview:self->_overlayContainer];
    [(MKMapView *)self _updateScrollContainerView:0 forReason:0];
    overlayContainer = self->_overlayContainer;
  }

  return overlayContainer;
}

- (MKOverlayRenderer)rendererForOverlay:(id)overlay
{
  v3 = [(MKOverlayContainerView *)self->_overlayContainer drawableForOverlay:overlay];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MKOverlayView)viewForOverlay:(id)overlay
{
  v3 = [(MKOverlayContainerView *)self->_overlayContainer drawableForOverlay:overlay];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertOverlay:(id)overlay belowOverlay:(id)sibling
{
  v6 = sibling;
  v7 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer insertOverlay:v7 belowOverlay:v6];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:24];
}

- (void)insertOverlay:(id)overlay aboveOverlay:(id)sibling
{
  v6 = sibling;
  v7 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer insertOverlay:v7 aboveOverlay:v6];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:23];
}

- (void)exchangeOverlay:(id)overlay1 withOverlay:(id)overlay2
{
  v6 = overlay2;
  v7 = overlay1;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer exchangeOverlay:v7 withOverlay:v6];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:28];
}

- (void)exchangeOverlayAtIndex:(NSUInteger)index1 withOverlayAtIndex:(NSUInteger)index2
{
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer exchangeOverlayAtIndex:index1 withOverlayAtIndex:index2];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:27];
}

- (void)insertOverlay:(id)overlay atIndex:(NSUInteger)index
{
  v6 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer insertOverlay:v6 atIndex:index];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:22];
}

- (void)removeOverlays:(NSArray *)overlays
{
  [(MKOverlayContainerView *)self->_overlayContainer removeOverlays:overlays];
  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:26];
}

- (void)removeOverlay:(id)overlay
{
  [(MKOverlayContainerView *)self->_overlayContainer removeOverlay:overlay];
  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:25];
}

- (void)insertOverlay:(id)overlay atIndex:(NSUInteger)index level:(MKOverlayLevel)level
{
  v8 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer insertOverlay:v8 atIndex:index level:level];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:21];
}

- (void)addOverlays:(NSArray *)overlays level:(MKOverlayLevel)level
{
  v6 = overlays;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer addOverlays:v6 level:level];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:20];
}

- (void)addOverlay:(id)overlay level:(MKOverlayLevel)level
{
  v6 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer addOverlay:v6 level:level];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:18];
}

- (void)addOverlays:(NSArray *)overlays
{
  v4 = overlays;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer addOverlays:v4];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:19];
}

- (void)addOverlay:(id)overlay
{
  v4 = overlay;
  overlayContainer = [(MKMapView *)self overlayContainer];
  [overlayContainer addOverlay:v4];

  usageCounter = self->_usageCounter;

  [(MKUsageCounter *)usageCounter countUsageOfTypeIfNeeded:17];
}

- (void)_performWhenSizedBlocks
{
  whenSizedBlocks = self->_whenSizedBlocks;
  self->_whenSizedBlocks = 0;
  v3 = whenSizedBlocks;

  [(NSMutableArray *)v3 makeObjectsPerformSelector:sel_perform];
}

- (void)_addDependentAuxiliaryBlock:(id)block
{
  blockCopy = block;
  whenSizedBlocks = self->_whenSizedBlocks;
  if (!whenSizedBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_whenSizedBlocks;
    self->_whenSizedBlocks = v5;

    whenSizedBlocks = self->_whenSizedBlocks;
  }

  v7 = [[MKWhenSizedBlock alloc] initWithType:2 block:blockCopy];
  [(NSMutableArray *)whenSizedBlocks addObject:v7];
}

- (void)_addDependentSetRegionBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  whenSizedBlocks = self->_whenSizedBlocks;
  if (!whenSizedBlocks)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_whenSizedBlocks;
    self->_whenSizedBlocks = v8;

    whenSizedBlocks = self->_whenSizedBlocks;
  }

  v10 = [[MKWhenSizedBlock alloc] initWithType:1 block:blockCopy completion:completionCopy];
  [(NSMutableArray *)whenSizedBlocks addObject:v10];
}

- (void)_addSetRegionBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  whenSizedBlocks = self->_whenSizedBlocks;
  if (whenSizedBlocks)
  {
    v8 = [(NSMutableArray *)whenSizedBlocks count];
    if (v8 >= 1)
    {
      v9 = v8 + 1;
      do
      {
        v10 = [(NSMutableArray *)self->_whenSizedBlocks objectAtIndexedSubscript:v9 - 2];
        if ([v10 type] == 1 || !objc_msgSend(v10, "type"))
        {
          if (![v10 shouldRun])
          {
            goto LABEL_13;
          }

          [v10 setShouldRun:0];
        }

        else if ([v10 type] == 2)
        {
          goto LABEL_13;
        }

        --v9;
      }

      while (v9 > 1);
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_whenSizedBlocks;
    self->_whenSizedBlocks = v11;
LABEL_13:
  }

  v12 = self->_whenSizedBlocks;
  v13 = [[MKWhenSizedBlock alloc] initWithType:0 block:blockCopy completion:completionCopy];
  [(NSMutableArray *)v12 addObject:v13];
}

- (void)_countUsageForRendererIfNeeded:(id)needed
{
  neededCopy = needed;
  [(MKMapView *)self _createOverlayRendererDictionaryIfNeeded];
  if ([(NSMutableDictionary *)self->_overlayRendererEventDictionary count])
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(NSMutableDictionary *)self->_overlayRendererEventDictionary objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      -[MKUsageCounter countUsageOfTypeIfNeeded:](self->_usageCounter, "countUsageOfTypeIfNeeded:", [v6 integerValue]);
      [(NSMutableDictionary *)self->_overlayRendererEventDictionary removeObjectForKey:v5];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [neededCopy shouldRasterize])
  {
    [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:53];
  }
}

- (void)_countUsageOfTypeIfNeeded:(unint64_t)needed forAnnotationView:(id)view countedEventTypes:(id)types
{
  viewCopy = view;
  typesCopy = types;
  if (needed > 46)
  {
    if (needed <= 49)
    {
      if (needed != 47)
      {
LABEL_25:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      detailCalloutAccessoryView = [viewCopy detailCalloutAccessoryView];
      if (!detailCalloutAccessoryView)
      {
        goto LABEL_34;
      }

LABEL_30:
      annotation = detailCalloutAccessoryView;
LABEL_31:

      goto LABEL_32;
    }

    if (needed != 50)
    {
      if (needed == 51)
      {
        goto LABEL_25;
      }

      if (needed != 52)
      {
        goto LABEL_34;
      }

      annotation = [viewCopy annotation];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        annotation2 = [viewCopy annotation];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_34;
  }

  if (needed <= 43)
  {
    if (needed == 42)
    {
      [viewCopy displayPriority];
      v11 = v10;
      [objc_opt_class() _defaultDisplayPriority];
      if (v11 == v12)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (needed != 43 || ([viewCopy isDraggable] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    [(MKUsageCounter *)self->_usageCounter countUsageOfTypeIfNeeded:needed];
    annotation = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:needed];
    [typesCopy addObject:annotation];
LABEL_33:

    goto LABEL_34;
  }

  if (needed != 44)
  {
    if (needed != 45)
    {
      if ([viewCopy canShowCallout])
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    detailCalloutAccessoryView = [viewCopy clusteringIdentifier];
    if (!detailCalloutAccessoryView)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if ([viewCopy collisionMode])
  {
    goto LABEL_32;
  }

LABEL_34:
}

- (void)_countUsageForAnnotationViewsIfNeeded:(id)needed
{
  v39 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  [(MKMapView *)self _createAnnotationViewSetIfNeeded];
  if ([(NSMutableSet *)self->_annotationViewEventSet count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = neededCopy;
    obj = neededCopy;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v23 = *v33;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = self->_annotationViewEventSet;
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            v14 = 0;
            do
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v10);
              }

              -[MKMapView _countUsageOfTypeIfNeeded:forAnnotationView:countedEventTypes:](self, "_countUsageOfTypeIfNeeded:forAnnotationView:countedEventTypes:", [*(*(&v28 + 1) + 8 * v14++) integerValue], v8, v9);
            }

            while (v12 != v14);
            v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v12);
        }

        if (v9)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v15 = v9;
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            do
            {
              v19 = 0;
              do
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [(NSMutableSet *)self->_annotationViewEventSet removeObject:*(*(&v24 + 1) + 8 * v19++)];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
            }

            while (v17);
          }
        }

        v20 = [(NSMutableSet *)self->_annotationViewEventSet count];

        if (!v20)
        {
          break;
        }

        if (++v7 == v6)
        {
          v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    neededCopy = v21;
  }
}

- (void)_createOverlayRendererDictionaryIfNeeded
{
  if (!self->_overlayRendererEventDictionary)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{&unk_1F16111E8, @"MKCircleRenderer", &unk_1F1611200, @"MKPolylineRenderer", &unk_1F1611218, @"MKMultiPolylineRenderer", &unk_1F1611230, @"MKPolygonRenderer", &unk_1F1611248, @"MKMultiPolygonRenderer", &unk_1F1611260, @"MKTileOverlayRenderer", &unk_1F1611278, @"MKPathOverlayRenderer", 0}];
    overlayRendererEventDictionary = self->_overlayRendererEventDictionary;
    self->_overlayRendererEventDictionary = v3;
  }
}

- (void)_createAnnotationViewSetIfNeeded
{
  if (!self->_annotationViewEventSet)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F16110E0, &unk_1F16110F8, &unk_1F1611110, &unk_1F1611128, &unk_1F1611140, &unk_1F1611158, &unk_1F1611170, &unk_1F1611188, &unk_1F16111A0, &unk_1F16111B8, &unk_1F16111D0, 0}];
    annotationViewEventSet = self->_annotationViewEventSet;
    self->_annotationViewEventSet = v3;
  }
}

- (id)_transitLineMarkersForSelectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _mapLayer = [(MKMapView *)self _mapLayer];
  _mapLayer2 = [(MKMapView *)self _mapLayer];
  layer = [(MKMapView *)self layer];
  [_mapLayer2 convertPoint:layer fromLayer:{x, y}];
  v9 = [_mapLayer transitLineMarkersForSelectionAtPoint:?];

  return v9;
}

- (NSDictionary)_detailedDescriptionDictionaryRepresentation
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  detailedDescriptionDictionaryRepresentation = [_mapLayer detailedDescriptionDictionaryRepresentation];

  return detailedDescriptionDictionaryRepresentation;
}

- (NSString)_detailedDescription
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  detailedDescription = [_mapLayer detailedDescription];

  return detailedDescription;
}

- (NSArray)_visibleTileSets
{
  _mapLayer = [(MKMapView *)self _mapLayer];
  visibleTileSets = [_mapLayer visibleTileSets];

  return visibleTileSets;
}

- (CGRect)gestureControllerSignificantViewFrame:(id)frame
{
  [(MKMapView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MKMapView *)self _edgeInsets];
  v13 = v7 + v12;
  v16 = v9 - (v14 + v15);
  v18 = v11 - (v12 + v17);
  v19 = v5 + v14;
  v20 = v13;
  v21 = v16;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)gestureController:(id)controller focusPointForPoint:(CGPoint)point gestureKind:(int64_t)kind
{
  y = point.y;
  x = point.x;
  v9 = +[MKSystemController sharedInstance];
  supportsExtendedGestures = [v9 supportsExtendedGestures];

  if (supportsExtendedGestures)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      firstObject = _safeDelegate;
      if (_safeDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [firstObject mapView:self focusPointForPoint:kind gesture:{x, y}];
        x = v38;
        y = v39;
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    [(MKMapView *)self convertPoint:self->_annotationContainer toView:x, y];
    v42 = v13;
    v43 = v12;
    [(MKMapView *)self bounds];
    v15 = v14;
    v17 = v16;
    [(MKMapView *)self _edgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    selectedAnnotations = [(MKMapView *)self selectedAnnotations];
    firstObject = [selectedAnnotations firstObject];

    if (firstObject)
    {
      v28 = v15 - (v21 + v25);
      v29 = [(MKMapView *)self viewForAnnotation:firstObject];
      [v29 _significantBounds];
      [(MKMapView *)self convertRect:v29 fromView:?];
      MKDistanceBetweenPointAndRect(v43, v42, v30, v31, v32, v33);
      v35 = (v17 - (v19 + v23)) * 0.5;
      if (v28 * 0.5 < v35)
      {
        v35 = v28 * 0.5;
      }

      if (v34 / v35 <= 0.300000012)
      {
        [firstObject coordinate];
        [(MKMapView *)self convertCoordinate:self toPointToView:?];
        x = v36;
        y = v37;
      }
    }
  }

  v40 = x;
  v41 = y;
  result.y = v41;
  result.x = v40;
  return result;
}

- (double)gestureController:(id)controller shouldWaitForNextTapForDuration:(double)duration afterTouch:(id)touch
{
  touchCopy = touch;
  v8 = touchCopy;
  if ((*(&self->_flags + 7) & 0x20) != 0)
  {
    [touchCopy locationInView:self->_annotationContainer];
    v9 = [MKAnnotationContainerView _annotationViewForSelectionAtPoint:"_annotationViewForSelectionAtPoint:avoidCurrent:maxDistance:" avoidCurrent:1 maxDistance:?];
    if (v9)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate;
      [(MKMapViewDelegate *)_safeDelegate mapView:self shouldDelayTapResponse:v8 onAnnotationView:v9 forDuration:duration];
      duration = v12;
    }
  }

  return duration;
}

- (BOOL)gestureController:(id)controller shouldReceiveTouch:(id)touch
{
  controllerCopy = controller;
  touchCopy = touch;
  if ((*(&self->_flags + 7) & 0x10) != 0)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v10 = _safeDelegate;
    v8 = [(MKMapViewDelegate *)_safeDelegate mapView:self shouldReceiveTouch:touchCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)gestureControllerDidStopRotatingDecelerating:(id)decelerating
{
  *&self->_flags &= ~0x20000000uLL;
  [(VKMapView *)self->_mapView yaw];
  v5 = v4;
  verticalYawOverride = self->_verticalYawOverride;
  v7 = fmod(v4, 360.0);
  if (v5 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 360.0;
  }

  v9 = fmod(verticalYawOverride, 360.0);
  if (verticalYawOverride < 0.0)
  {
    v9 = v9 + 360.0;
  }

  if (vabdd_f64(v8, v9) > 180.0)
  {
    if (v8 >= v9)
    {
      v9 = v9 + 360.0;
    }

    else
    {
      v8 = v8 + 360.0;
    }
  }

  *&self->_flags = *&self->_flags & 0xFFFBFFFFFFFFFFFFLL | ((vabdd_f64(v9, v8) > 0.1) << 50);
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v11 = _safeDelegate;
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v18 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:2 zoomDirection:0 zoomGestureType:0 didDecelerate:1 tiltDirection:0];
LABEL_35:

    return;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate3 = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate3 = [(MKMapView *)self _safeDelegate];
  }

  v15 = _safeDelegate3;
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate4 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate4 = [(MKMapView *)self _safeDelegate];
    }

    v18 = _safeDelegate4;
    [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:2 zoomDirection:0 didDecelerate:1 tiltDirection:0];
    goto LABEL_35;
  }
}

- (void)gestureControllerDidStopTiltingDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  *&self->_flags &= ~0x40000000uLL;
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v5 = _safeDelegate;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:3 zoomDirection:0 zoomGestureType:0 didDecelerate:1 tiltDirection:0];
LABEL_25:

    goto LABEL_26;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate3 = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate3 = [(MKMapView *)self _safeDelegate];
  }

  v10 = _safeDelegate3;
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate4 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate4 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate4;
    [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:3 zoomDirection:0 didDecelerate:1 tiltDirection:0];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)gestureControllerDidStopTilting:(id)tilting willDecelerate:(BOOL)decelerate tiltDirection:(int64_t)direction
{
  tiltingCopy = tilting;
  if (!decelerate)
  {
    flags = self->_flags;
    if ((flags & 0x40000000) != 0)
    {
      *&self->_flags = flags & 0xFFFFFFFFBFFFFFFFLL;
      v19 = tiltingCopy;
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate;
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v15 = _safeDelegate2;
        [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:3 zoomDirection:0 zoomGestureType:0 didDecelerate:0 tiltDirection:direction];
LABEL_27:

        tiltingCopy = v19;
        goto LABEL_28;
      }

      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate3 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate3 = [(MKMapView *)self _safeDelegate];
      }

      v16 = _safeDelegate3;
      v17 = objc_opt_respondsToSelector();

      tiltingCopy = v19;
      if (v17)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
        {
          _safeDelegate4 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate4 = [(MKMapView *)self _safeDelegate];
        }

        v15 = _safeDelegate4;
        [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:3 zoomDirection:0 didDecelerate:0 tiltDirection:direction];
        goto LABEL_27;
      }
    }
  }

LABEL_28:
}

- (void)gestureControllerWillStartTilting:(id)tilting
{
  tiltingCopy = tilting;
  if ((*(&self->_flags + 6) & 0x20) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v6 = _safeDelegate;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self willStartRespondingToGesture:3 animated:0];
  }

  *&self->_flags |= 0x40000000uLL;
}

- (void)gestureControllerDidStopRotating:(id)rotating willDecelerate:(BOOL)decelerate
{
  rotatingCopy = rotating;
  if (!decelerate)
  {
    flags = self->_flags;
    if ((flags & 0x20000000) != 0)
    {
      v23 = rotatingCopy;
      *&self->_flags = flags & 0xFFFFFFFFDFFFFFFFLL;
      [(VKMapView *)self->_mapView yaw];
      v9 = v8;
      verticalYawOverride = self->_verticalYawOverride;
      v11 = fmod(v8, 360.0);
      if (v9 >= 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 + 360.0;
      }

      v13 = fmod(verticalYawOverride, 360.0);
      if (verticalYawOverride < 0.0)
      {
        v13 = v13 + 360.0;
      }

      if (vabdd_f64(v12, v13) > 180.0)
      {
        if (v12 >= v13)
        {
          v13 = v13 + 360.0;
        }

        else
        {
          v12 = v12 + 360.0;
        }
      }

      *&self->_flags = *&self->_flags & 0xFFFBFFFFFFFFFFFFLL | ((vabdd_f64(v13, v12) > 0.1) << 50);
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate = [(MKMapView *)self _safeDelegate];
      }

      v15 = _safeDelegate;
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
        {
          _safeDelegate2 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate2 = [(MKMapView *)self _safeDelegate];
        }

        v19 = _safeDelegate2;
        [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:2 zoomDirection:0 zoomGestureType:0 didDecelerate:0 tiltDirection:0];
LABEL_36:

        rotatingCopy = v23;
        goto LABEL_37;
      }

      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate3 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate3 = [(MKMapView *)self _safeDelegate];
      }

      v20 = _safeDelegate3;
      v21 = objc_opt_respondsToSelector();

      rotatingCopy = v23;
      if (v21)
      {
        if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
        {
          dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
        }

        if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
        {
          _safeDelegate4 = self->_unsafeDelegate;
        }

        else
        {
          _safeDelegate4 = [(MKMapView *)self _safeDelegate];
        }

        v19 = _safeDelegate4;
        [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:2 zoomDirection:0 didDecelerate:0 tiltDirection:0];
        goto LABEL_36;
      }
    }
  }

LABEL_37:
}

- (void)gestureControllerWillStartRotating:(id)rotating
{
  rotatingCopy = rotating;
  if ((*(&self->_flags + 6) & 0x20) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v6 = _safeDelegate;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self willStartRespondingToGesture:2 animated:0];
  }

  *&self->_flags |= 0x100000020000000uLL;
  if (self->_userTrackingMode == 2)
  {
    [(MKMapView *)self _setUserTrackingMode:1 animated:1 fromTrackingButton:0];
  }
}

- (void)gestureControllerDidStopTwoFingerLongPress:(id)press
{
  *&self->_flags &= ~0x200000000000000uLL;
  [(MKMapView *)self _showOrHideScaleIfNecessary:1];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v5 = _safeDelegate;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v12 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:4 zoomDirection:0 zoomGestureType:0 didDecelerate:0 tiltDirection:0];
LABEL_26:

    return;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate3 = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate3 = [(MKMapView *)self _safeDelegate];
  }

  v9 = _safeDelegate3;
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate4 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate4 = [(MKMapView *)self _safeDelegate];
    }

    v12 = _safeDelegate4;
    [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:4 zoomDirection:0 didDecelerate:0 tiltDirection:0];
    goto LABEL_26;
  }
}

- (void)gestureControllerWillStartTwoFingerLongPress:(id)press
{
  pressCopy = press;
  flags = self->_flags;
  if ((flags & 0x20000000000000) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;

    flags = self->_flags;
  }

  *&self->_flags = flags | 0x200000000000000;
  [(MKMapView *)self _showOrHideScaleIfNecessary:0];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v7 = _safeDelegate;
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v10 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self willStartRespondingToGesture:4 animated:0];
  }
}

- (void)gestureControllerDidStopZoomingDecelerating:(id)decelerating direction:(int64_t)direction type:(int64_t)type
{
  [(MKMapView *)self _didEndZoom];
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate2 = 0;
    }

    v16 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:1 zoomDirection:direction zoomGestureType:type didDecelerate:1 tiltDirection:0];
LABEL_36:

    return;
  }

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v13 = _safeDelegate3;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (self)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }
    }

    else
    {
      _safeDelegate4 = 0;
    }

    v16 = _safeDelegate4;
    [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:1 zoomDirection:direction didDecelerate:1 tiltDirection:0];
    goto LABEL_36;
  }
}

- (void)gestureControllerDidStopZooming:(id)zooming direction:(int64_t)direction type:(int64_t)type willDecelerate:(BOOL)decelerate
{
  zoomingCopy = zooming;
  if ((*(&self->_flags + 2) & 0x40) != 0 && !decelerate)
  {
    v20 = zoomingCopy;
    [(MKMapView *)self _didEndZoom];
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v12 = _safeDelegate;
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v16 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:1 zoomDirection:direction zoomGestureType:type didDecelerate:0 tiltDirection:0];
LABEL_27:

      zoomingCopy = v20;
      goto LABEL_28;
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v17 = _safeDelegate3;
    v18 = objc_opt_respondsToSelector();

    zoomingCopy = v20;
    if (v18)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v16 = _safeDelegate4;
      [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:1 zoomDirection:direction didDecelerate:0 tiltDirection:0];
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (void)gestureControllerWillStartZooming:(id)zooming animated:(BOOL)animated
{
  animatedCopy = animated;
  zoomingCopy = zooming;
  if ((*(&self->_flags + 6) & 0x20) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v8 = _safeDelegate;
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v11 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self willStartRespondingToGesture:1 animated:animatedCopy];
  }

  if ((*(&self->_flags + 2) & 0x40) == 0)
  {
    [(MKMapView *)self _willStartZoom:animatedCopy];
  }
}

- (void)gestureControllerDidStopPanningDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  flags = self->_flags;
  if ((flags & 8) != 0)
  {
    v15 = deceleratingCopy;
    *&self->_flags = flags & 0xFFFFFFFFFFFFBFF7;
    [(MKMapView *)self _updateIconsShouldAlignToPixels];
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate;
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:0 zoomDirection:0 zoomGestureType:0 didDecelerate:1 tiltDirection:0];
LABEL_26:

      deceleratingCopy = v15;
      goto LABEL_27;
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v12 = _safeDelegate3;
    v13 = objc_opt_respondsToSelector();

    deceleratingCopy = v15;
    if (v13)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v11 = _safeDelegate4;
      [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:0 zoomDirection:0 didDecelerate:1 tiltDirection:0];
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)gestureControllerDidStopPanning:(id)panning willDecelerate:(BOOL)decelerate
{
  panningCopy = panning;
  flags = self->_flags;
  if ((flags & 0x4000) != 0)
  {
    v17 = panningCopy;
    if (decelerate)
    {
      *&self->_flags = flags | 8;
      [(MKMapView *)self _updateIconsShouldAlignToPixels];
LABEL_29:
      panningCopy = v17;
      goto LABEL_30;
    }

    *&self->_flags = flags & 0xFFFFFFFFFFFFBFF7;
    [(MKMapView *)self _updateIconsShouldAlignToPixels];
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate;
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate2 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate2 = [(MKMapView *)self _safeDelegate];
      }

      v13 = _safeDelegate2;
      [(MKMapViewDelegate *)_safeDelegate2 mapView:self didStopRespondingToGesture:0 zoomDirection:0 zoomGestureType:0 didDecelerate:0 tiltDirection:0];
LABEL_28:

      goto LABEL_29;
    }

    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate3 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate3 = [(MKMapView *)self _safeDelegate];
    }

    v14 = _safeDelegate3;
    v15 = objc_opt_respondsToSelector();

    panningCopy = v17;
    if (v15)
    {
      if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
      {
        dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
      }

      if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
      {
        _safeDelegate4 = self->_unsafeDelegate;
      }

      else
      {
        _safeDelegate4 = [(MKMapView *)self _safeDelegate];
      }

      v13 = _safeDelegate4;
      [(MKMapViewDelegate *)_safeDelegate4 mapView:self didStopRespondingToGesture:0 zoomDirection:0 didDecelerate:0 tiltDirection:0];
      goto LABEL_28;
    }
  }

LABEL_30:
}

- (void)gestureControllerWillStartPanning:(id)panning
{
  panningCopy = panning;
  if ((*(&self->_flags + 6) & 0x20) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v6 = _safeDelegate;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapView:self willStartRespondingToGesture:0 animated:0];
  }

  *&self->_flags |= 0x4000uLL;
  [(MKMapView *)self _updateIconsShouldAlignToPixels];
}

- (void)gestureControllerDidStopUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ((*(&self->_flags + 6) & 0x20) != 0)
  {
    [(VKLabelMarker *)self->_pressedLabelMarker setLabelPressed:0];
    pressedLabelMarker = self->_pressedLabelMarker;
    self->_pressedLabelMarker = 0;
  }

  [(VKMapView *)self->_mapView setGesturing:0];
  if ((*(&self->_flags + 5) & 4) != 0)
  {
    [(MKMapView *)self resumeUserLocationUpdates];
  }

  [(MKMapView *)self _updateIconsShouldAlignToPixels];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v6 = _safeDelegate;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v9 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewDidStopUserInteraction:self];
  }
}

- (void)gestureControllerWillStartUserInteraction:(id)interaction
{
  [(VKMapView *)self->_mapView setGesturing:1];
  if ((*(&self->_flags + 5) & 4) != 0)
  {
    [(MKMapView *)self pauseUserLocationUpdates];
  }

  [(MKMapView *)self _updateIconsShouldAlignToPixels];
  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v5 = _safeDelegate;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v8 = _safeDelegate2;
    [(MKMapViewDelegate *)_safeDelegate2 mapViewDidStartUserInteraction:self];
  }
}

- (void)_handleSelectGestureToDeselect:(id)deselect
{
  deselectCopy = deselect;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate = [(MKMapView *)self _safeDelegate];
    }

    v5 = _safeDelegate;
  }

  else
  {
    v5 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_20:
    selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
    v10 = selectedAnnotationRepresentation;
    if (selectedAnnotationRepresentation)
    {
      viewRepresentation = [selectedAnnotationRepresentation viewRepresentation];
      v12 = viewRepresentation;
      annotationManager = self->_annotationManager;
      if (viewRepresentation)
      {
        annotation = [viewRepresentation annotation];
        [(MKAnnotationManager *)annotationManager deselectAnnotation:annotation animated:1];
      }

      else
      {
        [(MKAnnotationManager *)annotationManager deselectAnnotation:v10 animated:1];
      }
    }

    goto LABEL_26;
  }

  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
    {
      _safeDelegate2 = self->_unsafeDelegate;
    }

    else
    {
      _safeDelegate2 = [(MKMapView *)self _safeDelegate];
    }

    v7 = _safeDelegate2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MKMapViewDelegate *)v7 mapViewShouldHandleTapToDeselect:self];

  if (v8)
  {
    goto LABEL_20;
  }

LABEL_26:
}

- (void)_handleSelectGestureToSelect:(id)select
{
  [select locationInView:self];

  [(MKMapView *)self _handleSelectionAtPoint:?];
}

- (void)_handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  v32 = gestureCopy;
  if ((*(&self->_flags + 1) & 2) != 0 && ([gestureCopy state] == 3 || (v15 = objc_msgSend(v32, "state") == 4, gestureCopy = v32, v15)))
  {
    v10 = self->_longPressedAnnotationView;
    longPressedAnnotationView = self->_longPressedAnnotationView;
    self->_longPressedAnnotationView = 0;

    if ((*(&self->_flags + 6) & 0x10) != 0)
    {
      [(MKMapView *)self _dropDraggingAnnotationView:0];
    }

    else if ([(MKAnnotationView *)v10 isHighlighted])
    {
      [(MKAnnotationView *)v10 setHighlighted:0];
    }

    *&self->_flags &= ~0x200uLL;
    [(MKMapGestureController *)self->_gestureController stopUserInteractionFromExternalGesture];
  }

  else
  {
    [gestureCopy locationInView:self->_annotationContainer];
    v7 = v5;
    v8 = v6;
    if ((*(&self->_flags + 6) & 0x10) != 0)
    {
      [(MKMapView *)self _edgeInsets];
      [(MKAnnotationContainerView *)self->_annotationContainer draggingTouchMovedToPoint:v7 edgeInsets:v8, v19, v20, v21, v22];
      goto LABEL_35;
    }

    v9 = [(MKAnnotationContainerView *)self->_annotationContainer _annotationViewForSelectionAtPoint:0 avoidCurrent:v5 maxDistance:v6, 10.0];
    v10 = v9;
    if (v9)
    {
      isSelected = [(MKAnnotationView *)v9 isSelected];
      flags = self->_flags;
      v13 = !isSelected;
      if ((flags & 0x10000000000000) != 0)
      {
        v13 = 0;
      }

      if ((flags & 0x200) == 0 || v13)
      {
        *&self->_flags = flags | 0x200;
        v14 = self->_longPressedAnnotationView;
        if (v14)
        {
          v15 = v14 == v10;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [(MKAnnotationView *)v14 setHighlighted:0];
        }

        objc_storeStrong(&self->_longPressedAnnotationView, v10);
        if ([v32 state] == 1)
        {
          [(MKMapGestureController *)self->_gestureController startUserInteractionFromExternalGesture];
        }

        if ([(MKAnnotationView *)v10 isDraggable])
        {
          annotation = [(MKAnnotationView *)v10 annotation];
          v17 = objc_opt_respondsToSelector();
        }

        else
        {
          v17 = 0;
        }

        if ([(MKAnnotationView *)v10 isSelected])
        {
          [(MKAnnotationView *)v10 setHighlighted:1];
          if (v17)
          {
            *&self->_flags &= ~4uLL;
            selectedAnnotationRepresentation = [(MKAnnotationManager *)self->_annotationManager selectedAnnotationRepresentation];
            _shouldDeselectWhenDragged = [selectedAnnotationRepresentation _shouldDeselectWhenDragged];

            if (_shouldDeselectWhenDragged)
            {
              [(MKAnnotationManager *)self->_annotationManager deselectAnnotation:0 animated:1];
            }

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter removeObserver:self name:@"MKAnnotationViewDragStateChangedNotification" object:0];

            defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter2 addObserver:self selector:sel__annotationViewDragStateChanged_ name:@"MKAnnotationViewDragStateChangedNotification" object:v10];

            annotation2 = [(MKAnnotationView *)v10 annotation];
            [(MKAnnotationManager *)self->_annotationManager setDraggedAnnotation:annotation2];

            [(MKAnnotationContainerView *)self->_annotationContainer _liftForDragging:v10 mouseDownPoint:v7, v8];
            *&self->_flags |= 0x10000000000000uLL;
          }
        }

        else
        {
          annotationManager = self->_annotationManager;
          annotation3 = [(MKAnnotationView *)v10 annotation];
          [(MKAnnotationManager *)annotationManager selectAnnotation:annotation3 animated:1];
        }
      }
    }

    else
    {
      v23 = self->_longPressedAnnotationView;
      self->_longPressedAnnotationView = 0;
      v24 = v23;

      [(MKAnnotationView *)v24 setHighlighted:0];
    }
  }

LABEL_35:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ((*(&self->_flags + 7) & 0x10) == 0)
  {
    goto LABEL_8;
  }

  if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
  {
    dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
  }

  if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
  {
    _safeDelegate = self->_unsafeDelegate;
  }

  else
  {
    _safeDelegate = [(MKMapView *)self _safeDelegate];
  }

  v9 = _safeDelegate;
  v10 = [(MKMapViewDelegate *)_safeDelegate mapView:self shouldReceiveTouch:touchCopy];

  if (v10)
  {
LABEL_8:
    [touchCopy locationInView:self];
    v12 = v11;
    v14 = v13;
    if ([(MKMapView *)self calloutViewContainsPoint:?]|| [(MKMapView *)self accessoryViewContainsPoint:v12, v14])
    {
      LOBYTE(v10) = 0;
    }

    else if (self->_selectingTapGestureRecognizer != recognizerCopy || ([(VKMapView *)self->_mapView enableDebugLabelHighlighting]& 1) != 0 || ([(MKAttributionLabel *)self->_attributionLabel frame], v24.x = v12, v24.y = v14, CGRectContainsPoint(v26, v24)) || ([(UIImageView *)self->_attributionBadgeView frame], v25.x = v12, v25.y = v14, CGRectContainsPoint(v27, v25)) && [(MKMapView *)self _isAttributionBadgeClickable])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 1;
      v16 = [(MKMapView *)self _annotationAtPoint:1 avoidCurrent:v12, v14];

      if (!v16)
      {
        v17 = [(MKMapView *)self _labelMarkerAtPoint:v12, v14];
        v18 = v17;
        if (v17 && (([v17 isSelectable] & 1) != 0 || (*(&self->_flags + 4) & 0x40) != 0))
        {
          if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
          {
            dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
          }

          if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
          {
            _safeDelegate2 = self->_unsafeDelegate;
          }

          else
          {
            _safeDelegate2 = [(MKMapView *)self _safeDelegate];
          }

          v20 = _safeDelegate2;
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            if (_MKMapViewShouldUseUnsafeDelegate_onceToken_22279 != -1)
            {
              dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_22279, &__block_literal_global_22280);
            }

            if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_22281 == 1)
            {
              _safeDelegate3 = self->_unsafeDelegate;
            }

            else
            {
              _safeDelegate3 = [(MKMapView *)self _safeDelegate];
            }

            v23 = _safeDelegate3;
            LOBYTE(v10) = [(MKMapViewDelegate *)_safeDelegate3 mapView:self shouldSelectLabelMarker:v18];
          }

          else
          {
            LOBYTE(v10) = 1;
          }
        }

        else
        {
          LOBYTE(v10) = 0;
        }
      }
    }
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = 0;
  if (self->_nonselectingTapGestureRecognizer == recognizerCopy || self->_selectingTapGestureRecognizer == recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_longPressGestureRecognizer != begin)
  {
    return 1;
  }

  annotationContainer = self->_annotationContainer;
  [begin locationInView:annotationContainer];
  v5 = [(MKAnnotationContainerView *)annotationContainer annotationViewForPoint:?];
  v3 = v5 != 0;

  return v3;
}

- (void)_configureGestureRecognizers:(id)recognizers
{
  recognizersCopy = recognizers;
  v5 = [MKMapGestureController alloc];
  if (recognizersCopy)
  {
    contentView = recognizersCopy;
  }

  else
  {
    contentView = self->_contentView;
  }

  v7 = [(MKMapGestureController *)v5 initWithMapView:self->_basicMapView gestureTargetView:contentView doubleTapTargetView:?];

  gestureController = self->_gestureController;
  self->_gestureController = v7;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKMapGestureController *)self->_gestureController setCompassView:self->_compassView];
  }

  [(MKMapGestureController *)self->_gestureController setScaleView:self->_scaleView];
  [(MKMapGestureController *)self->_gestureController setDelegate:self];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleSelectGestureToSelect_];
  selectingTapGestureRecognizer = self->_selectingTapGestureRecognizer;
  self->_selectingTapGestureRecognizer = v9;

  [(UITapGestureRecognizer *)self->_selectingTapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_selectingTapGestureRecognizer setDelaysTouchesEnded:0];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleSelectGestureToDeselect_];
  nonselectingTapGestureRecognizer = self->_nonselectingTapGestureRecognizer;
  self->_nonselectingTapGestureRecognizer = v11;

  [(UITapGestureRecognizer *)self->_nonselectingTapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_nonselectingTapGestureRecognizer setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)self->_nonselectingTapGestureRecognizer requireGestureRecognizerToFail:self->_selectingTapGestureRecognizer];
  v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPressGesture_];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = v13;

  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:0.2];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setCancelsTouchesInView:0];
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:self];
  v15 = self->_selectingTapGestureRecognizer;
  twoFingerTapGestureRecognizer = [(MKMapGestureController *)self->_gestureController twoFingerTapGestureRecognizer];
  [(UITapGestureRecognizer *)v15 requireGestureRecognizerToFail:twoFingerTapGestureRecognizer];

  v17 = self->_selectingTapGestureRecognizer;
  panGestureRecognizer = [(MKMapGestureController *)self->_gestureController panGestureRecognizer];
  [(UITapGestureRecognizer *)v17 requireGestureRecognizerToFail:panGestureRecognizer];

  v19 = self->_selectingTapGestureRecognizer;
  doubleTapGestureRecognizer = [(MKMapGestureController *)self->_gestureController doubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)v19 requireGestureRecognizerToFail:doubleTapGestureRecognizer];

  oneHandedZoomGestureRecognizer = [(MKMapGestureController *)self->_gestureController oneHandedZoomGestureRecognizer];

  if (oneHandedZoomGestureRecognizer)
  {
    v22 = self->_selectingTapGestureRecognizer;
    oneHandedZoomGestureRecognizer2 = [(MKMapGestureController *)self->_gestureController oneHandedZoomGestureRecognizer];
    [(UITapGestureRecognizer *)v22 requireGestureRecognizerToFail:oneHandedZoomGestureRecognizer2];

    v24 = self->_nonselectingTapGestureRecognizer;
    oneHandedZoomGestureRecognizer3 = [(MKMapGestureController *)self->_gestureController oneHandedZoomGestureRecognizer];
    [(UITapGestureRecognizer *)v24 requireGestureRecognizerToFail:oneHandedZoomGestureRecognizer3];
  }

  v26 = self->_nonselectingTapGestureRecognizer;
  twoFingerTapGestureRecognizer2 = [(MKMapGestureController *)self->_gestureController twoFingerTapGestureRecognizer];
  [(UITapGestureRecognizer *)v26 requireGestureRecognizerToFail:twoFingerTapGestureRecognizer2];

  v28 = self->_nonselectingTapGestureRecognizer;
  panGestureRecognizer2 = [(MKMapGestureController *)self->_gestureController panGestureRecognizer];
  [(UITapGestureRecognizer *)v28 requireGestureRecognizerToFail:panGestureRecognizer2];

  v30 = self->_nonselectingTapGestureRecognizer;
  doubleTapGestureRecognizer2 = [(MKMapGestureController *)self->_gestureController doubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)v30 requireGestureRecognizerToFail:doubleTapGestureRecognizer2];

  [(UIView *)self->_contentView addGestureRecognizer:self->_longPressGestureRecognizer];
  [(UIView *)self->_contentView addGestureRecognizer:self->_selectingTapGestureRecognizer];
  [(UIView *)self->_contentView addGestureRecognizer:self->_nonselectingTapGestureRecognizer];
  [(MKMapView *)self _addDebugGesture];

  [(MKMapView *)self _updateScrollingAndGestures];
}

- (void)_updateWaypointCaptions
{
  [(VKRouteContext *)self->_routeContext _updateWaypointCaptions];
  mapView = self->_mapView;

  [(VKMapView *)mapView setNeedsLayout];
}

- (id)_routeInfoForRoute:(id)route
{
  v3 = [(VKRouteContext *)self->_routeContext _routeInfoForRoute:route];

  return v3;
}

- (void)_clearRouteContext
{
  routeContext = self->_routeContext;
  if (routeContext)
  {
    self->_routeContext = 0;

    v4 = self->_mapView;
    [(VKMapView *)v4 setRouteContext:0];
    [(VKMapView *)v4 setRouteLineSplitAnnotation:0];
  }
}

- (void)_setRouteContext:(id)context
{
  contextCopy = context;
  v14 = contextCopy;
  if (contextCopy && self->_routeContext)
  {
    routeInfo = [contextCopy routeInfo];
    route = [routeInfo route];
    uniqueRouteID = [route uniqueRouteID];
    routeInfo2 = [(VKRouteContext *)self->_routeContext routeInfo];
    route2 = [routeInfo2 route];
    uniqueRouteID2 = [route2 uniqueRouteID];
    v12 = [uniqueRouteID isEqual:uniqueRouteID2];
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&self->_routeContext, context);
  v13 = self->_mapView;
  [(VKMapView *)v13 setRouteContext:self->_routeContext];
  if ((v12 & 1) == 0)
  {
    [(VKMapView *)v13 setRouteLineSplitAnnotation:0];
  }
}

- (BOOL)_shouldUpdateSelectedRouteFromRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  v31 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [routesCopy objectAtIndexedSubscript:index];
  }

  v7 = [routesCopy count];
  v23 = v6 != 0;
  routeInfo = [(VKRouteContext *)self->_routeContext routeInfo];
  route = [routeInfo route];
  v10 = route;
  if (route == v6)
  {
    alternateRoutes = [(VKRouteContext *)self->_routeContext alternateRoutes];
    v12 = [alternateRoutes count];

    if (v7 - v23 == v12)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = routesCopy;
      v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = 0;
        v15 = *v27;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v26 + 1) + 8 * i);
            if (v17 != v6)
            {
              alternateRoutes2 = [(VKRouteContext *)self->_routeContext alternateRoutes];
              v19 = [alternateRoutes2 objectAtIndexedSubscript:v14];

              route2 = [v19 route];
              v21 = v17 == route2;

              if (!v21)
              {

                goto LABEL_20;
              }

              ++v14;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v23) = 0;
    }
  }

  else
  {
  }

LABEL_20:

  return v23;
}

- (void)_setRouteContextForRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  if ([MKMapView _shouldUpdateSelectedRouteFromRoutes:"_shouldUpdateSelectedRouteFromRoutes:selectedRouteIndex:" selectedRouteIndex:?])
  {
    v6 = objc_alloc_init(MKRouteContextBuilder);
    v7 = [(MKRouteContextBuilder *)v6 buildRouteContextForRoutes:routesCopy selectedRouteIndex:index];
    [(MKMapView *)self _setRouteContext:v7];
  }
}

- (void)_setRouteContextForRoute:(id)route
{
  v8[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v5 = routeCopy;
  if (routeCopy)
  {
    v8[0] = routeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MKMapView *)self _setRouteContextForRoutes:v6 selectedRouteIndex:v7];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  anyObject = [cancelledCopy anyObject];
  if (![(MKMapView *)self _pressEnded:anyObject])
  {
    v9.receiver = self;
    v9.super_class = MKMapView;
    [(MKMapView *)&v9 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  anyObject = [endedCopy anyObject];
  if (![(MKMapView *)self _pressEnded:anyObject])
  {
    v9.receiver = self;
    v9.super_class = MKMapView;
    [(MKMapView *)&v9 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (BOOL)_pressEnded:(id)ended
{
  endedCopy = ended;
  v5 = [endedCopy key];
  keyCode = [v5 keyCode];
  v8 = (keyCode - 45) <= 0x25 && ((1 << (keyCode - 45)) & 0x3C00000003) != 0 && [(MKMapGestureController *)self->_gestureController keyUp:endedCopy];

  return v8;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  v9 = [anyObject key];
  keyCode = [v9 keyCode];
  v11 = (keyCode - 45) > 0x25 || ((1 << (keyCode - 45)) & 0x3C00000003) == 0;
  if (v11 || ![(MKMapGestureController *)self->_gestureController keyDown:anyObject])
  {
    v12.receiver = self;
    v12.super_class = MKMapView;
    [(MKMapView *)&v12 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)setCustomOverrideInterfaceStyle:(int64_t)style
{
  [(MKMapView *)self setOverrideUserInterfaceStyle:?];
  if (style)
  {

    [(MKMapView *)self _updateAppearanceIfNeeded];
  }
}

- (id)_flattenedAnnotationsForAnnotationViews:(id)views maxDisplayPriority:(float *)priority
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = [views count];
  v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = views;
  v8 = [views countByEnumeratingWithState:&v39 objects:v44 count:16];
  v9 = &OBJC_IVAR___MKScaleView__useMetric;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v40;
    do
    {
      v13 = 0;
      v32 = v10;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        annotation = *&v14[v9[854]];
        if (!annotation)
        {
          annotation = [*(*(&v39 + 1) + 8 * v13) annotation];
        }

        if ([annotation _mapkit_isMKClusterAnnotation])
        {
          memberAnnotations = [annotation memberAnnotations];
          v6 = v6 + [memberAnnotations count] - 1;
          v7 = malloc_type_realloc(v7, 8 * v6, 0x80040B8603338uLL);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v17 = [memberAnnotations countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = v12;
            v20 = *v36;
            do
            {
              v21 = 0;
              do
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(memberAnnotations);
                }

                v22 = [(MKMapView *)self viewForAnnotation:*(*(&v35 + 1) + 8 * v21)];
                if (v22)
                {
                  v7[v11++] = v22;
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: memberView != nil", buf, 2u);
                  }

                  --v6;
                }

                ++v21;
              }

              while (v18 != v21);
              v23 = [memberAnnotations countByEnumeratingWithState:&v35 objects:v43 count:16];
              v18 = v23;
            }

            while (v23);
            v9 = &OBJC_IVAR___MKScaleView__useMetric;
            v12 = v19;
            v10 = v32;
          }
        }

        else
        {
          v7[v11++] = v14;
        }

        ++v13;
      }

      while (v13 != v10);
      v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v10);
  }

  qsort_b(v7, v6, 8uLL, &__block_literal_global_44590);
  [*v7 displayPriority];
  *priority = v24;
  v25 = 0;
  if (v6)
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = v7;
    do
    {
      v28 = *(*v27 + 80);
      if (v28 || (v28 = [*v27 annotation]) != 0)
      {
        v7[v25++] = v28;
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_FAULT, "Assertion failed: annotation != nil", buf, 2u);
      }

      ++v27;
      --v6;
    }

    while (v6);
  }

  v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v25];
  free(v7);
  return v29;
}

uint64_t __82__MKMapView_MKNonARC___flattenedAnnotationsForAnnotationViews_maxDisplayPriority___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 648);
  v4 = *(*a3 + 648);
  if (v3 > v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 < v4)
  {
    return 1;
  }

  return *a2 - *a3;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  if (self)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_44594 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_44594, &__block_literal_global_18_44595);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_44596 == 1)
    {
      self = selfCopy[66];
    }

    else
    {
      self = [selfCopy _safeDelegate];
    }
  }

  if (self != delegate)
  {
    if (_MKMapViewShouldUseUnsafeDelegate_onceToken_44594 != -1)
    {
      dispatch_once(&_MKMapViewShouldUseUnsafeDelegate_onceToken_44594, &__block_literal_global_18_44595);
    }

    if (_MKMapViewShouldUseUnsafeDelegate_useUnsafeDelegate_44596 == 1)
    {
      selfCopy[66] = delegate;
    }

    else
    {
      [selfCopy _setSafeDelegate:delegate];
    }

    v5 = objc_opt_respondsToSelector();
    v6 = selfCopy + 122;
    v7 = 0x1000000000000000;
    if ((v5 & 1) == 0)
    {
      v7 = 0;
    }

    *v6 = (*v6 & 0xEFFFFFFFFFFFFFFFLL | v7);
    v8 = objc_opt_respondsToSelector();
    v9 = 0x2000000000000000;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
    }

    *v6 = (*v6 & 0xDFFFFFFFFFFFFFFFLL | v9);
    v10 = objc_opt_respondsToSelector();
    v11 = 0x4000000000000000;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    *v6 = (*v6 & 0xBFFFFFFFFFFFFFFFLL | v11);
    v12 = objc_opt_respondsToSelector();
    v13 = 0x8000000000000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    *v6 = (v13 & 0x8000000000000000 | *v6 & 0x7FFFFFFFFFFFFFFFLL);
    *(v6 + 8) = v6[1] & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(v6 + 8) = v6[1] & 0xFD | v14;
  }
}

- (double)_distanceFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint fromView:(id)view withPrecision:(int64_t)precision
{
  y = toPoint.y;
  x = toPoint.x;
  v10 = point.y;
  v11 = point.x;
  v13 = self->_mapView;
  viewCopy = view;
  [(MKMapView *)self convertPoint:viewCopy fromView:v11, v10];
  v16 = v15;
  v18 = v17;
  [(MKMapView *)self convertPoint:viewCopy fromView:x, y];
  v20 = v19;
  v22 = v21;

  layer = [(MKMapView *)self layer];
  [(VKMapView *)v13 distanceFromPoint:layer toPoint:precision == 1 fromLayer:v16 withPrecision:v18, v20, v22];
  v25 = v24;

  return v25;
}

- (CGRect)_convertMapRect:(id)rect toRectToView:(id)view
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  v47[8] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v10 = v6 + var1;
  v11 = v7 + var0;
  [(MKMapView *)self _convertMapPoint:viewCopy toPointToView:v7, v6];
  v43 = v13;
  v45 = v12;
  [(MKMapView *)self _convertMapPoint:viewCopy toPointToView:v7, v10];
  v41 = v15;
  v42 = v14;
  [(MKMapView *)self _convertMapPoint:viewCopy toPointToView:v11, v6];
  v39 = v17;
  v40 = v16;
  [(MKMapView *)self _convertMapPoint:viewCopy toPointToView:v11, v10];
  v20.i64[0] = v45;
  v20.i64[1] = v43;
  v21.i64[0] = v18;
  v21.i64[1] = v19;
  v22.i64[0] = v42;
  v22.i64[1] = v41;
  v23.i64[0] = v40;
  v23.i64[1] = v39;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v25 = vnegq_f64(v24);
  v26 = vandq_s8(v20, v25);
  v27 = vandq_s8(v21, v25);
  v28 = vandq_s8(v23, v25);
  v29 = vandq_s8(v22, v25);
  v30 = vdupq_n_s64(0x7FF0000000000000uLL);
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_s64(v26, v30), vcgeq_s64(v29, v30)), vuzp1q_s32(vcgeq_s64(v28, v30), vcgeq_s64(v27, v30))))))
  {
    v31 = *(MEMORY[0x1E695F050] + 16);
    v46 = *MEMORY[0x1E695F050];
  }

  else
  {
    v32 = 0;
    v47[0] = v45;
    v47[1] = v43;
    v47[2] = v42;
    v47[3] = v41;
    v47[4] = v40;
    v47[5] = v39;
    v47[6] = v18;
    v47[7] = v19;
    v33 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v34 = *&v47[v32];
      v30 = vbslq_s8(vcgtq_f64(v30, v34), v34, v30);
      v33 = vbslq_s8(vcgtq_f64(v34, v33), v34, v33);
      v32 += 2;
    }

    while (v32 != 8);
    v46 = v30;
    v31 = vsubq_f64(v33, v30);
  }

  v44 = v31;

  v35 = v44.f64[0];
  v37 = v46.f64[1];
  v36 = v46.f64[0];
  v38 = v44.f64[1];
  result.size.height = v38;
  result.size.width = v35;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- ($9433BFB5400FDC760880D1BFD6845728)_convertRect:(CGRect)rect toMapRectFromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41[8] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(MKMapView *)self _convertPoint:viewCopy toMapPointFromView:x, y];
  v11 = v10;
  v13 = v12;
  v14 = y + height;
  [(MKMapView *)self _convertPoint:viewCopy toMapPointFromView:x, y + height];
  v16 = v15;
  v18 = v17;
  v19 = x + width;
  [(MKMapView *)self _convertPoint:viewCopy toMapPointFromView:v19, y];
  v21 = v20;
  v23 = v22;
  [(MKMapView *)self _convertPoint:viewCopy toMapPointFromView:v19, v14];
  v25 = v24;
  v27 = v26;

  v28 = 0.0;
  v31 = v11 == -1.0 || v13 == -1.0;
  if (v31 || (v16 != -1.0 ? (v32 = v18 == -1.0) : (v32 = 1), !v32 ? (v33 = 0) : (v33 = 1), !v33 ? (v34 = 0) : (v34 = 1), v34 || (v21 != -1.0 ? (v35 = v23 == -1.0) : (v35 = 1), !v35 ? (v36 = 0) : (v36 = 1), !v36 ? (v37 = 0) : (v37 = 1), v37)))
  {
    v38 = INFINITY;
  }

  else
  {
    v38 = INFINITY;
    if (v25 != -1.0 && v27 != -1.0)
    {
      *v41 = v11;
      *&v41[1] = v13;
      *&v41[2] = v16;
      *&v41[3] = v18;
      *&v41[4] = v21;
      *&v41[5] = v23;
      *&v41[6] = v25;
      *&v41[7] = v27;
      v38 = MKMapRectBoundingMapPoints(v41, 4);
      goto LABEL_37;
    }
  }

  v39 = INFINITY;
  v40 = 0.0;
LABEL_37:
  result.var1.var1 = v40;
  result.var1.var0 = v28;
  result.var0.var1 = v39;
  result.var0.var0 = v38;
  return result;
}

- ($E1D56841AF022BCD1A238A621DF8CB5F)_convertRect:(SEL)rect toRegionFromView:(CGRect)view
{
  [(MKMapView *)self _convertRect:a5 toMapRectFromView:view.origin.x, view.origin.y, view.size.width, view.size.height];

  MKCoordinateRegionForMapRect(*&v5);
  return result;
}

- (CGRect)_convertRegion:(id *)region toRectToView:(id)view
{
  regionCopy = region;
  GEOMapRectForCoordinateRegion();
  [(MKMapView *)self _convertMapRect:regionCopy toRectToView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_convertPoint:(CGPoint)point toMapPointFromView:(id)view
{
  y = point.y;
  x = point.x;
  v8 = self->_mapView;
  [(MKMapView *)self convertPoint:view fromView:x, y];
  v10 = v9;
  v12 = v11;
  layer = [(MKMapView *)self layer];
  [(VKMapView *)v8 convertPoint:layer toMapPointFromLayer:v10, v12];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (CGPoint)_convertMapPoint:(id)point toPointToView:(id)view
{
  var1 = point.var1;
  var0 = point.var0;
  v8 = self->_mapView;
  viewCopy = view;
  layer = [(MKMapView *)self layer];
  [(VKMapView *)v8 convertMapPoint:layer toPointToLayer:var0, var1];
  v12 = v11;
  v14 = v13;

  [(MKMapView *)self convertPoint:viewCopy toView:v12, v14];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CLLocationCoordinate2D)_convertPoint:(CGPoint)point toCoordinateFromView:(id)view
{
  y = point.y;
  x = point.x;
  v8 = self->_mapView;
  [(MKMapView *)self convertPoint:view fromView:x, y];
  v10 = v9;
  v12 = v11;
  layer = [(MKMapView *)self layer];
  [(VKMapView *)v8 convertPoint:layer toCoordinateFromLayer:v10, v12];
  v15 = v14;
  v17 = v16;

  v20 = CLLocationCoordinate2DMake(v15, v17);
  longitude = v20.longitude;
  latitude = v20.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CGPoint)_convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view
{
  v6 = self->_mapView;
  viewCopy = view;
  VKLocationCoordinate2DMake();
  v9 = v8;
  v11 = v10;
  layer = [(MKMapView *)self layer];
  [(VKMapView *)v6 convertCoordinate:layer toPointToLayer:v9, v11];
  v14 = v13;
  v16 = v15;

  [(MKMapView *)self convertPoint:viewCopy toView:v14, v16];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

+ (unint64_t)minZoomLevelForMapType:(unint64_t)type viewSize:(CGSize)size
{
  v4 = size.width * 0.0000000037252903;
  v5 = size.height * 0.0000000037252903;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  v6 = ceil(log2(v4)) + 21.0;
  if (v6 <= 0.0)
  {
    return 0.0;
  }

  return v6;
}

+ (float64_t)_mapRectThatFitsViewBounds:(double)bounds mapRect:(double)rect viewInsets:(float64_t)insets edgePadding:(float64_t)padding minZoomLevel:(float64_t)level maxZoomLevel:(float64_t)zoomLevel snapToZoomLevel:(uint64_t)toZoomLevel
{
  if (insets == INFINITY && padding == INFINITY)
  {
    return INFINITY;
  }

  v42 = v29;
  v43 = v28;
  v44 = v26;
  v45 = v27;
  v31 = bounds - (a13 + a15);
  if (v31 - (a17 + a19) > 0.0)
  {
    v32 = rect - (a12 + a14);
    if (v32 - (a16 + a18) > 0.0)
    {
      v33 = ceil(a20);
      v34 = floor(a21);
      if (!a11)
      {
        v33 = a20;
        v34 = a21;
      }

      v35 = *MEMORY[0x1E695EFF8];
      v36 = *(MEMORY[0x1E695EFF8] + 8);
      v41 = 0uLL;
      v40 = 0.0;
      v39[0] = 0.0;
      v39[1] = 0.0;
      _scaleForMapRect(&v41, &v40, v39, a11, v35, v36, v31, v32, insets, padding, level, zoomLevel, a16, a17, a18, a19, v33, v34);
      v37 = v31 * 0.5 / (1.0 / exp2(21.0 - v40));
      return v41.f64[0] - v37;
    }
  }

  return insets;
}

+ ($E1D56841AF022BCD1A238A621DF8CB5F)_regionThatFitsMapType:(SEL)type viewSize:(unint64_t)size viewInsets:(CGSize)insets edgePadding:(UIEdgeInsets)padding region:(UIEdgeInsets)region minZoomLevel:(id *)level maxZoomLevel:(double)zoomLevel snapToZoomLevel:(double)self0
{
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  height = insets.height;
  width = insets.width;
  if (fabs(toZoomLevel) <= 180.0)
  {
    right = padding.right;
    if (fabs(zoomLevel) <= 90.0 && v23 >= 0.0 && v23 <= 180.0 && v24 >= 0.0 && v24 <= 360.0 && insets.width - (padding.left + padding.right) - (region.left + region.right) > 0.0 && insets.height - (padding.top + padding.bottom) - (region.top + region.bottom) > 0.0)
    {
      v18 = result;
      GEOMapRectForCoordinateRegion();
      [($E1D56841AF022BCD1A238A621DF8CB5F *)v18 _mapRectThatFitsViewBounds:level mapRect:0.0 viewInsets:0.0 edgePadding:width minZoomLevel:height maxZoomLevel:v19 snapToZoomLevel:v20, v21, v22, *&top, *&left, *&bottom, *&right, *&region.top, *&region.left, *&region.bottom, *&region.right, v25, v26];
      MKCoordinateRegionForMapRect(v27);
    }
  }

  return result;
}

@end