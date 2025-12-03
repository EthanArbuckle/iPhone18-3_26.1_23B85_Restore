@interface BKScrubberCalloutView
- (void)updateLayoutWithParentView:(id)view bottomMargin:(double)margin calloutWidth:(double)width followThumb:(BOOL)thumb isScroll:(BOOL)scroll isVerticalScroll:(BOOL)verticalScroll layoutDirection:(int64_t)direction scrubber:(id)self0;
@end

@implementation BKScrubberCalloutView

- (void)updateLayoutWithParentView:(id)view bottomMargin:(double)margin calloutWidth:(double)width followThumb:(BOOL)thumb isScroll:(BOOL)scroll isVerticalScroll:(BOOL)verticalScroll layoutDirection:(int64_t)direction scrubber:(id)self0
{
  verticalScrollCopy = verticalScroll;
  thumbCopy = thumb;
  viewCopy = view;
  scrubberCopy = scrubber;
  [viewCopy bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v26 userInterfaceLayoutDirection];

  [(BKScrubberCalloutView *)self sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v30 = v29;
  if (width <= 0.0)
  {
    widthCopy = v28;
  }

  else
  {
    widthCopy = width;
  }

  v83.origin.x = v19;
  v83.origin.y = v21;
  v83.size.width = v23;
  v83.size.height = v25;
  v32 = CGRectGetMidX(v83) - widthCopy * 0.5;
  v84.origin.x = v19;
  v84.origin.y = v21;
  v84.size.width = v23;
  rect = v25;
  v84.size.height = v25;
  MinY = CGRectGetMinY(v84);
  if (thumbCopy)
  {
    v34 = widthCopy * 0.5;
    v75 = MinY;
    v76 = v32;
    v77 = widthCopy;
    v79 = v30;
    thumb = [scrubberCopy thumb];
    [thumb frame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    thumb2 = [scrubberCopy thumb];
    superview = [thumb2 superview];
    [viewCopy convertRect:superview fromView:{v37, v39, v41, v43}];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = v47;
    v55 = v49;
    v56 = v51;
    v57 = v53;
    if (verticalScrollCopy)
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
      widthCopy = v77;
      if (!scroll)
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
      widthCopy = v77;
      v30 = v79;
      v68 = CGRectGetWidth(v86) + -5.0 - v77;
      if (v68 >= v67)
      {
        v68 = v67;
      }

      v32 = fmax(v68, 5.0);
      v61 = v75;
      if (!scroll)
      {
        goto LABEL_24;
      }
    }

    [scrubberCopy frame];
    if (userInterfaceLayoutDirection == &dword_0 + 1)
    {
      MaxX = CGRectGetMaxX(*&v69);
      v74 = 12.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v69) - widthCopy;
      v74 = -12.0;
    }

    v32 = MaxX + v74;
    goto LABEL_27;
  }

  if (!scroll)
  {
LABEL_24:
    [scrubberCopy frame];
    v61 = CGRectGetMinY(v87) - v30;
    goto LABEL_27;
  }

  v62 = isPhone();
  v63 = 45.0;
  if (direction != 1)
  {
    v63 = 24.0;
  }

  v64 = 34.0;
  if (direction == 1)
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

  [viewCopy frame];
  v61 = v66 - margin - v30 + -1.0 - v65;
LABEL_27:
  v88.origin.x = v32;
  v88.origin.y = v61;
  v88.size.width = widthCopy;
  v88.size.height = v30;
  v89 = CGRectIntegral(v88);
  [(BKScrubberCalloutView *)self setFrame:v89.origin.x, v89.origin.y, v89.size.width, v89.size.height];
}

@end