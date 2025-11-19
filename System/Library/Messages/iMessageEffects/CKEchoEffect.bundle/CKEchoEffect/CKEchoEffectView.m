@interface CKEchoEffectView
- (CGPoint)_flippedFocusPoint;
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (id)flipImage:(id)a3;
- (id)rotateImage:(id)a3 clockwise:(BOOL)a4;
- (void)setFocusPoint:(CGPoint)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKEchoEffectView

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"Echo" withExtension:@"ca"];

  v5 = [CAPackage packageWithContentsOfURL:v4 type:kCAPackageTypeCAMLBundle options:0 error:0];
  v6 = [NSNumber numberWithInteger:[(CKEchoEffectView *)self zIndex]];
  v7 = [v6 stringValue];

  v8 = [v5 publishedObjectWithName:v7];
  [(CKEchoEffectView *)self bounds];
  v10 = v9;
  v12 = v11;
  v13 = [v8 sublayers];
  v147 = [v13 objectAtIndexedSubscript:0];

  v14 = [(CKEchoEffectView *)self layer];
  [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
  [v8 setBeginTime:?];

  v15 = v12 * 0.5;
  [v8 setPosition:{v10 * 0.5, v12 * 0.5}];
  [v8 setBounds:{0.0, 0.0, v10, v12}];
  [v8 setGeometryFlipped:1];
  if ([(CKEchoEffectView *)self zIndex]!= &dword_0 + 3)
  {
    goto LABEL_25;
  }

  v140 = v8;
  v141 = v7;
  v142 = v5;
  v143 = v4;
  v16 = [(CKEchoEffectView *)self layer];
  v17 = [v16 superlayer];
  [v17 setMasksToBounds:1];

  [v147 setGeometryFlipped:1];
  [v147 setSeed:arc4random()];
  v144 = *&CATransform3DIdentity.m23;
  *&v154.m21 = *&CATransform3DIdentity.m21;
  v145 = *&v154.m21;
  *&v154.m23 = v144;
  *&v154.m31 = *&CATransform3DIdentity.m31;
  v138 = *&v154.m31;
  v154.m33 = CATransform3DIdentity.m33;
  m33 = v154.m33;
  v19 = *&CATransform3DIdentity.m13;
  *&v154.m11 = *&CATransform3DIdentity.m11;
  v136 = *&v154.m11;
  *&v154.m13 = v19;
  v132 = v19;
  v130 = *&CATransform3DIdentity.m43;
  *&v154.m41 = *&CATransform3DIdentity.m41;
  v134 = *&v154.m41;
  *&v154.m43 = v130;
  v20 = [CAKeyframeAnimation animationWithKeyPath:@"sublayerTransform"];
  v154.m34 = -0.000131897273;
  v21 = [NSValue valueWithCATransform3D:&v154];
  *&v154.m21 = v145;
  *&v154.m23 = v144;
  *&v154.m31 = v138;
  *&v154.m11 = v136;
  *&v154.m13 = v132;
  v154.m33 = m33;
  v154.m34 = -0.0047316222;
  *&v154.m41 = v134;
  *&v154.m43 = v130;
  v22 = [NSValue valueWithCATransform3D:&v154];
  v23 = [NSArray arrayWithObjects:v21, v22, 0];

  v24 = [CAMediaTimingFunction functionWithName:?];
  v25 = [NSArray arrayWithObjects:v24, 0];

  v137 = v23;
  [v20 setValues:v23];
  v135 = v25;
  [v20 setTimingFunctions:v25];
  [v20 setDuration:4.5];
  v146 = kCAAnimationAbsolute;
  [v20 setBeginTimeMode:?];
  v26 = [v147 superlayer];
  v139 = v20;
  [v26 addAnimation:v20 forKey:@"sublayerTransform"];

  v27 = [NSNumber numberWithDouble:v10];
  [v147 setValue:v27 forKeyPath:@"emitterSize.width"];

  v28 = [NSNumber numberWithDouble:v12 * 0.5];
  [v147 setValue:v28 forKeyPath:@"emitterSize.height"];

  v29 = [NSNumber numberWithDouble:v10 * 0.5];
  [v147 setValue:v29 forKeyPath:@"emitterPosition.x"];

  v30 = [NSNumber numberWithDouble:v12 * 0.5];
  [v147 setValue:v30 forKeyPath:@"emitterPosition.y"];

  [v147 setValue:&off_8468 forKeyPath:@"emitterZPosition"];
  v31 = [NSNumber numberWithDouble:v10 + v10];
  [v147 setValue:v31 forKeyPath:@"emitterDepth"];

  v32 = v10 * v12;
  v33 = [NSNumber numberWithDouble:v10 * v12 * 0.0008];
  [v147 setValue:v33 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v147 setPosition:{v10 * 0.5, v12 * 0.5}];
  [v147 setBounds:{0.0, 0.0, v10, v12}];
  v34 = [CAKeyframeAnimation animationWithKeyPath:@"emitterSize.height"];
  v35 = v15;
  *&v36 = v35;
  v37 = [NSNumber numberWithFloat:v36];
  v38 = v12 / 1.14;
  *&v38 = v12 / 1.14;
  v39 = [NSNumber numberWithFloat:v38];
  *&v40 = v15;
  v41 = [NSNumber numberWithFloat:v40];
  v42 = [NSArray arrayWithObjects:v37, v39, v41, 0];

  v43 = [NSNumber numberWithFloat:0.0];
  LODWORD(v44) = 1053609165;
  v45 = [NSNumber numberWithFloat:v44];
  LODWORD(v46) = 1.0;
  v47 = [NSNumber numberWithFloat:v46];
  v48 = [NSArray arrayWithObjects:v43, v45, v47, 0];

  v49 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v50 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v51 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v52 = [NSArray arrayWithObjects:v49, v50, v51, 0];

  v131 = v42;
  [v34 setValues:v42];
  v129 = v48;
  [v34 setKeyTimes:v48];
  v128 = v52;
  [v34 setTimingFunctions:v52];
  [v34 setDuration:3.0];
  [v34 setBeginTimeMode:v146];
  v53 = [CAMediaTimingFunction functionWithName:?];
  [v34 setTimingFunction:v53];

  v133 = v34;
  [v147 addAnimation:v34 forKey:@"emitterSize.height"];
  v54 = [CAKeyframeAnimation animationWithKeyPath:@"emitterPosition.y"];
  v55 = v12 + v12 * -0.25;
  v56 = v55;
  *&v55 = v56;
  v57 = [NSNumber numberWithFloat:v55];
  v58 = v12 - v15 / 1.14;
  *&v58 = v58;
  v59 = [NSNumber numberWithFloat:v58];
  *&v60 = v56;
  v61 = [NSNumber numberWithFloat:v60];
  v62 = [NSArray arrayWithObjects:v57, v59, v61, 0];

  v63 = [NSNumber numberWithFloat:0.0];
  LODWORD(v64) = 1053609165;
  v65 = [NSNumber numberWithFloat:v64];
  LODWORD(v66) = 1.0;
  v67 = [NSNumber numberWithFloat:v66];
  v68 = [NSArray arrayWithObjects:v63, v65, v67, 0];

  v69 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v70 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v71 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v72 = [NSArray arrayWithObjects:v69, v70, v71, 0];

  [v54 setValues:v62];
  v126 = v68;
  [v54 setKeyTimes:v68];
  v125 = v72;
  [v54 setTimingFunctions:v72];
  [v54 setDuration:3.0];
  [v54 setBeginTimeMode:v146];
  v73 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  [v54 setTimingFunction:v73];

  v127 = v54;
  [v147 addAnimation:v54 forKey:@"emitterPosition.y"];
  v74 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  [v74 setFrameInterval:0.0166666667];
  CATransform3DMakeRotation(&v154, 1.57079633, 0.0, 1.0, 0.0);
  v75 = [NSValue valueWithCATransform3D:&v154];
  CATransform3DMakeRotation(&v154, -1.57079633, 0.0, 1.0, 0.0);
  v76 = [NSValue valueWithCATransform3D:&v154];
  v77 = [NSArray arrayWithObjects:v75, v76, 0];
  [v74 setValues:v77];

  v78 = [NSNumber numberWithFloat:0.0];
  LODWORD(v79) = 1.0;
  v80 = [NSNumber numberWithFloat:v79];
  v81 = [NSArray arrayWithObjects:v78, v80, 0];
  [v74 setKeyTimes:v81];

  v82 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v83 = [NSArray arrayWithObjects:v82, 0];
  [v74 setTimingFunctions:v83];

  [v74 setDuration:4.5];
  [v74 setBeginTimeMode:v146];
  v124 = v74;
  [v147 addAnimation:v74 forKey:@"transform"];
  v84 = [(CKEchoEffectView *)self messageImage];
  if (!self->_hasRotated)
  {
    v85 = [(CKEchoEffectView *)self window];
    v86 = [v85 windowScene];
    v87 = [v86 screen];
    v88 = [v87 displayConfiguration];

    [v88 nativeOrientation];
    v89 = FBSDisplayRotationFromRadians();
    v90 = [(CKEchoEffectView *)self window];
    v91 = [v90 windowScene];
    v92 = [v91 interfaceOrientation];

    if (v89 == 3)
    {
      if (v92 != &dword_4)
      {
        if (v92 != (&dword_0 + 2))
        {
          if (v92 != (&dword_0 + 1))
          {
            goto LABEL_16;
          }

          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v92 == &dword_4)
      {
LABEL_13:
        v93 = [(CKEchoEffectView *)self messageImage];
        v95 = self;
        v96 = v93;
        v97 = 0;
        goto LABEL_14;
      }

      if (v92 == (&dword_0 + 3))
      {
LABEL_12:
        v93 = [(CKEchoEffectView *)self messageImage];
        v95 = self;
        v96 = v93;
        v97 = 1;
LABEL_14:
        v94 = [(CKEchoEffectView *)v95 rotateImage:v96 clockwise:v97];
        goto LABEL_15;
      }

      if (v92 != (&dword_0 + 2))
      {
LABEL_16:
        self->_hasRotated = 1;

        goto LABEL_17;
      }
    }

    v93 = [(CKEchoEffectView *)self messageImage];
    v94 = [(CKEchoEffectView *)self flipImage:v93];
LABEL_15:
    v98 = v94;

    v84 = v98;
    goto LABEL_16;
  }

LABEL_17:
  [(CKEchoEffectView *)self setMessageImage:v84];
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v99 = [v147 emitterCells];
  v100 = [v99 countByEnumeratingWithState:&v150 objects:v155 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v151;
    do
    {
      for (i = 0; i != v101; i = i + 1)
      {
        if (*v151 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v150 + 1) + 8 * i);
        v105 = [(CKEchoEffectView *)self messageImage];
        [v104 setContents:{objc_msgSend(v105, "CGImage")}];
      }

      v101 = [v99 countByEnumeratingWithState:&v150 objects:v155 count:16];
    }

    while (v101);
  }

  [v147 setValue:&off_8480 forKeyPath:@"emitterCells.cell1.velocity"];
  [v147 setValue:&off_8498 forKeyPath:@"emitterCells.cell1.yAcceleration"];
  v106 = [CAKeyframeAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  v107 = v32 * 0.00039999999;
  *&v107 = v32 * 0.00039999999;
  v108 = [NSNumber numberWithFloat:v107];
  v109 = [NSNumber numberWithFloat:0.0];
  v123 = [NSArray arrayWithObjects:v108, v109, 0];

  LODWORD(v110) = 1065185444;
  v111 = [NSNumber numberWithFloat:v110];
  LODWORD(v112) = 1.0;
  v113 = [NSNumber numberWithFloat:v112];
  v114 = [NSArray arrayWithObjects:v111, v113, 0];

  v115 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v116 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v117 = [NSArray arrayWithObjects:v115, v116, 0];

  [v106 setValues:v123];
  [v106 setKeyTimes:v114];
  [v106 setTimingFunctions:v117];
  [v106 setDuration:1.70000005];
  [v106 setBeginTimeMode:v146];
  v118 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  [v106 setTimingFunction:v118];

  v119 = [NSNumber numberWithFloat:0.0];
  [v147 setValue:v119 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v147 addAnimation:v106 forKey:0];
  [v147 setValue:&off_84B0 forKeyPath:@"emitterCells.cell1.contentsScale"];

  v5 = v142;
  v4 = v143;
  v8 = v140;
  v7 = v141;
LABEL_25:
  v120 = [(CKEchoEffectView *)self layer];
  [v120 addSublayer:v8];

  objc_storeStrong(&self->_lasersLayer, v8);
  v121 = dispatch_time(0, 4500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2398;
  block[3] = &unk_81E0;
  v149 = v8;
  v122 = v8;
  dispatch_after(v121, &_dispatch_main_q, block);
}

- (id)rotateImage:(id)a3 clockwise:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  height = CGSizeZero.height;
  if (CGSizeZero.width == v6 && height == v9)
  {
    v19 = v5;
  }

  else
  {
    [v5 scale];
    *&v12 = v12;
    v13 = *&v12;
    v14 = v9 * v13;
    v15 = v7 * v13;
    v22.width = v14;
    v22.height = v15;
    UIGraphicsBeginImageContext(v22);
    v16 = [v5 CGImage];
    [v5 scale];
    if (v4)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v18 = [UIImage imageWithCGImage:v16 scale:v17 orientation:?];
    [v18 drawInRect:{0.0, 0.0, v14, v15}];

    v19 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v19;
}

- (id)flipImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  v7 = v6;
  height = CGSizeZero.height;
  if (CGSizeZero.width == v4 && height == v7)
  {
    v16 = v3;
  }

  else
  {
    [v3 scale];
    *&v10 = v10;
    v11 = *&v10;
    v12 = v7 * v11;
    v13 = v5 * v11;
    v19.width = v13;
    v19.height = v12;
    UIGraphicsBeginImageContext(v19);
    v14 = [v3 CGImage];
    [v3 scale];
    v15 = [UIImage imageWithCGImage:v14 scale:1 orientation:?];
    [v15 drawInRect:{0.0, 0.0, v13, v12}];

    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v16;
}

- (CGPoint)_flippedFocusPoint
{
  [(CKEchoEffectView *)self focusPoint];
  v4 = v3;
  v6 = v5;
  [(CKEchoEffectView *)self bounds];
  v8 = v7 - v6;
  v9 = v4;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)setFocusPoint:(CGPoint)a3
{
  if (self->_focusPoint.x != a3.x || self->_focusPoint.y != a3.y)
  {
    self->_focusPoint = a3;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];

    +[CATransaction commit];
  }
}

- (void)stopAnimation
{
  [(CALayer *)self->_lasersLayer removeFromSuperlayer];
  lasersLayer = self->_lasersLayer;
  self->_lasersLayer = 0;
}

- (CGPoint)focusPoint
{
  x = self->_focusPoint.x;
  y = self->_focusPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)messageRect
{
  x = self->_messageRect.origin.x;
  y = self->_messageRect.origin.y;
  width = self->_messageRect.size.width;
  height = self->_messageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end