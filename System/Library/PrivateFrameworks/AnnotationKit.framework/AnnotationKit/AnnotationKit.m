id sub_23F3F3A24(uint64_t a1, uint64_t a2, const CGPath *a3)
{
  v4 = [MEMORY[0x277CBEB28] data];
  if (a3)
  {
    CGPathApply(a3, v4, sub_23F3F3A8C);
  }

  return v4;
}

void sub_23F3F3A8C(void *a1, unsigned int *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *a2;
  v13 = v5;
  if (v5 > 4)
  {
    NSLog(&cfstr_SSkippingEncod.isa, "void _encodePathElementIntoData(void *, const CGPathElement *)", v5);
  }

  else
  {
    v12 = dword_23F4D8E68[v5];
    [v3 appendBytes:&v13 length:4];
    [v4 appendBytes:&v12 length:4];
    if (v12)
    {
      v6 = 0;
      for (i = 0; i < v12; ++i)
      {
        v8 = *(*(a2 + 1) + v6);
        v11 = v8;
        [v4 appendBytes:&v11 length:4];
        v9 = *(*(a2 + 1) + v6 + 8);
        v10 = v9;
        [v4 appendBytes:&v10 length:4];
        v6 += 16;
      }
    }
  }
}

CGPath *sub_23F3F3B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 length])
  {
LABEL_27:
    Mutable = 0;
    goto LABEL_28;
  }

  v4 = [v3 length];
  Mutable = CGPathCreateMutable();
  v6 = [v3 bytes];
  v15 = *MEMORY[0x277CBF348];
  v16 = v15;
  *v17 = v15;
  if (v4 >= 8)
  {
    v7 = v6;
    v8 = 0;
    v9 = 8;
    v10 = @"%s: Unknown element type for path. Aborting read due to data corruption.";
    while (1)
    {
      v11 = *(v7 + v8);
      if (v11 > 4)
      {
        break;
      }

      v12 = *(v7 + v8 + 4);
      if (dword_23F4D8E68[v11] != v12)
      {
        NSLog(&cfstr_SUnexpectedPoi.isa, "+[NSData(CGPathExtensions) newCGPathDecodedFromData:]");
        goto LABEL_26;
      }

      if (v9 + 8 * v12 > v4)
      {
        v10 = @"%s: Number of points left to read exceeds buffer length. Aborting read due to data corruption.";
        break;
      }

      if (v12)
      {
        v13 = &v15;
        do
        {
          v8 = v9 + 8;
          *v13++ = vcvtq_f64_f32(*(v7 + v9));
          v9 += 8;
          --v12;
        }

        while (v12);
      }

      else
      {
        v8 = v9;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          CGPathAddLineToPoint(Mutable, 0, *&v15, *(&v15 + 1));
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, *&v15, *(&v15 + 1));
        }
      }

      else if (v11 == 2)
      {
        CGPathAddQuadCurveToPoint(Mutable, 0, *&v15, *(&v15 + 1), *&v16, *(&v16 + 1));
      }

      else if (v11 == 3)
      {
        CGPathAddCurveToPoint(Mutable, 0, *&v15, *(&v15 + 1), *&v16, *(&v16 + 1), v17[0], v17[1]);
      }

      else
      {
        CGPathCloseSubpath(Mutable);
      }

      v9 = v8 + 8;
      if (v8 + 8 > v4)
      {
        goto LABEL_28;
      }
    }

    NSLog(&v10->isa, "+[NSData(CGPathExtensions) newCGPathDecodedFromData:]");
LABEL_26:
    CGPathRelease(Mutable);
    goto LABEL_27;
  }

LABEL_28:

  return Mutable;
}

id AKQuadrilateralCreateDictionaryRepresentation(double *a1)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = @"bottomLeft";
  v22[0] = @"X";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
  v22[1] = @"Y";
  v23[0] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a1[1]];
  v23[1] = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v13;
  v24[1] = @"topLeft";
  v20[0] = @"X";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a1[2]];
  v20[1] = @"Y";
  v21[0] = v12;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:a1[3]];
  v21[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v3;
  v24[2] = @"topRight";
  v18[0] = @"X";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1[4]];
  v18[1] = @"Y";
  v19[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a1[5]];
  v19[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v25[2] = v6;
  v24[3] = @"bottomRight";
  v16[0] = @"X";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a1[6]];
  v16[1] = @"Y";
  v17[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a1[7]];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v25[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v10;
}

void AKQuadrilateralMakeWithDictionaryRepresentation(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"bottomLeft"];
  v5 = [v4 objectForKeyedSubscript:@"X"];
  [v5 doubleValue];
  *a2 = v6;

  v7 = [v4 objectForKeyedSubscript:@"Y"];
  [v7 doubleValue];
  a2[1] = v8;

  v9 = [v3 objectForKeyedSubscript:@"topLeft"];

  v10 = [v9 objectForKeyedSubscript:@"X"];
  [v10 doubleValue];
  a2[2] = v11;

  v12 = [v9 objectForKeyedSubscript:@"Y"];
  [v12 doubleValue];
  a2[3] = v13;

  v14 = [v3 objectForKeyedSubscript:@"topRight"];

  v15 = [v14 objectForKeyedSubscript:@"X"];
  [v15 doubleValue];
  a2[4] = v16;

  v17 = [v14 objectForKeyedSubscript:@"Y"];
  [v17 doubleValue];
  a2[5] = v18;

  v23 = [v3 objectForKeyedSubscript:@"bottomRight"];

  v19 = [v23 objectForKeyedSubscript:@"X"];
  [v19 doubleValue];
  a2[6] = v20;

  v21 = [v23 objectForKeyedSubscript:@"Y"];
  [v21 doubleValue];
  a2[7] = v22;
}

const char *sub_23F3F5898@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sizep = 0;
  result = NSGetSizeAndAlignment([a1 objCType], &sizep, 0);
  v5 = sizep;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  if (v5 == 64)
  {
    return [a1 getValue:a2 size:64];
  }

  return result;
}

void sub_23F3F5910(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [AKSecureSerializationHelper encodeColor:a3];
  [a1 setObject:v7 forKey:v6];
}

id sub_23F3F5990(void *a1)
{
  v1 = [a1 dataForKey:?];
  v2 = [AKSecureSerializationHelper decodeColor:v1];

  return v2;
}

void sub_23F3F59F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [AKSecureSerializationHelper encodeFont:a3];
  [a1 setObject:v7 forKey:v6];
}

id sub_23F3F5A74(void *a1)
{
  v1 = [a1 dataForKey:?];
  v2 = [AKSecureSerializationHelper decodeFont:v1];

  return v2;
}

void sub_23F3F5AD8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [AKSecureSerializationHelper encodeTextAttributes:a3];
  [a1 setObject:v7 forKey:v6];
}

id sub_23F3F5B58(void *a1)
{
  v1 = [a1 dataForKey:?];
  v2 = [AKSecureSerializationHelper decodeTextAttributes:v1];

  return v2;
}

id sub_23F3F7958()
{
  v0 = [MEMORY[0x277D75348] colorWithCGColor:?];
  CGColorGetContentHeadroom();
  if (v1 >= 1.0)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    objc_setAssociatedObject(v0, &unk_27E39A4C8, v2, 1);
  }

  return v0;
}

id sub_23F3F79E4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  if (a5 <= 1.0)
  {
    SRGB = CGColorCreateSRGB(a1, a2, a3, a4);
  }

  else
  {
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3F8]);
    SRGB = CGColorCreateWithContentHeadroom();
    CGColorSpaceRelease(v5);
  }

  v7 = [MEMORY[0x277D75348] akColorWithCGColor:SRGB];
  CGColorRelease(SRGB);

  return v7;
}

double sub_23F3F7AC0(void *a1, uint64_t a2, void *a3)
{
  v11 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  v4 = a3;
  [a1 getL:&v11 a:&v10 b:&v9];
  [v4 getL:&v8 a:&v7 b:&v6];

  return sqrt((v8 - v11) * (v8 - v11) + (v7 - v10) * (v7 - v10) + (v6 - v9) * (v6 - v9));
}

float sub_23F3F7B88(void *a1)
{
  v2 = objc_getAssociatedObject(a1, &unk_27E39A4C8);
  v3 = v2;
  if (v2 && ([v2 floatValue], v4 > 1.0))
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = sub_23F3F7C08([a1 CGColor]);
  }

  return v6;
}

double sub_23F3F7C08(CGColor *a1)
{
  if (!a1)
  {
    return 1.0;
  }

  CGColorGetContentHeadroom();
  v3 = v2;
  if (v2 < 1.0)
  {
    if (qword_27E39A4F8 != -1)
    {
      sub_23F4BCB5C();
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A4F0, kCGRenderingIntentDefault, a1, 0);
    if (CopyByMatchingToColorSpace)
    {
      v5 = CopyByMatchingToColorSpace;
      Components = CGColorGetComponents(CopyByMatchingToColorSpace);
      v7 = 0.0;
      if (Components)
      {
        v8 = Components;
        v9 = 0.0;
        v10 = 0.0;
        if (CGColorGetNumberOfComponents(v5) == 4)
        {
          v10 = *v8;
          v9 = v8[1];
          v7 = v8[2];
        }
      }

      else
      {
        v9 = 0.0;
        v10 = 0.0;
      }

      CGColorRelease(v5);
      if (v10 >= v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      if (v11 < v7)
      {
        v11 = v7;
      }

      v12 = floor(v11);
      if (vabdd_f64(v11, v12) < 0.001)
      {
        v11 = v12;
      }

      return fmax(v11, 1.0);
    }
  }

  return v3;
}

id sub_23F3F7D08(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a1 akIsEDR])
  {
    v2 = [a1 CGColor];
    [a1 akHeadroom];
    if (v3 == 0.0)
    {
      v4 = sub_23F3F7C08(v2);
    }

    else
    {
      v4 = v3;
    }

    if (v4 > 1.0)
    {
      *&v17 = v4;
      if (qword_27E39A4F8 != -1)
      {
        sub_23F4BCB5C();
      }

      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A4F0, kCGRenderingIntentDefault, v2, 0);
      if (CopyByMatchingToColorSpace)
      {
        v7 = CopyByMatchingToColorSpace;
        *(&v19 + 1) = 0;
        v8 = CGColorGetComponents(CopyByMatchingToColorSpace);
        v16 = 0u;
        v9 = 0.0;
        if (v8)
        {
          v10 = v8;
          if (CGColorGetNumberOfComponents(v7) == 4)
          {
            v11 = *(v10 + 1);
            *components = *v10;
            v19 = v11;
            v16 = *components;
            v9 = *&v11;
          }
        }

        CGColorRelease(v7);
        *components = vdivq_f64(v16, vdupq_lane_s64(v17, 0));
        *&v19 = v9 / *&v17;
        if (qword_27E39A4F8 != -1)
        {
          sub_23F4BCB5C();
        }

        v12 = CGColorCreate(qword_27E39A4F0, components);
        if (v12)
        {
          v13 = v12;
          if (qword_27E39A508 != -1)
          {
            sub_23F4BCB70();
          }

          v14 = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A500, kCGRenderingIntentDefault, v13, 0);
          CGColorRelease(v13);
          if (v14)
          {
            CFAutorelease(v14);
            v2 = v14;
          }
        }
      }
    }

    v5 = [MEMORY[0x277D75348] colorWithCGColor:{v2, *&v16}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

uint64_t sub_23F3F7EF4(void *a1)
{
  v1 = MEMORY[0x277D75348];
  v2 = sub_23F3F7F54([a1 CGColor]);

  return [v1 colorWithCGColor:v2];
}

CGColorRef sub_23F3F7F54(CGColorRef color)
{
  if (qword_27E39A4F8 != -1)
  {
    sub_23F4BCB5C();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A4F0, kCGRenderingIntentDefault, color, 0);
  if (CopyByMatchingToColorSpace)
  {
    v3 = CopyByMatchingToColorSpace;
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    CGColorGetContentHeadroom();
    if (Components)
    {
      CGColorGetNumberOfComponents(v3);
    }

    CGColorRelease(v3);
    if (qword_27E39A4F8 != -1)
    {
      sub_23F4BCB5C();
    }

    v5 = CGColorCreateWithContentHeadroom();
    if (v5)
    {
      v6 = v5;
      if (qword_27E39A518 != -1)
      {
        sub_23F4BCB98();
      }

      v7 = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A510, kCGRenderingIntentDefault, v6, 0);
      CFRelease(v6);
      if (v7)
      {
        CFAutorelease(v7);
        return v7;
      }
    }
  }

  return color;
}

uint64_t sub_23F3F80D4(void *a1)
{
  v1 = MEMORY[0x277D75348];
  v2 = sub_23F3F7F54([a1 CGColor]);

  return [v1 colorWithCGColor:v2];
}

CGColor *sub_23F3F812C(void *a1)
{
  v2 = [a1 CGColor];
  [a1 akHeadroom];
  v4 = v3;
  CGColorGetContentHeadroom();
  if (v5 != v4)
  {
    if (qword_27E39A518 != -1)
    {
      sub_23F4BCB98();
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27E39A510, kCGRenderingIntentDefault, v2, 0);
    if (CopyByMatchingToColorSpace)
    {
      v7 = CopyByMatchingToColorSpace;
      CGColorGetComponents(CopyByMatchingToColorSpace);
      CGColorGetColorSpace(v7);
      v2 = CGColorCreateWithContentHeadroom();
      CFRelease(v7);
      CFAutorelease(v2);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_23F3F81F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = [objc_opt_class() _getCIELABColorSpace];
  if (v9)
  {
    v10 = v9;
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_23F3F83B4;
    v20 = &unk_278C7B4D0;
    v21 = v9;
    if (qword_27E39A4D8 != -1)
    {
      dispatch_once(&qword_27E39A4D8, &block);
    }

    if (qword_27E39A4D0)
    {
      v11 = a1;
      [v11 CGColor];
      v12 = CGColorTransformConvertColor();
      if (v12)
      {
        v13 = v12;
        v14 = 8 * CGColorSpaceGetNumberOfComponents(v10);
        MEMORY[0x28223BE20]();
        v15 = (&block - ((v14 + 23) & 0xFFFFFFFFFFFFFFF0));
        Components = CGColorGetComponents(v13);
        memcpy(v15, Components, v14 + 8);
        if (a3)
        {
          *a3 = *v15;
        }

        if (a4)
        {
          *a4 = v15[1];
        }

        if (a5)
        {
          *a5 = v15[2];
        }

        CFRelease(v13);
      }
    }
  }
}

uint64_t sub_23F3F83B4(uint64_t a1)
{
  result = MEMORY[0x245CADF60](*(a1 + 32), 0);
  qword_27E39A4D0 = result;
  return result;
}

uint64_t sub_23F3F83DC()
{
  if (qword_27E39A4E8 != -1)
  {
    sub_23F4BCBAC();
  }

  return qword_27E39A4E0;
}

CGColorSpaceRef sub_23F3F8414()
{
  v5 = *MEMORY[0x277D85DE8];
  *whitePoint = xmmword_23F4D8EC0;
  v4 = 0x3FF16BD900000000;
  memset(blackPoint, 0, sizeof(blackPoint));
  v1[0] = xmmword_23F4D8ED8;
  v1[1] = unk_23F4D8EE8;
  result = CGColorSpaceCreateLab(whitePoint, blackPoint, v1);
  qword_27E39A4E0 = result;
  return result;
}

id sub_23F3F84A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 CGColor];
    ColorSpace = CGColorGetColorSpace(v5);
    v7 = CGColorSpaceGetName(ColorSpace);
    v8 = [MEMORY[0x277CCACA8] string];
    if (CGColorGetNumberOfComponents(v5))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%f ", v8, *&CGColorGetComponents(v5)[v9]];

        v9 = v10;
        v12 = CGColorGetNumberOfComponents(v5) > v10++;
        v8 = v11;
      }

      while (v12);
    }

    else
    {
      v11 = v8;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = [v11 stringByAppendingString:v7];
    [v4 akHeadroom];
    v13 = [v14 stringWithFormat:@"%@ %f", v15, v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_23F3F8608(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v14 = 0;
    goto LABEL_39;
  }

  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];
  if ([v5 count])
  {
    *components = xmmword_23F4D8EF8;
    v31 = unk_23F4D8F08;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v26;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) UTF8String];
        v24 = 0;
        v13 = strtod(v12, &v24);
        if (v24 == v12 || *v24)
        {
          break;
        }

        components[v9] = v13;
        if (v9 == 3)
        {
          v9 = 4;
          break;
        }

        ++v11;
        ++v9;
        if (v8 == v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if (v9 + 1 >= [v6 count])
    {
      v15 = 0;
    }

    else
    {
      v15 = [v6 objectAtIndexedSubscript:v9];
    }

    v16 = CGColorSpaceCreateWithName(v15);
    v17 = [v6 count];
    if (v9 == 4 && v17 > 5)
    {
      v18 = [v6 objectAtIndexedSubscript:5];
      [v18 floatValue];
      v20 = v19;

      if (v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v16)
      {
        goto LABEL_33;
      }

      v20 = 0.0;
      if (v9 < 3)
      {
        goto LABEL_36;
      }
    }

    if (qword_27E39A518 != -1)
    {
      sub_23F4BCBC0();
    }

    v16 = CGColorSpaceRetain(qword_27E39A510);
LABEL_30:
    if (v9 >= 4 && v20 > 1.0)
    {
      v21 = CGColorCreateWithContentHeadroom();
      goto LABEL_34;
    }

LABEL_33:
    v21 = CGColorCreate(v16, components);
LABEL_34:
    v22 = v21;
    CGColorSpaceRelease(v16);
    if (v22)
    {
      v14 = [MEMORY[0x277D75348] akColorWithCGColor:v22];
      CGColorRelease(v22);
LABEL_37:

      goto LABEL_38;
    }

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  v14 = 0;
LABEL_38:

LABEL_39:

  return v14;
}

CGColorSpaceRef sub_23F3F8908()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
  qword_27E39A4F0 = result;
  return result;
}

CGColorSpaceRef sub_23F3F8934()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_27E39A500 = result;
  return result;
}

CGColorSpaceRef sub_23F3F8954()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  qword_27E39A510 = result;
  return result;
}

id sub_23F3F94A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"a"];
    v6 = v5;
    if (v5)
    {
      [v5 floatValue];
      v8 = v7;
    }

    else
    {
      v8 = 1.0;
    }

    v10 = [v4 objectForKey:@"w"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 intValue];
      v9 = [MEMORY[0x277D75348] akColorWithSRGBRed:v12 / 255.0 green:v12 / 255.0 blue:v12 / 255.0 alpha:v8];
    }

    else
    {
      v13 = [v4 objectForKey:@"r"];
      v14 = v13;
      v15 = 0.0;
      v16 = 0.0;
      if (v13)
      {
        v16 = [v13 intValue] / 255.0;
      }

      v17 = [v4 objectForKey:@"g"];
      v18 = v17;
      if (v17)
      {
        v15 = [v17 intValue] / 255.0;
      }

      v19 = [v4 objectForKey:@"b"];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 intValue] / 255.0;
      }

      else
      {
        v21 = 0.0;
      }

      v9 = [MEMORY[0x277D75348] akColorWithSRGBRed:v16 green:v15 blue:v21 alpha:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_23F3F96C0()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"AKAnnotationTheme" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v3];
  v2 = qword_27E39A528;
  qword_27E39A528 = v1;
}

uint64_t sub_23F3F9C54(uint64_t a1)
{
  qword_27E39A538 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3F9CBC(uint64_t a1)
{
  qword_27E39A548 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3F9D24(uint64_t a1)
{
  qword_27E39A558 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3F9D8C(uint64_t a1)
{
  qword_27E39A568 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3F9DF4(uint64_t a1)
{
  qword_27E39A578 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA14C(uint64_t a1)
{
  qword_27E39A588 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA1B4(uint64_t a1)
{
  qword_27E39A598 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA21C(uint64_t a1)
{
  qword_27E39A5A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA284(uint64_t a1)
{
  qword_27E39A5B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA2EC(uint64_t a1)
{
  qword_27E39A5C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA644(uint64_t a1)
{
  qword_27E39A5D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA6AC(uint64_t a1)
{
  qword_27E39A5E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA714(uint64_t a1)
{
  qword_27E39A5F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA77C(uint64_t a1)
{
  qword_27E39A608 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FA7E4(uint64_t a1)
{
  qword_27E39A618 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FAB3C(uint64_t a1)
{
  qword_27E39A628 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FABA4(uint64_t a1)
{
  qword_27E39A638 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FAC0C(uint64_t a1)
{
  qword_27E39A648 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FAC74(uint64_t a1)
{
  qword_27E39A658 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FACDC(uint64_t a1)
{
  qword_27E39A668 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB034(uint64_t a1)
{
  qword_27E39A678 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB09C(uint64_t a1)
{
  qword_27E39A688 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB104(uint64_t a1)
{
  qword_27E39A698 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB16C(uint64_t a1)
{
  qword_27E39A6A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB1D4(uint64_t a1)
{
  qword_27E39A6B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB52C(uint64_t a1)
{
  qword_27E39A6C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB594(uint64_t a1)
{
  qword_27E39A6D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB5FC(uint64_t a1)
{
  qword_27E39A6E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB664(uint64_t a1)
{
  qword_27E39A6F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FB6CC(uint64_t a1)
{
  qword_27E39A708 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FBA24(uint64_t a1)
{
  qword_27E39A718 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FBA8C(uint64_t a1)
{
  qword_27E39A728 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FBAF4(uint64_t a1)
{
  qword_27E39A738 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FBB5C(uint64_t a1)
{
  qword_27E39A748 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FBBC4(uint64_t a1)
{
  qword_27E39A758 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F3FBCBC(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39A768 = [v1 BOOLValue];
}

uint64_t sub_23F3FC024(uint64_t a1)
{
  qword_27E39A778 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC08C(uint64_t a1)
{
  qword_27E39A788 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC0F4(uint64_t a1)
{
  qword_27E39A798 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC15C(uint64_t a1)
{
  qword_27E39A7A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC1C4(uint64_t a1)
{
  qword_27E39A7B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC51C(uint64_t a1)
{
  qword_27E39A7C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC584(uint64_t a1)
{
  qword_27E39A7D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC5EC(uint64_t a1)
{
  qword_27E39A7E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC654(uint64_t a1)
{
  qword_27E39A7F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FC6BC(uint64_t a1)
{
  qword_27E39A808 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCA14(uint64_t a1)
{
  qword_27E39A818 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCA7C(uint64_t a1)
{
  qword_27E39A828 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCAE4(uint64_t a1)
{
  qword_27E39A838 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCB4C(uint64_t a1)
{
  qword_27E39A848 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCBB4(uint64_t a1)
{
  qword_27E39A858 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCF0C(uint64_t a1)
{
  qword_27E39A868 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCF74(uint64_t a1)
{
  qword_27E39A878 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FCFDC(uint64_t a1)
{
  qword_27E39A888 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD044(uint64_t a1)
{
  qword_27E39A898 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD0AC(uint64_t a1)
{
  qword_27E39A8A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD404(uint64_t a1)
{
  qword_27E39A8B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD46C(uint64_t a1)
{
  qword_27E39A8C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD4D4(uint64_t a1)
{
  qword_27E39A8D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD53C(uint64_t a1)
{
  qword_27E39A8E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD5A4(uint64_t a1)
{
  qword_27E39A8F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD8FC(uint64_t a1)
{
  qword_27E39A908 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD964(uint64_t a1)
{
  qword_27E39A918 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FD9CC(uint64_t a1)
{
  qword_27E39A928 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDA34(uint64_t a1)
{
  qword_27E39A938 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDA9C(uint64_t a1)
{
  qword_27E39A948 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDDF4(uint64_t a1)
{
  qword_27E39A958 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDE5C(uint64_t a1)
{
  qword_27E39A968 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDEC4(uint64_t a1)
{
  qword_27E39A978 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDF2C(uint64_t a1)
{
  qword_27E39A988 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FDF94(uint64_t a1)
{
  qword_27E39A998 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F3FE08C(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39A9A8 = [v1 BOOLValue];
}

uint64_t sub_23F3FE3F4(uint64_t a1)
{
  qword_27E39A9B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE45C(uint64_t a1)
{
  qword_27E39A9C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE4C4(uint64_t a1)
{
  qword_27E39A9D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE52C(uint64_t a1)
{
  qword_27E39A9E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE594(uint64_t a1)
{
  qword_27E39A9F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE8EC(uint64_t a1)
{
  qword_27E39AA08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE954(uint64_t a1)
{
  qword_27E39AA18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FE9BC(uint64_t a1)
{
  qword_27E39AA28 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEA24(uint64_t a1)
{
  qword_27E39AA38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEA8C(uint64_t a1)
{
  qword_27E39AA48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEDE4(uint64_t a1)
{
  qword_27E39AA58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEE4C(uint64_t a1)
{
  qword_27E39AA68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEEB4(uint64_t a1)
{
  qword_27E39AA78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEF1C(uint64_t a1)
{
  qword_27E39AA88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FEF84(uint64_t a1)
{
  qword_27E39AA98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF2DC(uint64_t a1)
{
  qword_27E39AAA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF344(uint64_t a1)
{
  qword_27E39AAB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF3AC(uint64_t a1)
{
  qword_27E39AAC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF414(uint64_t a1)
{
  qword_27E39AAD8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF47C(uint64_t a1)
{
  qword_27E39AAE8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF7D4(uint64_t a1)
{
  qword_27E39AAF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF83C(uint64_t a1)
{
  qword_27E39AB08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF8A4(uint64_t a1)
{
  qword_27E39AB18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF90C(uint64_t a1)
{
  qword_27E39AB28 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FF974(uint64_t a1)
{
  qword_27E39AB38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FFCCC(uint64_t a1)
{
  qword_27E39AB48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FFD34(uint64_t a1)
{
  qword_27E39AB58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FFD9C(uint64_t a1)
{
  qword_27E39AB68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FFE04(uint64_t a1)
{
  qword_27E39AB78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F3FFE6C(uint64_t a1)
{
  qword_27E39AB88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4001C4(uint64_t a1)
{
  qword_27E39AB98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40022C(uint64_t a1)
{
  qword_27E39ABA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400294(uint64_t a1)
{
  qword_27E39ABB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4002FC(uint64_t a1)
{
  qword_27E39ABC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400364(uint64_t a1)
{
  qword_27E39ABD8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F40045C(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39ABE8 = [v1 BOOLValue];
}

uint64_t sub_23F4007C4(uint64_t a1)
{
  qword_27E39ABF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40082C(uint64_t a1)
{
  qword_27E39AC08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400894(uint64_t a1)
{
  qword_27E39AC18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4008FC(uint64_t a1)
{
  qword_27E39AC28 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400964(uint64_t a1)
{
  qword_27E39AC38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400CBC(uint64_t a1)
{
  qword_27E39AC48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400D24(uint64_t a1)
{
  qword_27E39AC58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400D8C(uint64_t a1)
{
  qword_27E39AC68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400DF4(uint64_t a1)
{
  qword_27E39AC78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F400E5C(uint64_t a1)
{
  qword_27E39AC88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4011B4(uint64_t a1)
{
  qword_27E39AC98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40121C(uint64_t a1)
{
  qword_27E39ACA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401284(uint64_t a1)
{
  qword_27E39ACB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4012EC(uint64_t a1)
{
  qword_27E39ACC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401354(uint64_t a1)
{
  qword_27E39ACD8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4016AC(uint64_t a1)
{
  qword_27E39ACE8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401714(uint64_t a1)
{
  qword_27E39ACF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40177C(uint64_t a1)
{
  qword_27E39AD08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4017E4(uint64_t a1)
{
  qword_27E39AD18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40184C(uint64_t a1)
{
  qword_27E39AD28 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401BA4(uint64_t a1)
{
  qword_27E39AD38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401C0C(uint64_t a1)
{
  qword_27E39AD48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401C74(uint64_t a1)
{
  qword_27E39AD58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401CDC(uint64_t a1)
{
  qword_27E39AD68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F401D44(uint64_t a1)
{
  qword_27E39AD78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40209C(uint64_t a1)
{
  qword_27E39AD88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402104(uint64_t a1)
{
  qword_27E39AD98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40216C(uint64_t a1)
{
  qword_27E39ADA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4021D4(uint64_t a1)
{
  qword_27E39ADB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40223C(uint64_t a1)
{
  qword_27E39ADC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402594(uint64_t a1)
{
  qword_27E39ADD8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4025FC(uint64_t a1)
{
  qword_27E39ADE8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402664(uint64_t a1)
{
  qword_27E39ADF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4026CC(uint64_t a1)
{
  qword_27E39AE08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402734(uint64_t a1)
{
  qword_27E39AE18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F40282C(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39AE28 = [v1 BOOLValue];
}

uint64_t sub_23F402B94(uint64_t a1)
{
  qword_27E39AE38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402BFC(uint64_t a1)
{
  qword_27E39AE48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402C64(uint64_t a1)
{
  qword_27E39AE58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402CCC(uint64_t a1)
{
  qword_27E39AE68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F402D34(uint64_t a1)
{
  qword_27E39AE78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40308C(uint64_t a1)
{
  qword_27E39AE88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4030F4(uint64_t a1)
{
  qword_27E39AE98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40315C(uint64_t a1)
{
  qword_27E39AEA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4031C4(uint64_t a1)
{
  qword_27E39AEB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40322C(uint64_t a1)
{
  qword_27E39AEC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403584(uint64_t a1)
{
  qword_27E39AED8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4035EC(uint64_t a1)
{
  qword_27E39AEE8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403654(uint64_t a1)
{
  qword_27E39AEF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4036BC(uint64_t a1)
{
  qword_27E39AF08 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403724(uint64_t a1)
{
  qword_27E39AF18 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403A7C(uint64_t a1)
{
  qword_27E39AF28 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403AE4(uint64_t a1)
{
  qword_27E39AF38 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403B4C(uint64_t a1)
{
  qword_27E39AF48 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403BB4(uint64_t a1)
{
  qword_27E39AF58 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403C1C(uint64_t a1)
{
  qword_27E39AF68 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403F74(uint64_t a1)
{
  qword_27E39AF78 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F403FDC(uint64_t a1)
{
  qword_27E39AF88 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404044(uint64_t a1)
{
  qword_27E39AF98 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4040AC(uint64_t a1)
{
  qword_27E39AFA8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404114(uint64_t a1)
{
  qword_27E39AFB8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40446C(uint64_t a1)
{
  qword_27E39AFC8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4044D4(uint64_t a1)
{
  qword_27E39AFD8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40453C(uint64_t a1)
{
  qword_27E39AFE8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4045A4(uint64_t a1)
{
  qword_27E39AFF8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40460C(uint64_t a1)
{
  qword_27E39B008 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404964(uint64_t a1)
{
  qword_27E39B018 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4049CC(uint64_t a1)
{
  qword_27E39B028 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404A34(uint64_t a1)
{
  qword_27E39B038 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404A9C(uint64_t a1)
{
  qword_27E39B048 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404B04(uint64_t a1)
{
  qword_27E39B058 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F404BFC(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39B068 = [v1 BOOLValue];
}

uint64_t sub_23F404F64(uint64_t a1)
{
  qword_27E39B078 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F404FCC(uint64_t a1)
{
  qword_27E39B088 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405034(uint64_t a1)
{
  qword_27E39B098 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40509C(uint64_t a1)
{
  qword_27E39B0A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405104(uint64_t a1)
{
  qword_27E39B0B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40545C(uint64_t a1)
{
  qword_27E39B0C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4054C4(uint64_t a1)
{
  qword_27E39B0D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40552C(uint64_t a1)
{
  qword_27E39B0E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405594(uint64_t a1)
{
  qword_27E39B0F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4055FC(uint64_t a1)
{
  qword_27E39B108 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405954(uint64_t a1)
{
  qword_27E39B118 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4059BC(uint64_t a1)
{
  qword_27E39B128 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405A24(uint64_t a1)
{
  qword_27E39B138 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405A8C(uint64_t a1)
{
  qword_27E39B148 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405AF4(uint64_t a1)
{
  qword_27E39B158 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405E4C(uint64_t a1)
{
  qword_27E39B168 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405EB4(uint64_t a1)
{
  qword_27E39B178 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405F1C(uint64_t a1)
{
  qword_27E39B188 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405F84(uint64_t a1)
{
  qword_27E39B198 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F405FEC(uint64_t a1)
{
  qword_27E39B1A8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406344(uint64_t a1)
{
  qword_27E39B1B8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4063AC(uint64_t a1)
{
  qword_27E39B1C8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406414(uint64_t a1)
{
  qword_27E39B1D8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40647C(uint64_t a1)
{
  qword_27E39B1E8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4064E4(uint64_t a1)
{
  qword_27E39B1F8 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_fill_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40683C(uint64_t a1)
{
  qword_27E39B208 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4068A4(uint64_t a1)
{
  qword_27E39B218 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F40690C(uint64_t a1)
{
  qword_27E39B228 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406974(uint64_t a1)
{
  qword_27E39B238 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4069DC(uint64_t a1)
{
  qword_27E39B248 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_border_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406D34(uint64_t a1)
{
  qword_27E39B258 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406D9C(uint64_t a1)
{
  qword_27E39B268 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406E04(uint64_t a1)
{
  qword_27E39B278 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406E6C(uint64_t a1)
{
  qword_27E39B288 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F406ED4(uint64_t a1)
{
  qword_27E39B298 = +[AKAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AKAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_sidebar_bar_color", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void sub_23F406FCC(uint64_t a1)
{
  v1 = +[AKAnnotationTheme themeItemForAnnotationStyle:propertyName:](AKAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_27E39B2A8 = [v1 BOOLValue];
}

void sub_23F4070DC()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v3 = [v0 objectForKey:@"note_strikethrough_color"];

  if (v3)
  {
    [MEMORY[0x277D75348] im_colorWithSRGBDescription:v3];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v1 = ;
  v2 = qword_27E39B2B8;
  qword_27E39B2B8 = v1;
}

void sub_23F4071BC()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v3 = [v0 objectForKey:@"note_sidebar_text_color"];

  if (v3)
  {
    [MEMORY[0x277D75348] im_colorWithSRGBDescription:v3];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v1 = ;
  v2 = qword_27E39B2C8;
  qword_27E39B2C8 = v1;
}

uint64_t sub_23F407520(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeGreen);
  v3 = qword_27E39B2D8;
  qword_27E39B2D8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B2D8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407574(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeGreen);
  v3 = qword_27E39B2E8;
  qword_27E39B2E8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B2E8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4075C8(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeGreen);
  v3 = qword_27E39B2F8;
  qword_27E39B2F8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B2F8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F40761C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeGreen);
  v3 = qword_27E39B308;
  qword_27E39B308 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B308;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407670(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeGreen);
  v3 = qword_27E39B318;
  qword_27E39B318 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B318;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F40798C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeBlue);
  v3 = qword_27E39B328;
  qword_27E39B328 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B328;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4079E0(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeBlue);
  v3 = qword_27E39B338;
  qword_27E39B338 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B338;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407A34(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeBlue);
  v3 = qword_27E39B348;
  qword_27E39B348 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B348;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407A88(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeBlue);
  v3 = qword_27E39B358;
  qword_27E39B358 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B358;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407ADC(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeBlue);
  v3 = qword_27E39B368;
  qword_27E39B368 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B368;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407DF8(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeYellow);
  v3 = qword_27E39B378;
  qword_27E39B378 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B378;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407E4C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeYellow);
  v3 = qword_27E39B388;
  qword_27E39B388 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B388;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407EA0(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeYellow);
  v3 = qword_27E39B398;
  qword_27E39B398 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B398;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407EF4(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeYellow);
  v3 = qword_27E39B3A8;
  qword_27E39B3A8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3A8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F407F48(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeYellow);
  v3 = qword_27E39B3B8;
  qword_27E39B3B8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3B8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408264(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePink);
  v3 = qword_27E39B3C8;
  qword_27E39B3C8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3C8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4082B8(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePink);
  v3 = qword_27E39B3D8;
  qword_27E39B3D8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3D8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F40830C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePink);
  v3 = qword_27E39B3E8;
  qword_27E39B3E8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3E8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408360(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePink);
  v3 = qword_27E39B3F8;
  qword_27E39B3F8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B3F8;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4083B4(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePink);
  v3 = qword_27E39B408;
  qword_27E39B408 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B408;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4086D0(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePurple);
  v3 = qword_27E39B418;
  qword_27E39B418 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B418;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408724(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePurple);
  v3 = qword_27E39B428;
  qword_27E39B428 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B428;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408778(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePurple);
  v3 = qword_27E39B438;
  qword_27E39B438 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B438;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F4087CC(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePurple);
  v3 = qword_27E39B448;
  qword_27E39B448 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B448;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408820(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemePurple);
  v3 = qword_27E39B458;
  qword_27E39B458 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B458;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408B3C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeUnderline);
  v3 = qword_27E39B468;
  qword_27E39B468 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B468;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408B90(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeUnderline);
  v3 = qword_27E39B478;
  qword_27E39B478 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B478;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408BE4(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeUnderline);
  v3 = qword_27E39B488;
  qword_27E39B488 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B488;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408C38(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeUnderline);
  v3 = qword_27E39B498;
  qword_27E39B498 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B498;

  return [v5 setPageTheme:v4];
}

uint64_t sub_23F408C8C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAnnotationThemeUnderline);
  v3 = qword_27E39B4A8;
  qword_27E39B4A8 = v2;

  v4 = *(a1 + 32);
  v5 = qword_27E39B4A8;

  return [v5 setPageTheme:v4];
}

void sub_23F409154(uint64_t a1)
{
  v2 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v2 objectForKey:@"highlight_text_color"];

  v3 = [*(a1 + 32) colorForThemeItem:v7 pageTheme:*(a1 + 40)];
  v4 = qword_27E39B4B8;
  qword_27E39B4B8 = v3;

  if (qword_27E39B4B8)
  {
    v5 = qword_27E39B4B8;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = qword_27E39B4B8;
  qword_27E39B4B8 = v5;
}

void sub_23F40920C(uint64_t a1)
{
  v2 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v2 objectForKey:@"highlight_text_color"];

  v3 = [*(a1 + 32) colorForThemeItem:v7 pageTheme:*(a1 + 40)];
  v4 = qword_27E39B4C8;
  qword_27E39B4C8 = v3;

  if (qword_27E39B4C8)
  {
    v5 = qword_27E39B4C8;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = qword_27E39B4C8;
  qword_27E39B4C8 = v5;
}

void sub_23F4092C4(uint64_t a1)
{
  v2 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v2 objectForKey:@"highlight_text_color"];

  v3 = [*(a1 + 32) colorForThemeItem:v7 pageTheme:*(a1 + 40)];
  v4 = qword_27E39B4D8;
  qword_27E39B4D8 = v3;

  if (qword_27E39B4D8)
  {
    v5 = qword_27E39B4D8;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = qword_27E39B4D8;
  qword_27E39B4D8 = v5;
}

void sub_23F40937C(uint64_t a1)
{
  v2 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v2 objectForKey:@"highlight_text_color"];

  v3 = [*(a1 + 32) colorForThemeItem:v7 pageTheme:*(a1 + 40)];
  v4 = qword_27E39B4E8;
  qword_27E39B4E8 = v3;

  if (qword_27E39B4E8)
  {
    v5 = qword_27E39B4E8;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = qword_27E39B4E8;
  qword_27E39B4E8 = v5;
}

void sub_23F409434(uint64_t a1)
{
  v2 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v2 objectForKey:@"highlight_text_color"];

  v3 = [*(a1 + 32) colorForThemeItem:v7 pageTheme:*(a1 + 40)];
  v4 = qword_27E39B4F8;
  qword_27E39B4F8 = v3;

  if (qword_27E39B4F8)
  {
    v5 = qword_27E39B4F8;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = qword_27E39B4F8;
  qword_27E39B4F8 = v5;
}

void sub_23F409524()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v3 = [v0 objectForKey:@"note_shadow"];

  v1 = [v3 objectForKey:@"radius"];
  [v1 floatValue];
  *&qword_27E39B508 = v2;
}

void sub_23F4095EC()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v3 = [v0 objectForKey:@"note_shadow"];

  v1 = [v3 objectForKey:@"opacity"];
  [v1 floatValue];
  *&qword_27E39B518 = v2;
}

void sub_23F4096C0()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v4 = [v0 objectForKey:@"note_shadow"];

  v1 = [v4 objectForKey:@"color"];
  if (v1)
  {
    [MEMORY[0x277D75348] im_colorWithSRGBDescription:v1];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v2 = ;
  v3 = qword_27E39B528;
  qword_27E39B528 = v2;
}

void sub_23F4097B4()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v6 = [v0 objectForKey:@"note_shadow"];

  v1 = [v6 objectForKey:@"offset_x"];
  v2 = [v6 objectForKey:@"offset_y"];
  [v1 floatValue];
  *&v4 = v3;
  [v2 floatValue];
  qword_27E39B538 = v4;
  *&qword_27E39B540 = v5;
}

void sub_23F4098C4()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v0 objectForKey:@"note_font"];

  v1 = [v7 objectForKey:@"name"];
  v2 = [v7 objectForKey:@"size"];
  v3 = MEMORY[0x277D74300];
  [v2 floatValue];
  v5 = [v3 fontWithName:v1 size:v4];
  v6 = qword_27E39B550;
  qword_27E39B550 = v5;
}

void sub_23F4099DC()
{
  v0 = +[AKAnnotationTheme themeDescriptions];
  v7 = [v0 objectForKey:@"note_font_table"];

  v1 = [v7 objectForKey:@"name"];
  v2 = [v7 objectForKey:@"size"];
  v3 = MEMORY[0x277D74300];
  [v2 floatValue];
  v5 = [v3 fontWithName:v1 size:v4];
  v6 = qword_27E39B560;
  qword_27E39B560 = v5;
}

void sub_23F409ED0(uint64_t a1)
{
  v5 = [*(a1 + 32) tintColor];
  v2 = v5;
  v3 = [v5 CGColor];
  v4 = [*(a1 + 32) layer];
  [v4 setBackgroundColor:v3];
}

void sub_23F409F48(uint64_t a1)
{
  v5 = [MEMORY[0x277D75348] clearColor];
  v2 = v5;
  v3 = [v5 CGColor];
  v4 = [*(a1 + 32) layer];
  [v4 setBackgroundColor:v3];
}

const CGPath *sub_23F40A5EC(void *a1)
{
  result = [a1 CGPath];
  if (result)
  {

    return CGPathCreateMutableCopy(result);
  }

  return result;
}

void sub_23F40C760(__IOSurface *a1)
{
  IOSurfaceDecrementUseCount(a1);

  CFRelease(a1);
}

void sub_23F40CBCC(uint64_t a1, uint64_t a2)
{
  v3 = [AKTextAnnotationAttributeHelper font:a2 byApplyingScaleFactor:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

void sub_23F40DB54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [objc_opt_class() font:v7 byApplyingScaleFactor:*(a1 + 48)];

  [*(a1 + 32) addAttribute:*MEMORY[0x277D740A8] value:v8 range:{a3, a4}];
}

void sub_23F40DDC8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:*MEMORY[0x277D740F8]];
  if (!v3)
  {
    v3 = [v4 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  }

  (*(*(a1 + 32) + 16))();
}

BOOL sub_23F40E7DC()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  return v7 > 768.0;
}

void sub_23F40F4AC(uint64_t a1)
{
  v2 = [*(a1 + 32) toolPicker];
  v3 = [v2 isVisible];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _forceToolPickerVisibleForViewStateChange:0];
  }
}

void sub_23F410688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_23F4106A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[51] setAlpha:*(a1 + 40)];
  [WeakRetained[52] setAlpha:*(a1 + 40)];
}

void sub_23F410C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_23F410C54(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_23F410C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _undo:0];
  [WeakRetained _cleanupAfterUndoAlert];
  (*(*(a1 + 32) + 16))();
}

void sub_23F410CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _undoAll:0];
  [WeakRetained _cleanupAfterUndoAlert];
  (*(*(a1 + 32) + 16))();
}

BOOL sub_23F4119E4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 presentingViewController];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_23F411A24(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isBeingPresented])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isBeingDismissed];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_23F412224(uint64_t a1)
{
  v2 = [[AKSignaturesViewController_iOS alloc] initWithController:*(a1 + 32)];
  [(AKSignaturesViewController_iOS *)v2 setDelegate:*(a1 + 40)];
  [(AKSignaturesViewController_iOS *)v2 setPresentedInAlert:1];
  [(AKSignaturesViewController_iOS *)v2 setShowsNavigationBar:0];
  [(AKSignaturesViewController_iOS *)v2 setAllowsEdits:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(AKSignaturesViewController_iOS *)v2 setTableBackgroundColor:v3];

  v4 = [AKAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v4 setModalPresentationStyle:7];
  v5 = *(a1 + 40);
  v6 = [v4 popoverPresentationController];
  [v6 setDelegate:v5];

  v7 = [v4 popoverPresentationController];
  [v7 setPermittedArrowDirections:3];

  [v4 setContentViewController:v2];
  v8 = MEMORY[0x277D750F8];
  v9 = +[AKController akBundle];
  v10 = [v9 localizedStringForKey:@"Add or Remove Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23F412528;
  v27[3] = &unk_278C7B7C0;
  v27[4] = *(a1 + 40);
  v11 = v2;
  v28 = v11;
  v12 = [v8 actionWithTitle:v10 style:0 handler:v27];
  [v4 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = +[AKController akBundle];
  v15 = [v14 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_23F412534;
  v24 = &unk_278C7B7C0;
  v25 = *(a1 + 40);
  v26 = v11;
  v16 = v11;
  v17 = [v13 actionWithTitle:v15 style:1 handler:&v21];
  [v4 addAction:{v17, v21, v22, v23, v24, v25}];

  [*(a1 + 40) _setPopoverPresentationSource:v4 fromSender:*(a1 + 48) sourceRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) _presentViewController:v4 animated:1];
  v18 = *(a1 + 40);
  v19 = *(v18 + 496);
  *(v18 + 496) = v4;
  v20 = v4;
}

void sub_23F4125D8(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v15 = [*(a1 + 32) annotationController];
  v2 = [[AKTextAttributesViewController alloc] initWithController:v15];
  [(AKTextAttributesViewController *)v2 setModalPresentationStyle:7];
  v3 = *(a1 + 32);
  v4 = [(AKTextAttributesViewController *)v2 popoverPresentationController];
  [v4 setDelegate:v3];

  v5 = [*(a1 + 32) _toolPickerPopoverConfiguration];
  v6 = [v5 passthroughViews];
  v7 = [(AKTextAttributesViewController *)v2 popoverPresentationController];
  [v7 setPassthroughViews:v6];

  v8 = [(AKTextAttributesViewController *)v2 popoverPresentationController];
  [v8 _setShouldDisableInteractionDuringTransitions:0];

  v9 = [*(a1 + 32) _toolPickerPopoverConfiguration];
  v10 = [v9 permittedArrowDirections];
  v11 = [(AKTextAttributesViewController *)v2 popoverPresentationController];
  [v11 setPermittedArrowDirections:v10];

  v12 = [(AKTextAttributesViewController *)v2 popoverPresentationController];
  [v12 _setIgnoresKeyboardNotifications:1];

  [*(a1 + 32) _setPopoverPresentationSource:v2 fromSender:*(a1 + 40)];
  [*(a1 + 32) _presentViewController:v2 animated:1];
  v13 = *(a1 + 32);
  v14 = *(v13 + 512);
  *(v13 + 512) = v2;
}

void sub_23F412914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F41292C(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 didDismissPopover];
}

uint64_t sub_23F412984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23F41299C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) popoverPresentationController];
  [v2 setDelegate:0];

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  [*(a1 + 32) _clearPresentedPopoverPointers];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_23F412C7C(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v2 = objc_alloc_init(AKToolsListViewController);
  [(AKToolsListViewController *)v2 setDelegate:*(a1 + 32)];
  [(AKToolsListViewController *)v2 setModalPresentationStyle:7];
  v3 = *(a1 + 32);
  v4 = [(AKToolsListViewController *)v2 popoverPresentationController];
  [v4 setDelegate:v3];

  v5 = [(AKToolsListViewController *)v2 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v7 = ;
  v8 = [(AKToolsListViewController *)v2 popoverPresentationController];
  [v8 setBackgroundColor:v7];

  v9 = [*(a1 + 32) _toolPickerPopoverConfiguration];
  v10 = [v9 permittedArrowDirections];
  v11 = [(AKToolsListViewController *)v2 popoverPresentationController];
  [v11 setPermittedArrowDirections:v10];

  v12 = [(AKToolsListViewController *)v2 popoverPresentationController];
  [v12 _setIgnoresKeyboardNotifications:1];

  v13 = [*(a1 + 32) _paletteView];

  if (v13)
  {
    v14 = [*(a1 + 32) _toolPickerPopoverConfiguration];
    [v14 layoutSceneMargins];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(AKToolsListViewController *)v2 popoverPresentationController];
    [v23 setPopoverLayoutMargins:{v16, v18, v20, v22}];
  }

  [*(a1 + 32) _setPopoverPresentationSource:v2 fromSender:*(a1 + 40)];
  [*(a1 + 32) _presentViewController:v2 animated:1];
  v24 = *(a1 + 32);
  v25 = *(v24 + 536);
  *(v24 + 536) = v2;
}

void sub_23F412F20(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v46 = [*(a1 + 32) annotationController];
  v2 = [v46 currentPageController];
  v3 = [v2 pageModelController];

  v4 = [v3 selectedAnnotations];
  v5 = [[AKAttributePickerViewController alloc] initWithController:v46 selectedAnnotations:v4];
  [(AKAttributePickerViewController *)v5 setDelegate:*(a1 + 32)];
  [(AKAttributePickerViewController *)v5 setModalPresentationStyle:7];
  v6 = *(a1 + 32);
  v7 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v7 setDelegate:v6];

  v8 = [(AKAttributePickerViewController *)v5 traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (v9 == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v10 = ;
  v11 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v11 setBackgroundColor:v10];

  v12 = [*(a1 + 32) _toolPickerPopoverConfiguration];
  v13 = [v12 permittedArrowDirections];
  v14 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v14 setPermittedArrowDirections:v13];

  v15 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v15 _setShouldDisableInteractionDuringTransitions:0];

  v16 = [*(a1 + 32) _toolPickerPopoverConfiguration];
  v17 = [v16 passthroughViews];
  v18 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v18 setPassthroughViews:v17];

  v19 = *(*(a1 + 32) + 592);
  v20 = [*(a1 + 32) _paletteView];
  [v19 bounds];
  [v20 convertRect:v19 fromView:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v20 palettePosition];
  v30 = 0;
  if (v29 > 2)
  {
    if (v29 != 3)
    {
      if (v29 != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_11:
    [v20 bounds];
    v24 = v33;
    [v20 bounds];
    v28 = v34;
    v30 = 0;
    goto LABEL_12;
  }

  if (v29 == 1)
  {
    goto LABEL_11;
  }

  if (v29 == 2)
  {
LABEL_10:
    [v20 bounds];
    v22 = v31;
    [v20 bounds];
    v26 = v32;
    v30 = 1;
  }

LABEL_12:
  v35 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v35 _setShouldHideArrow:v30];

  v36 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v36 setSourceView:v20];

  v48.origin.x = v22;
  v48.origin.y = v24;
  v48.size.width = v26;
  v48.size.height = v28;
  v49 = CGRectInset(v48, -6.0, -6.0);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v41 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v41 setSourceRect:{x, y, width, height}];

  v42 = [(AKAttributePickerViewController *)v5 popoverPresentationController];
  [v42 _setIgnoresKeyboardNotifications:1];

  v43 = *(a1 + 32);
  v44 = *(v43 + 544);
  *(v43 + 544) = v5;
  v45 = v5;

  [*(a1 + 32) _presentViewController:v45 animated:1];
}

void sub_23F41391C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23F413938(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[62] popoverPresentationController];
  [v2 setDelegate:0];

  v3 = WeakRetained[62];
  WeakRetained[62] = 0;

  [*(a1 + 32) didDismissPopoverAndRestorePalette];
}

void sub_23F413C44(uint64_t a1)
{
  v12 = [*(a1 + 32) annotationController];
  v2 = [v12 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 controllerWillShowSignatureCaptureView:v12];
  }

  v3 = [*(*(a1 + 32) + 520) popoverPresentationController];
  [v3 setDelegate:0];

  [*(*(a1 + 32) + 520) setDelegate:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 520);
  *(v4 + 520) = 0;

  v6 = [[AKSignatureCreationViewController_iOS alloc] initWithController:v12];
  [(AKSignatureCreationViewController_iOS *)v6 setModalTransitionStyle:0];
  [*(a1 + 32) _configureCustomDetentPresentationIfNeeded:v6];
  [(AKSignatureCreationViewController_iOS *)v6 setModalPresentationStyle:2];
  [(AKSignatureCreationViewController_iOS *)v6 setModalInPresentation:1];
  [(AKSignatureCreationViewController_iOS *)v6 setDelegate:*(a1 + 32)];
  v7 = *(a1 + 32);
  v8 = [(AKSignatureCreationViewController_iOS *)v6 popoverPresentationController];
  [v8 setDelegate:v7];

  v9 = *(a1 + 32);
  v10 = *(v9 + 528);
  *(v9 + 528) = v6;
  v11 = v6;

  [*(a1 + 32) _presentViewController:v11 animated:1];
}

void sub_23F4140D0(uint64_t a1)
{
  v3 = [[AKMinimalUserInterfaceItem alloc] initWithTag:*(a1 + 40)];
  v2 = [*(a1 + 32) annotationController];
  [v2 performActionForSender:v3];
}

void sub_23F4144FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F414520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained[68] popoverPresentationController];
  [v1 setDelegate:0];

  v2 = WeakRetained[68];
  WeakRetained[68] = 0;
}

uint64_t sub_23F415218()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 executablePath];
  v2 = [v1 containsString:@"MarkupPhotoExtension.appex/"];

  return v2;
}

void sub_23F415278()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 doubleForKey:@"AKHeadroomLimitForHDR"];
  v2 = v1;

  if (v2 > 0.0)
  {
    qword_27E399570 = *&v2;
  }
}

void sub_23F417708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v22 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 mutableCopy];
  v7 = *MEMORY[0x277D74118];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D74118]];
  v9 = [v8 mutableCopy];

  [v9 setTabStops:MEMORY[0x277CBEBF8]];
  [v6 setObject:v9 forKeyedSubscript:v7];
  if (qword_27E39B578 != -1)
  {
    sub_23F4BCF24();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = qword_27E39B570;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v5 objectForKeyedSubscript:{v15, v20, v22, v24}];
        if (v16)
        {
          [v6 setObject:v16 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D740F8];
  v18 = [v5 objectForKeyedSubscript:*MEMORY[0x277D740F8]];
  v19 = *MEMORY[0x277D740A8];
  if (!v18)
  {
    v18 = [v5 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  }

  [v6 setObject:v18 forKeyedSubscript:{v19, v20, v22}];
  [v6 removeObjectForKey:v17];
  [*(a1 + 32) setAttributes:v6 range:{v21, v23}];
}

void sub_23F41792C()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D74068];
  v5[0] = *MEMORY[0x277D740C0];
  v5[1] = v0;
  v1 = *MEMORY[0x277D741E8];
  v5[2] = *MEMORY[0x277D74158];
  v5[3] = v1;
  v2 = *MEMORY[0x277D74070];
  v5[4] = *MEMORY[0x277D74148];
  v5[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v4 = qword_27E39B570;
  qword_27E39B570 = v3;
}

void sub_23F417DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_23F417DFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_23F419854(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 candidatePickerView];
  v4 = [v2 superview];

  v3 = [v1 candidatePickerView];
  [v3 removeFromSuperview];

  [v1 setCandidatePickerView:0];
  [v4 updateConstraintsIfNeeded];
}

void sub_23F41AEDC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = a1;
  v12 = a6 * 3.14159265 / 180.0;
  v21 = v11;
  if (v12 > 0.785398163)
  {
    v13 = -1;
    do
    {
      v12 = v12 + -1.57079633;
      ++v13;
    }

    while (v12 > 0.785398163);
    if ((v13 & 1) == 0)
    {
      v23.origin.x = a2;
      v23.origin.y = a3;
      v23.size.width = a4;
      v23.size.height = a5;
      Height = CGRectGetHeight(v23);
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      Width = CGRectGetWidth(v24);
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      MidX = CGRectGetMidX(v25);
      v26.origin.x = a2;
      v26.origin.y = a3;
      v26.size.width = a4;
      v26.size.height = a5;
      [AKGeometryHelper rectWithSize:Height centeredAtPoint:Width, MidX, CGRectGetMidY(v26)];
      v11 = v21;
      a2 = v17;
      a3 = v18;
      a4 = v19;
      a5 = v20;
    }
  }

  [v11 setRectangle:{a2, a3, a4, a5}];
  [v21 setRotationAngle:v12];
}

void sub_23F41C094(uint64_t a1, uint64_t a2, void *a3, int a4, float64x2_t *a5, void *a6, void *a7, double a8, double a9, double a10, double a11)
{
  v32 = a3;
  v21 = a7;
  v22 = a6;
  [AKGeometryHelper adjustPoint:a2 forExifOrientation:a8 aboutCenter:a9, a10, a11];
  if (a4)
  {
    v31 = vaddq_f64(a5[2], vmlaq_n_f64(vmulq_n_f64(a5[1], v24), *a5, v23));
    v25 = [v32 geometryHelper];
    [v25 screenPixelAlignedPointForPoint:*&v31];
    v30 = v27;
    v31.f64[0] = v26;

    v24 = *&v30;
    v23 = v31.f64[0];
  }

  v28 = [MEMORY[0x277CCAE60] akValueWithPoint:{v23, v24, v30}];
  [v22 addObject:v28];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  [v21 addObject:v29];
}

id sub_23F41CAD8(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingLeadingCharactersInSet:v2];

  return v3;
}

id sub_23F41CB38(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingTrailingCharactersInSet:v2];

  return v3;
}

id sub_23F41CB98(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingLeadingCharactersInSet:v2];

  return v3;
}

id sub_23F41CBF8(void *a1)
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingTrailingCharactersInSet:v2];

  return v3;
}

id sub_23F41CC58(void *a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 length];
  MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  [a1 getCharacters:v11 - v6 range:{0, v5}];
  v8 = 0;
  if (v5)
  {
    while ([v4 characterIsMember:*&v7[2 * v8]])
    {
      if (v5 == ++v8)
      {
        v8 = v5;
        break;
      }
    }
  }

  v9 = [a1 substringWithRange:{v8, v5 - v8}];

  return v9;
}

id sub_23F41CD6C(void *a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 length];
  MEMORY[0x28223BE20]();
  v7 = v11 - v6;
  [a1 getCharacters:v11 - v6 range:{0, v5}];
  if (v5)
  {
    v8 = v7 - 2;
    do
    {
      if (![v4 characterIsMember:*&v8[2 * v5]])
      {
        break;
      }

      --v5;
    }

    while (v5);
  }

  v9 = [a1 substringWithRange:{0, v5}];

  return v9;
}

id sub_23F41CE78(void *a1)
{
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  v4 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23F41CFC8;
  v11[3] = &unk_278C7B928;
  v12 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v11];
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23F41D020;
  v9[3] = &unk_278C7B928;
  v7 = v6;
  v10 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  return v7;
}

void sub_23F41CFC8(uint64_t a1, void *a2)
{
  v3 = [a2 stringByTrimmingTrailingWhitespace];
  [*(a1 + 32) addObject:v3];
}

void sub_23F41D020(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  [*(a1 + 32) appendString:v3];
}

__CFString *sub_23F41D08C(void *a1)
{
  if ([a1 isEqualToString:@"."] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @".."))
  {
    v2 = &stru_28519E870;
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

AKColorString *sub_23F41D0F0(uint64_t a1)
{
  v1 = [[AKColorString alloc] initWithString:a1];

  return v1;
}

void sub_23F41FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) convertFont:a2];
  [*(a1 + 40) addAttribute:*MEMORY[0x277D740A8] value:v7 range:{a3, a4}];
}

void sub_23F41FBF4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [a1[4] convertTextAttributes:a2];
  [a1[5] setAttributes:v9 range:{a3, a4}];
  v7 = [v9 objectForKeyedSubscript:@"NSColor"];

  if (v7)
  {
    v8 = [v9 objectForKeyedSubscript:@"NSColor"];
    [a1[6] setForegroundColor:v8];
  }
}

void sub_23F41FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [AKTextAnnotationAttributeHelper font:a2 byApplyingScaleFactor:*(a1 + 48)];
  v8 = [*(a1 + 32) convertFont:v7];
  v9 = [AKTextAnnotationAttributeHelper font:v8 byApplyingScaleFactor:*(a1 + 56)];

  [*(a1 + 40) addAttribute:*MEMORY[0x277D740A8] value:v9 range:{a3, a4}];
}

void sub_23F41FD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) convertTextAttributes:a2];
  [*(a1 + 40) setAttributes:v7 range:{a3, a4}];
}

void sub_23F421B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F421C00(uint64_t a1)
{
  [*(a1 + 32) _askAnnotationControllerDelegateToEnterFullScreen:0];
  v2 = *(a1 + 32);

  return [v2 becomeFirstResponder];
}

Class sub_23F421D48(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_27E39B588)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = sub_23F421E8C;
    v4[4] = &unk_278C7B4D0;
    v4[5] = v4;
    v5 = xmmword_278C7B9F0;
    v6 = 0;
    qword_27E39B588 = _sl_dlopen();
    v2 = v4[0];
    if (qword_27E39B588)
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
  result = objc_getClass("AXSSImageDescriptionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_23F4BCFD8();
  }

  qword_27E39B580 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23F421E8C()
{
  result = _sl_dlopen();
  qword_27E39B588 = result;
  return result;
}

double sub_23F42578C(void *a1)
{
  v2 = [a1 view];
  [a1 locationInView:v2];
  v4 = v3;
  v6 = v5;

  v7 = [a1 view];
  [v7 convertPoint:0 toView:{v4, v6}];
  v9 = v8;

  return v9;
}

void sub_23F4258A8(CGContextRef c, CGFloat a2)
{
  if (a2 == 0.0)
  {
    NSLog(&cfstr_BogusLinewidth.isa);
    CGContextGetCTM(&v3, c);
    CGAffineTransformInvert(&v4, &v3);
    a2 = v4.a + v4.c;
  }

  CGContextSetLineWidth(c, a2);
}

void sub_23F425B4C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      v16 = v3;
      [v3 lineToPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    }

    else
    {
      v16 = v3;
      [v3 moveToPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v16 = v3;
        [v3 currentPoint];
        v5 = *(a2 + 8);
        v6 = v5[1];
        v8 = v7 * 0.33333 + *v5 * 0.66667;
        v10 = v9 * 0.33333 + v6 * 0.66667;
        v11 = v5[2] * 0.33333 + *v5 * 0.66667;
        v12 = v5[3] * 0.33333 + v6 * 0.66667;
        v3 = v16;
        v13 = v5[2];
        v14 = v5[3];
        break;
      case 3:
        v15 = *(a2 + 8);
        v13 = v15[4];
        v14 = v15[5];
        v8 = *v15;
        v10 = v15[1];
        v11 = v15[2];
        v12 = v15[3];
        v16 = v3;
        break;
      case 4:
        v16 = v3;
        [v3 closePath];
        goto LABEL_13;
      default:
        goto LABEL_14;
    }

    [v3 curveToPoint:v13 controlPoint1:v14 controlPoint2:{v8, v10, v11, v12}];
  }

LABEL_13:
  v3 = v16;
LABEL_14:
}

void sub_23F42685C(void *a1, CGContext *a2)
{
  v8 = a1;
  v3 = v8[1];
  if (v3 >= 1)
  {
    v4 = v8[3];
    v5 = v4 + 24 * v3;
    v6 = v8[7];
    do
    {
      v7 = *v4 & 0xF;
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          CGContextAddCurveToPoint(a2, *v6, v6[1], v6[2], v6[3], *(v4 + 8), *(v4 + 16));
          v6 += 4;
        }

        else if (v7 == 3)
        {
          CGContextClosePath(a2);
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          CGContextAddLineToPoint(a2, *(v4 + 8), *(v4 + 16));
        }
      }

      else
      {
        CGContextMoveToPoint(a2, *(v4 + 8), *(v4 + 16));
      }

      v4 += 24;
    }

    while (v4 < v5);
  }
}

void sub_23F4299A8(uint64_t a1, float *a2)
{
  v4 = 0;
  v36[25] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = sub_23F465A04(v9, v8, v10, v11) + v7;
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  v12 = sub_23F465A04(v5, v6, *(a1 + 48), *(a1 + 56));
  if ((v7 - v12) <= 0.1)
  {
    *a2 = *a2 + v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v13;
    v14 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v14;
    v15 = v36;
    v16 = 3;
    v17 = 1;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v23 = v35[4 * v17 - 4];
      v24 = v16;
      v25 = v15;
      do
      {
        v26 = v25[-3];
        *v25++ = vmlaq_f64(vmulq_f64(v26, _Q0), _Q0, v23);
        v23 = v26;
        --v24;
      }

      while (v24);
      ++v17;
      --v16;
      v15 += 4;
    }

    while (v17 != 4);
    v27 = 0;
    v28 = v35;
    do
    {
      v29 = *v28;
      v28 += 4;
      *&v34[v27] = v29;
      v27 += 16;
    }

    while (v27 != 64);
    v30 = v33;
    v31 = 3;
    v32 = 12;
    do
    {
      *v30++ = v35[v32];
      --v31;
      v32 -= 3;
    }

    while (v31 != -1);
    sub_23F4299A8(v34, a2);
    sub_23F4299A8(v33, a2);
  }
}

void sub_23F42A9AC(uint64_t a1, void *a2, int a3, float64x2_t *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v34 = a2;
  v23 = a6;
  v24 = a5;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v34 relativeToRect:a7 withPageController:a8, a9, a10, a11, a12];
  if (a3)
  {
    v33 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], v26), *a4, v25));
    v27 = [v34 geometryHelper];
    [v27 screenPixelAlignedPointForPoint:*&v33];
    v32 = v29;
    v33.f64[0] = v28;

    v26 = *&v32;
    v25 = v33.f64[0];
  }

  v30 = [MEMORY[0x277CCAE60] akValueWithPoint:{v25, v26, v32}];
  [v24 addObject:v30];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  [v23 addObject:v31];
}

id sub_23F42C478(uint64_t a1)
{
  v1 = [MEMORY[0x277D755B8] systemImageNamed:a1];
  v2 = [MEMORY[0x277D755D0] configurationWithScale:3];
  v3 = [v1 imageByApplyingSymbolConfiguration:v2];

  v4 = [v3 configuration];
  v5 = [v4 _configurationIgnoringDynamicType];
  v6 = [v3 imageWithConfiguration:v5];

  return v6;
}

void *sub_23F42CE78(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27E39B5C0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_23F42CFB8;
    v5[4] = &unk_278C7B4D0;
    v5[5] = v5;
    v6 = xmmword_278C7BA88;
    v7 = 0;
    qword_27E39B5C0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_27E39B5C0;
    if (qword_27E39B5C0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_27E39B5C0;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27E39B5B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23F42CFB8()
{
  result = _sl_dlopen();
  qword_27E39B5C0 = result;
  return result;
}

void sub_23F42D90C(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:*(a1 + 32) userInfo:0];
}

void sub_23F42DB04(void *a1, int a2)
{
  v5 = a1;
  v3 = [v5 currentAvailability];
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = 0;
  }

  else
  {
    if (v3 == 1)
    {
      goto LABEL_7;
    }

    v4 = 1;
  }

  [v5 setCurrentAvailability:v4];
  [v5 postConnectionStatusNotification];
LABEL_7:
}

void sub_23F42DB78(void *a1)
{
  v1 = a1;
  if ([v1 currentAvailability])
  {
    [v1 setCurrentAvailability:0];
    [v1 postConnectionStatusNotification];
  }
}

void sub_23F42F084(uint64_t a1)
{
  v1 = [*(a1 + 32) signatureView];
  [v1 setAlpha:0.0];
}

void sub_23F42F0CC(uint64_t a1)
{
  v2 = [*(a1 + 32) signatureView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) signatureView];
  [v3 clear];
}

uint64_t sub_23F42F38C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) signatureView];
    [v2 setAlpha:0.0];
  }

  v3 = [*(a1 + 40) verticalSizeClass];
  v4 = 288.0;
  if (v3 != 1)
  {
    v4 = 388.0;
  }

  v5 = *(a1 + 32);

  return [v5 setPreferredContentSize:{540.0, v4}];
}

void sub_23F42F410(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) signatureView];
    [v3 setAlpha:1.0];

    v4 = [*(a1 + 32) signatureView];
    [v4 clear];
  }
}

void sub_23F42FEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_23F42FF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSignatureDescriptionWithStringValue:*(a1 + 32)];
}

void sub_23F42FF8C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F430054;
  v5[3] = &unk_278C7B8F8;
  objc_copyWeak(&v6, (a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void sub_23F430054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showEditCustomDescriptionAlert];
}

void sub_23F430094(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F43015C;
  v5[3] = &unk_278C7B8F8;
  objc_copyWeak(&v6, (a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void sub_23F43015C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeSignatureDescription];
}

void sub_23F430484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_23F4304DC(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[AKController akBundle];
  v4 = [v3 localizedStringForKey:@"Label" value:&stru_28519E870 table:@"AKSignatureCreationViewController_iOS"];
  [v8 setPlaceholder:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained descriptionTag] == -1)
  {
    v7 = [v6 customDescription];
    [v8 setText:v7];
  }
}

void sub_23F4305B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void sub_23F430600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained textFields];
    v4 = [v3 firstObject];
    v5 = [v4 text];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 _updateSignatureDescriptionWithStringValue:v5];

    [v7 dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v7;
  }
}

void sub_23F433F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F433F30(uint64_t a1, double *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interfaceScale];
  if (a3)
  {
    v5 = a3;
    do
    {
      if (COERCE_FLOAT(*(a2 + 1)) > 0.00001)
      {
        v8 = *a2;
        v6 = [WeakRetained bitmapFifo];
        [v6 addPoint:v8];
      }

      a2 += 2;
      --v5;
    }

    while (v5);
  }

  [WeakRetained setTotalPointsAdded:{objc_msgSend(WeakRetained, "totalPointsAdded") + a3}];
}

void sub_23F43484C(uint64_t a1)
{
  *(*(a1 + 32) + 432) = 0;
  [*(a1 + 32) setNeedsDisplayInRect:{*(*(a1 + 32) + 440), *(*(a1 + 32) + 448), *(*(a1 + 32) + 456), *(*(a1 + 32) + 464)}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 576));
  [WeakRetained signatureViewSignatureUpdated:*(a1 + 32)];
}

uint64_t sub_23F4349AC(uint64_t a1)
{
  [*(a1 + 32) minPressure];
  qword_27E39B5C8 = v2;
  [*(a1 + 32) maxPressure];
  qword_27E39B5D0 = v3;
  [*(a1 + 32) minThickness];
  qword_27E39B5D8 = v4;
  result = [*(a1 + 32) maxThickness];
  qword_27E39B5E0 = v6;
  return result;
}

void sub_23F4353C8()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = +[AKController akBundleIdentifier];
  v3 = [v0 initWithSuiteName:v1];

  if (v3)
  {
    v2 = [v3 objectForKey:@"AKLegacyDoodlesEnabled"];

    if (v2)
    {
      byte_27E39B5F0 = [v3 BOOLForKey:@"AKLegacyDoodlesEnabled"];
    }
  }
}

void sub_23F437AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F437B1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _undoButtonAction:0];
}

void sub_23F437B60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _undoAllButtonAction:0];
}

void sub_23F437DCC(uint64_t a1)
{
  v2 = [[AKSignaturesViewController_iOS alloc] initWithController:*(a1 + 32)];
  [(AKSignaturesViewController_iOS *)v2 setDelegate:*(a1 + 40)];
  [(AKSignaturesViewController_iOS *)v2 setPresentedInAlert:1];
  [(AKSignaturesViewController_iOS *)v2 setShowsNavigationBar:0];
  [(AKSignaturesViewController_iOS *)v2 setAllowsEdits:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(AKSignaturesViewController_iOS *)v2 setTableBackgroundColor:v3];

  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [*(a1 + 40) setSignaturesAlertController:v4];

  v5 = [*(a1 + 40) signaturesAlertController];
  [v5 setModalPresentationStyle:7];

  v6 = *(a1 + 40);
  v7 = [v6 signaturesAlertController];
  v8 = [v7 popoverPresentationController];
  [v8 setDelegate:v6];

  v9 = [*(a1 + 40) signaturesAlertController];
  v10 = [v9 popoverPresentationController];
  [v10 setPermittedArrowDirections:3];

  v11 = [*(a1 + 40) signatureButton];
  v12 = [v11 customView];

  v13 = [*(a1 + 40) signatureButton];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 customView];
    v16 = [*(a1 + 40) signaturesAlertController];
    v17 = [v16 popoverPresentationController];
    [v17 setSourceView:v15];

    v14 = [*(a1 + 40) signatureButton];
    v18 = [v14 customView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [*(a1 + 40) signaturesAlertController];
    v28 = [v27 popoverPresentationController];
    [v28 setSourceRect:{v20, v22, v24, v26}];
  }

  else
  {
    v18 = [*(a1 + 40) signaturesAlertController];
    v27 = [v18 popoverPresentationController];
    [v27 setBarButtonItem:v14];
  }

  v29 = [*(a1 + 40) signaturesAlertController];
  [v29 setContentViewController:v2];

  v30 = [*(a1 + 40) signaturesAlertController];
  v31 = MEMORY[0x277D750F8];
  v32 = +[AKController akBundle];
  v33 = [v32 localizedStringForKey:@"Add or Remove Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_23F43833C;
  v56[3] = &unk_278C7B7C0;
  v56[4] = *(a1 + 40);
  v34 = v2;
  v57 = v34;
  v35 = [v31 actionWithTitle:v33 style:0 handler:v56];
  [v30 addAction:v35];

  v36 = [*(a1 + 40) signaturesAlertController];
  v37 = MEMORY[0x277D750F8];
  v38 = +[AKController akBundle];
  v39 = [v38 localizedStringForKey:@"Draw a Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_23F438348;
  v54[3] = &unk_278C7B7C0;
  v54[4] = *(a1 + 40);
  v40 = v34;
  v55 = v40;
  v41 = [v37 actionWithTitle:v39 style:0 handler:v54];
  [v36 addAction:v41];

  v42 = [*(a1 + 40) signaturesAlertController];
  v43 = MEMORY[0x277D750F8];
  v44 = +[AKController akBundle];
  v45 = [v44 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_23F438354;
  v52[3] = &unk_278C7B7C0;
  v52[4] = *(a1 + 40);
  v53 = v40;
  v46 = v40;
  v47 = [v43 actionWithTitle:v45 style:1 handler:v52];
  [v42 addAction:v47];

  v48 = *(a1 + 40);
  v49 = [v48 signaturesAlertController];
  [v48 presentViewController:v49 animated:1 completion:0];

  v50 = *(a1 + 40);
  v51 = [v50 signaturesAlertController];
  [v50 _setupPassthroughViewsForViewController:v51];
}

void sub_23F4383F4(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v31 = [*(a1 + 32) controller];
  v2 = [[AKLineStylesViewController alloc] initWithController:v31];
  [*(a1 + 32) setLineStylesViewController:v2];

  v3 = [*(a1 + 32) lineStylesViewController];
  [v3 setModalPresentationStyle:7];

  v4 = *(a1 + 32);
  v5 = [v4 lineStylesViewController];
  v6 = [v5 popoverPresentationController];
  [v6 setDelegate:v4];

  v7 = [*(a1 + 32) lineStylesViewController];
  v8 = [v7 popoverPresentationController];
  [v8 setPermittedArrowDirections:3];

  v9 = [*(a1 + 32) lineStyleButton];
  v10 = [v9 customView];

  v11 = [*(a1 + 32) lineStyleButton];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 customView];
    v14 = [*(a1 + 32) lineStylesViewController];
    v15 = [v14 popoverPresentationController];
    [v15 setSourceView:v13];

    v12 = [*(a1 + 32) lineStyleButton];
    v16 = [v12 customView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [*(a1 + 32) lineStylesViewController];
    v26 = [v25 popoverPresentationController];
    [v26 setSourceRect:{v18, v20, v22, v24}];
  }

  else
  {
    v16 = [*(a1 + 32) lineStylesViewController];
    v25 = [v16 popoverPresentationController];
    [v25 setBarButtonItem:v12];
  }

  v27 = *(a1 + 32);
  v28 = [v27 lineStylesViewController];
  [v27 presentViewController:v28 animated:1 completion:0];

  v29 = *(a1 + 32);
  v30 = [v29 lineStylesViewController];
  [v29 _setupPassthroughViewsForViewController:v30];
}

void sub_23F438708(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v31 = [*(a1 + 32) controller];
  v2 = [[AKTextAttributesViewController alloc] initWithController:v31];
  [*(a1 + 32) setTextAttributesViewController:v2];

  v3 = [*(a1 + 32) textAttributesViewController];
  [v3 setModalPresentationStyle:7];

  v4 = *(a1 + 32);
  v5 = [v4 textAttributesViewController];
  v6 = [v5 popoverPresentationController];
  [v6 setDelegate:v4];

  v7 = [*(a1 + 32) textAttributesViewController];
  v8 = [v7 popoverPresentationController];
  [v8 setPermittedArrowDirections:3];

  v9 = [*(a1 + 32) textStyleButton];
  v10 = [v9 customView];

  v11 = [*(a1 + 32) textStyleButton];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 customView];
    v14 = [*(a1 + 32) textAttributesViewController];
    v15 = [v14 popoverPresentationController];
    [v15 setSourceView:v13];

    v12 = [*(a1 + 32) textStyleButton];
    v16 = [v12 customView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [*(a1 + 32) textAttributesViewController];
    v26 = [v25 popoverPresentationController];
    [v26 setSourceRect:{v18, v20, v22, v24}];
  }

  else
  {
    v16 = [*(a1 + 32) textAttributesViewController];
    v25 = [v16 popoverPresentationController];
    [v25 setBarButtonItem:v12];
  }

  v27 = *(a1 + 32);
  v28 = [v27 textAttributesViewController];
  [v27 presentViewController:v28 animated:1 completion:0];

  v29 = *(a1 + 32);
  v30 = [v29 textAttributesViewController];
  [v29 _setupPassthroughViewsForViewController:v30];
}

void sub_23F438A1C(uint64_t a1)
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v34 = [*(a1 + 32) controller];
  v2 = [[AKColorPickerViewController alloc] initWithController:v34];
  [*(a1 + 32) setColorPickerPopoverViewController:v2];

  v3 = [*(a1 + 32) colorPickerPopoverViewController];
  [v3 setModalPresentationStyle:7];

  v4 = *(a1 + 32);
  v5 = [v4 colorPickerPopoverViewController];
  v6 = [v5 popoverPresentationController];
  [v6 setDelegate:v4];

  v7 = [*(a1 + 32) colorPickerPopoverViewController];
  v8 = [v7 popoverPresentationController];
  [v8 setPermittedArrowDirections:3];

  v9 = [*(a1 + 32) strokeColorButton];
  v10 = [v9 customView];

  v11 = [*(a1 + 32) strokeColorButton];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 customView];
    v14 = [*(a1 + 32) colorPickerPopoverViewController];
    v15 = [v14 popoverPresentationController];
    [v15 setSourceView:v13];

    v12 = [*(a1 + 32) strokeColorButton];
    v16 = [v12 customView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [*(a1 + 32) colorPickerPopoverViewController];
    v26 = [v25 popoverPresentationController];
    [v26 setSourceRect:{v18, v20, v22, v24}];
  }

  else
  {
    v16 = [*(a1 + 32) colorPickerPopoverViewController];
    v25 = [v16 popoverPresentationController];
    [v25 setBarButtonItem:v12];
  }

  v27 = [*(a1 + 32) _attributeTagForCurrentSelectionState];
  v28 = [*(a1 + 32) colorPickerPopoverViewController];
  [v28 setColorAttributeTag:v27];

  [*(a1 + 32) syncUIToSelectedColor];
  v29 = *(a1 + 32);
  v30 = [v29 colorPickerPopoverViewController];
  [v29 presentViewController:v30 animated:1 completion:0];

  v31 = [*(a1 + 32) colorPickerPopoverViewController];
  [v31 addObserver:*(a1 + 32) forKeyPath:@"color" options:1 context:0];

  v32 = *(a1 + 32);
  v33 = [v32 colorPickerPopoverViewController];
  [v32 _setupPassthroughViewsForViewController:v33];
}

void sub_23F4399F4(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeToolbarViewControllerConstraint];
  [v2 setConstant:0.0];

  [*(a1 + 40) layoutIfNeeded];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"AKAttributeToolbarDidShowNotification" object:*(a1 + 48)];
}

uint64_t sub_23F439BC0(uint64_t a1)
{
  [*(a1 + 40) frame];
  Height = CGRectGetHeight(v7);
  v3 = [*(a1 + 32) attributeToolbarViewControllerConstraint];
  [v3 setConstant:Height];

  v4 = *(a1 + 48);

  return [v4 layoutIfNeeded];
}

uint64_t sub_23F439C28(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeToolbarViewController];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = *(a1 + 32);

  return [v4 setAttributeToolbarViewController:0];
}

void sub_23F43A7B4(uint64_t a1)
{
  v10 = [*(a1 + 32) controller];
  v2 = [v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 controllerWillShowSignatureCaptureView:v10];
  }

  v3 = [*(a1 + 32) signaturesSheetViewController];
  v4 = [v3 popoverPresentationController];
  [v4 setDelegate:0];

  v5 = [*(a1 + 32) signaturesSheetViewController];
  [v5 setDelegate:0];

  [*(a1 + 32) setSignaturesSheetViewController:0];
  v6 = [[AKSignatureCreationViewController_iOS alloc] initWithController:v10];
  [(AKSignatureCreationViewController_iOS *)v6 setModalTransitionStyle:0];
  v7 = [MEMORY[0x277D75418] currentDevice];
  if ([v7 userInterfaceIdiom] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 5;
  }

  [(AKSignatureCreationViewController_iOS *)v6 setModalPresentationStyle:v8];

  [(AKSignatureCreationViewController_iOS *)v6 setDelegate:*(a1 + 32)];
  [(AKSignatureCreationViewController_iOS *)v6 setModalInPresentation:1];
  v9 = [v10 toolPicker];
  [v9 setVisible:0 forFirstResponder:v6];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void sub_23F43CFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20, id a21, id a22)
{
  objc_destroyWeak(v22 + 8);
  objc_destroyWeak(v22 + 7);
  objc_destroyWeak(v22 + 6);
  objc_destroyWeak(v22 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_23F43D030(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained && v2 && v3 && v4)
  {
    v5 = objc_alloc_init(AKInkAnnotation2);
    [a1[4] bounds];
    [WeakRetained _convertRect:v3 fromDrawingInCanvasView:v2 toPageControllerModelSpace:?];
    [(AKInkAnnotation *)v5 setRectangle:?];
    v6 = [a1[4] copy];
    [(AKInkAnnotation *)v5 setDrawing:v6];

    [v2 modelBaseScaleFactor];
    [(AKAnnotation *)v5 setOriginalModelBaseScaleFactor:?];
    [(AKAnnotation *)v5 setOriginalExifOrientation:1];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "currentModelToScreenExifOrientation")}];
    objc_setAssociatedObject(v5, @"com.apple.AnnotationKit.AnnotationImageHelperAdditionalExifHintKey", v7, 0x301);

    [WeakRetained setIgnoreAnnotationAndSelectionKVO:1];
    v8 = [a1[4] CHDrawing];
    v9 = [WeakRetained _convertCHDrawing:v8 fromDrawingInCanvasView:v3 toInkOverlayView:v4];
    [v9 bounds];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MidY = CGRectGetMidY(v20);
    v16 = [WeakRetained shapeDetectionController];
    [v16 performRecognitionOnDrawing:v9 withDrawing:a1[4] annotation:v5 boundsInInputView:x center:{y, width, height, MidX, MidY}];

    [WeakRetained setIgnoreAnnotationAndSelectionKVO:0];
  }
}

double sub_23F43E43C(void *a1)
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [a1 akEnclosingScrollView];
  v11 = v10;
  if (v10)
  {
    [v10 bounds];
    [v11 convertRect:a1 toView:?];
    v18.origin.x = v12;
    v18.origin.y = v13;
    v18.size.width = v14;
    v18.size.height = v15;
    v17.origin.x = v3;
    v17.origin.y = v5;
    v17.size.width = v7;
    v17.size.height = v9;
    *&v3 = CGRectIntersection(v17, v18);
  }

  return v3;
}

id sub_23F43E4F0(void *a1)
{
  v1 = a1;
  do
  {
    v2 = v1;
    v1 = [v1 superview];

    if (!v1)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);

  return v1;
}

id sub_23F442814(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.97;
  }

  if (a3)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = -1.0;
  }

  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v3];
  v6 = [MEMORY[0x277CD9638] inkWithIdentifier:*MEMORY[0x277CD96E0] color:v5 weight:v4];

  return v6;
}

id sub_23F4428B8(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = MEMORY[0x277CD9638];
  v8 = a5;
  v9 = a4;
  [v7 inkWeightFromAKValue:a1];
  v10 = [MEMORY[0x277CD9638] inkWithIdentifier:v9 color:v8 weight:?];

  return v10;
}

id sub_23F442944(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277CD9638];
  v6 = a4;
  v7 = [v6 color];
  v8 = [v5 inkFromInk:v6 color:v7];

  [MEMORY[0x277CD9638] inkWeightFromAKValue:a1];
  [v8 setWeight:?];

  return v8;
}

id sub_23F4429D8(double a1)
{
  v2 = [MEMORY[0x277CD9638] inkFromInk:? color:?];
  [MEMORY[0x277CD9638] inkWeightFromAKValue:a1];
  [v2 setWeight:?];

  return v2;
}

double sub_23F442A3C(double a1)
{
  v1 = (a1 + -1.0) * 0.142857143 + -1.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  if (v1 >= -1.0)
  {
    return v2;
  }

  else
  {
    return -1.0;
  }
}

void sub_23F444214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) rectangle];
    [*(a1 + 32) setRectangle:?];
    WeakRetained = v3;
  }
}

uint64_t sub_23F44577C()
{
  result = _os_feature_enabled_impl();
  byte_27E39B600 = result;
  return result;
}

void sub_23F445DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F445DF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F445E10(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(qword_27E39B618);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_23F445EB8()
{
  v0 = qword_27E39B610;
  qword_27E39B610 = 0;

  NSLog(&cfstr_PurgedSharedRe.isa);
}

uint64_t sub_23F4462B0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F4467DC()
{
  result = MGGetBoolAnswer();
  byte_27E39B628 = result;
  return result;
}

void sub_23F44683C()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  byte_27E39B638 = [v0 _supportsForceTouch];
}

void sub_23F4468C4()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 arguments];
  v1 = [v0 firstObject];

  if (v1)
  {
    byte_27E39B648 = [v1 containsString:@".appex/"];
  }
}

id sub_23F4496C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x277D75650];
  v9 = a5;
  v10 = [v8 keyCommandWithInput:a2 modifierFlags:a3 action:a4];
  [v10 setDiscoverabilityTitle:v9];

  return v10;
}

BOOL sub_23F44A5CC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_23F44A754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F44A76C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

BOOL sub_23F44AA28(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL sub_23F44ADB0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL sub_23F44AFBC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t sub_23F44D1A8(void *a1)
{
  v1 = objc_getAssociatedObject(a1, sel_akToolbarButtonItemType);
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

uint64_t sub_23F44FFD4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"characterIndexes"];
  v6 = [v4 objectForKeyedSubscript:@"characterIndexes"];

  v7 = [v5 firstIndex];
  if (v7 <= [v6 firstIndex])
  {
    v9 = [v5 firstIndex];
    if (v9 >= [v6 firstIndex])
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_23F450084(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"annotation"];
  v8 = [v6 objectForKeyedSubscript:@"characterIndexes"];

  v9 = [v7 style];
  if (v9 == [*(a1 + 32) style])
  {
    v10 = [v8 containsIndex:{objc_msgSend(*(a1 + 40), "firstIndex")}];
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;

  return v10;
}

uint64_t sub_23F45013C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"annotation"];
  v8 = [v6 objectForKeyedSubscript:@"characterIndexes"];

  v9 = [v7 style];
  if (v9 == [*(a1 + 32) style])
  {
    v10 = [v8 containsIndex:{objc_msgSend(*(a1 + 40), "lastIndex")}];
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;

  return v10;
}

BOOL sub_23F4516FC(void *a1)
{
  v1 = a1;
  v2 = [v1 horizontalSizeClass] == 2 && objc_msgSend(v1, "verticalSizeClass") == 2;

  return v2;
}

BOOL sub_23F45174C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 horizontalSizeClass];
  if (v5 == [v4 horizontalSizeClass])
  {
    v6 = [v3 verticalSizeClass];
    v7 = v6 == [v4 verticalSizeClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_23F4548C8(double a1, double a2, double a3, double a4)
{
  *v6 = a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

id sub_23F454DFC()
{
  if (qword_27E39B680 != -1)
  {
    sub_23F4BD0CC();
  }

  v1 = qword_27E39B688;

  return v1;
}

void sub_23F454E40(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!qword_27E39B668 || ([qword_27E39B668 objectForKey:*(a1 + 32)], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v35 = +[AKTSDBrushStroke cacheDirectory];
    if (!qword_27E39B660)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v4 = qword_27E39B660;
      qword_27E39B660 = v3;

      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = qword_27E39B668;
      qword_27E39B668 = v5;

      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = qword_27E39B670;
      qword_27E39B670 = v7;

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = qword_27E39B678;
      qword_27E39B678 = v9;

      v11 = [v35 stringByAppendingString:@"/TSDBrushCacheVersion.txt"];
      v12 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v11 encoding:4 error:0];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 9];
      if (!v12 || ([v12 isEqualToString:v13] & 1) == 0)
      {
        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v40 = 0;
        v15 = [v14 contentsOfDirectoryAtPath:v35 error:&v40];
        v34 = v40;

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v17)
        {
          v18 = *v37;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v36 + 1) + 8 * i) hasPrefix:@"TSDBrush"];
            }

            v17 = [v16 countByEnumeratingWithState:&v36 objects:v43 count:16];
          }

          while (v17);
        }

        [v13 writeToFile:v11 atomically:0 encoding:4 error:0];
      }
    }

    v20 = [qword_27E39B668 objectForKey:*(a1 + 32)];
    v21 = v20 == 0;

    if (v21)
    {
      v22 = [@"TSDBrush_" stringByAppendingString:*(a1 + 32)];
      v23 = objc_alloc(MEMORY[0x277D74218]);
      v24 = +[AKController akBundle];
      v25 = [v23 initWithName:v22 bundle:v24];

      v26 = [v25 data];
      v27 = [v26 length];
      if (!([v26 length] >> 31))
      {
        v28 = v26;
        Memory = xmlReadMemory([v26 bytes], v27, "", 0, 1);
        v30 = sub_23F455328(Memory, @"//svg:split-at-sharp-angles[1]");
        v31 = [v30 count] != 0;

        v41 = @"split-at-sharp-angles";
        v32 = [MEMORY[0x277CCABB0] numberWithBool:v31];
        v42 = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        [qword_27E39B668 setObject:v33 forKeyedSubscript:*(a1 + 32)];

        [AKTSDBrushStroke loadLineEndsForBrush:*(a1 + 32) inSVGDoc:Memory];
        [AKTSDBrushStroke loadSectionsForBrush:*(a1 + 32) inSVGDoc:Memory];
        xmlFreeDoc(Memory);
      }
    }
  }
}

id sub_23F455328(xmlDoc *a1, void *a2)
{
  v3 = a2;
  v4 = xmlXPathNewContext(a1);
  v5 = v4;
  if (!v4)
  {
    NSLog(&cfstr_UnableToCreate.isa);
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  xmlXPathRegisterNs(v4, "svg", "http://www.w3.org/2000/svg");
  v6 = MEMORY[0x245CAF3C0]([v3 cStringUsingEncoding:4], v5);
  v7 = v6;
  if (!v6)
  {
    NSLog(&cfstr_UnableToEvalua.isa);
    goto LABEL_12;
  }

  v8 = *(v6 + 8);
  if (!v8)
  {
    NSLog(&cfstr_NodesWasNil.isa);
    goto LABEL_12;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  if (*v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_23F457D00(*(*(v8 + 1) + 8 * v10), 0);
      if (v11)
      {
        [v9 addObject:v11];
      }

      ++v10;
    }

    while (v10 < *v8);
  }

  xmlXPathFreeObject(v7);
  xmlXPathFreeContext(v5);
LABEL_13:

  return v9;
}

uint64_t sub_23F456390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23F4563A8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [qword_27E39B670 objectForKey:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F456564(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [qword_27E39B678 objectForKey:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F45680C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [qword_27E39B660 objectForKey:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

void sub_23F457A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_23F457AD4(uint64_t a1)
{
  v2 = qword_27E39B668;
  v5 = [*(a1 + 32) strokeName];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = [v3 objectForKeyedSubscript:@"split-at-sharp-angles"];
  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
}

id sub_23F457D00(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = a1[2];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:4];
    [v4 setObject:v6 forKey:@"nodeName"];
  }

  if ((a1[10] + 1) >= 2)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithCString:? encoding:?];
    v21 = [v4 objectForKey:@"nodeName"];
    v22 = [v21 isEqual:@"text"];

    v23 = v22 ^ 1;
    if (!v3)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      v24 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v25 = [v20 stringByTrimmingCharactersInSet:v24];

      v26 = [v3 objectForKey:@"nodeContent"];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 stringByAppendingString:v25];
      }

      else
      {
        v28 = v25;
      }

      v29 = v28;
      [v3 setObject:v28 forKey:@"nodeContent"];

      v18 = 0;
      goto LABEL_22;
    }

    [v4 setObject:v20 forKey:@"nodeContent"];
  }

  v7 = a1[11];
  if (v7)
  {
    v30 = v3;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    do
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v7[2] encoding:4];
      v11 = v7[3];
      if (v11)
      {
        v12 = sub_23F457D00(v11, v9);
      }

      if (v10)
      {
        v13 = [v9 objectForKey:@"nodeContent"];

        if (v13)
        {
          v14 = [v9 objectForKey:@"nodeContent"];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v7 = v7[6];
    }

    while (v7);
    [v4 setObject:v8 forKey:@"nodeAttributes"];

    v3 = v30;
  }

  v15 = a1[3];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEB18] array];
    do
    {
      v17 = sub_23F457D00(v15, v4);
      if (v17)
      {
        [v16 addObject:v17];
      }

      v15 = *(v15 + 48);
    }

    while (v15);
    if ([v16 count])
    {
      [v4 setObject:v16 forKey:@"nodeChildArray"];
    }
  }

  v18 = v4;
LABEL_22:

  return v18;
}

uint64_t sub_23F4580D4()
{
  qword_27E39B688 = dispatch_queue_create("AKTSDBrushStrokeLoadQueue", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23F45855C(void *a1)
{
  v1 = a1;

  return [v1 CGImage];
}

BOOL sub_23F458584(void *a1)
{
  ColorSpace = CGImageGetColorSpace([a1 akCGImage]);
  CGImageGetContentHeadroom();
  if (v2 <= 1.0)
  {
    return 0;
  }

  if (MEMORY[0x245CADF00](ColorSpace))
  {
    return 1;
  }

  return CGColorSpaceUsesExtendedRange(ColorSpace);
}

id sub_23F4585FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = +[AKController akBundle];
  v6 = [v3 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

void sub_23F458680(void *a1, uint64_t a2, UIImage *a3, void *a4)
{
  v6 = a4;
  v7 = UIImagePNGRepresentation(a3);
  [a1 encodeObject:v7 forKey:v6];
}

id sub_23F4586F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v5];

  return v6;
}

void sub_23F459F48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AKPageModelController alloc] initWithArchivableRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

double sub_23F45D17C(uint64_t a1, double a2, double a3)
{
  v5 = [*(a1 + 32) overlayView];
  [v5 convertPoint:0 toView:{a2, a3}];
  v7 = v6;

  return v7;
}

void sub_23F45D9C4(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  v6 = [v5 integerValue];

  if (*(a1 + 56) != 1 || v6 != 0)
  {
    [v18 akPointValue];
    v9 = v8;
    v11 = v10;
    v12 = [*(a1 + 40) geometryHelper];
    v13 = [*(a1 + 48) handleContainerLayer];
    [v12 convertPoint:v13 fromModelToLayer:{v9, v11}];
    v15 = v14;
    v17 = v16;

    [*(a1 + 48) _addHandleSublayerAtPoint:v6 withStyle:{v15, v17}];
  }
}

void sub_23F45DAB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v17 = a2;
  v6 = [v5 objectAtIndex:a3];
  [v6 akPointValue];
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 40) geometryHelper];
  v12 = [*(a1 + 48) handleContainerLayer];
  [v11 convertPoint:v12 fromModelToLayer:{v8, v10}];
  v14 = v13;
  v16 = v15;

  [v17 setPosition:{v14, v16}];
}

void sub_23F45E7F4(uint64_t a1)
{
  v1 = [*(a1 + 32) highlight];
  [v1 setAlpha:0.0];
}

void sub_23F4628E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 annotation];
  [v1 p_removeAnnotation:v2];
}

void sub_23F462DA8(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23F462EDC;
  v12[3] = &unk_278C7BE80;
  v12[4] = *(a1 + 32);
  v1 = MEMORY[0x245CAF110](v12);
  v2 = v1[2](v1, 4);
  v3 = qword_27E39B698;
  qword_27E39B698 = v2;

  v4 = v1[2](v1, 0);
  v5 = qword_27E39B6A0;
  qword_27E39B6A0 = v4;

  v6 = v1[2](v1, 1);
  v7 = qword_27E39B6A8;
  qword_27E39B6A8 = v6;

  v8 = v1[2](v1, 2);
  v9 = qword_27E39B6B0;
  qword_27E39B6B0 = v8;

  v10 = v1[2](v1, 3);
  v11 = qword_27E39B6B8;
  qword_27E39B6B8 = v10;
}

id sub_23F462EDC(uint64_t a1, uint64_t a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18[0] = &unk_2851BB610;
  v17 = [*(a1 + 32) p_themeForStyle:1 pageTheme:a2];
  v16 = [v17 highlightColor];
  v19[0] = v16;
  v18[1] = &unk_2851BB628;
  v15 = [*(a1 + 32) p_themeForStyle:2 pageTheme:a2];
  v4 = [v15 highlightColor];
  v19[1] = v4;
  v18[2] = &unk_2851BB640;
  v5 = [*(a1 + 32) p_themeForStyle:3 pageTheme:a2];
  v6 = [v5 highlightColor];
  v19[2] = v6;
  v18[3] = &unk_2851BB658;
  v7 = [*(a1 + 32) p_themeForStyle:4 pageTheme:a2];
  v8 = [v7 highlightColor];
  v19[3] = v8;
  v18[4] = &unk_2851BB670;
  v9 = [*(a1 + 32) p_themeForStyle:5 pageTheme:a2];
  v10 = [v9 highlightColor];
  v19[4] = v10;
  v18[5] = &unk_2851BB688;
  v11 = [*(a1 + 32) p_themeForStyle:6 pageTheme:a2];
  v12 = [v11 noteFillColor];
  v19[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];

  return v13;
}

void sub_23F463450(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23F463584;
  v12[3] = &unk_278C7BE80;
  v12[4] = *(a1 + 32);
  v1 = MEMORY[0x245CAF110](v12);
  v2 = v1[2](v1, 4);
  v3 = qword_27E39B6C8;
  qword_27E39B6C8 = v2;

  v4 = v1[2](v1, 0);
  v5 = qword_27E39B6D0;
  qword_27E39B6D0 = v4;

  v6 = v1[2](v1, 1);
  v7 = qword_27E39B6D8;
  qword_27E39B6D8 = v6;

  v8 = v1[2](v1, 2);
  v9 = qword_27E39B6E0;
  qword_27E39B6E0 = v8;

  v10 = v1[2](v1, 3);
  v11 = qword_27E39B6E8;
  qword_27E39B6E8 = v10;
}

id sub_23F463584(uint64_t a1, uint64_t a2)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v22[0] = &unk_2851BB610;
  v4 = *(a1 + 32);
  v21 = [v4 p_colorForTag:1 pageTheme:a2];
  v20 = [v4 p_colorControlImageForColor:v21];
  v23[0] = v20;
  v22[1] = &unk_2851BB628;
  v5 = *(a1 + 32);
  v6 = [v5 p_colorForTag:2 pageTheme:a2];
  v7 = [v5 p_colorControlImageForColor:v6];
  v23[1] = v7;
  v22[2] = &unk_2851BB640;
  v8 = *(a1 + 32);
  v9 = [v8 p_colorForTag:3 pageTheme:a2];
  v10 = [v8 p_colorControlImageForColor:v9];
  v23[2] = v10;
  v22[3] = &unk_2851BB658;
  v11 = *(a1 + 32);
  v12 = [v11 p_colorForTag:4 pageTheme:a2];
  v13 = [v11 p_colorControlImageForColor:v12];
  v23[3] = v13;
  v22[4] = &unk_2851BB670;
  v14 = *(a1 + 32);
  v15 = [v14 p_colorForTag:5 pageTheme:a2];
  v16 = [v14 p_colorControlImageForColor:v15];
  v23[4] = v16;
  v22[5] = &unk_2851BB688;
  v17 = [*(a1 + 32) p_colorControlUnderlineImageForPageTheme:a2];
  v23[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];

  return v18;
}

void sub_23F463DD0(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23F463F04;
  v12[3] = &unk_278C7BE80;
  v12[4] = *(a1 + 32);
  v1 = MEMORY[0x245CAF110](v12);
  v2 = v1[2](v1, 4);
  v3 = qword_27E39B6F8;
  qword_27E39B6F8 = v2;

  v4 = v1[2](v1, 0);
  v5 = qword_27E39B700;
  qword_27E39B700 = v4;

  v6 = v1[2](v1, 1);
  v7 = qword_27E39B708;
  qword_27E39B708 = v6;

  v8 = v1[2](v1, 2);
  v9 = qword_27E39B710;
  qword_27E39B710 = v8;

  v10 = v1[2](v1, 3);
  v11 = qword_27E39B718;
  qword_27E39B718 = v10;
}

id sub_23F463F04(uint64_t a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_2851BB610;
  v4 = [*(a1 + 32) p_buildPaletteImageForFrontTag:1 middleTag:2 backTag:3 pageTheme:a2];
  v13[0] = v4;
  v12[1] = &unk_2851BB628;
  v5 = [*(a1 + 32) p_buildPaletteImageForFrontTag:2 middleTag:3 backTag:5 pageTheme:a2];
  v13[1] = v5;
  v12[2] = &unk_2851BB640;
  v6 = [*(a1 + 32) p_buildPaletteImageForFrontTag:3 middleTag:4 backTag:5 pageTheme:a2];
  v13[2] = v6;
  v12[3] = &unk_2851BB658;
  v7 = [*(a1 + 32) p_buildPaletteImageForFrontTag:4 middleTag:5 backTag:2 pageTheme:a2];
  v13[3] = v7;
  v12[4] = &unk_2851BB670;
  v8 = [*(a1 + 32) p_buildPaletteImageForFrontTag:5 middleTag:1 backTag:2 pageTheme:a2];
  v13[4] = v8;
  v12[5] = &unk_2851BB688;
  v9 = [*(a1 + 32) p_buildPaletteImageForFrontTag:6 middleTag:2 backTag:3 pageTheme:a2];
  v13[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

void sub_23F4642F8(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] akImageNamed:@"ib_text_pop_icon_note"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23F464464;
  v15[3] = &unk_278C7BEA8;
  v15[4] = *(a1 + 32);
  v16 = v2;
  v3 = v2;
  v4 = MEMORY[0x245CAF110](v15);
  v5 = v4[2](v4, 4);
  v6 = qword_27E39B728;
  qword_27E39B728 = v5;

  v7 = v4[2](v4, 0);
  v8 = qword_27E39B730;
  qword_27E39B730 = v7;

  v9 = v4[2](v4, 1);
  v10 = qword_27E39B738;
  qword_27E39B738 = v9;

  v11 = v4[2](v4, 2);
  v12 = qword_27E39B740;
  qword_27E39B740 = v11;

  v13 = v4[2](v4, 3);
  v14 = qword_27E39B748;
  qword_27E39B748 = v13;
}

id sub_23F464464(uint64_t a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v30[0] = &unk_2851BB610;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29 = [v4 p_colorForTag:1 pageTheme:a2];
  v28 = [v4 p_monochromaticImageFromImage:v5 withColor:v29];
  v31[0] = v28;
  v30[1] = &unk_2851BB628;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v27 = [v6 p_colorForTag:2 pageTheme:a2];
  v26 = [v6 p_monochromaticImageFromImage:v7 withColor:v27];
  v31[1] = v26;
  v30[2] = &unk_2851BB640;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [v8 p_colorForTag:3 pageTheme:a2];
  v11 = [v8 p_monochromaticImageFromImage:v9 withColor:v10];
  v31[2] = v11;
  v30[3] = &unk_2851BB658;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = [v12 p_colorForTag:4 pageTheme:a2];
  v15 = [v12 p_monochromaticImageFromImage:v13 withColor:v14];
  v31[3] = v15;
  v30[4] = &unk_2851BB670;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [v16 p_colorForTag:5 pageTheme:a2];
  v19 = [v16 p_monochromaticImageFromImage:v17 withColor:v18];
  v31[4] = v19;
  v30[5] = &unk_2851BB688;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = [v20 p_colorForTag:6 pageTheme:a2];
  v23 = [v20 p_monochromaticImageFromImage:v21 withColor:v22];
  v31[5] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];

  return v24;
}

double sub_23F465A58(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double sub_23F465A94(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

void sub_23F465C24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23F465CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AKLegacyDoodleController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23F466F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 104));

  _Unwind_Resume(a1);
}

void sub_23F466F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained shapeDetectionController];
    [v4 performRecognitionOnDrawing:*(a1 + 32) withPath:*(a1 + 48) boundsInInputView:*(a1 + 104) center:*(a1 + 56) isPrestroked:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  v5 = *(a1 + 48);

  CGPathRelease(v5);
}

BOOL sub_23F467FB0(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = [a1[5] shapeDetectionController];
    v5 = [v4 candidateAnnotation];

    v6 = v5 != v3;
    if (v5 == v3)
    {
      v7 = [a1[5] shapeDetectionController];
      [v7 setIsPreviousCandidateAnnotationUndecided:1];
    }

    [a1[6] removeObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_23F46A014()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_27E39B758;
  v7 = off_27E39B758;
  if (!off_27E39B758)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_23F46A2C4;
    v3[3] = &unk_278C7B9D0;
    v3[4] = &v4;
    sub_23F46A2C4(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = sub_23F4BD000();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0(0) - 1 < 2;
}

void *sub_23F46A2C4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_27E39B760)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_23F46A404;
    v5[4] = &unk_278C7B4D0;
    v5[5] = v5;
    v6 = xmmword_278C7BFB8;
    v7 = 0;
    qword_27E39B760 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_27E39B760;
    if (qword_27E39B760)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_27E39B760;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27E39B758 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23F46A404()
{
  result = _sl_dlopen();
  qword_27E39B760 = result;
  return result;
}

__n128 sub_23F46B500(uint64_t a1)
{
  [*(a1 + 32) convertPointFromModelToOverlay:?];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 40) superview];
  [*(a1 + 40) convertPoint:v6 toView:{v3, v5}];
  v8 = v7;
  v10 = v9;
  v11 = [v6 window];
  v12 = [v11 screen];
  v13 = [v12 coordinateSpace];
  [v6 convertPoint:v13 toCoordinateSpace:{v8, v10}];
  v17 = v15;
  v18 = v14;

  CGAffineTransformMakeScale(&v20, 1.0, -1.0);
  v19 = vaddq_f64(*&v20.tx, vmlaq_n_f64(vmulq_n_f64(*&v20.c, v17), *&v20.a, v18));

  return v19;
}

void sub_23F46D554(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_23F46E7FC(uint64_t a1)
{
  v2 = [*(a1 + 32) signaturesAlertViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23F46E890;
  v3[3] = &unk_278C7B540;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_23F46E890(uint64_t a1)
{
  [*(a1 + 32) setSignaturesAlertViewController:0];
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel__continueToManageSignatures);
}

void sub_23F46E8D0(uint64_t a1)
{
  v2 = [*(a1 + 32) signaturesAlertViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23F46E964;
  v3[3] = &unk_278C7B540;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t sub_23F46EC5C(uint64_t a1)
{
  [*(a1 + 32) setSignaturesSheetViewController:0];
  v2 = *(a1 + 32);

  return [v2 _continueToCreateSignature];
}

uint64_t sub_23F47749C(double a1, double a2, double a3, double a4)
{
  v8 = objc_opt_class();

  return [v8 stableIntegralRectForRect:{a1, a2, a3, a4}];
}

void sub_23F478220(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23F478294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  for (i = [WeakRetained bitmapFifo];
  {
    if (COERCE_FLOAT(*(a2 + 8)) > 0.00001)
    {
      [i addPoint:*a2];
    }

    a2 += 16;
  }

  if (([WeakRetained isAddingPointWithoutSmoothing] & 1) == 0)
  {
    [WeakRetained setDisableSingleDotSpecialCase:1];
  }
}

void sub_23F4783A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isAddingPointWithoutSmoothing])
  {
    v5 = WeakRetained[51];
    v6 = WeakRetained[52];
    if (a3 != 1)
    {
      NSLog(&cfstr_SSingleDotSpec.isa, "[AKSmoothPathView _setupFilterChainWithBitmapFifo:]_block_invoke_2");
    }

    v7 = *a2;
    v8 = COERCE_FLOAT(*(a2 + 1));
    v9 = WeakRetained;
    if (v8 > 0.00001)
    {
      v10 = v6 * (v5 * v8);
      v11 = *&v7 - v10 * 0.5;
      v12 = *(&v7 + 1) - v10 * 0.5;
      [WeakRetained setSingleDotRect:{v11, v12, v10, v10}];
      [WeakRetained setNeedsDisplayInRect:{v11, v12, v10, v10}];
      v9 = WeakRetained;
    }
  }

  else
  {
    [WeakRetained setDisableSingleDotSpecialCase:1];
    v9 = WeakRetained;
  }
}

uint64_t sub_23F479824(uint64_t a1)
{
  [*(a1 + 32) minPressure];
  qword_27E39B770 = v2;
  [*(a1 + 32) maxPressure];
  qword_27E39B778 = v3;
  [*(a1 + 32) minThickness];
  qword_27E39B780 = v4;
  result = [*(a1 + 32) maxThickness];
  qword_27E39B788 = v6;
  return result;
}

void sub_23F47AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F47AE8C(uint64_t a1, int a2, CGPathRef path)
{
  BoundingBox = CGPathGetBoundingBox(path);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), BoundingBox);
  return 0;
}

uint64_t sub_23F47B040(uint64_t a1, int a2, CGPathRef path)
{
  CGContextAddPath(*(a1 + 32), path);
  CGContextEOFillPath(*(a1 + 32));
  return 0;
}

void sub_23F47B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23F47C6C4(void *a1, int a2)
{
  v3 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    sub_23F4BD328(v3);
    JUMPOUT(0x23F47C644);
  }

  JUMPOUT(0x23F47C64CLL);
}

uint64_t sub_23F47CD04()
{
  qword_27E39B790 = [MEMORY[0x277CBEB98] setWithArray:&unk_2851BAF80];

  return MEMORY[0x2821F96F8]();
}

void sub_23F47CD4C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 32) == 1 && (*(WeakRetained + 33) & 1) == 0)
  {
    *(WeakRetained + 33) = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if (([qword_27E39B790 containsObject:{v9, v10}] & 1) == 0)
          {
            [v3 addObserver:v3 forKeyPath:v9 options:3 context:@"AKAnnotation.annotationPropertyObservationForIsEditedContext"];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

uint64_t sub_23F47D1F0()
{
  qword_27E39B7A0 = [MEMORY[0x277CBEB98] setWithArray:&unk_2851BAF98];

  return MEMORY[0x2821F96F8]();
}

void sub_23F47D238(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 16) == 1 && (*(WeakRetained + 17) & 1) == 0)
  {
    *(WeakRetained + 17) = 1;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if (([qword_27E39B7A0 containsObject:{v9, v10}] & 1) == 0)
          {
            [v3 addObserver:v3 forKeyPath:v9 options:3 context:@"AKAnnotation.annotationPropertyObservationForAppearanceContext"];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

void sub_23F47DF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F47DF88(uint64_t a1, CGContext *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    Page = CGPDFDocumentGetPage(WeakRetained[3], 1uLL);
    CGContextDrawPDFPage(a2, Page);
    WeakRetained = v5;
  }
}

id sub_23F47ED68(void *a1)
{
  v2 = [a1 indexPathForSelectedRow];
  if (v2)
  {
    v3 = [a1 cellForRowAtIndexPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_23F480134(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v12 = a7;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a1 addSubview:v12];
  v13 = [v12 leadingAnchor];
  v14 = [a1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a3];

  LODWORD(v16) = 1148829696;
  [v15 setPriority:v16];
  v17 = [v12 trailingAnchor];
  v18 = [a1 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a5];

  LODWORD(v20) = 1148829696;
  [v19 setPriority:v20];
  v21 = [v12 topAnchor];
  v22 = [a1 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a2];

  LODWORD(v24) = 1148829696;
  [v23 setPriority:v24];
  v25 = [v12 bottomAnchor];

  v26 = [a1 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:a4];

  LODWORD(v28) = 1148829696;
  [v27 setPriority:v28];
  v29 = MEMORY[0x277CCAAD0];
  v31[0] = v15;
  v31[1] = v19;
  v31[2] = v23;
  v31[3] = v27;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v29 activateConstraints:v30];
}

id sub_23F48514C(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"client";
  v2 = [*(a1 + 32) clientPrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<nil>";
  }

  v12[0] = v4;
  v11[1] = @"documentType";
  v5 = [*(a1 + 32) documentType];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<nil>";
  }

  v11[2] = @"action";
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = @"<nil>";
  }

  v12[1] = v7;
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

id sub_23F4852EC(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"client";
  v2 = [*(a1 + 32) clientPrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<nil>";
  }

  v12[0] = v4;
  v11[1] = @"documentType";
  v5 = [*(a1 + 32) documentType];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<nil>";
  }

  v12[1] = v7;
  v12[2] = @"pick";
  v11[2] = @"action";
  v11[3] = @"annotationType";
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = @"<nil>";
  }

  v12[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

id sub_23F4854A8(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"client";
  v2 = [*(a1 + 32) clientPrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<nil>";
  }

  v14[0] = v4;
  v13[1] = @"documentType";
  v5 = [*(a1 + 32) documentType];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<nil>";
  }

  v14[1] = v7;
  v14[2] = @"create";
  v13[2] = @"action";
  v13[3] = @"annotationType";
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (!v9)
  {
    v9 = @"<nil>";
  }

  v14[3] = v9;
  v13[4] = @"annotationCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v14[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

void sub_23F489E00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) visualEffectView];
  v4 = [v3 contentView];
  [v4 setAlpha:v2];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) visualEffectView];
  [v6 setEffect:v5];
}

uint64_t sub_23F489E94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_23F48A620(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setSelected:1];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
  [v2 setBackgroundColor:v3];

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277D75348] blackColor];
    [v4 setTintColor:v5];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [MEMORY[0x277D75348] clearColor];
        [v11 setBackgroundColor:v12];

        if (*(a1 + 48) == 1)
        {
          v13 = [MEMORY[0x277D75348] whiteColor];
          [v11 setTintColor:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

uint64_t sub_23F48AABC()
{
  v0 = objc_alloc_init(AKAnnotationRendererOptions);
  v1 = qword_27E39B7B8;
  qword_27E39B7B8 = v0;

  v2 = qword_27E39B7B8;

  return [v2 setAllowHDR:1];
}

void sub_23F48AB4C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [a1 _isScrollingToTop];
  [a1 _swizzled_scrollViewAnimationEnded:v6 finished:a4];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"AKScrollViewDidScrollToTopNotification" object:a1];
  }
}

void sub_23F48AC24()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel__scrollViewAnimationEnded_finished_);
  v2 = objc_opt_class();
  v3 = class_getInstanceMethod(v2, sel__swizzled_scrollViewAnimationEnded_finished_);

  method_exchangeImplementations(InstanceMethod, v3);
}

void sub_23F48CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F48CC88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23F48CCA0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  [a2 akPointValue];
  [v7 convertPointFromModelToOverlay:?];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 40) objectAtIndex:a3];
  v13 = [v12 integerValue];

  [*(a1 + 32) currentModelToScreenScaleFactor];
  if (!v13)
  {
    v15 = &AKPointOfInterestSize_Handle;
    goto LABEL_5;
  }

  if (v13 == 1)
  {
    v15 = &AKPointOfInterestRadius_Handle_Alternate;
LABEL_5:
    [AKGeometryHelper rectWithSize:1.0 / v14 * *v15 centeredAtPoint:1.0 / v14 * *v15, v9, v11];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277CBF3A0];
  v19 = *(MEMORY[0x277CBF3A0] + 8);
  v21 = *(MEMORY[0x277CBF3A0] + 16);
  v23 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_7:
  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  if (CGRectContainsPoint(v28, *(a1 + 64)))
  {
    v24 = *(*(a1 + 48) + 8);
    v24[4] = v17;
    v24[5] = v19;
    v24[6] = v21;
    v24[7] = v23;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    *a4 = 1;
  }
}

void sub_23F48DC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23F48DC68(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _removeLiftOffHandleViewForRegion:*(a1 + 32)];
  }
}

id sub_23F4902A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v8)
  {
    v9 = v8;
    components[0] = a1;
    components[1] = a2;
    components[2] = a3;
    components[3] = a4;
    v10 = CGColorCreate(v8, components);
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277D75348] colorWithCGColor:v10];
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_23F490394(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x277D85DE8];
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
  if (v4)
  {
    v5 = v4;
    components[0] = a1;
    components[1] = a2;
    v6 = CGColorCreate(v4, components);
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x277D75348] colorWithCGColor:v6];
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_23F490474(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [[v3 alloc] initWithCIColor:v4];

  v10 = 0.0;
  v11 = 0.0;
  v8 = 1.0;
  v9 = 0.0;
  [v5 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  v6 = [MEMORY[0x277D75348] akColorWithSRGBRed:v11 green:v10 blue:v9 alpha:v8];

  return v6;
}

double sub_23F4906A4(void *a1)
{
  v2 = 0.0;
  [a1 getWhite:0 alpha:&v2];
  return v2;
}

uint64_t sub_23F4906D4(id a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 == a1)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [a1 colorUsingSRGBColorSpace];
    v7 = [v5 colorUsingSRGBColorSpace];
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    [v6 getRed:&v22 green:&v20 blue:&v21 alpha:&v19];
    [v7 getRed:&v18 green:&v16 blue:&v17 alpha:&v15];
    v9.f64[0] = v21;
    v8.f64[0] = v22;
    v11.f64[0] = v17;
    v10.f64[0] = v18;
    v8.f64[1] = v20;
    v9.f64[1] = v19;
    v12 = vdupq_n_s64(0x406FE00000000000uLL);
    v10.f64[1] = v16;
    v11.f64[1] = v15;
    v13 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(vrndaq_f64(vmulq_f64(v8, v12)), vrndaq_f64(vmulq_f64(v10, v12))), vceqq_f64(vrndaq_f64(vmulq_f64(v9, v12)), vrndaq_f64(vmulq_f64(v11, v12))))));
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_23F490830(void *a1, double a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = [a1 colorUsingSRGBColorSpace];
  v8 = [v6 colorUsingSRGBColorSpace];

  v14 = 0.0;
  v15 = 0.0;
  if (([v7 getHue:&v15 saturation:0 brightness:0 alpha:0] & 1) == 0)
  {
    v15 = 0.0;
  }

  v9 = [v8 getHue:&v14 saturation:0 brightness:0 alpha:0];
  v10 = v14;
  if (!v9)
  {
    v10 = 0.0;
  }

  v11 = vabdd_f64(v10, v15);
  v12 = fmin(v11, fabs(v11 + -1.0)) <= a2;

  return v12;
}

id sub_23F49091C(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  if (v2)
  {
    v3 = v2;
    ColorSpace = CGColorGetColorSpace([a1 CGColor]);
    if (CFEqual(ColorSpace, v3))
    {
      v5 = a1;
    }

    else
    {
      v6 = MEMORY[0x245CADF60](v3, 0);
      if (v6)
      {
        v7 = v6;
        [a1 CGColor];
        v8 = CGColorTransformConvertColor();
        if (v8)
        {
          v9 = v8;
          v10 = 8 * CGColorSpaceGetNumberOfComponents(v3);
          v11 = v16 - ((v10 + 23) & 0xFFFFFFFFFFFFFFF0);
          Components = CGColorGetComponents(v9);
          memcpy(v11, Components, v10 + 8);
          v13 = CGColorCreate(v3, v11);
          if (v13)
          {
            v14 = v13;
            v5 = [MEMORY[0x277D75348] colorWithCGColor:v13];
            CFRelease(v14);
          }

          else
          {
            v5 = 0;
          }

          CFRelease(v9);
        }

        else
        {
          v5 = 0;
        }

        CFRelease(v7);
      }

      else
      {
        v5 = 0;
      }
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_23F490AB8(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a1 colorUsingSRGBColorSpace];
  v8 = [v6 colorUsingSRGBColorSpace];

  Components = CGColorGetComponents([v7 CGColor]);
  v10 = CGColorGetComponents([v8 CGColor]);
  v11 = [MEMORY[0x277D75348] akColorWithSRGBRed:*v10 * a2 + (1.0 - a2) * *Components green:v10[1] * a2 + (1.0 - a2) * Components[1] blue:v10[2] * a2 + (1.0 - a2) * Components[2] alpha:v10[3] * a2 + (1.0 - a2) * Components[3]];

  return v11;
}

void sub_23F490BA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277D75348];
  v7 = a4;
  v8 = [v6 akStringFromColor:a3];
  [a1 encodeObject:v8 forKey:v7];
}

id sub_23F490C24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = [MEMORY[0x277D75348] akColorFromString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_23F493B44(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t sub_23F493B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  v3 = *(a1 + 32);

  return MEMORY[0x2821F9670](v3, sel_didShow);
}

void sub_23F494180(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_23F4941C8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 32) view];
  [v3 removeFromSuperview];
}

double sub_23F49F8DC(void *a1, uint64_t a2, double *a3)
{
  v5 = 0.0;
  [a1 scanDouble:&v5];
  result = v5;
  *a3 = v5;
  return result;
}

double sub_23F49FBB8(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

void sub_23F49FC10(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = 1.0 - a3;
  *a2 = sub_23F4A1DA8(a1, 1.0 - a3, a3, 1.0 - a3, a3, 1.0 - a3, a3);
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_23F4A1DA8(a1, v8, a3, v8, a3, 1.0 - a4, a4);
  *(a2 + 24) = v10;
  *(a2 + 32) = sub_23F4A1DA8(a1, v8, a3, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 40) = v11;
  *(a2 + 48) = sub_23F4A1DA8(a1, 1.0 - a4, a4, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 56) = v12;
}

uint64_t sub_23F49FCE4(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a1[1];
  v6 = a1[2] - *a1;
  v7 = a1[3] - v5;
  v8 = a2[1];
  v9 = a2[2] - *a2;
  v10 = a2[3] - v8;
  v11 = (v7 * (*a2 - *a1) + (v5 - v8) * v6) / (v10 * v6 - v9 * v7);
  *a4 = v11;
  if (v11 >= 0.0)
  {
    v13 = v11 == 1.0;
    v12 = v11 >= 1.0;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && v12)
  {
    return 0;
  }

  v14 = (v10 * (*a1 - *a2) + (a2[1] - a1[1]) * v9) / (v7 * v9 - v6 * v10);
  *a3 = v14;
  if (v14 >= 0.0)
  {
    v16 = v14 == 1.0;
    v15 = v14 >= 1.0;
  }

  else
  {
    v15 = 1;
    v16 = 0;
  }

  if (!v16 && v15)
  {
    return 0;
  }

  v17 = a1[1];
  *a5 = *a1 + v14 * v6;
  a5[1] = v17 + *a3 * v7;
  return 1;
}

void sub_23F49FD90(float64x2_t *a1, double *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v5 = a2[3];
  v7 = v5 - a2[1];
  v8 = v6 - *a2;
  v9 = v8 * v8 + v7 * v7;
  v10 = (1.0 / sqrtf(v9));
  v11 = v7 * v10;
  v12 = -(v8 * v10);
  v13 = v5 * v12 + v11 * v6;
  v14 = a1->f64[1] * v12 + v11 * a1->f64[0] - v13;
  v31.f64[0] = 0.0;
  v31.f64[1] = v14;
  v15 = a1[1].f64[1] * v12 + v11 * a1[1].f64[0] - v13;
  v32 = 0x3FD5555560000000;
  v33 = v15;
  v16 = a1[2].f64[1] * v12 + v11 * a1[2].f64[0] - v13;
  v34 = 0x3FE5555560000000;
  v35 = v16;
  v17 = v12 * a1[3].f64[1] + v11 * a1[3].f64[0] - v13;
  v36 = 0x3FF0000000000000;
  v37 = v17;
  *&v17 = v15 * 9.0 + v14 * -3.0 + v16 * -9.0 + v17 * 3.0;
  *&v16 = v15 * -12.0 + v14 * 6.0 + v16 * 6.0;
  *&v14 = v15 * 3.0 + v14 * -3.0;
  *&v14 = sqrtf(((*&v17 * -4.0) * *&v14) + (*&v16 * *&v16));
  *&v17 = *&v17 + *&v17;
  v18 = (-*&v16 - *&v14) / *&v17;
  v19 = sub_23F49FBB8(&v31, ((*&v14 - *&v16) / *&v17));
  v21 = v20;
  v22 = sub_23F49FBB8(&v31, v18);
  v23 = fabs(v21);
  v25 = fabs(v24);
  if ((v22 > 1.0 || v23 < v25 || v22 < 0.0) && v19 >= 0.0 && v19 <= 1.0)
  {
    goto LABEL_20;
  }

  if (v22 >= 0.0 && v22 <= 1.0)
  {
    v19 = v22;
LABEL_20:
    *a3 = sub_23F49FBB8(a1, v19);
    *(a3 + 8) = v30;
  }
}

uint64_t sub_23F49FFD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*result == v2)
  {
    *(result + 16) = *a2;
    *(result + 72) = *(*(a2 + 8) + 48);
    *(result + 56) = *(*(a2 + 8) + 32);
    *(result + 40) = *(*(a2 + 8) + 16);
    *(result + 24) = **(a2 + 8);
  }

  *(result + 8) = v2 + 1;
  return result;
}

void sub_23F4A0330(double *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = *a1;
  v13 = a1[2];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v19 = a2[2];
  v18 = a2[3];
  v20 = v18 - a2[1];
  v21 = v19 - *a2;
  v22 = v21 * v21 + v20 * v20;
  v23 = (1.0 / sqrtf(v22));
  v24 = v20 * v23;
  v25 = -(v21 * v23);
  v26 = v18 * v25 + v24 * v19;
  v57 = a1[3];
  v58 = a1[1];
  v59.f64[0] = 0.0;
  v59.f64[1] = v58 * v25 + v24 * v12 - v26;
  v60 = 0x3FD5555555555555;
  v61 = v57 * v25 + v24 * v13 - v26;
  v55 = v17;
  v56 = v15;
  v62 = 0x3FE5555555555555;
  v63 = v15 * v25 + v24 * v14 - v26;
  v64 = 0x3FF0000000000000;
  v65 = v17 * v25 + v24 * v16 - v26;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sub_23F4A4D94(&v59, &v59, v27, 1.0);
  v28 = [v27 count];
  if (v28 >= 1)
  {
    v29 = v28;
    v30 = 0;
    v54 = v14;
    do
    {
      v31 = [v27 objectAtIndex:v30];
      [v31 doubleValue];
      v33 = v32;

      v35 = v33 * (v33 * (v16 * v33 + (1.0 - v33) * v14) + (1.0 - v33) * (v14 * v33 + (1.0 - v33) * v13)) + (1.0 - v33) * (v33 * (v14 * v33 + (1.0 - v33) * v13) + (1.0 - v33) * (v13 * v33 + (1.0 - v33) * v12));
      v36 = a2[2] - *a2;
      v37 = v35 - *a2;
      if (v36 * v37 > -0.001)
      {
        v34 = 1.0 - v33;
        v38 = v33 * (v33 * (v55 * v33 + v34 * v56) + v34 * (v56 * v33 + v34 * v57)) + v34 * (v33 * (v56 * v33 + v34 * v57) + v34 * (v57 * v33 + v34 * v58));
        v39 = a2[1];
        v40 = a2[3] - v39;
        v41 = v40 * v40 + v36 * v36;
        v42 = (v38 - v39) * (v38 - v39) + v37 * v37;
        if (v40 * (v38 - v39) > -0.001 && v42 <= v41)
        {
          if (!v11)
          {
            break;
          }

          v44 = v13;
          v45 = v16;
          v46 = v12;
          v47 = sqrt(v42) / sqrt(v41);
          v48 = [AKTSDPathIntersection alloc];
          if (a5)
          {
            v49 = a4;
            v50 = v47;
            v51 = a3;
            v52 = v33;
          }

          else
          {
            v49 = a3;
            v50 = v33;
            v51 = a4;
            v52 = v47;
          }

          v53 = [(AKTSDPathIntersection *)v48 initWithSegment:v49 atT:v51 onSegmentB:v50 atT:v52 atPoint:v35, v38];
          [v11 addObject:v53];

          v12 = v46;
          v16 = v45;
          v13 = v44;
          v14 = v54;
        }
      }

      ++v30;
    }

    while (v29 != v30);
  }
}

void sub_23F4A0650(double *a1, double *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0.0;
  v13 = 0.0;
  v11 = *MEMORY[0x277CBF348];
  if (sub_23F49FCE4(a1, a2, &v13, &v12, &v11))
  {
    v8 = a5;
    v9 = [AKTSDPathIntersection alloc];
    v10 = [(AKTSDPathIntersection *)v9 initWithSegment:a3 atT:a4 onSegmentB:v13 atT:v12 atPoint:v11];
    [v8 addObject:v10];
  }
}

double sub_23F4A1DA8(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a7), v7, a6);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a7), v8, a6), a5), v9, a4), a3), vmlaq_n_f64(vmulq_n_f64(v9, a5), vmlaq_n_f64(vmulq_n_f64(v7, a7), *a1, a6), a4), a2);
  return result;
}

void sub_23F4A1DEC(float64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v110 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a5;
  v17 = a6;
  v100 = 0.0;
  v99 = 0;
  [v15 transformedTotalCoordinate:a3 betweenElement:a4 andElement:v16 withPressure:&v99 getElement:&v100 getPercentage:{a1->f64[0], a1->f64[1]}];
  v97 = v18;
  v98 = v19;
  v103.f64[0] = v18;
  v103.f64[1] = v19;
  [v15 curvatureAt:v99 fromElement:v100];
  v21 = v20;
  *&v20 = v100;
  [v15 myGradientAt:v99 fromElement:v20];
  v92 = v23;
  v93 = v22;
  [v15 transformedTotalCoordinate:a3 betweenElement:a4 andElement:v16 withPressure:&v99 getElement:&v100 getPercentage:{a1[3].f64[0], a1[3].f64[1]}];
  v95 = v24;
  v96 = v25;
  v108 = v24;
  v109 = v25;
  [v15 curvatureAt:v99 fromElement:v100];
  v27 = v26;
  *&v26 = v100;
  [v15 myGradientAt:v99 fromElement:v26];
  v90 = v29;
  v91 = v28;
  v30 = 0.5;
  if (v21 <= 0.5)
  {
    v31 = v21;
  }

  else
  {
    v31 = 0.5;
  }

  if (v31 >= -0.5)
  {
    v32 = v31;
  }

  else
  {
    v32 = -0.5;
  }

  if (v27 <= 0.5)
  {
    v30 = v27;
  }

  if (v30 < -0.5)
  {
    v30 = -0.5;
  }

  v89 = v30;
  [v15 lineWidth];
  v34 = v33;
  v35 = a1->f64[1];
  if (v16)
  {
    [v16 pressureAt:a1->f64[0]];
    v37 = v34;
    v38 = v35 * v36 * v37;
    v39 = a1[1].f64[1];
    [v16 pressureAt:a1[1].f64[0]];
    v41 = v39 * v40 * v37;
    v42 = a1[2].f64[1];
    [v16 pressureAt:a1[2].f64[0]];
    v44 = v42 * v43 * v37;
    v45 = a1[3].f64[1];
    [v16 pressureAt:a1[3].f64[0]];
  }

  else
  {
    v37 = v34;
    v38 = v35 * v37;
    v41 = a1[1].f64[1] * v37;
    v44 = a1[2].f64[1] * v37;
    v45 = a1[3].f64[1];
    v46 = 1.0;
  }

  v47 = v41;
  v48 = v38;
  v49 = v44;
  v50 = v37 * (v45 * v46);
  v51 = a1[1].f64[0] - a1->f64[0];
  v52 = (v47 - v48);
  v53 = sub_23F4659DC(v93, v92, 1.0 - (v32 * v48));
  v54 = sub_23F465A1C(-v92, v93);
  v55 = sub_23F4659C4(v97, v98, v54 * v52 + v51 * v53);
  v57 = v56;
  v94 = v55;
  v104 = v55;
  v105 = v56;
  v58 = a1[2].f64[0] - a1[3].f64[0];
  v59 = sub_23F4659DC(v91, v90, 1.0 - (v89 * v50));
  v60 = sub_23F465A1C(-v90, v91) * (v49 - v50) + v58 * v59;
  v61 = sub_23F4659C4(v95, v96, v60);
  v63 = v62;
  v106 = v61;
  v107 = v62;
  if (a7 && (a7 > 19 || (v64 = sub_23F4659D0(v95, v96, v97), sub_23F4659F8(v64, v65) <= 0.5)) || (v66 = sub_23F49FBB8(&v103, 0.33), v68 = v67, [v15 transformedTotalCoordinate:a3 betweenElement:a4 andElement:v16 withPressure:&v99 getElement:&v100 getPercentage:{sub_23F49FBB8(a1, 0.33)}], v70 = sub_23F4659D0(v66, v68, v69), *&v68 = sub_23F4659F8(v70, v71) + 0.0, v72 = sub_23F49FBB8(&v103, 0.5), v74 = v73, objc_msgSend(v15, "transformedTotalCoordinate:betweenElement:andElement:withPressure:getElement:getPercentage:", a3, a4, v16, &v99, &v100, sub_23F49FBB8(a1, 0.5)), v76 = sub_23F4659D0(v72, v74, v75), v78 = sub_23F4659F8(v76, v77) + *&v68, v79 = sub_23F49FBB8(&v103, 0.66), v81 = v80, objc_msgSend(v15, "transformedTotalCoordinate:betweenElement:andElement:withPressure:getElement:getPercentage:", a3, a4, v16, &v99, &v100, sub_23F49FBB8(a1, 0.66)), v83 = sub_23F4659D0(v79, v81, v82), v85 = sub_23F4659F8(v83, v84) + v78, v85 <= 0.2))
  {
    if (a8)
    {
      [v17 moveToPoint:{v97, v98}];
    }

    else
    {
      [v17 currentPoint];
      v87 = sub_23F4659D0(v97, v98, v86);
      if (sub_23F4659F8(v87, v88) > 1.0)
      {
        [v17 lineToPoint:{v97, v98}];
      }
    }

    [v17 curveToPoint:v95 controlPoint1:v96 controlPoint2:{v94, v57, v61, v63}];
  }

  else
  {
    sub_23F49FC10(a1, v102, 0.0, 0.5);
    sub_23F49FC10(a1, v101, 0.5, 1.0);
    sub_23F4A1DEC(v102, v15, a3, a4, v16, v17, (a7 + 1), a8);
    sub_23F4A1DEC(v101, v15, a3, a4, v16, v17, (a7 + 1), 0);
  }
}

void sub_23F4A2368(float64x2_t *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v138 = *MEMORY[0x277D85DE8];
  v133 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [v13 count];
  v15 = v14 - 1;
  v128 = v12;
  if ((v14 - 1) < 2)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  v129 = v11;
  v131 = v14 - 1;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a1[1].f64[0];
  v20 = a1[2].f64[0];
  v21 = a1[3].f64[0];
  v22 = fmin(a1->f64[0], fmin(v19, fmin(v20, v21)));
  v23 = 2 - v14;
  v24 = fmax(a1->f64[0], fmax(v19, fmax(v20, v21)));
  v25 = 1;
  do
  {
    v26 = [v13 objectAtIndex:v25];
    [v26 t];
    v28 = v27;
    _NF = v28 > v22 && v28 < v24;
    v30 = v28;
    if (_NF)
    {
      if (!v16)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v134.f64[0] = v30;
      v134.f64[1] = -100.0;
      v135.f64[0] = v30;
      v135.f64[1] = 100.0;
      sub_23F4A0330(a1->f64, v134.f64, v25, v25, 0, v16);
    }

    v31 = a1[3].f64[0];
    if (v31 > v30)
    {
      v17 = v25;
    }

    if (v31 < v30)
    {
      v32 = v25;
    }

    else
    {
      v32 = 0;
    }

    if (!v18)
    {
      v18 = v32;
    }

    ++v25;
  }

  while (v23 + v25 != 1);
  v11 = v129;
  v15 = v131;
  if (!v18)
  {
LABEL_23:
    v18 = v15;
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  if (!v16)
  {
LABEL_37:
    v89 = [v13 objectAtIndex:v17];
    v90 = [v13 objectAtIndex:v18];
    [v89 t];
    v92 = v91;
    [v90 t];
    v94 = v93;
    [v89 skew];
    v96 = v95;
    [v90 skew];
    v98 = v97;
    [v133 lineWidth];
    v100 = v99;
    [v133 length];
    v101 = 0;
    v102 = vdupq_n_s64(0x7FF0000000000000uLL);
    v103 = v96;
    *&v104 = -v103;
    v105 = v98;
    *&v106 = (v103 + v105);
    v108 = v100 / v107;
    *&v107 = v94;
    v109 = v92;
    *&v110 = (*&v107 - v109);
    v111 = vdupq_lane_s64(COERCE__INT64(v109), 0);
    v112 = vdupq_lane_s64(v110, 0);
    v113 = vdupq_lane_s64(v106, 0);
    v114 = vdupq_lane_s64(v104, 0);
    v115 = v108;
    v116.f64[0] = NAN;
    v116.f64[1] = NAN;
    v117 = vnegq_f64(v116);
    __asm
    {
      FMOV            V7.2D, #0.5
      FMOV            V16.2D, #1.0
    }

    do
    {
      f64 = a1[v101].f64;
      v141 = vld2q_f64(f64);
      v121 = vdivq_f64(vsubq_f64(v141.val[0], v111), v112);
      v141.val[0] = vmlaq_f64(v141.val[0], v141.val[1], vmulq_n_f64(vmlaq_f64(v114, v113, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v121, v117), v102), _Q7, v121), _Q16), 0)), v115));
      *f64 = v141.val[0].f64[0];
      a1[v101 + 1].f64[0] = v141.val[0].f64[1];
      v101 += 2;
    }

    while (v101 != 4);
    sub_23F4A1DEC(a1, v133, [v89 segment] + 1, objc_msgSend(v90, "segment"), v11, v12, 0, a5);

    goto LABEL_40;
  }

LABEL_24:
  if (![v16 count])
  {
    goto LABEL_37;
  }

  v130 = v11;
  [v16 sortUsingSelector:sel_compareT_];
  v122 = [[AKTSDPathIntersection alloc] initWithSegment:v17 atT:1.0 atPoint:1000.0, 0.0];
  [v16 addObject:?];
  v127 = [v16 count];
  if (v127)
  {
    v33 = 0;
    v123 = v127 - 1;
    v34 = 0.0;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v125 = vdupq_n_s64(0x7FF0000000000000uLL);
    v126 = vnegq_f64(v35);
    __asm { FMOV            V0.2D, #0.5 }

    v124 = _Q0;
    do
    {
      v40 = v34;
      v41 = [v16 objectAtIndex:v33];
      [v41 t];
      v42 = a1[1];
      v134 = *a1;
      v135 = v42;
      v43 = a1[3];
      v136 = a1[2];
      v137 = v43;
      v34 = v44;
      v43.f64[0] = 1.0 - v40;
      v45 = vmlaq_n_f64(vmulq_n_f64(v136, v40), v135, v43.f64[0]);
      v132 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v137, v40), v136, v43.f64[0]), v40), v45, v43.f64[0]), v40), vmlaq_n_f64(vmulq_n_f64(v45, v40), vmlaq_n_f64(vmulq_n_f64(v135, v40), v134, v43.f64[0]), v43.f64[0]), v43.f64[0]);
      v46 = 1.0 - v34;
      v47 = vmlaq_n_f64(vmulq_n_f64(v135, v34), v134, v46);
      v48 = vmlaq_n_f64(vmulq_n_f64(v136, v34), v135, v46);
      v49 = vmlaq_n_f64(vmulq_n_f64(v137, v34), v136, v46);
      v134 = v132;
      v135 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v49, v40), v48, v43.f64[0]), v40), vmlaq_n_f64(vmulq_n_f64(v48, v40), v47, v43.f64[0]), v43.f64[0]);
      v50 = vmlaq_n_f64(vmulq_n_f64(v48, v34), v47, v46);
      v51 = vmlaq_n_f64(vmulq_n_f64(v49, v34), v48, v46);
      v136 = vmlaq_n_f64(vmulq_n_f64(v51, v40), v50, v43.f64[0]);
      v137 = vmlaq_n_f64(vmulq_n_f64(v51, v34), v50, v46);
      [v41 point];
      v53 = v52;
      v54 = [v41 segment];
      v55 = [v41 segment];
      if (v132.f64[0] <= v53)
      {
        if (v33 == v123)
        {
          v56 = v55 + 1;
        }

        else
        {
          v56 = v55;
        }

        v54 -= v33 != v123;
      }

      else
      {
        v56 = v55 + 1;
      }

      v57 = [v13 objectAtIndex:{v54, v132.f64[0]}];
      v58 = [v13 objectAtIndex:v56];
      [v57 t];
      v60 = v59;
      [v58 t];
      v62 = v61;
      [v57 skew];
      v64 = v63;
      [v58 skew];
      v66 = v65;
      [v133 lineWidth];
      v68 = v67;
      [v133 length];
      v69 = 0;
      v70 = v64;
      *&v71 = -v70;
      v72 = v66;
      *&v73 = (v70 + v72);
      *&v74 = v68 / v74;
      v75 = *&v74;
      v76 = v62;
      v77 = v60;
      *&v78 = (v76 - v77);
      v79 = vdupq_lane_s64(COERCE__INT64(v77), 0);
      v80 = vdupq_lane_s64(v78, 0);
      v81 = vdupq_lane_s64(v73, 0);
      v82 = vdupq_lane_s64(v71, 0);
      do
      {
        v83 = &v134.f64[v69];
        v140 = vld2q_f64(v83);
        v84 = vdivq_f64(vsubq_f64(v140.val[0], v79), v80);
        __asm { FMOV            V17.2D, #1.0 }

        v140.val[0] = vmlaq_f64(v140.val[0], v140.val[1], vmulq_n_f64(vmlaq_f64(v82, v81, vmaxnmq_f64(vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v84, v126), v125), v124, v84), _Q17), 0)), v75));
        *v83 = v140.val[0].f64[0];
        *(&v134 + v69 * 8 + 16) = v140.val[0].f64[1];
        v69 += 4;
      }

      while (v69 != 8);
      v86 = [v57 segment];
      v87 = [v58 segment];
      v88 = v86 + 1;
      v12 = v128;
      sub_23F4A1DEC(&v134, v133, v88, v87, v130, v128, 0, a5 & 1);

      LOBYTE(a5) = 0;
      ++v33;
    }

    while (v33 != v127);
  }

  v11 = v130;
LABEL_40:
}

CGPath *sub_23F4A37FC(int a1, int a2, double a3, double a4, double a5, double a6, long double a7, double a8, double a9)
{
  v15 = (a3 - a8) * 0.5;
  v16 = (a4 - a9) * 0.5;
  v17 = fmod(a7, 360.0);
  v18 = __sincos_stret(v17 * 3.14159265 / 180.0);
  v19 = v18.__sinval * v16 + v18.__cosval * v15;
  v20 = v18.__cosval * v16 - v18.__sinval * v15;
  v21 = fabs(a5);
  v22 = fabs(a6);
  v23 = a5 * a5;
  v24 = a6 * a6;
  v25 = v19 * v19 / (a5 * a5) + v20 * v20 / (a6 * a6);
  if (v25 > 1.0)
  {
    v26 = sqrt(v25);
    v21 = v21 * v26;
    v22 = v22 * v26;
    v23 = v21 * v21;
    v24 = v22 * v22;
  }

  v27 = (v23 * v24 - v23 * (v20 * v20) - v24 * (v19 * v19)) / (v19 * v19 * v24 + v23 * (v20 * v20));
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = sqrt(v27);
  if (a1 == a2)
  {
    v28 = -v28;
  }

  v29 = v20 * v21 / v22 * v28;
  v30 = -(v22 * v19) / v21 * v28;
  v31 = (a4 + a9) * 0.5;
  v46 = (a3 + a8) * 0.5 + v30 * -v18.__sinval + v18.__cosval * v29;
  v32 = v31 + v18.__cosval * v30 + v18.__sinval * v29;
  v33 = (v20 - v30) / v22;
  v34 = (-v19 - v29) / v21;
  v35 = (-v20 - v30) / v22;
  v36 = acos((v19 - v29) / v21 / sqrt(v33 * v33 + (v19 - v29) / v21 * ((v19 - v29) / v21)));
  if (v33 < 0.0)
  {
    v36 = -v36;
  }

  v37 = v36 * 180.0 / 3.14159265;
  v38 = acos(v34 / sqrt(v35 * v35 + v34 * v34));
  if (v35 < 0.0)
  {
    v38 = -v38;
  }

  v39 = fmod(v38 * 180.0 / 3.14159265, 360.0);
  v40 = fmod(v37, 360.0);
  Mutable = CGPathCreateMutable();
  v42 = *(MEMORY[0x277CBF2C0] + 16);
  *&m.a = *MEMORY[0x277CBF2C0];
  *&m.c = v42;
  *&m.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v49.a = *&m.a;
  *&v49.c = v42;
  *&v49.tx = *&m.tx;
  CGAffineTransformTranslate(&m, &v49, v46, v32);
  v48 = m;
  CGAffineTransformRotate(&v49, &v48, a7 * 180.0 / 3.14159265);
  m = v49;
  v48 = v49;
  CGAffineTransformScale(&v49, &v48, 1.0, v22 / v21);
  m = v49;
  v48 = v49;
  CGAffineTransformTranslate(&v49, &v48, -v46, -v32);
  m = v49;
  CGPathMoveToPoint(Mutable, &m, 0.0, 0.0);
  CGPathAddArc(Mutable, &m, v46, v32, v21, v40, v39, a2 != 1);
  return Mutable;
}

CGPath *sub_23F4A3B28(const CGPath *a1, const CGPath *a2, uint64_t a3, uint64_t a4)
{
  MutableCopy = CGPathCreateMutableCopy(a1);
  if (a3 < a4)
  {
    do
    {
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      info = a3;
      CGPathApply(a2, &info, sub_23F49FFD0);
      if (DWORD2(v10) == 3)
      {
        CGPathAddCurveToPoint(MutableCopy, 0, *&v11, *(&v11 + 1), *&v12, *(&v12 + 1), *&v13, *(&v13 + 1));
      }

      else if (DWORD2(v10))
      {
        if (DWORD2(v10) == 1)
        {
          CGPathAddLineToPoint(MutableCopy, 0, *&v11, *&v11);
        }

        else if (DWORD2(v10) == 4)
        {
          CGPathCloseSubpath(MutableCopy);
        }
      }

      else
      {
        CGPathMoveToPoint(MutableCopy, 0, *&v11, *(&v11 + 1));
      }

      ++a3;
    }

    while (a4 != a3);
  }

  return MutableCopy;
}

const CGPath *sub_23F4A3C30(void *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v1 = a1;
  Mutable = CGPathCreateMutable();
  v86 = 0.0;
  v87 = 0.0;
  v4 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  v73 = v1;
  v5 = [MEMORY[0x277CCAC80] scannerWithString:v1];
  v88 = *asc_23F4D9458;
  v89 = 2883717;
  v6 = MEMORY[0x277CCA900];
  v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v88 length:6];
  v8 = [v6 characterSetWithCharactersInString:v7];
  [v5 setCharactersToBeSkipped:v8];

  v9 = 0;
  v10 = 0;
  v11 = v3;
  v12 = v4;
  while (1)
  {
    v13 = v9;
    v14 = [MEMORY[0x277CCA900] letterCharacterSet];
    v85 = v9;
    v15 = [v5 scanCharactersFromSet:v14 intoString:&v85];
    v9 = v85;

    if (!v15)
    {
      break;
    }

    v16 = [v9 characterAtIndex:0];
    v17 = v16;
    if (v16 > 96)
    {
      if (v16 > 112)
      {
        if (v16 <= 115)
        {
          if (v16 == 113)
          {
            CurrentPoint = CGPathGetCurrentPoint(Mutable);
            info = 0.0;
            v79 = 0.0;
            v76 = 0.0;
            v77 = 0.0;
            [v5 scanCGFloat:&info];
            [v5 scanCGFloat:&v79];
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v77];
            v63 = CurrentPoint.x + info;
            v64 = CurrentPoint.y + v79;
            info = v63;
            v79 = v64;
            v68 = CurrentPoint.x + v76;
            v69 = CurrentPoint.y + v77;
            v76 = CurrentPoint.x + v76;
            v77 = CurrentPoint.y + v77;
            v65 = 3.0;
            v66 = CurrentPoint.x + (v63 - CurrentPoint.x + v63 - CurrentPoint.x) / 3.0;
            v67 = CurrentPoint.y + (v64 - CurrentPoint.y + v64 - CurrentPoint.y) / 3.0;
            goto LABEL_79;
          }

          if (v16 == 115)
          {
            v39 = CGPathGetCurrentPoint(Mutable);
            v40 = (((v10 - 67) >> 4) | ((v10 - 67) << 12));
            if (v40 >= 4)
            {
              x = v39.x;
            }

            else
            {
              x = v39.x + v39.x - v12;
            }

            info = 0.0;
            v79 = 0.0;
            if (v40 >= 4)
            {
              y = v39.y;
            }

            else
            {
              y = v39.y + v39.y - v11;
            }

            v76 = 0.0;
            v77 = 0.0;
            [v5 scanCGFloat:&info];
            [v5 scanCGFloat:&v79];
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v77];
            v32 = v39.x + info;
            v33 = v39.y + v79;
            info = v39.x + info;
            v79 = v39.y + v79;
            v34 = v39.x + v76;
            v35 = v39.y + v77;
            v76 = v39.x + v76;
            v77 = v39.y + v77;
            v36 = Mutable;
            v37 = x;
            v38 = y;
            goto LABEL_54;
          }

          goto LABEL_80;
        }

        if (v16 != 116)
        {
          if (v16 == 118)
          {
            [v5 scanCGFloat:&v87];
            v46 = CGPathGetCurrentPoint(Mutable);
            v44 = v46.x;
            v45 = v87 - v46.y;
            goto LABEL_65;
          }

          if (v16 == 122)
          {
LABEL_28:
            CGPathCloseSubpath(Mutable);
            goto LABEL_84;
          }

          goto LABEL_80;
        }

        v51 = CGPathGetCurrentPoint(Mutable);
        if (v10 - 81 > 0x23)
        {
          v52 = v51.x;
          v53 = v51.y;
        }

        else
        {
          v52 = v51.x;
          v53 = v51.y;
          if (((1 << (v10 - 81)) & 0x900000009) != 0)
          {
            v52 = v51.x + v51.x - v4;
            v53 = v51.y + v51.y - v3;
          }
        }

        info = 0.0;
        v79 = 0.0;
        [v5 scanCGFloat:&info];
        [v5 scanCGFloat:&v79];
        info = v51.x + info;
        v79 = v51.y + v79;
        CGPathAddCurveToPoint(Mutable, 0, v52, v51.y + (v53 - v51.y + v53 - v51.y) / 3.0, v52 + (info - v52) / 3.0, v53 + (v79 - v53) / 3.0, info, v79);
        v3 = v53;
        v4 = v52;
LABEL_84:
        v10 = v17;
      }

      else
      {
        if (v16 <= 103)
        {
          if (v16 == 97)
          {
            v60 = CGPathGetCurrentPoint(Mutable);
            v76 = 0.0;
            v74 = 0.0;
            v83 = 0;
            v84 = 0.0;
            v81 = 0.0;
            v82 = 0;
            v80 = 0.0;
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v74];
            [v5 scanCGFloat:&v84];
            [v5 scanInteger:&v83];
            [v5 scanInteger:&v82];
            [v5 scanCGFloat:&v81];
            [v5 scanCGFloat:&v80];
            v80 = v60.y + v80;
            v81 = v60.x + v81;
            v55 = sub_23F4A37FC(v83 != 0, v82 != 0, v60.x, v60.y, v76, v74, v84, v81, v80);
            info = 0.0;
            CGPathApply(v55, &info, sub_23F49FFC0);
            v56 = *&info;
            v57 = Mutable;
            v58 = v55;
            v59 = 1;
            goto LABEL_76;
          }

          if (v16 == 99)
          {
            v27 = CGPathGetCurrentPoint(Mutable);
            info = 0.0;
            v79 = 0.0;
            v76 = 0.0;
            v77 = 0.0;
            v74 = 0.0;
            v75 = 0.0;
            [v5 scanCGFloat:&info];
            [v5 scanCGFloat:&v79];
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v77];
            [v5 scanCGFloat:&v74];
            [v5 scanCGFloat:&v75];
            v21 = v27.x + info;
            v23 = v27.x + v76;
            v25 = v27.x + v74;
            v22 = v27.y + v79;
            info = v27.x + info;
            v79 = v27.y + v79;
            v24 = v27.y + v77;
            v76 = v27.x + v76;
            v77 = v27.y + v77;
            v26 = v27.y + v75;
            v74 = v27.x + v74;
            v75 = v27.y + v75;
            goto LABEL_35;
          }

          goto LABEL_80;
        }

        switch(v16)
        {
          case 'h':
            [v5 scanCGFloat:&v86];
            v47 = CGPathGetCurrentPoint(Mutable);
            v45 = v47.y;
            v44 = v86 - v47.x;
            goto LABEL_65;
          case 'l':
            v10 = 108;
            if ([v5 scanCGFloat:&v86])
            {
              do
              {
                [v5 scanCGFloat:&v87];
                v43 = CGPathGetCurrentPoint(Mutable);
                CGPathAddLineToPoint(Mutable, 0, v86 - v43.x, v87 - v43.y);
              }

              while (([v5 scanCGFloat:&v86] & 1) != 0);
              goto LABEL_84;
            }

            break;
          case 'm':
            v18 = CGPathGetCurrentPoint(Mutable);
            [v5 scanCGFloat:&v86];
            [v5 scanCGFloat:&v87];
            info = 0.0;
            CGPathApply(Mutable, &info, sub_23F49FFC0);
            if (*&info < 1)
            {
              v19 = v86;
              v20 = v87;
            }

            else
            {
              v19 = v86 - v18.x;
              v20 = v87 - v18.y;
            }

            CGPathMoveToPoint(Mutable, 0, v19, v20);
            v10 = 109;
            if ([v5 scanCGFloat:&v86])
            {
              do
              {
                [v5 scanCGFloat:&v87];
                v71 = CGPathGetCurrentPoint(Mutable);
                CGPathAddLineToPoint(Mutable, 0, v86 - v71.x, v87 - v71.y);
              }

              while (([v5 scanCGFloat:&v86] & 1) != 0);
              goto LABEL_84;
            }

            break;
          default:
            goto LABEL_80;
        }
      }
    }

    else
    {
      if (v16 > 80)
      {
        if (v16 <= 83)
        {
          if (v16 == 81)
          {
            v62 = CGPathGetCurrentPoint(Mutable);
            info = 0.0;
            v79 = 0.0;
            v76 = 0.0;
            v77 = 0.0;
            [v5 scanCGFloat:&info];
            [v5 scanCGFloat:&v79];
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v77];
            v63 = info;
            v64 = v79;
            v65 = 3.0;
            v66 = v62.x + (info - v62.x + info - v62.x) / 3.0;
            v67 = v62.y + (v79 - v62.y + v79 - v62.y) / 3.0;
            v68 = v76;
            v69 = v77;
LABEL_79:
            CGPathAddCurveToPoint(Mutable, 0, v66, v67, v63 + (v68 - v63) / v65, v64 + (v69 - v64) / v65, v68, v69);
            v4 = info;
            v3 = v79;
            goto LABEL_84;
          }

          if (v16 == 83)
          {
            v28 = CGPathGetCurrentPoint(Mutable);
            v29 = (((v10 - 67) >> 4) | ((v10 - 67) << 12));
            if (v29 >= 4)
            {
              v30 = v28.x;
            }

            else
            {
              v30 = v28.x + v28.x - v12;
            }

            info = 0.0;
            v79 = 0.0;
            if (v29 >= 4)
            {
              v31 = v28.y;
            }

            else
            {
              v31 = v28.y + v28.y - v11;
            }

            v76 = 0.0;
            v77 = 0.0;
            [v5 scanCGFloat:&info];
            [v5 scanCGFloat:&v79];
            [v5 scanCGFloat:&v76];
            [v5 scanCGFloat:&v77];
            v32 = info;
            v33 = v79;
            v34 = v76;
            v35 = v77;
            v36 = Mutable;
            v37 = v30;
            v38 = v31;
LABEL_54:
            CGPathAddCurveToPoint(v36, 0, v37, v38, v32, v33, v34, v35);
            v12 = info;
            v11 = v79;
            goto LABEL_84;
          }

          goto LABEL_80;
        }

        if (v16 != 84)
        {
          if (v16 == 86)
          {
            [v5 scanCGFloat:&v87];
            *&v44 = *&CGPathGetCurrentPoint(Mutable);
            v45 = v87;
LABEL_65:
            CGPathAddLineToPoint(Mutable, 0, v44, v45);
            goto LABEL_84;
          }

          if (v16 == 90)
          {
            goto LABEL_28;
          }

LABEL_80:
          NSLog(&cfstr_CannotProcessP.isa, v9);
          goto LABEL_84;
        }

        v48 = CGPathGetCurrentPoint(Mutable);
        if (v10 - 81 > 0x23)
        {
          v49 = v48.x;
          v50 = v48.y;
        }

        else
        {
          v49 = v48.x;
          v50 = v48.y;
          if (((1 << (v10 - 81)) & 0x900000009) != 0)
          {
            v49 = v48.x + v48.x - v4;
            v50 = v48.y + v48.y - v3;
          }
        }

        info = 0.0;
        v79 = 0.0;
        [v5 scanCGFloat:&info];
        [v5 scanCGFloat:&v79];
        CGPathAddCurveToPoint(Mutable, 0, v48.x + (v49 - v48.x + v49 - v48.x) / 3.0, v48.y + (v50 - v48.y + v50 - v48.y) / 3.0, v49 + (info - v49) / 3.0, v50 + (v79 - v50) / 3.0, info, v79);
        v3 = v50;
        v4 = v49;
        goto LABEL_84;
      }

      if (v16 <= 71)
      {
        if (v16 == 65)
        {
          v54 = CGPathGetCurrentPoint(Mutable);
          v76 = 0.0;
          v74 = 0.0;
          v83 = 0;
          v84 = 0.0;
          v81 = 0.0;
          v82 = 0;
          v80 = 0.0;
          [v5 scanCGFloat:&v76];
          [v5 scanCGFloat:&v74];
          [v5 scanCGFloat:&v84];
          [v5 scanInteger:&v83];
          [v5 scanInteger:&v82];
          [v5 scanCGFloat:&v81];
          [v5 scanCGFloat:&v80];
          v55 = sub_23F4A37FC(v83 != 0, v82 != 0, v54.x, v54.y, v76, v74, v84, v81, v80);
          info = 0.0;
          CGPathApply(v55, &info, sub_23F49FFC0);
          v56 = *&info;
          v57 = Mutable;
          v58 = v55;
          v59 = 2;
LABEL_76:
          v61 = sub_23F4A3B28(v57, v58, v59, v56);
          CGPathRelease(v55);
          CGPathRelease(Mutable);
          Mutable = CGPathCreateMutableCopy(v61);
          CGPathRelease(v61);
          goto LABEL_84;
        }

        if (v16 == 67)
        {
          info = 0.0;
          v79 = 0.0;
          v76 = 0.0;
          v77 = 0.0;
          v74 = 0.0;
          v75 = 0.0;
          [v5 scanCGFloat:&info];
          [v5 scanCGFloat:&v79];
          [v5 scanCGFloat:&v76];
          [v5 scanCGFloat:&v77];
          [v5 scanCGFloat:&v74];
          [v5 scanCGFloat:&v75];
          v21 = info;
          v22 = v79;
          v23 = v76;
          v24 = v77;
          v25 = v74;
          v26 = v75;
LABEL_35:
          CGPathAddCurveToPoint(Mutable, 0, v21, v22, v23, v24, v25, v26);
          v12 = v76;
          v11 = v77;
          goto LABEL_84;
        }

        goto LABEL_80;
      }

      switch(v16)
      {
        case 'H':
          [v5 scanCGFloat:&v86];
          v45 = CGPathGetCurrentPoint(Mutable).y;
          v44 = v86;
          goto LABEL_65;
        case 'L':
          v10 = 76;
          if ([v5 scanCGFloat:&v86])
          {
            do
            {
              [v5 scanCGFloat:&v87];
              CGPathAddLineToPoint(Mutable, 0, v86, v87);
            }

            while (([v5 scanCGFloat:&v86] & 1) != 0);
            goto LABEL_84;
          }

          break;
        case 'M':
          [v5 scanCGFloat:&v86];
          [v5 scanCGFloat:&v87];
          CGPathMoveToPoint(Mutable, 0, v86, v87);
          v10 = 77;
          if ([v5 scanCGFloat:&v86])
          {
            do
            {
              [v5 scanCGFloat:&v87];
              CGPathAddLineToPoint(Mutable, 0, v86, v87);
            }

            while (([v5 scanCGFloat:&v86] & 1) != 0);
            goto LABEL_84;
          }

          break;
        default:
          goto LABEL_80;
      }
    }
  }

  return Mutable;
}

void sub_23F4A4858(float64x2_t *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v36 = a6;
  v39 = 0.0;
  v40 = 0.0;
  sub_23F4A4B08(a1->f64, a2, &v40, &v39);
  v19 = v40;
  if (v40 <= 1.0)
  {
    v20 = v39;
    if (v39 >= 0.0)
    {
      if ((v39 - v40) * a7 >= 0.0001)
      {
        if (v39 - v40 >= 0.8)
        {
          v34 = (v40 + v39) * 0.5;
          sub_23F49FC10(a1, v41, v40, v34);
          sub_23F4A4858(a2, v41, a4, a3, a5 ^ 1u, v36, a9, a10, (v20 - v34) * a7, a8 + v19 * a7);
          sub_23F49FC10(a1, v41, (v19 + v20) * 0.5, v20);
          v27 = a8 + v34 * a7;
          v28 = a5 ^ 1u;
          v29 = a2;
          v30 = a9;
          v31 = a10;
          v32 = a4;
          v33 = (v20 - v34) * a7;
        }

        else
        {
          sub_23F49FC10(a1, v41, v40, v39);
          v27 = a8 + v19 * a7;
          v28 = a5 ^ 1u;
          v29 = a2;
          v30 = a9;
          v31 = a10;
          v32 = a4;
          v33 = (v20 - v19) * a7;
        }

        sub_23F4A4858(v29, v41, v32, a3, v28, v36, v30, v31, v33, v27);
      }

      else
      {
        v37 = 0.0;
        v38 = 0.0;
        sub_23F49FC10(a1, v41, v40, v39);
        sub_23F4A4B08(a2, v41, &v38, &v37);
        if ((v37 - v38) * a9 < 0.1)
        {
          v21 = (v37 + v38) * a9 * 0.5 + a10;
          v22 = [AKTSDPathIntersection alloc];
          if (a5)
          {
            v23 = a4;
            v24 = v21;
            v25 = a3;
            v26 = (v19 + v20) * a7 * 0.5 + a8;
          }

          else
          {
            v23 = a3;
            v24 = (v19 + v20) * a7 * 0.5 + a8;
            v25 = a4;
            v26 = v21;
          }

          v35 = [(AKTSDPathIntersection *)v22 initWithSegment:v23 atT:v25 onSegmentB:v24 atT:v26 atPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v36];
          [v36 addObject:v35];
        }
      }
    }
  }
}

double *sub_23F4A4B08(double *a1, double *a2, double *a3, double *a4)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v6 = a2[6];
  v7 = a2[7];
  v8 = v7 - a2[1];
  v9 = v6 - *a2;
  v10 = v9 * v9 + v8 * v8;
  v11 = (1.0 / sqrtf(v10));
  v12 = v8 * v11;
  v13 = -(v9 * v11);
  v14 = v7 * v13 + v12 * v6;
  v15 = a1[1] * v13 + v12 * *a1 - v14;
  v28[0] = 0;
  *&v28[1] = v15;
  v16 = a1[3] * v13 + v12 * a1[2] - v14;
  v28[2] = 0x3FD5555555555555;
  *&v28[3] = v16;
  v17 = v13 * a1[5] + v12 * a1[4] - v14;
  v28[4] = 0x3FE5555555555555;
  *&v28[5] = v17;
  v18 = v13 * a1[7] + v12 * a1[6] - v14;
  v28[6] = 0x3FF0000000000000;
  *&v28[7] = v18;
  v19 = v13 * a2[3] + v12 * a2[2] - v14;
  v20 = v13 * a2[5] + v12 * a2[4] - v14;
  v21 = fmin(v19, fmin(v20, 0.0));
  v22 = fmax(v19, fmax(v20, 0.0));
  *a3 = 2.0;
  *a4 = -1.0;
  sub_23F4A4CD0(a3, a4, v28, v21);
  result = sub_23F4A4CD0(a3, a4, v28, v22);
  for (i = 0; i != 8; i += 2)
  {
    v25 = *&v28[i + 1];
    if (v25 > v21 && v25 < v22)
    {
      v27 = *&v28[i];
      *a3 = fmin(*a3, v27);
      *a4 = fmax(*a4, v27);
    }
  }

  return result;
}

double *sub_23F4A4CD0(double *result, double *a2, uint64_t a3, double a4)
{
  v4 = 0;
  v5 = (a3 + 24);
  v6 = 3;
  do
  {
    if (v4 <= 2)
    {
      v7 = (a3 + 16 * v4);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v7[1];
        if ((v10 <= a4 || *v9 <= a4) && (v10 >= a4 || *v9 >= a4))
        {
          v11 = *v7;
          v12 = *(v9 - 1) - *v7;
          if (v12 != 0.0)
          {
            v11 = v12 * (a4 - (v10 - v11 * (*v9 - v10) / v12)) / (*v9 - v10);
          }

          if (v11 < *result)
          {
            *result = v11;
          }

          if (v11 > *a2)
          {
            *a2 = v11;
          }
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    ++v4;
    v5 += 2;
    --v6;
  }

  while (v4 != 4);
  return result;
}

void sub_23F4A4D94(float64x2_t *a1, uint64_t a2, void *a3, double a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 2.0;
  v13 = a3;
  v14 = -1.0;
  sub_23F4A4CD0(&v15, &v14, a2, 0.0);
  v7 = v15;
  if (v15 <= 1.0)
  {
    v8 = v14;
    if (v14 >= 0.0)
    {
      if (v14 - v15 >= 0.00005)
      {
        if (v14 - v15 >= a4 * 0.8)
        {
          v12 = (v15 + v14) * 0.5;
          sub_23F49FC10(a1, v16, v15, v12);
          sub_23F4A4D94(a1, v16, v13, v12 - v7);
          sub_23F49FC10(a1, v16, (v7 + v8) * 0.5, v8);
          v11 = v8 - v12;
          v10 = a1;
        }

        else
        {
          sub_23F49FC10(a1, v16, v15, v14);
          v10 = a1;
          v11 = v8 - v7;
        }

        sub_23F4A4D94(v10, v16, v13, v11);
      }

      else
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:(v15 + v14) * 0.5];
        [v13 addObject:v9];
      }
    }
  }
}