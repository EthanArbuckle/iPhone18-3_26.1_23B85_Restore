float sub_3550(void *a1, double a2, double a3)
{
  v6 = [a1 baseAddress];
  v7 = 0.0;
  if (a2 >= 0.0 && a3 >= 0.0)
  {
    v8 = v6;
    [a1 region];
    if (a2 + 1.0 <= v9)
    {
      [a1 region];
      if (a3 + 1.0 <= v10)
      {
        v11 = [a1 format];
        v12 = 4.0;
        if (v11 == kCIFormatRf)
        {
          v13 = 0;
LABEL_9:
          v14 = 1;
          goto LABEL_10;
        }

        if (v11 == kCIFormatRGBAf)
        {
          v13 = 0;
          v12 = 16.0;
          goto LABEL_9;
        }

        if (v11 == kCIFormatR8)
        {
          v12 = 1.0;
        }

        else
        {
          if (v11 == kCIFormatRGBAh)
          {
            v14 = 0;
            v13 = 0;
            v12 = 8.0;
            goto LABEL_10;
          }

          if (v11 != kCIFormatRGBA8)
          {
            abort();
          }
        }

        v14 = 1;
        v13 = 1;
LABEL_10:
        v15 = floor(a2) * v12 + floor(a3) * [a1 bytesPerRow] + 0.0;
        v16 = &v8[v15];
        if (v13)
        {
          LOBYTE(v15) = *v16;
          return *&v15 / 255.0;
        }

        else if (v14)
        {
          return *v16;
        }

        else
        {
          v20 = 0.0;
          src.data = &v8[v15];
          *&src.height = vdupq_n_s64(1uLL);
          src.rowBytes = 2;
          dest.data = &v20;
          *&dest.height = *&src.height;
          dest.rowBytes = 4;
          vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
          if (v20 == 1.0)
          {
            return 0.0;
          }

          else
          {
            return v20;
          }
        }
      }
    }
  }

  return v7;
}

void sub_3DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect sub_56B4(id a1, int a2, CGRect a3)
{
  v3 = -7.0;
  if (a2)
  {
    v3 = -1.0;
  }

  return CGRectInset(a3, -1.0, v3);
}

CVPixelBufferRef sub_8558(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = [a1 format];
  v9 = kCIFormatRf;
  v10 = [a1 format];
  if (v8 == v9)
  {
    if (v10 != v8)
    {
      sub_49EA8();
    }

    [a1 region];
    v12 = -v11;
    [a1 region];
    v14 = -v13;
    v15 = [a1 bytesPerRow];
    v16 = [a1 baseAddress] + 4 * v12 + v15 * v14;

    return sub_875C(a4, a5, v15, v16);
  }

  else
  {
    if (v10 != kCIFormatRh)
    {
      return 0;
    }

    if ([a1 format] != v10)
    {
      sub_49E7C();
    }

    v18 = [a1 baseAddress];
    [a1 region];
    v20 = v19;
    [a1 region];
    v22 = v21;
    v23 = [a1 bytesPerRow];
    [a1 region];
    v25 = -v24;
    [a1 region];
    v27 = &v18[2 * v25 + v23 * -v26];
    v28 = malloc_type_malloc(4 * a4 * a5, 0x100004052888210uLL);
    src.data = v27;
    src.height = v22;
    src.width = v20;
    src.rowBytes = v23;
    v30.data = v28;
    v30.height = a5;
    v30.width = a4;
    v30.rowBytes = 4 * a4;
    vImageConvert_Planar16FtoPlanarF(&src, &v30, 0);
    v29 = sub_875C(a4, a5, 4 * a4, v28);
    free(v28);
    return v29;
  }
}

CVPixelBufferRef sub_875C(size_t a1, size_t a2, size_t a3, char *a4)
{
  v18[0] = &__NSDictionary0__struct;
  v17[0] = kCVPixelBufferIOSurfacePropertiesKey;
  v17[1] = kCVPixelBufferPixelFormatTypeKey;
  v18[1] = [NSNumber numberWithUnsignedInt:1278226534];
  pixelBuffer = 0;
  v8 = CVPixelBufferCreate(0, a1, a2, 0x4C303066u, [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2], &pixelBuffer);
  result = 0;
  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    if (CVPixelBufferLockBaseAddress(pixelBuffer, 0))
    {
      goto LABEL_17;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (BytesPerRow == a3)
    {
      memcpy(BaseAddress, a4, a3 * a2);
    }

    else if (BytesPerRow >= a3)
    {
      NSLog(@"Can't work with an image where there are more bytes in the source than in the destination.");
      CVPixelBufferRelease(pixelBuffer);
      pixelBuffer = 0;
    }

    else
    {
      v12 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      if (a2)
      {
        v13 = v12;
        v14 = 0;
        v15 = 1;
        do
        {
          memcpy(&BaseAddress[v14 * v13], &a4[v14 * a3], v13);
          v14 = v15++;
        }

        while (v14 < a2);
      }
    }

    if (CVPixelBufferUnlockBaseAddress(pixelBuffer, 0))
    {
LABEL_17:
      CVPixelBufferRelease(pixelBuffer);
      pixelBuffer = 0;
    }

    else
    {
LABEL_14:
      if (pixelBuffer && CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226534)
      {
        return pixelBuffer;
      }
    }

    sub_49ED4();
  }

  return result;
}

int sub_92B8(id a1, NSDictionary *a2)
{
  if (qword_8C9F8 != -1)
  {
    sub_4A008();
  }

  v3 = [-[NSDictionary valueForKey:](a2 valueForKey:{@"kContextInfoIsSoftware", "BOOLValue"}];
  return (v3 ^ 1) & byte_8C9F0;
}

void sub_9314(id a1)
{
  v1 = MTLCreateSystemDefaultDevice();
  if (v1)
  {
    byte_8C9F0 = 1;

    CFRelease(v1);
  }
}

void sub_E500(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.PortraitFilters"];
  if (!v1)
  {
    sub_4A1DC();
  }

  v2 = [(NSBundle *)v1 URLForResource:@"portrait_filters" withExtension:@"metallib"];
  if (!v2)
  {
    sub_4A1B0();
  }

  qword_8CB10 = [NSData dataWithContentsOfURL:v2];
  if (!qword_8CB10)
  {
    sub_4A184();
  }
}

int sub_E570(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C720);

  return [AssociatedObject intValue];
}

void sub_E5A0(NSDictionary *self, SEL a2, int a3)
{
  v4 = [NSNumber numberWithInt:*&a3];

  objc_setAssociatedObject(self, off_8C720, v4, &dword_0 + 1);
}

float sub_E5F0(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C728);

  [AssociatedObject floatValue];
  return result;
}

void sub_E620(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C728, v4, &dword_0 + 1);
}

float sub_E670(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C730);

  [AssociatedObject floatValue];
  return result;
}

void sub_E6A0(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C730, v4, &dword_0 + 1);
}

CGRect sub_E6F0(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C738);

  [AssociatedObject rectValue];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void sub_E720(NSDictionary *self, SEL a2, CGRect a3)
{
  v4 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  objc_setAssociatedObject(self, off_8C738, v4, &dword_0 + 1);
}

uint64_t sub_EFF0(void *a1, uint64_t a2, CGRect *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  CGRectGetWidth(*a3);
  Height = CGRectGetHeight(*a3);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v12 = [[NSMutableData alloc] initWithLength:AlignedBytesPerRow * Height];
  v13 = [v12 mutableBytes];
  Width = CGRectGetWidth(*a3);
  v15 = CGRectGetHeight(*a3);
  v16 = CGBitmapContextCreate(v13, Width, v15, 8uLL, AlignedBytesPerRow, 0, 7u);
  CGContextTranslateCTM(v16, -a3->origin.x, -a3->origin.y);
  CGContextSetRGBFillColor(v16, 1.0, 1.0, 1.0, 1.0);
  CGContextSetRGBStrokeColor(v16, 1.0, 1.0, 1.0, 1.0);
  CGContextSetLineWidth(v16, 1.0);
  CGContextAddPath(v16, [objc_msgSend(a1 "eyebrowRightTopLine")]);
  CGContextAddPath(v16, [objc_msgSend(a1 "eyebrowLeftTopLine")]);
  CGContextAddPath(v16, [a1 noseTipPerimeterPath]);
  CGContextFillPath(v16);
  CGContextAddPath(v16, [objc_msgSend(a1 "leftEyePair")]);
  CGContextAddPath(v16, [objc_msgSend(a1 "rightEyePair")]);
  CGContextAddPath(v16, [objc_msgSend(a1 "teethPair")]);
  CGContextAddPath(v16, [a1 headPerimeter]);
  CGContextStrokePath(v16);
  CFRelease(v16);
  v185 = [v12 bytes];
  v17 = [a1 faceData];
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  [v17 faceBounds];
  v191 = v21;
  v192 = v20;
  v193 = v23;
  v194 = v22;
  v24 = v19;
  v25 = v18;
  v26 = objc_alloc_init(Rgon);
  [v17 iOD];
  v28 = v27;
  [v17 rightEye];
  v31 = sub_33DA8(0, v29, v30, v18, v19);
  v33 = v32;
  [v17 leftEye];
  v189 = v18;
  v190 = v19;
  v36 = sub_33DA8(0, v34, v35, v189, v190);
  v38 = v37;
  [v17 mouthCenter];
  v41 = sub_33DA8(0, v39, v40, v189, v190);
  v188 = v31;
  v43 = sqrt(((v33 + v38) * 0.5 - v42) * ((v33 + v38) * 0.5 - v42) + ((v31 + v36) * 0.5 - v41) * ((v31 + v36) * 0.5 - v41));
  v44 = sqrt((v33 - v38) * (v33 - v38) + (v31 - v36) * (v31 - v36));
  v45 = v44;
  if (v45 >= 0.01)
  {
    v46 = (v31 - v36) / v45;
  }

  else
  {
    v46 = 0.0;
  }

  if (v45 >= 0.01)
  {
    v47 = (v33 - v38) / v45;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = (v28 * -0.25);
  v49 = v46 * v48;
  v50 = v47 * v48;
  [v17 faceOrientationIndex];
  v52 = v51;
  v53 = (v52 + 3.0) / 3.0;
  if (v53 >= 1.0)
  {
    v53 = 1.0;
  }

  v54 = v53;
  v55 = v54;
  v56 = v49 * v55;
  v57 = v50 * v55;
  v58 = v43 * 0.15;
  v59 = v58;
  v60 = v47 * v59;
  v61 = -(v46 * v59);
  v62 = (v43 * 0.5);
  v63 = v47 * v62;
  v64 = -(v46 * v62);
  v65 = v36 + v60 + v56;
  v66 = v38 + v61 + v57;
  v67 = v36 + v63 + v56;
  v68 = v38 + v64 + v57;
  v69 = (3.0 - v52) / 3.0;
  if (v69 >= 1.0)
  {
    v69 = 1.0;
  }

  v70 = v69;
  v71 = -v70;
  v72 = v49 * v71;
  v73 = v50 * v71;
  v74 = v60 + v72;
  v75 = v61 + v73;
  v76 = v63 + v72;
  v77 = v64 + v73;
  v78 = v188 + v74;
  v79 = v33 + v75;
  v80 = v188 + v76;
  v81 = v33 + v77;
  *&v77 = v65;
  *&v76 = v66;
  [(Rgon *)v26 AdjustForPointX:v77 Y:v76];
  *&v82 = v67;
  *&v83 = v68;
  [(Rgon *)v26 AdjustForPointX:v82 Y:v83];
  *&v84 = v78;
  *&v85 = v79;
  [(Rgon *)v26 AdjustForPointX:v84 Y:v85];
  *&v86 = v80;
  *&v87 = v81;
  [(Rgon *)v26 AdjustForPointX:v86 Y:v87];
  [(Rgon *)v26 CalculateVertices];
  [(Rgon *)v26 CalculateEdges];
  [v17 setSkinSampleRgon:v26];
  v204.f64[0] = sub_33DA8(0, v192, v191, v189, v190);
  *&v204.f64[1] = v88;
  v205.f64[0] = sub_33DA8(0, v192 + v194, v191 + v193, v189, v190);
  v205.f64[1] = v89;
  sub_33EFC(v204.f64);
  v200 = v204;
  v201 = v205;
  v90.f64[0] = v194;
  v90.f64[1] = v193;
  v204 = vmlaq_f64(v204, xmmword_54C00, v90);
  v195 = v90;
  v205 = vmlaq_f64(v205, xmmword_54C10, v90);
  sub_33F48(&v204, v25, v24);
  v200 = vmlaq_f64(v200, xmmword_54C20, v195);
  v201 = vmlaq_f64(v201, xmmword_54C30, v195);
  sub_33F48(&v200, v25, v24);
  [v17 setAdjustmentRect:{*&v204, v205.f64[0] - v204.f64[0], v205.f64[1] - v204.f64[1]}];
  [v17 setHeadRect:{*&v200, v201.f64[0] - v200.f64[0], v201.f64[1] - v200.f64[1]}];
  v91 = [v17 skinSeedPoints];
  [v17 iOD];
  v93 = v92;
  [v17 betweenTheEyes];
  v94 = v93 * 0.3;
  v96 = v95 + 0.0;
  v98 = v97 + v94;
  v99 = &v91->f64[1];
  v100 = 4;
  do
  {
    *(v99 - 1) = v96;
    *v99 = v98;
    [v17 iOD];
    *&v101 = v101 * 0.03;
    v102 = *&v101;
    v96 = v96 - v47 * v102;
    v98 = v98 + v46 * v102;
    v99 += 2;
    --v100;
  }

  while (v100);
  [v17 setSkinSeedPointCount:4];
  [objc_msgSend(v17 "skinSampleRgon")];
  v103 = 0;
  v104 = v91 + 4;
  do
  {
    v106 = *(&v211 + v103);
    v105 = *(&v211 + v103 + 16);
    v104[2] = vcvtq_f64_f32(*v105.f32);
    v104[3] = vcvt_hight_f64_f32(v105);
    *v104 = vcvtq_f64_f32(*v106.f32);
    v104[1] = vcvt_hight_f64_f32(v106);
    v104 += 4;
    v103 += 32;
  }

  while (v103 != 256);
  [v17 setSkinSeedPointCount:36];
  x = a3->origin.x;
  y = a3->origin.y;
  v109 = a3->size.width;
  v110 = a3->size.height;
  [objc_msgSend(objc_msgSend(a1 "faceData")];
  v261 = NSIntegralRectWithOptions(v246, 0xF00uLL);
  v247.origin.x = x;
  v247.origin.y = y;
  v247.size.width = v109;
  v247.size.height = v110;
  v248 = CGRectIntersection(v247, v261);
  v111 = v248.origin.x;
  v112 = v248.origin.y;
  v113 = v248.size.width;
  v114 = v248.size.height;
  v115 = [objc_msgSend(a1 "faceData")];
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v249.origin.x = v111;
  v249.origin.y = v112;
  v249.size.width = v113;
  v249.size.height = v114;
  MinY = CGRectGetMinY(v249);
  v250.origin.x = v111;
  v250.origin.y = v112;
  v250.size.width = v113;
  v250.size.height = v114;
  v117 = MinY;
  if (MinY >= CGRectGetMaxY(v250))
  {
    goto LABEL_38;
  }

  v118 = 0;
  do
  {
    v251.origin.x = v111;
    v251.origin.y = v112;
    v251.size.width = v113;
    v251.size.height = v114;
    MinX = CGRectGetMinX(v251);
    v252.origin.x = v111;
    v252.origin.y = v112;
    v252.size.width = v113;
    v252.size.height = v114;
    MaxX = CGRectGetMaxX(v252);
    for (i = MinX; i < MaxX; ++i)
    {
      *&MaxX = i;
      *&v121 = v117;
      if ([v115 containsPointX:MaxX Y:v121])
      {
        v244.x = i;
        v244.y = v117;
        if (CGRectContainsPoint(*a3, v244))
        {
          v123 = CGRectGetMinX(*a3);
          MaxY = CGRectGetMaxY(*a3);
          v125 = (i - v123);
          v126 = (MaxY - v117);
          v127 = v126 >= a3->size.height || v125 >= a3->size.width;
          v128 = (a4 + v126 * a5 + 4 * v125);
          if (v127)
          {
            v128 = 0;
          }

          v129 = v128[1] + v128[2] + *v128;
          if ((v129 - 6) <= 0x2F3)
          {
            *(&v211 + ((10923 * v129) >> 16)) = *(&v211 + ((10923 * v129) >> 16)) + 1.0;
          }

          ++v118;
        }
      }

      v253.origin.x = v111;
      v253.origin.y = v112;
      v253.size.width = v113;
      v253.size.height = v114;
      MaxX = CGRectGetMaxX(v253);
    }

    v254.origin.x = v111;
    v254.origin.y = v112;
    v254.size.width = v113;
    v254.size.height = v114;
    v130 = CGRectGetMaxY(v254);
    ++v117;
  }

  while (v117 < v130);
  if (v118 < 1)
  {
LABEL_38:
    v133 = 0;
  }

  else
  {
    v131 = 0;
    *&v130 = v118;
    v132 = vdupq_lane_s32(*&v130, 0);
    do
    {
      *(&v211 + v131) = vdivq_f32(*(&v211 + v131), v132);
      v131 += 16;
    }

    while (v131 != 512);
    v133 = 0;
    v134 = 0.0;
    v135 = &v211;
    do
    {
      v134 = v134 + *v135;
      if (v134 > 0.02)
      {
        break;
      }

      v133 += 6;
      ++v135;
    }

    while (v133 != 768);
  }

  v136 = objc_alloc_init(RgonStack);
  [(RgonStack *)v136 setBinSize:20.0];
  [(RgonStack *)v136 setZDarkThr:v133];
  v255.origin.x = v111;
  v255.origin.y = v112;
  v255.size.width = v113;
  v255.size.height = v114;
  v137 = CGRectGetMinY(v255);
  v256.origin.x = v111;
  v256.origin.y = v112;
  v256.size.width = v113;
  v256.size.height = v114;
  v138 = v137;
  if (v137 < CGRectGetMaxY(v256))
  {
    do
    {
      v257.origin.x = v111;
      v257.origin.y = v112;
      v257.size.width = v113;
      v257.size.height = v114;
      v139 = CGRectGetMinX(v257);
      v258.origin.x = v111;
      v258.origin.y = v112;
      v258.size.width = v113;
      v258.size.height = v114;
      v140 = CGRectGetMaxX(v258);
      for (j = v139; j < v140; ++j)
      {
        *&v140 = j;
        *&v141 = v138;
        if ([v115 containsPointX:v140 Y:v141])
        {
          v245.x = j;
          v245.y = v138;
          if (CGRectContainsPoint(*a3, v245))
          {
            v143 = CGRectGetMinX(*a3);
            v144 = CGRectGetMaxY(*a3);
            v145 = (j - v143);
            v146 = (v144 - v138);
            v147 = v146 >= a3->size.height || v145 >= a3->size.width;
            v148 = a4 + v146 * a5 + 4 * v145;
            v149 = v147 ? 0 : v148;
            v150 = v149[2];
            v151 = v149[1];
            v152 = *v149;
            if ((v151 + v150 + v152) > v133)
            {
              [(RgonStack *)v136 AdjustForPointX:(((v151 * -0.33126) + (v150 * -0.16874)) + (v152 * 0.5)) Y:(((v151 * -0.41869) + (v150 * 0.5)) + (v152 * -0.081312)) Z:(((v151 * 0.587) + (v150 * 0.299)) + (v152 * 0.114))];
            }
          }
        }

        v259.origin.x = v111;
        v259.origin.y = v112;
        v259.size.width = v113;
        v259.size.height = v114;
        v140 = CGRectGetMaxX(v259);
      }

      v260.origin.x = v111;
      v260.origin.y = v112;
      v260.size.width = v113;
      v260.size.height = v114;
      ++v138;
    }

    while (v138 < CGRectGetMaxY(v260));
  }

  [(RgonStack *)v136 CalculateVertices];
  [(RgonStack *)v136 CalculateEdges];
  v208 = -16776961;
  v207 = -1;
  v153 = [objc_msgSend(a1 "faceData")];
  v212 = 0u;
  v213 = 0u;
  v211 = 0u;
  if (v153)
  {
    v154 = 0;
    v155 = 16 * v153;
    v156 = 0.0;
    v157 = 0.0;
    do
    {
      v158 = v157;
      v159 = ([objc_msgSend(a1 "faceData")] + v154);
      v160 = *v159;
      v157 = v159[1];
      if (v156 != *v159 || v158 != v157)
      {
        v162 = [a1 headPerimeter];
        v243.x = v160;
        v243.y = v157;
        if (CGPathContainsPoint(v162, 0, v243, 1))
        {
          v204 = 0uLL;
          v163 = CGRectGetMinX(*a3);
          v164 = CGRectGetMaxY(*a3);
          v204.f64[0] = v160 - v163;
          v204.f64[1] = v164 - v157;
          sub_102E4(&v211, &v204);
        }
      }

      v154 += 16;
      v156 = v160;
    }

    while (v155 != v154);
  }

  v209[0] = @"skinRgonStack";
  v209[1] = @"skinColorToleranceDark";
  v210[0] = v136;
  v210[1] = &off_7AA30;
  v209[2] = @"skinColorToleranceLight";
  v209[3] = @"skinColorToleranceMid";
  v210[2] = &off_7AA40;
  v210[3] = &off_7AA50;
  sub_1001C(&v211, a3, a4, a5, v185, AlignedBytesPerRow, a6, a7, &v208, &v207, 0, [NSDictionary dictionaryWithObjects:v210 forKeys:v209 count:4]);
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  sub_10C18(&v211, &v204);
  sub_10EF8(&v204);
  v165 = 0;
  v203 = -16711936;
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  do
  {
    v166 = [objc_msgSend(a1 "faceData")];
    v167 = *&v166[v165];
    v168 = *&v166[v165 + 8];
    v200 = 0uLL;
    v169 = CGRectGetMinX(*a3);
    v170 = CGRectGetMaxY(*a3);
    v200.f64[0] = v167 - v169;
    v200.f64[1] = v170 - v168;
    sub_102E4(&v204, &v200);
    v165 += 16;
  }

  while (v165 != 112);
  sub_1001C(&v204, a3, a4, a5, v185, AlignedBytesPerRow, a6, a7, &v203, &v207, 1, &off_7C410);
  v201 = 0u;
  v202 = 0u;
  v200 = 0u;
  sub_10C18(&v204, &v200);
  sub_10EF8(&v200);
  v171 = 0;
  v199 = -65536;
  v201 = 0u;
  v202 = 0u;
  v200 = 0u;
  do
  {
    v172 = [objc_msgSend(a1 "faceData")];
    v173 = *&v172[v171];
    v174 = *&v172[v171 + 8];
    v198 = 0uLL;
    v175 = CGRectGetMinX(*a3);
    v176 = CGRectGetMaxY(*a3);
    v198.n128_f64[0] = v173 - v175;
    v198.n128_f64[1] = v176 - v174;
    *&v177 = sub_102E4(&v200, &v198).n128_u64[0];
    v171 += 16;
  }

  while (v171 != 240);
  for (k = 0; k != 240; k += 16)
  {
    v179 = [objc_msgSend(a1 faceData];
    v180 = *&v179[k];
    v181 = *&v179[k + 8];
    v198 = 0uLL;
    v182 = CGRectGetMinX(*a3);
    v183 = CGRectGetMaxY(*a3);
    v198.n128_f64[0] = v180 - v182;
    v198.n128_f64[1] = v183 - v181;
    *&v177 = sub_102E4(&v200, &v198).n128_u64[0];
  }

  sub_1001C(&v200, a3, a4, a5, v185, AlignedBytesPerRow, a6, a7, &v199, &v207, 2, 0);
  memset(&v198, 0, 48);
  sub_10C18(&v200, &v198);
  sub_10EF8(&v198);

  sub_10EF8(&v200);
  sub_10EF8(&v204);
  return sub_10EF8(&v211);
}

void sub_FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_10EF8(&a45);
  sub_10EF8(&a61);
  _Unwind_Resume(a1);
}

void sub_1001C(void *a1, CGRect *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, int *a10, int a11, void *a12)
{
  if (a1[5])
  {
    Width = CGRectGetWidth(*a2);
    Height = CGRectGetHeight(*a2);
    v41 = a3;
    v42 = a4;
    v43 = a5;
    v44 = a6;
    v45 = *a10;
    v46 = a11;
    v47 = [a12 objectForKeyedSubscript:@"skinRgonStack"];
    [objc_msgSend(a12 objectForKeyedSubscript:{@"skinColorToleranceDark", "floatValue"}];
    v48 = v20;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"skinColorToleranceLight", "floatValue"}];
    v49 = v21;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"skinColorToleranceMid", "floatValue"}];
    v50 = v22;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"eps2", "floatValue"}];
    v51 = v23;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"c1", "floatValue"}];
    v52 = v24;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"c2", "floatValue"}];
    v53 = v25;
    [objc_msgSend(a12 objectForKeyedSubscript:{@"c3", "floatValue"}];
    v54 = v26;
    v27 = sub_29EFC(Width, Height);
    v28 = 1;
    do
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1[5] - 1;
      v31 = (*(a1[1] + (((v30 + a1[4]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + *(a1 + 32)));
      v32 = *v31;
      v33 = v31[1];
      a1[5] = v30;
      sub_10BA8(a1, 1);
      v34 = vcvtmd_s64_f64(v32);
      LODWORD(a6) = vcvtmd_s64_f64(v33);
      if (v28)
      {
        sub_23670(a3, v27, v34, a6, &Width, sub_109C4);
      }

      else
      {
        sub_2A154(v27, v34, a6, 1);
        sub_23C08(a3, v27, v34, a6, &Width, sub_109C4);
      }

      objc_autoreleasePoolPop(v29);
      v28 = 0;
    }

    while (a1[5]);
    v35 = Height;
    if (Height)
    {
      v36 = 0;
      v37 = Width;
      do
      {
        if (v37)
        {
          for (i = 0; i != v37; ++i)
          {
            if ((*(*v27 + *(v27 + 4) * v36 + (i >> 3)) >> (i & 7)))
            {
              *(a7 + 4 * i) = *a9;
            }
          }
        }

        a7 += a8;
        ++v36;
      }

      while (v36 != v35);
    }

    sub_2A010(v27);
  }
}

__n128 sub_102E4(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10370(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *sub_10370(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1097C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10544(a1, &v10);
}

void sub_104F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10544(void *result, void *a2)
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

      sub_1097C(result, v11);
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

const void **sub_1064C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1097C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_10758(void *result, void *a2)
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

      sub_1097C(result[4], v11);
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

const void **sub_10860(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1097C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1097C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1096C();
}

BOOL sub_109C4(uint64_t a1, float a2, double a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a1 + 8) > a6 && *a1 > a5;
  v7 = (*(a1 + 16) + *(a1 + 24) * a6 + 4 * a5);
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if (!*(v8 + *(a1 + 40) * a6 + a5) && v7 != 0)
    {
      v12 = v7[2];
      v22[0] = v7[2];
      v13 = v7[1];
      v22[1] = v7[1];
      v14 = *v7;
      v22[2] = *v7;
      v15 = *(a1 + 52);
      if (v15 == 2)
      {
        v24 = 0.0;
        v23 = 0;
        sub_343F4(v22, &v23, a2, *&a3);
        return v23.f32[0] < 100.0;
      }

      if (v15 == 1)
      {
        v24 = 0.0;
        v23 = 0;
        sub_345B0(v22, &v23, 1.0, a3);
        return (((*(a1 + 84) * v23.f32[1]) + (*(a1 + 80) * v23.f32[0])) + (*(a1 + 88) * v24)) > *(a1 + 76);
      }

      if (!v15 && (v13 + v12 + v14) > [*(a1 + 56) zDarkThr])
      {
        *&v18 = ((v13 * 0.587) + (v12 * 0.299)) + (v14 * 0.114);
        *&v16 = ((v13 * -0.33126) + (v12 * -0.16874)) + (v14 * 0.5);
        *&v17 = ((v13 * -0.41869) + (v12 * 0.5)) + (v14 * -0.081312);
        LODWORD(v19) = *(a1 + 64);
        LODWORD(v20) = *(a1 + 68);
        LODWORD(v21) = *(a1 + 72);
        return [*(a1 + 56) containsPointPlanarConditionalX2:0 Y:v16 Z:v17 epsilonDark:v18 epsilonLight:v19 epsilonMid:v20 shouldPrint:v21] != 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10BA8(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_10C18(void **a1, uint64_t a2)
{
  sub_10C68(a1);
  sub_10CE4(a1);
  result = sub_10E90(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10C68(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 256;
  }

  a1[4] = v6;
}

void sub_10CE4(void **a1)
{
  if (a1[5])
  {
    sub_10D64(a1, 0);
    sub_10BA8(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_10DC4(a1);
}

uint64_t sub_10D64(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_10DC4(void **a1)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3] - *a1;
  if (v5 > (v2 - v4))
  {
    if (v2 != v4)
    {
      sub_1097C(a1, (v2 - v4) >> 3);
    }

    v7 = 0;
    if (v5 >> 3)
    {
      v8 = a1[1];
      v9 = a1[2] - v8;
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *v8++;
          *v10++ = v11;
          v9 -= 8;
        }

        while (v9);
        v8 = a1[1];
        v12 = a1[2];
        v3 = *a1;
      }

      else
      {
        v12 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v12 - v8);
      a1[3] = 0;
      v7 = v3;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_10E90(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_10DC4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t sub_10EF8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10FA4(a1);
}

uint64_t sub_10FA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_11020(uint64_t a1, int a2, int a3, int a4, int a5, float a6)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  v7 = a4 * a2 * a5;
  *(a1 + 16) = a4 * a2;
  *(a1 + 20) = v7;
  *(a1 + 24) = v7 * a3;
  result = malloc_type_malloc(v7 * a3, 0x4AC9CECFuLL);
  *a1 = result;
  return result;
}

void sub_11074(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
}

uint64_t sub_110A4(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, float a8)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a8;
  *(result + 16) = a7 / a6;
  *(result + 20) = a7;
  *(result + 24) = a7 * a4;
  return result;
}

float sub_110C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  *a2 = *a1 + v4 * a3 + v6 * a4 * v7;
  *(a2 + 8) = HIDWORD(a4) - a4;
  *(a2 + 12) = HIDWORD(a3) - a3;
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  *(a2 + 24) = v4 * (HIDWORD(a3) - a3);
  *(a2 + 28) = v6;
  *(a2 + 32) = v7;
  result = *(a1 + 36);
  *(a2 + 36) = result;
  return result;
}

BOOL sub_1111C(uint64_t a1, float a2, float a3)
{
  result = 0;
  if (a2 >= 0.0 && a3 >= 0.0)
  {
    return (*(a1 + 8) - 1) >= a2 && (*(a1 + 12) - 1) >= a3;
  }

  return result;
}

uint64_t sub_1116C(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

uint64_t sub_11254(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + 2 * v8 * v11 + 2 * v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

uint64_t sub_1133C(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = rintf((v4 - v6) * 64.0);
  v10 = rintf((v3 - v8) * 64.0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = v13[v11];
  LODWORD(v11) = v13[v12 + v11];
  LODWORD(v13) = *v13 + (((v13[v12] - *v13) * v9 + 32) >> 6);
  return ((v14 - v13 + (((v11 - v14) * v9 + 32) >> 6)) * v10 + (v13 << 6));
}

uint64_t sub_1143C(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = rintf((v4 - v6) * 64.0);
  v10 = rintf((v3 - v8) * 64.0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + 2 * v8 * v11 + 2 * v12 * v6);
  v14 = v13[v11];
  LODWORD(v11) = v13[v12 + v11];
  LODWORD(v13) = *v13 + (((v13[v12] - *v13) * v9 + 32) >> 6);
  return ((v14 - v13 + (((v11 - v14) * v9 + 32) >> 6)) * v10 + (v13 << 6));
}

double sub_1153C(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + v8 * v11 + v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

double sub_11678(uint64_t a1, float a2, float a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
    if ((*(a1 + 8) - 1) < a2)
    {
      v4 = (*(a1 + 8) - 1);
    }
  }

  v5 = *(a1 + 12);
  if (a3 >= 0.0)
  {
    v3 = a3;
    if ((v5 - 1) < a3)
    {
      v3 = (v5 - 1);
    }
  }

  v6 = vcvtms_s32_f32(v4);
  v7 = vcvtms_s32_f32(v3);
  if (*(a1 + 8) - 2 < v6)
  {
    v6 = *(a1 + 8) - 2;
  }

  v8 = v5 - 2;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = v4 - v6;
  v10 = v3 - v8;
  v11 = *(a1 + 16);
  v12 = *(a1 + 28);
  v13 = (*a1 + 2 * v8 * v11 + 2 * v12 * v6);
  v14 = *v13 + ((v13[v12] - *v13) * v9);
  return rintf(v14 + (((v13[v11] + ((v13[v12 + v11] - v13[v11]) * v9)) - v14) * v10));
}

int8x8_t sub_117B4(uint64_t a1, _DWORD *a2, float a3, float a4, double a5, double a6, double a7, uint8x8_t a8, double a9, uint8x8_t a10)
{
  v10 = 0;
  v11 = 0;
  if (a3 >= 0.0)
  {
    *v11.i32 = a3;
    if ((*(a1 + 8) - 1) < a3)
    {
      *v11.i32 = (*(a1 + 8) - 1);
    }
  }

  v12 = *(a1 + 12);
  if (a4 >= 0.0)
  {
    *v10.i32 = a4;
    if ((v12 - 1) < a4)
    {
      *v10.i32 = (v12 - 1);
    }
  }

  v13 = vcvtms_s32_f32(*v11.i32);
  v14 = vcvtms_s32_f32(*v10.i32);
  if (*(a1 + 8) - 2 < v13)
  {
    v13 = *(a1 + 8) - 2;
  }

  v15 = v12 - 2;
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v16 = *v11.i32 - v13;
  v17 = *v10.i32 - v15;
  v18 = *(a1 + 16);
  v19 = *(a1 + 28);
  v20 = (*a1 + v15 * v18 + v19 * v13);
  v10.i32[0] = *v20;
  v11.i32[0] = *(v20 + v19);
  a8.i32[0] = *(v20 + v18);
  a10.i32[0] = *(v20 + v19 + v18);
  v21 = vmlaq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v10))), vcvtq_f32_s32(vmovl_s16(*&vsubl_u8(v11, v10))), v16);
  v22 = vmlaq_n_f32(v21, vsubq_f32(vmlaq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a8))), vcvtq_f32_s32(vmovl_s16(*&vsubl_u8(a10, a8))), v16), v21), v17);
  v23 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.i8)));
  v24 = vmovn_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL)))));
  *v23.i8 = vmovn_s64(v23);
  v23.i16[1] = v23.i16[2];
  v23.i16[2] = v24.i16[0];
  v23.i16[3] = v24.i16[2];
  result = vmovn_s16(v23);
  *a2 = result.i32[0];
  return result;
}

float sub_118EC(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, float a6, float a7)
{
  v7 = 0.0;
  v8 = 0.0;
  if (a6 >= 0.0)
  {
    v8 = a6;
    if ((*(a1 + 8) - 1) < a6)
    {
      v8 = (*(a1 + 8) - 1);
    }
  }

  v9 = *(a1 + 12);
  if (a7 >= 0.0)
  {
    v7 = a7;
    if ((v9 - 1) < a7)
    {
      v7 = (v9 - 1);
    }
  }

  v10 = vcvtms_s32_f32(v8);
  v11 = vcvtms_s32_f32(v7);
  if (*(a1 + 8) - 2 < v10)
  {
    v10 = *(a1 + 8) - 2;
  }

  v12 = v9 - 2;
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = v8 - v10;
  v14 = v7 - v12;
  v15 = *(a1 + 16);
  v16 = *(a1 + 28);
  v17 = (*a1 + v12 * v15 + v16 * v10);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[v16];
  v23 = v17[v16 + 1];
  v24 = v17[v16 + 2];
  v25 = v17[v16 + 3];
  v26 = v17[v15];
  v27 = v17[v15 + 1];
  v28 = v17[v15 + 2];
  v29 = v17[v15 + 3];
  v30 = &v17[v16 + v15];
  LODWORD(v15) = *v30;
  LODWORD(v16) = v30[1];
  v31 = v30[2];
  LODWORD(v30) = v30[3];
  v32 = v18 + ((v22 - v18) * v13);
  *a2 = rintf(v32 + (((v26 + ((v15 - v26) * v13)) - v32) * v14));
  v33 = v19 + ((v23 - v19) * v13);
  *a3 = rintf(v33 + (((v27 + ((v16 - v27) * v13)) - v33) * v14));
  v34 = v20 + ((v24 - v20) * v13);
  *a4 = rintf(v34 + (((v28 + ((v31 - v28) * v13)) - v34) * v14));
  v35 = v21 + ((v25 - v21) * v13);
  result = rintf(v35 + (((v29 + ((v30 - v29) * v13)) - v35) * v14));
  *a5 = result;
  return result;
}

int8x8_t sub_11AB8(uint64_t a1, _DWORD *a2, float a3, float a4)
{
  v4 = 0.0;
  v5 = 0.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
    if ((*(a1 + 8) - 1) < a3)
    {
      v5 = (*(a1 + 8) - 1);
    }
  }

  v6 = *(a1 + 12);
  if (a4 >= 0.0)
  {
    v4 = a4;
    if ((v6 - 1) < a4)
    {
      v4 = (v6 - 1);
    }
  }

  v7 = vcvtms_s32_f32(v5);
  v8 = vcvtms_s32_f32(v4);
  if (*(a1 + 8) - 2 < v7)
  {
    v7 = *(a1 + 8) - 2;
  }

  v9 = v6 - 2;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v10 = v5 - v7;
  v11 = v4 - v9;
  v12 = *(a1 + 16);
  v13 = *(a1 + 28);
  v14 = (*a1 + 2 * v9 * v12 + 2 * v13 * v7);
  v15 = vmlaq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14)), vcvtq_f32_s32(vsubl_u16(*(v14 + 2 * v13), *v14)), v10);
  v16 = vmlaq_n_f32(vcvtq_f32_u32(vmovl_u16(*(v14 + 2 * v12))), vcvtq_f32_s32(vsubl_u16(*(v14 + 2 * v13 + 2 * v12), *(v14 + 2 * v12))), v10);
  v17 = vmlaq_n_f32(v15, vsubq_f32(v16, v15), v11);
  v18 = vshrn_n_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v17, v17, 8uLL)))), 8uLL);
  v19 = vshrn_n_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v17.i8))), 8uLL);
  v16.i16[0] = v18.i16[2];
  v16.i16[1] = v19.i16[0];
  v16.i16[2] = v19.i16[2];
  v16.i16[3] = v18.i16[0];
  result = vmovn_s16(v16);
  *a2 = result.i32[0];
  return result;
}

float sub_11BF0(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, float a5, float a6)
{
  v6 = 0.0;
  v7 = 0.0;
  if (a5 >= 0.0)
  {
    v7 = a5;
    if ((*(a1 + 8) - 1) < a5)
    {
      v7 = (*(a1 + 8) - 1);
    }
  }

  v8 = *(a1 + 12);
  if (a6 >= 0.0)
  {
    v6 = a6;
    if ((v8 - 1) < a6)
    {
      v6 = (v8 - 1);
    }
  }

  v9 = vcvtms_s32_f32(v7);
  v10 = vcvtms_s32_f32(v6);
  if (*(a1 + 8) - 2 < v9)
  {
    v9 = *(a1 + 8) - 2;
  }

  v11 = v8 - 2;
  if (v11 >= v10)
  {
    v11 = v10;
  }

  v12 = v7 - v9;
  v13 = v6 - v11;
  v14 = *(a1 + 16);
  v15 = *(a1 + 28);
  v16 = (*a1 + 2 * v11 * v14 + 2 * v15 * v9);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[3];
  v20 = &v16[v15];
  v21 = *v20;
  v22 = v20[1];
  LODWORD(v20) = v20[3];
  v23 = &v16[v14];
  v24 = *v23;
  v25 = v23[1];
  LODWORD(v23) = v23[3];
  v26 = &v16[v15 + v14];
  LODWORD(v14) = *v26;
  LODWORD(v15) = v26[1];
  LODWORD(v26) = v26[3];
  v27 = v17 + ((v21 - v17) * v12);
  *a2 = rintf(v27 + (((v24 + ((v14 - v24) * v12)) - v27) * v13));
  v28 = v18 + ((v22 - v18) * v12);
  *a3 = rintf(v28 + (((v25 + ((v15 - v25) * v12)) - v28) * v13));
  v29 = v19 + ((v20 - v19) * v12);
  result = rintf(v29 + (((v23 + ((v26 - v23) * v12)) - v29) * v13));
  *a4 = result;
  return result;
}

int *sub_11D70(int *result, char **a2, uint64_t a3, uint64_t a4)
{
  if (result[8] == *(a2 + 8) && (v4 = result, result[7] == *(a2 + 7)))
  {
    v5 = HIDWORD(a3) - a3;
    if (SHIDWORD(a3) > a3)
    {
      v6 = a4;
      v7 = HIDWORD(a4) - a4;
      v8 = *a2;
      v9 = result[5];
      v10 = *result + v9 * a3;
      v11 = *(a2 + 5);
      do
      {
        v12 = v4[8] * v4[7];
        result = memmove(v8, (v10 + v12 * v6), v12 * v7);
        v10 += v9;
        v8 += v11;
        --v5;
      }

      while (v5);
    }
  }

  else
  {

    return puts("copySliceOfBitmapToBitmap: bytes per sample or samples per pixel differs!");
  }

  return result;
}

int *sub_11E54(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result[8] == *(a2 + 32) && (v5 = result, result[7] == *(a2 + 28)))
  {
    v6 = HIDWORD(a3) - a3;
    if (SHIDWORD(a3) > a3)
    {
      v7 = a4;
      v8 = HIDWORD(a4) - a4;
      v9 = *(a2 + 20);
      v10 = *a2 + v9 * a3;
      v11 = *result;
      v12 = result[5];
      do
      {
        result = memmove((v10 + *(a2 + 28) * v7 * *(a2 + 32)), v11, v5[7] * v8 * v5[8]);
        v11 += v12;
        v10 += v9;
        --v6;
      }

      while (v6);
    }
  }

  else
  {

    return puts("copyBitmapToSliceOfBitmap: bytes per sample or samples per pixel differs!");
  }

  return result;
}

unint64_t sub_11F48(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int8x8_t a7)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (*(a1 + 32) * *(a1 + 28));
  v11 = *a2;
  v12 = *(a1 + 20);
  v13 = *(a1 + 8);
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v15 = 0;
  v16 = *a1 + 3;
  v17 = 0;
  do
  {
    if (v13 >= 1)
    {
      if (v10 > 8 || ((1 << v10) & 0x116) == 0)
      {
        puts("bitmapToBitmapDifferenceBitmapRect: source pixel configuration illegal");
        return 0;
      }

      v18 = 0;
      v19 = v16;
      v20 = v11;
      v21 = v15;
      do
      {
        v22 = *(v19 - 3);
        switch(v10)
        {
          case 4:
            if (v22 != *v20 || (*(v19 - 2) == v20[1] ? (v24 = *(v19 - 1) == v20[2]) : (v24 = 0), v24 ? (v25 = *v19 == v20[3]) : (v25 = 0), !v25))
            {
LABEL_35:
              v15 = __PAIR64__(v18, v9);
              if (v8)
              {
                a7 = vcgt_s32(v17, __PAIR64__(v18, v9));
                v17 = vmin_s32(__PAIR64__(v18, v9), v17);
                v15 = vbsl_s8(a7, v21, vmax_s32(__PAIR64__(v18, v9), v21));
                v8 = 1;
              }

              else
              {
                v8 = 1;
                v17 = __PAIR64__(v18, v9);
              }

              goto LABEL_38;
            }

            break;
          case 2:
            if (v22 != *v20 || *(v19 - 2) != v20[1])
            {
              goto LABEL_35;
            }

            break;
          case 1:
            if (v22 != *v20)
            {
              goto LABEL_35;
            }

            break;
          default:
            if (v22 != *v20)
            {
              goto LABEL_35;
            }

            v15.i32[0] = *(v20 + 1);
            a7.i32[0] = *(v19 - 2);
            a7 = (vmovl_u8(a7).u64[0] & 0xFF00FF00FF00FFLL);
            if ((vmaxv_u16(vmvn_s8(vceq_s16(a7, (vmovl_u8(v15).u64[0] & 0xFF00FF00FF00FFLL)))) & 1) != 0 || v19[2] != v20[5] || v19[3] != v20[6] || v19[4] != v20[7])
            {
              goto LABEL_35;
            }

            break;
        }

        v15 = v21;
LABEL_38:
        ++v18;
        v20 += *(a2 + 32) * *(a2 + 28);
        v19 += v10;
        v21 = v15;
      }

      while (v14 != v18);
    }

    ++v9;
    v11 += *(a2 + 20);
    v16 += v12;
  }

  while (v9 != v7);
  if (v8)
  {
    v26.i64[0] = v17.u32[0];
    v26.i64[1] = v17.u32[1];
    return vorrq_s8(vshll_n_s32(vadd_s32(v15, 0x100000001), 0x20uLL), v26).u64[0];
  }

  return 0;
}

uint64_t sub_121AC(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 28);
  puts(a2);
  if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    v6 = *a1;
    do
    {
      if (*(a1 + 8) >= 1)
      {
        v7 = 0;
        v8 = v6;
        do
        {
          printf("%3d ", *v8);
          ++v7;
          v8 += v4;
        }

        while (v7 < *(a1 + 8));
      }

      putchar(10);
      ++v5;
      v6 += v3;
    }

    while (v5 < *(a1 + 12));
  }

  return putchar(10);
}

uint64_t sub_122C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) >= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

uint64_t sub_12304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) <= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

unint64_t sub_123B8(uint64_t a1, int a2, int a3)
{
  if ((a3 + a2))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return (a2 - a3) & 0xFFFFFFFE | ((v3 + a3 + a2) << 32);
}

unint64_t sub_123F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a1);
  if ((*(a3 + 12) & 0xFFFFFFFE) < SHIDWORD(a1))
  {
    LODWORD(v3) = *(a3 + 12) & 0xFFFFFFFE;
  }

  return a1 & ~(a1 >> 31) | ((v3 - ((v3 - (a1 & ~(a1 >> 31))) & 1)) << 32);
}

uint64_t sub_1246C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1;
  if ((a4 & 0xFFFFFFFE) >= SHIDWORD(a1))
  {
    v5 = HIDWORD(a1);
  }

  else
  {
    v5 = a4 & 0xFFFFFFFE;
  }

  if (a1 < 0)
  {
    v4 = 0;
  }

  return v4 | (v5 << 32);
}

char *sub_124B4(char **a1, int a2)
{
  if (*(a1 + 2) < a2)
  {
    return (&dword_0 + 1);
  }

  v4 = *(a1 + 3);
  if (v4 < a2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 7);
  if (v4 <= v5)
  {
    v4 = *(a1 + 4);
  }

  result = malloc_type_calloc(v4, 1uLL, 0x8288E16EuLL);
  if (result)
  {
    v7 = a2;
    v8 = a2 / -2;
    v9 = a2 - a2 / 2;
    v10 = *(a1 + 3);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = *a1;
      v58 = result;
      v61 = v6 * (v8 - 1);
      v14 = a2 / 2;
      if (1 - v8 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 1 - v8;
      }

      do
      {
        v60 = v12;
        memmove(result, v13, v5);
        if (v6 < 1)
        {
          result = v58;
          v7 = a2;
        }

        else
        {
          v16 = 0;
          result = v58;
          v7 = a2;
          do
          {
            v17 = &v58[v16];
            v18 = &v13[v16];
            if (a2 < -1)
            {
              v24 = 0;
            }

            else
            {
              v19 = 0;
              v20 = a2 / -2;
              do
              {
                if (v19 <= v14)
                {
                  v21 = a2 / 2;
                }

                else
                {
                  v21 = v19;
                }

                if (v19 < v14)
                {
                  v22 = -v19;
                }

                else
                {
                  v22 = a2 / -2;
                }

                if (v22 >= v9)
                {
                  v11 = 0;
                }

                else
                {
                  v11 = 0;
                  v23 = v6 * (v21 + v20);
                  do
                  {
                    if (v11 <= v17[v23])
                    {
                      v11 = v17[v23];
                    }

                    ++v22;
                    v23 += v6;
                  }

                  while (v22 < v9);
                }

                ++v19;
                *v18 = v11;
                v17 += v6;
                v18 += v6;
                --v20;
              }

              while (v19 != v15);
              v24 = v15;
            }

            v25 = *(a1 + 2);
            v26 = v25 - v9;
            if (v24 < v25 - v9)
            {
              v27 = &v17[v61];
              v28 = &v17[v61 + v6 * a2];
              do
              {
                if (v11 <= *v27 || v11 <= *v28)
                {
                  v29 = &v27[v6];
                  if (&v27[v6] <= v28)
                  {
                    v11 = 0;
                    do
                    {
                      if (v11 <= *v29)
                      {
                        v11 = *v29;
                      }

                      v29 += v6;
                    }

                    while (v29 <= v28);
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                ++v24;
                v17 += v6;
                *v18 = v11;
                v27 += v6;
                v28 += v6;
                v18 += v6;
              }

              while (v24 < v26);
              goto LABEL_44;
            }

            v26 = v24;
            while (v26 < v25)
            {
              if (v26 + v9 <= v25)
              {
                v30 = a2 - a2 / 2;
              }

              else
              {
                v30 = v25 - v26;
              }

              if (v8 >= v30)
              {
                LOBYTE(v31) = 0;
              }

              else
              {
                v31 = 0;
                v32 = v6 * v8;
                v33 = a2 / -2;
                do
                {
                  if (v31 <= v17[v32])
                  {
                    v31 = v17[v32];
                  }

                  ++v33;
                  v32 += v6;
                }

                while (v33 < v30);
              }

              *v18 = v31;
              ++v26;
              v17 += v6;
              v18 += v6;
LABEL_44:
              v25 = *(a1 + 2);
            }

            ++v16;
          }

          while (v16 != v6);
        }

        v12 = v60 + 1;
        v13 += v5;
        v10 = *(a1 + 3);
      }

      while (v60 + 1 < v10);
    }

    if (*(a1 + 2) * v6 >= 1)
    {
      v34 = 0;
      v35 = *a1;
      v36 = 1 - v8;
      v37 = a2 / 2;
      if (1 - v8 <= 1)
      {
        v36 = 1;
      }

      do
      {
        if (v10 >= 1)
        {
          v38 = 0;
          v39 = v35;
          do
          {
            result[v38] = *v39;
            v39 += v5;
            v10 = *(a1 + 3);
            ++v38;
          }

          while (v38 < v10);
        }

        if (v7 < -1)
        {
          v48 = 0;
          v46 = 0;
          v43 = result;
          v42 = v35;
        }

        else
        {
          v40 = 0;
          v41 = a2 / -2;
          v42 = v35;
          v43 = result;
          do
          {
            if (v40 <= v37)
            {
              v44 = a2 / 2;
            }

            else
            {
              v44 = v40;
            }

            if (v40 < v37)
            {
              v45 = -v40;
            }

            else
            {
              v45 = a2 / -2;
            }

            if (v45 >= v9)
            {
              v46 = 0;
            }

            else
            {
              v46 = 0;
              v47 = v44 + v41;
              do
              {
                if (v46 <= v43[v47])
                {
                  v46 = v43[v47];
                }

                ++v47;
              }

              while (v47 < v9);
            }

            ++v40;
            *v42 = v46;
            ++v43;
            v42 += v5;
            --v41;
          }

          while (v40 != v36);
          v10 = *(a1 + 3);
          v48 = v36;
        }

        v49 = v10 - v9;
        if (v48 < v10 - v9)
        {
          v50 = &v43[v8 - 1];
          v51 = &v50[v7];
          do
          {
            if (v46 <= *v50 || v46 <= *v51)
            {
              v52 = (v50 + 1);
              if (v50 + 1 <= v51)
              {
                v46 = 0;
                do
                {
                  v54 = *v52++;
                  v53 = v54;
                  if (v46 <= v54)
                  {
                    v46 = v53;
                  }
                }

                while (v52 <= v51);
              }

              else
              {
                v46 = 0;
              }
            }

            ++v48;
            ++v43;
            *v42 = v46;
            ++v50;
            ++v51;
            v42 += v5;
          }

          while (v48 < v49);
          goto LABEL_98;
        }

        v49 = v48;
        while (v49 < v10)
        {
          if (v49 + v9 <= v10)
          {
            v55 = a2 - a2 / 2;
          }

          else
          {
            v55 = v10 - v49;
          }

          if (v8 >= v55)
          {
            LOBYTE(v56) = 0;
          }

          else
          {
            v56 = 0;
            v57 = v8;
            do
            {
              if (v56 <= v43[v57])
              {
                v56 = v43[v57];
              }

              ++v57;
            }

            while (v57 < v55);
          }

          *v42 = v56;
          ++v49;
          ++v43;
          v42 += v5;
LABEL_98:
          v10 = *(a1 + 3);
        }

        ++v34;
        ++v35;
      }

      while (v34 < *(a1 + 2) * v6);
    }

    free(result);
    return (&dword_0 + 1);
  }

  return result;
}

char *sub_12970(char **a1, int a2)
{
  if (*(a1 + 2) < a2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 3);
  if (v5 < a2)
  {
    return (&dword_0 + 1);
  }

  v6 = *(a1 + 4);
  v7 = *(a1 + 7);
  if (v5 <= v6)
  {
    v5 = *(a1 + 4);
  }

  result = malloc_type_malloc(v5, 0x4AC9CECFuLL);
  if (result)
  {
    v8 = result;
    v9 = a2 / -2;
    v10 = a2 - a2 / 2;
    v11 = *(a1 + 3);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *a1;
      v14 = -v9;
      do
      {
        memmove(v8, v13, v6);
        if (v7 >= 1)
        {
          v15 = 0;
          v16 = *(a1 + 2);
          do
          {
            if (v16 >= 1)
            {
              v17 = 0;
              v18 = &v13[v15];
              v19 = &v8[v15];
              v20 = v9;
              do
              {
                if (v17 <= v14)
                {
                  v21 = -v9;
                }

                else
                {
                  v21 = v17;
                }

                if (v17 < v14)
                {
                  v22 = -v17;
                }

                else
                {
                  v22 = v9;
                }

                if (v17 + v10 <= v16)
                {
                  v23 = v10;
                }

                else
                {
                  v23 = v16 - v17;
                }

                if (v22 >= v23)
                {
                  LOBYTE(v25) = -1;
                }

                else
                {
                  v24 = v7 * (v21 + v20);
                  v25 = 255;
                  do
                  {
                    if (v25 >= v19[v24])
                    {
                      v25 = v19[v24];
                    }

                    ++v22;
                    v24 += v7;
                  }

                  while (v22 < v23);
                }

                *v18 = v25;
                ++v17;
                v19 += v7;
                v18 += v7;
                v16 = *(a1 + 2);
                --v20;
              }

              while (v17 < v16);
            }

            ++v15;
          }

          while (v15 != v7);
        }

        ++v12;
        v13 += v6;
        v11 = *(a1 + 3);
      }

      while (v12 < v11);
    }

    if (*(a1 + 2) * v7 >= 1)
    {
      v26 = 0;
      v27 = *a1;
      v28 = -v9;
      do
      {
        if (v11 >= 1)
        {
          v29 = 0;
          v30 = v27;
          do
          {
            v8[v29] = *v30;
            v30 += v6;
            v11 = *(a1 + 3);
            ++v29;
          }

          while (v29 < v11);
          if (v11 >= 1)
          {
            v31 = 0;
            v32 = v9;
            v33 = v27;
            v34 = v8;
            do
            {
              if (v31 <= v28)
              {
                v35 = -v9;
              }

              else
              {
                v35 = v31;
              }

              if (v31 < v28)
              {
                v36 = -v31;
              }

              else
              {
                v36 = v9;
              }

              if (v31 + v10 <= v11)
              {
                v37 = v10;
              }

              else
              {
                v37 = v11 - v31;
              }

              if (v36 >= v37)
              {
                LOBYTE(v39) = -1;
              }

              else
              {
                v38 = v35 + v32;
                v39 = 255;
                do
                {
                  if (v39 >= v34[v38])
                  {
                    v39 = v34[v38];
                  }

                  ++v38;
                }

                while (v38 < v37);
              }

              *v33 = v39;
              ++v31;
              ++v34;
              v33 += v6;
              v11 = *(a1 + 3);
              --v32;
            }

            while (v31 < v11);
          }
        }

        ++v26;
        ++v27;
      }

      while (v26 < *(a1 + 2) * v7);
    }

    free(v8);
    return (&dword_0 + 1);
  }

  return result;
}

char *sub_12BE8(char **a1, int a2)
{
  if (*(a1 + 2) < a2)
  {
    return (&dword_0 + 1);
  }

  v4 = *(a1 + 3);
  if (v4 < a2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 7);
  if (v4 <= v5)
  {
    v4 = *(a1 + 4);
  }

  result = malloc_type_malloc(2 * v4, 0x4AC9CECFuLL);
  if (result)
  {
    v8 = result;
    v9 = a2 - a2 / 2;
    v10 = *(a1 + 3);
    v11 = a1;
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = *a1;
      v14 = a2 / 2;
      v15 = 2 * v6;
      do
      {
        v44 = v12;
        v16 = v11;
        memmove(v8, v13, 2 * v5);
        v11 = v16;
        if (v6 >= 1)
        {
          v17 = 0;
          v18 = *(v16 + 2);
          v19 = v8;
          do
          {
            if (v18 >= 1)
            {
              v20 = 0;
              v21 = a2 / -2;
              v22 = v19;
              v23 = &v13[2 * v17];
              do
              {
                if (v20 <= v14)
                {
                  v24 = a2 / 2;
                }

                else
                {
                  v24 = v20;
                }

                if (v20 < v14)
                {
                  v25 = -v20;
                }

                else
                {
                  v25 = a2 / -2;
                }

                v26 = v18 - v20;
                if (v20 + v9 <= v18)
                {
                  v26 = a2 - a2 / 2;
                }

                if (v25 >= v26)
                {
                  LOWORD(v27) = 0;
                }

                else
                {
                  v27 = 0;
                  v28 = &v22[2 * v6 * (v24 + v21)];
                  do
                  {
                    if (v27 <= *v28)
                    {
                      v27 = *v28;
                    }

                    ++v25;
                    v28 += v15;
                  }

                  while (v25 < v26);
                }

                *v23 = v27;
                ++v20;
                v23 += 2 * v6;
                v22 += v15;
                --v21;
              }

              while (v20 != v18);
            }

            ++v17;
            v19 += 2;
          }

          while (v17 != v6);
        }

        v12 = v44 + 1;
        v13 += 2 * v5;
        v10 = *(v16 + 3);
      }

      while (v44 + 1 < v10);
    }

    v29 = *(v11 + 2) * v6;
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *v11;
      v32 = a2 / 2;
      do
      {
        if (v10 >= 1)
        {
          v33 = 0;
          v34 = v31;
          do
          {
            *&v8[2 * v33++] = *v34;
            v34 += 2 * v5;
          }

          while (v10 != v33);
          v35 = 0;
          v36 = a2 / -2;
          v37 = v31;
          v38 = v8;
          do
          {
            if (v35 <= v32)
            {
              v39 = a2 / 2;
            }

            else
            {
              v39 = v35;
            }

            if (v35 < v32)
            {
              v40 = -v35;
            }

            else
            {
              v40 = a2 / -2;
            }

            v41 = v10 - v35;
            if (v35 + v9 <= v10)
            {
              v41 = a2 - a2 / 2;
            }

            if (v40 >= v41)
            {
              LOWORD(v42) = 0;
            }

            else
            {
              v42 = 0;
              v43 = 2 * (v39 + v36);
              do
              {
                if (v42 <= *&v38[v43])
                {
                  v42 = *&v38[v43];
                }

                ++v40;
                v43 += 2;
              }

              while (v40 < v41);
            }

            *v37 = v42;
            ++v35;
            v38 += 2;
            v37 += 2 * v5;
            --v36;
          }

          while (v35 != v10);
        }

        ++v30;
        v31 += 2;
      }

      while (v30 != v29);
    }

    free(v8);
    return (&dword_0 + 1);
  }

  return result;
}

char *sub_12E84(char **a1, int a2)
{
  if (*(a1 + 2) < a2)
  {
    return (&dword_0 + 1);
  }

  v4 = *(a1 + 3);
  if (v4 < a2)
  {
    return (&dword_0 + 1);
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 7);
  if (v4 <= v5)
  {
    v4 = *(a1 + 4);
  }

  result = malloc_type_malloc(2 * v4, 0x4AC9CECFuLL);
  if (result)
  {
    v8 = result;
    v9 = a2 - a2 / 2;
    v10 = *(a1 + 3);
    v11 = a1;
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = *a1;
      v14 = a2 / 2;
      v15 = 2 * v6;
      do
      {
        v44 = v12;
        v16 = v11;
        memmove(v8, v13, 2 * v5);
        v11 = v16;
        if (v6 >= 1)
        {
          v17 = 0;
          v18 = *(v16 + 2);
          v19 = v8;
          do
          {
            if (v18 >= 1)
            {
              v20 = 0;
              v21 = a2 / -2;
              v22 = v19;
              v23 = &v13[2 * v17];
              do
              {
                if (v20 <= v14)
                {
                  v24 = a2 / 2;
                }

                else
                {
                  v24 = v20;
                }

                if (v20 < v14)
                {
                  v25 = -v20;
                }

                else
                {
                  v25 = a2 / -2;
                }

                if (v20 + v9 <= v18)
                {
                  v26 = a2 - a2 / 2;
                }

                else
                {
                  v26 = v18 - v20;
                }

                if (v25 >= v26)
                {
                  LOWORD(v28) = -1;
                }

                else
                {
                  v27 = &v22[2 * v6 * (v24 + v21)];
                  v28 = 0xFFFF;
                  do
                  {
                    if (v28 >= *v27)
                    {
                      v28 = *v27;
                    }

                    ++v25;
                    v27 += v15;
                  }

                  while (v25 < v26);
                }

                *v23 = v28;
                ++v20;
                v23 += 2 * v6;
                v22 += v15;
                --v21;
              }

              while (v20 != v18);
            }

            ++v17;
            v19 += 2;
          }

          while (v17 != v6);
        }

        v12 = v44 + 1;
        v13 += 2 * v5;
        v10 = *(v16 + 3);
      }

      while (v44 + 1 < v10);
    }

    v29 = *(v11 + 2) * v6;
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *v11;
      v32 = a2 / 2;
      do
      {
        if (v10 >= 1)
        {
          v33 = 0;
          v34 = v31;
          do
          {
            *&v8[2 * v33++] = *v34;
            v34 += 2 * v5;
          }

          while (v10 != v33);
          v35 = 0;
          v36 = a2 / -2;
          v37 = v31;
          v38 = v8;
          do
          {
            if (v35 <= v32)
            {
              v39 = a2 / 2;
            }

            else
            {
              v39 = v35;
            }

            if (v35 < v32)
            {
              v40 = -v35;
            }

            else
            {
              v40 = a2 / -2;
            }

            if (v35 + v9 <= v10)
            {
              v41 = a2 - a2 / 2;
            }

            else
            {
              v41 = v10 - v35;
            }

            if (v40 >= v41)
            {
              LOWORD(v43) = -1;
            }

            else
            {
              v42 = 2 * (v39 + v36);
              v43 = 0xFFFF;
              do
              {
                if (v43 >= *&v38[v42])
                {
                  v43 = *&v38[v42];
                }

                ++v40;
                v42 += 2;
              }

              while (v40 < v41);
            }

            *v37 = v43;
            ++v35;
            v38 += 2;
            v37 += 2 * v5;
            --v36;
          }

          while (v35 != v10);
        }

        ++v30;
        v31 += 2;
      }

      while (v30 != v29);
    }

    free(v8);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_1326C(id a1)
{
  v1 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_srgbToIPT(__sample im) \n { \n vec3 lms = im.r * vec3(0.3139902162, 0.15537240628, 0.01775238698) + \n im.g * vec3(0.63951293834, 0.75789446163, 0.1094420944) + \n im.b * vec3(0.04649754622, 0.08670141862, 0.87256922462); \n lms = sign(lms)*pow(abs(lms), vec3(0.43)); \n vec3 ipt = lms.r * vec3(0.4, 4.455, 0.8056) + \n lms.g * vec3(0.4, -4.851, 0.3572) + \n lms.b * vec3(0.2, 0.396, -1.1628); \n return vec4(ipt, im.a); \n } \n"];
  qword_8CB20 = v1;

  [v1 setPerservesAlpha:1];
}

void sub_135C4(id a1)
{
  v1 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_iptToSRGB(__sample ipt) \n { \n vec3 lms = ipt.r * vec3(1.0000, 1.0000, 1.0000) + \n ipt.g * vec3(0.0976, -0.1139, 0.0326) + \n ipt.b * vec3(0.2052, 0.1332, -0.6769); \n lms = sign(lms)*pow(abs(lms), vec3(1.0/.43)); \n vec3 im = lms.r * vec3(5.472212058380287, -1.125241895533569, 0.029801651173470) + \n lms.g * vec3(-4.641960098354471, 2.293170938060623, -0.193180728257140) + \n lms.b * vec3(0.169637076827974, -0.167895202223709, 1.163647892783812); \n return vec4(im, ipt.a); \n } \n"];
  qword_8CB40 = v1;

  [v1 setPerservesAlpha:1];
}

char *sub_16748(unsigned int a1)
{
  v2 = malloc_type_malloc(16 * a1 + 24, 0x102004093CA8EA1uLL);
  v3 = v2;
  *v2 = v2 + 24;
  *(v2 + 2) = a1;
  *(v2 + 2) = 0;
  if (a1)
  {
    v4 = (a1 + 15) & 0x1FFFFFFF0;
    v5 = vdupq_n_s64(a1 - 1);
    v6 = xmmword_54CE0;
    v7 = xmmword_54CF0;
    v8 = xmmword_54D00;
    v9 = xmmword_54D10;
    v10 = xmmword_54D20;
    v11 = xmmword_54D30;
    v12 = xmmword_54D40;
    v13 = xmmword_54D50;
    v14 = v2 + 136;
    v15 = vdupq_n_s64(0x10uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v5, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v5.i8), *v5.i8).u8[0])
      {
        *(v14 - 112) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v5), *&v5).i8[1])
      {
        *(v14 - 96) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v12))), *&v5).i8[2])
      {
        *(v14 - 80) = 0;
        *(v14 - 64) = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v5, v11));
      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i32[1])
      {
        *(v14 - 48) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v17, *&v5)).i8[5])
      {
        *(v14 - 32) = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v10)))).i8[6])
      {
        *(v14 - 16) = 0;
        *v14 = 0;
      }

      v18 = vmovn_s64(vcgeq_u64(v5, v9));
      if (vuzp1_s8(vuzp1_s16(v18, *v5.i8), *v5.i8).u8[0])
      {
        v14[16] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v5), *&v5).i8[1])
      {
        v14[32] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))), *&v5).i8[2])
      {
        v14[48] = 0;
        v14[64] = 0;
      }

      v19 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i32[1])
      {
        v14[80] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v19, *&v5)).i8[5])
      {
        v14[96] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6)))).i8[6])
      {
        v14[112] = 0;
        v14[128] = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v9 = vaddq_s64(v9, v15);
      v8 = vaddq_s64(v8, v15);
      v7 = vaddq_s64(v7, v15);
      v14 += 256;
      v6 = vaddq_s64(v6, v15);
      v4 -= 16;
    }

    while (v4);
  }

  v20 = malloc_type_malloc(0x1D4D8uLL, 0x102004014030ADEuLL);
  *v20 = v20 + 3;
  v20[1] = 5000;
  v20[2] = 0;
  *(v3 + 2) = v20;
  return v3;
}

void sub_169E4(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = v2[2];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

void sub_16A38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v2 + 12) = 0;
  *(v2 + 16) = 0;
  v5 = *a1;
  v6 = 16 * *(a1 + 8);

  bzero(v5, v6);
}

uint64_t sub_16AA0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8));
  if (*v3 != 1)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  *a3 = *(v4 + 8);
  return 1;
}

char *sub_16B3C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*a1 + 16 * ((257 * (16974593 * a2 + BYTE3(a2) + 66049 * BYTE1(a2) + (BYTE2(a2) | (BYTE2(a2) << 8))) + BYTE4(a2) + 842144005) % *(a1 + 8)));
  v6 = *v5;
  result = sub_16BF8(a1);
  if (v6 == 1)
  {
    *(result + 2) = *(v5 + 1);
  }

  else
  {
    *(result + 2) = 0;
    *v5 = 1;
  }

  *result = a2;
  *(result + 2) = a3;
  *(v5 + 1) = result;
  return result;
}

char *sub_16BF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[3];
  if (v3 == v2[2])
  {
    v2 = malloc_type_malloc(24 * v3 + 24, 0x102004014030ADEuLL);
    v4 = (v2 + 6);
    *v2 = v2 + 6;
    v2[2] = v3;
    v2[3] = 0;
    *(v2 + 2) = *(a1 + 16);
    *(a1 + 16) = v2;
    v3 = 0;
  }

  else
  {
    v4 = *v2;
  }

  v2[3] = v3 + 1;
  return &v4[24 * v3];
}

id sub_17188(void *a1, void *a2, void *a3)
{
  result = [a1 length];
  if (result)
  {
    v7 = result;
    v8 = [a2 intValue];
    v9 = [a3 intValue];
    if (!v8 || (v10 = v9) == 0)
    {
      v8 = vcvtmd_s64_f64(sqrt(vcvtd_n_f64_u64(v7, 1uLL)));
      v10 = v8;
    }

    if (v7 == 2 * v8 * v10)
    {
      v16[0] = kCIImageProviderContentDigest;
      v16[1] = kCIImageProviderName;
      v17[0] = a1;
      v17[1] = @"CILocalLight";
      v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v12 = [CIImage alloc];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_17BB0;
      v13[3] = &unk_750C8;
      v14 = v8;
      v15 = v10;
      v13[4] = a1;
      v13[5] = v7;
      return [v12 initWithImageProvider:v13 width:v8 height:v10 format:kCIFormatRG8 colorSpace:0 options:v11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_17308(void *a1, void *a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    [a1 extent];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [a2 extent];
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v17;
    v33.size.height = v18;
    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    if (CGRectEqualToRect(v31, v33))
    {
      return a1;
    }

    else
    {
      [a1 extent];
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = 1.0;
      v34.size.height = 1.0;
      if (CGRectEqualToRect(v32, v34))
      {
        v19 = [a1 imageByClampingToExtent];
        [a2 extent];

        return [v19 imageByCroppingToRect:?];
      }

      else
      {
        v29[0] = a1;
        v29[1] = a2;
        v20 = [NSArray arrayWithObjects:v29 count:2];
        [-[NSArray objectAtIndexedSubscript:](v20 objectAtIndexedSubscript:{0), "extent"}];
        v28[0] = [CIVector vectorWithCGRect:?];
        [-[NSArray objectAtIndexedSubscript:](v20 objectAtIndexedSubscript:{1), "extent"}];
        v28[1] = [CIVector vectorWithCGRect:?];
        v21 = [NSArray arrayWithObjects:v28 count:2];
        [a2 extent];
        v26[0] = @"imageExtents";
        v26[1] = @"guidedFilterEpsilon";
        v27[0] = v21;
        v27[1] = a3;
        return [CIDynamicGuidedFilter applyWithExtent:v20 inputs:[NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2] arguments:0 error:v22, v23, v24, v25];
      }
    }
  }

  return result;
}

char *sub_17BB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    sub_4A5BC();
  }

  if (a5)
  {
    sub_4A5E8();
  }

  v9 = *(a1 + 48);
  if (v9 != a6)
  {
    sub_4A614();
  }

  v10 = a7;
  if (*(a1 + 52) != a7)
  {
    sub_4A640();
  }

  if (a3 == 2 * v9)
  {
    v13 = [*(a1 + 32) bytes];
    v14 = *(a1 + 40);

    return memcpy(a2, v13, v14);
  }

  else
  {
    result = [*(a1 + 32) bytes];
    if (v10)
    {
      v16 = result;
      v17 = 2 * a6;
      do
      {
        result = memcpy(a2, v16, v17);
        v16 += v17;
        a2 += a3;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

int sub_17C94(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C740);

  return [AssociatedObject intValue];
}

void sub_17CC4(NSDictionary *self, SEL a2, int a3)
{
  v4 = [NSNumber numberWithInt:*&a3];

  objc_setAssociatedObject(self, off_8C740, v4, &dword_0 + 1);
}

float sub_17D14(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C748);

  [AssociatedObject floatValue];
  return result;
}

void sub_17D44(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C748, v4, &dword_0 + 1);
}

float sub_17D94(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, off_8C750);

  [AssociatedObject floatValue];
  return result;
}

void sub_17DC4(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, off_8C750, v4, &dword_0 + 1);
}

CGRect sub_17E14(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C758);

  [AssociatedObject rectValue];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void sub_17E44(NSDictionary *self, SEL a2, CGRect a3)
{
  v4 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  objc_setAssociatedObject(self, &off_8C758, v4, &dword_0 + 1);
}

id sub_189F0(uint64_t a1, void *a2)
{
  if (qword_8CE68 != -1)
  {
    sub_4A66C();
  }

  if (!qword_8CE70)
  {
    sub_4A680();
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = CIContext;
  }

  return [v4 loadArchiveWithName:a1 fromURL:?];
}

void sub_1974C(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"render_lighting_proxy", @"com.apple.coremedia");
  if (v1)
  {
    v2 = v1;
    if ((sub_197E8(v1) & 0x80000000) != 0 || sub_197E8(v2) <= 2)
    {
      if ((sub_197E8(v2) & 0x80000000) != 0)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_197E8(v2);
      }
    }

    else
    {
      v3 = 2;
    }

    dword_8C760 = v3;

    CFRelease(v2);
  }
}

uint64_t sub_197E8(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    IntValue = CFStringGetIntValue(a1);
    if (!IntValue)
    {
      IntValue = 1;
      if (CFStringCompare(a1, @"true", 1uLL))
      {
        IntValue = 1;
        if (CFStringCompare(a1, @"yes", 1uLL))
        {
          if (CFStringCompare(a1, @"false", 1uLL) && CFStringCompare(a1, @"no", 1uLL))
          {
            CFStringCompare(a1, @"0", 1uLL);
          }

          return 0;
        }
      }
    }
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 != CFBooleanGetTypeID())
      {
        return 0;
      }

      return CFEqual(a1, kCFBooleanTrue);
    }
  }

  return IntValue;
}

void sub_1999C(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"refineStageMatte", @"com.apple.coremedia");
  if (v1)
  {
    v2 = v1;
    if ((sub_197E8(v1) & 0x80000000) != 0 || sub_197E8(v2) <= 2)
    {
      if ((sub_197E8(v2) & 0x80000000) != 0)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_197E8(v2);
      }
    }

    else
    {
      v3 = 2;
    }

    dword_8C764 = v3;

    CFRelease(v2);
  }
}

void sub_19AA4(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"renderSpillCache", @"com.apple.coremedia");
  if (v1)
  {
    v2 = v1;
    if ((sub_197E8(v1) & 0x80000000) != 0 || sub_197E8(v2) <= 2)
    {
      if ((sub_197E8(v2) & 0x80000000) != 0)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_197E8(v2);
      }
    }

    else
    {
      v3 = 2;
    }

    dword_8C768 = v3;

    CFRelease(v2);
  }
}

BOOL sub_1C2E4@<W0>(int a1@<W0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  result = CGRectIsInfinite(*&a3);
  if (result)
  {
    v11 = *&CGAffineTransformIdentity.c;
    *a2 = *&CGAffineTransformIdentity.a;
    a2[1] = v11;
    a2[2] = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    v12 = a1 - 1;
    v15[0] = 0x3FF0000000000000;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0x3FF0000000000000;
    v15[4] = 0;
    v15[5] = 0;
    v15[6] = 0xBFF0000000000000;
    v15[7] = 0;
    v15[8] = 0;
    v15[9] = 0x3FF0000000000000;
    *&v15[10] = a4;
    v16 = xmmword_54BD0;
    v17 = 0;
    v18 = 0;
    v19 = 0xBFF0000000000000;
    v20 = a4;
    v21 = a5;
    v23 = 0;
    v24 = 0;
    v22 = 0x3FF0000000000000;
    v25 = xmmword_54BE0;
    v26 = a5;
    v27 = xmmword_54BD0;
    v28 = xmmword_54BE0;
    v29 = a5;
    v30 = a4;
    v31 = xmmword_54BD0;
    v33 = 0;
    v34 = 0;
    v32 = 0x3FF0000000000000;
    v35 = a4;
    v36 = xmmword_54BF0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0x3FF0000000000000;
    v40 = 0x3FF0000000000000;
    v41 = xmmword_54BE0;
    v42 = a5;
    v43 = 0;
    if ((a1 - 9) < 0xFFFFFFF8)
    {
      v12 = 0;
    }

    v13 = &v15[6 * v12];
    v14 = v13[2];
    a2[1] = v13[1];
    a2[2] = v14;
    *a2 = *v13;
  }

  return result;
}

void sub_2362C(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.PortraitFilters"];
  if (!v1)
  {
    sub_4AA24();
  }

  qword_8CE70 = [(NSBundle *)v1 bundleURL];
  if (!qword_8CE70)
  {
    sub_4A9F8();
  }
}

uint64_t sub_23670(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = 0;
  v37 = 0;
  bzero(*a2, *(a2 + 16) * *(a2 + 12));
  v12 = sub_2398C();
  if (!v12)
  {
    puts("seedFill: can not allocate span stack");
    return 0;
  }

  v13 = v12;
  v40 = 0;
  v39 = 0;
  v36 = a5;
  sub_23A00(a1, a2, a3, a4, &v39, a5, a6);
  v14 = HIWORD(v39);
  if (HIWORD(v39) <= v40)
  {
    v15 = v39;
    v16 = v40 + 1;
    do
    {
      sub_2A154(a2, v14++, v15, 1);
    }

    while (v16 != v14);
  }

  sub_23B2C(v13, &v39);
  v35 = a6;
  v17 = a5;
  while (1)
  {
LABEL_6:
    v19 = *(v13 + 8);
    v18 = *(v13 + 16);
    if (v18 == v19 + 16)
    {
      v20 = *(v19 + 8);
      if (!v20)
      {
        sub_23BBC(v13);
        return 1;
      }

      *(v13 + 8) = v20;
      v18 = v20 + 316;
    }

    v21 = v13;
    *(v13 + 16) = v18 - 6;
    v39 = *(v18 - 6);
    v40 = *(v18 - 2);
    v22 = v39;
    if (v39)
    {
      v23 = HIWORD(v39);
      v24 = v40;
      if (HIWORD(v39) <= v40)
      {
        break;
      }
    }

LABEL_19:
    v13 = v21;
    if (*(a2 + 12) - 1 > v22)
    {
      v29 = HIWORD(v39);
      v30 = v40;
      if (HIWORD(v39) <= v40)
      {
        while (1)
        {
          if (!sub_2A0CC(a2, v29, v22 + 1) && a6(v17, a1, v29, (v22 + 1)))
          {
            sub_23A00(a1, a2, v29, (v22 + 1), &v37, v17, a6);
            v31 = HIWORD(v37);
            v32 = v38;
            if (HIWORD(v37) <= v38)
            {
              v33 = v37;
              do
              {
                sub_2A154(a2, v31++, v33, 1);
              }

              while (v32 + 1 != v31);
            }

            if (!sub_23B2C(v21, &v37))
            {
              goto LABEL_31;
            }

            LODWORD(v29) = v32 + 2;
            a6 = v35;
            v17 = v36;
          }

          v28 = v29 < v30;
          v29 = (v29 + 1);
          if (!v28)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  while (1)
  {
    if (sub_2A0CC(a2, v23, v22 - 1) || !a6(v17, a1, v23, (v22 - 1)))
    {
      goto LABEL_18;
    }

    sub_23A00(a1, a2, v23, (v22 - 1), &v37, v17, a6);
    v25 = HIWORD(v37);
    v26 = v38;
    if (HIWORD(v37) <= v38)
    {
      v27 = v37;
      do
      {
        sub_2A154(a2, v25++, v27, 1);
      }

      while (v26 + 1 != v25);
    }

    if (!sub_23B2C(v21, &v37))
    {
      break;
    }

    LODWORD(v23) = v26 + 2;
    a6 = v35;
    v17 = v36;
LABEL_18:
    v28 = v23 < v24;
    v23 = (v23 + 1);
    if (!v28)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  puts("seedFill: can not push span onto stack");
  sub_23BBC(v21);
  return 0;
}

void *sub_2398C()
{
  v0 = sub_10FF4(0x18uLL);
  if (v0)
  {
    v1 = sub_10FF4(0x140uLL);
    *v0 = v1;
    v0[1] = v1;
    if (v1)
    {
      *v1 = 0;
      v1[1] = 0;
      v0[2] = v1 + 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    puts("allocSpanStack: span stack could not be allocated");
  }

  return v0;
}

uint64_t sub_23A00(uint64_t result, uint64_t a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a3;
  v13 = result;
  *a5 = a4;
  LODWORD(v14) = a3;
  do
  {
    v15 = v14;
    v16 = __OFSUB__(v14, 1);
    v14 = (v14 - 1);
    if (v14 < 0 != v16)
    {
      break;
    }

    result = sub_2A0CC(a2, v14, a4);
    if (result == 1)
    {
      break;
    }

    result = a7(a6, v13, v14, a4);
  }

  while (result);
  a5[1] = v15;
  do
  {
    v17 = v11;
    v18 = (v11 + 1);
    if (v18 >= *(a2 + 8))
    {
      break;
    }

    result = sub_2A0CC(a2, v18, a4);
    if (result == 1)
    {
      break;
    }

    result = a7(a6, v13, v18, a4);
    v11 = v17 + 1;
  }

  while (result);
  a5[2] = v17;
  if (a5[1] > v17)
  {

    return puts("spanSearch: empty span");
  }

  return result;
}

void *sub_23B2C(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 - 16 >= 295)
  {
    v6 = *v5;
    if (!v6)
    {
      result = sub_10FF4(0x140uLL);
      v8 = *(a1 + 8);
      *v8 = result;
      if (!result)
      {
        return result;
      }

      *result = 0;
      v6 = *v8;
      *(*v8 + 8) = v8;
    }

    v4 = v6 + 16;
    *(a1 + 8) = v6;
    *(a1 + 16) = v6 + 16;
  }

  v9 = *a2;
  *(v4 + 4) = *(a2 + 2);
  *v4 = v9;
  *(a1 + 16) += 6;
  return (&dword_0 + 1);
}

void sub_23BBC(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *v2;
      j__free(v2);
      v2 = v3;
    }

    while (v3);
  }

  j__free(a1);
}

uint64_t sub_23C08(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v60 = 0;
  v59 = 0;
  v12 = sub_2398C();
  if (v12)
  {
    v13 = v12;
    v58 = a5;
    v62 = 0;
    v61 = 0;
    v14 = sub_2B300(a2, a3, a4);
    v16 = sub_12280(v14, v15, 0xFFFFFFFFLL, -1);
    v18 = v16 & ~(v16 >> 31);
    if (*(a2 + 12) >= SHIDWORD(v16))
    {
      v19 = HIDWORD(v16);
    }

    else
    {
      v19 = *(a2 + 12);
    }

    v56 = v13;
    v57 = a6;
    if (v18 < v19)
    {
      v20 = *(a2 + 8);
      v21 = v17 & 0xFFFFFFFF00000000;
      if ((v17 & 0x80000000) == 0)
      {
        v21 = v17;
      }

      if (v20 >= SHIDWORD(v21))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 | (v20 << 32);
      }

      v23 = HIDWORD(v22);
      v54 = v19;
      v53 = v22;
      do
      {
        if (v22 >= v23)
        {
          v36 = (v18 + 1);
        }

        else
        {
          v55 = v18 + 1;
          v24 = v22;
          v25 = a5;
          do
          {
            v26 = *a2;
            v27 = *(a2 + 16);
            v28 = *a2 + v27 * v18;
            if ((v24 & 0x80000000) == 0)
            {
              v29 = v24;
            }

            else
            {
              v29 = v24 + 7;
            }

            v30 = 1 << (v24 & 7);
            if ((v30 & *(v28 + (v29 >> 3))) == 0)
            {
              if (v24 >= 1 && ((*(v28 + ((v24 - 1) >> 3)) >> ((v24 - 1) & 7)) & 1) != 0)
              {
                goto LABEL_67;
              }

              if (v24 < *(a2 + 8) - 1)
              {
                v31 = v24 + 8;
                if (v24 >= -1)
                {
                  v31 = v24 + 1;
                }

                if ((*(v28 + (v31 >> 3)) >> ((v24 + 1) & 7)))
                {
                  goto LABEL_67;
                }
              }

              if ((v32 = v29 >> 3, v18) && (v30 & *(v26 + v27 * (v18 - 1) + v32)) != 0 || v18 < *(a2 + 12) - 1 && (v30 & *(v26 + v27 * v55 + v32)) != 0)
              {
LABEL_67:
                if (a6(v25, a1, v24, v18))
                {
                  sub_23A00(a1, a2, v24, v18, &v61, v25, a6);
                  v33 = HIWORD(v61);
                  if (HIWORD(v61) <= v62)
                  {
                    v34 = v61;
                    v35 = v62 + 1;
                    do
                    {
                      sub_2A154(a2, v33++, v34, 1);
                    }

                    while (v35 != v33);
                  }

                  v13 = v56;
                  sub_23B2C(v56, &v61);
                  a6 = v57;
                  v25 = a5;
                }
              }
            }

            v24 = (v24 + 1);
          }

          while (v24 != v23);
          v19 = v54;
          v36 = v55;
          v22 = v53;
        }

        v18 = v36;
      }

      while (v36 != v19);
    }

    while (1)
    {
LABEL_37:
      v38 = *(v13 + 8);
      v37 = *(v13 + 16);
      if (v37 == v38 + 16)
      {
        v39 = *(v38 + 8);
        if (!v39)
        {
          sub_23BBC(v13);
          return 1;
        }

        *(v13 + 8) = v39;
        v37 = v39 + 316;
      }

      *(v13 + 16) = v37 - 6;
      v61 = *(v37 - 6);
      v62 = *(v37 - 2);
      v40 = v61;
      if (v61)
      {
        v41 = HIWORD(v61);
        v42 = v62;
        if (HIWORD(v61) <= v62)
        {
          do
          {
            if (!sub_2A0CC(a2, v41, v40 - 1) && a6(v58, a1, v41, (v40 - 1)))
            {
              sub_23A00(a1, a2, v41, (v40 - 1), &v59, v58, a6);
              v43 = HIWORD(v59);
              v44 = v60;
              if (HIWORD(v59) <= v60)
              {
                v45 = v59;
                do
                {
                  sub_2A154(a2, v43++, v45, 1);
                }

                while (v44 + 1 != v43);
              }

              v13 = v56;
              if (!sub_23B2C(v56, &v59))
              {
LABEL_61:
                puts("seedFill: can not push span onto stack");
                sub_23BBC(v13);
                return 0;
              }

              LODWORD(v41) = v44 + 2;
              a6 = v57;
            }

            v46 = v41 < v42;
            v41 = (v41 + 1);
          }

          while (v46);
        }
      }

      if (*(a2 + 12) - 1 > v40)
      {
        v47 = HIWORD(v61);
        v48 = v62;
        if (HIWORD(v61) <= v62)
        {
          while (1)
          {
            if (!sub_2A0CC(a2, v47, v40 + 1) && a6(v58, a1, v47, (v40 + 1)))
            {
              sub_23A00(a1, a2, v47, (v40 + 1), &v59, v58, a6);
              v49 = HIWORD(v59);
              v50 = v60;
              if (HIWORD(v59) <= v60)
              {
                v51 = v59;
                do
                {
                  sub_2A154(a2, v49++, v51, 1);
                }

                while (v50 + 1 != v49);
              }

              if (!sub_23B2C(v13, &v59))
              {
                goto LABEL_61;
              }

              LODWORD(v47) = v50 + 2;
              a6 = v57;
            }

            v46 = v47 < v48;
            v47 = (v47 + 1);
            if (!v46)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

  puts("seedFill: can not allocate span stack");
  return 0;
}

int sub_24094(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C770);

  return [AssociatedObject intValue];
}

void sub_240C4(NSDictionary *self, SEL a2, int a3)
{
  v4 = [NSNumber numberWithInt:*&a3];

  objc_setAssociatedObject(self, &off_8C770, v4, &dword_0 + 1);
}

float sub_24114(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C778);

  [AssociatedObject floatValue];
  return result;
}

void sub_24144(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, &off_8C778, v4, &dword_0 + 1);
}

float sub_24194(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C780);

  [AssociatedObject floatValue];
  return result;
}

void sub_241C4(NSDictionary *self, SEL a2, float a3)
{
  v4 = [NSNumber numberWithFloat:?];

  objc_setAssociatedObject(self, &off_8C780, v4, &dword_0 + 1);
}

CGRect sub_24214(NSDictionary *self, SEL a2)
{
  AssociatedObject = objc_getAssociatedObject(self, &off_8C788);

  [AssociatedObject rectValue];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void sub_24244(NSDictionary *self, SEL a2, CGRect a3)
{
  v4 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  objc_setAssociatedObject(self, &off_8C788, v4, &dword_0 + 1);
}

double sub_273DC(int a1, double *a2, double *a3, uint64_t a4, double *a5)
{
  v5 = *a3 + *a2 * a3[2];
  v6 = a3[1] + a2[1] * a3[3];
  if (a1 <= 4)
  {
    v16 = 1.0 - v5;
    v17 = 1.0 - v6;
    if (a1 == 4)
    {
      v18 = 1.0 - v6;
    }

    else
    {
      v18 = a3[1] + a2[1] * a3[3];
    }

    if (a1 == 3)
    {
      v19 = 1.0 - v5;
    }

    else
    {
      v17 = v18;
      v19 = *a3 + *a2 * a3[2];
    }

    if (a1 == 2)
    {
      v14 = a3[1] + a2[1] * a3[3];
    }

    else
    {
      v14 = v17;
    }

    if (a1 == 2)
    {
      v15 = v16;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    v7 = v5;
    v8 = v7;
    v9 = (1.0 - v7);
    if (a1 == 8)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3[1] + a2[1] * a3[3];
    }

    if (a1 == 8)
    {
      v11 = a3[1] + a2[1] * a3[3];
    }

    else
    {
      v11 = *a3 + *a2 * a3[2];
    }

    if (a1 == 7)
    {
      v10 = v8;
      v11 = a3[1] + a2[1] * a3[3];
    }

    v12 = 1.0 - v6;
    if (a1 == 6)
    {
      v6 = v8;
      v5 = v12;
    }

    if (a1 == 5)
    {
      v6 = v9;
      v13 = v12;
    }

    else
    {
      v13 = v5;
    }

    if (a1 <= 6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v10;
    }

    if (a1 <= 6)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }
  }

  result = *(a4 + 24) * v14;
  *a5 = *(a4 + 16) * v15;
  a5[1] = result;
  return result;
}

uint64_t sub_27994(void *a1, void *a2)
{
  v4 = [a1 objectForKeyedSubscript:@"x"];
  v5 = [a1 objectForKeyedSubscript:@"y"];
  v6 = [a1 objectForKeyedSubscript:@"w"];
  v7 = [a1 objectForKeyedSubscript:@"h"];
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 || v6 == 0 || v7 == 0 || a2 == 0;
  v12 = !v11;
  if (!v11)
  {
    v13 = v7;
    [v4 doubleValue];
    v15 = v14;
    [v5 doubleValue];
    v17 = v16;
    [v6 doubleValue];
    v19 = v18;
    [v13 doubleValue];
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v19;
    a2[3] = v20;
  }

  return v12;
}

uint64_t sub_27A78(void *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v12 = [a1 objectForKeyedSubscript:@"x"];
  v13 = [a1 objectForKeyedSubscript:@"y"];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 || a2 == 0;
  v16 = !v15;
  if (!v15)
  {
    v17 = v13;
    [v12 doubleValue];
    v19 = a3 + a5 * v18;
    [v17 doubleValue];
    *a2 = v19;
    a2[1] = a4 + a6 * v20;
  }

  return v16;
}

unint64_t sub_281D4(uint64_t a1, int a2)
{
  result = *(a1 + a2 - 1);
  v4 = (a2 - 2);
  if (a2 >= 2)
  {
    do
    {
      result = *(a1 + v4--) | (result << 8);
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t sub_28200(uint64_t a1, int a2, int a3)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v3 = *(v5 + a2) + a3;
  if (v3 > 0xFF)
  {
    return -1;
  }

  *(v5 + a2) = v3;
  return v5[0];
}

id sub_29770(uint64_t a1)
{
  result = [*(a1 + 40) newDefaultLibraryWithBundle:+[NSBundle bundleForClass:](NSBundle error:{"bundleForClass:", objc_opt_class()), 0}];
  qword_8CE90 = result;
  return result;
}

NSDate *sub_297E0(uint64_t a1)
{
  result = +[NSDate date];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void *sub_29EFC(int a1, int a2)
{
  v4 = sub_10FF4(0x18uLL);
  if (!v4)
  {
    v8 = "initBitmask: bitmap record can not be allocated";
    goto LABEL_7;
  }

  v5 = v4;
  v6 = a1 + 7;
  if (a1 < -7)
  {
    v6 = a1 + 14;
  }

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v6 >> 3;
  v7 = sub_11000(a2, v6 >> 3);
  *v5 = v7;
  if (!v7)
  {
    j__free(v5);
    v8 = "initBitmask: bitmap body can not be allocated";
LABEL_7:
    puts(v8);
    return 0;
  }

  return v5;
}

BOOL sub_29F9C(_DWORD *a1, int a2, int a3)
{
  v4 = a2 + 7;
  if (a2 < -7)
  {
    v4 = a2 + 14;
  }

  a1[2] = a2;
  a1[3] = a3;
  a1[4] = v4 >> 3;
  v5 = sub_11000(a3, v4 >> 3);
  *a1 = v5;
  if (!v5)
  {
    j__free(a1);
    puts("initBitmask: bitmap body can not be allocated");
  }

  return v5 != 0;
}

void sub_2A010(void **a1)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      j__free(v3);
    }

    j__free(a1);
  }

  else
  {

    puts("termBitmask: bitmap was null");
  }
}

void **sub_2A080(uint64_t a1)
{
  v2 = sub_29EFC(*(a1 + 8), *(a1 + 12));
  v3 = v2;
  if (v2)
  {
    memmove(*v2, *a1, *(a1 + 12) * *(a1 + 16));
  }

  return v3;
}

uint64_t sub_2A0CC(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0 && *(a1 + 8) > a2)
  {
    if (*(a1 + 12) > a3)
    {
      return (*(*a1 + *(a1 + 16) * a3 + (a2 >> 3)) >> (a2 & 7)) & 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2A154(uint64_t result, unsigned int a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0 || a3 < 0 || *(result + 8) <= a2 || *(result + 12) <= a3)
  {
    return puts("setBitInBitmask: coordinate out of range");
  }

  v4 = *result + *(result + 16) * a3;
  v5 = a2 >> 3;
  v6 = 1 << (a2 & 7);
  v7 = *(v4 + v5);
  v8 = v7 | v6;
  v9 = v7 & ~v6;
  if (a4)
  {
    v9 = v8;
  }

  *(v4 + v5) = v9;
  return result;
}

void *sub_2A1BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == *(a2 + 8) && (v5 = *(a1 + 12), v5 == *(a2 + 12)) && *(a1 + 16) == *(a2 + 16))
  {
    result = sub_29EFC(v3, v5);
    v7 = *(a1 + 12) * *(a1 + 16);
    if (v7 >= 1)
    {
      v8 = *result;
      v9 = *a2;
      v10 = *a1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        v13 = *v9++;
        *v8++ = v13 & v11;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    puts("bitmaskAndBitmask: bitmasks have different shapes");
    return 0;
  }

  return result;
}

void *sub_2A25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == *(a2 + 8) && (v5 = *(a1 + 12), v5 == *(a2 + 12)) && *(a1 + 16) == *(a2 + 16))
  {
    result = sub_29EFC(v3, v5);
    v7 = *(a1 + 12) * *(a1 + 16);
    if (v7 >= 1)
    {
      v8 = *result;
      v9 = *a2;
      v10 = *a1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        v13 = *v9++;
        *v8++ = v13 | v11;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    puts("bitmaskOrBitmask: bitmasks have different shapes");
    return 0;
  }

  return result;
}

void *sub_2A2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == *(a2 + 8) && (v5 = *(a1 + 12), v5 == *(a2 + 12)) && *(a1 + 16) == *(a2 + 16))
  {
    result = sub_29EFC(v3, v5);
    v7 = *(a1 + 12) * *(a1 + 16);
    if (v7 >= 1)
    {
      v8 = *result;
      v9 = *a2;
      v10 = *a1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        v13 = *v9++;
        *v8++ = v11 & ~v13;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    puts("bitmaskAndNotBitmask: bitmasks have different shapes");
    return 0;
  }

  return result;
}

uint64_t sub_2A39C(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != *(a2 + 8))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v2 = *(result + 12);
  if (v2 != *(a2 + 12))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v3 = *(result + 16);
  if (v3 != *(a2 + 16))
  {
    return puts("bitmaskMinus: bitmasks have different shapes");
  }

  v4 = v3 * v2;
  if (v4 >= 1)
  {
    v5 = *a2;
    v6 = *result;
    do
    {
      v7 = *v5++;
      *v6++ &= ~v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2A408(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      if (v8 <= 0)
      {
        LODWORD(v10) = v7 + 1;
      }

      else
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          v11 = *v6;
          v12 = *(v6 + 12);
          v13 = *(v6 + 16);
          v14 = *v6 + v13 * v7;
          v15 = a3;
          if (v9)
          {
            v15 = a3;
            if (v12 > v7)
            {
              v15 = (*(v14 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
            }
          }

          v16 = v9 + 1;
          v17 = a3;
          if (v8 > (v9 + 1))
          {
            v17 = a3;
            if (v12 > v7)
            {
              v17 = (*(v14 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
            }
          }

          v18 = v9 >> 3;
          v19 = v9 & 7;
          v20 = a3;
          if (v7)
          {
            v20 = a3;
            if (v12 >= v7)
            {
              v20 = (*(v11 + v13 * (v7 - 1) + v18) >> v19) & 1;
            }
          }

          v21 = a3;
          if (v12 > v10)
          {
            v21 = (*(v11 + v13 * v10 + v18) >> v19) & 1;
          }

          result = sub_2A154(a2, v16 - 1, v7, v15 | (*(v14 + v18) >> v19) & 1 | v17 | v20 | v21);
          v8 = *(v6 + 8);
          v9 = v16;
        }

        while (v16 < v8);
        v3 = *(v6 + 12);
      }

      v7 = v10;
    }

    while (v10 < v3);
  }

  return result;
}

uint64_t sub_2A584(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    while (v8 <= 0)
    {
      LODWORD(v11) = v7 + 1;
LABEL_75:
      v7 = v11;
      if (v11 >= v3)
      {
        return result;
      }
    }

    v9 = 0;
    v10 = v7 - 1;
    v11 = v7 + 1;
    v12 = v7 - 2;
    v13 = v7 + 2;
    while (1)
    {
      v14 = *v6;
      v15 = *(v6 + 16);
      v16 = *v6 + v15 * v7;
      v17 = v9 >> 3;
      v18 = v9 & 7;
      v19 = (*(v16 + v17) >> (v9 & 7)) & 1;
      if (v9 >= 2)
      {
        v21 = *(v6 + 12);
        v23 = a3;
        if (v7)
        {
          v23 = a3;
          if (v21 >= v7)
          {
            v23 = (*(v14 + v15 * v10 + ((v9 - 2) >> 3)) >> ((v9 - 2) & 7)) & 1;
          }
        }

        v24 = a3;
        if (v21 > v7)
        {
          v24 = (*(v16 + ((v9 - 2) >> 3)) >> ((v9 - 2) & 7)) & 1;
        }

        v25 = a3;
        if (v21 > v11)
        {
          v25 = (*(v14 + v15 * v11 + ((v9 - 2) >> 3)) >> ((v9 - 2) & 7)) & 1;
        }

        v20 = v23 | v24 | v25 | v19;
      }

      else
      {
        v20 = v19 | a3;
        v21 = *(v6 + 12);
        v22 = a3;
        if (!v9)
        {
          goto LABEL_32;
        }
      }

      if (v7 >= 2)
      {
        break;
      }

      v26 = v20 | a3;
      v27 = a3;
      if (v7)
      {
        goto LABEL_22;
      }

LABEL_25:
      v29 = a3;
      if (v21 > v7)
      {
        v29 = (*(v16 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
      }

      v30 = a3;
      if (v21 > v11)
      {
        v30 = (*(v14 + v15 * v11 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
      }

      v20 = v26 | v27 | v29 | v30;
      if (v21 <= v13)
      {
        v22 = a3;
      }

      else
      {
        v22 = (*(v14 + v15 * v13 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
      }

LABEL_32:
      v31 = v22 | v20;
      if (v7 >= 2)
      {
        v34 = a3;
        if (v21 > v12)
        {
          v34 = (*(v14 + v15 * v12 + v17) >> v18) & 1;
        }

        v32 = v31 | v34;
      }

      else
      {
        v32 = v31 | a3;
        v33 = a3;
        if (!v7)
        {
          goto LABEL_41;
        }
      }

      if (v21 >= v7)
      {
        v33 = (*(v14 + v15 * v10 + v17) >> v18) & 1;
      }

      else
      {
        v33 = a3;
      }

LABEL_41:
      v35 = a3;
      if (v21 > v11)
      {
        v35 = (*(v14 + v15 * v11 + v17) >> v18) & 1;
      }

      v36 = a3;
      if (v21 > v13)
      {
        v36 = (*(v14 + v15 * v13 + v17) >> v18) & 1;
      }

      v37 = v9 + 1;
      v38 = a3;
      if (v8 > (v9 + 1))
      {
        v38 = a3;
        if (v7 >= 2)
        {
          v38 = a3;
          if (v21 > v12)
          {
            v38 = (*(v14 + v15 * v12 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
          }
        }
      }

      v39 = a3;
      if (v7)
      {
        v39 = a3;
        if (v8 > v37)
        {
          v39 = a3;
          if (v21 >= v7)
          {
            v39 = (*(v14 + v15 * v10 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
          }
        }
      }

      v40 = v32 | v33 | v35 | v36 | v38 | v39;
      if (v8 > v37)
      {
        v42 = a3;
        if (v21 > v7)
        {
          v42 = (*(v16 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
        }

        v43 = a3;
        if (v21 > v11)
        {
          v43 = (*(v14 + v15 * v11 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
        }

        v41 = v42 | v43 | v40;
        if (v21 > v13)
        {
          v44 = (*(v14 + v15 * v13 + ((v9 + 1) >> 3)) >> ((v9 + 1) & 7)) & 1;
          goto LABEL_62;
        }
      }

      else
      {
        v41 = v40 | a3;
      }

      v44 = a3;
LABEL_62:
      v45 = v9 + 2;
      v46 = a3;
      if (v7)
      {
        v46 = a3;
        if (v8 > v45)
        {
          v46 = a3;
          if (v21 >= v7)
          {
            v46 = (*(v14 + v15 * v10 + ((v9 + 2) >> 3)) >> ((v9 + 2) & 7)) & 1;
          }
        }
      }

      v47 = a3;
      v48 = a3;
      if (v8 > v45)
      {
        v47 = a3;
        if (v21 > v7)
        {
          v47 = (*(v16 + (v45 >> 3)) >> ((v9 + 2) & 7)) & 1;
        }

        if (v21 <= v11)
        {
          v48 = a3;
        }

        else
        {
          v48 = (*(v14 + v15 * v11 + (v45 >> 3)) >> ((v9 + 2) & 7)) & 1;
        }
      }

      result = sub_2A154(a2, v9, v7, v44 | v41 | v46 | v47 | v48);
      v8 = *(v6 + 8);
      v9 = v37;
      if (v37 >= v8)
      {
        v3 = *(v6 + 12);
        goto LABEL_75;
      }
    }

    v28 = a3;
    if (v21 > v12)
    {
      v28 = (*(v14 + v12 * v15 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
    }

    v26 = v28 | v20;
LABEL_22:
    if (v21 >= v7)
    {
      v27 = (*(v14 + v15 * v10 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7)) & 1;
    }

    else
    {
      v27 = a3;
    }

    goto LABEL_25;
  }

  return result;
}

void sub_2AA24(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2AE38(a1);
  v8 = v7;
  bzero(*a2, *(a2 + 12) * *(a2 + 16));
  v9 = *(a1 + 12);
  if (v6 < 1 || ((v10 = HIDWORD(v6), v9 > SHIDWORD(v6)) ? (v11 = v8 < 1) : (v11 = 1), v11 || *(a1 + 8) <= SHIDWORD(v8)))
  {
    if (v9 < 1)
    {
      return;
    }

    v26 = 0;
    v27 = *(a1 + 8);
    while (v27 <= 0)
    {
      LODWORD(v30) = v26 + 1;
LABEL_61:
      v26 = v30;
      if (v30 >= v9)
      {
        return;
      }
    }

    v28 = 0;
    v29 = v26 - 1;
    v30 = v26 + 1;
    while (1)
    {
      v31 = 2 * a3;
      v32 = a3;
      if (!v28)
      {
        goto LABEL_35;
      }

      v33 = *(a1 + 12);
      v34 = a3;
      if (v26)
      {
        v34 = a3;
        if (v33 >= v26)
        {
          v34 = (*(*a1 + *(a1 + 16) * v29 + ((v28 - 1) >> 3)) >> ((v28 - 1) & 7)) & 1;
        }
      }

      v35 = a3;
      if (v33 > v26)
      {
        v35 = (*(*a1 + *(a1 + 16) * v26 + ((v28 - 1) >> 3)) >> ((v28 - 1) & 7)) & 1;
      }

      v31 = v35 + v34;
      if (v33 > v30)
      {
        break;
      }

      v32 = a3;
      if (v26)
      {
LABEL_36:
        v36 = *a1;
        v37 = *(a1 + 12);
        v38 = *(a1 + 16);
        if (v37 >= v26)
        {
          v39 = (*(v36 + v38 * v29 + (v28 >> 3)) >> (v28 & 7)) & 1;
        }

        else
        {
          v39 = a3;
        }

        goto LABEL_41;
      }

LABEL_39:
      v36 = *a1;
      v39 = a3;
      v37 = *(a1 + 12);
      v38 = *(a1 + 16);
LABEL_41:
      v40 = v38;
      v41 = v28 >> 3;
      v42 = v28 & 7;
      v43 = a3;
      if (v37 > v30)
      {
        v43 = (*(v36 + v38 * v30 + v41) >> v42) & 1;
      }

      v44 = v28 + 1;
      v45 = a3;
      if (v27 > (v28 + 1))
      {
        v45 = a3;
        if (v37 >= v26)
        {
          v45 = a3;
          if (v26)
          {
            v45 = (*(v36 + v38 * v29 + ((v28 + 1) >> 3)) >> ((v28 + 1) & 7)) & 1;
          }
        }
      }

      v46 = v36 + v38 * v26;
      v47 = *(v46 + v41);
      v48 = a3;
      v49 = a3;
      if (v27 > v44)
      {
        v48 = a3;
        if (v37 > v26)
        {
          v48 = (*(v46 + ((v28 + 1) >> 3)) >> ((v28 + 1) & 7)) & 1;
        }

        if (v37 <= v30)
        {
          v49 = a3;
        }

        else
        {
          v49 = (*(v36 + v40 * v30 + ((v28 + 1) >> 3)) >> ((v28 + 1) & 7)) & 1;
        }
      }

      v50 = v32 + v31 + v39;
      v51 = (v47 >> v42) & 1;
      if (v50 + v51 + v43 + v45 + v48 + v49 > 1 || v51 != 0)
      {
        sub_2A154(a2, v28, v26, 1);
        v27 = *(a1 + 8);
      }

      v28 = v44;
      if (v44 >= v27)
      {
        v9 = *(a1 + 12);
        goto LABEL_61;
      }
    }

    v32 = (*(*a1 + *(a1 + 16) * v30 + ((v28 - 1) >> 3)) >> ((v28 - 1) & 7)) & 1;
LABEL_35:
    if (v26)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (v6 < SHIDWORD(v6))
  {
    v12 = v6;
    do
    {
      if (v8 >= SHIDWORD(v8))
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 + 1;
        v14 = v8;
        do
        {
          v16 = *a1;
          v17 = *(a1 + 16);
          v18 = *a1 + v17 * (v12 - 1);
          v19 = v14 + 6;
          if ((v14 - 1) >= 0)
          {
            v19 = v14 - 1;
          }

          v20 = v16 + v17 * v12;
          v21 = v16 + v17 * v13;
          v22 = v14 >> 3;
          v23 = (*(v20 + v22) >> (v14 & 7)) & 1;
          v24 = v14 + 1;
          v15 = v14 - 1;
          if (((*(v20 + (v19 >> 3)) >> (v15 & 7)) & 1) + ((*(v21 + (v19 >> 3)) >> (v15 & 7)) & 1) + ((*(v18 + (v19 >> 3)) >> (v15 & 7)) & 1) + ((*(v18 + v22) >> (v14 & 7)) & 1) + v23 + ((*(v21 + v22) >> (v14 & 7)) & 1) + ((*(v18 + (v24 >> 3)) >> ((v14 + 1) & 7)) & 1) + ((*(v20 + (v24 >> 3)) >> ((v14 + 1) & 7)) & 1) + ((*(v21 + (v24 >> 3)) >> ((v14 + 1) & 7)) & 1u) > 1 || v23 != 0)
          {
            sub_2A154(a2, v14, v12, 1);
          }

          v14 = v24;
        }

        while (HIDWORD(v8) != v24);
      }

      v12 = v13;
    }

    while (v13 != v10);
  }
}

unint64_t sub_2AE38(uint64_t a1)
{
  v5 = a1 + 8;
  v3 = *(a1 + 8);
  v4 = *(v5 + 4);
  if (v4 < 1)
  {
    v49 = 0;
    v48 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = vdupq_n_s32(v3 - 1);
    v10 = -1;
    v11.i64[0] = 0x700000007;
    v11.i64[1] = 0x700000007;
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13.i64[0] = 0x800000008;
    v13.i64[1] = 0x800000008;
    v14 = v3;
    v15 = -1;
    v16 = v4;
    do
    {
      if (v8 >= 1)
      {
        v17 = 0;
        while (!v7[v17])
        {
          if (v8 == ++v17)
          {
            goto LABEL_22;
          }
        }

        if (v3 >= 1)
        {
          v18 = vdupq_n_s32(v10);
          v19 = vdupq_n_s32(v14);
          v20 = vdupq_n_s32(v15);
          v21 = vdupq_n_s32(v16);
          v22 = (v3 + 7) & 0xFFFFFFF8;
          v23 = v7;
          v24 = v18;
          v25 = v19;
          v26 = vdupq_n_s32(v6);
          v27 = v20;
          v28 = v21;
          v29 = xmmword_54F90;
          v30 = xmmword_54F80;
          do
          {
            v31 = v28;
            v32 = v21;
            v33 = v27;
            v34 = v20;
            v35 = v25;
            v36 = v19;
            v37 = v24;
            v38 = v18;
            v39 = vcgeq_u32(v9, v29);
            v40 = vmovn_s32(v39);
            v41 = vuzp1_s8(v40, *v9.i8);
            if (v41.i8[0])
            {
              v41.i8[0] = *v23;
            }

            if (vuzp1_s8(v40, *&v9).i8[1])
            {
              v41.i8[1] = *v23;
              v41.i8[2] = *v23;
              v41.i8[3] = *v23;
            }

            v42 = vcgeq_u32(v9, v30);
            v43 = vmovn_s32(v42);
            if (vuzp1_s8(*&v9, v43).i32[1])
            {
              v41.i8[4] = *v23;
            }

            if (vuzp1_s8(*&v9, v43).i8[5])
            {
              v41.i8[5] = *v23;
            }

            if (vuzp1_s8(*&v9, v43).i8[6])
            {
              v41.i8[6] = *v23;
              v41.i8[7] = *v23;
            }

            v44 = vmovl_u8(v41);
            v45 = vmovl_high_u16(v44);
            v46 = vbicq_s8(v39, vceqzq_s32(vandq_s8(vshlq_u32(v12, vandq_s8(v29, v11)), vmovl_u16(*v44.i8))));
            v47 = vbicq_s8(v42, vceqzq_s32(vandq_s8(vshlq_u32(v12, vandq_s8(v30, v11)), v45)));
            v28 = vbslq_s8(v47, vminq_s32(v26, v28), v28);
            v21 = vbslq_s8(v46, vminq_s32(v26, v21), v21);
            v27 = vbslq_s8(v47, vmaxq_s32(v26, v27), v27);
            v20 = vbslq_s8(v46, vmaxq_s32(v26, v20), v20);
            v25 = vbslq_s8(v47, vminq_s32(v30, v25), v25);
            v19 = vbslq_s8(v46, vminq_s32(v29, v36), v36);
            v24 = vbslq_s8(v47, vmaxq_s32(v30, v37), v37);
            v18 = vbslq_s8(v46, vmaxq_s32(v29, v38), v38);
            v29 = vaddq_s32(v29, v13);
            v30 = vaddq_s32(v30, v13);
            ++v23;
            v22 -= 8;
          }

          while (v22);
          v10 = vmaxvq_s32(vmaxq_s32(vbslq_s8(v39, v18, v38), vbslq_s8(v42, v24, v37)));
          v14 = vminvq_s32(vminq_s32(vbslq_s8(v39, v19, v36), vbslq_s8(v42, v25, v35)));
          v15 = vmaxvq_s32(vmaxq_s32(vbslq_s8(v39, v20, v34), vbslq_s8(v42, v27, v33)));
          v16 = vminvq_s32(vminq_s32(vbslq_s8(v39, v21, v32), vbslq_s8(v42, v28, v31)));
        }
      }

LABEL_22:
      ++v6;
      v7 += v8;
    }

    while (v6 != v4);
    v48 = v10 + 1;
    v49 = v15 + 1;
    LODWORD(v4) = v16;
    v3 = v14;
  }

  return sub_12194(v3, v4, v48, v49);
}

uint64_t sub_2B108(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      if (v8 <= 0)
      {
        LODWORD(v10) = v7 + 1;
      }

      else
      {
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          v11 = *v6;
          v12 = *(v6 + 12);
          v13 = *(v6 + 16);
          v14 = *v6 + v13 * v7;
          LOBYTE(v15) = a3;
          if (v9)
          {
            LOBYTE(v15) = a3;
            if (v12 > v7)
            {
              v15 = *(v14 + ((v9 - 1) >> 3)) >> ((v9 - 1) & 7);
            }
          }

          v16 = v9 + 1;
          LOBYTE(v17) = a3;
          if (v8 > v16)
          {
            LOBYTE(v17) = a3;
            if (v12 > v7)
            {
              v17 = *(v14 + (v16 >> 3)) >> ((v9 + 1) & 7);
            }
          }

          v18 = v9 >> 3;
          v19 = v9 & 7;
          LOBYTE(v20) = a3;
          if (v7)
          {
            LOBYTE(v20) = a3;
            if (v12 >= v7)
            {
              v20 = *(v11 + v13 * (v7 - 1) + v18) >> v19;
            }
          }

          LOBYTE(v21) = a3;
          if (v12 > v10)
          {
            v21 = *(v11 + v13 * v10 + v18) >> v19;
          }

          result = sub_2A154(a2, v16 - 1, v7, (*(v14 + v18) >> v19) & 1 & v15 & v17 & v20 & v21);
          v8 = *(v6 + 8);
          v9 = v16;
        }

        while (v16 < v8);
        v3 = *(v6 + 12);
      }

      v7 = v10;
    }

    while (v10 < v3);
  }

  return result;
}

unsigned __int8 *sub_2B274(unsigned __int8 *result, uint64_t *a2, int a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a2;
    v7 = *result;
    v8 = *(a2 + 4);
    v9 = *(result + 7);
    v10 = *(result + 4);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        result = v7;
        do
        {
          if (*result > a3)
          {
            *(v6 + (v11 >> 3)) |= 1 << (v11 & 7);
          }

          ++v11;
          result += v9;
        }

        while (v5 != v11);
      }

      ++v4;
      v7 += v10;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return result;
}

unint64_t sub_2B300(uint64_t *a1, int a2, int a3)
{
  if (a2 < 0 || (LODWORD(v3) = a3, a3 < 0) || (v4 = *(a1 + 2), v4 <= a2) || (v5 = *(a1 + 3), v5 <= a3) || (v6 = *a1, v7 = *(a1 + 4), v8 = *a1 + v7 * a3, v9 = a2 >> 3, v10 = 1 << (a2 & 7), (v10 & *(v8 + v9)) == 0))
  {
    puts("bitmaskBoundingBitmapRectWithSeedPoint: seed point outside bitmask");
    v13 = 0;
    LODWORD(v14) = 0;
    v15 = 0;
    v3 = 0;
  }

  else
  {
    LODWORD(v11) = a2;
    while (1)
    {
      v12 = __OFSUB__(v11, 1);
      v11 = (v11 - 1);
      if (((v11 & 0x80000000) != 0) != v12)
      {
        break;
      }

      if (((*(v8 + (v11 >> 3)) >> (v11 & 7)) & 1) == 0)
      {
        v13 = (v11 + 1);
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_15:
    v17 = a2 + 1;
    while (v4 != v17)
    {
      v18 = *(v8 + (v17 >> 3));
      v19 = v17++ & 7;
      if (((v18 >> v19) & 1) == 0)
      {
        v15 = v17 - 1;
        goto LABEL_20;
      }
    }

    v15 = v4;
LABEL_20:
    LODWORD(v14) = v3 + 1;
    v20 = (v6 + v9 + (v3 - 1) * v7);
    v21 = v3;
    while (1)
    {
      v22 = v21-- < 1;
      if (v22)
      {
        break;
      }

      v23 = *v20;
      LODWORD(v14) = v14 - 1;
      v20 -= v7;
      if ((v10 & v23) == 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v14) = 0;
LABEL_25:
    v24 = ~v3 + v5;
    v25 = (v6 + v9 + v7 + v7 * v3);
    do
    {
      if (!v24)
      {
        v3 = v5;
        goto LABEL_30;
      }

      v26 = *v25;
      v3 = (v3 + 1);
      --v24;
      v25 += v7;
    }

    while ((v10 & v26) != 0);
    while (1)
    {
LABEL_30:
      if (v13 < 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v3 <= v14;
        v28 = 1;
        v29 = v13;
        while (v3 > v14)
        {
          v30 = v29 + 6;
          if (v29 >= 1)
          {
            v30 = v29 - 1;
          }

          v31 = (v6 + v7 * v14 + (v30 >> 3));
          v32 = v3 - v14;
          while (((1 << ((v29 - 1) & 7)) & *v31) == 0)
          {
            v31 += v7;
            if (!--v32)
            {
              v13 = v29;
              v27 = v28;
              goto LABEL_43;
            }
          }

          v28 = 0;
          v22 = v29 < 2;
          v29 = (v29 - 1);
          if (v22)
          {
            v13 = 0;
            break;
          }
        }
      }

LABEL_43:
      if (v15 < v4)
      {
        v33 = v27;
        v34 = v15;
        while (2)
        {
          if (v3 > v14)
          {
            v35 = (v6 + v7 * v14 + v34 / 8);
            v36 = v3 - v14;
            while (((1 << (v34 & 7)) & *v35) == 0)
            {
              v35 += v7;
              if (!--v36)
              {
                v15 = v34;
                goto LABEL_52;
              }
            }

            v33 = 0;
            v34 = (v34 + 1);
            if (v34 != v4)
            {
              continue;
            }

            v15 = v4;
LABEL_52:
            v27 = v33;
          }

          break;
        }
      }

      if (v14 >= 1)
      {
        v14 = v14;
        v37 = v27;
        while (v13 < v15)
        {
          v38 = v13;
          while (((*(v6 + (v14 - 1) * v7 + v38 / 8) >> (v38 & 7)) & 1) == 0)
          {
            if (v15 == ++v38)
            {
              goto LABEL_64;
            }
          }

          v37 = 0;
          v22 = v14-- < 2;
          if (v22)
          {
            LODWORD(v14) = 0;
            v37 = 0;
            goto LABEL_64;
          }
        }
      }

      v37 = v27;
LABEL_64:
      if (v3 < v5)
      {
        v3 = v3;
        v39 = v37;
LABEL_66:
        if (v13 < v15)
        {
          break;
        }
      }

      if (v37)
      {
        goto LABEL_11;
      }
    }

    v40 = v13;
    do
    {
      if ((*(v6 + v3 * v7 + v40 / 8) >> (v40 & 7)))
      {
        v39 = 0;
        if (++v3 != v5)
        {
          goto LABEL_66;
        }

        v3 = v5;
        goto LABEL_30;
      }

      ++v40;
    }

    while (v15 != v40);
    if (!v39)
    {
      goto LABEL_30;
    }
  }

LABEL_11:

  return sub_12194(v13, v14, v15, v3);
}

double sub_2B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= SHIDWORD(a2))
  {
    return ((HIDWORD(a3) + a3) / 2);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    if (a3 < SHIDWORD(a3))
    {
      v7 = a3;
      do
      {
        v8 = *(*a1 + *(a1 + 16) * v6 + v7 / 8);
        v9 = 1 << (v7 & 7);
        v10 = (v9 & v8) == 0;
        if ((v9 & v8) != 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = 0;
        }

        v5 += v11;
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v6;
        }

        v4 += v12;
        if (!v10)
        {
          ++v3;
        }

        ++v7;
      }

      while (HIDWORD(a3) != v7);
    }

    ++v6;
  }

  while (v6 != HIDWORD(a2));
  if (v3)
  {
    return ((1.0 / v3) * v5);
  }

  else
  {
    return ((HIDWORD(a3) + a3) / 2);
  }
}

double sub_2B748(uint64_t a1)
{
  v3 = sub_2AE38(a1);

  return sub_2B670(a1, v3, v2);
}

float sub_2B790(uint64_t a1)
{
  v3 = sub_2AE38(a1);

  return sub_2B7D8(a1, v3, v2);
}

float sub_2B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1.0 / (HIDWORD(a3) - a3);
  v4 = HIDWORD(a2) - a2;
  v5 = 1.0 / (HIDWORD(a2) - a2);
  if (SHIDWORD(a2) <= a2)
  {
    v12 = -0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = rintf(v5 * 16777000.0);
    v9 = rintf(v3 * 16777000.0);
    do
    {
      if (SHIDWORD(a3) > a3)
      {
        v10 = (v9 >> 1) + 2048;
        v11 = a3;
        do
        {
          v7 += (*(*a1 + *(a1 + 16) * a2 + v11 / 8) >> (v11 & 7)) & 1 ^ ((((((v8 >> 1) + 2048 + v6 * v8) >> 12) - 2048) * ((((v8 >> 1) + 2048 + v6 * v8) >> 12) - 2048) + ((v10 >> 12) - 2048) * ((v10 >> 12) - 2048)) < 0x400000);
          ++v11;
          v10 += v9;
        }

        while (HIDWORD(a3) != v11);
      }

      LODWORD(a2) = a2 + 1;
      ++v6;
    }

    while (v6 != v4);
    v12 = v7 * -2.0;
  }

  return v12 * v5 * v3 + 1.0;
}

uint64_t sub_2B8F8(uint64_t a1)
{
  v3 = sub_2AE38(a1);

  return sub_2B940(a1, v3, v2);
}

uint64_t sub_2B940(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2);
  if (a2 >= SHIDWORD(a2))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if (a3 < SHIDWORD(a3))
    {
      v5 = a3;
      do
      {
        v4 = ((*(*a1 + *(a1 + 16) * a2 + v5 / 8) >> (v5 & 7)) & 1) + v4;
        ++v5;
      }

      while (HIDWORD(a3) != v5);
    }

    LODWORD(a2) = a2 + 1;
  }

  while (a2 != v3);
  return v4;
}

uint64_t sub_2B9C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 - 1;
  if (v1 < 1)
  {
    v20 = 0;
  }

  else
  {
    v3 = *a1;
    v4 = (v1 + 7) & 0xFFFFFFF8;
    v5 = xmmword_54F80;
    v6 = xmmword_54F90;
    v7 = vdupq_n_s32(v2);
    v8 = 0uLL;
    v9.i64[0] = 0x700000007;
    v9.i64[1] = 0x700000007;
    v10.i64[0] = 0x800000008;
    v10.i64[1] = 0x800000008;
    v11 = 0uLL;
    do
    {
      v12 = v11;
      v13 = v8;
      v14 = vcgeq_u32(v7, v6);
      v15 = vmovn_s32(v14);
      v16 = vuzp1_s8(v15, *v5.i8);
      if (v16.i8[0])
      {
        v16.i8[0] = *v3;
      }

      if (vuzp1_s8(v15, *&v5).i8[1])
      {
        v16.i8[1] = *v3;
        v16.i8[2] = *v3;
        v16.i8[3] = *v3;
      }

      v17 = vcgeq_u32(v7, v5);
      v18 = vmovn_s32(v17);
      if (vuzp1_s8(*&v5, v18).i32[1])
      {
        v16.i8[4] = *v3;
      }

      if (vuzp1_s8(*&v5, v18).i8[5])
      {
        v16.i8[5] = *v3;
      }

      if (vuzp1_s8(*&v5, v18).i8[6])
      {
        v16.i8[6] = *v3;
        v16.i8[7] = *v3;
      }

      v19 = vmovl_u8(v16);
      v11 = vaddq_s32((*&vshlq_u32(vmovl_high_u16(v19), vnegq_s32(vandq_s8(v5, v9))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v12);
      v8 = vaddq_s32((*&vshlq_u32(vmovl_u16(*v19.i8), vnegq_s32(vandq_s8(v6, v9))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v13);
      v6 = vaddq_s32(v6, v10);
      v5 = vaddq_s32(v5, v10);
      ++v3;
      v4 -= 8;
    }

    while (v4);
    v20 = vaddvq_s32(vaddq_s32(vbslq_s8(v14, v8, v13), vbslq_s8(v17, v11, v12)));
  }

  v21 = *(a1 + 12);
  if (v21 < 3)
  {
    LODWORD(v22) = 1;
  }

  else
  {
    v22 = (v21 - 1);
    if (v2 >= 0)
    {
      v23 = v1 - 1;
    }

    else
    {
      v23 = v1 + 6;
    }

    v24 = *(a1 + 16);
    v25 = v23 >> 3;
    v26 = v2 & 7;
    v27 = (*a1 + v24);
    v28 = v22 - 1;
    do
    {
      v20 = v20 + (*v27 & 1) + ((v27[v25] >> v26) & 1u);
      v27 += v24;
      --v28;
    }

    while (v28);
  }

  v29 = v1 - 1;
  if (v1 < 1)
  {
    return v20;
  }

  v30 = (*a1 + *(a1 + 16) * v22);
  v31 = (v1 + 7) & 0xFFFFFFF8;
  v32 = 0uLL;
  v33 = v20;
  v34 = xmmword_54F80;
  v35 = xmmword_54F90;
  v36 = vdupq_n_s32(v29);
  v37.i64[0] = 0x700000007;
  v37.i64[1] = 0x700000007;
  v38.i64[0] = 0x800000008;
  v38.i64[1] = 0x800000008;
  do
  {
    v39 = v32;
    v40 = v33;
    v41 = vcgeq_u32(v36, v35);
    v42 = vmovn_s32(v41);
    v43 = vuzp1_s8(v42, *v34.i8);
    if (v43.i8[0])
    {
      v43.i8[0] = *v30;
    }

    if (vuzp1_s8(v42, *&v34).i8[1])
    {
      v43.i8[1] = *v30;
      v43.i8[2] = *v30;
      v43.i8[3] = *v30;
    }

    v44 = vcgeq_u32(v36, v34);
    v45 = vmovn_s32(v44);
    if (vuzp1_s8(*&v34, v45).i32[1])
    {
      v43.i8[4] = *v30;
    }

    if (vuzp1_s8(*&v34, v45).i8[5])
    {
      v43.i8[5] = *v30;
    }

    if (vuzp1_s8(*&v34, v45).i8[6])
    {
      v43.i8[6] = *v30;
      v43.i8[7] = *v30;
    }

    v46 = vmovl_u8(v43);
    v47 = vmovl_u16(*v46.i8);
    v32 = vaddq_s32((*&vshlq_u32(vmovl_high_u16(v46), vnegq_s32(vandq_s8(v34, v37))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v39);
    v33 = vaddq_s32((*&vshlq_u32(v47, vnegq_s32(vandq_s8(v35, v37))) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)), v40);
    v35 = vaddq_s32(v35, v38);
    v34 = vaddq_s32(v34, v38);
    ++v30;
    v31 -= 8;
  }

  while (v31);
  return vaddvq_s32(vaddq_s32(vbslq_s8(v41, v33, v40), vbslq_s8(v44, v32, v39)));
}

uint64_t sub_2BCAC(uint64_t a1, char *a2)
{
  result = puts(a2);
  if (*(a1 + 12) >= 1)
  {
    v4 = 0;
    do
    {
      printf("  ");
      if (*(a1 + 8) >= 1)
      {
        v5 = 0;
        do
        {
          if ((*(*a1 + *(a1 + 16) * v4 + (v5 >> 3)) >> (v5 & 7)))
          {
            v6 = 49;
          }

          else
          {
            v6 = 48;
          }

          putchar(v6);
          ++v5;
        }

        while (v5 < *(a1 + 8));
      }

      result = putchar(10);
      ++v4;
    }

    while (v4 < *(a1 + 12));
  }

  return result;
}

uint64_t sub_2BD6C(uint64_t a1)
{
  v2 = sub_29EFC(*(a1 + 8) / 2, *(a1 + 12) / 2);
  v3 = v2;
  v4 = *(v2 + 3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v2 + 2);
    do
    {
      if (v6 >= 1)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = *(*a1 + *(a1 + 16) * ((2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1) + (i >> 2)) | *(*a1 + *(a1 + 16) * (2 * v5) + (i >> 2));
          sub_2A154(v3, i, v5, ((v9 >> (v7 & 6 | 1)) | (v9 >> (v7 & 6))) & 1);
          v6 = *(v3 + 8);
          v7 += 2;
        }

        v4 = *(v3 + 12);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  return v3;
}

uint64_t sub_2BE68(uint64_t result, unint64_t a2, uint64_t a3, int *a4, int *a5, double a6, double a7)
{
  v7 = HIDWORD(a2);
  if (a2 >= SHIDWORD(a2))
  {
    v10 = -1;
    v9 = -1;
  }

  else
  {
    v8 = (*(result + 8) * *(result + 8) + *(result + 12) * *(result + 12));
    v9 = -1;
    v10 = -1;
    do
    {
      if (a3 < SHIDWORD(a3))
      {
        v11 = a2 - a7;
        v12 = v11 * v11;
        v13 = a3;
        do
        {
          if ((*(*result + *(result + 16) * a2 + v13 / 8) >> (v13 & 7)))
          {
            v14 = v13 - a6;
            v15 = v12 + (v14 * v14);
            if (v15 < v8)
            {
              v10 = v13;
              v9 = a2;
              v8 = v15;
            }
          }

          ++v13;
        }

        while (HIDWORD(a3) != v13);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != v7);
  }

  *a4 = v10;
  *a5 = v9;
  return result;
}

uint64_t sub_2BF34(uint64_t a1, int *a2, int *a3, double a4, double a5)
{
  v11 = sub_2AE38(a1);

  return sub_2BE68(a1, v11, v10, a2, a3, a4, a5);
}

double sub_2BFAC(uint64_t a1, uint64_t *a2, float *a3, int *a4)
{
  v9 = sub_2AE38(a1);

  return sub_2C00C(a1, a2, v9, v8, a3, a4);
}

double sub_2C00C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, float *a5, int *a6)
{
  v6 = HIDWORD(a4);
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (a4 <= 1)
  {
    LODWORD(a4) = 1;
  }

  if (v8 <= v6)
  {
    LODWORD(v6) = v8 - 1;
  }

  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (v7 <= SHIDWORD(a3))
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = HIDWORD(a3);
  }

  if (v9 >= v10)
  {
    *a5 = 0.0;
    *a6 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a2;
    v15 = *(a2 + 4);
    v16 = v15 * v9;
    v17 = *(a2 + 7);
    v18 = *a2 + v16 + -v15 - v17;
    v19 = *a2 + v16 + v17 - v15;
    v20 = *a2 + v16 - v17;
    v21 = *a2 + v17 + v16;
    v22 = *a2 + v16 - v15;
    v23 = v14 + v15 + v16 - v17;
    v24 = v14 + v15 + v16;
    v25 = v14 + v16 + v17 + v15;
    v26 = v17 * a4;
    v46 = v10;
    v47 = a4;
    do
    {
      if (a4 >= v6)
      {
        ++v9;
      }

      else
      {
        v27 = v19;
        v28 = *(a1 + 16);
        v29 = *a1 + v28 * v9;
        v30 = *a1 + v28 * (v9 + 1);
        v31 = *a1 + v28 * (v9 - 1);
        v32 = v25;
        v33 = v24;
        v49 = v23;
        v50 = v21;
        v51 = v20;
        v52 = v19;
        v53 = v22;
        v34 = v18;
        v35 = a4;
        do
        {
          v36 = v35 >> 3;
          v37 = v35 + 1;
          if (((*(v29 + v36) >> (v35 & 7)) & 1) != 0 && ((*(v29 + ((v35 + 1) >> 3)) >> ((v35 + 1) & 7)) & 1) + ((*(v30 + v36) >> (v35 & 7)) & 1) + ((*(v29 + ((v35 - 1) >> 3)) >> ((v35 - 1) & 7)) & 1) + ((*(v31 + v36) >> (v35 & 7)) & 1u) <= 3)
          {
            v38 = *(v34 + v26) - *(v32 + v26);
            if (v38 < 0)
            {
              v38 = *(v32 + v26) - *(v34 + v26);
            }

            v39 = *(v22 + v26) - *(v33 + v26);
            if (v39 < 0)
            {
              v39 = *(v33 + v26) - *(v22 + v26);
            }

            v40 = *(v27 + v26) - *(v23 + v26);
            if (v40 < 0)
            {
              v40 = *(v23 + v26) - *(v27 + v26);
            }

            v41 = *(v20 + v26) - *(v21 + v26);
            if (v41 < 0)
            {
              v41 = *(v21 + v26) - *(v20 + v26);
            }

            v42 = v40 + v41 + v39 + v38;
            if (v42 >= v11)
            {
              v43 = v11;
            }

            else
            {
              v43 = v42;
            }

            if (v12)
            {
              v11 = v43;
            }

            else
            {
              v11 = v42;
            }

            v13 += v42;
            ++v12;
          }

          v34 += v17;
          v22 += v17;
          v27 += v17;
          v20 += v17;
          v21 += v17;
          v23 += v17;
          v33 += v17;
          v32 += v17;
          v35 = v37;
        }

        while (v6 != v37);
        v10 = v46;
        LODWORD(a4) = v47;
        ++v9;
        v19 = v52;
        v22 = v53;
        v21 = v50;
        v20 = v51;
        v23 = v49;
      }

      v18 += v15;
      v22 += v15;
      v19 += v15;
      v20 += v15;
      v21 += v15;
      v23 += v15;
      v24 += v15;
      v25 += v15;
    }

    while (v9 != v10);
    *a5 = v11;
    *a6 = v12;
    if (v12)
    {
      *&result = v13 / v12;
      return result;
    }
  }

  return 0.0;
}

void sub_2C2D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2AE38(a1);
  v8 = v7;
  *(a3 + 36) = v6;
  *(a3 + 44) = v7;
  *a3 = sub_2B670(a1, v6, v7);
  *(a3 + 8) = v9;
  *(a3 + 16) = sub_2B940(a1, v6, v8);
  *(a3 + 20) = sub_2B7D8(a1, v6, v8);
  v10 = sub_2C00C(a1, a2, v6, v8, (a3 + 28), (a3 + 32));
  *(a3 + 24) = LODWORD(v10);
  v11 = *(a3 + 36) < 1 || *(a3 + 40) >= *(a1 + 12) || *(a3 + 44) < 1 || *(a3 + 48) >= *(a1 + 8);
  *(a3 + 56) = v11;
}

void sub_2C3C0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v8 = sub_2B300(a1, a4, a5);
  v10 = v9;
  *(a3 + 36) = v8;
  *(a3 + 44) = v9;
  *a3 = sub_2B670(a1, v8, v9);
  *(a3 + 8) = v11;
  *(a3 + 16) = sub_2B940(a1, v8, v10);
  *(a3 + 20) = sub_2B7D8(a1, v8, v10);
  v12 = sub_2C00C(a1, a2, v8, v10, (a3 + 28), (a3 + 32));
  *(a3 + 24) = LODWORD(v12);
  v13 = *(a3 + 36) < 1 || *(a3 + 40) >= *(a1 + 12) || *(a3 + 44) < 1 || *(a3 + 48) >= *(a1 + 8);
  *(a3 + 56) = v13;
}

void sub_2C4B4(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (!a1)
  {
    sub_4AE98();
  }

  if (vmaxv_u16(vmovn_s32(vcgtq_s32(vextq_s8(a3, a4, 8uLL), vextq_s8(a4, a3, 8uLL)))))
  {
    sub_4AE40();
  }

  v4 = vsub_s32(*&vextq_s8(a3, a3, 8uLL), *a3.i8);
  v5 = vcgt_u32(0x8000000080000000, v4);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0 || (v6 = vsubq_s32(a3, a4).u64[0], v7 = vcgez_s32(v6), (vpmin_u32(v7, v7).u32[0] & 0x80000000) == 0))
  {
    sub_4AE6C();
  }

  v8 = vadd_s32(v4, 0x100000001);
  v9 = v8.i32[1];
  if (v8.i32[1] >= 1)
  {
    v11 = (a1 + v6.i32[1] * a2 + v6.i32[0]);
    v12 = v8.i32[0];
    do
    {
      bzero(v11, v12);
      v11 += a2;
      --v9;
    }

    while (v9);
  }
}

double sub_2C578(uint64_t a1)
{
  *a1 = xmmword_54FA0;
  *&result = 0x8000000080000000;
  *(a1 + 16) = 0x8000000080000000;
  return result;
}

uint64_t sub_2C590(uint64_t result, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5, int32x2_t a6, int32x2_t a7, int32x2_t a8, int32x2_t a9)
{
  if (!result)
  {
    sub_4AF48();
  }

  if (!a2)
  {
    sub_4AF1C();
  }

  if (vmaxv_u16(vmovn_s32(vcgtq_s32(vextq_s8(a4, a5, 8uLL), vextq_s8(a5, a4, 8uLL)))))
  {
    sub_4AEC4();
  }

  v11 = vcgt_u32(0x8000000080000000, vsub_s32(*&vextq_s8(a4, a4, 8uLL), *a4.i8));
  if ((vpmin_u32(v11, v11).u32[0] & 0x80000000) == 0 || (v12 = vcgez_s32(vsub_s32(*a4.i8, *a5.i8)), (vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0))
  {
    sub_4AEF0();
  }

  if (a4.i32[1] <= a4.i32[3])
  {
    v15 = result;
    v16 = a4.i32[0];
    v17 = a4.i32[2];
    v18 = a4.i32[2] + 1;
    v19 = a4.u32[1];
    v20 = a4.i32[3] + 1;
    v21 = (a2 + a3 * (a4.i32[1] - a5.i32[1]) + 4 * a4.i32[0] - 4 * a5.i32[0]);
    do
    {
      if (v16 <= v17)
      {
        v22 = v16;
        v23 = v21;
        do
        {
          result = sub_2C7D8(a6, a7, a8, a9, __PAIR64__(v19, v22));
          if (result)
          {
            v24.i32[0] = *v23;
            v25 = vmovl_u8(v24);
            v26 = v25.u16[2];
            v27 = v25.u16[1];
            v28 = v25.u16[0];
            v29 = llroundf((((v27 * -0.41869) + (v26 * 0.5)) + (v28 * -0.08131)) + 127.5);
            v30 = *(v15 + 8);
            if (v30 >= v29)
            {
              v30 = v29;
            }

            *(v15 + 8) = v30;
            v31 = vcvt_s32_f32(vrnda_f32(vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(0xBEA99AE93F1645A2, v27), 0xBE2CCA2E3E991687, v26), 0x3F0000003DE978D5, v28), 0x42FF000000000000)));
            *v15 = vmin_s32(*v15, v31);
            *(v15 + 12) = vmax_s32(*(v15 + 12), v31);
            if (*(v15 + 20) > v29)
            {
              v29 = *(v15 + 20);
            }

            *(v15 + 20) = v29;
          }

          ++v23;
          ++v22;
        }

        while (v18 != v22);
      }

      ++v19;
      v21 = (v21 + a3);
    }

    while (v20 != v19);
  }

  return result;
}

uint64_t sub_2C7D8(int32x2_t a1, int32x2_t a2, int32x2_t a3, int32x2_t a4, int32x2_t a5)
{
  v5 = 0;
  v6 = vmul_s32(vrev64_s32(vsub_s32(a2, a1)), vsub_s32(a5, a1));
  if (vcge_s32(vdup_lane_s32(v6, 1), v6).u8[0])
  {
    v7 = vmul_s32(vrev64_s32(vsub_s32(a3, a2)), vsub_s32(a5, a2));
    v8 = vmul_s32(vrev64_s32(vsub_s32(a4, a3)), vsub_s32(a5, a3));
    v9 = vcge_s32(vzip2_s32(v8, v7), vzip1_s32(v8, v7));
    if (v9.i8[4] & 1) != 0 && (v9.i8[0])
    {
      v10 = vmul_s32(vrev64_s32(vsub_s32(a1, a4)), vsub_s32(a5, a4));
      v5 = vcge_s32(vdup_lane_s32(v10, 1), v10).u8[0];
    }
  }

  return v5 & 1;
}

float32x4_t sub_2C85C(uint64_t a1, float32x4_t *a2, float32x4_t a3, double a4, float32x4_t a5)
{
  *a3.f32 = vcvt_f32_s32(*a1);
  a3.f32[2] = *(a1 + 8);
  v5 = vdupq_n_s32(0x3B808081u);
  v6 = vmulq_f32(a3, v5);
  *a5.f32 = vcvt_f32_s32(*(a1 + 12));
  a5.f32[2] = *(a1 + 20);
  v7 = vmulq_f32(a5, v5);
  v8.i64[0] = 0x4200000042000000;
  v8.i64[1] = 0x4200000042000000;
  __asm { FMOV            V4.4S, #24.0 }

  v14 = vdivq_f32(vmulq_f32(vsubq_f32(v7, v6), v8), _Q4);
  v15 = vdupq_n_s32(0x3E008081u);
  v16 = vbslq_s8(vcgtq_f32(v14, v15), v14, v15);
  v16.i32[2] = fmaxf(v14.f32[2], 0.12549);
  v17 = vaddq_f32(v6, v7);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v18 = vmulq_f32(v17, v7);
  v7.i64[0] = 0xBF000000BF000000;
  v7.i64[1] = 0xBF000000BF000000;
  result = vmlaq_f32(v18, v7, v16);
  *a2 = result;
  a2[1] = vdivq_f32(v8, v16);
  return result;
}

uint64_t sub_2C8F4(uint64_t result, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5, float32x4_t a6, float32x4_t a7, int32x2_t a8, int32x2_t a9, int32x2_t a10, int32x2_t a11)
{
  if (!a3)
  {
    sub_4AFF8();
  }

  if (!result)
  {
    sub_4AFCC();
  }

  if (vmaxv_u16(vmovn_s32(vcgtq_s32(vextq_s8(a4, a5, 8uLL), vextq_s8(a5, a4, 8uLL)))))
  {
    sub_4AF74();
  }

  v11 = vcgt_u32(0x8000000080000000, vsub_s32(*&vextq_s8(a4, a4, 8uLL), *a4.i8));
  if ((vpmin_u32(v11, v11).u32[0] & 0x80000000) == 0 || (v12 = vcgez_s32(vsub_s32(*a4.i8, *a5.i8)), (vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0))
  {
    sub_4AFA0();
  }

  if (a4.i32[1] <= a4.i32[3])
  {
    v19 = a4.i32[0];
    v20 = a4.i32[2];
    v21 = a4.i32[2] + 1;
    v22 = a4.u32[1];
    v23 = a4.i32[3] + 1;
    v24 = (result + a2 * (a4.i32[1] - a5.i32[1]) + 4 * a4.i32[0] - 4 * a5.i32[0]);
    do
    {
      if (v19 <= v20)
      {
        v25 = v19;
        v26 = v24;
        do
        {
          result = sub_2C7D8(a8, a9, a10, a11, __PAIR64__(v22, v25));
          if (result)
          {
            v27.i32[0] = *v26;
            v29 = vmovl_u8(v27);
            v30 = v29.u16[2] * 0.0039216;
            v31 = v29.u16[1] * 0.0039216;
            *v29.i32 = v29.u16[0] * 0.0039216;
            *v28.f32 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(0xBEA99AE93F1645A2, v31), 0xBE2CCA2E3E991687, v30), 0x3F0000003DE978D5, *v29.i32), 0x3F00000000000000);
            v28.f32[2] = (((v31 * -0.41869) + (v30 * 0.5)) + (*v29.i32 * -0.08131)) + 0.5;
            v32 = vmulq_f32(a7, vsubq_f32(v28, a6));
            v33 = vrndmq_f32(v32);
            v33.i32[2] = floorf(v32.f32[2]);
            v34 = vcvtq_s32_f32(v33);
            v35 = vcgezq_s32(v34);
            v35.i32[3] = v35.i32[2];
            if ((vminvq_u32(v35) & 0x80000000) != 0)
            {
              v36.i64[0] = 0x2000000020;
              v36.i64[1] = 0x2000000020;
              v37 = vcgtq_s32(v36, v34);
              v37.i32[3] = v37.i32[2];
              if ((vminvq_u32(v37) & 0x80000000) != 0)
              {
                *(a3 + v34.i32[0] + 32 * v34.i32[1] + (v34.i32[2] << 10)) = 1;
              }
            }
          }

          ++v26;
          ++v25;
        }

        while (v21 != v25);
      }

      ++v22;
      v24 = (v24 + a2);
    }

    while (v23 != v22);
  }

  return result;
}

uint64_t sub_2CB74(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9)
{
  v9 = 0;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vminvq_u32(v10);
  v12.i64[0] = 0x2000000020;
  v12.i64[1] = 0x2000000020;
  do
  {
    v13 = 0;
    a9.n128_u32[0] = v9;
    v14 = a2;
    do
    {
      v15 = 0;
      v16 = a9;
      v16.n128_u32[1] = v13;
      v17 = v14;
      do
      {
        v18 = 0;
        v19 = v16;
        v19.i32[2] = v15;
        v20 = v19;
        v20.i32[3] = 0;
        v21 = vmaxq_s32(v20, 0);
        v21.i32[3] = 0;
        v22 = vminq_s32(v21, xmmword_54FB0);
        v23 = vceqq_s32(v22, v19);
        v23.i32[3] = v23.i32[2];
        if ((vminvq_u32(v23) & 0x80000000) != 0)
        {
          v24 = vshl_u32(*&vextq_s8(v22, v22, 4uLL), 0xA00000005);
          v18 = *(result + v24.i32[0] + v22.i32[0] + v24.i32[1]);
        }

        v25 = 0;
        v26 = vaddq_s32(v19, xmmword_54FC0);
        v27 = v26;
        v27.i32[3] = 0;
        v28 = vmaxq_s32(v27, 0);
        v28.i32[3] = 0;
        v29 = vminq_s32(v28, xmmword_54FB0);
        v30 = vceqq_s32(v29, v26);
        v30.i32[3] = v30.i32[2];
        if ((vminvq_u32(v30) & 0x80000000) != 0)
        {
          v31 = vshl_u32(*&vextq_s8(v29, v29, 4uLL), 0xA00000005);
          v25 = *(result + v31.i32[0] + v29.i32[0] + v31.i32[1]);
        }

        v32 = 0;
        v33 = vaddq_s32(v19, xmmword_54AB0);
        v34 = v33;
        v34.i32[3] = 0;
        v35 = vmaxq_s32(v34, 0);
        v35.i32[3] = 0;
        v36 = vminq_s32(v35, xmmword_54FB0);
        v37 = vceqq_s32(v36, v33);
        v37.i32[3] = v37.i32[2];
        if ((vminvq_u32(v37) & 0x80000000) != 0)
        {
          v38 = vshl_u32(*&vextq_s8(v36, v36, 4uLL), 0xA00000005);
          v32 = *(result + v38.i32[0] + v36.i32[0] + v38.i32[1]);
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }
        }

        else if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v39 = vcgtq_u32(v12, v19);
        v39.i32[3] = v39.i32[2];
        if ((vminvq_u32(v39) & 0x80000000) != 0)
        {
          *v17 = v25 | v18 | v32;
        }

LABEL_14:
        ++v15;
        v17 += 1024;
      }

      while (v15 != 32);
      ++v13;
      v14 += 32;
    }

    while (v13 != 32);
    ++v9;
    ++a2;
  }

  while (v9 != 32);
  return result;
}

uint64_t sub_2CD1C(uint64_t result, _BYTE *a2, float a3, float a4, float a5)
{
  v7 = 0;
  LODWORD(v5) = vcvtas_u32_f32((a5 - a3) * a4);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vminvq_u32(v8);
  v10.i64[0] = 0x2000000020;
  v10.i64[1] = 0x2000000020;
  v11.i64[0] = 0xFFFFFFFF00000000;
  v11.i64[1] = 0xFFFFFFFF00000000;
  do
  {
    v12 = 0;
    v6.i32[0] = v7;
    v13 = a2;
    do
    {
      v14 = 0;
      v15 = v6;
      v15.i32[1] = v12;
      v16 = v13;
      do
      {
        v17 = 0;
        v18 = v15;
        v18.i32[2] = v14;
        v19 = v18;
        v19.i32[3] = 0;
        v20 = vmaxq_s32(v19, 0);
        v20.i32[3] = 0;
        v21 = vminq_s32(v20, xmmword_54FB0);
        v22 = vceqq_s32(v21, v18);
        v22.i32[3] = v22.i32[2];
        if ((vminvq_u32(v22) & 0x80000000) != 0)
        {
          v23 = vshl_u32(*&vextq_s8(v21, v21, 4uLL), 0xA00000005);
          v17 = *(result + v23.i32[0] + v21.i32[0] + v23.i32[1]);
        }

        if (v7 >= v5)
        {
          v24 = 0;
          v25 = vaddq_s32(v18, v11);
          v26 = v25;
          v26.i32[3] = 0;
          v27 = vmaxq_s32(v26, 0);
          v27.i32[3] = 0;
          v28 = vminq_s32(v27, xmmword_54FB0);
          v29 = vceqq_s32(v28, v25);
          v29.i32[3] = v29.i32[2];
          if ((vminvq_u32(v29) & 0x80000000) != 0)
          {
            v30 = vshl_u32(*&vextq_s8(v28, v28, 4uLL), 0xA00000005);
            v24 = *(result + v30.i32[0] + v28.i32[0] + v30.i32[1]);
          }

          v31 = 0;
          v32 = vaddq_s32(v18, xmmword_54FD0);
          v33 = v32;
          v33.i32[3] = 0;
          v34 = vmaxq_s32(v33, 0);
          v34.i32[3] = 0;
          v35 = vminq_s32(v34, xmmword_54FB0);
          v36 = vceqq_s32(v35, v32);
          v36.i32[3] = v36.i32[2];
          if ((vminvq_u32(v36) & 0x80000000) != 0)
          {
            v37 = vshl_u32(*&vextq_s8(v35, v35, 4uLL), 0xA00000005);
            v31 = *(result + v37.i32[0] + v35.i32[0] + v37.i32[1]);
          }

          v38 = 0;
          v39 = vaddq_s32(v18, xmmword_54FE0);
          v40 = v39;
          v40.i32[3] = 0;
          v41 = vmaxq_s32(v40, 0);
          v41.i32[3] = 0;
          v42 = vminq_s32(v41, xmmword_54FB0);
          v43 = vceqq_s32(v42, v39);
          v43.i32[3] = v43.i32[2];
          if ((vminvq_u32(v43) & 0x80000000) != 0)
          {
            v44 = vshl_u32(*&vextq_s8(v42, v42, 4uLL), 0xA00000005);
            v38 = *(result + v44.i32[0] + v42.i32[0] + v44.i32[1]);
          }

          v45 = 0;
          v46 = vaddq_s32(v18, xmmword_54D50);
          v47 = v46;
          v47.i32[3] = 0;
          v48 = vmaxq_s32(v47, 0);
          v48.i32[3] = 0;
          v49 = vminq_s32(v48, xmmword_54FB0);
          v50 = vceqq_s32(v49, v46);
          v50.i32[3] = v50.i32[2];
          if ((vminvq_u32(v50) & 0x80000000) != 0)
          {
            v51 = vshl_u32(*&vextq_s8(v49, v49, 4uLL), 0xA00000005);
            v45 = *(result + v51.i32[0] + v49.i32[0] + v51.i32[1]);
          }

          v17 |= v24 | v31 | v38 | v45;
        }

        if ((v9 & 0x80000000) != 0)
        {
          v52 = vcgtq_u32(v10, v18);
          v52.i32[3] = v52.i32[2];
          if ((vminvq_u32(v52) & 0x80000000) != 0)
          {
            *v16 = v17;
          }
        }

        ++v14;
        v16 += 1024;
      }

      while (v14 != 32);
      ++v12;
      v13 += 32;
    }

    while (v12 != 32);
    ++v7;
    ++a2;
  }

  while (v7 != 32);
  return result;
}

uint64_t sub_2CF84(uint64_t result, uint64_t a2, float a3, float a4, float a5, double a6, __n128 a7)
{
  v8 = 0;
  LODWORD(v7) = vcvtas_u32_f32((a5 - a3) * a4);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vminvq_u32(v9);
  v11.i64[0] = 0x2000000020;
  v11.i64[1] = 0x2000000020;
  do
  {
    v12 = 0;
    a7.n128_u32[0] = v8;
    do
    {
      v13 = 0;
      v14 = a7;
      v14.n128_u32[1] = v12;
      do
      {
        v15 = v14;
        v15.i32[2] = v13;
        if (v8 >= v7)
        {
          v16 = 0;
          for (i = -1; i != 2; ++i)
          {
            v23.i32[0] = 0;
            v23.i64[1] = 0;
            v23.i32[1] = i;
            for (j = -1; j != 2; ++j)
            {
              v25 = 0;
              v26 = v23;
              v26.i32[2] = j;
              v27 = vaddq_s32(v26, v15);
              v28 = v27;
              v28.i32[3] = 0;
              v29 = vmaxq_s32(v28, 0);
              v29.i32[3] = 0;
              v30 = vminq_s32(v29, xmmword_54FB0);
              v31 = vceqq_s32(v30, v27);
              v31.i32[3] = v31.i32[2];
              if ((vminvq_u32(v31) & 0x80000000) != 0)
              {
                v32 = vshl_u32(*&vextq_s8(v30, v30, 4uLL), 0xA00000005);
                v25 = *(result + v32.i32[0] + v30.i32[0] + v32.i32[1]);
              }

              v16 |= v25;
            }
          }
        }

        else
        {
          v16 = 0;
          v17 = v15;
          v17.i32[3] = 0;
          v18 = vmaxq_s32(v17, 0);
          v18.i32[3] = 0;
          v19 = vminq_s32(v18, xmmword_54FB0);
          v20 = vceqq_s32(v19, v15);
          v20.i32[3] = v20.i32[2];
          if ((vminvq_u32(v20) & 0x80000000) != 0)
          {
            v21 = vshl_u32(*&vextq_s8(v19, v19, 4uLL), 0xA00000005);
            v16 = *(result + v21.i32[0] + v19.i32[0] + v21.i32[1]);
          }
        }

        if ((v10 & 0x80000000) != 0)
        {
          v33 = vcgtq_u32(v11, v15);
          v33.i32[3] = v33.i32[2];
          if ((vminvq_u32(v33) & 0x80000000) != 0)
          {
            *(a2 + 32 * v12 + (v13 << 10) + v8) = v16;
          }
        }

        ++v13;
      }

      while (v13 != 32);
      ++v12;
    }

    while (v12 != 32);
    ++v8;
  }

  while (v8 != 32);
  return result;
}

uint64_t sub_2D104(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = 0;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vminvq_u32(v9);
  v11.i64[0] = 0x2000000020;
  v11.i64[1] = 0x2000000020;
  do
  {
    v12 = 0;
    a8.n128_u32[0] = v8;
    v13 = a2;
    do
    {
      v14 = 0;
      v15 = a8;
      v15.n128_u32[1] = v12;
      v16 = v13;
      do
      {
        if ((v10 & 0x80000000) != 0)
        {
          v17 = v15;
          v17.i32[2] = v14;
          v18 = vcgtq_u32(v11, v17);
          v18.i32[3] = v18.i32[2];
          if ((vminvq_u32(v18) & 0x80000000) != 0)
          {
            v19 = v17;
            v19.i32[3] = 0;
            v20 = vmaxq_s32(v19, 0);
            v20.i32[3] = 0;
            v21 = vminq_s32(v20, xmmword_54FB0);
            v22 = *(result + v21.i32[0] + 32 * v21.i32[1] + (v21.i32[2] << 10));
            v23 = vaddq_s32(v17, xmmword_54FC0);
            v23.i32[3] = 0;
            v24 = vmaxq_s32(v23, 0);
            v24.i32[3] = 0;
            v25 = vminq_s32(v24, xmmword_54FB0);
            v26 = vaddq_s32(v17, xmmword_54AB0);
            v26.i32[3] = 0;
            v27 = vmaxq_s32(v26, 0);
            v27.i32[3] = 0;
            v28 = vminq_s32(v27, xmmword_54FB0);
            *v16 = *(result + v25.i32[0] + 32 * v25.i32[1] + (v25.i32[2] << 10)) & v22 & *(result + v28.i32[0] + 32 * v28.i32[1] + (v28.i32[2] << 10));
          }
        }

        ++v14;
        v16 += 1024;
      }

      while (v14 != 32);
      ++v12;
      v13 += 32;
    }

    while (v12 != 32);
    ++v8;
    ++a2;
  }

  while (v8 != 32);
  return result;
}

uint64_t sub_2D234(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  v10 = 0;
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  v12 = vminvq_u32(v11);
  v13.i64[0] = 0xFFFFFFFF00000000;
  v13.i64[1] = 0xFFFFFFFF00000000;
  v14.i64[0] = 0x2000000020;
  v14.i64[1] = 0x2000000020;
  do
  {
    v15 = 0;
    a10.n128_u32[0] = v10;
    v16 = a2;
    do
    {
      v17 = 0;
      v18 = a10;
      v18.n128_u32[1] = v15;
      v19 = v16;
      do
      {
        if ((v12 & 0x80000000) != 0)
        {
          v20 = v18;
          v20.i32[2] = v17;
          v21 = vcgtq_u32(v14, v20);
          v21.i32[3] = v21.i32[2];
          if ((vminvq_u32(v21) & 0x80000000) != 0)
          {
            v22 = v20;
            v22.i32[3] = 0;
            v23 = vmaxq_s32(v22, 0);
            v23.i32[3] = 0;
            v24 = vminq_s32(v23, xmmword_54FB0);
            v25 = *(result + v24.i32[0] + 32 * v24.i32[1] + (v24.i32[2] << 10));
            v26 = vaddq_s32(v20, v13);
            v26.i32[3] = 0;
            v27 = vmaxq_s32(v26, 0);
            v27.i32[3] = 0;
            v28 = vminq_s32(v27, xmmword_54FB0);
            v29 = *(result + v28.i32[0] + 32 * v28.i32[1] + (v28.i32[2] << 10));
            v30 = vaddq_s32(v20, xmmword_54FD0);
            v30.i32[3] = 0;
            v31 = vmaxq_s32(v30, 0);
            v31.i32[3] = 0;
            v32 = vminq_s32(v31, xmmword_54FB0);
            v33 = v29 & v25;
            v34 = *(result + v32.i32[0] + 32 * v32.i32[1] + (v32.i32[2] << 10));
            v35 = vaddq_s32(v20, xmmword_54FE0);
            v35.i32[3] = 0;
            v36 = vmaxq_s32(v35, 0);
            v36.i32[3] = 0;
            v37 = vminq_s32(v36, xmmword_54FB0);
            v38 = vaddq_s32(v20, xmmword_54D50);
            v38.i32[3] = 0;
            v39 = vmaxq_s32(v38, 0);
            v39.i32[3] = 0;
            v40 = vminq_s32(v39, xmmword_54FB0);
            *v19 = v33 & v34 & *(result + v37.i32[0] + 32 * v37.i32[1] + (v37.i32[2] << 10)) & *(result + v40.i32[0] + 32 * v40.i32[1] + (v40.i32[2] << 10));
          }
        }

        ++v17;
        v19 += 1024;
      }

      while (v17 != 32);
      ++v15;
      v16 += 32;
    }

    while (v15 != 32);
    ++v10;
    ++a2;
  }

  while (v10 != 32);
  return result;
}

uint64_t sub_2D3D0(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, __n128 a7)
{
  v7 = 0;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vminvq_u32(v8);
  v10.i64[0] = 0x2000000020;
  v10.i64[1] = 0x2000000020;
  do
  {
    v11 = 0;
    a7.n128_u32[0] = v7;
    do
    {
      v12 = 0;
      v13 = a7;
      v13.n128_u32[1] = v11;
      do
      {
        v14 = v13;
        v14.i32[2] = v12;
        v15 = -1;
        for (i = -1; i != 2; ++i)
        {
          v17.i32[0] = 0;
          v17.i64[1] = 0;
          v17.i32[1] = i;
          for (j = -1; j != 2; ++j)
          {
            v19 = v17;
            v19.i32[2] = j;
            v20 = vaddq_s32(v19, v14);
            v20.i32[3] = 0;
            v21 = vmaxq_s32(v20, 0);
            v21.i32[3] = 0;
            v22 = vminq_s32(v21, xmmword_54FB0);
            v23 = vshl_u32(*&vextq_s8(v22, v22, 4uLL), 0xA00000005);
            v15 &= *(result + v23.i32[0] + v22.i32[0] + v23.i32[1]);
          }
        }

        if ((v9 & 0x80000000) != 0)
        {
          v24 = vcgtq_u32(v10, v14);
          v24.i32[3] = v24.i32[2];
          if ((vminvq_u32(v24) & 0x80000000) != 0)
          {
            *(a2 + 32 * v11 + (v12 << 10) + v7) = v15;
          }
        }

        ++v12;
      }

      while (v12 != 32);
      ++v11;
    }

    while (v11 != 32);
    ++v7;
  }

  while (v7 != 32);
  return result;
}

_DWORD *sub_2D4D8(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, int8x16_t a7, float32x4_t a8, float32x4_t a9)
{
  if (!result)
  {
    sub_4B100();
  }

  if (!a2)
  {
    sub_4B0D4();
  }

  if (!a3)
  {
    sub_4B0A8();
  }

  if (!a4)
  {
    sub_4B07C();
  }

  if (vmaxv_u16(vmovn_s32(vcgtq_s32(vextq_s8(a6, a7, 8uLL), vextq_s8(a7, a6, 8uLL)))))
  {
    sub_4B024();
  }

  v11 = vcgt_u32(0x8000000080000000, vsub_s32(*&vextq_s8(a6, a6, 8uLL), *a6.i8));
  if ((vpmin_u32(v11, v11).u32[0] & 0x80000000) == 0 || (v12 = vcgez_s32(vsub_s32(*a6.i8, *a7.i8)), (vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0))
  {
    sub_4B050();
  }

  if (a6.i32[3] >= a6.i32[1])
  {
    v13 = result + 4;
    v14 = (a4 + a5 * (a6.i32[1] - a7.i32[1]) + 4 * a6.i32[0] - 4 * a7.i32[0]);
    v15.i64[0] = 0xBF000000BF000000;
    v15.i64[1] = 0xBF000000BF000000;
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    v17 = a6.i32[1];
    do
    {
      if (a6.i32[0] >= a6.i32[2])
      {
        v109 = -1;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0xFFFFLL;
        v24 = v14;
        v25 = a6.i32[0];
        do
        {
          _Q26.i32[0] = *v24;
          v26 = vmovl_u8(*_Q26.f32);
          v27 = v26.u16[2] * 0.0039216;
          v28 = v26.u16[1] * 0.0039216;
          *v26.i32 = v26.u16[0] * 0.0039216;
          *v10.f32 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(0xBEA99AE93F1645A2, v28), 0xBE2CCA2E3E991687, v27), 0x3F0000003DE978D5, *v26.i32), 0x3F00000000000000);
          v10.f32[2] = (((v28 * -0.41869) + (v27 * 0.5)) + (*v26.i32 * -0.08131)) + 0.5;
          v29 = vaddq_f32(vmulq_f32(a9, vsubq_f32(v10, a8)), v15);
          v30 = vrndmq_f32(v29);
          v30.i32[2] = floorf(v29.f32[2]);
          v31 = vcvtq_s32_f32(v30);
          v32 = v31;
          v32.i32[3] = 0;
          v33 = vmaxq_s32(v32, 0);
          v33.i32[3] = 0;
          v34 = vminq_s32(v33, xmmword_54FB0);
          v35 = vceqq_s32(v34, v31);
          v35.i32[3] = v35.i32[2];
          v36 = vminvq_u32(v35);
          v10.i32[0] = 0;
          v37 = 0.0;
          if ((v36 & 0x80000000) != 0)
          {
            v38 = vshl_u32(*&vextq_s8(v34, v34, 4uLL), 0xA00000005);
            v38.i8[0] = *(a3 + v38.i32[0] + v34.i32[0] + v38.i32[1]);
            v37 = v38.u32[0];
          }

          v39 = vaddq_s32(v31, xmmword_54D50);
          v40 = v39;
          v40.i32[3] = 0;
          v41 = vmaxq_s32(v40, 0);
          v41.i32[3] = 0;
          v42 = vminq_s32(v41, xmmword_54FB0);
          v43 = vceqq_s32(v42, v39);
          v43.i32[3] = v43.i32[2];
          if ((vminvq_u32(v43) & 0x80000000) != 0)
          {
            v10 = vextq_s8(v42, v42, 4uLL);
            *v10.f32 = vshl_u32(*v10.f32, 0xA00000005);
            v10.i8[0] = *(a3 + v10.i32[0] + v42.i32[0] + v10.i32[1]);
            v10.f32[0] = v10.u32[0];
          }

          v44 = vaddq_s32(v31, xmmword_54FD0);
          v45 = v44;
          v45.i32[3] = 0;
          v46 = vmaxq_s32(v45, 0);
          v46.i32[3] = 0;
          v47 = vminq_s32(v46, xmmword_54FB0);
          v48 = vceqq_s32(v47, v44);
          v48.i32[3] = v48.i32[2];
          v49 = vminvq_u32(v48);
          v50 = 0.0;
          v51 = 0.0;
          if ((v49 & 0x80000000) != 0)
          {
            v52 = vshl_u32(*&vextq_s8(v47, v47, 4uLL), 0xA00000005);
            v52.i8[0] = *(a3 + v52.i32[0] + v47.i32[0] + v52.i32[1]);
            v51 = v52.u32[0];
          }

          v53 = vaddq_s32(v31, xmmword_54FF0);
          v54 = v53;
          v54.i32[3] = 0;
          v55 = vmaxq_s32(v54, 0);
          v55.i32[3] = 0;
          v56 = vminq_s32(v55, xmmword_54FB0);
          v57 = vceqq_s32(v56, v53);
          v57.i32[3] = v57.i32[2];
          if ((vminvq_u32(v57) & 0x80000000) != 0)
          {
            v58 = vshl_u32(*&vextq_s8(v56, v56, 4uLL), 0xA00000005);
            v58.i8[0] = *(a3 + v58.i32[0] + v56.i32[0] + v58.i32[1]);
            v50 = v58.u32[0];
          }

          v59 = vaddq_s32(v31, xmmword_54AB0);
          v60 = v59;
          v60.i32[3] = 0;
          v61 = vmaxq_s32(v60, 0);
          v61.i32[3] = 0;
          v62 = vminq_s32(v61, xmmword_54FB0);
          v63 = vceqq_s32(v62, v59);
          v63.i32[3] = v63.i32[2];
          v64 = vminvq_u32(v63);
          v65 = 0.0;
          v66 = 0.0;
          if ((v64 & 0x80000000) != 0)
          {
            v67 = vshl_u32(*&vextq_s8(v62, v62, 4uLL), 0xA00000005);
            v67.i8[0] = *(a3 + v67.i32[0] + v62.i32[0] + v67.i32[1]);
            v66 = v67.u32[0];
          }

          v68 = vaddq_s32(v31, xmmword_55000);
          v69 = v68;
          v69.i32[3] = 0;
          v70 = vmaxq_s32(v69, 0);
          v70.i32[3] = 0;
          v71 = vminq_s32(v70, xmmword_54FB0);
          v72 = vceqq_s32(v71, v68);
          v72.i32[3] = v72.i32[2];
          if ((vminvq_u32(v72) & 0x80000000) != 0)
          {
            v73 = vshl_u32(*&vextq_s8(v71, v71, 4uLL), 0xA00000005);
            v73.i8[0] = *(a3 + v73.i32[0] + v71.i32[0] + v73.i32[1]);
            v65 = v73.u32[0];
          }

          v74 = vaddq_s32(v31, xmmword_55010);
          v75 = v74;
          v75.i32[3] = 0;
          v76 = vmaxq_s32(v75, 0);
          v76.i32[3] = 0;
          v77 = vminq_s32(v76, xmmword_54FB0);
          v78 = vceqq_s32(v77, v74);
          v78.i32[3] = v78.i32[2];
          v79 = vminvq_u32(v78);
          v80 = 0.0;
          v81 = 0.0;
          if ((v79 & 0x80000000) != 0)
          {
            v82 = vshl_u32(*&vextq_s8(v77, v77, 4uLL), 0xA00000005);
            v82.i8[0] = *(a3 + v82.i32[0] + v77.i32[0] + v82.i32[1]);
            v81 = v82.u32[0];
          }

          v83 = vaddq_s32(v31, v16);
          v84 = v83;
          v84.i32[3] = 0;
          v85 = vmaxq_s32(v84, 0);
          v85.i32[3] = 0;
          v86 = vminq_s32(v85, xmmword_54FB0);
          v87 = vceqq_s32(v86, v83);
          v87.i32[3] = v87.i32[2];
          if ((vminvq_u32(v87) & 0x80000000) != 0)
          {
            v88 = vshl_u32(*&vextq_s8(v86, v86, 4uLL), 0xA00000005);
            v86.i8[0] = *(a3 + v88.i32[0] + v86.i32[0] + v88.i32[1]);
            v80 = v86.u32[0];
          }

          _Q26 = vsubq_f32(v29, v30);
          _S27 = v10.f32[0] - v37;
          __asm { FMLA            S28, S27, V26.S[2] }

          _S27 = v50 - v51;
          __asm { FMLA            S31, S27, V26.S[2] }

          _S27 = v65 - v66;
          __asm { FMLA            S9, S27, V26.S[2] }

          _S27 = v80 - v81;
          __asm { FMLA            S11, S27, V26.S[2] }

          _S27 = _S31 - _S28;
          __asm { FMLA            S28, S27, V26.S[1] }

          _S27 = _S11 - _S9;
          __asm { FMLA            S9, S27, V26.S[1] }

          _Q26.f32[0] = _S28 + (_Q26.f32[0] * (_S9 - _S28));
          if (_Q26.f32[0] <= 0.0)
          {
            if (v18)
            {
              v105 = v25 - 1;
              v19 = v25 - 1;
            }

            else
            {
              v105 = v19;
            }
          }

          else if (v18)
          {
            v105 = a6.u16[4];
          }

          else
          {
            LODWORD(v107) = result[2];
            result[2] = v107 + 1;
            v106 = v107;
            v107 = v107;
            if (v23 != 0xFFFF)
            {
              v108 = v13 + 14 * v22;
              *v108 = v106;
              *(v108 + 1) = v22;
              *(v108 + 2) = v21;
              *(v108 + 3) = v20;
              *(v108 + 4) = v19;
              *(v108 + 10) = 0;
              v107 = v23;
            }

            v21 = -1;
            v105 = a6.u16[4];
            v22 = v106;
            v20 = v25;
            v23 = v107;
          }

          ++v25;
          ++v24;
          v18 = _Q26.f32[0] > 0.0;
        }

        while (a6.i32[2] != v25);
        v109 = -1;
        if (v23 != 0xFFFF)
        {
          v110 = v13 + 14 * v22;
          *v110 = -1;
          *(v110 + 1) = v22;
          *(v110 + 2) = v21;
          *(v110 + 3) = v20;
          *(v110 + 4) = v105;
          *(v110 + 10) = 0;
          v109 = v23;
        }
      }

      *(a2 + 2 * (v17 - a6.i32[1])) = v109;
      *result = a6.i32[3] - a6.i32[1] + 1;
      ++v17;
      v14 = (v14 + a5);
    }

    while (a6.i32[3] + 1 != v17);
  }

  return result;
}

_DWORD *sub_2DAE0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x16_t a6)
{
  if (!result)
  {
    sub_4B1DC();
  }

  if (!a2)
  {
    sub_4B1B0();
  }

  if (!a3)
  {
    sub_4B184();
  }

  if (vmaxv_u16(vmovn_s32(vcgtq_s32(vextq_s8(a5, a6, 8uLL), vextq_s8(a6, a5, 8uLL)))))
  {
    sub_4B12C();
  }

  v7 = vcgt_u32(0x8000000080000000, vsub_s32(*&vextq_s8(a5, a5, 8uLL), *a5.i8));
  if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) == 0 || (v8 = vcgez_s32(vsub_s32(*a5.i8, *a6.i8)), (vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0))
  {
    sub_4B158();
  }

  if (a5.i32[3] >= a5.i32[1])
  {
    v9 = result + 4;
    v10 = (a3 + a4 * (a5.i32[1] - a6.i32[1]) + 4 * a5.i32[0] - 4 * a6.i32[0]);
    v11 = a5.i32[1];
    do
    {
      if (a5.i32[0] >= a5.i32[2])
      {
        v25 = -1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0xFFFFLL;
        v18 = v10;
        v19 = a5.i32[0];
        do
        {
          v6.i32[0] = *v18;
          v6 = vmovl_u8(v6).u64[0];
          v20 = v6.u16[2] * 0.0039216;
          *v6.i32 = (((((((v6.u16[1] * 0.0039216) * -0.274) + (v20 * 0.596)) + ((v6.u16[0] * 0.0039216) * -0.321)) + 0.0) * 0.1403) + ((((((v6.u16[1] * 0.0039216) * 0.587) + (v20 * 0.299)) + ((v6.u16[0] * 0.0039216) * 0.114)) + 0.0) * 0.2227)) + ((((((v6.u16[1] * 0.0039216) * -0.522) + (v20 * 0.211)) + ((v6.u16[0] * 0.0039216) * 0.311)) + 0.0) * -3.0);
          if (*v6.i32 <= -0.008)
          {
            if (v12)
            {
              v21 = v19 - 1;
              v14 = v19 - 1;
            }

            else
            {
              v21 = v14;
            }
          }

          else if (v12)
          {
            v21 = a5.u16[4];
          }

          else
          {
            v22 = result[2];
            result[2] = v22 + 1;
            v23 = v22;
            if (v17 != 0xFFFF)
            {
              v24 = v9 + 14 * v13;
              *v24 = v22;
              *(v24 + 1) = v13;
              *(v24 + 2) = v16;
              *(v24 + 3) = v15;
              *(v24 + 4) = v14;
              *(v24 + 10) = 0;
              v23 = v17;
            }

            v16 = -1;
            v21 = a5.u16[4];
            v15 = v19;
            v13 = v22;
            v17 = v23;
          }

          ++v19;
          ++v18;
          v12 = *v6.i32 > -0.008;
        }

        while (a5.i32[2] != v19);
        v25 = -1;
        if (v17 != 0xFFFF)
        {
          v26 = v9 + 14 * v13;
          *v26 = -1;
          *(v26 + 1) = v13;
          *(v26 + 2) = v16;
          *(v26 + 3) = v15;
          *(v26 + 4) = v21;
          *(v26 + 10) = 0;
          v25 = v17;
        }
      }

      *(a2 + 2 * (v11 - a5.i32[1])) = v25;
      *result = a5.i32[3] - a5.i32[1] + 1;
      ++v11;
      v10 = (v10 + a4);
    }

    while (a5.i32[3] + 1 != v11);
  }

  return result;
}

unsigned int *sub_2DDBC(unsigned int *result, uint64_t a2)
{
  v2 = *result;
  if (v2)
  {
    v3 = 0;
    v4 = result + 4;
    do
    {
      if (v3)
      {
        v5 = *(a2 - 2 + 2 * v3);
        v6 = *(a2 + 2 * v3);
        while (v5 != 0xFFFF && v6 != 0xFFFF)
        {
          v8 = v4 + 7 * v6;
          v9 = v4 + 7 * v5;
          if (v8[3] <= v9[3])
          {
            v10 = v9[3];
          }

          else
          {
            v10 = v8[3];
          }

          v11 = v8[4];
          v12 = v9[4];
          if (v11 >= v12)
          {
            v13 = v9[4];
          }

          else
          {
            v13 = v8[4];
          }

          if (v10 <= v13)
          {
            if (v8[1] == v6)
            {
              v8[1] = v5;
            }

            else
            {
              v14 = result[3];
              result[3] = v14 + 1;
              v15 = &result[v14 + 229373];
              *v15 = v5;
              *(v15 + 1) = v6;
            }
          }

          if (v12 >= v11)
          {
            v6 = *v8;
          }

          else
          {
            v5 = *v9;
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_2DE88(uint64_t result, int a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 > result)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3 + 4;
    v8 = result;
    do
    {
      for (i = *(a4 + 2 * v8); i != 0xFFFF; i = *v10)
      {
        v10 = v7 + 7 * i;
        v10[1] = *(v7 + 7 * v10[1] + 1);
      }

      v11 = v6 + 1;
      if ((v6 + 1) < HIDWORD(result))
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      if (v11 >= HIDWORD(result))
      {
        ++v5;
      }

      v8 = v6 + result + v5 * a2;
    }

    while (v8 < v4);
  }

  return result;
}

uint64_t sub_2DEFC(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = result + 16;
    v3 = (result + 917494);
    do
    {
      v4 = *v3;
      *(v3 - 1) = *(v2 + 14 * *(v3 - 1) + 2);
      *v3 = *(v2 + 14 * v4 + 2);
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_2DF44(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = result + 917492;
    v4 = result + 16;
    do
    {
      v5 = (v3 + 4 * v2);
      v6 = *v5;
      v7 = v5[1];
      v8 = (v4 + 14 * *v5);
      v9 = v8[1];
      v10 = (v4 + 14 * v7);
      v11 = v10[1];
      if (v9 != v11)
      {
        v12 = v8[2];
        v13 = v10[2];
        if (v12 == 0xFFFF)
        {
          if (v13 == 0xFFFF)
          {
            v14 = v7;
          }

          else
          {
            v14 = v10[2];
          }

          LOWORD(v15) = 1;
          result = 1;
          v16 = v7;
          v17 = v6;
        }

        else
        {
          result = v8[5];
          v15 = v10[5];
          if (v13 == 0xFFFF)
          {
            v18 = v7;
          }

          else
          {
            v18 = v10[2];
          }

          if (v15 > result)
          {
            v16 = v6;
          }

          else
          {
            v16 = v7;
          }

          if (v15 > result)
          {
            v17 = v7;
          }

          else
          {
            v17 = v6;
          }

          if (v15 <= result)
          {
            LOWORD(v6) = v12;
          }

          else
          {
            v7 = v6;
            LOWORD(v9) = v11;
            LOWORD(v6) = v18;
          }

          if (v15 > result)
          {
            v14 = v12;
          }

          else
          {
            v14 = v18;
          }
        }

        v19 = (v4 + 14 * v7);
        v19[1] = v9;
        for (i = v14; i != v16; i = *(v21 + 4))
        {
          v21 = v4 + 14 * i;
          *(v21 + 2) = v9;
        }

        v19[2] = v6;
        v19[5] = 0;
        v22 = v4 + 14 * v17;
        *(v22 + 4) = v14;
        *(v22 + 10) = result + v15;
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t sub_2E034(uint64_t result, char a2, unsigned __int32 *a3, uint64_t a4, __n128 a5)
{
  if (a5.n128_i32[0] <= result)
  {
    v5 = a5.n128_i32[2] < result || SHIDWORD(result) < a5.n128_u32[1];
    if (!v5 && a5.n128_u32[3] >= SHIDWORD(result))
    {
      v7 = HIDWORD(result) - a5.n128_u32[1];
      if ((HIDWORD(result) - a5.n128_u32[1]) >= 0 && v7 < *a3)
      {
        v8 = *(a4 + 2 * v7);
        if (v8 != 0xFFFF)
        {
          v9 = a3 + 4;
          while (1)
          {
            v10 = v9 + 7 * v8;
            if (v10[3] <= result && v10[4] >= result)
            {
              break;
            }

            v8 = *v10;
            if (v8 == 0xFFFF)
            {
              return result;
            }
          }

          *(v9 + 14 * v10[1] + 12) = a2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E0D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int32x4_t a5, int32x4_t a6)
{
  if (!result)
  {
    sub_4B28C();
  }

  if (!a2)
  {
    sub_4B260();
  }

  if (!a3)
  {
    sub_4B234();
  }

  v6 = vmaxq_s32(a5, a6).u64[0];
  v7 = vminq_s32(a5, a6);
  v8 = vextq_s8(v7, v7, 8uLL).u64[0];
  v9 = vcgt_u32(0x8000000080000000, vsub_s32(v8, v6));
  if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) == 0)
  {
    sub_4B208();
  }

  if (v6.i32[1] <= v7.i32[3])
  {
    v10 = result + 16;
    v11 = a5.i32[1];
    if (a6.i32[1] <= a5.i32[1])
    {
      v12 = a5.i32[1];
    }

    else
    {
      v12 = a6.i32[1];
    }

    v13 = v7.i32[3] + v12 - v6.i32[1] + 1;
    do
    {
      v14 = *(a2 + 2 * (v12 - v11));
      if (v14 != 0xFFFF)
      {
        result = 0;
        v15.i32[0] = 0;
        v15.i32[1] = v12;
        v16 = 1;
        do
        {
          v17 = v10 + 14 * v14;
          if (v16)
          {
            v15.i32[0] = *(v17 + 6);
            result = *(v10 + 14 * *(v17 + 2) + 12);
            if (!*(v10 + 14 * *(v17 + 2) + 12))
            {
              goto LABEL_18;
            }
          }

          v18 = v15.i32[0];
          if ((vorr_s8(vcgt_s32(v6, v15), vcgt_s32(v15, v8)).u8[0] & 1) == 0)
          {
            *(a3 + (v12 - a6.i32[1]) * a4 + v15.i32[0] - a6.i32[0]) = result;
          }

          ++v15.i32[0];
          if (v18 >= *(v17 + 8))
          {
LABEL_18:
            v14 = *(v10 + 14 * v14);
            v16 = 1;
          }

          else
          {
            v16 = 0;
          }
        }

        while (v14 != 0xFFFF);
      }

      ++v12;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t sub_2E210(uint64_t result, uint64_t a2, uint64_t a3, int32x4_t a4, int32x4_t a5)
{
  if (!result)
  {
    sub_4B310();
  }

  if (!a2)
  {
    sub_4B2E4();
  }

  v5 = a4.i32[0];
  v6 = a5.i32[0];
  if (a4.i32[0] >= a5.i32[0])
  {
    v7 = a5.i32[1];
    if (a4.i32[1] >= a5.i32[1])
    {
      v8 = vmovn_s32(vcgtq_s32(a4, a5));
      if ((v8.i8[4] & 1) == 0 && (v8.i8[6] & 1) == 0)
      {
        v9 = vcgt_u32(0x8000000080000000, vsub_s32(*&vextq_s8(a4, a4, 8uLL), *a4.i8));
        v10 = vpmin_u32(v9, v9).u32[0];
        if ((v10 & 0x80000000) == 0 || (v11 = vcgez_s32(vsub_s32(*a4.i8, *a5.i8)), (vpmin_u32(v11, v11).u32[0] & 0x80000000) == 0))
        {
          sub_4B2B8();
        }

        if (a4.i32[1] <= a4.i32[3])
        {
          v12 = result;
          LOBYTE(v10) = *(result + 8);
          v64 = v10;
          v13 = v6;
          v14 = a4.i32[2] + 1;
          v15 = a4.i32[1];
          v59 = v7;
          v60 = a4.i32[3] + 1;
          v61 = a4.i32[2];
          v16 = (result + 40);
          v17 = 1.0 / *(result + 4);
          do
          {
            if (v5 <= v61)
            {
              v18 = v5;
              v19 = a2 + (v15 - v59) * a3;
              do
              {
                v20 = *v12;
                if (v20)
                {
                  v21 = vcvt_f32_s32(__PAIR64__(v15, v18));
                  v22 = 3.4028e38;
                  v23 = v16;
                  do
                  {
                    v24 = v23[-3];
                    v25 = v23[-2];
                    v26 = v23[-1];
                    v27 = *v23;
                    result = sub_2C7D8(v24, v25, v26, *v23, __PAIR64__(v15, v18));
                    v28 = vcvt_f32_s32(v24);
                    v29 = vcvt_f32_s32(v25);
                    v30 = vcvt_f32_s32(v26);
                    v31 = vcvt_f32_s32(v27);
                    v32 = vsub_f32(v29, v28);
                    v33 = vsub_f32(v30, v29);
                    v34 = vsub_f32(v31, v30);
                    v35 = vsub_f32(v28, v31);
                    *v36.i32 = sqrtf(COERCE_FLOAT(vmul_f32(v32, v32).i32[1]) + (v32.f32[0] * v32.f32[0]));
                    v37 = vmul_f32(v34, v34);
                    *v38.i32 = sqrtf(COERCE_FLOAT(vmul_f32(v33, v33).i32[1]) + (v33.f32[0] * v33.f32[0]));
                    *v37.i32 = sqrtf(*&v37.i32[1] + (v34.f32[0] * v34.f32[0]));
                    v39 = vmul_f32(v35, v35);
                    *v39.i32 = sqrtf(*&v39.i32[1] + (v35.f32[0] * v35.f32[0]));
                    v40 = vdiv_f32(v32, vdup_lane_s32(v36, 0));
                    v41 = vdiv_f32(v33, vdup_lane_s32(v38, 0));
                    v42 = vdiv_f32(v34, vdup_lane_s32(v37, 0));
                    v43 = vsub_f32(v21, v28);
                    v44 = vdiv_f32(v35, vdup_lane_s32(v39, 0));
                    v45 = vsub_f32(vmla_n_f32(v28, v40, fminf(fmaxf(COERCE_FLOAT(vmul_f32(v43, v40).i32[1]) + (v43.f32[0] * v40.f32[0]), 0.0), *v36.i32)), v21);
                    v46 = vsub_f32(v21, v29);
                    v47 = vsub_f32(vmla_n_f32(v29, v41, fminf(fmaxf(COERCE_FLOAT(vmul_f32(v46, v41).i32[1]) + (v46.f32[0] * v41.f32[0]), 0.0), *v38.i32)), v21);
                    v48 = vsub_f32(v21, v30);
                    v49 = vsub_f32(vmla_n_f32(v30, v42, fminf(fmaxf(COERCE_FLOAT(vmul_f32(v48, v42).i32[1]) + (v48.f32[0] * v42.f32[0]), 0.0), *v37.i32)), v21);
                    v50 = sqrtf(COERCE_FLOAT(vmul_f32(v45, v45).i32[1]) + (v45.f32[0] * v45.f32[0]));
                    v51 = vsub_f32(v21, v31);
                    v52 = sqrtf(COERCE_FLOAT(vmul_f32(v47, v47).i32[1]) + (v47.f32[0] * v47.f32[0]));
                    v53 = sqrtf(COERCE_FLOAT(vmul_f32(v49, v49).i32[1]) + (v49.f32[0] * v49.f32[0]));
                    v54 = vsub_f32(vmla_n_f32(v31, v44, fminf(fmaxf(COERCE_FLOAT(vmul_f32(v51, v44).i32[1]) + (v51.f32[0] * v44.f32[0]), 0.0), *v39.i32)), v21);
                    v55 = sqrtf(COERCE_FLOAT(vmul_f32(v54, v54).i32[1]) + (v54.f32[0] * v54.f32[0]));
                    if (result)
                    {
                      v56 = 0.0;
                    }

                    else
                    {
                      v56 = v22;
                    }

                    v22 = fminf(v56, fminf(fminf(v50, v52), fminf(v53, v55)));
                    v23 += 4;
                    --v20;
                  }

                  while (v20);
                }

                else
                {
                  v22 = 3.4028e38;
                }

                v57 = 1.0;
                v58 = 1.0 - fmax(fmin((v17 * v22), 1.0), 0.0);
                if (v58 > 0.0)
                {
                  LOBYTE(v57) = *(v19 + v18 - v13);
                  *(v19 + v18 - v13) = llroundf(LODWORD(v57) + ((v64 - LODWORD(v57)) * v58));
                }

                ++v18;
              }

              while (v14 != v18);
            }

            ++v15;
          }

          while (v60 != v15);
        }
      }
    }
  }

  return result;
}

void sub_2ECC8(id a1)
{
  qword_8CED0 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_2ED08(uint64_t a1)
{
  v5 = [NSMutableArray arrayWithCapacity:9];
  for (i = 24; i != 96; i += 8)
  {
    [v5 addObject:*(*(a1 + 32) + i)];
  }

  v3 = qword_8CED0;
  objc_sync_enter(v3);
  v4 = [NSArray arrayWithArray:v5];
  [qword_8CED0 setObject:v4 forKeyedSubscript:*(a1 + 40)];

  objc_sync_exit(v3);
}

void sub_2F230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2F248(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 8 * *(a1 + 56) + 24), a2);
  dispatch_group_leave(*(*(a1 + 32) + 96));
  atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 1u);
  v4 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v4 == 9)
  {
    (*(*(a1 + 40) + 16))();
  }
}

float *sub_324A8(float *result, float *a2)
{
  v2 = result[3] - result[1];
  v3 = result[2] - *result;
  v4 = sqrtf((v3 * v3) + (v2 * v2));
  if (v4 <= 0.0)
  {
    *a2 = *result;
    v5 = result[1];
  }

  else
  {
    *a2 = v2 / v4;
    v5 = -v3 / v4;
  }

  a2[1] = v5;
  return result;
}

BOOL sub_324F0(float *a1, float a2, float a3)
{
  v3 = a1[1];
  v4 = a1[3] - v3;
  v5 = a1[2] - *a1;
  v6 = sqrtf((v5 * v5) + (v4 * v4));
  v7 = *a1;
  v8 = v3;
  if (v6 > 0.0)
  {
    v7 = v4 / v6;
    v8 = -v5 / v6;
  }

  return (((a3 - v3) * v8) + ((a2 - *a1) * v7)) >= 0.0;
}

float sub_32544(float *a1, float a2, float a3)
{
  v3 = a1[1];
  v4 = a1[3] - v3;
  v5 = a1[2] - *a1;
  v6 = sqrtf((v5 * v5) + (v4 * v4));
  v7 = *a1;
  v8 = v3;
  if (v6 > 0.0)
  {
    v7 = v4 / v6;
    v8 = -v5 / v6;
  }

  return ((a3 - v3) * v8) + ((a2 - *a1) * v7);
}

float sub_32590(float *a1, float a2, float a3)
{
  v3 = a1[1];
  v4 = a1[2] - *a1;
  v5 = a1[3] - v3;
  v6 = (v5 * v5) + (v4 * v4);
  result = ((a3 - v3) * v5) + ((a2 - *a1) * v4);
  if (v6 > 0.0)
  {
    return result / v6;
  }

  return result;
}

float sub_325C8(float *a1, float a2, float a3)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1;
  v6 = a1[1];
  v7 = v3 - *a1;
  v8 = v4 - v6;
  v9 = (v8 * v8) + (v7 * v7);
  v10 = a2 - *a1;
  v11 = a3 - v6;
  if (v9 <= 0.0)
  {
    v12 = ((a3 - v6) * (v4 - v6)) + (v10 * v7);
  }

  else
  {
    v12 = (((a3 - v6) * (v4 - v6)) + (v10 * v7)) / v9;
  }

  if (v12 > 1.0)
  {
    v13 = ((a3 - v4) * (a3 - v4)) + ((a2 - v3) * (a2 - v3));
    return sqrtf(v13);
  }

  if (v12 < 0.0)
  {
    v13 = (v11 * v11) + (v10 * v10);
    return sqrtf(v13);
  }

  v15 = sqrtf((v7 * v7) + (v8 * v8));
  if (v15 > 0.0)
  {
    v5 = v8 / v15;
    v6 = -v7 / v15;
  }

  return (v11 * v6) + (v10 * v5);
}

void sub_32660(float *a1, int a2, float a3, float a4)
{
  if (a2 >= 2)
  {
    v7 = (a2 - 1);
    v8 = 3.4028e38;
    do
    {
      if (sub_324F0(a1, a3, a4))
      {
        v9 = sub_325C8(a1, a3, a4);
        if (v9 < v8)
        {
          v8 = v9;
        }
      }

      a1 += 2;
      --v7;
    }

    while (v7);
  }
}

__n128 sub_338C0@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  if (a1 <= 7)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0xBFF0000000000000;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0xBFF0000000000000;
  *&v8[10] = a3;
  *&v8[11] = a4;
  v9 = xmmword_54BF0;
  v10 = xmmword_54BE0;
  v11 = a4;
  v12 = 0;
  v13 = 0;
  v14 = xmmword_551E0;
  v15 = 0;
  v16 = 0;
  v17 = a3;
  v18 = 0xBFF0000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0x3FF0000000000000;
  v22 = a3;
  v23 = xmmword_54BF0;
  v24 = 0;
  v25 = 0;
  v26 = 0xBFF0000000000000;
  v27 = 0;
  v28 = a4;
  v29 = xmmword_54BF0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0x3FF0000000000000;
  v33 = 0xBFF0000000000000;
  v34 = xmmword_54BE0;
  v35 = a4;
  v36 = a3;
  v5 = &v8[6 * v4];
  result = *v5;
  v7 = *(v5 + 2);
  *(a2 + 16) = *(v5 + 1);
  *(a2 + 32) = v7;
  *a2 = result;
  return result;
}

__n128 sub_339CC@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  if (a1 <= 7)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0xBFF0000000000000;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0xBFF0000000000000;
  *&v8[10] = a3;
  *&v8[11] = a4;
  v9 = xmmword_54BD0;
  v11 = 0;
  v12 = 0;
  v10 = 0x3FF0000000000000;
  v13 = a4;
  v14 = xmmword_54BF0;
  v15 = xmmword_54BE0;
  v16 = a3;
  v17 = xmmword_54BD0;
  v18 = 0;
  v19 = 0;
  v20 = 0x3FF0000000000000;
  v21 = a3;
  v22 = xmmword_54BF0;
  v23 = 0;
  v24 = 0;
  v25 = 0xBFF0000000000000;
  v26 = 0;
  v27 = a4;
  v28 = xmmword_54BF0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0x3FF0000000000000;
  v32 = 0xBFF0000000000000;
  v33 = xmmword_54BE0;
  v34 = a3;
  v35 = a4;
  v5 = &v8[6 * v4];
  result = *v5;
  v7 = *(v5 + 2);
  *(a2 + 16) = *(v5 + 1);
  *(a2 + 32) = v7;
  *a2 = result;
  return result;
}

__n128 sub_33ADC@<Q0>(unsigned int a1@<W0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0xBFF0000000000000;
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = 0x3FF0000000000000;
  *&v8[10] = a3;
  v9 = xmmword_54BD0;
  v10 = 0;
  v11 = 0;
  v12 = 0xBFF0000000000000;
  v13 = a3;
  v14 = a4;
  v16 = 0;
  v17 = 0;
  v15 = 0x3FF0000000000000;
  v18 = xmmword_54BE0;
  v19 = a4;
  v20 = xmmword_54BD0;
  v21 = xmmword_54BE0;
  v22 = a4;
  v23 = a3;
  v24 = xmmword_54BD0;
  v26 = 0;
  v27 = 0;
  v25 = 0x3FF0000000000000;
  v28 = a3;
  v29 = xmmword_54BF0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v34 = xmmword_54BE0;
  v35 = a4;
  v36 = 0;
  if (a1 <= 7)
  {
    v4 = a1 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = &v8[6 * v4];
  result = v5[1];
  v7 = v5[2];
  a2[1] = result;
  a2[2] = v7;
  *a2 = *v5;
  return result;
}

uint64_t sub_33BF4(int *a1, int *a2, _DWORD *a3, int a4, int a5)
{
  v10 = a4;
  __chkstk_darwin();
  v12 = malloc_type_malloc(4 * (v11 * v11), 0x100004052888210uLL);
  v13 = v12;
  if (a5)
  {
    if (a4 < 1)
    {
      goto LABEL_15;
    }

    v14 = 0;
    v15 = 4 * v10;
    v16 = v12;
    do
    {
      v17 = v10;
      v18 = v16;
      v19 = a1;
      do
      {
        v20 = *v19++;
        *v18 = v20;
        v18 = (v18 + v15);
        --v17;
      }

      while (v17);
      ++v14;
      a1 = (a1 + v15);
      ++v16;
    }

    while (v14 != v10);
  }

  else
  {
    if (a4 < 1)
    {
      goto LABEL_15;
    }

    v21 = 0;
    v22 = 4 * v10;
    v23 = v12;
    do
    {
      v24 = v10;
      v25 = a1;
      v26 = v23;
      do
      {
        v27 = *v25++;
        *v26++ = v27;
        --v24;
      }

      while (v24);
      ++v21;
      v23 = (v23 + v22);
      a1 = (a1 + v22);
    }

    while (v21 != v10);
  }

  v28 = a3;
  do
  {
    v29 = *a2++;
    *v28++ = v29;
    --v10;
  }

  while (v10);
LABEL_15:
  sgesv_NEWLAPACK();
  free(v13);
  return 1;
}

double sub_33DA8(int a1, double a2, double a3, float a4, float a5)
{
  v5 = (a4 + -1.0) - a2;
  v6 = (a5 + -1.0) - a3;
  if (a1 != 3)
  {
    a3 = a2;
  }

  if (a1 == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (a1 == 1)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

double sub_33EFC(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (*a1 >= v3)
  {
    v5 = a1[2];
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5;
  if (*a1 < v3)
  {
    v1 = a1[2];
  }

  v7 = v1;
  if (v2 >= v4)
  {
    v8 = a1[3];
  }

  else
  {
    v8 = a1[1];
  }

  v9 = v8;
  if (v2 < v4)
  {
    v2 = a1[3];
  }

  v10 = v2;
  *a1 = v6;
  a1[1] = v9;
  result = v7;
  a1[2] = result;
  a1[3] = v10;
  return result;
}

float64x2_t sub_33F48(float64x2_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = vadd_s32(__PAIR64__(a3, a2), -1);
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  v5 = vcvtq_f64_s64(v4);
  result = vbslq_s8(vcgtq_f64(a1[1], v5), v5, a1[1]);
  *a1 = vmaxnmq_f64(*a1, 0);
  a1[1] = result;
  return result;
}

double sub_33F7C(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;
  if (a1 < a3)
  {
    a1 = a3;
  }

  v7 = a1;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (a5 <= v8)
  {
    return a5;
  }

  else
  {
    return v8;
  }
}

double *sub_34044(double *result, uint64_t a2, float64x2_t *a3)
{
  for (; a2; --a2)
  {
    *result = vaddq_f64(a3[2], vmlaq_n_f64(vmulq_n_f64(a3[1], result[1]), *a3, *result));
    result += 2;
  }

  return result;
}

double sub_3410C(double a1, double a2)
{
  v2 = sqrt(a2 * a2 + a1 * a1);
  v3 = v2;
  v4 = 0.0;
  if (v3 >= 0.01)
  {
    return a1 / v3;
  }

  return v4;
}

float sub_34178(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a3 - a1) * (a6 - a2) - (a5 - a1) * (a4 - a2);
  v7 = v6 < 0.0;
  result = 0.0;
  if (!v7)
  {
    return 1.0;
  }

  return result;
}

float sub_341A8(double *a1, int a2, double a3, double a4)
{
  v4 = 0.0;
  if (a3 >= *a1 && a3 <= a1[2 * a2 - 2])
  {
    do
    {
      v5 = *a1;
      a1 += 2;
      v6 = v5;
    }

    while (a3 > v5);
    v7 = (a3 - *(a1 - 4)) / (v6 - *(a1 - 4));
    v8 = *(a1 - 3) + v7 * (*(a1 - 1) - *(a1 - 3));
    return a4 - v8;
  }

  return v4;
}

float sub_342EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 <= v2)
  {
    v3 = a1[1];
  }

  else
  {
    v3 = *a1;
  }

  v4 = a1[2];
  if (v1 >= v2)
  {
    v1 = a1[1];
  }

  if (v3 <= v4)
  {
    v5 = a1[2];
  }

  else
  {
    v5 = v3;
  }

  if (v1 >= v4)
  {
    v1 = a1[2];
  }

  return (v5 - v1);
}

float sub_34320(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 >= v2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = a1[1];
  }

  v4 = a1[2];
  if (*a1 >= v2)
  {
    v1 = a1[1];
  }

  if (v3 >= v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = a1[2];
  }

  if (v1 >= v4)
  {
    v1 = a1[2];
  }

  return v5 - v1;
}

uint64_t sub_3434C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= a1[1])
  {
    v1 = a1[1];
  }

  if (v1 <= a1[2])
  {
    return a1[2];
  }

  else
  {
    return v1;
  }
}

float sub_3436C(float *a1, float *a2)
{
  *a2 = ((a1[1] * 0.587) + (*a1 * 0.299)) + (a1[2] * 0.114);
  a2[1] = ((a1[1] * -0.33126) + (*a1 * -0.16874)) + (a1[2] * 0.5);
  result = ((a1[1] * -0.41869) + (*a1 * 0.5)) + (a1[2] * -0.081312);
  a2[2] = result;
  return result;
}

float sub_343F4(_BYTE *a1, float *a2, float a3, float a4)
{
  LOBYTE(a3) = *a1;
  LOBYTE(a4) = a1[1];
  *&v4 = LODWORD(a4) * 0.587;
  v5 = *&v4 + (LODWORD(a3) * 0.299);
  LOBYTE(v4) = a1[2];
  *&v6 = v4;
  *&v7 = v5 + (*&v6 * 0.114);
  *a2 = *&v7;
  LOBYTE(v7) = *a1;
  LOBYTE(v6) = a1[1];
  *&v8 = v6 * -0.33126;
  v9 = *&v8 + (v7 * -0.16874);
  LOBYTE(v8) = a1[2];
  *&v10 = v8;
  *&v11 = v9 + (*&v10 * 0.5);
  a2[1] = *&v11;
  LOBYTE(v11) = *a1;
  LOBYTE(v10) = a1[1];
  *&v12 = v10 * -0.41869;
  v13 = *&v12 + (v11 * 0.5);
  LOBYTE(v12) = a1[2];
  result = v13 + (v12 * -0.081312);
  a2[2] = result;
  return result;
}

float sub_344AC(float *a1, float *a2)
{
  *a2 = (((a1[1] * 0.587) + (*a1 * 0.299)) + (a1[2] * 0.114)) * 255.0;
  a2[1] = (((a1[1] * -0.33126) + (*a1 * -0.16874)) + (a1[2] * 0.5)) * 255.0;
  result = (((a1[1] * -0.41869) + (*a1 * 0.5)) + (a1[2] * -0.081312)) * 255.0;
  a2[2] = result;
  return result;
}

float sub_34548(float *a1, float *a2)
{
  *a2 = (*a1 + (a1[1] * 0.0)) + (a1[2] * 1.403);
  a2[1] = (*a1 + (a1[1] * -0.344)) + (a1[2] * -0.714);
  result = (*a1 + (a1[1] * 1.773)) + (a1[2] * -0.0);
  a2[2] = result;
  return result;
}

float32_t sub_345B0(_BYTE *a1, float32x2_t *a2, float a3, double a4)
{
  LOBYTE(a4) = *a1;
  v6 = *&a4;
  v5 = v6 / 255.0;
  LOBYTE(v6) = a1[1];
  v7 = *&v6 / 255.0;
  v8 = a3;
  v10 = fabs(a3 + -1.0);
  v9 = v10 <= 0.01;
  LOBYTE(v10) = a1[2];
  v11 = *&v10 / 255.0;
  if (!v9)
  {
    __x = *&v6 / 255.0;
    v14 = *&v10 / 255.0;
    v15 = pow(v5, v8);
    __xa = pow(__x, v8);
    v12 = pow(v14, v8);
    v5 = v15;
    v7 = __xa;
    v11 = v12;
  }

  *a2 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_551F0, v7), xmmword_55200, v5), xmmword_55210, v11));
  result = v7 * -0.522 + v5 * 0.211 + v11 * 0.311;
  a2[1].f32[0] = result;
  return result;
}