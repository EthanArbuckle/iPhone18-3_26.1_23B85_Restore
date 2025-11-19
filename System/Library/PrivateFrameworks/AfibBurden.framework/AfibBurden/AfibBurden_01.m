float stats::std(stats *this, const float *a2, int a3)
{
  if (a2 <= 0)
  {
    stats::std();
  }

  if (!this)
  {
    stats::std();
  }

  return sqrtf(stats::variance(this, a2, a3));
}

float stats::rmssd(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::rmssd();
  }

  if (!this)
  {
    stats::rmssd();
  }

  __C = 0.0;
  __B = 0;
  v7 = 0;
  v3 = (a2 - 1);
  v8 = 0;
  std::vector<float>::resize(&__B, v3);
  MEMORY[0x23EF16340](&this->cp_time[1], 1, this, 1, __B, 1, v3);
  vDSP_dotpr(__B, 1, __B, 1, &__C, v3);
  v4 = sqrtf(__C / v3);
  __C = v4;
  if (__B)
  {
    v7 = __B;
    operator delete(__B);
  }

  return v4;
}

void sub_23E850CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::madsd(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::madsd();
  }

  if (!this)
  {
    stats::madsd();
  }

  v9 = 0.0;
  __C = 0;
  v7 = 0;
  v3 = (a2 - 1);
  v8 = 0;
  std::vector<float>::resize(&__C, v3);
  MEMORY[0x23EF16340](&this->cp_time[1], 1, this, 1, __C, 1, v3);
  vDSP_vabs(__C, 1, __C, 1, v3);
  vDSP_meanv_wrapper(__C, 1, &v9, v3);
  v4 = v9;
  if (__C)
  {
    v7 = __C;
    operator delete(__C);
  }

  return v4;
}

void sub_23E850DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::mad(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::mad();
  }

  if (!this)
  {
    stats::mad();
  }

  v8 = 0;
  v9 = 0;
  __C = 0;
  v7 = 0;
  v3 = a2;
  std::vector<float>::resize(&__C, a2);
  vDSP_meanv_wrapper(this->cp_time, 1, &v9, v3);
  MEMORY[0x23EF16340](this, 1, &v9, 0, __C, 1, v3);
  vDSP_vabs(__C, 1, __C, 1, v3);
  vDSP_meanv_wrapper(__C, 1, &v9 + 1, v3);
  v4 = *(&v9 + 1);
  if (__C)
  {
    v7 = __C;
    operator delete(__C);
  }

  return v4;
}

void sub_23E850ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::mad_median(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::mad_median();
  }

  if (!this)
  {
    stats::mad_median();
  }

  v10 = 0.0;
  __C = 0;
  v8 = 0;
  v4 = a2;
  v9 = 0;
  std::vector<float>::resize(&__C, a2);
  v10 = stats::median(this, a2);
  MEMORY[0x23EF16340](this, 1, &v10, 0, __C, 1, v4);
  vDSP_vabs(__C, 1, __C, 1, v4);
  v5 = stats::median(__C, a2);
  if (__C)
  {
    v8 = __C;
    operator delete(__C);
  }

  return v5;
}

void sub_23E850FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::median(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::median();
  }

  if (!this)
  {
    stats::median();
  }

  v3 = a2;
  __p = 0;
  v18 = 0;
  v4 = a2;
  v19 = 0;
  std::vector<float>::reserve(&__p, a2);
  std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(&v20, this, &this->cp_time[v4], &__p);
  v6 = __p;
  v7 = v18;
  v8 = (v18 - __p) >> 1;
  if (v3)
  {
    v14 = (v8 - 2) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = (__p + v14);
    if (__p + v14 != v18)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__p, (__p + v14), v18, v5);
    }

    v13 = *v15;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (__p + v9 - 4);
    if (v10 != v18)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__p, (__p + v9 - 4), v18, v5);
      v6 = __p;
      v7 = v18;
      v9 = ((v18 - __p) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = *v10;
    v12 = (v6 + v9);
    if ((v6 + v9) != v7)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v6, (v6 + v9), v7, v5);
    }

    v13 = *v12 * 0.5 + (v11 * 0.5);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_23E851114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::range(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::range();
  }

  if (!this)
  {
    stats::range();
  }

  v5 = 0;
  v3 = a2;
  vDSP_maxv_wrapper(this->cp_time, 1, &v5 + 1, a2);
  vDSP_minv_wrapper(this->cp_time, 1, &v5, v3);
  return *(&v5 + 1) - *&v5;
}

float stats::max(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::max();
  }

  if (!this)
  {
    stats::max();
  }

  v3 = 0.0;
  vDSP_maxv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

float stats::min(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::min();
  }

  if (!this)
  {
    stats::min();
  }

  v3 = 0.0;
  vDSP_minv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void stats::median_vdsp(stats *this, vDSP_Length *a2, unint64_t *a3)
{
  if (a3 <= 0)
  {
    stats::median_vdsp();
  }

  if (!this)
  {
    stats::median_vdsp();
  }

  if (!a2)
  {
    stats::median_vdsp();
  }

  stats::percentile(this, a2, a3, 50.0);
}

void stats::percentile(stats *this, vDSP_Length *__I, vDSP_Length __N, float a4)
{
  if (__N <= 0)
  {
    stats::percentile();
  }

  if (!this)
  {
    stats::percentile();
  }

  if (!__I)
  {
    stats::percentile();
  }

  if (a4 < 0.0 || a4 > 100.0)
  {
    stats::percentile();
  }

  v7 = __N;
  vDSP_vsorti(this->cp_time, __I, 0, __N, 1);
  v8 = v7 / 100.0 * a4 + -0.5;
  if (v8 <= 0.0)
  {
    v10 = *__I;
  }

  else
  {
    if ((v7 - 1) > v8)
    {
      v9 = (v8 - v8) * *&this->cp_time[__I[v8 + 1]] + (1.0 - (v8 - v8)) * *&this->cp_time[__I[v8]];
      return;
    }

    v10 = __I[v7 - 1];
  }

  v11 = this->cp_time[v10];
}

float stats::auc(stats *this, const float *a2, float a3)
{
  __C = 0.0;
  vDSP_sve(this->cp_time, 1, &__C, a2);
  return __C * a3;
}

float stats::meanMag(stats *this, const float *a2, vDSP_Length __N)
{
  if (__N <= 0)
  {
    stats::meanMag();
  }

  if (!this)
  {
    stats::meanMag();
  }

  __C = 0.0;
  vDSP_meamgv(this->cp_time, a2, &__C, __N);
  return __C;
}

float stats::measqv(stats *this, const float *a2, vDSP_Length __N)
{
  if (__N <= 0)
  {
    stats::measqv();
  }

  if (!this)
  {
    stats::measqv();
  }

  __C = 0.0;
  vDSP_measqv(this->cp_time, a2, &__C, __N);
  return __C;
}

float stats::meassq(stats *this, const float *a2, vDSP_Length __N)
{
  if (__N <= 0)
  {
    stats::meassq();
  }

  if (!this)
  {
    stats::meassq();
  }

  __C = 0.0;
  vDSP_mvessq(this->cp_time, a2, &__C, __N);
  return __C;
}

float stats::rmsqv(stats *this, const float *a2, vDSP_Length __N)
{
  if (__N <= 0)
  {
    stats::rmsqv();
  }

  if (!this)
  {
    stats::rmsqv();
  }

  __C = 0.0;
  vDSP_rmsqv(this->cp_time, a2, &__C, __N);
  return __C;
}

void stats::kurt(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::kurt();
  }

  v2 = this;
  if (!this)
  {
    stats::kurt();
  }

  v4 = stats::variance(this, a2, 0);
  v5 = stats::mean(v2, a2);
  if (v4 != 0.0)
  {
    v6 = v5;
    v7 = a2;
    v8 = 0.0;
    do
    {
      v9 = *v2->cp_time;
      v2 = (v2 + 4);
      v10 = (v9 - v6) * (v9 - v6);
      v8 = v8 + v10 * v10;
      --v7;
    }

    while (v7);
  }
}

stats *stats::linear_interp(stats *this, const float *a2, float *a3, int a4, int16x4_t a5)
{
  if (a4 >= 1)
  {
    a5.i32[0] = this->cp_time[0];
    v5 = (a4 + 3) & 0xFFFFFFFC;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = xmmword_23E85A6A0;
    v8 = xmmword_23E85A600;
    v9 = (a2 + 2);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, a5).u8[0])
      {
        *(v9 - 2) = *a5.i32;
      }

      if (vuzp1_s16(v11, a5).i8[2])
      {
        *(v9 - 1) = *a5.i32;
      }

      if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = *a5.i32;
        v9[1] = *a5.i32;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  if (a3 > 1)
  {
    v12 = 1;
    v13 = &a2[a4];
    do
    {
      if (a4 >= 1)
      {
        v14 = 1;
        v15 = a4;
        v16 = v13;
        do
        {
          *v16++ = *&this->cp_time[v12 - 1] + (((*&this->cp_time[v12] - *&this->cp_time[v12 - 1]) * v14++) / a4);
          --v15;
        }

        while (v15);
      }

      ++v12;
      v13 += a4;
    }

    while (v12 != a3);
  }

  return this;
}

float stats::pearsonr(stats *this, stats *a2, const float *a3)
{
  v5 = this;
  v6 = stats::mean(this, a3);
  v7 = stats::mean(a2, a3);
  v8 = stats::std(v5, a3, 1);
  v9 = stats::std(a2, a3, 1);
  if (a3 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v10 = a3;
    v11 = 0.0;
    do
    {
      v12 = *v5->cp_time;
      v5 = (v5 + 4);
      v13 = v12 - v6;
      v14 = *a2->cp_time;
      a2 = (a2 + 4);
      v11 = v11 + v13 * (v14 - v7);
      --v10;
    }

    while (v10);
  }

  return v11 / (a3 * v8 * v9);
}

void stats::median_filt(stats *this, float *a2, float *a3, int a4, int a5)
{
  if (a3 <= 0)
  {
    stats::median_filt();
  }

  if (!this)
  {
    stats::median_filt();
  }

  v6 = a2;
  if (!a2)
  {
    stats::median_filt();
  }

  v9 = a3;
  std::vector<float const*>::vector[abi:ne200100](&__p, a3);
  v75 = 0;
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = &this->cp_time[a4 - 1];
    v12 = &v75;
    if (a5)
    {
      v11 = &v75;
    }

    else
    {
      v12 = this;
    }

    v13 = v9 >> 1;
    while (1)
    {
      v14 = __p;
      v15 = v77;
      if (__p != v77)
      {
        v16 = v10 - (v9 >> 1);
        do
        {
          v17 = (this + 4 * v16);
          if (v16 >= a4)
          {
            v17 = v11;
          }

          if (v16 < 0)
          {
            v17 = v12;
          }

          *v14++ = v17;
          ++v16;
        }

        while (v14 != v15);
        v14 = __p;
        v15 = v77;
      }

      v18 = &v14[v13];
      if (&v14[v13] != v15)
      {
        break;
      }

LABEL_18:
      *v6++ = **v18;
      if (++v10 == a4)
      {
        goto LABEL_107;
      }
    }

    while (1)
    {
      v19 = v15 - v14;
      if (v19 < 2)
      {
        goto LABEL_18;
      }

      if (v19 == 3)
      {
        v57 = *v14;
        v56 = v14[1];
        v58 = *v56;
        v59 = **v14;
        v60 = *(v15 - 1);
        v61 = *v60;
        if (*v56 >= v59)
        {
          if (v61 < v58)
          {
            v14[1] = v60;
            *(v15 - 1) = v56;
            v73 = *v14;
            v72 = v14[1];
            if (*v72 < **v14)
            {
              *v14 = v72;
              v14[1] = v73;
            }
          }
        }

        else
        {
          if (v61 >= v58)
          {
            *v14 = v56;
            v14[1] = v57;
            v74 = *(v15 - 1);
            if (*v74 >= v59)
            {
              goto LABEL_18;
            }

            v14[1] = v74;
          }

          else
          {
            *v14 = v60;
          }

          *(v15 - 1) = v57;
        }

        goto LABEL_18;
      }

      if (v19 == 2)
      {
        v62 = *(v15 - 1);
        v63 = *v14;
        if (*v62 < **v14)
        {
          *v14 = v62;
          *(v15 - 1) = v63;
        }

        goto LABEL_18;
      }

      if (v19 <= 7)
      {
        while (v14 != v15 - 1)
        {
          v64 = v14++;
          if (v64 != v15 && v14 != v15)
          {
            v65 = *v64;
            v66 = **v64;
            v67 = v14;
            v68 = v64;
            v69 = v14;
            do
            {
              v70 = *v69++;
              v71 = *v70;
              if (*v70 < v66)
              {
                v66 = v71;
                v68 = v67;
              }

              v67 = v69;
            }

            while (v69 != v15);
            if (v68 != v64)
            {
              *v64 = *v68;
              *v68 = v65;
            }
          }
        }

        goto LABEL_18;
      }

      v20 = &v14[(v15 - v14) >> 4];
      v21 = v15 - 1;
      v22 = *(v15 - 1);
      v23 = *v20;
      v24 = *v14;
      v25 = **v20;
      v26 = **v14;
      v27 = *v22;
      if (v25 < v26)
      {
        break;
      }

      if (v27 < v25)
      {
        *v20 = v22;
        *v21 = v23;
        v28 = *v14;
        if (**v20 < **v14)
        {
          *v14 = *v20;
          *v20 = v28;
        }

        goto LABEL_33;
      }

      v29 = 0;
LABEL_35:
      v30 = *v14;
      v31 = **v14;
      v32 = **v20;
      if (v31 >= v32)
      {
        v33 = v15 - 1;
        while (--v33 != v14)
        {
          if (**v33 < v32)
          {
            *v14 = *v33;
            *v33 = v30;
            if (v29)
            {
              v29 = 2;
            }

            else
            {
              v29 = 1;
            }

            goto LABEL_43;
          }
        }

        v45 = v14 + 1;
        if (v31 >= **v21)
        {
          while (v45 != v21)
          {
            v46 = *v45;
            if (v31 < **v45)
            {
              *v45++ = *v21;
              *v21 = v46;
              goto LABEL_75;
            }

            ++v45;
          }

          goto LABEL_18;
        }

LABEL_75:
        if (v45 == v21)
        {
          goto LABEL_18;
        }

        while (1)
        {
          v50 = **v14;
          do
          {
            v52 = *v45++;
            v51 = v52;
          }

          while (v50 >= *v52);
          v53 = v45 - 1;
          do
          {
            v55 = *--v21;
            v54 = v55;
          }

          while (v50 < *v55);
          if (v53 >= v21)
          {
            break;
          }

          *v53 = v54;
          *v21 = v51;
        }

        v14 = v45 - 1;
        if (v53 > v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v33 = v15 - 1;
LABEL_43:
        v34 = v14 + 1;
        if (v14 + 1 >= v33)
        {
          v39 = v14 + 1;
        }

        else
        {
          v35 = v14 + 1;
          while (1)
          {
            v36 = **v20;
            do
            {
              v38 = *v35++;
              v37 = v38;
            }

            while (*v38 < v36);
            v39 = v35 - 1;
            do
            {
              v41 = *--v33;
              v40 = v41;
            }

            while (*v41 >= v36);
            if (v39 >= v33)
            {
              break;
            }

            *v39 = v40;
            *v33 = v37;
            ++v29;
            if (v39 == v20)
            {
              v20 = v33;
            }
          }
        }

        if (v39 != v20)
        {
          v42 = *v39;
          if (**v20 < **v39)
          {
            *v39 = *v20;
            *v20 = v42;
            ++v29;
          }
        }

        if (v39 == v18)
        {
          goto LABEL_18;
        }

        if (!v29)
        {
          if (v39 <= v18)
          {
            v47 = v39 + 1;
            while (v47 != v15)
            {
              v48 = **v47;
              v49 = **(v47++ - 1);
              if (v48 < v49)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            while (v34 != v39)
            {
              v43 = **v34;
              v44 = **(v34++ - 1);
              if (v43 < v44)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_18;
        }

LABEL_59:
        if (v39 <= v18)
        {
          v14 = v39 + 1;
        }

        else
        {
          v15 = v39;
        }
      }

      if (v15 == v18)
      {
        goto LABEL_18;
      }
    }

    if (v27 >= v25)
    {
      *v14 = v23;
      *v20 = v24;
      if (**v21 >= v26)
      {
LABEL_33:
        v29 = 1;
        goto LABEL_35;
      }

      *v20 = *v21;
    }

    else
    {
      *v14 = v22;
    }

    *v21 = v24;
    goto LABEL_33;
  }

LABEL_107:
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void *std::vector<float const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23E85237C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float const*>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t remove_nan(_DWORD *a1, uint64_t a2, float a3)
{
  v3 = 0;
  if (a3 > 0.0)
  {
    v4 = 1;
    do
    {
      *(a2 + 4 * v3++) = *a1;
      v5 = v4;
      ++a1;
      ++v4;
    }

    while (v5 < a3);
  }

  return v3;
}

uint64_t remove_nanD(void *a1, uint64_t a2, float a3)
{
  v3 = 0;
  if (a3 > 0.0)
  {
    v4 = 1;
    do
    {
      *(a2 + 8 * v3++) = *a1;
      v5 = v4;
      ++a1;
      ++v4;
    }

    while (v5 < a3);
  }

  return v3;
}

void vDSP_maxv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_maxv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_maxvD_wrapper(const double *a1, vDSP_Stride a2, double *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_maxvD(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_minv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minvD_wrapper(const double *a1, vDSP_Stride a2, double *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_minvD(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_maxvi_wrapper(const float *a1, vDSP_Stride a2, float *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_maxvi(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_maxviD_wrapper(const double *a1, vDSP_Stride a2, double *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_maxviD(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minvi_wrapper(const float *a1, vDSP_Stride a2, float *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_minvi(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minviD_wrapper(const double *a1, vDSP_Stride a2, double *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_minviD(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_meanv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_meanv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_meanvD_wrapper(const double *a1, vDSP_Stride a2, double *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_meanvD(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

uint64_t reverse_array(uint64_t result, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = a3;
    v4 = a2;
    do
    {
      v5 = *(result + 8 * v4);
      *(result + 8 * v4) = *(result + 8 * v3);
      *(result + 8 * v3) = v5;
      ++v4;
      --v3;
    }

    while (v4 < v3);
  }

  return result;
}

float *vdsp_maxv_cross(float *result, uint64_t a2, float *a3, uint64_t a4)
{
  *a3 = -INFINITY;
  if (a4)
  {
    v4 = -INFINITY;
    do
    {
      v5 = *result;
      if (v4 < *result)
      {
        *a3 = v5;
        v4 = v5;
      }

      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *vdsp_maxvD_cross(double *result, uint64_t a2, double *a3, uint64_t a4)
{
  *a3 = -INFINITY;
  if (a4)
  {
    v4 = -INFINITY;
    do
    {
      v5 = *result;
      if (v4 < *result)
      {
        *a3 = v5;
        v4 = v5;
      }

      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t vdsp_maxvi_cross(uint64_t result, uint64_t a2, float *a3, unint64_t *a4, uint64_t a5)
{
  *a3 = -INFINITY;
  if (a5)
  {
    v5 = 0;
    v6 = -INFINITY;
    do
    {
      v7 = *(result + 4 * v5);
      if (v6 < v7)
      {
        *a3 = v7;
        *a4 = v5;
        v6 = v7;
      }

      v5 += a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t vdsp_maxviD_cross(uint64_t result, uint64_t a2, double *a3, unint64_t *a4, uint64_t a5)
{
  *a3 = -INFINITY;
  if (a5)
  {
    v5 = 0;
    v6 = -INFINITY;
    do
    {
      v7 = *(result + 8 * v5);
      if (v6 < v7)
      {
        *a3 = v7;
        *a4 = v5;
        v6 = v7;
      }

      v5 += a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

float *vdsp_minv_cross(float *result, uint64_t a2, float *a3, uint64_t a4)
{
  *a3 = INFINITY;
  if (a4)
  {
    v4 = INFINITY;
    do
    {
      v5 = *result;
      if (v4 > *result)
      {
        *a3 = v5;
        v4 = v5;
      }

      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *vdsp_minvD_cross(double *result, uint64_t a2, double *a3, uint64_t a4)
{
  *a3 = INFINITY;
  if (a4)
  {
    v4 = INFINITY;
    do
    {
      v5 = *result;
      if (v4 > *result)
      {
        *a3 = v5;
        v4 = v5;
      }

      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t vdsp_minvi_cross(uint64_t result, uint64_t a2, float *a3, unint64_t *a4, uint64_t a5)
{
  *a3 = INFINITY;
  if (a5)
  {
    v5 = 0;
    v6 = INFINITY;
    do
    {
      v7 = *(result + 4 * v5);
      if (v6 > v7)
      {
        *a3 = v7;
        *a4 = v5;
        v6 = v7;
      }

      v5 += a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t vdsp_minviD_cross(uint64_t result, uint64_t a2, double *a3, unint64_t *a4, uint64_t a5)
{
  *a3 = INFINITY;
  if (a5)
  {
    v5 = 0;
    v6 = INFINITY;
    do
    {
      v7 = *(result + 8 * v5);
      if (v6 > v7)
      {
        *a3 = v7;
        *a4 = v5;
        v6 = v7;
      }

      v5 += a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

float *vdsp_meanv_cross(float *result, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = *result + v4;
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

double *vdsp_meanvD_cross(double *result, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = *result + v4;
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

float *vdsp_sve_cross(float *result, uint64_t a2, float *a3, uint64_t a4)
{
  *a3 = 0.0;
  if (a4)
  {
    v4 = 0.0;
    do
    {
      v4 = *result + v4;
      *a3 = v4;
      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *vdsp_sveD_cross(double *result, uint64_t a2, double *a3, uint64_t a4)
{
  *a3 = 0.0;
  if (a4)
  {
    v4 = 0.0;
    do
    {
      v4 = *result + v4;
      *a3 = v4;
      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

float *vdsp_svesq_cross(float *result, uint64_t a2, float *a3, uint64_t a4)
{
  *a3 = 0.0;
  if (a4)
  {
    v4 = 0.0;
    do
    {
      v4 = v4 + (*result * *result);
      *a3 = v4;
      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *vdsp_svesqD_cross(double *result, uint64_t a2, double *a3, uint64_t a4)
{
  *a3 = 0.0;
  if (a4)
  {
    v4 = 0.0;
    do
    {
      v4 = v4 + *result * *result;
      *a3 = v4;
      result += a2;
      --a4;
    }

    while (a4);
  }

  return result;
}

float *vdsp_measqv_cross(float *result, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + (*result * *result);
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

double *vdsp_measqvD_cross(double *result, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + *result * *result;
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

float *vdsp_meamgv_cross(float *result, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + fabsf(*result);
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

double *vdsp_meamgvD_cross(double *result, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + fabs(*result);
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

float *vdsp_mvessq_cross(float *result, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + (*result * fabsf(*result));
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = -INFINITY;
  }

  *a3 = v6;
  return result;
}

double *vdsp_mvessqD_cross(double *result, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + *result * fabs(*result);
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = v4 / a4;
  }

  else
  {
    v6 = -INFINITY;
  }

  *a3 = v6;
  return result;
}

float *vdsp_rmsqv_cross(float *result, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + (*result * *result);
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = sqrtf(v4 / a4);
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

double *vdsp_rmsqvD_cross(double *result, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    *a3 = 0.0;
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + *result * *result;
      *a3 = v4;
      result += a2;
      --v5;
    }

    while (v5);
    v6 = sqrt(v4 / a4);
  }

  else
  {
    v6 = NAN;
  }

  *a3 = v6;
  return result;
}

int64x2_t *vdsp_vsorti_cross(const float *a1, int64x2_t *a2, unint64_t *a3, unint64_t a4, int a5)
{
  v6 = a4;
  v21 = a1;
  v8 = (a2 + 8 * a4);
  if (a4)
  {
    v9 = 0;
    v10 = (a4 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = xmmword_23E85A600;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v11, v12));
      if (v14.i8[0])
      {
        a2[v9 / 2].i64[0] = v9;
      }

      if (v14.i8[4])
      {
        a2[v9 / 2].i64[1] = v9 + 1;
      }

      v9 += 2;
      v12 = vaddq_s64(v12, v13);
    }

    while (v10 - ((a4 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v9);
  }

  v22 = &v21;
  v15 = 126 - 2 * __clz(a4);
  if (a4)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(a2, v8, &v22, v16, 1);
  if (a5 < 0 && v6 >= 2)
  {
    v18 = 0;
    v19 = (v6 - 1);
    do
    {
      v20 = a2->u64[v18];
      a2->i64[v18] = a2->i64[v19];
      a2->i64[v19] = v20;
      ++v18;
      --v19;
    }

    while (v18 < v19);
  }

  return result;
}

int64x2_t *vdsp_vsortiD_cross(const double *a1, int64x2_t *a2, unint64_t *a3, unint64_t a4, int a5)
{
  v6 = a4;
  v21 = a1;
  v8 = (a2 + 8 * a4);
  if (a4)
  {
    v9 = 0;
    v10 = (a4 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = xmmword_23E85A600;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v11, v12));
      if (v14.i8[0])
      {
        a2[v9 / 2].i64[0] = v9;
      }

      if (v14.i8[4])
      {
        a2[v9 / 2].i64[1] = v9 + 1;
      }

      v9 += 2;
      v12 = vaddq_s64(v12, v13);
    }

    while (v10 - ((a4 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v9);
  }

  v22 = &v21;
  v15 = 126 - 2 * __clz(a4);
  if (a4)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(a2, v8, &v22, v16, 1);
  if (a5 < 0 && v6 >= 2)
  {
    v18 = 0;
    v19 = (v6 - 1);
    do
    {
      v20 = a2->u64[v18];
      a2->i64[v18] = a2->i64[v19];
      a2->i64[v19] = v20;
      ++v18;
      --v19;
    }

    while (v18 < v19);
  }

  return result;
}

float *vdsp_vsadd_cross(float *result, uint64_t a2, const float *a3, float *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result + *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

double *vdsp_vsaddD_cross(double *result, uint64_t a2, const double *a3, double *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result + *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

float *vdsp_vsmul_cross(float *result, uint64_t a2, const float *a3, float *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result * *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

double *vdsp_vsmulD_cross(double *result, uint64_t a2, const double *a3, double *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result * *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

float *vdsp_vsdiv_cross(float *result, uint64_t a2, const float *a3, float *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result / *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

double *vdsp_vsdivD_cross(double *result, uint64_t a2, const double *a3, double *a4, uint64_t a5, uint64_t a6)
{
  for (; a6; --a6)
  {
    *a4 = *result / *a3;
    a4 += a5;
    result += a2;
  }

  return result;
}

float *vdsp_vabs_cross(float *result, uint64_t a2, float *a3, uint64_t a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a3 = fabsf(*result);
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vabsD_cross(double *result, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a3 = fabs(*result);
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_vsma_cross(float *result, uint64_t a2, const float *a3, const float *a4, uint64_t a5, float *a6, uint64_t a7, uint64_t a8)
{
  for (; a8; --a8)
  {
    *a6 = *a4 + (*result * *a3);
    a6 += a7;
    a4 += a5;
    result += a2;
  }

  return result;
}

double *vdsp_vsmaD_cross(double *result, uint64_t a2, const double *a3, const double *a4, uint64_t a5, double *a6, uint64_t a7, uint64_t a8)
{
  for (; a8; --a8)
  {
    *a6 = *a4 + *result * *a3;
    a6 += a7;
    a4 += a5;
    result += a2;
  }

  return result;
}

float *vdsp_vsmsa_cross(float *result, uint64_t a2, const float *a3, const float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a4 + (*result * *a3);
    a5 += a6;
    result += a2;
  }

  return result;
}

double *vdsp_vsmsaD_cross(double *result, uint64_t a2, const double *a3, const double *a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a4 + *result * *a3;
    a5 += a6;
    result += a2;
  }

  return result;
}

float *vdsp_vadd_cross(float *result, uint64_t a2, float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *result + *a3;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vaddD_cross(double *result, uint64_t a2, double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *result + *a3;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_vsub_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a3 - *result;
    a5 += a6;
    result += a2;
    a3 += a4;
  }

  return result;
}

double *vdsp_vsubD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a3 - *result;
    a5 += a6;
    result += a2;
    a3 += a4;
  }

  return result;
}

float *vdsp_vmul_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *result * *a3;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vmulD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *result * *a3;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_vdiv_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a3 / *result;
    a5 += a6;
    result += a2;
    a3 += a4;
  }

  return result;
}

double *vdsp_vdivD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    *a5 = *a3 / *result;
    a5 += a6;
    result += a2;
    a3 += a4;
  }

  return result;
}

float *vdsp_vgen_cross(float *result, const float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      *a3 = *result + (((*a2 - *result) * i) / (a5 - 1));
      a3 += a4;
    }
  }

  return result;
}

double *vdsp_vgenD_cross(double *result, const double *a2, double *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      *a3 = *result + (*a2 - *result) * i / (a5 - 1);
      a3 += a4;
    }
  }

  return result;
}

float *vdsp_vsq_cross(float *result, uint64_t a2, float *a3, uint64_t a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a3 = *result * *result;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vsqD_cross(double *result, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a3 = *result * *result;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_dotpr_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t a6)
{
  *a5 = 0.0;
  if (a6)
  {
    v6 = 0.0;
    do
    {
      v6 = v6 + (*result * *a3);
      *a5 = v6;
      a3 += a4;
      result += a2;
      --a6;
    }

    while (a6);
  }

  return result;
}

double *vdsp_dotprD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, double *a5, uint64_t a6)
{
  *a5 = 0.0;
  if (a6)
  {
    v6 = 0.0;
    do
    {
      v6 = v6 + *result * *a3;
      *a5 = v6;
      a3 += a4;
      result += a2;
      --a6;
    }

    while (a6);
  }

  return result;
}

float *vdsp_vclip_cross(float *result, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    v7 = *result;
    v8 = *a3;
    if (*result >= *a3 && (v8 = *a4, v7 <= *a4))
    {
      *a5 = v7;
    }

    else
    {
      *a5 = v8;
    }

    a5 += a6;
    result += a2;
  }

  return result;
}

double *vdsp_vclipD_cross(double *result, uint64_t a2, double *a3, double *a4, double *a5, uint64_t a6, uint64_t a7)
{
  for (; a7; --a7)
  {
    v7 = *result;
    v8 = *a3;
    if (*result >= *a3 && (v8 = *a4, v7 <= *a4))
    {
      *a5 = v7;
    }

    else
    {
      *a5 = v8;
    }

    a5 += a6;
    result += a2;
  }

  return result;
}

_DWORD *vdsp_vclr_cross(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = vdupq_n_s64(a3 - 1);
    v4 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v5 = xmmword_23E85A6A0;
    v6 = xmmword_23E85A600;
    v7 = vdupq_n_s64(4uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v3, v6));
      if (vuzp1_s16(v8, *v3.i8).u8[0])
      {
        *result = 0;
      }

      if (vuzp1_s16(v8, *&v3).i8[2])
      {
        result[a2] = 0;
      }

      if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v5))).i32[1])
      {
        result[2 * a2] = 0;
        result[3 * a2] = 0;
      }

      v5 = vaddq_s64(v5, v7);
      v6 = vaddq_s64(v6, v7);
      result += 4 * a2;
      v4 -= 4;
    }

    while (v4);
  }

  return result;
}

void *vdsp_vclrD_cross(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a3 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_23E85A600;
    v6 = vdupq_n_s64(2uLL);
    do
    {
      v7 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v7.i8[0])
      {
        *result = 0;
      }

      if (v7.i8[4])
      {
        result[a2] = 0;
      }

      v5 = vaddq_s64(v5, v6);
      result += 2 * a2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

float vdsp_mmov_cross(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  for (i = a4 * a3; i; --i)
  {
    v5 = *a1++;
    result = v5;
    *a2++ = v5;
  }

  return result;
}

double vdsp_mmovD_cross(double *a1, double *a2, uint64_t a3, uint64_t a4)
{
  for (i = a4 * a3; i; --i)
  {
    v5 = *a1++;
    result = v5;
    *a2++ = v5;
  }

  return result;
}

float *vdsp_conv_cross(float *result, uint64_t a2, float *a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7)
  {
    v8 = 0;
    v9 = 4 * a2;
    do
    {
      v10 = 0.0;
      if (a8)
      {
        v11 = a3;
        v12 = result;
        v13 = a8;
        do
        {
          v10 = v10 + (*v12 * *v11);
          v12 = (v12 + v9);
          v11 += a4;
          --v13;
        }

        while (v13);
      }

      a5[v8 * a6] = v10;
      ++v8;
      result = (result + v9);
    }

    while (v8 != a7);
  }

  return result;
}

double *vdsp_convD_cross(double *result, uint64_t a2, double *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7)
  {
    v8 = 0;
    v9 = 8 * a2;
    do
    {
      v10 = 0.0;
      if (a8)
      {
        v11 = a3;
        v12 = result;
        v13 = a8;
        do
        {
          v10 = v10 + *v12 * *v11;
          v12 = (v12 + v9);
          v11 += a4;
          --v13;
        }

        while (v13);
      }

      a5[v8 * a6] = v10;
      ++v8;
      result = (result + v9);
    }

    while (v8 != a7);
  }

  return result;
}

float *vdsp_vma_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, const float *a5, uint64_t a6, float *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = *a5 + (*result * *a3);
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vmaD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, const double *a5, uint64_t a6, double *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = *a5 + *result * *a3;
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_vmsb_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, const float *a5, uint64_t a6, float *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = -(*a5 - (*result * *a3));
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vmsbD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, const double *a5, uint64_t a6, double *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = -(*a5 - *result * *a3);
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_vam_cross(float *result, uint64_t a2, const float *a3, uint64_t a4, const float *a5, uint64_t a6, float *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = (*result + *a3) * *a5;
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

double *vdsp_vamD_cross(double *result, uint64_t a2, const double *a3, uint64_t a4, const double *a5, uint64_t a6, double *a7, uint64_t a8, unint64_t a9)
{
  for (i = a9; i; --i)
  {
    *a7 = (*result + *a3) * *a5;
    a7 += a8;
    a5 += a6;
    a3 += a4;
    result += a2;
  }

  return result;
}

float *vdsp_normalize_cross(float *result, uint64_t a2, float *a3, uint64_t a4, float *a5, float *a6, unint64_t a7)
{
  if (a7)
  {
    *a5 = 0.0;
    v7 = 4 * a2;
    v8 = 0.0;
    v9 = result;
    v10 = a7;
    do
    {
      v8 = *v9 + v8;
      *a5 = v8;
      v9 = (v9 + v7);
      --v10;
    }

    while (v10);
    *a5 = v8 / a7;
    *a6 = 0.0;
    v11 = 0.0;
    v12 = result;
    v13 = a7;
    do
    {
      v11 = v11 + ((*v12 - *a5) * (*v12 - *a5));
      *a6 = v11;
      v12 = (v12 + v7);
      --v13;
    }

    while (v13);
    *a6 = sqrtf(v11 / a7);
    if (a3)
    {
      do
      {
        *a3 = (*result - *a5) / *a6;
        a3 += a4;
        result = (result + v7);
        --a7;
      }

      while (a7);
    }
  }

  return result;
}

double *vdsp_normalizeD_cross(double *result, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6, unint64_t a7)
{
  if (a7)
  {
    *a5 = 0.0;
    v7 = 8 * a2;
    v8 = 0.0;
    v9 = result;
    v10 = a7;
    do
    {
      v8 = *v9 + v8;
      *a5 = v8;
      v9 = (v9 + v7);
      --v10;
    }

    while (v10);
    *a5 = v8 / a7;
    *a6 = 0.0;
    v11 = 0.0;
    v12 = result;
    v13 = a7;
    do
    {
      v11 = v11 + (*v12 - *a5) * (*v12 - *a5);
      *a6 = v11;
      v12 = (v12 + v7);
      --v13;
    }

    while (v13);
    *a6 = sqrt(v11 / a7);
    if (a3)
    {
      do
      {
        *a3 = (*result - *a5) / *a6;
        a3 += a4;
        result = (result + v7);
        --a7;
      }

      while (a7);
    }
  }

  return result;
}

void vvexpf_cross(float *a1, float *a2, const int *a3)
{
  v3 = *a3;
  if (v3)
  {
    do
    {
      v6 = *a2++;
      *a1++ = expf(v6);
      --v3;
    }

    while (v3);
  }
}

void vvexpfD_cross(long double *a1, long double *a2, const int *a3)
{
  v3 = *a3;
  if (v3)
  {
    do
    {
      v6 = *a2++;
      *a1++ = exp(v6);
      --v3;
    }

    while (v3);
  }
}

int64x2_t *std::__introsort<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(int64x2_t *result, int64x2_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v74 = a2[-1].i64[1];
        v60 = v9->i64[0];
        if (*(**a3 + 4 * v74) >= *(**a3 + (v9->i64[0] << 32 >> 30)))
        {
          return result;
        }

        v9->i64[0] = v74;
LABEL_101:
        a2[-1].i64[1] = v60;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v60 = v9->i64[0];
      v61 = v9->i64[1];
      v62 = **a3;
      v63 = *(v62 + 4 * v61);
      v64 = *(v62 + (v9->i64[0] << 32 >> 30));
      v65 = a2[-1].i64[1];
      v66 = *(v62 + 4 * v65);
      if (v63 < v64)
      {
        if (v66 >= v63)
        {
          v9->i64[0] = v61;
          v9->i64[1] = v60;
          v75 = a2[-1].i64[1];
          if (*(v62 + 4 * v75) >= v64)
          {
            return result;
          }

          v9->i64[1] = v75;
        }

        else
        {
          v9->i64[0] = v65;
        }

        goto LABEL_101;
      }

      if (v66 >= v63)
      {
        return result;
      }

      v9->i64[1] = v65;
      a2[-1].i64[1] = v61;
      v73 = v9->i64[0];
      v69 = v9->i64[1];
      v71 = *(v62 + 4 * v69);
LABEL_94:
      if (v71 < *(v62 + 4 * v73))
      {
        v9->i64[0] = v69;
        v9->i64[1] = v73;
      }

      return result;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(v9->i64, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      v67 = a2[-1].i64[1];
      v68 = v9[1].i64[1];
      v62 = **a3;
      if (*(v62 + 4 * v67) >= *(v62 + 4 * v68))
      {
        return result;
      }

      v9[1].i64[1] = v67;
      a2[-1].i64[1] = v68;
      v70 = v9[1].i64[0];
      v69 = v9[1].i64[1];
      v71 = *(v62 + 4 * v69);
      if (v71 >= *(v62 + 4 * v70))
      {
        return result;
      }

      v9[1].i64[0] = v69;
      v9[1].i64[1] = v70;
      v72 = v9->i64[1];
      if (v71 >= *(v62 + 4 * v72))
      {
        return result;
      }

      v9->i64[1] = v69;
      v9[1].i64[0] = v72;
      v73 = v9->i64[0];
      goto LABEL_94;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, a2->i64, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9->i64[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = a2[-1].i64[1];
    v17 = *(v15 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = v9->i64[0];
      v20 = *(v15 + (*v13 << 32 >> 30));
      v21 = *(v15 + (v9->i64[0] << 32 >> 30));
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          a2[-1].i64[1] = v18;
          v26 = v9->i64[0];
          if (*(v15 + (*v13 << 32 >> 30)) < *(v15 + (v9->i64[0] << 32 >> 30)))
          {
            v9->i64[0] = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 >= v20)
        {
          v9->i64[0] = v18;
          *v13 = v19;
          v28 = a2[-1].i64[1];
          if (*(v15 + 4 * v28) >= v21)
          {
            goto LABEL_30;
          }

          *v13 = v28;
        }

        else
        {
          v9->i64[0] = v16;
        }

        a2[-1].i64[1] = v19;
      }

LABEL_30:
      v29 = v13 - 1;
      v30 = *(v13 - 1);
      v31 = v9->i64[1];
      v32 = *(v15 + 4 * v30);
      v33 = *(v15 + 4 * v31);
      v34 = a2[-1].i64[0];
      v35 = *(v15 + 4 * v34);
      if (v32 >= v33)
      {
        if (v35 < v32)
        {
          *v29 = v34;
          a2[-1].i64[0] = v30;
          v36 = v9->i64[1];
          if (*(v15 + (*v29 << 32 >> 30)) < *(v15 + 4 * v36))
          {
            v9->i64[1] = *v29;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v35 >= v32)
        {
          v9->i64[1] = v30;
          *v29 = v31;
          v38 = a2[-1].i64[0];
          if (*(v15 + 4 * v38) >= v33)
          {
            goto LABEL_44;
          }

          *v29 = v38;
        }

        else
        {
          v9->i64[1] = v34;
        }

        a2[-1].i64[0] = v31;
      }

LABEL_44:
      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[1].i64[0];
      v43 = *(v15 + 4 * v41);
      v44 = *(v15 + 4 * v42);
      v45 = a2[-2].i64[1];
      v46 = *(v15 + 4 * v45);
      if (v43 >= v44)
      {
        if (v46 < v43)
        {
          *v39 = v45;
          a2[-2].i64[1] = v40;
          v47 = v9[1].i64[0];
          if (*(v15 + (*v39 << 32 >> 30)) < *(v15 + 4 * v47))
          {
            v9[1].i64[0] = *v39;
            *v39 = v47;
          }
        }
      }

      else
      {
        if (v46 >= v43)
        {
          v9[1].i64[0] = v40;
          *v39 = v42;
          v48 = a2[-2].i64[1];
          if (*(v15 + 4 * v48) >= v44)
          {
            goto LABEL_53;
          }

          *v39 = v48;
        }

        else
        {
          v9[1].i64[0] = v45;
        }

        a2[-2].i64[1] = v42;
      }

LABEL_53:
      v49 = *v14;
      v50 = *v29;
      v51 = *(v15 + (*v14 << 32 >> 30));
      v52 = *(v15 + (*v29 << 32 >> 30));
      v53 = *v39;
      v54 = *(v15 + (*v39 << 32 >> 30));
      if (v51 >= v52)
      {
        if (v54 >= v51)
        {
          goto LABEL_60;
        }

        *v14 = v53;
        *v39 = v49;
        v39 = v14;
        v49 = v50;
        if (v54 >= v52)
        {
          v49 = v53;
LABEL_60:
          v55 = v9->i64[0];
          v9->i64[0] = v49;
          *v14 = v55;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      else if (v54 >= v51)
      {
        *v29 = v49;
        *v14 = v50;
        v29 = v14;
        v49 = v53;
        if (v54 >= v52)
        {
          v49 = v50;
          goto LABEL_60;
        }
      }

      *v29 = v53;
      *v39 = v50;
      goto LABEL_60;
    }

    v22 = v9->i64[0];
    v23 = *v13;
    v24 = *(v15 + (v9->i64[0] << 32 >> 30));
    v25 = *(v15 + (*v14 << 32 >> 30));
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      v9->i64[0] = v23;
      v37 = a2[-1].i64[1];
      if (*(v15 + 4 * v37) < v25)
      {
        v9->i64[0] = v37;
LABEL_38:
        a2[-1].i64[1] = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    v9->i64[0] = v16;
    a2[-1].i64[1] = v22;
    v27 = *v14;
    if (*(v15 + (v9->i64[0] << 32 >> 30)) >= *(v15 + (*v14 << 32 >> 30)))
    {
      goto LABEL_39;
    }

    *v14 = v9->i64[0];
    v9->i64[0] = v27;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    v56 = vshrq_n_s64(vshlq_n_s64(*(v9 - 8), 0x20uLL), 0x1EuLL);
    if (*(v15 + v56.i64[0]) >= *(v15 + v56.i64[1]))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(v9->i64, a2->i64, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v57 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(v9->i64, a2->i64, a3);
    if ((v58 & 1) == 0)
    {
      goto LABEL_67;
    }

    v59 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, v57, a3);
    v9 = (v57 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v57 + 1, a2->i64, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v57;
      if (v59)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v59)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(v8, v57, a3, -v11, a5 & 1);
      v9 = (v57 + 1);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(v9->i64, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a5;
  v8 = *a2 << 32 >> 30;
  v9 = *(v7 + v8);
  v10 = *result << 32 >> 30;
  v11 = *(v7 + v10);
  v12 = *a3;
  v13 = *(v7 + (*a3 << 32 >> 30));
  if (v9 >= v11)
  {
    if (v13 >= v9)
    {
      v10 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v5;
      v14 = *result;
      v10 = v8;
      if (*(v7 + (*a2 << 32 >> 30)) < *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v14;
        v5 = *a3;
        v10 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v13 >= v9)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(v7 + (*a3 << 32 >> 30)) >= v11)
      {
        v10 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v12;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(v7 + (*a4 << 32 >> 30)) < *(v7 + v10))
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a2;
    if (*(v7 + (*a3 << 32 >> 30)) < *(v7 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(v7 + (*a2 << 32 >> 30)) < *(v7 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 8) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 8);
            v10 -= 8;
            if (v9 >= *(v5 + 4 * v8))
            {
              v11 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 4 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(v4 + (*a1 << 32 >> 30));
  if (v5 >= *(v4 + (*(a2 - 1) << 32 >> 30)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + (*v6 << 32 >> 30)));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = **a3;
  v6 = *(v5 + (*a1 << 32 >> 30));
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = &a1[v3];
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v7;
      do
      {
        v15 = v13[1];
        ++v13;
        v7 = v15;
      }

      while (*(v5 + 4 * v15) < v6);
      do
      {
        v16 = *--v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) >= v6);
    }

    while (v13 < v14);
    v9 = v13 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 4 * v17);
        v19 = *(v11 + (*a1 << 32 >> 30));
        v20 = *(a2 - 1);
        v21 = *(v11 + 4 * v20);
        if (v18 < v19)
        {
          if (v21 < v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 4 * v41) < v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 >= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 4 * v12);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 4 * v9) >= *(v11 + 4 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 4 * v12);
        if (v14 >= *(v11 + 4 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 >= *(v11 + 4 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 < *(v11 + 4 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 4 * v7) < *(**a3 + (*a1 << 32 >> 30)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 4 * v24);
  v28 = *(v26 + (*a1 << 32 >> 30));
  v29 = *(v26 + 4 * v22);
  if (v27 < v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 >= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 >= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 < v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 < v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 30));
    if (v37 < *(v26 + 4 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 >= *(v26 + 4 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

int64x2_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,unsigned long *>(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, uint64_t **a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1->i64[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = v12->i64[0];
        if (*(**a4 + (v12->i64[0] << 32 >> 30)) < *(**a4 + (a1->i64[0] << 32 >> 30)))
        {
          v12->i64[0] = a1->i64[0];
          a1->i64[0] = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8, a1->i64);
        }

        v12 = (v12 + 8);
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = (a2 - 8);
      do
      {
        v15 = a1->i64[0];
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          v16->i64[0] = v15;
        }

        else
        {
          v16->i64[0] = v14->i64[0];
          v14->i64[0] = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, &v16->i64[1], a4, (&v16->u64[1] - a1) >> 3);
        }

        v14 = (v14 - 8);
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3)
      {
        v10 = vshrq_n_s64(vshlq_n_s64(*v7, 0x20uLL), 0x1EuLL);
        if (*(v9 + v10.i64[0]) < *(v9 + v10.i64[1]))
        {
          v7 = (v7 + 8);
          v6 = v8;
        }
      }

      v11 = v7->i64[0];
      v12 = *a4;
      v13 = *(v9 + (*a4 << 32 >> 30));
      if (*(v9 + (v7->i64[0] << 32 >> 30)) >= v13)
      {
        do
        {
          v14 = v7;
          *a4 = v11;
          if (v4 < v6)
          {
            break;
          }

          v15 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v16 = v15 + 2;
          if (v16 < a3)
          {
            v17 = vshrq_n_s64(vshlq_n_s64(*v7, 0x20uLL), 0x1EuLL);
            if (*(v9 + v17.i64[0]) < *(v9 + v17.i64[1]))
            {
              v7 = (v7 + 8);
              v6 = v16;
            }
          }

          v11 = v7->i64[0];
          a4 = v14;
        }

        while (*(v9 + (v7->i64[0] << 32 >> 30)) >= v13);
        *v14 = v12;
      }
    }
  }

  return result;
}

int64x2_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(int64x2_t *result, void **a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result->i8[8 * v3];
    result = (v6 + 8);
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v9 = vshrq_n_s64(vshlq_n_s64(*result, 0x20uLL), 0x1EuLL);
      if (*(*v4 + v9.i64[0]) < *(*v4 + v9.i64[1]))
      {
        result = (v6 + 16);
        v3 = v8;
      }
    }

    *v5 = result->i64[0];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<float>(float const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = **a3;
    v11 = *(v10 + 4 * v9);
    if (*(v10 + ((*v5 << 32) >> 30)) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + ((*v5 << 32) >> 30)) < v11);
      *v12 = v8;
    }
  }

  return result;
}

int64x2_t *std::__introsort<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(int64x2_t *result, int64x2_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v74 = a2[-1].i64[1];
        v60 = v9->i64[0];
        if (*(**a3 + 8 * v74) >= *(**a3 + (v9->i64[0] << 32 >> 29)))
        {
          return result;
        }

        v9->i64[0] = v74;
LABEL_101:
        a2[-1].i64[1] = v60;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v60 = v9->i64[0];
      v61 = v9->i64[1];
      v62 = **a3;
      v63 = *(v62 + 8 * v61);
      v64 = *(v62 + (v9->i64[0] << 32 >> 29));
      v65 = a2[-1].i64[1];
      v66 = *(v62 + 8 * v65);
      if (v63 < v64)
      {
        if (v66 >= v63)
        {
          v9->i64[0] = v61;
          v9->i64[1] = v60;
          v75 = a2[-1].i64[1];
          if (*(v62 + 8 * v75) >= v64)
          {
            return result;
          }

          v9->i64[1] = v75;
        }

        else
        {
          v9->i64[0] = v65;
        }

        goto LABEL_101;
      }

      if (v66 >= v63)
      {
        return result;
      }

      v9->i64[1] = v65;
      a2[-1].i64[1] = v61;
      v73 = v9->i64[0];
      v69 = v9->i64[1];
      v71 = *(v62 + 8 * v69);
LABEL_94:
      if (v71 < *(v62 + 8 * v73))
      {
        v9->i64[0] = v69;
        v9->i64[1] = v73;
      }

      return result;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(v9->i64, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      v67 = a2[-1].i64[1];
      v68 = v9[1].i64[1];
      v62 = **a3;
      if (*(v62 + 8 * v67) >= *(v62 + 8 * v68))
      {
        return result;
      }

      v9[1].i64[1] = v67;
      a2[-1].i64[1] = v68;
      v70 = v9[1].i64[0];
      v69 = v9[1].i64[1];
      v71 = *(v62 + 8 * v69);
      if (v71 >= *(v62 + 8 * v70))
      {
        return result;
      }

      v9[1].i64[0] = v69;
      v9[1].i64[1] = v70;
      v72 = v9->i64[1];
      if (v71 >= *(v62 + 8 * v72))
      {
        return result;
      }

      v9->i64[1] = v69;
      v9[1].i64[0] = v72;
      v73 = v9->i64[0];
      goto LABEL_94;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, a2->i64, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9->i64[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = a2[-1].i64[1];
    v17 = *(v15 + 8 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = v9->i64[0];
      v20 = *(v15 + (*v13 << 32 >> 29));
      v21 = *(v15 + (v9->i64[0] << 32 >> 29));
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          a2[-1].i64[1] = v18;
          v26 = v9->i64[0];
          if (*(v15 + (*v13 << 32 >> 29)) < *(v15 + (v9->i64[0] << 32 >> 29)))
          {
            v9->i64[0] = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 >= v20)
        {
          v9->i64[0] = v18;
          *v13 = v19;
          v28 = a2[-1].i64[1];
          if (*(v15 + 8 * v28) >= v21)
          {
            goto LABEL_30;
          }

          *v13 = v28;
        }

        else
        {
          v9->i64[0] = v16;
        }

        a2[-1].i64[1] = v19;
      }

LABEL_30:
      v29 = v13 - 1;
      v30 = *(v13 - 1);
      v31 = v9->i64[1];
      v32 = *(v15 + 8 * v30);
      v33 = *(v15 + 8 * v31);
      v34 = a2[-1].i64[0];
      v35 = *(v15 + 8 * v34);
      if (v32 >= v33)
      {
        if (v35 < v32)
        {
          *v29 = v34;
          a2[-1].i64[0] = v30;
          v36 = v9->i64[1];
          if (*(v15 + (*v29 << 32 >> 29)) < *(v15 + 8 * v36))
          {
            v9->i64[1] = *v29;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v35 >= v32)
        {
          v9->i64[1] = v30;
          *v29 = v31;
          v38 = a2[-1].i64[0];
          if (*(v15 + 8 * v38) >= v33)
          {
            goto LABEL_44;
          }

          *v29 = v38;
        }

        else
        {
          v9->i64[1] = v34;
        }

        a2[-1].i64[0] = v31;
      }

LABEL_44:
      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[1].i64[0];
      v43 = *(v15 + 8 * v41);
      v44 = *(v15 + 8 * v42);
      v45 = a2[-2].i64[1];
      v46 = *(v15 + 8 * v45);
      if (v43 >= v44)
      {
        if (v46 < v43)
        {
          *v39 = v45;
          a2[-2].i64[1] = v40;
          v47 = v9[1].i64[0];
          if (*(v15 + (*v39 << 32 >> 29)) < *(v15 + 8 * v47))
          {
            v9[1].i64[0] = *v39;
            *v39 = v47;
          }
        }
      }

      else
      {
        if (v46 >= v43)
        {
          v9[1].i64[0] = v40;
          *v39 = v42;
          v48 = a2[-2].i64[1];
          if (*(v15 + 8 * v48) >= v44)
          {
            goto LABEL_53;
          }

          *v39 = v48;
        }

        else
        {
          v9[1].i64[0] = v45;
        }

        a2[-2].i64[1] = v42;
      }

LABEL_53:
      v49 = *v14;
      v50 = *v29;
      v51 = *(v15 + (*v14 << 32 >> 29));
      v52 = *(v15 + (*v29 << 32 >> 29));
      v53 = *v39;
      v54 = *(v15 + (*v39 << 32 >> 29));
      if (v51 >= v52)
      {
        if (v54 >= v51)
        {
          goto LABEL_60;
        }

        *v14 = v53;
        *v39 = v49;
        v39 = v14;
        v49 = v50;
        if (v54 >= v52)
        {
          v49 = v53;
LABEL_60:
          v55 = v9->i64[0];
          v9->i64[0] = v49;
          *v14 = v55;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      else if (v54 >= v51)
      {
        *v29 = v49;
        *v14 = v50;
        v29 = v14;
        v49 = v53;
        if (v54 >= v52)
        {
          v49 = v50;
          goto LABEL_60;
        }
      }

      *v29 = v53;
      *v39 = v50;
      goto LABEL_60;
    }

    v22 = v9->i64[0];
    v23 = *v13;
    v24 = *(v15 + (v9->i64[0] << 32 >> 29));
    v25 = *(v15 + (*v14 << 32 >> 29));
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      v9->i64[0] = v23;
      v37 = a2[-1].i64[1];
      if (*(v15 + 8 * v37) < v25)
      {
        v9->i64[0] = v37;
LABEL_38:
        a2[-1].i64[1] = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    v9->i64[0] = v16;
    a2[-1].i64[1] = v22;
    v27 = *v14;
    if (*(v15 + (v9->i64[0] << 32 >> 29)) >= *(v15 + (*v14 << 32 >> 29)))
    {
      goto LABEL_39;
    }

    *v14 = v9->i64[0];
    v9->i64[0] = v27;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    v56 = vshrq_n_s64(vshlq_n_s64(*(v9 - 8), 0x20uLL), 0x1DuLL);
    if (*(v15 + v56.i64[0]) >= *(v15 + v56.i64[1]))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(v9->i64, a2->i64, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v57 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(v9->i64, a2->i64, a3);
    if ((v58 & 1) == 0)
    {
      goto LABEL_67;
    }

    v59 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v9->i64, v57, a3);
    v9 = (v57 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(v57 + 1, a2->i64, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v57;
      if (v59)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v59)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,false>(v8, v57, a3, -v11, a5 & 1);
      v9 = (v57 + 1);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(v9->i64, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a5;
  v8 = *a2 << 32 >> 29;
  v9 = *(v7 + v8);
  v10 = *result << 32 >> 29;
  v11 = *(v7 + v10);
  v12 = *a3;
  v13 = *(v7 + (*a3 << 32 >> 29));
  if (v9 >= v11)
  {
    if (v13 >= v9)
    {
      v10 = *a3 << 32 >> 29;
      v5 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v5;
      v14 = *result;
      v10 = v8;
      if (*(v7 + (*a2 << 32 >> 29)) < *(v7 + (*result << 32 >> 29)))
      {
        *result = *a2;
        *a2 = v14;
        v5 = *a3;
        v10 = *a3 << 32 >> 29;
      }
    }
  }

  else
  {
    if (v13 >= v9)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(v7 + (*a3 << 32 >> 29)) >= v11)
      {
        v10 = *a3 << 32 >> 29;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v12;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(v7 + (*a4 << 32 >> 29)) < *(v7 + v10))
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a2;
    if (*(v7 + (*a3 << 32 >> 29)) < *(v7 + (*a2 << 32 >> 29)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(v7 + (*a2 << 32 >> 29)) < *(v7 + (*result << 32 >> 29)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 8 * v7);
        if (v9 < *(v5 + 8 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 8) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 8);
            v10 -= 8;
            if (v9 >= *(v5 + 8 * v8))
            {
              v11 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 8 * v5);
        if (v7 < *(v4 + 8 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 8 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(v4 + (*a1 << 32 >> 29));
  if (v5 >= *(v4 + (*(a2 - 1) << 32 >> 29)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + (*v6 << 32 >> 29)));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 8 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 8 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 8 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 8 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = **a3;
  v6 = *(v5 + (*a1 << 32 >> 29));
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 8 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 8 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 8 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = &a1[v3];
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v7;
      do
      {
        v15 = v13[1];
        ++v13;
        v7 = v15;
      }

      while (*(v5 + 8 * v15) < v6);
      do
      {
        v16 = *--v14;
        v12 = v16;
      }

      while (*(v5 + 8 * v16) >= v6);
    }

    while (v13 < v14);
    v9 = v13 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 8 * v17);
        v19 = *(v11 + (*a1 << 32 >> 29));
        v20 = *(a2 - 1);
        v21 = *(v11 + 8 * v20);
        if (v18 < v19)
        {
          if (v21 < v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 8 * v41) < v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 >= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 8 * v12);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 8 * v9) >= *(v11 + 8 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 8 * v12);
        if (v14 >= *(v11 + 8 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 >= *(v11 + 8 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 < *(v11 + 8 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 8 * v7) < *(**a3 + (*a1 << 32 >> 29)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 8 * v24);
  v28 = *(v26 + (*a1 << 32 >> 29));
  v29 = *(v26 + 8 * v22);
  if (v27 < v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 >= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 >= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 < v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 < v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 29));
    if (v37 < *(v26 + 8 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 >= *(v26 + 8 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

int64x2_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *,unsigned long *>(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, uint64_t **a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1->i64[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = v12->i64[0];
        if (*(**a4 + (v12->i64[0] << 32 >> 29)) < *(**a4 + (a1->i64[0] << 32 >> 29)))
        {
          v12->i64[0] = a1->i64[0];
          a1->i64[0] = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8, a1->i64);
        }

        v12 = (v12 + 8);
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = (a2 - 8);
      do
      {
        v15 = a1->i64[0];
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          v16->i64[0] = v15;
        }

        else
        {
          v16->i64[0] = v14->i64[0];
          v14->i64[0] = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(a1, &v16->i64[1], a4, (&v16->u64[1] - a1) >> 3);
        }

        v14 = (v14 - 8);
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3)
      {
        v10 = vshrq_n_s64(vshlq_n_s64(*v7, 0x20uLL), 0x1DuLL);
        if (*(v9 + v10.i64[0]) < *(v9 + v10.i64[1]))
        {
          v7 = (v7 + 8);
          v6 = v8;
        }
      }

      v11 = v7->i64[0];
      v12 = *a4;
      v13 = *(v9 + (*a4 << 32 >> 29));
      if (*(v9 + (v7->i64[0] << 32 >> 29)) >= v13)
      {
        do
        {
          v14 = v7;
          *a4 = v11;
          if (v4 < v6)
          {
            break;
          }

          v15 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v16 = v15 + 2;
          if (v16 < a3)
          {
            v17 = vshrq_n_s64(vshlq_n_s64(*v7, 0x20uLL), 0x1DuLL);
            if (*(v9 + v17.i64[0]) < *(v9 + v17.i64[1]))
            {
              v7 = (v7 + 8);
              v6 = v16;
            }
          }

          v11 = v7->i64[0];
          a4 = v14;
        }

        while (*(v9 + (v7->i64[0] << 32 >> 29)) >= v13);
        *v14 = v12;
      }
    }
  }

  return result;
}

int64x2_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(int64x2_t *result, void **a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result->i8[8 * v3];
    result = (v6 + 8);
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v9 = vshrq_n_s64(vshlq_n_s64(*result, 0x20uLL), 0x1DuLL);
      if (*(*v4 + v9.i64[0]) < *(*v4 + v9.i64[1]))
      {
        result = (v6 + 16);
        v3 = v8;
      }
    }

    *v5 = result->i64[0];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void argsort<double>(double const*,unsigned long *,unsigned long)::{lambda(int,int)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = **a3;
    v11 = *(v10 + 8 * v9);
    if (*(v10 + ((*v5 << 32) >> 29)) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + ((*v5 << 32) >> 29)) < v11);
      *v12 = v8;
    }
  }

  return result;
}

uint64_t hws_get_log()
{
  if (hws_get_log_onceToken != -1)
  {
    hws_get_log_cold_1();
  }

  return hws_get_log_log;
}

os_log_t __hws_get_log_block_invoke()
{
  result = os_log_create("com.apple.Health.AFibBurden", "hid-algs-classification");
  hws_get_log_log = result;
  return result;
}

Tellurium::tellurium_classifier_t *Tellurium::tellurium_classifier_t::tellurium_classifier_t(Tellurium::tellurium_classifier_t *this, int a2, int a3, char a4)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = a4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  Tellurium::PredictorWrapper_t::PredictorWrapper_t((this + 64));
  log = hws_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "0.0.6";
    _os_log_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEFAULT, "Tellurium Alg Version: %s", &v13, 0xCu);
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 3) = _Q0;
  v11 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23E85647C(_Unwind_Exception *a1)
{
  Tellurium::PredictorWrapper_t::~PredictorWrapper_t((v1 + 64));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

double Tellurium::tellurium_classifier_t::get_core_analytics(Tellurium::tellurium_classifier_t *this)
{
  result = *(this + 6);
  v2 = *(this + 7);
  return result;
}

void Tellurium::tellurium_classifier_t::tellurium_classifier_process(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  if (v4)
  {
    *(v3 + 24) = v4;
    operator delete(v4);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  __p = 0;
  v64 = 0;
  v65 = 0;
  v6 = *a2;
  v57 = *(a2 + 8);
  if (*a2 == v57)
  {
    v49 = 0;
    v48 = 0;
  }

  else
  {
    v55 = v5;
    v56 = v3;
    do
    {
      __src = 0;
      v61 = 0;
      v62 = 0;
      v59 = 0;
      v8 = *v6;
      v7 = v6[1];
      v58 = v6;
      if (*v6 != v7)
      {
        v9 = 0;
        do
        {
          v10 = *v8;
          v11 = *(v8 + 8);
          while (v10 != v11)
          {
            if (v9 >= v62)
            {
              v12 = __src;
              v13 = v9 - __src;
              v14 = (v9 - __src) >> 3;
              v15 = v14 + 1;
              if ((v14 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v16 = v62 - __src;
              if ((v62 - __src) >> 2 > v15)
              {
                v15 = v16 >> 2;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF8)
              {
                v17 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              if (v17)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v17);
              }

              v18 = v14;
              v19 = (8 * v14);
              v20 = &v19[-v18];
              *v19 = *v10;
              v9 = (v19 + 1);
              memcpy(v20, v12, v13);
              v21 = __src;
              __src = v20;
              v61 = v9;
              v62 = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *v9 = *v10;
              v9 += 8;
            }

            v61 = v9;
            ++v10;
          }

          if (v9 >= v62)
          {
            v22 = __src;
            v23 = v9 - __src;
            v24 = (v9 - __src) >> 3;
            v25 = v24 + 1;
            if ((v24 + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v26 = v62 - __src;
            if ((v62 - __src) >> 2 > v25)
            {
              v25 = v26 >> 2;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v27);
            }

            v28 = v24;
            v29 = (8 * v24);
            v30 = &v29[-v28];
            *v29 = 0x7FF8000000000000;
            v9 = (v29 + 1);
            memcpy(v30, v22, v23);
            v31 = __src;
            __src = v30;
            v61 = v9;
            v62 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v9 = 0x7FF8000000000000;
            v9 += 8;
          }

          v61 = v9;
          v8 += 24;
        }

        while (v8 != v7);
      }

      v3 = v56;
      v32 = Tellurium::PredictorWrapper_t::predict((v56 + 64), &__src, &__p, &v59, v56 + 8);
      if ((v59 & 1) == 0)
      {
        v33 = v32;
        uuid_copy(dst, v58 + 32);
        v67 = v33;
        v34 = *(v56 + 24);
        v35 = *(v56 + 32);
        if (v34 >= v35)
        {
          v38 = 0xF0F0F0F0F0F0F0F1 * (v34 - *v55);
          v39 = v38 + 1;
          if (v38 + 1 >= 0xF0F0F0F0F0F0F10)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v40 = 0xF0F0F0F0F0F0F0F1 * (v35 - *v55);
          if (2 * v40 > v39)
          {
            v39 = 2 * v40;
          }

          if (v40 >= 0x787878787878787)
          {
            v41 = 0xF0F0F0F0F0F0F0FLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Tellurium::tacho_classification_t>>(v55, v41);
          }

          v42 = 17 * v38;
          v43 = *dst;
          *(v42 + 16) = v67;
          *v42 = v43;
          v37 = 17 * v38 + 17;
          v44 = *(v56 + 16);
          v45 = *(v56 + 24) - v44;
          v46 = v42 - v45;
          memcpy((v42 - v45), v44, v45);
          v47 = *(v56 + 16);
          *(v56 + 16) = v46;
          *(v56 + 24) = v37;
          *(v56 + 32) = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          v36 = *dst;
          *(v34 + 16) = v67;
          *v34 = v36;
          v37 = v34 + 17;
        }

        *(v56 + 24) = v37;
      }

      if (__src)
      {
        v61 = __src;
        operator delete(__src);
      }

      v6 = v58 + 6;
    }

    while (v58 + 6 != v57);
    v48 = __p;
    v49 = v64;
  }

  v50 = stats::mean(v48, ((v49 - v48) >> 2));
  v51 = stats::variance(__p, ((v64 - __p) >> 2), 1);
  log = hws_get_log();
  v53 = sqrtf(v51);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Tellurium::tellurium_classifier_t::tellurium_classifier_process(log, v50, v53);
  }

  if ((LODWORD(v50) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    *(v3 + 48) = v50;
  }

  if ((LODWORD(v53) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    *(v3 + 56) = v53;
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t Tellurium::tellurium_classifier_t::tellurium_get_outputs@<X0>(Tellurium::tellurium_classifier_t *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4 == v5)
  {
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = *(this + 2);
  do
  {
    v10 = *(v9 + 16);
    v7 += v10 ^ 1;
    v6 += v10;
    v9 += 17;
    --v8;
  }

  while (v9 != v5);
  if (v8 == 1 || !(v8 | v6))
  {
LABEL_6:
    *(this + 20) = 0;
  }

  else if (v6 >= *this)
  {
    *(this + 20) = 1;
  }

  else
  {
    v12 = *(this + 1);
    *(this + 40) = 0;
    *(this + 41) = v7 < v12;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = std::vector<Tellurium::tacho_classification_t>::__init_with_size[abi:ne200100]<Tellurium::tacho_classification_t*,Tellurium::tacho_classification_t*>(a2, v4, v5, 0xF0F0F0F0F0F0F0F1 * (v5 - v4));
  *(a2 + 24) = *(this + 20);
  return result;
}

uint64_t std::vector<Tellurium::tacho_classification_t>::__init_with_size[abi:ne200100]<Tellurium::tacho_classification_t*,Tellurium::tacho_classification_t*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Tellurium::tacho_classification_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E856A90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Tellurium::tacho_classification_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F10)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Tellurium::tacho_classification_t>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Tellurium::tacho_classification_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F10)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_23E8571FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23E8574F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E85785C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<Tellurium::PredictorImpl_t>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void Tellurium::PredictorWrapper_t::~PredictorWrapper_t(id **this)
{
  std::unique_ptr<Tellurium::PredictorImpl_t>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<Tellurium::PredictorImpl_t>::reset[abi:ne200100](this, 0);
}

id **std::unique_ptr<Tellurium::PredictorImpl_t>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x23EF15D50);
  }

  return result;
}

void stats::mean()
{
  __assert_rtn("mean", "stats.cpp", 19, "x != NULL");
}

{
  __assert_rtn("mean", "stats.cpp", 18, "N > 0");
}

void stats::variance()
{
  __assert_rtn("variance", "stats.cpp", 32, "x != NULL");
}

{
  __assert_rtn("variance", "stats.cpp", 31, "N > 0");
}

void stats::covariance()
{
  __assert_rtn("covariance", "stats.cpp", 53, "Ny == Nx");
}

{
  __assert_rtn("covariance", "stats.cpp", 56, "y != NULL");
}

{
  __assert_rtn("covariance", "stats.cpp", 55, "x != NULL");
}

{
  __assert_rtn("covariance", "stats.cpp", 52, "Nx > 0");
}

void stats::std()
{
  __assert_rtn("std", "stats.cpp", 81, "x != NULL");
}

{
  __assert_rtn("std", "stats.cpp", 80, "N > 0");
}

void stats::rmssd()
{
  __assert_rtn("rmssd", "stats.cpp", 94, "x != NULL");
}

{
  __assert_rtn("rmssd", "stats.cpp", 93, "N > 0");
}

void stats::madsd()
{
  __assert_rtn("madsd", "stats.cpp", 111, "x != NULL");
}

{
  __assert_rtn("madsd", "stats.cpp", 110, "N > 0");
}

void stats::mad()
{
  __assert_rtn("mad", "stats.cpp", 128, "x != NULL");
}

{
  __assert_rtn("mad", "stats.cpp", 127, "N > 0");
}

void stats::mad_median()
{
  __assert_rtn("mad_median", "stats.cpp", 146, "x != NULL");
}

{
  __assert_rtn("mad_median", "stats.cpp", 145, "N > 0");
}

void stats::median()
{
  __assert_rtn("median", "stats.cpp", 205, "x != NULL");
}

{
  __assert_rtn("median", "stats.cpp", 204, "N > 0");
}

void stats::range()
{
  __assert_rtn("range", "stats.cpp", 164, "x != NULL");
}

{
  __assert_rtn("range", "stats.cpp", 163, "N > 0");
}

void stats::max()
{
  __assert_rtn("max", "stats.cpp", 179, "x != NULL");
}

{
  __assert_rtn("max", "stats.cpp", 178, "N > 0");
}

void stats::min()
{
  __assert_rtn("min", "stats.cpp", 192, "x != NULL");
}

{
  __assert_rtn("min", "stats.cpp", 191, "N > 0");
}

void stats::median_vdsp()
{
  __assert_rtn("median_vdsp", "stats.cpp", 234, "pI != NULL");
}

{
  __assert_rtn("median_vdsp", "stats.cpp", 233, "x != NULL");
}

{
  __assert_rtn("median_vdsp", "stats.cpp", 232, "N > 0");
}

void stats::percentile()
{
  __assert_rtn("percentile", "stats.cpp", 412, "ptile >= 0 && ptile <= 100");
}

{
  __assert_rtn("percentile", "stats.cpp", 411, "pI != NULL");
}

{
  __assert_rtn("percentile", "stats.cpp", 410, "x != NULL");
}

{
  __assert_rtn("percentile", "stats.cpp", 409, "N > 0");
}

void stats::meanMag()
{
  __assert_rtn("meanMag", "stats.cpp", 255, "x != NULL");
}

{
  __assert_rtn("meanMag", "stats.cpp", 254, "N > 0");
}

void stats::measqv()
{
  __assert_rtn("measqv", "stats.cpp", 267, "x != NULL");
}

{
  __assert_rtn("measqv", "stats.cpp", 266, "N > 0");
}

void stats::meassq()
{
  __assert_rtn("meassq", "stats.cpp", 279, "x != NULL");
}

{
  __assert_rtn("meassq", "stats.cpp", 278, "N > 0");
}

void stats::rmsqv()
{
  __assert_rtn("rmsqv", "stats.cpp", 291, "x != NULL");
}

{
  __assert_rtn("rmsqv", "stats.cpp", 290, "N > 0");
}

void stats::kurt()
{
  __assert_rtn("kurt", "stats.cpp", 303, "pX != NULL");
}

{
  __assert_rtn("kurt", "stats.cpp", 302, "N > 0");
}

void stats::median_filt()
{
  __assert_rtn("median_filt", "stats.cpp", 367, "y != nullptr");
}

{
  __assert_rtn("median_filt", "stats.cpp", 366, "x != nullptr");
}

{
  __assert_rtn("median_filt", "stats.cpp", 365, "N > 0");
}

void Tellurium::tellurium_classifier_t::tellurium_classifier_process(os_log_t log, float a2, float a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEBUG, "AfibMean:%f AfibStd:%f ", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 363, "false");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
}

{
  __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1064, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 889, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 980, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 979, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 186, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 185, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "to_chars.hpp", 827, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}