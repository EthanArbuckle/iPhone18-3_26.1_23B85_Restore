@interface SSSContainerViewController
+ (BOOL)_shouldConfigureDragInteraction;
- (BOOL)_isTriggeredByInteractiveScreenshotGesture:(id)a3;
- (BOOL)_pileTranslationIsTowardsEdge;
- (BOOL)_shouldAllowSharing;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isShowingVICard;
- (CGAffineTransform)_transformForState:(SEL)a3 pileTranslation:(unint64_t)a4;
- (CGVector)_translationAmountForState:(unint64_t)a3 pileTranslation:(CGPoint)a4;
- (NSDirectionalEdgeInsets)_miniatureInsets;
- (SSSContainerViewController)init;
- (SSSContainerViewControllerDelegate)delegate;
- (double)_amountToMoveScreenshotsViewForHorizontalSlideOffDismiss;
- (double)_amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:(CGRect)a3;
- (double)_durationForMinimize;
- (double)_pileTranslationAmountForDismiss;
- (double)_scaleAmountForState:(unint64_t)a3;
- (id)_gesturesForMiniatureState;
- (id)_screenshotForDragItem:(id)a3;
- (id)createDismissalContext;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (int)_preferredStatusBarVisibility;
- (unint64_t)numberOfScreenshots;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissScreenshotsAndDelete;
- (void)_dismissScreenshotsWithSlide;
- (void)_dismissScreenshotsWithVelocity:(double)a3;
- (void)_donateScreenshotUserActivityForSiri:(id)a3;
- (void)_handlePileLongPress:(id)a3;
- (void)_handlePilePanGesture:(id)a3;
- (void)_moveScreenshotsViewForHorizontalSlideOffDismiss;
- (void)_notifyScreenshotForBiome;
- (void)_performPostDismissActions;
- (void)_performPreDismissActionsForAnimationSettings:(id)a3;
- (void)_pilePencilTapped;
- (void)_positionAppearingScreenshot:(id)a3;
- (void)_prepareDragInteractionIfNecessary;
- (void)_prepareGesturesForState:(unint64_t)a3;
- (void)_prepareImageIdentifierUpdateAlertIfNecessary;
- (void)_presentImageIdentifierUpdateAlertIfNecessary;
- (void)_screenshotGestureTriggered:(id)a3;
- (void)_startDragging;
- (void)_stopBeingInterestedInScreenshots:(id)a3;
- (void)_stopDraggingDismissing:(BOOL)a3;
- (void)_transitionToStateIfNecessaryFromEnvironmentDescription:(id)a3 completion:(id)a4;
- (void)_undonateUserActivityForSiri:(id)a3;
- (void)_updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates;
- (void)_updateDragInteraction;
- (void)_updateForCurrentSize;
- (void)_updateForSize:(CGSize)a3;
- (void)_updateScreenshotsViewTransform;
- (void)activityViewControllerDismissedFromScreenshotsViewController:(id)a3;
- (void)addScreenshot:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissRequestedFromScreenshotsViewController:(id)a3 completion:(id)a4;
- (void)dismissScreenshotsAndDelete;
- (void)dismissScreenshotsAnimated:(BOOL)a3 completion:(id)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidTransferItems:(id)a4;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:(id)a3;
- (void)groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:(id)a3;
- (void)performInteractiveGesturePresentationCompleteAnimations;
- (void)screenshotsViewController:(id)a3 isDraggingVICardDidChange:(BOOL)a4;
- (void)screenshotsViewController:(id)a3 requestsCopyDeleteForScreenshots:(id)a4 deleteOptions:(unint64_t)a5 forReason:(unint64_t)a6;
- (void)screenshotsViewController:(id)a3 requestsDeleteForScreenshots:(id)a4 deleteOptions:(unint64_t)a5 forReason:(unint64_t)a6;
- (void)screenshotsViewController:(id)a3 requestsPresentingActivityViewControllerWithBlock:(id)a4;
- (void)screenshotsViewController:(id)a3 requestsPresentingTestFlightFeedbackControllerWithBlock:(id)a4;
- (void)screenshotsViewControllerWillPerformDeleteDismissalAnimation:(id)a3;
- (void)sendPostDismissAnalytics;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)waitingForImageIdentifierUpdatesAlertControllerDidCancel:(id)a3;
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

- (void)_screenshotGestureTriggered:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 presentationMode];

  v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v7 = [v6 count];

  v8 = +[SSStatisticsManager sharedStatisticsManager];
  v9 = v8;
  if (v7)
  {
    [v8 screenshotGestureTriggeredWhileAnotherScreenshotWasShowing:v5];
  }

  else
  {
    [v8 screenshotGestureTriggered:v5];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v4 viewWillAppear:a3];
  [(SSSContainerViewController *)self setDismissalContext:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v4 viewDidDisappear:a3];
  [(SSSScreenshotsViewController *)self->_screenshotsViewController removeChildViewControllers];
}

- (void)_transitionToStateIfNecessaryFromEnvironmentDescription:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = sub_100031644([v17 presentationMode]);
  [(SSSContainerViewController *)self setEnvironmentDescription:v17];
  v8 = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v9 = [v8 count];

  v10 = [v17 presentationMode];
  v11 = v10;
  state = self->_state;
  if (state)
  {
    if (v9)
    {
      v13 = v10 == 3;
    }

    else
    {
      v13 = 1;
    }

    LOBYTE(v14) = !v13;
  }

  else
  {
    v15 = [v17 presentationMode];
    if (v9)
    {
      v16 = v11 == 3;
    }

    else
    {
      v16 = 1;
    }

    v14 = !v16;
    if (v15 == 2)
    {
      [(SSSScreenshotsViewController *)self->_screenshotsViewController setInitialAnnotationMode:v11 == 3];
LABEL_20:
      [(SSSContainerViewController *)self setState:v7 animated:v14 completion:v6];
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

  if (v6)
  {
    v6[2](v6);
  }

LABEL_23:
}

- (void)_positionAppearingScreenshot:(id)a3
{
  v4 = a3;
  v5 = +[SSSSignificantEventController sharedSignificantEventController];
  [v5 screenshotAppearAnimationBeganForScreenshot:v4];

  v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v6 layoutIfNeeded];

  v7 = [(SSSContainerViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(SSSScreenshotsViewController *)self->_screenshotsViewController screenshotsParentCoordinateSpace];
  v17 = [(SSSContainerViewController *)self view];
  [v16 convertRect:v17 fromCoordinateSpace:{v9, v11, v13, v15}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(SSSContainerViewController *)self _isTriggeredByInteractiveScreenshotGesture:v4];
  v27 = [[SSSScreenshotView alloc] initWithFrame:v19, v21, v23, v25];
  [(SSSScreenshotView *)v27 setScreenshot:v4];
  [(SSSScreenshotView *)v27 setUseTrilinearMinificationFilter:1];
  [(SSSScreenshotView *)v27 setBorderStyle:sub_100053AC4([(SSSContainerViewController *)self state], 0)];
  [(SSSScreenshotView *)v27 setUsesOriginalImageAspectRatio:sub_100053ADC([(SSSContainerViewController *)self state])];
  if ([(SSSContainerViewController *)self state]== 1)
  {
    v28 = [(SSSScreenshotsViewController *)self->_screenshotsViewController currentScreenshot];
    v29 = v28 == v4;

    [(SSSScreenshotView *)v27 prepareForFullscreenExperience];
    [(SSSScreenshotView *)v27 finishPreparingForFullscreenExperienceWithIsCurrentScreenshot:v29];
  }

  else
  {
    v30 = [(SSSContainerViewController *)self traitCollection];
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
    v54 = self;
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
      v47 = self;
      v49 = v31;
      v48 = v4;
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
  v39 = v4;
  v40 = self;
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

- (BOOL)_isTriggeredByInteractiveScreenshotGesture:(id)a3
{
  v3 = [a3 environmentDescription];
  v4 = [v3 presentationMode] == 3;

  return v4;
}

- (void)addScreenshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SSSContainerViewController *)self _screenshotGestureTriggered:v6];
  v8 = +[SSSScreenshotManager sharedScreenshotManager];
  [v8 userInterfaceBecameInterestedInScreenshot:v6];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self->_groupImageIdentifierUpdateTracker addScreenshotToGroup:v6];
  v9 = [v6 environmentDescription];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024210;
  v12[3] = &unk_1000BA8F8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(SSSContainerViewController *)self _transitionToStateIfNecessaryFromEnvironmentDescription:v9 completion:v12];
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

- (void)waitingForImageIdentifierUpdatesAlertControllerDidCancel:(id)a3
{
  [(SSSScreenshotsViewController *)self->_screenshotsViewController dismissActivityViewController];
  imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;
  self->_imageIdentifierUpdateAlert = 0;

  v5 = [(SSSContainerViewController *)self delegate];
  [v5 containerViewControllerEndedShowingWaitingForImageIdentifierUpdatesUI:self];
}

- (void)_presentImageIdentifierUpdateAlertIfNecessary
{
  [(SSSContainerViewController *)self presentViewController:self->_imageIdentifierUpdateAlert animated:1 completion:0];
  v3 = [(SSSContainerViewController *)self delegate];
  [v3 containerViewControllerBeganShowingWaitingForImageIdentifierUpdatesUI:self];
}

- (void)_updateDisplayedProgressTowardsReceivingAllImageIdentifierUpdates
{
  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self->_groupImageIdentifierUpdateTracker progressTowardsReceivingAllImageIdentifierUpdates];
  imageIdentifierUpdateAlert = self->_imageIdentifierUpdateAlert;

  [(SSSWaitingForImageIdentifierUpdatesAlertController *)imageIdentifierUpdateAlert setProgress:?];
}

- (void)groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:(id)a3
{
  v4 = a3;
  [v4 progressTowardsReceivingAllImageIdentifierUpdates];
  v6 = v5;
  v7 = [(SSSWaitingForImageIdentifierUpdatesAlertController *)self->_imageIdentifierUpdateAlert presentingViewController];

  if (v7)
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
      v10 = v4;
      [(SSSWaitingForImageIdentifierUpdatesAlertController *)imageIdentifierUpdateAlert dismissViewControllerAnimated:1 completion:v9];
    }
  }
}

- (void)groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:(id)a3
{
  [(SSSContainerViewController *)self _donateScreenshotUserActivityForSiri:a3];

  [(SSSContainerViewController *)self _notifyScreenshotForBiome];
}

- (void)_performPreDismissActionsForAnimationSettings:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        [v11 userInterfaceWillStopBeingInterestedInScreenshot:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = [(SSSContainerViewController *)self delegate];
  [v12 containerViewController:self willBeginDismissAnimationWithSettings:v4];
}

- (void)_performPostDismissActions
{
  [(SSSContainerViewController *)self sendPostDismissAnalytics];
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  [(SSSContainerViewController *)self _stopBeingInterestedInScreenshots:v3];

  v4 = [(SSSContainerViewController *)self delegate];
  [v4 containerViewControllerDidEndDismissAnimation:self];

  screenshotsViewController = self->_screenshotsViewController;

  [(SSSScreenshotsViewController *)screenshotsViewController removeChildViewControllers];
}

- (void)sendPostDismissAnalytics
{
  v3 = [(SSSContainerViewController *)self dismissalContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SSSContainerViewController *)self createDismissalContext];
  }

  v6 = v5;

  if ([(SSSContainerViewController *)self didUseDeleteDismissAnimation])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setDismissAnimationStyle:v7];
  v8 = [(SSSContainerViewController *)self screenshotsViewController];
  [v6 setDismissalType:{objc_msgSend(v8, "dismissalType")}];

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
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  v4 = [v3 screenshots];
  v5 = [v3 viewsForScreenshots:v4];

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
        v14 = [v13 screenshot];
        v9 |= [v14 hasUnsavedImageEdits];
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
  v17 = [(SSSContainerViewController *)self environmentDescription];
  [v15 setAppearedFullScreen:{objc_msgSend(v17, "presentationMode") == 2}];

  [v15 setViAvailable:_SSVisualIntelligenceV2Enabled()];
  [v15 setViUsed:{-[SSSContainerViewController didInvokeVICard](self, "didInvokeVICard")}];
  v18 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  [v15 setDidShare:{objc_msgSend(v18, "didShare")}];

  v19 = [(SSSContainerViewController *)self screenshotsViewController];
  [v15 setDismissalType:{objc_msgSend(v19, "dismissalType")}];

  return v15;
}

- (double)_amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v16 = [(SSSContainerViewController *)self view];
  v17 = [v16 effectiveUserInterfaceLayoutDirection];

  if (v17)
  {
    v18 = [(SSSContainerViewController *)self view];
    [v18 bounds];
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
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v3 frame];
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewWithFrameForHorizontalSlideOffDismiss:?];
  v5 = v4;

  return v5;
}

- (void)_moveScreenshotsViewForHorizontalSlideOffDismiss
{
  v8 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v8 center];
  v4 = v3;
  v6 = v5;
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewForHorizontalSlideOffDismiss];
  [v8 setCenter:{v4 + v7, v6}];
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
  v2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  v3 = [v2 isShowingVICard];

  return v3;
}

- (void)dismissScreenshotsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SSSContainerViewController *)self state];
  [(SSSContainerViewController *)self _durationForHorizontalSlideOffDismiss];
  v9 = v8;
  if (v7)
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
  v11 = v6;
  v22 = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100025370;
  v17[3] = &unk_1000BA970;
  v19 = v4;
  v17[4] = self;
  v20 = v7 == 0;
  v12 = objc_retainBlock(v21);
  v18 = v12;
  v13 = objc_retainBlock(v17);
  v14 = v13;
  if (v4)
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

- (void)_dismissScreenshotsWithVelocity:(double)a3
{
  [(SSSContainerViewController *)self _amountToMoveScreenshotsViewForHorizontalSlideOffDismiss];
  v6 = v5;
  v7 = a3 / fabs(v5);
  [(SSSContainerViewController *)self _scaleAmountForState:0];
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, v8, v8);
  y = CGRectZero.origin.y;
  v10 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v33 = v34;
  v35.origin.x = CGRectZero.origin.x;
  v35.origin.y = y;
  v35.size.width = v12;
  v35.size.height = v14;
  CGRectApplyAffineTransform(v35, &v33);
  v15 = [(SSSContainerViewController *)self view];
  [v15 bounds];
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
  v3 = [(SSSContainerViewController *)self view];
  v4 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v3 addSubview:v4];

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
  v5 = [(SSSContainerViewController *)self _gesturesForMiniatureState];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(SSSContainerViewController *)self view];
        [v11 addGestureRecognizer:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
  v3 = [(SSSContainerViewController *)self view];
  [v3 bounds];
  v4 = CGRectEqualToRect(v11, self->_cachedViewBounds);

  if (!v4)
  {
    [(SSSContainerViewController *)self _updateForCurrentSize];
    v5 = [(SSSContainerViewController *)self view];
    [v5 bounds];
    self->_cachedViewBounds.origin.x = v6;
    self->_cachedViewBounds.origin.y = v7;
    self->_cachedViewBounds.size.width = v8;
    self->_cachedViewBounds.size.height = v9;

    [(SSSContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)setState:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  state = self->_state;
  if (state != a3)
  {
    self->_lastState = state;
    self->_state = a3;
  }

  v10 = [(SSSContainerViewController *)self delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025CC8;
  v12[3] = &unk_1000BAA60;
  v13 = v8;
  v14 = a3;
  v15 = v5;
  v12[4] = self;
  v11 = v8;
  [v10 containerViewController:self willTransitionToState:a3 animated:v5 changeBlock:v12];
}

- (void)_pilePencilTapped
{
  [(SSSScreenshotsViewController *)self->_screenshotsViewController setInitialAnnotationMode:1];

  [(SSSContainerViewController *)self setState:1];
}

- (BOOL)_pileTranslationIsTowardsEdge
{
  v3 = [(SSSContainerViewController *)self view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  x = self->_pileTranslation.x;
  if (v4)
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
  v11 = [(SSSContainerViewController *)self view];
  v12 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v11 convertRect:v12 fromView:{v4, v6, v8, v10}];
  v14 = v13;

  return v14 * 0.25;
}

- (void)_handlePilePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(SSSContainerViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(SSSContainerViewController *)self view];
  [v4 velocityInView:v10];
  v12 = v11;

  if ([v4 state] == 2)
  {
    self->_pileTranslation.x = v7;
    self->_pileTranslation.y = v9 * 0.05;
    if (![(SSSContainerViewController *)self _pileTranslationIsTowardsEdge])
    {
      self->_pileTranslation.x = v7 * 0.1;
    }

    goto LABEL_4;
  }

  if ([v4 state] != 3 && objc_msgSend(v4, "state") != 4 && objc_msgSend(v4, "state") != 5)
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
  v15 = [(SSSContainerViewController *)self delegate];
  [v15 containerViewControllerHadGestureInteraction:self];
}

- (BOOL)_shouldAllowSharing
{
  v2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController currentScreenshot];
  v3 = [v2 environmentDescription];
  v4 = [v3 hasOnenessScreen];

  if (v4)
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
  v10 = [v9 isLostModeActive];

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

  return (v12 < 0xFFFFFFFE) & (v10 ^ 1);
}

- (void)_prepareGesturesForState:(unint64_t)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SSSContainerViewController *)self _gesturesForMiniatureState];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setEnabled:a3 == 0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_pileLongPressGesture == a3)
  {
    return [(SSSContainerViewController *)self _shouldAllowSharing];
  }

  else
  {
    return 1;
  }
}

- (void)_handlePileLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(SSSContainerViewController *)self delegate];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100026AAC;
    v5[3] = &unk_1000BA068;
    v5[4] = self;
    [v4 containerViewController:self willShowSharingUIWithBlock:v5];
  }
}

- (void)dismissRequestedFromScreenshotsViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(SSSContainerViewController *)self createDismissalContext];
  [(SSSContainerViewController *)self setDismissalContext:v5];

  [(SSSContainerViewController *)self dismissScreenshotsAnimated:1 completion:v6];
}

- (void)screenshotsViewController:(id)a3 requestsCopyDeleteForScreenshots:(id)a4 deleteOptions:(unint64_t)a5 forReason:(unint64_t)a6
{
  v21 = a3;
  v9 = a4;
  v22 = self;
  v24 = a6;
  [(SSSContainerViewController *)self setDeleteReason:a6];
  queue = dispatch_queue_create("com.apple.screenshotservices.screenshotItemProviderProcessingQueue", 0);
  v10 = dispatch_group_create();
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v9;
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
  v28 = v22;
  v29 = v21;
  v30 = v12;
  v31 = a5;
  v32 = v24;
  v18 = v12;
  v19 = v21;
  v20 = v11;
  dispatch_group_notify(v10, &_dispatch_main_q, v26);
}

- (void)screenshotsViewController:(id)a3 requestsDeleteForScreenshots:(id)a4 deleteOptions:(unint64_t)a5 forReason:(unint64_t)a6
{
  v9 = a4;
  [(SSSContainerViewController *)self setDeleteReason:a6];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
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
        [v16 removeScreenshot:v15 deleteOptions:a5];

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
  v23[5] = a6;
  v17 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002747C;
  v20[3] = &unk_1000BA8A8;
  v21 = v10;
  v22 = a6;
  v20[4] = self;
  v18 = v10;
  v19 = objc_retainBlock(v20);
  [(SSSScreenshotsViewController *)self->_screenshotsViewController removeScreenshots:v18 forReason:a6 alongsideAnimations:v17 completion:v19];
}

- (void)dismissScreenshotsAndDelete
{
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  v4 = [v3 isShowingVICard];

  if (v4)
  {
    v5 = 10000000;
    if (_SSDelayDismissalForFullHeightVICard())
    {
      v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
      v7 = [v6 isVICardFullScreen];

      if (v7)
      {
        v5 = 350000000;
      }
    }

    v8 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
    [v8 _dismissVISheetIfNecessary];

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
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController _screenshotsView];
  v4 = [v3 screenshots];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
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

- (void)_stopBeingInterestedInScreenshots:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];
        [(SSSContainerViewController *)self _undonateUserActivityForSiri:v10];

        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        [v11 userInterfaceStoppedBeingInterestedInScreenshot:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)screenshotsViewController:(id)a3 requestsPresentingActivityViewControllerWithBlock:(id)a4
{
  v5 = a4;
  v6 = [(SSSContainerViewController *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027AD8;
  v8[3] = &unk_1000BA0F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 containerViewController:self willShowSharingUIWithBlock:v8];
}

- (void)screenshotsViewController:(id)a3 requestsPresentingTestFlightFeedbackControllerWithBlock:(id)a4
{
  v5 = a4;
  v6 = [(SSSContainerViewController *)self delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027C8C;
  v8[3] = &unk_1000BA0F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 containerViewController:self willShowTestFlightUIWithBlock:v8];
}

- (void)screenshotsViewControllerWillPerformDeleteDismissalAnimation:(id)a3
{
  v4 = [(SSSContainerViewController *)self createDismissalContext];
  [(SSSContainerViewController *)self setDismissalContext:v4];

  [(SSSContainerViewController *)self setDidUseDeleteDismissAnimation:1];
}

- (void)activityViewControllerDismissedFromScreenshotsViewController:(id)a3
{
  v4 = [(SSSContainerViewController *)self delegate];
  [v4 containerViewControllerEndedShowingSharingUI:self inStateTransition:{-[SSSScreenshotsViewController inStateTransition](self->_screenshotsViewController, "inStateTransition")}];
}

- (void)screenshotsViewController:(id)a3 isDraggingVICardDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IsDragging VI Card did change: %d", v8, 8u);
  }

  v7 = [(SSSContainerViewController *)self delegate];
  [v7 containerViewController:self isDraggingVISheetDidChange:v4];
}

- (NSDirectionalEdgeInsets)_miniatureInsets
{
  v3 = [(SSSContainerViewController *)self traitCollection];
  [v3 displayCornerRadius];
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

- (double)_scaleAmountForState:(unint64_t)a3
{
  if (a3)
  {
    return 1.0;
  }

  v4 = [(SSSContainerViewController *)self traitCollection];
  v5 = sub_10000F530();

  return v5;
}

- (CGVector)_translationAmountForState:(unint64_t)a3 pileTranslation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = 0.0;
  v7 = 0.0;
  if (a3 != 1)
  {
    [(SSSContainerViewController *)self _scaleAmountForState:0.0, 0.0];
    v10 = v9;
    v11 = [(SSSContainerViewController *)self view];
    if ([v11 effectiveUserInterfaceLayoutDirection])
    {
      v12 = 1.0;
    }

    else
    {
      v12 = -1.0;
    }

    v13 = [(SSSContainerViewController *)self view];
    [v13 bounds];
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

- (CGAffineTransform)_transformForState:(SEL)a3 pileTranslation:(unint64_t)a4
{
  y = a5.y;
  x = a5.x;
  v8 = *&CGAffineTransformIdentity.a;
  v9 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v9;
  v10 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v10;
  if (!a4)
  {
    v11 = self;
    *&v17.a = v8;
    *&v17.c = v9;
    *&v17.tx = v10;
    [(CGAffineTransform *)self _scaleAmountForState:?];
    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeScale(&v22, v12, v12);
    t1 = v17;
    t2 = v22;
    CGAffineTransformConcat(retstr, &t1, &t2);
    [(CGAffineTransform *)v11 _translationAmountForState:0 pileTranslation:x, y];
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
  v3 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [(SSSContainerViewController *)self _transformForState:[(SSSContainerViewController *)self state]];
  [v3 setTransform:&v5];
  [v3 frame];
  v4 = [(SSSContainerViewController *)self traitCollection];
  [v4 displayScale];

  SSRoundRectToScale();
  [v3 setFrame:?];
}

- (void)_updateForCurrentSize
{
  v5 = [(SSSContainerViewController *)self view];
  [v5 bounds];
  [(SSSContainerViewController *)self _updateForSize:v3, v4];
}

- (void)_updateForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  v7 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v7;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [v6 setTransform:v8];

  [(SSSScreenshotsViewController *)self->_screenshotsViewController updateForFrame:CGRectZero.origin.x, CGRectZero.origin.y, width, height];
  [(SSSContainerViewController *)self _updateScreenshotsViewTransform];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SSSContainerViewController;
  v7 = a4;
  [(SSSContainerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028548;
  v8[3] = &unk_1000BA858;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SSSContainerViewController *)self parentViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
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
    v5 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
    v3 = [(SSSContainerViewController *)self state];
    dragInteraction = self->_dragInteraction;
    if (v3)
    {
      [v5 removeInteraction:dragInteraction];
    }

    else
    {
      [v5 addInteraction:dragInteraction];
    }
  }
}

- (void)_startDragging
{
  v3 = [(SSSContainerViewController *)self delegate];
  [v3 containerViewControllerBeganDragAndDrop:self];
}

- (void)_stopDraggingDismissing:(BOOL)a3
{
  v3 = a3;
  v5 = [(SSSContainerViewController *)self delegate];
  [v5 containerViewControllerEndedDragAndDrop:self shouldDismiss:v3];

  [(UILongPressGestureRecognizer *)self->_pileLongPressGesture setEnabled:1];
  v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v6 setAlpha:1.0];
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v6 = a4;
  [(SSSContainerViewController *)self _startDragging];
  [(SSSScreenshotsViewController *)self->_screenshotsViewController setBorderViewStyleOverride:2 withAnimator:v6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000289D4;
  v7[3] = &unk_1000BA9C0;
  v7[4] = self;
  [v6 addCompletion:v7];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotsViewController *)self->_screenshotsViewController view];
  [v6 setAlpha:0.0];

  [(SSSScreenshotsViewController *)self->_screenshotsViewController dismissActivityViewController];
  [(UILongPressGestureRecognizer *)self->_pileLongPressGesture setEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 items];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[SSSScreenshotManager sharedScreenshotManager];
        v14 = [(SSSContainerViewController *)self _screenshotForDragItem:v12];
        [v13 screenshotEnteredDragSession:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028C28;
  v5[3] = &unk_1000BA9C0;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  screenshotsViewController = self->_screenshotsViewController;
  v8 = a5;
  v9 = a4;
  v10 = [(SSSContainerViewController *)self view];
  v11 = [(SSSScreenshotsViewController *)screenshotsViewController targetForCancellingDragItem:v9 inContainer:v10];

  v12 = [v8 retargetedPreviewWithTarget:v11];

  return v12;
}

- (id)_screenshotForDragItem:(id)a3
{
  v3 = [a3 localObject];
  v4 = [v3 screenshot];

  return v4;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  screenshotsViewController = self->_screenshotsViewController;
  v7 = a4;
  v8 = [(SSSContainerViewController *)self view];
  v9 = [(SSSScreenshotsViewController *)screenshotsViewController previewForDragItem:v7 inContainer:v8];

  return v9;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v18 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = +[SSStatisticsManager sharedStatisticsManager];
    [v9 pipDragEndedSuccessfully];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v8 items];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = +[SSSScreenshotManager sharedScreenshotManager];
        v17 = [(SSSContainerViewController *)self _screenshotForDragItem:v15];
        [v16 screenshotLeftDragSession:v17];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(SSSContainerViewController *)self _stopDraggingDismissing:a5 != 0];
}

- (void)dragInteraction:(id)a3 sessionDidTransferItems:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a4 items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[SSSScreenshotManager sharedScreenshotManager];
        v12 = [(SSSContainerViewController *)self _screenshotForDragItem:v10];
        [v11 screenshotLeftDragSession:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SSSContainerViewController;
  [(SSSContainerViewController *)&v5 didMoveToParentViewController:?];
  [(SSSContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
  if (!a3)
  {
    [(SSSScreenshotsViewController *)self->_screenshotsViewController removeChildViewControllers];
  }
}

- (int)_preferredStatusBarVisibility
{
  v3 = [(SSSContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(SSSContainerViewController *)self view];
  [v6 bounds];
  v8 = v7;

  v9 = [(SSSContainerViewController *)self state];
  if (v9)
  {
    v10 = [(SSSContainerViewController *)self traitCollection];
    v11 = [SSChromeHelper statusBarVisibilityForTraitCollection:v10 isPortrait:v5 < v8];

    LODWORD(v9) = v11;
  }

  return v9;
}

- (unint64_t)numberOfScreenshots
{
  v2 = [(SSSScreenshotsViewController *)self->_screenshotsViewController visibleScreenshots];
  v3 = [v2 count];

  return v3;
}

- (void)_donateScreenshotUserActivityForSiri:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SSSContainerViewController *)self siriActionActivityIdentifier];

    if (v5)
    {
      v6 = [(SSSContainerViewController *)self siriActionActivityIdentifier];
      [(SSSContainerViewController *)self _undonateUserActivityForSiri:v6];
    }

    v7 = [[NSUserActivity alloc] _initWithUserActivityType:@"com.apple.screenshotservices.sirisharing" dynamicActivityType:0 options:&off_1000BE810];
    [v7 setTitle:@"ScreenshotServices"];
    [v7 setEligibleForSearch:0];
    [v7 setEligibleForPrediction:0];
    [v7 setEligibleForHandoff:0];
    [v7 setEligibleForPublicIndexing:0];
    v13 = v4;
    v14 = @"selectedUUIDs";
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v7 setUserInfo:v9];

    v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Donate user activity for Siri: %@", &v11, 0xCu);
    }

    [(SSSContainerViewController *)self setSiriActionActivity:v7];
    [(SSSContainerViewController *)self setSiriActionActivityIdentifier:v4];
    [v7 becomeCurrent];
  }
}

- (void)_undonateUserActivityForSiri:(id)a3
{
  v4 = a3;
  v5 = [(SSSContainerViewController *)self siriActionActivityIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(SSSContainerViewController *)self siriActionActivityIdentifier];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      v9 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Undonate user activity for Siri: %@", &v11, 0xCu);
      }

      v10 = [(SSSContainerViewController *)self siriActionActivity];
      [v10 invalidate];

      [(SSSContainerViewController *)self setSiriActionActivity:0];
      [(SSSContainerViewController *)self setSiriActionActivityIdentifier:0];
    }
  }
}

- (void)_notifyScreenshotForBiome
{
  v2 = +[BMStreams discoverabilitySignal];
  v3 = [v2 source];
  v4 = [BMDiscoverabilitySignalEvent alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  v12[0] = v6;
  v12[1] = @"screenshot";
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [v7 componentsJoinedByString:@"."];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [v4 initWithIdentifier:v8 bundleID:v10 context:0 userInfo:0];

  [v3 sendEvent:v11];
}

- (SSSContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end