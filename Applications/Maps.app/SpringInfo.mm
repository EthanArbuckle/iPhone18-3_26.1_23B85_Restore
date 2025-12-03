@interface SpringInfo
- (SpringInfo)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity;
- (double)valueAtTime:(double)time;
- (id)description;
@end

@implementation SpringInfo

- (id)description
{
  [(SpringInfo *)self mass];
  v4 = v3;
  [(SpringInfo *)self stiffness];
  v6 = v5;
  [(SpringInfo *)self damping];
  v8 = v7;
  [(SpringInfo *)self initialVelocity];
  sub_1006F7BEC(v26, v4, v6, v8, v9);
  if (v27 >= 1.0)
  {
    v10 = @"critically-damped";
  }

  else
  {
    v10 = @"underdamped";
  }

  [(SpringInfo *)self mass];
  v12 = v11;
  [(SpringInfo *)self stiffness];
  v14 = v13;
  [(SpringInfo *)self damping];
  v16 = v15;
  [(SpringInfo *)self initialVelocity];
  v18 = v17;
  [(SpringInfo *)self undershootTime];
  v20 = v19;
  [(SpringInfo *)self overshootTime];
  v22 = v21;
  [(SpringInfo *)self settlingTime];
  v24 = [NSString stringWithFormat:@"<%@: mass = %g, stiffness = %g, damping = %g, initialVelocity = %g, undershootTime = %g, overshootTime = %g, settlingTime = %g>", v10, v12, v14, v16, v18, v20, v22, v23];

  return v24;
}

- (double)valueAtTime:(double)time
{
  [(SpringInfo *)self mass];
  v6 = v5;
  [(SpringInfo *)self stiffness];
  v8 = v7;
  [(SpringInfo *)self damping];
  v10 = v9;
  [(SpringInfo *)self initialVelocity];
  sub_1006F7BEC(v13, v6, v8, v10, v11);
  return sub_1006F7D10(v13, time);
}

- (SpringInfo)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity
{
  v74.receiver = self;
  v74.super_class = SpringInfo;
  v10 = [(SpringInfo *)&v74 init];
  v11 = v10;
  if (v10)
  {
    v10->_mass = mass;
    v10->_stiffness = stiffness;
    v10->_damping = damping;
    v10->_initialVelocity = velocity;
    sub_1006F7BEC(v75, mass, stiffness, damping, velocity);
    v12 = v77;
    if (v77 < 1.0)
    {
      v13 = v78;
      v14 = v79;
      v15 = fabs(6.28318531 / v78);
      v16 = v15 * 0.5;
      v17 = 0.0;
      v18 = v80;
      v19 = 10;
      while (1)
      {
        v22 = __sincos_stret(v17 * v13);
        cosval = v22.__cosval;
        sinval = v22.__sinval;
        v23 = v22.__sinval * v18 + v22.__cosval * v14;
        if (fabs(v23) < 0.001)
        {
          break;
        }

        v17 = v23 / ((v22.__sinval - v22.__cosval * v18) * v13) + v17;
        if (!--v19)
        {
          v24 = __sincos_stret(v17 * v13);
          cosval = v24.__cosval;
          sinval = v24.__sinval;
          break;
        }
      }

      if (-(sinval - cosval * v18) * v13 >= 0.0)
      {
        v25 = v17;
      }

      else
      {
        v25 = v17 + v16;
      }

      v26 = fmod(v25, v15);
      v27 = 0.0;
      if (v26 >= 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v15;
      }

      v29 = __sincos_stret((v26 + v15 * 0.25 + v28) * v13);
      v30 = log(0.001 / fabs(v29.__sinval * v18 + v29.__cosval * v14));
      v31 = -v30 / (v76 * v12);
      v33 = v81;
      v32 = v82;
      v34 = 10;
      do
      {
        v35 = __sincos_stret(v27 * v13);
        v36 = v35.__cosval * v32 + v35.__sinval * v33;
        if (fabs(v36) < 0.000001)
        {
          break;
        }

        v27 = v36 / (-(v35.__cosval * v33 - v35.__sinval * v32) * v13) + v27;
        --v34;
      }

      while (v34);
      v37 = fmod(v27, v16);
      v38 = 0.0;
      if (v37 < 0.0)
      {
        v38 = v16;
      }

      v39 = v38 + v37;
      v40 = sub_1006F7D10(v75, v38 + v37);
      if (v40 <= 1.0)
      {
        v41 = -1.0;
        if (v40 != 1.0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v41 = v39;
      }

      v39 = v39 + v16;
LABEL_29:
      if (v41 > v31 || sub_1006F7D10(v75, v41) < 1.0)
      {
        v41 = -1.0;
      }

      if (v39 > v31 || sub_1006F7D10(v75, v39) > 0.0)
      {
        v39 = -1.0;
      }

      if (v41 < 0.0)
      {
        v52 = -1.0;
      }

      else
      {
        v52 = v41;
      }

      v11->_undershootTime = v52;
      if (v39 < 0.0)
      {
        v51 = -1.0;
      }

      else
      {
        v51 = v39;
      }

LABEL_69:
      v11->_overshootTime = v51;
      v11->_settlingTime = v31;
      v71 = v11;
      goto LABEL_70;
    }

    v42 = 0.0;
    if (v75[3] != 0.0)
    {
      v44 = v79;
      v43 = v80;
      v45 = v76;
      v46 = 10;
      do
      {
        sub_1006F8294(v75, v42);
        if (fabs(v47) < 0.000001)
        {
          break;
        }

        v42 = v42 + v47 / (exp(-(v42 * v45)) * v45 * (v43 + v43 - (v44 + v43 * v42) * v45));
        --v46;
      }

      while (v46);
    }

    v48 = 0.0;
    v49 = fmax(v42, 0.0);
    v50 = sub_1006F7D10(v75, v49);
    v51 = -1.0;
    if (fabs(v50) <= 0.002)
    {
      goto LABEL_43;
    }

    if (v50 > 1.0)
    {
      v48 = v49 + v49;
      v73 = v49;
      goto LABEL_44;
    }

    if (v50 >= 0.0)
    {
LABEL_43:
      v73 = -1.0;
    }

    else
    {
      v48 = v49 + v49;
      v73 = -1.0;
      v51 = v49;
    }

LABEL_44:
    v53 = 10;
    v31 = v48;
    while (1)
    {
      sub_1006F8294(v75, v31);
      v55 = v54;
      if (fabs(v54) <= 2.22044605e-16)
      {
        break;
      }

      v56 = sub_1006F7D10(v75, v31);
      v31 = v31 - (dbl_101212870[v56 < 0.0] + v56) / v55;
      if (!--v53)
      {
        if (v31 >= 0.0 && v31 >= v73 && v31 >= v51)
        {
          goto LABEL_68;
        }

        break;
      }
    }

    v59 = dbl_101212880[v51 > 0.0];
    v60 = v48 * 0.5;
    v61 = 0;
    v62 = sub_1006F7D10(v75, v48 * 0.5) - v59;
    v63 = 0.0;
    v64 = 1;
    v65 = 0.1;
    while (1)
    {
      v66 = v65 + v60;
      if (((COERCE_UNSIGNED_INT64(sub_1006F7D10(v75, v65 + v60) - v59) ^ *&v62) & 0x8000000000000000) != 0)
      {
        break;
      }

      v63 = v65;
      v65 = v65 + v65;
      v64 = v61++ < 0x1F;
      if (v61 == 32)
      {
        goto LABEL_67;
      }
    }

    if (!v64)
    {
LABEL_67:
      v31 = -1.0;
      NSLog(@"Failed to determine spring duration", *&v73);
      goto LABEL_68;
    }

    v67 = v63 + v60;
    v31 = (v66 + v67) * 0.5;
    v68 = 32;
    do
    {
      v69 = sub_1006F7D10(v75, v31);
      if (vabdd_f64(v69, v59) < 0.000000001)
      {
        break;
      }

      v70 = sub_1006F7D10(v75, v67);
      if (((fmin(v70, v69) <= v59) & (fmax(v70, v69) >= v59)) != 0)
      {
        v66 = v31;
      }

      else
      {
        v67 = v31;
      }

      v31 = (v67 + v66) * 0.5;
      --v68;
    }

    while (v68);
LABEL_68:
    v11->_undershootTime = v73;
    goto LABEL_69;
  }

LABEL_70:

  return v11;
}

@end