@interface StackElement
- (BOOL)isAnimating;
- (CGAffineTransform)fullsizeTransform;
- (CGAffineTransform)stackTransformWithDepth:(SEL)depth translation:(int64_t)translation;
- (CGPoint)offStackTranslation;
- (CGSize)_scaleFactorWithDepth:(int64_t)depth translation:(CGPoint *)translation;
- (CGSize)_stackContainerSize;
- (StackElement)initWithItem:(id)item state:(int64_t)state;
- (StackElementDelegate)delegate;
- (double)borderWidthWithStackDepth:(int64_t)depth;
- (id)borderColorWithStackDepth:(int64_t)depth;
- (id)description;
- (id)dimmingColor;
- (id)itemViewCreateIfNeeded:(BOOL)needed;
- (void)beginAnimationToState:(int64_t)state withDuration:(double)duration beginsFromCurrentState:(BOOL)currentState animated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)fadeInUnderneathStack:(BOOL)stack previousDepth:(int64_t)depth;
- (void)fadeOutUnderneathStack:(BOOL)stack previousDepth:(int64_t)depth;
- (void)hide:(BOOL)hide;
- (void)moveIntoStack:(BOOL)stack;
- (void)moveOutFromStack:(BOOL)stack;
- (void)removeDimmingFilter;
- (void)removeItemView;
- (void)removeView;
- (void)setCurrentState:(int64_t)state;
- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)setNextState:(int64_t)state nextDepth:(int64_t)depth animated:(BOOL)animated;
- (void)setTargetState:(int64_t)state;
- (void)showDimmed:(BOOL)dimmed;
- (void)showFullsize:(BOOL)fullsize;
- (void)updateItemView:(id)view onStack:(BOOL)stack adjustSubviewIndex:(BOOL)index stackDepth:(int64_t)depth;
- (void)updateViewFrame:(CGRect)frame;
@end

@implementation StackElement

- (StackElement)initWithItem:(id)item state:(int64_t)state
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = StackElement;
  v8 = [(StackElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, item);
    v9->_nextState = state;
    v9->_targetState = state;
    v9->_previousState = state;
    v9->_currentState = state;
    v9->_nextDepth = 0;
    v9->_targetDepth = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = sub_10024EB3C(self->_previousState);
  v6 = sub_10024EB3C(self->_currentState);
  v7 = sub_10024EB3C(self->_nextState);
  v8 = sub_10024EB3C(self->_targetState);
  v9 = [NSString stringWithFormat:@"<%@: %p, states: prev (%@) cur (%@) next (%@) target (%@), item: %@>", v4, self, v5, v6, v7, v8, self->_item];

  return v9;
}

- (void)setNextState:(int64_t)state nextDepth:(int64_t)depth animated:(BOOL)animated
{
  nextState = self->_nextState;
  nextDepth = self->_nextDepth;
  if (nextState == state && nextDepth == depth)
  {
    return;
  }

  self->_nextState = state;
  self->_nextDepth = depth;
  if (self->_previousState == state)
  {
    self->_previousState = nextState;
  }

  if (state <= 3)
  {
    switch(state)
    {
      case 1:
        [(StackElement *)self hide:animated];
        break;
      case 2:
        [(StackElement *)self showFullsize:animated];
        break;
      case 3:
        [(StackElement *)self showDimmed:animated];
        break;
    }

    goto LABEL_24;
  }

  if (state != 4)
  {
    if (state == 5)
    {
      [(StackElement *)self moveOutFromStack:animated];
    }

    else if (state == 6)
    {
      [(StackElement *)self fadeOutUnderneathStack:animated previousDepth:?];
    }

    goto LABEL_24;
  }

  if (nextState == 4)
  {
    if (nextDepth == depth)
    {
      goto LABEL_24;
    }
  }

  else if (nextState == 6)
  {
    [(StackElement *)self fadeInUnderneathStack:animated previousDepth:?];
    goto LABEL_24;
  }

  [(StackElement *)self moveIntoStack:animated];
LABEL_24:
  if (!animated)
  {

    [(StackElement *)self setCurrentState:state];
  }
}

- (void)setCurrentState:(int64_t)state
{
  if (self->_currentState != state)
  {
    previousState = self->_previousState;
    self->_currentState = state;
    self->_nextState = state;
    self->_previousState = state;
    delegate = [(StackElement *)self delegate];
    [delegate stackElement:self currentStateDidChangeFrom:previousState to:state];
  }
}

- (void)setTargetState:(int64_t)state
{
  targetState = self->_targetState;
  if (targetState != state)
  {
    self->_targetState = state;
    delegate = [(StackElement *)self delegate];
    [delegate stackElement:self targetStateDidChangeFrom:targetState to:state];
  }
}

- (BOOL)isAnimating
{
  if (self->_currentState)
  {
    return 0;
  }

  previousState = self->_previousState;
  if (previousState != 3)
  {
    return previousState != 2 || self->_nextState != 3;
  }

  return self->_nextState != 2;
}

- (void)removeView
{
  if ([(StackElement *)self currentState]== 2)
  {
    [(StackElement *)self removeDimmingFilter];
  }

  [(StackElement *)self removeItemView];
}

- (id)itemViewCreateIfNeeded:(BOOL)needed
{
  itemView = self->_itemView;
  if (itemView)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    delegate = [(StackElement *)self delegate];
    v7 = [delegate viewForStackElement:self];

    layer = [(UIView *)v7 layer];
    [layer setAllowsEdgeAntialiasing:1];

    v9 = self->_itemView;
    self->_itemView = v7;

    itemView = self->_itemView;
  }

  return itemView;
}

- (void)removeItemView
{
  if (self->_itemView)
  {
    delegate = [(StackElement *)self delegate];
    [delegate stackElement:self willRemoveView:self->_itemView];

    [(UIView *)self->_itemView removeFromSuperview];
    itemView = self->_itemView;
    self->_itemView = 0;
  }
}

- (void)updateViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [(StackElement *)self itemViewCreateIfNeeded:0];
  v9 = v8;
  if (v8)
  {
    v10 = *&CGAffineTransformIdentity.c;
    v14 = *&CGAffineTransformIdentity.a;
    v15 = v10;
    v16 = *&CGAffineTransformIdentity.tx;
    [v8 setTransform:&v14];
    [v9 setFrame:{x, y, width, height}];
    [(StackElement *)self stackTransformWithDepth:[(StackElement *)self targetDepth]];
    v14 = v11;
    v15 = v12;
    v16 = v13;
    [v9 setTransform:&v14];
  }
}

- (id)dimmingColor
{
  v2 = qword_1006DD868;
  if (!qword_1006DD868)
  {
    v3 = [[UIColor alloc] initWithWhite:0.831372549 alpha:1.0];
    v4 = qword_1006DD868;
    qword_1006DD868 = v3;

    v2 = qword_1006DD868;
  }

  return v2;
}

- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated
{
  animatedCopy = animated;
  dimmedCopy = dimmed;
  item = [(StackElement *)self item];

  if (!item)
  {
    return;
  }

  v8 = [(StackElement *)self itemViewCreateIfNeeded:dimmedCopy];
  v31 = v8;
  if (animatedCopy)
  {
    layer = [v8 layer];
    v10 = [NSString stringWithFormat:@"filters.%@", @"dimFilter"];
    v11 = [layer valueForKeyPath:v10];

    v8 = v31;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  if (!dimmedCopy)
  {
    layer2 = [v8 layer];
    [layer2 removeAnimationForKey:@"dim"];

    layer3 = [v31 layer];
    [layer3 setFilters:0];
    layer8 = layer3;
    v11 = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_9:
  if (!v11)
  {
    v15 = [CAFilter alloc];
    v11 = [v15 initWithType:kCAFilterMultiplyColor];
    [v11 setName:@"dimFilter"];
    if (!dimmedCopy || animatedCopy)
    {
      +[UIColor whiteColor];
    }

    else
    {
      [(StackElement *)self dimmingColor];
    }
    v16 = ;
    [v11 setValue:objc_msgSend(v16 forKey:{"CGColor"), @"inputColor"}];

    v17 = [NSArray arrayWithObject:v11];
    layer4 = [v31 layer];
    [layer4 setFilters:v17];

    [v31 setUserInteractionEnabled:0];
  }

  if (animatedCopy)
  {
    layer8 = [NSString stringWithFormat:@"filters.%@.inputColor", @"dimFilter"];
    v19 = [CABasicAnimation animationWithKeyPath:layer8];
    layer5 = [v31 layer];
    presentationLayer = [layer5 presentationLayer];
    v22 = [presentationLayer valueForKeyPath:layer8];
    [v19 setFromValue:v22];

    if (dimmedCopy)
    {
      [(StackElement *)self dimmingColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v24 = ;
    [v19 setToValue:{objc_msgSend(v24, "CGColor")}];

    UIAnimationDragCoefficient();
    [v19 setDuration:v25 * 0.35];
    [v19 setRemovedOnCompletion:0];
    [v19 setFillMode:kCAFillModeForwards];
    layer6 = [v31 layer];
    [layer6 addAnimation:v19 forKey:@"dim"];

    dimmingAnimationView = self->_dimmingAnimationView;
    if (!dimmingAnimationView)
    {
      v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v29 = self->_dimmingAnimationView;
      self->_dimmingAnimationView = v28;

      [(UIView *)self->_dimmingAnimationView setAlpha:0.0];
      [v31 addSubview:self->_dimmingAnimationView];
      dimmingAnimationView = self->_dimmingAnimationView;
    }

    v30 = 0.0;
    if (dimmedCopy)
    {
      v30 = 1.0;
    }

    [(UIView *)dimmingAnimationView setAlpha:v30];

    goto LABEL_25;
  }

  layer7 = [v31 layer];
  [layer7 removeAnimationForKey:@"dim"];

  if (!dimmedCopy)
  {
    layer8 = [v31 layer];
    [layer8 setFilters:0];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)removeDimmingFilter
{
  v6 = [(StackElement *)self itemViewCreateIfNeeded:0];
  layer = [v6 layer];
  [layer removeAnimationForKey:@"dim"];

  layer2 = [v6 layer];
  [layer2 setFilters:0];

  [v6 setUserInteractionEnabled:1];
  [(UIView *)self->_dimmingAnimationView removeFromSuperview];
  dimmingAnimationView = self->_dimmingAnimationView;
  self->_dimmingAnimationView = 0;
}

- (void)beginAnimationToState:(int64_t)state withDuration:(double)duration beginsFromCurrentState:(BOOL)currentState animated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10024F7FC;
  v16[3] = &unk_1006568D0;
  v16[4] = self;
  stateCopy = state;
  completionCopy = completion;
  v17 = completionCopy;
  animationsCopy = animations;
  v14 = objc_retainBlock(v16);
  self->_currentState = 0;
  durationCopy = 0.0;
  if (animatedCopy)
  {
    durationCopy = duration;
  }

  [UIView animateWithDuration:4 delay:animationsCopy options:v14 animations:durationCopy completion:0.0];
}

- (void)hide:(BOOL)hide
{
  hideCopy = hide;
  isVisible = [(StackElement *)self isVisible];
  v6 = isVisible;
  [(StackElement *)self itemViewCreateIfNeeded:isVisible];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F964;
  v8[3] = &unk_10064D9D8;
  v9 = v10 = v6;
  v7 = v9;
  [(StackElement *)self beginAnimationToState:1 withDuration:1 beginsFromCurrentState:hideCopy animated:v8 animations:0.35];
}

- (void)showFullsize:(BOOL)fullsize
{
  fullsizeCopy = fullsize;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:0];
  delegate = [(StackElement *)self delegate];
  stackIsTerminating = [delegate stackIsTerminating];

  isVisible = [(StackElement *)self isVisible];
  if (isVisible)
  {
    v9 = 0;
  }

  else
  {
    superview = [v5 superview];
    if (stackIsTerminating)
    {
      [superview bringSubviewToFront:v5];

      layer = [v5 layer];
      [layer setShouldRasterize:1];

      v12 = +[UIScreen mainScreen];
      [v12 scale];
      v14 = v13;
      layer2 = [v5 layer];
      [layer2 setRasterizationScale:v14];

      v9 = v5;
    }

    else
    {
      [superview sendSubviewToBack:v5];

      v9 = 0;
    }

    [(StackElement *)self fullsizeTransform];
    v25[0] = v25[3];
    v25[1] = v25[4];
    v25[2] = v25[5];
    [v5 setTransform:v25];
    [v5 setAlpha:0.0];
    [(StackElement *)self setDimmed:0 animated:0];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10024FC4C;
  v20[3] = &unk_100650A70;
  v16 = v5;
  v21 = v16;
  selfCopy = self;
  v23 = isVisible;
  v24 = fullsizeCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024FCD8;
  v18[3] = &unk_10064C570;
  v19 = v9;
  v17 = v9;
  [(StackElement *)self beginAnimationToState:2 withDuration:isVisible beginsFromCurrentState:fullsizeCopy animated:v20 animations:v18 completion:0.35];
}

- (void)showDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  isVisible = [(StackElement *)self isVisible];
  if (!isVisible)
  {
    superview = [v5 superview];
    [superview sendSubviewToBack:v5];

    [(StackElement *)self fullsizeTransform];
    v15[0] = v15[3];
    v15[1] = v15[4];
    v15[2] = v15[5];
    [v5 setTransform:v15];
    layer = [v5 layer];
    [layer setBorderWidth:0.0];

    [v5 setAlpha:0.0];
    [(StackElement *)self setDimmed:1 animated:0];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10024FEC8;
  v10[3] = &unk_100650A70;
  v9 = v5;
  v11 = v9;
  selfCopy = self;
  v13 = isVisible;
  v14 = dimmedCopy;
  [(StackElement *)self beginAnimationToState:3 withDuration:isVisible beginsFromCurrentState:dimmedCopy animated:v10 animations:0.35];
}

- (void)moveIntoStack:(BOOL)stack
{
  stackCopy = stack;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  isVisible = [(StackElement *)self isVisible];
  if (!isVisible)
  {
    [(StackElement *)self updateItemView:v5 onStack:0 adjustSubviewIndex:1];
    [v5 setAlpha:1.0];
    [(StackElement *)self setDimmed:0 animated:0];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002500B4;
  v8[3] = &unk_100650A70;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  v10 = isVisible;
  v11 = stackCopy;
  [(StackElement *)self beginAnimationToState:4 withDuration:isVisible beginsFromCurrentState:stackCopy animated:v8 animations:0.35];
}

- (void)moveOutFromStack:(BOOL)stack
{
  stackCopy = stack;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  isVisible = [(StackElement *)self isVisible];
  if (!isVisible)
  {
    [(StackElement *)self updateItemView:v5 onStack:1 adjustSubviewIndex:1];
    [v5 setAlpha:1.0];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100250234;
  v8[3] = &unk_1006540C0;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  v10 = stackCopy;
  [(StackElement *)self beginAnimationToState:5 withDuration:isVisible beginsFromCurrentState:stackCopy animated:v8 animations:0.35];
}

- (void)fadeOutUnderneathStack:(BOOL)stack previousDepth:(int64_t)depth
{
  stackCopy = stack;
  v7 = [(StackElement *)self itemViewCreateIfNeeded:0];
  isVisible = [(StackElement *)self isVisible];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100250494;
  v24[3] = &unk_1006540C0;
  v26 = isVisible;
  v24[4] = self;
  v9 = v7;
  v25 = v9;
  [(StackElement *)self beginAnimationToState:6 withDuration:1 beginsFromCurrentState:stackCopy animated:v24 animations:0.35];
  if (isVisible)
  {
    nextDepth = self->_nextDepth;
    v11 = nextDepth - depth;
    if (nextDepth <= depth)
    {
      v19.f64[1] = 0.35;
    }

    else
    {
      delegate = [(StackElement *)self delegate];
      v20 = ([delegate maximumStackElementDepth] - depth);

      __asm { FMOV            V0.2D, #1.0 }

      _Q0.f64[0] = v20;
      v18 = vdivq_f64(_Q0, vdupq_lane_s64(COERCE__INT64(v11), 0));
      v19 = vmulq_f64(vbslq_s8(vcltzq_f64(v18), vnegq_f64(v18), v18), vdupq_n_s64(0x3FD6666666666666uLL));
    }

    v21 = v19.f64[1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002504B0;
    v22[3] = &unk_10064C7E8;
    v23 = v9;
    [UIView animateWithDuration:4 delay:v22 options:0 animations:v21 completion:?];
  }
}

- (void)fadeInUnderneathStack:(BOOL)stack previousDepth:(int64_t)depth
{
  stackCopy = stack;
  v7 = [(StackElement *)self itemViewCreateIfNeeded:1];
  if ([(StackElement *)self isVisible]&& [(StackElement *)self previousState]!= 6)
  {
    v8 = 1;
  }

  else
  {
    [(StackElement *)self updateItemView:v7 onStack:1 adjustSubviewIndex:1 stackDepth:depth];
    [v7 setAlpha:0.0];
    [(StackElement *)self setDimmed:0 animated:0];
    v8 = 0;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100250734;
  v26[3] = &unk_100650A70;
  v26[4] = self;
  v9 = v7;
  v27 = v9;
  v28 = v8;
  v29 = stackCopy;
  [(StackElement *)self beginAnimationToState:4 withDuration:v8 beginsFromCurrentState:stackCopy animated:v26 animations:0.35];
  nextDepth = self->_nextDepth;
  v11 = depth - nextDepth;
  if (depth <= nextDepth)
  {
    v19.f64[1] = 0.35;
  }

  else
  {
    delegate = [(StackElement *)self delegate];
    v22 = (~[delegate maximumStackElementDepth] + depth);

    __asm { FMOV            V0.2D, #1.0 }

    _Q0.f64[0] = v22;
    v18 = vdivq_f64(_Q0, vdupq_lane_s64(COERCE__INT64(v11), 0));
    v19 = vmulq_f64(vbslq_s8(vcltzq_f64(v18), vnegq_f64(v18), v18), vdupq_n_s64(0x3FD6666666666666uLL));
  }

  v23 = v19.f64[1];
  if (v8)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100250794;
  v24[3] = &unk_10064C7E8;
  v21 = v9;
  v25 = v21;
  [UIView animateWithDuration:v20 delay:v24 options:0 animations:v23 completion:?];
}

- (void)updateItemView:(id)view onStack:(BOOL)stack adjustSubviewIndex:(BOOL)index stackDepth:(int64_t)depth
{
  indexCopy = index;
  stackCopy = stack;
  viewCopy = view;
  if (stackCopy)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  else
  {
    [(StackElement *)self offStackTranslation];
  }

  [(StackElement *)self stackTransformWithDepth:depth translation:x, y];
  v22[0] = v22[3];
  v22[1] = v22[4];
  v22[2] = v22[5];
  [viewCopy setTransform:v22];
  [(StackElement *)self borderWidthWithStackDepth:depth];
  v14 = v13;
  layer = [viewCopy layer];
  [layer setBorderWidth:v14];

  v16 = [(StackElement *)self borderColorWithStackDepth:depth];
  cGColor = [v16 CGColor];
  layer2 = [viewCopy layer];
  [layer2 setBorderColor:cGColor];

  if (indexCopy)
  {
    delegate = [(StackElement *)self delegate];
    v20 = [delegate viewBelowStackElement:self];

    superview = [viewCopy superview];
    if (v20)
    {
      [superview insertSubview:viewCopy aboveSubview:v20];
    }

    else
    {
      [superview sendSubviewToBack:viewCopy];
    }
  }
}

- (double)borderWidthWithStackDepth:(int64_t)depth
{
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  [(StackElement *)self _scaleFactorWithDepth:depth translation:0];
  return v7 * (1.0 / v8);
}

- (id)borderColorWithStackDepth:(int64_t)depth
{
  delegate = [(StackElement *)self delegate];
  maximumStackElementDepth = [delegate maximumStackElementDepth];

  if (maximumStackElementDepth >= depth)
  {
    depthCopy = depth;
  }

  else
  {
    depthCopy = maximumStackElementDepth;
  }

  return [UIColor colorWithWhite:0.0 alpha:depthCopy * -0.05 + 0.4];
}

- (CGAffineTransform)fullsizeTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CGAffineTransform)stackTransformWithDepth:(SEL)depth translation:(int64_t)translation
{
  y = a5.y;
  x = a5.x;
  v16 = CGPointZero;
  [(StackElement *)self _scaleFactorWithDepth:translation translation:&v16];
  v9 = v8;
  v11 = v10;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *&v15.c = v12;
  *&v15.tx = v12;
  *&v15.a = v12;
  CGAffineTransformMakeTranslation(&v15, x + v16.x, y + v16.y);
  v14 = v15;
  return CGAffineTransformScale(retstr, &v14, v9, v11);
}

- (CGSize)_scaleFactorWithDepth:(int64_t)depth translation:(CGPoint *)translation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  stackContainerView = [WeakRetained stackContainerView];

  [(StackElement *)self _stackContainerSize];
  v11 = v9;
  v12 = v10;
  v13 = 1.0;
  v14 = CGSizeZero.width == v9 && CGSizeZero.height == v10;
  v15 = 1.0;
  if (!v14)
  {
    v16 = v9 + -64.0;
    UIRoundToViewScale();
    v18 = v17;
    if (depth)
    {
      v16 = v16 + depth * -2.0 * 4.0;
      UIRoundToViewScale();
      if (!translation)
      {
LABEL_8:
        v13 = v16 / v11;
        v15 = v17 / v12;
        goto LABEL_9;
      }
    }

    else if (!translation)
    {
      goto LABEL_8;
    }

    translation->x = 0.0;
    translation->y = (v18 - v17) * -0.5 + depth * -4.0;
    goto LABEL_8;
  }

LABEL_9:

  v19 = v13;
  v20 = v15;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGPoint)offStackTranslation
{
  [(StackElement *)self _stackContainerSize];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  stackContainerView = [WeakRetained stackContainerView];
  _shouldReverseLayoutDirection = [stackContainerView _shouldReverseLayoutDirection];

  v8 = -v4;
  if (_shouldReverseLayoutDirection)
  {
    v8 = v4;
  }

  v9 = 0.0;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)_stackContainerSize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  stackContainerView = [WeakRetained stackContainerView];
  [stackContainerView frame];
  v5 = v4;
  v7 = v6;

  [WeakRetained stackContainerViewEdgeInsets];
  v10 = v5 - (v8 + v9);
  v13 = v7 - (v11 + v12);

  v14 = v10;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (StackElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end