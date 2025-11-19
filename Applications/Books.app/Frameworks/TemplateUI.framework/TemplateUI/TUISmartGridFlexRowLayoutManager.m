@interface TUISmartGridFlexRowLayoutManager
+ (void)configureContentLayout:(id)a3 configuration:(id)a4;
+ (void)configureScrollLayout:(id)a3 configuration:(id)a4;
- (BOOL)shouldInvalidateRenderModelForScrollLayout;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridFlexRowLayoutManager)initWithContent:(id)a3;
- (UIEdgeInsets)scrollGradientFraction;
- (UIEdgeInsets)scrollGradientInsets;
- (id).cxx_construct;
- (id)scrollPolicy;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7;
- (void)appendAnchorsToSet:(id)a3 forLayout:(id)a4 inRoot:(id)a5;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)appendHoverRegions:(id)a3 transform:(CGAffineTransform *)a4;
- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)a3 transform:(CGAffineTransform *)a4 context:(id)a5 box:(id)a6 toModels:(id)a7;
- (void)layoutContent:(id)a3;
- (void)positionContainerLayout:(id)a3;
@end

@implementation TUISmartGridFlexRowLayoutManager

- (TUISmartGridFlexRowLayoutManager)initWithContent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUISmartGridFlexRowLayoutManager;
  v6 = [(TUISmartGridFlexRowLayoutManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, a3);
  }

  return v7;
}

+ (void)configureScrollLayout:(id)a3 configuration:(id)a4
{
  v12 = a3;
  v5 = a4;
  [v5 contentInsets];
  v7 = v6;
  v9 = v8;
  if ([v5 paginated])
  {
    [v5 width];
    v11 = v10 - v7 - v9;
  }

  else
  {
    [v5 width];
  }

  [v12 setContainingWidth:v11];
}

+ (void)configureContentLayout:(id)a3 configuration:(id)a4
{
  v12 = a3;
  v5 = a4;
  [v5 contentInsets];
  v7 = v6;
  v9 = v8;
  if ([v5 paginated])
  {
    [v5 width];
    v11 = v10 - v7 - v9;
  }

  else
  {
    [v5 width];
  }

  [v12 setContainingWidth:v11];
}

- (void)positionContainerLayout:(id)a3
{
  v7 = a3;
  v4 = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  v5 = 0.0;
  if (v4)
  {
    [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
    v5 = v6;
  }

  [v7 setComputedOrigin:{v5, 0.0}];
}

- (BOOL)shouldInvalidateRenderModelForScrollLayout
{
  v3 = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  if (v3)
  {
    LOBYTE(v3) = self->_scrollPolicy == 0;
  }

  return v3;
}

- (void)layoutContent:(id)a3
{
  v121 = a3;
  v4 = [v121 computedLayoutDirection];
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v6 = v5;
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  self->_computedColumns = [TUISmartGridBox columnsWithConfiguration:self->_configuration];
  v15 = [(TUISmartGridLayoutConfiguration *)self->_configuration columnSpacing];
  self->_computedColumnSpacing = TUILengthValueWithDefault(v15, v16, 0.0);
  [TUISmartGridBox columnWidthWithConfiguration:self->_configuration columns:self->_computedColumns spacing:?];
  self->_computedColumnWidth = v17;
  v18 = [v121 children];
  sub_63EE4(&v143, v18, self->_content, 1);

  v19 = v143;
  v20 = v144;
  if (v143 != v144)
  {
    v21 = 0;
    do
    {
      v22 = *v19;
      v23 = v19[1];
      while (v22 != v23)
      {
        *v22 = v21;
        *(v22 + 24) = 1;
        *(v22 + 8) = xmmword_24CD00;
        ++v21;
        v22 += 96;
      }

      v19 += 11;
    }

    while (v19 != v20);
  }

  computedColumnSpacing = self->_computedColumnSpacing;
  v131 = v6;
  v132 = *&v8;
  v133 = v10;
  v134 = v12;
  v135 = v14;
  v136 = computedColumnSpacing;
  v137 = 0;
  v138 = v4;
  v139 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v139 = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  v25 = v8;
  v27 = v143;
  v26 = v144;
  v28 = 0;
  if (v144 != v143)
  {
    v29 = v143 + 1;
    while (*v29 == *(v29 - 1))
    {
      v28 = (v28 + 1);
      v29 += 11;
      if ((0x2E8BA2E8BA2E8BA3 * (v144 - v143)) == v28)
      {
        v28 = (0x2E8BA2E8BA2E8BA3 * (v144 - v143));
        break;
      }
    }
  }

  v127[0] = &v143;
  v127[1] = v28;
  v127[2] = 0;
  v127[3] = &v143;
  v127[5] = 0;
  v127[6] = 0;
  v127[4] = (0x2E8BA2E8BA2E8BA3 * (v144 - v143));
  v127[7] = v132;
  v128 = 0u;
  *__p = 0u;
  v130 = 0u;
  v30 = 1;
  if (v144 != v143)
  {
    do
    {
      v31 = *v27;
      v32 = v27[1];
      while (v31 != v32)
      {
        v33 = *(v31 + 48);
        v34 = *(v31 + 56);
        if (v33 == v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          do
          {
            if (*v33)
            {
              v36 = [*v33 span];
              if (v36 <= 1)
              {
                v37 = 1;
              }

              else
              {
                v37 = v36;
              }
            }

            else
            {
              v37 = 1;
            }

            v35 += v37;
            v33 += 8;
          }

          while (v33 != v34);
        }

        if (v35 > v30)
        {
          v30 = v35;
        }

        v31 += 96;
      }

      v27 += 11;
    }

    while (v27 != v26);
  }

  v38 = sub_93D58(v127, &v131, &v143, v30);
  v40 = v39;
  v41 = v134;
  v42 = v143;
  v43 = v144;
  while (v42 != v43)
  {
    v44 = *v42;
    v45 = v42[1];
    while (v44 != v45)
    {
      if (*(v44 + 16))
      {
        v46 = *(v44 + 24) == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = v46;
      sub_62E70(v44, v47);
      v44 += 96;
    }

    v48 = v42[3];
    v49 = v42[4];
    while (v48 != v49)
    {
      sub_61AFC(v48, 1);
      v48 += 96;
    }

    v42 += 11;
  }

  p_cells = &self->_cells;
  sub_94A5C(&self->_cells, self->_cells.__begin_, self->_cells.__end_);
  v119 = self;
  v51 = objc_opt_new();
  v52 = v143;
  for (i = v144; v52 != i; v52 += 11)
  {
    v55 = *v52;
    v54 = v52[1];
    while (v55 != v54)
    {
      if ((*(v55 + 40) & 1) == 0)
      {
        v57 = *(v55 + 48);
        v56 = *(v55 + 56);
        if (v57 == v56)
        {
          origin = CGRectNull.origin;
          size = CGRectNull.size;
        }

        else
        {
          origin = v57[2];
          size = vsubq_f64(vaddq_f64(v56[-2], v56[-1]), origin);
        }

        y = origin.y;
        height = size.height;
        v122 = size;
        v62 = origin;
        if (!CGRectIsNull(*&origin.x))
        {
          v63 = *(v55 + 32);
          v64 = [v63 identifier];
          v123.width = v62.x;
          v123.height = y;
          v124 = v122;
          *&v125 = v64;
          sub_94AF4(p_cells, &v123);

          v65 = objc_opt_new();
          sub_67064(&v143, v55, v65);
          v66 = [v65 copy];
          [v51 addObject:v66];
        }
      }

      v55 += 96;
    }
  }

  v67 = [v51 copy];
  v68 = *(v120 + 104);
  *(v120 + 104) = v67;

  v69 = sub_618AC(&v143, &dword_4 + 1);
  v70 = v69;
  if (v145[1] == v69)
  {
    v123 = CGSizeZero;
    v124 = 0;
    v125 = 0u;
    sub_61DD8(v120 + 56, &v123);
    v152[0] = &v124.height;
    sub_63928(v152);
  }

  else
  {
    v71 = sub_96CF8(&v126, 0, *(v69 + 40), *(v69 + 48), NAN, v40);
    v73 = v72;
    v70[9] = v71;
    v70[10] = v72;
    sub_61AFC(v70, 1);
    v74 = objc_opt_new();
    sub_61C34(&v143, v70, v74);
    v75 = v74;
    v123.width = v71;
    v123.height = v73;
    v124 = v75;
    v125 = 0uLL;
    sub_61DD8(v120 + 56, &v123);
    v152[0] = &v124.height;
    sub_63928(v152);

    v76 = 0xCCCCCCCCCCCCCCCDLL * ((*(v120 + 40) - *(v120 + 32)) >> 3);
    v77 = -0.5;
    if (v138 == &dword_0 + 2)
    {
      v77 = 0.5;
    }

    if (v76 >= 2)
    {
      v78 = v136 * v77;
      v79 = 1;
      v80 = 72;
      do
      {
        v81 = [*(*p_cells + v80) tui_identifierByAppendingString:@"divider"];
        if (v138 == &dword_0 + 2)
        {
          v82 = v133 + v135;
          if (v139)
          {
            v82 = 0.0;
          }

          v83 = *(v141 - 1) - *v140 - v136 + v82 - *(v140 + v79);
        }

        else
        {
          v83 = *(v140 + v79);
        }

        sub_6858C((v120 + 56), v81, v78 + v83, v8);

        ++v79;
        v80 += 40;
      }

      while (v76 != v79);
    }
  }

  v84 = *(v120 + 120);
  if (v84)
  {
    v85 = [v84 cells];
    v87 = *v85;
    v86 = v85[1];
    v88 = *(v120 + 32);
    if (v86 - *v85 == *(v120 + 40) - v88)
    {
      while (v87 != v86)
      {
        if (!CGRectEqualToRect(*v87, *v88))
        {
          goto LABEL_75;
        }

        v89 = *(v87 + 32);
        if (v89 != *(v88 + 32) && ![v89 isEqual:?])
        {
          goto LABEL_75;
        }

        v87 += 40;
        v88 += 40;
      }
    }

    else
    {
LABEL_75:
      v90 = *(v120 + 120);
      *(v120 + 120) = 0;
    }
  }

  v91 = *(v120 + 8);
  v93 = *(v120 + 16);
  v92 = (v120 + 8);
  if (v91 != v93)
  {
    *(v120 + 16) = v91;
    v93 = v91;
  }

  if (v139 == 1)
  {
    v95 = *(&v128 + 1);
    v94 = v128;
    if (v128 != *(&v128 + 1))
    {
      v96 = 0;
      do
      {
        if (v138 == &dword_0 + 2)
        {
          v97 = v133 + v135;
          if (v139)
          {
            v97 = 0.0;
          }

          v98 = *(v141 - 1) - *v140 - v136 + v97 - *(v140 + v96);
        }

        else
        {
          v98 = *(v140 + v96);
        }

        v123.width = v98;
        sub_94B48((v120 + 8), &v123);
        v100 = *v94;
        v99 = v94[1];
        v94 += 3;
        v96 += (v99 - v100) >> 4;
      }

      while (v94 != v95);
    }
  }

  else
  {
    if (v138 == &dword_0 + 2)
    {
      v101 = -v133;
    }

    else
    {
      v101 = v133;
    }

    v102 = *(v120 + 32);
    v103 = *(v120 + 40);
    if (v102 != v103)
    {
      v104 = 0;
      do
      {
        if (v138 == &dword_0 + 2)
        {
          v105 = v133 + v135;
          if (v139)
          {
            v105 = 0.0;
          }

          v106 = *(v141 - 1) - *v140 - v136 + v105 - *(v140 + v104);
        }

        else
        {
          v106 = *(v140 + v104);
        }

        v107 = v106 - v101;
        v108 = *(v120 + 24);
        if (v93 >= v108)
        {
          v109 = *v92;
          v110 = v93 - *v92;
          v111 = v110 >> 3;
          v112 = (v110 >> 3) + 1;
          if (v112 >> 61)
          {
            sub_4050();
          }

          v113 = v108 - v109;
          if (v113 >> 2 > v112)
          {
            v112 = v113 >> 2;
          }

          if (v113 >= 0x7FFFFFFFFFFFFFF8)
          {
            v114 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v114 = v112;
          }

          if (v114)
          {
            sub_65004(v120 + 8, v114);
          }

          *(8 * v111) = v107;
          v93 = (8 * v111 + 8);
          memcpy(0, v109, v110);
          v115 = *(v120 + 8);
          *(v120 + 8) = 0;
          *(v120 + 16) = v93;
          *(v120 + 24) = 0;
          if (v115)
          {
            operator delete(v115);
          }
        }

        else
        {
          *v93++ = v107;
        }

        *(v120 + 16) = v93;
        v102 += 40;
        v104 += 8;
      }

      while (v102 != v103);
    }
  }

  sub_95A1C(&v123);
  sub_94C28(&v123, &__p[1], &v143, &v131, &v143, CGPointZero.x, CGPointZero.y);
  v116 = [*&v123.width copy];
  v117 = v25 + v40 + v41;
  v118 = *(v120 + 112);
  *(v120 + 112) = v116;

  *(v120 + 184) = v38;
  *(v120 + 192) = v117;
  *(v120 + 168) = v6;
  *(v120 + 176) = v117;

  if (__p[1])
  {
    *&v130 = __p[1];
    operator delete(__p[1]);
  }

  *&v123.width = &v128;
  sub_95ABC(&v123);
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  v127[0] = v145;
  sub_63A20(v127);
  v127[0] = &v143;
  sub_63C64(v127);
}

- (id)scrollPolicy
{
  if (!self->_scrollPolicy && [(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v3 = [[TUICellScrollPolicy alloc] initWithCells:&self->_cells];
    scrollPolicy = self->_scrollPolicy;
    self->_scrollPolicy = v3;
  }

  v5 = self->_scrollPolicy;

  return v5;
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
  v7 = *&a4->c;
  v8[0] = *&a4->a;
  v8[1] = v7;
  v8[2] = *&a4->tx;
  sub_6320C(&self->_cellDividers, a3, v8, a5, a7);
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

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v9 = a4;
  v59 = a6;
  if (a3 >= 4)
  {
    v10 = self->_cells.__end_ - self->_cells.__begin_;
    if (v10)
    {
      v11 = 0;
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
      v57 = -self->_contentLayoutSize.height;
      v58 = -self->_contentLayoutSize.width;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v56 = v12;
      do
      {
        v13 = (self->_cells.__begin_ + 40 * v11);
        v15 = *v13;
        v14 = v13[1];
        v17 = v13[2];
        v16 = v13[3];
        memset(&v75, 0, sizeof(v75));
        CGAffineTransformMakeTranslation(&v75, v17 * 0.5, v16 * 0.5);
        v18 = objc_opt_new();
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v19 = [(NSArray *)self->_cellLayouts objectAtIndexedSubscript:v11];
        v20 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
        if (v20)
        {
          v21 = *v72;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v72 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v71 + 1) + 8 * i);
              [v23 computedOrigin];
              v25 = v24;
              v27 = v26;
              [v23 computedTransformedSize];
              memset(&v70, 0, sizeof(v70));
              CGAffineTransformMakeTranslation(&t1, v25 - v15 + v28 * 0.5 + -v17 * 0.5, v27 - v14 + v29 * 0.5 + -v16 * 0.5);
              t2 = v75;
              CGAffineTransformConcat(&v70, &t1, &t2);
              t1 = v70;
              [v23 appendRenderModelCompatibleWithKind:a3 context:v9 transform:&t1 toModels:v18];
            }

            v20 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
          }

          while (v20);
        }

        CGAffineTransformMakeTranslation(&t1, v15 + v17 * 0.5 + v58 * 0.5, v14 + v16 * 0.5 + v57 * 0.5);
        v30 = *&a5->c;
        *&t2.a = *&a5->a;
        *&t2.c = v30;
        *&t2.tx = *&a5->tx;
        CGAffineTransformConcat(&v70, &t1, &t2);
        v75 = v70;
        v31 = [TUIRenderModelSubviews alloc];
        v32 = [v9 renderModelConvertModels:v18 toKind:a3];
        v33 = [(TUIRenderModelSubviews *)v31 initWithSubmodels:v32];

        [(TUIRenderModelSubviews *)v33 setSize:v17, v16];
        v34 = [*(self->_cells.__begin_ + 5 * v11 + 4) tui_identifierByAppendingString:@"cell"];
        v35 = [TUIContainerView renderModelWithSubviewsModel:v33 style:0 identifier:v34];

        v36 = [[TUIRenderModelTransform alloc] initWithSubmodel:v35];
        y = CGPointZero.y;
        v65 = *&v75.a;
        tx = v75.tx;
        c = v75.c;
        ty = v75.ty;
        d = v75.d;
        [v35 size];
        v60 = v37;
        [v35 size];
        v39 = v38;
        a = a5->a;
        b = a5->b;
        v42 = a5->c;
        v43 = a5->d;
        v44 = a5->tx;
        v45 = a5->ty;
        [v9 contentsScale];
        v46 = v44 + v39 * -0.5 * v42 + a * (v60 * -0.5);
        v47 = v45 + v39 * -0.5 * v43 + b * (v60 * -0.5);
        v49 = tx + y * c + *&v65 * CGPointZero.x + TUIPointRoundedForScale(v46, v47, v48) - v46;
        v51 = ty + y * d + *(&v65 + 1) * CGPointZero.x + v50 - v47;
        t1 = v75;
        memset(&v70, 0, sizeof(v70));
        CGAffineTransformMakeTranslation(&t2, -v49, -v51);
        CGAffineTransformConcat(&v70, &t1, &t2);
        v52 = v70.tx;
        [v9 contentsScale];
        v70.tx = TUIFloatRoundedForScale(v52, v53);
        v54 = v70.ty;
        [v9 contentsScale];
        v70.ty = TUIFloatRoundedForScale(v54, v55);
        [(TUIRenderModelTransform *)v36 setCenter:v49, v51];
        t1 = v70;
        [(TUIRenderModelTransform *)v36 setTransform:&t1];
        [v59 addObject:v36];

        ++v11;
      }

      while (v11 != v56);
    }
  }
}

- (void)appendHoverRegions:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  begin = self->_cells.__begin_;
  for (i = self->_cells.__end_; begin != i; begin = (begin + 40))
  {
    v19 = *begin;
    v9 = *&a4->c;
    *&v18.a = *&a4->a;
    *&v18.c = v9;
    *&v18.tx = *&a4->tx;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v14 = [TUIHoverIdentifier alloc];
    v15 = *(begin + 4);
    v16 = [(TUIHoverIdentifier *)v14 initWithName:@"cell" identifier:v15];

    v17 = [[TUIHoverRegion alloc] initWithBounds:x, y, width, height];
    [v6 setObject:v17 forKeyedSubscript:v16];
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
  return self;
}

@end