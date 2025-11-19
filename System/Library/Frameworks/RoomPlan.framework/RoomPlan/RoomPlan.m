float64x2_t WebCore::TransformationMatrix::scaleNonUniform(float64x2_t *this, double a2, double a3)
{
  v3 = vmulq_n_f64(*this, a2);
  v4 = vmulq_n_f64(this[1], a2);
  *this = v3;
  this[1] = v4;
  result = vmulq_n_f64(this[2], a3);
  v6 = vmulq_n_f64(this[3], a3);
  this[2] = result;
  this[3] = v6;
  return result;
}

WebCore::TransformationMatrix *WebCore::TransformationMatrix::rotateFromVector(float64x2_t *this, long double a2, long double a3)
{
  v4 = atan2(a3, a2) / 6.28318531 * 360.0;

  return WebCore::TransformationMatrix::rotate3d(this, 0.0, 0.0, v4);
}

float64x2_t WebCore::TransformationMatrix::flipX(float64x2_t *this)
{
  result = vnegq_f64(*this);
  v2 = vnegq_f64(this[1]);
  *this = result;
  this[1] = v2;
  return result;
}

float64x2_t WebCore::TransformationMatrix::flipY(float64x2_t *this)
{
  result = vnegq_f64(this[2]);
  v2 = vnegq_f64(this[3]);
  this[2] = result;
  this[3] = v2;
  return result;
}

float32x2_t WebCore::TransformationMatrix::projectPoint(float64x2_t *a1, float *a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v3 = a1[5].f64[0];
  result = 0;
  if (v3 != 0.0)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = -(a1[7].f64[0] + a1[3].f64[0] * v6 + a1[1].f64[0] * v5) / v3;
    v8 = vaddq_f64(a1[6], vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[2], v6), *a1, v5), a1[4], v7));
    v9 = a1[7].f64[1] + a1[3].f64[1] * v6 + v5 * a1[1].f64[1] + v7 * a1[5].f64[1];
    if (v9 <= 0.0)
    {
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v8 = vbslq_s8(vnegq_f64(v10), vdupq_n_s64(0x4137D78400000000uLL), v8);
      if (a3)
      {
        *a3 = 1;
      }
    }

    else if (v9 != 1.0)
    {
      v8 = vdivq_f64(v8, vdupq_lane_s64(*&v9, 0));
    }

    return vcvt_f32_f64(v8);
  }

  return result;
}

void WebCore::TransformationMatrix::projectQuad(float64x2_t *a1@<X0>, float *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = 0;
  v20 = 0;
  v8 = WebCore::TransformationMatrix::projectPoint(a1, a2, &v21 + 1).u32[0];
  v10 = v9;
  v11 = WebCore::TransformationMatrix::projectPoint(a1, a2 + 2, &v21).u32[0];
  v13 = v12;
  v14 = WebCore::TransformationMatrix::projectPoint(a1, a2 + 4, &v20 + 1).u32[0];
  v16 = v15;
  v17 = WebCore::TransformationMatrix::projectPoint(a1, a2 + 6, &v20).u32[0];
  if (a3)
  {
    if ((v21 & 0x100) == 0)
    {
      if ((v21 & 1) != 0 || (v20 & 0x100) != 0)
      {
        v19 = 1;
      }

      else
      {
        v19 = v20;
      }

      *a3 = v19 & 1;
      goto LABEL_14;
    }

    *a3 = 1;
  }

  else if ((v21 & 0x100) == 0)
  {
    goto LABEL_14;
  }

  if (v21 == 1 && HIBYTE(v20) == 1 && v20 == 1)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

LABEL_14:
  *a4 = v8;
  *(a4 + 4) = v10;
  *(a4 + 8) = v11;
  *(a4 + 12) = v13;
  *(a4 + 16) = v14;
  *(a4 + 20) = v16;
  *(a4 + 24) = v17;
  *(a4 + 28) = v18;
}

float WebCore::TransformationMatrix::mapPoint(double *a1, float *a2)
{
  if (!WebCore::TransformationMatrix::isIdentityOrTranslation(a1))
  {
    return WebCore::TransformationMatrix::internalMapPoint(a1, a2);
  }

  v4 = a1[12];
  result = *a2 + v4;
  v6 = a1[13];
  v7 = a2[1] + v6;
  return result;
}

{
  if (!WebCore::TransformationMatrix::isIdentityOrTranslation(a1))
  {
    return WebCore::TransformationMatrix::internalMapPoint(a1, a2);
  }

  v4 = a1[12];
  result = *a2 + v4;
  v6 = a1[13];
  v7 = a2[1] + v6;
  v8 = a1[14];
  v9 = a2[2] + v8;
  return result;
}

float WebCore::TransformationMatrix::internalMapPoint(WebCore::TransformationMatrix *a1, float *a2)
{
  v3 = 0;
  v4 = 0.0;
  WebCore::TransformationMatrix::multVecMatrix(a1, *a2, a2[1], &v4, &v3);
  return v4;
}

{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  WebCore::TransformationMatrix::multVecMatrix(a1, *a2, a2[1], a2[2], &v5, &v4, &v3);
  return v5;
}

void WebCore::TransformationMatrix::mapQuad(WebCore::TransformationMatrix *this@<X0>, const WebCore::FloatQuad *a2@<X1>, uint64_t a3@<X8>)
{
  if (WebCore::TransformationMatrix::isIdentityOrTranslation(this))
  {
    v6 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v6;
    v7 = *(this + 12);
    *&v7 = v7;
    v8 = *(this + 13);

    WebCore::FloatQuad::move(a3, v7, v8);
  }

  else
  {
    *a3 = WebCore::TransformationMatrix::internalMapPoint(this, a2);
    *(a3 + 4) = v9;
    *(a3 + 8) = WebCore::TransformationMatrix::internalMapPoint(this, a2 + 2);
    *(a3 + 12) = v10;
    *(a3 + 16) = WebCore::TransformationMatrix::internalMapPoint(this, a2 + 4);
    *(a3 + 20) = v11;
    *(a3 + 24) = WebCore::TransformationMatrix::internalMapPoint(this, a2 + 6);
    *(a3 + 28) = v12;
  }
}

float32x4_t WebCore::FloatQuad::move(float32x4_t *this, double a2, float a3)
{
  *(&a2 + 1) = a3;
  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = vaddq_f32(*this, v3);
  result = vaddq_f32(this[1], v3);
  *this = v4;
  this[1] = result;
  return result;
}

float64x2_t WebCore::TransformationMatrix::scale3d(float64x2_t *this, double a2, double a3, double a4)
{
  WebCore::TransformationMatrix::scaleNonUniform(this, a2, a3);
  result = vmulq_n_f64(v4[4], a4);
  v6 = vmulq_n_f64(v4[5], a4);
  v4[4] = result;
  v4[5] = v6;
  return result;
}

WebCore::TransformationMatrix *WebCore::TransformationMatrix::rotate3d(float64x2_t *this, double a2, double a3, double a4, double a5)
{
  v7 = sqrt(a3 * a3 + a2 * a2 + a4 * a4);
  if (v7 != 0.0)
  {
    v8 = a4;
    v9 = a3;
    if (v7 != 1.0)
    {
      a2 = a2 / v7;
      v9 = a3 / v7;
      v8 = a4 / v7;
    }

    v11 = __sincos_stret(a5 / 360.0 * 6.28318531);
    cosval = v11.__cosval;
    v24 = 0u;
    v23 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (v8 == 0.0 && v9 == 0.0 && a2 == 1.0)
    {
      v22 = 1.0;
      v23 = 0uLL;
      v25 = v11.__cosval;
      *&v26 = v11.__sinval;
      *(&v27 + 1) = -v11.__sinval;
    }

    else if (v8 == 0.0 && v9 == 1.0 && a2 == 0.0)
    {
      v22 = v11.__cosval;
      *(&v23 + 1) = -v11.__sinval;
      v25 = 1.0;
      *&v27 = v11.__sinval;
    }

    else if (v8 == 1.0 && v9 == 0.0 && a2 == 0.0)
    {
      v22 = v11.__cosval;
      *&v23 = v11.__sinval;
      *(&v24 + 1) = -v11.__sinval;
      v25 = v11.__cosval;
      v27 = 0uLL;
      cosval = 1.0;
    }

    else
    {
      v22 = v11.__cosval + a2 * a2 * (1.0 - v11.__cosval);
      *&v23 = v11.__sinval * v8 + v9 * a2 * (1.0 - v11.__cosval);
      *(&v23 + 1) = -(v11.__sinval * v9 - v8 * a2 * (1.0 - v11.__cosval));
      *(&v24 + 1) = -(v11.__sinval * v8 - v9 * a2 * (1.0 - v11.__cosval));
      v25 = v11.__cosval + v9 * v9 * (1.0 - v11.__cosval);
      *&v26 = v11.__sinval * a2 + v8 * v9 * (1.0 - v11.__cosval);
      *&v27 = v11.__sinval * v9 + v8 * a2 * (1.0 - v11.__cosval);
      *(&v27 + 1) = -(v11.__sinval * a2 - v8 * v9 * (1.0 - v11.__cosval));
      cosval = v11.__cosval + v8 * v8 * (1.0 - v11.__cosval);
    }

    v28 = cosval;
    *&v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0x3FF0000000000000;
    v12 = &v22;
    v13 = *this;
    v14 = this[1];
    v15 = this[2];
    v16 = this[3];
    v17 = this[4];
    v18 = this[5];
    v19 = this[6];
    v20 = this[7];
    v34 = vld4q_dup_f64(v12);
    v12 += 4;
    v32 = vld4q_dup_f64(v12);
    v12 += 4;
    *this = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34.val[0], *this), v34.val[1], v15), v34.val[2], v17), v34.val[3], v19);
    this[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v34.val[0], v14), v34.val[1], v16), v34.val[2], v18), v34.val[3], v20);
    v35 = vld4q_dup_f64(v12);
    v12 += 4;
    this[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v32.val[0], v13), v32.val[1], v15), v32.val[2], v17), v32.val[3], v19);
    this[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v32.val[0], v14), v32.val[1], v16), v32.val[2], v18), v32.val[3], v20);
    v33 = vld4q_dup_f64(v12);
    this[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35.val[0], v13), v35.val[1], v15), v35.val[2], v17), v35.val[3], v19);
    this[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v35.val[0], v14), v35.val[1], v16), v35.val[2], v18), v35.val[3], v20);
    this[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33.val[0], v13), v33.val[1], v15), v33.val[2], v17), v33.val[3], v19);
    this[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v33.val[0], v14), v33.val[1], v16), v33.val[2], v18), v33.val[3], v20);
  }

  return this;
}

__n128 WebCore::TransformationMatrix::multiply(float64x2_t *this, const WebCore::TransformationMatrix *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = this[2];
  v5 = this[3];
  v6 = this[4];
  v7 = this[5];
  v8 = this[6];
  v9 = this[7];
  v14 = vld4q_dup_f64(a2);
  v10 = (a2 + 32);
  v12 = vld4q_dup_f64(v10);
  v10 += 4;
  *this = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v14.val[0], *this), v14.val[1], v4), v14.val[2], v6), v14.val[3], v8);
  this[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v14.val[0], v3), v14.val[1], v5), v14.val[2], v7), v14.val[3], v9);
  v15 = vld4q_dup_f64(v10);
  v10 += 4;
  this[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v12.val[0], v2), v12.val[1], v4), v12.val[2], v6), v12.val[3], v8);
  this[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v12.val[0], v3), v12.val[1], v5), v12.val[2], v7), v12.val[3], v9);
  v13 = vld4q_dup_f64(v10);
  this[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v15.val[0], v2), v15.val[1], v4), v15.val[2], v6), v15.val[3], v8);
  this[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v15.val[0], v3), v15.val[1], v5), v15.val[2], v7), v15.val[3], v9);
  this[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v13.val[0], v2), v13.val[1], v4), v13.val[2], v6), v13.val[3], v8);
  this[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v13.val[0], v3), v13.val[1], v5), v13.val[2], v7), v13.val[3], v9);
  return v13.val[0];
}

WebCore::TransformationMatrix *WebCore::TransformationMatrix::rotate3d(float64x2_t *this, double a2, double a3, double a4)
{
  v5 = a2 / 360.0 * 6.28318531;
  v6 = a3 / 360.0 * 6.28318531;
  v7 = __sincos_stret(a4 / 360.0 * 6.28318531);
  v39.f64[0] = v7.__cosval;
  v39.f64[1] = v7.__sinval;
  *&v41[8] = -v7.__sinval;
  *&v41[16] = v7.__cosval;
  memset(&v43[8], 0, 32);
  *v43 = 0x3FF0000000000000;
  *&v43[40] = 0x3FF0000000000000;
  v36 = *v43;
  v37 = *&v43[16];
  v38 = *&v43[32];
  v31 = v39;
  v33 = *&v41[8];
  v8 = __sincos_stret(v6);
  v39 = *&v8.__cosval;
  v40 = -v8.__sinval;
  *&v41[16] = xmmword_23AA10F20;
  *&v42[8] = *&v8.__sinval;
  *v43 = v8.__cosval;
  *v42 = 0;
  *v41 = 0u;
  memset(&v43[8], 0, 32);
  *&v43[40] = 0x3FF0000000000000;
  v9 = &v39;
  v10 = v31;
  v11 = v33;
  v12 = v36;
  v50 = vld4q_dup_f64(v9->f64);
  v9 += 2;
  v44 = vld4q_dup_f64(v9->f64);
  v9 += 2;
  v31 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v50.val[0], v31), v50.val[1], v33), v50.val[2], 0), v50.val[3], v37);
  v32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v50.val[0], 0), v50.val[1], 0), v50.val[2], v36), v50.val[3], v38);
  v51 = vld4q_dup_f64(v9->f64);
  v9 += 2;
  v33 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v44.val[0], v10), v44.val[1], v33), v44.val[2], 0), v44.val[3], v37);
  v34 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v44.val[0], 0), v44.val[1], 0), v44.val[2], v36), v44.val[3], v38);
  v45 = vld4q_dup_f64(v9->f64);
  v35 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v51.val[0], v10), v51.val[1], v11), v51.val[2], 0), v51.val[3], v37);
  v36 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v51.val[0], 0), v51.val[1], 0), v51.val[2], v36), v51.val[3], v38);
  v37 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v45.val[0], v10), v45.val[1], v11), v45.val[2], 0), v45.val[3], v37);
  v38 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v45.val[0], 0), v45.val[1], 0), v45.val[2], v12), v45.val[3], v38);
  v13 = __sincos_stret(v5);
  v40 = 0.0;
  v39 = 0x3FF0000000000000uLL;
  *&v41[16] = v13.__cosval;
  *&v41[24] = v13.__sinval;
  *&v42[16] = -v13.__sinval;
  *v43 = v13.__cosval;
  *v42 = 0u;
  *v41 = 0u;
  memset(&v43[8], 0, 32);
  *&v43[40] = 0x3FF0000000000000;
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v52 = vld4q_dup_f64(v39.f64);
  v20 = &v41[8];
  v46 = vld4q_dup_f64(v20);
  v20 += 4;
  v31 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v52.val[0], v31), v52.val[1], v33), v52.val[2], v35), v52.val[3], v37);
  v32 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v52.val[0], v32), v52.val[1], v34), v52.val[2], v36), v52.val[3], v38);
  v53 = vld4q_dup_f64(v20);
  v20 += 4;
  v33 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v46.val[0], v14), v46.val[1], v33), v46.val[2], v35), v46.val[3], v37);
  v34 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v46.val[0], v15), v46.val[1], v34), v46.val[2], v36), v46.val[3], v38);
  v47 = vld4q_dup_f64(v20);
  v35 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v53.val[0], v14), v53.val[1], v16), v53.val[2], v35), v53.val[3], v37);
  v36 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v53.val[0], v15), v53.val[1], v17), v53.val[2], v36), v53.val[3], v38);
  v37 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v47.val[0], v14), v47.val[1], v16), v47.val[2], v18), v47.val[3], v37);
  v38 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v47.val[0], v15), v47.val[1], v17), v47.val[2], v19), v47.val[3], v38);
  v21 = *this;
  v22 = this[1];
  v23 = this[2];
  v24 = this[3];
  v25 = this[4];
  v26 = this[5];
  v27 = this[6];
  v28 = this[7];
  v54 = vld4q_dup_f64(v31.f64);
  v29 = &v33;
  v48 = vld4q_dup_f64(v29->f64);
  v29 += 2;
  *this = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v54.val[0], *this), v54.val[1], v23), v54.val[2], v25), v54.val[3], v27);
  this[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v54.val[0], v22), v54.val[1], v24), v54.val[2], v26), v54.val[3], v28);
  v55 = vld4q_dup_f64(v29->f64);
  v29 += 2;
  this[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v48.val[0], v21), v48.val[1], v23), v48.val[2], v25), v48.val[3], v27);
  this[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v48.val[0], v22), v48.val[1], v24), v48.val[2], v26), v48.val[3], v28);
  v49 = vld4q_dup_f64(v29->f64);
  this[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v55.val[0], v21), v55.val[1], v23), v55.val[2], v25), v55.val[3], v27);
  this[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v55.val[0], v22), v55.val[1], v24), v55.val[2], v26), v55.val[3], v28);
  this[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v49.val[0], v21), v49.val[1], v23), v49.val[2], v25), v49.val[3], v27);
  this[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v49.val[0], v22), v49.val[1], v24), v49.val[2], v26), v49.val[3], v28);
  return this;
}

float64x2_t WebCore::TransformationMatrix::translate(float64x2_t *this, double a2, double a3)
{
  v3 = vmlaq_n_f64(vmulq_n_f64(this[2], a3), *this, a2);
  v4 = vmlaq_n_f64(vmulq_n_f64(this[3], a3), this[1], a2);
  result = vaddq_f64(this[6], v3);
  v6 = vaddq_f64(this[7], v4);
  this[6] = result;
  this[7] = v6;
  return result;
}

float64x2_t WebCore::TransformationMatrix::translate3d(float64x2_t *this, double a2, double a3, double a4)
{
  v4 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(this[2], a3), *this, a2), this[4], a4);
  v5 = vmlaq_n_f64(vmulq_n_f64(this[3], a3), this[1], a2);
  result = vaddq_f64(this[6], v4);
  v7 = vaddq_f64(this[7], vmlaq_n_f64(v5, this[5], a4));
  this[6] = result;
  this[7] = v7;
  return result;
}

double WebCore::TransformationMatrix::translateRight(WebCore::TransformationMatrix *this, double result, double a3)
{
  if (result != 0.0)
  {
    v3 = *(this + 4);
    *this = *this + *(this + 3) * result;
    v4 = *(this + 8);
    *(this + 4) = v3 + *(this + 7) * result;
    v5 = *(this + 12);
    *(this + 8) = v4 + *(this + 11) * result;
    result = v5 + *(this + 15) * result;
    *(this + 12) = result;
  }

  if (a3 != 0.0)
  {
    *(this + 1) = *(this + 1) + *(this + 3) * a3;
    *(this + 5) = *(this + 5) + *(this + 7) * a3;
    *(this + 9) = *(this + 9) + *(this + 11) * a3;
    result = *(this + 13) + *(this + 15) * a3;
    *(this + 13) = result;
  }

  return result;
}

void WebCore::TransformationMatrix::translateRight3d(WebCore::TransformationMatrix *this, double a2, double a3, double a4)
{
  WebCore::TransformationMatrix::translateRight(this, a2, a3);
  if (a4 != 0.0)
  {
    v5[2] = v5[2] + v5[3] * a4;
    v5[6] = v5[6] + v5[7] * a4;
    v5[10] = v5[10] + v5[11] * a4;
    v5[14] = v5[14] + v5[15] * a4;
  }
}

WebCore::TransformationMatrix *WebCore::TransformationMatrix::skew(float64x2_t *this, double a2, double a3)
{
  v4 = a2 / 360.0 * 6.28318531;
  v15[0] = 0x3FF0000000000000;
  v15[2] = 0;
  v15[3] = 0;
  v15[5] = 0x3FF0000000000000;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0x3FF0000000000000;
  v15[1] = tan(a3 / 360.0 * 6.28318531);
  v15[4] = tan(v4);
  v5 = v15;
  v6 = *this;
  v7 = this[1];
  v8 = this[2];
  v9 = this[3];
  v10 = this[4];
  v11 = this[5];
  v12 = this[6];
  v13 = this[7];
  v24 = vld4q_dup_f64(v5);
  v5 += 4;
  v22 = vld4q_dup_f64(v5);
  v5 += 4;
  *this = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v24.val[0], *this), v24.val[1], v8), v24.val[2], v10), v24.val[3], v12);
  this[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v24.val[0], v7), v24.val[1], v9), v24.val[2], v11), v24.val[3], v13);
  v25 = vld4q_dup_f64(v5);
  v5 += 4;
  this[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v22.val[0], v6), v22.val[1], v8), v22.val[2], v10), v22.val[3], v12);
  this[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v22.val[0], v7), v22.val[1], v9), v22.val[2], v11), v22.val[3], v13);
  v23 = vld4q_dup_f64(v5);
  this[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v25.val[0], v6), v25.val[1], v8), v25.val[2], v10), v25.val[3], v12);
  this[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v25.val[0], v7), v25.val[1], v9), v25.val[2], v11), v25.val[3], v13);
  this[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v23.val[0], v6), v23.val[1], v8), v23.val[2], v10), v23.val[3], v12);
  this[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v23.val[0], v7), v23.val[1], v9), v23.val[2], v11), v23.val[3], v13);
  return this;
}

__n128 WebCore::TransformationMatrix::applyPerspective(float64x2_t *this, double a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0x3FF0000000000000;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0x3FF0000000000000;
  if (a2 != 0.0)
  {
    *&v19 = -1.0 / a2;
  }

  v2 = &v12;
  v3 = *this;
  v4 = this[1];
  v5 = this[2];
  v6 = this[3];
  v7 = this[4];
  v8 = this[5];
  v9 = this[6];
  v10 = this[7];
  v24 = vld4q_dup_f64(v2);
  v2 += 4;
  v22 = vld4q_dup_f64(v2);
  v2 += 4;
  *this = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v24.val[0], *this), v24.val[1], v5), v24.val[2], v7), v24.val[3], v9);
  this[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v24.val[0], v4), v24.val[1], v6), v24.val[2], v8), v24.val[3], v10);
  v25 = vld4q_dup_f64(v2);
  v2 += 4;
  this[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v22.val[0], v3), v22.val[1], v5), v22.val[2], v7), v22.val[3], v9);
  this[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v22.val[0], v4), v22.val[1], v6), v22.val[2], v8), v22.val[3], v10);
  v23 = vld4q_dup_f64(v2);
  this[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v25.val[0], v3), v25.val[1], v5), v25.val[2], v7), v25.val[3], v9);
  this[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v25.val[0], v4), v25.val[1], v6), v25.val[2], v8), v25.val[3], v10);
  this[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v23.val[0], v3), v23.val[1], v5), v23.val[2], v7), v23.val[3], v9);
  this[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v23.val[0], v4), v23.val[1], v6), v23.val[2], v8), v23.val[3], v10);
  return v23.val[0];
}

double WebCore::TransformationMatrix::multVecMatrix(WebCore::TransformationMatrix *this, double a2, double a3, double *a4, double *a5)
{
  *a4 = *(this + 12) + a2 * *this + a3 * *(this + 4);
  *a5 = *(this + 13) + a2 * *(this + 1) + a3 * *(this + 5);
  result = *(this + 15) + a2 * *(this + 3) + a3 * *(this + 7);
  if (result != 1.0 && result != 0.0)
  {
    *a4 = *a4 / result;
    result = *a5 / result;
    *a5 = result;
  }

  return result;
}

double WebCore::TransformationMatrix::multVecMatrix(WebCore::TransformationMatrix *this, double a2, double a3, double a4, double *a5, double *a6, double *a7)
{
  *a5 = *(this + 12) + a2 * *this + a3 * *(this + 4) + a4 * *(this + 8);
  *a6 = *(this + 13) + a2 * *(this + 1) + a3 * *(this + 5) + a4 * *(this + 9);
  *a7 = *(this + 14) + a2 * *(this + 2) + a3 * *(this + 6) + a4 * *(this + 10);
  result = *(this + 15) + a2 * *(this + 3) + a3 * *(this + 7) + a4 * *(this + 11);
  if (result != 1.0 && result != 0.0)
  {
    *a5 = *a5 / result;
    *a6 = *a6 / result;
    result = *a7 / result;
    *a7 = result;
  }

  return result;
}

double WebCore::determinant4x4(WebCore *this, const double (*a2)[4][4])
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = *(this + 9);
  v8 = *(this + 10);
  v9 = *(this + 11);
  v10 = *(this + 12);
  v11 = *(this + 13);
  v12 = *(this + 14);
  v13 = *(this + 15);
  v14 = v8 * v13 - v12 * v9;
  return *this * (v3 * v14 - (v7 * v13 - v11 * v9) * v4 + v5 * (v7 * v12 - v11 * v8)) - *(this + 1) * (v2 * v14 - (v6 * v13 - v10 * v9) * v4 + v5 * (v6 * v12 - v10 * v8)) + *(this + 2) * (v2 * (v7 * v13 - v11 * v9) - (v6 * v13 - v10 * v9) * v3 + v5 * (v6 * v11 - v10 * v7)) - *(this + 3) * (v2 * (v7 * v12 - v11 * v8) - (v6 * v12 - v10 * v8) * v3 + v4 * (v6 * v11 - v10 * v7));
}

BOOL WebCore::TransformationMatrix::inverse(float64x2_t *this, WebCore::TransformationMatrix *a2)
{
  if (WebCore::TransformationMatrix::isIdentityOrTranslation(this))
  {
    v5 = this[6];
    if (v5.f64[0] == 0.0 && v5.f64[1] == 0.0 && this[7].f64[0] == 0.0)
    {
      *a2 = 0x3FF0000000000000;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 5) = 0x3FF0000000000000;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 10) = 0x3FF0000000000000;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      result = 1;
      *(a2 + 15) = 0x3FF0000000000000;
    }

    else
    {
      v11 = -this[7].f64[0];
      *a2 = 0x3FF0000000000000;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 5) = 0x3FF0000000000000;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 5) = xmmword_23AA10F20;
      *(a2 + 6) = vnegq_f64(v5);
      *(a2 + 14) = v11;
      *(a2 + 15) = 0x3FF0000000000000;
      return 1;
    }
  }

  else
  {
    v12[0][0] = 1.0;
    *&v12[0][1] = 0u;
    *&v12[0][3] = 0u;
    v12[1][1] = 1.0;
    *&v12[1][2] = 0u;
    *&v12[2][0] = 0u;
    v12[2][2] = 1.0;
    *&v12[2][3] = 0u;
    *&v12[3][1] = 0u;
    v12[3][3] = 1.0;
    result = WebCore::inverse(this, v12, v4);
    if (result)
    {
      v7 = *&v12[2][2];
      *(a2 + 4) = *&v12[2][0];
      *(a2 + 5) = v7;
      v8 = *&v12[3][2];
      *(a2 + 6) = *&v12[3][0];
      *(a2 + 7) = v8;
      v9 = *&v12[0][2];
      *a2 = *&v12[0][0];
      *(a2 + 1) = v9;
      v10 = *&v12[1][2];
      *(a2 + 2) = *&v12[1][0];
      *(a2 + 3) = v10;
    }
  }

  return result;
}

BOOL WebCore::inverse(WebCore *this, const double (*a2)[4][4], double (*a3)[4][4])
{
  v3 = a2;
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = *(this + 6);
  v11 = *(this + 7);
  v12 = *(this + 8);
  v13 = *(this + 9);
  v14 = *(this + 10);
  v15 = *(this + 11);
  v16 = *(this + 14);
  v17 = *(this + 15);
  v18 = v14 * v17 - v16 * v15;
  v19 = *(this + 12);
  v20 = *(this + 13);
  v21 = v13 * v17 - v20 * v15;
  v22 = v13 * v16 - v20 * v14;
  v23 = v12 * v17 - v19 * v15;
  v24 = v12 * v16 - v19 * v14;
  (*a2)[0][0] = v9 * v18 - v21 * v10 + v11 * v22;
  (*a2)[0][1] = -(v5 * v18 - v21 * v6 + v7 * v22);
  v25 = v12 * v20 - v19 * v13;
  (*a2)[1][0] = -(v8 * v18 - v23 * v10 + v11 * v24);
  (*a2)[1][1] = v4 * v18 - v23 * v6 + v7 * v24;
  (*a2)[2][0] = v8 * v21 - v23 * v9 + v11 * v25;
  (*a2)[2][1] = -(v4 * v21 - v23 * v5 + v7 * v25);
  (*a2)[3][0] = -(v8 * v22 - v24 * v9 + v10 * v25);
  (*a2)[3][1] = v4 * v22 - v24 * v5 + v6 * v25;
  v26 = v10 * v17 - v16 * v11;
  v27 = v9 * v17 - v20 * v11;
  v28 = v9 * v16 - v20 * v10;
  v29 = v5 * v26 - v27 * v6 + v7 * v28;
  v30 = v8 * v17 - v19 * v11;
  v31 = v8 * v16 - v19 * v10;
  v32 = -(v4 * v26 - v30 * v6 + v7 * v31);
  v33 = v8 * v20 - v19 * v9;
  v34 = v4 * v27 - v30 * v5 + v7 * v33;
  v35 = -(v4 * v28 - v31 * v5 + v6 * v33);
  v36 = v10 * v15 - v14 * v11;
  v37 = v9 * v15 - v13 * v11;
  v38 = v9 * v14 - v13 * v10;
  (*a2)[0][2] = v29;
  (*a2)[0][3] = -(v5 * v36 - v37 * v6 + v7 * v38);
  v39 = v8 * v15 - v12 * v11;
  v40 = v8 * v14 - v12 * v10;
  (*a2)[1][2] = v32;
  (*a2)[1][3] = v4 * v36 - v39 * v6 + v7 * v40;
  v41 = v8 * v13 - v12 * v9;
  (*a2)[2][2] = v34;
  (*a2)[2][3] = -(v4 * v37 - v39 * v5 + v7 * v41);
  (*a2)[3][2] = v35;
  (*a2)[3][3] = v4 * v38 - v40 * v5 + v6 * v41;
  *&v42 = WebCore::determinant4x4(this, a2);
  v43 = fabs(*&v42);
  if (v43 >= 0.00000001)
  {
    v44 = 0;
    v45 = vdupq_lane_s64(v42, 0);
    do
    {
      for (i = 0; i != 4; i += 2)
      {
        *&(*v3)[0][i] = vdivq_f64(*&(*v3)[0][i], v45);
      }

      ++v44;
      v3 = (v3 + 32);
    }

    while (v44 != 4);
  }

  return v43 >= 0.00000001;
}

double WebCore::TransformationMatrix::makeAffine(WebCore::TransformationMatrix *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_23AA10F20;
  result = 0.0;
  *(this + 7) = xmmword_23AA10F30;
  return result;
}

void WebCore::TransformationMatrix::blend2(WebCore::TransformationMatrix *this, const WebCore::TransformationMatrix *a2, double a3)
{
  WebCore::TransformationMatrix::decompose2(a2, &v18);
  WebCore::TransformationMatrix::decompose2(this, &v9);
  v6 = v18;
  v5 = v19;
  if ((v18 >= 0.0 || v10 >= 0.0) && (v19 >= 0.0 || v9 >= 0.0))
  {
    v7 = v22;
  }

  else
  {
    v6 = -v18;
    v5 = -v19;
    v18 = -v18;
    v19 = -v19;
    v7 = v22 + dbl_23AA10F40[v22 < 0.0];
    v22 = v7;
  }

  if (v7 == 0.0)
  {
    v22 = 360.0;
    v7 = 360.0;
  }

  v8 = v13;
  if (v13 == 0.0)
  {
    v8 = 360.0;
  }

  if (vabdd_f64(v7, v8) > 180.0)
  {
    if (v7 <= v8)
    {
      v8 = v8 + -360.0;
    }

    else
    {
      v7 = v7 + -360.0;
      v22 = v7;
    }
  }

  if (v23 != v14)
  {
    v23 = v23 + (v14 - v23) * a3;
  }

  if (v24 != v15)
  {
    v24 = v24 + (v15 - v24) * a3;
  }

  if (v25 != v16)
  {
    v25 = v25 + (v16 - v25) * a3;
  }

  if (v26 != v17)
  {
    v26 = v26 + (v17 - v26) * a3;
  }

  if (v20 != v11)
  {
    v20 = v20 + (v11 - v20) * a3;
  }

  if (v21 != v12)
  {
    v21 = v21 + (v12 - v21) * a3;
  }

  if (v6 != v9)
  {
    v18 = v6 + (v9 - v6) * a3;
  }

  if (v5 != v10)
  {
    v19 = v5 + (v10 - v5) * a3;
  }

  if (v7 != v8)
  {
    v22 = v7 + (v8 - v7) * a3;
  }

  WebCore::TransformationMatrix::recompose2(this, &v18);
}

uint64_t WebCore::TransformationMatrix::decompose2(uint64_t a1, uint64_t a2)
{
  if (WebCore::TransformationMatrix::isIdentity(a1))
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    __asm { FMOV            V1.2D, #1.0 }

    *a2 = _Q1;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 0x3FF0000000000000;
    *(a2 + 64) = 0x3FF0000000000000;
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *(a2 + 16) = *(a1 + 96);
    *(a2 + 24) = *(a1 + 104);
    v13 = sqrt(v10 * v10 + v9 * v9);
    v14 = sqrt(v12 * v12 + v11 * v11);
    *a2 = v13;
    *(a2 + 8) = v14;
    if (v9 * v12 - v10 * v11 < 0.0)
    {
      if (v9 >= v12)
      {
        v14 = -v14;
        *(a2 + 8) = v14;
      }

      else
      {
        v13 = -v13;
        *a2 = v13;
      }
    }

    if (v13 != 0.0)
    {
      v15 = 1.0 / v13;
      v9 = v9 * v15;
      v10 = v10 * v15;
    }

    if (v14 != 0.0)
    {
      v16 = 1.0 / v14;
      v11 = v11 * v16;
      v12 = v12 * v16;
    }

    v17 = atan2(v10, v9);
    v18 = v9 * v9 - v10 * v11;
    v19 = v9 * v10 - v10 * v12;
    v20 = v9 * v11 + v10 * v9;
    v21 = v9 * v12 + v10 * v10;
    if (v17 == 0.0)
    {
      v21 = v12;
      v20 = v11;
      v19 = v10;
      v18 = v9;
    }

    *(a2 + 48) = v19;
    *(a2 + 56) = v20;
    *(a2 + 64) = v21;
    *(a2 + 32) = v17 / 6.28318531 * 360.0;
    *(a2 + 40) = v18;
  }

  return 1;
}

double WebCore::TransformationMatrix::recompose2(uint64_t a1, uint64_t a2)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 64);
  WebCore::TransformationMatrix::translate3d(a1, *(a2 + 16), *(a2 + 24), 0.0);
  v4 = WebCore::TransformationMatrix::rotate3d(v3, 0.0, 0.0, *(a2 + 32));
  v5 = *a2;
  v6 = *(a2 + 8);

  *&result = *&WebCore::TransformationMatrix::scaleNonUniform(v4, v5, v6);
  return result;
}

void WebCore::TransformationMatrix::blend4(WebCore::TransformationMatrix *this, const WebCore::TransformationMatrix *a2, long double a3)
{
  if (WebCore::TransformationMatrix::decompose4(a2, &v45) && WebCore::TransformationMatrix::decompose4(this, &v28))
  {
    if (v45 != v28)
    {
      v45 = v45 + (v28 - v45) * a3;
    }

    if (v46 != v29)
    {
      v46 = v46 + (v29 - v46) * a3;
    }

    if (v47 != v30)
    {
      v47 = v47 + (v30 - v47) * a3;
    }

    if (v48 != v31)
    {
      v48 = v48 + (v31 - v48) * a3;
    }

    if (v49 != v32)
    {
      v49 = v49 + (v32 - v49) * a3;
    }

    if (v50 != v33)
    {
      v50 = v50 + (v33 - v50) * a3;
    }

    if (v55 != v38)
    {
      v55 = v55 + (v38 - v55) * a3;
    }

    if (v56 != v39)
    {
      v56 = v56 + (v39 - v56) * a3;
    }

    if (v57 != v40)
    {
      v57 = v57 + (v40 - v57) * a3;
    }

    if (v58 != v41)
    {
      v58 = v58 + (v41 - v58) * a3;
    }

    if (v59 != v42)
    {
      v59 = v59 + (v42 - v59) * a3;
    }

    if (v60 != v43)
    {
      v60 = v60 + (v43 - v60) * a3;
    }

    if (v61 != v44)
    {
      v61 = v61 + (v44 - v61) * a3;
    }

    v7 = v51;
    v6 = v52;
    v9 = v53;
    v8 = v54;
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
    v14 = v52 * v35 + v51 * v34 + v53 * v36 + v54 * v37;
    if (v14 < 0.0)
    {
      v7 = -v51;
      v6 = -v52;
      v9 = -v53;
      v8 = -v54;
      v14 = -v14;
    }

    if (v14 + 1.0 <= 0.05)
    {
      v15 = sin((0.5 - a3) * 3.14159265);
      v22 = sin(a3 * 3.14159265);
      v10 = -v6;
      v12 = -v8;
      a3 = v22;
      v11 = v7;
      v13 = v9;
    }

    else if (1.0 - v14 >= 0.05)
    {
      v25 = v36;
      v27 = v34;
      v24 = acos(v14);
      v26 = 1.0 / sin(v24);
      v15 = sin((1.0 - a3) * v24) * v26;
      v23 = sin(v24 * a3);
      v10 = v27;
      v12 = v25;
      a3 = v23 * v26;
    }

    else
    {
      v15 = 1.0 - a3;
    }

    v51 = v10 * a3 + v7 * v15;
    v52 = v11 * a3 + v6 * v15;
    v53 = v12 * a3 + v9 * v15;
    v54 = v13 * a3 + v8 * v15;
    WebCore::TransformationMatrix::recompose4(this, &v45);
  }

  else if (a2 != this && a3 < 0.5)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    v18 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v18;
    *this = v16;
    *(this + 1) = v17;
    v19 = *(a2 + 4);
    v20 = *(a2 + 5);
    v21 = *(a2 + 7);
    *(this + 6) = *(a2 + 6);
    *(this + 7) = v21;
    *(this + 4) = v19;
    *(this + 5) = v20;
  }
}

BOOL WebCore::TransformationMatrix::decompose4(WebCore::TransformationMatrix *a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  if (WebCore::TransformationMatrix::isIdentity(a1))
  {
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0x3FF0000000000000;
    __asm { FMOV            V0.2D, #1.0 }

    *a2 = _Q0;
    v10 = 1;
    *(a2 + 16) = 0x3FF0000000000000;
    goto LABEL_44;
  }

  v11 = *(a1 + 5);
  v90 = *(a1 + 4);
  v91 = v11;
  v12 = *(a1 + 7);
  v92 = *(a1 + 6);
  v93 = v12;
  v13 = *(a1 + 1);
  v86 = *a1;
  v87 = v13;
  v14 = *(a1 + 3);
  v88 = *(a1 + 2);
  v89 = v14;
  if (*(&v12 + 1) == 0.0)
  {
    v10 = 0;
    goto LABEL_44;
  }

  v15 = 0;
  v16 = &v86;
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      *(v16 + i) = *(v16 + i) / *(&v93 + 1);
    }

    ++v15;
    v16 += 2;
  }

  while (v15 != 4);
  v83[4] = v90;
  v83[5] = v91;
  v83[6] = v92;
  v84 = v93;
  v83[0] = v86;
  v83[1] = v87;
  v83[2] = v88;
  v83[3] = v89;
  v85 = 0x3FF0000000000000;
  v19 = WebCore::determinant4x4(v83, v4);
  v10 = v19 != 0.0;
  if (v19 != 0.0)
  {
    if (*(&v87 + 1) == 0.0 && *(&v89 + 1) == 0.0 && *(&v91 + 1) == 0.0)
    {
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 128) = 0x3FF0000000000000;
    }

    else
    {
      v72 = *(&v87 + 1);
      v73 = *(&v91 + 1);
      v70 = *(&v93 + 1);
      memset(v82, 0, sizeof(v82));
      v20 = v82[1];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v71 = *(&v89 + 1);
      WebCore::inverse(v83, v82, v18);
      v21 = 0;
      v22 = &v74;
      do
      {
        v23 = 0;
        v24 = v20;
        do
        {
          v25.f64[0] = *(v24 - 4);
          v25.f64[1] = *v24;
          v22[v23] = v25;
          v24 += 8;
          ++v23;
        }

        while (v23 != 2);
        ++v21;
        ++v20;
        v22 += 2;
      }

      while (v21 != 4);
      v26 = v79;
      v27 = vmlaq_n_f64(vmulq_n_f64(v77, v71), v75, v72);
      v28 = v81;
      *(a2 + 104) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v76, v71), v74, v72), v78, v73), v80, v70);
      *(a2 + 120) = vmlaq_n_f64(vmlaq_n_f64(v27, v26, v73), v28, v70);
    }

    v29 = 0;
    *(a2 + 80) = v92;
    v92 = 0uLL;
    *(a2 + 96) = v93;
    *&v93 = 0;
    v30 = &v87;
    do
    {
      v31 = v82 + v29;
      *v31 = *(v30 - 1);
      v32 = *v30;
      v30 += 2;
      *(v31 + 2) = v32;
      v29 += 24;
    }

    while (v29 != 72);
    v34 = v82[0][1];
    v33 = v82[0][0];
    v35 = v82[0][2];
    v36 = sqrt(v82[0][1] * v82[0][1] + v82[0][0] * v82[0][0] + v35 * v35);
    *a2 = v36;
    if (v36 != 0.0)
    {
      v33 = v33 * (1.0 / v36);
      v34 = v34 * (1.0 / v36);
      v82[0][0] = v33;
      v82[0][1] = v34;
      v35 = v35 * (1.0 / v36);
      v82[0][2] = v35;
    }

    v37 = v34 * v82[1][0] + v33 * v82[0][3] + v35 * v82[1][1];
    v38 = v82[0][3] - v33 * v37;
    v39 = v82[1][0] - v34 * v37;
    v82[0][3] = v38;
    v82[1][0] = v39;
    v40 = v82[1][1] - v35 * v37;
    v82[1][1] = v40;
    v41 = sqrt(v39 * v39 + v38 * v38 + v40 * v40);
    *(a2 + 8) = v41;
    if (v41 != 0.0)
    {
      v38 = v38 * (1.0 / v41);
      v39 = v39 * (1.0 / v41);
      v82[0][3] = v38;
      v82[1][0] = v39;
      v40 = v40 * (1.0 / v41);
      v82[1][1] = v40;
    }

    v42 = v37 / v41;
    v43 = v34 * v82[1][3] + v33 * v82[1][2] + v35 * v82[2][0];
    v44 = v82[1][2] - v33 * v43;
    v45 = v82[1][3] - v34 * v43;
    v46 = v82[2][0] - v35 * v43;
    v47 = v39 * v45 + v38 * v44 + v40 * v46;
    v48 = v44 - v38 * v47;
    v49 = v45 - v39 * v47;
    v82[1][2] = v48;
    v82[1][3] = v49;
    v50 = v46 - v40 * v47;
    v82[2][0] = v50;
    v51 = sqrt(v49 * v49 + v48 * v48 + v50 * v50);
    *(a2 + 16) = v51;
    *(a2 + 24) = v42;
    if (v51 != 0.0)
    {
      v48 = v48 * (1.0 / v51);
      v49 = v49 * (1.0 / v51);
      v82[1][2] = v48;
      v82[1][3] = v49;
      v50 = v50 * (1.0 / v51);
      v82[2][0] = v50;
    }

    *(a2 + 32) = v43 / v51;
    *(a2 + 40) = v47 / v51;
    if (v34 * (v40 * v48 - v38 * v50) + v33 * (v39 * v50 - v40 * v49) + v35 * (v38 * v49 - v39 * v48) < 0.0)
    {
      v52 = 0;
      *a2 = -v36;
      *(a2 + 8) = -v41;
      *(a2 + 16) = -v51;
      do
      {
        v53 = (v82 + v52 * 8);
        *v53 = vnegq_f64(*&v82[0][v52]);
        v53[1].f64[0] = -v82[0][v52 + 2];
        v52 += 3;
      }

      while (v52 != 9);
      v33 = v82[0][0];
      v39 = v82[1][0];
      v50 = v82[2][0];
    }

    v54 = v50 + v39 + v33 + 1.0;
    if (v54 > 0.0001)
    {
      v55 = 0.5 / sqrt(v54);
      v56 = 0.25 / v55;
      v57 = v55 * (v82[1][3] - v82[1][1]);
      v58 = v55 * (v82[0][2] - v82[1][2]);
      v59 = v55 * (v82[0][3] - v82[0][1]);
LABEL_43:
      *(a2 + 48) = v57;
      *(a2 + 56) = v58;
      *(a2 + 64) = v59;
      *(a2 + 72) = v56;
      goto LABEL_44;
    }

    if (v33 <= v39 || v33 <= v50)
    {
      if (v39 > v50)
      {
        v61 = sqrt(v39 + 1.0 - v33 - v50);
        v64 = v61 + v61;
        v57 = (v82[0][1] + v82[0][3]) / (v61 + v61);
        v58 = v64 * 0.25;
        v59 = (v82[1][1] + v82[1][3]) / v64;
        v62 = v82[0][2] - v82[1][2];
LABEL_42:
        v56 = v62 / v64;
        goto LABEL_43;
      }

      v67 = sqrt(v50 + 1.0 - v33 - v39);
      v64 = v67 + v67;
      v65 = v82[0][1];
      v57 = (v82[0][2] + v82[1][2]) / (v67 + v67);
      v66 = v82[0][3];
      v58 = (v82[1][1] + v82[1][3]) / v64;
      v59 = v64 * 0.25;
    }

    else
    {
      v63 = sqrt(v33 + 1.0 - v39 - v50);
      v64 = v63 + v63;
      v65 = v82[1][1];
      v66 = v82[1][3];
      v57 = (v63 + v63) * 0.25;
      v58 = (v82[0][1] + v82[0][3]) / v64;
      v59 = (v82[0][2] + v82[1][2]) / v64;
    }

    v62 = v66 - v65;
    goto LABEL_42;
  }

LABEL_44:
  v68 = *MEMORY[0x277D85DE8];
  return v10;
}

float64x2_t WebCore::TransformationMatrix::recompose4(uint64_t a1, uint64_t a2)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 24) = *(a2 + 104);
  *(a1 + 56) = *(a2 + 112);
  *(a1 + 88) = *(a2 + 120);
  *(a1 + 120) = *(a2 + 128);
  WebCore::TransformationMatrix::translate3d(a1, *(a2 + 80), *(a2 + 88), *(a2 + 96));
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = v4 * v4;
  v7 = v4 * v5;
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = v4 * v8;
  v11 = v4 * v9;
  v12 = v5 * v5;
  v13 = v5 * v8;
  v14 = v5 * v9;
  v15 = v8 * v8;
  v16 = v8 * v9;
  v70[0] = (v12 + v15) * -2.0 + 1.0;
  v70[1] = v7 - v16 + v7 - v16;
  v70[2] = v10 + v14 + v10 + v14;
  v70[3] = 0.0;
  v70[4] = v7 + v16 + v7 + v16;
  v70[5] = (v6 + v15) * -2.0 + 1.0;
  v70[6] = v13 - v11 + v13 - v11;
  v70[7] = 0.0;
  v70[8] = v10 - v14 + v10 - v14;
  v70[9] = v13 + v11 + v13 + v11;
  v70[10] = (v6 + v12) * -2.0 + 1.0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0x3FF0000000000000;
  v17 = v70;
  v18 = *v3;
  v19 = v3[1];
  v20 = v3[2];
  v21 = v3[3];
  v22 = v3[4];
  v23 = v3[5];
  v24 = v3[6];
  v25 = v3[7];
  v82 = vld4q_dup_f64(v17);
  v17 += 4;
  v74 = vld4q_dup_f64(v17);
  v17 += 4;
  *v3 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v82.val[0], *v3), v82.val[1], v20), v82.val[2], v22), v82.val[3], v24);
  v3[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v82.val[0], v19), v82.val[1], v21), v82.val[2], v23), v82.val[3], v25);
  v83 = vld4q_dup_f64(v17);
  v17 += 4;
  v3[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v74.val[0], v18), v74.val[1], v20), v74.val[2], v22), v74.val[3], v24);
  v3[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v74.val[0], v19), v74.val[1], v21), v74.val[2], v23), v74.val[3], v25);
  v75 = vld4q_dup_f64(v17);
  v3[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v83.val[0], v18), v83.val[1], v20), v83.val[2], v22), v83.val[3], v24);
  v3[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v83.val[0], v19), v83.val[1], v21), v83.val[2], v23), v83.val[3], v25);
  v3[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v75.val[0], v18), v75.val[1], v20), v75.val[2], v22), v75.val[3], v24);
  v3[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v75.val[0], v19), v75.val[1], v21), v75.val[2], v23), v75.val[3], v25);
  v26 = *(a2 + 40);
  if (v26 != 0.0)
  {
    v60 = 0x3FF0000000000000;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0x3FF0000000000000;
    v64 = 0uLL;
    *&v65 = 0;
    v66 = 0x3FF0000000000000;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0x3FF0000000000000;
    v27 = &v60;
    *(&v65 + 1) = v26;
    v28 = *v3;
    v29 = v3[1];
    v30 = v3[2];
    v31 = v3[3];
    v32 = v3[4];
    v33 = v3[5];
    v34 = v3[6];
    v35 = v3[7];
    v84 = vld4q_dup_f64(v27);
    v27 += 4;
    v76 = vld4q_dup_f64(v27);
    v27 += 4;
    *v3 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v84.val[0], *v3), v84.val[1], v30), v84.val[2], v32), v84.val[3], v34);
    v3[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v84.val[0], v29), v84.val[1], v31), v84.val[2], v33), v84.val[3], v35);
    v85 = vld4q_dup_f64(v27);
    v27 += 4;
    v3[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v76.val[0], v28), v76.val[1], v30), v76.val[2], v32), v76.val[3], v34);
    v3[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v76.val[0], v29), v76.val[1], v31), v76.val[2], v33), v76.val[3], v35);
    v77 = vld4q_dup_f64(v27);
    v3[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v85.val[0], v28), v85.val[1], v30), v85.val[2], v32), v85.val[3], v34);
    v3[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v85.val[0], v29), v85.val[1], v31), v85.val[2], v33), v85.val[3], v35);
    v3[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v77.val[0], v28), v77.val[1], v30), v77.val[2], v32), v77.val[3], v34);
    v3[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v77.val[0], v29), v77.val[1], v31), v77.val[2], v33), v77.val[3], v35);
  }

  v36 = *(a2 + 32);
  if (v36 != 0.0)
  {
    v60 = 0x3FF0000000000000;
    v61 = 0u;
    v62 = 0u;
    v63 = 0x3FF0000000000000;
    v64 = 0u;
    v66 = 0x3FF0000000000000;
    v67 = 0u;
    v68 = 0u;
    v69 = 0x3FF0000000000000;
    v37 = &v60;
    v65 = *&v36;
    v38 = *v3;
    v39 = v3[1];
    v40 = v3[2];
    v41 = v3[3];
    v42 = v3[4];
    v43 = v3[5];
    v44 = v3[6];
    v45 = v3[7];
    v86 = vld4q_dup_f64(v37);
    v37 += 4;
    v78 = vld4q_dup_f64(v37);
    v37 += 4;
    *v3 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v86.val[0], *v3), v86.val[1], v40), v86.val[2], v42), v86.val[3], v44);
    v3[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v86.val[0], v39), v86.val[1], v41), v86.val[2], v43), v86.val[3], v45);
    v87 = vld4q_dup_f64(v37);
    v37 += 4;
    v3[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v78.val[0], v38), v78.val[1], v40), v78.val[2], v42), v78.val[3], v44);
    v3[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v78.val[0], v39), v78.val[1], v41), v78.val[2], v43), v78.val[3], v45);
    v79 = vld4q_dup_f64(v37);
    v3[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v87.val[0], v38), v87.val[1], v40), v87.val[2], v42), v87.val[3], v44);
    v3[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v87.val[0], v39), v87.val[1], v41), v87.val[2], v43), v87.val[3], v45);
    v3[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v79.val[0], v38), v79.val[1], v40), v79.val[2], v42), v79.val[3], v44);
    v3[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v79.val[0], v39), v79.val[1], v41), v79.val[2], v43), v79.val[3], v45);
  }

  v46 = *(a2 + 24);
  if (v46 != 0.0)
  {
    v60 = 0x3FF0000000000000;
    v61 = 0uLL;
    *&v62 = 0;
    v63 = 0x3FF0000000000000;
    v64 = 0u;
    v65 = 0u;
    v66 = 0x3FF0000000000000;
    v67 = 0u;
    v68 = 0u;
    v69 = 0x3FF0000000000000;
    v47 = &v60;
    *(&v62 + 1) = v46;
    v48 = *v3;
    v49 = v3[1];
    v50 = v3[2];
    v51 = v3[3];
    v52 = v3[4];
    v53 = v3[5];
    v54 = v3[6];
    v55 = v3[7];
    v88 = vld4q_dup_f64(v47);
    v47 += 4;
    v80 = vld4q_dup_f64(v47);
    v47 += 4;
    *v3 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v88.val[0], *v3), v88.val[1], v50), v88.val[2], v52), v88.val[3], v54);
    v3[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v88.val[0], v49), v88.val[1], v51), v88.val[2], v53), v88.val[3], v55);
    v89 = vld4q_dup_f64(v47);
    v47 += 4;
    v3[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v80.val[0], v48), v80.val[1], v50), v80.val[2], v52), v80.val[3], v54);
    v3[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v80.val[0], v49), v80.val[1], v51), v80.val[2], v53), v80.val[3], v55);
    v81 = vld4q_dup_f64(v47);
    v3[4] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v89.val[0], v48), v89.val[1], v50), v89.val[2], v52), v89.val[3], v54);
    v3[5] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v89.val[0], v49), v89.val[1], v51), v89.val[2], v53), v89.val[3], v55);
    v3[6] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v81.val[0], v48), v81.val[1], v50), v81.val[2], v52), v81.val[3], v54);
    v3[7] = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v81.val[0], v49), v81.val[1], v51), v81.val[2], v53), v81.val[3], v55);
  }

  v59 = *(a2 + 16);
  WebCore::TransformationMatrix::scaleNonUniform(v3, *a2, *(a2 + 8));
  result = vmulq_n_f64(v56[4], *&v59);
  v58 = vmulq_n_f64(v56[5], *&v59);
  v56[4] = result;
  v56[5] = v58;
  return result;
}

void WebCore::TransformationMatrix::blend(WebCore::TransformationMatrix *this, const WebCore::TransformationMatrix *a2, long double a3)
{
  if (!WebCore::TransformationMatrix::isIdentity(a2) || !WebCore::TransformationMatrix::isIdentity(this))
  {
    if (WebCore::TransformationMatrix::isAffine(a2) && WebCore::TransformationMatrix::isAffine(this))
    {

      WebCore::TransformationMatrix::blend2(this, a2, a3);
    }

    else
    {

      WebCore::TransformationMatrix::blend4(this, a2, a3);
    }
  }
}

BOOL WebCore::TransformationMatrix::isIntegerTranslation(WebCore::TransformationMatrix *this)
{
  result = WebCore::TransformationMatrix::isIdentityOrTranslation(this);
  if (result)
  {
    return *(this + 14) == 0.0 && *(this + 12) == *(this + 12) && *(this + 13) == *(this + 13);
  }

  return result;
}

double WebCore::TransformationMatrix::to2dTransform@<D0>(WebCore::TransformationMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 5);
  v3 = *(this + 7);
  v4 = *(this + 15);
  *a2 = *this;
  *(a2 + 16) = 0;
  *(a2 + 24) = *(this + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = 1.0;
  v6 = *(this + 6);
  *(a2 + 80) = xmmword_23AA10F20;
  *(a2 + 96) = v6;
  *(a2 + 112) = 0;
  *(a2 + 120) = v4;
  return result;
}

float64x2_t WebCore::TransformationMatrix::toColumnMajorFloatArray(float64x2_t *this, float (*a2)[16])
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(this[2]), this[3]);
  *&(*a2)[0] = vcvt_hight_f32_f64(vcvt_f32_f64(*this), this[1]);
  *&(*a2)[4] = v2;
  result = this[7];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(this[6]), result);
  *&(*a2)[8] = vcvt_hight_f32_f64(vcvt_f32_f64(this[4]), this[5]);
  *&(*a2)[12] = v4;
  return result;
}

void sub_23A8B954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::polygon::construct_voronoi<std::__wrap_iter<PointInt64 *>,boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16[330] = *MEMORY[0x277D85DE8];
  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  *v6 = 0u;
  v7 = 0u;
  memset(v8, 0, 25);
  v13[0] = v13;
  v13[1] = v13;
  v15 = 0;
  v16[0] = 0;
  *(v16 + 7) = 0;
  v13[2] = 0;
  v14 = &v15;
  v16[329] = 0;
  boost::polygon::insert<std::__wrap_iter<PointInt64 *>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(a1, a2, &v5);
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::construct<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(&v5, a3);
  std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(&v14, v15);
  std::__list_imp<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>::clear(v13);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23A8B96D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::~voronoi_builder(va);
  _Unwind_Resume(a1);
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::~voronoi_diagram(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B65070, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PointInt64>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t boost::polygon::insert<std::__wrap_iter<PointInt64 *>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>>(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v7 += 2;
      v10 = v9;
      v11 = v8;
      result = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_point(a3, &v11, &v10);
    }

    while (v7 != a2);
  }

  return result;
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::construct<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(void *a1, uint64_t *a2)
{
  boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_reserve(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[2] - a1[1]) >> 3));
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_sites_queue(a1);
  boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
  v4 = a1[9];
  v5 = a1[10];
LABEL_2:
  while (1)
  {
    v6 = a1[2];
    v7 = a1[4];
    if (v4 == v5)
    {
      break;
    }

    if (v7 == v6)
    {
      goto LABEL_12;
    }

    v8 = *v7;
    v9 = *(*v4 + 32);
    if (*v7 >= 0)
    {
      *&v10 = 0x8000000000000000 - COERCE__INT64(v8);
    }

    else
    {
      v10 = v8;
    }

    if (v9 >= 0)
    {
      v9 = 0x8000000000000000 - v9;
    }

    v11 = *&v10 >= v9;
    v12 = *&v10 - v9;
    if (v12 == 0 || !v11 || v12 < 0x41)
    {
LABEL_12:
      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_circle_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
      goto LABEL_15;
    }

LABEL_14:
    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_site_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
LABEL_15:
    v4 = a1[9];
    v5 = v4;
    if (v4 != a1[10])
    {
      v5 = a1[10];
      if ((*(*v4 + 40) & 1) == 0)
      {
        while (1)
        {
          boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop((a1 + 9));
          v4 = a1[9];
          v5 = a1[10];
          if (v4 == v5)
          {
            break;
          }

          if (*(*v4 + 40))
          {
            goto LABEL_2;
          }
        }

        v5 = a1[9];
      }
    }
  }

  if (v7 != v6)
  {
    goto LABEL_14;
  }

  v14 = a1[17];
  v13 = a1 + 17;
  std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy((v13 - 1), v14);
  *v13 = 0;
  v13[1] = 0;
  *(v13 - 1) = v13;

  boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_build(a2);
}

void std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__list_imp<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_point(void *a1, int *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a1[2];
  v7 = a1[3];
  if (v6 >= v7)
  {
    v9 = 0x666666666666666;
    v10 = a1[1];
    v11 = v6 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x666666666666666)
    {
      std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 < 0x333333333333333)
    {
      v9 = v13;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::detail::site_event<int>>>((a1 + 1), v9);
    }

    v15 = 40 * v12;
    *v15 = v4;
    *(v15 + 4) = v5;
    *(v15 + 8) = v4;
    *(v15 + 12) = v5;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    v8 = 40 * v12 + 40;
    v16 = (40 * v12 - v11);
    memcpy(v16, v10, v11);
    v17 = a1[1];
    a1[1] = v16;
    a1[2] = v8;
    a1[3] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v4;
    *(v6 + 4) = v5;
    *(v6 + 8) = v4;
    *(v6 + 12) = v5;
    *(v6 + 16) = 0;
    v8 = v6 + 40;
    *(v6 + 32) = 0;
  }

  a1[2] = v8;
  result = a1[347];
  *(v8 - 16) = result;
  a1[347] = result + 1;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::detail::site_event<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_reserve(void *a1, unint64_t a2)
{
  std::vector<boost::polygon::voronoi_cell<double>>::reserve(a1, a2);
  std::vector<boost::polygon::voronoi_vertex<double>>::reserve(a1 + 3, 2 * a2);

  return std::vector<boost::polygon::voronoi_edge<double>>::reserve(a1 + 6, 6 * a2);
}

unsigned int *boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_sites_queue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3));
  v19 = 0;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(v2, v3, &v19, v5, 1);
  result = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to &>(*(a1 + 8), *(a1 + 16));
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (result != v8)
  {
    v9 = *(a1 + 16);
    v8 = result;
    *(a1 + 16) = result;
  }

  if (v8 != v7)
  {
    v10 = 0;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = (v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = xmmword_23AA10F60;
    v16 = vdupq_n_s64(2uLL);
    v17 = (v7 + 56);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v14, v15));
      if (v18.i8[0])
      {
        *(v17 - 5) = v10;
      }

      if (v18.i8[4])
      {
        *v17 = v10 + 1;
      }

      v10 += 2;
      v15 = vaddq_s64(v15, v16);
      v17 += 10;
    }

    while (v13 != v10);
  }

  *(a1 + 32) = v7;
  return result;
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 != v4)
  {
    if ((v4 - v3) == 40)
    {
      v6 = *(v3 + 32) & 0x1FLL;
      v10 = *(v3 + 24);
      v11 = v6;
      std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a2, &v10);
LABEL_11:
      a1[4] += 40;
      return;
    }

    v7 = a1[4];
    if (v7 != v4)
    {
      v8 = 0;
      v9 = *v3;
      do
      {
        if (*v7 != v9)
        {
          break;
        }

        if (v9 != v7[2])
        {
          break;
        }

        v7 += 10;
        a1[4] = v7;
        ++v8;
      }

      while (v7 != v4);
      if (v8 == 1)
      {
        boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, v3, v3, v3 + 40, a1 + 17, a2);
        goto LABEL_11;
      }
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line_collinear_sites<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, a2);
  }
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_site_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v43 = *v4;
  v44 = v6;
  v45 = v5;
  v7 = (v4 + 40);
  v8 = v43.i32[0];
  if (v43.i32[0] == v43.i32[2] && (v9 = v43.i32[1], v43.i32[1] == v43.i32[3]))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v10 != v11)
    {
      do
      {
        if (*v10 != v8 || *(v10 + 4) != v9)
        {
          break;
        }

        v12 = *(v10 + 8);
        LOBYTE(v38[0]) = *(a1 + 64);
        v13 = (v11 - v10) >> 4;
        if (v13 >= 2)
        {
          v14 = *v10;
          v15 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v10, v38, v13);
          if ((v11 - 16) == v15)
          {
            *v15 = v14;
            v15[1] = v12;
          }

          else
          {
            *v15 = *(v11 - 16);
            v15[1] = *(v11 - 8);
            *(v11 - 16) = v14;
            *(v11 - 8) = v12;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v10, (v15 + 2), v38, (v15 - v10 + 16) >> 4);
          }
        }

        *(a1 + 48) -= 16;
        std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__remove_node_pointer((a1 + 128), v12);
        operator delete(v12);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
      }

      while (v10 != v11);
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v16 = *(a1 + 16);
    if (v16 != v7)
    {
      do
      {
        v17 = *v7;
        if (*v7 == v7[2])
        {
          v18 = v7[1];
          v19 = v17 != v43.i32[0] || v18 == v7[3];
          if (v19)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v17 != v43.i32[0])
          {
            goto LABEL_25;
          }

          v18 = v7[1];
        }

        if (v18 != v43.i32[1])
        {
          goto LABEL_25;
        }

        v7 += 10;
      }

      while (v7 != v16);
      v7 = *(a1 + 16);
    }
  }

LABEL_25:
  v20 = *v4;
  v21 = *(v4 + 16);
  v39 = *(v4 + 32);
  v38[0] = v20;
  v38[1] = v21;
  v22 = *v4;
  v23 = *(v4 + 16);
  v42 = *(v4 + 32);
  v41 = v23;
  v40 = v22;
  v24 = *(a1 + 136);
  if (v24)
  {
    v25 = a1 + 136;
    do
    {
      v26 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 152, v24 + 32, v38);
      if (v26)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      if (!v26)
      {
        v25 = v24;
      }

      v24 = *(v24 + v27);
    }

    while (v24);
    v4 = *(a1 + 32);
  }

  else
  {
    v25 = a1 + 136;
  }

  while (v4 != v7)
  {
    v28 = *v4;
    v29 = *(v4 + 16);
    v45 = *(v4 + 32);
    v43 = v28;
    v44 = v29;
    if (v25 == a1 + 136)
    {
      v35 = *v25;
      v36 = v25;
      if (*v25)
      {
        do
        {
          v37 = v35;
          v35 = *(v35 + 8);
        }

        while (v35);
      }

      else
      {
        do
        {
          v37 = *(v36 + 16);
          v19 = *v37 == v36;
          v36 = v37;
        }

        while (v19);
      }

      v25 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v37 + 72), v37 + 72, &v43, v25, a2);
      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, v37 + 32, (v37 + 72), &v43);
    }

    else
    {
      if (v25 == *(a1 + 128))
      {
        v34 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v25 + 32), v25 + 32, &v43, v25, a2);
      }

      else
      {
        v30 = *(v25 + 112);
        if (v30)
        {
          *(v30 + 24) = 0;
          *(v25 + 112) = 0;
        }

        v31 = *v25;
        v32 = v25;
        if (*v25)
        {
          do
          {
            v33 = v31;
            v31 = *(v31 + 8);
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = *(v32 + 16);
            v19 = *v33 == v32;
            v32 = v33;
          }

          while (v19);
        }

        v34 = boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(a1, (v33 + 72), v25 + 32, &v43, v25, a2);
        boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, v33 + 32, (v33 + 72), &v43);
      }

      if (v43.i64[0] != v43.i64[1])
      {
        v43 = vextq_s8(v43, v43, 8uLL);
        v45 ^= 0x20uLL;
      }

      boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, &v43, (v25 + 32), v25 + 72);
      v25 = v34;
    }

    v4 = *(a1 + 32) + 40;
    *(a1 + 32) = v4;
  }
}

void boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::process_circle_event<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, void *a2)
{
  v3 = a1 + 72;
  v4 = **(a1 + 72);
  v5 = *(v4 + 48);
  v6 = *(v5 + 88);
  v25 = *(v5 + 72);
  v26 = v6;
  v27 = *(v5 + 104);
  v7 = *(v5 + 120);
  v8 = *v5;
  if (*v5)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 8);
    }

    while (v8);
  }

  else
  {
    v10 = v5;
    do
    {
      v9 = v10[2];
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (v11);
  }

  v12 = v9[15];
  v13 = *(v9 + 3);
  v23[0] = *(v9 + 2);
  v23[1] = v13;
  v24 = v9[8];
  if (*&v23[0] == *(&v23[0] + 1))
  {
    if (v25.i32[0] == v25.i32[2])
    {
      if (v25.i32[0] != LODWORD(v23[0]))
      {
        goto LABEL_15;
      }

      v14 = v25.i32[3];
      if (v25.i32[1] == v25.i32[3])
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v25.i32[2] != LODWORD(v23[0]))
      {
        goto LABEL_15;
      }

      v14 = v25.i32[3];
    }

    if (v14 == DWORD1(v23[0]))
    {
      v25 = vextq_s8(v25, v25, 8uLL);
      v27 ^= 0x20uLL;
    }
  }

LABEL_15:
  v15 = v26;
  *(v9 + 9) = v25;
  *(v9 + 11) = v15;
  v9[13] = v27;
  v9[15] = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int,double>(a2, v23, &v25, (v4 + 16), v12, v7);
  std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__remove_node_pointer((a1 + 128), v5);
  operator delete(v5);
  boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop(v3);
  if (v9 != *(a1 + 128))
  {
    v16 = v9[14];
    if (v16)
    {
      *(v16 + 24) = 0;
      v9[14] = 0;
    }

    v17 = *v9;
    if (*v9)
    {
      do
      {
        v18 = v17;
        v17 = v17[1];
      }

      while (v17);
    }

    else
    {
      v19 = v9;
      do
      {
        v18 = v19[2];
        v11 = *v18 == v19;
        v19 = v18;
      }

      while (v11);
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, (v18 + 4), v23, &v25);
  }

  v20 = v9[1];
  if (v20)
  {
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20);
  }

  else
  {
    do
    {
      v21 = v9[2];
      v11 = *v21 == v9;
      v9 = v21;
    }

    while (!v11);
  }

  if (v21 != (a1 + 136))
  {
    v22 = v21[14];
    if (v22)
    {
      *(v22 + 24) = 0;
      v21[14] = 0;
    }

    boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(a1, v23, v25.i32, (v21 + 9));
  }
}

void boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = **a1;
  v10 = *(a1 + 24);
  v5 = (v3 - v2) >> 3;
  if (v5 >= 2)
  {
    v6 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(v2, &v10, v5);
    v7 = (v3 - 8);
    if ((v3 - 8) == v6)
    {
      *v6 = v4;
    }

    else
    {
      *v6 = *v7;
      *v7 = v4;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(v2, (v6 + 1), &v10, (v6 + 1) - v2);
    }
  }

  *(a1 + 8) -= 8;
  v9 = *v4;
  v8 = v4[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  --*(a1 + 48);
  operator delete(v4);
}

void boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_build(uint64_t *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 == v2)
  {
    v5 = a1[6];
  }

  else
  {
    v4 = v3 + 3;
    v5 = a1[6];
    do
    {
      v6 = *(v3 + 1);
      v7 = *(*(v3 + 2) + 8);
      if (v6)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8 || !boost::polygon::voronoi_diagram_traits<double>::vertex_equality_predicate_type::operator()((a1 + 9), v6, v7))
      {
        if (v3 != v5)
        {
          v9 = *v3;
          v10 = v3[2];
          v5[1] = v3[1];
          v5[2] = v10;
          *v5 = v9;
          v11 = v5 + 3;
          v12 = v4[2];
          v13 = *v4;
          v5[4] = v4[1];
          v5[5] = v12;
          v5[3] = v13;
          *(v5 + 2) = v5 + 3;
          *(v5 + 8) = v5;
          v14 = *(v5 + 4);
          if (v14)
          {
            *(v14 + 24) = v5;
            *(*(v5 + 9) + 32) = v11;
          }

          if (*(v5 + 10))
          {
            *(*(v5 + 3) + 32) = v5;
            *(*(v5 + 10) + 24) = v11;
          }
        }

        v5 += 6;
      }

      else
      {
        boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::remove_edge(a1, v3);
      }

      v3 += 6;
      v2 = a1[7];
      v4 += 6;
    }

    while (v3 != v2);
    v3 = a1[6];
  }

  if (v5 != v2)
  {
    v2 = v5;
    a1[7] = v5;
  }

  while (v3 != v2)
  {
    v15 = *(v3 + 1);
    *(*v3 + 8) = v3;
    if (v15)
    {
      *(v15 + 16) = v3;
    }

    v3 += 3;
  }

  v17 = a1[3];
  v16 = a1[4];
  v18 = v17;
  if (v17 != v16)
  {
    do
    {
      if (*(v18 + 2))
      {
        if (v18 != v17)
        {
          v19 = v18[1];
          *v17 = *v18;
          v17[1] = v19;
          v20 = *(v17 + 2);
          v21 = v20;
          do
          {
            *(v21 + 8) = v17;
            v21 = *(*(v21 + 32) + 16);
          }

          while (v21 != v20);
          v16 = a1[4];
        }

        v17 += 2;
      }

      v18 += 2;
    }

    while (v18 != v16);
    v18 = a1[3];
  }

  if (v17 != v16)
  {
    v16 = v17;
    a1[4] = v17;
  }

  if (v18 == v16)
  {
    v28 = a1[6];
    v29 = a1[7];
    if (v28 != v29)
    {
      v28[3] = v28;
      v28[4] = v28;
      for (i = v28 + 12; i != v29; i = v31 + 24)
      {
        v31 = v28;
        v32 = v28 + 6;
        v28 += 12;
        v31[9] = v28;
        v31[10] = v28;
        v31[15] = v32;
        v31[16] = v32;
      }

      v28[9] = v28 + 6;
      v28[10] = v28 + 6;
    }
  }

  else
  {
    v22 = *a1;
    v23 = a1[1];
    while (v22 != v23)
    {
      v24 = *(v22 + 8);
      if (v24)
      {
        v25 = *(v22 + 8);
        while (1)
        {
          v26 = v25;
          v25 = *(v25 + 32);
          if (!v25)
          {
            break;
          }

          if (v25 == v24)
          {
            v26 = v25;
            if (*(v25 + 32))
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }
        }

        do
        {
LABEL_43:
          v27 = v24;
          v24 = *(v24 + 24);
        }

        while (v24);
        *(v26 + 32) = v27;
        *(v27 + 24) = v26;
      }

LABEL_45:
      v22 += 24;
    }
  }
}

void *std::vector<boost::polygon::voronoi_cell<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(result, a2);
    }

    std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<boost::polygon::voronoi_vertex<double>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>(result, a2);
    }

    std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<boost::polygon::voronoi_edge<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(result, a2);
    }

    std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 10;
  v115 = (a2 - 5);
  v9 = (a2 - 120);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
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
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v10))
      {
        goto LABEL_76;
      }

      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,boost::polygon::detail::site_event<int>*>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[10 * (v14 >> 1)];
    if (v13 >= 0x1401)
    {
      v17 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v10);
      v18 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v16);
      if (v17)
      {
        if (v18)
        {
          v165 = *(a1 + 32);
          v117 = *a1;
          v141 = *(a1 + 16);
          v19 = *v8;
          v20 = *(a2 - 24);
          *(a1 + 32) = *(a2 - 1);
          *a1 = v19;
          *(a1 + 16) = v20;
          goto LABEL_27;
        }

        v171 = *(a1 + 32);
        v123 = *a1;
        v147 = *(a1 + 16);
        v33 = *v16;
        v34 = *(v16 + 1);
        *(a1 + 32) = *(v16 + 4);
        *a1 = v33;
        *(a1 + 16) = v34;
        *(v16 + 4) = v171;
        *v16 = v123;
        *(v16 + 1) = v147;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v16))
        {
          v165 = *(v16 + 4);
          v117 = *v16;
          v141 = *(v16 + 1);
          v35 = *v8;
          v36 = *(a2 - 24);
          *(v16 + 4) = *(a2 - 1);
          *v16 = v35;
          *(v16 + 1) = v36;
LABEL_27:
          *v8 = v117;
          *(a2 - 24) = v141;
          *(a2 - 1) = v165;
        }
      }

      else if (v18)
      {
        v167 = *(v16 + 4);
        v119 = *v16;
        v143 = *(v16 + 1);
        v25 = *v8;
        v26 = *(a2 - 24);
        *(v16 + 4) = *(a2 - 1);
        *v16 = v25;
        *(v16 + 1) = v26;
        *v8 = v119;
        *(a2 - 24) = v143;
        *(a2 - 1) = v167;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, a1))
        {
          v168 = *(a1 + 32);
          v120 = *a1;
          v144 = *(a1 + 16);
          v27 = *v16;
          v28 = *(v16 + 1);
          *(a1 + 32) = *(v16 + 4);
          *a1 = v27;
          *(a1 + 16) = v28;
          *(v16 + 4) = v168;
          *v16 = v120;
          *(v16 + 1) = v144;
        }
      }

      v37 = a1 + 40 * v15 - 40;
      v38 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v37, (a1 + 40));
      v39 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v115, v37);
      if (v38)
      {
        if (v39)
        {
          v40 = *(a1 + 40);
          v41 = *(a1 + 56);
          v42 = *(a1 + 72);
          v43 = *(a2 - 6);
          v44 = *(a2 - 4);
          *(a1 + 40) = *v115;
          *(a1 + 56) = v44;
          *(a1 + 72) = v43;
          *(a2 - 6) = v42;
          *v115 = v40;
          *(a2 - 4) = v41;
        }

        else
        {
          v127 = *(a1 + 40);
          v151 = *(a1 + 56);
          v175 = *(a1 + 72);
          v54 = *v37;
          v53 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v54;
          *(a1 + 56) = v53;
          *(a1 + 40 * v15 - 8) = v175;
          *v37 = v127;
          *(a1 + 40 * v15 - 24) = v151;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v115, v37))
          {
            v176 = *(a1 + 40 * v15 - 8);
            v128 = *v37;
            v152 = *(a1 + 40 * v15 - 24);
            v55 = *v115;
            v56 = *(a2 - 4);
            *(a1 + 40 * v15 - 8) = *(a2 - 6);
            *v37 = v55;
            *(a1 + 40 * v15 - 24) = v56;
            *v115 = v128;
            *(a2 - 4) = v152;
            *(a2 - 6) = v176;
          }
        }
      }

      else if (v39)
      {
        v172 = *(a1 + 40 * v15 - 8);
        v124 = *v37;
        v148 = *(a1 + 40 * v15 - 24);
        v45 = *v115;
        v46 = *(a2 - 4);
        *(a1 + 40 * v15 - 8) = *(a2 - 6);
        *v37 = v45;
        *(a1 + 40 * v15 - 24) = v46;
        *v115 = v124;
        *(a2 - 4) = v148;
        *(a2 - 6) = v172;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v37, (a1 + 40)))
        {
          v125 = *(a1 + 40);
          v149 = *(a1 + 56);
          v173 = *(a1 + 72);
          v48 = *v37;
          v47 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v48;
          *(a1 + 56) = v47;
          *(a1 + 40 * v15 - 8) = v173;
          *v37 = v125;
          *(a1 + 40 * v15 - 24) = v149;
        }
      }

      v57 = a1 + 40 * v15;
      v58 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), (a1 + 80));
      v59 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 30, (v57 + 40));
      if (v58)
      {
        if (v59)
        {
          v60 = *(a1 + 80);
          v61 = *(a1 + 96);
          v62 = *(a1 + 112);
          v63 = *(a2 - 11);
          v64 = *(a2 - 104);
          *(a1 + 80) = *v9;
          *(a1 + 96) = v64;
          *(a1 + 112) = v63;
          *(a2 - 11) = v62;
          *v9 = v60;
          *(a2 - 104) = v61;
        }

        else
        {
          v131 = *(a1 + 80);
          v155 = *(a1 + 96);
          v179 = *(a1 + 112);
          v69 = *(v57 + 56);
          v70 = *(v57 + 40);
          *(a1 + 112) = *(v57 + 72);
          *(a1 + 80) = v70;
          *(a1 + 96) = v69;
          *(v57 + 56) = v155;
          *(v57 + 72) = v179;
          *(v57 + 40) = v131;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 30, (v57 + 40)))
          {
            v180 = *(v57 + 72);
            v132 = *(v57 + 40);
            v156 = *(v57 + 56);
            v71 = *v9;
            v72 = *(a2 - 104);
            *(v57 + 72) = *(a2 - 11);
            *(v57 + 56) = v72;
            *(v57 + 40) = v71;
            *v9 = v132;
            *(a2 - 104) = v156;
            *(a2 - 11) = v180;
          }
        }
      }

      else if (v59)
      {
        v177 = *(v57 + 72);
        v129 = *(v57 + 40);
        v153 = *(v57 + 56);
        v65 = *v9;
        v66 = *(a2 - 104);
        *(v57 + 72) = *(a2 - 11);
        *(v57 + 56) = v66;
        *(v57 + 40) = v65;
        *v9 = v129;
        *(a2 - 104) = v153;
        *(a2 - 11) = v177;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), (a1 + 80)))
        {
          v130 = *(a1 + 80);
          v154 = *(a1 + 96);
          v178 = *(a1 + 112);
          v67 = *(v57 + 56);
          v68 = *(v57 + 40);
          *(a1 + 112) = *(v57 + 72);
          *(a1 + 80) = v68;
          *(a1 + 96) = v67;
          *(v57 + 56) = v154;
          *(v57 + 72) = v178;
          *(v57 + 40) = v130;
        }
      }

      v73 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v37);
      v74 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), v16);
      if (v73)
      {
        if (v74)
        {
          v181 = *(v37 + 32);
          v133 = *v37;
          v157 = *(v37 + 16);
          v75 = *(v57 + 56);
          *v37 = *(v57 + 40);
          *(v37 + 16) = v75;
          *(v37 + 32) = *(v57 + 72);
          goto LABEL_55;
        }

        v184 = *(v37 + 32);
        v136 = *v37;
        v160 = *(v37 + 16);
        v78 = *(v16 + 1);
        *v37 = *v16;
        *(v37 + 16) = v78;
        *(v37 + 32) = *(v16 + 4);
        *(v16 + 4) = v184;
        *v16 = v136;
        *(v16 + 1) = v160;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (v57 + 40), v16))
        {
          v181 = *(v16 + 4);
          v133 = *v16;
          v157 = *(v16 + 1);
          v79 = *(v57 + 56);
          *v16 = *(v57 + 40);
          *(v16 + 1) = v79;
          *(v16 + 4) = *(v57 + 72);
LABEL_55:
          *(v57 + 56) = v157;
          *(v57 + 72) = v181;
          *(v57 + 40) = v133;
        }
      }

      else if (v74)
      {
        v182 = *(v16 + 4);
        v134 = *v16;
        v158 = *(v16 + 1);
        v76 = *(v57 + 56);
        *v16 = *(v57 + 40);
        *(v16 + 1) = v76;
        *(v16 + 4) = *(v57 + 72);
        *(v57 + 56) = v158;
        *(v57 + 72) = v182;
        *(v57 + 40) = v134;
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v16, v37))
        {
          v183 = *(v37 + 32);
          v135 = *v37;
          v159 = *(v37 + 16);
          v77 = *(v16 + 1);
          *v37 = *v16;
          *(v37 + 16) = v77;
          *(v37 + 32) = *(v16 + 4);
          *(v16 + 4) = v183;
          *v16 = v135;
          *(v16 + 1) = v159;
        }
      }

      v185 = *(a1 + 32);
      v137 = *a1;
      v161 = *(a1 + 16);
      v80 = *v16;
      v81 = *(v16 + 1);
      *(a1 + 32) = *(v16 + 4);
      *a1 = v80;
      *(a1 + 16) = v81;
      *(v16 + 4) = v185;
      *v16 = v137;
      *(v16 + 1) = v161;
      goto LABEL_57;
    }

    v21 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10, v16);
    v22 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, a1);
    if (v21)
    {
      if (v22)
      {
        v166 = *(v16 + 4);
        v118 = *v16;
        v142 = *(v16 + 1);
        v23 = *v8;
        v24 = *(a2 - 24);
        *(v16 + 4) = *(a2 - 1);
        *v16 = v23;
        *(v16 + 1) = v24;
LABEL_36:
        *v8 = v118;
        *(a2 - 24) = v142;
        *(a2 - 1) = v166;
        goto LABEL_57;
      }

      v174 = *(v16 + 4);
      v126 = *v16;
      v150 = *(v16 + 1);
      v49 = *a1;
      v50 = *(a1 + 16);
      *(v16 + 4) = *(a1 + 32);
      *v16 = v49;
      *(v16 + 1) = v50;
      *(a1 + 32) = v174;
      *a1 = v126;
      *(a1 + 16) = v150;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, a1))
      {
        v166 = *(a1 + 32);
        v118 = *a1;
        v142 = *(a1 + 16);
        v51 = *v8;
        v52 = *(a2 - 24);
        *(a1 + 32) = *(a2 - 1);
        *a1 = v51;
        *(a1 + 16) = v52;
        goto LABEL_36;
      }
    }

    else if (v22)
    {
      v169 = *(a1 + 32);
      v121 = *a1;
      v145 = *(a1 + 16);
      v29 = *v8;
      v30 = *(a2 - 24);
      *(a1 + 32) = *(a2 - 1);
      *a1 = v29;
      *(a1 + 16) = v30;
      *v8 = v121;
      *(a2 - 24) = v145;
      *(a2 - 1) = v169;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a1, v16))
      {
        v170 = *(v16 + 4);
        v122 = *v16;
        v146 = *(v16 + 1);
        v31 = *a1;
        v32 = *(a1 + 16);
        *(v16 + 4) = *(a1 + 32);
        *v16 = v31;
        *(v16 + 1) = v32;
        *(a1 + 32) = v170;
        *a1 = v122;
        *(a1 + 16) = v146;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 - 40), a1) & 1) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(a1, a2, a3);
      goto LABEL_64;
    }

    v82 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(a1, a2, a3);
    if ((v83 & 1) == 0)
    {
      goto LABEL_62;
    }

    v84 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, v82, a3);
    v10 = (v82 + 40);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(v82 + 40, a2, a3))
    {
      a4 = -v12;
      a2 = v82;
      if (v84)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v84)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,false>(a1, v82, a3, -v12, a5 & 1);
      v10 = (v82 + 40);
LABEL_64:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(v10, v10 + 10, v10 + 20, (a2 - 40), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(v10, v10 + 10, v10 + 20, (v10 + 30), a3);
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2 - 10, v10 + 30))
      {
        return;
      }

      v93 = *(v10 + 30);
      v94 = *(v10 + 34);
      v95 = *(v10 + 19);
      v96 = *(a2 - 1);
      v97 = *(a2 - 24);
      *(v10 + 30) = *v8;
      *(v10 + 34) = v97;
      *(v10 + 19) = v96;
      *(a2 - 1) = v95;
      *v8 = v93;
      *(a2 - 24) = v94;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 30, v10 + 20))
      {
        return;
      }

      v98 = *(v10 + 14);
      v100 = *(v10 + 5);
      v99 = *(v10 + 6);
      v101 = *(v10 + 34);
      *(v10 + 5) = *(v10 + 30);
      *(v10 + 6) = v101;
      *(v10 + 14) = *(v10 + 19);
      *(v10 + 30) = v100;
      *(v10 + 34) = v99;
      *(v10 + 19) = v98;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 20, v10 + 10))
      {
        return;
      }

      v102 = *(v10 + 9);
      v103 = *(v10 + 14);
      v104 = *(v10 + 10);
      v105 = *(v10 + 6);
      *(v10 + 10) = *(v10 + 5);
      *(v10 + 14) = v105;
      *(v10 + 9) = *(v10 + 14);
      *(v10 + 5) = v104;
      *(v10 + 6) = v103;
      *(v10 + 14) = v102;
      goto LABEL_90;
    }

    goto LABEL_10;
  }

  v85 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 10, v10);
  v86 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, v10 + 10);
  if ((v85 & 1) == 0)
  {
    if (!v86)
    {
      return;
    }

    v109 = *(v10 + 10);
    v110 = *(v10 + 14);
    v111 = *(v10 + 9);
    v112 = *(v8 + 4);
    v113 = *(v8 + 1);
    *(v10 + 10) = *v8;
    *(v10 + 14) = v113;
    *(v10 + 9) = v112;
    *(v8 + 4) = v111;
    *v8 = v109;
    *(v8 + 1) = v110;
LABEL_90:
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 10, v10))
    {
      v188 = *(v10 + 4);
      v140 = *v10;
      v164 = *(v10 + 1);
      v114 = *(v10 + 14);
      *v10 = *(v10 + 10);
      *(v10 + 1) = v114;
      *(v10 + 4) = *(v10 + 9);
      *(v10 + 10) = v140;
      *(v10 + 14) = v164;
      *(v10 + 9) = v188;
    }

    return;
  }

  if (v86)
  {
LABEL_76:
    v187 = *(v10 + 4);
    v139 = *v10;
    v163 = *(v10 + 1);
    v107 = *v8;
    v108 = *(v8 + 1);
    *(v10 + 4) = *(v8 + 4);
    *v10 = v107;
    *(v10 + 1) = v108;
    *v8 = v139;
    *(v8 + 1) = v163;
    *(v8 + 4) = v187;
    return;
  }

  v186 = *(v10 + 4);
  v138 = *v10;
  v162 = *(v10 + 1);
  v87 = *(v10 + 14);
  *v10 = *(v10 + 10);
  *(v10 + 1) = v87;
  *(v10 + 4) = *(v10 + 9);
  *(v10 + 10) = v138;
  *(v10 + 14) = v162;
  *(v10 + 9) = v186;
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, v10 + 10))
  {
    v88 = *(v10 + 10);
    v89 = *(v10 + 14);
    v90 = *(v10 + 9);
    v91 = *(v8 + 4);
    v92 = *(v8 + 1);
    *(v10 + 10) = *v8;
    *(v10 + 14) = v92;
    *(v10 + 9) = v91;
    *(v8 + 4) = v90;
    *v8 = v88;
    *(v8 + 1) = v89;
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a2 < *a3;
  if (*a2 != *a3)
  {
    return v4;
  }

  if (v3 != a2[2])
  {
    if (v3 == a3[2])
    {
      return 0;
    }

    v11 = a2[1];
    v12 = a3[1];
    v4 = v11 < v12;
    if (v11 == v12)
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2 + 2, a2, a3 + 2) == 1;
    }

    return v4;
  }

  v5 = a2[1];
  v6 = a3[2];
  if (v5 != a2[3])
  {
    if (v3 != v6)
    {
      return 1;
    }

    return v5 < a3[1];
  }

  if (v3 != v6)
  {
    return 1;
  }

  v7 = a3[1];
  v4 = v5 < v7;
  v8 = v5 <= v7;
  v9 = v4;
  if (v7 == a3[3])
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(int *a1, int *a2, int *a3, __int128 *a4, uint64_t a5)
{
  v10 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1);
  v11 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      v13 = *(a1 + 1);
      v14 = *(a1 + 4);
      v15 = *(a3 + 4);
      v16 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v16;
      *(a1 + 4) = v15;
LABEL_9:
      *(a3 + 4) = v14;
      *a3 = v12;
      *(a3 + 1) = v13;
      goto LABEL_10;
    }

    v27 = *a1;
    v28 = *(a1 + 1);
    v29 = *(a1 + 4);
    v30 = *(a2 + 4);
    v31 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v31;
    *(a1 + 4) = v30;
    *(a2 + 4) = v29;
    *a2 = v27;
    *(a2 + 1) = v28;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2))
    {
      v12 = *a2;
      v13 = *(a2 + 1);
      v14 = *(a2 + 4);
      v32 = *(a3 + 4);
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      *(a2 + 4) = v32;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a2 + 4);
    v20 = *(a3 + 4);
    v21 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v21;
    *(a2 + 4) = v20;
    *(a3 + 4) = v19;
    *a3 = v17;
    *(a3 + 1) = v18;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1))
    {
      v22 = *a1;
      v23 = *(a1 + 1);
      v24 = *(a1 + 4);
      v25 = *(a2 + 4);
      v26 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v26;
      *(a1 + 4) = v25;
      *(a2 + 4) = v24;
      *a2 = v22;
      *(a2 + 1) = v23;
    }
  }

LABEL_10:
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a4, a3))
  {
    v35 = *a3;
    v36 = *(a3 + 1);
    v37 = *(a3 + 4);
    v38 = *(a4 + 4);
    v39 = a4[1];
    *a3 = *a4;
    *(a3 + 1) = v39;
    *(a3 + 4) = v38;
    *(a4 + 4) = v37;
    *a4 = v35;
    a4[1] = v36;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a3, a2))
    {
      v40 = *a2;
      v41 = *(a2 + 1);
      v42 = *(a2 + 4);
      v43 = *(a3 + 4);
      v44 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v44;
      *(a2 + 4) = v43;
      *(a3 + 4) = v42;
      *a3 = v40;
      *(a3 + 1) = v41;
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a5, a2, a1))
      {
        result = *a1;
        v45 = *(a1 + 1);
        v46 = *(a1 + 4);
        v47 = *(a2 + 4);
        v48 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v48;
        *(a1 + 4) = v47;
        *(a2 + 4) = v46;
        *a2 = result;
        *(a2 + 1) = v45;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v21 = v3;
    v22 = v4;
    v6 = result;
    v7 = (result + 40);
    if (result + 40 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, v11);
        if (result)
        {
          v12 = *(v10 + 16);
          v18 = *v10;
          v19 = v12;
          v20 = *(v10 + 32);
          v13 = v9;
          while (1)
          {
            v14 = v6 + v13;
            v15 = *(v6 + v13 + 16);
            *(v14 + 40) = *(v6 + v13);
            *(v14 + 56) = v15;
            *(v14 + 72) = *(v6 + v13 + 32);
            if (!v13)
            {
              break;
            }

            v13 -= 40;
            result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v18, (v13 + v6));
            if ((result & 1) == 0)
            {
              v16 = v6 + v13 + 40;
              goto LABEL_10;
            }
          }

          v16 = v6;
LABEL_10:
          v17 = v19;
          *v16 = v18;
          *(v16 + 16) = v17;
          *(v16 + 32) = v20;
        }

        v7 = (v10 + 40);
        v9 += 40;
      }

      while (v10 + 40 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v18 = v3;
    v19 = v4;
    v6 = result;
    v7 = (result + 40);
    if (result + 40 != a2)
    {
      v9 = result - 40;
      do
      {
        v10 = v6;
        v6 = v7;
        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, v10);
        if (result)
        {
          v11 = *(v6 + 16);
          v15 = *v6;
          v16 = v11;
          v17 = *(v6 + 32);
          v12 = v9;
          do
          {
            v13 = *(v12 + 56);
            *(v12 + 80) = *(v12 + 40);
            *(v12 + 96) = v13;
            *(v12 + 112) = *(v12 + 72);
            result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v15, v12);
            v12 -= 40;
          }

          while ((result & 1) != 0);
          v14 = v16;
          *(v12 + 80) = v15;
          *(v12 + 96) = v14;
          *(v12 + 112) = v17;
        }

        v7 = (v6 + 40);
        v9 += 40;
      }

      while (v6 + 40 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(int *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 1);
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 4);
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, (a2 - 40)))
  {
    v7 = a1;
    do
    {
      v7 += 10;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v7) & 1) == 0);
  }

  else
  {
    v8 = a1 + 10;
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v8);
      v8 = v7 + 10;
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 -= 40;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v4) & 1) != 0);
  }

  while (v7 < v4)
  {
    v10 = *v7;
    v11 = *(v7 + 1);
    v27 = *(v7 + 4);
    v25 = v10;
    v26 = v11;
    v12 = *v4;
    v13 = *(v4 + 16);
    *(v7 + 4) = *(v4 + 32);
    *v7 = v12;
    *(v7 + 1) = v13;
    v14 = v25;
    v15 = v26;
    *(v4 + 32) = v27;
    *v4 = v14;
    *(v4 + 16) = v15;
    do
    {
      v7 += 10;
    }

    while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v7));
    do
    {
      v4 -= 40;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v22, v4) & 1) != 0);
  }

  v16 = v7 - 10;
  if (v7 - 10 != a1)
  {
    v17 = *v16;
    v18 = *(v7 - 6);
    *(a1 + 4) = *(v7 - 1);
    *a1 = v17;
    *(a1 + 1) = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v7 - 1) = v24;
  *v16 = v19;
  *(v7 - 6) = v20;
  return v7;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::site_event<int> *,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &>(__int128 *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[1];
  v22 = *a1;
  v23 = v7;
  v24 = *(a1 + 4);
  do
  {
    v6 += 40;
  }

  while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + v6), &v22) & 1) != 0);
  v8 = a1 + v6;
  v9 = a1 + v6 - 40;
  if (v6 == 40)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 10;
    }

    while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2, &v22) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 10;
    }

    while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, a2, &v22));
  }

  if (v8 < a2)
  {
    v10 = a1 + v6;
    v11 = a2;
    do
    {
      v13 = *(v10 + 16);
      v25 = *v10;
      v12 = v25;
      v26 = v13;
      v27 = *(v10 + 32);
      v14 = v27;
      v16 = *v11;
      v15 = *(v11 + 1);
      *(v10 + 32) = *(v11 + 4);
      *v10 = v16;
      *(v10 + 16) = v15;
      *(v11 + 4) = v14;
      *v11 = v12;
      *(v11 + 1) = v13;
      do
      {
        v10 += 40;
      }

      while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10, &v22) & 1) != 0);
      do
      {
        v11 -= 10;
      }

      while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v11, &v22));
    }

    while (v10 < v11);
    v9 = v10 - 40;
  }

  if (v9 != a1)
  {
    v17 = *v9;
    v18 = *(v9 + 16);
    *(a1 + 4) = *(v9 + 32);
    *a1 = v17;
    a1[1] = v18;
  }

  v19 = v22;
  v20 = v23;
  *(v9 + 32) = v24;
  *v9 = v19;
  *(v9 + 16) = v20;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 40;
        v22 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1);
        v23 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, (a1 + 40));
        if (v22)
        {
          if (v23)
          {
LABEL_15:
            v24 = *a1;
            v25 = *(a1 + 16);
            v26 = *(a1 + 32);
            v27 = *(v7 + 32);
            v28 = *(v7 + 16);
            *a1 = *v7;
            *(a1 + 16) = v28;
            *(a1 + 32) = v27;
LABEL_16:
            *(v7 + 32) = v26;
            result = 1;
            *v7 = v24;
            *(v7 + 16) = v25;
            return result;
          }

          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v7, (a1 + 40)))
          {
            v24 = *(a1 + 40);
            v25 = *(a1 + 56);
            v26 = *(a1 + 72);
            v58 = *(v7 + 32);
            v59 = *(v7 + 16);
            *(a1 + 40) = *v7;
            *(a1 + 56) = v59;
            *(a1 + 72) = v58;
            goto LABEL_16;
          }

          return 1;
        }

        if (!v23)
        {
          return 1;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 56);
        v39 = *(a1 + 72);
        v40 = *(v7 + 32);
        v41 = *(v7 + 16);
        *(a1 + 40) = *v7;
        *(a1 + 56) = v41;
        *(a1 + 72) = v40;
        *(v7 + 32) = v39;
        *v7 = v37;
        *(v7 + 16) = v38;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(a1, (a1 + 40), (a1 + 80), (a2 - 40), a3);
        return 1;
      case 5:
        v8 = a2 - 40;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,0>(a1, (a1 + 40), (a1 + 80), (a1 + 120), a3);
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v8, (a1 + 120)))
        {
          return 1;
        }

        v9 = *(a1 + 120);
        v10 = *(a1 + 136);
        v11 = *(a1 + 152);
        v12 = *(v8 + 32);
        v13 = *(v8 + 16);
        *(a1 + 120) = *v8;
        *(a1 + 136) = v13;
        *(a1 + 152) = v12;
        *(v8 + 32) = v11;
        *v8 = v9;
        *(v8 + 16) = v10;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 120), (a1 + 80)))
        {
          return 1;
        }

        v14 = *(a1 + 112);
        v16 = *(a1 + 80);
        v15 = *(a1 + 96);
        v17 = *(a1 + 136);
        *(a1 + 80) = *(a1 + 120);
        *(a1 + 96) = v17;
        *(a1 + 112) = *(a1 + 152);
        *(a1 + 120) = v16;
        *(a1 + 136) = v15;
        *(a1 + 152) = v14;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40)))
        {
          return 1;
        }

        v18 = *(a1 + 72);
        v19 = *(a1 + 56);
        v20 = *(a1 + 40);
        v21 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v21;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v20;
        *(a1 + 96) = v19;
        *(a1 + 112) = v18;
        break;
      default:
        goto LABEL_17;
    }

    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1))
    {
      v42 = *(a1 + 32);
      v44 = *a1;
      v43 = *(a1 + 16);
      v45 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v45;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v44;
      *(a1 + 56) = v43;
      result = 1;
      *(a1 + 72) = v42;
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
    v7 = a2 - 40;
    if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a2 - 40), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v30 = (a1 + 80);
  v31 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1);
  v32 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40));
  if (v31)
  {
    if (v32)
    {
      v33 = *(a1 + 32);
      v35 = *a1;
      v34 = *(a1 + 16);
      v36 = *(a1 + 96);
      *a1 = *v30;
      *(a1 + 16) = v36;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v60 = *(a1 + 32);
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 72) = v60;
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 80), (a1 + 40)))
      {
        goto LABEL_33;
      }

      v33 = *(a1 + 72);
      v34 = *(a1 + 56);
      v35 = *(a1 + 40);
      v64 = *(a1 + 96);
      *(a1 + 40) = *v30;
      *(a1 + 56) = v64;
      *(a1 + 72) = *(a1 + 112);
    }

    *v30 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v33;
  }

  else if (v32)
  {
    v46 = *(a1 + 72);
    v47 = *(a1 + 56);
    v48 = *(a1 + 40);
    v49 = *(a1 + 96);
    *(a1 + 40) = *v30;
    *(a1 + 56) = v49;
    *(a1 + 72) = *(a1 + 112);
    *v30 = v48;
    *(a1 + 96) = v47;
    *(a1 + 112) = v46;
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, (a1 + 40), a1))
    {
      v50 = *(a1 + 32);
      v52 = *a1;
      v51 = *(a1 + 16);
      v53 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v53;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v52;
      *(a1 + 56) = v51;
      *(a1 + 72) = v50;
    }
  }

LABEL_33:
  v65 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v65, v30))
    {
      v68 = *(v65 + 16);
      v74 = *v65;
      v75 = v68;
      v76 = *(v65 + 32);
      v69 = v66;
      while (1)
      {
        v70 = a1 + v69;
        v71 = *(a1 + v69 + 96);
        *(v70 + 120) = *(a1 + v69 + 80);
        *(v70 + 136) = v71;
        *(v70 + 152) = *(a1 + v69 + 112);
        if (v69 == -80)
        {
          break;
        }

        v69 -= 40;
        if ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, &v74, (v70 + 40)) & 1) == 0)
        {
          v72 = a1 + v69 + 120;
          goto LABEL_41;
        }
      }

      v72 = a1;
LABEL_41:
      v73 = v75;
      *v72 = v74;
      *(v72 + 16) = v73;
      *(v72 + 32) = v76;
      if (++v67 == 8)
      {
        return v65 + 40 == a2;
      }
    }

    v30 = v65;
    v66 += 40;
    v65 += 40;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(int *a1, int *a2, int *a3)
{
  v3 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*a1 - *a2, a1[1] - a2[1], *a2 - *a3, a2[1] - a3[1]);
  if (v3 >= 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == 0.0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

double boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  v8 = v7 * v4;
  v9 = v6 * v5;
  v10 = a2 ^ a3;
  result = (v8 - v9);
  v12 = (v9 - v8);
  if (v8 < v9)
  {
    result = -v12;
  }

  if (v10 < 0)
  {
    result = (v8 + v9);
  }

  if (v8 > v9)
  {
    v12 = -(v8 - v9);
  }

  if (v10 >= 0)
  {
    v12 = -(v8 + v9);
  }

  if ((a4 ^ a1) < 0)
  {
    return v12;
  }

  return result;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*,boost::polygon::detail::site_event<int>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v9, v12);
        v12 = (v12 - 40);
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
        if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a4, v13, a1))
        {
          v14 = *v13;
          v15 = v13[1];
          v16 = *(v13 + 4);
          v17 = *(a1 + 32);
          v18 = *(a1 + 16);
          *v13 = *a1;
          v13[1] = v18;
          *(v13 + 4) = v17;
          *(a1 + 32) = v16;
          *a1 = v14;
          *(a1 + 16) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v9, a1);
        }

        v13 = (v13 + 40);
      }

      while (v13 != a3);
    }

    if (v8 >= 41)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v20 = a2 - 40;
      do
      {
        v26 = *a1;
        v27 = *(a1 + 16);
        v28 = *(a1 + 32);
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, a4, v19);
        if (v20 == v21)
        {
          *v21 = v26;
          v21[1] = v27;
          *(v21 + 4) = v28;
        }

        else
        {
          v22 = *v20;
          v23 = *(v20 + 16);
          *(v21 + 4) = *(v20 + 32);
          *v21 = v22;
          v21[1] = v23;
          *(v20 + 32) = v28;
          *v20 = v26;
          *(v20 + 16) = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(a1, v21 + 40, a4, 0xCCCCCCCCCCCCCCCDLL * ((v21 - a1 + 40) >> 3));
        }

        v20 -= 40;
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v26 = v4;
    v27 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 40 * v12);
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (a1 + 40 * v12), v13 + 10))
      {
        v13 = (v13 + 40);
        v12 = v14;
      }

      if ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, v13, v7) & 1) == 0)
      {
        v16 = v7[1];
        v23 = *v7;
        v24 = v16;
        v25 = v7[2].n128_i64[0];
        do
        {
          v17 = v13;
          v18 = *v13;
          v19 = v13[1];
          v7[2].n128_u64[0] = *(v13 + 4);
          *v7 = v18;
          v7[1] = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = (a1 + 40 * v20);
          v21 = 2 * v12 + 2;
          if (v21 < a3)
          {
            if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (a1 + 40 * v20), v13 + 10))
            {
              v13 = (v13 + 40);
              v20 = v21;
            }
          }

          v7 = v17;
          v12 = v20;
        }

        while (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, v13, &v23));
        result = v23;
        v22 = v24;
        v17[2].n128_u64[0] = v25;
        *v17 = result;
        v17[1] = v22;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = (v8 + 40);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 80);
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, (v8 + 40), (v8 + 80)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    v14 = v9[1];
    *(a1 + 4) = *(v9 + 4);
    *a1 = v13;
    a1[1] = v14;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>> &,boost::polygon::detail::site_event<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 40 * v8);
    v10 = (a2 - 40);
    if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v9, (a2 - 40)))
    {
      v12 = v10[1];
      v17 = *v10;
      v18 = v12;
      v19 = *(v10 + 4);
      do
      {
        v13 = v9;
        v14 = *v9;
        v15 = v9[1];
        *(v10 + 4) = *(v9 + 4);
        *v10 = v14;
        v10[1] = v15;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 40 * v8);
        v10 = v13;
      }

      while ((boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v9, &v17) & 1) != 0);
      result = *&v17;
      v16 = v18;
      *v13 = v17;
      v13[1] = v16;
      *(v13 + 4) = v19;
    }
  }

  return result;
}

unsigned int *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to &>(unsigned int *a1, unsigned int *a2)
{
  v3 = std::__adjacent_find[abi:ne200100]<std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to,std::__identity>(a1, a2);
  v4 = a2;
  if (v3 != a2)
  {
    for (i = v3 + 20; i != a2; i += 10)
    {
      if (*v3 != *i || v3[1] != i[1] || v3[2] != i[2] || v3[3] != i[3])
      {
        v6 = *i;
        v7 = *(i + 1);
        *(v3 + 9) = *(i + 4);
        *(v3 + 14) = v7;
        *(v3 + 10) = v6;
        v3 += 10;
      }
    }

    return v3 + 10;
  }

  return v4;
}

unsigned int *std::__adjacent_find[abi:ne200100]<std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__wrap_iter<boost::polygon::detail::site_event<int> *>,std::__equal_to,std::__identity>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 10;
    if (result + 10 == a2)
    {
      return a2;
    }

    else
    {
      v3 = *result;
      while (1)
      {
        v4 = v3;
        v3 = *v2;
        if (__PAIR64__(*(v2 - 9), v4) == *v2 && *(v2 - 8) == v2[2] && *(v2 - 7) == v2[3])
        {
          break;
        }

        v2 += 10;
        if (v2 == a2)
        {
          return a2;
        }
      }

      return v2 - 10;
    }
  }

  return result;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::init_beach_line_collinear_sites<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 + 40 != *(result + 32))
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      v11 = *v2;
      v12 = v5;
      *v13 = *(v2 + 32);
      *&v13[8] = *(v2 + 40);
      *&v13[24] = *(v2 + 56);
      *&v13[40] = *(v2 + 72);
      inserted = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(a2, v2, v2 + 40);
      v8[2] = *v13;
      v8[3] = *&v13[16];
      v8[4] = *&v13[32];
      v8[0] = v11;
      v8[1] = v12;
      v9 = 0;
      v10 = inserted;
      result = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(v4 + 16, v4 + 17, v8);
      v7 = v2 + 80;
      v2 += 40;
    }

    while (v7 != v4[4]);
  }

  return result;
}

void std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
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
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::insert_new_arc<boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = a2[1];
  v49 = *a2;
  v50 = v9;
  v10 = *(a2 + 4);
  v11 = *(a4 + 16);
  *&v51[8] = *a4;
  *&v51[24] = v11;
  v12 = *(a4 + 32);
  *v51 = v10;
  *&v51[40] = v12;
  v13 = *a4;
  v14 = *(a4 + 8);
  v48 = *(a4 + 16);
  v15 = *(a4 + 32);
  v16 = *(a3 + 16);
  v45 = *a3;
  v46 = v16;
  if (v13 == v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 ^ 0x20;
  }

  v47 = *(a3 + 32);
  inserted = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(a6, a3, a4);
  v41 = v48;
  *&v42[8] = v45;
  *&v40 = v14;
  *(&v40 + 1) = v13;
  *v42 = v17;
  *&v42[24] = v46;
  *&v42[40] = v47;
  v43 = 0;
  v44 = v19;
  v20 = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), a5, &v40);
  if (*a4 != *(a4 + 8) || *(a4 + 4) != *(a4 + 12))
  {
    v21 = *(a4 + 16);
    v40 = *a4;
    v41 = v21;
    v22 = *a4;
    *&v42[24] = *(a4 + 16);
    *v42 = *(a4 + 32);
    *&v42[8] = vextq_s8(v22, v22, 8uLL);
    v43 = 0;
    v44 = 0;
    *&v42[40] = *v42 ^ 0x20;
    v23 = std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), v20, &v40);
    v20 = v23;
    v24 = *(a4 + 8);
    v26 = *(a1 + 48);
    v25 = *(a1 + 56);
    if (v26 >= v25)
    {
      v28 = *(a1 + 40);
      v29 = (v26 - v28) >> 4;
      v30 = v29 + 1;
      if ((v29 + 1) >> 60)
      {
        std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
      }

      v31 = v25 - v28;
      if (v31 >> 3 > v30)
      {
        v30 = v31 >> 3;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>>(a1 + 40, v32);
      }

      v33 = (16 * v29);
      *v33 = v24;
      v33[1] = v23;
      v27 = 16 * v29 + 16;
      v34 = *(a1 + 40);
      v35 = *(a1 + 48) - v34;
      v36 = 16 * v29 - v35;
      memcpy(v33 - v35, v34, v35);
      v37 = *(a1 + 40);
      *(a1 + 40) = v36;
      *(a1 + 48) = v27;
      *(a1 + 56) = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v26 = v24;
      v26[1] = v23;
      v27 = (v26 + 2);
    }

    *(a1 + 48) = v27;
    v38 = *(a1 + 40);
    LOBYTE(v40) = *(a1 + 64);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(v38, v27, &v40, (v27 - v38) >> 4);
  }

  *v42 = *v51;
  *&v42[16] = *&v51[16];
  *&v42[32] = *&v51[32];
  v40 = v49;
  v41 = v50;
  v43 = 0;
  v44 = inserted;
  return std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>((a1 + 128), v20, &v40);
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  v8 = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3);
  v18 = 0u;
  v19 = 0u;
  if (boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v20 = 0;
  v21 = v9;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v18);
  v10 = a1[7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = v9;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v18);
  v11 = a1[7];
  if (*a1 == a1[1])
  {
    v12 = *(a2 + 32) & 0x1FLL;
    v18 = *(a2 + 24);
    *&v19 = v12;
    std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a1, &v18);
  }

  v13 = *(a3 + 32) & 0x1FLL;
  v18 = *(a3 + 24);
  *&v19 = v13;
  std::vector<boost::polygon::voronoi_cell<double>>::push_back[abi:ne200100](a1, &v18);
  v14 = *a1;
  *(v10 - 48) = *a1 + 24 * v6;
  v15 = v10 - 48;
  *(v11 - 48) = v14 + 24 * v7;
  v16 = v11 - 48;
  *(v15 + 16) = v16;
  *(v16 + 16) = v15;
  return v15;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(uint64_t a1, int *a2, int *a3)
{
  if (!boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    return 1;
  }

  v6 = *a2 != a2[2] || a2[1] != a2[3];
  v8 = *a3 == a3[2] && a3[1] == a3[3];
  return v6 ^ v8;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(uint64_t a1, int *a2, int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = *a2 == v5 && v3 == v6;
  v9 = *a3;
  v10 = a3[2];
  if (*a3 != v10)
  {
    v12 = 1;
LABEL_22:
    if (v8 && v12)
    {
      if (v9 == v4 && a3[1] == v3)
      {
        return 0;
      }

      if (v10 == v4)
      {
        return a3[3] != v3;
      }
    }

    return 1;
  }

  v11 = a3[1];
  v12 = v11 != a3[3];
  if (v8 || v12)
  {
    goto LABEL_22;
  }

  v14 = v5 != v9 || v6 != v11;
  return (v4 != v9 || v3 != v11) && v14;
}

void std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_edge<double>>>(a1, v12);
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

uint64_t std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>> const,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), a5, (a2 + 4)))
  {
    if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()((a1 + 3), (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  v5 = 40;
  if (v3 <= v4)
  {
    v6 = 40;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + v6;
  v8 = *(a3 + 16);
  v9 = *(a3 + 56);
  if (v8 > v9)
  {
    v5 = 0;
  }

  v10 = a3 + v5;
  v11 = *(v7 + 8);
  v12 = *v7;
  v13 = *(v7 + 4) < *(v7 + 12);
  if (*v7 != v11)
  {
    v13 = *v7 < v11;
  }

  v14 = !v13;
  if (!v13)
  {
    v12 = *(v7 + 8);
  }

  v15 = *(v10 + 8);
  if (v14)
  {
    v16 = (v7 + 8);
  }

  else
  {
    v16 = v7;
  }

  v17 = *(v10 + 4) < *(v10 + 12);
  if (*v10 != v15)
  {
    v17 = *v10 < v15;
  }

  if (v17)
  {
    v15 = *v10;
  }

  if (v12 >= v15)
  {
    if (v12 <= v15)
    {
      v22 = *(v7 + 16);
      v23 = *(v10 + 16);
      if (v22 == v23)
      {
        if (v3 == v4)
        {
          v24 = *(a2 + 4);
        }

        else if (v3 > v4)
        {
          v24 = *(a2 + 12) | 0x100000000;
        }

        else
        {
          v24 = *(a2 + 44) | 0xFFFFFFFF00000000;
        }

        if (v8 == v9)
        {
          v36 = *(a3 + 4);
        }

        else if (v8 > v9)
        {
          v36 = *(a3 + 12) | 0x100000000;
        }

        else
        {
          v36 = *(a3 + 44) | 0xFFFFFFFF00000000;
        }

        v37 = v36 >= v24 && SHIDWORD(v24) < SHIDWORD(v36);
        v38 = v37;
        if (v24 >= v36)
        {
          return v38;
        }

        else
        {
          return 1;
        }
      }

      else if (v22 >= v23)
      {
        v32 = 44;
        if (v3 > v4)
        {
          v32 = 12;
        }

        if (v3 == v4)
        {
          v32 = 4;
        }

        v33 = *(a2 + v32);
        comparison_y = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(a1, a3, 0);
        if (v33 == comparison_y)
        {
          v35 = *v10 != *(v10 + 8) || *(v10 + 4) != *(v10 + 12);
          return SHIDWORD(comparison_y) > 0 || v35;
        }

        else
        {
          return v33 < comparison_y;
        }
      }

      else
      {
        v25 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(a1, a2, 0);
        v26 = *(a3 + 16);
        v27 = *(a3 + 56);
        v28 = v26 == v27;
        v37 = v26 > v27;
        v29 = 44;
        if (v37)
        {
          v29 = 12;
        }

        if (v28)
        {
          v29 = 4;
        }

        v30 = *(a3 + v29);
        if (v30 == v25)
        {
          v31 = *v7 == *(v7 + 8) && *(v7 + 4) == *(v7 + 12);
          return v25 < 0 && v31;
        }

        else
        {
          return v30 > v25;
        }
      }
    }

    else
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(a1 + 1, a3, (a3 + 40), v16) ^ 1;
    }
  }

  else
  {
    if (v17)
    {
      v18 = v10;
    }

    else
    {
      v18 = (v10 + 8);
    }

    v19 = a1 + 1;

    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(v19, a2, (a2 + 40), v18);
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::operator()(uint64_t a1, int *a2, int *a3, int *a4)
{
  v4 = a2;
  if (*a2 == a2[2] && a2[1] == a2[3])
  {
    if (*a3 == a3[2] && a3[1] == a3[3])
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::pp(a1, a2, a3, a4);
    }

    v6 = 0;
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(a1, a2, a3, a4, v6);
  }

  if (*a3 == a3[2] && a3[1] == a3[3])
  {
    a2 = a3;
    a3 = v4;
    v6 = 1;
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(a1, a2, a3, a4, v6);
  }

  return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ss(a1, a2, a3, a4);
}

unint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>::get_comparison_y(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  if (v3 == v4)
  {
    return *(a2 + 4);
  }

  if (v3 <= v4)
  {
    return *(a2 + 44) | 0xFFFFFFFF00000000;
  }

  if ((a3 & 1) != 0 || *a2 != *(a2 + 8) || (v6 = *(a2 + 4), v6 == *(a2 + 12)))
  {
    v6 = *(a2 + 12);
  }

  return v6 | 0x100000000;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::pp(uint64_t a1, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2 <= *a3)
  {
    if (v4 >= v5)
    {
      return a3[1] + a2[1] < 2 * a4[1];
    }

    v6 = a4[1];
    v8 = a3[1];
    if (v6 < v8)
    {
      v7 = a2[1];
      goto LABEL_8;
    }

    return 1;
  }

  else
  {
    v6 = a4[1];
    v7 = a2[1];
    if (v6 > v7)
    {
      v8 = a3[1];
LABEL_8:
      v9 = v4;
      v10 = *a4;
      return ((v7 - v6) * (v7 - v6) + (v9 - v10) * (v9 - v10)) / (v9 - v10 + v9 - v10) < ((v8 - v6) * (v8 - v6) + (v5 - v10) * (v5 - v10)) / (v5 - v10 + v5 - v10);
    }

    return 0;
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ps(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  v10 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::fast_ps(a1, a2, a3, a4, a5);
  if (v10)
  {
    return v10 == -1;
  }

  v12 = *a2 - *a4;
  v13 = ((a2[1] - a4[1]) * (a2[1] - a4[1]) + v12 * v12) / (v12 + v12);
  return (v13 < boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a3, a4)) ^ a5;
}

BOOL boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::ss(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a2 + 16) == *(a3 + 16))
  {
    return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, (a2 + 8), a4) == 1;
  }

  distance_to_segment_arc = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a2, a4);
  return distance_to_segment_arc < boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(a1, a3, a4);
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::fast_ps(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a3, a3 + 2, a4) == -1)
  {
    v10 = a4[1];
    v11 = a2[1];
    v12 = a3[2];
    v13 = *a3;
    if (v13 == v12)
    {
      if (v10 >= v11 || a5)
      {
        if (v10 > v11)
        {
          v18 = a5;
        }

        else
        {
          v18 = 0;
        }

        return (v18 << 31 >> 31);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v14 = *a4;
      v15 = *a2;
      v16 = a3[3];
      v17 = a3[1];
      if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v12 - v13, v16 - v17, v14 - v15, v10 - v11) <= 0.0)
      {
        v19 = v14 - v15;
        v20 = v10 - v11;
        v21 = (v20 - v19) * ((v19 + v20) * (v12 - v13));
        v22 = v20 * (v19 * (v16 - v17 + v16 - v17));
        v23 = v21;
        v24 = v22;
        if (v21 >= 0.0)
        {
          *&v23 = 0x8000000000000000 - *&v21;
        }

        if (v22 >= 0.0)
        {
          *&v24 = 0x8000000000000000 - *&v22;
        }

        if (*&v23 - *&v24 <= 4uLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = -1;
        }

        if (*&v23 > *&v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = *&v24 - *&v23 > 4uLL;
        }

        v27 = v26;
        v28 = v26 ^ a5;
        if (a5)
        {
          v29 = -1;
        }

        else
        {
          v29 = 1;
        }

        if ((v27 & v28) != 0)
        {
          return v29;
        }

        else
        {
          return 0;
        }
      }

      else if ((a3[8] & 0x20) != 0)
      {
        return a5 ^ 1u;
      }

      else
      {
        return (a5 << 31 >> 31);
      }
    }
  }

  else if ((a3[8] & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::distance_predicate<boost::polygon::detail::site_event<int>>::find_distance_to_segment_arc(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = a2[2];
  if (v3 == v4)
  {
    return (v3 - *a3) * 0.5;
  }

  v6 = v4 - v3;
  v7 = a2[3];
  v8 = a2[1];
  v9 = v7 - v8;
  v10 = sqrt(v9 * v9 + v6 * v6);
  v11 = v9 < 0.0;
  v12 = (v10 - v9) / (v6 * v6);
  v13 = 1.0 / (v9 + v10);
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return v14 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v4 - v3, v7 - v8, *a3 - v3, a3[1] - v8);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = *(a2 - 16);
    v8 = *(a2 - 12);
    v6 = (a2 - 16);
    v9 = v8 < *(v5 + 4);
    v10 = v7 == *v5;
    v11 = v7 < *v5;
    if (v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = *v6;
      v13 = *v6;
      v14 = HIDWORD(*v6);
      do
      {
        v15 = v6;
        v6 = v5;
        *v15 = *v5;
        v15[1] = *(v5 + 8);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v16 = *v5 > v13;
        if (*v5 == v13)
        {
          v16 = *(v5 + 4) > v14;
        }
      }

      while (v16);
      *v6 = v12;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__emplace_hint_unique_key_args<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::pair<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>(void *a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__find_equal<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::activate_circle_event(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = 1;
  result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::operator()(a1 + 160, a2, a3, a4, &v5);
  if (result)
  {
    boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::push();
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::end_point_comparison &,std::__wrap_iter<std::pair<boost::polygon::detail::point_2d<int>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3 + 2];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(v4 + 16);
      v9 = v7 == *v4;
      v8 = v7 < *v4;
      if (v9)
      {
        v8 = *(v4 + 20) < *(v4 + 4);
      }

      v9 = !v8;
      if (v8)
      {
        v10 = 16;
      }

      else
      {
        v10 = 0;
      }

      v4 += v10;
      if (!v9)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1[1] = *(v4 + 8);
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

uint64_t *std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::operator()(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  if (*a2 == *(a2 + 8))
  {
    v10 = *(a2 + 4);
    if (v10 == *(a2 + 12))
    {
      v11 = a3[2];
      if (*a3 == v11 && a3[1] == a3[3])
      {
        if (*a4 == *(a4 + 8) && *(a4 + 4) == *(a4 + 12))
        {
          if (boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, a4) == -1)
          {
            boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp(a1 + 4, v8, v7, v6, a5);
LABEL_39:
            if (!boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::lies_outside_vertical_segment(a1, a5, v8) && !boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::lies_outside_vertical_segment(a1, a5, v7))
            {
              return !boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::lies_outside_vertical_segment(a1, a5, v6);
            }

            return 0;
          }

          return 0;
        }

        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(a1 + 2, a2, a3, a4, 3);
        if (!result)
        {
          return result;
        }

        v13 = a1 + 4;
        a2 = v8;
        v14 = v7;
        v15 = v6;
        v16 = 3;
LABEL_38:
        boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(v13, a2, v14, v15, v16, a5);
        goto LABEL_39;
      }

      if (*a4 == *(a4 + 8))
      {
        v21 = *(a4 + 4);
        if (v21 == *(a4 + 12))
        {
          if (*a3 == *a2 && v11 == *a4 && a3[1] == v10 && a3[3] == v21)
          {
            return 0;
          }

          v13 = a1 + 4;
          v14 = a4;
          v15 = v7;
          v16 = 2;
          goto LABEL_38;
        }
      }

      if (*(a3 + 2) == *(a4 + 16))
      {
        return 0;
      }

      v17 = a1 + 4;
      v18 = 1;
LABEL_35:
      boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(v17, a2, a3, a4, v18, a5);
      goto LABEL_39;
    }
  }

  if (*a3 == a3[2] && a3[1] == a3[3])
  {
    if (*a4 == *(a4 + 8) && *(a4 + 4) == *(a4 + 12))
    {
      result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(a1 + 2, a3, a4, a2, 1);
      if (!result)
      {
        return result;
      }

      v13 = a1 + 4;
      a2 = v7;
      v14 = v6;
      v15 = v8;
      v16 = 1;
      goto LABEL_38;
    }

    result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pss(a1 + 2, a3, a2, a4, 2);
    if (!result)
    {
      return result;
    }

    v17 = a1 + 4;
    a2 = v7;
    a3 = v8;
    a4 = v6;
    v18 = 2;
    goto LABEL_35;
  }

  if (*a4 == *(a4 + 8) && *(a4 + 4) == *(a4 + 12))
  {
    if (*(a2 + 16) == *(a3 + 2))
    {
      return 0;
    }

    v17 = a1 + 4;
    a2 = a4;
    a3 = v8;
    a4 = v7;
    v18 = 3;
    goto LABEL_35;
  }

  v19 = *(a3 + 2);
  if (*(a2 + 16) != v19 && v19 != *(a4 + 16))
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss(a1 + 4, a2, a3, a4, a5);
    goto LABEL_39;
  }

  return 0;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = a3[1];
  v13 = v9 - v11;
  v14 = *a4;
  v15 = a4[1];
  v16 = v11 - v14;
  v17 = v10 - v12;
  v18 = v12 - v15;
  v19 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v9 - v11, v11 - v14, v10 - v12, v12 - v15);
  v20 = *a2;
  v21 = *a3;
  v22 = 0.5 / v19;
  v23 = v20 + v21;
  v24 = v21 + *a4;
  v25 = a2[1];
  v26 = a3[1];
  v27 = v25 + v26;
  v28 = a4[1];
  v29 = v26 + v28;
  v43 = v20 - *a4;
  v44 = v22;
  v42 = v25 - v28;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = v13 * v23;
  *&v46 = v18 * (v13 * v23);
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v50, &v46);
  v31 = v17 * v27;
  *&v46 = v18 * v31;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v50, &v46);
  v32 = v16 * v24;
  *&v46 = v17 * v32;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v50, &v46);
  v33 = v18 * v29;
  *&v46 = v17 * v33;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v50, &v46);
  *&v46 = v13 * v32;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v48, &v46);
  *&v46 = v13 * v33;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v48, &v46);
  *&v46 = v16 * v30;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v48, &v46);
  *&v46 = v16 * v31;
  *(&v46 + 1) = 0x4000000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v48, &v46);
  v46 = v50;
  v47 = v51;
  v45[0] = sqrt((v17 * v17 + v13 * v13) * (v18 * v18 + v16 * v16) * (v42 * v42 + v43 * v43));
  v45[1] = 5.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v46, v45);
  v34 = v44 * boost::polygon::detail::robust_fpt<double>::operator-(&v50, &v51);
  v35 = v44 * boost::polygon::detail::robust_fpt<double>::operator-(&v48, &v49);
  v36 = boost::polygon::detail::robust_fpt<double>::operator-(&v46, &v47);
  *a5 = v34;
  *(a5 + 8) = v35;
  *(a5 + 16) = v44 * v36;
  *(a5 + 24) = 1;
  boost::polygon::detail::robust_fpt<double>::operator-(&v50, &v51);
  v38 = v37;
  boost::polygon::detail::robust_fpt<double>::operator-(&v48, &v49);
  v40 = v39;
  boost::polygon::detail::robust_fpt<double>::operator-(&v46, &v47);
  if (v38 > 64.0 || v40 > 64.0 || v41 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp();
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pps(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  if (a5 == 2)
  {
    if (*a4 == *a2 && a4[1] == a2[1] && a4[2] == *a3)
    {
      return a4[3] != a3[1];
    }

    return 1;
  }

  v10 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, a4);
  v11 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a2, a3, a4 + 2);
  if (a5 != 3)
  {
    if (a5 == 1 && *a2 >= *a3)
    {
      return v10 == -1;
    }

LABEL_12:
    if (v10 == -1)
    {
      return 1;
    }

    return v11 == -1;
  }

  if (*a3 < *a2)
  {
    goto LABEL_12;
  }

  return v11 == -1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = v12;
  v15 = a4[2];
  v16 = a4[3];
  v18 = *a3;
  v17 = a3[1];
  v20 = *a2;
  v19 = a2[1];
  v21 = v17 - v19;
  v71 = v20;
  v72 = v15;
  v22 = v18;
  v23 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v16 - v13, v12 - v15, v18 - v20, v17 - v19);
  v24 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[1] - a4[3], *a4 - a4[2], a4[3] - a2[1], a4[2] - *a2);
  v88[0] = v24;
  v88[1] = 1.0;
  v25 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[1] - a4[3], *a4 - a4[2], a4[3] - a3[1], a4[2] - *a3);
  v87[1] = 1.0;
  v26 = a2[1] - a3[1];
  v27 = *a2 - *a3;
  v28 = a4[2];
  v29 = *a4;
  v30 = a4[3] - a4[1];
  v87[0] = v25;
  v31 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v26, v27, v30, v28 - v29);
  v32 = 1.0;
  v85 = 0u;
  *v86 = 0u;
  if (v31 == 0.0)
  {
    *&v83 = v23 / (v24 * 8.0);
    *(&v83 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v85, &v83);
    *&v83 = v24 / (v23 + v23);
    *(&v83 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v85, &v83);
  }

  else
  {
    *&v83 = v23 * v23;
    *(&v83 + 1) = 0x4008000000000000;
    *&v81 = v31 * v31;
    *(&v81 + 1) = 0x4008000000000000;
    v32 = 1.0;
    *&v83 = sqrt(boost::polygon::detail::robust_fpt<double>::operator+(&v83, &v81) * v24 * v25) / (v31 * v31);
    *(&v83 + 1) = (v33 + 1.0 + 1.0 + 1.0 + 1.0) * 0.5 + 1.0 + 3.0 + 1.0;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v85, &v83);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v85, &v83);
    }

    *&v83 = v23 * boost::polygon::detail::robust_fpt<double>::operator+(v88, v87) / (v31 * (v31 + v31));
    *(&v83 + 1) = v34 + 1.0 + 1.0 + 4.0 + 1.0;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v85, &v83);
  }

  v35 = v14 - v72;
  v36 = v71 - v22;
  v83 = 0u;
  v84 = 0u;
  v37 = *a2;
  v38 = *a3;
  v81 = 0u;
  v82 = 0u;
  v79 = COERCE_UNSIGNED_INT64((v37 + v38) * 0.5);
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v83, &v79);
  if (v21 >= 0.0)
  {
    v39 = *(&v85 + 1);
    v40 = v21 * *&v85;
    v41 = v86[1];
    v42 = v21 * v86[0];
  }

  else
  {
    v39 = v86[1];
    v40 = -(v21 * v86[0]);
    v41 = *(&v85 + 1);
    v42 = -(v21 * *&v85);
  }

  v43 = v16 - v13;
  *&v79 = v40;
  *(&v79 + 1) = v39 + 0.0 + 1.0;
  *&v80 = v42;
  *(&v80 + 1) = v41 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v83, &v79);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v84, &v80);
  *&v79 = (a2[1] + a3[1]) * 0.5;
  *(&v79 + 1) = 0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v81, &v79);
  if (v36 >= 0.0)
  {
    v44 = *(&v85 + 1);
    v45 = v36 * *&v85;
    v46 = v86[1];
    v47 = v36 * v86[0];
  }

  else
  {
    v44 = v86[1];
    v45 = -(v36 * v86[0]);
    v46 = *(&v85 + 1);
    v47 = -(v36 * *&v85);
  }

  *&v79 = v45;
  *(&v79 + 1) = v44 + 0.0 + 1.0;
  *&v80 = v47;
  *(&v80 + 1) = v46 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v81, &v79);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v82, &v80);
  v79 = 0u;
  v80 = 0u;
  v77 = v83;
  v78 = v84;
  v73 = v43 * *a4;
  v74 = 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v79, &v73);
  v73 = v35 * a4[1];
  v74 = 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v79, &v73);
  if (v43 >= 0.0)
  {
    v48 = *(&v83 + 1);
    v49 = v43 * *&v83;
    v50 = *(&v84 + 1);
    v51 = v43 * *&v84;
  }

  else
  {
    v48 = *(&v84 + 1);
    v49 = -(v43 * *&v84);
    v50 = *(&v83 + 1);
    v51 = -(v43 * *&v83);
  }

  v52 = sqrt(v35 * v35 + v43 * v43);
  v73 = v49;
  v74 = v48 + 0.0 + 1.0;
  v75 = v51;
  v76 = v50 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v79, &v73);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v80, &v75);
  if (v35 >= 0.0)
  {
    v53 = *(&v81 + 1);
    v54 = v35 * *&v81;
    v55 = *(&v82 + 1);
    v56 = v35 * *&v82;
  }

  else
  {
    v53 = *(&v82 + 1);
    v54 = -(v35 * *&v82);
    v55 = *(&v81 + 1);
    v56 = -(v35 * *&v81);
  }

  v57 = v32 / v52;
  v73 = v54;
  v74 = v53 + 0.0 + 1.0;
  v75 = v56;
  v76 = v55 + 0.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v79, &v73);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v80, &v75);
  v58 = v79;
  v60 = *(&v80 + 1);
  v59 = *&v80;
  if (*&v79 >= *&v80)
  {
    v61 = *(&v80 + 1);
    v62 = *&v80;
    v60 = *(&v79 + 1);
    v59 = *&v79;
  }

  else
  {
    v79 = v80;
    v61 = *(&v58 + 1);
    v62 = *&v58;
    v80 = v58;
  }

  v73 = v57 * v59;
  v74 = v60 + 3.0 + 1.0;
  v75 = v57 * v62;
  v76 = v61 + 3.0 + 1.0;
  boost::polygon::detail::robust_fpt<double>::operator+=(&v77, &v73);
  boost::polygon::detail::robust_fpt<double>::operator+=(&v78, &v75);
  v63 = boost::polygon::detail::robust_fpt<double>::operator-(&v83, &v84);
  v64 = boost::polygon::detail::robust_fpt<double>::operator-(&v81, &v82);
  v65 = boost::polygon::detail::robust_fpt<double>::operator-(&v77, &v78);
  *a6 = v63;
  *(a6 + 8) = v64;
  *(a6 + 16) = v65;
  *(a6 + 24) = 1;
  boost::polygon::detail::robust_fpt<double>::operator-(&v83, &v84);
  v67 = v66;
  boost::polygon::detail::robust_fpt<double>::operator-(&v81, &v82);
  v69 = v68;
  boost::polygon::detail::robust_fpt<double>::operator-(&v77, &v78);
  if (v67 > 64.0 || v69 > 64.0 || v70 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(a1, a2, a3, a4, a5, a6, v67 > 64.0, v69 > 64.0, v70 > 64.0);
  }
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>::pss(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a3 + 16) == *(a4 + 16))
  {
    return 0;
  }

  if (a5 == 2)
  {
    v6 = *(a4 + 32);
    if ((*(a3 + 32) & 0x20) == 0)
    {
      if ((v6 & 0x20) != 0)
      {
        return 0;
      }

      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a3, a2, (a4 + 8)) == -1;
    }

    if ((v6 & 0x20) != 0)
    {
      return boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::orientation_test::eval<boost::polygon::detail::point_2d<int>>(a3, a2, (a4 + 8)) == -1;
    }
  }

  return 1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  v16 = v12 - v14;
  v17 = v13 - v15;
  v19 = a4[2];
  v18 = a4[3];
  v21 = *a4;
  v20 = a4[1];
  v22 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v13 - v15, v12 - v14, v18 - v20, v19 - v21);
  v23 = v17 * v17;
  if (v22 == 0.0)
  {
    *&v119 = v23 + v16 * v16;
    *(&v119 + 1) = 0x4000000000000000;
    v24 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[1] - a3[3], *a3 - a3[2], a4[1] - a3[3], *a4 - a3[2]);
    v25 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*a3 - a3[2], a3[1] - a3[3], *a2 - a3[2], a2[1] - a3[3]);
    v26 = v25 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[1] - a3[3], *a3 - a3[2], a2[1] - a4[1], *a2 - *a4);
    v129 = 0u;
    *v130 = 0u;
    *&v127 = v16 * -(*a2 - (a3[2] + *a4) * 0.5);
    *(&v127 + 1) = 0x3FF0000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v129, &v127);
    *&v127 = v17 * -(a2[1] - (a3[3] + a4[1]) * 0.5);
    *(&v127 + 1) = 0x3FF0000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v129, &v127);
    *&v127 = sqrt(v26);
    *(&v127 + 1) = 0x4004000000000000;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v129, &v127);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v129, &v127);
    }

    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator/=(&v129, &v119);
    v127 = 0u;
    v128 = 0u;
    v31 = a3[2];
    v32 = *a4;
    v125 = 0u;
    v126 = 0u;
    v123 = COERCE_UNSIGNED_INT64((v31 + v32) * 0.5);
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v127, &v123);
    if (v16 >= 0.0)
    {
      v33 = *(&v129 + 1);
      v34 = v16 * *&v129;
      v35 = v130[1];
      v36 = v16 * v130[0];
    }

    else
    {
      v33 = v130[1];
      v34 = -(v16 * v130[0]);
      v35 = *(&v129 + 1);
      v36 = -(v16 * *&v129);
    }

    *&v123 = v34;
    *(&v123 + 1) = v33 + 0.0 + 1.0;
    *&v124 = v36;
    *(&v124 + 1) = v35 + 0.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v123);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v124);
    *&v123 = (a3[3] + a4[1]) * 0.5;
    *(&v123 + 1) = 0;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v125, &v123);
    if (v17 >= 0.0)
    {
      v37 = *(&v129 + 1);
      v38 = v17 * *&v129;
      v39 = v130[1];
      v40 = v17 * v130[0];
    }

    else
    {
      v37 = v130[1];
      v38 = -(v17 * v130[0]);
      v39 = *(&v129 + 1);
      v40 = -(v17 * *&v129);
    }

    *&v123 = v38;
    *(&v123 + 1) = v37 + 0.0 + 1.0;
    *&v124 = v40;
    *(&v124 + 1) = v39 + 0.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v125, &v123);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v126, &v124);
    v123 = v127;
    v124 = v128;
    *&v117 = v24 * 0.5 / sqrt(*&v119);
    *(&v117 + 1) = *(&v119 + 1) * 0.5 + 1.0 + 2.0 + 1.0;
    if (v24 >= 0.0)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v123, &v117);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v123, &v117);
    }

    boost::polygon::detail::robust_fpt<double>::operator-(&v127, &v128);
    v42 = v41;
    boost::polygon::detail::robust_fpt<double>::operator-(&v125, &v126);
    v44 = v43;
    v45 = &v123;
    boost::polygon::detail::robust_fpt<double>::operator-(&v123, &v124);
    v47 = v46;
    v48 = boost::polygon::detail::robust_fpt<double>::operator-(&v127, &v128);
    v49 = boost::polygon::detail::robust_fpt<double>::operator-(&v125, &v126);
    v50 = &v123;
  }

  else
  {
    v27 = sqrt(v23 + v16 * v16);
    v107 = v19 - v21;
    v108 = v18 - v20;
    v28 = sqrt(v108 * v108 + v107 * v107);
    v29 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*a3 - a3[2], a3[1] - a3[3], a4[1] - a4[3], a4[2] - *a4);
    v121 = v29;
    v122 = 1.0;
    v109 = v27;
    v110 = v28;
    *&v129 = v27 * v28;
    *(&v129 + 1) = 0x4014000000000000;
    if (v29 < 0.0)
    {
      v121 = v22 * v22 / boost::polygon::detail::robust_fpt<double>::operator-(&v129, &v121);
      v122 = v30 + 3.0 + 1.0;
    }

    else
    {
      boost::polygon::detail::robust_fpt<double>::operator+=(&v121, &v129);
    }

    v104 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[1] - a3[3], *a3 - a3[2], a3[1] - a2[1], *a3 - *a2);
    v105 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[2] - *a4, a4[3] - a4[1], a4[2] - *a2, a4[3] - a2[1]);
    v51 = v121;
    v52 = v122 + 0.0 + 1.0 + 1.0;
    v53 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[1] - a3[3], *a3 - a3[2], a3[1], *a3);
    v54 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[2] - *a4, a4[3] - a4[1], a4[2], a4[3]);
    v106 = v22;
    v55 = 1.0 / v22;
    v129 = 0u;
    *v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    *&v119 = v55 * (v107 * v53);
    *(&v119 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v125, &v119);
    *&v119 = v55 * (v16 * v54);
    *(&v119 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v125, &v119);
    *&v119 = v55 * (v17 * v54);
    *(&v119 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v123, &v119);
    *&v119 = v55 * (v108 * v53);
    *(&v119 + 1) = 0x4014000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v123, &v119);
    v56 = v16 * v110;
    if (v56 >= 0.0)
    {
      v57 = *(&v125 + 1);
      v58 = *&v125;
      v59 = *(&v126 + 1);
      v60 = *&v126;
    }

    else
    {
      v57 = *(&v126 + 1);
      v58 = -*&v126;
      v59 = *(&v125 + 1);
      v60 = -*&v125;
    }

    v61 = v51 + v51;
    v62 = v52 + 1.0;
    *&v119 = v56 * v58;
    *(&v119 + 1) = v57 + 3.0 + 1.0;
    *&v120 = v56 * v60;
    *(&v120 + 1) = v59 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v119);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v120);
    v63 = v107 * v109;
    if (v107 * v109 >= 0.0)
    {
      v64 = *(&v125 + 1);
      v65 = *&v125;
      v66 = *(&v126 + 1);
      v67 = *&v126;
    }

    else
    {
      v64 = *(&v126 + 1);
      v65 = -*&v126;
      v66 = *(&v125 + 1);
      v67 = -*&v125;
    }

    v68 = v104 * v61;
    *&v119 = v63 * v65;
    *(&v119 + 1) = v64 + 3.0 + 1.0;
    *&v120 = v63 * v67;
    *(&v120 + 1) = v66 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v119);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v120);
    v69 = v17 * v110;
    if (v17 * v110 >= 0.0)
    {
      v70 = *(&v123 + 1);
      v71 = *&v123;
      v72 = *(&v124 + 1);
      v73 = *&v124;
    }

    else
    {
      v70 = *(&v124 + 1);
      v71 = -*&v124;
      v72 = *(&v123 + 1);
      v73 = -*&v123;
    }

    *&v119 = v69 * v71;
    *(&v119 + 1) = v70 + 3.0 + 1.0;
    *&v120 = v69 * v73;
    *(&v120 + 1) = v72 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v119);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v120);
    v74 = v109 * v108;
    if (v109 * v108 >= 0.0)
    {
      v75 = *(&v123 + 1);
      v76 = *&v123;
      v77 = *(&v124 + 1);
      v78 = *&v124;
    }

    else
    {
      v75 = *(&v124 + 1);
      v76 = -*&v124;
      v77 = *(&v123 + 1);
      v78 = -*&v123;
    }

    *&v119 = v74 * v76;
    *(&v119 + 1) = v75 + 3.0 + 1.0;
    *&v120 = v74 * v78;
    *(&v120 + 1) = v77 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v127, &v119);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v128, &v120);
    *&v119 = v109 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[2] - *a4, a4[3] - a4[1], -a2[1], *a2);
    *(&v119 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v127, &v119);
    *&v119 = v110 * boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(*a3 - a3[2], a3[1] - a3[3], -a2[1], *a2);
    *(&v119 + 1) = 0x4010000000000000;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v127, &v119);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v129, &v128);
    boost::polygon::detail::robust_fpt<double>::operator+=(v130, &v127);
    *&v119 = sqrt(v105 * v68);
    *(&v119 + 1) = (v62 + 1.0 + 1.0) * 0.5 + 1.0;
    if (a5 == 2)
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v129, &v119);
    }

    else
    {
      boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v129, &v119);
    }

    *&v119 = v121 * v121;
    *(&v119 + 1) = v122 + v122 + 1.0;
    boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator/=(&v129, &v119);
    v119 = v125;
    v120 = v126;
    v117 = v123;
    v118 = v124;
    if (v56 >= 0.0)
    {
      v79 = *(&v129 + 1);
      v80 = *&v129;
      v81 = v130[1];
      v82 = v130[0];
    }

    else
    {
      v79 = v130[1];
      v80 = -v130[0];
      v81 = *(&v129 + 1);
      v82 = -*&v129;
    }

    *&v115 = v56 * v80;
    *(&v115 + 1) = v79 + 3.0 + 1.0;
    *&v116 = v56 * v82;
    *(&v116 + 1) = v81 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v119, &v115);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v120, &v116);
    if (v63 >= 0.0)
    {
      v83 = *(&v129 + 1);
      v84 = *&v129;
      v85 = v130[1];
      v86 = v130[0];
    }

    else
    {
      v83 = v130[1];
      v84 = -v130[0];
      v85 = *(&v129 + 1);
      v86 = -*&v129;
    }

    *&v115 = v63 * v84;
    *(&v115 + 1) = v83 + 3.0 + 1.0;
    *&v116 = v63 * v86;
    *(&v116 + 1) = v85 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v119, &v115);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v120, &v116);
    if (v69 >= 0.0)
    {
      v87 = *(&v129 + 1);
      v88 = *&v129;
      v89 = v130[1];
      v90 = v130[0];
    }

    else
    {
      v87 = v130[1];
      v88 = -v130[0];
      v89 = *(&v129 + 1);
      v90 = -*&v129;
    }

    *&v115 = v69 * v88;
    *(&v115 + 1) = v87 + 3.0 + 1.0;
    *&v116 = v69 * v90;
    *(&v116 + 1) = v89 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v117, &v115);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v118, &v116);
    if (v74 >= 0.0)
    {
      v91 = *(&v129 + 1);
      v92 = *&v129;
      v93 = v130[1];
      v94 = v130[0];
    }

    else
    {
      v91 = v130[1];
      v92 = -v130[0];
      v93 = *(&v129 + 1);
      v94 = -*&v129;
    }

    *&v115 = v74 * v92;
    *(&v115 + 1) = v91 + 3.0 + 1.0;
    *&v116 = v74 * v94;
    *(&v116 + 1) = v93 + 3.0 + 1.0;
    boost::polygon::detail::robust_fpt<double>::operator+=(&v117, &v115);
    boost::polygon::detail::robust_fpt<double>::operator+=(&v118, &v116);
    v95 = *&v129;
    v96 = v130[0];
    if (*&v129 >= v130[0])
    {
      v98 = v130[0];
      v96 = *&v129;
    }

    else
    {
      v97 = *(&v129 + 1);
      v129 = *v130;
      v130[0] = v95;
      v130[1] = v97;
      v98 = v95;
    }

    v115 = v119;
    v116 = v120;
    if (v106 >= 0.0)
    {
      v111 = v106 * v96;
      v112 = *(&v129 + 1) + 1.0 + 1.0;
      v113 = v106 * v98;
      v114 = v130[1] + 1.0 + 1.0;
      boost::polygon::detail::robust_fpt<double>::operator+=(&v115, &v111);
      v99 = &v113;
    }

    else
    {
      v111 = -(v98 * v106);
      v112 = v130[1] + 1.0 + 1.0;
      v113 = -(v96 * v106);
      v114 = *(&v129 + 1) + 1.0 + 1.0;
      boost::polygon::detail::robust_fpt<double>::operator+=(&v115, &v113);
      v99 = &v111;
    }

    boost::polygon::detail::robust_fpt<double>::operator+=(&v116, v99);
    boost::polygon::detail::robust_fpt<double>::operator-(&v119, &v120);
    v42 = v100;
    boost::polygon::detail::robust_fpt<double>::operator-(&v117, &v118);
    v44 = v101;
    v45 = &v115;
    boost::polygon::detail::robust_fpt<double>::operator-(&v115, &v116);
    v47 = v102;
    v48 = boost::polygon::detail::robust_fpt<double>::operator-(&v119, &v120);
    v49 = boost::polygon::detail::robust_fpt<double>::operator-(&v117, &v118);
    v50 = &v115;
  }

  v103 = boost::polygon::detail::robust_fpt<double>::operator-(v50, v45 + 2);
  *a6 = v48;
  *(a6 + 8) = v49;
  *(a6 + 16) = v103;
  *(a6 + 24) = 1;
  if (v42 > 64.0 || v44 > 64.0 || v47 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(a1, a2, a3, a4, a5, a6, v42 > 64.0, v44 > 64.0, v47 > 64.0);
  }
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss(uint64_t a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v9 = a2[2];
  v10 = a2[3];
  v11 = *a2;
  v12 = a2[1];
  v13 = v9 - v11;
  v58 = v13;
  v14 = v10 - v12;
  v59 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v11, v12, v9, v10);
  v15 = a3[2];
  v16 = a3[3];
  v17 = *a3;
  v18 = a3[1];
  v19 = v15 - v17;
  v56 = v19;
  v20 = v16 - v18;
  v61 = v20;
  v60 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v17, v18, v15, v16);
  v21 = a4[2];
  v22 = a4[3];
  v23 = *a4;
  v24 = a4[1];
  v25 = v21 - v23;
  v57 = v25;
  v26 = v22 - v24;
  v55 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v23, v24, v21, v22);
  *&v74 = v13 * v13;
  *(&v74 + 1) = 0x3FF0000000000000;
  *v73 = v14 * v14;
  *(&v73[0] + 1) = 0x3FF0000000000000;
  v27 = boost::polygon::detail::robust_fpt<double>::operator+(&v74, v73);
  v65 = v28 * 0.5 + 1.0;
  *&v74 = v19 * v19;
  *(&v74 + 1) = 0x3FF0000000000000;
  *v73 = v20 * v20;
  *(&v73[0] + 1) = 0x3FF0000000000000;
  v62 = sqrt(v27);
  v29 = boost::polygon::detail::robust_fpt<double>::operator+(&v74, v73);
  *&v74 = v25 * v25;
  *(&v74 + 1) = 0x3FF0000000000000;
  *v73 = v26 * v26;
  *(&v73[0] + 1) = 0x3FF0000000000000;
  v63 = sqrt(v29);
  v64 = v30 * 0.5 + 1.0;
  v31 = boost::polygon::detail::robust_fpt<double>::operator+(&v74, v73);
  v33 = v32 * 0.5 + 1.0;
  v34 = sqrt(v31);
  v35 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a2[2] - *a2, a2[3] - a2[1], a3[2] - *a3, a3[3] - a3[1]);
  v36 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a3[2] - *a3, a3[3] - a3[1], a4[2] - *a4, a4[3] - a4[1]);
  v37 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(a4[2] - *a4, a4[3] - a4[1], a2[2] - *a2, a2[3] - a2[1]);
  v74 = 0u;
  v75 = 0u;
  *v73 = v34 * v35;
  *(v73 + 1) = v33 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v74, v73);
  *v73 = v62 * v36;
  *(v73 + 1) = v65 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v74, v73);
  *v73 = v63 * v37;
  *(v73 + 1) = v64 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v74, v73);
  memset(v73, 0, sizeof(v73));
  *&v71 = v55 * v35;
  *(&v71 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v73, &v71);
  *&v71 = v59 * v36;
  *(&v71 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v73, &v71);
  *&v71 = v60 * v37;
  *(&v71 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v73, &v71);
  v71 = 0u;
  v72 = 0u;
  v38 = v33 + 2.0 + 1.0;
  *&v69 = v58 * v60 * v34;
  *(&v69 + 1) = v38;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v71, &v69);
  *&v69 = v59 * v56 * v34;
  *(&v69 + 1) = v38;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v71, &v69);
  *&v69 = v56 * v55 * v62;
  *(&v69 + 1) = v65 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v71, &v69);
  *&v69 = v60 * v57 * v62;
  *(&v69 + 1) = v65 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v71, &v69);
  *&v69 = v59 * v57 * v63;
  *(&v69 + 1) = v64 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v71, &v69);
  *&v69 = v58 * v55 * v63;
  *(&v69 + 1) = v64 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v71, &v69);
  v69 = 0u;
  v70 = 0u;
  v66 = v14 * v60 * v34;
  v67 = v38;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v69, &v66);
  v66 = v59 * v61 * v34;
  v67 = v38;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v69, &v66);
  v66 = v61 * v55 * v62;
  v67 = v65 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v69, &v66);
  v66 = v60 * v26 * v62;
  v67 = v65 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v69, &v66);
  v66 = v59 * v26 * v63;
  v67 = v64 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v69, &v66);
  v66 = v14 * v55 * v63;
  v67 = v64 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v69, &v66);
  v66 = boost::polygon::detail::operator+<boost::polygon::detail::robust_fpt<double>>(&v71, v73);
  v67 = v39;
  v68[0] = v40;
  v68[1] = v41;
  v42 = boost::polygon::detail::robust_fpt<double>::operator-(&v74, &v75);
  v44 = v43;
  v45 = boost::polygon::detail::robust_fpt<double>::operator-(&v71, &v72);
  v47 = v44 + v46 + 1.0;
  v48 = v45 / v42;
  v49 = boost::polygon::detail::robust_fpt<double>::operator-(&v69, &v70);
  v51 = v44 + v50 + 1.0;
  v52 = v49 / v42;
  v54 = boost::polygon::detail::robust_fpt<double>::operator-(&v66, v68) / v42;
  *a5 = v48;
  *(a5 + 8) = v52;
  *(a5 + 16) = v54;
  *(a5 + 24) = 1;
  if (v47 > 64.0 || v51 > 64.0 || v44 + v53 + 1.0 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss();
  }
}

BOOL boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_formation_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::circle_existence_predicate<boost::polygon::detail::site_event<int>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>>::lies_outside_vertical_segment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *(a3 + 8) || *(a3 + 4) == *(a3 + 12))
  {
    return 0;
  }

  v4 = 12;
  if ((*(a3 + 32) & 0x20) == 0)
  {
    v4 = 4;
  }

  v5 = *(a3 + v4);
  v6 = *(a2 + 8);
  if (v6 >= 0)
  {
    v6 = 0x8000000000000000 - v6;
  }

  if (v5 >= 0)
  {
    *&v7 = 0x8000000000000000 - COERCE__INT64(v5);
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 >= *&v7;
  v9 = v6 - *&v7;
  if (v9 != 0 && v8 && v9 > 0x40)
  {
    return 1;
  }

  v10 = 4;
  if ((*(a3 + 32) & 0x20) == 0)
  {
    v10 = 12;
  }

  v11 = *(a3 + v10);
  if (v11 >= 0)
  {
    *&v12 = 0x8000000000000000 - COERCE__INT64(v11);
  }

  else
  {
    v12 = v11;
  }

  v8 = *&v12 >= v6;
  v13 = *&v12 - v6;
  return v8 && v13 > 0x40;
}

double *boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(double *a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    boost::polygon::detail::robust_fpt<double>::operator+=(a1, a2);
  }

  else
  {
    boost::polygon::detail::robust_fpt<double>::operator-=(a1 + 2, a2);
  }

  return a1;
}

double *boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(double *a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    boost::polygon::detail::robust_fpt<double>::operator+=(a1 + 2, a2);
  }

  else
  {
    boost::polygon::detail::robust_fpt<double>::operator-=(a1, a2);
  }

  return a1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp()
{
  MEMORY[0x28223BE20]();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v108 = *MEMORY[0x277D85DE8];
  v11 = *v0;
  v12 = *v1;
  v13 = v11 - v12;
  if (v11 > v12)
  {
    v14 = 1;
LABEL_3:
    v102[0] = v13;
    goto LABEL_6;
  }

  if (v13 < 0)
  {
    v13 = v12 - v11;
    v14 = -1;
    goto LABEL_3;
  }

  v14 = 0;
LABEL_6:
  v103 = v14;
  v15 = *v2;
  v16 = v12 - v15;
  if (v12 > v15)
  {
    v17 = 1;
LABEL_8:
    v104[0] = v16;
    goto LABEL_11;
  }

  if (v16 < 0)
  {
    v16 = v15 - v12;
    v17 = -1;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_11:
  v105 = v17;
  v18 = v11 - v15;
  if (v11 > v15)
  {
    v19 = 1;
LABEL_13:
    v106[0] = v18;
    goto LABEL_16;
  }

  if (v18 < 0)
  {
    v18 = v15 - v11;
    v19 = -1;
    goto LABEL_13;
  }

  v19 = 0;
LABEL_16:
  v107 = v19;
  v20 = v0[1];
  v21 = v1[1];
  v22 = v20 - v21;
  if (v20 > v21)
  {
    v23 = 1;
LABEL_18:
    *v96 = v22;
    goto LABEL_21;
  }

  if (v22 < 0)
  {
    v22 = v21 - v20;
    v23 = -1;
    goto LABEL_18;
  }

  v23 = 0;
LABEL_21:
  v97 = v23;
  v24 = v2[1];
  v25 = v21 - v24;
  if (v21 > v24)
  {
    v26 = 1;
LABEL_23:
    v98[0] = v25;
    goto LABEL_26;
  }

  if (v25 < 0)
  {
    v25 = v24 - v21;
    v26 = -1;
    goto LABEL_23;
  }

  v26 = 0;
LABEL_26:
  v99 = v26;
  v27 = v20 - v24;
  if (v20 > v24)
  {
    v28 = 1;
LABEL_28:
    *v100 = v27;
    goto LABEL_31;
  }

  if (v27 < 0)
  {
    v27 = v24 - v20;
    v28 = -1;
    goto LABEL_28;
  }

  v28 = 0;
LABEL_31:
  v101 = v28;
  v29 = v12 + v11;
  if (v29 < 1)
  {
    if (v29 < 0)
    {
      v92[0] = -v29;
      if (-v29 >> 32)
      {
        v30 = -2;
      }

      else
      {
        v30 = -1;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v92[0] = v29;
    v30 = 1;
  }

  v93 = v30;
  v31 = v15 + v12;
  if (v31 < 1)
  {
    if (v31 < 0)
    {
      v94[0] = -v31;
      if (-v31 >> 32)
      {
        v32 = -2;
      }

      else
      {
        v32 = -1;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v94[0] = v31;
    v32 = 1;
  }

  v95 = v32;
  v33 = v21 + v20;
  if (v21 + v20 < 1)
  {
    if (v33 < 0)
    {
      v88[0] = -v33;
      if (-v33 >> 32)
      {
        v34 = -2;
      }

      else
      {
        v34 = -1;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v88[0] = v21 + v20;
    v34 = 1;
  }

  v89 = v34;
  v35 = v24 + v21;
  if (v24 + v21 < 1)
  {
    if (v35 < 0)
    {
      v90[0] = -v35;
      if (-v35 >> 32)
      {
        v36 = -2;
      }

      else
      {
        v36 = -1;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v90[0] = v24 + v21;
    v36 = 1;
  }

  v91 = v36;
  boost::polygon::detail::extended_int<64ul>::mul(__src, v102, v98);
  boost::polygon::detail::extended_int<64ul>::mul(v85, v104, v96);
  boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v85);
  boost::polygon::detail::extended_int<64ul>::p(__dst, v37, v38, v39);
  v42 = 0.5 / ldexp(v40, v41);
  boost::polygon::detail::extended_int<64ul>::mul(__src, v102, v92);
  boost::polygon::detail::extended_int<64ul>::mul(v85, v96, v88);
  boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v85);
  boost::polygon::detail::extended_int<64ul>::mul(v85, v104, v94);
  boost::polygon::detail::extended_int<64ul>::mul(v84, v98, v90);
  boost::polygon::detail::extended_int<64ul>::add(__src, v85, v84);
  if ((v8 & 1) != 0 || v4)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v84, __dst, v98);
    boost::polygon::detail::extended_int<64ul>::mul(v83, __src, v96);
    boost::polygon::detail::extended_int<64ul>::dif (v85, v84, v83);
    boost::polygon::detail::extended_int<64ul>::p(v85, v43, v44, v45);
    *v10 = v42 * ldexp(v46, v47);
    if (v4)
    {
      boost::polygon::detail::extended_int<64ul>::mul(v81, v102, v102);
      boost::polygon::detail::extended_int<64ul>::mul(v80, v96, v96);
      boost::polygon::detail::extended_int<64ul>::add(v82, v81, v80);
      boost::polygon::detail::extended_int<64ul>::mul(v78, v104, v104);
      boost::polygon::detail::extended_int<64ul>::mul(v77, v98, v98);
      boost::polygon::detail::extended_int<64ul>::add(v79, v78, v77);
      boost::polygon::detail::extended_int<64ul>::mul(v83, v82, v79);
      boost::polygon::detail::extended_int<64ul>::mul(v75, v106, v106);
      boost::polygon::detail::extended_int<64ul>::mul(v74, v100, v100);
      boost::polygon::detail::extended_int<64ul>::add(v76, v75, v74);
      boost::polygon::detail::extended_int<64ul>::mul(v84, v83, v76);
      boost::polygon::detail::extended_int<64ul>::p(v84, v48, v49, v50);
      v53 = ldexp(v51, v52);
      v54 = *v10;
      v55 = sqrt(v53);
      if (*v10 >= 0.0)
      {
        if (v42 >= 0.0)
        {
          v67 = v54 + v55 * v42;
        }

        else
        {
          v67 = v54 - v55 * v42;
        }
      }

      else
      {
        boost::polygon::detail::extended_int<64ul>::mul(v82, v85, v85);
        boost::polygon::detail::extended_int<64ul>::dif (v83, v82, v84);
        boost::polygon::detail::extended_int<64ul>::p(v83, v56, v57, v58);
        v61 = ldexp(v59, v60);
        v62 = v42 * v61;
        boost::polygon::detail::extended_int<64ul>::p(v85, v61, v63, v64);
        v67 = v62 / (v55 + ldexp(v65, v66));
      }

      *(v10 + 16) = v67;
    }
  }

  if (v6)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v84, __src, v102);
    boost::polygon::detail::extended_int<64ul>::mul(v83, __dst, v104);
    boost::polygon::detail::extended_int<64ul>::dif (v85, v84, v83);
    boost::polygon::detail::extended_int<64ul>::p(v85, v68, v69, v70);
    *(v10 + 8) = v42 * ldexp(v71, v72);
  }

  v73 = *MEMORY[0x277D85DE8];
}

double *boost::polygon::detail::robust_fpt<double>::operator+=(double *result, double *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result + *a2;
  if ((*result < 0.0 || v3 < 0.0) && (v2 > 0.0 || v3 > 0.0))
  {
    v5 = (v2 * result[1] - v3 * a2[1]) / v4;
    v6 = -v5;
    v7 = v5 < 0.0;
  }

  else
  {
    v5 = result[1];
    v6 = a2[1];
    v7 = v5 < v6;
  }

  if (v7)
  {
    v5 = v6;
  }

  *result = v4;
  result[1] = v5 + 1.0;
  return result;
}

double *boost::polygon::detail::robust_fpt<double>::operator-=(double *result, double *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if ((*result < 0.0 || v3 > 0.0) && (v2 > 0.0 || v3 < 0.0))
  {
    v5 = (v3 * a2[1] + v2 * result[1]) / v4;
    v6 = -v5;
    v7 = v5 < 0.0;
  }

  else
  {
    v5 = result[1];
    v6 = a2[1];
    v7 = v5 < v6;
  }

  if (v7)
  {
    v5 = v6;
  }

  *result = v4;
  result[1] = v5 + 1.0;
  return result;
}

double boost::polygon::detail::robust_fpt<double>::operator-(double *a1, double *a2)
{
  v2 = *a2;
  result = *a1 - *a2;
  if ((*a1 < 0.0 || v2 > 0.0) && (*a1 > 0.0 || v2 < 0.0))
  {
    a2[1];
    a1[1];
  }

  else if (a1[1] < a2[1])
  {
    v4 = *(a2 + 1);
  }

  return result;
}

double boost::polygon::detail::extended_int<64ul>::p(_DWORD *a1, double result, double a3, double a4)
{
  v4 = a1[64];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      LODWORD(result) = *a1;
      result = *&result;
    }

    else if (v5 == 2)
    {
      LODWORD(a3) = *a1;
      LODWORD(result) = a1[1];
      result = *&a3 + *&result * 4294967300.0;
    }

    else
    {
      v6 = 0;
      result = 0.0;
      do
      {
        LODWORD(a4) = a1[v5 - 1 + v6];
        a4 = *&a4;
        result = result * 4294967300.0 + a4;
        --v6;
      }

      while (v6 != -3);
    }

    if (v4 < 0)
    {
      return -result;
    }
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::mul(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = result;
  v4 = a2[64];
  if (v4 && (v6 = *(a3 + 256)) != 0)
  {
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    if (v6 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = -v6;
    }

    result = boost::polygon::detail::extended_int<64ul>::mul(result, a2, v8, a3, v9);
    if (a2[64] > 0 != *(a3 + 256) > 0)
    {
      *(v3 + 256) = -*(v3 + 256);
    }
  }

  else
  {
    *(result + 256) = 0;
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::mul(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a3 - 1 + a5;
  v6 = 64;
  if (v5 < 0x40)
  {
    v6 = a3 - 1 + a5;
  }

  *(result + 256) = v6;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= a3 - 1)
      {
        v9 = a3 - 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = 0;
      if (a3)
      {
        v11 = v9 + 1;
        v12 = v8;
        v13 = a2;
        do
        {
          if (v12 < a5)
          {
            v14 = *(a4 + 4 * v12) * *v13;
            v7 += v14;
            v10 += HIDWORD(v14);
          }

          ++v13;
          --v12;
          --v11;
        }

        while (v11);
      }

      *(result + 4 * v8) = v7;
      v7 = v10 + HIDWORD(v7);
      ++v8;
      v15 = *(result + 256);
    }

    while (v8 < v15);
    if (v7)
    {
      if (v15 != 64)
      {
        *(result + 4 * v15) = v7;
        ++*(result + 256);
      }
    }
  }

  return result;
}

void *boost::polygon::detail::extended_int<64ul>::dif (_DWORD *__dst, unsigned int *__src, int *a3)
{
  v5 = __src[64];
  if (!v5)
  {
    result = memcpy(__dst, a3, 0x104uLL);
LABEL_17:
    __dst[64] = -__dst[64];
    return result;
  }

  v7 = a3[64];
  if (v7)
  {
    if (v5 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = -v5;
    }

    if (v7 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = -v7;
    }

    if (v5 > 0 == v7 > 0)
    {
      result = boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v8, a3, v9, 0);
    }

    else
    {
      result = boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v8, a3, v9);
    }

    if ((__src[64] & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    return memcpy(__dst, __src, 0x104uLL);
  }

  return result;
}

_DWORD *boost::polygon::detail::extended_int<64ul>::add(_DWORD *result, unsigned int *a2, unint64_t a3, unsigned int *a4, unint64_t a5)
{
  do
  {
    v5 = a5;
    v6 = a4;
    a5 = a3;
    a4 = a2;
    a2 = v6;
    a3 = v5;
  }

  while (a5 < v5);
  result[64] = a5;
  v7 = 0;
  if (v5)
  {
    v8 = a4;
    v9 = result;
    v10 = v5;
    do
    {
      v12 = *v8++;
      v11 = v12;
      v13 = *v6++;
      v14 = v7 + v11 + v13;
      *v9++ = v14;
      v7 = HIDWORD(v14);
      --v10;
    }

    while (v10);
  }

  v15 = a5 - v5;
  if (a5 > v5)
  {
    v16 = &result[v5];
    v17 = &a4[v5];
    do
    {
      v18 = *v17++;
      v19 = v7 + v18;
      *v16++ = v19;
      v7 = HIDWORD(v19);
      --v15;
    }

    while (v15);
  }

  if (v7)
  {
    v20 = result[64];
    if (v20 != 64)
    {
      result[v20] = 1;
      ++result[64];
    }
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::dif (uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v6 = a3;
  v8 = result;
  if (a3 >= a5)
  {
    if (a3 != a5 || (a6 & 1) != 0)
    {
      v14 = (result + 256);
      *(result + 256) = a3 - 1;
      if (a5)
      {
LABEL_15:
        v16 = 0;
        v15 = 0;
        do
        {
          *(result + 4 * v16) = *(a2 + 4 * v16) - (v15 & 1) - *(a4 + 4 * v16);
          v17 = *(a2 + 4 * v16);
          v18 = *(a4 + 4 * v16);
          v15 &= v17 == v18;
          if (v17 < v18)
          {
            v15 = 1;
          }

          ++v16;
        }

        while (a5 != v16);
      }

      else
      {
        v15 = 0;
      }

      v19 = v6 > a5;
      v20 = v6 - a5;
      if (v19)
      {
        v21 = (result + 4 * a5);
        v22 = (a2 + 4 * a5);
        do
        {
          *v21++ = *v22 - (v15 & 1);
          v23 = *v22++;
          v15 &= v23 == 0;
          --v20;
        }

        while (v20);
      }

      v24 = *(result + 256);
      if (*(result + 4 * v24))
      {
        *v14 = v24 + 1;
      }
    }

    else
    {
      while (1)
      {
        v11 = v6 - 1;
        v12 = *(a2 - 4 + 4 * v6);
        v13 = *(a4 - 4 + 4 * v6);
        if (v12 < v13)
        {
          v9 = a4;
          v10 = v6;
          goto LABEL_3;
        }

        if (v12 > v13)
        {
          break;
        }

        --v6;
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      if (v6)
      {
        v14 = (result + 256);
        *(result + 256) = v6 - 1;
        a5 = v6;
        goto LABEL_15;
      }

LABEL_25:
      *(result + 256) = 0;
    }
  }

  else
  {
    v9 = a4;
    v10 = a5;
LABEL_3:
    result = boost::polygon::detail::extended_int<64ul>::dif (result, v9, v10, a2, v6, 1);
    *(v8 + 256) = -*(v8 + 256);
  }

  return result;
}

void *boost::polygon::detail::extended_int<64ul>::add(_DWORD *__dst, unsigned int *__src, unsigned int *a3)
{
  v5 = __src[64];
  if (v5)
  {
    v6 = __src;
    v7 = a3[64];
    if (v7)
    {
      if (v5 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = -v5;
      }

      if (v7 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = -v7;
      }

      if (v5 > 0 == v7 > 0)
      {
        result = boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v8, a3, v9);
      }

      else
      {
        result = boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v8, a3, v9, 0);
      }

      if ((v6[64] & 0x80000000) != 0)
      {
        __dst[64] = -__dst[64];
      }

      return result;
    }
  }

  else
  {
    __src = a3;
  }

  return memcpy(__dst, __src, 0x104uLL);
}

double boost::polygon::detail::robust_fpt<double>::operator+(double *a1, double *a2)
{
  v2 = *a2;
  result = *a1 + *a2;
  if ((*a1 < 0.0 || v2 < 0.0) && (*a1 > 0.0 || v2 > 0.0))
  {
    a1[1];
    a2[1];
  }

  else if (a1[1] < a2[1])
  {
    v4 = *(a2 + 1);
  }

  return result;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v10;
  v21 = v20;
  v23 = v22;
  v24 = v9;
  v165 = *MEMORY[0x277D85DE8];
  v25 = v10[3];
  v26 = v10[1];
  v27 = v25 <= v26;
  v28 = v25 - v26;
  if (!v27)
  {
    v29 = 1;
LABEL_3:
    *v136 = v28;
    goto LABEL_6;
  }

  if (v28 < 0)
  {
    v28 = -v28;
    v29 = -1;
    goto LABEL_3;
  }

  v29 = 0;
LABEL_6:
  v137 = v29;
  v30 = *v10;
  v31 = v10[2];
  v27 = v30 <= v31;
  v32 = v30 - v31;
  if (!v27)
  {
    v33 = 1;
LABEL_8:
    v134[0] = v32;
    goto LABEL_11;
  }

  if (v32 < 0)
  {
    v32 = -v32;
    v33 = -1;
    goto LABEL_8;
  }

  v33 = 0;
LABEL_11:
  v135 = v33;
  boost::polygon::detail::extended_int<64ul>::mul(v145, v136, v136);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v134, v134);
  boost::polygon::detail::extended_int<64ul>::add(__src, v145, v140);
  v34 = v21[1];
  v35 = v23[1];
  v36 = v34 - v35;
  if (v34 > v35)
  {
    v37 = 1;
LABEL_13:
    *&v131[0] = v36;
    goto LABEL_16;
  }

  if (v36 < 0)
  {
    v36 = v35 - v34;
    v37 = -1;
    goto LABEL_13;
  }

  v37 = 0;
LABEL_16:
  v132 = v37;
  v38 = *v23;
  v39 = *v21;
  v40 = v38 - v39;
  if (v38 > v39)
  {
    v41 = 1;
LABEL_18:
    *&v129[0] = v40;
    goto LABEL_21;
  }

  if (v40 < 0)
  {
    v40 = v39 - v38;
    v41 = -1;
    goto LABEL_18;
  }

  v41 = 0;
LABEL_21:
  v130 = v41;
  v42 = v39 + v38;
  if (v42 < 1)
  {
    if (v42 < 0)
    {
      *v127 = -v42;
      if (-v42 >> 32)
      {
        v43 = -2;
      }

      else
      {
        v43 = -1;
      }
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    *v127 = v42;
    v43 = 1;
  }

  v128 = v43;
  v44 = v35 + v34;
  if (v44 < 1)
  {
    if (v44 < 0)
    {
      v125[0] = -v44;
      if (-v44 >> 32)
      {
        v45 = -2;
      }

      else
      {
        v45 = -1;
      }
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v125[0] = v44;
    v45 = 1;
  }

  v126 = v45;
  boost::polygon::detail::extended_int<64ul>::mul(v145, v136, v131);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v134, v129);
  boost::polygon::detail::extended_int<64ul>::add(v123, v145, v140);
  boost::polygon::detail::extended_int<64ul>::mul(v145, v131, v134);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v129, v136);
  boost::polygon::detail::extended_int<64ul>::dif (__dst, v145, v140);
  v46 = v19[3];
  v47 = v23[1];
  v27 = v46 <= v47;
  v48 = v46 - v47;
  if (!v27)
  {
    v49 = 1;
LABEL_41:
    v120[0] = v48;
    goto LABEL_44;
  }

  if (v48 < 0)
  {
    v48 = -v48;
    v49 = -1;
    goto LABEL_41;
  }

  v49 = 0;
LABEL_44:
  v121 = v49;
  v50 = *v23;
  v51 = v19[2];
  v27 = v50 <= v51;
  v52 = v50 - v51;
  if (!v27)
  {
    v53 = 1;
LABEL_46:
    v118[0] = v52;
    goto LABEL_49;
  }

  if (v52 < 0)
  {
    v52 = -v52;
    v53 = -1;
    goto LABEL_46;
  }

  v53 = 0;
LABEL_49:
  v119 = v53;
  boost::polygon::detail::extended_int<64ul>::mul(v145, v136, v118);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v134, v120);
  boost::polygon::detail::extended_int<64ul>::dif (v117, v145, v140);
  v54 = v19[3];
  v55 = v21[1];
  v27 = v54 <= v55;
  v56 = v54 - v55;
  if (!v27)
  {
    v57 = 1;
LABEL_51:
    v120[0] = v56;
    goto LABEL_54;
  }

  if (v56 < 0)
  {
    v56 = -v56;
    v57 = -1;
    goto LABEL_51;
  }

  v57 = 0;
LABEL_54:
  v121 = v57;
  v58 = *v21;
  v59 = v19[2];
  v27 = v58 <= v59;
  v60 = v58 - v59;
  if (!v27)
  {
    v61 = 1;
LABEL_56:
    v118[0] = v60;
    goto LABEL_59;
  }

  if (v60 < 0)
  {
    v60 = -v60;
    v61 = -1;
    goto LABEL_56;
  }

  v61 = 0;
LABEL_59:
  v119 = v61;
  boost::polygon::detail::extended_int<64ul>::mul(v145, v136, v118);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v134, v120);
  boost::polygon::detail::extended_int<64ul>::dif (v116, v145, v140);
  boost::polygon::detail::extended_int<64ul>::add(v115, v117, v116);
  if (!__dst[64])
  {
    boost::polygon::detail::extended_int<64ul>::mul(v145, v123, v123);
    boost::polygon::detail::extended_int<64ul>::mul(v140, v115, v115);
    boost::polygon::detail::extended_int<64ul>::dif (v139, v145, v140);
    boost::polygon::detail::extended_int<64ul>::mul(v145, v123, v115);
    memcpy(__dst, v145, sizeof(__dst));
    boost::polygon::detail::extended_int<64ul>::mul(v138, __dst, v127);
    v145[0] = 2;
    v145[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v140, v138, v145);
    boost::polygon::detail::extended_int<64ul>::mul(v114, v139, v131);
    boost::polygon::detail::extended_int<64ul>::add(v145, v140, v114);
    memcpy(v140, __src, sizeof(v140));
    boost::polygon::detail::extended_int<64ul>::mul(v113, __dst, v115);
    v138[0] = 2;
    v138[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v114, v113, v138);
    boost::polygon::detail::extended_int<64ul>::mul(v112, v139, v123);
    boost::polygon::detail::extended_int<64ul>::add(v138, v114, v112);
    memcpy(v146, v138, sizeof(v146));
    v141[0] = 1;
    v141[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v113, __dst, v125);
    v138[0] = 2;
    v138[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v114, v113, v138);
    boost::polygon::detail::extended_int<64ul>::mul(v112, v139, v129);
    boost::polygon::detail::extended_int<64ul>::add(v138, v114, v112);
    memcpy(v147, v138, sizeof(v147));
    boost::polygon::detail::extended_int<64ul>::p(__dst, v90, v91, v92);
    v95 = ldexp(v93, v94);
    v97 = 1.0;
    v68 = 1.0 / v95;
    if (v14)
    {
      boost::polygon::detail::extended_int<64ul>::p(v145, v95, 1.0, v96);
      v100 = ldexp(v98, v99);
      v97 = 0.25;
      v95 = v68 * (v100 * 0.25);
      *v16 = v95;
      if (!v12)
      {
LABEL_78:
        if (!a9)
        {
          goto LABEL_84;
        }

        goto LABEL_82;
      }
    }

    else if (!v12)
    {
      goto LABEL_78;
    }

    boost::polygon::detail::extended_int<64ul>::p(v147, v95, v97, v96);
    v103 = ldexp(v101, v102);
    v97 = 0.25;
    v95 = v68 * (v103 * 0.25);
    v16[1] = v95;
    if (!a9)
    {
      goto LABEL_84;
    }

LABEL_82:
    v104 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v145, v140, v95, v97, v96);
    v87 = ldexp(*&v104, v105);
    v89 = 0.25;
LABEL_83:
    v106 = v87 * v89;
    v107 = v68 * v106;
    boost::polygon::detail::extended_int<64ul>::p(__src, v106, v89, v88);
    v16[2] = v107 / sqrt(ldexp(v108, v109));
    goto LABEL_84;
  }

  boost::polygon::detail::extended_int<64ul>::mul(v113, v123, v123);
  boost::polygon::detail::extended_int<64ul>::mul(v112, __dst, __dst);
  boost::polygon::detail::extended_int<64ul>::add(v114, v113, v112);
  boost::polygon::detail::extended_int<64ul>::mul(v139, v114, v117);
  boost::polygon::detail::extended_int<64ul>::mul(v140, v139, v116);
  v145[0] = 4;
  v145[64] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v138, v140, v145);
  boost::polygon::detail::extended_int<64ul>::p(__dst, v62, v63, v64);
  v67 = ldexp(v65, v66);
  v68 = 1.0 / v67 * (1.0 / v67);
  if ((v14 & 1) != 0 || a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v139, v127, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v140, v139, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v113, v123, v115);
    boost::polygon::detail::extended_int<64ul>::mul(v114, v113, v131);
    boost::polygon::detail::extended_int<64ul>::add(v145, v140, v114);
    v140[0] = 1;
    v140[64] = 1;
    *&v139[192] = v131[12];
    *&v139[208] = v131[13];
    *&v139[224] = v131[14];
    *&v139[240] = v131[15];
    *&v139[128] = v131[8];
    *&v139[144] = v131[9];
    *&v139[160] = v131[10];
    *&v139[176] = v131[11];
    *&v139[64] = v131[4];
    *&v139[80] = v131[5];
    *&v139[96] = v131[6];
    *&v139[112] = v131[7];
    *v139 = v131[0];
    *&v139[16] = v131[1];
    *&v139[32] = v131[2];
    *&v139[48] = v131[3];
    v69 = v132;
    if (v18 == 2)
    {
      v69 = -v132;
    }

    *&v146[192] = *&v139[192];
    *&v146[208] = *&v139[208];
    *&v146[224] = *&v139[224];
    *&v146[240] = *&v139[240];
    *&v146[128] = *&v139[128];
    *&v146[144] = *&v139[144];
    *&v146[160] = *&v139[160];
    *&v146[176] = *&v139[176];
    *&v146[64] = *&v139[64];
    *&v146[80] = *&v139[80];
    *&v146[96] = *&v139[96];
    *&v146[112] = *&v139[112];
    *v146 = *v139;
    *&v146[16] = *&v139[16];
    *&v146[32] = *&v139[32];
    *&v146[48] = *&v139[48];
    *&v146[256] = v69;
    memcpy(v141, v138, sizeof(v141));
    if (v14)
    {
      v73 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v145, v140, v70, v71, v72);
      *v16 = v68 * (ldexp(*&v73, v74) * 0.5);
    }
  }

  if ((v12 & 1) != 0 || a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v113, v125, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v114, v113, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v111, v123, v115);
    boost::polygon::detail::extended_int<64ul>::mul(v112, v111, v129);
    boost::polygon::detail::extended_int<64ul>::add(v139, v114, v112);
    memcpy(v147, v139, sizeof(v147));
    v142[0] = 1;
    v143 = 1;
    *&v139[192] = v129[12];
    *&v139[208] = v129[13];
    *&v139[224] = v129[14];
    *&v139[240] = v129[15];
    *&v139[128] = v129[8];
    *&v139[144] = v129[9];
    *&v139[160] = v129[10];
    *&v139[176] = v129[11];
    *&v139[64] = v129[4];
    *&v139[80] = v129[5];
    *&v139[96] = v129[6];
    *&v139[112] = v129[7];
    *v139 = v129[0];
    *&v139[16] = v129[1];
    *&v139[32] = v129[2];
    *&v139[48] = v129[3];
    v75 = v130;
    if (v18 == 2)
    {
      v75 = -v130;
    }

    v160 = *&v139[192];
    v161 = *&v139[208];
    v162 = *&v139[224];
    v163 = *&v139[240];
    v156 = *&v139[128];
    v157 = *&v139[144];
    v158 = *&v139[160];
    v159 = *&v139[176];
    v152 = *&v139[64];
    v153 = *&v139[80];
    v154 = *&v139[96];
    v155 = *&v139[112];
    v148 = *v139;
    v149 = *&v139[16];
    v150 = *&v139[32];
    v151 = *&v139[48];
    v164 = v75;
    memcpy(v144, v138, sizeof(v144));
    if (v12)
    {
      v79 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v147, v142, v76, v77, v78);
      v16[1] = v68 * (ldexp(*&v79, v80) * 0.5);
    }
  }

  if (a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v139, v140, __src);
    memcpy(v140, v139, sizeof(v140));
    boost::polygon::detail::extended_int<64ul>::mul(v139, v141, __src);
    memcpy(v141, v139, sizeof(v141));
    boost::polygon::detail::extended_int<64ul>::mul(v113, __dst, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v112, v123, v123);
    boost::polygon::detail::extended_int<64ul>::add(v114, v113, v112);
    boost::polygon::detail::extended_int<64ul>::mul(v139, v115, v114);
    memcpy(v147, v139, sizeof(v147));
    v142[0] = 1;
    v143 = 1;
    *&v139[192] = v123[12];
    *&v139[208] = v123[13];
    *&v139[224] = v123[14];
    *&v139[240] = v123[15];
    *&v139[128] = v123[8];
    *&v139[144] = v123[9];
    *&v139[160] = v123[10];
    *&v139[176] = v123[11];
    *&v139[64] = v123[4];
    *&v139[80] = v123[5];
    *&v139[96] = v123[6];
    *&v139[112] = v123[7];
    *v139 = v123[0];
    *&v139[16] = v123[1];
    *&v139[32] = v123[2];
    *&v139[48] = v123[3];
    v81 = v124;
    if (v18 == 2)
    {
      v81 = -v124;
    }

    v160 = *&v139[192];
    v161 = *&v139[208];
    v162 = *&v139[224];
    v163 = *&v139[240];
    v156 = *&v139[128];
    v157 = *&v139[144];
    v158 = *&v139[160];
    v159 = *&v139[176];
    v152 = *&v139[64];
    v153 = *&v139[80];
    v154 = *&v139[96];
    v155 = *&v139[112];
    v148 = *v139;
    v149 = *&v139[16];
    v150 = *&v139[32];
    v151 = *&v139[48];
    v164 = v81;
    memcpy(v144, v138, sizeof(v144));
    v85 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(v24, v145, v140, v82, v83, v84);
    v87 = ldexp(*&v85, v86);
    v89 = 0.5;
    goto LABEL_83;
  }

LABEL_84:
  v110 = *MEMORY[0x277D85DE8];
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4, double a5, double a6)
{
  v9 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(a4, a5, a6, a1, a2, a3);
  v11 = v10;
  v31 = v10;
  v32 = v12;
  boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v9, v13, v14, a1, a2 + 65, a3 + 65);
  v29 = v15;
  v30 = v16;
  if (v11 >= 0.0 && v15 >= 0.0 || v11 <= 0.0 && v15 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v31, &v29);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v26, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(__src, v26, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v25);
  boost::polygon::detail::extended_int<64ul>::p(__dst, v18, v19, v20);
  v22 = frexp(v21, &v33);
  v23 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v31, &v29));
  return frexp(v22 / v23, &v33);
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(unsigned int *a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6)
{
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v34 = v9;
  v35 = v10;
  v14 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2 + 130, a3 + 130, v11, v12, v13));
  v32 = v14;
  v33 = v15;
  if (v9 >= 0.0 && v14 >= 0.0 || v9 <= 0.0 && v14 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v34, &v32);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v28, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(v29, v28, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v26, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v27, v26, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::add(__dst, v29, v27);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 130, (a2 + 130));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 130));
  boost::polygon::detail::extended_int<64ul>::dif (v31, __dst, v25);
  boost::polygon::detail::extended_int<64ul>::mul(v22, a2 + 195, (a2 + 195));
  boost::polygon::detail::extended_int<64ul>::mul(v23, v22, (a3 + 195));
  boost::polygon::detail::extended_int<64ul>::dif (__src, v31, v23);
  memcpy(a1, __src, 0x104uLL);
  a1[325] = 1;
  a1[389] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(__dst, a2, (a2 + 65));
  LODWORD(__src[0]) = 2;
  LODWORD(__src[32]) = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v31, __dst, __src);
  memcpy(a1 + 65, v31, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3, (a3 + 65));
  memcpy(a1 + 390, __src, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__dst, a2 + 130, (a2 + 195));
  LODWORD(__src[0]) = 2;
  LODWORD(__src[32]) = -1;
  boost::polygon::detail::extended_int<64ul>::mul(v31, __dst, __src);
  memcpy(a1 + 130, v31, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3 + 130, (a3 + 195));
  memcpy(a1 + 455, __src, 0x104uLL);
  v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(a1, a1, a1 + 325, v17, v18, v19));
  v21 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v34, &v32));
  return frexp(v20 / v21, &__src[1]);
}

long double boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(double a1, double a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  boost::polygon::detail::extended_int<64ul>::p(a5, a1, a2, a3);
  v8 = frexp(v7, &v18);
  boost::polygon::detail::extended_int<64ul>::p(a6, v8, v9, v10);
  LODWORD(a6) = v11;
  v13 = frexp(v12, &v18);
  LODWORD(v18) = v18 + a6;
  v16 = v13;
  v17 = v18;
  boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(&v16);
  return frexp(v8 * v14, &v18);
}

uint64_t boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(_DWORD *a1, long double *a2)
{
  v2 = *a1;
  if (*a1 == 0.0)
  {
    return *a2;
  }

  v3 = *(a2 + 2);
  v4 = a1[2];
  if (v3 > v4 + 54)
  {
    return *a2;
  }

  v7 = *a2;
  if (*a2 == 0.0 || v4 > v3 + 54)
  {
    return *a1;
  }

  if (v4 >= v3)
  {
    v11 = ldexp(v2, v4 - v3);
    *&v12 = frexp(v7 + v11, &v12 + 2);
    v10 = DWORD2(v12) + v3;
  }

  else
  {
    v9 = ldexp(*a2, v3 - v4);
    *&v12 = frexp(v2 + v9, &v12 + 2);
    v10 = DWORD2(v12) + v4;
  }

  DWORD2(v12) = v10;
  return v12;
}

uint64_t boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(_DWORD *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (*a1 == 0.0 || (v4 = a1[2], v3 > v4 + 54))
  {
    v5 = -*a2;
    goto LABEL_4;
  }

  v9 = *a2;
  if (*a2 != 0.0 && v4 <= v3 + 54)
  {
    if (v4 < v3)
    {
      v11 = ldexp(-v9, v3 - v4);
      v6 = frexp(v2 + v11, &v12 + 2);
      v7 = DWORD2(v12) + v4;
      goto LABEL_5;
    }

    v5 = ldexp(v2, v4 - v3) - v9;
LABEL_4:
    v6 = frexp(v5, &v12 + 2);
    v7 = DWORD2(v12) + v3;
LABEL_5:
    DWORD2(v12) = v7;
    return *&v6;
  }

  return *a1;
}

long double boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    v1 = v1 + v1;
  }

  return frexp(sqrt(v1), &v3);
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(_DWORD *a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6)
{
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v31 = v9;
  v32 = v10;
  boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v11, v12, v13, a1, a2 + 130, a3 + 130);
  v29 = v14;
  v30 = v15;
  if (v9 >= 0.0 && v14 >= 0.0 || v9 <= 0.0 && v14 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v31, &v29);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v26, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(v27, v26, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::add(__dst, v27, v25);
  boost::polygon::detail::extended_int<64ul>::mul(v22, a2 + 130, (a2 + 130));
  boost::polygon::detail::extended_int<64ul>::mul(v23, v22, (a3 + 130));
  boost::polygon::detail::extended_int<64ul>::dif (__src, __dst, v23);
  memcpy(a1 + 195, __src, 0x104uLL);
  a1[520] = 1;
  a1[584] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v27, a2, (a2 + 65));
  __src[0] = 2;
  __src[64] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(__dst, v27, __src);
  memcpy(a1 + 260, __dst, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3, (a3 + 65));
  memcpy(a1 + 585, __src, 0x104uLL);
  v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a1 + 195, a1 + 520, v17, v18, v19));
  v21 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v31, &v29));
  return frexp(v20 / v21, &__src[2]);
}

double boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator/=(double *a1, double *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (*a2 >= 0.0)
  {
    *a1 = *a1 / v2;
    v9 = v3 + a2[1] + 1.0;
    v10 = a1[3];
    v11 = a1[2] / *a2;
    a1[1] = v9;
    *&v8 = v10 + a2[1] + 1.0;
    a1[2] = v11;
    *(a1 + 3) = v8;
  }

  else
  {
    *a1 = *a1 / -v2;
    v4 = v3 + a2[1] + 1.0;
    v5 = a1[3];
    v6 = a1[2] / -*a2;
    a1[1] = v4;
    v7 = v5 + a2[1] + 1.0;
    a1[2] = v6;
    a1[3] = v7;
    v8 = *a1;
    *a1 = *(a1 + 1);
    *(a1 + 1) = v8;
  }

  return *&v8;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v13 = v12;
  v115 = v14;
  v16 = v15;
  v18 = v17;
  v19 = v11;
  v20 = v10;
  v22 = v21;
  v23 = v9;
  v151 = *MEMORY[0x277D85DE8];
  v24 = *v10;
  v25 = v10[2];
  v26 = v24 <= v25;
  v27 = v24 - v25;
  if (!v26)
  {
    v28 = 1;
LABEL_3:
    *v146 = v27;
    goto LABEL_6;
  }

  if (v27 < 0)
  {
    v27 = -v27;
    v28 = -1;
    goto LABEL_3;
  }

  v28 = 0;
LABEL_6:
  v147 = v28;
  v29 = v10[1];
  v30 = v10[3];
  v26 = v29 <= v30;
  v31 = v29 - v30;
  if (!v26)
  {
    v32 = 1;
LABEL_8:
    *v142 = v31;
    goto LABEL_11;
  }

  if (v31 < 0)
  {
    v31 = -v31;
    v32 = -1;
    goto LABEL_8;
  }

  v32 = 0;
LABEL_11:
  v143 = v32;
  v33 = v11[2];
  v34 = *v11;
  v26 = v33 <= v34;
  v35 = v33 - v34;
  if (!v26)
  {
    v36 = 1;
LABEL_13:
    v148[0] = v35;
    goto LABEL_16;
  }

  if (v35 < 0)
  {
    v35 = -v35;
    v36 = -1;
    goto LABEL_13;
  }

  v36 = 0;
LABEL_16:
  v149 = v36;
  v37 = v11[3];
  v38 = v11[1];
  v26 = v37 <= v38;
  v39 = v37 - v38;
  if (!v26)
  {
    v40 = 1;
LABEL_18:
    v144[0] = v39;
    goto LABEL_21;
  }

  if (v39 < 0)
  {
    v39 = -v39;
    v40 = -1;
    goto LABEL_18;
  }

  v40 = 0;
LABEL_21:
  v145 = v40;
  boost::polygon::detail::extended_int<64ul>::mul(v135, v148, v142);
  boost::polygon::detail::extended_int<64ul>::mul(v131, v146, v144);
  boost::polygon::detail::extended_int<64ul>::dif (v129, v135, v131);
  if (v130)
  {
    v41 = *v20;
    if (*v20 <= 0)
    {
      if ((v41 & 0x80000000) == 0)
      {
        v42 = 0;
LABEL_44:
        v135[64] = v42;
        boost::polygon::detail::extended_int<64ul>::mul(v131, v142, v135);
        v69 = v20[1];
        if (v69 <= 0)
        {
          if ((v69 & 0x80000000) == 0)
          {
            v70 = 0;
LABEL_49:
            v135[64] = v70;
            boost::polygon::detail::extended_int<64ul>::mul(v150, v146, v135);
            boost::polygon::detail::extended_int<64ul>::dif (v139, v131, v150);
            v71 = v19[3];
            if (v71 <= 0)
            {
              if ((v71 & 0x80000000) == 0)
              {
                v72 = 0;
LABEL_54:
                v135[64] = v72;
                boost::polygon::detail::extended_int<64ul>::mul(v131, v148, v135);
                v73 = v19[2];
                if (v73 <= 0)
                {
                  if ((v73 & 0x80000000) == 0)
                  {
                    v74 = 0;
LABEL_59:
                    v135[64] = v74;
                    boost::polygon::detail::extended_int<64ul>::mul(v150, v144, v135);
                    boost::polygon::detail::extended_int<64ul>::dif (v135, v131, v150);
                    memcpy(v141, v135, sizeof(v141));
                    boost::polygon::detail::extended_int<64ul>::mul(v135, v146, v141);
                    boost::polygon::detail::extended_int<64ul>::mul(v131, v148, v139);
                    boost::polygon::detail::extended_int<64ul>::add(v128, v135, v131);
                    boost::polygon::detail::extended_int<64ul>::mul(v135, v142, v141);
                    boost::polygon::detail::extended_int<64ul>::mul(v131, v144, v139);
                    boost::polygon::detail::extended_int<64ul>::add(v127, v135, v131);
                    v75 = *v22;
                    if (*v22 <= 0)
                    {
                      if ((v75 & 0x80000000) == 0)
                      {
                        v76 = 0;
LABEL_64:
                        v135[64] = v76;
                        boost::polygon::detail::extended_int<64ul>::mul(v131, v129, v135);
                        boost::polygon::detail::extended_int<64ul>::dif (__src, v128, v131);
                        v77 = v22[1];
                        if (v77 <= 0)
                        {
                          if ((v77 & 0x80000000) == 0)
                          {
                            v78 = 0;
LABEL_69:
                            v135[64] = v78;
                            boost::polygon::detail::extended_int<64ul>::mul(v131, v129, v135);
                            boost::polygon::detail::extended_int<64ul>::dif (v125, v127, v131);
                            if (!(__src[64] | v125[64]))
                            {
                              boost::polygon::detail::extended_int<64ul>::p(v129, v79, v80, v81);
                              v84 = ldexp(v82, v83);
                              boost::polygon::detail::extended_int<64ul>::p(v128, v84, v85, v86);
                              v89 = ldexp(v87, v88);
                              v90 = v89 / v84;
                              boost::polygon::detail::extended_int<64ul>::p(v127, v89, v91, v92);
                              v95 = ldexp(v93, v94);
                              *v16 = v90;
                              *(v16 + 8) = v95 / v84;
                              *(v16 + 16) = v90;
                              *(v16 + 24) = 1;
                              goto LABEL_97;
                            }

                            if (v130 >= 0)
                            {
                              v96 = -1;
                            }

                            else
                            {
                              v96 = 1;
                            }

                            if (v18 == 2)
                            {
                              v97 = v96;
                            }

                            else
                            {
                              v97 = -v96;
                            }

                            v98 = 1;
                            if (v97 <= 0)
                            {
                              if ((v97 & 0x80000000) == 0)
                              {
                                v98 = 0;
LABEL_85:
                                v124[64] = v98;
                                memcpy(v150, __src, sizeof(v150));
                                *&v150[256] = -*&v150[256];
                                boost::polygon::detail::extended_int<64ul>::mul(v131, v148, v150);
                                memcpy(__dst, v125, sizeof(__dst));
                                __dst[64] = -__dst[64];
                                boost::polygon::detail::extended_int<64ul>::mul(v123, v144, __dst);
                                boost::polygon::detail::extended_int<64ul>::add(v135, v131, v123);
                                memcpy(v123, __src, sizeof(v123));
                                v123[64] = -v123[64];
                                boost::polygon::detail::extended_int<64ul>::mul(v150, v146, v123);
                                memcpy(v121, v125, sizeof(v121));
                                v121[64] = -v121[64];
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v142, v121);
                                boost::polygon::detail::extended_int<64ul>::add(v131, v150, __dst);
                                memcpy(v136, v131, sizeof(v136));
                                memcpy(v137, v124, sizeof(v137));
                                v138[64] = 0;
                                boost::polygon::detail::extended_int<64ul>::mul(v150, v146, v146);
                                boost::polygon::detail::extended_int<64ul>::mul(v123, v142, v142);
                                boost::polygon::detail::extended_int<64ul>::add(v131, v150, v123);
                                boost::polygon::detail::extended_int<64ul>::mul(v123, v148, v148);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v144, v144);
                                boost::polygon::detail::extended_int<64ul>::add(v150, v123, __dst);
                                memcpy(v132, v150, sizeof(v132));
                                boost::polygon::detail::extended_int<64ul>::mul(v123, v146, v148);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v142, v144);
                                boost::polygon::detail::extended_int<64ul>::add(v150, v123, __dst);
                                memcpy(v133, v150, sizeof(v133));
                                boost::polygon::detail::extended_int<64ul>::mul(v120, v146, v125);
                                boost::polygon::detail::extended_int<64ul>::mul(v119, v142, __src);
                                boost::polygon::detail::extended_int<64ul>::dif (v121, v120, v119);
                                boost::polygon::detail::extended_int<64ul>::mul(v117, v148, v125);
                                boost::polygon::detail::extended_int<64ul>::mul(v116, v144, __src);
                                boost::polygon::detail::extended_int<64ul>::dif (v118, v117, v116);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v121, v118);
                                *v150 = 2;
                                *&v150[256] = -1;
                                boost::polygon::detail::extended_int<64ul>::mul(v123, __dst, v150);
                                memcpy(v134, v123, sizeof(v134));
                                v99 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                v101 = ldexp(*&v99, v100);
                                boost::polygon::detail::extended_int<64ul>::p(v129, v101, v102, v103);
                                v106 = v101 * ldexp(v104, v105);
                                if (v13)
                                {
                                  boost::polygon::detail::extended_int<64ul>::mul(v121, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, v125, v125);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v121, v120);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v144, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v117, __src, v148);
                                  boost::polygon::detail::extended_int<64ul>::mul(v116, v125, v144);
                                  boost::polygon::detail::extended_int<64ul>::add(v118, v117, v116);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v127, v118);
                                  boost::polygon::detail::extended_int<64ul>::dif (v150, v123, v119);
                                  memcpy(v135, v150, sizeof(v135));
                                  boost::polygon::detail::extended_int<64ul>::mul(v121, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, v125, v125);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v121, v120);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v142, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v117, __src, v146);
                                  boost::polygon::detail::extended_int<64ul>::mul(v116, v125, v142);
                                  boost::polygon::detail::extended_int<64ul>::add(v118, v117, v116);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v127, v118);
                                  boost::polygon::detail::extended_int<64ul>::dif (v150, v123, v119);
                                  memcpy(v136, v150, sizeof(v136));
                                  boost::polygon::detail::extended_int<64ul>::mul(v150, v127, v124);
                                  memcpy(v137, v150, sizeof(v137));
                                  v107 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                  *(v16 + 8) = ldexp(*&v107, v108) / v106;
                                }

                                if ((v115 & 1) != 0 || a9)
                                {
                                  boost::polygon::detail::extended_int<64ul>::mul(v121, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, v125, v125);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v121, v120);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v148, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v117, __src, v148);
                                  boost::polygon::detail::extended_int<64ul>::mul(v116, v125, v144);
                                  boost::polygon::detail::extended_int<64ul>::add(v118, v117, v116);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v118);
                                  boost::polygon::detail::extended_int<64ul>::dif (v150, v123, v119);
                                  memcpy(v135, v150, sizeof(v135));
                                  boost::polygon::detail::extended_int<64ul>::mul(v121, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, v125, v125);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v121, v120);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v146, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v117, __src, v146);
                                  boost::polygon::detail::extended_int<64ul>::mul(v116, v125, v142);
                                  boost::polygon::detail::extended_int<64ul>::add(v118, v117, v116);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v118);
                                  boost::polygon::detail::extended_int<64ul>::dif (v150, v123, v119);
                                  memcpy(v136, v150, sizeof(v136));
                                  boost::polygon::detail::extended_int<64ul>::mul(v150, v128, v124);
                                  memcpy(v137, v150, sizeof(v137));
                                  if (v115)
                                  {
                                    v109 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                    *v16 = ldexp(*&v109, v110) / v106;
                                  }

                                  if (a9)
                                  {
                                    boost::polygon::detail::extended_int<64ul>::mul(v120, __src, __src);
                                    boost::polygon::detail::extended_int<64ul>::mul(v119, v125, v125);
                                    boost::polygon::detail::extended_int<64ul>::add(v121, v120, v119);
                                    boost::polygon::detail::extended_int<64ul>::mul(__dst, v129, v121);
                                    if (v101 >= 0.0)
                                    {
                                      v111 = 1;
                                    }

                                    else
                                    {
                                      v111 = -1;
                                    }

                                    *v150 = 1;
                                    *&v150[256] = v111;
                                    boost::polygon::detail::extended_int<64ul>::mul(v123, __dst, v150);
                                    memcpy(v138, v123, sizeof(v138));
                                    v112 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                    v68 = ldexp(*&v112, v113) / v106;
LABEL_96:
                                    *(v16 + 16) = v68;
                                    goto LABEL_97;
                                  }
                                }

                                goto LABEL_97;
                              }

                              v98 = -1;
                            }

                            v124[0] = 1;
                            goto LABEL_85;
                          }

                          v77 = -v77;
                          v78 = -1;
                        }

                        else
                        {
                          v78 = 1;
                        }

                        v135[0] = v77;
                        goto LABEL_69;
                      }

                      v75 = -v75;
                      v76 = -1;
                    }

                    else
                    {
                      v76 = 1;
                    }

                    v135[0] = v75;
                    goto LABEL_64;
                  }

                  v73 = -v73;
                  v74 = -1;
                }

                else
                {
                  v74 = 1;
                }

                v135[0] = v73;
                goto LABEL_59;
              }

              v71 = -v71;
              v72 = -1;
            }

            else
            {
              v72 = 1;
            }

            v135[0] = v71;
            goto LABEL_54;
          }

          v69 = -v69;
          v70 = -1;
        }

        else
        {
          v70 = 1;
        }

        v135[0] = v69;
        goto LABEL_49;
      }

      v41 = -v41;
      v42 = -1;
    }

    else
    {
      v42 = 1;
    }

    v135[0] = v41;
    goto LABEL_44;
  }

  boost::polygon::detail::extended_int<64ul>::mul(v131, v146, v146);
  boost::polygon::detail::extended_int<64ul>::mul(v139, v142, v142);
  boost::polygon::detail::extended_int<64ul>::add(v135, v131, v139);
  boost::polygon::detail::extended_int<64ul>::p(v135, v43, v44, v45);
  v48 = ldexp(v46, v47);
  v49 = v48 + v48;
  boost::polygon::detail::extended_int<64ul>::operator*(v142, *v19 - v20[2], v135);
  boost::polygon::detail::extended_int<64ul>::operator*(v146, v19[1] - v20[3], v131);
  boost::polygon::detail::extended_int<64ul>::dif (v139, v135, v131);
  boost::polygon::detail::extended_int<64ul>::operator*(v146, v22[1] - v20[3], v135);
  boost::polygon::detail::extended_int<64ul>::operator*(v142, *v22 - v20[2], v131);
  boost::polygon::detail::extended_int<64ul>::dif (v128, v135, v131);
  boost::polygon::detail::extended_int<64ul>::operator*(v142, *v22 - *v19, v135);
  boost::polygon::detail::extended_int<64ul>::operator*(v146, v22[1] - v19[1], v131);
  boost::polygon::detail::extended_int<64ul>::dif (v127, v135, v131);
  boost::polygon::detail::extended_int<64ul>::mul(v131, v128, v127);
  v132[0] = 1;
  v132[64] = 1;
  if (v13)
  {
    if (v18 == 2)
    {
      v50 = 1;
    }

    else
    {
      v50 = -1;
    }

    *v150 = 2;
    *&v150[256] = v50;
    boost::polygon::detail::extended_int<64ul>::mul(v135, v142, v150);
    boost::polygon::detail::extended_int<64ul>::mul(v124, v146, v146);
    boost::polygon::detail::extended_int<64ul>::operator*(v124, v19[1] + v20[3], v125);
    boost::polygon::detail::extended_int<64ul>::mul(__dst, v146, v142);
    boost::polygon::detail::extended_int<64ul>::operator*(__dst, *v19 + v20[2] - 2 * *v22, v123);
    boost::polygon::detail::extended_int<64ul>::dif (__src, v125, v123);
    boost::polygon::detail::extended_int<64ul>::mul(v120, v142, v142);
    boost::polygon::detail::extended_int<64ul>::operator*(v120, 2 * v22[1], v121);
    boost::polygon::detail::extended_int<64ul>::add(v150, __src, v121);
    memcpy(v136, v150, sizeof(v136));
    v54 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v23, v135, v131, v51, v52, v53);
    *(v16 + 8) = ldexp(*&v54, v55) / v49;
  }

  if ((v115 & 1) != 0 || a9)
  {
    if (v18 == 2)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    *v150 = 2;
    *&v150[256] = v56;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v146, v150);
    memcpy(v135, __src, sizeof(v135));
    boost::polygon::detail::extended_int<64ul>::mul(v124, v142, v142);
    boost::polygon::detail::extended_int<64ul>::operator*(v124, *v19 + v20[2], v125);
    boost::polygon::detail::extended_int<64ul>::mul(__dst, v146, v142);
    boost::polygon::detail::extended_int<64ul>::operator*(__dst, v19[1] + v20[3] - 2 * v22[1], v123);
    boost::polygon::detail::extended_int<64ul>::dif (__src, v125, v123);
    boost::polygon::detail::extended_int<64ul>::mul(v120, v146, v146);
    boost::polygon::detail::extended_int<64ul>::operator*(v120, 2 * *v22, v121);
    boost::polygon::detail::extended_int<64ul>::add(v150, __src, v121);
    memcpy(v136, v150, sizeof(v136));
    if (v115)
    {
      v60 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v23, v135, v131, v57, v58, v59);
      *v16 = ldexp(*&v60, v61) / v49;
    }

    if (a9)
    {
      *&v150[192] = v139[12];
      *&v150[208] = v139[13];
      *&v150[224] = v139[14];
      *&v150[240] = v139[15];
      *&v150[128] = v139[8];
      *&v150[144] = v139[9];
      *&v150[160] = v139[10];
      *&v150[176] = v139[11];
      *&v150[64] = v139[4];
      *&v150[80] = v139[5];
      *&v150[96] = v139[6];
      *&v150[112] = v139[7];
      *v150 = v139[0];
      *&v150[16] = v139[1];
      *&v150[32] = v139[2];
      *&v150[48] = v139[3];
      if (v140 >= 0)
      {
        v62 = v140;
      }

      else
      {
        v62 = -v140;
      }

      *&v137[192] = *&v150[192];
      *&v137[208] = *&v150[208];
      *&v137[224] = *&v150[224];
      *&v137[240] = *&v150[240];
      *&v137[128] = *&v150[128];
      *&v137[144] = *&v150[144];
      *&v137[160] = *&v150[160];
      *&v137[176] = *&v150[176];
      *&v137[64] = *&v150[64];
      *&v137[80] = *&v150[80];
      *&v137[96] = *&v150[96];
      *&v137[112] = *&v150[112];
      *v137 = *v150;
      *&v137[16] = *&v150[16];
      *&v137[32] = *&v150[32];
      *&v137[48] = *&v150[48];
      *&v137[256] = v62;
      boost::polygon::detail::extended_int<64ul>::mul(__src, v146, v146);
      boost::polygon::detail::extended_int<64ul>::mul(v125, v142, v142);
      boost::polygon::detail::extended_int<64ul>::add(v150, __src, v125);
      memcpy(v133, v150, sizeof(v133));
      v66 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v23, v135, v131, v63, v64, v65);
      v68 = ldexp(*&v66, v67) / v49;
      goto LABEL_96;
    }
  }

LABEL_97:
  v114 = *MEMORY[0x277D85DE8];
}

uint64_t boost::polygon::detail::extended_int<64ul>::operator*@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      v7[0] = -a2;
      if (-a2 >> 32)
      {
        v5 = -2;
      }

      else
      {
        v5 = -1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v7[0] = a2;
    if (HIDWORD(a2))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  v8 = v5;
  return boost::polygon::detail::extended_int<64ul>::mul(a3, a1, v7);
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = v2;
  v7 = v1;
  v8 = v0;
  v92 = *MEMORY[0x277D85DE8];
  if (!v1[259])
  {
    v31 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v0, v1, v2, v3, v4, v5));
    v70 = v31;
    v71 = v32;
    __dst[0] = 1;
    __dst[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v85, v6, (v6 + 65));
    memcpy(v89, v6 + 130, sizeof(v89));
    v86[0] = 1;
    v86[64] = 1;
    v36 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v33, v34, v35, v8, v7 + 130, v6 + 195);
    v38 = v37;
    v40 = v39;
    __src[0] = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v85, v36, v41, v42);
    LODWORD(__src[1]) = v43;
    boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(__src);
    v46 = v45 + v38;
    v47 = frexp(v40 * v44, &v84[1]);
    LODWORD(v84[1]) += v46;
    v68 = v47;
    v69 = v84[1];
    if (v31 >= 0.0 && v47 >= 0.0 || v31 <= 0.0 && v47 <= 0.0)
    {
      v29 = &v70;
      v30 = &v68;
      goto LABEL_12;
    }

    boost::polygon::detail::extended_int<64ul>::mul(v81, v7, v7);
    boost::polygon::detail::extended_int<64ul>::mul(v82, v81, v6);
    boost::polygon::detail::extended_int<64ul>::mul(v79, v7 + 65, (v7 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v80, v79, (v6 + 65));
    boost::polygon::detail::extended_int<64ul>::add(__src, v82, v80);
    boost::polygon::detail::extended_int<64ul>::mul(v76, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v77, v76, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::mul(v78, v77, (v6 + 130));
    boost::polygon::detail::extended_int<64ul>::dif (v84, __src, v78);
    memcpy(__dst, v84, sizeof(__dst));
    v85[0] = 1;
    v85[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v82, v7, (v7 + 65));
    LODWORD(v84[0]) = 2;
    LODWORD(v84[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v82, v84);
    boost::polygon::detail::extended_int<64ul>::mul(v80, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v81, v80, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v84, __src, v81);
    memcpy(v89, v84, sizeof(v89));
    boost::polygon::detail::extended_int<64ul>::mul(v84, v6, (v6 + 65));
    memcpy(v86, v84, 0x104uLL);
    *&v61 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v85, v58, v59, v60));
    v54 = v62;
    v55 = *&v61;
    v56 = &v70;
    v57 = &v68;
LABEL_15:
    v63 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(v56, v57));
    v65 = v54 - v64;
    v66 = frexp(v55 / v63, &v84[1]);
    LODWORD(v84[1]) += v65;
    result = *&v66;
    goto LABEL_16;
  }

  __dst[0] = 1;
  __dst[64] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v85, v2, (v2 + 65));
  memcpy(v89, v6 + 130, sizeof(v89));
  v86[0] = 1;
  v86[64] = 1;
  v12 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v9, v10, v11, v8, v7 + 130, v6 + 195);
  v14 = v13;
  v16 = v15;
  __src[0] = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v85, v12, v17, v18);
  LODWORD(__src[1]) = v19;
  boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(__src);
  v22 = v21 + v14;
  v23 = frexp(v16 * v20, &v84[1]);
  LODWORD(v84[1]) += v22;
  v74 = v23;
  v75 = v84[1];
  memcpy(__dst, v7, sizeof(__dst));
  memcpy(v85, v6, sizeof(v85));
  memcpy(v89, v7 + 65, sizeof(v89));
  memcpy(v86, v6 + 65, 0x104uLL);
  memcpy(v90, v7 + 195, sizeof(v90));
  v86[65] = 1;
  v86[129] = 1;
  v27 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v8, __dst, v85, v24, v25, v26));
  v72 = v27;
  v73 = v28;
  if ((v27 < 0.0 || v23 < 0.0) && (v27 > 0.0 || v23 > 0.0))
  {
    boost::polygon::detail::extended_int<64ul>::mul(v82, v7 + 195, v7);
    LODWORD(v84[0]) = 2;
    LODWORD(v84[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v82, v84);
    memcpy(__dst, __src, sizeof(__dst));
    boost::polygon::detail::extended_int<64ul>::mul(v82, v7 + 195, (v7 + 65));
    LODWORD(v84[0]) = 2;
    LODWORD(v84[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v82, v84);
    memcpy(v89, __src, sizeof(v89));
    boost::polygon::detail::extended_int<64ul>::mul(v80, v7, v7);
    boost::polygon::detail::extended_int<64ul>::mul(v81, v80, v6);
    boost::polygon::detail::extended_int<64ul>::mul(v78, v7 + 65, (v7 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v79, v78, (v6 + 65));
    boost::polygon::detail::extended_int<64ul>::add(v82, v81, v79);
    boost::polygon::detail::extended_int<64ul>::mul(v77, v7 + 195, (v7 + 195));
    boost::polygon::detail::extended_int<64ul>::add(__src, v82, v77);
    boost::polygon::detail::extended_int<64ul>::mul(&v68, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(&v70, &v68, (v6 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v76, &v70, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v84, __src, v76);
    memcpy(v90, v84, sizeof(v90));
    boost::polygon::detail::extended_int<64ul>::mul(v82, v7, (v7 + 65));
    LODWORD(v84[0]) = 2;
    LODWORD(v84[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v82, v84);
    boost::polygon::detail::extended_int<64ul>::mul(v80, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v81, v80, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v84, __src, v81);
    memcpy(v91, v84, sizeof(v91));
    boost::polygon::detail::extended_int<64ul>::mul(v84, v6, (v6 + 65));
    memcpy(v87, v84, sizeof(v87));
    *&v52 = COERCE_DOUBLE(boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss3<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>(v8, __dst, v85, v49, v50, v51));
    v54 = v53;
    v55 = *&v52;
    v56 = &v72;
    v57 = &v74;
    goto LABEL_15;
  }

  v29 = &v72;
  v30 = &v74;
LABEL_12:
  result = boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(v29, v30);
LABEL_16:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}