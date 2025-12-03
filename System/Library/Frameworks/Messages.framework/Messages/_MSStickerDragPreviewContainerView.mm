@interface _MSStickerDragPreviewContainerView
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
- (_MSStickerDragPreviewContainerView)initWithIsDropAnimation:(BOOL)animation;
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

@implementation _MSStickerDragPreviewContainerView

- (_MSStickerDragPreviewContainerView)initWithIsDropAnimation:(BOOL)animation
{
  v7.receiver = self;
  v7.super_class = _MSStickerDragPreviewContainerView;
  v4 = [(_MSStickerDragPreviewContainerView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isDropAnimation = animation;
    [(_MSStickerDragPreviewContainerView *)v4 setClipsToBounds:0];
  }

  return v5;
}

+ (id)meshTransformWithContentScale:(double)scale
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___MSStickerDragPreviewContainerView_meshTransformWithContentScale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = scale;
  if (meshTransformWithContentScale__onceToken != -1)
  {
    dispatch_once(&meshTransformWithContentScale__onceToken, block);
  }

  v3 = meshTransformWithContentScale____mesh;

  return v3;
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
  v2 = MEMORY[0x1CCAA9AD0](@"_UIDragPreviewShadowProperties", @"UIKit");
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
  [(_MSStickerDragPreviewContainerView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGSize)rasterizedImageSize
{
  [(_MSStickerDragPreviewContainerView *)self bounds];
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
  [(_MSStickerDragPreviewContainerView *)self rasterizedImageSize];
  v4 = v3;
  [(_MSStickerDragPreviewContainerView *)self initialSize];
  if (v4 < v5 || ([(_MSStickerDragPreviewContainerView *)self rasterizedImageSize], v7 = v6, [(_MSStickerDragPreviewContainerView *)self initialSize], result = 1.0, v7 < v9))
  {
    [(_MSStickerDragPreviewContainerView *)self rasterizedImageSize];
    v11 = v10;
    [(_MSStickerDragPreviewContainerView *)self rasterizedImageSize];
    v13 = v12;
    [(_MSStickerDragPreviewContainerView *)self initialSize];
    v15 = v14;
    v17 = v16;
    [(_MSStickerDragPreviewContainerView *)self rasterizedImageSize];
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
  if ([(_MSStickerDragPreviewContainerView *)self dropAnimationIsComplete])
  {
    clientDropCompletion = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
    if (clientDropCompletion)
    {

LABEL_14:
      v11 = ms_defaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if ([(_MSStickerDragPreviewContainerView *)self dropAnimationIsComplete])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        clientDropCompletion2 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
        v14 = _Block_copy(clientDropCompletion2);
        if ([(_MSStickerDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        finalUIKitDropCompletion = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
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
        _os_log_impl(&dword_1CADE6000, v11, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> finalizeDropIfNecessary finalizing drop. dropAnimationIsComplete: %@, clientDropCompletion: %@, defersFinalDropAnimationCompletion: %@, finalUIKitDropCompletion: %@", &v22, 0x34u);
      }

      clientDropCompletion3 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];

      if (clientDropCompletion3)
      {
        clientDropCompletion4 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
        clientDropCompletion4[2]();

        [(_MSStickerDragPreviewContainerView *)self setClientDropCompletion:0];
      }

      finalUIKitDropCompletion2 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];

      if (finalUIKitDropCompletion2)
      {
        finalUIKitDropCompletion3 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
        finalUIKitDropCompletion3[2]();

        [(_MSStickerDragPreviewContainerView *)self setFinalUIKitDropCompletion:0];
      }

      return;
    }

    if (![(_MSStickerDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
    {
      goto LABEL_14;
    }
  }

  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([(_MSStickerDragPreviewContainerView *)self dropAnimationIsComplete])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    clientDropCompletion5 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
    v7 = _Block_copy(clientDropCompletion5);
    if ([(_MSStickerDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    finalUIKitDropCompletion4 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
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
    _os_log_impl(&dword_1CADE6000, v4, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> finalizeDropIfNecessary not finalizing yet. dropAnimationIsComplete: %@, clientDropCompletion: %@, defersFinalDropAnimationCompletion: %@, finalUIKitDropCompletion: %@", &v22, 0x34u);
  }
}

- (void)performAfterDropAnimation:(id)animation
{
  [(_MSStickerDragPreviewContainerView *)self setClientDropCompletion:animation];

  [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
}

- (void)setDefersFinalDropAnimationCompletion:(BOOL)completion
{
  if (self->_defersFinalDropAnimationCompletion != completion)
  {
    self->_defersFinalDropAnimationCompletion = completion;
    [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
  }
}

- (void)setDropAnimationIsComplete:(BOOL)complete
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_dropAnimationIsComplete != complete)
  {
    completeCopy = complete;
    v5 = ms_defaultLog();
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
      _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> setDropAnimationIsComplete: %@", &v7, 0x16u);
    }

    self->_dropAnimationIsComplete = completeCopy;
    [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
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
    [v14 setToValue:&unk_1F4AC7118];
  }

  else
  {
    v16 = MEMORY[0x1E696AD98];
    if (placementCopy)
    {
      [(_MSStickerDragPreviewContainerView *)self dragViewScale];
    }

    else
    {
      [(_MSStickerDragPreviewContainerView *)self dragViewScaleUp];
    }

    v17 = [v16 numberWithDouble:?];
    [v15 setToValue:v17];
  }

  meshLayer = [(_MSStickerDragPreviewContainerView *)self meshLayer];
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
  [(_MSStickerDragPreviewContainerView *)self meshLayerStartPosition];
  v29 = [v28 valueWithCGPoint:?];
  [v26 setToValue:v29];

  peelLayer = [(_MSStickerDragPreviewContainerView *)self peelLayer];
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
  [(_MSStickerDragPreviewContainerView *)self peelLayerStartPosition];
  v41 = [v40 valueWithCGPoint:?];
  [v38 setToValue:v41];

  shineLayer = [(_MSStickerDragPreviewContainerView *)self shineLayer];
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
  [(_MSStickerDragPreviewContainerView *)self shineLayerStartPosition];
  v53 = [v52 valueWithCGPoint:?];
  [v50 setToValue:v53];

  shadowLayer = [(_MSStickerDragPreviewContainerView *)self shadowLayer];
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
  [(_MSStickerDragPreviewContainerView *)self shadowLayerStartPosition];
  v65 = [v64 valueWithCGPoint:?];
  [v62 setToValue:v65];

  [v62 setBeginTime:CACurrentMediaTime() + 0.18];
  if (shrinkCopy)
  {
    layer = [(_MSStickerDragPreviewContainerView *)self layer];
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
    [v78 setFromValue:&unk_1F4AC7128];
    [v78 setToValue:&unk_1F4AC7138];
  }

  else
  {
    v73 = 0;
    v78 = 0;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  layer2 = [(_MSStickerDragPreviewContainerView *)self layer];
  [layer2 addAnimation:v100 forKey:@"scaleUpAnimation"];

  meshLayer2 = [(_MSStickerDragPreviewContainerView *)self meshLayer];
  [meshLayer2 addAnimation:v26 forKey:@"meshAnimation"];

  peelLayer2 = [(_MSStickerDragPreviewContainerView *)self peelLayer];
  [peelLayer2 addAnimation:v38 forKey:@"peelAnimation"];

  shineLayer2 = [(_MSStickerDragPreviewContainerView *)self shineLayer];
  [shineLayer2 addAnimation:v50 forKey:@"shineAnimation"];

  shadowLayer2 = [(_MSStickerDragPreviewContainerView *)self shadowLayer];
  [shadowLayer2 addAnimation:v62 forKey:@"shadowAnimation"];

  if (v73)
  {
    layer3 = [(_MSStickerDragPreviewContainerView *)self layer];
    [layer3 addAnimation:v73 forKey:@"moveAnimation"];
  }

  if (v78)
  {
    layer4 = [(_MSStickerDragPreviewContainerView *)self layer];
    [layer4 addAnimation:v78 forKey:@"opacityAnimation"];
  }

  [MEMORY[0x1E6979518] commit];
  if (v99)
  {
    v86 = dispatch_time(0, 750000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
    block[3] = &unk_1E83A2CC0;
    v105 = blockCopy;
    v87 = blockCopy;
    dispatch_after(v86, MEMORY[0x1E69E96A0], block);
    v88 = v105;
  }

  else
  {
    v89 = *MEMORY[0x1E695EFF8];
    v90 = *(MEMORY[0x1E695EFF8] + 8);
    [(_MSStickerDragPreviewContainerView *)self rasterizedImageSize];
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
    v103[2] = __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2;
    v103[3] = &unk_1E83A3150;
    v103[4] = self;
    *&v103[5] = v95;
    *&v103[6] = y - Height * 0.5;
    *&v103[7] = v92;
    *&v103[8] = v94;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3;
    v101[3] = &unk_1E83A2DD8;
    v102 = blockCopy;
    v98 = blockCopy;
    [v97 animateWithDuration:0 delay:v103 usingSpringWithDamping:v101 initialSpringVelocity:0.75 options:0.0 animations:0.6 completion:0.0];
    v88 = v102;
  }
}

- (void)_preparePreviewContainerWithPreview:(id)preview source:(id)source initialTransform:(CGAffineTransform *)transform
{
  v144[1] = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  sourceCopy = source;
  [(_MSStickerDragPreviewContainerView *)self bounds];
  width = v8;
  height = v10;
  layer = [(_MSStickerDragPreviewContainerView *)self layer];
  [layer anchorPoint];
  v14 = v13;
  v16 = v15;

  memset(&v142, 0, sizeof(v142));
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&m.a = *MEMORY[0x1E695EFD0];
  *&m.c = v17;
  *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v142, &m, 1.25, 1.25);
  memset(&v141, 0, sizeof(v141));
  m = v142;
  CGAffineTransformInvert(&v141, &m);
  if ([(_MSStickerDragPreviewContainerView *)self isDropAnimation])
  {
    [previewCopy convertSize:self fromView:{width, height}];
    v19 = v18;
    v21 = v20;
    [previewCopy convertPoint:self fromView:{v14, v16}];
    v14 = v22;
    m = v141;
    v145.origin.x = 0.0;
    v145.origin.y = 0.0;
    v145.size.width = v19;
    v145.size.height = v21;
    v146 = CGRectApplyAffineTransform(v145, &m);
    width = v146.size.width;
    height = v146.size.height;
  }

  isDropAnimation = [(_MSStickerDragPreviewContainerView *)self isDropAnimation];
  [(_MSStickerDragPreviewContainerView *)self bounds];
  x = v24;
  y = v25;
  v30 = v26;
  v31 = v27;
  if (isDropAnimation)
  {
    v147 = CGRectInset(*&v24, width * 0.125, height * 0.125);
    x = v147.origin.x;
    y = v147.origin.y;
    v30 = v147.size.width;
    v31 = v147.size.height;
  }

  layer2 = [MEMORY[0x1E6979530] layer];
  v33 = *(MEMORY[0x1E69792E8] + 48);
  *&m.tx = *(MEMORY[0x1E69792E8] + 32);
  v136 = v33;
  v137 = *(MEMORY[0x1E69792E8] + 64);
  v34 = *(MEMORY[0x1E69792E8] + 80);
  v35 = *(MEMORY[0x1E69792E8] + 16);
  *&m.a = *MEMORY[0x1E69792E8];
  *&m.c = v35;
  v36 = *(MEMORY[0x1E69792E8] + 112);
  v139 = *(MEMORY[0x1E69792E8] + 96);
  v140 = v36;
  *&v138 = v34;
  *(&v138 + 1) = 0xBF6B4E81C0000000;
  [layer2 setSublayerTransform:&m];
  [layer2 setFrame:{x, y, v30, v31}];
  layer3 = [(_MSStickerDragPreviewContainerView *)self layer];
  [layer3 addSublayer:layer2];

  [(_MSStickerDragPreviewContainerView *)self setPerspectiveLayer:layer2];
  v126 = width;
  v38 = height * 1.1;
  v39 = width * 1.25;
  v40 = v14 * width;
  layer4 = [MEMORY[0x1E6979398] layer];
  if ([(_MSStickerDragPreviewContainerView *)self isDropAnimation])
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
  [layer2 addSublayer:layer4];
  [(_MSStickerDragPreviewContainerView *)self setMeshLayer:layer4];
  [layer4 position];
  [(_MSStickerDragPreviewContainerView *)self setMeshLayerStartPosition:?];
  layer5 = [MEMORY[0x1E6979398] layer];
  [layer5 setPosition:{v14 * v39, v38 + (v38 + v38 + height * 1.25) * 0.5}];
  [layer5 setBounds:{0.0, 0.0, v126, height}];
  [layer4 addSublayer:layer5];
  [(_MSStickerDragPreviewContainerView *)self setPeelLayer:layer5];
  [layer5 position];
  [(_MSStickerDragPreviewContainerView *)self setPeelLayerStartPosition:?];
  [(_MSStickerDragPreviewContainerView *)self addSubview:previewCopy];
  [(_MSStickerDragPreviewContainerView *)self setPreviewView:previewCopy];
  layer6 = [previewCopy layer];
  v46 = *MEMORY[0x1E6979DE8];
  [layer6 setContentsGravity:*MEMORY[0x1E6979DE8]];
  [layer5 bounds];
  MidX = CGRectGetMidX(v148);
  [layer5 bounds];
  [layer6 setPosition:{MidX, CGRectGetMidY(v149)}];
  v143 = @"contents";
  null = [MEMORY[0x1E695DFB0] null];
  v144[0] = null;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
  [layer6 setActions:v49];

  [(_MSStickerDragPreviewContainerView *)self setPeelImageLayer:layer6];
  [layer5 addSublayer:layer6];
  image = [(_MSStickerDragPreviewContainerView *)self image];

  if (image)
  {
    image2 = [(_MSStickerDragPreviewContainerView *)self image];
    currentDropPreviewSnapshot2 = [(_MSStickerDragPreviewContainerView *)self peelMaskImageFromImage:image2];

    cGImage = [currentDropPreviewSnapshot2 CGImage];
  }

  else
  {
    layer7 = [sourceCopy layer];
    contents = [layer7 contents];

    if (contents)
    {
      layer8 = [sourceCopy layer];
      contents2 = [layer8 contents];

      v58 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(_MSStickerDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:v58];

      [sourceCopy frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      currentDropPreviewSnapshot = [(_MSStickerDragPreviewContainerView *)self currentDropPreviewSnapshot];
      [currentDropPreviewSnapshot setFrame:{v60, v62, v64, v66}];

      currentDropPreviewSnapshot2 = [(_MSStickerDragPreviewContainerView *)self currentDropPreviewSnapshot];
      layer9 = [currentDropPreviewSnapshot2 layer];
      [layer9 setContents:contents2];

      cGImage = contents2;
    }

    else
    {
      currentDropPreviewSnapshot2 = [sourceCopy snapshotViewAfterScreenUpdates:1];
      layer10 = [currentDropPreviewSnapshot2 layer];
      contents3 = [layer10 contents];

      cGImage = contents3;
      [(_MSStickerDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:currentDropPreviewSnapshot2];
    }
  }

  if (cGImage)
  {
    layer11 = [MEMORY[0x1E6979398] layer];
    [layer11 setContents:cGImage];
    [previewCopy bounds];
    [layer11 setFrame:?];
    [layer11 setContentsGravity:v46];
    [(_MSStickerDragPreviewContainerView *)self setPeelMaskLayer:layer11];
    v72 = objc_alloc_init(MEMORY[0x1E6979398]);
    [layer6 bounds];
    [v72 setBounds:?];
    [layer6 position];
    [v72 setPosition:?];
    v124 = cGImage;
    v125 = previewCopy;
    if (layer6)
    {
      [layer6 transform];
    }

    else
    {
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v130 = 0u;
      memset(&v129, 0, sizeof(v129));
    }

    v137 = v131;
    v138 = v132;
    v139 = v133;
    v140 = v134;
    m = v129;
    v136 = v130;
    [v72 setTransform:&m];
    [v72 setMask:layer11];
    [layer5 addSublayer:v72];
    v123 = layer11;
    v73 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v122 = v73;
    v74 = [MEMORY[0x1E69DCAB8] imageNamed:@"StickerShine" inBundle:v73 compatibleWithTraitCollection:0];
    [v74 size];
    v76 = v75;
    [v72 bounds];
    v77 = CGRectGetWidth(v150);
    v78 = v77 + v77;
    if (v76 < v78)
    {
      v76 = v78;
    }

    layer12 = [MEMORY[0x1E6979398] layer];
    [layer12 setContents:{objc_msgSend(v74, "CGImage")}];
    [v72 bounds];
    v80 = round(CGRectGetWidth(v151) - v76) * 0.5;
    [v74 size];
    v82 = -v81;
    [v74 size];
    [layer12 setFrame:{v80, v82, v76, v83}];
    LODWORD(v84) = 1035489772;
    [layer12 setOpacity:v84];
    v85 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [layer12 setCompositingFilter:v85];

    [v72 addSublayer:layer12];
    [(_MSStickerDragPreviewContainerView *)self setShineLayer:layer12];
    [layer12 position];
    [(_MSStickerDragPreviewContainerView *)self setShineLayerStartPosition:?];
    v86 = [MEMORY[0x1E69DCAB8] imageNamed:@"StickerShadow" inBundle:v73 compatibleWithTraitCollection:0];
    [v86 size];
    v88 = v87;
    [v72 bounds];
    v89 = CGRectGetWidth(v152);
    v90 = v89 + v89;
    if (v88 < v90)
    {
      v88 = v90;
    }

    layer13 = [MEMORY[0x1E6979398] layer];
    [layer13 setContents:{objc_msgSend(v86, "CGImage")}];
    [v72 bounds];
    v92 = round(CGRectGetWidth(v153) - v88) * 0.5;
    [v86 size];
    v94 = -10.0 - v93;
    [v86 size];
    [layer13 setFrame:{v92, v94, v88, v95}];
    LODWORD(v96) = 1043542835;
    [layer13 setOpacity:v96];
    [v72 addSublayer:layer13];
    [(_MSStickerDragPreviewContainerView *)self setShadowLayer:layer13];
    [layer13 position];
    [(_MSStickerDragPreviewContainerView *)self setShadowLayerStartPosition:?];

    cGImage = v124;
    previewCopy = v125;
  }

  if ([(_MSStickerDragPreviewContainerView *)self showDebugBorders])
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [layer4 setBorderColor:{objc_msgSend(blueColor, "CGColor")}];

    [layer4 setBorderWidth:1.0];
    redColor = [MEMORY[0x1E69DC888] redColor];
    v99 = cGImage;
    cGColor = [redColor CGColor];
    [(_MSStickerDragPreviewContainerView *)self layer];
    v101 = layer2;
    v103 = v102 = previewCopy;
    v104 = cGColor;
    cGImage = v99;
    [v103 setBorderColor:v104];

    previewCopy = v102;
    layer2 = v101;

    layer14 = [(_MSStickerDragPreviewContainerView *)self layer];
    [layer14 setBorderWidth:1.0];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [layer5 setBorderColor:{objc_msgSend(greenColor, "CGColor")}];

    [layer5 setBorderWidth:1.0];
    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
    [v101 setBorderColor:{objc_msgSend(yellowColor, "CGColor")}];

    [v101 setBorderWidth:1.0];
    systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
    [layer6 setBorderColor:{objc_msgSend(systemPurpleColor, "CGColor")}];

    [layer6 setBorderWidth:1.0];
  }

  if ([(_MSStickerDragPreviewContainerView *)self isDropAnimation])
  {
    v109 = -(height * 1.1);
    m = v141;
    CATransform3DMakeAffineTransform(&v128, &m);
    v137 = *&v128.m31;
    v138 = *&v128.m33;
    v139 = *&v128.m41;
    v140 = *&v128.m43;
    *&m.a = *&v128.m11;
    *&m.c = *&v128.m13;
    *&m.tx = *&v128.m21;
    v136 = *&v128.m23;
    [layer2 setTransform:&m];
    [layer4 position];
    v111 = v110;
    [layer4 position];
    [layer4 setPosition:{v111, v112 + v38 * 2.0}];
    [layer5 position];
    v114 = v113;
    [layer5 position];
    [layer5 setPosition:{v114, v115 + v109 * 2.0}];
    [(CALayer *)self->_shineLayer position];
    v117 = v116;
    [(CALayer *)self->_shineLayer position];
    [(CALayer *)self->_shineLayer setPosition:v117, v118 + 135.0];
    [(CALayer *)self->_shadowLayer position];
    v120 = v119;
    [(CALayer *)self->_shadowLayer position];
    [(CALayer *)self->_shadowLayer setPosition:v120, v121 + 130.0];
  }
}

- (void)_animateLiftAlongsideAnimator:(id)animator completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___MSStickerDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke;
  v8[3] = &unk_1E83A2C48;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [animator addAnimations:v8];
}

- (void)_animateLiftCancellationAlongsideAnimator:(id)animator completion:(id)completion
{
  animatorCopy = animator;
  completionCopy = completion;
  if (animatorCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke;
    v19[3] = &unk_1E83A2C20;
    v19[4] = self;
    [animatorCopy addAnimations:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_3;
    v17[3] = &unk_1E83A3178;
    v18 = completionCopy;
    v8 = completionCopy;
    [animatorCopy addCompletion:v17];
    v9 = v18;
  }

  else
  {
    [(_MSStickerDragPreviewContainerView *)self originalCenter];
    v11 = v10;
    v13 = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_4;
    v15[3] = &unk_1E83A2CC0;
    v16 = completionCopy;
    v14 = completionCopy;
    [(_MSStickerDragPreviewContainerView *)self reversePeelAnimationToPoint:0 forPlacement:0 shouldShrink:v15 completionBlock:v11, v13];
    v9 = v16;
  }
}

- (void)_animateDropAlongsideAnimator:(id)animator completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  completionCopy = completion;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = animatorCopy;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> _animateDropAlongsideAnimator animator: %@", buf, 0x16u);
  }

  [(_MSStickerDragPreviewContainerView *)self setFinalUIKitDropCompletion:completionCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___MSStickerDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke;
  v9[3] = &unk_1E83A2C20;
  v9[4] = self;
  [animatorCopy addAnimations:v9];
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