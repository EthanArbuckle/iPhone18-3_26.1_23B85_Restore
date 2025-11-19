void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED1Ev(void *result)
{
  *result = &unk_1F5AF6380;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6380;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6380;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6380;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0973AE2)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0973AE2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0973AE2))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0973AE2 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6410;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6410;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6410;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<unsigned long long>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<unsigned long long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v20, v23);
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
  *v9 = &unk_1F5AF6470;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6500;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED1Ev(void *result)
{
  *result = &unk_1F5AF6470;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6470;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6470;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6470;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0973EA5)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0973EA5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0973EA5))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0973EA5 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6500;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6500;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6500;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<signed char>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<signed char>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<signed char,void>(v20, v23);
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
  *v9 = &unk_1F5AF6560;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF65F0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED1Ev(void *result)
{
  *result = &unk_1F5AF6560;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6560;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6560;
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
  *(v2 + 41) = *(a1 + 41);
  *(v2 + 57) = 0;
  *(v2 + 15) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6560;
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
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0974268)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0974268 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0974268))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0974268 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF65F0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF65F0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF65F0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<short>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<short>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<short,void>(v20, v23);
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
  *v9 = &unk_1F5AF6650;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF66E0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED1Ev(void *result)
{
  *result = &unk_1F5AF6650;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6650;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6650;
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
  *(v2 + 42) = *(a1 + 42);
  *(v2 + 58) = 0;
  *(v2 + 31) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6650;
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
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097462BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097462BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097462BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097462BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF66E0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF66E0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF66E0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<int>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<int>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<int,void>(v20, v23);
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
  *v9 = &unk_1F5AF6740;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF67D0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED1Ev(void *result)
{
  *result = &unk_1F5AF6740;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6740;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6740;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6740;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09749EELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09749EELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09749EELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09749EELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF67D0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF67D0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF67D0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<long long>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<long long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<long long,void>(v20, v23);
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
  *v9 = &unk_1F5AF6830;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF68C0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED1Ev(void *result)
{
  *result = &unk_1F5AF6830;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6830;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6830;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6830;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0974DB1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0974DB1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0974DB1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0974DB1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF68C0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF68C0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF68C0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(a1, a3);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>(a1, a3);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<long>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<long long,void>(v20, v23);
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
  *v9 = &unk_1F5AF6920;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF69B0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED1Ev(void *result)
{
  *result = &unk_1F5AF6920;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6920;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6920;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6920;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0975174)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0975174 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0975174))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0975174 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF69B0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF69B0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF69B0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<unsigned long>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<unsigned long>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v20, v23);
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
  *v9 = &unk_1F5AF6A10;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6AA0;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED1Ev(void *result)
{
  *result = &unk_1F5AF6A10;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6A10;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6A10;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6A10;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0975537)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0975537 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0975537))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0975537 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6AA0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6AA0;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6AA0;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APInt>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APInt>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APInt>>(a1, &v23);
  v29[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetComplexIntValues(v29, v32);
  if ((v35 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    goto LABEL_27;
  }

  v4 = v32[0];
  v31[0] = *(v32 + 1);
  *(v31 + 15) = v32[1];
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v21);
  v5 = v21;
  v6 = v22 - v21;
  __p = v21;
  if (v22 == v21)
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

    v7 = operator new(v22 - v21);
    v8 = &v7[v6];
    memcpy(v7, v5, v6);
  }

  v9 = v24;
  v10 = v23;
  v11 = v26;
  v12 = v25;
  v24 = 0;
  v26 = 0;
  v13 = operator new(0x60uLL);
  *v13 = &unk_1F5AF6B00;
  *(v13 + 1) = v7;
  *(v13 + 2) = v8;
  *(v13 + 3) = v8;
  v13[32] = v4;
  *(v13 + 33) = v31[0];
  *(v13 + 3) = *(v31 + 15);
  *(v13 + 18) = v9;
  *(v13 + 8) = v10;
  *(v13 + 22) = v11;
  *(v13 + 10) = v12;
  v30 = v13;
  mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1);
  if (!v30)
  {
    v28 = 0;
    *&v32[0] = 0;
    v15 = __p;
    goto LABEL_12;
  }

  if (v30 == v29)
  {
    v28 = v27;
    (*(*v30 + 24))();
    v14 = v28;
    v15 = __p;
    *&v32[0] = 0;
    if (v28)
    {
      goto LABEL_38;
    }

LABEL_12:
    v33 = 0;
    v34 = 1;
    *a2 = *&v32[0];
    *(a2 + 8) = 0;
    *(a2 + 40) = 0;
LABEL_13:
    v16 = (a2 + 32);
    goto LABEL_14;
  }

  v14 = (*(*v30 + 16))();
  v28 = v14;
  v15 = __p;
  *&v32[0] = 0;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_38:
  if (v14 == v27)
  {
    v33 = (v32 + 8);
    (*(*v14 + 24))(v14, v32 + 8);
    v18 = v33;
  }

  else
  {
    v18 = (*(*v14 + 16))(v14);
    v33 = v18;
  }

  v34 = 1;
  *a2 = *&v32[0];
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (v18 == (v32 + 8))
  {
    *(a2 + 32) = a2 + 8;
    (*(*v18 + 24))(v18);
    v19 = v34;
    *(a2 + 40) = 1;
    *(a2 + 48) = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v16 = &v33;
  *(a2 + 32) = v18;
LABEL_14:
  *v16 = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 1;
LABEL_15:
  if (v33 == (v32 + 8))
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))();
  }

LABEL_19:
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    v17 = v30;
    if (v30 != v29)
    {
      goto LABEL_23;
    }

LABEL_35:
    (*(*v17 + 32))(v17);
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v28)
  {
    (*(*v28 + 40))();
  }

  v17 = v30;
  if (v30 == v29)
  {
    goto LABEL_35;
  }

LABEL_23:
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  if (v15)
  {
LABEL_26:
    operator delete(v15);
  }

LABEL_27:
  if (v26 >= 0x41 && v25)
  {
    operator delete[](v25);
  }

  if (v24 >= 0x41)
  {
    if (v23)
    {
      operator delete[](v23);
    }
  }
}

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6B90;
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

void mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APInt>>(void **a1@<X0>, uint64_t a2@<X8>)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a1);
  Width = mlir::IntegerType::getWidth(&ElementType);
  v8 = Width;
  if (Width <= 0x40)
  {
    v4 = 0;
    __p = 0;
    *(a2 + 8) = Width;
LABEL_5:
    *a2 = v4;
    v5 = (a2 + 16);
    *(a2 + 24) = Width;
LABEL_6:
    *v5 = __p;
    return;
  }

  llvm::APInt::initSlowCase(&__p, 0, 0);
  Width = v8;
  *(a2 + 8) = v8;
  if (Width <= 0x40)
  {
    v4 = __p;
    goto LABEL_5;
  }

  llvm::APInt::initSlowCase(a2, &__p);
  v6 = v8;
  v5 = (a2 + 16);
  *(a2 + 24) = v8;
  if (v6 <= 0x40)
  {
    goto LABEL_6;
  }

  llvm::APInt::initSlowCase(a2 + 16, &__p);
  if (v8 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F5AF6B00;
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(void *__p)
{
  *__p = &unk_1F5AF6B00;
  if (*(__p + 22) >= 0x41u)
  {
    v2 = __p[10];
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(__p + 18) >= 0x41u)
  {
    v3 = __p[8];
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x60uLL);
  *v2 = &unk_1F5AF6B00;
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
  v9 = *(a1 + 72);
  *(v2 + 18) = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase((v2 + 8), (a1 + 64));
    v12 = *(a1 + 88);
    *(v2 + 22) = v12;
    if (v12 > 0x40)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2[8] = *(a1 + 64);
    v10 = *(a1 + 88);
    *(v2 + 22) = v10;
    if (v10 > 0x40)
    {
LABEL_6:
      llvm::APInt::initSlowCase((v2 + 10), (a1 + 80));
      return v2;
    }
  }

  v2[10] = *(a1 + 80);
  return v2;
}

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7__cloneEPNS0_6__baseISV_EE(void *result, uint64_t a2)
{
  v3 = result;
  *a2 = &unk_1F5AF6B00;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = result[1];
  v4 = result[2];
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
    result = memcpy(v7, v5, v6);
    *(a2 + 16) = v8;
  }

  v9 = *(v3 + 3);
  *(a2 + 32) = *(v3 + 2);
  *(a2 + 48) = v9;
  v10 = *(v3 + 18);
  *(a2 + 72) = v10;
  if (v10 > 0x40)
  {
    result = llvm::APInt::initSlowCase(a2 + 64, v3 + 8);
    v12 = *(v3 + 22);
    *(a2 + 88) = v12;
    if (v12 > 0x40)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(a2 + 80) = v3[10];
    return result;
  }

  *(a2 + 64) = v3[8];
  v11 = *(v3 + 22);
  *(a2 + 88) = v11;
  if (v11 <= 0x40)
  {
    goto LABEL_10;
  }

LABEL_6:

  return llvm::APInt::initSlowCase(a2 + 80, v3 + 10);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 22) >= 0x41u)
  {
    v2 = __p[10];
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(__p + 18) >= 0x41u)
  {
    v3 = __p[8];
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEclEOl(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) - v4;
  if ((v5 & 0x7FFFFFFF8) == 0)
  {
LABEL_5:
    v9 = *(a1 + 72);
    *(a3 + 8) = v9;
    if (v9 > 0x40)
    {
      v11 = a3;
      llvm::APInt::initSlowCase(a3, (a1 + 64));
      a3 = v11;
      v12 = *(a1 + 88);
      *(v11 + 24) = v12;
      if (v12 > 0x40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = *(a1 + 64);
      v10 = *(a1 + 88);
      *(a3 + 24) = v10;
      if (v10 > 0x40)
      {
LABEL_7:

        llvm::APInt::initSlowCase(a3 + 16, (a1 + 80));
        return;
      }
    }

    *(a3 + 16) = *(a1 + 80);
    return;
  }

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

  v14 = *(a1 + 32);
  v13 = *(a1 + 56);
  v15 = *(a1 + 48) - v6;
  v16 = v13;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v14, a3);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097592ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097592ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097592ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097592ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6B90;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6B90;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6B90;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned char>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned char>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v20, v23);
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
  *v9 = &unk_1F5AF6BD8;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6C68;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF6BD8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6BD8;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6BD8;
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
  *(v2 + 42) = *(a1 + 42);
  *(v2 + 58) = 0;
  *(v2 + 31) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6BD8;
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
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0975CF1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0975CF1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0975CF1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0975CF1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6C68;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6C68;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6C68;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned short>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned short>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v20, v23);
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
  *v9 = &unk_1F5AF6CC8;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6D58;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF6CC8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6CC8;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6CC8;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6CC8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0976106)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0976106 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0976106))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0976106 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6D58;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6D58;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6D58;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned int>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned int>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v20, v23);
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
  *v9 = &unk_1F5AF6DB8;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6E48;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF6DB8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6DB8;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6DB8;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6DB8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097651BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097651BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097651BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097651BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6E48;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6E48;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6E48;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned long long>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned long long>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v21, v24);
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
  *v9 = &unk_1F5AF6EA8;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF6F38;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF6EA8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6EA8;
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5AF6EA8;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6EA8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0976930)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0976930 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0976930))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0976930 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF6F38;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF6F38;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF6F38;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<signed char>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<signed char>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v20, v23);
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
  *v9 = &unk_1F5AF6F98;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF7028;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF6F98;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF6F98;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF6F98;
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
  *(v2 + 42) = *(a1 + 42);
  *(v2 + 58) = 0;
  *(v2 + 31) = 0;
  return v2;
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF6F98;
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
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E0976D45)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E0976D45 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E0976D45))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E0976D45 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7028;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7028;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7028;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<short>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>> &>(v4, &v7, &v5);
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

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<short>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v20, v23);
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
  *v9 = &unk_1F5AF7088;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF7118;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF7088;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7088;
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

char *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_1F5AF7088;
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

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF7088;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E097715ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E097715ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E097715ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E097715ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_1F5AF7118;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(void *a1)
{
  *a1 = &unk_1F5AF7118;
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

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::clone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x38uLL);
  v5 = *(a1 + 8);
  *result = &unk_1F5AF7118;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>(v4);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<int>>(a1, &v7);
  if (v11 == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>> &>(v4, &v7, &v5);
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

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<int>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v20, v23);
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
  *v9 = &unk_1F5AF7178;
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

void *mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>> &>@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  *result = &unk_1F5AF7208;
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

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_1F5AF7178;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_1F5AF7178;
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