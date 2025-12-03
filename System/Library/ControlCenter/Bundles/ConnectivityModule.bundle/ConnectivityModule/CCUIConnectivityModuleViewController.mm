@interface CCUIConnectivityModuleViewController
- (BOOL)_isCurrentGridSizeClassImplicitlyExpanded;
- (BOOL)performPrimaryActionForControlTemplateView:(id)view;
- (CCUIConnectivityModuleViewController)initWithContentModuleContext:(id)context;
- (CGSize)_sizeForGridSizeClass:(int64_t)class;
- (NSArray)containerViewsForPlatterTreatment;
- (id)_makeButtonWithClass:(Class)class;
- (id)presentedViewControllerForContentModuleDetailClickPresentationInteractionController:(id)controller;
- (void)_addViewControllers:(id)controllers withSuperview:(id)superview forwardingAppearanceMethods:(BOOL)methods;
- (void)_initializeButtons;
- (void)_initializeCollapsedView;
- (void)_initializeExpandedView;
- (void)_layoutExpandedView;
- (void)_refreshMenuAffordanceVisibilityForExpandedButtonViewController:(id)controller;
- (void)_updateContentRenderingModeForAllViewControllers;
- (void)_updateTelephonyState;
- (void)contentModuleDetailClickPresentationInteractionController:(id)controller requestsAuthenticationForPresentationWithCompletionHandler:(id)handler;
- (void)dataSettingsChanged:(id)changed;
- (void)didTransitionToExpandedContentMode:(BOOL)mode;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setGridSizeClass:(int64_t)class;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CCUIConnectivityModuleViewController

- (CCUIConnectivityModuleViewController)initWithContentModuleContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CCUIConnectivityModuleViewController;
  v6 = [(CCUIConnectivityModuleViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentModuleContext, context);
    v7->_testOverrideGridSizeClass = -1;
  }

  return v7;
}

- (void)loadView
{
  v18 = objc_msgSend_mainScreen(MEMORY[0x29EDC7C40], a2, v2);
  v4 = objc_alloc(MEMORY[0x29EDC0D00]);
  objc_msgSend_bounds(v18, v5, v6);
  v9 = objc_msgSend_initWithFrame_(v4, v7, v8);
  objc_msgSend_setAutoresizingMask_(v9, v10, 18);
  objc_msgSend__setContinuousCornerRadius_(v9, v11, v12, self->_compactContinuousCornerRadius);
  objc_msgSend_setView_(self, v13, v9);
  v14 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  clickPresentationInteractionManagers = self->_clickPresentationInteractionManagers;
  self->_clickPresentationInteractionManagers = v14;

  v16 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  expandedPlatterViews = self->_expandedPlatterViews;
  self->_expandedPlatterViews = v16;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = CCUIConnectivityModuleViewController;
  [(CCUIConnectivityModuleViewController *)&v33 viewDidLoad];
  v3 = dispatch_queue_create("com.apple.control-center.ConnectivityModule.cellular", 0);
  v4 = objc_alloc(MEMORY[0x29EDB9508]);
  v6 = objc_msgSend_initWithQueue_(v4, v5, v3);
  objc_msgSend_setDelegate_(v6, v7, self);
  objc_msgSend_setCoreTelephonyQueue_(self, v8, v3);
  objc_msgSend_setCoreTelephonyClient_(self, v9, v6);
  v12 = objc_msgSend_view(self, v10, v11);
  objc_msgSend_compactContinuousCornerRadius(self, v13, v14);
  v16 = v15;
  v17 = objc_alloc_init(MEMORY[0x29EDC7DA0]);
  objc_msgSend__setContinuousCornerRadius_(v17, v18, v19, v16);
  objc_msgSend_setCollapsedContainerView_(self, v20, v17);
  objc_msgSend_addSubview_(v12, v21, v17);
  v24 = objc_msgSend_contentModuleContext(self, v22, v23);
  objc_msgSend_invalidateContainerViewsForPlatterTreatment(v24, v25, v26);
  v27 = objc_alloc_init(MEMORY[0x29EDC0D00]);
  objc_msgSend_setExpandedContainerView_(self, v28, v27);
  objc_msgSend__initializeButtons(self, v29, v30);
  objc_msgSend__updateTelephonyState(self, v31, v32);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = CCUIConnectivityModuleViewController;
  coordinatorCopy = coordinator;
  [(CCUIConnectivityModuleViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C963EA4;
  v9[3] = &unk_29F3373A8;
  v9[4] = self;
  objc_msgSend_animateAlongsideTransition_completion_(coordinatorCopy, v8, v9, 0);
}

- (void)viewWillLayoutSubviews
{
  v90.receiver = self;
  v90.super_class = CCUIConnectivityModuleViewController;
  [(CCUIConnectivityModuleViewController *)&v90 viewWillLayoutSubviews];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_bounds(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  isExpanded = objc_msgSend__isExpanded(self, v16, v17);
  v21 = objc_msgSend_traitCollection(self, v19, v20);
  objc_msgSend_displayScale(v21, v22, v23);

  v26 = objc_msgSend_collapsedContainerView(self, v24, v25);
  v29 = v26;
  if (isExpanded)
  {
    v30 = 0.0;
    objc_msgSend_setAlpha_(v26, v27, v28, 0.0);
  }

  else
  {
    v30 = 1.0;
    objc_msgSend_setAlpha_(v26, v27, v28, 1.0);
  }

  objc_msgSend_setBounds_(v29, v31, v32, v9, v11, v13, v15);
  objc_msgSend_center(v5, v33, v34);
  objc_msgSend_setCenter_(v29, v35, v36);
  objc_msgSend__sizeForGridSizeClass_(self, v37, 4);
  v39 = v38;
  UIRoundToScale();
  v41 = (v39 - v40 + -28.0) * 0.5;
  UIRoundToScale();
  v43 = v42;
  UISizeRoundToScale();
  v45 = v44;
  v47 = v46;
  UISizeRoundToScale();
  v49 = v48;
  v88 = v50;
  UISizeRoundToScale();
  v52 = v51;
  v87 = v53;
  v56 = objc_msgSend_orderedButtonViewControllers(self, v54, v55);
  if (objc_msgSend_count(v56, v57, v58))
  {
    v61 = 0;
    v86 = v49 + v52;
    v89 = v88 + v87;
    do
    {
      v62 = objc_msgSend_objectAtIndex_(v56, v59, v61);
      if (objc_msgSend_conformsToProtocol_(v62, v63, &unk_2A23F5B50))
      {
        objc_msgSend_buttonViewForCollapsedConnectivityModule(v62, v64, v65);
      }

      else
      {
        objc_msgSend_view(v62, v64, v65);
      }
      v66 = ;
      objc_msgSend_setAlpha_(v66, v67, v68, v30);
      if (v61 <= 2)
      {
        v71 = v43;
        v72 = v43;
        v73 = v41;
        v74 = v41;
        if (!v61)
        {
          goto LABEL_32;
        }

        v71 = v43 + v43 + v41;
        v72 = v43;
        v73 = v41;
        v74 = v41;
        if (v61 == 1)
        {
          goto LABEL_32;
        }

        v71 = v43;
        v72 = v43 + v43 + v41;
        v73 = v41;
        v74 = v41;
        if (v61 == 2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v61 > 4)
        {
          v71 = v52;
          v72 = v89;
          v73 = v45;
          v74 = v47;
          if (v61 != 5)
          {
            if (v61 == 6)
            {
              objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v66, v69, v70, v86, v89, v45, v47);
            }

            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v61 == 3)
        {
          v75 = objc_msgSend_count(v56, v69, v70);
          if (v75 == 4)
          {
            v73 = v41;
          }

          else
          {
            v73 = v45;
          }

          if (v75 == 4)
          {
            v72 = v43 + v43 + v41;
          }

          else
          {
            v72 = v87;
          }

          if (v75 == 4)
          {
            v71 = v43 + v43 + v41;
          }

          else
          {
            v71 = v52;
          }

          if (v75 != 4)
          {
            v74 = v47;
LABEL_32:
            objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v66, v69, v70, v71, v72, v73, v74);
            goto LABEL_33;
          }

          objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v66, v69, v70, v71, v72, v73, v41);
        }

        else
        {
          objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v66, v69, v70, v86, v87, v45, v47);
        }
      }

LABEL_33:
      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v91) < 375.0 && v61 >= 3)
      {
        v77 = objc_opt_class();
        v78 = v62;
        if (v77)
        {
          if (objc_opt_isKindOfClass())
          {
            v79 = v78;
          }

          else
          {
            v79 = 0;
          }
        }

        else
        {
          v79 = 0;
        }

        v80 = v79;

        objc_msgSend_setGlyphScale_(v80, v81, v82, 0.5);
      }

      ++v61;
    }

    while (v61 < objc_msgSend_count(v56, v83, v84));
  }

  objc_msgSend__layoutExpandedView(self, v59, v60);
  objc_msgSend__updateButtonContentMode_(self, v85, isExpanded);
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  if (self->_compactContinuousCornerRadius != radius)
  {
    self->_compactContinuousCornerRadius = radius;
    objc_msgSend_loadViewIfNeeded(self, a2, v3);
    v15 = objc_msgSend_collapsedContainerView(self, v6, v7);
    objc_msgSend__setContinuousCornerRadius_(v15, v8, v9, radius);
    v12 = objc_msgSend_view(self, v10, v11);
    objc_msgSend__setContinuousCornerRadius_(v12, v13, v14, radius);
  }
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  if (self->_contentRenderingMode != mode)
  {
    self->_contentRenderingMode = mode;
    objc_msgSend__updateContentRenderingModeForAllViewControllers(self, a2, mode);
  }
}

- (void)setContentMetrics:(id)metrics
{
  v42 = *MEMORY[0x29EDCA608];
  metricsCopy = metrics;
  contentMetrics = self->_contentMetrics;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentMetrics, metrics);
    objc_msgSend_loadViewIfNeeded(self, v7, v8);
    selfCopy = self;
    v11 = objc_msgSend_orderedButtonViewControllers(self, v9, v10);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v41, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          if (objc_msgSend_conformsToProtocol_(v19, v14, &unk_2A23F5B50))
          {
            v20 = objc_opt_class();
            v21 = v19;
            if (v20)
            {
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }

            v26 = v22;

            objc_msgSend_setContentMetrics_(v26, v27, metricsCopy);
          }

          else
          {
            v23 = objc_opt_class();
            v24 = v19;
            if (v23)
            {
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }

            v28 = v25;

            v26 = objc_msgSend_templateView(v28, v29, v30);
            objc_msgSend_setContentMetrics_(v26, v31, metricsCopy);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v37, v41, 16);
      }

      while (v16);
    }

    v32 = objc_msgSend_view(selfCopy, v14, v15);
    objc_msgSend_setNeedsLayout(v32, v33, v34);
  }

  v35 = *MEMORY[0x29EDCA608];
}

- (void)didTransitionToExpandedContentMode:(BOOL)mode
{
  objc_msgSend_setTransitioning_(self, a2, 0);
  if (!mode)
  {
    v9 = objc_msgSend_expandedContainerView(self, v5, v6);
    objc_msgSend_removeFromSuperview(v9, v7, v8);
  }
}

- (NSArray)containerViewsForPlatterTreatment
{
  v15[1] = *MEMORY[0x29EDCA608];
  isExpanded = objc_msgSend__isExpanded(self, a2, v2);
  isTransitioning = objc_msgSend_isTransitioning(self, v5, v6);
  if ((isExpanded & 1) != 0 || isTransitioning)
  {
    v12 = objc_msgSend_expandedPlatterViews(self, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_collapsedContainerView(self, v8, v9);
    v15[0] = v10;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v11, v15, 1);
  }

  v13 = *MEMORY[0x29EDCA608];

  return v12;
}

- (void)setGridSizeClass:(int64_t)class
{
  if (self->_gridSizeClass != class)
  {
    v11[7] = v3;
    v11[8] = v4;
    self->_gridSizeClass = class;
    if (objc_msgSend__isExpanded(self, a2, class))
    {
      if ((objc_msgSend_isExpandedViewInitialized(self, v6, v7) & 1) == 0)
      {
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 3221225472;
        v11[2] = sub_29C964958;
        v11[3] = &unk_29F337330;
        v11[4] = self;
        objc_msgSend_performWithoutAnimation_(MEMORY[0x29EDC7DA0], v6, v11);
      }
    }

    v8 = objc_msgSend_contentModuleContext(self, v6, v7);
    objc_msgSend_invalidateContainerViewsForPlatterTreatment(v8, v9, v10);
  }
}

- (void)_updateTelephonyState
{
  v18 = objc_msgSend_cellularDataModuleViewController(self, a2, v2);
  objc_msgSend_updateState(v18, v4, v5);
  v8 = objc_msgSend_hotspotButtonViewController(self, v6, v7);
  if (objc_msgSend_isObservingStateChanges(v8, v9, v10))
  {
    objc_msgSend_updateState(v8, v11, v12);
  }

  v13 = objc_msgSend_expandedHotspotButtonViewController(self, v11, v12);
  if (objc_msgSend_isObservingStateChanges(v13, v14, v15))
  {
    objc_msgSend_updateState(v13, v16, v17);
  }
}

- (void)dataSettingsChanged:(id)changed
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C964B5C;
  block[3] = &unk_29F337330;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)_initializeCollapsedView
{
  if ((objc_msgSend_isCollapsedViewInitialized(self, a2, v2) & 1) == 0)
  {
    v48 = objc_msgSend_orderedButtonViewControllers(self, v4, v5);
    v8 = objc_msgSend_collapsedContainerView(self, v6, v7);
    objc_msgSend__addViewControllers_withSuperview_forwardingAppearanceMethods_(self, v9, v48, v8, 0);
    if (objc_msgSend_count(v48, v10, v11))
    {
      v13 = 0;
      do
      {
        v14 = objc_msgSend_objectAtIndex_(v48, v12, v13);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_2A23F5B50))
        {
          v16 = v14;
          v19 = objc_msgSend_buttonViewForCollapsedConnectivityModule(v16, v17, v18);
          v22 = objc_msgSend_accessibilityIdentifier(v16, v20, v21);

          objc_msgSend_setAccessibilityIdentifier_(v19, v23, v22);
          v26 = objc_msgSend_collapsedContainerView(self, v24, v25);
          objc_msgSend_addSubview_(v26, v27, v19);
        }

        v28 = objc_opt_class();
        v29 = v14;
        if (v28)
        {
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        objc_msgSend_setDynamicLayoutEnabled_(v31, v32, 1);
        objc_msgSend_setDynamicLayoutUnbounded_(v31, v33, 1);
        if (v13 >= 3 && objc_msgSend_count(v48, v34, v35) >= 5)
        {
          if (objc_msgSend_conformsToProtocol_(v29, v36, &unk_2A23F5B50))
          {
            v39 = objc_msgSend_buttonViewForCollapsedConnectivityModule(v29, v37, v38);
            objc_msgSend_setUserInteractionEnabled_(v39, v40, 0);
            objc_msgSend_setGlyphScale_(v39, v41, v42, 0.6);
          }

          else
          {
            objc_msgSend_setGlyphScale_(v31, v37, v38, 0.7);
            v39 = objc_msgSend_view(v29, v43, v44);
            objc_msgSend_setUserInteractionEnabled_(v39, v45, 0);
          }
        }

        ++v13;
      }

      while (v13 < objc_msgSend_count(v48, v46, v47));
    }

    objc_msgSend_setCollapsedViewInitialized_(self, v12, 1);
  }
}

- (void)_initializeExpandedView
{
  selfCopy = self;
  if ((objc_msgSend_isExpandedViewInitialized(self, a2, v2) & 1) == 0)
  {
    v101 = objc_msgSend_expandedContainerView(selfCopy, v4, v5);
    v8 = objc_msgSend_contentMetrics(selfCopy, v6, v7);
    v11 = objc_msgSend_contentModuleContext(selfCopy, v9, v10);
    v100 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v14 = objc_msgSend_orderedExpandedButtonViewControllers(selfCopy, v12, v13);
    isCurrentGridSizeClassImplicitlyExpanded = objc_msgSend__isCurrentGridSizeClassImplicitlyExpanded(selfCopy, v15, v16);
    objc_msgSend__addViewControllers_withSuperview_forwardingAppearanceMethods_(selfCopy, v18, v14, v101, isCurrentGridSizeClassImplicitlyExpanded ^ 1u);
    if (objc_msgSend_count(v14, v19, v20))
    {
      v23 = 0;
      v24 = *MEMORY[0x29EDB90E0];
      v25 = *(MEMORY[0x29EDB90E0] + 8);
      v26 = *(MEMORY[0x29EDB90E0] + 16);
      v27 = *(MEMORY[0x29EDB90E0] + 24);
      v98 = v11;
      v99 = v14;
      do
      {
        v28 = objc_msgSend_objectAtIndex_(v14, v21, v23, v98);
        v29 = objc_opt_class();
        v30 = v28;
        if (v29)
        {
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;

        objc_msgSend_loadViewIfNeeded(v32, v33, v34);
        objc_msgSend_setContentModuleContext_(v32, v35, v11);
        objc_msgSend_setDynamicLayoutEnabled_(v32, v36, 1);
        objc_msgSend_setDynamicLayoutUnbounded_(v32, v37, 1);
        if (objc_msgSend_conformsToProtocol_(v30, v38, &unk_2A23F5B50))
        {
          v39 = v30;
          v42 = objc_msgSend_templateViewForExpandedConnectivityModule(v39, v40, v41);
          v45 = objc_msgSend_accessibilityIdentifier(v39, v43, v44);
          objc_msgSend_setAccessibilityIdentifier_(v42, v46, v45);

          if ((objc_msgSend_providesTemplateViewDelegateForExpandedConnectivityModule(v39, v47, v48) & 1) == 0)
          {
            objc_msgSend_setDelegate_(v42, v49, selfCopy);
          }

          if (objc_msgSend_providesTemplateViewContextMenuDelegateForExpandedConnectivityModule(v39, v49, v50))
          {
            objc_msgSend_setContextMenuDelegate_(v42, v51, v39);
          }

          v52 = objc_opt_class();
          v53 = v39;
          if (v52)
          {
            if (objc_opt_isKindOfClass())
            {
              v54 = v53;
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            v54 = 0;
          }

          v69 = v54;

          if (v69)
          {
            if (objc_msgSend_prefersContextMenuDisplayStyle(v69, v70, v71))
            {
              objc_msgSend_setContextMenuDelegate_(v42, v72, v53);
            }

            else
            {
              v73 = objc_alloc(MEMORY[0x29EDC0CB8]);
              v75 = objc_msgSend_initWithPresentingViewController_delegate_(v73, v74, selfCopy, selfCopy);
              objc_msgSend_setViewForInteraction_(v75, v76, v42);
              objc_msgSend_clickPresentationInteractionManagers(selfCopy, v77, v78);
              v79 = selfCopy;
              v81 = v80 = v8;
              objc_msgSend_addObject_(v81, v82, v75);

              v8 = v80;
              selfCopy = v79;
              v11 = v98;
            }
          }
        }

        else
        {
          v55 = objc_alloc(MEMORY[0x29EDC0CD0]);
          v42 = objc_msgSend_initWithFrame_(v55, v56, v57, v24, v25, v26, v27);
          v60 = objc_msgSend_identifier(v32, v58, v59);
          objc_msgSend_setAccessibilityIdentifier_(v42, v61, v60);

          v53 = objc_msgSend_view(v32, v62, v63);
          objc_msgSend_setCustomGlyphView_(v42, v64, v53);
          objc_msgSend_setDelegate_(v42, v65, v32);
          objc_msgSend_setContextMenuDelegate_(v42, v66, v32);
          objc_msgSend_setMenuModuleDelegate_(v42, v67, v32);
          objc_msgSend_setTemplateView_(v32, v68, v42);
        }

        v85 = objc_msgSend__blankMaterialView(MEMORY[0x29EDC0CC8], v83, v84);
        objc_msgSend_setBackgroundView_(v42, v86, v85);

        objc_msgSend_setContentMetrics_(v42, v87, v8);
        objc_msgSend_addObject_(v100, v88, v42);
        objc_msgSend_addSubview_(v101, v89, v42);
        objc_msgSend__refreshMenuAffordanceVisibilityForExpandedButtonViewController_(selfCopy, v90, v30);

        ++v23;
        v14 = v99;
      }

      while (v23 < objc_msgSend_count(v99, v91, v92));
    }

    v93 = objc_msgSend_expandedPlatterViews(selfCopy, v21, v22);
    objc_msgSend_addObjectsFromArray_(v93, v94, v100);
    objc_msgSend_invalidateContainerViewsForPlatterTreatment(v11, v95, v96);
    objc_msgSend_setExpandedViewInitialized_(selfCopy, v97, 1);
  }
}

- (void)_layoutExpandedView
{
  if (objc_msgSend_isExpandedViewInitialized(self, a2, v2))
  {
    isExpanded = objc_msgSend__isExpanded(self, v4, v5);
    v86 = objc_msgSend_contentMetrics(self, v7, v8);
    objc_msgSend_gridGeometryInfo(v86, v9, v10);
    v12 = v11;
    v14 = v13;
    v17 = objc_msgSend_gridSizeClass(self, v15, v16) == 10;
    v20 = objc_msgSend_currentDevice(MEMORY[0x29EDC7A58], v18, v19);
    v23 = objc_msgSend_userInterfaceIdiom(v20, v21, v22);

    if ((v23 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v26 = objc_msgSend_view(self, v24, v25);
      objc_msgSend_bounds(v26, v27, v28);
      v17 = v29 > v30;
    }

    if (v17)
    {
      objc_msgSend__sizeForGridSizeClass_(self, v24, 10);
    }

    else
    {
      objc_msgSend__sizeForGridSizeClass_(self, v24, 9);
    }

    v35 = v33;
    v36 = v34;
    v83 = objc_msgSend_expandedContainerView(self, v31, v32);
    v84 = v35;
    objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v83, v37, v38, 0.0, 0.0, v35, v36);
    v39 = MEMORY[0x29ED4DA80](3, v12, v14);
    v40 = MEMORY[0x29ED4DA80](4, v12, v14);
    v43 = objc_msgSend_orderedExpandedButtonViewControllers(self, v41, v42);
    if (objc_msgSend_count(v43, v44, v45))
    {
      v47 = 0;
      if (isExpanded)
      {
        v48 = 1.0;
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v35 * 0.5 - v14 * 0.5;
      v85 = v14 + v12 * 2.0;
      v50 = v14 * 0.5 + v35 * 0.5;
      do
      {
        v51 = objc_msgSend_objectAtIndex_(v43, v46, v47);
        v52 = objc_opt_class();
        v53 = v51;
        if (v52)
        {
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        v55 = v54;

        v60 = objc_msgSend_templateView(v55, v56, v57);
        if (!v60)
        {
          v60 = objc_msgSend_templateViewForExpandedConnectivityModule(v53, v58, v59);
        }

        objc_msgSend_setAlpha_(v60, v58, v59, v48);
        v62 = v47 - 5 < 0xFFFFFFFFFFFFFFFCLL || v17;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 4;
        }

        if (v62)
        {
          v64 = v39;
        }

        else
        {
          v64 = v40;
        }

        objc_msgSend_setGridSizeClass_(v60, v61, v63);
        objc_msgSend_setContinuousCornerRadius_(v60, v65, v66, v64);
        if (v17)
        {
          v69 = v14 * v47 + v12 * v47;
          if (v47 > 3)
          {
            v69 = v14 * (v47 - 4) + v12 * (v47 - 4);
          }

          v70 = 0.0;
          if (v47 > 3)
          {
            v70 = v50;
          }

          objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v60, v67, v68, v70, v69, v49, v12);
          goto LABEL_37;
        }

        if (v47 - 5 > 0xFFFFFFFFFFFFFFFBLL)
        {
          if (v47 > 2)
          {
            v75 = v14 + v12 * 2.0;
            v76 = v49;
            v73 = v14 * 3.0 + v12 * 3.0;
            v74 = v50;
            if (v47 == 3)
            {
              objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v60, v67, v68, 0.0, v14 * 3.0 + v12 * 3.0, v49, v85);
              goto LABEL_37;
            }
          }

          else
          {
            v75 = v14 + v12 * 2.0;
            v76 = v49;
            v73 = v12 + v14;
            v74 = 0.0;
            if (v47 != 1)
            {
              objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v60, v67, v68, v50, v12 + v14, v49, v85);
              goto LABEL_37;
            }
          }
        }

        else
        {
          v73 = v14 * v47 + v12 * v47;
          v74 = 0.0;
          v75 = v12;
          v76 = v84;
        }

        objc_msgSend_sbf_setBoundsAndPositionFromFrame_(v60, v67, v68, v74, v73, v76, v75);
LABEL_37:
        if (v86)
        {
          objc_msgSend_symbolScaleFactor(v86, v71, v72);
          v78 = v77;
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v88) >= 375.0)
          {
            objc_msgSend_setGlyphScale_(v55, v79, v80, v78);
          }

          else
          {
            objc_msgSend_setGlyphScale_(v55, v79, v80, v78 * 0.8);
          }
        }

        objc_msgSend__refreshMenuAffordanceVisibilityForExpandedButtonViewController_(self, v71, v53);

        ++v47;
      }

      while (v47 < objc_msgSend_count(v43, v81, v82));
    }
  }
}

- (void)_updateContentRenderingModeForAllViewControllers
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_contentRenderingMode(self, a2, v2);
  v7 = objc_msgSend_orderedButtonViewControllers(self, v5, v6);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v10, &unk_2A23F5B50))
        {
          v15 = objc_opt_class();
          v16 = v14;
          if (v15)
          {
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          objc_msgSend_setContentRenderingMode_(v18, v19, v4);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
    }

    while (v11);
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (void)_refreshMenuAffordanceVisibilityForExpandedButtonViewController:(id)controller
{
  controllerCopy = controller;
  v7 = objc_msgSend_wifiModuleViewController(self, v5, v6);

  v10 = objc_msgSend_cellularDataModuleViewController(self, v8, v9);

  v13 = objc_msgSend_bluetoothModuleViewController(self, v11, v12);

  v16 = objc_msgSend_airDropModuleViewController(self, v14, v15);

  v19 = objc_msgSend_satelliteModuleViewController(self, v17, v18);

  v20 = objc_opt_class();
  v32 = controllerCopy;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v32;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    objc_msgSend_templateView(v22, v23, v24);
  }

  else
  {
    objc_msgSend_templateViewForExpandedConnectivityModule(v32, v23, v24);
  }
  v27 = ;
  v28 = 1;
  if (v7 == controllerCopy || v13 == controllerCopy)
  {
    goto LABEL_15;
  }

  if (v16 != controllerCopy && v10 != controllerCopy && v19 != controllerCopy)
  {
    v29 = objc_msgSend_contextMenuItems(v22, v25, v26);
    v28 = objc_msgSend_count(v29, v30, v31) != 0;

LABEL_15:
    objc_msgSend_setShowsMenuAffordance_(v27, v25, v28);
  }
}

- (id)_makeButtonWithClass:(Class)class
{
  if (objc_msgSend_isSupported(class, a2, class))
  {
    v4 = objc_alloc_init(class);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initializeButtons
{
  v56 = objc_msgSend_contentModuleContext(self, a2, v2);
  v4 = objc_alloc_init(MEMORY[0x29EDC0C38]);
  objc_msgSend_setAirDropModuleViewController_(self, v5, v4);
  v6 = objc_alloc(MEMORY[0x29EDC0C40]);
  v53 = objc_msgSend_initWithContentModuleContext_(v6, v7, v56);
  objc_msgSend_setBluetoothModuleViewController_(self, v8, v53);
  v9 = objc_alloc(MEMORY[0x29EDC0C48]);
  v11 = objc_msgSend_initWithContentModuleContext_(v9, v10, v56);
  objc_msgSend_setCellularDataModuleViewController_(self, v12, v11);
  v55 = objc_alloc_init(MEMORY[0x29EDC0C60]);
  objc_msgSend_setSatelliteModuleViewController_(self, v13, v55);
  v14 = objc_alloc_init(MEMORY[0x29EDC0C68]);
  objc_msgSend_setVpnModuleViewController_(self, v15, v14);
  v16 = objc_alloc(MEMORY[0x29EDC0C70]);
  v18 = objc_msgSend_initWithContentModuleContext_(v16, v17, v56);
  objc_msgSend_setWifiModuleViewController_(self, v19, v18);
  v20 = objc_opt_class();
  v22 = objc_msgSend__makeButtonWithClass_(self, v21, v20);
  v23 = objc_opt_class();
  v25 = objc_msgSend__makeButtonWithClass_(self, v24, v23);
  objc_msgSend_setAirplaneButtonViewController_(self, v26, v22);
  objc_msgSend_setHotspotButtonViewController_(self, v27, v25);
  v28 = objc_opt_class();
  v30 = objc_msgSend__makeButtonWithClass_(self, v29, v28);
  v31 = objc_opt_class();
  v33 = objc_msgSend__makeButtonWithClass_(self, v32, v31);
  objc_msgSend_setExpandedAirplaneButtonViewController_(self, v34, v30);
  objc_msgSend_setExpandedHotspotButtonViewController_(self, v35, v33);
  v36 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v54 = v22;
  objc_msgSend_addObject_(v36, v37, v22);
  objc_msgSend_addObject_(v36, v38, v4);
  objc_msgSend_addObject_(v36, v39, v18);
  objc_msgSend_addObject_(v36, v40, v11);
  objc_msgSend_addObject_(v36, v41, v53);
  if (v25)
  {
    objc_msgSend_addObject_(v36, v42, v25);
  }

  if (v14)
  {
    objc_msgSend_addObject_(v36, v42, v14);
  }

  v43 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_msgSend_addObject_(v43, v44, v30);
  objc_msgSend_addObject_(v43, v45, v18);
  objc_msgSend_addObject_(v43, v46, v4);
  objc_msgSend_addObject_(v43, v47, v11);
  objc_msgSend_addObject_(v43, v48, v53);
  if (v33)
  {
    objc_msgSend_addObject_(v43, v49, v33);
  }

  if (v14)
  {
    objc_msgSend_addObject_(v43, v49, v14);
  }

  if (v55)
  {
    objc_msgSend_addObject_(v43, v49, v55);
  }

  objc_msgSend_setOrderedButtonViewControllers_(self, v49, v36);
  objc_msgSend_setOrderedExpandedButtonViewControllers_(self, v50, v43);
  if (!v11)
  {
    objc_msgSend_setWifiOnlySKU_(self, v51, 1);
  }

  objc_msgSend__updateContentRenderingModeForAllViewControllers(self, v51, v52);
}

- (void)_addViewControllers:(id)controllers withSuperview:(id)superview forwardingAppearanceMethods:(BOOL)methods
{
  methodsCopy = methods;
  v30 = *MEMORY[0x29EDCA608];
  controllersCopy = controllers;
  superviewCopy = superview;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllersCopy, v10, &v25, v29, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v16, v12, &unk_2A23F5B50))
        {
          objc_msgSend_loadViewIfNeeded(v16, v17, v18);
          objc_msgSend_ccui_safelyBeginAppearanceTransition_animated_(v16, v19, 1, 0);
          objc_msgSend_ccui_safelyEndAppearanceTransition(v16, v20, v21);
        }

        else
        {
          objc_msgSend_bs_addChildViewController_withSuperview_(self, v17, v16, superviewCopy);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllersCopy, v12, &v25, v29, 16);
    }

    while (v13);
  }

  if (methodsCopy)
  {
    objc_msgSend_ccui_safelyBeginAppearanceTransitionForChildViewControllers_animated_(self, v12, 1, 0);
    objc_msgSend_ccui_safelyEndAppearanceTransitionForChildViewControllers(self, v22, v23);
  }

  v24 = *MEMORY[0x29EDCA608];
}

- (BOOL)_isCurrentGridSizeClassImplicitlyExpanded
{
  v4 = objc_msgSend_testOverrideGridSizeClass(self, a2, v2);
  if (v4 < 0)
  {
    LOBYTE(v4) = objc_msgSend_gridSizeClass(self, v5, v6);
  }

  return (objc_msgSend_implicitlyExpandedGridSizeClasses(self, v5, v6) & (1 << v4)) != 0;
}

- (CGSize)_sizeForGridSizeClass:(int64_t)class
{
  v3 = objc_msgSend_contentMetrics(self, a2, class);
  objc_msgSend_gridGeometryInfo(v3, v4, v5);
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)presentedViewControllerForContentModuleDetailClickPresentationInteractionController:(id)controller
{
  v41 = *MEMORY[0x29EDCA608];
  self->_presentingMenuViewController = 1;
  v4 = objc_msgSend_viewForInteraction(controller, a2, controller);
  objc_msgSend_orderedExpandedButtonViewControllers(self, v5, v6);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v39 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v36, v40, 16);
  if (v10)
  {
    v11 = *v37;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v13, v9, &unk_2A23F5B50, v36))
        {
          v14 = v13;
          v17 = objc_msgSend_templateViewForExpandedConnectivityModule(v14, v15, v16);
          v18 = v17;
          if (v4 == v17)
          {
            v10 = objc_opt_class();

            goto LABEL_13;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v36, v40, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v19 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v10, v20, v19))
  {
    v23 = objc_msgSend_contentModuleContext(self, v21, v22);
    v24 = [v10 alloc];
    v26 = objc_msgSend_initWithContentModuleContext_(v24, v25, v23);
    objc_msgSend_setModalPresentationStyle_(v26, v27, 4);
    objc_msgSend_setAlwaysExpanded_(v26, v28, 1);
    objc_msgSend_setShouldProvideOwnPlatter_(v26, v29, 1);
    v32 = objc_msgSend_contentMetrics(self, v30, v31);
    objc_msgSend_setContentMetrics_(v26, v33, v32);
  }

  else
  {
    v26 = 0;
  }

  v34 = *MEMORY[0x29EDCA608];

  return v26;
}

- (void)contentModuleDetailClickPresentationInteractionController:(id)controller requestsAuthenticationForPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = objc_msgSend_contentModuleContext(self, v5, v6);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = sub_29C9663B8;
    v10[3] = &unk_29F3373D0;
    v11 = handlerCopy;
    objc_msgSend_requestAuthenticationWithCompletionHandler_(v8, v9, v10);
  }
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)view
{
  v27 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  objc_msgSend_clickPresentationInteractionManagers(self, v5, v6);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v25 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = objc_msgSend_viewForInteraction(v15, v10, v11, v22);
        v19 = v16;
        if (v16 == viewCopy)
        {
          objc_msgSend_presentViewController(v15, v17, v18);

          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v20 = *MEMORY[0x29EDCA608];
  return 1;
}

@end