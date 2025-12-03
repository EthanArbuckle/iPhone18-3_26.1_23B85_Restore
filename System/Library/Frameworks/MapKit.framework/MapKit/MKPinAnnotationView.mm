@interface MKPinAnnotationView
+ (CGPoint)_calloutOffset;
+ (CGPoint)_leftCalloutOffset;
+ (CGPoint)_perceivedAnchorPoint;
+ (CGPoint)_rightCalloutOffset;
+ (CGPoint)_shadowAnchorPoint;
+ (CGRect)_pinFrameForPosition:(CGPoint)position;
+ (CGSize)_perceivedSize;
+ (UIColor)purplePinColor;
+ (id)_bounceAnimation;
+ (id)_dropBounceAnimation;
+ (id)_imageCache;
+ (id)_imageForLayer:(int64_t)layer state:(int64_t)state mapType:(unint64_t)type traits:(id)traits;
+ (id)_imageForState:(int64_t)state mapType:(unint64_t)type pinColor:(id)color traits:(id)traits;
+ (id)_pinsWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits;
+ (id)_shadowImage;
- (BOOL)isHighlighted;
- (CGPoint)_draggingDropOffset;
- (CGRect)_significantBounds;
- (MKPinAnnotationColor)pinColor;
- (MKPinAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets;
- (_MKPinAnnotationViewDelegate)_delegate;
- (id)_bounceAnimation:(BOOL)animation withDelay:(double)delay addToLayer:(BOOL)layer;
- (id)_floatingImage;
- (id)_highlightedImage;
- (id)_image;
- (id)_pinBounceImages;
- (id)_pinJumpImages;
- (id)_pins;
- (id)description;
- (void)_cleanupAfterPinDropAnimation;
- (void)_didUpdatePosition;
- (void)_dropAfterDraggingAndRevertPosition:(BOOL)position animated:(BOOL)animated;
- (void)_dropFromDistance:(double)distance maxDistance:(double)maxDistance withDelay:(double)delay;
- (void)_invalidateImage;
- (void)_liftDidEnd:(id)end;
- (void)_liftForDraggingAfterBounceAnimated:(BOOL)animated;
- (void)_liftForDraggingAnimated:(BOOL)animated;
- (void)_removeAllAnimations;
- (void)_setMapType:(unint64_t)type;
- (void)_setRotationRadians:(double)radians withAnimation:(id)animation;
- (void)_updateAnchorPosition:(CGPoint)position alignToPixels:(BOOL)pixels;
- (void)_updateShadowLayer;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setCenter:(CGPoint)center;
- (void)setDragState:(unint64_t)state animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPinColor:(MKPinAnnotationColor)pinColor;
- (void)setPinTintColor:(UIColor *)pinTintColor;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKPinAnnotationView

- (_MKPinAnnotationViewDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnchorPosition:(CGPoint)position alignToPixels:(BOOL)pixels
{
  if (self->_state != 4)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MKPinAnnotationView;
    [(MKAnnotationView *)&v6 _updateAnchorPosition:pixels alignToPixels:position.x, position.y];
  }
}

- (BOOL)isHighlighted
{
  if ([(MKAnnotationView *)self dragState])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MKPinAnnotationView;
  return [(MKAnnotationView *)&v4 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = MKPinAnnotationView;
  if ([(MKAnnotationView *)&v11 isHighlighted]!= highlighted)
  {
    v10.receiver = self;
    v10.super_class = MKPinAnnotationView;
    [(MKAnnotationView *)&v10 setHighlighted:highlightedCopy];
    if ([(MKAnnotationView *)self dragState]== MKAnnotationViewDragStateNone)
    {
      state = self->_state;
      v6 = state > 5;
      v7 = (1 << state) & 0x34;
      if (v6 || v7 == 0)
      {
        if (highlightedCopy)
        {
          [(MKPinAnnotationView *)self _highlightedImage];
        }

        else
        {
          [(MKPinAnnotationView *)self _image];
        }
        v9 = ;
        [(MKAnnotationView *)self setImage:v9];
      }
    }
  }
}

- (void)animationDidStart:(id)start
{
  [(MKAnnotationView *)self setHidden:0];
  shadowView = self->_shadowView;

  [(UIImageView *)shadowView setHidden:0];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  state = self->_state;
  if (state == 2 || state == 5)
  {
    v8 = stopCopy;
    [(MKPinAnnotationView *)self _cleanupAfterPinDropAnimation];
  }

  else
  {
    if (state != 6)
    {
      goto LABEL_10;
    }

    self->_state = 3;
    v8 = stopCopy;
    [(MKPinAnnotationView *)self _liftForDraggingAfterBounceAnimated:1];
  }

  stopCopy = v8;
LABEL_10:
}

- (void)_liftDidEnd:(id)end
{
  endCopy = end;
  self->_state = 4;
  if ([(MKAnnotationView *)self dragState]== MKAnnotationViewDragStateStarting)
  {
    -[MKPinAnnotationView setDragState:animated:](self, "setDragState:animated:", 2, [endCopy length] != 0);
    _floatingImage = [(MKPinAnnotationView *)self _floatingImage];
    [(MKAnnotationView *)self setImage:_floatingImage];
  }

  else
  {
    [(MKPinAnnotationView *)self _dropAfterDraggingAndRevertPosition:1 animated:1];
  }
}

- (void)_liftForDraggingAfterBounceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_state = 3;
  [(CALayer *)self->super._imageLayer removeAnimationForKey:@"contents"];
  _floatingImage = [(MKPinAnnotationView *)self _floatingImage];
  [(MKAnnotationView *)self setImage:_floatingImage];

  layer = [(MKPinAnnotationView *)self layer];
  [layer position];
  v8 = v7;
  v10 = v9;

  superview = [(UIImageView *)self->_shadowView superview];

  if (superview)
  {
    [(UIImageView *)self->_shadowView removeFromSuperview];
  }

  layer2 = [(UIImageView *)self->_shadowView layer];
  [layer2 removeAllAnimations];

  superview2 = [(MKPinAnnotationView *)self superview];
  [superview2 insertSubview:self->_shadowView atIndex:0];

  [(UIImageView *)self->_shadowView setCenter:v8, v10];
  superview3 = [(MKPinAnnotationView *)self superview];
  [(MKPinAnnotationView *)self convertPoint:superview3 fromView:v8, v10];
  v16 = v15;
  v18 = v17;

  v19 = v18 + -40.0;
  v20 = v16 + tan(0.820304751) * 40.0;
  v21 = v19 + -40.0;
  superview4 = [(MKPinAnnotationView *)self superview];
  [superview4 convertPoint:self fromView:{v16, v19}];
  v24 = v23;
  v26 = v25;

  superview5 = [(MKPinAnnotationView *)self superview];
  [superview5 convertPoint:self fromView:{v20, v21}];
  v29 = v28;
  v31 = v30;

  v32 = 0.200000003;
  if (!animatedCopy)
  {
    v32 = 0.0;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __59__MKPinAnnotationView__liftForDraggingAfterBounceAnimated___block_invoke;
  v35[3] = &unk_1E76CD348;
  v35[4] = self;
  v35[5] = v24;
  v35[6] = v26;
  v35[7] = v29;
  v35[8] = v31;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59__MKPinAnnotationView__liftForDraggingAfterBounceAnimated___block_invoke_2;
  v33[3] = &unk_1E76CCF40;
  v33[4] = self;
  v34 = animatedCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:v33 completion:v32];
}

void __59__MKPinAnnotationView__liftForDraggingAfterBounceAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) layer];
  [v4 setPosition:{v2, v3}];

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(*(a1 + 32) + 1024) layer];
  [v7 setPosition:{v5, v6}];

  v8 = [*(a1 + 32) _contentLayer];
  v9 = v8;
  if (v8)
  {
    [v8 affineTransform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = [*(*(a1 + 32) + 1024) layer];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [v10 setAffineTransform:v11];
}

uint64_t __59__MKPinAnnotationView__liftForDraggingAfterBounceAnimated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = @"MKPinAnnotationView_LiftAnimation";
  }

  else
  {
    v1 = 0;
  }

  return [*(a1 + 32) _liftDidEnd:v1];
}

- (void)_liftForDraggingAnimated:(BOOL)animated
{
  self->_state = 6;
  if (animated)
  {
    v4 = [(MKPinAnnotationView *)self _bounceAnimation:0 withDelay:1 addToLayer:0.0];
  }

  else
  {

    [(MKPinAnnotationView *)self _liftForDraggingAfterBounceAnimated:?];
  }
}

- (void)setDragState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = MKPinAnnotationView;
  if ([(MKAnnotationView *)&v8 dragState]!= state)
  {
    v7.receiver = self;
    v7.super_class = MKPinAnnotationView;
    [(MKAnnotationView *)&v7 setDragState:state animated:animatedCopy];
    if (state == 1)
    {
      [(MKPinAnnotationView *)self _liftForDraggingAnimated:animatedCopy];
    }

    else if (state - 3 <= 1)
    {
      [(MKPinAnnotationView *)self _dropAfterDraggingAndRevertPosition:state == 3 animated:animatedCopy];
    }
  }
}

- (void)_dropAfterDraggingAndRevertPosition:(BOOL)position animated:(BOOL)animated
{
  animatedCopy = animated;
  _containerView = [(MKAnnotationView *)self _containerView];
  [(MKAnnotationView *)self coordinate];
  [_containerView pointForCoordinate:?];
  v9 = v8;
  v11 = v10;

  [(MKAnnotationView *)self centerOffset];
  v13 = v9 + v12;
  [(MKAnnotationView *)self centerOffset];
  v15 = v11 + v14;
  _floatingImage = [(MKPinAnnotationView *)self _floatingImage];
  [(MKAnnotationView *)self setImage:_floatingImage];

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke;
  v53[3] = &unk_1E76CDB38;
  v53[4] = self;
  v17 = MEMORY[0x1A58E9F30](v53);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_2;
  v48[3] = &unk_1E76C8230;
  v52 = animatedCopy;
  v48[4] = self;
  v50 = v13;
  v51 = v15;
  v18 = v17;
  v49 = v18;
  v19 = MEMORY[0x1A58E9F30](v48);
  v20 = v19;
  if (position)
  {
    (*(v19 + 16))(v19);
  }

  else
  {
    [(MKPinAnnotationView *)self center];
    v22 = v21;
    v24 = v23;
    superview = [(MKPinAnnotationView *)self superview];
    [(MKPinAnnotationView *)self convertPoint:superview fromView:v22, v24];
    v27 = v26;
    v29 = v28;

    v30 = v29 + -36.0;
    v31 = v27 + tan(0.820304751) * 40.0;
    v32 = v30 + -40.0;
    superview2 = [(MKPinAnnotationView *)self superview];
    [superview2 convertPoint:self fromView:{v27, v30}];
    v35 = v34;
    v37 = v36;

    superview3 = [(MKPinAnnotationView *)self superview];
    [superview3 convertPoint:self fromView:{v31, v32}];
    v40 = v39;
    v42 = v41;

    v43 = MEMORY[0x1E69DD250];
    if (animatedCopy)
    {
      v44 = 0.200000003;
    }

    else
    {
      v44 = 0.0;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_5;
    v47[3] = &unk_1E76CD348;
    v47[4] = self;
    v47[5] = v35;
    v47[6] = v37;
    v47[7] = v40;
    v47[8] = v42;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_6;
    v45[3] = &unk_1E76C9DD8;
    v46 = v20;
    [v43 animateWithDuration:0 delay:v47 options:v45 animations:v44 completion:0.0];
  }
}

void __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = 0.200000003;
  }

  else
  {
    v3 = 0.0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_3;
  v7[3] = &unk_1E76CD280;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_4;
  v4[3] = &unk_1E76C8208;
  v4[4] = v8;
  v6 = v2;
  v5 = *(a1 + 40);
  [v1 animateWithDuration:4 delay:v7 options:v4 animations:v3 completion:0.0];
}

void __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) layer];
  [v4 setPosition:{v2, v3}];

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(*(a1 + 32) + 1024) layer];
  [v7 setPosition:{v5, v6}];
}

void __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) layer];
  [v4 setPosition:{v2, v3}];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(*(a1 + 32) + 1024) layer];
  [v7 setPosition:{v5, v6}];
}

uint64_t __68__MKPinAnnotationView__dropAfterDraggingAndRevertPosition_animated___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = [v2 _image];
  [v2 setImage:v3];

  [*(a1 + 32) _updateEffectiveZPriority];
  if (!_MKLinkedOnOrAfterReleaseSet(2053) || (result = _MKLinkedOnOrAfterReleaseSet(2310), result))
  {
    result = [*(a1 + 32) setDragState:0 animated:0];
  }

  if (*(a1 + 48) == 1)
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  else
  {
    *(*(a1 + 32) + 1048) = 0;
  }

  return result;
}

- (void)_dropFromDistance:(double)distance maxDistance:(double)maxDistance withDelay:(double)delay
{
  v55[2] = *MEMORY[0x1E69E9840];
  superview = [(MKPinAnnotationView *)self superview];
  if (superview)
  {
    self->_state = 2;
    _floatingImage = [(MKPinAnnotationView *)self _floatingImage];
    [(MKAnnotationView *)self setImage:_floatingImage];
    layer = [(MKPinAnnotationView *)self layer];
    [_floatingImage size];
    v13 = v12;
    v47 = _floatingImage;
    [_floatingImage size];
    v46 = layer;
    [layer setBounds:{0.0, 0.0, v13, v14}];
    layer2 = [(UIImageView *)self->_shadowView layer];
    v48 = superview;
    [superview insertSubview:self->_shadowView atIndex:0];
    [(MKPinAnnotationView *)self center];
    v49 = layer2;
    [layer2 setPosition:?];
    _contentLayer = [(MKAnnotationView *)self _contentLayer];
    v17 = _contentLayer;
    if (_contentLayer)
    {
      [_contentLayer affineTransform];
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
    }

    v51[0] = v52;
    v51[1] = v53;
    v51[2] = v54;
    [layer2 setAffineTransform:v51];

    [(MKAnnotationView *)self setHidden:1];
    [(UIImageView *)self->_shadowView setHidden:1];
    v18 = CACurrentMediaTime();
    UIAnimationDragCoefficient();
    v20 = v18 + v19 * delay;
    v21 = fmin((distance / maxDistance + (1.0 - distance / maxDistance) * 0.5) * 0.349999994, 3.0);
    v22 = +[MKPinAnnotationView _dropBounceAnimation];
    [v22 setDuration:v21 + 0.116666667];
    layer3 = [(MKPinAnnotationView *)self layer];
    [layer3 convertTime:0 fromLayer:v20];
    [v22 setBeginTime:?];

    [v22 setDelegate:self];
    v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
    v25 = *MEMORY[0x1E6979ED8];
    v26 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v24 setTimingFunction:v26];

    [v24 setDuration:v21];
    distance = [MEMORY[0x1E696AD98] numberWithDouble:-4.0 - distance];
    [v24 setFromValue:distance];

    [v24 setToValue:&unk_1F16113F8];
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [v28 addObject:v24];
    v29 = [(MKPinAnnotationView *)self _bounceAnimation:1 withDelay:0 addToLayer:v21];
    layer4 = [(MKPinAnnotationView *)self layer];
    [layer4 convertTime:0 fromLayer:v21 + v20];
    [v29 setBeginTime:?];

    v45 = v28;
    [v22 setAnimations:v28];
    animation = [MEMORY[0x1E6979308] animation];
    v32 = [MEMORY[0x1E69793D0] functionWithName:v25];
    [animation setTimingFunction:v32];

    [animation setDuration:v21];
    [v49 convertTime:0 fromLayer:v20];
    [animation setBeginTime:?];
    [animation setRemovedOnCompletion:1];
    v33 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:-((-4.0 - distance) * tan(0.820304751))];
    [v33 setFromValue:v34];

    [v33 setToValue:&unk_1F16113F8];
    v35 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
    distance2 = [MEMORY[0x1E696AD98] numberWithDouble:-4.0 - distance];
    [v35 setFromValue:distance2];

    [v35 setToValue:&unk_1F16113F8];
    v55[0] = v33;
    v55[1] = v35;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    [animation setAnimations:v37];

    v38 = v22;
    UIAnimationDragCoefficient();
    if (*&v39 != 0.0 && *&v39 != 1.0)
    {
      *&v39 = 1.0 / *&v39;
      [v38 setSpeed:v39];
    }

    v40 = v29;
    UIAnimationDragCoefficient();
    if (*&v41 != 0.0 && *&v41 != 1.0)
    {
      *&v41 = 1.0 / *&v41;
      [v40 setSpeed:v41];
    }

    v42 = animation;
    UIAnimationDragCoefficient();
    if (*&v43 != 0.0 && *&v43 != 1.0)
    {
      *&v43 = 1.0 / *&v43;
      [v42 setSpeed:v43];
    }

    layer5 = [(MKPinAnnotationView *)self layer];
    [layer5 addAnimation:v38 forKey:@"dropGroup"];

    [(CALayer *)self->super._imageLayer addAnimation:v40 forKey:@"contents"];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __63__MKPinAnnotationView__dropFromDistance_maxDistance_withDelay___block_invoke;
    v50[3] = &unk_1E76CA670;
    v50[4] = self;
    [v49 _mapkit_addAnimation:v42 forKey:@"position" completion:v50];

    superview = v48;
  }
}

- (id)_bounceAnimation:(BOOL)animation withDelay:(double)delay addToLayer:(BOOL)layer
{
  _bounceAnimation = [objc_opt_class() _bounceAnimation];
  if (_bounceAnimation)
  {
    v10 = _bounceAnimation;
    [_bounceAnimation setDelegate:self];
    if (animation)
    {
      [(MKPinAnnotationView *)self _pinBounceImages];
    }

    else
    {
      [(MKPinAnnotationView *)self _pinJumpImages];
    }
    v12 = ;
    [v10 setValues:v12];

    [v10 setDuration:0.116666667];
    [v10 setRemovedOnCompletion:0];
    [v10 setFillMode:*MEMORY[0x1E69797E8]];
    if (layer)
    {
      layer = [(MKPinAnnotationView *)self layer];
      [layer convertTime:0 fromLayer:CACurrentMediaTime() + delay];
      [v10 setBeginTime:?];

      [(CALayer *)self->super._imageLayer addAnimation:v10 forKey:@"contents"];
      v11 = 0;
    }

    else
    {
      [v10 setBeginTime:delay];
      v11 = [v10 copy];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_cleanupAfterPinDropAnimation
{
  if (self->_state == 2)
  {
    [(UIImageView *)self->_shadowView removeFromSuperview];
  }

  self->_state = 0;
  [(MKPinAnnotationView *)self _removeAllAnimations];
  _image = [(MKPinAnnotationView *)self _image];
  [(MKAnnotationView *)self setImage:_image];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pinDidDrop:self animated:1];
}

- (void)_removeAllAnimations
{
  layer = [(MKPinAnnotationView *)self layer];
  [(CALayer *)self->super._imageLayer removeAnimationForKey:@"contents"];
  [(CALayer *)self->super._imageLayer removeAnimationForKey:@"jump"];
  [layer removeAnimationForKey:@"dropGroup"];
  [layer removeAnimationForKey:@"jump"];
  layer2 = [(UIImageView *)self->_shadowView layer];
  [layer2 removeAnimationForKey:@"position"];

  layer3 = [(UIImageView *)self->_shadowView layer];
  [layer3 removeAnimationForKey:@"jump"];
}

- (void)_didUpdatePosition
{
  v3.receiver = self;
  v3.super_class = MKPinAnnotationView;
  [(MKAnnotationView *)&v3 _didUpdatePosition];
  [(MKPinAnnotationView *)self _updateShadowLayer];
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(MKPinAnnotationView *)self _removeAllAnimations];
  if ((self->_state - 3) >= 2)
  {
    v6 = y;
  }

  else
  {
    v6 = y + -40.0;
  }

  v7.receiver = self;
  v7.super_class = MKPinAnnotationView;
  [(MKPinAnnotationView *)&v7 setCenter:x, v6];
  [(MKPinAnnotationView *)self _updateShadowLayer];
}

- (void)_updateShadowLayer
{
  superview = [(UIImageView *)self->_shadowView superview];

  if (superview)
  {
    layer = [(MKPinAnnotationView *)self layer];
    [layer position];
    v6 = v5;
    v8 = v7;

    if (self->_state == 4)
    {
      v6 = v6 + tan(0.820304751) * 40.0;
      v8 = v8 + -40.0;
    }

    layer2 = [(UIImageView *)self->_shadowView layer];
    [layer2 setPosition:{v6, v8}];
  }
}

- (void)_setRotationRadians:(double)radians withAnimation:(id)animation
{
  v32.receiver = self;
  v32.super_class = MKPinAnnotationView;
  [(MKAnnotationView *)&v32 _setRotationRadians:animation withAnimation:radians];
  superview = [(UIImageView *)self->_shadowView superview];
  if (superview)
  {
    v6 = superview;
    v31.receiver = self;
    v31.super_class = MKPinAnnotationView;
    dragState = [(MKAnnotationView *)&v31 dragState];

    if (dragState == 2)
    {
      [(MKPinAnnotationView *)self center];
      v9 = v8;
      v11 = v10;
      superview2 = [(MKPinAnnotationView *)self superview];
      [(MKPinAnnotationView *)self convertPoint:superview2 fromView:v9, v11];
      v14 = v13;
      v16 = v15;

      v17 = v14 + tan(0.820304751) * 40.0;
      superview3 = [(MKPinAnnotationView *)self superview];
      [superview3 convertPoint:self fromView:{v17, v16 + -40.0}];
      v20 = v19;
      v22 = v21;

      layer = [(UIImageView *)self->_shadowView layer];
      [layer setPosition:{v20, v22}];

      _contentLayer = [(MKAnnotationView *)self _contentLayer];
      v25 = _contentLayer;
      if (_contentLayer)
      {
        [_contentLayer affineTransform];
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
      }

      layer2 = [(UIImageView *)self->_shadowView layer];
      v27[0] = v28;
      v27[1] = v29;
      v27[2] = v30;
      [layer2 setAffineTransform:v27];
    }
  }
}

- (void)_invalidateImage
{
  _image = [(MKPinAnnotationView *)self _image];
  [(MKAnnotationView *)self setImage:_image];
}

- (id)_pinJumpImages
{
  _pins = [(MKPinAnnotationView *)self _pins];
  v15 = MEMORY[0x1E695DEC8];
  v16 = [_pins objectForKey:&unk_1F1611368];
  cGImage = [v16 CGImage];
  v3 = [_pins objectForKey:&unk_1F16113B0];
  cGImage2 = [v3 CGImage];
  v5 = [_pins objectForKey:&unk_1F16113C8];
  cGImage3 = [v5 CGImage];
  v7 = [_pins objectForKey:&unk_1F16113E0];
  cGImage4 = [v7 CGImage];
  v9 = [_pins objectForKey:&unk_1F16113C8];
  cGImage5 = [v9 CGImage];
  v11 = [_pins objectForKey:&unk_1F16113B0];
  v12 = [v15 arrayWithObjects:{cGImage, cGImage2, cGImage3, cGImage4, cGImage5, objc_msgSend(v11, "CGImage"), 0}];

  return v12;
}

- (id)_pinBounceImages
{
  _pins = [(MKPinAnnotationView *)self _pins];
  v15 = MEMORY[0x1E695DEC8];
  v16 = [_pins objectForKey:&unk_1F1611368];
  cGImage = [v16 CGImage];
  v3 = [_pins objectForKey:&unk_1F16113B0];
  cGImage2 = [v3 CGImage];
  v5 = [_pins objectForKey:&unk_1F16113C8];
  cGImage3 = [v5 CGImage];
  v7 = [_pins objectForKey:&unk_1F16113E0];
  cGImage4 = [v7 CGImage];
  v9 = [_pins objectForKey:&unk_1F16113C8];
  cGImage5 = [v9 CGImage];
  v11 = [_pins objectForKey:&unk_1F16113B0];
  v12 = [v15 arrayWithObjects:{cGImage, cGImage2, cGImage3, cGImage4, cGImage5, objc_msgSend(v11, "CGImage"), 0}];

  return v12;
}

- (id)_floatingImage
{
  _pins = [(MKPinAnnotationView *)self _pins];
  v3 = [_pins objectForKey:&unk_1F1611398];

  return v3;
}

- (id)_highlightedImage
{
  _pins = [(MKPinAnnotationView *)self _pins];
  v3 = [_pins objectForKey:&unk_1F1611380];

  return v3;
}

- (id)_image
{
  _pins = [(MKPinAnnotationView *)self _pins];
  v3 = [_pins objectForKey:&unk_1F1611368];

  return v3;
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(MKPinAnnotationView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom == [collectionCopy userInterfaceIdiom])
  {
    traitCollection2 = [(MKPinAnnotationView *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];
    userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

    if (userInterfaceStyle == userInterfaceStyle2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(MKPinAnnotationView *)self _removeAllAnimations];
  [(MKPinAnnotationView *)self _invalidateImage];
  traitCollection3 = [(MKPinAnnotationView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];
  userInterfaceIdiom3 = [collectionCopy userInterfaceIdiom];

  if (userInterfaceIdiom2 != userInterfaceIdiom3)
  {
    traitCollection4 = [(MKPinAnnotationView *)self traitCollection];
    userInterfaceIdiom4 = [traitCollection4 userInterfaceIdiom];
    v15 = 8.0;
    if (userInterfaceIdiom4 == 3)
    {
      v15 = 7.5;
    }

    v16 = -15.0;
    if (userInterfaceIdiom4 == 3)
    {
      v16 = -13.5;
    }

    [(MKAnnotationView *)self setCenterOffset:v15, v16];
  }

LABEL_11:
}

- (id)_pins
{
  _mapType = [(MKAnnotationView *)self _mapType];
  pinTintColor = [(MKPinAnnotationView *)self pinTintColor];
  traitCollection = [(MKPinAnnotationView *)self traitCollection];
  v6 = [MKPinAnnotationView _pinsWithMapType:_mapType pinColor:pinTintColor traits:traitCollection];

  return v6;
}

- (id)description
{
  superview = [(MKPinAnnotationView *)self superview];
  v3Superview = [superview superview];

  [(MKPinAnnotationView *)self bounds];
  [v3Superview convertRect:self fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3Superview bounds];
  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = v15;
  v29.size.height = v16;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v17 = CGRectIntersectsRect(v28, v29);
  v18 = MEMORY[0x1E696AEC0];
  v26.receiver = self;
  v26.super_class = MKPinAnnotationView;
  v19 = [(MKPinAnnotationView *)&v26 description];
  annotation = [(MKAnnotationView *)self annotation];
  [annotation coordinate];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v21, v22];
  v24 = [v18 stringWithFormat:@"%@ visible:%d %@", v19, v17, v23];

  return v24;
}

- (void)_setMapType:(unint64_t)type
{
  if ([(MKAnnotationView *)self _mapType]!= type)
  {
    v5.receiver = self;
    v5.super_class = MKPinAnnotationView;
    [(MKAnnotationView *)&v5 _setMapType:type];
    [(MKPinAnnotationView *)self _removeAllAnimations];
    [(MKPinAnnotationView *)self _invalidateImage];
  }
}

- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets
{
  v2 = 11.0;
  v3 = -5.0;
  v4 = -5.0;
  v5 = 13.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_significantBounds
{
  v2 = 35.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 15.0;
  result.size.height = v2;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setPinTintColor:(UIColor *)pinTintColor
{
  v8 = pinTintColor;
  v4 = [(UIColor *)v8 isEqual:self->_pinTintColor];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    if (v8)
    {
      redPinColor = v8;
    }

    else
    {
      redPinColor = [objc_opt_class() redPinColor];
    }

    v7 = self->_pinTintColor;
    self->_pinTintColor = redPinColor;

    [(MKPinAnnotationView *)self _removeAllAnimations];
    [(MKPinAnnotationView *)self _invalidateImage];
    v5 = v8;
  }
}

- (MKPinAnnotationColor)pinColor
{
  pinTintColor = [(MKPinAnnotationView *)self pinTintColor];
  greenPinColor = [objc_opt_class() greenPinColor];
  v5 = [pinTintColor isEqual:greenPinColor];

  if (v5)
  {
    return 1;
  }

  pinTintColor2 = [(MKPinAnnotationView *)self pinTintColor];
  purplePinColor = [objc_opt_class() purplePinColor];
  v9 = [pinTintColor2 isEqual:purplePinColor];

  if (v9)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)setPinColor:(MKPinAnnotationColor)pinColor
{
  v5 = objc_opt_class();
  if (pinColor == MKPinAnnotationColorPurple)
  {
    purplePinColor = [v5 purplePinColor];
  }

  else
  {
    if (pinColor == MKPinAnnotationColorGreen)
    {
      [v5 greenPinColor];
    }

    else
    {
      [v5 redPinColor];
    }
    purplePinColor = ;
  }

  v7 = purplePinColor;
  [(MKPinAnnotationView *)self setPinTintColor:purplePinColor];
}

- (MKPinAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = MKPinAnnotationView;
  v4 = [(MKAnnotationView *)&v22 initWithAnnotation:annotation reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    redPinColor = [v5 redPinColor];
    pinTintColor = v4->_pinTintColor;
    v4->_pinTintColor = redPinColor;

    v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _shadowImage = [v5 _shadowImage];
    v10 = [v8 initWithImage:_shadowImage];
    shadowView = v4->_shadowView;
    v4->_shadowView = v10;

    [(MKPinAnnotationView *)v4 setUserInteractionEnabled:1];
    [v5 _calloutOffset];
    [(MKAnnotationView *)v4 setCalloutOffset:?];
    [v5 _leftCalloutOffset];
    [(MKAnnotationView *)v4 setLeftCalloutOffset:?];
    [v5 _rightCalloutOffset];
    [(MKAnnotationView *)v4 setRightCalloutOffset:?];
    layer = [(MKPinAnnotationView *)v4 layer];
    [layer setHitOffset:{-8.0, -2.0}];
    [layer setHitOutset:{0.0, 5.0}];
    _image = [(MKPinAnnotationView *)v4 _image];
    [(MKAnnotationView *)v4 setImage:_image];

    traitCollection = [(MKPinAnnotationView *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v16 = 8.0;
    if (userInterfaceIdiom == 3)
    {
      v16 = 7.5;
    }

    v17 = -15.0;
    if (userInterfaceIdiom == 3)
    {
      v17 = -13.5;
    }

    [(MKAnnotationView *)v4 setCenterOffset:v16, v17];

    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v19 = [(MKPinAnnotationView *)v4 registerForTraitChanges:v18 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v20 = v4;
  }

  return v4;
}

- (CGPoint)_draggingDropOffset
{
  [(MKAnnotationView *)self centerOffset];
  v4 = v3 + -3.0;
  result.y = v4;
  result.x = v2;
  return result;
}

+ (CGPoint)_rightCalloutOffset
{
  v2 = -14.0;
  v3 = -13.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_leftCalloutOffset
{
  v2 = -3.0;
  v3 = -13.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_calloutOffset
{
  v2 = -8.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_shadowAnchorPoint
{
  v2 = 2.0;
  v3 = 3.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_perceivedAnchorPoint
{
  v2 = 8.0;
  v3 = 5.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (id)_shadowImage
{
  v2 = _shadowImage_pinShadowImage;
  if (!_shadowImage_pinShadowImage)
  {
    v3 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"pin_shadow.png"];
    v4 = _shadowImage_pinShadowImage;
    _shadowImage_pinShadowImage = v3;

    v2 = _shadowImage_pinShadowImage;
  }

  return v2;
}

+ (id)_pinsWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits
{
  colorCopy = color;
  traitsCopy = traits;
  _imageCache = [self _imageCache];
  v11 = [_imageCache pinsWithMapType:type pinColor:colorCopy traits:traitsCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    for (i = 0; i != 6; ++i)
    {
      v15 = [self _imageForState:i mapType:type pinColor:colorCopy traits:traitsCopy];
      if (v15)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:i];
        [v13 setObject:v15 forKey:v16];
      }
    }

    [_imageCache setPins:v13 forMapType:type pinColor:colorCopy traits:traitsCopy];
  }

  return v13;
}

+ (id)_imageCache
{
  if (_imageCache_once != -1)
  {
    dispatch_once(&_imageCache_once, &__block_literal_global_38);
  }

  v3 = _imageCache_imageCache;

  return v3;
}

void __34__MKPinAnnotationView__imageCache__block_invoke()
{
  v0 = objc_alloc_init(_MKPinAnnotationViewImageCache);
  v1 = _imageCache_imageCache;
  _imageCache_imageCache = v0;
}

+ (id)_imageForState:(int64_t)state mapType:(unint64_t)type pinColor:(id)color traits:(id)traits
{
  colorCopy = color;
  traitsCopy = traits;
  v12 = [self _imageForLayer:0 state:state mapType:type traits:traitsCopy];
  v13 = [self _imageForLayer:1 state:state mapType:type traits:traitsCopy];
  v14 = v13;
  v15 = 0;
  if (v12 && v13)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __62__MKPinAnnotationView__imageForState_mapType_pinColor_traits___block_invoke;
    v24 = &unk_1E76C81E0;
    v25 = colorCopy;
    stateCopy = state;
    v16 = MEMORY[0x1A58E9F30](&v21);
    _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:traitsCopy];
    v18 = v16[2](v16, [v12 CGImage], objc_msgSend(v14, "CGImage"));
    v19 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [v12 scale];
    v15 = [v19 initWithCGImage:v18 scale:0 orientation:?];
    CGImageRelease(v18);
    [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
  }

  return v15;
}

CGImageRef __62__MKPinAnnotationView__imageForState_mapType_pinColor_traits___block_invoke(uint64_t a1, CGImageRef image, CGImage *a3)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = Width;
  v16.size.height = Height;
  CGContextClearRect(v10, v16);
  CGContextSaveGState(v10);
  CGContextSetFillColorWithColor(v10, [*(a1 + 32) CGColor]);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = Width;
  v17.size.height = Height;
  CGContextFillRect(v10, v17);
  CGContextSetBlendMode(v10, kCGBlendModeDestinationIn);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = Width;
  v18.size.height = Height;
  CGContextDrawImage(v10, v18, image);
  CGContextRestoreGState(v10);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = Width;
  v19.size.height = Height;
  CGContextDrawImage(v10, v19, a3);
  if (*(a1 + 40) == 5)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 8 * Width, DeviceGray, 0);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = Width;
    v20.size.height = Height;
    CGContextDrawImage(v12, v20, image);
    v13 = CGBitmapContextCreateImage(v12);
    CGContextRelease(v12);
    CGColorSpaceRelease(DeviceGray);
    CGContextSaveGState(v10);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    v21.size.height = Height;
    CGContextClipToMask(v10, v21, image);
    CGContextSetRGBFillColor(v10, 0.0, 0.0, 0.0, 0.200000003);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = Width;
    v22.size.height = Height;
    CGContextFillRect(v10, v22);
    CGContextRestoreGState(v10);
    CGImageRelease(v13);
  }

  v14 = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  CGColorSpaceRelease(DeviceRGB);
  return v14;
}

+ (id)_imageForLayer:(int64_t)layer state:(int64_t)state mapType:(unint64_t)type traits:(id)traits
{
  traitsCopy = traits;
  v10 = [MEMORY[0x1E696AD60] stringWithString:@"pin"];
  v11 = v10;
  if ((state - 1) <= 3)
  {
    [v10 appendString:off_1E76C8250[state - 1]];
  }

  if (layer)
  {
    if (layer != 1)
    {
      goto LABEL_8;
    }

    v12 = @"_base";
  }

  else
  {
    v12 = @"_head";
  }

  [v11 appendString:v12];
LABEL_8:
  if (type - 1 <= 3)
  {
    [v11 appendString:@"_sat"];
  }

  if ([traitsCopy userInterfaceIdiom] == 3)
  {
    [v11 appendString:@"_car"];
  }

  v13 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v11 compatibleWithTraitCollection:traitsCopy];

  return v13;
}

+ (id)_dropBounceAnimation
{
  v2 = _dropBounceAnimation__pinDropBounceAnimation;
  if (!_dropBounceAnimation__pinDropBounceAnimation)
  {
    animation = [MEMORY[0x1E6979308] animation];
    [animation setFillMode:*MEMORY[0x1E69797E8]];
    [animation setRemovedOnCompletion:0];
    v4 = _dropBounceAnimation__pinDropBounceAnimation;
    _dropBounceAnimation__pinDropBounceAnimation = animation;

    v2 = _dropBounceAnimation__pinDropBounceAnimation;
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)_bounceAnimation
{
  v2 = _bounceAnimation__pinBounceAnimation;
  if (!_bounceAnimation__pinBounceAnimation)
  {
    animation = [MEMORY[0x1E6979390] animation];
    [animation setKeyPath:@"contents"];
    [animation setCalculationMode:*MEMORY[0x1E69795A0]];
    LODWORD(v4) = 1.0;
    [animation setRepeatCount:v4];
    [animation setDuration:0.116666667];
    v5 = _bounceAnimation__pinBounceAnimation;
    _bounceAnimation__pinBounceAnimation = animation;

    v2 = _bounceAnimation__pinBounceAnimation;
  }

  v6 = [v2 copy];

  return v6;
}

+ (CGRect)_pinFrameForPosition:(CGPoint)position
{
  v3 = position.x + -8.0;
  v4 = position.y + -35.0;
  v5 = 35.0;
  v6 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (UIColor)purplePinColor
{
  if (purplePinColor_once != -1)
  {
    dispatch_once(&purplePinColor_once, &__block_literal_global_12405);
  }

  v3 = purplePinColor_color;

  return v3;
}

void __37__MKPinAnnotationView_purplePinColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.788235307 green:0.411764711 blue:0.87843138 alpha:1.0];
  v1 = purplePinColor_color;
  purplePinColor_color = v0;
}

+ (CGSize)_perceivedSize
{
  v2 = 35.0;
  v3 = 15.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end