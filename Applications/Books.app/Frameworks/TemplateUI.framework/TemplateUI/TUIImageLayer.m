@interface TUIImageLayer
- (TUIFeedControllerHosting)feedControllerHost;
- (void)configWithContentsScale:(double)a3 resource:(id)a4 load:(unint64_t)a5 cornerRadius:(double)a6 cornerCurve:(id)a7 fallbackColor:(id)a8 contentsGravity:(id)a9 crossfadesContents:(BOOL)a10 opacity:(double)a11;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)updateBoundsAndContent:(BOOL)a3;
- (void)updateContentAllowCrossfade:(BOOL)a3;
@end

@implementation TUIImageLayer

- (void)updateBoundsAndContent:(BOOL)a3
{
  v3 = a3;
  p_contentSize = &self->_contentSize;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  [(TUIImageLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v12 = +[_TUIAnimationState currentState];
  v13 = [v12 shouldCaptureCALayerAnimations];
  if (width == v9 && height == v11)
  {
    if (v3)
    {
      [(TUIImageLayer *)self updateContentAllowCrossfade:v13];
    }
  }

  else
  {
    p_contentSize->width = v9;
    p_contentSize->height = v11;
    if (v13)
    {
      v15 = width / v9;
      v16 = 1.0;
      if (v9 <= 0.0)
      {
        v15 = 1.0;
      }

      memset(&v31.c, 0, 32);
      if (v11 > 0.0)
      {
        v16 = height / v11;
      }

      *&v31.a = 0uLL;
      CGAffineTransformMakeScale(&v31, v15, v16);
      [(TUIImageLayer *)self updateContentAllowCrossfade:0];
      v17 = [v12 animationForKeyPath:@"transform"];
      v29 = v31;
      CATransform3DMakeAffineTransform(&v30, &v29);
      v18 = [NSValue valueWithCATransform3D:&v30];
      [v17 setFromValue:v18];

      v19 = *&CATransform3DIdentity.m33;
      *&v30.m31 = *&CATransform3DIdentity.m31;
      *&v30.m33 = v19;
      v20 = *&CATransform3DIdentity.m43;
      *&v30.m41 = *&CATransform3DIdentity.m41;
      *&v30.m43 = v20;
      v21 = *&CATransform3DIdentity.m13;
      *&v30.m11 = *&CATransform3DIdentity.m11;
      *&v30.m13 = v21;
      v22 = *&CATransform3DIdentity.m23;
      *&v30.m21 = *&CATransform3DIdentity.m21;
      *&v30.m23 = v22;
      v23 = [NSValue valueWithCATransform3D:&v30];
      [v17 setToValue:v23];

      [v17 setRemovedOnCompletion:1];
      [v17 setAdditive:1];
      v24 = [(CALayer *)self->_wrapperLayer tui_uniqueAnimationKeyWithPrefix:@"transform"];
      [(CALayer *)self->_wrapperLayer addAnimation:v17 forKey:v24];
    }

    else
    {
      [(TUIImageLayer *)self updateContentAllowCrossfade:?];
    }

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)self->_wrapperLayer setBounds:CGPointZero.x, CGPointZero.y, p_contentSize->width, p_contentSize->height];
    +[CATransaction commit];
    __asm { FMOV            V1.2D, #0.5 }

    [(CALayer *)self->_wrapperLayer setPosition:vmulq_f64(*p_contentSize, _Q1)];
  }
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v33.receiver = self;
  v33.super_class = TUIImageLayer;
  [(TUIImageLayer *)&v33 layerDidBecomeVisible:?];
  if (v3)
  {
    flags = self->_flags;
    if ((flags & 1) == 0)
    {
      [(TUIImageResource *)self->_resource addNonVolatileInterest];
      flags = self->_flags;
    }

    *&self->_flags = flags | 1;
    [(TUIImageLayer *)self updateContentAllowCrossfade:0];
  }

  else
  {
    if (qword_2E68A0 != -1)
    {
      sub_19BFE0();
    }

    WeakRetained = objc_loadWeakRetained(&self->_feedControllerHost);
    v7 = [WeakRetained hostingContainerView];

    v8 = [v7 window];
    v9 = [v8 windowScene];

    if (byte_2E6898 == 1 && v9 && [v9 activationState] == &dword_0 + 2 && (-[TUIImageLayer bounds](self, "bounds"), v11 = v10, v13 = v12, v15 = v14, v17 = v16, objc_msgSend(v7, "layer"), v18 = objc_claimAutoreleasedReturnValue(), -[TUIImageLayer convertRect:toLayer:](self, "convertRect:toLayer:", v18, v11, v13, v15, v17), v20 = v19, v22 = v21, v24 = v23, v26 = v25, v18, objc_msgSend(v7, "layer"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "bounds"), v36.origin.x = v20, v36.origin.y = v22, v36.size.width = v24, v36.size.height = v26, v28 = CGRectIntersectsRect(v35, v36), v27, v28))
    {
      v29 = TUIImageCacheLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v32 = v20;
        *&v32[1] = v22;
        *&v32[2] = v24;
        *&v32[3] = v26;
        v30 = [NSValue valueWithBytes:v32 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        sub_19C008(v30, buf, v29);
      }
    }

    else
    {
      v31 = self->_flags;
      if (v31)
      {
        [(TUIImageResource *)self->_resource removeNonVolatileInterest];
        v31 = self->_flags;
      }

      *&self->_flags = v31 & 0xFE;
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(CALayer *)self->_contentLayer setContents:0];
      [(TUIImageLayer *)self setBackgroundColor:[(UIColor *)self->_fallbackColor CGColor]];
      +[CATransaction commit];
    }
  }
}

- (void)configWithContentsScale:(double)a3 resource:(id)a4 load:(unint64_t)a5 cornerRadius:(double)a6 cornerCurve:(id)a7 fallbackColor:(id)a8 contentsGravity:(id)a9 crossfadesContents:(BOOL)a10 opacity:(double)a11
{
  v32 = a10;
  v19 = a4;
  v35 = a7;
  v34 = a8;
  v20 = a9;
  if (!self->_contentLayer)
  {
    v21 = +[_TUIImplicitAnimationLayer layer];
    wrapperLayer = self->_wrapperLayer;
    self->_wrapperLayer = v21;

    v37 = self->_wrapperLayer;
    v23 = [NSArray arrayWithObjects:&v37 count:1];
    [(TUIImageLayer *)self setSublayers:v23];

    v24 = +[_TUIImplicitAnimationLayer layer];
    contentLayer = self->_contentLayer;
    self->_contentLayer = v24;

    v36 = self->_contentLayer;
    v26 = [NSArray arrayWithObjects:&v36 count:1];
    [(CALayer *)self->_wrapperLayer setSublayers:v26];
  }

  objc_storeStrong(&self->_fallbackColor, a8);
  [(CALayer *)self->_contentLayer setCornerRadius:a6];
  [(CALayer *)self->_contentLayer setCornerCurve:v35];
  if (a6 <= 0.0)
  {
    v27 = [v20 isEqualToString:kCAGravityResize] ^ 1;
  }

  else
  {
    v27 = 1;
  }

  [(CALayer *)self->_contentLayer setMasksToBounds:v27];
  [(CALayer *)self->_contentLayer setContentsGravity:v20];
  [(TUIImageLayer *)self setRasterizationScale:a3];
  [(TUIImageLayer *)self setContentsScale:a3];
  *&v28 = a11;
  [(TUIImageLayer *)self setOpacity:v28];
  [(TUIImageLayer *)self setBackgroundColor:[(UIColor *)self->_fallbackColor CGColor]];
  [(TUIImageLayer *)self setCornerRadius:a6];
  resource = self->_resource;
  if (resource != v19)
  {
    v30 = resource;
    objc_storeStrong(&self->_resource, a4);
    [(TUIImageResource *)self->_resource addObserver:self];
    [(TUIImageResource *)self->_resource addInterest];
    if (*&self->_flags)
    {
      [(TUIImageResource *)self->_resource addNonVolatileInterest];
      if (*&self->_flags)
      {
        [(TUIImageResource *)v30 removeNonVolatileInterest];
      }
    }

    [(TUIImageResource *)v30 removeInterest];
    [(TUIImageResource *)v30 removeObserver:self];
  }

  [(TUIImageLayer *)self updateBoundsAndContent:resource != v19];
  if (a5 == 1)
  {
    v31 = [(TUIImageResource *)self->_resource loadImage];
  }

  [(TUIImageLayer *)self setCrossfadesContents:v32];
}

- (void)dealloc
{
  if (*&self->_flags)
  {
    [(TUIImageResource *)self->_resource removeNonVolatileInterest];
  }

  [(TUIImageResource *)self->_resource removeInterest];
  [(TUIImageResource *)self->_resource removeObserver:self];
  v3.receiver = self;
  v3.super_class = TUIImageLayer;
  [(TUIImageLayer *)&v3 dealloc];
}

- (void)updateContentAllowCrossfade:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIImageResource *)self->_resource imageContentWithOptions:1];
  v43 = v5;
  if (v5)
  {
    [v5 insets];
    v42 = v6;
    v8 = v7;
    v10 = v9;
    v41 = v11;
    [v43 intrinsicSize];
    v13 = v12;
    v39 = v8;
    v40 = v8 + v10;
    v15 = v14 - (v8 + v10);
    y = CGPointZero.y;
    width = self->_contentSize.width;
    height = self->_contentSize.height;
    v19 = 1.0;
    v20 = 1.0;
    if (v15 > 0.0)
    {
      v45.origin.x = CGPointZero.x;
      v45.origin.y = CGPointZero.y;
      v45.size.width = self->_contentSize.width;
      v45.size.height = self->_contentSize.height;
      v20 = CGRectGetWidth(v45) / v15;
    }

    v21 = v13 - (v42 + v41);
    if (v21 > 0.0)
    {
      v46.origin.x = CGPointZero.x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v19 = CGRectGetHeight(v46) / v21;
    }

    v22 = [v43 image];
    v23 = [v22 layerContents];
    v24 = width + v40 * v20;
    v25 = height + (v42 + v41) * v19;

    v26 = 0.5;
    v27 = 0.5;
    if (v24 > 0.0)
    {
      v27 = v39 * v20 / v24;
    }

    if (v25 > 0.0)
    {
      v26 = v42 * v19 / v25;
    }

    v28 = CGPointZero.y;
    v29 = [(CALayer *)self->_contentLayer contents];
    if (v3)
    {
      v30 = [(TUIImageLayer *)self crossfadesContents];
      v31 = v29 ? v30 : 0;
      if (v31 == 1 && v23 && v29 != v23)
      {
        +[CATransaction begin];
        [CATransaction setDisableActions:1];
        v32 = self->_contentLayer;
        [(CALayer *)self->_contentLayer removeFromSuperlayer];
        v33 = +[_TUIImplicitAnimationLayer layer];
        contentLayer = self->_contentLayer;
        self->_contentLayer = v33;

        [(CALayer *)v32 cornerRadius];
        [(CALayer *)self->_contentLayer setCornerRadius:?];
        v35 = [(CALayer *)v32 cornerCurve];
        [(CALayer *)self->_contentLayer setCornerCurve:v35];

        [(CALayer *)self->_contentLayer setMasksToBounds:[(CALayer *)v32 masksToBounds]];
        v36 = [(CALayer *)v32 contentsGravity];
        [(CALayer *)self->_contentLayer setContentsGravity:v36];

        [(CALayer *)self->_contentLayer setMasksToBounds:[(CALayer *)v32 masksToBounds]];
        [(CALayer *)self->_wrapperLayer addSublayer:self->_contentLayer];
        v37 = +[CATransition animation];
        [v37 setDuration:0.15];
        v38 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [v37 setTimingFunction:v38];

        [v37 setRemovedOnCompletion:1];
        [(CALayer *)self->_wrapperLayer addAnimation:v37 forKey:@"crossfade"];
        +[CATransaction commit];
      }
    }

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(TUIImageLayer *)self setBackgroundColor:0];
    [(CALayer *)self->_contentLayer setAnchorPoint:v27, v26];
    [(CALayer *)self->_contentLayer setContents:v23];
    [(CALayer *)self->_contentLayer setBounds:CGPointZero.x, v28, v24, v25];
    +[CATransaction commit];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)self->_contentLayer setContents:0];
    [(CALayer *)self->_contentLayer setBounds:CGPointZero.x, CGPointZero.y, self->_contentSize.width, self->_contentSize.height];
    [(CALayer *)self->_contentLayer setAnchorPoint:0.5, 0.5];
    [(TUIImageLayer *)self setBackgroundColor:[(UIColor *)self->_fallbackColor CGColor]];
    +[CATransaction commit];
  }
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1781D4;
  v5[3] = &unk_25F7C8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (TUIFeedControllerHosting)feedControllerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_feedControllerHost);

  return WeakRetained;
}

@end