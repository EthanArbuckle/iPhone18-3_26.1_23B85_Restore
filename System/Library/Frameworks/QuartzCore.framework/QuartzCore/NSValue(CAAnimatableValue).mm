@interface NSValue(CAAnimatableValue)
- (float64_t)CA_distanceToValue:()CAAnimatableValue;
- (id)CA_roundToIntegerFromValue:()CAAnimatableValue;
- (uint64_t)CA_addValue:()CAAnimatableValue multipliedBy:;
- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:;
- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:;
@end

@implementation NSValue(CAAnimatableValue)

- (float64_t)CA_distanceToValue:()CAAnimatableValue
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v9 = 8;
  getValues(a1, v11[0].f64, &v9);
  getValues(a3, v10[0].f64, &v9);
  if (v9 == 3)
  {
    v7 = vsubq_f64(*(v11 + 8), *(v10 + 8));
    v8 = vmulq_f64(v7, v7);
    v6 = v8.f64[0] + (v11[0].f64[0] - v10[0].f64[0]) * (v11[0].f64[0] - v10[0].f64[0]) + v8.f64[1];
    return sqrt(v6);
  }

  if (v9 == 2)
  {
    v5 = vsubq_f64(v11[0], v10[0]);
    v6 = vaddvq_f64(vmulq_f64(v5, v5));
    return sqrt(v6);
  }

  result = 0.0;
  if (v9 == 1)
  {
    return v10[0].f64[0];
  }

  return result;
}

- (id)CA_roundToIntegerFromValue:()CAAnimatableValue
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(NSValue *)a1 objCType];
  if (v5 && !strcmp(v5, "{CATransform3D=dddddddddddddddd}"))
  {
    v9.receiver = a1;
    v9.super_class = &off_1EF241E10;
    return [(NSValue *)&v9 CA_roundToIntegerFromValue:a3];
  }

  else
  {
    memset(&v12, 0, 64);
    memset(v11, 0, sizeof(v11));
    v10 = 8;
    getValues(a1, v12.f64, &v10);
    getValues(a3, v11, &v10);
    v6 = v10;
    if (v10)
    {
      v7 = 0;
      do
      {
        v12.f64[v7] = round(v12.f64[v7] - *(v11 + v7)) + *(v11 + v7);
        ++v7;
      }

      while (v6 != v7);
      return makeValue(&v12, v6, a1);
    }

    else
    {
      [(NSValue *)a1 objCType];
      return 0;
    }
  }
}

- (uint64_t)CA_interpolateValues:()CAAnimatableValue ::interpolator:
{
  v58 = *MEMORY[0x1E69E9840];
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  v11 = [(NSValue *)a1 objCType];
  v12 = v11;
  if (v11 && !strcmp(v11, "{CATransform3D=dddddddddddddddd}"))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    if (a1)
    {
      [(NSValue *)a1 CATransform3DValue];
    }

    else
    {
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
    }

    v52 = v44;
    v53 = v45;
    v54 = v46;
    v55 = v47;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v51 = v43;
    if (a4)
    {
      [(NSValue *)a4 CATransform3DValue];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v43 = v27;
    CA::Mat4Impl::mat4_mix(&v32, &v48, v40.f64, v13, a6->f64[0]);
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    return [MEMORY[0x1E696B098] valueWithCATransform3D:&v24];
  }

  else
  {
    if (strcmp(v12, "{CAColorMatrix=ffffffffffffffffffff}"))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      *&v24.f64[0] = 8;
      getValues(a1, v40.f64, &v24);
      getValues(a4, v32.f64, &v24);
      if (a3)
      {
        v14 = v57;
        getValues(a3, v57, &v24);
        if (a5)
        {
LABEL_6:
          v15 = v56;
          getValues(a5, v56, &v24);
LABEL_13:
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v16 = *&v24.f64[0];
          CA::Render::ValueInterpolator::mix_n<double>(a6, *&v24.f64[0], v48.f64, v14, v40.f64, v32.f64, v15);
          return makeValue(&v48, v16, a1);
        }
      }

      else
      {
        v14 = 0;
        if (a5)
        {
          goto LABEL_6;
        }
      }

      v15 = 0;
      goto LABEL_13;
    }

    if (a1)
    {
      [(NSValue *)a1 CAColorMatrixValue];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
    }

    v50 = v42;
    v51 = v43;
    v52 = v44;
    v48 = v40;
    v49 = v41;
    if (a4)
    {
      [(NSValue *)a4 CAColorMatrixValue];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
    }

    v18 = 0;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v40 = v32;
    v41 = v33;
    v19 = vdupq_lane_s64(*&a6->f64[0], 0);
    do
    {
      v20 = *(&v48 + v18);
      v21 = vcvtq_f64_f32(*v20.f32);
      v22 = vcvt_hight_f64_f32(v20);
      v23 = vsubq_f32(*(&v40 + v18), v20);
      *(&v48 + v18) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v21, vcvtq_f64_f32(*v23.f32), v19)), vmlaq_f64(v22, vcvt_hight_f64_f32(v23), v19));
      v18 += 16;
    }

    while (v18 != 80);
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v32 = v48;
    v33 = v49;
    return [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v32];
  }
}

- (uint64_t)CA_interpolateValue:()CAAnimatableValue byFraction:
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = [(NSValue *)a1 objCType];
  v7 = v6;
  if (v6)
  {
    if (!strcmp(v6, "{CATransform3D=dddddddddddddddd}"))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      if (a1)
      {
        [(NSValue *)a1 CATransform3DValue];
      }

      else
      {
        v40 = 0uLL;
        v41 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
      }

      v46 = v38;
      v47 = v39;
      v48 = v40;
      v49 = v41;
      v42 = v34;
      v43 = v35;
      v44 = v36;
      v45 = v37;
      if (a4)
      {
        [(NSValue *)a4 CATransform3DValue];
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        *v18 = 0u;
        v19 = 0u;
      }

      v38 = v22;
      v39 = v23;
      v40 = v24;
      v41 = v25;
      v34 = *v18;
      v35 = v19;
      v36 = v20;
      v37 = v21;
      CA::Mat4Impl::mat4_mix(&v26, &v42, v34.f64, v8, *&a2);
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      *v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      return [MEMORY[0x1E696B098] valueWithCATransform3D:v18];
    }

    if (!strcmp(v7, "{CGAffineTransform=dddddd}"))
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      if (a1)
      {
        [(NSValue *)a1 CA_CGAffineTransformValue];
      }

      else
      {
        v35 = 0uLL;
        v36 = 0uLL;
        v34 = 0uLL;
      }

      v42 = v34;
      v43 = v35;
      v44 = v36;
      if (a4)
      {
        [(NSValue *)a4 CA_CGAffineTransformValue];
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        *v18 = 0u;
      }

      v34 = *v18;
      v35 = v19;
      v36 = v20;
      return [MEMORY[0x1E696B098] value:&v26 withObjCType:{"{CGAffineTransform=dddddd}", CA::Mat2Impl::mat2_mix(&v26, v42.f64, v34.f64, v9, *&a2).f64[0]}];
    }
  }

  if (!strcmp(v7, "{CAColorMatrix=ffffffffffffffffffff}"))
  {
    if (a1)
    {
      [(NSValue *)a1 CAColorMatrixValue];
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
    }

    v44 = v36;
    v45 = v37;
    v46 = v38;
    v42 = v34;
    v43 = v35;
    if (a4)
    {
      [(NSValue *)a4 CAColorMatrixValue];
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    v15 = 0;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v34 = v26;
    v35 = v27;
    v16 = vdupq_lane_s32(*&a2, 0);
    do
    {
      *(&v42 + v15) = vmlaq_f32(*(&v42 + v15), v16, vsubq_f32(*(&v34 + v15), *(&v42 + v15)));
      v15 += 16;
    }

    while (v15 != 80);
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v26 = v42;
    v27 = v43;
    return [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v26];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18[0] = 8;
    getValues(a1, v34.f64, v18);
    getValues(a4, v26.f64, v18);
    v10 = v18[0];
    if (v18[0])
    {
      v11 = 0;
      do
      {
        v12 = v34.f64[v11];
        v13 = v26.f64[v11];
        if (v12 != v13)
        {
          v12 = v12 + (v13 - v12) * *&a2;
        }

        v42.f64[v11++] = v12;
      }

      while (v10 != v11);
      return makeValue(&v42, v10, a1);
    }

    else
    {
      [(NSValue *)a1 objCType];
      return 0;
    }
  }
}

- (uint64_t)CA_addValue:()CAAnimatableValue multipliedBy:
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = [(NSValue *)a1 objCType];
  v8 = v7;
  if (!v7)
  {
LABEL_4:
    if (!strcmp(v8, "{CAColorMatrix=ffffffffffffffffffff}"))
    {
      if (a1)
      {
        [(NSValue *)a1 CAColorMatrixValue];
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        memset(v38, 0, sizeof(v38));
      }

      v47 = v39;
      v48 = v40;
      v49 = v41;
      v45 = v38[0];
      v46 = v38[1];
      if (a3)
      {
        [(NSValue *)a3 CAColorMatrixValue];
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
      }

      v15 = 0;
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v16.i32[1] = HIDWORD(v31.f64[0]);
      v38[0] = v30;
      v38[1] = v31;
      *v16.i32 = a4;
      v17 = vdupq_lane_s32(v16, 0);
      do
      {
        *(&v45 + v15 * 16) = vmlaq_f32(*(&v45 + v15 * 16), v17, v38[v15]);
        ++v15;
      }

      while (v15 != 5);
      v32 = v47;
      v33 = v48;
      v34 = v49;
      v30 = v45;
      v31 = v46;
      return [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v30];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      memset(v38, 0, sizeof(v38));
      v39 = 0u;
      v40 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = 8;
      getValues(a1, v38[0].f64, &v29);
      getValues(a3, v30.f64, &v29);
      v11 = v29;
      if (v29)
      {
        v12 = 0;
        do
        {
          v45.f64[v12] = v38[0].f64[v12] + v30.f64[v12] * a4;
          ++v12;
        }

        while (v11 != v12);
        return makeValue(&v45, v11, a1);
      }

      else
      {
        [(NSValue *)a1 objCType];
        return 0;
      }
    }
  }

  if (!strcmp(v7, "{CATransform3D=dddddddddddddddd}"))
  {
    if (a1)
    {
      [(NSValue *)a1 CATransform3DValue];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      memset(v38, 0, sizeof(v38));
    }

    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v45 = v38[0];
    v46 = v38[1];
    v47 = v39;
    v48 = v40;
    if (a3)
    {
      [(NSValue *)a3 CATransform3DValue];
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    v41 = v34;
    v42 = v35;
    v43 = v36;
    v44 = v37;
    v38[0] = v30;
    v38[1] = v31;
    v39 = v32;
    v40 = v33;
    if ((a4 & 0x80000000) != 0)
    {
      CA::Mat4Impl::mat4_invert(v38, v38, v9);
      a4 = -a4;
    }

    CA::Mat4Impl::mat4_pow(v38, a4, v9, v10);
    CA::Mat4Impl::mat4_concat(&v45, v38[0].f64, v45.f64, v14);
    v34 = v49;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v33 = v48;
    return [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
  }

  else
  {
    if (strcmp(v8, "{CGAffineTransform=dddddd}"))
    {
      goto LABEL_4;
    }

    if (a1)
    {
      [(NSValue *)a1 CA_CGAffineTransformValue];
    }

    else
    {
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
    }

    v45 = v38[0];
    v46 = v38[1];
    v47 = v39;
    if (a3)
    {
      [(NSValue *)a3 CA_CGAffineTransformValue];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
    }

    v38[0] = v30;
    v38[1] = v31;
    v39 = v32;
    if ((a4 & 0x80000000) != 0)
    {
      v18.f64[0] = v38[1].f64[1];
      v19.f64[0] = v38[1].f64[1];
      v19.f64[1] = v38[1].f64[0];
      v20 = vmulq_f64(v19, v38[0]);
      v21 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
      if (v21 != 0.0)
      {
        v22 = 1.0 / v21;
        v23 = vmulq_n_f64(*(v38 + 8), v22);
        v18.f64[1] = v38[0].f64[0];
        v24 = vmulq_n_f64(v18, v22);
        v38[0].f64[0] = v24.f64[0];
        *(v38 + 8) = vnegq_f64(v23);
        v38[1].f64[1] = v24.f64[1];
        v25 = vmulq_f64(v39, v23);
        v39 = vmlsq_f64(vextq_s8(v25, v25, 8uLL), v24, v39);
      }

      a4 = -a4;
    }

    CA::Mat2Impl::mat2_pow(v38, a4);
    v26 = v45;
    v27 = v46;
    v28 = vmlaq_n_f64(vmulq_n_f64(v45, v38[1].f64[0]), v46, v38[1].f64[1]);
    v45 = vmlaq_n_f64(vmulq_n_f64(v45, v38[0].f64[0]), v46, v38[0].f64[1]);
    v46 = v28;
    v47 = vmlaq_n_f64(vmlaq_n_f64(v47, v26, v39.f64[0]), v27, v39.f64[1]);
    return [MEMORY[0x1E696B098] value:&v45 withObjCType:"{CGAffineTransform=dddddd}"];
  }
}

@end