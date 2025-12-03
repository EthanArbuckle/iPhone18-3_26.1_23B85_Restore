@interface CRLAudioRep
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)drawAlbumArtInContext:(CGContext *)context rect:(CGRect)rect;
- (BOOL)hasAlbumArt;
- (BOOL)i_playButtonFitsInFrame;
- (BOOL)isPlaying;
- (BOOL)noKnobTogglePlayAndMiniFormatter;
- (BOOL)p_togglePlayPause;
- (BOOL)shouldBecomeSelectedWhenPlaying;
- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds;
- (CGSize)p_playButtonSize;
- (CRLAudioRep)initWithLayout:(id)layout canvas:(id)canvas;
- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting;
- (_TtC8Freeform12CRLMovieItem)movieItem;
- (double)absoluteCurrentTime;
- (double)ifFitsDrawCreatorWithContext:(CGContext *)context rect:(CGRect)rect topPadding:(double)padding;
- (double)ifFitsDrawTitleWithContext:(CGContext *)context rect:(CGRect)rect;
- (double)p_creatorTextHeightWithRect:(CGRect)rect;
- (double)p_playButtonAndMinPaddingHeight:(BOOL)height;
- (double)p_playButtonAndTitleHeightWithRepSize:(CGSize)size;
- (double)p_titleTextHeightWithSize:(CGSize)size;
- (float)volume;
- (id)additionalRenderablesOverRenderable;
- (id)dataForUpdateUploadIndicator;
- (id)imageProviderForAlbumArt;
- (id)newTrackerForKnob:(id)knob;
- (id)nowPlayingImageProviderWithPlaybackController:(id)controller;
- (id)nowPlayingTitleWithPlaybackController:(id)controller;
- (id)p_pauseButtonImage;
- (id)p_playButtonImage;
- (id)p_playButtonKnob;
- (id)p_selectionPath;
- (id)p_unpauseButtonImage;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)array;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)documentEditabilityDidChange;
- (void)drawInContext:(CGContext *)context;
- (void)dynamicVolumeChangeDidBegin;
- (void)enterPreviewMode;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_addPlayButtonToKnobs:(id)knobs;
- (void)p_cancelPlayabilityCheck;
- (void)p_handleAssetPreparationCompletionForAsset:(id)asset;
- (void)p_hidePlayButton;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_playTriggeredFromKnob;
- (void)p_positionPauseButtonImage;
- (void)p_positionPlayButtonImage;
- (void)p_setUpAudioImageRenderablePath:(CGSize)path;
- (void)p_setUpPlayerControllerIfNecessary;
- (void)p_setUpRenderables;
- (void)p_setUpSpinnerAnimationIfNeeded;
- (void)p_showPlayButton;
- (void)p_teardownPlayerController;
- (void)p_updateAudioImageRenerableAndTrack;
- (void)p_updateDownloadSpinnerState;
- (void)p_updateEndTime;
- (void)p_updateIsLooping;
- (void)p_updatePlayPauseButton;
- (void)p_updatePlayabilityIfNecessary;
- (void)p_updateStartTime;
- (void)p_updateVolume;
- (void)pausePlaybackIfNeeded;
- (void)playerController:(id)controller playbackDidFailWithError:(id)error;
- (void)prepareForPreview;
- (void)processChangedProperty:(unint64_t)property;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
@end

@implementation CRLAudioRep

- (CRLAudioRep)initWithLayout:(id)layout canvas:(id)canvas
{
  canvasCopy = canvas;
  v13.receiver = self;
  v13.super_class = CRLAudioRep;
  v7 = [(CRLCanvasRep *)&v13 initWithLayout:layout canvas:canvasCopy];
  v8 = v7;
  if (v7)
  {
    movieItem = [(CRLAudioRep *)v7 movieItem];

    if (movieItem)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      if ([canvasCopy isCanvasInteractive])
      {
        [(CRLAudioRep *)v8 p_listenForAssetChangesIfAppropriate];
      }
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (_TtC8Freeform12CRLMovieItem)movieItem
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (id)imageProviderForAlbumArt
{
  movieItem = [(CRLAudioRep *)self movieItem];
  posterImageAssetPayload = [movieItem posterImageAssetPayload];
  v4 = +[CRLImageProviderPool sharedPool];
  if (posterImageAssetPayload)
  {
    v5 = objc_opt_class();
    v6 = [v4 providerForAsset:posterImageAssetPayload shouldValidate:1];
    v7 = sub_100014370(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasAlbumArt
{
  imageProviderForAlbumArt = [(CRLAudioRep *)self imageProviderForAlbumArt];
  v3 = imageProviderForAlbumArt != 0;

  return v3;
}

- (BOOL)drawAlbumArtInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageProviderForAlbumArt = [(CRLAudioRep *)self imageProviderForAlbumArt];
  v10 = imageProviderForAlbumArt;
  if (imageProviderForAlbumArt)
  {
    [imageProviderForAlbumArt drawImageInContext:context rect:{x, y, width, height}];
  }

  return v10 != 0;
}

- (double)p_playButtonAndMinPaddingHeight:(BOOL)height
{
  [(CRLAudioRep *)self p_unscaledPlayButtonAndMinPaddingHeight];
  v6 = v5;
  if (!height)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas convertUnscaledToBoundsLength:v6];
    v6 = v8;
  }

  return v6;
}

- (double)p_playButtonAndTitleHeightWithRepSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLAudioRep *)self p_playButtonAndMinPaddingHeight:1];
  v7 = v6;
  if (![(CRLAudioRep *)self hasAlbumArt])
  {
    [(CRLAudioRep *)self p_titleTextHeightWithSize:width, height];
    return v7 + v8;
  }

  return v7;
}

- (BOOL)i_playButtonFitsInFrame
{
  [(CRLCanvasRep *)self naturalBounds];
  v4 = v3;
  v6 = v5;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas convertUnscaledToBoundsSize:{v4, v6}];
  v9 = v8;
  v11 = v10;

  [(CRLAudioRep *)self p_playButtonAndTitleHeightWithRepSize:v9, v11];
  return v12 <= v11;
}

- (void)drawInContext:(CGContext *)context
{
  mediaLayout = [(CRLMediaRep *)self mediaLayout];
  [mediaLayout boundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  CGContextSaveGState(context);
  v14 = +[CRLColor whiteColor];
  CGContextSetFillColorWithColor(context, [v14 CGColor]);

  movieItem = [(CRLAudioRep *)self movieItem];
  [movieItem cornerRadius];
  v17 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:v7 cornerRadius:v9, v11, v13, v16];

  if (v17)
  {
    CGContextAddPath(context, [v17 CGPath]);
    CGContextClip(context);
  }

  v18 = [(CRLAudioRep *)self drawAlbumArtInContext:context rect:v7, v9, v11, v13];
  i_playButtonFitsInFrame = [(CRLAudioRep *)self i_playButtonFitsInFrame];
  if ((v18 & 1) == 0)
  {
    v20 = [CRLAngleGradientFill alloc];
    v21 = +[CRLColor whiteColor];
    v22 = [CRLColor colorWithR:242 G:242 B:247];
    v23 = [(CRLAngleGradientFill *)v20 initWithStartColor:v21 endColor:v22 type:0 angle:-1.57079633];

    [(CRLAngleGradientFill *)v23 paintRect:context inContext:v7, v9, v11, v13];
    v24 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1005A65B8;
    v66[3] = &unk_101871B28;
    v66[4] = self;
    v67 = i_playButtonFitsInFrame;
    *&v66[5] = v7;
    *&v66[6] = v9;
    *&v66[7] = v11;
    *&v66[8] = v13;
    v66[9] = context;
    [UITraitCollection crl_withTraitCollectionAsCurrent:v24 performBlock:v66];
  }

  if (v17)
  {
    movieItem2 = [(CRLAudioRep *)self movieItem];
    stroke = [movieItem2 stroke];

    [stroke paintPath:objc_msgSend(v17 inContext:{"CGPath"), context}];
  }

  canvas = [(CRLCanvasRep *)self canvas];
  v28 = ([canvas isCanvasInteractive] ^ 1) & i_playButtonFitsInFrame;

  if (v28 == 1)
  {
    p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];
    [(CRLAudioRep *)self positionOfStandardKnob:p_playButtonKnob forBounds:v7, v9, v11, v13];
    v31 = v30;
    v33 = v32;

    v34 = sub_10011EC70(v31, v33, 48.0);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = +[CRLMovieRep CRLMovieButtonFillColor];
    CGContextSetFillColorWithColor(context, [v41 CGColor]);

    v68.origin.x = v34;
    v68.origin.y = v36;
    v68.size.width = v38;
    v68.size.height = v40;
    CGContextFillEllipseInRect(context, v68);
    v42 = sub_100120414(v34, v36, v38, v40);
    v44 = v43;
    v45 = v42 + 2.88;
    v46 = [CRLImage imageWithSystemImageNamed:@"play.fill" pointSize:22.0];
    [v46 size];
    v48 = v47;
    v50 = v49;
    v51 = sub_10011EC70(v45, v44, v47);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = +[CRLColor whiteColor];
    v59 = [v46 compositedImageWithColor:v58 alpha:20 blendMode:1.0];

    v60 = [v59 CGImageForSize:context inContext:0 orContentsScaleProvider:{v48, v50}];
    v69.origin.x = v51;
    v69.origin.y = v53;
    v69.size.width = v55;
    v69.size.height = v57;
    CGContextDrawImage(context, v69, v60);
  }

  CGContextRestoreGState(context);
  movieItem3 = [(CRLAudioRep *)self movieItem];
  posterImageAssetPayload = [movieItem3 posterImageAssetPayload];
  needsDownload = [posterImageAssetPayload needsDownload];

  if (needsDownload)
  {
    movieItem4 = [(CRLAudioRep *)self movieItem];
    posterImageAssetPayload2 = [movieItem4 posterImageAssetPayload];
    sub_100510F80(context, posterImageAssetPayload2);
  }
}

- (void)viewScaleDidChange
{
  v3.receiver = self;
  v3.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v3 viewScaleDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)willBeRemoved
{
  v13.receiver = self;
  v13.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v13 willBeRemoved];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v10 = sub_1005A6B80;
  v11 = &unk_10183AB38;
  selfCopy = self;
  if (+[NSThread isMainThread])
  {
    v10(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  if (!self->_downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399FAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399FD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139A078();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAudioRep willBeRemoved]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:409 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];
  }

  movieItem = [(CRLAudioRep *)self movieItem];
  store = [movieItem store];
  assetManager = [store assetManager];
  [assetManager removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  layout = [(CRLCanvasRep *)self layout];
  geometry = [layout geometry];
  [geometry size];

  v5 = sub_10011ECB4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  movieItem = [(CRLAudioRep *)self movieItem];
  [movieItem cornerRadius];
  v14 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:v5 cornerRadius:v7, v9, v11, v13];

  layout2 = [(CRLCanvasRep *)self layout];
  v16 = layout2;
  if (layout2)
  {
    [layout2 transformInRoot];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [v14 transformUsingAffineTransform:v18];

  return v14;
}

- (void)p_setUpAudioImageRenderablePath:(CGSize)path
{
  Mutable = CGPathCreateMutable();
  CFAutorelease(Mutable);
  CGPathAddArc(Mutable, 0, 22.0, 22.0, 22.0, -1.57079633, 4.71238898, 0);
  [(CRLCanvasRenderable *)self->_audioImageRenderable bounds];
  [(CRLCanvasRenderable *)self->_progressRenderable setPosition:sub_100120414(v5, v6, v7, v8)];
  [(CRLCanvasRenderable *)self->_progressRenderable setBounds:sub_10011ECB4()];
  progressRenderable = self->_progressRenderable;

  [(CRLCanvasShapeRenderable *)progressRenderable setPath:Mutable];
}

- (void)p_updateAudioImageRenerableAndTrack
{
  [(CRLAudioRep *)self p_playButtonSize];

  [(CRLAudioRep *)self p_setUpAudioImageRenderablePath:?];
}

- (void)p_setUpRenderables
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLAudioRep *)self p_playButtonSize];
  v4 = v3;
  v5 = objc_opt_class();
  p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];
  renderable = [p_playButtonKnob renderable];
  v8 = sub_100014370(v5, renderable);
  audioImageRenderable = self->_audioImageRenderable;
  self->_audioImageRenderable = v8;

  [(CRLCanvasRenderable *)self->_audioImageRenderable setBounds:sub_10011ECB4()];
  v10 = +[CRLColor whiteColor];
  -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v10 CGColor]);

  v11 = +[CRLColor clearColor];
  -[CRLCanvasShapeRenderable setFillColor:](self->_audioImageRenderable, "setFillColor:", [v11 CGColor]);

  [(CRLCanvasRenderable *)self->_audioImageRenderable setCornerRadius:v4 * 0.5];
  [(CRLCanvasRenderable *)self->_audioImageRenderable setDelegate:interactiveCanvasController];
  v12 = +[CRLCanvasShapeRenderable renderable];
  progressRenderable = self->_progressRenderable;
  self->_progressRenderable = v12;

  [(CRLCanvasShapeRenderable *)self->_progressRenderable setLineWidth:4.0];
  v14 = +[UIColor tintColor];
  v15 = [CRLColor colorWithUIColor:v14];
  -[CRLCanvasShapeRenderable setStrokeColor:](self->_progressRenderable, "setStrokeColor:", [v15 CGColor]);

  [(CRLCanvasShapeRenderable *)self->_progressRenderable setFillColor:0];
  [(CRLCanvasShapeRenderable *)self->_progressRenderable setStrokeEnd:0.0];
  [(CRLCanvasRenderable *)self->_progressRenderable setHidden:1];
  [(CRLCanvasRenderable *)self->_progressRenderable setDelegate:interactiveCanvasController];
  [(CRLCanvasRenderable *)self->_audioImageRenderable addSubrenderable:self->_progressRenderable];
  p_playButtonKnob2 = [(CRLAudioRep *)self p_playButtonKnob];
  imageRenderable = [p_playButtonKnob2 imageRenderable];
  playPauseRenderable = self->_playPauseRenderable;
  self->_playPauseRenderable = imageRenderable;

  p_playButtonImage = [(CRLAudioRep *)self p_playButtonImage];
  [p_playButtonImage size];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setBounds:sub_10011ECB4()];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setDelegate:interactiveCanvasController];
  [(CRLCanvasRenderable *)self->_audioImageRenderable bounds];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setPosition:sub_100120414(v20, v21, v22, v23)];
}

- (id)additionalRenderablesOverRenderable
{
  v6.receiver = self;
  v6.super_class = CRLAudioRep;
  additionalRenderablesOverRenderable = [(CRLMediaRep *)&v6 additionalRenderablesOverRenderable];
  v4 = [NSMutableArray arrayWithArray:additionalRenderablesOverRenderable];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
  if (!self->_audioImageRenderable)
  {
    [(CRLAudioRep *)self p_setUpRenderables];
  }

  [(CRLAudioRep *)self p_updateAudioImageRenerableAndTrack];
  [(CRLAudioRep *)self p_updatePlayPauseButton];
  +[CATransaction commit];

  return v4;
}

- (void)becameSelected
{
  if ([(CRLAudioRep *)self p_shouldPlayerControllerExistThroughoutSelection])
  {
    [(CRLAudioRep *)self p_setUpPlayerControllerIfNecessary];
  }

  else
  {
    [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
  }

  v3.receiver = self;
  v3.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v3 becameSelected];
}

- (void)becameNotSelected
{
  if ([(CRLAudioRep *)self p_shouldStopPlayingWhenDeselected])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v5 = sub_1005A7294;
    v6 = &unk_10183AB38;
    selfCopy = self;
    if (+[NSThread isMainThread])
    {
      v5(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  v3.receiver = self;
  v3.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v3 becameNotSelected];
}

- (void)documentEditabilityDidChange
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v5 documentEditabilityDidChange];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController editingDisabled])
  {
    isPlaying = [(CRLAudioRep *)self isPlaying];

    if (!isPlaying)
    {
      return;
    }

    interactiveCanvasController = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    [interactiveCanvasController setPlaying:0];
  }
}

- (void)p_addPlayButtonToKnobs:(id)knobs
{
  knobsCopy = knobs;
  p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];
  [knobsCopy crl_addObjects:{p_playButtonKnob, 0}];

  [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
}

- (void)addKnobsToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  arrayCopy = array;
  [(CRLCanvasRep *)&v5 addKnobsToArray:arrayCopy];
  [(CRLAudioRep *)self p_addPlayButtonToKnobs:arrayCopy, v5.receiver, v5.super_class];
}

- (unint64_t)enabledKnobMask
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  enabledKnobMask = [(CRLCanvasRep *)&v5 enabledKnobMask];
  if ([(CRLCanvasRep *)self shouldCreateKnobs]&& [(CRLCanvasRep *)self isSelected]&& ![(CRLAudioRep *)self i_playButtonFitsInFrame])
  {
    return enabledKnobMask & 0x28A;
  }

  return enabledKnobMask;
}

- (void)p_playTriggeredFromKnob
{
  if ([(CRLAudioRep *)self isPlayable])
  {
    [(CRLAudioRep *)self i_togglePlayback];
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (isLassoSelectionForMixedTypeEnabledInDrawingMode)
  {
    canvasEditor = [interactiveCanvasController canvasEditor];
    [canvasEditor hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[CRLCanvasButtonKnobTracker alloc] initWithRep:self knob:knobCopy];
    [(CRLCanvasButtonKnobTracker *)v5 setTarget:self];
    p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];

    if (p_playButtonKnob == knobCopy)
    {
      [(CRLCanvasButtonKnobTracker *)v5 setAction:"p_playTriggeredFromKnob"];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v5 = [(CRLCanvasRep *)&v8 newTrackerForKnob:knobCopy];
  }

  return v5;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  knobCopy = knob;
  p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];

  if (p_playButtonKnob == knobCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v6 = [(CRLCanvasRep *)&v8 directlyManagesVisibilityOfKnob:knobCopy];
  }

  return v6;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  knobCopy = knob;
  p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];

  if (p_playButtonKnob == knobCopy)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v6 = [(CRLCanvasRep *)&v8 canUseSpecializedHitRegionForKnob:knobCopy];
  }

  return v6;
}

- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  knobCopy = knob;
  v45.receiver = self;
  v45.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v45 positionOfStandardKnob:knobCopy forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  p_playButtonKnob = [(CRLAudioRep *)self p_playButtonKnob];

  if (p_playButtonKnob == knobCopy && [(CRLAudioRep *)self i_playButtonFitsInFrame])
  {
    [(CRLCanvasRep *)self naturalBounds];
    v42 = v16;
    v43 = v15;
    v18 = v17;
    v20 = v19;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas convertUnscaledToBoundsSize:{v18, v20}];
    v23 = v22;
    v25 = v24;

    [(CRLAudioRep *)self p_playButtonAndTitleHeightWithRepSize:v23, v25];
    v27 = v26;
    if (![(CRLAudioRep *)self hasAlbumArt])
    {
      [(CRLAudioRep *)self p_creatorTextHeightWithRect:v43, v42, v18, v20];
      v29 = v27 + v28;
      canvas2 = [(CRLCanvasRep *)self canvas];
      [canvas2 viewScale];
      v44 = v25;
      v32 = v29 * v31;

      if (v32 < v44)
      {
        v27 = v29;
      }
    }

    v33 = fmin((v20 - v27) * 0.5 + 10.0, 24.0);
    v11 = sub_100345F44(8, x, y, width, height);
    v35 = v34;
    [knobCopy radius];
    v37 = v35 - v36;
    canvas3 = [(CRLCanvasRep *)self canvas];
    [canvas3 viewScale];
    v13 = v37 - v33 / v39;
  }

  v40 = v11;
  v41 = v13;
  result.y = v41;
  result.x = v40;
  return result;
}

- (id)p_playButtonKnob
{
  playButtonKnob = self->_playButtonKnob;
  if (!playButtonKnob)
  {
    v4 = [CRLMovieKnob alloc];
    p_playButtonImage = [(CRLAudioRep *)self p_playButtonImage];
    v6 = +[CRLMovieRep CRLMovieButtonFillColor];
    v7 = [(CRLMovieKnob *)v4 initWithImage:p_playButtonImage radius:v6 backgroundColor:self onRep:24.0];
    v8 = self->_playButtonKnob;
    self->_playButtonKnob = v7;

    playButtonKnob = self->_playButtonKnob;
  }

  return playButtonKnob;
}

- (void)p_hidePlayButton
{
  if (![(CRLMovieKnob *)self->_playButtonKnob isHidden])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CRLMovieKnob *)self->_playButtonKnob setHidden:1];
    renderable = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [renderable removeAnimationForKey:@"hidden"];

    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&off_1018E33C0];
    [v5 setToValue:&off_1018E33D0];
    [v5 setDuration:0.2];
    renderable2 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [renderable2 addAnimation:v5 forKey:@"hidden"];

    +[CATransaction commit];
  }
}

- (void)p_showPlayButton
{
  if ([(CRLMovieKnob *)self->_playButtonKnob isHidden])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CRLMovieKnob *)self->_playButtonKnob setHidden:0];
    renderable = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [renderable removeAnimationForKey:@"hidden"];

    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&off_1018E33D0];
    [v5 setToValue:&off_1018E33C0];
    [v5 setDuration:0.2];
    renderable2 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [renderable2 addAnimation:v5 forKey:@"hidden"];

    +[CATransaction commit];
  }
}

- (CGSize)p_playButtonSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)p_playButtonImage
{
  [(CRLAudioRep *)self p_positionPlayButtonImage];

  return [CRLImage imageWithSystemImageNamed:@"play.fill" pointSize:22.0];
}

- (id)p_pauseButtonImage
{
  [(CRLAudioRep *)self p_positionPauseButtonImage];

  return [CRLImage imageWithSystemImageNamed:@"pause.fill" pointSize:22.0];
}

- (id)p_unpauseButtonImage
{
  [(CRLAudioRep *)self p_positionPlayButtonImage];

  return [(CRLAudioRep *)self p_playButtonImage];
}

- (void)p_positionPlayButtonImage
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CRLCanvasRenderable *)self->_audioImageRenderable bounds];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setPosition:sub_100120414(v3, v4, v5, v6) + 2.88];

  +[CATransaction commit];
}

- (void)p_positionPauseButtonImage
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CRLCanvasRenderable *)self->_audioImageRenderable bounds];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setPosition:sub_100120414(v3, v4, v5, v6)];

  +[CATransaction commit];
}

- (void)p_updatePlayabilityIfNecessary
{
  if (!self->_didCheckPlayability && !self->_assetForPlayabilityCheck)
  {
    movieItem = [(CRLAudioRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005A7F5C;
    v12[3] = &unk_10183AB38;
    v12[4] = self;
    v5 = objc_retainBlock(v12);
    if (movieAssetPayload)
    {
      if ([movieAssetPayload needsDownload])
      {
        self->_isPlayable = 0;
        self->_didCheckPlayability = 1;
        (v5[2])(v5);
      }

      else
      {
        v6 = [movieAssetPayload AVAssetAndReturnError:0];
        objc_storeStrong(&self->_assetForPlayabilityCheck, v6);
        self->_isPlayable = 0;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1005A8064;
        v8[3] = &unk_101842CD8;
        v9 = v6;
        selfCopy = self;
        v11 = v5;
        v7 = v6;
        [v7 loadValuesAsynchronouslyForKeys:&off_1018E2070 completionHandler:v8];
      }
    }
  }
}

- (void)p_cancelPlayabilityCheck
{
  [(AVAsset *)self->_assetForPlayabilityCheck cancelLoading];
  assetForPlayabilityCheck = self->_assetForPlayabilityCheck;
  self->_assetForPlayabilityCheck = 0;

  self->_didCheckPlayability = 0;
}

- (BOOL)isPlaying
{
  playerController = self->_playerController;
  if (playerController)
  {
    LOBYTE(playerController) = [(CRLAVPlayerController *)playerController isPlaying];
  }

  return playerController;
}

- (double)absoluteCurrentTime
{
  playerControllerForcingCreationIfNotPreExisting = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
  [playerControllerForcingCreationIfNotPreExisting absoluteCurrentTime];
  v4 = v3;

  return v4;
}

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  [(CRLMediaRep *)&v5 processChangedProperty:?];
  if (property <= 45)
  {
    if (property == 19)
    {
      if (self->_playerController)
      {
        [(CRLAudioRep *)self p_teardownPlayerController];
      }

      [(CRLAudioRep *)self p_cancelPlayabilityCheck];
      [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
      [(CRLAudioRep *)self p_listenForAssetChangesIfAppropriate];
    }

    else if (property == 45)
    {
      [(CRLAudioRep *)self p_updateStartTime];
    }
  }

  else
  {
    switch(property)
    {
      case '.':
        [(CRLAudioRep *)self p_updateEndTime];
        break;
      case '0':
        [(CRLAudioRep *)self p_updateVolume];
        break;
      case '8':
        [(CRLAudioRep *)self p_updateIsLooping];
        break;
    }
  }
}

- (void)p_updateVolume
{
  [(CRLAudioRep *)self volume];
  playerController = self->_playerController;

  [(CRLAVPlayerController *)playerController setVolume:?];
}

- (void)p_updateStartTime
{
  movieItem = [(CRLAudioRep *)self movieItem];
  [movieItem startTime];
  v5 = v4;

  playerController = self->_playerController;

  [(CRLAVPlayerController *)playerController setStartTime:v5];
}

- (void)p_updateEndTime
{
  movieItem = [(CRLAudioRep *)self movieItem];
  [movieItem endTime];
  v5 = v4;

  playerController = self->_playerController;

  [(CRLAVPlayerController *)playerController setEndTime:v5];
}

- (void)p_updateIsLooping
{
  movieItem = [(CRLAudioRep *)self movieItem];
  isLooping = [movieItem isLooping];

  playerControllerForcingCreationIfNotPreExisting = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
  [playerControllerForcingCreationIfNotPreExisting setRepeatMode:isLooping];
}

- (BOOL)shouldBecomeSelectedWhenPlaying
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  layout = [(CRLCanvasRep *)self layout];
  v6 = [canvasEditor isLayoutSelectable:layout];

  if (v6)
  {
    v7 = [interactiveCanvasController editingDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)noKnobTogglePlayAndMiniFormatter
{
  if (self->_isPlayable)
  {
    if ([(CRLAudioRep *)self i_playButtonFitsInFrame])
    {
      LOBYTE(isSelected) = 0;
    }

    else
    {
      isSelected = [(CRLCanvasRep *)self isSelected];
      if (isSelected)
      {
        [(CRLAudioRep *)self p_togglePlayPause];
        LOBYTE(isSelected) = 1;
      }
    }
  }

  else
  {
    LOBYTE(isSelected) = 0;
  }

  return isSelected;
}

- (BOOL)p_togglePlayPause
{
  isPlaying = [(CRLAudioRep *)self isPlaying];
  if (self->_isPlayable)
  {
    playerControllerForcingCreationIfNotPreExisting = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting setPlaying:isPlaying ^ 1];
  }

  return isPlaying ^ 1;
}

- (id)p_selectionPath
{
  isSelected = [(CRLCanvasRep *)self isSelected];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = interactiveCanvasController;
  if (isSelected)
  {
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
  }

  else
  {
    editorController = [interactiveCanvasController canvasEditor];
    movieItem = [(CRLAudioRep *)self movieItem];
    selectionPath = [editorController selectionPathWithInfo:movieItem];
  }

  return selectionPath;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  memset(&v12, 0, sizeof(v12));
  layout = [(CRLCanvasRep *)self layout];
  originalPureGeometry = [layout originalPureGeometry];
  v6 = originalPureGeometry;
  if (originalPureGeometry)
  {
    [originalPureGeometry fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);

  t1 = v12;
  v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v8;
}

- (void)p_updatePlayPauseButton
{
  i_playButtonFitsInFrame = [(CRLAudioRep *)self i_playButtonFitsInFrame];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (i_playButtonFitsInFrame)
  {
    [(CRLAudioRep *)self p_showPlayButton];
  }

  else
  {
    [(CRLAudioRep *)self p_hidePlayButton];
  }

  playbackState = self->_playbackState;
  switch(playbackState)
  {
    case 2uLL:
      p_unpauseButtonImage = [(CRLAudioRep *)self p_unpauseButtonImage];
      v11 = +[CRLColor whiteColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v11 CGColor]);
      goto LABEL_10;
    case 1uLL:
      p_pauseButtonImage = [(CRLAudioRep *)self p_pauseButtonImage];
      v14 = +[CRLColor whiteColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v14 CGColor]);

      v11 = +[CRLColor blackColor];
      p_unpauseButtonImage = [p_pauseButtonImage compositedImageWithColor:v11 alpha:20 blendMode:1.0];

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    case 0uLL:
      v9 = +[CRLMovieRep CRLMovieButtonFillColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v9 CGColor]);

      p_playButtonImage = [(CRLAudioRep *)self p_playButtonImage];
      v11 = +[CRLColor whiteColor];
      p_unpauseButtonImage = [p_playButtonImage compositedImageWithColor:v11 alpha:20 blendMode:1.0];

      v12 = 1;
LABEL_11:

      [(CRLCanvasRenderable *)self->_progressRenderable setHidden:v12];
      goto LABEL_13;
  }

  p_unpauseButtonImage = 0;
LABEL_13:
  [(CRLCanvasButtonKnob *)self->_playButtonKnob setImage:p_unpauseButtonImage];
  if (self->_isPlayable)
  {
    repForSelecting = [(CRLCanvasRep *)self repForSelecting];
    [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:repForSelecting == self];
  }

  else
  {
    [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:0];
  }

  [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:[(CRLCanvasButtonKnob *)self->_playButtonKnob isEnabled]& (isCurrentlyInQuickSelectMode ^ 1)];
  +[CATransaction commit];
}

- (void)p_setUpSpinnerAnimationIfNeeded
{
  spinnerRenderable = self->_spinnerRenderable;
  if (spinnerRenderable)
  {
    v4 = [(CRLCanvasRenderable *)spinnerRenderable animationForKey:@"spin"];

    if (!v4)
    {
      v9 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
      [v9 setDelegate:0];
      [v9 setDuration:1.0];
      v5 = [NSNumber numberWithFloat:0.0];
      [v9 setFromValue:v5];

      LODWORD(v6) = 1086918619;
      v7 = [NSNumber numberWithFloat:v6];
      [v9 setToValue:v7];

      LODWORD(v8) = 1203982336;
      [v9 setRepeatCount:v8];
      [(CRLCanvasRenderable *)self->_spinnerRenderable addAnimation:v9 forKey:@"spin"];
    }
  }
}

- (id)dataForUpdateUploadIndicator
{
  movieItem = [(CRLAudioRep *)self movieItem];
  movieAssetPayload = [movieItem movieAssetPayload];

  if (movieAssetPayload)
  {
    v6 = movieAssetPayload;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (float)volume
{
  if (self->_isChangingDynamicVolume)
  {
    return self->_dynamicVolume;
  }

  movieItem = [(CRLAudioRep *)self movieItem];
  [movieItem volume];
  v5 = v4;

  return v5;
}

- (void)dynamicVolumeChangeDidBegin
{
  [(CRLAudioRep *)self volume];
  self->_dynamicVolume = v3;
  self->_isChangingDynamicVolume = 1;
}

- (void)p_setUpPlayerControllerIfNecessary
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139A0A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139A0B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139A144();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAudioRep p_setUpPlayerControllerIfNecessary]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1235 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (!self->_playerController)
  {
    if (!self->_isPlayable)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A16C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A194();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A224();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLAudioRep p_setUpPlayerControllerIfNecessary]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1237 isFatal:0 description:"Setting up player controller when audio isn't playable!"];
    }

    movieItem = [(CRLAudioRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];
    needsDownload = [movieAssetPayload needsDownload];

    if (needsDownload)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A24C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A274();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A304();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLAudioRep p_setUpPlayerControllerIfNecessary]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1239 isFatal:0 description:"Setting up player controller for data that needs to be downloaded!"];
    }

    v15 = [movieItem makeAVAssetAndReturnError:0];
    if (v15)
    {
      v16 = [AVPlayerItem playerItemWithAsset:v15];
      v17 = [[CRLAVPlayerController alloc] initWithPlayerItem:v16 delegate:self];
      playerController = self->_playerController;
      self->_playerController = v17;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A32C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A354();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A3F8();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      v16 = [NSString stringWithUTF8String:"[CRLAudioRep p_setUpPlayerControllerIfNecessary]"];
      playerController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:playerController lineNumber:1242 isFatal:0 description:"invalid nil value for '%{public}s'", "asset"];
    }

    if (self->_playerController)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_10139A420();
      }

      v20 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_playerController;
        *buf = 134218240;
        selfCopy = self;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "audio rep %p making audio player controller %p", buf, 0x16u);
      }

      [(CRLAudioRep *)self p_updateStartTime];
      [(CRLAudioRep *)self p_updateIsLooping];
      [movieItem endTime];
      if (v22 != 0.0)
      {
        [(CRLAudioRep *)self p_updateEndTime];
      }

      [(CRLAudioRep *)self p_updateVolume];
      [(CRLAVPlayerController *)self->_playerController addObserver:self forKeyPath:@"playing" options:4 context:off_1019F1188];
      v32 = @"CRLInteractiveCanvasControllerMediaRepKey";
      selfCopy2 = self;
      v23 = [NSDictionary dictionaryWithObjects:&selfCopy2 forKeys:&v32 count:1];
      v24 = [v23 mutableCopy];
      v25 = v24;
      v26 = self->_playerController;
      if (v26)
      {
        [v24 setObject:v26 forKeyedSubscript:@"CRLInteractiveCanvasControllerPlayerControllerKey"];
      }

      v27 = +[NSNotificationCenter defaultCenter];
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [v27 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:interactiveCanvasController userInfo:v25];

      v29 = [[CRLMediaPlayerTimeController alloc] initWithPlayerController:self->_playerController];
      timeController = self->_timeController;
      self->_timeController = v29;

      [(CRLMediaPlayerTimeController *)self->_timeController startObservingTime];
      [(CRLAVPlayerController *)self->_playerController addObserver:self forKeyPath:@"duration" options:4 context:off_1019F1190];
      [(CRLMediaPlayerTimeController *)self->_timeController addObserver:self forKeyPath:@"currentTime" options:0 context:off_1019F1198];
    }

    else
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_10139A448();
      }

      v31 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "audio rep attempted to set up the playerController but was unable to.", buf, 2u);
      }
    }
  }
}

- (void)p_teardownPlayerController
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139A470();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139A484();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139A514();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAudioRep p_teardownPlayerController]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1291 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (self->_playerController)
  {
    [(CRLMediaPlayerTimeController *)self->_timeController stopObservingTime];
    [(CRLMediaPlayerTimeController *)self->_timeController removeObserver:self forKeyPath:@"currentTime"];
    timeController = self->_timeController;
    self->_timeController = 0;

    if ([(CRLAVPlayerController *)self->_playerController isPlaying])
    {
      [(CRLAVPlayerController *)self->_playerController setPlaying:0];
    }

    [(CRLAVPlayerController *)self->_playerController removeObserver:self forKeyPath:@"duration"];
    [(CRLAVPlayerController *)self->_playerController removeObserver:self forKeyPath:@"playing"];
    [(CRLAVPlayerController *)self->_playerController teardown];
    if (qword_101AD5CA8 != -1)
    {
      sub_10139A53C();
    }

    v7 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      playerController = self->_playerController;
      *buf = 134218240;
      selfCopy = self;
      v17 = 2048;
      v18 = playerController;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audio rep %p clearing player controller %p in p_teardownPlayerController", buf, 0x16u);
    }

    v9 = self->_playerController;
    self->_playerController = 0;

    v10 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v13 = @"CRLInteractiveCanvasControllerMediaRepKey";
    selfCopy2 = self;
    v12 = [NSDictionary dictionaryWithObjects:&selfCopy2 forKeys:&v13 count:1];
    [v10 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:interactiveCanvasController userInfo:v12];
  }

  if (self->_playbackState)
  {
    self->_playbackState = 0;
    [(CRLAudioRep *)self p_updatePlayPauseButton];
  }
}

- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting
{
  [(CRLAudioRep *)self p_setUpPlayerControllerIfNecessary];
  playerController = self->_playerController;

  return playerController;
}

- (void)pausePlaybackIfNeeded
{
  if ([(CRLAudioRep *)self isPlaying])
  {

    [(CRLAudioRep *)self i_togglePlayback];
  }
}

- (void)playerController:(id)controller playbackDidFailWithError:(id)error
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005A9C58;
  v6[3] = &unk_10183AE28;
  v6[4] = self;
  errorCopy = error;
  v4 = errorCopy;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v6);
  CFRunLoopWakeUp(Main);
}

- (id)nowPlayingTitleWithPlaybackController:(id)controller
{
  if (self->_playerController == controller)
  {
    movieItem = [(CRLAudioRep *)self movieItem];
    title = [movieItem title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)nowPlayingImageProviderWithPlaybackController:(id)controller
{
  if (self->_playerController == controller)
  {
    imageProviderForAlbumArt = [(CRLAudioRep *)self imageProviderForAlbumArt];
  }

  else
  {
    imageProviderForAlbumArt = 0;
  }

  return imageProviderForAlbumArt;
}

- (void)p_listenForAssetChangesIfAppropriate
{
  downloadObserverIdentifier = self->_downloadObserverIdentifier;
  if (!downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139A564();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139A578();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139A61C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLAudioRep p_listenForAssetChangesIfAppropriate]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLAudioRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1375 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];

    downloadObserverIdentifier = self->_downloadObserverIdentifier;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005AA044;
  v13[3] = &unk_101842F90;
  v13[4] = self;
  v13[5] = downloadObserverIdentifier;
  v7 = downloadObserverIdentifier;
  v8 = objc_retainBlock(v13);
  movieItem = [(CRLAudioRep *)self movieItem];
  movieAssetPayload = [movieItem movieAssetPayload];
  (v8[2])(v8, movieAssetPayload);

  movieItem2 = [(CRLAudioRep *)self movieItem];
  posterImageAssetPayload = [movieItem2 posterImageAssetPayload];
  (v8[2])(v8, posterImageAssetPayload);
}

- (void)p_handleAssetPreparationCompletionForAsset:(id)asset
{
  assetCopy = asset;
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLStyledRep *)self setNeedsDisplay];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];

    [(CRLAudioRep *)self p_updateDownloadSpinnerState];
    [(CRLAudioRep *)self p_cancelPlayabilityCheck];
    [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
    movieItem = [(CRLAudioRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];

    if (movieAssetPayload == assetCopy)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      v11 = @"CRLInteractiveCanvasControllerMediaRepKey";
      selfCopy = self;
      v10 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v11 count:1];
      [v8 postNotificationName:@"CRLInteractiveCanvasControllerDidLoadAssetForMediaRepNotification" object:interactiveCanvasController2 userInfo:v10];
    }
  }
}

- (void)p_updateDownloadSpinnerState
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_1019F1188 == context)
  {
    shouldBecomeSelectedWhenPlaying = [(CRLAudioRep *)self shouldBecomeSelectedWhenPlaying];
    playerControllerForcingCreationIfNotPreExisting = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    isPlaying = [playerControllerForcingCreationIfNotPreExisting isPlaying];

    if (isPlaying)
    {
      if (![(CRLCanvasRep *)self isSelected]&& ((shouldBecomeSelectedWhenPlaying ^ 1) & 1) == 0)
      {
        p_selectionPath = [(CRLAudioRep *)self p_selectionPath];
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        editorController = [interactiveCanvasController editorController];
        [editorController setSelectionPath:p_selectionPath];
      }

      self->_playbackState = 1;
    }

    else if (self->_playbackState == 1)
    {
      self->_playbackState = 2;
      [(CRLMediaPlayerTimeController *)self->_timeController currentTime];
      v25 = v24;
      [(CRLMediaPlayerTimeController *)self->_timeController updateInterval];
      v27 = v25 + v26;
      [(CRLAVPlayerController *)self->_playerController duration];
      if (v27 > v28)
      {
        self->_playbackState = 0;
      }
    }

    [(CRLAudioRep *)self p_updatePlayPauseButton];
  }

  else if (off_1019F1190 == context)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
    v21 = v20 * 138.230077;

    [(CRLAVPlayerController *)self->_playerController duration];
    v23 = v22 / (v21 * 4.0);
    if (v23 < 0.0166666667)
    {
      v23 = 0.0166666667;
    }

    [(CRLMediaPlayerTimeController *)self->_timeController setUpdateInterval:v23];
  }

  else if (off_1019F1198 == context)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CRLMediaPlayerTimeController *)self->_timeController currentTime];
    v30 = v29;
    [(CRLAVPlayerController *)self->_playerController duration];
    [(CRLCanvasShapeRenderable *)self->_progressRenderable setStrokeEnd:v30 / v31];
    +[CATransaction commit];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = CRLAudioRep;
    [(CRLAudioRep *)&v32 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (double)ifFitsDrawTitleWithContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  selfCopy = self;
  sub_1005C9230(contextCopy, x, y, width, height);
  v12 = v11;

  return v12;
}

- (double)ifFitsDrawCreatorWithContext:(CGContext *)context rect:(CGRect)rect topPadding:(double)padding
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  selfCopy = self;
  sub_1005C9948(contextCopy, x, y, width, height, padding);
  v14 = v13;

  return v14;
}

- (double)p_creatorTextHeightWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1005CA040(x, y, width, height);
  v9 = v8;

  return v9;
}

- (double)p_titleTextHeightWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1005CA574(width, height);
  v7 = v6;

  return v7;
}

- (void)prepareForPreview
{
  selfCopy = self;
  if ([(CRLAudioRep *)selfCopy isPlaying])
  {
    [(CRLAudioRep *)selfCopy pausePlaybackIfNeeded];
  }
}

- (void)enterPreviewMode
{
  selfCopy = self;
  [(CRLAudioRep *)selfCopy prepareForPreview];
  info = [(CRLCanvasRep *)selfCopy info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125BF90();
  }

  else
  {
    sub_10125CC64();
  }
}

@end