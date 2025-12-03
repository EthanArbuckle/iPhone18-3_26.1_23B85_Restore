@interface ICDocCamExtractedDocumentAnimationController
- (ICDocCamExtractedDocumentAnimationController)initWithPresentedController:(id)controller presentingController:(id)presentingController thumbnailView:(id)view duration:(double)duration isPresenting:(BOOL)presenting;
- (id)imageWithColor:(id)color;
- (void)animateDismissalTransition:(id)transition;
- (void)animatePresentationOrDismissalTransition:(id)transition;
- (void)animateTransition:(id)transition;
@end

@implementation ICDocCamExtractedDocumentAnimationController

- (ICDocCamExtractedDocumentAnimationController)initWithPresentedController:(id)controller presentingController:(id)presentingController thumbnailView:(id)view duration:(double)duration isPresenting:(BOOL)presenting
{
  presentingCopy = presenting;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = ICDocCamExtractedDocumentAnimationController;
  v11 = [(ICDocCamExtractedDocumentAnimationController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ICDocCamExtractedDocumentAnimationController *)v11 setDuration:duration];
    [(ICDocCamExtractedDocumentAnimationController *)v12 setIsPresenting:presentingCopy];
    [(ICDocCamExtractedDocumentAnimationController *)v12 setThumbnailView:viewCopy];
  }

  return v12;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v5 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  if ([(ICDocCamExtractedDocumentAnimationController *)self isPresenting])
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  view = [v7 view];
  objc_opt_class();
  v9 = ICDynamicCast();
  topViewController = [v9 topViewController];
  view2 = [topViewController view];

  if ([(ICDocCamExtractedDocumentAnimationController *)self isPresenting])
  {
    containerView = [transitionCopy containerView];
    [containerView addSubview:view];
  }

  [transitionCopy finalFrameForViewController:v7];
  [view setFrame:?];
  [view setNeedsDisplay];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  [view2 setNeedsDisplay];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(ICDocCamExtractedDocumentAnimationController *)self animatePresentationOrDismissalTransition:transitionCopy];
}

- (void)animatePresentationOrDismissalTransition:(id)transition
{
  transitionCopy = transition;
  v5 = +[ICQuickNoteSessionManager sharedManager];
  isSecureScreenShowing = [v5 isSecureScreenShowing];

  v6 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  objc_opt_class();
  v610 = ICDynamicCast();
  objc_opt_class();
  v609 = ICDynamicCast();
  selfCopy = self;
  LODWORD(v5) = [(ICDocCamExtractedDocumentAnimationController *)self isPresenting];
  objc_opt_class();
  if (v5)
  {
    v8 = ICDynamicCast();
    objc_opt_class();
    v630 = v8;
    viewControllers = [v8 viewControllers];
    v10 = [viewControllers objectAtIndexedSubscript:0];
    v11 = ICDynamicCast();
  }

  else
  {
    v12 = ICDynamicCast();
    objc_opt_class();
    v630 = v12;
    viewControllers2 = [v12 viewControllers];
    v14 = [viewControllers2 objectAtIndexedSubscript:0];
    v11 = ICDynamicCast();

    if (![v11 documentCount])
    {
      [(ICDocCamExtractedDocumentAnimationController *)selfCopy animateDismissalTransition:transitionCopy];
      goto LABEL_327;
    }
  }

  if (isSecureScreenShowing)
  {
    v15 = +[ICQuickNoteSessionManager sharedManager];
    noteEditorViewController = [v15 noteEditorViewController];

    noteEditorViewController2 = noteEditorViewController;
    navigationController = [noteEditorViewController navigationController];
    v17 = 0;
    ic_isViewVisible2 = 0;
    v585 = 0;
    ic_isViewVisible = 0;
    v581 = 0;
    v615 = 0;
    ic_viewControllerManager4 = 0;
LABEL_18:
    v627 = 1;
    goto LABEL_19;
  }

  isPresenting = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
  objc_opt_class();
  if (isPresenting)
  {
    v19 = ICDynamicCast();
    objc_opt_class();
    topViewController = [v610 topViewController];
    v21 = ICDynamicCast();

    v22 = v21;
    if (v19 | v21)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v23 = v6;
  }

  else
  {
    v19 = ICDynamicCast();
    objc_opt_class();
    topViewController2 = [v609 topViewController];
    v25 = ICDynamicCast();

    v22 = v25;
    if (v19 | v25)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v23 = v7;
  }

  presentingViewController = [v23 presentingViewController];
  v19 = ICDynamicCast();

LABEL_12:
  v27 = v19;
  if (v19)
  {
    ic_viewControllerManager = [v19 ic_viewControllerManager];
    LODWORD(v19) = [ic_viewControllerManager noteContainerViewMode] == 1;
  }

  if (v22)
  {
    ic_viewControllerManager2 = [v22 ic_viewControllerManager];
    LODWORD(v19) = [ic_viewControllerManager2 noteContainerViewMode] == 1;
  }

  v585 = v19;
  v581 = v22;
  if (v27)
  {
    ic_viewControllerManager3 = [v27 ic_viewControllerManager];
    noteEditorViewController2 = [ic_viewControllerManager3 noteEditorViewController];
    navigationController = [noteEditorViewController2 navigationController];
    currentNoteBrowseViewController = [ic_viewControllerManager3 currentNoteBrowseViewController];
    ic_isViewVisible = [currentNoteBrowseViewController ic_isViewVisible];

    ic_viewControllerManager4 = ic_viewControllerManager3;
    folderListViewController = [ic_viewControllerManager3 folderListViewController];
    ic_isViewVisible2 = [folderListViewController ic_isViewVisible];

    v615 = v27;
    v17 = [v27 displayMode] == 4;
    goto LABEL_18;
  }

  ic_viewControllerManager4 = [v22 ic_viewControllerManager];
  v627 = 0;
  v17 = 0;
  ic_isViewVisible2 = 0;
  ic_isViewVisible = 0;
  navigationController = 0;
  noteEditorViewController2 = 0;
  v615 = 0;
LABEL_19:
  v33 = objc_alloc_init(NSMutableArray);
  v34 = objc_alloc_init(NSMutableArray);
  v628 = objc_alloc_init(NSMutableArray);
  v620 = objc_alloc_init(NSMutableArray);
  isPresenting2 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
  v36 = isPresenting2 == 0;
  if (isPresenting2)
  {
    v37 = v7;
  }

  else
  {
    v37 = v6;
  }

  v629 = v34;
  if (v36)
  {
    v38 = v34;
  }

  else
  {
    v38 = v33;
  }

  view = [v37 view];
  [v38 addObject:view];

  indexPathForCurrentDocument = [v11 indexPathForCurrentDocument];
  v611 = [v11 croppedAndFilteredmageForDocumentAtIndex:{objc_msgSend(indexPathForCurrentDocument, "item")}];
  v580 = indexPathForCurrentDocument;
  if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
  {
    [v11 zoomTargetForIndexPath:indexPathForCurrentDocument];
  }

  else
  {
    [v11 imageRectWithZoomAndPanForIndexPath:indexPathForCurrentDocument];
  }

  v594 = v42;
  v595 = v41;
  v606 = v44;
  v607 = v43;
  ic_windowScene = [noteEditorViewController2 ic_windowScene];
  statusBarManager = [ic_windowScene statusBarManager];

  v626 = transitionCopy;
  v582 = v7;
  v583 = v6;
  v613 = v11;
  v614 = v33;
  x = CGPointZero.x;
  y = CGPointZero.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v545 = CGRectNull.origin.x;
  v547 = CGRectNull.origin.y;
  if (v627)
  {
    objc_opt_class();
    thumbnailView = [(ICDocCamExtractedDocumentAnimationController *)selfCopy thumbnailView];
    v47 = ICDynamicCast();

    objc_opt_class();
    superview = [v47 superview];
    v49 = ICDynamicCast();

    [v49 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    view2 = [v615 view];
    v529 = v49;
    [v49 convertRect:view2 toView:{v51, v53, v55, v57}];
    v616 = v59;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    thumbnailView2 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy thumbnailView];
    [thumbnailView2 bounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v530 = v47;
    imageView = [v47 imageView];
    thumbnailView3 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy thumbnailView];
    view3 = [v615 view];
    [thumbnailView3 convertRect:view3 toView:{v68, v70, v72, v74}];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    [v611 size];
    v86 = v85;
    [v611 size];
    v88 = v86 / v87;
    v89 = v82 / v84;
    v572 = v88;
    v90 = v88 > ICGalleryAttachmentMaxAspectRatio || v88 < ICGalleryAttachmentMinAspectRatio;
    v618 = v80;
    v584 = v84;
    v590 = v78;
    v591 = v82;
    v540 = v90;
    if (+[NSParagraphStyle ic_isRTL])
    {
      v602 = v84;
      v603 = v82;
      v599 = v78;
      if (v90)
      {
        if (v89 > 1.0)
        {
          v602 = v84;
          v603 = v84 * v572;
          v599 = v78 + v82 - v84 * v572;
        }

        else
        {
          v599 = v78;
          v602 = v82 / v572;
          v603 = v82;
        }
      }

      v685.origin.x = v616;
      v685.origin.y = v61;
      v685.size.width = v63;
      v685.size.height = v65;
      v695.origin.x = v78;
      v695.origin.y = v80;
      v695.size.width = v82;
      v695.size.height = v84;
      if (CGRectIntersectsRect(v685, v695))
      {
        v686.origin.x = v616;
        v686.origin.y = v61;
        v686.size.width = v63;
        v686.size.height = v65;
        v696.origin.x = v78;
        v696.origin.y = v80;
        v696.size.width = v82;
        v696.size.height = v84;
        v687 = CGRectIntersection(v686, v696);
        v94 = v687.origin.x;
        v95 = v687.size.width;
        v96 = v687.size.height;
        isPresenting3 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
        if (isPresenting3)
        {
          v98 = y;
        }

        else
        {
          v98 = 0.0;
        }

        v544 = v98;
        if (isPresenting3)
        {
          v99 = CGPointZero.x;
        }

        else
        {
          v99 = v94 - v599;
        }

        if (isPresenting3)
        {
          v100 = 0.0;
        }

        else
        {
          v100 = y;
        }

        if (isPresenting3)
        {
          v101 = v94 - v599;
        }

        else
        {
          v101 = CGPointZero.x;
        }

        if (isPresenting3)
        {
          v102 = v606;
        }

        else
        {
          v102 = v96;
        }

        v542 = v102;
        v543 = v99;
        if (isPresenting3)
        {
          v103 = v607;
        }

        else
        {
          v103 = v95;
        }

        v541 = v103;
        if (isPresenting3)
        {
          v104 = v96;
        }

        else
        {
          v104 = v606;
        }

        if (isPresenting3)
        {
          v105 = v95;
        }

        else
        {
          v105 = v607;
        }

        v106 = +[CALayer layer];
        [v106 setAnchorPoint:{0.0, 0.0}];
        [v106 setMasksToBounds:1];
        v617 = v106;
        if (v90)
        {
          v557 = v105;
          v107 = [UIImage imageNamed:@"gallery_fade_gradient"];
          v108 = v572;
          v569 = v100;
          if (v572 > 1.0)
          {
            v572 = [UIImage ic_orientedImageFromImage:v107 toOrientation:3, v572];

            v107 = v572;
          }

          v33 = v614;
          v110 = +[CALayer layer];
          [v110 setAnchorPoint:{0.0, 0.0}];
          [v110 setContents:{objc_msgSend(v107, "ic_CGImage")}];
          v111 = +[CALayer layer];
          [v111 setAnchorPoint:{0.0, 0.0}];
          v112 = +[UIColor whiteColor];
          [v111 setBackgroundColor:{objc_msgSend(v112, "CGColor")}];

          v597 = v111;
          [v617 addSublayer:v111];
          r1 = v110;
          [v617 addSublayer:v110];
          v113 = v96 * 0.1;
          if (v572 > 1.0)
          {
            v113 = v591 * 0.055;
          }

          v114 = round(v113);
          v566 = v104;
          if (v572 > 1.0)
          {
            v549 = v101;
            v143 = v628;
            if (v94 == v590 && v95 < v591)
            {
              v182 = 0.0;
              v183 = v114 + 0.0;
              v184 = v114;
              v185 = v584;
            }

            else
            {
              v187 = v95 < v591;
              v188 = v94 > v590;
              v182 = v95 - v591;
              v183 = v95 - v591 + v114;
              if (v188 && v187)
              {
                v184 = v95 - v591 + v114;
              }

              else
              {
                v184 = v114;
              }

              v185 = v584;
              if (!v188 || !v187)
              {
                v185 = v96;
              }
            }

            v574 = v185;
            v80 = v618;
            v189 = v95 - v184;
            isPresenting4 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
            v191 = v544;
            if (!isPresenting4)
            {
              v191 = 0.0;
            }

            v560 = v191;
            if (isPresenting4)
            {
              v192 = v543;
            }

            else
            {
              v192 = v183;
            }

            if (isPresenting4)
            {
              v193 = v542;
            }

            else
            {
              v193 = v96;
            }

            height = v193;
            v553 = v192;
            v194 = v541;
            if (!isPresenting4)
            {
              v194 = v189;
            }

            width = v194;
            if (isPresenting4)
            {
              v130 = 0.0;
            }

            else
            {
              v130 = y;
            }

            if (isPresenting4)
            {
              v135 = v183;
            }

            else
            {
              v135 = CGPointZero.x;
            }

            v136 = v105;
            if (isPresenting4)
            {
              v195 = y;
            }

            else
            {
              v195 = 0.0;
            }

            if (isPresenting4)
            {
              v196 = CGPointZero.x;
            }

            else
            {
              v196 = v182;
            }

            v534 = v196;
            v535 = v195;
            if (isPresenting4)
            {
              v197 = 0.0;
            }

            else
            {
              v197 = v114;
            }

            v536 = v197;
            if (isPresenting4)
            {
              v198 = v542;
            }

            else
            {
              v198 = v574;
            }

            if (isPresenting4)
            {
              v120 = v182;
            }

            else
            {
              v120 = CGPointZero.x;
            }

            v532 = v198;
            v533 = 0.0;
            if (!isPresenting4)
            {
              v114 = 0.0;
            }

            v531 = 0.0;
            v126 = v130;
            v141 = v549;
          }

          else
          {
            TSDRectGetMaxPoint();
            TSDRectWithPoints();
            v577 = v115;
            v117 = v116;
            v119 = v118;
            v120 = v101;
            v122 = v121;
            TSDRectWithPoints();
            v124 = v123;
            v126 = v125;
            v114 = v127;
            v579 = v128;
            isPresenting5 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
            v130 = v569;
            v131 = v544;
            if (!isPresenting5)
            {
              v131 = v117;
            }

            v560 = v131;
            if (isPresenting5)
            {
              v132 = v543;
            }

            else
            {
              v132 = v577;
            }

            if (isPresenting5)
            {
              v133 = v542;
            }

            else
            {
              v133 = v122;
            }

            height = v133;
            v553 = v132;
            if (isPresenting5)
            {
              v134 = v541;
            }

            else
            {
              v134 = v119;
            }

            width = v134;
            if (isPresenting5)
            {
              v130 = v117;
              v135 = v577;
            }

            else
            {
              v135 = v120;
            }

            v136 = v557;
            if (isPresenting5)
            {
              v137 = v542;
            }

            else
            {
              v137 = v126;
            }

            if (isPresenting5)
            {
              v138 = 0.0;
            }

            else
            {
              v138 = v124;
            }

            v534 = v138;
            v535 = v137;
            v531 = 0.0;
            if (isPresenting5)
            {
              v139 = v541;
            }

            else
            {
              v139 = v114;
            }

            v536 = v139;
            if (isPresenting5)
            {
              v140 = 0.0;
            }

            else
            {
              v140 = v579;
            }

            v532 = v140;
            v533 = 0.0;
            if (!isPresenting5)
            {
              v126 = v569 + v104;
            }

            v141 = v120;
            if (isPresenting5)
            {
              v120 = v124;
              v142 = v579;
            }

            else
            {
              v114 = v557;
              v142 = 0.0;
            }

            v574 = v142;
            v143 = v628;
            v80 = v618;
          }

          [v597 setPosition:{v135, v130}];
          v547 = 0.0;
          [v597 setBounds:?];
          [v110 setPosition:{v120, v126}];
          [v110 setBounds:{0.0, 0.0, v114, v574}];
          [v617 setPosition:{v141, v569}];
          [v617 setBounds:{0.0, 0.0, v136, v566}];
          x = v553;
          y = v560;
          v545 = 0.0;
          goto LABEL_199;
        }

        v180 = +[UIColor blackColor];
        v107 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy imageWithColor:v180];

        [v106 setContents:{objc_msgSend(v107, "CGImage")}];
        [v106 setBounds:{0.0, 0.0, v105, v104}];
        [v106 setPosition:{v101, v100}];
        v597 = 0;
        r1 = 0;
        v534 = CGPointZero.x;
        v535 = y;
        v536 = width;
        v531 = v547;
        v532 = height;
        v533 = CGRectNull.origin.x;
        goto LABEL_144;
      }

      v597 = 0;
      r1 = 0;
      v617 = 0;
      v534 = CGPointZero.x;
      v535 = y;
      v531 = v547;
      v532 = height;
      v533 = CGRectNull.origin.x;
      v543 = CGPointZero.x;
      v544 = y;
      v541 = width;
      v542 = height;
      v538 = v547;
      v536 = width;
      v537 = CGRectNull.origin.x;
LABEL_141:
      v143 = v628;
      goto LABEL_200;
    }

    v602 = v84;
    v603 = v82;
    if (v90)
    {
      if (v89 > 1.0)
      {
        v602 = v84;
        v603 = v84 * v572;
      }

      else
      {
        v602 = v82 / v572;
        v603 = v82;
      }
    }

    v688.origin.x = v616;
    v688.origin.y = v61;
    v688.size.width = v63;
    v688.size.height = v65;
    v697.origin.x = v78;
    v697.origin.y = v80;
    v697.size.width = v82;
    v697.size.height = v84;
    if (!CGRectIntersectsRect(v688, v697))
    {
      v597 = 0;
      r1 = 0;
      v617 = 0;
      v534 = CGPointZero.x;
      v535 = y;
      v531 = v547;
      v532 = height;
      v533 = CGRectNull.origin.x;
      v543 = CGPointZero.x;
      v544 = y;
      v541 = width;
      v542 = height;
      v538 = v547;
      v536 = width;
      v537 = CGRectNull.origin.x;
      v599 = v78;
      goto LABEL_141;
    }

    v689.origin.x = v616;
    v689.origin.y = v61;
    v689.size.width = v63;
    v689.size.height = v65;
    v698.origin.x = v78;
    v698.origin.y = v80;
    v698.size.width = v82;
    v698.size.height = v84;
    v690 = CGRectIntersection(v689, v698);
    v144 = v690.origin.x;
    v145 = v690.size.width;
    v146 = v690.size.height;
    isPresenting6 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
    v561 = v144;
    v148 = v144 - v78;
    if (isPresenting6)
    {
      v149 = y;
    }

    else
    {
      v149 = 0.0;
    }

    v544 = v149;
    if (isPresenting6)
    {
      v150 = CGPointZero.x;
    }

    else
    {
      v150 = v144 - v78;
    }

    if (isPresenting6)
    {
      v151 = 0.0;
    }

    else
    {
      v151 = y;
    }

    if (isPresenting6)
    {
      v152 = v148;
    }

    else
    {
      v152 = CGPointZero.x;
    }

    if (isPresenting6)
    {
      v153 = v606;
    }

    else
    {
      v153 = v146;
    }

    v542 = v153;
    v543 = v150;
    if (isPresenting6)
    {
      v154 = v607;
    }

    else
    {
      v154 = v145;
    }

    v541 = v154;
    if (isPresenting6)
    {
      v155 = v146;
    }

    else
    {
      v155 = v606;
    }

    v600 = v145;
    if (!isPresenting6)
    {
      v145 = v607;
    }

    v156 = +[CALayer layer];
    [v156 setAnchorPoint:{0.0, 0.0}];
    [v156 setMasksToBounds:1];
    v617 = v156;
    if (!v90)
    {
      v181 = +[UIColor blackColor];
      v107 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy imageWithColor:v181];

      [v156 setContents:{objc_msgSend(v107, "CGImage")}];
      [v156 setBounds:{0.0, 0.0, v145, v155}];
      [v156 setPosition:{v152, v151}];
      v597 = 0;
      r1 = 0;
      v534 = CGPointZero.x;
      v535 = y;
      v536 = width;
      v531 = v547;
      v532 = height;
      v533 = CGRectNull.origin.x;
      v599 = v78;
LABEL_144:
      v143 = v628;
      v80 = v618;
      v33 = v614;
LABEL_199:

      v537 = 0.0;
      v538 = 0.0;
LABEL_200:
      v513 = v17;
      pageViewController = [v11 pageViewController];
      view4 = [pageViewController view];
      [view4 setAlpha:0.0];

      [imageView setAlpha:0.0];
      LODWORD(pageViewController) = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
      v213 = [UIImageView alloc];
      if (pageViewController)
      {
        v214 = [v213 initWithFrame:{v599, v80, v603, v602}];
        containerView = [transitionCopy containerView];
        [containerView addSubview:v214];

        [v214 setContentMode:1];
        [v214 setImage:v611];
        [v214 setClipsToBounds:1];
        [v214 setFrame:{v599, v80, v603, v602}];
        if (v617)
        {
          layer = [v214 layer];
          [layer setMask:v617];
        }

        v217 = v143;
      }

      else
      {
        v214 = [v213 initWithFrame:{v595, v594, v607, v606}];
        containerView2 = [transitionCopy containerView];
        [containerView2 addSubview:v214];

        [v214 setContentMode:1];
        [v214 setImage:v611];
        [v214 setClipsToBounds:1];
        [v214 setFrame:{v595, v594, v607, v606}];
        if (v617)
        {
          layer2 = [v214 layer];
          [layer2 setMask:v617];
        }

        v217 = v620;
      }

      [v217 addObject:v214];
      toolbar = [navigationController toolbar];
      traitCollection = [v11 traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];
      v528 = traitCollection;
      verticalSizeClass = [traitCollection verticalSizeClass];
      if (isSecureScreenShowing || horizontalSizeClass != 1 || (verticalSizeClass - 1) > 1)
      {
        v223 = navigationController;
        v224 = v143;
        v225 = navigationController;
      }

      else
      {
        v225 = navigationController;
        if (!v585)
        {
          v224 = v143;
          v362 = [v615 viewControllerForColumn:0];
          navigationBar = [v362 navigationBar];

          navigationBar4 = navigationBar;
LABEL_210:
          v586 = navigationBar4;
          window = [navigationBar4 window];
          windowScene = [window windowScene];
          statusBarManager2 = [windowScene statusBarManager];

          v558 = statusBarManager2;
          if (([statusBarManager2 isStatusBarHidden] & 1) == 0)
          {
            v230 = [UIView alloc];
            [statusBarManager2 statusBarFrame];
            v231 = [v230 initWithFrame:?];
            v232 = +[UIColor systemBackgroundColor];
            [v231 setBackgroundColor:v232];

            [v231 setAccessibilityLabel:@"noteEditorStatusBarBackground"];
            [v231 setTranslatesAutoresizingMaskIntoConstraints:0];
            [v231 setHidden:{objc_msgSend(statusBarManager2, "isStatusBarHidden")}];
            containerView3 = [transitionCopy containerView];
            [containerView3 addSubview:v231];

            [v224 addObject:v231];
          }

          v573 = v214;
          if ((isSecureScreenShowing & 1) != 0 || ((ic_isViewVisible | ic_isViewVisible2) & 1) == 0)
          {
            v264 = 0.0;
            v247 = 0.0;
            if (([statusBarManager2 isStatusBarHidden] & 1) == 0)
            {
              window2 = [v586 window];
              windowScene2 = [window2 windowScene];
              sub_10010C338(windowScene2);
              v247 = v272;
            }

            [v586 bounds];
            v249 = v273;
            v251 = v274;
            v253 = toolbar;
            [toolbar frame];
            v567 = v276;
            v571 = v275;
            v554 = v277;
            v269 = v278;
          }

          else
          {
            view5 = [v615 view];
            [v586 frame];
            v236 = v235;
            v238 = v237;
            v240 = v239;
            v242 = v241;
            view6 = [v225 view];
            [view5 convertRect:view6 fromView:{v236, v238, v240, v242}];
            v245 = v244;
            v247 = v246;
            v249 = v248;
            v251 = v250;

            view7 = [v615 view];
            v253 = toolbar;
            [toolbar frame];
            v255 = v254;
            v257 = v256;
            v259 = v258;
            v261 = v260;
            view8 = [v225 view];
            v263 = v261;
            v264 = v245;
            [view7 convertRect:view8 fromView:{v255, v257, v259, v263}];
            v567 = v266;
            v571 = v265;
            v554 = v267;
            v269 = v268;
          }

          [v253 bounds];
          v522 = v279;
          v524 = v280;
          v526 = v281;
          v283 = v282;
          _backgroundView = [v253 _backgroundView];

          if (_backgroundView)
          {
            _backgroundView2 = [v253 _backgroundView];
            [_backgroundView2 bounds];
            v287 = v286;

            if (v269 < v287)
            {
              v269 = v287;
            }

            v519 = v269;
            _backgroundView3 = [v253 _backgroundView];
            [_backgroundView3 bounds];
            v290 = v289;

            if (v283 < v290)
            {
              v283 = v290;
            }
          }

          else
          {
            v519 = v269;
          }

          v516 = v283;
          v291 = [[UIView alloc] initWithFrame:{v264, v247, v249, v251}];
          [v291 setBackgroundColor:0];
          [v291 setAccessibilityLabel:@"fakeNoteEditorNavBarBackground"];
          [v291 setTranslatesAutoresizingMaskIntoConstraints:0];
          containerView4 = [transitionCopy containerView];
          [containerView4 addSubview:v291];

          [v586 bounds];
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
          v296 = [v586 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
          [v296 setFrame:{v264, v247, v249, v251}];
          [v296 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v296 setAccessibilityLabel:@"fakeNoteEditorNavBarView"];
          [v296 setTranslatesAutoresizingMaskIntoConstraints:0];
          containerView5 = [transitionCopy containerView];
          [containerView5 addSubview:v296];

          v298 = [[UIView alloc] initWithFrame:{v571, v567, v554, v519}];
          [v298 setBackgroundColor:0];
          [v298 setAccessibilityLabel:@"fakeNoteEditorToolbarBackground"];
          [v298 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v298 setHidden:{objc_msgSend(v253, "isHidden")}];
          containerView6 = [transitionCopy containerView];
          [containerView6 addSubview:v298];

          v300 = v522;
          v301 = v524;
          v302 = v526;
          v525 = bottom;
          v527 = left;
          v523 = right;
          [v253 resizableSnapshotViewFromRect:1 afterScreenUpdates:v300 withCapInsets:{v302, v301, v516, UIEdgeInsetsZero.top, left, bottom, right}];
          v304 = v303 = v253;
          [v304 setFrame:{v571, v567, v554, v519}];
          [v304 setAccessibilityLabel:@"fakeNoteEditorToolbarView"];
          [v304 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v304 setHidden:{objc_msgSend(v303, "isHidden")}];
          containerView7 = [transitionCopy containerView];
          [containerView7 addSubview:v304];

          [v628 addObject:v291];
          if (v296)
          {
            [v628 addObject:v296];
          }

          v91 = v618;
          if (v298)
          {
            [v628 addObject:v298];
          }

          if (v304)
          {
            [v628 addObject:v304];
          }

          if (![(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
          {
            [v33 addObject:v291];
            if (v296)
            {
              [v33 addObject:v296];
            }

            if (v298)
            {
              [v33 addObject:v298];
            }

            if (v304)
            {
              [v33 addObject:v304];
            }
          }

          if (((isSecureScreenShowing ^ 1) & (ic_isViewVisible2 | ic_isViewVisible)) != 1)
          {
            toolbar3 = 0;
            navigationBar3 = 0;
            toolbar2 = 0;
            navigationBar2 = 0;
            v565 = 0;
            v568 = 0;
LABEL_278:

            v93 = v630;
            v11 = v613;
            v92 = v628;
            goto LABEL_279;
          }

          if (v513)
          {
            folderListViewController2 = [ic_viewControllerManager4 folderListViewController];
            navigationController2 = [folderListViewController2 navigationController];

            navigationBar2 = [navigationController2 navigationBar];
            v568 = navigationController2;
            toolbar2 = [navigationController2 toolbar];
            currentNoteBrowseViewController2 = [ic_viewControllerManager4 currentNoteBrowseViewController];
            navigationController3 = [currentNoteBrowseViewController2 navigationController];

            navigationBar3 = [navigationController3 navigationBar];
            v565 = navigationController3;
            toolbar3 = [navigationController3 toolbar];
            v312 = v615;
            if (!ic_isViewVisible)
            {
LABEL_265:
              if (ic_isViewVisible2)
              {
                view9 = [v312 view];
                [navigationBar2 frame];
                v373 = v372;
                v375 = v374;
                v377 = v376;
                v379 = v378;
                superview2 = [navigationBar2 superview];
                [view9 convertRect:superview2 fromView:{v373, v375, v377, v379}];
                v382 = v381;
                v384 = v383;
                v386 = v385;
                v388 = v387;

                view10 = [v312 view];
                [toolbar2 frame];
                v391 = v390;
                v393 = v392;
                v395 = v394;
                v397 = v396;
                superview3 = [toolbar2 superview];
                [view10 convertRect:superview3 fromView:{v391, v393, v395, v397}];
                v518 = v400;
                v521 = v399;
                v515 = v401;
                v403 = v402;

                [toolbar2 bounds];
                v508 = v404;
                v510 = v405;
                v512 = v406;
                v408 = v407;
                _backgroundView4 = [toolbar2 _backgroundView];

                if (_backgroundView4)
                {
                  _backgroundView5 = [toolbar2 _backgroundView];
                  [_backgroundView5 bounds];
                  v412 = v411;

                  if (v408 < v412)
                  {
                    v408 = v412;
                  }

                  _backgroundView6 = [toolbar2 _backgroundView];
                  [_backgroundView6 bounds];
                  v415 = v414;

                  if (v403 < v415)
                  {
                    v403 = v415;
                  }

                  v506 = v403;
                }

                else
                {
                  v504 = v408;
                  v506 = v403;
                }

                v416 = [[UIView alloc] initWithFrame:{v382, v384, v386, v388}];
                [v416 setBackgroundColor:0];
                [v416 setAccessibilityLabel:@"fakeFolderListNavBarBackground"];
                [v416 setTranslatesAutoresizingMaskIntoConstraints:0];
                [v416 setHidden:{objc_msgSend(navigationBar2, "isHidden")}];
                containerView8 = [transitionCopy containerView];
                [containerView8 addSubview:v416];

                [navigationBar2 bounds];
                v418 = [navigationBar2 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
                [v418 setFrame:{v382, v384, v386, v388}];
                [v418 setAccessibilityLabel:@"fakeFolderListNavBarView"];
                [v418 setTranslatesAutoresizingMaskIntoConstraints:0];
                [v418 setHidden:{objc_msgSend(navigationBar2, "isHidden")}];
                containerView9 = [v626 containerView];
                [containerView9 addSubview:v418];

                v420 = [toolbar2 resizableSnapshotViewFromRect:1 afterScreenUpdates:v508 withCapInsets:{v512, v510, v504, UIEdgeInsetsZero.top, v527, v525, v523}];
                [v420 setFrame:{v521, v518, v515, v506}];
                [v420 setAccessibilityLabel:@"fakeFolderListToolbarView"];
                [v420 setTranslatesAutoresizingMaskIntoConstraints:0];
                [v420 setHidden:{objc_msgSend(toolbar2, "isHidden")}];
                containerView10 = [v626 containerView];
                [containerView10 addSubview:v420];

                [v628 addObject:v416];
                [v628 addObject:v418];
                [v628 addObject:v420];
                if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
                {
                  v422 = v629;
                }

                else
                {
                  v422 = v614;
                }

                [v422 addObject:{v416, *&v504}];
                [v422 addObject:v418];
                v423 = v422;
                v33 = v614;
                [v423 addObject:v420];

                transitionCopy = v626;
                v91 = v618;
              }

              else
              {
                v33 = v614;
              }

              goto LABEL_278;
            }
          }

          else
          {
            if (ic_isViewVisible2)
            {
              folderListViewController3 = [ic_viewControllerManager4 folderListViewController];
              navigationController4 = [folderListViewController3 navigationController];

              navigationBar2 = [navigationController4 navigationBar];
              v568 = navigationController4;
              toolbar2 = [navigationController4 toolbar];
            }

            else
            {
              toolbar2 = 0;
              navigationBar2 = 0;
              v568 = 0;
            }

            v312 = v615;
            if (!ic_isViewVisible)
            {
              v565 = 0;
              navigationBar3 = 0;
              toolbar3 = 0;
              goto LABEL_265;
            }

            currentNoteBrowseViewController3 = [ic_viewControllerManager4 currentNoteBrowseViewController];
            navigationController5 = [currentNoteBrowseViewController3 navigationController];

            navigationBar3 = [navigationController5 navigationBar];
            v565 = navigationController5;
            toolbar3 = [navigationController5 toolbar];
          }

          view11 = [v312 view];
          [navigationBar3 frame];
          v319 = v318;
          v321 = v320;
          v323 = v322;
          v325 = v324;
          superview4 = [navigationBar3 superview];
          [view11 convertRect:superview4 fromView:{v319, v321, v323, v325}];
          v328 = v327;
          v330 = v329;
          v332 = v331;
          v334 = v333;

          view12 = [v312 view];
          [toolbar3 frame];
          v337 = v336;
          v339 = v338;
          v341 = v340;
          v343 = v342;
          superview5 = [toolbar3 superview];
          [view12 convertRect:superview5 fromView:{v337, v339, v341, v343}];
          v517 = v346;
          v520 = v345;
          v514 = v347;
          v349 = v348;

          [toolbar3 bounds];
          v507 = v350;
          v509 = v351;
          v511 = v352;
          v354 = v353;
          _backgroundView7 = [toolbar3 _backgroundView];

          if (_backgroundView7)
          {
            _backgroundView8 = [toolbar3 _backgroundView];
            [_backgroundView8 bounds];
            v358 = v357;

            if (v354 < v358)
            {
              v354 = v358;
            }

            _backgroundView9 = [toolbar3 _backgroundView];
            [_backgroundView9 bounds];
            v361 = v360;

            if (v349 < v361)
            {
              v349 = v361;
            }

            v505 = v349;
          }

          else
          {
            v503 = v354;
            v505 = v349;
          }

          v364 = [[UIView alloc] initWithFrame:{v328, v330, v332, v334}];
          [v364 setBackgroundColor:0];
          [v364 setAccessibilityLabel:@"fakeNoteListNavBarBackground"];
          [v364 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v364 setHidden:{objc_msgSend(navigationBar3, "isHidden")}];
          containerView11 = [transitionCopy containerView];
          [containerView11 addSubview:v364];

          [navigationBar3 bounds];
          v366 = [navigationBar3 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
          [v366 setFrame:{v328, v330, v332, v334}];
          [v366 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v366 setAccessibilityLabel:@"fakeNoteListNavBarView"];
          [v366 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v366 setHidden:{objc_msgSend(navigationBar3, "isHidden")}];
          containerView12 = [v626 containerView];
          [containerView12 addSubview:v366];

          v368 = [toolbar3 resizableSnapshotViewFromRect:1 afterScreenUpdates:v507 withCapInsets:{v511, v509, v503, UIEdgeInsetsZero.top, v527, v525, v523}];
          [v368 setFrame:{v520, v517, v514, v505}];
          [v368 setAccessibilityLabel:@"fakeNoteListToolbarView"];
          [v368 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v368 setHidden:{objc_msgSend(toolbar3, "isHidden")}];
          containerView13 = [v626 containerView];
          [containerView13 addSubview:v368];

          [v628 addObject:v364];
          [v628 addObject:v366];
          [v628 addObject:v368];
          if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
          {
            v370 = v629;
          }

          else
          {
            v370 = v614;
          }

          [v370 addObject:{v364, *&v503}];
          [v370 addObject:v366];

          transitionCopy = v626;
          v312 = v615;
          v91 = v618;
          goto LABEL_265;
        }

        v224 = v143;
        v223 = v610;
      }

      navigationBar4 = [v223 navigationBar];
      goto LABEL_210;
    }

    v570 = v145;
    v107 = [UIImage imageNamed:@"gallery_fade_gradient"];
    v157 = v572;
    if (v572 > 1.0)
    {
      v5722 = [UIImage ic_orientedImageFromImage:v107 toOrientation:2, v572];

      v107 = v5722;
    }

    v33 = v614;
    v159 = v155;
    v160 = +[CALayer layer];
    [v160 setAnchorPoint:{0.0, 0.0}];
    [v160 setContents:{objc_msgSend(v107, "ic_CGImage")}];
    v161 = +[CALayer layer];
    [v161 setAnchorPoint:{0.0, 0.0}];
    v162 = +[UIColor whiteColor];
    [v161 setBackgroundColor:{objc_msgSend(v162, "CGColor")}];

    v597 = v161;
    [v617 addSublayer:v161];
    r1 = v160;
    [v617 addSublayer:v160];
    v163 = v146 * 0.1;
    if (v572 > 1.0)
    {
      v163 = v591 * 0.055;
    }

    v164 = round(v163);
    if (v572 > 1.0)
    {
      v143 = v628;
      if (v561 == v590 && v600 < v591)
      {
        v186 = v591 - v164;
        v691.origin.y = 0.0;
        v691.origin.x = v591 - v164;
        v536 = v164;
        v691.size.width = v164;
        v691.size.height = v584;
        CGRectGetMinX(v691);
        v550 = v584;
        v539 = 0.0;
      }

      else
      {
        v692.origin.x = 0.0;
        v692.origin.y = 0.0;
        v692.size.width = v600;
        v692.size.height = v146;
        CGRectGetMaxX(v692);
        TSDRectGetMaxPoint();
        TSDRectWithPoints();
        v186 = v693.origin.x;
        v539 = v693.origin.y;
        v536 = v693.size.width;
        v550 = v693.size.height;
        CGRectGetMinX(v693);
      }

      v575 = v186;
      v694.origin.x = 0.0;
      v694.origin.y = 0.0;
      v694.size.width = v600;
      v694.size.height = v146;
      CGRectGetMaxY(v694);
      TSDRectWithPoints();
      v601 = v199;
      v562 = v200;
      v168 = v201;
      v203 = v202;
      if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
      {
        v535 = 0.0;
        v546 = v536;
        x = v543;
        y = v544;
        v532 = v542;
        v533 = 0.0;
        width = v541;
        height = v542;
        v534 = v541;
        v531 = 0.0;
        v536 = 0.0;
        v177 = v152;
        v179 = v186;
        v178 = v550;
        v172 = v539;
        goto LABEL_194;
      }

      v207 = v152;
      v208 = v152 + v570;
      v206 = v151;
      v205 = v151;
      v210 = v159;
      v209 = 0.0;
      v176 = v550;
      v172 = v539;
    }

    else
    {
      TSDRectGetMaxPoint();
      TSDRectWithPoints();
      v601 = v165;
      v562 = v166;
      v168 = v167;
      v548 = v169;
      TSDRectWithPoints();
      v575 = v170;
      v172 = v171;
      v174 = v173;
      v176 = v175;
      v143 = v628;
      if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
      {
        v546 = v174;
        v534 = 0.0;
        x = v543;
        y = v544;
        v533 = 0.0;
        width = v541;
        height = v542;
        v535 = v542;
        v536 = v541;
        v531 = 0.0;
        v532 = 0.0;
        v177 = v152;
        v178 = v176;
        v179 = v575;
LABEL_194:
        v204 = v601;
        v205 = v562;
LABEL_198:
        [v597 setPosition:{v204, v205}];
        v547 = 0.0;
        [v597 setBounds:?];
        [v160 setPosition:{v179, v172}];
        [v160 setBounds:{0.0, 0.0, v546, v178}];
        [v617 setPosition:{v177, v151}];
        [v617 setBounds:{0.0, 0.0, v570, v159}];
        v545 = 0.0;
        v599 = v590;
        v80 = v618;
        goto LABEL_199;
      }

      v536 = v174;
      v206 = v151 + v159;
      v207 = v152;
      v208 = v152;
      v205 = v151;
      v209 = v145;
      v210 = 0.0;
      v203 = v548;
    }

    v546 = v209;
    x = v601;
    y = v562;
    v532 = v176;
    v533 = 0.0;
    width = v168;
    height = v203;
    v204 = v207;
    v534 = v575;
    v535 = v172;
    v531 = 0.0;
    v172 = v206;
    v179 = v208;
    v178 = v210;
    v177 = v207;
    goto LABEL_198;
  }

  v540 = 0;
  v597 = 0;
  r1 = 0;
  v617 = 0;
  imageView = 0;
  v568 = 0;
  v573 = 0;
  v565 = 0;
  v91 = CGRectZero.origin.y;
  v534 = CGPointZero.x;
  v535 = CGPointZero.y;
  v531 = CGRectNull.origin.y;
  v532 = CGRectNull.size.height;
  v536 = CGRectNull.size.width;
  v537 = CGRectNull.origin.x;
  v533 = CGRectNull.origin.x;
  v543 = CGPointZero.x;
  v544 = v535;
  v541 = v536;
  v542 = v532;
  v538 = v531;
  v602 = CGRectZero.size.height;
  v603 = CGRectZero.size.width;
  v584 = v602;
  v590 = CGRectZero.origin.x;
  v591 = v603;
  v599 = CGRectZero.origin.x;
  v92 = v628;
  v93 = v630;
LABEL_279:
  v619 = v91;
  if (([statusBarManager isStatusBarHidden] & 1) == 0)
  {
    v424 = [UIView alloc];
    [statusBarManager statusBarFrame];
    v425 = [v424 initWithFrame:?];
    v426 = +[UIColor systemBackgroundColor];
    [v425 setBackgroundColor:v426];

    [v425 setAccessibilityLabel:@"extractedDocumentStatusBarBackground"];
    [v425 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = v614;
    [v425 setHidden:{objc_msgSend(statusBarManager, "isStatusBarHidden")}];
    containerView14 = [transitionCopy containerView];
    [containerView14 addSubview:v425];

    if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
    {
      v428 = v614;
    }

    else
    {
      v428 = v629;
    }

    [v428 addObject:v425];
    [v92 addObject:v425];
  }

  navigationBar5 = [v93 navigationBar];
  v430 = [UIView alloc];
  [navigationBar5 frame];
  v431 = [v430 initWithFrame:?];
  [v431 setBackgroundColor:0];
  [v431 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v431 setAccessibilityLabel:@"extractedDocumentNavBarBackground"];
  [v431 setHidden:{objc_msgSend(navigationBar5, "isHidden")}];
  containerView15 = [transitionCopy containerView];
  [containerView15 addSubview:v431];

  [navigationBar5 bounds];
  top = UIEdgeInsetsZero.top;
  v434 = UIEdgeInsetsZero.left;
  v436 = UIEdgeInsetsZero.bottom;
  v435 = UIEdgeInsetsZero.right;
  v437 = [navigationBar5 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
  [navigationBar5 frame];
  [v437 setFrame:?];
  [v437 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v437 setAccessibilityLabel:@"extractedDocumentNavBarView"];
  v593 = navigationBar5;
  [v437 setHidden:{objc_msgSend(navigationBar5, "isHidden")}];
  containerView16 = [transitionCopy containerView];
  [containerView16 addSubview:v437];

  if ([(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting])
  {
    v439 = v33;
  }

  else
  {
    v439 = v629;
  }

  [v439 addObject:v431];
  [v439 addObject:v437];
  v589 = v431;
  [v92 addObject:v431];
  v587 = v437;
  [v92 addObject:v437];
  bottomToolbar = [v11 bottomToolbar];
  [bottomToolbar bounds];
  v556 = v441;
  v559 = v442;
  v564 = v443;
  v445 = v444;
  [bottomToolbar frame];
  v447 = v446;
  v449 = v448;
  v624 = v450;
  v452 = v451;
  bottomToolbar2 = [v11 bottomToolbar];
  _backgroundView10 = [bottomToolbar2 _backgroundView];

  v630 = v93;
  if (_backgroundView10)
  {
    bottomToolbar3 = [v11 bottomToolbar];
    _backgroundView11 = [bottomToolbar3 _backgroundView];
    [_backgroundView11 bounds];
    v458 = v457;

    if (v445 < v458)
    {
      v445 = v458;
    }

    bottomToolbar4 = [v11 bottomToolbar];
    _backgroundView12 = [bottomToolbar4 _backgroundView];
    [_backgroundView12 bounds];
    v462 = v461;

    if (v452 < v462)
    {
      v452 = v462;
    }

    top = UIEdgeInsetsZero.top;
  }

  v463 = [bottomToolbar resizableSnapshotViewFromRect:1 afterScreenUpdates:v556 withCapInsets:{v564, v559, v445, top, v434, v436, v435}];
  [v463 setFrame:{v447, v449, v624, v452}];
  [v463 setAccessibilityLabel:@"fakeExtractedDocumentBottomToolbar"];
  [v463 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v463 setHidden:{objc_msgSend(bottomToolbar, "isHidden")}];
  containerView17 = [transitionCopy containerView];
  [containerView17 addSubview:v463];

  isPresenting7 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
  v466 = isPresenting7 == 0;
  if (isPresenting7)
  {
    v467 = v614;
  }

  else
  {
    v467 = v629;
  }

  if (v466)
  {
    v468 = v92;
  }

  else
  {
    v468 = v620;
  }

  [v467 addObject:v463];
  [v468 addObject:v463];
  [bottomToolbar setAlpha:0.0];
  topToolbar = [v11 topToolbar];
  if (([topToolbar isHidden] & 1) == 0 && objc_msgSend(v11, "thumbnailContainerViewIsVisible"))
  {
    [topToolbar bounds];
    v469 = [topToolbar resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
    [v469 setAccessibilityLabel:@"fakeExtractedDocumentTopToolbar"];
    [v469 setTranslatesAutoresizingMaskIntoConstraints:0];
    [topToolbar frame];
    [v469 setFrame:?];
    [v469 setHidden:{objc_msgSend(topToolbar, "isHidden")}];
    containerView18 = [transitionCopy containerView];
    [containerView18 addSubview:v469];

    isPresenting8 = [(ICDocCamExtractedDocumentAnimationController *)selfCopy isPresenting];
    v472 = isPresenting8 == 0;
    if (isPresenting8)
    {
      v473 = v614;
    }

    else
    {
      v473 = v629;
    }

    if (v472)
    {
      v474 = v92;
    }

    else
    {
      v474 = v620;
    }

    [v473 addObject:v469];
    [v474 addObject:v469];
    [topToolbar setAlpha:0.0];
  }

  v681 = 0u;
  v682 = 0u;
  v679 = 0u;
  v680 = 0u;
  v475 = v614;
  v476 = [v475 countByEnumeratingWithState:&v679 objects:v684 count:16];
  if (v476)
  {
    v477 = v476;
    v478 = *v680;
    do
    {
      for (i = 0; i != v477; i = i + 1)
      {
        if (*v680 != v478)
        {
          objc_enumerationMutation(v475);
        }

        layer3 = [*(*(&v679 + 1) + 8 * i) layer];
        [layer3 setOpacity:0.0];
      }

      v477 = [v475 countByEnumeratingWithState:&v679 objects:v684 count:16];
    }

    while (v477);
  }

  v677 = 0u;
  v678 = 0u;
  v675 = 0u;
  v676 = 0u;
  v481 = v629;
  v482 = [v481 countByEnumeratingWithState:&v675 objects:v683 count:16];
  if (v482)
  {
    v483 = v482;
    v484 = *v676;
    do
    {
      for (j = 0; j != v483; j = j + 1)
      {
        if (*v676 != v484)
        {
          objc_enumerationMutation(v481);
        }

        layer4 = [*(*(&v675 + 1) + 8 * j) layer];
        LODWORD(v487) = 1.0;
        [layer4 setOpacity:v487];
      }

      v483 = [v481 countByEnumeratingWithState:&v675 objects:v683 count:16];
    }

    while (v483);
  }

  if (v627)
  {
    [(ICDocCamExtractedDocumentAnimationController *)selfCopy transitionDuration:v626];
    v489 = v488;
    +[CATransaction begin];
    *&v490 = v489;
    v491 = [NSNumber numberWithFloat:v490];
    [CATransaction setValue:v491 forKey:kCATransactionAnimationDuration];

    v492 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setValue:v492 forKey:kCATransactionAnimationTimingFunction];

    [v617 setBounds:{v537, v538, v541, v542}];
    [v617 setPosition:{v543, v544}];
    if (v540)
    {
      [v597 setPosition:{x, y}];
      [v597 setBounds:{v545, v547, width, height}];
      [r1 setPosition:{v534, v535}];
      [r1 setBounds:{v533, v531, v536, v532}];
    }

    +[CATransaction commit];
  }

  [(ICDocCamExtractedDocumentAnimationController *)selfCopy transitionDuration:v626];
  v494 = v493;
  v657[0] = _NSConcreteStackBlock;
  v657[1] = 3221225472;
  v657[2] = sub_10010F3C8;
  v657[3] = &unk_10064A2F0;
  v658 = v475;
  v659 = v481;
  v660 = selfCopy;
  v674 = v627;
  v663 = v595;
  v664 = v594;
  v665 = v607;
  v666 = v606;
  v661 = v573;
  v662 = 0;
  v667 = 0;
  v668 = v599;
  v669 = v619;
  v670 = v603;
  v671 = v602;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v673 = size;
  v632[0] = _NSConcreteStackBlock;
  v632[1] = 3221225472;
  v632[2] = sub_10010F61C;
  v632[3] = &unk_10064A318;
  v633 = v626;
  v495 = v658;
  v634 = v495;
  v496 = v659;
  v635 = v496;
  v497 = v628;
  v636 = v497;
  v11 = v613;
  v637 = v11;
  v638 = selfCopy;
  v656 = v627;
  v498 = v661;
  v645 = v595;
  v646 = v594;
  v647 = v607;
  v648 = v606;
  v639 = v498;
  v640 = 0;
  v649 = 0;
  v650 = v590;
  v651 = v619;
  v652 = v591;
  v653 = v584;
  v654 = origin;
  v655 = size;
  v499 = imageView;
  v641 = v499;
  v500 = topToolbar;
  v642 = v500;
  v501 = bottomToolbar;
  v643 = v501;
  v502 = v620;
  v644 = v502;
  [UIView animateWithDuration:v657 animations:v632 completion:v494];

  transitionCopy = v626;
  v7 = v582;
  v6 = v583;
LABEL_327:
}

- (void)animateDismissalTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  view = [v5 view];
  [view setAlpha:1.0];

  [(ICDocCamExtractedDocumentAnimationController *)self transitionDuration:transitionCopy];
  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010FD7C;
  v14[3] = &unk_100645E30;
  v15 = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010FDC4;
  v11[3] = &unk_1006487E8;
  v12 = transitionCopy;
  v13 = v15;
  v9 = v15;
  v10 = transitionCopy;
  [UIView animateWithDuration:v14 animations:v11 completion:v8];
}

- (id)imageWithColor:(id)color
{
  colorCopy = color;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  CGContextFillRect(CurrentContext, v10);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

@end