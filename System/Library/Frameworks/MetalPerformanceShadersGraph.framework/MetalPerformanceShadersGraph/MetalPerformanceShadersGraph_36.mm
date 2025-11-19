void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF7178;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF7178;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097756FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097756FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097756FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097756FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7208;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7208;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7208;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<long long>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<long long>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v21, v24);
  if ((v27 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v24[0];
  v23[0] = *&v24[1];
  *(v23 + 15) = *&v24[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v17);
  v5 = v17;
  v6 = v18 - v17;
  if (v18 == v17)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v18 - v17);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x48uLL);
  *v9 = &unk_1F5AF7268;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v23[0];
  v10 = *(v23 + 15);
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 6) = v10;
  v22 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v11 = (*(*v9 + 16))(v9);
  v20 = v11;
  *v24 = 0;
  if (!v11)
  {
    v25 = 0;
    v26 = 1;
    *a2 = *v24;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v14 = (a2 + 32);
    goto LABEL_16;
  }

  if (v11 == v19)
  {
    v25 = &v24[8];
    (*(*v11 + 24))(v11, &v24[8]);
    v13 = v25;
  }

  else
  {
    v13 = (*(*v11 + 16))(v11);
    v25 = v13;
  }

  v26 = 1;
  *a2 = *v24;
  *(a2 + 8) = 0;
  v12 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v13)
  {
    goto LABEL_15;
  }

  if (v13 == &v24[8])
  {
    *(a2 + 32) = v12;
    (*(*v13 + 24))(v13);
    v16 = v26;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v14 = &v25;
  *(a2 + 32) = v13;
LABEL_16:
  *v14 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v25 == &v24[8])
  {
    (*(*v25 + 32))(v25, v12);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_21:
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20, v12);
    v15 = v22;
    if (v22 != v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    v15 = v22;
    if (v22 != v21)
    {
LABEL_25:
      if (v15)
      {
        (*(*v15 + 40))(v15, v12);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v15 + 32))(v15, v12);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF72F8;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF7268;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7268;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5AF7268;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  v2[8] = *(a1 + 64);
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF7268;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0977984)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0977984 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0977984))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0977984 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF72F8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF72F8;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF72F8;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<llvm::APFloat>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<llvm::APFloat>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  *v33 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a1);
  FloatSemantics = mlir::FloatType::getFloatSemantics(v33);
  v5 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
  if (v5 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v32, FloatSemantics);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v32, FloatSemantics);
  }

  v28[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetFloatValues(v28, v33);
  if ((v36 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    goto LABEL_39;
  }

  v6 = v33[0];
  v30 = *&v33[1];
  v31[0] = *v34;
  *(v31 + 15) = *&v34[15];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v20);
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  v7 = v20;
  v8 = v21 - v20;
  if (v21 != v20)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    __p[0] = operator new(v21 - v20);
    __p[1] = __p[0];
    v9 = __p[0] + v8;
    v25 = __p[0] + v8;
    memcpy(__p[0], v7, v8);
    __p[1] = v9;
  }

  v26[0] = v6;
  *&v26[1] = v30;
  *&v26[17] = v31[0];
  *&v26[32] = *(v31 + 15);
  if (v5 == v32.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v27, &v32);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v27, &v32);
  }

  v29 = 0;
  v10 = operator new(0x68uLL);
  *v10 = &unk_1F5AF7358;
  *(v10 + 8) = *__p;
  v11 = v27.n128_u64[0];
  *(v10 + 3) = v25;
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v12 = *&v26[16];
  *(v10 + 2) = *v26;
  *(v10 + 3) = v12;
  *(v10 + 8) = *&v26[32];
  v13 = (v10 + 80);
  if (v5 == v11)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, &v27);
    v29 = v10;
    if (v5 != v27.n128_u64[0])
    {
LABEL_14:
      llvm::detail::IEEEFloat::~IEEEFloat(&v27);
      v14 = __p[0];
      if (!__p[0])
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v13, &v27);
    v29 = v10;
    if (v5 != v27.n128_u64[0])
    {
      goto LABEL_14;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v27);
  v14 = __p[0];
  if (__p[0])
  {
LABEL_15:
    __p[1] = v14;
    operator delete(v14);
  }

LABEL_16:
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  if (!v29)
  {
    v23 = 0;
    *v33 = 0;
    goto LABEL_24;
  }

  if (v29 == v28)
  {
    v23 = v22;
    (*(*v29 + 24))();
    v15 = v23;
    *v33 = 0;
    if (v23)
    {
      goto LABEL_46;
    }

LABEL_24:
    *&v34[15] = 0;
    v35 = 1;
    *a2 = *v33;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_25:
    v16 = (a2 + 32);
    goto LABEL_26;
  }

  v15 = (*(*v29 + 16))();
  v23 = v15;
  *v33 = 0;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_46:
  if (v15 == v22)
  {
    *&v34[15] = &v33[8];
    (*(*v15 + 24))(v15, &v33[8]);
    v18 = *&v34[15];
  }

  else
  {
    v18 = (*(*v15 + 16))(v15);
    *&v34[15] = v18;
  }

  v35 = 1;
  *a2 = *v33;
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (!v18)
  {
    goto LABEL_25;
  }

  if (v18 == &v33[8])
  {
    *(a2 + 32) = a2 + 8;
    (*(*v18 + 24))(v18);
    v19 = v35;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v16 = &v34[15];
  *(a2 + 32) = v18;
LABEL_26:
  *v16 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_27:
  if (*&v34[15] == &v33[8])
  {
    (*(**&v34[15] + 32))(*&v34[15]);
  }

  else if (*&v34[15])
  {
    (*(**&v34[15] + 40))(*&v34[15]);
  }

LABEL_31:
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
    v17 = v29;
    if (v29 != v28)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))();
    }

    v17 = v29;
    if (v29 != v28)
    {
LABEL_35:
      if (v17)
      {
        (*(*v17 + 40))(v17);
      }

      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  (*(*v17 + 32))(v17);
  if (v7)
  {
LABEL_38:
    operator delete(v7);
  }

LABEL_39:
  if (v5 == v32.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v32);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF73E8;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_1F5AF7358;
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_3;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7358;
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

LABEL_4:

  operator delete(a1);
}

llvm::APFloatBase *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEv(void *a1)
{
  v2 = operator new(0x68uLL);
  v3 = v2;
  *v2 = &unk_1F5AF7358;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v5 = a1[1];
  v4 = a1[2];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(v3 + 1) = v7;
    *(v3 + 2) = v7;
    v8 = &v7[v6];
    *(v3 + 3) = &v7[v6];
    v2 = memcpy(v7, v5, v6);
    *(v3 + 2) = v8;
  }

  v10 = a1[10];
  v9 = (a1 + 10);
  v11 = *(v9 - 2);
  *(v3 + 2) = *(v9 - 3);
  *(v3 + 3) = v11;
  *(v3 + 8) = *(v9 - 2);
  if (llvm::APFloatBase::PPCDoubleDouble(v2) == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v3 + 10, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v3 + 80), v9);
  }

  return v3;
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(llvm::APFloatBase *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = &unk_1F5AF7358;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    a1 = memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  *(a2 + 64) = *(v3 + 8);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  v12 = *(v3 + 10);
  v11 = (v3 + 80);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v12)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 80), v11);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 80), v11);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(void *a1)
{
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  a1[2] = v4;

  operator delete(v4);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

LABEL_4:

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = -(v5 >> 3);
    while (1)
    {
      v8 = *v4++;
      if (v8 == *a2)
      {
        break;
      }

      if (v7 == --v6)
      {
        goto LABEL_5;
      }
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = v11 - v6;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v12, a3);
  }

  else
  {
LABEL_5:
    v9 = (a1 + 80);
    v10 = *(a1 + 80);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v10)
    {

      llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v9);
    }

    else
    {

      llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v9);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0977D97)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0977D97 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0977D97))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0977D97 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF73E8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF73E8;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF73E8;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<float>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<float>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<float,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF7430;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF74C0;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED1Ev(void *result)
{
  *result = &unk_1F5AF7430;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7430;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF7430;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 1) = v6;
    *(v2 + 2) = v6;
    v7 = &v6[v5];
    *(v2 + 3) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 2) = v7;
  }

  *(v2 + 2) = *(a1 + 32);
  *(v2 + 44) = *(a1 + 44);
  *(v2 + 15) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF7430;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0978122)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0978122 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0978122))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0978122 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF74C0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF74C0;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF74C0;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<double>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1__cold_1();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<double>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<double,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF7520;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF75B0;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED1Ev(void *result)
{
  *result = &unk_1F5AF7520;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7520;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF7520;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF7520;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09784E5)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09784E5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09784E5))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09784E5 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF75B0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF75B0;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF75B0;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APFloat>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APFloat>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APFloat>>(a1, v34);
  v30[0] = *(*a1 + 32);
  ComplexFloatValues = mlir::DenseElementsAttr::tryGetComplexFloatValues(v30, v37);
  if ((v40 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    v11 = llvm::APFloatBase::PPCDoubleDouble(ComplexFloatValues);
    goto LABEL_39;
  }

  v5 = v37[0];
  v32 = *&v37[1];
  v33[0] = *v38;
  *(v33 + 15) = *&v38[15];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v18);
  v23 = 0;
  v24 = 0;
  __p = 0;
  v7 = v18;
  v8 = v19 - v18;
  if (v19 != v18)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    __p = operator new(v19 - v18);
    v23 = __p;
    v9 = __p + v8;
    v24 = __p + v8;
    v6 = memcpy(__p, v7, v8);
    v23 = v9;
  }

  v25 = v5;
  v26 = v32;
  *v27 = v33[0];
  *&v27[15] = *(v33 + 15);
  v10 = v35[0].n128_u64[0];
  v11 = llvm::APFloatBase::PPCDoubleDouble(v6);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v28, v35);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v28, v35);
  }

  if (v11 == v36.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v29, &v36);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v29, &v36);
  }

  _ZNSt3__110__function12__value_funcIFNS_7complexIN4llvm7APFloatEEElEEC2B8nn200100IZNK4mlir18SparseElementsAttr20try_value_begin_implIS5_EENS3_9FailureOrINS3_15mapped_iteratorINS3_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISK_EEdeclL_ZNS_7declvalB8nn200100ISG_EEDTclsr3stdE9__declvalISI_ELi0EEEvEEEEEEEENS9_6detail17ElementsAttrTraitISA_E13OverloadTokenISI_EEEUllE_NS_9allocatorISV_EEEEOSI_RKT0_(v30, &__p);
  if (v11 == v29.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
    if (v11 != v28[0].n128_u64[0])
    {
LABEL_14:
      llvm::detail::IEEEFloat::~IEEEFloat(v28);
      v12 = __p;
      if (!__p)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v29);
    if (v11 != v28[0].n128_u64[0])
    {
      goto LABEL_14;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  v12 = __p;
  if (__p)
  {
LABEL_15:
    v23 = v12;
    operator delete(v12);
  }

LABEL_16:
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  if (!v31)
  {
    v21 = 0;
    *v37 = 0;
    goto LABEL_24;
  }

  if (v31 == v30)
  {
    v21 = v20;
    (*(*v31 + 24))();
    v13 = v21;
    *v37 = 0;
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_24:
    *&v38[15] = 0;
    v39 = 1;
    *a2 = *v37;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_25:
    v14 = (a2 + 32);
    goto LABEL_26;
  }

  v13 = (*(*v31 + 16))();
  v21 = v13;
  *v37 = 0;
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_48:
  if (v13 == v20)
  {
    *&v38[15] = &v37[8];
    (*(*v13 + 24))(v13, &v37[8]);
    v16 = *&v38[15];
  }

  else
  {
    v16 = (*(*v13 + 16))(v13);
    *&v38[15] = v16;
  }

  v39 = 1;
  *a2 = *v37;
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (!v16)
  {
    goto LABEL_25;
  }

  if (v16 == &v37[8])
  {
    *(a2 + 32) = a2 + 8;
    (*(*v16 + 24))(v16);
    v17 = v39;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v14 = &v38[15];
  *(a2 + 32) = v16;
LABEL_26:
  *v14 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_27:
  if (*&v38[15] == &v37[8])
  {
    (*(**&v38[15] + 32))(*&v38[15]);
  }

  else if (*&v38[15])
  {
    (*(**&v38[15] + 40))(*&v38[15]);
  }

LABEL_31:
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    v15 = v31;
    if (v31 != v30)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    v15 = v31;
    if (v31 != v30)
    {
LABEL_35:
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  (*(*v15 + 32))(v15);
  if (v7)
  {
LABEL_38:
    operator delete(v7);
  }

LABEL_39:
  if (v11 == v36.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v36);
    if (v11 != v35[0].n128_u64[0])
    {
      goto LABEL_41;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v36);
    if (v11 != v35[0].n128_u64[0])
    {
LABEL_41:
      llvm::detail::IEEEFloat::~IEEEFloat(v35);
      return;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF76A0;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APFloat>>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a1);
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementType);
  v4 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
  if (v4 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v8, FloatSemantics);
    v5 = (a2 + 8);
    if (v4 != v8[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::IEEEFloat(v5, v8);
      v6 = (a2 + 40);
      if (v4 != v8[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v8);
      if (v4 != v8[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v8, FloatSemantics);
    v5 = (a2 + 8);
    if (v4 != v8[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v5, v8);
  v6 = (a2 + 40);
  if (v4 == v8[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v6, v8);
  if (v4 == v8[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(v8);
}

uint64_t _ZNSt3__110__function12__value_funcIFNS_7complexIN4llvm7APFloatEEElEEC2B8nn200100IZNK4mlir18SparseElementsAttr20try_value_begin_implIS5_EENS3_9FailureOrINS3_15mapped_iteratorINS3_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISK_EEdeclL_ZNS_7declvalB8nn200100ISG_EEDTclsr3stdE9__declvalISI_ELi0EEEvEEEEEEEENS9_6detail17ElementsAttrTraitISA_E13OverloadTokenISI_EEEUllE_NS_9allocatorISV_EEEEOSI_RKT0_(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = operator new(0x88uLL);
  *v4 = &unk_1F5AF7610;
  *(v4 + 8) = *a2;
  *(v4 + 3) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 40);
  *(v4 + 2) = *(a2 + 24);
  *(v4 + 3) = v5;
  *(v4 + 8) = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v4 + 5, (a2 + 72));
    v8 = (v4 + 112);
    v9 = (a2 + 104);
    if (v7 != *(a2 + 104))
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v8, v9);
    goto LABEL_6;
  }

  llvm::detail::IEEEFloat::IEEEFloat((v4 + 80), a2 + 72);
  v8 = (v4 + 112);
  v9 = (a2 + 104);
  if (v7 == *(a2 + 104))
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(v8, v9);
LABEL_6:
  *(a1 + 24) = v4;
  return a1;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(void *a1)
{
  *a1 = &unk_1F5AF7610;
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
    v6 = a1[1];
    if (!v6)
    {
      return a1;
    }

    goto LABEL_4;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v5 = (a1 + 10);
  if (v4 == a1[10])
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7610;
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v6 = a1[1];
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

LABEL_5:

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x88uLL);
  *v2 = &unk_1F5AF7610;
  _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEC2B8nn200100ERKSS_OSU_((v2 + 1), a1 + 8);
  return v2;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyEv(void *a1)
{
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
    v6 = a1[1];
    if (!v6)
    {
      return;
    }

    goto LABEL_4;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v5 = (a1 + 10);
  if (v4 == a1[10])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v5);
  v6 = a1[1];
  if (!v6)
  {
    return;
  }

LABEL_4:
  a1[2] = v6;

  operator delete(v6);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(void *a1)
{
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v6 = a1[1];
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

LABEL_5:

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09788E0)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09788E0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09788E0))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09788E0 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm::APFloatBase *_ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEC2B8nn200100ERKSS_OSU_(llvm::APFloatBase *a1, uint64_t a2)
{
  v3 = a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 != *a2)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - *a2);
    *v3 = v7;
    *(v3 + 1) = v7;
    v8 = &v7[v6];
    *(v3 + 2) = &v7[v6];
    a1 = memcpy(v7, v5, v6);
    *(v3 + 1) = v8;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  *(v3 + 7) = *(a2 + 56);
  *(v3 + 40) = v10;
  *(v3 + 24) = v9;
  v11 = *(a2 + 72);
  v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v12 == v11)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v3 + 9, (a2 + 72));
    v13 = (v3 + 104);
    v14 = (a2 + 104);
    if (v12 != *(a2 + 104))
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v3 + 72), (a2 + 72));
    v13 = (v3 + 104);
    v14 = (a2 + 104);
    if (v12 != *(a2 + 104))
    {
LABEL_6:
      llvm::detail::IEEEFloat::IEEEFloat(v13, v14);
      return v3;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v14);
  return v3;
}

void _ZZNK4mlir18SparseElementsAttr20try_value_begin_implINSt3__17complexIN4llvm7APFloatEEEEENS4_9FailureOrINS4_15mapped_iteratorINS4_6detail15SafeIntIteratorIlLb0EEENS2_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS2_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS_6detail17ElementsAttrTraitIS0_E13OverloadTokenISD_EEENKUllE_clEl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = (*(a1 + 8) - *a1) >> 3;
  if (!v6)
  {
LABEL_5:
    v9 = *(a1 + 72);
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v10 == v9)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), (a1 + 72));
      v11 = (a3 + 40);
      v12 = (a1 + 104);
      if (v10 != *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), (a1 + 72));
      v11 = (a3 + 40);
      v12 = (a1 + 104);
      if (v10 != *(a1 + 104))
      {
LABEL_7:

        llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
        return;
      }
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = *v5++;
    if (v8 == a2)
    {
      break;
    }

    --v7;
    LODWORD(v6) = v6 - 1;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 40);
  v16 = *(a1 + 48);
  v15 = v13 - v7;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v14, &v17);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v14, &v17, a3);
  if (v20 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF76A0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF76A0;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF76A0;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<float>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a3;
    v3 = a1;
    v5 = a2;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    a1 = v3;
    a2 = v5;
    a3 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }

LABEL_7:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:
      *a3 = 0;
      a3[16] = 0;
      return;
    }
  }

  else
  {
    v8 = a3;
    v4 = a1;
    v6 = a2;
    _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    a1 = v4;
    a3 = v8;
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::StringRef>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<float>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v20, v23);
  if ((v26 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v23[0];
  v22[0] = *&v23[1];
  *(v22 + 15) = *&v23[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v16);
  v5 = v16;
  v6 = v17 - v16;
  if (v17 == v16)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v17 - v16);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x40uLL);
  *v9 = &unk_1F5AF76E8;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v22[0];
  *(v9 + 6) = *(v22 + 15);
  *(v9 + 7) = 0;
  v21 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v10 = (*(*v9 + 16))(v9);
  v19 = v10;
  *v23 = 0;
  if (!v10)
  {
    v24 = 0;
    v25 = 1;
    *a2 = *v23;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v13 = (a2 + 32);
    goto LABEL_16;
  }

  if (v10 == v18)
  {
    v24 = &v23[8];
    (*(*v10 + 24))(v10, &v23[8]);
    v12 = v24;
  }

  else
  {
    v12 = (*(*v10 + 16))(v10);
    v24 = v12;
  }

  v25 = 1;
  *a2 = *v23;
  *(a2 + 8) = 0;
  v11 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 == &v23[8])
  {
    *(a2 + 32) = v11;
    (*(*v12 + 24))(v12);
    v15 = v25;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v13 = &v24;
  *(a2 + 32) = v12;
LABEL_16:
  *v13 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v24 == &v23[8])
  {
    (*(*v24 + 32))(v24, v11);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

LABEL_21:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19, v11);
    v14 = v21;
    if (v21 != v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v14 = v21;
    if (v21 != v20)
    {
LABEL_25:
      if (v14)
      {
        (*(*v14 + 40))(v14, v11);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v14 + 32))(v14, v11);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF7778;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF76E8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF76E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF76E8;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF76E8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0978CA7)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0978CA7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0978CA7))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0978CA7 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7778;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7778;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7778;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<double>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<double>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(v21, v24);
  if ((v27 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  v4 = v24[0];
  v23[0] = *&v24[1];
  *(v23 + 15) = *&v24[16];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v17);
  v5 = v17;
  v6 = v18 - v17;
  if (v18 == v17)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v18 - v17);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = operator new(0x48uLL);
  *v9 = &unk_1F5AF77D8;
  *(v9 + 1) = v7;
  *(v9 + 2) = v8;
  *(v9 + 3) = v8;
  v9[32] = v4;
  *(v9 + 33) = v23[0];
  v10 = *(v23 + 15);
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 6) = v10;
  v22 = v9;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v11 = (*(*v9 + 16))(v9);
  v20 = v11;
  *v24 = 0;
  if (!v11)
  {
    v25 = 0;
    v26 = 1;
    *a2 = *v24;
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_15:
    v14 = (a2 + 32);
    goto LABEL_16;
  }

  if (v11 == v19)
  {
    v25 = &v24[8];
    (*(*v11 + 24))(v11, &v24[8]);
    v13 = v25;
  }

  else
  {
    v13 = (*(*v11 + 16))(v11);
    v25 = v13;
  }

  v26 = 1;
  *a2 = *v24;
  *(a2 + 8) = 0;
  v12 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v13)
  {
    goto LABEL_15;
  }

  if (v13 == &v24[8])
  {
    *(a2 + 32) = v12;
    (*(*v13 + 24))(v13);
    v16 = v26;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v14 = &v25;
  *(a2 + 32) = v13;
LABEL_16:
  *v14 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_17:
  if (v25 == &v24[8])
  {
    (*(*v25 + 32))(v25, v12);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_21:
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20, v12);
    v15 = v22;
    if (v22 != v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    v15 = v22;
    if (v22 != v21)
    {
LABEL_25:
      if (v15)
      {
        (*(*v15 + 40))(v15, v12);
      }

      if (v5)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  (*(*v15 + 32))(v15, v12);
  if (v5)
  {
LABEL_28:
    operator delete(v5);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF7868;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF77D8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF77D8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5AF77D8;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  v2[8] = *(a1 + 64);
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF77D8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09790BCLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09790BCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09790BCLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09790BCLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7868;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7868;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7868;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::StringRef>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::StringRef>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<llvm::StringRef>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef> &>(v4, &v7, &v5);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
    if ((v11 & 1) != 0 && v10 == 1)
    {
      if (v9 == &v8)
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void mlir::SparseElementsAttr::try_value_begin_impl<llvm::StringRef>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v20);
  v9 = v20;
  v10 = v21 - v20;
  if (v21 == v20)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = operator new(v21 - v20);
    v12 = &v11[v10];
    memcpy(v11, v9, v10);
  }

  v13 = operator new(0x48uLL);
  *v13 = &unk_1F5AF78C8;
  v13[1] = v11;
  v13[2] = v12;
  v13[3] = v12;
  v13[4] = v5;
  v13[5] = v6;
  v13[7] = 0;
  v13[8] = 0;
  v13[6] = 0;
  v28 = v13;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  v14 = (*(*v13 + 16))(v13);
  v23 = v14;
  *&v24[0] = 0;
  if (!v14)
  {
    v25 = 0;
    v26 = 1;
    *a2 = *&v24[0];
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_13:
    v17 = (a2 + 32);
    goto LABEL_14;
  }

  if (v14 == v22)
  {
    v25 = (v24 + 8);
    (*(*v14 + 24))(v14, v24 + 8);
    v16 = v25;
  }

  else
  {
    v16 = (*(*v14 + 16))(v14);
    v25 = v16;
  }

  v26 = 1;
  *a2 = *&v24[0];
  *(a2 + 8) = 0;
  v15 = a2 + 8;
  *(a2 + 40) = 0;
  if (!v16)
  {
    goto LABEL_13;
  }

  if (v16 == (v24 + 8))
  {
    *(a2 + 32) = v15;
    (*(*v16 + 24))(v16);
    v19 = v26;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v17 = &v25;
  *(a2 + 32) = v16;
LABEL_14:
  *v17 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_15:
  if (v25 == (v24 + 8))
  {
    (*(*v25 + 32))(v25, v15);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_19:
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23, v15);
    v18 = v28;
    if (v28 != v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))();
    }

    v18 = v28;
    if (v28 != v27)
    {
LABEL_23:
      if (v18)
      {
        (*(*v18 + 40))(v18, v15);
      }

      if (v9)
      {
        goto LABEL_26;
      }

      return;
    }
  }

  (*(*v18 + 32))(v18, v15);
  if (v9)
  {
LABEL_26:
    operator delete(v9);
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = a1;
  v4 = *a2;
  v15 = *a2;
  v16[0] = 0;
  v18 = 0;
  v5 = *(a2 + 40);
  if (v5 == 1)
  {
    v6 = a2[4];
    if (v6)
    {
      if (v6 == a2 + 1)
      {
        v17 = v16;
        (*(*v6 + 24))(v6, v16);
        v4 = v15;
      }

      else
      {
        v17 = (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  result = operator new(0x38uLL);
  *result = &unk_1F5AF7958;
  result[1] = v4;
  *(result + 16) = 0;
  v8 = (result + 2);
  *(result + 48) = 0;
  if ((v5 & 1) == 0)
  {
    *(a3 + 8) = result;
    return result;
  }

  v9 = v17;
  if (v17)
  {
    if (v17 == v16)
    {
      result[5] = v8;
      v13 = result;
      (*(*v9 + 24))(v9);
      result = v13;
      v13[48] = 1;
      v14 = v18;
      *(a3 + 8) = v13;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      v11 = (*(*v17 + 16))(v17, v8);
      result = v10;
      v10[5] = v11;
      *(v10 + 48) = 1;
      LOBYTE(v11) = v18;
      *(a3 + 8) = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result[5] = 0;
    *(result + 48) = 1;
    v12 = v18;
    *(a3 + 8) = result;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = v17;
  if (v17 == v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF78C8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF78C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5AF78C8;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v6 = operator new(v3 - v4);
    v2[1] = v6;
    v2[2] = v6;
    v7 = &v6[v5];
    v2[3] = &v6[v5];
    memcpy(v6, v4, v5);
    v2[2] = v7;
  }

  v8 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v8;
  v2[8] = *(a1 + 64);
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF78C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = operator new(v4 - v5);
    *(a2 + 8) = v7;
    *(a2 + 16) = v7;
    v8 = &v7[v6];
    *(a2 + 24) = &v7[v6];
    memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09794D3)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09794D3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09794D3))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09794D3 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7958;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7958;
  if (*(a1 + 48) == 1)
  {
    v1 = a1[5];
    if (v1 == a1 + 2)
    {
      v2 = a1;
      (*(*v1 + 32))(a1[5]);
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(a1[5]);
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7958;
  result[1] = v5;
  *(result + 16) = 0;
  v6 = (result + 2);
  *(result + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == a1 + 16)
      {
        result[5] = v6;
        v10 = result;
        (*(*v7 + 24))(v7);
        result = v10;
      }

      else
      {
        v8 = result;
        v9 = (*(*v7 + 16))(v7, v6);
        result = v8;
        v8[5] = v9;
      }
    }

    else
    {
      result[5] = 0;
    }

    *(result + 48) = 1;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(v4);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::SparseElementsAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::SparseElementsAttr>(void *a1, int64x2_t *a2, int64x2_t *a3)
{
  v24 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v22 = *a3;
  v23 = v7;
  v8 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v3, v4, &v23, &v22);
  v10 = v9;
  if (v5)
  {
    v11 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_1E09721B0);
    v5 = *v11;
  }

  if (v6)
  {
    v12 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_1E09721B0);
    v6 = *v12;
  }

  mlir::Attribute::getContext(&v24);
  *&v25 = v8;
  *(&v25 + 1) = v10;
  Context = mlir::Attribute::getContext(&v25);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v26[1] = Context;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v32[1] = v26;
  v29 = v25;
  v30 = v5;
  v31 = v6;
  v15 = (v5 >> 4) ^ (v5 >> 9);
  v16 = 0x9AE16A3B2F90404FLL * ((v6 >> 4) ^ (v6 >> 9));
  v17 = __ROR8__(0xB492B66FBE98F273 * ((v29 >> 4) ^ (v29 >> 9)) - v15, 43);
  v18 = __ROR8__(v16 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v15;
  v19 = __ROR8__(v15 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v16 - 0x4B6D499041670D8DLL * ((v29 >> 4) ^ (v29 >> 9)) + 24;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)));
  v27[0] = &v29;
  v27[1] = v32;
  v28 = &v29;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
}

void mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::StridedLayoutAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSB_24StridedLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  *(a2 + 144) = "builtin.strided_layout";
  *(a2 + 152) = 22;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::StridedLayoutAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap;
  v2[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity;
  v2[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout;
  {
    v5 = v2;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  return mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
}

uint64_t mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
  return mlir::AffineMap::isIdentity(&StridedLinearLayoutMap);
}

BOOL mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v16 = a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  mlir::AttrTypeSubElementHandler<std::tuple<long long,llvm::ArrayRef<long long>>,void>::replace(&v14, &v26);
  Context = mlir::Attribute::getContext(&v16);
  v2 = v26;
  v22 = v26;
  v23 = v25;
  v24 = 0x600000000;
  v3 = v28;
  if (!v28)
  {
    v3 = 0;
    v6 = v25;
    goto LABEL_9;
  }

  if (v28 < 7)
  {
    v5 = v25;
    v4 = v28;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v28, 8);
  v4 = v28;
  if (v28)
  {
    v5 = v23;
LABEL_7:
    memcpy(v5, v27, 8 * v4);
  }

  LODWORD(v24) = v3;
  v2 = v22;
  v6 = v23;
LABEL_9:
  v7 = *v2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v17[1] = Context;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v21[1] = v17;
  v20[0] = v7;
  v20[1] = v6;
  v20[2] = v3;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(v6, &v6[v3]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v10 ^ 0xFF51AFD7ED558CCDLL)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
  if (v23 != v25)
  {
    free(v23);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<long long,llvm::ArrayRef<long long>>,void>::replace(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*(a1 + 8), *(a1 + 16), &__src);
  v4 = (a2 + 24);
  *(a2 + 8) = a2 + 24;
  *a2 = a1;
  *(a2 + 16) = 0x600000000;
  v5 = __src;
  if ((a2 + 8) == &__src)
  {
    goto LABEL_12;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if (__src == v12)
  {
    if (v10 < 7)
    {
      v8 = v10;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 8, a2 + 24, v10, 8);
      v8 = v10;
      v5 = __src;
      if (!v10)
      {
LABEL_10:
        *(a2 + 16) = v6;
        goto LABEL_11;
      }

      v4 = *(a2 + 8);
    }

    memcpy(v4, v5, 8 * v8);
    v5 = __src;
    goto LABEL_10;
  }

  *(a2 + 8) = __src;
  v7 = v11;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  __src = v12;
  v11 = 0;
  v5 = v12;
LABEL_11:
  v10 = 0;
LABEL_12:
  if (v5 != v12)
  {
    free(v5);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  __src = v16;
  v15 = 0x600000000;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      while (1)
      {
        v4 = v15;
        if (v15 >= HIDWORD(v15))
        {
          break;
        }

        v5 = *a1++;
        *(__src + v15) = v5;
        LODWORD(v15) = v4 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v6 = a1;
      v7 = a3;
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&__src, a1);
      a3 = v7;
      a1 = v6 + 1;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v8 = v15;
    v9 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v8 && &__src != a3)
    {
      if (v9 == v16)
      {
        v11 = v8;
        if (v8 < 7 || (v12 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v8, 8), a3 = v12, v11 = v15, v9 = __src, v15))
        {
          v13 = a3;
          memcpy(*a3, v9, 8 * v11);
          a3 = v13;
          v9 = __src;
        }

        *(a3 + 8) = v8;
      }

      else
      {
        *a3 = v9;
        v10 = HIDWORD(v15);
        *(a3 + 8) = v8;
        *(a3 + 12) = v10;
        __src = v16;
        HIDWORD(v15) = 0;
        v9 = v16;
      }

      LODWORD(v15) = 0;
    }

    if (v9 != v16)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

void mlir::AbstractAttribute::get<mlir::StringAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::StringAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSB_17StringAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSA_17StringAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  *(a2 + 144) = "builtin.string";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v6);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::SymbolRefAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::SymbolRefAttr>(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    --v2;
    v5 = *v3;
    v3 += 2;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= *(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = v3;
  v19[2] = v6;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v3, &v3[2 * v6]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::TypeAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::TypeAttr>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v8 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v8);
  v9 = v3;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v10;
  v13 = v9;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v9 >> 4) ^ (v9 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t *mlir::Dialect::addAttribute<mlir::DistinctAttr>(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  {
    mlir::Dialect::addAttribute<mlir::DistinctAttr>();
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id;
  mlir::AbstractAttribute::get<mlir::DistinctAttr>(a1, v15);
  mlir::Dialect::addAttribute(a1, v2, v15);
  v3 = v20;
  if (v20 >= 8)
  {
    if ((v20 & 4) != 0)
    {
      if ((v20 & 2) != 0)
      {
        v4 = v19;
      }

      else
      {
        v4 = v19[0];
      }

      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v19[0], v19[1]);
    }
  }

  v5 = v16;
  if (v17)
  {
    v6 = 16 * v17;
    v7 = (v16 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v16;
  }

  if (v5 != &v18)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  {
    v14 = v9;
    mlir::DistinctAttr::create();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, v10, 0, v12);
}

void mlir::AbstractAttribute::get<mlir::DistinctAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  v15 = v17;
  v16 = 0x300000000;
  *&v12 = mlir::detail::StorageUserBase<mlir::DistinctAttr,mlir::Attribute,mlir::detail::DistinctAttrStorage,mlir::detail::DistinctAttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v14 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  {
    v9 = a1;
    mlir::DistinctAttr::create();
    a1 = v9;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v11;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "builtin.distinct";
  *(a2 + 152) = 16;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DistinctAttr>(a2, v5);
}

void *mlir::detail::replaceImmediateSubElementsImpl<mlir::DistinctAttr>(uint64_t a1, uint64_t **a2)
{
  v6 = a1;
  if (*(a1 + 8))
  {
    v2 = **a2;
  }

  else
  {
    v2 = 0;
  }

  Context = mlir::Attribute::getContext(&v6);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v2);
  {
    mlir::DistinctAttr::create();
  }

  *Storage = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
  return Storage;
}

uint64_t llvm::array_pod_sort_comparator<mlir::NamedAttribute>(uint64_t *a1, uint64_t *a2)
{
  if (mlir::NamedAttribute::operator<(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return mlir::NamedAttribute::operator<(a2, a1);
  }
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(_DWORD *a1, _DWORD *a2)
{
  v93[1] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v82 = 0;
  }

  else
  {
    v2 = 0xBF58476D1CE4E5B9 * ((a1[2] >> 4) ^ (a1[2] >> 9) | (((*a1 >> 4) ^ (*a1 >> 9)) << 32));
    v3 = (v2 >> 31) ^ v2;
    *&v89 = v3;
    if (a1 + 4 == a2)
    {
      v82 = 8;
    }

    else
    {
      v4 = 0xBF58476D1CE4E5B9 * ((a1[6] >> 4) ^ (a1[6] >> 9) | (((a1[4] >> 4) ^ (a1[4] >> 9)) << 32));
      v5 = (v4 >> 31) ^ v4;
      *(&v89 + 1) = v5;
      if (a1 + 8 == a2)
      {
        v82 = 16;
      }

      else
      {
        v6 = 0xBF58476D1CE4E5B9 * ((a1[10] >> 4) ^ (a1[10] >> 9) | (((a1[8] >> 4) ^ (a1[8] >> 9)) << 32));
        v7 = (v6 >> 31) ^ v6;
        *&v90 = v7;
        if (a1 + 12 == a2)
        {
          v82 = 24;
        }

        else
        {
          v8 = 0xBF58476D1CE4E5B9 * ((a1[14] >> 4) ^ (a1[14] >> 9) | (((a1[12] >> 4) ^ (a1[12] >> 9)) << 32));
          v9 = (v8 >> 31) ^ v8;
          *(&v90 + 1) = v9;
          if (a1 + 16 == a2)
          {
            v82 = 32;
          }

          else
          {
            v10 = 0xBF58476D1CE4E5B9 * ((a1[18] >> 4) ^ (a1[18] >> 9) | (((a1[16] >> 4) ^ (a1[16] >> 9)) << 32));
            v11 = (v10 >> 31) ^ v10;
            *&v91 = v11;
            if (a1 + 20 == a2)
            {
              v82 = 40;
            }

            else
            {
              v12 = 0xBF58476D1CE4E5B9 * ((a1[22] >> 4) ^ (a1[22] >> 9) | (((a1[20] >> 4) ^ (a1[20] >> 9)) << 32));
              v13 = (v12 >> 31) ^ v12;
              *(&v91 + 1) = v13;
              if (a1 + 24 == a2)
              {
                v82 = 48;
              }

              else
              {
                v14 = 0xBF58476D1CE4E5B9 * ((a1[26] >> 4) ^ (a1[26] >> 9) | (((a1[24] >> 4) ^ (a1[24] >> 9)) << 32));
                v15 = (v14 >> 31) ^ v14;
                *&v92 = v15;
                if (a1 + 28 == a2)
                {
                  v82 = 56;
                }

                else
                {
                  v16 = 0xBF58476D1CE4E5B9 * ((a1[30] >> 4) ^ (a1[30] >> 9) | (((a1[28] >> 4) ^ (a1[28] >> 9)) << 32));
                  v17 = (v16 >> 31) ^ v16;
                  *(&v92 + 1) = v17;
                  v18 = a1 + 32;
                  if (a1 + 32 != a2)
                  {
                    v88 = &v90;
                    v19 = v11 + 0x4BF62CB950C3753ALL;
                    *(&v21 + 1) = v13 + v15 + v11 + 0x4BF62CB950C3753ALL;
                    *&v21 = 0x4BF62CB800000000;
                    v20 = v21 >> 44;
                    v22 = *(&v21 + 1) + v17;
                    *(&v21 + 1) = v15 + 0x61299596E4;
                    *&v21 = 0xBEB4006000000000;
                    v23 = v13 - 0x4B6D499041670D8DLL * (v21 >> 42) - 0x7323D61940A0DA1FLL;
                    v24 = v20 + v19 + __ROR8__(v23 + v7 + v19 + v17, 21);
                    v25 = v3 + 0x298DF016A9F64655 + v5 + v7 + v9;
                    *(&v21 + 1) = v3 + 0x298DF016A9F64655 + v5 + v7;
                    *&v21 = 0x298DF00000000000;
                    v26 = (v21 >> 44) + v3 + 0x298DF016A9F64655;
                    *(&v21 + 1) = v5 + 0x1EACB4B2AELL;
                    *&v21 = 0x8C2DD9BE00000000;
                    v27 = (0xB492B66FBE98F273 * (v21 >> 37)) ^ 0xF7ACCA5326449396;
                    v28 = v26 + __ROR8__(v27 + v3 + 0x298DF016A9F64655 + v9 - 0xAE502812AB8D92, 21);
                    v29 = 0x544962662A7EE1A4;
                    v30 = 64;
                    while (1)
                    {
                      v40 = 0xBF58476D1CE4E5B9 * ((v18[2] >> 4) ^ (v18[2] >> 9) | (((*v18 >> 4) ^ (*v18 >> 9)) << 32));
                      *&v89 = (v40 >> 31) ^ v40;
                      v41 = v18 + 4;
                      v42 = v18 + 4 == a2;
                      if (v18 + 4 == a2)
                      {
                        v50 = 0;
                        v51 = &v89 + 8;
                        v52 = 8;
                      }

                      else
                      {
                        v43 = 0xBF58476D1CE4E5B9 * ((v18[6] >> 4) ^ (v18[6] >> 9) | (((v18[4] >> 4) ^ (v18[4] >> 9)) << 32));
                        *(&v89 + 1) = (v43 >> 31) ^ v43;
                        v41 = v18 + 8;
                        v42 = v18 + 8 == a2;
                        if (v18 + 8 == a2)
                        {
                          v50 = 8;
                          v51 = v88;
                          v52 = 16;
                        }

                        else
                        {
                          v44 = 0xBF58476D1CE4E5B9 * ((v18[10] >> 4) ^ (v18[10] >> 9) | (((v18[8] >> 4) ^ (v18[8] >> 9)) << 32));
                          *&v90 = (v44 >> 31) ^ v44;
                          v41 = v18 + 12;
                          v42 = v18 + 12 == a2;
                          if (v18 + 12 == a2)
                          {
                            v50 = 16;
                            v51 = &v90 + 8;
                            v52 = 24;
                          }

                          else
                          {
                            v45 = 0xBF58476D1CE4E5B9 * ((v18[14] >> 4) ^ (v18[14] >> 9) | (((v18[12] >> 4) ^ (v18[12] >> 9)) << 32));
                            *(&v90 + 1) = (v45 >> 31) ^ v45;
                            v41 = v18 + 16;
                            v42 = v18 + 16 == a2;
                            if (v18 + 16 == a2)
                            {
                              v50 = 24;
                              v51 = &v91;
                              v52 = 32;
                            }

                            else
                            {
                              v46 = 0xBF58476D1CE4E5B9 * ((v18[18] >> 4) ^ (v18[18] >> 9) | (((v18[16] >> 4) ^ (v18[16] >> 9)) << 32));
                              *&v91 = (v46 >> 31) ^ v46;
                              v41 = v18 + 20;
                              v42 = v18 + 20 == a2;
                              if (v18 + 20 == a2)
                              {
                                v50 = 32;
                                v51 = &v91 + 8;
                                v52 = 40;
                              }

                              else
                              {
                                v47 = 0xBF58476D1CE4E5B9 * ((v18[22] >> 4) ^ (v18[22] >> 9) | (((v18[20] >> 4) ^ (v18[20] >> 9)) << 32));
                                *(&v91 + 1) = (v47 >> 31) ^ v47;
                                v41 = v18 + 24;
                                v42 = v18 + 24 == a2;
                                if (v18 + 24 == a2)
                                {
                                  v50 = 40;
                                  v51 = &v92;
                                  v52 = 48;
                                }

                                else
                                {
                                  v48 = 0xBF58476D1CE4E5B9 * ((v18[26] >> 4) ^ (v18[26] >> 9) | (((v18[24] >> 4) ^ (v18[24] >> 9)) << 32));
                                  *&v92 = (v48 >> 31) ^ v48;
                                  v41 = v18 + 28;
                                  v42 = v18 + 28 == a2;
                                  if (v18 + 28 != a2)
                                  {
                                    v49 = 0xBF58476D1CE4E5B9 * ((v18[30] >> 4) ^ (v18[30] >> 9) | (((v18[28] >> 4) ^ (v18[28] >> 9)) << 32));
                                    v18 += 32;
                                    *(&v92 + 1) = (v49 >> 31) ^ v49;
                                    v42 = v18 == a2;
                                    v50 = 56;
                                    v51 = v93;
                                    v52 = 64;
                                    goto LABEL_28;
                                  }

                                  v50 = 48;
                                  v51 = &v92 + 8;
                                  v52 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v18 = v41;
LABEL_28:
                      if ((v52 & 0x38) != 0)
                      {
                        v53 = 56 - v50;
                        v54 = v52;
                        if (v52 != 56 - v50)
                        {
                          do
                          {
                            v61 = v54;
                            v54 = v53;
                            v53 = v61 % v53;
                          }

                          while (v53);
                          v62 = (&v89 + v54);
                          do
                          {
                            v64 = *(v62 - 1);
                            v62 = (v62 - 1);
                            v63 = v64;
                            v65 = (v62 + v52);
                            v66 = v62;
                            do
                            {
                              v67 = v66;
                              v66 = v65;
                              *v67 = *v65;
                              v68 = v52 < v93 - v65;
                              v69 = &v89 + v52 - (v93 - v65);
                              v65 = (v65 + v52);
                              if (!v68)
                              {
                                v65 = v69;
                              }
                            }

                            while (v65 != v62);
                            *v66 = v63;
                          }

                          while (v62 != &v89);
                          goto LABEL_11;
                        }

                        v55 = v50 | 7;
                        if (55 - v50 < (v50 | 7uLL))
                        {
                          v55 = 55 - v50;
                        }

                        v56 = &v89;
                        if (&v89 < (&v89 | 9) + v50 + v55)
                        {
                          v57 = v52;
                          if (v51 < &v89 + v55 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v55 >= 0x1F)
                        {
                          v71 = v55 + 1;
                          v70 = (v55 + 1) & 0x60;
                          v72 = v89;
                          v73 = v90;
                          v74 = *(v51 + 1);
                          v89 = *(&v89 + v52);
                          v90 = v74;
                          *(&v89 + v52) = v72;
                          *(v51 + 1) = v73;
                          if (v70 != 32)
                          {
                            v75 = v91;
                            v76 = v92;
                            v77 = *(v51 + 3);
                            v91 = *(v51 + 2);
                            v92 = v77;
                            *(v51 + 2) = v75;
                            *(v51 + 3) = v76;
                          }

                          if (v71 == v70)
                          {
                            goto LABEL_11;
                          }

                          if ((v71 & 0x18) == 0)
                          {
                            v56 = &v89 + v70;
                            v57 = v52 + v70;
LABEL_34:
                            v58 = v56 + 1;
                            do
                            {
                              v59 = *(v58 - 1);
                              *(v58 - 1) = *(&v89 + v57);
                              *(&v89 + v57) = v59;
                              if (v58 == v51)
                              {
                                break;
                              }

                              ++v58;
                            }

                            while (v57++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v70 = 0;
                        }

                        v78 = &v51[v70];
                        v79 = (&v89 + v70);
                        v80 = v55 - v70 + 1;
                        do
                        {
                          v81 = *v79;
                          *v79++ = *v78;
                          *v78 = v81;
                          v78 += 8;
                          v80 -= 8;
                        }

                        while (v80);
                      }

LABEL_11:
                      v31 = v23 + v25 + v29 + *(&v89 + 1);
                      v23 = *(&v91 + 1) + v25 - 0x4B6D499041670D8DLL * __ROR8__(v23 + v28 + v92, 42);
                      v32 = v27 + v22;
                      v33 = v89 - 0x4B6D499041670D8DLL * v28;
                      v34 = v22 + v33;
                      v35 = v33 + *(&v89 + 1) + v90;
                      v36 = __ROR8__(v35, 44) + v33;
                      v37 = __ROR8__(v32, 33);
                      v38 = (0xB492B66FBE98F273 * __ROR8__(v31, 37)) ^ v24;
                      v28 = v36 + __ROR8__(v38 + v34 + *(&v90 + 1), 21);
                      v29 = 0xB492B66FBE98F273 * v37;
                      v39 = 0xB492B66FBE98F273 * v37 + v24 + v91;
                      v25 = v35 + *(&v90 + 1);
                      v24 = __ROR8__(v23 + v90 + v39 + *(&v92 + 1), 21) + v39 + __ROR8__(*(&v91 + 1) + v92 + v39, 44);
                      v22 = *(&v91 + 1) + v92 + v39 + *(&v92 + 1);
                      v30 += v52;
                      v27 = v38;
                      if (v42)
                      {
                        v83 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v22)));
                        v84 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v24)));
                        v85 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47)) - 0x4B6D499041670D8DLL * ((v30 ^ (v30 >> 47)) + v37);
                        v86 = 0x9DDFEA08EB382D69 * (v85 ^ (v38 - 0x4B6D499041670D8DLL * (v23 ^ (v23 >> 47)) - 0x622015F714C7D297 * (v83 ^ (v83 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) ^ ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) >> 47));
                      }
                    }
                  }

                  v82 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v89, v82, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = Slow;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = Slow;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::StringAttrStorage::construct(uint64_t *a1, void *a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = result + 5;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v23 = a2;
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    a2 = v23;
    v8 = v23[1];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a1 = v6;
    v8 = a2[1];
    if (v8)
    {
LABEL_6:
      v9 = *a2;
      v10 = v8 + 1;
      a1[10] += v8 + 1;
      v11 = *a1;
      if (*a1 && v10 + v11 <= a1[1])
      {
        *a1 = v10 + v11;
        if (v8 >= 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = result;
        v25 = a1;
        v26 = a2;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v25, v8 + 1, v10, 0);
        a2 = v26;
        v11 = Slow;
        result = v24;
        if (v8 >= 8)
        {
LABEL_9:
          v12 = v11;
          v13 = v9;
          if ((v11 - v9) >= 0x20)
          {
            if (v8 < 0x20)
            {
              v14 = 0;
              goto LABEL_16;
            }

            v14 = v8 & 0xFFFFFFFFFFFFFFE0;
            v15 = (v9 + 16);
            v16 = (v11 + 16);
            v17 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 2;
              v17 -= 32;
            }

            while (v17);
            if (v8 == v14)
            {
              goto LABEL_26;
            }

            if ((v8 & 0x18) != 0)
            {
LABEL_16:
              v12 = (v11 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v13 = (v9 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v19 = (v9 + v14);
              v20 = (v11 + v14);
              v21 = v14 - (v8 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v22 = *v19++;
                *v20++ = v22;
                v21 += 8;
              }

              while (v21);
              if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            v13 = (v9 + v14);
            v12 = (v11 + v14);
          }

          do
          {
LABEL_25:
            v28 = *v13++;
            *v12++ = v28;
          }

          while (v13 != (v9 + v8));
LABEL_26:
          *(v11 + v8) = 0;
          goto LABEL_27;
        }
      }

      v12 = v11;
      v13 = v9;
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_27:
  v29 = a2[2];
  *result = 0;
  result[1] = v29;
  result[2] = v11;
  result[3] = v8;
  result[4] = 0;
  return result;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v20 = *(a6 + 8);
  v9 = *a6;
  v18 = v8;
  __p = v9;
  *(a6 + 8) = 0;
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = llvm::hash_value(&__p, a2);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)));
  v16[0] = &v18;
  v16[1] = v21;
  v17 = &v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 >= 0x41)
  {
    if (__p)
    {
      v15 = result;
      operator delete[](__p);
      return v15;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && *(a2 + 16) == v2[1] && (v3 = *(a2 + 32), v3 == v2[3]))
  {
    return memcmp(*(a2 + 24), v2[2], v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::AsmParser::parseInteger<int>(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, int *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v30 = 1;
  v29 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v29, 0x20u, &__p);
  v8 = v32;
  if (v32 >= 0x41)
  {
    v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&__p);
    v14 = __p;
    if (v13 <= 0x40)
    {
      *a2 = *__p;
    }

    else
    {
      *a2 = -1;
      if (!v14)
      {
        v10 = v30;
        v11 = -1;
        v32 = v30;
        if (v30 > 0x40)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    operator delete[](v14);
    v10 = v30;
    v11 = *a2;
    v32 = v30;
    if (v30 > 0x40)
    {
      goto LABEL_15;
    }

LABEL_10:
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
    if (!v10)
    {
      v15 = 0;
    }

    __p = (v15 & v11);
LABEL_16:
    if (__p == v29)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v9 = __p;
  *a2 = __p;
  v10 = v30;
  v11 = v9;
  v32 = v30;
  if (v30 <= 0x40)
  {
    goto LABEL_10;
  }

LABEL_15:
  llvm::APInt::initSlowCase(&__p, v11, 0);
  if (v32 <= 0x40)
  {
    goto LABEL_16;
  }

  v16 = llvm::APInt::equalSlowCase(&__p, &v29);
  if (__p)
  {
    operator delete[](__p);
  }

  if (v16)
  {
LABEL_17:
    LOBYTE(v7) = 1;
    v12 = 1;
    if (v30 < 0x41)
    {
      return v7 | (v12 << 8);
    }

    goto LABEL_43;
  }

LABEL_22:
  v27 = "integer value too large";
  v28 = 259;
  (*(*a1 + 24))(&__p, a1, v6, &v27);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = v37;
    if (v37)
    {
      v18 = v38;
      v19 = v37;
      if (v38 != v37)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = v37;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  LOBYTE(v7) = 0;
  v12 = 1;
  if (v30 >= 0x41)
  {
LABEL_43:
    if (v29)
    {
      v25 = v7;
      operator delete[](v29);
      LOBYTE(v7) = v25;
    }
  }

  return v7 | (v12 << 8);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v6 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(*a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = v6;
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v4 + 1, 8);
    LODWORD(v4) = *(v2 + 8);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 8);
  return 1;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v17);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v5 + 16;
    v9 = v6 + 6;
    v10 = 32 * v7;
    do
    {
      *(v8 - 8) = *(v9 - 4);
      *(v8 - 16) = *(v9 - 3);
      *(v9 - 4) = 0;
      *(v8 + 8) = *v9;
      *v8 = *(v9 - 1);
      v8 += 32;
      *v9 = 0;
      v9 += 8;
      v10 -= 32;
    }

    while (v10);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = -(v12 * 4);
      v14 = &v6[v12 - 4];
      do
      {
        if (*(v14 + 8) >= 0x41u && *v14)
        {
          operator delete[](*v14);
        }

        if (*(v14 - 8) >= 0x41u)
        {
          v15 = *(v14 - 16);
          if (v15)
          {
            operator delete[](v15);
          }
        }

        v14 -= 32;
        v13 += 32;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v16 = v17;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v16;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(unsigned int *a1, unint64_t a2)
{
  v7 = 0;
  v3 = a1 + 4;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 64, &v7);
  v5 = v4;
  llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::moveElementsForGrow(a1, v4);
  v6 = v7;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v5;
  a1[3] = v6;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::moveElementsForGrow(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return;
  }

  v5 = *a1;
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v7 = (a2 + 40);
  v8 = v2 << 6;
  v9 = (v5 + 40);
  do
  {
    while (1)
    {
      v10 = v7 - 2;
      v11 = v9 - 2;
      if (v6 != v9[-2].n128_u64[0])
      {
        break;
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v11);
      v12 = v7;
      v13 = v9;
      if (v6 != v9->n128_u64[0])
      {
        goto LABEL_8;
      }

LABEL_3:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v13);
      v7 += 4;
      v9 += 4;
      v8 -= 64;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    v12 = v7;
    v13 = v9;
    if (v6 == v9->n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v12, v13);
    v7 += 4;
    v9 += 4;
    v8 -= 64;
  }

  while (v8);
LABEL_9:
  v14 = a1[2];
  if (v14)
  {
    v15 = v14 << 6;
    v16 = (v15 + *a1 - 24);
    v17 = -v15;
    while (1)
    {
      if (v6 == *v16)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
        v18 = (v16 - 32);
        if (v6 != *(v16 - 4))
        {
          goto LABEL_16;
        }

LABEL_11:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
        v16 = (v16 - 64);
        v17 += 64;
        if (!v17)
        {
          return;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v16);
        v18 = (v16 - 32);
        if (v6 == *(v16 - 4))
        {
          goto LABEL_11;
        }

LABEL_16:
        llvm::detail::IEEEFloat::~IEEEFloat(v18);
        v16 = (v16 - 64);
        v17 += 64;
        if (!v17)
        {
          return;
        }
      }
    }
  }
}

uint64_t mlir::detail::DenseIntOrFPElementsAttrStorage::getKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  *&v27 = result;
  *(&v27 + 1) = a2;
  if (!a4)
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
    goto LABEL_9;
  }

  v28[0] = mlir::ElementsAttr::isSplat(&v27);
  result = mlir::Type::isInteger(v28, 1);
  v10 = result;
  if (!a5)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v17);
    if (v10)
    {
      return mlir::detail::DenseIntOrFPElementsAttrStorage::getKeyForBoolData(v27, *(&v27 + 1), a3, a4, NumElements, a6);
    }

    isSplat = mlir::ElementsAttr::isSplat(&v27);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
    if (DenseElementBitWidth)
    {
      v21 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      v21 = (DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3;
    }

    if (a4 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = a4;
    }

    result = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, &a3[v22]);
    v23 = result;
    if (v21 == a4)
    {
LABEL_23:
      *a6 = v27;
      *(a6 + 16) = a3;
      *(a6 + 24) = v22;
      *(a6 + 32) = v23;
      goto LABEL_24;
    }

    v24 = &a3[v21];
    v25 = v21;
    while (1)
    {
      result = memcmp(a3, v24, v21);
      if (result)
      {
        break;
      }

      v25 += v21;
      v24 += v21;
      if (v25 == a4)
      {
        goto LABEL_23;
      }
    }

    v26 = v27;
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v31 = 0;
    v32 = 0xFF51AFD7ED558CCDLL;
    v28[0] = v23;
    v28[1] = llvm::hashing::detail::hash_combine_range_impl<char const>(v24, &a3[a4]);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine(v28, 0, v29, v30);
    *a6 = v26;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_9:
    *(a6 + 40) = 0;
    return result;
  }

  v11 = v27;
  if (!result)
  {
    result = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, &a3[a4]);
    *a6 = v11;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_24:
    *(a6 + 40) = 1;
    return result;
  }

  if (*a3)
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  }

  else
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v13 = *v12;
  v14 = HIDWORD(v13);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  *a6 = v27;
  *(a6 + 8) = *(&v11 + 1);
  *(a6 + 16) = v12;
  *(a6 + 24) = 1;
  *(a6 + 32) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  *(a6 + 40) = 1;
  return result;
}

uint64_t mlir::detail::DenseIntOrFPElementsAttrStorage::getKeyForBoolData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if ((v6 & 1) == 0)
  {
    v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  if (a4 == 1)
  {
    LODWORD(v8) = *v7;
    if (v6 == v8)
    {
      v8 = v8;
LABEL_19:
      v16 = HIDWORD(v8);
      v17 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
      v11 = 1;
      v13 = 1;
      goto LABEL_21;
    }
  }

  v9 = &a3[a4];
  if ((a5 & 7) == 0 || (v6 & 1) == 0)
  {
    v10 = &a3[a4];
    if (!a4)
    {
LABEL_18:
      v8 = *v7;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v10 = (v9 - 1);
  if (0xFFu >> (8 - (a5 & 7)) != *(v9 - 1))
  {
LABEL_20:
    v18 = result;
    v19 = a2;
    v20 = a6;
    v23 = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, &a3[a4]);
    v7 = a3;
    v11 = a4;
    a2 = v19;
    a6 = v20;
    v12 = v23;
    result = v18;
    v13 = 0;
    goto LABEL_21;
  }

  if (a4 != 1)
  {
LABEL_12:
    if (v6)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    while (*v15 == v14)
    {
      if (++v15 == v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
  v12 = 0xE58356463FB8AC99;
  v13 = 1;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_21:
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *(a2 + 8) && (v3 = v2[3], v3 == *(a2 + 40)))
  {
    return memcmp(v2[2], *(a2 + 32), v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, uint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 40);
  if (v5)
  {
    v16 = **a1;
    v7 = *(*a1 + 2);
    a2[10] += v5;
    if (*a2 && (v8 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8), &v8[v5] <= a2[1]))
    {
      *a2 = &v8[v5];
    }

    else
    {
      v14 = v7;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, v5, v5, 3);
      v7 = v14;
      v8 = Slow;
    }

    memcpy(v8, v7, v5);
    v4 = v16;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 48 <= a2[1])
  {
    *a2 = v10 + 48;
    goto LABEL_10;
  }

LABEL_13:
  v17 = v4;
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
  v4 = v17;
  v10 = v13;
LABEL_10:
  *v10 = 0;
  *(v10 + 8) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 1), v10);
  }

  return v10;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, void *a2)
{
  v2 = **a1;
  v9 = (*a1)[1];
  v10 = *(*a1 + 4);
  a2[10] += 48;
  if (*a2 && (v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v3 + 48 <= a2[1]))
  {
    *a2 = v3 + 48;
  }

  else
  {
    v6 = a1;
    v8 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v2 = v8;
    v3 = Slow;
    a1 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]";
  v6 = 91;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(pthread_rwlock_t **a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, const unsigned __int8 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a5 + 64) == 1)
  {
    v18 = *a5;
    v10 = *(a5 + 6);
    v19 = *(a5 + 2);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = a1;
        v12 = a5;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a5 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v12 + 24);
        a5 = v12;
        a1 = v11;
      }

      else
      {
        v20 = *(a5 + 24);
        v21 = *(a5 + 5);
      }

      *(a5 + 6) = 0;
    }

    v23 = *(a5 + 56);
    v24 = 1;
  }

  v13 = mlir::DialectResourceBlobManager::insert(a1, a3, a4, &v18);
  if (v24 == 1 && v22 >= 8)
  {
    v14 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v14, v18, *(&v18 + 1), v19);
    v15 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v16 = &v20;
        }

        else
        {
          v16 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v16);
      }

      if ((v15 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1));
      }
    }
  }

  {
    mlir::detail::Parser::parseDenseResourceElementsAttr();
  }

  v17 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
  *a6 = v13;
  a6[1] = v17;
  a6[2] = a2;
}

uint64_t mlir::BuiltinDialect::initialize(mlir::BuiltinDialect *this)
{
  mlir::BuiltinDialect::registerTypes(this);
  mlir::BuiltinDialect::registerAttributes(this);
  mlir::BuiltinDialect::registerLocationAttributes(this);
  mlir::RegisteredOperationName::insert<mlir::ModuleOp>(this);
  mlir::RegisteredOperationName::insert<mlir::UnrealizedConversionCastOp>(this);
  v2 = operator new(0x28uLL);
  v3 = mlir::ResourceBlobManagerDialectInterface::ResourceBlobManagerDialectInterface(v2, this);
  *v3 = &unk_1F5AF7C10;
  v11 = v3;
  mlir::Dialect::addInterface(this, &v11);
  v4 = v11;
  v11 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = operator new(0x20uLL);
  {
    v10 = v5;
    mlir::BuiltinDialect::initialize();
    v5 = v10;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id;
  v5[1] = this;
  v5[2] = v6;
  *v5 = &unk_1F5AF7CE8;
  v5[3] = v2;
  v11 = v5;
  mlir::Dialect::addInterface(this, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return mlir::builtin_dialect_detail::addBytecodeInterface(this, v7);
}

mlir::BuiltinDialect *mlir::BuiltinDialect::BuiltinDialect(mlir::BuiltinDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "builtin", 7, a2, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id);
  *v3 = &unk_1F5AF79B8;
  mlir::BuiltinDialect::initialize(v3);
  return this;
}

void sub_1DFBAB9C4(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::ModuleOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, uint64_t a3)
{
  v6 = mlir::OperationState::addRegion(a2);
  v7 = operator new(0x48uLL);
  *v7 = 0u;
  v7[1] = 0u;
  *(v7 + 4) = v7 + 2;
  *(v7 + 5) = v7 + 2;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(v7 + 6) = 0;
  result = llvm::ilist_traits<mlir::Block>::addNodeToList(v6, v7);
  v9 = *v6;
  *(v7 + 2) = v6;
  *(v7 + 1) = v9;
  v7 = (v7 + 8);
  *(v9 + 8) = v7;
  *v6 = v7;
  if (*(a3 + 16) == 1)
  {
    v15 = 261;
    v10 = *(a3 + 8);
    v14[0] = *a3;
    v14[1] = v10;
    StringAttr = mlir::Builder::getStringAttr(a1, v14);
    NamedAttr = mlir::Builder::getNamedAttr(a1, "sym_name", 8, StringAttr);
    return mlir::NamedAttrList::push_back(a2 + 112, NamedAttr, v13);
  }

  return result;
}

uint64_t mlir::ModuleOp::create(uint64_t a1, __int128 *a2)
{
  v5 = a1;
  v4[0] = mlir::Attribute::getContext(&v5);
  memset(&v4[1], 0, 24);
  return mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v4, v5, a2);
}

uint64_t mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(mlir::StringAttr **a1, uint64_t a2, __int128 *a3)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v16, &v14, v13);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  v14 = *a3;
  v15 = *(a3 + 2);
  mlir::ModuleOp::build(a1, v16, &v14);
  v9 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v10;
}

BOOL mlir::ModuleOp::verify(mlir::Operation **this)
{
  v140 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v6)
  {
LABEL_38:
    AttrDictionary = mlir::Operation::getAttrDictionary(*this);
    v35 = mlir::ArrayAttr::getValue(&AttrDictionary);
    if (!v36)
    {
      return 1;
    }

    v37 = v35;
    AttrData = 0;
    v39 = 0;
    v40 = 0;
    v107 = (v35 + 16 * v36);
    while (1)
    {
      v42 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*(v37 + 1));
      if (!v42)
      {
        goto LABEL_41;
      }

      v43 = v42;
      if (v40)
      {
        break;
      }

LABEL_40:
      AttrDictionary = mlir::CallGraphNode::getCallableRegion(v37);
      AttrData = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
      v39 = v41;
      v40 = v43;
LABEL_41:
      v37 = (v37 + 16);
      if (v37 == v107)
      {
        return 1;
      }
    }

    v112 = 257;
    mlir::OpState::emitOpError(this, &v109, &CallableRegion);
    if (CallableRegion)
    {
      LODWORD(v113) = 3;
      *(&v113 + 1) = "expects at most one data layout attribute";
      v114 = 41;
      v44 = v118;
      if (v119 >= v120)
      {
        if (v118 <= &v113 && v118 + 24 * v119 > &v113)
        {
          v102 = &v113 - v118;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v118, v121, v119 + 1, 24);
          v44 = v118;
          v45 = v118 + v102;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v118, v121, v119 + 1, 24);
          v45 = &v113;
          v44 = v118;
        }
      }

      else
      {
        v45 = &v113;
      }

      v46 = &v44[24 * v119];
      v47 = *v45;
      *(v46 + 2) = *(v45 + 2);
      *v46 = v47;
      ++v119;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&AttrDictionary, &CallableRegion);
    if (CallableRegion)
    {
      mlir::InFlightDiagnostic::report(&CallableRegion);
    }

    if (v127 == 1)
    {
      if (v126 != &v127)
      {
        free(v126);
      }

      v48 = v124;
      if (v124)
      {
        v49 = v125;
        v50 = v124;
        if (v125 != v124)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = v124;
        }

        v125 = v48;
        operator delete(v50);
      }

      v51 = v122;
      if (v122)
      {
        v52 = v123;
        v53 = v122;
        if (v123 != v122)
        {
          do
          {
            v55 = *--v52;
            v54 = v55;
            *v52 = 0;
            if (v55)
            {
              operator delete[](v54);
            }
          }

          while (v52 != v51);
          v53 = v122;
        }

        v123 = v51;
        operator delete(v53);
      }

      if (v118 != v121)
      {
        free(v118);
      }
    }

    v3 &= 0xFFFFFFFFFFFFFF00;
    v4 &= 0xFFFFFFFFFFFFFF00;
    v56 = mlir::Diagnostic::attachNote(v129, v3, v4);
    v57 = v56 + 16;
    v58 = *(v56 + 16);
    LODWORD(CallableRegion) = 3;
    v116 = "'";
    v117 = 1;
    v59 = *(v56 + 24);
    if (v59 >= *(v56 + 28))
    {
      if (v58 <= &CallableRegion && v58 + 24 * v59 > &CallableRegion)
      {
        v95 = &CallableRegion - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v57, v56 + 32, v59 + 1, 24);
        v58 = *(v56 + 16);
        v60 = &v95[v58];
        goto LABEL_70;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(v57, v56 + 32, v59 + 1, 24);
      v58 = *(v56 + 16);
    }

    v60 = &CallableRegion;
LABEL_70:
    v61 = v58 + 24 * *(v56 + 24);
    v62 = *v60;
    *(v61 + 16) = *(v60 + 2);
    *v61 = v62;
    ++*(v56 + 24);
    LOWORD(v119) = 261;
    CallableRegion = AttrData;
    v116 = v39;
    v63 = mlir::Diagnostic::operator<<(v56, &CallableRegion);
    v64 = *(v63 + 16);
    LODWORD(v109) = 3;
    v110 = "' is a data layout attribute";
    v111 = 28;
    v65 = *(v63 + 24);
    if (v65 >= *(v63 + 28))
    {
      if (v64 <= &v109 && v64 + 24 * v65 > &v109)
      {
        v96 = &v109 - v64;
        v97 = v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v63 + 16, v63 + 32, v65 + 1, 24);
        v63 = v97;
        v64 = *(v97 + 16);
        v66 = &v96[v64];
      }

      else
      {
        v92 = v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v63 + 16, v63 + 32, v65 + 1, 24);
        v63 = v92;
        v64 = *(v92 + 16);
        v66 = &v109;
      }
    }

    else
    {
      v66 = &v109;
    }

    v67 = v64 + 24 * *(v63 + 24);
    v68 = *v66;
    *(v67 + 16) = *(v66 + 2);
    *v67 = v68;
    ++*(v63 + 24);
    v1 &= 0xFFFFFFFFFFFFFF00;
    v2 &= 0xFFFFFFFFFFFFFF00;
    v69 = mlir::Diagnostic::attachNote(v129, v1, v2);
    v70 = *(v69 + 16);
    LODWORD(CallableRegion) = 3;
    v116 = "'";
    v117 = 1;
    v71 = *(v69 + 24);
    if (v71 >= *(v69 + 28))
    {
      if (v70 <= &CallableRegion && v70 + 24 * v71 > &CallableRegion)
      {
        v98 = &CallableRegion - v70;
        v99 = v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v69 + 16, v69 + 32, v71 + 1, 24);
        v69 = v99;
        v70 = *(v99 + 16);
        v72 = &v98[v70];
      }

      else
      {
        v93 = v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v69 + 16, v69 + 32, v71 + 1, 24);
        v69 = v93;
        v70 = *(v93 + 16);
        v72 = &CallableRegion;
      }
    }

    else
    {
      v72 = &CallableRegion;
    }

    v73 = v70 + 24 * *(v69 + 24);
    v74 = *v72;
    *(v73 + 16) = *(v72 + 2);
    *v73 = v74;
    ++*(v69 + 24);
    v75 = v69;
    *&v113 = mlir::CallGraphNode::getCallableRegion(v37);
    v76 = mlir::OpaqueAttr::getAttrData(&v113);
    LOWORD(v119) = 261;
    CallableRegion = v76;
    v116 = v77;
    v78 = mlir::Diagnostic::operator<<(v75, &CallableRegion);
    v79 = *(v78 + 16);
    LODWORD(v109) = 3;
    v110 = "' is a data layout attribute";
    v111 = 28;
    v80 = *(v78 + 24);
    if (v80 >= *(v78 + 28))
    {
      if (v79 <= &v109 && v79 + 24 * v80 > &v109)
      {
        v100 = &v109 - v79;
        v101 = v78;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 16, v78 + 32, v80 + 1, 24);
        v78 = v101;
        v79 = *(v101 + 16);
        v81 = &v100[v79];
      }

      else
      {
        v94 = v78;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 16, v78 + 32, v80 + 1, 24);
        v78 = v94;
        v79 = *(v94 + 16);
        v81 = &v109;
      }
    }

    else
    {
      v81 = &v109;
    }

    v82 = v79 + 24 * *(v78 + 24);
    v83 = *v81;
    *(v82 + 16) = *(v81 + 2);
    *v82 = v83;
    ++*(v78 + 24);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v139 == 1)
    {
      if (v138 != &v139)
      {
        free(v138);
      }

      v84 = __p;
      if (__p)
      {
        v85 = v137;
        v86 = __p;
        if (v137 != __p)
        {
          do
          {
            v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
          }

          while (v85 != v84);
          v86 = __p;
        }

        v137 = v84;
        operator delete(v86);
      }

      v87 = v134;
      if (v134)
      {
        v88 = v135;
        v89 = v134;
        if (v135 != v134)
        {
          do
          {
            v91 = *--v88;
            v90 = v91;
            *v88 = 0;
            if (v91)
            {
              operator delete[](v90);
            }
          }

          while (v88 != v87);
          v89 = v134;
        }

        v135 = v87;
        operator delete(v89);
      }

      if (v130 != v133)
      {
        free(v130);
      }
    }

    goto LABEL_40;
  }

  v7 = Value;
  v8 = 16 * v6;
  v1 = 0x697369765F6D7973;
  v2 = 0x7974696C69626973;
  v3 = 0x656D616E5F6D7973;
  while (1)
  {
    v113 = *v7;
    AttrDictionary = mlir::CallGraphNode::getCallableRegion(&v113);
    v10 = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
    if (v11)
    {
      v12 = v10;
      v13 = memchr(v10, 46, v11);
      if (v13)
      {
        if (v13 - v12 != -1)
        {
          goto LABEL_8;
        }
      }
    }

    CallableRegion = mlir::CallGraphNode::getCallableRegion(&v113);
    v14 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
    if (v15 == 14)
    {
      break;
    }

    if (v15 != 8 || *v14 != 0x656D616E5F6D7973)
    {
      goto LABEL_15;
    }

LABEL_8:
    ++v7;
    v8 -= 16;
    if (!v8)
    {
      goto LABEL_38;
    }
  }

  if (*v14 == 0x697369765F6D7973 && *(v14 + 6) == 0x7974696C69626973)
  {
    goto LABEL_8;
  }

LABEL_15:
  v112 = 257;
  mlir::OpState::emitOpError(this, &v109, &AttrDictionary);
  if (AttrDictionary)
  {
    LODWORD(CallableRegion) = 3;
    v116 = "can only contain attributes with dialect-prefixed names, found: '";
    v117 = 65;
    p_CallableRegion = &CallableRegion;
    v17 = v130;
    if (v131 >= v132)
    {
      if (v130 <= &CallableRegion && v130 + 24 * v131 > &CallableRegion)
      {
        v104 = &CallableRegion - v130;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
        v17 = v130;
        p_CallableRegion = v130 + v104;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
        p_CallableRegion = &CallableRegion;
        v17 = v130;
      }
    }

    v18 = &v17[24 * v131];
    v19 = *p_CallableRegion;
    *(v18 + 2) = *(p_CallableRegion + 2);
    *v18 = v19;
    ++v131;
  }

  v108 = mlir::CallGraphNode::getCallableRegion(&v113);
  v20 = mlir::OpaqueAttr::getAttrData(&v108);
  if (AttrDictionary)
  {
    LOWORD(v119) = 261;
    CallableRegion = v20;
    v116 = v21;
    mlir::Diagnostic::operator<<(v129, &CallableRegion);
    if (AttrDictionary)
    {
      LODWORD(CallableRegion) = 3;
      v116 = "'";
      v117 = 1;
      v22 = &CallableRegion;
      v23 = v130;
      if (v131 >= v132)
      {
        if (v130 <= &CallableRegion && v130 + 24 * v131 > &CallableRegion)
        {
          v105 = &CallableRegion - v130;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v23 = v130;
          v22 = v130 + v105;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v22 = &CallableRegion;
          v23 = v130;
        }
      }

      v24 = &v23[24 * v131];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      ++v131;
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v139 == 1)
  {
    if (v138 != &v139)
    {
      free(v138);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v137;
      v29 = __p;
      if (v137 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v137 = v27;
      operator delete(v29);
    }

    v30 = v134;
    if (v134)
    {
      v31 = v135;
      v32 = v134;
      if (v135 != v134)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            operator delete[](v33);
          }
        }

        while (v31 != v30);
        v32 = v134;
      }

      v135 = v30;
      operator delete(v32);
    }

    if (v130 != v133)
    {
      free(v130);
    }
  }

  return v26;
}

BOOL mlir::UnrealizedConversionCastOp::verify(mlir::UnrealizedConversionCastOp *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    return 1;
  }

  v17 = 257;
  mlir::OpState::emitOpError(this, &v16, v21);
  if (v21[0])
  {
    v18 = 3;
    v19 = "expected at least one result for cast operation";
    v20 = 47;
    v2 = &v18;
    v3 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v15 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v3 = v22;
        v2 = (v22 + v15);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v2 = &v18;
        v3 = v22;
      }
    }

    v4 = &v3[24 * v23];
    v5 = *v2;
    *(v4 + 2) = *(v2 + 2);
    *v4 = v5;
    ++v23;
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v29;
      v8 = __p;
      if (v29 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v29 = v6;
      operator delete(v8);
    }

    v9 = v26;
    if (v26)
    {
      v10 = v27;
      v11 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v26;
      }

      v27 = v9;
      operator delete(v11);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v1;
}

uint64_t mlir::ModuleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v74.var0 = "sym_name";
  v74.var1 = 8;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 53;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v75.var0 = "sym_visibility";
  v75.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 59;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        operator delete[](v50);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::ModuleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "sym_name", 8, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_visibility", 14, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}