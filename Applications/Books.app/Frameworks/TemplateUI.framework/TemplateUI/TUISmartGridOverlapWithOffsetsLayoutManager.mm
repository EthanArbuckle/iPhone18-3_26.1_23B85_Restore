@interface TUISmartGridOverlapWithOffsetsLayoutManager
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (CGSize)scrollLayoutSizeWithSize:(CGSize)size;
- (TUISmartGridOverlapWithOffsetsLayoutManager)initWithContent:(id)content;
- (void)layoutContent:(id)content;
@end

@implementation TUISmartGridOverlapWithOffsetsLayoutManager

- (TUISmartGridOverlapWithOffsetsLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridOverlapWithOffsetsLayoutManager;
  v6 = [(TUISmartGridOverlapWithOffsetsLayoutManager *)&v9 init];
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
  [layoutCopy setContainingHeight:NAN];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
}

- (void)layoutContent:(id)content
{
  contentCopy = content;
  computedLayoutDirection = [contentCopy computedLayoutDirection];
  children = [contentCopy children];
  sub_63EE4(&v119, children, self->_content, 0);

  v6 = v119;
  if (v119 == v120)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      v6 += 11;
      v7 -= 0x5555555555555555 * ((v8 - v9) >> 5);
    }

    while (v6 != v120);
  }

  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v115 = v10;
  v12 = v11;
  v14 = v13;
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v16 = v15;
  additionalConfiguration = [(TUISmartGridLayoutConfiguration *)self->_configuration additionalConfiguration];
  v18 = objc_opt_class();
  v19 = [additionalConfiguration objectForKeyedSubscript:@"offsets"];
  v20 = TUIDynamicCast(v18, v19);

  v21 = objc_opt_class();
  widthSnap = [(TUISmartGridLayoutConfiguration *)self->_configuration widthSnap];
  v23 = [widthSnap identifierForValue:v16];
  v24 = TUIDynamicCast(v21, v23);

  if (v24)
  {
    v25 = objc_opt_class();
    v26 = [v20 objectForKeyedSubscript:v24];
    v118 = TUIDynamicCast(v25, v26);
  }

  else
  {
    v118 = 0;
  }

  v27 = objc_opt_class();
  v28 = [additionalConfiguration objectForKeyedSubscript:@"minHOffset"];
  v29 = TUIDynamicCast(v27, v28);

  v30 = objc_opt_class();
  v31 = [additionalConfiguration objectForKeyedSubscript:@"maxHOffset"];
  v32 = TUIDynamicCast(v30, v31);

  columnWidth = [(TUISmartGridLayoutConfiguration *)self->_configuration columnWidth];
  v35 = TUILengthValueWithDefault(columnWidth, v34, 120.0);
  v111 = [v118 count];
  v109 = v32;
  if (v29 && v32)
  {
    [v29 doubleValue];
    v37 = v36;
    [v32 doubleValue];
    v39 = v16 - v12 - v14;
    v40 = v39 - v35;
    v41 = vcvtpd_u64_f64((v39 - v35) / v37);
    if (v7 >= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v7;
    }
  }

  else
  {
    v43 = v111;
    if (v111 >= v7)
    {
      v43 = v7;
    }

    if (v118)
    {
      v42 = v43;
    }

    else
    {
      v42 = v7;
    }

    v39 = v16 - v12 - v14;
    v40 = v39 - v35;
    v38 = 1.79769313e308;
  }

  v116 = v42;
  v44 = (v42 - 1);
  v45 = v40 / v44;
  if (v45 >= v38)
  {
    v46 = v38;
  }

  else
  {
    v46 = v45;
  }

  v47 = v39 - (v35 + v44 * v46);
  v48 = v12 + v47 * 0.5;
  v49 = v16 - v14 - v47 * 0.5;
  if (computedLayoutDirection == &dword_0 + 2)
  {
    v50 = v49;
  }

  else
  {
    v50 = v48;
  }

  v51 = objc_opt_class();
  v52 = [additionalConfiguration objectForKeyedSubscript:@"minVerticalCutoff"];
  v53 = TUIDynamicCast(v51, v52);

  if (v53)
  {
    [v53 doubleValue];
    v55 = v54;
  }

  else
  {
    v55 = 12.0;
  }

  specifiedHeight = [(TUISmartGridLayoutConfiguration *)self->_configuration specifiedHeight];
  v57 = v119;
  v58 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
  v108 = contentCopy;
  v106 = v24;
  v107 = v20;
  selfCopy = self;
  v104 = v16;
  v112 = v59;
  if (v120 == v119)
  {
    v62 = specifiedHeight;
    v60 = 0;
  }

  else
  {
    v60 = 0;
    v61 = v119 + 1;
    while (*v61 == *(v61 - 1))
    {
      ++v60;
      v61 += 11;
      if (v58 == v60)
      {
        v62 = specifiedHeight;
        v63 = 0.0;
        v64 = v116;
        goto LABEL_52;
      }
    }

    v62 = specifiedHeight;
  }

  v63 = 0.0;
  v64 = v116;
  if (v60 != v58)
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = v57[11 * v60];
      v68 = v67 + 96 * v66;
      if (v65 >= v116)
      {
        sub_62E70(v67 + 96 * v66, 1);
      }

      else
      {
        sub_62E70(v67 + 96 * v66, 0);
        sub_673FC(v128, 0, *(v68 + 48), *(v68 + 56), v35);
        *(v68 + 72) = v70;
        *(v68 + 80) = v69;
        if (v63 < v69)
        {
          v63 = v69;
        }
      }

      v57 = v119;
      v71 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
      if (v60 >= v71)
      {
        v66 = 0;
LABEL_49:
        v60 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
      }

      else
      {
        ++v66;
        v72 = &v119[11 * v60 + 1];
        while (v66 >= 0xAAAAAAAAAAAAAAABLL * ((*v72 - *(v72 - 1)) >> 5))
        {
          v66 = 0;
          ++v60;
          v72 += 11;
          if (v71 == v60)
          {
            goto LABEL_49;
          }
        }
      }

      ++v65;
    }

    while (v66 || v60 != v71);
  }

LABEL_52:
  v73 = TUILengthValueWithDefault(v62, v112, v63 - v55 - v115);
  v74 = v73;
  v75 = v119;
  v76 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
  v77 = 0;
  if (v120 != v119)
  {
    v78 = v119 + 1;
    while (*v78 == *(v78 - 1))
    {
      ++v77;
      v78 += 11;
      if (v76 == v77)
      {
        goto LABEL_89;
      }
    }
  }

  if (v77 != v76)
  {
    v79 = 0;
    v80 = 0;
    v110 = v55 + v73;
    v81 = -v46;
    if (computedLayoutDirection != &dword_0 + 2)
    {
      v81 = v46;
    }

    v113 = v81;
    v114 = v53;
    while (v79 != v64)
    {
      v82 = v75[11 * v77] + 96 * v80;
      v83 = *(v82 + 80);
      if (v118)
      {
        v84 = objc_opt_class();
        v111 = [v118 objectAtIndexedSubscript:v79 % v111];
        v86 = TUIDynamicCast(v84, v111);

        [v86 doubleValue];
        v88 = v87;
      }

      else
      {
        v88 = (8 * (17 * v79 % 5));
      }

      if (v74 > v83 + v88 - v55)
      {
        v88 = v110 - v83;
      }

      if (computedLayoutDirection == &dword_0 + 2)
      {
        v89 = v50 - v35;
      }

      else
      {
        v89 = v50;
      }

      v90 = *(v82 + 48);
      v91 = *(v82 + 56);
      if (v90 != v91)
      {
        v92 = v115 + v88;
        v93 = 0.0;
        do
        {
          *(v90 + 32) = v89;
          *(v90 + 40) = v92 + v93;
          v94 = *(v90 + 8);
          v95 = *(v90 + 16);
          while (v94 != v95)
          {
            v96 = *(v94 + 56);
            v97 = __p + 152 * v96;
            v98 = (v97 + 136);
            p_y = (v97 + 144);
            v100 = v96 == -1;
            if (v96 == -1)
            {
              v101 = &CGPointZero;
            }

            else
            {
              v101 = v98;
            }

            if (v100)
            {
              p_y = &CGPointZero.y;
            }

            sub_6850C((v94 + 8), v89 - v101->x + *(v94 + 72), v92 + v93 - *p_y + *(v94 + 64));
            v94 += 96;
          }

          v93 = v93 + *(v90 + 56);
          v90 += 64;
        }

        while (v90 != v91);
      }

      v75 = v119;
      v102 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
      if (v77 >= v102)
      {
        v80 = 0;
        v77 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
        v53 = v114;
        v64 = v116;
      }

      else
      {
        ++v80;
        v103 = &v119[11 * v77 + 1];
        v53 = v114;
        v64 = v116;
        while (v80 >= 0xAAAAAAAAAAAAAAABLL * ((*v103 - *(v103 - 1)) >> 5))
        {
          v80 = 0;
          ++v77;
          v103 += 11;
          if (v102 == v77)
          {
            v77 = 0x2E8BA2E8BA2E8BA3 * (v120 - v119);
            break;
          }
        }
      }

      ++v79;
      v50 = v50 + v113;
      if (!v80 && v77 == v102)
      {
        break;
      }
    }
  }

LABEL_89:
  selfCopy->_contentLayoutSize.width = v104;
  selfCopy->_contentLayoutSize.height = v115 + v74;
  selfCopy->_layoutSize = selfCopy->_contentLayoutSize;

  if (__p)
  {
    v127 = __p;
    operator delete(__p);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v128[0] = &v121;
  sub_63A20(v128);
  v128[0] = &v119;
  sub_63C64(v128);
}

- (CGSize)scrollLayoutSizeWithSize:(CGSize)size
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
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

@end