@interface _MSStickerDragPreviewContainerView
+ (id)meshTransformWithContentScale:(double)a3;
+ (id)shadowPropertiesForDrag;
+ (id)springAnimationWithKeyPath:(id)a3 speed:(float)a4;
- (CGPoint)dropShadowLayerStartPosition;
- (CGPoint)meshLayerStartPosition;
- (CGPoint)originalCenter;
- (CGPoint)peelLayerStartPosition;
- (CGPoint)shadowLayerStartPosition;
- (CGPoint)shineLayerStartPosition;
- (CGSize)initialSize;
- (CGSize)rasterizedImageSize;
- (_MSStickerDragPreviewContainerView)initWithIsDropAnimation:(BOOL)a3;
- (double)dragViewScaleUp;
- (id)peelMaskImageFromImage:(id)a3;
- (void)_animateDropAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_animateLiftAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_animateLiftCancellationAlongsideAnimator:(id)a3 completion:(id)a4;
- (void)_preparePreviewContainerWithPreview:(id)a3 source:(id)a4 initialTransform:(CGAffineTransform *)a5;
- (void)finalizeDropIfNecessary;
- (void)performAfterDropAnimation:(id)a3;
- (void)reversePeelAnimationToPoint:(CGPoint)a3 forPlacement:(BOOL)a4 shouldShrink:(BOOL)a5 completionBlock:(id)a6;
- (void)setDefersFinalDropAnimationCompletion:(BOOL)a3;
- (void)setDropAnimationIsComplete:(BOOL)a3;
@end

@implementation _MSStickerDragPreviewContainerView

- (_MSStickerDragPreviewContainerView)initWithIsDropAnimation:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _MSStickerDragPreviewContainerView;
  v4 = [(_MSStickerDragPreviewContainerView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isDropAnimation = a3;
    [(_MSStickerDragPreviewContainerView *)v4 setClipsToBounds:0];
  }

  return v5;
}

+ (id)meshTransformWithContentScale:(double)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___MSStickerDragPreviewContainerView_meshTransformWithContentScale___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = a3;
  if (meshTransformWithContentScale__onceToken != -1)
  {
    dispatch_once(&meshTransformWithContentScale__onceToken, block);
  }

  v3 = meshTransformWithContentScale____mesh;

  return v3;
}

+ (id)springAnimationWithKeyPath:(id)a3 speed:(float)a4
{
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:a3];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  *&v6 = a4;
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

- (id)peelMaskImageFromImage:(id)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = v11;
  v17.width = v7;
  v17.height = v9;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v12);

  v13 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setFill];

  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v7;
  v18.size.height = v9;
  UIRectFillUsingBlendMode(v18, kCGBlendModeCopy);
  [v5 drawInRect:22 blendMode:v3 alpha:{v4, v7, v9, 1.0}];

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
    v3 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
    if (v3)
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

        v13 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
        v14 = _Block_copy(v13);
        if ([(_MSStickerDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v16 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
        v17 = _Block_copy(v16);
        v22 = 134219010;
        v23 = self;
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

      v18 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];

      if (v18)
      {
        v19 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
        v19[2]();

        [(_MSStickerDragPreviewContainerView *)self setClientDropCompletion:0];
      }

      v20 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];

      if (v20)
      {
        v21 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
        v21[2]();

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

    v6 = [(_MSStickerDragPreviewContainerView *)self clientDropCompletion];
    v7 = _Block_copy(v6);
    if ([(_MSStickerDragPreviewContainerView *)self defersFinalDropAnimationCompletion])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [(_MSStickerDragPreviewContainerView *)self finalUIKitDropCompletion];
    v10 = _Block_copy(v9);
    v22 = 134219010;
    v23 = self;
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

- (void)performAfterDropAnimation:(id)a3
{
  [(_MSStickerDragPreviewContainerView *)self setClientDropCompletion:a3];

  [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
}

- (void)setDefersFinalDropAnimationCompletion:(BOOL)a3
{
  if (self->_defersFinalDropAnimationCompletion != a3)
  {
    self->_defersFinalDropAnimationCompletion = a3;
    [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
  }
}

- (void)setDropAnimationIsComplete:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_dropAnimationIsComplete != a3)
  {
    v3 = a3;
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> setDropAnimationIsComplete: %@", &v7, 0x16u);
    }

    self->_dropAnimationIsComplete = v3;
    [(_MSStickerDragPreviewContainerView *)self finalizeDropIfNecessary];
  }
}

- (void)reversePeelAnimationToPoint:(CGPoint)a3 forPlacement:(BOOL)a4 shouldShrink:(BOOL)a5 completionBlock:(id)a6
{
  v6 = a5;
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = objc_opt_class();
  LODWORD(v13) = 1061997773;
  v14 = [v12 springAnimationWithKeyPath:@"transform.scale.xy" speed:v13];
  v15 = v14;
  v100 = v14;
  v99 = v7;
  if (v6)
  {
    [v14 setToValue:&unk_1F4AC7118];
  }

  else
  {
    v16 = MEMORY[0x1E696AD98];
    if (v7)
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

  v18 = [(_MSStickerDragPreviewContainerView *)self meshLayer];
  v19 = [v18 presentationLayer];
  [v19 position];
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

  v30 = [(_MSStickerDragPreviewContainerView *)self peelLayer];
  v31 = [v30 presentationLayer];
  [v31 position];
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

  v42 = [(_MSStickerDragPreviewContainerView *)self shineLayer];
  v43 = [v42 presentationLayer];
  [v43 position];
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

  v54 = [(_MSStickerDragPreviewContainerView *)self shadowLayer];
  v55 = [v54 presentationLayer];
  [v55 position];
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
  if (v6)
  {
    v66 = [(_MSStickerDragPreviewContainerView *)self layer];
    [v66 position];
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
  v79 = [(_MSStickerDragPreviewContainerView *)self layer];
  [v79 addAnimation:v100 forKey:@"scaleUpAnimation"];

  v80 = [(_MSStickerDragPreviewContainerView *)self meshLayer];
  [v80 addAnimation:v26 forKey:@"meshAnimation"];

  v81 = [(_MSStickerDragPreviewContainerView *)self peelLayer];
  [v81 addAnimation:v38 forKey:@"peelAnimation"];

  v82 = [(_MSStickerDragPreviewContainerView *)self shineLayer];
  [v82 addAnimation:v50 forKey:@"shineAnimation"];

  v83 = [(_MSStickerDragPreviewContainerView *)self shadowLayer];
  [v83 addAnimation:v62 forKey:@"shadowAnimation"];

  if (v73)
  {
    v84 = [(_MSStickerDragPreviewContainerView *)self layer];
    [v84 addAnimation:v73 forKey:@"moveAnimation"];
  }

  if (v78)
  {
    v85 = [(_MSStickerDragPreviewContainerView *)self layer];
    [v85 addAnimation:v78 forKey:@"opacityAnimation"];
  }

  [MEMORY[0x1E6979518] commit];
  if (v99)
  {
    v86 = dispatch_time(0, 750000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
    block[3] = &unk_1E83A2CC0;
    v105 = v11;
    v87 = v11;
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
    v102 = v11;
    v98 = v11;
    [v97 animateWithDuration:0 delay:v103 usingSpringWithDamping:v101 initialSpringVelocity:0.75 options:0.0 animations:0.6 completion:0.0];
    v88 = v102;
  }
}

- (void)_preparePreviewContainerWithPreview:(id)a3 source:(id)a4 initialTransform:(CGAffineTransform *)a5
{
  v144[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v127 = a4;
  [(_MSStickerDragPreviewContainerView *)self bounds];
  width = v8;
  height = v10;
  v12 = [(_MSStickerDragPreviewContainerView *)self layer];
  [v12 anchorPoint];
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
    [v7 convertSize:self fromView:{width, height}];
    v19 = v18;
    v21 = v20;
    [v7 convertPoint:self fromView:{v14, v16}];
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

  v23 = [(_MSStickerDragPreviewContainerView *)self isDropAnimation];
  [(_MSStickerDragPreviewContainerView *)self bounds];
  x = v24;
  y = v25;
  v30 = v26;
  v31 = v27;
  if (v23)
  {
    v147 = CGRectInset(*&v24, width * 0.125, height * 0.125);
    x = v147.origin.x;
    y = v147.origin.y;
    v30 = v147.size.width;
    v31 = v147.size.height;
  }

  v32 = [MEMORY[0x1E6979530] layer];
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
  [v32 setSublayerTransform:&m];
  [v32 setFrame:{x, y, v30, v31}];
  v37 = [(_MSStickerDragPreviewContainerView *)self layer];
  [v37 addSublayer:v32];

  [(_MSStickerDragPreviewContainerView *)self setPerspectiveLayer:v32];
  v126 = width;
  v38 = height * 1.1;
  v39 = width * 1.25;
  v40 = v14 * width;
  v41 = [MEMORY[0x1E6979398] layer];
  if ([(_MSStickerDragPreviewContainerView *)self isDropAnimation])
  {
    v42 = 1.2;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = [objc_opt_class() meshTransformWithContentScale:v42];
  [v41 setMeshTransform:v43];

  [v41 setPosition:{v40, -(height * 1.1 - height * v14)}];
  [v41 setBounds:{0.0, 0.0, v39, v38 + v38 + height * 1.25}];
  [v41 setRasterizationScale:2.8];
  [v32 addSublayer:v41];
  [(_MSStickerDragPreviewContainerView *)self setMeshLayer:v41];
  [v41 position];
  [(_MSStickerDragPreviewContainerView *)self setMeshLayerStartPosition:?];
  v44 = [MEMORY[0x1E6979398] layer];
  [v44 setPosition:{v14 * v39, v38 + (v38 + v38 + height * 1.25) * 0.5}];
  [v44 setBounds:{0.0, 0.0, v126, height}];
  [v41 addSublayer:v44];
  [(_MSStickerDragPreviewContainerView *)self setPeelLayer:v44];
  [v44 position];
  [(_MSStickerDragPreviewContainerView *)self setPeelLayerStartPosition:?];
  [(_MSStickerDragPreviewContainerView *)self addSubview:v7];
  [(_MSStickerDragPreviewContainerView *)self setPreviewView:v7];
  v45 = [v7 layer];
  v46 = *MEMORY[0x1E6979DE8];
  [v45 setContentsGravity:*MEMORY[0x1E6979DE8]];
  [v44 bounds];
  MidX = CGRectGetMidX(v148);
  [v44 bounds];
  [v45 setPosition:{MidX, CGRectGetMidY(v149)}];
  v143 = @"contents";
  v48 = [MEMORY[0x1E695DFB0] null];
  v144[0] = v48;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
  [v45 setActions:v49];

  [(_MSStickerDragPreviewContainerView *)self setPeelImageLayer:v45];
  [v44 addSublayer:v45];
  v50 = [(_MSStickerDragPreviewContainerView *)self image];

  if (v50)
  {
    v51 = [(_MSStickerDragPreviewContainerView *)self image];
    v52 = [(_MSStickerDragPreviewContainerView *)self peelMaskImageFromImage:v51];

    v53 = [v52 CGImage];
  }

  else
  {
    v54 = [v127 layer];
    v55 = [v54 contents];

    if (v55)
    {
      v56 = [v127 layer];
      v57 = [v56 contents];

      v58 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(_MSStickerDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:v58];

      [v127 frame];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = [(_MSStickerDragPreviewContainerView *)self currentDropPreviewSnapshot];
      [v67 setFrame:{v60, v62, v64, v66}];

      v52 = [(_MSStickerDragPreviewContainerView *)self currentDropPreviewSnapshot];
      v68 = [v52 layer];
      [v68 setContents:v57];

      v53 = v57;
    }

    else
    {
      v52 = [v127 snapshotViewAfterScreenUpdates:1];
      v69 = [v52 layer];
      v70 = [v69 contents];

      v53 = v70;
      [(_MSStickerDragPreviewContainerView *)self setCurrentDropPreviewSnapshot:v52];
    }
  }

  if (v53)
  {
    v71 = [MEMORY[0x1E6979398] layer];
    [v71 setContents:v53];
    [v7 bounds];
    [v71 setFrame:?];
    [v71 setContentsGravity:v46];
    [(_MSStickerDragPreviewContainerView *)self setPeelMaskLayer:v71];
    v72 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v45 bounds];
    [v72 setBounds:?];
    [v45 position];
    [v72 setPosition:?];
    v124 = v53;
    v125 = v7;
    if (v45)
    {
      [v45 transform];
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
    [v72 setMask:v71];
    [v44 addSublayer:v72];
    v123 = v71;
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

    v79 = [MEMORY[0x1E6979398] layer];
    [v79 setContents:{objc_msgSend(v74, "CGImage")}];
    [v72 bounds];
    v80 = round(CGRectGetWidth(v151) - v76) * 0.5;
    [v74 size];
    v82 = -v81;
    [v74 size];
    [v79 setFrame:{v80, v82, v76, v83}];
    LODWORD(v84) = 1035489772;
    [v79 setOpacity:v84];
    v85 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [v79 setCompositingFilter:v85];

    [v72 addSublayer:v79];
    [(_MSStickerDragPreviewContainerView *)self setShineLayer:v79];
    [v79 position];
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

    v91 = [MEMORY[0x1E6979398] layer];
    [v91 setContents:{objc_msgSend(v86, "CGImage")}];
    [v72 bounds];
    v92 = round(CGRectGetWidth(v153) - v88) * 0.5;
    [v86 size];
    v94 = -10.0 - v93;
    [v86 size];
    [v91 setFrame:{v92, v94, v88, v95}];
    LODWORD(v96) = 1043542835;
    [v91 setOpacity:v96];
    [v72 addSublayer:v91];
    [(_MSStickerDragPreviewContainerView *)self setShadowLayer:v91];
    [v91 position];
    [(_MSStickerDragPreviewContainerView *)self setShadowLayerStartPosition:?];

    v53 = v124;
    v7 = v125;
  }

  if ([(_MSStickerDragPreviewContainerView *)self showDebugBorders])
  {
    v97 = [MEMORY[0x1E69DC888] blueColor];
    [v41 setBorderColor:{objc_msgSend(v97, "CGColor")}];

    [v41 setBorderWidth:1.0];
    v98 = [MEMORY[0x1E69DC888] redColor];
    v99 = v53;
    v100 = [v98 CGColor];
    [(_MSStickerDragPreviewContainerView *)self layer];
    v101 = v32;
    v103 = v102 = v7;
    v104 = v100;
    v53 = v99;
    [v103 setBorderColor:v104];

    v7 = v102;
    v32 = v101;

    v105 = [(_MSStickerDragPreviewContainerView *)self layer];
    [v105 setBorderWidth:1.0];

    v106 = [MEMORY[0x1E69DC888] greenColor];
    [v44 setBorderColor:{objc_msgSend(v106, "CGColor")}];

    [v44 setBorderWidth:1.0];
    v107 = [MEMORY[0x1E69DC888] yellowColor];
    [v101 setBorderColor:{objc_msgSend(v107, "CGColor")}];

    [v101 setBorderWidth:1.0];
    v108 = [MEMORY[0x1E69DC888] systemPurpleColor];
    [v45 setBorderColor:{objc_msgSend(v108, "CGColor")}];

    [v45 setBorderWidth:1.0];
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
    [v32 setTransform:&m];
    [v41 position];
    v111 = v110;
    [v41 position];
    [v41 setPosition:{v111, v112 + v38 * 2.0}];
    [v44 position];
    v114 = v113;
    [v44 position];
    [v44 setPosition:{v114, v115 + v109 * 2.0}];
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

- (void)_animateLiftAlongsideAnimator:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___MSStickerDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke;
  v8[3] = &unk_1E83A2C48;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 addAnimations:v8];
}

- (void)_animateLiftCancellationAlongsideAnimator:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke;
    v19[3] = &unk_1E83A2C20;
    v19[4] = self;
    [v6 addAnimations:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_3;
    v17[3] = &unk_1E83A3178;
    v18 = v7;
    v8 = v7;
    [v6 addCompletion:v17];
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
    v16 = v7;
    v14 = v7;
    [(_MSStickerDragPreviewContainerView *)self reversePeelAnimationToPoint:0 forPlacement:0 shouldShrink:v15 completionBlock:v11, v13];
    v9 = v16;
  }
}

- (void)_animateDropAlongsideAnimator:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1CADE6000, v8, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> _animateDropAlongsideAnimator animator: %@", buf, 0x16u);
  }

  [(_MSStickerDragPreviewContainerView *)self setFinalUIKitDropCompletion:v7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___MSStickerDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke;
  v9[3] = &unk_1E83A2C20;
  v9[4] = self;
  [v6 addAnimations:v9];
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