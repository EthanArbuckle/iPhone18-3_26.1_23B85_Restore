@interface VLFCalloutVisibilityHelper
+ (void)updateVLFBannerVisibilityWithChromeViewController:(id)controller floatingControlsViewController:(id)viewController;
@end

@implementation VLFCalloutVisibilityHelper

+ (void)updateVLFBannerVisibilityWithChromeViewController:(id)controller floatingControlsViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v6 = +[VLFSessionTask isVLFModeSupported];
  if (viewControllerCopy)
  {
    if (controllerCopy)
    {
      if (v6)
      {
        userLocationView = [controllerCopy userLocationView];
        vlfMode = [userLocationView vlfMode];

        if (vlfMode)
        {
          userLocationView2 = [controllerCopy userLocationView];
          vlfPuckModeCircleView = [userLocationView2 vlfPuckModeCircleView];
          userLocationView3 = [controllerCopy userLocationView];
          vlfPuckModeCircleView2 = [userLocationView3 vlfPuckModeCircleView];
          [vlfPuckModeCircleView2 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          view = [controllerCopy view];
          [vlfPuckModeCircleView convertRect:view toView:{v14, v16, v18, v20}];
          v93 = v23;
          v94 = v22;
          v91 = v25;
          v92 = v24;

          userLocationView4 = [controllerCopy userLocationView];
          _calloutView = [userLocationView4 _calloutView];
          userLocationView5 = [controllerCopy userLocationView];
          _calloutView2 = [userLocationView5 _calloutView];
          [_calloutView2 bounds];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          view2 = [controllerCopy view];
          [_calloutView convertRect:view2 toView:{v31, v33, v35, v37}];
          v89 = v40;
          v90 = v39;
          v87 = v42;
          v88 = v41;

          view3 = [viewControllerCopy view];
          [viewControllerCopy floatingButtonsFrame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          view4 = [controllerCopy view];
          [view3 convertRect:view4 toView:{v45, v47, v49, v51}];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v60 = v59;

          _currentContainerViewController = [controllerCopy _currentContainerViewController];
          currentViewController = [_currentContainerViewController currentViewController];
          v63 = currentViewController;
          if (currentViewController)
          {
            view5 = [currentViewController view];
            view6 = [v63 view];
            [view6 bounds];
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v73 = v72;
            view7 = [controllerCopy view];
            [view5 convertRect:view7 toView:{v67, v69, v71, v73}];
            x = v75;
            y = v77;
            width = v79;
            height = v81;
          }

          else
          {
            x = CGRectNull.origin.x;
            y = CGRectNull.origin.y;
            width = CGRectNull.size.width;
            height = CGRectNull.size.height;
          }

          v97.origin.y = v93;
          v97.origin.x = v94;
          v97.size.height = v91;
          v97.size.width = v92;
          v103.origin.x = v54;
          v103.origin.y = v56;
          v103.size.width = v58;
          v103.size.height = v60;
          if (CGRectIntersectsRect(v97, v103))
          {
            v83 = 1;
          }

          else
          {
            v98.origin.x = x;
            v98.origin.y = y;
            v98.size.width = width;
            v98.size.height = height;
            if (CGRectIsNull(v98))
            {
              v83 = 0;
            }

            else
            {
              v99.origin.y = v93;
              v99.origin.x = v94;
              v99.size.height = v91;
              v99.size.width = v92;
              v104.origin.x = x;
              v104.origin.y = y;
              v104.size.width = width;
              v104.size.height = height;
              v83 = CGRectIntersectsRect(v99, v104);
            }
          }

          v100.origin.y = v89;
          v100.origin.x = v90;
          v100.size.height = v87;
          v100.size.width = v88;
          v105.origin.x = v54;
          v105.origin.y = v56;
          v105.size.width = v58;
          v105.size.height = v60;
          if (CGRectIntersectsRect(v100, v105))
          {
            v84 = 1;
          }

          else
          {
            v101.origin.x = x;
            v101.origin.y = y;
            v101.size.width = width;
            v101.size.height = height;
            if (CGRectIsNull(v101))
            {
              v84 = 0;
            }

            else
            {
              v102.origin.y = v89;
              v102.origin.x = v90;
              v102.size.height = v87;
              v102.size.width = v88;
              v106.origin.x = x;
              v106.origin.y = y;
              v106.size.width = width;
              v106.size.height = height;
              v84 = CGRectIntersectsRect(v102, v106);
            }
          }

          v85 = v83 || v84;
          userLocationView6 = [controllerCopy userLocationView];
          [userLocationView6 setVlfOverlappingFloatingControls:v85];
        }
      }
    }
  }
}

@end