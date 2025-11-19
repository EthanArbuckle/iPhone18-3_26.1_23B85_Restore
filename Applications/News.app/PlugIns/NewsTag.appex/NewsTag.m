void ITColor::ITColor(ITColor *this)
{
  this->mRed = 0.0;
  this->mGreen = 0.0;
  this->mBlue = 0.0;
  this->mAlpha = 1.0;
}

void ITColor::ITColor(ITColor *this, double a2, double a3, double a4, double a5)
{
  this->mRed = a2;
  this->mGreen = a3;
  this->mBlue = a4;
  this->mAlpha = a5;
}

double ITColor::CreateFromHSVColor(double *a1)
{
  v4 = 0.0;
  v2 = 0;
  v3 = 0;
  sub_1000027DC(&v4, &v3, &v2, *a1, a1[1], a1[2]);
  return v4;
}

double *sub_1000027DC(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a5 > 1.0)
  {
    a5 = 1.0;
  }

  if (a5 >= 0.0)
  {
    v6 = a5;
  }

  else
  {
    v6 = 0.0;
  }

  if (a6 <= 1.0)
  {
    v7 = a6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v6 == 0.0)
  {
    *result = v7;
    *a2 = v7;
    goto LABEL_13;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  v8 = a4 * 6.0;
  v9 = v8;
  v10 = v6 * v7 * (v8 - v8);
  v11 = v7 - v6 * v7;
  v12 = v11 + v10;
  if (v11 + v10 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v7 - v10;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v11;
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v7;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v17 = v15;
      if (v9 != 4)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v9)
  {
    v17 = v15;
    if (v9 != 1)
    {
LABEL_34:
      v17 = v16;
    }
  }

  *result = v17;
  v18 = v7;
  if ((v9 - 1) >= 2)
  {
    v19 = v9 == 3 || v9 == 0;
    v18 = v15;
    if (!v19)
    {
      v18 = v16;
    }
  }

  *a2 = v18;
  if ((v9 - 3) >= 2)
  {
    v20 = v9 == 5 || v9 == 2;
    v7 = v15;
    if (!v20)
    {
      v7 = v16;
    }
  }

LABEL_13:
  *a3 = v7;
  return result;
}

double ITColor::CreateFromHSVDoubles(ITColor *this, double a2, double a3, double a4)
{
  v7 = 0.0;
  v5 = 0;
  v6 = 0;
  sub_1000027DC(&v7, &v6, &v5, a2, a3, a4);
  return v7;
}

double *sub_10000297C(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= 1.0)
  {
    a4 = 1.0;
  }

  v6 = 0.0;
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a5 >= 1.0)
  {
    a5 = 1.0;
  }

  if (a5 < 0.0)
  {
    a5 = 0.0;
  }

  if (a6 >= 1.0)
  {
    a6 = 1.0;
  }

  if (a6 >= 0.0)
  {
    v7 = a6;
  }

  else
  {
    v7 = 0.0;
  }

  if (a5 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  if (a5 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (v7 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v7;
  }

  if (v7 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (a5 <= v7)
  {
    v8 = v10;
  }

  if (a5 >= v7)
  {
    v9 = v11;
  }

  if (v8 <= 1.0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1.0;
  }

  *a3 = v12;
  if (v8 == 0.0)
  {
    *a2 = 0.0;
  }

  else
  {
    v13 = v8 - v9;
    v14 = v13 / v8;
    if (v13 / v8 <= 1.0)
    {
      *a2 = v14;
      if (v14 == 0.0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *a2 = 1.0;
    }

    if (v13 == 0.0)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v6 = (v8 - a4) / v13;
      v15 = (v8 - a5) / v13;
      v16 = (v8 - v7) / v13;
    }

    if (a4 == v8)
    {
      v17 = v16 - v15;
    }

    else if (a5 == v8)
    {
      v17 = v6 + 2.0 - v16;
    }

    else
    {
      v17 = v15 + 4.0 - v6;
    }

    v18 = v17 / 6.0;
    if (v18 < 0.0)
    {
      v18 = v18 + 1.0;
    }

    if (v18 <= 1.0)
    {
      v6 = v18;
    }

    else
    {
      v6 = 1.0;
    }
  }

LABEL_51:
  *result = v6;
  return result;
}

void ITColor::GetLuminance(ITColor *this)
{
  v1 = 0;
  v4 = *&this->mRed;
  mBlue = this->mBlue;
  do
  {
    v2 = *(&v4 + v1);
    if (v2 <= 0.0392800011)
    {
      v3 = v2 / 12.9200001;
    }

    else
    {
      v3 = pow((v2 + 0.0549999997) / 1.05499995, 2.4);
    }

    *(&v4 + v1) = v3;
    v1 += 8;
  }

  while (v1 != 24);
}

double ITColor::GetContrastWithColor(ITColor *this, ITColor *a2)
{
  ITColor::GetLuminance(a2);
  v4 = v3;
  ITColor::GetLuminance(this);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 > v4)
  {
    v5 = v4;
  }

  return (v6 + 0.0500000007) / (v5 + 0.0500000007);
}

double ITColor::GetContrastWithLuminance(ITColor *this, double a2)
{
  ITColor::GetLuminance(this);
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a2)
  {
    v3 = a2;
  }

  return (v4 + 0.0500000007) / (v3 + 0.0500000007);
}

double ITColor::CreateBlendedColorWithFraction(ITColor *this, double a2, ITColor a3)
{
  if (a2 < 1.0)
  {
    if (a2 <= 0.0)
    {
      a3.mRed = this->mRed;
    }

    else
    {
      a3.mRed = (1.0 - a2) * this->mRed + a3.mRed * a2;
    }
  }

  return a3.mRed;
}

BOOL isCloseToColor(ITColor *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 && (a3 < 0.0500000007 && a7 < 0.0500000007 || a5 < 0.0149999997 && a9 < 0.0149999997))
  {
    v34.mRed = ITColor::CreateFromHSVDoubles(a1, a2, a3, a4);
    v34.mGreen = v23;
    v34.mBlue = v24;
    v34.mAlpha = v25;
    v33.mRed = ITColor::CreateFromHSVDoubles(v26, a6, a7, a8);
    v33.mGreen = v27;
    v33.mBlue = v28;
    v33.mAlpha = v29;
    if (ITColor::GetContrastWithColor(&v34, &v33) <= 1.65999997)
    {
      return 1;
    }
  }

  if (vabdd_f64(a3, a7) > a10 || vabdd_f64(a4, a8) > a10)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= a10)
  {
    return 1;
  }

  v31 = a2 + 1.0;
  if (a2 >= a10)
  {
    v31 = a2;
  }

  v32 = a6 + 1.0;
  if (a6 >= a10)
  {
    v32 = a6;
  }

  return vabdd_f64(v31, v32) <= a10;
}

void ImageAnalyzer::ImageAnalyzer(ImageAnalyzer *this)
{
  ITColor::ITColor((this + 40));
  ITColor::ITColor((this + 72));
  ITColor::ITColor((this + 104));
  ITColor::ITColor((this + 136));
  ITColor::ITColor((this + 168));
  ITColor::ITColor((this + 200));
  ITColor::ITColor((this + 232));
  ITColor::ITColor((this + 264));
  ITColor::ITColor((this + 296));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
}

void ImageAnalyzer::~ImageAnalyzer(ImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
    *(this + 2) = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
    *(this + 1) = 0;
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 42) = v6;
    operator delete(v6);
  }
}

uint64_t ImageAnalyzer::AnalyzeImage(ImageAnalyzer *this, CGContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ImageAnalyzer::GenerateColorMaps(this, a2);
  if (result)
  {
    result = ImageAnalyzer::QuantizeColorMaps(this);
    if (result)
    {
      ImageAnalyzer::PickBackgroundColor(this);
      ImageAnalyzer::PickTextColors(this);
      ImageAnalyzer::DoPostImageAnalysis(this);
      return 1;
    }
  }

  return result;
}

uint64_t ImageAnalyzer::GenerateColorMaps(ImageAnalyzer *this, CGContextRef context)
{
  if (!context)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  result = 0;
  if (Height == 102 && Width == 102)
  {
    ITColor::ITColor(&v34);
    BitmapInfo = CGBitmapContextGetBitmapInfo(context);
    result = CGBitmapContextGetData(context);
    v32 = result;
    if (result)
    {
      result = malloc_type_calloc(0x28A4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *this = result;
      if (result)
      {
        result = malloc_type_calloc(0x28A4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
        *(this + 1) = result;
        if (result)
        {
          v11 = 0;
          v12 = BitmapInfo & 0x3000;
          for (i = 1; i != 101; ++i)
          {
            v14 = 0;
            v15 = 24;
            do
            {
              v16 = v32 + BytesPerRow * i + v14;
              if (v12)
              {
                v17 = 4;
              }

              else
              {
                v17 = 7;
              }

              if (v12)
              {
                v18 = 5;
              }

              else
              {
                v18 = 6;
              }

              if (v12)
              {
                v19 = 6;
              }

              else
              {
                v19 = 5;
              }

              LOBYTE(v8) = *(v16 + v19);
              LOBYTE(v9) = *(v16 + v18);
              LOBYTE(v10) = *(v16 + v17);
              ITColor::ITColor(&v35, *&v8 / 255.0, *&v9 / 255.0, v10 / 255.0, 1.0);
              v34 = v35;
              HSVColor = ITColor::GetHSVColor(&v35);
              v22 = v21;
              v24 = v23;
              ITColor::GetLuminance(&v35);
              v25 = *this + v11;
              v26 = (v25 + v15);
              *(v26 - 3) = HSVColor;
              v27 = v25 + 8 * v14;
              *(v27 + 8) = v22;
              *(v27 + 16) = v24;
              *v26 = v28;
              v29 = *(this + 1) + v11;
              v30 = (v29 + v15);
              *(v30 - 3) = HSVColor;
              v31 = v29 + 8 * v14;
              *(v31 + 8) = v22;
              *(v31 + 16) = v24;
              *v30 = v28;
              v9 = *(this + 48);
              v8 = v28 + v9;
              *(this + 48) = v8;
              v14 += 4;
              v15 += 32;
            }

            while (v14 != 400);
            v11 += 3200;
          }

          *(this + 48) = v8 / 10000.0;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t ImageAnalyzer::QuantizeColorMaps(ImageAnalyzer *this)
{
  result = malloc_type_calloc(0x2710uLL, 8uLL, 0x100004000313F17uLL);
  *(this + 2) = result;
  if (result)
  {
    result = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v6 = 1;
      do
      {
        if ((v3[v5] & 1) == 0)
        {
          v7 = (*this + 32 * v5);
          v8 = ImageAnalyzer::WeightForPointOnEdge(result, v5 - 100 * (v5 / 0x64u), v5 / 0x64u);
          v23 = *v7;
          v24 = v7[1];
          v30[0] = *v7;
          v30[1] = v24;
          v31 = v5;
          v32 = v8;
          v34 = v4;
          sub_100003CE4(&v33, v30);
          *(*(this + 2) + 8 * v5) = v32;
          v3[v5] = 1;
          if (v5 <= 0x270E)
          {
            v9 = v6;
            do
            {
              if ((v3[v9] & 1) == 0)
              {
                v10 = *this + 32 * v9;
                v25 = *(v10 + 16);
                v26 = *v10;
                result = isCloseToColor(0, *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), *v10, *(v10 + 8), *&v25, *(v10 + 24), 0.0799999982);
                if (result)
                {
                  v11 = ImageAnalyzer::WeightForPointOnEdge(result, v9 - 100 * (v9 / 0x64u), v9 / 0x64u);
                  v27[0] = v26;
                  v27[1] = v25;
                  v28 = v9;
                  v29 = v11;
                  ImageAnalyzer::AddQuantizeColorEntryToSet(v12, v27, &v33);
                  v3[v9] = 1;
                }
              }

              ++v9;
            }

            while (v9 != 10000);
          }

          v4 = v33;
          if (v34 != v33)
          {
            *&v27[0] = CompareQuantizeSortcolor;
            sub_100004C34(v33, v34, v27, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v34 - v33)), 1);
            v4 = v33;
            v13 = *(v33 + 8);
            v14 = *(v33 + 5);
            v15 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
            if (v15 >= 2)
            {
              v16 = v33 + 11;
              v17 = v15 - 1;
              do
              {
                v18 = *(v16 - 2);
                v19 = *v16;
                if ((v3[v18] & 1) == 0)
                {
                  v3[v18] = 1;
                }

                v14 = v14 + v19;
                v16 += 6;
                v20 = (*this + 32 * v13);
                v21 = v20[1];
                v22 = (*this + 32 * v18);
                *v22 = *v20;
                v22[1] = v21;
                --v17;
              }

              while (v17);
            }

            *(*(this + 2) + 8 * v13) = v14;
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 10000);
      free(v3);
      if (v4)
      {
        v34 = v4;
        operator delete(v4);
      }

      return 1;
    }
  }

  return result;
}

void sub_100003420(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ImageAnalyzer::PickBackgroundColor(ImageAnalyzer *this)
{
  v2 = *(this + 48);
  v3 = ImageAnalyzer::DominantColors(this);
  v4 = *(*v3 + 16);
  *(this + 40) = **v3;
  *(this + 56) = v4;
  v5 = *(this + 56);
  *&v29.mRed = *(this + 40);
  *&v29.mBlue = v5;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    ContrastWithLuminance = ITColor::GetContrastWithLuminance((this + 40), 0.180000007);
    v7 = (*(v3 + 8) - *v3) >> 5;
    if (v7 >= 2)
    {
      v8 = ContrastWithLuminance;
      if (v7 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      for (i = 1; i != v9; ++i)
      {
        v11 = *(this + 44);
        v12 = v11[i];
        if (v12 <= 0.0)
        {
          break;
        }

        v13 = *v11 / v12;
        if (v13 <= 0.9 || v13 >= 1.112)
        {
          break;
        }

        v14 = ITColor::GetContrastWithLuminance((*v3 + 32 * i), 0.180000007);
        if (v14 > v8)
        {
          v15 = (*v3 + 32 * i);
          v16 = *v15;
          *(this + 56) = v15[1];
          *(this + 40) = v16;
          v8 = v14;
        }
      }
    }
  }

  v17 = *(this + 56);
  *&v29.mRed = *(this + 40);
  *&v29.mBlue = v17;
  if (ITColor::GetContrastWithLuminance(&v29, 0.180000007) < 1.29999995)
  {
    HSVColor = ITColor::GetHSVColor((this + 40));
    v28.f64[0] = v18.f64[0];
    v28.f64[1] = v19;
    if (v2 < 0.180000007 || (v25 = v19, v26 = v18.f64[0], v20 = *(this + 56), *&v29.mRed = *(this + 40), *&v29.mBlue = v20, ITColor::GetLuminance(&v29), v19 = v25, v18.f64[0] = v26, v21 < 0.180000007))
    {
      v18.f64[1] = v19;
      v28 = vmulq_f64(v18, xmmword_1000A99B0);
    }

    *(this + 5) = ITColor::CreateFromHSVColor(&HSVColor);
    *(this + 6) = v22;
    *(this + 7) = v23;
    *(this + 8) = v24;
  }
}

void ImageAnalyzer::PickTextColors(ImageAnalyzer *this)
{
  v2 = ImageAnalyzer::DominantColors(this);
  v3 = *(v2 + 8) - *v2;
  v4 = v3 >> 5;
  if ((v3 >> 5) < 2)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_33;
  }

  v5 = v2;
  ContrastWithColor = ITColor::GetContrastWithColor((*v2 + 32), (this + 40));
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = (v3 >> 5);
  v10 = v3 >> 5;
  v11 = 1;
  v89 = v10;
  v12 = 1;
  v13 = 1;
  v14 = ContrastWithColor;
  do
  {
    v15 = (*v5 + v7);
    v16 = v15[1];
    *&v90.mRed = *v15;
    *&v90.mBlue = v16;
    if (v8)
    {
      v8 = 1;
    }

    else if (contrastsWithColor(v90, *(this + 40)))
    {
      ImageAnalyzer::EnhanceContrastWithColor(v90, *(this + 40), 0.449999988);
      *(this + 9) = v17;
      *(this + 10) = v18;
      *(this + 11) = v19;
      *(this + 12) = v20;
      v8 = 1;
      LODWORD(v10) = v11;
    }

    else
    {
      v8 = 0;
    }

    v21 = ITColor::GetContrastWithColor(&v90, (this + 40));
    if (v21 > v14)
    {
      if (v21 <= ContrastWithColor)
      {
        v14 = v21;
        v13 = v11 - 1;
      }

      else
      {
        v14 = ContrastWithColor;
        ContrastWithColor = v21;
        v13 = v12;
        v12 = v11 - 1;
      }
    }

    ++v11;
    v7 += 32;
  }

  while (32 * v9 != v7);
  LODWORD(v4) = v89;
  if (v10 >= v89)
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    v22 = v10;
    v23 = 32 * v10;
    v24 = v22 - v9;
    v25 = v22 + 1;
    v26 = 1;
    while (1)
    {
      v27 = (*v5 + v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v91.mRed = *v27;
      v91.mGreen = v29;
      v91.mBlue = v30;
      v91.mAlpha = v31;
      if (contrastsEnoughWithColor(v91, *(this + 40)))
      {
        break;
      }

      v26 = v25 < v9;
      v23 += 32;
      ++v25;
      if (__CFADD__(v24++, 1))
      {
        LOBYTE(v26) = 0;
        LODWORD(v4) = v89;
        goto LABEL_23;
      }
    }

    v92.mRed = v28;
    v92.mGreen = v29;
    v92.mBlue = v30;
    v92.mAlpha = v31;
    ImageAnalyzer::EnhanceContrastWithColor(v92, *(this + 40), 0.449999988);
    *(this + 13) = v35;
    *(this + 14) = v36;
    *(this + 15) = v37;
    *(this + 16) = v38;
    LODWORD(v4) = v89;
    if (v8 & v26)
    {
      v33 = 1;
      v34 = 1;
      goto LABEL_33;
    }
  }

LABEL_23:
  ITColor::ITColor(&v90);
  if (v8)
  {
LABEL_26:
    v34 = 1;
    if (v26)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  ImageAnalyzer::EnhanceContrastWithColor(*(*v5 + 32 * v12), *(this + 40), 0.200000003);
  v90 = v93;
  if (contrastsEnoughWithColor(v93, *(this + 40)))
  {
    ImageAnalyzer::EnhanceContrastWithColor(v90, *(this + 40), 0.449999988);
    *(this + 9) = v39;
    *(this + 10) = v40;
    *(this + 11) = v41;
    *(this + 12) = v42;
    goto LABEL_26;
  }

  v34 = 0;
  if (v26)
  {
LABEL_31:
    v33 = 1;
    goto LABEL_33;
  }

LABEL_29:
  ImageAnalyzer::EnhanceContrastWithColor(*(*v5 + 32 * v13), *(this + 40), 0.200000003);
  v90 = v94;
  if (contrastsEnoughWithColor(v94, *(this + 40)))
  {
    ImageAnalyzer::EnhanceContrastWithColor(v90, *(this + 40), 0.449999988);
    *(this + 13) = v43;
    *(this + 14) = v44;
    *(this + 15) = v45;
    *(this + 16) = v46;
    goto LABEL_31;
  }

  v33 = 0;
LABEL_33:
  v47 = *(this + 56);
  *&v90.mRed = *(this + 40);
  *&v90.mBlue = v47;
  ITColor::GetLuminance(&v90);
  v48 = (this + 72);
  v50 = *(this + 10);
  v49 = *(this + 11);
  v51 = *(this + 12);
  if (v52 >= 0.180000007)
  {
    v90.mRed = *(this + 9);
    v90.mGreen = v50;
    v90.mBlue = v49;
    v90.mAlpha = v51;
    ITColor::GetLuminance(&v90);
    if (v53 < 0.180000007)
    {
      v54 = v34;
    }

    else
    {
      v54 = 0;
    }

    v55 = *(this + 120);
    *&v90.mRed = *(this + 104);
    *&v90.mBlue = v55;
    ITColor::GetLuminance(&v90);
    if (v56 >= 0.180000007)
    {
      v33 = 0;
    }

    if (v54)
    {
      goto LABEL_57;
    }

LABEL_47:
    v61 = *(this + 56);
    *&v90.mRed = *(this + 40);
    *&v90.mBlue = v61;
    ITColor::GetLuminance(&v90);
    if (v62 < 0.180000007)
    {
      if (v4)
      {
        v63 = *(this + 5);
        v64 = *(this + 6);
        v65 = *(this + 7);
        v66 = *(this + 8);
        v67 = &ITColor::kWhite;
        goto LABEL_52;
      }

      v72 = &ITColor::kWhite;
    }

    else
    {
      if (v4)
      {
        v63 = *(this + 5);
        v64 = *(this + 6);
        v65 = *(this + 7);
        v66 = *(this + 8);
        v67 = &ITColor::kBlack;
LABEL_52:
        BlendedColorWithFraction = ITColor::CreateBlendedColorWithFraction(v67, 0.0500000007, *&v63);
LABEL_56:
        *(this + 9) = BlendedColorWithFraction;
        *(this + 10) = v69;
        *(this + 11) = v70;
        *(this + 12) = v71;
        goto LABEL_57;
      }

      v72 = &ITColor::kBlack;
    }

    BlendedColorWithFraction = *v72;
    v69 = *(v72 + 1);
    v70 = *(v72 + 2);
    v71 = *(v72 + 3);
    goto LABEL_56;
  }

  v90.mRed = *(this + 9);
  v90.mGreen = v50;
  v90.mBlue = v49;
  v90.mAlpha = v51;
  ITColor::GetLuminance(&v90);
  if (v57 >= 0.180000007)
  {
    v58 = v34;
  }

  else
  {
    v58 = 0;
  }

  v59 = *(this + 120);
  *&v90.mRed = *(this + 104);
  *&v90.mBlue = v59;
  ITColor::GetLuminance(&v90);
  if (v60 < 0.180000007)
  {
    v33 = 0;
  }

  if ((v58 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_57:
  if (v33)
  {
    goto LABEL_68;
  }

  v73 = *(this + 56);
  *&v90.mRed = *(this + 40);
  *&v90.mBlue = v73;
  ITColor::GetLuminance(&v90);
  if (v74 < 0.180000007)
  {
    if (v4)
    {
      v75 = *(this + 5);
      v76 = *(this + 6);
      v77 = *(this + 7);
      v78 = *(this + 8);
      v79 = &ITColor::kWhite;
      goto LABEL_63;
    }

    v84 = &ITColor::kWhite;
LABEL_66:
    v80 = *v84;
    v81 = *(v84 + 1);
    v82 = *(v84 + 2);
    v83 = *(v84 + 3);
    goto LABEL_67;
  }

  if (!v4)
  {
    v84 = &ITColor::kBlack;
    goto LABEL_66;
  }

  v75 = *(this + 5);
  v76 = *(this + 6);
  v77 = *(this + 7);
  v78 = *(this + 8);
  v79 = &ITColor::kBlack;
LABEL_63:
  v80 = ITColor::CreateBlendedColorWithFraction(v79, 0.100000001, *&v75);
LABEL_67:
  *(this + 13) = v80;
  *(this + 14) = v81;
  *(this + 15) = v82;
  *(this + 16) = v83;
LABEL_68:
  v85 = ITColor::GetContrastWithColor((this + 72), (this + 40));
  if (ITColor::GetContrastWithColor((this + 104), (this + 40)) > v85)
  {
    v87 = *v48;
    v86 = *(this + 88);
    v88 = *(this + 120);
    *v48 = *(this + 104);
    *(this + 88) = v88;
    *(this + 104) = v87;
    *(this + 120) = v86;
  }
}

void ImageAnalyzer::DoPostImageAnalysis(ImageAnalyzer *this)
{
  v2 = (this + 40);
  *(this + 17) = ITColor::CreateBlendedColorWithFraction((this + 72), 0.200000003, *(this + 40));
  *(this + 18) = v3;
  *(this + 19) = v4;
  *(this + 20) = v5;
  *(this + 21) = ITColor::CreateBlendedColorWithFraction((this + 104), 0.200000003, *v2);
  *(this + 22) = v6;
  *(this + 23) = v7;
  *(this + 24) = v8;
  ImageAnalyzer::CalculateOneShadowColor(v9, (this + 72), v2);
  *(this + 25) = v10;
  *(this + 26) = v11;
  *(this + 27) = v12;
  *(this + 28) = v13;
  ImageAnalyzer::CalculateOneShadowColor(v14, (this + 104), v2);
  *(this + 33) = v15;
  *(this + 34) = v16;
  *(this + 35) = v17;
  *(this + 36) = v18;
  ImageAnalyzer::CalculateOneShadowColor(v19, (this + 136), v2);
  *(this + 29) = v20;
  *(this + 30) = v21;
  *(this + 31) = v22;
  *(this + 32) = v23;
  ImageAnalyzer::CalculateOneShadowColor(v24, (this + 168), v2);
  *(this + 37) = v25;
  *(this + 38) = v26;
  *(this + 39) = v27;
  *(this + 40) = v28;
}

double ImageAnalyzer::AddQuantizeColorEntryToSet(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
LABEL_5:

    sub_100003CE4(a3, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (!isCloseToColor(0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(v5 + v6), *(v5 + v6 + 8), *(v5 + v6 + 16), *(v5 + v6 + 24), 0.0799999982))
    {
      ++v7;
      v5 = *a3;
      v6 += 48;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *a3 + v6;
    result = *(a2 + 40) + *(v9 + 40);
    *(v9 + 40) = result;
  }

  return result;
}

void sub_100003CE4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_100004B00();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_100004BA8(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

double ImageAnalyzer::WeightForPointOnEdge(ImageAnalyzer *this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  if (a2 <= 0x14 && a3 <= 0x14)
  {
    v4 = a3;
    v5 = 20.0000003 - v3;
LABEL_4:
    v6 = 20.0000003 - v4;
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v7 = v5 * 0.75;
    v8 = v6 * 0.75;
    if (v8 <= v7)
    {
      v8 = v7;
    }

    goto LABEL_16;
  }

  if (a2 > 0x14)
  {
    if (a2 >= 0x50 && a3 <= 0x14)
    {
      v4 = a3;
      v5 = 79.9999997 - v3;
      goto LABEL_4;
    }

    v8 = 1.0;
    if (a2 < 0x50)
    {
      goto LABEL_16;
    }

    v9 = 79.9999997;
  }

  else
  {
    v9 = 20.0000003;
  }

  v10 = v9 - v3;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  v8 = v10 * 0.75;
LABEL_16:
  result = 1.0;
  if (v8 >= 1.0)
  {
    return v8;
  }

  return result;
}

uint64_t ImageAnalyzer::DominantColors(ImageAnalyzer *this)
{
  if (*(this + 42) == *(this + 41))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    ITColor::ITColor(&v13);
    for (i = 0; i != 10000; ++i)
    {
      if (*(*(this + 2) + 8 * i) >= 1.0)
      {
        v12[0] = *(*(this + 2) + 8 * i);
        v13.mRed = ITColor::CreateFromHSVDoubles(v2, *(*this + 32 * i), *(*this + 32 * i + 8), *(*this + 32 * i + 16));
        v13.mGreen = v4;
        v13.mBlue = v5;
        v13.mAlpha = v6;
        v14 = *(*this + 32 * i + 24);
        ImageAnalyzer::AddDominantColorEntryToSet(v7, v12, &v15);
      }
    }

    v8 = v15;
    if (v16 != v15)
    {
      v18 = CompareSortColor;
      sub_100007104(v15, v16, &v18, 126 - 2 * __clz((v16 - v15) >> 6), 1);
      sub_100004578(this + 41, (v16 - v15) >> 6);
      sub_100004618(this + 44, (v16 - v15) >> 6);
      v8 = v15;
      if (v16 != v15)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          sub_1000046B8(this + 328, &v8[v10]);
          sub_100004790(this + 44, &v15[v10 - 1]);
          ++v9;
          v8 = v15;
          v10 += 4;
        }

        while (v9 < (v16 - v15) >> 6);
      }
    }

    if (v8)
    {
      v16 = v8;
      operator delete(v8);
    }
  }

  return this + 328;
}

void sub_100004050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL contrastsWithColor(ITColor a1, ITColor a2)
{
  mAlpha = a2.mAlpha;
  mBlue = a2.mBlue;
  mGreen = a2.mGreen;
  mRed = a2.mRed;
  v11 = a1;
  v10 = a2;
  v12 = a1;
  ITColor::GetLuminance(&v12);
  v7 = v6 >= 0.180000007;
  v12.mRed = mRed;
  v12.mGreen = mGreen;
  v12.mBlue = mBlue;
  v12.mAlpha = mAlpha;
  ITColor::GetLuminance(&v12);
  return v7 != v8 >= 0.180000007 && ITColor::GetContrastWithColor(&v11, &v10) >= 4.5999999;
}

void ImageAnalyzer::EnhanceContrastWithColor(ITColor a1, ITColor a2, double a3)
{
  mAlpha = a2.mAlpha;
  mBlue = a2.mBlue;
  mGreen = a2.mGreen;
  mRed = a2.mRed;
  v16 = a1;
  HSVColor = ITColor::GetHSVColor(&v16);
  v9 = v8;
  v11 = v10;
  ITColor::GetLuminance(&v16);
  v16.mRed = mRed;
  v16.mGreen = mGreen;
  v16.mBlue = mBlue;
  v16.mAlpha = mAlpha;
  ITColor::GetLuminance(&v16);
  v13 = 1.0 - (1.0 - v11) * a3;
  if (v14 >= 0.180000007)
  {
    v13 = v11 * a3;
  }

  ITColor::CreateFromHSVDoubles(v12, HSVColor, v9, v13);
}

BOOL contrastsEnoughWithColor(ITColor a1, ITColor a2)
{
  mAlpha = a2.mAlpha;
  mBlue = a2.mBlue;
  mGreen = a2.mGreen;
  mRed = a2.mRed;
  v11 = a1;
  v10 = a2;
  v12 = a1;
  ITColor::GetLuminance(&v12);
  v7 = v6 >= 0.180000007;
  v12.mRed = mRed;
  v12.mGreen = mGreen;
  v12.mBlue = mBlue;
  v12.mAlpha = mAlpha;
  ITColor::GetLuminance(&v12);
  return v7 != v8 >= 0.180000007 && ITColor::GetContrastWithColor(&v11, &v10) >= 3.0999999;
}

void ImageAnalyzer::CalculateOneShadowColor(ImageAnalyzer *this, ITColor *a2, ITColor *a3)
{
  ITColor::ITColor(&v14);
  ITColor::GetLuminance(a2);
  v6 = v5;
  ITColor::GetLuminance(a3);
  if (v6 >= v7)
  {
    v8 = &ITColor::kBlack;
  }

  else
  {
    v8 = &ITColor::kWhite;
  }

  v9 = v8[1];
  *&v14.mRed = *v8;
  *&v14.mBlue = v9;
  ITColor::GetLuminance(&v14);
  v11 = v10;
  ITColor::GetLuminance(a3);
  v13 = vabdd_f64(v11, v12);
  ITColor::CreateBlendedColorWithFraction(&v14, 1.0 - ((v13 + v13) * -0.599999994 + 1.0), *a3);
}

void ImageAnalyzer::AddDominantColorEntryToSet(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 == *a3)
  {
    v23 = *(a3 + 8);
LABEL_7:
    v24 = *(a3 + 16);
    if (v23 >= v24)
    {
      v29 = (v23 - v5) >> 6;
      v30 = v29 + 1;
      if ((v29 + 1) >> 58)
      {
        sub_100004B00();
      }

      v31 = v24 - v5;
      if (v31 >> 5 > v30)
      {
        v30 = v31 >> 5;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFC0)
      {
        v32 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        sub_1000070BC(a3, v32);
      }

      v33 = (v29 << 6);
      v34 = *a2;
      v35 = *(a2 + 1);
      v36 = *(a2 + 3);
      v33[2] = *(a2 + 2);
      v33[3] = v36;
      *v33 = v34;
      v33[1] = v35;
      v28 = (v29 << 6) + 64;
      v37 = *(a3 + 8) - *a3;
      v38 = v33 - v37;
      memcpy(v33 - v37, *a3, v37);
      v39 = *a3;
      *a3 = v38;
      *(a3 + 8) = v28;
      *(a3 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v25 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 3);
      *(v23 + 2) = *(a2 + 2);
      *(v23 + 3) = v27;
      *v23 = v25;
      *(v23 + 1) = v26;
      v28 = (v23 + 64);
    }

    *(a3 + 8) = v28;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = *a3;
    while (1)
    {
      v8 = &v5[v6];
      v40 = *(v8 + 2);
      v41 = *(v8 + 1);
      v9 = *(a2 + 2);
      *&v42.mRed = *(a2 + 1);
      *&v42.mBlue = v9;
      HSVColor = ITColor::GetHSVColor(&v42);
      v12 = v11;
      v14 = v13;
      ITColor::GetLuminance(&v42);
      v16 = v15;
      *&v42.mRed = v41;
      *&v42.mBlue = v40;
      v17 = ITColor::GetHSVColor(&v42);
      v19 = v18;
      v21 = v20;
      ITColor::GetLuminance(&v42);
      if (isCloseToColor(1, HSVColor, v12, v14, v16, v17, v19, v21, v22, 0.0700000003))
      {
        break;
      }

      ++v7;
      v5 = *a3;
      v23 = *(a3 + 8);
      v6 += 64;
      if (v7 >= &v23[-*a3] >> 6)
      {
        goto LABEL_7;
      }
    }

    *(*a3 + v6) = *a2 + *(*a3 + v6);
  }
}

void *sub_100004578(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_1000095BC(result, a2);
    }

    sub_100004B00();
  }

  return result;
}

void *sub_100004618(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100009604(result, a2);
    }

    sub_100004B00();
  }

  return result;
}

void sub_1000046B8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_100004B00();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000095BC(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_100004790(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100004B00();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100009604(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

BOOL AnalyzeImagePlease(CGContext *a1, AnalyzedImageColors *a2)
{
  if (!a1)
  {
    return 0;
  }

  ImageAnalyzer::ImageAnalyzer(&v37);
  if ((ImageAnalyzer::AnalyzeImage(&v37, a1) & 1) == 0)
  {
    ImageAnalyzer::~ImageAnalyzer(&v37);
    return 0;
  }

  v4 = v40;
  v5 = v41;
  v6 = v42;
  a2->backgroundColor.mRed = v40;
  a2->backgroundColor.mGreen = v5;
  a2->backgroundColor.mBlue = v6;
  v7 = *&v43;
  v8 = v44;
  *&a2->backgroundColor.mAlpha = v43;
  *&a2->primaryTextColor.mGreen = v8;
  v9 = v46;
  *&a2->primaryTextColor.mAlpha = v45;
  *&a2->secondaryTextColor.mGreen = v9;
  v10 = v48;
  *&a2->secondaryTextColor.mAlpha = v47;
  *&a2->tertiaryTextColor.mGreen = v10;
  v11 = v50;
  *&a2->tertiaryTextColor.mAlpha = v49;
  *&a2->quaternaryTextColor.mGreen = v11;
  v12 = v52;
  *&a2->quaternaryTextColor.mAlpha = v51;
  *&v8 = v53;
  *&a2->primaryDropShadowColor.mGreen = v12;
  *&a2->primaryDropShadowColor.mAlpha = v8;
  v13 = v55;
  *&a2->tertiaryDropShadowColor.mRed = v54;
  *&a2->tertiaryDropShadowColor.mBlue = v13;
  v14 = v57;
  *&a2->secondaryDropShadowColor.mRed = v56;
  *&a2->secondaryDropShadowColor.mBlue = v14;
  v15 = v59;
  *&a2->quarnaryDropShadowColor.mRed = v58;
  *&a2->quarnaryDropShadowColor.mBlue = v15;
  a2->colorsValid = 1;
  v61.mRed = v4;
  v61.mGreen = v5;
  v61.mBlue = v6;
  v61.mAlpha = v7;
  ITColor::GetLuminance(&v61);
  a2->isBackgroundLight = v16 >= 0.180000007;
  v17 = *&a2->primaryTextColor.mBlue;
  *&v61.mRed = *&a2->primaryTextColor.mRed;
  *&v61.mBlue = v17;
  ITColor::GetLuminance(&v61);
  a2->isPrimaryColorLight = v18 >= 0.180000007;
  v19 = *&a2->secondaryTextColor.mBlue;
  *&v61.mRed = *&a2->secondaryTextColor.mRed;
  *&v61.mBlue = v19;
  ITColor::GetLuminance(&v61);
  a2->isSecondaryColorLight = v20 >= 0.180000007;
  v21 = v60;
  a2->isBorderedImage = v60 > 0.0;
  a2->borderPercentage = v21;
  v22 = ImageAnalyzer::DominantColors(&v37);
  v23 = v22;
  a2->completeColorList.__end_ = a2->completeColorList.__begin_;
  v24 = *v22;
  if (*(v22 + 8) != *v22)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      sub_1000046B8(&a2->completeColorList, (v24 + v25));
      ++v26;
      v24 = *v23;
      v25 += 32;
    }

    while (v26 < (v23[1] - *v23) >> 5);
  }

  v27 = 0;
  a2->internalColorMapWidth = 100;
  a2->originalColorMap.__end_ = a2->originalColorMap.__begin_;
  a2->quantizedColorMap.__end_ = a2->quantizedColorMap.__begin_;
  a2->mColorCounts.__end_ = a2->mColorCounts.__begin_;
  do
  {
    v61.mRed = ITColor::CreateFromHSVDoubles(v22, *(v38 + 32 * v27), *(v38 + 32 * v27 + 8), *(v38 + 32 * v27 + 16));
    v61.mGreen = v28;
    v61.mBlue = v29;
    v61.mAlpha = v30;
    sub_1000046B8(&a2->originalColorMap, &v61);
    v61.mRed = ITColor::CreateFromHSVDoubles(v31, *(v37 + 32 * v27), *(v37 + 32 * v27 + 8), *(v37 + 32 * v27 + 16));
    v61.mGreen = v32;
    v61.mBlue = v33;
    v61.mAlpha = v34;
    sub_1000046B8(&a2->quantizedColorMap, &v61);
    sub_100004790(&a2->mColorCounts.__begin_, (v39 + 8 * v27++));
  }

  while (v27 != 10000);
  ImageAnalyzer::~ImageAnalyzer(&v37);
  return a2->colorsValid;
}

void sub_100004AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImageAnalyzer::~ImageAnalyzer(va);
  _Unwind_Resume(a1);
}

void sub_100004B18(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100004B74(exception, a1);
}

std::logic_error *sub_100004B74(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100004BA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100004C00();
}

void sub_100004C00()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100004C34(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v324 = *a3;
      v325 = *(a2 - 3);
      v326 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v326;
      v355 = v325;
      v327 = *v11;
      v328 = v11[2];
      v353 = v11[1];
      v354 = v328;
      v352 = v327;
      if (!v324(&v355, &v352))
      {
        return;
      }

      goto LABEL_76;
    }

LABEL_10:
    if (v14 <= 1151)
    {
      if (a5)
      {
        sub_100005E20(v11, a2, a3);
      }

      else
      {
        sub_100005F50(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        sub_100006B00(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = &v11[3 * (v15 >> 1)];
    v18 = *a3;
    if (v14 >= 0x1801)
    {
      v19 = *v17;
      v20 = v17[2];
      v356 = v17[1];
      v357 = v20;
      v355 = v19;
      v21 = *v11;
      v22 = v11[2];
      v353 = v11[1];
      v354 = v22;
      v352 = v21;
      v23 = v18(&v355, &v352);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v26;
        v355 = v25;
        v27 = *v17;
        v28 = v17[2];
        v353 = v17[1];
        v354 = v28;
        v352 = v27;
        if (v24(&v355, &v352))
        {
          v29 = *v11;
          v30 = v11[2];
          v356 = v11[1];
          v357 = v30;
          v355 = v29;
          v31 = *v8;
          v32 = *(a2 - 1);
          v11[1] = *(a2 - 2);
          v11[2] = v32;
          *v11 = v31;
          goto LABEL_27;
        }

        v85 = *v11;
        v86 = v11[2];
        v356 = v11[1];
        v357 = v86;
        v355 = v85;
        v87 = *v17;
        v88 = v17[2];
        v11[1] = v17[1];
        v11[2] = v88;
        *v11 = v87;
        v89 = v355;
        v90 = v357;
        v17[1] = v356;
        v17[2] = v90;
        *v17 = v89;
        v91 = *a3;
        v92 = *v8;
        v93 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v93;
        v355 = v92;
        v94 = *v17;
        v95 = v17[2];
        v353 = v17[1];
        v354 = v95;
        v352 = v94;
        if (v91(&v355, &v352))
        {
          v96 = *v17;
          v97 = v17[2];
          v356 = v17[1];
          v357 = v97;
          v355 = v96;
          v98 = *v8;
          v99 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v99;
          *v17 = v98;
LABEL_27:
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
        }
      }

      else
      {
        v47 = *v8;
        v48 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v48;
        v355 = v47;
        v49 = *v17;
        v50 = v17[2];
        v353 = v17[1];
        v354 = v50;
        v352 = v49;
        if (v24(&v355, &v352))
        {
          v51 = *v17;
          v52 = v17[2];
          v356 = v17[1];
          v357 = v52;
          v355 = v51;
          v53 = *v8;
          v54 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v54;
          *v17 = v53;
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
          v55 = *a3;
          v56 = *v17;
          v57 = v17[2];
          v356 = v17[1];
          v357 = v57;
          v355 = v56;
          v58 = *v11;
          v59 = v11[2];
          v353 = v11[1];
          v354 = v59;
          v352 = v58;
          if (v55(&v355, &v352))
          {
            v60 = *v11;
            v61 = v11[2];
            v356 = v11[1];
            v357 = v61;
            v355 = v60;
            v62 = *v17;
            v63 = v17[2];
            v11[1] = v17[1];
            v11[2] = v63;
            *v11 = v62;
            v64 = v355;
            v65 = v357;
            v17[1] = v356;
            v17[2] = v65;
            *v17 = v64;
          }
        }
      }

      v100 = *a3;
      v101 = &v11[3 * v16];
      v102 = v101 - 3;
      v103 = *(v101 - 3);
      v104 = *(v101 - 1);
      v356 = *(v101 - 2);
      v357 = v104;
      v105 = a1[4];
      v352 = a1[3];
      v353 = v105;
      v354 = a1[5];
      v355 = v103;
      v106 = v100(&v355, &v352);
      v107 = *a3;
      if (v106)
      {
        v108 = *v9;
        v109 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v109;
        v355 = v108;
        v110 = *v102;
        v111 = v102[2];
        v353 = v102[1];
        v354 = v111;
        v352 = v110;
        if (v107(&v355, &v352))
        {
          v112 = a1[3];
          v113 = a1[4];
          v114 = a1[5];
          v116 = *(a2 - 5);
          v115 = *(a2 - 4);
          a1[3] = *v9;
          a1[4] = v116;
          a1[5] = v115;
          *(a2 - 5) = v113;
          *(a2 - 4) = v114;
          *v9 = v112;
        }

        else
        {
          v150 = a1[4];
          v355 = a1[3];
          v149 = v355;
          v356 = v150;
          v357 = a1[5];
          v151 = v357;
          v152 = *v102;
          v153 = v102[2];
          a1[4] = v102[1];
          a1[5] = v153;
          a1[3] = v152;
          v102[1] = v150;
          v102[2] = v151;
          *v102 = v149;
          v154 = *a3;
          v155 = *v9;
          v156 = *(a2 - 4);
          v356 = *(a2 - 5);
          v357 = v156;
          v355 = v155;
          v157 = *v102;
          v158 = v102[2];
          v353 = v102[1];
          v354 = v158;
          v352 = v157;
          if (v154(&v355, &v352))
          {
            v159 = *v102;
            v160 = v102[2];
            v356 = v102[1];
            v357 = v160;
            v355 = v159;
            v161 = *v9;
            v162 = *(a2 - 4);
            v102[1] = *(a2 - 5);
            v102[2] = v162;
            *v102 = v161;
            *v9 = v355;
            *(a2 - 5) = v356;
            *(a2 - 4) = v357;
          }
        }
      }

      else
      {
        v117 = *v9;
        v118 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v118;
        v355 = v117;
        v119 = *v102;
        v120 = v102[2];
        v353 = v102[1];
        v354 = v120;
        v352 = v119;
        if (v107(&v355, &v352))
        {
          v121 = *v102;
          v122 = v102[2];
          v356 = v102[1];
          v357 = v122;
          v355 = v121;
          v123 = *v9;
          v124 = *(a2 - 4);
          v102[1] = *(a2 - 5);
          v102[2] = v124;
          *v102 = v123;
          *v9 = v355;
          *(a2 - 5) = v356;
          *(a2 - 4) = v357;
          v125 = *a3;
          v126 = *v102;
          v127 = v102[2];
          v356 = v102[1];
          v357 = v127;
          v128 = a1[4];
          v352 = a1[3];
          v353 = v128;
          v354 = a1[5];
          v355 = v126;
          if (v125(&v355, &v352))
          {
            v130 = a1[4];
            v355 = a1[3];
            v129 = v355;
            v356 = v130;
            v357 = a1[5];
            v131 = v357;
            v132 = *v102;
            v133 = v102[2];
            a1[4] = v102[1];
            a1[5] = v133;
            a1[3] = v132;
            v102[1] = v130;
            v102[2] = v131;
            *v102 = v129;
          }
        }
      }

      v163 = *a3;
      v164 = &a1[3 * v16];
      v165 = v164[3];
      v166 = v164[5];
      v356 = v164[4];
      v357 = v166;
      v167 = a1[7];
      v352 = a1[6];
      v353 = v167;
      v354 = a1[8];
      v355 = v165;
      v168 = v163(&v355, &v352);
      v169 = *a3;
      if (v168)
      {
        v170 = *v10;
        v171 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v171;
        v355 = v170;
        v172 = v164[3];
        v173 = v164[5];
        v353 = v164[4];
        v354 = v173;
        v352 = v172;
        if (v169(&v355, &v352))
        {
          v174 = a1[6];
          v175 = a1[7];
          v176 = a1[8];
          v178 = *(a2 - 8);
          v177 = *(a2 - 7);
          a1[6] = *v10;
          a1[7] = v178;
          a1[8] = v177;
          *(a2 - 8) = v175;
          *(a2 - 7) = v176;
          *v10 = v174;
        }

        else
        {
          v197 = a1[7];
          v355 = a1[6];
          v196 = v355;
          v356 = v197;
          v357 = a1[8];
          v198 = v357;
          v199 = v164[3];
          v200 = v164[5];
          a1[7] = v164[4];
          a1[8] = v200;
          a1[6] = v199;
          v164[4] = v197;
          v164[5] = v198;
          v164[3] = v196;
          v201 = *a3;
          v202 = *v10;
          v203 = *(a2 - 7);
          v356 = *(a2 - 8);
          v357 = v203;
          v355 = v202;
          v204 = v164[3];
          v205 = v164[5];
          v353 = v164[4];
          v354 = v205;
          v352 = v204;
          if (v201(&v355, &v352))
          {
            v206 = v164[3];
            v207 = v164[5];
            v356 = v164[4];
            v357 = v207;
            v355 = v206;
            v208 = *v10;
            v209 = *(a2 - 7);
            v164[4] = *(a2 - 8);
            v164[5] = v209;
            v164[3] = v208;
            *v10 = v355;
            *(a2 - 8) = v356;
            *(a2 - 7) = v357;
          }
        }
      }

      else
      {
        v179 = *v10;
        v180 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v180;
        v355 = v179;
        v181 = v164[3];
        v182 = v164[5];
        v353 = v164[4];
        v354 = v182;
        v352 = v181;
        if (v169(&v355, &v352))
        {
          v183 = v164[3];
          v184 = v164[5];
          v356 = v164[4];
          v357 = v184;
          v355 = v183;
          v185 = *v10;
          v186 = *(a2 - 7);
          v164[4] = *(a2 - 8);
          v164[5] = v186;
          v164[3] = v185;
          *v10 = v355;
          *(a2 - 8) = v356;
          *(a2 - 7) = v357;
          v187 = *a3;
          v188 = v164[3];
          v189 = v164[5];
          v356 = v164[4];
          v357 = v189;
          v190 = a1[7];
          v352 = a1[6];
          v353 = v190;
          v354 = a1[8];
          v355 = v188;
          if (v187(&v355, &v352))
          {
            v192 = a1[7];
            v355 = a1[6];
            v191 = v355;
            v356 = v192;
            v357 = a1[8];
            v193 = v357;
            v194 = v164[3];
            v195 = v164[5];
            a1[7] = v164[4];
            a1[8] = v195;
            a1[6] = v194;
            v164[4] = v192;
            v164[5] = v193;
            v164[3] = v191;
          }
        }
      }

      v210 = *a3;
      v211 = *v17;
      v212 = v17[2];
      v356 = v17[1];
      v357 = v212;
      v355 = v211;
      v213 = *v102;
      v214 = v102[2];
      v353 = v102[1];
      v354 = v214;
      v352 = v213;
      v215 = v210(&v355, &v352);
      v216 = *a3;
      if (v215)
      {
        v217 = v164[3];
        v218 = v164[5];
        v356 = v164[4];
        v357 = v218;
        v355 = v217;
        v219 = *v17;
        v220 = v17[2];
        v353 = v17[1];
        v354 = v220;
        v352 = v219;
        if (v216(&v355, &v352))
        {
          v221 = *v102;
          v222 = v102[2];
          v356 = v102[1];
          v357 = v222;
          v355 = v221;
          v223 = v164[4];
          *v102 = v164[3];
          v102[1] = v223;
          v102[2] = v164[5];
          goto LABEL_55;
        }

        v243 = *v102;
        v244 = v102[2];
        v356 = v102[1];
        v357 = v244;
        v355 = v243;
        v245 = v17[1];
        *v102 = *v17;
        v102[1] = v245;
        v102[2] = v17[2];
        v246 = v357;
        v247 = v355;
        v17[1] = v356;
        v17[2] = v246;
        *v17 = v247;
        v248 = *a3;
        v249 = v164[3];
        v250 = v164[5];
        v356 = v164[4];
        v357 = v250;
        v355 = v249;
        v251 = *v17;
        v252 = v17[2];
        v353 = v17[1];
        v354 = v252;
        v352 = v251;
        if (v248(&v355, &v352))
        {
          v253 = *v17;
          v254 = v17[2];
          v356 = v17[1];
          v357 = v254;
          v355 = v253;
          v255 = v164[4];
          *v17 = v164[3];
          v17[1] = v255;
          v17[2] = v164[5];
LABEL_55:
          v256 = v357;
          v257 = v355;
          v164[4] = v356;
          v164[5] = v256;
          v164[3] = v257;
        }
      }

      else
      {
        v224 = v164[3];
        v225 = v164[5];
        v356 = v164[4];
        v357 = v225;
        v355 = v224;
        v226 = *v17;
        v227 = v17[2];
        v353 = v17[1];
        v354 = v227;
        v352 = v226;
        if (v216(&v355, &v352))
        {
          v228 = *v17;
          v229 = v17[2];
          v356 = v17[1];
          v357 = v229;
          v355 = v228;
          v230 = v164[4];
          *v17 = v164[3];
          v17[1] = v230;
          v17[2] = v164[5];
          v231 = v357;
          v232 = v355;
          v164[4] = v356;
          v164[5] = v231;
          v164[3] = v232;
          v233 = *a3;
          v234 = *v17;
          v235 = v17[2];
          v356 = v17[1];
          v357 = v235;
          v355 = v234;
          v236 = *v102;
          v237 = v102[2];
          v353 = v102[1];
          v354 = v237;
          v352 = v236;
          if (v233(&v355, &v352))
          {
            v238 = *v102;
            v239 = v102[2];
            v356 = v102[1];
            v357 = v239;
            v355 = v238;
            v240 = v17[1];
            *v102 = *v17;
            v102[1] = v240;
            v102[2] = v17[2];
            v241 = v357;
            v242 = v355;
            v17[1] = v356;
            v17[2] = v241;
            *v17 = v242;
          }
        }
      }

      v258 = *a1;
      v259 = a1[2];
      v356 = a1[1];
      v357 = v259;
      v355 = v258;
      v260 = *v17;
      v261 = v17[2];
      a1[1] = v17[1];
      a1[2] = v261;
      *a1 = v260;
      v262 = v355;
      v263 = v357;
      v17[1] = v356;
      v17[2] = v263;
      *v17 = v262;
      goto LABEL_57;
    }

    v33 = *v11;
    v34 = v11[2];
    v356 = v11[1];
    v357 = v34;
    v355 = v33;
    v35 = *v17;
    v36 = v17[2];
    v353 = v17[1];
    v354 = v36;
    v352 = v35;
    v37 = v18(&v355, &v352);
    v38 = *a3;
    if (v37)
    {
      v39 = *v8;
      v40 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v40;
      v355 = v39;
      v41 = *v11;
      v42 = v11[2];
      v353 = v11[1];
      v354 = v42;
      v352 = v41;
      if (v38(&v355, &v352))
      {
        v43 = *v17;
        v44 = v17[2];
        v356 = v17[1];
        v357 = v44;
        v355 = v43;
        v45 = *v8;
        v46 = *(a2 - 1);
        v17[1] = *(a2 - 2);
        v17[2] = v46;
        *v17 = v45;
LABEL_36:
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        goto LABEL_57;
      }

      v134 = *v17;
      v135 = v17[2];
      v356 = v17[1];
      v357 = v135;
      v355 = v134;
      v136 = *v11;
      v137 = v11[2];
      v17[1] = v11[1];
      v17[2] = v137;
      *v17 = v136;
      v138 = v355;
      v139 = v357;
      v11[1] = v356;
      v11[2] = v139;
      *v11 = v138;
      v140 = *a3;
      v141 = *v8;
      v142 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v142;
      v355 = v141;
      v143 = *v11;
      v144 = v11[2];
      v353 = v11[1];
      v354 = v144;
      v352 = v143;
      if (v140(&v355, &v352))
      {
        v145 = *v11;
        v146 = v11[2];
        v356 = v11[1];
        v357 = v146;
        v355 = v145;
        v147 = *v8;
        v148 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v148;
        *v11 = v147;
        goto LABEL_36;
      }
    }

    else
    {
      v66 = *v8;
      v67 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v67;
      v355 = v66;
      v68 = *v11;
      v69 = v11[2];
      v353 = v11[1];
      v354 = v69;
      v352 = v68;
      if (v38(&v355, &v352))
      {
        v70 = *v11;
        v71 = v11[2];
        v356 = v11[1];
        v357 = v71;
        v355 = v70;
        v72 = *v8;
        v73 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v73;
        *v11 = v72;
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        v74 = *a3;
        v75 = *v11;
        v76 = v11[2];
        v356 = v11[1];
        v357 = v76;
        v355 = v75;
        v77 = *v17;
        v78 = v17[2];
        v353 = v17[1];
        v354 = v78;
        v352 = v77;
        if (v74(&v355, &v352))
        {
          v79 = *v17;
          v80 = v17[2];
          v356 = v17[1];
          v357 = v80;
          v355 = v79;
          v81 = *v11;
          v82 = v11[2];
          v17[1] = v11[1];
          v17[2] = v82;
          *v17 = v81;
          v83 = v355;
          v84 = v357;
          v11[1] = v356;
          v11[2] = v84;
          *v11 = v83;
        }
      }
    }

LABEL_57:
    if ((a5 & 1) == 0)
    {
      v264 = *a3;
      v265 = *(a1 - 3);
      v266 = *(a1 - 1);
      v356 = *(a1 - 2);
      v357 = v266;
      v355 = v265;
      v267 = *a1;
      v268 = a1[2];
      v353 = a1[1];
      v354 = v268;
      v352 = v267;
      if ((v264(&v355, &v352) & 1) == 0)
      {
        v11 = sub_100006054(a1, a2, a3);
        goto LABEL_64;
      }
    }

    v269 = sub_100006288(a1, a2, a3);
    if ((v270 & 1) == 0)
    {
      goto LABEL_62;
    }

    v271 = sub_100006498(a1, v269, a3);
    v11 = &v269[3];
    if (sub_100006498(v269 + 3, a2, a3))
    {
      a4 = -v13;
      a2 = v269;
      if (v271)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v271)
    {
LABEL_62:
      sub_100004C34(a1, v269, a3, -v13, a5 & 1);
      v11 = &v269[3];
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      sub_100005B3C(v11, v11 + 3, v11 + 6, a2 - 3, a3);
      return;
    }

    if (v15 == 5)
    {
      sub_100005B3C(v11, v11 + 3, v11 + 6, v11 + 9, a3);
      v296 = *a3;
      v297 = *(a2 - 3);
      v298 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v298;
      v299 = v11[10];
      v352 = v11[9];
      v353 = v299;
      v354 = v11[11];
      v355 = v297;
      if (v296(&v355, &v352))
      {
        v300 = v11[9];
        v301 = v11[10];
        v302 = v11[11];
        v304 = *(a2 - 2);
        v303 = *(a2 - 1);
        v11[9] = *v8;
        v11[10] = v304;
        v11[11] = v303;
        *(a2 - 2) = v301;
        *(a2 - 1) = v302;
        *v8 = v300;
        v305 = *a3;
        v306 = v11[10];
        v307 = v11[11];
        v308 = v11[8];
        v355 = v11[9];
        v356 = v306;
        v357 = v307;
        v309 = v11[7];
        v352 = v11[6];
        v353 = v309;
        v354 = v308;
        if (v305(&v355, &v352))
        {
          v310 = v11[10];
          v312 = v11[5];
          v311 = v11[6];
          v11[6] = v11[9];
          v314 = v11[6];
          v313 = v11[7];
          v11[7] = v310;
          v316 = v11[7];
          v315 = v11[8];
          v11[8] = v11[11];
          v11[9] = v311;
          v11[10] = v313;
          v11[11] = v315;
          v317 = *a3;
          v355 = v314;
          v356 = v316;
          v357 = v11[8];
          v318 = v11[4];
          v352 = v11[3];
          v353 = v318;
          v354 = v312;
          if (v317(&v355, &v352))
          {
            v320 = v11[3];
            v319 = v11[4];
            v321 = v11[5];
            v322 = v11[7];
            v323 = v11[8];
            v11[3] = v11[6];
            v11[4] = v322;
            v11[5] = v323;
            v11[6] = v320;
            v11[7] = v319;
            v11[8] = v321;
LABEL_84:
            v341 = *a3;
            v342 = v11[4];
            v355 = v11[3];
            v356 = v342;
            v357 = v11[5];
            v343 = *v11;
            v344 = v11[2];
            v353 = v11[1];
            v354 = v344;
            v352 = v343;
            if (v341(&v355, &v352))
            {
              v345 = *v11;
              v346 = v11[2];
              v347 = v11[3];
              v356 = v11[1];
              v357 = v346;
              v355 = v345;
              v348 = v11[4];
              v349 = v11[5];
              *v11 = v347;
              v11[1] = v348;
              v11[2] = v349;
              v350 = v356;
              v11[3] = v355;
              v11[4] = v350;
              v11[5] = v357;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v272 = *a3;
  v273 = v11[4];
  v355 = v11[3];
  v356 = v273;
  v357 = v11[5];
  v274 = *v11;
  v275 = v11[2];
  v353 = v11[1];
  v354 = v275;
  v352 = v274;
  v276 = v272(&v355, &v352);
  v277 = *a3;
  if (v276)
  {
    v278 = *v8;
    v279 = *(a2 - 1);
    v356 = *(a2 - 2);
    v357 = v279;
    v280 = v11[4];
    v352 = v11[3];
    v353 = v280;
    v354 = v11[5];
    v355 = v278;
    if (!v277(&v355, &v352))
    {
      v281 = *v11;
      v282 = v11[2];
      v283 = v11[3];
      v356 = v11[1];
      v357 = v282;
      v355 = v281;
      v284 = v11[4];
      v285 = v11[5];
      *v11 = v283;
      v11[1] = v284;
      v11[2] = v285;
      v286 = v356;
      v11[3] = v355;
      v11[4] = v286;
      v11[5] = v357;
      v287 = *a3;
      v288 = *v8;
      v289 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v289;
      v290 = v11[4];
      v352 = v11[3];
      v353 = v290;
      v354 = v11[5];
      v355 = v288;
      if (v287(&v355, &v352))
      {
        v291 = v11[3];
        v292 = v11[4];
        v293 = v11[5];
        v295 = *(a2 - 2);
        v294 = *(a2 - 1);
        v11[3] = *v8;
        v11[4] = v295;
        v11[5] = v294;
        *(a2 - 2) = v292;
        *(a2 - 1) = v293;
        *v8 = v291;
      }

      return;
    }

LABEL_76:
    v329 = *v11;
    v330 = v11[2];
    v356 = v11[1];
    v357 = v330;
    v355 = v329;
    v331 = *v8;
    v332 = *(a2 - 1);
    v11[1] = *(a2 - 2);
    v11[2] = v332;
    *v11 = v331;
    *v8 = v355;
    *(a2 - 2) = v356;
    *(a2 - 1) = v357;
    return;
  }

  v333 = *v8;
  v334 = *(a2 - 1);
  v356 = *(a2 - 2);
  v357 = v334;
  v335 = v11[4];
  v352 = v11[3];
  v353 = v335;
  v354 = v11[5];
  v355 = v333;
  if (v277(&v355, &v352))
  {
    v336 = v11[3];
    v337 = v11[4];
    v338 = v11[5];
    v340 = *(a2 - 2);
    v339 = *(a2 - 1);
    v11[3] = *v8;
    v11[4] = v340;
    v11[5] = v339;
    *(a2 - 2) = v337;
    *(a2 - 1) = v338;
    *v8 = v336;
    goto LABEL_84;
  }
}

__n128 sub_100005B3C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v74 = *a2;
  v75 = v11;
  v76 = a2[2];
  v12 = a1[1];
  v71 = *a1;
  v72 = v12;
  v73 = a1[2];
  v13 = v10(&v74, &v71);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v74 = *a3;
    v75 = v15;
    v76 = a3[2];
    v16 = a2[1];
    v71 = *a2;
    v72 = v16;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v17 = *a1;
      v18 = a1[1];
      v19 = a1[2];
      v21 = a3[1];
      v20 = a3[2];
      *a1 = *a3;
      a1[1] = v21;
      a1[2] = v20;
LABEL_9:
      a3[1] = v18;
      a3[2] = v19;
      *a3 = v17;
      goto LABEL_10;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v41 = a2[1];
    v40 = a2[2];
    *a1 = *a2;
    a1[1] = v41;
    a1[2] = v40;
    a2[1] = v38;
    a2[2] = v39;
    *a2 = v37;
    v42 = *a5;
    v43 = a3[1];
    v74 = *a3;
    v75 = v43;
    v76 = a3[2];
    v44 = a2[1];
    v71 = *a2;
    v72 = v44;
    v73 = a2[2];
    if (v42(&v74, &v71))
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v46 = a3[1];
      v45 = a3[2];
      *a2 = *a3;
      a2[1] = v46;
      a2[2] = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = a3[1];
    v74 = *a3;
    v75 = v22;
    v76 = a3[2];
    v23 = a2[1];
    v71 = *a2;
    v72 = v23;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v24 = *a2;
      v25 = a2[1];
      v26 = a2[2];
      v28 = a3[1];
      v27 = a3[2];
      *a2 = *a3;
      a2[1] = v28;
      a2[2] = v27;
      a3[1] = v25;
      a3[2] = v26;
      *a3 = v24;
      v29 = *a5;
      v30 = a2[1];
      v74 = *a2;
      v75 = v30;
      v76 = a2[2];
      v31 = a1[1];
      v71 = *a1;
      v72 = v31;
      v73 = a1[2];
      if (v29(&v74, &v71))
      {
        v32 = *a1;
        v33 = a1[1];
        v34 = a1[2];
        v36 = a2[1];
        v35 = a2[2];
        *a1 = *a2;
        a1[1] = v36;
        a1[2] = v35;
        a2[1] = v33;
        a2[2] = v34;
        *a2 = v32;
      }
    }
  }

LABEL_10:
  v47 = *a5;
  v48 = a4[1];
  v74 = *a4;
  v75 = v48;
  v76 = a4[2];
  v49 = a3[1];
  v71 = *a3;
  v72 = v49;
  v73 = a3[2];
  if (v47(&v74, &v71))
  {
    v51 = *a3;
    v52 = a3[1];
    v53 = a3[2];
    v55 = a4[1];
    v54 = a4[2];
    *a3 = *a4;
    a3[1] = v55;
    a3[2] = v54;
    a4[1] = v52;
    a4[2] = v53;
    *a4 = v51;
    v56 = *a5;
    v57 = a3[1];
    v74 = *a3;
    v75 = v57;
    v76 = a3[2];
    v58 = a2[1];
    v71 = *a2;
    v72 = v58;
    v73 = a2[2];
    if (v56(&v74, &v71))
    {
      v59 = *a2;
      v60 = a2[1];
      v61 = a2[2];
      v63 = a3[1];
      v62 = a3[2];
      *a2 = *a3;
      a2[1] = v63;
      a2[2] = v62;
      a3[1] = v60;
      a3[2] = v61;
      *a3 = v59;
      v64 = *a5;
      v65 = a2[1];
      v74 = *a2;
      v75 = v65;
      v76 = a2[2];
      v66 = a1[1];
      v71 = *a1;
      v72 = v66;
      v73 = a1[2];
      if (v64(&v74, &v71))
      {
        result = *a1;
        v67 = a1[1];
        v68 = a1[2];
        v70 = a2[1];
        v69 = a2[2];
        *a1 = *a2;
        a1[1] = v70;
        a1[2] = v69;
        a2[1] = v67;
        a2[2] = v68;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t sub_100005E20(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v31 = v3;
    v32 = v4;
    v6 = result;
    v7 = (result + 48);
    if ((result + 48) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v28 = *v10;
        v29 = v13;
        v30 = v10[2];
        v14 = *v11;
        v15 = v11[2];
        v26 = v11[1];
        v27 = v15;
        v25 = v14;
        result = v12(&v28, &v25);
        if (result)
        {
          v16 = v10[1];
          v28 = *v10;
          v29 = v16;
          v30 = v10[2];
          v17 = v9;
          while (1)
          {
            v18 = (v6 + v17);
            v19 = *(v6 + v17 + 16);
            v18[3] = *(v6 + v17);
            v18[4] = v19;
            v18[5] = *(v6 + v17 + 32);
            if (!v17)
            {
              break;
            }

            v20 = *a3;
            v25 = v28;
            v26 = v29;
            v27 = v30;
            v21 = *(v18 - 2);
            v24[0] = *(v18 - 3);
            v24[1] = v21;
            v24[2] = *(v18 - 1);
            result = v20(&v25, v24);
            v17 -= 48;
            if ((result & 1) == 0)
            {
              v22 = (v6 + v17 + 48);
              goto LABEL_10;
            }
          }

          v22 = v6;
LABEL_10:
          v23 = v29;
          *v22 = v28;
          v22[1] = v23;
          v22[2] = v30;
        }

        v7 = v10 + 3;
        v9 += 48;
      }

      while (v10 + 3 != a2);
    }
  }

  return result;
}

uint64_t sub_100005F50(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    for (i = (result + 48); v6 + 3 != a2; i = v6 + 3)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v27 = *v6;
      v28 = v11;
      v29 = v6[2];
      v12 = *v9;
      v13 = v9[2];
      v25 = v9[1];
      v26 = v13;
      v24 = v12;
      result = v10(&v27, &v24);
      if (result)
      {
        v14 = v6[1];
        v27 = *v6;
        v28 = v14;
        v29 = v6[2];
        v15 = v6;
        do
        {
          v16 = *(v15 - 2);
          v17 = *(v15 - 1);
          v18 = *(v15 - 4);
          *v15 = *(v15 - 3);
          v15[1] = v16;
          v15[2] = v17;
          v24 = v27;
          v25 = v28;
          v26 = v29;
          v19 = *(v15 - 5);
          v23[0] = *(v15 - 6);
          v23[1] = v19;
          v20 = v15 - 3;
          v21 = *a3;
          v23[2] = v18;
          result = v21(&v24, v23);
          v15 = v20;
        }

        while ((result & 1) != 0);
        v22 = v28;
        *v20 = v27;
        v20[1] = v22;
        v20[2] = v29;
      }
    }
  }

  return result;
}

__int128 *sub_100006054(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  v8 = *a1;
  v7 = a1[1];
  v48 = a1[2];
  v49 = v8;
  v9 = *a3;
  v10 = a1[2];
  v50 = v7;
  v51 = v10;
  v11 = *(a2 - 2);
  v43 = *(a2 - 3);
  v44 = v11;
  v45 = *(a2 - 1);
  if (v9(&v49, &v43))
  {
    v12 = a1;
    do
    {
      v13 = v12 + 3;
      v14 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v15 = v12[4];
      v43 = v12[3];
      v44 = v15;
      v45 = v12[5];
      v16 = v14(&v49, &v43);
      v12 = v13;
    }

    while ((v16 & 1) == 0);
  }

  else
  {
    v17 = a1 + 3;
    do
    {
      v13 = v17;
      if (v17 >= v4)
      {
        break;
      }

      v18 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v19 = v13[1];
      v43 = *v13;
      v44 = v19;
      v45 = v13[2];
      v20 = v18(&v49, &v43);
      v17 = v13 + 3;
    }

    while (!v20);
  }

  if (v13 >= v4)
  {
    v21 = v4;
  }

  else
  {
    do
    {
      v21 = v4 - 3;
      v22 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v23 = *(v4 - 2);
      v43 = *(v4 - 3);
      v44 = v23;
      v45 = *(v4 - 1);
      v4 -= 3;
    }

    while ((v22(&v49, &v43) & 1) != 0);
  }

  while (v13 < v21)
  {
    v24 = *v13;
    v25 = v13[2];
    v50 = v13[1];
    v51 = v25;
    v49 = v24;
    v26 = *v21;
    v27 = v21[2];
    v13[1] = v21[1];
    v13[2] = v27;
    *v13 = v26;
    v28 = v49;
    v29 = v51;
    v21[1] = v50;
    v21[2] = v29;
    *v21 = v28;
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v30 = v13[4];
      v43 = v13[3];
      v44 = v30;
      v31 = v13[5];
      v13 += 3;
      v32 = *a3;
      v45 = v31;
    }

    while (!v32(&v49, &v43));
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v33 = *(v21 - 3);
      v34 = *(v21 - 2);
      v35 = *(v21 - 1);
      v21 -= 3;
      v36 = *a3;
      v44 = v34;
      v45 = v35;
      v43 = v33;
    }

    while ((v36(&v49, &v43) & 1) != 0);
  }

  v37 = v13 - 3;
  if (v13 - 3 != a1)
  {
    v38 = *v37;
    v39 = *(v13 - 1);
    a1[1] = *(v13 - 2);
    a1[2] = v39;
    *a1 = v38;
  }

  v40 = v46;
  v41 = v48;
  *(v13 - 2) = v47;
  *(v13 - 1) = v41;
  *v37 = v40;
  return v13;
}

__int128 *sub_100006288(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v40 = *a1;
  v41 = v7;
  v42 = a1[2];
  do
  {
    v8 = *a3;
    v9 = a1[v6 + 4];
    v43 = a1[v6 + 3];
    v44 = v9;
    v45 = a1[v6 + 5];
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v6 += 3;
  }

  while ((v8(&v43, &v37) & 1) != 0);
  v10 = &a1[v6];
  v11 = &a1[v6 - 3];
  if (v6 == 3)
  {
    while (v10 < a2)
    {
      v15 = *a3;
      v12 = a2 - 3;
      v16 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v16;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
      if (v15(&v43, &v37))
      {
        goto LABEL_9;
      }
    }

    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 3;
      v13 = *a3;
      v14 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v14;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
    }

    while (!v13(&v43, &v37));
  }

LABEL_9:
  if (v10 < v12)
  {
    v17 = v10;
    v18 = v12;
    do
    {
      v20 = v17[1];
      v43 = *v17;
      v19 = v43;
      v44 = v20;
      v45 = v17[2];
      v21 = v45;
      v22 = *v18;
      v23 = v18[2];
      v17[1] = v18[1];
      v17[2] = v23;
      *v17 = v22;
      v18[1] = v20;
      v18[2] = v21;
      *v18 = v19;
      do
      {
        v24 = v17[3];
        v25 = v17[4];
        v26 = v17[5];
        v17 += 3;
        v27 = *a3;
        v43 = v24;
        v44 = v25;
        v45 = v26;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while ((v27(&v43, &v37) & 1) != 0);
      do
      {
        v28 = *(v18 - 3);
        v29 = *(v18 - 2);
        v30 = *(v18 - 1);
        v18 -= 3;
        v31 = *a3;
        v44 = v29;
        v45 = v30;
        v43 = v28;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while (!v31(&v43, &v37));
    }

    while (v17 < v18);
    v11 = v17 - 3;
  }

  if (v11 != a1)
  {
    v32 = *v11;
    v33 = v11[2];
    a1[1] = v11[1];
    a1[2] = v33;
    *a1 = v32;
  }

  v34 = v40;
  v35 = v42;
  v11[1] = v41;
  v11[2] = v35;
  *v11 = v34;
  return v11;
}

BOOL sub_100006498(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a2 - 3;
        v48 = *a3;
        v49 = a1[4];
        v50 = a1[5];
        v51 = a1[2];
        v146 = a1[3];
        v147 = v49;
        v148 = v50;
        v52 = a1[1];
        v143 = *a1;
        v144 = v52;
        v145 = v51;
        v53 = v48(&v146, &v143);
        v54 = *a3;
        if (v53)
        {
          v55 = v47[1];
          v146 = *v47;
          v147 = v55;
          v148 = v47[2];
          v56 = a1[4];
          v143 = a1[3];
          v144 = v56;
          v145 = a1[5];
          if (v54(&v146, &v143))
          {
            v57 = *a1;
            v58 = a1[1];
            v59 = a1[2];
            v61 = v47[1];
            v60 = v47[2];
            *a1 = *v47;
            a1[1] = v61;
            a1[2] = v60;
          }

          else
          {
            v108 = a1[1];
            v109 = a1[2];
            v110 = a1[3];
            a1[3] = *a1;
            v112 = a1[3];
            v111 = a1[4];
            *a1 = v110;
            a1[1] = v111;
            a1[4] = v108;
            v113 = a1[4];
            a1[2] = a1[5];
            a1[5] = v109;
            v114 = *a3;
            v115 = v47[1];
            v146 = *v47;
            v147 = v115;
            v148 = v47[2];
            v143 = v112;
            v144 = v113;
            v145 = a1[5];
            if (!v114(&v146, &v143))
            {
              return 1;
            }

            v57 = a1[3];
            v58 = a1[4];
            v59 = a1[5];
            v117 = v47[1];
            v116 = v47[2];
            a1[3] = *v47;
            a1[4] = v117;
            a1[5] = v116;
          }

          v47[1] = v58;
          v47[2] = v59;
          result = 1;
          *v47 = v57;
          return result;
        }

        v76 = v47[1];
        v146 = *v47;
        v147 = v76;
        v148 = v47[2];
        v77 = a1[4];
        v143 = a1[3];
        v144 = v77;
        v145 = a1[5];
        if (!v54(&v146, &v143))
        {
          return 1;
        }

        v78 = a1[3];
        v79 = a1[4];
        v80 = a1[5];
        v82 = v47[1];
        v81 = v47[2];
        a1[3] = *v47;
        a1[4] = v82;
        a1[5] = v81;
        v47[1] = v79;
        v47[2] = v80;
        *v47 = v78;
        v46 = *a3;
        v83 = a1[4];
        v84 = a1[5];
        v41 = a1[2];
        v146 = a1[3];
        v147 = v83;
        v148 = v84;
        break;
      case 4:
        sub_100005B3C(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        sub_100005B3C(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        v16 = *a3;
        v17 = a2[-2];
        v146 = a2[-3];
        v147 = v17;
        v148 = a2[-1];
        v18 = a1[10];
        v143 = a1[9];
        v144 = v18;
        v145 = a1[11];
        if (!v16(&v146, &v143))
        {
          return 1;
        }

        v19 = a2 - 3;
        v20 = a1[9];
        v21 = a1[10];
        v22 = a1[11];
        v24 = a2[-2];
        v23 = a2[-1];
        a1[9] = a2[-3];
        a1[10] = v24;
        a1[11] = v23;
        v19[1] = v21;
        v19[2] = v22;
        *v19 = v20;
        v25 = *a3;
        v26 = a1[10];
        v27 = a1[11];
        v28 = a1[8];
        v146 = a1[9];
        v147 = v26;
        v148 = v27;
        v29 = a1[7];
        v143 = a1[6];
        v144 = v29;
        v145 = v28;
        if (!v25(&v146, &v143))
        {
          return 1;
        }

        v30 = a1[10];
        v32 = a1[5];
        v31 = a1[6];
        a1[6] = a1[9];
        v34 = a1[6];
        v33 = a1[7];
        a1[7] = v30;
        v36 = a1[7];
        v35 = a1[8];
        a1[8] = a1[11];
        a1[9] = v31;
        a1[10] = v33;
        a1[11] = v35;
        v37 = *a3;
        v146 = v34;
        v147 = v36;
        v148 = a1[8];
        v38 = a1[4];
        v143 = a1[3];
        v144 = v38;
        v145 = v32;
        if (!v37(&v146, &v143))
        {
          return 1;
        }

        v39 = a1[7];
        v41 = a1[2];
        v40 = a1[3];
        a1[3] = a1[6];
        v43 = a1[3];
        v42 = a1[4];
        a1[4] = v39;
        v45 = a1[4];
        v44 = a1[5];
        a1[5] = a1[8];
        a1[6] = v40;
        a1[7] = v42;
        a1[8] = v44;
        v46 = *a3;
        v146 = v43;
        v147 = v45;
        v148 = a1[5];
        break;
      default:
        goto LABEL_16;
    }

    v85 = a1[1];
    v143 = *a1;
    v144 = v85;
    v145 = v41;
    if (v46(&v146, &v143))
    {
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[2];
      v89 = a1[4];
      v90 = a1[5];
      *a1 = a1[3];
      a1[1] = v89;
      a1[2] = v90;
      a1[3] = v87;
      result = 1;
      a1[4] = v86;
      a1[5] = v88;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-2];
    v146 = a2[-3];
    v147 = v8;
    v148 = a2[-1];
    v9 = a1[1];
    v143 = *a1;
    v144 = v9;
    v145 = a1[2];
    if (v7(&v146, &v143))
    {
      v10 = a2 - 3;
      v11 = *a1;
      v12 = a1[1];
      v13 = a1[2];
      v15 = a2[-2];
      v14 = a2[-1];
      *a1 = a2[-3];
      a1[1] = v15;
      a1[2] = v14;
      v10[1] = v12;
      v10[2] = v13;
      *v10 = v11;
    }

    return 1;
  }

LABEL_16:
  v62 = a1 + 6;
  v63 = *a3;
  v64 = a1[4];
  v65 = a1[5];
  v66 = a1[2];
  v146 = a1[3];
  v147 = v64;
  v148 = v65;
  v67 = a1[1];
  v143 = *a1;
  v144 = v67;
  v145 = v66;
  v68 = v63(&v146, &v143);
  v69 = *a3;
  if (v68)
  {
    v70 = a1[7];
    v146 = *v62;
    v147 = v70;
    v148 = a1[8];
    v71 = a1[4];
    v143 = a1[3];
    v144 = v71;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v73 = a1[1];
      v72 = a1[2];
      v74 = *a1;
      v75 = a1[7];
      *a1 = *v62;
      a1[1] = v75;
      a1[2] = a1[8];
    }

    else
    {
      v118 = a1[1];
      v119 = a1[2];
      v120 = a1[3];
      a1[3] = *a1;
      v122 = a1[3];
      v121 = a1[4];
      *a1 = v120;
      a1[1] = v121;
      a1[4] = v118;
      v123 = a1[4];
      a1[2] = a1[5];
      a1[5] = v119;
      v124 = *a3;
      v125 = a1[7];
      v146 = *v62;
      v147 = v125;
      v148 = a1[8];
      v143 = v122;
      v144 = v123;
      v145 = a1[5];
      if (!v124(&v146, &v143))
      {
        goto LABEL_33;
      }

      v73 = a1[4];
      v72 = a1[5];
      v74 = a1[3];
      v126 = a1[7];
      a1[3] = *v62;
      a1[4] = v126;
      a1[5] = a1[8];
    }

    *v62 = v74;
    a1[7] = v73;
    a1[8] = v72;
  }

  else
  {
    v92 = a1[7];
    v146 = *v62;
    v147 = v92;
    v148 = a1[8];
    v93 = a1[4];
    v143 = a1[3];
    v144 = v93;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v94 = a1[7];
      v96 = a1[2];
      v95 = a1[3];
      a1[3] = *v62;
      v98 = a1[3];
      v97 = a1[4];
      a1[4] = v94;
      v100 = a1[4];
      v99 = a1[5];
      a1[5] = a1[8];
      *v62 = v95;
      a1[7] = v97;
      a1[8] = v99;
      v101 = *a3;
      v146 = v98;
      v147 = v100;
      v148 = a1[5];
      v102 = a1[1];
      v143 = *a1;
      v144 = v102;
      v145 = v96;
      if (v101(&v146, &v143))
      {
        v104 = *a1;
        v103 = a1[1];
        v105 = a1[2];
        v106 = a1[4];
        v107 = a1[5];
        *a1 = a1[3];
        a1[1] = v106;
        a1[2] = v107;
        a1[3] = v104;
        a1[4] = v103;
        a1[5] = v105;
      }
    }
  }

LABEL_33:
  v127 = a1 + 9;
  if (&a1[9] == a2)
  {
    return 1;
  }

  v128 = 0;
  v129 = 0;
  while (1)
  {
    v130 = *a3;
    v131 = v127[1];
    v146 = *v127;
    v147 = v131;
    v148 = v127[2];
    v132 = *v62;
    v133 = v62[2];
    v144 = v62[1];
    v145 = v133;
    v143 = v132;
    if (v130(&v146, &v143))
    {
      v134 = v127[1];
      v146 = *v127;
      v147 = v134;
      v148 = v127[2];
      v135 = v128;
      while (1)
      {
        v136 = (a1->n128_u64 + v135);
        v137 = *(&a1[7] + v135);
        v136[9] = *(&a1[6] + v135);
        v136[10] = v137;
        v136[11] = *(&a1[8] + v135);
        if (v135 == -96)
        {
          break;
        }

        v138 = *a3;
        v143 = v146;
        v144 = v147;
        v145 = v148;
        v139 = v136[4];
        v142[0] = v136[3];
        v142[1] = v139;
        v142[2] = v136[5];
        v135 -= 48;
        if (((v138)(&v143, v142) & 1) == 0)
        {
          v140 = (a1 + v135 + 144);
          goto LABEL_41;
        }
      }

      v140 = a1;
LABEL_41:
      v141 = v147;
      *v140 = v146;
      v140[1] = v141;
      v140[2] = v148;
      if (++v129 == 8)
      {
        return &v127[3] == a2;
      }
    }

    v62 = v127;
    v128 += 48;
    v127 += 3;
    if (v127 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_100006B00(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        sub_100006CE0(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v15 = v13[1];
        v32 = *v13;
        v33 = v15;
        v34 = v13[2];
        v16 = *(a1 + 16);
        v31[0] = *a1;
        v31[1] = v16;
        v31[2] = *(a1 + 32);
        if (v14(&v32, v31))
        {
          v17 = *v13;
          v18 = v13[1];
          v19 = v13[2];
          v21 = *(a1 + 16);
          v20 = *(a1 + 32);
          *v13 = *a1;
          v13[1] = v21;
          v13[2] = v20;
          *(a1 + 16) = v18;
          *(a1 + 32) = v19;
          *a1 = v17;
          sub_100006CE0(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 3;
      do
      {
        v24 = *(a1 + 16);
        v32 = *a1;
        v33 = v24;
        v34 = *(a1 + 32);
        v25 = sub_100006EC4(a1, a4, v22);
        if (v23 == v25)
        {
          *v25 = v32;
          v25[1] = v33;
          v25[2] = v34;
        }

        else
        {
          v26 = *v23;
          v27 = v23[2];
          v25[1] = v23[1];
          v25[2] = v27;
          *v25 = v26;
          v28 = v33;
          *v23 = v32;
          v23[1] = v28;
          v23[2] = v34;
          sub_100006FAC(a1, &v25[3], a4, 0xAAAAAAAAAAAAAAABLL * ((&v25[3] - a1) >> 4));
        }

        v23 -= 3;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_100006CE0(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v46 = v4;
    v47 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 48 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v16 = v13[1];
        v43 = *v13;
        v44 = v16;
        v17 = v13[3];
        v45 = v13[2];
        v18 = v13[4];
        v19 = v13[5];
        v40 = v17;
        v41 = v18;
        v42 = v19;
        if (v15(&v43, &v40))
        {
          v13 += 3;
          v12 = v14;
        }
      }

      v20 = *a2;
      v21 = v13[1];
      v43 = *v13;
      v44 = v21;
      v45 = v13[2];
      v22 = v7[1];
      v40 = *v7;
      v41 = v22;
      v42 = v7[2];
      if ((v20(&v43, &v40) & 1) == 0)
      {
        v24 = v7[1];
        v43 = *v7;
        v44 = v24;
        v45 = v7[2];
        do
        {
          v25 = v13;
          v26 = *v13;
          v27 = v13[2];
          v7[1] = v13[1];
          v7[2] = v27;
          *v7 = v26;
          if (v9 < v12)
          {
            break;
          }

          v28 = (2 * v12) | 1;
          v13 = (a1 + 48 * v28);
          if (2 * v12 + 2 < a3)
          {
            v29 = *a2;
            v30 = v13[1];
            v40 = *v13;
            v41 = v30;
            v31 = v13[3];
            v42 = v13[2];
            v32 = v13[4];
            v33 = v13[5];
            v37 = v31;
            v38 = v32;
            v39 = v33;
            if (v29(&v40, &v37))
            {
              v13 += 3;
              v28 = 2 * v12 + 2;
            }
          }

          v34 = *a2;
          v35 = v13[1];
          v40 = *v13;
          v41 = v35;
          v42 = v13[2];
          v37 = v43;
          v38 = v44;
          v39 = v45;
          v7 = v25;
          v12 = v28;
        }

        while (!v34(&v40, &v37));
        result = v43;
        v36 = v45;
        v25[1] = v44;
        v25[2] = v36;
        *v25 = result;
      }
    }
  }

  return result;
}

_OWORD *sub_100006EC4(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v22[1] = v8[4];
      v22[2] = v14;
      v22[0] = v13;
      v15 = v8 + 6;
      v16 = v8[6];
      v17 = v8[8];
      v21[1] = v8[7];
      v21[2] = v17;
      v21[0] = v16;
      if (v12(v22, v21))
      {
        v9 = v15;
        v10 = v11;
      }
    }

    v18 = *v9;
    v19 = v9[2];
    a1[1] = v9[1];
    a1[2] = v19;
    *a1 = v18;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_100006FAC(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v9 = (a4 - 2) >> 1;
    v10 = *a3;
    v11 = (a1 + 48 * v9);
    v12 = v11[1];
    v28 = *v11;
    v29 = v12;
    v30 = v11[2];
    v13 = *(a2 - 32);
    v25 = *(a2 - 48);
    v26 = v13;
    v27 = *(a2 - 16);
    if (v10(&v28, &v25))
    {
      v15 = (a2 - 48);
      v16 = *(a2 - 32);
      v28 = *(a2 - 48);
      v29 = v16;
      v30 = *(a2 - 16);
      do
      {
        v17 = v11;
        v18 = *v11;
        v19 = v11[2];
        v15[1] = v11[1];
        v15[2] = v19;
        *v15 = v18;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v20 = *a3;
        v11 = (a1 + 48 * v9);
        v21 = v11[1];
        v25 = *v11;
        v26 = v21;
        v27 = v11[2];
        v24[0] = v28;
        v24[1] = v29;
        v24[2] = v30;
        v22 = v20(&v25, v24);
        v15 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v29;
      *v17 = v28;
      v17[1] = v23;
      result = *&v30;
      v17[2] = v30;
    }
  }

  return result;
}

void sub_1000070BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100004C00();
}

void sub_100007104(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 4;
  v9 = a2 - 8;
  v10 = a2 - 12;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 6;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v450 = *a3;
      v451 = *(a2 - 4);
      v452 = *(a2 - 3);
      v453 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v453;
      v495 = v451;
      v496 = v452;
      v454 = *v11;
      v455 = v11[1];
      v456 = v11[3];
      v493 = v11[2];
      v494 = v456;
      v491 = v454;
      v492 = v455;
      if (!v450(&v495, &v491))
      {
        return;
      }

      goto LABEL_78;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {
        sub_10000834C(v11, a2, a3);
      }

      else
      {
        sub_100008484(v11, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {
        sub_100009048(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[4 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[3];
      v497 = v15[2];
      v498 = v19;
      v495 = v17;
      v496 = v18;
      v20 = *v11;
      v21 = v11[1];
      v22 = v11[3];
      v493 = v11[2];
      v494 = v22;
      v491 = v20;
      v492 = v21;
      v23 = v16(&v495, &v491);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 3);
        v27 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v27;
        v495 = v25;
        v496 = v26;
        v28 = *v15;
        v29 = v15[1];
        v30 = v15[3];
        v493 = v15[2];
        v494 = v30;
        v491 = v28;
        v492 = v29;
        if (v24(&v495, &v491))
        {
          v31 = *v11;
          v32 = v11[1];
          v33 = v11[3];
          v497 = v11[2];
          v498 = v33;
          v495 = v31;
          v496 = v32;
          v34 = *v8;
          v35 = *(a2 - 3);
          v36 = *(a2 - 1);
          v11[2] = *(a2 - 2);
          v11[3] = v36;
          *v11 = v34;
          v11[1] = v35;
          goto LABEL_27;
        }

        v113 = *v11;
        v114 = v11[1];
        v115 = v11[3];
        v497 = v11[2];
        v498 = v115;
        v495 = v113;
        v496 = v114;
        v116 = *v15;
        v117 = v15[1];
        v118 = v15[3];
        v11[2] = v15[2];
        v11[3] = v118;
        *v11 = v116;
        v11[1] = v117;
        v119 = v495;
        v120 = v496;
        v121 = v498;
        v15[2] = v497;
        v15[3] = v121;
        *v15 = v119;
        v15[1] = v120;
        v122 = *a3;
        v123 = *v8;
        v124 = *(a2 - 3);
        v125 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v125;
        v495 = v123;
        v496 = v124;
        v126 = *v15;
        v127 = v15[1];
        v128 = v15[3];
        v493 = v15[2];
        v494 = v128;
        v491 = v126;
        v492 = v127;
        if (v122(&v495, &v491))
        {
          v129 = *v15;
          v130 = v15[1];
          v131 = v15[3];
          v497 = v15[2];
          v498 = v131;
          v495 = v129;
          v496 = v130;
          v132 = *v8;
          v133 = *(a2 - 3);
          v134 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v134;
          *v15 = v132;
          v15[1] = v133;
LABEL_27:
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
        }
      }

      else
      {
        v57 = *v8;
        v58 = *(a2 - 3);
        v59 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v59;
        v495 = v57;
        v496 = v58;
        v60 = *v15;
        v61 = v15[1];
        v62 = v15[3];
        v493 = v15[2];
        v494 = v62;
        v491 = v60;
        v492 = v61;
        if (v24(&v495, &v491))
        {
          v63 = *v15;
          v64 = v15[1];
          v65 = v15[3];
          v497 = v15[2];
          v498 = v65;
          v495 = v63;
          v496 = v64;
          v66 = *v8;
          v67 = *(a2 - 3);
          v68 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v68;
          *v15 = v66;
          v15[1] = v67;
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
          v69 = *a3;
          v70 = *v15;
          v71 = v15[1];
          v72 = v15[3];
          v497 = v15[2];
          v498 = v72;
          v495 = v70;
          v496 = v71;
          v73 = *v11;
          v74 = v11[1];
          v75 = v11[3];
          v493 = v11[2];
          v494 = v75;
          v491 = v73;
          v492 = v74;
          if (v69(&v495, &v491))
          {
            v76 = *v11;
            v77 = v11[1];
            v78 = v11[3];
            v497 = v11[2];
            v498 = v78;
            v495 = v76;
            v496 = v77;
            v79 = *v15;
            v80 = v15[1];
            v81 = v15[3];
            v11[2] = v15[2];
            v11[3] = v81;
            *v11 = v79;
            v11[1] = v80;
            v82 = v495;
            v83 = v496;
            v84 = v498;
            v15[2] = v497;
            v15[3] = v84;
            *v15 = v82;
            v15[1] = v83;
          }
        }
      }

      v135 = v15 - 4;
      v136 = *a3;
      v137 = *(v15 - 4);
      v138 = *(v15 - 3);
      v139 = *(v15 - 1);
      v497 = *(v15 - 2);
      v498 = v139;
      v495 = v137;
      v496 = v138;
      v140 = a1[5];
      v491 = a1[4];
      v492 = v140;
      v141 = a1[7];
      v493 = a1[6];
      v494 = v141;
      v142 = v136(&v495, &v491);
      v143 = *a3;
      if (v142)
      {
        v144 = *v9;
        v145 = *(a2 - 7);
        v146 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v146;
        v495 = v144;
        v496 = v145;
        v147 = *v135;
        v148 = *(v15 - 3);
        v149 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v149;
        v491 = v147;
        v492 = v148;
        if (v143(&v495, &v491))
        {
          v151 = a1[6];
          v150 = a1[7];
          v153 = a1[4];
          v152 = a1[5];
          v154 = *(a2 - 5);
          v156 = *v9;
          v155 = *(a2 - 7);
          a1[6] = *(a2 - 6);
          a1[7] = v154;
          a1[4] = v156;
          a1[5] = v155;
          *v9 = v153;
          *(a2 - 7) = v152;
          *(a2 - 6) = v151;
          goto LABEL_39;
        }

        v205 = a1[5];
        v495 = a1[4];
        v204 = v495;
        v496 = v205;
        v207 = a1[7];
        v497 = a1[6];
        v206 = v497;
        v498 = v207;
        v209 = *(v15 - 2);
        v208 = *(v15 - 1);
        v210 = *(v15 - 3);
        a1[4] = *v135;
        a1[5] = v210;
        a1[6] = v209;
        a1[7] = v208;
        *(v15 - 2) = v206;
        *(v15 - 1) = v207;
        *v135 = v204;
        *(v15 - 3) = v205;
        v211 = *a3;
        v212 = *v9;
        v213 = *(a2 - 7);
        v214 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v214;
        v495 = v212;
        v496 = v213;
        v215 = *v135;
        v216 = *(v15 - 3);
        v217 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v217;
        v491 = v215;
        v492 = v216;
        if (v211(&v495, &v491))
        {
          v218 = *v135;
          v219 = *(v15 - 3);
          v220 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v220;
          v495 = v218;
          v496 = v219;
          v221 = *v9;
          v222 = *(a2 - 7);
          v223 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v223;
          *v135 = v221;
          *(v15 - 3) = v222;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          v150 = v498;
LABEL_39:
          *(a2 - 5) = v150;
        }
      }

      else
      {
        v157 = *v9;
        v158 = *(a2 - 7);
        v159 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v159;
        v495 = v157;
        v496 = v158;
        v160 = *v135;
        v161 = *(v15 - 3);
        v162 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v162;
        v491 = v160;
        v492 = v161;
        if (v143(&v495, &v491))
        {
          v163 = *v135;
          v164 = *(v15 - 3);
          v165 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v165;
          v495 = v163;
          v496 = v164;
          v166 = *v9;
          v167 = *(a2 - 7);
          v168 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v168;
          *v135 = v166;
          *(v15 - 3) = v167;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          *(a2 - 5) = v498;
          v169 = *a3;
          v170 = *v135;
          v171 = *(v15 - 3);
          v172 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v172;
          v495 = v170;
          v496 = v171;
          v173 = a1[5];
          v491 = a1[4];
          v492 = v173;
          v174 = a1[7];
          v493 = a1[6];
          v494 = v174;
          if (v169(&v495, &v491))
          {
            v176 = a1[5];
            v495 = a1[4];
            v175 = v495;
            v496 = v176;
            v178 = a1[7];
            v497 = a1[6];
            v177 = v497;
            v498 = v178;
            v180 = *(v15 - 2);
            v179 = *(v15 - 1);
            v181 = *(v15 - 3);
            a1[4] = *v135;
            a1[5] = v181;
            a1[6] = v180;
            a1[7] = v179;
            *(v15 - 2) = v177;
            *(v15 - 1) = v178;
            *v135 = v175;
            *(v15 - 3) = v176;
          }
        }
      }

      v224 = *a3;
      v225 = v15[4];
      v226 = v15[5];
      v227 = v15[7];
      v497 = v15[6];
      v498 = v227;
      v495 = v225;
      v496 = v226;
      v228 = a1[9];
      v491 = a1[8];
      v492 = v228;
      v229 = a1[11];
      v493 = a1[10];
      v494 = v229;
      v230 = v224(&v495, &v491);
      v231 = *a3;
      if (v230)
      {
        v232 = *v10;
        v233 = *(a2 - 11);
        v234 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v234;
        v495 = v232;
        v496 = v233;
        v235 = v15[4];
        v236 = v15[5];
        v237 = v15[7];
        v493 = v15[6];
        v494 = v237;
        v491 = v235;
        v492 = v236;
        if (v231(&v495, &v491))
        {
          v239 = a1[10];
          v238 = a1[11];
          v241 = a1[8];
          v240 = a1[9];
          v242 = *(a2 - 9);
          v244 = *v10;
          v243 = *(a2 - 11);
          a1[10] = *(a2 - 10);
          a1[11] = v242;
          a1[8] = v244;
          a1[9] = v243;
          *v10 = v241;
          *(a2 - 11) = v240;
          *(a2 - 10) = v239;
          goto LABEL_48;
        }

        v271 = a1[9];
        v495 = a1[8];
        v270 = v495;
        v496 = v271;
        v273 = a1[11];
        v497 = a1[10];
        v272 = v497;
        v498 = v273;
        v275 = v15[6];
        v274 = v15[7];
        v276 = v15[5];
        a1[8] = v15[4];
        a1[9] = v276;
        a1[10] = v275;
        a1[11] = v274;
        v15[6] = v272;
        v15[7] = v273;
        v15[4] = v270;
        v15[5] = v271;
        v277 = *a3;
        v278 = *v10;
        v279 = *(a2 - 11);
        v280 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v280;
        v495 = v278;
        v496 = v279;
        v281 = v15[4];
        v282 = v15[5];
        v283 = v15[7];
        v493 = v15[6];
        v494 = v283;
        v491 = v281;
        v492 = v282;
        if (v277(&v495, &v491))
        {
          v284 = v15[4];
          v285 = v15[5];
          v286 = v15[7];
          v497 = v15[6];
          v498 = v286;
          v495 = v284;
          v496 = v285;
          v287 = *v10;
          v288 = *(a2 - 11);
          v289 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v289;
          v15[4] = v287;
          v15[5] = v288;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          v238 = v498;
LABEL_48:
          *(a2 - 9) = v238;
        }
      }

      else
      {
        v245 = *v10;
        v246 = *(a2 - 11);
        v247 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v247;
        v495 = v245;
        v496 = v246;
        v248 = v15[4];
        v249 = v15[5];
        v250 = v15[7];
        v493 = v15[6];
        v494 = v250;
        v491 = v248;
        v492 = v249;
        if (v231(&v495, &v491))
        {
          v251 = v15[4];
          v252 = v15[5];
          v253 = v15[7];
          v497 = v15[6];
          v498 = v253;
          v495 = v251;
          v496 = v252;
          v254 = *v10;
          v255 = *(a2 - 11);
          v256 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v256;
          v15[4] = v254;
          v15[5] = v255;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          *(a2 - 9) = v498;
          v257 = *a3;
          v258 = v15[4];
          v259 = v15[5];
          v260 = v15[7];
          v497 = v15[6];
          v498 = v260;
          v495 = v258;
          v496 = v259;
          v261 = a1[9];
          v491 = a1[8];
          v492 = v261;
          v262 = a1[11];
          v493 = a1[10];
          v494 = v262;
          if (v257(&v495, &v491))
          {
            v264 = a1[9];
            v495 = a1[8];
            v263 = v495;
            v496 = v264;
            v266 = a1[11];
            v497 = a1[10];
            v265 = v497;
            v498 = v266;
            v268 = v15[6];
            v267 = v15[7];
            v269 = v15[5];
            a1[8] = v15[4];
            a1[9] = v269;
            a1[10] = v268;
            a1[11] = v267;
            v15[6] = v265;
            v15[7] = v266;
            v15[4] = v263;
            v15[5] = v264;
          }
        }
      }

      v290 = *a3;
      v291 = *v15;
      v292 = v15[1];
      v293 = v15[3];
      v497 = v15[2];
      v498 = v293;
      v495 = v291;
      v496 = v292;
      v294 = *v135;
      v295 = *(v15 - 3);
      v296 = *(v15 - 1);
      v493 = *(v15 - 2);
      v494 = v296;
      v491 = v294;
      v492 = v295;
      v297 = v290(&v495, &v491);
      v298 = *a3;
      if (v297)
      {
        v299 = v15[4];
        v300 = v15[5];
        v301 = v15[7];
        v497 = v15[6];
        v498 = v301;
        v495 = v299;
        v496 = v300;
        v302 = *v15;
        v303 = v15[1];
        v304 = v15[3];
        v493 = v15[2];
        v494 = v304;
        v491 = v302;
        v492 = v303;
        if (v298(&v495, &v491))
        {
          v305 = *v135;
          v306 = *(v15 - 3);
          v307 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v307;
          v495 = v305;
          v496 = v306;
          v308 = v15[5];
          *v135 = v15[4];
          *(v15 - 3) = v308;
          v309 = v15[7];
          *(v15 - 2) = v15[6];
          *(v15 - 1) = v309;
          goto LABEL_57;
        }

        v339 = *v135;
        v340 = *(v15 - 3);
        v341 = *(v15 - 1);
        v497 = *(v15 - 2);
        v498 = v341;
        v495 = v339;
        v496 = v340;
        v342 = v15[1];
        *v135 = *v15;
        *(v15 - 3) = v342;
        v343 = v15[3];
        *(v15 - 2) = v15[2];
        *(v15 - 1) = v343;
        v344 = v498;
        v345 = v495;
        v346 = v496;
        v15[2] = v497;
        v15[3] = v344;
        *v15 = v345;
        v15[1] = v346;
        v347 = *a3;
        v348 = v15[4];
        v349 = v15[5];
        v350 = v15[7];
        v497 = v15[6];
        v498 = v350;
        v495 = v348;
        v496 = v349;
        v351 = *v15;
        v352 = v15[1];
        v353 = v15[3];
        v493 = v15[2];
        v494 = v353;
        v491 = v351;
        v492 = v352;
        if (v347(&v495, &v491))
        {
          v354 = *v15;
          v355 = v15[1];
          v356 = v15[3];
          v497 = v15[2];
          v498 = v356;
          v495 = v354;
          v496 = v355;
          v357 = v15[5];
          *v15 = v15[4];
          v15[1] = v357;
          v358 = v15[7];
          v15[2] = v15[6];
          v15[3] = v358;
LABEL_57:
          v359 = v498;
          v360 = v495;
          v361 = v496;
          v15[6] = v497;
          v15[7] = v359;
          v15[4] = v360;
          v15[5] = v361;
        }
      }

      else
      {
        v310 = v15[4];
        v311 = v15[5];
        v312 = v15[7];
        v497 = v15[6];
        v498 = v312;
        v495 = v310;
        v496 = v311;
        v313 = *v15;
        v314 = v15[1];
        v315 = v15[3];
        v493 = v15[2];
        v494 = v315;
        v491 = v313;
        v492 = v314;
        if (v298(&v495, &v491))
        {
          v316 = *v15;
          v317 = v15[1];
          v318 = v15[3];
          v497 = v15[2];
          v498 = v318;
          v495 = v316;
          v496 = v317;
          v319 = v15[5];
          *v15 = v15[4];
          v15[1] = v319;
          v320 = v15[7];
          v15[2] = v15[6];
          v15[3] = v320;
          v321 = v498;
          v322 = v495;
          v323 = v496;
          v15[6] = v497;
          v15[7] = v321;
          v15[4] = v322;
          v15[5] = v323;
          v324 = *a3;
          v325 = *v15;
          v326 = v15[1];
          v327 = v15[3];
          v497 = v15[2];
          v498 = v327;
          v495 = v325;
          v496 = v326;
          v328 = *v135;
          v329 = *(v15 - 3);
          v330 = *(v15 - 1);
          v493 = *(v15 - 2);
          v494 = v330;
          v491 = v328;
          v492 = v329;
          if (v324(&v495, &v491))
          {
            v331 = *v135;
            v332 = *(v15 - 3);
            v333 = *(v15 - 1);
            v497 = *(v15 - 2);
            v498 = v333;
            v495 = v331;
            v496 = v332;
            v334 = v15[1];
            *v135 = *v15;
            *(v15 - 3) = v334;
            v335 = v15[3];
            *(v15 - 2) = v15[2];
            *(v15 - 1) = v335;
            v336 = v498;
            v337 = v495;
            v338 = v496;
            v15[2] = v497;
            v15[3] = v336;
            *v15 = v337;
            v15[1] = v338;
          }
        }
      }

      v362 = *a1;
      v363 = a1[1];
      v364 = a1[3];
      v497 = a1[2];
      v498 = v364;
      v495 = v362;
      v496 = v363;
      v365 = *v15;
      v366 = v15[1];
      v367 = v15[3];
      a1[2] = v15[2];
      a1[3] = v367;
      *a1 = v365;
      a1[1] = v366;
      v368 = v495;
      v369 = v496;
      v370 = v498;
      v15[2] = v497;
      v15[3] = v370;
      *v15 = v368;
      v15[1] = v369;
      goto LABEL_59;
    }

    v37 = *v11;
    v38 = v11[1];
    v39 = v11[3];
    v497 = v11[2];
    v498 = v39;
    v495 = v37;
    v496 = v38;
    v40 = *v15;
    v41 = v15[1];
    v42 = v15[3];
    v493 = v15[2];
    v494 = v42;
    v491 = v40;
    v492 = v41;
    v43 = v16(&v495, &v491);
    v44 = *a3;
    if (v43)
    {
      v45 = *v8;
      v46 = *(a2 - 3);
      v47 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v47;
      v495 = v45;
      v496 = v46;
      v48 = *v11;
      v49 = v11[1];
      v50 = v11[3];
      v493 = v11[2];
      v494 = v50;
      v491 = v48;
      v492 = v49;
      if (v44(&v495, &v491))
      {
        v51 = *v15;
        v52 = v15[1];
        v53 = v15[3];
        v497 = v15[2];
        v498 = v53;
        v495 = v51;
        v496 = v52;
        v54 = *v8;
        v55 = *(a2 - 3);
        v56 = *(a2 - 1);
        v15[2] = *(a2 - 2);
        v15[3] = v56;
        *v15 = v54;
        v15[1] = v55;
LABEL_36:
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        goto LABEL_59;
      }

      v182 = *v15;
      v183 = v15[1];
      v184 = v15[3];
      v497 = v15[2];
      v498 = v184;
      v495 = v182;
      v496 = v183;
      v185 = *v11;
      v186 = v11[1];
      v187 = v11[3];
      v15[2] = v11[2];
      v15[3] = v187;
      *v15 = v185;
      v15[1] = v186;
      v188 = v495;
      v189 = v496;
      v190 = v498;
      v11[2] = v497;
      v11[3] = v190;
      *v11 = v188;
      v11[1] = v189;
      v191 = *a3;
      v192 = *v8;
      v193 = *(a2 - 3);
      v194 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v194;
      v495 = v192;
      v496 = v193;
      v195 = *v11;
      v196 = v11[1];
      v197 = v11[3];
      v493 = v11[2];
      v494 = v197;
      v491 = v195;
      v492 = v196;
      if (v191(&v495, &v491))
      {
        v198 = *v11;
        v199 = v11[1];
        v200 = v11[3];
        v497 = v11[2];
        v498 = v200;
        v495 = v198;
        v496 = v199;
        v201 = *v8;
        v202 = *(a2 - 3);
        v203 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v203;
        *v11 = v201;
        v11[1] = v202;
        goto LABEL_36;
      }
    }

    else
    {
      v85 = *v8;
      v86 = *(a2 - 3);
      v87 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v87;
      v495 = v85;
      v496 = v86;
      v88 = *v11;
      v89 = v11[1];
      v90 = v11[3];
      v493 = v11[2];
      v494 = v90;
      v491 = v88;
      v492 = v89;
      if (v44(&v495, &v491))
      {
        v91 = *v11;
        v92 = v11[1];
        v93 = v11[3];
        v497 = v11[2];
        v498 = v93;
        v495 = v91;
        v496 = v92;
        v94 = *v8;
        v95 = *(a2 - 3);
        v96 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v96;
        *v11 = v94;
        v11[1] = v95;
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        v97 = *a3;
        v98 = *v11;
        v99 = v11[1];
        v100 = v11[3];
        v497 = v11[2];
        v498 = v100;
        v495 = v98;
        v496 = v99;
        v101 = *v15;
        v102 = v15[1];
        v103 = v15[3];
        v493 = v15[2];
        v494 = v103;
        v491 = v101;
        v492 = v102;
        if (v97(&v495, &v491))
        {
          v104 = *v15;
          v105 = v15[1];
          v106 = v15[3];
          v497 = v15[2];
          v498 = v106;
          v495 = v104;
          v496 = v105;
          v107 = *v11;
          v108 = v11[1];
          v109 = v11[3];
          v15[2] = v11[2];
          v15[3] = v109;
          *v15 = v107;
          v15[1] = v108;
          v110 = v495;
          v111 = v496;
          v112 = v498;
          v11[2] = v497;
          v11[3] = v112;
          *v11 = v110;
          v11[1] = v111;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v371 = *a3;
      v372 = *(a1 - 4);
      v373 = *(a1 - 3);
      v374 = *(a1 - 1);
      v497 = *(a1 - 2);
      v498 = v374;
      v495 = v372;
      v496 = v373;
      v375 = *a1;
      v376 = a1[1];
      v377 = a1[3];
      v493 = a1[2];
      v494 = v377;
      v491 = v375;
      v492 = v376;
      if ((v371(&v495, &v491) & 1) == 0)
      {
        v11 = sub_10000858C(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v378 = sub_1000087C4(a1, a2, a3);
    if ((v379 & 1) == 0)
    {
      goto LABEL_64;
    }

    v380 = sub_1000089DC(a1, v378, a3);
    v11 = &v378[4];
    if (sub_1000089DC(v378 + 4, a2, a3))
    {
      a4 = -v13;
      a2 = v378;
      if (v380)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v380)
    {
LABEL_64:
      sub_100007104(a1, v378, a3, -v13, a5 & 1);
      v11 = &v378[4];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      sub_100008068(v11, v11 + 4, v11 + 8, a2 - 4, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_100008068(v11, v11 + 4, v11 + 8, v11 + 12, a3);
      v415 = *a3;
      v416 = *(a2 - 4);
      v417 = *(a2 - 3);
      v418 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v418;
      v495 = v416;
      v496 = v417;
      v419 = v11[13];
      v491 = v11[12];
      v492 = v419;
      v420 = v11[15];
      v493 = v11[14];
      v494 = v420;
      if (v415(&v495, &v491))
      {
        v422 = v11[14];
        v421 = v11[15];
        v424 = v11[12];
        v423 = v11[13];
        v425 = *(a2 - 1);
        v427 = *v8;
        v426 = *(a2 - 3);
        v11[14] = *(a2 - 2);
        v11[15] = v425;
        v11[12] = v427;
        v11[13] = v426;
        *v8 = v424;
        *(a2 - 3) = v423;
        *(a2 - 2) = v422;
        *(a2 - 1) = v421;
        v428 = *a3;
        v429 = v11[13];
        v495 = v11[12];
        v496 = v429;
        v430 = v11[15];
        v497 = v11[14];
        v498 = v430;
        v431 = v11[9];
        v491 = v11[8];
        v492 = v431;
        v432 = v11[11];
        v493 = v11[10];
        v494 = v432;
        if (v428(&v495, &v491))
        {
          v434 = v11[10];
          v433 = v11[11];
          v436 = v11[8];
          v435 = v11[9];
          v437 = v11[13];
          v11[8] = v11[12];
          v11[9] = v437;
          v438 = v11[15];
          v11[10] = v11[14];
          v11[11] = v438;
          v11[12] = v436;
          v11[13] = v435;
          v11[14] = v434;
          v11[15] = v433;
          v439 = *a3;
          v440 = v11[9];
          v495 = v11[8];
          v496 = v440;
          v441 = v11[11];
          v497 = v11[10];
          v498 = v441;
          v442 = v11[5];
          v491 = v11[4];
          v492 = v442;
          v443 = v11[7];
          v493 = v11[6];
          v494 = v443;
          if (v439(&v495, &v491))
          {
            v445 = v11[6];
            v444 = v11[7];
            v447 = v11[4];
            v446 = v11[5];
            v448 = v11[9];
            v11[4] = v11[8];
            v11[5] = v448;
            v449 = v11[11];
            v11[6] = v11[10];
            v11[7] = v449;
            v11[8] = v447;
            v11[9] = v446;
            v11[10] = v445;
            v11[11] = v444;
LABEL_86:
            v476 = *a3;
            v477 = v11[5];
            v495 = v11[4];
            v496 = v477;
            v478 = v11[7];
            v497 = v11[6];
            v498 = v478;
            v479 = *v11;
            v480 = v11[1];
            v481 = v11[3];
            v493 = v11[2];
            v494 = v481;
            v491 = v479;
            v492 = v480;
            if (v476(&v495, &v491))
            {
              v482 = *v11;
              v483 = v11[1];
              v484 = v11[3];
              v497 = v11[2];
              v498 = v484;
              v495 = v482;
              v496 = v483;
              v485 = v11[5];
              *v11 = v11[4];
              v11[1] = v485;
              v486 = v11[7];
              v11[2] = v11[6];
              v11[3] = v486;
              v487 = v495;
              v488 = v496;
              v489 = v498;
              v11[6] = v497;
              v11[7] = v489;
              v11[4] = v487;
              v11[5] = v488;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v381 = *a3;
  v382 = v11[5];
  v495 = v11[4];
  v496 = v382;
  v383 = v11[7];
  v497 = v11[6];
  v498 = v383;
  v384 = *v11;
  v385 = v11[1];
  v386 = v11[3];
  v493 = v11[2];
  v494 = v386;
  v491 = v384;
  v492 = v385;
  v387 = v381(&v495, &v491);
  v388 = *a3;
  if (v387)
  {
    v389 = *v8;
    v390 = *(a2 - 3);
    v391 = *(a2 - 1);
    v497 = *(a2 - 2);
    v498 = v391;
    v495 = v389;
    v496 = v390;
    v392 = v11[5];
    v491 = v11[4];
    v492 = v392;
    v393 = v11[7];
    v493 = v11[6];
    v494 = v393;
    if (!v388(&v495, &v491))
    {
      v394 = *v11;
      v395 = v11[1];
      v396 = v11[3];
      v497 = v11[2];
      v498 = v396;
      v495 = v394;
      v496 = v395;
      v397 = v11[5];
      *v11 = v11[4];
      v11[1] = v397;
      v398 = v11[7];
      v11[2] = v11[6];
      v11[3] = v398;
      v399 = v495;
      v400 = v496;
      v401 = v498;
      v11[6] = v497;
      v11[7] = v401;
      v11[4] = v399;
      v11[5] = v400;
      v402 = *a3;
      v403 = *v8;
      v404 = *(a2 - 3);
      v405 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v405;
      v495 = v403;
      v496 = v404;
      v406 = v11[5];
      v491 = v11[4];
      v492 = v406;
      v407 = v11[7];
      v493 = v11[6];
      v494 = v407;
      if (v402(&v495, &v491))
      {
        v409 = v11[6];
        v408 = v11[7];
        v411 = v11[4];
        v410 = v11[5];
        v412 = *(a2 - 1);
        v414 = *v8;
        v413 = *(a2 - 3);
        v11[6] = *(a2 - 2);
        v11[7] = v412;
        v11[4] = v414;
        v11[5] = v413;
        *v8 = v411;
        *(a2 - 3) = v410;
        *(a2 - 2) = v409;
        *(a2 - 1) = v408;
      }

      return;
    }

LABEL_78:
    v458 = *v11;
    v459 = v11[1];
    v460 = v11[3];
    v497 = v11[2];
    v498 = v460;
    v495 = v458;
    v496 = v459;
    v461 = *v8;
    v462 = *(a2 - 3);
    v463 = *(a2 - 1);
    v11[2] = *(a2 - 2);
    v11[3] = v463;
    *v11 = v461;
    v11[1] = v462;
    *v8 = v495;
    *(a2 - 3) = v496;
    *(a2 - 2) = v497;
    *(a2 - 1) = v498;
    return;
  }

  v464 = *v8;
  v465 = *(a2 - 3);
  v466 = *(a2 - 1);
  v497 = *(a2 - 2);
  v498 = v466;
  v495 = v464;
  v496 = v465;
  v467 = v11[5];
  v491 = v11[4];
  v492 = v467;
  v468 = v11[7];
  v493 = v11[6];
  v494 = v468;
  if (v388(&v495, &v491))
  {
    v470 = v11[6];
    v469 = v11[7];
    v472 = v11[4];
    v471 = v11[5];
    v473 = *(a2 - 1);
    v475 = *v8;
    v474 = *(a2 - 3);
    v11[6] = *(a2 - 2);
    v11[7] = v473;
    v11[4] = v475;
    v11[5] = v474;
    *v8 = v472;
    *(a2 - 3) = v471;
    *(a2 - 2) = v470;
    *(a2 - 1) = v469;
    goto LABEL_86;
  }
}

__n128 sub_100008068(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v106 = *a2;
  v107 = v11;
  v12 = a2[3];
  v108 = a2[2];
  v109 = v12;
  v13 = a1[1];
  v102 = *a1;
  v103 = v13;
  v14 = a1[3];
  v104 = a1[2];
  v105 = v14;
  v15 = v10(&v106, &v102);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[1];
    v106 = *a3;
    v107 = v17;
    v18 = a3[3];
    v108 = a3[2];
    v109 = v18;
    v19 = a2[1];
    v102 = *a2;
    v103 = v19;
    v20 = a2[3];
    v104 = a2[2];
    v105 = v20;
    if (v16(&v106, &v102))
    {
      v22 = a1[2];
      v21 = a1[3];
      v24 = *a1;
      v23 = a1[1];
      v25 = a3[3];
      v27 = *a3;
      v26 = a3[1];
      a1[2] = a3[2];
      a1[3] = v25;
      *a1 = v27;
      a1[1] = v26;
LABEL_9:
      *a3 = v24;
      a3[1] = v23;
      a3[2] = v22;
      a3[3] = v21;
      goto LABEL_10;
    }

    v52 = a1[2];
    v51 = a1[3];
    v54 = *a1;
    v53 = a1[1];
    v55 = a2[3];
    v57 = *a2;
    v56 = a2[1];
    a1[2] = a2[2];
    a1[3] = v55;
    *a1 = v57;
    a1[1] = v56;
    *a2 = v54;
    a2[1] = v53;
    a2[2] = v52;
    a2[3] = v51;
    v58 = *a5;
    v59 = a3[1];
    v106 = *a3;
    v107 = v59;
    v60 = a3[3];
    v108 = a3[2];
    v109 = v60;
    v61 = a2[1];
    v102 = *a2;
    v103 = v61;
    v62 = a2[3];
    v104 = a2[2];
    v105 = v62;
    if (v58(&v106, &v102))
    {
      v22 = a2[2];
      v21 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v63 = a3[3];
      v65 = *a3;
      v64 = a3[1];
      a2[2] = a3[2];
      a2[3] = v63;
      *a2 = v65;
      a2[1] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v28 = a3[1];
    v106 = *a3;
    v107 = v28;
    v29 = a3[3];
    v108 = a3[2];
    v109 = v29;
    v30 = a2[1];
    v102 = *a2;
    v103 = v30;
    v31 = a2[3];
    v104 = a2[2];
    v105 = v31;
    if (v16(&v106, &v102))
    {
      v33 = a2[2];
      v32 = a2[3];
      v35 = *a2;
      v34 = a2[1];
      v36 = a3[3];
      v38 = *a3;
      v37 = a3[1];
      a2[2] = a3[2];
      a2[3] = v36;
      *a2 = v38;
      a2[1] = v37;
      *a3 = v35;
      a3[1] = v34;
      a3[2] = v33;
      a3[3] = v32;
      v39 = *a5;
      v40 = a2[1];
      v106 = *a2;
      v107 = v40;
      v41 = a2[3];
      v108 = a2[2];
      v109 = v41;
      v42 = a1[1];
      v102 = *a1;
      v103 = v42;
      v43 = a1[3];
      v104 = a1[2];
      v105 = v43;
      if (v39(&v106, &v102))
      {
        v45 = a1[2];
        v44 = a1[3];
        v47 = *a1;
        v46 = a1[1];
        v48 = a2[3];
        v50 = *a2;
        v49 = a2[1];
        a1[2] = a2[2];
        a1[3] = v48;
        *a1 = v50;
        a1[1] = v49;
        *a2 = v47;
        a2[1] = v46;
        a2[2] = v45;
        a2[3] = v44;
      }
    }
  }

LABEL_10:
  v66 = *a5;
  v67 = a4[1];
  v106 = *a4;
  v107 = v67;
  v68 = a4[3];
  v108 = a4[2];
  v109 = v68;
  v69 = a3[1];
  v102 = *a3;
  v103 = v69;
  v70 = a3[3];
  v104 = a3[2];
  v105 = v70;
  if (v66(&v106, &v102))
  {
    v73 = a3[2];
    v72 = a3[3];
    v75 = *a3;
    v74 = a3[1];
    v76 = a4[3];
    v78 = *a4;
    v77 = a4[1];
    a3[2] = a4[2];
    a3[3] = v76;
    *a3 = v78;
    a3[1] = v77;
    *a4 = v75;
    a4[1] = v74;
    a4[2] = v73;
    a4[3] = v72;
    v79 = *a5;
    v80 = a3[1];
    v106 = *a3;
    v107 = v80;
    v81 = a3[3];
    v108 = a3[2];
    v109 = v81;
    v82 = a2[1];
    v102 = *a2;
    v103 = v82;
    v83 = a2[3];
    v104 = a2[2];
    v105 = v83;
    if (v79(&v106, &v102))
    {
      v85 = a2[2];
      v84 = a2[3];
      v87 = *a2;
      v86 = a2[1];
      v88 = a3[3];
      v90 = *a3;
      v89 = a3[1];
      a2[2] = a3[2];
      a2[3] = v88;
      *a2 = v90;
      a2[1] = v89;
      *a3 = v87;
      a3[1] = v86;
      a3[2] = v85;
      a3[3] = v84;
      v91 = *a5;
      v92 = a2[1];
      v106 = *a2;
      v107 = v92;
      v93 = a2[3];
      v108 = a2[2];
      v109 = v93;
      v94 = a1[1];
      v102 = *a1;
      v103 = v94;
      v95 = a1[3];
      v104 = a1[2];
      v105 = v95;
      if (v91(&v106, &v102))
      {
        v96 = a1[2];
        result = a1[3];
        v98 = *a1;
        v97 = a1[1];
        v99 = a2[3];
        v101 = *a2;
        v100 = a2[1];
        a1[2] = a2[2];
        a1[3] = v99;
        *a1 = v101;
        a1[1] = v100;
        *a2 = v98;
        a2[1] = v97;
        a2[2] = v96;
        a2[3] = result;
      }
    }
  }

  return result;
}

uint64_t sub_10000834C(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v39 = v3;
    v40 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v35 = *v10;
        v36 = v13;
        v14 = v10[3];
        v37 = v10[2];
        v38 = v14;
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[3];
        v33 = v11[2];
        v34 = v17;
        v31 = v15;
        v32 = v16;
        result = v12(&v35, &v31);
        if (result)
        {
          v18 = v10[1];
          v35 = *v10;
          v36 = v18;
          v19 = v10[3];
          v37 = v10[2];
          v38 = v19;
          v20 = v9;
          while (1)
          {
            v21 = (v6 + v20);
            v22 = *(v6 + v20 + 16);
            v21[4] = *(v6 + v20);
            v21[5] = v22;
            v23 = *(v6 + v20 + 48);
            v21[6] = *(v6 + v20 + 32);
            v21[7] = v23;
            if (!v20)
            {
              break;
            }

            v24 = *a3;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v25 = *(v21 - 3);
            v30[0] = *(v21 - 4);
            v30[1] = v25;
            v26 = *(v21 - 1);
            v30[2] = *(v21 - 2);
            v30[3] = v26;
            result = v24(&v31, v30);
            v20 -= 64;
            if ((result & 1) == 0)
            {
              v27 = (v6 + v20 + 64);
              goto LABEL_10;
            }
          }

          v27 = v6;
LABEL_10:
          v28 = v36;
          *v27 = v35;
          v27[1] = v28;
          v29 = v38;
          v27[2] = v37;
          v27[3] = v29;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t sub_100008484(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v3;
    v37 = v4;
    v6 = result;
    for (i = (result + 64); v6 + 4 != a2; i = v6 + 4)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v32 = *v6;
      v33 = v11;
      v12 = v6[3];
      v34 = v6[2];
      v35 = v12;
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[3];
      v30 = v9[2];
      v31 = v15;
      v28 = v13;
      v29 = v14;
      result = v10(&v32, &v28);
      if (result)
      {
        v16 = v6[1];
        v32 = *v6;
        v33 = v16;
        v17 = v6[3];
        v34 = v6[2];
        v35 = v17;
        v18 = v6;
        do
        {
          v19 = v18 - 4;
          v20 = *(v18 - 3);
          *v18 = *(v18 - 4);
          v18[1] = v20;
          v21 = *(v18 - 1);
          v18[2] = *(v18 - 2);
          v18[3] = v21;
          v22 = *a3;
          v28 = v32;
          v29 = v33;
          v30 = v34;
          v31 = v35;
          v23 = *(v18 - 7);
          v27[0] = *(v18 - 8);
          v27[1] = v23;
          v24 = *(v18 - 5);
          v27[2] = *(v18 - 6);
          v27[3] = v24;
          result = v22(&v28, v27);
          v18 = v19;
        }

        while ((result & 1) != 0);
        v25 = v33;
        *v19 = v32;
        v19[1] = v25;
        v26 = v35;
        v19[2] = v34;
        v19[3] = v26;
      }
    }
  }

  return result;
}

__int128 *sub_10000858C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v61 = a1[2];
  v62 = v7;
  v10 = *a3;
  v63 = v9;
  v64 = v8;
  v11 = a1[3];
  v65 = a1[2];
  v66 = v11;
  v12 = *(a2 - 3);
  v55 = *(a2 - 4);
  v56 = v12;
  v13 = *(a2 - 1);
  v57 = *(a2 - 2);
  v58 = v13;
  if (v10(&v63, &v55))
  {
    v14 = a1;
    do
    {
      v15 = v14 + 4;
      v16 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v17 = v14[5];
      v55 = v14[4];
      v56 = v17;
      v18 = v14[7];
      v57 = v14[6];
      v58 = v18;
      v19 = v16(&v63, &v55);
      v14 = v15;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v20 = a1 + 4;
    do
    {
      v15 = v20;
      if (v20 >= v4)
      {
        break;
      }

      v21 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v22 = v15[1];
      v55 = *v15;
      v56 = v22;
      v23 = v15[3];
      v57 = v15[2];
      v58 = v23;
      v24 = v21(&v63, &v55);
      v20 = v15 + 4;
    }

    while (!v24);
  }

  if (v15 >= v4)
  {
    v25 = v4;
  }

  else
  {
    do
    {
      v25 = v4 - 4;
      v26 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v27 = *(v4 - 3);
      v55 = *(v4 - 4);
      v56 = v27;
      v28 = *(v4 - 1);
      v57 = *(v4 - 2);
      v58 = v28;
      v4 -= 4;
    }

    while ((v26(&v63, &v55) & 1) != 0);
  }

  while (v15 < v25)
  {
    v29 = *v15;
    v30 = v15[1];
    v31 = v15[3];
    v65 = v15[2];
    v66 = v31;
    v63 = v29;
    v64 = v30;
    v32 = *v25;
    v33 = v25[1];
    v34 = v25[3];
    v15[2] = v25[2];
    v15[3] = v34;
    *v15 = v32;
    v15[1] = v33;
    v35 = v63;
    v36 = v64;
    v37 = v66;
    v25[2] = v65;
    v25[3] = v37;
    *v25 = v35;
    v25[1] = v36;
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v38 = v15[5];
      v55 = v15[4];
      v56 = v38;
      v39 = v15[6];
      v40 = v15[7];
      v15 += 4;
      v41 = *a3;
      v57 = v39;
      v58 = v40;
    }

    while (!v41(&v63, &v55));
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v42 = *(v25 - 4);
      v43 = *(v25 - 3);
      v44 = *(v25 - 2);
      v45 = *(v25 - 1);
      v25 -= 4;
      v46 = *a3;
      v57 = v44;
      v58 = v45;
      v55 = v42;
      v56 = v43;
    }

    while ((v46(&v63, &v55) & 1) != 0);
  }

  v47 = v15 - 4;
  if (v15 - 4 != a1)
  {
    v48 = *v47;
    v49 = *(v15 - 3);
    v50 = *(v15 - 1);
    a1[2] = *(v15 - 2);
    a1[3] = v50;
    *a1 = v48;
    a1[1] = v49;
  }

  v51 = v59;
  v52 = v60;
  v53 = v62;
  *(v15 - 2) = v61;
  *(v15 - 1) = v53;
  *v47 = v51;
  *(v15 - 3) = v52;
  return v15;
}

__int128 *sub_1000087C4(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 5];
    v54 = a1[v6 + 4];
    v55 = v10;
    v11 = a1[v6 + 7];
    v56 = a1[v6 + 6];
    v57 = v11;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v6 += 4;
  }

  while ((v9(&v54, &v46) & 1) != 0);
  v12 = &a1[v6];
  v13 = &a1[v6 - 4];
  if (v6 == 4)
  {
    while (v12 < a2)
    {
      v18 = *a3;
      v14 = a2 - 4;
      v19 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v19;
      v20 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v20;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
      if (v18(&v54, &v46))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 4;
      v15 = *a3;
      v16 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v16;
      v17 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v17;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
    }

    while (!v15(&v54, &v46));
  }

LABEL_9:
  if (v12 < v14)
  {
    v21 = v12;
    v22 = v14;
    do
    {
      v24 = v21[1];
      v54 = *v21;
      v23 = v54;
      v55 = v24;
      v26 = v21[3];
      v56 = v21[2];
      v25 = v56;
      v57 = v26;
      v28 = v22[2];
      v27 = v22[3];
      v29 = v22[1];
      *v21 = *v22;
      v21[1] = v29;
      v21[2] = v28;
      v21[3] = v27;
      v22[2] = v25;
      v22[3] = v26;
      *v22 = v23;
      v22[1] = v24;
      do
      {
        v30 = v21[5];
        v54 = v21[4];
        v55 = v30;
        v31 = v21[6];
        v32 = v21[7];
        v21 += 4;
        v33 = *a3;
        v56 = v31;
        v57 = v32;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while ((v33(&v54, &v46) & 1) != 0);
      do
      {
        v34 = *(v22 - 4);
        v35 = *(v22 - 3);
        v36 = *(v22 - 2);
        v37 = *(v22 - 1);
        v22 -= 4;
        v38 = *a3;
        v56 = v36;
        v57 = v37;
        v54 = v34;
        v55 = v35;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while (!v38(&v54, &v46));
    }

    while (v21 < v22);
    v13 = v21 - 4;
  }

  if (v13 != a1)
  {
    v39 = *v13;
    v40 = v13[1];
    v41 = v13[3];
    a1[2] = v13[2];
    a1[3] = v41;
    *a1 = v39;
    a1[1] = v40;
  }

  v42 = v50;
  v43 = v51;
  v44 = v53;
  v13[2] = v52;
  v13[3] = v44;
  *v13 = v42;
  v13[1] = v43;
  return v13;
}

BOOL sub_1000089DC(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v56 = a2 - 4;
        v57 = *a3;
        v58 = a1[5];
        v189 = a1[4];
        v190 = v58;
        v59 = a1[7];
        v191 = a1[6];
        v192 = v59;
        v60 = a1[1];
        v185 = *a1;
        v186 = v60;
        v61 = a1[3];
        v187 = a1[2];
        v188 = v61;
        v62 = v57(&v189, &v185);
        v63 = *a3;
        if (v62)
        {
          v64 = v56[1];
          v189 = *v56;
          v190 = v64;
          v65 = v56[3];
          v191 = v56[2];
          v192 = v65;
          v66 = a1[5];
          v185 = a1[4];
          v186 = v66;
          v67 = a1[7];
          v187 = a1[6];
          v188 = v67;
          if (v63(&v189, &v185))
          {
            v69 = a1[2];
            v68 = a1[3];
            v71 = *a1;
            v70 = a1[1];
            v72 = v56[3];
            v74 = *v56;
            v73 = v56[1];
            a1[2] = v56[2];
            a1[3] = v72;
            *a1 = v74;
            a1[1] = v73;
          }

          else
          {
            v137 = a1[2];
            v136 = a1[3];
            v139 = *a1;
            v138 = a1[1];
            v140 = a1[5];
            *a1 = a1[4];
            a1[1] = v140;
            v141 = a1[7];
            a1[2] = a1[6];
            a1[3] = v141;
            a1[4] = v139;
            a1[5] = v138;
            a1[6] = v137;
            a1[7] = v136;
            v142 = *a3;
            v143 = v56[1];
            v189 = *v56;
            v190 = v143;
            v144 = v56[3];
            v191 = v56[2];
            v192 = v144;
            v145 = a1[5];
            v185 = a1[4];
            v186 = v145;
            v146 = a1[7];
            v187 = a1[6];
            v188 = v146;
            if (!v142(&v189, &v185))
            {
              return 1;
            }

            v69 = a1[6];
            v68 = a1[7];
            v71 = a1[4];
            v70 = a1[5];
            v147 = v56[3];
            v149 = *v56;
            v148 = v56[1];
            a1[6] = v56[2];
            a1[7] = v147;
            a1[4] = v149;
            a1[5] = v148;
          }

          *v56 = v71;
          v56[1] = v70;
          result = 1;
          v56[2] = v69;
          v56[3] = v68;
          return result;
        }

        v93 = v56[1];
        v189 = *v56;
        v190 = v93;
        v94 = v56[3];
        v191 = v56[2];
        v192 = v94;
        v95 = a1[5];
        v185 = a1[4];
        v186 = v95;
        v96 = a1[7];
        v187 = a1[6];
        v188 = v96;
        if (!v63(&v189, &v185))
        {
          return 1;
        }

        v98 = a1[6];
        v97 = a1[7];
        v100 = a1[4];
        v99 = a1[5];
        v101 = v56[3];
        v103 = *v56;
        v102 = v56[1];
        a1[6] = v56[2];
        a1[7] = v101;
        a1[4] = v103;
        a1[5] = v102;
        *v56 = v100;
        v56[1] = v99;
        v56[2] = v98;
        v56[3] = v97;
        break;
      case 4:
        sub_100008068(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        sub_100008068(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        v21 = *a3;
        v22 = a2[-3];
        v189 = a2[-4];
        v190 = v22;
        v23 = a2[-1];
        v191 = a2[-2];
        v192 = v23;
        v24 = a1[13];
        v185 = a1[12];
        v186 = v24;
        v25 = a1[15];
        v187 = a1[14];
        v188 = v25;
        if (!v21(&v189, &v185))
        {
          return 1;
        }

        v26 = a2 - 4;
        v28 = a1[14];
        v27 = a1[15];
        v30 = a1[12];
        v29 = a1[13];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        a1[14] = a2[-2];
        a1[15] = v31;
        a1[12] = v33;
        a1[13] = v32;
        *v26 = v30;
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v34 = *a3;
        v35 = a1[13];
        v189 = a1[12];
        v190 = v35;
        v36 = a1[15];
        v191 = a1[14];
        v192 = v36;
        v37 = a1[9];
        v185 = a1[8];
        v186 = v37;
        v38 = a1[11];
        v187 = a1[10];
        v188 = v38;
        if (!v34(&v189, &v185))
        {
          return 1;
        }

        v40 = a1[10];
        v39 = a1[11];
        v42 = a1[8];
        v41 = a1[9];
        v43 = a1[13];
        a1[8] = a1[12];
        a1[9] = v43;
        v44 = a1[15];
        a1[10] = a1[14];
        a1[11] = v44;
        a1[12] = v42;
        a1[13] = v41;
        a1[14] = v40;
        a1[15] = v39;
        v45 = *a3;
        v46 = a1[9];
        v189 = a1[8];
        v190 = v46;
        v47 = a1[11];
        v191 = a1[10];
        v192 = v47;
        v48 = a1[5];
        v185 = a1[4];
        v186 = v48;
        v49 = a1[7];
        v187 = a1[6];
        v188 = v49;
        if (!v45(&v189, &v185))
        {
          return 1;
        }

        v51 = a1[6];
        v50 = a1[7];
        v53 = a1[4];
        v52 = a1[5];
        v54 = a1[9];
        a1[4] = a1[8];
        a1[5] = v54;
        v55 = a1[11];
        a1[6] = a1[10];
        a1[7] = v55;
        a1[8] = v53;
        a1[9] = v52;
        a1[10] = v51;
        a1[11] = v50;
        break;
      default:
        goto LABEL_16;
    }

    v104 = *a3;
    v105 = a1[5];
    v189 = a1[4];
    v190 = v105;
    v106 = a1[7];
    v191 = a1[6];
    v192 = v106;
    v107 = a1[1];
    v185 = *a1;
    v186 = v107;
    v108 = a1[3];
    v187 = a1[2];
    v188 = v108;
    if (v104(&v189, &v185))
    {
      v110 = a1[2];
      v109 = a1[3];
      v112 = *a1;
      v111 = a1[1];
      v113 = a1[5];
      *a1 = a1[4];
      a1[1] = v113;
      v114 = a1[7];
      a1[2] = a1[6];
      a1[3] = v114;
      a1[4] = v112;
      a1[5] = v111;
      a1[6] = v110;
      a1[7] = v109;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-3];
    v189 = a2[-4];
    v190 = v8;
    v9 = a2[-1];
    v191 = a2[-2];
    v192 = v9;
    v10 = a1[1];
    v185 = *a1;
    v186 = v10;
    v11 = a1[3];
    v187 = a1[2];
    v188 = v11;
    if (v7(&v189, &v185))
    {
      v12 = a2 - 4;
      v14 = a1[2];
      v13 = a1[3];
      v16 = *a1;
      v15 = a1[1];
      v17 = a2[-1];
      v19 = a2[-4];
      v18 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v17;
      *a1 = v19;
      a1[1] = v18;
      *v12 = v16;
      v12[1] = v15;
      result = 1;
      v12[2] = v14;
      v12[3] = v13;
      return result;
    }

    return 1;
  }

LABEL_16:
  v75 = a1 + 8;
  v76 = *a3;
  v77 = a1[5];
  v189 = a1[4];
  v190 = v77;
  v78 = a1[7];
  v191 = a1[6];
  v192 = v78;
  v79 = a1[1];
  v185 = *a1;
  v186 = v79;
  v80 = a1[3];
  v187 = a1[2];
  v188 = v80;
  v81 = v76(&v189, &v185);
  v82 = *a3;
  if (v81)
  {
    v83 = a1[9];
    v189 = *v75;
    v190 = v83;
    v84 = a1[11];
    v191 = a1[10];
    v192 = v84;
    v85 = a1[5];
    v185 = a1[4];
    v186 = v85;
    v86 = a1[7];
    v187 = a1[6];
    v188 = v86;
    if (v82(&v189, &v185))
    {
      v88 = a1[2];
      v87 = a1[3];
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[9];
      *a1 = *v75;
      a1[1] = v91;
      v92 = a1[11];
      a1[2] = a1[10];
      a1[3] = v92;
    }

    else
    {
      v151 = a1[2];
      v150 = a1[3];
      v153 = *a1;
      v152 = a1[1];
      v154 = a1[5];
      *a1 = a1[4];
      a1[1] = v154;
      v155 = a1[7];
      a1[2] = a1[6];
      a1[3] = v155;
      a1[4] = v153;
      a1[5] = v152;
      a1[6] = v151;
      a1[7] = v150;
      v156 = *a3;
      v157 = a1[9];
      v189 = *v75;
      v190 = v157;
      v158 = a1[11];
      v191 = a1[10];
      v192 = v158;
      v159 = a1[5];
      v185 = a1[4];
      v186 = v159;
      v160 = a1[7];
      v187 = a1[6];
      v188 = v160;
      if (!v156(&v189, &v185))
      {
        goto LABEL_33;
      }

      v88 = a1[6];
      v87 = a1[7];
      v90 = a1[4];
      v89 = a1[5];
      v161 = a1[9];
      a1[4] = *v75;
      a1[5] = v161;
      v162 = a1[11];
      a1[6] = a1[10];
      a1[7] = v162;
    }

    *v75 = v90;
    a1[9] = v89;
    a1[10] = v88;
    a1[11] = v87;
  }

  else
  {
    v115 = a1[9];
    v189 = *v75;
    v190 = v115;
    v116 = a1[11];
    v191 = a1[10];
    v192 = v116;
    v117 = a1[5];
    v185 = a1[4];
    v186 = v117;
    v118 = a1[7];
    v187 = a1[6];
    v188 = v118;
    if (v82(&v189, &v185))
    {
      v120 = a1[6];
      v119 = a1[7];
      v122 = a1[4];
      v121 = a1[5];
      v123 = a1[9];
      a1[4] = *v75;
      a1[5] = v123;
      v124 = a1[11];
      a1[6] = a1[10];
      a1[7] = v124;
      *v75 = v122;
      a1[9] = v121;
      a1[10] = v120;
      a1[11] = v119;
      v125 = *a3;
      v126 = a1[5];
      v189 = a1[4];
      v190 = v126;
      v127 = a1[7];
      v191 = a1[6];
      v192 = v127;
      v128 = a1[1];
      v185 = *a1;
      v186 = v128;
      v129 = a1[3];
      v187 = a1[2];
      v188 = v129;
      if (v125(&v189, &v185))
      {
        v131 = a1[2];
        v130 = a1[3];
        v133 = *a1;
        v132 = a1[1];
        v134 = a1[5];
        *a1 = a1[4];
        a1[1] = v134;
        v135 = a1[7];
        a1[2] = a1[6];
        a1[3] = v135;
        a1[4] = v133;
        a1[5] = v132;
        a1[6] = v131;
        a1[7] = v130;
      }
    }
  }

LABEL_33:
  v163 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v164 = 0;
  v165 = 0;
  while (1)
  {
    v166 = *a3;
    v167 = v163[1];
    v189 = *v163;
    v190 = v167;
    v168 = v163[3];
    v191 = v163[2];
    v192 = v168;
    v169 = *v75;
    v170 = v75[1];
    v171 = v75[3];
    v187 = v75[2];
    v188 = v171;
    v185 = v169;
    v186 = v170;
    if (v166(&v189, &v185))
    {
      v172 = v163[1];
      v189 = *v163;
      v190 = v172;
      v173 = v163[3];
      v191 = v163[2];
      v192 = v173;
      v174 = v164;
      while (1)
      {
        v175 = (a1->n128_u64 + v174);
        v176 = *(&a1[9] + v174);
        v175[12] = *(&a1[8] + v174);
        v175[13] = v176;
        v177 = *(&a1[11] + v174);
        v175[14] = *(&a1[10] + v174);
        v175[15] = v177;
        if (v174 == -128)
        {
          break;
        }

        v178 = *a3;
        v185 = v189;
        v186 = v190;
        v187 = v191;
        v188 = v192;
        v179 = v175[5];
        v184[0] = v175[4];
        v184[1] = v179;
        v180 = v175[7];
        v184[2] = v175[6];
        v184[3] = v180;
        v174 -= 64;
        if (((v178)(&v185, v184) & 1) == 0)
        {
          v181 = (a1 + v174 + 192);
          goto LABEL_41;
        }
      }

      v181 = a1;
LABEL_41:
      v182 = v190;
      *v181 = v189;
      v181[1] = v182;
      v183 = v192;
      v181[2] = v191;
      v181[3] = v183;
      if (++v165 == 8)
      {
        return &v163[4] == a2;
      }
    }

    v75 = v163;
    v164 += 64;
    v163 += 4;
    if (v163 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_100009048(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + (v9 << 6));
      do
      {
        sub_100009208(a1, a4, v8, v11);
        v11 -= 4;
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
        v13 = *a4;
        v14 = v12[1];
        v37 = *v12;
        v38 = v14;
        v15 = v12[3];
        v39 = v12[2];
        v40 = v15;
        v16 = *(a1 + 16);
        v36[0] = *a1;
        v36[1] = v16;
        v17 = *(a1 + 48);
        v36[2] = *(a1 + 32);
        v36[3] = v17;
        if (v13(&v37, v36))
        {
          v19 = v12[2];
          v18 = v12[3];
          v21 = *v12;
          v20 = v12[1];
          v22 = *(a1 + 48);
          v24 = *a1;
          v23 = *(a1 + 16);
          v12[2] = *(a1 + 32);
          v12[3] = v22;
          *v12 = v24;
          v12[1] = v23;
          *a1 = v21;
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *(a1 + 48) = v18;
          sub_100009208(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v25 = a2 - 4;
      do
      {
        v26 = *(a1 + 16);
        v37 = *a1;
        v38 = v26;
        v27 = *(a1 + 48);
        v39 = *(a1 + 32);
        v40 = v27;
        v28 = sub_1000093D8(a1, a4, v8);
        if (v25 == v28)
        {
          *v28 = v37;
          v28[1] = v38;
          v28[2] = v39;
          v28[3] = v40;
        }

        else
        {
          v29 = *v25;
          v30 = v25[1];
          v31 = v25[3];
          v28[2] = v25[2];
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v32 = v38;
          *v25 = v37;
          v25[1] = v32;
          v33 = v40;
          v25[2] = v39;
          v25[3] = v33;
          sub_1000094B4(a1, &v28[4], a4, (&v28[4] - a1) >> 6);
        }

        v25 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 sub_100009208(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v56 = v4;
    v57 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3)
      {
        v16 = *a2;
        v17 = v14[1];
        v52 = *v14;
        v53 = v17;
        v18 = v14[3];
        v54 = v14[2];
        v55 = v18;
        v19 = v14[5];
        v48 = v14[4];
        v49 = v19;
        v20 = v14[7];
        v50 = v14[6];
        v51 = v20;
        if (v16(&v52, &v48))
        {
          v14 += 4;
          v13 = v15;
        }
      }

      v21 = *a2;
      v22 = v14[1];
      v52 = *v14;
      v53 = v22;
      v23 = v14[3];
      v54 = v14[2];
      v55 = v23;
      v24 = v7[1];
      v48 = *v7;
      v49 = v24;
      v25 = v7[3];
      v50 = v7[2];
      v51 = v25;
      if ((v21(&v52, &v48) & 1) == 0)
      {
        v27 = v7[1];
        v52 = *v7;
        v53 = v27;
        v28 = v7[3];
        v54 = v7[2];
        v55 = v28;
        do
        {
          v29 = v14;
          v30 = *v14;
          v31 = v14[1];
          v32 = v14[3];
          v7[2] = v14[2];
          v7[3] = v32;
          *v7 = v30;
          v7[1] = v31;
          if (v9 < v13)
          {
            break;
          }

          v33 = (2 * v13) | 1;
          v14 = (a1 + (v33 << 6));
          if (2 * v13 + 2 < a3)
          {
            v34 = *a2;
            v35 = v14[1];
            v48 = *v14;
            v49 = v35;
            v36 = v14[3];
            v50 = v14[2];
            v51 = v36;
            v37 = v14[5];
            v44 = v14[4];
            v45 = v37;
            v38 = v14[7];
            v46 = v14[6];
            v47 = v38;
            if (v34(&v48, &v44))
            {
              v14 += 4;
              v33 = 2 * v13 + 2;
            }
          }

          v39 = *a2;
          v40 = v14[1];
          v48 = *v14;
          v49 = v40;
          v41 = v14[3];
          v50 = v14[2];
          v51 = v41;
          v44 = v52;
          v45 = v53;
          v46 = v54;
          v47 = v55;
          v7 = v29;
          v13 = v33;
        }

        while (!v39(&v48, &v44));
        result = v52;
        v42 = v53;
        v43 = v55;
        v29[2] = v54;
        v29[3] = v43;
        *v29 = result;
        v29[1] = v42;
      }
    }
  }

  return result;
}

_OWORD *sub_1000093D8(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v15 = v8[7];
      v25[2] = v8[6];
      v25[3] = v15;
      v25[0] = v13;
      v25[1] = v14;
      v16 = v8 + 8;
      v17 = v8[8];
      v18 = v8[9];
      v19 = v8[11];
      v24[2] = v8[10];
      v24[3] = v19;
      v24[0] = v17;
      v24[1] = v18;
      if (v12(v25, v24))
      {
        v9 = v16;
        v10 = v11;
      }
    }

    v20 = *v9;
    v21 = v9[1];
    v22 = v9[3];
    a1[2] = v9[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_1000094B4(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v40 = v4;
    v41 = v5;
    v10 = *a3;
    v11 = v6 >> 1;
    v12 = (a1 + (v6 >> 1 << 6));
    v13 = v12[1];
    v36 = *v12;
    v37 = v13;
    v14 = v12[3];
    v38 = v12[2];
    v39 = v14;
    v15 = *(a2 - 48);
    v32 = *(a2 - 64);
    v33 = v15;
    v16 = *(a2 - 16);
    v34 = *(a2 - 32);
    v35 = v16;
    if (v10(&v36, &v32))
    {
      v18 = (a2 - 64);
      v19 = *(a2 - 48);
      v36 = *(a2 - 64);
      v37 = v19;
      v20 = *(a2 - 16);
      v38 = *(a2 - 32);
      v39 = v20;
      do
      {
        v21 = v12;
        v22 = *v12;
        v23 = v12[1];
        v24 = v12[3];
        v18[2] = v12[2];
        v18[3] = v24;
        *v18 = v22;
        v18[1] = v23;
        if (!v11)
        {
          break;
        }

        v25 = *a3;
        v11 = (v11 - 1) >> 1;
        v12 = (a1 + (v11 << 6));
        v26 = v12[1];
        v32 = *v12;
        v33 = v26;
        v27 = v12[3];
        v34 = v12[2];
        v35 = v27;
        v31[0] = v36;
        v31[1] = v37;
        v31[2] = v38;
        v31[3] = v39;
        v28 = v25(&v32, v31);
        v18 = v21;
      }

      while ((v28 & 1) != 0);
      v29 = v37;
      *v21 = v36;
      v21[1] = v29;
      result = *&v38;
      v30 = v39;
      v21[2] = v38;
      v21[3] = v30;
    }
  }

  return result;
}

void sub_1000095BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100004C00();
}

void sub_100009604(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100004C00();
}

BOOL sub_100009D64(id a1, NTHeadlineProviding *a2)
{
  v2 = [(NTHeadlineProviding *)a2 NewsURL];
  if ([v2 fc_isNewsArticleURL])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 fc_isHardPaywallNewsArticleURL:0];
  }

  return v3;
}

void sub_100009E10(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

uint64_t CGColorSpaceGetSRGB(void)
{
  if (qword_1000E9478 != -1)
  {
    sub_10009D5CC();
  }

  return qword_1000E9470;
}

BOOL FTWidgetLingerStatePropertiesAreDifferent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DB3C();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009DC00();
  }

LABEL_6:
  v5 = [v3 todaySourceIdentifier];
  v6 = [v4 todaySourceIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [v3 appConfigTreatmentID];
    v8 = [v4 appConfigTreatmentID];
    if (+[NSObject nf_object:isEqualToObject:](NSObject, "nf_object:isEqualToObject:", v7, v8) && (v9 = [v3 widgetDisplayMode], v9 == objc_msgSend(v4, "widgetDisplayMode")))
    {
      v10 = [v3 appearanceType];
      v11 = v10 != [v4 appearanceType];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_10000BCB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10009E6D8();
    }

    v4 = *(a1 + 32);
  }

  [v3 ft_setTemporalBoundsBySanitizingStartDate:v4 endDate:*(a1 + 40)];
}

id sub_10000BD14(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 itemType])
  {
    v4 = 0;
LABEL_3:
    v5 = 0;
    goto LABEL_9;
  }

  v6 = FCCheckedProtocolCast();
  v5 = [v6 analyticsElement];
  if (v5)
  {
    v4 = objc_opt_new();
    [v4 setWidgetContentType:1];
    v7 = [v5 articleID];
    [v4 setArticleId:v7];

    v8 = [v5 channelID];
    [v4 setSourceChannelId:v8];

    [v4 setWidgetType:{objc_msgSend(a1[4], "_pbWidgetTypeWithStackKind:", objc_msgSend(a1[5], "stackKind"))}];
    [v4 setWidgetExposureStackLocation:{objc_msgSend(a1[4], "_pbStackLocationWithStackLocation:", objc_msgSend(a1[5], "stackLocation"))}];
    v9 = [v6 storyType];
    [v4 setStoryType:v9];

    if (!v4)
    {
      goto LABEL_3;
    }

    [v4 setWidgetArticleCount:{objc_msgSend(a1[6], "count")}];
    [v4 setWidgetArticleRank:{objc_msgSend(a1[5], "absoluteOrderOfItem:", v3)}];
    v6 = [a1[5] sectionForItem:v3];
    [v4 setWidgetArticleRankInSection:{objc_msgSend(a1[5], "absoluteOrderOfItemInSection:", v3)}];
    [v4 setWidgetSectionDisplayRank:{objc_msgSend(a1[5], "absoluteOrderOfSection:", v6)}];
    v10 = [v6 identifier];
    [v4 setWidgetSectionId:v10];

    v11 = [v6 subidentifier];
    [v4 setWidgetSectionSubid:v11];

    v12 = [v6 items];
    [v4 setWidgetArticleCountInSection:{objc_msgSend(v12, "count")}];

    v13 = objc_opt_new();
    [v13 setTodayWidgetHeadlineExposure:v4];
    v5 = +[NTPBEvent nss_eventWithIdentifier];
    v14 = [a1[4] eventAnnotator];
    [v14 annotateEvent:v5 withOptions:47];

    [a1[4] _annotateEvent:v5 withTrackableWidgetState:a1[5]];
    [v5 setEventObject:v13];
  }

  else
  {
    v4 = 0;
  }

LABEL_9:

  return v5;
}

id sub_10000BFB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  [v4 setWidgetSectionIdsExposed:v5];

  v6 = [v3 subidentifier];
  [v4 setWidgetSectionSubidsExposed:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v3];

  [v4 addCountOfArticlesExposedEachSection:{objc_msgSend(v7, "unsignedIntegerValue")}];

  return v4;
}

id sub_10000CB20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 identifier];
  }

  return v4;
}

BOOL sub_10000D0AC(id a1, NTTodayResults *a2, NTTodayResultOperationFetchInfoProviding *a3)
{
  v3 = NTNewsSourceIdentifier;
  v4 = [(NTTodayResultOperationFetchInfoProviding *)a3 todaySourceIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v4];

  return v3 ^ 1;
}

BOOL sub_10000D2A0(id a1, NTTodayResults *a2, NTTodayResultOperationFetchInfoProviding *a3)
{
  v3 = NTNewsSourceIdentifier;
  v4 = [(NTTodayResultOperationFetchInfoProviding *)a3 todaySourceIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v4];

  return v3;
}

id FTCampaignIdentifierForSourceIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:NTNewsSourceIdentifier] || objc_msgSend(v1, "isEqualToString:", NTUnknownSourceIdentifier))
  {
    v2 = NSSNewsWidgetNewsModeCampaignID;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10009F104();
    }

    v2 = 0;
  }

  return v2;
}

void sub_10000E50C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 analyticsElement];
  v5 = [v4 articleID];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKey:FCWidgetArticleListArticleID];
    v7 = [v3 sourceTagID];
    [v6 fc_safelySetObject:v7 forKey:FCWidgetArticleListSourceChannelID];

    v8 = [a1[4] objectForKeyedSubscript:v3];
    v9 = [v8 referralBarName];
    [v6 fc_safelySetObjectAllowingNil:v9 forKey:FCWidgetArticleListSectionName];

    v10 = [v3 flintDocumentURL];
    v11 = [v10 absoluteString];
    [v6 fc_safelySetObjectAllowingNil:v11 forKey:FCWidgetArticleListFlintDocumentURL];

    v12 = [v3 backingElement];
    v13 = [v12 articleRecordData];
    v14 = [v13 base64EncodedStringWithOptions:0];
    [v6 fc_safelySetObjectAllowingNil:v14 forKey:FCWidgetArticleListArticleRecordData];

    v15 = [v3 backingElement];
    v16 = [v15 sourceChannelRecordData];
    v17 = [v16 base64EncodedStringWithOptions:0];
    [v6 fc_safelySetObjectAllowingNil:v17 forKey:FCWidgetArticleListSourceChannelRecordData];

    v18 = [v3 backingElement];
    v19 = [v18 parentIssueRecordData];
    v20 = [v19 base64EncodedStringWithOptions:0];
    [v6 fc_safelySetObjectAllowingNil:v20 forKey:FCWidgetArticleListParentIssueRecordData];

    [a1[5] addObject:v6];
    v21 = [v3 flintDocumentURL];
    if (v21)
    {
      v22 = [a1[6] objectForKeyedSubscript:v21];
      if (v22)
      {
        v23 = v22;
        [a1[7] setObject:v22 forKeyedSubscript:v21];
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F5F0();
  }
}

__CFString *FTValidatedFreeValuedPropertyValue(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F6B4();
  }

  if ([PETEventStringValidator stringIsValid:v1])
  {
    v2 = v1;
  }

  else
  {
    v2 = @"invalid";
  }

  v3 = v2;

  return v2;
}

__CFString *FTHeadlineSourcePropertyValueWithTodaySource(void *a1)
{
  if (a1)
  {
    v2 = FTValidatedFreeValuedPropertyValue(a1);
  }

  else
  {
    v2 = @"none";
  }

  return v2;
}

__CFString *FTSectionPropertyValueWithSection(void *a1)
{
  if (a1)
  {
    v2 = FTValidatedFreeValuedPropertyValue(a1);
  }

  else
  {
    v2 = @"none";
  }

  return v2;
}

__CFString *FTUserGroupPropertyValueWithAppConfigTreatmentID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 stringValue], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = FTValidatedFreeValuedPropertyValue(v3);
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

id FTLocalTimeHourPropertyValue(void *a1)
{
  v1 = a1;
  v2 = +[NSCalendar currentCalendar];
  v3 = +[NSTimeZone localTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:v1];

  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 hour]);

  return v5;
}

id FTTimeZonePropertyValue()
{
  v0 = +[NSTimeZone localTimeZone];
  v1 = [v0 abbreviation];

  return v1;
}

__CFString *FTBooleanPropertyValue(int a1)
{
  if (a1)
  {
    return @"yes";
  }

  else
  {
    return @"no";
  }
}

BOOL sub_10000F098(id a1, NTTodayResults *a2, NTTodayResultOperationFetchInfoProviding *a3)
{
  v3 = NTNewsSourceIdentifier;
  v4 = [(NTTodayResultOperationFetchInfoProviding *)a3 todaySourceIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v4];

  return v3;
}

void sub_10000F4B4(uint64_t a1)
{
  v1 = [*(a1 + 32) submissionGroup];
  dispatch_group_leave(v1);
}

id sub_10000FA80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSDate date];
  v8 = [v6 engagementWithHeaderAtDate:v7 withTargetURL:*(a1 + 32) trackableWidgetState:v5];

  return v8;
}

id sub_10000FD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSDate date];
  v8 = [v6 engagementWithBannerAtDate:v7 withTargetURL:*(a1 + 32) trackableWidgetState:v5];

  return v8;
}

void sub_10001079C(uint64_t a1)
{
  v2 = NTSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did submit events with tracker=%{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) submissionGroup];
  dispatch_group_leave(v4);
}

void sub_100010F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010F58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010F70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 filePath];
  if (v7)
  {
    v8 = [NSURL fileURLWithPath:v7 isDirectory:0];
    if (v8)
    {
      v9 = +[NSUUID UUID];
      v10 = [v9 UUIDString];

      v11 = [*(a1 + 32) URLByAppendingPathComponent:v10 isDirectory:0];
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 56) + 8);
      obj = *(v13 + 40);
      [v12 copyItemAtURL:v8 toURL:v11 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      v14 = *(a1 + 48);
      v15 = [v6 remoteURL];
      [v14 setObject:v11 forKeyedSubscript:v15];

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009FCA8();
  }
}

id PrefetchLog()
{
  if (qword_1000E9480 != -1)
  {
    sub_1000A0178();
  }

  v1 = qword_1000E9488;

  return v1;
}

void sub_100011AB8(id a1)
{
  v1 = os_log_create("com.apple.news", "WidgetContentPrefetch");
  v2 = qword_1000E9488;
  qword_1000E9488 = v1;
}

void sub_100011EA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) filePath];

  v4 = PrefetchLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) identifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "successfully downloaded JSON for banner %{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000A018C(a1, v2);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_100011FB0(uint64_t a1)
{
  v2 = [*(a1 + 32) assetManager];
  [v2 save];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100012320(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) filePath];

  v4 = PrefetchLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) identifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "successfully downloaded JSON for headline %{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0234(a1, v2);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_100012428(uint64_t a1)
{
  v2 = [*(a1 + 32) assetManager];
  [v2 save];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100012514(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_100012534()
{
  if (qword_1000E9498[0] != -1)
  {
    sub_1000A02DC();
  }

  v1 = qword_1000E9490;

  return v1;
}

void sub_100012578(id a1)
{
  v1 = [NSArray arrayWithObjects:FCErrorDomain, NSURLErrorDomain, NSCocoaErrorDomain, CKErrorDomain, 0];
  v2 = qword_1000E9490;
  qword_1000E9490 = v1;
}

void sub_100012A44(id a1, NSMutableArray *a2)
{
  v3 = a2;
  v2 = sub_100012534();
  [(NSMutableArray *)v3 addObjectsFromArray:v2];

  [(NSMutableArray *)v3 addObject:@"other"];
}

id sub_100013B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSDate date];
  v8 = [v6 engagementWithPlaceholderAtDate:v7 withTargetURL:*(a1 + 32) trackableWidgetState:v5];

  return v8;
}

void sub_10001407C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014094(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 items];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014178;
  v12[3] = &unk_1000D7360;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v14 = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v15 = v9;
  v16 = v10;
  v17 = a4;
  v11 = v6;
  [v7 enumerateObjectsUsingBlock:v12];
}

void sub_100014178(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 itemType];
  v7 = v12;
  if (!v6)
  {
    v8 = FCProtocolCast();
    v9 = [*(a1 + 32) personalizationEventAtDate:*(a1 + 40) withAction:1 headline:v8 section:*(a1 + 48) trackableWidgetState:*(a1 + 56)];
    if (v9)
    {
      v10 = [*(a1 + 32) events];
      [v10 addObject:v9];
    }

    v11 = ++*(*(*(a1 + 64) + 8) + 24);
    if (v11 == [*(a1 + 56) absoluteItemCountForCurrentDisplayMode])
    {
      *a4 = 1;
      **(a1 + 72) = 1;
    }

    v7 = v12;
  }
}

void sub_1000145D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000145EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014604(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000146B8;
  v9[3] = &unk_1000D73B0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void sub_1000146B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

BOOL sub_1000155CC(id a1, NTHeadlineProviding *a2)
{
  v2 = [(NTHeadlineProviding *)a2 analyticsElement];
  v3 = [v2 needsSeenStateTracking];

  return v3;
}

NTHeadlineProviding *__cdecl sub_100015608(id a1, NTTodayItem *a2)
{
  v2 = a2;
  if ([(NTTodayItem *)v2 itemType])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

void sub_100015898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"a"];
  v5 = [NSMutableOrderedSet orderedSetWithOrderedSet:v4];

  v26 = v3;
  v6 = [v3 objectForKeyedSubscript:@"b"];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v27 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = a1;
  obj = *(a1 + 32);
  v8 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v32 + 1) + 8 * v11) analyticsElement];
        v13 = [v12 preseenCountTrackingIdentifier];
        if (v13)
        {
          v14 = [v7 objectForKeyedSubscript:v13];
          if ((((v14 == 0) ^ [v5 containsObject:v13]) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v19 = [[NSString alloc] initWithFormat:@"storage data structures must stay in sync"];
            *buf = 136315906;
            v37 = "[FTSeenHeadlineWidgetEventTracker _registerOnceVisibleHeadlines:withLastSeenDate:minimumNumberOfTimesPreseenToBeSeen:]_block_invoke";
            v38 = 2080;
            v39 = "FTSeenHeadlineWidgetEventTracker.m";
            v40 = 1024;
            LODWORD(v41[0]) = 177;
            WORD2(v41[0]) = 2114;
            *(v41 + 6) = v19;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v15 = [v14 unsignedIntegerValue] + 1;
          if (v15 >= *(v29 + 64))
          {
            v17 = NTSharedLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(v29 + 64);
              *buf = 138543874;
              v37 = v13;
              v38 = 2048;
              v39 = v15;
              v40 = 2048;
              v41[0] = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "will mark item as seen, id=%{public}@, preseenCount=%lu, preseenThreshold=%lu", buf, 0x20u);
            }

            [v27 addObject:v12];
            [v5 removeObject:v13];
            [v7 removeObjectForKey:v13];
          }

          else
          {
            [v5 removeObject:v13];
            [v5 addObject:v13];
            v16 = [NSNumber numberWithUnsignedInteger:v15];
            [v7 setObject:v16 forKeyedSubscript:v13];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v9);
  }

  if ([v5 count] >= 0x3E9)
  {
    v20 = [v5 count];
    v21 = v20 - 1000;
    if (v20 != 1000)
    {
      v22 = [NSIndexSet indexSetWithIndexesInRange:0, v21];
      v23 = [v5 objectsAtIndexes:v22];

      [v5 removeObjectsInRange:{0, v21}];
      [v7 removeObjectsForKeys:v23];
    }
  }

  [v26 setObject:v5 forKeyedSubscript:@"a"];
  [v26 setObject:v7 forKeyedSubscript:@"b"];
  v24 = [*(v29 + 40) submissionGroup];
  dispatch_group_enter(v24);

  v30 = *(v29 + 48);
  v31 = *(v29 + 56);
  v25 = v27;
  FCPerformBlockOnMainThread();
}

void sub_100015D8C(uint64_t a1)
{
  [*(a1 + 32) writeUserDidSeeHeadlinesWithAnalyticsElements:*(a1 + 40) atDate:*(a1 + 48)];
  v2 = [*(a1 + 56) submissionGroup];
  dispatch_group_leave(v2);
}

id sub_100016148(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSDate date];
  v8 = [v6 engagementWithBackgroundAtDate:v7 withTargetURL:*(a1 + 32) trackableWidgetState:v5];

  return v8;
}

CGContext *TSDBitmapContextCreate(char a1, double a2, double a3)
{
  v4 = a2;
  v5 = a3;
  v6 = vcvtps_u32_f32(v4);
  v7 = vcvtps_u32_f32(v5);
  if (a1)
  {
    if ((a1 & 0x20) != 0)
    {
      DeviceRGB = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    v8 = DeviceRGB;
    if ((a1 & 4) != 0)
    {
      v13 = 4102;
    }

    else
    {
      v13 = 8198;
    }

    v14 = 5;
    if ((a1 & 4) == 0)
    {
      v14 = 8;
    }

    v15 = 2;
    if ((a1 & 4) == 0)
    {
      v15 = 4;
    }

    if ((a1 & 0x10) != 0)
    {
      v16 = 8193;
    }

    else
    {
      v16 = 8194;
    }

    if ((a1 & 2) != 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v13;
    }

    if ((a1 & 2) != 0)
    {
      v11 = 8;
    }

    else
    {
      v11 = v14;
    }

    if ((a1 & 2) != 0)
    {
      v10 = 4;
    }

    else
    {
      v10 = v15;
    }
  }

  else
  {
    v8 = 0;
    if ((a1 & 2) != 0)
    {
      v9 = 7;
    }

    else
    {
      v9 = 8194;
    }

    v10 = 4;
    if ((a1 & 2) != 0)
    {
      v10 = 1;
    }

    v11 = 8;
  }

  v17 = CGBitmapContextCreateWithData(0, v6, v7, v11, (v10 * v6 + 31) & 0xFFFFFFFFFFFFFFE0, v8, v9, 0, 0);
  if (v8)
  {
    CGColorSpaceRelease(v8);
  }

  if ((a1 & 8) != 0)
  {
    CGContextTranslateCTM(v17, 0.0, v7);
    CGContextScaleCTM(v17, 1.0, -1.0);
  }

  return v17;
}

void *sub_100016EF0(void *a1)
{
  v2 = a1[46];
  if (v2)
  {
    a1[47] = v2;
    operator delete(v2);
  }

  v3 = a1[43];
  if (v3)
  {
    a1[44] = v3;
    operator delete(v3);
  }

  v4 = a1[40];
  if (v4)
  {
    a1[41] = v4;
    operator delete(v4);
  }

  v5 = a1[37];
  if (v5)
  {
    a1[38] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_100016F54(uint64_t a1)
{
  ITColor::ITColor(a1);
  ITColor::ITColor(v2 + 1);
  ITColor::ITColor((a1 + 64));
  ITColor::ITColor((a1 + 96));
  ITColor::ITColor((a1 + 128));
  ITColor::ITColor((a1 + 160));
  ITColor::ITColor((a1 + 192));
  ITColor::ITColor((a1 + 224));
  ITColor::ITColor((a1 + 256));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 389) = 0u;
  return a1;
}

uint64_t sub_100016FD8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100017054(result, a4);
  }

  return result;
}

void sub_100017038(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100017054(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000095BC(a1, a2);
  }

  sub_100004B00();
}

Swift::Int sub_1000170A8()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_1000A3600(v1);
  return sub_1000A3620();
}

Swift::Int sub_10001711C()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_1000A3600(v1);
  return sub_1000A3620();
}

uint64_t sub_100017160()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_100017194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000A3560() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000A3560();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100017288(uint64_t a1)
{
  v2 = sub_1000186CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000172C4(uint64_t a1)
{
  v2 = sub_1000186CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017300(void *a1)
{
  v3 = sub_100017A54(&qword_1000E4CC0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100018688(a1, a1[3]);
  sub_1000186CC();
  sub_1000A3660();
  v8[15] = 0;
  sub_1000A1810();
  sub_10001876C(&qword_1000E4CC8, &type metadata accessor for Date);
  sub_1000A3520();
  if (!v1)
  {
    type metadata accessor for NewsTimelineEntry();
    v8[14] = 1;
    type metadata accessor for TodayContent();
    sub_10001876C(&qword_1000E4CD0, type metadata accessor for TodayContent);
    sub_1000A3520();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100017500@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for TodayContent();
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000A1810();
  v21 = *(v25 - 8);
  __chkstk_darwin();
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100017A54(&qword_1000E4CA0);
  v24 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = type metadata accessor for NewsTimelineEntry();
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018688(a1, a1[3]);
  sub_1000186CC();
  sub_1000A3640();
  if (v2)
  {
    return sub_100018720(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_10001876C(&qword_1000E4CB0, &type metadata accessor for Date);
  v13 = v23;
  v14 = v25;
  sub_1000A34B0();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_10001876C(&qword_1000E4CB8, type metadata accessor for TodayContent);
  sub_1000A34B0();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1000187B4(v5, &v19[*(v18 + 20)]);
  sub_100018818(v15, v20);
  sub_100018720(a1);
  return sub_10001887C(v15);
}

uint64_t sub_1000178D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A1810();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100017974(__int128 *a1)
{
  v2 = *a1;
  if (sub_10009CD30(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000179E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_10009CD30(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100017A54(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100017A9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100017B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TodayContent();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100017C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000A1810();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TodayContent();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for NewsTimelineEntry()
{
  result = qword_1000E49E8;
  if (!qword_1000E49E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017D50()
{
  result = sub_1000A1810();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TodayContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_100017E00(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017E0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100017E2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SourceView.LayoutOptions(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SourceView.LayoutOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SourceView.LayoutOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100017F30(uint64_t a1, id *a2)
{
  result = sub_1000A2D20();
  *a2 = 0;
  return result;
}

uint64_t sub_100017FA8(uint64_t a1, id *a2)
{
  v3 = sub_1000A2D30();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100018028@<X0>(void *a1@<X8>)
{
  sub_1000A2D40();
  v2 = sub_1000A2D10();

  *a1 = v2;
  return result;
}

uint64_t sub_100018074(uint64_t a1, uint64_t a2)
{
  result = sub_1000A1920();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1000180C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000A1930();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100018120@<X0>(void *a1@<X8>)
{
  result = sub_1000A1940();
  *a1 = v3;
  return result;
}

uint64_t sub_100018148()
{
  sub_1000A2D40();
  v0 = sub_1000A2E80();

  return v0;
}

uint64_t sub_100018184()
{
  sub_1000A2D40();
  sub_1000A2DD0();
}

Swift::Int sub_1000181D8()
{
  sub_1000A2D40();
  sub_1000A35F0();
  sub_1000A2DD0();
  v0 = sub_1000A3620();

  return v0;
}

void *sub_10001824C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100018280()
{
  v0 = sub_1000A2D40();
  v2 = v1;
  if (v0 == sub_1000A2D40() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000A3560();
  }

  return v5 & 1;
}

uint64_t sub_10001830C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2D40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018338()
{
  sub_10001876C(&qword_1000E4D78, type metadata accessor for URLResourceKey);
  sub_10001876C(&qword_1000E4D80, type metadata accessor for URLResourceKey);

  return sub_1000A3410();
}

uint64_t sub_1000183F4()
{
  sub_10001876C(&qword_1000E4DB0, type metadata accessor for AttributeName);
  sub_10001876C(&qword_1000E4DB8, type metadata accessor for AttributeName);

  return sub_1000A3410();
}

uint64_t sub_1000184B0@<X0>(void *a1@<X8>)
{
  v2 = sub_1000A2D10();

  *a1 = v2;
  return result;
}

uint64_t sub_1000184F8()
{
  sub_10001876C(&qword_1000E4DA0, type metadata accessor for TraitKey);
  sub_10001876C(&qword_1000E4DA8, type metadata accessor for TraitKey);

  return sub_1000A3410();
}

double sub_1000185B4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000185C0()
{
  sub_10001876C(&qword_1000E4D88, type metadata accessor for Weight);
  sub_10001876C(&qword_1000E4D90, type metadata accessor for Weight);
  sub_100018FD4();
  return sub_1000A3410();
}

void *sub_100018688(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000186CC()
{
  result = qword_1000E4CA8;
  if (!qword_1000E4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4CA8);
  }

  return result;
}

uint64_t sub_100018720(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10001876C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000187B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001887C(uint64_t a1)
{
  v2 = type metadata accessor for NewsTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for NewsTimelineEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsTimelineEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100018AB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100018CFC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000A3610(*&v1);
}

uint64_t sub_100018D38(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_100018E40()
{
  result = qword_1000E4D50;
  if (!qword_1000E4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4D50);
  }

  return result;
}

unint64_t sub_100018E98()
{
  result = qword_1000E4D58;
  if (!qword_1000E4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4D58);
  }

  return result;
}

unint64_t sub_100018EF0()
{
  result = qword_1000E4D60;
  if (!qword_1000E4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4D60);
  }

  return result;
}

unint64_t sub_100018FD4()
{
  result = qword_1000E4D98;
  if (!qword_1000E4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4D98);
  }

  return result;
}

uint64_t sub_100019064()
{
  sub_100018720(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1000190D8(char *a1)
{
  v4 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_1000A1700();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for NewsTimelineEntry();
  v14 = *(v13 + 20);
  v58 = a1;
  v15 = &a1[v14 + *(type metadata accessor for TodayContent() + 44)];
  v16 = v15[1];
  if (!v16)
  {
    sub_100019650();
    swift_allocError();
    *v32 = 1;
    return swift_willThrow();
  }

  v56 = v13;
  v17 = *v15;
  v18 = v7;
  v54 = *sub_100018688((v1 + 16), *(v1 + 40));
  v55 = v2;

  v60[0] = sub_10001C598();
  v60[1] = v19;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1000A2E10(v62);

  v53 = v17;
  v63._countAndFlagsBits = v17;
  v57 = v16;
  v63._object = v16;
  sub_1000A2E10(v63);

  sub_1000A1690();

  sub_1000A16A0();
  sub_1000A1520();
  swift_allocObject();
  v20 = sub_1000A1510();
  (*(v8 + 16))(v6, v12, v18);
  v21 = *(v8 + 56);
  v54 = v18;
  v21(v6, 0, 1, v18);
  v22 = sub_1000A1500();
  v24 = v23;
  v61 = *v23;
  swift_bridgeObjectRetain_n();
  sub_1000196A4(v6);
  *v24 = v61;

  v22(v60, 0);
  v25 = v20;

  sub_10001ABAC(&qword_1000E50B0);
  v26 = v55;
  v27 = sub_1000A14F0();
  if (v26)
  {

    v29 = *(v8 + 8);
    v30 = v54;
    v29(v59, v54);
    return (v29)(v12, v30);
  }

  v33 = v27;
  v34 = v28;
  v56 = v8;
  v58 = v12;
  sub_100017A54(&unk_1000E5270);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000AA450;
  *(v35 + 56) = &type metadata for String;
  result = sub_10001A97C();
  v36 = result;
  *(v35 + 64) = result;
  v37 = v57;
  *(v35 + 32) = v53;
  *(v35 + 40) = v37;
  v38 = v34 >> 62;
  v52 = v25;
  v55 = v34;
  if ((v34 >> 62) > 1)
  {
    if (v38 != 2)
    {
      v39 = 0;
      goto LABEL_15;
    }

    v41 = *(v33 + 16);
    v40 = *(v33 + 24);
    v39 = v40 - v41;
    if (!__OFSUB__(v40, v41))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v38)
  {
    v39 = BYTE6(v34);
LABEL_15:
    v42 = [objc_opt_self() stringFromByteCount:v39 countStyle:{0, v52}];
    v43 = sub_1000A2D40();
    v45 = v44;

    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 72) = v43;
    *(v35 + 80) = v45;
    sub_10001A9D0();
    v46 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    v47 = v59;
    v48 = v55;
    sub_1000A1740();

    sub_10001AA1C(v33, v48);
    v49 = *(v56 + 8);
    v50 = v47;
    v51 = v54;
    v49(v50, v54);
    return (v49)(v58, v51);
  }

  if (!__OFSUB__(HIDWORD(v33), v33))
  {
    v39 = HIDWORD(v33) - v33;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}