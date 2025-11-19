@interface NUIContainerGridView
+ (id)containerGridViewWithArrangedSubviewRows:(id)a3;
- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)a3;
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3;
- (NSArray)arrangedSubviewRows;
- (NUIContainerGridView)initWithArrangedSubviewRows:(id)a3;
- (NUIContainerGridView)initWithArrangedSubviews:(id)a3;
- (NUIContainerGridView)initWithFrame:(CGRect)a3;
- (double)_calculateArrangedSizeFittingSize:(CGFloat)a3 forLayout:(CGFloat)a4;
- (double)_heightOfRowAtIndex:(uint64_t)a1;
- (double)_widthOfColumnAtIndex:(uint64_t)a1;
- (id).cxx_construct;
- (id)_horizontalAlignmentOfView:(uint64_t)a3 inColumn:;
- (id)_verticalAlignmentOfView:(uint64_t)a3 row:;
- (id)addColumnWithArrangedSubviews:(id)a3;
- (id)addRowWithArrangedSubviews:(id)a3;
- (id)arrangedDebugDescription;
- (id)arrangedSubviewInColumnAtIndex:(int64_t)a3 rowAtIndex:(int64_t)a4;
- (id)calculateViewForFirstBaselineLayout;
- (id)calculateViewForLastBaselineLayout;
- (id)columnAtIndex:(int64_t)a3;
- (id)debugDictionary;
- (id)debugDictionaryForVisibleArrangedSubview:(id)a3;
- (id)insertColumnAtIndex:(int64_t)a3 withArrangedSubviews:(id)a4;
- (id)insertRowAtIndex:(int64_t)a3 withArrangedSubviews:(id)a4;
- (id)rowAtIndex:(int64_t)a3;
- (id)viewForFirstBaselineLayoutInRowAtIndex:(int64_t)a3;
- (id)viewForLastBaselineLayoutInRowAtIndex:(int64_t)a3;
- (uint64_t)_verifyInternalGridConsistencyWarningOnly:(uint64_t)result;
- (uint64_t)debugArrayForDimension:(uint64_t)a1;
- (uint64_t)ensureArrangedSubviewsAreValid;
- (void)_baselineViewVendForFirstBaseline:(void *)a3 fromViews:;
- (void)_setupViewRangesIfNeeded;
- (void)dealloc;
- (void)debugDictionaryForDimensionConfiguration:(uint64_t)a1;
- (void)didInsertArrangedSubview:(id)a3 atIndex:(int64_t)a4;
- (void)didRemoveArrangedSubview:(id)a3 atIndex:(int64_t)a4;
- (void)ensureArrangedSubviewsAreValid;
- (void)getColumnRange:(_NSRange *)a3 rowRange:(_NSRange *)a4 forArrangedSubview:(id)a5;
- (void)invalidateInternalStateForInvalidation:(int64_t)a3;
- (void)layoutArrangedSubviewsInBounds:(CGRect)a3;
- (void)moveColumnAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)moveRowAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)populateGridArrangementCells:(void *)a3;
- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5;
- (void)removeColumnAtIndex:(int64_t)a3;
- (void)removeRowAtIndex:(int64_t)a3;
- (void)replaceArrangedSubview:(id)a3 inColumnAtIndex:(int64_t)a4 rowAtIndex:(int64_t)a5;
- (void)replaceArrangedSubviewAtIndex:(unint64_t)a3 withView:(id)a4;
- (void)setArrangedSubviewRows:(id)a3;
- (void)setBaselineRelativeArrangement:(BOOL)a3;
- (void)setColumnSpacing:(double)a3;
- (void)setColumnWidth:(double)a3;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setHorizontalDistribution:(int64_t)a3;
- (void)setRowHeight:(double)a3;
- (void)setRowSpacing:(double)a3;
- (void)setVerticalAlignment:(int64_t)a3;
- (void)setVerticalDistribution:(int64_t)a3;
@end

@implementation NUIContainerGridView

- (id).cxx_construct
{
  _NUIGridArrangement::_NUIGridArrangement(&self->_arrangement);
  self->_viewRanges.__tree_.__size_ = 0;
  self->_viewRanges.__tree_.__end_node_.__left_ = 0;
  self->_viewRanges.__tree_.__begin_node_ = &self->_viewRanges.__tree_.__end_node_;
  return self;
}

- (void)ensureArrangedSubviewsAreValid
{
  v70 = *MEMORY[0x277D85DE8];
  gridViewFlags = self->_gridViewFlags;
  if ((*&gridViewFlags & 0x20000) != 0)
  {
    self->_gridViewFlags = (*&gridViewFlags & 0xFFFDFFFF);
    if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached())
    {
      v4 = [(NSMutableArray *)self->_rows count];
      if (v4 != [(NSMutableArray *)self->_viewRows count])
      {
        [NUIContainerGridView ensureArrangedSubviewsAreValid];
      }
    }

    if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached())
    {
      v5 = [(NSMutableArray *)self->_columns count];
      if (v5 != [-[NSMutableArray firstObject](self->_viewRows "firstObject")])
      {
        [NUIContainerGridView ensureArrangedSubviewsAreValid];
      }
    }

    memset(v64, 0, 64);
    v48 = 712;
    if ([(NSMutableArray *)self->_rows countByEnumeratingWithState:v64 objects:v69 count:16])
    {
      [NUIContainerGridView ensureArrangedSubviewsAreValid];
    }

    memset(v63, 0, sizeof(v63));
    if ([(NSMutableArray *)self->_columns countByEnumeratingWithState:v63 objects:&v68 count:16])
    {
      [NUIContainerGridView ensureArrangedSubviewsAreValid];
    }

    std::__tree<UIView *>::destroy(&self->_viewRanges, self->_viewRanges.__tree_.__end_node_.__left_);
    self->_viewRanges.__tree_.__begin_node_ = &self->_viewRanges.__tree_.__end_node_;
    self->_viewRanges.__tree_.__size_ = 0;
    self->_viewRanges.__tree_.__end_node_.__left_ = 0;
    v42 = self;
    v6 = [(NUIContainerView *)self arrangedSubviews];
    [(NSArray *)v6 count];
    MEMORY[0x28223BE20]();
    v45 = &v42 - v7;
    bzero(&v42 - v7, v8);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v9 = [(NSArray *)v6 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v43 = 0;
      v11 = *v60;
      do
      {
        v12 = 0;
        v13 = v45;
        v14 = v43;
        do
        {
          if (*v60 != v11)
          {
            objc_enumerationMutation(v6);
            v13 = v45;
          }

          v15 = *(*(&v59 + 1) + 8 * v12);
          v16 = v13;
          if (v14)
          {
            v16 = v13;
            v17 = v14;
            do
            {
              v18 = v17 >> 1;
              v19 = &v16[8 * (v17 >> 1)];
              v21 = *v19;
              v20 = v19 + 8;
              v17 += ~(v17 >> 1);
              if (v21 < v15)
              {
                v16 = v20;
              }

              else
              {
                v17 = v18;
              }
            }

            while (v17);
          }

          v22 = &v13[8 * v14];
          if (v16 == v22 || *v16 != v15)
          {
            if (v22 > v16)
            {
              memmove(v16 + 8, v16, v22 - v16);
              v13 = v45;
            }

            *v16 = v15;
            ++v14;
          }

          ++v12;
        }

        while (v12 != v10);
        v43 = v14;
        v10 = [(NSArray *)v6 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v10);
    }

    else
    {
      v43 = 0;
    }

    v23 = v42;
    [*(&v42->super.super.super.super.isa + v48) count];
    [(NSMutableArray *)v23->_columns count];
    MEMORY[0x28223BE20]();
    v25 = &v42 - v24;
    bzero(&v42 - v24, v26);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    viewRows = v23->_viewRows;
    v47 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v55 objects:v66 count:16];
    v27 = 0;
    if (v47)
    {
      v46 = *v56;
      do
      {
        v28 = 0;
        do
        {
          if (*v56 != v46)
          {
            objc_enumerationMutation(viewRows);
          }

          v48 = v28;
          v29 = *(*(&v55 + 1) + 8 * v28);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v30 = [v29 countByEnumeratingWithState:&v51 objects:v65 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v52;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v52 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v51 + 1) + 8 * i);
                v35 = v25;
                if (v27)
                {
                  v35 = v25;
                  v36 = v27;
                  do
                  {
                    v37 = v36 >> 1;
                    v38 = &v35[8 * (v36 >> 1)];
                    v40 = *v38;
                    v39 = v38 + 8;
                    v36 += ~(v36 >> 1);
                    if (v40 < v34)
                    {
                      v35 = v39;
                    }

                    else
                    {
                      v36 = v37;
                    }
                  }

                  while (v36);
                }

                v41 = &v25[8 * v27];
                if (v35 == v41 || *v35 != v34)
                {
                  if (v41 > v35)
                  {
                    memmove(v35 + 8, v35, v41 - v35);
                  }

                  *v35 = v34;
                  ++v27;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v51 objects:v65 count:16];
            }

            while (v31);
          }

          v28 = v48 + 1;
        }

        while (v48 + 1 != v47);
        v47 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v47);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __54__NUIContainerGridView_ensureArrangedSubviewsAreValid__block_invoke;
    v50[3] = &unk_278329598;
    v50[4] = v42;
    v50[5] = v43;
    v50[6] = v45;
    v50[7] = v27;
    v50[8] = v25;
    v49.receiver = v42;
    v49.super_class = NUIContainerGridView;
    [(NUIContainerView *)&v49 performBatchUpdates:v50];
  }
}

- (NSArray)arrangedSubviewRows
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_viewRows count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (v10 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  for (i = 0; i != v4; ++i)
  {
    v5[i] = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{i), "copy"}];
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v4];
  do
  {
    v8 = *v5++;

    --v4;
  }

  while (v4);
  return v7;
}

- (uint64_t)ensureArrangedSubviewsAreValid
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void *__54__NUIContainerGridView_ensureArrangedSubviewsAreValid__block_invoke(void *result)
{
  v1 = result;
  *(result[4] + 728) |= 0x10000u;
  v2 = result[5];
  if (v2)
  {
    v3 = result[6];
    v4 = &v3[v2];
    do
    {
      v5 = *v3;
      v7 = v1[7];
      v6 = v1[8];
      v8 = &v6[v7];
      if (!v7)
      {
        goto LABEL_10;
      }

      do
      {
        v9 = v7 >> 1;
        v10 = &v6[v7 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v7 += ~(v7 >> 1);
        if (v12 < v5)
        {
          v6 = v11;
        }

        else
        {
          v7 = v9;
        }
      }

      while (v7);
      if (v6 == v8 || *v6 != v5)
      {
LABEL_10:
        v6 = v8;
      }

      if (v6 == v8)
      {
        v25.receiver = v1[4];
        v25.super_class = NUIContainerGridView;
        result = objc_msgSendSuper2(&v25, sel_removeArrangedSubview_, v5);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v13 = v1[7];
  if (v13)
  {
    v14 = v1[8];
    v15 = &v14[v13];
    do
    {
      v16 = *v14;
      v18 = v1[5];
      v17 = v1[6];
      v19 = &v17[v18];
      if (!v18)
      {
        goto LABEL_23;
      }

      do
      {
        v20 = v18 >> 1;
        v21 = &v17[v18 >> 1];
        v23 = *v21;
        v22 = v21 + 1;
        v18 += ~(v18 >> 1);
        if (v23 < v16)
        {
          v17 = v22;
        }

        else
        {
          v18 = v20;
        }
      }

      while (v18);
      if (v17 == v19 || *v17 != v16)
      {
LABEL_23:
        v17 = v19;
      }

      if (v17 == v19)
      {
        v24.receiver = v1[4];
        v24.super_class = NUIContainerGridView;
        result = objc_msgSendSuper2(&v24, sel_addArrangedSubview_, v16);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  *(v1[4] + 728) |= 0x10000u;
  return result;
}

- (void)_setupViewRangesIfNeeded
{
  v13[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [*(a1 + 720) count];
    if (*(a1 + 688))
    {
      v3 = 1;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (!v3)
    {
      v4 = v2;
      v5 = [*(a1 + 712) count];
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x4012000000;
      v13[3] = __Block_byref_object_copy__1;
      v13[4] = __Block_byref_object_dispose__1;
      v13[5] = 0;
      MEMORY[0x28223BE20]();
      v7 = v10 - v6;
      bzero(v10 - v6, v8);
      v13[6] = 0;
      v13[7] = v7;
      v9 = *(a1 + 544);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__NUIContainerGridView__setupViewRangesIfNeeded__block_invoke;
      v10[3] = &unk_278329680;
      v11 = v4;
      v12 = v5;
      v10[4] = a1;
      v10[5] = v13;
      [v9 enumerateObjectsUsingBlock:v10];
      _Block_object_dispose(v13, 8);
    }
  }
}

uint64_t __48__NUIContainerGridView__setupViewRangesIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__NUIContainerGridView__setupViewRangesIfNeeded__block_invoke_2;
  v4[3] = &unk_278329658;
  v7 = *(a1 + 48);
  v4[4] = a2;
  v6 = a3;
  v5 = *(a1 + 32);
  return [a2 enumerateObjectsUsingBlock:v4];
}

void *__48__NUIContainerGridView__setupViewRangesIfNeeded__block_invoke_2(void *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v26 = a2;
  v6 = *(result[6] + 8);
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);
  v9 = &v7[v8];
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = v8 >> 1;
    v11 = &v7[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v13 < a2)
    {
      v7 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  while (v8);
  if (v7 == v9 || *v7 != a2)
  {
LABEL_8:
    v7 = v9;
  }

  if (v7 == v9)
  {
    v14 = a3 + 1;
    v15 = *(result + 32);
    v16 = 1;
    while (v14 < v15 && [v5[4] objectAtIndex:v14] == a2)
    {
      ++v16;
      v15 = *(v5 + 32);
      ++v14;
    }

    for (i = 1; v5[7] + i < *(v5 + 33); ++i)
    {
      if ([objc_msgSend(*(v5[5] + 544) "objectAtIndex:{"objectAtIndex:", a3}")] != a2)
      {
        break;
      }
    }

    result = std::__tree<std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>,std::__map_value_compare<UIView *,std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>>>::__emplace_unique_key_args<UIView *,UIView * const&,std::pair<_NSRange,_NSRange>>(v5[5] + 672, &v26);
    v18 = *(v5[6] + 8);
    v19 = *(v18 + 48);
    v20 = *(v18 + 56);
    v21 = &v20[8 * v19];
    while (v19)
    {
      v22 = v19 >> 1;
      v23 = &v20[8 * (v19 >> 1)];
      v25 = *v23;
      v24 = (v23 + 1);
      v19 += ~(v19 >> 1);
      if (v25 < v26)
      {
        v20 = v24;
      }

      else
      {
        v19 = v22;
      }
    }

    if (v20 == v21 || *v20 != v26)
    {
      if (v21 > v20)
      {
        result = memmove(v20 + 8, v20, v21 - v20);
      }

      *v20 = v26;
      ++*(v18 + 48);
    }
  }

  return result;
}

+ (id)containerGridViewWithArrangedSubviewRows:(id)a3
{
  v3 = [[a1 alloc] initWithArrangedSubviewRows:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__NUIContainerGridView_containerGridViewWithArrangedSubviewRows___block_invoke;
  v5[3] = &unk_278329440;
  v5[4] = v3;
  [v3 performBatchUpdates:v5];
  return v3;
}

uint64_t __65__NUIContainerGridView_containerGridViewWithArrangedSubviewRows___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBaselineRelativeArrangement:1];
  [*(a1 + 32) setColumnSpacing:-1.79769313e308];
  [*(a1 + 32) setRowSpacing:-1.79769313e308];
  [*(a1 + 32) setHorizontalAlignment:0];
  v2 = *(a1 + 32);

  return [v2 setVerticalAlignment:2];
}

- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)a3
{
  [(NUIContainerGridView *)self getColumnRange:0 rowRange:v10 forArrangedSubview:a3];
  v9.receiver = self;
  v9.super_class = NUIContainerGridView;
  if ([(NUIContainerView *)&v9 needsBaselineDebugBoundingBoxesForArrangedSubview:a3])
  {
    goto LABEL_2;
  }

  v6 = [(NUIContainerGridView *)&self->super.super.super.super.isa _verticalAlignmentOfView:a3 row:v10[0]];
  if (v6 == 2 || v6 == 5)
  {
    goto LABEL_2;
  }

  v5 = [(NUIContainerView *)self isBaselineRelativeArrangement];
  if (!v5)
  {
    return v5;
  }

  if ([(NUIContainerGridView *)self viewForFirstBaselineLayoutInRowAtIndex:v10[0]]== a3)
  {
LABEL_2:
    LOBYTE(v5) = 1;
  }

  else
  {
    LOBYTE(v5) = [(NUIContainerGridView *)self viewForLastBaselineLayoutInRowAtIndex:v10[0] + v10[1] - 1]== a3;
  }

  return v5;
}

- (void)setBaselineRelativeArrangement:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NUIContainerGridView;
  [(NUIContainerView *)&v5 setBaselineRelativeArrangement:?];
  self->_arrangement.baselineRelative = a3;
}

- (NUIContainerGridView)initWithArrangedSubviews:(id)a3
{
  if (a3 && ((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"<Unknown File>";
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = objc_opt_class();
    [v7 handleFailureInMethod:a2 object:self file:v6 lineNumber:97 description:{@"Use -[%@ initWithArrangedSubviewRows:] or -[%@ init]", v9, NSStringFromClass(v10)}];
  }

  return [(NUIContainerGridView *)self initWithArrangedSubviewRows:0];
}

- (NUIContainerGridView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NUIContainerGridView;
  v3 = [(NUIContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _NUIContainerGridViewCommonInit(v3);
  }

  return v4;
}

- (NUIContainerGridView)initWithArrangedSubviewRows:(id)a3
{
  v8.receiver = self;
  v8.super_class = NUIContainerGridView;
  v4 = [(NUIContainerView *)&v8 initWithArrangedSubviews:0];
  v5 = v4;
  if (v4)
  {
    _NUIContainerGridViewCommonInit(v4);
    if (a3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __52__NUIContainerGridView_initWithArrangedSubviewRows___block_invoke;
      v7[3] = &unk_278329528;
      v7[4] = a3;
      v7[5] = v5;
      [(NUIContainerView *)v5 performBatchUpdates:v7];
    }
  }

  return v5;
}

uint64_t __52__NUIContainerGridView_initWithArrangedSubviewRows___block_invoke(uint64_t a1)
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

        [*(a1 + 40) addRowWithArrangedSubviews:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, -1);
  *&self->_gridViewFlags |= 0x10000u;

  self->_viewRows = 0;
  self->_columns = 0;

  self->_rows = 0;
  v3.receiver = self;
  v3.super_class = NUIContainerGridView;
  [(NUIContainerView *)&v3 dealloc];
}

- (void)setArrangedSubviewRows:(id)a3
{
  v5 = [(NUIContainerView *)self arrangedSubviews];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NUIContainerGridView_setArrangedSubviewRows___block_invoke;
  v6[3] = &unk_2783295C0;
  v6[4] = self;
  v6[5] = v5;
  v6[6] = a3;
  [(NUIContainerView *)self performBatchUpdates:v6];
}

uint64_t __47__NUIContainerGridView_setArrangedSubviewRows___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  for (i = *(a1 + 32); [*(i + 712) count]; i = *(a1 + 32))
  {
    [*(a1 + 32) removeRowAtIndex:0];
  }

  [*(a1 + 40) makeObjectsPerformSelector:sel_removeFromSuperview];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 48);
  result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) addRowWithArrangedSubviews:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (id)arrangedSubviewInColumnAtIndex:(int64_t)a3 rowAtIndex:(int64_t)a4
{
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a3)
  {
    [NUIContainerGridView arrangedSubviewInColumnAtIndex:rowAtIndex:];
  }

  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count]<= a4)
  {
    [NUIContainerGridView arrangedSubviewInColumnAtIndex:rowAtIndex:];
  }

  v7 = [(NSMutableArray *)self->_viewRows objectAtIndexedSubscript:a4];

  return [v7 objectAtIndexedSubscript:a3];
}

- (void)getColumnRange:(_NSRange *)a3 rowRange:(_NSRange *)a4 forArrangedSubview:(id)a5
{
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && !(a3 | a4))
  {
    [NUIContainerGridView getColumnRange:rowRange:forArrangedSubview:];
  }

  if ((_NUIEnableAPIMisuseAssertions & 1) == 0)
  {
    v9 = _NUIIsDebuggerAttached();
    if (a5 || (v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (!a5)
  {
LABEL_25:
    [NUIContainerGridView getColumnRange:rowRange:forArrangedSubview:];
  }

LABEL_10:
  [(NUIContainerGridView *)self _setupViewRangesIfNeeded];
  left = self->_viewRanges.__tree_.__end_node_.__left_;
  v11 = xmmword_21D0BFC60;
  if (!left)
  {
    goto LABEL_19;
  }

  p_end_node = &self->_viewRanges.__tree_.__end_node_;
  do
  {
    v13 = *(left + 4);
    v14 = v13 >= a5;
    v15 = v13 < a5;
    if (v14)
    {
      p_end_node = left;
    }

    left = *(left + v15);
  }

  while (left);
  if (p_end_node == &self->_viewRanges.__tree_.__end_node_)
  {
LABEL_19:
    v16 = xmmword_21D0BFC60;
  }

  else
  {
    v16 = xmmword_21D0BFC60;
    if (p_end_node[4].__left_ <= a5)
    {
      v16 = *&p_end_node[5].__left_;
      v11 = *&p_end_node[7].__left_;
    }
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v11;
  }
}

- (id)rowAtIndex:(int64_t)a3
{
  if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || (_NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count]<= a3)
  {
    [NUIContainerGridView rowAtIndex:];
  }

  rows = self->_rows;

  return [(NSMutableArray *)rows objectAtIndex:a3];
}

- (id)addRowWithArrangedSubviews:(id)a3
{
  v5 = [(NUIContainerGridView *)self numberOfRows];

  return [(NUIContainerGridView *)self insertRowAtIndex:v5 withArrangedSubviews:a3];
}

- (id)insertRowAtIndex:(int64_t)a3 withArrangedSubviews:(id)a4
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count]< a3)
  {
    [NUIContainerGridView insertRowAtIndex:withArrangedSubviews:];
  }

  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && ![a4 count])
  {
    [NUIContainerGridView insertRowAtIndex:withArrangedSubviews:];
  }

  *&self->_gridViewFlags |= 0x20000u;
  v7 = [(NSMutableArray *)self->_columns count];
  if (v7 >= 2 && (v8 = v7, [a4 count] == 1))
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
    do
    {
      [v9 addObject:{objc_msgSend(a4, "firstObject")}];
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:a4];
  }

  v10 = [v9 count];
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && v10 && v10 != [v9 count])
  {
    [NUIContainerGridView insertRowAtIndex:withArrangedSubviews:];
  }

  [(NSMutableArray *)self->_viewRows insertObject:v9 atIndex:a3];
  v11 = [[NUIGridDimension alloc] initWithContainerGridView:1 isRow:?];
  [(NSMutableArray *)self->_rows insertObject:v11 atIndex:a3];
  while ([(NSMutableArray *)self->_columns count]< v10)
  {
    [(NSMutableArray *)self->_columns addObject:[[NUIGridDimension alloc] initWithContainerGridView:0 isRow:?]];
  }

  [(NUIContainerView *)self setNeedsInvalidation:4];

  return v11;
}

- (void)moveRowAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  if (a3 != a4)
  {
    v17 = v9;
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    [NUIContainerView _assertNotInLayoutPass:?];
    if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count:v9]<= a3)
    {
      [NUIContainerGridView moveRowAtIndex:toIndex:];
    }

    if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count:v17]<= a4)
    {
      [NUIContainerGridView moveRowAtIndex:toIndex:];
    }

    *&self->_gridViewFlags |= 0x20000u;
    v15 = [(NSMutableArray *)self->_viewRows objectAtIndex:a3, v17, v18, v19, v20, v21, v22];
    [(NSMutableArray *)self->_viewRows removeObjectAtIndex:a3];
    [(NSMutableArray *)self->_viewRows insertObject:v15 atIndex:a4];

    v16 = [(NSMutableArray *)self->_rows objectAtIndex:a3];
    [(NSMutableArray *)self->_rows removeObjectAtIndex:a3];
    [(NSMutableArray *)self->_rows insertObject:v16 atIndex:a4];

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)removeRowAtIndex:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [NUIContainerView _assertNotInLayoutPass:?];
  if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || (_NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count]<= a3)
  {
    [NUIContainerGridView removeRowAtIndex:];
  }

  *&self->_gridViewFlags |= 0x20000u;
  v5 = [(NSMutableArray *)self->_rows count];
  viewRows = self->_viewRows;
  if (v5 < 2)
  {
    [(NSMutableArray *)viewRows removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    columns = self->_columns;
    v8 = [(NSMutableArray *)columns countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(columns);
          }

          *(*(*(&v13 + 1) + 8 * i) + 40) |= 0x400u;
        }

        v9 = [(NSMutableArray *)columns countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_columns removeAllObjects];
  }

  else
  {
    [(NSMutableArray *)viewRows removeObjectAtIndex:a3];
  }

  v12 = [(NSMutableArray *)self->_rows objectAtIndex:a3];
  *(v12 + 40) |= 0x400u;
  [(NSMutableArray *)self->_rows removeObjectAtIndex:a3];
  [(NUIContainerView *)self setNeedsInvalidation:4];
}

- (id)columnAtIndex:(int64_t)a3
{
  if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || (_NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a3)
  {
    [NUIContainerGridView columnAtIndex:];
  }

  columns = self->_columns;

  return [(NSMutableArray *)columns objectAtIndex:a3];
}

- (id)addColumnWithArrangedSubviews:(id)a3
{
  v5 = [(NUIContainerGridView *)self numberOfColumns];

  return [(NUIContainerGridView *)self insertColumnAtIndex:v5 withArrangedSubviews:a3];
}

uint64_t __65__NUIContainerGridView_insertColumnAtIndex_withArrangedSubviews___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v5 = *(a1 + 40);

  return [a2 insertObject:v4 atIndex:v5];
}

- (void)moveColumnAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 != a4)
  {
    [NUIContainerView _assertNotInLayoutPass:?];
    if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a3)
    {
      [NUIContainerGridView moveColumnAtIndex:toIndex:];
    }

    if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a4)
    {
      [NUIContainerGridView moveColumnAtIndex:toIndex:];
    }

    *&self->_gridViewFlags |= 0x20000u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    viewRows = self->_viewRows;
    v8 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(viewRows);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 objectAtIndex:a3];
          [v12 removeObjectAtIndex:a3];
          [v12 insertObject:v13 atIndex:a4];
        }

        v9 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v14 = [(NSMutableArray *)self->_columns objectAtIndex:a3];
    [(NSMutableArray *)self->_columns removeObjectAtIndex:a3];
    [(NSMutableArray *)self->_columns insertObject:v14 atIndex:a4];

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)removeColumnAtIndex:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  [NUIContainerView _assertNotInLayoutPass:?];
  if ((_NUIEnableAPIMisuseAssertions & 1) != 0 || (_NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a3)
  {
    [NUIContainerGridView removeColumnAtIndex:];
  }

  *&self->_gridViewFlags |= 0x20000u;
  if ([(NSMutableArray *)self->_columns count]< 2)
  {
    [(NSMutableArray *)self->_viewRows removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    rows = self->_rows;
    v11 = [(NSMutableArray *)rows countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(rows);
          }

          *(*(*(&v16 + 1) + 8 * i) + 40) |= 0x400u;
        }

        v12 = [(NSMutableArray *)rows countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_rows removeAllObjects];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    viewRows = self->_viewRows;
    v6 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(viewRows);
          }

          [*(*(&v20 + 1) + 8 * j) removeObjectAtIndex:a3];
        }

        v7 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v15 = [(NSMutableArray *)self->_columns objectAtIndex:a3];
  *(v15 + 40) |= 0x400u;
  [(NSMutableArray *)self->_columns removeObjectAtIndex:a3];
  [(NUIContainerView *)self setNeedsInvalidation:4];
}

- (void)replaceArrangedSubview:(id)a3 inColumnAtIndex:(int64_t)a4 rowAtIndex:(int64_t)a5
{
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]<= a4)
  {
    [NUIContainerGridView replaceArrangedSubview:inColumnAtIndex:rowAtIndex:];
  }

  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_rows count]<= a5)
  {
    [NUIContainerGridView replaceArrangedSubview:inColumnAtIndex:rowAtIndex:];
  }

  v9 = [(NUIContainerGridView *)self arrangedSubviewInColumnAtIndex:a4 rowAtIndex:a5];
  if (v9 != a3)
  {
    *&self->_gridViewFlags |= 0x20000u;
    [(NUIContainerGridView *)self getColumnRange:&v16 rowRange:&v14 forArrangedSubview:v9];
    for (i = v14; i < v15 + v14; ++i)
    {
      v11 = [(NSMutableArray *)self->_viewRows objectAtIndex:i];
      v12 = v16;
      if (v16 < v17 + v16)
      {
        v13 = v11;
        do
        {
          [v13 replaceObjectAtIndex:v12++ withObject:a3];
        }

        while (v12 < v17 + v16);
      }
    }

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)replaceArrangedSubviewAtIndex:(unint64_t)a3 withView:(id)a4
{
  v6 = [(NSArray *)[(NUIContainerView *)self arrangedSubviews] objectAtIndex:a3];
  if (v6 != a4)
  {
    *&self->_gridViewFlags |= 0x20000u;
    [(NUIContainerGridView *)self getColumnRange:&v13 rowRange:&v11 forArrangedSubview:v6];
    for (i = v11; i < v12 + v11; ++i)
    {
      v8 = [(NSMutableArray *)self->_viewRows objectAtIndex:i];
      v9 = v13;
      if (v13 < v14 + v13)
      {
        v10 = v8;
        do
        {
          [v10 replaceObjectAtIndex:v9++ withObject:a4];
        }

        while (v9 < v14 + v13);
      }
    }

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  gridViewFlags = self->_gridViewFlags;
  if (v5 != gridViewFlags)
  {
    self->_gridViewFlags = (*&gridViewFlags & 0xFFFFFF00 | v5);

    [(NUIContainerView *)self setNeedsInvalidation:1];
  }
}

- (void)setVerticalAlignment:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  gridViewFlags = self->_gridViewFlags;
  if (v5 != *&gridViewFlags >> 8)
  {
    self->_gridViewFlags = (*&gridViewFlags & 0xFFFF00FF | (v5 << 8));

    [(NUIContainerView *)self setNeedsInvalidation:1];
  }
}

- (void)setHorizontalDistribution:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(&self->_arrangement + 4);
  if (v5 != v6)
  {
    if ((v6 << 8) == 256 || v5 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    *(&self->_arrangement + 4) = v6 & 0xFF00 | v5;

    [(NUIContainerView *)self setNeedsInvalidation:v8];
  }
}

- (void)setVerticalDistribution:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (v5 != *(&self->_arrangement + 4) >> 8)
  {
    if (*(&self->_arrangement + 4) == 1 || v5 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    *(&self->_arrangement + 4) = *(&self->_arrangement + 4) | (v5 << 8);

    [(NUIContainerView *)self setNeedsInvalidation:v7];
  }
}

- (void)setRowSpacing:(double)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_spacing.height != a3)
  {
    self->_spacing.height = a3;

    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setColumnSpacing:(double)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_spacing.width != a3)
  {
    self->_spacing.width = a3;

    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setRowHeight:(double)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_rowHeight != a3)
  {
    self->_rowHeight = a3;

    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setColumnWidth:(double)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_columnWidth != a3)
  {
    self->_columnWidth = a3;

    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (id)calculateViewForFirstBaselineLayout
{
  result = [(NSMutableArray *)self->_rows count];
  if (result)
  {
    v4 = result;
    v5 = 0;
    while ((*([(NSMutableArray *)self->_rows objectAtIndexedSubscript:v5]+ 40) & 0x200) != 0)
    {
      if (v4 == ++v5)
      {
        result = 0;
        goto LABEL_7;
      }
    }

    result = [(NUIContainerGridView *)self viewForFirstBaselineLayoutInRowAtIndex:v5];
  }

LABEL_7:
  if (!result)
  {
    return self;
  }

  return result;
}

- (id)calculateViewForLastBaselineLayout
{
  v3 = [(NSMutableArray *)self->_rows count];
  do
  {
    --v3;
  }

  while ((*([(NSMutableArray *)self->_rows objectAtIndexedSubscript:v3]+ 40) & 0x200) != 0);
  result = [(NUIContainerGridView *)self viewForLastBaselineLayoutInRowAtIndex:v3];
  if (!result)
  {
    return self;
  }

  return result;
}

- (id)viewForFirstBaselineLayoutInRowAtIndex:(int64_t)a3
{
  if ((*([(NSMutableArray *)self->_rows objectAtIndexedSubscript:?]+ 40) & 0x200) != 0)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_viewRows objectAtIndex:a3];

  return [(NUIContainerGridView *)self _baselineViewVendForFirstBaseline:v6 fromViews:?];
}

- (id)viewForLastBaselineLayoutInRowAtIndex:(int64_t)a3
{
  if ((*([(NSMutableArray *)self->_rows objectAtIndexedSubscript:?]+ 40) & 0x200) != 0)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_viewRows objectAtIndex:a3];

  return [(NUIContainerGridView *)self _baselineViewVendForFirstBaseline:v6 fromViews:?];
}

- (id)arrangedDebugDescription
{
  v10.receiver = self;
  v10.super_class = NUIContainerGridView;
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ size = {%ld, %ld} cells = ", -[NUIContainerView arrangedDebugDescription](&v10, sel_arrangedDebugDescription), -[NUIContainerGridView numberOfColumns](self, "numberOfColumns"), -[NUIContainerGridView numberOfRows](self, "numberOfRows")];
  _NUIGridArrangement::_NUIGridArrangement(&v9);
  v9.container = self;
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, -1);
  [(NUIContainerGridView *)self bounds];
  v11.width = v4;
  v11.height = v5;
  _NUIGridArrangement::measureCells(&v9, 1, v11);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NUIContainerGridView_arrangedDebugDescription__block_invoke;
  v8[3] = &unk_278329630;
  v8[4] = v3;
  _NUIGridArrangement::enumerateCells(&v9, v8);
  v6 = [v3 stringByAppendingString:@";"];
  if (v9.viewFrames.__begin_)
  {
    v9.viewFrames.__end_ = v9.viewFrames.__begin_;
    operator delete(v9.viewFrames.__begin_);
  }

  if (v9.rows.__begin_)
  {
    v9.rows.__end_ = v9.rows.__begin_;
    operator delete(v9.rows.__begin_);
  }

  if (v9.columns.__begin_)
  {
    v9.columns.__end_ = v9.columns.__begin_;
    operator delete(v9.columns.__begin_);
  }

  if (v9.cells.__begin_)
  {
    v9.cells.__end_ = v9.cells.__begin_;
    operator delete(v9.cells.__begin_);
  }

  return v6;
}

uint64_t __48__NUIContainerGridView_arrangedDebugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCAB68];
  v5 = *(a2 + 64);
  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *(a2 + 56), v17];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%lu", *(a2 + 56), v5];
  }

  v7 = v6;
  v8 = *(a2 + 80);
  if (v8 == 1)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *(a2 + 72), v18];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%lu", *(a2 + 72), v8];
  }

  v10 = [v4 stringWithFormat:@"[%@:%@]", v7, v9];
  v11 = *(a2 + 104);
  if (qword_280AC3108 != -1)
  {
    __48__NUIContainerGridView_arrangedDebugDescription__block_invoke_cold_1();
  }

  v12 = [_MergedGlobals_0 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v11)}];
  if (!v12)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v11];
  }

  v13 = *(a2 + 105);
  if (qword_280AC3108 != -1)
  {
    __48__NUIContainerGridView_arrangedDebugDescription__block_invoke_cold_1();
  }

  v14 = [_MergedGlobals_0 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v13)}];
  if (!v14)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v13];
  }

  [v10 appendFormat:@"(%@|%@)", v12, v14];
  v15 = *(a1 + 32);

  return [v15 appendString:v10];
}

- (id)debugDictionaryForVisibleArrangedSubview:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = NUIContainerGridView;
  v5 = [(NUIContainerView *)&v11 debugDictionaryForVisibleArrangedSubview:?];
  [(NUIContainerGridView *)self getColumnRange:v10 rowRange:v9 forArrangedSubview:a3];
  v12[0] = @"column";
  if (v10[1] < 2uLL)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10[0]];
  }

  else
  {
    v6 = [MEMORY[0x277CCAE60] valueWithRange:v10[0]];
  }

  v13[0] = v6;
  v12[1] = @"row";
  if (v9[1] < 2uLL)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9[0]];
  }

  else
  {
    v7 = [MEMORY[0x277CCAE60] valueWithRange:v9[0]];
  }

  v13[1] = v7;
  [v5 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v13, v12, 2), @"span"}];
  return v5;
}

- (void)invalidateInternalStateForInvalidation:(int64_t)a3
{
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, a3);
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, a3);
  if (a3)
  {
    [(NUIContainerGridView *)self ensureArrangedSubviewsAreValid];
    if (_NUIIsDebuggerAttached())
    {

      [(NUIContainerGridView *)self _verifyInternalGridConsistencyWarningOnly:?];
    }
  }
}

- (void)didInsertArrangedSubview:(id)a3 atIndex:(int64_t)a4
{
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && (*(&self->_gridViewFlags + 2) & 1) == 0)
  {
    [NUIContainerGridView didInsertArrangedSubview:atIndex:];
  }
}

- (void)didRemoveArrangedSubview:(id)a3 atIndex:(int64_t)a4
{
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && (*(&self->_gridViewFlags + 2) & 1) == 0)
  {
    [NUIContainerGridView didRemoveArrangedSubview:atIndex:];
  }
}

- (void)populateGridArrangementCells:(void *)a3
{
  v52 = a3;
  v91 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_columns count];
  v58 = 712;
  v5 = [(NSMutableArray *)self->_rows count];
  self->_visibleCount.width = v4;
  self->_visibleCount.height = v5;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v63 = 720;
  columns = self->_columns;
  v7 = [(NSMutableArray *)columns countByEnumeratingWithState:&v83 objects:v90 count:16];
  if (v7)
  {
    v8 = *v84;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v84 != v8)
        {
          objc_enumerationMutation(columns);
        }

        if ([*(*(&v83 + 1) + 8 * i) isHidden])
        {
          --self->_visibleCount.width;
        }
      }

      v7 = [(NSMutableArray *)columns countByEnumeratingWithState:&v83 objects:v90 count:16];
    }

    while (v7);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v10 = *(&self->super.super.super.super.isa + v58);
  v11 = [v10 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v11)
  {
    v12 = *v80;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v79 + 1) + 8 * j) isHidden])
        {
          --self->_visibleCount.height;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v11);
  }

  std::vector<_NUIGridArrangementCell>::reserve(v52, self->_visibleCount.height * self->_visibleCount.width);
  v60 = v5;
  v61 = v4;
  MEMORY[0x28223BE20](v14);
  v55 = &viewRows - v15;
  bzero(&viewRows - v15, v16);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v59 = 544;
  viewRows = self->_viewRows;
  v46 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v46)
  {
    v57 = 0;
    v50 = 0;
    v51 = 0;
    v45 = *v76;
    do
    {
      v47 = 0;
      v48 = v51 + 1;
      do
      {
        if (*v76 != v45)
        {
          objc_enumerationMutation(viewRows);
        }

        v62 = *(*(&v75 + 1) + 8 * v47);
        if ((*([*(&self->super.super.super.super.isa + v58) objectAtIndexedSubscript:v51] + 40) & 0x200) == 0)
        {
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v54 = [v62 countByEnumeratingWithState:&v70 objects:v87 count:16];
          if (v54)
          {
            v56 = 0;
            v17 = 0;
            v53 = *v71;
            v49 = v51 + 1;
            do
            {
              v18 = 0;
              v19 = v17 + 1;
              do
              {
                if (*v71 != v53)
                {
                  objc_enumerationMutation(v62);
                }

                v74 = 0;
                v74 = *(*(&v70 + 1) + 8 * v18);
                if ((*([*(&self->super.super.super.super.isa + v63) objectAtIndexedSubscript:v17] + 40) & 0x200) == 0)
                {
                  v20 = &v55[8 * v57];
                  if (!v57)
                  {
                    goto LABEL_39;
                  }

                  v21 = v55;
                  v22 = v57;
                  do
                  {
                    v23 = v22 >> 1;
                    v24 = &v21[8 * (v22 >> 1)];
                    v26 = *v24;
                    v25 = (v24 + 1);
                    v22 += ~(v22 >> 1);
                    if (v26 < v74)
                    {
                      v21 = v25;
                    }

                    else
                    {
                      v22 = v23;
                    }
                  }

                  while (v22);
                  if (v21 == v20 || *v21 != v74)
                  {
LABEL_39:
                    v21 = &v55[8 * v57];
                  }

                  if (v21 == v20)
                  {
                    if (v17 + 1 >= v61)
                    {
                      v28 = 1;
                    }

                    else
                    {
                      v27 = v19;
                      v28 = 1;
                      do
                      {
                        v29 = [v62 objectAtIndex:v27];
                        if (v29 != v74)
                        {
                          break;
                        }

                        if ((*([*(&self->super.super.super.super.isa + v63) objectAtIndexedSubscript:v27] + 40) & 0x200) == 0)
                        {
                          ++v28;
                        }

                        ++v27;
                      }

                      while (v27 < v61);
                    }

                    if (v49 >= v60)
                    {
                      v31 = 1;
                    }

                    else
                    {
                      v30 = v48;
                      v31 = 1;
                      do
                      {
                        v32 = [objc_msgSend(*(&self->super.super.super.super.isa + v59) objectAtIndex:{v30), "objectAtIndex:", v17}];
                        if (v32 != v74)
                        {
                          break;
                        }

                        if ((*([*(&self->super.super.super.super.isa + v58) objectAtIndexedSubscript:v30] + 40) & 0x200) == 0)
                        {
                          ++v31;
                        }

                        ++v30;
                      }

                      while (v30 < v60);
                    }

                    v68 = v56;
                    v69 = v28;
                    v66 = v50;
                    v67 = v31;
                    v65 = [(NUIContainerGridView *)&self->super.super.super.super.isa _horizontalAlignmentOfView:v74 inColumn:v17];
                    v33 = [(NUIContainerGridView *)&self->super.super.super.super.isa _verticalAlignmentOfView:v74 row:v51];
                    v64 = v33;
                    v34 = v52;
                    v35 = v52[1];
                    if (v35 >= v52[2])
                    {
                      v36 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView  {__kindof}*&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(v52, &v74, &v68, &v66, &v65, &v64);
                      v34 = v52;
                    }

                    else
                    {
                      _NUIGridArrangementCell::_NUIGridArrangementCell(v52[1], v74, v68, v69, v66, v67, v65, v33);
                      v36 = v35 + 112;
                      v34[1] = v35 + 112;
                    }

                    v34[1] = v36;
                    v37 = v74;
                    v38 = v55;
                    if (v57)
                    {
                      v38 = v55;
                      v39 = v57;
                      do
                      {
                        v40 = v39 >> 1;
                        v41 = &v38[v39 >> 1];
                        v43 = *v41;
                        v42 = v41 + 1;
                        v39 += ~(v39 >> 1);
                        if (v43 < v74)
                        {
                          v38 = v42;
                        }

                        else
                        {
                          v39 = v40;
                        }
                      }

                      while (v39);
                    }

                    if (v38 == v20 || *v38 != v74)
                    {
                      if (v20 > v38)
                      {
                        memmove(v38 + 1, v38, v20 - v38);
                      }

                      *v38 = v37;
                      ++v57;
                    }
                  }

                  ++v56;
                }

                ++v17;
                ++v18;
                ++v19;
              }

              while (v18 != v54);
              v54 = [v62 countByEnumeratingWithState:&v70 objects:v87 count:16];
            }

            while (v54);
          }

          ++v50;
        }

        ++v51;
        ++v47;
        ++v48;
      }

      while (v47 != v46);
      v46 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v46);
  }
}

- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5
{
  v87 = a4;
  v99 = *MEMORY[0x277D85DE8];
  v91 = a5;
  if (a5)
  {
    v7 = [(NUIContainerGridView *)self numberOfRows];
    p_height = &self->_visibleCount.height;
    v9 = &OBJC_IVAR___NUIContainerGridView__rows;
    v86 = 664;
  }

  else
  {
    v7 = [(NUIContainerGridView *)self numberOfColumns];
    v86 = 664;
    p_height = &self->_visibleCount;
    v9 = &OBJC_IVAR___NUIContainerGridView__columns;
  }

  v90 = *v9;
  std::vector<_NUIGridArrangementDimension>::reserve(a3, p_height->width);
  v10 = (8 * v7 + 504) >> 6;
  MEMORY[0x28223BE20](v11);
  v12 = (v10 + 15) & 0x7FFFFFFFFFFFFF0;
  v97 = v7;
  v98 = &v86 - v12;
  bzero(&v86 - v12, v10);
  MEMORY[0x28223BE20](v13);
  v95 = v7;
  v96 = &v86 - v12;
  bzero(&v86 - v12, v10);
  v89 = v7;
  if (v7)
  {
    v14 = 0;
    v15 = 0;
    v16 = v89 - 1;
    v88 = (&self->super.super.super.super.isa + (v91 != 0));
    do
    {
      if ((*([*(&self->super.super.super.super.isa + v90) objectAtIndexedSubscript:{v15, v86}] + 40) & 0x200) == 0)
      {
        if (v91)
        {
          v17 = [(NUIContainerGridView *)self _heightOfRowAtIndex:v15];
        }

        else
        {
          v17 = [(NUIContainerGridView *)self _widthOfColumnAtIndex:v15];
        }

        v19 = *(a3 + 1);
        v18 = *(a3 + 2);
        if (v19 >= v18)
        {
          v21 = 0x6DB6DB6DB6DB6DB7 * ((v19 - *a3) >> 3) + 1;
          if (v21 > 0x492492492492492)
          {
            std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
          }

          v22 = 0x6DB6DB6DB6DB6DB7 * ((v18 - *a3) >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x249249249249249)
          {
            v23 = 0x492492492492492;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(a3, v23);
          }

          _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v19 - *a3) >> 3)), v15, v17);
          v20 = v24 + 56;
          v25 = *(a3 + 1) - *a3;
          v26 = v24 - v25;
          memcpy((v24 - v25), *a3, v25);
          v27 = *a3;
          *a3 = v26;
          *(a3 + 1) = v20;
          *(a3 + 2) = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(a3 + 1), v15, v17);
          v20 = v19 + 56;
          *(a3 + 1) = v19 + 56;
        }

        *(a3 + 1) = v20;
        v28 = 0.0;
        if (v14 < v16)
        {
          v28 = v88[87];
          if (NUIContainerViewLengthIsSystem(0, v28))
          {
            *&v98[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          }
        }

        *(*a3 + 56 * v14++) = v28;
      }

      ++v15;
    }

    while (v89 != v15);
  }

  v30 = *v87;
  v29 = v87[1];
  if (*v87 != v29)
  {
    v31 = self + v86;
    v32 = 72;
    if (!v91)
    {
      v32 = 56;
    }

    v87 = v31 + 2;
    v88 = v32;
    if (v91)
    {
      v33 = 10;
    }

    else
    {
      v33 = 8;
    }

    v86 = self + v86;
    if (v91)
    {
      v34 = (v31 + 2);
    }

    else
    {
      v34 = v31;
    }

    do
    {
      v35 = *(v88 + v30);
      v36 = v30[v33] + v35;
      if (*v34 - 1 > (v36 - 1))
      {
        v37 = (v36 - 1);
        v38 = *([*(&self->super.super.super.super.isa + v90) objectAtIndexedSubscript:*(*a3 + 56 * v37 + 48)] + 32);
        if (!NUIContainerViewLengthIsDefault(v38))
        {
          if (NUIContainerViewLengthIsSystem(0, v38))
          {
            *&v98[(v37 >> 3) & 0x1FF8] |= 1 << (v36 - 1);
          }

          *(*a3 + 56 * v37) = v38;
        }
      }

      v39 = v91 == 0;
      [(NUIContainerView *)self minimumSpacingAdjacentToView:*v30];
      if (v39)
      {
        v50 = v43;
        if (v35)
        {
          v51 = v41;
          if (!NUIContainerViewLengthIsDefault(v41))
          {
            IsSystem = NUIContainerViewLengthIsSystem(0, v51);
            v53 = v35 - 1;
            if (IsSystem)
            {
              v54 = 1 << v53;
              v55 = (v53 >> 3) & 0x1FFFFFFFFFFFFFF8;
              *&v96[v55] |= v54;
              *&v98[v55] &= ~v54;
            }

            else
            {
              v63 = 56 * v53;
              v64 = *(*a3 + v63);
              if (v64 <= v51)
              {
                v64 = v51;
              }

              *(*a3 + v63) = v64;
            }
          }
        }

        if (v36 >= *v86 || NUIContainerViewLengthIsDefault(v50))
        {
          goto LABEL_69;
        }

        v65 = NUIContainerViewLengthIsSystem(0, v50);
        v59 = (v36 - 1);
        if (!v65)
        {
          v60 = *a3;
          v61 = 56 * (v36 - 1);
          v62 = *(*a3 + v61);
          if (v62 <= v50)
          {
            v62 = v50;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v44 = v42;
        if (v35)
        {
          v45 = v40;
          if (!NUIContainerViewLengthIsDefault(v40))
          {
            v46 = NUIContainerViewLengthIsSystem(0, v45);
            v47 = v35 - 1;
            if (v46)
            {
              v48 = 1 << v47;
              v49 = (v47 >> 3) & 0x1FFFFFFFFFFFFFF8;
              *&v96[v49] |= v48;
              *&v98[v49] &= ~v48;
            }

            else
            {
              v56 = 56 * v47;
              v57 = *(*a3 + v56);
              if (v57 <= v45)
              {
                v57 = v45;
              }

              *(*a3 + v56) = v57;
            }
          }
        }

        if (v36 >= *v87 || NUIContainerViewLengthIsDefault(v44))
        {
          goto LABEL_69;
        }

        v58 = NUIContainerViewLengthIsSystem(0, v44);
        v59 = (v36 - 1);
        if (!v58)
        {
          v60 = *a3;
          v61 = 56 * (v36 - 1);
          v62 = *(*a3 + v61);
          if (v62 <= v44)
          {
            v62 = v44;
          }

LABEL_68:
          *&v60[v61] = v62;
          goto LABEL_69;
        }
      }

      v66 = 1 << v59;
      v67 = (v59 >> 3) & 0x1FF8;
      *&v96[v67] |= v66;
      *&v98[v67] &= ~v66;
LABEL_69:
      v30 += 14;
    }

    while (v30 != v29);
  }

  LODWORD(v90) = [(NUIContainerView *)self isBaselineRelativeArrangement];
  nui::stack_bitset::begin(&v97);
  v69 = v68;
  v93 = &v97;
  v94 = v68;
  v70 = v97;
  if (v68 != v97)
  {
    v71 = v89 - 1;
    v88 = *MEMORY[0x277CBE658];
    while (1)
    {
      v72 = *(*a3 + 56 * v69 + 48);
      if (v71 > v72)
      {
        break;
      }

LABEL_83:
      nui::stack_bitset::iterator::operator++(&v93);
      v69 = v94;
      if (v94 == v70 && v93 == &v97)
      {
        goto LABEL_85;
      }
    }

    if (v91)
    {
      v73 = [(NUIContainerGridView *)self viewForLastBaselineLayoutInRowAtIndex:v72];
      if (!v73)
      {
        v73 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{v72), "firstObject"}];
      }

      v74 = [(NUIContainerGridView *)self viewForFirstBaselineLayoutInRowAtIndex:v72 + 1];
      if (v74)
      {
        goto LABEL_80;
      }

      v75 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{v72 + 1), "firstObject"}];
    }

    else
    {
      v73 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{0), "objectAtIndex:", v72}];
      v75 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{0), "objectAtIndex:", v72 + 1}];
    }

    v74 = v75;
LABEL_80:
    v92 = 0.0;
    if (!NUIContainerViewLengthIsSystem(&v92, *(*a3 + 56 * v69)))
    {
      [MEMORY[0x277CBEAD8] raise:v88 format:@"Invalid system spacing"];
    }

    [v73 systemSpacingToAdjecentSiblingView:v74 axis:v91 baselineRelative:v90 multiplier:v92];
    *(*a3 + 56 * v69) = v76;
    goto LABEL_83;
  }

LABEL_85:
  nui::stack_bitset::begin(&v95);
  v78 = v77;
  v93 = &v95;
  v94 = v77;
  v79 = v95;
  if (v77 != v95)
  {
    v80 = v89 - 1;
    v89 = *MEMORY[0x277CBE658];
    do
    {
      v81 = *(*a3 + 56 * v78 + 48);
      if (v80 > v81)
      {
        if (v91)
        {
          v82 = [(NUIContainerGridView *)self viewForLastBaselineLayoutInRowAtIndex:v81];
          v83 = [(NUIContainerGridView *)self viewForFirstBaselineLayoutInRowAtIndex:v81 + 1];
        }

        else
        {
          v82 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{0), "objectAtIndex:", v81}];
          v83 = [-[NSMutableArray objectAtIndex:](self->_viewRows objectAtIndex:{0), "objectAtIndex:", v81 + 1}];
        }

        v84 = v83;
        v92 = 0.0;
        if (!NUIContainerViewLengthIsSystem(&v92, *(*a3 + 56 * v78)))
        {
          [MEMORY[0x277CBEAD8] raise:v89 format:@"Invalid system spacing"];
        }

        [v82 systemSpacingToAdjecentSiblingView:v84 axis:v91 baselineRelative:v90 multiplier:v92];
        if (*(*a3 + 56 * v78) > v85)
        {
          v85 = *(*a3 + 56 * v78);
        }

        *(*a3 + 56 * v78) = v85;
      }

      nui::stack_bitset::iterator::operator++(&v93);
      v78 = v94;
    }

    while (v94 != v79 || v93 != &v95);
  }
}

- (id)_verticalAlignmentOfView:(uint64_t)a3 row:
{
  if (result)
  {
    v4 = result;
    result = [result alignmentForView:a2 inAxis:1];
    if (result == -1)
    {
      v5 = *([v4[89] objectAtIndexedSubscript:a3] + 40);
      if ((~(v5 << 8) & 0xFF00) != 0)
      {
        return v5;
      }

      else
      {
        return ((*(v4 + 182) << 16) >> 24);
      }
    }
  }

  return result;
}

- (uint64_t)_verifyInternalGridConsistencyWarningOnly:(uint64_t)result
{
  v19 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(result, "arrangedSubviews")}];
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = *(v3 + 544);
    v8 = OUTLINED_FUNCTION_8_0(v5, v7);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [v5 addObjectsFromArray:*(8 * i)];
        }

        v9 = OUTLINED_FUNCTION_8_0(v12, v13);
      }

      while (v9);
    }

    if ([v4 isEqualToSet:v5])
    {
      return 1;
    }

    else
    {
      v14 = [v5 mutableCopy];
      [v14 minusSet:v4];
      [v4 minusSet:v5];
      v15 = [MEMORY[0x277CCAB68] string];
      if ([v14 count])
      {
        [v15 appendFormat:@"Views managed by grid missing from arranged subviews: %@\n", v14];
      }

      if ([v4 count])
      {
        [v15 appendFormat:@"Arranged subviews not being managed by grid: %@\n", v4];
      }

      if (a2)
      {
        v16 = _NUILog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v15;
          _os_log_error_impl(&dword_21D09E000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@", v15}];
      }

      return 0;
    }
  }

  return result;
}

- (id)insertColumnAtIndex:(int64_t)a3 withArrangedSubviews:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  [NUIContainerView _assertNotInLayoutPass:?];
  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && [(NSMutableArray *)self->_columns count]< a3)
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_1();
    [v33 handleFailureInMethod:@"column <= _columns.count" object:? file:? lineNumber:? description:?];
  }

  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && ![a4 count])
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_1();
    [v34 handleFailureInMethod:@"arrangedViews.count > 0" object:? file:? lineNumber:? description:?];
  }

  *&self->_gridViewFlags |= 0x20000u;
  v7 = [(NSMutableArray *)self->_rows count];
  v15 = v7;
  if (v7 < 2)
  {
    if (!v7)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = OUTLINED_FUNCTION_10_0(0, v8, v9, v10, v11, v12, v13, v14);
      if (v18)
      {
        v19 = v18;
        v20 = *v38;
        while (1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(a4);
          }

          v21 = -[NSMutableArray addObject:](self->_viewRows, "addObject:", [MEMORY[0x277CBEB18] array]);
          if (!--v19)
          {
            v19 = OUTLINED_FUNCTION_10_0(v21, v22, v23, v24, v25, v26, v27, v28);
            if (!v19)
            {
              break;
            }
          }
        }
      }

      v15 = [a4 count];
    }
  }

  else if ([a4 count] == 1)
  {
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
    v17 = v15;
    do
    {
      [v16 addObject:{objc_msgSend(a4, "firstObject")}];
      --v17;
    }

    while (v17);
    a4 = v16;
  }

  if (((_NUIEnableAPIMisuseAssertions & 1) != 0 || _NUIIsDebuggerAttached()) && v15 && v15 != [a4 count])
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_1();
    [v35 handleFailureInMethod:@"numberOfRows == 0 || numberOfRows == copy.count" object:? file:? lineNumber:? description:?];
  }

  v29 = [a4 count];
  viewRows = self->_viewRows;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__NUIContainerGridView_insertColumnAtIndex_withArrangedSubviews___block_invoke;
  v36[3] = &unk_2783295E8;
  v36[4] = a4;
  v36[5] = a3;
  [(NSMutableArray *)viewRows enumerateObjectsUsingBlock:v36];
  v31 = [[NUIGridDimension alloc] initWithContainerGridView:0 isRow:?];
  [(NSMutableArray *)self->_columns insertObject:v31 atIndex:a3];
  while ([(NSMutableArray *)self->_rows count]< v29)
  {
    [(NSMutableArray *)self->_rows addObject:[[NUIGridDimension alloc] initWithContainerGridView:1 isRow:?]];
  }

  [(NUIContainerView *)self setNeedsInvalidation:4];
  return v31;
}

- (void)_baselineViewVendForFirstBaseline:(void *)a3 fromViews:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  v5 = [a3 countByEnumeratingWithState:0 objects:? count:?];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0];
  v10 = 0.0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (MEMORY[0] != v9)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(8 * i);
      if (v12 != v8)
      {
        if (([*(8 * i) isHidden] & 1) == 0)
        {
          if (a2)
          {
            [v12 effectiveFirstBaselineOffsetFromTop];
          }

          else
          {
            [v12 effectiveBaselineOffsetFromBottom];
          }

          if (v13 > v10)
          {
            v7 = v12;
            v10 = v13;
          }
        }

        v8 = v12;
      }
    }

    OUTLINED_FUNCTION_6_0();
    v6 = [a3 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v6);
  return v7;
}

- (double)_calculateArrangedSizeFittingSize:(CGFloat)a3 forLayout:(CGFloat)a4
{
  if (!a1)
  {
    return 0.0;
  }

  do
  {
    _NUIGridArrangement::resetForInvalidation((a1 + 552), 0);
    v11.width = a3;
    v11.height = a4;
    _NUIGridArrangement::measureCells((a1 + 552), a2, v11);
    v9 = v8;
  }

  while (([a1 mustRestartMeasurement] & 1) != 0);
  return v9;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3
{
  v3 = [(NUIContainerGridView *)self _calculateArrangedSizeFittingSize:a3.width forLayout:a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NUIContainerGridView *)self _calculateArrangedSizeFittingSize:a3.size.width forLayout:a3.size.height];

  _NUIGridArrangement::positionCells(&self->_arrangement, &__block_literal_global_2, x, y, width, height);
}

- (void)debugDictionaryForDimensionConfiguration:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [a2 length];
  if (!NUIContainerViewLengthIsDefault(v4))
  {
    v5 = MEMORY[0x277CCABB0];
    [a2 length];
    [v3 setObject:objc_msgSend(v5 forKeyedSubscript:{"numberWithDouble:"), @"length"}];
  }

  [a2 spacingAfter];
  if (!NUIContainerViewLengthIsDefault(v6))
  {
    v7 = MEMORY[0x277CCABB0];
    [a2 spacingAfter];
    [v3 setObject:objc_msgSend(v7 forKeyedSubscript:{"numberWithDouble:"), @"spacingAfter"}];
  }

  if (([a2 alignment] & 0x8000000000000000) == 0)
  {
    v8 = [a2 alignment];
    if (qword_280AC3108 != -1)
    {
      dispatch_once(&qword_280AC3108, &__block_literal_global_355);
    }

    v9 = [_MergedGlobals_0 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v8)}];
    if (!v9)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"alignment"];
  }

  return v3;
}

- (uint64_t)debugArrayForDimension:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB18] array];
  OUTLINED_FUNCTION_6_0();
  v5 = [a2 countByEnumeratingWithState:0 objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      v8 = 0;
      do
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(8 * v8);
        if ([v9 isHidden])
        {
          v10 = v4;
          v11 = @"hidden";
        }

        else
        {
          v11 = [(NUIContainerGridView *)a1 debugDictionaryForDimensionConfiguration:v9];
          v10 = v4;
        }

        [v10 addObject:v11];
        ++v8;
      }

      while (v6 != v8);
      OUTLINED_FUNCTION_6_0();
      v12 = [a2 countByEnumeratingWithState:? objects:? count:?];
      v6 = v12;
    }

    while (v12);
  }

  return v4;
}

- (id)debugDictionary
{
  v5.receiver = self;
  v5.super_class = NUIContainerGridView;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[NUIContainerView debugDictionary](&v5, sel_debugDictionary)}];
  [v3 setObject:-[NUIContainerGridView debugArrayForDimension:](self forKeyedSubscript:{self->_columns), @"columns"}];
  [v3 setObject:-[NUIContainerGridView debugArrayForDimension:](self forKeyedSubscript:{self->_rows), @"rows"}];
  [v3 setObject:_NUIGridArrangement::debugDictionary(&self->_arrangement) forKeyedSubscript:@"arrangement"];
  return v3;
}

- (double)_widthOfColumnAtIndex:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = *([*(a1 + 720) objectAtIndexedSubscript:a2] + 24);
  if (NUIContainerViewLengthIsDefault(v3))
  {
    return *(a1 + 744);
  }

  return v3;
}

- (double)_heightOfRowAtIndex:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = *([*(a1 + 712) objectAtIndexedSubscript:a2] + 24);
  if (NUIContainerViewLengthIsDefault(v3))
  {
    return *(a1 + 736);
  }

  return v3;
}

- (id)_horizontalAlignmentOfView:(uint64_t)a3 inColumn:
{
  if (result)
  {
    v4 = result;
    result = [result alignmentForView:a2 inAxis:0];
    if (result == -1)
    {
      v5 = *([v4[90] objectAtIndexedSubscript:a3] + 40);
      if ((~(v5 << 8) & 0xFF00) != 0)
      {
        return v5;
      }

      else
      {
        return *(v4 + 728);
      }
    }
  }

  return result;
}

- (uint64_t)arrangedSubviewInColumnAtIndex:rowAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"column < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)arrangedSubviewInColumnAtIndex:rowAtIndex:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"row < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)getColumnRange:rowRange:forArrangedSubview:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"colRangeOut != NULL || rowRangeOut != NULL" object:? file:? lineNumber:? description:?];
}

- (uint64_t)getColumnRange:rowRange:forArrangedSubview:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"findView != nil" object:? file:? lineNumber:? description:?];
}

- (uint64_t)rowAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"row < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)insertRowAtIndex:withArrangedSubviews:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"row <= _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)insertRowAtIndex:withArrangedSubviews:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"arrangedViews.count > 0" object:? file:? lineNumber:? description:?];
}

- (uint64_t)insertRowAtIndex:withArrangedSubviews:.cold.3()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"numberOfColumns == 0 || numberOfColumns == copy.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)moveRowAtIndex:toIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"fromRow < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)moveRowAtIndex:toIndex:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"toRow < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)removeRowAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"row < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)columnAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"column < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)moveColumnAtIndex:toIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"fromCol < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)moveColumnAtIndex:toIndex:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"toCol < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)removeColumnAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"column < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)replaceArrangedSubview:inColumnAtIndex:rowAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"column < _columns.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)replaceArrangedSubview:inColumnAtIndex:rowAtIndex:.cold.2()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  return [v0 handleFailureInMethod:@"row < _rows.count" object:? file:? lineNumber:? description:?];
}

- (uint64_t)didInsertArrangedSubview:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  v0 = objc_opt_class();
  v2 = NSStringFromClass(v0);
  return [OUTLINED_FUNCTION_7_0() handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (uint64_t)didRemoveArrangedSubview:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_11();
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIContainerGridView.mm"];
  OUTLINED_FUNCTION_12();
  [MEMORY[0x277CCA890] currentHandler];
  v0 = objc_opt_class();
  v2 = NSStringFromClass(v0);
  return [OUTLINED_FUNCTION_7_0() handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

@end