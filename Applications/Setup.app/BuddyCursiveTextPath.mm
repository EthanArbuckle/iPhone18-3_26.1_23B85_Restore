@interface BuddyCursiveTextPath
- (BuddyCursiveTextPath)initWithURL:(id)a3;
- (BuddyCursiveTextPath)initWithURL:(id)a3 resolution:(int64_t)a4;
- (CGAffineTransform)transformForRect:(SEL)a3 pointSize:(CGRect)a4 flipped:(double)a5;
- (CGPath)pathForFraction:(double)a3 calculateLength:(BOOL)a4;
@end

@implementation BuddyCursiveTextPath

- (BuddyCursiveTextPath)initWithURL:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [v3 initWithURL:location[0] resolution:40];
  v4 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (BuddyCursiveTextPath)initWithURL:(id)a3 resolution:(int64_t)a4
{
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v60 = a4;
  v5 = v62;
  v62 = 0;
  v59.receiver = v5;
  v59.super_class = BuddyCursiveTextPath;
  v62 = [(BuddyCursiveTextPath *)&v59 init];
  objc_storeStrong(&v62, v62);
  if (!v62)
  {
    goto LABEL_27;
  }

  *(v62 + 1) = 0x3FE4CCCCC0000000;
  *(v62 + 2) = 0x3FF0000000000000;
  *(v62 + 3) = 0x3FD0000000000000;
  v58 = [NSData dataWithContentsOfURL:location[0]];
  if (v58)
  {
    v56 = 0;
    obj = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v58 options:0 format:0 error:&obj];
    objc_storeStrong(&v56, obj);
    v55 = v6;
    if (v6)
    {
      v7 = [v55 objectForKeyedSubscript:@"unitsPerEm"];
      [v7 floatValue];
      *(v62 + 10) = v8;

      v9 = [v55 objectForKeyedSubscript:@"ascender"];
      [v9 floatValue];
      *(v62 + 11) = v10;

      v11 = [v55 objectForKeyedSubscript:@"descender"];
      [v11 floatValue];
      *(v62 + 12) = v12;

      v53 = 0uLL;
      v13 = [v55 objectForKeyedSubscript:@"scale"];
      v65 = 0;
      objc_storeStrong(&v65, v13);
      if (v65 && [v65 count] == 4)
      {
        v14 = [v65 objectAtIndexedSubscript:0];
        [v14 floatValue];
        v16 = v15;
        v17 = [v65 objectAtIndexedSubscript:1];
        [v17 floatValue];
        v19 = v18;
        v20 = [v65 objectAtIndexedSubscript:2];
        [v20 floatValue];
        v22 = v21;
        v23 = [v65 objectAtIndexedSubscript:3];
        [v23 floatValue];
        v82 = v16;
        v81 = v19;
        v80 = v22;
        v79 = v24;
        v78.i64[0] = __PAIR64__(v19, v16);
        v78.i64[1] = __PAIR64__(v24, v22);
        v66 = v78;

        v64 = 1;
      }

      else
      {
        v77 = 0;
        v76 = 0;
        v75 = 0;
        v74 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v66 = 0u;
        v64 = 1;
      }

      objc_storeStrong(&v65, 0);
      v37 = v66;

      v53 = v37;
      v52 = [v55 objectForKeyedSubscript:@"strokes"];
      sub_1001FA118(v62 + 13, [v52 count]);
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v25 = v52;
      v26 = [v25 countByEnumeratingWithState:&v47 objects:v92 count:16];
      if (v26)
      {
        v27 = *v48;
        do
        {
          for (i = 0; i < v26; ++i)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v51 = *(*(&v47 + 1) + 8 * i);
            sub_1001FA1CC(v46);
            sub_1001FA204(v46, [v51 count]);
            v44 = 0u;
            v43 = 0u;
            v42 = 0u;
            v41 = 0u;
            v29 = v51;
            v30 = [v29 countByEnumeratingWithState:&v41 objects:v91 count:16];
            if (v30)
            {
              v31 = *v42;
              do
              {
                for (j = 0; j < v30; ++j)
                {
                  if (*v42 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v45 = *(*(&v41 + 1) + 8 * j);
                  sub_1001FA2B8(v46, &v45, &v53);
                }

                v30 = [v29 countByEnumeratingWithState:&v41 objects:v91 count:16];
              }

              while (v30);
            }

            sub_1001FA340(v62 + 13, v46);
            sub_1001FA3BC(v46);
          }

          v26 = [v25 countByEnumeratingWithState:&v47 objects:v92 count:16];
        }

        while (v26);
      }

      *(v62 + 16) = v60;
      path = [v62 pathForFraction:1 calculateLength:0.0];
      PathBoundingBox = CGPathGetPathBoundingBox(path);
      *&v38 = PathBoundingBox.origin.x;
      *(&v38 + 1) = *&PathBoundingBox.origin.y;
      *&v39 = PathBoundingBox.size.width;
      *(&v39 + 1) = *&PathBoundingBox.size.height;
      v33 = v62;
      *(v62 + 4) = v39;
      v33[3] = v38;
      CGPathRelease(path);
      *(v62 + 5) = *(v62 + 4) / 300.0;
      v34 = *(v62 + 5);
      v69 = v34;
      v68 = 0;
      v67 = 1092616192;
      v86 = v34;
      v85 = 0;
      v90 = v34;
      v89 = 0;
      v84 = fmaxf(v34, 0.0);
      v83 = 1092616192;
      v88 = v84;
      v87 = 1092616192;
      v35 = sub_1001FA3F4((fminf(v84, 10.0) / 10.0) - 1.0);
      *(v62 + 5) = ((v35 + 1.0) * 5.0);
      objc_storeStrong(&v52, 0);
      v57 = 0;
    }

    else
    {
      v63 = 0;
      v57 = 1;
    }

    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
  }

  else
  {
    v63 = 0;
    v57 = 1;
  }

  objc_storeStrong(&v58, 0);
  if (!v57)
  {
LABEL_27:
    v63 = v62;
    v57 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v62, 0);
  return v63;
}

- (CGAffineTransform)transformForRect:(SEL)a3 pointSize:(CGRect)a4 flipped:(double)a5
{
  *&v52 = a4.origin.x;
  *(&v52 + 1) = *&a4.origin.y;
  *&v53 = a4.size.width;
  *(&v53 + 1) = *&a4.size.height;
  v51 = self;
  v50 = a3;
  v49 = a5;
  v48 = a6;
  v47 = v51->_ascender - v51->_descender;
  v46 = -self->_descender / v47;
  v45 = v47 / self->_unitsPerM * a5;
  v43 = v53;
  v42 = v52;
  v44 = (CGRectGetHeight(a4) - v45) * 0.5;
  if (v48)
  {
    v7 = 1.0 - v46;
  }

  else
  {
    v7 = v46;
  }

  v41 = v44 + v7 * v45;
  origin = v51->_boundingBoxOfPath.origin;
  v40.size = v51->_boundingBoxOfPath.size;
  v40.origin = origin;
  *&retstr->tx = 0u;
  *&retstr->c = 0u;
  *&retstr->a = 0u;
  v39 = v40;
  height = v40.size.height;
  width = v40.size.width;
  y = v40.origin.y;
  origin.x = v40.origin.x;
  v12 = -CGRectGetMinX(*&origin.x);
  rect = v40;
  v13 = CGRectGetWidth(v40);
  CGAffineTransformMakeTranslation(retstr, v12 + -v13 * 0.5, 0.0);
  sx = v49 / v51->_unitsPerM;
  v36 = v40.size.width * sx;
  if (v40.size.width * sx > *&v53 && v36 > 0.0 && *&v53 > 0.0)
  {
    oslog = _BYLoggingFacility();
    v34 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v14 = oslog;
      v15 = v34;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v14, v15, "Scaling cursive text transform to fit within available width", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    sx = sx * (*&v53 / v36);
  }

  v16 = *&retstr->a;
  v17 = *&retstr->c;
  *&t1.tx = *&retstr->tx;
  *&t1.c = v17;
  *&t1.a = v16;
  v18 = 1.0;
  if (v48)
  {
    v18 = -1.0;
  }

  CGAffineTransformMakeScale(&t2, sx, sx * v18);
  CGAffineTransformConcat(&v32, &t1, &t2);
  v19 = *&v32.a;
  v20 = *&v32.c;
  *&retstr->tx = *&v32.tx;
  *&retstr->c = v20;
  *&retstr->a = v19;
  v21 = *&retstr->a;
  v22 = *&retstr->c;
  *&v28.tx = *&retstr->tx;
  *&v28.c = v22;
  *&v28.a = v21;
  *&v21 = v52;
  v23 = *(&v53 + 1);
  v24 = v53;
  *&v22 = *(&v52 + 1);
  v25 = CGRectGetWidth(*&v21);
  CGAffineTransformMakeTranslation(&v27, v25 * 0.5, v41);
  CGAffineTransformConcat(&__src, &v28, &v27);
  return memcpy(retstr, &__src, sizeof(CGAffineTransform));
}

- (CGPath)pathForFraction:(double)a3 calculateLength:(BOOL)a4
{
  v69 = self;
  v68 = a2;
  v67 = a3;
  v66 = a4;
  v65 = self->_rampTime / self->_duration;
  v64 = -(v65 - (v65 + 1.0) * a3);
  sub_1001FB1D8(v63);
  v62 = 0.0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74.i64[0] = 0;
  v74.i32[2] = 0;
  v61 = v74;
  v60 = 0;
  v59 = 0;
  p_bezierArrays = &v69->_bezierArrays;
  v57 = sub_1001FB210(&v69->_bezierArrays);
  v56 = sub_1001FB258(p_bezierArrays);
  while (sub_1001FB2A0(&v57, &v56))
  {
    v55 = sub_1001FB2D8(&v57);
    sub_1001FB2F0(v54);
    v53 = v55;
    v52 = sub_1001FB328(v55);
    v51 = sub_1001FB370(v53);
    while (sub_1001FB3B8(&v52, &v51))
    {
      v50 = sub_1001FB3F0(&v52);
      v4 = v50[3];
      v79 = *v50;
      v78 = v4;
      v107 = vceqq_f32(v79, v4);
      v109 = v107;
      v108 = vminvq_u32(v107);
      if ((v108 & 0x80000000) != 0)
      {
        resolution = 0;
      }

      else
      {
        resolution = v69->_resolution;
      }

      v49 = resolution;
      for (i = 0; i <= v49; ++i)
      {
        v47 = 1.0 / v69->_resolution * i;
        v46 = 0uLL;
        v6 = v47;
        *v7.i64 = sub_1001FB408(v50, v6);
        v46 = v7;
        v45 = v7;
        v44 = 0uLL;
        v7.f32[0] = v47;
        *&v8 = sub_1001FB4DC(v50, v7.f32[0]);
        v44 = v8;
        v89 = DWORD1(v8);
        v88 = -*&v8;
        v87.i32[0] = DWORD1(v8);
        v87.f32[1] = -*&v8;
        v80 = v87;
        v110 = v87;
        v113 = v87;
        v129 = v87;
        v128 = v87;
        v130 = vmul_f32(v87, v87);
        v112 = vaddv_f32(v130);
        v117 = v112;
        v116 = LODWORD(v112);
        v115 = LODWORD(v112);
        v119 = LODWORD(v112);
        v127 = LODWORD(v112);
        v126 = vrsqrte_f32(LODWORD(v112));
        v118 = v126;
        v122 = LODWORD(v112);
        v121 = vmul_f32(v126, v126);
        v120 = vrsqrts_f32(LODWORD(v112), v121);
        v114 = vmul_f32(v126, v120);
        v125 = LODWORD(v112);
        v124 = vmul_f32(v114, v114);
        v123 = vrsqrts_f32(LODWORD(v112), v124);
        v111 = vmul_f32(v114, v123);
        v43 = vmul_n_f32(v87, v111.f32[0]);
        if (sub_1001FB5FC() & 1) != 0 || (sub_1001FB5FC())
        {
          v86 = 0;
          v85 = 1065353216;
          v84 = 0x3F80000000000000;
          v43 = 0x3F80000000000000;
        }

        if (v60)
        {
          v42 = v45;
          v41 = v61;
          v95 = v45;
          v94 = v61;
          v93 = v45;
          v92 = v61;
          v91 = v45;
          v90 = v61;
          v135 = v45;
          v134 = v61;
          v133 = v45;
          v132 = v61;
          v131 = vsubq_f32(v45, v61);
          v138 = v131;
          v137 = v131;
          v136 = v131;
          v142 = v131;
          v141 = v131;
          v140 = v131;
          v139 = v131;
          v147 = v131;
          v146 = v131;
          v145 = v131;
          v144 = v131;
          v143 = vmulq_f32(v131, v131);
          v149 = v143;
          v148 = v143;
          v9 = sqrtf(vaddv_f32(*v143.f32) + v143.f32[2]);
          v10 = 0.5;
          if ((v59 & 1) == 0)
          {
            v10 = 1.0;
          }

          v62 = v62 + v9 * v10;
          v59 = 0;
        }

        v61 = v45;
        v60 = 1;
        v40 = v62 / v69->_length;
        v11 = v40;
        v12 = v64;
        v13 = v11 - v12;
        v14 = v65;
        v73 = v13 / v14;
        v72 = 0;
        v71 = 1065353216;
        v102 = v13 / v14;
        v101 = 0;
        v106 = v13 / v14;
        v105 = 0;
        v100 = fmaxf(v13 / v14, 0.0);
        v99 = 1065353216;
        v104 = v100;
        v103 = 1065353216;
        v39 = 1.0 - fminf(v100, 1.0);
        initialWeight = v69->_initialWeight;
        finalWeight = v69->_finalWeight;
        v17 = powf(v39 - 1.0, 3.0);
        v98 = initialWeight;
        v97 = finalWeight;
        v96 = v17 + 1.0;
        v38 = ((initialWeight + ((v17 + 1.0) * (finalWeight - initialWeight))) * v46.f32[3]);
        if (!v66 && v40 > v64 + v65)
        {
          sub_1001FB61C(v63, v54);
          v36 = 9;
          goto LABEL_23;
        }

        v82 = v45.i32[1];
        v83 = v45.i32[0];
        v81 = v45.i64[0];
        v37 = v45.i64[0];
        sub_1001FB698(v54, &v37, &v43, &v38, &v62);
      }

      v59 = 1;
      sub_1001FB738(&v52);
    }

    sub_1001FB61C(v63, v54);
    v36 = 0;
LABEL_23:
    sub_1001FB758(v54);
    if (v36)
    {
      break;
    }

    sub_1001FB790(&v57);
  }

  if (v66)
  {
    v69->_length = v62;
  }

  path = CGPathCreateMutable();
  v34[1] = v63;
  v34[0] = sub_1001FB7B0(v63);
  v33 = sub_1001FB7F8(v63);
  while (sub_1001FB840(v34, &v33))
  {
    v32 = sub_1001FB878(v34);
    if (!sub_1001FB890(v32))
    {
      v31 = sub_1001FB8B8(v32);
      v30 = sub_1001FB914(v32);
      v29 = vmla_n_f32(*v31, v31[1], v31[2].f32[0]);
      CGPathMoveToPoint(path, 0, v29.f32[0], v29.f32[1]);
      v28 = 1;
      v27 = sub_1001FB974(v32) - 1;
      while (v28 < v27)
      {
        v26 = sub_1001FB99C(v32, v28);
        v25 = vmla_n_f32(*v26, v26[1], v26[2].f32[0]);
        CGPathAddLineToPoint(path, 0, v25.f32[0], v25.f32[1]);
        ++v28;
      }

      v18 = sub_1001FBA0C(COERCE_FLOAT(HIDWORD(*(v30 + 8))), COERCE_FLOAT(*(v30 + 8)));
      CGPathAddArc(path, 0, COERCE_FLOAT(*v30), COERCE_FLOAT(HIDWORD(*v30)), *(v30 + 16), v18, v18 + 3.14159265, 0);
      for (j = sub_1001FB974(v32) - 2; j >= 1; --j)
      {
        v23 = sub_1001FB99C(v32, j);
        v19.i32[0] = v23[2].i32[0];
        v22 = vmls_lane_f32(*v23, v23[1], v19, 0);
        CGPathAddLineToPoint(path, 0, v22.f32[0], v22.f32[1]);
      }

      v20 = sub_1001FBA0C(-COERCE_FLOAT(HIDWORD(*&v31[1])), -COERCE_FLOAT(*&v31[1]));
      CGPathAddArc(path, 0, COERCE_FLOAT(*v31), COERCE_FLOAT(HIDWORD(*v31)), v31[2].f32[0], v20, v20 + 3.14159265, 0);
    }

    sub_1001FBA3C(v34);
  }

  v70 = path;
  v36 = 1;
  sub_1001FBA5C(v63);
  return v70;
}

@end