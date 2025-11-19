@interface MKJunction
- (BOOL)_willSnapToNinetyDegreesForManeuverTypes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)willSnapToSharpRight;
- (MKJunction)initWithCoder:(id)a3;
- (MKJunction)initWithJunction:(id)a3;
- (MKJunction)initWithType:(int)a3 maneuver:(int)a4 drivingSide:(int)a5 elements:(GEOJunctionElement *)a6 count:(unint64_t)a7;
- (id)description;
- (id)roundaboutArrowWithSize:(CGSize)a3 metrics:(id *)a4 outerRadius:(double)a5 endAngle:(double)a6 pivot:(CGPoint *)a7;
- (unint64_t)hash;
- (void)_addJunctionStemCapToPath:(id)a3 fromStartPoint:(CGPoint)a4 topEndPoint:(CGPoint)a5 cornerRadius:(double)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getArrowPath:(id *)a3 arrowStrokePath:(id *)a4 intersectionBackgroundPath:(id *)a5 strokePath:(id *)a6 withSize:(CGSize)a7 metrics:(id *)a8 drivingSide:(int)a9 visualCenter:(CGPoint *)a10;
- (void)getArrowPath:(id *)a3 arrowStrokePath:(id *)a4 pivot:(CGPoint *)a5 withSize:(CGSize)a6 metrics:(id *)a7 visualCenter:(CGPoint *)a8;
- (void)getRoundaboutArrowPath:(id *)a3 intersectionBackgroundPath:(id *)a4 strokePath:(id *)a5 withSize:(CGSize)a6 metrics:(id *)a7 drivingSide:(int)a8 visualCenter:(CGPoint *)a9;
@end

@implementation MKJunction

- (void)dealloc
{
  free(self->_elements);
  v3.receiver = self;
  v3.super_class = MKJunction;
  [(MKJunction *)&v3 dealloc];
}

- (MKJunction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"kJunctionElementsCountEncodingKey"];
  if (v5 < 0)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJunctionElementsEncodingKey"];
    if ([v7 length] >= 16 * v6)
    {
      v9 = [v4 decodeIntegerForKey:@"kJunctionManeuverEncodingKey"];
      v10 = [v4 decodeIntegerForKey:@"kJuctionTypeEncodingKey"];
      v11 = [v4 decodeIntegerForKey:@"kJunctionDrivingSideEncodingKey"];
      v12 = malloc_type_calloc(0x10uLL, v6, 0x6227269EuLL);
      memcpy(v12, [v7 bytes], 16 * v6);
      self = [(MKJunction *)self initWithType:v10 maneuver:v9 drivingSide:v11 elements:v12 count:v6];
      free(v12);
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"kJuctionTypeEncodingKey"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_elements length:16 * self->_count];
  [v6 encodeObject:v5 forKey:@"kJunctionElementsEncodingKey"];

  [v6 encodeInt:LODWORD(self->_count) forKey:@"kJunctionElementsCountEncodingKey"];
  [v6 encodeInteger:self->_maneuver forKey:@"kJunctionManeuverEncodingKey"];
  [v6 encodeInteger:self->_drivingSide forKey:@"kJunctionDrivingSideEncodingKey"];
}

- (void)getRoundaboutArrowPath:(id *)a3 intersectionBackgroundPath:(id *)a4 strokePath:(id *)a5 withSize:(CGSize)a6 metrics:(id *)a7 drivingSide:(int)a8 visualCenter:(CGPoint *)a9
{
  height = a6.height;
  v15 = 0;
  v162 = *MEMORY[0x1E69E9840];
  var2 = a7->var2;
  var19 = a7->var19;
  width = a6.width;
  if (a6.width >= height)
  {
    v17 = height;
  }

  else
  {
    v17 = a6.width;
  }

  v160 = 0;
  v18 = 0.0;
  do
  {
    v19 = self->_snapped[v15];
    if (v19 && v19->var2 == 2)
    {
      v18 = v15 * 0.785398163 + -1.57079633;
    }

    ++v15;
  }

  while (v15 != 8);
  v139 = v17 * (var19 / 55.0);
  v131 = v139 - var2;
  v20 = fmod(v18, 6.28318531);
  v21 = v20;
  if (a8 == 1)
  {
    v22 = v20 + 6.28318531;
    if (v21 >= 0.0)
    {
      v22 = v21;
    }

    v23 = 3.14159265;
    if (v22 > 3.14159265)
    {
      v23 = 9.42477796;
    }

    v21 = v23 - v22;
  }

  v128 = a3;
  memcpy(__dst, a7, sizeof(__dst));
  v127 = [(MKJunction *)self roundaboutArrowWithSize:__dst metrics:&v160 outerRadius:width endAngle:height pivot:v139, v21];
  v24 = [MEMORY[0x1E69DC728] bezierPath];
  [v24 addArcWithCenter:1 radius:v160 startAngle:v139 endAngle:0.0 clockwise:6.28318531];
  [v24 addArcWithCenter:0 radius:v160 startAngle:v131 endAngle:6.28318531 clockwise:0.0];
  [v24 closePath];
  var6 = a7->var6;
  if (v160.x - v139 >= v160.y - v139)
  {
    v26 = v160.y - v139;
  }

  else
  {
    v26 = v160.x - v139;
  }

  if (v26 >= width - (v160.x - v139))
  {
    v27 = width - (v160.x - v139);
  }

  else
  {
    v27 = v26;
  }

  v28 = height - (v160.y - v139);
  v29 = [MEMORY[0x1E69DC728] bezierPath];
  v137 = *(MEMORY[0x1E695EFF8] + 8);
  v138 = *MEMORY[0x1E695EFF8];
  v133 = [MEMORY[0x1E695DF70] array];
  v30 = 0;
  v31 = a8;
  do
  {
    v32 = self->_snapped[v30];
    if (v32 && !v32->var2)
    {
      v33 = MEMORY[0x1E696AD98];
      v34 = fmod(v30 * 0.785398163 + -1.57079633, 6.28318531);
      if (a8 == 1)
      {
        if (v34 < 0.0)
        {
          v34 = v34 + 6.28318531;
        }

        if (v34 <= 3.14159265)
        {
          v34 = 3.14159265 - v34;
        }

        else
        {
          v34 = 9.42477796 - v34;
        }
      }

      v35 = [v33 numberWithDouble:v34];
      [v133 addObject:v35];
    }

    ++v30;
  }

  while (v30 != 8);
  if (v27 < v28)
  {
    v28 = v27;
  }

  if (var6 >= var2 * 0.5)
  {
    v36 = var2 * 0.5;
  }

  else
  {
    v36 = var6;
  }

  v136 = v36;
  if (a7->var42 || ![v133 count])
  {
    [v29 moveToPoint:{v139 + v160.x, v160.y}];
    [v29 addArcWithCenter:1 radius:v160 startAngle:v139 endAngle:0.0 clockwise:6.28318531];
  }

  else
  {
    [v133 sortUsingSelector:sel_compare_];
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v37 = v133;
    v38 = [v37 countByEnumeratingWithState:&v155 objects:v161 count:16];
    if (v38)
    {
      v39 = v38;
      v125 = a5;
      v126 = a9;
      v40 = 0;
      v41 = *v156;
      v42 = v138;
      v152 = v139 * v139;
      v140 = fabs(v136);
      v141 = v139 + v28 - v136;
      v43 = v137;
      v134 = v137;
      v135 = v138;
      v44 = v137;
      v45 = v138;
      while (1)
      {
        v46 = 0;
        v47 = v44;
        v48 = v45;
        v49 = v43;
        v50 = v42;
        do
        {
          v144 = v50;
          v146 = v49;
          v148 = v48;
          v149 = v47;
          if (*v156 != v41)
          {
            objc_enumerationMutation(v37);
          }

          [*(*(&v155 + 1) + 8 * v46) floatValue];
          v52 = v51;
          x = v160.x;
          v54 = __sincos_stret(v51 + -1.57079633);
          v55 = var2 * v54.__cosval * 0.5;
          v56 = x + v55;
          y = v160.y;
          v58 = var2 * v54.__sinval * 0.5;
          v59 = v160.y + v58;
          v153 = v55;
          v60 = x - v55;
          v151 = v58;
          v61 = v160.y - v58;
          v62 = __sincos_stret(v52);
          v63 = tan(v52);
          v64 = -v63;
          if (v63 >= 0.0)
          {
            v64 = v63;
          }

          v65 = v64 <= 10000000.0;
          if (v64 <= 10000000.0)
          {
            v66 = v59 - v63 * v56;
          }

          else
          {
            v66 = v56;
          }

          v143 = v66;
          v67 = INFINITY;
          if (v65)
          {
            v68 = v63;
          }

          else
          {
            v68 = INFINITY;
          }

          v69 = v61 - v63 * v60;
          if (!v65)
          {
            v69 = v60;
          }

          if (v68 != 0.0)
          {
            v67 = 0.0;
            if (v68 != INFINITY)
            {
              v67 = -1.0 / v68;
            }
          }

          v70 = fabs(v67);
          v71 = v70 == INFINITY;
          if (v70 == INFINITY)
          {
            v72 = x;
          }

          else
          {
            v72 = y - v67 * x;
          }

          if (v71)
          {
            v67 = INFINITY;
          }

          if (v68 == v67)
          {
            v73 = NAN;
            v74 = NAN;
            goto LABEL_69;
          }

          if (v68 == INFINITY)
          {
            v74 = v69;
LABEL_68:
            v73 = v72 + v67 * v74;
            goto LABEL_69;
          }

          if (v67 == INFINITY)
          {
            v74 = v72;
            v67 = v68;
            v72 = v69;
            goto LABEL_68;
          }

          v74 = (v72 - v69) / (v68 - v67);
          v73 = v69 + v68 * v74;
LABEL_69:
          v75 = x + v62.__cosval * v141;
          v76 = y + v62.__sinval * v141;
          v77 = sqrt((y - v73) * (y - v73) + (x - v74) * (x - v74));
          v78 = sqrt(v152 - v77 * v77);
          v79 = atan(v68);
          v80 = __sincos_stret(v79);
          v81 = sqrt((v74 + v78 * v80.__cosval - v75) * (v74 + v78 * v80.__cosval - v75) + (v73 + v78 * v80.__sinval - v76) * (v73 + v78 * v80.__sinval - v76));
          v82 = sqrt((v74 - v78 * v80.__cosval - v75) * (v74 - v78 * v80.__cosval - v75) + (v73 - v78 * v80.__sinval - v76) * (v73 - v78 * v80.__sinval - v76));
          if (v81 >= v82)
          {
            v44 = v73 - v78 * v80.__sinval;
          }

          else
          {
            v44 = v73 + v78 * v80.__sinval;
          }

          if (v81 >= v82)
          {
            v45 = v74 - v78 * v80.__cosval;
          }

          else
          {
            v45 = v74 + v78 * v80.__cosval;
          }

          if (v68 == 0.0)
          {
            v83 = INFINITY;
          }

          else
          {
            v83 = 0.0;
            if (v68 != INFINITY)
            {
              v83 = -1.0 / v68;
            }
          }

          v84 = fabs(v83);
          v85 = v84 == INFINITY;
          if (v84 == INFINITY)
          {
            v86 = x;
          }

          else
          {
            v86 = y - v83 * x;
          }

          if (v85)
          {
            v87 = INFINITY;
          }

          else
          {
            v87 = v83;
          }

          if (v68 == v87)
          {
            v88 = NAN;
            v89 = NAN;
            goto LABEL_92;
          }

          if (v68 == INFINITY)
          {
            v89 = v143;
LABEL_91:
            v88 = v86 + v87 * v89;
            goto LABEL_92;
          }

          if (v87 == INFINITY)
          {
            v89 = v86;
            v87 = v68;
            v86 = v143;
            goto LABEL_91;
          }

          v89 = (v86 - v143) / (v68 - v87);
          v88 = v143 + v68 * v89;
LABEL_92:
          v90 = v75 + v153;
          v43 = v76 - v151;
          v91 = x - v89;
          v42 = v75 - v153;
          v92 = sqrt((y - v88) * (y - v88) + v91 * v91);
          v93 = sqrt(v152 - v92 * v92);
          v94 = v89 + v93 * v80.__cosval;
          v95 = v88 + v93 * v80.__sinval;
          v96 = v89 - v93 * v80.__cosval;
          v97 = v88 - v93 * v80.__sinval;
          v98 = sqrt((v94 - v75) * (v94 - v75) + (v95 - v76) * (v95 - v76));
          v99 = v96 - v75;
          v100 = v76 + v151;
          v101 = sqrt(v99 * v99 + (v97 - v76) * (v97 - v76));
          if (v98 >= v101)
          {
            v102 = v97;
          }

          else
          {
            v102 = v95;
          }

          if (v98 >= v101)
          {
            v103 = v96;
          }

          else
          {
            v103 = v94;
          }

          [v24 moveToPoint:{v103, v102}];
          [v24 addLineToPoint:{v90, v100}];
          if (v140 > 2.22044605e-16)
          {
            [(MKJunction *)self _addJunctionStemCapToPath:v24 fromStartPoint:v90 topEndPoint:v100 cornerRadius:v42, v43, v136];
          }

          [v24 addLineToPoint:{v42, v43}];
          [v24 addLineToPoint:{v45, v44}];
          [v24 addLineToPoint:{v103, v102}];
          [v24 closePath];
          if (v40)
          {
            [v29 moveToPoint:{v144, v146}];
            v150 = v43;
            [v29 addLineToPoint:{v148, v149}];
            v145 = v100;
            v147 = v42;
            v104 = v160.y;
            v105 = v160.x;
            v106 = v149 - v160.y;
            v107 = v148 - v160.x;
            v108 = atan2f(v106, v107);
            v109 = v102 - v104;
            v110 = v103 - v105;
            v111 = atan2f(v109, v110);
            v112 = v104;
            v42 = v147;
            v113 = v108;
            v43 = v150;
            [v29 addArcWithCenter:1 radius:v105 startAngle:v112 endAngle:v139 clockwise:{v113, v111}];
            [v29 addLineToPoint:{v90, v145}];
          }

          else
          {
            v137 = v100;
            v138 = v90;
            v134 = v102;
            v135 = v103;
          }

          ++v46;
          v40 = 1;
          v47 = v44;
          v48 = v45;
          v49 = v43;
          v50 = v42;
        }

        while (v39 != v46);
        v114 = [v37 countByEnumeratingWithState:&v155 objects:v161 count:{16, v44, v45, v43, v42}];
        v39 = v114;
        if (!v114)
        {

          [v29 moveToPoint:{v42, v43}];
          [v29 addLineToPoint:{v45, v44}];
          v115 = v160.y;
          v116 = v160.x;
          v117 = v44 - v160.y;
          v118 = v45 - v160.x;
          v119 = atan2f(v117, v118);
          v120 = v134 - v115;
          v121 = v135 - v116;
          [v29 addArcWithCenter:1 radius:v116 startAngle:v115 endAngle:v139 clockwise:{v119, atan2f(v120, v121)}];
          [v29 addLineToPoint:{v138, v137}];
          a5 = v125;
          a9 = v126;
          v31 = a8;
          goto LABEL_110;
        }
      }
    }
  }

LABEL_110:
  [v29 moveToPoint:{v131 + v160.x, v160.y}];
  [v29 addArcWithCenter:1 radius:v160 startAngle:v131 endAngle:0.0 clockwise:6.28318531];
  if (v31 == 1)
  {
    memset(__dst, 0, 48);
    CGAffineTransformMakeScale(&v154, -1.0, 1.0);
    CGAffineTransformTranslate(__dst, &v154, -width, 0.0);
    v154 = *__dst;
    [v24 applyTransform:&v154];
    v154 = *__dst;
    [v29 applyTransform:&v154];
    v154 = *__dst;
    [v127 applyTransform:&v154];
  }

  if (v128)
  {
    v122 = v127;
    *v128 = v127;
  }

  if (a4)
  {
    v123 = v24;
    *a4 = v24;
  }

  if (a5)
  {
    v124 = v29;
    *a5 = v29;
  }

  if (a9)
  {
    *a9 = v160;
  }
}

- (id)roundaboutArrowWithSize:(CGSize)a3 metrics:(id *)a4 outerRadius:(double)a5 endAngle:(double)a6 pivot:(CGPoint *)a7
{
  var2 = a4->var2;
  v11 = a6 > 0.0;
  if (a6 <= -3.14159265)
  {
    v11 = 1;
  }

  v12 = a6 < 3.14159265 && v11;
  v143 = floor((a3.height - a5) * 0.5) - a4->var21;
  v13 = a3.width * 0.5;
  v14 = a3.height * 0.5;
  if (a7)
  {
    a7->x = v13;
    a7->y = v14;
  }

  v150 = (a3.width - var2) * 0.5;
  v151 = a3.height - a4->var20;
  v152 = var2 + v150;
  v15 = [MEMORY[0x1E69DC728] bezierPath];
  [v15 moveToPoint:{var2 + v150, v151}];
  v133 = v14 + v13 * -0.0;
  v16 = v133 + (var2 + v150) * 0.0;
  v17 = sqrt((v13 - v152) * (v13 - v152) + (v14 - v16) * (v14 - v16));
  v135 = a5 * a5;
  v146 = a5;
  v18 = sqrt(a5 * a5 - v17 * v17);
  v19 = atan(INFINITY);
  v20 = __sincos_stret(v19);
  v21 = sqrt((var2 + v150 + v18 * v20.__cosval - v152) * (var2 + v150 + v18 * v20.__cosval - v152) + (v16 + v18 * v20.__sinval - v151) * (v16 + v18 * v20.__sinval - v151));
  v22 = sqrt((var2 + v150 - v18 * v20.__cosval - v152) * (var2 + v150 - v18 * v20.__cosval - v152) + (v16 - v18 * v20.__sinval - v151) * (v16 - v18 * v20.__sinval - v151));
  if (v21 >= v22)
  {
    v23 = v16 - v18 * v20.__sinval;
  }

  else
  {
    v23 = v16 + v18 * v20.__sinval;
  }

  v131 = v23;
  if (v21 >= v22)
  {
    v24 = var2 + v150 - v18 * v20.__cosval;
  }

  else
  {
    v24 = var2 + v150 + v18 * v20.__cosval;
  }

  v141 = v24;
  [v15 addLineToPoint:?];
  v25 = __sincos_stret(a6);
  v26 = v13 + v25.__cosval * a5;
  v27 = v14 + v25.__sinval * a5;
  v28 = __sincos_stret(a6 + -1.57079633);
  v29 = v28.__cosval * var2 * 0.5;
  v30 = v26 + v29;
  v128 = var2;
  v31 = v28.__sinval * var2 * 0.5;
  v32 = v27 + v31;
  v33 = v26 - v29;
  v34 = v27 - v31;
  *&v31 = v32 - v14;
  *&v29 = v30 - v13;
  v35 = atan2f(*&v31, *&v29);
  v36 = v14;
  v37 = v35;
  v38 = v34 - v36;
  v39 = v33 - v13;
  v40 = atan2f(v38, v39);
  v41 = v40;
  v42 = -v35;
  if (v35 >= 0.0)
  {
    v42 = v35;
  }

  if (v40 >= 0.0)
  {
    v43 = v40;
  }

  else
  {
    v43 = -v41;
  }

  if (v42 >= v43 || v12)
  {
    v45 = v41;
  }

  else
  {
    v45 = v35;
  }

  v60 = v45 == v37;
  v46 = v36;
  v47 = !v60 || v12;
  if (v47)
  {
    v48 = v33;
  }

  else
  {
    v48 = v30;
  }

  v148 = v48;
  if (v47)
  {
    v49 = v34;
  }

  else
  {
    v49 = v32;
  }

  v145 = v49;
  if (v47)
  {
    v33 = v30;
    v50 = v32;
  }

  else
  {
    v50 = v34;
  }

  v51 = v131 - v36;
  v52 = v141 - v13;
  v130 = atan2f(v51, v52);
  v132 = v45;
  [v15 addArcWithCenter:0 radius:v13 startAngle:v36 endAngle:v146 clockwise:?];
  v53 = v143 * 0.600000024;
  v142 = v145 + v143 * 0.600000024 * v25.__sinval;
  v144 = v148 + v143 * 0.600000024 * v25.__cosval;
  [v15 addLineToPoint:?];
  v139 = v50 + v53 * v25.__sinval;
  v140 = v33 + v53 * v25.__cosval;
  [v15 addLineToPoint:?];
  [v15 addLineToPoint:{v33, v50}];
  if (v33 == v13)
  {
    v55 = v33;
    v54 = INFINITY;
    v57 = v128;
    v56 = 0.0;
  }

  else
  {
    v54 = (v50 - v36) / (v33 - v13);
    v55 = v50 - v54 * v33;
    if (v54 == 0.0)
    {
      v56 = INFINITY;
    }

    else if (v54 == INFINITY)
    {
      v54 = INFINITY;
      v56 = 0.0;
    }

    else
    {
      v56 = -1.0 / v54;
    }

    v57 = v128;
  }

  v58 = v146 - v57;
  v59 = fabs(v56);
  v60 = v59 == INFINITY;
  if (v59 == INFINITY)
  {
    v61 = v13;
  }

  else
  {
    v61 = v36 - v56 * v13;
  }

  if (v60)
  {
    v62 = INFINITY;
  }

  else
  {
    v62 = v56;
  }

  if (v54 == v62)
  {
    v63 = NAN;
    v64 = NAN;
    goto LABEL_58;
  }

  if (v54 == INFINITY)
  {
    v64 = v55;
LABEL_57:
    v63 = v61 + v62 * v64;
    goto LABEL_58;
  }

  if (v62 == INFINITY)
  {
    v64 = v61;
    v62 = v54;
    v61 = v55;
    goto LABEL_57;
  }

  v64 = (v61 - v55) / (v54 - v62);
  v63 = v55 + v54 * v64;
LABEL_58:
  v65 = sqrt((v46 - v63) * (v46 - v63) + (v13 - v64) * (v13 - v64));
  v129 = v58;
  v147 = v58 * v58;
  v66 = sqrt(v58 * v58 - v65 * v65);
  v67 = atan(v54);
  v68 = __sincos_stret(v67);
  v69 = v64 + v66 * v68.__cosval;
  *&v70 = v64 - v66 * v68.__cosval;
  v71 = sqrt((v69 - v33) * (v69 - v33) + (v63 + v66 * v68.__sinval - v50) * (v63 + v66 * v68.__sinval - v50));
  v72 = sqrt((*&v70 - v33) * (*&v70 - v33) + (v63 - v66 * v68.__sinval - v50) * (v63 - v66 * v68.__sinval - v50));
  if (v71 >= v72)
  {
    v73 = v63 - v66 * v68.__sinval;
  }

  else
  {
    v73 = v63 + v66 * v68.__sinval;
  }

  if (v71 >= v72)
  {
    v74 = *&v70;
  }

  else
  {
    v74 = v69;
  }

  if (v148 == v13)
  {
    v77 = 0.0;
    v75 = INFINITY;
    v76 = v148;
  }

  else
  {
    v75 = (v145 - v46) / (v148 - v13);
    v76 = v145 - v75 * v148;
    if (v75 == 0.0)
    {
      v77 = INFINITY;
    }

    else
    {
      v77 = 0.0;
      if (v75 == INFINITY)
      {
        v75 = INFINITY;
      }

      else
      {
        v77 = -1.0 / v75;
      }
    }
  }

  v78 = fabs(v77);
  v79 = v78 == INFINITY;
  if (v78 == INFINITY)
  {
    v80 = v13;
  }

  else
  {
    v80 = v46 - v77 * v13;
  }

  if (v79)
  {
    v77 = INFINITY;
  }

  if (v75 == v77)
  {
    *&v70 = 0x7FF8000000000000;
    v81 = NAN;
    goto LABEL_83;
  }

  if (v75 == INFINITY)
  {
    v81 = v76;
LABEL_82:
    *&v70 = v80 + v77 * v81;
    goto LABEL_83;
  }

  if (v77 == INFINITY)
  {
    v81 = v80;
    v77 = v75;
    v80 = v76;
    goto LABEL_82;
  }

  v81 = (v80 - v76) / (v75 - v77);
  *&v70 = v76 + v75 * v81;
LABEL_83:
  v126 = v81;
  v127 = *&v70;
  *&v70 = v46 - *&v70;
  v124 = v70;
  v125 = v13 - v81;
  v82 = atan(v75);
  v83 = __sincos_stret(v82);
  v84 = 0.0;
  v85.f64[0] = v150;
  v86.f64[0] = v133 + v150 * 0.0;
  v87.f64[0] = v13 - v150;
  v88.f64[0] = v46 - v86.f64[0];
  *&v87.f64[1] = v124;
  v88.f64[1] = v125;
  v89 = vsqrtq_f64(vaddq_f64(vmulq_f64(v87, v87), vmulq_f64(v88, v88)));
  v88.f64[0] = v135;
  v88.f64[1] = v147;
  v90 = vsubq_f64(v88, vmulq_f64(v89, v89));
  v88.f64[0] = v20.__cosval;
  v88.f64[1] = v83.__cosval;
  v91 = vsqrtq_f64(v90);
  v85.f64[1] = v126;
  v92 = vmlaq_f64(v85, v88, v91);
  v90.f64[0] = v20.__sinval;
  v90.f64[1] = v83.__sinval;
  v86.f64[1] = v127;
  v93 = vmlaq_f64(v86, v90, v91);
  v94 = vmlsq_f64(v85, v88, v91);
  v95 = vmlsq_f64(v86, v90, v91);
  v90.f64[0] = v151;
  v96.f64[0] = v152;
  v96.f64[1] = v148;
  v136 = v93.f64[0];
  v137 = v92.f64[0];
  v97 = vsubq_f64(v92, v96);
  v90.f64[1] = v145;
  v98 = vsubq_f64(v93, v90);
  v138 = v94.f64[0];
  v99 = vsubq_f64(v94, v96);
  v134 = v95.f64[0];
  v100 = vsubq_f64(v95, v90);
  *&v99.f64[0] = vmovn_s64(vcgtq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v99, v99), vmulq_f64(v100, v100))), vsqrtq_f64(vaddq_f64(vmulq_f64(v97, v97), vmulq_f64(v98, v98)))));
  v149 = LOBYTE(v99.f64[0]);
  *&v99.f64[0] = vdup_lane_s32(*&v99.f64[0], 1);
  v101.i64[0] = SLODWORD(v99.f64[0]);
  v101.i64[1] = SHIDWORD(v99.f64[0]);
  [v15 addCurveToPoint:vbslq_s8(v101 controlPoint1:vzip2q_s64(v92 controlPoint2:{v93), vzip2q_s64(v94, v95)), v74, v73, v74, v73}];
  [v15 addArcWithCenter:1 radius:v13 startAngle:v46 endAngle:v129 clockwise:{v132, v130}];
  if (v149)
  {
    v102 = v136;
  }

  else
  {
    v102 = v134;
  }

  if (v149)
  {
    v103 = v137;
  }

  else
  {
    v103 = v138;
  }

  if (v103 == v13)
  {
    v104 = INFINITY;
    v105 = v103;
  }

  else
  {
    v104 = (v102 - v46) / (v103 - v13);
    v105 = v102 - v104 * v103;
    if (v104 == 0.0)
    {
      v84 = INFINITY;
    }

    else if (v104 == INFINITY)
    {
      v104 = INFINITY;
    }

    else
    {
      v84 = -1.0 / v104;
    }
  }

  v106 = fabs(v84);
  v107 = v106 == INFINITY;
  if (v106 == INFINITY)
  {
    v108 = v13;
  }

  else
  {
    v108 = v46 - v84 * v13;
  }

  if (v107)
  {
    v109 = INFINITY;
  }

  else
  {
    v109 = v84;
  }

  if (v104 == v109)
  {
    v110 = NAN;
    v111 = NAN;
    goto LABEL_109;
  }

  if (v104 == INFINITY)
  {
    v111 = v105;
LABEL_108:
    v110 = v108 + v109 * v111;
    goto LABEL_109;
  }

  if (v109 == INFINITY)
  {
    v111 = v108;
    v109 = v104;
    v108 = v105;
    goto LABEL_108;
  }

  v111 = (v108 - v105) / (v104 - v109);
  v110 = v105 + v104 * v111;
LABEL_109:
  v112 = sqrt((v46 - v110) * (v46 - v110) + (v13 - v111) * (v13 - v111));
  v113 = sqrt(v147 - v112 * v112);
  v114 = atan(v104);
  v115 = __sincos_stret(v114);
  v116 = v111 + v113 * v115.__cosval;
  v117 = v110 + v113 * v115.__sinval;
  if (sqrt((v116 - v103) * (v116 - v103) + (v117 - v102) * (v117 - v102)) >= sqrt((v111 - v113 * v115.__cosval - v103) * (v111 - v113 * v115.__cosval - v103) + (v110 - v113 * v115.__sinval - v102) * (v110 - v113 * v115.__sinval - v102)))
  {
    v117 = v110 - v113 * v115.__sinval;
    v116 = v111 - v113 * v115.__cosval;
  }

  [v15 addCurveToPoint:v103 controlPoint1:v102 controlPoint2:{v116, v117, v116, v117, v124}];
  [v15 addLineToPoint:{v150, v151}];
  v118 = (v152 - v150) * 0.5;
  v119 = 0.0;
  if (a4->var43)
  {
    v119 = sqrt((v152 - v150) * (v152 - v150) + v118 * v118) * 0.5;
  }

  [v15 addQuadCurveToPoint:v152 controlPoint:{v151, v150 + v118, v151 + v119}];
  [v15 closePath];
  memset(&v154, 0, sizeof(v154));
  CGAffineTransformMakeTranslation(&v154, v140, v139);
  v120 = v142 - v139;
  v121 = v144 - v140;
  v122 = atan2f(v120, v121);
  v153 = v154;
  CGAffineTransformRotate(__dst, &v153, v122);
  v154 = *__dst;
  memcpy(__dst, a4, sizeof(__dst));
  MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v15, __dst, 0, &v154, 0.0);

  return v15;
}

- (void)getArrowPath:(id *)a3 arrowStrokePath:(id *)a4 pivot:(CGPoint *)a5 withSize:(CGSize)a6 metrics:(id *)a7 visualCenter:(CGPoint *)a8
{
  height = a6.height;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = self->_snapped[v11];
    if (v13 && v13->var2 == 2)
    {
      v12 = v11;
    }

    ++v11;
  }

  while (v11 != 8);
  v14 = a6.width * 0.5;
  v15 = 0.0;
  if (v12 <= 7)
  {
    if (((1 << v12) & 0x28) != 0)
    {
      var22 = a7->var22;
      var23 = a7->var23;
      goto LABEL_19;
    }

    if (((1 << v12) & 0x44) != 0)
    {
      v18 = fmax(a7->var13 - a7->var2, 0.0);
      var15 = a7->var15;
      var16 = a7->var16;
      var22 = var15 - v18;
      var23 = var16 - v18;
      v21 = a6.width - (var16 - v18);
      if (v12 == 2)
      {
        v14 = var16 - v18;
      }

      else
      {
        v14 = v21;
      }

      v22 = height - var15;
      goto LABEL_20;
    }

    if (((1 << v12) & 0x82) != 0)
    {
      var22 = a7->var26;
      var23 = a7->var27;
LABEL_19:
      v22 = a6.height - var22 + 2.0;
LABEL_20:
      v53 = v22;
      goto LABEL_21;
    }
  }

  if (v12)
  {
    v52 = *MEMORY[0x1E695EFF8];
    v53 = *(MEMORY[0x1E695EFF8] + 8);
    var23 = 0.0;
    var22 = 0.0;
    goto LABEL_22;
  }

  var17 = a7->var17;
  if (var17 == 0.0)
  {
    var22 = a6.height * 0.400000006;
    var23 = a6.height - a6.height * 0.400000006;
    v52 = v14;
    v53 = var23;
    goto LABEL_22;
  }

  var23 = a7->var5.height;
  var22 = a6.height - var17 - var23;
  v53 = a6.height - var22;
  v15 = (a6.height - var22 - var23) * 0.5;
LABEL_21:
  v52 = v14;
LABEL_22:
  v24 = [MEMORY[0x1E69DC728] bezierPath];
  v25 = [MEMORY[0x1E69DC728] bezierPath];
  var2 = a7->var2;
  memset(&v58, 0, sizeof(v58));
  CGAffineTransformMakeTranslation(&v58, v14 - var2 * 0.5, height - v15);
  v27 = 0;
  v28 = var23 - var2 * 0.5;
  if (!v12)
  {
    v28 = var23;
  }

  tx = -var2;
  v55 = var22 + var2 * -0.5;
  v29 = v28 - a7->var5.height;
  v30 = 1;
  do
  {
    v31 = v30;
    v57 = v58;
    if (v30)
    {
      v32 = v24;
    }

    else
    {
      v32 = v25;
    }

    v33 = v32;
    memcpy(__dst, a7, sizeof(__dst));
    MKArrowAppendInitialSegmentToPathInvertingCorners(v33, __dst, &v57, 0, v55);
    if (v12 <= 7)
    {
      if (((1 << v12) & 0xAA) != 0)
      {
        v56.a = 0.0;
        v56.b = 0.0;
        a = v57.a;
        b = v57.b;
        c = v57.c;
        d = v57.d;
        v38 = v57.tx;
        ty = v57.ty;
        v40 = anglesToExit[v12];
        memcpy(__dst, a7, sizeof(__dst));
        MKArrowAppendCurveToPathWithOptions(v33, v27, __dst, &v57, &v56.a, v40);
        if ((v31 & 1) != 0 && v12 != 3 && v12 != 5)
        {
          v52 = v38 + c * v56.b + a * v56.a;
          v53 = ty + d * v56.b + b * v56.a;
        }
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 != 6)
          {
            goto LABEL_38;
          }

          *__dst = v57;
          CGAffineTransformScale(&v57, __dst, -1.0, 1.0);
          v56 = v57;
          CGAffineTransformTranslate(__dst, &v56, tx, 0.0);
          v57 = *__dst;
        }

        memcpy(__dst, a7, sizeof(__dst));
        MKArrowAppendRightAngleCurveToPath(v33, __dst, &v57);
      }
    }

LABEL_38:
    memcpy(__dst, a7, sizeof(__dst));
    MKArrowAppendSegmentToPath(v33, __dst, &v57, v29);
    if (a8 != 0 && (v31 & 1) != 0)
    {
      BoundingBox = CGPathGetBoundingBox([v24 CGPath]);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      v44 = BoundingBox.size.height;
      MidX = CGRectGetMidX(BoundingBox);
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = v44;
      MidY = CGRectGetMidY(v61);
      a8->x = MidX;
      a8->y = MidY;
    }

    memcpy(__dst, a7, sizeof(__dst));
    MKArrowAppendArrowheadToPathAndReturnMetricsWithStemAdjustment(v33, __dst, 0, &v57, 0.0);

    v30 = 0;
    v27 = 1;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    a5->x = v52;
    a5->y = v53;
  }

  if (a3)
  {
    v47 = v24;
    *a3 = v24;
  }

  if (a4)
  {
    v48 = v25;
    *a4 = v25;
  }
}

- (void)_addJunctionStemCapToPath:(id)a3 fromStartPoint:(CGPoint)a4 topEndPoint:(CGPoint)a5 cornerRadius:(double)a6
{
  y = a5.y;
  x = a5.x;
  v10 = (a4.x + a5.x) * 0.5;
  v11 = (a4.y + a5.y) * 0.5;
  v12 = a4.y - v11;
  v13 = a4.x - v10;
  v14 = atan2f(v12, v13);
  v15 = y - v11;
  v16 = x - v10;
  v17 = atan2f(v15, v16);

  [a3 addArcWithCenter:1 radius:v10 startAngle:v11 endAngle:a6 clockwise:{v14, v17}];
}

- (void)getArrowPath:(id *)a3 arrowStrokePath:(id *)a4 intersectionBackgroundPath:(id *)a5 strokePath:(id *)a6 withSize:(CGSize)a7 metrics:(id *)a8 drivingSide:(int)a9 visualCenter:(CGPoint *)a10
{
  height = a7.height;
  width = a7.width;
  if (self->_type == 1)
  {
    v17 = *&a9;
    memcpy(__dst, a8, sizeof(__dst));
    [(MKJunction *)self getRoundaboutArrowPath:a3 intersectionBackgroundPath:a5 strokePath:a6 withSize:__dst metrics:v17 drivingSide:a10 visualCenter:width, height];
    return;
  }

  if (!a5)
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v19 = [MEMORY[0x1E69DC728] bezierPath];
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v20 = [MEMORY[0x1E69DC728] bezierPath];
LABEL_8:
  var3 = a8->var3;
  v111 = 0.0;
  v112 = 0.0;
  memcpy(__dst, a8, sizeof(__dst));
  [(MKJunction *)self getArrowPath:a3 arrowStrokePath:a4 pivot:&v111 withSize:__dst metrics:a10 visualCenter:width, height];
  var6 = a8->var6;
  v22 = var3 * 0.5;
  v23 = v111;
  v24 = v112;
  v25 = width - v111;
  v26 = height - v112;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v28 = 0;
  for (i = 0; i != 8; ++i)
  {
    v30 = self->_snapped[i];
    if (v30 && v30->var2 == 2)
    {
      v28 = *(&a8->var40 + (i & 1));
    }
  }

  v31 = 0;
  v103 = fmin(fmin(fmin(v23, v24), v25), v26);
  do
  {
    v32 = self->_snapped[v31];
    if (v32 && (v32->var2 == 0) | v28 & 1)
    {
      v33 = v31 * 0.785398163 + -1.57079633;
      v34 = __sincos_stret(v33 + -1.57079633);
      v35 = objc_alloc_init(_MKJunctionElement);
      [(_MKJunctionElement *)v35 setLeftBasePoint:v22 * v34.__cosval, v22 * v34.__sinval];
      [(_MKJunctionElement *)v35 setRightBasePoint:var3 * -0.5 * v34.__cosval, var3 * -0.5 * v34.__sinval];
      [(_MKJunctionElement *)v35 setAngle:v33];
      [v27 addObject:v35];
    }

    ++v31;
  }

  while (v31 != 8);
  if (var6 >= v22)
  {
    v36 = var3 * 0.5;
  }

  else
  {
    v36 = var6;
  }

  v37 = v103 - v36;
  if ([v27 count] == 1)
  {
    v38 = [v27 lastObject];
    [v38 leftBasePoint];
    v40 = v39;
    v42 = v41;
    [v38 rightBasePoint];
    v107 = v43;
    v45 = v44;
    [v38 leftEdgePointAtDistanceFromBase:v37];
    v47 = v46;
    v49 = v48;
    [v38 rightEdgePointAtDistanceFromBase:v37];
    v51 = v50;
    v53 = v52;
    [v19 moveToPoint:{v40, v42}];
    [v19 addLineToPoint:{v47, v49}];
    if (fabs(v36) > 2.22044605e-16)
    {
      [(MKJunction *)self _addJunctionStemCapToPath:v19 fromStartPoint:v47 topEndPoint:v49 cornerRadius:v51, v53, v36];
    }

    [v19 addLineToPoint:{v51, v53}];
    [v19 addLineToPoint:{v107, v45}];
    [v19 closePath];
    [v20 moveToPoint:{v40, v42}];
    [v20 addLineToPoint:{v47, v49}];
    [v20 moveToPoint:{v107, v45}];
    v54 = v20;
    v55 = v51;
    v56 = v53;
    goto LABEL_72;
  }

  v102 = v36;
  if ([v27 count] >= 2)
  {
    v106 = v103 - v36;
    if (![v27 count])
    {
LABEL_71:
      v38 = [v27 objectAtIndex:0];
      [v38 leftEdgePointAtDistanceFromBase:v106];
      v54 = v19;
LABEL_72:
      [v54 addLineToPoint:{v55, v56}];

      goto LABEL_73;
    }

    v57 = 0;
    v104 = fabs(v36);
    while (1)
    {
      v58 = [v27 objectAtIndex:v57];
      if (v57 == [v27 count] - 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = v57 + 1;
      }

      v60 = [v27 objectAtIndex:v59];
      [v58 angle];
      v62 = v61;
      [v58 rightBasePoint];
      v64 = v63;
      v66 = v65;
      v67 = tan(v62);
      v68 = -v67;
      if (v67 >= 0.0)
      {
        v68 = v67;
      }

      if (v68 <= 10000000.0)
      {
        v69 = v66 - v67 * v64;
      }

      else
      {
        v69 = v64;
      }

      if (v68 <= 10000000.0)
      {
        v70 = v67;
      }

      else
      {
        v70 = INFINITY;
      }

      [v60 angle];
      v72 = v71;
      [v60 leftBasePoint];
      v74 = v73;
      v76 = v75;
      v77 = tan(v72);
      v78 = -v77;
      if (v77 >= 0.0)
      {
        v78 = v77;
      }

      v79 = v78 <= 10000000.0;
      if (v78 <= 10000000.0)
      {
        v80 = v76 - v77 * v74;
      }

      else
      {
        v80 = v74;
      }

      if (!v79)
      {
        v77 = INFINITY;
      }

      if (v70 == v77)
      {
        v81 = NAN;
        v82 = NAN;
      }

      else
      {
        if (v70 == INFINITY)
        {
          v82 = v69;
        }

        else
        {
          if (v77 != INFINITY)
          {
            v80 = v80 - v69;
            v82 = v80 / (v70 - v77);
            v81 = v69 + v70 * v82;
            goto LABEL_53;
          }

          v82 = v80;
          v77 = v70;
          v80 = v69;
        }

        v81 = v80 + v77 * v82;
      }

LABEL_53:
      v83 = v57 + 1;
      [v58 leftEdgePointAtDistanceFromBase:{v106, v80}];
      v85 = v84;
      v87 = v86;
      [v58 rightEdgePointAtDistanceFromBase:v106];
      v89 = v88;
      v91 = v90;
      [v60 leftEdgePointAtDistanceFromBase:v106];
      v94 = v92;
      v95 = v93;
      v96 = fabs(v82) == INFINITY;
      if (fabs(v81) == INFINITY)
      {
        v96 = 1;
      }

      if (v96)
      {
        v81 = (v91 + v93) * 0.5;
        v82 = (v89 + v92) * 0.5;
      }

      v97 = v83 - 1;
      if (v83 == 1)
      {
        [v19 moveToPoint:{v85, v87}];
      }

      else
      {
        [v19 addLineToPoint:{v85, v87}];
      }

      if (v104 > 2.22044605e-16)
      {
        [(MKJunction *)self _addJunctionStemCapToPath:v19 fromStartPoint:v85 topEndPoint:v87 cornerRadius:v89, v91, v102];
      }

      [v19 addLineToPoint:{v89, v91}];
      if (v97 == [v27 count] - 1)
      {
        [v58 rightBasePoint];
        [v19 addLineToPoint:?];
        v98 = [v27 objectAtIndexedSubscript:0];
        [v98 leftBasePoint];
        [v19 addLineToPoint:?];
      }

      else
      {
        [v19 addLineToPoint:{v82, v81}];
      }

      [v20 moveToPoint:{v89, v91}];
      if (v97 == [v27 count] - 1)
      {
        [v58 rightBasePoint];
        [v20 addLineToPoint:?];
        v99 = [v27 objectAtIndexedSubscript:0];
        [v99 leftBasePoint];
        [v20 moveToPoint:?];
      }

      else
      {
        [v20 addLineToPoint:{v82, v81}];
      }

      [v20 addLineToPoint:{v94, v95}];

      v57 = v97 + 1;
      if (v97 + 1 >= [v27 count])
      {
        goto LABEL_71;
      }
    }
  }

LABEL_73:
  memset(__dst, 0, 48);
  CGAffineTransformMakeTranslation(__dst, v111, v112);
  v108 = *__dst;
  v109 = *&__dst[16];
  v110 = *&__dst[32];
  [v19 applyTransform:&v108];
  v108 = *__dst;
  v109 = *&__dst[16];
  v110 = *&__dst[32];
  [v20 applyTransform:&v108];
  if (a5)
  {
    v100 = v19;
    *a5 = v19;
  }

  if (a6)
  {
    v101 = v20;
    *a6 = v20;
  }
}

- (BOOL)_willSnapToNinetyDegreesForManeuverTypes:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_maneuver];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = 0;
    v8 = -1;
    do
    {
      v9 = self->_snapped[v7];
      if (v9 && v9->var2 == 2)
      {
        v8 = v7;
      }

      ++v7;
    }

    while (v7 != 8);
    v10 = ((v8 - 2) & 0xFFFFFFFFFFFFFFFBLL) == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)willSnapToSharpRight
{
  if (self->_maneuver != 2)
  {
    return 0;
  }

  v2 = 0;
  v3 = -1;
  do
  {
    v4 = self->_snapped[v2];
    if (v4)
    {
      if (v4->var2 == 2)
      {
        v3 = v2;
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return ((v3 - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

- (id)description
{
  v3 = objc_opt_new();
  if (self->_count)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = &self->_elements[v4];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<GEOJunctionElement angle: %ld (%u), type: %ld (%u), usage: %ld (%u)>", v6->var0, *&v6->var3 & 1, v6->var1, (*&v6->var3 >> 1) & 1, v6->var2, (*&v6->var3 >> 2) & 1];
      [v3 addObject:v7];

      ++v5;
      ++v4;
    }

    while (v5 < self->_count);
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v3 componentsJoinedByString:{@", "}];
  type = self->_type;
  if (type)
  {
    if (type == 1)
    {
      v13 = @"JCTTYPE_ROUNDABOUT";
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }
  }

  else
  {
    v13 = @"JCTTYPE_NORMAL";
  }

  v14 = @"NO_TURN";
  switch(self->_maneuver)
  {
    case 0:
      break;
    case 1:
      v14 = @"LEFT_TURN";
      break;
    case 2:
      v14 = @"RIGHT_TURN";
      break;
    case 3:
      v14 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v14 = @"U_TURN";
      break;
    case 5:
      v14 = @"FOLLOW_ROAD";
      break;
    case 6:
      v14 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v14 = @"EXIT_ROUNDABOUT";
      break;
    case 0xB:
      v14 = @"OFF_RAMP";
      break;
    case 0xC:
      v14 = @"ON_RAMP";
      break;
    case 0x10:
      v14 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 0x11:
      v14 = @"START_ROUTE";
      break;
    case 0x12:
      v14 = @"ARRIVE_AT_DESTINATION";
      break;
    case 0x14:
      v14 = @"KEEP_LEFT";
      break;
    case 0x15:
      v14 = @"KEEP_RIGHT";
      break;
    case 0x16:
      v14 = @"ENTER_FERRY";
      break;
    case 0x17:
      v14 = @"EXIT_FERRY";
      break;
    case 0x18:
      v14 = @"CHANGE_FERRY";
      break;
    case 0x19:
      v14 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 0x1A:
      v14 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 0x1B:
      v14 = @"LEFT_TURN_AT_END";
      break;
    case 0x1C:
      v14 = @"RIGHT_TURN_AT_END";
      break;
    case 0x1D:
      v14 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 0x1E:
      v14 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 0x21:
      v14 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 0x22:
      v14 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 0x23:
      v14 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 0x27:
      v14 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 0x29:
      v14 = @"ROUNDABOUT_EXIT_1";
      break;
    case 0x2A:
      v14 = @"ROUNDABOUT_EXIT_2";
      break;
    case 0x2B:
      v14 = @"ROUNDABOUT_EXIT_3";
      break;
    case 0x2C:
      v14 = @"ROUNDABOUT_EXIT_4";
      break;
    case 0x2D:
      v14 = @"ROUNDABOUT_EXIT_5";
      break;
    case 0x2E:
      v14 = @"ROUNDABOUT_EXIT_6";
      break;
    case 0x2F:
      v14 = @"ROUNDABOUT_EXIT_7";
      break;
    case 0x30:
      v14 = @"ROUNDABOUT_EXIT_8";
      break;
    case 0x31:
      v14 = @"ROUNDABOUT_EXIT_9";
      break;
    case 0x32:
      v14 = @"ROUNDABOUT_EXIT_10";
      break;
    case 0x33:
      v14 = @"ROUNDABOUT_EXIT_11";
      break;
    case 0x34:
      v14 = @"ROUNDABOUT_EXIT_12";
      break;
    case 0x35:
      v14 = @"ROUNDABOUT_EXIT_13";
      break;
    case 0x36:
      v14 = @"ROUNDABOUT_EXIT_14";
      break;
    case 0x37:
      v14 = @"ROUNDABOUT_EXIT_15";
      break;
    case 0x38:
      v14 = @"ROUNDABOUT_EXIT_16";
      break;
    case 0x39:
      v14 = @"ROUNDABOUT_EXIT_17";
      break;
    case 0x3A:
      v14 = @"ROUNDABOUT_EXIT_18";
      break;
    case 0x3B:
      v14 = @"ROUNDABOUT_EXIT_19";
      break;
    case 0x3C:
      v14 = @"SHARP_LEFT_TURN";
      break;
    case 0x3D:
      v14 = @"SHARP_RIGHT_TURN";
      break;
    case 0x3E:
      v14 = @"SLIGHT_LEFT_TURN";
      break;
    case 0x3F:
      v14 = @"SLIGHT_RIGHT_TURN";
      break;
    case 0x40:
      v14 = @"CHANGE_HIGHWAY";
      break;
    case 0x41:
      v14 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 0x42:
      v14 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 0x50:
      v14 = @"TOLL_STATION";
      break;
    case 0x51:
      v14 = @"ENTER_TUNNEL";
      break;
    case 0x52:
      v14 = @"WAYPOINT_STOP";
      break;
    case 0x53:
      v14 = @"WAYPOINT_STOP_LEFT";
      break;
    case 0x54:
      v14 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 0x55:
      v14 = @"RESUME_ROUTE";
      break;
    case 0x56:
      v14 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 0x57:
      v14 = @"CUSTOM";
      break;
    case 0x58:
      v14 = @"TURN_AROUND";
      break;
    default:
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_maneuver];
      break;
  }

  v15 = [v8 stringWithFormat:@"<%@: %p, elements: %@, type: %@, maneuver: %@>", v10, self, v11, v13, v14];

  return v15;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = 0;
  snapped = self->_snapped;
  do
  {
    if (snapped[v4])
    {
      v3 ^= PBHashBytes();
    }

    ++v4;
  }

  while (v4 != 8);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    for (i = 0; i != 8; ++i)
    {
      v7 = v4[i + 5];
      v8 = self->_snapped[i];
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (v7 | v8)
        {
          break;
        }
      }

      else if (*(v7 + 4) != *(v8 + 4) || *(v7 + 8) != *(v8 + 8))
      {
        break;
      }

      v5 = i > 6;
    }
  }

  return v5;
}

- (MKJunction)initWithType:(int)a3 maneuver:(int)a4 drivingSide:(int)a5 elements:(GEOJunctionElement *)a6 count:(unint64_t)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = MKJunction;
  v12 = [(MKJunction *)&v32 init];
  v13 = v12;
  if (!v12)
  {
LABEL_37:
    v14 = v13;
    goto LABEL_38;
  }

  v14 = 0;
  if (((a4 - 4) > 0x3E || ((1 << (a4 - 4)) & 0x7000000086400081) == 0) && a4 != 88)
  {
    v14 = 0;
    v15 = a7 < 3 && (a4 & 0xFFFFFFFE) == 20;
    if (!v15 && a7)
    {
      v16 = 8;
      v17 = a7;
      while (*(&a6->var0 + v16) != 2)
      {
        v14 = 0;
        v16 += 16;
        if (!--v17)
        {
          goto LABEL_38;
        }
      }

      v12->_type = a3;
      v12->_maneuver = a4;
      v12->_drivingSide = a5;
      if (a4 <= 0x3F)
      {
        if (((1 << a4) & 0x5000000008100002) != 0)
        {
          v18 = 1;
          goto LABEL_19;
        }

        if (((1 << a4) & 0xA000000010200004) != 0)
        {
          v18 = 2;
LABEL_19:
          v19 = malloc_type_calloc(0x10uLL, a7, 0xA3C9B415uLL);
          v13->_elements = v19;
          memcpy(v19, a6, 16 * a7);
          v13->_count = a7;
          snapped = v13->_snapped;
          MKSnappedRouteFillWithElements(v13->_elements, a7, v13->_snapped, v18);
          if ((a4 - 41) < 0x13)
          {
            v21 = (a4 - 40);
            if (v21 > 6)
            {
              goto LABEL_32;
            }

            v37 = 0;
            v38 = &v37;
            v39 = 0x2020000000;
            v40 = 0;
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v34 = __MKJunctionManeuverShouldShowNAElementsForManeuverTypeInSnappedJunction_block_invoke;
            v35 = &unk_1E76CD648;
            v36 = &v37;
            v22 = v33;
            v42[0] = xmmword_1A30F72F0;
            v42[1] = xmmword_1A30F6EF0;
            v42[2] = xmmword_1A30F7300;
            v43 = 5;
            v23 = a5 == 0;
            v24 = a5 ? 6 : 0;
            v25 = 7;
            if (v23)
            {
              v26 = 1;
            }

            else
            {
              v25 = -1;
              v26 = -1;
            }

            v41 = 0;
            v27 = v25 - v26;
            do
            {
              v34(v22, *(v42 + v24), snapped[*(v42 + v24)], &v41);
              if (v41)
              {
                break;
              }

              v15 = v27 == v24;
              v24 += v26;
            }

            while (!v15);

            v28 = v38[3];
            _Block_object_dispose(&v37, 8);
            if (v28 != v21)
            {
LABEL_32:
              for (i = 0; i != 8; ++i)
              {
                v30 = snapped[i];
                if (v30 && v30->var2 != 2)
                {
                  snapped[i] = 0;
                }
              }
            }
          }

          goto LABEL_37;
        }
      }

      v18 = 0;
      goto LABEL_19;
    }
  }

LABEL_38:

  return v14;
}

- (MKJunction)initWithJunction:(id)a3
{
  v4 = a3;
  v5 = [v4 junctionType];
  v6 = [v4 maneuverType];
  v7 = [v4 drivingSide];
  v8 = [v4 elements];
  v9 = [v4 numElements];

  return [(MKJunction *)self initWithType:v5 maneuver:v6 drivingSide:v7 elements:v8 count:v9];
}

@end