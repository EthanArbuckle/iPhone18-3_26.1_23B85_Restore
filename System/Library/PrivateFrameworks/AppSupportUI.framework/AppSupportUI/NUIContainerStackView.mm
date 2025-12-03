@interface NUIContainerStackView
+ (id)containerStackViewWithAxis:(int64_t)axis arrangedSubviews:(id)subviews;
- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)subview;
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (NUIContainerStackView)initWithArrangedSubviews:(id)subviews;
- (NUIContainerStackView)initWithFrame:(CGRect)frame;
- (_BYTE)_baselineViewVendForFirstBaseline:(_BYTE *)baseline;
- (_DWORD)_effectiveAlignmentForArrangedSubview:(_DWORD *)result;
- (double)_calculateArrangedSizeFittingSize:(CGFloat)size forLayout:(CGFloat)layout;
- (double)customSpacingAfterView:(id)view;
- (id).cxx_construct;
- (id)arrangedDebugDescription;
- (id)calculateViewForFirstBaselineLayout;
- (id)calculateViewForLastBaselineLayout;
- (id)debugDictionary;
- (void)dealloc;
- (void)didRemoveArrangedSubview:(id)subview atIndex:(int64_t)index;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
- (void)populateGridArrangementCells:(void *)cells;
- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis;
- (void)setAlignment:(int64_t)alignment;
- (void)setAxis:(int64_t)axis;
- (void)setBaselineRelativeArrangement:(BOOL)arrangement;
- (void)setCustomSpacing:(double)spacing afterView:(id)view;
- (void)setDistribution:(int64_t)distribution;
- (void)setSpacing:(double)spacing;
- (void)setSpacing:(double)spacing afterArrangedSubviewAtIndex:(int64_t)index;
@end

@implementation NUIContainerStackView

- (id).cxx_construct
{
  _NUIGridArrangement::_NUIGridArrangement(&self->_arrangement);
  self->_customSpacings.__tree_.__size_ = 0;
  self->_customSpacings.__tree_.__end_node_.__left_ = 0;
  self->_customSpacings.__tree_.__begin_node_ = &self->_customSpacings.__tree_.__end_node_;
  return self;
}

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, -1);
  v3.receiver = self;
  v3.super_class = NUIContainerStackView;
  [(NUIContainerView *)&v3 dealloc];
}

- (id)calculateViewForLastBaselineLayout
{
  result = [(NUIContainerStackView *)self _baselineViewVendForFirstBaseline:?];
  if (!result)
  {
    return self;
  }

  return result;
}

- (id)calculateViewForFirstBaselineLayout
{
  result = [(NUIContainerStackView *)self _baselineViewVendForFirstBaseline:?];
  if (!result)
  {
    return self;
  }

  return result;
}

+ (id)containerStackViewWithAxis:(int64_t)axis arrangedSubviews:(id)subviews
{
  v5 = [[self alloc] initWithArrangedSubviews:subviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__NUIContainerStackView_containerStackViewWithAxis_arrangedSubviews___block_invoke;
  v7[3] = &unk_2783296A8;
  v7[4] = v5;
  v7[5] = axis;
  [v5 performBatchUpdates:v7];
  return v5;
}

uint64_t __69__NUIContainerStackView_containerStackViewWithAxis_arrangedSubviews___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBaselineRelativeArrangement:1];
  [*(a1 + 32) setSpacing:-1.79769313e308];
  [*(a1 + 32) setAxis:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = 2 * (*(a1 + 40) == 0);

  return [v2 setAlignment:v3];
}

- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)subview
{
  v8.receiver = self;
  v8.super_class = NUIContainerStackView;
  if ([(NUIContainerView *)&v8 needsBaselineDebugBoundingBoxesForArrangedSubview:?])
  {
    return 1;
  }

  stackViewFlags = self->_stackViewFlags;
  if ((*&stackViewFlags & 0xF0000) != 0)
  {
    return (*&stackViewFlags & 0xF0000) == 0x10000 && [(NUIContainerView *)self isBaselineRelativeArrangement];
  }

  v7 = [(NUIContainerStackView *)self _effectiveAlignmentForArrangedSubview:subview];
  result = 1;
  if (v7 != 2 && v7 != 5)
  {
    stackViewFlags = self->_stackViewFlags;
    return (*&stackViewFlags & 0xF0000) == 0x10000 && [(NUIContainerView *)self isBaselineRelativeArrangement];
  }

  return result;
}

- (NUIContainerStackView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NUIContainerStackView;
  result = [(NUIContainerView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_arrangement.container = result;
  }

  return result;
}

- (NUIContainerStackView)initWithArrangedSubviews:(id)subviews
{
  v4.receiver = self;
  v4.super_class = NUIContainerStackView;
  result = [(NUIContainerView *)&v4 initWithArrangedSubviews:subviews];
  if (result)
  {
    result->_arrangement.container = result;
  }

  return result;
}

- (void)setBaselineRelativeArrangement:(BOOL)arrangement
{
  v5.receiver = self;
  v5.super_class = NUIContainerStackView;
  [(NUIContainerView *)&v5 setBaselineRelativeArrangement:?];
  self->_arrangement.baselineRelative = arrangement;
}

- (void)setAxis:(int64_t)axis
{
  [NUIContainerView _assertNotInLayoutPass:?];
  stackViewFlags = self->_stackViewFlags;
  if ((*&stackViewFlags << 12) >> 28 != axis)
  {
    self->_stackViewFlags = (*&stackViewFlags & 0xFFF0FFFF | ((axis & 0xF) << 16));

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)setDistribution:(int64_t)distribution
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (distribution == -1)
  {
    distributionCopy = 0;
  }

  else
  {
    distributionCopy = distribution;
  }

  stackViewFlags = self->_stackViewFlags;
  v7 = *&stackViewFlags >> 8;
  if (distributionCopy != v7)
  {
    if (v7 == 1 || distributionCopy == 1)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v10 = distributionCopy << 8;
    self->_stackViewFlags = (*&stackViewFlags & 0xFFFF00FF | (distributionCopy << 8));
    LOWORD(distributionCopy) = distributionCopy;
    if ((*&stackViewFlags & 0xF0000) != 0)
    {
      v11 = 255;
    }

    else
    {
      v11 = -256;
    }

    if ((*&stackViewFlags & 0xF0000) != 0)
    {
      LOWORD(distributionCopy) = v10;
    }

    *(&self->_arrangement + 4) = *(&self->_arrangement + 4) & v11 | distributionCopy;

    [(NUIContainerView *)self setNeedsInvalidation:v9];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (alignment == -1)
  {
    alignmentCopy = 0;
  }

  else
  {
    alignmentCopy = alignment;
  }

  stackViewFlags = self->_stackViewFlags;
  if (alignmentCopy != stackViewFlags)
  {
    self->_stackViewFlags = (*&stackViewFlags & 0xFFFFFF00 | alignmentCopy);

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)setSpacing:(double)spacing
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_spacing != spacing)
  {
    self->_spacing = spacing;

    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (double)customSpacingAfterView:(id)view
{
  left = self->_customSpacings.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_customSpacings.__tree_.__end_node_;
    do
    {
      v5 = *(left + 4);
      v6 = v5 >= view;
      v7 = v5 < view;
      if (v6)
      {
        p_end_node = left;
      }

      left = *(left + v7);
    }

    while (left);
    v8 = &NUIContainerViewLengthUseDefault;
    if (p_end_node != &self->_customSpacings.__tree_.__end_node_)
    {
      swiftAnimationInfo = p_end_node->super.super._swiftAnimationInfo;
      p_traitChangeRegistry = &p_end_node->super.super._traitChangeRegistry;
      if (swiftAnimationInfo <= view)
      {
        v8 = p_traitChangeRegistry;
      }
    }
  }

  else
  {
    v8 = &NUIContainerViewLengthUseDefault;
  }

  return *v8;
}

- (void)setCustomSpacing:(double)spacing afterView:(id)view
{
  v6[0] = view;
  if (NUIContainerViewLengthIsDefault(spacing))
  {
    std::__tree<UIView *>::__erase_unique<UIView *>(&self->_customSpacings, v6);
  }

  else
  {
    v6[2] = v6;
    *(std::__tree<std::__value_type<UIView *,double>,std::__map_value_compare<UIView *,std::__value_type<UIView *,double>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,double>>>::__emplace_unique_key_args<UIView *,std::piecewise_construct_t const&,std::tuple<UIView * const&>,std::tuple<>>(&self->_customSpacings, v6) + 5) = spacing;
  }

  [(NUIContainerView *)self setNeedsInvalidation:2];
}

- (void)setSpacing:(double)spacing afterArrangedSubviewAtIndex:(int64_t)index
{
  v6 = [(NSArray *)[(NUIContainerView *)self arrangedSubviews] objectAtIndex:index];

  [(NUIContainerStackView *)self setCustomSpacing:v6 afterView:spacing];
}

- (void)didRemoveArrangedSubview:(id)subview atIndex:(int64_t)index
{
  subviewCopy = subview;
  std::__tree<UIView *>::__erase_unique<UIView *>(&self->_customSpacings, &subviewCopy);
  v7.receiver = self;
  v7.super_class = NUIContainerStackView;
  [(NUIContainerView *)&v7 didRemoveArrangedSubview:subview atIndex:index];
}

- (void)populateGridArrangementCells:(void *)cells
{
  v32 = *MEMORY[0x277D85DE8];
  visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
  v6 = visibleArrangedSubviews;
  stackViewFlags = self->_stackViewFlags;
  v9 = *&stackViewFlags & 0xF0000;
  v8 = (*&stackViewFlags & 0xF0000) == 0;
  v10 = *(&stackViewFlags + 1);
  if (!v8)
  {
    v10 = 0;
  }

  *(&self->_arrangement + 8) = v10;
  if (v9)
  {
    v11 = *(&self->_stackViewFlags + 1) << 8;
  }

  else
  {
    v11 = 0;
  }

  *(&self->_arrangement + 4) = v11 | v10;
  *(cells + 1) = *cells;
  v29 = xmmword_21D0BFB40;
  v30 = xmmword_21D0BFB40;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v28 = 0;
        v28 = *(*(&v24 + 1) + 8 * i);
        v15 = [(NUIContainerStackView *)self _effectiveAlignmentForArrangedSubview:v28];
        v23 = v15;
        if (v9)
        {
          v22 = 0;
          v16 = *(cells + 1);
          if (v16 >= *(cells + 2))
          {
            v18 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView *&,_NSRange &,_NSRange &,NUIContainerAlignment &,NUIContainerAlignment>(cells, &v28, &v30, &v29, &v23, &v22);
          }

          else
          {
            v17 = _NUIGridArrangementCell::_NUIGridArrangementCell(*(cells + 1), v28, v30, *(&v30 + 1), v29, *(&v29 + 1), v15, 0).n128_u64[0];
            v18 = v16 + 112;
            *(cells + 1) = v16 + 112;
          }

          *(cells + 1) = v18;
          *&v29 = v29 + 1;
        }

        else
        {
          v22 = 0;
          v19 = *(cells + 1);
          if (v19 >= *(cells + 2))
          {
            v20 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView *&,_NSRange &,_NSRange &,NUIContainerAlignment,NUIContainerAlignment&>(cells, &v28, &v30, &v29, &v22, &v23);
          }

          else
          {
            v17 = _NUIGridArrangementCell::_NUIGridArrangementCell(*(cells + 1), v28, v30, *(&v30 + 1), v29, *(&v29 + 1), 0, v15).n128_u64[0];
            v20 = v19 + 112;
            *(cells + 1) = v19 + 112;
          }

          *(cells + 1) = v20;
          *&v30 = v30 + 1;
        }
      }

      v12 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v31 count:16, *&v17, v22, v23];
    }

    while (v12);
    v21 = v30 | (v29 << 16);
  }

  else
  {
    v21 = 0;
  }

  self->_visibleCount = v21;
}

- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis
{
  cellsCopy = cells;
  axisCopy = axis;
  v108[16] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  arrangedSubviews = [(NUIContainerView *)self arrangedSubviews];
  v7 = [(NSArray *)arrangedSubviews count];
  [(NSArray *)arrangedSubviews count];
  MEMORY[0x28223BE20](v8);
  v10 = &v88 - v9;
  bzero(&v88 - v9, v11);
  v106 = v7;
  v107 = v10;
  bzero(v10, (8 * v7 + 504) >> 6);
  v96 = arrangedSubviews;
  v12 = [(NSArray *)arrangedSubviews count];
  [(NSArray *)v96 count];
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - ((v14 + 15) & 0x7FFFFFFFFFFFFF0);
  bzero(v15, v14);
  v104 = v12;
  v105 = v15;
  bzero(v15, (8 * v12 + 504) >> 6);
  if ((*&selfCopy->_stackViewFlags << 12) >> 28 == axisCopy)
  {
    v95 = [(NSArray *)v96 count];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    visibleArrangedSubviews = [(NUIContainerView *)selfCopy visibleArrangedSubviews];
    v16 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (v16)
    {
      v17 = 0;
      v94 = *v101;
      p_responderFlags = &selfCopy->super.super.super._responderFlags;
      v91 = &selfCopy->super.super.super._responderFlags;
      do
      {
        v19 = 0;
        do
        {
          if (*v101 != v94)
          {
            objc_enumerationMutation(visibleArrangedSubviews);
          }

          v20 = *(*(&v100 + 1) + 8 * v19);
          v21 = [(NSArray *)v96 indexOfObject:v20 inRange:v17, v95 - v17];
          v23 = *(dimension + 1);
          v22 = *(dimension + 2);
          if (v23 >= v22)
          {
            v25 = 0x6DB6DB6DB6DB6DB7 * ((v23 - *dimension) >> 3) + 1;
            if (v25 > 0x492492492492492)
            {
              goto LABEL_95;
            }

            v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - *dimension) >> 3);
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x249249249249249)
            {
              v27 = 0x492492492492492;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(dimension, v27);
            }

            _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v23 - *dimension) >> 3)), v21, 1.79769313e308);
            v24 = v28 + 56;
            v29 = *(dimension + 1) - *dimension;
            v30 = v28 - v29;
            memcpy((v28 - v29), *dimension, v29);
            v31 = *dimension;
            *dimension = v30;
            *(dimension + 1) = v24;
            *(dimension + 2) = 0;
            if (v31)
            {
              operator delete(v31);
            }

            p_responderFlags = v91;
          }

          else
          {
            _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(dimension + 1), v21, 1.79769313e308);
            v24 = v23 + 56;
            *(dimension + 1) = v23 + 56;
          }

          *(dimension + 1) = v24;
          v32 = *&p_responderFlags[166];
          if (!v32)
          {
            goto LABEL_28;
          }

          v33 = &p_responderFlags[166];
          do
          {
            v34 = *(v32 + 32);
            v35 = v34 >= v20;
            v36 = v34 < v20;
            if (v35)
            {
              v33 = v32;
            }

            v32 = *(v32 + 8 * v36);
          }

          while (v32);
          if (v33 != &p_responderFlags[166] && v20 >= *(v33 + 4))
          {
            p_spacing = (v33 + 40);
          }

          else
          {
LABEL_28:
            p_spacing = &selfCopy->_spacing;
          }

          v38 = *p_spacing;
          *(v24 - 56) = *p_spacing;
          if (NUIContainerViewLengthIsSystem(0, v38))
          {
            *&v107[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          }

          v17 = v21 + 1;
          ++v19;
        }

        while (v19 != v16);
        v39 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v100 objects:v108 count:16];
        v16 = v39;
      }

      while (v39);
      v10 = v107;
    }

    v40 = 0x6DB6DB6DB6DB6DB7 * ((*(dimension + 1) - *dimension) >> 3) - 1;
    *(*dimension + 56 * v40) = 0;
    *&v10[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v40);
    v41 = *cellsCopy;
    v42 = cellsCopy[1];
    if (*cellsCopy != v42)
    {
      v43 = &selfCopy->super.super.super.super.isa + 2;
      do
      {
        v44 = *v41;
        if (axisCopy)
        {
          v45 = v41[9];
          v46 = v41[10];
          [(NUIContainerView *)selfCopy minimumSpacingAdjacentToView:v44];
          v49 = v48;
          if (v45)
          {
            v50 = v47;
            if (!NUIContainerViewLengthIsDefault(v47))
            {
              if (NUIContainerViewLengthIsSystem(0, v50))
              {
                v51 = 1 << (v45 - 1);
                v52 = ((v45 - 1) >> 3) & 0x1FF8;
                *&v105[v52] |= v51;
                *&v10[v52] &= ~v51;
              }

              else
              {
                v60 = *(*dimension + 56 * (v45 - 1));
                if (v60 <= v50)
                {
                  v60 = v50;
                }

                *(*dimension + 56 * (v45 - 1)) = v60;
              }
            }
          }

          v61 = v46 + v45;
          if (v61 >= *(v43 + 328) || NUIContainerViewLengthIsDefault(v49))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v53 = v41[7];
          v54 = v41[8];
          [(NUIContainerView *)selfCopy minimumSpacingAdjacentToView:v44];
          v49 = v56;
          if (v53)
          {
            v57 = v55;
            if (!NUIContainerViewLengthIsDefault(v55))
            {
              if (NUIContainerViewLengthIsSystem(0, v57))
              {
                v58 = 1 << (v53 - 1);
                v59 = ((v53 - 1) >> 3) & 0x1FF8;
                *&v105[v59] |= v58;
                *&v10[v59] &= ~v58;
              }

              else
              {
                v62 = *(*dimension + 56 * (v53 - 1));
                if (v62 <= v57)
                {
                  v62 = v57;
                }

                *(*dimension + 56 * (v53 - 1)) = v62;
              }
            }
          }

          v61 = v54 + v53;
          if (v61 >= selfCopy->_visibleCount.width || NUIContainerViewLengthIsDefault(v49))
          {
            goto LABEL_63;
          }
        }

        if (NUIContainerViewLengthIsSystem(0, v49))
        {
          v63 = 1 << (v61 - 1);
          v64 = ((v61 - 1) >> 3) & 0x1FF8;
          *&v105[v64] |= v63;
          *&v10[v64] &= ~v63;
        }

        else
        {
          v65 = *(*dimension + 56 * (v61 - 1));
          if (v65 <= v49)
          {
            v65 = v49;
          }

          *(*dimension + 56 * (v61 - 1)) = v65;
        }

LABEL_63:
        v41 += 14;
      }

      while (v41 != v42);
    }

    isBaselineRelativeArrangement = [(NUIContainerView *)selfCopy isBaselineRelativeArrangement];
    nui::stack_bitset::begin(&v106);
    v68 = v67;
    v98 = &v106;
    v99 = v67;
    v69 = v106;
    if (v67 != v106)
    {
      v70 = *MEMORY[0x277CBE658];
      do
      {
        if (v68 < 0x6DB6DB6DB6DB6DB7 * ((cellsCopy[1] - *cellsCopy) >> 4) - 1)
        {
          v97 = 0.0;
          if (!NUIContainerViewLengthIsSystem(&v97, *(*dimension + 56 * v68)))
          {
            [MEMORY[0x277CBEAD8] raise:v70 format:@"Invalid system spacing"];
          }

          [(*cellsCopy)[14 * v68] systemSpacingToAdjecentSiblingView:(*cellsCopy)[14 * v68 + 14] axis:axisCopy baselineRelative:isBaselineRelativeArrangement multiplier:v97];
          *(*dimension + 56 * v68) = v71;
        }

        nui::stack_bitset::iterator::operator++(&v98);
        v68 = v99;
      }

      while (v99 != v69 || v98 != &v106);
    }

    nui::stack_bitset::begin(&v104);
    v73 = v72;
    v98 = &v104;
    v99 = v72;
    v74 = v104;
    if (v72 != v104)
    {
      v75 = *MEMORY[0x277CBE658];
      do
      {
        v97 = 0.0;
        if (!NUIContainerViewLengthIsSystem(&v97, *(*dimension + 56 * v73)))
        {
          [MEMORY[0x277CBEAD8] raise:v75 format:@"Invalid system spacing"];
        }

        [(*cellsCopy)[14 * v73] systemSpacingToAdjecentSiblingView:(*cellsCopy)[14 * v73 + 14] axis:axisCopy baselineRelative:isBaselineRelativeArrangement multiplier:v97];
        if (*(*dimension + 56 * v73) > v76)
        {
          v76 = *(*dimension + 56 * v73);
        }

        *(*dimension + 56 * v73) = v76;
        nui::stack_bitset::iterator::operator++(&v98);
        v73 = v99;
      }

      while (v99 != v74 || v98 != &v104);
    }
  }

  else
  {
    v78 = *(dimension + 1);
    v77 = *(dimension + 2);
    if (v78 >= v77)
    {
      v80 = 0x6DB6DB6DB6DB6DB7 * ((v78 - *dimension) >> 3);
      if ((v80 + 1) > 0x492492492492492)
      {
LABEL_95:
        std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
      }

      v81 = 0x6DB6DB6DB6DB6DB7 * ((v77 - *dimension) >> 3);
      v82 = 2 * v81;
      if (2 * v81 <= v80 + 1)
      {
        v82 = v80 + 1;
      }

      if (v81 >= 0x249249249249249)
      {
        v83 = 0x492492492492492;
      }

      else
      {
        v83 = v82;
      }

      if (v83)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(dimension, v83);
      }

      _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v78 - *dimension) >> 3)), 0, 1.79769313e308);
      v79 = v84 + 56;
      v85 = *(dimension + 1) - *dimension;
      v86 = v84 - v85;
      memcpy((v84 - v85), *dimension, v85);
      v87 = *dimension;
      *dimension = v86;
      *(dimension + 1) = v79;
      *(dimension + 2) = 0;
      if (v87)
      {
        operator delete(v87);
      }
    }

    else
    {
      _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(dimension + 1), 0, 1.79769313e308);
      v79 = v78 + 56;
      *(dimension + 1) = v79;
    }

    *(dimension + 1) = v79;
    *(v79 - 56) = 0;
  }
}

- (id)arrangedDebugDescription
{
  v23 = *MEMORY[0x277D85DE8];
  stackViewFlags = self->_stackViewFlags;
  v4 = MEMORY[0x277CCAB68];
  if ((*&stackViewFlags & 0xF0000) != 0)
  {
    v5 = @"Vert";
  }

  else
  {
    v5 = @"Horz";
  }

  v6 = (*&stackViewFlags << 16) >> 24;
  if (NUIStringFromDistribution(NUIContainerDistribution)::onceToken != -1)
  {
    [NUIContainerStackView arrangedDebugDescription];
  }

  v7 = [NUIStringFromDistribution(NUIContainerDistribution)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v6)}];
  if (!v7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v6];
  }

  v21.receiver = self;
  v21.super_class = NUIContainerStackView;
  v8 = [v4 stringWithFormat:@"%@ axis = %@: distribution = %@; alignments = ", v5, v7, -[NUIContainerView arrangedDebugDescription](&v21, sel_arrangedDebugDescription)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
  v10 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(visibleArrangedSubviews);
        }

        v14 = [(NUIContainerStackView *)self _effectiveAlignmentForArrangedSubview:?];
        if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
        {
          [NUIContainerStackView arrangedDebugDescription];
        }

        v15 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v14)}];
        if (!v15)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v14];
        }

        [v8 appendFormat:@"[%@]", v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  return [v8 stringByAppendingString:@";"];
}

- (id)debugDictionary
{
  v11.receiver = self;
  v11.super_class = NUIContainerStackView;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[NUIContainerView debugDictionary](&v11, sel_debugDictionary)}];
  if ([(NUIContainerStackView *)self axis])
  {
    v4 = @"vertical";
  }

  else
  {
    v4 = @"horizontal";
  }

  [v3 setObject:v4 forKeyedSubscript:@"axis"];
  alignment = [(NUIContainerStackView *)self alignment];
  if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
  {
    [NUIContainerStackView arrangedDebugDescription];
  }

  v6 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", alignment)}];
  if (!v6)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", alignment];
  }

  [v3 setObject:v6 forKeyedSubscript:@"alignment"];
  distribution = [(NUIContainerStackView *)self distribution];
  if (NUIStringFromDistribution(NUIContainerDistribution)::onceToken != -1)
  {
    [NUIContainerStackView debugDictionary];
  }

  v8 = [NUIStringFromDistribution(NUIContainerDistribution)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", distribution)}];
  if (!v8)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", distribution];
  }

  [v3 setObject:v8 forKeyedSubscript:@"distribution"];
  v9 = MEMORY[0x277CCABB0];
  [(NUIContainerStackView *)self spacing];
  [v3 setObject:objc_msgSend(v9 forKeyedSubscript:{"numberWithDouble:"), @"spacing"}];
  [v3 setObject:_NUIGridArrangement::debugDictionary(&self->_arrangement) forKeyedSubscript:@"arrangement"];
  return [v3 copy];
}

- (_DWORD)_effectiveAlignmentForArrangedSubview:(_DWORD *)result
{
  if (result)
  {
    v2 = result;
    result = [result alignmentForView:a2 inAxis:(result[172] & 0xF0000) == 0];
    if (result == -1)
    {
      return *(v2 + 688);
    }
  }

  return result;
}

- (_BYTE)_baselineViewVendForFirstBaseline:(_BYTE *)baseline
{
  baselineCopy = baseline;
  if (baseline)
  {
    visibleArrangedSubviews = [baseline visibleArrangedSubviews];
    v12 = visibleArrangedSubviews;
    if ((baselineCopy[690] & 0xF) != 0)
    {
      if (a2)
      {
        baselineCopy = [visibleArrangedSubviews firstObject];
        [baselineCopy effectiveFirstBaselineOffsetFromTop];
      }

      else
      {
        baselineCopy = [visibleArrangedSubviews lastObject];
        [baselineCopy effectiveBaselineOffsetFromBottom];
      }

      if (v13 <= 0.0)
      {
        return 0;
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_21(visibleArrangedSubviews, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0, 0, 0, 0, 0, 0, v38, v40);
      if (!v14)
      {
        return 0;
      }

      v15 = v14;
      baselineCopy = 0;
      v16 = *v32;
      v17 = 0.0;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(v31 + 8 * i);
          if (a2)
          {
            effectiveFirstBaselineOffsetFromTop = [v19 effectiveFirstBaselineOffsetFromTop];
          }

          else
          {
            effectiveFirstBaselineOffsetFromTop = [v19 effectiveBaselineOffsetFromBottom];
          }

          if (v28 > v17)
          {
            v17 = v28;
            baselineCopy = v19;
          }
        }

        v15 = OUTLINED_FUNCTION_21(effectiveFirstBaselineOffsetFromTop, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37, v39, v41);
      }

      while (v15);
    }
  }

  return baselineCopy;
}

- (double)_calculateArrangedSizeFittingSize:(CGFloat)size forLayout:(CGFloat)layout
{
  if (!self)
  {
    return 0.0;
  }

  do
  {
    _NUIGridArrangement::resetForInvalidation((self + 544), 0);
    v11.width = size;
    v11.height = layout;
    _NUIGridArrangement::measureCells((self + 544), a2, v11);
    v9 = v8;
  }

  while (([self mustRestartMeasurement] & 1) != 0);
  return v9;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  v3 = [(NUIContainerStackView *)self _calculateArrangedSizeFittingSize:size.width forLayout:size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NUIContainerStackView *)self _calculateArrangedSizeFittingSize:bounds.size.width forLayout:bounds.size.height];

  _NUIGridArrangement::positionCells(&self->_arrangement, &__block_literal_global_3, x, y, width, height);
}

@end