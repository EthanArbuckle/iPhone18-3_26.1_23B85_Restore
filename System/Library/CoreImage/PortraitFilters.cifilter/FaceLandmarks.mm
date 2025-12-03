@interface FaceLandmarks
- (CGPoint)leftToRightVec;
- (CGPoint)upVec;
- (CGRect)imageRect;
- (FaceLandmarks)initWithFaceLandmarks:(id)landmarks forImageRect:(CGRect)rect;
- (void)dealloc;
@end

@implementation FaceLandmarks

- (FaceLandmarks)initWithFaceLandmarks:(id)landmarks forImageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v312.receiver = self;
  v312.super_class = FaceLandmarks;
  v9 = [(FaceLandmarks *)&v312 init];
  [v9 setFaceData:objc_alloc_init(ComputedFaceData)];
  memset(&v311, 0, sizeof(v311));
  v318.origin.x = x;
  v318.origin.y = y;
  v318.size.width = width;
  v318.size.height = height;
  v10 = CGRectGetWidth(v318);
  v319.origin.x = x;
  v319.origin.y = y;
  v319.size.width = width;
  v319.size.height = height;
  v11 = CGRectGetHeight(v319);
  CGAffineTransformMakeScale(&v311, v10, v11);
  v12 = [landmarks objectForKeyedSubscript:@"allPoints"];
  v13 = [v12 count];
  v306 = v13;
  if (v13 >= 0x41)
  {
    v14 = 65;
  }

  else
  {
    v14 = v13;
  }

  v303 = v14;
  v15 = [v12 count];
  if (v15 <= 0x41)
  {
    v16 = 65;
  }

  else
  {
    v16 = v15;
  }

  v297 = [[NSMutableData dataWithLength:?]];
  landmarksCopy = landmarks;
  v17 = [landmarks objectForKeyedSubscript:@"faceBoundingBox"];
  [objc_msgSend(v17 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v19 = v18;
  [objc_msgSend(v17 objectForKeyedSubscript:{@"y", "doubleValue"}];
  v21 = v20;
  [objc_msgSend(v17 objectForKeyedSubscript:{@"w", "doubleValue"}];
  v23 = v22;
  [objc_msgSend(v17 objectForKeyedSubscript:{@"h", "doubleValue"}];
  v25 = v24;
  memset(&t2, 0, sizeof(t2));
  v314 = 0u;
  v26 = [v12 countByEnumeratingWithState:&t2 objects:&t1 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = **&t2.c;
    do
    {
      v30 = 0;
      v31 = &v297[16 * v28 + 8];
      v28 += v27;
      do
      {
        if (**&t2.c != v29)
        {
          objc_enumerationMutation(v12);
        }

        v32 = *(*&t2.b + 8 * v30);
        [objc_msgSend(v32 objectForKeyedSubscript:{@"x", "doubleValue"}];
        v34 = v33;
        [objc_msgSend(v32 objectForKeyedSubscript:{@"y", "doubleValue"}];
        *(v31 - 1) = v34;
        *v31 = v35;
        v30 = v30 + 1;
        v31 += 16;
      }

      while (v27 != v30);
      v27 = [v12 countByEnumeratingWithState:&t2 objects:&t1 count:16];
    }

    while (v27);
  }

  if ([landmarksCopy sanityCheckStatus] == -1)
  {

    return 0;
  }

  v36 = v25;
  v37 = v23;
  v38 = v21;
  v39 = v19;
  v320.origin.x = v39;
  v320.origin.y = v38;
  v320.size.width = v37;
  v320.size.height = v36;
  t1 = v311;
  v321 = CGRectApplyAffineTransform(v320, &t1);
  v40 = v321.origin.x;
  v41 = v321.origin.y;
  v42 = v321.size.width;
  v43 = v321.size.height;
  memset(&v310, 0, sizeof(v310));
  v44 = CGRectGetWidth(v321);
  v322.origin.x = v40;
  v322.origin.y = v41;
  v322.size.width = v42;
  v322.size.height = v43;
  v45 = CGRectGetHeight(v322);
  CGAffineTransformMakeScale(&v310, v44, v45);
  memset(&v309, 0, sizeof(v309));
  t1 = v310;
  v323.origin.x = v40;
  v323.origin.y = v41;
  v323.size.width = v42;
  v323.size.height = v43;
  MinX = CGRectGetMinX(v323);
  v324.origin.x = v40;
  v324.origin.y = v41;
  v324.size.width = v42;
  v324.size.height = v43;
  MinY = CGRectGetMinY(v324);
  CGAffineTransformMakeTranslation(&t2, MinX, MinY);
  CGAffineTransformConcat(&v309, &t1, &t2);
  if (v306)
  {
    v48 = *&v309.a;
    v49 = *&v309.c;
    v50 = v297;
    v51 = *&v309.tx;
    do
    {
      *v50 = vaddq_f64(v51, vmlaq_n_f64(vmulq_n_f64(v49, v50[1]), v48, *v50));
      v50 += 2;
    }

    while (v50 != &v297[16 * v303]);
  }

  for (i = 0; i != 64; i += 16)
  {
    *&v9[i + 8] = *&v297[i];
  }

  for (j = 0; j != 64; j += 16)
  {
    *&v9[j + 72] = *&v297[j + 64];
  }

  v54 = 0;
  *(v9 + 136) = *(v297 + 33);
  do
  {
    *&v9[v54 + 152] = *&v297[v54 + 384];
    v54 += 16;
  }

  while (v54 != 96);
  v55 = 0;
  *(v9 + 248) = *(v297 + 29);
  do
  {
    *&v9[v55 + 264] = *&v297[v55 + 480];
    v55 += 16;
  }

  while (v55 != 64);
  v56 = 0;
  v57 = 0;
  do
  {
    v58 = *&v297[v56 + 128];
    *&v9[v56 + 488] = v58;
    v57 = vcvt_f32_f64(vaddq_f64(v58, vcvtq_f64_f32(v57)));
    v56 += 16;
  }

  while (v56 != 80);
  for (k = 0; k != 64; k += 16)
  {
    v60 = *&v297[k + 192];
    *&v9[k + 648] = v60;
    v57 = vcvt_f32_f64(vaddq_f64(v60, vcvtq_f64_f32(v57)));
  }

  v61 = 0;
  v62 = *(v297 + 8);
  *(v9 + 712) = v62;
  *&v62.f64[0] = vcvt_f32_f64(vaddq_f64(v62, vcvtq_f64_f32(v57)));
  __asm { FMOV            V0.2S, #10.0 }

  *(v9 + 2040) = vcvtq_f64_f32(vdiv_f32(*&v62.f64[0], _D0));
  v67 = 0;
  do
  {
    v68 = *&v297[v61 + 256];
    *&v9[v61 + 568] = v68;
    v67 = vcvt_f32_f64(vaddq_f64(v68, vcvtq_f64_f32(v67)));
    v61 += 16;
  }

  while (v61 != 80);
  for (m = 0; m != 64; m += 16)
  {
    v70 = *&v297[m + 320];
    *&v9[m + 728] = v70;
    v67 = vcvt_f32_f64(vaddq_f64(v70, vcvtq_f64_f32(v67)));
  }

  *(v9 + 792) = *(v297 + 16);
  v71 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vaddq_f64(*(v297 + 16), vcvtq_f64_f32(v67))), _D0));
  *(v9 + 2056) = v71;
  *(v9 + 518) = sub_34070(*(v9 + 255), *(v9 + 256), v71.f64[0], v71.f64[1]);
  v72 = sub_34098(*(v9 + 257), *(v9 + 258), *(v9 + 255));
  [v9 setLeftToRightVec:{sub_3410C(v72, v73)}];
  [v9 leftToRightVec];
  [v9 setUpVec:{sub_340A4(v74, v75)}];
  v76 = 0;
  *(v9 + 519) = fmaxf(*(v9 + 518) / 60.0, 2.0);
  do
  {
    *&v9[v76 + 808] = *&v297[v76 + 640];
    v76 += 16;
  }

  while (v76 != 96);
  for (n = 0; n != 96; n += 16)
  {
    *&v9[n + 904] = *&v297[n + 720];
  }

  for (ii = 0; ii != 144; ii += 16)
  {
    *&v9[ii + 1544] = *&v297[ii + 816];
  }

  for (jj = 0; jj != 96; jj += 16)
  {
    *&v9[jj + 1688] = *&v297[jj + 880];
  }

  for (kk = 0; kk != 80; kk += 16)
  {
    *&v9[kk + 1800] = *&v297[kk + 816];
  }

  v81 = 0;
  *(v9 + 1784) = *(v297 + 60);
  do
  {
    *&v9[v81 + 1880] = *&v297[v81 + 960];
    v81 += 16;
  }

  while (v81 != 48);
  for (mm = 0; mm != 176; mm += 16)
  {
    *&v9[mm + 1368] = *&v297[mm + 640];
  }

  for (nn = 0; nn != 64; nn += 16)
  {
    *&v9[nn + 328] = *&v297[nn + 528];
  }

  *(v9 + 392) = *(v297 + 29);
  *(v9 + 408) = *(v297 + 33);
  v84 = (v297 + 624);
  for (i1 = 424; i1 != 472; i1 += 16)
  {
    v86 = *v84--;
    *&v9[i1] = v86;
  }

  *(v9 + 472) = *(v297 + 29);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *(v9 + 171), *(v9 + 172));
  for (i2 = 0; i2 != 160; i2 += 16)
  {
    CGPathAddLineToPoint(Mutable, 0, *&v9[i2 + 1384], *&v9[i2 + 1392]);
  }

  v296 = Mutable;
  v298 = height;
  v89 = sub_340DC(*(v9 + 53), *(v9 + 54), *(v9 + 45), *(v9 + 46), 0.6);
  v91 = v90;
  v92 = [objc_msgSend(v9 "faceData")];
  *v92 = v89;
  *(v92 + 1) = v91;
  v93 = sub_340DC(*(v9 + 55), *(v9 + 56), *(v9 + 45), *(v9 + 46), 0.6);
  v95 = v94;
  v96 = [objc_msgSend(v9 "faceData")];
  v96[2] = v93;
  *(v96 + 3) = v95;
  v97 = sub_340DC(*(v9 + 57), *(v9 + 58), *(v9 + 45), *(v9 + 46), 0.6);
  v99 = v98;
  v100 = [objc_msgSend(v9 "faceData")];
  v100[4] = v97;
  *(v100 + 5) = v99;
  v101 = sub_340DC(*(v9 + 53), *(v9 + 54), *(v9 + 43), *(v9 + 44), 0.6);
  v103 = v102;
  v104 = [objc_msgSend(v9 "faceData")];
  v104[6] = v101;
  *(v104 + 7) = v103;
  v105 = sub_340DC(*(v9 + 55), *(v9 + 56), *(v9 + 43), *(v9 + 44), 0.6);
  v107 = v106;
  v108 = [objc_msgSend(v9 "faceData")];
  v108[8] = v105;
  *(v108 + 9) = v107;
  v109 = sub_340DC(*(v9 + 55), *(v9 + 56), *(v9 + 47), *(v9 + 48), 0.6);
  v111 = v110;
  v112 = [objc_msgSend(v9 "faceData")];
  v112[10] = v109;
  *(v112 + 11) = v111;
  v113 = sub_340DC(*(v9 + 57), *(v9 + 58), *(v9 + 47), *(v9 + 48), 0.6);
  v115 = v114;
  v116 = [objc_msgSend(v9 "faceData")];
  v117 = 0;
  v116[12] = v113;
  *(v116 + 13) = v115;
  for (i3 = 1; i3 != 4; ++i3)
  {
    v119 = 0;
    v120 = v117;
    do
    {
      v121 = v119 * 0.05 + 0.3;
      v122 = sub_340DC(*&v9[16 * i3 + 488], *&v9[16 * i3 + 496], *&v9[16 * (4 - i3) + 648], *&v9[16 * (4 - i3) + 656], v121);
      v124 = v123;
      v125 = ([objc_msgSend(v9 "faceData")] + v120);
      *v125 = v122;
      *(v125 + 1) = v124;
      v126 = sub_340DC(*&v9[16 * i3 + 568], *&v9[16 * i3 + 576], *&v9[16 * (4 - i3) + 728], *&v9[16 * (4 - i3) + 736], v121);
      v128 = v127;
      v129 = ([objc_msgSend(v9 "faceData")] + v120);
      *v129 = v126;
      *(v129 + 1) = v128;
      ++v119;
      v120 += 16;
    }

    while (v119 != 5);
    v117 += 80;
  }

  v130 = *(v9 + 237);
  v131 = sub_34098(*(v9 + 191), *(v9 + 192), *(v9 + 171));
  v133 = sub_3410C(v131, v132);
  v135 = v134;
  v136 = -v134;
  v137 = CGPathCreateMutable();
  CGPathMoveToPoint(v137, 0, *(v9 + 211), *(v9 + 212));
  CGPathAddLineToPoint(v137, 0, *(v9 + 213), *(v9 + 214));
  CGPathAddLineToPoint(v137, 0, *(v9 + 215), *(v9 + 216));
  CGPathAddLineToPoint(v137, 0, *(v9 + 239), *(v9 + 240));
  CGPathAddLineToPoint(v137, 0, *(v9 + 229), *(v9 + 230));
  CGPathAddLineToPoint(v137, 0, *(v9 + 231), *(v9 + 232));
  CGPathCloseSubpath(v137);
  [v9 setNoseTipPerimeterPath:CGPathCreateCopy(v137)];
  CGPathRelease(v137);
  for (i4 = 1376; i4 != 1552; i4 += 16)
  {
    v139 = &v9[i4];
    v140 = sub_34098(*&v9[i4 - 8], *&v9[i4], v130);
    v142 = v141;
    v143 = sub_340FC(v140, v141, v133, v135);
    LODWORD(v140) = sub_340FC(v140, v142, v136, v133);
    v144 = sub_340CC(v133, v135, v143);
    v146 = v145;
    v147 = sub_340CC(v136, v133, -*&v140);
    v148 = sub_3408C(v144, v146, v147);
    v150 = sub_3408C(v148, v149, v130);
    if (v150 < 0.0)
    {
      v150 = 0.0;
    }

    *(v139 - 23) = v150;
    *(v139 - 22) = v151;
  }

  v152 = *(v9 + 237);
  v153 = (v9 + 1536);
  for (i5 = 10; i5 != -1; --i5)
  {
    v155 = sub_34098(*(v153 - 1), *v153, v152);
    v157 = v156;
    v158 = sub_340FC(v155, v156, v133, v135);
    LODWORD(v155) = sub_340FC(v155, v157, v136, v133);
    v159 = sub_340CC(v133, v135, v158);
    v161 = v160;
    v162 = sub_340CC(v136, v133, -*&v155);
    v163 = sub_3408C(v159, v161, v162);
    v165 = sub_3408C(v163, v164, v152);
    if (v165 >= 0.0)
    {
      v167 = v165;
    }

    else
    {
      v167 = 0.0;
    }

    if (v166 >= 0.0)
    {
      v168 = v166;
    }

    else
    {
      v168 = 0.0;
    }

    if (i5 >= 6)
    {
      if (sub_34178(*(v9 + 171), *(v9 + 172), *(v9 + 191), *(v9 + 192), v167, v168) == 0.0)
      {
        goto LABEL_72;
      }

LABEL_71:
      CGPathAddLineToPoint(v296, 0, v167, v168);
      goto LABEL_72;
    }

    if (sub_34178(*(v9 + 191), *(v9 + 192), *(v9 + 171), *(v9 + 172), v167, v168) == 0.0)
    {
      goto LABEL_71;
    }

LABEL_72:
    v153 -= 2;
  }

  CGPathCloseSubpath(v296);
  [v9 setHeadPerimeter:CGPathCreateCopy(v296)];
  CGPathRelease(v296);
  if (width <= v298)
  {
    v169 = v298;
  }

  else
  {
    v169 = width;
  }

  v170 = v169 / *(v9 + 519);
  v171 = [PolylinePair alloc];
  LODWORD(v172) = *(v9 + 519);
  *&v173 = v170;
  [v9 setMouthPerimeterLinePair:{-[PolylinePair initWithMaxsize:segmentDelta:andAxis:](v171, "initWithMaxsize:segmentDelta:andAxis:", v173, v172, 1.0, 0.0)}];
  v174 = 0;
  v175 = *(v9 + 17);
  do
  {
    if (*&v9[v174 + 136] >= v175)
    {
      v176 = *&v9[v174 + 136];
    }

    else
    {
      v176 = v175;
    }

    [objc_msgSend(objc_msgSend(v9 mouthPerimeterLinePair];
    v174 += 16;
  }

  while (v174 != 112);
  for (i6 = 0; i6 != 80; i6 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "mouthPerimeterLinePair")];
  }

  [objc_msgSend(objc_msgSend(v9 "mouthPerimeterLinePair")];
  [objc_msgSend(objc_msgSend(v9 "mouthPerimeterLinePair")];
  mouthPerimeterLinePair = [v9 mouthPerimeterLinePair];
  v179 = *(v9 + 518);
  v180 = v179 * 0.06;
  *&v180 = v179 * 0.06;
  v181 = v179 * 0.02;
  *&v181 = v181;
  [mouthPerimeterLinePair expandWithToleranceTop:v180 bottom:v181];
  [objc_msgSend(v9 "mouthPerimeterLinePair")];
  [objc_msgSend(objc_msgSend(v9 "mouthPerimeterLinePair")];
  [objc_msgSend(objc_msgSend(v9 "mouthPerimeterLinePair")];
  mouthPerimeterLinePair2 = [v9 mouthPerimeterLinePair];
  *&v183 = *(v9 + 518) * 0.0;
  [mouthPerimeterLinePair2 constructBezierWithToleranceTop:v183 bottom:COERCE_DOUBLE(LODWORD(v183))];
  v184 = [PolylinePair alloc];
  LODWORD(v185) = *(v9 + 519);
  *&v186 = v170;
  [v9 setLeftEyePair:{-[PolylinePair initWithMaxsize:segmentDelta:andAxis:](v184, "initWithMaxsize:segmentDelta:andAxis:", v186, v185, 1.0, 0.0)}];
  for (i7 = 0; i7 != 80; i7 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  }

  for (i8 = 0; i8 != 80; i8 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  }

  [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  leftEyePair = [v9 leftEyePair];
  v190 = *(v9 + 518);
  v191 = v190 * 0.02;
  *&v191 = v190 * 0.02;
  v192 = v190 * 0.0312;
  *&v192 = v192;
  [leftEyePair expandWithToleranceTop:v191 bottom:v192];
  [objc_msgSend(v9 "leftEyePair")];
  [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  [objc_msgSend(objc_msgSend(v9 "leftEyePair")];
  leftEyePair2 = [v9 leftEyePair];
  v194 = *(v9 + 518);
  v195 = v194 * 0.08;
  *&v195 = v194 * 0.08;
  v196 = v194 * 0.028;
  *&v196 = v196;
  [leftEyePair2 constructBezierWithToleranceTop:v195 bottom:v196];
  v197 = [PolylinePair alloc];
  LODWORD(v198) = *(v9 + 519);
  *&v199 = v170;
  [v9 setRightEyePair:{-[PolylinePair initWithMaxsize:segmentDelta:andAxis:](v197, "initWithMaxsize:segmentDelta:andAxis:", v199, v198, 1.0, 0.0)}];
  for (i9 = 0; i9 != 80; i9 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  }

  for (i10 = 0; i10 != 80; i10 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  }

  [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  rightEyePair = [v9 rightEyePair];
  v203 = *(v9 + 518);
  v204 = v203 * 0.02;
  *&v204 = v203 * 0.02;
  v205 = v203 * 0.0312;
  *&v205 = v205;
  [rightEyePair expandWithToleranceTop:v204 bottom:v205];
  [objc_msgSend(v9 "rightEyePair")];
  [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  [objc_msgSend(objc_msgSend(v9 "rightEyePair")];
  rightEyePair2 = [v9 rightEyePair];
  v207 = *(v9 + 518);
  v208 = v207 * 0.0806;
  *&v208 = v207 * 0.0806;
  v209 = v207 * 0.028002;
  *&v209 = v209;
  [rightEyePair2 constructBezierWithToleranceTop:v208 bottom:v209];
  v210 = [PolylinePair alloc];
  LODWORD(v211) = *(v9 + 519);
  *&v212 = v170;
  [v9 setTeethPair:{-[PolylinePair initWithMaxsize:segmentDelta:andAxis:](v210, "initWithMaxsize:segmentDelta:andAxis:", v212, v211, 1.0, 0.0)}];
  for (i11 = 0; i11 != 80; i11 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "teethPair")];
  }

  for (i12 = 0; i12 != 80; i12 += 16)
  {
    [objc_msgSend(objc_msgSend(v9 "teethPair")];
  }

  teethPair = [v9 teethPair];
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  v217 = v216;
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  v219 = v218;
  teethPair2 = [v9 teethPair];
  if (v217 >= v219)
  {
    bottom = [teethPair2 bottom];
  }

  else
  {
    bottom = [teethPair2 top];
  }

  [bottom s0];
  [teethPair setS0:?];
  teethPair3 = [v9 teethPair];
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  v224 = v223;
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  v226 = v225;
  teethPair4 = [v9 teethPair];
  if (v224 <= v226)
  {
    bottom2 = [teethPair4 bottom];
  }

  else
  {
    bottom2 = [teethPair4 top];
  }

  [bottom2 s1];
  [teethPair3 setS1:?];
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  [objc_msgSend(objc_msgSend(v9 "teethPair")];
  teethPair5 = [v9 teethPair];
  v230 = *(v9 + 518);
  v231 = v230 * 0.01;
  *&v231 = v230 * 0.01;
  v232 = v230 * 0.02;
  *&v232 = v232;
  [teethPair5 constructBezierWithToleranceTop:v231 bottom:v232];
  v233 = [Polyline alloc];
  v234 = width;
  LODWORD(v235) = *(v9 + 519);
  *&v236 = v234;
  v237 = 0;
  *(v9 + 261) = [(Polyline *)v233 initWithMaxsize:v236 segmentDelta:v235 andAxis:1.0, 0.0];
  do
  {
    [*(v9 + 261) accomodatePoint:{*&v9[v237 + 72], *&v9[v237 + 80]}];
    v237 += 16;
  }

  while (v237 != 64);
  v238 = [Polyline alloc];
  LODWORD(v239) = *(v9 + 519);
  *&v240 = width;
  v241 = 0;
  *(v9 + 262) = [(Polyline *)v238 initWithMaxsize:v240 segmentDelta:v239 andAxis:1.0, 0.0];
  do
  {
    [*(v9 + 262) accomodatePoint:{*&v9[v241 + 8], *&v9[v241 + 16]}];
    v241 += 16;
  }

  while (v241 != 64);
  [*(v9 + 261) bridgeGapsLinear];
  [*(v9 + 262) bridgeGapsLinear];
  v242 = *(v9 + 518);
  v243 = v242 * 0.03615 + v242 * 0.03615;
  *&v242 = v242 * 0.0365;
  v244 = v243 * 0.8;
  v245 = *&v242 * 1.9;
  *&v246 = v245;
  *&v245 = v244;
  [*(v9 + 261) constructBezierWithToleranceOutside:v245 andInside:COERCE_DOUBLE(v246 | 0x3FFE666600000000)];
  *&v247 = v244;
  LODWORD(v248) = v246;
  [*(v9 + 262) constructBezierWithToleranceOutside:v247 andInside:v248];
  faceData = [v9 faceData];
  memset(&v316, 0, sizeof(v316));
  CGAffineTransformMakeScale(&v316, width, v298);
  v250 = [landmarksCopy objectForKeyedSubscript:@"faceBoundingBox"];
  [objc_msgSend(v250 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v252 = v251;
  [objc_msgSend(v250 objectForKeyedSubscript:{@"y", "doubleValue"}];
  v254 = v253;
  [objc_msgSend(v250 objectForKeyedSubscript:{@"w", "doubleValue"}];
  v256 = v255;
  [objc_msgSend(v250 objectForKeyedSubscript:{@"h", "doubleValue"}];
  v325.size.height = v257;
  t1 = v316;
  v325.origin.x = v252;
  v325.origin.y = v254;
  v325.size.width = v256;
  v326 = CGRectApplyAffineTransform(v325, &t1);
  v307 = v326.origin.y;
  v308 = v326.origin.x;
  v258 = v326.size.width;
  v259 = v326.size.height;
  memset(&v315, 0, sizeof(v315));
  CGAffineTransformMakeScale(&v315, v326.size.width, v326.size.height);
  v260 = [objc_msgSend(landmarksCopy objectForKeyedSubscript:{@"leftPupil", "objectAtIndex:", 0}];
  [objc_msgSend(v260 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v304 = v261;
  [objc_msgSend(v260 objectForKeyedSubscript:{@"y", "doubleValue"}];
  v263.f64[0] = v308;
  v263.f64[1] = v307;
  v301 = v263;
  v305 = vaddq_f64(v263, vaddq_f64(*&v315.tx, vmlaq_n_f64(vmulq_n_f64(*&v315.c, v262), *&v315.a, v304)));
  v264 = [objc_msgSend(landmarksCopy objectForKeyedSubscript:{@"rightPupil", "objectAtIndex:", 0}];
  [objc_msgSend(v264 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v299 = v265;
  [objc_msgSend(v264 objectForKeyedSubscript:{@"y", "doubleValue"}];
  v302 = vaddq_f64(v301, vaddq_f64(*&v315.tx, vmlaq_n_f64(vmulq_n_f64(*&v315.c, v266), *&v315.a, v299)));
  [faceData setFaceIndex:0];
  [faceData setLeftEye:?];
  [faceData setRightEye:?];
  [faceData rightEye];
  v268 = v267;
  v270 = v269;
  [faceData leftEye];
  [faceData setBetweenTheEyes:{(v268 + v271) * 0.5, (v270 + v272) * 0.5}];
  v305.f64[0] = vsubq_f64(v302, v305).f64[0];
  [faceData setLeftRightVec:?];
  [faceData setIOD:sqrt((v302.f64[1] - v305.f64[1]) * (v302.f64[1] - v305.f64[1]) + v305.f64[0] * v305.f64[0])];
  [faceData leftRightVec];
  v275 = sqrt(v273 * v273 + v274 * v274);
  v276 = v275;
  v277 = 0.0;
  _NF = v276 < 0.01;
  v279 = v274 / v276;
  v280 = v273 / v276;
  if (_NF)
  {
    v281 = 0.0;
  }

  else
  {
    v281 = v279;
  }

  if (_NF)
  {
    v280 = 0.0;
  }

  v282 = 1.0;
  if (v281 > 0.0)
  {
    v282 = v280 / v281;
  }

  *&v283 = atanf(v282);
  [faceData setEyeTiltAngle:v283];
  [faceData setFaceBounds:{v308, v307, v258, v259}];
  v284 = [landmarksCopy objectForKeyedSubscript:@"innerLips"];
  memset(&t2, 0, sizeof(t2));
  v314 = 0u;
  v285 = [v284 countByEnumeratingWithState:&t2 objects:&t1 count:16];
  v286 = 0.0;
  if (v285)
  {
    v287 = v285;
    v288 = **&t2.c;
    do
    {
      for (i13 = 0; i13 != v287; i13 = i13 + 1)
      {
        if (**&t2.c != v288)
        {
          objc_enumerationMutation(v284);
        }

        v290 = *(*&t2.b + 8 * i13);
        [objc_msgSend(v290 objectForKeyedSubscript:{@"x", "doubleValue"}];
        v292 = v291;
        [objc_msgSend(v290 objectForKeyedSubscript:{@"y", "doubleValue"}];
        v277 = v277 + v308 + v315.tx + v293 * v315.c + v315.a * v292;
        v286 = v286 + v307 + v315.ty + v293 * v315.d + v315.b * v292;
      }

      v287 = [v284 countByEnumeratingWithState:&t2 objects:&t1 count:16];
    }

    while (v287);
  }

  v294 = [v284 count];
  [faceData setMouthCenter:{v277 / v294, v286 / v294}];
  [objc_msgSend(landmarksCopy objectForKeyedSubscript:{@"faceOrientationIndex", "floatValue"}];
  [faceData setFaceOrientationIndex:?];
  return v9;
}

- (void)dealloc
{
  CGPathRelease(self->_noseTipPerimeterPath);
  CGPathRelease(self->_headPerimeter);
  [(FaceLandmarks *)self setFaceData:0];
  [(FaceLandmarks *)self setEyebrowRightTopLine:0];
  [(FaceLandmarks *)self setEyebrowLeftTopLine:0];
  [(FaceLandmarks *)self setMouthTopLine:0];
  [(FaceLandmarks *)self setMouthBottomLine:0];
  [(FaceLandmarks *)self setLeftEyePair:0];
  [(FaceLandmarks *)self setRightEyePair:0];
  [(FaceLandmarks *)self setMouthPerimeterLinePair:0];
  [(FaceLandmarks *)self setTeethPair:0];
  [(FaceLandmarks *)self setNosePair:0];
  v3.receiver = self;
  v3.super_class = FaceLandmarks;
  [(FaceLandmarks *)&v3 dealloc];
}

- (CGRect)imageRect
{
  objc_copyStruct(v6, &self->_imageRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)leftToRightVec
{
  objc_copyStruct(v4, &self->_leftToRightVec, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)upVec
{
  objc_copyStruct(v4, &self->_upVec, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end