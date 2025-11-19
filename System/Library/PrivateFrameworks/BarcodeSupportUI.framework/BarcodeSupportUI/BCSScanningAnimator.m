@interface BCSScanningAnimator
- (CGPoint)_appclipCodeScaleFactor;
- (CGPoint)_qrImagePopScaleFactor;
- (CGPoint)_restPosition;
- (CGRect)_platterInitialFrameWithDefaultSize:(double)a3;
- (CGRect)_restRect;
- (id)_meshTransform:(BOOL)a3;
- (void)_animateCircularReveal;
- (void)_performSquareMeshTransformWithoutAnimating;
- (void)_revealCircularView;
- (void)_setUpBlurViewIfNeeded;
- (void)animateAppClipCodeBounceWithCompletion:(id)a3 shouldAnimate:(BOOL)a4;
- (void)animatePopWithAppImageBlock:(id)a3 completion:(id)a4;
- (void)animatePushWithCompletion:(id)a3 shouldAnimate:(BOOL)a4;
- (void)reset;
- (void)showCoverView;
@end

@implementation BCSScanningAnimator

- (id)_meshTransform:(BOOL)a3
{
  v5 = [MEMORY[0x277CD9F18] meshTransform];
  v6 = [(BCSImageQuad *)self->_imageQuad copy];
  [v6 adjustOrientationInImageSpace:0];
  if (a3)
  {
    v7 = 0.0;
    v8 = 1.0;
    v9 = 1.0;
    v10 = 1.0;
    v11 = 0.0;
    v12 = 1.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    [v6 topLeft];
    v14 = v15;
    [v6 topLeft];
    v13 = v16;
    [v6 topRight];
    v12 = v17;
    [v6 topRight];
    v11 = v18;
    [v6 bottomRight];
    v10 = v19;
    [v6 bottomRight];
    v9 = v20;
    [v6 bottomLeft];
    v7 = v21;
    [v6 bottomLeft];
    v8 = v22;
  }

  v29 = 0uLL;
  v30 = v14;
  v31 = v13;
  v32 = 0;
  [v5 addVertex:&v29];
  v29 = xmmword_241A06580;
  v30 = v12;
  v31 = v11;
  v32 = 0;
  [v5 addVertex:&v29];
  __asm { FMOV            V0.2D, #1.0 }

  v29 = _Q0;
  v30 = v10;
  v31 = v9;
  v32 = 0;
  [v5 addVertex:&v29];
  v29 = xmmword_241A06590;
  v30 = v7;
  v31 = v8;
  v32 = 0;
  [v5 addVertex:&v29];
  v29 = xmmword_241A065A0;
  v30 = 0.0;
  v31 = 0.0;
  [v5 addFace:&v29];
  [v5 setSubdivisionSteps:0];

  return v5;
}

- (CGPoint)_restPosition
{
  [(UIView *)self->_focusIndicator frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMidY(v11);

  _bcs_roundPointToPixels();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)_restRect
{
  [(BCSImageQuad *)self->_imageQuad perspectiveCorrectedSize];
  v4 = v3;
  v6 = v5;
  [(BCSImageQuad *)self->_imageQuad bounds];
  v7 = v4 * CGRectGetWidth(v16);
  [(BCSImageQuad *)self->_imageQuad bounds];
  v8 = v6 * CGRectGetHeight(v17);
  if (v7 < 160.0)
  {
    v7 = 160.0;
  }

  if (v8 >= 160.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 160.0;
  }

  [(BCSScanningAnimator *)self _restPosition];
  v11 = v10 - v7 * 0.5;
  v13 = v12 - v9 * 0.5;
  v14 = v7;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v11;
  return result;
}

- (CGRect)_platterInitialFrameWithDefaultSize:(double)a3
{
  _bcs_deviceIsPad();
  [(UIImageView *)self->_targetQRImage frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BCSImageQuad *)self->_imageQuad copy];
  [(BCSImageQuad *)self->_imageQuad bounds];
  [v12 setBounds:?];
  [v12 denormalize];
  [v12 perspectiveCorrectedSize];
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  CGRectGetMidX(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectGetMidY(v26);
  _bcs_roundRectToPixels();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGPoint)_qrImagePopScaleFactor
{
  [(BCSDissolveEffectView *)self->_platterView frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_targetQRImage frame];
  v8 = (v4 + -20.0) / v7;
  v10 = (v6 + -20.0) / v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)_appclipCodeScaleFactor
{
  [(UIView *)self->_circularContainerView frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_targetQRImage bounds];
  v8 = v4 / v7;
  v10 = v6 / v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (void)_performSquareMeshTransformWithoutAnimating
{
  v3 = self->_focusIndicator;
  _bcs_mainScreenScale();
  v5 = v4;
  v6 = [(UIImageView *)self->_targetQRImage layer];
  [v6 setRasterizationScale:v5];

  [(BCSImageQuad *)self->_imageQuad bounds];
  Width = CGRectGetWidth(v44);
  [(UIView *)v3 bounds];
  v8 = CGRectGetWidth(v45);
  [(BCSImageQuad *)self->_imageQuad bounds];
  Height = CGRectGetHeight(v46);
  [(UIView *)v3 bounds];
  v10 = CGRectGetHeight(v47);
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeScale(&v43, Width / v8 * 1.25, Height / v10 * 1.25);
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidX = CGRectGetMidX(v48);
  [(UIView *)v3 center];
  v13 = v12;
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidY = CGRectGetMidY(v49);
  [(UIView *)v3 center];
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeTranslation(&v42, MidX - v13, MidY - v15);
  v28 = v43;
  t2 = v42;
  CGAffineTransformConcat(&v41, &v28, &t2);
  v28 = v41;
  [(UIView *)v3 setTransform:&v28];
  v16 = [(BCSScanningAnimator *)self _meshTransform:0];
  v17 = [(UIView *)v3 layer];
  [v17 setMeshTransform:v16];

  [(BCSScanningAnimator *)self _restPosition];
  v19 = v18;
  v21 = v20;
  v22 = [(BCSDissolveEffectView *)self->_platterView layer];
  [v22 setPosition:{v19, v21}];

  v23 = *(MEMORY[0x277CD9DE8] + 80);
  v36 = *(MEMORY[0x277CD9DE8] + 64);
  v37 = v23;
  v24 = *(MEMORY[0x277CD9DE8] + 112);
  v38 = *(MEMORY[0x277CD9DE8] + 96);
  v39 = v24;
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  *&v34.a = *MEMORY[0x277CD9DE8];
  *&v34.c = v25;
  v26 = *(MEMORY[0x277CD9DE8] + 48);
  *&v34.tx = *(MEMORY[0x277CD9DE8] + 32);
  v35 = v26;
  v27 = [(BCSDissolveEffectView *)self->_platterView layer];
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  [v27 setTransform:&v28];
}

- (void)_revealCircularView
{
  p_backgroundView = &self->_backgroundView;
  [(UIView *)self->_backgroundView removeFromSuperview];
  [(UIView *)*(p_backgroundView - 2) bounds];
  Width = CGRectGetWidth(v35);
  v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [(UIView *)*(p_backgroundView - 2) bounds];
  MidX = CGRectGetMidX(v36);
  [(UIView *)self->_circularContainerView bounds];
  [v5 setPosition:{MidX, CGRectGetMidY(v37)}];
  v7 = [MEMORY[0x277D75348] whiteColor];
  [v5 setBackgroundColor:v7];

  v8 = [v5 layer];
  [v8 setCornerRadius:Width * 0.5];

  objc_storeStrong(p_backgroundView, v5);
  [(UIView *)self->_circularContainerView insertSubview:v5 below:self->_circularEffectView];
  [(BCSScanningAnimator *)self _restPosition];
  v10 = v9;
  v12 = v11;
  v13 = [(UIView *)self->_circularContainerView layer];
  [v13 setPosition:{v10, v12}];

  v14 = *(MEMORY[0x277CD9DE8] + 80);
  v31 = *(MEMORY[0x277CD9DE8] + 64);
  v32 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 112);
  v33 = *(MEMORY[0x277CD9DE8] + 96);
  v34 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 16);
  *&v29.a = *MEMORY[0x277CD9DE8];
  *&v29.c = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 48);
  *&v29.tx = *(MEMORY[0x277CD9DE8] + 32);
  v30 = v17;
  v18 = [(UIView *)self->_circularContainerView layer];
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  [v18 setTransform:&v23];

  [(BCSScanningAnimator *)self _appclipCodeScaleFactor];
  CGAffineTransformMakeScale(&v22, v19, v20);
  circularEffectView = self->_circularEffectView;
  v23 = v22;
  [(BCSCircularEffectView *)circularEffectView setTransform:&v23];
  [(BCSCircularEffectView *)self->_circularEffectView revealCenterGlyphAndRings];
}

- (void)_animateCircularReveal
{
  v3 = CACurrentMediaTime();
  [MEMORY[0x277CD9FF0] begin];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __45__BCSScanningAnimator__animateCircularReveal__block_invoke;
  v49[3] = &unk_278D01D58;
  v49[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v49];
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"meshTransform"];
  [v4 setDamping:27.0];
  [v4 setStiffness:225.0];
  v5 = [(BCSScanningAnimator *)self _meshTransform:0];
  [v4 setFromValue:v5];

  v6 = [(BCSScanningAnimator *)self _meshTransform:1];
  [v4 setToValue:v6];

  [v4 setDuration:0.6];
  v7 = *MEMORY[0x277CDA230];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  [v4 setRemovedOnCompletion:0];
  v8 = *MEMORY[0x277CDA7B8];
  v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v4 setTimingFunction:v9];

  v10 = [(UIImageView *)self->_targetQRImage layer];
  [v10 addAnimation:v4 forKey:@"meshTransform"];

  v11 = [(BCSScanningAnimator *)self _meshTransform:1];
  v12 = [(UIImageView *)self->_targetQRImage layer];
  [v12 setMeshTransform:v11];

  v13 = [(UIView *)self->_backgroundView layer];
  [v13 addAnimation:v4 forKey:@"meshTransform"];

  v14 = [(BCSScanningAnimator *)self _meshTransform:1];
  v15 = [(UIView *)self->_backgroundView layer];
  [v15 setMeshTransform:v14];

  [(BCSScanningAnimator *)self _appclipCodeScaleFactor];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__BCSScanningAnimator__animateCircularReveal__block_invoke_2;
  aBlock[3] = &__block_descriptor_48_e16_v16__0__UIView_8l;
  aBlock[4] = v16;
  aBlock[5] = v17;
  v18 = _Block_copy(aBlock);
  v18[2](v18, self->_circularEffectView);
  v18[2](v18, self->_backgroundView);
  v18[2](v18, self->_targetQRImage);
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v19 setFromValue:&unk_2853A10F0];
  [v19 setToValue:&unk_2853A1108];
  [v19 setDuration:0.4];
  [v19 setBeginTime:v3 + 0.2];
  [v19 setFillMode:v7];
  [v19 setRemovedOnCompletion:0];
  v20 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v19 setTimingFunction:v20];

  [(CALayer *)self->_ringLayer addAnimation:v19 forKey:@"transform.scale"];
  v21 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
  [v21 setDamping:27.0];
  [v21 setStiffness:225.0];
  v22 = MEMORY[0x277CCAE60];
  v23 = [(UIView *)self->_circularContainerView layer];
  [v23 position];
  v24 = [v22 valueWithCGPoint:?];
  [v21 setFromValue:v24];

  v25 = MEMORY[0x277CCAE60];
  [(BCSScanningAnimator *)self _restPosition];
  v26 = [v25 valueWithCGPoint:?];
  [v21 setToValue:v26];

  [v21 setDuration:0.6];
  [v21 setFillMode:v7];
  [v21 setRemovedOnCompletion:0];
  v27 = [MEMORY[0x277CD9EF8] functionWithName:v8];
  [v21 setTimingFunction:v27];

  v28 = [(UIView *)self->_circularContainerView layer];
  [v28 addAnimation:v21 forKey:@"position"];

  [MEMORY[0x277CD9FF0] commit];
  [(BCSCircularEffectView *)self->_circularEffectView animateCenterGlyphAndRings];
  [(BCSScanningAnimator *)self _restPosition];
  v30 = v29;
  v32 = v31;
  v33 = [(UIView *)self->_circularContainerView layer];
  [v33 setPosition:{v30, v32}];

  v34 = *(MEMORY[0x277CD9DE8] + 80);
  v44 = *(MEMORY[0x277CD9DE8] + 64);
  v45 = v34;
  v35 = *(MEMORY[0x277CD9DE8] + 112);
  v46 = *(MEMORY[0x277CD9DE8] + 96);
  v47 = v35;
  v36 = *(MEMORY[0x277CD9DE8] + 16);
  v40 = *MEMORY[0x277CD9DE8];
  v41 = v36;
  v37 = *(MEMORY[0x277CD9DE8] + 48);
  v42 = *(MEMORY[0x277CD9DE8] + 32);
  v43 = v37;
  v38 = [(UIView *)self->_circularContainerView layer];
  v39[4] = v44;
  v39[5] = v45;
  v39[6] = v46;
  v39[7] = v47;
  v39[0] = v40;
  v39[1] = v41;
  v39[2] = v42;
  v39[3] = v43;
  [v38 setTransform:v39];
}

void __45__BCSScanningAnimator__animateCircularReveal__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) bounds];
  Width = CGRectGetWidth(v10);
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [*(*(a1 + 32) + 32) bounds];
  MidX = CGRectGetMidX(v11);
  [*(*(a1 + 32) + 32) bounds];
  [v3 setPosition:{MidX, CGRectGetMidY(v12)}];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v5];

  v6 = [v3 layer];
  [v6 setCornerRadius:Width * 0.5];

  [*(*(a1 + 32) + 48) removeFromSuperview];
  [*(*(a1 + 32) + 32) insertSubview:v3 below:*(*(a1 + 32) + 56)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v3;
}

void __45__BCSScanningAnimator__animateCircularReveal__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.x"];
  [v4 setDamping:27.0];
  [v4 setStiffness:225.0];
  v5 = MEMORY[0x277CCABB0];
  if (v3)
  {
    [v3 transform];
    v6 = *&v20;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v6 = 0.0;
  }

  v7 = [v5 numberWithDouble:{v6, v20, v22}];
  [v4 setFromValue:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [v4 setToValue:v8];

  [v4 setDuration:0.6];
  v9 = *MEMORY[0x277CDA230];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  [v4 setRemovedOnCompletion:0];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v4 setTimingFunction:v11];

  v12 = [v3 layer];
  [v12 addAnimation:v4 forKey:@"transform.scale.x"];

  v13 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.y"];
  [v13 setDamping:27.0];
  [v13 setStiffness:225.0];
  v14 = MEMORY[0x277CCABB0];
  if (v3)
  {
    [v3 transform];
    v15 = *(&v22 + 1);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v15 = 0.0;
  }

  v16 = [v14 numberWithDouble:{v15, v21, v22, v23}];
  [v13 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v13 setToValue:v17];

  [v13 setDuration:0.6];
  [v13 setFillMode:v9];
  [v13 setRemovedOnCompletion:0];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:v10];
  [v13 setTimingFunction:v18];

  v19 = [v3 layer];
  [v19 addAnimation:v13 forKey:@"transform.scale.y"];
}

- (void)_setUpBlurViewIfNeeded
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (!self->_blurView)
  {
    v3 = [(UIView *)self->_focusIndicator superview];
    platterView = self->_platterView;
    if (!platterView)
    {
      platterView = self->_circularContainerView;
    }

    v23 = platterView;
    v24 = [MEMORY[0x277D75210] _effectWithBlurRadius:10.0 scale:0.25];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v24];
    blurView = self->_blurView;
    self->_blurView = v5;

    [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    [(UIVisualEffectView *)self->_blurView setBackgroundColor:v7];

    [v3 insertSubview:self->_blurView below:v23];
    v8 = MEMORY[0x277CCAAD0];
    v22 = [(UIVisualEffectView *)self->_blurView topAnchor];
    v20 = [v3 topAnchor];
    v19 = [v22 constraintEqualToAnchor:?];
    v25[0] = v19;
    v21 = [(UIVisualEffectView *)self->_blurView bottomAnchor];
    v18 = [v3 bottomAnchor];
    v17 = [v21 constraintEqualToAnchor:?];
    v25[1] = v17;
    v9 = [(UIVisualEffectView *)self->_blurView leftAnchor];
    v10 = [v3 leftAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v25[2] = v11;
    v12 = [(UIVisualEffectView *)self->_blurView rightAnchor];
    v13 = [v3 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v25[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v8 activateConstraints:v15];

    [(UIVisualEffectView *)self->_blurView setAlpha:0.0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)animatePushWithCompletion:(id)a3 shouldAnimate:(BOOL)a4
{
  v6 = a3;
  v7 = [(UIView *)self->_focusIndicator superview];
  if (!self->_platterView)
  {
    v8 = [BCSDissolveEffectView alloc];
    [(BCSScanningAnimator *)self _platterInitialFrameWithDefaultSize:144.0];
    v9 = [(BCSDissolveEffectView *)v8 initWithFrame:?];
    platterView = self->_platterView;
    self->_platterView = v9;

    [(BCSDissolveEffectView *)self->_platterView setContentView:self->_targetQRImage];
    [(BCSDissolveEffectView *)self->_platterView setAutoresizingMask:45];
    [(BCSDissolveEffectView *)self->_platterView bounds];
    MidX = CGRectGetMidX(v16);
    [(BCSDissolveEffectView *)self->_platterView bounds];
    [(UIImageView *)self->_targetQRImage setPosition:MidX, CGRectGetMidY(v17)];
    [(BCSDissolveEffectView *)self->_platterView addSubview:self->_targetQRImage];
    [v7 insertSubview:self->_platterView below:self->_focusIndicator];
  }

  v12 = [(BCSScanningAnimator *)self _meshTransform:0];
  v13 = [(UIImageView *)self->_targetQRImage layer];
  [v13 setMeshTransform:v12];

  [(BCSScanningAnimator *)self _setUpBlurViewIfNeeded];
  if (a4)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__BCSScanningAnimator_animatePushWithCompletion_shouldAnimate___block_invoke;
    v14[3] = &unk_278D02048;
    v15 = v6;
    [(BCSScanningAnimator *)self _performSquareMeshTransform:0 completion:v14];
  }

  else
  {
    [(BCSScanningAnimator *)self _performSquareMeshTransformWithoutAnimating];
    [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
    (*(v6 + 2))(v6, 1);
  }
}

- (void)animatePopWithAppImageBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke;
  v10[3] = &unk_278D02098;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(BCSScanningAnimator *)self _performSquareMeshTransform:1 completion:v10];
}

void __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke_2;
  v5[3] = &unk_278D02070;
  v6 = *(a1 + 48);
  v7 = a2;
  [v4 startAnimationWithDuration:v3 appImageBlock:v5 completion:0.4];
}

- (void)animateAppClipCodeBounceWithCompletion:(id)a3 shouldAnimate:(BOOL)a4
{
  v6 = a3;
  v7 = [(UIView *)self->_focusIndicator superview];
  if (!self->_circularContainerView)
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(BCSScanningAnimator *)self _platterInitialFrameWithDefaultSize:200.0];
    v9 = [v8 initWithFrame:?];
    circularContainerView = self->_circularContainerView;
    self->_circularContainerView = v9;

    [(UIView *)self->_circularContainerView setAutoresizingMask:45];
    [(UIView *)self->_circularContainerView setAccessibilityIgnoresInvertColors:1];
    [(UIView *)self->_circularContainerView bounds];
    MidX = CGRectGetMidX(v38);
    [(UIView *)self->_circularContainerView bounds];
    [(UIImageView *)self->_targetQRImage setPosition:MidX, CGRectGetMidY(v39)];
    [(UIView *)self->_circularContainerView addSubview:self->_targetQRImage];
    [v7 insertSubview:self->_circularContainerView below:self->_focusIndicator];
  }

  v12 = [(BCSScanningAnimator *)self _meshTransform:0];
  v13 = [(UIImageView *)self->_targetQRImage layer];
  [v13 setMeshTransform:v12];

  [(UIImageView *)self->_targetQRImage bounds];
  Width = CGRectGetWidth(v40);
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [(UIImageView *)self->_targetQRImage position];
  [v15 setPosition:?];
  v16 = [MEMORY[0x277D75348] whiteColor];
  [v15 setBackgroundColor:v16];

  v17 = [v15 layer];
  v18 = Width * 0.5;
  [v17 setCornerRadius:v18];

  targetQRImage = self->_targetQRImage;
  if (targetQRImage)
  {
    [(UIImageView *)targetQRImage transform];
  }

  else
  {
    memset(&v37[1], 0, sizeof(CGAffineTransform));
  }

  v37[0] = v37[1];
  [v15 setTransform:v37];
  [(UIView *)self->_circularContainerView addSubview:v15];
  objc_storeStrong(&self->_backgroundView, v15);
  v20 = objc_alloc(MEMORY[0x277D75D18]);
  [v15 bounds];
  v21 = [v20 initWithFrame:?];
  v22 = [v21 layer];
  [v22 setCornerRadius:v18];

  v23 = [MEMORY[0x277D75348] whiteColor];
  [v21 setBackgroundColor:v23];

  [v15 addSubview:v21];
  v24 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  v25 = [v21 layer];
  [v25 setCompositingFilter:v24];

  v26 = [v21 layer];
  ringLayer = self->_ringLayer;
  self->_ringLayer = v26;

  v28 = [(BCSScanningAnimator *)self _meshTransform:0];
  v29 = [v15 layer];
  [v29 setMeshTransform:v28];

  v30 = [BCSCircularEffectView alloc];
  [(UIImageView *)self->_targetQRImage bounds];
  v31 = [(BCSCircularEffectView *)v30 initWithFrame:?];
  circularEffectView = self->_circularEffectView;
  self->_circularEffectView = v31;

  [(UIView *)self->_circularContainerView addSubview:self->_circularEffectView];
  [(UIImageView *)self->_targetQRImage position];
  [(BCSCircularEffectView *)self->_circularEffectView setPosition:?];
  [(BCSScanningAnimator *)self _setUpBlurViewIfNeeded];
  if (a4)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke;
    v34[3] = &unk_278D020C0;
    v34[4] = self;
    v35 = v6;
    [(BCSScanningAnimator *)self _performCircularMeshTransform:0 completion:v34];
  }

  else
  {
    CGAffineTransformMakeScale(&v36, 0.0, 0.0);
    focusIndicator = self->_focusIndicator;
    v37[0] = v36;
    [(UIView *)focusIndicator setTransform:v37];
    [(BCSScanningAnimator *)self _revealCircularView];
    (*(v6 + 2))(v6, 1);
  }
}

void __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 56);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke_2;
    v3[3] = &unk_278D02048;
    v4 = *(a1 + 40);
    [v2 animateRingsRotationWithCompletion:v3];
  }
}

- (void)showCoverView
{
  if (!self->_coverView && !self->_suppressCoverView)
  {
    v3 = [(UIView *)self->_focusIndicator superview];
    v4 = [MEMORY[0x277D75210] _effectWithBlurRadius:10.0 scale:0.35];
    v5 = objc_alloc(MEMORY[0x277D75D68]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    coverView = self->_coverView;
    self->_coverView = v6;

    [(UIVisualEffectView *)self->_coverView setAutoresizingMask:18];
    [(UIVisualEffectView *)self->_blurView frame];
    [(UIVisualEffectView *)self->_coverView setFrame:?];
    [v3 addSubview:self->_coverView];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__BCSScanningAnimator_showCoverView__block_invoke;
    v10[3] = &unk_278D020E8;
    v10[4] = self;
    v9 = v4;
    v11 = v9;
    [v8 animateWithDuration:v10 animations:0.35];
  }
}

- (void)reset
{
  [(UIVisualEffectView *)self->_blurView removeFromSuperview];
  blurView = self->_blurView;
  self->_blurView = 0;

  [(BCSDissolveEffectView *)self->_platterView removeFromSuperview];
  platterView = self->_platterView;
  self->_platterView = 0;

  [(UIVisualEffectView *)self->_coverView removeFromSuperview];
  coverView = self->_coverView;
  self->_coverView = 0;

  [(UIView *)self->_circularContainerView removeFromSuperview];
  circularContainerView = self->_circularContainerView;
  self->_circularContainerView = 0;
}

@end