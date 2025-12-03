@interface CRLImageRep
+ (BOOL)p_canRenderWithMaskToBoundsWithImageLayout:(id)layout;
+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)size withImageLayout:(id)layout orientation:(int64_t)orientation;
+ (id)p_mediaReplaceButtonBackgroundFillColor;
+ (id)p_mediaReplaceButtonImage;
- (BOOL)allowDragAcrossPageBoundaries;
- (BOOL)allowsSupportedDynamicOperationsToBeRealTime;
- (BOOL)canPasteDataFromPhysicalKeyboard:(id)keyboard;
- (BOOL)canRemoveBackgroundFromImage;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)demandsExclusiveSelection;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)dragDidChangeGeometry;
- (BOOL)exclusivelyProvidesGuidesWhileAligning;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (BOOL)hitRepChrome:(CGPoint)chrome;
- (BOOL)imageDrawingHelperImageHasAlpha:(id)alpha;
- (BOOL)imageDrawingHelperShouldGenerateSizedImageSynchronously:(id)synchronously;
- (BOOL)imageDrawingHelperShouldRetryGeneratingSizedImageLater:(id)later;
- (BOOL)intersectsUnscaledRect:(CGRect)rect;
- (BOOL)isMaskScaleFromLayout;
- (BOOL)isPlaceholder;
- (BOOL)maskGeometryDidChange;
- (BOOL)p_allowedToEditMask;
- (BOOL)p_currentEditOperationDidChangeTheImageGeometry;
- (BOOL)p_directlyManagesContentForRenderable:(id)renderable;
- (BOOL)p_drawsInOneStep;
- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point;
- (BOOL)p_isMediaReplaceKnob:(id)knob;
- (BOOL)p_isPresentingMiniFormatterOrMediaReplaceButtonVisible;
- (BOOL)p_isResizingImageInMaskEditMode;
- (BOOL)p_isResizingMaskInMaskEditMode;
- (BOOL)p_mediaReplaceButtonFitsInFrame;
- (BOOL)p_miniFormatterIsPresentingSecondLayer;
- (BOOL)p_shouldBakeMaskIntoSizedImage;
- (BOOL)p_shouldRenderWithMaskMatchingImage;
- (BOOL)p_shouldRenderWithMaskToBounds;
- (BOOL)providesGuidesWhileAligning;
- (BOOL)replaceButtonContainsPoint:(CGPoint)point;
- (BOOL)shouldAllowReplacementFromPaste;
- (BOOL)shouldDisplayAsSpatial;
- (BOOL)shouldShowDragHUD;
- (BOOL)shouldShowMediaReplaceUI;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (BOOL)shouldShowSmartMaskKnobs;
- (BOOL)supportsAlternatePressureDrag;
- (BOOL)wantsGuidesWhileResizing;
- (BOOL)wantsToDistortWithImagerContext;
- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat;
- (CGAffineTransform)transformForCollaboratorCursorRenderable;
- (CGAffineTransform)transformForHighlightLayer;
- (CGImage)p_createImageForRemoveBackground;
- (CGPath)imageDrawingHelper:(id)helper newMaskPathForSizedImageWithSize:(CGSize)size orientation:(int64_t)orientation;
- (CGPoint)centerForGuideRenderablePlacement;
- (CGPoint)centerForRotation;
- (CGPoint)i_dragOffset;
- (CGPoint)positionOfMediaReplaceKnobForBounds:(CGRect)bounds viewScale:(double)scale;
- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds;
- (CGPoint)unscaledGuidePosition;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)boundsForHighlightLayer;
- (CGRect)boundsForStandardKnobs;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)imageDrawingHelperImageRect:(id)rect;
- (CGRect)imageDrawingHelperRectForCenteringDownloadProgressPlaceholderImage:(id)image;
- (CGRect)p_calcNewImageItemRectWithRawSize:(CGSize)size offset:(CGPoint)offset;
- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)offset;
- (CRLImageLayout)imageLayout;
- (CRLImageRep)initWithLayout:(id)layout canvas:(id)canvas;
- (CRLMaskInfo)maskInfo;
- (CRLMaskLayout)maskLayout;
- (_TtC8Freeform12CRLImageItem)imageInfo;
- (double)additionalRotationForKnobOrientation;
- (double)angleForRotation;
- (double)maskScale;
- (id)actionStringForDrag;
- (id)actionStringForResize;
- (id)actionStringForRotate;
- (id)additionalRenderablesOverRenderable;
- (id)commandForAcceptingPasteWithImageInfo:(id)info outSelectionBehavior:(id *)behavior;
- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object;
- (id)dynamicResizeDidBegin;
- (id)imageDrawingHelperImageData:(id)data;
- (id)imageDrawingHelperThumbnailImageData:(id)data;
- (id)imageItem;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)infoForTransforming;
- (id)layoutsForChildReps;
- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info;
- (id)newMaskResizer;
- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag;
- (id)newTrackerForKnob:(id)knob;
- (id)overlayRenderables;
- (id)p_getMagnetUnscaledPositionValueForMagnet:(id)magnet withConnectedItem:(id)item;
- (id)p_mediaReplaceButtonKnob;
- (id)p_newPathExtensionForOldAssetFilename:(id)filename;
- (id)p_tapToReplaceRenderable;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (id)visuallySignificantDataSet;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type;
- (int64_t)maskEditMode;
- (unint64_t)p_maxPixelAreaForBackgroundRemoval;
- (void)addKnobsToArray:(id)array;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)beginDynamicallyChangingMaskScale;
- (void)beginEditingMaskInMaskEditMode:(int64_t)mode;
- (void)dealloc;
- (void)didUpdateRenderable:(id)renderable;
- (void)documentEditabilityDidChange;
- (void)documentModeDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)dynamicDragDidBegin;
- (void)dynamicMoveSmartShapeKnobDidBegin;
- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)tracker;
- (void)dynamicOperationDidEnd;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)dynamicallySetMaskScale:(double)scale;
- (void)editMaskWithHUD:(BOOL)d;
- (void)endDynamicallyChangingMaskScale:(double)scale;
- (void)endEditingMask;
- (void)enterPreviewMode;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)highlightImage;
- (void)i_toggleMediaReplaceTriggeredFromKnob;
- (void)imageDrawingHelper:(id)helper didGenerateSizedImageSynchronously:(BOOL)synchronously;
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)maskScaleLimitsReturningMin:(double *)min max:(double *)max;
- (void)maskWithHUD:(BOOL)d;
- (void)p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:(id)data dismissMiniFormatter:(BOOL)formatter;
- (void)p_cleanUpMaskModeUI;
- (void)p_createMaskRenderableForRenderable:(id)renderable;
- (void)p_disposeMaskRenderable;
- (void)p_disposeStrokeLayer;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(double)opacity withMask:(BOOL)mask forLayer:(BOOL)layer forShadow:(BOOL)shadow forHitTest:(BOOL)self0;
- (void)p_endEditingMask;
- (void)p_enqueueCommandsToUpdateMagnetsForLineEnd:(unint64_t)end withClineLayout:(id)layout withUnscaledPosition:(id)position;
- (void)p_enterMaskModeIfNecessaryWithHUD:(BOOL)d;
- (void)p_generateSizedImageIfNecessary;
- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)frame transform:(CGAffineTransform *)transform;
- (void)p_handleAssetPreparationCompletion;
- (void)p_handleImageMask;
- (void)p_hideControls;
- (void)p_hideMediaReplaceButtonIndependently;
- (void)p_hideMiniFormatter;
- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point;
- (void)p_injectSizedImageIntoLayerContentsIfReady;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_removeBackgroundFromImageInitiatedByUser:(BOOL)user;
- (void)p_replaceImageDataWithRemoveImageBackgroundData:(id)data rect:(CGRect)rect;
- (void)p_selectionPathDidChange:(id)change;
- (void)p_setDefaultMaskWithActionString:(id)string;
- (void)p_setUpMaskModeUI;
- (void)p_showControls;
- (void)p_showMiniFormatter;
- (void)p_updateCornerRadiusOnRenderable:(id)renderable;
- (void)p_updateDirectlyManagesLayerContentForRenderable:(id)renderable;
- (void)p_updateHUD;
- (void)p_updateMaskRenderable:(id)renderable forRepRenderable:(id)repRenderable shouldIncludeMask:(BOOL)mask shouldIncludeInstantAlpha:(BOOL)alpha siblingLayer:(BOOL)layer;
- (void)p_updateMaskSublayersForMaskEditMode;
- (void)p_updateMediaReplaceButtonVisibility;
- (void)p_updateStrokeLayerForStroke:(id)stroke repRenderable:(id)renderable;
- (void)processChangedProperty:(unint64_t)property;
- (void)processChanges:(id)changes;
- (void)screenScaleDidChange;
- (void)toggleMiniFormatter;
- (void)toggleShowingControls;
- (void)unhighlightImage;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)updateRenderableGeometryFromLayout:(id)layout;
- (void)willBeRemoved;
- (void)willEnterForeground;
- (void)willUpdateRenderable:(id)renderable;
@end

@implementation CRLImageRep

- (CRLImageRep)initWithLayout:(id)layout canvas:(id)canvas
{
  canvasCopy = canvas;
  v26.receiver = self;
  v26.super_class = CRLImageRep;
  v7 = [(CRLCanvasRep *)&v26 initWithLayout:layout canvas:canvasCopy];
  v8 = v7;
  if (v7)
  {
    imageInfo = [(CRLImageRep *)v7 imageInfo];

    if (imageInfo)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      imageInfo2 = [(CRLImageRep *)v8 imageInfo];
      imageAssetPayload = [imageInfo2 imageAssetPayload];

      if (imageAssetPayload)
      {
        v14 = +[CRLImageProviderPool sharedPool];
        [v14 addInterestInProviderForAsset:imageAssetPayload];
      }

      v15 = objc_alloc_init(NSMutableArray);
      updateFromLayoutBlocks = v8->_updateFromLayoutBlocks;
      v8->_updateFromLayoutBlocks = v15;

      v17 = dispatch_semaphore_create(1);
      updateFromLayoutBlocksLock = v8->_updateFromLayoutBlocksLock;
      v8->_updateFromLayoutBlocksLock = v17;

      v19 = [[CRLImageRepDrawingHelper alloc] initWithRep:v8];
      drawingHelper = v8->_drawingHelper;
      v8->_drawingHelper = v19;

      v8->_imageForRemoveBackgroundAssetDataHash = 0x7FFFFFFFFFFFFFFFLL;
      v8->_autoBackgroundRemovalState = 0;
      v8->_userInitiatedBackgroundRemovalState = 0;
      v21 = objc_alloc_init(CRLRemoveImageBackgroundData);
      cachedRemoveImageBackgroundData = v8->_cachedRemoveImageBackgroundData;
      v8->_cachedRemoveImageBackgroundData = v21;

      v8->_backgroundRemovalLock._os_unfair_lock_opaque = 0;
      __dmb(0xBu);
      if ([canvasCopy isCanvasInteractive])
      {
        [(CRLImageRep *)v8 p_listenForAssetChangesIfAppropriate];
      }

      v23 = objc_alloc_init(NSMutableDictionary);
      hitTestCache = v8->_hitTestCache;
      v8->_hitTestCache = v23;

      if ([canvasCopy isCanvasInteractive])
      {
        [(CRLImageRep *)v8 p_updateDirectlyManagesLayerContentForRenderable:0];
      }
    }

    else
    {
      imageAssetPayload = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(CRLCanvasRenderable *)self->_strokeRenderable setDelegate:0];
  imageInfo = [(CRLImageRep *)self imageInfo];
  imageAssetPayload = [imageInfo imageAssetPayload];

  if (imageAssetPayload)
  {
    v5 = +[CRLImageProviderPool sharedPool];
    [v5 removeInterestInProviderForAsset:imageAssetPayload];
  }

  imageForRemoveBackground = self->_imageForRemoveBackground;
  if (imageForRemoveBackground)
  {
    CFRelease(imageForRemoveBackground);
    self->_imageForRemoveBackground = 0;
  }

  v7.receiver = self;
  v7.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v7 dealloc];
}

- (_TtC8Freeform12CRLImageItem)imageInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (CRLImageLayout)imageLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (CRLMaskInfo)maskInfo
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  maskInfo = [imageInfo maskInfo];

  return maskInfo;
}

- (CRLMaskLayout)maskLayout
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];

  return maskLayout;
}

- (void)willBeRemoved
{
  v11.receiver = self;
  v11.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v11 willBeRemoved];
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    [(CRLImageRep *)self p_endEditingMask];
  }

  [(CRLImageRepDrawingHelper *)self->_drawingHelper teardown];
  dispatch_semaphore_wait(self->_updateFromLayoutBlocksLock, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_updateFromLayoutBlocks removeAllObjects];
  dispatch_semaphore_signal(self->_updateFromLayoutBlocksLock);
  if (!self->_downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A6D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A700();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A79C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageRep willBeRemoved]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:242 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];
  }

  imageInfo = [(CRLImageRep *)self imageInfo];
  store = [imageInfo store];
  assetManager = [store assetManager];
  [assetManager removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (id)layoutsForChildReps
{
  v11.receiver = self;
  v11.super_class = CRLImageRep;
  layoutsForChildReps = [(CRLCanvasRep *)&v11 layoutsForChildReps];
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];

  if (maskLayout)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    maskLayout2 = [imageLayout2 maskLayout];
    v12 = maskLayout2;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [layoutsForChildReps crl_arrayByRemovingObjectsIdenticalToObjectsInArray:v8];

    layoutsForChildReps = v9;
  }

  return layoutsForChildReps;
}

- (void)updateFromLayout
{
  v38.receiver = self;
  v38.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v38 updateFromLayout];
  [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    imageInfo = [(CRLImageRep *)self imageInfo];
    maskInfo = [imageInfo maskInfo];

    if (!maskInfo)
    {
      [(CRLImageRep *)self p_endEditingMask];
    }
  }

  else
  {
  }

  canvas = [(CRLCanvasRep *)self canvas];
  if (![canvas isCanvasInteractive])
  {
    goto LABEL_23;
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  isInDynamicOperation = [interactiveCanvasController isInDynamicOperation];

  if ((isInDynamicOperation & 1) == 0)
  {
    canvas = [(CRLImageRep *)self imageLayout];
    maskLayout = [canvas maskLayout];
    memset(&v37, 0, sizeof(v37));
    if (canvas)
    {
      [canvas layoutToImageTransform];
    }

    imageGeometryInRoot = [canvas imageGeometryInRoot];
    geometryInRoot = [maskLayout geometryInRoot];
    t1 = v37;
    v12 = *&self->_lastLayoutToImageTransform.c;
    *&t2.a = *&self->_lastLayoutToImageTransform.a;
    *&t2.c = v12;
    *&t2.tx = *&self->_lastLayoutToImageTransform.tx;
    v13 = CGAffineTransformEqualToTransform(&t1, &t2);
    if (maskLayout)
    {
      if ([imageGeometryInRoot isEqual:self->_lastImageGeometryInRoot])
      {
        v14 = 0;
      }

      else
      {
        v14 = [imageGeometryInRoot differsInMoreThanTranslationFrom:self->_lastImageGeometryInRoot];
      }

      if ([geometryInRoot isEqual:self->_lastMaskGeometryInRoot])
      {
        v15 = 0;
      }

      else
      {
        v15 = [geometryInRoot differsInMoreThanTranslationFrom:self->_lastMaskGeometryInRoot];
      }

      if (v13)
      {
LABEL_19:
        if ((v14 & 1) == 0 && !v15)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      if (v13)
      {
        goto LABEL_19;
      }
    }

    [(CRLStyledRep *)self setNeedsDisplay];
    self->_frameInUnscaledCanvasIsValid = 0;
    [(CRLCanvasRep *)self invalidateKnobPositions];
LABEL_22:
    v16 = [imageGeometryInRoot copy];
    lastImageGeometryInRoot = self->_lastImageGeometryInRoot;
    self->_lastImageGeometryInRoot = v16;

    v18 = [geometryInRoot copy];
    lastMaskGeometryInRoot = self->_lastMaskGeometryInRoot;
    self->_lastMaskGeometryInRoot = v18;

    v20 = *&v37.c;
    *&self->_lastLayoutToImageTransform.a = *&v37.a;
    *&self->_lastLayoutToImageTransform.c = v20;
    *&self->_lastLayoutToImageTransform.tx = *&v37.tx;

LABEL_23:
  }

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout2 isInMaskEditMode];

  if (isInMaskEditMode)
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController2 layerHost];
    imageHUDController = [layerHost imageHUDController];
    [imageHUDController updateControlsForRep:self];

    if ([(CRLCanvasRep *)self isBeingDragged])
    {
      if ([(CRLCanvasRep *)self showKnobsDuringManipulation])
      {
        [(CRLCanvasRep *)self invalidateKnobPositions];
      }
    }
  }

  dispatch_semaphore_wait(self->_updateFromLayoutBlocksLock, 0xFFFFFFFFFFFFFFFFLL);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = self->_updateFromLayoutBlocks;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v31 + 1) + 8 * i) + 16))(*(*(&v31 + 1) + 8 * i));
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v28);
  }

  [(NSMutableArray *)self->_updateFromLayoutBlocks removeAllObjects];
  dispatch_semaphore_signal(self->_updateFromLayoutBlocksLock);
}

- (BOOL)intersectsUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageLayout = [(CRLImageRep *)self imageLayout];
  pathToStroke = [imageLayout pathToStroke];

  if (pathToStroke)
  {
    v10 = [CRLBezierPath bezierPathWithCGPath:pathToStroke];
    layout = [(CRLCanvasRep *)self layout];
    v12 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    [v10 transformUsingAffineTransform:v16];

    v13 = [v10 intersectsRect:1 hasFill:{x, y, width, height}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v15 intersectsUnscaledRect:x, y, width, height];
  }

  return v13;
}

- (BOOL)wantsToDistortWithImagerContext
{
  if (+[UIDevice crl_phoneUI])
  {
    +[UIScreen crl_screenScale];
    if (v3 == 1.0)
    {
      return 1;
    }
  }

  v5.receiver = self;
  v5.super_class = CRLImageRep;
  return [(CRLCanvasRep *)&v5 wantsToDistortWithImagerContext];
}

- (CGRect)boundsForStandardKnobs
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  if (maskEditMode == 3)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    imageGeometry = [imageLayout2 imageGeometry];
    [imageGeometry size];
    v7 = sub_10011ECB4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v22 boundsForStandardKnobs];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)documentModeDidChange
{
  v10.receiver = self;
  v10.super_class = CRLImageRep;
  [(CRLMediaRep *)&v10 documentModeDidChange];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  delegate = [asiOSCVC delegate];

  if (objc_opt_respondsToSelector())
  {
    currentDocumentMode = [delegate currentDocumentMode];
    if (currentDocumentMode)
    {
      imageLayout = [(CRLImageRep *)self imageLayout];
      isInMaskEditMode = [imageLayout isInMaskEditMode];

      if (isInMaskEditMode)
      {
        if (([currentDocumentMode allowsEditMask] & 1) == 0)
        {
          [(CRLImageRep *)self endEditingMask];
        }
      }
    }
  }
}

- (BOOL)allowsSupportedDynamicOperationsToBeRealTime
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  return isInMaskEditMode ^ 1;
}

- (id)visuallySignificantDataSet
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  imageAssetPayload = [imageInfo imageAssetPayload];

  if (imageAssetPayload)
  {
    v4 = [[NSSet alloc] initWithObjects:{imageAssetPayload, 0}];
  }

  else
  {
    v4 = +[NSSet set];
  }

  v5 = v4;

  return v5;
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  onlyCopy = only;
  contentCopy = content;
  v14 = 1.0;
  if (opacity)
  {
    [(CRLStyledRep *)self opacity:effects];
  }

  [(CRLImageRep *)self p_drawInContext:effects withContent:contentCopy strokeDrawOptions:options withOpacity:1 withMask:0 forLayer:onlyCopy forShadow:v14 forHitTest:?];
}

- (id)imageOfStroke:(CGRect *)stroke
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke && [stroke shouldRender])
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    if ([imageLayout pathToStroke])
    {
      +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [imageLayout pathToStroke]);
    }

    else
    {
      imageGeometry = [imageLayout imageGeometry];
      [imageGeometry size];
      v14 = sub_10011ECB4();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      [CRLBezierPath bezierPathWithRect:v14, v16, v18, v20];
    }
    v21 = ;
    [v21 boundsIncludingCRLStroke:stroke];
    x = v22;
    y = v23;
    width = v24;
    height = v25;

    v26 = sub_10050DF80(11, width, height);
    v27 = v26;
    v28 = -x;
    v29 = -0.0;
    if (x < 0.0)
    {
      v28 = -0.0;
    }

    if (y >= 0.0)
    {
      v29 = -y;
    }

    CGContextTranslateCTM(v26, v28, v29);
    LOBYTE(v32) = 0;
    [(CRLImageRep *)self p_drawInContext:v27 withContent:0 strokeDrawOptions:7 withOpacity:0 withMask:0 forLayer:0 forShadow:1.0 forHitTest:v32];
    Image = CGBitmapContextCreateImage(v27);
    v12 = [CRLImage imageWithCGImage:Image];
    CGContextRelease(v27);
    CGImageRelease(Image);
  }

  else
  {
    v12 = 0;
  }

  stroke->origin.x = x;
  stroke->origin.y = y;
  stroke->size.width = width;
  stroke->size.height = height;

  return v12;
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(double)opacity withMask:(BOOL)mask forLayer:(BOOL)layer forShadow:(BOOL)shadow forHitTest:(BOOL)self0
{
  shadowCopy = shadow;
  layerCopy = layer;
  maskCopy = mask;
  optionsCopy = options;
  contentCopy = content;
  styledLayout = [(CRLStyledRep *)self styledLayout];
  isInvisible = [styledLayout isInvisible];

  if (isInvisible)
  {
    return;
  }

  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [v20 BOOLForKey:@"TSDSuppressImageInterpolation"];

  if (layerCopy && v21)
  {
    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
  }

  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isDrawingIntoPDF])
  {
    v59 = 0;
  }

  else
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    v59 = [canvas2 isPrinting] ^ 1;
  }

  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke)
  {
    if (![stroke shouldRender])
    {
      v35 = 0;
      goto LABEL_17;
    }

    v26 = layerCopy;
    canvas3 = [(CRLCanvasRep *)self canvas];
    shouldSuppressBackgrounds = [canvas3 shouldSuppressBackgrounds];

    if (shouldSuppressBackgrounds)
    {
      v29 = [stroke mutableCopy];

      v30 = +[CRLColor blackColor];
      [v29 setColor:v30];

      stroke = v29;
    }

    layerCopy = v26;
    if (stroke && test && ([stroke prefersToApplyToShapeRenderableDuringManipulation] & 1) == 0)
    {
      v63 = [CRLStroke alloc];
      color = [stroke color];
      [stroke width];
      v32 = v31;
      v61 = [stroke cap];
      join = [stroke join];
      pattern = [stroke pattern];
      [stroke miterLimit];
      v35 = [(CRLStroke *)v63 initWithColor:color width:v61 cap:join join:pattern pattern:v32 miterLimit:v34];

      layerCopy = v26;
      stroke = color;
LABEL_17:

      stroke = v35;
    }
  }

  v36 = opacity < 1.0 && contentCopy;
  v64 = optionsCopy & v36;
  if ((optionsCopy & v36) == 1 && (CGContextSaveGState(context), CGContextSetAlpha(context, opacity), stroke))
  {
    CGContextBeginTransparencyLayer(context, 0);
    v62 = 1;
  }

  else
  {
    v62 = 0;
  }

  CGContextSaveGState(context);
  imageLayout = [(CRLImageRep *)self imageLayout];
  [(CRLImageRepDrawingHelper *)self->_drawingHelper imageRectInContext:context];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (contentCopy)
  {
    maskLayout = [imageLayout maskLayout];
    if (maskLayout && maskCopy)
    {
      memset(&transform, 0, sizeof(transform));
      if (imageLayout)
      {
        [imageLayout layoutToMaskTransform];
      }

      [maskLayout pathBounds];
      v65 = transform;
      CGAffineTransformTranslate(&v66, &v65, -v47, -v48);
      transform = v66;
      v49 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [maskLayout path]);
      v66 = transform;
      [v49 transformUsingAffineTransform:&v66];
      if (v59)
      {
        [v49 aliasedPathInContext:context effectiveStrokeWidth:0.0];
        v60 = optionsCopy;
        optionsCopy = shadowCopy;
        v51 = v50 = layerCopy;

        v49 = v51;
        layerCopy = v50;
        shadowCopy = optionsCopy;
        LOBYTE(optionsCopy) = v60;
      }

      CGContextAddPath(context, [v49 CGPath]);
      CGContextClip(context);
    }

    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(context, &transform);
    CGContextSaveGState(context);
    [(CRLImageRepDrawingHelper *)self->_drawingHelper drawInContext:context forLayer:layerCopy forShadowOrHitTest:shadowCopy | test];
    CGContextRestoreGState(context);
  }

  CGContextRestoreGState(context);
  if ((optionsCopy & 1) == 0 || !stroke || layerCopy && [(CRLImageRep *)self directlyManagesLayerContent])
  {
    goto LABEL_54;
  }

  CGContextSaveGState(context);
  if (![imageLayout pathToStroke])
  {
    if (imageLayout)
    {
      [imageLayout layoutToImageTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(context, &transform);
    pathToStroke = [imageLayout pathToStroke];
    if (!pathToStroke)
    {
      [stroke paintRect:context inContext:{v39, v41, v43, v45}];
      goto LABEL_53;
    }

    v55 = pathToStroke;
    v54 = stroke;
    goto LABEL_52;
  }

  pathToStroke2 = [imageLayout pathToStroke];
  if (pathToStroke2)
  {
    v53 = pathToStroke2;
    if (imageLayout)
    {
      [imageLayout layoutToMaskTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(context, &transform);
    v54 = stroke;
    v55 = v53;
LABEL_52:
    [v54 paintPath:v55 inContext:context];
  }

LABEL_53:
  CGContextRestoreGState(context);
LABEL_54:
  if (v62)
  {
    CGContextEndTransparencyLayer(context);
  }

  if (v64)
  {
    CGContextRestoreGState(context);
  }
}

- (CGRect)frameInUnscaledCanvas
{
  v25.receiver = self;
  v25.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v25 frameInUnscaledCanvas];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];
  if (maskLayout)
  {
    v13 = maskLayout;
    pathToStroke = [imageLayout pathToStroke];

    if (pathToStroke)
    {
      if (!self->_frameInUnscaledCanvasIsValid)
      {
        layout = [(CRLCanvasRep *)self layout];
        stroke = [layout stroke];

        memset(&v24, 0, sizeof(v24));
        if (imageLayout)
        {
          [imageLayout layoutToMaskTransform];
          [imageLayout transformInRoot];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
          memset(&v22, 0, sizeof(v22));
        }

        CGAffineTransformConcat(&v24, &t1, &v22);
        v17 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [imageLayout pathToStroke]);
        t1 = v24;
        [v17 transformUsingAffineTransform:&t1];
        [v17 boundsIncludingCRLStroke:stroke];
        self->_frameInUnscaledCanvasRelativeToSuper = CGRectOffset(v26, -x, -y);
        self->_frameInUnscaledCanvasIsValid = 1;
      }

      v27 = CGRectOffset(self->_frameInUnscaledCanvasRelativeToSuper, x, y);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)clipRect
{
  v2.receiver = self;
  v2.super_class = CRLImageRep;
  [(CRLStyledRep *)&v2 clipRect];
  return CGRectInset(v3, -1.0, -1.0);
}

- (id)imageDrawingHelperImageData:(id)data
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  imageAssetPayload = [imageInfo imageAssetPayload];

  return imageAssetPayload;
}

- (id)imageDrawingHelperThumbnailImageData:(id)data
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  thumbnailAssetPayload = [imageInfo thumbnailAssetPayload];

  return thumbnailAssetPayload;
}

- (CGRect)imageDrawingHelperImageRect:(id)rect
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  imageGeometry = [imageLayout imageGeometry];
  [imageGeometry size];
  v5 = sub_10011ECB4();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  imageGeometryInRoot = [imageLayout imageGeometryInRoot];
  v6 = imageGeometryInRoot;
  if (imageGeometryInRoot)
  {
    [imageGeometryInRoot transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)imageDrawingHelperImageHasAlpha:(id)alpha
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  hasAlpha = [imageLayout hasAlpha];

  return hasAlpha;
}

- (CGPath)imageDrawingHelper:(id)helper newMaskPathForSizedImageWithSize:(CGSize)size orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  imageLayout = [(CRLImageRep *)self imageLayout];
  height = [CRLImageRep p_newPathToBakeIntoSizedImageForSize:imageLayout withImageLayout:orientation orientation:width, height];

  return height;
}

- (BOOL)imageDrawingHelperShouldGenerateSizedImageSynchronously:(id)synchronously
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  shadow = [imageInfo shadow];
  if (shadow)
  {
    imageInfo2 = [(CRLImageRep *)self imageInfo];
    shadow2 = [imageInfo2 shadow];
    v8 = [shadow2 isEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  if (+[NSThread isMainThread])
  {
    return 0;
  }

  else
  {
    return [(CRLImageRep *)self directlyManagesLayerContent]& v8 ^ 1;
  }
}

- (BOOL)imageDrawingHelperShouldRetryGeneratingSizedImageLater:(id)later
{
  v3 = +[_TtC8Freeform25CRLApplicationCoordinator shared];
  isActivating = [v3 isActivating];

  return isActivating;
}

- (void)imageDrawingHelper:(id)helper didGenerateSizedImageSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v6 = +[NSThread isMainThread];
  if (synchronouslyCopy)
  {
    if (v6)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136A890();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136A8A4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136A934();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLImageRep imageDrawingHelper:didGenerateSizedImageSynchronously:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:672 isFatal:0 description:"wrong thread"];
    }

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController canvasInvalidatedForRep:self];
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136A7C4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136A7D8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136A868();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLImageRep imageDrawingHelper:didGenerateSizedImageSynchronously:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:681 isFatal:0 description:"This operation must only be performed on the main thread."];
    }

    [(CRLImageRep *)self p_injectSizedImageIntoLayerContentsIfReady];
  }
}

- (CGRect)imageDrawingHelperRectForCenteringDownloadProgressPlaceholderImage:(id)image
{
  [(CRLImageRep *)self boundsForStandardKnobs];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageLayout = [(CRLImageRep *)self imageLayout];
  v13 = imageLayout;
  if (imageLayout)
  {
    [imageLayout layoutToImageTransform];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  CGAffineTransformInvert(&v23, &v22);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v25 = CGRectApplyAffineTransform(v24, &v23);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)p_validatedImageProvider
{
  v3 = +[CRLImageProviderPool sharedPool];
  imageDataForDrawing = [(CRLImageRepDrawingHelper *)self->_drawingHelper imageDataForDrawing];
  v5 = [v3 providerForAsset:imageDataForDrawing shouldValidate:1];

  return v5;
}

- (id)p_validatedBitmapImageProvider
{
  v3 = objc_opt_class();
  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  v5 = sub_100014370(v3, p_validatedImageProvider);

  return v5;
}

- (BOOL)p_drawsInOneStep
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  stroke = [imageInfo stroke];
  shouldRender = [stroke shouldRender];

  maskInfo = [imageInfo maskInfo];

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout hasAlpha])
  {
    drawsBitmap = [(CRLImageRepDrawingHelper *)self->_drawingHelper drawsBitmap];
  }

  else
  {
    drawsBitmap = 1;
  }

  if (shouldRender)
  {
    v9 = 0;
  }

  else
  {
    v9 = (maskInfo == 0) & drawsBitmap;
  }

  return v9;
}

- (BOOL)shouldShowShadow
{
  v10.receiver = self;
  v10.super_class = CRLImageRep;
  shouldShowShadow = [(CRLStyledRep *)&v10 shouldShowShadow];
  if (shouldShowShadow)
  {
    if ([(CRLCanvasRep *)self isBeingDragged])
    {
      isBeingFreeTransformDragged = 1;
    }

    else
    {
      isBeingFreeTransformDragged = [(CRLCanvasRep *)self isBeingFreeTransformDragged];
    }

    imageLayout = [(CRLImageRep *)self imageLayout];
    isInMaskEditMode = [imageLayout isInMaskEditMode];

    if (isInMaskEditMode && (isBeingFreeTransformDragged & 1) != 0)
    {
      LOBYTE(shouldShowShadow) = 0;
    }

    else
    {
      canvas = [(CRLCanvasRep *)self canvas];
      shouldSuppressBackgrounds = [canvas shouldSuppressBackgrounds];

      LOBYTE(shouldShowShadow) = shouldSuppressBackgrounds ^ 1;
    }
  }

  return shouldShowShadow;
}

- (void)highlightImage
{
  self->_showImageHighlight = 1;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController canvasInvalidatedForRep:self];
}

- (void)unhighlightImage
{
  self->_showImageHighlight = 0;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController canvasInvalidatedForRep:self];
}

- (void)maskWithHUD:(BOOL)d
{
  dCopy = d;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  [(CRLImageRep *)self p_setDefaultMaskWithActionString:v6];

  [(CRLImageRep *)self editMaskWithHUD:dCopy];
}

- (int64_t)maskEditMode
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  return maskEditMode;
}

- (BOOL)isMaskScaleFromLayout
{
  maskLayout = [(CRLImageRep *)self maskLayout];
  v3 = maskLayout != 0;

  return v3;
}

- (double)maskScale
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  maskLayout = [(CRLImageRep *)self maskLayout];

  if (maskLayout)
  {
    [(CRLImageRep *)self maskLayout];
  }

  else
  {
    [imageInfo defaultMaskInfo];
  }
  v5 = ;
  geometry = [v5 geometry];
  [geometry size];
  v8 = v7;
  v10 = v9;

  geometry2 = [imageInfo geometry];
  [geometry2 size];
  v13 = v12;
  v15 = v14;

  v16 = v13 / v8;
  v17 = v15 / v10;
  v18 = fmaxf(v16, v17);

  return v18;
}

- (void)maskScaleLimitsReturningMin:(double *)min max:(double *)max
{
  [(CRLImageRep *)self maskScale];
  v8 = v7;
  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  [p_validatedImageProvider naturalSize];
  v12 = sub_10011F340(v10, v11, 8.0);
  v14 = v13;

  imageInfo = [(CRLImageRep *)self imageInfo];
  geometry = [imageInfo geometry];
  [geometry size];
  v18 = v17;
  v20 = v19;

  v21 = v8 * (v12 / v18);
  v22 = v8 * (v14 / v20);
  v23 = fminf(v21, v22);
  v24 = fminf(v23, 3.0);
  v25 = v8;
  v26 = fminf(v25, 1.0);
  if (v24 == v23)
  {
    v26 = fminf(v24 / 3.0, v26);
  }

  if (min)
  {
    *min = v26;
  }

  if (max)
  {
    *max = v24;
  }
}

- (id)newMaskResizer
{
  v3 = [CRLImageMaskResizer alloc];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [(CRLImageMaskResizer *)v3 initWithInteractiveCanvasController:interactiveCanvasController];

  return v5;
}

- (void)beginDynamicallyChangingMaskScale
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if ((isInMaskEditMode & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A95C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A970();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AA00();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageRep beginDynamicallyChangingMaskScale]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:829 isFatal:0 description:"wrong mask mode"];
  }

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  [imageLayout2 maskModeScaleDidBegin];

  [(CRLCanvasRep *)self setShowKnobsDuringManipulation:1];
  v10.receiver = self;
  v10.super_class = CRLImageRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v10 dynamicResizeDidBegin];
}

- (void)dynamicallySetMaskScale:(double)scale
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if ((isInMaskEditMode & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136AA28();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136AA3C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AACC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageRep dynamicallySetMaskScale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:839 isFatal:0 description:"wrong mask mode"];
  }

  if (scale > 0.0)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    maskEditMode = [imageLayout2 maskEditMode];

    if (maskEditMode == 3)
    {
      [(CRLCanvasRep *)self invalidateKnobPositions];
    }
  }
}

- (void)endDynamicallyChangingMaskScale:(double)scale
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if ((isInMaskEditMode & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136AAF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136AB08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AB98();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageRep endDynamicallyChangingMaskScale:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:849 isFatal:0 description:"wrong mask mode"];
  }

  v10.receiver = self;
  v10.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v10 dynamicResizeDidEndWithTracker:0];
  imageLayout2 = [(CRLImageRep *)self imageLayout];
  [imageLayout2 maskModeScaleDidEnd];

  [(CRLCanvasRep *)self setShowKnobsDuringManipulation:0];
}

- (void)endEditingMask
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  if (!maskEditMode)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136ABC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136ABD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AC64();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageRep endEditingMask]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:857 isFatal:0 description:"wrong mask mode"];
  }

  [(CRLImageRep *)self p_endEditingMask];
}

- (void)p_enterMaskModeIfNecessaryWithHUD:(BOOL)d
{
  dCopy = d;
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if ((isInMaskEditMode & 1) == 0)
  {
    imageInfo = [(CRLImageRep *)self imageInfo];
    maskInfo = [imageInfo maskInfo];

    if (maskInfo)
    {

      [(CRLImageRep *)self editMaskWithHUD:dCopy];
    }

    else
    {

      [(CRLImageRep *)self maskWithHUD:dCopy];
    }
  }
}

- (void)editMaskWithHUD:(BOOL)d
{
  dCopy = d;
  if ([(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError])
  {
    return;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {

LABEL_5:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136AC8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136ACA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AD30();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageRep editMaskWithHUD:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:881 isFatal:0 description:"attempting to edit an image already in mask edit mode, or without a mask"];

    goto LABEL_14;
  }

  imageInfo = [(CRLImageRep *)self imageInfo];
  maskInfo = [imageInfo maskInfo];

  if (!maskInfo)
  {
    goto LABEL_5;
  }

LABEL_14:
  [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImageIfItHasBakedMask];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  imageInfo2 = [(CRLImageRep *)self imageInfo];
  v14 = [canvasEditor selectionPathWithInfo:imageInfo2];
  editorController = [interactiveCanvasController editorController];
  [editorController setSelectionPath:v14];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  imageLayout2 = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout2 maskLayout];

  if (!maskLayout)
  {
    [interactiveCanvasController layoutIfNeeded];
  }

  imageLayout3 = [(CRLImageRep *)self imageLayout];
  [imageLayout3 beginEditingMaskInMaskEditMode:2];

  if (dCopy)
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController2 layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    [miniFormatterPresenter dismissMiniFormatter];

    layerHost2 = [interactiveCanvasController layerHost];
    imageHUDController = [layerHost2 imageHUDController];
    [imageHUDController showHUDForRep:self];
  }

  [(CRLImageRep *)self p_setUpMaskModeUI];
  +[CATransaction commit];
}

- (void)p_selectionPathDidChange:(id)change
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];

  if ([infosForCurrentSelectionPath count] != 1 || (objc_msgSend(infosForCurrentSelectionPath, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    isInMaskEditMode = [imageLayout isInMaskEditMode];

    if (isInMaskEditMode)
    {
      [(CRLImageRep *)self endEditingMask];
    }
  }
}

- (void)becameSelected
{
  v7.receiver = self;
  v7.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v7 becameSelected];
  os_unfair_lock_lock(&self->_backgroundRemovalLock);
  autoBackgroundRemovalState = self->_autoBackgroundRemovalState;
  image = [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData image];
  os_unfair_lock_unlock(&self->_backgroundRemovalLock);
  if (autoBackgroundRemovalState != 2)
  {
    imageInfo = [(CRLImageRep *)self imageInfo];
    isBackgroundRemoved = [imageInfo isBackgroundRemoved];

    if ((isBackgroundRemoved & 1) == 0 && !image)
    {
      [(CRLImageRep *)self p_invalidateCachedRemoveBackgroundImage];
    }
  }
}

- (void)becameNotSelected
{
  v5.receiver = self;
  v5.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v5 becameNotSelected];
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    [(CRLImageRep *)self p_endEditingMask];
  }
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  x = point.x;
  y = point.y;
  v66.receiver = self;
  v66.super_class = CRLImageRep;
  v6 = [CRLCanvasRep containsPoint:"containsPoint:withPrecision:" withPrecision:?];
  v7 = x;
  v8 = y;
  v9 = v6;
  if (v6)
  {
    v10 = [(CRLCanvasRep *)self canvas:x];
    if ([v10 isCanvasInteractive])
    {
      [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:x, y];
      v11 = [(CRLImageRep *)self replaceButtonContainsPoint:?];

      v7 = x;
      v8 = y;
      if (v11)
      {
        LOBYTE(isInMaskEditMode) = 1;
        return isInMaskEditMode & 1;
      }
    }

    else
    {

      v7 = x;
      v8 = y;
    }
  }

  v65 = 0;
  if ([(CRLImageRep *)self p_hitCacheGetCachedValue:&v65 forPoint:v7, v8])
  {
    LOBYTE(isInMaskEditMode) = v65;
  }

  else
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    maskLayout = [imageLayout maskLayout];
    if (maskLayout && (v15 = maskLayout, v16 = [imageLayout maskIntersectsImage], v15, (v9 & (v16 ^ 1) & 1) != 0))
    {
      isInMaskEditMode = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_50;
      }

      imageLayout2 = [(CRLImageRep *)self imageLayout];
      isInMaskEditMode = [imageLayout2 isInMaskEditMode];

      if (isInMaskEditMode)
      {
        if (imageLayout)
        {
          [imageLayout layoutToImageTransform];
        }

        else
        {
          memset(&v63, 0, sizeof(v63));
        }

        CGAffineTransformInvert(&v64, &v63);
        pointa = vaddq_f64(*&v64.tx, vmlaq_n_f64(vmulq_n_f64(*&v64.c, y), *&v64.a, x));
        imageGeometry = [imageLayout imageGeometry];
        [imageGeometry size];
        v68.origin.x = sub_10011ECB4();
        isInMaskEditMode = CGRectContainsPoint(v68, pointa);

        if (isInMaskEditMode)
        {
LABEL_50:
          if (qword_101A34E90 != -1)
          {
            sub_10136AD58();
          }

          CGContextSaveGState(qword_101A34E88);
          v67.origin.x = 0.0;
          v67.origin.y = 0.0;
          v67.size.width = 1.0;
          v67.size.height = 1.0;
          CGContextClearRect(qword_101A34E88, v67);
          CGContextTranslateCTM(qword_101A34E88, -x, -y);
          v17 = qword_101A34E88;
          imageLayout3 = [(CRLImageRep *)self imageLayout];
          isInMaskEditMode = 1;
          LOBYTE(v54) = 1;
          -[CRLImageRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:](self, "p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:", v17, 1, 7, [imageLayout3 isInMaskEditMode] ^ 1, 0, 0, 1.0, v54);

          CGContextRestoreGState(qword_101A34E88);
          if (!*qword_101A34E80)
          {
            v19 = &unk_101466738;
            if (!precisionCopy)
            {
              v19 = &unk_101466730;
            }

            v20 = *v19;
            canvas = [(CRLCanvasRep *)self canvas];
            [canvas viewScale];
            v23 = v20 / v22;

            v24 = ceil(v23 + v23);
            v25 = sub_10050DF80(19, v24, v24);
            Data = CGBitmapContextGetData(v25);
            CGContextSaveGState(v25);
            CGContextSetInterpolationQuality(v25, kCGInterpolationNone);
            CGContextTranslateCTM(v25, v23, v23);
            CGContextTranslateCTM(v25, -x, -y);
            imageLayout4 = [(CRLImageRep *)self imageLayout];
            LOBYTE(v55) = 1;
            -[CRLImageRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:](self, "p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:", v25, 1, 7, [imageLayout4 isInMaskEditMode] ^ 1, 0, 0, 1.0, v55);

            CGContextRestoreGState(v25);
            Width = CGBitmapContextGetWidth(v25);
            Height = CGBitmapContextGetHeight(v25);
            BytesPerRow = CGBitmapContextGetBytesPerRow(v25);
            BitsPerPixel = CGBitmapContextGetBitsPerPixel(v25);
            if (Height)
            {
              v56 = v25;
              v57 = imageLayout;
              v32 = 0;
              v33 = vcvtpd_u64_f64(vcvtd_n_f64_u64(BitsPerPixel, 3uLL));
              v34 = BytesPerRow * Height;
              v35 = v33;
              v58 = BytesPerRow;
              point = Height;
              while (!Width)
              {
LABEL_25:
                ++v32;
                Data += v58;
                v35 += v58;
                if (v32 == point)
                {
                  isInMaskEditMode = 0;
                  goto LABEL_31;
                }
              }

              v36 = 0;
              v37 = v35;
              v38 = Data;
              while (1)
              {
                if (sub_10011F068(v23, v23, v36, v32) < v23 * v23)
                {
                  if (v37 >= v34)
                  {
                    +[CRLAssertionHandler _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_10136AD80();
                    }

                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      sub_10136ADA8();
                    }

                    if (qword_101AD5A10 != -1)
                    {
                      sub_10136AE38();
                    }

                    v42 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      sub_10130DA10(v42);
                    }

                    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Should not try to read outside the context's memory.", v43, v44, v45, v46, v47, v48, v49, "[CRLImageRep containsPoint:withPrecision:]");
                    v50 = [NSString stringWithUTF8String:"[CRLImageRep containsPoint:withPrecision:]"];
                    v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
                    [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:1051 isFatal:1 description:"Should not try to read outside the context's memory."];

                    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v52, v53);
                    abort();
                  }

                  if (*v38)
                  {
                    break;
                  }
                }

                ++v36;
                v38 += v33;
                v37 += v33;
                if (Width == v36)
                {
                  goto LABEL_25;
                }
              }

              isInMaskEditMode = 1;
LABEL_31:
              v25 = v56;
              imageLayout = v57;
            }

            else
            {
              isInMaskEditMode = 0;
            }

            CGContextRelease(v25);
          }
        }
      }
    }

    [(CRLImageRep *)self p_hitCacheSetCachedValue:isInMaskEditMode forPoint:x, y];
  }

  return isInMaskEditMode & 1;
}

- (BOOL)p_allowedToEditMask
{
  if ([(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError])
  {
    return 0;
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  allowedToEditMask = [interactiveCanvasController allowedToEditMask];

  return allowedToEditMask;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  v5 = [(CRLImageRep *)self imageLayout:type];
  isInMaskEditMode = [v5 isInMaskEditMode];

  if ((isInMaskEditMode & 1) == 0)
  {
    [(CRLImageRep *)self enterPreviewMode];
  }

  return isInMaskEditMode ^ 1;
}

- (void)p_handleImageMask
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if ((documentIsSharedReadOnly & 1) == 0)
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    isInMaskEditMode = [imageLayout isInMaskEditMode];

    if (isInMaskEditMode)
    {
      imageLayout2 = [(CRLImageRep *)self imageLayout];
      isInMaskEditMode2 = [imageLayout2 isInMaskEditMode];

      if (isInMaskEditMode2)
      {

        [(CRLImageRep *)self p_endEditingMask];
      }
    }

    else if ([(CRLImageRep *)self p_allowedToEditMask])
    {

      [(CRLImageRep *)self p_enterMaskModeIfNecessaryWithHUD:1];
    }
  }
}

- (BOOL)shouldShowSelectionHighlight
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    shouldShowSelectionHighlight = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLImageRep;
    shouldShowSelectionHighlight = [(CRLStyledRep *)&v6 shouldShowSelectionHighlight];
  }

  return shouldShowSelectionHighlight;
}

- (id)pathSourceForSelectionHighlightBehavior
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];
  pathSource = [maskLayout pathSource];

  return pathSource;
}

- (void)processChanges:(id)changes
{
  changesCopy = changes;
  [(CRLImageRep *)self p_updateDirectlyManagesLayerContentForRenderable:0];
  v5.receiver = self;
  v5.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v5 processChanges:changesCopy];
}

- (void)processChangedProperty:(unint64_t)property
{
  v16.receiver = self;
  v16.super_class = CRLImageRep;
  [(CRLMediaRep *)&v16 processChangedProperty:?];
  if (property <= 15)
  {
    if (property == 7)
    {
LABEL_17:
      drawingHelper = self->_drawingHelper;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1003F3D64;
      v15[3] = &unk_10185F6A8;
      v15[4] = self;
      [(CRLImageRepDrawingHelper *)drawingHelper invalidateSizedImageIfNeededForBakedMaskPathFromBlock:v15];
LABEL_18:
      [(CRLStyledRep *)self setNeedsDisplay];
      self->_frameInUnscaledCanvasIsValid = 0;
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas canvasInvalidatedForRep:self];

      goto LABEL_19;
    }

    if (property == 12)
    {
      imageLayout = [(CRLImageRep *)self imageLayout];
      isInMaskEditMode = [imageLayout isInMaskEditMode];

      if (isInMaskEditMode)
      {
        [(CRLImageRep *)self p_endEditingMask];
      }
    }
  }

  else
  {
    switch(property)
    {
      case 0x28uLL:
        goto LABEL_5;
      case 0x13uLL:
        [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
        [(CRLImageRep *)self p_listenForAssetChangesIfAppropriate];
        imageLayout2 = [(CRLImageRep *)self imageLayout];
        if ([imageLayout2 isInMaskEditMode])
        {
          drawsError = [(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError];

          if (drawsError)
          {
            [(CRLImageRep *)self p_endEditingMask];
          }
        }

        else
        {
        }

        goto LABEL_18;
      case 0x10uLL:
LABEL_5:
        [(CRLImageRep *)self p_disposeStrokeLayer];
        [(CRLCanvasRep *)self invalidateKnobs];
        if (property == 40)
        {
          imageLayout3 = [(CRLImageRep *)self imageLayout];
          [imageLayout3 invalidateAlignmentFrame];
        }

        imageLayout4 = [(CRLImageRep *)self imageLayout];
        if (![imageLayout4 maskEditMode])
        {
          imageInfo = [(CRLImageRep *)self imageInfo];
          maskInfo = [imageInfo maskInfo];

          if (!maskInfo)
          {
            goto LABEL_11;
          }

          imageLayout4 = [(CRLImageRep *)self imageLayout];
          [imageLayout4 maskWasApplied];
        }

LABEL_11:
        if (property != 40)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
    }
  }

LABEL_19:
  [(CRLImageRep *)self p_updateHUD];
  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  v7.receiver = self;
  v7.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v7 layoutInRootChangedFrom:from to:to translatedOnly:?];
  if (!only)
  {
    self->_frameInUnscaledCanvasIsValid = 0;
  }
}

- (void)documentEditabilityDidChange
{
  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 documentEditabilityDidChange];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![interactiveCanvasController editingDisabled])
  {
    goto LABEL_4;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    [(CRLImageRep *)self p_endEditingMask];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    imageHUDController = [layerHost imageHUDController];
    [imageHUDController closeHUDWithAnimation:0];

LABEL_4:
  }

  [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
}

- (id)overlayRenderables
{
  v29.receiver = self;
  v29.super_class = CRLImageRep;
  overlayRenderables = [(CRLCanvasRep *)&v29 overlayRenderables];
  v4 = [NSMutableArray arrayWithArray:overlayRenderables];

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (self->_showImageHighlight)
  {
    v6 = +[CRLCanvasShapeRenderable renderable];
    v7 = sub_1000CCEA0(0.458, 0.697, 0.916, 0.53);
    [v6 setFillColor:v7];
    CGColorRelease(v7);
    [v6 setLineWidth:1.0];
    [v6 setStrokeColor:0];
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v10 = v9;

    [(CRLImageRep *)self boundsForStandardKnobs];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memset(&v28, 0, sizeof(v28));
    layout = [(CRLCanvasRep *)self layout];
    v20 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    CGAffineTransformMakeScale(&t2, v10, v10);
    v25 = v28;
    CGAffineTransformConcat(&v27, &v25, &t2);
    v28 = v27;
    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 contentsScale];
    v23 = sub_10018F420(&v28.a, v12, v14, v16, v18, 1.0, v22);

    [v6 setPath:v23];
    CGPathRelease(v23);
    [v6 setDelegate:interactiveCanvasController];
    [v4 addObject:v6];
  }

  return v4;
}

- (BOOL)hitRepChrome:(CGPoint)chrome
{
  v4.receiver = self;
  v4.super_class = CRLImageRep;
  return [(CRLCanvasRep *)&v4 hitRepChrome:chrome.x, chrome.y];
}

- (CGPoint)positionOfMediaReplaceKnobForBounds:(CGRect)bounds viewScale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinX = CGRectGetMinX(bounds);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetMaxY(v20);
  v13 = sub_1004A48FC();
  v14 = MaxX - 36.0 / scale;
  if (v13)
  {
    v15 = MaxY;
  }

  else
  {
    v15 = v12;
  }

  if (v13)
  {
    v14 = 36.0 / scale + MinX;
  }

  v16 = v15 - 36.0 / scale;
  result.y = v16;
  result.x = v14;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v39.receiver = self;
  v39.super_class = CRLImageRep;
  knobCopy = knob;
  [(CRLCanvasRep *)&v39 positionOfStandardKnob:knobCopy forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout maskEditMode] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  layout = [(CRLCanvasRep *)self layout];
  if ([layout layoutState] != 4)
  {

    goto LABEL_6;
  }

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  isInMaskScaleMode = [imageLayout2 isInMaskScaleMode];

  if (isInMaskScaleMode)
  {
LABEL_6:
    imageLayout3 = [(CRLImageRep *)self imageLayout];
    imageLayout = imageLayout3;
    if (imageLayout3)
    {
      [imageLayout3 layoutToImageTransform];
      v20 = v33;
      v19 = v34;
      v22 = v35;
      v21 = v36;
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v23 = 0.0;
      v21 = 0.0;
      v19 = 0.0;
      v24 = 0.0;
      v22 = 0.0;
      v20 = 0.0;
    }

    v25 = v13 * v21 + v19 * v11;
    v11 = v24 + v13 * v22 + v20 * v11;
    v13 = v23 + v25;
    goto LABEL_10;
  }

LABEL_11:
  p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];

  if (p_mediaReplaceButtonKnob == knobCopy)
  {
    if (![(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
    {
      [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
    }

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [(CRLImageRep *)self positionOfMediaReplaceKnobForBounds:x viewScale:y, width, height, v28];
    v11 = v29;
    v13 = v30;
  }

  v31 = v11;
  v32 = v13;
  result.y = v32;
  result.x = v31;
  return result;
}

- (CGRect)boundsForHighlightLayer
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  if (maskEditMode == 3)
  {
    selfCopy = self;
    v5 = &selRef_boundsForStandardKnobs;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_boundsForHighlightLayer;
    v6 = &selfCopy2;
  }

  v6[1] = CRLImageRep;
  objc_msgSendSuper2(v6, *v5, selfCopy2);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGAffineTransform)transformForHighlightLayer
{
  currentKnobTracker = [(CRLCanvasRep *)self currentKnobTracker];
  if (currentKnobTracker && (v6 = currentKnobTracker, -[CRLImageRep imageLayout](self, "imageLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 maskEditMode], v7, v6, v8 != 3))
  {
    currentKnobTracker2 = [(CRLCanvasRep *)self currentKnobTracker];
    if (currentKnobTracker2)
    {
      v11 = currentKnobTracker2;
      [currentKnobTracker2 transformInRootForStandardKnobs];
      currentKnobTracker2 = v11;
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLImageRep;
    return [(CGAffineTransform *)&v12 transformForHighlightLayer];
  }

  return result;
}

- (BOOL)shouldAllowReplacementFromPaste
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    shouldAllowReplacementFromPaste = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLImageRep;
    shouldAllowReplacementFromPaste = [(CRLMediaRep *)&v6 shouldAllowReplacementFromPaste];
  }

  return shouldAllowReplacementFromPaste;
}

- (BOOL)canPasteDataFromPhysicalKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v5 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v7 = sub_100014370(v5, info);

  imageAssetPayload = [v7 imageAssetPayload];

  return imageAssetPayload != keyboardCopy;
}

- (id)commandForAcceptingPasteWithImageInfo:(id)info outSelectionBehavior:(id *)behavior
{
  infoCopy = info;
  imageInfo = [(CRLImageRep *)self imageInfo];
  v8 = +[NSMutableArray array];
  maskInfo = [imageInfo maskInfo];

  if (!maskInfo)
  {
    v10 = [_TtC8Freeform17CRLCommandSetMask alloc];
    defaultMaskInfo = [imageInfo defaultMaskInfo];
    v12 = [(CRLCommandSetMask *)v10 initWithImageItem:imageInfo maskInfo:defaultMaskInfo];

    [v8 addObject:v12];
  }

  v13 = [_TtC8Freeform22CRLCommandReplaceImage alloc];
  imageAssetPayload = [infoCopy imageAssetPayload];
  thumbnailAssetPayload = [infoCopy thumbnailAssetPayload];

  v16 = [(CRLCommandReplaceImage *)v13 initWithImageItem:imageInfo imageData:imageAssetPayload thumbnailData:thumbnailAssetPayload];
  [v8 addObject:v16];

  if ([v8 count])
  {
    v17 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v8];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];

    v20 = [editorController mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLCanvasEditor];
    if (behavior)
    {
      v21 = [CRLCanvasCommandSelectionBehavior alloc];
      selectionPath = [editorController selectionPath];
      *behavior = [(CRLCanvasCommandSelectionBehavior *)v21 initWithCanvasEditor:v20 type:2 selectionPath:selectionPath selectionFlags:4];
    }
  }

  else
  {
    v17 = 0;
    if (behavior)
    {
      *behavior = 0;
    }
  }

  return v17;
}

- (BOOL)p_isResizingImageInMaskEditMode
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout layoutState] == 4)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    v5 = [imageLayout2 maskEditMode] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)p_isResizingMaskInMaskEditMode
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout layoutState] == 4)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    v5 = [imageLayout2 maskEditMode] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)boundsForCollaboratorCursorRenderable
{
  v33.receiver = self;
  v33.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v33 boundsForCollaboratorCursorRenderable];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(CRLImageRep *)self p_isResizingMaskInMaskEditMode])
  {
    [(CRLCanvasRep *)self trackingBoundsForStandardKnobs];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  else
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    isInMaskEditMode = [imageLayout isInMaskEditMode];

    if (isInMaskEditMode)
    {
      maskLayout = [(CRLImageRep *)self maskLayout];
      [maskLayout boundsForStandardKnobs];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      imageLayout2 = [(CRLImageRep *)self imageLayout];
      v27 = imageLayout2;
      if (imageLayout2)
      {
        [imageLayout2 layoutToMaskTransform];
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
      }

      v34.origin.x = v19;
      v34.origin.y = v21;
      v34.size.width = v23;
      v34.size.height = v25;
      v35 = CGRectApplyAffineTransform(v34, &v32);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
    }
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGAffineTransform)transformForCollaboratorCursorRenderable
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v11.receiver = self;
  v11.super_class = CRLImageRep;
  [(CGAffineTransform *)&v11 transformForCollaboratorCursorRenderable];
  result = [(CRLImageRep *)self p_isResizingImageInMaskEditMode];
  if (result)
  {
    layout = [(CRLCanvasRep *)self layout];
    v7 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    *&retstr->a = v8;
    *&retstr->c = v9;
    *&retstr->tx = v10;
  }

  return result;
}

- (BOOL)shouldShowDragHUD
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  return isInMaskEditMode ^ 1;
}

- (void)dynamicDragDidBegin
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  [imageLayout validate];

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout2 isInMaskEditMode];

  if (isInMaskEditMode)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    dynamicOperationController = [interactiveCanvasController dynamicOperationController];
    [dynamicOperationController invalidateGuides];
  }

  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 dynamicDragDidBegin];
}

- (BOOL)providesGuidesWhileAligning
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (!isInMaskEditMode)
  {
    v10.receiver = self;
    v10.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v10 providesGuidesWhileAligning];
  }

  if ([(CRLCanvasRep *)self isBeingResized])
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    imageGeometryInRoot = [imageLayout2 imageGeometryInRoot];
    v7 = imageGeometryInRoot;
    if (imageGeometryInRoot)
    {
      [imageGeometryInRoot transform];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    LOBYTE(v8) = sub_100139B5C(v11);

    return v8;
  }

  return [(CRLCanvasRep *)self isBeingDragged];
}

- (BOOL)exclusivelyProvidesGuidesWhileAligning
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    isInDynamicOperation = [(CRLCanvasRep *)self isInDynamicOperation];
  }

  else
  {
    isInDynamicOperation = 0;
  }

  return isInDynamicOperation;
}

- (id)actionStringForDrag
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    v5 = +[NSBundle mainBundle];
    actionStringForDrag = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    actionStringForDrag = [(CRLCanvasRep *)&v8 actionStringForDrag];
  }

  return actionStringForDrag;
}

- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditModeForDragging = [imageLayout maskEditModeForDragging];

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  v9 = imageLayout2;
  if (maskEditModeForDragging == 3)
  {
    imageGeometry = [imageLayout2 imageGeometry];
    [imageGeometry size];
    v11 = sub_10011ECB4();
    v13 = v12;
    v15 = v14;
    v17 = v16;

    memset(&v47, 0, sizeof(v47));
    if (v9)
    {
      [v9 layoutToImageTransform];
      [v9 transformInRoot];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v47, &t1, &t2);
    t1 = v47;
    v48.origin.x = v11;
    v48.origin.y = v13;
    v48.size.width = v15;
    v48.size.height = v17;
    v49 = CGRectApplyAffineTransform(v48, &t1);
    v50 = CGRectOffset(v49, x, y);
    v34 = v50.origin.x;
    v35 = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
  }

  else
  {
    maskEditModeForDragging2 = [imageLayout2 maskEditModeForDragging];

    if (maskEditModeForDragging2 == 2)
    {
      maskLayout = [(CRLImageRep *)self maskLayout];
      geometry = [maskLayout geometry];
      [geometry size];
      v21 = sub_10011ECB4();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      memset(&v47, 0, sizeof(v47));
      imageLayout3 = [(CRLImageRep *)self imageLayout];
      v29 = imageLayout3;
      if (imageLayout3)
      {
        [imageLayout3 layoutToMaskTransform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      imageLayout4 = [(CRLImageRep *)self imageLayout];
      v39 = imageLayout4;
      if (imageLayout4)
      {
        [imageLayout4 transformInRoot];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      CGAffineTransformConcat(&v47, &t1, &t2);

      t1 = v47;
      v51.origin.x = v21;
      v51.origin.y = v23;
      v51.size.width = v25;
      v51.size.height = v27;
      v52 = CGRectApplyAffineTransform(v51, &t1);
      *&v30 = CGRectOffset(v52, x, y);
    }

    else
    {
      v44.receiver = self;
      v44.super_class = CRLImageRep;
      [(CRLCanvasRep *)&v44 snapRectForDynamicDragWithOffset:x, y];
    }

    v34 = v30;
    v35 = v31;
    width = v32;
    height = v33;
  }

  v40 = v34;
  v41 = v35;
  v42 = width;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGPoint)i_dragOffset
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    currentInfoGeometry = [imageLayout2 currentInfoGeometry];
    [currentInfoGeometry position];
    v8 = v7;
    v10 = v9;
    info = [(CRLCanvasRep *)self info];
    geometry = [info geometry];
    [geometry position];
    v14 = sub_10011F31C(v8, v10, v13);
    v16 = v15;

    v17 = v14;
    v18 = v16;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v19 i_dragOffset];
  }

  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)p_currentEditOperationDidChangeTheImageGeometry
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    if ([imageLayout isDraggingInMaskEditMode])
    {
      maskEditModeForDragging = [imageLayout maskEditModeForDragging];
LABEL_9:
      v4 = maskEditModeForDragging == 3;
      goto LABEL_10;
    }

    if ([imageLayout isRotatingInMaskEditMode])
    {
      maskEditModeForDragging = [imageLayout maskEditModeForRotating];
      goto LABEL_9;
    }

    if ([imageLayout isResizingInMaskEditMode])
    {
      maskEditModeForDragging = [imageLayout maskEditModeForResizing];
      goto LABEL_9;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136AF38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136AF4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136AFDC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageRep p_currentEditOperationDidChangeTheImageGeometry]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1521 isFatal:0 description:"layout is in a not possible state, editing mask but not editing mask"];

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

LABEL_10:

  return v4;
}

- (id)newCommandToApplyGeometry:(id)geometry toInfo:(id)info
{
  geometryCopy = geometry;
  infoCopy = info;
  imageInfo = [(CRLImageRep *)self imageInfo];
  v9 = imageInfo;
  if (imageInfo == infoCopy)
  {
  }

  else
  {
    maskInfo = [(CRLImageRep *)self maskInfo];

    if (maskInfo != infoCopy)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136B004();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v34 = v11;
        v35 = 2082;
        v36 = "[CRLImageRep newCommandToApplyGeometry:toInfo:]";
        v37 = 2082;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m";
        v39 = 1024;
        v40 = 1539;
        v41 = 2112;
        v42 = infoCopy;
        v43 = 2112;
        selfCopy = self;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d called newCommandToApplyGeometry on and info %@ that the rep %@ does not know about", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136B018();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLImageRep newCommandToApplyGeometry:toInfo:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1539 isFatal:0 description:"called newCommandToApplyGeometry on and info %@ that the rep %@ does not know about", infoCopy, self];
    }
  }

  imageInfo2 = [(CRLImageRep *)self imageInfo];
  if (!imageInfo2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136B040();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136B068();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136B104();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLImageRep newCommandToApplyGeometry:toInfo:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1544 isFatal:0 description:"invalid nil value for '%{public}s'", "imageInfo"];
  }

  p_currentEditOperationDidChangeTheImageGeometry = [(CRLImageRep *)self p_currentEditOperationDidChangeTheImageGeometry];
  maskLayout = [(CRLImageRep *)self maskLayout];
  infoGeometry = [maskLayout infoGeometry];
  v23 = [infoGeometry mutableCopy];

  maskLayout2 = [(CRLImageRep *)self maskLayout];
  pathSource = [maskLayout2 pathSource];
  v26 = [pathSource copy];

  if (p_currentEditOperationDidChangeTheImageGeometry)
  {
    v27 = geometryCopy;
    v28 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:imageInfo2 imageGeometry:v27 maskGeometry:v23 maskPathSource:v26];
  }

  else
  {
    if (!v23)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136B12C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136B154();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136B1E4();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v29);
      }

      v30 = [NSString stringWithUTF8String:"[CRLImageRep newCommandToApplyGeometry:toInfo:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:1573 isFatal:0 description:"should have a new mask geometry if changing only the mask"];
    }

    v28 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:imageInfo2 imageGeometry:0 maskGeometry:v23 maskPathSource:v26];
  }

  return v28;
}

- (BOOL)maskGeometryDidChange
{
  maskLayout = [(CRLImageRep *)self maskLayout];
  infoGeometry = [maskLayout infoGeometry];

  maskInfo = [(CRLImageRep *)self maskInfo];
  if (maskInfo)
  {
    maskInfo2 = [(CRLImageRep *)self maskInfo];
    geometry = [maskInfo2 geometry];
    v8 = [geometry isEqual:infoGeometry] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)dragDidChangeGeometry
{
  v6.receiver = self;
  v6.super_class = CRLImageRep;
  if ([(CRLCanvasRep *)&v6 dragDidChangeGeometry])
  {
    return 1;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    maskGeometryDidChange = [(CRLImageRep *)self maskGeometryDidChange];
  }

  else
  {
    maskGeometryDidChange = 0;
  }

  return maskGeometryDidChange;
}

- (void)dynamicOperationDidEnd
{
  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 dynamicOperationDidEnd];
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    imageHUDController = [layerHost imageHUDController];
    [imageHUDController showHUDForRep:self];
  }
}

- (BOOL)demandsExclusiveSelection
{
  v6.receiver = self;
  v6.super_class = CRLImageRep;
  if ([(CRLCanvasRep *)&v6 demandsExclusiveSelection])
  {
    return 1;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  return isInMaskEditMode;
}

- (BOOL)allowDragAcrossPageBoundaries
{
  v6.receiver = self;
  v6.super_class = CRLImageRep;
  if ([(CRLCanvasRep *)&v6 allowDragAcrossPageBoundaries])
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    v4 = [imageLayout isInMaskEditMode] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)dynamicResizeDidBegin
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    dynamicOperationController = [interactiveCanvasController dynamicOperationController];
    [dynamicOperationController invalidateGuides];
  }

  v17.receiver = self;
  v17.super_class = CRLImageRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v17 dynamicResizeDidBegin];
  imageLayout2 = [(CRLImageRep *)self imageLayout];
  maskEditModeForResizing = [imageLayout2 maskEditModeForResizing];

  if (maskEditModeForResizing == 2)
  {
    maskLayout = [(CRLImageRep *)self maskLayout];
  }

  else
  {
    maskLayout2 = [(CRLImageRep *)self maskLayout];
    v12 = maskLayout2;
    if (maskLayout2)
    {
      [maskLayout2 transform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    *&self->_baseMaskLayoutTransform.a = v14;
    *&self->_baseMaskLayoutTransform.c = v15;
    *&self->_baseMaskLayoutTransform.tx = v16;

    maskLayout = [(CRLCanvasRep *)self layout];
  }

  return maskLayout;
}

- (id)infoForTransforming
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditModeForResizing = [imageLayout maskEditModeForResizing];

  if (maskEditModeForResizing == 2)
  {
    maskInfo = [(CRLImageRep *)self maskInfo];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    maskInfo = [(CRLCanvasRep *)&v7 infoForTransforming];
  }

  return maskInfo;
}

- (BOOL)wantsGuidesWhileResizing
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {

    return [(CRLCanvasRep *)self isBeingResized];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v6 wantsGuidesWhileResizing];
  }
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  memset(&v26, 0, sizeof(v26));
  maskInfo = [(CRLImageRep *)self maskInfo];
  if (!maskInfo)
  {
    goto LABEL_5;
  }

  v6 = maskInfo;
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout maskEditModeForResizing] != 2 || -[CRLCanvasRep isBeingRotated](self, "isBeingRotated"))
  {

LABEL_5:
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    originalImageGeometry = [imageLayout2 originalImageGeometry];
    goto LABEL_6;
  }

  isBeingFreeTransformed = [(CRLCanvasRep *)self isBeingFreeTransformed];

  if (isBeingFreeTransformed)
  {
    goto LABEL_5;
  }

  info = [(CRLCanvasRep *)self info];
  geometry = [info geometry];
  v17 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v18 = *&transform->c;
  *&v23.a = *&transform->a;
  *&v23.c = v18;
  *&v23.tx = *&transform->tx;
  CGAffineTransformConcat(&t2, &t1, &v23);
  info2 = [(CRLCanvasRep *)self info];
  geometry2 = [info2 geometry];
  v21 = geometry2;
  if (geometry2)
  {
    [geometry2 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformInvert(&v23, &t1);
  CGAffineTransformConcat(&t1, &t2, &v23);
  v22 = *&t1.c;
  *&transform->a = *&t1.a;
  *&transform->c = v22;
  *&transform->tx = *&t1.tx;

  imageLayout2 = [(CRLImageRep *)self maskInfo];
  originalImageGeometry = [imageLayout2 geometry];
LABEL_6:
  v10 = originalImageGeometry;
  if (originalImageGeometry)
  {
    [originalImageGeometry fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v11 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v11;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v26, &t1, &t2);

  t1 = v26;
  v12 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v12;
}

- (id)actionStringForResize
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    v5 = +[NSBundle mainBundle];
    actionStringForResize = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    actionStringForResize = [(CRLCanvasRep *)&v8 actionStringForResize];
  }

  return actionStringForResize;
}

- (CGPoint)centerForRotation
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    [imageLayout2 centerForRotationInMaskMode];
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v12 centerForRotation];
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (double)angleForRotation
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditModeForRotating = [imageLayout maskEditModeForRotating];

  if (maskEditModeForRotating == 3)
  {
    v10.receiver = self;
    v10.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v10 angleForRotation];
  }

  else
  {
    imageInfo = [(CRLImageRep *)self imageInfo];
    geometryWithMask = [imageInfo geometryWithMask];
    [geometryWithMask angle];
    v9 = v8;

    return v9;
  }

  return result;
}

- (CGPoint)unscaledGuidePosition
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditModeForRotating = [imageLayout maskEditModeForRotating];

  if (maskEditModeForRotating == 3)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    imageGeometry = [imageLayout2 imageGeometry];
    [imageGeometry size];
    v7 = sub_10011ECB4();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MidX = CGRectGetMidX(v29);
    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    MinY = CGRectGetMinY(v30);
    imageLayout3 = [(CRLImageRep *)self imageLayout];
    v15 = imageLayout3;
    if (imageLayout3)
    {
      [imageLayout3 layoutToImageTransform];
      v16 = v25;
      v17 = v26;
      v18 = v27;
    }

    else
    {
      v18 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
    }

    v23 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, MinY), v16, MidX));

    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:*&v23];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v24 unscaledGuidePosition];
  }

  result.y = v20;
  result.x = v19;
  return result;
}

- (id)actionStringForRotate
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (isInMaskEditMode)
  {
    v5 = +[NSBundle mainBundle];
    actionStringForRotate = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    actionStringForRotate = [(CRLCanvasRep *)&v8 actionStringForRotate];
  }

  return actionStringForRotate;
}

- (CGPoint)centerForGuideRenderablePlacement
{
  v4.receiver = self;
  v4.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v4 centerForRotation];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)dynamicMoveSmartShapeKnobDidBegin
{
  dynamicResizeDidBegin = [(CRLImageRep *)self dynamicResizeDidBegin];
  maskLayout = [(CRLImageRep *)self maskLayout];
  [maskLayout dynamicMovePathKnobDidBegin];
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker
{
  v10 = *&to.y;
  toCopy = to;
  trackerCopy = tracker;
  imageLayout = [(CRLImageRep *)self imageLayout];
  v7 = imageLayout;
  if (imageLayout)
  {
    [imageLayout layoutToMaskTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformInvert(&v14, &v13);
  v12 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *&v10), *&v14.a, toCopy.x));

  maskLayout = [(CRLImageRep *)self maskLayout];
  [maskLayout dynamicallyMovedSmartShapeKnobTo:trackerCopy withTracker:*&v12];

  self->_frameInUnscaledCanvasIsValid = 0;
  layoutController = [maskLayout layoutController];
  [layoutController validateLayoutWithDependencies:maskLayout];

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLStyledRep *)self setNeedsDisplay];
}

- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)tracker
{
  maskLayout = [(CRLImageRep *)self maskLayout];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:canvasEditor];

  v9 = [_TtC8Freeform17CRLCommandSetMask alloc];
  imageInfo = [(CRLImageRep *)self imageInfo];
  infoGeometry = [maskLayout infoGeometry];
  pathSource = [maskLayout pathSource];
  v13 = [(CRLCommandSetMask *)v9 initWithImageItem:imageInfo maskGeometry:infoGeometry maskPath:pathSource];

  [commandController enqueueCommand:v13 withSelectionBehavior:v8];
  [(CRLCanvasRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)beginEditingMaskInMaskEditMode:(int64_t)mode
{
  [(CRLImageRep *)self p_enterMaskModeIfNecessaryWithHUD:1];
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  if (maskEditMode != mode)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    [imageLayout2 beginEditingMaskInMaskEditMode:mode];

    [(CRLImageRep *)self p_updateHUD];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (void)p_listenForAssetChangesIfAppropriate
{
  downloadObserverIdentifier = self->_downloadObserverIdentifier;
  if (!downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136B20C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136B220();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136B2BC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRep p_listenForAssetChangesIfAppropriate]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1800 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];

    downloadObserverIdentifier = self->_downloadObserverIdentifier;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003F6F38;
  v13[3] = &unk_10185F8B8;
  v13[4] = self;
  v13[5] = downloadObserverIdentifier;
  v7 = downloadObserverIdentifier;
  v8 = objc_retainBlock(v13);
  imageInfo = [(CRLImageRep *)self imageInfo];
  imageAssetPayload = [imageInfo imageAssetPayload];
  (v8[2])(v8, imageAssetPayload, 0);

  imageInfo2 = [(CRLImageRep *)self imageInfo];
  thumbnailAssetPayload = [imageInfo2 thumbnailAssetPayload];
  (v8[2])(v8, thumbnailAssetPayload, 1);
}

- (void)p_handleAssetPreparationCompletion
{
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    if (qword_101AD5B50 != -1)
    {
      sub_10136B348();
    }

    v3 = off_1019EDBA8;
    if (os_log_type_enabled(off_1019EDBA8, OS_LOG_TYPE_DEFAULT))
    {
      downloadObserverIdentifier = self->_downloadObserverIdentifier;
      v5 = v3;
      uUIDString = [(NSUUID *)downloadObserverIdentifier UUIDString];
      v9 = 138543362;
      v10 = uUIDString;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Image Rep with observerUUID %{public}@ preparing for the downloaded asset", &v9, 0xCu);
    }

    layout = [(CRLCanvasRep *)self layout];
    [layout processChangedProperty:19];
    [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
    [(CRLStyledRep *)self setNeedsDisplay];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)p_updateDirectlyManagesLayerContentForRenderable:(id)renderable
{
  directlyManagesLayerContent = self->_directlyManagesLayerContent;
  v5 = [(CRLImageRep *)self p_directlyManagesContentForRenderable:renderable];
  self->_directlyManagesLayerContent = v5;
  if (!directlyManagesLayerContent || v5)
  {
    if (!directlyManagesLayerContent && v5)
    {
      canvas = [(CRLCanvasRep *)self canvas];
      isCanvasInteractive = [canvas isCanvasInteractive];

      if (isCanvasInteractive)
      {
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v9 = [interactiveCanvasController renderableForRep:self];

        [v9 setContents:0];
      }
    }
  }

  else
  {

    [(CRLStyledRep *)self setNeedsDisplay];
  }
}

- (BOOL)p_directlyManagesContentForRenderable:(id)renderable
{
  v4 = [(CRLImageRepDrawingHelper *)self->_drawingHelper canRenderDirectlyManagedForRenderable:renderable];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController createRepsForOffscreenLayouts])
  {
    v6 = 0;
    if (!v4)
    {
LABEL_3:
      canApplyToShapeRenderable2 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    [interactiveCanvasController visibleBoundsRectForTiling];
    [interactiveCanvasController convertBoundsToUnscaledRect:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    layout = [(CRLCanvasRep *)self layout];
    geometryInRoot = [layout geometryInRoot];
    [geometryInRoot frame];
    v30.origin.x = v9;
    v30.origin.y = v11;
    v30.size.width = v13;
    v30.size.height = v15;
    v18 = CGRectIntersectsRect(v29, v30);

    v6 = !v18;
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  layout2 = [(CRLCanvasRep *)self layout];
  stroke = [layout2 stroke];

  if (([stroke shouldRender] & 1) == 0)
  {

    stroke = 0;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    isBeingResized = 1;
  }

  else
  {
    isBeingResized = [(CRLCanvasRep *)self isBeingResized];
  }

  layout3 = [(CRLCanvasRep *)self layout];
  if ([layout3 isStrokeBeingManipulated])
  {
    prefersToApplyToShapeRenderableDuringManipulation = [stroke prefersToApplyToShapeRenderableDuringManipulation];
  }

  else
  {
    prefersToApplyToShapeRenderableDuringManipulation = 0;
  }

  if (stroke)
  {
    canApplyToShapeRenderable = [stroke canApplyToShapeRenderable];
  }

  else
  {
    canApplyToShapeRenderable = 1;
  }

  if ((isBeingResized | prefersToApplyToShapeRenderableDuringManipulation) & 1) != 0 && (canApplyToShapeRenderable)
  {
    canApplyToShapeRenderable2 = 1;
  }

  else
  {
    v26 = [(CRLImageRepDrawingHelper *)self->_drawingHelper imagePrefersDrawing]|| v6;
    canApplyToShapeRenderable2 = v26 ^ 1;
    if (stroke && (v26 & 1) == 0)
    {
      if ([stroke prefersToApplyToShapeRenderableDuringManipulation] && (-[CRLStyledRep opacity](self, "opacity"), v27 == 1.0))
      {
        canApplyToShapeRenderable2 = [stroke canApplyToShapeRenderable];
      }

      else
      {
        canApplyToShapeRenderable2 = 0;
      }
    }
  }

LABEL_26:
  return canApplyToShapeRenderable2 & 1;
}

- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)frame transform:(CGAffineTransform *)transform
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  pureGeometry = [imageLayout pureGeometry];
  v9 = pureGeometry;
  if (pureGeometry)
  {
    [pureGeometry fullTransform];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  v10 = [CRLCanvasLayoutGeometry geometryFromFullTransform:&v25];

  v11 = [v10 mutableCopy];
  memset(&v25, 0, sizeof(v25));
  imageLayout2 = [(CRLImageRep *)self imageLayout];
  imageGeometry = [imageLayout2 imageGeometry];
  v14 = imageGeometry;
  if (imageGeometry)
  {
    [imageGeometry transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  imageLayout3 = [(CRLImageRep *)self imageLayout];
  pureGeometry2 = [imageLayout3 pureGeometry];
  v17 = pureGeometry2;
  if (pureGeometry2)
  {
    [pureGeometry2 transform];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  CGAffineTransformInvert(&t2, &v22);
  CGAffineTransformConcat(&v25, &t1, &t2);

  memset(&t1, 0, sizeof(t1));
  imageLayout4 = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout4 maskLayout];
  pureGeometry3 = [maskLayout pureGeometry];
  v21 = pureGeometry3;
  if (pureGeometry3)
  {
    [pureGeometry3 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v22 = v25;
  CGAffineTransformConcat(&t1, &t2, &v22);

  t2 = t1;
  [v11 transformBy:&t2];
  [(CRLCanvasRep *)self computeDirectLayerFrame:frame andTransform:transform basedOnLayoutGeometry:v11];
}

- (void)updateRenderableGeometryFromLayout:(id)layout
{
  layoutCopy = layout;
  if ([(CRLImageRep *)self directlyManagesLayerContent])
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    imageGeometry = [imageLayout imageGeometry];
    v22 = 0u;
    *v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    if ([(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
    {
      [(CRLImageRep *)self p_getAliasedValuesForMaskToBoundsDirectLayerFrame:&v22 transform:&v21];
      if ([(CRLImageRep *)self p_shouldRenderWithMaskMatchingImage])
      {
        directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
        if (!directlyManagedLayerContentsRecipe)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136B448();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10136B470();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136B50C();
          }

          v8 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v8);
          }

          v9 = [NSString stringWithUTF8String:"[CRLImageRep updateRenderableGeometryFromLayout:]"];
          v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1942 isFatal:0 description:"invalid nil value for '%{public}s'", "_directlyManagedLayerContentsRecipe"];

          directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
        }

        orientation = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe orientation];
        memset(&v20, 0, sizeof(v20));
        sub_1004F3D84(orientation, 0, &v20, *&v22, *(&v22 + 1), v23[0], v23[1]);
        t1 = v20;
        t2 = v21;
        CGAffineTransformConcat(&v19, &t1, &t2);
        v21 = v19;
      }

      v20 = v21;
      [(CRLCanvasRep *)self antiAliasDefeatLayerFrame:&v22 forTransform:&v20];
    }

    else
    {
      [(CRLCanvasRep *)self computeDirectLayerFrame:&v22 andTransform:&v21 basedOnLayoutGeometry:imageGeometry];
      v12 = self->_directlyManagedLayerContentsRecipe;
      if (!v12)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136B35C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136B384();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136B420();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v13);
        }

        v14 = [NSString stringWithUTF8String:"[CRLImageRep updateRenderableGeometryFromLayout:]"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1954 isFatal:0 description:"invalid nil value for '%{public}s'", "_directlyManagedLayerContentsRecipe"];

        v12 = self->_directlyManagedLayerContentsRecipe;
      }

      orientation2 = [(CRLImageRepLayerContentsRecipe *)v12 orientation];
      memset(&v20, 0, sizeof(v20));
      sub_1004F3D84(orientation2, 0, &v20, *&v22, *(&v22 + 1), v23[0], v23[1]);
      t1 = v20;
      t2 = v21;
      CGAffineTransformConcat(&v19, &t1, &t2);
      v21 = v19;
      [(CRLCanvasRep *)self antiAliasDefeatLayerTransform:&v21 forFrame:v22, *v23];
    }

    v20 = v21;
    [layoutCopy setIfDifferentFrame:&v20 orTransform:{v22, *v23}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v24 updateRenderableGeometryFromLayout:layoutCopy];
  }

  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)willUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  v24.receiver = self;
  v24.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v24 willUpdateRenderable:renderableCopy];
  [(CRLImageRep *)self p_updateDirectlyManagesLayerContentForRenderable:renderableCopy];
  if (self->_sizedImageNeedsDisplay)
  {
    self->_sizedImageNeedsDisplay = 0;
    if ([(CRLImageRep *)self directlyManagesLayerContent])
    {
      shadowRenderable = [(CRLCanvasRep *)self shadowRenderable];

      if (shadowRenderable)
      {
        if (!+[NSThread isMainThread])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136B534();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10136B55C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136B5EC();
          }

          v6 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v6);
          }

          v7 = [NSString stringWithUTF8String:"[CRLImageRep willUpdateRenderable:]"];
          v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1984 isFatal:0 description:"Can't draw sized image on the main thread while we are doing threaded layout and rendering if image has a shadow!"];
        }

        [(CRLCanvasRep *)self invalidateShadowRenderable];
      }
    }

    else
    {
      [(CRLStyledRep *)self setNeedsDisplay];
    }
  }

  [(CRLImageRep *)self p_generateSizedImageIfNecessary];
  if (![(CRLImageRep *)self directlyManagesLayerContent])
  {
    [(CRLImageRep *)self p_disposeStrokeLayer];
    goto LABEL_42;
  }

  if (self->_directlyManagedLayerContentsRecipe)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136B614();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136B63C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136B6D8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageRep willUpdateRenderable:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2001 isFatal:0 description:"expected nil value for '%{public}s'", "_directlyManagedLayerContentsRecipe"];
  }

  v12 = [(CRLImageRepDrawingHelper *)self->_drawingHelper contentsRecipeForDirectlyManagedRenderable:renderableCopy];
  directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
  self->_directlyManagedLayerContentsRecipe = v12;

  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];
  if (maskLayout)
  {
    v16 = maskLayout;
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    if (([imageLayout2 isInMaskEditMode] & 1) != 0 || !-[CRLImageRep p_shouldRenderWithMaskToBounds](self, "p_shouldRenderWithMaskToBounds"))
    {
      hasBakedMask = [(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe hasBakedMask];

      if ((hasBakedMask & 1) == 0)
      {
        [(CRLImageRep *)self p_createMaskRenderableForRenderable:renderableCopy];
        v19 = 1;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  v19 = 0;
LABEL_35:
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (!stroke || ![stroke shouldRender])
  {

    [(CRLImageRep *)self p_disposeStrokeLayer];
    if (v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    [(CRLImageRep *)self p_disposeMaskRenderable];
    goto LABEL_43;
  }

  if (!self->_strokeRenderable)
  {
    v22 = +[CRLCanvasShapeRenderable renderable];
    strokeRenderable = self->_strokeRenderable;
    self->_strokeRenderable = v22;

    [(CRLCanvasRenderable *)self->_strokeRenderable setDelegate:self];
    [(CRLCanvasShapeRenderable *)self->_strokeRenderable setFillColor:0];
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
}

- (void)didUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  v103.receiver = self;
  v103.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v103 didUpdateRenderable:renderableCopy];
  [renderableCopy crl_ignoreAccessibilityInvertColorsIfNeeded];
  maskLayout = [(CRLImageRep *)self maskLayout];
  if (![(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    contentsRenderable = self->_contentsRenderable;
    if (contentsRenderable)
    {
      [(CRLCanvasRenderable *)contentsRenderable removeFromSuperlayer];
      v7 = self->_contentsRenderable;
      self->_contentsRenderable = 0;

      [renderableCopy setMasksToBounds:0];
      [renderableCopy setCornerRadius:0.0];
      [renderableCopy setCornerCurve:kCACornerCurveCircular];
    }
  }

  y = CGPointZero.y;
  if ([(CRLImageRep *)self directlyManagesLayerContent])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
    if (!directlyManagedLayerContentsRecipe)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136B700();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136B728();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136B7C4();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLImageRep didUpdateRenderable:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:2066 isFatal:0 description:"invalid nil value for '%{public}s'", "_directlyManagedLayerContentsRecipe"];

      directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
    }

    image = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe image];
    if ([(CRLImageRepDrawingHelper *)self->_drawingHelper isGeneratingSizedImageWithBakedMask]&& !+[NSThread isMainThread])
    {

      image = 0;
    }

    contents = [renderableCopy contents];

    if (contents != image)
    {
      [renderableCopy setContents:image];
    }

    imageLayout = [(CRLImageRep *)self imageLayout];
    imageGeometryInRoot = [imageLayout imageGeometryInRoot];
    v17 = imageGeometryInRoot;
    if (imageGeometryInRoot)
    {
      [imageGeometryInRoot transform];
    }

    else
    {
      memset(&v102, 0, sizeof(v102));
    }

    v18 = sub_100139B5C(&v102.a);

    edgeAntialiasingMask = [renderableCopy edgeAntialiasingMask];
    if (v18)
    {
      if (!edgeAntialiasingMask)
      {
        goto LABEL_31;
      }

      v20 = 0;
    }

    else
    {
      if (edgeAntialiasingMask == 15)
      {
        goto LABEL_31;
      }

      v20 = 15;
    }

    [renderableCopy setEdgeAntialiasingMask:v20];
LABEL_31:
    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v21 BOOLForKey:@"TSDSuppressImageInterpolation"];

    if (v22)
    {
      v23 = @"nearest";
    }

    else
    {
      v23 = @"linear";
    }

    [renderableCopy setMagnificationFilter:v23];
    layout = [(CRLCanvasRep *)self layout];
    stroke = [layout stroke];

    if (stroke && [stroke shouldRender])
    {
      [(CRLImageRep *)self p_updateStrokeLayerForStroke:stroke repRenderable:renderableCopy];
    }

    if (!maskLayout)
    {
      goto LABEL_55;
    }

    if ([(CRLImageRep *)self p_shouldRenderWithMaskMatchingImage])
    {
      [(CRLCanvasRenderable *)self->_contentsRenderable removeFromSuperlayer];
      v26 = self->_contentsRenderable;
      self->_contentsRenderable = 0;

      imageInfo = [(CRLImageRep *)self imageInfo];
      [renderableCopy setMasksToBounds:{objc_msgSend(imageInfo, "hasRoundedCorners")}];

      [(CRLImageRep *)self p_updateCornerRadiusOnRenderable:renderableCopy];
LABEL_55:
      [(CRLMediaRep *)self updateSpatialLabel];
      maskRenderable = [(CRLImageRep *)self maskRenderable];

      if (maskRenderable)
      {
        +[CATransaction begin];
        [CATransaction setDisableActions:1];
        [renderableCopy bounds];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        maskRenderable2 = [(CRLImageRep *)self maskRenderable];
        [maskRenderable2 frame];
        v108.origin.x = v74;
        v108.origin.y = v75;
        v108.size.width = v76;
        v108.size.height = v77;
        v105.origin.x = v66;
        v105.origin.y = v68;
        v105.size.width = v70;
        v105.size.height = v72;
        v78 = CGRectEqualToRect(v105, v108);

        if (!v78)
        {
          maskRenderable3 = [(CRLImageRep *)self maskRenderable];
          [maskRenderable3 setFrame:{v66, v68, v70, v72}];
        }

        maskSubrenderable = self->_maskSubrenderable;
        if (maskSubrenderable)
        {
          [(CRLCanvasRenderable *)maskSubrenderable frame];
          v109.origin.x = v81;
          v109.origin.y = v82;
          v109.size.width = v83;
          v109.size.height = v84;
          v106.origin.x = v66;
          v106.origin.y = v68;
          v106.size.width = v70;
          v106.size.height = v72;
          if (!CGRectEqualToRect(v106, v109))
          {
            [(CRLCanvasRenderable *)self->_maskSubrenderable setFrame:v66, v68, v70, v72];
          }
        }

        +[CATransaction commit];
      }

      +[CATransaction commit];
      v85 = self->_directlyManagedLayerContentsRecipe;
      self->_directlyManagedLayerContentsRecipe = 0;

      goto LABEL_63;
    }

    if ([(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
    {
      if (!self->_contentsRenderable)
      {
        v28 = +[CRLCanvasRenderable renderable];
        v29 = self->_contentsRenderable;
        self->_contentsRenderable = v28;
      }

      subrenderables = [renderableCopy subrenderables];
      v31 = [subrenderables containsObject:self->_contentsRenderable];

      if ((v31 & 1) == 0)
      {
        [renderableCopy addSubrenderable:self->_contentsRenderable];
      }

      [renderableCopy setMasksToBounds:1];
      [(CRLCanvasRenderable *)self->_contentsRenderable setContents:image];
      [renderableCopy setContents:0];
      [(CRLImageRep *)self p_updateCornerRadiusOnRenderable:renderableCopy];
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas viewScale];
      v90 = v33;

      imageLayout2 = [(CRLImageRep *)self imageLayout];
      imageGeometry = [imageLayout2 imageGeometry];
      [imageGeometry size];
      v37 = v36;
      v39 = v38;

      sub_10011F340(v37, v39, v90);
      v40 = sub_10011ECB4();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      orientation = [(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe orientation];
      memset(&v102, 0, sizeof(v102));
      sub_1004F3D84(orientation, 0, &v102, v40, v42, v44, v46);
      v101 = v102;
      v104.origin.x = v40;
      v104.origin.y = v42;
      v104.size.width = v44;
      v104.size.height = v46;
      CGRectApplyAffineTransform(v104, &v101);
      v48 = sub_10011ECB4();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      memset(&v101, 0, sizeof(v101));
      imageLayout3 = [(CRLImageRep *)self imageLayout];
      maskLayout2 = [imageLayout3 maskLayout];
      pureGeometry = [maskLayout2 pureGeometry];
      v58 = pureGeometry;
      if (pureGeometry)
      {
        [pureGeometry transform];
      }

      else
      {
        memset(&v100, 0, sizeof(v100));
      }

      CGAffineTransformInvert(&v101, &v100);

      memset(&v100, 0, sizeof(v100));
      CGAffineTransformMakeTranslation(&v100, v37 * -0.5, v39 * -0.5);
      memset(&v99, 0, sizeof(v99));
      t1 = v100;
      t2 = v102;
      CGAffineTransformConcat(&v98, &t1, &t2);
      t2 = v100;
      CGAffineTransformInvert(&t1, &t2);
      CGAffineTransformConcat(&v99, &v98, &t1);
      t1 = v99;
      t2 = v101;
      CGAffineTransformConcat(&v98, &t1, &t2);
      *&v101.a = *&v98.a;
      *&v101.c = *&v98.c;
      *&v101.tx = vmulq_n_f64(*&v98.tx, v90);
      *&t1.a = *&v98.a;
      *&t1.c = *&v98.c;
      *&t1.tx = *&v101.tx;
      sub_100139EB4(&t1, &v98, v52 * 0.5, v54 * 0.5);
      v101 = v98;
      [(CRLCanvasRenderable *)self->_contentsRenderable setBounds:v48, v50, v52, v54];
      memset(v95, 0, sizeof(v95));
      memset(&v98, 0, sizeof(v98));
      [(CRLImageRep *)self p_getAliasedValuesForMaskToBoundsDirectLayerFrame:v95 transform:&v98];
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeTranslation(&t2, *v95, *(v95 + 1));
      v94 = v98;
      CGAffineTransformConcat(&t1, &v94, &t2);
      memset(&t2, 0, sizeof(t2));
      v94 = v101;
      v93 = t1;
      CGAffineTransformConcat(&t2, &v94, &v93);
      [(CRLCanvasRep *)self antiAliasDefeatLayerTransform:&t2 forFrame:v48, v50, v52, v54];
      v94 = v98;
      [(CRLCanvasRep *)self antiAliasDefeatLayerFrame:v95 forTransform:&v94];
      memset(&v94, 0, sizeof(v94));
      CGAffineTransformMakeTranslation(&v93, *v95, *(v95 + 1));
      v92 = v98;
      CGAffineTransformConcat(&v94, &v92, &v93);
      v93 = v94;
      CGAffineTransformInvert(&v92, &v93);
      v91 = t2;
      CGAffineTransformConcat(&v93, &v91, &v92);
      v101 = v93;
      [(CRLCanvasRenderable *)self->_contentsRenderable setIfDifferentFrame:&v93 orTransform:v48, v50, v52, v54];
      WeakRetained = objc_loadWeakRetained(&self->_frameMaskLayer);
      mask = [WeakRetained mask];

      if (!mask)
      {
        goto LABEL_55;
      }

      maskRenderable4 = objc_loadWeakRetained(&self->_frameMaskLayer);
      [maskRenderable4 setMask:0];
    }

    else
    {
      imageLayout4 = [(CRLImageRep *)self imageLayout];
      isInMaskEditMode = [imageLayout4 isInMaskEditMode];

      if (isInMaskEditMode)
      {
        [(CRLImageRep *)self p_updateMaskSublayersForMaskEditMode];
        [(CRLImageRep *)self p_updateMaskRenderable:self->_maskSubrenderable forRepRenderable:renderableCopy shouldIncludeMask:1 shouldIncludeInstantAlpha:0 siblingLayer:0];
        [(CRLImageRep *)self p_updateMaskRenderable:self->_maskPathRenderable forRepRenderable:renderableCopy shouldIncludeMask:1 shouldIncludeInstantAlpha:0 siblingLayer:1];
        goto LABEL_55;
      }

      if ([(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe hasBakedMask])
      {
        goto LABEL_55;
      }

      maskRenderable4 = [(CRLImageRep *)self maskRenderable];
      [(CRLImageRep *)self p_updateMaskRenderable:maskRenderable4 forRepRenderable:renderableCopy shouldIncludeMask:1 shouldIncludeInstantAlpha:1 siblingLayer:0];
    }

    goto LABEL_55;
  }

  if ([renderableCopy edgeAntialiasingMask] != 15)
  {
    [renderableCopy setEdgeAntialiasingMask:15];
  }

LABEL_63:
  [renderableCopy contentsRect];
  v110.size.width = 1.0;
  v110.size.height = 1.0;
  v110.origin.x = CGPointZero.x;
  v110.origin.y = y;
  if (!CGRectEqualToRect(v107, v110))
  {
    [renderableCopy setContentsRect:{CGPointZero.x, y, 1.0, 1.0}];
  }

  [(CRLStyledRep *)self opacity];
  v87 = v86;
  if ([(CRLImageRep *)self shouldShowLoadingUI]&& ![(CRLImageRep *)self directlyManagesLayerContent])
  {
    v87 = 1.0;
  }

  [renderableCopy opacity];
  v89 = v88;
  if (v87 != v89)
  {
    *&v89 = v87;
    [renderableCopy setOpacity:v89];
  }
}

- (BOOL)shouldDisplayAsSpatial
{
  imageInfo = [(CRLImageRep *)self imageInfo];
  if ([imageInfo shouldDisplayAsSpatial])
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    v5 = [imageLayout isInMaskEditMode] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)p_updateCornerRadiusOnRenderable:(id)renderable
{
  renderableCopy = renderable;
  v4 = objc_opt_class();
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];
  pathSource = [maskLayout pathSource];
  v8 = sub_100014370(v4, pathSource);

  if (v8 && ![v8 type])
  {
    [v8 cornerRadius];
    v11 = v10;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [renderableCopy setCornerRadius:v11 * v13];

    isCurveContinuous = [v8 isCurveContinuous];
    v9 = &kCACornerCurveContinuous;
    if (!isCurveContinuous)
    {
      v9 = &kCACornerCurveCircular;
    }
  }

  else
  {
    [renderableCopy setCornerRadius:0.0];
    v9 = &kCACornerCurveCircular;
  }

  [renderableCopy setCornerCurve:*v9];
}

- (void)p_updateMaskRenderable:(id)renderable forRepRenderable:(id)repRenderable shouldIncludeMask:(BOOL)mask shouldIncludeInstantAlpha:(BOOL)alpha siblingLayer:(BOOL)layer
{
  HIDWORD(v46) = layer;
  maskCopy = mask;
  renderableCopy = renderable;
  repRenderableCopy = repRenderable;
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [imageLayout maskLayout];

  if (![(CRLImageRep *)self directlyManagesLayerContent])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136B7EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136B800();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136B890();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLImageRep p_updateMaskRenderable:forRepRenderable:shouldIncludeMask:shouldIncludeInstantAlpha:siblingLayer:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:2275 isFatal:0 description:"Updating mask layer for a non-directly managed layer!"];
  }

  if (renderableCopy && ![(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v19 = v18;

    Copy = 0;
    v21 = *&CGAffineTransformIdentity.c;
    *&v53.a = *&CGAffineTransformIdentity.a;
    *&v53.c = v21;
    *&v53.tx = *&CGAffineTransformIdentity.tx;
    if (maskLayout && maskCopy)
    {
      [maskLayout pathBounds];
      CGAffineTransformMakeTranslation(&v53, -v22, -v23);
      [maskLayout transform];
      t1 = v53;
      CGAffineTransformConcat(&v52, &t1, &t2);
      v53 = v52;
      CGAffineTransformMakeScale(&t2, v19, v19);
      t1 = v53;
      CGAffineTransformConcat(&v52, &t1, &t2);
      v53 = v52;
      Copy = CGPathCreateCopy([maskLayout path]);
    }

    directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
    if (!directlyManagedLayerContentsRecipe)
    {
      LODWORD(v46) = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136B8B8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136B8E0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136B97C();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v26 = [NSString stringWithUTF8String:"[CRLImageRep p_updateMaskRenderable:forRepRenderable:shouldIncludeMask:shouldIncludeInstantAlpha:siblingLayer:]"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:2291 isFatal:0 description:"invalid nil value for '%{public}s'", "_directlyManagedLayerContentsRecipe", v46];

      directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
    }

    orientation = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe orientation];
    if (orientation && (v46 & 0x100000000) == 0)
    {
      v29 = orientation;
      [repRenderableCopy bounds];
      v30 = sub_10011ECB4();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      memset(&v52, 0, sizeof(v52));
      sub_1004F3D84(v29, 0, &v52, v30, v31, v33, v35);
      v37 = sub_100120414(v30, v32, v34, v36);
      v39 = v38;
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformMakeTranslation(&t1, -v37, -v38);
      CGAffineTransformMakeTranslation(&v48, v37, v39);
      v47 = v52;
      CGAffineTransformConcat(&v49, &v47, &v48);
      CGAffineTransformConcat(&t2, &t1, &v49);
      t1 = t2;
      CGAffineTransformInvert(&v49, &t1);
      v48 = v53;
      CGAffineTransformConcat(&t1, &v48, &v49);
      v53 = t1;
    }

    if (!Copy)
    {
      imageLayout2 = [(CRLImageRep *)self imageLayout];
      maskIntersectsImage = [imageLayout2 maskIntersectsImage];

      if (maskIntersectsImage)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136B9A4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136B9CC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136BA5C();
        }

        v42 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v42);
        }

        v43 = [NSString stringWithUTF8String:"[CRLImageRep p_updateMaskRenderable:forRepRenderable:shouldIncludeMask:shouldIncludeInstantAlpha:siblingLayer:]"];
        v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:2305 isFatal:0 description:"maskPath is nil when it should not be"];
      }
    }

    v52 = v53;
    v45 = sub_10007187C(Copy, &v52);
    [renderableCopy setPath:v45];
    CGPathRelease(v45);
    CGPathRelease(Copy);
  }
}

- (void)p_updateStrokeLayerForStroke:(id)stroke repRenderable:(id)renderable
{
  strokeCopy = stroke;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskLayout = [(CRLImageRep *)self maskLayout];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v10 = v9;

  v41 = 0u;
  memset(&v42, 0, sizeof(v42));
  v40 = 0u;
  imageLayout2 = [(CRLImageRep *)self imageLayout];
  imageGeometry = [imageLayout2 imageGeometry];
  [(CRLCanvasRep *)self computeDirectLayerFrame:&v40 andTransform:&v42 basedOnLayoutGeometry:imageGeometry];

  v13 = v41;
  v14 = sub_10011ECB4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_100120414(*&v40, *(&v40 + 1), *&v13, *(&v13 + 1));
  v23 = v22;
  [(CRLCanvasRenderable *)self->_strokeRenderable position];
  if (v25 != v21 || v24 != v23)
  {
    [(CRLCanvasRenderable *)self->_strokeRenderable setPosition:v21, v23];
  }

  [(CRLStyledRep *)self opacity];
  v28 = v27;
  [(CRLCanvasRenderable *)self->_strokeRenderable opacity];
  v30 = v29;
  if (v28 != v30)
  {
    *&v30 = v28;
    [(CRLCanvasRenderable *)self->_strokeRenderable setOpacity:v30];
  }

  [(CRLCanvasRenderable *)self->_strokeRenderable setBounds:v14, v16, v18, v20];
  [strokeCopy applyToShapeRenderable:self->_strokeRenderable withScale:v10];

  pathToStroke = [imageLayout pathToStroke];
  Mutable = pathToStroke;
  if (!maskLayout)
  {
    if (!pathToStroke)
    {
      Mutable = CGPathCreateMutable();
      v43.origin.x = v14;
      v43.origin.y = v16;
      v43.size.width = v18;
      v43.size.height = v20;
      CGPathAddRect(Mutable, 0, v43);
      goto LABEL_14;
    }

    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeScale(&v39, v10, v10);
    pathToStroke2 = [imageLayout pathToStroke];
    t1 = v39;
LABEL_13:
    Mutable = sub_10007187C(pathToStroke2, &t1);
LABEL_14:
    strokeRenderable = self->_strokeRenderable;
    v35 = 0;
    goto LABEL_16;
  }

  if (pathToStroke)
  {
    memset(&v39, 0, sizeof(v39));
    [maskLayout transform];
    CGAffineTransformMakeScale(&v37, v10, v10);
    CGAffineTransformConcat(&v39, &t1, &v37);
    t1 = v39;
    pathToStroke2 = Mutable;
    goto LABEL_13;
  }

  strokeRenderable = self->_strokeRenderable;
  v35 = 1;
LABEL_16:
  [(CRLCanvasRenderable *)strokeRenderable setHidden:v35];
  [(CRLCanvasShapeRenderable *)self->_strokeRenderable setPath:Mutable];
  CGPathRelease(Mutable);
  v36 = self->_strokeRenderable;
  if (v36)
  {
    [(CRLCanvasRenderable *)v36 affineTransform];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  t1 = v42;
  if (!CGAffineTransformEqualToTransform(&v39, &t1))
  {
    v39 = v42;
    [(CRLCanvasRenderable *)self->_strokeRenderable setAffineTransform:&v39];
  }

  +[CATransaction commit];
}

- (id)additionalRenderablesOverRenderable
{
  v26.receiver = self;
  v26.super_class = CRLImageRep;
  additionalRenderablesOverRenderable = [(CRLMediaRep *)&v26 additionalRenderablesOverRenderable];
  v4 = [NSMutableArray arrayWithArray:additionalRenderablesOverRenderable];

  if (self->_strokeRenderable)
  {
    [v4 addObject:?];
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    maskPathRenderable = self->_maskPathRenderable;

    if (!maskPathRenderable)
    {
      [(CRLImageRep *)self p_updateMaskSublayersForMaskEditMode];
    }
  }

  else
  {
  }

  if (self->_maskPathRenderable)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    imageGeometryInRoot = [imageLayout2 imageGeometryInRoot];
    v9 = imageGeometryInRoot;
    if (imageGeometryInRoot)
    {
      [imageGeometryInRoot transform];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v25.f64[0] = v11 * v25.f64[0];

    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 viewScale];
    v25.f64[1] = v13 * v25.f64[1];

    parentRep = [(CRLCanvasRep *)self parentRep];

    if (parentRep)
    {
      parentRep2 = [(CRLCanvasRep *)self parentRep];
      [parentRep2 layerFrameInScaledCanvas];
      v20 = v17;
      v21 = v16;

      *&v18.f64[0] = v21;
      *&v18.f64[1] = v20;
      v25 = vsubq_f64(v25, v18);
    }

    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    [(CRLCanvasRenderable *)self->_maskPathRenderable setAffineTransform:v22, v20, v21];
    +[CATransaction commit];
    [v4 addObject:self->_maskPathRenderable];
  }

  return v4;
}

- (void)p_setDefaultMaskWithActionString:(id)string
{
  stringCopy = string;
  commandController = [(CRLCanvasRep *)self commandController];
  v5 = [CRLCanvasCommandSelectionBehavior alloc];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v5 initWithCanvasEditor:canvasEditor];

  [commandController openGroupWithSelectionBehavior:v8];
  [commandController setCurrentGroupActionString:stringCopy];

  imageInfo = [(CRLImageRep *)self imageInfo];
  defaultMaskInfo = [imageInfo defaultMaskInfo];
  v11 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:imageInfo maskInfo:defaultMaskInfo];
  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  commandController2 = [interactiveCanvasController2 commandController];

  [commandController2 enqueueCommand:v11];
  [commandController closeGroup];
}

- (void)p_endEditingMask
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  [imageLayout endMaskEditMode];

  imageInfo = [(CRLImageRep *)self imageInfo];
  maskInfo = [imageInfo maskInfo];

  if (!maskInfo)
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    [imageLayout2 maskWasReset];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v8 = sub_1003FA2DC;
  v9 = &unk_10183AB38;
  selfCopy = self;
  if (+[NSThread isMainThread])
  {
    v8(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  [(CRLImageRep *)self p_cleanUpMaskModeUI];
}

- (void)p_setUpMaskModeUI
{
  v3 = +[UIMenuController sharedMenuController];
  [v3 hideMenu];

  v4 = +[NSNotificationCenter defaultCenter];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  [v4 addObserver:self selector:"p_selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController2 canvasInvalidatedForRep:self];

  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLImageRep *)self p_updateHUD];

  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)p_cleanUpMaskModeUI
{
  +[CATransaction begin];
  [(CRLCanvasRenderable *)self->_maskSubrenderable removeFromSuperlayer];
  maskSubrenderable = self->_maskSubrenderable;
  self->_maskSubrenderable = 0;

  maskPathRenderable = self->_maskPathRenderable;
  self->_maskPathRenderable = 0;

  +[CATransaction commit];
  v5 = +[NSNotificationCenter defaultCenter];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  [v5 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

  if ([(CRLImageRep *)self p_shouldBakeMaskIntoSizedImage])
  {
    [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController2 canvasInvalidatedForRep:self];

  [(CRLCanvasRep *)self invalidateKnobs];

  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)p_updateHUD
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  imageHUDController = [layerHost imageHUDController];
  [imageHUDController updateControlsForRep:self];
}

- (void)p_disposeStrokeLayer
{
  if (self->_strokeRenderable)
  {
    +[CATransaction begin];
    [(CRLCanvasRenderable *)self->_strokeRenderable setDelegate:0];
    strokeRenderable = self->_strokeRenderable;
    self->_strokeRenderable = 0;

    size = CGRectZero.size;
    self->_lastPictureFrameLayerRect.origin = CGRectZero.origin;
    self->_lastPictureFrameLayerRect.size = size;
    v5 = *&CGAffineTransformIdentity.c;
    *&self->_lastPictureFrameLayerTransform.a = *&CGAffineTransformIdentity.a;
    *&self->_lastPictureFrameLayerTransform.c = v5;
    *&self->_lastPictureFrameLayerTransform.tx = *&CGAffineTransformIdentity.tx;
    WeakRetained = objc_loadWeakRetained(&self->_frameMaskLayer);
    [WeakRetained removeFromSuperlayer];

    objc_storeWeak(&self->_frameMaskLayer, 0);

    +[CATransaction commit];
  }
}

- (void)p_disposeMaskRenderable
{
  maskRenderable = [(CRLImageRep *)self maskRenderable];

  if (maskRenderable)
  {
    +[CATransaction begin];
    [(CRLCanvasRenderable *)self->_maskSubrenderable removeFromSuperlayer];
    maskSubrenderable = self->_maskSubrenderable;
    self->_maskSubrenderable = 0;

    maskRenderable2 = [(CRLImageRep *)self maskRenderable];
    [maskRenderable2 removeFromSuperlayer];

    maskRenderable3 = [(CRLImageRep *)self maskRenderable];
    [maskRenderable3 setDelegate:0];

    [(CRLImageRep *)self setMaskRenderable:0];
    WeakRetained = objc_loadWeakRetained(&self->_frameMaskLayer);
    [WeakRetained removeFromSuperlayer];

    objc_storeWeak(&self->_frameMaskLayer, 0);

    +[CATransaction commit];
  }
}

- (void)p_createMaskRenderableForRenderable:(id)renderable
{
  renderableCopy = renderable;
  maskRenderable = [(CRLImageRep *)self maskRenderable];

  if (!maskRenderable)
  {
    v5 = +[CRLCanvasShapeRenderable renderable];
    [(CRLImageRep *)self setMaskRenderable:v5];

    maskRenderable2 = [(CRLImageRep *)self maskRenderable];
    [maskRenderable2 setDelegate:self];

    y = CGPointZero.y;
    maskRenderable3 = [(CRLImageRep *)self maskRenderable];
    [maskRenderable3 setAnchorPoint:{CGPointZero.x, y}];

    maskRenderable4 = [(CRLImageRep *)self maskRenderable];
    [renderableCopy setMaskRenderable:maskRenderable4];
  }
}

- (void)p_updateMaskSublayersForMaskEditMode
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [interactiveCanvasController renderableForRep:self];

  maskRenderable = [(CRLImageRep *)self maskRenderable];

  if (!maskRenderable)
  {
    [(CRLImageRep *)self p_createMaskRenderableForRenderable:v13];
  }

  if (!self->_maskSubrenderable)
  {
    v5 = +[CRLCanvasShapeRenderable renderable];
    maskSubrenderable = self->_maskSubrenderable;
    self->_maskSubrenderable = v5;

    maskRenderable2 = [(CRLImageRep *)self maskRenderable];
    [maskRenderable2 addSubrenderable:self->_maskSubrenderable];
  }

  v8 = [CRLColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
  -[CRLCanvasRenderable setBackgroundColor:](self->_maskSubrenderable, "setBackgroundColor:", [v8 CGColor]);

  if (!self->_maskPathRenderable)
  {
    v9 = +[CRLCanvasShapeRenderable renderable];
    maskPathRenderable = self->_maskPathRenderable;
    self->_maskPathRenderable = v9;

    v11 = +[CRLColor blackColor];
    -[CRLCanvasShapeRenderable setStrokeColor:](self->_maskPathRenderable, "setStrokeColor:", [v11 CGColor]);

    [(CRLCanvasShapeRenderable *)self->_maskPathRenderable setFillColor:0];
    [(CRLCanvasShapeRenderable *)self->_maskPathRenderable setLineWidth:1.0];
    [(CRLCanvasShapeRenderable *)self->_maskPathRenderable setLineDashPattern:&off_1018E1E60];
  }

  maskRenderable3 = [(CRLImageRep *)self maskRenderable];
  [maskRenderable3 setPath:0];

  +[CATransaction commit];
}

- (void)p_generateSizedImageIfNecessary
{
  if ([(CRLImageRep *)self p_okayToGenerateSizedImage])
  {
    drawingHelper = self->_drawingHelper;

    [(CRLImageRepDrawingHelper *)drawingHelper generateSizedImageIfNeeded];
  }
}

+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)size withImageLayout:(id)layout orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  maskLayout = [layoutCopy maskLayout];
  v23 = *&CGAffineTransformIdentity.c;
  v24 = *&CGAffineTransformIdentity.a;
  *&v28.a = *&CGAffineTransformIdentity.a;
  *&v28.c = v23;
  v22 = *&CGAffineTransformIdentity.tx;
  *&v28.tx = v22;
  imageGeometry = [layoutCopy imageGeometry];
  [imageGeometry size];
  v11 = v10;

  imageGeometry2 = [layoutCopy imageGeometry];
  [imageGeometry2 size];
  v14 = v13;

  if (maskLayout)
  {
    [maskLayout pathBounds];
    CGAffineTransformMakeTranslation(&t2, -v15, -v16);
    *&t1.a = v24;
    *&t1.c = v23;
    *&t1.tx = v22;
    CGAffineTransformConcat(&v28, &t1, &t2);
    if (layoutCopy)
    {
      [layoutCopy layoutToMaskTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v18 = width / v11;
    v25 = v28;
    v19 = height / v14;
    CGAffineTransformConcat(&t2, &v25, &t1);
    v28 = t2;
    if (layoutCopy)
    {
      [layoutCopy layoutToImageTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformInvert(&t1, &t2);
    v25 = v28;
    CGAffineTransformConcat(&t2, &v25, &t1);
    v28 = t2;
    CGAffineTransformMakeScale(&t1, v18, v19);
    v25 = v28;
    CGAffineTransformConcat(&t2, &v25, &t1);
    v28 = t2;
    path = [maskLayout path];
    t2 = v28;
    v17 = sub_10007187C(path, &t2);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)p_injectSizedImageIntoLayerContentsIfReady
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136BA84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136BA98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136BB28();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLImageRep p_injectSizedImageIntoLayerContentsIfReady]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2643 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];

  if (canvasController)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003FAFA4;
    v8[3] = &unk_10185FBC0;
    v8[4] = self;
    v9 = canvasController;
    [v9 updateRenderableForRep:self usingBlock:v8];
  }
}

- (BOOL)p_shouldBakeMaskIntoSizedImage
{
  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  [p_validatedImageProvider naturalSize];
  v5 = v4;
  v7 = v6;

  imageLayout = [(CRLImageRep *)self imageLayout];
  imageGeometry = [imageLayout imageGeometry];
  [imageGeometry size];
  v11 = v10;
  v13 = v12;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v16 = v15;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 contentsScale];
  v19 = sub_10011F340(v11, v13, v16 * v18);
  v21 = v20;

  v22 = v5 < v19 || v7 < v21;
  if (v22 || ![(CRLImageRep *)self directlyManagesLayerContent])
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    maskLayout = [(CRLImageRep *)self maskLayout];
    if (maskLayout)
    {
      imageLayout2 = [(CRLImageRep *)self imageLayout];
      if ([imageLayout2 isInMaskEditMode])
      {
        LOBYTE(v25) = 0;
      }

      else
      {
        imageLayout3 = [(CRLImageRep *)self imageLayout];
        maskLayout2 = [imageLayout3 maskLayout];
        if ([maskLayout2 hasSmartPath])
        {
          LOBYTE(v25) = 0;
        }

        else
        {
          v25 = ![(CRLImageRep *)self p_shouldRenderWithMaskToBounds];
        }
      }
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  return v25;
}

+ (BOOL)p_canRenderWithMaskToBoundsWithImageLayout:(id)layout
{
  layoutCopy = layout;
  maskLayout = [layoutCopy maskLayout];
  pathSource = [maskLayout pathSource];
  isRectangular = [pathSource isRectangular];

  if (isRectangular)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    maskLayout2 = [layoutCopy maskLayout];
    pathSource2 = [maskLayout2 pathSource];
    v11 = sub_100014370(v8, pathSource2);

    if (v11)
    {
      v7 = [v11 type] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)p_shouldRenderWithMaskToBounds
{
  if (![(CRLImageRep *)self directlyManagesLayerContent])
  {
    return 0;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    imageLayout2 = [(CRLImageRep *)self imageLayout];
    v4 = [CRLImageRep p_canRenderWithMaskToBoundsWithImageLayout:imageLayout2];
  }

  return v4;
}

- (BOOL)p_shouldRenderWithMaskMatchingImage
{
  if (![(CRLImageRep *)self directlyManagesLayerContent])
  {
    return 0;
  }

  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    imageInfo = [(CRLImageRep *)self imageInfo];
    v4 = [imageInfo maskMatchesImageGeometryWithIgnoreRoundedCorners:1];
  }

  return v4;
}

- (BOOL)canRemoveBackgroundFromImage
{
  os_unfair_lock_lock(&self->_backgroundRemovalLock);
  autoBackgroundRemovalState = self->_autoBackgroundRemovalState;
  userInitiatedBackgroundRemovalState = self->_userInitiatedBackgroundRemovalState;
  os_unfair_lock_unlock(&self->_backgroundRemovalLock);
  return autoBackgroundRemovalState != 2 && userInitiatedBackgroundRemovalState != 1;
}

- (void)p_removeBackgroundFromImageInitiatedByUser:(BOOL)user
{
  userCopy = user;
  imageInfo = [(CRLImageRep *)self imageInfo];
  isBackgroundRemoved = [imageInfo isBackgroundRemoved];

  if (isBackgroundRemoved)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136BCE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136BCFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136BD8C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageRep p_removeBackgroundFromImageInitiatedByUser:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2781 isFatal:0 description:"Background has already been removed from this image"];
  }

  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  if (([p_validatedImageProvider isError] & 1) == 0)
  {
    if (userCopy)
    {
      goto LABEL_13;
    }

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];

    if ([(CRLRemoveImageBackgroundData *)infosForCurrentSelectionPath count]!= 1)
    {
      goto LABEL_32;
    }

    anyObject = [(CRLRemoveImageBackgroundData *)infosForCurrentSelectionPath anyObject];
    info = [(CRLCanvasRep *)self info];

    if (anyObject == info)
    {
LABEL_13:
      os_unfair_lock_lock(&self->_backgroundRemovalLock);
      imageForRemoveBackgroundAssetDataHash = self->_imageForRemoveBackgroundAssetDataHash;
      imageData = [p_validatedImageProvider imageData];
      crl_hash = [imageData crl_hash];

      if (imageForRemoveBackgroundAssetDataHash != crl_hash)
      {
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setImage:0];
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setOffset:CGPointZero.x, CGPointZero.y];
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setError:0];
      }

      if (userCopy && (p_userInitiatedBackgroundRemovalState = &self->_userInitiatedBackgroundRemovalState, self->_userInitiatedBackgroundRemovalState != 1) || (p_userInitiatedBackgroundRemovalState = &self->_autoBackgroundRemovalState, self->_autoBackgroundRemovalState != 1))
      {
        *p_userInitiatedBackgroundRemovalState = 0;
      }

      infosForCurrentSelectionPath = self->_cachedRemoveImageBackgroundData;
      v16 = self->_imageForRemoveBackgroundAssetDataHash;
      os_unfair_lock_unlock(&self->_backgroundRemovalLock);
      if (userCopy)
      {
        if ([(CRLRemoveImageBackgroundData *)infosForCurrentSelectionPath image])
        {
          [(CRLImageRep *)self p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:infosForCurrentSelectionPath dismissMiniFormatter:1];
LABEL_32:

          goto LABEL_33;
        }

        v20 = &OBJC_IVAR___CRLImageRep__userInitiatedBackgroundRemovalState;
      }

      else
      {
        v20 = &OBJC_IVAR___CRLImageRep__autoBackgroundRemovalState;
      }

      os_unfair_lock_lock(&self->_backgroundRemovalLock);
      v21 = *v20;
      v22 = *(&self->super.super.super.super.isa + v21);
      *(&self->super.super.super.super.isa + v21) = 1;
      os_unfair_lock_unlock(&self->_backgroundRemovalLock);
      if (v22 != 1)
      {
        if (!-[CRLImageRep imageForRemoveBackground](self, "imageForRemoveBackground") || ([p_validatedImageProvider imageData], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "crl_hash"), v23, v16 != v24))
        {
          self->_imageForRemoveBackground = [(CRLImageRep *)self p_createImageForRemoveBackground];
          os_unfair_lock_lock(&self->_backgroundRemovalLock);
          v16 = self->_imageForRemoveBackgroundAssetDataHash;
          os_unfair_lock_unlock(&self->_backgroundRemovalLock);
        }

        v25 = CGImageRetain([(CRLImageRep *)self imageForRemoveBackground]);
        objc_initWeak(&location, self);
        v26 = dispatch_get_global_queue(25, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003FBC24;
        block[3] = &unk_10185FC90;
        v28[1] = v25;
        objc_copyWeak(v28, &location);
        v28[2] = v16;
        v29 = userCopy;
        dispatch_async(v26, block);

        objc_destroyWeak(v28);
        objc_destroyWeak(&location);
      }

      goto LABEL_32;
    }
  }

LABEL_33:
}

- (CGImage)p_createImageForRemoveBackground
{
  imageForRemoveBackground = self->_imageForRemoveBackground;
  if (imageForRemoveBackground)
  {
    CFRelease(imageForRemoveBackground);
    self->_imageForRemoveBackground = 0;
  }

  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  os_unfair_lock_lock(&self->_backgroundRemovalLock);
  imageData = [p_validatedImageProvider imageData];
  self->_imageForRemoveBackgroundAssetDataHash = [imageData hash];

  os_unfair_lock_unlock(&self->_backgroundRemovalLock);
  [p_validatedImageProvider naturalSize];
  v8 = sub_100121ED4(v6, v7, [(CRLImageRep *)self p_maxPixelAreaForBackgroundRemoval]);
  v9 = sub_100120068(v8);
  v11 = v10;
  if ([p_validatedImageProvider imageGamut] == 2)
  {
    v12 = 27;
  }

  else
  {
    v12 = 59;
  }

  v13 = sub_10050DF80(v12, v9, v11);
  [p_validatedImageProvider drawImageInContext:v13 rect:sub_10011ECB4()];
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  if (!Image)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136BE80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136BE94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136BF50();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLImageRep p_createImageForRemoveBackground]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2924 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "newRBImage", "NULL"];
  }

  return Image;
}

- (unint64_t)p_maxPixelAreaForBackgroundRemoval
{
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v2 = sub_10050CF30();
    v3 = VKCImageRemoveBackgroundMaxResolution;
    if (VKCImageRemoveBackgroundMaxResolution > v2)
    {
      return v2;
    }
  }

  else
  {
    return VKCImageRemoveBackgroundMaxResolution;
  }

  return v3;
}

- (id)p_newPathExtensionForOldAssetFilename:(id)filename
{
  filenameCopy = filename;
  crl_pathUTI = [filenameCopy crl_pathUTI];
  identifier = [UTTypeHEIC identifier];
  v14[0] = identifier;
  identifier2 = [UTTypePNG identifier];
  v14[1] = identifier2;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [crl_pathUTI crl_conformsToAnyUTI:v7];

  if (v8)
  {
    pathExtension = [filenameCopy pathExtension];
  }

  else
  {
    preferredFilenameExtension = [UTTypePNG preferredFilenameExtension];
    v11 = preferredFilenameExtension;
    v12 = @"png";
    if (preferredFilenameExtension)
    {
      v12 = preferredFilenameExtension;
    }

    pathExtension = v12;
  }

  return pathExtension;
}

- (void)p_replaceImageDataWithRemoveImageBackgroundData:(id)data rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  if (![dataCopy image])
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136BF78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136BF8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136C028();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C050(v11, v10);
    }

    v12 = [NSString stringWithUTF8String:"[CRLImageRep p_replaceImageDataWithRemoveImageBackgroundData:rect:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2950 isFatal:0 description:"invalid nil value for '%{public}s'", "removeImageBackgroundData.image"];
  }

  v14 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v16 = sub_100014370(v14, info);

  v17 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v19 = sub_100014370(v17, layout);

  if (v16)
  {
    v20 = [_TtC8Freeform29CRLGenerativePlaygroundHelper iptcMetadataFor:v16];
  }

  else
  {
    v20 = 0;
  }

  imageAssetPayload = [v16 imageAssetPayload];
  filename = [imageAssetPayload filename];
  if ([filename length])
  {
    imageAssetPayload2 = [v16 imageAssetPayload];
    filename2 = [imageAssetPayload2 filename];
  }

  else
  {
    filename2 = +[CRLBoardItemImporter defaultPastedImageName];
  }

  stringByDeletingPathExtension = [filename2 stringByDeletingPathExtension];
  v26 = [(CRLImageRep *)self p_newPathExtensionForOldAssetFilename:filename2];
  v27 = [stringByDeletingPathExtension stringByAppendingPathExtension:v26];

  objc_initWeak(&location, self);
  v28 = -[CRLPreinsertionAssetWrapper initWithImage:properties:filename:owner:error:]([_TtC8Freeform27CRLPreinsertionAssetWrapper alloc], "initWithImage:properties:filename:owner:error:", [dataCopy image], v20, v27, v16, 0);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1003FC90C;
  v29[3] = &unk_10185FDC0;
  objc_copyWeak(v30, &location);
  v29[4] = v19;
  v29[5] = self;
  v29[6] = v16;
  v30[1] = *&x;
  v30[2] = *&y;
  v30[3] = *&width;
  v30[4] = *&height;
  [(CRLPreinsertionAssetWrapper *)v28 createAssetWithCompletionHandler:v29];
  objc_destroyWeak(v30);

  objc_destroyWeak(&location);
}

- (void)p_enqueueCommandsToUpdateMagnetsForLineEnd:(unint64_t)end withClineLayout:(id)layout withUnscaledPosition:(id)position
{
  layoutCopy = layout;
  positionCopy = position;
  v10 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v12 = sub_100014370(v10, layout);

  if (end == 11)
  {
    headMagnetType = [layoutCopy headMagnetType];
  }

  else
  {
    headMagnetType = [layoutCopy tailMagnetType];
  }

  v14 = headMagnetType;
  [positionCopy CGPointValue];
  v39 = v16;
  v41 = v15;

  if (v14 == 6)
  {
    [v12 findNewEdgeMagnetCanvasPositionForConnectionLine:layoutCopy forLineEnd:end withCanvasPosition:{v41, v39}];
  }

  else
  {
    v18 = v39;
    v17 = v41;
  }

  v40 = v18;
  v42 = v17;
  if (v12)
  {
    [v12 pureTransformInRoot];
  }

  else
  {
    memset(&v44, 0, sizeof(v44));
  }

  CGAffineTransformInvert(&v45, &v44);
  v43 = vaddq_f64(*&v45.tx, vmlaq_n_f64(vmulq_n_f64(*&v45.c, v40), *&v45.a, v42));
  pureGeometry = [v12 pureGeometry];
  [pureGeometry size];
  v20 = sub_10011ECB4();
  v23 = sub_100121720(v43.f64[0], v43.f64[1], v20, v21, v22);
  v25 = v24;

  connectionLineInfo = [layoutCopy connectionLineInfo];
  connectionLinePathSource = [connectionLineInfo connectionLinePathSource];

  v28 = [[CRLConnectionLineMagnet alloc] initWithType:v14 normalizedPosition:v23, v25];
  if (end == 11)
  {
    [connectionLinePathSource setHeadMagnet:v28];

    v29 = objc_opt_class();
    [layoutCopy connectedTo];
  }

  else
  {
    [connectionLinePathSource setTailMagnet:v28];

    v29 = objc_opt_class();
    [layoutCopy connectedFrom];
  }
  v30 = ;
  v31 = end == 11;
  info = [v30 info];
  v33 = sub_100014370(v29, info);

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v36 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
  connectionLineInfo2 = [layoutCopy connectionLineInfo];
  v38 = [(CRLCommandSetConnectionLineConnection *)v36 initWithConnectionLine:connectionLineInfo2 connectedItem:v33 chirality:v31 pathSource:connectionLinePathSource];
  [commandController enqueueCommand:v38];
}

- (id)p_getMagnetUnscaledPositionValueForMagnet:(id)magnet withConnectedItem:(id)item
{
  itemCopy = item;
  [magnet magnetNormalizedPosition];
  v14 = v7;
  v15 = v6;
  pureGeometry = [itemCopy pureGeometry];

  if (pureGeometry)
  {
    [pureGeometry fullTransform];
    v9 = v17;
    v10 = v18;
    v11 = v19;
  }

  else
  {
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v16 = vaddq_f64(v11, vmlaq_n_f64(vmulq_n_f64(v10, v14), v9, v15));

  v12 = [NSValue valueWithCGPoint:*&v16];

  return v12;
}

- (CGRect)p_calcNewImageItemRectWithRawSize:(CGSize)size offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  p_validatedImageProvider = [(CRLImageRep *)self p_validatedImageProvider];
  info = [(CRLCanvasRep *)self info];
  geometry = [info geometry];

  if (p_validatedImageProvider && ![p_validatedImageProvider isError])
  {
    v23 = width / CGImageGetWidth(self->_imageForRemoveBackground);
    v24 = height / CGImageGetHeight(self->_imageForRemoveBackground);
    [geometry size];
    v20 = v23 * v25;
    [geometry size];
    v22 = v24 * v26;
    [geometry size];
    v16 = x * v27;
    [geometry size];
    v18 = y * v28;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136C2E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C2FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136C38C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageRep p_calcNewImageItemRectWithRawSize:offset:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:3071 isFatal:0 description:"image provider for current image is invalid"];

    [geometry boundsBeforeRotation];
    v16 = v15;
    [geometry boundsBeforeRotation];
    v18 = v17;
    [geometry size];
    v20 = v19;
    [geometry size];
    v22 = v21;
  }

  v29 = v16;
  v30 = v18;
  v31 = v20;
  v32 = v22;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:(id)data dismissMiniFormatter:(BOOL)formatter
{
  formatterCopy = formatter;
  dataCopy = data;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136C3B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136C3C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136C458();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageRep p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:dismissMiniFormatter:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:3084 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  Width = CGImageGetWidth([dataCopy image]);
  Height = CGImageGetHeight([dataCopy image]);
  [dataCopy offset];
  [(CRLImageRep *)self p_calcNewImageItemRectWithRawSize:Width offset:Height, v12, v13];
  [(CRLImageRep *)self p_replaceImageDataWithRemoveImageBackgroundData:dataCopy rect:?];

  if (formatterCopy)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    [miniFormatterPresenter dismissMiniFormatter];
  }
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  if ([knobCopy tag] - 12 > 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = CRLImageRep;
      v6 = [(CRLCanvasRep *)&v9 newTrackerForKnob:knobCopy];
      goto LABEL_7;
    }

    v5 = CRLMediaReplaceKnobTracker;
  }

  else
  {
    v5 = CRLShapeControlKnobTracker;
  }

  v6 = [[v5 alloc] initWithRep:self knob:knobCopy];
LABEL_7:
  v7 = v6;

  return v7;
}

- (BOOL)shouldShowSmartMaskKnobs
{
  maskLayout = [(CRLImageRep *)self maskLayout];
  maskInfo = [maskLayout maskInfo];
  imageInfo = [(CRLImageRep *)self imageInfo];
  maskInfo2 = [imageInfo maskInfo];

  if (maskInfo == maskInfo2)
  {
    maskLayout2 = [(CRLImageRep *)self maskLayout];
    hasSmartPath = [maskLayout2 hasSmartPath];
  }

  else
  {
    imageInfo2 = [(CRLImageRep *)self imageInfo];
    maskInfo3 = [imageInfo2 maskInfo];
    pathSource = [maskInfo3 pathSource];
    v10 = objc_opt_class();
    maskLayout2 = sub_1003038E0(pathSource, v10, 1, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___CRLSmartPathSource);

    hasSmartPath = maskLayout2 != 0;
  }

  imageInfo3 = [(CRLImageRep *)self imageInfo];
  maskInfo4 = [imageInfo3 maskInfo];
  v20 = 0;
  if (maskInfo4 && hasSmartPath)
  {
    if ([(CRLCanvasRep *)self isSelected])
    {
      imageLayout = [(CRLImageRep *)self imageLayout];
      if ([imageLayout isInMaskEditMode])
      {
        imageLayout2 = [(CRLImageRep *)self imageLayout];
        v20 = [imageLayout2 maskEditMode] == 2;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  knobsCopy = knobs;
  v29.receiver = self;
  v29.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v29 updatePositionsOfKnobs:knobsCopy];
  if ([(CRLImageRep *)self shouldShowSmartMaskKnobs])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = knobsCopy;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          if ([v10 tag] >= 0xC && objc_msgSend(v10, "tag") <= 0x10)
          {
            maskLayout = [(CRLImageRep *)self maskLayout];
            [maskLayout getControlKnobPosition:{objc_msgSend(v10, "tag")}];
            v19 = v13;
            v20 = v12;

            imageLayout = [(CRLImageRep *)self imageLayout];
            v15 = imageLayout;
            if (imageLayout)
            {
              [imageLayout layoutToMaskTransform];
              v16 = v22;
              v17 = v23;
              v18 = v24;
            }

            else
            {
              v18 = 0uLL;
              v16 = 0uLL;
              v17 = 0uLL;
            }

            v21 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, *&v19), v16, *&v20));

            [v10 setPosition:*&v21];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }
}

- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout maskEditMode];

  if (maskEditMode == 2)
  {
    v9 = [CRLImageMaskKnob alloc];
    y = CGPointZero.y;

    return [(CRLCanvasKnob *)v9 initWithType:type position:tag radius:self tag:CGPointZero.x onRep:y, 15.0];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v12 newSelectionKnobForType:type tag:tag];
  }
}

- (void)addKnobsToArray:(id)array
{
  arrayCopy = array;
  v26.receiver = self;
  v26.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v26 addKnobsToArray:arrayCopy];
  imageInfo = [(CRLImageRep *)self imageInfo];
  if ([imageInfo isImagePlaceholder])
  {
    p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    [arrayCopy addObject:p_mediaReplaceButtonKnob];

    [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
  }

  if ([(CRLImageRep *)self shouldShowSmartMaskKnobs])
  {
    maskLayout = [(CRLImageRep *)self maskLayout];
    numberOfControlKnobs = [maskLayout numberOfControlKnobs];
    if (numberOfControlKnobs)
    {
      v9 = numberOfControlKnobs;
      v10 = 12;
      do
      {
        maskLayout2 = [(CRLImageRep *)self maskLayout];
        [maskLayout2 getControlKnobPosition:v10];
        v20 = v13;
        v21 = v12;

        imageLayout = [(CRLImageRep *)self imageLayout];
        v15 = imageLayout;
        if (imageLayout)
        {
          [imageLayout layoutToMaskTransform];
          v16 = v23;
          v17 = v24;
          v18 = v25;
        }

        else
        {
          v18 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
        }

        v22 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, *&v20), v16, *&v21));

        v19 = [[CRLCanvasKnob alloc] initWithType:0 position:v10 radius:self tag:*&v22 onRep:15.0];
        [arrayCopy addObject:v19];

        ++v10;
        --v9;
      }

      while (v9);
    }
  }
}

- (double)additionalRotationForKnobOrientation
{
  v12.receiver = self;
  v12.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v12 additionalRotationForKnobOrientation];
  v4 = v3;
  imageLayout = [(CRLImageRep *)self imageLayout];
  if (![imageLayout isInMaskEditMode])
  {
LABEL_7:

    return v4;
  }

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  maskEditMode = [imageLayout2 maskEditMode];

  if (maskEditMode == 3)
  {
    imageLayout = [(CRLImageRep *)self imageLayout];
    maskLayout = [imageLayout maskLayout];
    v9 = maskLayout;
    if (maskLayout)
    {
      [maskLayout transform];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v4 = v4 - sub_100139980(v11);

    goto LABEL_7;
  }

  return v4;
}

- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  knobCopy = knob;
  objectCopy = object;
  imageLayout = [(CRLImageRep *)self imageLayout];
  isInMaskEditMode = [imageLayout isInMaskEditMode];

  if (knobCopy || !isInMaskEditMode || (-[CRLImageRep imageLayout](self, "imageLayout"), v13 = objc_claimAutoreleasedReturnValue(), [v13 imageGeometryInRoot], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "frame"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v13, -[CRLCanvasRep interactiveCanvasController](self, "interactiveCanvasController"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "convertUnscaledToBoundsRect:", v16, v18, v20, v22), v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, +[CRLCursor moveCursorWithActiveScaledRect:](CRLCursor, "moveCursorWithActiveScaledRect:", v25, v27, v29, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "setConstrainedAxes:", 0), !v32))
  {
    v34.receiver = self;
    v34.super_class = CRLImageRep;
    v32 = [(CRLStyledRep *)&v34 cursorAtPoint:knobCopy forKnob:objectCopy withCursorPlatformObject:x, y];
  }

  return v32;
}

- (BOOL)p_hitCacheGetCachedValue:(BOOL *)value forPoint:(CGPoint)point
{
  v6 = [NSValue valueWithCGPoint:point.x, point.y];
  v7 = [(NSMutableDictionary *)self->_hitTestCache objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    *value = [v7 BOOLValue];
  }

  return v8 != 0;
}

- (void)p_hitCacheSetCachedValue:(BOOL)value forPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  hitTestCache = self->_hitTestCache;
  v8 = [NSNumber numberWithBool:value];
  v7 = [NSValue valueWithCGPoint:x, y];
  [(NSMutableDictionary *)hitTestCache setObject:v8 forKey:v7];
}

- (BOOL)isPlaceholder
{
  imageItem = [(CRLImageRep *)self imageItem];
  isImagePlaceholder = [imageItem isImagePlaceholder];

  return isImagePlaceholder;
}

- (id)imageItem
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (void)screenScaleDidChange
{
  mediaReplaceKnob = self->_mediaReplaceKnob;
  self->_mediaReplaceKnob = 0;

  v4.receiver = self;
  v4.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v4 screenScaleDidChange];
}

- (void)toggleMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if (isPresentingMiniFormatter)
  {

    [(CRLImageRep *)self p_hideMiniFormatter];
  }

  else
  {

    [(CRLImageRep *)self p_showMiniFormatter];
  }
}

- (void)p_showMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([interactiveCanvasController documentIsSharedReadOnly] & 1) == 0)
  {
    layerHost = [interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:selectionPath];
  }
}

- (void)p_hideMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  [miniFormatterPresenter dismissMiniFormatterForRep:self];
}

- (BOOL)p_miniFormatterIsPresentingSecondLayer
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingSecondLayerPopover = [miniFormatterPresenter isPresentingSecondLayerPopover];

  return isPresentingSecondLayerPopover;
}

- (void)p_showControls
{
  if ([(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
  {
    p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    [p_mediaReplaceButtonKnob setHidden:0];

    p_mediaReplaceButtonKnob2 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    renderable = [p_mediaReplaceButtonKnob2 renderable];
    [renderable removeAnimationForKey:@"hidden"];

    v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v6 = [NSNumber numberWithFloat:0.0];
    [v11 setFromValue:v6];

    LODWORD(v7) = 1.0;
    v8 = [NSNumber numberWithFloat:v7];
    [v11 setToValue:v8];

    [v11 setDuration:0.2];
    p_mediaReplaceButtonKnob3 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    renderable2 = [p_mediaReplaceButtonKnob3 renderable];
    [renderable2 addAnimation:v11 forKey:@"hidden"];
  }
}

- (void)p_hideControls
{
  [(CRLImageRep *)self p_hideMediaReplaceButtonIndependently];
  if (![(CRLImageRep *)self p_miniFormatterIsPresentingSecondLayer]&& [(CRLImageRep *)self manuallyControlsMiniFormatter])
  {

    [(CRLImageRep *)self p_hideMiniFormatter];
  }
}

+ (id)p_mediaReplaceButtonImage
{
  v2 = [CRLImage imageWithSystemImageNamed:@"plus" pointSize:22.0];
  v3 = +[CRLColor whiteColor];
  v4 = [v2 compositedImageWithColor:v3 alpha:20 blendMode:1.0];

  return v4;
}

+ (id)p_mediaReplaceButtonBackgroundFillColor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1003FECC0;
  v10 = sub_1003FECD0;
  v11 = 0;
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003FECD8;
  v5[3] = &unk_1018430F8;
  v5[4] = &v6;
  [UITraitCollection crl_withTraitCollectionAsCurrent:v2 performBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_mediaReplaceButtonKnob
{
  mediaReplaceKnob = self->_mediaReplaceKnob;
  if (!mediaReplaceKnob)
  {
    v4 = [CRLMediaReplaceKnob alloc];
    v5 = +[CRLImageRep p_mediaReplaceButtonImage];
    v6 = +[CRLImageRep p_mediaReplaceButtonBackgroundFillColor];
    v7 = [(CRLMediaReplaceKnob *)v4 initWithImage:v5 radius:v6 backgroundColor:self onRep:24.0];
    v8 = self->_mediaReplaceKnob;
    self->_mediaReplaceKnob = v7;

    [(CRLMediaReplaceKnob *)self->_mediaReplaceKnob setHidden:0];
    mediaReplaceKnob = self->_mediaReplaceKnob;
  }

  return mediaReplaceKnob;
}

- (id)p_tapToReplaceRenderable
{
  v3 = objc_opt_class();
  p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  v5 = sub_100014370(v3, p_mediaReplaceButtonKnob);

  image = [v5 image];
  if (!self->mTapToReplaceRenderable)
  {
    v7 = +[CRLNoDefaultImplicitActionRenderable renderable];
    mTapToReplaceRenderable = self->mTapToReplaceRenderable;
    self->mTapToReplaceRenderable = v7;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  -[CRLCanvasRenderable setContents:](self->mTapToReplaceRenderable, "setContents:", [image CGImageForContentsScale:?]);

  [image size];
  [(CRLCanvasRenderable *)self->mTapToReplaceRenderable setBounds:sub_10011ECB4()];
  v10 = self->mTapToReplaceRenderable;
  v11 = v10;

  return v10;
}

- (BOOL)shouldShowMediaReplaceUI
{
  if ([(CRLImageRep *)self isPlaceholder])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    followCoordinator = [editingCoordinator followCoordinator];
    isFollowing = [followCoordinator isFollowing];

    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    editingDisabled = [interactiveCanvasController2 editingDisabled];

    imageLayout = [(CRLImageRep *)self imageLayout];
    isInMaskEditMode = [imageLayout isInMaskEditMode];

    if ([(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
    {
      repForSelecting = [(CRLCanvasRep *)self repForSelecting];
      if (repForSelecting == self)
      {
        if ([(CRLCanvasRep *)self isLocked])
        {
          v13 = 0;
        }

        else
        {
          v13 = (editingDisabled | isInMaskEditMode) ^ 1;
        }
      }

      else
      {
        repForSelecting2 = [(CRLCanvasRep *)self repForSelecting];
        if (((repForSelecting2 == 0) & isFollowing) == 1 && ![(CRLCanvasRep *)self isLocked])
        {
          v13 = (editingDisabled | isInMaskEditMode) ^ 1;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController3 layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

    v19 = v13 & (isCurrentlyInQuickSelectMode ^ 1);
    v20 = objc_opt_class();
    interactiveCanvasController4 = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost2 = [interactiveCanvasController4 layerHost];
    v23 = sub_100014370(v20, layerHost2);

    delegate = [v23 delegate];
    if (objc_opt_respondsToSelector())
    {
      allowsMediaReplaceButton = [delegate allowsMediaReplaceButton];
    }

    else
    {
      allowsMediaReplaceButton = 1;
    }

    v14 = v19 & allowsMediaReplaceButton;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)replaceButtonContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(CRLImageRep *)self shouldShowMediaReplaceUI])
  {
    return 0;
  }

  p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  renderable = [p_mediaReplaceButtonKnob renderable];

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController convertUnscaledToBoundsPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController2 layerHost];
  canvasLayer = [layerHost canvasLayer];
  [renderable convertPoint:canvasLayer fromLayer:{v10, v12}];
  v17 = v16;
  v19 = v18;

  if ([renderable containsPoint:{v17, v19}])
  {
    [renderable bounds];
    v21 = v20 * 0.5;
    [renderable bounds];
    v26 = sub_100120414(v22, v23, v24, v25);
    v28 = v21 > sub_100120090(v26, v27, v17, v19);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)p_mediaReplaceButtonFitsInFrame
{
  canvas = [(CRLCanvasRep *)self canvas];
  [(CRLCanvasRep *)self naturalBounds];
  [canvas convertUnscaledToBoundsSize:{v4, v5}];
  v7 = v6;
  v9 = v8;

  return v9 >= 72.0 && v7 >= 72.0;
}

- (void)p_updateMediaReplaceButtonVisibility
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isCanvasInteractive])
  {
    isPlaceholder = [(CRLImageRep *)self isPlaceholder];

    if (isPlaceholder)
    {
      p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
      isHidden = [p_mediaReplaceButtonKnob isHidden];
      shouldShowMediaReplaceUI = [(CRLImageRep *)self shouldShowMediaReplaceUI];

      if (isHidden == shouldShowMediaReplaceUI)
      {
        if ([(CRLImageRep *)self shouldShowMediaReplaceUI])
        {
          [(CRLImageRep *)self p_showControls];
          canvas2 = [(CRLCanvasRep *)self canvas];
          [canvas2 invalidateContentLayersForRep:self];
        }

        else
        {
          [(CRLImageRep *)self p_hideControls];
        }
      }

      [(CRLMediaRep *)self updateSpatialLabel];
    }
  }

  else
  {
  }
}

- (void)i_toggleMediaReplaceTriggeredFromKnob
{
  if (![(CRLCanvasRep *)self isSelected])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    imageItem = [(CRLImageRep *)self imageItem];
    v6 = [canvasEditor selectionPathWithInfo:imageItem];
    editorController = [interactiveCanvasController editorController];
    [editorController setSelectionPath:v6];
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (isLassoSelectionForMixedTypeEnabledInDrawingMode)
  {
    canvasEditor2 = [interactiveCanvasController2 canvasEditor];
    [canvasEditor2 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (BOOL)p_isPresentingMiniFormatterOrMediaReplaceButtonVisible
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  return isPresentingMiniFormatter;
}

- (void)toggleShowingControls
{
  if ([(CRLImageRep *)self p_isPresentingMiniFormatterOrMediaReplaceButtonVisible])
  {

    [(CRLImageRep *)self p_hideControls];
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    imageItem = [(CRLImageRep *)self imageItem];
    v5 = [canvasEditor selectionPathWithInfo:imageItem];
    editorController = [interactiveCanvasController editorController];
    [editorController setSelectionPath:v5];

    [(CRLImageRep *)self p_showControls];
  }
}

- (void)p_hideMediaReplaceButtonIndependently
{
  p_mediaReplaceButtonKnob = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  [p_mediaReplaceButtonKnob setHidden:1];

  p_mediaReplaceButtonKnob2 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  renderable = [p_mediaReplaceButtonKnob2 renderable];
  [renderable removeAnimationForKey:@"hidden"];

  v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v6) = 1.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v11 setFromValue:v7];

  v8 = [NSNumber numberWithFloat:0.0];
  [v11 setToValue:v8];

  [v11 setDuration:0.2];
  p_mediaReplaceButtonKnob3 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  renderable2 = [p_mediaReplaceButtonKnob3 renderable];
  [renderable2 addAnimation:v11 forKey:@"hidden"];
}

- (void)handleFadeOutForZoom
{
  [(CRLImageRep *)self p_hideMediaReplaceButtonIndependently];
  v3.receiver = self;
  v3.super_class = CRLImageRep;
  [(CRLMediaRep *)&v3 handleFadeOutForZoom];
}

- (void)handleFadeInForZoom
{
  [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
  v3.receiver = self;
  v3.super_class = CRLImageRep;
  [(CRLMediaRep *)&v3 handleFadeInForZoom];
}

- (BOOL)p_isMediaReplaceKnob:(id)knob
{
  knobCopy = knob;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLImageRep *)self p_isMediaReplaceKnob:knobCopy])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    v5 = [(CRLCanvasRep *)&v7 directlyManagesVisibilityOfKnob:knobCopy];
  }

  return v5;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLImageRep *)self p_isMediaReplaceKnob:knobCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:knobCopy];
  }

  return v5;
}

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  imageLayout = [(CRLImageRep *)self imageLayout];
  if (![imageLayout isInMaskEditMode])
  {
    goto LABEL_4;
  }

  imageLayout2 = [(CRLImageRep *)self imageLayout];
  if ([imageLayout2 maskIntersectsImage])
  {

LABEL_4:
LABEL_5:
    v33.receiver = self;
    v10 = &v33;
LABEL_6:
    v10->super_class = CRLImageRep;
    return [(objc_super *)v10 dragTypeAtCanvasPoint:type forTouchType:x, y];
  }

  [(CRLCanvasRep *)self naturalBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:x, y];
  v37.x = v20;
  v37.y = v21;
  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  v22 = CGRectContainsPoint(v38, v37);

  if (!v22)
  {
    goto LABEL_5;
  }

  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:x, y];
  v30 = v24;
  point = v23;
  imageLayout3 = [(CRLImageRep *)self imageLayout];
  v26 = imageLayout3;
  if (imageLayout3)
  {
    [imageLayout3 layoutToImageTransform];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  CGAffineTransformInvert(&v36, &v35);
  pointa = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, v30), *&v36.a, point));

  imageLayout4 = [(CRLImageRep *)self imageLayout];
  imageGeometry = [imageLayout4 imageGeometry];
  [imageGeometry size];
  v39.origin.x = sub_10011ECB4();
  v29 = CGRectContainsPoint(v39, pointa);

  if (v29)
  {
    selfCopy = self;
    v10 = &selfCopy;
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)supportsAlternatePressureDrag
{
  imageLayout = [(CRLImageRep *)self imageLayout];
  if ([imageLayout isInMaskEditMode])
  {
    p_allowedToEditMask = 0;
  }

  else
  {
    p_allowedToEditMask = [(CRLImageRep *)self p_allowedToEditMask];
  }

  return p_allowedToEditMask;
}

- (void)willEnterForeground
{
  v3.receiver = self;
  v3.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v3 willEnterForeground];
  if ([(CRLImageRep *)self p_okayToGenerateSizedImage])
  {
    [(CRLImageRepDrawingHelper *)self->_drawingHelper retryGeneratingSizedImageIfNeeded];
  }
}

- (void)enterPreviewMode
{
  selfCopy = self;
  info = [(CRLCanvasRep *)selfCopy info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125C220();
  }

  else
  {
    sub_10125CCAC();
  }
}

@end