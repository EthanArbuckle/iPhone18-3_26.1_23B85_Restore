_NUIViewContainerViewInfo *_NUIContainerViewInfoCreateIfNeeded(objc_object *a1, int a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, "containerViewInfoKey");
  if (!AssociatedObject || (v5 = AssociatedObject, a2) && AssociatedObject == _NUIContainerViewInfoCreateIfNeeded(objc_object *,BOOL)::defaultInfo)
  {
    if (a2)
    {
      v5 = objc_alloc_init(_NUIViewContainerViewInfo);
      objc_setAssociatedObject(a1, "containerViewInfoKey", v5, 1);
    }

    else
    {
      if (_NUIContainerViewInfoCreateIfNeeded(objc_object *,BOOL)::onceToken != -1)
      {
        _NUIContainerViewInfoCreateIfNeeded();
      }

      return _NUIContainerViewInfoCreateIfNeeded(objc_object *,BOOL)::defaultInfo;
    }
  }

  return v5;
}

_NUIViewContainerViewInfo *___ZL35_NUIContainerViewInfoCreateIfNeededP11objc_objectb_block_invoke()
{
  result = objc_alloc_init(_NUIViewContainerViewInfo);
  _NUIContainerViewInfoCreateIfNeeded(objc_object *,BOOL)::defaultInfo = result;
  return result;
}

void _NUIGridArrangement::_NUIGridArrangement(_NUIGridArrangement *this)
{
  this->container = 0;
  *(this + 4) = 0;
  this->baselineRelative = 0;
  *&this->cells.__begin_ = 0u;
  *&this->cells.__cap_ = 0u;
  *&this->columns.__end_ = 0u;
  *&this->rows.__begin_ = 0u;
  *&this->rows.__cap_ = 0u;
  *&this->viewFrames.__end_ = 0u;
}

NSMutableArray *_NUIContainerViewCommonInit(NUIContainerView *a1)
{
  -[NUIContainerView setDebugBoundingBoxesEnabled:](a1, "setDebugBoundingBoxesEnabled:", [objc_opt_class() isDebugBoundingBoxesEnabled]);
  result = objc_alloc_init(MEMORY[0x277CBEB18]);
  a1->_arrangedSubviews = result;
  return result;
}

NSMutableArray *_NUIContainerGridViewCommonInit(NUIContainerGridView *a1)
{
  a1->_viewRows = objc_alloc_init(MEMORY[0x277CBEB18]);
  a1->_arrangement.container = a1;
  a1->_columnWidth = 1.79769313e308;
  a1->_rowHeight = 1.79769313e308;
  __asm { FMOV            V0.2D, #6.0 }

  a1->_spacing = _Q0;
  *&a1->_gridViewFlags = 1;
  *(&a1->_gridViewFlags + 1) = 1;
  a1->_columns = objc_opt_new();
  result = objc_opt_new();
  a1->_rows = result;
  return result;
}

void _NUIBoxArrangement::_NUIBoxArrangement(_NUIBoxArrangement *this)
{
  this->cells.__begin_ = 0;
  this->cells.__end_ = 0;
  this->cells.__cap_ = 0;
  this->viewFrames.__end_ = 0;
  this->viewFrames.__cap_ = 0;
  this->viewFrames.__begin_ = 0;
  this->horzDist = 0;
  this->vertDist = 0;
  this->container = 0;
}

_NUIGridArrangement *_NUIGridArrangement::resetForInvalidation(_NUIGridArrangement *this, char a2)
{
  if ((a2 & 4) != 0)
  {
    this->cells.__end_ = this->cells.__begin_;
  }

  else
  {
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    if (begin != end)
    {
      v4 = MEMORY[0x277CBF3A8];
      do
      {
        v5 = *v4;
        *(begin + 24) = *v4;
        *(begin + 40) = v5;
        *(begin + 11) = 0;
        *(begin + 12) = 0;
        begin = (begin + 112);
      }

      while (begin != end);
    }
  }

  this->hasValidMeasurement = 0;
  this->columns.__end_ = this->columns.__begin_;
  this->rows.__end_ = this->rows.__begin_;
  this->viewFrames.__end_ = this->viewFrames.__begin_;
  return this;
}

void OUTLINED_FUNCTION_9(uint64_t a1)
{

  [NUIContainerView _assertNotInLayoutPass:a1];
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return [v1 countByEnumeratingWithState:v2 objects:v0 count:16];
}

_NUIBoxArrangement *_NUIBoxArrangement::resetForInvalidation(_NUIBoxArrangement *this, char a2)
{
  if ((a2 & 5) != 0)
  {
    this->cells.__end_ = this->cells.__begin_;
  }

  else
  {
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    if (begin != end)
    {
      v4 = MEMORY[0x277CBF3A8];
      do
      {
        *(begin + 8) = *v4;
        *(begin + 24) = *v4;
        *(begin + 5) = 0;
        *(begin + 6) = 0;
        begin = (begin + 64);
      }

      while (begin != end);
    }
  }

  this->viewFrames.__end_ = this->viewFrames.__begin_;
  this->hasValidMeasurement = 0;
  return this;
}

void *std::__tree<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::__map_value_compare<UIView *,std::__value_type<UIView *,_NUIContainerViewArrangedSubview>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,_NUIContainerViewArrangedSubview>>>::__emplace_unique_key_args<UIView *,std::piecewise_construct_t const&,std::tuple<UIView * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<UIView *>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t _NUIIsDebuggerAttached()
{
  if (qword_280AC30E8 != -1)
  {
    _NUIIsDebuggerAttached_cold_1();
  }

  return _MergedGlobals;
}

uint64_t OUTLINED_FUNCTION_14()
{
  *&v0[v1] = 0;

  return [v0 setNeedsInvalidation:4];
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void std::__tree<UIView *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<UIView *>::destroy(a1, *a2);
    std::__tree<UIView *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return [v34 countByEnumeratingWithState:&a15 objects:&a34 count:16];
}

uint64_t std::__tree<UIView *>::__erase_unique<UIView *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<UIView *>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void OUTLINED_FUNCTION_5(uint64_t a1, ...)
{
  va_start(va, a1);
  v4 = (*(v1 + 120) + 40);

  std::vector<_NUIGridArrangementDimension>::emplace_back<unsigned long &,double const&>(v2, va, v4);
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  v2 = *(v0 + 2192);

  return [v2 currentHandler];
}

void *std::__tree<std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>,std::__map_value_compare<UIView *,std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,std::pair<_NSRange,_NSRange> const>>>::__emplace_unique_key_args<UIView *,UIView * const&,std::pair<_NSRange,_NSRange>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t nui_size_cache::find_size(nui_size_cache *this, CGSize a2, char a3, CGSize *a4)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    return 0;
  }

  while (1)
  {
    v6 = *begin;
    if (vabdd_f64(*begin, a2.width) < 0.001 || (v6 - a2.width < -0.001 ? (v7 = a3) : (v7 = 0), (v7 & 1) == 0 && (v8 = begin[2], v8 - v6 < -0.001) && v8 - a2.width < 0.001))
    {
      v9 = begin[1];
      if (vabdd_f64(v9, a2.height) < 0.001)
      {
        break;
      }

      v10 = begin[3];
      if (v10 - v9 < -0.001 && v10 - a2.height < 0.001)
      {
        break;
      }
    }

    begin += 4;
    if (begin == end)
    {
      return 0;
    }
  }

  *a4 = *(begin + 2);
  return 1;
}

void _NUIGridArrangement::measureCells(_NUIGridArrangement *this, int a2, CGSize a3)
{
  height = a3.height;
  width = a3.width;
  p_cells = &this->cells;
  if (this->cells.__end_ == this->cells.__begin_)
  {
    [(_NUIGridArrangementContainer *)this->container populateGridArrangementCells:p_cells];
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    if (end == begin)
    {
      return;
    }

    do
    {
      [*begin contentCompressionResistancePriorityForAxis:0];
      v10 = v9;
      [*begin contentCompressionResistancePriorityForAxis:1];
      *(begin + 2) = v10;
      *(begin + 3) = v11;
      [*begin contentHuggingPriorityForAxis:0];
      v13 = v12;
      [*begin contentHuggingPriorityForAxis:1];
      *(begin + 4) = v13;
      *(begin + 5) = v14;
      begin = (begin + 112);
    }

    while (begin != end);
  }

  if (this->columns.__end_ == this->columns.__begin_)
  {
    [(_NUIGridArrangementContainer *)this->container populateGridArrangementDimension:&this->columns withCells:p_cells axis:0];
  }

  v15 = this->rows.__begin_;
  v16 = this->rows.__end_;
  p_rows = &this->rows;
  if (v16 == v15)
  {
    [(_NUIGridArrangementContainer *)this->container populateGridArrangementDimension:&this->rows withCells:p_cells axis:1];
    v15 = this->rows.__begin_;
    v16 = this->rows.__end_;
  }

  v18 = (v16 - v15) >> 3;
  v19 = -1227133513 * v18;
  v20 = (28087 * ((LODWORD(this->columns.__end_) - LODWORD(this->columns.__begin_)) >> 3));
  v21 = (28087 * v18);
  v22 = this->cells.__begin_;
  for (i = this->cells.__end_; v22 != i; v22 = (v22 + 112))
  {
    v24 = !this->baselineRelative || *(v22 + 9) == 0;
    if (!v24 || *(v22 + 105) << 8 == 512)
    {
      [*v22 effectiveFirstBaselineOffsetFromContentTop];
      *(v22 + 11) = v25;
      if (v25 != 2.22507386e-308)
      {
        v26 = p_rows->__begin_ + 56 * *(v22 + 9);
        if (*(v26 + 32) > v25)
        {
          v25 = *(v26 + 32);
        }

        *(v26 + 32) = v25;
      }
    }

    if (this->baselineRelative && *(v22 + 10) + *(v22 + 9) < v21 || *(v22 + 105) << 8 == 1280)
    {
      [*v22 effectiveBaselineOffsetFromContentBottom];
      *(v22 + 12) = v27;
      if (v27 != 2.22507386e-308)
      {
        v28 = p_rows->__begin_ + 56 * *(v22 + 9) + 56 * *(v22 + 10);
        if (*(v28 - 16) > v27)
        {
          v27 = *(v28 - 16);
        }

        *(v28 - 16) = v27;
      }
    }
  }

  v29 = 0.0;
  v30 = 0.0;
  v31 = v20 - 1;
  if (v20 != 1)
  {
    v32 = this->columns.__begin_;
    do
    {
      v30 = v30 + *v32;
      if (this->baselineRelative)
      {
        v30 = v30 - *(v32 + 11) - *(v32 + 5);
      }

      v32 = (v32 + 56);
      --v31;
    }

    while (v31);
  }

  v33 = v21 - 1;
  if (v21 != 1)
  {
    v34 = p_rows->__begin_;
    v29 = 0.0;
    do
    {
      v29 = v29 + *v34;
      if (this->baselineRelative)
      {
        v29 = v29 - v34[11] - v34[5];
      }

      v34 += 7;
      --v33;
    }

    while (v33);
  }

  v35 = width - v30;
  if (v35 > 0.0)
  {
    v36 = height - v29;
    if (v36 > 0.0)
    {
      if (objc_opt_respondsToSelector())
      {
        v37 = [(_NUIGridArrangementContainer *)this->container canCancelMeasurementForCompression];
      }

      else
      {
        v37 = 0;
      }

      v38 = v19 << 16;
      v39.n128_f64[0] = _NUIGridArrangementHelper::calculateDimensionMinMax(this->container, v37, 1, p_cells, &this->rows, &this->columns, this->baselineRelative, v35, v36);
      v40 = *(this + 8);
      if (v40 == 1)
      {
        v41 = this->columns.__begin_;
        v42 = this->columns.__end_;
        if (v41 == v42)
        {
          v39.n128_u64[0] = 0;
        }

        else
        {
          v43 = 0.0;
          v44 = this->columns.__begin_;
          do
          {
            if (v43 <= *(v44 + 1))
            {
              v43 = *(v44 + 1);
            }

            v44 = (v44 + 56);
          }

          while (v44 != v42);
          v39.n128_u64[0] = 0;
          do
          {
            if (*(v41 + 7) >= 1000.0)
            {
              v45 = *(v41 + 1);
            }

            else
            {
              *(v41 + 1) = v43;
              v45 = v43;
            }

            v39.n128_f64[0] = v39.n128_f64[0] + v45;
            v41 = (v41 + 56);
          }

          while (v41 != v42);
          LOWORD(v40) = *(this + 4);
        }
      }

      v46 = v38 & 0xFFFF0000;
      _NUIGridArrangementHelper::compressDimensionIfNeeded(this->container, v37, 1, v40, v46 | v20, &this->columns.__begin_, v39, v35, v36);
      if (v47.n128_f64[0] >= 0.0)
      {
        if (a2)
        {
          _NUIGridArrangementHelper::expandDimensionIfNeeded(1, *(this + 8), v46 | v20, &this->columns, v47, v35, v36);
        }

        v48.n128_f64[0] = _NUIGridArrangementHelper::calculateDimensionMinMax(this->container, v37, 0, p_cells, &this->rows, &this->columns, this->baselineRelative, v35, v36);
        v49 = *(this + 4);
        if ((v49 & 0xFF00) == 0x100)
        {
          v50 = this->rows.__begin_;
          v51 = this->rows.__end_;
          if (v50 == v51)
          {
            v48.n128_u64[0] = 0;
          }

          else
          {
            v52 = 0.0;
            v53 = this->rows.__begin_;
            do
            {
              if (v52 <= *(v53 + 1))
              {
                v52 = *(v53 + 1);
              }

              v53 = (v53 + 56);
            }

            while (v53 != v51);
            v48.n128_u64[0] = 0;
            do
            {
              if (*(v50 + 7) >= 1000.0)
              {
                v54 = *(v50 + 1);
              }

              else
              {
                *(v50 + 1) = v52;
                v54 = v52;
              }

              v48.n128_f64[0] = v48.n128_f64[0] + v54;
              v50 = (v50 + 56);
            }

            while (v50 != v51);
            v49 = *(this + 4);
          }
        }

        _NUIGridArrangementHelper::compressDimensionIfNeeded(this->container, v37, 0, v49, v46 | v20, &this->rows.__begin_, v48, v35, v36);
        if (v55.n128_f64[0] >= 0.0)
        {
          if (a2)
          {
            _NUIGridArrangementHelper::expandDimensionIfNeeded(0, *(this + 9), v46 | v20, &this->rows, v55, v35, v36);
          }

          this->hasValidMeasurement = 1;
        }
      }
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView *&,_NSRange &,_NSRange &,NUIContainerAlignment,NUIContainerAlignment&>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0A267C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 _NUIGridArrangementCell::_NUIGridArrangementCell(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, __int16 a8)
{
  *a1 = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 104) = a7 | (a8 << 8);
  result = *MEMORY[0x277CBF3A8];
  *(a1 + 24) = *MEMORY[0x277CBF3A8];
  *(a1 + 40) = result;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void *std::vector<_NUIGridArrangementCell>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(result, a2);
    }

    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

BOOL NUIContainerViewLengthIsSystem(double *a1, double a2)
{
  if (a2 <= -1048576.0 && a1 != 0)
  {
    v3 = (a2 + 1048576.0) * -0.00390625;
    if (a2 == -1.79769313e308)
    {
      v3 = 1.0;
    }

    *a1 = v3;
  }

  return a2 <= -1048576.0;
}

void _NUIGridArrangementDimension::_NUIGridArrangementDimension(_NUIGridArrangementDimension *this, __int16 a2, double a3)
{
  *this = 0;
  *(this + 1) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = a2;
}

void *std::vector<_NUIGridArrangementDimension>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(result, a2);
    }

    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> nui::stack_bitset::begin(nui::stack_bitset *this)
{
  v1[1] = 0;
  if ((**(this + 1) & 1) == 0)
  {
    nui::stack_bitset::iterator::operator++(v1);
  }
}

unint64_t *nui::stack_bitset::iterator::operator++(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) + 1;
  v3 = **a1;
  if (v2 < v3)
  {
    v4 = v1[1];
    while ((*(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (-1 << v2)) == 0)
    {
      v2 = (v2 & 0xFFFFFFFFFFFFFFC0) + 64;
      if (v2 >= v3)
      {
        goto LABEL_7;
      }
    }

    v2 = __clz(__rbit64(*(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (-1 << v2))) | v2 & 0xFFFFFFFFFFFFFFC0;
  }

LABEL_7:
  if (v2 >= v3)
  {
    v5 = **a1;
  }

  else
  {
    v5 = v2;
  }

  *(a1 + 8) = v5;
  return v1;
}

double _NUIGridArrangementHelper::calculateDimensionMinMax(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, double a8, double a9)
{
  v25 = a7;
  v26 = a4;
  v24 = *&a1;
  v32[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v15 = a6;
  }

  else
  {
    v15 = a5;
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x4012000000;
  v32[3] = __Block_byref_object_copy__122;
  v32[4] = __Block_byref_object_dispose__123;
  v32[5] = &unk_21D0C1D49;
  v16 = 0x6DB6DB6DB6DB6DB7 * ((v15[1] - *v15) >> 3);
  v17 = (0x6DB6DB6DB6DB6DB8 * ((v15[1] - *v15) >> 3) + 504) >> 6;
  MEMORY[0x28223BE20]();
  v18 = (v17 + 15) & 0x7FFFFFFFFFFFFF0;
  v32[6] = v16;
  v32[7] = &v24 - v18;
  bzero(&v24 - v18, v17);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x4012000000;
  v31[3] = __Block_byref_object_copy__122;
  v31[4] = __Block_byref_object_dispose__123;
  v31[5] = &unk_21D0C1D49;
  MEMORY[0x28223BE20]();
  v31[6] = v16;
  v31[7] = &v24 - v18;
  bzero(&v24 - v18, v17);
  *&v27[0] = MEMORY[0x277D85DD0];
  *&v27[1] = 3221225472;
  *&v27[2] = ___ZN25_NUIGridArrangementHelper24calculateDimensionMinMaxEPU39objcproto28_NUIGridArrangementContainer11objc_objectbbRNSt3__16vectorI23_NUIGridArrangementCellNS2_9allocatorIS4_EEEERNS3_I28_NUIGridArrangementDimensionNS5_IS9_EEEESC_6CGSizeb_block_invoke;
  *&v27[3] = &unk_278329500;
  v28 = a3;
  v29 = v25;
  v27[8] = a8;
  v27[9] = a9;
  v30 = a3 & ~a2;
  *&v27[10] = a5;
  *&v27[11] = a6;
  v27[4] = v24;
  *&v27[5] = v32;
  *&v27[7] = v15;
  *&v27[6] = v31;
  _NUIGridArrangementHelper::enumerateCellRanges(v26, a3, a3 & ~a2, v27);
  v19 = *v15;
  v20 = v15[1];
  v21 = 0.0;
  while (v19 != v20)
  {
    if (NUIContainerViewLengthIsDefault(*(v19 + 8)))
    {
      v22 = *(v19 + 16);
      *(v19 + 8) = v22;
    }

    else
    {
      v22 = *(v19 + 8);
    }

    v21 = v21 + v22;
    v19 += 56;
  }

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
  return v21;
}

void sub_21D0A2D10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void _NUIGridArrangementHelper::enumerateCellRanges(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  MEMORY[0x28223BE20]();
  v10 = &v20[-v9];
  bzero(&v20[-v9], v11);
  if (v7 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 72;
    if (a2)
    {
      v13 = 56;
    }

    v14 = v10 + 1;
    do
    {
      v15 = *(v8 + v13);
      *(v14 - 1) = v8;
      *v14 = v15;
      v14 = (v14 + 24);
      ++v12;
      v8 += 112;
    }

    while (v8 != v7);
  }

  v16 = &v10[3 * v12];
  if (a3)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v21 = v17 | a2;
  v18 = 126 - 2 * __clz(v12);
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,false>(v10, &v10[3 * v12], &v21, v19, 1);
  if (v12)
  {
    do
    {
      (*(a4 + 16))(a4, *v10, v10[1], v10[2]);
      v10 += 3;
    }

    while (v10 != v16);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,false>(uint64_t *a1, __n128 *a2, char *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(v9, &v9[1].n128_u64[1], &a2[-2].n128_u64[1], a3);
        return;
      case 4uLL:

        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(v9, (v9 + 24), v9 + 3, (a2 - 24), a3);
        return;
      case 5uLL:

        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(v9, (v9 + 24), v9 + 3, (v9 + 72), (a2 - 24), a3);
        return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9->n128_u64[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(&v9->n128_u64[3 * v14], v9, &a2[-2].n128_u64[1], a3);
      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(v9, &v9->n128_u64[3 * v14], &a2[-2].n128_u64[1], a3);
      v16 = 3 * v14;
      v17 = &v9[-1] + 3 * v14 - 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(&v9[1].n128_u64[1], v17, a2[-3].n128_u64, a3);
      v18 = &v9[1].n128_u64[v16 + 1];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1 + 6, v18, &a2[-5].n128_u64[1], a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(v17, v15, v18, a3);
      v45 = a1[2];
      v43 = *a1;
      v19 = *v15;
      a1[2] = v15[2];
      *a1 = v19;
      v15[2] = v45;
      *v15 = v43;
      if (a5)
      {
        goto LABEL_27;
      }
    }

    v20 = 8;
    if (!*a3)
    {
      v20 = 12;
    }

    v21 = *(a1 - 1);
    v22 = *(*(a1 - 3) + v20) - *(*a1 + v20);
    v23 = a1[2];
    v24 = v21 - v23;
    if (a3[1] == 1)
    {
      v25 = v24 < 0;
      if (v22 != 0.0)
      {
        v25 = v22 > 0.0;
      }

      if (!v25)
      {
LABEL_31:
        v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell *,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &>(a1, a2, a3);
        goto LABEL_32;
      }
    }

    else
    {
      v26 = v24 < 0;
      if (v21 == v23)
      {
        v27 = v22 > 0.0;
      }

      else
      {
        v27 = v26;
      }

      if (!v27)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v28 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell *,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &>(a1, a2, a3);
    if ((v29 & 1) == 0)
    {
      goto LABEL_30;
    }

    v30 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(a1, v28, a3);
    v9 = (v28 + 24);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(&v28[1].n128_i64[1], a2, a3))
    {
      a4 = -v11;
      a2 = v28;
      if (v30)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v30)
    {
LABEL_30:
      std::__introsort<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,false>(a1, v28, a3, -v11, a5 & 1);
      v9 = (v28 + 24);
LABEL_32:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v33 = a2[-2].n128_u64[1];
  v32 = &a2[-2].n128_i8[8];
  v31 = v33;
  v34 = 12;
  if (*a3)
  {
    v34 = 8;
  }

  v35 = *(v31 + v34) - *(v9->n128_u64[0] + v34);
  v36 = *(v32 + 2);
  v37 = v9[1].n128_u64[0];
  v38 = v36 - v37;
  if (a3[1] == 1)
  {
    v39 = v38 < 0;
    if (v35 != 0.0)
    {
      v39 = v35 > 0.0;
    }

    if (!v39)
    {
      return;
    }

LABEL_63:
    v46 = v9[1].n128_u64[0];
    v44 = *v9;
    v42 = *v32;
    v9[1].n128_u64[0] = *(v32 + 2);
    *v9 = v42;
    *v32 = v44;
    *(v32 + 2) = v46;
    return;
  }

  v40 = v38 < 0;
  if (v36 == v37)
  {
    v41 = v35 > 0.0;
  }

  else
  {
    v41 = v40;
  }

  if (v41)
  {
    goto LABEL_63;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(void *a1, void *a2, void *a3, _BYTE *a4)
{
  if (*a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v5 = *(*a2 + v4);
  v6 = v5 - *(*a1 + v4);
  v7 = a2[2];
  v8 = a1[2];
  v9 = v7 - v8;
  v10 = *(*a3 + v4);
  if (a4[1] == 1)
  {
    v11 = v9 < 0;
    if (v6 != 0.0)
    {
      v11 = v6 > 0.0;
    }

    v12 = v10 - v5;
    v13 = a3[2] - v7 < 0;
    if (v12 != 0.0)
    {
      v13 = v12 > 0.0;
    }

    if (v11)
    {
      if (!v13)
      {
LABEL_11:
        v14 = a1[2];
        v15 = *a1;
        v16 = a2[2];
        *a1 = *a2;
        a1[2] = v16;
        *a2 = v15;
        a2[2] = v14;
        v17 = 12;
        if (*a4)
        {
          v17 = 8;
        }

        v18 = *(*a3 + v17) - *(*a2 + v17);
        v19 = a3[2];
        v20 = a2[2];
        v21 = v19 - v20;
        if (a4[1] == 1)
        {
          v22 = v21 < 0;
          if (v18 != 0.0)
          {
            v22 = v18 > 0.0;
          }

          if (!v22)
          {
            return 1;
          }
        }

        else
        {
          v40 = v21 < 0;
          if (v19 == v20)
          {
            v41 = v18 > 0.0;
          }

          else
          {
            v41 = v40;
          }

          if (!v41)
          {
            return 1;
          }
        }

        v27 = a2[2];
        v28 = *a2;
        v42 = a3[2];
        *a2 = *a3;
        a2[2] = v42;
        goto LABEL_42;
      }

LABEL_26:
      v27 = a1[2];
      v28 = *a1;
      v29 = a3[2];
      *a1 = *a3;
      a1[2] = v29;
LABEL_42:
      *a3 = v28;
      a3[2] = v27;
      return 1;
    }

    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v23 = a3[2];
    if (v23 == v7)
    {
      v24 = v10 > v5;
    }

    else
    {
      v24 = v23 - v7 < 0;
    }

    v25 = v9 < 0;
    if (v7 == v8)
    {
      v26 = v6 > 0.0;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      if (!v24)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    if (!v24)
    {
      return 0;
    }
  }

  v31 = a2[2];
  v32 = *a2;
  v33 = a3[2];
  *a2 = *a3;
  a2[2] = v33;
  *a3 = v32;
  a3[2] = v31;
  v34 = 12;
  if (*a4)
  {
    v34 = 8;
  }

  v35 = *(*a2 + v34) - *(*a1 + v34);
  v36 = a2[2];
  v37 = a1[2];
  v38 = v36 - v37;
  if (a4[1] == 1)
  {
    v39 = v38 < 0;
    if (v35 != 0.0)
    {
      v39 = v35 > 0.0;
    }

    if (!v39)
    {
      return 1;
    }
  }

  else
  {
    v43 = v38 < 0;
    if (v36 == v37)
    {
      v44 = v35 > 0.0;
    }

    else
    {
      v44 = v43;
    }

    if (!v44)
    {
      return 1;
    }
  }

  v45 = a1[2];
  v46 = *a1;
  v47 = a2[2];
  *a1 = *a2;
  a1[2] = v47;
  *a2 = v46;
  a2[2] = v45;
  return 1;
}

void ___ZN25_NUIGridArrangementHelper24calculateDimensionMinMaxEPU39objcproto28_NUIGridArrangementContainer11objc_objectbbRNSt3__16vectorI23_NUIGridArrangementCellNS2_9allocatorIS4_EEEERNS3_I28_NUIGridArrangementDimensionNS5_IS9_EEEESC_6CGSizeb_block_invoke(uint64_t a1, double *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v8 = 12;
  if (*(a1 + 96))
  {
    v8 = 8;
  }

  v9 = *(a2 + v8);
  v10 = 20;
  if (*(a1 + 96))
  {
    v10 = 16;
  }

  v11 = *(a2 + v10);
  v12 = a4 - 1;
  if (a4 == 1)
  {
    if (!NUIContainerViewLengthIsDefault(*(**(a1 + 56) + 56 * a3 + 8)))
    {
      v64 = *(**(a1 + 56) + 56 * a3 + 8);
      goto LABEL_85;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(a1 + 96) & 1) == 0)
  {
LABEL_8:
    v13 = 0;
    v14 = *(a1 + 97);
    goto LABEL_11;
  }

  v14 = 0;
  v13 = 1;
LABEL_11:
  v15 = *(a1 + 56);
  v16 = 0.0;
  if (a3 < a3 + v4 - 1)
  {
    v17 = (*v15 + 56 * a3);
    do
    {
      v16 = v16 + *v17;
      if (v14)
      {
        v16 = v16 - v17[11] - v17[5];
      }

      v17 += 7;
      --v12;
    }

    while (v12);
  }

  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  if (v13)
  {
    if (v19 < 1.70141173e38)
    {
      v20 = v16 + v19;
      v21 = 0.0;
      if (*(a1 + 98) == 1)
      {
        v22 = *v15;
        v23 = v15[1];
        if (*v15 != v23)
        {
          v24 = 0;
          v25 = -a3;
          do
          {
            v27 = v25 < v4 && a3 <= v24 || *(v22 + 24) <= v9;
            if (!v27 && !NUIContainerViewLengthIsDefault(*(v22 + 16)))
            {
              v21 = v21 + *(v22 + 16);
            }

            ++v24;
            v22 += 56;
            ++v25;
          }

          while (v22 != v23);
        }
      }

      v19 = v20 - v21;
    }

    if (v18 < 1.70141173e38)
    {
      v28 = *(a2 + 9);
      v29 = *(a2 + 10);
      v30 = 0.0;
      if (v28 < v28 + v29 - 1)
      {
        v31 = (**(a1 + 80) + 56 * v28);
        v32 = v29 - 1;
        do
        {
          v30 = v30 + *v31;
          if (*(a1 + 97))
          {
            v30 = v30 - v31[11] - v31[5];
          }

          v31 += 7;
          --v32;
        }

        while (v32);
      }

      v18 = v18 + v30;
    }
  }

  else
  {
    if (v19 < 1.70141173e38)
    {
      v33 = *(a2 + 7);
      v34 = *(a2 + 8);
      v35 = *(a1 + 88);
      v36 = 0.0;
      v37 = 0.0;
      if (v33 < v34 + v33)
      {
        v38 = (*v35 + 56 * v33 + 8);
        v39 = *(a2 + 8);
        do
        {
          v40 = *v38;
          v38 += 7;
          v37 = v37 + v40;
          --v39;
        }

        while (v39);
      }

      if (v33 < v34 + v33 - 1)
      {
        v41 = v34 - 1;
        v42 = (*v35 + 56 * v33);
        v36 = 0.0;
        do
        {
          v43 = *v42;
          v42 += 7;
          v36 = v36 + v43;
          --v41;
        }

        while (v41);
      }

      v19 = v37 + v36;
    }

    if (v18 < 1.70141173e38)
    {
      v44 = v16 + v18;
      v45 = 0.0;
      if (*(a1 + 98) == 1)
      {
        v46 = *v15;
        v47 = v15[1];
        if (*v15 != v47)
        {
          v48 = 0;
          v49 = -a3;
          do
          {
            v51 = v49 < v4 && a3 <= v48 || *(v46 + 24) <= v9;
            if (!v51 && !NUIContainerViewLengthIsDefault(*(v46 + 16)))
            {
              v45 = v45 + *(v46 + 16);
            }

            ++v48;
            v46 += 56;
            ++v49;
          }

          while (v46 != v47);
        }
      }

      v18 = v44 - v45;
    }
  }

  v52 = *(a1 + 32);
  v53 = a2[5];
  if (vabdd_f64(v53, *MEMORY[0x277CBF3A8]) >= 0.001 || vabdd_f64(a2[6], *(MEMORY[0x277CBF3A8] + 8)) >= 0.001)
  {
    if (vabdd_f64(v53, v19) < 0.001)
    {
      if (vabdd_f64(a2[6], v18) < 0.001)
      {
        goto LABEL_73;
      }

LABEL_71:
      if (v18 - a2[4] >= -0.001)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v54 = v19 - a2[3];
    v55 = [*a2 isLayoutSizeDependentOnPerpendicularAxis];
    if (v54 < -0.001)
    {
      v56 = 1;
    }

    else
    {
      v56 = v55;
    }

    if ((v56 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

LABEL_72:
  [v52 contentLayoutSizeFittingSize:*a2 forArrangedSubview:{v19, v18}];
  *(a2 + 3) = v57;
  *(a2 + 4) = v58;
  a2[5] = v19;
  a2[6] = v18;
LABEL_73:
  v59 = 4;
  if (*(a1 + 96))
  {
    v59 = 3;
  }

  v60 = 0.0;
  if (*(a1 + 96))
  {
    goto LABEL_83;
  }

  v61 = *(a2 + 105) << 8;
  if (v61 == 1280)
  {
    v65 = a2[12];
    if (v65 != 2.22507386e-308)
    {
      v60 = *(**(a1 + 80) + 56 * *(a2 + 9) + 56 * *(a2 + 10) - 16) - v65;
    }

    goto LABEL_83;
  }

  if (v61 != 512 || (v62 = a2[11], v62 == 2.22507386e-308))
  {
LABEL_83:
    v63 = 0.0;
    goto LABEL_84;
  }

  v63 = *(**(a1 + 80) + 56 * *(a2 + 9) + 32) - v62;
LABEL_84:
  v64 = a2[v59] + v63 + v60 - v16;
LABEL_85:
  v66 = *(*(a1 + 40) + 8);
  v67 = *(v66 + 48) + 63;
  if (v67 >= 0x40)
  {
    bzero(*(v66 + 56), (v67 >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  if (a3 < a3 + v4)
  {
    v68 = 56 * a3;
    v69 = v4;
    v70 = a3;
    do
    {
      v71 = **(a1 + 56) + v68;
      if (*(v71 + 16) >= v64)
      {
        v72 = v64;
      }

      else
      {
        v72 = *(v71 + 16);
      }

      if (NUIContainerViewLengthIsDefault(*(v71 + 8)))
      {
        v73 = *(*(*(a1 + 40) + 8) + 56);
        *(v73 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      }

      v64 = v64 - v72;
      ++v70;
      v68 += 56;
      --v69;
    }

    while (v69);
  }

  if (v64 > 0.001)
  {
    v74 = *(*(a1 + 48) + 8);
    v75 = *(v74 + 48) + 63;
    if (v75 >= 0x40)
    {
      bzero(*(v74 + 56), (v75 >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    v76 = (*(*(a1 + 40) + 8) + 48);
    nui::stack_bitset::begin(v76);
    v104 = v76;
    v105 = v77;
    v78 = *v76;
    if (v77 != *v76)
    {
      v79 = v77;
      v80 = 2000.0;
      do
      {
        v81 = *(**(a1 + 56) + 56 * v79 + 28);
        if (v81 <= v80)
        {
          v82 = *(a1 + 48);
          if (v81 < v80)
          {
            v83 = *(v82 + 8);
            v84 = *(v83 + 48) + 63;
            if (v84 >= 0x40)
            {
              bzero(*(v83 + 56), (v84 >> 3) & 0x1FFFFFFFFFFFFFF8);
              v82 = *(a1 + 48);
            }
          }

          else
          {
            v81 = v80;
          }

          *(*(*(v82 + 8) + 56) + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
          v80 = v81;
        }

        nui::stack_bitset::iterator::operator++(&v104);
        v79 = v105;
      }

      while (v105 != v78 || v104 != v76);
    }

    v86 = *(*(a1 + 48) + 8);
    v88 = *(v86 + 48);
    v87 = (v86 + 48);
    v89 = v88 + 63;
    v90 = 0.0;
    if ((v88 + 63) >= 0x40)
    {
      v91 = 0;
      v92 = v89 >> 6;
      v93 = *(*(*(a1 + 48) + 8) + 56);
      do
      {
        v94 = *v93++;
        v95 = vcnt_s8(v94);
        v95.i16[0] = vaddlv_u8(v95);
        v91 += v95.u32[0];
        --v92;
      }

      while (v92);
      v90 = v91;
    }

    v96 = v64 / v90;
    nui::stack_bitset::begin(v87);
    v104 = v87;
    v105 = v97;
    v98 = *v87;
    if (v97 != *v87)
    {
      do
      {
        v99 = **(a1 + 56) + 56 * v97;
        *(v99 + 16) = v96 + *(v99 + 16);
        nui::stack_bitset::iterator::operator++(&v104);
        v97 = v105;
      }

      while (v105 != v98 || v104 != v87);
    }
  }

  if (a3 < a3 + v4)
  {
    v101 = (**(a1 + 56) + 56 * a3 + 28);
    do
    {
      v102 = *(v101 - 1);
      v103 = *v101;
      if (v102 <= v9)
      {
        v102 = v9;
      }

      if (v103 <= v11)
      {
        v103 = v11;
      }

      *(v101 - 1) = v102;
      *v101 = v103;
      v101 += 14;
      --v4;
    }

    while (v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGSize,CGSize>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

char *std::vector<std::pair<CGSize,CGSize>>::insert(void *a1, char *a2, char *a3)
{
  v3 = a2;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 5) + 1;
    if (v11 >> 59)
    {
      std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    if (v13 >> 4 > v11)
    {
      v11 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 5;
    v34 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGSize,CGSize>>>(a1, v14);
    }

    v31 = 0;
    v32 = 32 * v15;
    v33 = (32 * v15);
    std::__split_buffer<std::pair<CGSize,CGSize>>::emplace_back<std::pair<CGSize,CGSize> const&>(&v31, a3);
    v17 = v32;
    memcpy(v33, v3, a1[1] - v3);
    v18 = *a1;
    v19 = v32;
    *&v33 = v33 + a1[1] - v3;
    a1[1] = v3;
    v20 = v3 - v18;
    v21 = (v19 - (v3 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v33;
    *&v33 = v22;
    *(&v33 + 1) = v23;
    v31 = v22;
    v32 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else
  {
    v7 = a2 - v5;
    if (a2 == v5)
    {
      v16 = *(a3 + 1);
      *v5 = *a3;
      *(v5 + 1) = v16;
      a1[1] = v5 + 32;
    }

    else
    {
      if (v5 < 0x20)
      {
        v8 = a1[1];
      }

      else
      {
        v8 = v5 + 32;
        v9 = *(v5 - 1);
        *v5 = *(v5 - 2);
        *(v5 + 1) = v9;
      }

      a1[1] = v8;
      if (v5 != a2 + 32)
      {
        v24 = v5 - 64;
        v25 = v5 - 16;
        v26 = v7 + 32;
        do
        {
          *(v25 - 1) = *v24;
          *v25 = *(v24 + 1);
          v25 -= 32;
          v24 -= 32;
          v26 += 32;
        }

        while (v26);
        v8 = a1[1];
      }

      v27 = v8 <= a3 || a2 > a3;
      v28 = 32;
      if (v27)
      {
        v28 = 0;
      }

      v29 = &a3[v28];
      *a2 = *v29;
      *(a2 + 1) = *(v29 + 1);
    }
  }

  return v3;
}

void sub_21D0A40C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(void *result, void *a2, _BYTE *a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result + 3;
  if (result + 3 == a2)
  {
    return result;
  }

  v4 = 0;
  v5 = result;
  do
  {
    v6 = v5;
    if (*a3)
    {
      v7 = 8;
    }

    else
    {
      v7 = 12;
    }

    v9 = v6[2];
    v8 = v6[3];
    v10 = *(v8 + v7);
    v11 = *(*v6 + v7);
    v5 = v3;
    v12 = v10 - v11;
    v13 = v6[5];
    v14 = v13 - v9;
    if (a3[1] == 1)
    {
      v15 = v14 < 0;
      if (v12 != 0.0)
      {
        v15 = v12 > 0.0;
      }

      if (!v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v16 = v14 < 0;
      if (v13 == v9)
      {
        v17 = v12 > 0.0;
      }

      else
      {
        v17 = v16;
      }

      if (!v17)
      {
        goto LABEL_34;
      }
    }

    v18 = v6[4];
    *v5 = *v6;
    v5[2] = v6[2];
    v19 = result;
    if (v6 == result)
    {
      goto LABEL_33;
    }

    v20 = v4;
    while (1)
    {
      v21 = result + v20;
      if (*a3)
      {
        v22 = 8;
      }

      else
      {
        v22 = 12;
      }

      v23 = *(v8 + v22) - *(*(result + v20 - 24) + v22);
      v24 = *(v21 - 1);
      v25 = v13 - v24;
      if (a3[1] == 1)
      {
        v26 = v25 < 0;
        if (v23 != 0.0)
        {
          v26 = v23 > 0.0;
        }

        if (!v26)
        {
          v19 = v6;
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v27 = v25 < 0;
      v28 = v13 == v24 ? v23 > 0.0 : v27;
      if (v28 != 1)
      {
        break;
      }

LABEL_30:
      v6 -= 3;
      *v21 = *(result + v20 - 24);
      *(v21 + 2) = *(result + v20 - 8);
      v20 -= 24;
      if (!v20)
      {
        v19 = result;
        goto LABEL_33;
      }
    }

    v19 = (result + v20);
LABEL_33:
    *v19 = v8;
    v19[1] = v18;
    v19[2] = v13;
LABEL_34:
    v3 = v5 + 3;
    v4 += 24;
  }

  while (v5 + 3 != a2);
  return result;
}

char *nui_size_cache::insert_size(nui_size_cache *this, CGSize a2, CGSize a3)
{
  v8[0] = a2;
  v8[1] = a3;
  begin = this->__begin_;
  end = this->__end_;
  v9 = 0;
  v6 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<CGSize,CGSize> *>,std::pair<CGSize,CGSize>,std::__identity,std::__less<void,void>>(begin, &v8[0].width, (end - begin) >> 5);
  return std::vector<std::pair<CGSize,CGSize>>::insert(this, v6, v8);
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView *&,_NSRange &,_NSRange &,NUIContainerAlignment &,NUIContainerAlignment>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0A4454(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<CGSize,CGSize> *>,std::pair<CGSize,CGSize>,std::__identity,std::__less<void,void>>(double *result, double *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *a2;
    v4 = a2[1];
    do
    {
      v5 = a3 >> 1;
      v6 = &result[4 * (a3 >> 1)];
      v7 = *v6 - v3;
      if (v7 < -0.001 || fabs(v7) < 0.001 && v6[1] - v4 < -0.001 || (v8 = v3 - *v6, v8 >= -0.001) && (fabs(v8) >= 0.001 || v4 - v6[1] >= -0.001) && ((v9 = v6[2] - a2[2], v9 < -0.001) || fabs(v9) < 0.001 && v6[3] - a2[3] < -0.001))
      {
        result = v6 + 4;
        v5 = a3 + ~v5;
      }

      a3 = v5;
    }

    while (v5);
  }

  return result;
}

__n128 std::__split_buffer<std::pair<CGSize,CGSize>>::emplace_back<std::pair<CGSize,CGSize> const&>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v7 = v2 - *a1;
      v6 = v7 == 0;
      v8 = v7 >> 4;
      if (v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGSize,CGSize>>>(a1[4], v9);
    }

    v5 = ((v4 - *a1) >> 5) + 1;
    v3 = &v4[-2 * (v5 / 2)];
    if (v4 != v2)
    {
      do
      {
        *v3 = *v4;
        v3[1] = v4[1];
        v4 += 2;
        v3 += 2;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[2 * (v5 / -2)];
    a1[2] = v3;
  }

  result = *a2;
  v11 = *(a2 + 16);
  *v3 = *a2;
  v3[1] = v11;
  a1[2] += 32;
  return result;
}

void _NUIGridArrangementHelper::compressDimensionIfNeeded(void *a1, int a2, int a3, uint64_t a4, unint64_t a5, void *a6, __n128 a7, double a8, double a9)
{
  v9 = a7.n128_f64[0];
  v79 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    a8 = a9;
  }

  a7.n128_f64[0] = a8 - a7.n128_f64[0];
  if (a7.n128_f64[0] < -0.001)
  {
    if (!a2 || (v15 = [a1 shouldCancelMeasurementForCompressionInAxis:a3 ^ 1u], a7.n128_u64[0] = -1.0, (v15 & 1) == 0))
    {
      v16 = v9 - a8;
      if (a3)
      {
        LOWORD(v17) = a5;
      }

      else
      {
        v17 = a5 >> 16;
      }

      MEMORY[0x28223BE20](a7);
      v19 = (&v72 - v18);
      bzero(&v72 - v18, (8 * v17 + 504) >> 6);
      v77 = v17;
      v78 = v19;
      bzero(v19, (8 * v17 + 504) >> 6);
      v21 = v17 - 64;
      if (v17 < 0x40uLL)
      {
        v23 = 0;
        v24 = v17;
      }

      else
      {
        v22 = v21 >> 6;
        memset(v19, 255, 8 * (v21 >> 6) + 8);
        v23 = v22 + 1;
        v24 = v17 & 0x3F;
      }

      *&v19[v23] |= ~(-1 << v24);
      MEMORY[0x28223BE20](v20);
      v26 = (&v72 - v25);
      bzero(&v72 - v25, (8 * v17 + 504) >> 6);
      v75 = v17;
      v76 = v26;
      bzero(v26, (8 * v17 + 504) >> 6);
      while (v16 > 0.001)
      {
        if (v77 + 63 < 0x40)
        {
          break;
        }

        v27 = 0;
        v28 = (v77 + 63) >> 6;
        v29 = v78;
        do
        {
          v30 = *v29++;
          v31 = vcnt_s8(v30);
          v31.i16[0] = vaddlv_u8(v31);
          v27 += v31.u32[0];
          --v28;
        }

        while (v28);
        if (!v27)
        {
          break;
        }

        nui::stack_bitset::begin(&v77);
        v34 = v33;
        v73 = &v77;
        v74 = v33;
        v35 = v77;
        if (v33 != v77)
        {
          v36 = 2000.0;
          do
          {
            v37 = *(*a6 + 56 * v34 + 24);
            if (v37 <= v36)
            {
              if (v37 < v36)
              {
                v38 = v76;
                if (v75 + 63 >= 0x40)
                {
                  bzero(v76, ((v75 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
                }

                v36 = v37;
              }

              else
              {
                v38 = v76;
              }

              *(v38 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
            }

            nui::stack_bitset::iterator::operator++(&v73);
            v34 = v74;
          }

          while (v74 != v35 || v73 != &v77);
          v34 = v77;
        }

        if (v34 + 63 >= 0x40)
        {
          v39 = (v34 + 63) >> 6;
          v40 = v76;
          v41 = v78;
          do
          {
            v42 = *v40++;
            *v41++ &= ~v42;
            --v39;
          }

          while (v39);
        }

        while (v16 > 0.001)
        {
          if (v75 + 63 < 0x40)
          {
            break;
          }

          v43 = 0;
          v44 = (v75 + 63) >> 6;
          v45 = v76;
          do
          {
            v46 = *v45++;
            v32.n128_u64[0] = vcnt_s8(v46);
            v32.n128_u16[0] = vaddlv_u8(v32.n128_u64[0]);
            v43 += v32.n128_u32[0];
            --v44;
          }

          while (v44);
          if (!v43)
          {
            break;
          }

          MEMORY[0x28223BE20](v32);
          v48 = &v72 - v47;
          if (a4 == 2)
          {
            nui::stack_bitset::begin(&v75);
            v73 = &v75;
            v74 = v49;
            v50 = v75;
            if (v49 == v75)
            {
              v51 = 0.0;
            }

            else
            {
              v51 = 0.0;
              do
              {
                do
                {
                  v51 = v51 + *(*a6 + 56 * v49 + 16);
                  nui::stack_bitset::iterator::operator++(&v73);
                  v49 = v74;
                }

                while (v74 != v50);
              }

              while (v73 != &v75);
            }

            nui::stack_bitset::begin(&v75);
            v52 = &v75;
            v54 = v53;
            v73 = &v75;
            v74 = v53;
            if (v53 != v75)
            {
              do
              {
                v55 = *(*a6 + 56 * v54 + 8);
                if (v55 <= 0.001)
                {
                  v52 = nui::stack_bitset::erase(&v75, v52, v54);
                  v54 = v56;
                  v73 = v52;
                  v74 = v56;
                }

                else
                {
                  if (v16 * (v55 / v51) < v55)
                  {
                    v55 = v16 * (v55 / v51);
                  }

                  *&v48[8 * v54] = v55;
                  nui::stack_bitset::iterator::operator++(&v73);
                  v52 = v73;
                  v54 = v74;
                }
              }

              while (v54 != v75 || v52 != &v75);
            }
          }

          else
          {
            v57 = 0.0;
            if (v75 + 63 >= 0x40)
            {
              v58 = 0;
              v59 = (v75 + 63) >> 6;
              v60 = v76;
              do
              {
                v61 = *v60++;
                v62 = vcnt_s8(v61);
                v62.i16[0] = vaddlv_u8(v62);
                v58 += v62.u32[0];
                --v59;
              }

              while (v59);
              v57 = v58;
            }

            nui::stack_bitset::begin(&v75);
            v73 = &v75;
            v74 = v63;
            if (v63 != v75)
            {
              v64 = &v75;
              v65 = v63;
              v66 = v16 / v57;
              do
              {
                v67 = *(*a6 + 56 * v65 + 8);
                if (v67 <= 0.001)
                {
                  v64 = nui::stack_bitset::erase(&v75, v64, v65);
                  v65 = v68;
                  v73 = v64;
                  v74 = v68;
                }

                else
                {
                  if (v66 >= v67)
                  {
                    v66 = *(*a6 + 56 * v65 + 8);
                  }

                  *&v48[8 * v65] = v66;
                  nui::stack_bitset::iterator::operator++(&v73);
                  v64 = v73;
                  v65 = v74;
                }
              }

              while (v65 != v75 || v64 != &v75);
            }
          }

          nui::stack_bitset::begin(&v75);
          v73 = &v75;
          v74 = v69;
          v70 = v75;
          if (v69 != v75)
          {
            do
            {
              do
              {
                v71 = *&v48[8 * v69];
                v16 = v16 - v71;
                *(*a6 + 56 * v69 + 8) = *(*a6 + 56 * v69 + 8) - v71;
                nui::stack_bitset::iterator::operator++(&v73);
                v69 = v74;
              }

              while (v74 != v70);
            }

            while (v73 != &v75);
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

double _NUIGridArrangementHelper::expandDimensionIfNeeded(int a1, uint64_t a2, unint64_t a3, double **a4, __n128 a5, double a6, double a7)
{
  v7 = a5.n128_f64[0];
  v102 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a5.n128_f64[0] = a6;
  }

  else
  {
    a5.n128_f64[0] = a7;
  }

  if (v7 - a5.n128_f64[0] >= -0.001 || (a2 - 6) < 3)
  {
    return v7;
  }

  v10 = a5.n128_f64[0] - v7;
  if ((a2 - 3) <= 2)
  {
    v11 = *a4;
    v12 = a4[1] - *a4;
    if (v12 == 56)
    {
      v11[1] = v10 + v11[1];
      return v10 + v7;
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3) - 1;
    if (a2 == 3)
    {
      if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) != 1)
      {
        v14 = v10 / v13;
        do
        {
          *v11 = v14 + *v11;
          v11 += 7;
          --v13;
        }

        while (v13);
      }

      return v10 + v7;
    }

    v25 = MEMORY[0x28223BE20](a5);
    v33 = (&v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = *a4;
    v35 = (*a4)[1];
    v36 = (*a4)[7 * v28 + 1];
    if (a2 == 5)
    {
      v37 = v36 - v35;
      if (v36 - v35 < 0.0)
      {
        v37 = 0.0;
      }

      v10 = v10 - v37;
      if (v35 < v36)
      {
        v36 = (*a4)[1];
      }

      v38 = v36;
    }

    else
    {
      v38 = (*a4)[1];
    }

    v62 = v27 & ~v25;
    if (v26 < 1)
    {
      v64 = 0.0;
      v67 = 0.0;
      if (v31 == v30)
      {
LABEL_61:
        if (!v28)
        {
          v71 = -1;
          goto LABEL_83;
        }

        v70 = 0;
        v71 = v29 - 2;
        v72 = (v10 + v64 + v67 - (v36 * 0.5 + v38 * 0.5)) / v28;
        v73 = v35 - v38;
        while (1)
        {
          v74 = v38;
          if (v70)
          {
            v74 = v34[7 * v70 + 1];
          }

          v75 = v36;
          if (v70 != v71)
          {
            v75 = v34[7 * v70 + 8];
          }

          v76 = &v34[7 * v70];
          v33[v70] = *v76;
          v77 = 0.0;
          if (v70 >= 1)
          {
            break;
          }

          if (v70)
          {
            goto LABEL_72;
          }

          *v76 = v72 + v74 * 0.5 + 0.0 - (v74 * 0.5 + 0.0) - (v74 * 0.5 + v75 * 0.5);
          *v34 = *v34 - v73;
LABEL_77:
          if (++v70 == v28)
          {
            if (v29 == 2)
            {
              return v10 + v7;
            }

LABEL_83:
            v84 = &v34[7 * v29 - 21];
            v85 = v71;
            do
            {
              v86 = v33[v85];
              v87 = v84[7] - v86;
              if (v87 < 0.001)
              {
                v84[7] = v86;
                *v84 = v87 + *v84;
              }

              v84 -= 7;
              --v85;
            }

            while (v85);
            do
            {
              v88 = *v34 - *v33;
              if (v88 < 0.001)
              {
                *v34 = *v33;
                v34[7] = v88 + v34[7];
              }

              ++v33;
              v34 += 7;
              --v71;
            }

            while (v71);
            return v10 + v7;
          }
        }

        v78 = v34 + 1;
        v79 = v70;
        do
        {
          v80 = *v78;
          v78 += 7;
          v77 = v77 + v80;
          --v79;
        }

        while (v79);
LABEL_72:
        v81 = 0.0;
        v82 = v70;
        v83 = v34;
        do
        {
          v81 = v81 + *v83;
          if (v62)
          {
            v81 = v81 - v83[11] - v83[5];
          }

          v83 += 7;
          --v82;
        }

        while (v82);
        *v76 = v72 + v74 * 0.5 + v77 + v81 - (v74 * 0.5 + v77 + v81) - (v74 * 0.5 + v75 * 0.5);
        goto LABEL_77;
      }
    }

    else
    {
      v63 = v34 + 1;
      v64 = 0.0;
      v65 = v29;
      do
      {
        v66 = *v63;
        v63 += 7;
        v64 = v64 + v66;
        --v65;
      }

      while (v65);
    }

    v67 = 0.0;
    v68 = v29;
    v69 = *a4;
    do
    {
      v67 = v67 + *v69;
      if (v62)
      {
        v67 = v67 - v69[11] - v69[5];
      }

      v69 += 7;
      --v68;
    }

    while (v68);
    goto LABEL_61;
  }

  if (a1)
  {
    LOWORD(v15) = a3;
  }

  else
  {
    v15 = a3 >> 16;
  }

  v16 = v15;
  v17 = (8 * v15 + 504) >> 6;
  MEMORY[0x28223BE20](a5);
  v19 = (&v96 - v18);
  bzero(&v96 - v18, v17);
  v100 = v15;
  v101 = v19;
  bzero(v19, v17);
  v21 = v15 - 64;
  if (v15 < 0x40uLL)
  {
    v23 = 0;
    v24 = v15;
  }

  else
  {
    v22 = v21 >> 6;
    memset(v19, 255, 8 * (v21 >> 6) + 8);
    v23 = v22 + 1;
    v24 = v15 & 0x3F;
  }

  *&v19[v23] |= ~(-1 << v24);
  MEMORY[0x28223BE20](v20);
  v40 = (&v96 - v39);
  bzero(&v96 - v39, v17);
  v99[0] = v16;
  v99[1] = v40;
  bzero(v40, v17);
  if (v10 > 0.001)
  {
    if (v16)
    {
      v41 = 0;
      v42 = v16 + 63;
      v43 = (v16 + 63) >> 6;
      v44 = v43;
      do
      {
        v45 = *v19++;
        v46 = vcnt_s8(v45);
        v46.i16[0] = vaddlv_u8(v46);
        v41 += v46.u32[0];
        --v44;
      }

      while (v44);
      if (v41)
      {
        nui::stack_bitset::begin(&v100);
        v48 = v47;
        v97 = &v100;
        v98 = v47;
        v49 = v100;
        if (v47 != v100)
        {
          v50 = v42 >> 3;
          v51 = 2000.0;
          do
          {
            v52 = *(&(*a4)[7 * v48 + 3] + 1);
            if (v52 <= v51)
            {
              if (v52 < v51)
              {
                bzero(v40, v50 & 0x3FF8);
                v51 = v52;
              }

              *(v40 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
            }

            nui::stack_bitset::iterator::operator++(&v97);
            v48 = v98;
          }

          while (v98 != v49 || v97 != &v100);
          v48 = v100;
        }

        if (v48 + 63 >= 0x40)
        {
          v53 = (v48 + 63) >> 6;
          v54 = v101;
          v55 = v40;
          do
          {
            v56 = *v55++;
            *v54++ &= ~v56;
            --v53;
          }

          while (v53);
        }

        if (a2 == 2)
        {
          nui::stack_bitset::begin(v99);
          v97 = v99;
          v98 = v57;
          v58 = v99[0];
          v59 = 0.0;
          if (v57 != v99[0])
          {
            do
            {
              do
              {
                v59 = v59 + (*a4)[7 * v57 + 2];
                nui::stack_bitset::iterator::operator++(&v97);
                v57 = v98;
              }

              while (v98 != v58);
            }

            while (v97 != v99);
          }

          nui::stack_bitset::begin(v99);
          v97 = v99;
          v98 = v60;
          v61 = v99[0];
          if (v60 != v99[0])
          {
            do
            {
              do
              {
                (*a4)[7 * v60 + 1] = (*a4)[7 * v60 + 1] + v10 * ((*a4)[7 * v60 + 1] / v59);
                nui::stack_bitset::iterator::operator++(&v97);
                v60 = v98;
              }

              while (v98 != v61);
            }

            while (v97 != v99);
          }
        }

        else
        {
          v90 = 0;
          do
          {
            v91 = *v40++;
            v92 = vcnt_s8(v91);
            v92.i16[0] = vaddlv_u8(v92);
            v90 += v92.u32[0];
            --v43;
          }

          while (v43);
          v93 = v10 / v90;
          nui::stack_bitset::begin(v99);
          v97 = v99;
          v98 = v94;
          v95 = v99[0];
          if (v94 != v99[0])
          {
            do
            {
              do
              {
                (*a4)[7 * v94 + 1] = v93 + (*a4)[7 * v94 + 1];
                nui::stack_bitset::iterator::operator++(&v97);
                v94 = v98;
              }

              while (v98 != v95);
            }

            while (v97 != v99);
          }
        }

        return v10 + v7;
      }
    }
  }

  return v7;
}

void std::vector<CGRect>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGSize,CGSize>>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _NUIGridArrangement::positionSubsetCells(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (*(a1 + 11))
  {
    v17 = a2 == 0x7FFFFFFFFFFFFFFFLL || a4 == 0x7FFFFFFFFFFFFFFFLL;
    v18 = (a1 + 88);
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 4);
    v22 = &off_21D0BF000;
    if (v21 != (*(a1 + 96) - *(a1 + 88)) >> 5)
    {
      std::vector<CGRect>::resize(v18, v21);
      v27 = *(a1 + 8);
      if (*(a1 + 8) < 7)
      {
        v36 = *MEMORY[0x277CBF3A8];
      }

      else
      {
        v28 = *(a1 + 40);
        v29 = 0.0;
        v30 = 0.0;
        if (*(a1 + 48) != v28)
        {
          v31 = v28 + 1;
          v32 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - v28) >> 3);
          do
          {
            v33 = *v31;
            v31 += 7;
            v30 = v30 + v33;
            --v32;
          }

          while (v32);
        }

        v34 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - v28) >> 3) - 1;
        if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - v28) >> 3) != 1)
        {
          v29 = 0.0;
          do
          {
            v35 = *v28;
            v28 += 7;
            v29 = v29 + v35;
            --v34;
          }

          while (v34);
        }

        v36 = a9 - (v30 + v29);
        if ((v27 & 0x7F) == 7)
        {
          v36 = v36 * 0.5;
        }
      }

      v53 = a3;
      if (v27 < 1792)
      {
        v47 = a5;
        v48 = a6;
        v49 = v17;
        v50 = *(MEMORY[0x277CBF3A8] + 8);
      }

      else
      {
        v40 = *(a1 + 64);
        v41 = 0.0;
        v42 = 0.0;
        if (*(a1 + 72) != v40)
        {
          v43 = v40 + 1;
          v44 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - v40) >> 3);
          do
          {
            v45 = *v43;
            v43 += 7;
            v42 = v42 + v45;
            --v44;
          }

          while (v44);
        }

        v46 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - v40) >> 3) - 1;
        if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - v40) >> 3) != 1)
        {
          v41 = 0.0;
          do
          {
            v41 = v41 + *v40;
            if (*(a1 + 10))
            {
              v41 = v41 - v40[11] - v40[5];
            }

            v40 += 7;
            --v46;
          }

          while (v46);
        }

        v47 = a5;
        v48 = a6;
        v49 = v17;
        v50 = a10 - (v42 + v41);
        if ((v27 & 0x7F00) == 0x700)
        {
          v50 = v50 * 0.5;
        }
      }

      v22 = &off_21D0BF000;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v65 = ___ZN19_NUIGridArrangement19positionSubsetCellsE8_NSRangeS0_6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS1_E_block_invoke;
      v66 = &__block_descriptor_88_e108_v24__0___NUIGridArrangementCell_____ff____ff__CGSize_dd__CGSize_dd___NSRange_QQ___NSRange_QQ____dd_b8b8_8Q16l;
      v67 = a1;
      v68 = a7;
      v69 = a8;
      v70 = a9;
      v71 = a10;
      v72 = v36;
      v73 = v50;
      v19 = *(a1 + 16);
      v20 = *(a1 + 24);
      if (v19 == v20)
      {
        v17 = v49;
        a6 = v48;
        a5 = v47;
        a3 = v53;
      }

      else
      {
        v51 = 0;
        do
        {
          v65(v64, v19, v51++);
          v19 += 14;
        }

        while (v19 != v20);
        v19 = *(a1 + 16);
        v20 = *(a1 + 24);
        v17 = v49;
        a6 = v48;
        a5 = v47;
        a3 = v53;
        v22 = &off_21D0BF000;
      }
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = *(v22 + 358);
    v55 = ___ZN19_NUIGridArrangement19positionSubsetCellsE8_NSRangeS0_6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS1_E_block_invoke_2;
    v56 = &unk_2783294B0;
    v63 = v17;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    v62 = a5;
    v57 = a6;
    v58 = a1;
    if (v19 != v20)
    {
      v52 = 0;
      do
      {
        v55(v54, v19, v52++);
        v19 += 14;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v37 = _NUIIsDebuggerAttached();
    v38 = _NUILog();
    v39 = v38;
    if (v37)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        _NUIGridArrangement::positionSubsetCells(a1, v39);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      _NUIGridArrangement::positionSubsetCells(a1, v39);
    }
  }
}

void std::vector<CGRect>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<CGRect>::__append(a1, a2 - v2);
  }
}

void ___ZN19_NUIGridArrangement19positionSubsetCellsE8_NSRangeS0_6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS1_E_block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 7);
  if (v7 < 1)
  {
    if (!v7)
    {
      v14 = 0.0;
      goto LABEL_10;
    }

    v8 = *(v6 + 40);
    v9 = 0.0;
  }

  else
  {
    v8 = *(v6 + 40);
    v9 = 0.0;
    v10 = 1;
    v11 = *(a2 + 7);
    do
    {
      v9 = v9 + v8[v10];
      v10 += 7;
      --v11;
    }

    while (v11);
  }

  v12 = 0.0;
  do
  {
    v13 = *v8;
    v8 += 7;
    v12 = v12 + v13;
    --v7;
  }

  while (v7);
  v14 = v9 + v12;
LABEL_10:
  MinX = CGRectGetMinX(*(a1 + 40));
  v16 = *(a2 + 9);
  if (v16 < 1)
  {
    if (!v16)
    {
      v22 = 0.0;
      goto LABEL_21;
    }

    v17 = *(v6 + 64);
    v18 = 0.0;
  }

  else
  {
    v17 = *(v6 + 64);
    v18 = 0.0;
    v19 = 1;
    v20 = *(a2 + 9);
    do
    {
      v18 = v18 + v17[v19];
      v19 += 7;
      --v20;
    }

    while (v20);
  }

  v21 = 0.0;
  do
  {
    v21 = v21 + *v17;
    if (*(v6 + 10))
    {
      v21 = v21 - v17[11] - v17[5];
    }

    v17 += 7;
    --v16;
  }

  while (v16);
  v22 = v18 + v21;
LABEL_21:
  v23 = *(a1 + 72);
  MinY = CGRectGetMinY(*(a1 + 40));
  v25 = *(a2 + 7);
  v26 = *(a2 + 8);
  v27 = 0.0;
  v28 = 0.0;
  if (v25 < v26 + v25)
  {
    v29 = (*(v6 + 40) + 56 * v25 + 8);
    v30 = *(a2 + 8);
    do
    {
      v31 = *v29;
      v29 += 7;
      v28 = v28 + v31;
      --v30;
    }

    while (v30);
  }

  if (v25 < v26 + v25 - 1)
  {
    v32 = v26 - 1;
    v33 = (*(v6 + 40) + 56 * v25);
    v27 = 0.0;
    do
    {
      v34 = *v33;
      v33 += 7;
      v27 = v27 + v34;
      --v32;
    }

    while (v32);
  }

  v36 = *(a2 + 9);
  v35 = *(a2 + 10);
  v37 = 0.0;
  v38 = 0.0;
  if (v36 < v35 + v36)
  {
    v39 = (*(v6 + 64) + 56 * v36 + 8);
    v40 = *(a2 + 10);
    do
    {
      v41 = *v39;
      v39 += 7;
      v38 = v38 + v41;
      --v40;
    }

    while (v40);
  }

  v42 = v22 + MinY;
  if (v36 < v35 + v36 - 1)
  {
    v43 = (*(v6 + 64) + 56 * v36);
    v44 = v35 - 1;
    v37 = 0.0;
    do
    {
      v37 = v37 + *v43;
      if (*(v6 + 10))
      {
        v37 = v37 - v43[11] - v43[5];
      }

      v43 += 7;
      --v44;
    }

    while (v44);
  }

  v45 = v14 + MinX + v23;
  v46 = v42 + *(a1 + 80);
  v47 = v28 + v27;
  v48 = v38 + v37;
  v49 = *(a2 + 52);
  if (v49 > 0xFF || (v49 << 8) != 0)
  {
    v51 = *v6;
    v52 = a2[5];
    if (vabdd_f64(v52, *MEMORY[0x277CBF3A8]) >= 0.001 || vabdd_f64(a2[6], *(MEMORY[0x277CBF3A8] + 8)) >= 0.001)
    {
      if (vabdd_f64(v52, v47) < 0.001)
      {
        if (vabdd_f64(a2[6], v48) < 0.001)
        {
          v53 = a2[4];
          goto LABEL_55;
        }

LABEL_53:
        v53 = a2[4];
        if (v48 - v53 >= -0.001)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      v62 = v47 - a2[3];
      v63 = [*a2 isLayoutSizeDependentOnPerpendicularAxis];
      if (v62 < -0.001)
      {
        v64 = 1;
      }

      else
      {
        v64 = v63;
      }

      if ((v64 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_54:
    [v51 contentLayoutSizeFittingSize:*a2 forArrangedSubview:{v47, v48}];
    *(a2 + 3) = v65;
    a2[4] = v53;
    a2[5] = v47;
    a2[6] = v48;
LABEL_55:
    v66 = *(v6 + 64) + 56 * *(a2 + 9);
    v67 = *(v66 + 32);
    v68 = *(v66 + 40);
    v83 = a2[11];
    v84 = a2[12];
    v54 = *MEMORY[0x277CBF3A0];
    rect = *(MEMORY[0x277CBF3A0] + 8);
    if (a2[3] >= v47)
    {
      Width = v47;
    }

    else
    {
      Width = a2[3];
    }

    if (v53 >= v48)
    {
      Height = v48;
    }

    else
    {
      Height = v53;
    }

    v69 = v49;
    v82 = v67;
    if (v69 > 2)
    {
      if (v69 - 4 >= 2)
      {
        if (v69 == 3)
        {
          v91.origin.x = v45;
          v91.origin.y = v46;
          v91.size.width = v47;
          v91.size.height = v48;
          MidX = CGRectGetMidX(v91);
          v92.origin.x = v54;
          v92.origin.y = rect;
          v92.size.width = Width;
          v92.size.height = Height;
          v54 = MidX + CGRectGetWidth(v92) * -0.5;
        }
      }

      else
      {
        v87.origin.x = v45;
        v87.origin.y = v46;
        v87.size.width = v47;
        v87.size.height = v48;
        v80 = v45;
        v70 = v68;
        MaxX = CGRectGetMaxX(v87);
        v88.origin.x = v54;
        v88.origin.y = rect;
        v88.size.width = Width;
        v88.size.height = Height;
        v54 = MaxX - CGRectGetWidth(v88);
        v68 = v70;
        v45 = v80;
      }
    }

    else if (v69 - 1 >= 2)
    {
      if (!v49)
      {
        v89.origin.x = v45;
        v89.origin.y = v46;
        v89.size.width = v47;
        v89.size.height = v48;
        v54 = CGRectGetMinX(v89);
        v90.origin.x = v45;
        v90.origin.y = v46;
        v90.size.width = v47;
        v90.size.height = v48;
        Width = CGRectGetWidth(v90);
      }
    }

    else
    {
      v86.origin.x = v45;
      v86.origin.y = v46;
      v86.size.width = v47;
      v86.size.height = v48;
      v54 = CGRectGetMinX(v86);
    }

    v72 = (v49 >> 8);
    if (v72 <= 2)
    {
      if (!(v49 >> 8))
      {
        v99.origin.x = v45;
        v99.origin.y = v46;
        v99.size.width = v47;
        v99.size.height = v48;
        v78 = CGRectGetMinY(v99);
        v100.origin.x = v45;
        v100.origin.y = v46;
        v100.size.width = v47;
        v100.size.height = v48;
        Height = CGRectGetHeight(v100);
        v46 = v78;
        goto LABEL_45;
      }

      if (v72 == 1)
      {
        goto LABEL_82;
      }

      if (v72 == 2)
      {
        if (v83 != 2.22507386e-308)
        {
          v93.origin.x = v45;
          v93.origin.y = v46;
          v93.size.width = v47;
          v93.size.height = v48;
          v73 = CGRectGetMinY(v93);
          v74 = v83;
          v75 = v82 + v73;
LABEL_81:
          v46 = v75 - v74;
          goto LABEL_45;
        }

LABEL_82:
        v96.origin.x = v45;
        v96.origin.y = v46;
        v96.size.width = v47;
        v96.size.height = v48;
        v46 = CGRectGetMinY(v96);
        goto LABEL_45;
      }

LABEL_86:
      v46 = rect;
      goto LABEL_45;
    }

    if (v72 == 3)
    {
      v101.origin.x = v45;
      v101.origin.y = v46;
      v101.size.width = v47;
      v101.size.height = v48;
      MidY = CGRectGetMidY(v101);
      v102.origin.x = v54;
      v102.origin.y = rect;
      v102.size.width = Width;
      v102.size.height = Height;
      v46 = MidY + CGRectGetHeight(v102) * -0.5;
      goto LABEL_45;
    }

    if (v72 != 4)
    {
      if (v72 != 5)
      {
        goto LABEL_86;
      }

      if (v84 != 2.22507386e-308)
      {
        v94.origin.x = v45;
        v94.origin.y = v46;
        v94.size.width = v47;
        v94.size.height = v48;
        MaxY = CGRectGetMaxY(v94);
        v95.origin.x = v54;
        v95.origin.y = rect;
        v95.size.width = Width;
        v95.size.height = Height;
        v75 = MaxY - CGRectGetHeight(v95);
        v74 = v68 - v84;
        goto LABEL_81;
      }
    }

    v97.origin.x = v45;
    v97.origin.y = v46;
    v97.size.width = v47;
    v97.size.height = v48;
    v77 = CGRectGetMaxY(v97);
    v98.origin.x = v54;
    v98.origin.y = rect;
    v98.size.width = Width;
    v98.size.height = Height;
    v46 = v77 - CGRectGetHeight(v98);
    goto LABEL_45;
  }

  v54 = v45;
  Width = v28 + v27;
  Height = v38 + v37;
LABEL_45:
  [*v6 layoutFrameForArrangedSubview:*a2 withProposedContentFrame:{v54, v46, Width, Height}];
  *(&v58 + 1) = v57;
  *(&v60 + 1) = v59;
  v61 = (*(v6 + 88) + 32 * a3);
  *v61 = v60;
  v61[1] = v58;
}

double NUIRectRoundToScale(CGRect a1, double a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  MinX = CGRectGetMinX(a1);
  if (a2 == 1.0)
  {
    v7 = ceil(MinX);
    v8 = v7 - MinX;
    v9 = floor(MinX);
    if (v8 >= 0.001)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetMinY(v17);
  }

  else
  {
    v11 = MinX * a2;
    v12 = ceil(v11);
    v13 = v12 - v11;
    v14 = floor(v11);
    if (v13 < 0.001)
    {
      v14 = v12;
    }

    v10 = v14 / a2;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGRectGetMinY(v18);
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetHeight(v20);
  return v10;
}

uint64_t ___ZN19_NUIGridArrangement19positionSubsetCellsE8_NSRangeS0_6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS1_E_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 80) & 1) != 0 || ((v4 = *(a2 + 56), v5 = *(result + 48), v7 = v4 >= v5, v6 = v4 - v5, v7) ? (v7 = v6 >= *(result + 56)) : (v7 = 1), !v7 || ((v8 = *(a2 + 72), v9 = *(result + 64), v7 = v8 >= v9, v10 = v8 - v9, v7) ? (v11 = v10 >= *(result + 72)) : (v11 = 1), !v11)))
  {
    v3 = *(result + 40);
    return (*(*(result + 32) + 16))(*(*(v3 + 88) + 32 * a3), *(*(v3 + 88) + 32 * a3 + 8), *(*(v3 + 88) + 32 * a3 + 16), *(*(v3 + 88) + 32 * a3 + 24));
  }

  return result;
}

float64_t _NUIBoxArrangement::measureCells(_NUIBoxArrangement *this, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  begin = this->cells.__begin_;
  end = this->cells.__end_;
  p_cells = &this->cells;
  if (end == begin)
  {
    v8 = MEMORY[0x277CBF3A8];
    this->measureSize = *MEMORY[0x277CBF3A8];
    [(_NUIBoxArrangementContainer *)this->container populateBoxArrangementCells:p_cells];
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    if (end == begin)
    {
      v15 = *v8;
      return v15.f64[0];
    }
  }

  this->maxBaseLinePair.baseLineFromTop = 0.0;
  this->maxBaseLinePair.baseLineFromBottom = 0.0;
  while (begin != end)
  {
    v9 = *(begin + 57);
    if (v9 == 5)
    {
      [*begin effectiveBaselineOffsetFromContentBottom];
      *(begin + 6) = baseLineFromTop;
      if (baseLineFromTop != 2.22507386e-308)
      {
        p_baseLineFromBottom = &this->maxBaseLinePair.baseLineFromBottom;
        goto LABEL_10;
      }
    }

    else if (v9 == 2)
    {
      [*begin effectiveFirstBaselineOffsetFromContentTop];
      *(begin + 5) = baseLineFromTop;
      if (baseLineFromTop != 2.22507386e-308)
      {
        p_baseLineFromBottom = &this->maxBaseLinePair;
LABEL_10:
        if (p_baseLineFromBottom->baseLineFromTop > baseLineFromTop)
        {
          baseLineFromTop = p_baseLineFromBottom->baseLineFromTop;
        }

        p_baseLineFromBottom->baseLineFromTop = baseLineFromTop;
      }
    }

    begin = (begin + 64);
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [(_NUIBoxArrangementContainer *)this->container canCancelMeasurementForCompression];
  }

  else
  {
    v12 = 0;
  }

  v13 = this->cells.__begin_;
  v14 = this->cells.__end_;
  v15 = vnegq_f64(0);
  if (v13 != v14)
  {
    v16 = MEMORY[0x277CBF3A8];
    while (1)
    {
      v28 = v15;
      v17 = *(v13 + 5);
      v18 = *(v13 + 6);
      v19 = this->maxBaseLinePair.baseLineFromTop - v17 + 0.0;
      if (v17 == 2.22507386e-308)
      {
        v19 = 0.0;
      }

      if (v18 == 2.22507386e-308)
      {
        v20 = v19;
      }

      else
      {
        v20 = this->maxBaseLinePair.baseLineFromBottom - v18 + v19;
      }

      v21 = *v13;
      container = this->container;
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }

      [(_NUIBoxArrangementContainer *)container contentLayoutSizeFittingSize:*v13 forArrangedSubview:10000.0, 10000.0, *&v28];
      *(v13 + 1) = *&v23.f64[0];
      *(v13 + 2) = v24;
      if (v23.f64[0] > width)
      {
        break;
      }

      if (v24 > height - v20)
      {
        v25 = this->container;
        v26 = 1;
        goto LABEL_29;
      }

LABEL_32:
      v23.f64[1] = v20 + v24;
      v15 = vbslq_s8(vcgtq_f64(v23, v28), v23, v28);
      v13 = (v13 + 64);
      if (v13 == v14)
      {
        goto LABEL_33;
      }
    }

    v25 = this->container;
    v26 = 0;
LABEL_29:
    if ([(_NUIBoxArrangementContainer *)v25 shouldCancelMeasurementForCompressionInAxis:v26])
    {
      v15 = *v16;
      return v15.f64[0];
    }

    v21 = *v13;
    container = this->container;
LABEL_31:
    [(_NUIBoxArrangementContainer *)container contentLayoutSizeFittingSize:v21 forArrangedSubview:width, height - v20, *&v28];
    *(v13 + 1) = *&v23.f64[0];
    *(v13 + 2) = v24;
    goto LABEL_32;
  }

LABEL_33:
  this->hasValidMeasurement = 1;
  return v15.f64[0];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowArrangementCell>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

__n128 _NUIFlowArrangementCell::_NUIFlowArrangementCell(uint64_t a1, uint64_t a2, unsigned __int8 a3, __int16 a4)
{
  *a1 = a2;
  v4 = MEMORY[0x277CBF3A8];
  *(a1 + 8) = *MEMORY[0x277CBF3A8];
  result = *v4;
  *(a1 + 24) = *v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a3 | (a4 << 8);
  return result;
}

void _NUIBoxArrangement::positionCells(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 24))
  {
    v8 = (a1 + 72);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = (v10 - v9) >> 6;
    if (v11 != (*(a1 + 80) - *(a1 + 72)) >> 5)
    {
      std::vector<CGRect>::resize(v8, v11);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v27 = ___ZN18_NUIBoxArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke;
      v28 = &__block_descriptor_72_e69_v24__0___NUIBoxArrangementCell___CGSize_dd__CGSize_dd____dd_b8b8_8Q16l;
      v29 = a1;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v9 != v10)
      {
        v16 = 0;
        do
        {
          v27(v26, v9, v16++);
          v9 += 64;
        }

        while (v9 != v10);
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v22 = ___ZN18_NUIBoxArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke_2;
    v23 = &unk_2783296F0;
    v24 = a2;
    v25 = a1;
    if (v9 != v10)
    {
      v17 = 0;
      do
      {
        v22(v21, v9, v17++);
        v9 += 64;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v18 = _NUIIsDebuggerAttached();
    v19 = _NUILog();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _NUIBoxArrangement::positionCells(a1, v20);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      _NUIBoxArrangement::positionCells(a1, v20);
    }
  }
}

uint64_t ___ZL30_NUIViewIsSwiftUISPICompatibleP6UIView_block_invoke()
{
  _NUIViewIsSwiftUISPICompatible(UIView *)::checkedSet = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  result = [MEMORY[0x277D75D18] instanceMethodForSelector:sel__layoutSizeThatFits_fixedAxes_];
  _NUIViewIsSwiftUISPICompatible(UIView *)::baseLayoutSizeImp = result;
  return result;
}

void ___ZN18_NUIBoxArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 56) >> 8;
  v11 = *(v5 + 96);
  v34 = *(v5 + 104);
  v35 = *(a2 + 40);
  v36 = *(a2 + 48);
  v12 = *MEMORY[0x277CBF3A0];
  MinY = *(MEMORY[0x277CBF3A0] + 8);
  if (*(a2 + 8) >= v9)
  {
    Width = *(a1 + 56);
  }

  else
  {
    Width = *(a2 + 8);
  }

  if (*(a2 + 16) >= v8)
  {
    v15 = *(a1 + 64);
  }

  else
  {
    v15 = *(a2 + 16);
  }

  rect = v15;
  v16 = *(a2 + 56);
  if (v16 > 2)
  {
    if (v16 - 4 < 2)
    {
      MaxX = CGRectGetMaxX(*(a1 + 40));
      v19 = v12;
      v20 = v11;
      v21 = MaxX;
      v38.origin.x = v19;
      v38.origin.y = MinY;
      v38.size.width = Width;
      v38.size.height = rect;
      MinX = v21 - CGRectGetWidth(v38);
      v11 = v20;
      goto LABEL_12;
    }

    if (v16 == 3)
    {
      MidX = CGRectGetMidX(*(a1 + 40));
      v43.origin.x = v12;
      v43.origin.y = MinY;
      v43.size.width = Width;
      v43.size.height = rect;
      v12 = MidX + CGRectGetWidth(v43) * -0.5;
    }
  }

  else
  {
    if (v16 - 1 < 2)
    {
      MinX = CGRectGetMinX(*(a1 + 40));
LABEL_12:
      v12 = MinX;
      goto LABEL_13;
    }

    if (!*(a2 + 56))
    {
      v12 = CGRectGetMinX(*(a1 + 40));
      v42.origin.x = v7;
      v42.origin.y = v6;
      v42.size.width = v9;
      v42.size.height = v8;
      Width = CGRectGetWidth(v42);
    }
  }

LABEL_13:
  if (v10 > 2u)
  {
    v22 = Width;
    if (v10 == 3)
    {
      v49.origin.x = v7;
      v49.origin.y = v6;
      v49.size.width = v9;
      v49.size.height = v8;
      MidY = CGRectGetMidY(v49);
      v50.origin.x = v12;
      v50.origin.y = MinY;
      v50.size.width = v22;
      Height = rect;
      v50.size.height = rect;
      MinY = MidY + CGRectGetHeight(v50) * -0.5;
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 != 5)
        {
          goto LABEL_33;
        }

        if (v36 != 2.22507386e-308)
        {
          v40.origin.x = v7;
          v40.origin.y = v6;
          v40.size.width = v9;
          v40.size.height = v8;
          MaxY = CGRectGetMaxY(v40);
          v41.origin.x = v12;
          v41.origin.y = MinY;
          v41.size.width = v22;
          Height = rect;
          v41.size.height = rect;
          v25 = MaxY - CGRectGetHeight(v41);
          Width = v22;
          MinY = v25 - (v34 - v36);
          goto LABEL_34;
        }
      }

      v45.origin.x = v7;
      v45.origin.y = v6;
      v45.size.width = v9;
      v45.size.height = v8;
      v26 = CGRectGetMaxY(v45);
      v46.origin.x = v12;
      v46.origin.y = MinY;
      v46.size.width = v22;
      Height = rect;
      v46.size.height = rect;
      MinY = v26 - CGRectGetHeight(v46);
    }

    Width = v22;
    goto LABEL_34;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
LABEL_33:
        Height = rect;
        goto LABEL_34;
      }

      if (v35 != 2.22507386e-308)
      {
        v39.origin.x = v7;
        v39.origin.y = v6;
        v39.size.width = v9;
        v39.size.height = v8;
        MinY = v11 + CGRectGetMinY(v39) - v35;
        goto LABEL_33;
      }
    }

    v44.origin.x = v7;
    v44.origin.y = v6;
    v44.size.width = v9;
    v44.size.height = v8;
    MinY = CGRectGetMinY(v44);
    goto LABEL_33;
  }

  v47.origin.x = v7;
  v47.origin.y = v6;
  v47.size.width = v9;
  v47.size.height = v8;
  MinY = CGRectGetMinY(v47);
  v48.origin.x = v7;
  v48.origin.y = v6;
  v48.size.width = v9;
  v48.size.height = v8;
  Height = CGRectGetHeight(v48);
LABEL_34:
  [*v5 layoutFrameForArrangedSubview:*a2 withProposedContentFrame:{v12, MinY, Width, Height}];
  *(&v29 + 1) = v28;
  *(&v31 + 1) = v30;
  v32 = (*(v5 + 72) + 32 * a3);
  *v32 = v31;
  v32[1] = v29;
}

uint64_t _NUILog()
{
  if (qword_280AC30F8 != -1)
  {
    _NUILog_cold_1();
  }

  return qword_280AC30F0;
}

void *std::__tree<std::__value_type<UIView *,double>,std::__map_value_compare<UIView *,std::__value_type<UIView *,double>,std::less<UIView *>,true>,std::allocator<std::__value_type<UIView *,double>>>::__emplace_unique_key_args<UIView *,std::piecewise_construct_t const&,std::tuple<UIView * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

double OUTLINED_FUNCTION_0@<D0>(double *a1@<X8>, double a2@<D1>)
{
  result = *a1;
  if (*a1 <= a2)
  {
    return a2;
  }

  return result;
}

void _NUIFlowArrangement::_NUIFlowArrangement(_NUIFlowArrangement *this)
{
  this->container = 0;
  *(this + 4) = 6;
  this->columns = 0;
  __asm { FMOV            V0.2D, #6.0 }

  *&this->rowSpacing = _Q0;
  this->rowHeight = 1.79769313e308;
  this->itemWidth = 1.79769313e308;
  *&this->cells.__begin_ = 0u;
  this->viewFrames.__begin_ = 0;
  this->viewFrames.__end_ = 0;
  this->viewFrames.__cap_ = 0;
  *&this->cells.__cap_ = 0u;
  *&this->rows.var0 = 0u;
  v7 = [_NUIFlowContainer alloc];
  if (v7)
  {
    v7 = [(_NUIFlowContainer *)v7 init];
    if (v7)
    {
      v7->_flowArrangement = this;
      *(&v7->_gridArrangement + 9) = *(this + 9);
      v7->_gridArrangement.container = v7;
    }
  }

  this->flowContainer = v7;
}

void sub_21D0A8694(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 128) = v6;
    operator delete(v6);
  }

  _NUIFlowArrangement::_NUIFlowArrangement((v1 + 80), v2, v1);
  _Unwind_Resume(a1);
}

void _NUIFlowArrangement::~_NUIFlowArrangement(_NUIFlowArrangement *this)
{
  _NUIFlowArrangement::resetForInvalidation(this, -1);

  begin = this->viewFrames.__begin_;
  if (begin)
  {
    this->viewFrames.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->rows.__begin_;
  if (v3)
  {
    this->rows.var0 = v3;
    operator delete(v3);
  }

  v4 = this->cells.__begin_;
  if (v4)
  {
    this->cells.__end_ = v4;
    operator delete(v4);
  }
}

void sub_21D0A872C(_Unwind_Exception *a1)
{
  v3 = v1[15];
  if (v3)
  {
    v1[16] = v3;
    operator delete(v3);
  }

  _NUIFlowArrangement::~_NUIFlowArrangement(v1);
  _Unwind_Resume(a1);
}

_NUIGridArrangement *_NUIFlowArrangement::resetForInvalidation(_NUIFlowArrangement *this, uint64_t a2)
{
  if ((a2 & 7) != 0)
  {
    begin = this->rows.__begin_;
    var0 = this->rows.var0;
    if (begin != var0)
    {
      do
      {
        v5 = *begin++;
      }

      while (begin != var0);
      begin = this->rows.__begin_;
    }

    this->rows.var0 = begin;
    this->cells.__end_ = this->cells.__begin_;
    LOBYTE(a2) = -1;
  }

  else if (a2)
  {
    v8 = this->cells.__begin_;
    end = this->cells.__end_;
    if (v8 != end)
    {
      v9 = MEMORY[0x277CBF3A8];
      do
      {
        v8->var1 = *v9;
        v8->var2 = *v9;
        v8->var3.var0 = 0.0;
        v8->var3.var1 = 0.0;
        ++v8;
      }

      while (v8 != end);
    }
  }

  result = _NUIGridArrangement::resetForInvalidation(&this->flowContainer->_gridArrangement, a2);
  this->viewFrames.__end_ = this->viewFrames.__begin_;
  return result;
}

void _NUIFlowArrangement::measureCells(_NUIFlowArrangement *this, int a2, CGSize a3)
{
  height = a3.height;
  width = a3.width;
  if (a3.width != this->measuredWidth)
  {
    _NUIFlowArrangement::resetForInvalidation(this, 2);
    this->measuredWidth = width;
  }

  if (this->cells.__end_ != this->cells.__begin_ || ([(_NUIFlowArrangementContainer *)this->container populateFlowArrangementCells:&this->cells], this->cells.__end_ != this->cells.__begin_))
  {
    p_rows = &this->rows;
    if (this->rows.var0 != this->rows.__begin_)
    {
LABEL_6:
      _NUIGridArrangement::resetForInvalidation(&this->flowContainer->_gridArrangement, 0);
      *(&this->flowContainer->_gridArrangement + 9) = *(this + 9);
      v96.width = width;
      v96.height = height;
      _NUIGridArrangement::measureCells(&this->flowContainer->_gridArrangement, a2, v96);
      return;
    }

    if (([(_NUIFlowContainer *)this->flowContainer canUseSimpleGrid]& 1) != 0)
    {
      *(&this->flowContainer->_gridArrangement + 8) = *(this + 8);
      *(&this->flowContainer->_gridArrangement + 9) = *(this + 9);
      goto LABEL_6;
    }

    columns = this->columns;
    if (columns)
    {
      v9 = this->cells.__end_ - this->cells.__begin_;
      if (v9)
      {
        v10 = 0;
        v11 = v9 >> 6;
        do
        {
          v12 = columns + v10;
          if (v11 >= v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          v14 = [_NUIFlowRowContainer alloc];
          if (v14)
          {
            v15 = [(_NUIFlowRowContainer *)v14 init];
            v16 = v15;
            if (v15)
            {
              v15->_range.length = v13 - v10;
              v15->_flowArrangement = this;
              v15->_range.location = v10;
              v15->_gridArrangement.container = v15;
            }
          }

          else
          {
            v16 = 0;
          }

          var0 = this->rows.var0;
          var1 = this->rows.var1;
          if (var0 >= var1)
          {
            v20 = var0 - p_rows->__begin_;
            if ((v20 + 1) >> 61)
            {
              goto LABEL_108;
            }

            v21 = var1 - p_rows->__begin_;
            v22 = v21 >> 2;
            if (v21 >> 2 <= (v20 + 1))
            {
              v22 = v20 + 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v23 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowRowContainer *>>(&this->rows, v23);
            }

            v24 = (8 * v20);
            *v24 = v16;
            v19 = (8 * v20 + 8);
            begin = this->rows.__begin_;
            v26 = (this->rows.var0 - begin);
            v27 = (v24 - v26);
            memcpy((v24 - v26), begin, v26);
            v28 = this->rows.__begin_;
            this->rows.__begin_ = v27;
            this->rows.var0 = v19;
            this->rows.var1 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *var0 = v16;
            v19 = var0 + 1;
          }

          this->rows.var0 = v19;
          columns = this->columns;
          v10 += columns;
          v11 = this->cells.__end_ - this->cells.__begin_;
        }

        while (v10 < v11);
      }

      goto LABEL_97;
    }

    v29 = objc_opt_respondsToSelector();
    v30 = this->cells.__begin_;
    if (this->cells.__end_ == v30)
    {
LABEL_97:
      if (objc_opt_respondsToSelector())
      {
        v87 = this->rows.__begin_;
        v88 = this->rows.var0;
        if (v87 != v88)
        {
          v89 = 0;
          v90 = 0;
          do
          {
            std::vector<_NUIFlowArrangementCell>::vector[abi:nn200100]<std::__wrap_iter<_NUIFlowArrangementCell*>,0>(__p, &this->cells.__begin_[*(v87[v90] + 15)], &this->cells.__begin_[*(v87[v90] + 16) + *(v87[v90] + 15)]);
            *(v87[v90] + 16) = [(_NUIFlowArrangementContainer *)this->container distributionForRowAtIndex:v90 ofTotalRowCount:this->rows.var0 - this->rows.__begin_ withCells:__p];
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            ++v89;
            ++v90;
          }

          while (&v87[v89] != v88);
        }
      }

      else if (!this->columns)
      {
        v91 = this->rows.__begin_;
        v92 = this->rows.var0;
        while (v91 != v92)
        {
          v93 = *v91++;
          *(v93 + 16) = *(this + 8);
        }
      }

      goto LABEL_6;
    }

    v31 = v29;
    v32 = 0;
    v33 = 0;
    v34 = 1.79769313e308;
    v35 = MEMORY[0x277CBF3A8];
    v36 = 0.001;
    v37 = width;
    while (1)
    {
      itemWidth = this->itemWidth;
      if (itemWidth != v34)
      {
        goto LABEL_52;
      }

      v39 = &v30[v33];
      container = this->container;
      if (v31)
      {
        [(_NUIFlowArrangementContainer *)this->container fittingSizeForCell:&v30[v33] withProposedSize:width, height];
        v42 = v41;
        v44 = v43;
        container = this->container;
      }

      else
      {
        v44 = height;
        v42 = width;
      }

      v45 = v39[3];
      if (vabdd_f64(v45, *v35) < v36 && vabdd_f64(v39[4], v35[1]) < v36)
      {
        goto LABEL_50;
      }

      if (vabdd_f64(v45, v42) >= v36)
      {
        break;
      }

      if (vabdd_f64(v39[4], v44) >= v36)
      {
        v46 = 0;
        goto LABEL_48;
      }

LABEL_51:
      itemWidth = v39[1];
LABEL_52:
      if (v33 > v32)
      {
        itemWidth = itemWidth + this->itemSpacing;
      }

      if (itemWidth > v37)
      {
        if (v33 == v32)
        {
          v56 = 1;
        }

        else
        {
          v56 = v33 - v32;
        }

        v57 = [_NUIFlowRowContainer alloc];
        if (v57)
        {
          v58 = [(_NUIFlowRowContainer *)v57 init];
          v59 = v58;
          if (v58)
          {
            v58->_range.length = v56;
            v58->_flowArrangement = this;
            v58->_range.location = v32;
            v58->_gridArrangement.container = v58;
          }
        }

        else
        {
          v59 = 0;
        }

        v61 = this->rows.var0;
        v60 = this->rows.var1;
        if (v61 >= v60)
        {
          v69 = v61 - p_rows->__begin_;
          if ((v69 + 1) >> 61)
          {
            goto LABEL_108;
          }

          v70 = v60 - p_rows->__begin_;
          v71 = v70 >> 2;
          if (v70 >> 2 <= (v69 + 1))
          {
            v71 = v69 + 1;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFF8)
          {
            v72 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v71;
          }

          if (v72)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowRowContainer *>>(&this->rows, v72);
          }

          v77 = (8 * v69);
          *v77 = v59;
          v62 = (8 * v69 + 8);
          v78 = this->rows.__begin_;
          v79 = (this->rows.var0 - v78);
          v80 = (v77 - v79);
          memcpy((v77 - v79), v78, v79);
          v81 = this->rows.__begin_;
          this->rows.__begin_ = v80;
          this->rows.var0 = v62;
          this->rows.var1 = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v61 = v59;
          v62 = v61 + 1;
        }

        this->rows.var0 = v62;
        v33 = v56 + v32;
LABEL_92:
        v37 = width;
        v32 = v33;
        goto LABEL_93;
      }

      if (v33 == this->cells.__end_ - this->cells.__begin_ - 1)
      {
        ++v33;
        v63 = [_NUIFlowRowContainer alloc];
        if (v63)
        {
          v64 = [(_NUIFlowRowContainer *)v63 init];
          v65 = v64;
          if (v64)
          {
            v64->_range.length = v33 - v32;
            v64->_flowArrangement = this;
            v64->_range.location = v32;
            v64->_gridArrangement.container = v64;
          }
        }

        else
        {
          v65 = 0;
        }

        v67 = this->rows.var0;
        v66 = this->rows.var1;
        if (v67 >= v66)
        {
          v73 = v67 - p_rows->__begin_;
          if ((v73 + 1) >> 61)
          {
LABEL_108:
            std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
          }

          v74 = v66 - p_rows->__begin_;
          v75 = v74 >> 2;
          if (v74 >> 2 <= (v73 + 1))
          {
            v75 = v73 + 1;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          if (v76)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowRowContainer *>>(&this->rows, v76);
          }

          v82 = (8 * v73);
          *v82 = v65;
          v68 = (8 * v73 + 8);
          v83 = this->rows.__begin_;
          v84 = (this->rows.var0 - v83);
          v85 = (v82 - v84);
          memcpy((v82 - v84), v83, v84);
          v86 = this->rows.__begin_;
          this->rows.__begin_ = v85;
          this->rows.var0 = v68;
          this->rows.var1 = 0;
          if (v86)
          {
            operator delete(v86);
          }
        }

        else
        {
          *v67 = v65;
          v68 = v67 + 1;
        }

        this->rows.var0 = v68;
        goto LABEL_92;
      }

      v37 = v37 - itemWidth;
      ++v33;
LABEL_93:
      v30 = this->cells.__begin_;
      if (v33 >= this->cells.__end_ - v30)
      {
        goto LABEL_97;
      }
    }

    v94 = v44;
    v47 = height;
    v48 = v37;
    v49 = v36;
    v50 = v34;
    v51 = v42 - v39[1];
    v52 = [*v39 isLayoutSizeDependentOnPerpendicularAxis];
    v53 = v51 < -0.001;
    v34 = v50;
    v36 = v49;
    v37 = v48;
    height = v47;
    v44 = v94;
    if (v53)
    {
      v46 = 1;
    }

    else
    {
      v46 = v52;
    }

LABEL_48:
    if ((v46 & 1) == 0 && v44 - v39[2] >= -0.001)
    {
      goto LABEL_51;
    }

LABEL_50:
    [(_NUIFlowArrangementContainer *)container contentLayoutSizeFittingSize:*v39 forArrangedSubview:v42, v44];
    *(v39 + 1) = v54;
    *(v39 + 2) = v55;
    v39[3] = v42;
    v39[4] = v44;
    goto LABEL_51;
  }
}

void sub_21D0A8E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _NUIFlowArrangement::positionCells(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 104);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZN19_NUIFlowArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke;
  v7[3] = &unk_278329418;
  *&v7[6] = a3;
  *&v7[7] = a4;
  *&v7[8] = a5;
  *&v7[9] = a6;
  v7[4] = a2;
  v7[5] = a1;
  _NUIGridArrangement::positionCells(v6 + 8, v7, a3, a4, a5, a6);
}

uint64_t ___ZN19_NUIFlowArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  result = +[_NUIFlowArrangementDummyItem sharedDummyItem];
  if (result != a2)
  {
    v17 = *(*(a1 + 32) + 16);
    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;
    v15.n128_f64[0] = a5;
    v16.n128_f64[0] = a6;

    return v17(v13, v14, v15, v16);
  }

  return result;
}

uint64_t ___ZN19_NUIFlowArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke_3(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  result = +[_NUIFlowArrangementDummyItem sharedDummyItem];
  if (result != a2)
  {
    v17 = *(*(a1 + 32) + 16);
    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;
    v15.n128_f64[0] = a5;
    v16.n128_f64[0] = a6;

    return v17(v13, v14, v15, v16);
  }

  return result;
}

void *_NUIFlowArrangementCell::debugDictionary(_NUIFlowArrangementCell *this)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithObject:this->var0 forKey:@"item"];
  if (this->var1.width != *MEMORY[0x277CBF3A8] || this->var1.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    [v2 setObject:objc_msgSend(MEMORY[0x277CCAE60] forKeyedSubscript:{"value:withObjCType:", &this->var1, "{CGSize=dd}"), @"size"}];
  }

  var0 = this->var3.var0;
  var1 = this->var3.var1;
  if (var0 != 0.0 && var0 != 2.22507386e-308)
  {
    if (var1 != 0.0 && var1 != 2.22507386e-308)
    {
      v19[0] = @"topOffset";
      v19[1] = @"bottomOffset";
      v20[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v20[1] = [MEMORY[0x277CCABB0] numberWithDouble:var1];
      v8 = MEMORY[0x277CBEAC0];
      v9 = v20;
      v10 = v19;
      v12 = 2;
      goto LABEL_23;
    }

    v17 = @"topOffset";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v18;
    v10 = &v17;
LABEL_22:
    v12 = 1;
LABEL_23:
    v13 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v12];
    if (v13)
    {
      [v2 setObject:v13 forKeyedSubscript:@"baselines"];
    }

    return v2;
  }

  if (var1 != 0.0 && var1 != 2.22507386e-308)
  {
    v15 = @"bottomOffset";
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:var1];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v16;
    v10 = &v15;
    goto LABEL_22;
  }

  return v2;
}

void *_NUIFlowArrangement::debugDictionary(_NUIFlowArrangement *this)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"_NUIFlowArrangement" forKey:@"class"];
  baseLineFromTop = this->maxBaseLinePair.baseLineFromTop;
  baseLineFromBottom = this->maxBaseLinePair.baseLineFromBottom;
  if (baseLineFromTop == 0.0 || baseLineFromTop == 2.22507386e-308)
  {
    if (baseLineFromBottom == 0.0 || baseLineFromBottom == 2.22507386e-308)
    {
      goto LABEL_20;
    }

    v17 = @"bottomOffset";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:baseLineFromBottom];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v18;
    v10 = &v17;
  }

  else
  {
    if (baseLineFromBottom != 0.0 && baseLineFromBottom != 2.22507386e-308)
    {
      v21[0] = @"topOffset";
      v21[1] = @"bottomOffset";
      v22[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v22[1] = [MEMORY[0x277CCABB0] numberWithDouble:baseLineFromBottom];
      v8 = MEMORY[0x277CBEAC0];
      v9 = v22;
      v10 = v21;
      v12 = 2;
      goto LABEL_18;
    }

    v19 = @"topOffset";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v20;
    v10 = &v19;
  }

  v12 = 1;
LABEL_18:
  v2 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v12];
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:@"maxBaselines"];
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v2, this->rowSpacing), @"rowSpacing"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", this->itemSpacing), @"itemSpacing"}];
  if (this->cells.__end_ != this->cells.__begin_)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    while (begin != end)
    {
      [v13 addObject:_NUIFlowArrangementCell::debugDictionary(begin++)];
    }

    [v3 setObject:v13 forKeyedSubscript:@"cells"];
  }

  return v3;
}

void std::vector<_NUIGridArrangementDimension>::emplace_back<unsigned long &,double const&>(uint64_t a1, void *a2, double *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(a1, v11);
    }

    _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v6 - *a1) >> 3)), *a2, *a3);
    v7 = v12 + 56;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(a1 + 8), *a2, *a3);
    v7 = v6 + 56;
    *(a1 + 8) = v6 + 56;
  }

  *(a1 + 8) = v7;
}

void sub_21D0A9A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NUIGridArrangementDimension>::emplace_back<int,double const&>(uint64_t a1, _DWORD *a2, double *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementDimension>>(a1, v11);
    }

    _NUIGridArrangementDimension::_NUIGridArrangementDimension((8 * ((v6 - *a1) >> 3)), *a2, *a3);
    v7 = v12 + 56;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    _NUIGridArrangementDimension::_NUIGridArrangementDimension(*(a1 + 8), *a2, *a3);
    v7 = v6 + 56;
    *(a1 + 8) = v6 + 56;
  }

  *(a1 + 8) = v7;
}

void sub_21D0A9BA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowRowContainer *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

void *std::vector<_NUIFlowArrangementCell>::vector[abi:nn200100]<std::__wrap_iter<_NUIFlowArrangementCell*>,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<_NUIFlowArrangementCell>::__vallocate[abi:nn200100](result, (a3 - a2) >> 6);
  }

  return result;
}

void std::vector<_NUIFlowArrangementCell>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowArrangementCell>>(a1, a2);
  }

  std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*,_NSRange,objc_object  {objcproto18NUIArrangementItem}*,NUIContainerAlignment,_NSRange>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0AA314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowArrangementDummyItem *,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0AA4A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NUIGridArrangementCell>::__construct_one_at_end[abi:nn200100]<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v7 = *(a1 + 8);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v7, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  *(a1 + 8) = v7 + 112;
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowRowContainer * const&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0AA68C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void _NUIArrangementInvalidRect(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_NUIArrangementLogger(void)::onceToken != -1)
  {
    _NUIArrangementInvalidRect_cold_1();
  }

  v12 = _NUIArrangementLogger(void)::_log;
  if (os_log_type_enabled(_NUIArrangementLogger(void)::_log, OS_LOG_TYPE_ERROR))
  {
    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    v13 = 138412802;
    v14 = a1;
    v15 = 2112;
    v16 = NSStringFromCGRect(v20);
    v17 = 2112;
    v18 = a2;
    _os_log_error_impl(&dword_21D09E000, v12, OS_LOG_TYPE_ERROR, "A container %@ has an invalid rect %@ for item %@. Break on _NUIArrangementInvalidRect to debug.", &v13, 0x20u);
  }
}

void _NUIArrangementInvalidSize(uint64_t a1, double a2, double a3)
{
  if (_NUIArrangementLogger(void)::onceToken != -1)
  {
    _NUIArrangementInvalidRect_cold_1();
  }

  v6 = _NUIArrangementLogger(void)::_log;
  if (os_log_type_enabled(_NUIArrangementLogger(void)::_log, OS_LOG_TYPE_ERROR))
  {
    _NUIArrangementInvalidSize_cold_2(a1, v6, a2, a3);
  }
}

double _NUIGridArrangement::unionFrameForSubsetCells(_NUIGridArrangement *this, _NSRange a2, _NSRange a3, CGRect a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5012000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = &unk_21D0C1D49;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *MEMORY[0x277CBF3A0];
  v15 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZN19_NUIGridArrangement24unionFrameForSubsetCellsE8_NSRangeS0_6CGRect_block_invoke;
  v7[3] = &unk_2783294D8;
  v7[4] = &v8;
  _NUIGridArrangement::positionSubsetCells(this, a2.location, a2.length, a3.location, a3.length, v7, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v5 = v9[6];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_21D0AAE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN19_NUIGridArrangement24unionFrameForSubsetCellsE8_NSRangeS0_6CGRect_block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5.size.height = a5;
  v5.size.width = a4;
  v5.origin.y = a3;
  v5.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(*(*(a1 + 32) + 8) + 48), v5);
}

double _NUIGridArrangement::frameForColumnsAndRows(_NUIGridArrangement *this, _NSRange a2, _NSRange a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  length = a3.length;
  location = a3.location;
  v10 = a2.length;
  v11 = a2.location;
  v13 = a2.location;
  if (a2.location < 1)
  {
    if (!a2.location)
    {
      v15 = 0.0;
      v18 = 0.0;
      goto LABEL_9;
    }

    begin = this->columns.__begin_;
    v15 = 0.0;
  }

  else
  {
    begin = this->columns.__begin_;
    v15 = 0.0;
    v16 = 8;
    v17 = a2.location;
    do
    {
      v15 = v15 + *(begin + v16);
      v16 += 56;
      --v17;
    }

    while (v17);
  }

  v18 = 0.0;
  do
  {
    v19 = *begin;
    begin = (begin + 56);
    v18 = v18 + v19;
    --v13;
  }

  while (v13);
LABEL_9:
  MinX = CGRectGetMinX(a4);
  if (location < 1)
  {
    if (!location)
    {
      goto LABEL_19;
    }

    v20 = this->rows.__begin_;
  }

  else
  {
    v20 = this->rows.__begin_;
    v21 = 0.0;
    v22 = 8;
    v23 = location;
    do
    {
      v21 = v21 + *(v20 + v22);
      v22 += 56;
      --v23;
    }

    while (v23);
  }

  v24 = 0.0;
  v25 = location;
  do
  {
    v24 = v24 + *v20;
    if (this->baselineRelative)
    {
      v24 = v24 - *(v20 + 11) - *(v20 + 5);
    }

    v20 = (v20 + 56);
    --v25;
  }

  while (v25);
LABEL_19:
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGRectGetMinY(v43);
  v26 = 0.0;
  if (v11 < v11 + v10)
  {
    v27 = (this->columns.__begin_ + 56 * v11 + 8);
    v28 = v10;
    do
    {
      v29 = *v27;
      v27 += 7;
      v26 = v26 + v29;
      --v28;
    }

    while (v28);
  }

  if (v11 < v10 + v11 - 1)
  {
    v30 = v10 - 1;
    v31 = (this->columns.__begin_ + 56 * v11);
    v32 = 0.0;
    do
    {
      v33 = *v31;
      v31 += 7;
      v32 = v32 + v33;
      --v30;
    }

    while (v30);
  }

  v34 = 0.0;
  if (location < location + length)
  {
    v35 = (this->rows.__begin_ + 56 * location + 8);
    v36 = length;
    do
    {
      v37 = *v35;
      v35 += 7;
      v34 = v34 + v37;
      --v36;
    }

    while (v36);
  }

  if (location < length + location - 1)
  {
    v38 = (this->rows.__begin_ + 56 * location);
    v39 = length - 1;
    v40 = 0.0;
    do
    {
      v40 = v40 + *v38;
      if (this->baselineRelative)
      {
        v40 = v40 - v38[11] - v38[5];
      }

      v38 += 7;
      --v39;
    }

    while (v39);
  }

  return v15 + v18 + MinX;
}

uint64_t _NUIGridArrangement::enumerateCells(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  for (i = *(result + 24); v2 != i; v2 += 7)
  {
    v5 = *v2;
    v6 = v2[2];
    v10[1] = v2[1];
    v10[2] = v6;
    v10[0] = v5;
    v7 = v2[3];
    v8 = v2[4];
    v9 = v2[6];
    v10[5] = v2[5];
    v10[6] = v9;
    v10[3] = v7;
    v10[4] = v8;
    result = (*(a2 + 16))(a2, v10);
  }

  return result;
}

void *_NUIGridArrangementCell::debugDictionary(_NUIGridArrangementCell *this)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithObject:*this forKey:@"item"];
  if (*(this + 3) != *MEMORY[0x277CBF3A8] || *(this + 4) != *(MEMORY[0x277CBF3A8] + 8))
  {
    [v2 setObject:objc_msgSend(MEMORY[0x277CCAE60] forKeyedSubscript:{"value:withObjCType:", this + 24, "{CGSize=dd}"), @"size"}];
  }

  v16[0] = @"column";
  v4 = *(this + 7);
  if (*(this + 8) < 2uLL)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCAE60] valueWithRange:v4];
  }

  v16[1] = @"row";
  v17[0] = v5;
  v6 = *(this + 9);
  if (*(this + 10) < 2uLL)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCAE60] valueWithRange:v6];
  }

  v17[1] = v7;
  [v2 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v17, v16, 2), @"span"}];
  v8 = *(this + 11);
  v9 = *(this + 12);
  if (v8 == 0.0 || v8 == 2.22507386e-308)
  {
    if (v9 == 0.0 || v9 == 2.22507386e-308)
    {
      return v2;
    }

    v18 = @"bottomOffset";
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:{v9, 2.22507386e-308}];
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v19;
    v12 = &v18;
  }

  else
  {
    if (v9 != 0.0 && v9 != 2.22507386e-308)
    {
      v22[0] = @"topOffset";
      v23[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v22[1] = @"bottomOffset";
      v23[1] = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v23;
      v12 = v22;
      v13 = 2;
      goto LABEL_22;
    }

    v20 = @"topOffset";
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v21;
    v12 = &v20;
  }

  v13 = 1;
LABEL_22:
  v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
  if (v14)
  {
    [v2 setObject:v14 forKeyedSubscript:@"baselines"];
  }

  return v2;
}

void *_NUIGridArrangementDimension::debugDictionary(_NUIGridArrangementDimension *this)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", *(this + 24)), @"index"}];
  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", *(this + 1)), @"length"}];
  v3 = *this;
  if (*this != 0.0)
  {
    [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v3), @"spacingAfter"}];
  }

  v13[0] = @"hugging";
  LODWORD(v3) = *(this + 7);
  v13[1] = @"compression";
  v14[0] = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  LODWORD(v4) = *(this + 6);
  v14[1] = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v2 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v14, v13, 2), @"priorities"}];
  v5 = *(this + 4);
  v6 = *(this + 5);
  if (v5 == 0.0 || v5 == 2.22507386e-308)
  {
    if (v6 == 0.0 || v6 == 2.22507386e-308)
    {
      return v2;
    }

    v15 = @"bottomOffset";
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:{v6, 2.22507386e-308}];
    v7 = MEMORY[0x277CBEAC0];
    v8 = &v16;
    v9 = &v15;
  }

  else
  {
    if (v6 != 0.0 && v6 != 2.22507386e-308)
    {
      v19[0] = @"topOffset";
      v20[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v19[1] = @"bottomOffset";
      v20[1] = [MEMORY[0x277CCABB0] numberWithDouble:v6];
      v7 = MEMORY[0x277CBEAC0];
      v8 = v20;
      v9 = v19;
      v10 = 2;
      goto LABEL_13;
    }

    v17 = @"topOffset";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v7 = MEMORY[0x277CBEAC0];
    v8 = &v18;
    v9 = &v17;
  }

  v10 = 1;
LABEL_13:
  v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
  if (v11)
  {
    [v2 setObject:v11 forKeyedSubscript:@"baselines"];
  }

  return v2;
}

void *_NUIGridArrangement::debugDictionary(_NUIGridArrangement *this)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"_NUIGridArrangement" forKey:@"class"];
  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", this->baselineRelative), @"baselineRelative"}];
  v17[0] = @"horizontal";
  v3 = *(this + 8);
  if (NUIStringFromDistribution(NUIContainerDistribution)::onceToken != -1)
  {
    _NUIGridArrangement::debugDictionary();
  }

  v4 = [NUIStringFromDistribution(NUIContainerDistribution)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v3)}];
  if (!v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v3, v17[0]];
  }

  v17[1] = @"vertical";
  v18[0] = v4;
  v5 = *(this + 9);
  if (NUIStringFromDistribution(NUIContainerDistribution)::onceToken != -1)
  {
    _NUIGridArrangement::debugDictionary();
  }

  v6 = [NUIStringFromDistribution(NUIContainerDistribution)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v5)}];
  if (!v6)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v5];
  }

  v18[1] = v6;
  [v2 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v18, v17, 2), @"distributions"}];
  if (this->cells.__end_ != this->cells.__begin_)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    while (begin != end)
    {
      [v7 addObject:_NUIGridArrangementCell::debugDictionary(begin)];
      begin = (begin + 112);
    }

    [v2 setObject:v7 forKeyedSubscript:@"cells"];
  }

  if (this->columns.__end_ != this->columns.__begin_)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = this->columns.__begin_;
    v12 = this->columns.__end_;
    while (v11 != v12)
    {
      [v10 addObject:_NUIGridArrangementDimension::debugDictionary(v11)];
      v11 = (v11 + 56);
    }

    [v2 setObject:v10 forKeyedSubscript:@"columns"];
  }

  if (this->rows.__end_ != this->rows.__begin_)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    v15 = this->rows.__begin_;
    v14 = this->rows.__end_;
    while (v15 != v14)
    {
      [v13 addObject:_NUIGridArrangementDimension::debugDictionary(v15)];
      v15 = (v15 + 56);
    }

    [v2 setObject:v13 forKeyedSubscript:@"rows"];
  }

  return v2;
}

os_log_t ___ZL21_NUIArrangementLoggerv_block_invoke()
{
  result = os_log_create("com.apple.AppSupportUI", "arrangement");
  _NUIArrangementLogger(void)::_log = result;
  return result;
}

__n128 __Block_byref_object_copy__122(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, _BYTE *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, a2, a3, a5);
  v11 = 12;
  if (*a5)
  {
    v11 = 8;
  }

  result.n128_f32[0] = *(a4->n128_u64[0] + v11) - *(a3->n128_u64[0] + v11);
  v12 = a4[1].n128_i64[0];
  v13 = a3[1].n128_u64[0];
  v14 = v12 - v13;
  if (a5[1] != 1)
  {
    v16 = v14 < 0;
    if (v12 == v13)
    {
      v17 = result.n128_f32[0] > 0.0;
    }

    else
    {
      v17 = v16;
    }

    if (!v17)
    {
      return result;
    }

LABEL_12:
    v18 = a3[1].n128_u64[0];
    result = *a3;
    v19 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v19;
    *a4 = result;
    a4[1].n128_u64[0] = v18;
    v20 = 12;
    if (*a5)
    {
      v20 = 8;
    }

    result.n128_f32[0] = *(a3->n128_u64[0] + v20) - *(a2->n128_u64[0] + v20);
    v21 = a3[1].n128_u64[0];
    v22 = a2[1].n128_u64[0];
    v23 = v21 - v22;
    if (a5[1] == 1)
    {
      v24 = v23 < 0;
      if (result.n128_f32[0] != 0.0)
      {
        v24 = result.n128_f32[0] > 0.0;
      }

      if (!v24)
      {
        return result;
      }
    }

    else
    {
      v25 = v23 < 0;
      if (v21 == v22)
      {
        v26 = result.n128_f32[0] > 0.0;
      }

      else
      {
        v26 = v25;
      }

      if (!v26)
      {
        return result;
      }
    }

    v27 = a2[1].n128_u64[0];
    result = *a2;
    v28 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v28;
    *a3 = result;
    a3[1].n128_u64[0] = v27;
    v29 = 12;
    if (*a5)
    {
      v29 = 8;
    }

    result.n128_f32[0] = *(a2->n128_u64[0] + v29) - *(a1->n128_u64[0] + v29);
    v30 = a2[1].n128_u64[0];
    v31 = a1[1].n128_u64[0];
    v32 = v30 - v31;
    if (a5[1] == 1)
    {
      v33 = v32 < 0;
      if (result.n128_f32[0] != 0.0)
      {
        v33 = result.n128_f32[0] > 0.0;
      }

      if (!v33)
      {
        return result;
      }
    }

    else
    {
      v34 = v32 < 0;
      if (v30 == v31)
      {
        v35 = result.n128_f32[0] > 0.0;
      }

      else
      {
        v35 = v34;
      }

      if (!v35)
      {
        return result;
      }
    }

    v36 = a1[1].n128_u64[0];
    result = *a1;
    v37 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v37;
    *a2 = result;
    a2[1].n128_u64[0] = v36;
    return result;
  }

  v15 = v14 < 0;
  if (result.n128_f32[0] != 0.0)
  {
    v15 = result.n128_f32[0] > 0.0;
  }

  if (v15)
  {
    goto LABEL_12;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, _BYTE *a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, a2, a3, a4, a6);
  v13 = 12;
  if (*a6)
  {
    v13 = 8;
  }

  result.n128_f32[0] = *(a5->n128_u64[0] + v13) - *(a4->n128_u64[0] + v13);
  v14 = a5[1].n128_u64[0];
  v15 = a4[1].n128_u64[0];
  v16 = v14 - v15;
  if (a6[1] != 1)
  {
    v18 = v16 < 0;
    if (v14 == v15)
    {
      v19 = result.n128_f32[0] > 0.0;
    }

    else
    {
      v19 = v18;
    }

    if (!v19)
    {
      return result;
    }

LABEL_12:
    v20 = a4[1].n128_u64[0];
    result = *a4;
    v21 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v21;
    *a5 = result;
    a5[1].n128_u64[0] = v20;
    v22 = 12;
    if (*a6)
    {
      v22 = 8;
    }

    result.n128_f32[0] = *(a4->n128_u64[0] + v22) - *(a3->n128_u64[0] + v22);
    v23 = a4[1].n128_u64[0];
    v24 = a3[1].n128_u64[0];
    v25 = v23 - v24;
    if (a6[1] == 1)
    {
      v26 = v25 < 0;
      if (result.n128_f32[0] != 0.0)
      {
        v26 = result.n128_f32[0] > 0.0;
      }

      if (!v26)
      {
        return result;
      }
    }

    else
    {
      v27 = v25 < 0;
      if (v23 == v24)
      {
        v28 = result.n128_f32[0] > 0.0;
      }

      else
      {
        v28 = v27;
      }

      if (!v28)
      {
        return result;
      }
    }

    v29 = a3[1].n128_u64[0];
    result = *a3;
    v30 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v30;
    *a4 = result;
    a4[1].n128_u64[0] = v29;
    v31 = 12;
    if (*a6)
    {
      v31 = 8;
    }

    result.n128_f32[0] = *(a3->n128_u64[0] + v31) - *(a2->n128_u64[0] + v31);
    v32 = a3[1].n128_u64[0];
    v33 = a2[1].n128_u64[0];
    v34 = v32 - v33;
    if (a6[1] == 1)
    {
      v35 = v34 < 0;
      if (result.n128_f32[0] != 0.0)
      {
        v35 = result.n128_f32[0] > 0.0;
      }

      if (!v35)
      {
        return result;
      }
    }

    else
    {
      v36 = v34 < 0;
      if (v32 == v33)
      {
        v37 = result.n128_f32[0] > 0.0;
      }

      else
      {
        v37 = v36;
      }

      if (!v37)
      {
        return result;
      }
    }

    v38 = a2[1].n128_u64[0];
    result = *a2;
    v39 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v39;
    *a3 = result;
    a3[1].n128_u64[0] = v38;
    v40 = 12;
    if (*a6)
    {
      v40 = 8;
    }

    result.n128_f32[0] = *(a2->n128_u64[0] + v40) - *(a1->n128_u64[0] + v40);
    v41 = a2[1].n128_u64[0];
    v42 = a1[1].n128_u64[0];
    v43 = v41 - v42;
    if (a6[1] == 1)
    {
      v44 = v43 < 0;
      if (result.n128_f32[0] != 0.0)
      {
        v44 = result.n128_f32[0] > 0.0;
      }

      if (!v44)
      {
        return result;
      }
    }

    else
    {
      v45 = v43 < 0;
      if (v41 == v42)
      {
        v46 = result.n128_f32[0] > 0.0;
      }

      else
      {
        v46 = v45;
      }

      if (!v46)
      {
        return result;
      }
    }

    v47 = a1[1].n128_u64[0];
    result = *a1;
    v48 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v48;
    *a2 = result;
    a2[1].n128_u64[0] = v47;
    return result;
  }

  v17 = v16 < 0;
  if (result.n128_f32[0] != 0.0)
  {
    v17 = result.n128_f32[0] > 0.0;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(void *result, void *a2, char *a3)
{
  if (result != a2)
  {
    v3 = result + 3;
    if (result + 3 != a2)
    {
      LOBYTE(v4) = a3[1];
      v5 = *a3;
      do
      {
        v6 = result;
        result = v3;
        if (v5)
        {
          v7 = 8;
        }

        else
        {
          v7 = 12;
        }

        v9 = v6[2];
        v8 = v6[3];
        v10 = *(v8 + v7) - *(*v6 + v7);
        v11 = v6[5];
        v12 = v11 - v9;
        if (v4)
        {
          v13 = v12 < 0;
          if (v10 != 0.0)
          {
            v13 = v10 > 0.0;
          }

          if (v13)
          {
            goto LABEL_15;
          }

          LOBYTE(v4) = 1;
        }

        else
        {
          v14 = v10 > 0.0;
          v15 = v12 < 0;
          if (v11 != v9)
          {
            v14 = v15;
          }

          if (v14)
          {
LABEL_15:
            v16 = v6[4];
            do
            {
              while (1)
              {
                v17 = v6;
                *(v6 + 3) = *v6;
                v6[5] = v6[2];
                v19 = *(v6 - 3);
                v6 -= 3;
                v18 = v19;
                v5 = *a3;
                v20 = *a3 ? 8 : 12;
                v21 = *(v8 + v20) - *(v18 + v20);
                v22 = *(v17 - 1);
                v23 = v11 - v22;
                v4 = a3[1];
                if (v4 != 1)
                {
                  break;
                }

                v24 = v23 < 0;
                if (v21 != 0.0)
                {
                  v24 = v21 > 0.0;
                }

                if (!v24)
                {
                  goto LABEL_28;
                }
              }

              v25 = v23 < 0;
              if (v11 == v22)
              {
                v26 = v21 > 0.0;
              }

              else
              {
                v26 = v25;
              }
            }

            while (v26);
LABEL_28:
            *v17 = v8;
            v17[1] = v16;
            v17[2] = v11;
            goto LABEL_30;
          }

          LOBYTE(v4) = 0;
        }

LABEL_30:
        v3 = result + 3;
      }

      while (result + 3 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell *,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &>(uint64_t *a1, void *a2, _BYTE *a3)
{
  v3 = *a1;
  if (*a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v5 = *(v3 + v4);
  v6 = *(*(a2 - 3) + v4);
  v7 = a1[2];
  v8 = v5 - v6;
  v9 = *(a2 - 1);
  v10 = v7 - v9;
  if (a3[1] == 1)
  {
    v11 = v10 < 0;
    if (v8 != 0.0)
    {
      v11 = v8 > 0.0;
    }

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v10 < 0;
    if (v7 == v9)
    {
      v19 = v8 > 0.0;
    }

    if (!v19)
    {
LABEL_8:
      for (i = a1 + 3; i < a2; i += 3)
      {
        v13 = v5 - *(*i + v4);
        v14 = i[2];
        v15 = v7 - v14;
        if (a3[1])
        {
          v16 = v15 < 0;
          if (v13 != 0.0)
          {
            v16 = v13 > 0.0;
          }

          if (v16)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v17 = v15 < 0;
          if (v7 == v14)
          {
            v18 = v13 > 0.0;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_33;
    }
  }

  v20 = a1 + 3;
  do
  {
    while (1)
    {
      i = v20;
      v21 = v5 - *(*v20 + v4);
      v22 = v20[2];
      v23 = v7 - v22;
      v20 += 3;
      if (a3[1])
      {
        break;
      }

      v25 = v23 < 0;
      if (v7 == v22)
      {
        v26 = v21 > 0.0;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        goto LABEL_33;
      }
    }

    v24 = v23 < 0;
    if (v21 != 0.0)
    {
      v24 = v21 > 0.0;
    }
  }

  while (!v24);
LABEL_33:
  if (i < a2)
  {
    for (a2 -= 3; ; v9 = a2[2])
    {
      v27 = v5 - v6;
      v28 = v7 - v9;
      if (a3[1])
      {
        v29 = v28 < 0;
        if (v27 != 0.0)
        {
          v29 = v27 > 0.0;
        }

        if (!v29)
        {
          break;
        }
      }

      else
      {
        v30 = v28 < 0;
        if (v7 == v9)
        {
          v31 = v27 > 0.0;
        }

        else
        {
          v31 = v30;
        }

        if (!v31)
        {
          break;
        }
      }

      v32 = *(a2 - 3);
      a2 -= 3;
      v6 = *(v32 + v4);
    }
  }

  v33 = a1[1];
  while (i < a2)
  {
    v54 = i[2];
    v53 = *i;
    v34 = *a2;
    i[2] = a2[2];
    *i = v34;
    a2[2] = v54;
    *a2 = v53;
    if (*a3)
    {
      v35 = 8;
    }

    else
    {
      v35 = 12;
    }

    v36 = *(v3 + v35);
    v37 = i + 3;
    do
    {
      while (1)
      {
        i = v37;
        v38 = v36 - *(*v37 + v35);
        v39 = v37[2];
        v40 = v7 - v39;
        v37 += 3;
        if (a3[1])
        {
          break;
        }

        v42 = v40 < 0;
        if (v7 == v39)
        {
          v43 = v38 > 0.0;
        }

        else
        {
          v43 = v42;
        }

        if (v43)
        {
          goto LABEL_59;
        }
      }

      v41 = v40 < 0;
      if (v38 != 0.0)
      {
        v41 = v38 > 0.0;
      }
    }

    while (!v41);
LABEL_59:
    v44 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v44;
        v45 = v36 - *(*v44 + v35);
        v46 = v44[2];
        v47 = v7 - v46;
        v44 -= 3;
        if (a3[1])
        {
          break;
        }

        v49 = v47 < 0;
        if (v7 == v46)
        {
          v50 = v45 > 0.0;
        }

        else
        {
          v50 = v49;
        }

        if (!v50)
        {
          goto LABEL_69;
        }
      }

      v48 = v47 < 0;
      if (v45 != 0.0)
      {
        v48 = v45 > 0.0;
      }
    }

    while (v48);
LABEL_69:
    ;
  }

  if (i - 3 != a1)
  {
    v51 = *(i - 3);
    a1[2] = *(i - 1);
    *a1 = v51;
  }

  *(i - 3) = v3;
  *(i - 2) = v33;
  *(i - 1) = v7;
  return i;
}

void *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell *,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &>(uint64_t *a1, void *a2, _BYTE *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = 12;
  if (*a3)
  {
    v7 = 8;
  }

  v8 = *(v4 + v7);
  while (1)
  {
    v9 = *(a1[v3 + 3] + v7) - v8;
    v10 = a1[v3 + 5];
    v11 = v10 - v6;
    if (a3[1])
    {
      break;
    }

    v13 = v11 < 0;
    if (v10 == v6)
    {
      v14 = v9 > 0.0;
    }

    else
    {
      v14 = v13;
    }

    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_13:
    v3 += 3;
  }

  v12 = v11 < 0;
  if (v9 != 0.0)
  {
    v12 = v9 > 0.0;
  }

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = &a1[v3 + 3];
  if (v3 * 8)
  {
    v16 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v16;
        v17 = *(*v16 + v7) - v8;
        v18 = v16[2];
        v19 = v18 - v6;
        v16 -= 3;
        if (a3[1])
        {
          break;
        }

        v21 = v19 < 0;
        if (v18 == v6)
        {
          v22 = v17 > 0.0;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          goto LABEL_38;
        }
      }

      v20 = v19 < 0;
      if (v17 != 0.0)
      {
        v20 = v17 > 0.0;
      }
    }

    while (!v20);
  }

  else if (v15 < a2)
  {
    do
    {
      v23 = *(a2 - 3);
      a2 -= 3;
      v24 = *(v23 + v7) - v8;
      v25 = a2[2];
      v26 = v25 - v6;
      if (a3[1])
      {
        v27 = v26 >= 0;
        if (v24 != 0.0)
        {
          v27 = v24 <= 0.0;
        }
      }

      else
      {
        v28 = v26 >= 0;
        if (v25 == v6)
        {
          v27 = v24 <= 0.0;
        }

        else
        {
          v27 = v28;
        }
      }
    }

    while (v27 && v15 < a2);
  }

LABEL_38:
  if (v15 >= a2)
  {
    v30 = v15;
  }

  else
  {
    v30 = v15;
    v31 = a2;
    do
    {
      v52 = v30[2];
      v51 = *v30;
      v32 = *v31;
      v30[2] = v31[2];
      *v30 = v32;
      v31[2] = v52;
      *v31 = v51;
      if (*a3)
      {
        v33 = 8;
      }

      else
      {
        v33 = 12;
      }

      v34 = *(v4 + v33);
      v35 = v30 + 3;
      do
      {
        while (1)
        {
          v30 = v35;
          v36 = *(*v35 + v33) - v34;
          v37 = v35[2];
          v38 = v37 - v6;
          v35 += 3;
          if (a3[1])
          {
            break;
          }

          v40 = v38 < 0;
          if (v37 == v6)
          {
            v41 = v36 > 0.0;
          }

          else
          {
            v41 = v40;
          }

          if (!v41)
          {
            goto LABEL_53;
          }
        }

        v39 = v38 < 0;
        if (v36 != 0.0)
        {
          v39 = v36 > 0.0;
        }
      }

      while (v39);
LABEL_53:
      v42 = v31 - 3;
      do
      {
        while (1)
        {
          v31 = v42;
          v43 = *(*v42 + v33) - v34;
          v44 = v42[2];
          v45 = v44 - v6;
          v42 -= 3;
          if (a3[1])
          {
            break;
          }

          v47 = v45 < 0;
          if (v44 == v6)
          {
            v48 = v43 > 0.0;
          }

          else
          {
            v48 = v47;
          }

          if (v48)
          {
            goto LABEL_63;
          }
        }

        v46 = v45 < 0;
        if (v43 != 0.0)
        {
          v46 = v43 > 0.0;
        }
      }

      while (!v46);
LABEL_63:
      ;
    }

    while (v30 < v31);
  }

  if (v30 - 3 != a1)
  {
    v49 = *(v30 - 3);
    a1[2] = *(v30 - 1);
    *a1 = v49;
  }

  *(v30 - 3) = v4;
  *(v30 - 2) = v5;
  *(v30 - 1) = v6;
  return v30 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, (a1 + 24), a2 - 3, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = (a2 - 3);
      v8 = 12;
      if (*a3)
      {
        v8 = 8;
      }

      v9 = *(*(a2 - 3) + v8) - *(*a1 + v8);
      v10 = *(a2 - 1);
      v11 = *(a1 + 16);
      v12 = v10 - v11;
      if (a3[1] == 1)
      {
        v13 = v12 < 0;
        if (v9 != 0.0)
        {
          v13 = v9 > 0.0;
        }

        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        v37 = v12 < 0;
        if (v10 == v11)
        {
          v38 = v9 > 0.0;
        }

        else
        {
          v38 = v37;
        }

        if (!v38)
        {
          return 1;
        }
      }

      v39 = *(a1 + 16);
      v40 = *a1;
      v41 = *(a2 - 1);
      *a1 = *v7;
      *(a1 + 16) = v41;
      *v7 = v40;
      *(a2 - 1) = v39;
      return 1;
    }
  }

  v14 = (a1 + 48);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,0>(a1, (a1 + 24), (a1 + 48), a3);
  v15 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (2)
  {
    v18 = *v15;
    if (*a3)
    {
      v19 = 8;
    }

    else
    {
      v19 = 12;
    }

    v20 = *(v18 + v19) - *(*v14 + v19);
    v21 = v15[2];
    v22 = v14[2];
    v23 = v21 - v22;
    if (a3[1] == 1)
    {
      v24 = v23 < 0;
      if (v20 != 0.0)
      {
        v24 = v20 > 0.0;
      }

      if (!v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = v23 < 0;
      if (v21 == v22)
      {
        v26 = v20 > 0.0;
      }

      else
      {
        v26 = v25;
      }

      if (!v26)
      {
        goto LABEL_47;
      }
    }

    v27 = v15[1];
    *v15 = *v14;
    v15[2] = v14[2];
    v28 = v16;
    while (1)
    {
      v29 = *a3 ? 8 : 12;
      v30 = *(v18 + v29) - *(*(a1 + v28 + 24) + v29);
      v31 = *(a1 + v28 + 40);
      v32 = v21 - v31;
      if (a3[1] == 1)
      {
        break;
      }

      v34 = v32 < 0;
      if (v21 == v31)
      {
        v35 = v30 > 0.0;
      }

      else
      {
        v35 = v34;
      }

      if (!v35)
      {
        goto LABEL_45;
      }

LABEL_43:
      *(a1 + v28 + 48) = *(a1 + v28 + 24);
      *(a1 + v28 + 64) = *(a1 + v28 + 40);
      v28 -= 24;
      if (v28 == -48)
      {
        v36 = a1;
        goto LABEL_46;
      }
    }

    v33 = v32 < 0;
    if (v30 != 0.0)
    {
      v33 = v30 > 0.0;
    }

    if (v33)
    {
      goto LABEL_43;
    }

LABEL_45:
    v36 = (a1 + v28 + 48);
LABEL_46:
    *v36 = v18;
    v36[1] = v27;
    v36[2] = v21;
    if (++v17 != 8)
    {
LABEL_47:
      v14 = v15;
      v16 += 24;
      v15 += 3;
      if (v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 3 == a2;
  }
}

__n128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(__n128 *a1, __n128 *a2, __n128 *a3, char *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 3 * v10;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i = (i + 24))
      {
        if (*a4)
        {
          v14 = 8;
        }

        else
        {
          v14 = 12;
        }

        v15 = *(i->n128_u64[0] + v14) - *(a1->n128_u64[0] + v14);
        v16 = i[1].n128_i64[0];
        v17 = a1[1].n128_u64[0];
        v18 = v16 - v17;
        if (a4[1] == 1)
        {
          v19 = v18 < 0;
          if (v15 != 0.0)
          {
            v19 = v15 > 0.0;
          }

          if (!v19)
          {
            continue;
          }
        }

        else
        {
          v20 = v18 < 0;
          if (v16 == v17)
          {
            v21 = v15 > 0.0;
          }

          else
          {
            v21 = v20;
          }

          if (!v21)
          {
            continue;
          }
        }

        v22 = i[1].n128_u64[0];
        v23 = *i;
        v24 = a1[1].n128_u64[0];
        *i = *a1;
        i[1].n128_u64[0] = v24;
        *a1 = v23;
        a1[1].n128_u64[0] = v22;
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(a1, a4, v9, a1);
      }
    }

    if (v8 >= 25)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v26 = (a2 - 24);
      do
      {
        v31 = *a1;
        v32 = a1[1].n128_u64[0];
        std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(a1, a4, v25);
        if (v26 == v27)
        {
          *v27 = v31;
          v27[1].n128_u64[0] = v32;
        }

        else
        {
          v28 = *v26;
          v27[1].n128_u64[0] = v26[1].n128_u64[0];
          *v27 = v28;
          *v26 = v31;
          v26[1].n128_u64[0] = v32;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(a1, &v27[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v27[1].n128_i8[8] - a1) >> 3));
        }

        v26 = (v26 - 24);
      }

      while (v25-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = (result + 24 * v5);
  v7 = *a2;
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 >= a3)
  {
    v36 = (v7 & 1) == 0;
    v8 = 8;
    if (v36)
    {
      v8 = 12;
    }

    LOBYTE(v13) = a2[1];
  }

  else
  {
    v36 = (v7 & 1) == 0;
    v8 = 12;
    if (!v36)
    {
      v8 = 8;
    }

    v9 = *(*v6 + v8) - *(v6[3] + v8);
    v10 = v6[2];
    v11 = v6[5];
    v12 = v10 - v11;
    v13 = a2[1];
    if (v13 == 1)
    {
      v14 = v12 < 0;
      if (v9 != 0.0)
      {
        v14 = v9 > 0.0;
      }

      if (!v14)
      {
        LOBYTE(v13) = 1;
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v15 = v12 < 0;
    if (v10 == v11)
    {
      v16 = v9 > 0.0;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
LABEL_19:
      v6 += 3;
      v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      goto LABEL_21;
    }

    LOBYTE(v13) = 0;
  }

LABEL_21:
  v17 = *a4;
  v18 = *(*v6 + v8) - *(*a4 + v8);
  v19 = v6[2];
  v20 = a4[2];
  v21 = v19 - v20;
  if (v13)
  {
    v22 = v21 < 0;
    if (v18 != 0.0)
    {
      v22 = v18 > 0.0;
    }

    if (v22)
    {
      return result;
    }
  }

  else
  {
    v23 = v18 > 0.0;
    v24 = v21 < 0;
    if (v19 != v20)
    {
      v23 = v24;
    }

    if (v23)
    {
      return result;
    }
  }

  v25 = a4[1];
  v26 = *v6;
  a4[2] = v6[2];
  *a4 = v26;
  if (v4 >= v5)
  {
    while (1)
    {
      v28 = (2 * v5) | 1;
      v27 = (result + 24 * v28);
      v5 = 2 * v5 + 2;
      if (v5 >= a3)
      {
        if (*a2)
        {
          v41 = 8;
        }

        else
        {
          v41 = 12;
        }

        v39 = *(*v27 + v41) - *(v17 + v41);
        v42 = v27[2];
        v40 = v42 - v20;
        v5 = v28;
        if (a2[1])
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (*a2)
        {
          v29 = 8;
        }

        else
        {
          v29 = 12;
        }

        v30 = *(*v27 + v29) - *(v27[3] + v29);
        v31 = v27[2];
        v32 = v27[5];
        v33 = v31 - v32;
        v34 = *(v17 + v29);
        if (a2[1])
        {
          v35 = v33 < 0;
          if (v30 != 0.0)
          {
            v35 = v30 > 0.0;
          }

          v36 = !v35;
          if (v35)
          {
            v37 = 3;
          }

          else
          {
            v37 = 0;
          }

          v38 = v27[v37];
          if (v36)
          {
            v5 = v28;
          }

          else
          {
            v27 += 3;
          }

          v39 = *(v38 + v29) - v34;
          v40 = v27[2] - v20;
LABEL_49:
          v43 = v40 < 0;
          v44 = v39 == 0.0;
          v45 = v39 > 0.0;
          goto LABEL_60;
        }

        v46 = v30 > 0.0;
        v47 = v33 < 0;
        if (v31 != v32)
        {
          v46 = v47;
        }

        v48 = !v46;
        if (v46)
        {
          v49 = 3;
        }

        else
        {
          v49 = 0;
        }

        v50 = v27[v49];
        if (v48)
        {
          v5 = v28;
        }

        else
        {
          v27 += 3;
        }

        v39 = *(v50 + v29) - v34;
        v42 = v27[2];
        v40 = v42 - v20;
      }

      v43 = v39 > 0.0;
      v45 = v40 < 0;
      v44 = v42 == v20;
LABEL_60:
      if (!v44)
      {
        v43 = v45;
      }

      if (v43)
      {
        break;
      }

      v51 = *v27;
      v6[2] = v27[2];
      *v6 = v51;
      v6 = v27;
      if (v4 < v5)
      {
        goto LABEL_64;
      }
    }
  }

  v27 = v6;
LABEL_64:
  *v27 = v17;
  v27[1] = v25;
  v27[2] = v20;
  return result;
}

__n128 std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(__n128 *a1, _BYTE *a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 24 * v3;
    a1 = (v5 + 24);
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 >= a3)
    {
      goto LABEL_16;
    }

    v10 = *(v5 + 6);
    v8 = (v5 + 48);
    v9 = v10;
    if (*a2)
    {
      v11 = 8;
    }

    else
    {
      v11 = 12;
    }

    v12 = *(v8[-2].n128_u64[1] + v11) - *(v9 + v11);
    v13 = v8[-1].n128_u64[1];
    v14 = v8[1].n128_u64[0];
    v15 = v13 - v14;
    if (a2[1] == 1)
    {
      v16 = v15 < 0;
      if (v12 != 0.0)
      {
        v16 = v12 > 0.0;
      }

      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v17 = v15 < 0;
      if (v13 == v14)
      {
        v18 = v12 > 0.0;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
LABEL_15:
        a1 = v8;
        v3 = v7;
      }
    }

LABEL_16:
    result = *a1;
    v4[1].n128_u64[0] = a1[1].n128_u64[0];
    *v4 = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::{lambda(_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell const&)#1} &,_NUIGridArrangementHelper::enumerateCellRanges(std::vector<_NUIGridArrangementCell> &,BOOL,BOOL,void({block_pointer})(_NUIGridArrangementCell&,_NSRange))::_NUISortedCell*>(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 24 * (v4 >> 1));
  v7 = *(a2 - 24);
  v8 = 12;
  if (*a3)
  {
    v8 = 8;
  }

  v9 = *(*v6 + v8) - *(v7 + v8);
  v10 = v6[2];
  v11 = *(a2 - 8);
  v12 = v10 - v11;
  if (a3[1] == 1)
  {
    v13 = v12 < 0;
    if (v9 != 0.0)
    {
      v13 = v9 > 0.0;
    }

    if (!v13)
    {
      return result;
    }
  }

  else
  {
    v14 = v12 < 0;
    if (v10 == v11)
    {
      v15 = v9 > 0.0;
    }

    else
    {
      v15 = v14;
    }

    if (!v15)
    {
      return result;
    }
  }

  v16 = *(a2 - 16);
  v17 = *v6;
  *(a2 - 8) = v6[2];
  *(a2 - 24) = v17;
  if (v4 >= 2)
  {
    while (1)
    {
      v19 = v5 - 1;
      v5 = (v5 - 1) >> 1;
      v18 = (result + 24 * v5);
      if (*a3)
      {
        v20 = 8;
      }

      else
      {
        v20 = 12;
      }

      v21 = *(*v18 + v20) - *(v7 + v20);
      v22 = v18[2];
      v23 = v22 - v11;
      if (a3[1] == 1)
      {
        v24 = v23 < 0;
        if (v21 != 0.0)
        {
          v24 = v21 > 0.0;
        }

        if (!v24)
        {
          break;
        }
      }

      else
      {
        v25 = v23 < 0;
        if (v22 == v11)
        {
          v26 = v21 > 0.0;
        }

        else
        {
          v26 = v25;
        }

        if (!v26)
        {
          break;
        }
      }

      v27 = *v18;
      v6[2] = v18[2];
      *v6 = v27;
      v6 = (result + 24 * v5);
      if (v19 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v18 = v6;
LABEL_28:
  *v18 = v7;
  v18[1] = v16;
  v18[2] = v11;
  return result;
}

uint64_t nui::stack_bitset::erase(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a3 < *a1)
  {
    *(a1[1] + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << a3);
    nui::stack_bitset::iterator::operator++(v4);
    return v4[0];
  }

  return a2;
}

uint64_t ___ZL25NUIStringFromDistribution24NUIContainerDistribution_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CC30, @"Fill", &unk_282E9CC48, @"FillEqual", &unk_282E9CC60, @"FillProp", &unk_282E9CC78, @"EqualSpacing", &unk_282E9CC90, @"EqualCentering", &unk_282E9CCA8, @"EqualGrouping", &unk_282E9CCC0, @"StackLeading", &unk_282E9CCD8, @"StackCenter", &unk_282E9CCF0, @"StackTrailing", &unk_282E9CD08, 0}];
  NUIStringFromDistribution(NUIContainerDistribution)::dict = result;
  return result;
}

void *__Block_byref_object_copy__0(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void std::vector<CALayer *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowRowContainer *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t ___ZL22NUIStringFromAlignment21NUIContainerAlignment_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CD20, @"Fill", &unk_282E9CD38, @"Top/Lead", &unk_282E9CD50, @"FirstBL", &unk_282E9CD68, @"Center", &unk_282E9CD80, @"Bottom/Trail", &unk_282E9CD98, @"LastBL", &unk_282E9CDB0, 0}];
  NUIStringFromAlignment(NUIContainerAlignment)::dict = result;
  return result;
}

void *std::__tree<UIView *>::__emplace_unique_key_args<UIView *,UIView *&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<UIView *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZL22NUIStringFromAlignment21NUIContainerAlignment_block_invoke_0()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CDC8, @"Fill", &unk_282E9CDE0, @"Top/Lead", &unk_282E9CDF8, @"FirstBL", &unk_282E9CE10, @"Center", &unk_282E9CE28, @"Bottom/Trail", &unk_282E9CE40, @"LastBL", &unk_282E9CE58, 0}];
  _MergedGlobals_0 = result;
  return result;
}

void _NUIGridArrangement::~_NUIGridArrangement(_NUIGridArrangement *this)
{
  begin = this->viewFrames.__begin_;
  if (begin)
  {
    this->viewFrames.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->rows.__begin_;
  if (v3)
  {
    this->rows.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->columns.__begin_;
  if (v4)
  {
    this->columns.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->cells.__begin_;
  if (v5)
  {
    this->cells.__end_ = v5;
    operator delete(v5);
  }
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<UIView  {__kindof}*&,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0B31C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21D0B444C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL25NUIStringFromDistribution24NUIContainerDistribution_block_invoke_0()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CE70, @"Fill", &unk_282E9CE88, @"FillEqual", &unk_282E9CEA0, @"FillProp", &unk_282E9CEB8, @"EqualSpacing", &unk_282E9CED0, @"EqualCentering", &unk_282E9CEE8, @"EqualGrouping", &unk_282E9CF00, @"StackLeading", &unk_282E9CF18, @"StackCenter", &unk_282E9CF30, @"StackTrailing", &unk_282E9CF48, 0}];
  NUIStringFromDistribution(NUIContainerDistribution)::dict = result;
  return result;
}

uint64_t ___ZL22NUIStringFromAlignment21NUIContainerAlignment_block_invoke_1()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CE70, @"Fill", &unk_282E9CE88, @"Top/Lead", &unk_282E9CEA0, @"FirstBL", &unk_282E9CEB8, @"Center", &unk_282E9CED0, @"Bottom/Trail", &unk_282E9CEE8, @"LastBL", &unk_282E9CF00, 0}];
  NUIStringFromAlignment(NUIContainerAlignment)::dict = result;
  return result;
}

void sub_21D0B4D7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *_NUIBoxArrangement::debugDictionary(_NUIBoxArrangement *this)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"_NUIBoxArrangement" forKey:@"class"];
  baseLineFromTop = this->maxBaseLinePair.baseLineFromTop;
  baseLineFromBottom = this->maxBaseLinePair.baseLineFromBottom;
  if (baseLineFromTop == 0.0 || baseLineFromTop == 2.22507386e-308)
  {
    if (baseLineFromBottom == 0.0 || baseLineFromBottom == 2.22507386e-308)
    {
      goto LABEL_20;
    }

    v17 = @"bottomOffset";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:baseLineFromBottom];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v18;
    v10 = &v17;
  }

  else
  {
    if (baseLineFromBottom != 0.0 && baseLineFromBottom != 2.22507386e-308)
    {
      v21[0] = @"topOffset";
      v21[1] = @"bottomOffset";
      v22[0] = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v22[1] = [MEMORY[0x277CCABB0] numberWithDouble:baseLineFromBottom];
      v8 = MEMORY[0x277CBEAC0];
      v9 = v22;
      v10 = v21;
      v12 = 2;
      goto LABEL_18;
    }

    v19 = @"topOffset";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v20;
    v10 = &v19;
  }

  v12 = 1;
LABEL_18:
  v2 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v12];
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:@"maxBaselines"];
  }

LABEL_20:
  if (this->cells.__end_ != this->cells.__begin_)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    begin = this->cells.__begin_;
    end = this->cells.__end_;
    while (begin != end)
    {
      [v13 addObject:_NUIFlowArrangementCell::debugDictionary(begin)];
      begin = (begin + 64);
    }

    [v3 setObject:v13 forKeyedSubscript:@"cells"];
  }

  return v3;
}

uint64_t ___ZL22NUIStringFromAlignment21NUIContainerAlignment_block_invoke_2()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9CF60, @"Fill", &unk_282E9CF78, @"Top/Lead", &unk_282E9CF90, @"FirstBL", &unk_282E9CFA8, @"Center", &unk_282E9CFC0, @"Bottom/Trail", &unk_282E9CFD8, @"LastBL", &unk_282E9CFF0, 0}];
  NUIStringFromAlignment(NUIContainerAlignment)::dict = result;
  return result;
}

uint64_t ___ZL22NUIStringFromAlignment21NUIContainerAlignment_block_invoke_3()
{
  result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Default", &unk_282E9D008, @"Fill", &unk_282E9D020, @"Top/Lead", &unk_282E9D038, @"FirstBL", &unk_282E9D050, @"Center", &unk_282E9D068, @"Bottom/Trail", &unk_282E9D080, @"LastBL", &unk_282E9D098, 0}];
  NUIStringFromAlignment(NUIContainerAlignment)::dict = result;
  return result;
}

void sub_21D0B866C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*&,_NSRange &,_NSRange,NUIContainerAlignment &,NUIContainerAlignment>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v6 > 0x249249249249249)
  {
    std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v9 = 0x249249249249249;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIGridArrangementCell>>(a1, v9);
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  _NUIGridArrangementCell::_NUIGridArrangementCell(v10, *a2, *a3, a3[1], *a4, a4[1], *a5, *a6);
  v11 = *a1;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = (v10 + *a1 - v12);
    do
    {
      v15 = *v11;
      v16 = v11[2];
      v14[1] = v11[1];
      v14[2] = v16;
      *v14 = v15;
      v17 = v11[3];
      v18 = v11[4];
      v19 = v11[6];
      v14[5] = v11[5];
      v14[6] = v19;
      v14[3] = v17;
      v14[4] = v18;
      v11 += 7;
      v14 += 7;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10 + 112;
}

void sub_21D0B8B88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19_NUIFlowArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  v10 = *(a1 + 40);
  if ([(_NUIFlowContainer *)*(v10 + 104) canUseSimpleGrid])
  {
    v11 = *(v10 + 104);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN19_NUIFlowArrangement13positionCellsE6CGRectU13block_pointerFvPU29objcproto18NUIArrangementItem11objc_objectS0_E_block_invoke_2;
    v24[3] = &unk_2783293F0;
    v24[4] = *(a1 + 32);
    v16 = v11 + 8;
    v17 = v24;
LABEL_5:
    _NUIGridArrangement::positionCells(v16, v17, v12, v13, v14, v15);
    return;
  }

  _NUIGridArrangement::resetForInvalidation((a2 + 8), 0);
  v26.width = a5;
  v26.height = a6;
  _NUIGridArrangement::measureCells((a2 + 8), 1, v26);
  if (*(a2 + 16) == 1)
  {
    v12 = OUTLINED_FUNCTION_4();
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_4();

  _NUIGridArrangement::positionCells(v18, v19, v20, v21, v22, v23);
}

void _NUIFlowArrangement::_NUIFlowArrangement(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 88) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 64) = v6;

    operator delete(v6);
  }
}

void _NUIFlowArrangement::~_NUIFlowArrangement(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void _NUIArrangementInvalidSize_cold_2(uint64_t a1, NSObject *a2, double a3, double a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = NSStringFromCGSize(*&a3);
  _os_log_error_impl(&dword_21D09E000, a2, OS_LOG_TYPE_ERROR, "An item %@ returned an invalid size %@. Break on _NUIArrangementInvalidSize to debug.", &v5, 0x16u);
}

void _NUIGridArrangement::positionSubsetCells(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21D09E000, a2, OS_LOG_TYPE_DEBUG, "Grid arrangement does not have valid measurement for %@", &v3, 0xCu);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21D09E000, a2, OS_LOG_TYPE_ERROR, "Grid arrangement does not have valid measurement for %@", &v3, 0xCu);
}

void sub_21D0B9E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose(&a25, 8);
  std::__tree<UIView *>::destroy(v32 + 48, a32);
  _Unwind_Resume(a1);
}

void _NUIBoxArrangement::positionCells(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21D09E000, a2, OS_LOG_TYPE_DEBUG, "Box arrangement does not have valid measurement for %@", &v3, 0xCu);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21D09E000, a2, OS_LOG_TYPE_ERROR, "Box arrangement does not have valid measurement for %@", &v3, 0xCu);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}