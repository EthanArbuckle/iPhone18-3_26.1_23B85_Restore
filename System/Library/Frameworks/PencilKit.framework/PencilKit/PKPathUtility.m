@interface PKPathUtility
+ (BOOL)edge:(Edge)a3 intersectsEdge:(Edge)a4;
+ (BOOL)edgeSet:(const void *)a3 containsEdge:(Edge)a4;
+ (BOOL)newEdgeWithPoint:(CGPoint)a3 betweenEdge:(Edge)a4 intersectsOtherEdgesInHull:(const void *)a5;
+ (BOOL)vector:(const void *)a3 containsPoint:(CGPoint)a4;
+ (CGPoint)pointWithMinAngleForEdge:(Edge)a3 fromPoints:(const void *)a4 minAngle:(double *)a5;
+ (CGRect)boundingBoxOfPoints:(const void *)a3 rotatedAroundPoint:(CGPoint)a4 byAngle:(double)a5;
+ (Edge)longestEdgeInHull:(const void *)a3 atIndex:(int *)a4 visitedEdges:(const void *)a5;
+ (double)averageDistanceForEdge:(Edge)a3 withPoints:(const void *)a4;
+ (id)bezierPathFromPoints:(const void *)a3;
+ (vector<CGPoint,)centripetalCatmullRomPointsFromConvexHull:(id)a2 alpha:(SEL)a3 granularity:(const void *)a4;
+ (vector<CGPoint,)smoothedHullForPoints:(id)a2 alpha:(SEL)a3 granularity:(const void *)a4 minAngleFactor:(double)a5 maxLengthThreshold:(double)a6 edgeRemovalConstant:(double)a7;
+ (vector<CGPoint,)unorderedSimplifiedPointsFromPoints:(id)a2 factor:(SEL)a3;
+ (void)convexHull:(void *)a3 forPoints:(const void *)a4;
+ (void)openConvexHullToConcave:(void *)a3 points:(const void *)a4 minAngleFactor:(double)a5 maxLengthThreshold:(double)a6 edgeRemovalConstant:(double)a7;
+ (void)smoothedHullForPoints:(const void *)a3 completion:(id)a4;
@end

@implementation PKPathUtility

+ (vector<CGPoint,)unorderedSimplifiedPointsFromPoints:(id)a2 factor:(SEL)a3
{
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  std::vector<CGPoint>::reserve(retstr, (*(a4 + 1) - *a4) >> 4);
  v7 = *a4;
  v8 = *(a4 + 1);
  if (*a4 != v8)
  {
    v23 = vdupq_lane_s64(*&a5, 0);
LABEL_3:
    v27 = *v7;
    v25 = vrndmq_f64(vdivq_f64(v27, v23));
    v26 = v25;
    v9 = PKHashBytes(&v26, 16);
    if (!*(&v28[0] + 1))
    {
      goto LABEL_42;
    }

    v10 = vcnt_s8(*(v28 + 8));
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      v12 = v25;
      if (v9 >= *(&v28[0] + 1))
      {
        v11 = v9 % DWORD2(v28[0]);
      }
    }

    else
    {
      v11 = (*(&v28[0] + 1) + 0xFFFFFFFFLL) & v9;
      v12 = v25;
    }

    v13 = *(*&v28[0] + 8 * v11);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_23:
      if (v10.u32[0] > 1uLL)
      {
        v17 = v9;
        if (v9 >= *(&v28[0] + 1))
        {
          v17 = v9 % *(&v28[0] + 1);
        }
      }

      else
      {
        v17 = (*(&v28[0] + 1) + 0xFFFFFFFFLL) & v9;
      }

      v18 = *(*&v28[0] + 8 * v17);
      if (v18)
      {
        for (i = *v18; i; i = *i)
        {
          v20 = *(i + 1);
          if (v20 == v9)
          {
            if (i[2] == v12.f64[0] && i[3] == v12.f64[1])
            {
              std::vector<CGPoint>::push_back[abi:ne200100](retstr, &v27);
              goto LABEL_43;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v20 >= *(&v28[0] + 1))
              {
                v20 %= *(&v28[0] + 1);
              }
            }

            else
            {
              v20 &= *(&v28[0] + 1) - 1;
            }

            if (v20 != v17)
            {
              break;
            }
          }
        }
      }

LABEL_42:
      operator new();
    }

    while (1)
    {
      v15 = *(v14 + 1);
      if (v15 == v9)
      {
        if (v14[2] == v12.f64[0] && v14[3] == v12.f64[1])
        {
LABEL_43:
          if (++v7 == v8)
          {
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v10.u32[0] > 1uLL)
        {
          if (v15 >= *(&v28[0] + 1))
          {
            v15 %= *(&v28[0] + 1);
          }
        }

        else
        {
          v15 &= *(&v28[0] + 1) - 1;
        }

        if (v15 != v11)
        {
          goto LABEL_23;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }
}

+ (void)smoothedHullForPoints:(const void *)a3 completion:(id)a4
{
  v6 = a4;
  if (*a3 == *(a3 + 1))
  {
    v8 = [MEMORY[0x1E69DC728] bezierPath];
    v6[2](v6, v8);
  }

  else
  {
    [a1 smoothedHullForPoints:a3 alpha:0.5 granularity:100.0 minAngleFactor:1.57079633 maxLengthThreshold:5.0 edgeRemovalConstant:0.3];
    v7 = [a1 bezierPathFromPoints:__p];
    v6[2](v6, v7);

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

+ (id)bezierPathFromPoints:(const void *)a3
{
  if (*(a3 + 1) - *a3 < 0x11uLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC728] bezierPath];
    [v4 moveToPoint:{**a3, *(*a3 + 8)}];
    v5 = *a3;
    if (*(a3 + 1) - *a3 >= 0x11uLL)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        [v4 addLineToPoint:{v5[v6 + 2], v5[v6 + 3]}];
        ++v7;
        v5 = *a3;
        v6 += 2;
      }

      while (v7 < (*(a3 + 1) - *a3) >> 4);
    }

    [v4 closePath];
  }

  return v4;
}

+ (vector<CGPoint,)smoothedHullForPoints:(id)a2 alpha:(SEL)a3 granularity:(const void *)a4 minAngleFactor:(double)a5 maxLengthThreshold:(double)a6 edgeRemovalConstant:(double)a7
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  [PKPathUtility convexHull:&__p forPoints:a4];
  [a2 openConvexHullToConcave:&__p points:a4 minAngleFactor:a7 maxLengthThreshold:a8 edgeRemovalConstant:a9];
  [a2 centripetalCatmullRomPointsFromConvexHull:&__p alpha:a5 granularity:a6];
  result = __p;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return result;
}

+ (void)convexHull:(void *)a3 forPoints:(const void *)a4
{
  *(a3 + 1) = *a3;
  v6 = *a4;
  v7 = *(a4 + 1);
  v8 = &v7[-*a4] >> 4;
  if (v8 > 2)
  {
    __p = 0;
    v45 = 0;
    v46 = 0;
    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, v6, v7, v8);
    v9 = *MEMORY[0x1E695EFF8];
    v43 = *MEMORY[0x1E695EFF8];
    v10 = __p;
    v11 = 0;
    if (v45 != __p)
    {
      v12 = 0;
      v13 = (v45 - __p) >> 4;
      v9.n128_u64[0] = v43;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = -1.79769313e308;
      do
      {
        v15 = *(__p + v11);
        v16 = *(__p + 2 * v11 + 1);
        if (v16 > v14 || (v16 == v14 ? (v17 = *&v15 < v9.n128_f64[0]) : (v17 = 0), v16 = v14, v17))
        {
          v43 = *(__p + v11);
          v9.n128_u64[0] = v15;
          v12 = v11;
          v14 = v16;
        }

        ++v11;
      }

      while (v13 != v11);
      v11 = 16 * v12;
    }

    v18 = __p + v11;
    v19 = __p + v11 + 16;
    v20 = v45 - v19;
    if (v45 != v19)
    {
      memmove(__p + v11, v19, v45 - v19);
      v10 = __p;
    }

    v45 = &v18[v20];
    v21 = &v18[v20] - v10;
    if (&v18[v20] != v10)
    {
      if (!((v21 >> 4) >> 59))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PolarPoint>>(v21 >> 4);
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    if (v10 < &v18[v20])
    {
      atan2(v10[1] - *(&v43 + 1), *v10 - *&v43);
      std::__allocate_at_least[abi:ne200100]<std::allocator<PolarPoint>>(1uLL);
    }

    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(0, 0, 0, 0, 0, v9);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<CGPoint>::reserve(&v40, (v45 - __p) >> 4);
    std::vector<CGPoint>::push_back[abi:ne200100](&v40, &v43);
    v23 = __p;
    v22 = v45;
    if (v45 - __p != 16)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v39 = *&v23[v24];
        if (fabs((*(&v39 + 1) - *(&v43 + 1)) * (*&v23[v24 + 16] - *&v39) - (*&v39 - *&v43) * (*&v23[v24 + 24] - *(&v39 + 1))) >= 0.000001)
        {
          std::vector<CGPoint>::push_back[abi:ne200100](&v40, &v39);
          v23 = __p;
          v22 = v45;
        }

        ++v25;
        v24 += 16;
      }

      while (((v22 - v23) >> 4) - 1 > v25);
    }

    v39 = *(v22 - 1);
    std::vector<CGPoint>::push_back[abi:ne200100](&v40, &v39);
    v26 = v40;
    v27 = (v41 - v40) >> 4;
    if (v27 > 2)
    {
      std::vector<CGPoint>::reserve(a3, (v41 - v40) >> 4);
      std::vector<CGPoint>::push_back[abi:ne200100](a3, &v43);
      std::vector<CGPoint>::push_back[abi:ne200100](a3, v40 + 1);
      std::vector<CGPoint>::push_back[abi:ne200100](a3, v40 + 2);
      v26 = v40;
      if ((v41 - v40) >= 0x31)
      {
        v28 = 3;
        do
        {
          v29 = *(a3 + 1);
          v30 = &v26[16 * v28];
          v31 = *v30;
          v32 = v30[1];
          v33 = v29 - *a3;
          v34 = v29 - 16;
          v35 = *a3 - 32;
          while (1)
          {
            v36 = (*(v35 + v33 + 24) - *(v35 + v33 + 8)) * (v31 - *(v35 + v33 + 16)) - (*(v35 + v33 + 16) - *(v35 + v33)) * (v32 - *(v35 + v33 + 24));
            v37 = fabs(v36);
            v38 = v36 > 0.0 || v37 < 0.000001;
            if (!v38 || v33 < 0x21)
            {
              break;
            }

            *(a3 + 1) = v34;
            v33 -= 16;
            v34 -= 16;
          }

          std::vector<CGPoint>::push_back[abi:ne200100](a3, v30);
          ++v28;
          v26 = v40;
        }

        while (v28 < (v41 - v40) >> 4);
      }
    }

    else if (&v40 != a3)
    {
      std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(a3, v40, v41, v27);
      v26 = v40;
    }

    if (v26)
    {
      v41 = v26;
      operator delete(v26);
    }

    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }
  }

  else if (a3 != a4)
  {

    std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(a3, v6, v7, v8);
  }
}

+ (vector<CGPoint,)centripetalCatmullRomPointsFromConvexHull:(id)a2 alpha:(SEL)a3 granularity:(const void *)a4
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  std::vector<CGPoint>::reserve(retstr, 0);
  v72 = **a4;
  std::vector<CGPoint>::push_back[abi:ne200100](retstr, &v72);
  v11 = *a4;
  v10 = *(a4 + 1);
  if (v10 != *a4)
  {
    v12 = 0;
    v13 = (v10 - *a4) >> 4;
    v15 = *(&v72 + 1);
    v14 = *&v72;
    v16 = a5;
    v17 = 0.0;
    v57 = v16;
    do
    {
      v59 = v15;
      v60 = v14;
      v18 = v17;
      v19 = v12 + 2;
      v20 = v12 % v13;
      if (v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = v13;
      }

      ++v12;
      v22 = &v11[v21];
      v23 = &v11[v20];
      v24 = *v23;
      v25 = v23[1];
      v26 = &v11[v12 % v13];
      v27 = *v26;
      v28 = v26[1];
      v29 = &v11[v19 % v13];
      v69 = *(v22 - 1);
      v70 = *(v22 - 2);
      v67 = v25;
      v68 = v24;
      v30 = sqrt((v28 - v25) * (v28 - v25) + (v27 - v24) * (v27 - v24));
      v65 = v28;
      v66 = *v26;
      v63 = v29[1];
      v64 = *v29;
      v31 = sqrt((v63 - v28) * (v63 - v28) + (v64 - v27) * (v64 - v27));
      v32 = sqrt((v25 - v69) * (v25 - v69) + (v24 - v70) * (v24 - v70));
      v17 = v17 + powf(v32, v16);
      v33 = v30;
      v34 = v17 + powf(v33, v16);
      v35 = v31;
      v36 = powf(v35, v16);
      if (v17 >= v34)
      {
        v15 = v59;
        v14 = v60;
      }

      else
      {
        v37 = v34 + v36;
        v38 = v17 - v18;
        v39 = v34 - v17;
        v40 = v37 - v34;
        v61 = v37;
        v62 = v18;
        v41 = v34 - v18;
        v42 = v37 - v17;
        v43 = v17;
        v15 = v59;
        v14 = v60;
        do
        {
          v44 = (v17 - v43) / v38;
          v45 = (v43 - v62) / v38;
          v46 = v70 * v44 + v68 * v45;
          v47 = v69 * v44 + v67 * v45;
          v48 = (v34 - v43) / v39;
          v49 = (v43 - v17) / v39;
          v50 = (v61 - v43) / v40;
          v51 = (v43 - v34) / v40;
          v52 = (v34 - v43) / v41;
          v53 = (v43 - v62) / v41;
          v54 = (v61 - v43) / v42;
          v55 = (v43 - v17) / v42;
          v56 = v48 * (v52 * v47 + v53 * (v67 * v48 + v65 * v49)) + v49 * (v54 * (v67 * v48 + v65 * v49) + v55 * (v65 * v50 + v63 * v51));
          *&v71 = v48 * (v52 * v46 + v53 * (v68 * v48 + v66 * v49)) + v49 * (v54 * (v68 * v48 + v66 * v49) + v55 * (v66 * v50 + v64 * v51));
          *(&v71 + 1) = v56;
          if (floor(v14) != floor(*&v71) || floor(v15) != floor(v56))
          {
            std::vector<CGPoint>::push_back[abi:ne200100](retstr, &v71);
            v15 = *(&v71 + 1);
            v14 = *&v71;
          }

          v43 = (v34 - v17) / a6 + v43;
        }

        while (v43 < v34);
        v11 = *a4;
        v10 = *(a4 + 1);
        v16 = v57;
      }
    }

    while (v12 < (v10 - v11) >> 4);
  }

  return result;
}

+ (double)averageDistanceForEdge:(Edge)a3 withPoints:(const void *)a4
{
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 == v5)
  {
    return NAN;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = v4[1];
    if (*v4 != a3.var0.x || v8 != a3.var0.y)
    {
      v10 = sqrt((a3.var0.y - v8) * (a3.var0.y - v8) + (a3.var0.x - *v4) * (a3.var0.x - *v4));
      if (v10 < 150.0)
      {
        ++v6;
        v7 = v7 + v10;
      }
    }

    v4 += 2;
  }

  while (v4 != v5);
  return v7 / v6;
}

+ (CGPoint)pointWithMinAngleForEdge:(Edge)a3 fromPoints:(const void *)a4 minAngle:(double *)a5
{
  v7 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = *(a4 + 1) - *a4;
  if (v8)
  {
    v9 = v8 >> 4;
    v10 = 1.0 / sqrt((a3.var0.y - a3.var1.y) * (a3.var0.y - a3.var1.y) + (a3.var0.x - a3.var1.x) * (a3.var0.x - a3.var1.x));
    v26 = (a3.var0.y - a3.var1.y) * v10;
    v27 = (a3.var0.x - a3.var1.x) * v10;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    v12 = (*a4 + 8);
    v13 = 1.79769313e308;
    do
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v16 = a3.var0.y - *v12;
      v17 = 1.0 / sqrt(v16 * v16 + (a3.var0.x - v15) * (a3.var0.x - v15));
      v18 = (a3.var0.x - v15) * v17;
      v19 = v16 * v17;
      v20 = *v12 - a3.var1.y;
      v21 = 1.0 / sqrt(v20 * v20 + (v15 - a3.var1.x) * (v15 - a3.var1.x));
      v29 = v20 * v21;
      v30 = (v15 - a3.var1.x) * v21;
      v22 = acos(v26 * v19 + v18 * v27);
      v23 = acos(v19 * v29 + v18 * v30);
      if (v22 > v23)
      {
        v23 = v22;
      }

      if (v23 < v13)
      {
        v13 = v23;
        v7 = v15;
        v6 = v14;
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = 1.79769313e308;
  }

  *a5 = v13;
  v24 = v7;
  v25 = v6;
  result.y = v25;
  result.x = v24;
  return result;
}

+ (Edge)longestEdgeInHull:(const void *)a3 atIndex:(int *)a4 visitedEdges:(const void *)a5
{
  v5 = *a3;
  v6 = *(a3 + 1);
  v8 = **a3;
  v7 = *(*a3 + 8);
  v9 = v6 - *a3;
  v11 = *(v6 - 16);
  v10 = *(v6 - 8);
  *a4 = (v9 >> 4) - 1;
  v29 = v10;
  if (v9 == 32)
  {
    v12 = v7;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v12 = v7;
    v19 = sqrt((v7 - v10) * (v7 - v10) + (v8 - v11) * (v8 - v11));
    do
    {
      v20 = &v5[v17];
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      if (([a1 edgeSet:a5 containsEdge:{*v20, v22, v23, v24}] & 1) == 0 && sqrt((v22 - v24) * (v22 - v24) + (v21 - v23) * (v21 - v23)) > v19)
      {
        *a4 = v18;
        v29 = v24;
        v11 = v23;
        v12 = v22;
        v8 = v21;
      }

      ++v18;
      v5 = *a3;
      v17 += 2;
    }

    while (((*(a3 + 1) - *a3) >> 4) - 2 > v18);
  }

  v25 = v8;
  v26 = v12;
  v27 = v11;
  v28 = v29;
  result.var1.y = v28;
  result.var1.x = v27;
  result.var0.y = v26;
  result.var0.x = v25;
  return result;
}

+ (void)openConvexHullToConcave:(void *)a3 points:(const void *)a4 minAngleFactor:(double)a5 maxLengthThreshold:(double)a6 edgeRemovalConstant:(double)a7
{
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  [PKPathUtility longestEdgeInHull:a3 atIndex:&v37 visitedEdges:v35];
  while (1)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v34[0] = v12;
    v34[1] = v13;
    v34[2] = v14;
    v34[3] = v15;
    if (sqrt((v13 - v15) * (v13 - v15) + (v12 - v14) * (v12 - v14)) <= a6 || [PKPathUtility edgeSet:v35 containsEdge:v12, v13, v14, v15])
    {
      break;
    }

    [PKPathUtility averageDistanceForEdge:a4 withPoints:v16, v17, v18, v19];
    if (sqrt((v17 - v19) * (v17 - v19) + (v16 - v18) * (v16 - v18)) <= v20 * a7 || (v33 = 0.0, v32 = 0uLL, [PKPathUtility pointWithMinAngleForEdge:a4 fromPoints:&v33 minAngle:v16, v17, v18, v19], v32.n128_u64[0] = v21, v32.n128_u64[1] = v22, v33 >= a5) || [PKPathUtility vector:a3 containsPoint:?]|| [PKPathUtility newEdgeWithPoint:a3 betweenEdge:v32.n128_f64[0] intersectsOtherEdgesInHull:v32.n128_f64[1], v16, v17, v18, v19])
    {
    }

    else
    {
      std::vector<CGPoint>::insert(a3, (*a3 + 16 * v37 + 16), &v32);
    }

    [PKPathUtility longestEdgeInHull:a3 atIndex:&v37 visitedEdges:v35];
  }

  v23 = *a3;
  v24 = *(a3 + 1);
  if ((v24 - *a3) >= 0x11)
  {
    v25 = 0;
    v26 = 1;
    v27 = 1;
    do
    {
      v28 = vmovn_s64(vceqq_f64(vrndmq_f64(*(v23 + 16 * v25)), vrndmq_f64(*(v23 + 16 * v26))));
      if (v28.i32[0] & v28.i32[1])
      {
        v29 = v23 + 16 * v25;
        v30 = v29 + 16;
        v31 = v24 - (v29 + 32);
        if (v24 != v29 + 32)
        {
          memmove((v29 + 16), (v29 + 32), v24 - (v29 + 32));
          v23 = *a3;
        }

        v24 = v30 + v31;
        *(a3 + 1) = v30 + v31;
      }

      else
      {
        v25 = v27;
      }

      v27 = v25 + 1;
      v26 = v25 + 1;
    }

    while (v26 < (v24 - v23) >> 4);
  }
}

+ (BOOL)newEdgeWithPoint:(CGPoint)a3 betweenEdge:(Edge)a4 intersectsOtherEdgesInHull:(const void *)a5
{
  x = a4.var1.x;
  v6 = *a5;
  v5 = *(a5 + 1);
  if (v5 - *a5 == 16)
  {
    return 0;
  }

  y = a4.var1.y;
  v9 = a4.var0.y;
  v10 = a4.var0.x;
  v11 = a3.y;
  v12 = a3.x;
  v13 = 0;
  v14 = 0;
  v28 = a4.var1.y;
  while (1)
  {
    v15 = v6 + v13;
    v16 = *(v6 + v13);
    v17 = *(v6 + v13 + 8);
    if (v16 == v10 && v17 == v9)
    {
      goto LABEL_22;
    }

    v19 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (v19 == x && v20 == y)
    {
      goto LABEL_22;
    }

    if (v19 == v10 && v20 == v9)
    {
      goto LABEL_22;
    }

    if (v16 == x && v17 == y)
    {
      goto LABEL_22;
    }

    v24 = v11;
    if ([PKPathUtility edge:v10 intersectsEdge:v9, v12])
    {
      return 1;
    }

    v25 = v24;
    y = v28;
    if ([PKPathUtility edge:v12 intersectsEdge:v25, x, v28, v16, v17, v19, v20])
    {
      return 1;
    }

    v6 = *a5;
    v5 = *(a5 + 1);
    v12 = a3.x;
    v11 = a3.y;
LABEL_22:
    ++v14;
    v13 += 16;
    if (((v5 - v6) >> 4) - 1 <= v14)
    {
      return 0;
    }
  }
}

+ (BOOL)edge:(Edge)a3 intersectsEdge:(Edge)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v9 = a3;
  v8 = a4;
  return DKDIntersectionOfLines(&v9.var0.x, &v8.var0.x, &v6, &v7, v5, 0, 0);
}

+ (BOOL)vector:(const void *)a3 containsPoint:(CGPoint)a4
{
  v4 = *a3;
  v5 = *(a3 + 1) - *a3;
  if (!v5)
  {
    return 0;
  }

  v6 = v5 >> 4;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (*v4 == a4.x && v4[1] == a4.y)
  {
    return 1;
  }

  v9 = v4 + 3;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v7 == v10)
    {
      break;
    }

    v12 = *(v9 - 1);
    v13 = *v9;
    ++v10;
    v9 += 2;
  }

  while (v12 != a4.x || v13 != a4.y);
  return v6 > v11;
}

+ (BOOL)edgeSet:(const void *)a3 containsEdge:(Edge)a4
{
  y = a4.var1.y;
  x = a4.var1.x;
  v6 = a4.var0.y;
  v7 = a4.var0.x;
  v19 = a4;
  v9 = PKHashBytes(&v19, 32);
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v9 >= *&v10 ? v9 % v10.i32[0] : v9;
    }

    else
    {
      v12 = (*&v10 + 0xFFFFFFFFLL) & v9;
    }

    v13 = *(*a3 + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v9 == v15)
        {
          if (i[2] == v7 && i[3] == v6 && i[4] == x && i[5] == y)
          {
            return 1;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= *&v10)
            {
              v15 %= *&v10;
            }
          }

          else
          {
            v15 &= *&v10 - 1;
          }

          if (v15 != v12)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

+ (CGRect)boundingBoxOfPoints:(const void *)a3 rotatedAroundPoint:(CGPoint)a4 byAngle:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = __sincosf_stret(v8);
  v10 = *(a3 + 1) - *a3;
  if (v10)
  {
    cosval = v9.__cosval;
    sinval = v9.__sinval;
    v13 = v10 >> 4;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (*a3 + 8);
    v15 = 1.79769313e308;
    v16 = -1.79769313e308;
    v17 = -1.79769313e308;
    v18 = 1.79769313e308;
    do
    {
      v19 = *(v14 - 1) - x;
      v20 = *v14 - y;
      v21 = x + cosval * v19 - v20 * sinval;
      v22 = y + v20 * cosval + sinval * v19;
      if (v21 < v18)
      {
        v18 = v21;
      }

      if (v21 > v17)
      {
        v17 = v21;
      }

      if (v22 < v15)
      {
        v15 = v22;
      }

      if (v22 > v16)
      {
        v16 = v22;
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v17 = -1.79769313e308;
    v18 = 1.79769313e308;
    v15 = 1.79769313e308;
    v16 = -1.79769313e308;
  }

  v23 = v17 - v18;
  v24 = v16 - v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v15;
  result.origin.x = v18;
  return result;
}

@end