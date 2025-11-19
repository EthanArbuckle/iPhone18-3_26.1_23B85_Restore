@interface _NUIFlowContainer
- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4;
- (uint64_t)canUseSimpleGrid;
- (uint64_t)initWithFlowArrangement:(uint64_t)result;
- (void)dealloc;
- (void)populateGridArrangementCells:(void *)a3;
- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5;
@end

@implementation _NUIFlowContainer

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_gridArrangement, -1);
  v3.receiver = self;
  v3.super_class = _NUIFlowContainer;
  [(_NUIFlowContainer *)&v3 dealloc];
}

- (uint64_t)initWithFlowArrangement:(uint64_t)result
{
  if (result)
  {
    result = [result init];
    if (result)
    {
      *(result + 120) = a2;
      *(result + 17) = *(a2 + 9);
      *(result + 8) = result;
    }
  }

  return result;
}

- (uint64_t)canUseSimpleGrid
{
  if (result)
  {
    return (*(*(result + 120) + 16) != 0) & (objc_opt_respondsToSelector() ^ 1);
  }

  return result;
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4
{
  height = a3.height;
  width = a3.width;
  if ([(_NUIFlowContainer *)self canUseSimpleGrid])
  {
    if (+[_NUIFlowArrangementDummyItem sharedDummyItem]== a4)
    {
      v8 = *MEMORY[0x277CBF3A8];
      v9 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      [*self->_flowArrangement contentLayoutSizeFittingSize:a4 forArrangedSubview:{width, height}];
    }
  }

  else
  {
    _NUIGridArrangement::resetForInvalidation((a4 + 8), 0);
    v10.width = width;
    v10.height = height;
    _NUIGridArrangement::measureCells((a4 + 8), 0, v10);
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)populateGridArrangementCells:(void *)a3
{
  v5 = [(_NUIFlowContainer *)self canUseSimpleGrid];
  flowArrangement = self->_flowArrangement;
  if (v5)
  {
    v7 = *(flowArrangement + 2);
    v8 = *(flowArrangement + 7);
    v9 = *(flowArrangement + 8);
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = *flowArrangement;
      do
      {
        v41 = *v8;
        *&v40 = v10 % v7;
        *(&v40 + 1) = 1;
        v38 = v10 / v7;
        v39 = 1;
        v37 = [v11 alignmentForCell:v8 inAxis:0];
        v12 = [v11 alignmentForCell:v8 inAxis:1];
        v13 = *(a3 + 1);
        if (v13 >= *(a3 + 2))
        {
          v15 = OUTLINED_FUNCTION_1();
          v14 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*,_NSRange,objc_object  {objcproto18NUIArrangementItem}*,NUIContainerAlignment,_NSRange>(v15, v16, v17, v18, v19, v20);
        }

        else
        {
          _NUIGridArrangementCell::_NUIGridArrangementCell(*(a3 + 1), v41, v40, *(&v40 + 1), v38, v39, v37, v12);
          v14 = v13 + 112;
          *(a3 + 1) = v13 + 112;
        }

        *(a3 + 1) = v14;
        ++v10;
        v8 += 8;
      }

      while (v8 != v9);
    }

    v25 = v10 / v7;
    v26 = v10 % v7;
    v27 = (v7 - v10 % v7) % v7;
    if (v27)
    {
      v28 = +[_NUIFlowArrangementDummyItem sharedDummyItem];
      v41 = v28;
      *&v40 = v10 % v7;
      *(&v40 + 1) = (v7 - v10 % v7) % v7;
      v38 = v10 / v7;
      v39 = 1;
      v37 = 0;
      v29 = *(a3 + 1);
      if (v29 >= *(a3 + 2))
      {
        v31 = OUTLINED_FUNCTION_1();
        v30 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowArrangementDummyItem *,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(v31, v32, v33, v34, v35, v36);
      }

      else
      {
        _NUIGridArrangementCell::_NUIGridArrangementCell(*(a3 + 1), v28, v26, v27, v25, 1, 0, 0);
        v30 = v29 + 112;
        *(a3 + 1) = v29 + 112;
      }

      *(a3 + 1) = v30;
    }
  }

  else
  {
    v21 = *(flowArrangement + 10);
    v22 = *(flowArrangement + 11);
    if (v21 != v22)
    {
      v23 = 0;
      v24 = *(a3 + 1);
      do
      {
        v40 = xmmword_21D0BFB40;
        v38 = v23;
        v39 = 1;
        v41 = 0;
        v37 = 3;
        if (v24 >= *(a3 + 2))
        {
          v24 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(a3, v21, &v40, &v38, &v41, &v37);
        }

        else
        {
          std::vector<_NUIGridArrangementCell>::__construct_one_at_end[abi:nn200100]<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(a3, v21, &v40, &v38, &v41, &v37);
          v24 += 112;
        }

        *(a3 + 1) = v24;
        ++v23;
        ++v21;
      }

      while (v21 != v22);
    }
  }
}

- (void)populateGridArrangementDimension:(void *)a3 withCells:(const void *)a4 axis:(int64_t)a5
{
  v9 = [(_NUIFlowContainer *)self canUseSimpleGrid];
  if (a5)
  {
    if (v9)
    {
      v10 = *(self->_flowArrangement + 2);
      v30 = 0;
      if (v10 <= v10 - 1 + (*(a4 + 1) - *a4) / 112)
      {
        do
        {
          OUTLINED_FUNCTION_5(v9);
          OUTLINED_FUNCTION_2();
        }

        while (v11 < (v10 - 1 + (*(a4 + 1) - *a4) / 112) / v10);
      }
    }

    else
    {
      v30 = 0;
      flowArrangement = self->_flowArrangement;
      v28 = flowArrangement[10];
      v29 = flowArrangement[11];
      while (v28 != v29)
      {
        OUTLINED_FUNCTION_5(v9);
        OUTLINED_FUNCTION_2();
        v28 += 8;
      }
    }

    v12 = *(a3 + 1);
    if (*a3 != v12)
    {
      OUTLINED_FUNCTION_0_0();
      do
      {
        OUTLINED_FUNCTION_3();
        if (v18)
        {
          *v13 = v16;
        }

        if (v17)
        {
          v13[7] = v16;
        }
      }

      while (v15 != v14 + 2);
    }
  }

  else
  {
    if (!v9)
    {
      LODWORD(v30) = 0;
      std::vector<_NUIGridArrangementDimension>::emplace_back<int,double const&>(a3, &v30, &NUIContainerViewLengthUseDefault);
      return;
    }

    v19 = *(self->_flowArrangement + 2);
    v30 = 0;
    if (v19)
    {
      do
      {
        std::vector<_NUIGridArrangementDimension>::emplace_back<unsigned long &,double const&>(a3, &v30, self->_flowArrangement + 6);
        OUTLINED_FUNCTION_2();
      }

      while (v20 < v19);
    }

    v12 = *(a3 + 1);
    if (*a3 != v12)
    {
      OUTLINED_FUNCTION_0_0();
      do
      {
        OUTLINED_FUNCTION_3();
        if (v26)
        {
          *v21 = v24;
        }

        if (v25)
        {
          v21[7] = v24;
        }
      }

      while (v23 != v22 + 2);
    }
  }

  *(v12 - 56) = 0;
}

@end