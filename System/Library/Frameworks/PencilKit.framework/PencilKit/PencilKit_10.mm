void PKAnimationFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v15, a3, a4);
  v7 = [v15 behavior];
  v8 = [v7 animationDescriptor];

  if (v8)
  {
    v9 = [v15 behavior];
    v10 = [v9 animationDescriptor];
    [v10 duration];
    *(a1 + 32) = v11;

    v12 = [v15 behavior];
    v13 = [v12 animationDescriptor];
    [v13 sizeDelta];
    *(a1 + 40) = v14;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }
}

uint64_t PKAnimationFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (*(a1 + 32) > 0.0 && a3[1] != *a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = [WeakRetained isPreviewing];

    if ((v9 & 1) == 0)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 5);
      v11 = a3[1];
      v12 = (*(a1 + 16) & 1) != 0 ? 1.79769313e308 : *(v11 - 96);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 5);
      if (v13 > v10)
      {
        v14 = *(a1 + 32);
        v15 = (*a3 + 96 * v13 - 96);
        do
        {
          v16 = fmax((v12 - *v15) / v14, 0.0);
          if (v16 >= 1.0)
          {
            break;
          }

          --v13;
          v15[3] = v15[3] * (v16 + (*(a1 + 40) + 1.0) * (1.0 - v16));
          if (v7 >= v13)
          {
            v7 = v13;
          }

          v15 -= 12;
        }

        while (v13 > v10);
      }
    }
  }

  return v7;
}

void PKPropertySmootherFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v15, a3, a4);
  v7 = [v15 behavior];
  v8 = [v7 smoothingDescriptor];
  [v8 radiusSmoothing];
  v10 = v9;
  [v15 weight];
  *(a1 + 104) = v10 * v11;

  *(a1 + 112) = 0;
  v12 = [v15 _isFountainPenInkV2] ^ 1;
  if (a3 != 1)
  {
    LOBYTE(v12) = 1;
  }

  if ((v12 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v14 = [WeakRetained isPreviewing];

    if ((v14 & 1) == 0)
    {
      *(a1 + 112) = *(a1 + 104);
    }
  }
}

uint64_t PKPropertySmootherFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104) <= 0.0 && *(a1 + 112) <= 0.0)
  {
    return (*(**(a1 + 8) + 24))();
  }

  else
  {
    return PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(a1, a2, a3);
  }
}

void PKPropertySmootherFilter::run(PKPropertySmootherFilter *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = this + 48;
  std::vector<_PKStrokePoint>::resize(this + 10, 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5));
  v3 = *(v2 - 2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 1) - *v2) >> 5);
  v5 = *(v2 + 3);
  if (v5 < v4)
  {
    v6 = *(v2 + 7) / 7.0;
    v7 = *(v2 + 8) / 7.0;
    v34 = (v4 - 1);
    do
    {
      v8 = (*v2 + 96 * v5);
      v9 = (*(v2 + 4) + 96 * v5);
      v10 = v8[5];
      v12 = v8[2];
      v11 = v8[3];
      v9[4] = v8[4];
      v9[5] = v10;
      v9[2] = v12;
      v9[3] = v11;
      v13 = v8[1];
      *v9 = *v8;
      v9[1] = v13;
      if (v6 > 0.0)
      {
        v35 = 0.0;
        v40 = &v35;
        v41 = v6 * -0.5;
        v42 = v2;
        PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRadiusFrom(double &,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v40, v5, v6 * -0.5);
        v43 = v35 * 0.5;
        for (i = 2; i != -1; --i)
        {
          v39 = 0.0;
          v35 = COERCE_DOUBLE(&v39);
          v36 = -v6;
          v37 = v2;
          PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRadiusFrom(double &,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v14, -v6);
          *&(&v40)[i] = v39;
        }

        v39 = 0.0;
        v35 = COERCE_DOUBLE(&v39);
        v36 = v6 * 0.5;
        v37 = v2;
        PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRadiusFrom(double &,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v5, v6 * 0.5);
        v43 = v43 + v39 * 0.5;
        for (j = 4; j != 7; ++j)
        {
          v39 = 0.0;
          v35 = COERCE_DOUBLE(&v39);
          v36 = v6;
          v37 = v2;
          PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRadiusFrom(double &,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v16, v6);
          *&(&v40)[j] = v39;
        }

        v18 = 0;
        v19 = 0.0;
        do
        {
          v19 = v19 + *&PKPropertySmootherFilter::run(void)::smoothingKernel[v18] * *&(&v40)[v18];
          ++v18;
        }

        while (v18 != 7);
        if (v3 >= v5)
        {
          v20 = v5;
        }

        else
        {
          v20 = v3;
        }

        if (v16 >= v34)
        {
          v3 = v20;
        }

        *(*(v2 + 4) + 96 * v5 + 24) = v19;
      }

      if (v7 > 0.0)
      {
        v21 = *(this + 6);
        v22 = *(this + 7);
        v23 = *(v21 + 96 * v5 + 56);
        v35 = 0.0;
        v40 = &v35;
        v41 = v7 * -0.5;
        v42 = v2;
        v43 = v23;
        v24 = PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRelativeAzimuthFrom(double &,double,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(v21, v22, &v40, v5, v7 * -0.5);
        v43 = v35 * 0.5;
        for (k = 2; k != -1; --k)
        {
          v39 = 0.0;
          v35 = COERCE_DOUBLE(&v39);
          v36 = -v7;
          v37 = v2;
          v38 = v23;
          v24 = PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRelativeAzimuthFrom(double &,double,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v24, -v7);
          *&(&v40)[k] = v39;
        }

        v39 = 0.0;
        v35 = COERCE_DOUBLE(&v39);
        v36 = v7 * 0.5;
        v37 = v2;
        v38 = v23;
        v26 = PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRelativeAzimuthFrom(double &,double,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v5, v7 * 0.5);
        v43 = v43 + v39 * 0.5;
        for (m = 4; m != 7; ++m)
        {
          v39 = 0.0;
          v35 = COERCE_DOUBLE(&v39);
          v36 = v7;
          v37 = v2;
          v38 = v23;
          v26 = PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRelativeAzimuthFrom(double &,double,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(*(this + 6), *(this + 7), &v35, v26, v7);
          *&(&v40)[m] = v39;
        }

        v28 = 0;
        v29 = 0.0;
        do
        {
          v29 = v29 + *&PKPropertySmootherFilter::run(void)::smoothingKernel[v28] * *&(&v40)[v28];
          ++v28;
        }

        while (v28 != 7);
        if (v3 >= v5)
        {
          v30 = v5;
        }

        else
        {
          v30 = v3;
        }

        if (v26 >= v34)
        {
          v3 = v30;
        }

        v31 = v23 + v29;
        v32 = fmod(v23 + v29, 6.28318531);
        if (v31 <= 6.28318531 && v31 >= 0.0)
        {
          v32 = v31;
        }

        if (v32 < 0.0)
        {
          v32 = v32 + 6.28318531;
        }

        if (v32 == 0.0)
        {
          v32 = 0.0;
        }

        *(*(v2 + 4) + 96 * v5 + 56) = v32;
      }

      ++v5;
    }

    while (v5 != v4);
  }

  *(this + 9) = v3;
}

uint64_t PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRadiusFrom(double &,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a5 >= 0.0;
  v6 = -a5;
  if (a5 < 0.0)
  {
    v7 = a4 <= 0.0;
  }

  else
  {
    v6 = a5;
    v7 = 0;
  }

  if (!v7 && v6 > 0.0)
  {
    do
    {
      v8 = a4;
      v9 = a4 - a4;
      v10 = v9;
      v11 = a4;
      if (a5 < 0.0)
      {
        v10 = a4 - a4;
        v11 = a4;
        if (v9 == 0.0)
        {
          v11 = v8 - 1;
          if (v8 < 1)
          {
            break;
          }

          v10 = 1.0;
        }
      }

      if (v11 + 1 >= (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 5)))
      {
        break;
      }

      v12 = result + 96 * v11;
      v13 = result + 96 * (v11 + 1);
      v14 = sqrt((*(v12 + 16) - *(v13 + 16)) * (*(v12 + 16) - *(v13 + 16)) + (*(v12 + 8) - *(v13 + 8)) * (*(v12 + 8) - *(v13 + 8)));
      if (a5 >= 0.0)
      {
        v10 = 1.0 - v10;
      }

      v15 = v10 * v14;
      if (v15 > v6)
      {
        if (a5 >= 0.0)
        {
          v30 = v6;
        }

        else
        {
          v30 = -v6;
        }

        a4 = a4 + v30 / v14;
        v31 = *(a3 + 8);
        if (v31 < 0.0)
        {
          v31 = -v31;
        }

        v29 = v6 / v31;
        goto LABEL_37;
      }

      v16 = *(a3 + 8);
      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = *(a3 + 8);
      }

      v18 = *(a3 + 16);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v19 + 96 * v8 + 24);
      if (v9 > 0.0)
      {
        v22 = v8 + 1;
        if (v22 < 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 5))
        {
          v21 = v21 + (*(v19 + 96 * v22 + 24) - v21) * v9;
        }
      }

      v23 = v11 + v5;
      a4 = (v11 + v5);
      v24 = a4 - a4;
      v25 = *(v19 + 96 * a4 + 24);
      if (v24 > 0.0)
      {
        v26 = a4 + 1;
        if (v26 < 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 5))
        {
          v25 = v25 + (*(v19 + 96 * v26 + 24) - v25) * v24;
        }
      }

      **a3 = **a3 + v15 / v17 * (v21 + v25) * 0.5;
      v6 = v6 - v15;
      v27 = v23 > 0 || a5 >= 0.0;
    }

    while (v27 && v6 > 0.0);
  }

  if (v6 > 0.0)
  {
    v28 = *(a3 + 8);
    if (v28 < 0.0)
    {
      v28 = -v28;
    }

    v29 = v6 / v28;
    v8 = a4;
    v9 = a4 - a4;
LABEL_37:
    v32 = *(a3 + 16);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(v33 + 96 * v8 + 24);
    if (v9 > 0.0 && v8 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 5))
    {
      v35 = v35 + (*(v33 + 96 * (v8 + 1) + 24) - v35) * v9;
    }

    v36 = a4 - a4;
    v37 = *(v33 + 96 * a4 + 24);
    if (v36 > 0.0)
    {
      v38 = a4 + 1;
      if (v38 < 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 5))
      {
        v37 = v37 + (*(v33 + 96 * v38 + 24) - v37) * v36;
      }
    }

    **a3 = **a3 + v29 * (v35 + v37) * 0.5;
  }

  return result;
}

double PKPropertySmootherFilter::stepDistanceFrom<_PKStrokePoint,PKPropertySmootherFilter::integrateRelativeAzimuthFrom(double &,double,double,std::vector<_PKStrokePoint> const&)::{lambda(double,double,double)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = a5 < 0.0;
  v8 = a5 >= 0.0;
  v9 = -a5;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  v11 = v7 && a4 <= 0.0;
  if (!v11 && v10 > 0.0)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    while (1)
    {
      v14 = a4;
      v15 = a4 - a4;
      if (a5 < 0.0 && v15 == 0.0)
      {
        v11 = v14-- < 1;
        if (v11)
        {
          break;
        }

        v15 = 1.0;
      }

      if (v14 + 1 >= v13)
      {
        break;
      }

      v16 = a1 + 96 * (v14 + 1);
      v17 = sqrt((*(a1 + 96 * v14 + 16) - *(v16 + 16)) * (*(a1 + 96 * v14 + 16) - *(v16 + 16)) + (*(a1 + 96 * v14 + 8) - *(v16 + 8)) * (*(a1 + 96 * v14 + 8) - *(v16 + 8)));
      if (a5 >= 0.0)
      {
        v15 = 1.0 - v15;
      }

      v18 = v15 * v17;
      if (v15 * v17 > v10)
      {
        v37 = -v10;
        if (a5 >= 0.0)
        {
          v37 = v10;
        }

        v20 = a4 + v37 / v17;
        v38 = *(a3 + 8);
        if (v38 < 0.0)
        {
          v38 = -v38;
        }

        v32 = v10 / v38;
        v33 = *(a3 + 24);
        v39 = *(a3 + 16);
        v35 = *v39;
        v36 = v39[1];
        goto LABEL_35;
      }

      v19 = v14 + v8;
      v20 = (v14 + v8);
      v21 = *(a3 + 8);
      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      v22 = v18 / v21;
      v23 = *(a3 + 24);
      v24 = *(a3 + 16);
      v25 = *v24;
      v26 = v24[1];
      PKPropertySmootherFilter::relativeAzimuthAt<_PKStrokePoint>(*v24, v26, a4, v23);
      v28 = v27;
      PKPropertySmootherFilter::relativeAzimuthAt<_PKStrokePoint>(v25, v26, v20, v23);
      **a3 = **a3 + v22 * (v28 + v29) * 0.5;
      v10 = v10 - v18;
      v30 = !v8;
      if (v19 >= 1)
      {
        v30 = 0;
      }

      if (!v30)
      {
        a4 = v20;
        if (v10 > 0.0)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v20 = a4;
LABEL_26:
  if (v10 > 0.0)
  {
    v31 = *(a3 + 8);
    if (v31 < 0.0)
    {
      v31 = -v31;
    }

    v32 = v10 / v31;
    v33 = *(a3 + 24);
    v34 = *(a3 + 16);
    v35 = *v34;
    v36 = v34[1];
    a4 = v20;
LABEL_35:
    PKPropertySmootherFilter::relativeAzimuthAt<_PKStrokePoint>(v35, v36, a4, v33);
    v41 = v40;
    PKPropertySmootherFilter::relativeAzimuthAt<_PKStrokePoint>(v35, v36, v20, v33);
    **a3 = **a3 + v32 * (v41 + v42) * 0.5;
  }

  return v20;
}

void PKPropertySmootherFilter::relativeAzimuthAt<_PKStrokePoint>(uint64_t a1, uint64_t a2, double a3, long double a4)
{
  v5 = a3;
  v6 = a3 - a3;
  v7 = *(a1 + 96 * v5 + 56);
  if (v6 > 0.0)
  {
    v8 = v5 + 1;
    if (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5))
    {
      v7 = v7 + (*(a1 + 96 * v8 + 56) - v7) * v6;
    }
  }

  DKDDiffAngleInRadians(a4, v7);
}

void PKEndCapsFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v20 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v20, a3, a4);
  if (a3 == 1)
  {
    v15 = [v20 behavior];
    v16 = [v15 pencilFeatheringDescriptor];

    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = [v20 behavior];
    v18 = [v17 pencilFeatheringDescriptor];
    [v18 endCapTime];
    *(a1 + 32) = v19;

    v12 = [v20 behavior];
    v13 = [v12 pencilFeatheringDescriptor];
    [v13 endCapFade];
    goto LABEL_7;
  }

  if (!a3)
  {
    v7 = [v20 behavior];
    v8 = [v7 featheringDescriptor];

    if (v8)
    {
      v9 = [v20 behavior];
      v10 = [v9 featheringDescriptor];
      [v10 endCapTime];
      *(a1 + 32) = v11;

      v12 = [v20 behavior];
      v13 = [v12 featheringDescriptor];
      [v13 endCapFade];
LABEL_7:
      *(a1 + 40) = v14;
    }
  }

LABEL_8:
}

uint64_t PKEndCapsFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  result = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (!a2 && *(a3 + 8) != *a3)
  {
    *(a1 + 48) = **a3;
  }

  v9 = *(a1 + 32);
  if (v9 > 0.0)
  {
    v10 = *a3;
    v11 = *(a3 + 8);
    if (v11 != *a3)
    {
      if (*(a1 + 16) == 1)
      {
        if (v9 > 0.0)
        {
          v12 = *(v11 - 96);
          if (v12 - *(a1 + 48) > v9 + v9)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 5);
            v14 = &v10[4 * ((v11 - *a3) >> 5) + 2];
            v15 = v13;
            while (--v15)
            {
              v16 = (v14 - 96);
              v17 = v12 - *(v14 - 112);
              v14 -= 96;
              if (v17 > v9)
              {
                v19 = *(v16 - 1);
                v18 = *v16;
                goto LABEL_19;
              }
            }

            v18 = 0.0;
            v19 = 0.0;
LABEL_19:
            if ((v18 - *(v11 - 80)) * (v18 - *(v11 - 80)) + (v19 - *(v11 - 88)) * (v19 - *(v11 - 88)) > 225.0)
            {
              v22 = v13 - 1;
              if (v13 != 1)
              {
                v23 = &v10[12 * v13 - 3];
                do
                {
                  v24 = v12 - *(v23 - 9);
                  if (v24 >= v9)
                  {
                    break;
                  }

                  *v23 = *v23 * (1.0 - *(a1 + 40) * (1.0 - v24 / v9));
                  v23 -= 12;
                  --v22;
                }

                while (v22);
              }
            }
          }
        }
      }

      else if (result)
      {
        v20 = *(v11 - 96) - v9;
        v21 = (v10 + 32 * ((v6 - v7) >> 5) + 96 * result - 96 * a2);
        do
        {
          if (*v21 <= v20)
          {
            break;
          }

          v21 -= 12;
          --result;
        }

        while (result);
      }
    }
  }

  return result;
}

void PKInputBaseFilter<_PKStrokePoint,PKCompressedStrokePoint>::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    (**v7)(v7, v8, a3, a4);
  }

  *(a1 + 24) = a4;
  *(a1 + 16) = 0;
}

uint64_t PKInputBaseFilter<_PKStrokePoint,PKCompressedStrokePoint>::drawingEnded(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t PKInputBufferedFilter<_PKStrokePoint,PKCompressedStrokePoint>::copyUpdatedRangeFromIndex(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  v8 = (*v6 + 36 * a2);
  v9 = v7 - v8;
  if (v7 - v8 >= 1)
  {
    v11 = *(a3 + 8);
    v10 = *(a3 + 16);
    if (v10 - v11 >= v9)
    {
      if (v8 != v7)
      {
        memmove(*(a3 + 8), v8, v7 - v8);
      }

      *(a3 + 8) = &v11[v9];
    }

    else
    {
      v12 = 0x8E38E38E38E38E39 * (&v11[-*a3] >> 2);
      v13 = v12 - 0x71C71C71C71C71C7 * (v9 >> 2);
      if (v13 > 0x71C71C71C71C71CLL)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v14 = 0x8E38E38E38E38E39 * ((v10 - *a3) >> 2);
      v15 = 2 * v14;
      if (2 * v14 <= v13)
      {
        v15 = v12 - 0x71C71C71C71C71C7 * (v9 >> 2);
      }

      if (v14 >= 0x38E38E38E38E38ELL)
      {
        v16 = 0x71C71C71C71C71CLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PKCompressedStrokePoint>>(a3, v16);
      }

      v17 = 4 * (&v11[-*a3] >> 2);
      v18 = (v17 + v9);
      v19 = v17;
      do
      {
        v20 = *v8;
        v21 = *(v8 + 1);
        *(v19 + 32) = *(v8 + 8);
        *v19 = v20;
        *(v19 + 16) = v21;
        v19 += 36;
        v8 += 36;
        v9 -= 36;
      }

      while (v9);
      memcpy(v18, v11, *(a3 + 8) - v11);
      v22 = *a3;
      v23 = &v18[*(a3 + 8) - v11];
      *(a3 + 8) = v11;
      v24 = v11 - v22;
      v25 = (v17 - (v11 - v22));
      memcpy(v25, v22, v24);
      v26 = *a3;
      *a3 = v25;
      *(a3 + 8) = v23;
      *(a3 + 16) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }
  }

  return a1[9];
}

void *PKInputFilter<_PKStrokePoint,PKCompressedStrokePoint>::reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 48))(a1);
  result[1] = *result;
  return result;
}

uint64_t PKInputBufferedFilter<_PKStrokePoint,PKCompressedStrokePoint>::fetchInput(uint64_t a1)
{
  std::vector<_PKStrokePoint>::resize((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 56);

  return v2(a1);
}

void PKCompressionFilter::run(PKCompressionFilter *this)
{
  std::vector<PKCompressedStrokePoint>::resize(this + 10, 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5));
  v2 = *(this + 9);
  v3 = *(this + 6);
  if (v2 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v3) >> 5))
  {
    v4 = 36 * v2;
    v5 = 12 * v2;
    do
    {
      v6 = *&v3[v5 + 6];
      v11[2] = *&v3[v5 + 4];
      v11[3] = v6;
      v7 = *&v3[v5 + 10];
      v11[4] = *&v3[v5 + 8];
      v11[5] = v7;
      v8 = *&v3[v5 + 2];
      v11[0] = *&v3[v5];
      v11[1] = v8;
      PKCompressStrokePoint(v11, *v3, v12);
      v9 = (*(this + 10) + v4);
      v10 = v12[1];
      *v9 = v12[0];
      v9[1] = v10;
      v9[2].i32[0] = v13;
      ++v2;
      v3 = *(this + 6);
      v4 += 36;
      v5 += 12;
    }

    while (v2 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v3) >> 5));
  }

  *(this + 9) = *(this + 4);
}

uint64_t PKInputBufferedFilter<_PKStrokePoint,PKCompressedStrokePoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void PKInputBaseFilter<PKCompressedStrokePoint,_PKStrokePoint>::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    (**v7)(v7, v8, a3, a4);
  }

  *(a1 + 24) = a4;
  *(a1 + 16) = 0;
}

uint64_t PKInputBaseFilter<PKCompressedStrokePoint,_PKStrokePoint>::drawingEnded(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t PKInputBufferedFilter<PKCompressedStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 48))(a1);
  std::vector<_PKStrokePoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<_PKStrokePoint*>,std::__wrap_iter<_PKStrokePoint*>>(a3, *(a3 + 8), (*v6 + 96 * a2), *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - (*v6 + 96 * a2)) >> 5));
  return a1[9];
}

void *PKInputFilter<PKCompressedStrokePoint,_PKStrokePoint>::reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 48))(a1);
  result[1] = *result;
  return result;
}

uint64_t PKInputBufferedFilter<PKCompressedStrokePoint,_PKStrokePoint>::fetchInput(uint64_t a1)
{
  std::vector<PKCompressedStrokePoint>::resize((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 56);

  return v2(a1);
}

void PKDecompressionFilter::run(PKDecompressionFilter *this)
{
  std::vector<_PKStrokePoint>::resize(this + 10, 0x8E38E38E38E38E39 * ((*(this + 7) - *(this + 6)) >> 2));
  v4 = *(this + 9);
  v5 = *(this + 6);
  v6 = 0x8E38E38E38E38E39 * ((*(this + 7) - v5) >> 2);
  v7 = v6 > v4;
  v8 = v6 - v4;
  if (v7)
  {
    v9 = v5 + 36 * v4;
    v10 = (*(this + 10) + 96 * v4 + 64);
    do
    {
      v11 = *(this + 13);
      v12 = v11 + *(v9 + 8);
      v13 = *(v9 + 12);
      LOWORD(v11) = *(v9 + 24);
      LOWORD(v2) = *(v9 + 26);
      v2 = *&v2 / 32767.5;
      v14 = *(v9 + 28);
      LOWORD(v3) = *(v9 + 32);
      v3 = *&v3;
      *(v10 - 8) = v12;
      *(v10 - 7) = vcvtq_f64_f32(*v9);
      *(v10 - 5) = v13;
      v15 = vmovl_u16(*(v9 + 16));
      v16.i64[0] = v15.u32[2];
      v16.i64[1] = v15.u32[3];
      v17 = vcvtq_f64_u64(v16);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      *(v10 - 2) = vdivq_f64(vcvtq_f64_u64(v16), xmmword_1C801E6D0);
      *(v10 - 1) = vdivq_f64(v17, xmmword_1C801E6E0);
      *v10 = *&v11 / 41720.8768;
      v10[1] = v2;
      v10[2] = v14;
      v10[3] = v3 / 32767.5;
      v9 += 36;
      v10 += 12;
      --v8;
    }

    while (v8);
  }

  *(this + 9) = *(this + 4);
}

uint64_t PKInputBufferedFilter<PKCompressedStrokePoint,_PKStrokePoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void ___ZL24PKAllowPencilHookFiltersv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1ED6A5562 = [v0 BOOLForKey:@"internalSettings.drawing.allowPencilHookFilters"];
}

void sub_1C7FB8B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C7FB9410(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7FBA628(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1C7FBC4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PKProtobufUnknownFields>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C7FBCED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7FC3D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1C7FC3F18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C7FC4538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

__CFString *_PKNameForGestureState(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E82DCA80[a1];
  }
}

void sub_1C7FC73EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7FCAEDC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7FCCD00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C7FCD3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7FCD6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7FCE100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double legacy_drawing::Command::Command(legacy_drawing::Command *this)
{
  *this = &unk_1F476BB30;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F476BB30;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

void legacy_drawing::Command::~Command(legacy_drawing::Command *this)
{
  *this = &unk_1F476BB30;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 8))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](this + 8);
    operator delete(*(this + 8));
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  PB::Base::~Base(this);
}

{
  legacy_drawing::Command::~Command(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t legacy_drawing::Command::Command(uint64_t this, const legacy_drawing::Command *a2)
{
  *this = &unk_1F476BB30;
  *(this + 8) = 0u;
  *(this + 100) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 100))
  {
    v2 = *(a2 + 24);
    *(this + 100) |= 1u;
    *(this + 96) = v2;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 8) != *(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::operator=(uint64_t a1, const legacy_drawing::Command *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Command::Command(v5, a2);
    legacy_drawing::swap(a1, v5, v3);
    legacy_drawing::Command::~Command(v5);
  }

  return a1;
}

uint64_t legacy_drawing::swap(uint64_t this, legacy_drawing::Command *a2, legacy_drawing::Command *a3)
{
  v3 = *(this + 100);
  *(this + 100) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 96);
  *(this + 96) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v13;
  v14 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v14;
  return this;
}

uint64_t legacy_drawing::Command::Command(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476BB30;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 40);
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (*(a1 + 64))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100]((a1 + 64));
    operator delete(*(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  v11 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 16);
  *(a2 + 16) = 0;
  v14 = *(a1 + 16);
  *(a1 + 16) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a2 + 32);
  *(a2 + 32) = 0;
  v16 = *(a1 + 32);
  *(a1 + 32) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a2 + 24);
  *(a2 + 24) = 0;
  v18 = *(a1 + 24);
  *(a1 + 24) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a2 + 56);
  *(a2 + 56) = 0;
  v20 = *(a1 + 56);
  *(a1 + 56) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return a1;
}

uint64_t legacy_drawing::Command::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Command::Command(v5, a2);
    legacy_drawing::swap(a1, v5, v3);
    legacy_drawing::Command::~Command(v5);
  }

  return a1;
}

uint64_t legacy_drawing::Command::formatText(legacy_drawing::Command *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "baseValues");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "bounds");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "clipNormal");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "clipOrigin");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "color");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "commandID");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "parameters");
  }

  v12 = *(this + 8);
  v13 = *(this + 9);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "path");
  }

  v15 = *(this + 11);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "timestamp");
  }

  if (*(this + 100))
  {
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Command::readFrom(legacy_drawing::Command *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            operator new();
          case 9:
            operator new();
          case 0xA:
            operator new();
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 100) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_63;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_56:
              LODWORD(v28) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_56;
            }
          }
        }

LABEL_63:
        *(this + 24) = v28;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_57:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t legacy_drawing::Command::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 100))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 40);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 88);
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 32);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 24);
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(v3 + 56);
  if (v14)
  {

    return PB::Writer::writeSubmessage(a2, v14);
  }

  return this;
}

BOOL legacy_drawing::Command::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if (!v5 || !legacy_drawing::CommandID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 100))
  {
    if ((*(a2 + 100) & 1) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if (*(a2 + 100))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || !legacy_drawing::Color::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9 || !legacy_drawing::Point::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a2 + 64);
  if (v11 - v10 != *(a2 + 72) - v12)
  {
    return 0;
  }

  while (v10 != v11)
  {
    result = legacy_drawing::Point::operator==(*v10, *v12);
    if (!result)
    {
      return result;
    }

    ++v10;
    ++v12;
  }

  v14 = *(a1 + 88);
  v15 = *(a2 + 88);
  if (v14)
  {
    if (!v15 || !legacy_drawing::CommandID::operator==(v14, v15))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(a1 + 16);
  v17 = *(a2 + 16);
  if (v16)
  {
    if (!v17 || !legacy_drawing::Rectangle::operator==(v16, v17))
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(a1 + 32);
  v19 = *(a2 + 32);
  if (v18)
  {
    if (!v19 || !legacy_drawing::Point::operator==(v18, v19))
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(a1 + 24);
  v21 = *(a2 + 24);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v21 || !legacy_drawing::Point::operator==(v20, v21))
  {
    return 0;
  }

LABEL_43:
  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  result = (v22 | v23) == 0;
  if (v22 && v23)
  {
    v24 = *(a1 + 56);

    return legacy_drawing::Parameters::operator==(v24, v23);
  }

  return result;
}

unint64_t legacy_drawing::Command::hash_value(legacy_drawing::Command *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 20) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 20) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 20) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 20) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 12);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  if (*(this + 100))
  {
    v7 = *(this + 24);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = legacy_drawing::Color::hash_value(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v11 = legacy_drawing::Point::hash_value(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 8);
  v13 = *(this + 9);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 ^= legacy_drawing::Point::hash_value(v15);
    }

    while (v12 != v13);
  }

  v16 = *(this + 11);
  if (!v16)
  {
    v20 = 0;
    goto LABEL_35;
  }

  if ((*(v16 + 20) & 1) == 0)
  {
    v17 = 0;
    if ((*(v16 + 20) & 4) != 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v18 = 0;
    if ((*(v16 + 20) & 2) != 0)
    {
      goto LABEL_29;
    }

LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v17 = *(v16 + 8);
  if ((*(v16 + 20) & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v18 = *(v16 + 16);
  if ((*(v16 + 20) & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  v19 = *(v16 + 12);
LABEL_34:
  v20 = v18 ^ v17 ^ v19;
LABEL_35:
  v21 = *(this + 2);
  if (v21)
  {
    v22 = legacy_drawing::Rectangle::hash_value(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 4);
  if (v23)
  {
    v24 = legacy_drawing::Point::hash_value(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(this + 3);
  if (v25)
  {
    v26 = legacy_drawing::Point::hash_value(v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(this + 7);
  if (v27)
  {
    v27 = legacy_drawing::Parameters::hash_value(v27);
  }

  return v7 ^ v6 ^ v9 ^ v11 ^ v20 ^ v22 ^ v24 ^ v26 ^ v14 ^ v27;
}

uint64_t legacy_drawing::Command::makeCommandID(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeColor(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeBaseValues(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeTimestamp(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeBounds(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeClipOrigin(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeClipNormal(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Command::makeParameters(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

void __uptimeOffsetToReference_block_invoke()
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v1 = v0;
  v3 = [MEMORY[0x1E696AE30] processInfo];
  [v3 systemUptime];
  *&_MergedGlobals_176 = v1 - v2;
}

__CFString *_PKDescriptionForCHCorrectionType(unint64_t a1)
{
  if (a1 > 8)
  {
    return &stru_1F476BD20;
  }

  else
  {
    return off_1E82DCBF0[a1];
  }
}

double DKDOffsetForEdgeOfFrame(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double DKDRectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double DKDRectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

double DKDUpdateFixedSizeRectToIncludePoint(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v14 = a1;
  v15 = a5 + a7 - CGRectGetMaxX(*&a1);
  if (v15 > 0.0)
  {
    v14 = v14 + v15;
  }

  v22.origin.x = v14;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v16 = CGRectGetMinX(v22) - (a5 - a7);
  if (v16 <= 0.0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 - v16;
  }

  v23.origin.x = v17;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v18 = a6 + a8 - CGRectGetMaxY(v23);
  if (v18 <= 0.0)
  {
    v19 = a2;
  }

  else
  {
    v19 = a2 + v18;
  }

  v24.origin.x = v17;
  v24.origin.y = v19;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMinY(v24);
  return v17;
}

double DKDUpdateFixedSizeRectToIncludeRectIfPossible(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  v58.origin.x = a5;
  v58.origin.y = a6;
  v58.size.width = a7;
  v58.size.height = a8;
  if (!CGRectIsNull(v58))
  {
    v59.origin.x = a5;
    v59.origin.y = a6;
    v59.size.width = a7;
    v59.size.height = a8;
    MinX = CGRectGetMinX(v59);
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v27 = DKDUpdateFixedSizeRectToIncludePoint(a1, a2, a3, a4, MinX, MinY, a9, a10);
    v52 = v28;
    v55 = v27;
    v50 = v29;
    v31 = v30;
    v61.origin.x = a5;
    v61.origin.y = a6;
    v61.size.width = a7;
    v61.size.height = a8;
    v32 = CGRectGetMinX(v61);
    v62.origin.x = a5;
    v62.origin.y = a6;
    v62.size.width = a7;
    v62.size.height = a8;
    MaxY = CGRectGetMaxY(v62);
    v34 = DKDUpdateFixedSizeRectToIncludePoint(v55, v52, v50, v31, v32, MaxY, a9, a10);
    v53 = v35;
    v56 = v34;
    v51 = v36;
    v38 = v37;
    v63.origin.x = a5;
    v63.origin.y = a6;
    v63.size.width = a7;
    v63.size.height = a8;
    MaxX = CGRectGetMaxX(v63);
    v64.origin.x = a5;
    v64.origin.y = a6;
    v64.size.width = a7;
    v64.size.height = a8;
    v40 = CGRectGetMinY(v64);
    v57 = DKDUpdateFixedSizeRectToIncludePoint(v56, v53, v51, v38, MaxX, v40, a9, a10);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v65.origin.x = a5;
    v65.origin.y = a6;
    v65.size.width = a7;
    v65.size.height = a8;
    v47 = CGRectGetMaxX(v65);
    v66.origin.x = a5;
    v66.origin.y = a6;
    v66.size.width = a7;
    v66.size.height = a8;
    v48 = CGRectGetMaxY(v66);
    return DKDUpdateFixedSizeRectToIncludePoint(v57, v42, v44, v46, v47, v48, a9, a10);
  }

  return a1;
}

double DKDUpdateFixedSizeRectToFitInsideRectIfPossible(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a1;
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  if (MinX < CGRectGetMinX(v22))
  {
    v23.origin.x = a5;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v14 = CGRectGetMinX(v23);
  }

  v24.origin.x = v14;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  if (MinY < CGRectGetMinY(v25))
  {
    v26.origin.x = a5;
    v26.origin.y = a6;
    v26.size.width = a7;
    v26.size.height = a8;
    a2 = CGRectGetMinY(v26);
  }

  v27.origin.x = v14;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  v18 = MaxX - CGRectGetMaxX(v28);
  if (v18 <= 0.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 - v18;
  }

  v29.origin.x = v19;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMaxY(v29);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  CGRectGetMaxY(v30);
  return v19;
}

BOOL DKDEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = vabdd_f64(a2, a6);
  if (vabdd_f64(a1, a5) >= a9 || v17 >= a9)
  {
    return 0;
  }

  v20 = vabdd_f64(a3, a7) < a9;
  return vabdd_f64(a4, a8) < a9 && v20;
}

BOOL DKDNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.01 && vabdd_f64(a2, a6) < 0.01)
  {
    v9 = vabdd_f64(a3, a7) < 0.01;
    return vabdd_f64(a4, a8) < 0.01 && v9;
  }

  return result;
}

BOOL DKDNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL DKDRectsOverlapVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL DKDRectsOverlapHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

uint64_t DKDLineIntersectsRect(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a4;
  v13 = a3;
  while (1)
  {
    v16 = p_ComputeOutcode(a1, a2, a5, a6, a7, a8);
    v17 = p_ComputeOutcode(v13, v12, a5, a6, a7, a8);
    result = 1;
    if (!v16 || !v17)
    {
      break;
    }

    if ((v17 & v16) != 0)
    {
      return 0;
    }

    v19 = (v13 + a1) * 0.5;
    v20 = (v12 + a2) * 0.5;
    v21 = DKDLineIntersectsRect(1, a1, a2, v19, v20, a5, a6, a7, a8);
    a1 = v19;
    a2 = v20;
    v13 = a3;
    v12 = a4;
    if (v21)
    {
      return 1;
    }
  }

  return result;
}

uint64_t p_ComputeOutcode(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

double DKDNearestPointOnInfiniteLineToPoint(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2] - *a1;
  v5 = a1[3] - v3;
  v6 = 1.0 / sqrt(v5 * v5 + v4 * v4);
  return *a1 + v4 * v6 * ((a3 - v3) * (v5 * v6) + (a2 - *a1) * (v4 * v6));
}

double DKDSizeWithMaxArea(double result, double a2, double a3, double a4)
{
  if (result * a2 <= a3 * a4)
  {
    return a3;
  }

  return result;
}

double DKDUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x1E695F058];
  }

  return a5;
}

double DKDHorizontalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double DKDVerticalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL DKDIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double DKDMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double DKDOrthogonalDistance(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a2 - a4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v4 + v5;
}

void DKDDistanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double DKDDistanceToRectFromRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v14 = a1;
  MidX = CGRectGetMidX(*&a1);
  v25.origin.x = v14;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MidY = CGRectGetMidY(v25);
  v17 = a5 + a7;
  if (MidX <= a5 + a7)
  {
    v17 = MidX;
  }

  if (MidX < a5)
  {
    v17 = a5;
  }

  v18 = a6 + a8;
  if (MidY <= a6 + a8)
  {
    v18 = MidY;
  }

  if (MidY >= a6)
  {
    v19 = v18;
  }

  else
  {
    v19 = a6;
  }

  if (v17 >= v14)
  {
    v20 = v14 + a3;
    v21 = v17 <= v14 + a3;
    v14 = v17;
    if (!v21)
    {
      v14 = v20;
    }
  }

  if (v19 >= a2)
  {
    v22 = a2 + a4;
    v21 = v19 <= a2 + a4;
    a2 = v19;
    if (!v21)
    {
      a2 = v22;
    }
  }

  return sqrt((v19 - a2) * (v19 - a2) + (v17 - v14) * (v17 - v14));
}

double DKDClampPointInRect(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 >= a3)
  {
    v5 = a3 + a5;
    a3 = a1;
    if (a1 > v5)
    {
      return v5;
    }
  }

  return a3;
}

double DKDCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double DKDRectGetMinPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MinX;
}

double DKDRectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double DKDRectGetBottomLeftPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

double DKDRectGetTopRightPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  return MaxX;
}

double DKDRectGetPointFromCorner(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      goto LABEL_9;
    }

    if (a1 != 1)
    {
      return *MEMORY[0x1E695EFF8];
    }

    MinX = CGRectGetMinX(*&a2);
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 4)
      {
        MaxX = CGRectGetMinX(*&a2);
        goto LABEL_13;
      }

      if (a1 != 8)
      {
        return *MEMORY[0x1E695EFF8];
      }

LABEL_9:
      MaxX = CGRectGetMaxX(*&a2);
LABEL_13:
      v11 = MaxX;
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMaxY(v14);
      return v11;
    }

    MinX = CGRectGetMaxX(*&a2);
  }

  v11 = MinX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMinY(v13);
  return v11;
}

double DKDGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double DKDFlipRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMidY(*&a1);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  return a1;
}

double DKDCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL DKDRectIsFinite(double a1, double a2, double a3, double a4)
{
  v5 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v6 = (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v5;
  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v6;
}

void DKDRectDivide(CGRect *a1, CGRect *a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    a1 = v8;
  }

  if (!a2)
  {
    a2 = v8;
  }

  CGRectDivide(*&a4, a1, a2, a8, a3);
}

uint64_t DKDGetCanvasSpaceCorners(float64x2_t *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v18 = a1[1];
  v47[0] = *a1;
  v47[1] = v18;
  v47[2] = a1[2];
  DKDTransformedCornersOfRect(v47, &v48, &v50, &v51, v52, a6, a7, a8, a9);
  v53.origin.x = a6;
  v53.origin.y = a7;
  v53.size.width = a8;
  v53.size.height = a9;
  MidX = CGRectGetMidX(v53);
  v54.origin.x = a6;
  v54.origin.y = a7;
  v54.size.width = a8;
  v54.size.height = a9;
  MidY = CGRectGetMidY(v54);
  v21 = 0;
  v22 = 0;
  v23 = MidY * a1[1].f64[0] + a1->f64[0] * MidX;
  v24 = 1000000.0;
  v25 = MidY * a1[1].f64[1] + a1->f64[1] * MidX;
  v26 = a1[2].f64[0] + v23;
  v27 = a1[2].f64[1] + v25;
  v28 = &v49;
  do
  {
    v29 = atan2(*v28 - v27, *(v28 - 1) - v26) * 57.2957795;
    v30 = fmod(v29, 360.0);
    v31 = v29 > 360.0 || v29 < 0.0;
    if (!v31)
    {
      v30 = v29;
    }

    if (v30 < 0.0)
    {
      v30 = v30 + 360.0;
    }

    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    v32 = fabs(360.0 - v30 + -135.0);
    if (v32 < v24)
    {
      v21 = v22;
      v24 = v32;
    }

    ++v22;
    v28 += 2;
  }

  while (v22 != 4);
  v33 = (v21 + 2) & 3;
  if (v21 + 2 <= 0)
  {
    v33 = -(-(v21 + 2) & 3);
  }

  v34 = *(&v48 + v33);
  *a2 = *(&v48 + v21);
  *a4 = v34;
  v35 = a1->f64[1] * a1[1].f64[0] - a1->f64[0] * a1[1].f64[1];
  v36 = v21 + 3;
  if (v35 > 0.0)
  {
    v37 = v21 + 1;
  }

  else
  {
    v37 = v21 + 3;
  }

  v38 = v37 & 3;
  if (v35 <= 0.0)
  {
    v36 = v21 + 1;
  }

  v39 = -v37;
  v31 = v39 < 0;
  v40 = v39 & 3;
  if (v31)
  {
    v41 = v38;
  }

  else
  {
    v41 = -v40;
  }

  *a5 = *(&v48 + v41);
  v42 = v36 & 3;
  v43 = -v36;
  v31 = v43 < 0;
  v44 = v43 & 3;
  if (v31)
  {
    v45 = v42;
  }

  else
  {
    v45 = -v44;
  }

  *a3 = *(&v48 + v45);
  return v21;
}

uint64_t DKDMixBOOLs(uint64_t result, unsigned int a2, double a3)
{
  if (a3 > 0.5)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void DKDMixAnglesInDegrees(long double a1, long double a2, double a3)
{
  v6 = fmod(a1, 360.0);
  if (a1 <= 360.0 && a1 >= 0.0)
  {
    v6 = a1;
  }

  if (v6 < 0.0)
  {
    v6 = v6 + 360.0;
  }

  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = fmod(a2, 360.0);
  if (a2 <= 360.0 && a2 >= 0.0)
  {
    v9 = a2;
  }

  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if (vabdd_f64(v9, v8) > 180.0)
  {
    if (v8 <= v9)
    {
      v9 = v9 + -360.0;
    }

    else
    {
      v9 = v9 + 360.0;
    }
  }

  fmod(v9 * a3 + v8 * (1.0 - a3), 360.0);
}

void DKDMixAnglesInRadians(long double a1, long double a2, double a3)
{
  v6 = fmod(a1, 6.28318531);
  if (a1 <= 6.28318531 && a1 >= 0.0)
  {
    v6 = a1;
  }

  if (v6 < 0.0)
  {
    v6 = v6 + 6.28318531;
  }

  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = fmod(a2, 6.28318531);
  if (a2 <= 6.28318531 && a2 >= 0.0)
  {
    v9 = a2;
  }

  if (v9 < 0.0)
  {
    v9 = v9 + 6.28318531;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if (vabdd_f64(v9, v8) > 3.14159265)
  {
    if (v8 <= v9)
    {
      v9 = v9 + -6.28318531;
    }

    else
    {
      v9 = v9 + 6.28318531;
    }
  }

  fmod(v9 * a3 + v8 * (1.0 - a3), 6.28318531);
}

double DKDMixNormalizedAnglesInRadians(double a1, double a2, double a3)
{
  v3 = vabdd_f64(a2, a1);
  result = a2 * a3 + a1 * (1.0 - a3);
  if (v3 > 3.14159265)
  {
    result = result + -3.14159265;
    if (result < 0.0)
    {
      return result + 6.28318531;
    }
  }

  return result;
}

double DKDTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

CGFloat DKDRectByPinningEdgeToRect(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v19.origin.x = a6;
      v19.origin.y = a7;
      v19.size.width = a8;
      v19.size.height = a9;
      MaxX = CGRectGetMaxX(v19);
      v20.origin.x = a2;
      v20.origin.y = a3;
      v20.size.width = a4;
      v20.size.height = a5;
      return MaxX - CGRectGetWidth(v20);
    }

    else if (a1 == 3)
    {
      v16.origin.x = a6;
      v16.origin.y = a7;
      v16.size.width = a8;
      v16.size.height = a9;
      CGRectGetMaxY(v16);
      v17.origin.x = a2;
      v17.origin.y = a3;
      v17.size.width = a4;
      v17.size.height = a5;
      CGRectGetHeight(v17);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v15.origin.x = a6;
      v15.origin.y = a7;
      v15.size.width = a8;
      v15.size.height = a9;
      CGRectGetMinY(v15);
    }
  }

  else
  {
    v18.origin.x = a6;
    v18.origin.y = a7;
    v18.size.width = a8;
    v18.size.height = a9;
    return CGRectGetMinX(v18);
  }

  return a2;
}

double DKDOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double DKDNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double DKDDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double DKDRotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double DKDNormalizeDifferenceAngleInDegrees(double a1, double a2)
{
  v2 = fmod(a1 - a2, 360.0);
  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  return fabs(v2);
}

double DKDNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = a1 + 3.14159265;
  v2 = fmod(a1 + 3.14159265, 6.28318531);
  if (v1 <= 6.28318531 && v1 >= 0.0)
  {
    v2 = v1;
  }

  if (v2 < 0.0)
  {
    v2 = v2 + 6.28318531;
  }

  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return v2 + -3.14159265;
}

void DKDRectFromNormalizedSubrect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

void DKDNormalizedSubrectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
}

double DKDRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double DKDSizeWithAspectRatio(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double DKDSizeExpandedToMatchAspectRatio(double result, double a2, double a3, double a4)
{
  v4 = result != a3;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = a3 <= 0.0 || !v4;
  if (!v5 && a4 > 0.0)
  {
    v6 = a3 / a4;
    if (v6 > result / a2)
    {
      return a2 * v6;
    }
  }

  return result;
}

double DKDScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double DKDShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double DKDFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  v6 = a5 / a3;
  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double DKDFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a7 / a3;
  if (a6 / a2 < a7 / a3 != a1)
  {
    v9 = a6 / a2;
  }

  return DKDCenterRectOverRect(0.0, 0.0, a2 * v9, a3 * v9, a4, a5, a6, a7);
}

void DKDScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

void DKDVisibleUnscaledRectForNewScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, a7, a7);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v17 = v18;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v14 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a6), *&v18.a, a5));
  DKDScaleRectAroundPoint(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, v14.f64[0], v14.f64[1], a7 / a8);
}

double DKDRectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double DKDAliasRound(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double DKDAliasRoundedPoint(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double DKDRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v19.origin.x = DKDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    v14 = round(CGRectGetMinX(v19));
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15 = round(CGRectGetMinY(v20));
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v16 = round(CGRectGetMaxX(v21)) - v14;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxY = CGRectGetMaxY(v22);
    return DKDMultiplyRectScalar(v14, v15, v16, round(MaxY) - v15, 1.0 / a5);
  }

  return v8;
}

double DKDAliasRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v34.origin.x = DKDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    MinX = CGRectGetMinX(v34);
    v15 = floor(MinX);
    v16 = MinX - v15;
    v17 = ceil(MinX);
    if (v16 >= 0.49)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinY = CGRectGetMinY(v35);
    v20 = floor(MinY);
    v21 = MinY - v20;
    v22 = ceil(MinY);
    if (v21 >= 0.49)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    v25 = floor(MaxX);
    v26 = MaxX - v25;
    v27 = ceil(MaxX);
    if (v26 < 0.49)
    {
      v27 = v25;
    }

    v33 = v27 - v18;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxY = CGRectGetMaxY(v37);
    v29 = floor(MaxY);
    v30 = MaxY - v29;
    v31 = ceil(MaxY);
    if (v30 < 0.49)
    {
      v31 = v29;
    }

    return DKDMultiplyRectScalar(v18, v23, v33, v31 - v23, 1.0 / a5);
  }

  return v8;
}

uint64_t DKDPointOrientation(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a4 - a2) * (a5 - a3) - (a3 - a1) * (a6 - a4);
  v7 = fabs(v6);
  if (v6 > 0.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v7 >= 0.000001)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

double drawing::Drawing::Drawing(drawing::Drawing *this)
{
  *this = &unk_1F476BBA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

{
  *this = &unk_1F476BBA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  return result;
}

void drawing::Drawing::~Drawing(drawing::Drawing *this)
{
  *this = &unk_1F476BBA0;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 13))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](this + 13);
    operator delete(*(this + 13));
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 12, 0);
  v5 = (this + 72);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 48);
  std::vector<PB::Data>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 3))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](this + 3);
    operator delete(*(this + 3));
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

{
  drawing::Drawing::~Drawing(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawing::Drawing *drawing::Drawing::Drawing(drawing::Drawing *this, const drawing::Drawing *a2)
{
  *this = &unk_1F476BBA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v6 = *(this + 17);
    *(this + 16) = v4;
    *(this + 17) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(this + 16) = v4;
    *(this + 17) = 0;
  }

  if (this != a2)
  {
    std::vector<PB::Data>::__assign_with_size[abi:ne200100]<PB::Data*,PB::Data*>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
  }

  if (*(a2 + 13) != *(a2 + 14))
  {
    operator new();
  }

  if (*(a2 + 3) != *(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 9) != *(a2 + 10))
  {
    PB::PtrVector<drawing::Stroke>::emplace_back<drawing::Stroke const&>();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 12))
  {
    operator new();
  }

  return this;
}

const drawing::Drawing *drawing::Drawing::operator=(const drawing::Drawing *a1, const drawing::Drawing *a2)
{
  if (a1 != a2)
  {
    drawing::Drawing::Drawing(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Drawing::~Drawing(v5);
  }

  return a1;
}

void *drawing::swap(void *this, drawing::Drawing *a2, drawing::Drawing *a3)
{
  v3 = this[16];
  this[16] = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = this[17];
  this[17] = *(a2 + 17);
  *(a2 + 17) = v4;
  v5 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = this[13];
  this[13] = *(a2 + 13);
  *(a2 + 13) = v8;
  v9 = this[14];
  this[14] = *(a2 + 14);
  *(a2 + 14) = v9;
  v10 = this[15];
  this[15] = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v16;
  v17 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v17;
  v18 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v18;
  v19 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v19;
  return this;
}

uint64_t drawing::Drawing::Drawing(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *a1 = &unk_1F476BBA0;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v7 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v8 = *(a1 + 136);
  *(a1 + 128) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::vector<PB::Data>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 104))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v6);
    operator delete(*v6);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 24))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate(v5);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 16);
  *(a2 + 16) = 0;
  v12 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 96);
  *(a2 + 96) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 96), v13);
  return a1;
}

void *drawing::Drawing::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawing::Drawing::Drawing(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Drawing::~Drawing(v5);
  }

  return a1;
}

uint64_t drawing::Drawing::formatText(drawing::Drawing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bounds");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "boundsVersion");
  }

  v7 = *(this + 3);
  v8 = *(this + 4);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "inks");
  }

  v10 = *(this + 6);
  for (i = *(this + 7); v10 != i; v10 += 16)
  {
    PB::TextFormatter::format();
  }

  v12 = *(this + 9);
  v13 = *(this + 10);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "strokes");
  }

  if (*(this + 12))
  {
    PB::TextFormatter::format();
  }

  v15 = *(this + 13);
  v16 = *(this + 14);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "versionVector");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Drawing::readFrom(drawing::Drawing *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  for (i = *(a2 + 24); v2 < v3 && (*(a2 + 24) & 1) == 0; i = *(a2 + 24))
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
LABEL_17:
          v22 = 0;
          LODWORD(v23) = 0;
          goto LABEL_18;
        }
      }

      i = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_22:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      i = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      switch(v23)
      {
        case 2:
          v25 = *(this + 7);
          if (v25 >= *(this + 8))
          {
            v26 = std::vector<PB::Data>::__emplace_back_slow_path<>(this + 48);
          }

          else
          {
            *v25 = 0;
            v25[1] = 0;
            v26 = (v25 + 2);
          }

          *(this + 7) = v26;
          PB::Reader::read(a2, (v26 - 16));
          goto LABEL_42;
        case 3:
          PB::PtrVector<drawing::StrokeID>::emplace_back<>();
        case 4:
          PB::PtrVector<drawing::Ink>::emplace_back<>();
      }
    }

    else if (v23 > 6)
    {
      if (v23 == 7)
      {
        operator new();
      }

      if (v23 == 8)
      {
        operator new();
      }
    }

    else
    {
      if (v23 == 5)
      {
        PB::PtrVector<drawing::Stroke>::emplace_back<>();
      }

      if (v23 == 6)
      {
        operator new();
      }
    }

LABEL_18:
    v24 = *(this + 16);
    if (!v24)
    {
      operator new();
    }

    if ((PKProtobufUnknownFields::add(v24, v23, v22, a2) & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }

LABEL_42:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
  }

  v28 = i ^ 1;
  return v28 & 1;
}

const void ***drawing::Drawing::writeTo(drawing::Drawing *this, PB::Writer *a2)
{
  v4 = *(this + 6);
  v5 = *(this + 7);
  while (v4 != v5)
  {
    PB::Writer::write(a2, v4);
    v4 = (v4 + 16);
  }

  v6 = *(this + 13);
  v7 = *(this + 14);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(this + 3);
  v10 = *(this + 4);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(this + 9);
  v13 = *(this + 10);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(this + 1);
  if (v15)
  {
    PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = *(this + 12);
  if (v17)
  {
    PB::Writer::write(a2, v17);
  }

  result = *(this + 16);
  if (result)
  {

    return PKProtobufUnknownFields::writeTo(result, a2);
  }

  return result;
}

uint64_t drawing::Drawing::operator==(uint64_t a1, uint64_t a2)
{
  result = PKProtobufUnknownFieldsCompare((a1 + 128), (a2 + 128));
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a2 + 48);
    if (v6 - v5 != *(a2 + 56) - v7)
    {
      return 0;
    }

    while (v5 != v6)
    {
      result = PB::Data::operator==();
      if (!result)
      {
        return result;
      }

      v5 += 16;
      v7 += 16;
    }

    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(a2 + 104);
    if (v9 - v8 != *(a2 + 112) - v10)
    {
      return 0;
    }

    while (v8 != v9)
    {
      result = drawing::StrokeID::operator==(*v8, *v10);
      if (!result)
      {
        return result;
      }

      ++v8;
      ++v10;
    }

    v11 = *(a2 + 24);
    v13 = *(a1 + 24);
    v12 = *(a1 + 32);
    if (v12 - v13 != *(a2 + 32) - v11)
    {
      return 0;
    }

    while (v13 != v12)
    {
      result = drawing::Ink::operator==(*v13, *v11);
      if (!result)
      {
        return result;
      }

      ++v13;
      ++v11;
      v12 = *(a1 + 32);
    }

    result = PB::PtrVector<drawing::Stroke>::operator==((a1 + 72), (a2 + 72));
    if (result)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
      if (v14)
      {
        if (!v15 || !drawing::Rectangle::operator==(v14, v15))
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }

      v16 = *(a1 + 16);
      v17 = *(a2 + 16);
      if (v16)
      {
        if (!v17 || !drawing::StrokeID::operator==(v16, v17))
        {
          return 0;
        }

LABEL_25:
        if (!*(a1 + 96))
        {
          return *(a2 + 96) == 0;
        }

        if (*(a2 + 96))
        {
          if (PB::Data::operator==())
          {
            return 1;
          }

          if (!*(a1 + 96))
          {
            return *(a2 + 96) == 0;
          }
        }

        return 0;
      }

      if (!v17)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  return result;
}

uint64_t drawing::Drawing::hash_value(drawing::Drawing *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v2 += 16;
      v4 ^= PBHashBytes();
    }

    while (v2 != v3);
  }

  v5 = *(this + 13);
  v6 = *(this + 14);
  if (v5 != v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *v5;
      if (*(*v5 + 32))
      {
        v9 = v8[1];
        if ((*(*v5 + 32) & 2) == 0)
        {
LABEL_10:
          v10 = 0;
          if ((*(*v5 + 32) & 4) != 0)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
        if ((*(*v5 + 32) & 2) == 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v8[2];
      if ((*(*v5 + 32) & 4) != 0)
      {
LABEL_14:
        v11 = v8[3];
        goto LABEL_15;
      }

LABEL_11:
      v11 = 0;
LABEL_15:
      v7 ^= v9 ^ v10 ^ v11;
      v5 += 8;
      if (v5 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = 0;
LABEL_18:
  v12 = *(this + 3);
  v13 = *(this + 4);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 ^= drawing::Ink::hash_value(v15);
    }

    while (v12 != v13);
  }

  v16 = *(this + 9);
  v17 = *(this + 10);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v16++;
      v18 ^= drawing::Stroke::hash_value(v19);
    }

    while (v16 != v17);
  }

  v20 = *(this + 1);
  if (v20)
  {
    v21 = drawing::Rectangle::hash_value(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(this + 2);
  if (!v22)
  {
    v26 = 0;
    goto LABEL_41;
  }

  if ((*(v22 + 32) & 1) == 0)
  {
    v23 = 0;
    if ((*(v22 + 32) & 2) != 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    if ((*(v22 + 32) & 4) != 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    v25 = 0;
    goto LABEL_40;
  }

  v23 = *(v22 + 8);
  if ((*(v22 + 32) & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v24 = *(v22 + 16);
  if ((*(v22 + 32) & 4) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v25 = *(v22 + 24);
LABEL_40:
  v26 = v24 ^ v23 ^ v25;
LABEL_41:
  if (*(this + 12))
  {
    v27 = PBHashBytes();
  }

  else
  {
    v27 = 0;
  }

  return v7 ^ v4 ^ v14 ^ v21 ^ v26 ^ v27 ^ v18;
}

uint64_t drawing::Drawing::makeBounds(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Drawing::makeBoundsVersion(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

__CFString *PKTextInputDescriptionForWritingState(uint64_t a1)
{
  v1 = @"Active";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Idle";
  }
}

void sub_1C7FE4F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7FEC130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C7FEDA30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x1EEE692E0]();
}

{
  return MEMORY[0x1EEE692F8]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x1EEE69360]();
}

{
  return MEMORY[0x1EEE69378]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACD8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x1EEDBAC40](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x1EEE4DB28](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x1EEE4DB30](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC6FE8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x1EEE30A48]();
}

{
  return MEMORY[0x1EEE30A50]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A58](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

{
  return MEMORY[0x1EEE30A88](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x1EEE30AC8]();
}

{
  return MEMORY[0x1EEE30AD0]();
}

uint64_t PB::Writer::writeFixed(PB::Writer *this)
{
  return MEMORY[0x1EEE30AF0](this);
}

{
  return MEMORY[0x1EEE30B00](this);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

{
  return MEMORY[0x1EEE30B20](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x1EEE30B38]();
}

{
  return MEMORY[0x1EEE30B40]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}