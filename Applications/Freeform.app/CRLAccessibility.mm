@interface CRLAccessibility
+ (BOOL)isFullKeyboardAccessEnabledWithKeyboardAttached;
+ (BOOL)isUsingAccessibilityTextSize;
+ (BOOL)isVoiceOverOrSwitchControlEnabled;
+ (BOOL)shouldRemoveMovementAnimations;
+ (id)sharedInstance;
- (BOOL)isFocusedElementAccessibleDescendantOfElement:(id)element;
- (BOOL)isQuickSpeakEnabled;
- (CGRect)_keyboardFrame;
- (CGRect)keyboardFrame;
- (id)canvasViewDescription;
- (id)canvasViewHelp;
- (void)_keyboardWasShown:(id)shown;
- (void)_keyboardWillBeHidden:(id)hidden;
- (void)addExtraSafeCategoryNamesToCollection:(id)collection;
- (void)addSafeCategoryNamesToCollection:(id)collection;
- (void)dealloc;
- (void)handlePostingAnnouncement:(id)announcement sender:(id)sender priority:(int)priority sound:(id)sound;
- (void)loadAccessibilitySupport;
- (void)loadExtraAccessibilitySupport;
- (void)loadQuickSpeakSupport;
- (void)performExtraValidation;
- (void)performValidation;
- (void)preventFocusingCanvasResponderElementOnScreenChangeForInterval:(double)interval;
- (void)setFirstElementForUpcomingPageTurn:(id)turn;
- (void)setFirstElementForUpcomingScreenChange:(id)change;
- (void)unloadExtraAccessibilitySupport;
@end

@implementation CRLAccessibility

- (CGRect)_keyboardFrame
{
  AssociatedCGRect = __CRLAccessibilityGetAssociatedCGRect(self, &unk_101A34F9B);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = AssociatedCGRect;
  return result;
}

- (void)_keyboardWasShown:(id)shown
{
  [(CRLAccessibility *)self _setKeyboardVisible:1];
  [objc_msgSend(objc_msgSend(shown "userInfo")];

  [(CRLAccessibility *)self _setKeyboardFrame:?];
}

- (void)_keyboardWillBeHidden:(id)hidden
{
  [(CRLAccessibility *)self _setKeyboardVisible:0];
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;

  [(CRLAccessibility *)self _setKeyboardFrame:CGRectNull.origin.x, y, width, height];
}

- (void)performExtraValidation
{
  __CRLAccessibilityValidateIsKindOfClass(@"_UIShareInvitationRemoteViewController", @"_UIRemoteViewController");
  __CRLAccessibilityValidateClassMethodComplete(@"_UIRemoteViewController", @"__shouldHostRemoteTextEffectsWindow", "B", v2, v3, v4, v5, v6, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityFrameForSorting", "{CGRect={CGPoint=dd}{CGSize=dd}}", v7, v8, v9, v10, v11, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityHasTextOperations", "B", v12, v13, v14, v15, v16, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityLoadAccessibilityInformation", "v", v17, v18, v19, v20, v21, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityOverridesInstructionsHint", "B", v22, v23, v24, v25, v26, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityParentView", "@", v27, v28, v29, v30, v31, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityPerformCustomActionWithIdentifier:", "B", v32, v33, v34, v35, v36, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityScrollToVisible", "B", v37, v38, v39, v40, v41, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityTextOperationAction:", "B", v42, v43, v44, v45, v46, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityTextViewTextOperationResponder", "@", v47, v48, v49, v50, v51, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"_accessibilityTextOperations", "@", v52, v53, v54, v55, v56, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"accessibilityMenuActions", "@", v57, v58, v59, v60, v61, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"NSObject", @"accessibilityEditOperationAction:", "B", v62, v63, v64, v65, v66, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"PHAsset", @"filename", "@", v67, v68, v69, v70, v71, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"PHAsset", @"mediaType", "q", v72, v73, v74, v75, v76, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"PHAsset", @"mediaSubtypes", "Q", v77, v78, v79, v80, v81, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIApplication", @"_accessibilitySoftwareKeyboardActive", "B", v82, v83, v84, v85, v86, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIApplication", @"_unswizzledTargetInChainForAction:sender:", "@", v87, v88, v89, v90, v91, ":");
  __CRLAccessibilityValidateIsKindOfClass(@"UILayoutContainerView", @"UIView");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UILayoutContainerView", @"delegate", "@", v92, v93, v94, v95, v96, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UINavigationController", @"didShowViewController:animated:", "v", v97, v98, v99, v100, v101, "@");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UINavigationController", @"navigationTransitionView", "@", v102, v103, v104, v105, v106, 0);
  __CRLAccessibilityValidateIvarType(@"UINavigationController", "_topPalette", "_UINavigationControllerPalette");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIScrollView", @"_accessibilityScrollStatusPrefersVertical", "B", v107, v108, v109, v110, v111, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIScrollView", @"accessibilityApplyScrollContent:sendScrollStatus:animated:", "v", v112, v113, v114, v115, v116, "{CGPoint=dd}");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIScrollView", @"accessibilityShouldEnableScrollIndicator:", "B", v117, v118, v119, v120, v121, "@");
  __CRLAccessibilityValidateIvarType(@"UISlider", "_visualElement", "UIView<_UISliderVisualElement>");
  __CRLAccessibilityValidateInstanceMethodComplete(@"_UISlideriOSVisualElement", @"_setValue:andSendAction:", "v", v122, v123, v124, v125, v126, "f");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_accessibilityChildren", "@", v127, v128, v129, v130, v131, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_accessibilityClearChildren", "v", v132, v133, v134, v135, v136, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_accessibilityRetrieveTableViewCellText", "@", v137, v138, v139, v140, v141, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_accessibilityRetrieveTableViewIvarsText", "@", v142, v143, v144, v145, v146, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_accessibilityTableViewCellSubclassShouldExist", "B", v147, v148, v149, v150, v151, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UITableViewCell", @"_tableView", "@", v152, v153, v154, v155, v156, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIView", @"_accessibilityViewController", "@", v157, v158, v159, v160, v161, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIView", @"_accessibleSubviews", "@", v162, v163, v164, v165, v166, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIWindow", @"firstResponder", "@", v167, v168, v169, v170, v171, 0);
  __CRLAccessibilityValidateClassMethod(@"UICalloutBar", @"sharedCalloutBar");
  __CRLAccessibilityValidateInstanceMethod(@"NSObject", @"_accessibilityShouldUseViewHierarchyForFindingScrollParent");
  __CRLAccessibilityValidateInstanceMethod(@"UIApplication", @"_accessibilityElementFirst:last:forFocus:parameters:");
  __CRLAccessibilityValidateInstanceMethod(@"UIApplication", @"_accessibilityMainWindow");
  __CRLAccessibilityValidateInstanceMethod(@"UIDimmingView", @"passthroughViews");
  __CRLAccessibilityValidateInstanceMethod(@"UIPopoverController", @"dimmingViewWasTapped:");
  __CRLAccessibilityValidateInstanceMethod(@"UIScrollView", @"_accessibilityScrollAnimationDurationDelay");
  __CRLAccessibilityValidateInstanceMethod(@"UIScrollView", @"_accessibilityScrollStatus");
  __CRLAccessibilityValidateInstanceMethod(@"UIScrollView", @"_accessibilityScrollStatusFormatString");
  __CRLAccessibilityValidateInstanceMethod(@"UITableViewCell", @"editControlWasClicked:");
  __CRLAccessibilityValidateInstanceMethod(@"UIView", @"_accessibleSubviews");
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIScrollView", @"_setContentOffset:duration:animationCurve:", "v", v172, v173, v174, v175, v176, "{CGPoint=dd}");
}

- (void)addExtraSafeCategoryNamesToCollection:(id)collection
{
  [collection addObject:@"CRLNSObjectAccessibility_iOS"];
  [collection addObject:@"CRLUIApplicationAccessibility"];
  [collection addObject:@"CRLUIButtonAccessibility"];
  [collection addObject:@"CRLUICollectionViewCellAccessibility"];
  [collection addObject:@"CRLUILabelAccessibility"];
  [collection addObject:@"CRLUILayoutContainerViewAccessibility"];
  [collection addObject:@"CRLUIMenuControllerAccessibility"];
  [collection addObject:@"CRLUINavigationItemAccessibility"];
  [collection addObject:@"CRLUIPageControlAccessibility"];
  [collection addObject:@"CRLUIAccessibilityPickerComponentAccessibility"];
  [collection addObject:@"CRLUIReferenceLibraryViewControllerAccessibility"];
  [collection addObject:@"CRLUIScrollViewAccessibility"];
  [collection addObject:@"CRLUISliderAccessibility"];
  [collection addObject:@"CRLUITableViewCellAccessibility"];
  [collection addObject:@"CRLUITextEffectsRemoteViewAccessibility"];
  [collection addObject:@"CRLUIViewAccessibility"];
  [collection addObject:@"CRLUIViewControllerAccessibility"];
  [collection addObject:@"CRLUIWindowAccessibility"];
  [collection addObject:@"CRLiOSBoardViewControllerAccessibility"];
  [collection addObject:@"CRLToolsChooserViewControllerAccessibility"];
  [collection addObject:@"CRLShapeLayoutAccessibility"];
  [collection addObject:@"CRLCheckableTableViewCellAccessibility"];
  [collection addObject:@"CRLDisclosureTableViewCellAccessibility"];
  [collection addObject:@"CRLDoubleSegmentedControlTableViewCellAccessibility"];
  [collection addObject:@"CRLiOSCanvasViewControllerAccessibility"];
  [collection addObject:@"CRLSegmentedControlTableViewCellAccessibility"];
  [collection addObject:@"CRLSwitchTableViewCellAccessibility"];
  [collection addObject:@"CRLTickedSliderAccessibility"];
  [collection addObject:@"CRLTextInputResponderAccessibility"];
  [collection addObject:@"CRLScrollViewAccessibility"];
  [collection addObject:@"CRLEditableTextViewCellAccessibility"];
  [collection addObject:@"CRLPopoverBasedViewControllerAccessibility"];
  [collection addObject:@"CRLStepperAccessibility"];
  [collection addObject:@"CRLNavigationControllerAccessibility"];

  [collection addObject:@"CRLSegmentedControlAccessibility"];
}

- (void)loadExtraAccessibilitySupport
{
  [(CRLAccessibility *)self _setKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"_keyboardWasShown:" name:UIKeyboardDidShowNotification object:0];

  [(NSNotificationCenter *)v3 addObserver:self selector:"_keyboardWillBeHidden:" name:UIKeyboardWillHideNotification object:0];
}

- (void)unloadExtraAccessibilitySupport
{
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIKeyboardDidShowNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;

  [(CRLAccessibility *)self _setKeyboardFrame:CGRectNull.origin.x, y, width, height];
}

- (void)handlePostingAnnouncement:(id)announcement sender:(id)sender priority:(int)priority sound:(id)sound
{
  v7 = *&priority;
  if (![(CRLAccessibility *)self announcementsSuspended:announcement])
  {
    if (sound)
    {
      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, sound);
    }

    if ([announcement length])
    {
      if (v7 == 5)
      {
        argument = announcement;
      }

      else
      {
        v16 = [[NSNumber alloc] initWithInt:v7];
        v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{v16, @"UIAccessibilityTokenAnnouncementPriority", 0}];

        argument = [[NSAttributedString alloc] initWithString:announcement attributes:v17];
      }

      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument);
    }

    else
    {
      ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
      if (!sound)
      {
        if (ShouldPerformValidationChecks)
        {
          ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
          if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Nil or empty announcement requested without sound played.", v11, v12, v13, v14, v15, v18))
          {
            abort();
          }
        }
      }
    }
  }
}

- (void)loadQuickSpeakSupport
{
  if (![(CRLAccessibility *)self quickSpeakSupportLoaded]&& NSClassFromString(@"AXQuickSpeak"))
  {
    [(CRLAccessibility *)self setQuickSpeakSupportLoaded:1];
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      __CRLAccessibilityValidateInstanceMethod(@"AXQuickSpeak", @"isSpeaking");
    }

    CRLAccessibilityInstallSafeCategory(@"CRLAXQuickSpeak");
  }
}

- (BOOL)isQuickSpeakEnabled
{
  quickSpeakSupportLoaded = [(CRLAccessibility *)self quickSpeakSupportLoaded];
  if (quickSpeakSupportLoaded)
  {
    shouldFakeQuickSpeakAlwaysSpeaking = [(CRLAccessibility *)self shouldFakeQuickSpeakAlwaysSpeaking];
    [(CRLAccessibility *)self setShouldFakeQuickSpeakAlwaysSpeaking:1];
    v5 = [(CRLAccessibility *)self crlaxBoolValueForKey:@"_accessibilityShouldShowPauseBubble"];
    [(CRLAccessibility *)self setShouldFakeQuickSpeakAlwaysSpeaking:shouldFakeQuickSpeakAlwaysSpeaking];
    LOBYTE(quickSpeakSupportLoaded) = v5;
  }

  return quickSpeakSupportLoaded;
}

- (CGRect)keyboardFrame
{
  [(CRLAccessibility *)self _keyboardFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isFocusedElementAccessibleDescendantOfElement:(id)element
{
  v9 = 0;
  v4 = [element crlaxValueForKey:@"_accessibleSubviews"];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v9);
  if (v9 == 1)
  {
    abort();
  }

  v7 = v6;
  if (+[CRLAccessibility currentlyFocusedElement]== element)
  {
    return 1;
  }

  else
  {
    return [v7 containsObject:{+[CRLAccessibility currentlyFocusedElement](CRLAccessibility, "currentlyFocusedElement")}];
  }
}

- (void)setFirstElementForUpcomingScreenChange:(id)change
{
  if ([(CRLAccessibility *)self cachedFirstElementForUpcomingScreenChange]!= change)
  {
    [(CRLAccessibility *)self setCachedFirstElementForUpcomingScreenChange:change];
    [(CRLAccessibility *)self setFirstElementForUpcomingScreenChangeResetCount:[(CRLAccessibility *)self firstElementForUpcomingScreenChangeResetCount]+ 1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1004401AC;
    v5[3] = &unk_1018632F0;
    v5[4] = self;
    CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v5, 5.0);
  }
}

- (void)setFirstElementForUpcomingPageTurn:(id)turn
{
  if ([(CRLAccessibility *)self cachedFirstElementForUpcomingPageTurn]!= turn)
  {
    [(CRLAccessibility *)self setCachedFirstElementForUpcomingPageTurn:turn];
    [(CRLAccessibility *)self setFirstElementForUpcomingPageTurnResetCount:[(CRLAccessibility *)self firstElementForUpcomingPageTurnResetCount]+ 1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1004402CC;
    v5[3] = &unk_1018632F0;
    v5[4] = self;
    CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v5, 5.0);
  }
}

- (void)preventFocusingCanvasResponderElementOnScreenChangeForInterval:(double)interval
{
  if (!qword_101A34FA8)
  {
    qword_101A34FA8 = [[CRLAccessibilityTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [qword_101A34FA8 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  [(CRLAccessibility *)self setShouldPreventFocusingCanvasResponderElementOnScreenChange:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100440408;
  v5[3] = &unk_1018632F0;
  v5[4] = self;
  [qword_101A34FA8 afterDelay:v5 processBlock:interval];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10047ECF8;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A35028 != -1)
  {
    dispatch_once(&qword_101A35028, block);
  }

  v2 = qword_101A35020;

  return v2;
}

- (void)dealloc
{
  if ([(CRLAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLAccessibility *)self unloadExtraAccessibilitySupport];
  }

  v3.receiver = self;
  v3.super_class = CRLAccessibility;
  [(CRLAccessibility *)&v3 dealloc];
}

+ (BOOL)isUsingAccessibilityTextSize
{
  v2 = +[UITraitCollection currentTraitCollection];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

+ (BOOL)isFullKeyboardAccessEnabledWithKeyboardAttached
{
  v2 = _AXSFullKeyboardAccessEnabled();
  if (v2)
  {
    LOBYTE(v2) = GSEventIsHardwareKeyboardAttached() != 0;
  }

  return v2;
}

+ (BOOL)isVoiceOverOrSwitchControlEnabled
{
  if (+[CRLAccessibility isVoiceOverEnabled])
  {
    return 1;
  }

  return +[CRLAccessibility isSwitchControlEnabled];
}

+ (BOOL)shouldRemoveMovementAnimations
{
  if (+[CRLAccessibility isVoiceOverEnabled])
  {
    return 1;
  }

  return +[CRLAccessibility isPreferCrossFadeTransitionsEnabled];
}

- (void)performValidation
{
  v2 = qword_101A35030;
  if (!qword_101A35030)
  {
    qword_101A35030 = &off_1018E1ED8;

    v2 = &off_1018E1ED8;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = NSClassFromString(v8);
        if (v9)
        {
          v10 = v9;
          if ([(objc_class *)v9 conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityValidator])
          {
            [(objc_class *)v10 performValidations];
            if ([(objc_class *)v10 conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityValidatorExtras])
            {
              [(objc_class *)v10 performPlatformSpecificValidations];
            }

            continue;
          }

          if (!CRLAccessibilityShouldPerformValidationChecks())
          {
            continue;
          }

          ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
          v17 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"%@ must conform to the CRLAccessibilityValidator protocol", v19, v20, v21, v22, v23, v8);
        }

        else
        {
          if (!CRLAccessibilityShouldPerformValidationChecks())
          {
            continue;
          }

          v11 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
          v17 = __CRLAccessibilityHandleValidationErrorWithDescription(v11, 0, @"Couldn't find validator class %@", v12, v13, v14, v15, v16, v8);
        }

        if (v17)
        {
          abort();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (void)addSafeCategoryNamesToCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy addObject:@"CRLCALayerAccessibility"];
  [collectionCopy addObject:@"CRLFindReplaceControllerAccessibility"];
  [collectionCopy addObject:@"CRLInteractiveCanvasControllerAccessibility"];
  [collectionCopy addObject:@"CRLUndoManagerAccessibility"];
  [collectionCopy addObject:@"CRLAngleGradientFillAccessibility"];
  [collectionCopy addObject:@"CRLAudioRepAccessibility"];
  [collectionCopy addObject:@"CRLBoardItemAccessibility"];
  [collectionCopy addObject:@"CRLMovieItemAccessibility"];
  [collectionCopy addObject:@"CRLBoardItemSelectionAccessibility"];
  [collectionCopy addObject:@"CRLBrushStrokeAccessibility"];
  [collectionCopy addObject:@"CRLCalligraphyStrokeAccessibility"];
  [collectionCopy addObject:@"CRLCanvasAccessibility"];
  [collectionCopy addObject:@"CRLCanvasEditorHelperAccessibility"];
  [collectionCopy addObject:@"CRLCanvasInteractiveCanvasControllerAccessibility"];
  [collectionCopy addObject:@"CRLCanvasKnobAccessibility"];
  [collectionCopy addObject:@"CRLCanvasLayerAccessibility"];
  [collectionCopy addObject:@"CRLCanvasLayoutAccessibility"];
  [collectionCopy addObject:@"CRLCanvasLayoutGeometryAccessibility"];
  [collectionCopy addObject:@"CRLCanvasMovieKnobAccessibility"];
  [collectionCopy addObject:@"CRLCanvasRepAccessibility"];
  [collectionCopy addObject:@"CRLUnknownRepAccessibility"];
  [collectionCopy addObject:@"CRLCanvasKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLCanvasResizeKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLShapeControlKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLShapeConnectionLineKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLConnectionLineKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLShapeLineSegmentKnobTrackerAccessibility"];
  [collectionCopy addObject:@"CRLCanvasViewAccessibility"];
  [collectionCopy addObject:@"CRLColorFillAccessibility"];
  [collectionCopy addObject:@"CRLConnectionLinePathSourceAccessibility"];
  [collectionCopy addObject:@"CRLConnectionLineRepAccessibility"];
  [collectionCopy addObject:@"CRLConnectionLineAbstractLayoutAccessibility"];
  [collectionCopy addObject:@"CRLContainerRepAccessibility"];
  [collectionCopy addObject:@"CRLDropShadowAccessibility"];
  [collectionCopy addObject:@"CRLEditorControllerAccessibility"];
  [collectionCopy addObject:@"CRLFillAccessibility"];
  [collectionCopy addObject:@"CRLFreehandDrawingRepAccessibility"];
  [collectionCopy addObject:@"CRLGradientFillAccessibility"];
  [collectionCopy addObject:@"CRLGradientFillStopAccessibility"];
  [collectionCopy addObject:@"CRLGroupItemAccessibility"];
  [collectionCopy addObject:@"CRLGroupRepAccessibility"];
  [collectionCopy addObject:@"CRLImageFillAccessibility"];
  [collectionCopy addObject:@"CRLImageItemAccessibility"];
  [collectionCopy addObject:@"CRLImageLayoutAccessibility"];
  [collectionCopy addObject:@"CRLImageRepAccessibility"];
  [collectionCopy addObject:@"CRLItemGeometryAccessibility"];
  [collectionCopy addObject:@"CRLKeyboardMovementManipulatorAccessibility"];
  [collectionCopy addObject:@"CRLLineEndAccessibility"];
  [collectionCopy addObject:@"CRLMovieItemAccessibility"];
  [collectionCopy addObject:@"CRLMovieRepAccessibility"];
  [collectionCopy addObject:@"CRLPathSourceAccessibility"];
  [collectionCopy addObject:@"CRLScalarPathSourceAccessibility"];
  [collectionCopy addObject:@"CRLShadowAccessibility"];
  [collectionCopy addObject:@"CRLShapeItemAccessibility"];
  [collectionCopy addObject:@"CRLShapeRepAccessibility"];
  [collectionCopy addObject:@"CRLSmartStrokeAccessibility"];
  [collectionCopy addObject:@"CRLStrokeAccessibility"];
  [collectionCopy addObject:@"CRLStrokePatternAccessibility"];
  [collectionCopy addObject:@"CRLAVPlayerControllerAccessibility"];
  [collectionCopy addObject:@"CRLRulerUnitsAccessibility"];
  [collectionCopy addObject:@"CRLSelectionPathAccessibility"];
  [collectionCopy addObject:@"CRLSubselectionAccessibility"];
  [collectionCopy addObject:@"CRLColumnAccessibility"];
  [collectionCopy addObject:@"CRLHyperlinkFieldAccessibility"];
  [collectionCopy addObject:@"CRLLineSpacingAccessibility"];
  [collectionCopy addObject:@"CRLTabsAccessibility"];
  [collectionCopy addObject:@"CRLTextEditorAccessibility"];
  [collectionCopy addObject:@"CRLTextInteractiveCanvasControllerAccessibility"];
  [collectionCopy addObject:@"CRLTextLayoutAccessibility"];
  [collectionCopy addObject:@"CRLTextRepAccessibility"];
  [collectionCopy addObject:@"CRLWPAttachmentAccessibility"];
  [collectionCopy addObject:@"CRLWPSearchReferenceAccessibility"];
  [collectionCopy addObject:@"CRLWPSelectionAccessibility"];
  [collectionCopy addObject:@"CRLWPShapeItemAccessibility"];
  [collectionCopy addObject:@"CRLWPShapeRepAccessibility"];
  [collectionCopy addObject:@"CRLWPSmartFieldAccessibility"];
  [collectionCopy addObject:@"CRLWPStorageAccessibility"];
  [collectionCopy addObject:@"CRLBezierPathAccessibility"];
  [collectionCopy addObject:@"CRLColorAccessibility"];
}

- (void)loadAccessibilitySupport
{
  if (![(CRLAccessibility *)self accessibilitySupportLoaded])
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      [(CRLAccessibility *)self performValidation];
      if ([(CRLAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras])
      {
        if (objc_opt_respondsToSelector())
        {
          [(CRLAccessibility *)self performExtraValidation];
        }
      }
    }

    v3 = objc_opt_new();
    [(CRLAccessibility *)self addSafeCategoryNamesToCollection:?];
    if ([(CRLAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(CRLAccessibility *)self addExtraSafeCategoryNamesToCollection:v3];
    }

    CRLAccessibilityInstallSafeCategories(v3);
    if ([(CRLAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(CRLAccessibility *)self loadExtraAccessibilitySupport];
    }

    [(CRLAccessibility *)self setAccessibilitySupportLoaded:1];
  }
}

- (id)canvasViewDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Canvas" value:0 table:0];

  return v3;
}

- (id)canvasViewHelp
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Format value:move table:{and resize items within the Canvas", 0, 0}];

  return v3;
}

@end