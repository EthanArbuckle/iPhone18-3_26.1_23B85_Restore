@interface HDActivityCacheActiveSourceCalculator
- (HDActivityCacheActiveSource)_baseActiveSource;
- (HDActivityCacheActiveSourceCalculator)init;
- (id).cxx_construct;
- (vector<HDActivityCacheActiveSource,)createActiveSourceLog;
- (void)setActivationLogEntries:(void *)entries;
- (void)setWorkouts:(void *)workouts;
@end

@implementation HDActivityCacheActiveSourceCalculator

- (HDActivityCacheActiveSourceCalculator)init
{
  v3.receiver = self;
  v3.super_class = HDActivityCacheActiveSourceCalculator;
  result = [(HDActivityCacheActiveSourceCalculator *)&v3 init];
  if (result)
  {
    result->_baseSourceIdentifier = HDActivityCacheActiveSourceCalculatorDefaultBaseSourceIdentifier;
  }

  return result;
}

- (void)setWorkouts:(void *)workouts
{
  p_workouts = &self->_workouts;
  if (p_workouts != workouts)
  {
    sub_A6B8(p_workouts, *workouts, *(workouts + 1), (*(workouts + 1) - *workouts) >> 6);
  }
}

- (void)setActivationLogEntries:(void *)entries
{
  p_activationLogEntries = &self->_activationLogEntries;
  if (p_activationLogEntries != entries)
  {
    sub_A868(p_activationLogEntries, *entries, *(entries + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(entries + 1) - *entries) >> 3));
  }
}

- (vector<HDActivityCacheActiveSource,)createActiveSourceLog
{
  if (self)
  {
    baseSourceIdentifier = self->_baseSourceIdentifier;
    *&__p = 0xFFEFFFFFFFFFFFFFLL;
    *(&__p + 1) = baseSourceIdentifier;
  }

  else
  {
    __p = 0uLL;
  }

  v51 = 0;
  __src = 0;
  v48 = 0;
  v49 = 0;
  sub_AD40(&__src, &__p, &v52, 1uLL);
  begin = self->_activationLogEntries.__begin_;
  end = self->_activationLogEntries.__end_;
  if (begin != end)
  {
    v9 = v48;
    do
    {
      if (v9 >= v49)
      {
        v11 = __src;
        v12 = v9 - __src;
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __src) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_A594();
        }

        if (0x5555555555555556 * ((v49 - __src) >> 3) > v14)
        {
          v14 = 0x5555555555555556 * ((v49 - __src) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v49 - __src) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_AE0C(&__src, v15);
        }

        v16 = (8 * ((v9 - __src) >> 3));
        var1 = begin->var1;
        *v16 = *&begin->var0;
        v16[1] = var1;
        v16[2] = 0;
        v9 = (24 * v13 + 24);
        v18 = (24 * v13 - v12);
        memcpy(v16 - v12, v11, v12);
        v19 = __src;
        __src = v18;
        v48 = v9;
        v49 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        v6.n128_u64[0] = *&begin->var0;
        v10 = begin->var1;
        v9->n128_u64[0] = *&begin->var0;
        v9->n128_u64[1] = v10;
        v9[1].n128_u64[0] = 0;
        v9 = (v9 + 24);
      }

      v48 = v9;
      ++begin;
    }

    while (begin != end);
  }

  v21 = self->_workouts.__begin_;
  for (i = self->_workouts.__end_; v21 != i; v21 = (v21 + 64))
  {
    v22 = *(v21 + 5);
    *&__p = *v21;
    *(&__p + 1) = v22;
    v51 = 1;
    *&v45 = *(v21 + 1);
    *(&v45 + 1) = v22;
    v46 = 2;
    sub_A2CC(&__src, &__p);
    sub_A2CC(&__src, &v45);
  }

  v23 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v48 - __src) >> 3));
  if (v48 == __src)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_AE64(__src, v48, &__p, v24, 1, v6);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  __p = 0uLL;
  v51 = 0;
  *&v45 = HDActivityCacheActiveSourceCalculatorDefaultBaseSourceIdentifier;
  v25 = __src;
  v26 = v48;
  if (__src != v48)
  {
    v27 = 0;
    while (1)
    {
      v28 = v25[1].n128_u64[0];
      if (v28 == 2)
      {
        if (__p != *(&__p + 1))
        {
          v31 = 0;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
          v33 = __p;
          do
          {
            v34 = *v33++;
            if (v34 == v25->n128_u64[1])
            {
              v32 = v31;
            }

            ++v31;
          }

          while (v33 != *(&__p + 1));
          if (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = __p + 8 * v32;
            v36 = *(&__p + 1) - (v35 + 8);
            if (*(&__p + 1) != v35 + 8)
            {
              memmove((__p + 8 * v32), (v35 + 8), *(&__p + 1) - (v35 + 8));
              v27 = retstr->__end_;
            }

            *(&__p + 1) = v35 + v36;
          }
        }

        if (v27 >= retstr->__cap_)
        {
          goto LABEL_59;
        }

        sub_CB20(v27, v25->n128_f64, &v45, &__p);
      }

      else
      {
        if (v28 != 1)
        {
          if (!v28)
          {
            if (v27 >= retstr->__cap_)
            {
              v27 = sub_C69C(retstr, v25->n128_f64, &v25->n128_i64[1], &__p);
            }

            else
            {
              sub_C7E4(v27++, v25->n128_f64, &v25->n128_i64[1], &__p);
            }

            retstr->__end_ = v27;
            *&v45 = v25->n128_u64[1];
          }

          goto LABEL_61;
        }

        v29 = *(&__p + 1);
        if (*(&__p + 1) >= v51)
        {
          v37 = __p;
          v38 = *(&__p + 1) - __p;
          v39 = (*(&__p + 1) - __p) >> 3;
          v40 = v39 + 1;
          if ((v39 + 1) >> 61)
          {
            sub_A594();
          }

          v41 = v51 - __p;
          if ((v51 - __p) >> 2 > v40)
          {
            v40 = v41 >> 2;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            sub_A5AC(&__p, v42);
          }

          *(8 * v39) = v25->n128_u64[1];
          v30 = 8 * v39 + 8;
          memcpy(0, v37, v38);
          v43 = __p;
          *&__p = 0;
          *(&__p + 1) = v30;
          v51 = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          **(&__p + 1) = v25->n128_u64[1];
          v30 = v29 + 8;
        }

        *(&__p + 1) = v30;
        v27 = retstr->__end_;
        if (v27 >= retstr->__cap_)
        {
LABEL_59:
          v27 = sub_C9D8(retstr, v25->n128_f64, &v45, &__p);
          goto LABEL_60;
        }

        sub_CB20(retstr->__end_, v25->n128_f64, &v45, &__p);
      }

      ++v27;
LABEL_60:
      retstr->__end_ = v27;
LABEL_61:
      v25 = (v25 + 24);
      if (v25 == v26)
      {
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        break;
      }
    }
  }

  result = __src;
  if (__src)
  {
    v48 = __src;
    operator delete(__src);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

- (HDActivityCacheActiveSource)_baseActiveSource
{
  if (self)
  {
    baseSourceIdentifier = self->_baseSourceIdentifier;
    v4 = -1.79769313e308;
  }

  else
  {
    baseSourceIdentifier = 0;
    v4 = 0.0;
  }

  memset(v6, 0, sizeof(v6));
  return HDActivityCacheActiveSource::HDActivityCacheActiveSource(retstr, baseSourceIdentifier, v6, v4);
}

@end