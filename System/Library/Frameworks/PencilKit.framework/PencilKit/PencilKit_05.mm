id PKSqueezePaletteButtonBaseBackgroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [MEMORY[0x1E69DC888] whiteColor];
    v2 = v1;
    v3 = 0.1;
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] blackColor];
    v2 = v1;
    v3 = 0.05;
  }

  v4 = [v1 colorWithAlphaComponent:v3];

  return v4;
}

id PKSqueezePaletteButtonBaseForegroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [MEMORY[0x1E69DC888] whiteColor];
    v2 = [v1 colorWithAlphaComponent:0.6];
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] colorWithRed:0.235294119 green:0.235294119 blue:0.262745112 alpha:1.0];
  }

  return v2;
}

id PKSqueezePaletteButtonExpandedLayoutBaseBackgroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v1 = ;
  v2 = [v1 colorWithAlphaComponent:0.95];

  return v2;
}

id PKSqueezePaletteStrokeWeightButtonForegroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v1 = ;

  return v1;
}

id PKSqueezePaletteStrokeWeightButtonSelectedForegroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v1 = ;

  return v1;
}

id PKSqueezePaletteStrokeWeightButtonSelectedBackgroundColor(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v1 = ;

  return v1;
}

double PKSqueezePaletteToolClipIndicatorCenterXOffset(int a1)
{
  result = 10.0;
  if (a1)
  {
    return 17.0;
  }

  return result;
}

id __PKSqueezePaletteToolClipIndicatorColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v2 = ;
  v3 = [v2 colorWithAlphaComponent:0.1];

  return v3;
}

double PKSqueezePaletteToolOffsetY(int a1)
{
  result = 8.0;
  if (a1)
  {
    return -16.0;
  }

  return result;
}

void sub_1C7DB29F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DB6FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DB89E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<PKCompressedStrokePoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<PKCompressedStrokePoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

void PKStrokePathPointsPrivate::~PKStrokePathPointsPrivate(PKStrokePathPointsPrivate *this)
{
  begin = this->pointsData.__begin_;
  if (begin)
  {
    this->pointsData.__end_ = begin;
    operator delete(begin);
  }

  cntrl = this->constants.__cntrl_;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

void sub_1C7DB8FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, PKStrokePathPointsPrivate *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  PKStrokePathPointsPrivate::~PKStrokePathPointsPrivate(&a12);

  _Unwind_Resume(a1);
}

unint64_t PKStrokePathPointsPrivate::count(PKStrokePathPointsPrivate *this)
{
  v1 = this->pointsData.__end_ - this->pointsData.__begin_;
  if (v1)
  {
    return v1 / *(this->constants.__ptr_ + 6);
  }

  else
  {
    return 0;
  }
}

double PKStrokePathPointsPrivate::locationAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v5 = end - begin;
  if (end != begin && (v6 = *(ptr + 6), v5 / v6 > a2) && (*(ptr + 32) & 1) != 0)
  {
    v7 = &begin[v6 * a2 + *(ptr + 92)];
  }

  else
  {
    v7 = ptr + 56;
  }

  return *v7;
}

float PKStrokePathPointsPrivate::setLocation(PKStrokePathPointsPrivate *this, CGPoint a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 1) != 0)
    {
      v8 = &begin[v7 * a3 + *(ptr + 92)];
      *&a2.x = a2.x;
      y = a2.y;
      *v8 = LODWORD(a2.x);
      *(v8 + 1) = y;
    }
  }

  return *&a2.x;
}

double PKStrokePathPointsPrivate::radiusAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v5 = end - begin;
  if (end != begin && (v6 = *(ptr + 6), v5 / v6 > a2) && (*(ptr + 32) & 4) != 0)
  {
    v7 = &begin[v6 * a2 + *(ptr + 94)];
  }

  else
  {
    v7 = ptr + 68;
  }

  return *v7;
}

float PKStrokePathPointsPrivate::setRadius(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 4) != 0)
    {
      *&a2 = a2;
      *&begin[v7 * a3 + *(ptr + 94)] = LODWORD(a2);
    }
  }

  return *&a2;
}

PKStrokePathPointsShared *PKStrokePathPointsShared::updateFromCachedValues(PKStrokePathPointsShared *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    v5 = *(this + 1);
    do
    {
      if ((v1 & (1 << v3)) != 0)
      {
        v4 = v3;
      }

      ++v3;
    }

    while (v3 != 11);
    v6 = 0;
    v7 = 0;
    do
    {
      if ((*(v2 + 5) & (1 << v6)) != 0)
      {
      }

      ++v6;
    }

    while (v6 <= v4);
  }

  return this;
}

double PKStrokePathPointsPrivate::radius2AtIndex(PKStrokePathPointsPrivate *this, unint64_t a2)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v5 = end - begin;
  if (end != begin && (v6 = *(ptr + 6), v5 / v6 > a2) && (*(ptr + 33) & 2) != 0)
  {
    v7 = &begin[v6 * a2 + *(ptr + 101)];
  }

  else
  {
    v7 = ptr + 84;
  }

  return *v7;
}

float PKStrokePathPointsPrivate::setRadius2(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 33) & 2) != 0)
    {
      *&a2 = a2;
      *&begin[v7 * a3 + *(ptr + 101)] = LODWORD(a2);
    }
  }

  return *&a2;
}

double PKStrokePathPointsPrivate::timestampAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v5 = end - begin;
  if (end != begin && (v6 = *(ptr + 6), v5 / v6 > a2) && (*(ptr + 32) & 2) != 0)
  {
    v7 = &begin[v6 * a2 + *(ptr + 93)];
  }

  else
  {
    v7 = ptr + 64;
  }

  return *v7;
}

double PKStrokePathPointsPrivate::azimuthAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 32) & 0x40) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 98)];
  }

  else
  {
    v8 = ptr + 78;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 10430.2192;
}

PKStrokePathPointsShared *PKStrokePathPointsShared::computeCachedValues(PKStrokePathPointsShared *this)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = this;
  v1 = *(this + 5);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 1);
    do
    {
      if ((v1 & (1 << v2)) != 0)
      {
        v3 = v2;
      }

      ++v2;
    }

    while (v2 != 11);
    v5 = 0;
    v6 = 0;
    do
    {
      if ((v1 & (1 << v5)) != 0)
      {
        v6 += v7;
      }

      ++v5;
    }

    while (v5 <= v3);
  }

  v8 = 0;
  v9 = 0;
  v10 = *(v14 + 4);
  do
  {
    *(v14 + v8 + 92) = v9;
    if ((v10 & (1 << v8)) != 0)
    {
    }

    ++v8;
  }

  while (v8 != 11);
  v11 = 0;
  v12 = 0;
  v13 = v16;
  *(v14 + 56) = v15;
  *(v14 + 72) = v13;
  *(v14 + 22) = v17;
  do
  {
    if ((v10 & (1 << v11)) != 0)
    {
      v12 = v11;
    }

    ++v11;
  }

  while (v11 != 11);
  *(v14 + 13) = v12;
  return this;
}

double PKStrokePathPointsPrivate::slice(PKStrokePathPointsPrivate *this, _NSRange a2, PKStrokePathPointsPrivate *a3)
{
  length = a2.length;
  location = a2.location;
  ptr = this->constants.__ptr_;
  cntrl = this->constants.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a3->constants.__cntrl_;
  a3->constants.__ptr_ = ptr;
  a3->constants.__cntrl_ = cntrl;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this->constants.__ptr_ + 6);
  begin = this->pointsData.__begin_;
  v15 = 0;
  v14 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v14, &begin[v10 * location], &begin[v10 * (location + length)], v10 * length);
  v12 = a3->pointsData.__begin_;
  if (v12)
  {
    a3->pointsData.__end_ = v12;
    operator delete(v12);
  }

  result = *&v14;
  *&a3->pointsData.__begin_ = v14;
  a3->pointsData.__cap_ = v15;
  return result;
}

void *PKStrokePathPointsPrivate::operator[]@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 72);
  *a3 = *(*result + 56);
  *(a3 + 16) = v5;
  *(a3 + 32) = *(v4 + 88);
  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = result[2];
    v8 = *(v4 + 48);
    v9 = v8 * a2;
    if (v8 * a2 + v8 <= (result[3] - v7))
    {
      v10 = 0;
      v11 = *(v4 + 104);
      do
      {
        if ((v6 & (1 << v10)) != 0)
        {
          v9 += v12;
        }

        ++v10;
      }

      while (v10 <= v11);
    }
  }

  return result;
}

float PKStrokePathPointsPrivate::setTimestamp(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 2) != 0)
    {
      *&a2 = a2;
      *&begin[v7 * a3 + *(ptr + 93)] = LODWORD(a2);
    }
  }

  return *&a2;
}

double PKStrokePathPointsPrivate::aspectRatioAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 32) & 8) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 95)];
  }

  else
  {
    v8 = ptr + 72;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 1000.0;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setAspectRatio(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 8) != 0)
    {
      v8 = *(ptr + 95);
      v9 = &begin[v7 * a3];
      v10 = a2 * 1000.0;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::edgeWidthAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 32) & 0x10) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 96)];
  }

  else
  {
    v8 = ptr + 74;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 10.0;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setEdgeWidth(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 0x10) != 0)
    {
      v8 = *(ptr + 96);
      v9 = &begin[v7 * a3];
      v10 = a2 * 10.0;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::forceAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 32) & 0x20) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 97)];
  }

  else
  {
    v8 = ptr + 76;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 1000.0;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setForce(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 0x20) != 0)
    {
      v8 = *(ptr + 97);
      v9 = &begin[v7 * a3];
      v10 = a2 * 1000.0;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setAzimuth(PKStrokePathPointsPrivate *this, long double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 0x40) != 0)
    {
      v8 = *(ptr + 98);
      v9 = &begin[v7 * a3];
      this = PKCompressedStrokePoint::compressAzimuth(this, a2);
      *&v9[v8] = this;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::altitudeAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 32) & 0x80) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 99)];
  }

  else
  {
    v8 = ptr + 80;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 41720.8768;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setAltitude(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 32) & 0x80) != 0)
    {
      v8 = *(ptr + 99);
      v9 = &begin[v7 * a3];
      v10 = a2 * 41720.8768;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::opacityAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 33) & 1) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 100)];
  }

  else
  {
    v8 = ptr + 82;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 32767.5;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setOpacity(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 33) & 1) != 0)
    {
      v8 = *(ptr + 100);
      v9 = &begin[v7 * a3];
      v10 = a2 * 32767.5;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::thresholdAtIndex(PKStrokePathPointsPrivate *this, unint64_t a2, double a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  ptr = this->constants.__ptr_;
  v6 = end - begin;
  if (end != begin && (v7 = *(ptr + 6), v6 / v7 > a2) && (*(ptr + 33) & 4) != 0)
  {
    v8 = &begin[v7 * a2 + *(ptr + 102)];
  }

  else
  {
    v8 = ptr + 88;
  }

  LOWORD(a3) = *v8;
  return *&a3 / 32767.5;
}

PKStrokePathPointsPrivate *PKStrokePathPointsPrivate::setThreshold(PKStrokePathPointsPrivate *this, double a2, unint64_t a3)
{
  begin = this->pointsData.__begin_;
  end = this->pointsData.__end_;
  v5 = end - begin;
  if (end != begin)
  {
    ptr = this->constants.__ptr_;
    v7 = *(this->constants.__ptr_ + 6);
    if (v5 / v7 > a3 && (*(ptr + 33) & 4) != 0)
    {
      v8 = *(ptr + 102);
      v9 = &begin[v7 * a3];
      v10 = a2 * 32767.5;
      v11 = 0.0;
      if (v10 >= 0.0)
      {
        v11 = v10;
        if (v10 > 65535.0)
        {
          v11 = 65535.0;
        }
      }

      *&v9[v8] = v11;
    }
  }

  return this;
}

double PKStrokePathPointsPrivate::pointAtIndex@<D0>(PKStrokePathPointsPrivate *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  PKStrokePathPointsPrivate::operator[](this, a2, &v6);
  return PKDecompressStrokePoint(&v6, *this->constants.__ptr_, a3);
}

void sub_1C7DBBF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  drawing::StrokeData::~StrokeData(va);

  _Unwind_Resume(a1);
}

void sub_1C7DBBFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  drawing::StrokeData::~StrokeData(va);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void std::vector<PKCompressedStrokePoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCompressedStrokePoint>>(a1, v9);
    }

    v11 = 36 * v6;
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKCompressedStrokePoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7DBC670(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7DBC81C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<PKStrokePathPointsShared *,std::shared_ptr<PKStrokePathPointsShared>::__shared_ptr_default_delete<PKStrokePathPointsShared,PKStrokePathPointsShared>,std::allocator<PKStrokePathPointsShared>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t std::__shared_ptr_pointer<PKStrokePathPointsShared *,std::shared_ptr<PKStrokePathPointsShared>::__shared_ptr_default_delete<PKStrokePathPointsShared,PKStrokePathPointsShared>,std::allocator<PKStrokePathPointsShared>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void NotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = +[PKTextInputLanguageSelectionController sharedInstance];
  [v4 performSelectorOnMainThread:sel__pencilPreferencesChangedCallback_ withObject:a3 waitUntilDone:0];
}

void sub_1C7DBEBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7DBEF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __PKDictationControllerClass_block_invoke()
{
  result = NSClassFromString(&cfstr_Uidictationcon.isa);
  _MergedGlobals_128 = result;
  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__assign_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t std::shared_ptr<PKStrokePathPointsShared>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void sub_1C7DC5950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

double DKULinearstep(double a1, double a2, double a3)
{
  v3 = (a3 - a1) / (a2 - a1);
  result = 0.0;
  if (v3 >= 0.0)
  {
    result = v3;
    if (v3 > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

double DKUClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

double DKUSmoothstep(double a1, double a2, double a3)
{
  v3 = (a3 - a1) / (a2 - a1);
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
    if (v3 > 1.0)
    {
      v4 = 1.0;
    }
  }

  return v4 * v4 * (v4 * -2.0 + 3.0);
}

double DKUFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

uint64_t PKSqueezePaletteViewLayoutIsExpandedOptionsLayout(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t PKSqueezePaletteViewLayoutIsUndoRedoLayout(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

double PKPointOnArc(double a1, double a2, double a3, double a4)
{
  v4 = a1 + a3 * __sincos_stret(a4).__cosval;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = 1.0 / v6 * round(v4 * v6);

  return v7;
}

void sub_1C7DCA36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DCAD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7DCB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getTUICandidateLabelClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EC2971A8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TextInputUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82D7FF8;
    v6 = 0;
    qword_1EC2971A8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EC2971A8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TUICandidateLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1EC2971A8 = result;
  return result;
}

void sub_1C7DCC39C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7DCC754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DCC82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DCC8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DCC9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DCCA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DCCDC8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7DCCEDC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,WeightInfo>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t PKPencilSqueezeThresholdMap(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 doubleValue];
  v3 = llround(v2);
  if (v3 <= 449)
  {
    if (v3 > 199)
    {
      if (v3 == 200)
      {
        v4 = 3;
        goto LABEL_25;
      }

      if (v3 == 300)
      {
        v4 = 4;
        goto LABEL_25;
      }
    }

    else
    {
      if (v3 == 100)
      {
        v4 = 1;
        goto LABEL_25;
      }

      if (v3 == 135)
      {
        v4 = 2;
        goto LABEL_25;
      }
    }
  }

  else if (v3 <= 999)
  {
    if (v3 == 450)
    {
      v4 = 5;
      goto LABEL_25;
    }

    if (v3 == 675)
    {
      v4 = 6;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v3)
    {
      case 1000:
        v4 = 7;
        goto LABEL_25;
      case 1500:
        v4 = 8;
        goto LABEL_25;
      case 2275:
        v4 = 9;
        goto LABEL_25;
    }
  }

  v5 = PKPencilSqueezeAnalyticsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v1;
    _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Unable to map squeeze threshold: %@", &v7, 0xCu);
  }

  v4 = 0;
LABEL_25:

  return v4;
}

CGImageRef createDiffImageIfImageComparisonFails(CGImage *a1, CGImage *a2, int a3, int32x4_t *a4, int32x4_t *a5, float64x2_t *a6, int64x2_t *a7, int *a8, double a9)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (CGImageGetWidth(a2) == Width && CGImageGetHeight(a2) == Height)
  {
    v92 = a5;
    v20 = 0;
    v21 = 2;
    if (Width && Height)
    {
      v89 = a4;
      v90 = a6;
      v91 = a7;
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      v23 = CGBitmapGetAlignedBytesPerRow();
      v24 = malloc_type_calloc(Height, AlignedBytesPerRow, 0x296B1B36uLL);
      v25 = malloc_type_calloc(Height, AlignedBytesPerRow, 0xB4DA2948uLL);
      v26 = malloc_type_calloc(Height, v23, 0xA0F4C2EBuLL);
      if (v24 && v25 && v26)
      {
        v87 = v26;
        v88 = v25;
        v27 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
        v28 = CGBitmapContextCreate(v24, Width, Height, 0x10uLL, AlignedBytesPerRow, v27, 0x1101u);
        v29 = v24;
        if (v28)
        {
          v30 = v28;
          v86 = v29;
          v93.origin.x = 0.0;
          v93.origin.y = 0.0;
          v93.size.width = Width;
          v93.size.height = Height;
          CGContextDrawImage(v28, v93, a1);
          CGContextFlush(v30);
          CGContextRelease(v30);
          v31 = CGBitmapContextCreate(v88, Width, Height, 0x10uLL, AlignedBytesPerRow, v27, 0x1101u);
          CGColorSpaceRelease(v27);
          if (v31)
          {
            v94.origin.x = 0.0;
            v94.origin.y = 0.0;
            v94.size.width = Width;
            v94.size.height = Height;
            CGContextDrawImage(v31, v94, a2);
            CGContextFlush(v31);
            CGContextRelease(v31);
            LODWORD(v33) = 0;
            v34 = 0;
            v35 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
            v36 = 0uLL;
            v37 = v86;
            v38 = v88;
            v39 = v87;
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = v35;
            v46 = v88;
            do
            {
              for (i = 0; i != Width; ++i)
              {
                v48 = *&v37[8 * i];
                v49 = *&v38[8 * i];
                v50 = vdupq_n_s64(0x406FE00000000000uLL);
                if (v48 == v49)
                {
                  v51 = 0.0;
                  if ((*(&v48 + 3) * COERCE_SHORT_FLOAT(23544)) >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                  {
                    LODWORD(v33) = v33 + 1;
                  }

                  v35 = 0uLL;
                  v45 = 0uLL;
                  v52 = 0uLL;
                }

                else
                {
                  v53 = vdup_n_s16(0x5BF8u);
                  v54 = vcvtq_f64_f32(*&vcvtq_f32_f16(vmul_f16(vuzp1_s16(vmovn_s64(vshlq_u64(vdupq_n_s64(v48), xmmword_1C801CAC0)), *&v36.f64[0]), v53)));
                  LOWORD(v32.f64[0]) = HIWORD(*&v37[8 * i]);
                  WORD1(v32.f64[0]) = *&v37[8 * i];
                  v55 = vdupq_n_s64(v49);
                  v56 = vcvtq_f64_f32(*&vcvtq_f32_f16(vmul_f16(vuzp1_s16(vmovn_s64(vshlq_u64(v55, xmmword_1C801CAC0)), *&v36.f64[0]), v53)));
                  v55.i16[0] = HIWORD(*&v38[8 * i]);
                  v55.i16[1] = *&v38[8 * i];
                  v57 = vsubq_f64(vcvtq_f64_f32(*&vcvtq_f32_f16(vmul_f16(*&v32.f64[0], v53))), vcvtq_f64_f32(*&vcvtq_f32_f16(vmul_f16(*v55.i8, v53))));
                  v58 = vbslq_s8(vcltzq_f64(v57), vnegq_f64(v57), v57);
                  v59 = vsubq_f64(v54, v56);
                  v32 = vbslq_s8(vcltzq_f64(v59), vnegq_f64(v59), v59);
                  v51 = v32.f64[1];
                  if (a3)
                  {
                    if (v32.f64[1] < v58.f64[0])
                    {
                      v51 = v58.f64[0];
                    }

                    if (v32.f64[0] >= v51)
                    {
                      v51 = v32.f64[0];
                    }

                    if (v58.f64[1] >= v51)
                    {
                      v51 = v58.f64[1];
                    }

                    v52 = vdupq_lane_s64(*&v51, 0);
                  }

                  else
                  {
                    v60.f64[0] = v32.f64[0];
                    v60.f64[1] = v58.f64[1];
                    v52 = vbslq_s8(vcgtq_f64(v60, v50), v50, v60);
                    if (v32.f64[1] > 255.0)
                    {
                      v51 = 255.0;
                    }
                  }

                  v40 = vaddq_f64(v40, v58);
                  v45 = vbslq_s8(vcgtq_f64(v32, v45), v45, v32);
                  v35 = vbslq_s8(vcgtq_f64(v58, v35), v35, v58);
                  v44 = vbslq_s8(vcgtq_f64(v32, v44), v32, v44);
                  v43 = vbslq_s8(vcgtq_f64(v58, v43), v58, v43);
                  v42 = vaddq_f64(v42, v32);
                  v36 = vaddq_f64(v36, vmulq_f64(v58, v58));
                  v41 = vaddq_f64(v41, vmulq_f64(v32, v32));
                  LODWORD(v33) = v33 + 1;
                }

                v61 = vcgtq_f64(v52, v50);
                if (v51 > 255.0)
                {
                  v51 = 255.0;
                }

                v62 = vshl_u32(vmovn_s64(vcvtq_u64_f64(vbslq_s8(v61, v50, v52))), 0x1000000008);
                *&v39[4 * i] = v62.i32[0] | v51 | v62.i32[1] | 0xFF000000;
              }

              v37 += AlignedBytesPerRow;
              v38 += AlignedBytesPerRow;
              v39 += v23;
              ++v34;
            }

            while (v34 != Height);
            v82 = v45;
            v83 = v35;
            if (v33)
            {
              v33 = v33;
            }

            else
            {
              v33 = Height * Width;
            }

            v63 = 1.0 / v33;
            v64 = vmulq_n_f64(v40, v63);
            v65 = vsqrtq_f64(vmaxnmq_f64(vsubq_f64(vmulq_n_f64(v36, v63), vmulq_f64(v64, v64)), 0));
            v66 = vmulq_n_f64(v42, v63);
            v67 = vsqrtq_f64(vmaxnmq_f64(vsubq_f64(vmulq_n_f64(v41, v63), vmulq_f64(v66, v66)), 0));
            v68 = vzip1q_s64(v64, v65);
            v80 = v65;
            v81 = v64;
            v69 = vzip2q_s64(v64, v65);
            v70 = vbslq_s8(vcgtq_f64(v69, v68), v69, v68);
            v71 = vzip1q_s64(v66, v67);
            v72 = vbslq_s8(vcgtq_f64(v71, v70), v71, v70);
            v78 = v66;
            v79 = v67;
            v73 = vzip2q_s64(v66, v67);
            v74 = vbslq_s8(vcgtq_f64(v73, v72), v73, v72);
            if (*v74.i64 < *&v74.i64[1])
            {
              v74.i64[0] = v74.i64[1];
            }

            v84 = v44;
            v85 = v43;
            if (*v74.i64 <= a9)
            {
              v20 = 0;
            }

            else
            {
              v75 = CGDataProviderCreateWithData(0, v87, v23 * Height, free_ptr);
              v20 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, v23, v27, 0x2002u, v75, 0, 1, kCGRenderingIntentDefault);
              CGDataProviderRelease(v75);
              v46 = v88;
            }

            if (v20)
            {
              v77 = 0;
            }

            else
            {
              v77 = v87;
            }

            cleanup(v86, v46, v77);
            if (v89)
            {
              *v89 = vuzp1q_s32(vcvtq_s64_f64(v83), vcvtq_s64_f64(v82));
            }

            if (v92)
            {
              *v92 = vuzp1q_s32(vcvtq_s64_f64(v85), vcvtq_s64_f64(v84));
            }

            if (v90)
            {
              *v90 = v81;
              v90[1] = v78;
            }

            v21 = 0;
            if (v91)
            {
              *v91 = v80;
              v91[1] = v79;
            }
          }

          else
          {
            cleanup(v86, v88, v87);
            v20 = 0;
            v21 = 4;
          }
        }

        else
        {
          free(v24);
          free(v88);
          free(v87);
          CGColorSpaceRelease(v27);
          v20 = 0;
          v21 = 3;
        }
      }

      else
      {
        cleanup(v24, v25, v26);
        v20 = 0;
        v21 = 2;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  *a8 = v21;
  return v20;
}

void cleanup(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    free(a1);
  }

  if (a2)
  {
    free(a2);
  }

  if (a3)
  {

    free(a3);
  }
}

void _PKHandleAutoRefineSettingsDidChange(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[PKSettingsDaemon autoRefineEnabled];
  v4 = os_log_create("com.apple.pencilkit", "PKAutoRefineSettingsObserver");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = @"PKRemoteAutoRefineSettingsDidChange";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle remote notification %@, autoRefineEnabled = %{BOOL}d", &v8, 0x12u);
  }

  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 1);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }
}

void vSyncCallback(__IOMobileFramebuffer *a1, unsigned int a2, const __CFDictionary *a3, void *a4)
{
  v12 = a3;
  v5 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"Presentation_delta"];
  v6 = [v5 integerValue];
  v7 = timebase_info;
  v8 = *algn_1EC293234;

  v9 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"Presentation_time"];
  v10 = [v9 unsignedIntegerValue];

  if (a4)
  {
    v11 = a4[1];
    block[1] = 3221225472;
    block[0] = MEMORY[0x1E69E9820];
    block[2] = __67__PKRendererVSyncController_signalVSyncSemaphore_presentationTime___block_invoke;
    block[3] = &unk_1E82D6610;
    block[4] = a4;
    *&block[5] = (v6 * v7 / v8) / 1000000000.0;
    block[6] = v10;
    dispatch_async(v11, block);
  }
}

const void *PK_CGColorMakeRGBA(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  components[4] = *MEMORY[0x1E69E9840];
  v10 = DKUExtendedDynamicRangeRGBColorSpace();
  if (a5 <= 0.0)
  {
    components[0] = a1;
    components[1] = a2;
    components[2] = a3;
    components[3] = a4;
    v11 = CGColorCreate(v10, components);
  }

  else
  {
    v11 = CGColorCreateWithContentHeadroom();
  }

  v12 = v11;
  if (v11)
  {
    CFAutorelease(v11);
  }

  return v12;
}

void sub_1C7DD01FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DD03B4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7DD05BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7DD06D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  drawing::Ink::~Ink(va);

  _Unwind_Resume(a1);
}

void sub_1C7DD07B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  drawing::Ink::~Ink(va);
  _Unwind_Resume(a1);
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1CCA6ECB0);
  }
}

void sub_1C7DD0A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PKMetalRenderState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7DD0F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PKTextInputDescriptionForHandwritingShotState(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_1F476BD20;
  }

  else
  {
    return off_1E82D8208[a1];
  }
}

void sub_1C7DD2E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7DD3688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DD3FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7DD5EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v69 - 192), 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 256), 8);
  _Block_object_dispose((v69 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t drawingV1::Point::Point(uint64_t this)
{
  *this = &unk_1F4768F00;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4768F00;
  *(this + 16) = 0;
  return this;
}

void drawingV1::Point::~Point(drawingV1::Point *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawingV1::Point::Point(drawingV1::Point *this, const drawingV1::Point *a2)
{
  *this = &unk_1F4768F00;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

uint64_t drawingV1::Point::operator=(uint64_t a1, const drawingV1::Point *a2)
{
  if (a1 != a2)
  {
    drawingV1::Point::Point(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float drawingV1::swap(drawingV1 *this, drawingV1::Point *a2, drawingV1::Point *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float drawingV1::Point::Point(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768F00;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_1F4768F00;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t drawingV1::Point::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4768F00;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t drawingV1::Point::formatText(drawingV1::Point *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "x", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "y", *(this + 3));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Point::readFrom(drawingV1::Point *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
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
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 16) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 3) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t drawingV1::Point::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL drawingV1::Point::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t drawingV1::Point::hash_value(drawingV1::Point *this)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void sub_1C7DD7818(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C7DDC17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 48) = *(a2 + 48);
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t PKHasScribbleInteractionInView(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 interactions];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v6 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v6 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

void *PKScribbleInteractionInView(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 interactions];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 scribbleInteractionWrapper];

          v6 = v11;
          goto LABEL_16;
        }

        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 scribbleInteractionWrapper];

          if ([v10 isElementContainer])
          {
            v6 = v10;

            v5 = v6;
          }

          else
          {
            v6 = v10;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_16:

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;

  return v12;
}

id PKScribbleInteractionInTextInput(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = PKScribbleInteractionInView(v1);
  }

  else
  {
    v2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 view];
    v4 = PKScribbleInteractionInView(v3);

    v2 = v4;
  }

  if (!v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v1 textInputView];
      v2 = PKScribbleInteractionInView(v5);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_1C7DDE464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PKMetalUnpurgeableStrokeRenderCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7DE1DB4(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1C7DE2770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKMetalRendererController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7DE412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34)
{
  a34 = &a22;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

id CacheFileURLForDrawing(void *a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v5 firstObject];

  if (v4)
  {
    [v4 UUIDString];
  }

  else
  {
    [v3 uniqueCacheFilePath];
  }
  v7 = ;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v7 stringByAppendingPathExtension:@"sessionCache"];
    v11 = MEMORY[0x1E695DFF8];
    v14[0] = v6;
    v14[1] = @"com.apple.PencilKit.handwriting";
    v14[2] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v9 = [v11 fileURLWithPathComponents:v12];
  }

  return v9;
}

id PKLoadRecognitionSession(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = CacheFileURLForDrawing(v3, v4);
  v6 = CacheFileKeyForDrawing(v3, v4);
  if (!v5)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  v7 = [PKDataEncryption decryptFile:v5 key:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    if (!v8 || [v8 code]== 4)
    {
      v10 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Failed to load session cache data file: %@", buf, 0xCu);
    }

    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v17 = v8;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v17];
  v11 = v17;

  if (v10 && !v11)
  {

LABEL_13:
    v14 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 uniqueCacheFilePath];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Successfully loaded recognition session for: %@", buf, 0xCu);
    }

    v9 = v14;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Failed to unarchive session cache data: %@", buf, 0xCu);
  }

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_18:

  return v10;
}

id CacheFileKeyForDrawing(void *a1, void *a2)
{
  if (a2)
  {
    a1 = a2;
  }

  v2 = [a1 AES128Key];

  return v2;
}

uint64_t PKSaveRecognitionSession(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = CacheFileURLForDrawing(v6, v7);
    if (!v8)
    {
      v19 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v23 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
    v10 = v23;
    if (v9)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v8 URLByDeletingLastPathComponent];
      v22 = v10;
      v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v22];
      v14 = v22;

      if (v13)
      {
        v15 = CacheFileKeyForDrawing(v6, v7);
        v21 = v14;
        v16 = [PKDataEncryption encryptData:v9 to:v8 key:v15 error:&v21];
        v10 = v21;

        if (v16)
        {
          v17 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v6 uniqueCacheFilePath];
            *buf = 138412290;
            v25 = v18;
            _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, "Successfully saved recognition session for: %@", buf, 0xCu);
          }

          v19 = 1;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        v10 = v14;
      }
    }

    v17 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_error_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_ERROR, "Failed to save session cache: %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_15;
  }

  v19 = 0;
LABEL_17:

  return v19;
}

void sub_1C7DE9F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a40);
  _Unwind_Resume(a1);
}

void sub_1C7DEA320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DEAD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7DEC07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7DEF8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7DF01A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7DF0254(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7DF2260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1C7DF3400(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7DF4140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

void sub_1C7DF49A8(_Unwind_Exception *a1)
{
  *(v2 + 40) = 0;

  _Unwind_Resume(a1);
}

void sub_1C7DF62D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54)
{
  *(v55 - 144) = &a39;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = &a42;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = &a45;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = &a48;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = &a51;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = &a54;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = v55 - 240;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));
  *(v55 - 144) = v55 - 216;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100]((v55 - 144));

  _Unwind_Resume(a1);
}

void sub_1C7DF7614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 40))(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t PKOutputFunction::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v4 = (*(*v3 + 24))(v3);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

void sub_1C7DF7A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = v17;
  *(v16 + 8) = v18;

  if (a14)
  {
    (*(*a14 + 40))(a14);
  }

  _Unwind_Resume(a1);
}

void **std::_AllocatorDestroyRangeReverse<std::allocator<PKOutputFunction>,PKOutputFunction*>::operator()[abi:ne200100](void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  while (v1 != v2)
  {
    result = *(v1 - 8);
    *(v1 - 8) = 0;
    if (result)
    {
      result = ((*result)[5])(result);
    }

    v1 -= 48;
  }

  return result;
}

void ___ZN25PKFunctionPiecewiseBezier16solveForMinValueEd_block_invoke()
{
  v0 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_1C7CCA000, v0, OS_LOG_TYPE_FAULT, "Detected invalid inValue", v1, 2u);
  }
}

void ___ZN25PKFunctionPiecewiseBezier16solveForMaxValueEd_block_invoke()
{
  v0 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_1C7CCA000, v0, OS_LOG_TYPE_FAULT, "Detected invalid inValue", v1, 2u);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1C7DF9A2C(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_1C7DF9BE4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7DF9E00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7DFA3EC(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

id PKToolPickerVisibilityDescription(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (visible)", 3];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (hidden)", 2];
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (inactive)", 1];
        goto LABEL_11;
      }

LABEL_8:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (unknown)", a1];
      goto LABEL_11;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (inherited)", 0];
  }

  v1 = LABEL_11:;

  return v1;
}

void sub_1C7E005F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E0072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1C7E020BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v75 + 40));
  objc_destroyWeak((v74 + 32));
  objc_destroyWeak((v73 + 32));
  if (v72)
  {
    objc_destroyWeak(v70);
  }

  if (v71)
  {
    objc_destroyWeak(v69);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E03730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E056B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E07E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7E0861C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C7E08B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7E0C698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E0E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v19 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E0F47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKPaintAreaViewSurface;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7E10330(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7E10510(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7E10AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_1C7E11F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FilteredFoundItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 dataDetectorResult];
  [v2 addObject:v3];
}

id getDDDetectionControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_137;
  v7 = _MergedGlobals_137;
  if (!_MergedGlobals_137)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDDetectionControllerClass_block_invoke;
    v3[3] = &unk_1E82D6498;
    v3[4] = &v4;
    __getDDDetectionControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7E12970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FilteredFoundItems_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 dataDetectorResult];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

Class __getDDDetectionControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A50E8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82D8DD8;
    v6 = 0;
    qword_1ED6A50E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A50E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DDDetectionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_137 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A50E8 = result;
  return result;
}

uint64_t versioned_document::Document::Document(uint64_t this)
{
  *this = &unk_1F4769250;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_1F4769250;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

void versioned_document::Document::~Document(versioned_document::Document *this)
{
  *this = &unk_1F4769250;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F4769250;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F4769250;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x1CCA6ECB0]();
}

uint64_t versioned_document::Document::Document(uint64_t this, const versioned_document::Document *a2)
{
  *this = &unk_1F4769250;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 36) = 0;
  if (*(a2 + 36))
  {
    v2 = *(a2 + 8);
    *(this + 36) = 1;
    *(this + 32) = v2;
  }

  if (*(a2 + 1) != *(a2 + 2))
  {
    PB::PtrVector<versioned_document::Version>::emplace_back<versioned_document::Version const&>();
  }

  return this;
}

uint64_t versioned_document::Document::operator=(uint64_t a1, const versioned_document::Document *a2)
{
  if (a1 != a2)
  {
    versioned_document::Document::Document(&v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    v7 = &unk_1F4769250;
    v11 = &v8;
    std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v11);
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t versioned_document::swap(uint64_t this, versioned_document::Document *a2, versioned_document::Document *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  return this;
}

uint64_t versioned_document::Document::Document(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769250;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 8))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100]((a1 + 8));
    operator delete(*v4);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t versioned_document::Document::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    versioned_document::Document::Document(&v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    v7 = &unk_1F4769250;
    v11 = &v8;
    std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v11);
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t versioned_document::Document::formatText(versioned_document::Document *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 36))
  {
    PB::TextFormatter::format(a2, "serializationVersion");
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t versioned_document::Document::readFrom(versioned_document::Document *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        PB::PtrVector<versioned_document::Version>::emplace_back<>();
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 36) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 8) = v27;
      }

      else
      {
LABEL_28:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t versioned_document::Document::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 36))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

BOOL versioned_document::Document::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 != *(a2 + 16) - v3)
  {
    return 0;
  }

  if (v5 == v4)
  {
    return 1;
  }

  do
  {
    result = versioned_document::Version::operator==(*v5, *v3);
    if (!result)
    {
      break;
    }

    ++v5;
    ++v3;
  }

  while (v5 != *(a1 + 16));
  return result;
}

uint64_t versioned_document::Document::hash_value(versioned_document::Document *this)
{
  if (*(this + 36))
  {
    v1 = *(this + 8);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 ^= versioned_document::Version::hash_value(v5);
    }

    while (v2 != v3);
  }

  return v4 ^ v1;
}

void sub_1C7E145D4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7E1654C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PKProtobufUnknownFields>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *std::vector<CGPoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<PKCompressedStrokePoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C7E1A300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PKCompressedStrokePoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKCompressedStrokePoint>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void sub_1C7E1A874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C7E1E364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E1F698(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void PKBSplineFilter::splineFromStroke(id *this, PKStrokePath *a2, PKInk *a3, double a4)
{
  v8 = a2;
  v9 = a3;
  PKBSplineFilter::configureForInk(this, v9);
  v10 = v8;
  v14 = v10;
  objc_storeStrong(this + 14, a2);
  v11 = [(PKStrokePath *)v10 count];
  this[20] = 0;
  *(this + 21) = (v11 - 1);
  this[16] = 0;
  (*(*this + 4))(this);
  (**this)(this, v9, 0, 1.0);
  if (a4 >= 0.0)
  {
    *(this + 15) = a4;
  }

  this[1] = &v13;
  (*(*this + 5))(this);
  (*(*this + 1))(this);
  v12 = this[14];
  this[14] = 0;

  this[1] = 0;
}

uint64_t *std::unique_ptr<PKBSplineFilter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    *v2 = &unk_1F47693D8;
    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    *v2 = &unk_1F4769430;
    v4 = *(v2 + 48);
    if (v4)
    {
      *(v2 + 56) = v4;
      operator delete(v4);
    }

    MEMORY[0x1CCA6ECB0](v2, 0x10A1C409B26A9D7);
  }

  return a1;
}

void sub_1C7E204B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1C7E21530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E22078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void PKBSplineFilter::drawingBeganWithInk(PKBSplineFilter *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  PKBSplineFilter::configureForInk(a1, v7);
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v7, a3, a4);
  *(a1 + 108) = 0;
}

uint64_t PKBSplineFilter::drawingEnded(PKBSplineFilter *this)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 16) = 1;
  *(this + 9) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 5);
  *(this + 108) = 1;
  return result;
}

uint64_t PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 48))(a1);
  std::vector<_PKStrokePoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<_PKStrokePoint*>,std::__wrap_iter<_PKStrokePoint*>>(a3, *(a3 + 8), (*v6 + 96 * a2), *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - (*v6 + 96 * a2)) >> 5));
  return a1[9];
}

void *PKBSplineFilter::reset(PKBSplineFilter *this)
{
  result = PKInputFilter<_PKStrokePoint,_PKStrokePoint>::reset(this);
  *(this + 108) = 1;
  return result;
}

uint64_t PKBSplineFilter::fetchInput(PKBSplineFilter *this)
{
  if (*(this + 108))
  {
    return (*(*this + 56))();
  }

  else
  {
    return PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::fetchInput(this);
  }
}

void PKBSplineFilter::run(PKBSplineFilter *this)
{
  if (*(this + 7) != *(this + 6) && (*(this + 108) & 1) == 0)
  {
    std::vector<_PKStrokePoint>::resize(this + 10, *(this + 9));
    if (*(this + 14) && (v2 = *(this + 20), v3 = *(this + 21), v2 < v3))
    {
      PKBSplineFilter::calcSplinePathInRange(this, v2, v3);
      if (*(this + 20) > 0.01)
      {
        v4 = *(this + 10);
        v5 = *(v4 + 16);
        *v20 = *v4;
        *&v20[16] = v5;
        v6 = *(v4 + 32);
        v7 = *(v4 + 48);
        v8 = *(v4 + 80);
        v23 = *(v4 + 64);
        v24 = v8;
        v21 = v6;
        v22 = v7;
        v9 = vsubq_f64(*&v20[8], *(v4 + 104));
        *&v20[8] = vaddq_f64(*&v20[8], vmulq_n_f64(vmulq_n_f64(v9, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v9, v9).f64[1]) + v9.f64[0] * v9.f64[0])), *&v20[24] + 0.0 + *(this + 16)));
        std::vector<_PKStrokePoint>::insert(this + 10, v4, v20);
      }

      v10 = *(this + 21);
      if (v10 < ([*(this + 14) _pointsCount] - 1) + -0.01)
      {
        v11 = *(this + 11);
        v12 = *(v11 - 184);
        v13 = *(v11 - 80);
        *v20 = *(v11 - 96);
        *&v20[16] = v13;
        v14 = *(v11 - 64);
        v15 = *(v11 - 48);
        v16 = *(v11 - 16);
        v23 = *(v11 - 32);
        v24 = v16;
        v21 = v14;
        v22 = v15;
        v17 = vsubq_f64(*&v20[8], v12);
        *&v20[8] = vaddq_f64(*&v20[8], vmulq_n_f64(vmulq_n_f64(v17, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0])), *&v20[24] + 0.0 + *(this + 16)));
        std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, v20);
      }
    }

    else
    {
      v18 = *(this + 5);
      v19 = (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5) - 1);

      PKBSplineFilter::calcSplinePathInRange(this, v18, v19);
    }
  }
}

void PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
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

uint64_t PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingEnded(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

void *PKInputFilter<_PKStrokePoint,_PKStrokePoint>::reset(uint64_t a1)
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

uint64_t PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::fetchInput(uint64_t a1)
{
  std::vector<_PKStrokePoint>::resize((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 56);

  return v2(a1);
}

uint64_t PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::reset(uint64_t a1)
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

void std::vector<_PKStrokePoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<_PKStrokePoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 96 * a2;
  }
}

void std::vector<_PKStrokePoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(a1, v9);
    }

    v11 = 96 * v6;
    v12 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void PKBSplineFilter::configureForInk(PKBSplineFilter *this, PKInk *a2)
{
  v3 = [(PKInk *)a2 behavior];
  v4 = [v3 renderingDescriptor];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  v7 = 0.2;
  if (v5 == 1)
  {
    v7 = 0.5;
  }

  *(this + 38) = v6;
  *(this + 15) = v7;
}

char *std::vector<_PKStrokePoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<_PKStrokePoint*>,std::__wrap_iter<_PKStrokePoint*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 5);
    if (v12 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 5);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x155555555555555)
    {
      v15 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(a1, v15);
    }

    v40 = 32 * (v13 >> 5);
    v41 = 96 * a5;
    v42 = v40;
    do
    {
      v43 = v7[1];
      *v42 = *v7;
      v42[1] = v43;
      v44 = v7[2];
      v45 = v7[3];
      v46 = v7[5];
      v42[4] = v7[4];
      v42[5] = v46;
      v42[2] = v44;
      v42[3] = v45;
      v42 += 6;
      v7 += 6;
      v41 -= 96;
    }

    while (v41);
    memcpy((v40 + 96 * a5), v5, *(a1 + 8) - v5);
    v47 = *a1;
    v48 = v40 + 96 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v49 = v5 - v47;
    v50 = (v40 - (v5 - v47));
    memcpy(v50, v47, v49);
    v51 = *a1;
    *a1 = v50;
    *(a1 + 8) = v48;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
    }

    return v40;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 5)) >= a5)
  {
    v32 = 3 * a5;
    v33 = &__dst[96 * a5];
    v34 = (v10 - 96 * a5);
    v35 = *(a1 + 8);
    while (v34 < v10)
    {
      v36 = v34[1];
      *v35 = *v34;
      v35[1] = v36;
      v37 = v34[2];
      v38 = v34[3];
      v39 = v34[5];
      v35[4] = v34[4];
      v35[5] = v39;
      v35[2] = v37;
      v35[3] = v38;
      v34 += 6;
      v35 += 6;
    }

    *(a1 + 8) = v35;
    if (v10 != v33)
    {
      memmove(&__dst[96 * a5], __dst, v10 - v33);
    }

    v31 = 32 * v32;
    v29 = v5;
    v30 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[96 * a5];
    v21 = v10 + v18;
    if (&v19[-96 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -96 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7 + 16);
        *v24 = *(v23 - v7);
        v24[1] = v25;
        v26 = *(v23 - v7 + 32);
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 80);
        v24[4] = *(v23 - v7 + 64);
        v24[5] = v28;
        v24[2] = v26;
        v24[3] = v27;
        v23 += 96;
        v22 += 96;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[96 * a5], v5, v19 - v20);
    }

    v29 = v5;
    v30 = v7;
    v31 = v10 - v5;
LABEL_28:
    memmove(v29, v30, v31);
  }

  return v5;
}

void PKBSplineFilter::calcSplinePathInRange(PKBSplineFilter *this, double a2, double a3)
{
  v4 = *(this + 6);
  v5 = *(this + 7) - v4;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 5);
  if ((v6 - 1) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = (v6 - 1);
  }

  if (v6 <= 1)
  {
    v8 = v4[1];
    *&v50.timestamp = *v4;
    *&v50.location.y = v8;
    v9 = v4[2];
    v10 = v4[3];
    v11 = v4[5];
    *&v50.altitude = v4[4];
    *&v50.radius2 = v11;
    *&v50.aspectRatio = v9;
    *&v50.force = v10;
    std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, &v50);
    v50.location.x = v50.location.x + 0.01;
    std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, &v50);
    return;
  }

  if (v5 != 192)
  {
    v13 = fmax(a2, 0.0);
    v14 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
    v16 = v7;
    PKBSplineFilter::calculateVStartAndVEnd(this, &v50, &v49);
    v42 = v13;
    if (v13 > v7)
    {
      return;
    }

    v17 = 0;
    v18 = v13 - v13;
    v19 = v7 - v7;
    v20 = v42;
    v41 = v16;
    while (1)
    {
      v21 = v20 != v42;
      v22 = v20 == v42 ? v18 : 0.0;
      v23 = v20 == v16 ? v19 : 1.0;
      v24 = (v23 - v22) / (1.0 / PKBSplineFilter::calculateStepsForSegment(this, v20, &v50, &v49));
      v25 = vcvtpd_s64_f64(v24);
      if (v21 <= v25)
      {
        break;
      }

LABEL_28:
      if ((v20 + 2) >= *(this + 4))
      {
        ++v20;
      }

      else
      {
        *(this + 9) = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 5);
        *(this + 5) = ++v20;
      }

      v16 = v41;
      if (v20 > v41)
      {
        return;
      }
    }

    v26 = v20 + 1;
    v27 = v25 + 1;
    v28 = (v23 - v22) / ceil(v24);
    while (1)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      memset(v44, 0, sizeof(v44));
      v43 = v22 + v28 * v21;
      *(&v44[0] + 1) = PKBSplineFilter::bsplineInterpolate(this, v20, v6, v43, &v50.location, &v49.location);
      *&v44[1] = v29;
      v30 = *(this + 6);
      if (v26 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v30) >> 5))
      {
        v35 = *(v44 + 8);
        v36 = (v30 + 96 * v20);
        v37 = v36[1];
        v44[0] = *v36;
        v44[1] = v37;
        v38 = v36[5];
        v40 = v36[2];
        v39 = v36[3];
        v47 = v36[4];
        v48 = v38;
        v45 = v40;
        v46 = v39;
        *(v44 + 8) = v35;
        if (v17)
        {
LABEL_25:
          if ((v15 - *&v44[1]) * (v15 - *&v44[1]) + (v14 - *(v44 + 1)) * (v14 - *(v44 + 1)) > 0.01)
          {
            std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, v44);
            v14 = *(v44 + 1);
            v15 = *&v44[1];
          }

          goto LABEL_27;
        }
      }

      else
      {
        v31 = (v30 + 96 * v20);
        v32 = (v30 + 96 * v26);
        v47.f64[1] = v43 * v32[4].f64[1] + v31[4].f64[1] * (1.0 - v43);
        *(&v44[1] + 1) = v43 * v32[1].f64[1] + v31[1].f64[1] * (1.0 - v43);
        DKDMixAnglesInRadians(v31[3].f64[1], v32[3].f64[1], v43);
        v46.f64[1] = v33;
        DKDMixAnglesInRadians(v31[4].f64[0], v32[4].f64[0], v43);
        v47.f64[0] = v34;
        v45 = vmlaq_n_f64(vmulq_n_f64(v32[2], v43), v31[2], 1.0 - v43);
        *v44 = v43 * v32->f64[0] + v31->f64[0] * (1.0 - v43);
        v46.f64[0] = v43 * v32[3].f64[0] + v31[3].f64[0] * (1.0 - v43);
        v48 = vmlaq_n_f64(vmulq_n_f64(v32[5], v43), v31[5], 1.0 - v43);
        if (v17)
        {
          goto LABEL_25;
        }
      }

      std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, v44);
LABEL_27:
      ++v21;
      v17 = 1;
      if (v27 == v21)
      {
        goto LABEL_28;
      }
    }
  }

  std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, v4);
  v12 = (*(this + 6) + 96);

  std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, v12);
}

char *std::vector<_PKStrokePoint>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v16 = __src - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v42 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(a1, v19);
    }

    v39 = 0;
    v40 = 32 * (v16 >> 5);
    v41 = v40;
    std::__split_buffer<_PKStrokePoint>::emplace_back<_PKStrokePoint const&>(&v39, a3);
    v24 = v40;
    memcpy(v41, v4, a1[1] - v4);
    v25 = *a1;
    v26 = v40;
    *&v41 = v41 + a1[1] - v4;
    a1[1] = v4;
    v27 = v4 - v25;
    v28 = (v26 - (v4 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    *(a1 + 1) = v41;
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v39 = v29;
    v40 = v29;
    if (v29)
    {
      operator delete(v29);
    }

    return v24;
  }

  else if (__src == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v20;
    v21 = *(a3 + 2);
    v22 = *(a3 + 3);
    v23 = *(a3 + 5);
    *(v6 + 4) = *(a3 + 4);
    *(v6 + 5) = v23;
    *(v6 + 2) = v21;
    *(v6 + 3) = v22;
    a1[1] = v6 + 96;
  }

  else
  {
    v8 = __src + 96;
    if (v6 < 0x60)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 96;
      v10 = *(v6 - 5);
      *v6 = *(v6 - 6);
      *(v6 + 1) = v10;
      v11 = *(v6 - 4);
      v12 = *(v6 - 3);
      v13 = *(v6 - 1);
      *(v6 + 4) = *(v6 - 2);
      *(v6 + 5) = v13;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 96, __src, v6 - v8);
      v9 = a1[1];
    }

    v31 = v9 <= a3 || v4 > a3;
    v32 = 96;
    if (v31)
    {
      v32 = 0;
    }

    v33 = &a3[v32];
    v34 = *(v33 + 1);
    *v4 = *v33;
    *(v4 + 1) = v34;
    v35 = *(v33 + 2);
    v36 = *(v33 + 3);
    v37 = *(v33 + 5);
    *(v4 + 4) = *(v33 + 4);
    *(v4 + 5) = v37;
    *(v4 + 2) = v35;
    *(v4 + 3) = v36;
  }

  return v4;
}

void sub_1C7E241DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_PKStrokePoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

float64x2_t PKBSplineFilter::calculateVStartAndVEnd(PKBSplineFilter *this, _PKStrokePoint *a2, _PKStrokePoint *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 7) - v3;
  v5 = v3[1];
  *&a2->timestamp = *v3;
  *&a2->location.y = v5;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  *&a2->altitude = v3[4];
  *&a2->radius2 = v8;
  *&a2->aspectRatio = v6;
  *&a2->force = v7;
  v9 = *(this + 7);
  __asm { FMOV            V2.2D, #2.0 }

  a2->location = vmlaq_f64(vnegq_f64(*(*(this + 6) + 104)), _Q2, *(*(this + 6) + 8));
  v15 = *(v9 - 64);
  v16 = *(v9 - 48);
  v17 = *(v9 - 16);
  *&a3->altitude = *(v9 - 32);
  *&a3->radius2 = v17;
  *&a3->aspectRatio = v15;
  *&a3->force = v16;
  v18 = *(v9 - 80);
  *&a3->timestamp = *(v9 - 96);
  *&a3->location.y = v18;
  v19 = *(this + 6) + v4;
  result = *(v19 - 88);
  a3->location = vmlaq_f64(vnegq_f64(*(v19 - 184)), _Q2, result);
  return result;
}

uint64_t PKBSplineFilter::calculateStepsForSegment(PKBSplineFilter *this, uint64_t a2, const _PKStrokePoint *a3, const _PKStrokePoint *a4)
{
  v57[63] = *MEMORY[0x1E69E9840];
  result = *(this + 26);
  if (result <= 0)
  {
    v9 = *(this + 6);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v9) >> 5);
    if (*(this + 109) == 1)
    {
      if (a2)
      {
        v11 = &v9[12 * a2];
        x = *(v11 - 11);
        y = *(v11 - 10);
        v14 = v11[1];
        v15 = v11[2];
        v16 = v11[13];
        v17 = v11[14];
        v18 = &v9[12 * a2 + 24];
        p_location = (v18 + 1);
        v20 = (v18 + 2);
        p_y = &a4->location.y;
        if (a2 + 2 >= v10)
        {
          p_location = &a4->location;
        }

        else
        {
          p_y = v20;
        }
      }

      else
      {
        x = a3->location.x;
        y = a3->location.y;
        v14 = *(v9 + 1);
        v15 = *(v9 + 2);
        p_location = (v9 + 25);
        p_y = (v9 + 26);
        v16 = *(v9 + 13);
        v17 = *(v9 + 14);
      }

      v49 = vcvtpd_s64_f64(approximateSplineLength(x, y, v14, v15, v16, v17, p_location->x, *p_y) / *(this + 17));
      if (v49 >= 8)
      {
        v49 = 8;
      }

      v50 = *(this + 38);
      if (v49 <= v50)
      {
        return v50;
      }

      else
      {
        return v49;
      }
    }

    else
    {
      v22 = 8 * *(this + 36);
      if (v22 >= 32)
      {
        v23 = 32;
      }

      else
      {
        v23 = v22;
      }

      if (v22 < 0)
      {
        goto LABEL_32;
      }

      v24 = 0;
      v25 = v23;
      v26 = &v56 + 1;
      do
      {
        *(v26 - 1) = PKBSplineFilter::bsplineInterpolate(this, a2, v10, v24 / v25, &a3->location, &a4->location);
        *v26 = v27;
        ++v24;
        v26 += 2;
      }

      while (v23 + 1 != v24);
      if (v22 < 2)
      {
LABEL_32:
        v38 = 0;
        v33 = 1;
      }

      else
      {
        v28 = (*(this + 18) * *(this + 18));
        v29 = *(this + 15) / v28 * (*(this + 15) / v28);
        if (v23 <= 2)
        {
          v30 = 2;
        }

        else
        {
          v30 = v23;
        }

        v51 = v30 - 1;
        v31 = 1;
        v32 = v23;
        do
        {
          v53 = v31;
          v52 = v32;
          v33 = (v32 + v31) / 2;
          v54[0] = v56;
          v54[v33] = *&v57[2 * v23 - 1];
          if (v32 + v31 >= 4)
          {
            if (v33 <= 2)
            {
              v34 = 2;
            }

            else
            {
              v34 = v33;
            }

            v35 = &v55;
            for (i = 1; i != v34; ++i)
            {
              *(v35 - 1) = PKBSplineFilter::bsplineInterpolate(this, a2, v10, i / v33, &a3->location, &a4->location);
              *v35 = v37;
              v35 += 2;
            }
          }

          v38 = 0;
          v39 = 2;
          v40 = v51;
          v41 = v57;
          v42 = v33;
          do
          {
            v43 = v42 / v25;
            v44 = vcvtmd_s64_f64(v43);
            v45 = v43 - v44;
            v46 = &v54[v44];
            v47 = v46[2] * v45 + *v46 * (1.0 - v45);
            v48 = v46[3] * v45 + v46[1] * (1.0 - v45);
            if ((v48 - *v41) * (v48 - *v41) + (v47 - *(v41 - 1)) * (v47 - *(v41 - 1)) > v29)
            {
              break;
            }

            v38 = v39 >= v23;
            v42 += v33;
            v41 += 2;
            ++v39;
            --v40;
          }

          while (v40);
          v32 = v52;
          if (v38)
          {
            v32 = v33 - 1;
            v31 = v53;
          }

          else
          {
            v31 = v33 + 1;
          }
        }

        while (v31 < v32);
      }

      return v33 + (v33 < v23 && !v38);
    }
  }

  return result;
}

double PKBSplineFilter::bsplineInterpolate(PKBSplineFilter *this, uint64_t a2, uint64_t a3, double a4, const CGPoint *a5, const CGPoint *a6)
{
  v13 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  p_y = &a6->y;
  v15 = &a5->y;
  v16 = 96 * a2 - 88;
  v17 = 0.0;
  v18 = -4;
  do
  {
    v19 = v15;
    v20 = a5;
    if (a2 + v18 + 2 >= -1)
    {
      v19 = p_y;
      v20 = a6;
      if (a2 + v18 + 3 < a3)
      {
        v20 = (*(this + 6) + v16);
        v19 = &v20->y;
      }
    }

    x = v20->x;
    v22 = *v19;
    v23 = b(v18 + 2, a4);
    v13 = v13 + v23 * x;
    v12 = v12 + v23 * v22;
    v17 = v17 + v23;
    v16 += 96;
  }

  while (!__CFADD__(v18++, 1));
  return v13 / v17;
}

__n128 std::__split_buffer<_PKStrokePoint>::emplace_back<_PKStrokePoint const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * (&v4[-*a1] >> 5);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / -2;
    v8 = &v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5[96 * v7];
    a1[2] = &v8[v9];
  }

  v11 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  *(v4 + 4) = *(a2 + 64);
  *(v4 + 5) = v14;
  *(v4 + 2) = result;
  *(v4 + 3) = v13;
  a1[2] += 96;
  return result;
}

uint64_t PKStrokeInputProvider::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 8) _pointsCount];
  v6 = a3[1] - *a3;
  std::vector<_PKStrokePoint>::resize(a3, v5 - 0x5555555555555555 * (v6 >> 5));
  if (v5)
  {
    v7 = 0;
    v8 = (*a3 + v6);
    do
    {
      v9 = *(a1 + 8);
      if (v9)
      {
        [v9 decompressedPointAt:v7];
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
      }

      *v8 = v11;
      v8[1] = v12;
      v8[4] = v15;
      v8[5] = v16;
      v8[2] = v13;
      v8[3] = v14;
      ++v7;
      v8 += 6;
    }

    while (v5 != v7);
  }

  return [*(a1 + 8) _pointsCount];
}

void sub_1C7E24C28(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t drawingV1::StrokeID::StrokeID(uint64_t this)
{
  *this = &unk_1F47694C0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F47694C0;
  *(this + 32) = 0;
  return this;
}

void drawingV1::StrokeID::~StrokeID(drawingV1::StrokeID *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t drawingV1::StrokeID::StrokeID(uint64_t this, const drawingV1::StrokeID *a2)
{
  *this = &unk_1F47694C0;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 32) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t drawingV1::StrokeID::operator=(uint64_t a1, const drawingV1::StrokeID *a2)
{
  if (a1 != a2)
  {
    drawingV1::StrokeID::StrokeID(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t drawingV1::swap(uint64_t this, drawingV1::StrokeID *a2, drawingV1::StrokeID *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t drawingV1::StrokeID::StrokeID(uint64_t result, uint64_t a2)
{
  *result = &unk_1F47694C0;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_1F47694C0;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t drawingV1::StrokeID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F47694C0;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v10 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t drawingV1::StrokeID::formatText(drawingV1::StrokeID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "clock");
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "replicaIndex");
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "subclock");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::StrokeID::readFrom(drawingV1::StrokeID *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
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
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 32) |= 4u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v54 = 0;
          v55 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v56 = (v40 + v39);
          v57 = v3 - v39;
          v58 = v39 + 1;
          while (1)
          {
            if (!v57)
            {
              v43 = 0;
              *(a2 + 24) = 1;
              goto LABEL_84;
            }

            v59 = v58;
            v60 = *v56;
            *(a2 + 1) = v59;
            v43 |= (v60 & 0x7F) << v54;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            ++v56;
            --v57;
            v58 = v59 + 1;
            v14 = v55++ > 8;
            if (v14)
            {
              v43 = 0;
              goto LABEL_83;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
          }

LABEL_83:
          v3 = v59;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              v43 = 0;
              break;
            }
          }
        }

LABEL_84:
        *(this + 3) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 32) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = (v32 + v31);
          v50 = v3 - v31;
          v51 = v31 + 1;
          while (1)
          {
            if (!v50)
            {
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_80;
            }

            v52 = v51;
            v53 = *v49;
            *(a2 + 1) = v52;
            v35 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              v35 = 0;
              goto LABEL_79;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }

LABEL_79:
          v3 = v52;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              v35 = 0;
              break;
            }
          }
        }

LABEL_80:
        *(this + 2) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v61 = 0;
          v62 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v63 = (v24 + v23);
          v64 = v3 - v23;
          v65 = v23 + 1;
          while (1)
          {
            if (!v64)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_88;
            }

            v66 = v65;
            v67 = *v63;
            *(a2 + 1) = v66;
            v27 |= (v67 & 0x7F) << v61;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            ++v63;
            --v64;
            v65 = v66 + 1;
            v14 = v62++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_87;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_87:
          v3 = v66;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_88:
        *(this + 1) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v68 = 0;
          return v68 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
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
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_90:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t drawingV1::StrokeID::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return PB::Writer::writeVarInt(a2);
}

BOOL drawingV1::StrokeID::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 4) == 0;
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*(a2 + 32) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t drawingV1::StrokeID::hash_value(drawingV1::StrokeID *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 1);
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 2);
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

double drawingV1::Drawing::Drawing(drawingV1::Drawing *this)
{
  *this = &unk_1F4769510;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  return result;
}

{
  *this = &unk_1F4769510;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  return result;
}

void drawingV1::Drawing::~Drawing(void ***this)
{
  *this = &unk_1F4769510;
  v4 = (this + 14);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 13, 0);
  v4 = (this + 10);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 6);
  std::vector<PB::Data>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 3);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = this[1];
  this[1] = 0;
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  PB::Base::~Base(this);
}

{
  drawingV1::Drawing::~Drawing(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawingV1::Drawing *drawingV1::Drawing::Drawing(drawingV1::Drawing *this, const drawingV1::Drawing *a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0u;
  *(this + 7) = 0u;
  *this = &unk_1F4769510;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 6) = 0u;
  *(this + 124) = 0u;
  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 136))
  {
    v4 = *(a2 + 9);
    *(this + 136) |= 1u;
    *(this + 9) = v4;
  }

  if (this != a2)
  {
    std::vector<PB::Data>::__assign_with_size[abi:ne200100]<PB::Data*,PB::Data*>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
  }

  if (*(a2 + 14) != *(a2 + 15))
  {
    operator new();
  }

  if (*(a2 + 3) != *(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 10) != *(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Drawing::operator=(uint64_t a1, const drawingV1::Drawing *a2)
{
  if (a1 != a2)
  {
    drawingV1::Drawing::Drawing(v5, a2);
    drawingV1::swap(a1, v5, v3);
    drawingV1::Drawing::~Drawing(v5);
  }

  return a1;
}

uint64_t drawingV1::swap(uint64_t this, drawingV1::Drawing *a2, drawingV1::Drawing *a3)
{
  v3 = *(this + 136);
  *(this + 136) = *(a2 + 34);
  *(a2 + 34) = v3;
  v4 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v6;
  v8 = *(this + 64);
  v7 = *(this + 72);
  v9 = *(a2 + 9);
  *(this + 64) = *(a2 + 8);
  *(this + 72) = v9;
  *(a2 + 8) = v8;
  *(a2 + 9) = v7;
  v10 = *(this + 112);
  *(this + 112) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 120);
  *(this + 120) = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = *(this + 128);
  *(this + 128) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v13;
  v14 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v14;
  v15 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v15;
  v16 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v18;
  v19 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v19;
  v20 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v20;
  return this;
}

uint64_t drawingV1::Drawing::Drawing(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769510;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 112) = 0u;
  v6 = (a1 + 112);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  v7 = *(a2 + 104);
  *(a2 + 104) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 104), v7);
  *(a1 + 72) = *(a2 + 72);
  std::vector<PB::Data>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*v6)
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v6);
    operator delete(*v6);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
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
  if (*(a1 + 80))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v5);
    operator delete(*v5);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = *(a1 + 8);
  *(a1 + 8) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t drawingV1::Drawing::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawingV1::Drawing::Drawing(v5, a2);
    drawingV1::swap(a1, v5, v3);
    drawingV1::Drawing::~Drawing(v5);
  }

  return a1;
}

uint64_t drawingV1::Drawing::formatText(drawingV1::Drawing *this, PB::TextFormatter *a2, const char *a3)
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

  if (*(this + 136))
  {
    PB::TextFormatter::format(a2, "serializationVersion");
  }

  v12 = *(this + 10);
  v13 = *(this + 11);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "strokes");
  }

  if (*(this + 13))
  {
    PB::TextFormatter::format();
  }

  v15 = *(this + 14);
  v16 = *(this + 15);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "versionVector");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Drawing::readFrom(drawingV1::Drawing *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 8)
      {
        if (v22 == 9)
        {
          operator new();
        }

        if (v22 == 10)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 5)
        {
          PB::PtrVector<drawingV1::Stroke>::emplace_back<>();
        }

        if (v22 == 8)
        {
          operator new();
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        PB::PtrVector<drawingV1::StrokeID>::emplace_back<>();
      }

      if (v22 == 4)
      {
        PB::PtrVector<drawingV1::Ink>::emplace_back<>();
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 136) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v34 = 0;
          v35 = 0;
          v30 = 0;
          v36 = (v27 + v26);
          v18 = v25 >= v26;
          v37 = v25 - v26;
          if (!v18)
          {
            v37 = 0;
          }

          v38 = v26 + 1;
          while (1)
          {
            if (!v37)
            {
              v30 = 0;
              *(a2 + 24) = 1;
              goto LABEL_59;
            }

            v39 = *v36;
            *(a2 + 1) = v38;
            v30 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v36;
            --v37;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
LABEL_53:
              v30 = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            v30 = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_53;
            }
          }
        }

LABEL_59:
        *(this + 9) = v30;
        goto LABEL_60;
      }

      if (v22 == 2)
      {
        v23 = *(this + 7);
        if (v23 >= *(this + 8))
        {
          v24 = std::vector<PB::Data>::__emplace_back_slow_path<>(this + 48);
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          v24 = (v23 + 2);
        }

        *(this + 7) = v24;
        PB::Reader::read(a2, (v24 - 16));
        goto LABEL_60;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v41 = 0;
      return v41 & 1;
    }

LABEL_60:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t drawingV1::Drawing::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 136))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v4 = v3[6];
  v5 = v3[7];
  while (v4 != v5)
  {
    this = PB::Writer::write(a2, v4);
    v4 = (v4 + 16);
  }

  v6 = v3[14];
  v7 = v3[15];
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[3];
  v10 = v3[4];
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[10];
  v13 = v3[11];
  while (v12 != v13)
  {
    v14 = *v12++;
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = v3[1];
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = v3[13];
  if (v16)
  {
    this = PB::Writer::write(a2, v16);
  }

  v17 = v3[2];
  if (v17)
  {

    return PB::Writer::writeSubmessage(a2, v17);
  }

  return this;
}

uint64_t drawingV1::Drawing::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!v4 || (PB::Data::operator==() & 1) == 0 && *(a1 + 104) | *(a2 + 104))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (*(a2 + 136))
  {
    return 0;
  }

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

  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a2 + 112);
  if (v10 - v9 != *(a2 + 120) - v11)
  {
    return 0;
  }

  while (v9 != v10)
  {
    result = drawingV1::StrokeID::operator==(*v9, *v11);
    if (!result)
    {
      return result;
    }

    ++v9;
    ++v11;
  }

  v12 = *(a2 + 24);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (v13 - v14 != *(a2 + 32) - v12)
  {
    return 0;
  }

  while (v14 != v13)
  {
    result = drawingV1::Ink::operator==(*v14, *v12);
    if (!result)
    {
      return result;
    }

    ++v14;
    ++v12;
    v13 = *(a1 + 32);
  }

  result = PB::PtrVector<drawingV1::Stroke>::operator==((a1 + 80), *(a2 + 80), *(a2 + 88));
  if (result)
  {
    v15 = *(a1 + 8);
    v16 = *(a2 + 8);
    if (v15)
    {
      if (!v16 || !drawingV1::Rectangle::operator==(v15, v16))
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (!v16)
    {
LABEL_28:
      v17 = *(a1 + 16);
      v18 = *(a2 + 16);
      result = (v17 | v18) == 0;
      if (v17 && v18)
      {
        v19 = *(a1 + 16);

        return drawingV1::StrokeID::operator==(v19, v18);
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL PB::PtrVector<drawingV1::Stroke>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    result = drawingV1::Stroke::operator==(*v4, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 != a1[1]);
  return result;
}

unint64_t drawingV1::Drawing::hash_value(drawingV1::Drawing *this)
{
  if (*(this + 13))
  {
    v2 = PBHashBytes();
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 136))
  {
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v4 += 16;
      v6 ^= PBHashBytes();
    }

    while (v4 != v5);
  }

  v7 = *(this + 14);
  v8 = *(this + 15);
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      if (*(*v7 + 32))
      {
        v11 = v10[1];
        if ((*(*v7 + 32) & 2) == 0)
        {
LABEL_16:
          v12 = 0;
          if ((*(*v7 + 32) & 4) != 0)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v11 = 0;
        if ((*(*v7 + 32) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      v12 = v10[2];
      if ((*(*v7 + 32) & 4) != 0)
      {
LABEL_20:
        v13 = v10[3];
        goto LABEL_21;
      }

LABEL_17:
      v13 = 0;
LABEL_21:
      v9 ^= v11 ^ v12 ^ v13;
      v7 += 8;
      if (v7 == v8)
      {
        goto LABEL_24;
      }
    }
  }

  v9 = 0;
LABEL_24:
  v14 = *(this + 3);
  v15 = *(this + 4);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = *v14++;
      v16 ^= drawingV1::Ink::hash_value(v17);
    }

    while (v14 != v15);
  }

  v18 = *(this + 10);
  v19 = *(this + 11);
  if (v18 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = *v18++;
      v20 ^= drawingV1::Stroke::hash_value(v21);
    }

    while (v18 != v19);
  }

  v22 = *(this + 1);
  if (v22)
  {
    v22 = drawingV1::Rectangle::hash_value(v22);
  }

  v23 = *(this + 2);
  if (v23)
  {
    if (*(v23 + 32))
    {
      v24 = *(v23 + 8);
      if ((*(v23 + 32) & 2) != 0)
      {
LABEL_39:
        v25 = *(v23 + 16);
        if ((*(v23 + 32) & 4) != 0)
        {
LABEL_40:
          v26 = *(v23 + 24);
LABEL_44:
          v23 = v25 ^ v24 ^ v26;
          return v3 ^ v2 ^ v6 ^ v9 ^ v16 ^ v22 ^ v23 ^ v20;
        }

LABEL_43:
        v26 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v24 = 0;
      if ((*(v23 + 32) & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    v25 = 0;
    if ((*(v23 + 32) & 4) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  return v3 ^ v2 ^ v6 ^ v9 ^ v16 ^ v22 ^ v23 ^ v20;
}

uint64_t drawingV1::Drawing::makeBounds(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t drawingV1::Drawing::makeBoundsVersion(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Drawing::Drawing(uint64_t this)
{
  *this = &unk_1F4769560;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_1F4769560;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

void legacy_drawing::Drawing::~Drawing(legacy_drawing::Drawing *this)
{
  *this = &unk_1F4769560;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v4);
  PB::Base::~Base(this);
}

{
  legacy_drawing::Drawing::~Drawing(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t legacy_drawing::Drawing::Drawing(uint64_t this, const legacy_drawing::Drawing *a2)
{
  *this = &unk_1F4769560;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 48) = 0;
  if ((*(a2 + 64) & 4) != 0)
  {
    v2 = *(a2 + 15);
    *(this + 64) = 4;
    *(this + 60) = v2;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  v3 = *(a2 + 64);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 + 14);
    *(this + 64) |= 2u;
    *(this + 56) = v4;
    v3 = *(a2 + 64);
  }

  if (v3)
  {
    v5 = *(a2 + 4);
    *(this + 64) |= 1u;
    *(this + 32) = v5;
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Drawing::operator=(uint64_t a1, const legacy_drawing::Drawing *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Drawing::Drawing(v9, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    *&v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v6 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    legacy_drawing::Drawing::~Drawing(v9);
  }

  return a1;
}

double legacy_drawing::swap(legacy_drawing *this, legacy_drawing::Drawing *a2, legacy_drawing::Drawing *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v8) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v8;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  return result;
}

uint64_t legacy_drawing::Drawing::Drawing(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769560;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 60) = *(a2 + 60);
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*v4)
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a2 + 48) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t legacy_drawing::Drawing::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Drawing::Drawing(v9, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    *&v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v6 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    legacy_drawing::Drawing::~Drawing(v9);
  }

  return a1;
}

uint64_t legacy_drawing::Drawing::formatText(legacy_drawing::Drawing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "command");
  }

  v8 = *(this + 64);
  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "orientation");
    v8 = *(this + 64);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "orientationTimestamp", *(this + 4));
  if ((*(this + 64) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "serializationVersion");
  }

LABEL_7:
  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "timestamp");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "unrotatedBounds");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Drawing::readFrom(legacy_drawing::Drawing *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 64) |= 2u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v48 = 0;
            v49 = 0;
            v37 = 0;
            v50 = (v34 + v33);
            v18 = v32 >= v33;
            v51 = v32 - v33;
            if (!v18)
            {
              v51 = 0;
            }

            v52 = v33 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_71;
              }

              v53 = *v50;
              *(a2 + 1) = v52;
              v37 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              ++v50;
              --v51;
              ++v52;
              v14 = v49++ > 8;
              if (v14)
              {
LABEL_62:
                LODWORD(v37) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_71:
          *(this + 14) = v37;
          goto LABEL_72;
        case 5:
          *(this + 64) |= 1u;
          v41 = *(a2 + 1);
          if (v41 <= 0xFFFFFFFFFFFFFFF7 && v41 + 8 <= *(a2 + 2))
          {
            *(this + 4) = *(*a2 + v41);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_72;
        case 6:
          operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 64) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            v44 = (v25 + v24);
            v18 = v23 >= v24;
            v45 = v23 - v24;
            if (!v18)
            {
              v45 = 0;
            }

            v46 = v24 + 1;
            while (1)
            {
              if (!v45)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_68;
              }

              v47 = *v44;
              *(a2 + 1) = v46;
              v28 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v44;
              --v45;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
LABEL_54:
                LODWORD(v28) = 0;
                goto LABEL_68;
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
                goto LABEL_54;
              }
            }
          }

LABEL_68:
          *(this + 15) = v28;
          goto LABEL_72;
        case 2:
          operator new();
        case 3:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v55 = 0;
      return v55 & 1;
    }

LABEL_72:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t legacy_drawing::Drawing::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 64) & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 64);
  if ((v8 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v8 = *(v3 + 64);
  }

  if (v8)
  {
    this = PB::Writer::write(a2, *(v3 + 32));
  }

  v9 = *(v3 + 48);
  if (v9)
  {

    return PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

BOOL legacy_drawing::Drawing::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 64) & 4) != 0)
  {
    if ((*(a2 + 64) & 4) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 4) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (PB::PtrVector<legacy_drawing::VectorTimestampClock>::operator==((v4 + 8), v5 + 8))
    {
      goto LABEL_11;
    }

    v5 = *(a1 + 40) | *(a2 + 40);
  }

  if (v5)
  {
    return 0;
  }

LABEL_11:
  v6 = *(a2 + 8);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 - v8 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v8 != v7)
  {
    result = legacy_drawing::Command::operator==(*v8, *v6);
    if (!result)
    {
      return result;
    }

    ++v8;
    ++v6;
    v7 = *(a1 + 16);
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    if ((*(a2 + 64) & 2) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 64))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  result = (v10 | v11) == 0;
  if (v10 && v11)
  {
    v12 = *(a1 + 48);

    return legacy_drawing::Rectangle::operator==(v12, v11);
  }

  return result;
}

unint64_t legacy_drawing::Drawing::hash_value(legacy_drawing::Drawing *this)
{
  if ((*(this + 64) & 4) != 0)
  {
    v2 = *(this + 15);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 5);
  if (!v3 || (v4 = *(v3 + 8), v5 = *(v3 + 16), v4 == v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= legacy_drawing::VectorTimestampClock::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= legacy_drawing::Command::hash_value(v11);
    }

    while (v8 != v9);
  }

  if ((*(this + 64) & 2) == 0)
  {
    v12 = 0;
    if (*(this + 64))
    {
      goto LABEL_17;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v12 = *(this + 14);
  if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (*(this + 4) == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(this + 4);
  }

LABEL_22:
  v14 = *(this + 6);
  if (v14)
  {
    v14 = legacy_drawing::Rectangle::hash_value(v14);
  }

  return v6 ^ v2 ^ v12 ^ v13 ^ v14 ^ v10;
}

uint64_t legacy_drawing::Drawing::makeTimestamp(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t legacy_drawing::Drawing::makeUnrotatedBounds(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::Command>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<legacy_drawing::Command>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double PKPaletteToolsContainerMinimumWidth()
{
  v0 = PKIsVisionDevice();
  result = 372.0;
  if (v0)
  {
    return 534.0;
  }

  return result;
}

double PKPaletteToolsContainerMaximumWidth(int a1)
{
  if (PKIsVisionDevice())
  {
    v2 = !PKIsVisionDevice();
    result = 372.0;
    v4 = 534.0;
  }

  else
  {
    v2 = a1 == 0;
    result = 394.0;
    v4 = 268.0;
  }

  if (!v2)
  {
    return v4;
  }

  return result;
}

double PKPaletteToolsInterItemSpacing(uint64_t a1)
{
  result = 10.0;
  if (a1 < 8)
  {
    return 12.0;
  }

  return result;
}

double PKPaletteToolsInterItemSpacingInCompactSize(uint64_t a1, int a2)
{
  result = 5.0;
  v3 = 2.0;
  if (!a2)
  {
    v3 = 5.0;
  }

  if (a1 >= 8)
  {
    return v3;
  }

  return result;
}

double PKPaletteButtonSize(int a1)
{
  result = 36.0;
  if (a1)
  {
    return 28.0;
  }

  return result;
}

double PKPaletteDragHandleSize(int a1)
{
  if (a1)
  {
    return 6.0;
  }

  else
  {
    return 40.0;
  }
}

double PKPaletteColorSwatchSize(int a1)
{
  result = 36.0;
  if (a1)
  {
    return 28.0;
  }

  return result;
}

double PKPaletteColorSwatchesSize(int a1)
{
  if (a1)
  {
    return 84.0;
  }

  else
  {
    return 132.0;
  }
}

double PKPaletteToolPickerMagicPocketThickness(int a1)
{
  result = 26.0;
  if (a1)
  {
    return 22.0;
  }

  return result;
}

void *legacy_drawing::VectorTimestamp::VectorTimestamp(void *this)
{
  *this = &unk_1F47695B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F47695B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void legacy_drawing::VectorTimestamp::~VectorTimestamp(legacy_drawing::VectorTimestamp *this)
{
  *this = &unk_1F47695B0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F47695B0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F47695B0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x1CCA6ECB0]();
}

void *legacy_drawing::VectorTimestamp::VectorTimestamp(void *this, const legacy_drawing::VectorTimestamp *a2)
{
  this[1] = 0;
  *this = &unk_1F47695B0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 1) != *(a2 + 2))
  {
    PB::PtrVector<legacy_drawing::VectorTimestampClock>::emplace_back<legacy_drawing::VectorTimestampClock const&>();
  }

  return this;
}

uint64_t legacy_drawing::VectorTimestamp::operator=(uint64_t a1, const legacy_drawing::VectorTimestamp *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::VectorTimestamp::VectorTimestamp(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F47695B0;
    v9 = &v7;
    std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *legacy_drawing::swap(void *this, legacy_drawing::VectorTimestamp *a2, legacy_drawing::VectorTimestamp *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t legacy_drawing::VectorTimestamp::VectorTimestamp(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F47695B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_1F47695B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t legacy_drawing::VectorTimestamp::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F47695B0;
    v10 = 0uLL;
    v11 = 0;
    std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_1F47695B0;
    std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t legacy_drawing::VectorTimestamp::formatText(legacy_drawing::VectorTimestamp *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "clock");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::VectorTimestamp::readFrom(legacy_drawing::VectorTimestamp *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        PB::PtrVector<legacy_drawing::VectorTimestampClock>::emplace_back<>();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t legacy_drawing::VectorTimestamp::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL PB::PtrVector<legacy_drawing::VectorTimestampClock>::operator==(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = legacy_drawing::VectorTimestampClock::operator==(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

uint64_t legacy_drawing::VectorTimestamp::hash_value(legacy_drawing::VectorTimestamp *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= legacy_drawing::VectorTimestampClock::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t legacy_drawing::Point::Point(uint64_t this)
{
  *this = &unk_1F4769660;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_1F4769660;
  *(this + 36) = 0;
  return this;
}

void legacy_drawing::Point::~Point(legacy_drawing::Point *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float legacy_drawing::Point::Point(legacy_drawing::Point *this, const legacy_drawing::Point *a2)
{
  *this = &unk_1F4769660;
  *(this + 9) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 7);
    v3 = 32;
    *(this + 36) = 32;
    *(this + 7) = result;
    v2 = *(a2 + 36);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 36) & 0x40) != 0)
  {
LABEL_5:
    result = *(a2 + 8);
    v3 |= 0x40u;
    *(this + 36) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 36) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 36);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 36) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 36);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 36);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    result = *(a2 + 2);
    *(this + 36) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

LABEL_15:
  result = *(a2 + 4);
  v3 |= 4u;
  *(this + 36) = v3;
  *(this + 4) = result;
  if (*(a2 + 36))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t legacy_drawing::Point::operator=(uint64_t a1, const legacy_drawing::Point *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Point::Point(v8, a2);
    v3 = *(a1 + 36);
    *(a1 + 36) = v12;
    v12 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float legacy_drawing::swap(legacy_drawing *this, legacy_drawing::Point *a2, legacy_drawing::Point *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float legacy_drawing::Point::Point(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769660;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4769660;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t legacy_drawing::Point::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F4769660;
    v3 = *(a2 + 36);
    *(a2 + 36) = 0;
    v4 = *(a2 + 32);
    v13 = *(a1 + 36);
    v12 = *(a1 + 32);
    v11 = *(a1 + 24);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = *(a2 + 24);
    *(a1 + 36) = v3;
    *(a1 + 32) = v4;
    *(a1 + 24) = v7;
    *(a1 + 8) = v6;
    v10 = v5;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t legacy_drawing::Point::formatText(legacy_drawing::Point *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "aspectRatio", *(this + 2));
    v5 = *(this + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "azimuth", *(this + 3));
  v5 = *(this + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "edgeWidth", *(this + 4));
  v5 = *(this + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "opacity", *(this + 5));
  v5 = *(this + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "radius", *(this + 6));
  v5 = *(this + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "x", *(this + 7));
  if ((*(this + 36) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "y", *(this + 8));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Point::readFrom(legacy_drawing::Point *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 36) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_49:
            *(a2 + 24) = 1;
            goto LABEL_52;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_51;
        case 2:
          *(this + 36) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_51;
        case 3:
          *(this + 36) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_51;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 36) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 7)
      {
        *(this + 36) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_51;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 36) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 5)
      {
        *(this + 36) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_51:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_52;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_52:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t legacy_drawing::Point::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 28));
    v4 = *(v3 + 36);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 36);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 36) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL legacy_drawing::Point::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 36) & 0x20) != 0)
  {
    if ((*(a2 + 36) & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x40) != 0)
  {
    if ((*(a2 + 36) & 0x40) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 0x10) != 0)
  {
    if ((*(a2 + 36) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 8) != 0)
  {
    if ((*(a2 + 36) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 1) == 0;
  if (*(a1 + 36))
  {
    return (*(a2 + 36) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t legacy_drawing::Point::hash_value(legacy_drawing::Point *this)
{
  if ((*(this + 36) & 0x20) == 0)
  {
    v1 = 0;
    if ((*(this + 36) & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = 0;
    if ((*(this + 36) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v5 = 0;
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v7 = 0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v9 = 0;
    if ((*(this + 36) & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v14 = *(this + 7);
  v1 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 36) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v2 = *(this + 8);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 36) & 0x10) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v8 = *(this + 3);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 36) & 4) != 0)
  {
LABEL_15:
    v10 = *(this + 4);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if (*(this + 36))
    {
      goto LABEL_18;
    }

LABEL_29:
    v13 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
  }

LABEL_28:
  v11 = 0;
  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = *(this + 2);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
}

void sub_1C7E330BC(_Unwind_Exception *a1)
{
  v3 = v2;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1C7E338B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7E339BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1C7E33A60(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C7E34160(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7E3D0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E3D9F8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C7E3DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKSelectionController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7E3F45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v15 + 48));

  _Unwind_Resume(a1);
}

void sub_1C7E3F668(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7E411E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, void *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C7E44AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E45094(_Unwind_Exception *a1)
{
  v7 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7E45440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E45D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1C7E4618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E4645C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v22 = v19;

  _Unwind_Resume(a1);
}

void sub_1C7E490F8(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1C7E49270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E495D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v25 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E4A468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E4CA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E4DA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E4DBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E4DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7E4E2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v14;

  _Unwind_Resume(a1);
}

void sub_1C7E4EACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E4F400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_1C7E4F5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_1C7E500C4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7E50B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id getLTUITranslationViewControllerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLTUITranslationViewControllerClass(void)::softClass;
  v7 = getLTUITranslationViewControllerClass(void)::softClass;
  if (!getLTUITranslationViewControllerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL37getLTUITranslationViewControllerClassv_block_invoke;
    v3[3] = &unk_1E82D97A8;
    v3[4] = &v4;
    ___ZL37getLTUITranslationViewControllerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7E50C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}