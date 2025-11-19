@interface NUIBoxArrangement
- (CGRect)layoutFrameForArrangedSubview:(id)a3 withProposedContentFrame:(CGRect)a4;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4;
- (CGSize)layoutSizeFittingSize:(CGSize)a3;
- (NUIBoxArrangement)initWithContainer:(id)a3 dataSource:(id)a4;
- (double)_cacheDisplayScaleIfNeeded;
- (void)dealloc;
- (void)populateBoxArrangementCells:(void *)a3;
- (void)positionItemsInBounds:(CGRect)a3 block:(id)a4;
@end

@implementation NUIBoxArrangement

- (NUIBoxArrangement)initWithContainer:(id)a3 dataSource:(id)a4
{
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v8 = _NUIIsDebuggerAttached();
  if (!a3 && (v8 & 1) != 0)
  {
LABEL_14:
    [NUIBoxArrangement initWithContainer:a2 dataSource:self];
  }

LABEL_6:
  if (_NUIEnableAPIMisuseAssertions)
  {
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v9 = _NUIIsDebuggerAttached();
  if (!a4 && (v9 & 1) != 0)
  {
LABEL_15:
    [NUIBoxArrangement initWithContainer:a2 dataSource:self];
  }

LABEL_11:
  v13.receiver = self;
  v13.super_class = NUIBoxArrangement;
  v10 = [(NUIBoxArrangement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_container, a3);
    objc_storeWeak(&v11->_dataSource, a4);
    v11->_arrangement.container = v11;
    *&v11->_flags = *&v11->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
  }

  return v11;
}

- (void)dealloc
{
  _NUIBoxArrangement::resetForInvalidation(&self->_arrangement, -1);
  objc_storeWeak(&self->_container, 0);
  objc_storeWeak(&self->_dataSource, 0);
  v3.receiver = self;
  v3.super_class = NUIBoxArrangement;
  [(NUIBoxArrangement *)&v3 dealloc];
}

- (void)populateBoxArrangementCells:(void *)a3
{
  v5 = self->_dataSource;
  v6 = [(NUIBoxArrangementDataSource *)v5 numberOfItemsInBoxArrangement:self];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v21 = 3;
      v22 = 3;
      v9 = [(NUIBoxArrangementDataSource *)v5 boxArrangement:self itemAtIndex:i horizontalAlignment:&v22 verticalAlignment:&v21];
      v11 = *(a3 + 1);
      v10 = *(a3 + 2);
      if (v11 >= v10)
      {
        v13 = (v11 - *a3) >> 6;
        if ((v13 + 1) >> 58)
        {
          std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
        }

        v14 = v10 - *a3;
        v15 = v14 >> 5;
        if (v14 >> 5 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFC0)
        {
          v16 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowArrangementCell>>(a3, v16);
        }

        _NUIFlowArrangementCell::_NUIFlowArrangementCell(v13 << 6, v9, v22, v21);
        v12 = v17 + 64;
        v18 = *(a3 + 1) - *a3;
        v19 = v17 - v18;
        memcpy((v17 - v18), *a3, v18);
        v20 = *a3;
        *a3 = v19;
        *(a3 + 1) = v12;
        *(a3 + 2) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        _NUIFlowArrangementCell::_NUIFlowArrangementCell(*(a3 + 1), v9, v22, v21);
        v12 = v11 + 64;
        *(a3 + 1) = v12;
      }

      *(a3 + 1) = v12;
    }
  }
}

- (CGSize)layoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  _NUIBoxArrangement::resetForInvalidation(&self->_arrangement, 0);
  v6 = width;
  v7 = height;

  v8 = _NUIBoxArrangement::measureCells(&self->_arrangement, *&v6);
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(NUIBoxArrangement *)self container];

  [(NUIArrangementContainer *)v7 contentLayoutSizeFittingSize:a4 forArrangedSubview:width, height];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)layoutFrameForArrangedSubview:(id)a3 withProposedContentFrame:(CGRect)a4
{
  [(NUIArrangementContainer *)[(NUIBoxArrangement *)self container] layoutFrameForArrangedSubview:a3 withProposedContentFrame:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
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

  if ((*&self->_flags & 1) != 0 && [(NUIArrangementContainer *)self->_container effectiveUserInterfaceLayoutDirection]== 1)
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
    if (result[18] <= 0.0)
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

      *(v1 + 18) = v2;
    }
  }

  return result;
}

- (void)positionItemsInBounds:(CGRect)a3 block:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NUIBoxArrangement *)self _cacheDisplayScaleIfNeeded];
  _NUIBoxArrangement::resetForInvalidation(&self->_arrangement, 0);
  v11.width = width;
  v11.height = height;
  _NUIBoxArrangement::measureCells(&self->_arrangement, v11);
  self->_bounds.origin.x = x;
  self->_bounds.origin.y = y;
  self->_bounds.size.width = width;
  self->_bounds.size.height = height;

  _NUIBoxArrangement::positionCells(&self->_arrangement, a4, x, y, width, height);
}

- (uint64_t)initWithContainer:(uint64_t)a1 dataSource:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIBoxArrangement.mm"];
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
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AppSupportUI/AppSupportUI/NUIBoxArrangement.mm"];
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