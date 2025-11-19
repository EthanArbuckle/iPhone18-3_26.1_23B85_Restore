@interface TUISmartGridSwooshLayoutManager
+ (UIEdgeInsets)_additionalSafeAreaInsetsForLayout:(id)a3 configuration:(id)a4;
+ (void)configureContentLayout:(id)a3 configuration:(id)a4;
+ (void)configureScrollLayout:(id)a3 configuration:(id)a4;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridSwooshLayoutManager)initWithContent:(id)a3;
- (UIEdgeInsets)additionalSafeAreaInsetsForLayout:(id)a3;
- (UIEdgeInsets)scrollContentIntrinsicInsets;
- (UIEdgeInsets)scrollGradientFraction;
- (UIEdgeInsets)scrollGradientInsets;
- (double)widthForColumnSpan:(unint64_t)a3;
- (id).cxx_construct;
- (unint64_t)ruleLayoutAxis;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7;
- (void)appendAnchorsToSet:(id)a3 forLayout:(id)a4 inRoot:(id)a5;
- (void)appendHoverRegions:(id)a3 transform:(CGAffineTransform *)a4;
- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7;
- (void)layoutContent:(id)a3;
- (void)positionContainerLayout:(id)a3;
@end

@implementation TUISmartGridSwooshLayoutManager

- (TUISmartGridSwooshLayoutManager)initWithContent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUISmartGridSwooshLayoutManager;
  v6 = [(TUISmartGridSwooshLayoutManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, a3);
  }

  return v7;
}

+ (void)configureScrollLayout:(id)a3 configuration:(id)a4
{
  v15 = a3;
  v6 = a4;
  [a1 _additionalSafeAreaInsetsForLayout:v15 configuration:v6];
  v8 = v7;
  v10 = v9;
  [v15 setComputedOrigin:{-v7, 0.0}];
  [v6 width];
  v12 = v8 + v10 + v11;
  if ([v6 paginated])
  {
    [v6 contentInsets];
    v12 = v12 - (v13 + v14);
  }

  [v15 setContainingWidth:v12];
}

+ (void)configureContentLayout:(id)a3 configuration:(id)a4
{
  v10 = a3;
  v5 = a4;
  [v5 width];
  v7 = v6;
  if ([v5 paginated])
  {
    [v5 contentInsets];
    v7 = v7 - (v8 + v9);
  }

  [v10 setContainingWidth:v7];
}

+ (UIEdgeInsets)_additionalSafeAreaInsetsForLayout:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 width];
  v8 = v7;
  v9 = [v5 controller];
  v10 = [v9 instantiateContext];
  v11 = [v10 environment];

  [v11 viewSafeAreaInsets];
  left = v12;
  right = v14;
  if (TUISwooshUseUnboundedScroll() && ([v6 paginated] & 1) == 0 && (objc_msgSend(v11, "viewSizeWithinSafeArea"), v8 == v16))
  {
    bottom = 0.0;
    top = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19 = top;
  v20 = left;
  v21 = bottom;
  v22 = right;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)positionContainerLayout:(id)a3
{
  v8 = a3;
  [objc_opt_class() _additionalSafeAreaInsetsForLayout:v8 configuration:self->_configuration];
  v5 = v4;
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
    v7 = v6 - v5;
  }

  else
  {
    v7 = -v5;
  }

  [v8 setComputedOrigin:{v7, 0.0}];
}

- (unint64_t)ruleLayoutAxis
{
  v2 = [(TUISmartGridLayoutConfiguration *)self->_configuration rows];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || v2 == &dword_0 + 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (UIEdgeInsets)additionalSafeAreaInsetsForLayout:(id)a3
{
  v4 = a3;
  [objc_opt_class() _additionalSafeAreaInsetsForLayout:v4 configuration:self->_configuration];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)scrollContentIntrinsicInsets
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  if (v11)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  v14 = v4;
  v15 = v8;
  result.right = v12;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)scrollGradientInsets
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration gradientInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)scrollGradientFraction
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration gradientFraction];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutContent:(id)a3
{
  v260 = a3;
  v261 = [v260 computedLayoutDirection];
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v13 = v12;
  v14 = [(TUISmartGridLayoutConfiguration *)self->_configuration rows];
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration maxPages]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = [(TUISmartGridLayoutConfiguration *)self->_configuration maxPages];
  }

  self->_computedColumns = [TUISmartGridBox columnsWithConfiguration:self->_configuration];
  v16 = [v260 children];
  v18 = v14 == &dword_0 + 1 || v14 == 0x7FFFFFFFFFFFFFFFLL;
  sub_63EE4(&v318, v16, self->_content, v18);

  v266 = v14;
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration balanceSections])
  {
    v19 = v319;
    v20 = v318;
    if (v319 != v318)
    {
      v21 = 0;
      v22 = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
      do
      {
        v23 = v20[6];
        v24 = [v23 columns];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        v21 += v25;
        v20 += 11;
      }

      while (v20 != v19);
      if (v21)
      {
        computedColumns = self->_computedColumns;
        if (v21 < computedColumns)
        {
          if (computedColumns % v22)
          {
            self->_computedColumns = v21;
          }

          else
          {
            self->_columnsPerSection = computedColumns / v22;
          }
        }
      }
    }
  }

  v27 = [(TUISmartGridLayoutConfiguration *)self->_configuration columnSpacing];
  self->_computedColumnSpacing = TUILengthValueWithDefault(v27, v28, 0.0);
  [TUISmartGridBox columnWidthWithConfiguration:self->_configuration columns:self->_computedColumns spacing:?];
  self->_computedColumnWidth = v29;
  v30 = [(TUISmartGridLayoutConfiguration *)self->_configuration rowSpacing];
  self->_computedRowSpacing = TUILengthValueWithDefault(v30, v31, 0.0);
  v263 = self;
  v258 = v7;
  v259 = v13;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 != &dword_0 + 1)
  {
    v47 = 0;
    if (v319 != v318)
    {
      v48 = v318 + 1;
      while (*v48 == *(v48 - 1))
      {
        ++v47;
        v48 += 11;
        if (0x2E8BA2E8BA2E8BA3 * (v319 - v318) == v47)
        {
          v47 = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
          break;
        }
      }
    }

    *&v283 = &v318;
    *(&v283 + 1) = v47;
    v284.i64[0] = 0;
    v284.i64[1] = &v318;
    v285 = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
    v286 = 0;
    v290 = &v318;
    v49 = [(TUISmartGridLayoutConfiguration *)self->_configuration verticalPlacement];
    if ((v49 - 2) < 4)
    {
      v50 = v49 - 1;
    }

    else
    {
      v50 = 5;
    }

    v289 = v50;
    v51 = v318;
    v265 = v319;
    if (v318 != v319)
    {
      v52 = 0;
      v53 = v263->_computedColumns * v15;
      while (1)
      {
        sub_D4950(__p, v14);
        columnsPerSection = v263->_columnsPerSection;
        if (columnsPerSection)
        {
          if (!v53)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v55 = v51[6];
          columnsPerSection = [v55 columns];

          if (!v53)
          {
            goto LABEL_72;
          }
        }

        if (v53 > v52)
        {
          if (columnsPerSection >= v53 - v52)
          {
            columnsPerSection = (v53 - v52);
          }

          goto LABEL_74;
        }

LABEL_72:
        if (v53)
        {
          v56 = 0;
          goto LABEL_77;
        }

LABEL_74:
        if (columnsPerSection == 0x7FFFFFFFFFFFFFFFLL)
        {
          v56 = 0;
        }

        else
        {
          v56 = columnsPerSection;
        }

LABEL_77:
        v297.i64[0] = v56;
        v51[7] = v52;
        v51[8] = 0;
        v57 = *v51;
        v58 = v51[1];
        while (v57 != v58)
        {
          v59 = *(v57 + 32);
          v60 = [v59 rowSpan];
          v61 = *(v57 + 32);
          sub_D3D7C(__p, v60, [v61 columnSpan], &v273);

          *(v57 + 8) = v273;
          *v57 = *(&v273 + 1) + v52;
          *(v57 + 16) = vextq_s8(v274, v274, 8uLL);
          v57 += 96;
        }

        v63 = *(&v296 + 1);
        v62 = v296;
        if (v296)
        {
          v65 = __p[0];
          v64 = __p[1];
          v66 = v295.i64[0];
          v67 = *(&v296 + 1);
          if (__p[1] != v295.i64[0])
          {
            v68 = __p[1];
            do
            {
              if (*v68)
              {
                --*v68;
              }

              ++v68;
            }

            while (v68 != v66);
            v67 = *(&v296 + 1);
          }

          v69 = v67 + 1;
          *&v296 = 0;
          *(&v296 + 1) = v69;
          if (v62 < v65)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v64 = __p[1];
          v66 = v295.i64[0];
          v69 = *(&v296 + 1);
        }

        v70 = -1;
        *&v273 = -1;
        if (v64 == v66)
        {
          goto LABEL_98;
        }

        v71 = v64;
        do
        {
          v72 = v71;
          if (v70 != -1)
          {
            if (*v71 >= v70)
            {
              v72 = &v273;
            }

            else
            {
              v72 = v71;
            }
          }

          v70 = *v72;
          *&v273 = *v72;
          ++v71;
        }

        while (v71 != v66);
        if (v70 == -1)
        {
LABEL_98:
          v70 = 0;
        }

        v63 = v70 + v69;
LABEL_100:
        if (v64 != v66)
        {
          v73 = 0;
LABEL_102:
          v74 = v64;
          do
          {
            while (*v74)
            {
              --*v74++;
              v73 = 1;
              if (v74 == v66)
              {
LABEL_109:
                v73 = 0;
                *&v296 = 0;
                ++*(&v296 + 1);
                goto LABEL_102;
              }
            }

            ++v74;
          }

          while (v74 != v66);
          if (v73)
          {
            goto LABEL_109;
          }
        }

        if ([(TUISmartGridLayoutConfiguration *)v263->_configuration columnMultiple]&& [(TUISmartGridLayoutConfiguration *)v263->_configuration truncate]&& v63 > [(TUISmartGridLayoutConfiguration *)v263->_configuration columnMultiple])
        {
          v75 = *(&v296 + 1);
          if (v297.i64[0])
          {
            v75 = v297.i64[0];
          }

          if (v63 < v75)
          {
            v76 = [(TUISmartGridLayoutConfiguration *)v263->_configuration columnMultiple];
            v77 = v63 / v76 * v76;
            v296 = 0uLL;
            if (v77 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v77 = 0;
            }

            v297.i64[0] = v77;
            v78 = *v51;
            v79 = v51[1];
            while (v78 != v79)
            {
              v80 = *(v78 + 32);
              v81 = [v80 rowSpan];
              v82 = *(v78 + 32);
              sub_D3D7C(__p, v81, [v82 columnSpan], &v273);

              *(v78 + 8) = v273;
              *v78 = *(&v273 + 1) + v52;
              *(v78 + 16) = vextq_s8(v274, v274, 8uLL);
              v78 += 96;
            }
          }
        }

        v83 = __p[1];
        if (v297.i64[0])
        {
          v84 = v297.i64[0];
        }

        else
        {
          v84 = *(&v296 + 1);
        }

        v51[9] = v84;
        v51[10] = 1;
        if (v83)
        {
          v295.i64[0] = v83;
          operator delete(v83);
        }

        v52 += v84;
        v51 += 11;
        v14 = v266;
        if (v51 == v265)
        {
          goto LABEL_175;
        }
      }
    }

    v52 = 0;
LABEL_175:
    sub_D3F1C(&v318);
    v321 = v52;
    v122 = v322;
    self = v263;
    computedColumnWidth = v263->_computedColumnWidth;
    computedColumnSpacing = v263->_computedColumnSpacing;
    computedRowSpacing = v263->_computedRowSpacing;
    v126 = [v260 controller];
    [v126 contentsScale];
    v303 = v13;
    v304 = v52;
    v305 = v122;
    v306 = *&v5;
    v307 = v7;
    v308 = v9;
    v309 = v11;
    v310 = computedColumnWidth;
    v311 = computedColumnSpacing;
    v314 = computedRowSpacing;
    v315 = v261;
    v316 = v127;
    v317 = 0;
    if (v52 < 2 || computedColumnSpacing == 0.0)
    {
      v312 = computedColumnWidth;
    }

    else
    {
      v128 = computedColumnWidth;
      if (v127 > 0.0)
      {
        v128 = floor(computedColumnWidth * v127) / v127;
      }

      v312 = v128;
      computedColumnSpacing = ((computedColumnWidth - v128) * v52 + computedColumnSpacing * (v52 - 1)) / (v52 - 1);
    }

    v313 = computedColumnSpacing;

    if ([(TUISmartGridLayoutConfiguration *)v263->_configuration paginated])
    {
      v129 = v263->_computedColumns;
      v317 = v129;
      if (!v129)
      {
        v129 = v304;
      }

      v130 = v311;
      if (v311 == 0.0 || v129 < 2)
      {
        v312 = v310;
      }

      else
      {
        v131 = v310;
        if (v316 > 0.0)
        {
          v131 = floor(v310 * v316) / v316;
        }

        v312 = v131;
        v130 = ((v310 - v131) * v129 + v311 * (v129 - 1)) / (v129 - 1);
      }

      v313 = v130;
    }

    v132 = sub_618AC(&v318, &dword_4 + 1);
    v133 = v132;
    if (v320[1] == v132)
    {
      *__p = CGSizeZero;
      v295 = 0u;
      v296 = 0u;
      sub_61DD8(&v263->_cellDividers, __p);
      *&v273 = &v295.i64[1];
      sub_63928(&v273);
    }

    else
    {
      if (v317)
      {
        v134 = v312;
        v135 = v316;
        v136 = v313 + v312;
        if (v313 == 0.0)
        {
          v138 = v136 * 0.0;
          if (v316 > 0.0)
          {
            v138 = floor(v138 * v316) / v316;
          }
        }

        else
        {
          v137 = v136 - v313;
          if (v316 > 0.0)
          {
            v137 = floor(v137 * v316) / v316;
          }

          v138 = v137 - v312;
        }
      }

      else
      {
        v134 = v312;
        v135 = v316;
        v136 = v313 + v312;
        v138 = 0.0;
      }

      if (v313 == 0.0)
      {
        v142 = v136 - v313;
        if (v135 <= 0.0)
        {
          v143 = v136 * 0.0;
        }

        else
        {
          v142 = floor(v135 * v142) / v135;
          v143 = floor(v135 * (v136 * 0.0)) / v135;
        }

        v146 = 0.0;
        if (v317)
        {
          v146 = v143;
        }

        v144 = v138 + v142;
        v145 = v146 + v143;
      }

      else
      {
        v139 = v313 * -2.0 + v136 * 2.0;
        if (v135 <= 0.0)
        {
          v140 = v136 - v313;
          v141 = v136 - v313 - v134;
        }

        else
        {
          v139 = floor(v135 * v139) / v135;
          v140 = floor(v135 * (v136 - v313)) / v135;
          v141 = v140 - v134;
        }

        if (!v317)
        {
          v141 = 0.0;
        }

        v144 = v138 + v139 - v134;
        v145 = v141 + v140 - v134;
      }

      sub_673FC(&v271, 0, *(v132 + 40), *(v132 + 48), v144 - v145);
      v148 = v147;
      v150 = v149;
      v133[9] = v147;
      v133[10] = v149;
      sub_61AFC(v133, 1);
      v151 = objc_opt_new();
      sub_61C34(&v318, v133, v151);
      v152 = v151;
      __p[0] = v148;
      __p[1] = v150;
      v295 = v152;
      v296 = 0uLL;
      sub_61DD8(&v263->_cellDividers, __p);
      *&v273 = &v295.i64[1];
      sub_63928(&v273);
    }

    v153 = v318;
    v154 = v319;
    if (v318 == v319)
    {
      v161 = v318;
LABEL_226:
      v162 = v306;
      v273 = &v318;
      v274 = (0x2E8BA2E8BA2E8BA3 * (v161 - v153));
      sub_67714(&v273);
      *&v271 = &v318;
      *(&v271 + 1) = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
      v272 = *(&v271 + 1);
      sub_67714(&v271);
      *__p = v273;
      v295 = v274;
      v296 = v271;
      v297 = v272;
      *&v298 = 0;
      *(&v298 + 1) = v162;
      LODWORD(v299) = 0;
      v302 = 0;
      v300[1] = 0;
      v301 = 0;
      sub_61F88(__p, &v303, &v318, 0);
      v164 = v163;
      v165 = v162 + v163;
      sub_D3F90(&v283, &v303, &v263->_cellDividers, 0.0, v162 + v163);
      v167 = v166;
      v169 = v168;
      v271 = &v318;
      v272 = (0x2E8BA2E8BA2E8BA3 * (v319 - v318));
      sub_690A0(&v271);
      *&v269 = &v318;
      *(&v269 + 1) = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
      v270 = *(&v269 + 1);
      sub_690A0(&v269);
      v257 = v167;
      v170 = v165 + v169;
      v273 = v271;
      v274 = v272;
      v275 = v269;
      v276 = v270;
      v277 = 0;
      v278 = v165 + v169;
      v279 = 0;
      v281 = 0;
      v282 = 0;
      v280 = 0;
      sub_62984(&v273, &v303, &v318, 0);
      v172 = v171;
      v173 = v308;
      sub_95A1C(&v271);
      sub_D4170(&v271, &v318, &v303, &v318, 0.0, v164, v169);
      v174 = [v271 copy];
      nonScrollableAdornmentLayouts = v263->_nonScrollableAdornmentLayouts;
      v263->_nonScrollableAdornmentLayouts = v174;

      if (v280)
      {
        v281 = v280;
        operator delete(v280);
      }

      v176 = v170 + v172;
      if (v300[1])
      {
        v301 = v300[1];
        operator delete(v300[1]);
      }

      v121 = v176 + v173;
      goto LABEL_231;
    }

LABEL_216:
    v155 = v153[3];
    v156 = v153[4];
    while (1)
    {
      if (v155 == v156)
      {
        v153 += 11;
        if (v153 == v154)
        {
          v161 = v319;
          v153 = v318;
          goto LABEL_226;
        }

        goto LABEL_216;
      }

      v157 = *(v155 + 32);
      if ([v157 role] == &dword_0 + 3)
      {
      }

      else
      {
        v158 = *(v155 + 32);
        v159 = [v158 role];

        if (v159 != &dword_4)
        {
          goto LABEL_222;
        }
      }

      *v155 = v153[7];
      v160 = v153[9];
      *(v155 + 8) = 0;
      *(v155 + 16) = v160;
      *(v155 + 24) = 1;
LABEL_222:
      v155 += 96;
    }
  }

  v32 = v318;
  v33 = v319;
  if (v318 != v319)
  {
    v34 = 0;
    v35 = self->_computedColumns * v15;
    v267 = v319;
    v264 = v35;
    while (1)
    {
      v32[7] = v34;
      v32[8] = 0;
      v36 = self->_columnsPerSection;
      if (v36)
      {
        if (!v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = v32[6];
        v36 = [v37 columns];

        if (!v35)
        {
          goto LABEL_34;
        }
      }

      if (v35 > v34)
      {
        if (v36 >= v35 - v34)
        {
          v36 = (v35 - v34);
        }

LABEL_36:
        if (v36 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = -1;
        }

        else
        {
          v38 = v36 - 1;
        }

        goto LABEL_39;
      }

LABEL_34:
      if (!v35)
      {
        goto LABEL_36;
      }

      v38 = -1;
LABEL_39:
      v40 = *v32;
      v39 = v32[1];
      if (*v32 == v39)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        do
        {
          v42 = *(v40 + 32);
          v43 = [v42 columnSpan];
          v44 = v38 >= v41;
          if (v38 >= v41)
          {
            v45 = v43;
          }

          else
          {
            v45 = 0;
          }

          if (v38 >= v41)
          {
            v46 = v41;
          }

          else
          {
            v46 = 0;
          }

          if (v38 >= v41)
          {
            v41 += v43;
          }

          *v40 = v46 + v34;
          *(v40 + 8) = 0;
          *(v40 + 16) = v45;
          *(v40 + 24) = v44;
          v40 += 96;
        }

        while (v40 != v39);
      }

      v32[9] = v41;
      v32[10] = 1;
      v34 += v41;
      v32 += 11;
      self = v263;
      v35 = v264;
      if (v32 == v267)
      {
        v32 = v318;
        v33 = v319;
        goto LABEL_129;
      }
    }
  }

  v34 = 0;
LABEL_129:
  v85 = 1;
  v321 = v34;
  v322 = 1;
  if (v32 != v33)
  {
LABEL_130:
    v86 = v32[3];
    v87 = v32[4];
    while (1)
    {
      if (v86 == v87)
      {
        v32 += 11;
        if (v32 == v33)
        {
          v34 = v321;
          v85 = v322;
          break;
        }

        goto LABEL_130;
      }

      v88 = *(v86 + 32);
      if ([v88 role] == &dword_0 + 3)
      {
      }

      else
      {
        v89 = *(v86 + 32);
        v90 = [v89 role];

        if (v90 != &dword_4)
        {
          goto LABEL_136;
        }
      }

      *v86 = v32[7];
      v91 = v32[9];
      *(v86 + 8) = 0;
      *(v86 + 16) = v91;
      *(v86 + 24) = 1;
LABEL_136:
      v86 += 96;
    }
  }

  v93 = self->_computedColumnWidth;
  v92 = self->_computedColumnSpacing;
  v94 = self->_computedRowSpacing;
  v95 = [v260 controller];
  [v95 contentsScale];
  v303 = v13;
  v304 = v34;
  v305 = v85;
  v306 = *&v5;
  v307 = v7;
  v308 = v9;
  v309 = v11;
  v310 = v93;
  v311 = v92;
  v314 = v94;
  v315 = v261;
  v316 = v96;
  v317 = 0;
  if (v34 < 2 || v92 == 0.0)
  {
    v312 = v93;
  }

  else
  {
    v97 = v93;
    if (v96 > 0.0)
    {
      v97 = floor(v93 * v96) / v96;
    }

    v312 = v97;
    v92 = ((v93 - v97) * v34 + v92 * (v34 - 1)) / (v34 - 1);
  }

  v313 = v92;

  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v98 = self->_computedColumns;
    v317 = v98;
    if (!v98)
    {
      v98 = v304;
    }

    v99 = v311;
    if (v311 == 0.0 || v98 < 2)
    {
      v312 = v310;
    }

    else
    {
      v100 = v310;
      if (v316 > 0.0)
      {
        v100 = floor(v310 * v316) / v316;
      }

      v312 = v100;
      v99 = ((v310 - v100) * v98 + v311 * (v98 - 1)) / (v98 - 1);
    }

    v313 = v99;
  }

  v101 = v306;
  v273 = &v318;
  v274 = (0x2E8BA2E8BA2E8BA3 * (v319 - v318));
  sub_67714(&v273);
  *&v283 = &v318;
  *(&v283 + 1) = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
  v284 = *(&v283 + 1);
  sub_67714(&v283);
  *__p = v273;
  v295 = v274;
  v296 = v283;
  v297 = v284;
  *&v298 = 0;
  *(&v298 + 1) = v101;
  LODWORD(v299) = 0;
  v302 = 0;
  v300[1] = 0;
  v301 = 0;
  sub_61F88(__p, &v303, &v318, 0);
  v103 = v102;
  v104 = v101 + v102;
  v105 = v318;
  v106 = 0;
  if (v319 != v318)
  {
    v107 = v318 + 1;
    while (*v107 == *(v107 - 1))
    {
      ++v106;
      v107 += 11;
      if (0x2E8BA2E8BA2E8BA3 * (v319 - v318) == v106)
      {
        v106 = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
        break;
      }
    }
  }

  *&v283 = &v318;
  *(&v283 + 1) = v106;
  v284.i64[0] = 0;
  v284.i64[1] = &v318;
  v286 = 0;
  v287 = 0;
  v285 = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
  v288 = v104;
  v289 = 0;
  v292 = 0;
  v293 = 0;
  v291 = 0;
  v108 = 1;
  if (v319 != v318)
  {
    do
    {
      for (i = *v105; i != v105[1]; i += 96)
      {
        v110 = *(i + 48);
        if ((*(i + 56) - v110) >> 6 > v108)
        {
          v108 = (*(i + 56) - v110) >> 6;
        }
      }

      v105 += 11;
    }

    while (v105 != v319);
  }

  v111 = sub_D3544(&v283, &v303, &v318, v108);
  v113 = v112;
  v271 = &v318;
  v272 = (0x2E8BA2E8BA2E8BA3 * (v319 - v318));
  sub_690A0(&v271);
  *&v269 = &v318;
  *(&v269 + 1) = 0x2E8BA2E8BA2E8BA3 * (v319 - v318);
  v270 = *(&v269 + 1);
  sub_690A0(&v269);
  v114 = v104 + v113;
  v273 = v271;
  v274 = v272;
  v275 = v269;
  v276 = v270;
  v277 = 0;
  v278 = v114;
  v279 = 0;
  v281 = 0;
  v282 = 0;
  v280 = 0;
  sub_62984(&v273, &v303, &v318, 0);
  v116 = v115;
  v117 = v308;
  sub_95A1C(&v271);
  sub_D3B70(&v271, &v291, &v318, &v303, &v318, 0.0, v103);
  v118 = [v271 copy];
  v119 = self->_nonScrollableAdornmentLayouts;
  self->_nonScrollableAdornmentLayouts = v118;

  if (v280)
  {
    v281 = v280;
    operator delete(v280);
  }

  if (v291)
  {
    v292 = v291;
    operator delete(v291);
  }

  v257 = v111;
  v120 = v114 + v116;
  if (v300[1])
  {
    v301 = v300[1];
    operator delete(v300[1]);
  }

  v121 = v120 + v117;
LABEL_231:
  v256 = v121;
  v177 = v321;
  v178 = v322;
  v180 = self->_computedColumnWidth;
  v179 = self->_computedColumnSpacing;
  v181 = self->_computedRowSpacing;
  v182 = [v260 controller];
  [v182 contentsScale];
  v184 = *&v183;
  __p[0] = v259;
  __p[1] = v177;
  v295.i64[0] = v178;
  v295.i64[1] = v5;
  *&v296 = v258;
  *(&v296 + 1) = v9;
  *v297.i64 = v11;
  *&v297.i64[1] = v180;
  *&v298 = v179;
  *(&v299 + 1) = v181;
  v300[0] = v261;
  v300[1] = v183;
  v301 = 0;
  if (v177 < 2 || v179 == 0.0)
  {
    *(&v298 + 1) = v180;
    v185 = v180;
    v186 = v179;
  }

  else
  {
    v185 = v180;
    if (*&v183 > 0.0)
    {
      v185 = floor(v180 * *&v183) / *&v183;
    }

    *(&v298 + 1) = v185;
    v186 = ((v180 - v185) * v177 + v179 * (v177 - 1)) / (v177 - 1);
  }

  *&v299 = v186;

  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v187 = self->_computedColumns;
    v301 = v187;
    if (v187)
    {
      v188 = v187;
    }

    else
    {
      v188 = v177;
    }

    if (v179 == 0.0 || v188 < 2)
    {
      *(&v298 + 1) = v180;
    }

    else
    {
      v189 = v180;
      if (v184 > 0.0)
      {
        v189 = floor(v180 * v184) / v184;
      }

      *(&v298 + 1) = v189;
      v179 = ((v180 - v189) * v188 + v179 * (v188 - 1)) / (v188 - 1);
      v180 = v189;
    }

    *&v299 = v179;
    v185 = v180;
    v186 = v179;
  }

  else
  {
    v187 = 0;
  }

  v253 = v187;
  v190 = v318;
  v191 = v319;
  while (v190 != v191)
  {
    v193 = *v190;
    v192 = v190[1];
    while (v193 != v192)
    {
      if (*(v193 + 16))
      {
        v194 = *(v193 + 24) == 0;
      }

      else
      {
        v194 = 1;
      }

      v195 = v194;
      sub_62E70(v193, v195);
      v193 += 96;
    }

    v197 = v190[3];
    v196 = v190[4];
    while (v197 != v196)
    {
      if (*(v197 + 16))
      {
        v198 = *(v197 + 24) == 0;
      }

      else
      {
        v198 = 1;
      }

      v199 = v198;
      sub_61AFC(v197, v199);
      v197 += 96;
    }

    v190 += 11;
  }

  v255 = v177;
  p_cellBounds = &self->_cellBounds;
  sub_61808(&self->_cellBounds, self->_cellBounds.__begin_, self->_cellBounds.__end_);
  v201 = v318;
  for (j = v319; v201 != j; v201 += 11)
  {
    v203 = *v201;
    v202 = v201[1];
    while (v203 != v202)
    {
      if ((*(v203 + 40) & 1) == 0)
      {
        v205 = *(v203 + 48);
        v204 = *(v203 + 56);
        if (v205 == v204)
        {
          origin = CGRectNull.origin;
          size = CGRectNull.size;
        }

        else
        {
          origin = v205[2];
          size = vsubq_f64(vaddq_f64(v204[-2], v204[-1]), origin);
        }

        v208 = origin;
        origin.x = size.height;
        v268 = size;
        y = origin.y;
        if (!CGRectIsNull(*(&size - 1)))
        {
          v210 = *(v203 + 32);
          end = v263->_cellBounds.__end_;
          cap = v263->_cellBounds.__cap_;
          if (end >= cap)
          {
            v215 = 0xCCCCCCCCCCCCCCCDLL * ((end - p_cellBounds->__begin_) >> 3);
            v216 = v215 + 1;
            if (v215 + 1 > 0x666666666666666)
            {
              sub_4050();
            }

            v217 = 0xCCCCCCCCCCCCCCCDLL * ((cap - p_cellBounds->__begin_) >> 3);
            if (2 * v217 > v216)
            {
              v216 = 2 * v217;
            }

            if (v217 >= 0x333333333333333)
            {
              v218 = 0x666666666666666;
            }

            else
            {
              v218 = v216;
            }

            *&v275 = &self->_cellBounds;
            if (v218)
            {
              sub_68FF4(p_cellBounds, v218);
            }

            v219 = 40 * v215;
            *&v273 = 0;
            *(&v273 + 1) = v219;
            v274.i64[1] = 0;
            *v219 = v210;
            *(v219 + 8) = v208;
            *(v219 + 24) = v268;
            v274.i64[0] = 40 * v215 + 40;
            sub_68F2C(p_cellBounds, &v273);
            v214 = v263;
            v213 = v263->_cellBounds.__end_;
            sub_6904C(&v273);
          }

          else
          {
            *end = v210;
            *(end + 8) = v208;
            v213 = end + 40;
            *(end + 24) = v268;
            v214 = v263;
          }

          v214->_cellBounds.__end_ = v213;
        }
      }

      v203 += 96;
    }
  }

  begin = v263->_scrollAnchors.__begin_;
  p_begin = &v263->_scrollAnchors.__begin_;
  if (begin != v263->_scrollAnchors.__end_)
  {
    v263->_scrollAnchors.__end_ = begin;
  }

  if ([(TUISmartGridLayoutConfiguration *)v263->_configuration paginated])
  {
    if (v254)
    {
      v222 = v255 - 1;
      v223 = &v255[v254 - 1];
      if (v254 <= v223)
      {
        v224 = 0;
        v225 = v185 + v186;
        v226 = v186 * -2.0;
        v227 = v222 / v254 * v254;
        v228 = v222 % v254;
        v229 = v223 / v254;
        do
        {
          v230 = v186 + v185;
          if (v186 == 0.0)
          {
            v234 = v230 * v254;
            if (v184 > 0.0)
            {
              v234 = floor(v234 * v184) / v184;
            }

            v235 = v230 * 0.0;
            if (v184 > 0.0)
            {
              v235 = floor(v235 * v184) / v184;
            }

            v233 = v234 + v235;
          }

          else
          {
            v231 = -(v186 - v230 * (v254 + 1));
            if (v184 > 0.0)
            {
              v231 = floor(v231 * v184) / v184;
            }

            v232 = v230 - v186;
            if (v184 > 0.0)
            {
              v232 = floor(v232 * v184) / v184;
            }

            v233 = v231 - v185 + v232 - v185;
          }

          if (v261 == &dword_0 + 2)
          {
            if (v186 == 0.0)
            {
              v239 = v225 * v227;
              if (v184 <= 0.0)
              {
                v240 = v225 * (v228 + 1) - v186;
              }

              else
              {
                v239 = floor(v239 * v184) / v184;
                v240 = floor((v225 * (v228 + 1) - v186) * v184) / v184;
              }

              v241 = v239 + v240;
            }

            else
            {
              v236 = v225 * (v227 + 1) - v186;
              if (v184 <= 0.0)
              {
                v237 = v226 + v225 * (v228 + 2);
              }

              else
              {
                v236 = floor(v236 * v184) / v184;
                v237 = floor((v226 + v225 * (v228 + 2)) * v184) / v184;
              }

              v241 = v236 - v185 + v237 - v185;
            }

            v238 = v241 - v224 * v233;
          }

          else
          {
            v238 = v233 * v224;
          }

          *&v273 = v238;
          sub_94B48(p_begin, &v273);
          ++v224;
        }

        while (v224 < v229);
      }
    }
  }

  else
  {
    v242 = v318;
    v243 = v319;
    if (v318 != v319)
    {
      if (v261 == &dword_0 + 2)
      {
        v244 = v11;
      }

      else
      {
        v244 = -v258;
      }

      do
      {
        v245 = *v242;
        v246 = v242[1];
        while (v245 != v246)
        {
          v247 = v245[2];
          if (v247)
          {
            v248 = v245[3] == 0;
          }

          else
          {
            v248 = 1;
          }

          if (!v248)
          {
            sub_67BF8(__p, *v245, v247, 0);
            *&v273 = v244 + v249;
            sub_94B48(p_begin, &v273);
          }

          v245 += 12;
        }

        v242 += 11;
      }

      while (v242 != v243);
    }
  }

  v250 = v299;
  *&v263->_columnSystem._specifiedColumnSpacing = v298;
  *&v263->_columnSystem._computedColumnSpacing = v250;
  *&v263->_columnSystem._layoutDirection = *v300;
  v251 = v295;
  *&v263->_columnSystem._containerWidth = *__p;
  *&v263->_columnSystem._rows = v251;
  v252 = v297;
  *&v263->_columnSystem._insets.left = v296;
  v263->_columnSystem._columnsPerPage = v301;
  *&v263->_columnSystem._insets.right = v252;
  v263->_contentLayoutSize.width = v257;
  v263->_contentLayoutSize.height = v256;
  *&v263->_layoutSize.width = v259;
  v263->_layoutSize.height = v256;
  if (v327)
  {
    v328 = v327;
    operator delete(v327);
  }

  if (v325)
  {
    v326 = v325;
    operator delete(v325);
  }

  if (v323)
  {
    v324 = v323;
    operator delete(v323);
  }

  __p[0] = v320;
  sub_63A20(__p);
  __p[0] = &v318;
  sub_63C64(__p);
}

- (double)widthForColumnSpan:(unint64_t)a3
{
  if (a3)
  {
    return -(self->_computedColumnSpacing - (self->_computedColumnWidth + self->_computedColumnSpacing) * a3);
  }

  else
  {
    return 0.0;
  }
}

- (void)appendAnchorsToSet:(id)a3 forLayout:(id)a4 inRoot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 axis] == &dword_0 + 1)
  {
    height = self->_contentLayoutSize.height;
    v15 = 0u;
    if (v9)
    {
      [v9 computedTransformInAncestorLayout:v10];
    }

    begin = self->_scrollAnchors.__begin_;
    end = self->_scrollAnchors.__end_;
    if (begin != end)
    {
      v14 = height * 0.5;
      do
      {
        [v8 appendScrollAnchor:{v14 * 0.0 + *&v15 * *begin++ + 0.0, v15}];
      }

      while (begin != end);
    }
  }
}

- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = *&a4->c;
  v21 = *&a4->a;
  v22 = v15;
  v23 = *&a4->tx;
  sub_6320C(&self->_cellDividers, a3, &v21, v12, v14);
  if (a3 >= 4 && [v12 debugVisualLayout])
  {
    width = self->_contentLayoutSize.width;
    height = self->_contentLayoutSize.height;
    v18 = [v13 identifier];
    v19 = *&a4->c;
    v21 = *&a4->a;
    v22 = v19;
    v23 = *&a4->tx;
    v20 = [TUISmartGridDebugRenderModel renderModelWithSize:&self->_columnSystem columnSystem:v18 identifier:&v21 transform:width, height];

    [v14 addObject:v20];
  }
}

- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7
{
  v11 = a5;
  v12 = a7;
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = self->_nonScrollableAdornmentLayouts;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = *v33;
    v18 = -width;
    v19 = -height;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        [v21 computedOrigin];
        v23 = v22;
        v25 = v24;
        [v21 computedTransformedSize];
        memset(&v31, 0, sizeof(v31));
        CGAffineTransformMakeTranslation(&t1, v23 + v26 * 0.5 + v18 * 0.5, v25 + v27 * 0.5 + v19 * 0.5);
        v28 = *&a4->c;
        *&v29.a = *&a4->a;
        *&v29.c = v28;
        *&v29.tx = *&a4->tx;
        CGAffineTransformConcat(&v31, &t1, &v29);
        t1 = v31;
        [v21 appendRenderModelIgnoreHiddenCompatibleWithKind:a3 context:v11 transform:&t1 toModels:v12];
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }
}

- (void)appendHoverRegions:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  begin = self->_cellBounds.__begin_;
  for (i = self->_cellBounds.__end_; begin != i; begin += 5)
  {
    v9 = *begin;
    v10 = begin[1];
    v11 = begin[2];
    v12 = begin[3];
    v13 = begin[4];
    v14 = v9;
    v15 = *&a4->c;
    *&v27.a = *&a4->a;
    *&v27.c = v15;
    *&v27.tx = *&a4->tx;
    v16 = v10;
    *&v15 = v11;
    v17 = v12;
    v18 = v13;
    v28 = CGRectApplyAffineTransform(*(&v15 - 8), &v27);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v23 = [TUIHoverIdentifier alloc];
    v24 = [v14 identifier];
    v25 = [(TUIHoverIdentifier *)v23 initWithName:@"cell" identifier:v24];

    v26 = [[TUIHoverRegion alloc] initWithBounds:x, y, width, height];
    [v6 setObject:v26 forKeyedSubscript:v25];
  }
}

- (CGSize)layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentLayoutSize
{
  width = self->_contentLayoutSize.width;
  height = self->_contentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 56) = CGSizeZero;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  v2 = *&UIEdgeInsetsZero.bottom;
  *(self + 8) = *&UIEdgeInsetsZero.top;
  *(self + 9) = v2;
  *(self + 27) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end