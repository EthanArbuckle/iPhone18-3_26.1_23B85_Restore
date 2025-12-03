@interface SSSContainerViewController
+ (BOOL)_shouldConfigureDragInteraction;
- (BOOL)_isTriggeredByInteractiveScreenshotGesture:(id)gesture;
- (BOOL)_pileTranslationIsTowardsEdge;
- (BOOL)_shouldAllowSharing;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isShowingVICard;
- (CGAffineTransform)_transformForState:(SEL)state pileTranslation:(unint64_t)translation;
- (CGVector)_translationAmountForState:(unint64_t)state pileTranslation:(CGPoint)translation;
- (NSDirectionalEdgeInsets)_miniatureInsets;
- (SSSContainerViewController)init;
- (SSSContainerViewControllerDelegate)delegate;
- (double)_amountToMoveScreenshotsViewForHorizontalSlideOffDismiss;
- (double)_amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:(CGRect)dismiss;
- (double)_durationForMinimize;
- (double)_pileTranslationAmountForDismiss;
- (double)_scaleAmountForState:(unint64_t)state;
- (id)_gesturesForMiniatureState;
- (id)_screenshotForDragItem:(id)item;
- (id)createDismissalContext;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (int)_preferredStatusBarVisibility;
- (unint64_t)numberOfScreenshots;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissScreenshotsAndDelete;
- (void)_dismissScreenshotsWithSlide;
- (void)_dismissScreenshotsWithVelocity:(double)velocity;
- (void)_donateScreenshotUserActivityForSiri:(id)siri;
- (void)_handlePileLongPress:(id)press;
- (void)_handlePilePanGesture:(id)gesture;
- (void)_moveScreenshotsViewForHorizontalSlideOffDismiss;
- (void)_notifyScreenshotForBiome;
- (void)_performPostDismissActions;
- (void)_performPreDismissActionsForAnimationSettings:(id)settings;
- (void)_pilePencilTapped;
- (void)_positionAppearingScreenshot:(id)screenshot;
- (void)_prepareDragInteractionIfNecessary;
- (void)_prepareGesturesForState:(unint64_t)state;
- (void)_prepareImageIdentifierUpdateAlertIfNecessary;
- (void)_presentImageIdentifierUpdateAlertIfNecessary;
- (void)_screenshotGestureTriggered:(id)triggered;
- (void)_startDragging;
- (void)_stopBeingInterestedInScreenshots:(id)screenshots;
- (void)_stopDraggingDismissing:(BOOL)dismissing;
- (void)_transitionToStateIfNecessaryFromEnvironmentDescription:(id)description completion:(id)completion;
- (void)_undonateUserActivityForSiri:(id)siri;
- (void)_updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates;
- (void)_updateDragInteraction;
- (void)_updateForCurrentSize;
- (void)_updateForSize:(CGSize)size;
- (void)_updateScreenshotsViewTransform;
- (void)activityViewControllerDismissedFromScreenshotsViewController:(id)controller;
- (void)addScreenshot:(id)screenshot completion:(id)completion;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissRequestedFromScreenshotsViewController:(id)controller completion:(id)completion;
- (void)dismissScreenshotsAndDelete;
- (void)dismissScreenshotsAnimated:(BOOL)animated completion:(id)completion;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:(id)updates;
- (void)groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:(id)identifier;
- (void)performInteractiveGesturePresentationCompleteAnimations;
- (void)screenshotsViewController:(id)controller isDraggingVICardDidChange:(BOOL)change;
- (void)screenshotsViewController:(id)controller requestsCopyDeleteForScreenshots:(id)screenshots deleteOptions:(unint64_t)options forReason:(unint64_t)reason;
- (void)screenshotsViewController:(id)controller requestsDeleteForScreenshots:(id)screenshots deleteOptions:(unint64_t)options forReason:(unint64_t)reason;
- (void)screenshotsViewController:(id)controller requestsPresentingActivityViewControllerWithBlock:(id)block;
- (void)screenshotsViewController:(id)controller requestsPresentingTestFlightFeedbackControllerWithBlock:(id)block;
- (void)screenshotsViewControllerWillPerformDeleteDismissalAnimation:(id)animation;
- (void)sendPostDismissAnalytics;
- (void)setState:(unint64_t)state animated:(BOOL)animated completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waitingForImageIdentifierUpdatesAlertControllerDidCancel:(id)cancel;
@end

@implementation SSSContainerViewController

- (SSSContainerViewController)init
{
  v17.receiver = self;
  v17.super_class = SSSContainerViewController;
  v2 = [(SSSContainerViewController *)&v17 initWithNibName:0 bundle:0];
  v2->_state = 0;
  v3 = objc_alloc_init(SSSScreenshotsViewController);
  screenshotsViewController = v2->_screenshotsViewController;
  v2->_screenshotsViewController = v3;

  [(SSSScreenshotsViewController *)v2->_screenshotsViewController setDelegate:v2];
  v5 = objc_alloc_init(SSSScreenshotGroupImageIdentifierUpdateTracker);
  groupImageIdentifierUpdateTracker = v2->_groupImageIdentifierUpdateTracker;
  v2->_groupImageIdentifierUpdateTracker = v5;

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)v2->_groupImageIdentifierUpdateTracker setDelegate:v2];
  v7 = +[SSSScreenshotManager sharedScreenshotManager];
  [v7 addImageIdentifierUpdateObserver:v2->_groupImageIdentifierUpdateTracker];

  v8 = [[UITapGestureRecognizer alloc] initWithTarget:v2 action:"_pileTapped"];
  pileTapGesture = v2->_pileTapGesture;
  v2->_pileTapGesture = v8;

  [(UITapGestureRecognizer *)v2->_pileTapGesture setAllowedTouchTypes:&off_1000BE798];
  v10 = [[UITapGestureRecognizer alloc] initWithTarget:v2 action:"_pilePencilTapped"];
  pilePencilTapGesture = v2->_pilePencilTapGesture;
  v2->_pilePencilTapGesture = v10;

  [(UITapGestureRecognizer *)v2->_pilePencilTapGesture setAllowedTouchTypes:&off_1000BE7B0];
  v12 = [[UIPanGestureRecognizer alloc] initWithTarget:v2 action:"_handlePilePanGesture:"];
  pileFlingGesture = v2->_pileFlingGesture;
  v2->_pileFlingGesture = v12;

  v14 = [[UILongPressGestureRecognizer alloc] initWithTarget:v2 action:"_handlePileLongPress:"];
  pileLongPressGesture = v2->_pileLongPressGesture;
  v2->_pileLongPressGesture = v14;

  [(UILongPressGestureRecognizer *)v2->_pileLongPressGesture setDelegate:v2];
  return v2;
}

- (void)dealloc
{
  v3 = +[SSSScreenshotManager sharedScreenshotManager];
  [v3 removeImageIdentifierUpdateObserver:self->_groupImageIdentifierUpdateTracker];

  v4.receiver = self;
  v4.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v4 dealloc];
}

- (void)_screenshotGestureTriggered:(id)triggered
{
  environmentDescription = [triggered environmentDescription];
  presentationMode = [environmentDescription presentationMode];

  visibleScreenshots = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v7 = [visibleScreenshots count];

  v8 = +[SSStatisticsManager sharedStatisticsManager];
  v9 = v8;
  if (v7)
  {
    [v8 screenshotGestureTriggeredWhileAnotherScreenshotWasShowing:presentationMode];
  }

  else
  {
    [v8 screenshotGestureTriggered:presentationMode];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v4 viewWillAppear:appear];
  [(SSSContainerViewController *)self setDismissalContext:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v4 viewDidDisappear:disappear];
  [(SSSScreenshotsViewController *)self->_screenshotsViewController removeChildViewControllers];
}

- (void)_transitionToStateIfNecessaryFromEnvironmentDescription:(id)description completion:(id)completion
{
  descriptionCopy = description;
  completionCopy = completion;
  v7 = sub_100031644([descriptionCopy presentationMode]);
  [(SSSContainerViewController *)self setEnvironmentDescription:descriptionCopy];
  visibleScreenshots = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v9 = [visibleScreenshots count];

  presentationMode = [descriptionCopy presentationMode];
  v11 = presentationMode;
  state = self->_state;
  if (state)
  {
    if (v9)
    {
      v13 = presentationMode == 3;
    }

    else
    {
      v13 = 1;
    }

    LOBYTE(v14) = !v13;
  }

  else
  {
    presentationMode2 = [descriptionCopy presentationMode];
    if (v9)
    {
      v16 = v11 == 3;
    }

    else
    {
      v16 = 1;
    }

    v14 = !v16;
    if (presentationMode2 == 2)
    {
      [(SSSScreenshotsViewController *)self->_screenshotsViewController setInitialAnnotationMode:v11 == 3];
LABEL_20:
      [(SSSContainerViewController *)self setState:v7 animated:v14 completion:completionCopy];
      goto LABEL_23;
    }

    state = self->_state;
  }

  [(SSSScreenshotsViewController *)self->_screenshotsViewController setInitialAnnotationMode:v11 == 3];
  if (state != v7 && (v14 & 1) == 0)
  {
    v14 = 0;
    goto LABEL_20;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_23:
}

- (void)_positionAppearingScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v5 = +[SSSSignificantEventController sharedSignificantEventController];
  [v5 screenshotAppearAnimationBeganForScreenshot:screenshotCopy];

  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view layoutIfNeeded];

  view2 = [(SSSContainerViewController *)self view];
  [view2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  screenshotsParentCoordinateSpace = [(SSSScreenshotsViewController *)self->_screenshotsViewController screenshotsParentCoordinateSpace];
  view3 = [(SSSContainerViewController *)self view];
  [screenshotsParentCoordinateSpace convertRect:view3 fromCoordinateSpace:{v9, v11, v13, v15}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(SSSContainerViewController *)self _isTriggeredByInteractiveScreenshotGesture:screenshotCopy];
  v27 = [[SSSScreenshotView alloc] initWithFrame:v19, v21, v23, v25];
  [(SSSScreenshotView *)v27 setScreenshot:screenshotCopy];
  [(SSSScreenshotView *)v27 setUseTrilinearMinificationFilter:1];
  [(SSSScreenshotView *)v27 setBorderStyle:sub_100053AC4([(SSSContainerViewController *)self state], 0)];
  [(SSSScreenshotView *)v27 setUsesOriginalImageAspectRatio:sub_100053ADC([(SSSContainerViewController *)self state])];
  if ([(SSSContainerViewController *)self state]== 1)
  {
    currentScreenshot = [(SSSScreenshotsViewController *)self->_screenshotsViewController currentScreenshot];
    v29 = currentScreenshot == screenshotCopy;

    [(SSSScreenshotView *)v27 prepareForFullscreenExperience];
    [(SSSScreenshotView *)v27 finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:v29];
  }

  else
  {
    traitCollection = [(SSSContainerViewController *)self traitCollection];
    [(SSSScreenshotView *)v27 setGeometryMultiplier:1.0 / sub_10000F530()];
  }

  [(SSSScreenshotView *)v27 layoutIfNeeded];
  if (v26)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100023E98;
    v52[3] = &unk_1000BA3E8;
    v53 = v27;
    selfCopy = self;
    [UIView performWithoutAnimation:v52];

    v31 = 0.0;
  }

  else
  {
    [(SSSScreenshotView *)v27 setState:[(SSSContainerViewController *)self state]];
    v31 = 1.0;
  }

  [(SSSScreenshotsViewController *)self->_screenshotsViewController parentScreenshotView:v27 animated:v26 ^ 1];
  if ([(SSSScreenshotView *)v27 shouldFlash])
  {
    if (v26)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100023ED4;
      v50[3] = &unk_1000BA068;
      v51 = v27;
      [UIView performWithoutAnimation:v50];

LABEL_11:
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100023EDC;
      v45[3] = &unk_1000BA880;
      v46 = v27;
      selfCopy2 = self;
      v49 = v31;
      v48 = screenshotCopy;
      [UIView performWithoutAnimation:v45];

      v33 = v46;
      goto LABEL_18;
    }

    [(SSSScreenshotView *)v27 flash];
    v32 = 0.25;
  }

  else
  {
    v32 = 0.0;
    if (v26)
    {
      goto LABEL_11;
    }
  }

  v33 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  [v33 setDelay:v32];
  [v33 setAnimationReason:1];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100023F74;
  v42[3] = &unk_1000BA8A8;
  v42[4] = self;
  v44 = v31;
  v34 = v27;
  v43 = v34;
  v35 = objc_retainBlock(v42);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100024020;
  v38[3] = &unk_1000BA8D0;
  v39 = screenshotCopy;
  selfCopy3 = self;
  v36 = v34;
  v41 = v36;
  v37 = objc_retainBlock(v38);
  if (_SSScreenshotsRedesign2025Enabled() && [(SSSContainerViewController *)self state]== 1)
  {
    [UIView _animateUsingSpringWithDuration:6 delay:v35 options:v37 mass:0.513 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:37.0 completion:0.0];
  }

  else
  {
    [(SSSScreenshotView *)v36 prepareForGestureScreenshotBasedAnimation];
    [UIView sss_animateWithAnimationParameters:v33 animations:v35 completion:v37];
  }

LABEL_18:
}

- (BOOL)_isTriggeredByInteractiveScreenshotGesture:(id)gesture
{
  environmentDescription = [gesture environmentDescription];
  v4 = [environmentDescription presentationMode] == 3;

  return v4;
}

- (void)addScreenshot:(id)screenshot completion:(id)completion
{
  screenshotCopy = screenshot;
  completionCopy = completion;
  [(SSSContainerViewController *)self _screenshotGestureTriggered:screenshotCopy];
  v8 = +[SSSScreenshotManager sharedScreenshotManager];
  [v8 userInterfaceBecameInterestedInScreenshot:screenshotCopy];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self->_groupImageIdentifierUpdateTracker addScreenshotToGroup:screenshotCopy];
  environmentDescription = [screenshotCopy environmentDescription];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024210;
  v12[3] = &unk_1000BA8F8;
  v12[4] = self;
  v13 = screenshotCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = screenshotCopy;
  [(SSSContainerViewController *)self _transitionToStateIfNecessaryFromEnvironmentDescription:environmentDescription completion:v12];
}

- (void)performInteractiveGesturePresentationCompleteAnimations
{
  v3 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024308;
  v4[3] = &unk_1000BA068;
  v4[4] = self;
  [UIView sss_animateWithAnimationParameters:v3 animations:v4 completion:0];
}

- (void)_prepareImageIdentifierUpdateAlertIfNecessary
{
  v3 = +[SSSWaitingForImageIdentifierUpdatesAlertController newWaitingForImageIdentifierUpdatesAlertController];
  imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;
  self->_imageIdentifierUpdateAlert = v3;

  [(SSSWaitingForImageIdentifierUpdatesAlertController *)self->_imageIdentifierUpdateAlert setDelegate:self];

  [(SSSContainerViewController *)self _updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates];
}

- (void)waitingForImageIdentifierUpdatesAlertControllerDidCancel:(id)cancel
{
  [(SSSScreenshotsViewController *)self->_screenshotsViewController dismissActivityViewController];
  imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;
  self->_imageIdentifierUpdateAlert = 0;

  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerEndedShowingWaitingForImageIdentifierUpdatesUI:self];
}

- (void)_presentImageIdentifierUpdateAlertIfNecessary
{
  [(SSSContainerViewController *)self presentViewController:self->_imageIdentifierUpdateAlert animated:1 completion:0];
  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerBeganShowingWaitingForImageIdentifierUpdatesUI:self];
}

- (void)_updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates
{
  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self->_groupImageIdentifierUpdateTracker progressTowardsReceivingAllImageIdentifierUpdates];
  imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;

  [(SSSWaitingForImageIdentifierUpdatesAlertController *)imageIdentifierUpdateAlert setProgress:?];
}

- (void)groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:(id)updates
{
  updatesCopy = updates;
  [updatesCopy progressTowardsReceivingAllImageIdentifierUpdates];
  v6 = v5;
  presentingViewController = [(SSSWaitingForImageIdentifierUpdatesAlertController *)self->_imageIdentifierUpdateAlert presentingViewController];

  if (presentingViewController)
  {
    [(SSSContainerViewController *)self _updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates];
    if (v6 == 1.0)
    {
      imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000245AC;
      v9[3] = &unk_1000BA3E8;
      v9[4] = self;
      v10 = updatesCopy;
      [(SSSWaitingForImageIdentifierUpdatesAlertController *)imageIdentifierUpdateAlert dismissViewControllerAnimated:1 completion:v9];
    }
  }
}

- (void)groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:(id)identifier
{
  [(SSSContainerViewController *)self _donateScreenshotUserActivityForSiri:identifier];

  [(SSSContainerViewController *)self _notifyScreenshotForBiome];
}

- (void)_performPreDismissActionsForAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleScreenshots = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v6 = [visibleScreenshots countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(visibleScreenshots);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        [v11 userInterfaceWillStopBeingInterestedInScreenshot:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [visibleScreenshots countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewController:self willBeginDismissAnimationWithSettings:settingsCopy];
}

- (void)_performPostDismissActions
{
  [(SSSContainerViewController *)self sendPostDismissAnalytics];
  visibleScreenshots = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  [(SSSContainerViewController *)self _stopBeingInterestedInScreenshots:visibleScreenshots];

  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerDidEndDismissAnimation:self];

  screenshotsViewController = self->_screenshotsViewController;

  [(SSSScreenshotsViewController *)screenshotsViewController removeChildViewControllers];
}

- (void)sendPostDismissAnalytics
{
  dismissalContext = [(SSSContainerViewController *)self dismissalContext];
  v4 = dismissalContext;
  if (dismissalContext)
  {
    createDismissalContext = dismissalContext;
  }

  else
  {
    createDismissalContext = [(SSSContainerViewController *)self createDismissalContext];
  }

  v6 = createDismissalContext;

  if ([(SSSContainerViewController *)self didUseDeleteDismissAnimation])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setDismissAnimationStyle:v7];
  screenshotsViewController = [(SSSContainerViewController *)self screenshotsViewController];
  [v6 setDismissalType:{objc_msgSend(screenshotsViewController, "dismissalType")}];

  v9 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 description];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did Dismiss with context:\n\t%@", &v12, 0xCu);
  }

  v11 = +[SSStatisticsManager sharedStatisticsManager];
  [v11 sendDismissalEventWithContext:v6];
}

- (id)createDismissalContext
{
  _screenshotsView = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  screenshots = [_screenshotsView screenshots];
  v5 = [_screenshotsView viewsForScreenshots:screenshots];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v10 |= [v13 isCropped];
        screenshot = [v13 screenshot];
        v9 |= [screenshot hasUnsavedImageEdits];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
  }

  v15 = objc_alloc_init(SSSDismissalContext);
  if ([(SSSContainerViewController *)self didUseDeleteDismissAnimation])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v15 setDismissAnimationStyle:{v16, v21}];
  [v15 setNumberOfScreenshots:{objc_msgSend(v6, "count")}];
  [v15 setCropUsed:v10 & 1];
  [v15 setMarkupUsed:v9 & 1];
  environmentDescription = [(SSSContainerViewController *)self environmentDescription];
  [v15 setAppearedFullScreen:{objc_msgSend(environmentDescription, "presentationMode") == 2}];

  [v15 setViAvailable:_SSVisualIntelligenceV2Enabled()];
  [v15 setViUsed:{-[SSSContainerViewController didInvokeVICard](self, "didInvokeVICard")}];
  _screenshotsView2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  [v15 setDidShare:{objc_msgSend(_screenshotsView2, "didShare")}];

  screenshotsViewController = [(SSSContainerViewController *)self screenshotsViewController];
  [v15 setDismissalType:{objc_msgSend(screenshotsViewController, "dismissalType")}];

  return v15;
}

- (double)_amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:(CGRect)dismiss
{
  height = dismiss.size.height;
  width = dismiss.size.width;
  y = dismiss.origin.y;
  x = dismiss.origin.x;
  UIRectGetCenter();
  v9 = v8;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v11 = MaxX - CGRectGetMinX(v25);
  v23 = 0.0;
  v12 = [(SSSContainerViewController *)self traitCollection:0];
  sub_10000F490(v12, &v22);

  [(SSSContainerViewController *)self _miniatureInsets];
  v14 = v11 + v13 * 2.0 + v23 * 6.0;
  v15 = v14 + +[SSSShadowView shadowRadius]_0() * 2.0;
  view = [(SSSContainerViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    view2 = [(SSSContainerViewController *)self view];
    [view2 bounds];
    v20 = v19 + v15 * 0.5;
  }

  else
  {
    v20 = v15 * -0.5;
  }

  return v20 - v9;
}

- (double)_amountToMoveScreenshotsViewForHorizontalSlideOffDismiss
{
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view frame];
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:?];
  v5 = v4;

  return v5;
}

- (void)_moveScreenshotsViewForHorizontalSlideOffDismiss
{
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view center];
  v4 = v3;
  v6 = v5;
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewForHorizontalSlideOffDismiss];
  [view setCenter:{v4 + v7, v6}];
}

- (double)_durationForMinimize
{
  v2 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (BOOL)isShowingVICard
{
  _screenshotsView = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  isShowingVICard = [_screenshotsView isShowingVICard];

  return isShowingVICard;
}

- (void)dismissScreenshotsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  state = [(SSSContainerViewController *)self state];
  [(SSSContainerViewController *)self _durationForHorizontalSlideOffDismiss];
  v9 = v8;
  if (state)
  {
    [(SSSContainerViewController *)self _durationForMinimize];
  }

  else
  {
    v10 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000250C8;
  v21[3] = &unk_1000BA948;
  v21[4] = self;
  v23 = v9;
  v24 = v10;
  v11 = completionCopy;
  v22 = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100025370;
  v17[3] = &unk_1000BA970;
  v19 = animatedCopy;
  v17[4] = self;
  v20 = state == 0;
  v12 = objc_retainBlock(v21);
  v18 = v12;
  v13 = objc_retainBlock(v17);
  v14 = v13;
  if (animatedCopy)
  {
    (v13[2])(v13);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002541C;
    v15[3] = &unk_1000BA998;
    v16 = v13;
    [UIView performWithoutAnimation:v15];
  }
}

- (void)_dismissScreenshotsWithVelocity:(double)velocity
{
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewForHorizontalSlideOffDismiss];
  v6 = v5;
  v7 = velocity / fabs(v5);
  [(SSSContainerViewController *)self _scaleAmountForState:0];
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, v8, v8);
  y = CGRectZero.origin.y;
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view bounds];
  v12 = v11;
  v14 = v13;

  v33 = v34;
  v35.origin.x = CGRectZero.origin.x;
  v35.origin.y = y;
  v35.size.width = v12;
  v35.size.height = v14;
  CGRectApplyAffineTransform(v35, &v33);
  view2 = [(SSSContainerViewController *)self view];
  [view2 bounds];
  UIRectCenteredIntegralRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(SSSContainerViewController *)self _translationAmountForState:0 pileTranslation:CGPointZero.x, CGPointZero.y];
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:v17 + v24, v19 + v25, v21, v23];
  v27 = fabs(v6 / v26);
  [(SSSContainerViewController *)self _durationForHorizontalSlideOffDismiss];
  v29 = v28 * v27;
  v30 = objc_alloc_init(BSMutableSpringAnimationSettings);
  [v30 setInitialVelocity:v7];
  [v30 setDamping:1.0];
  [(SSSContainerViewController *)self _performPreDismissActionsForAnimationSettings:v30];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10002568C;
  v32[3] = &unk_1000BA068;
  v32[4] = self;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100025694;
  v31[3] = &unk_1000BA188;
  v31[4] = self;
  [UIView animateWithDuration:6 delay:v32 usingSpringWithDamping:v31 initialSpringVelocity:v29 options:0.0 animations:1.0 completion:v7];
}

- (void)_dismissScreenshotsWithSlide
{
  v3 = [BSSpringAnimationSettings settingsWithMass:2.0 stiffness:300.0 damping:400.0];
  [(SSSContainerViewController *)self _performPreDismissActionsForAnimationSettings:v3];

  v4 = [[UISpringTimingParameters alloc] initWithMass:2.0 stiffness:300.0 damping:400.0 initialVelocity:{0.0, 0.0}];
  v5 = [[UIViewPropertyAnimator alloc] initWithDuration:v4 timingParameters:0.91];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom] == 0;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002583C;
  v9[3] = &unk_1000BA0B8;
  v10 = v7;
  v9[4] = self;
  [v5 addAnimations:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000258C4;
  v8[3] = &unk_1000BA9C0;
  v8[4] = self;
  [v5 addCompletion:v8];
  [v5 startAnimation];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v17 viewDidLoad];
  [(SSSContainerViewController *)self addChildViewController:self->_screenshotsViewController];
  [(SSSScreenshotsViewController *)self->_screenshotsViewController didMoveToParentViewController:self];
  view = [(SSSContainerViewController *)self view];
  view2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view addSubview:view2];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025AB0;
  v16[3] = &unk_1000BA068;
  v16[4] = self;
  [UIView performWithoutAnimation:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _gesturesForMiniatureState = [(SSSContainerViewController *)self _gesturesForMiniatureState];
  v6 = [_gesturesForMiniatureState countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_gesturesForMiniatureState);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        view3 = [(SSSContainerViewController *)self view];
        [view3 addGestureRecognizer:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_gesturesForMiniatureState countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  [(SSSContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v10 viewDidLayoutSubviews];
  view = [(SSSContainerViewController *)self view];
  [view bounds];
  v4 = CGRectEqualToRect(v11, self->_cachedViewBounds);

  if (!v4)
  {
    [(SSSContainerViewController *)self _updateForCurrentSize];
    view2 = [(SSSContainerViewController *)self view];
    [view2 bounds];
    self->_cachedViewBounds.origin.x = v6;
    self->_cachedViewBounds.origin.y = v7;
    self->_cachedViewBounds.size.width = v8;
    self->_cachedViewBounds.size.height = v9;

    [(SSSContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)setState:(unint64_t)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  state = self->_state;
  if (state != state)
  {
    self->_lastState = state;
    self->_state = state;
  }

  delegate = [(SSSContainerViewController *)self delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025CC8;
  v12[3] = &unk_1000BAA60;
  v13 = completionCopy;
  stateCopy = state;
  v15 = animatedCopy;
  v12[4] = self;
  v11 = completionCopy;
  [delegate containerViewController:self willTransitionToState:state animated:animatedCopy changeBlock:v12];
}

- (void)_pilePencilTapped
{
  [(SSSScreenshotsViewController *)self->_screenshotsViewController setInitialAnnotationMode:1];

  [(SSSContainerViewController *)self setState:1];
}

- (BOOL)_pileTranslationIsTowardsEdge
{
  view = [(SSSContainerViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  x = self->_pileTranslation.x;
  if (effectiveUserInterfaceLayoutDirection)
  {
    return x > 0.0;
  }

  else
  {
    return x < 0.0;
  }
}

- (double)_pileTranslationAmountForDismiss
{
  [(SSSScreenshotsViewController *)self->_screenshotsViewController screenshotsExtentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(SSSContainerViewController *)self view];
  view2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view convertRect:view2 fromView:{v4, v6, v8, v10}];
  v14 = v13;

  return v14 * 0.25;
}

- (void)_handlePilePanGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(SSSContainerViewController *)self view];
  [gestureCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(SSSContainerViewController *)self view];
  [gestureCopy velocityInView:view2];
  v12 = v11;

  if ([gestureCopy state] == 2)
  {
    self->_pileTranslation.x = v7;
    self->_pileTranslation.y = v9 * 0.05;
    if (![(SSSContainerViewController *)self _pileTranslationIsTowardsEdge])
    {
      self->_pileTranslation.x = v7 * 0.1;
    }

    goto LABEL_4;
  }

  if ([gestureCopy state] != 3 && objc_msgSend(gestureCopy, "state") != 4 && objc_msgSend(gestureCopy, "state") != 5)
  {
LABEL_4:
    [(SSSContainerViewController *)self _updateForCurrentSize];
    goto LABEL_12;
  }

  if ([(SSSContainerViewController *)self _pileTranslationIsTowardsEdge]&& (v13 = fabs(self->_pileTranslation.x), [(SSSContainerViewController *)self _pileTranslationAmountForDismiss], v13 > v14))
  {
    [(SSSContainerViewController *)self _dismissScreenshotsWithVelocity:fabs(v12)];
  }

  else
  {
    self->_pileTranslation = CGPointZero;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100026640;
    v16[3] = &unk_1000BA068;
    v16[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:2054 animations:v16 completion:0];
  }

LABEL_12:
  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerHadGestureInteraction:self];
}

- (BOOL)_shouldAllowSharing
{
  currentScreenshot = [(SSSScreenshotsViewController *)self->_screenshotsViewController currentScreenshot];
  environmentDescription = [currentScreenshot environmentDescription];
  hasOnenessScreen = [environmentDescription hasOnenessScreen];

  if (hasOnenessScreen)
  {
    return 0;
  }

  v6 = _SSSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Z_MKBGetDeviceLockState", "", buf, 2u);
  }

  v7 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BEGIN Z_MKBGetDeviceLockState", v16, 2u);
  }

  v8 = MKBGetDeviceLockState();
  v9 = +[FMDFMIPManager sharedInstance];
  isLostModeActive = [v9 isLostModeActive];

  v11 = _SSSignpostLog();
  if (os_signpost_enabled(v11))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Z_MKBGetDeviceLockState", "", v15, 2u);
  }

  v12 = v8 - 3;

  v13 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "END Z_MKBGetDeviceLockState", v14, 2u);
  }

  return (v12 < 0xFFFFFFFE) & (isLostModeActive ^ 1);
}

- (void)_prepareGesturesForState:(unint64_t)state
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _gesturesForMiniatureState = [(SSSContainerViewController *)self _gesturesForMiniatureState];
  v6 = [_gesturesForMiniatureState countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_gesturesForMiniatureState);
        }

        [*(*(&v10 + 1) + 8 * v9) setEnabled:state == 0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_gesturesForMiniatureState countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SSSContainerViewController *)self _updateDragInteraction];
}

- (id)_gesturesForMiniatureState
{
  pilePencilTapGesture = self->_pilePencilTapGesture;
  v6[0] = self->_pileTapGesture;
  v6[1] = pilePencilTapGesture;
  pileLongPressGesture = self->_pileLongPressGesture;
  v6[2] = self->_pileFlingGesture;
  v6[3] = pileLongPressGesture;
  v4 = [NSArray arrayWithObjects:v6 count:4];

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_pileLongPressGesture == begin)
  {
    return [(SSSContainerViewController *)self _shouldAllowSharing];
  }

  else
  {
    return 1;
  }
}

- (void)_handlePileLongPress:(id)press
{
  if ([press state] == 1)
  {
    delegate = [(SSSContainerViewController *)self delegate];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100026AAC;
    v5[3] = &unk_1000BA068;
    v5[4] = self;
    [delegate containerViewController:self willShowSharingUIWithBlock:v5];
  }
}

- (void)dismissRequestedFromScreenshotsViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  createDismissalContext = [(SSSContainerViewController *)self createDismissalContext];
  [(SSSContainerViewController *)self setDismissalContext:createDismissalContext];

  [(SSSContainerViewController *)self dismissScreenshotsAnimated:1 completion:completionCopy];
}

- (void)screenshotsViewController:(id)controller requestsCopyDeleteForScreenshots:(id)screenshots deleteOptions:(unint64_t)options forReason:(unint64_t)reason
{
  controllerCopy = controller;
  screenshotsCopy = screenshots;
  selfCopy = self;
  reasonCopy = reason;
  [(SSSContainerViewController *)self setDeleteReason:reason];
  queue = dispatch_queue_create("com.apple.screenshotservices.screenshotItemProviderProcessingQueue", 0);
  v10 = dispatch_group_create();
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [screenshotsCopy count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = screenshotsCopy;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        dispatch_group_enter(v10);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100026DD8;
        block[3] = &unk_1000BA4D0;
        block[4] = v17;
        v34 = v11;
        v35 = v10;
        dispatch_async(queue, block);

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002712C;
  v26[3] = &unk_1000BAAB0;
  v27 = v11;
  v28 = selfCopy;
  v29 = controllerCopy;
  v30 = v12;
  optionsCopy = options;
  v32 = reasonCopy;
  v18 = v12;
  v19 = controllerCopy;
  v20 = v11;
  dispatch_group_notify(v10, &_dispatch_main_q, v26);
}

- (void)screenshotsViewController:(id)controller requestsDeleteForScreenshots:(id)screenshots deleteOptions:(unint64_t)options forReason:(unint64_t)reason
{
  screenshotsCopy = screenshots;
  [(SSSContainerViewController *)self setDeleteReason:reason];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = screenshotsCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v16 = +[SSSScreenshotManager sharedScreenshotManager];
        [v16 removeScreenshot:v15 deleteOptions:options];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000273B8;
  v23[3] = &unk_1000BA1B8;
  v23[4] = self;
  v23[5] = reason;
  v17 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002747C;
  v20[3] = &unk_1000BA8A8;
  v21 = v10;
  reasonCopy = reason;
  v20[4] = self;
  v18 = v10;
  v19 = objc_retainBlock(v20);
  [(SSSScreenshotsViewController *)self->_screenshotsViewController removeScreenshots:v18 forReason:reason alongsideAnimations:v17 completion:v19];
}

- (void)dismissScreenshotsAndDelete
{
  _screenshotsView = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  isShowingVICard = [_screenshotsView isShowingVICard];

  if (isShowingVICard)
  {
    v5 = 10000000;
    if (_SSDelayDismissalForFullHeightVICard())
    {
      _screenshotsView2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
      isVICardFullScreen = [_screenshotsView2 isVICardFullScreen];

      if (isVICardFullScreen)
      {
        v5 = 350000000;
      }
    }

    _screenshotsView3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
    [_screenshotsView3 _dismissVISheetIfNecessary];

    v9 = dispatch_time(0, v5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000276D0;
    block[3] = &unk_1000BA068;
    block[4] = self;
    dispatch_after(v9, &_dispatch_main_q, block);
  }

  else
  {

    [(SSSContainerViewController *)self _dismissScreenshotsAndDelete];
  }
}

- (void)_dismissScreenshotsAndDelete
{
  _screenshotsView = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  screenshots = [_screenshotsView screenshots];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = screenshots;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        [v11 removeScreenshot:v10 deleteOptions:2];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  screenshotsViewController = self->_screenshotsViewController;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000278D4;
  v16[3] = &unk_1000BA068;
  v16[4] = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000278DC;
  v14[3] = &unk_1000BA3E8;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  [(SSSScreenshotsViewController *)screenshotsViewController removeScreenshots:v13 forReason:1 alongsideAnimations:v16 completion:v14];
}

- (void)_stopBeingInterestedInScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [screenshotsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(screenshotsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        identifier = [v9 identifier];
        [(SSSContainerViewController *)self _undonateUserActivityForSiri:identifier];

        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        [v11 userInterfaceStoppedBeingInterestedInScreenshot:v9];
      }

      v6 = [screenshotsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)screenshotsViewController:(id)controller requestsPresentingActivityViewControllerWithBlock:(id)block
{
  blockCopy = block;
  delegate = [(SSSContainerViewController *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027AD8;
  v8[3] = &unk_1000BA0F8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate containerViewController:self willShowSharingUIWithBlock:v8];
}

- (void)screenshotsViewController:(id)controller requestsPresentingTestFlightFeedbackControllerWithBlock:(id)block
{
  blockCopy = block;
  delegate = [(SSSContainerViewController *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027C8C;
  v8[3] = &unk_1000BA0F8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate containerViewController:self willShowTestFlightUIWithBlock:v8];
}

- (void)screenshotsViewControllerWillPerformDeleteDismissalAnimation:(id)animation
{
  createDismissalContext = [(SSSContainerViewController *)self createDismissalContext];
  [(SSSContainerViewController *)self setDismissalContext:createDismissalContext];

  [(SSSContainerViewController *)self setDidUseDeleteDismissAnimation:1];
}

- (void)activityViewControllerDismissedFromScreenshotsViewController:(id)controller
{
  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerEndedShowingSharingUI:self inStateTransition:{-[SSSScreenshotsViewController inStateTransition](self->_screenshotsViewController, "inStateTransition")}];
}

- (void)screenshotsViewController:(id)controller isDraggingVICardDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = changeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IsDragging VI Card did change: %d", v8, 8u);
  }

  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewController:self isDraggingVISheetDidChange:changeCopy];
}

- (NSDirectionalEdgeInsets)_miniatureInsets
{
  traitCollection = [(SSSContainerViewController *)self traitCollection];
  [traitCollection displayCornerRadius];
  v5 = v4;

  if (v5 == 0.0 || v5 == _UITraitCollectionDisplayCornerRadiusUnspecified)
  {
    v8 = NSDirectionalEdgeInsetsZero.leading + 10.0;
    v7 = NSDirectionalEdgeInsetsZero.bottom + 10.0;
  }

  else
  {
    v7 = (sqrt(v5 * v5 + v5 * v5) - v5) * 1.42379596;
    v8 = v7;
  }

  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v10 = +[UIScreen mainScreen];
  [v10 _peripheryInsets];
  v25 = v12;
  v26 = v11;
  v27 = v14;
  v28 = v13;

  v15.f64[0] = v26;
  v15.f64[1] = v25;
  v16.f64[0] = v28;
  v16.f64[1] = v27;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, *&UIEdgeInsetsZero.top), vceqq_f64(v16, *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    if ((v17 = -[SSSContainerViewController interfaceOrientation](self, "interfaceOrientation"), -[SSSContainerViewController view](self, "view"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 effectiveUserInterfaceLayoutDirection], v18, v17 == 3) && !v19 || (v19 == 1 ? (v20 = v17 == 4) : (v20 = 0), v20))
    {
      v8 = v8 * 2.30434783;
    }
  }

  top = NSDirectionalEdgeInsetsZero.top;
  v22 = v8;
  v23 = v7;
  v24 = trailing;
  result.trailing = v24;
  result.bottom = v23;
  result.leading = v22;
  result.top = top;
  return result;
}

- (double)_scaleAmountForState:(unint64_t)state
{
  if (state)
  {
    return 1.0;
  }

  traitCollection = [(SSSContainerViewController *)self traitCollection];
  v5 = sub_10000F530();

  return v5;
}

- (CGVector)_translationAmountForState:(unint64_t)state pileTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v6 = 0.0;
  v7 = 0.0;
  if (state != 1)
  {
    [(SSSContainerViewController *)self _scaleAmountForState:0.0, 0.0];
    v10 = v9;
    view = [(SSSContainerViewController *)self view];
    if ([view effectiveUserInterfaceLayoutDirection])
    {
      v12 = 1.0;
    }

    else
    {
      v12 = -1.0;
    }

    view2 = [(SSSContainerViewController *)self view];
    [view2 bounds];
    v15 = v14;
    v17 = v16;

    [(SSSContainerViewController *)self _miniatureInsets];
    v6 = x + v12 * (v15 - v15 * v10) * 0.5 - v12 * v18;
    v7 = y + (v17 - v17 * v10) * 0.5 - v19;
  }

  result.dy = v7;
  result.dx = v6;
  return result;
}

- (CGAffineTransform)_transformForState:(SEL)state pileTranslation:(unint64_t)translation
{
  y = a5.y;
  x = a5.x;
  v8 = *&CGAffineTransformIdentity.a;
  v9 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v9;
  v10 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v10;
  if (!translation)
  {
    selfCopy = self;
    *&v17.a = v8;
    *&v17.c = v9;
    *&v17.tx = v10;
    [(CGAffineTransform *)self _scaleAmountForState:?];
    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeScale(&v22, v12, v12);
    t1 = v17;
    t2 = v22;
    CGAffineTransformConcat(retstr, &t1, &t2);
    [(CGAffineTransform *)selfCopy _translationAmountForState:0 pileTranslation:x, y];
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeTranslation(&t1, v13, v14);
    v15 = *&retstr->c;
    *&v19.a = *&retstr->a;
    *&v19.c = v15;
    *&v19.tx = *&retstr->tx;
    v18 = t1;
    self = CGAffineTransformConcat(&t2, &v19, &v18);
    v16 = *&t2.c;
    *&retstr->a = *&t2.a;
    *&retstr->c = v16;
    *&retstr->tx = *&t2.tx;
  }

  return self;
}

- (void)_updateScreenshotsViewTransform
{
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [(SSSContainerViewController *)self _transformForState:[(SSSContainerViewController *)self state]];
  [view setTransform:&v5];
  [view frame];
  traitCollection = [(SSSContainerViewController *)self traitCollection];
  [traitCollection displayScale];

  SSRoundRectToScale();
  [view setFrame:?];
}

- (void)_updateForCurrentSize
{
  view = [(SSSContainerViewController *)self view];
  [view bounds];
  [(SSSContainerViewController *)self _updateForSize:v3, v4];
}

- (void)_updateForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  v7 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v7;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [view setTransform:v8];

  [(SSSScreenshotsViewController *)self->_screenshotsViewController updateForFrame:CGRectZero.origin.x, CGRectZero.origin.y, width, height];
  [(SSSContainerViewController *)self _updateScreenshotsViewTransform];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SSSContainerViewController;
  coordinatorCopy = coordinator;
  [(SSSContainerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028548;
  v8[3] = &unk_1000BA858;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  parentViewController = [(SSSContainerViewController *)self parentViewController];
  supportedInterfaceOrientations = [parentViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

+ (BOOL)_shouldConfigureDragInteraction
{
  if (qword_1000D4A38 != -1)
  {
    sub_100074A5C();
  }

  return byte_1000D4A30;
}

- (void)_prepareDragInteractionIfNecessary
{
  if (!self->_dragInteraction && [objc_opt_class() _shouldConfigureDragInteraction])
  {
    v3 = [[UIDragInteraction alloc] initWithDelegate:self];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v3;

    [(UIDragInteraction *)self->_dragInteraction _setLiftDelay:0.2];
    [(UIDragInteraction *)self->_dragInteraction _setAllowsPointerDragBeforeLiftDelay:0];

    [(SSSContainerViewController *)self _updateDragInteraction];
  }
}

- (void)_updateDragInteraction
{
  if (self->_dragInteraction)
  {
    view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
    state = [(SSSContainerViewController *)self state];
    dragInteraction = self->_dragInteraction;
    if (state)
    {
      [view removeInteraction:dragInteraction];
    }

    else
    {
      [view addInteraction:dragInteraction];
    }
  }
}

- (void)_startDragging
{
  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerBeganDragAndDrop:self];
}

- (void)_stopDraggingDismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  delegate = [(SSSContainerViewController *)self delegate];
  [delegate containerViewControllerEndedDragAndDrop:self shouldDismiss:dismissingCopy];

  [(UILongPressGestureRecognizer *)self->_pileLongPressGesture setEnabled:1];
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view setAlpha:1.0];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  animatorCopy = animator;
  [(SSSContainerViewController *)self _startDragging];
  [(SSSScreenshotsViewController *)self->_screenshotsViewController setBorderViewStyleOverride:2 withAnimator:animatorCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000289D4;
  v7[3] = &unk_1000BA9C0;
  v7[4] = self;
  [animatorCopy addCompletion:v7];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  view = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [view setAlpha:0.0];

  [(SSSScreenshotsViewController *)self->_screenshotsViewController dismissActivityViewController];
  [(UILongPressGestureRecognizer *)self->_pileLongPressGesture setEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [beginCopy items];
  v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[SSSScreenshotManager sharedScreenshotManager];
        v14 = [(SSSContainerViewController *)self _screenshotForDragItem:v12];
        [v13 screenshotEnteredDragSession:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028C28;
  v5[3] = &unk_1000BA9C0;
  v5[4] = self;
  [animator addCompletion:{v5, item}];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  screenshotsViewController = self->_screenshotsViewController;
  defaultCopy = default;
  itemCopy = item;
  view = [(SSSContainerViewController *)self view];
  v11 = [(SSSScreenshotsViewController *)screenshotsViewController targetForCancellingDragItem:itemCopy inContainer:view];

  v12 = [defaultCopy retargetedPreviewWithTarget:v11];

  return v12;
}

- (id)_screenshotForDragItem:(id)item
{
  localObject = [item localObject];
  screenshot = [localObject screenshot];

  return screenshot;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  screenshotsViewController = self->_screenshotsViewController;
  itemCopy = item;
  view = [(SSSContainerViewController *)self view];
  v9 = [(SSSScreenshotsViewController *)screenshotsViewController previewForDragItem:itemCopy inContainer:view];

  return v9;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  sessionCopy = session;
  if (operation)
  {
    v9 = +[SSStatisticsManager sharedStatisticsManager];
    [v9 pipDragEndedSuccessfully];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [sessionCopy items];
  v11 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = +[SSSScreenshotManager sharedScreenshotManager];
        v17 = [(SSSContainerViewController *)self _screenshotForDragItem:v15];
        [v16 screenshotLeftDragSession:v17];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(SSSContainerViewController *)self _stopDraggingDismissing:operation != 0];
}

- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [items items];
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        v12 = [(SSSContainerViewController *)self _screenshotForDragItem:v10];
        [v11 screenshotLeftDragSession:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v5 didMoveToParentViewController:?];
  [(SSSContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
  if (!controller)
  {
    [(SSSScreenshotsViewController *)self->_screenshotsViewController removeChildViewControllers];
  }
}

- (int)_preferredStatusBarVisibility
{
  view = [(SSSContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(SSSContainerViewController *)self view];
  [view2 bounds];
  v8 = v7;

  state = [(SSSContainerViewController *)self state];
  if (state)
  {
    traitCollection = [(SSSContainerViewController *)self traitCollection];
    v11 = [SSChromeHelper statusBarVisibilityForTraitCollection:traitCollection isPortrait:v5 < v8];

    LODWORD(state) = v11;
  }

  return state;
}

- (unint64_t)numberOfScreenshots
{
  visibleScreenshots = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v3 = [visibleScreenshots count];

  return v3;
}

- (void)_donateScreenshotUserActivityForSiri:(id)siri
{
  siriCopy = siri;
  if (siriCopy)
  {
    siriActionActivityIdentifier = [(SSSContainerViewController *)self siriActionActivityIdentifier];

    if (siriActionActivityIdentifier)
    {
      siriActionActivityIdentifier2 = [(SSSContainerViewController *)self siriActionActivityIdentifier];
      [(SSSContainerViewController *)self _undonateUserActivityForSiri:siriActionActivityIdentifier2];
    }

    v7 = [[NSUserActivity alloc] _initWithUserActivityType:@"com.apple.screenshotservices.sirisharing" dynamicActivityType:0 options:&off_1000BE810];
    [v7 setTitle:@"ScreenshotServices"];
    [v7 setEligibleForSearch:0];
    [v7 setEligibleForPrediction:0];
    [v7 setEligibleForHandoff:0];
    [v7 setEligibleForPublicIndexing:0];
    v13 = siriCopy;
    v14 = @"selectedUUIDs";
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v7 setUserInfo:v9];

    v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = siriCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Donate user activity for Siri: %@", &v11, 0xCu);
    }

    [(SSSContainerViewController *)self setSiriActionActivity:v7];
    [(SSSContainerViewController *)self setSiriActionActivityIdentifier:siriCopy];
    [v7 becomeCurrent];
  }
}

- (void)_undonateUserActivityForSiri:(id)siri
{
  siriCopy = siri;
  siriActionActivityIdentifier = [(SSSContainerViewController *)self siriActionActivityIdentifier];
  if (siriActionActivityIdentifier)
  {
    v6 = siriActionActivityIdentifier;
    siriActionActivityIdentifier2 = [(SSSContainerViewController *)self siriActionActivityIdentifier];
    v8 = [siriActionActivityIdentifier2 isEqualToString:siriCopy];

    if (v8)
    {
      v9 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = siriCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Undonate user activity for Siri: %@", &v11, 0xCu);
      }

      siriActionActivity = [(SSSContainerViewController *)self siriActionActivity];
      [siriActionActivity invalidate];

      [(SSSContainerViewController *)self setSiriActionActivity:0];
      [(SSSContainerViewController *)self setSiriActionActivityIdentifier:0];
    }
  }
}

- (void)_notifyScreenshotForBiome
{
  v2 = +[BMStreams discoverabilitySignal];
  source = [v2 source];
  v4 = [BMDiscoverabilitySignalEvent alloc];
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];
  v12[0] = bundleIdentifier;
  v12[1] = @"screenshot";
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [v7 componentsJoinedByString:@"."];
  v9 = +[NSBundle mainBundle];
  bundleIdentifier2 = [v9 bundleIdentifier];
  v11 = [v4 initWithIdentifier:v8 bundleID:bundleIdentifier2 context:0 userInfo:0];

  [source sendEvent:v11];
}

- (SSSContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end