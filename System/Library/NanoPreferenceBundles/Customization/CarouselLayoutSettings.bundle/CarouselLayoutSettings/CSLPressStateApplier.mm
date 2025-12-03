@interface CSLPressStateApplier
- ($153C3A5BC4E016D58A1B9CA554FFC462)_computeTargetAttributesForHex:(Hex)hex sourceAttributes:(id)attributes forPressState:(id *)state;
- ($153C3A5BC4E016D58A1B9CA554FFC462)_interpolateBetweenSourceAttributes:(id)attributes targetAttributes:(id)targetAttributes fraction:(double)fraction;
- ($153C3A5BC4E016D58A1B9CA554FFC462)_interpolateBetweenSourceAttributes:(id)attributes targetAttributes:(id)targetAttributes pressState:(id *)state;
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForHex:(Hex)hex;
- (CSLPressStateApplier)init;
- (CSLPressStateApplierDelegate)delegate;
- (id).cxx_construct;
- (void)_displayLinkFired:(id)fired;
- (void)_reversePressStatesAtTime:(double)time;
- (void)_updateDisplayLink;
- (void)cleanupAfterLayout;
- (void)clearAllPresses;
- (void)clearPressedHex;
- (void)prepareForLayout;
- (void)setPressedHex:(Hex)hex;
@end

@implementation CSLPressStateApplier

- (CSLPressStateApplier)init
{
  v8.receiver = self;
  v8.super_class = CSLPressStateApplier;
  v2 = [(CSLPressStateApplier *)&v8 init];
  if (v2)
  {
    v3 = +[CASpringAnimation animation];
    spring = v2->_spring;
    v2->_spring = v3;

    [(CASpringAnimation *)v2->_spring setMass:3.0];
    [(CASpringAnimation *)v2->_spring setStiffness:1000.0];
    [(CASpringAnimation *)v2->_spring setDamping:500.0];
    [(CASpringAnimation *)v2->_spring durationForEpsilon:0.015];
    v2->_springDuration = v5;
    [(CASpringAnimation *)v2->_spring setDuration:?];
    v6 = v2;
  }

  return v2;
}

- (void)_reversePressStatesAtTime:(double)time
{
  begin = self->_pressStates.__map_.__begin_;
  if (self->_pressStates.__map_.__end_ != begin)
  {
    start = self->_pressStates.__start_;
    v5 = &begin[start >> 6];
    v6 = *v5 + 64 * (start & 0x3F);
    v7 = *(begin + (((self->_pressStates.__size_ + start) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((self->_pressStates.__size_ + start) & 0x3F);
    while (v6 != v7)
    {
      if ((*(v6 + 16) & 1) == 0)
      {
        *(v6 + 16) = 1;
        *(v6 + 24) = time;
      }

      v6 += 64;
      if (v6 - *v5 == 4096)
      {
        v8 = v5[1];
        ++v5;
        v6 = v8;
      }
    }
  }
}

- (void)clearPressedHex
{
  v3 = CACurrentMediaTime();

  [(CSLPressStateApplier *)self _reversePressStatesAtTime:v3];
}

- (void)clearAllPresses
{
  begin = self->_pressStates.__map_.__begin_;
  end = self->_pressStates.__map_.__end_;
  self->_pressStates.__size_ = 0;
  v5 = end - begin;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*begin);
      v6 = self->_pressStates.__map_.__end_;
      begin = self->_pressStates.__map_.__begin_ + 1;
      self->_pressStates.__map_.__begin_ = begin;
      v5 = v6 - begin;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 32;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = 64;
  }

  self->_pressStates.__start_ = v7;
LABEL_8:

  [(CSLPressStateApplier *)self _updateDisplayLink];
}

- (void)setPressedHex:(Hex)hex
{
  hexCopy = hex;
  v5 = CACurrentMediaTime();
  self->_updateTime = v5;
  *v10 = v5;
  v10[1] = hex;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained originalLayoutAttributesForHex:hex];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v12 = v8;
  v13 = v9;

  v11 = 0;
  [(CSLPressStateApplier *)self _reversePressStatesAtTime:v5];
  sub_206AC(&self->_pressStates, v10);
  sub_215C4();
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForHex:(Hex)hex
{
  v6 = v3;
  *v3 = 0u;
  v3[1] = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained originalLayoutAttributesForHex:hex];
  }

  else
  {
    *v6 = 0u;
    v6[1] = 0u;
  }

  begin = self->_pressStates.__map_.__begin_;
  if (self->_pressStates.__map_.__end_ != begin)
  {
    start = self->_pressStates.__start_;
    v12 = &begin[start >> 6];
    v13 = *v12 + 64 * (start & 0x3F);
    v14 = *(begin + (((self->_pressStates.__size_ + start) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((self->_pressStates.__size_ + start) & 0x3F);
    while (v13 != v14)
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      v17 = *(v13 + 3);
      v34 = *(v13 + 2);
      v35 = v17;
      v32 = v15;
      v33 = v16;
      v30 = 0u;
      v31 = 0u;
      v18 = v6[1];
      v28 = *v6;
      v29 = v18;
      v24 = v15;
      v25 = v33;
      v26 = v34;
      v27 = v17;
      [(CSLPressStateApplier *)self _computeTargetAttributesForHex:hex sourceAttributes:&v28 forPressState:&v24];
      v19 = v6[1];
      v23[0] = *v6;
      v23[1] = v19;
      v22[0] = v30;
      v22[1] = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      [(CSLPressStateApplier *)self _interpolateBetweenSourceAttributes:v23 targetAttributes:v22 pressState:&v24];
      *&v9.var0 = v28;
      v20 = v29;
      *v6 = v28;
      v6[1] = v20;
      v13 += 64;
      if (v13 - *v12 == 4096)
      {
        v21 = v12[1];
        ++v12;
        v13 = v21;
      }
    }
  }

  return v9;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)_interpolateBetweenSourceAttributes:(id)attributes targetAttributes:(id)targetAttributes fraction:(double)fraction
{
  v7[1].i64[1] = 0;
  var0 = attributes.var0;
  *v7 = vmlaq_n_f32(*v5, vsubq_f32(*v6, *v5), var0);
  *&v9.var0 = v6[1].i64[0];
  *v7[1].f32 = v9;
  return v9;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)_interpolateBetweenSourceAttributes:(id)attributes targetAttributes:(id)targetAttributes pressState:(id *)state
{
  stateCopy = state;
  v9 = vsubq_f32(*&state->var0, *v5);
  v10 = vsubq_f32(*v5, *&state->var0);
  v11 = fmaxf(fmaxf(v10.f32[0], v10.f32[2]), v10.f32[1]);
  if (fmaxf(fmaxf(v9.f32[0], v9.f32[2]), v9.f32[1]) < 0.00000011921 && v11 < 0.00000011921)
  {
    v20 = *&state->var0;
    v21 = *&state->var2;
    *v7 = *&state->var0;
    v7[1] = v21;
  }

  else
  {
    v13 = v5;
    if (*(v6 + 16) == 1)
    {
      v15 = v6 + 24;
      [(CASpringAnimation *)self->_spring _timeFunction:(*(v6 + 24) - *v6) / self->_springDuration];
      v16 = *&stateCopy->var2;
      v25 = *&stateCopy->var0;
      v26 = v16;
      v17 = v13[1];
      v23 = *v13;
      v24 = v17;
      [(CSLPressStateApplier *)self _interpolateBetweenSourceAttributes:&v25 targetAttributes:&v23 fraction:?];
      v6 = v15;
    }

    else
    {
      v18 = *&state->var2;
      v27 = *&state->var0;
      v28 = v18;
      stateCopy = v5;
    }

    v19 = *&stateCopy->var2;
    v25 = *&stateCopy->var0;
    v26 = v19;
    [(CASpringAnimation *)self->_spring _timeFunction:(self->_updateTime - *v6) / self->_springDuration];
    v23 = v27;
    v24 = v28;
    v22[0] = v25;
    v22[1] = v26;
    [(CSLPressStateApplier *)self _interpolateBetweenSourceAttributes:&v23 targetAttributes:v22 fraction:?];
  }

  return v20;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)_computeTargetAttributesForHex:(Hex)hex sourceAttributes:(id)attributes forPressState:(id *)state
{
  v8 = v5->i32[2];
  v7 = v5->i32[3];
  v9 = hex.q - v8;
  if (hex.q == v8 && hex.r == v7)
  {
    *&v21 = *&state->var1.q * 0.884;
    state->var1.q = v21;
  }

  else
  {
    v11 = v8 - (hex.r + hex.q) + v7;
    v12 = hex.r - v7;
    if (v9 < 0)
    {
      v9 = -v9;
    }

    if (v11 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = -v11;
    }

    if (v12 < 0)
    {
      v12 = -v12;
    }

    if (v9 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    if (v13 >= v12 && v13 >= v9)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v16 <= 2)
    {
      v17 = *&state->var0;
      v18 = v5[2];
      v19 = vsubq_f32(*&state->var0, v18);
      v19.i32[2] = 0;
      if (v16 == 2)
      {
        v19 = vmulq_f32(v19, vdupq_n_s32(0x3F7D70A4u));
      }

      else if (v16 == 1)
      {
        v19 = vmulq_f32(v19, vdupq_n_s32(0x3F760419u));
        *&v20 = *(&v17 + 2) * 0.97;
        state->var1.q = v20;
        v18 = v5[2];
        v17 = *&state->var0;
      }

      state->var1.q = DWORD2(v17);
      *&state->var0 = vaddq_f32(v19, v18).u64[0];
    }
  }

  v22 = *&state->var0;
  v23 = *&state->var2;
  *v6 = *&state->var0;
  v6[1] = v23;
  return v22;
}

- (void)prepareForLayout
{
  self->_updateTime = CACurrentMediaTime();
  begin = self->_pressStates.__map_.__begin_;
  if (self->_pressStates.__map_.__end_ != begin)
  {
    start = self->_pressStates.__start_;
    v5 = &begin[start >> 6];
    v6 = *v5 + 64 * (start & 0x3F);
    v7 = *(begin + (((self->_pressStates.__size_ + start) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((self->_pressStates.__size_ + start) & 0x3F);
    while (v6 != v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained originalLayoutAttributesForHex:*(v6 + 8)];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      *(v6 + 32) = v11;
      *(v6 + 48) = v12;

      v6 += 64;
      if (v6 - *v5 == 4096)
      {
        v10 = v5[1];
        ++v5;
        v6 = v10;
      }
    }
  }
}

- (void)cleanupAfterLayout
{
  if (self->_pressStates.__size_)
  {
    v8 = xmmword_2A3C0;
    do
    {
      v3 = *(self->_pressStates.__map_.__begin_ + ((self->_pressStates.__start_ >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * (self->_pressStates.__start_ & 0x3F);
      if (v3[16] != 1 || self->_updateTime <= *(v3 + 3) + self->_springDuration)
      {
        break;
      }

      v4 = sub_14288(&self->_pressedHexes.__table_.__bucket_list_.__ptr_, v3 + 2);
      sub_14344(&self->_pressedHexes.__table_.__bucket_list_.__ptr_, v4);
      v10 = *(v3 + 1);
      v11 = xmmword_2A3B0;
      v12 = v10;
      v13 = 0;
      *&v9[4] = 0;
      *v9 = sub_7460(&v10);
      for (*&v9[8] = v5; (v9[0] & 1) != 0; *&v9[8] = v7)
      {
        v6 = sub_14288(&self->_pressedHexes.__table_.__bucket_list_.__ptr_, &v9[4]);
        sub_14344(&self->_pressedHexes.__table_.__bucket_list_.__ptr_, v6);
        *v9 = sub_7460(&v10);
      }

      *&self->_pressStates.__start_ = vaddq_s64(*&self->_pressStates.__start_, xmmword_2A3C0);
      sub_21B4C(&self->_pressStates, 1);
    }

    while (self->_pressStates.__size_);
  }

  [(CSLPressStateApplier *)self _updateDisplayLink];
}

- (void)_updateDisplayLink
{
  _needsDisplayLink = [(CSLPressStateApplier *)self _needsDisplayLink];
  displayLink = self->_displayLink;
  if (_needsDisplayLink)
  {
    if (displayLink)
    {
      return;
    }

    v5 = [CADisplayLink displayLinkWithTarget:self selector:"_displayLinkFired:"];
    v6 = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    v9 = +[NSRunLoop currentRunLoop];
    [CADisplayLink addToRunLoop:v7 forMode:"addToRunLoop:forMode:"];
    v8 = v9;
  }

  else
  {
    if (!displayLink)
    {
      return;
    }

    [(CADisplayLink *)displayLink invalidate];
    v8 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_displayLinkFired:(id)fired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressStateApplierDidUpdate];
}

- (CSLPressStateApplierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end