@interface AKPotrace
+ (CGPath)newCGPathFromPotracePath:(potrace_path_s *)a3;
- (AKPotrace)initWithCGImage:(CGImage *)a3 flipped:(BOOL)a4 whiteIsInside:(BOOL)a5;
- (CGPath)CGPath;
- (void)_clearPathIfNecessary;
- (void)_generatePath;
- (void)dealloc;
@end

@implementation AKPotrace

- (AKPotrace)initWithCGImage:(CGImage *)a3 flipped:(BOOL)a4 whiteIsInside:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v45.receiver = self;
  v45.super_class = AKPotrace;
  v8 = [(AKPotrace *)&v45 init];
  if (!v8)
  {
    return v8;
  }

  sub_23F4BE14C();
  v8->_potraceParameters = v9;
  v10 = malloc_type_malloc(0x18uLL, 0x1010040B3F21DC8uLL);
  v8->_potraceBitmap = v10;
  if (!v10 || (v8->_potraceBitmap->var0 = CGImageGetWidth(a3), Height = CGImageGetHeight(a3), potraceBitmap = v8->_potraceBitmap, v13 = (potraceBitmap->var0 + 63) >> 6, potraceBitmap->var1 = Height, potraceBitmap->var2 = v13, potraceBitmap->var3 = 0, v14 = v8->_potraceBitmap, var1 = v14->var1, var2 = v14->var2, (((var2 * var1) >> 64) & 1) != 0) || (v8->_potraceBitmap->var3 = malloc_type_calloc(var2 * var1, 8uLL, 0x142E2631uLL), v17 = v8->_potraceBitmap, !v17->var3) || (var0 = v17->var0, v19 = v17->var1, (((v19 * var0) >> 64) & 1) != 0))
  {
    v25 = 0;
    DeviceGray = 0;
    v22 = 0;
    goto LABEL_31;
  }

  v20 = v19 * var0;
  v21 = malloc_type_malloc(v20, 0x523104BBuLL);
  v22 = v21;
  if (!v21)
  {
    v25 = 0;
    DeviceGray = 0;
    goto LABEL_31;
  }

  memset(v21, 255, v20);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!DeviceGray)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v24 = CGBitmapContextCreate(v22, v8->_potraceBitmap->var0, v8->_potraceBitmap->var1, 8uLL, v8->_potraceBitmap->var0, DeviceGray, 0);
  v25 = v24;
  if (!v24)
  {
LABEL_31:
    v33 = 0;
    goto LABEL_32;
  }

  if (v6)
  {
    CGContextTranslateCTM(v24, 0.0, v8->_potraceBitmap->var1);
    CGContextScaleCTM(v25, 1.0, -1.0);
  }

  Width = CGImageGetWidth(a3);
  v46.size.height = CGImageGetHeight(a3);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = Width;
  CGContextDrawImage(v25, v46, a3);
  v27 = v8->_potraceBitmap;
  v28 = v27->var1;
  if (v28 < 1)
  {
    v33 = 1;
    goto LABEL_32;
  }

  v29 = 0;
  v30 = v27->var0;
  var3 = v27->var3;
  v32 = v27->var2;
  v33 = 1;
  do
  {
    if (v30 < 1)
    {
      goto LABEL_28;
    }

    v34 = 0;
    v35 = &var3[v29 * v32];
    v36 = &v22[v29 * v30];
    while (2)
    {
      v37 = 0;
      v38 = 0;
      while (1)
      {
        v39 = v36[v38];
        if (v5)
        {
          if ((v39 & 0x80) == 0)
          {
            goto LABEL_21;
          }
        }

        else if (v39 > 0x7E)
        {
          goto LABEL_21;
        }

        v37 |= 0x8000000000000000 >> v38;
LABEL_21:
        if (v38 == 63)
        {
          break;
        }

        if (!(v34 - v30 + ++v38))
        {
          if (v38)
          {
            *v35 = v37;
          }

          goto LABEL_28;
        }
      }

      *v35++ = v37;
      v40 = v34 + 63;
      v34 += 64;
      v36 += 64;
      if (v40 - v30 != -1)
      {
        continue;
      }

      break;
    }

LABEL_28:
    ++v29;
  }

  while (v29 != v28);
LABEL_32:
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v25);
  if (v22)
  {
    free(v22);
  }

  if ((v33 & 1) == 0)
  {
    potraceParameters = v8->_potraceParameters;
    if (potraceParameters)
    {
      j__free(potraceParameters);
      v8->_potraceParameters = 0;
    }

    v42 = v8->_potraceBitmap;
    if (v42)
    {
      free(v42->var3);
      v8->_potraceBitmap->var3 = 0;
      v43 = v8->_potraceBitmap;
      if (v43)
      {
        free(v43);
        v8->_potraceBitmap = 0;
      }
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  [(AKPotrace *)self _clearPathIfNecessary];
  potraceParameters = self->_potraceParameters;
  if (potraceParameters)
  {
    j__free(potraceParameters);
    self->_potraceParameters = 0;
  }

  potraceBitmap = self->_potraceBitmap;
  if (potraceBitmap)
  {
    free(potraceBitmap->var3);
    self->_potraceBitmap->var3 = 0;
    v5 = self->_potraceBitmap;
    if (v5)
    {
      free(v5);
      self->_potraceBitmap = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = AKPotrace;
  [(AKPotrace *)&v6 dealloc];
}

- (CGPath)CGPath
{
  result = self->_cachedPath;
  if (!result)
  {
    [(AKPotrace *)self _generatePath];
    return self->_cachedPath;
  }

  return result;
}

- (void)_clearPathIfNecessary
{
  cachedPath = self->_cachedPath;
  if (cachedPath)
  {
    CGPathRelease(cachedPath);
    self->_cachedPath = 0;
  }
}

- (void)_generatePath
{
  v3 = sub_23F4BE19C(self->_potraceParameters, &self->_potraceBitmap->var0);
  if (v3)
  {
    v4 = v3;
    if (*v3 || (v5 = [AKPotrace newCGPathFromPotracePath:v3[1]]) == 0)
    {
      NSLog(&cfstr_PathGeneration.isa);
      CGPathRelease(0);
      v5 = 0;
    }

    sub_23F4BE420(v4);
  }

  else
  {
    NSLog(&cfstr_PathGeneration.isa);
    CGPathRelease(0);
    v5 = 0;
  }

  self->_cachedPath = v5;
}

+ (CGPath)newCGPathFromPotracePath:(potrace_path_s *)a3
{
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    for (; a3; a3 = a3->var3)
    {
      var0 = a3->var2.var0;
      var1 = a3->var2.var1;
      var2 = a3->var2.var2;
      CGPathMoveToPoint(Mutable, 0, *(var2 + 6 * var0 - 2), *(var2 + 6 * var0 - 1));
      if (var0 >= 1)
      {
        v8 = (var2 + 24);
        do
        {
          v10 = *var1++;
          v9 = v10;
          if (v10 == 1)
          {
            CGPathAddCurveToPoint(Mutable, 0, *(v8 - 3), *(v8 - 2), *(v8 - 1), *v8, v8[1], v8[2]);
          }

          else if (v9 == 2)
          {
            CGPathAddLineToPoint(Mutable, 0, *(v8 - 1), *v8);
            CGPathAddLineToPoint(Mutable, 0, v8[1], v8[2]);
          }

          v8 += 6;
          --var0;
        }

        while (var0);
      }
    }

    MutableCopy = CGPathCreateMutableCopy(Mutable);
  }

  else
  {
    MutableCopy = 0;
  }

  CGPathRelease(Mutable);
  return MutableCopy;
}

@end