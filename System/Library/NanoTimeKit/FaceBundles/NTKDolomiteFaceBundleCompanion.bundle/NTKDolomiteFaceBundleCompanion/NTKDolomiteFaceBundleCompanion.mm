void sub_1230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) setFill];
  v13 = [v3 CGContext];

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  CGContextFillEllipseInRect(v13, v17);
  CLKRectGetCenter();
  v14 = *(a1 + 48) * 0.5;
  v15 = [UIBezierPath bezierPathWithArcCenter:"bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" radius:0 startAngle:? endAngle:? clockwise:?];
  [v15 closePath];
  [*(a1 + 40) setFill];
  [v15 fill];
}

id sub_1704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 5)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NTKDate faceDate];
  }

  v5 = v4;

  return v5;
}

id sub_1774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 4)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NTKDate faceDate];
  }

  v5 = v4;

  return v5;
}

void sub_1C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 faceViewDidChangeWantsStatusBarIconShadow];

    WeakRetained = v3;
  }
}

uint64_t sub_2FC4(uint64_t a1)
{
  v2 = [NTKSwatchRenderer renderSwatchForView:*(a1 + 32) size:*(a1 + 40) device:*(a1 + 48) key:0 method:*(a1 + 64), *(a1 + 72)];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_33BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_33DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained overrideDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[CLKClockTimer now];
  }

  v5 = v4;

  return v5;
}

void sub_3808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_382C(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDate];
}

double sub_3AC4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_D625C0);
  if (qword_D625C8)
  {
    v3 = qword_D625C8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_D625D0))
  {
    v5 = qword_D625B8;
  }

  else
  {
    qword_D625C8 = v2;
    qword_D625D0 = [v2 version];
    v5 = sub_3B74(qword_D625D0, v2);
    qword_D625B8 = v5;
  }

  os_unfair_lock_unlock(&unk_D625C0);

  return *&v5;
}

double sub_3B74(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 valueCompact:0.0 regular:0.0 luxoCompact:61.0 luxoRegular:63.5 aloeCompact:63.5 aloeRegular:66.5 agave:74.5 avoniaCompact:63.5 avoniaRegular:0x4050A00000000000 begonia:0x4052C00000000000];
  v4 = v3 + (0.0833333333 + 0.0833333333) * v3;

  return v4;
}

id sub_3FB4()
{
  if (qword_D625E0 != -1)
  {
    sub_9750();
  }

  v1 = qword_D625D8;

  return v1;
}

id sub_486C()
{
  CLKUIConvertLABtoRGB();
  v4 = [UIColor colorWithRed:v3 green:v0 blue:v1 alpha:v2];
  v5 = [v4 CGColor];

  return v5;
}

_UNKNOWN **sub_4AD8(int a1, int a2, uint64_t a3)
{
  v3 = a1 + 660;
  if (a3 == 1)
  {
    v7 = &NTKDolomiteTimeInstances12_ArabicIndic + 6 * (v3 % 720);
    if (a2)
    {
      return &NTKDolomiteTimeInstances24_ArabicIndic + 6 * a1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v4 = &NTKDolomiteTimeInstances12_Devanagari + 6 * (v3 % 720);
    if (a2)
    {
      v4 = &NTKDolomiteTimeInstances24_Devanagari + 6 * a1;
    }

    v5 = &NTKDolomiteTimeInstances12_Arabic + 6 * (v3 % 720);
    if (a2)
    {
      v5 = &NTKDolomiteTimeInstances24_Arabic + 6 * a1;
    }

    if (a3 == 2)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

CGPath *sub_4BAC(unsigned int a1, int a2, float64_t a3, float64_t a4, double a5)
{
  v19 = 0;
  v9 = sub_79E0(a1, &v19);
  v10 = v19;
  v11 = [v10 bytes];
  if (v9 < 1)
  {
    v14 = 0;
    LOBYTE(v13) = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (v11[5 * v12 + 4].i32[0] == 2)
      {
        v15 = a4;
        v13 |= sub_7B9C(&v11[5 * v14], v12++ - v14, a2, v15, a5);
        v14 = v12;
      }

      else
      {
        ++v12;
      }
    }

    while (v12 != v9);
  }

  v16 = a4;
  if (sub_7B9C(&v11[5 * v14], v9 - v14, a2, v16, a5) & 1) != 0 || (v13)
  {
    v17 = sub_7F28(v11, v9, a3, a4);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_662C(int a1, uint64_t a2, int a3, uint64_t a4, float64_t a5, float64_t a6)
{
  v9 = sub_4AD8(a1, a3, a4);
  v10 = v9;
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = v9 + 8;
    }

    else
    {
      v10 = v9 + 4;
    }
  }

  if (*v10)
  {
    Mutable = sub_806C(*v10, a5, a6);
  }

  else
  {
    Mutable = CGPathCreateMutable();
  }

  v12 = Mutable;
  v13 = v10[1];
  if (v13)
  {
    v14 = sub_806C(v13, a5, a6);
  }

  else
  {
    v14 = CGPathCreateMutable();
  }

  v15 = v14;
  v16 = v10[2];
  if (v16)
  {
    v17 = sub_806C(v16, a5, a6);
  }

  else
  {
    v17 = CGPathCreateMutable();
  }

  v18 = v17;
  v19 = v10[3];
  if (v19)
  {
    v20 = sub_806C(v19, a5, a6);
  }

  else
  {
    v20 = CGPathCreateMutable();
  }

  v21 = v20;
  v24[0] = v12;
  v24[1] = v15;
  v24[2] = v18;
  v24[3] = v20;
  v22 = [NSArray arrayWithObjects:v24 count:4];

  return v22;
}

id sub_6C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v13 = a5;
  v14 = objc_opt_new();
  [v14 setKeyPath:@"path"];
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v15 = [NSArray arrayWithObjects:v17 count:4];
  [v14 setValues:v15];

  [v14 setKeyTimes:&off_D5D110];
  [v14 setDuration:a7];
  [v14 setTimingFunction:v13];

  [v14 setFillMode:kCAFillModeForwards];
  [v14 setRemovedOnCompletion:0];
  [v14 setBeginTime:CACurrentMediaTime() + a6];

  return v14;
}

void sub_788C(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"backgroundColor";
  v4[9] = @"path";
  v5[8] = v1;
  v5[9] = v1;
  v4[10] = @"bounds";
  v4[11] = @"contents";
  v5[10] = v1;
  v5[11] = v1;
  v4[12] = @"sublayers";
  v4[13] = @"string";
  v5[12] = v1;
  v5[13] = v1;
  v4[14] = @"fillColor";
  v4[15] = @"strokeColor";
  v5[14] = v1;
  v5[15] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:16];
  v3 = qword_D625D8;
  qword_D625D8 = v2;
}

uint64_t sub_79E0(unsigned int a1, void *a2)
{
  v2 = NTKDolomiteTimeIndices[a1];
  if (v2 < 1)
  {
    return 0;
  }

  v5 = [[NSMutableData alloc] initWithLength:40 * v2];
  v6 = [v5 mutableBytes];
  v7 = a1 + 1;
  v8 = v6 + 4;
  v9 = 0;
  v10 = v2;
  v11 = 1;
  do
  {
    if (v11)
    {
      v12 = NTKDolomiteTimeIndices[v7++];
      v13.f32[0] = HIWORD(v12);
      v13.f32[1] = v12;
      v9 = vdiv_f32(v13, 0x477FFF0046FFFE00);
    }

    v14 = v7 + 1;
    v15 = NTKDolomiteTimeIndices[v7];
    v8[-4] = v9;
    switch(v15)
    {
      case 0xFFFFFFFF:
        v8->i32[0] = 2;
        v11 = 1;
        break;
      case 0xFFFFFFFE:
        v11 = 0;
        v8->i32[0] = 1;
        v20 = NTKDolomiteTimeIndices[v14];
        v21.f32[0] = HIWORD(v20);
        v22 = v20;
        v14 = v7 + 2;
        v21.f32[1] = v22;
        v9 = vdiv_f32(v21, 0x477FFF0046FFFE00);
        v8[-3] = v9;
        break;
      case 0xFFFFFFFD:
        v11 = 0;
        v8->i32[0] = 0;
        v16 = NTKDolomiteTimeIndices[v14];
        v17.f32[0] = HIWORD(v16);
        v17.f32[1] = v16;
        v9 = vdiv_f32(v17, 0x477FFF0046FFFE00);
        v8[-3] = v9;
        v18.f32[0] = HIWORD(NTKDolomiteTimeIndices[v7 + 2]);
        v18.f32[1] = NTKDolomiteTimeIndices[v7 + 2];
        v8[-2] = vdiv_f32(v18, 0x477FFF0046FFFE00);
        v14 = v7 + 4;
        v19 = NTKDolomiteTimeIndices[v7 + 3];
        v18.f32[0] = HIWORD(v19);
        v18.f32[1] = v19;
        v8[-1] = vdiv_f32(v18, 0x477FFF0046FFFE00);
        break;
      default:
        v11 = 0;
        break;
    }

    v8 += 5;
    v7 = v14;
    --v10;
  }

  while (v10);
  v23 = v5;
  *a2 = v5;

  return v2;
}

uint64_t sub_7B9C(uint64_t a1, int a2, int a3, float a4, double a5)
{
  if (a2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = round(a4 * a5 * a3 / 60.0) / a5 / a4;
  v8 = a2;
LABEL_3:
  v9 = (a1 + 32 + 40 * v5++);
  do
  {
    if (*v9 == 1)
    {
      v10 = *(v9 - 7);
      v15 = vabds_f32(v10, *(v9 - 5)) < 0.000001;
      v11 = v10 * 60.0;
      v12 = llroundf(v11);
      v13 = v15 && v12 == a3;
      v14 = vabds_f32(a3, v11);
      v15 = v13 && v14 < 0.5;
      if (v15)
      {
        *v9 = 3;
        v6 = 1;
        if (v5 != a2)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    ++v5;
    v9 += 10;
  }

  while (v5 - a2 != 1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v16 = 0;
  v17 = v7;
  v18 = a2 - 1;
  v19 = 1;
  do
  {
    v20 = a1 + 40 * v16;
    if (*(v20 + 32) == 3)
    {
      v21 = *(v20 + 4);
      v22 = v17 - v21;
      *(v20 + 4) = v17;
      *(v20 + 12) = v17;
      v23 = 1;
      while (1)
      {
        v24 = a1 + 40 * ((v16 + v23) % a2);
        v25 = *(v24 + 32);
        if (v25 == 1)
        {
          break;
        }

        if (v25 == 3)
        {
          if (v23 < 2)
          {
            goto LABEL_32;
          }

          --v23;
          break;
        }

        if (vabds_f32(*(v24 + 4), v17) <= 0.1 && ++v23 != 6)
        {
          continue;
        }

        break;
      }

      v26 = (a1 + 40 * ((v23 + v16) % a2));
      v27 = v26[3];
      if (v27 != v21)
      {
        v28 = v27 + flt_D565D0[v27 > v21];
        if (v28 != v21)
        {
          v29 = v22 / vabds_f32(v28, v21);
          v26[1] = v26[1] + (vabds_f32(v28, v26[1]) * v29);
          v26[5] = v26[5] + (vabds_f32(v28, v26[5]) * v29);
          if (v23 >= 2)
          {
            v30 = v23 - 1;
            v31 = v19;
            do
            {
              v32 = (a1 + 40 * (v31 % a2));
              v32[1] = v32[1] + (vabds_f32(v28, v32[1]) * v29);
              v32[3] = v32[3] + (vabds_f32(v28, v32[3]) * v29);
              v32[5] = v32[5] + (vabds_f32(v28, v32[5]) * v29);
              v32[7] = v32[7] + (vabds_f32(v28, v32[7]) * v29);
              ++v31;
              --v30;
            }

            while (v30);
          }
        }
      }

LABEL_32:
      v33 = 1;
      v34 = v18;
      while (1)
      {
        v35 = a1 + 40 * (v34 % a2);
        v36 = *(v35 + 32);
        if (v36 == 1)
        {
          break;
        }

        if (v36 == 3)
        {
          if (v33 < 2)
          {
            goto LABEL_45;
          }

          --v33;
          break;
        }

        if (vabds_f32(*(v35 + 12), v17) <= 0.1)
        {
          ++v33;
          --v34;
          if (v33 != 6)
          {
            continue;
          }
        }

        break;
      }

      v37 = (a1 + 40 * ((v16 + a2 - v33) % a2));
      v38 = v37[1];
      if (v38 != v21)
      {
        v39 = v38 + flt_D565D0[v38 > v21];
        if (v39 != v21)
        {
          v40 = v22 / vabds_f32(v39, v21);
          v37[3] = v37[3] + (vabds_f32(v39, v37[3]) * v40);
          v37[7] = v37[7] + (vabds_f32(v39, v37[7]) * v40);
          if (v33 >= 2)
          {
            v41 = v33 - 1;
            v42 = v18;
            do
            {
              v43 = (a1 + 40 * (v42 % a2));
              v43[1] = v43[1] + (vabds_f32(v39, v43[1]) * v40);
              v43[3] = v43[3] + (vabds_f32(v39, v43[3]) * v40);
              v43[5] = v43[5] + (vabds_f32(v39, v43[5]) * v40);
              v43[7] = v43[7] + (vabds_f32(v39, v43[7]) * v40);
              --v42;
              --v41;
            }

            while (v41);
          }
        }
      }
    }

LABEL_45:
    ++v16;
    ++v19;
    ++v18;
  }

  while (v16 != a2);
  v44 = (a1 + 32);
  do
  {
    if (*v44 == 3)
    {
      *v44 = 1;
    }

    v44 += 10;
    --v8;
  }

  while (v8);
  return 1;
}

CGPath *sub_7F28(float32x2_t *a1, int a2, float64_t a3, float64_t a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v8) = a2;
  Mutable = CGPathCreateMutable();
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  v7 = vcvt_f32_f64(v6);
  v8 = v8;
  v9 = a1 + 2;
  v10 = 1;
  do
  {
    v11 = v9[2].i32[0];
    if (v11 == 2)
    {
      CGPathCloseSubpath(Mutable);
    }

    else
    {
      v13 = v9[-1];
      v12 = *v9;
      v14 = v9[1];
      if (v10)
      {
        v15 = vmul_f32(v9[-2], v7);
        CGPathMoveToPoint(Mutable, 0, v15.f32[0], v15.f32[1]);
      }

      v16 = vmul_f32(v13, v7);
      if (v11 == 1)
      {
        CGPathAddLineToPoint(Mutable, 0, v16.f32[0], v16.f32[1]);
      }

      else
      {
        v17 = vmul_f32(v14, v7);
        v18 = vmul_f32(v12, v7);
        CGPathAddCurveToPoint(Mutable, 0, v18.f32[0], v18.f32[1], v17.f32[0], v17.f32[1], v16.f32[0], v16.f32[1]);
      }
    }

    v9 += 5;
    v10 = v11 == 2;
    --v8;
  }

  while (v8);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

CGPath *sub_806C(unsigned int a1, float64_t a2, float64_t a3)
{
  v9 = 0;
  v5 = sub_79E0(a1, &v9);
  v6 = v9;
  v7 = sub_7F28([v6 bytes], v5, a2, a3);

  return v7;
}

void sub_83A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v15 = [*(a1 + 32) _hasHWDefaultColorForDevice:*(a1 + 40)];
      v16 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v8 = v16;
      if (v15)
      {
        v24[0] = v16;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
        v24[1] = v9;
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v24[2] = v10;
        v11 = v24;
      }

      else
      {
        v23[0] = v16;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:9000];
        v23[1] = v9;
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v23[2] = v10;
        v11 = v23;
      }

      goto LABEL_18;
    }

    if (a3 != 1)
    {
      goto LABEL_15;
    }

    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:7000];
    v22[0] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v22[1] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v22[2] = v10;
    v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v22[3] = v12;
    v13 = v22;
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:7000];
        v20[0] = v8;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v20[1] = v9;
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
        v20[2] = v10;
        v11 = v20;
LABEL_18:
        v12 = [NSArray arrayWithObjects:v11 count:3];
        [v5 setCurationPlacements:v12];
        goto LABEL_19;
      }

      if (a3 == 4)
      {
        v6 = [*(a1 + 32) _hasHWDefaultColorForDevice:*(a1 + 40)];
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v8 = v7;
        if (v6)
        {
          v19[0] = v7;
          v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:9000];
          v19[1] = v9;
          v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
          v19[2] = v10;
          v11 = v19;
        }

        else
        {
          v18[0] = v7;
          v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
          v18[1] = v9;
          v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
          v18[2] = v10;
          v11 = v18;
        }

        goto LABEL_18;
      }

LABEL_15:
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v17[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v17[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v17[2] = v10;
      v11 = v17;
      goto LABEL_18;
    }

    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v21[0] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
    v21[1] = v9;
    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v21[2] = v10;
    v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v21[3] = v12;
    v13 = v21;
  }

  v14 = [NSArray arrayWithObjects:v13 count:4];
  [v5 setCurationPlacements:v14];

LABEL_19:
}

id sub_8D94(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_D625F0);
  if (qword_D625F8)
  {
    v3 = qword_D625F8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_D62600))
  {
    qword_D625F8 = v2;
    qword_D62600 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_D625E8;
    qword_D625E8 = v5;
  }

  v7 = qword_D625E8;
  os_unfair_lock_unlock(&unk_D625F0);

  return v7;
}

void sub_8EBC(id a1)
{
  v3[0] = &off_D5CF08;
  v3[1] = &off_D5CF20;
  v4[0] = @"arabic";
  v4[1] = @"arabic-indic";
  v3[2] = &off_D5CF38;
  v4[2] = @"devanagari";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_D62608;
  qword_D62608 = v1;
}

id sub_90C8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_D62620);
  if (qword_D62628)
  {
    v3 = qword_D62628 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_D62630))
  {
    qword_D62628 = v2;
    qword_D62630 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_D62618;
    qword_D62618 = v5;
  }

  v7 = qword_D62618;
  os_unfair_lock_unlock(&unk_D62620);

  return v7;
}

void sub_9278(id a1)
{
  v3[0] = &off_D5CF50;
  v3[1] = &off_D5CF68;
  v4[0] = @"filled";
  v4[1] = @"outline";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_D62638;
  qword_D62638 = v1;
}