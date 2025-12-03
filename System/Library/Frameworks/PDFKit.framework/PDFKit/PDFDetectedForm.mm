@interface PDFDetectedForm
- (PDFDetectedForm)initWithPage:(id)page displayBox:(int64_t)box;
- (id).cxx_construct;
- (id)detectedFormFieldAtIndex:(unint64_t)index;
- (id)detectedFormFieldNearestPoint:(CGPoint)point;
- (int64_t)_classifyRect:(CGRect)rect;
- (vector<const)_collectGlyphEntriesInDisplayList:(PDFDetectedForm *)self medianGlyphHeight:(SEL)height;
- (void)_insertFieldRect:(const CGRect *)rect ofKind:(int64_t)kind;
@end

@implementation PDFDetectedForm

- (PDFDetectedForm)initWithPage:(id)page displayBox:(int64_t)box
{
  pageCopy = page;
  v37.receiver = self;
  v37.super_class = PDFDetectedForm;
  v7 = [(PDFDetectedForm *)&v37 init];
  if (!v7)
  {
LABEL_19:
    createDisplayListForFormDetection = v7;
    goto LABEL_20;
  }

  createDisplayListForFormDetection = [pageCopy createDisplayListForFormDetection];
  v36[1] = createDisplayListForFormDetection;
  if (createDisplayListForFormDetection)
  {
    v7->_displayBox = box;
    [pageCopy boundsForBox:box];
    v10 = v9;
    v12 = v11;
    [pageCopy boundsForBox:0];
    v14 = v13;
    v16 = v15;
    v36[0] = 0;
    [(PDFDetectedForm *)v7 _collectGlyphEntriesInDisplayList:createDisplayListForFormDetection medianGlyphHeight:v36];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3321888768;
    v25 = __43__PDFDetectedForm_initWithPage_displayBox___block_invoke;
    v26 = &unk_1F416CD88;
    v28 = v10 - v14;
    v29 = v12 - v16;
    v17 = v7;
    v27 = v17;
    v30 = v36[0];
    v32 = 0;
    v33 = 0;
    __p = 0;
    std::vector<CGDisplayListEntry const*>::__init_with_size[abi:ne200100]<CGDisplayListEntry const**,CGDisplayListEntry const**>(&__p, v34, v35, (v35 - v34) >> 3);
    CGDisplayListEnumerateEntriesWithOptions();
    begin = v17->_rows.__begin_;
    end = v17->_rows.__end_;
    if (begin != end)
    {
      do
      {
        PDFDetectedFormRow::mergeFields(begin);
        begin = (begin + 32);
      }

      while (begin != end);
      begin = v17->_rows.__begin_;
      end = v17->_rows.__end_;
    }

    if (end == begin)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = *(end - 3);
        if (v21 != *(end - 2))
        {
          do
          {
            [*v21++ setIndex:{v20++, v23, v24, v25, v26, v27, *&v28, *&v29, v30}];
          }

          while (v21 != *(end - 2));
          begin = v17->_rows.__begin_;
        }

        end = (end - 32);
      }

      while (end != begin);
    }

    v17->_fieldCount = v20;
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    CFRelease(createDisplayListForFormDetection);
    goto LABEL_19;
  }

LABEL_20:

  return createDisplayListForFormDetection;
}

void __43__PDFDetectedForm_initWithPage_displayBox___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  CGDisplayListEntryGetBoundingBox();
  if (!CGRectIsEmpty(v34))
  {
    if (CGDisplayListEntryGetType() == 2)
    {
      Path = CGDisplayListEntryPathGetPath();
      if (Path)
      {
        v3 = Path;
        v4 = *(MEMORY[0x1E695F050] + 16);
        v28.origin = *MEMORY[0x1E695F050];
        v28.size = v4;
        if (CGPathIsLine() && v32.scale.height == v32.rotation)
        {
          v28.origin = v32.scale;
          v28.size.width = v32.horizontalShear - v32.scale.width;
          v28.size.height = 0.0;
        }

        else if (CGPathIsRect(v3, &recta))
        {
          v28 = recta;
        }

        if (!CGRectIsNull(v28))
        {
          v35 = CGRectOffset(v28, *(a1 + 40), *(a1 + 48));
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
          v28 = v35;
          v9 = [*(a1 + 32) _classifyRect:?];
          v10 = v9;
          if (v9)
          {
            if (v9 != 1)
            {
              goto LABEL_23;
            }

            v36.origin.x = x;
            v36.origin.y = y;
            v36.size.width = width;
            v36.size.height = height;
            MidY = CGRectGetMidY(v36);
            v28.origin.y = MidY;
            v28.size.height = 0.0;
            v12 = *(a1 + 56);
            v13 = objc_opt_new();
            v14 = *(a1 + 64);
            v15 = *(a1 + 72);
            if (v14 != v15)
            {
              v16 = ceil(v12);
              do
              {
                CGDisplayListEntryGetBoundingBox();
                v42.origin.x = x;
                v42.origin.y = MidY;
                v42.size.width = width;
                v42.size.height = v16;
                v38 = CGRectIntersection(v37, v42);
                v17 = v38.origin.x;
                v18 = v38.origin.y;
                v19 = v38.size.width;
                v20 = v38.size.height;
                if (!CGRectIsNull(v38))
                {
                  v39.origin.x = v17;
                  v39.origin.y = v18;
                  v39.size.width = v19;
                  v39.size.height = v20;
                  v40 = CGRectIntegral(v39);
                  [v13 addIndexesInRange:{v40.origin.x, v40.size.width}];
                }

                v14 += 8;
              }

              while (v14 != v15);
            }

            v41.size.height = 0.0;
            v41.origin.x = x;
            v41.origin.y = MidY;
            v41.size.width = width;
            v21 = CGRectGetWidth(v41);
            v22 = v21 - [v13 count] >= 20.0;

            if (v22)
            {
LABEL_23:
              [*(a1 + 32) _insertFieldRect:&v28 ofKind:v10];
            }
          }
        }
      }
    }

    else if (CGDisplayListEntryGetType() == 1)
    {
      v31 = 0u;
      memset(&recta, 0, sizeof(recta));
      CGDisplayListEntryGlyphsGetCTM();
      v29 = 0u;
      memset(&v28, 0, sizeof(v28));
      CGDisplayListEntryGlyphsGetFTM();
      memset(&v32, 0, sizeof(v32));
      memset(&t1, 0, sizeof(t1));
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformConcat(&transform, &t1, &t2);
      CGAffineTransformDecompose(&v32, &transform);
      if (fabs(v32.rotation) <= 2.22044605e-14)
      {
        if (CGDisplayListEntryGlyphsGetFont())
        {
          v24 = 95;
          glyphs = 0;
          CGFontGetGlyphsForUnichars();
        }
      }
    }
  }
}

- (id)detectedFormFieldNearestPoint:(CGPoint)point
{
  x = point.x;
  end = self->_rows.__end_;
  begin = self->_rows.__begin_;
  if (begin == end)
  {
    goto LABEL_20;
  }

  v6 = (end - begin) >> 5;
  v7 = self->_rows.__begin_;
  do
  {
    v8 = v6 >> 1;
    v9 = &v7[4 * (v6 >> 1)];
    v11 = *v9;
    v10 = v9 + 4;
    v6 += ~(v6 >> 1);
    if (v11 < point.y)
    {
      v7 = v10;
    }

    else
    {
      v6 = v8;
    }
  }

  while (v6);
  if (v7 == end)
  {
    begin = (end - 32);
  }

  else if (v7 != begin)
  {
    begin = v7;
    if (vabdd_f64(point.y, *v7) >= vabdd_f64(point.y, *(v7 - 4)))
    {
      begin = (v7 - 4);
    }
  }

  if (*(begin + 2) == *(begin + 1) || vabdd_f64(point.y, *begin) > 20.0 || (v12 = PDFDetectedFormRow::fieldNearestXCoordinate(begin, point.x), *(begin + 2) == v12))
  {
LABEL_20:
    v18 = 0;
  }

  else
  {
    v13 = *v12;
    [v13 minX];
    if (x >= v14 && ([v13 maxX], x < v15) || (objc_msgSend(v13, "minX"), vabdd_f64(x, v16) <= 20.0) || (objc_msgSend(v13, "maxX"), vabdd_f64(x, v17) <= 20.0))
    {
      v18 = v13;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)detectedFormFieldAtIndex:(unint64_t)index
{
  begin = self->_rows.__begin_;
  end = self->_rows.__end_;
  if (end == begin)
  {
    v9 = 0;

    return v9;
  }

  v6 = 0;
  while (1)
  {
    v7 = index - v6;
    if (index >= v6)
    {
      break;
    }

    v6 += (*(end - 2) - *(end - 3)) >> 3;
LABEL_6:
    end = (end - 32);
    if (end == begin)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  v8 = *(end - 3);
  v6 += (*(end - 2) - v8) >> 3;
  if (v6 <= index)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 8 * v7);
LABEL_12:

  return v9;
}

- (void)_insertFieldRect:(const CGRect *)rect ofKind:(int64_t)kind
{
  MidY = CGRectGetMidY(*rect);
  begin = self->_rows.__begin_;
  end = self->_rows.__end_;
  p_rows = &self->_rows;
  if (end == begin)
  {
    begin = end;
  }

  else
  {
    v11 = (end - begin) >> 5;
    do
    {
      v12 = v11 >> 1;
      v13 = (begin + 32 * (v11 >> 1));
      v15 = *v13;
      v14 = (v13 + 4);
      v11 += ~(v11 >> 1);
      if (v15 < MidY)
      {
        begin = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
  }

  if (end == begin || *begin != MidY)
  {
    v17 = MidY;
    memset(v18, 0, sizeof(v18));
    begin = std::vector<PDFDetectedFormRow>::insert(p_rows, begin, &v17);
    v19 = v18;
    std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);
  }

  v16 = [[PDFDetectedFormField alloc] initWithRect:kind andKind:rect->origin.x, rect->origin.y, rect->size.width, rect->size.height];
  PDFDetectedFormRow::insertField(begin, v16);
}

- (vector<const)_collectGlyphEntriesInDisplayList:(PDFDetectedForm *)self medianGlyphHeight:(SEL)height
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4812000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = &unk_1C1D88347;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__49;
  v15 = __Block_byref_object_dispose__50;
  v16 = &unk_1C1D88347;
  v18 = 0;
  v19 = 0;
  __p = 0;
  NumberOfEntriesOfType = CGDisplayListGetNumberOfEntriesOfType();
  std::vector<CGDisplayListEntry const*>::reserve(&__p, NumberOfEntriesOfType);
  CGDisplayListEnumerateEntriesWithOptions();
  v8 = v21[8];
  if (v8)
  {
    v28 = v21[6];
    std::__advance[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(&v28, v8 >> 1);
    *a5 = v28[4];
  }

  v9 = v12;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<CGDisplayListEntry const*>::__init_with_size[abi:ne200100]<CGDisplayListEntry const**,CGDisplayListEntry const**>(retstr, v9[6], v9[7], (v9[7] - v9[6]) >> 3);
  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v20, 8);
  std::__tree<unsigned long>::destroy(&v26, v27[0]);
  return result;
}

void __71__PDFDetectedForm__collectGlyphEntriesInDisplayList_medianGlyphHeight___block_invoke(uint64_t a1, uint64_t a2)
{
  if (CGDisplayListEntryGetType() == 1)
  {
    CGDisplayListEntryGetBoundingBox();
    if (!CGRectIsEmpty(v32))
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      CGDisplayListEntryGlyphsGetCTM();
      memset(&v28, 0, sizeof(v28));
      CGDisplayListEntryGlyphsGetFTM();
      memset(&t1, 0, sizeof(t1));
      memset(&v27, 0, sizeof(v27));
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformConcat(&v27, &t1, &t2);
      Font = CGDisplayListEntryGlyphsGetFont();
      CGDisplayListEntryGlyphsGetScale();
      v6 = v5;
      FontBBox = CGFontGetFontBBox(Font);
      width = FontBBox.size.width;
      height = FontBBox.size.height;
      UnitsPerEm = CGFontGetUnitsPerEm(Font);
      t2 = v27;
      memset(&t1, 0, sizeof(t1));
      CGAffineTransformDecompose(&t1, &t2);
      if (fabs(t1.d) > 2.22044605e-14)
      {
        *&v24.a = v29;
        *&v24.c = v30;
        *&v24.tx = v31;
        CGAffineTransformDecompose(&t2, &v24);
        t1 = t2;
        CGAffineTransformMakeScale(&t2, fabs(t2.a), fabs(t2.b));
        v29 = *&t2.a;
        v30 = *&t2.c;
        v31 = *&t2.tx;
        v24 = v28;
        CGAffineTransformDecompose(&t2, &v24);
        t1 = t2;
        CGAffineTransformMakeScale(&t2, fabs(t2.a), fabs(t2.b));
        v28 = t2;
      }

      CGAffineTransformMakeScale(&t2, v6 / UnitsPerEm * v28.a, v6 / UnitsPerEm * v28.d);
      v27 = t2;
      *&t2.a = vmlaq_n_f64(vmulq_n_f64(v30, height * t2.d + t2.b * width), v29, height * t2.c + t2.a * width);
      std::__tree<double>::__emplace_unique_key_args<double,double const&>(*(*(a1 + 32) + 8) + 48, &t2.b);
      v10 = *(*(a1 + 40) + 8);
      v12 = v10[7];
      v11 = v10[8];
      if (v12 >= v11)
      {
        v14 = v10[6];
        v15 = (v12 - v14) >> 3;
        if ((v15 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - v14;
        v17 = v16 >> 2;
        if (v16 >> 2 <= (v15 + 1))
        {
          v17 = v15 + 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGDisplayListEntry const*>>((v10 + 6), v18);
        }

        v19 = (8 * v15);
        *v19 = a2;
        v13 = 8 * v15 + 8;
        v20 = v10[6];
        v21 = v10[7] - v20;
        v22 = v19 - v21;
        memcpy(v19 - v21, v20, v21);
        v23 = v10[6];
        v10[6] = v22;
        v10[7] = v13;
        v10[8] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v12 = a2;
        v13 = (v12 + 1);
      }

      v10[7] = v13;
    }
  }
}

- (int64_t)_classifyRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = CGRectGetWidth(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14);
  if (v8 <= 2.0 && v7 >= 20.0)
  {
    return 1;
  }

  v10 = v7 / v8;
  if (v8 >= 16.0 && v10 > 3.0)
  {
    return 2;
  }

  if (v10 > 1.0 || v10 < 0.75 || v8 > 24.0 || v8 < 16.0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end