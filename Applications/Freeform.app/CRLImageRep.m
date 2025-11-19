@interface CRLImageRep
+ (BOOL)p_canRenderWithMaskToBoundsWithImageLayout:(id)a3;
+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)a3 withImageLayout:(id)a4 orientation:(int64_t)a5;
+ (id)p_mediaReplaceButtonBackgroundFillColor;
+ (id)p_mediaReplaceButtonImage;
- (BOOL)allowDragAcrossPageBoundaries;
- (BOOL)allowsSupportedDynamicOperationsToBeRealTime;
- (BOOL)canPasteDataFromPhysicalKeyboard:(id)a3;
- (BOOL)canRemoveBackgroundFromImage;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)demandsExclusiveSelection;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)dragDidChangeGeometry;
- (BOOL)exclusivelyProvidesGuidesWhileAligning;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)hitRepChrome:(CGPoint)a3;
- (BOOL)imageDrawingHelperImageHasAlpha:(id)a3;
- (BOOL)imageDrawingHelperShouldGenerateSizedImageSynchronously:(id)a3;
- (BOOL)imageDrawingHelperShouldRetryGeneratingSizedImageLater:(id)a3;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isMaskScaleFromLayout;
- (BOOL)isPlaceholder;
- (BOOL)maskGeometryDidChange;
- (BOOL)p_allowedToEditMask;
- (BOOL)p_currentEditOperationDidChangeTheImageGeometry;
- (BOOL)p_directlyManagesContentForRenderable:(id)a3;
- (BOOL)p_drawsInOneStep;
- (BOOL)p_hitCacheGetCachedValue:(BOOL *)a3 forPoint:(CGPoint)a4;
- (BOOL)p_isMediaReplaceKnob:(id)a3;
- (BOOL)p_isPresentingMiniFormatterOrMediaReplaceButtonVisible;
- (BOOL)p_isResizingImageInMaskEditMode;
- (BOOL)p_isResizingMaskInMaskEditMode;
- (BOOL)p_mediaReplaceButtonFitsInFrame;
- (BOOL)p_miniFormatterIsPresentingSecondLayer;
- (BOOL)p_shouldBakeMaskIntoSizedImage;
- (BOOL)p_shouldRenderWithMaskMatchingImage;
- (BOOL)p_shouldRenderWithMaskToBounds;
- (BOOL)providesGuidesWhileAligning;
- (BOOL)replaceButtonContainsPoint:(CGPoint)a3;
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
- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)a3;
- (CGAffineTransform)transformForCollaboratorCursorRenderable;
- (CGAffineTransform)transformForHighlightLayer;
- (CGImage)p_createImageForRemoveBackground;
- (CGPath)imageDrawingHelper:(id)a3 newMaskPathForSizedImageWithSize:(CGSize)a4 orientation:(int64_t)a5;
- (CGPoint)centerForGuideRenderablePlacement;
- (CGPoint)centerForRotation;
- (CGPoint)i_dragOffset;
- (CGPoint)positionOfMediaReplaceKnobForBounds:(CGRect)a3 viewScale:(double)a4;
- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4;
- (CGPoint)unscaledGuidePosition;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)boundsForHighlightLayer;
- (CGRect)boundsForStandardKnobs;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)imageDrawingHelperImageRect:(id)a3;
- (CGRect)imageDrawingHelperRectForCenteringDownloadProgressPlaceholderImage:(id)a3;
- (CGRect)p_calcNewImageItemRectWithRawSize:(CGSize)a3 offset:(CGPoint)a4;
- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)a3;
- (CRLImageLayout)imageLayout;
- (CRLImageRep)initWithLayout:(id)a3 canvas:(id)a4;
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
- (id)commandForAcceptingPasteWithImageInfo:(id)a3 outSelectionBehavior:(id *)a4;
- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5;
- (id)dynamicResizeDidBegin;
- (id)imageDrawingHelperImageData:(id)a3;
- (id)imageDrawingHelperThumbnailImageData:(id)a3;
- (id)imageItem;
- (id)imageOfStroke:(CGRect *)a3;
- (id)infoForTransforming;
- (id)layoutsForChildReps;
- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4;
- (id)newMaskResizer;
- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4;
- (id)newTrackerForKnob:(id)a3;
- (id)overlayRenderables;
- (id)p_getMagnetUnscaledPositionValueForMagnet:(id)a3 withConnectedItem:(id)a4;
- (id)p_mediaReplaceButtonKnob;
- (id)p_newPathExtensionForOldAssetFilename:(id)a3;
- (id)p_tapToReplaceRenderable;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)pathSourceForSelectionHighlightBehavior;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (id)visuallySignificantDataSet;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4;
- (int64_t)maskEditMode;
- (unint64_t)p_maxPixelAreaForBackgroundRemoval;
- (void)addKnobsToArray:(id)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)beginDynamicallyChangingMaskScale;
- (void)beginEditingMaskInMaskEditMode:(int64_t)a3;
- (void)dealloc;
- (void)didUpdateRenderable:(id)a3;
- (void)documentEditabilityDidChange;
- (void)documentModeDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)dynamicDragDidBegin;
- (void)dynamicMoveSmartShapeKnobDidBegin;
- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)a3;
- (void)dynamicOperationDidEnd;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)dynamicallySetMaskScale:(double)a3;
- (void)editMaskWithHUD:(BOOL)a3;
- (void)endDynamicallyChangingMaskScale:(double)a3;
- (void)endEditingMask;
- (void)enterPreviewMode;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)highlightImage;
- (void)i_toggleMediaReplaceTriggeredFromKnob;
- (void)imageDrawingHelper:(id)a3 didGenerateSizedImageSynchronously:(BOOL)a4;
- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5;
- (void)maskScaleLimitsReturningMin:(double *)a3 max:(double *)a4;
- (void)maskWithHUD:(BOOL)a3;
- (void)p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:(id)a3 dismissMiniFormatter:(BOOL)a4;
- (void)p_cleanUpMaskModeUI;
- (void)p_createMaskRenderableForRenderable:(id)a3;
- (void)p_disposeMaskRenderable;
- (void)p_disposeStrokeLayer;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forLayer:(BOOL)a8 forShadow:(BOOL)a9 forHitTest:(BOOL)a10;
- (void)p_endEditingMask;
- (void)p_enqueueCommandsToUpdateMagnetsForLineEnd:(unint64_t)a3 withClineLayout:(id)a4 withUnscaledPosition:(id)a5;
- (void)p_enterMaskModeIfNecessaryWithHUD:(BOOL)a3;
- (void)p_generateSizedImageIfNecessary;
- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)a3 transform:(CGAffineTransform *)a4;
- (void)p_handleAssetPreparationCompletion;
- (void)p_handleImageMask;
- (void)p_hideControls;
- (void)p_hideMediaReplaceButtonIndependently;
- (void)p_hideMiniFormatter;
- (void)p_hitCacheSetCachedValue:(BOOL)a3 forPoint:(CGPoint)a4;
- (void)p_injectSizedImageIntoLayerContentsIfReady;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_removeBackgroundFromImageInitiatedByUser:(BOOL)a3;
- (void)p_replaceImageDataWithRemoveImageBackgroundData:(id)a3 rect:(CGRect)a4;
- (void)p_selectionPathDidChange:(id)a3;
- (void)p_setDefaultMaskWithActionString:(id)a3;
- (void)p_setUpMaskModeUI;
- (void)p_showControls;
- (void)p_showMiniFormatter;
- (void)p_updateCornerRadiusOnRenderable:(id)a3;
- (void)p_updateDirectlyManagesLayerContentForRenderable:(id)a3;
- (void)p_updateHUD;
- (void)p_updateMaskRenderable:(id)a3 forRepRenderable:(id)a4 shouldIncludeMask:(BOOL)a5 shouldIncludeInstantAlpha:(BOOL)a6 siblingLayer:(BOOL)a7;
- (void)p_updateMaskSublayersForMaskEditMode;
- (void)p_updateMediaReplaceButtonVisibility;
- (void)p_updateStrokeLayerForStroke:(id)a3 repRenderable:(id)a4;
- (void)processChangedProperty:(unint64_t)a3;
- (void)processChanges:(id)a3;
- (void)screenScaleDidChange;
- (void)toggleMiniFormatter;
- (void)toggleShowingControls;
- (void)unhighlightImage;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)willBeRemoved;
- (void)willEnterForeground;
- (void)willUpdateRenderable:(id)a3;
@end

@implementation CRLImageRep

- (CRLImageRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = CRLImageRep;
  v7 = [(CRLCanvasRep *)&v26 initWithLayout:a3 canvas:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(CRLImageRep *)v7 imageInfo];

    if (v9)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      v12 = [(CRLImageRep *)v8 imageInfo];
      v13 = [v12 imageAssetPayload];

      if (v13)
      {
        v14 = +[CRLImageProviderPool sharedPool];
        [v14 addInterestInProviderForAsset:v13];
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
      if ([v6 isCanvasInteractive])
      {
        [(CRLImageRep *)v8 p_listenForAssetChangesIfAppropriate];
      }

      v23 = objc_alloc_init(NSMutableDictionary);
      hitTestCache = v8->_hitTestCache;
      v8->_hitTestCache = v23;

      if ([v6 isCanvasInteractive])
      {
        [(CRLImageRep *)v8 p_updateDirectlyManagesLayerContentForRenderable:0];
      }
    }

    else
    {
      v13 = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(CRLCanvasRenderable *)self->_strokeRenderable setDelegate:0];
  v3 = [(CRLImageRep *)self imageInfo];
  v4 = [v3 imageAssetPayload];

  if (v4)
  {
    v5 = +[CRLImageProviderPool sharedPool];
    [v5 removeInterestInProviderForAsset:v4];
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
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLImageLayout)imageLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CRLMaskInfo)maskInfo
{
  v2 = [(CRLImageRep *)self imageInfo];
  v3 = [v2 maskInfo];

  return v3;
}

- (CRLMaskLayout)maskLayout
{
  v2 = [(CRLImageRep *)self imageLayout];
  v3 = [v2 maskLayout];

  return v3;
}

- (void)willBeRemoved
{
  v11.receiver = self;
  v11.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v11 willBeRemoved];
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
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

  v8 = [(CRLImageRep *)self imageInfo];
  v9 = [v8 store];
  v10 = [v9 assetManager];
  [v10 removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (id)layoutsForChildReps
{
  v11.receiver = self;
  v11.super_class = CRLImageRep;
  v3 = [(CRLCanvasRep *)&v11 layoutsForChildReps];
  v4 = [(CRLImageRep *)self imageLayout];
  v5 = [v4 maskLayout];

  if (v5)
  {
    v6 = [(CRLImageRep *)self imageLayout];
    v7 = [v6 maskLayout];
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [v3 crl_arrayByRemovingObjectsIdenticalToObjectsInArray:v8];

    v3 = v9;
  }

  return v3;
}

- (void)updateFromLayout
{
  v38.receiver = self;
  v38.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v38 updateFromLayout];
  [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = [(CRLImageRep *)self imageInfo];
    v5 = [v4 maskInfo];

    if (!v5)
    {
      [(CRLImageRep *)self p_endEditingMask];
    }
  }

  else
  {
  }

  v6 = [(CRLCanvasRep *)self canvas];
  if (![v6 isCanvasInteractive])
  {
    goto LABEL_23;
  }

  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [v7 isInDynamicOperation];

  if ((v8 & 1) == 0)
  {
    v6 = [(CRLImageRep *)self imageLayout];
    v9 = [v6 maskLayout];
    memset(&v37, 0, sizeof(v37));
    if (v6)
    {
      [v6 layoutToImageTransform];
    }

    v10 = [v6 imageGeometryInRoot];
    v11 = [v9 geometryInRoot];
    t1 = v37;
    v12 = *&self->_lastLayoutToImageTransform.c;
    *&t2.a = *&self->_lastLayoutToImageTransform.a;
    *&t2.c = v12;
    *&t2.tx = *&self->_lastLayoutToImageTransform.tx;
    v13 = CGAffineTransformEqualToTransform(&t1, &t2);
    if (v9)
    {
      if ([v10 isEqual:self->_lastImageGeometryInRoot])
      {
        v14 = 0;
      }

      else
      {
        v14 = [v10 differsInMoreThanTranslationFrom:self->_lastImageGeometryInRoot];
      }

      if ([v11 isEqual:self->_lastMaskGeometryInRoot])
      {
        v15 = 0;
      }

      else
      {
        v15 = [v11 differsInMoreThanTranslationFrom:self->_lastMaskGeometryInRoot];
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
    v16 = [v10 copy];
    lastImageGeometryInRoot = self->_lastImageGeometryInRoot;
    self->_lastImageGeometryInRoot = v16;

    v18 = [v11 copy];
    lastMaskGeometryInRoot = self->_lastMaskGeometryInRoot;
    self->_lastMaskGeometryInRoot = v18;

    v20 = *&v37.c;
    *&self->_lastLayoutToImageTransform.a = *&v37.a;
    *&self->_lastLayoutToImageTransform.c = v20;
    *&self->_lastLayoutToImageTransform.tx = *&v37.tx;

LABEL_23:
  }

  v21 = [(CRLImageRep *)self imageLayout];
  v22 = [v21 isInMaskEditMode];

  if (v22)
  {
    v23 = [(CRLCanvasRep *)self interactiveCanvasController];
    v24 = [v23 layerHost];
    v25 = [v24 imageHUDController];
    [v25 updateControlsForRep:self];

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

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLImageRep *)self imageLayout];
  v9 = [v8 pathToStroke];

  if (v9)
  {
    v10 = [CRLBezierPath bezierPathWithCGPath:v9];
    v11 = [(CRLCanvasRep *)self layout];
    v12 = v11;
    if (v11)
    {
      [v11 transformInRoot];
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditMode];

  if (v4 == 3)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 imageGeometry];
    [v6 size];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 asiOSCVC];
  v6 = [v5 delegate];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 currentDocumentMode];
    if (v7)
    {
      v8 = [(CRLImageRep *)self imageLayout];
      v9 = [v8 isInMaskEditMode];

      if (v9)
      {
        if (([v7 allowsEditMask] & 1) == 0)
        {
          [(CRLImageRep *)self endEditingMask];
        }
      }
    }
  }
}

- (BOOL)allowsSupportedDynamicOperationsToBeRealTime
{
  v2 = [(CRLImageRep *)self imageLayout];
  v3 = [v2 isInMaskEditMode];

  return v3 ^ 1;
}

- (id)visuallySignificantDataSet
{
  v2 = [(CRLImageRep *)self imageInfo];
  v3 = [v2 imageAssetPayload];

  if (v3)
  {
    v4 = [[NSSet alloc] initWithObjects:{v3, 0}];
  }

  else
  {
    v4 = +[NSSet set];
  }

  v5 = v4;

  return v5;
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v9 = a7;
  v11 = a4;
  v14 = 1.0;
  if (a6)
  {
    [(CRLStyledRep *)self opacity:a3];
  }

  [(CRLImageRep *)self p_drawInContext:a3 withContent:v11 strokeDrawOptions:a5 withOpacity:1 withMask:0 forLayer:v9 forShadow:v14 forHitTest:?];
}

- (id)imageOfStroke:(CGRect *)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(CRLCanvasRep *)self layout];
  v10 = [v9 stroke];

  if (v10 && [v10 shouldRender])
  {
    v11 = [(CRLImageRep *)self imageLayout];
    if ([v11 pathToStroke])
    {
      +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v11 pathToStroke]);
    }

    else
    {
      v13 = [v11 imageGeometry];
      [v13 size];
      v14 = sub_10011ECB4();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      [CRLBezierPath bezierPathWithRect:v14, v16, v18, v20];
    }
    v21 = ;
    [v21 boundsIncludingCRLStroke:v10];
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

  a3->origin.x = x;
  a3->origin.y = y;
  a3->size.width = width;
  a3->size.height = height;

  return v12;
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forLayer:(BOOL)a8 forShadow:(BOOL)a9 forHitTest:(BOOL)a10
{
  v10 = a9;
  v11 = a8;
  v12 = a7;
  v14 = a5;
  v15 = a4;
  v18 = [(CRLStyledRep *)self styledLayout];
  v19 = [v18 isInvisible];

  if (v19)
  {
    return;
  }

  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [v20 BOOLForKey:@"TSDSuppressImageInterpolation"];

  if (v11 && v21)
  {
    CGContextSetInterpolationQuality(a3, kCGInterpolationNone);
  }

  v22 = [(CRLCanvasRep *)self canvas];
  if ([v22 isDrawingIntoPDF])
  {
    v59 = 0;
  }

  else
  {
    v23 = [(CRLCanvasRep *)self canvas];
    v59 = [v23 isPrinting] ^ 1;
  }

  v24 = [(CRLCanvasRep *)self layout];
  v25 = [v24 stroke];

  if (v25)
  {
    if (![v25 shouldRender])
    {
      v35 = 0;
      goto LABEL_17;
    }

    v26 = v11;
    v27 = [(CRLCanvasRep *)self canvas];
    v28 = [v27 shouldSuppressBackgrounds];

    if (v28)
    {
      v29 = [v25 mutableCopy];

      v30 = +[CRLColor blackColor];
      [v29 setColor:v30];

      v25 = v29;
    }

    v11 = v26;
    if (v25 && a10 && ([v25 prefersToApplyToShapeRenderableDuringManipulation] & 1) == 0)
    {
      v63 = [CRLStroke alloc];
      v58 = [v25 color];
      [v25 width];
      v32 = v31;
      v61 = [v25 cap];
      v57 = [v25 join];
      v33 = [v25 pattern];
      [v25 miterLimit];
      v35 = [(CRLStroke *)v63 initWithColor:v58 width:v61 cap:v57 join:v33 pattern:v32 miterLimit:v34];

      v11 = v26;
      v25 = v58;
LABEL_17:

      v25 = v35;
    }
  }

  v36 = a6 < 1.0 && v15;
  v64 = v14 & v36;
  if ((v14 & v36) == 1 && (CGContextSaveGState(a3), CGContextSetAlpha(a3, a6), v25))
  {
    CGContextBeginTransparencyLayer(a3, 0);
    v62 = 1;
  }

  else
  {
    v62 = 0;
  }

  CGContextSaveGState(a3);
  v37 = [(CRLImageRep *)self imageLayout];
  [(CRLImageRepDrawingHelper *)self->_drawingHelper imageRectInContext:a3];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (v15)
  {
    v46 = [v37 maskLayout];
    if (v46 && v12)
    {
      memset(&transform, 0, sizeof(transform));
      if (v37)
      {
        [v37 layoutToMaskTransform];
      }

      [v46 pathBounds];
      v65 = transform;
      CGAffineTransformTranslate(&v66, &v65, -v47, -v48);
      transform = v66;
      v49 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v46 path]);
      v66 = transform;
      [v49 transformUsingAffineTransform:&v66];
      if (v59)
      {
        [v49 aliasedPathInContext:a3 effectiveStrokeWidth:0.0];
        v60 = v14;
        v14 = v10;
        v51 = v50 = v11;

        v49 = v51;
        v11 = v50;
        v10 = v14;
        LOBYTE(v14) = v60;
      }

      CGContextAddPath(a3, [v49 CGPath]);
      CGContextClip(a3);
    }

    if (v37)
    {
      [v37 layoutToImageTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(a3, &transform);
    CGContextSaveGState(a3);
    [(CRLImageRepDrawingHelper *)self->_drawingHelper drawInContext:a3 forLayer:v11 forShadowOrHitTest:v10 | a10];
    CGContextRestoreGState(a3);
  }

  CGContextRestoreGState(a3);
  if ((v14 & 1) == 0 || !v25 || v11 && [(CRLImageRep *)self directlyManagesLayerContent])
  {
    goto LABEL_54;
  }

  CGContextSaveGState(a3);
  if (![v37 pathToStroke])
  {
    if (v37)
    {
      [v37 layoutToImageTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(a3, &transform);
    v56 = [v37 pathToStroke];
    if (!v56)
    {
      [v25 paintRect:a3 inContext:{v39, v41, v43, v45}];
      goto LABEL_53;
    }

    v55 = v56;
    v54 = v25;
    goto LABEL_52;
  }

  v52 = [v37 pathToStroke];
  if (v52)
  {
    v53 = v52;
    if (v37)
    {
      [v37 layoutToMaskTransform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    CGContextConcatCTM(a3, &transform);
    v54 = v25;
    v55 = v53;
LABEL_52:
    [v54 paintPath:v55 inContext:a3];
  }

LABEL_53:
  CGContextRestoreGState(a3);
LABEL_54:
  if (v62)
  {
    CGContextEndTransparencyLayer(a3);
  }

  if (v64)
  {
    CGContextRestoreGState(a3);
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
  v11 = [(CRLImageRep *)self imageLayout];
  v12 = [v11 maskLayout];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 pathToStroke];

    if (v14)
    {
      if (!self->_frameInUnscaledCanvasIsValid)
      {
        v15 = [(CRLCanvasRep *)self layout];
        v16 = [v15 stroke];

        memset(&v24, 0, sizeof(v24));
        if (v11)
        {
          [v11 layoutToMaskTransform];
          [v11 transformInRoot];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
          memset(&v22, 0, sizeof(v22));
        }

        CGAffineTransformConcat(&v24, &t1, &v22);
        v17 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v11 pathToStroke]);
        t1 = v24;
        [v17 transformUsingAffineTransform:&t1];
        [v17 boundsIncludingCRLStroke:v16];
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

- (id)imageDrawingHelperImageData:(id)a3
{
  v3 = [(CRLImageRep *)self imageInfo];
  v4 = [v3 imageAssetPayload];

  return v4;
}

- (id)imageDrawingHelperThumbnailImageData:(id)a3
{
  v3 = [(CRLImageRep *)self imageInfo];
  v4 = [v3 thumbnailAssetPayload];

  return v4;
}

- (CGRect)imageDrawingHelperImageRect:(id)a3
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 imageGeometry];
  [v4 size];
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

- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)a3
{
  v8 = [(CRLImageRep *)self imageLayout];
  v5 = [v8 imageGeometryInRoot];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)imageDrawingHelperImageHasAlpha:(id)a3
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 hasAlpha];

  return v4;
}

- (CGPath)imageDrawingHelper:(id)a3 newMaskPathForSizedImageWithSize:(CGSize)a4 orientation:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v8 = [(CRLImageRep *)self imageLayout];
  v9 = [CRLImageRep p_newPathToBakeIntoSizedImageForSize:v8 withImageLayout:a5 orientation:width, height];

  return v9;
}

- (BOOL)imageDrawingHelperShouldGenerateSizedImageSynchronously:(id)a3
{
  v4 = [(CRLImageRep *)self imageInfo];
  v5 = [v4 shadow];
  if (v5)
  {
    v6 = [(CRLImageRep *)self imageInfo];
    v7 = [v6 shadow];
    v8 = [v7 isEnabled] ^ 1;
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

- (BOOL)imageDrawingHelperShouldRetryGeneratingSizedImageLater:(id)a3
{
  v3 = +[_TtC8Freeform25CRLApplicationCoordinator shared];
  v4 = [v3 isActivating];

  return v4;
}

- (void)imageDrawingHelper:(id)a3 didGenerateSizedImageSynchronously:(BOOL)a4
{
  v4 = a4;
  v6 = +[NSThread isMainThread];
  if (v4)
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

    v10 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v10 canvasInvalidatedForRep:self];
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

- (CGRect)imageDrawingHelperRectForCenteringDownloadProgressPlaceholderImage:(id)a3
{
  [(CRLImageRep *)self boundsForStandardKnobs];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CRLImageRep *)self imageLayout];
  v13 = v12;
  if (v12)
  {
    [v12 layoutToImageTransform];
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
  v4 = [(CRLImageRepDrawingHelper *)self->_drawingHelper imageDataForDrawing];
  v5 = [v3 providerForAsset:v4 shouldValidate:1];

  return v5;
}

- (id)p_validatedBitmapImageProvider
{
  v3 = objc_opt_class();
  v4 = [(CRLImageRep *)self p_validatedImageProvider];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (BOOL)p_drawsInOneStep
{
  v3 = [(CRLImageRep *)self imageInfo];
  v4 = [v3 stroke];
  v5 = [v4 shouldRender];

  v6 = [v3 maskInfo];

  v7 = [(CRLImageRep *)self imageLayout];
  if ([v7 hasAlpha])
  {
    v8 = [(CRLImageRepDrawingHelper *)self->_drawingHelper drawsBitmap];
  }

  else
  {
    v8 = 1;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v6 == 0) & v8;
  }

  return v9;
}

- (BOOL)shouldShowShadow
{
  v10.receiver = self;
  v10.super_class = CRLImageRep;
  v3 = [(CRLStyledRep *)&v10 shouldShowShadow];
  if (v3)
  {
    if ([(CRLCanvasRep *)self isBeingDragged])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(CRLCanvasRep *)self isBeingFreeTransformDragged];
    }

    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 isInMaskEditMode];

    if (v6 && (v4 & 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v7 = [(CRLCanvasRep *)self canvas];
      v8 = [v7 shouldSuppressBackgrounds];

      LOBYTE(v3) = v8 ^ 1;
    }
  }

  return v3;
}

- (void)highlightImage
{
  self->_showImageHighlight = 1;
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 canvasInvalidatedForRep:self];
}

- (void)unhighlightImage
{
  self->_showImageHighlight = 0;
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 canvasInvalidatedForRep:self];
}

- (void)maskWithHUD:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  [(CRLImageRep *)self p_setDefaultMaskWithActionString:v6];

  [(CRLImageRep *)self editMaskWithHUD:v3];
}

- (int64_t)maskEditMode
{
  v2 = [(CRLImageRep *)self imageLayout];
  v3 = [v2 maskEditMode];

  return v3;
}

- (BOOL)isMaskScaleFromLayout
{
  v2 = [(CRLImageRep *)self maskLayout];
  v3 = v2 != 0;

  return v3;
}

- (double)maskScale
{
  v3 = [(CRLImageRep *)self imageInfo];
  v4 = [(CRLImageRep *)self maskLayout];

  if (v4)
  {
    [(CRLImageRep *)self maskLayout];
  }

  else
  {
    [v3 defaultMaskInfo];
  }
  v5 = ;
  v6 = [v5 geometry];
  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = [v3 geometry];
  [v11 size];
  v13 = v12;
  v15 = v14;

  v16 = v13 / v8;
  v17 = v15 / v10;
  v18 = fmaxf(v16, v17);

  return v18;
}

- (void)maskScaleLimitsReturningMin:(double *)a3 max:(double *)a4
{
  [(CRLImageRep *)self maskScale];
  v8 = v7;
  v9 = [(CRLImageRep *)self p_validatedImageProvider];
  [v9 naturalSize];
  v12 = sub_10011F340(v10, v11, 8.0);
  v14 = v13;

  v15 = [(CRLImageRep *)self imageInfo];
  v16 = [v15 geometry];
  [v16 size];
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

  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = v24;
  }
}

- (id)newMaskResizer
{
  v3 = [CRLImageMaskResizer alloc];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [(CRLImageMaskResizer *)v3 initWithInteractiveCanvasController:v4];

  return v5;
}

- (void)beginDynamicallyChangingMaskScale
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if ((v4 & 1) == 0)
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

  v8 = [(CRLImageRep *)self imageLayout];
  [v8 maskModeScaleDidBegin];

  [(CRLCanvasRep *)self setShowKnobsDuringManipulation:1];
  v10.receiver = self;
  v10.super_class = CRLImageRep;
  v9 = [(CRLCanvasRep *)&v10 dynamicResizeDidBegin];
}

- (void)dynamicallySetMaskScale:(double)a3
{
  v5 = [(CRLImageRep *)self imageLayout];
  v6 = [v5 isInMaskEditMode];

  if ((v6 & 1) == 0)
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

  if (a3 > 0.0)
  {
    v10 = [(CRLImageRep *)self imageLayout];
    v11 = [v10 maskEditMode];

    if (v11 == 3)
    {
      [(CRLCanvasRep *)self invalidateKnobPositions];
    }
  }
}

- (void)endDynamicallyChangingMaskScale:(double)a3
{
  v4 = [(CRLImageRep *)self imageLayout];
  v5 = [v4 isInMaskEditMode];

  if ((v5 & 1) == 0)
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
  v9 = [(CRLImageRep *)self imageLayout];
  [v9 maskModeScaleDidEnd];

  [(CRLCanvasRep *)self setShowKnobsDuringManipulation:0];
}

- (void)endEditingMask
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditMode];

  if (!v4)
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

- (void)p_enterMaskModeIfNecessaryWithHUD:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLImageRep *)self imageLayout];
  v6 = [v5 isInMaskEditMode];

  if ((v6 & 1) == 0)
  {
    v7 = [(CRLImageRep *)self imageInfo];
    v8 = [v7 maskInfo];

    if (v8)
    {

      [(CRLImageRep *)self editMaskWithHUD:v3];
    }

    else
    {

      [(CRLImageRep *)self maskWithHUD:v3];
    }
  }
}

- (void)editMaskWithHUD:(BOOL)a3
{
  v3 = a3;
  if ([(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError])
  {
    return;
  }

  v5 = [(CRLImageRep *)self imageLayout];
  if ([v5 isInMaskEditMode])
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

  v6 = [(CRLImageRep *)self imageInfo];
  v7 = [v6 maskInfo];

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_14:
  [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImageIfItHasBakedMask];
  v11 = [(CRLCanvasRep *)self interactiveCanvasController];
  v12 = [v11 canvasEditor];
  v13 = [(CRLImageRep *)self imageInfo];
  v14 = [v12 selectionPathWithInfo:v13];
  v15 = [v11 editorController];
  [v15 setSelectionPath:v14];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v16 = [(CRLImageRep *)self imageLayout];
  v17 = [v16 maskLayout];

  if (!v17)
  {
    [v11 layoutIfNeeded];
  }

  v18 = [(CRLImageRep *)self imageLayout];
  [v18 beginEditingMaskInMaskEditMode:2];

  if (v3)
  {
    v19 = [(CRLCanvasRep *)self interactiveCanvasController];
    v20 = [v19 layerHost];
    v21 = [v20 miniFormatterPresenter];
    [v21 dismissMiniFormatter];

    v22 = [v11 layerHost];
    v23 = [v22 imageHUDController];
    [v23 showHUDForRep:self];
  }

  [(CRLImageRep *)self p_setUpMaskModeUI];
  +[CATransaction commit];
}

- (void)p_selectionPathDidChange:(id)a3
{
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v9 = [v4 infosForCurrentSelectionPath];

  if ([v9 count] != 1 || (objc_msgSend(v9, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    v7 = [(CRLImageRep *)self imageLayout];
    v8 = [v7 isInMaskEditMode];

    if (v8)
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
  v4 = [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData image];
  os_unfair_lock_unlock(&self->_backgroundRemovalLock);
  if (autoBackgroundRemovalState != 2)
  {
    v5 = [(CRLImageRep *)self imageInfo];
    v6 = [v5 isBackgroundRemoved];

    if ((v6 & 1) == 0 && !v4)
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    [(CRLImageRep *)self p_endEditingMask];
  }
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  x = a3.x;
  y = a3.y;
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
        LOBYTE(v12) = 1;
        return v12 & 1;
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
    LOBYTE(v12) = v65;
  }

  else
  {
    v13 = [(CRLImageRep *)self imageLayout];
    v14 = [v13 maskLayout];
    if (v14 && (v15 = v14, v16 = [v13 maskIntersectsImage], v15, (v9 & (v16 ^ 1) & 1) != 0))
    {
      v12 = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_50;
      }

      v39 = [(CRLImageRep *)self imageLayout];
      v12 = [v39 isInMaskEditMode];

      if (v12)
      {
        if (v13)
        {
          [v13 layoutToImageTransform];
        }

        else
        {
          memset(&v63, 0, sizeof(v63));
        }

        CGAffineTransformInvert(&v64, &v63);
        pointa = vaddq_f64(*&v64.tx, vmlaq_n_f64(vmulq_n_f64(*&v64.c, y), *&v64.a, x));
        v40 = [v13 imageGeometry];
        [v40 size];
        v68.origin.x = sub_10011ECB4();
        v12 = CGRectContainsPoint(v68, pointa);

        if (v12)
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
          v18 = [(CRLImageRep *)self imageLayout];
          v12 = 1;
          LOBYTE(v54) = 1;
          -[CRLImageRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:](self, "p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:", v17, 1, 7, [v18 isInMaskEditMode] ^ 1, 0, 0, 1.0, v54);

          CGContextRestoreGState(qword_101A34E88);
          if (!*qword_101A34E80)
          {
            v19 = &unk_101466738;
            if (!v4)
            {
              v19 = &unk_101466730;
            }

            v20 = *v19;
            v21 = [(CRLCanvasRep *)self canvas];
            [v21 viewScale];
            v23 = v20 / v22;

            v24 = ceil(v23 + v23);
            v25 = sub_10050DF80(19, v24, v24);
            Data = CGBitmapContextGetData(v25);
            CGContextSaveGState(v25);
            CGContextSetInterpolationQuality(v25, kCGInterpolationNone);
            CGContextTranslateCTM(v25, v23, v23);
            CGContextTranslateCTM(v25, -x, -y);
            v27 = [(CRLImageRep *)self imageLayout];
            LOBYTE(v55) = 1;
            -[CRLImageRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:](self, "p_drawInContext:withContent:strokeDrawOptions:withOpacity:withMask:forLayer:forShadow:forHitTest:", v25, 1, 7, [v27 isInMaskEditMode] ^ 1, 0, 0, 1.0, v55);

            CGContextRestoreGState(v25);
            Width = CGBitmapContextGetWidth(v25);
            Height = CGBitmapContextGetHeight(v25);
            BytesPerRow = CGBitmapContextGetBytesPerRow(v25);
            BitsPerPixel = CGBitmapContextGetBitsPerPixel(v25);
            if (Height)
            {
              v56 = v25;
              v57 = v13;
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
                  v12 = 0;
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

              v12 = 1;
LABEL_31:
              v25 = v56;
              v13 = v57;
            }

            else
            {
              v12 = 0;
            }

            CGContextRelease(v25);
          }
        }
      }
    }

    [(CRLImageRep *)self p_hitCacheSetCachedValue:v12 forPoint:x, y];
  }

  return v12 & 1;
}

- (BOOL)p_allowedToEditMask
{
  if ([(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError])
  {
    return 0;
  }

  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 allowedToEditMask];

  return v5;
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v5 = [(CRLImageRep *)self imageLayout:a4];
  v6 = [v5 isInMaskEditMode];

  if ((v6 & 1) == 0)
  {
    [(CRLImageRep *)self enterPreviewMode];
  }

  return v6 ^ 1;
}

- (void)p_handleImageMask
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 documentIsSharedReadOnly];

  if ((v4 & 1) == 0)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 isInMaskEditMode];

    if (v6)
    {
      v7 = [(CRLImageRep *)self imageLayout];
      v8 = [v7 isInMaskEditMode];

      if (v8)
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
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLImageRep;
    v4 = [(CRLStyledRep *)&v6 shouldShowSelectionHighlight];
  }

  return v4;
}

- (id)pathSourceForSelectionHighlightBehavior
{
  v2 = [(CRLImageRep *)self imageLayout];
  v3 = [v2 maskLayout];
  v4 = [v3 pathSource];

  return v4;
}

- (void)processChanges:(id)a3
{
  v4 = a3;
  [(CRLImageRep *)self p_updateDirectlyManagesLayerContentForRenderable:0];
  v5.receiver = self;
  v5.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v5 processChanges:v4];
}

- (void)processChangedProperty:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = CRLImageRep;
  [(CRLMediaRep *)&v16 processChangedProperty:?];
  if (a3 <= 15)
  {
    if (a3 == 7)
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
      v12 = [(CRLCanvasRep *)self canvas];
      [v12 canvasInvalidatedForRep:self];

      goto LABEL_19;
    }

    if (a3 == 12)
    {
      v9 = [(CRLImageRep *)self imageLayout];
      v10 = [v9 isInMaskEditMode];

      if (v10)
      {
        [(CRLImageRep *)self p_endEditingMask];
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 0x28uLL:
        goto LABEL_5;
      case 0x13uLL:
        [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
        [(CRLImageRep *)self p_listenForAssetChangesIfAppropriate];
        v13 = [(CRLImageRep *)self imageLayout];
        if ([v13 isInMaskEditMode])
        {
          v14 = [(CRLImageRepDrawingHelper *)self->_drawingHelper drawsError];

          if (v14)
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
        if (a3 == 40)
        {
          v5 = [(CRLImageRep *)self imageLayout];
          [v5 invalidateAlignmentFrame];
        }

        v6 = [(CRLImageRep *)self imageLayout];
        if (![v6 maskEditMode])
        {
          v7 = [(CRLImageRep *)self imageInfo];
          v8 = [v7 maskInfo];

          if (!v8)
          {
            goto LABEL_11;
          }

          v6 = [(CRLImageRep *)self imageLayout];
          [v6 maskWasApplied];
        }

LABEL_11:
        if (a3 != 40)
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

- (void)layoutInRootChangedFrom:(id)a3 to:(id)a4 translatedOnly:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v7 layoutInRootChangedFrom:a3 to:a4 translatedOnly:?];
  if (!a5)
  {
    self->_frameInUnscaledCanvasIsValid = 0;
  }
}

- (void)documentEditabilityDidChange
{
  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 documentEditabilityDidChange];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![v3 editingDisabled])
  {
    goto LABEL_4;
  }

  v4 = [(CRLImageRep *)self imageLayout];
  v5 = [v4 isInMaskEditMode];

  if (v5)
  {
    [(CRLImageRep *)self p_endEditingMask];
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v3 layerHost];
    v7 = [v6 imageHUDController];
    [v7 closeHUDWithAnimation:0];

LABEL_4:
  }

  [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
}

- (id)overlayRenderables
{
  v29.receiver = self;
  v29.super_class = CRLImageRep;
  v3 = [(CRLCanvasRep *)&v29 overlayRenderables];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (self->_showImageHighlight)
  {
    v6 = +[CRLCanvasShapeRenderable renderable];
    v7 = sub_1000CCEA0(0.458, 0.697, 0.916, 0.53);
    [v6 setFillColor:v7];
    CGColorRelease(v7);
    [v6 setLineWidth:1.0];
    [v6 setStrokeColor:0];
    v8 = [(CRLCanvasRep *)self canvas];
    [v8 viewScale];
    v10 = v9;

    [(CRLImageRep *)self boundsForStandardKnobs];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memset(&v28, 0, sizeof(v28));
    v19 = [(CRLCanvasRep *)self layout];
    v20 = v19;
    if (v19)
    {
      [v19 transformInRoot];
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    CGAffineTransformMakeScale(&t2, v10, v10);
    v25 = v28;
    CGAffineTransformConcat(&v27, &v25, &t2);
    v28 = v27;
    v21 = [(CRLCanvasRep *)self canvas];
    [v21 contentsScale];
    v23 = sub_10018F420(&v28.a, v12, v14, v16, v18, 1.0, v22);

    [v6 setPath:v23];
    CGPathRelease(v23);
    [v6 setDelegate:v5];
    [v4 addObject:v6];
  }

  return v4;
}

- (BOOL)hitRepChrome:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = CRLImageRep;
  return [(CRLCanvasRep *)&v4 hitRepChrome:a3.x, a3.y];
}

- (CGPoint)positionOfMediaReplaceKnobForBounds:(CGRect)a3 viewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
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
  v14 = MaxX - 36.0 / a4;
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
    v14 = 36.0 / a4 + MinX;
  }

  v16 = v15 - 36.0 / a4;
  result.y = v16;
  result.x = v14;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v39.receiver = self;
  v39.super_class = CRLImageRep;
  v9 = a3;
  [(CRLCanvasRep *)&v39 positionOfStandardKnob:v9 forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v14 = [(CRLImageRep *)self imageLayout];
  if ([v14 maskEditMode] != 3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v15 = [(CRLCanvasRep *)self layout];
  if ([v15 layoutState] != 4)
  {

    goto LABEL_6;
  }

  v16 = [(CRLImageRep *)self imageLayout];
  v17 = [v16 isInMaskScaleMode];

  if (v17)
  {
LABEL_6:
    v18 = [(CRLImageRep *)self imageLayout];
    v14 = v18;
    if (v18)
    {
      [v18 layoutToImageTransform];
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
  v26 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];

  if (v26 == v9)
  {
    if (![(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
    {
      [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
    }

    v27 = [(CRLCanvasRep *)self canvas];
    [v27 viewScale];
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditMode];

  if (v4 == 3)
  {
    v12 = self;
    v5 = &selRef_boundsForStandardKnobs;
    v6 = &v12;
  }

  else
  {
    v11 = self;
    v5 = &selRef_boundsForHighlightLayer;
    v6 = &v11;
  }

  v6[1] = CRLImageRep;
  objc_msgSendSuper2(v6, *v5, v11);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGAffineTransform)transformForHighlightLayer
{
  v5 = [(CRLCanvasRep *)self currentKnobTracker];
  if (v5 && (v6 = v5, -[CRLImageRep imageLayout](self, "imageLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 maskEditMode], v7, v6, v8 != 3))
  {
    v10 = [(CRLCanvasRep *)self currentKnobTracker];
    if (v10)
    {
      v11 = v10;
      [v10 transformInRootForStandardKnobs];
      v10 = v11;
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
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLImageRep;
    v4 = [(CRLMediaRep *)&v6 shouldAllowReplacementFromPaste];
  }

  return v4;
}

- (BOOL)canPasteDataFromPhysicalKeyboard:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CRLCanvasRep *)self info];
  v7 = sub_100014370(v5, v6);

  v8 = [v7 imageAssetPayload];

  return v8 != v4;
}

- (id)commandForAcceptingPasteWithImageInfo:(id)a3 outSelectionBehavior:(id *)a4
{
  v6 = a3;
  v7 = [(CRLImageRep *)self imageInfo];
  v8 = +[NSMutableArray array];
  v9 = [v7 maskInfo];

  if (!v9)
  {
    v10 = [_TtC8Freeform17CRLCommandSetMask alloc];
    v11 = [v7 defaultMaskInfo];
    v12 = [(CRLCommandSetMask *)v10 initWithImageItem:v7 maskInfo:v11];

    [v8 addObject:v12];
  }

  v13 = [_TtC8Freeform22CRLCommandReplaceImage alloc];
  v14 = [v6 imageAssetPayload];
  v15 = [v6 thumbnailAssetPayload];

  v16 = [(CRLCommandReplaceImage *)v13 initWithImageItem:v7 imageData:v14 thumbnailData:v15];
  [v8 addObject:v16];

  if ([v8 count])
  {
    v17 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v8];
    v18 = [(CRLCanvasRep *)self interactiveCanvasController];
    v19 = [v18 editorController];

    v20 = [v19 mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLCanvasEditor];
    if (a4)
    {
      v21 = [CRLCanvasCommandSelectionBehavior alloc];
      v22 = [v19 selectionPath];
      *a4 = [(CRLCanvasCommandSelectionBehavior *)v21 initWithCanvasEditor:v20 type:2 selectionPath:v22 selectionFlags:4];
    }
  }

  else
  {
    v17 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v17;
}

- (BOOL)p_isResizingImageInMaskEditMode
{
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 layoutState] == 4)
  {
    v4 = [(CRLImageRep *)self imageLayout];
    v5 = [v4 maskEditMode] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)p_isResizingMaskInMaskEditMode
{
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 layoutState] == 4)
  {
    v4 = [(CRLImageRep *)self imageLayout];
    v5 = [v4 maskEditMode] == 2;
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
    v15 = [(CRLImageRep *)self imageLayout];
    v16 = [v15 isInMaskEditMode];

    if (v16)
    {
      v17 = [(CRLImageRep *)self maskLayout];
      [v17 boundsForStandardKnobs];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(CRLImageRep *)self imageLayout];
      v27 = v26;
      if (v26)
      {
        [v26 layoutToMaskTransform];
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
    v6 = [(CRLCanvasRep *)self layout];
    v7 = v6;
    if (v6)
    {
      [v6 transformInRoot];
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
  v2 = [(CRLImageRep *)self imageLayout];
  v3 = [v2 isInMaskEditMode];

  return v3 ^ 1;
}

- (void)dynamicDragDidBegin
{
  v3 = [(CRLImageRep *)self imageLayout];
  [v3 validate];

  v4 = [(CRLImageRep *)self imageLayout];
  v5 = [v4 isInMaskEditMode];

  if (v5)
  {
    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    v7 = [v6 dynamicOperationController];
    [v7 invalidateGuides];
  }

  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 dynamicDragDidBegin];
}

- (BOOL)providesGuidesWhileAligning
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (!v4)
  {
    v10.receiver = self;
    v10.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v10 providesGuidesWhileAligning];
  }

  if ([(CRLCanvasRep *)self isBeingResized])
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 imageGeometryInRoot];
    v7 = v6;
    if (v6)
    {
      [v6 transform];
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
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = [(CRLCanvasRep *)self isInDynamicOperation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionStringForDrag
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    v6 = [(CRLCanvasRep *)&v8 actionStringForDrag];
  }

  return v6;
}

- (CGRect)snapRectForDynamicDragWithOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLImageRep *)self imageLayout];
  v7 = [v6 maskEditModeForDragging];

  v8 = [(CRLImageRep *)self imageLayout];
  v9 = v8;
  if (v7 == 3)
  {
    v10 = [v8 imageGeometry];
    [v10 size];
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
    v18 = [v8 maskEditModeForDragging];

    if (v18 == 2)
    {
      v19 = [(CRLImageRep *)self maskLayout];
      v20 = [v19 geometry];
      [v20 size];
      v21 = sub_10011ECB4();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      memset(&v47, 0, sizeof(v47));
      v28 = [(CRLImageRep *)self imageLayout];
      v29 = v28;
      if (v28)
      {
        [v28 layoutToMaskTransform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v38 = [(CRLImageRep *)self imageLayout];
      v39 = v38;
      if (v38)
      {
        [v38 transformInRoot];
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 currentInfoGeometry];
    [v6 position];
    v8 = v7;
    v10 = v9;
    v11 = [(CRLCanvasRep *)self info];
    v12 = [v11 geometry];
    [v12 position];
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
  v2 = [(CRLImageRep *)self imageLayout];
  if ([v2 isInMaskEditMode])
  {
    if ([v2 isDraggingInMaskEditMode])
    {
      v3 = [v2 maskEditModeForDragging];
LABEL_9:
      v4 = v3 == 3;
      goto LABEL_10;
    }

    if ([v2 isRotatingInMaskEditMode])
    {
      v3 = [v2 maskEditModeForRotating];
      goto LABEL_9;
    }

    if ([v2 isResizingInMaskEditMode])
    {
      v3 = [v2 maskEditModeForResizing];
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

- (id)newCommandToApplyGeometry:(id)a3 toInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLImageRep *)self imageInfo];
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    v10 = [(CRLImageRep *)self maskInfo];

    if (v10 != v7)
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
        v42 = v7;
        v43 = 2112;
        v44 = self;
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
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1539 isFatal:0 description:"called newCommandToApplyGeometry on and info %@ that the rep %@ does not know about", v7, self];
    }
  }

  v16 = [(CRLImageRep *)self imageInfo];
  if (!v16)
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

  v20 = [(CRLImageRep *)self p_currentEditOperationDidChangeTheImageGeometry];
  v21 = [(CRLImageRep *)self maskLayout];
  v22 = [v21 infoGeometry];
  v23 = [v22 mutableCopy];

  v24 = [(CRLImageRep *)self maskLayout];
  v25 = [v24 pathSource];
  v26 = [v25 copy];

  if (v20)
  {
    v27 = v6;
    v28 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:v16 imageGeometry:v27 maskGeometry:v23 maskPathSource:v26];
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

    v28 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:v16 imageGeometry:0 maskGeometry:v23 maskPathSource:v26];
  }

  return v28;
}

- (BOOL)maskGeometryDidChange
{
  v3 = [(CRLImageRep *)self maskLayout];
  v4 = [v3 infoGeometry];

  v5 = [(CRLImageRep *)self maskInfo];
  if (v5)
  {
    v6 = [(CRLImageRep *)self maskInfo];
    v7 = [v6 geometry];
    v8 = [v7 isEqual:v4] ^ 1;
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

  v4 = [(CRLImageRep *)self imageLayout];
  if ([v4 isInMaskEditMode])
  {
    v3 = [(CRLImageRep *)self maskGeometryDidChange];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dynamicOperationDidEnd
{
  v8.receiver = self;
  v8.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v8 dynamicOperationDidEnd];
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 layerHost];
    v7 = [v6 imageHUDController];
    [v7 showHUDForRep:self];
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

  v4 = [(CRLImageRep *)self imageLayout];
  v3 = [v4 isInMaskEditMode];

  return v3;
}

- (BOOL)allowDragAcrossPageBoundaries
{
  v6.receiver = self;
  v6.super_class = CRLImageRep;
  if ([(CRLCanvasRep *)&v6 allowDragAcrossPageBoundaries])
  {
    v3 = [(CRLImageRep *)self imageLayout];
    v4 = [v3 isInMaskEditMode] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)dynamicResizeDidBegin
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 dynamicOperationController];
    [v6 invalidateGuides];
  }

  v17.receiver = self;
  v17.super_class = CRLImageRep;
  v7 = [(CRLCanvasRep *)&v17 dynamicResizeDidBegin];
  v8 = [(CRLImageRep *)self imageLayout];
  v9 = [v8 maskEditModeForResizing];

  if (v9 == 2)
  {
    v10 = [(CRLImageRep *)self maskLayout];
  }

  else
  {
    v11 = [(CRLImageRep *)self maskLayout];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
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

    v10 = [(CRLCanvasRep *)self layout];
  }

  return v10;
}

- (id)infoForTransforming
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditModeForResizing];

  if (v4 == 2)
  {
    v5 = [(CRLImageRep *)self maskInfo];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    v5 = [(CRLCanvasRep *)&v7 infoForTransforming];
  }

  return v5;
}

- (BOOL)wantsGuidesWhileResizing
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
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

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  memset(&v26, 0, sizeof(v26));
  v5 = [(CRLImageRep *)self maskInfo];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(CRLImageRep *)self imageLayout];
  if ([v7 maskEditModeForResizing] != 2 || -[CRLCanvasRep isBeingRotated](self, "isBeingRotated"))
  {

LABEL_5:
    v8 = [(CRLImageRep *)self imageLayout];
    v9 = [v8 originalImageGeometry];
    goto LABEL_6;
  }

  v14 = [(CRLCanvasRep *)self isBeingFreeTransformed];

  if (v14)
  {
    goto LABEL_5;
  }

  v15 = [(CRLCanvasRep *)self info];
  v16 = [v15 geometry];
  v17 = v16;
  if (v16)
  {
    [v16 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v18 = *&a3->c;
  *&v23.a = *&a3->a;
  *&v23.c = v18;
  *&v23.tx = *&a3->tx;
  CGAffineTransformConcat(&t2, &t1, &v23);
  v19 = [(CRLCanvasRep *)self info];
  v20 = [v19 geometry];
  v21 = v20;
  if (v20)
  {
    [v20 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformInvert(&v23, &t1);
  CGAffineTransformConcat(&t1, &t2, &v23);
  v22 = *&t1.c;
  *&a3->a = *&t1.a;
  *&a3->c = v22;
  *&a3->tx = *&t1.tx;

  v8 = [(CRLImageRep *)self maskInfo];
  v9 = [v8 geometry];
LABEL_6:
  v10 = v9;
  if (v9)
  {
    [v9 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v11 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v11;
  *&t2.tx = *&a3->tx;
  CGAffineTransformConcat(&v26, &t1, &t2);

  t1 = v26;
  v12 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v12;
}

- (id)actionStringForResize
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    v6 = [(CRLCanvasRep *)&v8 actionStringForResize];
  }

  return v6;
}

- (CGPoint)centerForRotation
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    [v5 centerForRotationInMaskMode];
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditModeForRotating];

  if (v4 == 3)
  {
    v10.receiver = self;
    v10.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v10 angleForRotation];
  }

  else
  {
    v6 = [(CRLImageRep *)self imageInfo];
    v7 = [v6 geometryWithMask];
    [v7 angle];
    v9 = v8;

    return v9;
  }

  return result;
}

- (CGPoint)unscaledGuidePosition
{
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 maskEditModeForRotating];

  if (v4 == 3)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 imageGeometry];
    [v6 size];
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
    v14 = [(CRLImageRep *)self imageLayout];
    v15 = v14;
    if (v14)
    {
      [v14 layoutToImageTransform];
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
  v3 = [(CRLImageRep *)self imageLayout];
  v4 = [v3 isInMaskEditMode];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Edit Mask" value:0 table:@"UndoStrings"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLImageRep;
    v6 = [(CRLCanvasRep *)&v8 actionStringForRotate];
  }

  return v6;
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
  v3 = [(CRLImageRep *)self dynamicResizeDidBegin];
  v4 = [(CRLImageRep *)self maskLayout];
  [v4 dynamicMovePathKnobDidBegin];
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  v10 = *&a3.y;
  v11 = a3;
  v5 = a4;
  v6 = [(CRLImageRep *)self imageLayout];
  v7 = v6;
  if (v6)
  {
    [v6 layoutToMaskTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformInvert(&v14, &v13);
  v12 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *&v10), *&v14.a, v11.x));

  v8 = [(CRLImageRep *)self maskLayout];
  [v8 dynamicallyMovedSmartShapeKnobTo:v5 withTracker:*&v12];

  self->_frameInUnscaledCanvasIsValid = 0;
  v9 = [v8 layoutController];
  [v9 validateLayoutWithDependencies:v8];

  [(CRLCanvasRep *)self invalidateKnobPositions];
  [(CRLStyledRep *)self setNeedsDisplay];
}

- (void)dynamicMoveSmartShapeKnobDidEndWithTracker:(id)a3
{
  v14 = [(CRLImageRep *)self maskLayout];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 commandController];
  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [v4 canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v7];

  v9 = [_TtC8Freeform17CRLCommandSetMask alloc];
  v10 = [(CRLImageRep *)self imageInfo];
  v11 = [v14 infoGeometry];
  v12 = [v14 pathSource];
  v13 = [(CRLCommandSetMask *)v9 initWithImageItem:v10 maskGeometry:v11 maskPath:v12];

  [v5 enqueueCommand:v13 withSelectionBehavior:v8];
  [(CRLCanvasRep *)self dynamicResizeDidEndWithTracker:0];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)beginEditingMaskInMaskEditMode:(int64_t)a3
{
  [(CRLImageRep *)self p_enterMaskModeIfNecessaryWithHUD:1];
  v5 = [(CRLImageRep *)self imageLayout];
  v6 = [v5 maskEditMode];

  if (v6 != a3)
  {
    v7 = [(CRLImageRep *)self imageLayout];
    [v7 beginEditingMaskInMaskEditMode:a3];

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
  v9 = [(CRLImageRep *)self imageInfo];
  v10 = [v9 imageAssetPayload];
  (v8[2])(v8, v10, 0);

  v11 = [(CRLImageRep *)self imageInfo];
  v12 = [v11 thumbnailAssetPayload];
  (v8[2])(v8, v12, 1);
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
      v6 = [(NSUUID *)downloadObserverIdentifier UUIDString];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Image Rep with observerUUID %{public}@ preparing for the downloaded asset", &v9, 0xCu);
    }

    v7 = [(CRLCanvasRep *)self layout];
    [v7 processChangedProperty:19];
    [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
    [(CRLStyledRep *)self setNeedsDisplay];
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v8 invalidateContentLayersForRep:self];
  }
}

- (void)p_updateDirectlyManagesLayerContentForRenderable:(id)a3
{
  directlyManagesLayerContent = self->_directlyManagesLayerContent;
  v5 = [(CRLImageRep *)self p_directlyManagesContentForRenderable:a3];
  self->_directlyManagesLayerContent = v5;
  if (!directlyManagesLayerContent || v5)
  {
    if (!directlyManagesLayerContent && v5)
    {
      v6 = [(CRLCanvasRep *)self canvas];
      v7 = [v6 isCanvasInteractive];

      if (v7)
      {
        v8 = [(CRLCanvasRep *)self interactiveCanvasController];
        v9 = [v8 renderableForRep:self];

        [v9 setContents:0];
      }
    }
  }

  else
  {

    [(CRLStyledRep *)self setNeedsDisplay];
  }
}

- (BOOL)p_directlyManagesContentForRenderable:(id)a3
{
  v4 = [(CRLImageRepDrawingHelper *)self->_drawingHelper canRenderDirectlyManagedForRenderable:a3];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v5 createRepsForOffscreenLayouts])
  {
    v6 = 0;
    if (!v4)
    {
LABEL_3:
      v7 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    [v5 visibleBoundsRectForTiling];
    [v5 convertBoundsToUnscaledRect:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CRLCanvasRep *)self layout];
    v17 = [v16 geometryInRoot];
    [v17 frame];
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

  v19 = [(CRLCanvasRep *)self layout];
  v20 = [v19 stroke];

  if (([v20 shouldRender] & 1) == 0)
  {

    v20 = 0;
  }

  v21 = [(CRLImageRep *)self imageLayout];
  if ([v21 isInMaskEditMode])
  {
    v22 = 1;
  }

  else
  {
    v22 = [(CRLCanvasRep *)self isBeingResized];
  }

  v23 = [(CRLCanvasRep *)self layout];
  if ([v23 isStrokeBeingManipulated])
  {
    v24 = [v20 prefersToApplyToShapeRenderableDuringManipulation];
  }

  else
  {
    v24 = 0;
  }

  if (v20)
  {
    v25 = [v20 canApplyToShapeRenderable];
  }

  else
  {
    v25 = 1;
  }

  if ((v22 | v24) & 1) != 0 && (v25)
  {
    v7 = 1;
  }

  else
  {
    v26 = [(CRLImageRepDrawingHelper *)self->_drawingHelper imagePrefersDrawing]|| v6;
    v7 = v26 ^ 1;
    if (v20 && (v26 & 1) == 0)
    {
      if ([v20 prefersToApplyToShapeRenderableDuringManipulation] && (-[CRLStyledRep opacity](self, "opacity"), v27 == 1.0))
      {
        v7 = [v20 canApplyToShapeRenderable];
      }

      else
      {
        v7 = 0;
      }
    }
  }

LABEL_26:
  return v7 & 1;
}

- (void)p_getAliasedValuesForMaskToBoundsDirectLayerFrame:(CGRect *)a3 transform:(CGAffineTransform *)a4
{
  v7 = [(CRLImageRep *)self imageLayout];
  v8 = [v7 pureGeometry];
  v9 = v8;
  if (v8)
  {
    [v8 fullTransform];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  v10 = [CRLCanvasLayoutGeometry geometryFromFullTransform:&v25];

  v11 = [v10 mutableCopy];
  memset(&v25, 0, sizeof(v25));
  v12 = [(CRLImageRep *)self imageLayout];
  v13 = [v12 imageGeometry];
  v14 = v13;
  if (v13)
  {
    [v13 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v15 = [(CRLImageRep *)self imageLayout];
  v16 = [v15 pureGeometry];
  v17 = v16;
  if (v16)
  {
    [v16 transform];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  CGAffineTransformInvert(&t2, &v22);
  CGAffineTransformConcat(&v25, &t1, &t2);

  memset(&t1, 0, sizeof(t1));
  v18 = [(CRLImageRep *)self imageLayout];
  v19 = [v18 maskLayout];
  v20 = [v19 pureGeometry];
  v21 = v20;
  if (v20)
  {
    [v20 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v22 = v25;
  CGAffineTransformConcat(&t1, &t2, &v22);

  t2 = t1;
  [v11 transformBy:&t2];
  [(CRLCanvasRep *)self computeDirectLayerFrame:a3 andTransform:a4 basedOnLayoutGeometry:v11];
}

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  if ([(CRLImageRep *)self directlyManagesLayerContent])
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v6 = [v5 imageGeometry];
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

        v11 = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe orientation];
        memset(&v20, 0, sizeof(v20));
        sub_1004F3D84(v11, 0, &v20, *&v22, *(&v22 + 1), v23[0], v23[1]);
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
      [(CRLCanvasRep *)self computeDirectLayerFrame:&v22 andTransform:&v21 basedOnLayoutGeometry:v6];
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

      v16 = [(CRLImageRepLayerContentsRecipe *)v12 orientation];
      memset(&v20, 0, sizeof(v20));
      sub_1004F3D84(v16, 0, &v20, *&v22, *(&v22 + 1), v23[0], v23[1]);
      t1 = v20;
      t2 = v21;
      CGAffineTransformConcat(&v19, &t1, &t2);
      v21 = v19;
      [(CRLCanvasRep *)self antiAliasDefeatLayerTransform:&v21 forFrame:v22, *v23];
    }

    v20 = v21;
    [v4 setIfDifferentFrame:&v20 orTransform:{v22, *v23}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CRLImageRep;
    [(CRLCanvasRep *)&v24 updateRenderableGeometryFromLayout:v4];
  }

  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)willUpdateRenderable:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v24 willUpdateRenderable:v4];
  [(CRLImageRep *)self p_updateDirectlyManagesLayerContentForRenderable:v4];
  if (self->_sizedImageNeedsDisplay)
  {
    self->_sizedImageNeedsDisplay = 0;
    if ([(CRLImageRep *)self directlyManagesLayerContent])
    {
      v5 = [(CRLCanvasRep *)self shadowRenderable];

      if (v5)
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

  v12 = [(CRLImageRepDrawingHelper *)self->_drawingHelper contentsRecipeForDirectlyManagedRenderable:v4];
  directlyManagedLayerContentsRecipe = self->_directlyManagedLayerContentsRecipe;
  self->_directlyManagedLayerContentsRecipe = v12;

  v14 = [(CRLImageRep *)self imageLayout];
  v15 = [v14 maskLayout];
  if (v15)
  {
    v16 = v15;
    v17 = [(CRLImageRep *)self imageLayout];
    if (([v17 isInMaskEditMode] & 1) != 0 || !-[CRLImageRep p_shouldRenderWithMaskToBounds](self, "p_shouldRenderWithMaskToBounds"))
    {
      v18 = [(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe hasBakedMask];

      if ((v18 & 1) == 0)
      {
        [(CRLImageRep *)self p_createMaskRenderableForRenderable:v4];
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
  v20 = [(CRLCanvasRep *)self layout];
  v21 = [v20 stroke];

  if (!v21 || ![v21 shouldRender])
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

- (void)didUpdateRenderable:(id)a3
{
  v4 = a3;
  v103.receiver = self;
  v103.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v103 didUpdateRenderable:v4];
  [v4 crl_ignoreAccessibilityInvertColorsIfNeeded];
  v5 = [(CRLImageRep *)self maskLayout];
  if (![(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    contentsRenderable = self->_contentsRenderable;
    if (contentsRenderable)
    {
      [(CRLCanvasRenderable *)contentsRenderable removeFromSuperlayer];
      v7 = self->_contentsRenderable;
      self->_contentsRenderable = 0;

      [v4 setMasksToBounds:0];
      [v4 setCornerRadius:0.0];
      [v4 setCornerCurve:kCACornerCurveCircular];
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

    v13 = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe image];
    if ([(CRLImageRepDrawingHelper *)self->_drawingHelper isGeneratingSizedImageWithBakedMask]&& !+[NSThread isMainThread])
    {

      v13 = 0;
    }

    v14 = [v4 contents];

    if (v14 != v13)
    {
      [v4 setContents:v13];
    }

    v15 = [(CRLImageRep *)self imageLayout];
    v16 = [v15 imageGeometryInRoot];
    v17 = v16;
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&v102, 0, sizeof(v102));
    }

    v18 = sub_100139B5C(&v102.a);

    v19 = [v4 edgeAntialiasingMask];
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = 0;
    }

    else
    {
      if (v19 == 15)
      {
        goto LABEL_31;
      }

      v20 = 15;
    }

    [v4 setEdgeAntialiasingMask:v20];
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

    [v4 setMagnificationFilter:v23];
    v24 = [(CRLCanvasRep *)self layout];
    v25 = [v24 stroke];

    if (v25 && [v25 shouldRender])
    {
      [(CRLImageRep *)self p_updateStrokeLayerForStroke:v25 repRenderable:v4];
    }

    if (!v5)
    {
      goto LABEL_55;
    }

    if ([(CRLImageRep *)self p_shouldRenderWithMaskMatchingImage])
    {
      [(CRLCanvasRenderable *)self->_contentsRenderable removeFromSuperlayer];
      v26 = self->_contentsRenderable;
      self->_contentsRenderable = 0;

      v27 = [(CRLImageRep *)self imageInfo];
      [v4 setMasksToBounds:{objc_msgSend(v27, "hasRoundedCorners")}];

      [(CRLImageRep *)self p_updateCornerRadiusOnRenderable:v4];
LABEL_55:
      [(CRLMediaRep *)self updateSpatialLabel];
      v64 = [(CRLImageRep *)self maskRenderable];

      if (v64)
      {
        +[CATransaction begin];
        [CATransaction setDisableActions:1];
        [v4 bounds];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v73 = [(CRLImageRep *)self maskRenderable];
        [v73 frame];
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
          v79 = [(CRLImageRep *)self maskRenderable];
          [v79 setFrame:{v66, v68, v70, v72}];
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

      v30 = [v4 subrenderables];
      v31 = [v30 containsObject:self->_contentsRenderable];

      if ((v31 & 1) == 0)
      {
        [v4 addSubrenderable:self->_contentsRenderable];
      }

      [v4 setMasksToBounds:1];
      [(CRLCanvasRenderable *)self->_contentsRenderable setContents:v13];
      [v4 setContents:0];
      [(CRLImageRep *)self p_updateCornerRadiusOnRenderable:v4];
      v32 = [(CRLCanvasRep *)self canvas];
      [v32 viewScale];
      v90 = v33;

      v34 = [(CRLImageRep *)self imageLayout];
      v35 = [v34 imageGeometry];
      [v35 size];
      v37 = v36;
      v39 = v38;

      sub_10011F340(v37, v39, v90);
      v40 = sub_10011ECB4();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe orientation];
      memset(&v102, 0, sizeof(v102));
      sub_1004F3D84(v47, 0, &v102, v40, v42, v44, v46);
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
      v55 = [(CRLImageRep *)self imageLayout];
      v56 = [v55 maskLayout];
      v57 = [v56 pureGeometry];
      v58 = v57;
      if (v57)
      {
        [v57 transform];
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
      v63 = [WeakRetained mask];

      if (!v63)
      {
        goto LABEL_55;
      }

      v61 = objc_loadWeakRetained(&self->_frameMaskLayer);
      [v61 setMask:0];
    }

    else
    {
      v59 = [(CRLImageRep *)self imageLayout];
      v60 = [v59 isInMaskEditMode];

      if (v60)
      {
        [(CRLImageRep *)self p_updateMaskSublayersForMaskEditMode];
        [(CRLImageRep *)self p_updateMaskRenderable:self->_maskSubrenderable forRepRenderable:v4 shouldIncludeMask:1 shouldIncludeInstantAlpha:0 siblingLayer:0];
        [(CRLImageRep *)self p_updateMaskRenderable:self->_maskPathRenderable forRepRenderable:v4 shouldIncludeMask:1 shouldIncludeInstantAlpha:0 siblingLayer:1];
        goto LABEL_55;
      }

      if ([(CRLImageRepLayerContentsRecipe *)self->_directlyManagedLayerContentsRecipe hasBakedMask])
      {
        goto LABEL_55;
      }

      v61 = [(CRLImageRep *)self maskRenderable];
      [(CRLImageRep *)self p_updateMaskRenderable:v61 forRepRenderable:v4 shouldIncludeMask:1 shouldIncludeInstantAlpha:1 siblingLayer:0];
    }

    goto LABEL_55;
  }

  if ([v4 edgeAntialiasingMask] != 15)
  {
    [v4 setEdgeAntialiasingMask:15];
  }

LABEL_63:
  [v4 contentsRect];
  v110.size.width = 1.0;
  v110.size.height = 1.0;
  v110.origin.x = CGPointZero.x;
  v110.origin.y = y;
  if (!CGRectEqualToRect(v107, v110))
  {
    [v4 setContentsRect:{CGPointZero.x, y, 1.0, 1.0}];
  }

  [(CRLStyledRep *)self opacity];
  v87 = v86;
  if ([(CRLImageRep *)self shouldShowLoadingUI]&& ![(CRLImageRep *)self directlyManagesLayerContent])
  {
    v87 = 1.0;
  }

  [v4 opacity];
  v89 = v88;
  if (v87 != v89)
  {
    *&v89 = v87;
    [v4 setOpacity:v89];
  }
}

- (BOOL)shouldDisplayAsSpatial
{
  v3 = [(CRLImageRep *)self imageInfo];
  if ([v3 shouldDisplayAsSpatial])
  {
    v4 = [(CRLImageRep *)self imageLayout];
    v5 = [v4 isInMaskEditMode] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)p_updateCornerRadiusOnRenderable:(id)a3
{
  v15 = a3;
  v4 = objc_opt_class();
  v5 = [(CRLImageRep *)self imageLayout];
  v6 = [v5 maskLayout];
  v7 = [v6 pathSource];
  v8 = sub_100014370(v4, v7);

  if (v8 && ![v8 type])
  {
    [v8 cornerRadius];
    v11 = v10;
    v12 = [(CRLCanvasRep *)self canvas];
    [v12 viewScale];
    [v15 setCornerRadius:v11 * v13];

    v14 = [v8 isCurveContinuous];
    v9 = &kCACornerCurveContinuous;
    if (!v14)
    {
      v9 = &kCACornerCurveCircular;
    }
  }

  else
  {
    [v15 setCornerRadius:0.0];
    v9 = &kCACornerCurveCircular;
  }

  [v15 setCornerCurve:*v9];
}

- (void)p_updateMaskRenderable:(id)a3 forRepRenderable:(id)a4 shouldIncludeMask:(BOOL)a5 shouldIncludeInstantAlpha:(BOOL)a6 siblingLayer:(BOOL)a7
{
  HIDWORD(v46) = a7;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(CRLImageRep *)self imageLayout];
  v13 = [v12 maskLayout];

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

  if (v10 && ![(CRLImageRep *)self p_shouldRenderWithMaskToBounds])
  {
    v17 = [(CRLCanvasRep *)self canvas];
    [v17 viewScale];
    v19 = v18;

    Copy = 0;
    v21 = *&CGAffineTransformIdentity.c;
    *&v53.a = *&CGAffineTransformIdentity.a;
    *&v53.c = v21;
    *&v53.tx = *&CGAffineTransformIdentity.tx;
    if (v13 && v7)
    {
      [v13 pathBounds];
      CGAffineTransformMakeTranslation(&v53, -v22, -v23);
      [v13 transform];
      t1 = v53;
      CGAffineTransformConcat(&v52, &t1, &t2);
      v53 = v52;
      CGAffineTransformMakeScale(&t2, v19, v19);
      t1 = v53;
      CGAffineTransformConcat(&v52, &t1, &t2);
      v53 = v52;
      Copy = CGPathCreateCopy([v13 path]);
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

    v28 = [(CRLImageRepLayerContentsRecipe *)directlyManagedLayerContentsRecipe orientation];
    if (v28 && (v46 & 0x100000000) == 0)
    {
      v29 = v28;
      [v11 bounds];
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
      v40 = [(CRLImageRep *)self imageLayout];
      v41 = [v40 maskIntersectsImage];

      if (v41)
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
    [v10 setPath:v45];
    CGPathRelease(v45);
    CGPathRelease(Copy);
  }
}

- (void)p_updateStrokeLayerForStroke:(id)a3 repRenderable:(id)a4
{
  v5 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v6 = [(CRLImageRep *)self imageLayout];
  v7 = [(CRLImageRep *)self maskLayout];
  v8 = [(CRLCanvasRep *)self canvas];
  [v8 viewScale];
  v10 = v9;

  v41 = 0u;
  memset(&v42, 0, sizeof(v42));
  v40 = 0u;
  v11 = [(CRLImageRep *)self imageLayout];
  v12 = [v11 imageGeometry];
  [(CRLCanvasRep *)self computeDirectLayerFrame:&v40 andTransform:&v42 basedOnLayoutGeometry:v12];

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
  [v5 applyToShapeRenderable:self->_strokeRenderable withScale:v10];

  v31 = [v6 pathToStroke];
  Mutable = v31;
  if (!v7)
  {
    if (!v31)
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
    v33 = [v6 pathToStroke];
    t1 = v39;
LABEL_13:
    Mutable = sub_10007187C(v33, &t1);
LABEL_14:
    strokeRenderable = self->_strokeRenderable;
    v35 = 0;
    goto LABEL_16;
  }

  if (v31)
  {
    memset(&v39, 0, sizeof(v39));
    [v7 transform];
    CGAffineTransformMakeScale(&v37, v10, v10);
    CGAffineTransformConcat(&v39, &t1, &v37);
    t1 = v39;
    v33 = Mutable;
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
  v3 = [(CRLMediaRep *)&v26 additionalRenderablesOverRenderable];
  v4 = [NSMutableArray arrayWithArray:v3];

  if (self->_strokeRenderable)
  {
    [v4 addObject:?];
  }

  v5 = [(CRLImageRep *)self imageLayout];
  if ([v5 isInMaskEditMode])
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
    v7 = [(CRLImageRep *)self imageLayout];
    v8 = [v7 imageGeometryInRoot];
    v9 = v8;
    if (v8)
    {
      [v8 transform];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    v10 = [(CRLCanvasRep *)self canvas];
    [v10 viewScale];
    v25.f64[0] = v11 * v25.f64[0];

    v12 = [(CRLCanvasRep *)self canvas];
    [v12 viewScale];
    v25.f64[1] = v13 * v25.f64[1];

    v14 = [(CRLCanvasRep *)self parentRep];

    if (v14)
    {
      v15 = [(CRLCanvasRep *)self parentRep];
      [v15 layerFrameInScaledCanvas];
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

- (void)p_setDefaultMaskWithActionString:(id)a3
{
  v4 = a3;
  v14 = [(CRLCanvasRep *)self commandController];
  v5 = [CRLCanvasCommandSelectionBehavior alloc];
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = [v6 canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v5 initWithCanvasEditor:v7];

  [v14 openGroupWithSelectionBehavior:v8];
  [v14 setCurrentGroupActionString:v4];

  v9 = [(CRLImageRep *)self imageInfo];
  v10 = [v9 defaultMaskInfo];
  v11 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v9 maskInfo:v10];
  v12 = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [v12 commandController];

  [v13 enqueueCommand:v11];
  [v14 closeGroup];
}

- (void)p_endEditingMask
{
  v3 = [(CRLImageRep *)self imageLayout];
  [v3 endMaskEditMode];

  v4 = [(CRLImageRep *)self imageInfo];
  v5 = [v4 maskInfo];

  if (!v5)
  {
    v6 = [(CRLImageRep *)self imageLayout];
    [v6 maskWasReset];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v8 = sub_1003FA2DC;
  v9 = &unk_10183AB38;
  v10 = self;
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
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 editorController];
  [v4 addObserver:self selector:"p_selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v6];

  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v7 canvasInvalidatedForRep:self];

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
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = [v6 editorController];
  [v5 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v7];

  if ([(CRLImageRep *)self p_shouldBakeMaskIntoSizedImage])
  {
    [(CRLImageRepDrawingHelper *)self->_drawingHelper invalidateSizedImage];
  }

  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v8 canvasInvalidatedForRep:self];

  [(CRLCanvasRep *)self invalidateKnobs];

  [(CRLImageRep *)self p_invalidateHitTestCache];
}

- (void)p_updateHUD
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v5 layerHost];
  v4 = [v3 imageHUDController];
  [v4 updateControlsForRep:self];
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
  v3 = [(CRLImageRep *)self maskRenderable];

  if (v3)
  {
    +[CATransaction begin];
    [(CRLCanvasRenderable *)self->_maskSubrenderable removeFromSuperlayer];
    maskSubrenderable = self->_maskSubrenderable;
    self->_maskSubrenderable = 0;

    v5 = [(CRLImageRep *)self maskRenderable];
    [v5 removeFromSuperlayer];

    v6 = [(CRLImageRep *)self maskRenderable];
    [v6 setDelegate:0];

    [(CRLImageRep *)self setMaskRenderable:0];
    WeakRetained = objc_loadWeakRetained(&self->_frameMaskLayer);
    [WeakRetained removeFromSuperlayer];

    objc_storeWeak(&self->_frameMaskLayer, 0);

    +[CATransaction commit];
  }
}

- (void)p_createMaskRenderableForRenderable:(id)a3
{
  v10 = a3;
  v4 = [(CRLImageRep *)self maskRenderable];

  if (!v4)
  {
    v5 = +[CRLCanvasShapeRenderable renderable];
    [(CRLImageRep *)self setMaskRenderable:v5];

    v6 = [(CRLImageRep *)self maskRenderable];
    [v6 setDelegate:self];

    y = CGPointZero.y;
    v8 = [(CRLImageRep *)self maskRenderable];
    [v8 setAnchorPoint:{CGPointZero.x, y}];

    v9 = [(CRLImageRep *)self maskRenderable];
    [v10 setMaskRenderable:v9];
  }
}

- (void)p_updateMaskSublayersForMaskEditMode
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [v3 renderableForRep:self];

  v4 = [(CRLImageRep *)self maskRenderable];

  if (!v4)
  {
    [(CRLImageRep *)self p_createMaskRenderableForRenderable:v13];
  }

  if (!self->_maskSubrenderable)
  {
    v5 = +[CRLCanvasShapeRenderable renderable];
    maskSubrenderable = self->_maskSubrenderable;
    self->_maskSubrenderable = v5;

    v7 = [(CRLImageRep *)self maskRenderable];
    [v7 addSubrenderable:self->_maskSubrenderable];
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

  v12 = [(CRLImageRep *)self maskRenderable];
  [v12 setPath:0];

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

+ (CGPath)p_newPathToBakeIntoSizedImageForSize:(CGSize)a3 withImageLayout:(id)a4 orientation:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [v7 maskLayout];
  v23 = *&CGAffineTransformIdentity.c;
  v24 = *&CGAffineTransformIdentity.a;
  *&v28.a = *&CGAffineTransformIdentity.a;
  *&v28.c = v23;
  v22 = *&CGAffineTransformIdentity.tx;
  *&v28.tx = v22;
  v9 = [v7 imageGeometry];
  [v9 size];
  v11 = v10;

  v12 = [v7 imageGeometry];
  [v12 size];
  v14 = v13;

  if (v8)
  {
    [v8 pathBounds];
    CGAffineTransformMakeTranslation(&t2, -v15, -v16);
    *&t1.a = v24;
    *&t1.c = v23;
    *&t1.tx = v22;
    CGAffineTransformConcat(&v28, &t1, &t2);
    if (v7)
    {
      [v7 layoutToMaskTransform];
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
    if (v7)
    {
      [v7 layoutToImageTransform];
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
    v20 = [v8 path];
    t2 = v28;
    v17 = sub_10007187C(v20, &t2);
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

  v6 = [(CRLCanvasRep *)self canvas];
  v7 = [v6 canvasController];

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003FAFA4;
    v8[3] = &unk_10185FBC0;
    v8[4] = self;
    v9 = v7;
    [v9 updateRenderableForRep:self usingBlock:v8];
  }
}

- (BOOL)p_shouldBakeMaskIntoSizedImage
{
  v3 = [(CRLImageRep *)self p_validatedImageProvider];
  [v3 naturalSize];
  v5 = v4;
  v7 = v6;

  v8 = [(CRLImageRep *)self imageLayout];
  v9 = [v8 imageGeometry];
  [v9 size];
  v11 = v10;
  v13 = v12;
  v14 = [(CRLCanvasRep *)self canvas];
  [v14 viewScale];
  v16 = v15;
  v17 = [(CRLCanvasRep *)self canvas];
  [v17 contentsScale];
  v19 = sub_10011F340(v11, v13, v16 * v18);
  v21 = v20;

  v22 = v5 < v19 || v7 < v21;
  if (v22 || ![(CRLImageRep *)self directlyManagesLayerContent])
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v23 = [(CRLImageRep *)self maskLayout];
    if (v23)
    {
      v24 = [(CRLImageRep *)self imageLayout];
      if ([v24 isInMaskEditMode])
      {
        LOBYTE(v25) = 0;
      }

      else
      {
        v26 = [(CRLImageRep *)self imageLayout];
        v27 = [v26 maskLayout];
        if ([v27 hasSmartPath])
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

+ (BOOL)p_canRenderWithMaskToBoundsWithImageLayout:(id)a3
{
  v3 = a3;
  v4 = [v3 maskLayout];
  v5 = [v4 pathSource];
  v6 = [v5 isRectangular];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v3 maskLayout];
    v10 = [v9 pathSource];
    v11 = sub_100014370(v8, v10);

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

  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v4 = [CRLImageRep p_canRenderWithMaskToBoundsWithImageLayout:v5];
  }

  return v4;
}

- (BOOL)p_shouldRenderWithMaskMatchingImage
{
  if (![(CRLImageRep *)self directlyManagesLayerContent])
  {
    return 0;
  }

  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLImageRep *)self imageInfo];
    v4 = [v5 maskMatchesImageGeometryWithIgnoreRoundedCorners:1];
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

- (void)p_removeBackgroundFromImageInitiatedByUser:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLImageRep *)self imageInfo];
  v6 = [v5 isBackgroundRemoved];

  if (v6)
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

  v10 = [(CRLImageRep *)self p_validatedImageProvider];
  if (([v10 isError] & 1) == 0)
  {
    if (v3)
    {
      goto LABEL_13;
    }

    v17 = [(CRLCanvasRep *)self interactiveCanvasController];
    v15 = [v17 infosForCurrentSelectionPath];

    if ([(CRLRemoveImageBackgroundData *)v15 count]!= 1)
    {
      goto LABEL_32;
    }

    v18 = [(CRLRemoveImageBackgroundData *)v15 anyObject];
    v19 = [(CRLCanvasRep *)self info];

    if (v18 == v19)
    {
LABEL_13:
      os_unfair_lock_lock(&self->_backgroundRemovalLock);
      imageForRemoveBackgroundAssetDataHash = self->_imageForRemoveBackgroundAssetDataHash;
      v12 = [v10 imageData];
      v13 = [v12 crl_hash];

      if (imageForRemoveBackgroundAssetDataHash != v13)
      {
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setImage:0];
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setOffset:CGPointZero.x, CGPointZero.y];
        [(CRLRemoveImageBackgroundData *)self->_cachedRemoveImageBackgroundData setError:0];
      }

      if (v3 && (p_userInitiatedBackgroundRemovalState = &self->_userInitiatedBackgroundRemovalState, self->_userInitiatedBackgroundRemovalState != 1) || (p_userInitiatedBackgroundRemovalState = &self->_autoBackgroundRemovalState, self->_autoBackgroundRemovalState != 1))
      {
        *p_userInitiatedBackgroundRemovalState = 0;
      }

      v15 = self->_cachedRemoveImageBackgroundData;
      v16 = self->_imageForRemoveBackgroundAssetDataHash;
      os_unfair_lock_unlock(&self->_backgroundRemovalLock);
      if (v3)
      {
        if ([(CRLRemoveImageBackgroundData *)v15 image])
        {
          [(CRLImageRep *)self p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:v15 dismissMiniFormatter:1];
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
        if (!-[CRLImageRep imageForRemoveBackground](self, "imageForRemoveBackground") || ([v10 imageData], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "crl_hash"), v23, v16 != v24))
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
        v29 = v3;
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

  v4 = [(CRLImageRep *)self p_validatedImageProvider];
  os_unfair_lock_lock(&self->_backgroundRemovalLock);
  v5 = [v4 imageData];
  self->_imageForRemoveBackgroundAssetDataHash = [v5 hash];

  os_unfair_lock_unlock(&self->_backgroundRemovalLock);
  [v4 naturalSize];
  v8 = sub_100121ED4(v6, v7, [(CRLImageRep *)self p_maxPixelAreaForBackgroundRemoval]);
  v9 = sub_100120068(v8);
  v11 = v10;
  if ([v4 imageGamut] == 2)
  {
    v12 = 27;
  }

  else
  {
    v12 = 59;
  }

  v13 = sub_10050DF80(v12, v9, v11);
  [v4 drawImageInContext:v13 rect:sub_10011ECB4()];
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

- (id)p_newPathExtensionForOldAssetFilename:(id)a3
{
  v3 = a3;
  v4 = [v3 crl_pathUTI];
  v5 = [UTTypeHEIC identifier];
  v14[0] = v5;
  v6 = [UTTypePNG identifier];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [v4 crl_conformsToAnyUTI:v7];

  if (v8)
  {
    v9 = [v3 pathExtension];
  }

  else
  {
    v10 = [UTTypePNG preferredFilenameExtension];
    v11 = v10;
    v12 = @"png";
    if (v10)
    {
      v12 = v10;
    }

    v9 = v12;
  }

  return v9;
}

- (void)p_replaceImageDataWithRemoveImageBackgroundData:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (![v9 image])
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
  v15 = [(CRLCanvasRep *)self info];
  v16 = sub_100014370(v14, v15);

  v17 = objc_opt_class();
  v18 = [(CRLCanvasRep *)self layout];
  v19 = sub_100014370(v17, v18);

  if (v16)
  {
    v20 = [_TtC8Freeform29CRLGenerativePlaygroundHelper iptcMetadataFor:v16];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v16 imageAssetPayload];
  v22 = [v21 filename];
  if ([v22 length])
  {
    v23 = [v16 imageAssetPayload];
    v24 = [v23 filename];
  }

  else
  {
    v24 = +[CRLBoardItemImporter defaultPastedImageName];
  }

  v25 = [v24 stringByDeletingPathExtension];
  v26 = [(CRLImageRep *)self p_newPathExtensionForOldAssetFilename:v24];
  v27 = [v25 stringByAppendingPathExtension:v26];

  objc_initWeak(&location, self);
  v28 = -[CRLPreinsertionAssetWrapper initWithImage:properties:filename:owner:error:]([_TtC8Freeform27CRLPreinsertionAssetWrapper alloc], "initWithImage:properties:filename:owner:error:", [v9 image], v20, v27, v16, 0);
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

- (void)p_enqueueCommandsToUpdateMagnetsForLineEnd:(unint64_t)a3 withClineLayout:(id)a4 withUnscaledPosition:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_class();
  v11 = [(CRLCanvasRep *)self layout];
  v12 = sub_100014370(v10, v11);

  if (a3 == 11)
  {
    v13 = [v8 headMagnetType];
  }

  else
  {
    v13 = [v8 tailMagnetType];
  }

  v14 = v13;
  [v9 CGPointValue];
  v39 = v16;
  v41 = v15;

  if (v14 == 6)
  {
    [v12 findNewEdgeMagnetCanvasPositionForConnectionLine:v8 forLineEnd:a3 withCanvasPosition:{v41, v39}];
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
  v19 = [v12 pureGeometry];
  [v19 size];
  v20 = sub_10011ECB4();
  v23 = sub_100121720(v43.f64[0], v43.f64[1], v20, v21, v22);
  v25 = v24;

  v26 = [v8 connectionLineInfo];
  v27 = [v26 connectionLinePathSource];

  v28 = [[CRLConnectionLineMagnet alloc] initWithType:v14 normalizedPosition:v23, v25];
  if (a3 == 11)
  {
    [v27 setHeadMagnet:v28];

    v29 = objc_opt_class();
    [v8 connectedTo];
  }

  else
  {
    [v27 setTailMagnet:v28];

    v29 = objc_opt_class();
    [v8 connectedFrom];
  }
  v30 = ;
  v31 = a3 == 11;
  v32 = [v30 info];
  v33 = sub_100014370(v29, v32);

  v34 = [(CRLCanvasRep *)self interactiveCanvasController];
  v35 = [v34 commandController];
  v36 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
  v37 = [v8 connectionLineInfo];
  v38 = [(CRLCommandSetConnectionLineConnection *)v36 initWithConnectionLine:v37 connectedItem:v33 chirality:v31 pathSource:v27];
  [v35 enqueueCommand:v38];
}

- (id)p_getMagnetUnscaledPositionValueForMagnet:(id)a3 withConnectedItem:(id)a4
{
  v5 = a4;
  [a3 magnetNormalizedPosition];
  v14 = v7;
  v15 = v6;
  v8 = [v5 pureGeometry];

  if (v8)
  {
    [v8 fullTransform];
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

- (CGRect)p_calcNewImageItemRectWithRawSize:(CGSize)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v9 = [(CRLImageRep *)self p_validatedImageProvider];
  v10 = [(CRLCanvasRep *)self info];
  v11 = [v10 geometry];

  if (v9 && ![v9 isError])
  {
    v23 = width / CGImageGetWidth(self->_imageForRemoveBackground);
    v24 = height / CGImageGetHeight(self->_imageForRemoveBackground);
    [v11 size];
    v20 = v23 * v25;
    [v11 size];
    v22 = v24 * v26;
    [v11 size];
    v16 = x * v27;
    [v11 size];
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

    [v11 boundsBeforeRotation];
    v16 = v15;
    [v11 boundsBeforeRotation];
    v18 = v17;
    [v11 size];
    v20 = v19;
    [v11 size];
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

- (void)p_calcNewImageGeometryAndReplaceImageWithRemoveImageBackgroundData:(id)a3 dismissMiniFormatter:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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

  Width = CGImageGetWidth([v6 image]);
  Height = CGImageGetHeight([v6 image]);
  [v6 offset];
  [(CRLImageRep *)self p_calcNewImageItemRectWithRawSize:Width offset:Height, v12, v13];
  [(CRLImageRep *)self p_replaceImageDataWithRemoveImageBackgroundData:v6 rect:?];

  if (v4)
  {
    v14 = [(CRLCanvasRep *)self interactiveCanvasController];
    v15 = [v14 layerHost];
    v16 = [v15 miniFormatterPresenter];
    [v16 dismissMiniFormatter];
  }
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  if ([v4 tag] - 12 > 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = CRLImageRep;
      v6 = [(CRLCanvasRep *)&v9 newTrackerForKnob:v4];
      goto LABEL_7;
    }

    v5 = CRLMediaReplaceKnobTracker;
  }

  else
  {
    v5 = CRLShapeControlKnobTracker;
  }

  v6 = [[v5 alloc] initWithRep:self knob:v4];
LABEL_7:
  v7 = v6;

  return v7;
}

- (BOOL)shouldShowSmartMaskKnobs
{
  v3 = [(CRLImageRep *)self maskLayout];
  v4 = [v3 maskInfo];
  v5 = [(CRLImageRep *)self imageInfo];
  v6 = [v5 maskInfo];

  if (v4 == v6)
  {
    v16 = [(CRLImageRep *)self maskLayout];
    v17 = [v16 hasSmartPath];
  }

  else
  {
    v7 = [(CRLImageRep *)self imageInfo];
    v8 = [v7 maskInfo];
    v9 = [v8 pathSource];
    v10 = objc_opt_class();
    v16 = sub_1003038E0(v9, v10, 1, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___CRLSmartPathSource);

    v17 = v16 != 0;
  }

  v18 = [(CRLImageRep *)self imageInfo];
  v19 = [v18 maskInfo];
  v20 = 0;
  if (v19 && v17)
  {
    if ([(CRLCanvasRep *)self isSelected])
    {
      v21 = [(CRLImageRep *)self imageLayout];
      if ([v21 isInMaskEditMode])
      {
        v22 = [(CRLImageRep *)self imageLayout];
        v20 = [v22 maskEditMode] == 2;
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

- (void)updatePositionsOfKnobs:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v29 updatePositionsOfKnobs:v4];
  if ([(CRLImageRep *)self shouldShowSmartMaskKnobs])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v4;
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
            v11 = [(CRLImageRep *)self maskLayout];
            [v11 getControlKnobPosition:{objc_msgSend(v10, "tag")}];
            v19 = v13;
            v20 = v12;

            v14 = [(CRLImageRep *)self imageLayout];
            v15 = v14;
            if (v14)
            {
              [v14 layoutToMaskTransform];
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

- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4
{
  v7 = [(CRLImageRep *)self imageLayout];
  v8 = [v7 maskEditMode];

  if (v8 == 2)
  {
    v9 = [CRLImageMaskKnob alloc];
    y = CGPointZero.y;

    return [(CRLCanvasKnob *)v9 initWithType:a3 position:a4 radius:self tag:CGPointZero.x onRep:y, 15.0];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRLImageRep;
    return [(CRLCanvasRep *)&v12 newSelectionKnobForType:a3 tag:a4];
  }
}

- (void)addKnobsToArray:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CRLImageRep;
  [(CRLCanvasRep *)&v26 addKnobsToArray:v4];
  v5 = [(CRLImageRep *)self imageInfo];
  if ([v5 isImagePlaceholder])
  {
    v6 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    [v4 addObject:v6];

    [(CRLImageRep *)self p_updateMediaReplaceButtonVisibility];
  }

  if ([(CRLImageRep *)self shouldShowSmartMaskKnobs])
  {
    v7 = [(CRLImageRep *)self maskLayout];
    v8 = [v7 numberOfControlKnobs];
    if (v8)
    {
      v9 = v8;
      v10 = 12;
      do
      {
        v11 = [(CRLImageRep *)self maskLayout];
        [v11 getControlKnobPosition:v10];
        v20 = v13;
        v21 = v12;

        v14 = [(CRLImageRep *)self imageLayout];
        v15 = v14;
        if (v14)
        {
          [v14 layoutToMaskTransform];
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
        [v4 addObject:v19];

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
  v5 = [(CRLImageRep *)self imageLayout];
  if (![v5 isInMaskEditMode])
  {
LABEL_7:

    return v4;
  }

  v6 = [(CRLImageRep *)self imageLayout];
  v7 = [v6 maskEditMode];

  if (v7 == 3)
  {
    v5 = [(CRLImageRep *)self imageLayout];
    v8 = [v5 maskLayout];
    v9 = v8;
    if (v8)
    {
      [v8 transform];
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

- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = [(CRLImageRep *)self imageLayout];
  v12 = [v11 isInMaskEditMode];

  if (v9 || !v12 || (-[CRLImageRep imageLayout](self, "imageLayout"), v13 = objc_claimAutoreleasedReturnValue(), [v13 imageGeometryInRoot], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "frame"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v13, -[CRLCanvasRep interactiveCanvasController](self, "interactiveCanvasController"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "convertUnscaledToBoundsRect:", v16, v18, v20, v22), v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, +[CRLCursor moveCursorWithActiveScaledRect:](CRLCursor, "moveCursorWithActiveScaledRect:", v25, v27, v29, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "setConstrainedAxes:", 0), !v32))
  {
    v34.receiver = self;
    v34.super_class = CRLImageRep;
    v32 = [(CRLStyledRep *)&v34 cursorAtPoint:v9 forKnob:v10 withCursorPlatformObject:x, y];
  }

  return v32;
}

- (BOOL)p_hitCacheGetCachedValue:(BOOL *)a3 forPoint:(CGPoint)a4
{
  v6 = [NSValue valueWithCGPoint:a4.x, a4.y];
  v7 = [(NSMutableDictionary *)self->_hitTestCache objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    *a3 = [v7 BOOLValue];
  }

  return v8 != 0;
}

- (void)p_hitCacheSetCachedValue:(BOOL)a3 forPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  hitTestCache = self->_hitTestCache;
  v8 = [NSNumber numberWithBool:a3];
  v7 = [NSValue valueWithCGPoint:x, y];
  [(NSMutableDictionary *)hitTestCache setObject:v8 forKey:v7];
}

- (BOOL)isPlaceholder
{
  v2 = [(CRLImageRep *)self imageItem];
  v3 = [v2 isImagePlaceholder];

  return v3;
}

- (id)imageItem
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 miniFormatterPresenter];
  v6 = [v5 isPresentingMiniFormatter];

  if (v6)
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
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([v6 documentIsSharedReadOnly] & 1) == 0)
  {
    v2 = [v6 layerHost];
    v3 = [v2 miniFormatterPresenter];
    v4 = [v6 editorController];
    v5 = [v4 selectionPath];
    [v3 presentMiniFormatterForSelectionPath:v5];
  }
}

- (void)p_hideMiniFormatter
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v5 layerHost];
  v4 = [v3 miniFormatterPresenter];
  [v4 dismissMiniFormatterForRep:self];
}

- (BOOL)p_miniFormatterIsPresentingSecondLayer
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 miniFormatterPresenter];
  v5 = [v4 isPresentingSecondLayerPopover];

  return v5;
}

- (void)p_showControls
{
  if ([(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
  {
    v3 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    [v3 setHidden:0];

    v4 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    v5 = [v4 renderable];
    [v5 removeAnimationForKey:@"hidden"];

    v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v6 = [NSNumber numberWithFloat:0.0];
    [v11 setFromValue:v6];

    LODWORD(v7) = 1.0;
    v8 = [NSNumber numberWithFloat:v7];
    [v11 setToValue:v8];

    [v11 setDuration:0.2];
    v9 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
    v10 = [v9 renderable];
    [v10 addAnimation:v11 forKey:@"hidden"];
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
  v4 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 image];
  if (!self->mTapToReplaceRenderable)
  {
    v7 = +[CRLNoDefaultImplicitActionRenderable renderable];
    mTapToReplaceRenderable = self->mTapToReplaceRenderable;
    self->mTapToReplaceRenderable = v7;
  }

  v9 = [(CRLCanvasRep *)self canvas];
  [v9 contentsScale];
  -[CRLCanvasRenderable setContents:](self->mTapToReplaceRenderable, "setContents:", [v6 CGImageForContentsScale:?]);

  [v6 size];
  [(CRLCanvasRenderable *)self->mTapToReplaceRenderable setBounds:sub_10011ECB4()];
  v10 = self->mTapToReplaceRenderable;
  v11 = v10;

  return v10;
}

- (BOOL)shouldShowMediaReplaceUI
{
  if ([(CRLImageRep *)self isPlaceholder])
  {
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 editingCoordinator];
    v5 = [v4 followCoordinator];
    v6 = [v5 isFollowing];

    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [v7 editingDisabled];

    v9 = [(CRLImageRep *)self imageLayout];
    v10 = [v9 isInMaskEditMode];

    if ([(CRLImageRep *)self p_mediaReplaceButtonFitsInFrame])
    {
      v11 = [(CRLCanvasRep *)self repForSelecting];
      if (v11 == self)
      {
        if ([(CRLCanvasRep *)self isLocked])
        {
          v13 = 0;
        }

        else
        {
          v13 = (v8 | v10) ^ 1;
        }
      }

      else
      {
        v12 = [(CRLCanvasRep *)self repForSelecting];
        if (((v12 == 0) & v6) == 1 && ![(CRLCanvasRep *)self isLocked])
        {
          v13 = (v8 | v10) ^ 1;
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

    v15 = [(CRLCanvasRep *)self interactiveCanvasController];
    v16 = [v15 layerHost];
    v17 = [v16 asiOSCVC];
    v18 = [v17 isCurrentlyInQuickSelectMode];

    v19 = v13 & (v18 ^ 1);
    v20 = objc_opt_class();
    v21 = [(CRLCanvasRep *)self interactiveCanvasController];
    v22 = [v21 layerHost];
    v23 = sub_100014370(v20, v22);

    v24 = [v23 delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = [v24 allowsMediaReplaceButton];
    }

    else
    {
      v25 = 1;
    }

    v14 = v19 & v25;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)replaceButtonContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CRLImageRep *)self shouldShowMediaReplaceUI])
  {
    return 0;
  }

  v6 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  v7 = [v6 renderable];

  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v8 convertUnscaledToBoundsPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  v14 = [v13 layerHost];
  v15 = [v14 canvasLayer];
  [v7 convertPoint:v15 fromLayer:{v10, v12}];
  v17 = v16;
  v19 = v18;

  if ([v7 containsPoint:{v17, v19}])
  {
    [v7 bounds];
    v21 = v20 * 0.5;
    [v7 bounds];
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
  v3 = [(CRLCanvasRep *)self canvas];
  [(CRLCanvasRep *)self naturalBounds];
  [v3 convertUnscaledToBoundsSize:{v4, v5}];
  v7 = v6;
  v9 = v8;

  return v9 >= 72.0 && v7 >= 72.0;
}

- (void)p_updateMediaReplaceButtonVisibility
{
  v8 = [(CRLCanvasRep *)self canvas];
  if ([v8 isCanvasInteractive])
  {
    v3 = [(CRLImageRep *)self isPlaceholder];

    if (v3)
    {
      v4 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
      v5 = [v4 isHidden];
      v6 = [(CRLImageRep *)self shouldShowMediaReplaceUI];

      if (v5 == v6)
      {
        if ([(CRLImageRep *)self shouldShowMediaReplaceUI])
        {
          [(CRLImageRep *)self p_showControls];
          v7 = [(CRLCanvasRep *)self canvas];
          [v7 invalidateContentLayersForRep:self];
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 canvasEditor];
    v5 = [(CRLImageRep *)self imageItem];
    v6 = [v4 selectionPathWithInfo:v5];
    v7 = [v3 editorController];
    [v7 setSelectionPath:v6];
  }

  v11 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [v11 freehandDrawingToolkit];
  v9 = [v8 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (v9)
  {
    v10 = [v11 canvasEditor];
    [v10 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (BOOL)p_isPresentingMiniFormatterOrMediaReplaceButtonVisible
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 miniFormatterPresenter];
  v5 = [v4 isPresentingMiniFormatter];

  return v5;
}

- (void)toggleShowingControls
{
  if ([(CRLImageRep *)self p_isPresentingMiniFormatterOrMediaReplaceButtonVisible])
  {

    [(CRLImageRep *)self p_hideControls];
  }

  else
  {
    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v3 = [v7 canvasEditor];
    v4 = [(CRLImageRep *)self imageItem];
    v5 = [v3 selectionPathWithInfo:v4];
    v6 = [v7 editorController];
    [v6 setSelectionPath:v5];

    [(CRLImageRep *)self p_showControls];
  }
}

- (void)p_hideMediaReplaceButtonIndependently
{
  v3 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  [v3 setHidden:1];

  v4 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  v5 = [v4 renderable];
  [v5 removeAnimationForKey:@"hidden"];

  v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v6) = 1.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v11 setFromValue:v7];

  v8 = [NSNumber numberWithFloat:0.0];
  [v11 setToValue:v8];

  [v11 setDuration:0.2];
  v9 = [(CRLImageRep *)self p_mediaReplaceButtonKnob];
  v10 = [v9 renderable];
  [v10 addAnimation:v11 forKey:@"hidden"];
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

- (BOOL)p_isMediaReplaceKnob:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v4 = a3;
  if ([(CRLImageRep *)self p_isMediaReplaceKnob:v4])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    v5 = [(CRLCanvasRep *)&v7 directlyManagesVisibilityOfKnob:v4];
  }

  return v5;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  v4 = a3;
  if ([(CRLImageRep *)self p_isMediaReplaceKnob:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLImageRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:v4];
  }

  return v5;
}

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLImageRep *)self imageLayout];
  if (![v8 isInMaskEditMode])
  {
    goto LABEL_4;
  }

  v9 = [(CRLImageRep *)self imageLayout];
  if ([v9 maskIntersectsImage])
  {

LABEL_4:
LABEL_5:
    v33.receiver = self;
    v10 = &v33;
LABEL_6:
    v10->super_class = CRLImageRep;
    return [(objc_super *)v10 dragTypeAtCanvasPoint:a4 forTouchType:x, y];
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
  v25 = [(CRLImageRep *)self imageLayout];
  v26 = v25;
  if (v25)
  {
    [v25 layoutToImageTransform];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  CGAffineTransformInvert(&v36, &v35);
  pointa = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, v30), *&v36.a, point));

  v27 = [(CRLImageRep *)self imageLayout];
  v28 = [v27 imageGeometry];
  [v28 size];
  v39.origin.x = sub_10011ECB4();
  v29 = CGRectContainsPoint(v39, pointa);

  if (v29)
  {
    v34 = self;
    v10 = &v34;
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)supportsAlternatePressureDrag
{
  v3 = [(CRLImageRep *)self imageLayout];
  if ([v3 isInMaskEditMode])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CRLImageRep *)self p_allowedToEditMask];
  }

  return v4;
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
  v5 = self;
  v2 = [(CRLCanvasRep *)v5 info];
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