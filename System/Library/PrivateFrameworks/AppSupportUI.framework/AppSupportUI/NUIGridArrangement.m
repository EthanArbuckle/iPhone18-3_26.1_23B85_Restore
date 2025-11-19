@interface NUIGridArrangement
- (CGRect)frameForColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5;
- (CGRect)layoutFrameForArrangedSubview:(id)a3 withProposedContentFrame:(CGRect)a4;
- (CGRect)unionFrameForItemsInColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4;
- (CGSize)layoutSizeFittingSize:(CGSize)a3;
- (NUIGridArrangement)initWithContainer:(id)a3 dataSource:(id)a4;
- (double)_cacheDisplayScaleIfNeeded;
- (void)dealloc;
- (void)populateGridArrangementCells:(void *)a3;
- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5;
- (void)positionItemsInBounds:(CGRect)a3 block:(id)a4;
- (void)positionItemsInColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5 block:(id)a6;
@end

@implementation NUIGridArrangement

- (NUIGridArrangement)initWithContainer:(id)a3 dataSource:(id)a4
{
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v8 = _NUIIsDebuggerAttached();
  if (!a3 && (v8 & 1) != 0)
  {
LABEL_20:
    [NUIGridArrangement initWithContainer:a2 dataSource:self];
  }

LABEL_6:
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v9 = _NUIIsDebuggerAttached();
  if (!a4 && (v9 & 1) != 0)
  {
LABEL_21:
    [NUIGridArrangement initWithContainer:a2 dataSource:self];
  }

LABEL_11:
  v15.receiver = self;
  v15.super_class = NUIGridArrangement;
  v10 = [(NUIGridArrangement *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_container, a3);
    objc_storeWeak(&v11->_dataSource, a4);
    *&v11->_flags = *&v11->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *&v11->_flags = *&v11->_flags & 0xFD | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    *&v11->_flags = *&v11->_flags & 0xFB | v13;
    v11->_arrangement.container = v11;
  }

  return v11;
}

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, -1);
  objc_storeWeak(&self->_container, 0);
  objc_storeWeak(&self->_dataSource, 0);
  v3.receiver = self;
  v3.super_class = NUIGridArrangement;
  [(NUIGridArrangement *)&v3 dealloc];
}

- (CGSize)layoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  _NUIGridArrangement::resetForInvalidation(&self->_arrangement, 0);
  v6 = width;
  v7 = height;

  _NUIGridArrangement::measureCells(&self->_arrangement, 0, *&v6);
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)unionFrameForItemsInColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5
{
  v5 = _NUIGridArrangement::unionFrameForSubsetCells(&self->_arrangement, a3, a4, a5);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5
{
  v5 = _NUIGridArrangement::frameForColumnsAndRows(&self->_arrangement, a3, a4, a5);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)populateGridArrangementCells:(void *)a3
{
  v5 = [(NUIGridArrangement *)self dataSource];
  v6 = [(NUIGridArrangementDataSource *)v5 numberOfItemsInGridArrangement:self];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v12 = xmmword_21D0BFB40;
    do
    {
      v17 = v8;
      v18 = 1;
      v16 = v12;
      v14 = 1;
      v15 = 1;
      v9 = [(NUIGridArrangementDataSource *)v5 gridArrangement:self itemAtIndex:v8 columns:&v17 rows:&v16 horizontalAlignment:&v15 verticalAlignment:&v14, v12];
      v13 = v9;
      v10 = *(a3 + 1);
      if (v10 >= *(a3 + 2))
      {
        v11 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*&,_NSRange &,_NSRange,NUIContainerAlignment &,NUIContainerAlignment>(a3, &v13, &v17, &v16, &v15, &v14);
      }

      else
      {
        _NUIGridArrangementCell::_NUIGridArrangementCell(*(a3 + 1), v9, v17, v18, v16, *(&v16 + 1), v15, v14);
        v11 = v10 + 112;
        *(a3 + 1) = v10 + 112;
      }

      *(a3 + 1) = v11;
      ++v8;
    }

    while (v7 != v8);
  }
}

- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5
{
  v8 = self;
  v31 = [(NUIGridArrangement *)self dataSource];
  v9 = *a4;
  v10 = *(a4 + 1);
  if (*a4 != v10)
  {
    v11 = 0;
    v12 = 72;
    if (!a5)
    {
      v12 = 56;
    }

    v13 = 80;
    if (!a5)
    {
      v13 = 64;
    }

    do
    {
      if (*(v9 + v13) + *(v9 + v12) >= v11)
      {
        v11 = *(v9 + v13) + *(v9 + v12);
      }

      v9 += 112;
    }

    while (v9 != v10);
    if (v11)
    {
      v14 = 0;
      v15 = v11;
      v16 = v11 - 1;
      v30 = v8;
      do
      {
        v32 = 0.0;
        v17 = 1.79769313e308;
        if (a5)
        {
          if ((*&v8->_flags & 2) != 0)
          {
            [(NUIGridArrangementDataSource *)v31 gridArrangement:v8 heightOfRowAtIndex:v14 spacingAfter:&v32];
LABEL_16:
            v17 = v18;
          }
        }

        else if (*&v8->_flags)
        {
          [(NUIGridArrangementDataSource *)v31 gridArrangement:v8 widthOfColumnAtIndex:v14 spacingAfter:&v32];
          goto LABEL_16;
        }

        v20 = *(a3 + 1);
        v19 = *(a3 + 2);
        if (v20 >= v19)
        {
          v22 = 0x6DB6DB6DB6DB6DB7 * ((v20 - *a3) >> 3) + 1;
          if (v22 > 0x492492492492492)
          {
            std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
          }

          v23 = 0x6DB6DB6DB6DB6DB7 * ((v19 - *a3) >> 3);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x249249249249249)
          {
            v24 = 0x492492492492492;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(a3, v24);
          }

          _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v20 - *a3) >> 3)), v14, v17);
          v21 = v25 + 56;
          v26 = *(a3 + 1) - *a3;
          v27 = v25 - v26;
          memcpy((v25 - v26), *a3, v26);
          v28 = *a3;
          *a3 = v27;
          *(a3 + 1) = v21;
          *(a3 + 2) = 0;
          if (v28)
          {
            operator delete(v28);
          }

          v8 = v30;
        }

        else
        {
          _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(a3 + 1), v14, v17);
          v21 = v20 + 56;
          *(a3 + 1) = v20 + 56;
        }

        *(a3 + 1) = v21;
        v29 = v32;
        if (v14 >= v16)
        {
          v29 = 0.0;
        }

        *(*a3 + 56 * v14++) = v29;
      }

      while (v14 != v15);
    }
  }
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(NUIGridArrangement *)self container];

  [(NUIArrangementContainer *)v7 contentLayoutSizeFittingSize:a4 forArrangedSubview:width, height];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)layoutFrameForArrangedSubview:(id)a3 withProposedContentFrame:(CGRect)a4
{
  [(NUIArrangementContainer *)[(NUIGridArrangement *)self container] layoutFrameForArrangedSubview:a3 withProposedContentFrame:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  scale = self->_scale;
  MinX = CGRectGetMinX(v58);
  if (scale == 1.0)
  {
    v11 = ceil(MinX);
    v12 = v11 - MinX;
    v13 = floor(MinX);
    if (v12 >= 0.001)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    MinY = CGRectGetMinY(v59);
    v16 = ceil(MinY);
    v17 = v16 - MinY;
    v18 = floor(MinY);
    if (v17 >= 0.001)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v20 = CGRectGetWidth(v60);
    v21 = floor(v20);
    v22 = v20 - v21;
    v23 = ceil(v20);
    if (v22 >= 0.001)
    {
      v24 = v23;
    }

    else
    {
      v24 = v21;
    }

    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v25 = CGRectGetHeight(v61);
    v26 = floor(v25);
    v27 = v25 - v26;
    v28 = ceil(v25);
    if (v27 >= 0.001)
    {
      v29 = v28;
    }

    else
    {
      v29 = v26;
    }
  }

  else
  {
    v30 = scale * MinX;
    v31 = ceil(v30);
    v32 = v31 - v30;
    v33 = floor(v30);
    if (v32 < 0.001)
    {
      v33 = v31;
    }

    v55 = v33 / scale;
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v34 = scale * CGRectGetMinY(v62);
    v35 = ceil(v34);
    v36 = v35 - v34;
    v37 = floor(v34);
    if (v36 < 0.001)
    {
      v37 = v35;
    }

    v19 = v37 / scale;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v38 = scale * CGRectGetWidth(v63);
    v39 = floor(v38);
    v40 = v38 - v39;
    v41 = ceil(v38);
    if (v40 < 0.001)
    {
      v41 = v39;
    }

    v24 = v41 / scale;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v42 = scale * CGRectGetHeight(v64);
    v43 = floor(v42);
    v44 = v42 - v43;
    v45 = ceil(v42);
    v14 = v55;
    if (v44 < 0.001)
    {
      v45 = v43;
    }

    v29 = v45 / scale;
  }

  if ((*&self->_flags & 4) != 0 && [(NUIArrangementContainer *)self->_container effectiveUserInterfaceLayoutDirection]== 1)
  {
    v46 = self->_bounds.origin.x;
    v47 = self->_bounds.origin.y;
    v48 = self->_bounds.size.width;
    v49 = self->_bounds.size.height;
    v65.origin.x = v14;
    v65.origin.y = v19;
    v65.size.width = v24;
    v65.size.height = v29;
    v56 = CGRectGetMinX(v65);
    v66.origin.x = v46;
    v66.origin.y = v47;
    v66.size.width = v48;
    v66.size.height = v49;
    v57 = v56 - CGRectGetMinX(v66);
    v67.origin.x = v46;
    v67.origin.y = v47;
    v67.size.width = v48;
    v67.size.height = v49;
    MaxX = CGRectGetMaxX(v67);
    v68.origin.x = v14;
    v68.origin.y = v19;
    v68.size.width = v24;
    v68.size.height = v29;
    v14 = MaxX - (v57 + CGRectGetWidth(v68));
  }

  v51 = v14;
  v52 = v19;
  v53 = v24;
  v54 = v29;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (double)_cacheDisplayScaleIfNeeded
{
  if (result)
  {
    v1 = result;
    if (result[17] <= 0.0)
    {
      [result container];
      if (objc_opt_respondsToSelector())
      {
        result = [objc_msgSend(v1 "container")];
      }

      else
      {
        result = [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
      }

      *(v1 + 17) = v2;
    }
  }

  return result;
}

- (void)positionItemsInBounds:(CGRect)a3 block:(id)a4
{
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  [(NUIGridArrangement *)v9 _cacheDisplayScaleIfNeeded];
  _NUIGridArrangement::resetForInvalidation((v10 + 1), 0);
  v17.width = v5;
  v17.height = v4;
  _NUIGridArrangement::measureCells((v10 + 1), 1, v17);
  *(v10 + 19) = v7;
  *(v10 + 20) = v6;
  v10[21] = v5;
  v10[22] = v4;
  v12 = OUTLINED_FUNCTION_4();

  _NUIGridArrangement::positionCells(v11, a4, v12, v13, v14, v15);
}

- (void)positionItemsInColumns:(_NSRange)a3 rows:(_NSRange)a4 inBounds:(CGRect)a5 block:(id)a6
{
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  [(NUIGridArrangement *)v11 _cacheDisplayScaleIfNeeded];
  _NUIGridArrangement::resetForInvalidation((v12 + 1), 0);
  v23.width = v7;
  v23.height = v6;
  _NUIGridArrangement::measureCells((v12 + 1), 1, v23);
  *(v12 + 19) = v9;
  *(v12 + 20) = v8;
  v12[21] = v7;
  v12[22] = v6;
  v18 = OUTLINED_FUNCTION_4();

  _NUIGridArrangement::positionSubsetCells(v13, v14, v15, v16, v17, a6, v18, v19, v20, v21);
}

- (uint64_t)initWithContainer:(uint64_t)a1 dataSource:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIGridArrangement.mm"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"<Unknown File>";
  }

  return [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
}

- (uint64_t)initWithContainer:(uint64_t)a1 dataSource:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIGridArrangement.mm"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"<Unknown File>";
  }

  return [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
}

@end