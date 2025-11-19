@interface BKScrubberCalloutView
- (void)updateLayoutWithParentView:(id)a3 bottomMargin:(double)a4 calloutWidth:(double)a5 followThumb:(BOOL)a6 isScroll:(BOOL)a7 isVerticalScroll:(BOOL)a8 layoutDirection:(int64_t)a9 scrubber:(id)a10;
@end

@implementation BKScrubberCalloutView

- (void)updateLayoutWithParentView:(id)a3 bottomMargin:(double)a4 calloutWidth:(double)a5 followThumb:(BOOL)a6 isScroll:(BOOL)a7 isVerticalScroll:(BOOL)a8 layoutDirection:(int64_t)a9 scrubber:(id)a10
{
  v12 = a8;
  v14 = a6;
  v81 = a3;
  v17 = a10;
  [v81 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = +[UIApplication sharedApplication];
  v27 = [v26 userInterfaceLayoutDirection];

  [(BKScrubberCalloutView *)self sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v30 = v29;
  if (a5 <= 0.0)
  {
    v31 = v28;
  }

  else
  {
    v31 = a5;
  }

  v83.origin.x = v19;
  v83.origin.y = v21;
  v83.size.width = v23;
  v83.size.height = v25;
  v32 = CGRectGetMidX(v83) - v31 * 0.5;
  v84.origin.x = v19;
  v84.origin.y = v21;
  v84.size.width = v23;
  rect = v25;
  v84.size.height = v25;
  MinY = CGRectGetMinY(v84);
  if (v14)
  {
    v34 = v31 * 0.5;
    v75 = MinY;
    v76 = v32;
    v77 = v31;
    v79 = v30;
    v35 = [v17 thumb];
    [v35 frame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [v17 thumb];
    v45 = [v44 superview];
    [v81 convertRect:v45 fromView:{v37, v39, v41, v43}];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = v47;
    v55 = v49;
    v56 = v51;
    v57 = v53;
    if (v12)
    {
      MidY = CGRectGetMidY(*&v54);
      v30 = v79;
      v85.size.height = rect;
      v59 = MidY + v79 * -0.5;
      v85.origin.x = v19;
      v85.origin.y = v21;
      v85.size.width = v23;
      v60 = CGRectGetHeight(v85) + -5.0 - v79;
      if (v60 >= v59)
      {
        v60 = v59;
      }

      v61 = fmax(v60, 5.0);
      v32 = v76;
      v31 = v77;
      if (!a7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v67 = CGRectGetMidX(*&v54) - v34;
      v86.origin.x = v19;
      v86.origin.y = v21;
      v86.size.width = v23;
      v86.size.height = rect;
      v31 = v77;
      v30 = v79;
      v68 = CGRectGetWidth(v86) + -5.0 - v77;
      if (v68 >= v67)
      {
        v68 = v67;
      }

      v32 = fmax(v68, 5.0);
      v61 = v75;
      if (!a7)
      {
        goto LABEL_24;
      }
    }

    [v17 frame];
    if (v27 == &dword_0 + 1)
    {
      MaxX = CGRectGetMaxX(*&v69);
      v74 = 12.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v69) - v31;
      v74 = -12.0;
    }

    v32 = MaxX + v74;
    goto LABEL_27;
  }

  if (!a7)
  {
LABEL_24:
    [v17 frame];
    v61 = CGRectGetMinY(v87) - v30;
    goto LABEL_27;
  }

  v62 = isPhone();
  v63 = 45.0;
  if (a9 != 1)
  {
    v63 = 24.0;
  }

  v64 = 34.0;
  if (a9 == 1)
  {
    v64 = 58.0;
  }

  if (v62)
  {
    v65 = v63;
  }

  else
  {
    v65 = v64;
  }

  [v81 frame];
  v61 = v66 - a4 - v30 + -1.0 - v65;
LABEL_27:
  v88.origin.x = v32;
  v88.origin.y = v61;
  v88.size.width = v31;
  v88.size.height = v30;
  v89 = CGRectIntegral(v88);
  [(BKScrubberCalloutView *)self setFrame:v89.origin.x, v89.origin.y, v89.size.width, v89.size.height];
}

@end