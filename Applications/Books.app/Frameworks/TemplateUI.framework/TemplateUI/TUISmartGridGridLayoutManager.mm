@interface TUISmartGridGridLayoutManager
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridGridLayoutManager)initWithContent:(id)content;
- (double)widthForColumnSpan:(unint64_t)span;
- (id).cxx_construct;
- (unint64_t)ruleLayoutAxis;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root;
- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform;
- (void)layoutContent:(id)content;
@end

@implementation TUISmartGridGridLayoutManager

- (TUISmartGridGridLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridGridLayoutManager;
  v6 = [(TUISmartGridGridLayoutManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
  }

  return v7;
}

+ (void)configureScrollLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
  [configurationCopy height];
  [layoutCopy setContainingHeight:?];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
}

- (double)widthForColumnSpan:(unint64_t)span
{
  if (span)
  {
    return -(self->_computedColumnSpacing - (self->_computedColumnWidth + self->_computedColumnSpacing) * span);
  }

  else
  {
    return 0.0;
  }
}

- (unint64_t)ruleLayoutAxis
{
  if (self->_list)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)layoutContent:(id)content
{
  contentCopy = content;
  computedLayoutDirection = [contentCopy computedLayoutDirection];
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v6 = v5;
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  self->_computedColumns = [TUISmartGridBox columnsWithConfiguration:self->_configuration];
  columnSpacing = [(TUISmartGridLayoutConfiguration *)self->_configuration columnSpacing];
  self->_computedColumnSpacing = TUILengthValueWithDefault(columnSpacing, v16, 0.0);
  [TUISmartGridBox columnWidthWithConfiguration:self->_configuration columns:self->_computedColumns spacing:?];
  self->_computedColumnWidth = v17;
  rowSpacing = [(TUISmartGridLayoutConfiguration *)self->_configuration rowSpacing];
  self->_computedRowSpacing = TUILengthValueWithDefault(rowSpacing, v19, 0.0);
  children = [contentCopy children];
  sub_63EE4(&v135, children, self->_content, 1);

  computedColumns = self->_computedColumns;
  v139 = 1;
  begin = self->_scrollAnchors.__begin_;
  if (begin != self->_scrollAnchors.__end_)
  {
    self->_scrollAnchors.__end_ = begin;
  }

  p_cellBounds = &self->_cellBounds;
  sub_61808(&self->_cellBounds, self->_cellBounds.__begin_, self->_cellBounds.__end_);
  v22 = computedColumns;
  v23 = v139;
  computedColumnWidth = self->_computedColumnWidth;
  computedColumnSpacing = self->_computedColumnSpacing;
  computedRowSpacing = self->_computedRowSpacing;
  controller = [contentCopy controller];
  [controller contentsScale];
  v29 = computedColumnWidth;
  v30 = computedColumnSpacing;
  if (computedColumnSpacing != 0.0)
  {
    v29 = computedColumnWidth;
    v30 = computedColumnSpacing;
    if (v22 >= 2)
    {
      v29 = computedColumnWidth;
      if (v28 > 0.0)
      {
        v29 = floor(computedColumnWidth * v28) / v28;
      }

      v30 = ((computedColumnWidth - v29) * v22 + computedColumnSpacing * (v22 - 1)) / (v22 - 1);
    }
  }

  self->_columnSystem._containerWidth = v6;
  self->_columnSystem._columns = v22;
  self->_columnSystem._rows = v23;
  self->_columnSystem._insets.top = v8;
  self->_columnSystem._insets.left = v10;
  self->_columnSystem._insets.bottom = v12;
  self->_columnSystem._insets.right = v14;
  self->_columnSystem._specifiedColumnWidth = computedColumnWidth;
  self->_columnSystem._specifiedColumnSpacing = computedColumnSpacing;
  self->_columnSystem._computedColumnWidth = v29;
  self->_columnSystem._computedColumnSpacing = v30;
  self->_columnSystem._rowSpacing = computedRowSpacing;
  self->_columnSystem._layoutDirection = computedLayoutDirection;
  self->_columnSystem._contentsScale = v28;
  self->_columnSystem._columnsPerPage = 0;

  verticalPlacement = [(TUISmartGridLayoutConfiguration *)self->_configuration verticalPlacement];
  if (verticalPlacement >= 7)
  {
    v32 = 5;
  }

  else
  {
    v32 = dword_24CD10[verticalPlacement];
  }

  v119 = v32;
  v33 = sub_618AC(&v135, &dword_4 + 2);
  if (v137[1] == v33)
  {
    v125 = CGSizeZero;
    v126 = 0u;
    v127 = 0u;
    sub_61DD8(&self->_cellDividers, &v125);
    *&v123.width = &v126 + 8;
    sub_63928(&v123);
  }

  else
  {
    v34 = sub_61938(&self->_columnSystem, 0, 1uLL);
    sub_673FC(&v121, 0, *(v33 + 5), *(v33 + 6), v34);
    v36 = v35;
    v38 = v37;
    v33[9] = v35;
    v33[10] = v37;
    sub_61AFC(v33, 1);
    v39 = objc_opt_new();
    sub_61C34(&v135, v33, v39);
    v125.width = v36;
    v125.height = v38;
    v126 = v39;
    v127 = 0uLL;
    v40 = v39;
    sub_61DD8(&self->_cellDividers, &v125);
    *&v123.width = &v126 + 8;
    sub_63928(&v123);
  }

  containerWidth = self->_columnSystem._containerWidth;
  v42 = containerWidth - sub_61E30(&self->_columnSystem);
  v43 = v42 * 0.5;
  v44 = v42 <= 0.0;
  v45 = 0.0;
  if (v44)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v43;
  }

  v48 = v135;
  v47 = v136;
  if (v135 != v136)
  {
    v115 = v136;
    v117 = 0.0;
    while (1)
    {
      v49 = v48[3];
      v50 = v48[4];
      while (v49 != v50)
      {
        v51 = *(v49 + 32);
        if ([v51 role] == &dword_0 + 3)
        {
        }

        else
        {
          v52 = *(v49 + 32);
          role = [v52 role];

          if (role != &dword_4)
          {
            goto LABEL_25;
          }
        }

        *v49 = 0;
        v54 = self->_computedColumns;
        *(v49 + 8) = 0;
        *(v49 + 16) = v54;
        *(v49 + 24) = 1;
LABEL_25:
        v49 += 96;
      }

      *&v123.width = &v135;
      v123.height = v117;
      v124 = (*&v117 + 1);
      sub_67714(&v123);
      *&v121 = &v135;
      *(&v121 + 1) = *&v117 + 1;
      v122 = (*&v117 + 1);
      sub_67714(&v121);
      v125 = v123;
      v126 = v124;
      v127 = v121;
      v128 = v122;
      v129 = v46;
      v130 = v8;
      v131 = 0;
      v133 = 0;
      v134 = 0;
      __p = 0;
      sub_61F88(&v125, &self->_columnSystem, &v135, 0);
      v56 = v55;
      v116 = *&v117 + 1;
      if (__p)
      {
        v133 = __p;
        operator delete(__p);
      }

      v57 = v8 + v56;
      v58 = *v48;
      v59 = v48[1];
      if (*v48 == v59)
      {
        v60 = 0;
      }

      else
      {
        v60 = 0;
        v61 = 0;
        v62 = self->_computedColumns;
        if (v62 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v63 = -1;
        }

        else
        {
          v63 = v62 - 1;
        }

        v64 = *v48;
        do
        {
          if (v63 < v61)
          {
            if (v60 >= 1)
            {
              sub_62474(&self->_cellDividers, &self->_columnSystem, v58, v64, v46, v57);
            }

            *&v125.width = v58;
            *&v125.height = v64;
            *&v126 = v46;
            *(&v126 + 1) = v57;
            v129 = 0.0;
            v130 = 0.0;
            *(&v128 + 1) = 0;
            LODWORD(v127) = v119;
            v65 = v135;
            v66 = 1;
            while (v65 != v136)
            {
              for (i = *v65; i != v65[1]; i += 96)
              {
                v68 = *(i + 48);
                if ((*(i + 56) - v68) >> 6 > v66)
                {
                  v66 = (*(i + 56) - v68) >> 6;
                }
              }

              v65 += 11;
            }

            sub_62580(&v125, &self->_columnSystem, &v135, v66);
            v70 = v69;
            v71 = self->_computedRowSpacing;
            if (*(&v128 + 1))
            {
              v129 = *(&v128 + 1);
              operator delete(*(&v128 + 1));
            }

            v61 = 0;
            v57 = v57 + v70 + v71;
            ++v60;
            v58 = v64;
          }

          if (self->_list)
          {
            v72 = self->_computedColumns;
          }

          else
          {
            v72 = 1;
          }

          v73 = v72 + v61;
          if (v63 >= v61)
          {
            v74 = 1;
          }

          else
          {
            v72 = 0;
            v74 = 0;
          }

          if (v63 >= v61)
          {
            v75 = v61;
          }

          else
          {
            v75 = 0;
          }

          if (v63 >= v61)
          {
            v61 = v73;
          }

          *v64 = v75;
          v64[1] = 0;
          v64[2] = v72;
          v64[3] = v74;
          v64 += 12;
        }

        while (v64 != v59);
        if (v58 != v64)
        {
          if (v60 >= 1)
          {
            sub_62474(&self->_cellDividers, &self->_columnSystem, v58, v64, v46, v57);
          }

          *&v125.width = v58;
          *&v125.height = v64;
          *&v126 = v46;
          *(&v126 + 1) = v57;
          v129 = 0.0;
          v130 = 0.0;
          *(&v128 + 1) = 0;
          LODWORD(v127) = v119;
          v76 = v135;
          v77 = 1;
          while (v76 != v136)
          {
            for (j = *v76; j != v76[1]; j += 96)
            {
              v79 = *(j + 48);
              if ((*(j + 56) - v79) >> 6 > v77)
              {
                v77 = (*(j + 56) - v79) >> 6;
              }
            }

            v76 += 11;
          }

          sub_62580(&v125, &self->_columnSystem, &v135, v77);
          v81 = v80;
          v82 = self->_computedRowSpacing;
          if (*(&v128 + 1))
          {
            v129 = *(&v128 + 1);
            operator delete(*(&v128 + 1));
          }

          v57 = v57 + v81 + v82;
          ++v60;
        }
      }

      v83 = *v48;
      v84 = v48[1];
      while (v83 != v84)
      {
        if ((*(v83 + 40) & 1) == 0)
        {
          v86 = *(v83 + 48);
          v85 = *(v83 + 56);
          if (v86 == v85)
          {
            origin = CGRectNull.origin;
            size = CGRectNull.size;
          }

          else
          {
            origin = v86[2];
            size = vsubq_f64(vaddq_f64(v85[-2], v85[-1]), origin);
          }

          v89 = origin;
          origin.x = size.height;
          v120 = size;
          y = origin.y;
          if (!CGRectIsNull(*(&size - 1)))
          {
            v91 = *(v83 + 32);
            end = self->_cellBounds.__end_;
            cap = self->_cellBounds.__cap_;
            if (end >= cap)
            {
              v95 = 0xCCCCCCCCCCCCCCCDLL * ((end - p_cellBounds->__begin_) >> 3);
              v96 = v95 + 1;
              if (v95 + 1 > 0x666666666666666)
              {
                sub_4050();
              }

              v97 = 0xCCCCCCCCCCCCCCCDLL * ((cap - p_cellBounds->__begin_) >> 3);
              if (2 * v97 > v96)
              {
                v96 = 2 * v97;
              }

              if (v97 >= 0x333333333333333)
              {
                v98 = 0x666666666666666;
              }

              else
              {
                v98 = v96;
              }

              *&v127 = &self->_cellBounds;
              if (v98)
              {
                sub_68FF4(p_cellBounds, v98);
              }

              v99 = 40 * v95;
              v125.width = 0.0;
              *&v125.height = v99;
              *(&v126 + 1) = 0;
              *v99 = v91;
              *(v99 + 8) = v89;
              *(v99 + 24) = v120;
              *&v126 = 40 * v95 + 40;
              sub_68F2C(p_cellBounds, &v125);
              v94 = self->_cellBounds.__end_;
              sub_6904C(&v125);
            }

            else
            {
              *end = v91;
              *(end + 8) = v89;
              v94 = end + 40;
              *(end + 24) = v120;
            }

            self->_cellBounds.__end_ = v94;
          }
        }

        v83 += 96;
      }

      if (v60 > 0)
      {
        v57 = v57 - self->_computedRowSpacing;
      }

      *&v123.width = &v135;
      v123.height = v117;
      v124 = v116;
      sub_690A0(&v123);
      *&v121 = &v135;
      *(&v121 + 1) = *&v117 + 1;
      v122 = v116;
      sub_690A0(&v121);
      v125 = v123;
      v126 = v124;
      v127 = v121;
      v128 = v122;
      v129 = v46;
      v130 = v57;
      v131 = 0;
      v133 = 0;
      v134 = 0;
      __p = 0;
      v45 = sub_62984(&v125, &self->_columnSystem, &v135, 0);
      v101 = v100;
      if (__p)
      {
        v133 = __p;
        operator delete(__p);
      }

      v8 = v57 + v101;
      v48 += 11;
      ++*&v117;
      if (v48 == v115)
      {
        v48 = v135;
        v47 = v136;
        break;
      }
    }
  }

  while (v48 != v47)
  {
    v103 = *v48;
    v102 = v48[1];
    while (v103 != v102)
    {
      if (*(v103 + 16))
      {
        v104 = *(v103 + 24) == 0;
      }

      else
      {
        v104 = 1;
      }

      v105 = v104;
      sub_62E70(v103, v105);
      v103 += 96;
    }

    v107 = v48[3];
    v106 = v48[4];
    while (v107 != v106)
    {
      if (*(v107 + 16))
      {
        v108 = *(v107 + 24) == 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = v108;
      sub_61AFC(v107, v109);
      v107 += 96;
    }

    v48 += 11;
  }

  [(TUISmartGridLayoutConfiguration *)self->_configuration height];
  v111 = v110;
  [(TUISmartGridLayoutConfiguration *)self->_configuration specifiedHeight];
  if ((v112 & 0x6000000000000) == 0x2000000000000)
  {
    v113 = v12 + v8;
  }

  else
  {
    v113 = v111;
  }

  self->_contentLayoutSize.width = v6;
  self->_contentLayoutSize.height = v12 + v8;
  self->_layoutSize.width = v6;
  self->_layoutSize.height = v113;
  if (v144)
  {
    v145 = v144;
    operator delete(v144);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  *&v125.width = v137;
  sub_63A20(&v125);
  *&v125.width = &v135;
  sub_63C64(&v125);
}

- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root
{
  setCopy = set;
  layoutCopy = layout;
  rootCopy = root;
  if ([setCopy axis] == &dword_0 + 2)
  {
    width = self->_contentLayoutSize.width;
    v15 = 0;
    if (layoutCopy)
    {
      [layoutCopy computedTransformInAncestorLayout:{rootCopy, 0}];
    }

    begin = self->_scrollAnchors.__begin_;
    end = self->_scrollAnchors.__end_;
    if (begin != end)
    {
      v14 = width * 0.5;
      do
      {
        [setCopy appendScrollAnchor:{*begin++ * 0.0 + 0.0 * v14 + 0.0, v15}];
      }

      while (begin != end);
    }
  }
}

- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models
{
  contextCopy = context;
  boxCopy = box;
  modelsCopy = models;
  v15 = *&transform->c;
  v21 = *&transform->a;
  v22 = v15;
  v23 = *&transform->tx;
  sub_6320C(&self->_cellDividers, kind, &v21, contextCopy, modelsCopy);
  if (kind >= 4 && [contextCopy debugVisualLayout])
  {
    width = self->_contentLayoutSize.width;
    height = self->_contentLayoutSize.height;
    identifier = [boxCopy identifier];
    v19 = *&transform->c;
    v21 = *&transform->a;
    v22 = v19;
    v23 = *&transform->tx;
    height = [TUISmartGridDebugRenderModel renderModelWithSize:&self->_columnSystem columnSystem:identifier identifier:&v21 transform:width, height];

    [modelsCopy addObject:height];
  }
}

- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform
{
  regionsCopy = regions;
  begin = self->_cellBounds.__begin_;
  for (i = self->_cellBounds.__end_; begin != i; begin += 5)
  {
    v9 = *begin;
    v10 = begin[1];
    v11 = begin[2];
    v12 = begin[3];
    v13 = begin[4];
    v14 = v9;
    v15 = *&transform->c;
    *&v27.a = *&transform->a;
    *&v27.c = v15;
    *&v27.tx = *&transform->tx;
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
    identifier = [v14 identifier];
    v25 = [(TUIHoverIdentifier *)v23 initWithName:@"cell" identifier:identifier];

    height = [[TUIHoverRegion alloc] initWithBounds:x, y, width, height];
    [regionsCopy setObject:height forKeyedSubscript:v25];
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