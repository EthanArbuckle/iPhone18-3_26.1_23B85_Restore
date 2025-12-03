@interface STKDragPreviewContainerView
+ (id)meshTransformWithContentScale:(double)scale;
+ (id)shadowPropertiesForDrag;
+ (id)springAnimationWithKeyPath:(id)path speed:(float)speed;
- (CGPoint)dropShadowLayerStartPosition;
- (CGPoint)meshLayerStartPosition;
- (CGPoint)originalCenter;
- (CGPoint)peelLayerStartPosition;
- (CGPoint)shadowLayerStartPosition;
- (CGPoint)shineLayerStartPosition;
- (CGSize)initialSize;
- (CGSize)rasterizedImageSize;
- (STKDragPreviewContainerView)initWithIsDropAnimation:(BOOL)animation;
- (double)dragViewScaleUp;
- (id)peelMaskImageFromImage:(id)image;
- (void)_animateDropAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_animateLiftAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_animateLiftCancellationAlongsideAnimator:(id)animator completion:(id)completion;
- (void)_preparePreviewContainerWithPreview:(id)preview source:(id)source initialTransform:(CGAffineTransform *)transform;
- (void)finalizeDropIfNecessary;
- (void)performAfterDropAnimation:(id)animation;
- (void)reversePeelAnimationToPoint:(CGPoint)point forPlacement:(BOOL)placement shouldShrink:(BOOL)shrink completionBlock:(id)block;
- (void)setDefersFinalDropAnimationCompletion:(BOOL)completion;
- (void)setDropAnimationIsComplete:(BOOL)complete;
@end

@implementation STKDragPreviewContainerView

- (STKDragPreviewContainerView)initWithIsDropAnimation:(BOOL)animation
{
  v7.receiver = self;
  v7.super_class = STKDragPreviewContainerView;
  v4 = [(STKDragPreviewContainerView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isDropAnimation = animation;
    [(STKDragPreviewContainerView *)v4 setClipsToBounds:0];
  }

  return v5;
}

+ (id)meshTransformWithContentScale:(double)scale
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__STKDragPreviewContainerView_meshTransformWithContentScale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = scale;
  if (meshTransformWithContentScale__onceToken != -1)
  {
    dispatch_once(&meshTransformWithContentScale__onceToken, block);
  }

  v3 = meshTransformWithContentScale____mesh;

  return v3;
}

void __61__STKDragPreviewContainerView_meshTransformWithContentScale___block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32) + -1.0;
  v5[0] = 0.0 - v1;
  v5[1] = 0.0;
  v6 = xmmword_19A7B4CF0;
  v5[2] = 0.0 - v1;
  v7 = v1 + 1.0;
  v8 = 0;
  v9 = v1 + 1.0;
  v10 = xmmword_19A7B4CF0;
  v11 = 0.0 - v1;
  v12 = 0x3FB999999999999ALL;
  v14 = xmmword_19A7B4D00;
  v13 = 0.0 - v1;
  v15 = v1 + 1.0;
  v16 = 0x3FB999999999999ALL;
  v17 = v1 + 1.0;
  v18 = xmmword_19A7B4D00;
  v19 = 0.0 - v1;
  v20 = 0x3FC999999999999ALL;
  v22 = xmmword_19A7B4D10;
  v21 = 0.0 - v1;
  v23 = v1 + 1.0;
  v24 = 0x3FC999999999999ALL;
  v25 = v1 + 1.0;
  v26 = xmmword_19A7B4D10;
  v27 = 0.0 - v1;
  v28 = 0x3FD3333333333333;
  v29 = 0.0 - v1;
  v30 = 0x3FD3333333333333;
  v31 = 0x405E000000000000;
  v32 = v1 + 1.0;
  v33 = 0x3FD3333333333333;
  v34 = v1 + 1.0;
  v35 = xmmword_19A7B4D20;
  v36 = 0.0 - v1;
  v37 = 0x3FD999999999999ALL;
  v38 = 0.0 - v1;
  v39 = 0x3FD999999999999ALL;
  v40 = 0x405E000000000000;
  v41 = v1 + 1.0;
  v42 = 0x3FD999999999999ALL;
  v43 = v1 + 1.0;
  v44 = xmmword_19A7B4D30;
  v45 = 0.0 - v1;
  v46 = 0x3FE0000000000000;
  v47 = 0.0 - v1;
  v48 = 0x3FE0000000000000;
  v49 = 0x405E000000000000;
  v50 = v1 + 1.0;
  v51 = 0x3FE0000000000000;
  v52 = v1 + 1.0;
  v53 = xmmword_19A7B4D40;
  v54 = 0.0 - v1;
  v55 = 0x3FE3333333333333;
  v56 = 0.0 - v1;
  v57 = 0x3FE3333333333333;
  v58 = 0;
  v59 = v1 + 1.0;
  v60 = 0x3FE3333333333333;
  v61 = v1 + 1.0;
  v62 = xmmword_19A7B4D50;
  v63 = 0.0 - v1;
  v64 = 0x3FE6666666666666;
  v65 = 0.0 - v1;
  v66 = 0x3FE6666666666666;
  v67 = 0;
  v68 = v1 + 1.0;
  v69 = 0x3FE6666666666666;
  v70 = v1 + 1.0;
  v71 = xmmword_19A7B4D60;
  v72 = 0.0 - v1;
  v73 = 0x3FE999999999999ALL;
  v74 = 0.0 - v1;
  v75 = 0x3FE999999999999ALL;
  v76 = 0;
  v77 = v1 + 1.0;
  v78 = 0x3FE999999999999ALL;
  v79 = v1 + 1.0;
  v80 = xmmword_19A7B4D70;
  v81 = 0.0 - v1;
  v82 = 0x3FECCCCCCCCCCCCDLL;
  v83 = 0.0 - v1;
  v84 = 0x3FECCCCCCCCCCCCDLL;
  v85 = 0;
  v86 = v1 + 1.0;
  v87 = 0x3FECCCCCCCCCCCCDLL;
  v88 = v1 + 1.0;
  v89 = xmmword_19A7B4D80;
  v90 = 0.0 - v1;
  v91 = 0x3FF0000000000000;
  v92 = 0.0 - v1;
  v93 = 0x3FF0000000000000;
  v94 = 0;
  v95 = v1 + 1.0;
  v96 = 0x3FF0000000000000;
  v97 = v1 + 1.0;
  v98 = xmmword_19A7B4D90;
  memcpy(__dst, &unk_19A7B4DC8, sizeof(__dst));
  v2 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:22 vertices:v5 faceCount:10 faces:__dst depthNormalization:*MEMORY[0x1E6979700]];
  v3 = meshTransformWithContentScale____mesh;
  meshTransformWithContentScale____mesh = v2;
}

+ (id)springAnimationWithKeyPath:(id)path speed:(float)speed
{
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:path];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  *&v6 = speed;
  [v5 setSpeed:v6];
  [v5 setDuration:0.91];
  v7 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1041212815;
  LODWORD(v9) = 999867313;
  LODWORD(v10) = 1058228603;
  LODWORD(v11) = 1064805775;
  v12 = [v7 initWithControlPoints:v8 :v9 :v10 :v11];
  [v5 setTimingFunction:v12];

  [v5 setFillMode:*MEMORY[0x1E69797E8]];
  [v5 setRemovedOnCompletion:0];

  return v5;
}

+ (id)shadowPropertiesForDrag
{
  v2 = MEMORY[0x19A906CA0](@"_UIDragPreviewShadowProperties", @"UIKit");
  if (v2)
  {
    v3 = objc_alloc_init(v2);
    if (objc_opt_respondsToSelector())
    {
      [v3 setShadowType:1];
    }

    if (objc_opt_respondsToSelector())
    {
      memset(&v7, 0, sizeof(v7));
      CGAffineTransformMakeTranslation(&v7, 0.0, 23.0);
      v5 = v7;
      CGAffineTransformScale(&v6, &v5, 1.12, 1.12);
      v7 = v6;
      [v3 setLiftedTransform:&v6];
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 setLiftedAlpha:0.23];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)initialSize
{
  [(STKDragPreviewContainerView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGSize)rasterizedImageSize
{
  [(STKDragPreviewContainerView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)peelMaskImageFromImage:(id)image
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  imageCopy = image;
  [imageCopy size];
  v7 = v6;
  v9 = v8;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = v11;
  v17.width = v7;
  v17.height = v9;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v12);

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [blackColor setFill];

  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v7;
  v18.size.height = v9;
  UIRectFillUsingBlendMode(v18, kCGBlendModeCopy);
  [imageCopy drawInRect:22 blendMode:v3 alpha:{v4, v7, v9, 1.0}];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (double)dragViewScaleUp
{
  [(STKDragPreviewContainerView *)self rasterizedImageSize];
  v4 = v3;
  [(STKDragPreviewContainerView *)self initialSize];
  if (v4 < v5 || ([(STKDragPreviewContainerView *)self rasterizedImageSize], v7 = v6, [(STKDragPreviewContainerView *)self initialSize], result = 1.0, v7 < v9))
  {
    [(STKDragPreviewContainerView *)self rasterizedImageSize];
    v11 = v10;
    [(STKDragPreviewContainerView *)self rasterizedImageSize];
    v13 = v12;
    [(STKDragPreviewContainerView *)self initialSize];
    v15 = v14;
    v17 = v16;
    [(STKDragPreviewContainerView *)self rasterizedImageSize];
    if (v11 <= v13)
    {
      return v15 / v18;
    }

    else
    {
      return v17 / v19;
    }
  }

  return result;
}

- (void)finalizeDropIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(STKDragPreviewContainerView *)self dropAnimationIsComplete])
  {
    clientDropCompletion = [(STKDragPreviewContainerView *)self clientDropCompletion];
    if (clientDropCompletion)
    {

LABEL_14:
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if ([(STKDragPreviewContainerView *)self dropAnimationIsComplete])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        clientDropCompletion2 = [(STKDragPreviewContainerView *)self clientDropCompletion];
        v14 = _Block_copy(clientDropCompletion2);
        if ([(STKDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        finalUIKitDropCompletion = [(STKDragPreviewContainerView *)self finalUIKitDropCompletion];
        v17 = _Block_copy(finalUIKitDropCompletion);
        v22 = 134219010;
        selfCopy2 = self;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_19A5EE000, v11, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> finalizeDropIfNecessary finalizing drop. dropAnimationIsComplete: %@, clientDropCompletion: %@, defersFinalDropAnimationCompletion: %@, finalUIKitDropCompletion: %@", &v22, 0x34u);
      }

      clientDropCompletion3 = [(STKDragPreviewContainerView *)self clientDropCompletion];

      if (clientDropCompletion3)
      {
        clientDropCompletion4 = [(STKDragPreviewContainerView *)self clientDropCompletion];
        clientDropCompletion4[2]();

        [(STKDragPreviewContainerView *)self setClientDropCompletion:0];
      }

      finalUIKitDropCompletion2 = [(STKDragPreviewContainerView *)self finalUIKitDropCompletion];

      if (finalUIKitDropCompletion2)
      {
        finalUIKitDropCompletion3 = [(STKDragPreviewContainerView *)self finalUIKitDropCompletion];
        finalUIKitDropCompletion3[2]();

        [(STKDragPreviewContainerView *)self setFinalUIKitDropCompletion:0];
      }

      return;
    }

    if (![(STKDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
    {
      goto LABEL_14;
    }
  }

  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([(STKDragPreviewContainerView *)self dropAnimationIsComplete])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    clientDropCompletion5 = [(STKDragPreviewContainerView *)self clientDropCompletion];
    v7 = _Block_copy(clientDropCompletion5);
    if ([(STKDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    finalUIKitDropCompletion4 = [(STKDragPreviewContainerView *)self finalUIKitDropCompletion];
    v10 = _Block_copy(finalUIKitDropCompletion4);
    v22 = 134219010;
    selfCopy2 = self;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_19A5EE000, v4, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> finalizeDropIfNecessary not finalizing yet. dropAnimationIsComplete: %@, clientDropCompletion: %@, defersFinalDropAnimationCompletion: %@, finalUIKitDropCompletion: %@", &v22, 0x34u);
  }
}

- (void)performAfterDropAnimation:(id)animation
{
  [(STKDragPreviewContainerView *)self setClientDropCompletion:animation];

  [(STKDragPreviewContainerView *)self finalizeDropIfNecessary];
}

- (void)setDefersFinalDropAnimationCompletion:(BOOL)completion
{
  if (self->_defersFinalDropAnimationCompletion != completion)
  {
    self->_defersFinalDropAnimationCompletion = completion;
    [(STKDragPreviewContainerView *)self finalizeDropIfNecessary];
  }
}

- (void)setDropAnimationIsComplete:(BOOL)complete
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_dropAnimationIsComplete != complete)
  {
    completeCopy = complete;
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (completeCopy)
      {
        v6 = @"YES";
      }

      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_19A5EE000, v5, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> setDropAnimationIsComplete: %@", &v7, 0x16u);
    }

    self->_dropAnimationIsComplete = completeCopy;
    [(STKDragPreviewContainerView *)self finalizeDropIfNecessary];
  }
}

- (void)reversePeelAnimationToPoint:(CGPoint)point forPlacement:(BOOL)placement shouldShrink:(BOOL)shrink completionBlock:(id)block
{
  shrinkCopy = shrink;
  placementCopy = placement;
  y = point.y;
  x = point.x;
  blockCopy = block;
  v12 = objc_opt_class();
  LODWORD(v13) = 1061997773;
  v14 = [v12 springAnimationWithKeyPath:@"transform.scale.xy" speed:v13];
  v15 = v14;
  v100 = v14;
  v99 = placementCopy;
  if (shrinkCopy)
  {
    [v14 setToValue:&unk_1F0DFA330];
  }

  else
  {
    v16 = MEMORY[0x1E696AD98];
    if (placementCopy)
    {
      [(STKDragPreviewContainerView *)self dragViewScale];
    }

    else
    {
      [(STKDragPreviewContainerView *)self dragViewScaleUp];
    }

    v17 = [v16 numberWithDouble:?];
    [v15 setToValue:v17];
  }

  meshLayer = [(STKDragPreviewContainerView *)self meshLayer];
  presentationLayer = [meshLayer presentationLayer];
  [presentationLayer position];
  v21 = v20;
  v23 = v22;

  v24 = objc_opt_class();
  LODWORD(v25) = 1050253722;
  v26 = [v24 springAnimationWithKeyPath:@"position" speed:v25];
  v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v21, v23}];
  [v26 setFromValue:v27];

  v28 = MEMORY[0x1E696B098];
  [(STKDragPreviewContainerView *)self meshLayerStartPosition];
  v29 = [v28 valueWithCGPoint:?];
  [v26 setToValue:v29];

  peelLayer = [(STKDragPreviewContainerView *)self peelLayer];
  presentationLayer2 = [peelLayer presentationLayer];
  [presentationLayer2 position];
  v33 = v32;
  v35 = v34;

  v36 = objc_opt_class();
  LODWORD(v37) = 1050253722;
  v38 = [v36 springAnimationWithKeyPath:@"position" speed:v37];
  v39 = [MEMORY[0x1E696B098] valueWithCGPoint:{v33, v35}];
  [v38 setFromValue:v39];

  v40 = MEMORY[0x1E696B098];
  [(STKDragPreviewContainerView *)self peelLayerStartPosition];
  v41 = [v40 valueWithCGPoint:?];
  [v38 setToValue:v41];

  shineLayer = [(STKDragPreviewContainerView *)self shineLayer];
  presentationLayer3 = [shineLayer presentationLayer];
  [presentationLayer3 position];
  v45 = v44;
  v47 = v46;

  v48 = objc_opt_class();
  LODWORD(v49) = 1050253722;
  v50 = [v48 springAnimationWithKeyPath:@"position" speed:v49];
  v51 = [MEMORY[0x1E696B098] valueWithCGPoint:{v45, v47}];
  [v50 setFromValue:v51];

  v52 = MEMORY[0x1E696B098];
  [(STKDragPreviewContainerView *)self shineLayerStartPosition];
  v53 = [v52 valueWithCGPoint:?];
  [v50 setToValue:v53];

  shadowLayer = [(STKDragPreviewContainerView *)self shadowLayer];
  presentationLayer4 = [shadowLayer presentationLayer];
  [presentationLayer4 position];
  v57 = v56;
  v59 = v58;

  v60 = objc_opt_class();
  LODWORD(v61) = 1066192077;
  v62 = [v60 springAnimationWithKeyPath:@"position" speed:v61];
  v63 = [MEMORY[0x1E696B098] valueWithCGPoint:{v57, v59}];
  [v62 setFromValue:v63];

  v64 = MEMORY[0x1E696B098];
  [(STKDragPreviewContainerView *)self shadowLayerStartPosition];
  v65 = [v64 valueWithCGPoint:?];
  [v62 setToValue:v65];

  [v62 setBeginTime:CACurrentMediaTime() + 0.18];
  if (shrinkCopy)
  {
    layer = [(STKDragPreviewContainerView *)self layer];
    [layer position];
    v68 = v67;
    v70 = v69;

    v71 = objc_opt_class();
    LODWORD(v72) = 1066192077;
    v73 = [v71 springAnimationWithKeyPath:@"position" speed:v72];
    v74 = [MEMORY[0x1E696B098] valueWithCGPoint:{v68, v70}];
    [v73 setFromValue:v74];

    v75 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [v73 setToValue:v75];

    v76 = objc_opt_class();
    LODWORD(v77) = 1066192077;
    v78 = [v76 springAnimationWithKeyPath:@"opacity" speed:v77];
    [v78 setFromValue:&unk_1F0DFA340];
    [v78 setToValue:&unk_1F0DFA350];
  }

  else
  {
    v73 = 0;
    v78 = 0;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  layer2 = [(STKDragPreviewContainerView *)self layer];
  [layer2 addAnimation:v100 forKey:@"scaleUpAnimation"];

  meshLayer2 = [(STKDragPreviewContainerView *)self meshLayer];
  [meshLayer2 addAnimation:v26 forKey:@"meshAnimation"];

  peelLayer2 = [(STKDragPreviewContainerView *)self peelLayer];
  [peelLayer2 addAnimation:v38 forKey:@"peelAnimation"];

  shineLayer2 = [(STKDragPreviewContainerView *)self shineLayer];
  [shineLayer2 addAnimation:v50 forKey:@"shineAnimation"];

  shadowLayer2 = [(STKDragPreviewContainerView *)self shadowLayer];
  [shadowLayer2 addAnimation:v62 forKey:@"shadowAnimation"];

  if (v73)
  {
    layer3 = [(STKDragPreviewContainerView *)self layer];
    [layer3 addAnimation:v73 forKey:@"moveAnimation"];
  }

  if (v78)
  {
    layer4 = [(STKDragPreviewContainerView *)self layer];
    [layer4 addAnimation:v78 forKey:@"opacityAnimation"];
  }

  [MEMORY[0x1E6979518] commit];
  if (v99)
  {
    v86 = dispatch_time(0, 750000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
    block[3] = &unk_1E751A390;
    v105 = blockCopy;
    v87 = blockCopy;
    dispatch_after(v86, MEMORY[0x1E69E96A0], block);
    v88 = v105;
  }

  else
  {
    v89 = *MEMORY[0x1E695EFF8];
    v90 = *(MEMORY[0x1E695EFF8] + 8);
    [(STKDragPreviewContainerView *)self rasterizedImageSize];
    v92 = v91;
    v94 = v93;
    v106.origin.x = v89;
    v106.origin.y = v90;
    v106.size.width = v92;
    v106.size.height = v94;
    v95 = x - CGRectGetWidth(v106) * 0.5;
    v107.origin.x = v95;
    v107.origin.y = v90;
    v107.size.width = v92;
    v107.size.height = v94;
    Height = CGRectGetHeight(v107);
    v97 = MEMORY[0x1E69DD250];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2;
    v103[3] = &unk_1E751A3B8;
    v103[4] = self;
    *&v103[5] = v95;
    *&v103[6] = y - Height * 0.5;
    *&v103[7] = v92;
    *&v103[8] = v94;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3;
    v101[3] = &unk_1E751A3E0;
    v102 = blockCopy;
    v98 = blockCopy;
    [v97 animateWithDuration:0 delay:v103 usingSpringWithDamping:v101 initialSpringVelocity:0.75 options:0.0 animations:0.6 completion:0.0];
    v88 = v102;
  }
}

uint64_t __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 32) setAlpha:0.999];
}

uint64_t __101__STKDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_preparePreviewContainerWithPreview:(id)preview source:(id)source initialTransform:(CGAffineTransform *)transform
{
  v134[1] = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  sourceCopy = source;
  [(STKDragPreviewContainerView *)self bounds];
  width = v8;
  height = v10;
  layer = [(STKDragPreviewContainerView *)self layer];
  [layer anchorPoint];
  v14 = v13;
  v16 = v15;

  memset(&v132, 0, sizeof(v132));
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&m.a = *MEMORY[0x1E695EFD0];
  *&m.c = v17;
  *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v132, &m, 1.25, 1.25);
  memset(&v131, 0, sizeof(v131));
  m = v132;
  CGAffineTransformInvert(&v131, &m);
  if ([(STKDragPreviewContainerView *)self isDropAnimation])
  {
    [previewCopy convertSize:self fromView:{width, height}];
    v19 = v18;
    v21 = v20;
    [previewCopy convertPoint:self fromView:{v14, v16}];
    v14 = v22;
    m = v131;
    v135.origin.x = 0.0;
    v135.origin.y = 0.0;
    v135.size.width = v19;
    v135.size.height = v21;
    v136 = CGRectApplyAffineTransform(v135, &m);
    width = v136.size.width;
    height = v136.size.height;
  }

  isDropAnimation = [(STKDragPreviewContainerView *)self isDropAnimation];
  [(STKDragPreviewContainerView *)self bounds];
  x = v24;
  y = v25;
  v30 = v26;
  v31 = v27;
  if (isDropAnimation)
  {
    v137 = CGRectInset(*&v24, width * 0.125, height * 0.125);
    x = v137.origin.x;
    y = v137.origin.y;
    v30 = v137.size.width;
    v31 = v137.size.height;
  }

  layer2 = [MEMORY[0x1E6979530] layer];
  v33 = *(MEMORY[0x1E69792E8] + 48);
  *&m.tx = *(MEMORY[0x1E69792E8] + 32);
  v126 = v33;
  v127 = *(MEMORY[0x1E69792E8] + 64);
  v34 = *(MEMORY[0x1E69792E8] + 80);
  v35 = *(MEMORY[0x1E69792E8] + 16);
  *&m.a = *MEMORY[0x1E69792E8];
  *&m.c = v35;
  v36 = *(MEMORY[0x1E69792E8] + 112);
  v129 = *(MEMORY[0x1E69792E8] + 96);
  v130 = v36;
  *&v128 = v34;
  *(&v128 + 1) = 0xBF6B4E81C0000000;
  [layer2 setSublayerTransform:&m];
  [layer2 setFrame:{x, y, v30, v31}];
  layer3 = [(STKDragPreviewContainerView *)self layer];
  [layer3 addSublayer:layer2];

  [(STKDragPreviewContainerView *)self setPerspectiveLayer:layer2];
  v38 = height * 1.1;
  v39 = width * 1.25;
  v121 = width;
  v40 = v14 * width;
  layer4 = [MEMORY[0x1E6979398] layer];
  if ([(STKDragPreviewContainerView *)self isDropAnimation])
  {
    v42 = 1.2;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = [objc_opt_class() meshTransformWithContentScale:v42];
  [layer4 setMeshTransform:v43];

  [layer4 setPosition:{v40, -(height * 1.1 - height * v14)}];
  [layer4 setBounds:{0.0, 0.0, v39, v38 + v38 + height * 1.25}];
  [layer4 setRasterizationScale:2.8];
  v120 = layer2;
  [layer2 addSublayer:layer4];
  [(STKDragPreviewContainerView *)self setMeshLayer:layer4];
  [layer4 position];
  [(STKDragPreviewContainerView *)self setMeshLayerStartPosition:?];
  layer5 = [MEMORY[0x1E6979398] layer];
  [layer5 setPosition:{v14 * v39, v38 + (v38 + v38 + height * 1.25) * 0.5}];
  [layer5 setBounds:{0.0, 0.0, v121, height}];
  [layer4 addSublayer:layer5];
  [(STKDragPreviewContainerView *)self setPeelLayer:layer5];
  [layer5 position];
  [(STKDragPreviewContainerView *)self setPeelLayerStartPosition:?];
  [(STKDragPreviewContainerView *)self addSubview:previewCopy];
  [(STKDragPreviewContainerView *)self setPreviewView:previewCopy];
  layer6 = [previewCopy layer];
  v46 = *MEMORY[0x1E6979DE8];
  [layer6 setContentsGravity:*MEMORY[0x1E6979DE8]];
  [layer5 bounds];
  MidX = CGRectGetMidX(v138);
  [layer5 bounds];
  [layer6 setPosition:{MidX, CGRectGetMidY(v139)}];
  v133 = @"contents";
  null = [MEMORY[0x1E695DFB0] null];
  v134[0] = null;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
  [layer6 setActions:v49];

  [(STKDragPreviewContainerView *)self setPeelImageLayer:layer6];
  [layer5 addSublayer:layer6];
  image = [(STKDragPreviewContainerView *)self image];

  if (image)
  {
    image2 = [(STKDragPreviewContainerView *)self image];
    currentDropPreviewSnapshot2 = [(STKDragPreviewContainerView *)self peelMaskImageFromImage:image2];

    cGImage = [currentDropPreviewSnapshot2 CGImage];
  }

  else
  {
    layer7 = [sourceCopy layer];
    contents = [layer7 contents];

    if (contents)
    {
      layer8 = [sourceCopy layer];
      cGImage = [layer8 contents];

      v57 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(STKDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:v57];

      [sourceCopy frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      currentDropPreviewSnapshot = [(STKDragPreviewContainerView *)self currentDropPreviewSnapshot];
      [currentDropPreviewSnapshot setFrame:{v59, v61, v63, v65}];

      currentDropPreviewSnapshot2 = [(STKDragPreviewContainerView *)self currentDropPreviewSnapshot];
      layer9 = [currentDropPreviewSnapshot2 layer];
      [layer9 setContents:cGImage];
    }

    else
    {
      currentDropPreviewSnapshot2 = [sourceCopy snapshotViewAfterScreenUpdates:1];
      layer10 = [currentDropPreviewSnapshot2 layer];
      cGImage = [layer10 contents];

      [(STKDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:currentDropPreviewSnapshot2];
    }
  }

  v122 = cGImage;
  if (cGImage)
  {
    layer11 = [MEMORY[0x1E6979398] layer];
    [layer11 setContents:cGImage];
    [previewCopy bounds];
    [layer11 setFrame:?];
    [layer11 setContentsGravity:v46];
    [(STKDragPreviewContainerView *)self setPeelMaskLayer:layer11];
    v70 = objc_alloc_init(MEMORY[0x1E6979398]);
    [previewCopy frame];
    [v70 setFrame:?];
    [v70 setMask:layer11];
    [layer5 addSublayer:v70];
    v71 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [MEMORY[0x1E69DCAB8] imageNamed:@"StickerShine" inBundle:? compatibleWithTraitCollection:?];
    v72 = v119 = previewCopy;
    [v72 size];
    v74 = v73;
    [v70 bounds];
    v75 = CGRectGetWidth(v140);
    v76 = v75 + v75;
    if (v74 < v76)
    {
      v74 = v76;
    }

    layer12 = [MEMORY[0x1E6979398] layer];
    [layer12 setContents:{objc_msgSend(v72, "CGImage")}];
    [v70 bounds];
    v78 = round(CGRectGetWidth(v141) - v74) * 0.5;
    [v72 size];
    v80 = -v79;
    [v72 size];
    [layer12 setFrame:{v78, v80, v74, v81}];
    LODWORD(v82) = 1035489772;
    [layer12 setOpacity:v82];
    [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    v83 = v118 = layer6;
    [layer12 setCompositingFilter:v83];

    [v70 addSublayer:layer12];
    [(STKDragPreviewContainerView *)self setShineLayer:layer12];
    [layer12 position];
    [(STKDragPreviewContainerView *)self setShineLayerStartPosition:?];
    v84 = v71;
    v85 = [MEMORY[0x1E69DCAB8] imageNamed:@"StickerShadow" inBundle:v71 compatibleWithTraitCollection:0];
    [v85 size];
    v87 = v86;
    [v70 bounds];
    v88 = CGRectGetWidth(v142);
    v89 = v88 + v88;
    if (v87 < v89)
    {
      v87 = v89;
    }

    layer13 = [MEMORY[0x1E6979398] layer];
    [layer13 setContents:{objc_msgSend(v85, "CGImage")}];
    [v70 bounds];
    v91 = round(CGRectGetWidth(v143) - v87) * 0.5;
    [v85 size];
    v93 = -10.0 - v92;
    [v85 size];
    [layer13 setFrame:{v91, v93, v87, v94}];
    LODWORD(v95) = 1043542835;
    [layer13 setOpacity:v95];
    [v70 addSublayer:layer13];
    [(STKDragPreviewContainerView *)self setShadowLayer:layer13];
    [layer13 position];
    [(STKDragPreviewContainerView *)self setShadowLayerStartPosition:?];

    cGImage = v122;
    layer6 = v118;

    previewCopy = v119;
  }

  if ([(STKDragPreviewContainerView *)self showDebugBorders])
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [layer4 setBorderColor:{objc_msgSend(blueColor, "CGColor")}];

    [layer4 setBorderWidth:1.0];
    redColor = [MEMORY[0x1E69DC888] redColor];
    cGColor = [redColor CGColor];
    [(STKDragPreviewContainerView *)self layer];
    v100 = v99 = layer6;
    [v100 setBorderColor:cGColor];

    layer6 = v99;
    layer14 = [(STKDragPreviewContainerView *)self layer];
    [layer14 setBorderWidth:1.0];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [layer5 setBorderColor:{objc_msgSend(greenColor, "CGColor")}];

    [layer5 setBorderWidth:1.0];
    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
    [v120 setBorderColor:{objc_msgSend(yellowColor, "CGColor")}];

    [v120 setBorderWidth:1.0];
    cGImage = v122;
    systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
    [v99 setBorderColor:{objc_msgSend(systemPurpleColor, "CGColor")}];

    [v99 setBorderWidth:1.0];
  }

  if ([(STKDragPreviewContainerView *)self isDropAnimation])
  {
    v105 = -(height * 1.1);
    m = v131;
    CATransform3DMakeAffineTransform(&v124, &m);
    v127 = *&v124.m31;
    v128 = *&v124.m33;
    v129 = *&v124.m41;
    v130 = *&v124.m43;
    *&m.a = *&v124.m11;
    *&m.c = *&v124.m13;
    *&m.tx = *&v124.m21;
    v126 = *&v124.m23;
    [v120 setTransform:&m];
    [layer4 position];
    v107 = v106;
    [layer4 position];
    [layer4 setPosition:{v107, v108 + v38 * 2.0}];
    [layer5 position];
    v110 = v109;
    [layer5 position];
    [layer5 setPosition:{v110, v111 + v105 * 2.0}];
    [(CALayer *)self->_shineLayer position];
    v113 = v112;
    [(CALayer *)self->_shineLayer position];
    [(CALayer *)self->_shineLayer setPosition:v113, v114 + 135.0];
    [(CALayer *)self->_shadowLayer position];
    v116 = v115;
    [(CALayer *)self->_shadowLayer position];
    [(CALayer *)self->_shadowLayer setPosition:v116, v117 + 130.0];
  }
}

- (void)_animateLiftAlongsideAnimator:(id)animator completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__STKDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke;
  v8[3] = &unk_1E751A408;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [animator addAnimations:v8];
}

void __72__STKDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) center];
  [*(a1 + 32) setOriginalCenter:?];
  [*(a1 + 32) bounds];
  v3 = v2 * 1.1 + v2 * 1.1;
  v4 = objc_opt_class();
  LODWORD(v5) = 1050253722;
  v6 = [v4 springAnimationWithKeyPath:@"position" speed:v5];
  v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, v3}];
  [v6 setByValue:v7];

  [v6 setBeginTime:CACurrentMediaTime() + -0.31];
  v8 = objc_opt_class();
  LODWORD(v9) = 1050253722;
  v10 = [v8 springAnimationWithKeyPath:@"position" speed:v9];
  v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, -v3}];
  [v10 setByValue:v11];

  [v10 setBeginTime:CACurrentMediaTime() + -0.31];
  v12 = objc_opt_class();
  LODWORD(v13) = 1053609165;
  v14 = [v12 springAnimationWithKeyPath:@"position" speed:v13];
  v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 135.0}];
  [v14 setByValue:v15];

  [v14 setBeginTime:CACurrentMediaTime() + -0.12];
  v16 = objc_opt_class();
  LODWORD(v17) = 1061997773;
  v18 = [v16 springAnimationWithKeyPath:@"position" speed:v17];
  v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 130.0}];
  [v18 setByValue:v19];

  [v18 setBeginTime:CACurrentMediaTime() + 0.1];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  v20 = [*(a1 + 32) meshLayer];
  [v20 addAnimation:v6 forKey:@"meshAnimation"];

  v21 = [*(a1 + 32) peelLayer];
  [v21 addAnimation:v10 forKey:@"peelAnimation"];

  v22 = [*(a1 + 32) shineLayer];
  [v22 addAnimation:v14 forKey:@"shineAnimation"];

  v23 = [*(a1 + 32) shadowLayer];
  [v23 addAnimation:v18 forKey:@"shadowAnimation"];

  [MEMORY[0x1E6979518] commit];
  v24 = dispatch_time(0, 910000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__STKDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke_2;
  block[3] = &unk_1E751A390;
  v26 = *(a1 + 40);
  dispatch_after(v24, MEMORY[0x1E69E96A0], block);
}

uint64_t __72__STKDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateLiftCancellationAlongsideAnimator:(id)animator completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (animator)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke;
    v15[3] = &unk_1E751A408;
    v15[4] = self;
    v16 = completionCopy;
    [animator addAnimations:v15];
    v8 = v16;
  }

  else
  {
    [(STKDragPreviewContainerView *)self originalCenter];
    v10 = v9;
    v12 = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_3;
    v13[3] = &unk_1E751A390;
    v14 = v7;
    [(STKDragPreviewContainerView *)self reversePeelAnimationToPoint:0 forPlacement:0 shouldShrink:v13 completionBlock:v10, v12];
    v8 = v14;
  }
}

void __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 originalCenter];
  v4 = v3;
  v6 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_2;
  v7[3] = &unk_1E751A390;
  v8 = *(a1 + 40);
  [v2 reversePeelAnimationToPoint:0 forPlacement:0 shouldShrink:v7 completionBlock:{v4, v6}];
}

uint64_t __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __84__STKDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateDropAlongsideAnimator:(id)animator completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  completionCopy = completion;
  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = animatorCopy;
    _os_log_impl(&dword_19A5EE000, v8, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> _animateDropAlongsideAnimator animator: %@", buf, 0x16u);
  }

  [(STKDragPreviewContainerView *)self setFinalUIKitDropCompletion:completionCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__STKDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke;
  v9[3] = &unk_1E751A430;
  v9[4] = self;
  [animatorCopy addAnimations:v9];
}

uint64_t __72__STKDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_19A5EE000, v2, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> _animateDropAlongsideAnimator animator callback.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  [v4 center];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__STKDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke_83;
  v6[3] = &unk_1E751A430;
  v6[4] = *(a1 + 32);
  return [v4 reversePeelAnimationToPoint:1 forPlacement:0 shouldShrink:v6 completionBlock:?];
}

uint64_t __72__STKDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke_83(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19A5EE000, v2, OS_LOG_TYPE_DEFAULT, "<STKDragPreviewContainerView: %p> _animateDropAlongsideAnimator reversePeelAnimationToPoint callback", &v5, 0xCu);
  }

  return [*(a1 + 32) setDropAnimationIsComplete:1];
}

- (CGPoint)originalCenter
{
  x = self->_originalCenter.x;
  y = self->_originalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)meshLayerStartPosition
{
  x = self->_meshLayerStartPosition.x;
  y = self->_meshLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)peelLayerStartPosition
{
  x = self->_peelLayerStartPosition.x;
  y = self->_peelLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shineLayerStartPosition
{
  x = self->_shineLayerStartPosition.x;
  y = self->_shineLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shadowLayerStartPosition
{
  x = self->_shadowLayerStartPosition.x;
  y = self->_shadowLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)dropShadowLayerStartPosition
{
  x = self->_dropShadowLayerStartPosition.x;
  y = self->_dropShadowLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end