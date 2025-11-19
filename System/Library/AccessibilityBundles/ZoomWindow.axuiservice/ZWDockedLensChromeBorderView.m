@interface ZWDockedLensChromeBorderView
- (ZWDockedLensChromeBorderView)initWithFrame:(CGRect)a3;
- (id)innerBorderPathForCurrentDockPositionForBounds:(CGRect)a3;
- (id)outerBorderPathForCurrentDockPositionForBounds:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ZWDockedLensChromeBorderView

- (ZWDockedLensChromeBorderView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = ZWDockedLensChromeBorderView;
  v3 = [(ZWDockedLensChromeBorderView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ZWDockedLensChromeBorderView *)v3 layer];
    v6 = +[CAShapeLayer layer];
    [(ZWDockedLensChromeBorderView *)v4 setChromeInnerBorderLayer:v6];
    [v5 addSublayer:v6];
    v7 = +[UIColor clearColor];
    [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

    v8 = ZWLensInnerColor();
    [v6 setStrokeColor:{objc_msgSend(v8, "CGColor")}];

    [v6 setLineWidth:ZWLensInnerBorderWidth()];
    v9 = [CAFilter filterWithType:kCAFilterPlusL];
    [v6 setCompositingFilter:v9];

    v10 = +[CAShapeLayer layer];
    [(ZWDockedLensChromeBorderView *)v4 setChromeOuterBorderLayer:v10];
    [v5 addSublayer:v10];
    v11 = +[UIColor clearColor];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = ZWLensOuterColor();
    [v10 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

    [v10 setLineWidth:ZWLensOuterBorderWidth()];
    v13 = [CAFilter filterWithType:kCAFilterPlusD];
    [v10 setCompositingFilter:v13];

    v14 = +[CAShapeLayer layer];
    [(ZWDockedLensChromeBorderView *)v4 setTouchStealerShapeLayer:v14];
    LODWORD(v15) = 1.0;
    [v14 setOpacity:v15];
    v16 = +[UIColor blackColor];
    v17 = [v16 colorWithAlphaComponent:0.00392156863];
    [v14 setStrokeColor:{objc_msgSend(v17, "CGColor")}];

    v18 = +[UIColor clearColor];
    [v14 setFillColor:{objc_msgSend(v18, "CGColor")}];

    [v14 setLineWidth:ZWZoomLensBorderThicknessForTouches()];
    v19 = [(ZWDockedLensChromeBorderView *)v4 layer];
    [v19 addSublayer:v14];
  }

  return v4;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = ZWDockedLensChromeBorderView;
  [(ZWDockedLensChromeBorderView *)&v39 layoutSubviews];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(ZWDockedLensChromeBorderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ZWDockedLensChromeBorderView *)self chromeInnerBorderLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(ZWDockedLensChromeBorderView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(ZWDockedLensChromeBorderView *)self chromeOuterBorderLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(ZWDockedLensChromeBorderView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(ZWDockedLensChromeBorderView *)self touchStealerShapeLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(ZWDockedLensChromeBorderView *)self bounds];
  v30 = [UIBezierPath bezierPathWithRect:?];
  v31 = [v30 CGPath];
  v32 = [(ZWDockedLensChromeBorderView *)self touchStealerShapeLayer];
  [v32 setPath:v31];

  [(ZWDockedLensChromeBorderView *)self bounds];
  v33 = [(ZWDockedLensChromeBorderView *)self outerBorderPathForCurrentDockPositionForBounds:?];
  [(ZWDockedLensChromeBorderView *)self bounds];
  v34 = [(ZWDockedLensChromeBorderView *)self innerBorderPathForCurrentDockPositionForBounds:?];
  v35 = [v33 CGPath];
  v36 = [(ZWDockedLensChromeBorderView *)self chromeOuterBorderLayer];
  [v36 setPath:v35];

  v37 = [v34 CGPath];
  v38 = [(ZWDockedLensChromeBorderView *)self chromeInnerBorderLayer];
  [v38 setPath:v37];

  +[CATransaction commit];
}

- (id)innerBorderPathForCurrentDockPositionForBounds:(CGRect)a3
{
  v4 = a3.origin.x + 2.0;
  v5 = a3.origin.y + 2.0;
  v6 = a3.size.width + -4.0;
  v7 = a3.size.height + -4.0;
  v8 = objc_alloc_init(UIBezierPath);
  v9 = [(ZWDockedLensChromeBorderView *)self dockPosition];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v77.origin.x = v4;
      v77.origin.y = v5;
      v77.size.width = v6;
      v77.size.height = v7;
      MinX = CGRectGetMinX(v77);
      v78.origin.x = v4;
      v78.origin.y = v5;
      v78.size.width = v6;
      v78.size.height = v7;
      [v8 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMaxY(v78) endAngle:0.0 clockwise:1.57079633];
      v79.origin.x = v4;
      v79.origin.y = v5;
      v79.size.width = v6;
      v79.size.height = v7;
      v34 = CGRectGetMinX(v79);
      v80.origin.x = v4;
      v80.origin.y = v5;
      v80.size.width = v6;
      v80.size.height = v7;
      [v8 addLineToPoint:{v34, CGRectGetMidY(v80) + 25.0 + 1.0}];
      v81.origin.x = v4;
      v81.origin.y = v5;
      v81.size.width = v6;
      v81.size.height = v7;
      v35 = CGRectGetMinX(v81) + -1.0;
      v82.origin.x = v4;
      v82.origin.y = v5;
      v82.size.width = v6;
      v82.size.height = v7;
      [v8 addArcWithCenter:0 radius:v35 startAngle:CGRectGetMidY(v82) + 25.0 + -6.5 + 1.0 endAngle:6.5 clockwise:{1.57079633, 0.0}];
      v83.origin.x = v4;
      v83.origin.y = v5;
      v83.size.width = v6;
      v83.size.height = v7;
      v36 = CGRectGetMinX(v83) + -1.0;
      v84.origin.x = v4;
      v84.origin.y = v5;
      v84.size.width = v6;
      v84.size.height = v7;
      [v8 addArcWithCenter:0 radius:v36 startAngle:CGRectGetMidY(v84) + -25.0 + 6.5 + -1.0 endAngle:6.5 clockwise:{0.0, -1.57079633}];
      v85.origin.x = v4;
      v85.origin.y = v5;
      v85.size.width = v6;
      v85.size.height = v7;
      v37 = CGRectGetMinX(v85);
      v86.origin.x = v4;
      v86.origin.y = v5;
      v86.size.width = v6;
      v86.size.height = v7;
      [v8 addLineToPoint:{v37, CGRectGetMidY(v86) + -25.0 + -1.0}];
      v87.origin.x = v4;
      v87.origin.y = v5;
      v87.size.width = v6;
      v87.size.height = v7;
      v38 = CGRectGetMinX(v87);
      v88.origin.x = v4;
      v88.origin.y = v5;
      v88.size.width = v6;
      v88.size.height = v7;
      MinY = CGRectGetMinY(v88);
      v17 = v8;
      v18 = v38;
      v19 = 3.14159265;
LABEL_11:
      v32 = -1.57079633;
      goto LABEL_12;
    }

    if (v9 != 3)
    {
      goto LABEL_13;
    }

    v53.origin.x = v4;
    v53.origin.y = v5;
    v53.size.width = v6;
    v53.size.height = v7;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v4;
    v54.origin.y = v5;
    v54.size.width = v6;
    v54.size.height = v7;
    [v8 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v54) endAngle:0.0 clockwise:0.0];
    v55.origin.x = v4;
    v55.origin.y = v5;
    v55.size.width = v6;
    v55.size.height = v7;
    v21 = CGRectGetMidX(v55) + 25.0 + 1.0;
    v56.origin.x = v4;
    v56.origin.y = v5;
    v56.size.width = v6;
    v56.size.height = v7;
    [v8 addLineToPoint:{v21, CGRectGetMinY(v56)}];
    v57.origin.x = v4;
    v57.origin.y = v5;
    v57.size.width = v6;
    v57.size.height = v7;
    v22 = CGRectGetMidX(v57) + 25.0 + -6.5 + 1.0;
    v58.origin.x = v4;
    v58.origin.y = v5;
    v58.size.width = v6;
    v58.size.height = v7;
    [v8 addArcWithCenter:0 radius:v22 startAngle:CGRectGetMinY(v58) + 1.0 endAngle:6.5 clockwise:{0.0, -1.57079633}];
    v59.origin.x = v4;
    v59.origin.y = v5;
    v59.size.width = v6;
    v59.size.height = v7;
    v23 = CGRectGetMidX(v59) + -25.0 + 6.5 + -1.0;
    v60.origin.x = v4;
    v60.origin.y = v5;
    v60.size.width = v6;
    v60.size.height = v7;
    [v8 addArcWithCenter:0 radius:v23 startAngle:CGRectGetMinY(v60) + 1.0 endAngle:6.5 clockwise:{-1.57079633, -3.14159265}];
    v61.origin.x = v4;
    v61.origin.y = v5;
    v61.size.width = v6;
    v61.size.height = v7;
    v24 = CGRectGetMidX(v61) + -25.0 + -1.0;
    v62.origin.x = v4;
    v62.origin.y = v5;
    v62.size.width = v6;
    v62.size.height = v7;
    [v8 addLineToPoint:{v24, CGRectGetMinY(v62)}];
    v63.origin.x = v4;
    v63.origin.y = v5;
    v63.size.width = v6;
    v63.size.height = v7;
    v25 = CGRectGetMinX(v63);
    v64.origin.x = v4;
    v64.origin.y = v5;
    v64.size.width = v6;
    v64.size.height = v7;
    MaxY = CGRectGetMinY(v64);
  }

  else
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      v41.origin.x = v4;
      v41.origin.y = v5;
      v41.size.width = v6;
      v41.size.height = v7;
      v10 = CGRectGetMaxX(v41);
      v42.origin.x = v4;
      v42.origin.y = v5;
      v42.size.width = v6;
      v42.size.height = v7;
      [v8 addArcWithCenter:1 radius:v10 startAngle:CGRectGetMaxY(v42) endAngle:0.0 clockwise:1.57079633];
      v43.origin.x = v4;
      v43.origin.y = v5;
      v43.size.width = v6;
      v43.size.height = v7;
      v11 = CGRectGetMaxX(v43);
      v44.origin.x = v4;
      v44.origin.y = v5;
      v44.size.width = v6;
      v44.size.height = v7;
      [v8 addLineToPoint:{v11, CGRectGetMidY(v44) + 25.0 + 1.0}];
      v45.origin.x = v4;
      v45.origin.y = v5;
      v45.size.width = v6;
      v45.size.height = v7;
      v12 = CGRectGetMaxX(v45) + 1.0;
      v46.origin.x = v4;
      v46.origin.y = v5;
      v46.size.width = v6;
      v46.size.height = v7;
      [v8 addArcWithCenter:1 radius:v12 startAngle:CGRectGetMidY(v46) + 25.0 + -6.5 + 1.0 endAngle:6.5 clockwise:{1.57079633, 3.14159265}];
      v47.origin.x = v4;
      v47.origin.y = v5;
      v47.size.width = v6;
      v47.size.height = v7;
      v13 = CGRectGetMaxX(v47) + 1.0;
      v48.origin.x = v4;
      v48.origin.y = v5;
      v48.size.width = v6;
      v48.size.height = v7;
      [v8 addArcWithCenter:1 radius:v13 startAngle:CGRectGetMidY(v48) + -25.0 + 6.5 + -1.0 endAngle:6.5 clockwise:{3.14159265, -1.57079633}];
      v49.origin.x = v4;
      v49.origin.y = v5;
      v49.size.width = v6;
      v49.size.height = v7;
      v14 = CGRectGetMaxX(v49);
      v50.origin.x = v4;
      v50.origin.y = v5;
      v50.size.width = v6;
      v50.size.height = v7;
      [v8 addLineToPoint:{v14, CGRectGetMidY(v50) + -25.0 + -1.0}];
      v51.origin.x = v4;
      v51.origin.y = v5;
      v51.size.width = v6;
      v51.size.height = v7;
      v15 = CGRectGetMaxX(v51);
      v52.origin.x = v4;
      v52.origin.y = v5;
      v52.size.width = v6;
      v52.size.height = v7;
      MinY = CGRectGetMinY(v52);
      v17 = v8;
      v18 = v15;
      v19 = 3.14159265;
      goto LABEL_11;
    }

    v65.origin.x = v4;
    v65.origin.y = v5;
    v65.size.width = v6;
    v65.size.height = v7;
    v27 = CGRectGetMaxX(v65);
    v66.origin.x = v4;
    v66.origin.y = v5;
    v66.size.width = v6;
    v66.size.height = v7;
    [v8 addArcWithCenter:1 radius:v27 startAngle:CGRectGetMaxY(v66) endAngle:0.0 clockwise:0.0];
    v67.origin.x = v4;
    v67.origin.y = v5;
    v67.size.width = v6;
    v67.size.height = v7;
    v28 = CGRectGetMidX(v67) + 25.0 + 1.0;
    v68.origin.x = v4;
    v68.origin.y = v5;
    v68.size.width = v6;
    v68.size.height = v7;
    [v8 addLineToPoint:{v28, CGRectGetMaxY(v68)}];
    v69.origin.x = v4;
    v69.origin.y = v5;
    v69.size.width = v6;
    v69.size.height = v7;
    v29 = CGRectGetMidX(v69) + 25.0 + -6.5 + 1.0;
    v70.origin.x = v4;
    v70.origin.y = v5;
    v70.size.width = v6;
    v70.size.height = v7;
    [v8 addArcWithCenter:0 radius:v29 startAngle:CGRectGetMaxY(v70) + 1.0 endAngle:6.5 clockwise:{0.0, -1.57079633}];
    v71.origin.x = v4;
    v71.origin.y = v5;
    v71.size.width = v6;
    v71.size.height = v7;
    v30 = CGRectGetMidX(v71) + -25.0 + 6.5 + -1.0;
    v72.origin.x = v4;
    v72.origin.y = v5;
    v72.size.width = v6;
    v72.size.height = v7;
    [v8 addArcWithCenter:0 radius:v30 startAngle:CGRectGetMaxY(v72) + 1.0 endAngle:6.5 clockwise:{-1.57079633, -3.14159265}];
    v73.origin.x = v4;
    v73.origin.y = v5;
    v73.size.width = v6;
    v73.size.height = v7;
    v31 = CGRectGetMidX(v73) + -25.0 + -1.0;
    v74.origin.x = v4;
    v74.origin.y = v5;
    v74.size.width = v6;
    v74.size.height = v7;
    [v8 addLineToPoint:{v31, CGRectGetMaxY(v74)}];
    v75.origin.x = v4;
    v75.origin.y = v5;
    v75.size.width = v6;
    v75.size.height = v7;
    v25 = CGRectGetMinX(v75);
    v76.origin.x = v4;
    v76.origin.y = v5;
    v76.size.width = v6;
    v76.size.height = v7;
    MaxY = CGRectGetMaxY(v76);
  }

  MinY = MaxY;
  v32 = 3.14159265;
  v17 = v8;
  v18 = v25;
  v19 = 1.57079633;
LABEL_12:
  [v17 addArcWithCenter:1 radius:v18 startAngle:MinY endAngle:0.0 clockwise:{v19, v32}];
LABEL_13:

  return v8;
}

- (id)outerBorderPathForCurrentDockPositionForBounds:(CGRect)a3
{
  [(ZWDockedLensChromeBorderView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[UIBezierPath bezierPath];
  v13 = [(ZWDockedLensChromeBorderView *)self dockPosition];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v90.origin.x = v5;
      v90.origin.y = v7;
      v90.size.width = v9;
      v90.size.height = v11;
      MinX = CGRectGetMinX(v90);
      v91.origin.x = v5;
      v91.origin.y = v7;
      v91.size.width = v9;
      v91.size.height = v11;
      [v12 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMaxY(v91) endAngle:0.0 clockwise:{1.57079633, 3.14159265}];
      v92.origin.x = v5;
      v92.origin.y = v7;
      v92.size.width = v9;
      v92.size.height = v11;
      v41 = CGRectGetMinX(v92);
      v93.origin.x = v5;
      v93.origin.y = v7;
      v93.size.width = v9;
      v93.size.height = v11;
      [v12 addArcWithCenter:0 radius:v41 startAngle:CGRectGetMidY(v93) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{1.57079633, 0.0}];
      v94.origin.x = v5;
      v94.origin.y = v7;
      v94.size.width = v9;
      v94.size.height = v11;
      v42 = CGRectGetMinX(v94);
      v95.origin.x = v5;
      v95.origin.y = v7;
      v95.size.width = v9;
      v95.size.height = v11;
      [v12 addArcWithCenter:0 radius:v42 startAngle:CGRectGetMidY(v95) + -25.0 + 6.0 + 1.0 endAngle:6.0 clockwise:{0.0, 3.14159265}];
      v96.origin.x = v5;
      v96.origin.y = v7;
      v96.size.width = v9;
      v96.size.height = v11;
      v43 = CGRectGetMinX(v96);
      v97.origin.x = v5;
      v97.origin.y = v7;
      v97.size.width = v9;
      v97.size.height = v11;
      [v12 addArcWithCenter:0 radius:v43 startAngle:CGRectGetMidY(v97) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{3.14159265, 1.57079633}];
      v98.origin.x = v5;
      v98.origin.y = v7;
      v98.size.width = v9;
      v98.size.height = v11;
      v44 = CGRectGetMinX(v98);
      v99.origin.x = v5;
      v99.origin.y = v7;
      v99.size.width = v9;
      v99.size.height = v11;
      [v12 addArcWithCenter:0 radius:v44 startAngle:CGRectGetMidY(v99) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{1.57079633, 0.0}];
      v100.origin.x = v5;
      v100.origin.y = v7;
      v100.size.width = v9;
      v100.size.height = v11;
      v45 = CGRectGetMinX(v100);
      v101.origin.x = v5;
      v101.origin.y = v7;
      v101.size.width = v9;
      v101.size.height = v11;
      [v12 addArcWithCenter:0 radius:v45 startAngle:CGRectGetMidY(v101) + -25.0 + 6.0 + 1.0 endAngle:6.0 clockwise:{0.0, -1.57079633}];
      v102.origin.x = v5;
      v102.origin.y = v7;
      v102.size.width = v9;
      v102.size.height = v11;
      v20 = CGRectGetMinX(v102);
LABEL_11:
      v46 = v20;
      v103.origin.x = v5;
      v103.origin.y = v7;
      v103.size.width = v9;
      v103.size.height = v11;
      MinY = CGRectGetMinY(v103);
      v39 = 0.0;
      v37 = v12;
      v38 = v46;
      v36 = 1.57079633;
      goto LABEL_12;
    }

    if (v13 != 3)
    {
      goto LABEL_13;
    }

    v62.origin.x = v5;
    v62.origin.y = v7;
    v62.size.width = v9;
    v62.size.height = v11;
    MaxX = CGRectGetMaxX(v62);
    v63.origin.x = v5;
    v63.origin.y = v7;
    v63.size.width = v9;
    v63.size.height = v11;
    [v12 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v63) endAngle:0.0 clockwise:{0.0, 1.57079633}];
    v64.origin.x = v5;
    v64.origin.y = v7;
    v64.size.width = v9;
    v64.size.height = v11;
    v22 = CGRectGetMidX(v64) + 25.0 + -6.0 + -1.0;
    v65.origin.x = v5;
    v65.origin.y = v7;
    v65.size.width = v9;
    v65.size.height = v11;
    [v12 addArcWithCenter:0 radius:v22 startAngle:CGRectGetMinY(v65) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v66.origin.x = v5;
    v66.origin.y = v7;
    v66.size.width = v9;
    v66.size.height = v11;
    v23 = CGRectGetMidX(v66) + -25.0 + 6.0 + 1.0;
    v67.origin.x = v5;
    v67.origin.y = v7;
    v67.size.width = v9;
    v67.size.height = v11;
    [v12 addArcWithCenter:0 radius:v23 startAngle:CGRectGetMinY(v67) endAngle:6.0 clockwise:{-1.57079633, 1.57079633}];
    v68.origin.x = v5;
    v68.origin.y = v7;
    v68.size.width = v9;
    v68.size.height = v11;
    v24 = CGRectGetMidX(v68) + 25.0 + -6.0 + -1.0;
    v69.origin.x = v5;
    v69.origin.y = v7;
    v69.size.width = v9;
    v69.size.height = v11;
    [v12 addArcWithCenter:0 radius:v24 startAngle:CGRectGetMinY(v69) endAngle:6.0 clockwise:{1.57079633, 0.0}];
    v70.origin.x = v5;
    v70.origin.y = v7;
    v70.size.width = v9;
    v70.size.height = v11;
    v25 = CGRectGetMidX(v70) + 25.0 + -6.0 + -1.0;
    v71.origin.x = v5;
    v71.origin.y = v7;
    v71.size.width = v9;
    v71.size.height = v11;
    [v12 addArcWithCenter:0 radius:v25 startAngle:CGRectGetMinY(v71) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v72.origin.x = v5;
    v72.origin.y = v7;
    v72.size.width = v9;
    v72.size.height = v11;
    v26 = CGRectGetMidX(v72) + -25.0 + 6.0 + 1.0;
    v73.origin.x = v5;
    v73.origin.y = v7;
    v73.size.width = v9;
    v73.size.height = v11;
    [v12 addArcWithCenter:0 radius:v26 startAngle:CGRectGetMinY(v73) endAngle:6.0 clockwise:{-1.57079633, -3.14159265}];
    v74.origin.x = v5;
    v74.origin.y = v7;
    v74.size.width = v9;
    v74.size.height = v11;
    v27 = CGRectGetMinX(v74);
    v75.origin.x = v5;
    v75.origin.y = v7;
    v75.size.width = v9;
    v75.size.height = v11;
    MaxY = CGRectGetMinY(v75);
  }

  else
  {
    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_13;
      }

      v49.origin.x = v5;
      v49.origin.y = v7;
      v49.size.width = v9;
      v49.size.height = v11;
      v14 = CGRectGetMaxX(v49);
      v50.origin.x = v5;
      v50.origin.y = v7;
      v50.size.width = v9;
      v50.size.height = v11;
      [v12 addArcWithCenter:1 radius:v14 startAngle:CGRectGetMaxY(v50) endAngle:0.0 clockwise:{1.57079633, 3.14159265}];
      v51.origin.x = v5;
      v51.origin.y = v7;
      v51.size.width = v9;
      v51.size.height = v11;
      v15 = CGRectGetMaxX(v51);
      v52.origin.x = v5;
      v52.origin.y = v7;
      v52.size.width = v9;
      v52.size.height = v11;
      [v12 addArcWithCenter:0 radius:v15 startAngle:CGRectGetMidY(v52) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{1.57079633, 0.0}];
      v53.origin.x = v5;
      v53.origin.y = v7;
      v53.size.width = v9;
      v53.size.height = v11;
      v16 = CGRectGetMaxX(v53);
      v54.origin.x = v5;
      v54.origin.y = v7;
      v54.size.width = v9;
      v54.size.height = v11;
      [v12 addArcWithCenter:0 radius:v16 startAngle:CGRectGetMidY(v54) + -25.0 + 6.0 + 1.0 endAngle:6.0 clockwise:{0.0, 3.14159265}];
      v55.origin.x = v5;
      v55.origin.y = v7;
      v55.size.width = v9;
      v55.size.height = v11;
      v17 = CGRectGetMaxX(v55);
      v56.origin.x = v5;
      v56.origin.y = v7;
      v56.size.width = v9;
      v56.size.height = v11;
      [v12 addArcWithCenter:0 radius:v17 startAngle:CGRectGetMidY(v56) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{3.14159265, 1.57079633}];
      v57.origin.x = v5;
      v57.origin.y = v7;
      v57.size.width = v9;
      v57.size.height = v11;
      v18 = CGRectGetMaxX(v57);
      v58.origin.x = v5;
      v58.origin.y = v7;
      v58.size.width = v9;
      v58.size.height = v11;
      [v12 addArcWithCenter:0 radius:v18 startAngle:CGRectGetMidY(v58) + 25.0 + -6.0 + -1.0 endAngle:6.0 clockwise:{1.57079633, 0.0}];
      v59.origin.x = v5;
      v59.origin.y = v7;
      v59.size.width = v9;
      v59.size.height = v11;
      v19 = CGRectGetMaxX(v59);
      v60.origin.x = v5;
      v60.origin.y = v7;
      v60.size.width = v9;
      v60.size.height = v11;
      [v12 addArcWithCenter:0 radius:v19 startAngle:CGRectGetMidY(v60) + -25.0 + 6.0 + 1.0 endAngle:6.0 clockwise:{0.0, -1.57079633}];
      v61.origin.x = v5;
      v61.origin.y = v7;
      v61.size.width = v9;
      v61.size.height = v11;
      v20 = CGRectGetMaxX(v61);
      goto LABEL_11;
    }

    v76.origin.x = v5;
    v76.origin.y = v7;
    v76.size.width = v9;
    v76.size.height = v11;
    v29 = CGRectGetMaxX(v76);
    v77.origin.x = v5;
    v77.origin.y = v7;
    v77.size.width = v9;
    v77.size.height = v11;
    [v12 addArcWithCenter:1 radius:v29 startAngle:CGRectGetMaxY(v77) endAngle:0.0 clockwise:{0.0, 1.57079633}];
    v78.origin.x = v5;
    v78.origin.y = v7;
    v78.size.width = v9;
    v78.size.height = v11;
    v30 = CGRectGetMidX(v78) + 25.0 + -6.0 + -1.0;
    v79.origin.x = v5;
    v79.origin.y = v7;
    v79.size.width = v9;
    v79.size.height = v11;
    [v12 addArcWithCenter:0 radius:v30 startAngle:CGRectGetMaxY(v79) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v80.origin.x = v5;
    v80.origin.y = v7;
    v80.size.width = v9;
    v80.size.height = v11;
    v31 = CGRectGetMidX(v80) + -25.0 + 6.0 + 1.0;
    v81.origin.x = v5;
    v81.origin.y = v7;
    v81.size.width = v9;
    v81.size.height = v11;
    [v12 addArcWithCenter:0 radius:v31 startAngle:CGRectGetMaxY(v81) endAngle:6.0 clockwise:{-1.57079633, 1.57079633}];
    v82.origin.x = v5;
    v82.origin.y = v7;
    v82.size.width = v9;
    v82.size.height = v11;
    v32 = CGRectGetMidX(v82) + 25.0 + -6.0 + -1.0;
    v83.origin.x = v5;
    v83.origin.y = v7;
    v83.size.width = v9;
    v83.size.height = v11;
    [v12 addArcWithCenter:0 radius:v32 startAngle:CGRectGetMaxY(v83) endAngle:6.0 clockwise:{1.57079633, 0.0}];
    v84.origin.x = v5;
    v84.origin.y = v7;
    v84.size.width = v9;
    v84.size.height = v11;
    v33 = CGRectGetMidX(v84) + 25.0 + -6.0 + -1.0;
    v85.origin.x = v5;
    v85.origin.y = v7;
    v85.size.width = v9;
    v85.size.height = v11;
    [v12 addArcWithCenter:0 radius:v33 startAngle:CGRectGetMaxY(v85) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v86.origin.x = v5;
    v86.origin.y = v7;
    v86.size.width = v9;
    v86.size.height = v11;
    v34 = CGRectGetMidX(v86) + -25.0 + 6.0 + 1.0;
    v87.origin.x = v5;
    v87.origin.y = v7;
    v87.size.width = v9;
    v87.size.height = v11;
    [v12 addArcWithCenter:0 radius:v34 startAngle:CGRectGetMaxY(v87) endAngle:6.0 clockwise:{-1.57079633, -3.14159265}];
    v88.origin.x = v5;
    v88.origin.y = v7;
    v88.size.width = v9;
    v88.size.height = v11;
    v27 = CGRectGetMinX(v88);
    v89.origin.x = v5;
    v89.origin.y = v7;
    v89.size.width = v9;
    v89.size.height = v11;
    MaxY = CGRectGetMaxY(v89);
  }

  MinY = MaxY;
  v36 = 0.0;
  v37 = v12;
  v38 = v27;
  v39 = 1.57079633;
LABEL_12:
  [v37 addArcWithCenter:1 radius:v38 startAngle:MinY endAngle:0.0 clockwise:{v36, v39}];
LABEL_13:

  return v12;
}

@end