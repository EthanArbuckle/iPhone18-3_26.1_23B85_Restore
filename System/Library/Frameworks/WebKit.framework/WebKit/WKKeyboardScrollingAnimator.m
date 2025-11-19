@interface WKKeyboardScrollingAnimator
- (BOOL)beginWithEvent:(id)a3;
- (WKKeyboardScrollingAnimator)initWithScrollable:(id)a3;
- (id).cxx_construct;
- (optional<WebCore::KeyboardScroll>)keyboardScrollForEvent:(SEL)a3;
- (void)displayLinkFired:(id)a3;
- (void)handleKeyEvent:(id)a3;
- (void)invalidate;
- (void)resetViewForScrollToExtentAnimation;
- (void)startDisplayLinkIfNeeded;
- (void)stopAnimatedScroll;
- (void)stopDisplayLink;
- (void)stopScrollingImmediately;
- (void)willStartInteractiveScroll;
@end

@implementation WKKeyboardScrollingAnimator

- (id).cxx_construct
{
  *(self + 60) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 32) = 0;
  *(self + 68) = 0u;
  *(self + 84) = 0u;
  return self;
}

- (void)invalidate
{
  [(WKKeyboardScrollingAnimator *)self resetViewForScrollToExtentAnimation];
  [(WKKeyboardScrollingAnimator *)self stopAnimatedScroll];
  [(WKKeyboardScrollingAnimator *)self stopDisplayLink];
  self->_scrollable = 0;
}

- (void)resetViewForScrollToExtentAnimation
{
  [(CALayer *)[(UIView *)self->_viewForTrackingScrollToExtentAnimation.m_ptr layer] removeAllAnimations];
  [(UIView *)self->_viewForTrackingScrollToExtentAnimation.m_ptr removeFromSuperview];
  m_ptr = self->_viewForTrackingScrollToExtentAnimation.m_ptr;
  self->_viewForTrackingScrollToExtentAnimation.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)stopAnimatedScroll
{
  if (self->_currentScroll.__engaged_)
  {
    v23[3] = v2;
    v23[4] = v3;
    v4.i32[0] = LODWORD(self->_velocity.m_width);
    v5.i32[0] = LODWORD(self->_velocity.m_height);
    *v6.i32 = sqrtf((*v4.i32 * *v4.i32) * 0.0091743);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v9 = *vbslq_s8(v8, v6, v4).i32;
    *v6.i32 = sqrtf((*v5.i32 * *v5.i32) * 0.0091743);
    v10 = *vbslq_s8(v8, v6, v5).i32;
    scrollable = self->_scrollable;
    v12 = v9 + self->_currentPosition.m_x;
    *v5.i32 = v10 + self->_currentPosition.m_y;
    direction = self->_currentScroll.var0.__val_.direction;
    v4.i32[0] = 0;
    if (direction <= 1)
    {
      m_y = self->_idealPositionForMinimumTravel.m_y;
      if (!self->_currentScroll.var0.__val_.direction)
      {
        v16 = m_y < *v5.i32;
        goto LABEL_10;
      }

      v15 = 0.0;
      if (direction == 1)
      {
        v16 = *v5.i32 < m_y;
LABEL_10:
        if (v16)
        {
          v15 = self->_idealPositionForMinimumTravel.m_y;
        }

        else
        {
          v15 = *v5.i32;
        }

        *v4.i32 = v12;
      }

LABEL_19:
      v21 = __PAIR64__(LODWORD(v15), v4.u32[0]);
      WebCore::FloatPoint::operator CGPoint();
      [(WKKeyboardScrollableInternal *)scrollable boundedContentOffset:v21];
      v22.x = v19;
      v22.y = v20;
      WebCore::FloatPoint::FloatPoint(v23, &v22);
      self->_idealPosition = v23[0];
      if (self->_currentScroll.__engaged_)
      {
        self->_currentScroll.__engaged_ = 0;
      }

      return;
    }

    m_x = self->_idealPositionForMinimumTravel.m_x;
    if (direction == 2)
    {
      v18 = m_x < v12;
    }

    else
    {
      v15 = 0.0;
      if (direction != 3)
      {
        goto LABEL_19;
      }

      v18 = v12 < m_x;
    }

    if (v18)
    {
      v4.i32[0] = LODWORD(self->_idealPositionForMinimumTravel.m_x);
    }

    else
    {
      *v4.i32 = v12;
    }

    v15 = *v5.i32;
    goto LABEL_19;
  }
}

- (void)stopDisplayLink
{
  [(CADisplayLink *)self->_displayLink.m_ptr invalidate];
  m_ptr = self->_displayLink.m_ptr;
  self->_displayLink.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (WKKeyboardScrollingAnimator)initWithScrollable:(id)a3
{
  v5.receiver = self;
  v5.super_class = WKKeyboardScrollingAnimator;
  result = [(WKKeyboardScrollingAnimator *)&v5 init];
  if (result)
  {
    result->_scrollable = a3;
  }

  return result;
}

- (optional<WebCore::KeyboardScroll>)keyboardScrollForEvent:(SEL)a3
{
  result = [(WKKeyboardScrollableInternal *)self->_scrollable isKeyboardScrollable];
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  result = [a4 keyboardFlags];
  if ((result & 0x20) != 0)
  {
    goto LABEL_12;
  }

  v8 = [a4 charactersIgnoringModifiers];
  result = [v8 length];
  if (!result)
  {
    goto LABEL_12;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke;
  v45[3] = &unk_1E76337D0;
  v45[4] = v8;
  result = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke(v45);
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = [a4 modifierFlags];
  v11 = [a4 modifierFlags] & 0x480000;
  result = [a4 modifierFlags];
  v12 = (v10 & 0x220000) != 0;
  if ((v10 & 0x220000) != 0)
  {
    v13 = (v11 != 0) + 1;
  }

  else
  {
    v13 = v11 != 0;
  }

  v14 = result & 0x1010000;
  v15 = (result & 0x1010000) != 0;
  if ((result & 0x1010000) != 0)
  {
    ++v13;
  }

  if (v13 < 2 && (v43[0] = MEMORY[0x1E69E9820], v43[1] = 3221225472, v43[2] = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_2, v43[3] = &__block_descriptor_33_e5_I8__0l, v44 = v9, v16 = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_2(v43), result = [a4 modifierFlags], (result & ~v16 & 0x16B0000) == 0))
  {
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_3;
    v39 = &__block_descriptor_35_e5_C8__0l;
    v40 = v9;
    v41 = v11 != 0;
    v42 = v15;
    v18 = 2 * (v14 != 0);
    if (v11)
    {
      v18 = 1;
    }

    v19 = (v9 - 1) > 1 || v11 != 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_4;
    v33[3] = &__block_descriptor_34_e5_C8__0l;
    if ((v9 - 3) >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    v34 = v9;
    v35 = v12;
    v21 = __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_4(v33);
    [(WKKeyboardScrollableInternal *)self->_scrollable distanceForIncrement:v20 inDirection:v21];
    v23 = v22;
    result = WebCore::unitVectorForScrollDirection();
    v25.i32[1] = v24;
    v26 = v23;
    *v27.f32 = vmul_n_f32(v25, v26);
    *&retstr->var0.__null_state_ = v27.i64[0];
    v27.i64[1] = v27.i64[0];
    __asm { FMOV            V1.4S, #25.0 }

    *&retstr->var0.__val_.maximumVelocity.m_width = vmulq_f32(v27, _Q1);
    retstr->var0.__val_.granularity = v20;
    retstr->var0.__val_.direction = v21;
    v17 = 1;
  }

  else
  {
LABEL_12:
    v17 = 0;
    retstr->var0.__null_state_ = 0;
  }

  retstr->__engaged_ = v17;
  return result;
}

uint64_t __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) characterAtIndex:0];
  if (v1 <= 63233)
  {
    if (v1 == 32)
    {
      return 7;
    }

    if (v1 != 63232)
    {
      if (v1 == 63233)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else if (v1 > 63275)
  {
    if (v1 != 63276)
    {
      if (v1 == 63277)
      {
        return 6;
      }

      return 0;
    }

    return 5;
  }

  else
  {
    if (v1 != 63234)
    {
      if (v1 == 63235)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

uint64_t __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 7)
  {
    return 4718592;
  }

  else
  {
    return dword_19E703D90[v1];
  }
}

uint64_t __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_3(unsigned __int8 *a1)
{
  v1 = a1[32];
  if ((v1 - 1) < 2)
  {
    return a1[33];
  }

  if ((v1 - 3) >= 2)
  {
    return v1 != 0;
  }

  if (a1[33])
  {
    return 1;
  }

  if (a1[34])
  {
    return 2;
  }

  return 0;
}

uint64_t __54__WKKeyboardScrollingAnimator_keyboardScrollForEvent___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = 2;
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      return v2 == 4;
    }

    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return (*(a1 + 33) & 1) == 0;
      }

      return result;
    }

    return 1;
  }

  switch(v2)
  {
    case 0:
      return 1;
    case 2:
      return 3;
    case 3:
      return 0;
  }

  return result;
}

- (BOOL)beginWithEvent:(id)a3
{
  if ([a3 type] != 4)
  {
    goto LABEL_19;
  }

  if (!self)
  {
    goto LABEL_19;
  }

  [(WKKeyboardScrollingAnimator *)self keyboardScrollForEvent:a3];
  if ((v37[28] & 1) == 0 || self->_scrollTriggeringKeyIsPressed)
  {
    goto LABEL_19;
  }

  v5 = [(WKKeyboardScrollableInternal *)self->_scrollable rubberbandableDirections];
  if ((v37[28] & 1) == 0)
  {
    goto LABEL_35;
  }

  v6 = v5 >> 8;
  v7 = HIWORD(v5);
  if (v37[25] != 1)
  {
    LOBYTE(v7) = v5;
  }

  if (v37[25] == 2)
  {
    v7 = HIBYTE(v5);
  }

  if (v37[25] != 3)
  {
    LOBYTE(v6) = v7;
  }

  if ((v6 & 1) == 0)
  {
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  self->_scrollTriggeringKeyIsPressed = 1;
  *&self->_currentScroll.var0.__null_state_ = *v37;
  *(&self->_currentScroll.var0.__val_.maximumVelocity.m_height + 1) = *&v37[13];
  LOBYTE(v5) = [(WKKeyboardScrollingAnimator *)self resetViewForScrollToExtentAnimation];
  if ((v37[28] & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v37[24] == 2)
  {
    self->_velocity.m_width = 0.0;
    self->_velocity.m_height = 0.0;
    [(WKKeyboardScrollingAnimator *)self stopAnimatedScroll];
    LOBYTE(v5) = [(WKKeyboardScrollableInternal *)self->_scrollable contentOffset];
    if (v37[28])
    {
      v10 = v8;
      v11 = v9;
      scrollable = self->_scrollable;
      *&v35.x = vadd_f32(self->_currentPosition, *v37);
      WebCore::FloatPoint::operator CGPoint();
      [(WKKeyboardScrollableInternal *)scrollable boundedContentOffset:?];
      v14 = v13;
      v16 = v15;
      v17 = objc_opt_new();
      m_ptr = self->_viewForTrackingScrollToExtentAnimation.m_ptr;
      self->_viewForTrackingScrollToExtentAnimation.m_ptr = v17;
      if (m_ptr)
      {

        v17 = self->_viewForTrackingScrollToExtentAnimation.m_ptr;
      }

      v19 = 1;
      [(UIView *)v17 setHidden:1];
      [(UIView *)self->_viewForTrackingScrollToExtentAnimation.m_ptr setUserInteractionEnabled:0];
      [(WKKeyboardScrollableInternal *)self->_scrollable willBeginScrollingToExtentWithAnimationInTrackingView:self->_viewForTrackingScrollToExtentAnimation.m_ptr];
      v20 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
      [v20 setMass:1.0];
      [v20 setStiffness:109.662271];
      [v20 setDamping:20.943951];
      [v20 setDuration:1.6];
      LODWORD(v21) = 1045220557;
      LODWORD(v22) = 1.0;
      LODWORD(v23) = 1.0;
      [v20 setTimingFunction:{objc_msgSend(MEMORY[0x1E69793D0], "functionWithControlPoints::::", 0.0, v21, v22, v23)}];
      [v20 setFromValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGPoint:", v10, v11)}];
      [v20 setToValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGPoint:", v14, v16)}];
      v24 = [(UIView *)self->_viewForTrackingScrollToExtentAnimation.m_ptr layer];
      [(CALayer *)v24 setPosition:v10, v11];
      [(CALayer *)v24 removeAllAnimations];
      [(CALayer *)v24 addAnimation:v20 forKey:@"ScrollToExtentAnimation"];
      [(CALayer *)v24 setPosition:v14, v16];
      [(WKKeyboardScrollingAnimator *)self startDisplayLinkIfNeeded];
      goto LABEL_20;
    }

LABEL_35:
    __break(1u);
    return v5;
  }

  [(WKKeyboardScrollingAnimator *)self startDisplayLinkIfNeeded];
  [(WKKeyboardScrollableInternal *)self->_scrollable interactiveScrollVelocity];
  v35.x = v25;
  v35.y = v26;
  LOBYTE(v5) = WebCore::FloatSize::FloatSize(&v36, &v35);
  if ((v37[28] & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v37[25] > 1u)
  {
    if (v37[25] == 2)
    {
      v28 = fminf(v36.f32[0], 0.0);
    }

    else
    {
      if (v37[25] != 3)
      {
        goto LABEL_33;
      }

      v28 = fmaxf(v36.f32[0], 0.0);
    }

    v36.f32[0] = v28;
    goto LABEL_33;
  }

  if (!v37[25])
  {
    v27 = fminf(v36.f32[1], 0.0);
    goto LABEL_30;
  }

  if (v37[25] == 1)
  {
    v27 = fmaxf(v36.f32[1], 0.0);
LABEL_30:
    v36.f32[1] = v27;
  }

LABEL_33:
  [(WKKeyboardScrollableInternal *)self->_scrollable contentOffset];
  v35.x = v29;
  v35.y = v30;
  LOBYTE(v5) = WebCore::FloatPoint::FloatPoint(&v34, &v35);
  v31 = v34;
  self->_currentPosition = v34;
  self->_velocity = vadd_f32(self->_velocity, v36);
  if (!self->_currentScroll.__engaged_)
  {
    goto LABEL_35;
  }

  v32 = self->_currentScroll.var0.__val_.offset.m_height + v31.m_y;
  self->_idealPositionForMinimumTravel.m_x = self->_currentScroll.var0.__val_.offset.m_width + v31.m_x;
  self->_idealPositionForMinimumTravel.m_y = v32;
  v19 = 1;
LABEL_20:
  LOBYTE(v5) = v19;
  return v5;
}

- (void)handleKeyEvent:(id)a3
{
  if (self->_scrollTriggeringKeyIsPressed)
  {
    [(WKKeyboardScrollingAnimator *)self keyboardScrollForEvent:?];
    if (v5 != 1 || [a3 type] == 5 || (objc_msgSend(a3, "modifierFlags") & 0x1010000) != 0)
    {
      [(WKKeyboardScrollingAnimator *)self stopAnimatedScroll];
      self->_scrollTriggeringKeyIsPressed = 0;
    }
  }
}

- (void)willStartInteractiveScroll
{
  self->_velocity.m_width = 0.0;
  self->_velocity.m_height = 0.0;
  [(WKKeyboardScrollingAnimator *)self resetViewForScrollToExtentAnimation];
  [(WKKeyboardScrollingAnimator *)self stopAnimatedScroll];

  [(WKKeyboardScrollingAnimator *)self stopDisplayLink];
}

- (void)startDisplayLinkIfNeeded
{
  if (!self->_displayLink.m_ptr)
  {
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
    v8 = v4;
    if (v4)
    {
      v9 = v4;
    }

    m_ptr = self->_displayLink.m_ptr;
    self->_displayLink.m_ptr = v8;
    if (m_ptr)
    {

      v8 = self->_displayLink.m_ptr;
    }

    if (byte_1ED642822 == 1)
    {
      LODWORD(v5) = dword_1ED642824;
      LODWORD(v6) = unk_1ED642828;
      LODWORD(v7) = dword_1ED64282C;
    }

    else
    {
      *&v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      dword_1ED642824 = LODWORD(v5);
      unk_1ED642828 = LODWORD(v6);
      dword_1ED64282C = LODWORD(v7);
      byte_1ED642822 = 1;
    }

    [(CADisplayLink *)v8 setPreferredFrameRateRange:v5, v6, v7];
    [(CADisplayLink *)self->_displayLink.m_ptr setHighFrameRateReason:2883586];
    v11 = self->_displayLink.m_ptr;
    v12 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v13 = *MEMORY[0x1E695DA28];

    [(CADisplayLink *)v11 addToRunLoop:v12 forMode:v13];
  }
}

- (void)stopScrollingImmediately
{
  [(WKKeyboardScrollingAnimator *)self resetViewForScrollToExtentAnimation];
  [(WKKeyboardScrollableInternal *)self->_scrollable didFinishScrolling];
  [(WKKeyboardScrollingAnimator *)self stopDisplayLink];
  self->_velocity.m_width = 0.0;
  self->_velocity.m_height = 0.0;
}

- (void)displayLinkFired:(id)a3
{
  m_ptr = self->_viewForTrackingScrollToExtentAnimation.m_ptr;
  if (m_ptr)
  {
    if ([(NSArray *)[(CALayer *)[(UIView *)m_ptr layer] animationKeys] containsObject:@"ScrollToExtentAnimation"])
    {
      v5 = [(CALayer *)[(UIView *)self->_viewForTrackingScrollToExtentAnimation.m_ptr layer] presentationLayer];
      if (v5)
      {
        scrollable = self->_scrollable;
        [(CALayer *)v5 position];
        v40.x = v7;
        v40.y = v8;
        WebCore::FloatPoint::FloatPoint(&v41, &v40);
        LODWORD(v10) = v41.i32[1];
        LODWORD(v9) = v41.i32[0];
        [(WKKeyboardScrollableInternal *)scrollable scrollToContentOffset:0 animated:v9, v10];
      }
    }

    else
    {
      [(WKKeyboardScrollableInternal *)self->_scrollable didFinishScrolling];
      [(WKKeyboardScrollingAnimator *)self resetViewForScrollToExtentAnimation];

      [(WKKeyboardScrollingAnimator *)self stopDisplayLink];
    }

    return;
  }

  if (self->_currentScroll.__engaged_)
  {
    v12 = self->_scrollable;
    WebCore::FloatPoint::operator CGPoint();
    v13 = [(WKKeyboardScrollableInternal *)v12 scrollableDirectionsFromOffset:?];
    if (self->_currentScroll.__engaged_)
    {
      v14 = v13;
      v15 = v13 >> 8;
      v16 = HIWORD(v13);
      v17 = HIBYTE(v13);
      direction = self->_currentScroll.var0.__val_.direction;
      if (direction == 1)
      {
        v14 = v16;
      }

      if (direction == 2)
      {
        v14 = v17;
      }

      if (direction == 3)
      {
        v14 = v15;
      }

      if (v14)
      {
        _D8 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((direction & 0xFE) == 2), 0x1FuLL)), 0x3F80000000000000, 1065353216);
        force = self->_currentScroll.var0.__val_.force;
LABEL_21:
        v25 = vbic_s8(force, vcage_f32(self->_velocity, self->_currentScroll.var0.__val_.maximumVelocity));
        goto LABEL_22;
      }

      WebCore::unitVectorForScrollDirection();
      if (self->_currentScroll.__engaged_)
      {
        v26.i32[1] = v27;
        force = vmul_f32(v26, vdup_n_s32(0x459C4000u));
        __asm { FMOV            V8.2S, #1.0 }

        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  __asm { FMOV            V8.2S, #1.0 }

  v25 = 0;
LABEL_22:
  v28 = self->_scrollable;
  WebCore::FloatPoint::operator CGPoint();
  [(WKKeyboardScrollableInternal *)v28 boundedContentOffset:?];
  v40.x = v29;
  v40.y = v30;
  WebCore::FloatPoint::FloatPoint(&v41, &v40);
  __asm { FMOV            V2.2S, #-20.0 }

  v32 = vadd_f32(v25, vmul_f32(_D8, vadd_f32(vmul_f32(vsub_f32(self->_currentPosition, v41), vdup_n_s32(0xC2DA0000)), vmul_f32(self->_velocity, _D2))));
  [a3 targetTimestamp];
  v34 = v33;
  [a3 timestamp];
  *&v35 = v34 - v35;
  v36 = vadd_f32(self->_velocity, vmul_n_f32(v32, *&v35));
  self->_velocity = v36;
  v37 = vmul_n_f32(v36, *&v35);
  currentPosition = self->_currentPosition;
  v39 = vadd_f32(v37, currentPosition);
  self->_currentPosition = v39;
  currentPosition.m_x = v39.m_y;
  [(WKKeyboardScrollableInternal *)self->_scrollable scrollToContentOffset:0 animated:*&v39, *&currentPosition];
  if (!self->_scrollTriggeringKeyIsPressed && ((self->_velocity.m_height * self->_velocity.m_height) + (self->_velocity.m_width * self->_velocity.m_width)) < 1.0)
  {
    [(WKKeyboardScrollableInternal *)self->_scrollable didFinishScrolling];
    [(WKKeyboardScrollingAnimator *)self stopDisplayLink];
    self->_velocity.m_width = 0.0;
    self->_velocity.m_height = 0.0;
  }
}

@end