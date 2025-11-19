@interface CRLAudioRep
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)drawAlbumArtInContext:(CGContext *)a3 rect:(CGRect)a4;
- (BOOL)hasAlbumArt;
- (BOOL)i_playButtonFitsInFrame;
- (BOOL)isPlaying;
- (BOOL)noKnobTogglePlayAndMiniFormatter;
- (BOOL)p_togglePlayPause;
- (BOOL)shouldBecomeSelectedWhenPlaying;
- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4;
- (CGSize)p_playButtonSize;
- (CRLAudioRep)initWithLayout:(id)a3 canvas:(id)a4;
- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting;
- (_TtC8Freeform12CRLMovieItem)movieItem;
- (double)absoluteCurrentTime;
- (double)ifFitsDrawCreatorWithContext:(CGContext *)a3 rect:(CGRect)a4 topPadding:(double)a5;
- (double)ifFitsDrawTitleWithContext:(CGContext *)a3 rect:(CGRect)a4;
- (double)p_creatorTextHeightWithRect:(CGRect)a3;
- (double)p_playButtonAndMinPaddingHeight:(BOOL)a3;
- (double)p_playButtonAndTitleHeightWithRepSize:(CGSize)a3;
- (double)p_titleTextHeightWithSize:(CGSize)a3;
- (float)volume;
- (id)additionalRenderablesOverRenderable;
- (id)dataForUpdateUploadIndicator;
- (id)imageProviderForAlbumArt;
- (id)newTrackerForKnob:(id)a3;
- (id)nowPlayingImageProviderWithPlaybackController:(id)a3;
- (id)nowPlayingTitleWithPlaybackController:(id)a3;
- (id)p_pauseButtonImage;
- (id)p_playButtonImage;
- (id)p_playButtonKnob;
- (id)p_selectionPath;
- (id)p_unpauseButtonImage;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)documentEditabilityDidChange;
- (void)drawInContext:(CGContext *)a3;
- (void)dynamicVolumeChangeDidBegin;
- (void)enterPreviewMode;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_addPlayButtonToKnobs:(id)a3;
- (void)p_cancelPlayabilityCheck;
- (void)p_handleAssetPreparationCompletionForAsset:(id)a3;
- (void)p_hidePlayButton;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_playTriggeredFromKnob;
- (void)p_positionPauseButtonImage;
- (void)p_positionPlayButtonImage;
- (void)p_setUpAudioImageRenderablePath:(CGSize)a3;
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
- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4;
- (void)prepareForPreview;
- (void)processChangedProperty:(unint64_t)a3;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
@end

@implementation CRLAudioRep

- (CRLAudioRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CRLAudioRep;
  v7 = [(CRLCanvasRep *)&v13 initWithLayout:a3 canvas:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(CRLAudioRep *)v7 movieItem];

    if (v9)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      if ([v6 isCanvasInteractive])
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
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)imageProviderForAlbumArt
{
  v2 = [(CRLAudioRep *)self movieItem];
  v3 = [v2 posterImageAssetPayload];
  v4 = +[CRLImageProviderPool sharedPool];
  if (v3)
  {
    v5 = objc_opt_class();
    v6 = [v4 providerForAsset:v3 shouldValidate:1];
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
  v2 = [(CRLAudioRep *)self imageProviderForAlbumArt];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)drawAlbumArtInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(CRLAudioRep *)self imageProviderForAlbumArt];
  v10 = v9;
  if (v9)
  {
    [v9 drawImageInContext:a3 rect:{x, y, width, height}];
  }

  return v10 != 0;
}

- (double)p_playButtonAndMinPaddingHeight:(BOOL)a3
{
  [(CRLAudioRep *)self p_unscaledPlayButtonAndMinPaddingHeight];
  v6 = v5;
  if (!a3)
  {
    v7 = [(CRLCanvasRep *)self canvas];
    [v7 convertUnscaledToBoundsLength:v6];
    v6 = v8;
  }

  return v6;
}

- (double)p_playButtonAndTitleHeightWithRepSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v7 = [(CRLCanvasRep *)self canvas];
  [v7 convertUnscaledToBoundsSize:{v4, v6}];
  v9 = v8;
  v11 = v10;

  [(CRLAudioRep *)self p_playButtonAndTitleHeightWithRepSize:v9, v11];
  return v12 <= v11;
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(CRLMediaRep *)self mediaLayout];
  [v5 boundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  CGContextSaveGState(a3);
  v14 = +[CRLColor whiteColor];
  CGContextSetFillColorWithColor(a3, [v14 CGColor]);

  v15 = [(CRLAudioRep *)self movieItem];
  [v15 cornerRadius];
  v17 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:v7 cornerRadius:v9, v11, v13, v16];

  if (v17)
  {
    CGContextAddPath(a3, [v17 CGPath]);
    CGContextClip(a3);
  }

  v18 = [(CRLAudioRep *)self drawAlbumArtInContext:a3 rect:v7, v9, v11, v13];
  v19 = [(CRLAudioRep *)self i_playButtonFitsInFrame];
  if ((v18 & 1) == 0)
  {
    v20 = [CRLAngleGradientFill alloc];
    v21 = +[CRLColor whiteColor];
    v22 = [CRLColor colorWithR:242 G:242 B:247];
    v23 = [(CRLAngleGradientFill *)v20 initWithStartColor:v21 endColor:v22 type:0 angle:-1.57079633];

    [(CRLAngleGradientFill *)v23 paintRect:a3 inContext:v7, v9, v11, v13];
    v24 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1005A65B8;
    v66[3] = &unk_101871B28;
    v66[4] = self;
    v67 = v19;
    *&v66[5] = v7;
    *&v66[6] = v9;
    *&v66[7] = v11;
    *&v66[8] = v13;
    v66[9] = a3;
    [UITraitCollection crl_withTraitCollectionAsCurrent:v24 performBlock:v66];
  }

  if (v17)
  {
    v25 = [(CRLAudioRep *)self movieItem];
    v26 = [v25 stroke];

    [v26 paintPath:objc_msgSend(v17 inContext:{"CGPath"), a3}];
  }

  v27 = [(CRLCanvasRep *)self canvas];
  v28 = ([v27 isCanvasInteractive] ^ 1) & v19;

  if (v28 == 1)
  {
    v29 = [(CRLAudioRep *)self p_playButtonKnob];
    [(CRLAudioRep *)self positionOfStandardKnob:v29 forBounds:v7, v9, v11, v13];
    v31 = v30;
    v33 = v32;

    v34 = sub_10011EC70(v31, v33, 48.0);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = +[CRLMovieRep CRLMovieButtonFillColor];
    CGContextSetFillColorWithColor(a3, [v41 CGColor]);

    v68.origin.x = v34;
    v68.origin.y = v36;
    v68.size.width = v38;
    v68.size.height = v40;
    CGContextFillEllipseInRect(a3, v68);
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

    v60 = [v59 CGImageForSize:a3 inContext:0 orContentsScaleProvider:{v48, v50}];
    v69.origin.x = v51;
    v69.origin.y = v53;
    v69.size.width = v55;
    v69.size.height = v57;
    CGContextDrawImage(a3, v69, v60);
  }

  CGContextRestoreGState(a3);
  v61 = [(CRLAudioRep *)self movieItem];
  v62 = [v61 posterImageAssetPayload];
  v63 = [v62 needsDownload];

  if (v63)
  {
    v64 = [(CRLAudioRep *)self movieItem];
    v65 = [v64 posterImageAssetPayload];
    sub_100510F80(a3, v65);
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
  v12 = self;
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

  v6 = [(CRLAudioRep *)self movieItem];
  v7 = [v6 store];
  v8 = [v7 assetManager];
  [v8 removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 geometry];
  [v4 size];

  v5 = sub_10011ECB4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CRLAudioRep *)self movieItem];
  [v12 cornerRadius];
  v14 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:v5 cornerRadius:v7, v9, v11, v13];

  v15 = [(CRLCanvasRep *)self layout];
  v16 = v15;
  if (v15)
  {
    [v15 transformInRoot];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [v14 transformUsingAffineTransform:v18];

  return v14;
}

- (void)p_setUpAudioImageRenderablePath:(CGSize)a3
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
  v24 = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLAudioRep *)self p_playButtonSize];
  v4 = v3;
  v5 = objc_opt_class();
  v6 = [(CRLAudioRep *)self p_playButtonKnob];
  v7 = [v6 renderable];
  v8 = sub_100014370(v5, v7);
  audioImageRenderable = self->_audioImageRenderable;
  self->_audioImageRenderable = v8;

  [(CRLCanvasRenderable *)self->_audioImageRenderable setBounds:sub_10011ECB4()];
  v10 = +[CRLColor whiteColor];
  -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v10 CGColor]);

  v11 = +[CRLColor clearColor];
  -[CRLCanvasShapeRenderable setFillColor:](self->_audioImageRenderable, "setFillColor:", [v11 CGColor]);

  [(CRLCanvasRenderable *)self->_audioImageRenderable setCornerRadius:v4 * 0.5];
  [(CRLCanvasRenderable *)self->_audioImageRenderable setDelegate:v24];
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
  [(CRLCanvasRenderable *)self->_progressRenderable setDelegate:v24];
  [(CRLCanvasRenderable *)self->_audioImageRenderable addSubrenderable:self->_progressRenderable];
  v16 = [(CRLAudioRep *)self p_playButtonKnob];
  v17 = [v16 imageRenderable];
  playPauseRenderable = self->_playPauseRenderable;
  self->_playPauseRenderable = v17;

  v19 = [(CRLAudioRep *)self p_playButtonImage];
  [v19 size];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setBounds:sub_10011ECB4()];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setDelegate:v24];
  [(CRLCanvasRenderable *)self->_audioImageRenderable bounds];
  [(CRLCanvasRenderable *)self->_playPauseRenderable setPosition:sub_100120414(v20, v21, v22, v23)];
}

- (id)additionalRenderablesOverRenderable
{
  v6.receiver = self;
  v6.super_class = CRLAudioRep;
  v3 = [(CRLMediaRep *)&v6 additionalRenderablesOverRenderable];
  v4 = [NSMutableArray arrayWithArray:v3];

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
    v7 = self;
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v3 editingDisabled])
  {
    v4 = [(CRLAudioRep *)self isPlaying];

    if (!v4)
    {
      return;
    }

    v3 = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v3 setPlaying:0];
  }
}

- (void)p_addPlayButtonToKnobs:(id)a3
{
  v4 = a3;
  v5 = [(CRLAudioRep *)self p_playButtonKnob];
  [v4 crl_addObjects:{v5, 0}];

  [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
}

- (void)addKnobsToArray:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  v4 = a3;
  [(CRLCanvasRep *)&v5 addKnobsToArray:v4];
  [(CRLAudioRep *)self p_addPlayButtonToKnobs:v4, v5.receiver, v5.super_class];
}

- (unint64_t)enabledKnobMask
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  v3 = [(CRLCanvasRep *)&v5 enabledKnobMask];
  if ([(CRLCanvasRep *)self shouldCreateKnobs]&& [(CRLCanvasRep *)self isSelected]&& ![(CRLAudioRep *)self i_playButtonFitsInFrame])
  {
    return v3 & 0x28A;
  }

  return v3;
}

- (void)p_playTriggeredFromKnob
{
  if ([(CRLAudioRep *)self isPlayable])
  {
    [(CRLAudioRep *)self i_togglePlayback];
  }

  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v6 freehandDrawingToolkit];
  v4 = [v3 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (v4)
  {
    v5 = [v6 canvasEditor];
    [v5 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[CRLCanvasButtonKnobTracker alloc] initWithRep:self knob:v4];
    [(CRLCanvasButtonKnobTracker *)v5 setTarget:self];
    v6 = [(CRLAudioRep *)self p_playButtonKnob];

    if (v6 == v4)
    {
      [(CRLCanvasButtonKnobTracker *)v5 setAction:"p_playTriggeredFromKnob"];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v5 = [(CRLCanvasRep *)&v8 newTrackerForKnob:v4];
  }

  return v5;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v4 = a3;
  v5 = [(CRLAudioRep *)self p_playButtonKnob];

  if (v5 == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v6 = [(CRLCanvasRep *)&v8 directlyManagesVisibilityOfKnob:v4];
  }

  return v6;
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  v4 = a3;
  v5 = [(CRLAudioRep *)self p_playButtonKnob];

  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRep;
    v6 = [(CRLCanvasRep *)&v8 canUseSpecializedHitRegionForKnob:v4];
  }

  return v6;
}

- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v45.receiver = self;
  v45.super_class = CRLAudioRep;
  [(CRLCanvasRep *)&v45 positionOfStandardKnob:v9 forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v14 = [(CRLAudioRep *)self p_playButtonKnob];

  if (v14 == v9 && [(CRLAudioRep *)self i_playButtonFitsInFrame])
  {
    [(CRLCanvasRep *)self naturalBounds];
    v42 = v16;
    v43 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(CRLCanvasRep *)self canvas];
    [v21 convertUnscaledToBoundsSize:{v18, v20}];
    v23 = v22;
    v25 = v24;

    [(CRLAudioRep *)self p_playButtonAndTitleHeightWithRepSize:v23, v25];
    v27 = v26;
    if (![(CRLAudioRep *)self hasAlbumArt])
    {
      [(CRLAudioRep *)self p_creatorTextHeightWithRect:v43, v42, v18, v20];
      v29 = v27 + v28;
      v30 = [(CRLCanvasRep *)self canvas];
      [v30 viewScale];
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
    [v9 radius];
    v37 = v35 - v36;
    v38 = [(CRLCanvasRep *)self canvas];
    [v38 viewScale];
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
    v5 = [(CRLAudioRep *)self p_playButtonImage];
    v6 = +[CRLMovieRep CRLMovieButtonFillColor];
    v7 = [(CRLMovieKnob *)v4 initWithImage:v5 radius:v6 backgroundColor:self onRep:24.0];
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
    v3 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [v3 removeAnimationForKey:@"hidden"];

    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&off_1018E33C0];
    [v5 setToValue:&off_1018E33D0];
    [v5 setDuration:0.2];
    v4 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [v4 addAnimation:v5 forKey:@"hidden"];

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
    v3 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [v3 removeAnimationForKey:@"hidden"];

    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&off_1018E33D0];
    [v5 setToValue:&off_1018E33C0];
    [v5 setDuration:0.2];
    v4 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
    [v4 addAnimation:v5 forKey:@"hidden"];

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
    v3 = [(CRLAudioRep *)self movieItem];
    v4 = [v3 movieAssetPayload];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005A7F5C;
    v12[3] = &unk_10183AB38;
    v12[4] = self;
    v5 = objc_retainBlock(v12);
    if (v4)
    {
      if ([v4 needsDownload])
      {
        self->_isPlayable = 0;
        self->_didCheckPlayability = 1;
        (v5[2])(v5);
      }

      else
      {
        v6 = [v4 AVAssetAndReturnError:0];
        objc_storeStrong(&self->_assetForPlayabilityCheck, v6);
        self->_isPlayable = 0;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1005A8064;
        v8[3] = &unk_101842CD8;
        v9 = v6;
        v10 = self;
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
  v2 = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
  [v2 absoluteCurrentTime];
  v4 = v3;

  return v4;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLAudioRep;
  [(CRLMediaRep *)&v5 processChangedProperty:?];
  if (a3 <= 45)
  {
    if (a3 == 19)
    {
      if (self->_playerController)
      {
        [(CRLAudioRep *)self p_teardownPlayerController];
      }

      [(CRLAudioRep *)self p_cancelPlayabilityCheck];
      [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
      [(CRLAudioRep *)self p_listenForAssetChangesIfAppropriate];
    }

    else if (a3 == 45)
    {
      [(CRLAudioRep *)self p_updateStartTime];
    }
  }

  else
  {
    switch(a3)
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
  v3 = [(CRLAudioRep *)self movieItem];
  [v3 startTime];
  v5 = v4;

  playerController = self->_playerController;

  [(CRLAVPlayerController *)playerController setStartTime:v5];
}

- (void)p_updateEndTime
{
  v3 = [(CRLAudioRep *)self movieItem];
  [v3 endTime];
  v5 = v4;

  playerController = self->_playerController;

  [(CRLAVPlayerController *)playerController setEndTime:v5];
}

- (void)p_updateIsLooping
{
  v3 = [(CRLAudioRep *)self movieItem];
  v4 = [v3 isLooping];

  v5 = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
  [v5 setRepeatMode:v4];
}

- (BOOL)shouldBecomeSelectedWhenPlaying
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 canvasEditor];
  v5 = [(CRLCanvasRep *)self layout];
  v6 = [v4 isLayoutSelectable:v5];

  if (v6)
  {
    v7 = [v3 editingDisabled] ^ 1;
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
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [(CRLCanvasRep *)self isSelected];
      if (v3)
      {
        [(CRLAudioRep *)self p_togglePlayPause];
        LOBYTE(v3) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)p_togglePlayPause
{
  v3 = [(CRLAudioRep *)self isPlaying];
  if (self->_isPlayable)
  {
    v4 = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v4 setPlaying:v3 ^ 1];
  }

  return v3 ^ 1;
}

- (id)p_selectionPath
{
  v3 = [(CRLCanvasRep *)self isSelected];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 editorController];
    v7 = [v6 selectionPath];
  }

  else
  {
    v6 = [v4 canvasEditor];
    v8 = [(CRLAudioRep *)self movieItem];
    v7 = [v6 selectionPathWithInfo:v8];
  }

  return v7;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  memset(&v12, 0, sizeof(v12));
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v4 originalPureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);

  t1 = v12;
  v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v8;
}

- (void)p_updatePlayPauseButton
{
  v3 = [(CRLAudioRep *)self i_playButtonFitsInFrame];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];
  v7 = [v6 isCurrentlyInQuickSelectMode];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (v3)
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
      v16 = [(CRLAudioRep *)self p_unpauseButtonImage];
      v11 = +[CRLColor whiteColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v11 CGColor]);
      goto LABEL_10;
    case 1uLL:
      v13 = [(CRLAudioRep *)self p_pauseButtonImage];
      v14 = +[CRLColor whiteColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v14 CGColor]);

      v11 = +[CRLColor blackColor];
      v16 = [v13 compositedImageWithColor:v11 alpha:20 blendMode:1.0];

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    case 0uLL:
      v9 = +[CRLMovieRep CRLMovieButtonFillColor];
      -[CRLCanvasRenderable setBackgroundColor:](self->_audioImageRenderable, "setBackgroundColor:", [v9 CGColor]);

      v10 = [(CRLAudioRep *)self p_playButtonImage];
      v11 = +[CRLColor whiteColor];
      v16 = [v10 compositedImageWithColor:v11 alpha:20 blendMode:1.0];

      v12 = 1;
LABEL_11:

      [(CRLCanvasRenderable *)self->_progressRenderable setHidden:v12];
      goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  [(CRLCanvasButtonKnob *)self->_playButtonKnob setImage:v16];
  if (self->_isPlayable)
  {
    v15 = [(CRLCanvasRep *)self repForSelecting];
    [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:v15 == self];
  }

  else
  {
    [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:0];
  }

  [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:[(CRLCanvasButtonKnob *)self->_playButtonKnob isEnabled]& (v7 ^ 1)];
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
  v2 = [(CRLAudioRep *)self movieItem];
  v3 = [v2 movieAssetPayload];

  if (v3)
  {
    v6 = v3;
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

  v3 = [(CRLAudioRep *)self movieItem];
  [v3 volume];
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

    v9 = [(CRLAudioRep *)self movieItem];
    v10 = [v9 movieAssetPayload];
    v11 = [v10 needsDownload];

    if (v11)
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

    v15 = [v9 makeAVAssetAndReturnError:0];
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
        v35 = self;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "audio rep %p making audio player controller %p", buf, 0x16u);
      }

      [(CRLAudioRep *)self p_updateStartTime];
      [(CRLAudioRep *)self p_updateIsLooping];
      [v9 endTime];
      if (v22 != 0.0)
      {
        [(CRLAudioRep *)self p_updateEndTime];
      }

      [(CRLAudioRep *)self p_updateVolume];
      [(CRLAVPlayerController *)self->_playerController addObserver:self forKeyPath:@"playing" options:4 context:off_1019F1188];
      v32 = @"CRLInteractiveCanvasControllerMediaRepKey";
      v33 = self;
      v23 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v24 = [v23 mutableCopy];
      v25 = v24;
      v26 = self->_playerController;
      if (v26)
      {
        [v24 setObject:v26 forKeyedSubscript:@"CRLInteractiveCanvasControllerPlayerControllerKey"];
      }

      v27 = +[NSNotificationCenter defaultCenter];
      v28 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v27 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:v28 userInfo:v25];

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
      v16 = self;
      v17 = 2048;
      v18 = playerController;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audio rep %p clearing player controller %p in p_teardownPlayerController", buf, 0x16u);
    }

    v9 = self->_playerController;
    self->_playerController = 0;

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [(CRLCanvasRep *)self interactiveCanvasController];
    v13 = @"CRLInteractiveCanvasControllerMediaRepKey";
    v14 = self;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:v11 userInfo:v12];
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

- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005A9C58;
  v6[3] = &unk_10183AE28;
  v6[4] = self;
  v7 = a4;
  v4 = v7;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v6);
  CFRunLoopWakeUp(Main);
}

- (id)nowPlayingTitleWithPlaybackController:(id)a3
{
  if (self->_playerController == a3)
  {
    v4 = [(CRLAudioRep *)self movieItem];
    v3 = [v4 title];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)nowPlayingImageProviderWithPlaybackController:(id)a3
{
  if (self->_playerController == a3)
  {
    v5 = [(CRLAudioRep *)self imageProviderForAlbumArt];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v9 = [(CRLAudioRep *)self movieItem];
  v10 = [v9 movieAssetPayload];
  (v8[2])(v8, v10);

  v11 = [(CRLAudioRep *)self movieItem];
  v12 = [v11 posterImageAssetPayload];
  (v8[2])(v8, v12);
}

- (void)p_handleAssetPreparationCompletionForAsset:(id)a3
{
  v4 = a3;
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLStyledRep *)self setNeedsDisplay];
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v5 invalidateContentLayersForRep:self];

    [(CRLAudioRep *)self p_updateDownloadSpinnerState];
    [(CRLAudioRep *)self p_cancelPlayabilityCheck];
    [(CRLAudioRep *)self p_updatePlayabilityIfNecessary];
    v6 = [(CRLAudioRep *)self movieItem];
    v7 = [v6 movieAssetPayload];

    if (v7 == v4)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = [(CRLCanvasRep *)self interactiveCanvasController];
      v11 = @"CRLInteractiveCanvasControllerMediaRepKey";
      v12 = self;
      v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      [v8 postNotificationName:@"CRLInteractiveCanvasControllerDidLoadAssetForMediaRepNotification" object:v9 userInfo:v10];
    }
  }
}

- (void)p_updateDownloadSpinnerState
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_1019F1188 == a6)
  {
    v13 = [(CRLAudioRep *)self shouldBecomeSelectedWhenPlaying];
    v14 = [(CRLAudioRep *)self playerControllerForcingCreationIfNotPreExisting];
    v15 = [v14 isPlaying];

    if (v15)
    {
      if (![(CRLCanvasRep *)self isSelected]&& ((v13 ^ 1) & 1) == 0)
      {
        v16 = [(CRLAudioRep *)self p_selectionPath];
        v17 = [(CRLCanvasRep *)self interactiveCanvasController];
        v18 = [v17 editorController];
        [v18 setSelectionPath:v16];
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

  else if (off_1019F1190 == a6)
  {
    v19 = [(CRLCanvasRep *)self canvas];
    [v19 contentsScale];
    v21 = v20 * 138.230077;

    [(CRLAVPlayerController *)self->_playerController duration];
    v23 = v22 / (v21 * 4.0);
    if (v23 < 0.0166666667)
    {
      v23 = 0.0166666667;
    }

    [(CRLMediaPlayerTimeController *)self->_timeController setUpdateInterval:v23];
  }

  else if (off_1019F1198 == a6)
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
    [(CRLAudioRep *)&v32 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (double)ifFitsDrawTitleWithContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = self;
  sub_1005C9230(v9, x, y, width, height);
  v12 = v11;

  return v12;
}

- (double)ifFitsDrawCreatorWithContext:(CGContext *)a3 rect:(CGRect)a4 topPadding:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = self;
  sub_1005C9948(v11, x, y, width, height, a5);
  v14 = v13;

  return v14;
}

- (double)p_creatorTextHeightWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1005CA040(x, y, width, height);
  v9 = v8;

  return v9;
}

- (double)p_titleTextHeightWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1005CA574(width, height);
  v7 = v6;

  return v7;
}

- (void)prepareForPreview
{
  v2 = self;
  if ([(CRLAudioRep *)v2 isPlaying])
  {
    [(CRLAudioRep *)v2 pausePlaybackIfNeeded];
  }
}

- (void)enterPreviewMode
{
  v5 = self;
  [(CRLAudioRep *)v5 prepareForPreview];
  v2 = [(CRLCanvasRep *)v5 info];
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