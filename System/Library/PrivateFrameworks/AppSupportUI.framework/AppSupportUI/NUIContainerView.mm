@interface NUIContainerView
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (BOOL)mustRestartMeasurement;
- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)subview;
- (BOOL)setNeedsInvalidation:(int64_t)invalidation;
- (BOOL)shouldCancelMeasurementForCompressionInAxis:(int64_t)axis;
- (CGPoint)positionAdjustmentOffsetForView:(id)view;
- (CGRect)effectiveLayoutBounds;
- (CGRect)layoutFrameForArrangedSubview:(id)subview withProposedContentFrame:(CGRect)frame;
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)arrangedSubviews;
- (NSArray)visibleArrangedSubviews;
- (NSDirectionalEdgeInsets)minimumSpacingAdjacentToView:(id)view;
- (NUIContainerView)initWithArrangedSubviews:(id)subviews;
- (NUIContainerView)initWithCoder:(id)coder;
- (NUIContainerView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)effectiveLayoutMargins;
- (double)_intrinsicSizeWithinSize:(double)size;
- (id).cxx_construct;
- (id)arrangedDebugDescription;
- (id)calculateViewForFirstBaselineLayout;
- (id)calculateViewForLastBaselineLayout;
- (id)debugDictionary;
- (id)debugDictionaryForVisibleArrangedSubview:(id)subview;
- (id)debugSetDelegateRespondsToSelectors;
- (id)debugSetEnabledFlags;
- (id)description;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (int64_t)alignmentForView:(id)view inAxis:(int64_t)axis;
- (uint64_t)_addAsSubviewIfNeeded:(uint64_t)result;
- (uint64_t)_countHiddenArrangesSubviews;
- (uint64_t)_updateDebugBoundingBoxesIfNeeded;
- (uint64_t)_verifyInternalConsistencyWarningOnly:(uint64_t)result;
- (uint64_t)endBatchUpdates;
- (uint64_t)visibleArrangedSubviews;
- (unint64_t)indexOfArrangedSubview:(id)subview;
- (void)_assertNotInLayoutPass:(uint64_t)pass;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)addArrangedSubview:(id)subview;
- (void)beginBatchUpdates;
- (void)dealloc;
- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index;
- (void)intrinsicContentSizeDidInvalidateForArrangedSubview:(id)subview;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performBatchUpdates:(id)updates;
- (void)removeArrangedSubview:(id)subview;
- (void)replaceArrangedSubviewAtIndex:(unint64_t)index withView:(id)view;
- (void)setAlignment:(int64_t)alignment forView:(id)view inAxis:(int64_t)axis;
- (void)setArrangedSubviews:(id)subviews;
- (void)setBaselineRelativeArrangement:(BOOL)arrangement;
- (void)setBaselineRelativeLayoutMarginsForArrangement:(BOOL)arrangement;
- (void)setDebugBoundingBoxesEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setLayoutMarginsRelativeArrangement:(BOOL)arrangement;
- (void)setMinimumSpacing:(NSDirectionalEdgeInsets)spacing adjacentToView:(id)view;
- (void)setNeedsLayout;
- (void)setPositionAdjustmentOffset:(CGPoint)offset forView:(id)view;
- (void)visibilityDidChangeForArrangedSubview:(id)subview;
- (void)willRemoveSubview:(id)subview;
@end

@implementation NUIContainerView

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    debugBoundingBoxes = [v3 BOOLValue];
    _NUIEnableAPIMisuseAssertions = [v3 intValue] > 1;
  }
}

- (id).cxx_construct
{
  *(self + 55) = 0;
  *(self + 54) = 0;
  *(self + 53) = self + 432;
  *(self + 65) = 0;
  *(self + 66) = 0;
  *(self + 64) = 0;
  return self;
}

- (void)setNeedsLayout
{
  OUTLINED_FUNCTION_9(self);
  v3.receiver = v2;
  v3.super_class = NUIContainerView;
  [(NUIContainerView *)&v3 setNeedsLayout];
}

- (void)beginBatchUpdates
{
  if (self)
  {
    OUTLINED_FUNCTION_18();
    if ((~v4 & 0xF000000) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Cannot nest more than 15 calls to performBatchUpdates:"];
      v3 = *(v2 + 3024);
      v4 = *(v1 + v3);
    }

    v5 = (v4 + 0x1000000) & 0xF000000;
    *(v1 + v3) = v5 | v4 & 0xFFFFFFFFF0FFFFFFLL;
    if (v5 == 0x1000000)
    {
      OUTLINED_FUNCTION_8();
      v6 = *(v1 + 448);
      v15 = OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v6);
            }

            v19 = *(v31 + 8 * i);
            _isContainerView = [v19 _isContainerView];
            if (_isContainerView)
            {
              _isContainerView = [(NUIContainerView *)v19 beginBatchUpdates];
            }
          }

          v16 = OUTLINED_FUNCTION_2_0(_isContainerView, v21, v22, v23, v24, v25, v26, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47);
        }

        while (v16);
      }
    }
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = NUIContainerView;
  [(NUIContainerView *)&v3 layoutMarginsDidChange];
  if ((*(&self->_containerFlags + 5) & 0x18) != 0)
  {
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (NSArray)arrangedSubviews
{
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0xF000000) != 0 && (*&containerFlags & 0x4000000000) == 0)
  {
    self->_containerFlags = (*&containerFlags | 0x4000000000);
    [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
    *&self->_containerFlags &= ~0x4000000000uLL;
  }

  v5 = [(NSMutableArray *)self->_arrangedSubviews copy];

  return v5;
}

- (uint64_t)endBatchUpdates
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 536);
    *(result + 536) = (v2 + 251658240) & 0xF000000 | v2 & 0xFFFFFFFFF0FFFFFFLL;
    if (((v2 + 251658240) & 0xF000000) == 0)
    {
      OUTLINED_FUNCTION_8();
      v3 = v1[56];
      v12 = OUTLINED_FUNCTION_21(v4, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v3);
            }

            v16 = *(v28 + 8 * i);
            _isContainerView = [v16 _isContainerView];
            if (_isContainerView)
            {
              _isContainerView = [(NUIContainerView *)v16 endBatchUpdates];
            }
          }

          v13 = OUTLINED_FUNCTION_21(_isContainerView, v18, v19, v20, v21, v22, v23, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
        }

        while (v13);
      }

      return [v1 setNeedsInvalidation:(v1[67] << 40) >> 56];
    }
  }

  return result;
}

- (NSArray)visibleArrangedSubviews
{
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0xF000000) != 0 && (*&containerFlags & 0x4000000000) == 0)
  {
    self->_containerFlags = (*&containerFlags | 0x4000000000);
    [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
    *&self->_containerFlags &= ~0x4000000000uLL;
    *&containerFlags = self->_containerFlags;
  }

  if (!*&containerFlags)
  {
    p_arrangedSubviews = &self->_arrangedSubviews;
    return *p_arrangedSubviews;
  }

  p_arrangedSubviews = &self->_visibleArrangedSubviews;
  if (!self->_visibleArrangedSubviews)
  {
    v6 = -[NSMutableArray filteredArrayUsingPredicate:](self->_arrangedSubviews, "filteredArrayUsingPredicate:", [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_99]);
    *p_arrangedSubviews = v6;
    if (_NUIEnableAPIMisuseAssertions)
    {
      goto LABEL_14;
    }

    if (qword_280AC30E8 != -1)
    {
      _NUIIsDebuggerAttached_cold_1();
    }

    if (_MergedGlobals == 1)
    {
      v6 = *p_arrangedSubviews;
LABEL_14:
      v7 = [(NSArray *)v6 count];
      if (v7 != [(NSMutableArray *)self->_arrangedSubviews count]- *&self->_containerFlags)
      {
        [NUIContainerView visibleArrangedSubviews];
      }
    }
  }

  return *p_arrangedSubviews;
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  v15 = *MEMORY[0x277D85DE8];
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x2000000000000) != 0)
  {
    return 1;
  }

  if ((*&containerFlags & 0x300000000) == 0)
  {
    self->_containerFlags = (*&containerFlags | 0x100000000);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
    v5 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(visibleArrangedSubviews);
          }

          if ([*(*(&v10 + 1) + 8 * i) isLayoutSizeDependentOnPerpendicularAxis])
          {
            self->_containerFlags = (*&self->_containerFlags & 0xFFFFFFFCFFFFFFFFLL | 0x200000000);
            return (*&self->_containerFlags & 0x300000000) == 0x200000000;
          }
        }

        v6 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  return (*&self->_containerFlags & 0x300000000) == 0x200000000;
}

- (void)layoutSubviews
{
  v22 = *MEMORY[0x277D85DE8];
  delegate = [(NUIContainerView *)self delegate];
  v17.receiver = self;
  v17.super_class = NUIContainerView;
  [(NUIContainerView *)&v17 layoutSubviews];
  self->_isRTL = [(NUIContainerView *)self effectiveUserInterfaceLayoutDirection]== 1;
  containerFlags = self->_containerFlags;
  v5 = ((*&containerFlags >> 28) & 3) << 28;
  v6 = 0x10000000;
  if (((*&containerFlags >> 28) & 3) != 0)
  {
    v6 = ((*&containerFlags >> 28) & 3) << 28;
  }

  v7 = (v6 | *&containerFlags & 0xFFFFFFFFCFFFFFFFLL);
  self->_containerFlags = v7;
  if ((*&containerFlags & 0x1000000000000) != 0)
  {
    [(NUIContainerView *)self bounds];
    [(NUIContainerViewDelegate *)delegate containerView:self willMeasureArrangedSubviewsFittingSize:1 forReason:v8, v9];
    v7 = self->_containerFlags;
  }

  self->_containerFlags = (*&v7 | 0x30000000);
  [(NUIContainerView *)self effectiveLayoutBounds];
  v12 = v11;
  v13 = v10;
  *&self->_containerFlags &= 0xFFFFFFFF3FFFFFFFLL;
  if (v11 <= 0.0 || v10 <= 0.0)
  {
    if (qword_280AC30E8 != -1)
    {
      [NUIContainerView layoutSubviews];
    }

    if (_MergedGlobals == 1)
    {
      if (qword_280AC30F8 != -1)
      {
        [NUIContainerView layoutSubviews];
      }

      v14 = qword_280AC30F0;
      if (os_log_type_enabled(qword_280AC30F0, OS_LOG_TYPE_INFO))
      {
        v23.width = v12;
        v23.height = v13;
        v15 = NSStringFromCGSize(v23);
        *buf = 138412546;
        v19 = v15;
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_21D09E000, v14, OS_LOG_TYPE_INFO, "Skipping layout in size %@ for view: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [(NUIContainerView *)self layoutArrangedSubviewsInBounds:?];
  }

  v16 = self->_containerFlags;
  self->_containerFlags = (*&v16 & 0xFFFFFFFFCFFFFFFFLL | v5);
  if ((*&v16 & 0x4000000000000) != 0)
  {
    [(NUIContainerViewDelegate *)delegate containerViewDidLayoutArrangedSubviews:self];
  }

  [(NUIContainerView *)self _updateDebugBoundingBoxesIfNeeded];
}

- (CGRect)effectiveLayoutBounds
{
  [(NUIContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((*(&self->_containerFlags + 5) & 0x18) != 0)
  {
    [(NUIContainerView *)self effectiveLayoutMargins];
    v4 = v4 + v11;
    v6 = v6 + v12;
    v8 = v8 - (v11 + v13);
    v10 = v10 - (v12 + v14);
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (uint64_t)_updateDebugBoundingBoxesIfNeeded
{
  v56 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = *(result + 512);
    v3 = *(result + 520);
    if (v2 != v3)
    {
      do
      {
        v4 = *v2++;
        result = [v4 removeFromSuperlayer];
      }

      while (v2 != v3);
      v2 = *(v1 + 512);
    }

    *(v1 + 520) = v2;
    if ((*(v1 + 541) & 2) != 0)
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      [objc_msgSend(v1 "layer")];
      [layer setFrame:?];
      v5 = 0.699999988;
      [layer setBorderColor:{objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "purpleColor"), "colorWithAlphaComponent:", 0.699999988), "CGColor")}];
      [layer setBorderWidth:1.0];
      [objc_msgSend(v1 "layer")];
      std::vector<CALayer *>::push_back[abi:nn200100](v1 + 512, &layer);
      if ((*(v1 + 541) & 0x18) != 0)
      {
        [v1 effectiveLayoutBounds];
        [v1 bounds];
        v57.origin.x = OUTLINED_FUNCTION_20();
        if (!CGRectEqualToRect(v57, v58))
        {
          layer2 = [MEMORY[0x277CD9ED0] layer];
          v6 = OUTLINED_FUNCTION_20();
          [v7 setFrame:v6];
          [layer2 setBorderColor:{objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "purpleColor"), "colorWithAlphaComponent:", 0.400000006), "CGColor")}];
          [layer2 setBorderWidth:1.0];
          [objc_msgSend(v1 "layer")];
          std::vector<CALayer *>::push_back[abi:nn200100](v1 + 512, &layer2);
        }
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      subviews = [v1 subviews];
      result = [subviews countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (result)
      {
        v9 = result;
        v10 = *v50;
        v11 = MEMORY[0x277D768C8];
        do
        {
          v12 = 0;
          do
          {
            if (*v50 != v10)
            {
              objc_enumerationMutation(subviews);
            }

            v13 = *(*(&v49 + 1) + 8 * v12);
            if ([objc_msgSend(v1 "visibleArrangedSubviews")] != 0x7FFFFFFFFFFFFFFFLL)
            {
              layer2 = [MEMORY[0x277CD9ED0] layer];
              [v13 frame];
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v47 = v20;
              [layer2 setFrame:?];
              if ([v13 _wantsConstraintBasedLayout])
              {
                redColor = [MEMORY[0x277D75348] redColor];
              }

              else
              {
                redColor = [MEMORY[0x277D75348] orangeColor];
              }

              v22 = redColor;
              v23 = [objc_msgSend(redColor colorWithAlphaComponent:{v5), "CGColor"}];
              [layer2 setBorderColor:v23];
              [layer2 setBorderWidth:1.0];
              layer3 = [v1 layer];
              [layer3 insertSublayer:layer2 above:{objc_msgSend(v13, "layer")}];
              std::vector<CALayer *>::push_back[abi:nn200100](v1 + 512, &layer2);
              [v13 effectiveAlignmentRectInsets];
              v29.f64[0] = v25;
              v29.f64[1] = v26;
              v30.f64[0] = v27;
              v30.f64[1] = v28;
              if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, *v11), vceqq_f64(v30, v11[1])))) & 1) == 0)
              {
                v31 = v15 + v26;
                v32 = v5;
                v33 = v17 + v25;
                v34 = v19 - (v26 + v28);
                v35 = v19;
                v36 = v47 - (v25 + v27);
                layer4 = [MEMORY[0x277CD9ED0] layer];
                v37 = v33;
                v5 = v32;
                v38 = v36;
                v19 = v35;
                [layer4 setFrame:{v31, v37, v34, v38}];
                v39 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75348] "brownColor")];
                [layer4 setBorderColor:v39];
                [layer4 setBorderWidth:1.0];
                layer5 = [v1 layer];
                [layer5 insertSublayer:layer4 below:layer2];
                std::vector<CALayer *>::push_back[abi:nn200100](v1 + 512, &layer4);
              }

              if ([v1 needsBaselineDebugBoundingBoxesForArrangedSubview:v13])
              {
                [v13 effectiveFirstBaselineOffsetFromTop];
                v42 = v41;
                [v13 effectiveBaselineOffsetFromBottom];
                if (v42 != 0.0 || v43 != 0.0)
                {
                  v44 = v47 - (v42 + v43 + -1.0);
                  layer4 = [MEMORY[0x277CD9ED0] layer];
                  [layer4 setFrame:{v15 + 0.0, v17 + v42, v19, v44}];
                  v45 = [objc_msgSend(v22 colorWithAlphaComponent:{0.400000006), "CGColor"}];
                  [layer4 setBorderColor:v45];
                  [layer4 setBorderWidth:1.0];
                  layer6 = [v1 layer];
                  [layer6 insertSublayer:layer4 above:layer2];
                  std::vector<CALayer *>::push_back[abi:nn200100](v1 + 512, &layer4);
                }
              }
            }

            ++v12;
          }

          while (v9 != v12);
          result = [subviews countByEnumeratingWithState:&v49 objects:v55 count:16];
          v9 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (UIEdgeInsets)effectiveLayoutMargins
{
  if ((*(&self->_containerFlags + 5) & 1) == 0)
  {
    [(NUIContainerView *)self layoutMargins];
    v5 = v4;
    v6 = v3;
    v8 = v7;
    v10 = v9;
    if (v3 <= -1048576.0)
    {
      if (v3 == -1.79769313e308)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = (v3 + 1048576.0) * -0.00390625;
      }

      [-[NSArray firstObject](-[NUIContainerView visibleArrangedSubviews](self "visibleArrangedSubviews")];
      v6 = v12;
    }

    if (v10 <= -1048576.0)
    {
      if (v10 == -1.79769313e308)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = (v10 + 1048576.0) * -0.00390625;
      }

      [-[NSArray firstObject](-[NUIContainerView visibleArrangedSubviews](self "visibleArrangedSubviews")];
      v10 = v14;
    }

    if (v5 <= -1048576.0)
    {
      if (v5 == -1.79769313e308)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = (v5 + 1048576.0) * -0.00390625;
      }

      viewForFirstBaselineLayout = [(NUIContainerView *)self viewForFirstBaselineLayout];
      [viewForFirstBaselineLayout systemSpacingToSuperView:self edge:1 baselineRelative:(*&self->_containerFlags >> 42) & 1 multiplier:v16];
      v5 = v17;
      if ((*(&self->_containerFlags + 5) & 4) == 0)
      {
LABEL_21:
        if (v8 <= -1048576.0)
        {
          if (v8 == -1.79769313e308)
          {
            v20 = 1.0;
          }

          else
          {
            v20 = (v8 + 1048576.0) * -0.00390625;
          }

          viewForLastBaselineLayout = [(NUIContainerView *)self viewForLastBaselineLayout];
          [viewForLastBaselineLayout systemSpacingToSuperView:self edge:4 baselineRelative:(*&self->_containerFlags >> 42) & 1 multiplier:v20];
          v8 = v21;
          if ((*(&self->_containerFlags + 5) & 4) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if ((*(&self->_containerFlags + 5) & 0x10) == 0)
          {
LABEL_29:
            self->_effectiveLayoutMargins.top = v5;
            self->_effectiveLayoutMargins.left = v6;
            self->_effectiveLayoutMargins.bottom = v8;
            self->_effectiveLayoutMargins.right = v10;
            *&self->_containerFlags |= 0x10000000000uLL;
            goto LABEL_30;
          }

          viewForLastBaselineLayout = [(NUIContainerView *)self viewForLastBaselineLayout];
        }

        [viewForLastBaselineLayout effectiveBaselineOffsetFromBottom];
        v8 = v8 - v22;
        goto LABEL_29;
      }
    }

    else
    {
      if ((*(&self->_containerFlags + 5) & 0x10) == 0)
      {
        goto LABEL_21;
      }

      viewForFirstBaselineLayout = [(NUIContainerView *)self viewForFirstBaselineLayout];
    }

    [viewForFirstBaselineLayout effectiveFirstBaselineOffsetFromTop];
    v5 = v5 - v18;
    goto LABEL_21;
  }

LABEL_30:
  top = self->_effectiveLayoutMargins.top;
  left = self->_effectiveLayoutMargins.left;
  bottom = self->_effectiveLayoutMargins.bottom;
  right = self->_effectiveLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)mustRestartMeasurement
{
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x200000000000) != 0)
  {
    self->_containerFlags = (*&containerFlags & 0xFFFFDFFFFFFFFFFFLL);
  }

  return (*&containerFlags >> 45) & 1;
}

- (uint64_t)_countHiddenArrangesSubviews
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if ((v4 & 0xF000000) != 0 && (v4 & 0x4000000000) == 0)
  {
    [OUTLINED_FUNCTION_4_0(v3) ensureArrangedSubviewsAreValid];
    OUTLINED_FUNCTION_3_0(*(v2 + 3024));
  }

  OUTLINED_FUNCTION_8();
  v5 = *(v1 + 448);
  v14 = OUTLINED_FUNCTION_2_0(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  LODWORD(v16) = 0;
  v17 = *v33;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v33 != v17)
      {
        objc_enumerationMutation(v5);
      }

      isHidden = [*(v31 + 8 * i) isHidden];
      v16 = (v16 + isHidden);
    }

    v15 = OUTLINED_FUNCTION_2_0(isHidden, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47);
  }

  while (v15);
  return v16;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_delegate, 0);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  arrangedSubviews = self->_arrangedSubviews;
  v4 = [(NSMutableArray *)arrangedSubviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v9 + 1) + 8 * i) removeObserver:self forKeyPath:@"hidden"];
      }

      v5 = [(NSMutableArray *)arrangedSubviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->_arrangedSubviews = 0;
  self->_visibleArrangedSubviews = 0;
  self->_debugBoundingBoxLayers.var0 = self->_debugBoundingBoxLayers.__begin_;
  v8.receiver = self;
  v8.super_class = NUIContainerView;
  [(NUIContainerView *)&v8 dealloc];
}

- (id)viewForLastBaselineLayout
{
  result = self->_lastBaselineView;
  if (!result)
  {
    result = [(NUIContainerView *)self calculateViewForLastBaselineLayout];
    self->_lastBaselineView = result;
  }

  return result;
}

- (id)viewForFirstBaselineLayout
{
  result = self->_firstBaselineView;
  if (!result)
  {
    result = [(NUIContainerView *)self calculateViewForFirstBaselineLayout];
    self->_firstBaselineView = result;
  }

  return result;
}

- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)subview
{
  if ((*(&self->_containerFlags + 5) & 0x10) == 0)
  {
    return 0;
  }

  if ([(NUIContainerView *)self viewForFirstBaselineLayout]== subview)
  {
    return 1;
  }

  return [(NUIContainerView *)self viewForLastBaselineLayout]== subview;
}

- (NUIContainerView)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"-%@ %@ not yet supported.", v8, NSStringFromSelector(a2)}];
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);

  return [(NUIContainerView *)self initWithFrame:v9, v10, v11, v12];
}

- (NUIContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NUIContainerView;
  v3 = [(NUIContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _NUIContainerViewCommonInit(v3);
  }

  return v4;
}

- (NUIContainerView)initWithArrangedSubviews:(id)subviews
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v12.receiver = self;
  v12.super_class = NUIContainerView;
  v8 = [(NUIContainerView *)&v12 initWithFrame:v4, v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    _NUIContainerViewCommonInit(v8);
    if (subviews)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__NUIContainerView_initWithArrangedSubviews___block_invoke;
      v11[3] = &unk_278329528;
      v11[4] = subviews;
      v11[5] = v9;
      [(NUIContainerView *)v9 performBatchUpdates:v11];
    }
  }

  return v9;
}

uint64_t __45__NUIContainerView_initWithArrangedSubviews___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addArrangedSubview:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)setDelegate:(id)delegate
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_delegate != delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);
    v5 = objc_opt_respondsToSelector();
    v6 = 0x400000000000;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }

    self->_containerFlags = (*&self->_containerFlags & 0xFFFFBFFFFFFFFFFFLL | v6);
    v7 = objc_opt_respondsToSelector();
    v8 = 0x800000000000;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_containerFlags = (*&self->_containerFlags & 0xFFFF7FFFFFFFFFFFLL | v8);
    v9 = objc_opt_respondsToSelector();
    v10 = 0x1000000000000;
    if ((v9 & 1) == 0)
    {
      v10 = 0;
    }

    self->_containerFlags = (*&self->_containerFlags & 0xFFFEFFFFFFFFFFFFLL | v10);
    v11 = objc_opt_respondsToSelector();
    v12 = 0x2000000000000;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
    }

    self->_containerFlags = (*&self->_containerFlags & 0xFFFDFFFFFFFFFFFFLL | v12);
    v13 = objc_opt_respondsToSelector();
    v14 = 0x4000000000000;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    self->_containerFlags = (*&self->_containerFlags & 0xFFFBFFFFFFFFFFFFLL | v14);

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

uint64_t __40__NUIContainerView_setArrangedSubviews___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(*(a1 + 40) + 8);
  v8 = a2;
  std::__tree<UIView *>::__erase_unique<UIView *>((v6 + 48), &v8);
  return [*(a1 + 32) insertArrangedSubview:a2 atIndex:a3];
}

- (void)addArrangedSubview:(id)subview
{
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (subview)
    {
      goto LABEL_7;
    }

LABEL_10:
    [NUIContainerView addArrangedSubview:];
    goto LABEL_7;
  }

  if (qword_280AC30E8 == -1)
  {
    if (subview)
    {
      goto LABEL_7;
    }

LABEL_6:
    if ((_MergedGlobals & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  _NUIIsDebuggerAttached_cold_1();
  if (!subview)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = [(NSMutableArray *)self->_arrangedSubviews count];

  [(NUIContainerView *)self insertArrangedSubview:subview atIndex:v5];
}

- (void)willRemoveSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = NUIContainerView;
  [(NUIContainerView *)&v5 willRemoveSubview:?];
  if (self->_arrangedSubviews)
  {
    [(NUIContainerView *)self removeArrangedSubview:subview];
  }
}

- (unint64_t)indexOfArrangedSubview:(id)subview
{
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (subview)
    {
      goto LABEL_7;
    }

LABEL_10:
    [NUIContainerView indexOfArrangedSubview:];
    goto LABEL_7;
  }

  if (qword_280AC30E8 == -1)
  {
    if (subview)
    {
      goto LABEL_7;
    }

LABEL_6:
    if ((_MergedGlobals & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  _NUIIsDebuggerAttached_cold_1();
  if (!subview)
  {
    goto LABEL_6;
  }

LABEL_7:
  arrangedSubviews = self->_arrangedSubviews;

  return [(NSMutableArray *)arrangedSubviews indexOfObject:subview];
}

- (int64_t)alignmentForView:(id)view inAxis:(int64_t)axis
{
  left = self->_arrangedSubviewInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    return -1;
  }

  p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
  do
  {
    v6 = *(left + 4);
    v7 = v6 >= view;
    v8 = v6 < view;
    if (v7)
    {
      p_end_node = left;
    }

    left = *(left + v8);
  }

  while (left);
  if (p_end_node != &self->_arrangedSubviewInfo.__tree_.__end_node_ && p_end_node->super._swiftAnimationInfo <= view)
  {
    return *(&p_end_node->super._viewFlags + axis);
  }

  else
  {
    return -1;
  }
}

- (CGPoint)positionAdjustmentOffsetForView:(id)view
{
  left = self->_arrangedSubviewInfo.__tree_.__end_node_.__left_;
  v4 = MEMORY[0x277CBF348];
  if (left)
  {
    p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
    do
    {
      v6 = *(left + 4);
      v7 = v6 >= view;
      v8 = v6 < view;
      if (v7)
      {
        p_end_node = left;
      }

      left = *(left + v8);
    }

    while (left);
    v9 = (MEMORY[0x277CBF348] + 8);
    if (p_end_node != &self->_arrangedSubviewInfo.__tree_.__end_node_)
    {
      v10 = p_end_node->super._swiftAnimationInfo > view;
      p_traitChangeRegistry = &p_end_node->super._traitChangeRegistry;
      p_layerRetained = &p_end_node->super._layerRetained;
      if (!v10)
      {
        v4 = p_traitChangeRegistry;
        v9 = p_layerRetained;
      }
    }
  }

  else
  {
    v9 = (MEMORY[0x277CBF348] + 8);
  }

  v13 = *v9;
  v14 = *v4;
  result.y = v13;
  result.x = v14;
  return result;
}

- (NSDirectionalEdgeInsets)minimumSpacingAdjacentToView:(id)view
{
  left = self->_arrangedSubviewInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
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
  if (p_end_node != &self->_arrangedSubviewInfo.__tree_.__end_node_ && p_end_node[4].__left_ <= view)
  {
    v8 = *&p_end_node[7].__left_;
    v9 = *&p_end_node[8].__left_;
    v10 = *&p_end_node[9].__left_;
    v11 = *&p_end_node[10].__left_;
  }

  else
  {
LABEL_9:
    v8 = 1.79769313e308;
    v9 = 1.79769313e308;
    v10 = 1.79769313e308;
    v11 = 1.79769313e308;
  }

  result.trailing = v11;
  result.bottom = v10;
  result.leading = v9;
  result.top = v8;
  return result;
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_5;
  }

  if (qword_280AC30E8 != -1)
  {
    _NUIIsDebuggerAttached_cold_1();
  }

  if (_MergedGlobals)
  {
LABEL_5:
    if ((*(&self->_containerFlags + 4) & 0x80) != 0)
    {
      [NUIContainerView effectiveLayoutSizeFittingSize:];
    }
  }

  *&self->_containerFlags |= 0x8000000000uLL;
  v8.receiver = self;
  v8.super_class = NUIContainerView;
  [(UIView *)&v8 effectiveLayoutSizeFittingSize:width, height];
  *&self->_containerFlags &= ~0x8000000000uLL;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ((*(&self->_containerFlags + 4) & 0x80) != 0)
  {
    v3 = [(NUIContainerView *)self _intrinsicSizeWithinSize:fits.height];
  }

  else
  {
    [(NUIContainerView *)self effectiveLayoutSizeFittingSize:fits.width, fits.height];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  if ((*(&self->_containerFlags + 4) & 0x80) != 0)
  {
    v4 = [(NUIContainerView *)self _intrinsicSizeWithinSize:fits.height];
  }

  else
  {
    [(NUIContainerView *)self effectiveLayoutSizeFittingSize:axes, fits.width, fits.height];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v5 = 2;
  if (priority == 1000.0)
  {
    v5 = 3;
  }

  if (fittingPriority == 1000.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = priority == 1000.0;
  }

  [(NUIContainerView *)self _layoutSizeThatFits:v6 fixedAxes:size.width, size.height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:@"hidden"])
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    if (([v11 isEqual:{objc_msgSend(change, "objectForKeyedSubscript:", *MEMORY[0x277CCA2F0])}] & 1) == 0)
    {
      containerFlags = self->_containerFlags;
      if ((*&containerFlags & 0xF000000) != 0 && (*&containerFlags & 0x4000000000) == 0)
      {
        self->_containerFlags = (*&containerFlags | 0x4000000000);
        [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
        *&self->_containerFlags &= ~0x4000000000uLL;
      }

      if ([(NSMutableArray *)self->_arrangedSubviews containsObject:object])
      {

        [(NUIContainerView *)self visibilityDidChangeForArrangedSubview:object];
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NUIContainerView;
    [(NUIContainerView *)&v14 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0xF000000) != 0 && (*&containerFlags & 0x4000000000) == 0)
  {
    self->_containerFlags = (*&containerFlags | 0x4000000000);
    [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
    *&self->_containerFlags &= ~0x4000000000uLL;
  }

  if ([(NSMutableArray *)self->_arrangedSubviews containsObject:view])
  {
    v7 = (*&self->_containerFlags >> 28) & 3;
    if (v7)
    {
      if (v7 == 3)
      {

        [NUIContainerView _assertNotInLayoutPass:?];
      }
    }

    else
    {

      [(NUIContainerView *)self intrinsicContentSizeDidInvalidateForArrangedSubview:view];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NUIContainerView;
    [(UIView *)&v8 _intrinsicContentSizeInvalidatedForChildView:view];
  }
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = NUIContainerView;
  v3 = [(NUIContainerView *)&v11 description];
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
  visibleArrangedSubviews = self->_visibleArrangedSubviews;
  v6 = MEMORY[0x277CCAB68];
  v7 = [(NSMutableArray *)self->_arrangedSubviews count];
  if (visibleArrangedSubviews)
  {
    v8 = [v6 stringWithFormat:@"arrangedSubviews = %lu[%lu];", v7, -[NSArray count](self->_visibleArrangedSubviews, "count")];
  }

  else
  {
    v8 = [v6 stringWithFormat:@"arrangedSubviews = %lu[-];", v7, v10];
  }

  return [v4 stringByAppendingFormat:@" %@>", v8];
}

- (BOOL)shouldCancelMeasurementForCompressionInAxis:(int64_t)axis
{
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x2000000000000) != 0)
  {
    if (!(*&self->_containerFlags & 0xC0000000 | axis) || (LOBYTE(v4) = 0, axis == 1) && (*&containerFlags & 0x80000000) == 0)
    {
      v7 = *&containerFlags >> 28;
      self->_containerFlags = (*&containerFlags & 0xFFFFFFFFCFFFFFFFLL | 0x10000000);
      v4 = [(NUIContainerViewDelegate *)[(NUIContainerView *)self delegate] containerView:self shouldRestartMeasurementDueToCompressionInAxis:axis forReason:((*&containerFlags >> 28) & 3) == 3];
      v8 = self->_containerFlags;
      v9 = *&v8 & 0xFFFFDFFFCFFFFFFFLL | ((v7 & 3) << 28);
      v10 = (v4 | (*&v8 >> 45) & 1) == 0;
      v11 = 0x200000000000;
      if (v10)
      {
        v11 = 0;
      }

      containerFlags = (v11 | v9);
    }

    v12 = *&containerFlags >> 30;
    v13 = 1;
    if (axis)
    {
      v13 = 2;
    }

    if (v12 <= v13)
    {
      v12 = v13;
    }

    self->_containerFlags = (*&containerFlags & 0xFFFFFFFF3FFFFFFFLL | (v12 << 30));
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  [(UIView *)self effectiveFirstBaselineOffsetFromContentTop:size.width];
  v5 = v4;
  [(UIView *)self effectiveBaselineOffsetFromContentBottom];
  v7 = 2.22507386e-308;
  if (self->_firstBaselineView == self)
  {
    v8 = 2.22507386e-308;
  }

  else
  {
    v8 = v5;
  }

  if (self->_lastBaselineView != self)
  {
    v7 = v6;
  }

  v9 = v8;
  result.var1 = v7;
  result.var0 = v9;
  return result;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"-[%@ %@] not implemented.", v7, NSStringFromSelector(a2)}];
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)calculateViewForFirstBaselineLayout
{
  result = [(NSArray *)[(NUIContainerView *)self visibleArrangedSubviews] firstObject];
  if (!result)
  {
    return self;
  }

  return result;
}

- (id)calculateViewForLastBaselineLayout
{
  result = [(NSArray *)[(NUIContainerView *)self visibleArrangedSubviews] lastObject];
  if (!result)
  {
    return self;
  }

  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"-[%@ %@] not implemented.", v7, NSStringFromSelector(a2)}];
}

- (BOOL)setNeedsInvalidation:(int64_t)invalidation
{
  containerFlags = self->_containerFlags;
  v6 = *&containerFlags & 0xF000000;
  if ((*&containerFlags & 0xF000000) != 0)
  {
    self->_containerFlags = (*&containerFlags | (invalidation << 16));
  }

  else
  {
    if (invalidation >= 0)
    {
      invalidationCopy = invalidation;
    }

    else
    {
      invalidationCopy = 15;
    }

    [(NUIContainerView *)self invalidateInternalStateForInvalidation:invalidationCopy];
    v8 = self->_containerFlags;
    self->_containerFlags = (*&v8 & 0xFFFFFFFFFF00FFFFLL);
    if (invalidation)
    {
      if (invalidation == 1)
      {
        [(NUIContainerView *)self setNeedsLayout];
      }

      else
      {
        self->_containerFlags = (*&v8 & 0xFFFFFEFFFF00FFFFLL);
        self->_firstBaselineView = 0;
        self->_lastBaselineView = 0;
        v10.receiver = self;
        v10.super_class = NUIContainerView;
        [(NUIContainerView *)&v10 invalidateIntrinsicContentSize];
        [(NUIContainerView *)self setNeedsLayout];
        if (invalidationCopy >= 4)
        {
          *&self->_containerFlags &= 0xFFFFFFFCFFFFFFFFLL;
        }
      }

      if (qword_280AC30E8 != -1)
      {
        [NUIContainerView layoutSubviews];
      }

      if (_MergedGlobals == 1)
      {
        [(NUIContainerView *)self _verifyInternalConsistencyWarningOnly:?];
      }
    }
  }

  return v6 == 0;
}

- (void)visibilityDidChangeForArrangedSubview:(id)subview
{
  if ([subview isHidden])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  *&self->_containerFlags = *&self->_containerFlags + v4;

  self->_visibleArrangedSubviews = 0;
  [(NUIContainerView *)self setNeedsInvalidation:4];
  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_8;
  }

  if (qword_280AC30E8 != -1)
  {
    _NUIIsDebuggerAttached_cold_1();
  }

  if (_MergedGlobals == 1)
  {
LABEL_8:
    [(NUIContainerView(NUISubclassHelpers) *)&self->_containerFlags visibilityDidChangeForArrangedSubview:?];
  }
}

- (void)intrinsicContentSizeDidInvalidateForArrangedSubview:(id)subview
{
  if (subview && ([subview isHidden] & 1) == 0)
  {

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  if (fabs(size.width) >= 0.001)
  {
    width = size.width;
  }

  else
  {
    width = 3.40282347e38;
  }

  if (fabs(size.height) >= 0.001)
  {
    height = size.height;
  }

  else
  {
    height = 3.40282347e38;
  }

  [subview effectiveAlignmentRectInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v14 + width + v10;
  v17 = v12 + height + v8;
  if ((*(&self->_containerFlags + 5) & 0x40) != 0)
  {
    [(NUIContainerViewDelegate *)[(NUIContainerView *)self delegate] containerView:self systemLayoutSizeFittingSize:subview forArrangedSubview:v16, v17];
  }

  else
  {
    v18 = 1.79769313e308;
    v19 = 1.79769313e308;
  }

  if (v18 == 1.79769313e308 && v19 == 1.79769313e308)
  {
    [subview effectiveLayoutSizeFittingSize:{v16, v17}];
  }

  if (v18 >= v16)
  {
    v18 = v16;
  }

  if (v19 >= v17)
  {
    v19 = v17;
  }

  v21 = v18 - (v11 + v15);
  v22 = v19 - (v9 + v13);
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGRect)layoutFrameForArrangedSubview:(id)subview withProposedContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [subview effectiveAlignmentRectInsets];
  v14.f64[0] = v10;
  v14.f64[1] = v11;
  v15.f64[0] = v12;
  v15.f64[1] = v13;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, *MEMORY[0x277D768C8]), vceqq_f64(v15, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    x = x - v11;
    y = y - v10;
    width = width - (-v13 - v11);
    height = height - (-v12 - v10);
  }

  [(NUIContainerView *)self _currentScreenScale];
  v17 = v16;
  if ((*(&self->_containerFlags + 5) & 0x80) != 0)
  {
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v18 = NUIRectRoundToScale(v54, v17);
    [(NUIContainerViewDelegate *)[(NUIContainerView *)self delegate] containerView:self layoutFrameForArrangedSubview:subview withProposedFrame:v18, v19, v20, v21];
    x = v22;
    y = v23;
    width = v24;
    height = v25;
  }

  left = self->_arrangedSubviewInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_13;
  }

  p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
  do
  {
    v28 = *(left + 4);
    v29 = v28 >= subview;
    v30 = v28 < subview;
    if (v29)
    {
      p_end_node = left;
    }

    left = *(left + v30);
  }

  while (left);
  if (p_end_node != &self->_arrangedSubviewInfo.__tree_.__end_node_ && p_end_node[4].__left_ <= subview)
  {
    x = x + *&p_end_node[5].__left_;
    y = y + *&p_end_node[6].__left_;
  }

  else
  {
LABEL_13:
    if (qword_280AC30F8 != -1)
    {
      _NUILog_cold_1();
    }

    v31 = qword_280AC30F0;
    if (os_log_type_enabled(qword_280AC30F0, OS_LOG_TYPE_ERROR))
    {
      [NUIContainerView(NUISubclassHelpers) layoutFrameForArrangedSubview:subview withProposedContentFrame:v31];
    }
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v32 = NUIRectRoundToScale(v55, v17);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  if (self->_isRTL)
  {
    [(NUIContainerView *)self effectiveLayoutBounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v56.origin.x = v32;
    v56.origin.y = v34;
    v56.size.width = v36;
    v56.size.height = v38;
    MinX = CGRectGetMinX(v56);
    v57.origin.x = v40;
    v57.origin.y = v42;
    v57.size.width = v44;
    v57.size.height = v46;
    v53 = MinX - CGRectGetMinX(v57);
    v58.origin.x = v40;
    v58.origin.y = v42;
    v58.size.width = v44;
    v58.size.height = v46;
    MaxX = CGRectGetMaxX(v58);
    v59.origin.x = v32;
    v59.origin.y = v34;
    v59.size.width = v36;
    v59.size.height = v38;
    v32 = MaxX - (v53 + CGRectGetWidth(v59));
  }

  v48 = v32;
  v49 = v34;
  v50 = v36;
  v51 = v38;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (void)setDebugBoundingBoxesEnabled:(BOOL)enabled
{
  containerFlags = self->_containerFlags;
  if (((((*&containerFlags & 0x20000000000) == 0) ^ enabled) & 1) == 0)
  {
    v4 = 0x20000000000;
    if (!enabled)
    {
      v4 = 0;
    }

    self->_containerFlags = (*&containerFlags & 0xFFFFFDFFFFFFFFFFLL | v4);
    [(NUIContainerView *)self setNeedsLayout];
  }
}

- (id)arrangedDebugDescription
{
  string = [MEMORY[0x277CCAB68] string];
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x180000000000) != 0)
  {
    [(NUIContainerView *)self layoutMargins];
    [string appendFormat:@" layoutMarginsRelative = {%f, %f, %f, %f};", v5, v6, v7, v8];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags & 0x40000000000) != 0)
  {
    [string appendString:@" baselineRelative = YES;"];
  }

  return string;
}

- (id)debugDictionaryForVisibleArrangedSubview:(id)subview
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithObject:subview forKey:@"view"];
  v6 = [(NSArray *)[(NUIContainerView *)self arrangedSubviews] indexOfObject:subview];
  if (v6 != [(NSArray *)[(NUIContainerView *)self visibleArrangedSubviews] indexOfObject:subview])
  {
    [v5 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInteger:", v6), @"index"}];
  }

  debugSizeCacheDict = [subview debugSizeCacheDict];
  if ([debugSizeCacheDict count])
  {
    [v5 setObject:debugSizeCacheDict forKeyedSubscript:@"cachedSizes"];
  }

  v33 = v5;
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0xF000000) != 0 && (*&containerFlags & 0x4000000000) == 0)
  {
    self->_containerFlags = (*&containerFlags | 0x4000000000);
    [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
    *&self->_containerFlags &= ~0x4000000000uLL;
  }

  left = self->_arrangedSubviewInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_19;
  }

  p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
  do
  {
    v12 = *(left + 4);
    v13 = v12 >= subview;
    v14 = v12 < subview;
    if (v13)
    {
      p_end_node = left;
    }

    left = *(left + v14);
  }

  while (left);
  if (p_end_node == &self->_arrangedSubviewInfo.__tree_.__end_node_ || p_end_node->super._swiftAnimationInfo > subview)
  {
LABEL_19:
    p_end_node = &self->_arrangedSubviewInfo.__tree_.__end_node_;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0;
  p_viewFlags = &p_end_node->super._viewFlags;
  v18 = @"horizonral";
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = *(p_viewFlags + v16);
    if (v21 != -1)
    {
      if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
      {
        [NUIContainerView(NUIDebugPrivate) debugDictionaryForVisibleArrangedSubview:];
      }

      v22 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v21)}];
      if (!v22)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v21];
      }

      [dictionary setObject:v22 forKeyedSubscript:v18];
    }

    v19 = 0;
    v18 = @"vertical";
    v16 = 1;
  }

  while ((v20 & 1) != 0);
  if ([dictionary count])
  {
    [v33 setObject:dictionary forKeyedSubscript:@"alignment"];
  }

  [(NUIContainerView *)self minimumSpacingAdjacentToView:subview];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  if (v24 < 1.79769313e308)
  {
    [dictionary2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithFormat:", @"%f", *&v24), @"top"}];
  }

  if (v26 < 1.79769313e308)
  {
    [dictionary2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithFormat:", @"%f", *&v26), @"leading"}];
  }

  if (v28 < 1.79769313e308)
  {
    [dictionary2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithFormat:", @"%f", *&v28), @"bottom"}];
  }

  if (v30 < 1.79769313e308)
  {
    [dictionary2 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKeyedSubscript:{"stringWithFormat:", @"%f", *&v30), @"trailing"}];
  }

  if ([dictionary2 count])
  {
    [v33 setObject:dictionary2 forKeyedSubscript:@"minimumSpacing"];
  }

  return v33;
}

- (id)debugSetDelegateRespondsToSelectors
{
  v3 = [MEMORY[0x277CBEB58] set];
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x400000000000) != 0)
  {
    [v3 addObject:NSStringFromSelector(sel_containerView_systemLayoutSizeFittingSize_forArrangedSubview_)];
    containerFlags = self->_containerFlags;
    if ((*&containerFlags & 0x800000000000) == 0)
    {
LABEL_3:
      if ((*&containerFlags & 0x1000000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&containerFlags & 0x800000000000) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:NSStringFromSelector(sel_containerView_layoutFrameForArrangedSubview_withProposedFrame_)];
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x1000000000000) == 0)
  {
LABEL_4:
    if ((*&containerFlags & 0x2000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v3 addObject:NSStringFromSelector(sel_containerView_shouldRestartMeasurementDueToCompressionInAxis_forReason_)];
    if ((*&self->_containerFlags & 0x4000000000000) == 0)
    {
      return v3;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v3 addObject:NSStringFromSelector(sel_containerView_willMeasureArrangedSubviewsFittingSize_forReason_)];
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x2000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((*&containerFlags & 0x4000000000000) != 0)
  {
LABEL_6:
    [v3 addObject:NSStringFromSelector(sel_containerViewDidLayoutArrangedSubviews_)];
  }

  return v3;
}

- (id)debugSetEnabledFlags
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = v3;
  containerFlags = self->_containerFlags;
  if ((*&containerFlags & 0x20000000000) != 0)
  {
    [v3 addObject:@"debugBoundingBoxes"];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags & 0x40000000000) != 0)
  {
    [v4 addObject:@"baselineRelative"];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags << 40) >= 0x100000000000000)
  {
    [v4 addObject:@"delayedInvalidation"];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags & 0x30000000) != 0)
  {
    [v4 addObject:@"inLayoutPass"];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags & 0xC0000000) != 0)
  {
    [v4 addObject:@"inMeasurementPass"];
    containerFlags = self->_containerFlags;
  }

  if ((*&containerFlags & 0x200000000000) != 0)
  {
    [v4 addObject:@"mustRestartMeasurement"];
  }

  return v4;
}

- (uint64_t)_verifyInternalConsistencyWarningOnly:(uint64_t)result
{
  v18 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x277CCA940] setWithArray:*(result + 448)];
    string = [MEMORY[0x277CCAB68] string];
    v7 = OUTLINED_FUNCTION_22(string, v6);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(8 * i);
          if ([v11 superview] == v3)
          {
            v12 = [v4 countForObject:v11];
            if (v12 >= 2)
            {
              v12 = [string appendFormat:@"View is represented %lu times: %@\n", objc_msgSend(v4, "countForObject:", v11), v11];
            }
          }

          else
          {
            v12 = [string appendFormat:@"View is not a subview: %@\n", v11, v15];
          }
        }

        v8 = OUTLINED_FUNCTION_22(v12, v13);
      }

      while (v8);
    }

    if (![string length])
    {
      return 1;
    }

    if (!a2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@", string}];
      return 0;
    }

    if (qword_280AC30F8 != -1)
    {
      dispatch_once(&qword_280AC30F8, &__block_literal_global_2);
    }

    v14 = qword_280AC30F0;
    result = os_log_type_enabled(qword_280AC30F0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 138412290;
      v17 = string;
      _os_log_error_impl(&dword_21D09E000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

- (void)_assertNotInLayoutPass:(uint64_t)pass
{
  v6 = *MEMORY[0x277D85DE8];
  if (pass)
  {
    if (qword_280AC30E8 != -1)
    {
      dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
    }

    if (_MergedGlobals == 1 && (*(pass + 539) & 0x20) != 0)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ called while in a layout or measurement pass.", objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8], "callStackSymbols"), "objectAtIndex:", 1)];
      if (qword_280AC30F8 != -1)
      {
        dispatch_once(&qword_280AC30F8, &__block_literal_global_2);
      }

      v3 = qword_280AC30F0;
      if (os_log_type_enabled(qword_280AC30F0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v5 = v2;
        _os_log_debug_impl(&dword_21D09E000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)setArrangedSubviews:(id)subviews
{
  v55 = *MEMORY[0x277D85DE8];
  [NUIContainerView _assertNotInLayoutPass:?];
  containerFlags = self->_containerFlags;
  v14 = containerFlags;
  if ((*&containerFlags & 0x1000000000) == 0)
  {
    v14 = *&containerFlags & 0xFFFFFFE3FFFFFFFFLL | 0x800000000;
    self->_containerFlags = v14;
  }

  if ((v14 & 0xF000000) != 0 && (v14 & 0x4000000000) == 0)
  {
    self->_containerFlags = (v14 | 0x4000000000);
    ensureArrangedSubviewsAreValid = [(NUIContainerView *)self ensureArrangedSubviewsAreValid];
    *&self->_containerFlags &= ~0x4000000000uLL;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x4812000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = &unk_21D0C1D49;
  v52 = 0;
  v53 = 0;
  v51 = &v52;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  arrangedSubviews = self->_arrangedSubviews;
  v16 = OUTLINED_FUNCTION_23(ensureArrangedSubviewsAreValid, v6, v7, v8, v9, v10, v11, v12, v33, v34, v35, v36, selfCopy, v38, 0, 0, 0, 0, 0, 0, 0, 0, v43, v44, 0, &v45, 0x4812000000, __Block_byref_object_copy__0, __Block_byref_object_dispose__0, &unk_21D0C1D49, &v52, 0, 0, v54);
  if (v16)
  {
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v44 = 0;
        v44 = *(*(&v39 + 1) + 8 * i);
        v19 = std::__tree<UIView *>::__emplace_unique_key_args<UIView *,UIView *&>((v46 + 6), &v44);
      }

      v16 = OUTLINED_FUNCTION_23(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34, v35, v36, selfCopy, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    }

    while (v16);
  }

  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __40__NUIContainerView_setArrangedSubviews___block_invoke;
  v36 = &unk_278329550;
  selfCopy = self;
  v38 = &v45;
  [subviews enumerateObjectsUsingBlock:&v33];
  v27 = v46[6];
  v28 = v46 + 7;
  if (v27 != v46 + 7)
  {
    do
    {
      [(NUIContainerView *)self removeArrangedSubview:v27[4]];
      v29 = v27[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v27[2];
          v31 = *v30 == v27;
          v27 = v30;
        }

        while (!v31);
      }

      v27 = v30;
    }

    while (v30 != v28);
  }

  v32 = self->_containerFlags;
  if ((*&v32 & 0x1000000000) == 0)
  {
    self->_containerFlags = (*&v32 & 0xFFFFFFE3FFFFFFFFLL | *&containerFlags & 0xC00000000);
  }

  _Block_object_dispose(&v45, 8);
  std::__tree<UIView *>::destroy(&v51, v52);
}

- (void)performBatchUpdates:(id)updates
{
  [(NUIContainerView *)self beginBatchUpdates];
  (*(updates + 2))(updates);

  [(NUIContainerView *)self endBatchUpdates];
}

- (void)removeArrangedSubview:(id)subview
{
  v13 = a2;
  subviewCopy = subview;
  OUTLINED_FUNCTION_9(self);
  v5 = [*(v3 + 448) indexOfObject:subview];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [subview removeObserver:v3 forKeyPath:@"hidden"];
    [*(v3 + 448) removeObjectAtIndex:v6];
    std::__tree<UIView *>::__erase_unique<UIView *>((v3 + 424), &subviewCopy);
    if ((*(v3 + 539) & 0xF) != 0 && [subviewCopy _isContainerView])
    {
      [(NUIContainerView *)subviewCopy endBatchUpdates];
    }

    [v3 didRemoveArrangedSubview:subviewCopy atIndex:{v6, v13}];
    if ([subviewCopy isHidden])
    {
      v7 = *(v3 + 536) & 0xFFFFFFFFFFFF0000 | (*(v3 + 536) - 1);
      *(v3 + 536) = v7;
    }

    else
    {

      OUTLINED_FUNCTION_14();
      v7 = *(v3 + 536);
    }

    v8 = (v7 >> 34) & 3;
    if (v8 == 2)
    {
      [subviewCopy removeFromSuperview];
    }

    else if (v8 == 1)
    {
      [subviewCopy setHidden:1];
    }
  }

  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6();
  if (!v9)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  OUTLINED_FUNCTION_13();
  if (v9)
  {
LABEL_24:
    v10 = *(v3 + 536);
    if (v10 != [(NUIContainerView *)v3 _countHiddenArrangesSubviews])
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v11 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }

  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_6();
  if (!v9)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  OUTLINED_FUNCTION_13();
  if (v9)
  {
LABEL_21:
    [*(v3 + 448) count];
    OUTLINED_FUNCTION_7();
    if (!v9)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v12 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }
}

- (uint64_t)_addAsSubviewIfNeeded:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_11();
    result = [v3 superview];
    if (result != v2)
    {
      [v1 _setHostsLayoutEngine:1];
      result = [v2 addSubview:v1];
    }

    if ((v2[540] & 0x20) != 0)
    {

      return [v1 setHidden:0];
    }
  }

  return result;
}

- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index
{
  v18[0] = subview;
  [NUIContainerView _assertNotInLayoutPass:?];
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (!subview)
    {
      goto LABEL_40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6();
    if (v7)
    {
      if (subview)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
      if (subview)
      {
        goto LABEL_8;
      }
    }

    if (_MergedGlobals)
    {
LABEL_40:
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_19();
      [v15 handleFailureInMethod:@"view != nil" object:? file:? lineNumber:? description:?];
    }
  }

LABEL_8:
  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6();
  if (!v7)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  OUTLINED_FUNCTION_13();
  if (v7)
  {
LABEL_13:
    if ([(NSMutableArray *)self->_arrangedSubviews count]< index)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_19();
      [v16 handleFailureInMethod:@"stackIndex <= _arrangedSubviews.count" object:? file:? lineNumber:? description:?];
    }
  }

  [NUIContainerView _addAsSubviewIfNeeded:?];
  v8 = [(NSMutableArray *)self->_arrangedSubviews indexOfObject:subview];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    if (v8 == index)
    {
      goto LABEL_26;
    }

    [(NSMutableArray *)self->_arrangedSubviews removeObjectAtIndex:v8];
    [(NUIContainerView *)self didRemoveArrangedSubview:subview atIndex:v10];
    if ([(NSMutableArray *)self->_arrangedSubviews count]< index)
    {
      [(NSMutableArray *)self->_arrangedSubviews count];
    }

    OUTLINED_FUNCTION_16();
    [v11 insertObject:? atIndex:?];
    OUTLINED_FUNCTION_16();
    [v12 didInsertArrangedSubview:? atIndex:?];
LABEL_25:

    OUTLINED_FUNCTION_14();
    goto LABEL_26;
  }

  [subview addObserver:self forKeyPath:@"hidden" options:3 context:0];
  OUTLINED_FUNCTION_16();
  [v9 insertObject:? atIndex:?];
  v18[2] = v18;
  std::__tree<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::__map_value_compare<UIView *,std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>>>::__emplace_unique_key_args<UIView *,std::piecewise_construct_t const&,std::tuple<UIView * const&>,std::tuple<>>(&self->_arrangedSubviewInfo, v18);
  if ((*(&self->_containerFlags + 3) & 0xF) != 0 && [v18[0] _isContainerView])
  {
    [(NUIContainerView *)v18[0] beginBatchUpdates];
  }

  [(NUIContainerView *)self didInsertArrangedSubview:v18[0] atIndex:index];
  if (![v18[0] isHidden])
  {
    goto LABEL_25;
  }

  ++*&self->_containerFlags;
LABEL_26:
  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_6();
  if (!v7)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  OUTLINED_FUNCTION_13();
  if (v7)
  {
LABEL_38:
    containerFlags = self->_containerFlags;
    if (containerFlags != [(NUIContainerView *)self _countHiddenArrangesSubviews])
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v14 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }

  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_6();
  if (!v7)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  OUTLINED_FUNCTION_13();
  if (v7)
  {
LABEL_35:
    [(NSMutableArray *)self->_arrangedSubviews count];
    OUTLINED_FUNCTION_7();
    if (!v7)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v17 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }
}

- (void)replaceArrangedSubviewAtIndex:(unint64_t)index withView:(id)view
{
  OUTLINED_FUNCTION_9(self);
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (!view)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
    if (v7)
    {
      if (view)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
      if (view)
      {
        goto LABEL_8;
      }
    }

    if (_MergedGlobals)
    {
LABEL_36:
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_19();
      [v18 handleFailureInMethod:@"newView != nil" object:? file:? lineNumber:? description:?];
    }
  }

LABEL_8:
  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15();
  if (!v7)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  if (_MergedGlobals)
  {
LABEL_12:
    if ([*(v4 + 448) count] <= index)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_19();
      [v19 handleFailureInMethod:@"index < _arrangedSubviews.count" object:? file:? lineNumber:? description:?];
    }
  }

  v8 = [*(v4 + 448) objectAtIndex:index];
  v22[0] = v8;
  v9 = 0x27CE55000uLL;
  if (v8 != view)
  {
    v12 = v8;
    [NUIContainerView _addAsSubviewIfNeeded:v4];
    [v12 removeObserver:v4 forKeyPath:?];
    [view addObserver:v4 forKeyPath:@"hidden" options:3 context:0];
    OUTLINED_FUNCTION_16();
    [v13 replaceObjectAtIndex:? withObject:?];
    std::__tree<UIView *>::__erase_unique<UIView *>((v4 + 424), v22);
    [v4 didRemoveArrangedSubview:v22[0] atIndex:index];
    viewCopy = view;
    v22[2] = &viewCopy;
    std::__tree<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::__map_value_compare<UIView *,std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>>>::__emplace_unique_key_args<UIView *,std::piecewise_construct_t const&,std::tuple<UIView * const&>,std::tuple<>>(v4 + 424, &viewCopy);
    [OUTLINED_FUNCTION_17() didInsertArrangedSubview:? atIndex:?];
    isHidden = [v22[0] isHidden];
    if (isHidden != [view isHidden])
    {
      if ([view isHidden])
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      *(v4 + 536) = *(v4 + 536) + v15;
    }

    if (![v22[0] isHidden] || (v16 = objc_msgSend(view, "isHidden"), v9 = 0x27CE55000, (v16 & 1) == 0))
    {

      OUTLINED_FUNCTION_14();
      v9 = 0x27CE55000;
    }
  }

  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_15();
  if (!v7)
  {
    v17 = v9;
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
    v9 = v17;
  }

  if (_MergedGlobals == 1)
  {
LABEL_26:
    v10 = *(v4 + *(v9 + 3024));
    if (v10 != [(NUIContainerView *)v4 _countHiddenArrangesSubviews])
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v11 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }

  if (_NUIEnableAPIMisuseAssertions)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15();
  if (!v7)
  {
    dispatch_once(&qword_280AC30E8, &__block_literal_global_1);
  }

  if (_MergedGlobals == 1)
  {
LABEL_23:
    [*(v4 + 448) count];
    OUTLINED_FUNCTION_7();
    if (!v7)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
      [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_1_0();
      [v20 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }
}

- (void)setBaselineRelativeArrangement:(BOOL)arrangement
{
  arrangementCopy = arrangement;
  OUTLINED_FUNCTION_9(self);
  if (((((*(v3 + 536) & 0x40000000000) == 0) ^ arrangementCopy) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_0(536);

    [v5 setNeedsInvalidation:2];
  }
}

- (void)setLayoutMarginsRelativeArrangement:(BOOL)arrangement
{
  arrangementCopy = arrangement;
  OUTLINED_FUNCTION_9(self);
  if (((((*(v3 + 536) & 0x80000000000) == 0) ^ arrangementCopy) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_0(536);

    [v5 setNeedsInvalidation:2];
  }
}

- (void)setBaselineRelativeLayoutMarginsForArrangement:(BOOL)arrangement
{
  arrangementCopy = arrangement;
  OUTLINED_FUNCTION_9(self);
  if (((((*(v3 + 536) & 0x100000000000) == 0) ^ arrangementCopy) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_0(536);

    [v5 setNeedsInvalidation:2];
  }
}

- (void)setAlignment:(int64_t)alignment forView:(id)view inAxis:(int64_t)axis
{
  OUTLINED_FUNCTION_9(self);
  v9 = v5[67];
  if ((v9 & 0xF000000) != 0 && (v9 & 0x4000000000) == 0)
  {
    [OUTLINED_FUNCTION_4_0(536) ensureArrangedSubviewsAreValid];
    OUTLINED_FUNCTION_3_0(536);
  }

  v10 = v5[54];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v5 + 54;
  do
  {
    v12 = v10[4];
    v13 = v12 >= view;
    v14 = v12 < view;
    if (v13)
    {
      v11 = v10;
    }

    v10 = v10[v14];
  }

  while (v10);
  if (v11 != v5 + 54 && v11[4] <= view)
  {
    v15 = v11 + 11;
    if (*(v15 + axis) != alignment)
    {
      *(v15 + axis) = alignment;

      [v5 setNeedsInvalidation:4];
    }
  }

  else
  {
LABEL_12:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"View is not an arranged subviews %@.", view}];
  }
}

- (void)setPositionAdjustmentOffset:(CGPoint)offset forView:(id)view
{
  y = offset.y;
  x = offset.x;
  OUTLINED_FUNCTION_9(self);
  OUTLINED_FUNCTION_5_0();
  if ((v9 & 0xF000000) != 0 && (v9 & 0x4000000000) == 0)
  {
    [OUTLINED_FUNCTION_4_0(v8) ensureArrangedSubviewsAreValid];
    OUTLINED_FUNCTION_3_0(536);
  }

  v10 = *(v4 + 54);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v4 + 54;
  do
  {
    v12 = *(v10 + 4);
    v13 = v12 >= view;
    v14 = v12 < view;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *&v10[v14];
  }

  while (v10);
  if (v11 != v4 + 54 && *(v11 + 4) <= view)
  {
    if (v11[5] != x || v11[6] != y)
    {
      v11[5] = x;
      v11[6] = y;

      [v4 setNeedsInvalidation:1];
    }
  }

  else
  {
LABEL_12:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"View is not an arranged subviews %@.", view}];
  }
}

- (void)setMinimumSpacing:(NSDirectionalEdgeInsets)spacing adjacentToView:(id)view
{
  trailing = spacing.trailing;
  leading = spacing.leading;
  bottom = spacing.bottom;
  top = spacing.top;
  OUTLINED_FUNCTION_9(self);
  OUTLINED_FUNCTION_5_0();
  if ((v7 & 0xF000000) != 0 && (v7 & 0x4000000000) == 0)
  {
    [OUTLINED_FUNCTION_4_0(v6) ensureArrangedSubviewsAreValid];
    OUTLINED_FUNCTION_3_0(536);
  }

  v8 = v4[54];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v4 + 54;
  do
  {
    v10 = v8[4];
    v11 = v10 >= view;
    v12 = v10 < view;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != v4 + 54 && v9[4] <= view)
  {
    v13.f64[0] = bottom;
    v13.f64[1] = trailing;
    v14.f64[0] = top;
    v14.f64[1] = leading;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v9 + 7), v14), vceqq_f64(*(v9 + 9), v13)))) & 1) == 0)
    {
      *(v9 + 7) = top;
      *(v9 + 8) = leading;
      *(v9 + 9) = bottom;
      *(v9 + 10) = trailing;

      [v4 setNeedsInvalidation:2];
    }
  }

  else
  {
LABEL_12:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"View is not an arranged subviews %@.", view}];
  }
}

- (double)_intrinsicSizeWithinSize:(double)size
{
  if (!self)
  {
    return 0.0;
  }

  *(self + 408) = [self effectiveUserInterfaceLayoutDirection] == 1;
  OUTLINED_FUNCTION_5_0();
  v7 = ((v6 >> 28) & 3) << 28;
  delegate = [OUTLINED_FUNCTION_4_0(v8) delegate];
  v10 = delegate;
  v11 = 536;
  v12 = *(self + 536);
  if ((v12 & 0x1000000000000) != 0)
  {
    [delegate containerView:self willMeasureArrangedSubviewsFittingSize:0 forReason:{a2, size}];
    v11 = 536;
    v12 = *(self + 536);
  }

  v13 = v12 & 0x30000000;
  if (((v12 >> 28) & 2) == 0)
  {
    v13 = 0x20000000;
  }

  *(self + 536) = v13 | v12 & 0xFFFFFFFFCFFFFFFFLL;
  if (fabs(a2) < 0.001)
  {
    a2 = 3.40282347e38;
  }

  if (fabs(size) < 0.001)
  {
    size = 3.40282347e38;
  }

  if ((v12 & 0x180000000000) != 0)
  {
    [self effectiveLayoutMargins];
    v16 = v14 + v15;
    a2 = a2 - (v14 + v15);
    v19 = v17 + v18;
    size = size - (v17 + v18);
    OUTLINED_FUNCTION_5_0();
  }

  else
  {
    v16 = *(MEMORY[0x277D768C8] + 8) + *(MEMORY[0x277D768C8] + 24);
    v19 = *MEMORY[0x277D768C8] + *(MEMORY[0x277D768C8] + 16);
  }

  [OUTLINED_FUNCTION_4_0(v11) calculateArrangedSizeFittingSize:{a2, size}];
  v22 = *(self + 536);
  if ((v22 & 0x180000000000) != 0)
  {
    v23 = v19 + v21;
  }

  else
  {
    v23 = v21;
  }

  if ((v22 & 0x180000000000) != 0)
  {
    v24 = v16 + v20;
  }

  else
  {
    v24 = v20;
  }

  if (v24 < 0.0 || v23 < 0.0)
  {
    if (*MEMORY[0x277CBF3A8] > v24)
    {
      v24 = *MEMORY[0x277CBF3A8];
    }

    LODWORD(v25) = 1;
  }

  else
  {
    v25 = *&v20 >> 63;
  }

  [self _currentScreenScale];
  if (v26 == 1.0)
  {
    v27 = floor(v24);
    v28 = ceil(v24);
    if (v24 - v27 >= 0.001)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10();
    v29 = v31 / v30;
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_5_0();
  *(self + v33) = v32 & 0xFFFFFFFFCFFFFFFFLL | v7;

  if (v25)
  {
    [self setCurrentEffectiveLayoutSizeFittingSizeShouldNotBeCached];
  }

  return v29;
}

- (id)debugDictionary
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObject:objc_opt_class() forKey:@"class"];
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
  v6 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v6)
  {
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(visibleArrangedSubviews);
        }

        [array addObject:{-[NUIContainerView debugDictionaryForVisibleArrangedSubview:](self, "debugDictionaryForVisibleArrangedSubview:", *(*(&v38 + 1) + 8 * i))}];
      }

      v6 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v6);
  }

  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
  array2 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  arrangedSubviews = [(NUIContainerView *)self arrangedSubviews];
  v11 = [(NSArray *)arrangedSubviews countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v14 = *(*(&v34 + 1) + 8 * j);
        if ([v14 _wantsConstraintBasedLayout])
        {
          [array2 addObject:v14];
        }
      }

      v11 = [(NSArray *)arrangedSubviews countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v11);
  }

  if ([array2 count])
  {
    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
  }

  if ([-[UIView debugSizeCacheDict](self "debugSizeCacheDict")])
  {
    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
  }

  if ((*(&self->_containerFlags + 5) & 0x18) != 0)
  {
    [(NUIContainerView *)self layoutMargins];
    v33[0] = v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v19 = [MEMORY[0x277CCAE60] value:v33 withObjCType:"{UIEdgeInsets=dddd}"];
    if ((*&self->_containerFlags & 0x100000000000) != 0)
    {
      v20 = @"baselineLayoutMargins";
    }

    else
    {
      v20 = @"layoutMargins";
    }

    [v3 setObject:v19 forKeyedSubscript:v20];
  }

  if ([(NUIContainerView *)self delegate])
  {
    v21 = MEMORY[0x277CBEB38];
    v44[0] = @"delegate";
    delegate = [(NUIContainerView *)self delegate];
    v44[1] = @"respondsTo";
    v45[0] = delegate;
    debugSetDelegateRespondsToSelectors = [(NUIContainerView *)self debugSetDelegateRespondsToSelectors];
    v43 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    v45[1] = [debugSetDelegateRespondsToSelectors sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v43, 1)}];
    [v3 setObject:objc_msgSend(v21 forKeyedSubscript:{"dictionaryWithDictionary:", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, v44, 2)), @"delegate"}];
  }

  v24 = *(&self->_containerFlags + 3) & 0xF;
  if ((*(&self->_containerFlags + 3) & 0xF) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v24), @"batchDepth"}];
  }

  debugSetEnabledFlags = [(NUIContainerView *)self debugSetEnabledFlags];
  if ([debugSetEnabledFlags count])
  {
    v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    [v3 setObject:objc_msgSend(debugSetEnabledFlags forKeyedSubscript:{"sortedArrayUsingDescriptors:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v42, 1)), @"flags"}];
  }

  firstBaselineView = self->_firstBaselineView;
  if (firstBaselineView)
  {
    if (firstBaselineView == self)
    {
      v27 = @"self";
    }

    else
    {
      v27 = self->_firstBaselineView;
    }

    [v3 setObject:v27 forKeyedSubscript:@"cachedFirstBaselineView"];
  }

  else
  {
    calculateViewForFirstBaselineLayout = [(NUIContainerView *)self calculateViewForFirstBaselineLayout];
    if (calculateViewForFirstBaselineLayout != self)
    {
      [v3 setObject:calculateViewForFirstBaselineLayout forKeyedSubscript:@"firstBaselineView"];
    }
  }

  lastBaselineView = self->_lastBaselineView;
  if (lastBaselineView)
  {
    if (lastBaselineView == self)
    {
      v30 = @"self";
    }

    else
    {
      v30 = self->_lastBaselineView;
    }

    [v3 setObject:v30 forKeyedSubscript:@"cachedLastBaselineView"];
  }

  else
  {
    calculateViewForLastBaselineLayout = [(NUIContainerView *)self calculateViewForLastBaselineLayout];
    if (calculateViewForLastBaselineLayout != self)
    {
      [v3 setObject:calculateViewForLastBaselineLayout forKeyedSubscript:@"lastBaselineView"];
    }
  }

  [(NUIContainerView *)self _verifyInternalConsistencyWarningOnly:?];
  return [v3 copy];
}

- (uint64_t)visibleArrangedSubviews
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)addArrangedSubview:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"view != nil" object:? file:? lineNumber:? description:?];
}

- (uint64_t)indexOfArrangedSubview:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"view != nil" object:? file:? lineNumber:? description:?];
}

- (uint64_t)effectiveLayoutSizeFittingSize:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end