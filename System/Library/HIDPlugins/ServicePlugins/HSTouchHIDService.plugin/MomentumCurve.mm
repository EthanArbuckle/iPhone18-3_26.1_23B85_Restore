@interface MomentumCurve
- (BOOL)atEndOfCurve;
- (MomentumCurve)init;
- (float)getTimeAtIndex:(unint64_t)index curve:(int)curve;
- (float)momentumDecayRateAlphaWithMickeys:()pair<float;
- (id).cxx_construct;
- (pair<float,)initialDelta;
- (pair<int,)getCurrentMomentumDeltas;
- (pair<int,)getCurrentMomentumDeltasAndStep;
- (vector<std::vector<int>,)deltas;
- (vector<std::vector<int>,)interpolatedDeltas;
- (void)clearCurves;
- (void)generateCurvesWithInitialDelta:(const void *)delta;
- (void)generateCurvesWithMomentumState:(id)state scrollMomentumDispatchRate:(float)rate;
- (void)generateFrameIntervalMomentumDeltas;
- (void)interpolateFrameIntervalMomentumDeltas;
- (void)regenerateCurvesWithInitialDelta:(const void *)delta;
- (void)setDeltas:()vector<std:(std::allocator<std::vector<int>>> *)std :vector<int>;
- (void)setInterpolatedDeltas:()vector<std:(std::allocator<std::vector<int>>> *)std :vector<int>;
- (void)smoothCurveBody:(int)body;
- (void)smoothCurveTail:(int)tail minFrameSkipsAtEndOfTail:(unsigned int)ofTail;
@end

@implementation MomentumCurve

- (MomentumCurve)init
{
  v10.receiver = self;
  v10.super_class = MomentumCurve;
  v2 = [(MomentumCurve *)&v10 init];
  if (v2)
  {
    v3 = 1;
    do
    {
      v4 = v3;
      __p = 0;
      v8 = 0;
      v9 = 0;
      std::vector<std::vector<int>>::push_back[abi:ne200100](&v2->_deltas, &__p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      __p = 0;
      v8 = 0;
      v9 = 0;
      std::vector<std::vector<int>>::push_back[abi:ne200100](&v2->_interpolatedDeltas, &__p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      v3 = 0;
    }

    while ((v4 & 1) != 0);
    v5 = v2;
  }

  return v2;
}

- (void)clearCurves
{
  begin = self->_deltas.__begin_;
  v3 = self->_interpolatedDeltas.__begin_;
  begin[1] = *begin;
  v3[1] = *v3;
  begin[4] = begin[3];
  v3[4] = v3[3];
  [(MomentumCurve *)self setCurveIndex:0];
}

- (void)generateCurvesWithMomentumState:(id)state scrollMomentumDispatchRate:(float)rate
{
  stateCopy = state;
  [(MomentumCurve *)self setSubtype:*(stateCopy + 3)];
  LODWORD(v7) = 1074580685;
  [(MomentumCurve *)self setMaxDecayTime:v7];
  *&v8 = rate;
  [(MomentumCurve *)self setScrollMomentumDispatchRate:v8];
  if ([(MomentumCurve *)self subtype]== 1)
  {
    [(MomentumCurve *)self scrollMomentumDispatchRate];
    v10 = v9;
    +[MomentumCurve defaultDispatchRate];
    v12 = vabds_f32(v10, v11) > 0.05;
  }

  else
  {
    v12 = 0;
  }

  [(MomentumCurve *)self setUseInterpolatedCurve:v12];
  [(MomentumCurve *)self scrollMomentumDispatchRate];
  *&v14 = 1.0 / v13;
  [(MomentumCurve *)self setInterpolationFrameInterval:v14];
  [(MomentumCurve *)self setFirstSwitchFromInterpolatedCurve:0];
  [(MomentumCurve *)self setStopInterpolatingInfoSet:0];
  [(MomentumCurve *)self setMinFrameSkipsAtEndOfTail:0];
  v15 = stateCopy[4];
  *&v15 = v15;
  [(MomentumCurve *)self setPhysicalFrameInterval:v15];
  [(MomentumCurve *)self physicalFrameInterval];
  v17 = v16;
  if (v17 < 0.001 || ([(MomentumCurve *)self physicalFrameInterval], v17 = v18, v17 > 0.1))
  {
    LODWORD(v17) = 1008981770;
    [(MomentumCurve *)self setPhysicalFrameInterval:v17];
  }

  if ([(MomentumCurve *)self subtype]== 1)
  {
    +[MomentumCurve defaultDispatchRate];
    *&v20 = 1.0 / v19;
    [(MomentumCurve *)self setFrameInterval:v20];
    [(MomentumCurve *)self frameInterval];
    v22 = v21;
    [(MomentumCurve *)self physicalFrameInterval];
    *&v24 = v22 / v23;
    [(MomentumCurve *)self setDeltaMultiplier:v24];
    LODWORD(v25) = 0.5;
    [(MomentumCurve *)self setDecayStopDelta:v25];
    [(MomentumCurve *)self setMinFrameSkipsAtEndOfTail:3];
    [(MomentumCurve *)self frameInterval];
    v27 = v26;
    [(MomentumCurve *)self interpolationFrameInterval];
    [(MomentumCurve *)self setInterpolationMinFrameSkipsAtEndOfTail:(roundf((v27 / v28) * ([(MomentumCurve *)self minFrameSkipsAtEndOfTail]+ 1)) + -1.0)];
    [(MomentumCurve *)self setDragButtons:0];
    v29 = MTLoggingPlugin();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v45 = 136315650;
    v46 = "";
    v47 = 2080;
    v48 = "";
    v49 = 2080;
    v50 = "[MomentumCurve generateCurvesWithMomentumState:scrollMomentumDispatchRate:]";
    v30 = "[HID] [MT] %s%s%s Starting momentum scroll";
  }

  else
  {
    [(MomentumCurve *)self physicalFrameInterval];
    [(MomentumCurve *)self setFrameInterval:?];
    LODWORD(v31) = 1.0;
    [(MomentumCurve *)self setDeltaMultiplier:v31];
    LODWORD(v32) = 1.0;
    [(MomentumCurve *)self setDecayStopDelta:v32];
    [(MomentumCurve *)self setDragButtons:*(stateCopy + 6)];
    v29 = MTLoggingPlugin();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v45 = 136315650;
    v46 = "";
    v47 = 2080;
    v48 = "";
    v49 = 2080;
    v50 = "[MomentumCurve generateCurvesWithMomentumState:scrollMomentumDispatchRate:]";
    v30 = "[HID] [MT] %s%s%s Starting momentum point / drag";
  }

  _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, v30, &v45, 0x20u);
LABEL_13:

  [(MomentumCurve *)self generateCurvesWithInitialDelta:stateCopy + 2];
  [(MomentumCurve *)self initialDelta];
  v34 = v33;
  v36 = v35;
  v37 = MTLoggingPlugin();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    subtype = [(MomentumCurve *)self subtype];
    [(MomentumCurve *)self frameInterval];
    v40 = v39;
    [(MomentumCurve *)self interpolationFrameInterval];
    v42 = v41;
    useInterpolatedCurve = [(MomentumCurve *)self useInterpolatedCurve];
    dragButtons = [(MomentumCurve *)self dragButtons];
    v45 = 136317442;
    v46 = "";
    v47 = 2080;
    v48 = "";
    v49 = 2080;
    v50 = "[MomentumCurve generateCurvesWithMomentumState:scrollMomentumDispatchRate:]";
    v51 = 1024;
    v52 = subtype;
    v53 = 2048;
    v54 = v34;
    v55 = 2048;
    v56 = v36;
    v57 = 2048;
    v58 = v40;
    v59 = 2048;
    v60 = v42;
    v61 = 1024;
    v62 = useInterpolatedCurve;
    v63 = 1024;
    v64 = dragButtons;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Subtype 0x%02X, initial delta (%4.1f, %4.1f), frame interval %f, interpolated frame interval %f, use interpolation %u, drag buttons %d", &v45, 0x5Au);
  }
}

- (void)regenerateCurvesWithInitialDelta:(const void *)delta
{
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *delta;
    v7 = *(delta + 1);
    v8 = 136316162;
    v9 = "";
    v10 = 2080;
    v11 = "";
    v12 = 2080;
    v13 = "[MomentumCurve regenerateCurvesWithInitialDelta:]";
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Regenerating curves with initial delta (%4.1f, %4.1f)", &v8, 0x34u);
  }

  [(MomentumCurve *)self generateCurvesWithInitialDelta:delta];
}

- (void)generateCurvesWithInitialDelta:(const void *)delta
{
  [(MomentumCurve *)self clearCurves];
  LODWORD(v5) = *delta;
  LODWORD(v6) = *(delta + 1);
  [(MomentumCurve *)self setInitialDelta:v5, v6];
  [(MomentumCurve *)self generateFrameIntervalMomentumDeltas];
  if ([(MomentumCurve *)self useInterpolatedCurve])
  {
    [(MomentumCurve *)self smoothCurveTail:0 minFrameSkipsAtEndOfTail:[(MomentumCurve *)self minFrameSkipsAtEndOfTail]];
    [(MomentumCurve *)self interpolateFrameIntervalMomentumDeltas];
    [(MomentumCurve *)self smoothCurveTail:1 minFrameSkipsAtEndOfTail:[(MomentumCurve *)self interpolationMinFrameSkipsAtEndOfTail]];
    [(MomentumCurve *)self smoothCurveBody:1];
  }

  if ([(MomentumCurve *)self useInterpolatedCurve])
  {
    [(MomentumCurve *)self interpolationFrameInterval];
  }

  else
  {
    [(MomentumCurve *)self frameInterval];
  }

  [(MomentumCurve *)self setCurrentInterval:?];
  [(MomentumCurve *)self currentInterval];

  [(MomentumCurve *)self setNextInterval:?];
}

- (void)generateFrameIntervalMomentumDeltas
{
  begin = self->_deltas.__begin_;
  [(MomentumCurve *)self initialDelta];
  v5 = v4;
  [(MomentumCurve *)self initialDelta];
  v7 = v6;
  [(MomentumCurve *)self maxDecayTime];
  v9 = *&v10;
  HIDWORD(v10) = 0;
  v27 = 0.0;
  v11 = 0.0;
  do
  {
    *&v10 = v5;
    *&v8 = v7;
    [(MomentumCurve *)self momentumDecayRateAlphaWithMickeys:v10, v8];
    v5 = v5 * v12;
    v7 = v7 * v12;
    [(MomentumCurve *)self deltaMultiplier];
    v14 = v5 * v13;
    [(MomentumCurve *)self deltaMultiplier];
    v16 = v7 * v15;
    if ([(MomentumCurve *)self useInterpolatedCurve]&& ![(MomentumCurve *)self stopInterpolatingInfoSet])
    {
      [(MomentumCurve *)self frameInterval];
      v18 = v14 / v17;
      [(MomentumCurve *)self frameInterval];
      *&v19 = fabsf(v16 / *&v19);
      if (fabsf(v18) <= 320.0 && *&v19 <= 320.0)
      {
        [(MomentumCurve *)self setStopInterpolatingDefaultIndex:(*(begin + 1) - *begin) >> 2, v19];
        [(MomentumCurve *)self getTimeAtIndex:[(MomentumCurve *)self stopInterpolatingDefaultIndex] curve:0];
        [(MomentumCurve *)self setStopInterpolatingTime:?];
        [(MomentumCurve *)self setStopInterpolatingInfoSet:1];
        if (![(MomentumCurve *)self stopInterpolatingDefaultIndex])
        {
          [(MomentumCurve *)self setUseInterpolatedCurve:0];
        }
      }
    }

    v28 = llroundf(v16);
    v29 = llroundf(v14);
    v21 = fabsf(v14);
    v22 = fabsf(v16);
    if (v21 < 1.0 && v22 < 1.0)
    {
      v28 = (v11 + v16);
      v29 = (v27 + v14);
      v27 = (v27 + v14) - v29;
      v11 = (v11 + v16) - v28;
    }

    if (v9 <= 0.0)
    {
      v26 = 1;
    }

    else
    {
      [(MomentumCurve *)self decayStopDelta];
      if (v21 >= v24)
      {
        v26 = 0;
      }

      else
      {
        [(MomentumCurve *)self decayStopDelta];
        v26 = v22 < v25;
      }
    }

    std::vector<int>::push_back[abi:ne200100](begin, &v29);
    std::vector<int>::push_back[abi:ne200100](begin + 3, &v28);
    if ([(MomentumCurve *)self subtype]== 1)
    {
      [(MomentumCurve *)self frameInterval];
      v9 = v9 - *&v10;
    }
  }

  while (!v26);
}

- (void)interpolateFrameIntervalMomentumDeltas
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = 3 * v3;
    v7 = (self->_deltas.__begin_ + 24 * v3);
    begin = self->_interpolatedDeltas.__begin_;
    [(MomentumCurve *)self interpolationFrameInterval];
    v10 = v9;
    [(MomentumCurve *)self frameInterval];
    v12 = v11;
    v13 = (v7[1] - *v7) >> 2;
    [(MomentumCurve *)self frameInterval];
    v15 = v14 * v13;
    [(MomentumCurve *)self interpolationFrameInterval];
    v17 = (v15 / v16);
    if (v17)
    {
      v18 = 0;
      v19 = &begin[8 * v6];
      v20 = v10 / v12;
      v21 = 0.0;
      do
      {
        v31 = NAN;
        v22 = modff((v18 / (v17 + -1.0)) * (v13 - 1), &v31);
        v23 = v31;
        v24 = *v7;
        v25 = (v7[1] - *v7) >> 2;
        if (v25 <= v23)
        {
LABEL_11:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v26 = (v23 + 1);
        v27 = *(v24 + 4 * v23);
        v28 = 0.0;
        if (v13 > v26)
        {
          if (v25 <= v26)
          {
            goto LABEL_11;
          }

          v28 = *(v24 + 4 * v26);
        }

        v29 = v21 + (v20 * ((v22 * v28) + (v27 * (1.0 - v22))));
        v30 = llroundf(v29);
        v21 = v29 - roundf(v29);
        std::vector<int>::push_back[abi:ne200100](v19, &v30);
        ++v18;
      }

      while (v17 != v18);
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (float)momentumDecayRateAlphaWithMickeys:()pair<float
{
  second = a3.second;
  first = a3.first;
  if ([(MomentumCurve *)self subtype]!= 4)
  {
    subtype = [(MomentumCurve *)self subtype];
    [(MomentumCurve *)self frameInterval];
    if (subtype == 2)
    {
      if (v16 <= 0.0)
      {
        [(MomentumCurve *)self frameInterval];
        v21 = v29 / 0.00800000038;
        v22 = 0.850000024;
        return pow(v22, v21);
      }

      v17 = hypotf(first, second);
      [(MomentumCurve *)self frameInterval];
      v19 = v17 / v18;
      v12 = 1.0;
      if (v19 > 0.0)
      {
        v12 = 0.0;
        if (v19 < 500.0)
        {
          v12 = (500.0 - v19) / 500.0;
        }
      }

      v13 = 0.95;
      v14 = -0.1;
    }

    else
    {
      if (v16 <= 0.0)
      {
        [(MomentumCurve *)self frameInterval];
        v21 = v30 / 0.00800000038;
        v22 = 0.975000024;
        return pow(v22, v21);
      }

      v23 = hypotf(first, second);
      [(MomentumCurve *)self frameInterval];
      v25 = v23 / v24;
      v12 = 1.0;
      if (v25 > 0.0)
      {
        v12 = 0.0;
        if (v25 < 250.0)
        {
          v12 = (250.0 - v25) / 250.0;
        }
      }

      v13 = 0.975;
      v14 = -0.065;
    }

    goto LABEL_25;
  }

  [(MomentumCurve *)self frameInterval];
  if (v6 > 0.0)
  {
    v7 = hypotf(first, second);
    [(MomentumCurve *)self frameInterval];
    v9 = v7 / v8;
    v10 = 0.0;
    if (v9 > 2000.0)
    {
      v10 = 1.0;
      if (v9 < 3000.0)
      {
        v10 = (v9 + -2000.0) / 1000.0;
      }
    }

    v11 = 1.0;
    if (v9 > 0.0)
    {
      v11 = 0.0;
      if (v9 < 250.0)
      {
        v11 = (250.0 - v9) / 250.0;
      }
    }

    if (v10 >= v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = 0.98;
    v14 = -0.08;
LABEL_25:
    v26 = (v13 + (v12 * v14));
    [(MomentumCurve *)self frameInterval];
    v21 = v27 / 0.00800000038;
    v22 = v26;
    return pow(v22, v21);
  }

  [(MomentumCurve *)self frameInterval];
  v21 = v20 / 0.00800000038;
  v22 = 0.899999976;
  return pow(v22, v21);
}

- (void)smoothCurveBody:(int)body
{
  v3 = 0;
  v4 = 128;
  if (!body)
  {
    v4 = 104;
  }

  v5 = (&self->super.isa + v4);
  v6 = 1;
  do
  {
    v7 = v6;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3) <= v3)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *v5 + 24 * v3;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v10 != *v8 && *v9)
    {
      v11 = v9 + 1;
      while (v11 != v10)
      {
        if (!*v11++)
        {
          v10 = v11 - 1;
          break;
        }
      }

      if (*v9 < 1)
      {
        v15[1] = -86;
        std::__sort<std::__less<int,int> &,int *>();
      }

      else
      {
        v13 = 126 - 2 * __clz(v10 - v9);
        if (v10 == v9)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v9, v10, v15, v14, 1);
      }
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
}

- (void)smoothCurveTail:(int)tail minFrameSkipsAtEndOfTail:(unsigned int)ofTail
{
  v4 = 0;
  v5 = 0;
  v6 = 128;
  if (!tail)
  {
    v6 = 104;
  }

  v7 = (&self->super.isa + v6);
  v8 = 1;
  v32 = 4 * ofTail + 4;
  __n = ofTail;
  do
  {
    v9 = v8;
    if (0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3) <= v4)
    {
LABEL_31:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = (*v7 + 24 * v4);
    begin = v10->__begin_;
    end = v10->__end_;
    if (end == v10->__begin_)
    {
      v14 = 0;
      v16 = -1;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = -1;
      do
      {
        if (begin[v13])
        {
          if (v14 <= v15)
          {
            v14 = v15;
          }

          v17 = v14 - v15;
          v18.__i_ = &begin[v13];
          __x = 0;
          std::vector<int>::insert(v10, v18, v17, &__x);
          v15 = 0;
          v13 += v17;
          begin = v10->__begin_;
          end = v10->__end_;
          v16 = v13;
        }

        else
        {
          ++v15;
        }

        ++v13;
      }

      while (v13 < end - begin);
    }

    v19 = 4 * v16;
    v20 = v19 + 4;
    if (end != &begin[v19 / 4 + 1])
    {
      end = (begin + v20);
      v10->__end_ = (begin + v20);
    }

    if (v16 != -1 && v14 < ofTail)
    {
      __x = 0;
      v21.__i_ = (begin + v20);
      std::vector<int>::insert(v10, v21, __n, &__x);
      v22 = v10->__begin_;
      if (v10->__end_ == v10->__begin_)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (*v22 < 1)
      {
        v23 = -1;
      }

      else
      {
        v23 = 1;
      }

      __x = v23;
      v24.__i_ = (v22 + v32 + v19);
      std::vector<int>::insert(v10, v24, &__x);
      begin = v10->__begin_;
      end = v10->__end_;
    }

    v8 = 0;
    v25 = end - begin;
    if (v5 <= v25)
    {
      v5 = v25;
    }

    v4 = 1;
  }

  while ((v9 & 1) != 0);
  v26 = 0;
  v27 = 1;
  do
  {
    v28 = v27;
    if (0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3) <= v26)
    {
      goto LABEL_31;
    }

    v29 = (*v7 + 24 * v26);
    v30.__i_ = v29->__end_;
    v31 = v5 - (v30.__i_ - v29->__begin_);
    __x = 0;
    std::vector<int>::insert(v29, v30, v31, &__x);
    v27 = 0;
    v26 = 1;
  }

  while ((v28 & 1) != 0);
}

- (float)getTimeAtIndex:(unint64_t)index curve:(int)curve
{
  if (curve)
  {
    [(MomentumCurve *)self interpolationFrameInterval];
  }

  else
  {
    [(MomentumCurve *)self frameInterval];
  }

  return v5 * (index + 1);
}

- (BOOL)atEndOfCurve
{
  useInterpolatedCurve = [(MomentumCurve *)self useInterpolatedCurve];
  v4 = 104;
  if (useInterpolatedCurve)
  {
    v4 = 128;
  }

  v5 = *(&self->super.isa + v4);
  return [(MomentumCurve *)self curveIndex]>= (v5[1] - *v5) >> 2 && [(MomentumCurve *)self curveIndex]>= (v5[4] - v5[3]) >> 2;
}

- (pair<int,)getCurrentMomentumDeltasAndStep
{
  if (![(MomentumCurve *)self atEndOfCurve])
  {
    begin = self->_deltas.__begin_;
    v7 = self->_interpolatedDeltas.__begin_;
    useInterpolatedCurve = [(MomentumCurve *)self useInterpolatedCurve];
    curveIndex = [(MomentumCurve *)self curveIndex];
    v10 = curveIndex;
    if (useInterpolatedCurve)
    {
      [(MomentumCurve *)self getTimeAtIndex:curveIndex curve:1];
      v12 = v11;
      [(MomentumCurve *)self getTimeAtIndex:[(MomentumCurve *)self curveIndex]+ 1 curve:1];
      v14 = v13;
      curveIndex2 = [(MomentumCurve *)self curveIndex];
      v16 = *v7;
      if (curveIndex2 < (v7[1] - *v7) >> 2)
      {
        v17 = curveIndex2;
        curveIndex3 = [(MomentumCurve *)self curveIndex];
        v19 = v7[3];
        if (curveIndex3 < (v7[4] - v19) >> 2)
        {
          v4 = *(v16 + 4 * v17);
          v5 = *(v19 + 4 * curveIndex3);
          [(MomentumCurve *)self setCurveIndex:[(MomentumCurve *)self curveIndex]+ 1];
          [(MomentumCurve *)self interpolationFrameInterval];
          [(MomentumCurve *)self setCurrentInterval:?];
          [(MomentumCurve *)self currentInterval];
          [(MomentumCurve *)self setNextInterval:?];
          if (![(MomentumCurve *)self stopInterpolatingInfoSet])
          {
            return (v4 | (v5 << 32));
          }

          if ([(MomentumCurve *)self atEndOfCurve])
          {
            return (v4 | (v5 << 32));
          }

          [(MomentumCurve *)self stopInterpolatingTime];
          if (v14 < v20)
          {
            return (v4 | (v5 << 32));
          }

          [(MomentumCurve *)self setUseInterpolatedCurve:0];
          [(MomentumCurve *)self setCurveIndex:[(MomentumCurve *)self stopInterpolatingDefaultIndex]];
          [(MomentumCurve *)self getTimeAtIndex:[(MomentumCurve *)self curveIndex] curve:0];
          v22 = v21 - v12;
          [(MomentumCurve *)self frameInterval];
          *&v24 = v22 / v23;
          [(MomentumCurve *)self setFirstSwitchFromInterpolatedCurveMultiplier:v24];
          *&v25 = v22;
          [(MomentumCurve *)self setFirstSwitchFromInterpolatedCurveInterval:v25];
          [(MomentumCurve *)self firstSwitchFromInterpolatedCurveInterval];
          [(MomentumCurve *)self setNextInterval:?];
          selfCopy2 = self;
          v27 = 1;
LABEL_16:
          [(MomentumCurve *)selfCopy2 setFirstSwitchFromInterpolatedCurve:v27];
          return (v4 | (v5 << 32));
        }
      }
    }

    else
    {
      v28 = *begin;
      if (curveIndex < (begin[1] - *begin) >> 2)
      {
        curveIndex4 = [(MomentumCurve *)self curveIndex];
        v30 = begin[3];
        if (curveIndex4 < (begin[4] - v30) >> 2)
        {
          v4 = *(v28 + 4 * v10);
          v5 = *(v30 + 4 * curveIndex4);
          [(MomentumCurve *)self setCurveIndex:[(MomentumCurve *)self curveIndex]+ 1];
          [(MomentumCurve *)self frameInterval];
          [(MomentumCurve *)self setCurrentInterval:?];
          [(MomentumCurve *)self currentInterval];
          [(MomentumCurve *)self setNextInterval:?];
          if (![(MomentumCurve *)self firstSwitchFromInterpolatedCurve])
          {
            return (v4 | (v5 << 32));
          }

          [(MomentumCurve *)self firstSwitchFromInterpolatedCurveMultiplier];
          v4 = llroundf(v31 * v4);
          [(MomentumCurve *)self firstSwitchFromInterpolatedCurveMultiplier];
          LODWORD(v5) = llroundf(v32 * v5);
          [(MomentumCurve *)self firstSwitchFromInterpolatedCurveInterval];
          [(MomentumCurve *)self setCurrentInterval:?];
          selfCopy2 = self;
          v27 = 0;
          goto LABEL_16;
        }
      }
    }

    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v34 = 136315650;
    v35 = "[Error] ";
    v36 = 2080;
    v37 = "";
    v38 = 2080;
    v39 = "[MomentumCurve getCurrentMomentumDeltasAndStep]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Momentum deltas requested past the end of the curves", &v34, 0x20u);
  }

  v4 = 0;
  v5 = 0;
  return (v4 | (v5 << 32));
}

- (pair<int,)getCurrentMomentumDeltas
{
  if ([(MomentumCurve *)self atEndOfCurve])
  {
    return 0;
  }

  else
  {
    if ([(MomentumCurve *)self useInterpolatedCurve])
    {
      v4 = 128;
    }

    else
    {
      v4 = 104;
    }

    v5 = *(&self->super.isa + v4);
    curveIndex = [(MomentumCurve *)self curveIndex];
    v7 = *v5;
    v8 = *(&self->super.isa + v4);
    return (*(v7 + 4 * curveIndex) | (*(*(v8 + 24) + 4 * [(MomentumCurve *)self curveIndex]) << 32));
  }
}

- (pair<float,)initialDelta
{
  first = self->_initialDelta.first;
  second = self->_initialDelta.second;
  result.second = second;
  result.first = first;
  return result;
}

- (vector<std::vector<int>,)deltas
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(retstr, self->_deltas.__begin_, self->_deltas.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_deltas.__end_ - self->_deltas.__begin_) >> 3));
}

- (void)setDeltas:()vector<std:(std::allocator<std::vector<int>>> *)std :vector<int>
{
  p_deltas = &self->_deltas;
  if (p_deltas != std)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(p_deltas, std->__begin_, std->__end_, 0xAAAAAAAAAAAAAAABLL * ((std->__end_ - std->__begin_) >> 3));
  }
}

- (vector<std::vector<int>,)interpolatedDeltas
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(retstr, self->_interpolatedDeltas.__begin_, self->_interpolatedDeltas.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_interpolatedDeltas.__end_ - self->_interpolatedDeltas.__begin_) >> 3));
}

- (void)setInterpolatedDeltas:()vector<std:(std::allocator<std::vector<int>>> *)std :vector<int>
{
  p_interpolatedDeltas = &self->_interpolatedDeltas;
  if (p_interpolatedDeltas != std)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(p_interpolatedDeltas, std->__begin_, std->__end_, 0xAAAAAAAAAAAAAAABLL * ((std->__end_ - std->__begin_) >> 3));
  }
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  return self;
}

@end