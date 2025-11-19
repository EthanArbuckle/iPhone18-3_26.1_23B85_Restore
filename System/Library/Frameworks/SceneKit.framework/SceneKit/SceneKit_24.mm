float C3DCylinderGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Radius = C3DParametricGeometryGetRadius(a1);
  result = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *&v8 = -Radius;
    *(a2 + 8) = -Radius;
    *(&v8 + 1) = result * -0.5;
    *a2 = v8;
    result = result * 0.5;
    *(a3 + 8) = Radius;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(Radius));
  }

  return result;
}

float C3DParametricGeometryGetRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 232);
}

BOOL C3DCylinderGetBoundingSphereForCylinderParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = sqrt(a3 * 0.25 * a3 + a2 * a2);
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DCylinderGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  Radius = C3DParametricGeometryGetRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    v6 = sqrt(Height * 0.25 * Height + Radius * Radius);
    *&v7 = 0;
    DWORD2(v7) = 0;
    *(&v7 + 3) = v6;
    *a2 = v7;
  }

  return a2 != 0;
}

void C3DCylinderGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  Radius = C3DParametricGeometryGetRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v14 = Radius;
      v15 = a5;
      do
      {
        v16 = 214013 * *a3 + 2531011;
        v17 = HIWORD(v16) * 0.0000152590219 + HIWORD(v16) * 0.0000152590219;
        v18 = __sincos_stret(v17 * 3.14159265);
        sinval = v18.__sinval;
        cosval = v18.__cosval;
        v21 = 214013 * v16 + 2531011;
        v22 = HIWORD(v21) * 0.0000152590219 * v14;
        v23.f64[0] = v22 * cosval;
        v24 = 214013 * v21 + 2531011;
        v23.f64[1] = Height * -0.5 + HIWORD(v24) * 0.0000152590219 * Height;
        *a3 = v24;
        *&v23.f64[0] = vcvt_f32_f64(v23);
        *&v22 = v22 * sinval;
        LODWORD(v23.f64[1]) = LODWORD(v22);
        *a4 = v23;
        if (a5)
        {
          *&v25 = LODWORD(cosval);
          *(&v25 + 1) = LODWORD(sinval);
          *v15 = v25;
        }

        ++v15;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v26 = a5;
    do
    {
      v27 = 214013 * *a3 + 2531011;
      v28 = HIWORD(v27) * 0.0000152590219 + HIWORD(v27) * 0.0000152590219;
      v29 = __sincos_stret(v28 * 3.14159265);
      v30 = v29.__sinval;
      v31 = v29.__cosval;
      v32 = 214013 * v27 + 2531011;
      *a3 = v32;
      *&v33 = Radius * v31;
      v34 = Height * -0.5 + HIWORD(v32) * 0.0000152590219 * Height;
      *(&v33 + 1) = v34;
      *(&v33 + 2) = Radius * v30;
      *a4 = v33;
      if (a5)
      {
        *&v35 = LODWORD(v31);
        *(&v35 + 1) = LODWORD(v30);
        *v26 = v35;
      }

      ++v26;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

uint64_t C3DCylinderSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DCylinderHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 4;
  a2[1] = a1[75];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[71];
  a2[5] = a1[67];
  a2[6] = a1[65];
  a2[7] = a1[77];
  return 32;
}

float64_t C3DConeGetBoundingBoxForConeParameters(uint64_t a1, uint64_t a2, float64x2_t a3, float64_t a4, double a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (a3.f64[0] <= a4)
    {
      a3.f64[0] = a4;
    }

    v6 = a5 * -0.5;
    a3.f64[1] = a5 * 0.5;
    *&a3.f64[0] = vcvt_f32_f64(a3);
    *&v7 = -*a3.f64;
    *(a1 + 8) = -*a3.f64;
    *(&v7 + 1) = v6;
    *a1 = v7;
    *(a2 + 8) = LODWORD(a3.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

uint64_t C3DConeGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TopRadius = C3DParametricGeometryGetTopRadius(a1);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  result = !v9;
  if (!v9)
  {
    if (TopRadius <= BottomRadius)
    {
      *&v11 = BottomRadius;
    }

    else
    {
      *&v11 = TopRadius;
    }

    *&v12 = -*&v11;
    *(a2 + 8) = -*&v11;
    *(&v12 + 1) = Height * -0.5;
    *a2 = v12;
    *(a3 + 8) = v11;
    *(&v11 + 1) = Height * 0.5;
    *a3 = v11;
  }

  return result;
}

float C3DParametricGeometryGetTopRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 236);
}

float C3DParametricGeometryGetBottomRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

BOOL C3DConeGetBoundingSphereForConeParameters(_OWORD *a1, double a2, double a3, double a4)
{
  if (a1)
  {
    if (a2 <= a3)
    {
      a2 = a3;
    }

    v4 = sqrt(a2 * a2 + a4 * 0.25 * a4);
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL C3DConeGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  TopRadius = C3DParametricGeometryGetTopRadius(a1);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    v7 = Height;
    if (TopRadius <= BottomRadius)
    {
      v8 = BottomRadius;
    }

    else
    {
      v8 = TopRadius;
    }

    v9 = sqrt(v8 * v8 + v7 * 0.25 * v7);
    *&v10 = 0;
    DWORD2(v10) = 0;
    *(&v10 + 3) = v9;
    *a2 = v10;
  }

  return a2 != 0;
}

void C3DConeGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  TopRadius = C3DParametricGeometryGetTopRadius(a1);
  BottomRadius = C3DParametricGeometryGetBottomRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v15 = TopRadius - BottomRadius;
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219 + HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret(v18 * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = HIWORD(v22) * 0.0000152590219;
        v24 = 214013 * v22 + 2531011;
        *a3 = v24;
        v25 = (BottomRadius + v23 * v15) * (HIWORD(v24) * 0.0000152590219);
        v26.f64[0] = v25 * cosval;
        v26.f64[1] = Height * -0.5 + v23 * Height;
        v27 = v25 * sinval;
        *&v28 = vcvt_f32_f64(v26);
        *&v27 = v27;
        DWORD2(v28) = LODWORD(v27);
        *a4 = v28;
        if (a5)
        {
          *&v29 = LODWORD(cosval);
          *(&v29 + 1) = LODWORD(sinval);
          *v16 = v29;
        }

        ++v16;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v30 = TopRadius - BottomRadius;
    v31 = a5;
    do
    {
      v32 = 214013 * *a3 + 2531011;
      v33 = HIWORD(v32) * 0.0000152590219 + HIWORD(v32) * 0.0000152590219;
      v34 = __sincos_stret(v33 * 3.14159265);
      v35 = v34.__sinval;
      v36 = v34.__cosval;
      v37 = 214013 * v32 + 2531011;
      *a3 = v37;
      v38 = HIWORD(v37) * 0.0000152590219;
      v39 = BottomRadius + v38 * v30;
      v40.f64[0] = v39 * v36;
      v40.f64[1] = Height * -0.5 + v38 * Height;
      v41 = v39 * v35;
      *&v42 = vcvt_f32_f64(v40);
      *&v41 = v41;
      DWORD2(v42) = LODWORD(v41);
      *a4 = v42;
      if (a5)
      {
        *&v43 = LODWORD(v36);
        *(&v43 + 1) = LODWORD(v35);
        *v31 = v43;
      }

      ++v31;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

uint64_t C3DConeSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 5, 0.0);
  C3DParametricGeometrySetFloatValue(a1, 6, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);

  return C3DParametricGeometrySetIntValue(a1, 12, 1);
}

uint64_t C3DConeHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 5;
  a2[1] = a1[75];
  a2[2] = a1[59];
  a2[3] = a1[60];
  a2[4] = a1[55];
  a2[5] = a1[71];
  a2[6] = a1[67];
  a2[7] = a1[77];
  return 32;
}

float C3DTubeGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 220);
    LODWORD(v5) = *(a1 + 248);
    *&v6 = -*&v5;
    *(a2 + 8) = -*&v5;
    *(&v6 + 1) = v4 * -0.5;
    *a2 = v6;
    result = v4 * 0.5;
    *(a3 + 8) = v5;
    *(&v5 + 1) = result;
    *a3 = v5;
  }

  return result;
}

BOOL C3DTubeGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(*(a1 + 220) * 0.25 * *(a1 + 220) + *(a1 + 248) * *(a1 + 248));
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DTubeGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  OuterRadius = C3DParametricGeometryGetOuterRadius(a1);
  InnerRadius = C3DParametricGeometryGetInnerRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v15 = OuterRadius - InnerRadius;
      v16 = a5;
      do
      {
        v17 = 214013 * *a3 + 2531011;
        v18 = HIWORD(v17) * 0.0000152590219 + HIWORD(v17) * 0.0000152590219;
        v19 = __sincos_stret(v18 * 3.14159265);
        sinval = v19.__sinval;
        cosval = v19.__cosval;
        v22 = 214013 * v17 + 2531011;
        v23 = HIWORD(v22) * 0.0000152590219;
        v24 = InnerRadius + v15 * v23;
        v25.f64[0] = v24 * cosval;
        v26 = 214013 * v22 + 2531011;
        v25.f64[1] = Height * -0.5 + HIWORD(v26) * 0.0000152590219 * Height;
        *a3 = v26;
        *&v25.f64[0] = vcvt_f32_f64(v25);
        *&v24 = v24 * sinval;
        LODWORD(v25.f64[1]) = LODWORD(v24);
        *a4 = v25;
        if (a5)
        {
          if (v23 > 0.5)
          {
            cosval = -cosval;
            sinval = -sinval;
          }

          *&v27 = LODWORD(cosval);
          *(&v27 + 1) = LODWORD(sinval);
          *v16 = v27;
        }

        ++v16;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = a5;
    do
    {
      v29 = 214013 * *a3 + 2531011;
      v30 = HIWORD(v29) * 0.0000152590219 + HIWORD(v29) * 0.0000152590219;
      v31 = __sincos_stret(v30 * 3.14159265);
      v32 = v31.__sinval;
      v33 = v31.__cosval;
      v34 = 214013 * v29 + 2531011;
      v35 = HIWORD(v34) * 0.0000152590219;
      if (v35 <= 0.5)
      {
        v36 = OuterRadius;
      }

      else
      {
        v36 = InnerRadius;
      }

      v37.f64[0] = v36 * v33;
      v38 = 214013 * v34 + 2531011;
      v37.f64[1] = Height * -0.5 + HIWORD(v38) * 0.0000152590219 * Height;
      *a3 = v38;
      *&v37.f64[0] = vcvt_f32_f64(v37);
      v39 = v36 * v32;
      *&v37.f64[1] = v39;
      *a4 = v37;
      if (a5)
      {
        if (v35 > 0.5)
        {
          v33 = -v33;
          v32 = -v32;
        }

        *&v40 = LODWORD(v33);
        *(&v40 + 1) = LODWORD(v32);
        *v28 = v40;
      }

      ++v28;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

float C3DParametricGeometryGetOuterRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

float C3DParametricGeometryGetInnerRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 244);
}

uint64_t C3DTubeSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 7, 0.25);
  C3DParametricGeometrySetFloatValue(a1, 8, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DTubeHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 6;
  a2[1] = a1[75];
  a2[2] = a1[61];
  a2[3] = a1[62];
  a2[4] = a1[55];
  a2[5] = a1[71];
  a2[6] = a1[67];
  a2[7] = a1[65];
  a2[8] = a1[77];
  return 36;
}

float C3DCapsuleGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Radius = C3DParametricGeometryGetRadius(a1);
  result = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *&v8 = -Radius;
    *(a2 + 8) = -Radius;
    *(&v8 + 1) = result * -0.5;
    *a2 = v8;
    result = result * 0.5;
    *(a3 + 8) = Radius;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(Radius));
  }

  return result;
}

BOOL C3DCapsuleGetBoundingSphereForCapsuleParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = a3 * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DCapsuleGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  C3DParametricGeometryGetRadius(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  if (a2)
  {
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = Height * 0.5;
    *a2 = v5;
  }

  return a2 != 0;
}

void C3DCapsuleGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float64x2_t *a4, float64x2_t *a5, int a6)
{
  Radius = C3DParametricGeometryGetRadius(a1);
  v13 = Radius;
  Height = C3DParametricGeometryGetHeight(a1);
  *v15.i64 = Height * 0.5;
  v16 = Height * 0.5 - Radius;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v17 = -*v15.i64;
      *v15.i32 = v16;
      v50 = v15;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219 + HIWORD(v19) * 0.0000152590219;
        v21 = __sincos_stret(v20 * 3.14159265);
        sinval = v21.__sinval;
        *v23.f64 = v21.__cosval;
        v24 = 214013 * v19 + 2531011;
        *v25.i32 = v17 + HIWORD(v24) * 0.0000152590219 * Height;
        v26 = 214013 * v24 + 2531011;
        *a3 = v26;
        v27 = HIWORD(v26) * 0.0000152590219 * v13;
        *v28.i64 = fabsf(*v25.i32) - v16;
        if (*v28.i64 <= 0.0)
        {
          *&v32.f64[0] = LODWORD(v23.f64[0]);
          *&v32.f64[1] = LODWORD(sinval);
          *v23.f64 = v27 * *v23.f64;
          HIDWORD(v23.f64[0]) = v25.i32[0];
        }

        else
        {
          *v28.i64 = *v28.i64 / v13;
          *v28.i32 = *v28.i64;
          v29.i64[0] = 0x8000000080000000;
          v29.i64[1] = 0x8000000080000000;
          v30 = *vbslq_s8(v29, v28, v25).i32;
          v31 = sqrtf(1.0 - (v30 * v30));
          *v23.f64 = v31 * *v23.f64;
          sinval = v31 * sinval;
          v32 = v23;
          *(v32.f64 + 1) = v30;
          *&v32.f64[1] = sinval;
          v33 = v27 * *v23.f64;
          v23.f64[1] = *vbslq_s8(v29, v50, v25).i32 + v30 * v27;
          *&v23.f64[0] = vcvt_f32_f64(v23);
        }

        v34 = v27 * sinval;
        *&v23.f64[1] = v34;
        *a4 = v23;
        if (a5)
        {
          *v18 = v32;
        }

        ++v18;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v35 = -*v15.i64;
    *v15.i32 = v16;
    v51 = v15;
    v36 = a5;
    do
    {
      v37 = 214013 * *a3 + 2531011;
      v38 = HIWORD(v37) * 0.0000152590219 + HIWORD(v37) * 0.0000152590219;
      v40 = __sincos_stret(v38 * 3.14159265);
      v41 = v40.__sinval;
      *v42.f64 = v40.__cosval;
      v43 = 214013 * v37 + 2531011;
      *a3 = v43;
      *v44.i32 = v35 + HIWORD(v43) * 0.0000152590219 * Height;
      *v45.i64 = fabsf(*v44.i32) - v16;
      if (*v45.i64 <= 0.0)
      {
        *&v49.__sinval = LODWORD(v42.f64[0]);
        *&v49.__cosval = LODWORD(v41);
        *v42.f64 = Radius * *v42.f64;
      }

      else
      {
        *v45.i64 = *v45.i64 / v13;
        *v45.i32 = *v45.i64;
        v46.i64[0] = 0x8000000080000000;
        v46.i64[1] = 0x8000000080000000;
        v47 = *vbslq_s8(v46, v45, v44).i32;
        v48 = sqrtf(1.0 - (v47 * v47));
        *&v39.__sinval = v48 * *v42.f64;
        v41 = v48 * v41;
        *v42.f64 = Radius * (v48 * *v42.f64);
        v49 = v39;
        *(&v49.__sinval + 1) = v47;
        *&v49.__cosval = v41;
        *v44.i32 = *vbslq_s8(v46, v51, v44).i32 + v47 * v13;
      }

      HIDWORD(v42.f64[0]) = v44.i32[0];
      *&v42.f64[1] = Radius * v41;
      *a4 = v42;
      if (a5)
      {
        *v36 = v49;
      }

      ++v36;
      ++a4;
      --a2;
    }

    while (a2);
  }
}

uint64_t C3DCapsuleSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 1, 2.0);
  C3DParametricGeometrySetIntValue(a1, 15, 48);
  C3DParametricGeometrySetIntValue(a1, 16, 24);

  return C3DParametricGeometrySetIntValue(a1, 12, 1);
}

uint64_t C3DCapsuleHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 7;
  a2[1] = a1[75];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[71];
  a2[5] = a1[72];
  a2[6] = a1[67];
  a2[7] = a1[77];
  return 32;
}

float32x4_t C3DTorusGetBoundingBoxForTorusParameters(uint64_t a1, uint64_t a2, float32x4_t result, float64_t a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5.f64[0] = *result.i64 + a4;
    v5.f64[1] = a4;
    v6 = vcvt_f32_f64(v5);
    v7 = vcvt_hight_f32_f64(v6, v5);
    result = vnegq_f32(v7);
    *(a1 + 8) = result.i32[2];
    *a1 = result.i64[0];
    *(a2 + 8) = v6.i32[0];
    *a2 = v7.i64[0];
  }

  return result;
}

float C3DTorusGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 252);
    v5 = vadd_f32(vdup_lane_s32(v4, 1), v4);
    v6.i64[0] = __PAIR64__(v4.u32[1], v5.u32[0]);
    *&v6.u32[2] = v5;
    v7 = vnegq_f32(v6);
    *(a2 + 8) = v7.i32[2];
    result = vaddv_f32(v4);
    *a2 = v7.i64[0];
    *(a3 + 8) = result;
    *a3 = v6.i64[0];
  }

  return result;
}

BOOL C3DTorusGetBoundingSphereForTorusParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = a2 + a3;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DTorusGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = *(a1 + 256) + *(a1 + 252);
    *a2 = v2;
  }

  return a2 != 0;
}

void C3DTorusGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  RingRadius = C3DParametricGeometryGetRingRadius(a1);
  PipeRadius = C3DParametricGeometryGetPipeRadius(a1);
  v14 = PipeRadius;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v15 = a5;
      do
      {
        v16 = 214013 * *a3 + 2531011;
        v17 = HIWORD(v16) * 0.0000152590219 + HIWORD(v16) * 0.0000152590219;
        v18 = __sincos_stret(v17 * 3.14159265);
        sinval = v18.__sinval;
        cosval = v18.__cosval;
        v21 = 214013 * v16 + 2531011;
        v22 = sqrt(HIWORD(v21) * 0.0000152590219) * v14;
        v23 = RingRadius + cosval * v22;
        *&v22 = v22 * sinval;
        v43 = sinval;
        v44 = LODWORD(v22);
        v24 = 214013 * v21 + 2531011;
        *a3 = v24;
        *&v22 = HIWORD(v24) * 0.0000152590219 + HIWORD(v24) * 0.0000152590219;
        v25 = __sincos_stret(*&v22 * 3.14159265);
        v26 = v25.__sinval;
        *&v27 = v25.__cosval;
        *&v28 = v23 * *&v27;
        DWORD1(v28) = v44;
        *(&v28 + 2) = v23 * v26;
        *a4 = v28;
        if (a5)
        {
          *&v27 = cosval * *&v27;
          *(&v27 + 1) = v43;
          *(&v27 + 2) = cosval * v26;
          *v15 = v27;
        }

        ++v15;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else
  {
    v42 = PipeRadius;
    if (a2 >= 1)
    {
      v29 = a5;
      do
      {
        v30 = 214013 * *a3 + 2531011;
        v31 = HIWORD(v30) * 0.0000152590219 + HIWORD(v30) * 0.0000152590219;
        v33 = __sincos_stret(v31 * 3.14159265);
        *&v32 = v33.__sinval;
        v45 = v32;
        v34 = v33.__cosval;
        v35 = 214013 * v30 + 2531011;
        *a3 = v35;
        *&v32 = HIWORD(v35) * 0.0000152590219 + HIWORD(v35) * 0.0000152590219;
        v36 = __sincos_stret(*&v32 * 3.14159265);
        v37 = v36.__sinval;
        *&v38 = v36.__cosval;
        v39.f64[0] = RingRadius + v34 * v14;
        HIDWORD(v40) = HIDWORD(v45);
        *&v39.f64[1] = v45;
        *&v40 = vcvt_f32_f64(v39);
        v41 = v38;
        *(&v41 + 1) = v42;
        *&v41 = vmul_f32(*&v41, *&v40);
        *(&v41 + 2) = v37 * *&v40;
        *a4 = v41;
        if (a5)
        {
          *&v40 = v34 * *&v38;
          *(&v40 + 2) = v34 * v37;
          *v29 = v40;
        }

        ++v29;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }
}

float C3DParametricGeometryGetRingRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 252);
}

float C3DParametricGeometryGetPipeRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 256);
}

uint64_t C3DTorusSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 9, 0.5);
  C3DParametricGeometrySetFloatValue(a1, 10, 0.25);
  C3DParametricGeometrySetIntValue(a1, 17, 48);
  C3DParametricGeometrySetIntValue(a1, 18, 24);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DTorusHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 8;
  a2[1] = a1[75];
  a2[2] = a1[63];
  a2[3] = a1[64];
  a2[4] = a1[73];
  a2[5] = a1[74];
  a2[6] = a1[65];
  a2[7] = a1[77];
  return 32;
}

uint64_t _C3DParametricGeometryCreate(__int128 *a1, __int128 *a2, int a3)
{
  if (C3DParametricGeometryGetTypeID_onceToken != -1)
  {
    C3DParametricGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParametricGeometryGetTypeID_typeID, 352);
  v7 = C3DGeometryInit(Instance);
  if (a3)
  {
    Default = C3DMaterialCreateDefault(v7);
    C3DGeometryAppendMaterial(Instance, Default);
    CFRelease(Default);
  }

  *(Instance + 120) = kC3DParametricGeometryValidationCallBacks;
  v9 = (Instance + 312);
  if (a2)
  {
    v10 = *a2;
    v11 = a2[2];
    *(Instance + 328) = a2[1];
    *(Instance + 344) = v11;
    *v9 = v10;
    C3DParametricGeometrySetIntValue(Instance, 20, 0);
    if (!a1)
    {
LABEL_12:
      (*(Instance + 336))(Instance);
      return Instance;
    }
  }

  else
  {
    *(Instance + 328) = 0u;
    *(Instance + 344) = 0u;
    *v9 = 0u;
    C3DParametricGeometrySetIntValue(Instance, 20, 0);
    if (!a1)
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _C3DParametricGeometryCreate_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }

      goto LABEL_12;
    }
  }

  v12 = *a1;
  *(Instance + 232) = a1[1];
  *(Instance + 216) = v12;
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[5];
  *(Instance + 280) = a1[4];
  *(Instance + 296) = v15;
  *(Instance + 264) = v14;
  *(Instance + 248) = v13;
  return Instance;
}

void C3DParametricGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DGeometryCopy(a1, a2);
  if (*(a1 + 312))
  {
    v4 = *(a1 + 312);
    v5 = *(a1 + 344);
    *(a2 + 328) = *(a1 + 328);
    *(a2 + 344) = v5;
    *(a2 + 312) = v4;
  }

  v6 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v6;
  v7 = *(a1 + 248);
  v8 = *(a1 + 264);
  v9 = *(a1 + 296);
  *(a2 + 280) = *(a1 + 280);
  *(a2 + 296) = v9;
  *(a2 + 264) = v8;
  *(a2 + 248) = v7;
  os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
  v10 = *(a1 + 64);
  v11 = *(a1 + 360);
  if ((v10 != 0) == (v11 == 0))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryCopy_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v10)
  {
LABEL_6:
    C3DGeometrySetMesh(a2, v10);
    v20 = CFRetain(v11);
    *(a2 + 360) = v20;
    _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(v20);
  }

LABEL_7:
  os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
}

void _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(void *key)
{
  Value = CFDictionaryGetValue(_C3DParametricGeometryCacheRetainCounts, key);
  if (!Value)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, key, Value + 1);
}

uint64_t _C3DParametricGeometryFloatPtr(uint64_t a1, int a2)
{
  v2 = a1 + 252;
  v3 = a1 + 256;
  v4 = a1 + 260;
  if (a2 != 21)
  {
    v4 = 0;
  }

  if (a2 != 10)
  {
    v3 = v4;
  }

  if (a2 != 9)
  {
    v2 = v3;
  }

  v5 = a1 + 240;
  v6 = a1 + 244;
  v7 = a1 + 248;
  if (a2 != 8)
  {
    v7 = 0;
  }

  if (a2 != 7)
  {
    v6 = v7;
  }

  if (a2 != 6)
  {
    v5 = v6;
  }

  if (a2 <= 8)
  {
    v2 = v5;
  }

  v8 = a1 + 228;
  v9 = a1 + 232;
  v10 = a1 + 236;
  if (a2 != 5)
  {
    v10 = 0;
  }

  if (a2 != 4)
  {
    v9 = v10;
  }

  if (a2 != 3)
  {
    v8 = v9;
  }

  v11 = a1 + 216;
  v12 = a1 + 220;
  v13 = a1 + 224;
  if (a2 != 2)
  {
    v13 = 0;
  }

  if (a2 != 1)
  {
    v12 = v13;
  }

  if (a2)
  {
    v11 = v12;
  }

  if (a2 <= 2)
  {
    v8 = v11;
  }

  if (a2 <= 5)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

uint64_t C3DParametricGeometrySetFloatValue(uint64_t a1, int a2, double a3)
{
  result = _C3DParametricGeometryFloatPtr(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      __Invalidate(a1);
      v7 = a3;
      *v6 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t _C3DParametricGeometryIntPtr(uint64_t a1, int a2)
{
  v2 = a1 + 300;
  v3 = a1 + 280;
  v4 = a1 + 304;
  if (a2 != 22)
  {
    v4 = 0;
  }

  if (a2 != 23)
  {
    v3 = v4;
  }

  if (a2 != 20)
  {
    v2 = v3;
  }

  v5 = a1 + 288;
  v6 = a1 + 292;
  v7 = a1 + 296;
  if (a2 != 18)
  {
    v7 = 0;
  }

  if (a2 != 17)
  {
    v6 = v7;
  }

  if (a2 != 16)
  {
    v5 = v6;
  }

  if (a2 <= 19)
  {
    v2 = v5;
  }

  v8 = a1 + 272;
  v9 = a1 + 276;
  v10 = a1 + 284;
  if (a2 != 15)
  {
    v10 = 0;
  }

  if (a2 != 14)
  {
    v9 = v10;
  }

  if (a2 != 13)
  {
    v8 = v9;
  }

  v11 = a1 + 264;
  v12 = a1 + 268;
  if (a2 != 12)
  {
    v12 = 0;
  }

  if (a2 != 11)
  {
    v11 = v12;
  }

  if (a2 <= 12)
  {
    v8 = v11;
  }

  if (a2 <= 15)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

int *C3DParametricGeometryGetIntValue(uint64_t a1, int a2)
{
  result = _C3DParametricGeometryIntPtr(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t C3DParametricGeometrySetIntValue(uint64_t a1, int a2, uint64_t a3)
{
  result = _C3DParametricGeometryIntPtr(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      __Invalidate(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

BOOL C3DParametricGeometryIsHemispheric(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 304) == 2;
}

void C3DParametricGeometrySetHemispheric(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 304) = 2;
  __Invalidate(a1);
}

BOOL C3DParametricGeometryIsGeodesic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 304) == 1;
}

void C3DParametricGeometrySetGeodesic(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryIsHemispheric_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 304) = a2;
  __Invalidate(a1);
}

void C3DParametricGeometrySetChamferRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 228) != a2)
  {
    *(a1 + 228) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetChamferSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 276);
}

void C3DParametricGeometrySetChamferSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 276) != a2)
  {
    *(a1 + 276) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetHeight(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 220) != a2)
  {
    *(a1 + 220) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetHeightSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 268);
}

void C3DParametricGeometrySetHeightSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 268) != a2)
  {
    *(a1 + 268) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetLength(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetLengthSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 272);
}

void C3DParametricGeometrySetLengthSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 272) != a2)
  {
    *(a1 + 272) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetPrimitiveType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 300);
}

void C3DParametricGeometrySetPrimitiveType(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 300) != a2)
  {
    *(a1 + 300) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetWidth(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != a2)
  {
    *(a1 + 216) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetWidthSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 264);
}

void C3DParametricGeometrySetWidthSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 264) != a2)
  {
    *(a1 + 264) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetCapRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != a2)
  {
    *(a1 + 232) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetCapSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 288);
}

void C3DParametricGeometrySetCapSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a2 & ~(a2 >> 31);
  if (v12 != *(a1 + 288))
  {
    *(a1 + 288) = v12;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetRadialSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 284);
}

void C3DParametricGeometrySetRadialSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 284) != a2)
  {
    *(a1 + 284) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetBottomRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 240) != a2)
  {
    *(a1 + 240) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetTopRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 236) != a2)
  {
    *(a1 + 236) = a2;
    __Invalidate(a1);
  }
}

float C3DParametricGeometryGetRadialSpan(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 260);
}

void C3DParametricGeometrySetRadialSpan(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 260) != a2)
  {
    *(a1 + 260) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 280);
}

void C3DParametricGeometrySetSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 280) != a2)
  {
    *(a1 + 280) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetPipeRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 256) != a2)
  {
    *(a1 + 256) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetPipeSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 296);
}

void C3DParametricGeometrySetPipeSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 296) != a2)
  {
    *(a1 + 296) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetRingRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 252) != a2)
  {
    *(a1 + 252) = a2;
    __Invalidate(a1);
  }
}

uint64_t C3DParametricGeometryGetRingSegmentCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 292);
}

void C3DParametricGeometrySetRingSegmentCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 292) != a2)
  {
    *(a1 + 292) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetInnerRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 244) != a2)
  {
    *(a1 + 244) = a2;
    __Invalidate(a1);
  }
}

void C3DParametricGeometrySetOuterRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 248) != a2)
  {
    *(a1 + 248) = a2;
    __Invalidate(a1);
  }
}

void _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe()
{
  if (!_C3DParametricGeometryMeshCache)
  {
    v0 = *MEMORY[0x277CBECE8];
    v1 = MEMORY[0x277CBF138];
    _C3DParametricGeometryMeshCache = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _C3DParametricGeometryCacheRetainCounts = CFDictionaryCreateMutable(v0, 0, v1, 0);
  }
}

void _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(uint64_t a1)
{
  _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe();
  v2 = *(a1 + 360);
  if (v2)
  {
    Value = CFDictionaryGetValue(_C3DParametricGeometryCacheRetainCounts, *(a1 + 360));
    v4 = Value;
    if (Value)
    {
      if (Value == 1)
      {
        CFDictionaryRemoveValue(_C3DParametricGeometryMeshCache, v2);
        CFDictionaryRemoveValue(_C3DParametricGeometryCacheRetainCounts, v2);
LABEL_8:
        CFRelease(*(a1 + 360));
        *(a1 + 360) = 0;
        return;
      }
    }

    else
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        _C3DParametricGeometryReleaseCachedMesh_not_thread_safe_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, v2, v4 - 1);
    goto LABEL_8;
  }
}

id _C3DParametricGeometryCFFinalize(__C3DGeometry *a1)
{
  if (a1[1].var10.var3)
  {
    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
  }

  return _C3DGeometryCFFinalize(a1);
}

__CFString *_C3DParametricGeometryCFCopyDebugDescription(const void *a1)
{
  memset(__s1, 0, sizeof(__s1));
  C3DParametricGeometryGetCallbacks(a1, __s1);
  if (!memcmp(__s1, kC3DBoxCallBacks, 0x30uLL))
  {
    v2 = @"Box";
  }

  else if (!memcmp(__s1, kC3DPyramidCallBacks, 0x30uLL))
  {
    v2 = @"Pyramid";
  }

  else if (!memcmp(__s1, kC3DCylinderCallBacks, 0x30uLL))
  {
    v2 = @"Cylinder";
  }

  else if (!memcmp(__s1, kC3DConeCallBacks, 0x30uLL))
  {
    v2 = @"Cone";
  }

  else if (!memcmp(__s1, kC3DTubeCallBacks, 0x30uLL))
  {
    v2 = @"Tube";
  }

  else if (!memcmp(__s1, kC3DCapsuleCallBacks, 0x30uLL))
  {
    v2 = @"Capsule";
  }

  else if (!memcmp(__s1, kC3DTorusCallBacks, 0x30uLL))
  {
    v2 = @"Torus";
  }

  else if (!memcmp(__s1, kC3DSphereCallBacks, 0x30uLL))
  {
    v2 = @"Sphere";
  }

  else if (!memcmp(__s1, kC3DPlaneCallBacks, 0x30uLL))
  {
    v2 = @"Plane";
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DGeometryGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<%@<%@>:%p %@\n", v4, v2, a1, Name);
  Mesh = C3DGeometryGetMesh(a1);
  CFStringAppendFormat(Mutable, 0, @"  mesh: %@\n", Mesh);
  if (C3DGeometryGetMaterialsCount(a1) >= 1)
  {
    v8 = 0;
    do
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v8);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v8++, MaterialAtIndex);
    }

    while (v8 < C3DGeometryGetMaterialsCount(a1));
  }

  CFStringAppend(Mutable, @">");
  CFRelease(v4);
  return Mutable;
}

uint64_t _C3DParametricGeometryGetBoundingBox(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    v6 = *(a1 + 320);
    if (v6)
    {
      return v6();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _C3DParametricGeometryGetBoundingSphere(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void _C3DParametricGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  __Invalidate(a1);
}

uint64_t _C3DParametricGeometryCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = _C3DParametricGeometryCreate((a1 + 216), 0, 0);
  C3DParametricGeometryCopy(a1, v10);
  return v10;
}

uint64_t C3DGLSLProfileBindPassInputs(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v101 = *MEMORY[0x277D85DE8];
  RendererElementState = C3DEngineContextGetRendererElementState(a1);
  x = C3DRendererElementStateGetActiveTextureUnit(RendererElementState);
  if (*(a3 + 520) >= 1)
  {
    v92 = a4;
    v9 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    v95 = a5;
    v15 = a2;
    while (1)
    {
      v16 = *(*(a3 + 512) + 8 * v9);
      RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
      if (C3DSubdivisionGetPathTypeSupportsSingleCrease(*(v16 + 32)))
      {
        goto LABEL_103;
      }

      UniformIndex = *(v16 + 40);
      if (UniformIndex == -2)
      {
        goto LABEL_103;
      }

      if (UniformIndex == -1)
      {
        v19 = *(v16 + 48);
        if (!v19)
        {
          goto LABEL_68;
        }

        UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v15, v19);
        UniformIndex = C3DFXGLSLProgramObjectGetUniformIndex(v15, UniformLocationOfSymbolNamed);
      }

      else
      {
        UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocation(v15, *(v16 + 40));
      }

      if (UniformLocationOfSymbolNamed == -1)
      {
        goto LABEL_68;
      }

      if (a5)
      {
        v21 = *(v16 + 48);
        if (v21)
        {
          if (*(v16 + 40) != -1)
          {
            v22 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v15, v21);
            if (v22 != UniformLocationOfSymbolNamed)
            {
              if (v22 == -1)
              {
                v60 = scn_default_log();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v89 = *(v16 + 48);
                  buf.columns[0].i32[0] = 138412290;
                  *(buf.columns[0].i64 + 4) = v89;
                  _os_log_error_impl(&dword_21BEF7000, v60, OS_LOG_TYPE_ERROR, "Error: wrong location returned for input named %@", &buf, 0xCu);
                }

LABEL_68:
                *(v16 + 40) = -2;
                goto LABEL_103;
              }

              v33 = C3DFXGLSLProgramObjectGetUniformIndex(v15, UniformLocationOfSymbolNamed);
              *(v16 + 40) = v33;
              v34 = scn_default_log();
              v35 = v34;
              if (v33 == -1)
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v64 = *(v16 + 48);
                  buf.columns[0].i32[0] = 138412290;
                  *(buf.columns[0].i64 + 4) = v64;
                  v41 = v35;
                  v42 = "Error: can't find input named %@";
LABEL_45:
                  _os_log_error_impl(&dword_21BEF7000, v41, OS_LOG_TYPE_ERROR, v42, &buf, 0xCu);
                }

LABEL_102:
                v15 = a2;
                goto LABEL_103;
              }

              v15 = a2;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                buf.columns[0].i16[0] = 0;
                _os_log_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_DEFAULT, "Warning: the same program is shared by two passes but indexed in a different manner", &buf, 2u);
              }
            }
          }
        }
      }

      v23 = *(v16 + 16);
      if (*(v16 + 32))
      {
        break;
      }

      if (v23 == 3)
      {
        UserInfo = C3DEngineContextGetUserInfo(a1);
        RootNode = C3DFXPassGetRootNode(a3);
        if (RootNode)
        {
          ObjCWrapper = C3DEntityGetObjCWrapper(RootNode);
        }

        else
        {
          ObjCWrapper = 0;
        }

        v61 = *(v16 + 96);
        ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2);
        v63 = ObjCWrapper;
        v15 = a2;
        (*(v61 + 16))(v61, ProgramID, UniformLocationOfSymbolNamed, v63, UserInfo);
LABEL_71:
        a5 = v95;
        goto LABEL_103;
      }

      v24 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
      if (v23 == 2)
      {
        if (a5)
        {
          v43 = C3DFXGLSLProgramObjectGetProgramID(a2);
          v44 = C3DGLSLGetUniformType(RendererContextGL, v43, UniformLocationOfSymbolNamed);
          v45 = *(v16 + 20);
          if (v44 == 13)
          {
            v46 = 10;
          }

          else
          {
            v46 = v44;
          }

          if (v45 == 13)
          {
            v45 = 10;
          }

          if (v45 != v46)
          {
            v47 = scn_default_log();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v90 = *(v16 + 56);
              buf.columns[0].i32[0] = 138412290;
              *(buf.columns[0].i64 + 4) = v90;
              _os_log_error_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_ERROR, "Error: declared type doesn't match the uniform named %@", &buf, 0xCu);
            }
          }
        }

        v48 = **(v92 + 96);
        if (v48)
        {
          v49 = *(v16 + 20);
          v50 = *(v16 + 88);
          if (v49 == 5)
          {
            v51 = *(v48 + v50);
            if (!v51 || (TextureSampler = C3DFXSamplerGetTextureSampler(*(v48 + v50))) == 0)
            {
              TextureSampler = *(v16 + 72);
              if (!TextureSampler)
              {
                TextureSampler = C3DTextureSamplerBilinearNoAnisotropy();
              }

              if (!v51)
              {
                goto LABEL_100;
              }
            }

            Image = C3DFXSamplerGetImage(v51);
            if (Image)
            {
              v54 = Image;
              ResourceManager = C3DEngineContextGetResourceManager(a1);
              ImageResident = C3DResourceManagerMakeImageResident(ResourceManager, v54, TextureSampler, RendererContextGL);
            }

            else
            {
LABEL_100:
              ImageResident = 0;
            }

            a5 = v95;
            C3DRendererContextBindTexture(RendererContextGL, ImageResident, TextureSampler, 0, x);
            C3DRendererContextSetIntUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, x++);
          }

          else
          {
            C3DRendererContextSetTypedBytesUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, v49, (v48 + v50), *(v16 + 24));
          }
        }

        goto LABEL_102;
      }

      if (v23 == 1)
      {
        goto LABEL_21;
      }

LABEL_103:
      if (++v9 >= *(a3 + 520))
      {
        return C3DRendererElementStateSetActiveTextureUnit(RendererElementState, x);
      }
    }

    v24 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
    if (v23 != 1)
    {
      memset(&buf, 0, sizeof(buf));
      memset(&v99, 0, sizeof(v99));
      v25 = C3DEngineContextGetRendererContextGL(a1);
      switch(*(v16 + 32))
      {
        case 6:
          memset(&value, 0, sizeof(value));
          Matrix4x4 = C3DEngineContextGetMatrix4x4(a1, 1);
          v27 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v27, Matrix4x4, &buf);
          v28 = C3DEngineContextGetMatrix4x4(a1, 0);
          C3DMatrix4x4Mult(&buf, v28, &value);
          goto LABEL_94;
        case 7:
          v76 = C3DEngineContextGetMatrix4x4(a1, 1);
          v77 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v77, v76, &buf);
          goto LABEL_87;
        case 8:
          v65 = a1;
          v66 = 2;
          goto LABEL_84;
        case 9:
          v65 = a1;
          v66 = 1;
          goto LABEL_84;
        case 0xA:
          v65 = a1;
          v66 = 0;
LABEL_84:
          v72 = C3DEngineContextGetMatrix4x4(v65, v66);
          v73 = *(v16 + 24);
          goto LABEL_99;
        case 0xB:
          memset(&value, 0, sizeof(value));
          C3DEngineContextComputeNormalMatrix(a1, &value);
          goto LABEL_89;
        case 0xC:
          memset(&value, 0, sizeof(value));
          v83 = C3DEngineContextGetMatrix4x4(a1, 1);
          v84 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v84, v83, &buf);
          v85 = C3DEngineContextGetMatrix4x4(a1, 0);
          C3DMatrix4x4Mult(&buf, v85, &value);
          C3DMatrix4x4Invert(&value, &value);
LABEL_94:
          v78 = *(v16 + 24);
          p_value = &value;
          goto LABEL_95;
        case 0xD:
          v74 = C3DEngineContextGetMatrix4x4(a1, 1);
          v75 = C3DEngineContextGetMatrix4x4(a1, 2);
          C3DMatrix4x4Mult(v75, v74, &buf);
          C3DMatrix4x4Invert(&buf, &buf);
LABEL_87:
          v78 = *(v16 + 24);
          p_value = &buf;
LABEL_95:
          C3DRendererContextSetMatrix4x4UniformAtLocation(v25, UniformLocationOfSymbolNamed, p_value, v78);
          goto LABEL_102;
        case 0xE:
          v70 = a1;
          v71 = 2;
          goto LABEL_98;
        case 0xF:
          v70 = a1;
          v71 = 1;
          goto LABEL_98;
        case 0x10:
          v70 = a1;
          v71 = 0;
LABEL_98:
          v86 = C3DEngineContextGetMatrix4x4(v70, v71);
          C3DMatrix4x4Invert(v86, &v99);
          v73 = *(v16 + 24);
          v72 = &v99;
          goto LABEL_99;
        case 0x11:
          memset(&value, 0, sizeof(value));
          C3DEngineContextComputeNormalMatrix(a1, &value);
          C3DMatrix4x4Invert(&value, &value);
LABEL_89:
          v73 = *(v16 + 24);
          v72 = &value;
LABEL_99:
          C3DRendererContextSetMatrix4x4UniformAtLocation(v25, UniformLocationOfSymbolNamed, v72, v73);
          break;
        case 0x12:
          FXContext = C3DEngineContextGetFXContext(a1);
          OutputFramebuffer = C3DFXContextGetOutputFramebuffer(FXContext);
          if (OutputFramebuffer)
          {
            *&v69 = C3DFramebufferGetSize(OutputFramebuffer);
          }

          else
          {
            Viewport = C3DEngineContextGetViewport(a1);
            v69 = vextq_s8(Viewport, Viewport, 8uLL).u64[0];
          }

          *value.columns[0].f32 = vdiv_f32(_D8, vmaxnm_f32(v69, _D8));
          C3DRendererContextSetVector2UniformAtLocation(v25, UniformLocationOfSymbolNamed, &value, *(v16 + 24));
          break;
        case 0x13:
          SystemTime = C3DEngineContextGetSystemTime(a1);
          v81 = *&_bindSemanticUniform_t0;
          if (*&_bindSemanticUniform_t0 == 0.0)
          {
            _bindSemanticUniform_t0 = *&SystemTime;
            v81 = SystemTime;
          }

          v82 = SystemTime - v81;
          value.columns[0].f32[0] = v82;
          C3DRendererContextSetFloatUniformAtLocation(v25, UniformLocationOfSymbolNamed, &value, *(v16 + 24));
          break;
        default:
          goto LABEL_103;
      }

      goto LABEL_103;
    }

LABEL_21:
    v29 = C3DEngineContextGetFXContext(a1);
    if (*(v16 + 80))
    {
      v32 = v29[16];
      if (v32)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((*(v16 + 80) & 2) == 0)
      {
        v30 = *(v16 + 32);
        if (v30 == 28)
        {
          OutputDepthTexture = C3DFXContextGetOutputDepthTexture(v29, a1);
        }

        else if (v30 == 20)
        {
          OutputDepthTexture = C3DFXContextGetOutputColorTexture(v29, a1);
        }

        else
        {
          OutputDepthTexture = C3DFramebufferRegistryGetTextureWithName(v29[30], *(v16 + 56));
        }

LABEL_34:
        if (OutputDepthTexture)
        {
          v93 = OutputDepthTexture;
          v36 = *(v16 + 72);
          if (!v36)
          {
            v36 = C3DTextureSamplerBilinearNoAnisotropy();
            *(v16 + 72) = CFRetain(v36);
          }

          if (v95)
          {
            v37 = C3DFXGLSLProgramObjectGetProgramID(a2);
            if (C3DGLSLGetUniformType(RendererContextGL, v37, UniformLocationOfSymbolNamed) != 5)
            {
              v38 = scn_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v88 = *(v16 + 56);
                buf.columns[0].i32[0] = 138412290;
                *(buf.columns[0].i64 + 4) = v88;
                _os_log_error_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_ERROR, "Error: declared type doesn't match the uniform named %@", &buf, 0xCu);
              }
            }
          }

          C3DRendererContextSetIntUniformAtLocation(RendererContextGL, UniformLocationOfSymbolNamed, x);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(a2, UniformIndex, x);
          C3DRendererContextBindTexture(RendererContextGL, v93, v36, 0, x++);
          v15 = a2;
          goto LABEL_71;
        }

        goto LABEL_42;
      }

      v32 = v29[17];
      if (v32)
      {
LABEL_33:
        OutputDepthTexture = *(v32 + 24);
        goto LABEL_34;
      }
    }

LABEL_42:
    if ((*(v24 + 345) & 1) == 0)
    {
      *(v24 + 345) = 1;
      v39 = scn_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(v16 + 56);
        buf.columns[0].i32[0] = 138412290;
        *(buf.columns[0].i64 + 4) = v40;
        v41 = v39;
        v42 = "Error: failed to find texture target named %@";
        goto LABEL_45;
      }

      goto LABEL_102;
    }

    goto LABEL_103;
  }

  return C3DRendererElementStateSetActiveTextureUnit(RendererElementState, x);
}

void C3DGLSLProfileBindProfileInputs(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    PassCount = C3DFXTechniqueGetPassCount(a3);
    if (PassCount >= 1)
    {
      v7 = PassCount;
      for (i = 0; i != v7; ++i)
      {
        PassAtIndex = C3DFXTechniqueGetPassAtIndex(a3, i);
        C3DGLSLProfileBindPassInputs(a1, a2, PassAtIndex, a3, 0);
      }
    }
  }

  else if ((C3DGLSLProfileBindProfileInputs_done & 1) == 0)
  {
    C3DGLSLProfileBindProfileInputs_done = 1;
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      C3DGLSLProfileBindProfileInputs_cold_1(v10);
    }
  }
}

uint64_t C3DValueGetTypeID()
{
  if (C3DValueGetTypeID_onceToken != -1)
  {
    C3DValueGetTypeID_cold_1();
  }

  return C3DValueGetTypeID_typeID;
}

uint64_t __C3DValueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DValueGetTypeID_typeID = result;
  qword_28173FEA8 = _C3DValueCopyInstanceVariables;
  return result;
}

uint64_t C3DValueCreate(int a1, uint64_t a2)
{
  if (!a2 || a1 && !C3DSizeOfBaseType(a1))
  {
    return 0;
  }

  if (C3DValueGetTypeID_onceToken != -1)
  {
    C3DValueGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DValueGetTypeID_typeID, 24);
  v5 = Instance;
  *(Instance + 18) = 0;
  *(Instance + 16) = a1;
  *(Instance + 32) = a2;
  if (a1)
  {
    Length = C3DValueGetLength(Instance);
    *(v5 + 24) = malloc_type_calloc(Length, 1uLL, 0xD6FAB170uLL);
  }

  return v5;
}

uint64_t C3DValueGetLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32) * C3DSizeOfBaseType(*(a1 + 16));
}

uint64_t C3DValueCreateDefault(int a1)
{
  v2 = C3DValueCreate(a1, 1);
  v3 = v2;
  if (a1 == 11)
  {
    Bytes = C3DValueGetBytes(v2);
    C3DMatrix4x4MakeIdentity(Bytes);
  }

  return v3;
}

uint64_t C3DValueGetBytes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DValueGetType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DValueGetTypeSemantic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 18);
}

CFTypeRef C3DValueInitFrom(uint64_t a1, const void *a2)
{
  if (C3DValueGetTypeSemantic(a1) == 1)
  {
    Bytes = C3DValueGetBytes(a1);
    if (*Bytes)
    {
      CFRelease(*Bytes);
      *Bytes = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *Bytes = result;
  }

  else
  {
    Length = C3DValueGetLength(a1);
    v7 = C3DValueGetBytes(a1);

    return memcpy(v7, a2, Length);
  }

  return result;
}

size_t C3DValueCopyTo(uint64_t a1, void *a2)
{
  Length = C3DValueGetLength(a1);
  Bytes = C3DValueGetBytes(a1);
  memcpy(a2, Bytes, Length);
  return Length;
}

void CFStringScanFloats(const char *a1, int *a2, int a3)
{
  if (a3)
  {
    CString = SCNStringGetCString(a1);
    if (a3 >= 1)
    {
      v6 = CString;
      v7 = 0;
      v8 = MEMORY[0x277D85DE0];
      while (1)
      {
        v19 = 0;
        v9 = strtod(v6, &v19);
        *&v9 = v9;
        a2[v7] = LODWORD(v9);
        if (v6 == v19)
        {
          break;
        }

        v10 = v19 - 1;
        do
        {
          v11 = v10[1];
          if ((v11 & 0x80000000) != 0)
          {
            v12 = __maskrune(v10[1], 0x4000uLL);
          }

          else
          {
            v12 = *(v8 + 4 * v11 + 60) & 0x4000;
          }

          ++v10;
        }

        while (v12);
        if (v11 == 44)
        {
          v6 = v10 + 1;
        }

        else
        {
          v6 = v10;
        }

        if (++v7 == a3)
        {
          return;
        }
      }

      if (v7 == 1 && a3 != 1)
      {
        v13 = 0;
        v15 = *a2;
        v14 = a2 + 2;
        LODWORD(v9) = v15;
        v16 = vdupq_n_s64(a3 - 2);
        do
        {
          v17 = vdupq_n_s64(v13);
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_21C27F640)));
          if (vuzp1_s16(v18, *&v9).u8[0])
          {
            *(v14 - 1) = LODWORD(v9);
          }

          if (vuzp1_s16(v18, *&v9).i8[2])
          {
            *v14 = LODWORD(v9);
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_21C27F630)))).i32[1])
          {
            v14[1] = LODWORD(v9);
            v14[2] = LODWORD(v9);
          }

          v13 += 4;
          v14 += 4;
        }

        while (((a3 + 2) & 0xFFFFFFFC) != v13);
      }
    }
  }
}

char *CFStringScanCGFloats(char *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  result = SCNStringGetCString(result);
  v10 = result;
  if (a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = a3;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    *(a2 + 8 * v5) = strtod(v10, &v10);
    for (i = v10 + 1; ; ++i)
    {
      v9 = *(i - 1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      result = (*(v7 + 4 * v9 + 60) & 0x4000);
      if (!result)
      {
        goto LABEL_10;
      }

LABEL_9:
      v10 = i;
    }

    result = __maskrune(*(i - 1), 0x4000uLL);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v9 == 44)
    {
      v10 = i;
    }

    ++v5;
  }

  while (v5 != v6);
  return result;
}

CFStringRef C3DStringCreateSubstringAfterPrefix(const __CFString *a1, const __CFString *a2)
{
  v3 = CFStringFind(a1, a2, 0);
  if (v3.location == -1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1) - (v3.location + v3.length);
  if (v4.length < 1)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];

  v4.location = v3.location + v3.length;
  return CFStringCreateWithSubstring(v5, a1, v4);
}

BOOL C3DValueSetValueFromString(uint64_t a1, const __CFString *a2)
{
  Bytes = C3DValueGetBytes(a1);
  v5 = *(a1 + 16);
  if (v5 > 7)
  {
    switch(v5)
    {
      case 8u:
        v10 = 0;
        *&v24 = 0;
        SubstringAfterPrefix = C3DStringCreateSubstringAfterPrefix(a2, @"vec2(");
        if (SubstringAfterPrefix)
        {
          v12 = SubstringAfterPrefix;
          CFStringScanFloats(SubstringAfterPrefix, &v24, 2);
          CFRelease(v12);
          v10 = v24;
        }

        *Bytes = v10;
        return 1;
      case 9u:
        v24 = 0uLL;
        v22 = C3DStringCreateSubstringAfterPrefix(a2, @"vec3(");
        if (v22)
        {
          v23 = v22;
          CFStringScanFloats(v22, &v24, 3);
          CFRelease(v23);
        }

        *Bytes = v24;
        *(Bytes + 8) = DWORD2(v24);
        return 1;
      case 0xAu:
        v24 = 0uLL;
        v7 = C3DStringCreateSubstringAfterPrefix(a2, @"vec4(");
        if (v7)
        {
          v8 = v7;
          CFStringScanFloats(v7, &v24, 4);
          CFRelease(v8);
        }

        *Bytes = v24;
        return 1;
    }

    goto LABEL_17;
  }

  switch(v5)
  {
    case 1u:
      DoubleValue = CFStringGetDoubleValue(a2);
      *Bytes = DoubleValue;
      return 1;
    case 2u:
      *Bytes = CFStringGetIntValue(a2);
      return 1;
    case 3u:
      if (CFStringCompare(a2, @"true", 0))
      {
        v6 = 1;
      }

      else if (CFStringCompare(a2, @"false", 0))
      {
        v6 = 0;
      }

      else
      {
        v6 = CFStringGetIntValue(a2) != 0;
      }

      *Bytes = v6;
      return 1;
  }

LABEL_17:
  v13 = scn_default_log();
  result = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (result)
  {
    C3DValueSetValueFromString_cold_1(v13, v15, v16, v17, v18, v19, v20, v21);
    return 0;
  }

  return result;
}

float32_t C3DValueConcat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DValueConcat_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DValueConcat_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  Type = C3DValueGetType(a1);
  if (Type != C3DValueGetType(a2))
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  if (Type != C3DValueGetType(a3))
  {
    v39 = scn_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      C3DValueConcat_cold_5(v39, v40, v41, v42, v43, v44, v45, v46);
    }
  }

  Bytes = C3DValueGetBytes(a1);
  v48 = C3DValueGetBytes(a2);
  v49 = C3DValueGetBytes(a3);
  return C3DConcatBaseType(Type, Bytes, v48, v49, v50);
}

CFStringRef _C3DValueCFCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = C3DBaseTypeStringDescription(*(a1 + 16));
  return CFStringCreateWithFormat(v2, 0, @"<C3DValue %p - %@ ptr:%p >", a1, v3, *(a1 + 24));
}

__CFArray *_C3DValueCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  valuePtr = 2;
  v17 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v3, @"name", @"baseType");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  valuePtr = 2;
  v17 = a1 + 32;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v7, @"name", @"count");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = *(a1 + 16);
  v18 = 0;
  valuePtr = v12;
  v17 = *(a1 + 24);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v18);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v17);
  CFDictionarySetValue(v11, @"name", @"value");
  CFDictionarySetValue(v11, @"type", v13);
  CFDictionarySetValue(v11, @"address", v15);
  CFDictionarySetValue(v11, @"semantic", v14);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v14);
  CFRelease(v11);
  CFRelease(v15);
  CFRelease(v13);
  return Mutable;
}

void _C3DFXSamplerCFFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t __C3DFXSamplerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXSamplerGetTypeID_typeID = result;
  qword_2817430A8 = _C3DFXSamplerCopyInstanceVariables;
  return result;
}

uint64_t C3DFXSamplerCreate()
{
  if (C3DFXSamplerGetTypeID_onceToken != -1)
  {
    C3DFXSamplerCreate_cold_1();
  }

  v1 = C3DFXSamplerGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 24);
}

CFTypeRef C3DFXSamplerSetTextureSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetTextureSampler(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

CFTypeRef C3DFXSamplerSetImage(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetImage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DFXSamplerSetTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t C3DFXSamplerGetTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXSamplerSetTextureSampler_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

CFStringRef _C3DFXSamplerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXSampler>");
}

CFStringRef _C3DFXSamplerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXSampler>");
}

__CFArray *_C3DFXSamplerCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 2;
  valuePtr = 5;
  v12 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v3, @"name", @"sampler");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = 2;
  valuePtr = 5;
  v12 = a1 + 24;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v13);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v12);
  CFDictionarySetValue(v7, @"name", @"image");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  return Mutable;
}

void __FillSetWithUVSet(uint64_t a1, __CFSet *a2, uint64_t a3)
{
  if (a3 != -1)
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 3, a3, 1);
    if (SourceWithSemanticAtIndex)
    {

      CFSetSetValue(a2, SourceWithSemanticAtIndex);
    }
  }
}

BOOL C3DNodeNeedsSpecialUpAxisConversion(uint64_t a1)
{
  result = 1;
  if ((C3DNodeHasCamera(a1) & 1) == 0)
  {
    Light = C3DNodeGetLight(a1);
    if (!Light || (C3DLightGetType(Light) & 0xFFFFFFFD) != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DIONeedsUnitOrUpAxisConversion(__n128 *a1, CFDictionaryRef theDict, int *a3, float *a4, _DWORD *a5)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToYUpIfNeeded")) == 0)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = CFBooleanGetValue(Value) != 0;
  if (a3)
  {
LABEL_6:
    *a3 = 0;
  }

LABEL_7:
  if (a4)
  {
    *a4 = 1.0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (v11)
  {
    v19.n128_u32[2] = 0;
    v19.n128_u64[0] = 0;
    C3DSceneGetUpAxis(a1, &v19);
    v12 = v19.n128_f32[1] <= 0.0001;
    if (a3 && v19.n128_f32[1] <= 0.0001)
    {
      if (v19.n128_f32[0] <= 0.0001)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      *a3 = v13;
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v19.n128_u32[0] = 0;
  if (theDict)
  {
    v14 = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToUnit");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberFloatType, &v19);
      if (v19.n128_f32[0] != 0.0)
      {
        if (a5)
        {
          *a5 = v19.n128_u32[0];
        }

        Unit = C3DSceneGetUnit(a1);
        if (Unit != 0.0 && v19.n128_f32[0] != 0.0)
        {
          v16 = Unit / v19.n128_f32[0];
          v17 = fabs(v16 + -1.0);
          if (v17 > 0.0001)
          {
            v12 = 1;
          }

          else
          {
            v12 = v12;
          }

          if (a4 && v17 > 0.0001)
          {
            *a4 = v16;
            return 1;
          }
        }
      }
    }
  }

  return v12;
}

void C3DIOFinalizeLoadScene(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v263 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v6 = a1;
  RootNode = C3DSceneGetRootNode(a1);
  if (RootNode)
  {
    C3DNodeApplyHierarchy(RootNode, &__block_literal_global_95);
  }

  v8 = MEMORY[0x277CBED28];
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kSceneSourceRemoveColorArrays");
    if (Value)
    {
      if (CFEqual(*v8, Value))
      {
        v10 = C3DSceneGetRootNode(v6);
        if (v10)
        {
          v11 = C3DNodeCopyNodesWithAttribute(v10, @"kMeshKey", 0);
          if (v11)
          {
            v12 = v11;
            Count = CFArrayGetCount(v11);
            if (Count >= 1)
            {
              v14 = Count;
              for (i = 0; i != v14; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
                Geometry = C3DNodeGetGeometry(ValueAtIndex);
                Mesh = C3DGeometryGetMesh(Geometry);
                C3DMeshRemoveSourcesWithSemantic(Mesh, 2);
              }
            }

            CFRelease(v12);
          }
        }
      }
    }

    v19 = CFDictionaryGetValue(a3, @"kSceneSourceRemoveAllLights");
    if (v19)
    {
      if (CFEqual(*v8, v19))
      {
        v20 = C3DSceneGetRootNode(v6);
        if (v20)
        {
          v21 = C3DNodeCopyNodesWithAttribute(v20, @"kLightKey", 0);
          if (v21)
          {
            v22 = v21;
            v23 = CFArrayGetCount(v21);
            if (v23 >= 1)
            {
              v24 = v23;
              for (j = 0; j != v24; ++j)
              {
                v26 = CFArrayGetValueAtIndex(v22, j);
                C3DNodeRemoveFromParentNode(v26);
              }
            }

            CFRelease(v22);
          }
        }
      }
    }

    v27 = CFDictionaryGetValue(a3, @"kSceneSourceCleanupMeshes");
    if (v27)
    {
      if (CFEqual(*v8, v27))
      {
        v28 = C3DSceneGetRootNode(v6);
        if (v28)
        {
          v29 = C3DNodeCopyNodesWithAttribute(v28, @"kMeshKey", 0);
          if (v29)
          {
            v30 = v29;
            v220 = CFArrayGetCount(v29);
            if (v220 <= 0)
            {
              CFRelease(v30);
            }

            else
            {
              v215 = a3;
              v216 = v6;
              v31 = 0;
              allocator = *MEMORY[0x277CBECE8];
              cf = v30;
              do
              {
                v221 = v31;
                v32 = CFArrayGetValueAtIndex(v30, v31);
                v33 = C3DNodeGetGeometry(v32);
                LightmapInfo = C3DNodeGetLightmapInfo(v32);
                Skinner = C3DNodeGetSkinner(v32);
                v36 = C3DGeometryGetMesh(v33);
                v37 = MEMORY[0x277CBF158];
                theSet = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
                Mutable = CFSetCreateMutable(0, 0, v37);
                valuePtr.columns[0].i32[0] = 0;
                if (LightmapInfo)
                {
                  v38 = CFDictionaryGetValue(LightmapInfo, @"uv_set");
                  if (v38)
                  {
                    CFNumberGetValue(v38, kCFNumberIntType, &valuePtr);
                    v39 = valuePtr.columns[0].i32[0];
                  }

                  else
                  {
                    v39 = 1;
                    valuePtr.columns[0].i32[0] = 1;
                  }

                  if (v39 >= C3DMeshGetSourcesCountForSemantic(v36, 3))
                  {
                    v41 = scn_default_log();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.columns[0].i32[0] = 67109120;
                      buf.columns[0].i32[1] = valuePtr.columns[0].i32[0];
                      _os_log_impl(&dword_21BEF7000, v41, OS_LOG_TYPE_DEFAULT, "Warning: light_map uv_set:%d is pointing to an invalid uv_set(no corresponding source) and was reset to 1", &buf, 8u);
                    }

                    valuePtr.columns[0].i32[0] = 1;
                    v40 = 1;
                  }

                  else
                  {
                    v40 = valuePtr.columns[0].u32[0];
                  }

                  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v36, 3, v40, 0);
                  if (SourceWithSemanticAtIndex)
                  {
                    CFSetSetValue(theSet, SourceWithSemanticAtIndex);
                  }
                }

                MaterialsCount = C3DGeometryGetMaterialsCount(v33);
                if (MaterialsCount >= 1)
                {
                  v44 = MaterialsCount;
                  for (k = 0; k != v44; ++k)
                  {
                    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v33, k);
                    CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex);
                    if (CommonProfile)
                    {
                      v48 = CommonProfile;
                      UVSet = C3DEffectCommonProfileGetUVSet(CommonProfile, 0);
                      __FillSetWithUVSet(v36, theSet, UVSet);
                      v50 = C3DEffectCommonProfileGetUVSet(v48, 1);
                      __FillSetWithUVSet(v36, theSet, v50);
                      v51 = C3DEffectCommonProfileGetUVSet(v48, 2);
                      __FillSetWithUVSet(v36, theSet, v51);
                      v52 = C3DEffectCommonProfileGetUVSet(v48, 3);
                      __FillSetWithUVSet(v36, theSet, v52);
                      v53 = C3DEffectCommonProfileGetUVSet(v48, 5);
                      __FillSetWithUVSet(v36, theSet, v53);
                      v54 = C3DEffectCommonProfileGetUVSet(v48, 7);
                      __FillSetWithUVSet(v36, theSet, v54);
                      v55 = C3DEffectCommonProfileGetUVSet(v48, 8);
                      __FillSetWithUVSet(v36, theSet, v55);
                      v56 = C3DEffectCommonProfileGetUVSet(v48, 9);
                      __FillSetWithUVSet(v36, theSet, v56);
                      v57 = C3DEffectCommonProfileGetUVSet(v48, 10);
                      __FillSetWithUVSet(v36, theSet, v57);
                      v58 = C3DEffectCommonProfileGetUVSet(v48, 11);
                      __FillSetWithUVSet(v36, theSet, v58);
                      v59 = C3DEffectCommonProfileGetUVSet(v48, 12);
                      __FillSetWithUVSet(v36, theSet, v59);
                      v60 = C3DEffectCommonProfileGetUVSet(v48, 13);
                      __FillSetWithUVSet(v36, theSet, v60);
                      v61 = C3DEffectCommonProfileGetUVSet(v48, 14);
                      __FillSetWithUVSet(v36, theSet, v61);
                      v62 = C3DEffectCommonProfileGetUVSet(v48, 15);
                      __FillSetWithUVSet(v36, theSet, v62);
                      v63 = C3DEffectCommonProfileGetUVSet(v48, 16);
                      __FillSetWithUVSet(v36, theSet, v63);
                    }
                  }
                }

                SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v36, 3);
                if (SourcesCountForSemantic >= 1)
                {
                  v65 = SourcesCountForSemantic;
                  for (m = 0; m != v65; ++m)
                  {
                    v67 = C3DMeshGetSourceWithSemanticAtIndex(v36, 3, m, 0);
                    if (v67)
                    {
                      v68 = v67;
                      if (!CFSetContainsValue(theSet, v67))
                      {
                        CFSetSetValue(Mutable, v68);
                      }
                    }
                  }
                }

                v69 = Mutable;
                CFSetApplyFunction(Mutable, __RemoveSources, v36);
                v70 = C3DGeometryGetMesh(v33);
                if (!Skinner)
                {
                  v71 = v70;
                  PositionSource = C3DMeshGetPositionSource(v70, 1);
                  v73 = C3DMeshCopyAllSources(v71, 1);
                  v74 = C3DMeshSourceGetCount(PositionSource);
                  v75 = malloc_type_malloc(8 * v74, 0x100004000313F17uLL);
                  v224 = malloc_type_malloc(8 * v74, 0x100004000313F17uLL);
                  v225 = v71;
                  v229 = v75;
                  if (v74 < 1)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    memset(v75, 255, 8 * v74);
                    v76 = 0;
                    v77 = 0;
                    v227 = v74;
                    do
                    {
                      if (v74 <= v76 + 1)
                      {
                        v78 = v76 + 1;
                      }

                      else
                      {
                        v78 = v74;
                      }

                      while (*(v75 + v76) != -1)
                      {
                        if (v78 == ++v76)
                        {
                          v76 = v78 + 1;
                          goto LABEL_69;
                        }
                      }

                      *(v75 + v76) = v77;
                      v79 = v76 + 1;
                      for (n = v77; v79 < v74; ++v79)
                      {
                        if (*(v75 + v79) == -1)
                        {
                          v80 = CFArrayGetCount(v73);
                          if (v80 < 1)
                          {
                            goto LABEL_66;
                          }

                          v81 = v80;
                          v82 = 0;
                          for (ii = 0; ii != v81; v82 = ii >= v81)
                          {
                            v84 = CFArrayGetValueAtIndex(v73, ii);
                            Accessor = C3DMeshSourceGetAccessor(v84);
                            if (Accessor)
                            {
                              v86 = Accessor;
                              ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
                              v88 = C3DSizeOfBaseType(ComponentsValueType);
                              ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v86, v76);
                              v90 = C3DSourceAccessorGetValuePtrAtIndex(v86, v79);
                              ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v86);
                              if (memcmp(ValuePtrAtIndex, v90, ComponentsCountPerValue * v88))
                              {
                                break;
                              }
                            }

                            ++ii;
                          }

                          v74 = v227;
                          v75 = v229;
                          v77 = n;
                          if (v82)
                          {
LABEL_66:
                            *(v75 + v79) = v77;
                          }
                        }
                      }

                      v71 = v225;
                      v224[v77++] = v76++;
LABEL_69:
                      ;
                    }

                    while (v76 < v74);
                  }

                  if (CFArrayGetCount(v73) >= 1)
                  {
                    v92 = 0;
                    v232 = v77;
                    do
                    {
                      v93 = CFArrayGetValueAtIndex(v73, v92);
                      InputSetForSource = C3DMeshGetInputSetForSource(v71, v93, 1);
                      v94 = C3DMeshSourceGetAccessor(v93);
                      v226 = C3DSourceAccessorGetComponentsValueType(v94);
                      v95 = C3DSizeOfBaseType(v226);
                      v96 = C3DSourceAccessorGetComponentsCountPerValue(v94);
                      v97 = v96 * v95;
                      v98 = v96 * v95 * v77;
                      if (v98)
                      {
                        v99 = malloc_type_malloc(v96 * v95 * v77, 0x100004077774924uLL);
                      }

                      else
                      {
                        v99 = 0;
                      }

                      if (v77 >= 1)
                      {
                        v100 = v224;
                        v101 = v99;
                        v102 = v232;
                        do
                        {
                          v103 = *v100++;
                          v104 = C3DSourceAccessorGetValuePtrAtIndex(v94, v103);
                          memcpy(v101, v104, v97);
                          v101 += v97;
                          --v102;
                        }

                        while (v102);
                      }

                      v105 = CFDataCreate(allocator, v99, v98);
                      Semantic = C3DMeshSourceGetSemantic(v93);
                      v107 = C3DSourceAccessorGetComponentsCountPerValue(v94);
                      Library = C3DSceneSourceGetLibrary(v94);
                      Offset = C3DSourceAccessorGetOffset(v94);
                      v77 = v232;
                      v110 = C3DMeshSourceCreateWithData(Semantic, v105, v226, v107, v232, Library, Offset);
                      CFRelease(v105);
                      free(v99);
                      v71 = v225;
                      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(v225, v110, InputSetForSource);
                      CFRelease(v110);
                      ++v92;
                    }

                    while (v92 < CFArrayGetCount(v73));
                  }

                  ElementsCount = C3DMeshGetElementsCount(v71);
                  v8 = MEMORY[0x277CBED28];
                  if (ElementsCount >= 1)
                  {
                    v112 = 0;
                    do
                    {
                      ElementAtIndex = C3DMeshGetElementAtIndex(v71, v112, 1);
                      buf.columns[0].i32[0] = 0;
                      Indexes = C3DMeshElementGetIndexes(ElementAtIndex, &buf);
                      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
                      v116 = C3DMeshElementGetIndexCountPerPrimitive(ElementAtIndex) * PrimitiveCount;
                      switch(buf.columns[0].i32[0])
                      {
                        case 4:
                          BytePtr = CFDataGetBytePtr(Indexes);
                          if (v116 >= 1)
                          {
                            do
                            {
                              *BytePtr = *(v229 + *BytePtr);
                              BytePtr += 4;
                              --v116;
                            }

                            while (v116);
                          }

                          break;
                        case 2:
                          v118 = CFDataGetBytePtr(Indexes);
                          if (v116 >= 1)
                          {
                            do
                            {
                              *v118 = *(v229 + *v118);
                              v118 += 2;
                              --v116;
                            }

                            while (v116);
                          }

                          break;
                        case 1:
                          v117 = CFDataGetBytePtr(Indexes);
                          if (v116 >= 1)
                          {
                            do
                            {
                              *v117 = *(v229 + *v117);
                              ++v117;
                              --v116;
                            }

                            while (v116);
                          }

                          break;
                        default:
                          v120 = scn_default_log();
                          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                          {
                            C3DIOFinalizeLoadScene_cold_1(&v235, v236, v120);
                          }

                          break;
                      }

                      ++v112;
                    }

                    while (v112 < C3DMeshGetElementsCount(v71));
                  }

                  CFRelease(v73);
                  free(v229);
                  free(v224);
                  v69 = Mutable;
                }

                CFRelease(v69);
                CFRelease(theSet);
                v31 = v221 + 1;
                v30 = cf;
              }

              while (v221 + 1 != v220);
              CFRelease(cf);
              a3 = v215;
              v6 = v216;
            }
          }
        }
      }
    }

    v121 = CFDictionaryGetValue(a3, @"kSceneSourceCreateCameraIfAbsent");
    if (v121)
    {
      if (CFEqual(*v8, v121))
      {
        v122 = C3DSceneGetRootNode(v6);
        if (v122)
        {
          v123 = C3DNodeCopyNodesWithAttribute(v122, @"kCameraKey", 1);
          if (!v123 || (v124 = v123, v125 = CFArrayGetCount(v123), CFRelease(v124), v125 <= 0))
          {
            v126 = C3DCreateDefaultCameraNode(v6, 1);
            if (v126)
            {
              v127 = v126;
              v128 = C3DSceneGetRootNode(v6);
              C3DNodeAddChildNode(v128, v127);
              CFRelease(v127);
            }
          }
        }
      }
    }

    v129 = CFDictionaryGetValue(a3, @"kSceneSourceCreateLightIfAbsent");
    if (v129 && CFBooleanGetValue(v129))
    {
      v130 = C3DSceneGetRootNode(v6);
      if (v130)
      {
        v131 = C3DNodeCopyNodesWithAttribute(v130, @"kLightKey", 0);
        if (v131)
        {
          v132 = v131;
          v133 = CFArrayGetCount(v131);
          if (v133 >= 1)
          {
            v134 = v133;
            v135 = 1;
            do
            {
              v136 = CFArrayGetValueAtIndex(v132, v135 - 1);
              Light = C3DNodeGetLight(v136);
              Type = C3DLightGetType(Light);
              if (v135 >= v134)
              {
                break;
              }

              ++v135;
            }

            while (!Type);
            if (!Type)
            {
              for (jj = 0; jj != v134; ++jj)
              {
                v140 = CFArrayGetValueAtIndex(v132, jj);
                v141 = C3DNodeGetLight(v140);
                Color = C3DLightGetColor(v141);
                if (((*Color + Color[1]) + Color[2]) >= 1.5)
                {
                  buf.columns[0] = 0uLL;
                  C3DColor4Make(&buf, 0.0, 0.0, 0.0, 0.0);
                  C3DLightSetColor(v141, &buf);
                }
              }
            }
          }

          CFRelease(v132);
        }
      }

      C3DSceneSetAttribute(v6, @"defaultLight", *v8);
    }

    v143 = CFDictionaryGetValue(a3, @"kSceneSourceCreateNormalsIfAbsent");
    if (v143)
    {
      if (CFEqual(*v8, v143))
      {
        v144 = C3DSceneGetRootNode(v6);
        if (v144)
        {
          C3DNodeApplyHierarchy(v144, &__block_literal_global_15);
        }
      }
    }

    v145 = CFDictionaryGetValue(a3, @"kSceneSourceAdjustInvalidClippingPlanes");
    if (v145)
    {
      if (CFEqual(*v8, v145))
      {
        v146 = C3DSceneGetRootNode(v6);
        if (v146)
        {
          v147 = v146;
          v148 = C3DNodeCopyNodesWithAttribute(v146, @"kCameraKey", 0);
          if (v148)
          {
            v149 = v148;
            v150 = CFArrayGetCount(v148);
            if (v150 > 0)
            {
              v151 = v150;
              v152 = a3;
              v153 = 0;
              v154 = 0;
              while (1)
              {
                v256 = 0u;
                v257 = 0u;
                v254 = 0u;
                v255 = 0u;
                v252 = 0u;
                v253 = 0u;
                v250 = 0u;
                v251 = 0u;
                v248 = 0u;
                v249 = 0u;
                memset(&buf, 0, sizeof(buf));
                v155 = CFArrayGetValueAtIndex(v149, v153);
                if (!v155)
                {
                  goto LABEL_149;
                }

                v156 = v155;
                if (!C3DNodeGetProjectionInfos(v155, &buf))
                {
                  goto LABEL_149;
                }

                ZFar = C3DProjectionInfosGetZFar(&buf);
                if (ZFar <= C3DProjectionInfosGetZNear(&buf))
                {
                  break;
                }

                if ((v154 & 1) == 0 && !C3DGetBoundingBox(v147, 1, &v258, &v259))
                {
                  goto LABEL_148;
                }

                v241 = 0u;
                v242 = 0u;
                memset(&valuePtr, 0, sizeof(valuePtr));
                C3DComputeFrustumPlanesFromNode(v156, &valuePtr, xmmword_21C27FDD0);
                v158.i64[0] = 0x3F0000003F000000;
                v158.i64[1] = 0x3F0000003F000000;
                v159 = vmulq_f32(vaddq_f32(v258, v259), v158);
                v160 = vmulq_f32(vsubq_f32(v259, v258), v158);
                v159.i32[3] = 1.0;
                v160.i32[3] = 0;
                v237 = valuePtr;
                v238 = v241;
                v239 = v242;
                if (scn_frustum_classify_aabb(&v237, v159, v160) == 1)
                {
                  v161 = scn_default_log();
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                  {
                    v237.columns[0].i16[0] = 0;
                    _os_log_impl(&dword_21BEF7000, v161, OS_LOG_TYPE_DEFAULT, "Warning: invalid zRange detected (whole scene clipped)", &v237, 2u);
                  }

LABEL_144:
                  Camera = C3DNodeGetCamera(v156);
                  if (Camera)
                  {
                    ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(Camera);
                    if (ProjectionInfosPtr)
                    {
                      v164 = ProjectionInfosPtr;
                      valuePtr.columns[0].i32[2] = 0;
                      valuePtr.columns[0].i64[0] = 0;
                      C3DNodeGetWorldPosition(v156, &valuePtr);
                      *v165.i64 = C3DVector3MidVector(v258, v259);
                      v166 = vsubq_f32(v258, v259);
                      v167 = vmulq_f32(v166, v166);
                      v168 = vsubq_f32(valuePtr.columns[0], v165);
                      v169 = vmulq_f32(v168, v168);
                      v170 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v167, v167, 8uLL), *&vextq_s8(v169, v169, 8uLL)), vadd_f32(vzip1_s32(*v167.i8, *v169.i8), vzip2_s32(*v167.i8, *v169.i8)))));
                      C3DProjectionInfosSetZFar(v164, v170);
                      C3DProjectionInfosSetZNear(v164, v170 / 250.0);
                    }
                  }
                }

                v154 = 1;
LABEL_149:
                if (v151 == ++v153)
                {
                  CFRelease(v149);
                  a3 = v152;
                  v8 = MEMORY[0x277CBED28];
                  goto LABEL_152;
                }
              }

              if ((v154 & 1) == 0 && !C3DGetBoundingBox(v147, 1, &v258, &v259))
              {
LABEL_148:
                v154 = 0;
                goto LABEL_149;
              }

              goto LABEL_144;
            }

            CFRelease(v149);
          }
        }
      }
    }

LABEL_152:
    v171 = CFDictionaryGetValue(a3, @"kSceneSourceMakeSourcesCheaper");
    if (v171)
    {
      if (CFBooleanGetValue(v171))
      {
        v172 = C3DSceneGetRootNode(v6);
        if (v172)
        {
          v173 = C3DNodeCopyNodesWithAttribute(v172, @"kMeshKey", 0);
          if (v173)
          {
            v174 = v173;
            v175 = a3;
            v176 = CFArrayGetCount(v173);
            if (v176 >= 1)
            {
              v177 = v176;
              for (kk = 0; kk != v177; ++kk)
              {
                v179 = CFArrayGetValueAtIndex(v174, kk);
                v180 = C3DNodeGetGeometry(v179);
                C3DNodeGetLightmapInfo(v179);
                C3DGeometryMakeSourcesCheaperWhenRelevant(v180);
              }
            }

            CFRelease(v174);
            a3 = v175;
          }
        }
      }
    }
  }

  v234 = 0;
  v233 = 0.0;
  if (C3DIONeedsUnitOrUpAxisConversion(v6, a3, &v234 + 1, &v234, &v233))
  {
    v181 = HIDWORD(v234);
    v182 = v234;
    if (HIDWORD(v234) || *&v234 != 1.0)
    {
      if (a5 == 1)
      {
        v183 = scn_default_log();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
        {
          buf.columns[0].i16[0] = 0;
          _os_log_impl(&dword_21BEF7000, v183, OS_LOG_TYPE_INFO, "Info: SCNSceneSourceConvertUnitsToMetersKey and SCNSceneSourceConvertToYUpKey have no effect on compressed assets. Use Xcode's compression options instead", &buf, 2u);
        }
      }

      else
      {
        v184 = v233;
        v185 = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        else
        {
          v185 = C3DLibraryCreate();
          C3DLibraryFillWithContentOfScene(v185, v6, 0);
        }

        TypeID = C3DMeshGetTypeID();
        v237.columns[0].i64[0] = MEMORY[0x277D85DD0];
        v237.columns[0].i64[1] = 0x40000000;
        v237.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke;
        v237.columns[1].i64[1] = &__block_descriptor_tmp_17;
        v237.columns[2].i64[0] = __PAIR64__(v182, v181);
        v237.columns[2].i8[8] = 0;
        C3DLibraryApplyEntriesWithType(v185, TypeID, &v237);
        v187 = C3DNodeGetTypeID();
        v244[0] = MEMORY[0x277D85DD0];
        v244[1] = 0x40000000;
        v244[2] = ___convertUnitsAndUpAxis_block_invoke_2;
        v244[3] = &__block_descriptor_tmp_18_2;
        v245 = v181;
        v246 = v182;
        C3DLibraryApplyEntriesWithType(v185, v187, v244);
        v188 = C3DSkinGetTypeID();
        v258.i64[0] = MEMORY[0x277D85DD0];
        v258.i64[1] = 0x40000000;
        v259.i64[0] = ___convertUnitsAndUpAxis_block_invoke_3;
        v259.i64[1] = &__block_descriptor_tmp_19;
        v260 = v181;
        v261 = v182;
        v262 = 0;
        C3DLibraryApplyEntriesWithType(v185, v188, &v258);
        if (v181 == 1)
        {
          memset(&buf, 0, sizeof(buf));
          memset(&valuePtr, 0, sizeof(valuePtr));
          v243 = xmmword_21C27F910;
          C3DMatrix4x4MakeAxisAngleRotation(&valuePtr, &v243, 1.57079633);
          C3DMatrix4x4Invert(&valuePtr, &buf);
          v189 = C3DSceneGetRootNode(v6);
          _convertDirectionalNodes(v189, &valuePtr, &buf);
        }

        if (*&v182 != 1.0)
        {
          v190 = C3DLightGetTypeID();
          buf.columns[0].i64[0] = MEMORY[0x277D85DD0];
          buf.columns[0].i64[1] = 0x40000000;
          buf.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke_4;
          buf.columns[1].i64[1] = &__block_descriptor_tmp_20_6;
          buf.columns[2].i32[0] = v182;
          C3DLibraryApplyEntriesWithType(v185, v190, &buf);
          v191 = C3DCameraGetTypeID();
          valuePtr.columns[0].i64[0] = MEMORY[0x277D85DD0];
          valuePtr.columns[0].i64[1] = 0x40000000;
          valuePtr.columns[1].i64[0] = ___convertUnitsAndUpAxis_block_invoke_5;
          valuePtr.columns[1].i64[1] = &__block_descriptor_tmp_21;
          valuePtr.columns[2].i32[0] = v182;
          C3DLibraryApplyEntriesWithType(v185, v191, &valuePtr);
          if (v184 != 0.0)
          {
            C3DSceneSetUnit(v6, v184);
          }
        }

        if (v181)
        {
          v243 = xmmword_21C27F8C0;
          C3DSceneSetUpAxis(v6, &v243);
        }

        CFRelease(v185);
      }
    }
  }

  if (!a3)
  {
    if (C3DMetalIsSupported())
    {
      return;
    }

    goto LABEL_194;
  }

  v192 = CFDictionaryGetValue(a3, @"kSceneSourceFlattenScene");
  if (v192)
  {
    if (CFEqual(*v8, v192))
    {
      AnimationManager = C3DSceneGetAnimationManager(v6);
      if (!AnimationManager || C3DAnimationManagerIsEmpty(AnimationManager))
      {
        v194 = C3DSceneGetRootNode(v6);
        v195 = C3DNodeCopyChildNodesPassingTest(v194, &__block_literal_global_27_0, 1);
        v196 = CFArrayGetCount(v195);
        CFRelease(v195);
        if (v196 <= 0)
        {
          v197 = a3;
          v198 = v6;
          v199 = _C3DCreateFlattenedGeometryFromNodeHierarchy(v194, 1, 1, 0);
          v200 = C3DNodeCreate();
          v201 = C3DNodeCopyChildNodesPassingTest(v194, &__block_literal_global_30_0, 1);
          memset(&buf, 0, sizeof(buf));
          v202 = CFArrayGetCount(v201);
          if (v202 >= 1)
          {
            v203 = v202;
            for (mm = 0; mm != v203; ++mm)
            {
              v205 = CFArrayGetValueAtIndex(v201, mm);
              C3DNodeComputeWorldMatrix(v205, &buf);
              C3DNodeSetMatrix(v205, &buf);
              Copy = C3DNodeCreateCopy(v205, 0);
              C3DNodeAddChildNode(v200, Copy);
              CFRelease(Copy);
            }
          }

          v207 = C3DNodeCreate();
          C3DNodeSetGeometry(v207, v199);
          CFRelease(v199);
          C3DNodeSetName(v207, @"nodeFromflattenedMesh");
          C3DNodeAddChildNode(v200, v207);
          CFRelease(v207);
          v208 = C3DSceneCreate();
          C3DSceneSetRootNode(v208, v200);
          CFRelease(v200);
          CFRelease(v201);
          v6 = v198;
          a3 = v197;
          if (v208)
          {
            v209 = C3DSceneGetRootNode(v208);
            CFRetain(v209);
            C3DSceneSetRootNode(v208, 0);
            C3DSceneSetRootNode(v198, v209);
            CFRelease(v209);
            CFRelease(v208);
          }
        }
      }
    }
  }

  v210 = CFDictionaryGetValue(a3, @"kSceneSourceSplitMeshesForGLES");
  IsSupported = C3DMetalIsSupported();
  if (!v210)
  {
    if (IsSupported)
    {
      goto LABEL_195;
    }

LABEL_194:
    v212 = C3DSceneGetRootNode(v6);
    C3DSplitMeshesIfNeededInNodeTree(v212, 0xFFFFLL);
    if (!a3)
    {
      return;
    }

    goto LABEL_195;
  }

  if (CFEqual(*v8, v210))
  {
    goto LABEL_194;
  }

LABEL_195:
  v213 = CFDictionaryGetValue(a3, @"kSceneSourceInterleaveSources");
  if (v213 && CFBooleanGetValue(v213))
  {
    _C3DIOApplyFunctionToMeshes(v6, __InterleaveSources);
  }

  v214 = CFDictionaryGetValue(a3, @"kSceneSourceDeinterleaveSources");
  if (v214)
  {
    if (CFBooleanGetValue(v214))
    {
      _C3DIOApplyFunctionToMeshes(v6, __DeinterleaveSources);
    }
  }
}

void _C3DIOApplyFunctionToMeshes(uint64_t a1, void (*a2)(uint64_t))
{
  RootNode = C3DSceneGetRootNode(a1);
  if (RootNode)
  {
    v4 = C3DNodeCopyNodesWithAttribute(RootNode, @"kMeshKey", 0);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          Geometry = C3DNodeGetGeometry(ValueAtIndex);
          a2(Geometry);
        }
      }

      CFRelease(v5);
    }
  }
}

void __InterleaveSources(uint64_t a1)
{
  Mesh = C3DGeometryGetMesh(a1);
  CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(Mesh);
  if (CopyWithInterleavedSources)
  {
    v4 = CopyWithInterleavedSources;
    C3DGeometrySetMesh(a1, CopyWithInterleavedSources);

    CFRelease(v4);
  }
}

void __DeinterleaveSources(uint64_t a1)
{
  Mesh = C3DGeometryGetMesh(a1);
  if (C3DMeshIsInterleaved(Mesh))
  {
    CopyWithDeinterleavedSources = C3DMeshCreateCopyWithDeinterleavedSources(Mesh);
    if (CopyWithDeinterleavedSources)
    {
      v4 = CopyWithDeinterleavedSources;
      C3DGeometrySetMesh(a1, CopyWithDeinterleavedSources);

      CFRelease(v4);
    }
  }
}

const __CFURL *C3DIOCopyResolvedImageURL(const __CFURL *a1, CFDictionaryRef theDict)
{
  v17 = *MEMORY[0x277D85DE8];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"preferredExtensions");
  }

  else
  {
    Value = 0;
  }

  v5 = CFDictionaryGetValue(theDict, @"kSceneSourceUseSafeMode");
  if (v5 && CFBooleanGetValue(v5))
  {
    v6 = CFURLCopyScheme(a1);
    if (v6)
    {
      v7 = v6;
      if (CFStringCompare(v6, @"file", 0))
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = a1;
          _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Safe mode enabled, denying the download of a network URL %@", &v15, 0xCu);
        }

        CFRelease(v7);
        return 0;
      }

      CFRelease(v7);
    }

    v10 = CFCopySearchPathForDirectoriesInDomains();
  }

  else
  {
    v10 = 0;
  }

  v11 = CFDictionaryGetValue(theDict, @"kSceneSourceOverrideAssetURLs");
  if (v11)
  {
    v12 = CFBooleanGetValue(v11) != 0;
    if (theDict)
    {
LABEL_16:
      v13 = CFDictionaryGetValue(theDict, @"kSceneSourceAssetDirectoryURLs");
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if (theDict)
    {
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_19:
  v9 = C3DIOCopyURLForInitialURL(a1, v13, Value, 0, v10, v12);
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t C3DIOShouldActivateSecurityChecks(const __CFURL *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSceneSourceCheckConsistency");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  v5 = C3DURLIsInMainBundle(a1);
  v6 = v5;
  if (a1 && (v5 & 1) == 0 && (v7 = CFURLCopyPath(a1)) != 0 && (v8 = v7, HasPrefix = CFStringHasPrefix(v7, @"/System"), CFRelease(v8), HasPrefix))
  {
    return 0;
  }

  else
  {
    return v6 ^ 1u;
  }
}

void ___convertUnitsAndUpAxis_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___meshConvertUnitAndUpAxis_block_invoke;
  v5[3] = &__block_descriptor_tmp_23_1;
  v6 = v3;
  v7 = v4;
  C3DMeshApplySources(a2, 0, v5);
  C3DMeshResetBoundingVolumes(a2);
}

void ___convertUnitsAndUpAxis_block_invoke_2(uint64_t a1, __n128 *a2, float32x4_t a3)
{
  v4 = *(a1 + 32);
  a3.i32[0] = *(a1 + 36);
  v14 = a3;
  *v5.i64 = C3DNodeGetPosition(a2);
  if (v4 == 1)
  {
    v6.i64[0] = __PAIR64__(v5.u32[2], v5.u32[0]);
    v6.f32[2] = -v5.f32[1];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v6.f32[0] = -v5.f32[1];
    v6.i32[1] = v5.i32[0];
    v6.i32[2] = v5.i32[2];
  }

  v6.i32[3] = v5.i32[3];
  v5 = v6;
LABEL_6:
  v6.i32[0] = 1.0;
  C3DNodeSetPosition(a2, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v14, v6)), 0), vmulq_n_f32(v5, v14.f32[0]), v5));
  if (!v4)
  {
    goto LABEL_14;
  }

  C3DNodeGetAxisAngle(a2);
  if (v4 == 1)
  {
    v12 = v7.n128_f32[1];
    v7.n128_u32[1] = v7.n128_u32[2];
    v7.n128_f32[2] = -v12;
    C3DNodeSetAxisAngle(a2, v7);
    *v13.i64 = C3DNodeGetScale(a2);
    v10 = v13.i32[3];
    v11 = vuzp1q_s32(v13, vrev64q_s32(v13));
  }

  else
  {
    if (v4 != 2)
    {
      C3DNodeSetAxisAngle(a2, v7);
      v11.n128_f64[0] = C3DNodeGetScale(a2);
      goto LABEL_13;
    }

    v8.n128_u64[1] = v7.n128_u64[1];
    v8.n128_f32[0] = -v7.n128_f32[1];
    v8.n128_u32[1] = v7.n128_u32[0];
    C3DNodeSetAxisAngle(a2, v8);
    *v9.i64 = C3DNodeGetScale(a2);
    v10 = v9.i32[3];
    v11 = vzip1q_s32(vextq_s8(v9, v9, 4uLL), v9);
  }

  v11.n128_u32[3] = v10;
LABEL_13:
  C3DNodeSetScale(a2, v11);
LABEL_14:

  C3DNodeGeometryDidUpdate(a2);
}

uint64_t ___convertUnitsAndUpAxis_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(a2);
  v6 = DefaultShapeMatrix[3];
  v8 = *DefaultShapeMatrix;
  v7 = DefaultShapeMatrix[1];
  v14.columns[2] = DefaultShapeMatrix[2];
  v14.columns[3] = v6;
  v14.columns[0] = v8;
  v14.columns[1] = v7;
  _convertMatrix(&v14, v3, v4);
  v13 = v14;
  C3DSkinSetDefaultShapeMatrix(a2, &v13);
  InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(a2);
  JointsCount = C3DSkinGetJointsCount(a2);
  if (JointsCount >= 1)
  {
    v11 = JointsCount;
    do
    {
      memset(&v13, 0, sizeof(v13));
      C3DMatrix4x4Invert(InverseBindMatricesPtr, &v13);
      _convertMatrix(&v13, v3, v4);
      C3DMatrix4x4Invert(&v13, InverseBindMatricesPtr++);
      --v11;
    }

    while (v11);
  }

  return C3DSkinInverseBindMatricesHaveChanged(a2);
}

uint64_t _convertDirectionalNodes(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (C3DNodeNeedsSpecialUpAxisConversion(result))
    {
      memset(v18, 0, sizeof(v18));
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      C3DNodeGetMatrix(v5, &v14);
      C3DMatrix4x4Mult(a2, &v14, v18);
      C3DNodeSetMatrix(v5, v18);
      ChildNodesCount = C3DNodeGetChildNodesCount(v5);
      if (ChildNodesCount)
      {
        v7 = 0;
        v8 = ChildNodesCount;
        do
        {
          ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(v5, v7);
          C3DNodeGetMatrix(ChildNodeAtIndex, v13);
          v14 = v13[0];
          v15 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          C3DMatrix4x4Mult(a3, &v14, v18);
          C3DNodeSetMatrix(ChildNodeAtIndex, v18);
          ++v7;
        }

        while (v8 != v7);
      }
    }

    result = C3DNodeGetChildNodesCount(v5);
    if (result)
    {
      v10 = 0;
      v11 = result;
      do
      {
        v12 = C3DNodeGetChildNodeAtIndex(v5, v10);
        result = _convertDirectionalNodes(v12, a2, a3);
        ++v10;
      }

      while (v11 != v10);
    }
  }

  return result;
}

float64x2_t ___convertUnitsAndUpAxis_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a2 + 288) = v2 * *(a2 + 288);
  result = vmulq_n_f64(*(a2 + 72), v2);
  *(a2 + 72) = result;
  return result;
}

void ___meshConvertUnitAndUpAxis_block_invoke(uint64_t a1, uint64_t a2, int a3, float32x4_t a4)
{
  if (a3 == 4 || a3 == 1)
  {
    v4 = *(a1 + 32);
    a4.i32[0] = 1.0;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = *(a1 + 32);
    a4.i32[0] = *(a1 + 36);
  }

  _sourceConvert(a2, v4, a4);
}

void _sourceConvert(uint64_t a1, int a2, float32x4_t a3)
{
  v14 = 0u;
  v15 = 0u;
  C3DMeshSourceGetContent(a1, &v14);
  if (v15)
  {
    v6 = 0;
    v4.i32[0] = 1.0;
    v7 = a3.f32[0];
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a3, v4)), 0);
    v12 = v8;
    do
    {
      *v9.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v15), (v14 + v6 * BYTE6(v15)), v8, v7, v5);
      if (a2 == 1)
      {
        v10 = v9;
        v10.i32[1] = v9.i32[2];
        v10.f32[2] = -v9.f32[1];
      }

      else
      {
        v10 = v9;
        if (a2 == 2)
        {
          v10.f32[0] = -v9.f32[1];
          v10.i32[1] = v9.i32[0];
          v10.i32[2] = v9.i32[2];
        }
      }

      v11 = vbslq_s8(v12, vmulq_n_f32(v10, a3.f32[0]), v10);
      v11.i32[3] = v9.i32[3];
      C3DConvertFloatingTypeFromFloat4(BYTE4(v15), v14 + v6 * BYTE6(v15), v11);
      ++v6;
    }

    while (v6 < v15);
  }
}

double _convertMatrix(uint64_t a1, int a2, float a3)
{
  v21.i32[2] = 0;
  v21.i64[0] = 0;
  v20.i32[2] = 0;
  v20.i64[0] = 0;
  v18 = 0u;
  v19 = 0u;
  C3DMatrix4x4GetAffineTransforms(a1, &v21, &v19, &v20);
  C3DQuaternionGetAxisAngle(&v19, &v18);
  if (a2 == 1)
  {
    v8 = v18;
    v8.i32[1] = v18.i32[2];
    v8.f32[2] = -v18.f32[1];
    v18 = v8;
    v6 = __PAIR64__(v21.u32[2], v21.u32[0]);
    v7 = -v21.f32[1];
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    v5.i64[1] = v18.i64[1];
    v5.f32[0] = -v18.f32[1];
    v5.i32[1] = v18.i32[0];
    v18 = v5;
    *&v6 = -v21.f32[1];
    HIDWORD(v6) = v21.i32[0];
    v7 = v21.f32[2];
  }

  v21.f32[2] = v7;
  v21.i64[0] = v6;
LABEL_6:
  if (a3 != 1.0)
  {
    v21 = vmulq_n_f32(v21, a3);
  }

  v9 = v20;
  if (a2 == 1)
  {
    v9 = vuzp1q_s32(v20, vrev64q_s32(v20));
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_13;
    }

    v9 = vzip1q_s32(vextq_s8(v20, v20, 4uLL), v20);
  }

  v20.i32[2] = v9.i32[2];
  v20.i64[0] = v9.i64[0];
LABEL_13:
  __asm { FMOV            V2.4S, #1.0 }

  if (!(!_ZF & _CF))
  {
    v15 = _Q2;
    v15.i32[1] = v9.i32[1];
    v15.i32[2] = v9.i32[2];
    v20.i32[2] = v9.i32[2];
    v9.i32[0] = 1.0;
    v20.i64[0] = v9.i64[0];
    v9 = v15;
  }

  if (fabs(*&v9.i32[1] + -1.0) <= 0.000001)
  {
    _Q2.i32[0] = v9.i32[0];
    _Q2.i32[2] = v9.i32[2];
    v20.i32[2] = v9.i32[2];
    v9.i32[1] = 1.0;
    v20.i64[0] = v9.i64[0];
    v9 = _Q2;
  }

  if (fabs(*&v9.i32[2] + -1.0) <= 0.000001)
  {
    v20.i32[2] = 1065353216;
    v20.i64[0] = v9.i64[0];
  }

  C3DQuaternionMakeAxisAngle(&v19, &v18);
  *&result = C3DMatrix4x4MakeAffine(a1, &v21, &v19, &v20).n128_u64[0];
  return result;
}

void C3D::CIFilterPass::CIFilterPass(C3D::CIFilterPass *this, C3D::RenderGraph *a2, C3D::ScenePass *a3, __C3DNode *a4)
{
  C3D::CustomPass::CustomPass(this, a2, a3, 0);
  *v5 = &unk_282DC6C00;
  v5[16] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[20] = a4;
  v5[21] = 0;
}

void C3D::CIFilterPass::setup(void **this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 4), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v7);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 28) = 115;
  *(v2 + 26) = 1;
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 1;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  v4 = C3D::CIFilterEffectColorPrefix(v3);
  *(v3 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, v4, this[20]);
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v7);
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *(v3 + 26) = 2;
  *(v3 + 28) = 115;
  v5 = this[3];
  *&v7 = this[1];
  v6 = C3D::RenderGraph::createPass<C3D::CIFilterDrawNodesPass,C3D::ScenePass *,__C3DNode *&>(v5, &v7, this + 20);
  this[16] = v6;
  C3D::Pass::addDependency(this, v6);
}

C3D::CIFilterDrawNodesPass *C3D::RenderGraph::createPass<C3D::CIFilterDrawNodesPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::ScenePass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5392, 16, 0);
  C3D::CIFilterDrawNodesPass::CIFilterDrawNodesPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::CIFilterPass::compile(C3D::CIFilterPass *this)
{
  v2 = *(*(this + 3) + 128);
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v2, v3);
  *(this + 21) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void **C3D::SmartPtr<CIContext *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator=(void **a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *a1;
  *a1 = a2;
  if (v5)
  {
  }

  return a1;
}

void C3D::CIFilterPass::execute(float32x4_t *a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  Stats = C3DEngineContextGetStats(a1[1].i64[0]);
  v5 = CACurrentMediaTime();
  v6 = C3D::PassDescriptor::outputAtIndex(&a1[2], 0);
  v7 = *(v6 + 16);
  v8 = *(v6 + 18);
  v9 = C3D::CIFilterPass::_computeProjectedBox(a1, *(a2 + 8));
  if (*&v9.i32[2] <= *v9.i32 || *&v9.i32[3] <= *&v9.i32[1])
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: CIFilter should have been clipped by the culling", buf, 2u);
    }

LABEL_7:
    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v5;
    return;
  }

  if (*&v9.i32[3] < 0.0 || *v9.i32 >= v7 || *&v9.i32[1] >= v8)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: CIFilter should have been clipped by the culling (2)", buf, 2u);
    }

    goto LABEL_7;
  }

  v59 = v7;
  v58 = a2;
  v15 = *v9.i32;
  v16 = *&v9.i32[1];
  v17 = (*&v9.i32[2] - *v9.i32);
  v18 = (*&v9.i32[3] - *&v9.i32[1]);
  v19 = [MEMORY[0x277CBF750] filterWithName:@"CICrop"];
  [v19 setDefaults];
  v20 = v8;
  v21 = v8 - (v16 + v18);
  [v19 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v15, v21, v17, v18), @"inputRectangle"}];
  v22 = [objc_alloc(MEMORY[0x277CBF758]) initWithMTLTexture:C3D::Pass::inputTextureAtIndex(a1 options:{0), 0}];
  v23 = *MEMORY[0x277CBFAF0];
  v56 = v22;
  [v19 setValue:? forKey:?];
  v24 = *MEMORY[0x277CBFB50];
  v25 = [v19 valueForKey:*MEMORY[0x277CBFB50]];
  v57 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[10].i64[1] + 16);
  Filters = C3DNodeGetFilters(a1[10].i64[0]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v27 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v27)
  {
    v28 = *v62;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(Filters);
        }

        v30 = *(*(&v61 + 1) + 8 * i);
        [v30 setValue:v25 forKey:v23];
        v25 = [v30 valueForKey:v24];
      }

      v27 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v27);
  }

  [v25 extent];
  v35 = v20 - (v34 + v33);
  if (v31 < 0.0)
  {
    v32 = v32 + v31;
  }

  v36 = 0.0;
  if (v31 >= 0.0)
  {
    v37 = v31;
  }

  else
  {
    v37 = 0.0;
  }

  if (v35 >= 0.0)
  {
    v38 = v33;
  }

  else
  {
    v38 = v33 + v35;
  }

  v39 = v59;
  if (v35 >= 0.0)
  {
    v36 = v35;
  }

  if (v37 + v32 <= v39)
  {
    v40 = v32;
  }

  else
  {
    v40 = v39 - v37;
  }

  if (v36 + v38 <= v20)
  {
    v41 = v38;
  }

  else
  {
    v41 = v20 - v36;
  }

  v54 = v41;
  v55 = v40;
  v42.f64[0] = v40;
  v42.f64[1] = v41;
  v60 = v37;
  v43.f64[0] = v37;
  v53 = v36;
  v43.f64[1] = v36;
  a1[9] = vcvt_hight_f32_f64(vcvt_f32_f64(v43), v42);
  v44 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (!v44)
  {
    v45 = scn_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      C3D::CIFilterPass::execute(v45, v46, v47, v48, v49, v50, v51, v52);
    }
  }

  [v57 render:v25 toMTLTexture:v44 commandBuffer:*v58 bounds:C3DColorSpaceLinearSRGB() colorSpace:{v60, v20 - (v53 + v54), v55}];
  *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v5;
}

int8x16_t C3D::CIFilterPass::_computeProjectedBox(C3D::CIFilterPass *this, unsigned int a2)
{
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v5 = a2;
  v6.i32[0] = *(v4 + 16);
  v6.i32[1] = *(v4 + 18);
  *v7.f32 = vcvt_f32_u32(v6);
  v7.i64[1] = v7.i64[0];
  v18 = v7;
  WorldMatrix = C3DNodeGetWorldMatrix(*(this + 20));
  CullingContext = C3D::DrawNodesPass::getCullingContext(*(this + 16));
  C3DMatrix4x4Mult(WorldMatrix, (CullingContext + (v5 << 6) + 3856), v29);
  v26 = 0uLL;
  v10 = C3DNodeComputeHierarchicalBoundingBox(*(this + 20), 1, &v27);
  C3D::CIFilterPass::computeBoundingRectangle(v10, &v27, &v28, v29, &v26, &v25);
  v19 = vmulq_f32(v26, v18);
  v11 = *(this + 3);
  v12 = (**this)(this);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = v12;
  v21 = 0;
  v22 = this;
  v23 = 1;
  v24 = 1;
  v13 = C3D::RenderGraph::search(v11, v20);
  if (!v13)
  {
    return v19;
  }

  v14 = *(v13 + 9);
  if ((vminvq_u32(vceqzq_f32(v14)) & 0x80000000) != 0)
  {
    return v19;
  }

  else
  {
    v15 = v19.i64[0];
    v16.i64[0] = *(v13 + 18);
    v16.i64[1] = v19.i64[1];
    result.i64[1] = *(v13 + 19);
    result.i64[0] = vbslq_s8(vcgtq_f32(v19, v14), v16, result).u64[0];
  }

  return result;
}

void C3D::CIFilterPass::computeBoundingRectangle(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, _OWORD *a6)
{
  v8 = 0;
  v9 = 0;
  v44 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_21C280320;
  v10 = *a2;
  v11 = *a3;
  LODWORD(v12) = vaddq_f32(*a2, *a3).u32[0];
  LODWORD(v13) = HIDWORD(a2->i64[0]);
  LODWORD(v14) = HIDWORD(a3->i64[0]);
  LODWORD(v15) = v12;
  *(&v15 + 1) = v13 + v14;
  v16 = COERCE_FLOAT(a2->i64[1]);
  v17 = COERCE_FLOAT(a3->i64[1]);
  v29 = v16 + v17;
  v28 = v15;
  v31 = v16 - v17;
  v30 = v15;
  *(&v12 + 1) = v13 - v14;
  v33 = v16 + v17;
  v32 = v12;
  v35 = v16 - v17;
  v34 = v12;
  v10.i32[0] = vsubq_f32(v10, v11).u32[0];
  v11.i32[0] = v10.i32[0];
  v11.f32[1] = v13 + v14;
  v37 = v16 + v17;
  v36 = v11.i64[0];
  v39 = v16 - v17;
  v38 = v11.i64[0];
  v10.f32[1] = v13 - v14;
  v41 = v16 + v17;
  v40 = v10.i64[0];
  v43 = v16 - v17;
  v42 = v10.i64[0];
  *a6 = 0u;
  v18 = 1.0;
  while (2)
  {
    v19 = 16 * v8++;
    while (1)
    {
      v20 = *(&v28 + v19);
      v20.f32[3] = v18;
      v21 = C3DVector4MultMatrix4x4(a4, v20);
      if (v22 <= 0.0)
      {
        break;
      }

      v23 = (1.0 / v22) * *&v21;
      v24 = *a5;
      v18 = 1.0;
      if (v23 < COERCE_FLOAT(*a5))
      {
        v24.f32[0] = (1.0 / v22) * *&v21;
        *a5 = v24;
      }

      v25 = vmuls_lane_f32(1.0 / v22, *&v21, 1);
      if (v25 < v24.f32[1])
      {
        v24.f32[1] = v25;
        *a5 = v24;
      }

      if (v23 > v24.f32[2])
      {
        v24.f32[2] = v23;
        *a5 = v24;
      }

      if (v25 > v24.f32[3])
      {
        v24.f32[3] = v25;
        *a5 = v24;
      }

      ++v8;
      v19 += 16;
      if (v8 == 9)
      {
        v26 = xmmword_21C27FDD0;
        if ((v9 & 1) == 0)
        {
          v27.i64[0] = 0x3F0000003F000000;
          v27.i64[1] = 0x3F0000003F000000;
          v26 = vmlaq_f32(v27, v27, *a5);
        }

        goto LABEL_18;
      }
    }

    v9 = 1;
    v18 = 1.0;
    if (v8 != 8)
    {
      continue;
    }

    break;
  }

  v26 = xmmword_21C27FDD0;
LABEL_18:
  *a5 = v26;
}

void C3D::CIFilterPassResource::~CIFilterPassResource(C3D::CIFilterPassResource *this)
{
  *this = &unk_282DC6C70;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6C70;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

C3D::CIFilterDrawNodesPass *C3D::CIFilterDrawNodesPass::CIFilterDrawNodesPass(C3D::CIFilterDrawNodesPass *this, C3D::RenderGraph *a2, C3D::ScenePass *a3, __C3DNode *a4)
{
  v10 = 0;
  v12 = 0u;
  v13 = 0x20000;
  memset(v9, 0, sizeof(v9));
  v11 = -1;
  BYTE8(v12) = 1;
  v7 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v9);
  *v7 = &unk_282DC6C90;
  *(v7 + 671) = a4;
  *(this + 670) = *(C3D::DrawNodesPass::getCullingContext(a3) + 4680);
  return this;
}

uint64_t C3D::CIFilterDrawNodesPass::setup(C3D::CIFilterDrawNodesPass *this)
{
  C3D::Pass::setOutputCount(this, 2u);
  v2 = *(this + 670);
  *(this + 112) = v2 != 0;
  *(this + 625) = v2;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(this, v19);
  *(v3 + 16) = *v19;
  *(v3 + 32) = v20;
  *(v3 + 28) = 115;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 66) = *(v3 + 66) & 0xFFBC | 0x42;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  v5 = C3D::CIFilterEffectDepthPrefix(v4);
  *(v4 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, v5, *(this + 671));
  *(v4 + 64) = 2;
  C3D::Pass::parentDepthDesc(this, v19);
  *(v4 + 16) = *v19;
  *(v4 + 32) = v20;
  *(v4 + 66) = *(v4 + 66) & 0xFFFC | 2;
  *(this + 296) = 1;
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 2));
  C3DStackAllocatorPushFrame(StackAllocator);
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(v19, StackAllocator);
  *(this + 672) = v19;
  v7 = *(*(this + 3) + 16);
  Aligned = C3DScratchAllocatorAllocateAligned(v7, 24, 8, 0);
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, v7);
  v9 = *(this + 671);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN3C3D21CIFilterDrawNodesPass5setupEv_block_invoke;
  v18[3] = &__block_descriptor_48_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
  v18[4] = this;
  v18[5] = Aligned;
  C3DNodeApplyHierarchy(v9, v18);
  *(this + 34) = Aligned;
  C3D::DrawNodesPass::setup(this);
  v10 = LOWORD(v19[2]);
  C3D::Pass::setInputCount(this, LOWORD(v19[2]));
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](v19, i);
      v13 = C3D::PassDescriptor::inputAtIndex((this + 32), i);
      *v13 = *v12;
      v14 = v12[4];
      v16 = v12[1];
      v15 = v12[2];
      v13[3] = v12[3];
      v13[4] = v14;
      v13[1] = v16;
      v13[2] = v15;
    }
  }

  return C3DStackAllocatorPopFrame(StackAllocator);
}

void C3D::CIFilterDrawNodesPass::_setupPointOfViewMatrices(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  C3D::DrawNodesPass::_setupPointOfViewMatrices(a1, a2, a3);
  v4 = *(a1 + 5360);
  if (v4)
  {

    C3DCullingContextSetupMirrorMatrices(a1 + 320, v4);
  }
}

uint64_t C3D::CIFilterDrawNodesPass::_shouldPushNodeToVisible(C3D::CIFilterDrawNodesPass *this, __C3DNode *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(this + 671) != a2 && (*(a2 + 221) & 0x40) != 0)
  {
    v5 = *(a2 + 114);
    v6 = *(a2 + 113);
    v7 = *(a2 + 112);
    v8 = this + 16 * a3;
    C3D::PassIODescriptor::PassIODescriptor(v30, 2);
    C3D::Pass::parentColorDesc(this, &v26);
    v32 = v26;
    v33 = v27;
    WORD6(v32) = 115;
    v10 = C3D::CIFilterEffectColorPrefix(v9);
    v31 = C3D::Pass::nameWithPrefixAndPointer(this, v10, a2);
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(*(this + 672), v30);
    C3D::PassIODescriptor::PassIODescriptor(&v26, 2);
    C3D::Pass::parentDepthDesc(this, &v24);
    v27 = v24;
    v28 = v25;
    v29 = 2;
    BYTE10(v27) = 7;
    v12 = C3D::CIFilterEffectDepthPrefix(v11);
    *(&v26 + 1) = C3D::Pass::nameWithPrefixAndPointer(this, v12, a2);
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(*(this + 672), &v26);
    if ((*(v8 + 1310) + 1) > *(v8 + 1311))
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = *(v8 + 1310);
    v22 = (*(v8 + 654) + 4 * v21);
    *v22 = v7;
    v22[1] = v5 + v6 - 1;
    *(v8 + 1310) = v21 + 1;
  }

  return 1;
}

BOOL ___ZN3C3D21CIFilterDrawNodesPass5setupEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 32);
  C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(*(a1 + 40), &v4);
  return v4 != *(v2 + 5368) && (*(v4 + 221) & 0x40) != 0;
}

void C3D::computeSampleCountsPerLevels(uint64_t a1, unsigned int a2, void *a3, int a4, double a5, double a6)
{
  LODWORD(a5) = 28.0;
  if (a4)
  {
    *&a5 = (4 * [a3 width]);
    if (*&a5 >= 8192.0)
    {
      *&a5 = 8192.0;
    }

    HIDWORD(a6) = 1107296256;
    if (*&a5 <= 32.0)
    {
      *&a5 = 32.0;
    }

    *&a5 = *&a5 + -4.0;
  }

  if (a2)
  {
    v8 = 0;
    *&a6 = (a2 - 1);
    v9 = vdupq_n_s64(a2 - 1);
    v10 = xmmword_21C27F630;
    v11 = xmmword_21C27F640;
    v12 = (a2 + 3) & 0x1FFFFFFFCLL;
    v30 = vdupq_lane_s32(*&a5, 0);
    v31 = vdupq_n_s64(4uLL);
    v13 = (a1 + 8);
    __asm { FMOV            V0.4S, #4.0 }

    v28 = _Q0;
    v29 = vdupq_lane_s32(*&a6, 0);
    v32 = v9;
    do
    {
      v35 = v10;
      v19 = vorr_s8(vdup_n_s32(v8), 0x300000002);
      v34 = v11;
      v20 = vmovn_s64(vcgeq_u64(v9, v11));
      v21.i32[0] = v8;
      v21.i32[1] = v8 + 1;
      v33 = vuzp1_s16(v20, v19).u8[0];
      v21.u64[1] = v19;
      v39 = vdivq_f32(vcvtq_f32_u32(v21), v29);
      v36 = powf(v39.f32[1], 0.25);
      v22.f32[0] = powf(v39.f32[0], 0.25);
      v22.f32[1] = v36;
      v37 = v22;
      v23 = powf(v39.f32[2], 0.25);
      v24 = v37;
      v24.f32[2] = v23;
      v38 = v24;
      v25 = powf(v39.f32[3], 0.25);
      v26 = v38;
      v26.f32[3] = v25;
      v27 = vmlaq_f32(v28, v30, v26);
      if (v33)
      {
        *(v13 - 2) = v27.f32[0];
      }

      if (vuzp1_s16(v20, *&v27).i8[2])
      {
        *(v13 - 1) = v27.f32[1];
      }

      v9 = v32;
      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v32, *&v35))).i32[1])
      {
        *v13 = v27.f32[2];
        v13[1] = v27.f32[3];
      }

      v8 += 4;
      v10 = vaddq_s64(v35, v31);
      v11 = vaddq_s64(v34, v31);
      v13 += 4;
    }

    while (v12 != v8);
  }
}

void C3D::ComputeRadiancePass::ComputeRadiancePass(C3D::ComputeRadiancePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC6D20;
  v6 = *&a4->var0;
  *(v5 + 116) = *&a4->var8;
  *(v5 + 108) = v6;
}

uint64_t C3D::ComputeRadiancePass::setup(C3D::ComputeRadiancePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "PreFiltered Radiance";
  v3 = *(this + 108) == 0;
  v4 = *(this + 58);
  *(result + 16) = v4 << (*(this + 108) != 0);
  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 2;
  }

  *(result + 18) = v4;
  *(result + 20) = 0;
  *(result + 24) = v5;
  *(result + 25) = 2;
  *(result + 27) = 0;
  *(result + 28) = 115;
  *(result + 32) = 0;
  *(result + 30) = 5;
  return result;
}

uint64_t C3D::ComputeRadiancePass::compile(C3D::ComputeRadiancePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  C3DEngineContextHasFeatures(*(this + 2), 512);
  v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x4FB7DAE84DD6F2FCLL ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(this + 108)) ^ ((0xC6A4A7935BD1E995 * *(this + 108)) >> 47))))) ^ *(this + 29));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::ComputeRadiancePass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v6 = [v4 mipmapLevelCount];
  v7 = [v5 mipmapLevelCount];
  v8 = [v5 pixelFormat];
  v9 = MEMORY[0x28223BE20](v8);
  v10 = *(a1 + 112) == 1;
  v39 = &v36 - v11;
  v40 = v7;
  C3D::computeSampleCountsPerLevels(&v36 - v11, v7, v4, v10, v9, v12);
  v13 = *(*(a1 + 120) + 16);
  if ([v4 pixelFormat] == 125)
  {
    v13 = *(*(a1 + 120) + 24);
  }

  v14 = [(SCNMTLOpenSubdivComputeEvaluator *)v13 computeEvaluator];
  if (v3->_computePipelineState != v14)
  {
    v3->_computePipelineState = v14;
    [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v14];
  }

  v15 = *(a1 + 108);
  v38 = v4;
  if (v15)
  {
    if (v3->_textures[1] != v4)
    {
      v3->_textures[1] = v4;
      v3->_texturesToBind[0] |= 2uLL;
    }

    if (v40)
    {
      v16 = 0;
      v17 = v6 - v40;
      if ((v6 - v40) >= -1)
      {
        v17 = -1;
      }

      v18 = v17 + 1;
      do
      {
        if (v6 >= 2)
        {
          v19 = [v38 newTextureViewWithPixelFormat:objc_msgSend(v38 textureType:"pixelFormat") levels:5 slices:v18 + v16, 1, 0, 6];
          if (v3->_textures[1] != v19)
          {
            v3->_textures[1] = v19;
            v3->_texturesToBind[0] |= 2uLL;
          }
        }

        v43 = v16 / ([v5 mipmapLevelCount] - 1);
        SCNMTLComputeCommandEncoder::setBytes(v3, &v43, 4uLL, 0);
        v42 = *&v39[4 * v16];
        SCNMTLComputeCommandEncoder::setBytes(v3, &v42, 4uLL, 1uLL);
        v20 = [v5 newTextureViewWithPixelFormat:v8 textureType:2 levels:v16 slices:1, 0, 1];
        v21 = v20;
        if (v3->_textures[0] != v20)
        {
          v3->_textures[0] = v20;
          v3->_texturesToBind[0] |= 1uLL;
        }

        SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v20 width], [(MTLTexture *)v20 height]);

        ++v16;
      }

      while (v40 != v16);
    }
  }

  else
  {
    HasFeatures = C3DEngineContextHasFeatures(*(a1 + 16), 512);
    if (v3->_textures[1] != v4)
    {
      v3->_textures[1] = v4;
      v3->_texturesToBind[0] |= 2uLL;
    }

    if (v40)
    {
      v23 = 0;
      v24 = v6 - v40;
      if ((v6 - v40) >= -1)
      {
        v24 = -1;
      }

      v37 = v24 + 1;
      do
      {
        v25 = v6;
        if (v6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v26 = v38;
          v27 = [v38 pixelFormat];
          v28 = [v26 newTextureViewWithPixelFormat:v27 textureType:5 levels:v37 + v23 slices:1, 0, 6];
          v29 = v28;
          if (v3->_textures[1] != v28)
          {
            v3->_textures[1] = v28;
            v3->_texturesToBind[0] |= 2uLL;
          }
        }

        v43 = v23 / ([v5 mipmapLevelCount] - 1);
        SCNMTLComputeCommandEncoder::setBytes(v3, &v43, 4uLL, 0);
        v42 = *&v39[4 * v23];
        SCNMTLComputeCommandEncoder::setBytes(v3, &v42, 4uLL, 1uLL);
        v30 = 0;
        do
        {
          if (HasFeatures)
          {
            v31 = [v5 newTextureViewWithPixelFormat:v8 textureType:5 levels:v23 slices:1, 0, 6];
            v32 = v31;
            if (v3->_textures[0] != v31)
            {
              v3->_textures[0] = v31;
              v3->_texturesToBind[0] |= 1uLL;
            }

            SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v3, v31);
          }

          else
          {
            v41 = v30;
            SCNMTLComputeCommandEncoder::setBytes(v3, &v41, 4uLL, 2uLL);
            v33 = [v5 newTextureViewWithPixelFormat:v8 textureType:2 levels:v23 slices:1, v30, 1];
            v32 = v33;
            if (v3->_textures[0] != v33)
            {
              v3->_textures[0] = v33;
              v3->_texturesToBind[0] |= 1uLL;
            }

            SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v33 width], [(MTLTexture *)v33 height]);
          }

          v35 = v30++ > 4 || HasFeatures;
        }

        while ((v35 & 1) == 0);

        ++v23;
        v6 = v25;
      }

      while (v23 != v40);
    }
  }
}

void C3D::ComputeRadiancePass::Resource::~Resource(C3D::ComputeRadiancePass::Resource *this)
{
  *this = &unk_282DC6D90;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC6D90;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t _createConstraintFromDefinition(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *a1;
  if (v2)
  {
    v4 = [v3 _handle];
    v5 = *(a1 + 12);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 28);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 44);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v39.var0.var0[0].var0.var0[0] = *(a1 + 8);
    v39.var0.var0[0].var0.var0[1] = v7;
    *&v39.var0.var0[0].var0.var0[2] = v10;
    *v39.var0.var0[1].var0.var0 = __PAIR64__(v8, v5);
    *&v39.var0.var0[1].var0.var0[2] = v11;
    *v39.var0.var0[2].var0.var0 = __PAIR64__(v9, v6);
    *&v39.var0.var0[2].var0.var0[2] = v12;
    *v39.var1.var0.var0 = *(a1 + 56);
    *&v39.var1.var0.var0[2] = v13;
    v14 = [*(a1 + 72) _handle];
    v15 = *(a1 + 84);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = *(a1 + 100);
    v19 = *(a1 + 104);
    v20 = *(a1 + 112);
    v21 = *(a1 + 116);
    v22 = *(a1 + 120);
    v23 = *(a1 + 136);
    v38.var0.var0[0].var0.var0[0] = *(a1 + 80);
    *&v38.var0.var0[0].var0.var0[1] = __PAIR64__(v20, v17);
    v38.var0.var0[0].var0.var0[3] = 0.0;
    *v38.var0.var0[1].var0.var0 = __PAIR64__(v18, v15);
    *&v38.var0.var0[1].var0.var0[2] = v21;
    *v38.var0.var0[2].var0.var0 = __PAIR64__(v19, v16);
    *&v38.var0.var0[2].var0.var0[2] = v22;
    *v38.var1.var0.var0 = *(a1 + 128);
    *&v38.var1.var0.var0[2] = v23;
    v24 = btAlignedAllocInternal(704, 16);
    btConeTwistConstraint::btConeTwistConstraint(v24, v4, v14, &v39, &v38);
    v25 = *(a1 + 160);
    *(v24 + 512) = vcvt_f32_f64(*(a1 + 144));
    *(v24 + 520) = v25;
    *(v24 + 496) = 0x3E99999A3F000000;
    *(v24 + 504) = 1065353216;
    *(v24 + 592) = 1;
  }

  else
  {
    if (!v3)
    {
      v26 = scn_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v26);
      }
    }

    v27 = [*a1 _handle];
    v28 = *(a1 + 12);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = *(a1 + 28);
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = *(a1 + 44);
    v35 = *(a1 + 48);
    v36 = *(a1 + 64);
    v39.var0.var0[0].var0.var0[0] = *(a1 + 8);
    v39.var0.var0[0].var0.var0[1] = v30;
    *&v39.var0.var0[0].var0.var0[2] = v33;
    *v39.var0.var0[1].var0.var0 = __PAIR64__(v31, v28);
    *&v39.var0.var0[1].var0.var0[2] = v34;
    *v39.var0.var0[2].var0.var0 = __PAIR64__(v32, v29);
    *&v39.var0.var0[2].var0.var0[2] = v35;
    *v39.var1.var0.var0 = *(a1 + 56);
    *&v39.var1.var0.var0[2] = v36;
    v24 = btAlignedAllocInternal(704, 16);
    btConeTwistConstraint::btConeTwistConstraint(v24, v27, &v39);
  }

  return v24;
}

{
  *v2.var0.var0 = *(a1 + 28);
  *&v2.var0.var0[2] = *(a1 + 36);
  v56.var1 = v2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  v5 = *(a1 + 24);
  if (fabsf(v5) <= 0.70711)
  {
    v14 = (v3 * v3) + (v4 * v4);
    v15 = 1.0 / sqrtf(v14);
    v13 = -(v3 * v15);
    v8 = v4 * v15;
    v10 = -(v5 * (v4 * v15));
    v11 = v5 * v13;
    v12 = v14 * v15;
    v9 = 0.0;
  }

  else
  {
    v6 = (v5 * v5) + (v3 * v3);
    v7 = 1.0 / sqrtf(v6);
    v8 = -(v5 * v7);
    v9 = v3 * v7;
    v10 = v6 * v7;
    v11 = -(v4 * (v3 * v7));
    v12 = v4 * v8;
    v13 = 0.0;
  }

  v56.var0.var0[0].var0.var0[0] = *(a1 + 16);
  v56.var0.var0[0].var0.var0[1] = v13;
  *&v56.var0.var0[0].var0.var0[2] = LODWORD(v10);
  *v56.var0.var0[1].var0.var0 = __PAIR64__(LODWORD(v8), LODWORD(v3));
  *&v56.var0.var0[1].var0.var0[2] = LODWORD(v11);
  *v56.var0.var0[2].var0.var0 = __PAIR64__(LODWORD(v9), LODWORD(v5));
  *&v56.var0.var0[2].var0.var0[2] = LODWORD(v12);
  *v16.var0.var0 = *(a1 + 52);
  *&v16.var0.var0[2] = *(a1 + 60);
  v55.var1 = v16;
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = *(a1 + 48);
  v20 = fabsf(v19) <= 0.70711;
  v21 = (v18 * v18) + (v17 * v17);
  v22 = 1.0 / sqrtf(v21);
  v23 = -(v18 * v22);
  v24 = v17 * v22;
  v25 = -(v19 * (v17 * v22));
  v26 = v19 * v23;
  v27 = v21 * v22;
  v28 = 0.0;
  v29 = (v19 * v19) + (v18 * v18);
  v30 = 1.0 / sqrtf(v29);
  v31 = -(v19 * v30);
  v32 = v18 * v30;
  v33 = v29 * v30;
  v34 = -(v17 * v32);
  if (v20)
  {
    v33 = v25;
  }

  else
  {
    v23 = 0.0;
  }

  v55.var0.var0[0].var0.var0[0] = *(a1 + 40);
  *&v55.var0.var0[0].var0.var0[1] = __PAIR64__(LODWORD(v33), LODWORD(v23));
  v55.var0.var0[0].var0.var0[3] = 0.0;
  v35 = v17 * v31;
  if (v20)
  {
    v36 = v24;
  }

  else
  {
    v36 = v31;
  }

  if (v20)
  {
    v37 = v26;
  }

  else
  {
    v28 = v32;
    v27 = v35;
    v37 = v34;
  }

  *v55.var0.var0[1].var0.var0 = __PAIR64__(LODWORD(v36), LODWORD(v18));
  *&v55.var0.var0[1].var0.var0[2] = LODWORD(v37);
  *v55.var0.var0[2].var0.var0 = __PAIR64__(LODWORD(v28), LODWORD(v19));
  *&v55.var0.var0[2].var0.var0[2] = LODWORD(v27);
  v38 = *a1;
  if (*(a1 + 8))
  {
    v39 = [v38 _handle];
    v40 = [*(a1 + 8) _handle];
    v41 = btAlignedAllocInternal(1248, 16);
    btSliderConstraint::btSliderConstraint(v41, v39, v40, &v56, &v55, 1);
  }

  else
  {
    if (!v38)
    {
      v42 = scn_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v42);
      }
    }

    v43 = [*a1 _handle];
    v41 = btAlignedAllocInternal(1248, 16);
    btSliderConstraint::btSliderConstraint(v41, v43, &v56, 1);
  }

  *(v41 + 212) = vcvt_f32_f64(*(a1 + 64));
  v44 = *(a1 + 80);
  v45 = fmodf(v44, 6.2832);
  if (v45 >= -3.1416)
  {
    if (v45 > 3.1416)
    {
      v45 = v45 + -6.2832;
    }
  }

  else
  {
    v45 = v45 + 6.2832;
  }

  *(v41 + 220) = v45;
  v46 = *(a1 + 88);
  v47 = fmodf(v46, 6.2832);
  if (v47 >= -3.1416)
  {
    if (v47 > 3.1416)
    {
      v47 = v47 + -6.2832;
    }
  }

  else
  {
    v47 = v47 + 6.2832;
  }

  *(v41 + 224) = v47;
  v48 = *(a1 + 96);
  if (v48 != 0.0)
  {
    *(v41 + 1216) = 1;
    v49 = v48;
    *(v41 + 1220) = v49;
    v50 = *(a1 + 104);
    *(v41 + 1224) = v50;
  }

  v51 = *(a1 + 112);
  if (v51 != 0.0)
  {
    *(v41 + 1232) = 1;
    v52 = v51;
    *(v41 + 1236) = v52;
    v53 = *(a1 + 120);
    *(v41 + 1240) = v53;
  }

  return v41;
}

__n128 *C3DIOCreateSceneWithData(const __CFData *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, uint64_t a5)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"__library__", a3);
  v11 = _C3DIOCreateSceneWithData(a1, a2, a3, v10, a5);
  CFRelease(v10);
  return v11;
}

__n128 *_C3DIOCreateSceneWithData(CFDataRef data, uint64_t a2, const void *a3, __CFDictionary *a4, uint64_t a5)
{
  v76 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  error = 0;
  v72 = 0;
  if (a5)
  {
    (*(a5 + 16))(a5, 4, 0, &v72, 0.0);
    if (v72)
    {
      return 0;
    }
  }

  format = 0;
  v10 = CFPropertyListCreateWithData(0, data, 0, &format, 0);
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v10, @"version");
  v12 = CFDictionaryGetValue(v10, @"readerMinimumRequiredVersion");
  valuePtr = C3DParseVersionNumber(Value);
  v13 = C3DParseVersionNumber(@"0.12");
  v14 = v13;
  if (v12)
  {
    v15 = C3DParseVersionNumber(v12);
  }

  else
  {
    v15 = v13;
  }

  v17 = C3DParseVersionNumber(@"0.10");
  v18 = C3DParseVersionNumber(@"0.9");
  v19 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a4, @"versionNumber", v19);
  CFRelease(v19);
  if (valuePtr < v17)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_9();
      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v15 > v14)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_8();
      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!a5)
    {
LABEL_25:
      CFRelease(v10);
      return 0;
    }

LABEL_24:
    v22 = CFErrorCreate(0, @"SCNKitErrorDomain", 1, 0);
    (*(a5 + 16))(a5, 0xFFFFFFFFLL, v22, &v72, 0.0);
    CFRelease(v22);
    goto LABEL_25;
  }

  if (valuePtr >= v18)
  {
    v24 = CFDictionaryGetValue(v10, @"zipped");
    if (v24)
    {
      if (CFBooleanGetValue(v24))
      {
        v25 = CFDictionaryGetValue(v10, @"zippedData");
        if (v25)
        {
          v26 = C3DIOCreateUnzippedData(v25);
          if (v26)
          {
            v27 = v26;
            CFRelease(v10);
            v10 = CFPropertyListCreateWithData(0, v27, 0, &format, &error);
            CFRelease(v27);
            if (!v10)
            {
              v49 = scn_default_log();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                _C3DIOCreateSceneWithData_cold_1(&error, v49);
              }

              if (error)
              {
                CFRelease(error);
                error = 0;
              }

              __EmitMalformedDocumentErrorIfNeeded(a5, &v72);
              return 0;
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            goto LABEL_36;
          }

          v47 = scn_default_log();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            _C3DIOCreateSceneWithData_cold_2();
          }
        }

        else
        {
          v46 = scn_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            _C3DIOCreateSceneWithData_cold_3();
          }
        }

        __EmitMalformedDocumentErrorIfNeeded(a5, &v72);
        goto LABEL_25;
      }
    }
  }

LABEL_36:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v72, 0.2);
    if (v72)
    {
      goto LABEL_25;
    }
  }

  cf = 0;
  v28 = CFDictionaryGetValue(v10, @"library");
  if (!v28)
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_7();
    }

    __EmitMalformedDocumentErrorIfNeeded(a5, &v72);
    v16 = 0;
LABEL_10:
    if (v16)
    {
      CFRelease(v16);
    }

    if (!v10)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if ((C3DInitWithPropertyList(a3, v28, a4, &cf) & 1) == 0)
  {
    v29 = scn_default_log();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      if (!a5)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    _C3DIOCreateSceneWithData_cold_4();
    if (a5)
    {
LABEL_42:
      (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v72, 1.0);
    }
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v72, 0.4);
    v16 = 0;
    if (v72)
    {
      goto LABEL_10;
    }
  }

  v30 = CFDictionaryGetValue(v10, @"scene");
  if (!v30)
  {
    v16 = 0;
    goto LABEL_58;
  }

  v31 = v30;
  v16 = C3DSceneCreate();
  if ((C3DInitWithPropertyList(v16, v31, a4, &cf) & 1) == 0)
  {
    v32 = scn_default_log();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      if (!a5)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    _C3DIOCreateSceneWithData_cold_5();
    if (a5)
    {
LABEL_51:
      (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v72, 1.0);
    }
  }

LABEL_52:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_58:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v72, 0.5);
    if (v72)
    {
      goto LABEL_10;
    }
  }

  v34 = CFDictionaryGetValue(v10, @"scene");
  if (v34)
  {
    if (C3DFinalizeDeserialization(v16, a3, v34, &cf))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_64;
    }

    v48 = scn_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      _C3DIOCreateSceneWithData_cold_6();
      if (!a5)
      {
LABEL_92:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_10;
      }
    }

    else if (!a5)
    {
      goto LABEL_92;
    }

    (*(a5 + 16))(a5, 0xFFFFFFFFLL, cf, &v72, 1.0);
    goto LABEL_92;
  }

LABEL_64:
  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v72, 0.6);
    if (v72)
    {
      goto LABEL_10;
    }
  }

  v35 = CFDictionaryGetValue(v10, @"library");
  if (v35)
  {
    if (!C3DFinalizeDeserialization(a3, a3, v35, &cf))
    {
      v36 = scn_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_DEFAULT, "Warning: cannot finalize library deserialization", buf, 2u);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (a5)
  {
    (*(a5 + 16))(a5, 12, 0, &v72, 0.9);
    if (v72)
    {
      goto LABEL_10;
    }
  }

  v37 = CFDictionaryGetValue(v10, @"created");
  if (v37)
  {
    v38 = v37;
    C3DSceneSourceSetProperty(a2, @"created", v37);
    C3DSceneSourceSetProperty(a2, @"modified", v38);
  }

  v69.n128_u32[2] = 0;
  v69.n128_u64[0] = 0;
  C3DSceneGetUpAxis(v16, &v69);
  snprintf(buf, 0x10uLL, "%.1f %.1f %.1f", v69.n128_f32[0], v69.n128_f32[1], v69.n128_f32[2]);
  v39 = C3DIOCreateCFStringFromCString(buf);
  C3DSceneSourceSetProperty(a2, @"up_axis", v39);
  CFRelease(v39);
  Unit = C3DSceneGetUnit(v16);
  v40 = CFNumberCreate(0, kCFNumberFloatType, &Unit);
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"unitName", @"meter");
  CFDictionarySetValue(Mutable, @"unitMeter", v40);
  C3DSceneSourceSetProperty(a2, @"unit", Mutable);
  CFRelease(v40);
  CFRelease(Mutable);
  v42 = CFDictionaryGetValue(v10, @"contributors");
  if (v42)
  {
    C3DSceneSourceSetProperty(a2, @"contributors", v42);
  }

  v67 = 0;
  TypeID = C3DAnimationGroupGetTypeID();
  v44 = C3DLibraryCopyEntriesWithKind(a3, TypeID, &v67);
  AnimationManager = C3DSceneGetAnimationManager(v16);
  if (!a4 || (cf1 = CFDictionaryGetValue(a4, @"kSceneSourceAnimationLoadingMode")) == 0)
  {
    if (C3DWasLinkedBeforeMajorOSYear2014())
    {
      v45 = kC3DIOSceneSourceAnimationLoadingModePlayUsingSceneTime;
    }

    else
    {
      v45 = kC3DIOSceneSourceAnimationLoadingModePlayRepeatedly;
    }

    cf1 = *v45;
  }

  if (v44 && cf1 != @"keepSeparate")
  {
    if (v67 >= 1)
    {
      for (i = 0; i < v67; ++i)
      {
        v51 = v44[i];
        AnimationCount = C3DAnimationGroupGetAnimationCount(v51);
        if (AnimationCount >= 1)
        {
          v53 = AnimationCount;
          for (j = 0; j != v53; ++j)
          {
            AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(v51, j);
            if (C3DAnimationIsGroup(AnimationAtIndex))
            {
              _flagChildAnimationGroup(AnimationAtIndex);
            }
          }
        }

        v56 = v67;
      }

      if (v67 >= 1)
      {
        v57 = 0;
        do
        {
          v58 = v44[v57];
          if ((v58[42] & 0x1000) == 0)
          {
            Name = C3DAnimationGetName(v44[v57]);
            if (!Name)
            {
              Name = CFStringCreateWithFormat(0, 0, @"unnamed animation #%d", v57);
              C3DAnimationSetName(v58, Name);
              CFRelease(Name);
            }

            Copy = C3DAnimationCreateCopy(v58);
            v61 = CFEqual(cf1, @"playUsingSceneTime") != 0;
            C3DAnimationSetIsSceneTimeBased(Copy, v61);
            v62 = CFEqual(cf1, @"playUsingSceneTime") == 0;
            C3DAnimationSetRemoveOnCompletion(Copy, v62);
            v63 = CFEqual(cf1, @"playRepeatedly");
            v64 = INFINITY;
            if (!v63)
            {
              v64 = 0.0;
            }

            C3DAnimationSetRepeatCount(Copy, v64);
            C3DAnimationManagerAddAnimationToSceneForKey(AnimationManager, Copy, v16, a3, Name);
            CFRelease(Copy);
            v56 = v67;
          }

          ++v57;
        }

        while (v57 < v56);
      }
    }

    free(v44);
  }

LABEL_8:
  if (a5)
  {
    (*(a5 + 16))(a5, 16, 0, &v72, 1.0);
    if (v72)
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v16;
}

__n128 *C3DIOCreateSceneAtURL(const __CFURL *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, uint64_t a5)
{
  v9 = C3DIOCreateImportContextFromOptions(theDict, a1);
  CFDictionarySetValue(v9, @"__library__", a3);
  v10 = C3DCreateDataWithContentOfURL(a1, 0);
  if (!v10)
  {
    v12 = 0;
    if (!v9)
    {
      return v12;
    }

    goto LABEL_3;
  }

  v11 = v10;
  v12 = _C3DIOCreateSceneWithData(v10, a2, a3, v9, a5);
  CFRelease(v11);
  if (v9)
  {
LABEL_3:
    CFRelease(v9);
  }

  return v12;
}

__CFDictionary *_C3DCreatePropertyListFromScene(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"version", @"0.12");
  CFDictionarySetValue(Mutable, @"readerMinimumRequiredVersion", @"0.11");
  if (a3 && (Value = CFDictionaryGetValue(a3, @"kCreatePropertyListShouldZipOption")) != 0 && CFBooleanGetValue(Value))
  {
    v11 = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = 1;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = CFRetain(Mutable);
    v12 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  v39 = 0;
  (*(a5 + 16))(a5, 0, &v39, 0.1);
  if (v39)
  {
    goto LABEL_39;
  }

LABEL_8:
  v13 = C3DCopyPropertyList(a2, a2, a3, &v40);
  if (v13)
  {
    v14 = v13;
    CFDictionaryAddValue(v11, @"library", v13);
    CFRelease(v14);
  }

  if (a5)
  {
    v38 = 0;
    (*(a5 + 16))(a5, v40, &v38, 0.5);
    if (v38)
    {
      goto LABEL_39;
    }
  }

  v15 = C3DCopyPropertyList(a1, a2, a3, &v40);
  if (v15)
  {
    v16 = v15;
    CFDictionaryAddValue(v11, @"scene", v15);
    CFRelease(v16);
  }

  if (a5)
  {
    v37 = 0;
    (*(a5 + 16))(a5, v40, &v37, 0.75);
    if (v37)
    {
      goto LABEL_39;
    }
  }

  v17 = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  v20 = Identifier ? Identifier : @"SceneKit";
  CFDictionarySetValue(v17, @"authoring_tool", v20);
  CFDictionarySetValue(v17, @"author", @"SceneKit");
  v21 = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
  CFArrayAppendValue(v21, v17);
  CFDictionaryAddValue(v11, @"contributors", v21);
  CFRelease(v21);
  CFRelease(v17);
  if (a5)
  {
    v36 = 0;
    (*(a5 + 16))(a5, v40, &v36, 0.77);
    if (v36)
    {
      goto LABEL_39;
    }
  }

  if (!v12)
  {
    v25 = MEMORY[0x277CBED10];
    goto LABEL_26;
  }

  v22 = CFWriteStreamCreateWithAllocatedBuffers(0, 0);
  CFWriteStreamOpen(v22);
  CFPropertyListWrite(v11, v22, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFWriteStreamClose(v22);
  v23 = CFWriteStreamCopyProperty(v22, *MEMORY[0x277CBF068]);
  CFRelease(v22);
  if (!v23)
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_2(v11, v26);
    }

    CFRelease(v11);
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_3();
      if (!a5)
      {
        goto LABEL_39;
      }
    }

    else if (!a5)
    {
      goto LABEL_39;
    }

    v35 = 1;
    v28 = C3DErrorCreate(0, @"Could not get the data for the serialized property list", 0);
    v29.n128_u32[0] = 1061997773;
    (*(a5 + 16))(a5, v40, &v35, v29);
    goto LABEL_37;
  }

  v24 = C3DIOCreateZippedData(v23);
  CFRelease(v23);
  if (!v24)
  {
    CFRelease(v11);
    v30 = scn_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      _C3DCreatePropertyListFromScene_cold_1();
      if (a5)
      {
        goto LABEL_36;
      }
    }

    else if (a5)
    {
LABEL_36:
      v34 = 1;
      v28 = C3DErrorCreate(0, @"Could not zip the serialized property list", 0);
      v31.n128_u32[0] = 1062836634;
      (*(a5 + 16))(a5, v40, &v34, v31);
LABEL_37:
      if (v28)
      {
        CFRelease(v28);
      }
    }

LABEL_39:
    CFRelease(Mutable);
    return 0;
  }

  CFDictionaryAddValue(Mutable, @"zippedData", v24);
  CFRelease(v24);
  v25 = MEMORY[0x277CBED28];
LABEL_26:
  CFDictionaryAddValue(Mutable, @"zipped", *v25);
  CFRelease(v11);
  if (a5)
  {
    v33 = 0;
    (*(a5 + 16))(a5, v40, &v33, 1.0);
    if (v33 == 1)
    {
      goto LABEL_39;
    }
  }

  return Mutable;
}

BOOL C3DIOWriteSceneToURL(const __CFURL *a1, const void *a2, const __CFDictionary *a3, const void *a4, uint64_t a5)
{
  v10 = C3DLibraryCreate();
  C3DLibraryFillWithContentOfScene(v10, a2, a3);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kSceneSourceInputLibrary");
    if (Value)
    {
      v12 = Value;
      v13 = C3DLibraryCopyKinds(Value);
      if (v13)
      {
        v14 = v13;
        v35 = a4;
        v36 = a2;
        v37 = a5;
        v38 = a1;
        Count = CFArrayGetCount(v13);
        if (Count >= 1)
        {
          v16 = Count;
          for (i = 0; i != v16; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
            valuePtr = 0;
            CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
            v19 = valuePtr;
            if (v19 != C3DKeyframedAnimationGetTypeID() && v19 != C3DMeshSourceGetTypeID())
            {
              v39 = 0;
              v20 = C3DLibraryCopyEntriesWithKind(v12, v19, &v39);
              if (v39 >= 1)
              {
                for (j = 0; j < v39; ++j)
                {
                  v22 = v20[j];
                  ID = C3DEntityGetID(v22);
                  if (ID && !C3DLibraryGetEntryWithDocumentID(v10, ID) && (v19 != C3DAnimationGroupGetTypeID() || C3DAnimationGroupIsAnimationClip(v22)))
                  {
                    C3DLibraryAddEntry(v10, v22);
                  }
                }
              }

              free(v20);
            }
          }
        }

        CFRelease(v14);
        a5 = v37;
        a1 = v38;
        a4 = v35;
        a2 = v36;
      }
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v25 = MutableCopy;
  v26 = CFDictionaryGetValue(MutableCopy, @"SCNSceneExportDestinationURL");
  if (!v26)
  {
    v26 = C3DCopyResolvedURLFromFileURL(a1);
    CFDictionarySetValue(v25, @"SCNSceneExportDestinationURL", v26);
    CFRelease(v26);
  }

  if (CFURLHasDirectoryPath(v26))
  {
    PathComponent = CFURLCopyAbsoluteURL(v26);
  }

  else
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v26);
  }

  v28 = PathComponent;
  CFDictionarySetValue(v25, @"kEnclosingFolderURL", PathComponent);
  CFRelease(v28);
  if (a4)
  {
    CFDictionarySetValue(v25, @"kC3DIOSerializationExportDelegate", a4);
  }

  v30 = _C3DCreatePropertyListFromScene(a2, v10, v25, v29, a5);
  CFRelease(v25);
  if (v30)
  {
    v31 = CFWriteStreamCreateWithFile(0, a1);
    if (v31)
    {
      v32 = v31;
      if (CFWriteStreamOpen(v31))
      {
        v33 = CFPropertyListWrite(v30, v32, kCFPropertyListBinaryFormat_v1_0, 0, 0) != 0;
        CFWriteStreamClose(v32);
      }

      else
      {
        v33 = 0;
      }

      CFRelease(v32);
    }

    else
    {
      v33 = 0;
    }

    CFRelease(v30);
  }

  else
  {
    v33 = 0;
  }

  CFRelease(v10);
  return v33;
}

void __EmitMalformedDocumentErrorIfNeeded(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    (*(a1 + 16))(a1, 0xFFFFFFFFLL, MalformedDocumentError, a2, 0.0);

    CFRelease(MalformedDocumentError);
  }
}

uint64_t _flagChildAnimationGroup(uint64_t a1)
{
  *(a1 + 84) |= 0x1000u;
  result = C3DAnimationGroupGetAnimationCount(a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
      result = C3DAnimationIsGroup(AnimationAtIndex);
      if (result)
      {
        result = _flagChildAnimationGroup(AnimationAtIndex);
      }
    }
  }

  return result;
}

double C3D::SSRRaytracePass::SSRRaytracePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  v5 = C3D::RenderPass::RenderPass(a1, a2, a3);
  *v5 = &unk_282DC6DB0;
  *(v5 + 31) = a4;
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  return result;
}

double C3D::SSRRaytracePass::setup(C3D::SSRRaytracePass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 2u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "ColorDownSampled";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "Normals";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 8) = "DepthDownSampled";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 8) = "SSR";
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v5);
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *(v2 + 16) = **(this + 31);
  *(v2 + 18) = *(*(this + 31) + 2);
  *(v2 + 66) &= 0xFFFCu;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v3 + 8) = "lobeFootprint";
  *(v3 + 65) = 1;
  C3D::Pass::parentColorDesc(this, &v5);
  result = *&v5;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 28) = 115;
  *(v3 + 16) = **(this + 31);
  *(v3 + 18) = *(*(this + 31) + 2);
  *(v3 + 66) &= 0xFFFCu;
  return result;
}

uint64_t C3D::SSRRaytracePass::compile(C3D::SSRRaytracePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  Scene = C3DEngineContextGetScene(*(this + 2));
  if (Scene)
  {
    v4 = C3DSceneGetFogEndDistance(Scene) > 0.0;
  }

  else
  {
    v4 = 0;
  }

  *(this + 392) = v4;
  v5 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  v9 = v5;
  v6 = ((2 * *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28)) << (4 * *(this + 392))) | v5;
  v7 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47));
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

_OWORD *C3D::SSRRaytracePass::execute(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 24) + 128);
  Scene = C3DEngineContextGetScene(*(a1 + 16));
  result = C3DEngineContextGetPointOfView(*(a1 + 16));
  if (result)
  {
    result = C3DNodeGetCamera(result);
    if (result)
    {
      v7 = *a2;
      CullingContext = C3D::DrawNodesPass::getCullingContext(*(a1 + 8));
      v9 = CullingContext[218];
      v10 = CullingContext[219];
      v11 = CullingContext[220];
      *(a1 + 256) = CullingContext[217];
      *(a1 + 272) = v9;
      *(a1 + 288) = v10;
      *(a1 + 304) = v11;
      *(a1 + 336) = C3DSceneGetSSRSampleCount(Scene);
      *(a1 + 332) = fmaxf(C3DSceneGetSSRMaxRayDistance(Scene), 0.0);
      *(a1 + 328) = fmaxf(C3DSceneGetSSRStride(Scene), 1.0);
      *(a1 + 320) = *(*(a1 + 248) + 8);
      PointOfViewScale = C3DEngineContextGetPointOfViewScale(*(a1 + 16));
      *&v13 = C3DSceneComputeFogParameters(Scene, PointOfViewScale);
      *(a1 + 352) = v13;
      result = C3DSceneGetFogColor(Scene);
      *(a1 + 368) = *result;
      if (*(a1 + 336) >= 1)
      {
        *(a1 + 384) = C3D::getBlueNoise32(0, 0, v4);
        v14 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 240) + 16) :"state" detail:? :?NSRetainFct];
        if (*(v7 + 3376) != v14)
        {
          *(v7 + 3376) = v14;
          [*(v7 + 3392) setRenderPipelineState:v14];
        }

        v18 = __invert_f4(*(a1 + 256));
        SCNMTLRenderCommandEncoder::setVertexBytes(v7, &v18, 0x40uLL, 0);
        v15 = C3D::Pass::inputTextureAtIndex(a1, 0);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v15, 0);
        v16 = C3D::Pass::inputTextureAtIndex(a1, 1u);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v16, 1uLL);
        v17 = C3D::Pass::inputTextureAtIndex(a1, 2u);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v17, 2uLL);
        SCNMTLRenderCommandEncoder::setFragmentTexture(v7, *(a1 + 384), 3uLL);
        SCNMTLRenderCommandEncoder::setFragmentBytes(v7, (a1 + 256), 0x80uLL, 0);
        return SCNMTLRenderCommandEncoder::drawFullScreenQuad(v7);
      }
    }
  }

  return result;
}

void C3D::SSRRaytracePassResource::~SSRRaytracePassResource(C3D::SSRRaytracePassResource *this)
{
  *this = &unk_282DC6E20;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6E20;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void Mesh::AddIndex(Mesh *this, __int16 a2)
{
  v3 = *(this + 36) + a2;
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 >= v4)
  {
    v7 = *(this + 6);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(this + 48, v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *(this + 6);
    *(this + 6) = v16;
    *(this + 7) = v6;
    *(this + 8) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 2;
  }

  *(this + 7) = v6;
}

void Mesh::AllocateVertices(Mesh *this, unsigned int a2)
{
  std::vector<SCNVector3>::resize(this, 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 2) + a2);
  v4 = ((*(this + 4) - *(this + 3)) >> 4) + a2;

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(this + 3, v4);
}

void std::vector<SCNVector3>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<SCNVector3>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

SCNGeometry *Mesh::CreateLineGeometry(Mesh *this)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [SCNGeometrySource geometrySourceWithVertices:"geometrySourceWithVertices:count:" count:?];
  v3 = +[SCNGeometryElement geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:](SCNGeometryElement, "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:", [MEMORY[0x277CBEA90] dataWithBytes:*(this + 6) length:*(this + 7) - *(this + 6)], 2, ((*(this + 7) - *(this + 6)) >> 1) >> 1, 2);
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v13 = v2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v12 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v12;
  }

  else
  {
    v6 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v5 - v4], @"kGeometrySourceSemanticColor", (*(this + 4) - *(this + 3)) >> 4, 1, 4, 4, 0, 0);
    v15[0] = v2;
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v14 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v14;
  }

  v10 = +[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", v7, [v8 arrayWithObjects:v9 count:1]);
  [-[SCNGeometry material](v10 "material")];
  return v10;
}

SCNGeometry *Mesh::CreateTriangleGeometry(Mesh *this)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [SCNGeometrySource geometrySourceWithVertices:"geometrySourceWithVertices:count:" count:?];
  v3 = +[SCNGeometryElement geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:](SCNGeometryElement, "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:", [MEMORY[0x277CBEA90] dataWithBytes:*(this + 6) length:*(this + 7) - *(this + 6)], 0, ((*(this + 7) - *(this + 6)) >> 1) / 3uLL, 2);
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v13 = v2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v12 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v12;
  }

  else
  {
    v6 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v5 - v4], @"kGeometrySourceSemanticColor", (*(this + 4) - *(this + 3)) >> 4, 1, 4, 4, 0, 0);
    v15[0] = v2;
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v14 = v3;
    v8 = MEMORY[0x277CBEA60];
    v9 = &v14;
  }

  v10 = +[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", v7, [v8 arrayWithObjects:v9 count:1]);
  [-[SCNGeometry material](v10 "material")];
  return v10;
}

SCNGeometry *Mesh::CreateCameraGeometry(Mesh *this)
{
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  v14.x = 0.5;
  v14.y = 0.5;
  v14.z = 0.75;
  Mesh::AppendWireframeBox(v9, &stru_21C2A2800, v14, &C3DAuthoringEnvironmentColorGrayMedium);
  *&v8.x = --0.0000305175998;
  v8.z = -0.5;
  *&v7.x = 0x3F0000003F000000;
  v7.z = -0.5;
  *&v6.x = -0.0000305175853;
  v6.z = -0.5;
  *&v5.x = 0xBF000000BF000000;
  v5.z = -0.5;
  *&v4.x = 0;
  v4.z = 0.0;
  Mesh::AppendWireframePyramid(v9, &v4, &v8, &v7, &v6, &v5, C3DAuthoringEnvironmentColorWhite);
  v4.x = 0.0;
  *&v4.y = 0x3FA000003F800000;
  Mesh::AppendWireframeXCylinder(v9, &v4, 0.5, 0.5, C3DAuthoringEnvironmentColorWhite);
  v3.x = 0.0;
  *&v3.y = 0x3E8000003F800000;
  Mesh::AppendWireframeXCylinder(v9, &v3, 0.5, 0.5, C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v9);
  if (v12)
  {
    *(&v12 + 1) = v12;
    operator delete(v12);
  }

  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return LineGeometry;
}

void sub_21C113518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void Mesh::AppendWireframeBox(Mesh *this, const SCNVector3 *a2, SCNVector3 a3, C3DColor4 *a4)
{
  v6 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v7.i64[0] = *&a2->x;
  v7.i32[2] = LODWORD(a2->z);
  v8 = (*(this + 7) - *(this + 6)) >> 1;
  v7.i32[3] = 1.0;
  v9.i64[0] = *&a3.x;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v8;
  v9.i64[1] = LODWORD(a3.z);
  v10 = vaddq_f32(v9, v9);
  v11 = vdupq_laneq_s32(v10, 3);
  v11.i32[0] = v10.i32[0];
  v19 = vsubq_f32(v7, v9);
  v20 = vaddq_f32(v11, v19);
  v21 = vaddq_f32(vextq_s8(v10, vuzp2q_s32(v10, v10), 0xCuLL), v19);
  v22 = vaddq_f32(v11, v21);
  v12 = vzip2q_s32(v10, v10);
  v13 = vextq_s8(v12, v12, 8uLL);
  v23 = vaddq_f32(v13, v19);
  v24 = vaddq_f32(v13, v20);
  v25 = vaddq_f32(v13, v21);
  v26 = vaddq_f32(v13, v22);
  do
  {
    v14 = *(&v19 + v6 * 8);
    v17 = v19.i64[v6];
    v18 = DWORD2(v14);
    std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, &v17);
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
    v6 += 2;
  }

  while (v6 != 16);
  for (i = 0; i != 24; ++i)
  {
    Mesh::AddIndex(this, word_21C2A280C[i]);
  }

  v16 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v16;
}

void Mesh::AppendWireframePyramid(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, SCNVector3 *a4, SCNVector3 *a5, SCNVector3 *a6, C3DColor4 *a7)
{
  v13 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v13;
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a2);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a3);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a4);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a5);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a6);
  v14 = 5;
  do
  {
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a7);
    --v14;
  }

  while (v14);
  for (i = 0; i != 16; ++i)
  {
    Mesh::AddIndex(this, word_21C2A283C[i]);
  }

  v16 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v16;
}

uint64_t Mesh::AppendWireframeXCylinder(Mesh *this, const SCNVector3 *a2, float a3, float a4, const C3DColor4 *a5)
{
  v10 = (this + 48);
  v11 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v11;
  Mesh::AllocateVertices(this, 0x18u);
  v12 = 0.0;
  for (i = 12; i != 24; ++i)
  {
    v14 = v12 * 6.28318531 / 12.0;
    v15 = __sincosf_stret(v14);
    v16 = (v15.__sinval * a3) + a2->y;
    v17 = (v15.__cosval * a3) + a2->z;
    v18 = a2->x + a4;
    v19 = i + *(this + 18);
    v20 = v19 - 12;
    v21 = *this;
    v22 = (*this + 12 * (v19 - 12));
    *v22 = a2->x - a4;
    v22[1] = v16;
    v22[2] = v17;
    v23 = (v21 + 12 * v19);
    *v23 = v18;
    v23[1] = v16;
    v23[2] = v17;
    *(*(this + 3) + 16 * v20) = *a5;
    *(*(this + 3) + 16 * (i + *(this + 18))) = *a5;
    v12 = v12 + 1.0;
  }

  std::vector<unsigned short>::resize(v10, ((*(this + 7) - *(this + 6)) >> 1) + 72);
  v24 = 0;
  v25 = *(this + 18);
  v26 = *(this + 19);
  v27 = *(this + 6);
  v28 = 1;
  v29 = v25;
  do
  {
    v30 = v26 + v24;
    *(v27 + 2 * (v26 + v24)) = v29;
    if (v24 == 66)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28;
    }

    *(v27 + 2 * (v30 + 1)) = v25 + v31;
    *(v27 + 2 * (v30 + 2)) = v29 + 12;
    result = (v30 + 3);
    *(v27 + 2 * result) = v25 + 12 + v31;
    *(v27 + 2 * (v30 + 4)) = v29;
    *(v27 + 2 * (v30 + 5)) = v29 + 12;
    v24 += 6;
    ++v29;
    ++v28;
  }

  while (v24 != 72);
  v33 = (*(this + 7) - v27) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v33;
  return result;
}

SCNGeometry *Mesh::CreateCameraFrustumGeometry(Mesh *this)
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  Mesh::AppendWireframeCameraFrustum(v3, C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return LineGeometry;
}

void Mesh::AppendWireframeCameraFrustum(Mesh *this, C3DColor4 *a2)
{
  *&v15.x = 0;
  v15.z = 0.0;
  v14.x = -1.0;
  __asm { FMOV            V0.2S, #1.0 }

  v9 = -_D0;
  *&v14.y = -_D0;
  *&v13.x = _D0;
  v13.z = -1.0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v12.x = _D0;
  v12.z = -1.0;
  *&v11.x = v9;
  v11.z = -1.0;
  Mesh::AppendSegment(this, &v15, &v14, a2, a2);
  Mesh::AppendSegment(this, &v15, &v13, a2, a2);
  Mesh::AppendSegment(this, &v15, &v11, a2, a2);
  Mesh::AppendSegment(this, &v15, &v12, a2, a2);
  Mesh::AppendQuad(this, &v14, &v13, &v11, &v12, a2);
}

SCNGeometry *Mesh::CreateOrthographicCameraFrustumGeometry(Mesh *this)
{
  *__p = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  *v4 = 0u;
  *&v3.x = 0;
  v3.z = -1.0;
  v9.x = 1.0;
  v9.y = 1.0;
  v9.z = 1.0;
  Mesh::AppendWireframeBox(v4, &v3, v9, C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return LineGeometry;
}

void sub_21C113BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

SCNGeometry *Mesh::CreateCameraNearPlaneGeometry(Mesh *this)
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  Mesh::AppendWireframeCameraNearPlane(v3, C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return LineGeometry;
}

double Mesh::AppendWireframeCameraNearPlane(Mesh *this, C3DColor4 *a2)
{
  __asm { FMOV            V0.2S, #-1.0 }

  *&v12.x = -_D0;
  v12.z = -1.0;
  __asm { FMOV            V1.2S, #1.0 }

  *&v11.x = _D1;
  v11.z = -1.0;
  *&v10.x = _D0;
  v10.z = -1.0;
  *&v9.x = -_D1;
  v9.z = -1.0;
  Mesh::AppendQuad(this, &v12, &v11, &v9, &v10, a2);
  return result;
}

SCNGeometry *Mesh::CreatePhysicsFieldGeometry(Mesh *this)
{
  *__p = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  *v4 = 0u;
  v3.z = 0.0;
  *&v3.x = 1065353216;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  v3.z = 0.0;
  *&v3.x = 3212836864;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0x3F80000000000000;
  v3.z = 0.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0xBF80000000000000;
  v3.z = 0.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0;
  v3.z = 1.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  *&v3.x = 0;
  v3.z = -1.0;
  Mesh::AppendCone(v4, &SCNVector3Zero, &v3, 0.2, 0.1, C3DAuthoringEnvironmentColorWhite);
  LineGeometry = Mesh::CreateLineGeometry(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return LineGeometry;
}

void sub_21C113E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void Mesh::AppendCone(Mesh *this, const SCNVector3 *a2, const SCNVector3 *a3, float a4, float a5, const C3DColor4 *a6)
{
  v10 = (this + 48);
  v11 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v11;
  Mesh::AllocateVertices(this, 0x33u);
  v12.i64[0] = *&a2->x;
  z = a2->z;
  v31 = *&a2->x;
  v13 = v12;
  v13.f32[2] = z;
  v12.i64[0] = *&a3->x;
  v12.i32[2] = LODWORD(a3->z);
  v33 = vmlaq_n_f32(v13, v12, a4);
  v35.i32[2] = 0;
  v35.i64[0] = 0;
  v34.i32[2] = 0;
  v34.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v35, &v34, v12);
  v14 = 0;
  v34 = vmulq_n_f32(v34, a5);
  v35 = vmulq_n_f32(v35, a5);
  v15 = 0.0;
  do
  {
    v16 = __sincosf_stret(v15);
    v17 = vmlaq_n_f32(vmlaq_n_f32(v33, v35, v16.__cosval), v34, v16.__sinval);
    v18 = v14 + *(this + 18);
    v19 = *this + 12 * v18;
    *v19 = v17.i64[0];
    *(v19 + 8) = v17.i32[2];
    *(*(this + 3) + 16 * v18) = *a6;
    ++v14;
    v15 = v15 + 0.12566;
  }

  while (v14 != 50);
  v20 = *(this + 18) + 50;
  v21 = *this + 12 * v20;
  *v21 = v31;
  *(v21 + 8) = z;
  *(*(this + 3) + 16 * v20) = *a6;
  std::vector<unsigned short>::resize(v10, ((*(this + 7) - *(this + 6)) >> 1) + 108);
  v22 = *(this + 18);
  v23 = *(this + 19);
  v24 = *(this + 6);
  v25 = 1;
  v26 = v23;
  do
  {
    *(v24 + 2 * v26) = v22 + v25 - 1;
    if (v25 == 50)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    *(v24 + 2 * (v26 + 1)) = v22 + v27;
    v26 += 2;
    ++v25;
  }

  while (v25 != 51);
  *(v24 + 2 * (v23 + 100)) = v22 + 50;
  *(v24 + 2 * (v23 + 101)) = v22;
  *(v24 + 2 * (v23 + 102)) = v22 + 50;
  *(v24 + 2 * (v23 + 103)) = v22 + 12;
  *(v24 + 2 * (v23 + 104)) = v22 + 50;
  *(v24 + 2 * (v23 + 105)) = v22 + 25;
  *(v24 + 2 * (v23 + 106)) = v22 + 50;
  *(v24 + 2 * (v23 + 107)) = v22 + 37;
  v28 = (*(this + 7) - v24) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v28;
}

void Mesh::AppendWireframeXYDisk(Mesh *this, const SCNVector3 *a2, float a3, C3DColor4 *a4)
{
  v8 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v8;
  v9 = 0.0;
  v10 = 24;
  do
  {
    v11 = v9 * 6.28318531 / 23.0;
    x = a2->x;
    v13 = __sincosf_stret(v11);
    y = a2->y;
    z = a2->z;
    *&v19 = x + (a3 * v13.__cosval);
    *(&v19 + 1) = y + (a3 * v13.__sinval);
    v20 = z + 0.0;
    std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, &v19);
    std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
    v9 = v9 + 1.0;
    --v10;
  }

  while (v10);
  for (i = 1; i != 25; ++i)
  {
    Mesh::AddIndex(this, i - 1);
    if (i == 24)
    {
      v17 = 0;
    }

    else
    {
      v17 = i;
    }

    Mesh::AddIndex(this, v17);
  }

  v18 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v18;
}

void Mesh::AppendWireframeEllispoid(uint64_t a1, float32x2_t *a2, unsigned int a3)
{
  v5 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v6 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = -1431655765 * ((*(a1 + 8) - *a1) >> 2);
  *(a1 + 76) = v6;
  v7 = 48 * a3;
  MEMORY[0x28223BE20](a1);
  v9 = &v62[-4 * v8];
  v11 = (32 * v10);
  *&v14 = MEMORY[0x28223BE20](v12);
  v15 = &v62[-2 * v11];
  if (v16)
  {
    v64 = v13;
    v65 = v5;
    v17 = 0;
    *&v70 = (a3 + 1);
    v63 = 2 * a3;
    v19 = a2->f32[0];
    v18 = a2->f32[1];
    v66 = *(&v14 + 1);
    v67 = v18;
    v69 = v14;
    v20 = *(&v14 + 2);
    v21 = v9 + 37;
    v22 = 3.14159265;
    v23 = v9;
    v24 = a2[1].f32[0];
    *&v68 = 3.14159265;
    do
    {
      v25 = v21;
      v26 = ++v17 * v22 / *&v70;
      v27 = __sincosf_stret(v26);
      v28 = 0;
      v29 = *&v69 * v27.__sinval;
      v30 = v67 + (v66 * v27.__cosval);
      v31 = v20;
      v32 = v20 * v27.__sinval;
      v33 = 0.0;
      do
      {
        v34 = __sincosf_stret(v33);
        v35 = (v23 + v28);
        *v35 = v19 + (v29 * v34.__cosval);
        v35[1] = v30;
        v35[2] = v24 + (v32 * v34.__sinval);
        v33 = v33 + 0.2618;
        v28 += 12;
      }

      while (v28 != 288);
      v23 += 36;
      v21 = (v25 + 72);
      v20 = v31;
      v22 = *&v68;
    }

    while (v17 != a3);
    v36 = 0;
    v37 = 0.0;
    do
    {
      v38 = v37 * v22 / a3;
      v39 = __sincosf_stret(v38);
      v40 = v69;
      *&v40 = *&v69 * v39.__cosval;
      v70 = v40;
      v41 = 0.0;
      v42 = 24;
      v43 = v25;
      do
      {
        v44 = __sincosf_stret(v41);
        v45 = a2[1].f32[0] + ((v20 * v39.__sinval) * v44.__cosval);
        *(v43 - 1) = vmla_f32(*a2, __PAIR64__(LODWORD(v44.__sinval), LODWORD(v44.__cosval)), *&v70);
        *v43 = v45;
        v43 += 3;
        v41 = v41 + 0.2618;
        --v42;
      }

      while (v42);
      v37 = v37 + 1.0;
      ++v36;
      v25 += 72;
    }

    while (v36 != a3);
    v46 = v64;
    v5 = v65;
    v47 = v63;
    if (v63)
    {
      v48 = 0;
      v49.i64[0] = 0x100000001;
      v49.i64[1] = 0x100000001;
      v50.i64[0] = 0x1800000018;
      v50.i64[1] = 0x1800000018;
      v51.i64[0] = 0x800000008;
      v51.i64[1] = 0x800000008;
      v52 = &v62[-2 * v11];
      do
      {
        v53 = 0;
        v54 = vdupq_lane_s32(v48, 1);
        v55 = xmmword_21C280330;
        v56 = xmmword_21C2A27F0;
        do
        {
          v57 = &v52[v53];
          v72.val[0] = vuzp1q_s16(vaddq_s32(v55, v54), vaddq_s32(v56, v54));
          v58 = vaddq_s32(v56, v49);
          v59 = vaddq_s32(v55, v49);
          v72.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v59, vceqq_s32(v59, v50)), v54), vaddq_s32(vbicq_s8(v58, vceqq_s32(v58, v50)), v54));
          vst2q_s16(v57, v72);
          v55 = vaddq_s32(v55, v51);
          v56 = vaddq_s32(v56, v51);
          v53 += 32;
        }

        while (v53 != 96);
        v48 = vadd_s32(v48, 0x1800000001);
        v52 += 96;
      }

      while (v48.i32[0] != v47);
    }

    if (v7)
    {
      do
      {
        std::vector<vmesh::Triangle>::push_back[abi:nn200100](v5, v9);
        std::vector<CFRange>::push_back[abi:nn200100](v5 + 24, v46);
        v9 = (v9 + 12);
        --v7;
      }

      while (v7);
    }

    if (v11)
    {
      do
      {
        v60 = *v15++;
        Mesh::AddIndex(v5, v60);
        --v11;
      }

      while (v11);
    }
  }

  v61 = (*(v5 + 56) - *(v5 + 48)) >> 1;
  *(v5 + 72) = -1431655765 * ((*(v5 + 8) - *v5) >> 2);
  *(v5 + 76) = v61;
}

void Mesh::AppendSegment(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, C3DColor4 *a4, C3DColor4 *a5)
{
  v9 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v9;
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a2);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a3);
  std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
  std::vector<CFRange>::push_back[abi:nn200100](this + 24, a5);
  Mesh::AddIndex(this, 0);
  Mesh::AddIndex(this, 1);
  v10 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v10;
}

void Mesh::AppendQuad(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, SCNVector3 *a4, SCNVector3 *a5, C3DColor4 *a6)
{
  v12 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v12;
  Mesh::AppendSegment(this, a2, a3, a6, a6);
  Mesh::AppendSegment(this, a3, a4, a6, a6);
  Mesh::AppendSegment(this, a4, a5, a6, a6);
  Mesh::AppendSegment(this, a5, a2, a6, a6);
  v13 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v13;
}

void Mesh::AppendSphericalCap(Mesh *this, float a2, float a3, const C3DColor4 *a4)
{
  v8 = (this + 48);
  v9 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v9;
  Mesh::AllocateVertices(this, 0x1Au);
  v10 = *this + 12 * *(this + 18);
  *(v10 + 8) = 0;
  *v10 = 0;
  *(*(this + 3) + 16 * *(this + 18)) = *a4;
  LODWORD(v10) = *(this + 18) + 1;
  v11 = *this + 12 * v10;
  *v11 = 0;
  *(v11 + 8) = -a2;
  *(*(this + 3) + 16 * v10) = *a4;
  v12 = __sincosf_stret(a3);
  v13 = -(a2 * v12.__cosval);
  v14 = v12.__sinval * a2;
  v15 = 0.0;
  for (i = 2; i != 26; ++i)
  {
    v17 = v15 * 6.28318531 / 24.0;
    v18 = __sincosf_stret(v17);
    v19 = i + *(this + 18);
    v20 = (*this + 12 * v19);
    *v20 = v14 * v18.__cosval;
    v20[1] = v14 * v18.__sinval;
    v20[2] = v13;
    *(*(this + 3) + 16 * v19) = *a4;
    v15 = v15 + 1.0;
  }

  std::vector<unsigned short>::resize(v8, ((*(this + 7) - *(this + 6)) >> 1) + 76);
  v21 = *(this + 18);
  v22 = *(this + 19);
  v23 = *(this + 6);
  v24 = v21 + 2;
  v25 = 6;
  v26 = v22;
  do
  {
    *(v23 + 2 * v26) = v21 + 1;
    *(v23 + 2 * (v26 + 1)) = v24;
    v26 += 2;
    v24 += 4;
    --v25;
  }

  while (v25);
  v27 = v22 + 13;
  for (j = 3; j != 27; ++j)
  {
    *(v23 + 2 * (v27 - 1)) = v21 + j - 1;
    if (j == 26)
    {
      v29 = 2;
    }

    else
    {
      v29 = j;
    }

    *(v23 + 2 * v27) = v21 + v29;
    v27 += 2;
  }

  v30 = v22 + 61;
  v31 = v21 + 2;
  v32 = 4;
  do
  {
    *(v23 + 2 * (v30 - 1)) = v21;
    *(v23 + 2 * v30) = v31;
    v30 += 2;
    v31 += 6;
    --v32;
  }

  while (v32);
  v33 = (*(this + 7) - v23) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v33;
}

void Mesh::AppendZUpArrow(Mesh *this, const C3DColor4 *a2)
{
  v4 = (this + 48);
  v5 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v5;
  Mesh::AllocateVertices(this, 0x25u);
  std::vector<unsigned short>::resize(v4, ((*(this + 7) - *v4) >> 1) + 180);
  v6 = 0;
  v7 = *(this + 18);
  v8 = *v4;
  v9 = *this;
  v10 = *(this + 19) + 11;
  v37 = vdupq_n_s64(0x3F847AE140000000uLL);
  __asm { FMOV            V10.2S, #5.0 }

  do
  {
    v16 = v6;
    v18 = __sincos_stret((2 * (v6 & 0x7FFFu)) * 3.14159265 / 12.0);
    v17.f64[0] = v18.__cosval;
    *(v8 + 2 * (v10 - 11)) = v7;
    *(v8 + 2 * (v10 - 9)) = v7 + 1;
    *(v8 + 2 * (v10 - 5)) = v7 + 1;
    *(v8 + 2 * (v10 - 3)) = v7 + 2;
    *(v8 + 2 * (v10 - 2)) = v7 + 1;
    v19 = (v9 + 12 * v7);
    v19[1].i32[0] = 0;
    v20 = (v9 + 12 * (v7 + 1));
    v20[1].i32[0] = 1061158912;
    v21 = (v9 + 12 * (v7 + 2));
    v17.f64[1] = v18.__sinval;
    v22 = vcvt_f32_f64(vmulq_f64(v17, v37));
    *v19 = v22;
    *v20 = v22;
    *v21 = vmul_f32(v22, _D10);
    v21[1].i32[0] = 1061158912;
    ++v6;
    if (v16 == 11)
    {
      v23 = -36;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 + v7;
    v25 = v24 + 4;
    *(v8 + 2 * (v10 - 10)) = v24 + 4;
    *(v8 + 2 * (v10 - 8)) = v7;
    *(v8 + 2 * (v10 - 7)) = v24 + 3;
    *(v8 + 2 * (v10 - 6)) = v24 + 4;
    v24 += 5;
    *(v8 + 2 * (v10 - 4)) = v24;
    *(v8 + 2 * (v10 - 1)) = v25;
    *(v8 + 2 * v10) = v24;
    v7 += 3;
    v10 += 12;
  }

  while (v16 < 0xB);
  v26 = 0;
  v28 = *(this + 18);
  v27 = *(this + 19);
  v29 = v28 + 36;
  v30 = *(this + 6);
  v31 = v28 + 32;
  do
  {
    v32 = v27 + v26;
    *(v30 + 2 * (v27 + v26 + 144)) = v29;
    if (v26 == 33)
    {
      v33 = 36;
    }

    else
    {
      v33 = 0;
    }

    *(v30 + 2 * (v32 + 145)) = v33 + v31;
    *(v30 + 2 * (v32 + 146)) = v31 + 3;
    v26 += 3;
    v31 -= 3;
  }

  while (v26 != 36);
  v34 = 0;
  v35 = *this + 12 * v29;
  *v35 = 0;
  *(v35 + 8) = 1065353216;
  do
  {
    *(*(this + 3) + 16 * (v34 + *(this + 18))) = *a2;
    ++v34;
  }

  while (v34 != 37);
  v36 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v36;
}

void std::vector<SCNVector3>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
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

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id C3DEntityCFFinalize(uint64_t a1)
{
  C3DEntityRemoveAllAnimations(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  return objc_storeWeak((a1 + 16), 0);
}

void C3DEntityRemoveAllAnimations(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetSceneRef(a1);
  v11 = v10;
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveAllAnimationsForObject(AnimationManager, a1);
    }
  }

  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _removeAnimationPlayerSceneRef, v11);
    _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
  }
}

void _C3DEntityCFInit()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _C3DEntityCFInit_cold_1(v0);
  }
}

void _C3DEntityCFFinalize()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _C3DEntityCFFinalize_cold_1(v0);
  }
}

uint64_t C3DEntityGetTypeID()
{
  if (C3DEntityGetTypeID_onceToken != -1)
  {
    C3DEntityGetTypeID_cold_1();
  }

  return C3DEntityGetTypeID_typeID;
}

double __C3DEntityGetTypeID_block_invoke()
{
  C3DEntityGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DEntityContextClassSceneLink;
  unk_281741908 = kC3DC3DEntityContextClassSceneLink;
  unk_281741918 = *off_282DC6E80;
  qword_281741928 = qword_282DC6E90;
  return result;
}

uint64_t C3DEntityGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

CFStringRef C3DEntitySetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t C3DEntityGetID(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DEntitySetID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

id *C3DEntityGetObjCWrapper(id *result)
{
  if (result)
  {
    return objc_loadWeak(result + 2);
  }

  return result;
}

id C3DEntitySetObjCWrapper(uint64_t a1, id obj)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return objc_storeWeak((a1 + 16), obj);
}

uint64_t C3DEntityGetAttributes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

const __CFDictionary *C3DEntityGetAttribute(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void _C3DEntitySetAttribute(CFTypeRef *a1, void *key, const __CFDictionary *a3, int a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (C3DEntityGetAttribute(a1, key) != a3)
  {
    Mutable = a1[5];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      a1[5] = Mutable;
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, key);
      if (!CFDictionaryGetCount(a1[5]))
      {
        CFRelease(a1[5]);
        a1[5] = 0;
      }
    }

    if (a4)
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, key, 1u);
    }
  }
}

const __CFDictionary *C3DEntityHasAttribute(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

void _C3DEntitySetAttributes(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  if (theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *(a1 + 40) = CFDictionaryCreateMutableCopy(0, 0, theDict);
    }
  }
}

void C3DEntitySetAttributes(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Value = CFDictionaryGetValue(MutableCopy, @"kIDKey");
  v5 = CFDictionaryGetValue(MutableCopy, @"kNameKey");
  if (Value)
  {
    C3DEntitySetID(a1, Value);
    CFDictionaryRemoveValue(MutableCopy, @"kIDKey");
  }

  if (v5)
  {
    C3DEntitySetName(a1, v5);
    CFDictionaryRemoveValue(MutableCopy, @"kNameKey");
  }

  _C3DEntitySetAttributes(a1, MutableCopy);

  CFRelease(MutableCopy);
}

uint64_t C3DEntityInitWithPropertyList(uint64_t a1, const __CFDictionary *a2)
{
  IsDictionary = C3DCFTypeIsDictionary();
  if (IsDictionary)
  {
    Value = CFDictionaryGetValue(a2, @"entity-name");
    v6 = CFDictionaryGetValue(a2, @"attributes");
    if (v6)
    {
      v7 = v6;
      v8 = CFDictionaryGetValue(v6, @"kSkinnerKey");
      v9 = CFDictionaryGetValue(v7, @"kMorpherKey");
      if (!(v8 | v9))
      {
        C3DEntitySetAttributes(a1, v7);
        if (Value)
        {
          goto LABEL_10;
        }

LABEL_15:
        v16 = CFDictionaryGetValue(a2, @"id");
        if (v16)
        {
          C3DEntitySetID(a1, v16);
        }

        v17 = CFDictionaryGetValue(a2, @"name");
        if (v17)
        {
          C3DEntitySetName(a1, v17);
        }

        return IsDictionary;
      }

      v10 = v9;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v7);
      v12 = MutableCopy;
      if (v8)
      {
        CFDictionaryRemoveValue(MutableCopy, @"kSkinnerKey");
      }

      if (v10)
      {
        CFDictionaryRemoveValue(v12, @"kMorpherKey");
      }

      C3DEntitySetAttributes(a1, v12);
      CFRelease(v12);
    }

    if (Value)
    {
LABEL_10:
      v13 = CFDictionaryGetValue(a2, @"entity-ID");
      C3DEntitySetName(a1, Value);
      C3DEntitySetID(a1, v13);
      return IsDictionary;
    }

    goto LABEL_15;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    C3DEntityInitWithPropertyList_cold_1(v14);
  }

  return IsDictionary;
}

__CFDictionary *C3DEntityCopyPropertyList(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Attributes = C3DEntityGetAttributes(a1);
  if (Attributes)
  {
    v9 = Attributes;
    CFRetain(Attributes);
  }

  else
  {
    v9 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _temporaryRemoveAttribute(v9, @"kCameraKey", v10);
  _temporaryRemoveAttribute(v9, @"kLightKey", v10);
  _temporaryRemoveAttribute(v9, @"kLightmapInfoKey", v10);
  _temporaryRemoveAttribute(v9, @"kConstraints", v10);
  _temporaryRemoveAttribute(v9, @"kAnimationsKey", v10);
  _temporaryRemoveAttribute(v9, @"kActionsKey", v10);
  _temporaryRemoveAttribute(v9, @"kShaderModifiers", v10);
  v11 = C3DCreatePropertyListFromDictionary(v9, a3, a2);
  CFDictionaryApplyFunction(v10, __restoreTemporaryRemovedAttributes, v9);
  CFRelease(v10);
  v12 = a1[3];
  if (v12)
  {
    CFDictionaryAddValue(v11, @"kIDKey", v12);
  }

  v13 = a1[4];
  if (v13)
  {
    CFDictionaryAddValue(v11, @"kNameKey", v13);
  }

  CFDictionarySetValue(Mutable, @"attributes", v11);
  CFRelease(v11);
  CFRelease(v9);
  v14 = a1[3];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"id", v14);
  }

  v15 = a1[4];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"name", v15);
  }

  return Mutable;
}

void _temporaryRemoveAttribute(const __CFDictionary *a1, const void *a2, __CFDictionary *a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      CFDictionaryAddValue(a3, a2, Value);

      CFDictionaryRemoveValue(a1, a2);
    }
  }
}

void C3DEntityCopyTo(uint64_t a1, CFTypeRef *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  ID = C3DEntityGetID(a1);
  C3DEntitySetID(a2, ID);
  Name = C3DEntityGetName(a1);
  C3DEntitySetName(a2, Name);
  Attributes = C3DEntityGetAttributes(a1);
  _C3DEntitySetAttributes(a2, Attributes);
  _C3DEntitySetAttribute(a2, @"_kvc", 0, 1);
  _C3DEntitySetAttribute(a2, @"kAnimationsKey", 0, 1);
}

CFDictionaryRef __CFTypeIsC3DEntity_block_invoke()
{
  keys[40] = *MEMORY[0x277D85DE8];
  if (CFTypeIsC3DEntity__cfTypeRegistry)
  {
    v0 = scn_default_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      __CFTypeIsC3DEntity_block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
    }
  }

  keys[0] = C3DGeometryGetTypeID();
  keys[1] = C3DMeshGetTypeID();
  keys[2] = C3DAnimationPlayerGetTypeID();
  keys[3] = C3DAnimationGroupGetTypeID();
  keys[4] = C3DAnimationClusterGetTypeID();
  keys[5] = C3DKeyframedAnimationGetTypeID();
  keys[6] = C3DMaterialGetTypeID();
  keys[7] = C3DImageGetTypeID();
  keys[8] = C3DMeshElementGetTypeID();
  keys[9] = C3DNodeGetTypeID();
  keys[10] = C3DCameraGetTypeID();
  keys[11] = C3DLightGetTypeID();
  keys[12] = C3DSkinGetTypeID();
  keys[13] = C3DSkinnerGetTypeID();
  keys[14] = C3DGenericSourceGetTypeID();
  keys[15] = C3DMeshSourceGetTypeID();
  keys[16] = C3DMorphGetTypeID();
  keys[17] = C3DMorpherGetTypeID();
  keys[18] = C3DSceneGetTypeID();
  keys[19] = C3DParametricGeometryGetTypeID();
  keys[20] = C3DShapeGeometryGetTypeID();
  keys[21] = C3DTextGeometryGetTypeID();
  keys[22] = C3DBezierCurveGeometryGetTypeID();
  keys[23] = C3DFloorGetTypeID();
  keys[24] = C3DFXTechniqueGetTypeID();
  keys[25] = C3DFXMetalProgramGetTypeID();
  keys[26] = C3DFXGLSLProgramGetTypeID();
  keys[27] = C3DLODGetTypeID();
  keys[28] = C3DParticleSystemGetTypeID();
  keys[29] = C3DConstraintIKGetTypeID();
  keys[30] = C3DConstraintLookAtGetTypeID();
  keys[31] = C3DConstraintBillboardGetTypeID();
  keys[32] = C3DConstraintProceduralGetTypeID();
  keys[33] = C3DConstraintConstantScaleGetTypeID();
  keys[34] = C3DConstraintDistanceGetTypeID();
  keys[35] = C3DConstraintAccelerationGetTypeID();
  keys[36] = C3DConstraintSliderGetTypeID();
  keys[37] = C3DConstraintReplicatorGetTypeID();
  keys[38] = C3DConstraintAvoidOccluderGetTypeID();
  TypeID = C3DKeyValueStoreGetTypeID();
  v9 = 0;
  keys[39] = TypeID;
  memset(v12, 0, sizeof(v12));
  v10 = vdupq_n_s64(1uLL);
  do
  {
    v12[v9++] = v10;
  }

  while (v9 != 20);
  result = CFDictionaryCreate(0, keys, v12, 40, 0, 0);
  CFTypeIsC3DEntity__cfTypeRegistry = result;
  return result;
}

BOOL C3DEntityIsTypeSupportingShaderModifiers(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  return CFTypeIsC3DGeometry(v10) || v10 == C3DMaterialGetTypeID();
}

const __CFDictionary *C3DEntityGetAnimations(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
}

const __CFDictionary *_C3DEntityGetSubAttributeOrderedDictionary(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = C3DOrderedDictionaryCreate();
    _C3DEntitySetAttribute(a1, key, Value, 1);
    if (CFGetRetainCount(Value) <= 1)
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _C3DEntityGetSubAttributeOrderedDictionary_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    CFRelease(Value);
  }

  return Value;
}

void C3DEntityAddAnimationForKey(float32x4_t *a1, uint64_t *a2, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  C3DEntityRemoveAnimationForKey(a1, a3, 1);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 1);
  C3DOrderedDictionarySetValue(SubAttributeOrderedDictionary, a3, a2);
  v31 = C3DGetScene(a1);
  if (v31)
  {
    v32 = v31;
    AnimationManager = C3DSceneGetAnimationManager(v31);
    C3DAddSceneRef(a2, v32);
    C3DAnimationManagerAddAnimationPlayerForKey(AnimationManager, a2, a1, a3);
  }
}

void C3DEntityRemoveAnimationForKey(void *a1, const void *a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v23 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v24 = C3DGetScene(a1);
    v25 = v24;
    if (v24)
    {
      AnimationManager = C3DSceneGetAnimationManager(v24);
      if (a3)
      {
        C3DAnimationManagerExecRemoveAnimation(AnimationManager, a1, a2);
      }

      else
      {
        C3DAnimationManagerRemoveAnimationForKey(AnimationManager, a1);
      }
    }

    Value = C3DOrderedDictionaryGetValue(v23, a2);
    if (Value)
    {
      C3DRemoveSceneRef(Value, v25);
      C3DOrderedDictionaryRemoveValue(v23, a2);
      if ((a3 & 1) == 0 && !C3DOrderedDictionaryGetCount(v23))
      {
        _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v23);
  }
}

void C3DEntityFadeAndRemoveAllAnimations(void *a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGetSceneRef(a1);
  v13 = v12;
  if (v12)
  {
    AnimationManager = C3DSceneGetAnimationManager(v12);
    if (AnimationManager)
    {
      C3DAnimationManagerFadeAndRemoveAllAnimationsForObject(AnimationManager, a1, a2);
    }
  }

  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _removeAnimationPlayerSceneRef, v13);
    _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
  }
}

void C3DEntityFadeAndRemoveAnimationForKey(void *a1, const void *a2, double a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v23 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v24 = C3DGetScene(a1);
    v25 = v24;
    if (v24)
    {
      AnimationManager = C3DSceneGetAnimationManager(v24);
      C3DAnimationManagerFadeAndRemoveAnimationForKey(AnimationManager, a1, a2, a3);
    }

    Value = C3DOrderedDictionaryGetValue(v23, a2);
    if (Value)
    {
      C3DRemoveSceneRef(Value, v25);
      C3DOrderedDictionaryRemoveValue(v23, a2);
      if (!C3DOrderedDictionaryGetCount(v23))
      {
        _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v23);
  }
}

uint64_t C3DEntityAddBinding(float32x4_t *a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DValueConcat_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  SubAttributeArray = _C3DEntityGetSubAttributeArray(a1, @"kBindingsKey", 1);
  CFArrayAppendValue(SubAttributeArray, a2);
  result = C3DGetScene(a1);
  if (result)
  {
    AnimationManager = C3DSceneGetAnimationManager(result);
    return C3DAnimationManagerAddBinding(AnimationManager, a1, [a2 keyPathDst], objc_msgSend(a2, "sourceObject"), objc_msgSend(a2, "keyPathSrc"), objc_msgSend(a2, "options"));
  }

  return result;
}

const __CFDictionary *_C3DEntityGetSubAttributeArray(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    _C3DEntitySetAttribute(a1, key, Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void C3DEntityRemoveAllBindings(CFTypeRef *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetScene(a1);
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveAllBindings(AnimationManager, a1);
    }
  }

  _C3DEntitySetAttribute(a1, @"kBindingsKey", 0, 1);
}

void C3DEntityRemoveBindingWithKeyPath(float32x4_t *a1, const __CFString *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEntityRemoveBindingWithKeyPath_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  SubAttributeArray = _C3DEntityGetSubAttributeArray(a1, @"kBindingsKey", 0);
  if (SubAttributeArray)
  {
    v21 = SubAttributeArray;
    v22 = SubAttributeArray;
    v23 = C3DGetScene(a1);
    if (v23)
    {
      AnimationManager = C3DSceneGetAnimationManager(v23);
      C3DAnimationManagerRemoveBinding(AnimationManager, a1, a2);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = [(__CFDictionary *)v21 copy];
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v31 + 1) + 8 * i);
          if ([objc_msgSend(v30 "keyPathDst")])
          {
            [(__CFDictionary *)v21 removeObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v27);
    }

    if (![(__CFDictionary *)v21 count])
    {
      _C3DEntitySetAttribute(a1, @"kBindingsKey", 0, 1);
    }
  }
}

void C3DEntityAddAction(void *a1, const void *a2, void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DEntityAddAction_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  C3DEntityRemoveActionForKey(a1, a3);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kActionsKey", 1);
  C3DOrderedDictionarySetValue(SubAttributeOrderedDictionary, a3, a2);
  v31 = C3DGetScene(a1);
  if (v31)
  {
    AnimationManager = C3DSceneGetAnimationManager(v31);
    C3DAnimationManagerAddAction(AnimationManager, a1, a2);
  }
}

void C3DEntityRemoveActionForKey(void *a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kActionsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v21 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v22 = C3DGetScene(a1);
    if (v22)
    {
      AnimationManager = C3DSceneGetAnimationManager(v22);
      C3DAnimationManagerRemoveActionWithKey(AnimationManager, a1, a2);
    }

    C3DOrderedDictionaryRemoveValue(v21, a2);
    if (!C3DOrderedDictionaryGetCount(v21))
    {
      _C3DEntitySetAttribute(a1, @"kActionsKey", 0, 1);
    }

    CFRelease(v21);
  }
}