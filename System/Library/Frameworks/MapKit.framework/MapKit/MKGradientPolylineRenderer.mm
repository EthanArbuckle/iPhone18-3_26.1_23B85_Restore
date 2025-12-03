@interface MKGradientPolylineRenderer
- (BOOL)_canProvideVectorGeometry;
- (MKGradientPolylineRenderer)initWithCoder:(id)coder;
- (NSArray)colors;
- (NSArray)locations;
- (void)_updateColorStops;
- (void)_updateVectorGeometry:(id)geometry;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
- (void)encodeWithCoder:(id)coder;
- (void)setColors:(NSArray *)colors atLocations:(NSArray *)locations;
@end

@implementation MKGradientPolylineRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = selfCopy->_locations;
  v13 = selfCopy->_colors;
  objc_sync_exit(selfCopy);

  if (![(NSArray *)v12 count])
  {
    v195.receiver = selfCopy;
    v195.super_class = MKGradientPolylineRenderer;
    [(MKPolylineRenderer *)&v195 drawMapRect:context zoomScale:v10 inContext:v9, var0, var1, scale];
    goto LABEL_136;
  }

  overlay = [(MKOverlayRenderer *)selfCopy overlay];
  points = [overlay points];

  overlay2 = [(MKOverlayRenderer *)selfCopy overlay];
  pointCount = [overlay2 pointCount];

  if (pointCount >= 2)
  {
    CGContextSaveGState(context);
    [(MKOverlayRenderer *)selfCopy contentScaleFactor];
    v18 = v17;
    [(MKOverlayPathRenderer *)selfCopy lineWidth];
    v20 = v19;
    join = [(MKOverlayPathRenderer *)selfCopy lineJoin];
    lineCap = [(MKOverlayPathRenderer *)selfCopy lineCap];
    [(MKOverlayPathRenderer *)selfCopy miterLimit];
    if (v22 <= 0.0)
    {
      v23 = 10.0;
    }

    else
    {
      v23 = v22;
    }

    if (v20 <= 0.0)
    {
      v24 = vcvtmd_s64_f64(log2(scale) + 0.5);
      if (v24 >= -21)
      {
        v25 = (v24 & (v24 >> 63)) + 21;
      }

      else
      {
        v25 = 0;
      }

      v20 = dbl_1A30F7B28[v25];
    }

    lineDashPattern = [(MKOverlayPathRenderer *)selfCopy lineDashPattern];
    [(MKOverlayPathRenderer *)selfCopy lineDashPhase];
    v28 = v27;
    [(MKOverlayRenderer *)selfCopy _originMapPoint];
    v177 = v30;
    v178 = v29;
    [(MKPolylineRenderer *)selfCopy strokeStart];
    v32 = v31;
    [(MKPolylineRenderer *)selfCopy strokeEnd];
    v185 = v33;
    v162 = v18 * (v20 / scale);
    CGContextSetLineWidth(context, v162);
    CGContextSetLineJoin(context, join);
    v159 = v18 * (v23 / scale);
    CGContextSetMiterLimit(context, v159);
    CGContextSetBlendMode(context, kCGBlendModeCopy);
    if (v32 > 0.0 || v185 < 1.0)
    {
      overlay3 = [(MKOverlayRenderer *)selfCopy overlay];
      [overlay3 _mapPointsLength];
      v197.y = v177;
      v197.x = v178;
      path = _createClipPath(points, pointCount, v162, lineCap, join, v159, v197, scale, v32, v185, v35);

      if ([lineDashPattern count])
      {
        DashedClipPath = _createDashedClipPath(&points->x, pointCount, lineCap, join, lineDashPattern, v162, v159, v178, v177, scale, v28, v18);
        CGContextAddPath(context, DashedClipPath);
        CGContextClip(context);
        CGPathRelease(DashedClipPath);
      }
    }

    else
    {
      if ([lineDashPattern count])
      {
        path = _createDashedClipPath(&points->x, pointCount, lineCap, join, lineDashPattern, v162, v159, v178, v177, scale, v28, v18);
        CGContextAddPath(context, path);
        goto LABEL_20;
      }

      overlay4 = [(MKOverlayRenderer *)selfCopy overlay];
      [overlay4 _mapPointsLength];
      v198.y = v177;
      v198.x = v178;
      path = _createClipPath(points, pointCount, v162, lineCap, join, v159, v198, scale, v32, v185, v38);
    }

    CGContextAddPath(context, path);
LABEL_20:
    CGContextClip(context);
    CGContextSaveGState(context);
    space = CGColorSpaceCreateDeviceRGB();
    v170 = v32;
    v161 = lineCap;
    v148 = selfCopy;
    contextCopy = context;
    v149 = lineDashPattern;
    v39 = pointCount - 1;
    x = points->x;
    y = points->y;
    p_y = &points[1].y;
    v180 = pointCount;
    v181 = pointCount - 1;
    v43 = 0.0;
    do
    {
      v44 = *(p_y - 1);
      v45 = *p_y;
      v43 = v43 + sqrt((v44 - x) * (v44 - x) + 0.0 + (*p_y - y) * (*p_y - y));
      p_y += 2;
      y = v45;
      x = v44;
      --v39;
    }

    while (v39);
    v175 = v43;
    gradient = 0;
    v157 = 0;
    v46 = 0;
    v160 = 0;
    v189 = 0;
    v182 = *MEMORY[0x1E695EFF8];
    v183 = *(MEMORY[0x1E695EFF8] + 8);
    v158 = v162 * 0.5;
    v47 = 5.0 / scale * (5.0 / scale);
    v48.f64[0] = v178;
    v48.f64[1] = v177;
    v194 = v48;
    v193 = points + 1;
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    v188 = 0.0;
    v153 = v13;
    v154 = v12;
    while (1)
    {
      v51 = v182;
      v50 = v183;
      v52 = v188 / v175;
      if (v188 / v175 >= v185)
      {
LABEL_133:
        CGContextRestoreGState(contextCopy);
        strokeColor = [(MKOverlayPathRenderer *)v148 strokeColor];
        if ((v189 & (strokeColor != 0)) == 1)
        {
          CGContextSaveGState(contextCopy);
          CGContextSetBlendMode(contextCopy, kCGBlendModeDestinationOver);
          CGContextSetFillColorWithColor(contextCopy, [strokeColor CGColor]);
          CGContextAddPath(contextCopy, path);
          CGContextFillPath(contextCopy);
          CGContextRestoreGState(contextCopy);
        }

        CGContextRestoreGState(contextCopy);
        CGGradientRelease(gradient);
        CGPathRelease(path);
        CGColorSpaceRelease(space);

        goto LABEL_136;
      }

      v53 = v46;
      v54 = &points[v46];
      v55 = v54->f64[0];
      v56 = v54->f64[1];
      v182 = v54->f64[0] - v178;
      v183 = v56 - v177;
      v57 = *v54;
      v58 = vsubq_f64(*v54, v194);
      v59 = v180 <= v46 + 1 ? v46 + 1 : v180;
      v60 = v57.f64[1];
      v61 = v59 - 1;
      v62 = v46;
      v63 = 0.0;
      while (v61 != v62)
      {
        v46 = v62 + 1;
        v64 = v193[v62];
        v63 = v63 + sqrt((v64.f64[0] - v57.f64[0]) * (v64.f64[0] - v57.f64[0]) + 0.0 + (v193[v62].y - v60) * (v193[v62].y - v60));
        v57 = vsubq_f64(vsubq_f64(v64, v194), v58);
        v65 = vaddvq_f64(vmulq_f64(v57, v57)) < v47;
        v60 = v193[v62].y;
        v57.f64[0] = v193[v62++].x;
        if (!v65)
        {
          goto LABEL_32;
        }
      }

      v46 = v181;
      v63 = 0.0;
LABEL_32:
      v66 = v188 + v63;
      v188 = v188 + v63;
      if (v185 >= v52)
      {
        v192 = v66 / v175;
        if (v170 <= v66 / v175)
        {
          break;
        }
      }

LABEL_132:
      if (v46 >= v181)
      {
        goto LABEL_133;
      }
    }

    v67 = 0.0;
    v167 = v56;
    v168 = v55;
    if (v52 < v170 && v192 > v170)
    {
      v67 = (v170 - v52) / (v192 - v52);
    }

    v68 = 1.0;
    if (v52 < v185 && v192 > v185)
    {
      v68 = (v185 - v52) / (v192 - v52);
    }

    v69 = &points[v46];
    v70 = v69->f64[1];
    v165 = v70;
    v166 = v69->f64[0];
    v71 = v69->f64[0] - v178;
    v72 = v70 - v177;
    if (v67 > 0.0 || (v171 = v69->f64[0] - v178, v172 = v70 - v177, v190 = v182, v186 = v183, v68 < 1.0))
    {
      v73 = v182 + (v71 - v182) * v67;
      if (v67 <= 0.0)
      {
        v73 = v182;
      }

      v190 = v73;
      if (v67 <= 0.0)
      {
        v74 = v183;
      }

      else
      {
        v74 = v183 + (v72 - v183) * v67;
      }

      v186 = v74;
      if (v68 < 1.0)
      {
        v75 = v71 - (v71 - v182) * (1.0 - v68);
      }

      else
      {
        v75 = v69->f64[0] - v178;
      }

      if (v68 < 1.0)
      {
        v76 = v72 - (v72 - v183) * (1.0 - v68);
      }

      else
      {
        v76 = v72;
      }

      v171 = v75;
      v172 = v76;
    }

    v163 = v72;
    v164 = v69->f64[0] - v178;
    if (join == kCGLineJoinRound || !v53 && v181 <= v46)
    {
      if (v181 == v46 || v53 == 0)
      {
        v78 = v161;
      }

      else
      {
        v78 = 1;
      }

      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, v190, v186);
      CGPathAddLineToPoint(Mutable, 0, v171, v172);
      if (fabs(v67) >= 0.00000011920929)
      {
        v80 = kCGLineCapButt;
      }

      else
      {
        v80 = v78;
      }

      if (fabs(v68 + -1.0) >= 0.00000011920929)
      {
        v81 = kCGLineCapButt;
      }

      else
      {
        v81 = v78;
      }

      CopyByStrokingPath = _MKCGPathCreateCopyByStrokingPath(Mutable, v80, v81, join, v162, v159);
      CGPathRelease(Mutable);
LABEL_105:
      CGContextSaveGState(contextCopy);
      if (join != kCGLineJoinRound)
      {
        CGContextSetShouldAntialias(contextCopy, 0);
      }

      CGContextAddPath(contextCopy, CopyByStrokingPath);
      v100 = v12;
      v101 = [(NSArray *)v100 count];
      v102 = 0;
      v103 = 0;
      v104 = 0;
      while (v103 < [(NSArray *)v100 count])
      {
        v105 = [(NSArray *)v100 objectAtIndexedSubscript:v103];
        [v105 floatValue];
        v107 = v106;

        if (v52 >= v107)
        {
          v101 = v102 + [(NSArray *)v100 count];
          v104 = v103;
        }

        ++v103;
        --v102;
        if (v192 < v107)
        {
          v101 = v103 - v104;
          break;
        }
      }

      v173 = v101;
      if (v101 == 1)
      {
        v108 = [(NSArray *)v13 objectAtIndexedSubscript:v104];
        CGContextSetFillColorWithColor(contextCopy, [v108 CGColor]);
        CGContextFillPath(contextCopy);
      }

      else
      {
        CGContextClip(contextCopy);
        if (!gradient || v104 != v49 || v101 != v157)
        {
          CGGradientRelease(gradient);
          v191 = v100;
          v187 = v13;
          v109 = [MEMORY[0x1E695DF70] arrayWithCapacity:v101];
          v110 = malloc_type_malloc(8 * v101, 0x100004000313F17uLL);
          v111 = v101 + v104 - 1;
          v112 = [(NSArray *)v191 objectAtIndexedSubscript:v111];
          [v112 _mapkit_cgFloatValue];
          v114 = v113;
          v115 = [(NSArray *)v191 objectAtIndexedSubscript:v104];
          [v115 _mapkit_cgFloatValue];
          v117 = v116;

          if (v104 <= v111)
          {
            v118 = 0;
            v119 = v114 - v117;
            v120 = v104;
            do
            {
              v121 = [(NSArray *)v191 objectAtIndexedSubscript:v120];
              [v121 _mapkit_cgFloatValue];
              v123 = v122;
              v124 = [(NSArray *)v191 objectAtIndexedSubscript:v104];
              [v124 _mapkit_cgFloatValue];
              v110[[v109 count]] = (v123 - v125) / v119;

              v126 = [(NSArray *)v187 objectAtIndexedSubscript:v120];
              cGColor = [v126 CGColor];

              [v109 addObject:cGColor];
              if (((v189 | v118) & 1) == 0)
              {
                v118 = CGColorGetAlpha(cGColor) < 1.0;
              }

              ++v120;
            }

            while (v120 <= v111);
          }

          else
          {
            LOBYTE(v118) = 0;
          }

          gradient = CGGradientCreateWithColors(space, v109, v110);
          free(v110);
          v128 = v189;
          if ((v189 & 1) == 0)
          {
            v128 = v118;
          }

          v189 = v128;

          v157 = v173;
          v49 = v104;
          v13 = v153;
          v12 = v154;
        }

        v129 = v100;
        v130 = [(NSArray *)v129 objectAtIndexedSubscript:v104];
        [v130 _mapkit_cgFloatValue];
        v132 = v131;

        v133 = [(NSArray *)v129 objectAtIndexedSubscript:v173 + v104 - 1];
        [v133 _mapkit_cgFloatValue];
        v134 = v63 * (v52 - v132) / (v192 - v52);
        v136 = v63 * (v135 - v192) / (v192 - v52);

        v137 = 1.0 / sqrt((v166 - v168) * (v166 - v168) + 0.0 + (v165 - v167) * (v165 - v167));
        v138 = (v166 - v168) * v137;
        v139 = (v165 - v167) * v137;
        v140 = v166 + v138 * v136;
        v141 = v165 + v139 * v136;
        v142 = v168 - v138 * v134 - v178;
        v143 = v167 - v139 * v134 - v177;
        v144 = v140 - v178;
        v145 = v141 - v177;

        if (((join == kCGLineJoinRound) & v160) != 0)
        {
          v146 = 2;
        }

        else
        {
          v146 = 3;
        }

        v196.x = v142;
        v196.y = v143;
        v199.x = v144;
        v199.y = v145;
        CGContextDrawLinearGradient(contextCopy, gradient, v196, v199, v146);
        v160 = 1;
      }

      CGContextRestoreGState(contextCopy);
      CGPathRelease(CopyByStrokingPath);
      goto LABEL_132;
    }

    v83 = fabs(v67) < 0.00000011920929 && v53 != 0;
    v85 = fabs(v68 + -1.0) < 0.00000011920929 && v181 > v46;
    if (v85)
    {
      v86 = vsubq_f64(*v69, v194);
      v87 = v46;
      while (1)
      {
        v88 = v87 + 1;
        if (v87 + 1 >= v180)
        {
          break;
        }

        v89 = vsubq_f64(vsubq_f64(v193[v87++], v194), v86);
        if (vaddvq_f64(vmulq_f64(v89, v89)) >= v47)
        {
          goto LABEL_89;
        }
      }

      v88 = v181;
LABEL_89:
      p_x = &points[v88].x;
      v151 = *p_x - v178;
      v90 = p_x[1] - v177;
    }

    else
    {
      v90 = *(MEMORY[0x1E695EFF8] + 8);
      v151 = *MEMORY[0x1E695EFF8];
    }

    v150 = v90;
    CopyByStrokingPath = CGPathCreateMutable();
    v92 = 1.0 / sqrt((v164 - v182) * (v164 - v182) + 0.0 + (v163 - v183) * (v163 - v183));
    v93 = (v164 - v182) * v92;
    v94 = (v163 - v183) * v92;
    v155 = -v94;
    if (v83)
    {
      v95 = 1.0 / sqrt((v182 - v51) * (v182 - v51) + 0.0 + (v183 - v50) * (v183 - v50));
      v96 = (v163 - v183) * v92;
      _addMiterJoin(CopyByStrokingPath, 1, v190, v186, (v182 - v51) * v95, (v183 - v50) * v95, v93, v94, v158);
      goto LABEL_97;
    }

    if ((v161 - 1) >= 2)
    {
      v96 = (v163 - v183) * v92;
      if (v161)
      {
        goto LABEL_97;
      }

      v97 = v190;
      v98 = v186;
      CGPathMoveToPoint(CopyByStrokingPath, 0, v190 + v94 * v158, v186 - v93 * v158);
    }

    else
    {
      v97 = v190 - v93 * v162;
      v96 = (v163 - v183) * v92;
      v98 = v186 + v155 * v162;
      CGPathMoveToPoint(CopyByStrokingPath, 0, v97 + v94 * v158, v98 - v93 * v158);
    }

    CGPathAddLineToPoint(CopyByStrokingPath, 0, v97 + v155 * v158, v98 + v93 * v158);
LABEL_97:
    if (v85)
    {
      v99 = 1.0 / sqrt((v151 - v164) * (v151 - v164) + 0.0 + (v150 - v163) * (v150 - v163));
      _addMiterJoin(CopyByStrokingPath, 0, v171, v172, v93, v96, (v151 - v164) * v99, (v150 - v163) * v99, v158);
LABEL_104:
      CGPathAddLineToPoint(CopyByStrokingPath, 0, v190 + v96 * v158, v186 - v93 * v158);
      CGPathCloseSubpath(CopyByStrokingPath);
      goto LABEL_105;
    }

    if ((v161 - 1) >= 2)
    {
      if (v161)
      {
        goto LABEL_104;
      }

      CGPathAddLineToPoint(CopyByStrokingPath, 0, v171 + v155 * v158, v172 + v93 * v158);
    }

    else
    {
      v171 = v171 + v93 * v162;
      v172 = v172 + v96 * v162;
      CGPathAddLineToPoint(CopyByStrokingPath, 0, v171 + v155 * v158, v172 + v93 * v158);
    }

    CGPathAddLineToPoint(CopyByStrokingPath, 0, v171 + v96 * v158, v172 - v93 * v158);
    goto LABEL_104;
  }

LABEL_136:
}

- (void)setColors:(NSArray *)colors atLocations:(NSArray *)locations
{
  v17 = colors;
  v6 = locations;
  if ([(NSArray *)v6 count])
  {
    v7 = [(NSArray *)v6 count];
    if (v7 != [(NSArray *)v17 count])
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"locations.count (%llu) must either == colors.count (%llu), or locations must be empty", -[NSArray count](v6, "count"), -[NSArray count](v17, "count")];
      v15 = [v13 exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
      v16 = v15;

      objc_exception_throw(v15);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MKGradientPolylineRenderer *)selfCopy willChangeValueForKey:@"colors"];
  [(MKGradientPolylineRenderer *)selfCopy willChangeValueForKey:@"locations"];
  v9 = [(NSArray *)v17 copy];
  externallySetColors = selfCopy->_externallySetColors;
  selfCopy->_externallySetColors = v9;

  v11 = [(NSArray *)v6 copy];
  externallySetLocations = selfCopy->_externallySetLocations;
  selfCopy->_externallySetLocations = v11;

  [(MKGradientPolylineRenderer *)selfCopy _updateColorStops];
  [(MKGradientPolylineRenderer *)selfCopy didChangeValueForKey:@"colors"];
  [(MKGradientPolylineRenderer *)selfCopy didChangeValueForKey:@"locations"];
  objc_sync_exit(selfCopy);
}

- (NSArray)colors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_externallySetColors;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)locations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_externallySetLocations;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_externallySetColors forKey:@"MKGradientPolylineRendererColors"];
  [coderCopy encodeObject:self->_externallySetLocations forKey:@"MKGradientPolylineRendererLocations"];
  v5.receiver = self;
  v5.super_class = MKGradientPolylineRenderer;
  [(MKPolylineRenderer *)&v5 encodeWithCoder:coderCopy];
}

- (MKGradientPolylineRenderer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MKGradientPolylineRenderer;
  v5 = [(MKPolylineRenderer *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MKGradientPolylineRendererColors"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"MKGradientPolylineRendererLocations"];
    [(MKGradientPolylineRenderer *)v5 setColors:v9 atLocations:v13];
  }

  return v5;
}

- (void)_updateColorStops
{
  selfCopy = self;
  v54 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_colors count])
  {
    v40 = 0;
  }

  else
  {
    v40 = [(NSArray *)selfCopy->_externallySetColors count]!= 0;
  }

  p_externallySetColors = &selfCopy->_externallySetColors;
  v41 = selfCopy;
  if (![(NSArray *)selfCopy->_externallySetColors count])
  {
    colors = selfCopy->_colors;
    v16 = MEMORY[0x1E695E0F0];
    selfCopy->_colors = MEMORY[0x1E695E0F0];

    locations = selfCopy->_locations;
    selfCopy->_locations = v16;
LABEL_36:

    goto LABEL_39;
  }

  p_externallySetLocations = &selfCopy->_externallySetLocations;
  if (![(NSArray *)selfCopy->_externallySetLocations count])
  {
    objc_storeStrong(&selfCopy->_colors, *p_externallySetColors);
    v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](selfCopy->_colors, "count")}];
    [(NSArray *)v35 addObject:&unk_1F1610F78];
    for (i = 1; i < [(NSArray *)selfCopy->_colors count]; ++i)
    {
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:{i / (-[NSArray count](selfCopy->_colors, "count") - 1)}];
      [(NSArray *)v35 addObject:v37];
    }

    locations = selfCopy->_locations;
    selfCopy->_locations = v35;
    goto LABEL_36;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = *p_externallySetLocations;
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v6)
  {
    v7 = *v49;
    v8 = -1.0;
    while (2)
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v48 + 1) + 8 * v9) doubleValue];
        v8 = v11;
        if (v11 < v10)
        {

          v18 = [*p_externallySetColors count];
          if (v18 >= [*p_externallySetLocations count])
          {
            v19 = &selfCopy->_externallySetLocations;
          }

          else
          {
            v19 = &selfCopy->_externallySetColors;
          }

          v20 = [*v19 count];
          v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
          if (v20)
          {
            for (j = 0; j != v20; ++j)
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:j];
              [v42 addObject:v22];
            }
          }

          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __47__MKGradientPolylineRenderer__updateColorStops__block_invoke;
          v47[3] = &unk_1E76C6F78;
          v47[4] = v41;
          [v42 sortUsingComparator:v47];
          v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
          v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = v42;
          v26 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v26)
          {
            v27 = *v44;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v44 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                unsignedIntegerValue = [*(*(&v43 + 1) + 8 * k) unsignedIntegerValue];
                v30 = [*p_externallySetLocations objectAtIndexedSubscript:unsignedIntegerValue];
                [(NSArray *)v23 addObject:v30];

                v31 = [*p_externallySetColors objectAtIndexedSubscript:unsignedIntegerValue];
                [(NSArray *)v24 addObject:v31];
              }

              v26 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v26);
          }

          v32 = v41->_locations;
          v41->_locations = v23;
          v33 = v23;

          v34 = v41->_colors;
          v41->_colors = v24;

          goto LABEL_38;
        }

        ++v9;
        v10 = v11;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [*p_externallySetColors count];
  if (v12 >= [*p_externallySetLocations count])
  {
    objc_storeStrong(&selfCopy->_locations, *p_externallySetLocations);
  }

  else
  {
    v13 = [*p_externallySetLocations subarrayWithRange:{0, objc_msgSend(*p_externallySetColors, "count")}];
    v14 = selfCopy->_locations;
    selfCopy->_locations = v13;
  }

  objc_storeStrong(&selfCopy->_colors, *p_externallySetColors);
LABEL_38:
  selfCopy = v41;
LABEL_39:
  [(MKPolylineRenderer *)selfCopy _setNeedsVectorGeometryUpdate];
  _renderer = [(MKOverlayRenderer *)v41 _renderer];
  v39 = _renderer;
  if (v40)
  {
    [_renderer setNeedsDisplayForReason:1];
  }

  else
  {
    [_renderer setNeedsDisplayForReason:2];
  }
}

uint64_t __47__MKGradientPolylineRenderer__updateColorStops__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 unsignedIntegerValue];
  v8 = [*(*(a1 + 32) + 256) objectAtIndexedSubscript:v6];
  v9 = [*(*(a1 + 32) + 256) objectAtIndexedSubscript:v7];
  v10 = [v8 compare:v9];

  return v10;
}

- (void)_updateVectorGeometry:(id)geometry
{
  v17 = *MEMORY[0x1E69E9840];
  geometryCopy = geometry;
  v15.receiver = self;
  v15.super_class = MKGradientPolylineRenderer;
  [(MKPolylineRenderer *)&v15 _updateVectorGeometry:geometryCopy];
  if ([(NSArray *)self->_locations count]<= 0x10)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_locations, "count")}];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_colors;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          [v5 addObject:{objc_msgSend(v10, "CGColor", v11)}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [geometryCopy setColorStopColors:v5 locations:self->_locations];
  }
}

- (BOOL)_canProvideVectorGeometry
{
  v9.receiver = self;
  v9.super_class = MKGradientPolylineRenderer;
  _canProvideVectorGeometry = [(MKPolylineRenderer *)&v9 _canProvideVectorGeometry];
  if (_canProvideVectorGeometry)
  {
    colors = [(MKGradientPolylineRenderer *)self colors];
    v5 = [colors count];

    if (v5 <= 0x10)
    {
      overlay = [(MKOverlayRenderer *)self overlay];
      _isSelfIntersecting = [overlay _isSelfIntersecting];

      LOBYTE(_canProvideVectorGeometry) = _isSelfIntersecting ^ 1;
    }

    else
    {
      LOBYTE(_canProvideVectorGeometry) = 0;
    }
  }

  return _canProvideVectorGeometry;
}

@end