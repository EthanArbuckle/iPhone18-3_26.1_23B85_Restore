id NTKAkitaGetMorphConfigString(unint64_t a1)
{
  if (qword_15330 != -1)
  {
    sub_60A8();
  }

  v2 = (&unk_15338 + 64 * (a1 % 0x13));
  v3 = v2[1];
  v7[0] = *v2;
  v7[1] = v3;
  v4 = v2[3];
  v7[2] = v2[2];
  v7[3] = v4;
  v5 = sub_E60(v7);

  return v5;
}

id sub_E60(void *a1)
{
  v15[0] = @"backgroundColor";
  v2 = [NSNumber numberWithUnsignedInteger:*a1];
  v16[0] = v2;
  v15[1] = @"hairColor";
  v3 = [NSNumber numberWithUnsignedInteger:a1[1]];
  v16[1] = v3;
  v15[2] = @"skinColor";
  v4 = [NSNumber numberWithUnsignedInteger:a1[2]];
  v16[2] = v4;
  v15[3] = @"shirtColor";
  v5 = [NSNumber numberWithUnsignedInteger:a1[3]];
  v16[3] = v5;
  v15[4] = @"hairPathIndex";
  v6 = [NSNumber numberWithUnsignedInteger:a1[4]];
  v16[4] = v6;
  v15[5] = @"bodyPathIndex";
  v7 = [NSNumber numberWithUnsignedInteger:a1[5]];
  v16[5] = v7;
  v15[6] = @"nosePathIndex";
  v8 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v16[6] = v8;
  v15[7] = @"lipsPathIndex";
  v9 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v16[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:8];

  v14 = 0;
  v11 = [NSJSONSerialization dataWithJSONObject:v10 options:0 error:&v14];
  v12 = [[NSString alloc] initWithData:v11 encoding:4];

  return v12;
}

uint64_t sub_120C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  v6 = (a3 + 8);
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a1;
  v7 = arc4random_uniform(8u) + 6;
  *(a3 + 16) = v7;
  v9 = 20;
  do
  {
    if (v7 != a1 && v7 != a2[2])
    {
      SRGBf = NTKAkitaColorGetSRGBf(v7, 0, v8);
      NTKAkitaColorGetSRGBf(a1, 0, *&SRGBf);
      CLKUIConvertToRGBfFromSRGBf_fast();
      v88 = v11;
      CLKUIConvertToRGBfFromSRGBf_fast();
      v13 = vsubq_f32(v88, v12);
      v14 = vmulq_f32(v13, v13);
      v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
      if (v14.f32[0] >= 0.01)
      {
        v15 = NTKAkitaColorGetSRGBf(v7, 1, *v14.f32);
        NTKAkitaColorGetSRGBf(a1, 0, *&v15);
        CLKUIConvertToRGBfFromSRGBf_fast();
        v89 = v16;
        CLKUIConvertToRGBfFromSRGBf_fast();
        v18 = vsubq_f32(v89, v17);
        v19 = vmulq_f32(v18, v18);
        if ((v19.f32[2] + vaddv_f32(*v19.f32)) >= 0.01)
        {
          break;
        }
      }
    }

    v7 = arc4random_uniform(8u) + 6;
    --v9;
  }

  while (v9);
  *(a3 + 16) = v7;
  v20 = arc4random_uniform(2u);
  v21 = arc4random_uniform(0x12u);
  v23 = v21 + 1;
  if (v20)
  {
    *(a3 + 24) = v23;
    v24 = 20;
    do
    {
      if (v23 != a1)
      {
        if (v23)
        {
          if (v7 != v23 && a2[3] != v23)
          {
            v25 = NTKAkitaColorGetSRGBf(v23, 0, v22);
            NTKAkitaColorGetSRGBf(a1, 0, *&v25);
            CLKUIConvertToRGBfFromSRGBf_fast();
            v90 = v26;
            CLKUIConvertToRGBfFromSRGBf_fast();
            v28 = vsubq_f32(v90, v27);
            v29 = vmulq_f32(v28, v28);
            v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
            if (v29.f32[0] >= 0.01)
            {
              v30 = NTKAkitaColorGetSRGBf(v23, 0, *v29.f32);
              NTKAkitaColorGetSRGBf(v7, 1, *&v30);
              CLKUIConvertToRGBfFromSRGBf_fast();
              v91 = v31;
              CLKUIConvertToRGBfFromSRGBf_fast();
              v33 = vsubq_f32(v91, v32);
              v34 = vmulq_f32(v33, v33);
              if ((v34.f32[2] + vaddv_f32(*v34.f32)) >= 0.01)
              {
                break;
              }
            }
          }
        }
      }

      v21 = arc4random_uniform(0x12u);
      v23 = v21 + 1;
      --v24;
    }

    while (v24);
    *(a3 + 24) = v23;
    v35 = arc4random_uniform(0x12u);
    v37 = v35 + 1;
    *(a3 + 8) = v37;
    v38 = 20;
    do
    {
      if (v37 != a1 && v7 != v37 && v21 != v35)
      {
        if (v37)
        {
          if (a2[1] != v37)
          {
            v39 = NTKAkitaColorGetSRGBf(v37, 0, v36);
            NTKAkitaColorGetSRGBf(a1, 0, *&v39);
            CLKUIConvertToRGBfFromSRGBf_fast();
            v92 = v40;
            CLKUIConvertToRGBfFromSRGBf_fast();
            v42 = vsubq_f32(v92, v41);
            v43 = vmulq_f32(v42, v42);
            v43.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
            if (v43.f32[0] >= 0.01)
            {
              v44 = NTKAkitaColorGetSRGBf(v37, 0, *v43.f32);
              NTKAkitaColorGetSRGBf(v7, 1, *&v44);
              CLKUIConvertToRGBfFromSRGBf_fast();
              v93 = v45;
              CLKUIConvertToRGBfFromSRGBf_fast();
              v47 = vsubq_f32(v93, v46);
              v48 = vmulq_f32(v47, v47);
              v48.f32[0] = v48.f32[2] + vaddv_f32(*v48.f32);
              if (v48.f32[0] >= 0.01)
              {
                v49 = NTKAkitaColorGetSRGBf(v23, 0, *v48.f32);
                NTKAkitaColorGetSRGBf(v37, 0, *&v49);
                CLKUIConvertToRGBfFromSRGBf_fast();
                v94 = v50;
                CLKUIConvertToRGBfFromSRGBf_fast();
                v52 = vsubq_f32(v94, v51);
                v53 = vmulq_f32(v52, v52);
                if ((v53.f32[2] + vaddv_f32(*v53.f32)) >= 0.01)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v35 = arc4random_uniform(0x12u);
      v37 = v35 + 1;
      --v38;
    }

    while (v38);
    *v6 = v37;
  }

  else
  {
    *v6 = v23;
    v54 = 20;
    do
    {
      if (v23 != a1)
      {
        if (v23)
        {
          if (v7 != v23 && a2[1] != v23)
          {
            v55 = NTKAkitaColorGetSRGBf(v23, 0, v22);
            NTKAkitaColorGetSRGBf(a1, 0, *&v55);
            CLKUIConvertToRGBfFromSRGBf_fast();
            v95 = v56;
            CLKUIConvertToRGBfFromSRGBf_fast();
            v58 = vsubq_f32(v95, v57);
            v59 = vmulq_f32(v58, v58);
            v59.f32[0] = v59.f32[2] + vaddv_f32(*v59.f32);
            if (v59.f32[0] >= 0.01)
            {
              v60 = NTKAkitaColorGetSRGBf(v23, 0, *v59.f32);
              NTKAkitaColorGetSRGBf(v7, 1, *&v60);
              CLKUIConvertToRGBfFromSRGBf_fast();
              v96 = v61;
              CLKUIConvertToRGBfFromSRGBf_fast();
              v63 = vsubq_f32(v96, v62);
              v64 = vmulq_f32(v63, v63);
              if ((v64.f32[2] + vaddv_f32(*v64.f32)) >= 0.01)
              {
                break;
              }
            }
          }
        }
      }

      v21 = arc4random_uniform(0x12u);
      v23 = v21 + 1;
      --v54;
    }

    while (v54);
    *(a3 + 8) = v23;
    v65 = arc4random_uniform(0x12u);
    v67 = v65 + 1;
    *(a3 + 24) = v67;
    v68 = 20;
    do
    {
      if (v67 != a1 && v7 != v67 && v21 != v65)
      {
        if (v67)
        {
          if (a2[3] != v67)
          {
            v69 = NTKAkitaColorGetSRGBf(v67, 0, v66);
            NTKAkitaColorGetSRGBf(a1, 0, *&v69);
            CLKUIConvertToRGBfFromSRGBf_fast();
            v97 = v70;
            CLKUIConvertToRGBfFromSRGBf_fast();
            v72 = vsubq_f32(v97, v71);
            v73 = vmulq_f32(v72, v72);
            v73.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
            if (v73.f32[0] >= 0.01)
            {
              v74 = NTKAkitaColorGetSRGBf(v67, 0, *v73.f32);
              NTKAkitaColorGetSRGBf(v7, 1, *&v74);
              CLKUIConvertToRGBfFromSRGBf_fast();
              v98 = v75;
              CLKUIConvertToRGBfFromSRGBf_fast();
              v77 = vsubq_f32(v98, v76);
              v78 = vmulq_f32(v77, v77);
              v78.f32[0] = v78.f32[2] + vaddv_f32(*v78.f32);
              if (v78.f32[0] >= 0.01)
              {
                v79 = NTKAkitaColorGetSRGBf(v67, 0, *v78.f32);
                NTKAkitaColorGetSRGBf(v23, 0, *&v79);
                CLKUIConvertToRGBfFromSRGBf_fast();
                v99 = v80;
                CLKUIConvertToRGBfFromSRGBf_fast();
                v82 = vsubq_f32(v99, v81);
                v83 = vmulq_f32(v82, v82);
                if ((v83.f32[2] + vaddv_f32(*v83.f32)) >= 0.01)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v65 = arc4random_uniform(0x12u);
      v67 = v65 + 1;
      --v68;
    }

    while (v68);
    *(a3 + 24) = v67;
  }

  do
  {
    v84 = arc4random_uniform(0xCu);
  }

  while (a2[4] == v84);
  *(a3 + 32) = v84;
  do
  {
    v85 = arc4random_uniform(0xAu);
  }

  while (a2[5] == v85);
  *(a3 + 40) = v85;
  do
  {
    v86 = arc4random_uniform(6u);
  }

  while (a2[6] == v86);
  *(a3 + 48) = v86;
  do
  {
    result = arc4random_uniform(9u);
  }

  while (a2[7] == result);
  *(a3 + 56) = result;
  return result;
}

void sub_1EFC(id a1)
{
  v1 = 0;
  v2 = -1;
  v3 = -1;
  v4 = -1;
  do
  {
    v5 = v1;
    do
    {
      v6 = v5 & 7;
      v7 = v6 + 6;
      v5 = v6 + 7;
    }

    while (v7 == v1 || v7 == v3);
    v3 = v7;
    v9 = v1 + 3;
    do
    {
      v10 = v9 % 0x12;
      v11 = v9 % 0x12 + 1;
      v9 = v9 % 0x12 + 2;
    }

    while (v10 + 1 == v4 || v11 == v1 || v11 == v7);
    v4 = v10 + 1;
    v14 = v10 + 4;
    do
    {
      v15 = v14 % 0x12;
      v16 = v14 % 0x12 + 1;
      v14 = v14 % 0x12 + 2;
    }

    while (v15 + 1 == v2 || v15 == v10 || v16 == v1 || v16 == v7);
    v20.i64[0] = vdupq_n_s64(v1 % 0xA).u64[0];
    v20.i64[1] = v1 & 0xF;
    v21.i64[0] = v1 % 0xC;
    v21.i64[1] = v1 % 0xA;
    v22 = (&unk_15338 + 64 * v1);
    v22->i64[0] = v1;
    v22->i64[1] = v4;
    v22[1].i64[0] = v7;
    v22[1].i64[1] = v16;
    v22[2] = v21;
    v22[3] = vbslq_s8(vcgtq_u64(xmmword_93A0, v20), v20, vsubq_s64(xmmword_93B0, v20));
    ++v1;
    v2 = v15 + 1;
  }

  while (v1 != 19);
}

uint64_t sub_2024(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = [a2 objectForKeyedSubscript:?];
  v7 = v6;
  if (v6 && (v8 = [v6 intValue], v8 < a4))
  {
    *a1 = v8;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_23C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ((v3 = *(WeakRetained + 5)) != 0 || (v3 = *(WeakRetained + 6)) != 0))
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

void sub_2C78(uint64_t a1, void *a2)
{
  v3 = [a2 artistFacesForDevice:*(a1 + 32)];
  if ([v3 count])
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

uint64_t sub_2CDC(uint64_t a1, void *a2)
{
  v3 = [a2 face];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

id sub_30F4()
{
  if (qword_15800 != -1)
  {
    sub_60E4();
  }

  v1 = qword_157F8;

  return v1;
}

CGPath *sub_3360(uint64_t a1, uint64_t a2, float64_t a3, float64_t a4)
{
  if (*(a1 + 4) < 1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  if (*(a1 + 4) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9.f64[0] = a3;
    v9.f64[1] = a4;
    v10 = vcvt_f32_f64(v9);
    do
    {
      v11 = *(a1 + 8);
      v12 = v11[v7 + 1];
      v13 = v11[v7 + 2];
      v14 = v11[v7 + 3];
      if (!(v7 * 8))
      {
        v15 = vmul_f32(*v11, v10);
        CGPathMoveToPoint(Mutable, 0, v15.f32[0], v15.f32[1]);
      }

      v16 = vmul_f32(v13, v10);
      v17 = vmul_f32(v14, v10);
      v18 = vmul_f32(v12, v10);
      CGPathAddCurveToPoint(Mutable, 0, v16.f32[0], v16.f32[1], v17.f32[0], v17.f32[1], v18.f32[0], v18.f32[1]);
      ++v8;
      v19 = *(a1 + 4);
      v7 += 4;
    }

    while (v8 < v19);
    if (a2 == 1 && v19 > 0)
    {
      CGPathCloseSubpath(Mutable);
    }
  }

  return Mutable;
}

id sub_4588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = sub_46E0(a1, a2, v11);
  v18[0] = v14;
  v15 = sub_4980(a3, a4, v12, v11);

  v18[1] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:2];
  [v13 setAnimations:v16];

  [v13 setDuration:1.0];
  [v13 setFillMode:kCAFillModeForwards];
  [v13 setRemovedOnCompletion:0];

  return v13;
}

id sub_46E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setKeyPath:@"path"];
  [v6 setFromValue:a1];
  [v6 setToValue:a2];
  [v6 setDuration:1.0];
  [v6 setTimingFunction:v5];

  [v6 setFillMode:kCAFillModeForwards];
  [v6 setRemovedOnCompletion:0];

  return v6;
}

id sub_479C(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, CGColor *a6, void *a7)
{
  v13 = a7;
  if (a3 && a5)
  {
    v14 = sub_46E0(a2, a4, v13);
  }

  else
  {
    [a1 setPath:a2];
    v15 = sub_46E0(a2, a4, v13);
    v16 = objc_opt_new();
    [v16 setKeyPath:@"strokeColor"];
    CopyWithAlpha = CGColorCreateCopyWithAlpha(a6, 0.0);
    v18 = CopyWithAlpha;
    if (a3)
    {
      v19 = a6;
    }

    else
    {
      v19 = CopyWithAlpha;
    }

    if (a3)
    {
      a6 = CopyWithAlpha;
    }

    [v16 setFromValue:v19];
    [v16 setToValue:a6];
    CGColorRelease(v18);
    [v16 setDuration:1.0];
    [v16 setTimingFunction:v13];
    [v16 setFillMode:kCAFillModeForwards];
    [v16 setRemovedOnCompletion:0];
    v14 = objc_opt_new();
    v22[0] = v16;
    v22[1] = v15;
    v20 = [NSArray arrayWithObjects:v22 count:2];
    [v14 setAnimations:v20];

    [v14 setDuration:1.0];
    [v14 setFillMode:kCAFillModeForwards];
    [v14 setRemovedOnCompletion:0];
  }

  return v14;
}

id sub_4980(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setKeyPath:v8];

  [v9 setFromValue:a1];
  [v9 setToValue:a2];
  [v9 setDuration:1.0];
  [v9 setTimingFunction:v7];

  [v9 setFillMode:kCAFillModeForwards];
  [v9 setRemovedOnCompletion:0];

  return v9;
}

void sub_5D70(id a1)
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
  v4[10] = @"contents";
  v4[11] = @"sublayers";
  v5[10] = v1;
  v5[11] = v1;
  v4[12] = @"string";
  v4[13] = @"fillColor";
  v5[12] = v1;
  v5[13] = v1;
  v4[14] = @"strokeColor";
  v5[14] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:15];
  v3 = qword_157F8;
  qword_157F8 = v2;
}

id NTKAkitaColorGetPlatform(unint64_t a1, char a2)
{
  if (qword_15808 != -1)
  {
    sub_60F8();
  }

  v4 = qword_15810[2 * (a1 % 0x13) + (a2 & 1)];

  return v4;
}

void sub_5F3C(id a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 0.00392156863;
  do
  {
    v5 = 0;
    v6 = v3;
    v7 = &qword_15810[v2];
    do
    {
      v1.i32[0] = dword_C45C[v5];
      v8 = vmovl_u8(v1).u64[0];
      v9 = [UIColor colorWithRed:v4 * v8 green:v4 * WORD1(v8) blue:v4 * WORD2(v8) alpha:HIWORD(v8) * 0.00392156863];
      v10 = *v7;
      *v7 = v9;
      v7 += 2;

      ++v5;
    }

    while (v5 != 19);
    v3 = 0;
    v4 = 0.00352941176;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
}

id NTKAkitaColorGetCGColor(unint64_t a1, char a2)
{
  v2 = NTKAkitaColorGetPlatform(a1, a2);
  v3 = [v2 CGColor];

  return v3;
}

double NTKAkitaColorGetSRGBf(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  a3.i32[0] = dword_C45C[a1];
  v3 = &unk_C458;
  v4 = vld1q_dup_f32(v3);
  v4.i32[0] = dword_C450[a2 == 1];
  v5 = vzip1q_s32(v4, v4);
  v5.i32[2] = dword_C450[a2 == 1];
  *&result = vmulq_f32(v5, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a3)))).u64[0];
  return result;
}