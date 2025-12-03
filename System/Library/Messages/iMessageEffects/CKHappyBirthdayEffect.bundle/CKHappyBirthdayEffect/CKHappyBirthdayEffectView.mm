@interface CKHappyBirthdayEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)animateBalloonLayer:(id)layer withIndex:(unint64_t)index;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKHappyBirthdayEffectView

- (void)animateBalloonLayer:(id)layer withIndex:(unint64_t)index
{
  layerCopy = layer;
  if (index >= 6)
  {
    indexCopy = 6;
  }

  else
  {
    indexCopy = index;
  }

  sx = dbl_3718[indexCopy];
  v87 = dbl_3750[indexCopy];
  v8 = (&unk_3910 + 16 * indexCopy);
  v10 = *v8;
  v9 = v8[1];
  v11 = (&unk_3980 + 16 * indexCopy);
  v12 = *v11;
  v13 = v11[1];
  [(CKHappyBirthdayEffectView *)self bounds];
  v15 = v14;
  [(CKHappyBirthdayEffectView *)self bounds];
  v17 = v16;
  [(CKHappyBirthdayEffectView *)self bounds];
  v19 = v18;
  [(CKHappyBirthdayEffectView *)self bounds];
  v21 = v20;
  v80 = dbl_38D8[indexCopy];
  v22 = (&unk_3788 + 16 * indexCopy);
  v85 = v22[1];
  v86 = *v22;
  v23 = (&unk_37F8 + 16 * indexCopy);
  v24 = v23[1];
  v90 = *v23;
  v25 = (&unk_3868 + 16 * indexCopy);
  v82 = *v25;
  v83 = v24;
  v81 = v25[1];
  [layerCopy bounds];
  v27 = -0.5;
  if (index > 5)
  {
    v27 = 0.5;
  }

  ty = v26 * v27;
  v28 = v13 * v21;
  v29 = v12 * v19;
  v30 = v10 * v15;
  angle = fmax(fmin((atan2(v28 - v9 * v17, v29 - v30) + 1.57079633) * 0.3, 0.15), -0.15);
  [layerCopy setPosition:{CGPointZero.x, CGPointZero.y}];
  [layerCopy setHidden:1];
  v92 = [CABasicAnimation animationWithKeyPath:@"hidden"];
  [v92 setFrameInterval:0.0166666667];
  [v92 setFromValue:&__kCFBooleanFalse];
  [v92 setToValue:&__kCFBooleanFalse];
  [v92 setDuration:v80];
  v31 = [CABasicAnimation animationWithKeyPath:@"position"];
  [v31 setFrameInterval:0.0166666667];
  v32 = [NSValue valueWithCGPoint:v30, v9 * v17];
  [v31 setFromValue:v32];

  v33 = [NSValue valueWithCGPoint:v29, v28];
  [v31 setToValue:v33];

  [v31 setDuration:v80];
  HIDWORD(v34) = HIDWORD(v90);
  *&v34 = v90;
  HIDWORD(v36) = HIDWORD(v82);
  HIDWORD(v35) = HIDWORD(v83);
  *&v35 = v83;
  *&v36 = v82;
  HIDWORD(v37) = HIDWORD(v81);
  *&v37 = v81;
  v38 = [CAMediaTimingFunction functionWithControlPoints:v34];
  [v31 setTimingFunction:v38];

  v91 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v91 setFrameInterval:0.0166666667];
  CATransform3DMakeTranslation(&v93, 0.0, ty, 1.0);
  v39 = [NSValue valueWithCATransform3D:&v93];
  [v91 setFromValue:v39];

  fromValue = [v91 fromValue];
  [v91 setToValue:fromValue];

  [v91 setDuration:v80];
  [v91 setAdditive:1];
  v41 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v41 setFrameInterval:0.0166666667];
  CATransform3DMakeScale(&v93, sx, sx, 1.0);
  v42 = [NSValue valueWithCATransform3D:&v93];
  [v41 setFromValue:v42];

  CATransform3DMakeScale(&v93, v87, v87, 1.0);
  v43 = [NSValue valueWithCATransform3D:&v93];
  [v41 setToValue:v43];

  [v41 setDuration:v80];
  [v41 setAdditive:1];
  HIDWORD(v45) = HIDWORD(v85);
  HIDWORD(v44) = HIDWORD(v86);
  *&v44 = v86;
  *&v45 = v85;
  LODWORD(v46) = 1.0;
  LODWORD(v47) = 1.0;
  v48 = [CAMediaTimingFunction functionWithControlPoints:v44];
  [v41 setTimingFunction:v48];

  v49 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v49 setFrameInterval:0.0166666667];
  CATransform3DMakeScale(&v93, 0.996, 1.004, 1.0);
  v50 = [NSValue valueWithCATransform3D:&v93];
  [v49 setFromValue:v50];

  CATransform3DMakeScale(&v93, 1.004, 0.996, 1.0);
  v51 = [NSValue valueWithCATransform3D:&v93];
  [v49 setToValue:v51];

  [v49 setDuration:0.3];
  v52 = drand48();
  [v49 duration];
  [v49 setTimeOffset:v52 * v53];
  [v49 setAdditive:1];
  [v49 setAutoreverses:1];
  LODWORD(v54) = 2139095040;
  [v49 setRepeatCount:v54];
  v55 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v49 setTimingFunction:v55];

  v56 = drand48();
  v57 = drand48();
  v58 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v58 setFrameInterval:0.0166666667];
  CATransform3DMakeRotation(&v93, v56 * -0.17, 0.0, 0.0, 1.0);
  v59 = [NSValue valueWithCATransform3D:&v93];
  [v58 setFromValue:v59];

  CATransform3DMakeRotation(&v93, v57 * 0.17, 0.0, 0.0, 1.0);
  v60 = [NSValue valueWithCATransform3D:&v93];
  [v58 setToValue:v60];

  [v58 setDuration:2.0];
  v61 = drand48();
  [v58 duration];
  [v58 setTimeOffset:v61 * v62];
  [v58 setAutoreverses:1];
  LODWORD(v63) = 2139095040;
  [v58 setRepeatCount:v63];
  [v58 setAdditive:1];
  v64 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v58 setTimingFunction:v64];

  v65 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v65 setFrameInterval:0.0166666667];
  CATransform3DMakeRotation(&v93, angle, 0.0, 0.0, 1.0);
  v66 = [NSValue valueWithCATransform3D:&v93];
  [v65 setFromValue:v66];

  fromValue2 = [v65 fromValue];
  [v65 setToValue:fromValue2];

  [v65 setDuration:v80];
  [v65 setAdditive:1];
  v68 = [CABasicAnimation animationWithKeyPath:@"transform"];
  [v68 setFrameInterval:0.0166666667];
  v69 = drand48();
  CATransform3DMakeTranslation(&v93, v69 * -50.0 + 5.0, 0.0, 0.0);
  v70 = [NSValue valueWithCATransform3D:&v93];
  [v68 setFromValue:v70];

  v71 = drand48();
  CATransform3DMakeTranslation(&v93, v71 * 10.0 + 5.0, 0.0, 0.0);
  v72 = [NSValue valueWithCATransform3D:&v93];
  [v68 setToValue:v72];

  [v68 setDuration:3.0];
  v73 = drand48();
  [v68 duration];
  [v68 setTimeOffset:v73 * v74];
  [v68 setAdditive:1];
  [v68 setAutoreverses:1];
  LODWORD(v75) = 2139095040;
  [v68 setRepeatCount:v75];
  v76 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v68 setTimingFunction:v76];

  [layerCopy addAnimation:v31 forKey:@"position"];
  [layerCopy addAnimation:v92 forKey:@"unhide"];
  [layerCopy addAnimation:v91 forKey:@"toAttachment"];
  [layerCopy addAnimation:v49 forKey:@"wobble"];
  [layerCopy addAnimation:v58 forKey:@"rotation"];
  [layerCopy addAnimation:v65 forKey:@"direction"];
  [layerCopy addAnimation:v41 forKey:@"size"];
  [layerCopy addAnimation:v68 forKey:@"sideWiggle"];
  CATransform3DMakeRotation(&v93, -(v56 * -0.17), 0.0, 0.0, 1.0);
  v77 = [NSValue valueWithCATransform3D:&v93];
  [v58 setFromValue:v77];

  CATransform3DMakeRotation(&v93, -(v57 * 0.17), 0.0, 0.0, 1.0);
  v78 = [NSValue valueWithCATransform3D:&v93];
  [v58 setToValue:v78];

  stringLayer = [layerCopy stringLayer];
  [stringLayer addAnimation:v58 forKey:@"rotation"];
}

- (void)startAnimation
{
  if ([(CKHappyBirthdayEffectView *)self zIndex]== &dword_0 + 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!self->_balloons)
  {
    v4 = [NSMutableArray arrayWithCapacity:2];
    balloons = self->_balloons;
    self->_balloons = v4;

    v6 = v3;
    do
    {
      v7 = objc_opt_new();
      layer = [(CKHappyBirthdayEffectView *)self layer];
      [layer addSublayer:v7];

      [(NSMutableArray *)self->_balloons addObject:v7];
      --v6;
    }

    while (v6);
  }

  for (i = 0; i != v3; ++i)
  {
    v10 = [(NSMutableArray *)self->_balloons objectAtIndexedSubscript:i];
    [(CKHappyBirthdayEffectView *)self animateBalloonLayer:v10 withIndex:i + 2 * self->_zIndex];
  }
}

- (void)stopAnimation
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_balloons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) removeFromSuperlayer];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  balloons = self->_balloons;
  self->_balloons = 0;
}

- (CGPoint)focusPoint
{
  x = self->focusPoint.x;
  y = self->focusPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)messageRect
{
  x = self->messageRect.origin.x;
  y = self->messageRect.origin.y;
  width = self->messageRect.size.width;
  height = self->messageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end