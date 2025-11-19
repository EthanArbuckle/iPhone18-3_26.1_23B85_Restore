@interface VLFCalloutVisibilityHelper
+ (void)updateVLFBannerVisibilityWithChromeViewController:(id)a3 floatingControlsViewController:(id)a4;
@end

@implementation VLFCalloutVisibilityHelper

+ (void)updateVLFBannerVisibilityWithChromeViewController:(id)a3 floatingControlsViewController:(id)a4
{
  v95 = a3;
  v5 = a4;
  v6 = +[VLFSessionTask isVLFModeSupported];
  if (v5)
  {
    if (v95)
    {
      if (v6)
      {
        v7 = [v95 userLocationView];
        v8 = [v7 vlfMode];

        if (v8)
        {
          v9 = [v95 userLocationView];
          v10 = [v9 vlfPuckModeCircleView];
          v11 = [v95 userLocationView];
          v12 = [v11 vlfPuckModeCircleView];
          [v12 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [v95 view];
          [v10 convertRect:v21 toView:{v14, v16, v18, v20}];
          v93 = v23;
          v94 = v22;
          v91 = v25;
          v92 = v24;

          v26 = [v95 userLocationView];
          v27 = [v26 _calloutView];
          v28 = [v95 userLocationView];
          v29 = [v28 _calloutView];
          [v29 bounds];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v38 = [v95 view];
          [v27 convertRect:v38 toView:{v31, v33, v35, v37}];
          v89 = v40;
          v90 = v39;
          v87 = v42;
          v88 = v41;

          v43 = [v5 view];
          [v5 floatingButtonsFrame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v52 = [v95 view];
          [v43 convertRect:v52 toView:{v45, v47, v49, v51}];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v60 = v59;

          v61 = [v95 _currentContainerViewController];
          v62 = [v61 currentViewController];
          v63 = v62;
          if (v62)
          {
            v64 = [v62 view];
            v65 = [v63 view];
            [v65 bounds];
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v74 = [v95 view];
            [v64 convertRect:v74 toView:{v67, v69, v71, v73}];
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
          v86 = [v95 userLocationView];
          [v86 setVlfOverlappingFloatingControls:v85];
        }
      }
    }
  }
}

@end