uint64_t ZWUseVibrantBlendModes()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 _graphicsQuality] != &dword_8 + 2;

  return v1 & !UIAccessibilityIsReduceTransparencyEnabled();
}

double ZWConvertPointInScreenPixelsToViewCoordinates(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 window];
  v7 = [v6 screen];
  [v7 scale];
  v9 = v8;

  [v5 zw_convertPointFromScreenCoordinates:{a2 / v9, a3 / v9}];
  v11 = v10;

  return v11;
}

id ZWLocString(void *a1)
{
  v1 = ZWLocString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    ZWLocString_cold_1();
  }

  v3 = [NSBundle bundleForClass:ZWLocString_principalClass];
  v4 = [v3 localizedStringForKey:v2 value:&stru_796F8 table:@"ZoomWindow"];

  return v4;
}

id ZWLensInnerColor()
{
  if (ZWUseVibrantBlendModes() && AXDeviceIsPhone())
  {
    v0 = [UIColor colorWithRed:0.564705882 green:0.564705882 blue:0.619607843 alpha:1.0];
  }

  else
  {
    v0 = [UIColor colorWithWhite:1.0 alpha:0.7];
  }

  return v0;
}

id ZWLensOuterColor()
{
  if (ZWUseVibrantBlendModes() && AXDeviceIsPhone())
  {
    v0 = [UIColor colorWithRed:0.494117647 green:0.494117647 blue:0.552941176 alpha:1.0];
  }

  else
  {
    v0 = [UIColor colorWithWhite:0.0 alpha:0.7];
  }

  return v0;
}

void ZWCornerRadiusForBackgroundWithSize(double a1, double a2)
{
  if (a1 > 0.0 && a2 > 0.0 && _UISolariumEnabled())
  {
    v4.n128_f64[0] = a1;
    v5.n128_f64[0] = a2;

    _AXCornerRadiusForBackgroundWithSize(v4, v5);
  }
}

void ZWCornerRadiiForFrameInContainer(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10)
{
  if (a4 > 0.0 && a5 > 0.0 && (_UISolariumEnabled() & 1) != 0)
  {
    v19.n128_f64[0] = a2;
    v20.n128_f64[0] = a3;
    v21.n128_f64[0] = a4;
    v22.n128_f64[0] = a5;
    v23.n128_f64[0] = a6;
    v24.n128_f64[0] = a7;
    v25.n128_f64[0] = a8;
    v26.n128_f64[0] = a9;

    _AXCornerRadiiForFrameInContainer(v19, v20, v21, v22, v23, v24, v25, v26, a10);
  }

  else
  {
    __asm { FMOV            V0.2D, #10.0 }

    *a1 = _Q0;
    a1[1] = _Q0;
    a1[2] = _Q0;
    a1[3] = _Q0;
  }
}

id ZWOuterLensBorderForBounds(char a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2[6];
  v12 = a2[4];
  v13 = *a2;
  v14 = a2[2];
  v15 = +[UIBezierPath bezierPath];
  if (a1)
  {
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    [v15 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMinY(v48) endAngle:11.0 clockwise:0.0];
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    v17 = CGRectGetMinX(v49) + 11.0;
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    [v15 moveToPoint:{v17, CGRectGetMinY(v50)}];
    v51.origin.x = a3;
    v51.origin.y = a4;
    v51.size.width = a5;
    v51.size.height = a6;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    [v15 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMinY(v52) endAngle:11.0 clockwise:{-3.14159265, 3.14159265}];
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    v19 = CGRectGetMidX(v53) + 11.0;
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    [v15 moveToPoint:{v19, CGRectGetMinY(v54)}];
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    MaxX = CGRectGetMaxX(v55);
    v56.origin.x = a3;
    v56.origin.y = a4;
    v56.size.width = a5;
    v56.size.height = a6;
    [v15 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v56) endAngle:11.0 clockwise:{-3.14159265, 3.14159265}];
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    v21 = CGRectGetMaxX(v57);
    v58.origin.x = a3;
    v58.origin.y = a4;
    v58.size.width = a5;
    v58.size.height = a6;
    [v15 moveToPoint:{v21, CGRectGetMinY(v58) + 11.0}];
    v59.origin.x = a3;
    v59.origin.y = a4;
    v59.size.width = a5;
    v59.size.height = a6;
    v22 = CGRectGetMaxX(v59);
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    [v15 addArcWithCenter:1 radius:v22 startAngle:CGRectGetMidY(v60) endAngle:11.0 clockwise:{-1.57079633, 4.71238898}];
    v61.origin.x = a3;
    v61.origin.y = a4;
    v61.size.width = a5;
    v61.size.height = a6;
    v23 = CGRectGetMaxX(v61);
    v62.origin.x = a3;
    v62.origin.y = a4;
    v62.size.width = a5;
    v62.size.height = a6;
    [v15 moveToPoint:{v23, CGRectGetMidY(v62) + 11.0}];
    v63.origin.x = a3;
    v63.origin.y = a4;
    v63.size.width = a5;
    v63.size.height = a6;
    v24 = CGRectGetMaxX(v63);
    v64.origin.x = a3;
    v64.origin.y = a4;
    v64.size.width = a5;
    v64.size.height = a6;
    [v15 addArcWithCenter:1 radius:v24 startAngle:CGRectGetMaxY(v64) endAngle:11.0 clockwise:{-1.57079633, 4.71238898}];
    v65.origin.x = a3;
    v65.origin.y = a4;
    v65.size.width = a5;
    v65.size.height = a6;
    v25 = CGRectGetMaxX(v65) + -11.0;
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    [v15 moveToPoint:{v25, CGRectGetMaxY(v66)}];
    v67.origin.x = a3;
    v67.origin.y = a4;
    v67.size.width = a5;
    v67.size.height = a6;
    v26 = CGRectGetMidX(v67);
    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    [v15 addArcWithCenter:1 radius:v26 startAngle:CGRectGetMaxY(v68) endAngle:11.0 clockwise:{0.0, 6.28318531}];
    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    v27 = CGRectGetMidX(v69) + -11.0;
    v70.origin.x = a3;
    v70.origin.y = a4;
    v70.size.width = a5;
    v70.size.height = a6;
    [v15 moveToPoint:{v27, CGRectGetMaxY(v70)}];
    v71.origin.x = a3;
    v71.origin.y = a4;
    v71.size.width = a5;
    v71.size.height = a6;
    v28 = CGRectGetMinX(v71);
    v72.origin.x = a3;
    v72.origin.y = a4;
    v72.size.width = a5;
    v72.size.height = a6;
    [v15 addArcWithCenter:1 radius:v28 startAngle:CGRectGetMaxY(v72) endAngle:11.0 clockwise:{0.0, 6.28318531}];
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    v29 = CGRectGetMinX(v73);
    v74.origin.x = a3;
    v74.origin.y = a4;
    v74.size.width = a5;
    v74.size.height = a6;
    [v15 moveToPoint:{v29, CGRectGetMaxY(v74) + -11.0}];
    v75.origin.x = a3;
    v75.origin.y = a4;
    v75.size.width = a5;
    v75.size.height = a6;
    v30 = CGRectGetMinX(v75);
    v76.origin.x = a3;
    v76.origin.y = a4;
    v76.size.width = a5;
    v76.size.height = a6;
    [v15 addArcWithCenter:1 radius:v30 startAngle:CGRectGetMidY(v76) endAngle:11.0 clockwise:{1.57079633, 7.85398163}];
    v77.origin.x = a3;
    v77.origin.y = a4;
    v77.size.width = a5;
    v77.size.height = a6;
    v31 = CGRectGetMinX(v77);
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    [v15 moveToPoint:{v31, CGRectGetMidY(v78) + -11.0}];
    v79.origin.x = a3;
    v79.origin.y = a4;
    v79.size.width = a5;
    v79.size.height = a6;
    v32 = CGRectGetMinX(v79);
    v80.origin.x = a3;
    v80.origin.y = a4;
    v80.size.width = a5;
    v80.size.height = a6;
    v33 = CGRectGetMinY(v80) + 11.0;
  }

  else
  {
    v34 = v14 + 1.0;
    v45 = v13 + 1.0;
    v35 = v11 + 1.0;
    v81.origin.x = a3;
    v81.origin.y = a4;
    v81.size.width = a5;
    v81.size.height = a6;
    v36 = v11 + 1.0 + CGRectGetMinX(v81);
    v82.origin.x = a3;
    v82.origin.y = a4;
    v82.size.width = a5;
    v82.size.height = a6;
    [v15 addArcWithCenter:1 radius:v36 startAngle:v35 + CGRectGetMinY(v82) endAngle:v35 clockwise:?];
    v83.origin.x = a3;
    v83.origin.y = a4;
    v83.size.width = a5;
    v83.size.height = a6;
    [v15 addArcWithCenter:1 radius:CGRectGetMaxX(v83) - (v12 + 1.0) startAngle:v12 + 1.0 endAngle:v12 + 1.0 clockwise:{-1.57079633, 0.0}];
    v84.origin.x = a3;
    v84.origin.y = a4;
    v84.size.width = a5;
    v84.size.height = a6;
    v37 = CGRectGetMaxX(v84) - v34;
    v85.origin.x = a3;
    v85.origin.y = a4;
    v85.size.width = a5;
    v85.size.height = a6;
    [v15 addArcWithCenter:1 radius:v37 startAngle:CGRectGetMaxY(v85) - v34 endAngle:v34 clockwise:{0.0, 1.57079633}];
    v86.origin.x = a3;
    v86.origin.y = a4;
    v86.size.width = a5;
    v86.size.height = a6;
    v38 = CGRectGetMidX(v86) + 25.0 + -6.0 + -1.0;
    v87.origin.x = a3;
    v87.origin.y = a4;
    v87.size.width = a5;
    v87.size.height = a6;
    [v15 addArcWithCenter:0 radius:v38 startAngle:CGRectGetMaxY(v87) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v88.origin.x = a3;
    v88.origin.y = a4;
    v88.size.width = a5;
    v88.size.height = a6;
    v39 = CGRectGetMidX(v88) + -25.0 + 6.0 + 1.0;
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    [v15 addArcWithCenter:0 radius:v39 startAngle:CGRectGetMaxY(v89) endAngle:6.0 clockwise:{-1.57079633, 1.57079633}];
    v90.origin.x = a3;
    v90.origin.y = a4;
    v90.size.width = a5;
    v90.size.height = a6;
    v40 = CGRectGetMidX(v90) + 25.0 + -6.0 + -1.0;
    v91.origin.x = a3;
    v91.origin.y = a4;
    v91.size.width = a5;
    v91.size.height = a6;
    [v15 addArcWithCenter:0 radius:v40 startAngle:CGRectGetMaxY(v91) endAngle:6.0 clockwise:{1.57079633, 0.0}];
    v92.origin.x = a3;
    v92.origin.y = a4;
    v92.size.width = a5;
    v92.size.height = a6;
    v41 = CGRectGetMidX(v92) + 25.0 + -6.0 + -1.0;
    v93.origin.x = a3;
    v93.origin.y = a4;
    v93.size.width = a5;
    v93.size.height = a6;
    [v15 addArcWithCenter:0 radius:v41 startAngle:CGRectGetMaxY(v93) endAngle:6.0 clockwise:{0.0, -1.57079633}];
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v42 = CGRectGetMidX(v94) + -25.0 + 6.0 + 1.0;
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    [v15 addArcWithCenter:0 radius:v42 startAngle:CGRectGetMaxY(v95) endAngle:6.0 clockwise:{-1.57079633, -3.14159265}];
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    v43 = v45 + CGRectGetMinX(v96);
    v97.origin.x = a3;
    v97.origin.y = a4;
    v97.size.width = a5;
    v97.size.height = a6;
    [v15 addArcWithCenter:1 radius:v43 startAngle:CGRectGetMaxY(v97) - v45 endAngle:v45 clockwise:{1.57079633, 3.14159265}];
    v98.origin.x = a3;
    v98.origin.y = a4;
    v98.size.width = a5;
    v98.size.height = a6;
    v32 = CGRectGetMinX(v98);
    v99.origin.x = a3;
    v99.origin.y = a4;
    v99.size.width = a5;
    v99.size.height = a6;
    v33 = v35 + CGRectGetMinY(v99);
  }

  [v15 addLineToPoint:{v32, v33}];

  return v15;
}

id ZWInnerLensBorderForBounds(char a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2[6];
  v12 = a2[4];
  v13 = *a2;
  v14 = a2[2];
  v15 = objc_alloc_init(UIBezierPath);
  v16 = v15;
  if (a1)
  {
    v17 = v15;
    v45.origin.x = a3;
    v45.origin.y = a4;
    v45.size.width = a5;
    v45.size.height = a6;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    [v17 addArcWithCenter:0 radius:MinX startAngle:CGRectGetMinY(v46) endAngle:13.0 clockwise:{1.44079633, 0.13}];
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    MidX = CGRectGetMidX(v47);
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    [v17 addArcWithCenter:0 radius:MidX startAngle:CGRectGetMinY(v48) endAngle:13.0 clockwise:{-3.27159265, 0.13}];
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    MaxX = CGRectGetMaxX(v49);
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    [v17 addArcWithCenter:0 radius:MaxX startAngle:CGRectGetMinY(v50) endAngle:13.0 clockwise:{-3.27159265, 1.70079633}];
    v51.origin.x = a3;
    v51.origin.y = a4;
    v51.size.width = a5;
    v51.size.height = a6;
    v21 = CGRectGetMaxX(v51);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    [v17 addArcWithCenter:0 radius:v21 startAngle:CGRectGetMidY(v52) endAngle:13.0 clockwise:{-1.70079633, 1.70079633}];
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    v22 = CGRectGetMaxX(v53);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    [v17 addArcWithCenter:0 radius:v22 startAngle:CGRectGetMaxY(v54) endAngle:13.0 clockwise:{-1.70079633, -3.01159265}];
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    v23 = CGRectGetMidX(v55);
    v56.origin.x = a3;
    v56.origin.y = a4;
    v56.size.width = a5;
    v56.size.height = a6;
    [v17 addArcWithCenter:0 radius:v23 startAngle:CGRectGetMaxY(v56) endAngle:13.0 clockwise:{-0.13, -3.01159265}];
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    v24 = CGRectGetMinX(v57);
    v58.origin.x = a3;
    v58.origin.y = a4;
    v58.size.width = a5;
    v58.size.height = a6;
    [v17 addArcWithCenter:0 radius:v24 startAngle:CGRectGetMaxY(v58) endAngle:13.0 clockwise:{-0.13, -1.44079633}];
    v59.origin.x = a3;
    v59.origin.y = a4;
    v59.size.width = a5;
    v59.size.height = a6;
    v25 = CGRectGetMinX(v59);
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    [v17 addArcWithCenter:0 radius:v25 startAngle:CGRectGetMidY(v60) endAngle:13.0 clockwise:{1.44079633, -1.44079633}];
    [v17 closePath];
  }

  else
  {
    v26 = a6 + -4.0;
    v27 = a5 + -4.0;
    v28 = a4 + 2.0;
    v29 = a3 + 2.0;
    v30 = v14 + -1.0;
    v43 = v13 + -1.0;
    v31 = v12 + -1.0;
    v32 = v11 + -1.0;
    v61.origin.x = v29;
    v61.origin.y = v28;
    v61.size.width = v27;
    v61.size.height = v26;
    v33 = v11 + -1.0 + CGRectGetMinX(v61);
    v62.origin.x = v29;
    v62.origin.y = v28;
    v62.size.width = v27;
    v62.size.height = v26;
    v17 = [UIBezierPath bezierPathWithArcCenter:1 radius:v33 startAngle:v32 + CGRectGetMinY(v62) endAngle:v32 clockwise:?];

    v63.origin.x = v29;
    v63.origin.y = v28;
    v63.size.width = v27;
    v63.size.height = v26;
    v34 = CGRectGetMaxX(v63) - v31;
    v64.origin.x = v29;
    v64.origin.y = v28;
    v64.size.width = v27;
    v64.size.height = v26;
    [v17 addArcWithCenter:1 radius:v34 startAngle:v31 + CGRectGetMinY(v64) endAngle:v31 clockwise:{-1.57079633, 0.0}];
    v65.origin.x = v29;
    v65.origin.y = v28;
    v65.size.width = v27;
    v65.size.height = v26;
    v35 = CGRectGetMaxX(v65) - v30;
    v66.origin.x = v29;
    v66.origin.y = v28;
    v66.size.width = v27;
    v66.size.height = v26;
    [v17 addArcWithCenter:1 radius:v35 startAngle:CGRectGetMaxY(v66) - v30 endAngle:v30 clockwise:0.0];
    v67.origin.x = v29;
    v67.origin.y = v28;
    v67.size.width = v27;
    v67.size.height = v26;
    v36 = CGRectGetMidX(v67) + 25.0 + 1.0;
    v68.origin.x = v29;
    v68.origin.y = v28;
    v68.size.width = v27;
    v68.size.height = v26;
    [v17 addLineToPoint:{v36, CGRectGetMaxY(v68)}];
    v69.origin.x = v29;
    v69.origin.y = v28;
    v69.size.width = v27;
    v69.size.height = v26;
    v37 = CGRectGetMidX(v69) + 25.0 + -6.5 + 1.0;
    v70.origin.x = v29;
    v70.origin.y = v28;
    v70.size.width = v27;
    v70.size.height = v26;
    [v17 addArcWithCenter:0 radius:v37 startAngle:CGRectGetMaxY(v70) + 1.0 endAngle:6.5 clockwise:{0.0, -1.57079633}];
    v71.origin.x = v29;
    v71.origin.y = v28;
    v71.size.width = v27;
    v71.size.height = v26;
    v38 = CGRectGetMidX(v71) + -25.0 + 6.5 + -1.0;
    v72.origin.x = v29;
    v72.origin.y = v28;
    v72.size.width = v27;
    v72.size.height = v26;
    [v17 addArcWithCenter:0 radius:v38 startAngle:CGRectGetMaxY(v72) + 1.0 endAngle:6.5 clockwise:{-1.57079633, -3.14159265}];
    v73.origin.x = v29;
    v73.origin.y = v28;
    v73.size.width = v27;
    v73.size.height = v26;
    v39 = CGRectGetMidX(v73) + -25.0 + -1.0;
    v74.origin.x = v29;
    v74.origin.y = v28;
    v74.size.width = v27;
    v74.size.height = v26;
    [v17 addLineToPoint:{v39, CGRectGetMaxY(v74)}];
    v75.origin.x = v29;
    v75.origin.y = v28;
    v75.size.width = v27;
    v75.size.height = v26;
    v40 = v43 + CGRectGetMinX(v75);
    v76.origin.x = v29;
    v76.origin.y = v28;
    v76.size.width = v27;
    v76.size.height = v26;
    [v17 addArcWithCenter:1 radius:v40 startAngle:CGRectGetMaxY(v76) - v43 endAngle:v43 clockwise:{1.57079633, 3.14159265}];
    v77.origin.x = v29;
    v77.origin.y = v28;
    v77.size.width = v27;
    v77.size.height = v26;
    v41 = CGRectGetMinX(v77);
    v78.origin.x = v29;
    v78.origin.y = v28;
    v78.size.width = v27;
    v78.size.height = v26;
    [v17 addLineToPoint:{v41, v32 + CGRectGetMinY(v78)}];
  }

  return v17;
}

id ZWResizeGrabberPath(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = objc_alloc_init(UIBezierPath);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  [v8 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMinY(v20) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  [v8 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMinY(v22) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  [v8 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v24) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v12 = CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  [v8 addArcWithCenter:1 radius:v12 startAngle:CGRectGetMidY(v26) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v13 = CGRectGetMaxX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  [v8 addArcWithCenter:1 radius:v13 startAngle:CGRectGetMidY(v28) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v14 = CGRectGetMinX(v29);
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  [v8 addArcWithCenter:1 radius:v14 startAngle:CGRectGetMaxY(v30) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v15 = CGRectGetMidX(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  [v8 addArcWithCenter:1 radius:v15 startAngle:CGRectGetMaxY(v32) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  v16 = CGRectGetMaxX(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  [v8 addArcWithCenter:1 radius:v16 startAngle:CGRectGetMaxY(v34) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];

  return v8;
}

uint64_t ZWLaserIsEnabled()
{
  if (ZWLaserIsEnabled_onceToken != -1)
  {
    ZWLaserIsEnabled_cold_1();
  }

  return ZWLaserIsEnabled__LaserEnabled;
}

void sub_4E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void sub_11C2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_12968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _appTransitionOccurred(uint64_t a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 zoomRootViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) handleSubstantialAppTransition];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _handleAccessibilitySystemServerDied(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 _accessibilitySystemServerDied];

  objc_autoreleasePoolPop(v2);
}

id _handleAccessibilityRuntimeEvent(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (a3 == 1044)
  {
    return [a5 _handleUpdateElementVisualsNotification];
  }

  if (a3 == 1053)
  {
    return [a5 _handleNativeFocusItemChangedNotification:a4];
  }

  return result;
}

void sub_2CC1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_39898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_3D628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3D878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_43840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id LocString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.ZoomTouch.axbundle"];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"ZoomStrings"];

  return v3;
}

uint64_t ZOTInitializeUtilities()
{
  result = AXDeviceIsPad();
  ZOTIsWildcat = result;
  return result;
}

uint64_t ZOTTimeSinceBoot()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1 - ZOTSystemBootTime();

  return v2;
}

uint64_t ZOTSystemBootTime()
{
  result = ZOTSystemBootTime___boottime;
  if (!ZOTSystemBootTime___boottime)
  {
    v4 = 0;
    v2[1] = 0;
    *v3 = 0x1500000001;
    v1 = 16;
    v2[0] = 0;
    if (sysctl(v3, 2u, v2, &v1, 0, 0) == -1)
    {
      result = 0;
    }

    else
    {
      result = v2[0];
    }

    ZOTSystemBootTime___boottime = result;
  }

  return result;
}

double ZOTMainScreenScaleFactor()
{
  result = *&ZOTUnitTestScaleFactor;
  if (*&ZOTUnitTestScaleFactor <= 0.0)
  {
    AXDeviceGetMainScreenBounds();
    v7.origin.x = v1;
    v7.origin.y = v2;
    v7.size.width = v3;
    v7.size.height = v4;
    v6.origin.x = CGRectZero.origin.x;
    v6.origin.y = CGRectZero.origin.y;
    v6.size.width = CGRectZero.size.width;
    v6.size.height = CGRectZero.size.height;
    v5 = CGRectEqualToRect(v6, v7);
    result = 1.0;
    if (!v5)
    {
      if (ZOTMainScreenScaleFactor_onceToken != -1)
      {
        ZOTMainScreenScaleFactor_cold_1();
      }

      return *&ZOTMainScreenScaleFactor_kZOTMainScreenScaleFactor;
    }
  }

  return result;
}

id ZOTEventMeetsOrbThreshold(void *a1)
{
  v1 = a1;
  v2 = [v1 handInfo];
  v3 = [v2 paths];
  v4 = [v3 firstPath];
  [v4 orbValue];
  v6 = v5;
  AXForceTouchThresholdPeek();
  if (v7 < v6 && ZOTEventRealFingerCount(v1) == 1 && AXForceTouchAvailableAndEnabled())
  {
    v8 = +[AXSettings sharedInstance];
    v9 = [v8 zoomPeekZoomEnabled];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ZOTEventRealFingerCount(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 handInfo];
  v2 = [v1 paths];

  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) pathIdentity])
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void ZOTDispatchEventThreadWithDelay(void *a1, void *a2, float a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __ZOTDispatchEventThreadWithDelay_block_invoke;
  v9[3] = &unk_79658;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v5 = v11;
  v6 = v10;
  v7 = objc_retainBlock(v9);
  v8 = [v7 copy];
  [v6 performSelector:"zotRunBlock:" onThread:v6 withObject:v8 waitUntilDone:0];
}

void __ZOTDispatchEventThreadWithDelay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v2 performSelector:"zotRunBlock:" withObject:v3 afterDelay:*(a1 + 48)];
}

void ZOTDispatchEventThread(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 copy];
  [v3 performSelector:"zotRunBlock:" onThread:v3 withObject:v4 waitUntilDone:0];
}

double ZOTConvertVectorToScreenStandard(uint64_t a1, double a2)
{
  v2 = 180.0;
  v3 = a2 * 3.14159265 / 180.0;
  result = v3 / 0.0174532925;
  switch(a1)
  {
    case 4:
      v2 = 270.0;
      goto LABEL_7;
    case 3:
      v2 = 90.0;
      goto LABEL_7;
    case 2:
LABEL_7:
      result = result + v2;
      break;
  }

  v5 = 360.0;
  if (result <= 360.0)
  {
    if (result >= 0.0)
    {
      return result;
    }
  }

  else
  {
    v5 = -360.0;
  }

  return result + v5;
}

double ZOTAlignDistanceAlongAngle(double result, double a2, double a3)
{
  if (a3 >= 45.0)
  {
    v3 = 90.0;
    if (a3 < 90.0)
    {
LABEL_3:
      v4 = (v3 - a3) / 45.0;
      return result * v4;
    }

    v5 = 135.0;
    if (a3 < 135.0)
    {
      goto LABEL_5;
    }

    if (a3 >= 180.0 && a3 >= 225.0)
    {
      v3 = 270.0;
      if (a3 < 270.0)
      {
        goto LABEL_3;
      }

      v5 = 315.0;
      if (a3 < 315.0)
      {
LABEL_5:
        v4 = (v5 - a3) / -45.0 + 1.0;
        return result * v4;
      }
    }
  }

  return result;
}

double ZOTCalculateDistanceForAngle(double a1)
{
  ZOTMainScreenSize();
  v3 = v2 / ZOTMainScreenScaleFactor();
  if (a1 >= 90.0)
  {
    if (a1 >= 180.0)
    {
      if (a1 >= 270.0)
      {
        v4 = -v3;
      }

      else
      {
        v4 = v3;
      }

      v3 = -v3;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = -v3;
  }

  return ZOTAlignDistanceAlongAngle(v4, v3, a1);
}

double ZOTNormalizeVelocity(double a1)
{
  v1 = 2300.0;
  if (a1 <= 2300.0)
  {
    v1 = a1;
    if (a1 < 125.0)
    {
      v1 = 125.0;
    }
  }

  return v1 / 2175.0;
}

float ZOTGutterDistance()
{
  v0 = _UnitTestGutterDistance;
  if (*&_UnitTestGutterDistance <= 0.0)
  {
    if (ZOTGutterDistance_onceToken != -1)
    {
      ZOTGutterDistance_cold_1();
    }

    v0 = ZOTGutterDistance__GutterDistance;
  }

  return *&v0;
}

double ZOTNotGutterFrame()
{
  if (ZOTNotGutterFrame_onceToken != -1)
  {
    ZOTNotGutterFrame_cold_1();
  }

  return *&ZOTNotGutterFrame_nonGutterFrame_0;
}

uint64_t ZOTShouldStartAutopan(double *a1, BOOL *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v24 = a5 != 0.0 && a8 > 1.0;
  if (!v24 || (v25 = 0.0, *a2))
  {
    SCRCMathGetDistanceBetweenPoints();
    if (ZOTIsWildcat != 1)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    v25 = v26;
    v27 = CGPointZero.x != a6;
    if (CGPointZero.y != a7)
    {
      v27 = 1;
    }

    if (v26 <= 0.0700000003)
    {
      v27 = 0;
    }

    *a2 = v27;
    if (!v27)
    {
      return 0;
    }
  }

  v28 = _AXSVoiceOverTouchEnabled();
  v29 = ZOTGutterDistance();
  if (v28)
  {
    v29 = v29 / 3.0;
  }

  v30 = v29 / ZOTMainScreenScaleFactor();
  if (a3 >= a11 + v30)
  {
    if (a3 <= a11 + a13 - v30)
    {
      v36 = 0;
      v35 = 0.0;
      goto LABEL_26;
    }

    v31 = a11 + a13 - a3;
  }

  else
  {
    v31 = a3 - a11;
  }

  v33 = ZOTGutterDistance();
  if (ZOTIsWildcat == 1)
  {
    v34 = pow(v31 / v33, -1.2) * 1.5 / 10.0;
  }

  else
  {
    v34 = (v33 - v31) / v33;
  }

  v35 = (v34 + 0.0) * ZOTMainScreenScaleFactor() + 0.0;
  v36 = 1;
LABEL_26:
  if (a4 >= a12 + v30)
  {
    if (a4 <= a12 + a14 - v30)
    {
      goto LABEL_34;
    }

    v37 = a12 + a14 - a4;
  }

  else
  {
    v37 = a4 - a12;
  }

  v38 = ZOTGutterDistance();
  if (ZOTIsWildcat == 1)
  {
    v39 = pow(v37 / v38, -1.2) * 1.5 / 10.0;
  }

  else
  {
    v39 = (v38 - v37) / v38;
  }

  v35 = v35 + (v39 + 0.0) * ZOTMainScreenScaleFactor();
  ++v36;
LABEL_34:
  if (*a2)
  {
    v40 = v25 + -0.0700000003;
    if (v25 > 0.899999976)
    {
      v40 = 0.819999976;
    }

    v41 = pow(v40, 3.0) * 1000.0;
    v35 = v41 * ZOTMainScreenScaleFactor();
    ++v36;
  }

  else if (!v36)
  {
    result = 0;
    v42 = 0.0;
    goto LABEL_40;
  }

  v42 = v35 / v36;
  result = 1;
LABEL_40:
  *a1 = v42;
  return result;
}

uint64_t ZOTScreenRegionForPoint(int a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = 0.0;
  if (a1)
  {
    v14 = ZOTGutterDistance();
    v15 = v14 / ZOTMainScreenScaleFactor();
    v13 = v15;
  }

  if (a2 >= a4 + a6 - v13)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (a2 > a4 + v13)
  {
    result = v16;
  }

  else
  {
    result = 1;
  }

  if (a3 <= a5 + v13)
  {
    return result | 4;
  }

  if (a3 >= a5 + a7 - v13)
  {
    return result | 8;
  }

  return result;
}

uint64_t ZOTScreenRegionForRelativePushPan(uint64_t a1)
{
  SCRCMathGetVectorAndDistanceForPoints();
  v2 = 0.0;
  switch(a1)
  {
    case 4:
      v3 = 90.0;
      goto LABEL_8;
    case 3:
      v3 = -90.0;
      goto LABEL_8;
    case 2:
      v2 = 0.0 + -180.0;
      if (0.0 + -180.0 < 0.0)
      {
        v3 = 360.0;
LABEL_8:
        v2 = v2 + v3;
      }

      break;
  }

  v4 = 360.0;
  if (v2 < 0.0)
  {
LABEL_12:
    v2 = v2 + v4;
    goto LABEL_13;
  }

  if (v2 > 360.0)
  {
    v4 = -360.0;
    goto LABEL_12;
  }

LABEL_13:
  if (v2 >= 0.0 && v2 <= 90.0)
  {
    if (v2 < 35.0)
    {
      result = 4;
LABEL_29:
      v6 = 1;
      goto LABEL_30;
    }

    v7 = v2 <= 55.0;
    v8 = 6;
    v9 = 2;
LABEL_26:
    if (v7)
    {
      result = v8;
    }

    else
    {
      result = v9;
    }

    goto LABEL_29;
  }

  if (v2 <= 90.0 || v2 > 180.0)
  {
    if (v2 <= 180.0 || v2 > 270.0)
    {
      result = 0;
      v6 = 1;
      if (v2 > 270.0 && v2 <= 360.0)
      {
        if (v2 >= 305.0)
        {
          v7 = v2 <= 325.0;
          v8 = 5;
          v9 = 4;
          goto LABEL_26;
        }

        v6 = 1;
        result = 1;
      }
    }

    else if (v2 >= 215.0)
    {
      v6 = v2 > 235.0;
      if (v2 > 235.0)
      {
        result = 1;
      }

      else
      {
        result = 9;
      }
    }

    else
    {
      v6 = 0;
      result = 8;
    }
  }

  else
  {
    if (v2 < 125.0)
    {
      result = 2;
      goto LABEL_29;
    }

    v6 = 0;
    if (v2 <= 145.0)
    {
      result = 10;
    }

    else
    {
      result = 8;
    }
  }

LABEL_30:
  if (ZOTIsWildcat != 1)
  {
    return result;
  }

  switch(a1)
  {
    case 4:
      if (v6)
      {
        v11 = ((2 * result) | (result >> 1)) & 9;
      }

      else
      {
        v11 = ((2 * result) | (result >> 1)) & 9 | 4;
      }

      return v11 & 0xFFFFFFFD | (2 * (result & 1));
    case 3:
      return result;
    case 2:
      return !v6 & 0xFFFFFFF3 | (8 * ((result >> 1) & 1)) | (result >> 1) & 2 | (4 * (result & 1));
    default:
      if (v6)
      {
        v12 = ((result >> 2) | (2 * result)) & 5;
      }

      else
      {
        v12 = ((result >> 2) | (2 * result)) & 5 | 2;
      }

      return v12 & 0xFFFFFFF7 | (8 * (result & 1));
  }
}

void sub_47174(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_49ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4A88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}