@interface ZWLensChromeView
- (CGRect)previousResizeBounds;
- (ZWLensChromeView)initWithFrame:(CGRect)a3;
- (id)accessibilityElements;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)showLensResizingHandles:(BOOL)a3 animated:(BOOL)a4;
- (void)updateChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateCornerRadii;
@end

@implementation ZWLensChromeView

- (ZWLensChromeView)initWithFrame:(CGRect)a3
{
  v54.receiver = self;
  v54.super_class = ZWLensChromeView;
  v3 = [(ZWLensChromeView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ZWLensChromeView *)v3 layer];
    if (ZWEnableLensEyeCandy() && ZWUseVibrantBlendModes())
    {
      v6 = objc_alloc_init(CABackdropLayer);
      [v6 setEnabled:1];
      [v6 setAllowsHitTesting:0];
      [v6 setMarginWidth:12.0];
      [v6 setMasksToBounds:0];
      [(ZWLensChromeView *)v4 setBackdropLayer:v6];
      v7 = [(ZWLensChromeView *)v4 layer];
      [v7 addSublayer:v6];

      v8 = +[CALayer layer];
      v9 = [(ZWLensChromeView *)v4 backdropLayer];
      [v9 setMask:v8];

      v10 = +[CAShapeLayer layer];
      [(ZWLensChromeView *)v4 setBackdropMaskShapeLayer:v10];

      v11 = +[CAShapeLayer layer];
      [(ZWLensChromeView *)v4 setBackdropResizingMaskLayer:v11];

      v12 = +[UIColor whiteColor];
      v13 = [v12 CGColor];
      v14 = [(ZWLensChromeView *)v4 backdropResizingMaskLayer];
      [v14 setBackgroundColor:v13];

      v15 = [(ZWLensChromeView *)v4 backdropResizingMaskLayer];
      [v15 setOpacity:0.0];

      v16 = +[CAShapeLayer layer];
      [(ZWLensChromeView *)v4 setBackdropGrabberMaskLayer:v16];

      v17 = +[UIColor whiteColor];
      v18 = [v17 CGColor];
      v19 = [(ZWLensChromeView *)v4 backdropGrabberMaskLayer];
      [v19 setBackgroundColor:v18];

      v20 = [(ZWLensChromeView *)v4 backdropGrabberMaskLayer];
      [v20 setCornerRadius:5.0];

      v21 = [(ZWLensChromeView *)v4 backdropLayer];
      v22 = [v21 mask];
      v23 = [(ZWLensChromeView *)v4 backdropMaskShapeLayer];
      [v22 addSublayer:v23];

      v24 = [(ZWLensChromeView *)v4 backdropLayer];
      v25 = [v24 mask];
      v26 = [(ZWLensChromeView *)v4 backdropGrabberMaskLayer];
      [v25 addSublayer:v26];

      v27 = [(ZWLensChromeView *)v4 backdropLayer];
      v28 = [v27 mask];
      v29 = [(ZWLensChromeView *)v4 backdropResizingMaskLayer];
      [v28 addSublayer:v29];

      v5 = v6;
    }

    v30 = +[CAShapeLayer layer];
    [(ZWLensChromeView *)v4 setChromeInnerBorderLayer:v30];
    [v5 addSublayer:v30];
    v31 = +[UIColor clearColor];
    [v30 setFillColor:{objc_msgSend(v31, "CGColor")}];

    v32 = ZWLensInnerColor();
    [v30 setStrokeColor:{objc_msgSend(v32, "CGColor")}];

    [v30 setLineWidth:ZWLensInnerBorderWidth()];
    v33 = kCAFilterPlusL;
    v34 = [CAFilter filterWithType:kCAFilterPlusL];
    [v30 setCompositingFilter:v34];

    v35 = objc_alloc_init(CALayer);
    v36 = ZWLensInnerColor();
    [v35 setBackgroundColor:{objc_msgSend(v36, "CGColor")}];

    [v35 setMasksToBounds:1];
    v37 = [CAFilter filterWithType:v33];
    [v35 setCompositingFilter:v37];

    [(ZWLensChromeView *)v4 setGrabberOverlayLayer:v35];
    v38 = [(ZWLensChromeView *)v4 grabberOverlayLayer];
    [v38 setCornerRadius:5.0];

    [v5 addSublayer:v35];
    v39 = +[CAShapeLayer layer];
    [(ZWLensChromeView *)v4 setChromeOuterBorderLayer:v39];
    [v5 addSublayer:v39];
    v40 = +[UIColor clearColor];
    [v39 setFillColor:{objc_msgSend(v40, "CGColor")}];

    v41 = ZWLensOuterColor();
    [v39 setStrokeColor:{objc_msgSend(v41, "CGColor")}];

    [v39 setLineWidth:ZWLensOuterBorderWidth()];
    v42 = [CAFilter filterWithType:kCAFilterPlusD];
    [v39 setCompositingFilter:v42];

    v43 = +[CAShapeLayer layer];
    [(ZWLensChromeView *)v4 setLensResizingHandlesLayer:v43];
    [v43 setOpacity:0.0];
    v44 = ZWLensInnerColor();
    [v43 setFillColor:{objc_msgSend(v44, "CGColor")}];

    v45 = [CAFilter filterWithType:v33];
    [v43 setCompositingFilter:v45];

    v46 = [(ZWLensChromeView *)v4 layer];
    [v46 addSublayer:v43];

    v47 = +[CAShapeLayer layer];

    [(ZWLensChromeView *)v4 setTouchStealerShapeLayer:v47];
    LODWORD(v48) = 1.0;
    [v47 setOpacity:v48];
    v49 = +[UIColor blackColor];
    v50 = [v49 colorWithAlphaComponent:0.00392156863];
    [v47 setStrokeColor:{objc_msgSend(v50, "CGColor")}];

    v51 = +[UIColor clearColor];
    [v47 setFillColor:{objc_msgSend(v51, "CGColor")}];

    [v47 setLineWidth:ZWZoomLensBorderThicknessForTouches()];
    v52 = [(ZWLensChromeView *)v4 layer];
    [v52 addSublayer:v47];
  }

  return v4;
}

- (void)layoutSubviews
{
  v112.receiver = self;
  v112.super_class = ZWLensChromeView;
  [(ZWLensChromeView *)&v112 layoutSubviews];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(ZWLensChromeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ZWLensChromeView *)self chromeInnerBorderLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(ZWLensChromeView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(ZWLensChromeView *)self chromeOuterBorderLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(ZWLensChromeView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(ZWLensChromeView *)self lensResizingHandlesLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(ZWLensChromeView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(ZWLensChromeView *)self backdropLayer];
  v39 = [v38 mask];
  [v39 setFrame:{v31, v33, v35, v37}];

  [(ZWLensChromeView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(ZWLensChromeView *)self backdropResizingMaskLayer];
  [v48 setFrame:{v41, v43, v45, v47}];

  [(ZWLensChromeView *)self bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v57 setFrame:{v50, v52, v54, v56}];

  [(ZWLensChromeView *)self bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = [(ZWLensChromeView *)self touchStealerShapeLayer];
  [v66 setFrame:{v59, v61, v63, v65}];

  [(ZWLensChromeView *)self bounds];
  v67 = [UIBezierPath bezierPathWithRect:?];
  v68 = [v67 CGPath];
  v69 = [(ZWLensChromeView *)self touchStealerShapeLayer];
  [v69 setPath:v68];

  [(ZWLensChromeView *)self updateCornerRadii];
  [(ZWLensChromeView *)self bounds];
  v70 = CGRectGetMidX(v113) + -23.0;
  [(ZWLensChromeView *)self bounds];
  v71 = CGRectGetMaxY(v114) + -5.0;
  v72 = [(ZWLensChromeView *)self grabberOverlayLayer];
  [v72 setFrame:{v70, v71, 46.0, 10.0}];

  v73 = [(ZWLensChromeView *)self grabberOverlayLayer];
  [v73 frame];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = [(ZWLensChromeView *)self backdropGrabberMaskLayer];
  [v82 setFrame:{v75, v77, v79, v81}];

  [(ZWLensChromeView *)self bounds];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = [(ZWLensChromeView *)self backdropLayer];
  [v91 setFrame:{v84, v86, v88, v90}];

  [(ZWLensChromeView *)self bounds];
  v96 = ZWResizeGrabberPath(v92, v93, v94, v95);
  v97 = [v96 CGPath];
  v98 = [(ZWLensChromeView *)self lensResizingHandlesLayer];
  [v98 setPath:v97];

  [(ZWLensChromeView *)self bounds];
  v103 = ZWResizeGrabberPath(v99, v100, v101, v102);
  v104 = [v103 CGPath];
  v105 = [(ZWLensChromeView *)self backdropResizingMaskLayer];
  [v105 setPath:v104];

  v106 = +[UIColor whiteColor];
  v107 = [v106 CGColor];
  v108 = [(ZWLensChromeView *)self backdropResizingMaskLayer];
  [v108 setFillColor:v107];

  v109 = +[UIColor clearColor];
  v110 = [v109 CGColor];
  v111 = [(ZWLensChromeView *)self backdropResizingMaskLayer];
  [v111 setBackgroundColor:v110];

  +[CATransaction commit];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ZWLensChromeView;
  [(ZWLensChromeView *)&v3 didMoveToWindow];
  [(ZWLensChromeView *)self updateCornerRadii];
}

- (void)updateCornerRadii
{
  v3 = [(ZWLensChromeView *)self window];
  [(ZWLensChromeView *)self bounds];
  [v3 convertRect:self fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(ZWLensChromeView *)self traitCollection];
  [v12 displayCornerRadius];
  v14 = v13;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v15 = [(ZWLensChromeView *)self window];
  [v15 bounds];
  ZWCornerRadiiForFrameInContainer(&v63, v5, v7, v9, v11, v16, v17, v18, v19, v14);

  [(ZWLensChromeView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(ZWLensChromeView *)self showingResizeHandles];
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v29 = ZWOuterLensBorderForBounds(v28, &v59, v21, v23, v25, v27);
  [(ZWLensChromeView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(ZWLensChromeView *)self showingResizeHandles];
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v39 = ZWInnerLensBorderForBounds(v38, &v59, v31, v33, v35, v37);
  v40 = [v29 CGPath];
  v41 = [(ZWLensChromeView *)self chromeOuterBorderLayer];
  [v41 setPath:v40];

  v42 = [v39 CGPath];
  v43 = [(ZWLensChromeView *)self chromeInnerBorderLayer];
  [v43 setPath:v42];

  v44 = [v39 copy];
  [v44 appendPath:v29];
  v45 = [v44 CGPath];
  v46 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v46 setPath:v45];

  v47 = +[UIColor clearColor];
  v48 = [v47 CGColor];
  v49 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v49 setFillColor:v48];

  v50 = +[UIColor whiteColor];
  v51 = [v50 CGColor];
  v52 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v52 setStrokeColor:v51];

  v53 = ZWLensInnerBorderWidth();
  v54 = ZWLensOuterBorderWidth();
  if (v53 < v54)
  {
    v53 = v54;
  }

  v55 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v55 setLineWidth:v53];

  v56 = +[UIColor clearColor];
  v57 = [v56 CGColor];
  v58 = [(ZWLensChromeView *)self backdropMaskShapeLayer];
  [v58 setBackgroundColor:v57];
}

- (void)updateChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = 0.0;
  if (v5)
  {
    v9 = ZWDefaultFadeAnimationDuration();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __63__ZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke;
  v13[3] = &unk_78BD0;
  v13[4] = self;
  v14 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __63__ZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke_2;
  v11[3] = &unk_78DB8;
  v12 = v8;
  v10 = v8;
  [UIView animateWithDuration:v13 animations:v11 completion:v9];
}

id __63__ZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __63__ZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showLensResizingHandles:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:!v4];
  v7 = [(ZWLensChromeView *)self lensResizingHandlesLayer];
  v8 = v7;
  if (v5)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v5)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v7 setOpacity:COERCE_DOUBLE(LODWORD(v9))];

  v11 = [(ZWLensChromeView *)self grabberOverlayLayer];
  *&v12 = v10;
  [v11 setOpacity:v12];

  v13 = [(ZWLensChromeView *)self backdropResizingMaskLayer];
  *&v14 = v9;
  [v13 setOpacity:v14];

  v15 = [(ZWLensChromeView *)self backdropGrabberMaskLayer];
  *&v16 = v10;
  [v15 setOpacity:v16];

  [(ZWLensChromeView *)self setShowingResizeHandles:v5];
  [(ZWLensChromeView *)self layoutSubviews];

  +[CATransaction commit];
}

- (id)accessibilityElements
{
  v3 = ZWZoomLensBorderThicknessForTouches();
  [(ZWLensChromeView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = __41__ZWLensChromeView_accessibilityElements__block_invoke;
  v83[3] = &__block_descriptor_40_e42__CGRect__CGPoint_dd__CGSize_dd__24__0d8d16l;
  *&v83[4] = v3;
  v12 = objc_retainBlock(v83);
  if ([(ZWLensChromeView *)self showingResizeHandles])
  {
    v13 = [(ZWLensChromeView *)self resizeElements];

    if (!v13)
    {
      v14 = +[NSMutableArray array];
      v15 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v16 = ZWLocString(@"ZW_RESIZE_HANDLE_UPPER_LEFT");
      [v15 setAccessibilityLabel:v16];

      v77 = v15;
      [v14 addObject:v15];
      v17 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v18 = ZWLocString(@"ZW_RESIZE_HANDLE_UPPER");
      [v17 setAccessibilityLabel:v18];

      v75 = v17;
      [v14 addObject:v17];
      v19 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v20 = ZWLocString(@"ZW_RESIZE_HANDLE_UPPER_RIGHT");
      [v19 setAccessibilityLabel:v20];

      v73 = v19;
      [v14 addObject:v19];
      v21 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v22 = ZWLocString(@"ZW_RESIZE_HANDLE_LEFT");
      [v21 setAccessibilityLabel:v22];

      v71 = v21;
      [v14 addObject:v21];
      v23 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v24 = ZWLocString(@"ZW_RESIZE_HANDLE_RIGHT");
      [v23 setAccessibilityLabel:v24];

      v69 = v23;
      [v14 addObject:v23];
      v25 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v26 = ZWLocString(@"ZW_RESIZE_HANDLE_LOWER_LEFT");
      [v25 setAccessibilityLabel:v26];

      v68 = v25;
      [v14 addObject:v25];
      v27 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v28 = ZWLocString(@"ZW_RESIZE_HANDLE_LOWER");
      [v27 setAccessibilityLabel:v28];

      v67 = v27;
      [v14 addObject:v27];
      v29 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:self];
      v30 = ZWLocString(@"ZW_RESIZE_HANDLE_LOWER_RIGHT");
      [v29 setAccessibilityLabel:v30];

      [v14 addObject:v29];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v31 = v14;
      v32 = [v31 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v80;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v80 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v79 + 1) + 8 * i);
            [v36 setIsAccessibilityElement:1];
            v37 = ZWLocString(@"ZW_RESIZE_HANDLE_HINT");
            [v36 setAccessibilityHint:v37];
          }

          v33 = [v31 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v33);
      }

      [(ZWLensChromeView *)self setResizeElements:v31];
    }

    [(ZWLensChromeView *)self previousResizeBounds];
    v119.origin.x = v5;
    v119.origin.y = v7;
    v119.size.width = v9;
    v119.size.height = v11;
    if (!CGRectEqualToRect(v86, v119))
    {
      v38 = [(ZWLensChromeView *)self resizeElements];
      v70 = [v38 objectAtIndexedSubscript:0];

      v39 = [(ZWLensChromeView *)self resizeElements];
      v40 = [v39 objectAtIndexedSubscript:1];

      v41 = [(ZWLensChromeView *)self resizeElements];
      v42 = [v41 objectAtIndexedSubscript:2];

      v43 = [(ZWLensChromeView *)self resizeElements];
      v76 = [v43 objectAtIndexedSubscript:3];

      v44 = [(ZWLensChromeView *)self resizeElements];
      v45 = [v44 objectAtIndexedSubscript:4];

      v46 = [(ZWLensChromeView *)self resizeElements];
      v72 = [v46 objectAtIndexedSubscript:5];

      v47 = [(ZWLensChromeView *)self resizeElements];
      v74 = [v47 objectAtIndexedSubscript:6];

      v48 = [(ZWLensChromeView *)self resizeElements];
      v78 = [v48 objectAtIndexedSubscript:7];

      v87.origin.x = v5;
      v87.origin.y = v7;
      v87.size.width = v9;
      v87.size.height = v11;
      MinX = CGRectGetMinX(v87);
      v88.origin.x = v5;
      v88.origin.y = v7;
      v88.size.width = v9;
      v88.size.height = v11;
      MinY = CGRectGetMinY(v88);
      v89.origin.x = (v12[2])(v12, MinX, MinY);
      v90 = UIAccessibilityConvertFrameToScreenCoordinates(v89, &self->super);
      [v70 setAccessibilityFrame:{v90.origin.x, v90.origin.y, v90.size.width, v90.size.height}];
      v91.origin.x = v5;
      v91.origin.y = v7;
      v91.size.width = v9;
      v91.size.height = v11;
      MidX = CGRectGetMidX(v91);
      v92.origin.x = v5;
      v92.origin.y = v7;
      v92.size.width = v9;
      v92.size.height = v11;
      v52 = CGRectGetMinY(v92);
      v93.origin.x = (v12[2])(v12, MidX, v52);
      v94 = UIAccessibilityConvertFrameToScreenCoordinates(v93, &self->super);
      [v40 setAccessibilityFrame:{v94.origin.x, v94.origin.y, v94.size.width, v94.size.height}];
      v95.origin.x = v5;
      v95.origin.y = v7;
      v95.size.width = v9;
      v95.size.height = v11;
      MaxX = CGRectGetMaxX(v95);
      v96.origin.x = v5;
      v96.origin.y = v7;
      v96.size.width = v9;
      v96.size.height = v11;
      v54 = CGRectGetMinY(v96);
      v97.origin.x = (v12[2])(v12, MaxX, v54);
      v98 = UIAccessibilityConvertFrameToScreenCoordinates(v97, &self->super);
      [v42 setAccessibilityFrame:{v98.origin.x, v98.origin.y, v98.size.width, v98.size.height}];
      v99.origin.x = v5;
      v99.origin.y = v7;
      v99.size.width = v9;
      v99.size.height = v11;
      v55 = CGRectGetMaxX(v99);
      v100.origin.x = v5;
      v100.origin.y = v7;
      v100.size.width = v9;
      v100.size.height = v11;
      MidY = CGRectGetMidY(v100);
      v101.origin.x = (v12[2])(v12, v55, MidY);
      v102 = UIAccessibilityConvertFrameToScreenCoordinates(v101, &self->super);
      [v45 setAccessibilityFrame:{v102.origin.x, v102.origin.y, v102.size.width, v102.size.height}];
      v103.origin.x = v5;
      v103.origin.y = v7;
      v103.size.width = v9;
      v103.size.height = v11;
      v57 = CGRectGetMinX(v103);
      v104.origin.x = v5;
      v104.origin.y = v7;
      v104.size.width = v9;
      v104.size.height = v11;
      MaxY = CGRectGetMaxY(v104);
      v105.origin.x = (v12[2])(v12, v57, MaxY);
      v106 = UIAccessibilityConvertFrameToScreenCoordinates(v105, &self->super);
      [v72 setAccessibilityFrame:{v106.origin.x, v106.origin.y, v106.size.width, v106.size.height}];
      v107.origin.x = v5;
      v107.origin.y = v7;
      v107.size.width = v9;
      v107.size.height = v11;
      v59 = CGRectGetMinX(v107);
      v108.origin.x = v5;
      v108.origin.y = v7;
      v108.size.width = v9;
      v108.size.height = v11;
      v60 = CGRectGetMidY(v108);
      v109.origin.x = (v12[2])(v12, v59, v60);
      v110 = UIAccessibilityConvertFrameToScreenCoordinates(v109, &self->super);
      [v76 setAccessibilityFrame:{v110.origin.x, v110.origin.y, v110.size.width, v110.size.height}];
      v111.origin.x = v5;
      v111.origin.y = v7;
      v111.size.width = v9;
      v111.size.height = v11;
      v61 = CGRectGetMidX(v111);
      v112.origin.x = v5;
      v112.origin.y = v7;
      v112.size.width = v9;
      v112.size.height = v11;
      v62 = CGRectGetMaxY(v112);
      v113.origin.x = (v12[2])(v12, v61, v62);
      v114 = UIAccessibilityConvertFrameToScreenCoordinates(v113, &self->super);
      [v74 setAccessibilityFrame:{v114.origin.x, v114.origin.y, v114.size.width, v114.size.height}];
      v115.origin.x = v5;
      v115.origin.y = v7;
      v115.size.width = v9;
      v115.size.height = v11;
      v63 = CGRectGetMaxX(v115);
      v116.origin.x = v5;
      v116.origin.y = v7;
      v116.size.width = v9;
      v116.size.height = v11;
      v64 = CGRectGetMaxY(v116);
      v117.origin.x = (v12[2])(v12, v63, v64);
      v118 = UIAccessibilityConvertFrameToScreenCoordinates(v117, &self->super);
      [v78 setAccessibilityFrame:{v118.origin.x, v118.origin.y, v118.size.width, v118.size.height}];
      [(ZWLensChromeView *)self setPreviousResizeBounds:v5, v7, v9, v11];
    }

    v65 = [(ZWLensChromeView *)self resizeElements];
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

- (CGRect)previousResizeBounds
{
  x = self->_previousResizeBounds.origin.x;
  y = self->_previousResizeBounds.origin.y;
  width = self->_previousResizeBounds.size.width;
  height = self->_previousResizeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end