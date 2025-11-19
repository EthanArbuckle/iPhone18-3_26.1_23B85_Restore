void sub_1841C4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12)
{
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(&a9);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(&a10);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(&a11);
  applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t FindElementForInserting(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ElementForInserting = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL23FindElementForInsertingP15CGPDFTaggedNode6CGRect_block_invoke;
  v11[3] = &unk_1E6E2D598;
  *&v11[6] = a2;
  *&v11[7] = a3;
  *&v11[8] = a4;
  *&v11[9] = a5;
  v11[10] = (a5 * a4);
  v11[4] = v12;
  v11[5] = &v13;
  CGPDFTaggedNodeEnumerateChildren(a1, v11);
  if (v14[3])
  {
    ElementForInserting = FindElementForInserting(a2, a3, a4, a5);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);
  return ElementForInserting;
}

void sub_1841C47C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ___ZL23FindElementForInsertingP15CGPDFTaggedNode6CGRect_block_invoke(double *a1, uint64_t a2)
{
  if (!a2 || *(a2 + 16) != 1)
  {
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];
    *&v16.origin.x = CGPDFTaggedNodeGetBounds(a2).n128_u64[0];
    v16.origin.y = v8;
    v16.size.width = v9;
    v16.size.height = v10;
    v14.origin.x = v4;
    v14.origin.y = v5;
    v14.size.width = v6;
    v14.size.height = v7;
    v15 = CGRectIntersection(v14, v16);
    v11 = v15.size.width * v15.size.height;
    if (*(a1 + 10) * 0.1 < (v15.size.width * v15.size.height))
    {
      v12 = *(*(a1 + 4) + 8);
      if (*(v12 + 24) < v11)
      {
        *(v12 + 24) = v11;
        *(*(*(a1 + 5) + 8) + 24) = a2;
      }
    }
  }

  return 1;
}

void TaggedParser::BuildStructureElementFromGroupRegion(TaggedParser *this, StructureElement *a2, PDFCRGroupRegion *a3, CGPDFPage *a4, NSMutableSet *a5, PageLayout *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v24 = a5;
  v10 = [(NSMutableSet *)v24 member:v9];

  if (v10)
  {
    v11 = *this;
    if (*(*this + 96) == 1)
    {
      printf("Hit tagged parsing error: %s\n", "Cycles detected in marked structure element graph");
      v11 = *this;
    }

    *(v11 + 97) = 1;
  }

  else
  {
    [(NSMutableSet *)v24 addObject:v9];
    memset(v32, 0, sizeof(v32));
    obj = [(PDFCRGroupRegion *)v9 children];
    if ([obj countByEnumeratingWithState:v32 objects:v35 count:16])
    {
      v12 = **(&v32[0] + 1);
      if ([**(&v32[0] + 1) type] == 6)
      {
        *(a2 + 2) = 400;
        v14 = [v12 rowIndex];
        valuePtr = [v12 rowSpan];
        [v12 colSpan];
        v16 = *(a2 + 11);
        if (v14 >= (*(a2 + 12) - v16) >> 3)
        {
          TaggedParser::CreateStructureElement(a2, a4, v15);
        }

        TaggedParser::CreateStructureElement(*(v16 + 8 * v14), a4, v15);
      }

      TaggedParser::CreateStructureElement(a2, a4, v13);
    }

    v17 = a4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = [(PDFCRGroupRegion *)v9 subregions];
    v18 = [v22 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v18)
    {
      v23 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v22);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v19 type];
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              TaggedParser::CreateStructureElement(a2, v17, v21);
            }

            if (v20 == 4)
            {
              *(a2 + 2) = 300;
              TaggedParser::CreateStructureElement(a2, v17, v21);
            }
          }

          else
          {
            if (v20 == 1)
            {
              TaggedParser::CreateStructureElement(a2, v17, v21);
            }

            if (v20 == 2)
            {
              TaggedParser::CreateStructureElement(a2, v17, v21);
            }
          }

          v17 = a4;
        }

        v18 = [v22 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v18);
    }
  }
}

uint64_t std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::push_back[abi:fe200100](void *a1, CFTypeRef *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
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

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v7;
    v11[3] = 0;
    std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,applesauce::CF::ObjectRef<CGPDFTaggedNode *> const&,applesauce::CF::ObjectRef<CGPDFTaggedNode *>*>((8 * v7), *a2);
    v11[2] = 8 * v7 + 8;
    std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    result = std::__split_buffer<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::~__split_buffer(v11);
  }

  else
  {
    result = std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,applesauce::CF::ObjectRef<CGPDFTaggedNode *> const&,applesauce::CF::ObjectRef<CGPDFTaggedNode *>*>(v3, *a2);
    v6 = result + 8;
  }

  a1[1] = v6;
  return result;
}

void *std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,applesauce::CF::ObjectRef<CGPDFTaggedNode *> const&,applesauce::CF::ObjectRef<CGPDFTaggedNode *>*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

BOOL IsStructureElementForPage(uint64_t a1, CGPDFPage *a2)
{
  if (a2)
  {
    v3 = *(*(a2 + 5) + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 56);
  if (v4 == -1)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = *(a1 + 48) + 1;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = HIDWORD(v4);
  }

  if (v5 == v3)
  {
    return 1;
  }

  if (*(a1 + 152))
  {
    return *(a1 + 4) == v3;
  }

  if (v4 == -1)
  {
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    if (v7 != v8)
    {
      while (!*v7 || (IsStructureElementForPage(*v7, a2) & 1) == 0)
      {
        result = 0;
        if (++v7 == v8)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return 0;
}

void RemovePageNodesFromStructureElement(StructureElement *a1, CGPDFPage *a2)
{
  if (a1)
  {
    v4 = *(a1 + 7);
    if (v4 == -1 || ((v5 = HIDWORD(v4), !a2) ? (v6 = 0) : (v6 = *(*(a2 + 5) + 8)), v5 == v6))
    {
      while (1)
      {
        v8 = *(a1 + 15);
        if (*(a1 + 14) == v8)
        {
          break;
        }

        v7 = *(v8 - 8);
        *(a1 + 15) = v8 - 8;
        CGPDFNodeRelease(v7);
      }

      v10 = *(a1 + 11);
      for (i = *(a1 + 12); v10 != i; *(a1 + 12) = i)
      {
        RemovePageNodesFromStructureElement(*(i - 8), a2);
        v10 = *(a1 + 11);
        v11 = *(a1 + 12);
        if (v10 == v11)
        {
          __break(1u);
          return;
        }

        i = v11 - 8;
      }
    }
  }
}

__CFDictionary *BuildStructureTree(unint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  valuePtr = -1;
  v6 = *(a3 + 56);
  if (v6 != -1)
  {
    if (a1 != HIDWORD(v6))
    {
      return 0;
    }

    valuePtr = v6;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGCFDictionarySetNumber(Mutable, @"TagNodeMCID", kCFNumberSInt64Type, &valuePtr);
  CGCFDictionarySetNumber(Mutable, @"TagNodeStructureID", kCFNumberSInt64Type, a3);
  CGCFDictionarySetNumber(Mutable, @"TagNodeObjectRefID", kCFNumberSInt64Type, (a3 + 64));
  CGCFDictionarySetInteger(Mutable, @"TagNodeType", *(a3 + 8));
  v9 = (a3 + 16);
  if ((*(a3 + 39) & 0x80000000) == 0)
  {
    if (!*(a3 + 39))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(a3 + 24))
  {
    v9 = *v9;
LABEL_10:
    CGCFDictionarySetCString(Mutable, @"ID", v9);
  }

LABEL_11:
  v10 = *(a3 + 144);
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"TagNodeProperties", v10);
  }

  v12 = *(a3 + 88);
  v11 = *(a3 + 96);
  while (v12 != v11)
  {
    if (*v12)
    {
      BuildStructureTree(a1, Mutable, *v12);
    }

    ++v12;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"TagNodeChildren");
    if (!Value)
    {
      Value = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
      CFDictionarySetValue(a2, @"TagNodeChildren", Value);
      CFRelease(Value);
    }

    CFArrayAppendValue(Value, Mutable);
    CFRelease(Mutable);
  }

  return Mutable;
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __assign_helper_atomic_property__267(uint64_t *a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    std::vector<std::shared_ptr<TextLine>>::__assign_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  }
}

void std::vector<std::shared_ptr<TextLine>>::__assign_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<TextLine>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<TextLine>>::__vallocate[abi:fe200100](a1, v11);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:fe200100]<std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *>(a2, a3, v8);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:fe200100]<std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *>(a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>,std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__copy_impl::operator()[abi:fe200100]<std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *,std::shared_ptr<TextLine> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>,std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

void std::vector<std::shared_ptr<TextLine>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<TextLine>>::clear[abi:fe200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::shared_ptr<TextLine>>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

uint64_t __copy_helper_atomic_property__266(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<std::shared_ptr<TextLine>>::__init_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
}

uint64_t std::vector<std::shared_ptr<TextLine>>::__init_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<TextLine>>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_1841C6BF4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void PageLayout::splitLines(void *a1, int a2, void *a3)
{
  v3 = a1[9] - a1[8];
  if (v3)
  {
    v4 = a1;
    v5 = 0;
    v44 = v3 >> 4;
    v6 = 1;
    if (!a2)
    {
      v6 = 2;
    }

    v42 = v6;
    v50 = a3 + 1;
    while (1)
    {
      v7 = v4[8];
      if (v5 >= (v4[9] - v7) >> 4)
      {
        break;
      }

      v48 = v5;
      v45 = (v7 + 16 * v5);
      v8 = *v45;
      v9 = (*v45)[1];
      if (v9 >= 2)
      {
        v10 = 0;
        v11 = a1[14] + 8 * *v8;
        v47 = *v8;
        v12 = 8 * v9;
        v13 = v11;
        do
        {
          v14 = *v13;
          v13 += 2;
          v10 += v14;
          v12 -= 8;
        }

        while (v12);
        v15 = v8[2];
        v16 = a1[11];
        v17 = (a1[12] - v16) >> 1;
        v18 = v17 >= v15;
        v19 = v17 - v15;
        if (v18)
        {
          v20 = v19 >= v10 ? v10 : v19;
          if (v20 >= v9)
          {
            v51 = v16 + 2 * v15;
            v49 = v20;
            if (*a3 != v50)
            {
              operator new();
            }

            v21 = 0;
            v22 = 0;
            v23 = a1[38] + 8 * v47;
            do
            {
              v21 += *(v11 + 8 * v22++);
            }

            while (v42 != v22);
            if (v42 < v9 - v42 && v21 < v49)
            {
              v24 = v42;
              do
              {
                if (*(v51 + 2 * v21) == 32)
                {
                  if (!v21 || v21 + 1 >= v9 || ((v25 = *(v23 - 8 + 8 * v21), v26 = *(v23 + 8 * (v21 + 1)), v25 != -1) ? (v27 = v26 == -1) : (v27 = 1), !v27 ? (v28 = v25 == v26) : (v28 = 0), !v28))
                  {
                    v29 = a1[17] + 32 * v47 + 32 * v24;
                    v30 = *(v29 + 16);
                    if (v30 > NAN + NAN)
                    {
                      v39 = *v29;
                      v40 = *(v29 + 8);
                      v41 = *(v29 + 24);
                      *(v29 + 16) = 0;
                      v31 = *v45;
                      v33 = *(*v45 + 3);
                      v32 = *(*v45 + 4);
                      v35 = *(*v45 + 5);
                      v34 = *(*v45 + 6);
                      (*v45)[1] = v24 + 1;
                      v36 = fmin(v30, v41) < 0.0;
                      v37 = v36;
                      v38 = v39;
                      if (v36)
                      {
                        v52.origin.x = v39;
                        v52.origin.y = v40;
                        v52.size.width = v30;
                        v52.size.height = v41;
                        *&v38 = CGRectStandardize(v52);
                      }

                      *(v31 + 5) = v38 - v33;
                      if (v37)
                      {
                        v53.origin.x = v39;
                        v53.origin.y = v40;
                        v53.size.width = v30;
                        v53.size.height = v41;
                        CGRectStandardize(v53);
                      }

                      if (v35 < 0.0 || v34 < 0.0)
                      {
                        v54.origin.x = v33;
                        v54.origin.y = v32;
                        v54.size.width = v35;
                        v54.size.height = v34;
                        CGRectStandardize(v54);
                      }

                      ++a1[6];
                      operator new();
                    }
                  }
                }

                if (v24 + 1 >= v9 - v42)
                {
                  break;
                }

                v21 += *(v11 + 8 * v24++);
              }

              while (v21 < v49);
            }

            std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(0);
          }
        }
      }

      ++v5;
      v4 = a1;
      if (v48 + 1 >= v44)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1841C7930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  *(v33 + 72) = v34;
  std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(a33);
  _Unwind_Resume(a1);
}

uint64_t TextRecognitionLibraryCore(char **a1)
{
  if (!TextRecognitionLibraryCore(char **)::frameworkLibrary)
  {
    TextRecognitionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return TextRecognitionLibraryCore(char **)::frameworkLibrary;
}

id PageLayout::getOrderedLayout(PageLayout *this)
{
  v1 = *(this + 47);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    BoxRect = CGPDFPageGetBoxRect(*this, kCGPDFCropBox);
    v7.origin = vmulq_n_f64(xmmword_18439C630, BoxRect.size.width);
    v7.size = vmulq_n_f64(xmmword_18439C780, -BoxRect.size.height);
    x = BoxRect.origin.x;
    v9 = BoxRect.origin.y + BoxRect.size.height;
    v4 = [[PDFCTLDDelegateForLines alloc] initWithPageLayout:this quadToPageTransform:&v7];
    v5 = PageLayout::createAtomicElements(this, &v7);
    v2 = PageLayout::getOrderedLayout(this, v5, v4, v7.origin.x, v7.origin.y, v7.size.width, v7.size.height);
  }

  return v2;
}

void PageLayoutFactory::~PageLayoutFactory(id *this)
{
  v4 = this + 22;
  std::vector<PageLayoutFactory::TextChunk>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table((this + 17));
  std::__hash_table<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::__unordered_map_hasher<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,true>,std::__unordered_map_equal<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,true>,std::allocator<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>>>::~__hash_table((this + 12));
  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  v3 = this[6];
  if (v3)
  {
    this[7] = v3;
    operator delete(v3);
  }
}

void std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(*a1);
    std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(a1[1]);
    std::__list_imp<unsigned long>::clear(a1 + 5);

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<PageLayout::CharacterStyle>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

id PageLayout::createAtomicElements(id **this, CGRect *a2)
{
  v4 = objc_opt_new();
  BoxRect = CGPDFPageGetBoxRect(*this, kCGPDFCropBox);
  y = BoxRect.origin.y;
  height = BoxRect.size.height;
  memset(&v70, 0, sizeof(v70));
  width = BoxRect.size.width;
  *&v67.a = vmulq_n_f64(xmmword_18439C630, BoxRect.size.width);
  *&v67.c = vmulq_n_f64(xmmword_18439C780, -BoxRect.size.height);
  x = BoxRect.origin.x;
  v67.tx = BoxRect.origin.x;
  v67.ty = BoxRect.origin.y + BoxRect.size.height;
  CGAffineTransformInvert(&v70, &v67);
  v67.a = 0.0;
  *&v67.b = &v67;
  *&v67.c = 0x5012000000;
  *&v67.d = __Block_byref_object_copy__125;
  *&v67.tx = __Block_byref_object_dispose__126;
  *&v67.ty = "";
  v68 = 0u;
  v69 = 0u;
  if (this[52])
  {
    std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__deallocate_node(this[51]);
    this[51] = 0;
    v5 = this[50];
    if (v5)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        this[49][i] = 0;
      }
    }

    this[52] = 0;
  }

  v7 = this[8];
  v8 = this[9];
  if (v7 != v8)
  {
    v47 = *&v70.c;
    v48 = *&v70.a;
    v57 = vaddq_f64(*&v70.tx, vmlaq_f64(vmulq_f64(*&v70.c, 0), 0, *&v70.a));
    while (1)
    {
      v9 = *v7;
      v10 = *(*v7 + 7);
      if (v10 != 0.0)
      {
        break;
      }

      v76 = *(v9 + 3);
      v66 = v70;
      v77 = CGRectApplyAffineTransform(v76, &v66);
      v22 = v77.origin.x;
      v23 = v77.origin.y;
      v24 = v77.size.width;
      v25 = v77.size.height;
      b = v67.b;
      *(*&b + 48) = CGRectUnion(*(*&v67.b + 48), v77);
      v27 = [objc_alloc(getCRNormalizedQuadClass()) initWithNormalizedBoundingBox:v22 size:{v23, v24, v25, width, height}];
LABEL_20:
      v39 = [[PDFTextLineElement alloc] initWithTextLine:v7 boundingBox:v27];
      PageLayout::addTextLineToAtomicElementMapping(this, *v7, &v39->super);
      [v4 addObject:v39];

      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_21;
      }
    }

    v11 = __sincos_stret(v10);
    v12 = v9[3];
    v13 = v9[5];
    v14 = v9[6];
    v15 = fmin(v13, v14);
    v16 = v15 < 0.0;
    if (v15 >= 0.0)
    {
      v17 = v9[4];
      _D8 = v9[3];
      v19 = v17;
      v20 = v9[6];
    }

    else
    {
      v17 = v9[4];
      v73.origin.x = v9[3];
      v73.origin.y = v17;
      v73.size.width = v9[5];
      v73.size.height = v9[6];
      *&_D8 = CGRectStandardize(v73);
      v74.origin.x = v12;
      v74.origin.y = v17;
      v74.size.width = v13;
      v74.size.height = v14;
      v75 = CGRectStandardize(v74);
      v19 = v75.origin.y;
      v20 = v75.size.height;
      if (v16)
      {
        v78.origin.x = v12;
        v78.origin.y = v17;
        v78.size.width = v13;
        v78.size.height = v14;
        v79 = CGRectStandardize(v78);
        v54 = v79.origin.x + v79.size.width;
        v79.origin.x = v12;
        v79.origin.y = v17;
        v79.size.width = v13;
        v79.size.height = v14;
        v80 = CGRectStandardize(v79);
        v52 = v80.size.height;
        v53 = v80.origin.y;
        goto LABEL_17;
      }
    }

    v53 = v17;
    v54 = v12 + v13;
    v52 = v14;
    if (!v16)
    {
      v51 = v12 + v13;
      v21 = v17;
      if (!v16)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_17:
    v81.origin.x = v12;
    v81.origin.y = v17;
    v81.size.width = v13;
    v81.size.height = v14;
    v82 = CGRectStandardize(v81);
    v51 = v82.origin.x + v82.size.width;
    v82.origin.x = v12;
    v82.origin.y = v17;
    v82.size.width = v13;
    v82.size.height = v14;
    v83 = CGRectStandardize(v82);
    v21 = v83.origin.y;
    if (!v16)
    {
LABEL_19:
      v31 = objc_alloc(getCRNormalizedQuadClass());
      _Q19 = vmlaq_n_f64(vmulq_n_f64(v47, v11.__sinval), v48, v11.__cosval);
      __asm { FMLA            D1, D8, V19.D[1] }

      v55 = vmlsq_lane_f64(vmulq_n_f64(v47, v11.__cosval), v48, v11.__sinval, 0);
      v56 = _Q19;
      v27 = [v31 initWithNormalizedTopLeft:v57.f64[0] + (v19 + v20) * v55.f64[0] + _Q19.f64[0] * _D8 topRight:v57.f64[1] + _D1 bottomRight:v57.f64[0] + (v53 + v52) * v55.f64[0] + _Q19.f64[0] * v54 bottomLeft:v57.f64[1] + (v53 + v52) * v55.f64[1] + _Q19.f64[1] * v54 size:{v57.f64[0] + v21 * v55.f64[0] + _Q19.f64[0] * v51, v57.f64[1] + v21 * v55.f64[1] + _Q19.f64[1] * v51, v57.f64[0] + v17 * v55.f64[0] + _Q19.f64[0] * v12, v57.f64[1] + v17 * v55.f64[1] + _Q19.f64[1] * v12, *&width, *&height}];
      v87 = *(*v7 + 24);
      *&v66.a = v56;
      *&v66.c = v55;
      *&v66.tx = v57;
      v88 = CGRectApplyAffineTransform(v87, &v66);
      v38 = v67.b;
      *(*&v38 + 48) = CGRectUnion(*(*&v67.b + 48), v88);
      goto LABEL_20;
    }

LABEL_18:
    v84.origin.x = v12;
    v84.origin.y = v17;
    v84.size.width = v13;
    v84.size.height = v14;
    v46 = v20;
    v28 = v19;
    v29 = _D8;
    v30 = CGRectStandardize(v84);
    v85.origin.x = v12;
    v85.origin.y = v17;
    v85.size.width = v13;
    v85.size.height = v14;
    v86 = CGRectStandardize(v85);
    v17 = v86.origin.y;
    v12 = *&v30;
    _D8 = v29;
    v19 = v28;
    v20 = v46;
    goto LABEL_19;
  }

LABEL_21:
  v40 = *this;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = ___ZN10PageLayout20createAtomicElementsEP6CGRect_block_invoke;
  v58[3] = &unk_1E6E2D658;
  v61 = v70;
  v60 = &v67;
  v62 = x;
  v63 = y;
  v64 = width;
  v65 = height;
  v41 = v4;
  v59 = v41;
  CGPDFPageEnumerateAnnotations(v40, v58);
  if (a2)
  {
    v42 = *(*&v67.b + 64);
    a2->origin = *(*&v67.b + 48);
    a2->size = v42;
  }

  _Block_object_dispose(&v67, 8);

  return v41;
}

void sub_1841C8400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);

  _Unwind_Resume(a1);
}

void *PageLayout::getOrderedLayout(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v309 = *MEMORY[0x1E69E9840];
  v195 = a2;
  v196 = a3;
  v243 = a1;
  BoxRect = CGPDFPageGetBoxRect(*a1, kCGPDFCropBox);
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v199 = [objc_alloc(getCRCTLDClass()) init];
  v197 = [objc_alloc(getCRNormalizedQuadClass()) initWithNormalizedBoundingBox:a4 size:{a5, a6, a7, width, height}];
  v15 = [[PDFCRGroupRegion alloc] initWithBoundingQuad:v197 layoutDirection:1 subregions:0 parent:0];
  v16 = *(a1 + 376);
  *(a1 + 376) = v15;

  v17 = objc_opt_new();
  v18 = *(a1 + 384);
  *(a1 + 384) = v17;

  v19 = [objc_alloc(getCRCTLDConfigClass()) init];
  [v19 setAngleThresholdForRotationCorrection:0.0];
  [v19 setFlatMergeJumps:0];
  [v19 setMaxRegions:60];
  [v19 setMaxQueueCapacity:0xFFFFFFFFLL];
  [v19 setNumLookupElements:40];
  [v19 setNumPointsForSegmentsIntersection:9];
  LODWORD(v20) = 8.0;
  [v19 setMinSubRectangleSize:v20];
  LODWORD(v21) = 1035122882;
  [v19 setMinQuadrilateralRotation:v21];
  LODWORD(v22) = 1065185444;
  [v19 setMinWhitespaceHeightForReadingOrder:v22];
  LODWORD(v23) = 1063675494;
  [v19 setAllowedOverlap:v23];
  LODWORD(v24) = 1045220557;
  [v19 setMinWhitespaceWidth:v24];
  LODWORD(v25) = 1073993482;
  [v19 setMinWhitespaceHeight:v25];
  LODWORD(v26) = 1081333514;
  [v19 setQualityHeightFactor:v26];
  LODWORD(v27) = 1065688760;
  [v19 setQualityWidthFactor:v27];
  v28 = [v199 groupAndOrderRegions:v195 config:v19 delegate:v196];

  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  obj = v28;
  v29 = [obj countByEnumeratingWithState:&v252 objects:v294 count:16];
  if (v29)
  {
    v222 = *v253;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v253 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v225 = *(*(&v252 + 1) + 8 * i);
        v30 = [PDFCRGroupRegion alloc];
        v31 = [v225 boundingQuad];
        v32 = -[PDFCRGroupRegion initWithBoundingQuad:layoutDirection:subregions:parent:](v30, "initWithBoundingQuad:layoutDirection:subregions:parent:", v31, [v225 layoutDirection], 0, *(v243 + 376));

        [*(v243 + 376) addChild:v32];
        v33 = [v225 subregions];
        v34 = PageLayout::createFineCTLDConfig(v33);
        v35 = [v199 groupAndOrderRegions:v33 config:v34 delegate:0];

        v250 = 0u;
        v251 = 0u;
        v248 = 0u;
        v249 = 0u;
        v232 = v35;
        v36 = [v232 countByEnumeratingWithState:&v248 objects:v293 count:16];
        if (v36)
        {
          v236 = *v249;
          do
          {
            v239 = v36;
            for (j = 0; j != v239; ++j)
            {
              if (*v249 != v236)
              {
                objc_enumerationMutation(v232);
              }

              v38 = *(*(&v248 + 1) + 8 * j);
              v39 = [v38 subregions];
              v40 = [v39 firstObject];

              v41 = [v38 subregions];
              if ([v41 count] != 1)
              {

LABEL_22:
                v50 = [PDFCRGroupRegion alloc];
                v51 = [v38 boundingQuad];
                v52 = [v38 layoutDirection];
                v53 = [v38 subregions];
                v44 = [(PDFCRGroupRegion *)v50 initWithBoundingQuad:v51 layoutDirection:v52 subregions:v53 parent:v32];

                [(PDFCRGroupRegion *)v32 addChild:v44];
                [*(v243 + 384) addObject:v44];
                goto LABEL_23;
              }

              v42 = objc_opt_self();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_22;
              }

              v44 = v40;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v45 = [(PDFCRGroupRegion *)v44 cells];
              v46 = [v45 countByEnumeratingWithState:&v244 objects:v292 count:16];
              if (v46)
              {
                v47 = *v245;
                do
                {
                  for (k = 0; k != v46; ++k)
                  {
                    if (*v245 != v47)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v49 = *(*(&v244 + 1) + 8 * k);
                    [(PDFCRGroupRegion *)v32 addChild:v49];
                    [*(v243 + 384) addObject:v49];
                  }

                  v46 = [v45 countByEnumeratingWithState:&v244 objects:v292 count:16];
                }

                while (v46);
              }

LABEL_23:
            }

            v36 = [v232 countByEnumeratingWithState:&v248 objects:v293 count:16];
          }

          while (v36);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v252 objects:v294 count:16];
    }

    while (v29);
  }

  if (![*(v243 + 384) count])
  {
    goto LABEL_167;
  }

  v297 = 0uLL;
  v298 = 0;
  v295[1] = 0;
  v295[0] = 0;
  v296 = 0;
  v280[1] = 0;
  v280[0] = 0;
  *&v281 = 0;
  v276[1] = 0;
  v276[0] = 0;
  *&v277 = 0;
  v272[1] = 0;
  v272[0] = 0;
  *&v273 = 0;
  v268[1] = 0;
  v268[0] = 0;
  *&v269 = 0;
  v54 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v264[1] = 0;
  v264[0] = 0;
  *&v265 = 0;
  v260[0] = 0;
  v260[1] = 0;
  *&v261 = 0;
  __p[1] = 0;
  __p[0] = 0;
  v289 = 0;
  __src = 0;
  location = (v243 + 56);
  v212 = v54;
  v210 = [*(v243 + 56) length];
  v200 = [*(v243 + 384) lastObject];
  v306 = 0u;
  v305 = 0u;
  v304 = 0u;
  *v303 = 0u;
  v191 = *(v243 + 384);
  v55 = [v191 countByEnumeratingWithState:v303 objects:v308 count:16];
  if (v55)
  {
    v56 = 0;
    v57 = 0;
    v233 = 0;
    exception_object = 0;
    v189 = v55;
    v190 = *v304;
    v240 = 0u;
    while (1)
    {
      for (m = 0; m != v189; ++m)
      {
        if (*v304 != v190)
        {
          objc_enumerationMutation(v191);
        }

        v202 = *(v303[1] + m);
        v58 = [v202 subregions];
        v302 = 0u;
        v301 = 0u;
        v300 = 0u;
        v299 = 0u;
        v208 = v58;
        v59 = [v208 countByEnumeratingWithState:&v299 objects:v307 count:16];
        if (v59)
        {
          v218 = *v300;
          do
          {
            v226 = 0;
            v206 = v59;
            do
            {
              if (*v300 != v218)
              {
                objc_enumerationMutation(v208);
              }

              v223 = *(*(&v299 + 1) + 8 * v226);
              if ([v223 type] == 1)
              {
                [v223 textLine];
                v60 = v256;
                v62 = *v256;
                v61 = *(v256 + 8);
                *v256 = exception_object;
                v63 = *(v60 + 16);
                *(v60 + 16) = v233;
                std::vector<std::shared_ptr<TextLine>>::push_back[abi:fe200100](&v297, &v256);
                v64 = &v61[v62];
                v214 = v61;
                v216 = v62;
                if (v62 < &v61[v62])
                {
                  v65 = *(v243 + 112);
                  v66 = *(v243 + 120);
                  v229 = &v61[v62];
                  do
                  {
                    if (v62 >= (v66 - v65) >> 3)
                    {
                      goto LABEL_146;
                    }

                    std::vector<unsigned long>::push_back[abi:fe200100](v295, (v65 + 8 * v62));
                    v67 = *(v243 + 136);
                    if (v62 >= (*(v243 + 144) - v67) >> 5 || (std::vector<CGRect>::push_back[abi:fe200100](v280, (v67 + 32 * v62)), v68 = *(v243 + 160), v62 >= (*(v243 + 168) - v68) >> 5))
                    {
                      std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
                    }

                    std::vector<CGRect>::push_back[abi:fe200100](v276, (v68 + 32 * v62));
                    v69 = *(v243 + 304);
                    if (v62 >= (*(v243 + 312) - v69) >> 3)
                    {
LABEL_146:
                      std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
                    }

                    std::vector<unsigned long>::push_back[abi:fe200100](v268, (v69 + 8 * v62));
                    std::vector<unsigned long>::push_back[abi:fe200100](v272, &__src);
                    v65 = *(v243 + 112);
                    v66 = *(v243 + 120);
                    if (v62 >= (v66 - v65) >> 3)
                    {
LABEL_119:
                      std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
                    }

                    if (*(v65 + 8 * v62))
                    {
                      v70 = 0;
                      v71 = 2 * v63;
                      v237 = v63;
                      do
                      {
                        v72 = *(v243 + 88);
                        if (v63 + v70 >= (*(v243 + 96) - v72) >> 1)
                        {
                          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
                        }

                        v73 = v72 + v71;
                        if (*(&v240 + 1) >= v57)
                        {
                          v75 = v240;
                          v76 = (*(&v240 + 1) - v240) >> 1;
                          if (v76 <= -2)
                          {
                            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                          }

                          if (v57 - v240 <= v76 + 1)
                          {
                            v77 = v76 + 1;
                          }

                          else
                          {
                            v77 = v57 - v240;
                          }

                          if (v57 - v240 >= 0x7FFFFFFFFFFFFFFELL)
                          {
                            v78 = 0x7FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v78 = v77;
                          }

                          if (v78)
                          {
                            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v78);
                          }

                          v79 = (2 * v76);
                          *v79 = *(v73 + 2 * v70);
                          v74 = (v79 + 1);
                          memcpy(0, v240, *(&v240 + 1) - v240);
                          *&v240 = 0;
                          if (v75)
                          {
                            operator delete(v75);
                            v56 = __src;
                          }

                          v57 = 0;
                          v63 = v237;
                        }

                        else
                        {
                          **(&v240 + 1) = *(v73 + 2 * v70);
                          v74 = *(&v240 + 1) + 2;
                        }

                        *&v80 = v240;
                        *(&v80 + 1) = v74;
                        v240 = v80;
                        __src = ++v56;
                        v65 = *(v243 + 112);
                        v66 = *(v243 + 120);
                        if (v62 >= (v66 - v65) >> 3)
                        {
                          goto LABEL_119;
                        }

                        ++v70;
                      }

                      while (v70 < *(v65 + 8 * v62));
                      v63 += v70;
                      v64 = v229;
                      v233 += v70;
                    }

                    ++v62;
                  }

                  while (v62 != v64);
                }

                v81 = *(v243 + 184);
                v82 = (*(v243 + 192) - v81) >> 3;
                if (v82 <= v216 || v82 <= v64)
                {
                  std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
                }

                v83 = v57;
                v84 = *(v81 + 8 * v216);
                v85 = *(v81 + 8 * v64);
                if (v210 < v85 - v84 || v84 > v210 - (v85 - v84))
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "lineStringRange");
                  exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
                  __cxa_throw(exception, off_1E6E04888, MEMORY[0x1E69E5280]);
                }

                v86 = [*location substringWithRange:v84];
                v87 = [v212 length];
                [v212 appendString:v86];
                v88 = 8 * v84;
                if (8 * v84 != 8 * v85)
                {
                  v89 = *(v243 + 232);
                  v90 = 8 * v85;
                  v91 = (v89 + 8 * v85);
                  v92 = (v88 + v89);
                  do
                  {
                    std::vector<unsigned long>::push_back[abi:fe200100](v264, v92++);
                  }

                  while (v92 != v91);
                  v93 = *(v243 + 256);
                  v94 = (v90 + v93);
                  v95 = (v88 + v93);
                  do
                  {
                    std::vector<double>::push_back[abi:fe200100](v260, v95++);
                  }

                  while (v95 != v94);
                  if (*(v243 + 40))
                  {
                    v96 = *(v243 + 328);
                    v97 = (v90 + v96);
                    v258 = __p;
                    v98 = (v88 + v96);
                    v99 = v87 - v84;
                    do
                    {
                      v257 = v99 + *v98;
                      std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](&v258, &v257);
                      ++v98;
                    }

                    while (v98 != v97);
                  }
                }

                v59 = v206;
                v57 = v83;
                if ([v86 length])
                {
                  v100 = [v86 characterAtIndex:{objc_msgSend(v86, "length") - 1}] == 10;
                }

                else
                {
                  v100 = 0;
                }

                if (*(v243 + 72) - *(v243 + 64) >= 0x11uLL && [v212 length] && v85 == v210 && v202 != v200)
                {
                  [v212 appendString:@"\n"];
                  if (v264[0] == v264[1])
                  {
                    goto LABEL_269;
                  }

                  std::vector<unsigned long>::push_back[abi:fe200100](v264, v264[1] - 1);
                  if (v260[0] == v260[1])
                  {
                    goto LABEL_269;
                  }

                  std::vector<double>::push_back[abi:fe200100](v260, v260[1] - 1);
                  if (*(v243 + 40) == 1)
                  {
                    if (__p[0] == __p[1])
                    {
                      goto LABEL_269;
                    }

                    std::vector<unsigned long>::push_back[abi:fe200100](__p, __p[1] - 1);
                  }

LABEL_92:
                  __src = ++v56;
                }

                else if (v100)
                {
                  goto LABEL_92;
                }

                if (*(&v256 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](*(&v256 + 1));
                }

                exception_object = (exception_object + v214);
              }

              ++v226;
            }

            while (v226 != v59);
            v59 = [v208 countByEnumeratingWithState:&v299 objects:v307 count:16];
          }

          while (v59);
        }
      }

      v189 = [v191 countByEnumeratingWithState:v303 objects:v308 count:16];
      if (!v189)
      {
        goto LABEL_102;
      }
    }
  }

  v57 = 0;
  v240 = 0u;
LABEL_102:

  v101 = [v212 length];
  if ([v212 length])
  {
    v102 = v101 - 1;
    if ([v212 characterAtIndex:v102] == 10)
    {
      [v212 deleteCharactersInRange:{v102, 1}];
      if (v264[0] == v264[1])
      {
        goto LABEL_269;
      }

      v264[1] = v264[1] - 8;
      if (v260[0] == v260[1])
      {
        goto LABEL_269;
      }

      v260[1] = v260[1] - 8;
      if (*(v243 + 40) == 1)
      {
        if (__p[0] != __p[1])
        {
          __p[1] = __p[1] - 8;
          goto LABEL_109;
        }

LABEL_269:
        __break(1u);
      }
    }
  }

LABEL_109:
  v103 = [v212 length];
  v104 = v103;
  v105 = v272[1];
  v106 = v273;
  if (v272[1] >= v273)
  {
    v108 = v272[0];
    v109 = v272[1] - v272[0];
    v110 = (v272[1] - v272[0]) >> 3;
    v111 = v110 + 1;
    if ((v110 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    if ((v273 - v272[0]) >> 2 > v111)
    {
      v111 = (v273 - v272[0]) >> 2;
    }

    if (v273 - v272[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      v112 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v112 = v111;
    }

    if (v112)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v112);
    }

    v113 = (8 * v110);
    v106 = 0;
    *v113 = v104;
    v107 = v113 + 1;
    memcpy(0, v108, v109);
    v272[0] = 0;
    *&v273 = 0;
    if (v108)
    {
      operator delete(v108);
    }
  }

  else
  {
    *v272[1] = v103;
    v107 = v105 + 8;
  }

  v272[1] = v107;
  v114 = *(v243 + 88);
  if (v114)
  {
    *(v243 + 96) = v114;
    operator delete(v114);
    *(v243 + 88) = 0;
    *(v243 + 96) = 0;
    *(v243 + 104) = 0;
  }

  v115 = *(v243 + 112);
  *(v243 + 88) = v240;
  *(v243 + 104) = v57;
  if (v115)
  {
    *(v243 + 120) = v115;
    operator delete(v115);
    *(v243 + 112) = 0;
    *(v243 + 120) = 0;
    *(v243 + 128) = 0;
  }

  *(v243 + 112) = *v295;
  *(v243 + 128) = v296;
  v296 = 0;
  v295[1] = 0;
  v295[0] = 0;
  objc_storeStrong(location, v212);
  v116 = *(v243 + 160);
  if (v116)
  {
    *(v243 + 168) = v116;
    operator delete(v116);
    *(v243 + 160) = 0;
    *(v243 + 168) = 0;
    *(v243 + 176) = 0;
  }

  v117 = *(v243 + 136);
  *(v243 + 160) = *v276;
  *(v243 + 176) = v277;
  *&v277 = 0;
  v276[1] = 0;
  v276[0] = 0;
  if (v117)
  {
    *(v243 + 144) = v117;
    operator delete(v117);
    *(v243 + 136) = 0;
    *(v243 + 144) = 0;
    *(v243 + 152) = 0;
  }

  *(v243 + 136) = *v280;
  *(v243 + 152) = v281;
  *&v281 = 0;
  v280[1] = 0;
  v280[0] = 0;
  v118 = *(v243 + 304);
  if (v118)
  {
    *(v243 + 312) = v118;
    operator delete(v118);
    *(v243 + 304) = 0;
    *(v243 + 312) = 0;
    *(v243 + 320) = 0;
  }

  v119 = *(v243 + 184);
  *(v243 + 304) = *v268;
  *(v243 + 320) = v269;
  *&v269 = 0;
  v268[1] = 0;
  v268[0] = 0;
  if (v119)
  {
    *(v243 + 192) = v119;
    operator delete(v119);
    *(v243 + 184) = 0;
    *(v243 + 192) = 0;
    *(v243 + 200) = 0;
  }

  v120 = *(v243 + 232);
  *(v243 + 184) = *v272;
  *(v243 + 200) = v106;
  *&v273 = 0;
  v272[0] = 0;
  v272[1] = 0;
  if (v120)
  {
    *(v243 + 240) = v120;
    operator delete(v120);
    *(v243 + 232) = 0;
    *(v243 + 240) = 0;
    *(v243 + 248) = 0;
  }

  *(v243 + 232) = *v264;
  *(v243 + 248) = v265;
  *&v265 = 0;
  v264[1] = 0;
  v264[0] = 0;
  v121 = *(v243 + 256);
  if (v121)
  {
    *(v243 + 264) = v121;
    operator delete(v121);
    *(v243 + 256) = 0;
    *(v243 + 264) = 0;
    *(v243 + 272) = 0;
  }

  *(v243 + 256) = *v260;
  *(v243 + 272) = v261;
  v260[1] = 0;
  *&v261 = 0;
  v260[0] = 0;
  v122 = (v243 + 328);
  v123 = *(v243 + 328);
  if (v123)
  {
    *(v243 + 336) = v123;
    operator delete(v123);
    *v122 = 0;
    *(v243 + 336) = 0;
    *(v243 + 344) = 0;
  }

  *v122 = *__p;
  *(v243 + 344) = v289;
  v289 = 0;
  *__p = 0u;
  std::vector<std::shared_ptr<TextLine>>::__vdeallocate((v243 + 64));
  *(v243 + 64) = v297;
  *(v243 + 80) = v298;
  v298 = 0;
  v297 = 0u;
  v124 = *(v243 + 352);
  v125 = *(v243 + 360);
  while (v124 != v125)
  {
    v126 = *v124;
    v124 += 2;
    *(v126 + 72) = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v260[0])
  {
    operator delete(v260[0]);
  }

  if (v264[0])
  {
    operator delete(v264[0]);
  }

  if (v268[0])
  {
    operator delete(v268[0]);
  }

  if (v272[0])
  {
    operator delete(v272[0]);
  }

  if (v276[0])
  {
    operator delete(v276[0]);
  }

  if (v280[0])
  {
    operator delete(v280[0]);
  }

  if (v295[0])
  {
    operator delete(v295[0]);
  }

  v295[0] = &v297;
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](v295);
LABEL_167:
  v128 = v243;
  if (*(v243 + 40))
  {
    goto LABEL_168;
  }

  v132 = [*(v243 + 56) length];
  v224 = objc_opt_new();
  v238 = objc_opt_new();
  v282 = 0u;
  v283 = 0u;
  *v280 = 0u;
  v281 = 0u;
  v230 = *(v243 + 384);
  v241 = [v230 countByEnumeratingWithState:v280 objects:v308 count:16];
  if (!v241)
  {
    goto LABEL_213;
  }

  v234 = *v281;
  do
  {
    for (n = 0; n != v241; ++n)
    {
      if (*v281 != v234)
      {
        objc_enumerationMutation(v230);
      }

      v134 = *(v280[1] + n);
      if ([v134 type] == 6)
      {
        if (![v238 count])
        {
          goto LABEL_211;
        }

        [v224 addObject:v238];
        v135 = v238;
        v238 = objc_opt_new();
      }

      else
      {
        v278 = 0u;
        v279 = 0u;
        *v276 = 0u;
        v277 = 0u;
        v135 = [v134 subregions];
        v136 = [v135 countByEnumeratingWithState:v276 objects:v307 count:16];
        if (v136)
        {
          v137 = *v277;
          do
          {
            for (ii = 0; ii != v136; ++ii)
            {
              if (*v277 != v137)
              {
                objc_enumerationMutation(v135);
              }

              v139 = *(v276[1] + ii);
              if ([v139 type] == 1)
              {
                [v139 setParent:v134];
                v299 = 0uLL;
                if (v139)
                {
                  [v139 textLine];
                  v299 = *v303[0];
                  if (v303[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v303[1]);
                  }
                }

                else
                {
                  v299 = MEMORY[0];
                }

                v303[1] = 0;
                v303[0] = 0;
                *&v304 = 0;
                *&v297 = &v299;
                *(&v297 + 1) = 1;
                v295[0] = v303;
                PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(v243, &v297, v295);
                v140 = v303[0];
                v141 = v303[1];
                v142 = v303[0];
                if (v303[0] == v303[1])
                {
LABEL_205:
                  v148 = [TextGrouping alloc];
                  *&v297 = v303[0];
                  *(&v297 + 1) = (v303[1] - v303[0]) >> 4;
                  v149 = PageLayout::CreateStringForStringRanges(v243, &v297);
                  v150 = [(TextGrouping *)v148 initWithTextElement:v139 text:v149];
                  [v238 addObject:v150];

                  v140 = v303[0];
                }

                else
                {
                  while (1)
                  {
                    v144 = *v142;
                    v143 = v142[1];
                    v145 = v143 + *v142;
                    if (*v142 < 0 || v145 > v132)
                    {
                      v146 = v132 >= v145 ? v143 + *v142 : v132;
                      if (v144 > 0 || v145 < 1)
                      {
                        if (v144 < 0)
                        {
                          v144 = 0;
                          v146 = 0;
                        }

                        else
                        {
                          v146 -= v144;
                          if (v144 >= v132)
                          {
                            v144 = 0;
                            v146 = 0;
                          }
                        }
                      }

                      else
                      {
                        v144 = 0;
                      }

                      *v142 = v144;
                      v142[1] = v146;
                      if (!v146)
                      {
                        break;
                      }
                    }

                    v142 += 2;
                    if (v142 == v141)
                    {
                      goto LABEL_205;
                    }
                  }
                }

                if (v140)
                {
                  v303[1] = v140;
                  operator delete(v140);
                }
              }
            }

            v136 = [v135 countByEnumeratingWithState:v276 objects:v307 count:16];
          }

          while (v136);
        }
      }

LABEL_211:
    }

    v241 = [v230 countByEnumeratingWithState:v280 objects:v308 count:16];
  }

  while (v241);
LABEL_213:

  if ([v238 count])
  {
    [v224 addObject:v238];
  }

  v274 = 0u;
  v275 = 0u;
  *v272 = 0u;
  v273 = 0u;
  v207 = v224;
  v203 = [v207 countByEnumeratingWithState:v272 objects:v303 count:16];
  if (v203)
  {
    v151 = *v273;
    v192 = *v273;
    do
    {
      for (jj = 0; jj != v203; ++jj)
      {
        if (*v273 != v151)
        {
          objc_enumerationMutation(v207);
        }

        v211 = *(v272[1] + jj);
        __src = 0;
        p_src = &__src;
        v286 = 0x2050000000;
        v152 = getCRLayoutListClass(void)::softClass;
        v287 = getCRLayoutListClass(void)::softClass;
        if (!getCRLayoutListClass(void)::softClass)
        {
          __p[0] = MEMORY[0x1E69E9820];
          __p[1] = 3221225472;
          v289 = ___ZL20getCRLayoutListClassv_block_invoke;
          v290 = &unk_1E6E33138;
          v291 = &__src;
          ___ZL20getCRLayoutListClassv_block_invoke(__p);
          v152 = p_src[3];
        }

        v153 = v152;
        _Block_object_dispose(&__src, 8);
        v154 = [v152 listsWithRegionGroups:v211];
        v270 = 0u;
        v271 = 0u;
        *v268 = 0u;
        v269 = 0u;
        v209 = v154;
        v155 = [v209 countByEnumeratingWithState:v268 objects:&v299 count:16];
        if (v155)
        {
          v156 = *v269;
          v194 = *v269;
          do
          {
            v157 = 0;
            v201 = v155;
            do
            {
              if (*v269 != v156)
              {
                objc_enumerationMutation(v209);
              }

              v158 = *(v268[1] + v157);
              v219 = objc_opt_new();
              v266 = 0u;
              v267 = 0u;
              *v264 = 0u;
              v265 = 0u;
              v215 = [v158 items];
              v159 = [v215 countByEnumeratingWithState:v264 objects:&v297 count:16];
              locationa = v157;
              v160 = 0;
              v161 = 0;
              if (v159)
              {
                v217 = *v265;
                v231 = -1;
                do
                {
                  v227 = 0;
                  exception_objecta = v159;
                  do
                  {
                    if (*v265 != v217)
                    {
                      objc_enumerationMutation(v215);
                    }

                    v162 = *(v264[1] + v227);
                    p_src = 0;
                    __src = 0;
                    v286 = 0;
                    *v260 = 0u;
                    v261 = 0u;
                    v262 = 0u;
                    v263 = 0u;
                    v163 = [v162 groups];
                    v164 = 0;
                    v165 = [v163 countByEnumeratingWithState:v260 objects:v295 count:16];
                    if (v165)
                    {
                      v242 = *v261;
                      v235 = v163;
                      do
                      {
                        v166 = 0;
                        v167 = v164;
                        do
                        {
                          if (*v261 != v242)
                          {
                            objc_enumerationMutation(v163);
                          }

                          v168 = [*(v260[1] + v166) subregions];
                          v169 = [v168 firstObject];

                          v164 = [v169 parent];

                          if (v169)
                          {
                            [v169 textLine];
                          }

                          else
                          {
                            v259 = 0uLL;
                          }

                          v170 = p_src;
                          if (p_src >= v286)
                          {
                            v171 = __src;
                            v172 = p_src - __src;
                            v173 = (p_src - __src) >> 4;
                            v174 = v173 + 1;
                            if ((v173 + 1) >> 60)
                            {
                              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                            }

                            v175 = v286 - __src;
                            if ((v286 - __src) >> 3 > v174)
                            {
                              v174 = v175 >> 3;
                            }

                            if (v175 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v176 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v176 = v174;
                            }

                            v291 = &__src;
                            if (v176)
                            {
                              std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(v176);
                            }

                            *(16 * v173) = v259;
                            v259 = 0uLL;
                            memcpy(0, v171, v172);
                            v177 = __src;
                            v178 = v286;
                            __src = 0;
                            p_src = (16 * v173 + 16);
                            v286 = 0;
                            v289 = v177;
                            v290 = v178;
                            __p[1] = v177;
                            __p[0] = v177;
                            std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(__p);
                            p_src = (16 * v173 + 16);
                            v163 = v235;
                            if (*(&v259 + 1))
                            {
                              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v259 + 1));
                            }
                          }

                          else
                          {
                            *p_src = v259;
                            p_src = v170 + 2;
                          }

                          if (!v160)
                          {
                            v179 = v164;

                            v180 = [v179 parent];
                            v181 = [v180 children];
                            v231 = [v181 indexOfObject:v179];

                            v160 = v180;
                            v161 = v179;
                          }

                          [v164 removeSubregion:v169];

                          ++v166;
                          v167 = v164;
                        }

                        while (v165 != v166);
                        v165 = [v163 countByEnumeratingWithState:v260 objects:v295 count:16];
                      }

                      while (v165);
                    }

                    v182 = [[PDFListItemElement alloc] initWithTextLines:&__src boundingBox:0];
                    [v219 addObject:v182];

                    __p[0] = &__src;
                    std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](__p);
                    v227 = (v227 + 1);
                  }

                  while (v227 != exception_objecta);
                  v159 = [v215 countByEnumeratingWithState:v264 objects:&v297 count:16];
                }

                while (v159);
              }

              else
              {
                v231 = -1;
              }

              v183 = [[PDFCRGroupRegion alloc] initWithBoundingQuad:0 layoutDirection:0 subregions:v219 parent:v160];
              v184 = [v160 children];
              if ([v184 count] <= v231)
              {

                v188 = v231;
              }

              else
              {
                v185 = [v160 children];
                v186 = [v185 objectAtIndex:v231];
                v187 = [v186 isEqual:v161];

                v188 = v231 + (v187 & 1);
              }

              [v160 insertChildren:v183 atIndex:v188];
              [*(v243 + 384) addObject:v183];

              v157 = (locationa + 1);
              v156 = v194;
            }

            while ((locationa + 1) != v201);
            v155 = [v209 countByEnumeratingWithState:v268 objects:&v299 count:16];
          }

          while (v155);
        }

        v151 = v192;
      }

      v203 = [v207 countByEnumeratingWithState:v272 objects:v303 count:16];
    }

    while (v203);
  }

  v128 = v243;
LABEL_168:
  v129 = *(v128 + 376);
  v130 = v129;

  return v129;
}

void sub_1841CA2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a67 = &STACK[0x360];
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&a67);
  JUMPOUT(0x1841CA39CLL);
}

void sub_1841CA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a68);
  }

  a67 = &STACK[0x360];
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&a67);
  JUMPOUT(0x1841CA39CLL);
}

id getCRCTLDClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRCTLDClass(void)::softClass;
  v7 = getCRCTLDClass(void)::softClass;
  if (!getCRCTLDClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL14getCRCTLDClassv_block_invoke;
    v3[3] = &unk_1E6E33138;
    v3[4] = &v4;
    ___ZL14getCRCTLDClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1841CA534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRNormalizedQuadClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRNormalizedQuadClass(void)::softClass;
  v7 = getCRNormalizedQuadClass(void)::softClass;
  if (!getCRNormalizedQuadClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL24getCRNormalizedQuadClassv_block_invoke;
    v3[3] = &unk_1E6E33138;
    v3[4] = &v4;
    ___ZL24getCRNormalizedQuadClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1841CA614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PageLayout::createFineCTLDConfig(PageLayout *this)
{
  v1 = [objc_alloc(getCRCTLDConfigClass()) init];
  [v1 setAngleThresholdForRotationCorrection:0.0];
  [v1 setFlatMergeJumps:1];
  [v1 setMaxRegions:169];
  [v1 setMaxQueueCapacity:0xFFFFFFFFLL];
  [v1 setNumLookupElements:57];
  [v1 setNumPointsForSegmentsIntersection:4];
  LODWORD(v2) = 8.0;
  [v1 setMinSubRectangleSize:v2];
  LODWORD(v3) = 1035122882;
  [v1 setMinQuadrilateralRotation:v3];
  LODWORD(v4) = 1060320051;
  [v1 setMinWhitespaceHeightForReadingOrder:v4];
  LODWORD(v5) = 1050589266;
  [v1 setAllowedOverlap:v5];
  LODWORD(v6) = 1047233823;
  [v1 setMinWhitespaceWidth:v6];
  LODWORD(v7) = 1063843267;
  [v1 setMinWhitespaceHeight:v7];
  LODWORD(v8) = 1078523331;
  [v1 setQualityHeightFactor:v8];
  LODWORD(v9) = 1066863165;
  [v1 setQualityWidthFactor:v9];

  return v1;
}

void PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v7 = *(a2 + 8);
    if (v7)
    {
      v8 = *a2;
      v9 = &v8[2 * v7];
      do
      {
        v10 = v8[1];
        if (v10 >= 1)
        {
          v11 = *v8;
          v12 = v10 + *v8;
          v14 = *(a1 + 112);
          v13 = *(a1 + 120);
          while (1)
          {
            if (v11 >= (v13 - v14) >> 3)
            {
              goto LABEL_29;
            }

            if (*(v14 + 8 * v11))
            {
              break;
            }

LABEL_18:
            if (++v11 >= v12)
            {
              goto LABEL_19;
            }
          }

          v15 = 0;
          while (1)
          {
            v16 = *(a1 + 184);
            if (v11 >= (*(a1 + 192) - v16) >> 3)
            {
              std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
            }

            v17 = *(a1 + 328);
            v18 = *(a1 + 336);
            if (v17 == v18)
            {
              v20 = *(a1 + 328);
            }

            else
            {
              v19 = *(v16 + 8 * v11) + v15;
              v20 = *(a1 + 328);
              while (*v20 != v19)
              {
                if (++v20 == v18)
                {
                  v20 = *(a1 + 336);
                  break;
                }
              }
            }

            [v6 addIndex:v20 - v17];
            v14 = *(a1 + 112);
            v13 = *(a1 + 120);
            if (v11 >= (v13 - v14) >> 3)
            {
              break;
            }

            if (++v15 >= *(v14 + 8 * v11))
            {
              goto LABEL_18;
            }
          }

LABEL_29:
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

LABEL_19:
        v8 += 2;
      }

      while (v8 != v9);
    }

    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x4012000000;
    v33 = __Block_byref_object_copy__413;
    v34 = __Block_byref_object_dispose__414;
    v35 = "";
    v36 = xmmword_18439C770;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___ZNK10PageLayout31ConvertTextRangesToStringRangesINSt3__14spanI7CFRangeLm18446744073709551615EEENS1_20back_insert_iteratorINS1_6vectorIS3_NS1_9allocatorIS3_EEEEEEEEvOT_OT0__block_invoke;
    v30[3] = &unk_1E6E317D0;
    v30[4] = &v31;
    v30[5] = a1;
    v30[6] = a3;
    [v6 enumerateRangesUsingBlock:v30];
    if (*(*(&v31 + 1) + 48) != -1)
    {
      std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](a3, (*(&v31 + 1) + 48));
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v21 = *(a2 + 8);
    if (v21)
    {
      v22 = *a2;
      v23 = *a2 + 16 * v21;
      do
      {
        v24 = *v22;
        v25 = *(a1 + 184);
        v26 = (*(a1 + 192) - v25) >> 3;
        if (v26 <= *v22)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

        v27 = v22[1] + v24;
        if (v26 <= v27)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

        v28 = *(v25 + 8 * v24);
        v29 = *(v25 + 8 * v27) - v28;
        *&v31 = v28;
        *(&v31 + 1) = v29;
        std::vector<PDFXRefTableEntry>::push_back[abi:fe200100](*a3, &v31);
        v22 += 2;
      }

      while (v22 != v23);
    }
  }
}

void sub_1841CA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1841CA9E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a2 != 1)
  {
    JUMPOUT(0x1841CA9D8);
  }

  v36 = __cxa_begin_catch(a1);
  v37 = (*(*v36 + 16))(v36);
  pdf_error("%s caught exception: %s", "void PageLayout::ConvertTextRangesToStringRanges(I &&, O &&) const [I = std::span<CFRange>, O = std::back_insert_iterator<std::vector<CFRange>>]", v37);

  __cxa_end_catch();
}

uint64_t PageLayout::CreateStringForStringRanges(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [*(a1 + 56) length];
  v6 = a2[1];
  if (v6)
  {
    v7 = v5;
    v8 = 16 * v6;
    v9 = (*a2 + 8);
    do
    {
      v10.location = *(v9 - 1);
      if (v10.location != v7)
      {
        v10.length = *v9;
        v16.location = 0;
        v16.length = v7;
        v11 = NSIntersectionRange(v10, v16);
        if (v11.length)
        {
          v12 = [*(a1 + 56) substringWithRange:{v11.location, v11.length}];
          [v4 appendString:v12];
        }
      }

      v9 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v14 = [v4 stringByTrimmingCharactersInSet:v13];

  return v14;
}

void ___ZL20getCRLayoutListClassv_block_invoke(uint64_t a1)
{
  TextRecognitionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRLayoutList");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRLayoutListClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    TextRecognitionLibrary();
  }
}

void TextRecognitionLibrary(void)
{
  v2 = 0;
  v0 = TextRecognitionLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np();
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

__n128 __Block_byref_object_copy__413(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t *___ZNK10PageLayout31ConvertTextRangesToStringRangesINSt3__14spanI7CFRangeLm18446744073709551615EEENS1_20back_insert_iteratorINS1_6vectorIS3_NS1_9allocatorIS3_EEEEEEEEvOT_OT0__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 40);
  v7 = a2 + a3;
  result = [*(v6 + 56) length];
  if (v7 < result)
  {
    result = [*(v6 + 56) characterAtIndex:v7];
    if (result == 10)
    {
      ++v3;
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 48);
  if (v10 != -1)
  {
    v11 = *(v9 + 56);
    if (v11 + v10 == a2)
    {
      *(v9 + 56) = v11 + v3;
      return result;
    }

    result = std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](*(a1 + 48), (v9 + 48));
    v9 = *(*(a1 + 32) + 8);
  }

  *(v9 + 48) = a2;
  *(v9 + 56) = v3;
  return result;
}

size_t *std::vector<std::shared_ptr<TextLine>>::push_back[abi:fe200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned long>>::operator=[abi:fe200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

id getCRCTLDConfigClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRCTLDConfigClass(void)::softClass;
  v7 = getCRCTLDConfigClass(void)::softClass;
  if (!getCRCTLDConfigClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL20getCRCTLDConfigClassv_block_invoke;
    v3[3] = &unk_1E6E33138;
    v3[4] = &v4;
    ___ZL20getCRCTLDConfigClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1841CB01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL20getCRCTLDConfigClassv_block_invoke(uint64_t a1)
{
  TextRecognitionLibrary();
  result = objc_getClass("CRCTLDConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRCTLDConfigClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return ___ZL24getCRNormalizedQuadClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL24getCRNormalizedQuadClassv_block_invoke(uint64_t a1)
{
  TextRecognitionLibrary();
  result = objc_getClass("CRNormalizedQuad");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRNormalizedQuadClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return ___ZL14getCRCTLDClassv_block_invoke(v3);
  }

  return result;
}

double ___ZL14getCRCTLDClassv_block_invoke(uint64_t a1)
{
  TextRecognitionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CRCTLD");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCRCTLDClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    *&result = __Block_byref_object_copy__125(v3, v4).n128_u64[0];
  }

  return result;
}

__n128 __Block_byref_object_copy__125(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN10PageLayout20createAtomicElementsEP6CGRect_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  value = 0;
  if (!CGPDFDictionaryGetName(v5, "Subtype", &value) || !strcmp(value, "Widget"))
  {
    v16 = 0;
    if (!CGPDFDictionaryGetBoolean(v5, "AAPL:isSignatureMarker", &v16) || v16 == 0)
    {
      v18.origin.x = CGPDFAnnotationGetRect(a3);
      v7 = *(a1 + 64);
      *&v15.a = *(a1 + 48);
      *&v15.c = v7;
      *&v15.tx = *(a1 + 80);
      v19 = CGRectApplyAffineTransform(v18, &v15);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      v12 = *(*(a1 + 40) + 8);
      *(v12 + 48) = CGRectUnion(*(v12 + 48), v19);
      v13 = [objc_alloc(getCRNormalizedQuadClass()) initWithNormalizedBoundingBox:x size:{y, width, height, *(a1 + 112), *(a1 + 120)}];
      v14 = [[PDFAnnotationElement alloc] initWithAnnotation:a3 boundingBox:v13];
      [*(a1 + 32) addObject:v14];
    }
  }
}

void PageLayout::addTextLineToAtomicElementMapping(PageLayout *this, TextLine *a2, PDFAtomicElement *a3)
{
  v6 = a3;
  v7 = v6;
  v8 = (this + 392);
  v9 = *(a2 + 8);
  v10 = *(this + 50);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v10 <= v9)
    {
      v12 = v9 % v10;
    }
  }

  else
  {
    v12 = (v10 - 1) & v9;
  }

  v13 = *(*v8 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_17:
    v16 = v6;
    v17 = *(this + 50);
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = vcnt_s8(v17);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = v9;
      if (v17 <= v9)
      {
        v19 = v9 % v17;
      }
    }

    else
    {
      v19 = (v17 - 1) & v9;
    }

    v20 = *(*v8 + 8 * v19);
    if (!v20 || (v21 = *v20) == 0)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      v22 = v21[1];
      if (v22 == v9)
      {
        if (*(v21 + 4) == v9)
        {

          goto LABEL_35;
        }
      }

      else
      {
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= v17)
          {
            v22 %= v17;
          }
        }

        else
        {
          v22 &= v17 - 1;
        }

        if (v22 != v19)
        {
          goto LABEL_34;
        }
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= v10)
      {
        v15 %= v10;
      }
    }

    else
    {
      v15 &= v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (*(v14 + 4) != v9)
  {
    goto LABEL_16;
  }

  objc_storeStrong(v14 + 3, a3);
LABEL_35:
}

void sub_1841CB618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>>>>::~unique_ptr[abi:fe200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZL26TextRecognitionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  TextRecognitionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<double,std::list<Span>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<double,std::list<Span>>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<unsigned long>::clear(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

void *std::vector<CGRect>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t std::allocator_traits<std::allocator<std::pair<std::string,unsigned int>>>::construct[abi:fe200100]<std::pair<std::string,unsigned int>,char const*&,unsigned int &,void,0>(uint64_t a1, char *__s, _DWORD *a3)
{
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memmove(a1, __s, result);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = *a3;
  return result;
}

void PageLayout::getTextRangeIndex(uint64_t a1, int a2, int a3, double a4, double a5)
{
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v6 != v5)
  {
    v7 = 0;
    v8 = 0;
    *v9.i64 = a4;
    *&v9.i64[1] = a5;
    v151 = v9;
    v149 = vdupq_lane_s64(*&a4, 0);
    v10 = ((v5 - v6) >> 4) <= 1 ? 1 : (v5 - v6) >> 4;
    v11 = -1;
    v12 = *(a1 + 64);
    v152 = 1.79769313e308;
    v148 = 1.79769313e308;
    do
    {
      v13 = *v12;
      v14 = *(*v12 + 56);
      v15 = v151;
      if (v14 != 0.0)
      {
        v17 = __sincos_stret(v14);
        v16.f64[0] = v17.__cosval;
        v16.f64[1] = -v17.__sinval;
        v15 = vaddq_f64(vmlaq_f64(vmulq_n_f64(v17, a5), v149, v16), 0);
      }

      v19 = *(v13 + 24);
      y = *(v13 + 32);
      v21 = *(v13 + 40);
      height = *(v13 + 48);
      if (v21 < 0.0 || height < 0.0)
      {
        v154 = v15;
        v29 = COERCE_DOUBLE(CGRectStandardize(*(v13 + 24))) - v15.f64[0];
        v163.origin.x = v19;
        v163.origin.y = y;
        v163.size.width = v21;
        v163.size.height = height;
        v164 = CGRectStandardize(v163);
        v30 = v154.f64[0] - (v164.origin.x + v164.size.width);
        v24 = v29 < 0.0;
        if (v29 >= 0.0)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0.0;
        }

        v25 = v31 < v30;
        if (v31 >= v30)
        {
          v26 = v31;
        }

        else
        {
          v26 = v30;
        }

        v165.origin.x = v19;
        v165.origin.y = y;
        v165.size.width = v21;
        v165.size.height = height;
        v166 = CGRectStandardize(v165);
        v27 = v154.f64[1];
        v28 = v166.origin.y - v154.f64[1];
        v166.origin.x = v19;
        v166.origin.y = y;
        v166.size.width = v21;
        v166.size.height = height;
        v167 = CGRectStandardize(v166);
        y = v167.origin.y;
        height = v167.size.height;
      }

      else
      {
        v22 = v19 - v15.f64[0];
        v23 = v15.f64[0] - (v19 + v21);
        v24 = v19 - v15.f64[0] < 0.0;
        if (v19 - v15.f64[0] < 0.0)
        {
          v22 = 0.0;
        }

        v25 = v22 < v23;
        if (v22 >= v23)
        {
          v26 = v22;
        }

        else
        {
          v26 = v15.f64[0] - (v19 + v21);
        }

        v27 = v15.f64[1];
        v28 = y - v15.f64[1];
      }

      v32 = v27 - (y + height);
      if (v28 >= 0.0)
      {
        v33 = v28;
      }

      else
      {
        v33 = 0.0;
      }

      if (v33 >= v32)
      {
        v32 = v33;
      }

      if (v32 * v32 + v26 * v26 < v152)
      {
        if (v25)
        {
          v8 = 2;
        }

        else
        {
          v8 = v24;
        }

        v11 = v7;
        v148 = v32;
        v152 = v32 * v32 + v26 * v26;
      }

      ++v7;
      v12 += 2;
    }

    while (v10 != v7);
    if (v11 != -1)
    {
      v160 = 0;
      v161 = 0;
      v162 = 0;
      if ((v5 - v6) >> 4 <= v11)
      {
        goto LABEL_157;
      }

      v34 = *(v6 + 16 * v11);
      v35 = v34[3];
      v36 = v34[4];
      v37 = v34[5];
      v38 = v34[6];
      v39 = __sincos_stret(v34[7]);
      v159.a = v39.__cosval;
      v159.b = v39.__sinval;
      v159.c = -v39.__sinval;
      v159.d = v39.__cosval;
      v159.tx = 0.0;
      v159.ty = 0.0;
      v168.origin.x = v35;
      v168.origin.y = v36;
      v168.size.width = v37;
      v168.size.height = v38;
      v169 = CGRectApplyAffineTransform(v168, &v159);
      x = v169.origin.x;
      v41 = v169.origin.y;
      width = v169.size.width;
      v43 = v169.size.height;
      v44 = 0;
      v45 = 0;
      v158 = 0;
      v46 = a1;
      do
      {
        v47 = *(v6 + v44);
        v48 = v47[3];
        v49 = v47[4];
        v50 = v47[5];
        v51 = v47[6];
        v52 = __sincos_stret(v47[7]);
        v159.a = v52.__cosval;
        v159.b = v52.__sinval;
        v159.c = -v52.__sinval;
        v159.d = v52.__cosval;
        v159.tx = 0.0;
        v159.ty = 0.0;
        v170.origin.x = v48;
        v170.origin.y = v49;
        v170.size.width = v50;
        v170.size.height = v51;
        v180 = CGRectApplyAffineTransform(v170, &v159);
        v171.origin.x = x;
        v171.origin.y = v41;
        v171.size.width = width;
        v171.size.height = v43;
        if (CGRectIntersectsRect(v171, v180))
        {
          std::vector<unsigned long>::push_back[abi:fe200100](&v160, &v158);
          v6 = *(a1 + 64);
          v5 = *(a1 + 72);
        }

        v158 = ++v45;
        v44 += 16;
      }

      while (v45 < (v5 - v6) >> 4);
      v153 = (v5 - v6) >> 4;
      v54 = v160;
      v55 = v161;
      if ((v161 - v160) > 8)
      {
        v143 = v160;
        if (v160 != v161)
        {
          v56 = 1.79769313e308;
          v57 = v160;
          do
          {
            v58 = *v57;
            if (v153 <= *v57)
            {
              goto LABEL_157;
            }

            v59 = *(v6 + 16 * v58);
            v60 = v59[1];
            if (v60 >= 1)
            {
              v61 = *v59;
              v62 = v60 + *v59;
              v53.i64[0] = v59[7];
              v155 = v53;
              v64 = __sincos_stret(*v53.i64);
              v63.f64[0] = v64.__cosval;
              v63.f64[1] = -v64.__sinval;
              v65.f64[0] = 0.0;
              v53 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vceqq_f64(v155, v65)).i64[0], 0), vaddq_f64(vmlaq_f64(vmulq_n_f64(v64, a5), v149, v63), 0), v151);
              v66 = *(v46 + 160);
              v67 = (*(v46 + 168) - v66) >> 5;
              v68 = v67 >= v61;
              v69 = v67 - v61;
              if (v68)
              {
                v70 = v69;
              }

              else
              {
                v70 = 0;
              }

              if (v62 <= (v61 + 1))
              {
                v71 = v61 + 1;
              }

              else
              {
                v71 = v62;
              }

              v72 = v71 + ~v61;
              v73 = v53;
              v74 = (v66 + 32 * v61 + 16);
              v75 = v71 - v61;
              while (v70 > v72)
              {
                v77 = *(v74 - 2);
                v76 = *(v74 - 1);
                v79 = *v74;
                v78 = v74[1];
                v80 = fmin(*v74, v78);
                v81 = v80 < 0.0;
                if (v80 < 0.0)
                {
                  *&v82 = CGRectStandardize(*(v74 - 2));
                  v172.origin.x = v77;
                  v172.origin.y = v76;
                  v172.size.width = v79;
                  v172.size.height = v78;
                  *v53.i8 = CGRectStandardize(v172);
                }

                else
                {
                  v82 = *(v74 - 2);
                  *v53.i64 = v82;
                  v83 = *v74;
                }

                v84 = v82 - *v73.i64;
                v85 = *v73.i64 - (*v53.i64 + v83);
                if (v82 - *v73.i64 < 0.0)
                {
                  v84 = 0.0;
                }

                if (v84 >= v85)
                {
                  v86 = v84;
                }

                else
                {
                  v86 = v85;
                }

                if (v81)
                {
                  v173.origin.x = v77;
                  v173.origin.y = v76;
                  v173.size.width = v79;
                  v173.size.height = v78;
                  v174 = CGRectStandardize(v173);
                  v87 = v174.origin.y;
                  v174.origin.x = v77;
                  v174.origin.y = v76;
                  v174.size.width = v79;
                  v174.size.height = v78;
                  *v53.i8 = CGRectStandardize(v174);
                  v78 = v175.size.height;
                  v76 = v87;
                }

                else
                {
                  v175.origin.y = v76;
                }

                v88 = v175.origin.y + v78;
                v89 = v76 - *&v73.i64[1];
                v90 = *&v73.i64[1] - v88;
                if (v76 - *&v73.i64[1] < 0.0)
                {
                  v89 = 0.0;
                }

                if (v89 >= v90)
                {
                  v90 = v89;
                }

                v91 = v90 * v90 + v86 * v86;
                if (v91 < v56)
                {
                  v11 = v58;
                  v56 = v91;
                }

                v74 += 4;
                if (!--v75)
                {
                  goto LABEL_71;
                }
              }

              goto LABEL_157;
            }

LABEL_71:
            ++v57;
            v46 = a1;
          }

          while (v57 != v55);
        }

        if (v153 <= v11)
        {
          goto LABEL_157;
        }

        v92 = *(v6 + 16 * v11);
        v93 = *(v92 + 56);
        v94 = a4;
        v54 = v143;
        if (v93 != 0.0)
        {
          v95 = __sincos_stret(v93);
          v94 = a5 * v95.__sinval + v95.__cosval * a4 + 0.0;
        }

        v96 = *(v92 + 24);
        v97 = *(v92 + 32);
        v98 = *(v92 + 40);
        v99 = *(v92 + 48);
        if (v98 < 0.0 || v99 < 0.0)
        {
          *&v100 = CGRectStandardize(*(v92 + 24));
          v176.origin.x = v96;
          v176.origin.y = v97;
          v176.size.width = v98;
          v176.size.height = v99;
          v177 = CGRectStandardize(v176);
          v96 = v177.origin.x;
          v98 = v177.size.width;
        }

        else
        {
          v100 = *(v92 + 24);
        }

        v101 = v100 - v94;
        if (v100 - v94 < 0.0)
        {
          v101 = 0.0;
        }

        if (v101 >= v94 - (v96 + v98))
        {
          v8 = v100 - v94 < 0.0;
        }

        else
        {
          v8 = 2;
        }
      }

      v102 = a4;
      if (a3 != 2)
      {
        goto LABEL_88;
      }

      if (v8 == 1)
      {
        if (v148 != 0.0)
        {
          goto LABEL_92;
        }

LABEL_88:
        if (v153 <= v11)
        {
          goto LABEL_157;
        }

        v103 = *(v6 + 16 * v11);
        v105 = *v103;
        v104 = *(v103 + 8);
        v106 = v104 + *v103;
        v158 = v106;
        v159.a = v105;
        if (v8 == 2 || !v8)
        {
          PageLayout::getTextRangeIndex(CGPoint,CGPDFSelectionType,SelectionPrecision)const::$_1::operator()(v46, &v159, &v158, 0);
          goto LABEL_92;
        }

        v107 = a2;
        if (a2 == 2)
        {
          goto LABEL_96;
        }

        v108 = *(v103 + 56);
        if (v108 != 0.0)
        {
          v109 = __sincos_stret(v108);
          v102 = a5 * v109.__sinval + v109.__cosval * a4 + 0.0;
        }

        v146 = v102;
        if (v104 >= 1)
        {
          v110 = v54;
          v111 = *(v46 + 160);
          v112 = *(v46 + 168) - v111;
          v113 = v112 >> 5;
          if (v106 <= *&v105 + 1)
          {
            v114 = *&v105 + 1;
          }

          else
          {
            v114 = v106;
          }

          if (*&v105 <= (v112 >> 5))
          {
            v115 = v112 >> 5;
          }

          else
          {
            v115 = *&v105;
          }

          v116 = (v111 + 32 * *&v105 + 16);
          while (1)
          {
            if (v115 == *&v105)
            {
              goto LABEL_157;
            }

            v117 = *(v116 - 2);
            v118 = *v116;
            v119 = v116[1];
            if (*v116 < 0.0 || v119 < 0.0)
            {
              v120 = COERCE_DOUBLE(CGRectStandardize(*(v116 - 2)));
              v102 = v146;
              if (v120 > v146)
              {
                goto LABEL_117;
              }

              v178.origin.y = *(v116 - 1);
              v178.origin.x = v117;
              v178.size.width = v118;
              v178.size.height = v119;
              v179 = CGRectStandardize(v178);
              v102 = v146;
              v117 = v179.origin.x;
              v118 = v179.size.width;
            }

            else if (v117 > v102)
            {
              goto LABEL_117;
            }

            if (v102 <= v117 + v118)
            {
              v107 = a2;
              goto LABEL_123;
            }

LABEL_117:
            ++*&v105;
            v116 += 4;
            if (*&v105 >= v106)
            {
              v105 = *&v114;
              v54 = v110;
              v107 = a2;
              break;
            }
          }
        }

        if (v105 == NAN)
        {
          goto LABEL_92;
        }

        v110 = v54;
        v111 = *(v46 + 160);
        v113 = (*(v46 + 168) - v111) >> 5;
LABEL_123:
        if (*&v105 == v113)
        {
          v121 = v113 - 1;
        }

        else
        {
          v121 = *&v105;
        }

        if (a3 == 2)
        {
          v54 = v110;
          goto LABEL_92;
        }

        if (v113 <= v121)
        {
          goto LABEL_157;
        }

        v122 = v111 + 32 * v121;
        v123 = *v122;
        v124 = *(v122 + 16);
        v125 = *(v122 + 24);
        if (v124 < 0.0 || v125 < 0.0)
        {
          v126 = *(v122 + 8);
          *&v123 = CGRectStandardize(*&v123);
        }

        v54 = v110;
        if (v107)
        {
          WordRange = PageLayout::getWordRange(v46, v11, v121);
          v156 = WordRange + v128;
          v157 = WordRange;
          PageLayout::getTextRangeIndex(CGPoint,CGPDFSelectionType,SelectionPrecision)const::$_1::operator()(v46, &v157, &v156, 1);
          goto LABEL_92;
        }

        v129 = v123 + v124 * 0.5;
        if (*(v46 + 40) != 1)
        {
LABEL_92:
          if (!v54)
          {
            return;
          }

          goto LABEL_93;
        }

        v130 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v46, v121);
        if (v130 == ((*(v46 + 336) - *(v46 + 328)) >> 3) - 1)
        {
          goto LABEL_140;
        }

        v131 = v130 + 1;
        if ([*(v46 + 56) characterAtIndex:v130 + 1] == 10)
        {
          goto LABEL_140;
        }

        v132 = *(v46 + 328);
        v133 = (*(v46 + 336) - v132) >> 3;
        if (v133 <= v130 || v133 <= v131)
        {
          goto LABEL_157;
        }

        if (*(v132 + 8 * v130) > *(v132 + 8 * v131))
        {
LABEL_140:
          if (v130)
          {
            v134 = v130 - 1;
            v135 = [*(v46 + 56) characterAtIndex:v130 - 1];
            v136 = v146;
            if (v135 == 10)
            {
              v137 = 1;
            }

            else
            {
              v138 = *(v46 + 328);
              v139 = (*(v46 + 336) - v138) >> 3;
              if (v139 <= v134 || v139 <= v130)
              {
                goto LABEL_157;
              }

              v137 = *(v138 + 8 * v134) > *(v138 + 8 * v130);
            }

LABEL_150:
            v54 = v110;
            if (v137 != v136 >= v129 && v130 < ((*(v46 + 336) - *(v46 + 328)) >> 3) - 1)
            {
              v140 = v130 + 1;
              if ([*(v46 + 56) characterAtIndex:v140] == 10)
              {
LABEL_96:
                PageLayout::getTextRangeIndex(CGPoint,CGPDFSelectionType,SelectionPrecision)const::$_1::operator()(v46, &v159, &v158, 1);
                goto LABEL_92;
              }

              v141 = *(v46 + 328);
              if (v140 < (*(v46 + 336) - v141) >> 3)
              {
                PageLayout::convertStringRangeIndexToTextRangeIndex(*(v46 + 184), *(v46 + 192), *(v141 + 8 * v140));
                goto LABEL_92;
              }

LABEL_157:
              __break(1u);
              return;
            }

            goto LABEL_92;
          }

          v137 = 1;
        }

        else
        {
          v137 = 0;
        }

        v136 = v146;
        goto LABEL_150;
      }

      if (v54)
      {
LABEL_93:
        v161 = v54;
        operator delete(v54);
      }
    }
  }
}

void sub_1841CC3E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *PageLayout::convertRTLTextRangeIndexToStringRangeIndex(void *this, unint64_t a2)
{
  v2 = this[23];
  if (a2 >= (this[24] - v2) >> 3 || (v3 = this[14], a2 >= (this[15] - v3) >> 3))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 8 * a2);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = this[41];
    v7 = this[42];
    if (v6 == v7)
    {
      v9 = this[41];
    }

    else
    {
      v8 = *(v2 + 8 * a2);
      v9 = this[41];
LABEL_8:
      v10 = 0;
      while (*v9 != v10 + v8)
      {
        v10 = (v10 + 1);
        if (v10 == v5)
        {
          if (++v9 != v7)
          {
            goto LABEL_8;
          }

          v9 = this[42];
          break;
        }
      }
    }

    v11 = v9 - v6;
    if (v11 < v7 - v6 - 1 && v4 == 0)
    {
      return (v11 + 1);
    }

    else
    {
      return (v9 - v6);
    }
  }

  return this;
}

uint64_t PageLayout::CreateSelectionForStringRange(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if ((a2 & 0x8000000000000000) != 0 || a3 < 1)
  {
    return v4;
  }

  v6 = a2;
  v8 = a2 + a3;
  result = [*(a1 + 56) length];
  if (v8 > result)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    v4 = CGPDFSelectionCreateWithPage(*a1);
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    do
    {
      result = [*(a1 + 56) characterAtIndex:v6];
      if (result != 10)
      {
        v11 = *(a1 + 328);
        if (v6 >= (*(a1 + 336) - v11) >> 3)
        {
          goto LABEL_30;
        }

        [v10 addIndex:{PageLayout::convertStringRangeIndexToTextRangeIndex(*(a1 + 184), *(a1 + 192), *(v11 + 8 * v6))}];
      }

      ++v6;
    }

    while (v6 < v8);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = ___ZNK10PageLayout29CreateSelectionForStringRangeE7CFRange18CGPDFSelectionType_block_invoke;
    v29[3] = &__block_descriptor_48_e24_v32__0__NSRange_QQ_8_B24l;
    v29[4] = a1;
    v29[5] = v4 + 168;
    [v10 enumerateRangesUsingBlock:v29];
    Selection::Normalize((v4 + 168));

    return v4;
  }

  v12 = *(a1 + 184);
  v13 = *(a1 + 192);
  v14 = v13 - v12;
  if (v13 == v12)
  {
    goto LABEL_30;
  }

  v15 = v14 >> 3;
  v16 = *(a1 + 184);
  v17 = v14 >> 3;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[v17 >> 1];
    v21 = *v19;
    v20 = v19 + 1;
    result = ~(v17 >> 1);
    v17 += result;
    if (v21 < v6)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v14 <= v16 - v12)
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    v22 = ((v16 - v12) >> 3) - (*v16 != v6);
    v23 = v13 - v16;
    if (v23)
    {
      v24 = v23 >> 3;
      do
      {
        v25 = v24 >> 1;
        v26 = &v16[v24 >> 1];
        v28 = *v26;
        v27 = v26 + 1;
        v24 += ~(v24 >> 1);
        if (v28 < v8)
        {
          v16 = v27;
        }

        else
        {
          v24 = v25;
        }
      }

      while (v24);
      v15 = (v16 - v12) >> 3;
    }

    return PageLayout::CreateSelectionForTextRange(a1, v22, v15 - v22, a4);
  }

  return result;
}

uint64_t PageLayout::CreateSelectionForTextRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    if (a2 + a3 <= (*(a1 + 144) - *(a1 + 136)) >> 5)
    {
      v4 = CGPDFSelectionCreateWithPage(*a1);
      LineIndex = PageLayout::getLineIndex(*(a1 + 64), *(a1 + 72), a2);
      v10 = LineIndex;
      v12 = *(v4 + 192);
      v11 = *(v4 + 200);
      if (v12 >= v11)
      {
        v14 = *(v4 + 184);
        v15 = v12 - v14;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v19);
        }

        v20 = 24 * v16;
        *v20 = v10;
        *(v20 + 8) = a2;
        *(v20 + 16) = a3;
        v13 = 24 * v16 + 24;
        v21 = (24 * v16 - v15);
        memcpy(v21, v14, v15);
        v22 = *(v4 + 184);
        *(v4 + 184) = v21;
        *(v4 + 192) = v13;
        *(v4 + 200) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12 = LineIndex;
        v12[1] = a2;
        v13 = (v12 + 3);
        v12[2] = a3;
      }

      *(v4 + 192) = v13;
      if (a4 == 3)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      *(v4 + 288) = v23;
      Selection::Normalize((v4 + 168));
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void ___ZNK10PageLayout29CreateSelectionForStringRangeE7CFRange18CGPDFSelectionType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LineIndex = PageLayout::getLineIndex(*(*(a1 + 32) + 64), *(*(a1 + 32) + 72), a2);
  v7 = LineIndex;
  v8 = *(a1 + 40);
  v10 = v8[3];
  v9 = v8[4];
  if (v10 >= v9)
  {
    v12 = v8[2];
    v13 = v10 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v17);
    }

    v18 = 24 * v14;
    *v18 = v7;
    *(v18 + 8) = a2;
    *(v18 + 16) = a3;
    v11 = 24 * v14 + 24;
    v19 = (24 * v14 - v13);
    memcpy(v19, v12, v13);
    v20 = v8[2];
    v8[2] = v19;
    v8[3] = v11;
    v8[4] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = LineIndex;
    v10[1] = a2;
    v11 = (v10 + 3);
    v10[2] = a3;
  }

  v8[3] = v11;
}

uint64_t PageLayout::convertStringRangeIndexToTextRangeIndex(PageLayout *this, PageLayout *a2, unint64_t a3)
{
  v3 = (a2 - this) >> 3;
  if (a2 != this)
  {
    a2 = this;
    v4 = v3;
    do
    {
      v5 = v4 >> 1;
      v6 = (a2 + 8 * (v4 >> 1));
      v8 = *v6;
      v7 = (v6 + 1);
      v4 += ~(v4 >> 1);
      if (v8 < a3)
      {
        a2 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  v9 = -8;
  if (*a2 == a3)
  {
    v9 = 0;
  }

  v10 = a2 + v9;
  v11 = (a2 + v9) - this;
  v12 = v11 >> 3;
  if (v11 >> 3 <= v3 - 1)
  {
    result = v3 - 1;
  }

  else
  {
    result = v11 >> 3;
  }

  if (v12 <= v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v11 >> 3;
  }

  v15 = result - (v11 >> 3);
  v16 = v12 + 1;
  v17 = (v10 + 8);
  v18 = -v14;
  while (v15)
  {
    if (v18 + v16 == 1 || v3 <= v16)
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 - 1);
    v20 = *v17;
    --v15;
    ++v16;
    ++v17;
    if (v19 != v20)
    {
      return v16 - 2;
    }
  }

  return result;
}

uint64_t PageLayout::getLineIndex(PageLayout *this, PageLayout *a2, uint64_t a3)
{
  if (a2 == this)
  {
    v4 = a2;
LABEL_11:
    v4 = (v4 - 16);
    return (v4 - this) >> 4;
  }

  v3 = (a2 - this) >> 4;
  v4 = this;
  do
  {
    v5 = v3 >> 1;
    v6 = (v4 + 16 * (v3 >> 1));
    v8 = *v6;
    v7 = (v6 + 2);
    v3 += ~(v3 >> 1);
    if (*v8 < a3)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == a2 || **v4 != a3)
  {
    goto LABEL_11;
  }

  return (v4 - this) >> 4;
}

void PageLayout::getTextRangeIndex(CGPoint,CGPDFSelectionType,SelectionPrecision)const::$_1::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, char a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = *a3;
    v9 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(a1, *a3 - 1);
    v10 = *a2;
    v11 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(a1, *a2);
    v28[0] = v10;
    v28[1] = v8 - v10;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24[0] = v28;
    v24[1] = 1;
    v23 = &v25;
    PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(a1, v24, &v23);
    v12 = v25;
    if (v25 == v26)
    {
      if (!v25)
      {
        return;
      }
    }

    else
    {
      v13 = *v25;
      v14 = *(a1 + 328);
      v15 = *(a1 + 336) - v14;
      if (*v25 < v15 >> 3)
      {
        v22 = v9;
        v16 = v15 >> 3;
        if ((v15 >> 3) - 1 >= (v25[1] + v13))
        {
          v17 = v25[1] + v13;
        }

        else
        {
          v17 = v16 - 1;
        }

        if (v16 <= v13 || (v19 = *(a1 + 184), v18 = *(a1 + 192), *a2 = PageLayout::convertStringRangeIndexToTextRangeIndex(v19, v18, *(v14 + 8 * v13)), v16 <= v17))
        {
          __break(1u);
          return;
        }

        v20 = PageLayout::convertStringRangeIndexToTextRangeIndex(v19, v18, *(v14 + 8 * v17));
        *a3 = v20;
        if ((a4 & 1) == 0 && v22 < v11)
        {
          v21 = *a2;
          *a2 = v20;
          *a3 = v21;
        }
      }
    }

    v26 = v12;
    operator delete(v12);
  }
}

void sub_1841CCBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *PageLayout::getWordRange(void *this, unint64_t a2, unint64_t a3)
{
  v3 = this[8];
  if (a2 < (this[9] - v3) >> 4)
  {
    v5 = this;
    v6 = *(v3 + 16 * a2);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = __OFSUB__(a3, *v6);
    v11 = a3 - *v6;
    if (!((v11 < 0) ^ v10 | (v11 == 0)))
    {
      v12 = this[14];
      v13 = (this[15] - v12) >> 3;
      v14 = v13 >= v7;
      v15 = v13 - v7;
      if (!v14)
      {
        v15 = 0;
      }

      if (v15 <= ~v7 + a3)
      {
        goto LABEL_100;
      }

      v16 = (v12 + 8 * v7);
      do
      {
        v17 = *v16++;
        v9 += v17;
        --v11;
      }

      while (v11);
    }

    v18 = this[11];
    if (v9 >= (this[12] - v18) >> 1)
    {
      return 0;
    }

    v19 = MEMORY[0x1865EFD70](*(v18 + 2 * v9));
    v20 = [MEMORY[0x1E696AD48] punctuationCharacterSet];
    v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v20 formUnionWithCharacterSet:v21];

    this = v20;
    v22 = v5[11];
    if (v9 < (v5[12] - v22) >> 1)
    {
      v23 = this;
      this = MEMORY[0x1865EFD70](*(v22 + 2 * v9));
      v25 = this != 10 && this != 17;
      if (v19 == this)
      {
        v25 = 0;
      }

      v26 = v19 == 10 || v19 == 17;
      v27 = v26 ? this : v19;
      v28 = !v26 && v25;
      v29 = v5[14];
      if (a3 < (v5[15] - v29) >> 3)
      {
        if (*(v29 + 8 * a3) != 1)
        {
          if (!v28)
          {
LABEL_31:
            if (a3 > v7)
            {
              v31 = a3 - 1;
              v32 = v9;
              while (1)
              {
                v33 = v5[11];
                if (v32 >= (v5[12] - v33) >> 1)
                {
                  goto LABEL_100;
                }

                this = MEMORY[0x1865EFD70](*(v33 + 2 * v32));
                v35 = this != 10 && this != 17;
                if (v27 == this)
                {
                  v35 = 0;
                }

                if (v27 == 17)
                {
                  v36 = this;
                }

                else
                {
                  v36 = v27;
                }

                if (v27 == 17)
                {
                  v35 = 0;
                }

                v37 = v27 == 10;
                v27 = v27 == 10 ? this : v36;
                v38 = !v37 && v35;
                v39 = v5[14];
                v40 = (v5[15] - v39) >> 3;
                if (v40 <= a3)
                {
                  goto LABEL_100;
                }

                if (*(v39 + 8 * a3) == 1)
                {
                  v41 = v5[11];
                  if (v32 >= (v5[12] - v41) >> 1)
                  {
                    goto LABEL_100;
                  }

                  this = [v23 characterIsMember:*(v41 + 2 * v32)];
                  if ((this | v38))
                  {
LABEL_67:
                    v43 = v31 + 2;
                    goto LABEL_68;
                  }

                  v39 = v5[14];
                  v40 = (v5[15] - v39) >> 3;
                }

                else if (v38)
                {
                  goto LABEL_67;
                }

                if (v40 <= v31)
                {
                  goto LABEL_100;
                }

                v32 -= *(v39 + 8 * v31);
                if (v31-- <= v7)
                {
                  v43 = v7;
                  goto LABEL_68;
                }
              }
            }

            v43 = a3;
LABEL_68:
            v44 = v8 + v7;
            if (v44 > a3)
            {
              v45 = a3;
              while (1)
              {
                v46 = v5[11];
                if (v9 >= (v5[12] - v46) >> 1)
                {
                  goto LABEL_100;
                }

                this = MEMORY[0x1865EFD70](*(v46 + 2 * v9));
                v48 = this != 10 && this != 17;
                if (v27 == this)
                {
                  v48 = 0;
                }

                if (v27 == 17)
                {
                  v49 = this;
                }

                else
                {
                  v49 = v27;
                }

                if (v27 == 17)
                {
                  v48 = 0;
                }

                v50 = v27 == 10;
                v27 = v27 == 10 ? this : v49;
                v51 = !v50 && v48;
                v52 = v5[14];
                v53 = (v5[15] - v52) >> 3;
                if (v53 <= a3)
                {
                  goto LABEL_100;
                }

                if (*(v52 + 8 * a3) == 1)
                {
                  v54 = v5[11];
                  if (v9 >= (v5[12] - v54) >> 1)
                  {
                    goto LABEL_100;
                  }

                  this = [v23 characterIsMember:*(v54 + 2 * v9)];
                  if ((this | v51))
                  {
                    goto LABEL_98;
                  }

                  v52 = v5[14];
                  v53 = (v5[15] - v52) >> 3;
                }

                else if (v51)
                {
                  goto LABEL_98;
                }

                if (v53 <= v45)
                {
                  goto LABEL_100;
                }

                v9 += *(v52 + 8 * v45++);
                if (v44 == v45)
                {
                  goto LABEL_98;
                }
              }
            }

            goto LABEL_98;
          }

LABEL_65:
          v43 = a3;
LABEL_98:

          return v43;
        }

        v30 = v5[11];
        if (v9 < (v5[12] - v30) >> 1)
        {
          this = [v23 characterIsMember:*(v30 + 2 * v9)];
          if (((this | v28) & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_65;
        }
      }
    }
  }

LABEL_100:
  __break(1u);
  return this;
}

uint64_t PageLayout::getTableSelectionRectForPoints(PageLayout *this, CGPoint a2, CGPoint a3, PageLayoutTable **a4)
{
  y = a3.y;
  x = a3.x;
  v16[4] = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  CellAtPoint = PageLayoutTable::getCellAtPoint(a4[15], a2, a4[16]);
  v17.x = x;
  v17.y = y;
  result = PageLayoutTable::getCellAtPoint(a4[15], v17, a4[16]);
  if (CellAtPoint)
  {
    v10 = result == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = CellAtPoint[2].origin.x;
    v12 = *(result + 64);
    if (*&v11 <= v12)
    {
      v13 = CellAtPoint;
    }

    else
    {
      v13 = result;
    }

    if (*&v11 <= v12)
    {
      CellAtPoint = result;
    }

    v15 = CGRectNull;
    v16[0] = &unk_1EF23DC60;
    v16[1] = &v15;
    v16[3] = v16;
    PageLayoutTable::forEachCellInRange(a4, v13, CellAtPoint, v16);
    result = std::__function::__value_func<void ()(PageLayoutTable::TableCell *)>::~__value_func[abi:fe200100](v16);
    *this = a4;
    *(this + 8) = *(v13 + 32);
    *(this + 24) = CellAtPoint[1].origin;
    size = v15.size;
    *(this + 40) = v15.origin;
    *(this + 56) = size;
  }

  return result;
}

void sub_1841CD0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(PageLayoutTable::TableCell *)>::~__value_func[abi:fe200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(PageLayoutTable::TableCell *)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<PageLayout::getTableSelectionRectForPoints(CGPoint,CGPoint,PageLayoutTable *)::$_0,std::allocator<PageLayout::getTableSelectionRectForPoints(CGPoint,CGPoint,PageLayoutTable *)::$_0>,void ()(PageLayoutTable::TableCell *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZNK10PageLayout30getTableSelectionRectForPointsE7CGPointS0_P15PageLayoutTableE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PageLayout::getTableSelectionRectForPoints(CGPoint,CGPoint,PageLayoutTable *)::$_0,std::allocator<PageLayout::getTableSelectionRectForPoints(CGPoint,CGPoint,PageLayoutTable *)::$_0>,void ()(PageLayoutTable::TableCell *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF23DC60;
  a2[1] = v2;
  return result;
}

void std::vector<std::pair<unsigned long,CFRange>>::emplace_back<int,CFRange>(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v10);
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 8) = *a3;
    v6 = 24 * v7 + 24;
    v12 = *(a1 + 8) - *a1;
    v13 = (24 * v7 - v12);
    memcpy(v13, *a1, v12);
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
    *(v5 + 8) = *a3;
    v6 = v5 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t PageLayout::CreateSelectionForRect(const void **this, CGRect a2)
{
  v3 = CGPDFSelectionCreateWithPage(*this);
  *(v3 + 288) = 2;
  v4 = this[8];
  if (this[9] == v4)
  {
    goto LABEL_45;
  }

  v5 = 0;
  v45 = 0;
  do
  {
    v44 = &v4[16 * v5];
    v6 = *v44;
    v7 = __sincos_stret(*(*v44 + 56));
    v49 = *(v6 + 24);
    v47.a = v7.__cosval;
    v47.b = v7.__sinval;
    v47.c = -v7.__sinval;
    v47.d = v7.__cosval;
    v47.tx = 0.0;
    v47.ty = 0.0;
    v54 = CGRectApplyAffineTransform(v49, &v47);
    if (!CGRectIntersectsRect(a2, v54) || *(v6 + 8) < 1)
    {
      goto LABEL_44;
    }

    v8 = 0;
    v9 = *v6;
    v10 = 32 * *v6;
    v11 = -1;
    do
    {
      v12 = this[17];
      if (v9 >= (this[18] - v12) >> 5)
      {
        __break(1u);
LABEL_47:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v50 = *&v12[v10];
      v47.a = v7.__cosval;
      v47.b = v7.__sinval;
      v47.c = -v7.__sinval;
      v47.d = v7.__cosval;
      v47.tx = 0.0;
      v47.ty = 0.0;
      v51 = CGRectApplyAffineTransform(v50, &v47);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
      if (v51.size.width < 0.0 || v51.size.height < 0.0)
      {
        v52 = CGRectStandardize(v51);
        v18 = v52.origin.x + v52.size.width * 0.5;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v17 = 0.5;
        v52.size.height = height;
        v53 = CGRectStandardize(v52);
        y = v53.origin.y;
        height = v53.size.height;
      }

      else
      {
        v17 = 0.5;
        v18 = v51.origin.x + v51.size.width * 0.5;
      }

      v48.y = y + height * v17;
      v48.x = v18;
      if (CGRectContainsPoint(a2, v48))
      {
        if (v11 != -1)
        {
          if (v9 == v8 + v11)
          {
            ++v8;
            goto LABEL_29;
          }

          v20 = *(v3 + 192);
          v19 = *(v3 + 200);
          if (v20 >= v19)
          {
            v22 = *(v3 + 184);
            v23 = v20 - v22;
            v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
            v25 = v24 + 1;
            if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_47;
            }

            v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3);
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x555555555555555)
            {
              v27 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v27);
            }

            v28 = 24 * v24;
            *v28 = v45;
            *(v28 + 8) = v11;
            *(v28 + 16) = v8;
            v21 = 24 * v24 + 24;
            v29 = v28 - v23;
            memcpy((v28 - v23), v22, v23);
            v30 = *(v3 + 184);
            *(v3 + 184) = v29;
            *(v3 + 192) = v21;
            *(v3 + 200) = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v20 = v45;
            *(v20 + 1) = v11;
            v21 = (v20 + 24);
            *(v20 + 2) = v8;
          }

          *(v3 + 192) = v21;
          v6 = *v44;
        }

        v11 = v9;
        v8 = 1;
        v45 = v5;
      }

LABEL_29:
      ++v9;
      v10 += 32;
    }

    while (v9 < *(v6 + 8) + *v6);
    if (v11 == -1)
    {
      goto LABEL_44;
    }

    v32 = *(v3 + 192);
    v31 = *(v3 + 200);
    if (v32 < v31)
    {
      *v32 = v45;
      *(v32 + 1) = v11;
      v33 = (v32 + 24);
      *(v32 + 2) = v8;
      goto LABEL_43;
    }

    v34 = *(v3 + 184);
    v35 = v32 - v34;
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v34) >> 3);
    v37 = v36 + 1;
    if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_47;
    }

    v38 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v34) >> 3);
    if (2 * v38 > v37)
    {
      v37 = 2 * v38;
    }

    if (v38 >= 0x555555555555555)
    {
      v39 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v39);
    }

    v40 = 24 * v36;
    *v40 = v45;
    *(v40 + 8) = v11;
    *(v40 + 16) = v8;
    v33 = 24 * v36 + 24;
    v41 = v40 - v35;
    memcpy((v40 - v35), v34, v35);
    v42 = *(v3 + 184);
    *(v3 + 184) = v41;
    *(v3 + 192) = v33;
    *(v3 + 200) = 0;
    if (v42)
    {
      operator delete(v42);
    }

LABEL_43:
    *(v3 + 192) = v33;
LABEL_44:
    ++v5;
    v4 = this[8];
  }

  while (v5 < (this[9] - v4) >> 4);
LABEL_45:
  Selection::Normalize((v3 + 168));
  return v3;
}

void sub_1841CD804(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id PageLayout::CreateAttributedStringForStringRanges(uint64_t a1, uint64_t a2)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v4 = getkCTFontAttributeNameSymbolLoc(void)::ptr;
  v49 = getkCTFontAttributeNameSymbolLoc(void)::ptr;
  if (!getkCTFontAttributeNameSymbolLoc(void)::ptr)
  {
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v43.__r_.__value_.__l.__size_ = 3221225472;
    v43.__r_.__value_.__r.__words[2] = ___ZL32getkCTFontAttributeNameSymbolLocv_block_invoke;
    v44 = &unk_1E6E33138;
    v45 = &v46;
    v5 = CoreTextLibrary();
    v47[3] = dlsym(v5, "kCTFontAttributeName");
    getkCTFontAttributeNameSymbolLoc(void)::ptr = *(v45[1] + 24);
    v4 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v4)
  {
    goto LABEL_33;
  }

  v40 = *v4;
  v41 = kCGPDFSelectionForegroundColorAttributeName;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v6 = getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr;
  v49 = getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr;
  if (!getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr)
  {
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v43.__r_.__value_.__l.__size_ = 3221225472;
    v43.__r_.__value_.__r.__words[2] = ___ZL42getkCTBaselineOffsetAttributeNameSymbolLocv_block_invoke;
    v44 = &unk_1E6E33138;
    v45 = &v46;
    v7 = CoreTextLibrary();
    v47[3] = dlsym(v7, "kCTBaselineOffsetAttributeName");
    getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr = *(v45[1] + 24);
    v6 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v6)
  {
LABEL_33:
    dlerror();
    abort_report_np();
    goto LABEL_34;
  }

  v39 = *v6;
  v35 = objc_alloc_init(MEMORY[0x1E696AD40]);
  range2 = [*(a1 + 56) length];
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *a2;
    v36 = *a2 + 16 * v8;
    do
    {
      v38 = v9;
      v52.location = 0;
      v52.length = range2;
      v10 = NSIntersectionRange(*v9, v52);
      if (v10.length)
      {
        v11 = objc_alloc(MEMORY[0x1E696AD40]);
        v12 = [*(a1 + 56) substringWithRange:{v10.location, v10.length}];
        v42 = [v11 initWithString:v12];

        if (v10.length >= 1)
        {
          v13 = 0;
          v14 = 8 * v10.location;
          while (1)
          {
            v15 = *(a1 + 232);
            if (v10.location + v13 >= (*(a1 + 240) - v15) >> 3)
            {
              break;
            }

            v16 = *(v15 + v14 + 8 * v13);
            v17 = *(a1 + 208);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 216) - v17) >> 3) <= v16)
            {
              break;
            }

            v18 = (v17 + 24 * v16);
            v19 = *(a1 + 280);
            if (*v18 >= ((*(a1 + 288) - v19) >> 5))
            {
              break;
            }

            v20 = (v19 + 32 * *v18);
            if (*(v20 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v43, *v20, *(v20 + 1));
            }

            else
            {
              v21 = *v20;
              v43.__r_.__value_.__r.__words[2] = *(v20 + 2);
              *&v43.__r_.__value_.__l.__data_ = v21;
            }

            LODWORD(v44) = *(v20 + 6);
            v22 = v18[1];
            v23 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
            v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23];
            v25 = *(a1 + 256);
            if (v10.location + v13 >= (*(a1 + 264) - v25) >> 3)
            {
              break;
            }

            v26 = v24;
            v27 = *(v25 + v14 + 8 * v13);
            CTFont = PageLayout::CreateCTFont(v24, v44, v22);
            v51[0] = CTFont;
            v50[0] = v40;
            v50[1] = v41;
            v29 = *(v18 + 2);
            if (v29)
            {
              CFRetain(v29);
            }

            v51[1] = v29;
            v50[2] = v39;
            v30 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
            v51[2] = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
            [v42 setAttributes:v31 range:{v13, 1}];

            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

            if (v10.length == ++v13)
            {
              goto LABEL_27;
            }
          }

LABEL_34:
          __break(1u);
        }

LABEL_27:
        [v35 appendAttributedString:v42];
      }

      v9 = v38 + 1;
    }

    while (&v38[1] != v36);
  }

  if ([v35 length])
  {
    v32 = [v35 string];
    v33 = [v32 characterAtIndex:{objc_msgSend(v35, "length") - 1}] == 10;

    if (v33)
    {
      [v35 deleteCharactersInRange:{objc_msgSend(v35, "length") - 1, 1}];
    }
  }

  return v35;
}

void sub_1841CDD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

id PageLayout::CreateAttributedStringForTableSelection(uint64_t a1, unint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2 + 1;
  v6 = a2 + 3;
  if (a2[1] == a2[3] && a2[2] == a2[4])
  {
    PageLayoutTable::getCellAtCoordinates(*(v4 + 120), *(v4 + 128), v5);
    if (v7)
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      v19[0] = &__p;
      v8 = *(v7 + 72);
      v9 = *(v7 + 80);
      if (v8 == v9)
      {
        v11 = 0;
        v10 = 0;
      }

      else
      {
        do
        {
          std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](v19, *v8);
          v8 += 2;
        }

        while (v8 != v9);
        v10 = __p;
        v11 = v21;
      }

      v19[0] = v10;
      v19[1] = (v11 - v10) >> 4;
      AttributedStringForStringRanges = PageLayout::CreateAttributedStringForStringRanges(a1, v19);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
    __p = v12;
    v19[0] = *(*a2 + 32);
    PageLayoutTable::getCellAtCoordinates(*(v4 + 120), *(v4 + 128), v5);
    v14 = v13;
    PageLayoutTable::getCellAtCoordinates(*(v4 + 120), *(v4 + 128), v6);
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v23 = 0;
      operator new();
    }

    AttributedStringForStringRanges = 0;
  }

  return AttributedStringForStringRanges;
}

void sub_1841CE0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0,std::allocator<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0>,void ()(PageLayoutTable::TableCell *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZNK10PageLayout39CreateAttributedStringForTableSelectionERK20TableSelectionStructE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0,std::allocator<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0>,void ()(PageLayoutTable::TableCell *)>::operator()(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(*a2 + 40);
  v7 = *(v4 + 8);
  v43 = *(v4 + 16);
  v44 = *(*a2 + 32);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  *&v59 = &v49;
  v8 = v3[9];
  v9 = v3[10];
  while (v8 != v9)
  {
    std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](&v59, *v8);
    v8 += 2;
  }

  __p = 0;
  v47 = 0;
  v48 = 0;
  p_p = &__p;
  if (*(v5 + 40))
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    exception_object = v6;
    v11 = v49;
    v12 = v50;
    while (v11 != v12)
    {
      v13 = v11[1];
      if (v13 >= 1)
      {
        v14 = *v11;
        v15 = v13 + *v11;
        v17 = *(v5 + 112);
        v16 = *(v5 + 120);
        while (1)
        {
          if (v14 >= (v16 - v17) >> 3)
          {
            goto LABEL_28;
          }

          if (*(v17 + 8 * v14))
          {
            break;
          }

LABEL_21:
          if (++v14 >= v15)
          {
            goto LABEL_22;
          }
        }

        v18 = 0;
        while (1)
        {
          v19 = *(v5 + 184);
          if (v14 >= (*(v5 + 192) - v19) >> 3)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
          }

          v20 = *(v5 + 328);
          v21 = *(v5 + 336);
          if (v20 == v21)
          {
            v23 = *(v5 + 328);
          }

          else
          {
            v22 = *(v19 + 8 * v14) + v18;
            v23 = *(v5 + 328);
            while (*v23 != v22)
            {
              if (++v23 == v21)
              {
                v23 = *(v5 + 336);
                break;
              }
            }
          }

          [v10 addIndex:v23 - v20];
          v17 = *(v5 + 112);
          v16 = *(v5 + 120);
          if (v14 >= (v16 - v17) >> 3)
          {
            break;
          }

          if (++v18 >= *(v17 + 8 * v14))
          {
            goto LABEL_21;
          }
        }

LABEL_28:
        std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
      }

LABEL_22:
      v11 += 2;
    }

    *&v59 = 0;
    *(&v59 + 1) = &v59;
    v60 = 0x4012000000;
    v61 = __Block_byref_object_copy__413;
    v62 = __Block_byref_object_dispose__414;
    v63 = "";
    v64 = xmmword_18439C770;
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = ___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__16vectorI7CFRangeNS1_9allocatorIS3_EEEENS1_20back_insert_iteratorIS6_EEEEvOT_OT0__block_invoke;
    v55 = &unk_1E6E317D0;
    v56 = &v59;
    v57 = v5;
    p_p_p = &p_p;
    [v10 enumerateRangesUsingBlock:&v52];
    if (*(*(&v59 + 1) + 48) != -1)
    {
      std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](&p_p, (*(&v59 + 1) + 48));
    }

    _Block_object_dispose(&v59, 8);

    v6 = exception_object;
  }

  else
  {
    v24 = v49;
    v25 = v50;
    while (v24 != v25)
    {
      v26 = *v24;
      v27 = *(v5 + 184);
      v28 = (*(v5 + 192) - v27) >> 3;
      if (v28 <= *v24)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
      }

      v29 = v24[1] + v26;
      if (v28 <= v29)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
      }

      v30 = *(v27 + 8 * v26);
      v31 = *(v27 + 8 * v29) - v30;
      *&v59 = v30;
      *(&v59 + 1) = v31;
      std::vector<PDFXRefTableEntry>::push_back[abi:fe200100](p_p, &v59);
      v24 += 2;
    }
  }

  *&v59 = __p;
  *(&v59 + 1) = (v47 - __p) >> 4;
  AttributedStringForStringRanges = PageLayout::CreateAttributedStringForStringRanges(v5, &v59);
  v33 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:AttributedStringForStringRanges];
  v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v33 appendAttributedString:v34];

  v35 = [v33 length];
  v52 = @"tableID";
  v36 = [MEMORY[0x1E696AD98] numberWithLong:**(a1 + 24)];
  *&v59 = v36;
  v53 = @"startingRow";
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:v44 - v7];
  *(&v59 + 1) = v37;
  v54 = @"rowSpan";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3[6]];
  v60 = v38;
  v55 = @"startingColumn";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v6 - v43];
  v61 = v39;
  v56 = @"columnSpan";
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3[7]];
  v62 = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v52 count:5];

  [v33 addAttribute:@"CGPDFTableCell" value:v41 range:{0, v35}];
  [**(a1 + 32) appendAttributedString:v33];

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

uint64_t *___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__16vectorI7CFRangeNS1_9allocatorIS3_EEEENS1_20back_insert_iteratorIS6_EEEEvOT_OT0__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 40);
  v7 = a2 + a3;
  result = [*(v6 + 56) length];
  if (v7 < result)
  {
    result = [*(v6 + 56) characterAtIndex:v7];
    if (result == 10)
    {
      ++v3;
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 48);
  if (v10 != -1)
  {
    v11 = *(v9 + 56);
    if (v11 + v10 == a2)
    {
      *(v9 + 56) = v11 + v3;
      return result;
    }

    result = std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](*(a1 + 48), (v9 + 48));
    v9 = *(*(a1 + 32) + 8);
  }

  *(v9 + 48) = a2;
  *(v9 + 56) = v3;
  return result;
}

__n128 std::__function::__func<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0,std::allocator<PageLayout::CreateAttributedStringForTableSelection(TableSelectionStruct const&)::$_0>,void ()(PageLayoutTable::TableCell *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF23DBE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *___ZL32getkCTFontAttributeNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontAttributeNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreTextLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19CoreTextLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E2D690;
    v5 = 0;
    CoreTextLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreTextLibraryCore(char **)::frameworkLibrary;
    if (CoreTextLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return CoreTextLibraryCore(char **)::frameworkLibrary;
}

void *___ZL42getkCTBaselineOffsetAttributeNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTBaselineOffsetAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PageLayout::CreateCTFont(PageLayout *this, NSString *a2, double a3)
{
  v3 = a2;
  v5 = this;
  if ([(PageLayout *)v5 length]>= 8 && [(PageLayout *)v5 characterAtIndex:6]== 43)
  {
    v7 = [(PageLayout *)v5 substringFromIndex:7];

    v5 = v7;
  }

  v8 = CTFontCreateWithNameLocal(v5, a3, v6);
  if (!v8)
  {
    v9 = [&unk_1EF254770 objectForKey:v5];
    v11 = @"Monaco";
    if (v3)
    {
      v12 = @"Courier";
    }

    else
    {
      v11 = @"Helvetica";
      v12 = @"Times";
    }

    if ((v3 & 2) != 0)
    {
      v11 = v12;
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v11;
    }

    v8 = CTFontCreateWithNameLocal(v13, a3, v10);
  }

  return v8;
}

void sub_1841CEBFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t CTFontCreateWithNameLocal(const __CFString *a1, double a2, const CGAffineTransform *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getCTFontCreateWithNameSymbolLoc(void)::ptr;
  v12 = getCTFontCreateWithNameSymbolLoc(void)::ptr;
  if (!getCTFontCreateWithNameSymbolLoc(void)::ptr)
  {
    v6 = CoreTextLibrary();
    v10[3] = dlsym(v6, "CTFontCreateWithName");
    getCTFontCreateWithNameSymbolLoc(void)::ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v5)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  return v5(a1, 0, a2);
}

void *___ZL32getCTFontCreateWithNameSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCreateWithNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19CoreTextLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreTextLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void std::vector<CFRange>::__vallocate[abi:fe200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void PageLayout::GetBoundsForRangeWithinLine(void *a1, uint64_t a2, unint64_t a3, unint64_t LineIndex, char a5)
{
  v5 = a1[17];
  v6 = (a1[18] - v5) >> 5;
  if (v6 >= a2 && (a2 + a3) <= v6)
  {
    v9 = v6 >= a2;
    v10 = v6 - a2;
    if (!v9)
    {
      goto LABEL_21;
    }

    if (a3 == -1)
    {
      a3 = v10;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 < a3)
      {
LABEL_21:
        __break(1u);
        return;
      }

      if (a3)
      {
LABEL_11:
        v14 = (v5 + 32 * a2);
        v15 = &v14[a3];
        width = 0.0;
        x = INFINITY;
        y = INFINITY;
        height = 0.0;
        do
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          v25 = CGRectUnion(v24, *v14);
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
          ++v14;
        }

        while (v14 != v15);
        if (a5)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
    if (a5)
    {
LABEL_14:
      v20 = a1[8];
      v21 = a1[9];
      goto LABEL_18;
    }

LABEL_17:
    v20 = a1[8];
    v21 = a1[9];
    LineIndex = PageLayout::getLineIndex(v20, v21, a2);
LABEL_18:
    if (LineIndex < (v21 - v20) >> 4)
    {
      v22 = __sincos_stret(*(*(v20 + 2 * LineIndex) + 56));
      v23.a = v22.__cosval;
      v23.b = v22.__sinval;
      v23.c = -v22.__sinval;
      v23.d = v22.__cosval;
      v23.tx = 0.0;
      v23.ty = 0.0;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      CGRectApplyAffineTransform(v26, &v23);
    }
  }
}

void PageLayout::GetBoundsForTextRange(PageLayout *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = *(this + 8);
  v6 = *(this + 9);
  LineIndex = PageLayout::getLineIndex(v5, v6, a2.location);
  v8 = (v6 - v5) >> 4;
  if (v8 <= LineIndex)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = LineIndex;
  v10 = length + location;
  v11 = *(*(v5 + 2 * LineIndex) + 8) + **(v5 + 2 * LineIndex);
  if (length + location > v11)
  {
    v12 = v8 - 1;
    v13 = (v5 + 16 * LineIndex + 16);
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
    while (1)
    {
      v18 = v11;
      PageLayout::GetBoundsForRangeWithinLine(this, location, v11 - location, v9, 1);
      if (v12 == v9)
      {
        goto LABEL_11;
      }

      v39.origin.x = v19;
      v39.origin.y = v20;
      v39.size.width = v21;
      v39.size.height = v22;
      ++v9;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v38 = CGRectUnion(v37, v39);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      v23 = *v13;
      v13 += 2;
      v11 = v23[1] + *v23;
      location = v18;
      if (v10 <= v11)
      {
        length = v10 - v18;
        location = v18;
        goto LABEL_8;
      }
    }
  }

  height = 0.0;
  y = INFINITY;
  width = 0.0;
  x = INFINITY;
LABEL_8:
  PageLayout::GetBoundsForRangeWithinLine(this, location, length, v9, 1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;

  CGRectUnion(*&v32, *&v25);
}

void ___ZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectE_block_invoke(double *a1)
{
  v2 = *(a1 + 5);
  os_unfair_lock_lock((v2 + 432));
  *(v2 + 436) = 1;
  v14 = v2;
  v3 = CGPDFLayoutCreateWithPage(*v2);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 13);
  }

  else
  {
    v5 = 0;
  }

  _ZZZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectEEUb_ENK3__5clIRS7_EEDaP9CGPDFNodeOT_(&v14, v5, &v14);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a1 + 4);
  v7 = *(a1 + 6);
  v8 = *(v7 + 440);
  v9 = *(v7 + 448);
  if (v8 == v9)
  {
    v13 = &CGRectNull;
  }

  else
  {
    v10 = 0;
    v11 = a1[7];
    v12 = a1[8];
    do
    {
      v16.x = v11;
      v16.y = v12;
      if (CGRectContainsPoint(*v8, v16) && (!v10 || *(v8 + 32) >= *(v10 + 32)))
      {
        v10 = v8;
      }

      v8 += 40;
    }

    while (v8 != v9);
    v13 = &CGRectNull;
    if (v10)
    {
      v13 = v10;
    }
  }

  (*(v6 + 16))(v6, v13->origin.x, v13->origin.y, v13->size.width, v13->size.height);

  os_unfair_lock_unlock((v2 + 432));
}

void _ZZZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectEEUb_ENK3__5clIRS7_EEDaP9CGPDFNodeOT_(void *a1, __n64 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    if (a2->n64_u32[0] == 515)
    {
      v4 = *a1;
      v5.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
      while ((v3->n64_u8[1] & 3) == 0)
      {
        v3 = v3[1].n64_u64[0];
        if (!v3)
        {
          v9 = 0;
          goto LABEL_17;
        }
      }

      v9 = v3[12].n64_u64[0];
LABEL_17:
      v14 = v4[56];
      v15 = v4[57];
      if (v14 >= v15)
      {
        v17 = v4[55];
        v18 = v14 - v17;
        v19 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v17) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0x666666666666666)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v17) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x333333333333333)
        {
          v22 = 0x666666666666666;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v23 = 40 * v19;
        *v23 = v5;
        *(v23 + 8) = v6;
        *(v23 + 16) = v7;
        *(v23 + 24) = v8;
        *(v23 + 32) = v9;
        v16 = 40 * v19 + 40;
        v24 = (v23 - v18);
        memcpy((v23 - v18), v17, v18);
        v4[55] = v24;
        v4[56] = v16;
        v4[57] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        v14->n64_u64[0] = v5.n64_u64[0];
        v14[1].n64_u64[0] = v6.n64_u64[0];
        v14[2].n64_u64[0] = v7.n64_u64[0];
        v14[3].n64_u64[0] = v8.n64_u64[0];
        v16 = &v14[5];
        v14[4].n64_u64[0] = v9;
      }

      v4[56] = v16;
    }

    else if ((a2->n64_u32[0] & 0x200) != 0)
    {
      v10 = a2[5].n64_u32[1];
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          if ((v3->n64_u8[1] & 2) != 0 && i < v3[5].n64_u32[1])
          {
            v13 = *(v3[7].n64_u64[0] + 8 * i);
          }

          else
          {
            v13 = 0;
          }

          _ZZZN10PageLayout36GetColumnBoundsAtPointWithCompletionE7CGPointPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFv6CGRectEEUb_ENK3__5clIRS7_EEDaP9CGPDFNodeOT_(a3, v13, a3);
        }
      }
    }
  }
}

BOOL std::operator==[abi:fe200100]<CGRect,std::allocator<CGRect>>(CGRect *a1, CGRect *a2, CGRect *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = CGRectEqualToRect(*v5++, *v6++);
  }

  while (result && v5 != a2);
  return result;
}

uint64_t std::operator==[abi:fe200100]<std::pair<std::string,unsigned int>,std::allocator<std::pair<std::string,unsigned int>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = a3 + v7;
    v9 = a1 + v7;
    v10 = *(a1 + v7 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + v7 + 23);
    }

    else
    {
      v11 = *(a1 + v7 + 8);
    }

    v12 = *(v8 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 8);
    }

    if (v11 != v12)
    {
      break;
    }

    v14 = v10 >= 0 ? (a1 + v7) : *v9;
    v15 = v13 >= 0 ? (a3 + v7) : *v8;
    if (memcmp(v14, v15, v11) || *(v9 + 24) != *(v8 + 24))
    {
      break;
    }

    v7 += 32;
    if (a1 + v7 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void PageLayout::getWordsInLine(PageLayout *this, const TextLine *a2, unint64_t *a3)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = __Block_byref_object_copy__11843;
  v45 = __Block_byref_object_dispose__11844;
  v46 = "";
  v48 = 0;
  v49 = 0;
  __p = 0;
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  memset(v40, 0, sizeof(v40));
  if (v5 < 1)
  {
LABEL_9:
    v13 = 0;
    v14 = *(a2 + 11) + 2 * v7;
  }

  else
  {
    v8 = v5 + v6;
    v9 = *(a2 + 14);
    v10 = *(a2 + 15) - v9;
    if (v6 <= v10 >> 3)
    {
      v11 = v10 >> 3;
    }

    else
    {
      v11 = v6;
    }

    v12 = v6;
    while (1)
    {
      if (v11 == v12)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
      }

      if (*(v9 + 8 * v12) != 1)
      {
        break;
      }

      if (++v12 >= v8)
      {
        goto LABEL_9;
      }
    }

    std::vector<unsigned short>::resize(v40, v5);
    v13 = v40[0];
    v15 = *(a2 + 11);
    v16 = *(a2 + 12) - v15;
    if (v7 < v16 >> 1)
    {
      v17 = 0;
      v18 = v16 >> 1;
      v19 = *(a2 + 14);
      v20 = (*(a2 + 15) - v19) >> 3;
      v21 = v20 >= v6;
      v22 = v20 - v6;
      if (!v21)
      {
        v22 = 0;
      }

      while (1)
      {
        if (v22 == v17)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

        v23 = *(v19 + 8 * v6 + 8 * v17);
        v24 = v6 + 1 + v17;
        if (v23 != 2 || v24 >= v8)
        {
          if (v18 <= v7)
          {
            goto LABEL_40;
          }

          v26 = *(v15 + 2 * v7);
          goto LABEL_20;
        }

        if (v18 <= v7)
        {
          goto LABEL_40;
        }

        if (*(v15 + 2 * v7) != 102)
        {
          goto LABEL_27;
        }

        if (v18 <= v7 + 1)
        {
LABEL_40:
          std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
        }

        v27 = *(v15 + 2 * (v7 + 1));
        if (v27 == 105)
        {
          break;
        }

        if (v27 == 108)
        {
          v26 = -1278;
LABEL_20:
          v13[v17] = v26;
        }

LABEL_27:
        if (v24 < v8)
        {
          v7 += v23;
          ++v17;
          if (v7 < v18)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v26 = -1279;
      goto LABEL_20;
    }

LABEL_31:
    v14 = v13;
  }

  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v14 length:v5];
  v29 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v30 = [v28 length];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___ZNK10PageLayout14getWordsInLineEPK8TextLine_block_invoke;
  v36[3] = &unk_1E6E2D630;
  v31 = v28;
  v37 = v31;
  v32 = v29;
  v38 = v32;
  v39 = &v41;
  [v31 enumerateSubstringsInRange:0 options:v30 usingBlock:{515, v36}];

  if (v13)
  {
    operator delete(v13);
  }

  v33 = v42;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v35 = v33[6];
  v34 = v33[7];
  if (v34 != v35)
  {
    std::vector<CFRange>::__vallocate[abi:fe200100](this, (v34 - v35) >> 4);
  }

  _Block_object_dispose(&v41, 8);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }
}

void sub_1841CF954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (a17)
  {
    operator delete(a17);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1841CF8C4);
  }

  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11843(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__11844(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZNK10PageLayout14getWordsInLineEPK8TextLine_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [*(a1 + 32) rangeOfCharacterFromSet:*(a1 + 40) options:4 range:?];
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{a5, a6}];
    [v13 removeIndexesInRange:{v11, v12}];
    if ([v13 rangeCount])
    {
      a5 = [v13 rangeAtIndex:0];
      a6 = v14;
    }
  }

  if (a6)
  {
    v15 = *(*(a1 + 48) + 8);
    *&v16 = a5;
    *(&v16 + 1) = a6;
    std::vector<PDFXRefTableEntry>::push_back[abi:fe200100](v15 + 48, &v16);
  }
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(__n);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void *std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

void ***std::unique_ptr<PB::Data>::reset[abi:fe200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x1865EE610);
  }

  return result;
}

const void **applesauce::CF::ObjectRef<CGColor *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGColorTransform const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGColorSpace *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__copy_impl::operator()[abi:fe200100]<unsigned long const*,unsigned long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *v5;
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = v6 - *a3;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v14);
        }

        *(8 * v11) = v7;
        v6 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::default_delete<std::string>::operator()[abi:fe200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x1865EE610);
}

uint64_t std::__split_buffer<std::unique_ptr<PBPageLayoutPkg::PBTextLine>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fe200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v12);
    }

    v13 = (4 * (v9 >> 2));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

double *PageLayout::addHorzEdge(double *result, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a5, a3) <= 0.000000001)
  {
    if (a4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    if (a4 >= a2)
    {
      a2 = a4;
    }

    v15[0] = v6;
    v15[1] = a2;
    v7 = *(result + 1);
    if (v7)
    {
      v8 = result + 1;
      do
      {
        v9 = v7[4];
        if (v9 >= a3)
        {
          v8 = v7;
        }

        v7 = *&v7[v9 < a3];
      }

      while (v7);
      if (v8 != result + 1 && vabdd_f64(v8[4], a3) <= 1.0)
      {
        v10 = v8 + 5;
        return PageLayout::insertSpan(v10, v15);
      }
    }

    else
    {
      v8 = result + 1;
    }

    if (v8 == *result)
    {
      goto LABEL_22;
    }

    v11 = *v8;
    if (*v8)
    {
      do
      {
        v12 = *&v11;
        v11 = *(*&v11 + 8);
      }

      while (v11 != 0.0);
    }

    else
    {
      do
      {
        v12 = *(v8 + 2);
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (v13);
    }

    if (vabdd_f64(v12[4], a3) >= 1.0)
    {
LABEL_22:
      std::list<Span>::list(&v14);
    }

    v10 = v12 + 5;
    return PageLayout::insertSpan(v10, v15);
  }

  return result;
}

void sub_1841D0374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned long>::clear(v2);
  std::__list_imp<unsigned long>::clear(va);
  _Unwind_Resume(a1);
}

double *PageLayout::insertSpan(double *a1, double *a2)
{
  if (!*(a1 + 2))
  {
LABEL_17:
    operator new();
  }

  v3 = a2 + 1;
  v4 = a2[1];
  v5 = *a2;
  v6 = a1;
  do
  {
    v6 = *(v6 + 1);
    if (v6 == a1)
    {
      goto LABEL_17;
    }

    v7 = v6[2];
    if (v4 < v7)
    {
      operator new();
    }

    v8 = v6[3];
  }

  while (v5 > v8 + 0.000000001);
  if (v7 >= v5)
  {
    v9 = a2;
  }

  else
  {
    v9 = v6 + 2;
  }

  v10 = *v9;
  if (v4 < v8)
  {
    v3 = v6 + 3;
  }

  v11 = *v3;
  *(v6 + 2) = v10;
  v6[3] = v11;
  result = *(v6 + 1);
  if (result != a1)
  {
    do
    {
      if (v11 + 0.000000001 < result[2])
      {
        break;
      }

      if (v11 < result[3])
      {
        v11 = result[3];
      }

      v13 = *result;
      v14 = *(result + 1);
      *(*&v13 + 8) = v14;
      *v14 = v13;
      --*(a1 + 2);
      operator delete(result);
      *(v6 + 2) = v10;
      v6[3] = v11;
      result = v14;
    }

    while (v14 != a1);
  }

  return result;
}

void std::list<Span>::list(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  operator new();
}

uint64_t std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::__emplace_unique_key_args<double,std::pair<double const,std::list<Span>>>(uint64_t result, double a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 4);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::list<Span>::splice(void *result, uint64_t *a2, void *a3)
{
  if (result == a3)
  {
    __break(1u);
  }

  else
  {
    v3 = a3[2];
    if (v3)
    {
      v5 = *a3;
      v4 = a3[1];
      v6 = *(*a3 + 8);
      v7 = *v4;
      *(v7 + 8) = v6;
      *v6 = v7;
      v8 = *a2;
      *(v8 + 8) = v4;
      *v4 = v8;
      *a2 = v5;
      *(v5 + 8) = a2;
      result[2] += v3;
      a3[2] = 0;
    }
  }

  return result;
}

double *PageLayout::addVertEdge(double *result, double a2, double a3, double a4, double a5)
{
  if (vabdd_f64(a4, a2) <= 0.000000001)
  {
    if (a5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a5;
    }

    if (a5 >= a3)
    {
      a3 = a5;
    }

    v15[0] = v6;
    v15[1] = a3;
    v7 = *(result + 1);
    if (v7)
    {
      v8 = result + 1;
      do
      {
        v9 = v7[4];
        if (v9 >= a2)
        {
          v8 = v7;
        }

        v7 = *&v7[v9 < a2];
      }

      while (v7);
      if (v8 != result + 1 && vabdd_f64(v8[4], a2) <= 1.0)
      {
        v10 = v8 + 5;
        return PageLayout::insertSpan(v10, v15);
      }
    }

    else
    {
      v8 = result + 1;
    }

    if (v8 == *result)
    {
      goto LABEL_22;
    }

    v11 = *v8;
    if (*v8)
    {
      do
      {
        v12 = *&v11;
        v11 = *(*&v11 + 8);
      }

      while (v11 != 0.0);
    }

    else
    {
      do
      {
        v12 = *(v8 + 2);
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (v13);
    }

    if (vabdd_f64(v12[4], a2) >= 1.0)
    {
LABEL_22:
      std::list<Span>::list(&v14);
    }

    v10 = v12 + 5;
    return PageLayout::insertSpan(v10, v15);
  }

  return result;
}

void sub_1841D0844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned long>::clear(v2);
  std::__list_imp<unsigned long>::clear(va);
  _Unwind_Resume(a1);
}

void PageLayout::insertTableFromAnalysis(id **this, const __CFArray *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  if (TextRecognitionLibraryCore(0))
  {
    v68 = this;
    if (*this)
    {
      v4 = (*this)[2];
    }

    else
    {
      v4 = 0;
    }

    IsTaggedPDF = CGPDFDocumentIsTaggedPDF(v4);
    BoxRect = CGPDFPageGetBoxRect(*this, kCGPDFCropBox);
    v93 = BoxRect;
    memset(&v92, 0, sizeof(v92));
    *&v99.a = vmulq_n_f64(xmmword_18439C630, BoxRect.size.width);
    *&v99.c = vmulq_n_f64(xmmword_18439C780, -BoxRect.size.height);
    v99.tx = BoxRect.origin.x;
    v99.ty = BoxRect.origin.y + BoxRect.size.height;
    CGAffineTransformInvert(&v92, &v99);
    v91 = [objc_alloc(getCRCTLDClass()) init];
    v90 = PageLayout::createAtomicElements(this, 0);
    v89 = 0;
    v88 = 0;
    v87 = &v88;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = a2;
    v63 = [(__CFArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (v63)
    {
      v64 = *v84;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          if (*v84 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v83 + 1) + 8 * i);
          v5 = [v65 objectForKeyedSubscript:@"Rows"];
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          rect = v5;
          v6 = [rect countByEnumeratingWithState:&v79 objects:v96 count:16];
          if (v6)
          {
            v7 = *v80;
            do
            {
              for (j = 0; j != v6; ++j)
              {
                if (*v80 != v7)
                {
                  objc_enumerationMutation(rect);
                }

                v9 = *(*(&v79 + 1) + 8 * j);
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v78 = 0u;
                v10 = v9;
                v11 = [v10 countByEnumeratingWithState:&v75 objects:v95 count:16];
                if (v11)
                {
                  v12 = *v76;
                  do
                  {
                    for (k = 0; k != v11; ++k)
                    {
                      if (*v76 != v12)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v14 = *(*(&v75 + 1) + 8 * k);
                      v15 = [v14 objectForKeyedSubscript:@"Rect"];
                      [v15 rectValue];
                      v17 = v16;
                      v19 = v18;
                      v21 = v20;
                      v23 = v22;

                      if (v21 < 0.0 || v23 < 0.0)
                      {
                        v102.origin.x = v17;
                        v102.origin.y = v19;
                        v102.size.width = v21;
                        v102.size.height = v23;
                        v103 = CGRectStandardize(v102);
                        v24 = v103.origin.x + v103.size.width;
                        v103.origin.x = v17;
                        v103.origin.y = v19;
                        v103.size.width = v21;
                        v103.size.height = v23;
                        *(&v25 - 1) = CGRectStandardize(v103);
                        v23 = v26;
                      }

                      else
                      {
                        v24 = v17 + v21;
                        v25 = v19;
                      }

                      v27 = v25 + v23;
                      PageLayout::addVertEdge(&v87, v17, v19, v17, v27);
                      PageLayout::addVertEdge(&v87, v24, v19, v24, v27);
                    }

                    v11 = [v10 countByEnumeratingWithState:&v75 objects:v95 count:16];
                  }

                  while (v11);
                }
              }

              v6 = [rect countByEnumeratingWithState:&v79 objects:v96 count:16];
            }

            while (v6);
          }
        }

        v63 = [(__CFArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
      }

      while (v63);
    }

    v74[0] = 0;
    v74[1] = 0;
    v73 = v74;
    if (!v89 || (PageLayout::splitLines(v68, 1, &v87), v28 = v73, v73 == v74))
    {
LABEL_44:
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v61 = obj;
      if ([(__CFArray *)v61 countByEnumeratingWithState:v70 objects:v94 count:16])
      {
        **(&v70[0] + 1);
        operator new();
      }

      if (!IsTaggedPDF)
      {
        v53 = objc_alloc_init(PDFCTLDDelegateForTables);
        v54 = v90;
        v55 = [*(v68 + 47) boundingQuad];
        [v55 boundingBox];
        v60 = PageLayout::getOrderedLayout(v68, v54, v53, v56, v57, v58, v59);
      }

      std::__tree<unsigned long>::destroy(v74[0]);
      std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(v88);
    }

    else
    {
      while (1)
      {
        v29 = v28[4];
        v30 = *(v68 + 8);
        if (v29 >= (*(v68 + 9) - v30) >> 4)
        {
          break;
        }

        v31 = (v30 + 16 * v29);
        v104 = *(*v31 + 24);
        v99 = v92;
        v105 = CGRectApplyAffineTransform(v104, &v99);
        x = v105.origin.x;
        y = v105.origin.y;
        width = v105.size.width;
        height = v105.size.height;
        v36 = objc_alloc(getCRNormalizedQuadClass());
        v37 = [v36 initWithNormalizedBoundingBox:x size:{y, width, height, v93.size.width, v93.size.height}];
        v38 = [[PDFTextLineElement alloc] initWithTextLine:v31 boundingBox:v37];
        [v90 addObject:v38];
        PageLayout::addTextLineToAtomicElementMapping(v68, *v31, &v38->super);
        v39 = v28[4] - 1;
        v40 = *(v68 + 8);
        if (v39 >= (*(v68 + 9) - v40) >> 4)
        {
          break;
        }

        v41 = (v40 + 16 * v39);
        LODWORD(v98) = *(*v41 + 64);
        *&v99.a = &v98;
        v42 = std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v68 + 49, v98)[3];
        v106 = *(*v41 + 24);
        v99 = v92;
        v107 = CGRectApplyAffineTransform(v106, &v99);
        v43 = v107.origin.x;
        v44 = v107.origin.y;
        v45 = v107.size.width;
        v46 = v107.size.height;
        v47 = objc_alloc(getCRNormalizedQuadClass());
        v48 = [v47 initWithNormalizedBoundingBox:v43 size:{v44, v45, v46, v93.size.width, v93.size.height}];

        v49 = *v41;
        v72 = v49;
        if (*(&v49 + 1))
        {
          atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        [v42 setTextLine:&v72];
        if (*(&v72 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v72 + 1));
        }

        [v42 setBoundingQuad:v48];

        v50 = v28[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v28[2];
            v52 = *v51 == v28;
            v28 = v51;
          }

          while (!v52);
        }

        v28 = v51;
        if (v51 == v74)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
    }
  }
}

void sub_1841D27E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  std::__tree<unsigned long>::destroy(a49);
  std::__tree<std::__value_type<double,std::list<Span>>,std::__map_value_compare<double,std::__value_type<double,std::list<Span>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::list<Span>>>>::destroy(STACK[0x220]);

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1841D2D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,void *>>>>::~unique_ptr[abi:fe200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0,std::allocator<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0>,void ()(PageLayoutTable::TableCell *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "ZN10PageLayout23insertTableFromAnalysisEPK9__CFArrayE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0,std::allocator<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0>,void ()(PageLayoutTable::TableCell *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v22 = *a2;
  v23 = objc_opt_new();
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<std::shared_ptr<TextLine>>::__init_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(&v34, *(v22 + 72), *(v22 + 80), (*(v22 + 80) - *(v22 + 72)) >> 4);
  v4 = v34;
  for (i = v35; v4 != i; v4 += 16)
  {
    LODWORD(v33[0]) = *(*v4 + 64);
    *&v29 = v33;
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PDFAtomicElement * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v3 + 392), v33[0])[3];
    [v23 addObject:v6];
    [**(v2 + 16) removeObject:v6];
  }

  v33[0] = &v34;
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](v33);
  v7 = objc_opt_new();
  v8 = **(v2 + 24);
  v9 = PageLayout::createFineCTLDConfig(v7);
  v10 = [v8 groupAndOrderRegions:v23 config:v9 delegate:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v29 objects:&v34 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v14 subregions];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        v17 = v2;
        if (v16)
        {
          v18 = *v26;
          do
          {
            v19 = 0;
            do
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [(PageLayout *)v7 addObject:*(*(&v25 + 1) + 8 * v19++)];
            }

            while (v16 != v19);
            v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }

        v2 = v17;
        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v29 objects:&v34 count:16];
    }

    while (v11);
  }

  v20 = [objc_alloc(getCRNormalizedQuadClass()) initWithNormalizedBoundingBox:*v22 size:{*(v22 + 8), *(v22 + 16), *(v22 + 24), *(*(v2 + 40) + 16), *(*(v2 + 40) + 24)}];
  v21 = [[PDFCRGroupRegionCell alloc] initWithBoundingQuad:v20 layoutDirection:1 subregions:v7 parent:0 groupID:**(v2 + 48) rowIndex:*(v22 + 32) colIndex:*(v22 + 40) rowSpan:*(v22 + 48) colSpan:*(v22 + 56)];
  [**(v2 + 56) addObject:v21];
}

__n128 std::__function::__func<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0,std::allocator<PageLayout::insertTableFromAnalysis(__CFArray const*)::$_0>,void ()(PageLayoutTable::TableCell *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF23DD30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::vector<std::vector<std::shared_ptr<PageLayoutTable::TableCell>>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<PageLayoutTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF23DCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t cmyk64_sample_CMYKf(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 40);
  v15 = *(result + 176);
  v87 = *(result + 80);
  v88 = *(result + 88);
  v100 = *(result + 120);
  v101 = *(result + 112);
  v16 = *(result + 152) - 16;
  v91 = *(result + 144) - 1;
  v17 = *(result + 260) - 1;
  v98 = *(result + 24);
  v96 = *(result + 32);
  v18 = *(result + 256);
  v93 = *(result + 28);
  v94 = v14 + (v17 * v93) + 4 * (v18 - 1);
  v86 = *(result + 188);
  v99 = v96 + (v17 * v98) + 4 * (4 * v18) - 16;
  v89 = *(result + 72);
  v90 = *(result + 64);
  v95 = v14;
  v97 = result;
  while (1)
  {
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v22 = a4;
        v23 = v90;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v88;
        v27 = v26 - a3 + (v25 >> 1);
        v22 = a4;
        v23 = v90;
        if (v27 < 1)
        {
          goto LABEL_37;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v30 = v86 | v28;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v89 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      v23 = v90;
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      if (v21 >= v19)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v21) >> 32;
      }

      v30 = v86 | v24;
      v31 = v20 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v23)
    {
      if (a2 <= v87)
      {
        v36 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v87;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_37;
        }

        if (v39 < v37)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v86;
        }

        v35 = v38 - 0x1000000;
        v36 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v23 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_37;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v86;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v49 = v22 - 1;
    a2 += v101;
    a3 += v100;
    v16 += 16;
    *++v91 = 0;
LABEL_38:
    a4 = v49;
    if (!v49)
    {
      return result;
    }
  }

  v40 = v31 >> 32;
  v41 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = v96 + SHIDWORD(v31) * v98 + 4 * v41;
  v43 = *(result + 32);
  v44 = v99;
  if (v99 >= v42)
  {
    v44 = v42;
  }

  if (v44 < v43)
  {
    v44 = *(result + 32);
  }

  if (v14)
  {
    v45 = v14 + v40 * v93 + v41;
    v46 = *(result + 40);
    v47 = v94;
    v92 = v45;
    if (v94 >= v45)
    {
      v47 = v45;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = *v46;
  }

  else
  {
    v92 = 0;
    v48 = 1.0;
  }

  v50 = *v44;
  if (v15)
  {
    v51 = *(v15 + (v36 | v29));
LABEL_62:
    v62 = v51 & 0xF;
    v63 = HIBYTE(v51) & 3;
    if (v62 == 1)
    {
      v83 = (v42 + SBYTE1(v51) * v98);
      if (v99 < v83)
      {
        v83 = v99;
      }

      if (v83 >= v43)
      {
        v43 = v83;
      }

      v79 = *v43;
      v80 = 1.0;
      if (v14)
      {
        v84 = (v92 + SBYTE1(v51) * v93);
        if (v94 < v84)
        {
          v84 = v94;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v80 = *v84;
      }

      v82 = &interpolate_cmykaf[5 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = HIWORD(v51) << 56;
          v65 = (v42 + (v64 >> 52));
          if (v99 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v99;
          }

          if (v66 < v43)
          {
            v66 = v43;
          }

          v67 = (v65 + SBYTE1(v51) * v98);
          if (v99 < v67)
          {
            v67 = v99;
          }

          if (v67 >= v43)
          {
            v43 = v67;
          }

          v68 = *v66;
          v69 = *v43;
          v70 = 1.0;
          v71 = 1.0;
          if (v14)
          {
            v72 = v92 + (v64 >> 54);
            v73 = *(result + 40);
            if (v94 >= v72)
            {
              v74 = (v92 + (v64 >> 54));
            }

            else
            {
              v74 = v94;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v71 = *v74;
            v75 = (v72 + SBYTE1(v51) * v93);
            if (v94 < v75)
            {
              v75 = v94;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v70 = *v75;
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v63 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v51 >> 28) & 3) + 4];
          v76 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a11, 0), v68, *&a11);
          v50 = vmlaq_n_f32(vmlsq_lane_f32(v76, v76, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v68, v68, *&a11, 0), v69, *&a11), *&a12);
          v48 = (((v48 - (v48 * *&a11)) + (v71 * *&a11)) - (((v48 - (v48 * *&a11)) + (v71 * *&a11)) * *&a12)) + (((v71 - (v71 * *&a11)) + (v70 * *&a11)) * *&a12);
        }

        goto LABEL_43;
      }

      v77 = HIWORD(v51) << 56;
      v78 = (v42 + (v77 >> 52));
      if (v99 < v78)
      {
        v78 = v99;
      }

      if (v78 >= v43)
      {
        v43 = v78;
      }

      v79 = *v43;
      v80 = 1.0;
      if (v14)
      {
        v81 = (v92 + (v77 >> 54));
        if (v94 < v81)
        {
          v81 = v94;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = *v81;
      }

      v82 = &interpolate_cmykaf[5 * ((v51 >> 28) & 3)];
    }

    LODWORD(a9) = v82[4];
    v50 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a9, 0), v79, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v80 * *&a9);
  }

LABEL_43:
  v52 = 0;
  v53 = v30 >> 22;
  v16 += 16;
  v85 = v22;
  v54 = v22 - 1;
  a3 += v100;
  v55 = v88 - a3;
  a2 += v101;
  v56 = v87 - a2;
  while (1)
  {
    v102 = v50;
    v103 = v48;
    CMYKF_11865(v16, v102.f32);
    *(v91 + 1 + v52) = v53;
    result = v97;
    v14 = v95;
    if (v54 == v52)
    {
      return result;
    }

    if ((v55 | v56 | (a3 - v89) | (a2 - v90)) < 0)
    {
      v91 += v52 + 1;
      v49 = ~v52 + v85;
      goto LABEL_38;
    }

    v57 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = v96 + SHIDWORD(a3) * v98 + 4 * v57;
    v43 = *(v97 + 32);
    v58 = v99;
    if (v99 >= v42)
    {
      v58 = (v96 + SHIDWORD(a3) * v98 + 4 * v57);
    }

    if (v58 < v43)
    {
      v58 = *(v97 + 32);
    }

    if (v95)
    {
      v59 = v95 + SHIDWORD(a3) * v93 + v57;
      v60 = *(v97 + 40);
      v61 = v94;
      v92 = v59;
      if (v94 >= v59)
      {
        v61 = v59;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v48 = *v60;
    }

    else
    {
      v48 = 1.0;
    }

    v50 = *v58;
    if (v15)
    {
      v51 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v51 & 0xF) != 0)
      {
        v91 += v52 + 1;
        v22 = ~v52 + v85;
        v30 = -1;
        goto LABEL_62;
      }
    }

    ++v52;
    v16 += 16;
    a3 += v100;
    v55 -= v100;
    a2 += v101;
    v56 -= v101;
    LOBYTE(v53) = -1;
  }
}

uint64_t CMYKF_11865(uint64_t result, float *a2)
{
  v2 = a2[4];
  if (v2 <= 0.0)
  {
    LOWORD(v5) = 0;
    *result = 0;
  }

  else
  {
    v4 = *a2;
    v3 = a2[1];
    LODWORD(v5) = ((v2 * 65535.0) + 0.5);
    if (v2 <= 1.0)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0xFFFFLL;
    }

    if (v2 > 1.0)
    {
      v2 = 1.0;
    }

    LOWORD(v6) = v5;
    if (v4 <= v2)
    {
      if (v4 >= 0.0)
      {
        v6 = ((v4 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v6) = 0;
      }
    }

    v7 = a2[2];
    v8 = v5;
    if (v3 <= v2)
    {
      if (v3 >= 0.0)
      {
        v8 = ((v3 * 65535.0) + 0.5);
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = a2[3];
    LOWORD(v10) = v5;
    if (v7 <= v2)
    {
      if (v7 >= 0.0)
      {
        v10 = ((v7 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v10) = 0;
      }
    }

    v11 = v5;
    if (v9 <= v2)
    {
      if (v9 >= 0.0)
      {
        v11 = ((v9 * 65535.0) + 0.5);
      }

      else
      {
        v11 = 0;
      }
    }

    *result = (v10 << 32) | (v11 << 48) | (v8 << 16) | v6;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t cmyk64_sample_CMYKF(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 40);
  v15 = *(result + 176);
  v87 = *(result + 80);
  v88 = *(result + 88);
  v100 = *(result + 120);
  v101 = *(result + 112);
  v16 = *(result + 152) - 16;
  v91 = *(result + 144) - 1;
  v17 = *(result + 260) - 1;
  v98 = *(result + 24);
  v96 = *(result + 32);
  v18 = *(result + 256);
  v93 = *(result + 28);
  v94 = v14 + (v17 * v93) + 4 * (v18 - 1);
  v86 = *(result + 188);
  v99 = v96 + (v17 * v98) + 4 * (4 * v18) - 16;
  v89 = *(result + 72);
  v90 = *(result + 64);
  v95 = v14;
  v97 = result;
  while (1)
  {
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
        v22 = a4;
        v23 = v90;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v88;
        v27 = v26 - a3 + (v25 >> 1);
        v22 = a4;
        v23 = v90;
        if (v27 < 1)
        {
          goto LABEL_37;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v30 = v86 | v28;
        v31 = v26 - 0x1000000;
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v89 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      v23 = v90;
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      if (v21 >= v19)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v21) >> 32;
      }

      v30 = v86 | v24;
      v31 = v20 + 0x1000000;
      v29 = 512;
    }

    if (a2 >= v23)
    {
      if (a2 <= v87)
      {
        v36 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v87;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_37;
        }

        if (v39 < v37)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v86;
        }

        v35 = v38 - 0x1000000;
        v36 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v23 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_37;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v86;
      }

      v35 = v33 + 0x1000000;
      v36 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v49 = v22 - 1;
    a2 += v101;
    a3 += v100;
    v16 += 16;
    *++v91 = 0;
LABEL_38:
    a4 = v49;
    if (!v49)
    {
      return result;
    }
  }

  v40 = v31 >> 32;
  v41 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = v96 + SHIDWORD(v31) * v98 + 4 * v41;
  v43 = *(result + 32);
  v44 = v99;
  if (v99 >= v42)
  {
    v44 = v42;
  }

  if (v44 < v43)
  {
    v44 = *(result + 32);
  }

  if (v14)
  {
    v45 = v14 + v40 * v93 + v41;
    v46 = *(result + 40);
    v47 = v94;
    v92 = v45;
    if (v94 >= v45)
    {
      v47 = v45;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = COERCE_FLOAT(bswap32(*v46));
  }

  else
  {
    v92 = 0;
    v48 = 1.0;
  }

  v50 = vrev32q_s8(*v44);
  if (v15)
  {
    v51 = *(v15 + (v36 | v29));
LABEL_62:
    v62 = v51 & 0xF;
    v63 = HIBYTE(v51) & 3;
    if (v62 == 1)
    {
      v83 = (v42 + SBYTE1(v51) * v98);
      if (v99 < v83)
      {
        v83 = v99;
      }

      if (v83 >= v43)
      {
        v43 = v83;
      }

      v79 = vrev32q_s8(*v43);
      v80 = 1.0;
      if (v14)
      {
        v84 = (v92 + SBYTE1(v51) * v93);
        if (v94 < v84)
        {
          v84 = v94;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v84));
      }

      v82 = &interpolate_cmykaf[5 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = HIWORD(v51) << 56;
          v65 = (v42 + (v64 >> 52));
          if (v99 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v99;
          }

          if (v66 < v43)
          {
            v66 = v43;
          }

          v67 = (v65 + SBYTE1(v51) * v98);
          if (v99 < v67)
          {
            v67 = v99;
          }

          if (v67 >= v43)
          {
            v43 = v67;
          }

          v68 = vrev32q_s8(*v66);
          v69 = vrev32q_s8(*v43);
          v70 = 1.0;
          v71 = 1.0;
          if (v14)
          {
            v72 = v92 + (v64 >> 54);
            v73 = *(result + 40);
            if (v94 >= v72)
            {
              v74 = (v92 + (v64 >> 54));
            }

            else
            {
              v74 = v94;
            }

            if (v74 < v73)
            {
              v74 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v74));
            v75 = (v72 + SBYTE1(v51) * v93);
            if (v94 < v75)
            {
              v75 = v94;
            }

            if (v75 < v73)
            {
              v75 = *(result + 40);
            }

            v71 = COERCE_FLOAT(bswap32(*v75));
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v63 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v51 >> 28) & 3) + 4];
          v76 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a11, 0), v68, *&a11);
          v50 = vmlaq_n_f32(vmlsq_lane_f32(v76, v76, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v68, v68, *&a11, 0), v69, *&a11), *&a12);
          v48 = (((v48 - (v48 * *&a11)) + (v70 * *&a11)) - (((v48 - (v48 * *&a11)) + (v70 * *&a11)) * *&a12)) + (((v70 - (v70 * *&a11)) + (v71 * *&a11)) * *&a12);
        }

        goto LABEL_43;
      }

      v77 = HIWORD(v51) << 56;
      v78 = (v42 + (v77 >> 52));
      if (v99 < v78)
      {
        v78 = v99;
      }

      if (v78 >= v43)
      {
        v43 = v78;
      }

      v79 = vrev32q_s8(*v43);
      v80 = 1.0;
      if (v14)
      {
        v81 = (v92 + (v77 >> 54));
        if (v94 < v81)
        {
          v81 = v94;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v80 = COERCE_FLOAT(bswap32(*v81));
      }

      v82 = &interpolate_cmykaf[5 * ((v51 >> 28) & 3)];
    }

    LODWORD(a9) = v82[4];
    v50 = vmlaq_n_f32(vmlsq_lane_f32(v50, v50, *&a9, 0), v79, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v80 * *&a9);
  }

LABEL_43:
  v52 = 0;
  v53 = v30 >> 22;
  v16 += 16;
  v85 = v22;
  v54 = v22 - 1;
  a3 += v100;
  v55 = v88 - a3;
  a2 += v101;
  v56 = v87 - a2;
  while (1)
  {
    v102 = v50;
    v103 = v48;
    CMYKF_11865(v16, v102.f32);
    *(v91 + 1 + v52) = v53;
    result = v97;
    v14 = v95;
    if (v54 == v52)
    {
      return result;
    }

    if ((v55 | v56 | (a3 - v89) | (a2 - v90)) < 0)
    {
      v91 += v52 + 1;
      v49 = ~v52 + v85;
      goto LABEL_38;
    }

    v57 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = v96 + SHIDWORD(a3) * v98 + 4 * v57;
    v43 = *(v97 + 32);
    v58 = v99;
    if (v99 >= v42)
    {
      v58 = (v96 + SHIDWORD(a3) * v98 + 4 * v57);
    }

    if (v58 < v43)
    {
      v58 = *(v97 + 32);
    }

    if (v95)
    {
      v59 = v95 + SHIDWORD(a3) * v93 + v57;
      v60 = *(v97 + 40);
      v61 = v94;
      v92 = v59;
      if (v94 >= v59)
      {
        v61 = v59;
      }

      if (v61 >= v60)
      {
        v60 = v61;
      }

      v48 = COERCE_FLOAT(bswap32(*v60));
    }

    else
    {
      v48 = 1.0;
    }

    v50 = vrev32q_s8(*v58);
    if (v15)
    {
      v51 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v51 & 0xF) != 0)
      {
        v91 += v52 + 1;
        v22 = ~v52 + v85;
        v30 = -1;
        goto LABEL_62;
      }
    }

    ++v52;
    v16 += 16;
    a3 += v100;
    v55 -= v100;
    a2 += v101;
    v56 -= v101;
    LOBYTE(v53) = -1;
  }
}

uint64_t cmyk64_sample_cmyk64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v147 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v146 = *(result + 112);
    if (v5 > v6)
    {
      v146 = v5 % v6;
    }
  }

  else
  {
    v146 = 0;
  }

  v8 = *(result + 176);
  v10 = *(result + 32);
  v9 = *(result + 40);
  v11 = *(result + 120);
  if (v7)
  {
    v13 = v11 % v7;
    if (v11 <= v7)
    {
      v13 = *(result + 120);
    }

    v145 = v13;
  }

  else
  {
    v145 = 0;
  }

  v141 = *(result + 80);
  v142 = *(result + 64);
  v143 = *(result + 88);
  v14 = *(result + 152) - 16;
  v15 = *(result + 144) - 1;
  v16 = *(result + 260) - 1;
  v17 = *(result + 256);
  v18 = v9 + (v16 * v147) + 2 * (v17 - 1);
  v140 = *(result + 188);
  v19 = v10 + (v16 * v4) + 8 * v17 - 16;
  v144 = *(result + 72);
  do
  {
    if (a3 >= v144)
    {
      v23 = a4;
      if (a3 <= v143)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v143;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_56;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v31 = v140 | v28;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v144 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      if (v22 < 1)
      {
        goto LABEL_56;
      }

      if (v22 >= v20)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v22) >> 32;
      }

      v31 = v140 | v24;
      v32 = v21 + 0x1000000;
      v29 = a3 - (v21 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v142)
    {
      if (a2 <= v141)
      {
        v37 = 0;
        v38 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v39 = *(result + 192);
        v40 = *(result + 200) + v141;
        v41 = v40 - a2 + (v39 >> 1);
        if (v41 < 1)
        {
          goto LABEL_56;
        }

        if (v41 < v39)
        {
          v31 = ((v31 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v140;
        }

        v36 = v40 - 0x1000000;
        v37 = a2 - (v40 - 0x1000000);
        v38 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v142 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_56;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v140;
      }

      v36 = v34 + 0x1000000;
      v37 = a2 - (v34 + 0x1000000);
      v38 = 32;
    }

    if (v31 >= 0x400000)
    {
      if (v6)
      {
        v42 = (v7 & ((v32 % v7) >> 63)) + v32 % v7;
        v43 = (v6 & ((v36 % v6) >> 63)) + v36 % v6;
        if (v42 >= v7)
        {
          v44 = v7;
        }

        else
        {
          v44 = 0;
        }

        v32 = v42 - v44;
        if (v43 >= v6)
        {
          v45 = v6;
        }

        else
        {
          v45 = 0;
        }

        v36 = v43 - v45;
        v29 += v32;
        v37 += v36;
      }

      v46 = v32 >> 32;
      v47 = v36 >> 32;
      v48 = v10 + v46 * v4;
      v49 = v48 + 8 * v47;
      v50 = *(result + 32);
      if (v19 >= v49)
      {
        v51 = (v48 + 8 * v47);
      }

      else
      {
        v51 = v19;
      }

      if (v51 < v50)
      {
        v51 = *(result + 32);
      }

      if (v9)
      {
        v52 = v9 + v46 * v147 + 2 * v47;
        v53 = *(result + 40);
        if (v18 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v18;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v55 = *v53;
      }

      else
      {
        v52 = 0;
        v55 = 0xFFFFLL;
      }

      v57 = *v51;
      if (!v8)
      {
        goto LABEL_62;
      }

      v58 = *(v8 + (v38 | v30));
      while (1)
      {
        v75 = v58 & 0xF;
        v76 = v58 >> 8;
        v139 = HIBYTE(v58) & 3;
        if (v75 == 1)
        {
          break;
        }

        if (v75 == 2)
        {
          v107 = SBYTE2(v58);
          if (v6)
          {
            v108 = HIWORD(v58) << 56;
            v109 = v37 + (v108 >> 24);
            v110 = v6 & (v109 >> 63);
            if (v110 + v109 >= v6)
            {
              v111 = v6;
            }

            else
            {
              v111 = 0;
            }

            v107 = (v110 + (v108 >> 24) - v111) >> 32;
          }

          v112 = (v49 + 8 * v107);
          if (v19 < v112)
          {
            v112 = v19;
          }

          if (v112 < v50)
          {
            v112 = v50;
          }

          v113 = *v112;
          v114 = 0xFFFF;
          if (v9)
          {
            v115 = (v52 + 2 * v107);
            if (v18 < v115)
            {
              v115 = v18;
            }

            if (v115 < *(result + 40))
            {
              v115 = *(result + 40);
            }

            v114 = *v115;
          }

          v116 = (v58 >> 28) & 3;
          v117 = &interpolate_cmyk64 + 16 * v116;
          v118 = *v117;
          LOBYTE(v116) = v116 + 1;
          v119 = v57 - ((*v117 & v57) >> v116);
          LODWORD(v117) = *(v117 + 4);
          v120 = v55 - ((v117 & v55) >> v116);
          v121 = (v118 & v113) >> v116;
          v122 = (v114 & v117) >> v116;
LABEL_165:
          v57 = v119 + v121;
          v55 = (v120 + v122);
          goto LABEL_62;
        }

        if (v75 == 3)
        {
          v138 = v14;
          v136 = v23;
          LODWORD(v14) = SBYTE1(v58);
          v77 = SBYTE2(v58);
          if (v6)
          {
            v78 = v76 << 56;
            v79 = HIWORD(v58) << 56;
            v80 = v29 + (SBYTE1(v58) << 32);
            v81 = v37 + (v79 >> 24);
            v82 = v7 & (v80 >> 63);
            v83 = v6 & (v81 >> 63);
            v84 = v83 + v81;
            if (v82 + v80 >= v7)
            {
              v85 = v7;
            }

            else
            {
              v85 = 0;
            }

            if (v84 >= v6)
            {
              v86 = v6;
            }

            else
            {
              v86 = 0;
            }

            v14 = (v82 + (v78 >> 24) - v85) >> 32;
            v77 = (v83 + (v79 >> 24) - v86) >> 32;
          }

          v137 = v31;
          v87 = (v49 + 8 * v77);
          if (v19 < v87)
          {
            v87 = v19;
          }

          if (v87 < v50)
          {
            v87 = v50;
          }

          v88 = *v87;
          v89 = v49 + v14 * v4;
          if (v19 >= v89)
          {
            v90 = (v49 + v14 * v4);
          }

          else
          {
            v90 = v19;
          }

          if (v90 < v50)
          {
            v90 = v50;
          }

          v91 = *v90;
          v92 = (v89 + 8 * v77);
          if (v19 < v92)
          {
            v92 = v19;
          }

          if (v92 < v50)
          {
            v92 = v50;
          }

          v134 = *v92;
          v135 = v91;
          v93 = 0xFFFF;
          v94 = 0xFFFF;
          v95 = 0xFFFF;
          if (v9)
          {
            v96 = (v52 + 2 * v77);
            v97 = *(result + 40);
            if (v18 < v96)
            {
              v96 = v18;
            }

            if (v96 < v97)
            {
              v96 = *(result + 40);
            }

            v93 = *v96;
            v98 = v52 + v14 * v147;
            if (v18 >= v98)
            {
              v99 = (v52 + v14 * v147);
            }

            else
            {
              v99 = v18;
            }

            if (v99 < v97)
            {
              v99 = *(result + 40);
            }

            v94 = *v99;
            v100 = (v98 + 2 * v77);
            if (v18 < v100)
            {
              v100 = v18;
            }

            if (v100 < v97)
            {
              v100 = *(result + 40);
            }

            v95 = *v100;
          }

          v101 = &interpolate_cmyk64 + 16 * v139;
          v102 = *v101;
          v103 = v57 - ((*v101 & v57) >> (v139 + 1));
          LODWORD(v101) = *(v101 + 4);
          v104 = v55 - ((v101 & v55) >> (v139 + 1)) + ((v94 & v101) >> (v139 + 1));
          v105 = v93 - ((v93 & v101) >> (v139 + 1)) + ((v95 & v101) >> (v139 + 1));
          LODWORD(v101) = (v58 >> 28) & 3;
          v106 = &interpolate_cmyk64 + 16 * v101;
          LOBYTE(v101) = v101 + 1;
          v57 = v103 + ((v102 & v135) >> (v139 + 1)) - (((v103 + ((v102 & v135) >> (v139 + 1))) & *v106) >> v101) + (((v88 - ((v102 & v88) >> (v139 + 1)) + ((v102 & v134) >> (v139 + 1))) & *v106) >> v101);
          v55 = (v104 - ((v104 & *(v106 + 4)) >> v101) + ((v105 & *(v106 + 4)) >> v101));
          v23 = v136;
          v14 = v138;
          v31 = v137;
        }

LABEL_62:
        *(v14 + 16) = v57;
        *(v14 + 24) = v55;
        *(v15 + 1) = v31 >> 22;
        if (v23 == 1)
        {
          return result;
        }

        v59 = 0;
        v60 = (v14 + 40);
        a2 += v5;
        v61 = v141 - a2;
        a3 += v11;
        v62 = v143 - a3;
        while (1)
        {
          if ((v62 | v61 | (a3 - v144) | (a2 - v142)) < 0)
          {
            v15 += v59 + 1;
            v14 = (v60 - 3);
            v56 = ~v59 + v23;
            goto LABEL_57;
          }

          if (v6)
          {
            v63 = (v7 & ((v29 + v145) >> 63)) + v29 + v145;
            v64 = (v6 & ((v37 + v146) >> 63)) + v37 + v146;
            if (v63 >= v7)
            {
              v65 = v7;
            }

            else
            {
              v65 = 0;
            }

            v29 = v63 - v65;
            if (v64 >= v6)
            {
              v66 = v6;
            }

            else
            {
              v66 = 0;
            }

            v37 = v64 - v66;
            v67 = v29;
            v68 = v37;
          }

          else
          {
            v67 = a3;
            v68 = a2;
          }

          v69 = v68 >> 32;
          v70 = v67 >> 32;
          v49 = v10 + SHIDWORD(v67) * v4 + 8 * (v68 >> 32);
          v50 = *(result + 32);
          if (v19 >= v49)
          {
            v71 = v49;
          }

          else
          {
            v71 = v19;
          }

          if (v71 < v50)
          {
            v71 = *(result + 32);
          }

          if (v9)
          {
            v52 = v9 + v70 * v147 + 2 * v69;
            v72 = *(result + 40);
            v73 = (v18 >= v52 ? v52 : v18);
            if (v73 >= v72)
            {
              v72 = v73;
            }

            v55 = *v72;
          }

          else
          {
            v55 = 0xFFFFLL;
          }

          v57 = *v71;
          if (v8)
          {
            v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v58 & 0xF) != 0)
            {
              break;
            }
          }

          *(v60 - 1) = v57;
          *v60 = v55;
          v74 = v15 + v59++;
          v60 += 2;
          a2 += v5;
          *(v74 + 2) = -1;
          v61 -= v5;
          a3 += v11;
          v62 -= v11;
          if (v23 - 1 == v59)
          {
            return result;
          }
        }

        v15 += v59 + 1;
        v14 = (v60 - 3);
        v23 += ~v59;
        v31 = -1;
      }

      LODWORD(v123) = SBYTE1(v58);
      if (v6)
      {
        v124 = v76 << 56;
        v125 = v29 + (v124 >> 24);
        v126 = v7 & (v125 >> 63);
        if (v126 + v125 >= v7)
        {
          v127 = v7;
        }

        else
        {
          v127 = 0;
        }

        v123 = (v126 + (v124 >> 24) - v127) >> 32;
      }

      v128 = (v49 + v123 * v4);
      if (v19 < v128)
      {
        v128 = v19;
      }

      if (v128 < v50)
      {
        v128 = v50;
      }

      v129 = *v128;
      v130 = 0xFFFF;
      if (v9)
      {
        v131 = (v52 + v123 * v147);
        if (v18 < v131)
        {
          v131 = v18;
        }

        if (v131 < *(result + 40))
        {
          v131 = *(result + 40);
        }

        v130 = *v131;
      }

      v132 = &interpolate_cmyk64 + 16 * v139;
      v133 = *v132;
      v119 = v57 - ((*v132 & v57) >> (v139 + 1));
      LODWORD(v132) = *(v132 + 4);
      v120 = v55 - ((v132 & v55) >> (v139 + 1));
      v121 = (v133 & v129) >> (v139 + 1);
      v122 = (v130 & v132) >> (v139 + 1);
      goto LABEL_165;
    }

LABEL_56:
    v56 = v23 - 1;
    a2 += v5;
    a3 += v11;
    v14 += 16;
    *++v15 = 0;
LABEL_57:
    a4 = v56;
  }

  while (v56);
  return result;
}

uint64_t cmyk64_sample_CMYK64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v139 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v138 = *(result + 112);
    if (v5 > v6)
    {
      v138 = v5 % v6;
    }
  }

  else
  {
    v138 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v140 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v137 = v11;
  }

  else
  {
    v137 = 0;
  }

  v136 = *(result + 80);
  v133 = *(result + 64);
  v134 = *(result + 88);
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v9 + (v14 * v139) + 2 * (v15 - 1);
  v132 = *(result + 188);
  v17 = v140 + (v14 * v4) + 8 * v15 - 16;
  v135 = *(result + 72);
  do
  {
    if (a3 < v135)
    {
      v18 = *(result + 216);
      v19 = v135 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      v21 = a4;
      if (v20 < 1)
      {
        goto LABEL_57;
      }

      if (v20 >= v18)
      {
        LODWORD(v22) = 0x3FFFFFFF;
      }

      else
      {
        v22 = (*(result + 232) * v20) >> 32;
      }

      v32 = v136;
      v29 = v132 | v22;
      v30 = v19 + 0x1000000;
      v27 = a3 - v30;
      v28 = 512;
      goto LABEL_24;
    }

    v21 = a4;
    if (a3 > v134)
    {
      v23 = *(result + 216);
      v24 = *(result + 224) + v134;
      v25 = v24 - a3 + (v23 >> 1);
      if (v25 < 1)
      {
        goto LABEL_57;
      }

      if (v25 >= v23)
      {
        LODWORD(v26) = 0x3FFFFFFF;
      }

      else
      {
        v26 = (*(result + 232) * v25) >> 32;
      }

      v32 = v136;
      v29 = v132 | v26;
      v30 = v24 - 0x1000000;
      v27 = a3 - v30;
      v28 = 448;
LABEL_24:
      v31 = v133;
      goto LABEL_25;
    }

    v27 = 0;
    v28 = (a3 >> 22) & 0x3C0;
    v29 = 0x3FFFFFFF;
    v30 = a3;
    v31 = v133;
    v32 = v136;
LABEL_25:
    if (a2 >= v31)
    {
      if (a2 <= v32)
      {
        v37 = 0;
        v38 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v39 = *(result + 192);
        v40 = *(result + 200) + v32;
        v41 = v40 - a2 + (v39 >> 1);
        if (v41 < 1)
        {
          goto LABEL_57;
        }

        if (v41 < v39)
        {
          v29 = ((v29 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v132;
        }

        v36 = v40 - 0x1000000;
        v37 = a2 - (v40 - 0x1000000);
        v38 = 28;
      }
    }

    else
    {
      v33 = *(result + 192);
      v34 = v31 - *(result + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_57;
      }

      if (v35 < v33)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v132;
      }

      v36 = v34 + 0x1000000;
      v37 = a2 - (v34 + 0x1000000);
      v38 = 32;
    }

    if (v29 >= 0x400000)
    {
      if (v6)
      {
        v42 = (v7 & ((v30 % v7) >> 63)) + v30 % v7;
        v43 = (v6 & ((v36 % v6) >> 63)) + v36 % v6;
        if (v42 >= v7)
        {
          v44 = v7;
        }

        else
        {
          v44 = 0;
        }

        v30 = v42 - v44;
        if (v43 >= v6)
        {
          v45 = v6;
        }

        else
        {
          v45 = 0;
        }

        v36 = v43 - v45;
        v27 += v30;
        v37 += v36;
      }

      v46 = v30 >> 32;
      v47 = v36 >> 32;
      v48 = v140 + SHIDWORD(v30) * v4;
      v49 = v48 + 8 * v47;
      v50 = *(result + 32);
      if (v17 >= v49)
      {
        v51 = (v48 + 8 * v47);
      }

      else
      {
        v51 = v17;
      }

      if (v51 < v50)
      {
        v51 = *(result + 32);
      }

      if (v9)
      {
        v52 = v9 + v46 * v139 + 2 * v47;
        v53 = *(result + 40);
        if (v16 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v16;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v55 = bswap32(*v53) >> 16;
      }

      else
      {
        v52 = 0;
        v55 = 0xFFFFLL;
      }

      v57 = ((bswap32(v51[2]) >> 16) << 32) | ((bswap32(v51[3]) >> 16) << 48) | bswap32(v51[1]) & 0xFFFF0000 | (bswap32(*v51) >> 16);
      if (!v8)
      {
        goto LABEL_63;
      }

      v58 = *(v8 + (v38 | v28));
      while (1)
      {
        v75 = v58 & 0xF;
        v76 = HIBYTE(v58) & 3;
        v131 = v29;
        if (v75 == 1)
        {
          break;
        }

        if (v75 == 2)
        {
          v106 = SBYTE2(v58);
          if (v6)
          {
            v107 = v37 + (SBYTE2(v58) << 32);
            v108 = v6 & (v107 >> 63);
            if (v108 + v107 >= v6)
            {
              v109 = v6;
            }

            else
            {
              v109 = 0;
            }

            v106 = (v108 + ((HIWORD(v58) << 56) >> 24) - v109) >> 32;
          }

          v110 = (v49 + 8 * v106);
          if (v17 < v110)
          {
            v110 = v17;
          }

          if (v110 < v50)
          {
            v110 = v50;
          }

          v111 = ((bswap32(v110[2]) >> 16) << 32) | ((bswap32(v110[3]) >> 16) << 48) | bswap32(v110[1]) & 0xFFFF0000 | (bswap32(*v110) >> 16);
          LOWORD(v112) = -1;
          if (v9)
          {
            v113 = (v52 + 2 * v106);
            if (v16 < v113)
            {
              v113 = v16;
            }

            if (v113 < *(result + 40))
            {
              v113 = *(result + 40);
            }

            v112 = bswap32(*v113) >> 16;
          }

          v114 = (v58 >> 28) & 3;
          v115 = &interpolate_cmyk64 + 16 * v114;
          LOBYTE(v114) = v114 + 1;
          v57 = v57 - ((*v115 & v57) >> v114) + ((*v115 & v111) >> v114);
          v116 = v55 - ((*(v115 + 4) & v55) >> v114) + ((v112 & *(v115 + 4)) >> v114);
LABEL_166:
          v55 = v116;
          goto LABEL_167;
        }

        if (v75 != 3)
        {
          goto LABEL_63;
        }

        v129 = HIBYTE(v58) & 3;
        v130 = v12;
        LODWORD(v77) = SBYTE1(v58);
        v78 = SBYTE2(v58);
        if (v6)
        {
          v79 = HIWORD(v58) << 56;
          v80 = v27 + (SBYTE1(v58) << 32);
          v81 = v37 + (v79 >> 24);
          v82 = v7 & (v80 >> 63);
          v83 = v6 & (v81 >> 63);
          v84 = v83 + v81;
          if (v82 + v80 >= v7)
          {
            v85 = v7;
          }

          else
          {
            v85 = 0;
          }

          if (v84 >= v6)
          {
            v86 = v6;
          }

          else
          {
            v86 = 0;
          }

          v77 = (v82 + (((v58 >> 8) << 56) >> 24) - v85) >> 32;
          v78 = (v83 + (v79 >> 24) - v86) >> 32;
        }

        v87 = (v49 + 8 * v78);
        if (v17 < v87)
        {
          v87 = v17;
        }

        if (v87 < v50)
        {
          v87 = v50;
        }

        v88 = ((bswap32(v87[2]) >> 16) << 32) | ((bswap32(v87[3]) >> 16) << 48) | bswap32(v87[1]) & 0xFFFF0000 | (bswap32(*v87) >> 16);
        v89 = v49 + v77 * v4;
        if (v17 >= v89)
        {
          v90 = (v49 + v77 * v4);
        }

        else
        {
          v90 = v17;
        }

        if (v90 < v50)
        {
          v90 = v50;
        }

        v128 = ((bswap32(v90[2]) >> 16) << 32) | ((bswap32(v90[3]) >> 16) << 48) | bswap32(v90[1]) & 0xFFFF0000 | (bswap32(*v90) >> 16);
        v91 = (v89 + 8 * v78);
        if (v17 < v91)
        {
          v91 = v17;
        }

        if (v91 < v50)
        {
          v91 = v50;
        }

        v127 = ((bswap32(v91[2]) >> 16) << 32) | ((bswap32(v91[3]) >> 16) << 48) | bswap32(v91[1]) & 0xFFFF0000 | (bswap32(*v91) >> 16);
        v92 = 0xFFFF;
        v93 = 0xFFFF;
        v94 = 0xFFFF;
        if (v9)
        {
          v95 = (v52 + 2 * v78);
          v96 = *(result + 40);
          if (v16 < v95)
          {
            v95 = v16;
          }

          if (v95 < v96)
          {
            v95 = *(result + 40);
          }

          v94 = bswap32(*v95) >> 16;
          v97 = v52 + v77 * v139;
          if (v16 >= v97)
          {
            v98 = (v52 + v77 * v139);
          }

          else
          {
            v98 = v16;
          }

          if (v98 < v96)
          {
            v98 = *(result + 40);
          }

          v93 = bswap32(*v98) >> 16;
          v99 = (v97 + 2 * v78);
          if (v16 < v99)
          {
            v99 = v16;
          }

          if (v99 < v96)
          {
            v99 = *(result + 40);
          }

          v92 = bswap32(*v99) >> 16;
        }

        v100 = &interpolate_cmyk64 + 16 * v129;
        v101 = *v100;
        v102 = v57 - ((*v100 & v57) >> (v129 + 1));
        LODWORD(v100) = *(v100 + 4);
        v103 = v55 - ((v100 & v55) >> (v129 + 1)) + ((v93 & v100) >> (v129 + 1));
        LODWORD(v100) = v94 - ((v94 & v100) >> (v129 + 1)) + ((v92 & v100) >> (v129 + 1));
        v104 = (v58 >> 28) & 3;
        v105 = &interpolate_cmyk64 + 16 * v104;
        LOBYTE(v104) = v104 + 1;
        v57 = v102 + ((v101 & v128) >> (v129 + 1)) - (((v102 + ((v101 & v128) >> (v129 + 1))) & *v105) >> v104) + (((v88 - ((v101 & v88) >> (v129 + 1)) + ((v101 & v127) >> (v129 + 1))) & *v105) >> v104);
        v55 = (v103 - ((v103 & *(v105 + 4)) >> v104) + ((v100 & *(v105 + 4)) >> v104));
        v12 = v130;
LABEL_167:
        v29 = v131;
LABEL_63:
        *(v12 + 16) = v57;
        *(v12 + 24) = v55;
        *(v13 + 1) = v29 >> 22;
        if (v21 == 1)
        {
          return result;
        }

        v59 = 0;
        v60 = (v12 + 40);
        a2 += v5;
        v61 = v136 - a2;
        a3 += v10;
        v62 = v134 - a3;
        while (1)
        {
          if ((v62 | v61 | (a3 - v135) | (a2 - v133)) < 0)
          {
            v13 += v59 + 1;
            v12 = (v60 - 3);
            v56 = ~v59 + v21;
            goto LABEL_58;
          }

          if (v6)
          {
            v63 = (v7 & ((v27 + v137) >> 63)) + v27 + v137;
            v64 = (v6 & ((v37 + v138) >> 63)) + v37 + v138;
            if (v63 >= v7)
            {
              v65 = v7;
            }

            else
            {
              v65 = 0;
            }

            v27 = v63 - v65;
            if (v64 >= v6)
            {
              v66 = v6;
            }

            else
            {
              v66 = 0;
            }

            v37 = v64 - v66;
            v67 = v27;
            v68 = v37;
          }

          else
          {
            v67 = a3;
            v68 = a2;
          }

          v69 = v68 >> 32;
          v70 = v67 >> 32;
          v49 = v140 + SHIDWORD(v67) * v4 + 8 * (v68 >> 32);
          v50 = *(result + 32);
          if (v17 >= v49)
          {
            v71 = v49;
          }

          else
          {
            v71 = v17;
          }

          if (v71 < v50)
          {
            v71 = *(result + 32);
          }

          if (v9)
          {
            v52 = v9 + v70 * v139 + 2 * v69;
            v72 = *(result + 40);
            v73 = v16 >= v52 ? v9 + v70 * v139 + 2 * v69 : v16;
            if (v73 >= v72)
            {
              v72 = v73;
            }

            v55 = bswap32(*v72) >> 16;
          }

          else
          {
            v55 = 0xFFFFLL;
          }

          v57 = ((bswap32(v71[2]) >> 16) << 32) | ((bswap32(v71[3]) >> 16) << 48) | bswap32(v71[1]) & 0xFFFF0000 | (bswap32(*v71) >> 16);
          if (v8)
          {
            v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v58 & 0xF) != 0)
            {
              break;
            }
          }

          *(v60 - 1) = v57;
          *v60 = v55;
          v74 = v13 + v59++;
          v60 += 2;
          a2 += v5;
          *(v74 + 2) = -1;
          v61 -= v5;
          a3 += v10;
          v62 -= v10;
          if (v21 - 1 == v59)
          {
            return result;
          }
        }

        v13 += v59 + 1;
        v12 = (v60 - 3);
        v21 += ~v59;
        v29 = -1;
      }

      LODWORD(v117) = SBYTE1(v58);
      if (v6)
      {
        v118 = v27 + (SBYTE1(v58) << 32);
        v119 = v7 & (v118 >> 63);
        if (v119 + v118 >= v7)
        {
          v120 = v7;
        }

        else
        {
          v120 = 0;
        }

        v117 = (v119 + (SBYTE1(v58) << 32) - v120) >> 32;
      }

      v121 = (v49 + v117 * v4);
      if (v17 < v121)
      {
        v121 = v17;
      }

      if (v121 < v50)
      {
        v121 = v50;
      }

      v122 = ((bswap32(v121[2]) >> 16) << 32) | ((bswap32(v121[3]) >> 16) << 48) | bswap32(v121[1]) & 0xFFFF0000 | (bswap32(*v121) >> 16);
      LOWORD(v123) = -1;
      if (v9)
      {
        v124 = (v52 + v117 * v139);
        if (v16 < v124)
        {
          v124 = v16;
        }

        if (v124 < *(result + 40))
        {
          v124 = *(result + 40);
        }

        v123 = bswap32(*v124) >> 16;
      }

      v125 = &interpolate_cmyk64 + 16 * v76;
      v126 = v76 + 1;
      v57 = v57 - ((*v125 & v57) >> v126) + ((*v125 & v122) >> v126);
      v116 = v55 - ((*(v125 + 4) & v55) >> v126) + ((v123 & *(v125 + 4)) >> v126);
      goto LABEL_166;
    }

LABEL_57:
    v56 = v21 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 16;
    *++v13 = 0;
LABEL_58:
    a4 = v56;
  }

  while (v56);
  return result;
}