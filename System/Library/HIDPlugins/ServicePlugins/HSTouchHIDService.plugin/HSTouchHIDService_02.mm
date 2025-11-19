float32x2_t MTParserPath_::getAverageVelocity_mm_s(MTParserPath_ *this)
{
  v1 = this->var5 * this->var5;
  v2 = v1 * 0.5;
  if (v1 > 1.0)
  {
    v2 = 0.5;
  }

  v3 = this[1].var3.var14.x * this[1].var3.var14.x;
  if (v3 <= 1.0)
  {
    v4 = v3 * 0.5;
  }

  else
  {
    v4 = 0.5;
  }

  return vmla_n_f32(vmul_n_f32(*&this[1].var3.var11, v4), this->var3.var14, v2);
}

float MTParserPath_::updateHysteresisDragCenter_mm(float *a1, uint64_t a2)
{
  v2 = a1[85];
  v3 = a1[86];
  v4 = a1[21];
  v5 = *(a2 + 56);
  if ((v4 - v2) <= v5)
  {
    if ((v4 - v2) >= -v5)
    {
      v10 = a1[85];
      goto LABEL_9;
    }

    v6 = v4 + v5;
    v7 = -1.0;
  }

  else
  {
    v6 = v4 - v5;
    v7 = 1.0;
  }

  v8 = v6;
  v9 = -0.0;
  if (a1[45] == v8)
  {
    v9 = v7;
  }

  v10 = v9 + v8;
  a1[85] = v10;
  v5 = *(a2 + 56);
LABEL_9:
  v11 = a1[22];
  if ((v11 - v3) <= v5)
  {
    v14 = v3;
    if ((v11 - v3) >= -v5)
    {
      return sqrtf(((v3 - v14) * (v3 - v14)) + ((v2 - v10) * (v2 - v10)));
    }

    v12 = v11 + v5;
    v13 = -1.0;
  }

  else
  {
    v12 = v11 - v5;
    v13 = 1.0;
  }

  v15 = v12;
  if (a1[46] != v15)
  {
    v13 = -0.0;
  }

  v14 = v13 + v15;
  a1[86] = v13 + v15;
  return sqrtf(((v3 - v14) * (v3 - v14)) + ((v2 - v10) * (v2 - v10)));
}

float MTParserPath_::getQuantizedMinorRadius_mm(MTParserPath_ *this)
{
  v1 = 512;
  if (this[4].var3.var12 == 0.0)
  {
    v1 = 80;
  }

  return *(&this->var0 + v1);
}

float MTParserPath_::getQuantizedMajorRadius_mm(MTParserPath_ *this)
{
  v1 = 516;
  if (this[4].var3.var12 == 0.0)
  {
    v1 = 76;
  }

  return *(&this->var0 + v1);
}

BOOL MTParserPath_::isFingerOrRestingContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return (*(&this->var0 + v1) - 1) < 5;
}

BOOL MTParserPath_::isThumbAlongEdgeContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return *(&this->var0 + v1) == 14;
}

BOOL MTParserPath_::isThumbContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return *(&this->var0 + v1) == 1;
}

BOOL MTParserPath_::isFingerContact(MTParserPath_ *this)
{
  if (this->var1 - 1000) <= 0xBB7 && (BYTE1(this[4].var3.var14.y))
  {
    return 0;
  }

  v2 = 40;
  if (this->var3.var3 == 7)
  {
    v2 = 136;
  }

  return (*(&this->var0 + v2) - 1) < 5;
}

BOOL MTParserPath_::isPalmContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return (*(&this->var0 + v1) - 6) < 6;
}

BOOL MTParserPath_::isEdgeContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return (*(&this->var0 + v1) - 12) < 3;
}

BOOL MTParserPath_::isUnidentifiedContact(MTParserPath_ *this)
{
  v1 = 40;
  if (this->var3.var3 == 7)
  {
    v1 = 136;
  }

  return *(&this->var0 + v1) == 0;
}

uint64_t MTParserPath_::isValidEdgeStraddleClick(MTParserPath_ *this)
{
  x = this[2].var3.var6.x;
  v2 = (LOWORD(x) & 0x3000) == 0;
  if ((LOWORD(x) & 0xC000) != 0)
  {
    v2 = 1;
  }

  v3 = 40;
  if (this->var3.var3 == 7)
  {
    v3 = 136;
  }

  v4 = *(&this->var0 + v3);
  if (v4 == 13)
  {
    v5 = (LODWORD(x) >> 14) & 1;
    return v2 & v5;
  }

  if ((v4 - 12) <= 2)
  {
    v5 = 1;
    return v2 & v5;
  }

  return 0;
}

uint64_t MTParserPath_::isValidClickSource(MTParserPath_ *this)
{
  var3 = this->var3.var3;
  v2 = 40;
  if (var3 == 7)
  {
    v2 = 136;
  }

  v3 = *(&this->var0 + v2);
  if ((v3 - 1) < 5 || v3 == 14)
  {
    return (var3 - 3) < 2;
  }

  result = MTParserPath_::isValidEdgeStraddleClick(this);
  if (result)
  {
    return (var3 - 3) < 2;
  }

  return result;
}

BOOL MTParserPath_::fingerLiftoffNearEdge(MTParserPath_ *this, MTSurfaceDimensions_ *a2, double a3)
{
  if ((this->var3.var3 - 3) < 2 || (HIDWORD(this[1].var3.var0) - 3) > 1 || (this->var1 - 1000) <= 0xBB7 && (BYTE2(this[4].var3.var14.y) & 1) != 0 || (LODWORD(this[1].var3.var1) - 1) > 4)
  {
    return 0;
  }

  v3 = (this[4].var3.var6.y * 3.0) * a3 + 1.2;
  v4 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*&this[1].var3.var2), vcvtq_f64_f32(*&this[1].var3.var4), a3));
  y = v4.y;
  return MTSurfaceDimensions_::minDistanceToEdge_mm(a2, v4, 1, 1) < v3;
}

uint64_t MTParserPath_::flushLiftoffAt(MTParserPath_ *this, double a2)
{
  v3 = *&this->var3.var8;
  *&this[1].var3.var2 = *&this->var3.var6.x;
  *&this[1].var3.var6.x = v3;
  v4 = *&this->var3.var14.y;
  *&this[1].var3.var8 = *&this->var3.var12;
  *&this[1].var3.var12 = v4;
  v5 = *&this->var3.var2;
  *&this[1].var0 = *&this->var3.var0;
  *&this[1].var3.var0 = v5;
  this->var3.var1 = a2;
  this->var3.var3 = 7;
  *&this->var4 = 0;
  this->var3.var15 = 0;
  *&this->var3.var8 = 0;
  MTParserPath_::updatePathStageTimestamps(this, a2);
  MTParserPath_::updateTotalDiscountedDistance(this, v6);

  return MTParserPath_::constructPathChangeEventMask(this);
}

uint64_t MTParserPath_::constructPathChangeEventMask(MTParserPath_ *this)
{
  var8 = this->var3.var8;
  if (var8 > 0.0)
  {
    var3 = this->var3.var3;
    if (var3 == 1)
    {
      goto LABEL_13;
    }

    if (this[1].var3.var6.x == 0.0)
    {
      goto LABEL_7;
    }
  }

  if (var8 == 0.0 && (this->var3.var3 == 7 || this[1].var3.var6.x > 0.0))
  {
LABEL_7:
    var3 = 1;
  }

  else
  {
    var3 = this->var3.var4;
    if (var3)
    {
      if (var3 == LODWORD(this[1].var3.var1) && this->var3.var5 == HIDWORD(this[1].var3.var1))
      {
        var3 = 0;
      }

      else
      {
        var3 = 32;
      }
    }
  }

LABEL_13:
  var15 = this->var3.var15;
  v5 = var3 & 0xFFFFD7FF | ((var15 & 1) << 11) & 0xDFFF | (((var15 >> 1) & 1) << 13);
  if ((var15 & 0x100) != 0)
  {
    v6 = 134479872;
  }

  else
  {
    v6 = 0x40000;
  }

  v7 = v6 & 0xF8FFFFFF | ((((var15 & 0x400) >> 10) & 1) << 25) & 0xFAFFFFFF | ((((var15 & 0x200) >> 9) & 1) << 26) | ((((var15 & 0x800) >> 11) & 1) << 24) | v5;
  if ((var15 & 4) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = this->var3.var3;
  if (v9 < 3)
  {
    goto LABEL_29;
  }

  var0_high = HIDWORD(this[1].var3.var0);
  if (var0_high < 3)
  {
    v8 |= 2u;
    if ((v9 - 3) > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v9 < 5)
  {
LABEL_27:
    if (var0_high > 4)
    {
      v8 |= 2u;
    }

    goto LABEL_29;
  }

  if (var0_high < 5)
  {
    v8 |= 2u;
  }

LABEL_29:
  if (((this[3].var3.var0 & 1) != 0 || BYTE1(this[3].var3.var0) == 1) && (this[3].var3.var7.x != this[3].var3.var6.x || this[3].var3.var7.y != this[3].var3.var6.y))
  {
    v8 |= 4u;
    *&this[2].var3.var4 = this->var3.var1;
  }

  if (BYTE3(this[3].var3.var0) == 1 && this->var3.var9 != this[1].var3.var6.y)
  {
    v8 |= 0x40u;
  }

  if ((this->var1 - 1000) <= 0xBB7 && BYTE1(this[4].var3.var14.y))
  {
    v8 |= 0x200u;
  }

  FlagsEventMaskBits = MTParserPath_::generateFlagsEventMaskBits(this, &this->var3);
  v12 = FlagsEventMaskBits;
  if (FlagsEventMaskBits == MTParserPath_::generateFlagsEventMaskBits(FlagsEventMaskBits, &this[1]))
  {
    result = v12 | v8;
  }

  else
  {
    result = v12 | v8 | 0x40;
  }

  this[3].var2 = result;
  return result;
}

void MTParserPath_::detectSustainedHoverAtEdge(uint64_t a1, uint64_t a2, MTSurfaceDimensions_ *this)
{
  v19.x = 4.0;
  v19.y = 4.0;
  v5 = MTSurfaceDimensions_::convertMillimetersToSurfaceFraction(this, v19);
  v6 = 240;
  if (*(a1 + 36) == 2)
  {
    v6 = 24;
  }

  v7 = *(a1 + v6);
  v8 = *(a1 + 48);
  v9 = *(a1 + 76);
  v10 = *(a2 + 40);
  v11 = v9 > v10 && ((v9 - v10) / (*(a2 + 44) - v10)) > 0.5;
  v12 = v7 - *(a1 + 232);
  v13 = v8;
  v14 = fabs(v8);
  v15 = fabs(v13 + -1.0);
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = v15;
  v18 = v12 > 2.0 && v5 > v16;
  *(a1 + 544) |= v18 && v11;
}

uint64_t MTParserPath_::computeZSignalInstability(uint64_t result, uint64_t a2, float *a3, int a4, double a5)
{
  v6 = *(result + 64);
  v7 = *(result + 160);
  if (v6 <= v7)
  {
    v8 = *(result + 160);
  }

  else
  {
    v8 = *(result + 64);
  }

  if (v8 > 0.0)
  {
    v11 = result;
    v12 = fabsf(((v6 - v7) * 100.0) / v8);
    if (a4)
    {
      v13 = a3[4];
    }

    else
    {
      v13 = 1.0;
    }

    v14 = v13 * a3[2];
    v15 = 0.0;
    if (v12 > v14)
    {
      v16 = v13 * a3[3];
      v15 = 1.0;
      if (v12 < v16)
      {
        v15 = ((v12 - v14) / (v16 - v14));
      }
    }

    pow(v15, 1.5);
    v17 = a5;
    v18 = 0.0;
    if (v17 < 0.5)
    {
      v18 = (0.5 - v17) + (0.5 - v17);
    }

    if (v17 > 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = ((a3[7] + -1.0) * v19) + 1.0;
    v22 = v11[19];
    v21 = v11[20];
    v23 = vabds_f32(v22, v11[43]);
    v24 = vabds_f32(v21, v11[44]);
    if (v23 > v24)
    {
      v24 = v23;
    }

    v25 = v20 * a3[5];
    v26 = 0.0;
    if (v24 > v25)
    {
      v26 = ((v24 - v25) / ((v20 * a3[6]) - v25));
    }

    v27 = pow(v26, 1.5);
    v28 = v11[133];
    v29 = 0.25;
    if (v28 >= v27)
    {
      v29 = 0.5;
      if (v6 >= v11[134])
      {
        v29 = 0.75;
      }
    }

    v30 = pow(v29, (*(a2 + 8) - *(a2 + 16)) / 0.00800000038);
    v11[133] = ((1.0 - v30) * v27) + (v30 * v28);
    return MTContact_getEllipseEccentricity();
  }

  return result;
}

void MTParserPath_::pullHysteresisCenterHidingUnstablePixelDeltasXY(float a1, float a2, float a3, float a4, uint64_t a5, float *a6, float *a7)
{
  v7 = a6[1];
  v8 = (v7 * a3) * *a6;
  v9 = (v7 * a4) * *a6;
  v10 = a7[1];
  v11 = a1 - *a7;
  if (v11 < -v8)
  {
    a1 = *a7 - v8;
  }

  if (v11 > v8)
  {
    a1 = *a7 + v8;
  }

  *a7 = a1;
  if ((a2 - v10) <= v9)
  {
    if ((a2 - v10) < -v9)
    {
      a2 = v10 - v9;
    }
  }

  else
  {
    a2 = v9 + v10;
  }

  a7[1] = a2;
}

void MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotion(float *a1, uint64_t a2, float *a3, MTSurfaceDimensions_ *this, float a5, int8x16_t a6, int8x16_t a7, float a8, int8x16_t a9, float a10)
{
  v15 = *a3;
  *a7.i32 = *a7.i32 - *a9.i32;
  *v10.i32 = a8 - a10;
  if (*(a2 + 43) == 1)
  {
    *a7.i32 = *a7.i32 + a1[112];
    *v10.i32 = *v10.i32 + a1[113];
  }

  v16 = a3[1];
  *a9.i32 = a5 - v15;
  v17 = *(a2 + 40);
  v18 = fabsf(*a7.i32);
  if (v17 != 1 || (*a9.i32 * *a7.i32) < 0.0)
  {
    if (*a9.i32 <= v18)
    {
      if (*a9.i32 >= -v18)
      {
        *a3 = a5;
        *a9.i32 = v18 - fabsf(*a9.i32);
        v20.i64[0] = 0x8000000080000000;
        v20.i64[1] = 0x8000000080000000;
        a9.i32[0] = vbslq_s8(v20, a9, a7).u32[0];
        goto LABEL_11;
      }

      v19 = v15 - v18;
    }

    else
    {
      v19 = v15 + v18;
    }

    *a3 = v19;
    a9.i32[0] = 0;
LABEL_11:
    a1[112] = *a9.i32;
  }

  v21 = *a6.i32 - v16;
  v22 = *(a2 + 41);
  v23 = fabsf(*v10.i32);
  if (v22 == 1 && (v21 * *v10.i32) >= 0.0)
  {
    if (v21 != 0.0)
    {
      v24 = *(a2 + 36);
      if (v24 >= (*v10.i32 / v21))
      {
        v24 = *v10.i32 / v21;
      }

      a3[1] = v16 - (v21 * v24);
    }
  }

  else
  {
    if (v21 <= v23)
    {
      if (v21 >= -v23)
      {
        a3[1] = *a6.i32;
        *a6.i32 = v23 - fabsf(v21);
        v26.i64[0] = 0x8000000080000000;
        v26.i64[1] = 0x8000000080000000;
        *(a1 + 113) = vbslq_s8(v26, a6, v10).u32[0];
        goto LABEL_24;
      }

      v25 = v16 - v23;
    }

    else
    {
      v25 = v16 + v23;
    }

    a3[1] = v25;
    a1[113] = 0.0;
  }

LABEL_24:
  v27 = a1[22];
  v28 = a1[94];
  if (!v17 || (*a7.i32 * (a1[21] - a1[93])) < 0.0)
  {
    v38 = v10.i32[0];
    v29 = MTSurfaceDimensions_::convertPixelDeltaToMillimeters(this, v18, 0);
    v10.i32[0] = v38;
    v30 = a1[21];
    v31 = a1[93];
    v32 = v30 - v31;
    if ((v30 - v31) < -v29)
    {
      v30 = v31 - v29;
    }

    v33 = v29 + v31;
    if (v32 > v29)
    {
      v34 = v33;
    }

    else
    {
      v34 = v30;
    }

    a1[93] = v34;
    LOBYTE(v22) = *(a2 + 41);
  }

  if ((v22 & 1) == 0 || (*v10.i32 * (v27 - v28)) < 0.0)
  {
    v35 = MTSurfaceDimensions_::convertPixelDeltaToMillimeters(this, v23, 1);
    v36 = a1[22];
    v37 = a1[94];
    if ((v36 - v37) <= v35)
    {
      if ((v36 - v37) < -v35)
      {
        v36 = v37 - v35;
      }
    }

    else
    {
      v36 = v35 + v37;
    }

    a1[94] = v36;
  }
}

float MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(uint64_t a1, double a2, float a3, double a4, float a5, double a6, float a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 4);
  v10 = a3 - v9;
  v11 = vabds_f32(a5, a7);
  if ((a5 - a7) < 0.0 && v10 > 0.0 || (a5 - a7) > 0.0 && v10 < 0.0)
  {
    if (v11 <= *(a1 + 488))
    {
      v11 = *(a1 + 488);
    }

    if (v10 <= v11)
    {
      if (v10 >= -v11)
      {
        *(a9 + 4) = a3;
        goto LABEL_13;
      }

      v12 = -2.0;
    }

    else
    {
      v12 = 2.0;
    }

    *(a9 + 4) = v9 + (v11 * v12);
    MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters_ const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions_)::alpha = 1065353216;
  }

LABEL_13:
  result = (v11 * *&MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters_ const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions_)::alpha) + (1.0 - *&MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters_ const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions_)::alpha) * *(a1 + 488);
  *(a1 + 488) = result;
  return result;
}

uint64_t MTParserPath_::applyAbsolutePixelHysteresis(MTParserPath_ *this, MTPoint a2, MTPoint *a3, MTPoint a4, float a5)
{
  v5 = a2.x - a3->x;
  v6 = -a5;
  if (v5 <= a5)
  {
    if (v5 >= v6)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v7 = a2.x + a5;
    v8 = -1.0;
  }

  else
  {
    v7 = a2.x - a5;
    v8 = 1.0;
  }

  v9 = v7;
  if (a4.x != v9)
  {
    v8 = -0.0;
  }

  a3->x = v8 + v9;
  v10 = 1;
LABEL_9:
  v11 = a2.y - a3->y;
  if (v11 <= a5)
  {
    if (v11 >= v6)
    {
      v15 = 0;
      return v10 | v15;
    }

    v12 = a2.y + a5;
    v13 = -1.0;
  }

  else
  {
    v12 = a2.y - a5;
    v13 = 1.0;
  }

  v14 = v12;
  if (a4.y != v14)
  {
    v13 = -0.0;
  }

  a3->y = v13 + v14;
  v15 = 1;
  return v10 | v15;
}

uint64_t MTParserPath_::applyAbsoluteForceHysteresis(float a1, float a2, uint64_t a3, float *a4, float *a5)
{
  v5 = a5[30];
  v6 = 0.0;
  if (v5 < a1)
  {
    v7 = a5[31];
    v6 = 1.0;
    if (v7 > a1)
    {
      v6 = (a1 - v5) / (v7 - v5);
    }
  }

  v8 = a5[28] + ((a5[29] - a5[28]) * v6);
  v9 = a1 - *a4;
  if (v9 <= v8)
  {
    if (v9 >= -v8)
    {
      return 0;
    }

    v10 = v8 + a1;
    v11 = -1.0;
  }

  else
  {
    v10 = a1 - v8;
    v11 = 1.0;
  }

  v12 = v10;
  if (v12 != a2)
  {
    v11 = -0.0;
  }

  *a4 = v11 + v12;
  return 1;
}

void MTParserPath_::updateAngularHysteresisCenter(MTParserPath_ *this, float *a2, float a3, float a4)
{
  if (a4 >= 0.0)
  {
    v6 = a4;
    v7 = a3;
    v8 = fmod(a3 - *&this->var0 + 3.14159265, 6.28318531);
    if (v8 < 0.0)
    {
      v8 = v8 + 6.28318531;
    }

    v9 = v8 + -3.14159265;
    if (v9 <= a4)
    {
      if (v9 >= -a4)
      {
        return;
      }

      v10 = v7 + v6;
    }

    else
    {
      v10 = v7 - v6;
    }

    v11 = fmod(v10 + 3.14159265, 6.28318531);
    if (v11 < 0.0)
    {
      v11 = v11 + 6.28318531;
    }

    a3 = v11 + -3.14159265;
  }

  *&this->var0 = a3;
}

void MTParserPath_::updateDampedVelocity(uint64_t a1, uint64_t a2, uint64_t a3, float a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v10 = *(a1 + 472);
  v11 = *(a3 + 72);
  v12 = *(a2 + 8) - *(a2 + 16);
  v13.i32[1] = 1067030937;
  if (v12 > 0.025 || *(a3 + 101) == 1 && (*(a1 + 36) - 1) <= 2)
  {
    v14 = vmul_f32(*(a1 + 492), 0);
  }

  else
  {
    v13.i32[0] = 0;
    a9.i32[0] = *(a2 + 320);
    v14 = vbsl_s8(vdup_lane_s32(vceq_s32(a9, v13), 0), *(a1 + 492), vmul_f32(*(a1 + 492), 0x3F0000003F000000));
  }

  v15 = v10 * a4;
  v16 = v15 - v11;
  v17 = v15 < v11;
  v18 = 0.0;
  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 / v10;
  if (v10 > 0.0)
  {
    v18 = v20;
  }

  v23 = v18;
  v21 = exp2(v12 / -0.00800000038);
  v22 = vmla_n_f32(vmul_n_f32(vmul_n_f32(*(a1 + 92), v23), 1.0 - v21), v14, v21);
  *(a1 + 492) = v22;
  *(a1 + 500) = hypotf(v22.f32[0], v22.f32[1]);
}

float MTParserPath_::computeDivingButtonChangeInstability(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8) - *(a2 + 392);
  result = 1.0;
  if (v3 > 0.0)
  {
    v5 = *(a3 + 88);
    result = 0.0;
    if (v5 > v3)
    {
      result = (v5 - v3) / v5;
    }
  }

  v6 = *(a1 + 32);
  if (*(a3 + 99) == 1)
  {
    v7 = *(a2 + 400);
    v8 = v6 != v7;
    v9 = *(a2 + 344);
    if (*(a2 + 372) != 1)
    {
      v8 = 1;
    }

    v10 = 0.25;
    v11 = 0.5;
    if (*(a2 + 360))
    {
      v10 = 0.5;
      v11 = 1.0;
    }

    v12 = 0.07;
    if (*(a2 + 360))
    {
      v12 = 0.15;
    }

    v13 = v8 | ~(v9 != 0);
    v14 = v10 * result;
    if (v9)
    {
      v8 = 1;
    }

    if ((v13 & 1) == 0)
    {
      result = v14;
    }

    if (!v8)
    {
      v15 = v11 * result;
      result = v15;
    }

    if (v6 != v7)
    {
      return v12 * result;
    }
  }

  else if (v6 != *(a2 + 376))
  {
    return result * 0.15;
  }

  return result;
}

void MTParserPath_::isStuckOnDivingRegion(MTParserPath_ *this, MTSurfaceDimensions_ **a2)
{
  if (this->var3.var2 == *(a2 + 94) && *(a2 + 91) == 1 && !(*(a2 + 93) - 1 + *(a2 + 92)))
  {
    if (((var4 = this->var3.var4, !*(a2 + 102)) || *(a2 + 103) <= 2) && (*(a2 + 28) & 0x80) == 0 || var4 == 1)
    {
      v5 = this->var3.var13.x - *&this[3].var3.var3;
      v6 = (this->var3.var13.y - *&this[3].var3.var4) * (this->var3.var13.y - *&this[3].var3.var4);
      v18.x = this->var3.var6.x;
      v18.y = 1.0 - this->var3.var6.y;
      MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(a2[5], v18);
      v8 = v7;
      ThumbRestingOrPolarZoneHeight = MTPathStates_::getThumbRestingOrPolarZoneHeight(a2);
      v10 = 1.0;
      if (v8 > 0.0)
      {
        v10 = 0.0;
        if (v8 < ThumbRestingOrPolarZoneHeight)
        {
          v10 = (ThumbRestingOrPolarZoneHeight - v8) / ThumbRestingOrPolarZoneHeight;
        }
      }

      v11 = 0.0;
      if (var4 == 1)
      {
        v11 = 1.0;
      }

      v12 = v10 * v11;
      var11 = this->var3.var11;
      if (var11 <= 8.0)
      {
        if (v12 <= 0.0)
        {
          v12 = 0.0;
        }
      }

      else if (var11 >= 13.0)
      {
        if (v12 <= 1.0)
        {
          v12 = 1.0;
        }
      }

      else
      {
        v14 = (var11 + -8.0) / 5.0;
        if (v12 <= v14)
        {
          v12 = v14;
        }
      }

      v15 = (v10 * 6.0) * v12;
      v16 = v15 + 0.2;
      if (!*(a2 + 360))
      {
        v16 = v15;
      }

      if (v16 > 0.0 && (v6 + (v5 * v5)) < (v16 * v16))
      {
        pow((v16 * 0.5), 1.5);
      }
    }
  }
}

MTParserPath_ *MTParserPath_::setPathSpeedSymmetries(MTParserPath_ *this, float a2, float a3)
{
  this[4].var4 = a2;
  this[4].var5 = a3;
  v3 = fabsf(a2);
  if (v3 < a3)
  {
    v3 = a3;
  }

  if (v3 < *&this[5].var0)
  {
    v3 = *&this[5].var0;
  }

  *&this[5].var0 = v3;
  return this;
}

double MTParserPath_::clearPathSpeedSymmetries(MTParserPath_ *this)
{
  result = 0.0;
  *&this[4].var4 = 0;
  LODWORD(this[5].var0) = 0;
  return result;
}

void MTParserPath_::measureInstability(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v8 = *(a1 + 24) - *(a1 + 216);
  if ((*(a1 + 8) - 1000) >= 0xBB8)
  {
    v10 = *(a1 + 76);
    v14 = (*(a2 + 8) - *(a2 + 16)) / 0.00800000038;
    v16 = 0.0;
  }

  else
  {
    v35 = *(a1 + 84);
    v9 = hypotf(v35.f32[0] - *(a1 + 360), v35.f32[1] - *(a1 + 364));
    if (v9 > *(a1 + 368))
    {
      *(a1 + 368) = v9;
    }

    v10 = *(a1 + 76);
    v11 = 0.0;
    v12 = 1.0;
    if (v10 < 16.0)
    {
      v12 = ((v10 + -8.0) * 0.125);
    }

    if (v10 > 8.0)
    {
      v11 = v12;
    }

    v13 = v11 * -0.1 + 0.9;
    v14 = (*(a2 + 8) - *(a2 + 16)) / 0.00800000038;
    v15 = pow(v13, v14);
    *(a1 + 372) = vmla_n_f32(vmul_n_f32(v35, 1.0 - v15), *(a1 + 372), v15);
    v16 = 0.0;
    if ((*(a2 + 28) & 2) != 0)
    {
      v16 = MTParserPath_::computeDivingButtonChangeInstability(a1, a2, a3);
    }
  }

  v17 = dbl_D6860[v8 > *(a3 + 92)];
  v18 = pow(v17, v14);
  v19 = 1.0;
  *(a1 + 536) = (*(a1 + 64) * (1.0 - v18)) + (v18 * *(a1 + 536));
  v20 = pow(0.949999988, v14);
  *(a1 + 540) = ((1.0 - v20) * v10) + (v20 * *(a1 + 540));
  MTParserPath_::computeZSignalInstability(a1, a2, a3, *(a1 + 352), v8);
  v22 = v21;
  v23 = 0.0;
  if ((*(a1 + 352) & 1) == 0)
  {
    v24 = v8;
    if (v24 <= 0.0)
    {
      v26 = 0.2;
    }

    else
    {
      v25 = *(a3 + 84);
      v26 = 0.0;
      v19 = 0.0;
      if (v25 > v24)
      {
        v19 = (v25 - v24) / v25;
      }

      v27 = *(a3 + 88);
      if (v27 > v24)
      {
        v26 = ((v27 - v24) / v27) * 0.2;
      }
    }

    if (v19 <= v26)
    {
      v23 = v26;
    }

    else
    {
      v23 = v19;
    }

    v28 = MTLoggingPlugin();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 32);
      *buf = 67109888;
      v37 = v34;
      v38 = 2048;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      v42 = 2048;
      v43 = v8;
      _os_log_debug_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Wating for slide, ZInstability=%f, TimeInstability=%f (from dtstart=%lfs)", buf, 0x26u);
    }
  }

  v29 = 0.0;
  if ((*(a1 + 8) - 1000) <= 0xBB7)
  {
    if ((*(a2 + 28) & 2) != 0 && (*(a1 + 354) & 1) == 0)
    {
      MTParserPath_::isStuckOnDivingRegion(a1, a2);
    }

    if ((*(a2 + 24) - 1000) <= 0x3E7)
    {
      v30 = 40;
      if (*(a1 + 36) == 7)
      {
        v30 = 136;
      }

      if ((*(a1 + v30) | 4) == 5 && *(a2 + 372) >= 5 && (*(a1 + 352) & 1) == 0)
      {
        v31 = MTPathStates_::numFingerSlidWhileEngaged(a2);
        v29 = v31 >= 3 ? 0.0 : 0.3;
        if (v31 < 3)
        {
          v16 = v16 + v16;
        }
      }
    }

    if (*(a3 + 100) == 1 && (*(a1 + 352) & 1) == 0 && *(a2 + 372) >= 5 && MTPathStates_::numFingerSlidWhileEngaged(a2) >= 3)
    {
      v22 = v22 * 0.5;
      v23 = v23 * 0.5;
    }
  }

  if (a4)
  {
    if (v22 <= v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = v22;
    }

    if (v23 <= v16)
    {
      v33 = v16;
    }

    else
    {
      v33 = v23;
    }

    if (v32 <= v33)
    {
      v32 = v33;
    }

    *a4 = v32;
  }
}

void MTParserPath_::filterContactForScreenUI(uint64_t a1, uint64_t a2, MTSurfaceDimensions_ *this, uint64_t a4, uint64_t a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v79.x = mthm_ComputeFingerEllipseTipOffset_mm(a5, this, (a1 + 16), (a1 + 112), a6, a7, a8, a9);
  *v14.i8 = MTSurfaceDimensions_::convertMillimetersToPixels(this, v79);
  v66 = v14;
  v67 = v15;
  v16 = 0.0;
  v17 = 0;
  if (*(a5 + 52) == 1)
  {
    v80.x = mthm_ComputeFingerEllipseTipOffsetFromPressure_mm(a5, this, a1 + 16);
    v17 = MTSurfaceDimensions_::convertMillimetersToPixels(this, v80).u32[0];
    v16 = v18;
  }

  *&v19 = MTSurfaceDimensions_::convertSurfaceFractionToPixels(this, *(a1 + 48));
  v68 = v20;
  v69 = v19;
  v77 = 0.0;
  v23 = *(a1 + 36);
  if (v23 >= 3 && *(a1 + 132) && (v23 < 5 || (*(a1 + 352) & 1) == 0))
  {
    v24 = (v23 == 3) & *(a4 + 101);
  }

  else
  {
    v24 = 1;
  }

  if (*(a4 + 98) == 1)
  {
    MTParserPath_::detectSustainedHoverAtEdge(a1, a4, this);
    v24 |= *(a1 + 544);
  }

  *(a1 + 520) = *(a1 + 512);
  MTParserPath_::correctAndQuantizeRadius(a1, a4, v19, *v20.i64, v21, v22);
  v28 = *(a4 + 80) == 1 && *(a1 + 56) == 0.0 && *(a1 + 60) == 0.0;
  v29 = *(a4 + 76);
  if (v29 <= 0.0 || v24 & 1 | ((*(a1 + 352) & 1) == 0) | v28)
  {
    v30 = 0;
  }

  else
  {
    v26 = *(a1 + 264);
    v30 = *(a1 + 24) - v26 > v29;
  }

  if (((v24 | v28) & 1) == 0 && !v30)
  {
    if (*(a4 + 97) == 1)
    {
      v27.i32[0] = *(a1 + 440);
      v31 = *(a1 + 444);
      v74 = off_109CB8;
      v75 = *(this + 8);
      v76 = *(this + 24);
      MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotion(a1, a5, (a1 + 400), &v74, *&v69, v68, v66, v67, v27, v31);
      MTSurfaceDimensions_::~MTSurfaceDimensions_(&v74);
    }

    if (*(a5 + 52))
    {
      v27.i32[0] = *(a1 + 476);
      v32 = *(a1 + 480);
      v71 = off_109CB8;
      v33 = *(this + 24);
      v72 = *(this + 8);
      v73 = v33;
      LODWORD(v26) = v17;
      MTParserPath_::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(a1, v69, *v68.i32, v26, v16, *v27.i64, v32, v25, a1 + 400);
      MTSurfaceDimensions_::~MTSurfaceDimensions_(&v71);
    }

    MTParserPath_::measureInstability(a1, a2, a4, &v77);
    v35 = v34;
    MTParserPath_::pullHysteresisCenterHidingUnstablePixelDeltasXY(*&v69, *v68.i32, v35, v35, v36, a4, (a1 + 400));
    v37 = *(a1 + 400);
    LODWORD(v81.y) = v68.i32[0];
    v81.x = *&v69;
    v39 = MTParserPath_::applyAbsolutePixelHysteresis(v38, v81, (a1 + 400), *(a1 + 144), *(a4 + 56));
    v40 = *(a1 + 352) | v39;
    *(a1 + 352) = v40;
    if (*(a1 + 545))
    {
      v41 = 0;
    }

    else
    {
      v41 = *(a1 + 354) | v39;
    }

    *(a1 + 354) = v41;
    *(a1 + 353) = v40;
    MTParserPath_::pullHysteresisCenterHidingUnstablePixelDeltasXY(*&v69, *v68.i32, v77, v77, v39, a4, (a1 + 408));
    LODWORD(v82.y) = v68.i32[0];
    v82.x = *&v69;
    v45 = MTParserPath_::applyAbsolutePixelHysteresis(v44, v82, (a1 + 408), *(a1 + 144), *(a4 + 56));
    *(a1 + 353) |= v45;
    if (*(a5 + 42) == 1)
    {
      v70 = vcvt_f32_s32(vcvt_s32_f32(*(a1 + 416)));
      MTParserPath_::pullHysteresisCenterHidingUnstablePixelDeltasXY(*v66.i32, v67, v35, v35, v45, a4, (a1 + 416));
      LODWORD(v83.x) = v66.i32[0];
      v83.y = v67;
      v45 = MTParserPath_::applyAbsolutePixelHysteresis(v46, v83, (a1 + 416), v70, *(a4 + 56));
    }

    v47 = *(a1 + 400);
    v48 = vsub_f32(v47, v37);
    v49 = vadd_f32(v48, *(a1 + 432));
    *(a1 + 424) = v48;
    *(a1 + 432) = v49;
    if ((*(a1 + 352) & 1) != 0 || *(a1 + 353) == 1)
    {
      *(a1 + 392) = *(a1 + 384);
      *(a1 + 384) = vcvt_f32_s32(vcvt_s32_f32(v47));
    }

    goto LABEL_63;
  }

  *(a1 + 400) = vdupq_lane_s64(__SPAIR64__(v68.u32[0], LODWORD(v69)), 0);
  *(a1 + 392) = *(a1 + 384);
  *(a1 + 384) = vcvt_f32_s32(vcvt_s32_f32(__PAIR64__(v68.u32[0], LODWORD(v69))));
  if (*(a5 + 42) == 1)
  {
    *(a1 + 416) = v66.i32[0];
    *(a1 + 420) = v67;
  }

  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 536) = *(a1 + 64);
  *(a1 + 540) = *(a1 + 76);
  v42 = *(a1 + 8) - 1000;
  if (v42 <= 0xBB7)
  {
    v43 = *(a1 + 84);
    *(a1 + 372) = v43;
    *(a1 + 360) = v43;
  }

  if (*(a5 + 43) != 1)
  {
LABEL_33:
    if (v24)
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  if ((v28 | v24))
  {
    *(a1 + 448) = 0;
    *(a1 + 484) = 0;
    goto LABEL_33;
  }

  *(a1 + 448) = vadd_f32(*(a1 + 448), vsub_f32(__PAIR64__(LODWORD(v67), v66.u32[0]), *(a1 + 440)));
  if (v24)
  {
LABEL_34:
    *(a1 + 352) = 0;
    *(a1 + 354) = 0;
    if (v42 <= 0xBB7)
    {
      *(a1 + 368) = 0;
      *(a1 + 548) = 0;
    }

    goto LABEL_53;
  }

LABEL_44:
  if (!v30)
  {
    goto LABEL_54;
  }

  if (v42 > 0xBB7)
  {
    *(a1 + 352) = 0;
    *(a1 + 354) = 0;
  }

  else
  {
    v50 = 40;
    if (*(a1 + 36) == 7)
    {
      v50 = 136;
    }

    if (*(a1 + v50) == 1 && *(a2 + 412) >= 2 && *(a2 + 372) > 1)
    {
      goto LABEL_54;
    }

    *(a1 + 352) = 0;
    *(a1 + 354) = 0;
    *(a1 + 368) = 0;
  }

LABEL_53:
  *(a1 + 545) = 0;
LABEL_54:
  if (*(a1 + 40) <= 5 && *(a1 + 136) < 6)
  {
    v52 = MTLoggingPlugin();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 32);
      v54 = MTGetPathStageName();
      MTParserPath_::filterContactForScreenUI(v54, buf, v53, v52);
    }
  }

  else
  {
    v51 = MTLoggingPlugin();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      MTParserPath_::filterContactForScreenUI(a1, (a1 + 40), v51);
    }
  }

  v35 = 0.0;
LABEL_63:
  *(a1 + 355) = MTParserPath_::applyAbsoluteForceHysteresis(*(a1 + 68), *(a1 + 164), v45, (a1 + 356), a4);
  *(a1 + 68) = *(a1 + 356);
  *(a1 + 440) = v66.i32[0];
  *(a1 + 444) = v67;
  if (*(a5 + 52) == 1)
  {
    *(a1 + 476) = v17;
    *(a1 + 480) = v16;
  }

  v84.x = *(a1 + 56);
  *(a1 + 48) = vcvt_f32_s32(vcvt_s32_f32(*(a1 + 400)));
  v84.y = *(a1 + 60);
  *(a1 + 56) = MTSurfaceDimensions_::convertSurfaceFractionVelocityToPixelsPerSecond(this, v84);
  *(a1 + 60) = v55;
  *(a1 + 464) = *(a1 + 56);
  *(a1 + 472) = hypotf(*(a1 + 92), *(a1 + 96));
  if (*(a4 + 101) == 1 && (*(a1 + 36) - 1) <= 2)
  {
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  v60 = 1.0 - v35;
  if ((1.0 - v35) < 0.0)
  {
    v60 = 0.0;
  }

  MTParserPath_::updateDampedVelocity(a1, a2, a4, v60, 0.0, v56, v57, v58, v59);
  v62 = *(a4 + 64);
  if (v62 >= 0.0)
  {
    v63 = v62 * 0.0174532925;
    MTParserPath_::updateAngularHysteresisCenter((a1 + 456), v61, *(a1 + 104), v63);
    *(a1 + 104) = *(a1 + 456);
  }

  v64 = *(a4 + 68);
  if (v64 >= 0.0)
  {
    v65 = v64 * 0.0174532925;
    MTParserPath_::updateAngularHysteresisCenter((a1 + 460), v61, *(a1 + 72), v65);
    *(a1 + 72) = *(a1 + 460);
  }
}

void MTParserPath_::correctAndQuantizeRadius(uint64_t a1, uint64_t a2, double a3, double a4, float64x2_t _Q2, int8x16_t a6)
{
  v7 = 0.0;
  if (*(a2 + 102) == 1)
  {
    v8 = *(a1 + 36) - 1;
    if (v8 <= 5 && (*(a1 + 132) - 1) >= 6)
    {
      _D1 = vrev64_s32(*(a1 + 76));
    }

    else
    {
      __asm { FMOV            V2.2D, #0.5 }

      v13 = vmulq_f64(vcvtq_f64_f32(*(a1 + 76)), _Q2);
      _D1 = vcvt_f32_f64(vmlaq_f64(vextq_s8(v13, v13, 8uLL), _Q2, vcvtq_f64_f32(*(a1 + 504))));
    }

    *(a1 + 504) = _D1;
    v15 = 0.0;
    v16 = 0.0;
    if (v8 <= 3)
    {
      _S0 = *(a2 + 104);
      *a6.i32 = *(a2 + 108) + (_S0 * _D1.f32[0]);
      __asm { FMLA            S2, S0, V1.S[1]; float }

      v18 = fmaxf(*_Q2.f64, 2.0);
      v15 = _QuantizedRadius(fmaxf(*a6.i32, 2.0), *(a1 + 520), _Q2, a6);
      v16 = _QuantizedRadius(v18, *(a1 + 524), v19, v20);
    }

    *(a1 + 512) = v15;
    *(a1 + 516) = v16;
    v7 = 1.0;
  }

  *(a1 + 528) = v7;
}

float _QuantizedRadius(float a1, float a2, int8x16_t a3, int8x16_t a4)
{
  if (a1 == 0.0)
  {
    return 0.0;
  }

  if (a1 < 2.0)
  {
    a1 = 2.0;
  }

  *a4.i32 = a1 + -2.0;
  v5 = (a1 + -2.0) * 0.5;
  v6 = v5;
  *a3.i32 = (a1 + -2.0) + (truncf(v5) * -2.0);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  *a3.i64 = *vbslq_s8(v7, a3, a4).i32;
  if (a1 <= a2 || *a3.i64 <= 1.334)
  {
    v10 = *a3.i64 > 0.666 && a1 < a2;
    v8 = v10 + v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  return (v8 * 2.0) + 2.0;
}

BOOL MTParserPath_::stableAndMoved(MTParserPath_ *this)
{
  if ((this[3].var3.var0 & 1) == 0 && BYTE1(this[3].var3.var0) != 1)
  {
    return 0;
  }

  if (this[3].var3.var7.x == this[3].var3.var6.x)
  {
    return this[3].var3.var7.y != this[3].var3.var6.y;
  }

  return 1;
}

uint64_t MTParserPath_::generateFlagsEventMaskBits(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 84);
  v3 = v2 & 0xFE7;
  if ((v2 & 0x100) != 0)
  {
    v4 = 134479872;
  }

  else
  {
    v4 = 0x40000;
  }

  if (v3 >= 0x800)
  {
    v5 = (v3 << 15) & 0x2000000 | ((((v2 & 0xFE7) >> 9) & 1) << 26) | v4 | (v2 << 12) & 0x2000 | ((v2 & 1) << 11) | 0x1000000;
  }

  else
  {
    v5 = (v3 << 15) & 0x2000000 | ((((v2 & 0xFE7) >> 9) & 1) << 26) | v4 | (v2 << 12) & 0x2000 | ((v2 & 1) << 11);
  }

  if ((v2 & 4) == 0)
  {
    v5 = (v2 << 12) & 0x2000 | ((v2 & 1) << 11);
  }

  return v5 | (v2 << 8) & 0xC000u;
}

void __cxx_global_var_init_27()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

uint64_t MTPathStates_::MTPathStates_(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, int a6)
{
  v11 = a4;
  v12[0] = a3;
  *a1 = off_1096B0;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  *(a1 + 40) = a2;
  v7 = (a1 + 280);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  MTRestZoneIntegrator_::MTRestZoneIntegrator_(a1 + 512);
  std::vector<MTParserPath_>::reserve(v7, 0x20uLL);
  v8 = *(a1 + 288);
  v9 = 32;
  do
  {
    if (v8 >= *(a1 + 296))
    {
      v8 = std::vector<MTParserPath_>::__emplace_back_slow_path<MTParserType const&,MTParserOptions const&>(v7, v12, &v11);
    }

    else
    {
      MTParserPath_::MTParserPath_(v8, v12[0], v11);
      v8 += 568;
      *(a1 + 288) = v8;
    }

    *(a1 + 288) = v8;
    --v9;
  }

  while (v9);
  MTPathStates_::clear(a1);
  MTPathStates_::initializeParams(a1);
  MTPathStates_::updateSurfaceDimensions(a1);
  *(a1 + 344) = 0;
  return a1;
}

void sub_4C21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTParserPath_>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<MTParserPath_>::reserve(void *result, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x73615A240E6C2CLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath_>>(result, a2);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_4C328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTParserPath_>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MTPathStates_::clear(MTPathStates_ *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = 32;
  do
  {
    MTParserPath_::clear((*(this + 35) + v2));
    v2 += 568;
    --v3;
  }

  while (v3);
  *(this + 180) = 0;
  *(this + 105) = 0;
  *(this + 436) = 0;
  *(this + 484) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 372) = 0;
  *(this + 364) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 100) = 0;
  *(this + 51) = 0;
  *(this + 416) = 0;
  *(this + 59) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 120) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 61) = 0x7FF0000000000000;

  MTRestZoneIntegrator_::clear(this + 64);
}

double MTPathStates_::initializeParams(MTPathStates_ *this)
{
  MTParameterFactory_::initFingerTipOffsetParams(this + 180, *(this + 6), *(this + 7), *(this + 32));
  MTParameterFactory_::initPathFilterParams(this + 48, *(this + 6), *(this + 7), *(this + 32), *(this + 5), *(this + 9));
  MTParameterFactory_::initTouchZoneParams(this + 244, *(this + 6), *(this + 7), *(this + 32));

  return MTParameterFactory_::initForceFilterParams((this + 328));
}

void MTPathStates_::updateSurfaceDimensions(MTPathStates_ *this)
{
  v7.x = 0.0;
  v7.y = 0.0;
  MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(*(this + 5), v7);
  *(this + 108) = v2;
  v3 = v2 / 76.0;
  v4 = sqrtf(v2 / 76.0);
  if (v3 < 1.0)
  {
    v3 = v4;
  }

  *(this + 107) = v3;
  *(this + 106) = v3 * 12.0;
  v5 = *(this + 5);

  MTParameterFactory_::updatePathFilterParamsWithNewSurfaceDimensions(this + 48, v5);
}

void MTPathStates_::~MTPathStates_(MTPathStates_ *this)
{
  *this = off_1096B0;
  MTRestZoneIntegrator_::~MTRestZoneIntegrator_((this + 512));
  v2 = (this + 280);
  std::vector<MTParserPath_>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = off_1096B0;
  MTRestZoneIntegrator_::~MTRestZoneIntegrator_((this + 512));
  v2 = (this + 280);
  std::vector<MTParserPath_>::__destroy_vector::operator()[abi:ne200100](&v2);
  operator delete();
}

void MTPathStates_::clearExistingPathLiftoffsAndMasks(MTPathStates_ *this)
{
  v2 = 0;
  v3 = *(this + 35);
  v4 = 32;
  do
  {
    if (*(v3 + v2 + 36) == 7)
    {
      MTParserPath_::clear((v3 + v2));
      v3 = *(this + 35);
    }

    *(v3 + v2 + 348) = 0;
    v2 += 568;
    --v4;
  }

  while (v4);
}

void MTPathStates_::updateFastestFingerSpeed(MTPathStates_ *this)
{
  v2 = 0;
  v3 = (this + 304);
  *(this + 38) = 0;
  *(this + 39) = 0;
  v4 = 0.0;
  v5 = 1;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = *(this + 35);
    v12 = v11 + v2;
    if (v5 == *(v11 + v2 + 600) && *(v12 + 632) > 0.0 && MTParserPath_::isFingerContact((v12 + 568)))
    {
      v13 = (v11 + v2);
      if ((*(v11 + v2 + 604) - 3) <= 2)
      {
        v14 = v13[267];
        v15 = v13[265];
        v16 = v13[266];
        v6 = v6 + v14;
        v4 = v4 + (v14 * v14);
        v9 = v9 + fabsf(v15);
        v8 = v8 + fabsf(v16);
        v7 = v7 + (v15 * v15);
        v10 = v10 + (v16 * v16);
        v17 = hypotf(v13[165], v13[166]);
        if (v17 > *(this + 79))
        {
          *(this + 79) = v17;
        }
      }
    }

    ++v5;
    v2 += 568;
  }

  while (v5 != 32);
  if (v6 > 0.0)
  {
    *v3 = v4 / v6;
  }

  if (v9 > 0.0)
  {
    *(this + 77) = v7 / v9;
  }

  if (v8 > 0.0)
  {
    *(this + 78) = v10 / v8;
  }
}

MTPathStates_ *MTPathStates_::expandAndFilterPackedContacts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 320) = 0;
  if (a2)
  {
    if (a3 >= 1)
    {
      v6 = a3;
      v7 = *(a1 + 280);
      v8 = a2;
      do
      {
        v9 = *(v8 + 16);
        MTParserPath_::updateCurPrevContactsWith((v7 + 568 * v9), v8, *(a1 + 40), (a1 + 244), *(a1 + 8));
        v7 = *(a1 + 280);
        v10 = v7 + 568 * v9;
        if (*(v10 + 36) == 1 || !*(v10 + 132))
        {
          ++*(a1 + 320);
        }

        v8 += 96;
        --v6;
      }

      while (v6);
    }

    (*(*a1 + 40))(a1);
    (*(*a1 + 48))(a1, a2, v3);
  }

  (*(*a1 + 56))(a1);
  MTPathStates_::updateFastestFingerSpeed(a1);
  result = MTPathStates_::forceFingerUniquenessAcrossHands(a1);
  if (v3 >= 1)
  {
    v3 = v3;
    v12 = (a2 + 16);
    do
    {
      v13 = *v12;
      v12 += 24;
      result = MTParserPath_::constructPathChangeEventMask((*(a1 + 280) + 568 * v13));
      --v3;
    }

    while (v3);
  }

  return result;
}

MTPathStates_ *MTPathStates_::forceFingerUniquenessAcrossHands(MTPathStates_ *this)
{
  v1 = 0;
  memset(v9, 0, sizeof(v9));
  v2 = *(this + 35);
  do
  {
    v3 = v2 + 568 * v1;
    if ((*(v3 + 36) - 1) <= 5)
    {
      v4 = *(v3 + 40);
      if (*(v9 + v4))
      {
        v5 = v4 - 1 > 4;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        v6 = v4;
        v7 = 1;
        while (v6 != 5)
        {
          v8 = *(v9 + v6++);
          --v7;
          if (!v8)
          {
            v4 -= v7;
            *(v3 + 40) = v4;
            break;
          }
        }
      }

      ++*(v9 + v4);
    }

    ++v1;
  }

  while (v1 != 32);
  return this;
}

uint64_t MTPathStates_::unpackContactFrame(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 8);
  if (v7 > a4)
  {
    v7 = 0.0;
  }

  *(a1 + 8) = a4;
  *(a1 + 16) = v7;
  MTPathStates_::clearExistingPathLiftoffsAndMasks(a1);
  if (a2)
  {
    MTPathStates_::expandAndFilterPackedContacts(a1, a2, a3);
  }

  return MTPathStates_::flushStuckContacts(a1);
}

uint64_t MTPathStates_::flushStuckContacts(MTPathStates_ *this)
{
  v2 = 0;
  v3 = 592;
  v4 = 31;
  do
  {
    v5 = *(this + 35);
    if (MTContact_isActive())
    {
      v6 = *(this + 1);
      if (*(v5 + v3) != v6)
      {
        MTParserPath_::flushLiftoffAt((*(this + 35) + v3 - 24), v6);
        v2 = 1;
      }
    }

    v3 += 568;
    --v4;
  }

  while (v4);
  return v2 & 1;
}

MTPathStates_ *MTPathStates_::setDivingButtonState(MTPathStates_ *this, int a2)
{
  if (*(this + 360) != a2)
  {
    *(this + 49) = *(this + 1);
    *(this + 100) = *(this + 94);
    *(this + 416) = 0;
  }

  *(this + 360) = a2;
  return this;
}

float MTPathStates_::restingTranslationCertainty(MTPathStates_ *this)
{
  if (*(this + 360))
  {
    return 1.0;
  }

  else
  {
    return MTRestZoneIntegrator_::translationDominance((this + 512), (*(this + 436) & 1) == 0);
  }
}

BOOL MTPathStates_::isContactOnDivingButton(uint64_t a1, float *a2, double a3)
{
  v5 = a3;
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = fabsf(v5);
    v7 = 1.0;
    if (v6 < 0.2)
    {
      v7 = (v6 / 0.2);
    }
  }

  v8 = *(a1 + 424);
  v9 = a2[15];
  v10 = 0.0;
  if (v9 > 8.0)
  {
    v10 = 1.0;
    if (v9 < 18.0)
    {
      v10 = (v9 + -8.0) / 10.0;
    }
  }

  v11 = pow(v7, 0.75);
  v12 = (v8 + v11) + ((v11 + 6.0) * v10);
  v15.x = a2[8];
  v15.y = 1.0 - a2[9];
  MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(*(a1 + 40), v15);
  return v13 < v12;
}

uint64_t MTPathStates_::countFingersOnDivingButton(MTPathStates_ *this)
{
  *(this + 93) = 0;
  v2 = 604;
  v3 = 31;
  do
  {
    v4 = (*(this + 35) + v2);
    v6 = *v4;
    v5 = (v4 - 9);
    if ((v6 - 3) <= 1 && MTParserPath_::isFingerOrRestingContact(v5))
    {
      ++*(this + 93);
    }

    v2 += 568;
    --v3;
  }

  while (v3);
  v7 = 0;
  v8 = 1000.0;
  v9 = 1;
  v10 = 936;
  v11 = 1000.0;
  do
  {
    v12 = *(this + 35);
    v13 = *(this + 43) && MTParserPath_::isValidClickSource((v12 + v10 - 368)) && v9 == *(*(this + 43) + 264);
    v14 = (v12 + v10 - 332);
    if ((*v14 - 3) > 1 || !MTParserPath_::isFingerOrRestingContact((v12 + v10 - 368)) && (!MTParserPath_::isEdgeContact((v12 + v10 - 368)) || *(this + 93) >= 2 && !v13))
    {
      goto LABEL_24;
    }

    v15 = *(v12 + v10 - 280);
    v16 = 40;
    if (*v14 == 7)
    {
      v16 = 136;
    }

    if (*(v12 + v10 + v16 - 368) != 1)
    {
      v15 = v15 + *(v12 + v10);
    }

    if (v15 < v8)
    {
      v11 = v8;
      v7 = v3;
      LODWORD(v3) = v9;
      goto LABEL_25;
    }

    if (v15 < v11)
    {
      v11 = v15;
      v15 = v8;
      v7 = v9;
    }

    else
    {
LABEL_24:
      v15 = v8;
    }

LABEL_25:
    ++v9;
    v10 += 568;
    v8 = v15;
  }

  while (v9 != 32);
  *(this + 94) = v3;
  *(this + 92) = 0;
  *(this + 91) = 0;
  if (v3)
  {
    v17 = *(this + 1);
    v18 = *(this + 35);
    v19 = v18 + 568 * v3;
    v20 = v17;
    if ((*(v19 + 36) - 3) <= 1)
    {
      v20 = *(v19 + 224);
    }

    if (v7)
    {
      v21 = v18 + 568 * v7;
      if ((*(v21 + 36) - 3) <= 1)
      {
        v17 = *(v21 + 224);
      }
    }

    v22 = (this + 364);
    if (MTPathStates_::isContactOnDivingButton(this, (v19 + 16), v17 - v20))
    {
      ++*v22;
      if (MTParserPath_::isEdgeContact(v19))
      {
        ++*(this + 92);
      }
    }

    if (v7)
    {
      v23 = *(this + 91);
      if (v23 >= 1)
      {
        v24 = *(this + 35) + 568 * v7;
        v25 = vcgt_f32(0x4198000041F00000, vabd_f32(*(v19 + 84), *(v24 + 84)));
        if (v25.i32[1] & v25.i32[0])
        {
          *v22 = v23 + 1;
          if (MTParserPath_::isEdgeContact(v24))
          {
            ++*(this + 92);
          }
        }
      }
    }

    *(this + 361) = 0;
    v26 = v3 - 1;
    v27 = 656;
    v28 = 31;
    while (1)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

      v29 = (*(this + 35) + v27);
      if ((*(v29 - 13) - 3) > 1)
      {
        goto LABEL_46;
      }

      v30 = (v29 - 22);
      v31 = *v29;
      v32 = *(v19 + 88);
      if (!MTParserPath_::isPalmContact((v29 - 22)))
      {
        break;
      }

      if (v31 < v32)
      {
        goto LABEL_45;
      }

LABEL_46:
      --v26;
      v27 += 568;
      if (!--v28)
      {
        return *v22;
      }
    }

    if (!MTParserPath_::isEdgeContact(v30) || v31 >= v32)
    {
      goto LABEL_46;
    }

LABEL_45:
    *(this + 361) = 1;
    goto LABEL_46;
  }

  return 0;
}

MTPathStates_ *MTPathStates_::updateDivingBoardDisplacements(MTPathStates_ *this)
{
  v1 = this;
  *(this + 48) = 0;
  v2 = 1;
  v3 = 792;
  do
  {
    v4 = *(v1 + 35);
    if ((*(v4 + v3 - 188) - 3) <= 1)
    {
      this = MTParserPath_::isFingerContact((v4 + v3 - 224));
      if (this)
      {
        if (v2 != *(v1 + 94))
        {
          v5 = *(v4 + v3);
          v6 = *(v1 + 48);
          if (v6 == 0.0 || v5 < v6)
          {
            *(v1 + 48) = v5;
          }
        }
      }
    }

    ++v2;
    v3 += 568;
  }

  while (v2 != 32);
  return this;
}

void MTPathStates_::checkForRestingThumb(MTPathStates_ *this)
{
  v2 = *(this + 436);
  *(this + 436) = 0;
  MTPathStates_::updateDivingBoardDisplacements(this);
  MTRestZoneIntegrator_::integrateRestingZoneMotion(this + 64, this, *(this + 93));
  v3 = *(this + 94);
  if (v3 < 1)
  {
    return;
  }

  v4 = *(this + 35) + 568 * v3;
  v5 = 40;
  if (*(v4 + 36) == 7)
  {
    v5 = 136;
  }

  v6 = *(v4 + v5);
  v7 = *(v4 + 224);
  v8 = *(this + 48);
  v9 = v8 > 0.0;
  v10 = v8 - v7;
  v11 = fabsf(v10);
  if (v8 <= 0.0)
  {
    v11 = 0.0;
  }

  *(this + 188) = v11;
  v12 = *(this + 102);
  if (v12 >= 1 && v6 == 1)
  {
    *(this + 756) = *(this + 93) >= v12;
  }

  else
  {
    *(this + 756) = 0;
    if (v8 > 0.0 && v6 != 1)
    {
      v13 = 0;
      v15 = 0;
      v9 = *(this + 93) < 3;
      if (*(this + 93) >= 3)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    if (v6 != 1)
    {
      v13 = 0;
      v15 = 0;
      if (v8 <= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  if ((*(this + 404) & 1) == 0 && *(this + 93) == 2)
  {
    v13 = 1;
LABEL_35:
    v19 = v9;
    goto LABEL_36;
  }

  if (MTRestZoneIntegrator_::shouldDoBiPolarIntegration((this + 512), v2 ^ 1))
  {
    v15 = 0;
  }

  else
  {
    MTSurfaceDimensions_::convertPixelsToMillimeters(*(this + 5), *(v4 + 48));
    v17 = 0.45;
    if (*(this + 361))
    {
      v17 = 0.55;
    }

    v15 = v16 < (*(this + 108) * v17);
  }

  v13 = 1;
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v15)
  {
    goto LABEL_35;
  }

  v19 = *(this + 91) == 1 && v6 != 1;
LABEL_36:
  v20 = *(this + 360);
  if (*(this + 416))
  {
    v21 = *(this + 1);
  }

  else
  {
    v21 = *(this + 1);
    if (v21 - *(this + 49) < 0.1)
    {
      if (((v13 | v20) & 1) == 0)
      {
        *(v4 + 548) = 0;
      }

      *(this + 416) = 1;
    }
  }

  v22 = *(this + 48);
  if (v7 > v22)
  {
    v22 = v7;
  }

  if (v21 - v22 == 0.0)
  {
    MTSurfaceDimensions_::convertPixelsToMillimeters(*(this + 5), *(v4 + 48));
    v24 = 0.45;
    if (*(this + 361))
    {
      v24 = 0.55;
    }

    *(v4 + 549) = v23 > (*(this + 108) * v24);
  }

  v25 = v9 & v20;
  if (v19 && MTRestZoneIntegrator_::isLockedOnTranslate((this + 512)))
  {
    if (!(v25 & 1 | ((*(v4 + 549) & 1) == 0)))
    {
      if (!*(v4 + 549))
      {
        goto LABEL_61;
      }

LABEL_57:
      if (*(this + 360))
      {
        if (!v9)
        {
          return;
        }
      }

      else if ((v9 & *(v4 + 548) & 1) == 0)
      {
        return;
      }

      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v25)
  {
LABEL_54:
    *(v4 + 548) = 1;
  }

  if (!v19 || (*(v4 + 549) & 1) != 0)
  {
    goto LABEL_57;
  }

LABEL_61:
  if (*(this + 93) < 5 || *(this + 102) <= 0)
  {
    *(this + 436) = 1;
  }
}

uint64_t MTPathStates_::fixupCurledUnderThumbIdentity(MTPathStates_ *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(this + 35);
  v9 = (v8 + 84);
  do
  {
    result = (*(v9 - 12) - 1);
    if (result <= 5)
    {
      result = *(v9 - 11);
      if ((result - 1) <= 4)
      {
        if (!v2 || *v9 < *(v8 + 568 * v2 + 84))
        {
          v2 = v1;
        }

        if (!v3 || *v9 > *(v8 + 568 * v3 + 84))
        {
          v3 = v1;
        }

        if (v4)
        {
          v11 = v9[1];
          if (v11 >= *(v8 + 568 * v4 + 88))
          {
            if (!v5 || v11 < *(v8 + 568 * v5 + 88))
            {
              v5 = v1;
            }

            goto LABEL_18;
          }

          v5 = v4;
        }

        else
        {
          v5 = 0;
        }

        LODWORD(v4) = v1;
LABEL_18:
        ++v7;
        result = result == 1;
        v6 |= result;
      }
    }

    ++v1;
    v9 += 142;
  }

  while (v1 != 32);
  if (v4)
  {
    v12 = v8 + 568 * v3;
    v13 = v8 + 568 * v2;
    v14 = *(v12 + 84) - *(v13 + 84);
    if (v14 > 19.0)
    {
      v15 = v8 + 568 * v4;
      result = *(v15 + 547);
      if (v4 == v2 || v4 == v3)
      {
        if (!(v6 & 1 | ((result & 1) == 0)))
        {
          v19 = v15 + 40;
          goto LABEL_40;
        }
      }

      else
      {
        v16 = (v14 / (v7 - 1)) + -7.0;
        if (v16 < 2.0)
        {
          v16 = 2.0;
        }

        if (v16 > 16.0)
        {
          v16 = 16.0;
        }

        if (*(v15 + 88) < (*(v8 + 568 * v5 + 88) - v16) || result != 0)
        {
          v20 = *(v15 + 40);
          v19 = v15 + 40;
          v18 = v20;
          *(v19 + 507) = 1;
          if (v20 != 1)
          {
            v21 = *(v13 + 40);
            if ((v6 & 1) == 0 || v21 == 1 || *(v12 + 40) == 1)
            {
              if (v21 >= *(v12 + 40))
              {
                *(v12 + 40) = v18;
              }

              else
              {
                *(v13 + 40) = v18;
              }

LABEL_40:
              *v19 = 1;
            }
          }
        }
      }
    }
  }

  v4 = v4;
  v22 = 32;
  do
  {
    if ((*(v8 + 36) - 1) <= 5 && v4 && (*(v8 + 40) - 1) <= 4)
    {
      *(v8 + 547) = 0;
    }

    --v4;
    v8 += 568;
    --v22;
  }

  while (v22);
  return result;
}

MTPathStates_ *MTPathStates_::checkForFingersInZones(MTPathStates_ *this)
{
  if (*(this + 244) == 1)
  {
    v1 = 0;
    v2 = (*(this + 35) + 840);
    v3 = 31;
    do
    {
      if ((*(v2 - 59) - 3) <= 1)
      {
        v1 |= *v2;
      }

      v2 += 142;
      --v3;
    }

    while (v3);
  }

  else
  {
    v1 = 0;
  }

  *(this + 81) = v1;
  if (*(this + 91) >= 1)
  {
    *(this + 81) = v1 | 0x10000;
  }

  return this;
}

double MTPathStates_::forwardFirmwareDistributedForces(MTPathStates_ *this)
{
  v2 = 0;
  v3 = *(this + 35);
  *(this + 44) = 0;
  v4 = -31;
  v5 = 856;
  do
  {
    v6 = *(this + 35);
    v7 = (v6 + v5);
    if ((*(v6 + v5 - 252) - 1) > 5)
    {
      MTForceFilter_::clear(v7);
    }

    else
    {
      v8 = *(v7 - 55);
      *(this + 88) = v8 + *(this + 88);
      if (MTParserPath_::isValidClickSource((v7 - 288)))
      {
        *(this + 89) = v8 + *(this + 89);
      }

      v9 = v6 + v5;
      v10 = hypotf(*(v9 - 196), *(v9 - 192));
      MTForceFilter_::updateForceFilter(v9, this + 82, v8, v10, *(this + 1) - *(this + 2));
      ++v2;
    }

    v5 += 568;
  }

  while (!__CFADD__(v4++, 1));
  if (v2 <= 0)
  {

    return MTForceFilter_::clear((v3 + 72));
  }

  else
  {
    v12 = *(this + 89);
    v13 = hypotf(v3[23], v3[24]);
    v14 = *(this + 1) - *(this + 2);

    MTForceFilter_::updateForceFilter((v3 + 72), this + 82, v12, v13, v14);
  }

  return result;
}

float MTPathStates_::sumOfLowpassPeakFingerSpeeds(MTPathStates_ *this)
{
  v2 = 0.0;
  v3 = 892;
  v4 = 31;
  do
  {
    v5 = *(this + 35);
    if (MTParserPath_::isFingerContact((v5 + v3 - 324)) && (*(v5 + v3 - 288) - 3) <= 1)
    {
      v2 = v2 + *(v5 + v3);
    }

    v3 += 568;
    --v4;
  }

  while (v4);
  return v2;
}

float MTPathStates_::getPrePixelatedPositionFromPostPixelatedPosition(MTPathStates_ *this, int a2)
{
  memcpy(__dst, &unk_D6920, sizeof(__dst));
  v4 = *(this + 35) + 568 * a2;
  *__dst = off_109680;
  memcpy(&__dst[8], (v4 + 8), 0x114uLL);
  *&__dst[288] = off_109880;
  v5 = *(v4 + 328);
  v6 = *(v4 + 312);
  *&__dst[296] = *(v4 + 296);
  *&__dst[312] = v6;
  *&__dst[328] = v5;
  v8 = *(v4 + 352);
  v7 = *(v4 + 368);
  *&__dst[336] = *(v4 + 336);
  *&__dst[352] = v8;
  *&__dst[368] = v7;
  v9 = *(v4 + 432);
  v11 = *(v4 + 384);
  v10 = *(v4 + 400);
  *&__dst[416] = *(v4 + 416);
  *&__dst[432] = v9;
  *&__dst[384] = v11;
  *&__dst[400] = v10;
  v12 = *(v4 + 496);
  v14 = *(v4 + 448);
  v13 = *(v4 + 464);
  *&__dst[480] = *(v4 + 480);
  *&__dst[496] = v12;
  *&__dst[448] = v14;
  *&__dst[464] = v13;
  v16 = *(v4 + 528);
  v15 = *(v4 + 544);
  v17 = *(v4 + 512);
  *&__dst[560] = *(v4 + 560);
  *&__dst[528] = v16;
  *&__dst[544] = v15;
  *&__dst[512] = v17;
  v18 = *(this + 5);
  v22 = off_109CB8;
  v19 = *(v18 + 24);
  v23 = *(v18 + 8);
  v24 = v19;
  LODWORD(v19) = *&__dst[48];
  LODWORD(v16) = *&__dst[52];
  v20 = MTSurfaceDimensions_::convertPixelsToSurfaceFraction(&v22, *(&v16 - 4));
  MTSurfaceDimensions_::~MTSurfaceDimensions_(&v22);
  MTParserPath_::~MTParserPath_(__dst);
  return v20;
}

void sub_4D7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, MTParserPath_ *a14)
{
  MTSurfaceDimensions_::~MTSurfaceDimensions_(&a9);
  MTParserPath_::~MTParserPath_(&a14);
  _Unwind_Resume(a1);
}

MTPathStates_ *MTPathStates_::getMaxDisplacement_mm(MTPathStates_ *this)
{
  v1 = (*(this + 35) + 904);
  v2 = 0.0;
  v3 = 31;
  do
  {
    if (*v1 > v2)
    {
      v2 = *v1;
    }

    v1 += 142;
    --v3;
  }

  while (v3);
  return this;
}

void MTPathStates_::updateDragDisplacements_mm(MTPathStates_ *this, int a2)
{
  v4 = 904;
  v5 = 31;
  do
  {
    v6 = *(this + 35);
    v7 = *(this + 10);
    v13[6] = *(this + 9);
    v13[7] = v7;
    v14 = *(this + 44);
    v8 = *(this + 6);
    v13[2] = *(this + 5);
    v13[3] = v8;
    v9 = *(this + 8);
    v13[4] = *(this + 7);
    v13[5] = v9;
    v10 = *(this + 4);
    v13[0] = *(this + 3);
    v13[1] = v10;
    updated = MTParserPath_::updateHysteresisDragCenter_mm((v6 + v4 - 336), v13);
    v12 = 0.0;
    if (a2)
    {
      v12 = updated + *(v6 + v4);
    }

    *(v6 + v4) = v12;
    v4 += 568;
    --v5;
  }

  while (v5);
}

uint64_t MTPathStates_::tasksPrePixelatedPositions(MTPathStates_ *this)
{
  v2.n128_f64[0] = MTPathStates_::forwardFirmwareDistributedForces(this);
  if ((*(this + 28) & 2) != 0)
  {
    MTPathStates_::checkForRestingThumbFromPalmRestingHand(this);
    MTPathStates_::checkForLonelyHighRestingThumb(this);
    MTPathStates_::fixupCurledUnderThumbIdentity(this);
    MTPathStates_::countFingersOnDivingButton(this);
  }

  v3 = *(*this + 32);

  return v3(this, v2);
}

float MTPathStates_::checkForRestingThumbFromPalmRestingHand(MTPathStates_ *this)
{
  *(this + 59) = *(this + 58);
  v2 = (this + 440);
  *(this + 484) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  LODWORD(v3.f64[0]) = 0;
  *(this + 488) = xmmword_D68B0;
  v4 = -31;
  v5 = 1118;
  do
  {
    v6 = *(this + 35);
    v7 = v6 + v5;
    if (*(v6 + v5 - 514))
    {
      v8 = (v7 - 550);
      v9 = *(v7 - 506);
      if (v9 == -1)
      {
        if (MTParserPath_::isPalmContact(v8))
        {
          ++*(this + 114);
        }

        else if (MTParserPath_::isThumbContact(v8))
        {
          *v2 = v4 + 32;
        }

        else if (*(v6 + v5) == 1)
        {
          *(this + 112) = v4 + 32;
        }

        else if (MTParserPath_::isFingerContact(v8))
        {
          ++*(this + 116);
        }
      }

      else if (v9 == 1)
      {
        if (MTParserPath_::isPalmContact(v8))
        {
          ++*(this + 115);
        }

        else if (MTParserPath_::isThumbContact(v8))
        {
          *(this + 111) = v4 + 32;
        }

        else if (*(v6 + v5) == 1)
        {
          *(this + 113) = v4 + 32;
        }

        else if (MTParserPath_::isFingerContact(v8))
        {
          ++*(this + 117);
        }
      }
    }

    v5 += 568;
  }

  while (!__CFADD__(v4++, 1));
  v11 = *(this + 117);
  if (v11 + *(this + 116) >= 1)
  {
    v12 = 816;
    v13 = 31;
    do
    {
      v14 = *(this + 35);
      if (*(v14 + v12 - 212) && MTParserPath_::isFingerContact((v14 + v12 - 248)))
      {
        v15.f64[0] = *(v14 + v12 - 24);
        *(this + 61) = fmin(*(this + 61), v15.f64[0]);
        v15.f64[1] = *(v14 + v12);
        v3 = vmaxnmq_f64(*(this + 31), v15);
        *(this + 31) = v3;
      }

      v12 += 568;
      --v13;
    }

    while (v13);
    if (*(this + 111) || *v2)
    {
      v3.f64[0] = *(this + 62) - *(this + 61);
      *(this + 484) = v3.f64[0] < *&qword_121A50;
    }

    v11 = *(this + 117);
  }

  if (!v11 && !*(this + 116) && (*(this + 118) >= 1 || *(this + 119) > 0))
  {
    v16 = 604;
    v17 = 31;
    do
    {
      v18 = (*(this + 35) + v16);
      v20 = *v18;
      v19 = (v18 - 9);
      if (v20)
      {
        v3.f64[0] = MTParserPath_::clearPathSpeedSymmetries(v19);
      }

      v16 += 568;
      --v17;
    }

    while (v17);
    *(this + 120) = 0;
  }

  v21 = *(this + 112);
  if ((v21 || *(this + 113)) && *(this + 117) + *(this + 116) >= 2 && *(this + 484) == 1 && (v21 && !*(this + 114) || (v21 = *(this + 113)) != 0 && !*(this + 115)) && v21 >= 1)
  {
    v22 = *(this + 35) + 568 * v21;
    if (*(v22 + 36))
    {
      *(v22 + 550) = 0;
      v3.f64[0] = MTParserPath_::clearPathSpeedSymmetries(v22);
    }
  }

  v23 = *(this + 111);
  v24 = v23;
  if (!v23)
  {
    goto LABEL_90;
  }

  v25 = *(this + 115);
  if (v25 < 1 || *(this + 117))
  {
    goto LABEL_90;
  }

  if (*(this + 116) <= 0 && !*v2)
  {
    return *v3.f64;
  }

  v26 = *(this + 114);
  if (v25 > v26)
  {
    v27 = *(this + 35);
LABEL_60:
    v28 = 0;
    v29 = 0;
    v30 = 568 * v23;
    v85 = v30 - 9088;
    v31 = v30 - 8520;
    v32 = v30 - 7952;
    v33 = v30 - 568;
    v34 = v30 - 7384;
    v35 = v27 + 7366;
    v36 = v30 - 6816;
    v37 = v30 - 1136;
    v38 = v30 - 1704;
    v39 = v27 + 5094;
    LODWORD(v3.f64[0]) = 14;
    v40 = v30 - 6248;
    v41 = v30 - 5680;
    v42 = v30 - 3976;
    v43 = v30 - 5112;
    v44 = v30 - 3408;
    v45 = v30 - 4544;
    v46 = v30 - 2840;
    v47 = v30 - 2272;
    v48 = vdupq_n_s64(0x1FuLL);
    do
    {
      v49 = vdupq_n_s64(v29);
      v50 = vorrq_s8(v49, xmmword_D64F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v48, v50)), 14), 14).u8[0])
      {
        *(v27 + v28 + 1118) = v33 == v28;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v50)), 14), 14).i8[1])
      {
        *(v27 + v28 + 1686) = v37 == v28;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v49, xmmword_D64E0)))), 14).i8[2])
      {
        *(v27 + v28 + 2254) = v38 == v28;
        *(v27 + v28 + 2822) = v47 == v28;
      }

      v51 = vorrq_s8(v49, xmmword_D6910);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v51)), 14)).i32[1])
      {
        *(v27 + v28 + 3390) = v46 == v28;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v51)), 14)).i8[5])
      {
        *(v27 + v28 + 3958) = v44 == v28;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v49, xmmword_D6900))))).i8[6])
      {
        *(v27 + 4526 + v28) = v42 == v28;
        *(v39 + v28) = v45 == v28;
      }

      v52 = vorrq_s8(v49, xmmword_D68F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v52)), 14), 14).u8[0])
      {
        *(v39 + v28 + 568) = v43 == v28;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v52)), 14), 14).i8[1])
      {
        *(v39 + v28 + 1136) = v41 == v28;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v49, xmmword_D68E0)))), 14).i8[2])
      {
        *(v39 + v28 + 1704) = v40 == v28;
        *(v35 + v28) = v36 == v28;
      }

      v53 = vorrq_s8(v49, xmmword_D68D0);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v53)), 14)).i32[1])
      {
        *(v39 + v28 + 2840) = v34 == v28;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v53)), 14)).i8[5])
      {
        *(v39 + v28 + 3408) = v32 == v28;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v49, xmmword_D68C0))))).i8[6])
      {
        *(v39 + v28 + 3976) = v31 == v28;
        *(v35 + v28 + 2272) = v85 == v28;
      }

      v29 += 16;
      v28 += 9088;
    }

    while (v29 != 32);
    goto LABEL_90;
  }

  if (v25 == v26)
  {
    v27 = *(this + 35);
    LODWORD(v3.f64[0]) = *(v27 + 568 * v23 + 88);
    v54 = *(this + 110);
    if (*v3.f64 <= *(v27 + 568 * v54 + 88))
    {
      goto LABEL_91;
    }

    goto LABEL_60;
  }

LABEL_90:
  v54 = *v2;
LABEL_91:
  if (v54)
  {
    v55 = *(this + 114);
    if (v55 >= 1 && !*(this + 116) && (v23 || *(this + 117) >= 1))
    {
      v56 = *(this + 115);
      if (v55 <= v56)
      {
        if (v55 != v56)
        {
          return *v3.f64;
        }

        v57 = *(this + 35);
        LODWORD(v3.f64[0]) = *(v57 + 568 * v54 + 88);
        if (*v3.f64 <= *(v57 + 568 * v24 + 88))
        {
          return *v3.f64;
        }
      }

      else
      {
        v57 = *(this + 35);
      }

      v58 = 0;
      v59 = 0;
      v60 = 568 * v54 - 9088;
      v61 = 568 * v54 - 8520;
      v62 = 568 * v54 - 7952;
      v63 = 568 * v54 - 568;
      v64 = 568 * v54 - 7384;
      v65 = v57 + 7366;
      v66 = 568 * v54 - 6816;
      v67 = 568 * v54 - 1136;
      v68 = 568 * v54 - 6248;
      v69 = 568 * v54 - 5680;
      v70 = 568 * v54 - 1704;
      v71 = v57 + 5094;
      v72 = 568 * v54 - 5112;
      v73 = 568 * v54 - 4544;
      LODWORD(v3.f64[0]) = 14;
      v74 = 568 * v54 - 3976;
      v75 = 568 * v54 - 3408;
      v76 = 568 * v54 - 2840;
      v77 = 568 * v54 - 2272;
      v78 = vdupq_n_s64(0x1FuLL);
      do
      {
        v79 = vdupq_n_s64(v59);
        v80 = vorrq_s8(v79, xmmword_D64F0);
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v78, v80)), 14), 14).u8[0])
        {
          *(v57 + v58 + 1118) = v63 == v58;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v80)), 14), 14).i8[1])
        {
          *(v57 + v58 + 1686) = v67 == v58;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v79, xmmword_D64E0)))), 14).i8[2])
        {
          *(v57 + v58 + 2254) = v70 == v58;
          *(v57 + v58 + 2822) = v77 == v58;
        }

        v81 = vorrq_s8(v79, xmmword_D6910);
        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v81)), 14)).i32[1])
        {
          *(v57 + v58 + 3390) = v76 == v58;
        }

        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v81)), 14)).i8[5])
        {
          *(v57 + v58 + 3958) = v75 == v58;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v79, xmmword_D6900))))).i8[6])
        {
          *(v57 + 4526 + v58) = v74 == v58;
          *(v71 + v58) = v73 == v58;
        }

        v82 = vorrq_s8(v79, xmmword_D68F0);
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v82)), 14), 14).u8[0])
        {
          *(v71 + v58 + 568) = v72 == v58;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v82)), 14), 14).i8[1])
        {
          *(v71 + v58 + 1136) = v69 == v58;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v79, xmmword_D68E0)))), 14).i8[2])
        {
          *(v71 + v58 + 1704) = v68 == v58;
          *(v65 + v58) = v66 == v58;
        }

        v83 = vorrq_s8(v79, xmmword_D68D0);
        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v83)), 14)).i32[1])
        {
          *(v71 + v58 + 2840) = v64 == v58;
        }

        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v83)), 14)).i8[5])
        {
          *(v71 + v58 + 3408) = v62 == v58;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v79, xmmword_D68C0))))).i8[6])
        {
          *(v71 + v58 + 3976) = v61 == v58;
          *(v65 + v58 + 2272) = v60 == v58;
        }

        v59 += 16;
        v58 += 9088;
      }

      while (v59 != 32);
    }
  }

  return *v3.f64;
}

void MTPathStates_::checkForLonelyHighRestingThumb(MTPathStates_ *this)
{
  v1 = *(this + 110);
  if (v1 && !*(this + 114) && *(this + 117) + *(this + 116) == 1 || (v1 = *(this + 111)) != 0 && !*(this + 115) && *(this + 116) + *(this + 117) == 1)
  {
    MTPathStates_::assignLonelyHighRestingThumb(this, v1);
  }
}

void MTPathStates_::tasksFilterAndPixelatePositions(uint64_t a1, uint64_t a2, int a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  if (a3 >= 1)
  {
    v8 = a3;
    v9 = (a2 + 16);
    do
    {
      v10 = *v9;
      v9 += 24;
      MTParserPath_::filterContactForScreenUI(*(a1 + 280) + 568 * v10, a1, *(a1 + 40), a1 + 48, a1 + 180, a4, a5, a6, a7);
      --v8;
    }

    while (v8);
  }
}

void MTPathStates_::assignLonelyHighRestingThumb(MTPathStates_ *this, unsigned int a2)
{
  v4 = *(this + 35) + 568 * a2;
  v5 = *(v4 + 224);
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 1);
    v8 = v7 - v5;
    v9 = *(v4 + 380);
    if (*(this + 484))
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    v11 = v7 - *(this + 63);
    v41 = 136317698;
    v42 = "[Debug] ";
    v43 = 2080;
    v44 = "";
    v45 = 2080;
    v46 = "assignLonelyHighRestingThumb";
    v47 = 1024;
    v48 = a2;
    v49 = 2048;
    v50 = v8;
    v51 = 2048;
    v52 = qword_121A48;
    v53 = 2048;
    v54 = v9;
    v55 = 2048;
    v56 = 0x4000000000000000;
    v57 = 2080;
    v58 = v10;
    v59 = 2048;
    v60 = v11;
    v61 = 2048;
    v62 = qword_121A50;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [MTZoom] Thumb path P%d: Touch duration = %.3f sec (> %.3f sec for RT), Discounted distance = %.3f mm (< %.3f mm for RT), Thumb touched down with finger = %s (No for RT) , Time since last finger liftoff = %.3f sec (> %.3f sec for RT)", &v41, 0x6Cu);
  }

  v12 = *(this + 1);
  if (*&qword_121A48 < v12 - v5 && *(v4 + 380) < 2.0 && (*(this + 484) & 1) == 0 && v12 - *(this + 63) > *&qword_121A50)
  {
    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v41 = 136315906;
      v42 = "[Debug] ";
      v43 = 2080;
      v44 = "";
      v45 = 2080;
      v46 = "assignLonelyHighRestingThumb";
      v47 = 1024;
      v48 = a2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [MTZoom] Marking thumb path P%d as resting thumb", &v41, 0x26u);
    }

    v14 = 0;
    v15 = 0;
    v16 = 568 * a2 - 9088;
    v17 = *(this + 35);
    v18 = 568 * a2 - 8520;
    v19 = 568 * a2 - 7952;
    v20 = 568 * a2 - 568;
    v21 = 568 * a2 - 7384;
    v22 = v17 + 7366;
    v23 = 568 * a2 - 6816;
    v24 = 568 * a2 - 1136;
    v25 = 568 * a2 - 6248;
    v26 = 568 * a2 - 5680;
    v27 = 568 * a2 - 1704;
    v28 = v17 + 5094;
    v29 = 568 * a2 - 5112;
    v30 = 568 * a2 - 4544;
    v31 = 568 * a2 - 3976;
    v32 = 568 * a2 - 3408;
    v33 = 568 * a2 - 2840;
    v34 = 568 * a2 - 2272;
    v35 = vdupq_n_s64(0x1FuLL);
    do
    {
      v36 = vdupq_n_s64(v15);
      v37 = vorrq_s8(v36, xmmword_D64F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v35, v37)), 14), 14).u8[0])
      {
        *(v17 + v14 + 1118) = v20 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v37)), 14), 14).i8[1])
      {
        *(v17 + v14 + 1686) = v24 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v36, xmmword_D64E0)))), 14).i8[2])
      {
        *(v17 + v14 + 2254) = v27 == v14;
        *(v17 + v14 + 2822) = v34 == v14;
      }

      v38 = vorrq_s8(v36, xmmword_D6910);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v38)), 14)).i32[1])
      {
        *(v17 + v14 + 3390) = v33 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v38)), 14)).i8[5])
      {
        *(v17 + v14 + 3958) = v32 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v36, xmmword_D6900))))).i8[6])
      {
        *(v17 + 4526 + v14) = v31 == v14;
        *(v28 + v14) = v30 == v14;
      }

      v39 = vorrq_s8(v36, xmmword_D68F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v39)), 14), 14).u8[0])
      {
        *(v28 + v14 + 568) = v29 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v39)), 14), 14).i8[1])
      {
        *(v28 + v14 + 1136) = v26 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v36, xmmword_D68E0)))), 14).i8[2])
      {
        *(v28 + v14 + 1704) = v25 == v14;
        *(v22 + v14) = v23 == v14;
      }

      v40 = vorrq_s8(v36, xmmword_D68D0);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v40)), 14)).i32[1])
      {
        *(v28 + v14 + 2840) = v21 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v40)), 14)).i8[5])
      {
        *(v28 + v14 + 3408) = v19 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v36, xmmword_D68C0))))).i8[6])
      {
        *(v28 + v14 + 3976) = v18 == v14;
        *(v22 + v14 + 2272) = v16 == v14;
      }

      v15 += 16;
      v14 += 9088;
    }

    while (v15 != 32);
  }
}

MTParserPath_ *MTPathStates_::tasksPostPixelatedPositions(MTPathStates_ *this)
{
  if ((*(this + 28) & 2) != 0)
  {
    MTPathStates_::checkForRestingThumb(this);
  }

  v2 = *(this + 35) + 604;
  for (i = 1; i != 32; ++i)
  {
    if (*v2)
    {
      v4 = *(this + 436) == 1 && i == *(this + 94);
      *(v2 + 510) = *(v2 + 509);
      *(v2 + 509) = v4;
    }

    v2 += 568;
  }

  if (!*(this + 117) && !*(this + 116) || !*(this + 115) && !*(this + 114))
  {
    v5 = fmax(((MTPathStates_::getHighRestingThumbDisplacement(this).f32[0] + *(this + 120)) + -0.14), 0.0);
    *(this + 120) = v5;
    MTPathStates_::breakOutOfRestingThumbForLargeDiscountedDisplacement(this);
  }

  MTPathStates_::updateSpeedSymmetriesOfAllPaths(this);
  MTPathStates_::breakOutOfRestingThumbBasedOnSymmetry(this);
  v6 = 604;
  v7 = 31;
  do
  {
    v8 = (*(this + 35) + v6);
    v10 = *v8;
    result = (v8 - 9);
    if (v10)
    {
      result = MTParserPath_::rejectRestingThumbFromRestingHand(result);
    }

    v6 += 568;
    --v7;
  }

  while (v7);
  return result;
}

double MTPathStates_::breakOutOfRestingThumbForLargeDiscountedDisplacement(MTPathStates_ *this)
{
  v1 = *(this + 112);
  if (v1 || (v1 = *(this + 113)) != 0)
  {
    v2 = *(this + 35) + 568 * v1;
    if (!*(v2 + 36) || (LODWORD(result) = *(this + 120), *&result > 8.0))
    {
      *(v2 + 550) = 0;
      return MTParserPath_::clearPathSpeedSymmetries(v2);
    }
  }

  return result;
}

void MTPathStates_::updateSpeedSymmetriesOfAllPaths(MTPathStates_ *this)
{
  v2 = 1;
  v3 = 632;
  do
  {
    v4 = *(this + 35);
    v5 = (v4 + v3);
    if (v2 == *(v4 + v3 - 32) && *v5 > 0.0)
    {
      v6 = (v5 - 16);
      if ((MTParserPath_::isFingerOrRestingContact((v5 - 16)) || MTParserPath_::isThumbAlongEdgeContact(v6)) && (*(v4 + v3 - 28) - 3) <= 1)
      {
        MTPathStates_::computePathAndFingerSpeedSymmetries(this, v2, v7);
      }
    }

    v8 = *(this + 35) + v3;
    if ((*(v8 - 28) - 3) >= 2)
    {
      MTParserPath_::clearPathSpeedSymmetries((v8 - 64));
    }

    ++v2;
    v3 += 568;
  }

  while (v2 != 32);
}

MTPathStates_ *MTPathStates_::breakOutOfRestingThumbBasedOnSymmetry(MTPathStates_ *this)
{
  v1 = *(this + 35) + 604;
  v2 = 31;
  do
  {
    if (*v1)
    {
      if (*(v1 + 509) == 1)
      {
        v3 = *(v1 + 516);
        if (v3 < *(v1 + 520))
        {
          v3 = *(v1 + 520);
        }

        if (v3 > 0.765 && (*(this + 360) & 1) == 0)
        {
          *(v1 + 510) = 1;
          *(v1 + 509) = 0;
        }
      }

      if (*(v1 + 514) == 1 && *(v1 + 524) > 0.87)
      {
        *(v1 + 514) = 0;
      }
    }

    v1 += 568;
    --v2;
  }

  while (v2);
  return this;
}

void MTPathStates_::computePathAndFingerSpeedSymmetries(MTPathStates_ *this, int a2, double a3)
{
  v62 = 0;
  v63 = 0.0;
  v60 = 0;
  v61 = 0;
  v5 = 0.0;
  v6 = 1;
  v57 = 0;
  v58 = 0;
  v7 = 1068;
  v59 = 0;
  do
  {
    v8 = *(this + 35);
    v9 = v8 + v7;
    v10 = (v8 + v7 - 468);
    if (v6 == *v10)
    {
      LODWORD(a3) = *(v9 - 436);
      if (*&a3 > 0.0)
      {
        v11 = (v9 - 500);
        if ((MTParserPath_::isFingerOrRestingContact((v9 - 500)) || MTParserPath_::isThumbAlongEdgeContact(v11)) && (*(v8 + v7 - 464) - 3) <= 1)
        {
          if (*v10 == a2)
          {
            v5 = *(v8 + v7);
            a3 = *(v8 + v7 - 8);
            v63 = a3;
          }

          else
          {
            v13 = *(v8 + v7 - 8);
            v12 = *(v8 + v7 - 4);
            LODWORD(__src) = *(v8 + v7);
            v14 = v61;
            if (v61 >= v62)
            {
              v16 = (v61 - v60) >> 3;
              v17 = v16 + 1;
              if ((v16 + 1) >> 61)
              {
                std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
              }

              v18 = v62 - v60;
              if ((v62 - v60) >> 2 > v17)
              {
                v17 = v18 >> 2;
              }

              if (v18 >= 0x7FFFFFFFFFFFFFF8)
              {
                v19 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v19 = v17;
              }

              if (v19)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(&v60, v19);
              }

              v20 = (8 * v16);
              *v20 = v13;
              v20[1] = v12;
              v15 = (8 * v16 + 8);
              v21 = (8 * v16 - (v61 - v60));
              memcpy(v20 - (v61 - v60), v60, v61 - v60);
              v22 = v60;
              v60 = v21;
              v61 = v15;
              v62 = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              *v61 = v13;
              *(v14 + 1) = v12;
              v15 = v14 + 2;
            }

            v61 = v15;
            std::vector<float>::push_back[abi:ne200100](&v57, &__src);
          }
        }
      }
    }

    ++v6;
    v7 += 568;
  }

  while (v6 != 32);
  v23 = 126 - 2 * __clz((v58 - v57) >> 2);
  if (v58 == v57)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v57, v58, &__src, v24, 1, a3);
  v25 = 126 - 2 * __clz((v61 - v60) >> 3);
  if (v61 == v60)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(v60, v61, &__src, v26, 1);
  __src = 0;
  v55 = 0;
  v56 = 0;
  std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(&__src, v60, v61, (v61 - v60) >> 3);
  std::vector<MTPoint>::insert(&__src, __src, &v63);
  v49 = 0;
  v50 = 0;
  __p = 0;
  std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(&__p, __src, v55, (v55 - __src) >> 3);
  MTPathStates_::getCosineThetas(&__p, &v51);
  v27 = v51;
  v28 = v52;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  v29 = 0.0;
  v30 = 0.0;
  if (v5 > 10.0)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v45, v57, v58, (v58 - v57) >> 2);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, v27, v28, (v28 - v27) >> 2);
    v31 = v45;
    if (v46 != v45)
    {
      v32 = sqrtf(v5 * *v45);
      v33 = 1.0;
      if (v43 != v42)
      {
        v33 = *v42;
      }

      v29 = (v32 / (((v5 + *v45) * 0.5) + 1.0)) * v33;
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
      v31 = v45;
    }

    if (v31)
    {
      v46 = v31;
      operator delete(v31);
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, v57, v58, (v58 - v57) >> 2);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v34 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v36, v27, v28, (v28 - v27) >> 2);
    MTPathStates_::compute_3F_path_speed_symmetry(v5, v34, &v39);
    v30 = v35;
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }

  MTParserPath_::setPathSpeedSymmetries((*(this + 35) + 568 * a2), v29, v30);
  if (__src)
  {
    v55 = __src;
    operator delete(__src);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

void sub_4F250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t MTPathStates_::getHighRestingThumbDisplacement(MTPathStates_ *this)
{
  v1 = *(this + 112);
  if (v1 || (v1 = *(this + 113)) != 0)
  {
    v2 = *(this + 35) + 568 * v1;
    v3 = vsub_f32(*(v2 + 84), *(v2 + 180));
    result = vmul_f32(v3, v3);
    result.f32[0] = sqrtf(vaddv_f32(result));
  }

  else
  {
    return 0;
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

char *std::vector<MTPoint>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v26 = 0u;
    v27 = 0u;
    v11 = ((v6 - v10) >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v28 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(a1, v14);
    }

    *&v26 = 0;
    *(&v26 + 1) = 8 * v15;
    v27 = (8 * v15);
    std::__split_buffer<MTPoint>::emplace_back<MTPoint const&>(&v26, a3);
    v16 = *(&v26 + 1);
    memcpy(v27, v4, a1[1] - v4);
    v17 = *a1;
    v18 = *(&v26 + 1);
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    *&v26 = v21;
    *(&v26 + 1) = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_4F5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTPathStates_::getCosineThetas(float **a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v6 = v4 + 2;
      if (v3 != v4 + 2)
      {
        v7 = v4 + 2;
        do
        {
          v8 = *v4;
          v9 = v4[1];
          v10 = sqrtf((v8 * v8) + (v9 * v9));
          v11 = 1.0;
          if (v10 > 0.0)
          {
            v12 = *v7;
            v13 = v7[1];
            v14 = sqrtf((v12 * v12) + (v13 * v13));
            if (v14 > 0.0)
            {
              v11 = ((v9 * v13) + (v8 * v12)) / (v10 * v14);
            }
          }

          v15 = v11;
          std::vector<float>::push_back[abi:ne200100](a2, &v15);
          v7 += 2;
          v3 = a1[1];
        }

        while (v7 != v3);
      }

      v4 += 2;
    }

    while (v6 != v3);
  }
}

void sub_4F6E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MTPathStates_::compute_3F_path_speed_symmetry(float a1, uint64_t a2, void *a3)
{
  if (a3[1] - *a3 >= 5uLL)
  {
    cbrtf((**a3 * a1) * *(*a3 + 4));
  }
}

float MTPathStates_::get_3F_IncludingThumbSpeedSymmetry(MTPathStates_ *this)
{
  v2 = 1;
  for (i = 1124; ; i += 568)
  {
    v4 = *(this + 35);
    v5 = v4 + i;
    if (v2 == *(v4 + i - 524) && *(v5 - 492) > 0.0 && MTParserPath_::isThumbContact((v5 - 556)) && (*(v4 + i - 520) - 3) <= 1)
    {
      break;
    }

    if (++v2 == 32)
    {
      return 0.0;
    }
  }

  return *(v4 + i);
}

uint64_t MTPathStates_::calculateCentroidOfPaths(MTPathStates_ *this, MTPoint *a2, double a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 984;
  v10 = *(this + 7) & 0x20;
  v11 = 0;
  do
  {
    v12 = *(this + 35);
    v13 = (v12 + v9);
    if (v8 == *(v12 + v9 - 384) && v13[-44].f32[0] > 0.0)
    {
      v14 = *v13;
      if (MTParserPath_::isFingerContact(&v13[-52]) || v10)
      {
        ++v5;
        a3 = COERCE_DOUBLE(vadd_f32(v14, *(v12 + v9 - 32)));
        v11 = vadd_f32(v11, *&a3);
        if ((*(v12 + v9 - 380) - 3) <= 1)
        {
          ++v6;
          v7 = vadd_f32(v7, *&a3);
        }
      }
    }

    ++v8;
    v9 += 568;
  }

  while (v8 != 32);
  if (v6 > 0)
  {
    if (!a2)
    {
      return 1;
    }

LABEL_11:
    *&a3 = v6;
    *a2 = vdiv_f32(v7, vdup_lane_s32(*&a3, 0));
    return 1;
  }

  if (v5 >= 1)
  {
    v6 = v5;
    v7 = v11;
    if (!a2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t MTPathStates_::numFingerSlidWhileEngaged(MTPathStates_ *this)
{
  result = 0;
  v3 = *(this + 35) + 568;
  v4 = 31;
  do
  {
    v5 = *(v3 + 36);
    if (v5 == 7)
    {
      v6 = 136;
    }

    else
    {
      v6 = 40;
    }

    v7 = *(v3 + v6) - 1;
    if ((v5 - 3) <= 1)
    {
      v8 = v7 >= 4;
      v9 = v7 == 4;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || !v8)
    {
      result = result + *(v3 + 352);
    }

    v3 += 568;
    --v4;
  }

  while (v4);
  return result;
}

HSUtil::Encoder *MTPathStates_::encodeToMap(MTPathStates_ *this, HSUtil::Encoder *a2)
{
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 1));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 2));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 48));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 49));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key, *(this + 61));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key, *(this + 62));
  v4 = HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key;
  v5 = *(this + 63);

  return HSUtil::Encoder::encodeDouble(a2, v4, v5);
}

uint64_t MTPathStates_::decodeFromMap(MTPathStates_ *this, HSUtil::Decoder *a2)
{
  if ((MTTimeState_::decodeFromMap(this, a2) & 1) == 0)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  *(this + 48) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  *(this + 49) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  *(this + 61) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  *(this + 62) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  *(this + 63) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

uint64_t MTTimeState_::decodeFromMap(MTTimeState_ *this, HSUtil::Decoder *a2)
{
  *(this + 1) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTSurfaceDimensions_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTTimeState_::decodeFromMap();
    }

    return 0;
  }

  *(this + 2) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTSurfaceDimensions_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTTimeState_::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeDouble(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, double a3)
{
  if (!*this)
  {
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_writeTokenValue64(v4, 0x89u, *&a3);
    }
  }

  return this;
}

double HSUtil::Decoder::decodeDouble(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  v2 = 0.0;
  if (*this <= 4)
  {
    v6 = *(this + 9);
    HSUtil::Decoder::_findKey(this, &v6, a2);
    if (!*this)
    {
      v4 = HSUtil::Decoder::_readDouble(this, &v6);
      if (*this == 3)
      {
        *this = 13;
      }

      else
      {
        *(this + 9) = v6;
        return v4;
      }
    }
  }

  return v2;
}

double HSUtil::Decoder::_readDouble(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  v5 = 0.0;
  if (*this)
  {
    return v5;
  }

  if (Token <= 0x84u)
  {
    if (Token <= 0x81u)
    {
      if (Token == 128)
      {
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v6 = *this;
        LOBYTE(v11) = __dst;
      }

      else
      {
        if (Token != 129)
        {
          goto LABEL_39;
        }

        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v6 = *this;
        LOWORD(v11) = __dst;
      }

      goto LABEL_33;
    }

    if (Token != 130)
    {
      if (Token != 131)
      {
        if (Token == 132)
        {
          LOBYTE(__dst) = 0;
          HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
          v6 = *this;
          v7 = __dst;
LABEL_25:
          v13 = v7;
LABEL_34:
          v15 = *&v13;
          goto LABEL_35;
        }

        goto LABEL_39;
      }

      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
      v6 = *this;
      v11 = __dst;
LABEL_33:
      v13 = v11;
      goto LABEL_34;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v8 = *this;
    v14 = __dst;
    if (*this)
    {
      v14 = 0;
    }

    v10 = v14;
LABEL_29:
    v15 = *&v10;
    if (!v8)
    {
      return *&v15;
    }

    return v5;
  }

  if (Token <= 0x86u)
  {
    if (Token == 133)
    {
      LOWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
      v6 = *this;
      v7 = __dst;
      goto LABEL_25;
    }

    if (Token != 134)
    {
LABEL_39:
      if ((Token & 0x80000000) == 0)
      {
        return Token;
      }

      *this = 2;
      return v5;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v8 = *this;
    v12 = __dst;
    if (*this)
    {
      v12 = 0;
    }

    v10 = v12;
    goto LABEL_29;
  }

  if (Token == 135)
  {
    __dst = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
    v6 = *this;
    v13 = __dst;
    goto LABEL_34;
  }

  if (Token != 137)
  {
    if (Token != 136)
    {
      goto LABEL_39;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v8 = *this;
    v9 = *&__dst;
    if (*this)
    {
      v9 = 0.0;
    }

    v10 = v9;
    goto LABEL_29;
  }

  __dst = 0;
  HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
  v6 = *this;
  v15 = __dst;
LABEL_35:
  if (!v6)
  {
    return *&v15;
  }

  return v5;
}

void std::vector<MTParserPath_>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 71;
      v7 = v4 - 71;
      do
      {
        (**v7)(v7);
        v6 -= 71;
        v8 = v7 == v2;
        v7 -= 71;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath_>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x73615A240E6C2CLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTParserPath_>,MTParserPath_*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4;
    v8 = a2;
    do
    {
      *v4 = off_109680;
      result = memcpy((v4 + 8), v8 + 1, 0x114uLL);
      *(v4 + 288) = off_109880;
      v10 = v8[41];
      v11 = *(v8 + 39);
      *(v4 + 296) = *(v8 + 37);
      *(v4 + 312) = v11;
      *(v4 + 328) = v10;
      v13 = *(v8 + 22);
      v12 = *(v8 + 23);
      *(v4 + 336) = *(v8 + 21);
      *(v4 + 352) = v13;
      *(v4 + 368) = v12;
      v14 = *(v8 + 27);
      v16 = *(v8 + 24);
      v15 = *(v8 + 25);
      *(v4 + 416) = *(v8 + 26);
      *(v4 + 432) = v14;
      *(v4 + 384) = v16;
      *(v4 + 400) = v15;
      v17 = *(v8 + 31);
      v19 = *(v8 + 28);
      v18 = *(v8 + 29);
      *(v4 + 480) = *(v8 + 30);
      *(v4 + 496) = v17;
      *(v4 + 448) = v19;
      *(v4 + 464) = v18;
      v21 = *(v8 + 33);
      v20 = *(v8 + 34);
      v22 = *(v8 + 32);
      *(v4 + 560) = *(v8 + 140);
      *(v4 + 528) = v21;
      *(v4 + 544) = v20;
      *(v4 + 512) = v22;
      v8 += 71;
      v4 += 568;
      v7 += 568;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v23 = v6;
      do
      {
        result = (**v6)(v6);
        v6 += 71;
        v23 += 71;
      }

      while (v6 != a3);
    }
  }

  return result;
}

uint64_t std::__split_buffer<MTParserPath_>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 568;
    (**(i - 568))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<MTParserPath_>::__emplace_back_slow_path<MTParserType const&,MTParserOptions const&>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = 0x193D4BB7E327A977 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x73615A240E6C2BLL)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x327A976FC64F52EELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x327A976FC64F52EELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x193D4BB7E327A977 * ((*(a1 + 16) - *a1) >> 3)) >= 0x39B0AD12073615)
  {
    v7 = 0x73615A240E6C2BLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath_>>(a1, v7);
  }

  v14 = 0;
  v15 = 568 * v3;
  v16 = (568 * v3);
  MTParserPath_::MTParserPath_(568 * v3, *a2, *a3);
  *&v16 = 568 * v3 + 568;
  v8 = *(a1 + 8);
  v9 = 568 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTParserPath_>,MTParserPath_*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<MTParserPath_>::~__split_buffer(&v14);
  return v13;
}

void sub_505D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTParserPath_>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v56 = v10[1];
          v57 = *(a2 - 1);
          if (v56 > v57)
          {
            v58 = *(v10 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 > v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v10 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 > *v10)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v10;
          }

          if (v59 > *v10)
          {
            v59 = *v10;
          }

          *(a2 - 1) = v59;
          v62 = *v10;
          v61 = v10[1];
          if (v60 <= v61)
          {
            v62 = v10[1];
            v61 = v60;
          }

          *v10 = v62;
          v10[1] = v61;
          return result;
        case 4:
          v86 = v10[1];
          v85 = v10[2];
          if (*v10 > v85)
          {
            v87 = *v10;
          }

          else
          {
            v87 = v10[2];
          }

          if (*v10 <= v85)
          {
            v85 = *v10;
          }

          v10[2] = v85;
          *v10 = v87;
          v88 = *(a2 - 1);
          if (v86 > v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 <= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v10;
          if (*v10 > v89)
          {
            v91 = *v10;
          }

          else
          {
            v91 = v89;
          }

          if (*v10 > v89)
          {
            v90 = v89;
          }

          *v10 = v91;
          v10[1] = v90;
          v92 = v10[2];
          v93 = *(a2 - 1);
          if (v92 > v93)
          {
            v94 = v10[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 > v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v10[1];
          if (v95 > v94)
          {
            v96 = v10[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 > v94)
          {
            v95 = v94;
          }

          v10[1] = v96;
          v10[2] = v95;
          return result;
        case 5:
          v63 = *v10;
          v64 = v10[1];
          if (*v10 > v64)
          {
            v65 = *v10;
          }

          else
          {
            v65 = v10[1];
          }

          if (*v10 > v64)
          {
            v63 = v10[1];
          }

          *v10 = v65;
          v10[1] = v63;
          v66 = v10[3];
          v67 = *(a2 - 1);
          if (v66 > v67)
          {
            v68 = *(v10 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 > v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v10 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v10[2];
          if (v69 > v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v10[2];
          }

          if (v69 > v70)
          {
            v69 = v10[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v10 + 2);
          v72 = v10[3];
          v74 = v10[1];
          if (v71 <= v72)
          {
            v73 = *(v10 + 3);
            v72 = v71;
          }

          *(v10 + 2) = v73;
          v10[3] = v72;
          v75 = *(a2 - 1);
          if (v74 > v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 <= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v10;
          v79 = v10[2];
          v78 = v10[3];
          if (v78 > *v10)
          {
            v80 = v10[3];
          }

          else
          {
            v80 = *v10;
          }

          if (v78 > *v10)
          {
            v78 = *v10;
          }

          if (v80 <= v79)
          {
            v77 = v10[2];
            v79 = v80;
          }

          if (v78 > v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 > v76)
          {
            v78 = v76;
          }

          if (v81 <= v79)
          {
            v76 = v79;
          }

          *v10 = v77;
          v10[1] = v76;
          if (v81 > v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v10[2] = v82;
          v10[3] = v78;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v10;
        if (v83 > *v10)
        {
          *v10 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v52)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v53);
    v10 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v53 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v55)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v53, a3, -v12, a5 & 1);
      v10 = v53 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v97 = v10 + 1;
  v99 = v10 == a2 || v97 == a2;
  if (a5)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v10;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 > v103)
        {
          v104 = v100;
          while (1)
          {
            *(v10 + v104 + 4) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v10 + v104 - 4);
            v104 -= 4;
            if (v102 <= v103)
            {
              v105 = (v10 + v104 + 4);
              goto LABEL_194;
            }
          }

          v105 = v10;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 4;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v9;
      v106 = v9[1];
      v9 = v97;
      if (v106 > v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 > v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_D64F0;
      v18 = xmmword_D64E0;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_D64F0;
    v27 = xmmword_D64E0;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

float *std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5)
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
        v80 = *v9;
        v81 = v9[1];
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v81 * v81) + (v80 * v80)))
        {
          *v9 = *(a2 - 1);
          *(a2 - 2) = v80;
          *(a2 - 1) = v81;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(v9, v9 + 2, v9 + 4, (a2 - 2));
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(v9, v9 + 2, v9 + 4, (v9 + 6));
      v70 = v9[6];
      v71 = v9[7];
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v71 * v71) + (v70 * v70)))
      {
        *(v9 + 3) = *(a2 - 1);
        *(a2 - 2) = v70;
        *(a2 - 1) = v71;
        v72 = v9[4];
        v73 = v9[5];
        if (sqrtf((v9[7] * v9[7]) + (v9[6] * v9[6])) > sqrtf((v73 * v73) + (v72 * v72)))
        {
          v74 = *(v9 + 3);
          *(v9 + 2) = v74;
          v9[6] = v72;
          v9[7] = v73;
          v75 = sqrtf((*(&v74 + 1) * *(&v74 + 1)) + (*&v74 * *&v74));
          v76 = v9[2];
          v77 = v9[3];
          if (v75 > sqrtf((v77 * v77) + (v76 * v76)))
          {
            *(v9 + 1) = v74;
            v9[4] = v76;
            v9[5] = v77;
            v78 = *v9;
            v79 = v9[1];
            if (v75 > sqrtf((v79 * v79) + (v78 * v78)))
            {
              *v9 = v74;
              v9[2] = v78;
              v9[3] = v79;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,MTPoint *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = v13[1];
      v17 = sqrtf((v16 * v16) + (v15 * v15));
      v19 = *v9;
      v18 = v9[1];
      v20 = sqrtf((v18 * v18) + (v19 * v19));
      if (v17 <= v20)
      {
        if (v14 > v17)
        {
          *v13 = *(a2 - 1);
          *(a2 - 2) = v15;
          *(a2 - 1) = v16;
          v27 = *v9;
          v28 = v9[1];
          if (sqrtf((v13[1] * v13[1]) + (*v13 * *v13)) > sqrtf((v28 * v28) + (v27 * v27)))
          {
            *v9 = *v13;
            *v13 = v27;
            v13[1] = v28;
          }
        }
      }

      else
      {
        if (v14 > v17)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v19;
        v13[1] = v18;
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > v20)
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 2) = v19;
          *(a2 - 1) = v18;
        }
      }

      v32 = *(v13 - 2);
      v33 = *(v13 - 1);
      v31 = v13 - 2;
      v34 = sqrtf((v33 * v33) + (v32 * v32));
      v36 = v9[2];
      v35 = v9[3];
      v37 = sqrtf((v35 * v35) + (v36 * v36));
      v38 = sqrtf((*(a2 - 3) * *(a2 - 3)) + (*(a2 - 4) * *(a2 - 4)));
      if (v34 <= v37)
      {
        if (v38 > v34)
        {
          *v31 = *(a2 - 2);
          *(a2 - 4) = v32;
          *(a2 - 3) = v33;
          v39 = v9[2];
          v40 = v9[3];
          if (sqrtf((*(v13 - 1) * *(v13 - 1)) + (*(v13 - 2) * *(v13 - 2))) > sqrtf((v40 * v40) + (v39 * v39)))
          {
            *(v9 + 1) = *v31;
            *v31 = v39;
            *(v13 - 1) = v40;
          }
        }
      }

      else
      {
        if (v38 > v34)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 1) = *v31;
        *v31 = v36;
        *(v13 - 1) = v35;
        if (sqrtf((*(a2 - 3) * *(a2 - 3)) + (*(a2 - 4) * *(a2 - 4))) > v37)
        {
          *v31 = *(a2 - 2);
LABEL_43:
          *(a2 - 4) = v36;
          *(a2 - 3) = v35;
        }
      }

      v42 = v13[2];
      v43 = v13[3];
      v41 = v13 + 2;
      v44 = sqrtf((v43 * v43) + (v42 * v42));
      v46 = v9[4];
      v45 = v9[5];
      v47 = sqrtf((v45 * v45) + (v46 * v46));
      v48 = sqrtf((*(a2 - 5) * *(a2 - 5)) + (*(a2 - 6) * *(a2 - 6)));
      if (v44 <= v47)
      {
        if (v48 > v44)
        {
          *v41 = *(a2 - 3);
          *(a2 - 6) = v42;
          *(a2 - 5) = v43;
          v49 = v9[4];
          v50 = v9[5];
          if (sqrtf((v13[3] * v13[3]) + (v13[2] * v13[2])) > sqrtf((v50 * v50) + (v49 * v49)))
          {
            *(v9 + 2) = *v41;
            *v41 = v49;
            v13[3] = v50;
          }
        }
      }

      else
      {
        if (v48 > v44)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 2) = *v41;
        *v41 = v46;
        v13[3] = v45;
        if (sqrtf((*(a2 - 5) * *(a2 - 5)) + (*(a2 - 6) * *(a2 - 6))) > v47)
        {
          *v41 = *(a2 - 3);
LABEL_52:
          *(a2 - 6) = v46;
          *(a2 - 5) = v45;
        }
      }

      v51 = *v13;
      v52 = v13[1];
      v53 = sqrtf((v52 * v52) + (v51 * v51));
      v54 = *v31;
      v55 = *(v13 - 1);
      v56 = sqrtf((v55 * v55) + (v54 * v54));
      v57 = sqrtf((v13[3] * v13[3]) + (*v41 * *v41));
      if (v53 <= v56)
      {
        if (v57 > v53)
        {
          v58 = *v41;
          *v13 = *v41;
          *v41 = v51;
          v13[3] = v52;
          if (sqrtf((*(&v58 + 1) * *(&v58 + 1)) + (*&v58 * *&v58)) > v56)
          {
            *v31 = v58;
            v41 = v13;
            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v57 > v53)
        {
          *v31 = *v41;
          goto LABEL_61;
        }

        *v31 = *v13;
        *v13 = v54;
        v13[1] = v55;
        if (v57 > v56)
        {
          *v13 = *v41;
LABEL_61:
          *v41 = v54;
          v41[1] = v55;
        }
      }

      v59 = *v9;
      *v9 = *v13;
      *v13 = v59;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v21 = *v9;
    v22 = v9[1];
    v23 = sqrtf((v22 * v22) + (v21 * v21));
    v25 = *v13;
    v24 = v13[1];
    v26 = sqrtf((v24 * v24) + (v25 * v25));
    if (v23 > v26)
    {
      if (v14 > v23)
      {
        *v13 = *(a2 - 1);
        goto LABEL_38;
      }

      *v13 = *v9;
      *v9 = v25;
      v9[1] = v24;
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > v26)
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 2) = v25;
        *(a2 - 1) = v24;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v14 <= v23)
    {
      goto LABEL_39;
    }

    *v9 = *(a2 - 1);
    *(a2 - 2) = v21;
    *(a2 - 1) = v22;
    v29 = *v13;
    v30 = v13[1];
    if (sqrtf((v9[1] * v9[1]) + (*v9 * *v9)) <= sqrtf((v30 * v30) + (v29 * v29)))
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v29;
    v9[1] = v30;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (sqrtf((*(v9 - 1) * *(v9 - 1)) + (*(v9 - 2) * *(v9 - 2))) <= sqrtf((v9[1] * v9[1]) + (*v9 * *v9)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(v9, a2);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, v60);
    v9 = v60 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v60 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = v9[2];
  v64 = v9[3];
  v65 = sqrtf((v64 * v64) + (v63 * v63));
  v67 = *v9;
  v66 = v9[1];
  v68 = sqrtf((v66 * v66) + (v67 * v67));
  v69 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
  if (v65 <= v68)
  {
    if (v69 > v65)
    {
      *(v9 + 1) = *(a2 - 1);
      *(a2 - 2) = v63;
      *(a2 - 1) = v64;
      v82 = *v9;
      v83 = v9[1];
      if (sqrtf((v9[3] * v9[3]) + (v9[2] * v9[2])) > sqrtf((v83 * v83) + (v82 * v82)))
      {
        *v9 = *(v9 + 1);
        v9[2] = v82;
        v9[3] = v83;
      }
    }
  }

  else
  {
    if (v69 <= v65)
    {
      *v9 = *(v9 + 1);
      v9[2] = v67;
      v9[3] = v66;
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) <= v68)
      {
        return result;
      }

      *(v9 + 1) = *(a2 - 1);
    }

    else
    {
      *v9 = *(a2 - 1);
    }

    *(a2 - 2) = v67;
    *(a2 - 1) = v66;
  }

  return result;
}

float *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(float *result, float *a2, float *a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sqrtf((v4 * v4) + (v5 * v5));
  v8 = *result;
  v7 = result[1];
  v9 = sqrtf((v7 * v7) + (v8 * v8));
  v10 = a3[1];
  v11 = v10 * v10;
  v12 = sqrtf((v10 * v10) + (*a3 * *a3));
  if (v6 <= v9)
  {
    if (v12 > v6)
    {
      *a2 = *a3;
      *a3 = v5;
      a3[1] = v4;
      v13 = *result;
      v14 = result[1];
      v11 = v4 * v4;
      v10 = v4;
      if (sqrtf((a2[1] * a2[1]) + (*a2 * *a2)) > sqrtf((v14 * v14) + (v13 * v13)))
      {
        *result = *a2;
        *a2 = v13;
        a2[1] = v14;
        v10 = a3[1];
        v11 = v10 * v10;
      }
    }
  }

  else
  {
    if (v12 > v6)
    {
      *result = *a3;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      v11 = v7 * v7;
      v10 = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    a2[1] = v7;
    v10 = a3[1];
    v11 = v10 * v10;
    if (sqrtf((v10 * v10) + (*a3 * *a3)) > v9)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (sqrtf((*(a4 + 4) * *(a4 + 4)) + (*a4 * *a4)) > sqrtf(v11 + (v15 * v15)))
  {
    *a3 = *a4;
    *a4 = v15;
    *(a4 + 4) = v10;
    v16 = *a2;
    v17 = a2[1];
    if (sqrtf((a3[1] * a3[1]) + (*a3 * *a3)) > sqrtf((v17 * v17) + (v16 * v16)))
    {
      *a2 = *a3;
      *a3 = v16;
      a3[1] = v17;
      v18 = *result;
      v19 = result[1];
      if (sqrtf((a2[1] * a2[1]) + (*a2 * *a2)) > sqrtf((v19 * v19) + (v18 * v18)))
      {
        *result = *a2;
        *a2 = v18;
        a2[1] = v19;
      }
    }
  }

  return result;
}

float *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *result, float *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4[2];
        v6 = v4[3];
        v7 = *v4;
        v8 = v4[1];
        v4 = v2;
        v9 = sqrtf((v6 * v6) + (v5 * v5));
        if (v9 > sqrtf((v8 * v8) + (v7 * v7)))
        {
          v10 = v3;
          while (1)
          {
            *(result + v10 + 8) = *(result + v10);
            if (!v10)
            {
              break;
            }

            v11 = sqrtf((*(result + v10 - 4) * *(result + v10 - 4)) + (*(result + v10 - 8) * *(result + v10 - 8)));
            v10 -= 8;
            if (v9 <= v11)
            {
              v12 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v5;
          v12[1] = v6;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

float *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *result, float *a2)
{
  if (result != a2)
  {
    while (result + 2 != a2)
    {
      v2 = result[2];
      v3 = result[3];
      v4 = *result;
      v5 = result[1];
      v9 = result + 2;
      result += 2;
      v6 = sqrtf((v3 * v3) + (v2 * v2));
      if (v6 > sqrtf((v5 * v5) + (v4 * v4)))
      {
        do
        {
          v7 = v9;
          v8 = *(v9 - 1);
          v9 -= 2;
          *v7 = v8;
        }

        while (v6 > sqrtf((*(v7 - 3) * *(v7 - 3)) + (*(v7 - 4) * *(v7 - 4))));
        *v9 = v2;
        v9[1] = v3;
      }
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(float *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sqrtf((v3 * v3) + (*a1 * *a1));
  if (v4 <= sqrtf((*(a2 - 4) * *(a2 - 4)) + (*(a2 - 8) * *(a2 - 8))))
  {
    v8 = a1 + 2;
    do
    {
      v5 = v8;
      if (v8 >= a2)
      {
        break;
      }

      v9 = sqrtf((v8[1] * v8[1]) + (*v8 * *v8));
      v8 += 2;
    }

    while (v4 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      v5 += 2;
    }

    while (v4 <= sqrtf((v7 * v7) + (v6 * v6)));
  }

  if (v5 < a2)
  {
    do
    {
      v10 = *(a2 - 8);
      v11 = *(a2 - 4);
      a2 -= 8;
    }

    while (v4 > sqrtf((v11 * v11) + (v10 * v10)));
  }

  if (v5 < a2)
  {
    v12 = *v5;
    do
    {
      v13 = *(v5 + 1);
      *v5 = *a2;
      *a2 = v12;
      *(a2 + 4) = v13;
      do
      {
        v12 = v5[2];
        v14 = v5[3];
        v5 += 2;
      }

      while (v4 <= sqrtf((v14 * v14) + (v12 * v12)));
      do
      {
        v15 = *(a2 - 8);
        v16 = *(a2 - 4);
        a2 -= 8;
      }

      while (v4 > sqrtf((v16 * v16) + (v15 * v15)));
    }

    while (v5 < a2);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 2) = v2;
  *(v5 - 1) = v3;
  return v5;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(float *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = sqrtf((v4 * v4) + (*a1 * *a1));
  do
  {
    v6 = a1[v2 + 2];
    v7 = sqrtf((a1[v2 + 3] * a1[v2 + 3]) + (v6 * v6));
    v2 += 2;
  }

  while (v7 > v5);
  v8 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *(a2 - 8);
      v12 = *(a2 - 4);
      a2 -= 8;
    }

    while (sqrtf((v12 * v12) + (v11 * v11)) <= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      a2 -= 8;
    }

    while (sqrtf((v10 * v10) + (v9 * v9)) <= v5);
  }

  v13 = &a1[v2];
  if (v8 < a2)
  {
    v14 = a2;
    do
    {
      v15 = *(v13 + 1);
      *v13 = *v14;
      *v14 = v6;
      *(v14 + 4) = v15;
      do
      {
        v6 = v13[2];
        v16 = v13[3];
        v13 += 2;
      }

      while (sqrtf((v16 * v16) + (v6 * v6)) > v5);
      do
      {
        v17 = *(v14 - 8);
        v18 = *(v14 - 4);
        v14 -= 8;
      }

      while (sqrtf((v18 * v18) + (v17 * v17)) <= v5);
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *a1, float *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v18 = a1[2];
      v19 = a1[3];
      v20 = sqrtf((v19 * v19) + (v18 * v18));
      v22 = *a1;
      v21 = a1[1];
      v23 = sqrtf((v21 * v21) + (v22 * v22));
      v24 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
      if (v20 <= v23)
      {
        if (v24 > v20)
        {
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 2) = v18;
          *(a2 - 1) = v19;
          v35 = *a1;
          v36 = a1[1];
          if (sqrtf((a1[3] * a1[3]) + (a1[2] * a1[2])) > sqrtf((v36 * v36) + (v35 * v35)))
          {
            *a1 = *(a1 + 1);
            a1[2] = v35;
            a1[3] = v36;
          }
        }

        return 1;
      }

      if (v24 <= v20)
      {
        *a1 = *(a1 + 1);
        a1[2] = v22;
        a1[3] = v21;
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) <= v23)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
      }

      else
      {
        *a1 = *(a2 - 1);
      }

      *(a2 - 2) = v22;
      *(a2 - 1) = v21;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(a1, a1 + 2, a1 + 4, (a1 + 6));
        v7 = a1[6];
        v8 = a1[7];
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v8 * v8) + (v7 * v7)))
        {
          *(a1 + 3) = *(a2 - 1);
          *(a2 - 2) = v7;
          *(a2 - 1) = v8;
          v9 = a1[4];
          v10 = a1[5];
          if (sqrtf((a1[7] * a1[7]) + (a1[6] * a1[6])) > sqrtf((v10 * v10) + (v9 * v9)))
          {
            v11 = *(a1 + 3);
            *(a1 + 2) = v11;
            a1[6] = v9;
            a1[7] = v10;
            v12 = sqrtf((*(&v11 + 1) * *(&v11 + 1)) + (*&v11 * *&v11));
            v13 = a1[2];
            v14 = a1[3];
            if (v12 > sqrtf((v14 * v14) + (v13 * v13)))
            {
              *(a1 + 1) = v11;
              a1[4] = v13;
              a1[5] = v14;
              v15 = *a1;
              v16 = a1[1];
              if (v12 > sqrtf((v16 * v16) + (v15 * v15)))
              {
                *a1 = v11;
                result = 1;
                a1[2] = v15;
                a1[3] = v16;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(a1, a1 + 2, a1 + 4, (a2 - 2));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *a1;
    v6 = a1[1];
    if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v6 * v6) + (v5 * v5)))
    {
      *a1 = *(a2 - 1);
      *(a2 - 2) = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v25 = a1 + 4;
  v26 = a1 + 2;
  v27 = a1[2];
  v28 = a1[3];
  v29 = sqrtf((v28 * v28) + (v27 * v27));
  v30 = *a1;
  v31 = a1[1];
  v32 = sqrtf((v31 * v31) + (v30 * v30));
  v33 = a1 + 5;
  v34 = sqrtf((a1[5] * a1[5]) + (a1[4] * a1[4]));
  if (v29 > v32)
  {
    if (v34 <= v29)
    {
      *a1 = *(a1 + 1);
      a1[2] = v30;
      a1[3] = v31;
      if (v34 <= v32)
      {
        goto LABEL_34;
      }

      *v26 = *v25;
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    v26 = a1 + 4;
    goto LABEL_33;
  }

  if (v34 > v29)
  {
    v37 = *v25;
    *v26 = *v25;
    *v25 = v27;
    *v33 = v28;
    if (sqrtf((*(&v37 + 1) * *(&v37 + 1)) + (*&v37 * *&v37)) > v32)
    {
      *a1 = v37;
      v33 = a1 + 3;
LABEL_33:
      *v26 = v30;
      *v33 = v31;
    }
  }

LABEL_34:
  v38 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = *v38;
    v42 = v38[1];
    v43 = sqrtf((v42 * v42) + (v41 * v41));
    if (v43 > sqrtf((v25[1] * v25[1]) + (*v25 * *v25)))
    {
      v44 = v39;
      while (1)
      {
        *(a1 + v44 + 24) = *(a1 + v44 + 16);
        if (v44 == -16)
        {
          break;
        }

        v45 = sqrtf((*(a1 + v44 + 12) * *(a1 + v44 + 12)) + (*(a1 + v44 + 8) * *(a1 + v44 + 8)));
        v44 -= 8;
        if (v43 <= v45)
        {
          v46 = (a1 + v44 + 24);
          goto LABEL_42;
        }
      }

      v46 = a1;
LABEL_42:
      *v46 = v41;
      v46[1] = v42;
      if (++v40 == 8)
      {
        return v38 + 2 == a2;
      }
    }

    v25 = v38;
    v39 += 8;
    v38 += 2;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,MTPoint *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8, v11);
        v11 -= 2;
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
        v13 = *v12;
        v14 = v12[1];
        if (sqrtf((v14 * v14) + (v13 * v13)) > sqrtf((a1[1] * a1[1]) + (*a1 * *a1)))
        {
          *v12 = *a1;
          *a1 = v13;
          a1[1] = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 2;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 3);
        }

        v15 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) > sqrtf((v8[3] * v8[3]) + (v8[2] * v8[2])))
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      v11 = a4[1];
      v12 = sqrtf((v11 * v11) + (v10 * v10));
      if (sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) <= v12)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) > sqrtf((v8[3] * v8[3]) + (v8[2] * v8[2])))
          {
            v8 += 2;
            v7 = v15;
          }

          a4 = v13;
        }

        while (sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) <= v12);
        *v13 = v10;
        v13[1] = v11;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v9 = *(v5 + 4);
      v8 = v5 + 2;
      if (sqrtf((*(v8 - 1) * *(v8 - 1)) + (*(v8 - 2) * *(v8 - 2))) > sqrtf((*(v8 + 1) * *(v8 + 1)) + (v9 * v9)))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v8 = *(a2 - 4);
    v6 = (a2 - 8);
    v9 = sqrtf((v8 * v8) + (v7 * v7));
    if (sqrtf((v5[1] * v5[1]) + (*v5 * *v5)) > v9)
    {
      do
      {
        v10 = v5;
        *v6 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = v10;
      }

      while (sqrtf((v5[1] * v5[1]) + (*v5 * *v5)) > v9);
      *v10 = v7;
      v10[1] = v8;
    }
  }

  return result;
}

uint64_t std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTActionEvent_>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_52974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<MTPoint>::emplace_back<MTPoint const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_52AF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __cxx_global_var_init_28()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

MTFingerToPathMap_ *MTHandMotion_::MTHandMotion_(MTFingerToPathMap_ *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  MTFingerToPathMap_::MTFingerToPathMap_(a1, 1);
  *v12 = off_109728;
  *(v12 + 120) = a2;
  *(v12 + 128) = a3;
  *(v12 + 132) = a4;
  *(v12 + 380) = a5;
  *(v12 + 384) = a6;
  MTParameterFactory_::initMotionExtractionParams(v12 + 144);
  MTHandMotion_::clearHandMotion(a1, 1);
  return a1;
}

void MTHandMotion_::~MTHandMotion_(MTHandMotion_ *this)
{
  MTFingerToPathMap_::~MTFingerToPathMap_(this);

  operator delete();
}

void MTHandMotion_::clearHandMotion(MTHandMotion_ *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    *(this + 61) = 0;
    *(this + 62) = 0;
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  *(this + 35) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 252) = _Q0;
  *(this + 67) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 34) = _Q0;
  *(this + 280) = 0;
  *(this + 29) = 0;
  *(this + 376) = 0;
  *(this + 46) = 0;
  MTFingerToPathMap_::clearFingerPathMappings(this);
  v8 = MTLoggingPlugin();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    MTHandMotion_::clearHandMotion(v2, v8);
  }
}

float MTHandMotion_::computeSeparation_mm(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 68);
  v4 = *(a3 + 72);
  v5 = *(a2 + 68);
  v6 = *(a2 + 72);
  v7 = v4 - v6;
  v8 = vabds_f32(v4, v6);
  a1[88] = v8;
  if (v8 > a1[89])
  {
    a1[89] = v8;
  }

  v9 = v3 - v5;
  a1[87] = sqrtf((v7 * v7) + (v9 * v9));
  result = sqrtf(((v7 * 0.5) * (v7 * 0.5)) + (v9 * v9));
  a1[90] = result;
  return result;
}

float MTHandMotion_::computeInnerOuterSpeedSymmetry(MTHandMotion_ *this, const MTParserPath_ *a2, const MTParserPath_ *a3)
{
  y = a2[4].var3.var6.y;
  var5 = a2[4].var3.var5;
  x = a2[4].var3.var6.x;
  v6 = sqrtf((*&var5 * *&var5) + (x * x));
  v7 = 1.0;
  if (v6 > 0.0)
  {
    v8 = a3[4].var3.var5;
    v9 = a3[4].var3.var6.x;
    v10 = sqrtf((*&v8 * *&v8) + (v9 * v9));
    if (v10 > 0.0)
    {
      v7 = ((x * v9) + (*&var5 * *&v8)) / (v6 * v10);
    }
  }

  result = 0.0;
  if (y > 20.0)
  {
    v12 = -1.0;
    if (v7 >= 0.0)
    {
      v12 = 1.0;
    }

    v13 = v7 <= 0.5;
    v14 = 1.5;
    if (v13)
    {
      v14 = v12;
    }

    return (sqrtf(y * a3[4].var3.var6.y) / (((y + a3[4].var3.var6.y) * 0.5) + 1.0)) * v14;
  }

  return result;
}

void MTHandMotion_::extractHandMotion(MTHandMotion_ *this, const MTPathStates_ *a2, MTParserPath_ *a3, const MTParserPath_ *a4, int a5)
{
  if (*(a2 + 1) - *(a2 + 2) == 0.0)
  {
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 1);
      MTAbsoluteTimeGetCurrent();
      *buf = 136316162;
      v37 = "[Error] ";
      v38 = 2080;
      v39 = "";
      v40 = 2080;
      v41 = "extractHandMotion";
      v42 = 2048;
      v43 = v11;
      v44 = 2048;
      v45 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Frame interval is zero! currentTimestamp = %g, currentHostTimestamp = %g", buf, 0x34u);
    }
  }

  v13 = *&a3[3].var3.var12;
  var2 = a3[3].var2;
  v15 = *&a4[3].var3.var12;
  v16 = a4[3].var2;
  *(this + 348) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 91) = *(this + 90);
  *(this + 90) = 0;
  v17 = a3->var3.var2;
  if (v17)
  {
    *(this + 26) = vadd_f32(a3[4].var3.var0, 0);
    *(this + 21) = vadd_f32(v13, a3->var3.var6);
    if (a5)
    {
      if (LODWORD(a3[1].var3.var0) && (var2 & 4) != 0)
      {
        *(this + 48) = a3[3].var3.var13.y + 0.0;
        *(this + 49) = a3[3].var3.var14.x + 0.0;
      }
    }
  }

  v18 = a4->var3.var2;
  if (v17 == v18 || !v18)
  {
    *(this + 22) = 0;
    return;
  }

  v19 = a4->var3.var6.x - a3->var3.var6.x;
  v20 = a4->var3.var6.y - a3->var3.var6.y;
  v21 = sqrtf((v20 * v20) + (v19 * v19));
  v22 = atan2f(-v20, v19);
  v23 = *&a3[4].var3.var0;
  v24 = *(&a3[4].var3.var0 + 1);
  var0 = a4[4].var3.var0;
  MTHandMotion_::computeSeparation_mm(this, &a3->var3, &a4->var3);
  *(this + 44) = v21;
  *(this + 45) = v22;
  *(this + 21) = vmul_f32(vadd_f32(*(this + 168), vadd_f32(v15, a4->var3.var6)), 0x3F0000003F000000);
  v26.n128_u64[0] = vmul_f32(vadd_f32(var0, *(this + 208)), 0x3F0000003F000000);
  *(this + 26) = v26.n128_u64[0];
  v27 = *(this + 22);
  if (*(this + 20) == 1)
  {
    if (v27 != 1)
    {
      goto LABEL_18;
    }
  }

  else if (v27 != 1)
  {
    goto LABEL_22;
  }

  v27 = *(this + 20);
LABEL_18:
  if (v27 > 0xF)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + v27 + 2);
  }

  *(this + 280) = MTHandMotion_::computeInnerOuterSpeedSymmetry(v25, (*(a2 + 35) + 568 * *(this + 3)), (*(a2 + 35) + 568 * v28)) > 0.85;
LABEL_22:
  if (v21 > 0.0)
  {
    v26.n128_f32[0] = v20 / v21;
    *(this + 54) = (vmuls_lane_f32(v20 / v21, var0, 1) + (*&var0 * (v19 / v21))) - ((v24 * (v20 / v21)) + (v23 * (v19 / v21)));
    *(this + 55) = ((*&var0 * (v20 / v21)) - (*(&var0 + 1) * (v19 / v21))) - ((v23 * (v20 / v21)) - (v24 * (v19 / v21)));
    if (a5 && LODWORD(a4[1].var3.var0) && LODWORD(a3[1].var3.var0) && ((var2 | v16) & 4) != 0)
    {
      v29 = *&a3[1].var3.var2 - *&a4[1].var3.var2;
      v30 = *&a3[1].var3.var3 - *&a4[1].var3.var3;
      v31 = sqrtf((v30 * v30) + (v29 * v29));
      y = a3[3].var3.var13.y;
      x = a3[3].var3.var14.x;
      v34 = *&a4[3].var3.var13.y;
      *(this + 24) = vmul_f32(vadd_f32(v34, *(this + 192)), 0x3F0000003F000000);
      v26.n128_f32[0] = ((v34.f32[0] * v26.n128_f32[0]) - (v34.f32[1] * (v19 / v21))) - ((y * v26.n128_f32[0]) - (x * (v19 / v21)));
      *(this + 50) = v21 - v31;
      *(this + 51) = v26.n128_u32[0];
    }

    if ((a3->var3.var3 - 3) <= 1 && (HIDWORD(a3[1].var3.var0) - 3) <= 1 && MTParserPath_::isFingerContact(a3) && *(this + 101) >= 3u)
    {
      MTHandMotion_::combineCentralFingerScaleRotate(this, a2, a3);
    }

    if ((*(this + 138) & 1) != 0 || *(this + 20) != 1 && *(this + 22) != 1 && (*(this + 139) & 1) != 0 || *(this + 101) > 2u || *(this + 376) == 1)
    {
      MTHandMotion_::extractFastestFingerTranslation(this, a2, v26);
    }
  }
}

MTHandMotion_ *MTHandMotion_::combineCentralFingerScaleRotate(MTHandMotion_ *this, const MTPathStates_ *a2, const MTParserPath_ *a3)
{
  v3 = *(this + 20) + 1;
  if (v3 < *(this + 22))
  {
    v6 = this;
    v7 = 0;
    v8 = *&a3[4].var3.var0;
    v9 = *(&a3[4].var3.var0 + 1);
    v10 = this + 8;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (v3 <= 0xF)
      {
        v13 = *&v10[4 * v3];
        if (v13 >= 1)
        {
          v14 = *(a2 + 35) + 568 * v13;
          if ((*(v14 + 36) - 3) <= 1 && (*(v14 + 132) - 3) <= 1)
          {
            this = MTParserPath_::isFingerContact(v14);
            if (this)
            {
              v15 = *(v14 + 48) - a3->var3.var6.x;
              v16 = *(v14 + 52) - a3->var3.var6.y;
              v17 = *(v14 + 144) - *&a3[1].var3.var2;
              v18 = sqrtf((v16 * v16) + (v15 * v15));
              v11 = v11 + (v18 - sqrtf(((*(v14 + 148) - *&a3[1].var3.var3) * (*(v14 + 148) - *&a3[1].var3.var3)) + (v17 * v17)));
              v12 = v12 + (((*(v14 + 468) * (v16 / v18)) + (*(v14 + 464) * (v15 / v18))) - ((v9 * (v16 / v18)) + (v8 * (v15 / v18))));
              ++v7;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 < *(v6 + 22));
    if (v7 > 0)
    {
      v19 = v11 / v7;
      v20 = v12 / v7;
      v21 = *(v6 + 50);
      if (fabsf(v19) > fabsf(v21))
      {
        *(v6 + 50) = (v19 + v21) * 0.5;
      }

      v22 = *(v6 + 54);
      if (fabsf(v20) > fabsf(v22))
      {
        *(v6 + 54) = (v20 + v22) * 0.5;
      }
    }
  }

  return this;
}

MTHandMotion_ *MTHandMotion_::extractFastestFingerTranslation(MTHandMotion_ *this, const MTPathStates_ *a2, __n128 a3)
{
  v4 = this;
  v5 = 0;
  v6 = this + 12;
  v7 = 0;
  a3.n128_u64[0] = 0;
  v16 = a3;
  v8 = 0;
  do
  {
    v9 = *&v6[v5];
    if (v9 >= 1)
    {
      v10 = *(a2 + 35) + 568 * v9;
      if ((*(v10 + 36) - 3) <= 1)
      {
        this = MTParserPath_::isFingerContact(v10);
        if (this)
        {
          v11 = *(v10 + 500) + 0.5;
          v12 = *(v4 + 32);
          if (v12 >= 1000 && v5 == 16 && v12 <= 0x7CF)
          {
            v13 = (v11 * 0.5) * 0.5;
            if (*(v4 + 101) > 4u)
            {
              v11 = v11 * 0.5;
            }

            else
            {
              v13 = *(v10 + 500) + 0.5;
            }
          }

          else
          {
            v13 = *(v10 + 500) + 0.5;
          }

          v14 = v16;
          v14.n128_f32[0] = v16.n128_f32[0] + v11;
          v16 = v14;
          v7 = vmla_n_f32(v7, *(v10 + 424), v13);
          v8 = vmla_n_f32(v8, *(v10 + 464), v13);
        }
      }
    }

    v5 += 4;
  }

  while (v5 != 20);
  if (v16.n128_f32[0] > 0.0)
  {
    v15 = vdup_lane_s32(v16.n128_u64[0], 0);
    v7 = vdiv_f32(v7, v15);
    v8 = vdiv_f32(v8, v15);
  }

  *(v4 + 24) = v7;
  *(v4 + 26) = v8;
  return this;
}

float MTHandMotion_::getSpeedSymmetry(MTHandMotion_ *this, float a2, int a3)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v5 = *(this + 68);

      return powf(v5, a2);
    }

    if (a3 == 2)
    {
      v5 = *(this + 67);

      return powf(v5, a2);
    }

LABEL_10:
    if ((*(this + 32) - 1000) > 0x3E7)
    {
      v5 = *(this + 64);
    }

    else
    {
      v5 = *(this + 65);
    }

    return powf(v5, a2);
  }

  if (a3 == 4)
  {
    v5 = *(this + 66);

    return powf(v5, a2);
  }

  if (a3 != 7)
  {
    goto LABEL_10;
  }

  return 1.0 - powf(*(this + 65), a2);
}

uint64_t MTHandMotion_::fastest1FingerMask(MTHandMotion_ *this, const MTPathStates_ *a2, float *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = this + 12;
  do
  {
    v8 = *&v7[4 * v5];
    if (v8 >= 1)
    {
      v9 = *(a2 + 35) + 568 * v8;
      if ((*(v9 + 36) - 3) <= 1 && MTParserPath_::isFingerContact(v9) && (*(v9 + 545) & 1) == 0)
      {
        v10 = *(v9 + 500);
        if (v10 > *a3)
        {
          v6 = (1 << v5);
          *a3 = v10;
        }
      }
    }

    ++v5;
  }

  while (v5 != 5);
  return v6;
}

uint64_t MTHandMotion_::fastest2FpairMask(MTHandMotion_ *this, const MTPathStates_ *a2)
{
  v3 = 0;
  v4 = this + 16;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = *&v4[4 * v3];
    if (v8 >= 1)
    {
      v9 = (*(a2 + 35) + 568 * v8);
      if ((v9->var3.var3 - 3) <= 1 && MTParserPath_::isFingerContact(v9))
      {
        if (v3 + 2 <= 3)
        {
          if (!v3)
          {
            v7 = v7 + v9[4].var3.var6.y;
            goto LABEL_15;
          }

          if (v3 != 1)
          {
            goto LABEL_15;
          }

          y = v9[4].var3.var6.y;
          v7 = v7 + y;
          goto LABEL_14;
        }

        if (v3 == 2)
        {
          y = v9[4].var3.var6.y;
          v5 = v5 + y;
LABEL_14:
          v6 = v6 + y;
          goto LABEL_15;
        }

        if (v3 == 3)
        {
          v5 = v5 + v9[4].var3.var6.y;
        }
      }
    }

LABEL_15:
    ++v3;
  }

  while (v3 != 4);
  if (v5 <= v6 || v5 <= v7)
  {
    v12 = 6;
  }

  else
  {
    v12 = 24;
  }

  if (v6 <= v5 || v6 <= v7)
  {
    return v12;
  }

  else
  {
    return 12;
  }
}

void MTHandMotion_::computeSpeedSymmetry(MTHandMotion_ *this, const MTPathStates_ *a2, unsigned int a3, float a4, float a5)
{
  v9 = 0;
  v10 = this + 12;
  v11 = 0.0;
  v12 = 1.0;
  v13 = 0.0;
  do
  {
    v14 = *&v10[4 * v9];
    if (v14 >= 1)
    {
      v15 = *(a2 + 35) + 568 * v14;
      if ((*(v15 + 36) - 3) <= 1)
      {
        v16 = *(v15 + 500);
        if (MTParserPath_::isFingerContact(v15))
        {
          v17 = v16 + 1.0;
          if ((a3 >> v9))
          {
            v12 = v12 * v17;
            v13 = v13 + v17;
            v11 = v11 + 1.0;
          }

          else if (a4 > 0.0 && (*(v15 + 545) & 1) == 0 && v17 <= a4)
          {
            v12 = v12 * powf(1.0 - (v17 / a4), a5);
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != 5);
  if (v11 > 0.0)
  {
    pow(v12, 1.0 / v11);
  }
}

void MTHandMotion_::computeSpeedSymmetries(MTHandMotion_ *this, const MTPathStates_ *a2, unsigned int a3)
{
  MTHandMotion_::computeSpeedSymmetry(this, a2, 0x1Fu, 0.0, 1.0);
  *(this + 64) = v6;
  MTHandMotion_::computeSpeedSymmetry(this, a2, a3, 0.0, 1.0);
  *(this + 65) = v7;
  v14 = 0.0;
  v8 = MTHandMotion_::fastest1FingerMask(this, a2, &v14);
  v9 = v14;
  MTHandMotion_::computeSpeedSymmetry(this, a2, v8, v14, 1.0);
  *(this + 68) = v10;
  v11 = MTHandMotion_::fastest2FpairMask(this, a2);
  MTHandMotion_::computeSpeedSymmetry(this, a2, v11, v9, 2.0);
  *(this + 67) = v12;
  MTHandMotion_::computeSpeedSymmetry(this, a2, 0x1Eu, v9, 2.0);
  *(this + 66) = v13;
}

float MTHandMotion_::computeTrackpadDominanceWeights(MTHandMotion_ *this, float *a2, float *a3)
{
  if ((*(this + 138) & 1) == 0 && ((result = *(this + 87), *(this + 20) == 1) || *(this + 22) == 1 || (*(this + 139) & 1) == 0) && (v4 = *(this + 101), v4 <= 2))
  {
    *a2 = 0.45;
    *a3 = 0.45;
  }

  else
  {
    result = *(this + 90);
    v4 = *(this + 101);
    *a2 = 0.45;
    *a3 = 0.45;
    if (v4 == 5)
    {
      goto LABEL_13;
    }
  }

  if (*(this + 20) != 1 && *(this + 22) != 1)
  {
    if (v4 >= 3)
    {
      v5 = 1036831949;
      goto LABEL_17;
    }

    if (result <= 55.0)
    {
      if (result <= 35.0)
      {
LABEL_23:
        result = *(this + 58);
        if (result < 0.0)
        {
          v7 = *(this + 57);
          if (v7 > 0.0)
          {
            v8 = fabsf(*(this + 56)) + fabsf(*(this + 59));
            result = v7 - result;
            if (result > 0.0 && v8 < result)
            {
              result = *a2 / (2.0 - ((v8 / result) * (v8 / result)));
              *a2 = result;
            }
          }
        }

        return result;
      }

      v6 = ((result + -35.0) / 20.0) + 0.45;
    }

    else
    {
      v6 = 1.45;
    }

    *a2 = v6;
    *a3 = v6;
    goto LABEL_23;
  }

  if (v4 < 4)
  {
    v5 = 1075629261;
    goto LABEL_17;
  }

  if ((*(this + 280) & 1) == 0)
  {
LABEL_13:
    v5 = 1069128090;
LABEL_17:
    *a2 = v5;
    *a3 = v5;
  }

  return result;
}

void MTHandMotion_::clipMotionToDominantAxes(MTHandMotion_ *this, double a2, int a3)
{
  v6 = 1.0 - exp(-a2 / *(this + 36));
  if ((*(this + 138) & 1) != 0 || *(this + 20) != 1 && *(this + 22) != 1 && (*(this + 139) & 1) != 0 || (v7 = 1.0, *(this + 101) >= 3u))
  {
    v7 = *(this + 64);
  }

  v8 = 1.0 - v6;
  v9 = *(this + 208);
  v10 = *(this + 216);
  v11 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v9, v6)), vcvtq_f64_f32(*(this + 224)), v8);
  *(this + 63) = 1065353216;
  v12 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(vmul_n_f32(v10, v7), v6)), vcvtq_f64_f32(*(this + 232)), v8));
  *(this + 28) = vcvt_f32_f64(v11);
  *(this + 29) = v12;
  v13 = (sqrtf(COERCE_FLOAT(vmul_f32(v9, v9).i32[1]) + (v9.f32[0] * v9.f32[0])) * v6) + v8 * *(this + 60);
  *(this + 60) = v13;
  v36 = 1065353216;
  v37 = 1065353216;
  v14 = *(this + 32) - 2000;
  if (v14 > 0x3E7)
  {
    MTHandMotion_::computeTrackpadDominanceWeights(this, &v37, &v36);
    v15 = __PAIR64__(v36, v37);
  }

  else if (*(this + 20) == 1 || *(this + 22) == 1)
  {
    v15 = 0x3FCCCCCD3FB33333;
  }

  else
  {
    v15 = 0x3F99999A3F8CCCCDLL;
  }

  v16 = vmul_f32(vabs_f32(v12), v15);
  if (v16.f32[0] <= v16.f32[1])
  {
    v17 = v16.f32[1];
  }

  else
  {
    v17 = v16.f32[0];
  }

  *(this + 284) = *(this + 14);
  if (!a3)
  {
    if (*(this + 376))
    {
      a3 = 3;
    }

    else
    {
      a3 = 0;
    }
  }

  if (v17 < v13)
  {
    if (v13 > 0.0)
    {
      *(this + 63) = v17 / v13;
    }

    if (*(this + 153) == 1)
    {
      *(this + 292) = 0;
    }

    if (*(this + 152) != 1)
    {
      goto LABEL_49;
    }

    if ((a3 & 4) == 0)
    {
      *(this + 50) = 0;
    }

    if ((a3 & 8) != 0)
    {
      goto LABEL_49;
    }

LABEL_43:
    *(this + 51) = 0;
    goto LABEL_49;
  }

  if (v17 > 0.0)
  {
    *(this + 63) = v13 / v17;
  }

  v18 = *(this + 153);
  if (v18 == 1)
  {
    *(this + 284) = 0;
  }

  v19 = *(this + 152);
  if ((a3 & 3) == 0 && *(this + 152))
  {
    *(this + 24) = 0;
  }

  if (a3)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v16.f32[0] <= (v16.f32[1] * v20))
  {
    if (v16.f32[1] > (v16.f32[0] * v20))
    {
      if (v18)
      {
        *(this + 73) = 0;
      }

      if (v19)
      {
        *(this + 50) = 0;
      }
    }
  }

  else
  {
    if (v18)
    {
      *(this + 74) = 0;
    }

    if (v19)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  v21 = *(this + 71);
  if (v14 >= 0x3E8)
  {
    v23 = fabsf(v21);
  }

  else
  {
    v22 = 1.0 / tanf(0.38397);
    v23 = fabsf(v21);
    v24 = fabsf(*(this + 72));
    if (v23 <= (v22 * v24))
    {
      if (v24 > (v22 * v23))
      {
        *(this + 48) = 0;
      }
    }

    else
    {
      *(this + 49) = 0;
    }

    v25 = fabsf(*(this + 48));
    v26 = fabsf(*(this + 49));
    if (v25 <= (v22 * v26))
    {
      if (v26 > (v22 * v25))
      {
        *(this + 48) = 0;
      }
    }

    else
    {
      *(this + 49) = 0;
    }
  }

  v27 = *(this + 37);
  v28 = 0.0;
  v29 = v23 < v27;
  v30 = 0.0;
  if (!v29)
  {
    if (v21 <= 0.0)
    {
      v30 = v21 + v27;
    }

    else
    {
      v30 = v21 - v27;
    }
  }

  *(this + 71) = v30;
  v31 = *(this + 72);
  if (fabsf(v31) >= v27)
  {
    if (v31 <= 0.0)
    {
      v28 = v27 + v31;
    }

    else
    {
      v28 = v31 - v27;
    }
  }

  *(this + 72) = v28;
  v32 = *(this + 73);
  v33 = 0.0;
  v34 = 0.0;
  if (fabsf(v32) >= v27)
  {
    if (v32 <= 0.0)
    {
      v34 = v27 + v32;
    }

    else
    {
      v34 = v32 - v27;
    }
  }

  *(this + 73) = v34;
  v35 = *(this + 74);
  if (fabsf(v35) >= v27)
  {
    if (v35 <= 0.0)
    {
      v33 = v27 + v35;
    }

    else
    {
      v33 = v35 - v27;
    }
  }

  *(this + 74) = v33;
  MTHandMotion_::convertPixelDeltasTo_mm_s(this, a2);

  MTHandMotion_::convertPixelVelocitiesTo_mm_s(this);
}

void MTHandMotion_::convertPixelDeltasTo_mm_s(MTHandMotion_ *this, double a2)
{
  v7.x = *(this + 48);
  v7.y = *(this + 49);
  *(this + 79) = MTSurfaceDimensions_::convertPixelDeltasToMillimetersPerSecond(*(this + 15), v7, a2).u32[0];
  *(this + 80) = v4;
  MTSurfaceDimensions_::convertPixelDeltaToMillimetersPerSecond(*(this + 15), *(this + 50), a2);
  *(this + 81) = v5;
  MTSurfaceDimensions_::convertPixelDeltaToMillimetersPerSecond(*(this + 15), *(this + 51), a2);
  *(this + 82) = v6;
}

void MTHandMotion_::convertPixelVelocitiesTo_mm_s(MTHandMotion_ *this)
{
  *(this + 83) = MTSurfaceDimensions_::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 52));
  *(this + 84) = MTSurfaceDimensions_::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 53));
  *(this + 85) = MTSurfaceDimensions_::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 54));
  *(this + 86) = MTSurfaceDimensions_::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 55));
}

float32x2_t MTHandMotion_::updateFastestFingerSpeed(MTHandMotion_ *this, const MTPathStates_ *a2)
{
  v4 = *(a2 + 1) - *(a2 + 2);
  v5 = 0.0;
  if (v4 <= 0.025)
  {
    v5 = *(this + 92);
  }

  v6 = *(a2 + 76);
  v7 = v4 / 0.00800000038;
  v8 = pow(dbl_D6BB0[v6 > v5], v4 / 0.00800000038);
  *(this + 92) = (v6 * (1.0 - v8)) + (v8 * v5);
  v17 = exp2(-v7);
  LODWORD(v18) = *(a2 + 316);
  v9 = pow(0.949999988, v7);
  v10.f64[0] = v17;
  v10.f64[1] = v9;
  result = vcvt_f32_f64(v10);
  __asm { FMOV            V2.2S, #1.0 }

  *(this + 244) = vmla_f32(vmul_n_f32(vsub_f32(_D2, result), v18), *(this + 244), result);
  return result;
}

uint64_t MTHandMotion_::makeCollectionEventMask(MTHandMotion_ *this, const MTPathStates_ *a2)
{
  v2 = (*(a2 + 35) + 604);
  v3 = 31;
  do
  {
    v4 = v2[78];
    if ((*v2 - 5) < 0xFFFFFFFE || (v2[78] & 4) == 0)
    {
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(this + 35) |= 4u;
      if ((v4 & 0x2000) == 0)
      {
LABEL_8:
        if ((v4 & 0x800) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    *(this + 35) |= 0x2000u;
    if ((v4 & 0x800) == 0)
    {
LABEL_9:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_13:
    *(this + 35) |= 0x800u;
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v6 = *(this + 35) | v4 & 0xE040000;
    *(this + 35) = v6;
    if ((v4 & 0x1000000) != 0)
    {
      *(this + 35) = v6 | 0x1000000;
    }

LABEL_16:
    if ((v4 & 0x40) != 0)
    {
      *(this + 35) |= 0x40u;
    }

    v2 += 142;
    --v3;
  }

  while (v3);
  return *(this + 35);
}

uint64_t MTHandMotion_::processHandMotion(MTHandMotion_ *this, MTPathStates_ *a2, int a3, int a4, int a5, float a6, int a7, unsigned int a8)
{
  if ((*(this + 32) - 1000) <= 0xBB7)
  {
    v15 = MTPathStates_::restingTranslationCertainty(a2);
    *(this + 93) = v15;
    if (!a7)
    {
      v16 = *(a2 + 436);
      if (*(a2 + 93) - v16 == 2)
      {
        v17 = *(this + 90);
        v18 = 0.0;
        if (v17 > 40.0)
        {
          v18 = 1.0;
          if (v17 < 50.0)
          {
            v18 = (v17 + -40.0) / 10.0;
          }
        }

        v19 = v15 * v18;
        if (v18 < 1.0)
        {
          LOBYTE(v16) = 0;
        }

        if (v19 > 0.9)
        {
          LOBYTE(v16) = 1;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      *(this + 376) = v16;
    }
  }

  MTFingerToPathMap_::updateFingerPathMappings(this, a2);
  if (a3 < 1)
  {
    MTHandMotion_::clearHandMotion(this, 0);
    CollectionEventMask = 0;
    *(this + 89) = 0;
  }

  else
  {
    *(this + 35) = 0;
    MTHandMotion_::updateFastestFingerSpeed(this, a2);
    MTHandMotion_::computeSpeedSymmetries(this, a2, a8);
    *(this + 69) = MTPathStates_::get_3F_IncludingThumbSpeedSymmetry(a2);
    if (a4 > a5)
    {
      *(this + 28) = 0;
      *(this + 29) = 0;
    }

    if (a4)
    {
      InnermostTouchingPath = MTFingerToPathMap_::getInnermostTouchingPath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap_::getOutermostTouchingPath(this, a2);
      v22 = this;
      v23 = a2;
      v24 = InnermostTouchingPath;
      v25 = 1;
    }

    else
    {
      InnermostInRangePath = MTFingerToPathMap_::getInnermostInRangePath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap_::getOutermostInRangePath(this, a2);
      v22 = this;
      v23 = a2;
      v24 = InnermostInRangePath;
      v25 = 0;
    }

    MTHandMotion_::extractHandMotion(v22, v23, v24, OutermostTouchingPath, v25);
    MTHandMotion_::clipMotionToDominantAxes(this, *(a2 + 1) - *(a2 + 2), a7);
    if (*(this + 48) != 0.0 || *(this + 49) != 0.0 || *(this + 50) != 0.0 || *(this + 51) != 0.0)
    {
      *(this + 20) = *(a2 + 1);
    }

    CollectionEventMask = MTHandMotion_::makeCollectionEventMask(this, a2);
    *(this + 35) = CollectionEventMask;
  }

  MTPathStates_::calculateCentroidOfPaths(a2, this + 23, v26);
  return CollectionEventMask;
}

MTHandMotion_ *MTHandMotion_::storeFeedbackFromMouse(MTHandMotion_ *this, MTPoint a2)
{
  *(this + 27) = LODWORD(a2.x);
  *(this + 28) = LODWORD(a2.y);
  return this;
}

float MTHandMotion_::getMouseMotionFeedback(MTHandMotion_ *this, int a2)
{
  v2 = *(this + 27);
  v3 = *(this + 28);
  if (a2 == 1)
  {
    v4 = v3 * 0.8;
    v5 = 0.7;
    return v4 + (v2 * v5);
  }

  if (!a2)
  {
    v4 = v3 * 0.7;
    v5 = 0.8;
    return v4 + (v2 * v5);
  }

  return hypotf(v2, v3);
}

void __cxx_global_var_init_29()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void MTForceBehavior_::MTForceBehavior_(MTForceBehavior_ *this)
{
  this->var4 = 0;
  *&this->var0 = 0;
  *(&this->var1 + 1) = 0;
  *&this->var5.var0 = 0u;
  *&this->var5.var2 = 0u;
  *&this->var6.__end_ = 0u;
  *&this->var7.__begin_ = 0u;
  *&this->var7.__cap_ = 0u;
  *&this->var8.__end_ = 0u;
  *&this->var9.__begin_ = 0u;
  this->var9.__cap_ = 0;
}

void MTForceBehavior_::~MTForceBehavior_(MTForceBehavior_ *this)
{
  begin = this->var9.__begin_;
  if (begin)
  {
    this->var9.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->var8.__begin_;
  if (v3)
  {
    this->var8.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->var7.__begin_;
  if (v4)
  {
    this->var7.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->var6.__begin_;
  if (v5)
  {
    this->var6.__end_ = v5;
    operator delete(v5);
  }

  var0 = this->var5.var0;
  if (var0)
  {
    this->var5.var1 = var0;
    operator delete(var0);
  }
}

uint64_t MTForceBehavior_::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(a1 + 12) = *(a2 + 12);
  }

  return a1;
}

MTForceBehavior_ *MTForceBehavior_::forceSourceFingerCount(MTForceBehavior_ *this)
{
  v1 = this;
  LODWORD(this) = 0;
  var1 = v1->var1;
  v3 = 16;
  do
  {
    if ((var1 & v3) != 0)
    {
      this = (this + 1);
    }

    else
    {
      this = this;
    }

    v4 = v3 >= 2;
    v3 >>= 1;
  }

  while (v4);
  return this;
}

uint64_t MTForceBehavior_::whichButtonBehavior(MTForceBehavior_ *this)
{
  v1 = this->var0 - 1;
  if (v1 > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_D6BD0[v1];
  }
}

uint64_t MTForceBehavior_::resizeToNumStages(MTForceBehavior_ *this, unsigned int a2)
{
  v4 = a2 - this->var4;
  std::vector<float>::resize(&this->var5, 2 * a2 - 2);
  std::vector<float>::resize(&this->var8, a2);
  std::vector<float>::resize(&this->var9, a2);
  this->var4 = a2;
  return v4;
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

BOOL MTForceBehavior_::addStage(MTForceBehavior_ *a1, int a2, int a3, int a4, float a5, float a6)
{
  if (MTForceBehavior_::resizeToNumStages(a1, a2 + 1) > 1)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v13 = &a1->var5.var0[2 * a2];
    *(v13 - 8) = a6;
    *(v13 - 4) = a5;
  }

  result = MTForceBehavior_::isThresholdLadderMonotonic(&a1->var5.var0);
  if (result)
  {
    a1->var8.__begin_[a2] = a3;
    a1->var9.__begin_[a2] = a4;
    return 1;
  }

  return result;
}

BOOL MTForceBehavior_::isThresholdLadderMonotonic(void *a1)
{
  v1 = a1[1] - *a1;
  if ((v1 & 4) != 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 >> 2) - 1;
  v4 = v3;
  v5 = -(v3 & ~(v3 >> 31));
  v6 = (*a1 + 4);
  while (v5 != v2)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    --v2;
    ++v6;
    if (v7 > v8)
    {
      return 0;
    }
  }

  return -v2 >= v4;
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void __cxx_global_var_init_30()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void _GLOBAL__sub_I_MTForceBehavior__mm()
{
  v0 = objc_autoreleasePoolPush();
  dword_122620 = 0;
  MTForceBehavior_::Null = 0;
  *(&MTForceBehavior_::Null + 5) = 0;
  unk_122628 = 0u;
  unk_122638 = 0u;
  unk_122648 = 0u;
  unk_122658 = 0u;
  unk_122668 = 0u;
  unk_122678 = 0u;
  unk_122688 = 0u;
  qword_122698 = 0;
  __cxa_atexit(MTForceBehavior_::~MTForceBehavior_, &MTForceBehavior_::Null, &dword_0);

  objc_autoreleasePoolPop(v0);
}

double MTHandStatistics_::clear(MTHandStatistics_ *this, int a2)
{
  if (a2)
  {
    *(this + 203) = *(this + 202);
    *(this + 77) = *(this + 76);
    *(this + 79) = *(this + 78);
    *(this + 192) = *(this + 191);
    *(this + 187) = *(this + 186);
    *(this + 194) = *(this + 193);
    *(this + 189) = *(this + 188);
    v2 = *(this + 298);
    *(this + 299) = v2;
    *(this + 303) = v2;
    *(this + 190) = *(this + 211);
    *(this + 78) = *(this + 77);
    v3 = *(this + 33);
    v4 = *(this + 316);
  }

  else
  {
    v4 = 0;
    *(this + 305) = 0;
    *(this + 51) = 0;
    *(this + 203) = 0;
    *(this + 192) = 0;
    *(this + 187) = 0;
    *(this + 194) = 0;
    *(this + 189) = 0;
    *(this + 77) = 0;
    *(this + 79) = 0;
    *(this + 299) = 0;
    *(this + 303) = 0;
    *(this + 78) = 0;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 18) = 0;
    *(this + 92) = 0;
    *(this + 22) = 0;
    *(this + 197) = 0;
    *(this + 212) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    v3 = 0;
    *(this + 35) = 0;
    *(this + 36) = 0;
  }

  *(this + 34) = v3;
  *(this + 317) = v4;
  *(this + 201) = 0;
  *(this + 191) = 0;
  *(this + 186) = 0;
  *(this + 193) = 0;
  *(this + 188) = 0;
  *(this + 77) = 0;
  *(this + 195) = 0;
  *(this + 76) = 0;
  *(this + 78) = 0;
  *(this + 110) = 0;
  *(this + 222) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 14) = xmmword_D6C20;
  *(this + 40) = 0;
  *(this + 52) = 0;
  *(this + 43) = 0;
  *(this + 148) = 0;
  *(this + 150) = 0;
  *(this + 298) = 0;
  *(this + 302) = 0;
  *(this + 304) = 0;
  *(this + 316) = 0;
  return result;
}