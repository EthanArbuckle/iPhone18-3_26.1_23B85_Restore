@interface NSValue(CAMLWriter)
- (__CFString)CAMLType;
- (void)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSValue(CAMLWriter)

- (void)encodeWithCAMLWriter:()CAMLWriter
{
  v50 = *MEMORY[0x1E69E9840];
  objCType = [self objCType];
  v6 = objCType;
  if (!objCType)
  {
LABEL_9:
    if (strcmp(v6, "{CAColorMatrix=ffffffffffffffffffff}"))
    {
      return;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    if (self)
    {
      [self CAColorMatrixValue];
    }

    v7 = CACreateStringWithFloatArray(&v41, 0x14uLL, 0.000001);
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [self rectValue];
    *&v41 = v10;
    *(&v41 + 1) = v11;
    *&v42 = v12;
    *(&v42 + 1) = v13;
    v14 = 4;
LABEL_18:
    v9 = CACreateStringWithDoubleArray(&v41, v14, 1.0e-12);
    goto LABEL_19;
  }

  if (!strcmp(v6, "{CGPoint=dd}"))
  {
    [self pointValue];
LABEL_17:
    *&v41 = v15;
    *(&v41 + 1) = v16;
    v14 = 2;
    goto LABEL_18;
  }

  if (!strcmp(v6, "{CGSize=dd}"))
  {
    [self sizeValue];
    goto LABEL_17;
  }

  if (!strcmp(v6, "{CAPoint3D=ddd}"))
  {
    [self CAPoint3DValue];
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    v14 = 3;
    goto LABEL_18;
  }

  if (!strcmp(v6, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    if (self)
    {
      [self CACornerRadiiValue];
    }

    v14 = 8;
    goto LABEL_18;
  }

  if (!strcmp(v6, "{CGAffineTransform=dddddd}"))
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    if (self)
    {
      [self CA_CGAffineTransformValue];
    }

    v7 = CACreateStringWithDoubleArray(&v41, 6uLL, 1.0e-12);
LABEL_13:
    v8 = v7;
    v9 = CFStringCreateWithFormat(0, 0, @"matrix(%@)", v7);
    CFRelease(v8);
    goto LABEL_19;
  }

  if (strcmp(v6, "{CATransform3D=dddddddddddddddd}"))
  {
    goto LABEL_9;
  }

  v20 = 0uLL;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v42 = 0u;
  v43 = 0u;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v41 = 0u;
  if (self)
  {
    [self CATransform3DValue];
    v27 = v32;
    v26 = v33;
    v25 = v34;
    v24 = v35;
    v23 = v36;
    v22 = v37;
    v21 = v38;
    v20 = v39;
  }

  v40[0] = v27;
  v40[1] = v26;
  v40[2] = v25;
  v40[3] = v24;
  v40[4] = v23;
  v40[5] = v22;
  v40[6] = v21;
  v40[7] = v20;
  CA::Mat4Impl::mat4_get_unmatrix(v40, &v41, 0);
  if (fabs(*(&v45 + 1)) < 1.0e-12 && fabs(*&v46) < 1.0e-12 && fabs(*&v47 + -1.0) < 1.0e-12)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v9 = Mutable;
    if (*(&v46 + 1) != 0.0)
    {
      CFStringAppendFormat(Mutable, 0, @"perspective(%g) ", -1.0 / *(&v46 + 1));
    }

    if (fabs(*&v44) >= 1.0e-12 || fabs(*(&v44 + 1)) >= 1.0e-12 || fabs(*&v45) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"translate(%g, %g, %g) ", v44, v45);
    }

    if (fabs(*(&v48 + 1)) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"rotate(%gdeg) ", *(&v48 + 1) * 57.2957795);
    }

    if (fabs(*&v48) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"rotate(%gdeg, 0, 1, 0) ", *&v48 * 57.2957795);
    }

    if (fabs(*(&v47 + 1)) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"rotate(%gdeg, 1, 0, 0) ", *(&v47 + 1) * 57.2957795);
    }

    if (fabs(*(&v43 + 1)) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"shearYZ(%gdeg) ", *(&v43 + 1) * 57.2957795);
    }

    if (fabs(*&v43) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"shearXZ(%gdeg) ", *&v43 * 57.2957795);
    }

    if (fabs(*(&v42 + 1)) >= 1.0e-12)
    {
      CFStringAppendFormat(v9, 0, @"shearXY(%gdeg) ", *(&v42 + 1) * 57.2957795);
    }

    if (fabs(*&v41 + -1.0) >= 1.0e-12 || fabs(*(&v41 + 1) + -1.0) >= 1.0e-12 || fabs(*&v42 + -1.0) >= 1.0e-12)
    {
      if (vabdd_f64(*&v41, *(&v41 + 1)) >= 1.0e-12 || vabdd_f64(*&v41, *&v42) >= 1.0e-12)
      {
        CFStringAppendFormat(v9, 0, @"scale(%g, %g, %g) ", v41, v42);
      }

      else
      {
        CFStringAppendFormat(v9, 0, @"scale(%g) ", v41, v30, v31);
      }
    }

    Length = CFStringGetLength(v9);
    if (Length)
    {
      v51.location = Length - 1;
      v51.length = 1;
      CFStringReplace(v9, v51, &stru_1EF20BE80);
    }

    goto LABEL_19;
  }

  v7 = CACreateStringWithDoubleArray(v40, 0x10uLL, 1.0e-12);
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_59:
  v9 = 0;
LABEL_19:
  if (v9)
  {
    [a3 setElementContent:v9];
    CFRelease(v9);
  }
}

- (__CFString)CAMLType
{
  objCType = [self objCType];
  v2 = objCType;
  if (!objCType)
  {
    goto LABEL_21;
  }

  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return @"CGRect";
  }

  if (!strcmp(v2, "{CGPoint=dd}"))
  {
    return @"CGPoint";
  }

  if (!strcmp(v2, "{CGSize=dd}"))
  {
    return @"CGSize";
  }

  if (!strcmp(v2, "{CAPoint3D=ddd}"))
  {
    return @"CAPoint3D";
  }

  if (!strcmp(v2, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
  {
    return @"CACornerRadii";
  }

  if (!strcmp(v2, "{CGAffineTransform=dddddd}"))
  {
    return @"CGAffineTransform";
  }

  if (!strcmp(v2, "{CATransform3D=dddddddddddddddd}"))
  {
    return @"CATransform3D";
  }

LABEL_21:
  if (!strcmp(v2, "{CAColorMatrix=ffffffffffffffffffff}"))
  {
    return @"CAColorMatrix";
  }

  return @"NSValue";
}

@end