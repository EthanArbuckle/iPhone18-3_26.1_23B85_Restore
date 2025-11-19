@interface StackElement
- (BOOL)isAnimating;
- (CGAffineTransform)fullsizeTransform;
- (CGAffineTransform)stackTransformWithDepth:(SEL)a3 translation:(int64_t)a4;
- (CGPoint)offStackTranslation;
- (CGSize)_scaleFactorWithDepth:(int64_t)a3 translation:(CGPoint *)a4;
- (CGSize)_stackContainerSize;
- (StackElement)initWithItem:(id)a3 state:(int64_t)a4;
- (StackElementDelegate)delegate;
- (double)borderWidthWithStackDepth:(int64_t)a3;
- (id)borderColorWithStackDepth:(int64_t)a3;
- (id)description;
- (id)dimmingColor;
- (id)itemViewCreateIfNeeded:(BOOL)a3;
- (void)beginAnimationToState:(int64_t)a3 withDuration:(double)a4 beginsFromCurrentState:(BOOL)a5 animated:(BOOL)a6 animations:(id)a7 completion:(id)a8;
- (void)fadeInUnderneathStack:(BOOL)a3 previousDepth:(int64_t)a4;
- (void)fadeOutUnderneathStack:(BOOL)a3 previousDepth:(int64_t)a4;
- (void)hide:(BOOL)a3;
- (void)moveIntoStack:(BOOL)a3;
- (void)moveOutFromStack:(BOOL)a3;
- (void)removeDimmingFilter;
- (void)removeItemView;
- (void)removeView;
- (void)setCurrentState:(int64_t)a3;
- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4;
- (void)setNextState:(int64_t)a3 nextDepth:(int64_t)a4 animated:(BOOL)a5;
- (void)setTargetState:(int64_t)a3;
- (void)showDimmed:(BOOL)a3;
- (void)showFullsize:(BOOL)a3;
- (void)updateItemView:(id)a3 onStack:(BOOL)a4 adjustSubviewIndex:(BOOL)a5 stackDepth:(int64_t)a6;
- (void)updateViewFrame:(CGRect)a3;
@end

@implementation StackElement

- (StackElement)initWithItem:(id)a3 state:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = StackElement;
  v8 = [(StackElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, a3);
    v9->_nextState = a4;
    v9->_targetState = a4;
    v9->_previousState = a4;
    v9->_currentState = a4;
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

- (void)setNextState:(int64_t)a3 nextDepth:(int64_t)a4 animated:(BOOL)a5
{
  nextState = self->_nextState;
  nextDepth = self->_nextDepth;
  if (nextState == a3 && nextDepth == a4)
  {
    return;
  }

  self->_nextState = a3;
  self->_nextDepth = a4;
  if (self->_previousState == a3)
  {
    self->_previousState = nextState;
  }

  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        [(StackElement *)self hide:a5];
        break;
      case 2:
        [(StackElement *)self showFullsize:a5];
        break;
      case 3:
        [(StackElement *)self showDimmed:a5];
        break;
    }

    goto LABEL_24;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      [(StackElement *)self moveOutFromStack:a5];
    }

    else if (a3 == 6)
    {
      [(StackElement *)self fadeOutUnderneathStack:a5 previousDepth:?];
    }

    goto LABEL_24;
  }

  if (nextState == 4)
  {
    if (nextDepth == a4)
    {
      goto LABEL_24;
    }
  }

  else if (nextState == 6)
  {
    [(StackElement *)self fadeInUnderneathStack:a5 previousDepth:?];
    goto LABEL_24;
  }

  [(StackElement *)self moveIntoStack:a5];
LABEL_24:
  if (!a5)
  {

    [(StackElement *)self setCurrentState:a3];
  }
}

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    previousState = self->_previousState;
    self->_currentState = a3;
    self->_nextState = a3;
    self->_previousState = a3;
    v6 = [(StackElement *)self delegate];
    [v6 stackElement:self currentStateDidChangeFrom:previousState to:a3];
  }
}

- (void)setTargetState:(int64_t)a3
{
  targetState = self->_targetState;
  if (targetState != a3)
  {
    self->_targetState = a3;
    v6 = [(StackElement *)self delegate];
    [v6 stackElement:self targetStateDidChangeFrom:targetState to:a3];
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

- (id)itemViewCreateIfNeeded:(BOOL)a3
{
  itemView = self->_itemView;
  if (itemView)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [(StackElement *)self delegate];
    v7 = [v6 viewForStackElement:self];

    v8 = [(UIView *)v7 layer];
    [v8 setAllowsEdgeAntialiasing:1];

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
    v3 = [(StackElement *)self delegate];
    [v3 stackElement:self willRemoveView:self->_itemView];

    [(UIView *)self->_itemView removeFromSuperview];
    itemView = self->_itemView;
    self->_itemView = 0;
  }
}

- (void)updateViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(StackElement *)self item];

  if (!v7)
  {
    return;
  }

  v8 = [(StackElement *)self itemViewCreateIfNeeded:v5];
  v31 = v8;
  if (v4)
  {
    v9 = [v8 layer];
    v10 = [NSString stringWithFormat:@"filters.%@", @"dimFilter"];
    v11 = [v9 valueForKeyPath:v10];

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

  if (!v5)
  {
    v12 = [v8 layer];
    [v12 removeAnimationForKey:@"dim"];

    v13 = [v31 layer];
    [v13 setFilters:0];
    v14 = v13;
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
    if (!v5 || v4)
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
    v18 = [v31 layer];
    [v18 setFilters:v17];

    [v31 setUserInteractionEnabled:0];
  }

  if (v4)
  {
    v14 = [NSString stringWithFormat:@"filters.%@.inputColor", @"dimFilter"];
    v19 = [CABasicAnimation animationWithKeyPath:v14];
    v20 = [v31 layer];
    v21 = [v20 presentationLayer];
    v22 = [v21 valueForKeyPath:v14];
    [v19 setFromValue:v22];

    if (v5)
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
    v26 = [v31 layer];
    [v26 addAnimation:v19 forKey:@"dim"];

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
    if (v5)
    {
      v30 = 1.0;
    }

    [(UIView *)dimmingAnimationView setAlpha:v30];

    goto LABEL_25;
  }

  v23 = [v31 layer];
  [v23 removeAnimationForKey:@"dim"];

  if (!v5)
  {
    v14 = [v31 layer];
    [v14 setFilters:0];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)removeDimmingFilter
{
  v6 = [(StackElement *)self itemViewCreateIfNeeded:0];
  v3 = [v6 layer];
  [v3 removeAnimationForKey:@"dim"];

  v4 = [v6 layer];
  [v4 setFilters:0];

  [v6 setUserInteractionEnabled:1];
  [(UIView *)self->_dimmingAnimationView removeFromSuperview];
  dimmingAnimationView = self->_dimmingAnimationView;
  self->_dimmingAnimationView = 0;
}

- (void)beginAnimationToState:(int64_t)a3 withDuration:(double)a4 beginsFromCurrentState:(BOOL)a5 animated:(BOOL)a6 animations:(id)a7 completion:(id)a8
{
  v9 = a6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10024F7FC;
  v16[3] = &unk_1006568D0;
  v16[4] = self;
  v18 = a3;
  v12 = a8;
  v17 = v12;
  v13 = a7;
  v14 = objc_retainBlock(v16);
  self->_currentState = 0;
  v15 = 0.0;
  if (v9)
  {
    v15 = a4;
  }

  [UIView animateWithDuration:4 delay:v13 options:v14 animations:v15 completion:0.0];
}

- (void)hide:(BOOL)a3
{
  v3 = a3;
  v5 = [(StackElement *)self isVisible];
  v6 = v5;
  [(StackElement *)self itemViewCreateIfNeeded:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F964;
  v8[3] = &unk_10064D9D8;
  v9 = v10 = v6;
  v7 = v9;
  [(StackElement *)self beginAnimationToState:1 withDuration:1 beginsFromCurrentState:v3 animated:v8 animations:0.35];
}

- (void)showFullsize:(BOOL)a3
{
  v3 = a3;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:0];
  v6 = [(StackElement *)self delegate];
  v7 = [v6 stackIsTerminating];

  v8 = [(StackElement *)self isVisible];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 superview];
    if (v7)
    {
      [v10 bringSubviewToFront:v5];

      v11 = [v5 layer];
      [v11 setShouldRasterize:1];

      v12 = +[UIScreen mainScreen];
      [v12 scale];
      v14 = v13;
      v15 = [v5 layer];
      [v15 setRasterizationScale:v14];

      v9 = v5;
    }

    else
    {
      [v10 sendSubviewToBack:v5];

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
  v22 = self;
  v23 = v8;
  v24 = v3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024FCD8;
  v18[3] = &unk_10064C570;
  v19 = v9;
  v17 = v9;
  [(StackElement *)self beginAnimationToState:2 withDuration:v8 beginsFromCurrentState:v3 animated:v20 animations:v18 completion:0.35];
}

- (void)showDimmed:(BOOL)a3
{
  v3 = a3;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  v6 = [(StackElement *)self isVisible];
  if (!v6)
  {
    v7 = [v5 superview];
    [v7 sendSubviewToBack:v5];

    [(StackElement *)self fullsizeTransform];
    v15[0] = v15[3];
    v15[1] = v15[4];
    v15[2] = v15[5];
    [v5 setTransform:v15];
    v8 = [v5 layer];
    [v8 setBorderWidth:0.0];

    [v5 setAlpha:0.0];
    [(StackElement *)self setDimmed:1 animated:0];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10024FEC8;
  v10[3] = &unk_100650A70;
  v9 = v5;
  v11 = v9;
  v12 = self;
  v13 = v6;
  v14 = v3;
  [(StackElement *)self beginAnimationToState:3 withDuration:v6 beginsFromCurrentState:v3 animated:v10 animations:0.35];
}

- (void)moveIntoStack:(BOOL)a3
{
  v3 = a3;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  v6 = [(StackElement *)self isVisible];
  if (!v6)
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
  v10 = v6;
  v11 = v3;
  [(StackElement *)self beginAnimationToState:4 withDuration:v6 beginsFromCurrentState:v3 animated:v8 animations:0.35];
}

- (void)moveOutFromStack:(BOOL)a3
{
  v3 = a3;
  v5 = [(StackElement *)self itemViewCreateIfNeeded:1];
  v6 = [(StackElement *)self isVisible];
  if (!v6)
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
  v10 = v3;
  [(StackElement *)self beginAnimationToState:5 withDuration:v6 beginsFromCurrentState:v3 animated:v8 animations:0.35];
}

- (void)fadeOutUnderneathStack:(BOOL)a3 previousDepth:(int64_t)a4
{
  v5 = a3;
  v7 = [(StackElement *)self itemViewCreateIfNeeded:0];
  v8 = [(StackElement *)self isVisible];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100250494;
  v24[3] = &unk_1006540C0;
  v26 = v8;
  v24[4] = self;
  v9 = v7;
  v25 = v9;
  [(StackElement *)self beginAnimationToState:6 withDuration:1 beginsFromCurrentState:v5 animated:v24 animations:0.35];
  if (v8)
  {
    nextDepth = self->_nextDepth;
    v11 = nextDepth - a4;
    if (nextDepth <= a4)
    {
      v19.f64[1] = 0.35;
    }

    else
    {
      v12 = [(StackElement *)self delegate];
      v20 = ([v12 maximumStackElementDepth] - a4);

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

- (void)fadeInUnderneathStack:(BOOL)a3 previousDepth:(int64_t)a4
{
  v5 = a3;
  v7 = [(StackElement *)self itemViewCreateIfNeeded:1];
  if ([(StackElement *)self isVisible]&& [(StackElement *)self previousState]!= 6)
  {
    v8 = 1;
  }

  else
  {
    [(StackElement *)self updateItemView:v7 onStack:1 adjustSubviewIndex:1 stackDepth:a4];
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
  v29 = v5;
  [(StackElement *)self beginAnimationToState:4 withDuration:v8 beginsFromCurrentState:v5 animated:v26 animations:0.35];
  nextDepth = self->_nextDepth;
  v11 = a4 - nextDepth;
  if (a4 <= nextDepth)
  {
    v19.f64[1] = 0.35;
  }

  else
  {
    v12 = [(StackElement *)self delegate];
    v22 = (~[v12 maximumStackElementDepth] + a4);

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

- (void)updateItemView:(id)a3 onStack:(BOOL)a4 adjustSubviewIndex:(BOOL)a5 stackDepth:(int64_t)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  if (v8)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  else
  {
    [(StackElement *)self offStackTranslation];
  }

  [(StackElement *)self stackTransformWithDepth:a6 translation:x, y];
  v22[0] = v22[3];
  v22[1] = v22[4];
  v22[2] = v22[5];
  [v10 setTransform:v22];
  [(StackElement *)self borderWidthWithStackDepth:a6];
  v14 = v13;
  v15 = [v10 layer];
  [v15 setBorderWidth:v14];

  v16 = [(StackElement *)self borderColorWithStackDepth:a6];
  v17 = [v16 CGColor];
  v18 = [v10 layer];
  [v18 setBorderColor:v17];

  if (v7)
  {
    v19 = [(StackElement *)self delegate];
    v20 = [v19 viewBelowStackElement:self];

    v21 = [v10 superview];
    if (v20)
    {
      [v21 insertSubview:v10 aboveSubview:v20];
    }

    else
    {
      [v21 sendSubviewToBack:v10];
    }
  }
}

- (double)borderWidthWithStackDepth:(int64_t)a3
{
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  [(StackElement *)self _scaleFactorWithDepth:a3 translation:0];
  return v7 * (1.0 / v8);
}

- (id)borderColorWithStackDepth:(int64_t)a3
{
  v4 = [(StackElement *)self delegate];
  v5 = [v4 maximumStackElementDepth];

  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return [UIColor colorWithWhite:0.0 alpha:v6 * -0.05 + 0.4];
}

- (CGAffineTransform)fullsizeTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CGAffineTransform)stackTransformWithDepth:(SEL)a3 translation:(int64_t)a4
{
  y = a5.y;
  x = a5.x;
  v16 = CGPointZero;
  [(StackElement *)self _scaleFactorWithDepth:a4 translation:&v16];
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

- (CGSize)_scaleFactorWithDepth:(int64_t)a3 translation:(CGPoint *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained stackContainerView];

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
    if (a3)
    {
      v16 = v16 + a3 * -2.0 * 4.0;
      UIRoundToViewScale();
      if (!a4)
      {
LABEL_8:
        v13 = v16 / v11;
        v15 = v17 / v12;
        goto LABEL_9;
      }
    }

    else if (!a4)
    {
      goto LABEL_8;
    }

    a4->x = 0.0;
    a4->y = (v18 - v17) * -0.5 + a3 * -4.0;
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
  v6 = [WeakRetained stackContainerView];
  v7 = [v6 _shouldReverseLayoutDirection];

  v8 = -v4;
  if (v7)
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
  v3 = [WeakRetained stackContainerView];
  [v3 frame];
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