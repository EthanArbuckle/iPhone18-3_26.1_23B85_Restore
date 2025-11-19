unint64_t mlir::anec::ANECIRWeightSerializer::addConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v5 = 0;
  v6 = 0;
  v4 = &v5;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v4, a2);
  return mlir::anec::ANECIRWeightSerializer::addConstant(this, v5, v6);
}

uint64_t mlir::anec::ANECIRWeightSerializer::lookupConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, a2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 1);
    v5 = (v3 - 1) & ((LODWORD(v12[0]) >> 4) ^ (LODWORD(v12[0]) >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == v12[0])
    {
LABEL_3:
      if (v5 != v3)
      {
        v7 = (v4 + 16 * v5 + 8);
        return *(*(this + 4) + 16 * *v7 + 8);
      }
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == v12[0])
        {
          goto LABEL_3;
        }
      }
    }
  }

  v7 = (this + 40);
  return *(*(this + 4) + 16 * *v7 + 8);
}

void *mlir::anec::ANECDictionary::Create@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x10uLL);
  plist::PListDict::Create(v3);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_1F5B34520;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void mlir::anec::ANECDictionary::Create(mlir::anec::ANECDictionary *this@<X0>, void *a2@<X8>)
{
  switch(*(this + 8))
  {
    case 2:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xD:
    case 0xE:
    case 0x17:
    case 0x1A:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x21:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
      __break(1u);
      return;
    case 3:
      ConcatUnit = ZinCreateConcatUnit(this);
      goto LABEL_40;
    case 4:
      ConcatUnit = ZinCreateEWUnit(this);
      goto LABEL_40;
    case 5:
      ConcatUnit = ZinCreateScaledEWUnit(this);
      goto LABEL_40;
    case 0xB:
      ConcatUnit = ZinCreateFlattenUnit(this);
      goto LABEL_40;
    case 0xC:
      ConcatUnit = ZinCreateUnflattenUnit(this);
      goto LABEL_40;
    case 0xF:
      ConcatUnit = ZinCreateArgMinMaxUnit(this);
      goto LABEL_40;
    case 0x10:
      ConcatUnit = ZinCreateGlobalArgMinMaxUnit(this);
      goto LABEL_40;
    case 0x11:
      ConcatUnit = ZinCreateInputViewUnit(this);
      goto LABEL_40;
    case 0x12:
      ConcatUnit = ZinCreateMatrixMultUnit(this);
      goto LABEL_40;
    case 0x13:
      ConcatUnit = ZinCreateBroadcastUnit(this);
      goto LABEL_40;
    case 0x14:
      ConcatUnit = ZinCreateReductionUnit(this);
      goto LABEL_40;
    case 0x15:
      ConcatUnit = ZinCreateTransposeUnit(this);
      goto LABEL_40;
    case 0x16:
      ConcatUnit = ZinCreateReshapeUnit(this);
      goto LABEL_40;
    case 0x18:
      ConcatUnit = ZinCreateSoftmaxUnit(this);
      goto LABEL_40;
    case 0x19:
      ConcatUnit = ZinCreateInstanceNormUnit(this);
      goto LABEL_40;
    case 0x1C:
      ConcatUnit = ZinCreateLayerNormUnit(this);
      goto LABEL_40;
    case 0x1F:
      ConcatUnit = ZinCreatePixelShuffleUnit(this);
      goto LABEL_40;
    case 0x20:
      ConcatUnit = ZinCreatePixelUnshuffleUnit(this);
      goto LABEL_40;
    case 0x22:
      ConcatUnit = ZinCreateSpaceToBatchUnit(this);
      goto LABEL_40;
    case 0x23:
      ConcatUnit = ZinCreateBatchToSpaceUnit(this);
      goto LABEL_40;
    case 0x24:
      ConcatUnit = ZinCreateSpaceToChannelUnit(this);
      goto LABEL_40;
    case 0x25:
      ConcatUnit = ZinCreateChannelToSpaceUnit(this);
      goto LABEL_40;
    case 0x27:
      ConcatUnit = ZinCreateGatherUnit(this);
      goto LABEL_40;
    case 0x29:
      ConcatUnit = ZinCreateResizeUnit(this);
      goto LABEL_40;
    case 0x2B:
      ConcatUnit = ZinCreateResampleUnit(this);
      goto LABEL_40;
    case 0x2C:
      ConcatUnit = ZinCreatePadUnit(this);
      goto LABEL_40;
    case 0x2D:
      ConcatUnit = ZinCreateTileUnit(this);
      goto LABEL_40;
    case 0x2E:
      ConcatUnit = ZinCreateCropResizeUnit(this);
      goto LABEL_40;
    case 0x3A:
      ConcatUnit = ZinCreateQuantUnit(this);
      goto LABEL_40;
    case 0x3B:
      ConcatUnit = ZinCreateDeQuantUnit(this);
      goto LABEL_40;
    case 0x3C:
      ConcatUnit = ZinCreateLinearUnit(this);
      goto LABEL_40;
    case 0x3D:
      ConcatUnit = ZinCreateRingBufferWriterUnit(this);
      goto LABEL_40;
    case 0x3E:
      ConcatUnit = ZinCreateRingBufferReaderUnit(this);
      goto LABEL_40;
    case 0x3F:
      ConcatUnit = ZinCreateBatchNormUnit(this);
      goto LABEL_40;
    case 0x4B:
    case 0x4C:
      ConcatUnit = ZinCreateAllGatherUnit(this);
      goto LABEL_40;
    case 0x4D:
      ConcatUnit = ZinCreateSDPAUnit(this);
      goto LABEL_40;
    case 0x4E:
      ConcatUnit = ZinCreateAllReduceUnit(this);
      goto LABEL_40;
    default:
      ConcatUnit = ZinCreateConvUnit(this);
LABEL_40:
      v5 = ConcatUnit;
      v6 = operator new(0x10uLL);
      plist::PListDict::Create(v6);
      *a2 = v6;
      v7 = operator new(0x20uLL);
      *v7 = &unk_1F5B34520;
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = v6;
      a2[1] = v7;
      CFDictionaryApplyFunction(v5, mlir::anec::ANECDictionary::Create(ZinIrUnitInfo const&)::$_0::__invoke, v6);

      CFRelease(v5);
      return;
  }
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  plist::PListDict::GetValueForKey(*a1, a2, &v13);
  v7 = v13;
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v8 = *a1;
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v8 + 8), a2))
  {
    v13 = a2;
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8 + 8, a2, &std::piecewise_construct, &v13);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(v9 + 6);
    *(v9 + 5) = v11;
    *(v9 + 6) = v10;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

uint64_t mlir::anec::ANECDictionary::WriteToStream(mlir::anec::ANECDictionary *this, llvm::raw_ostream *a2)
{
  v25[6] = 0;
  v4 = MEMORY[0x1E69E5570] + 24;
  v5 = MEMORY[0x1E69E5570] + 64;
  v25[0] = MEMORY[0x1E69E5570] + 64;
  v6 = MEMORY[0x1E69E54E8];
  v7 = *(MEMORY[0x1E69E54E8] + 16);
  v16 = *(MEMORY[0x1E69E54E8] + 8);
  *(&v16 + *(v16 - 24)) = v7;
  v8 = (&v16 + *(v16 - 24));
  std::ios_base::init(v8, &v17);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v16 = v4;
  v25[0] = v5;
  v9 = MEMORY[0x1E69E5538] + 16;
  v17 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12E59E0](&v18);
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v10 = MEMORY[0x1E69E5548] + 16;
  v17 = MEMORY[0x1E69E5548] + 16;
  *v22 = 0u;
  v23 = 0u;
  v24 = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](&v17);
  plist::PListDict::Dump(*this, &v16, 0, 4);
  std::stringbuf::str();
  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __p[1];
  }

  llvm::raw_ostream::write(a2, v11, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *v6;
  *(&v16 + *(v16 - 24)) = v6[3];
  v17 = v10;
  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  v17 = v9;
  std::locale::~locale(&v18);
  std::ostream::~ostream();
  MEMORY[0x1E12E5AA0](v25);
  return 0;
}

void *mlir::anec::ANECDictionary::PListEntry@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = operator new(0x10uLL);
  *v5 = &unk_1F5B34650;
  v5[1] = a1;
  *a2 = v5;
  result = operator new(0x20uLL);
  *result = &unk_1F5B34558;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

{
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F5B34628;
  v5 = (v4 + 1);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a1;
    v4[3] = *(a1 + 16);
  }

  *a2 = v4;
  result = operator new(0x20uLL);
  *result = &unk_1F5B345C8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v4;
  a2[1] = result;
  return result;
}

void *mlir::anec::ANECDictionary::PListEntry@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v5 = operator new(0x10uLL);
  *v5 = &unk_1F5B34650;
  v5[1] = a1;
  *a2 = v5;
  result = operator new(0x20uLL);
  *result = &unk_1F5B34558;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

void *mlir::anec::ANECDictionary::PListEntry@<X0>(char a1@<W1>, void *a2@<X8>)
{
  v5 = operator new(0x10uLL);
  *v5 = &unk_1F5B34678;
  v5[8] = a1;
  *a2 = v5;
  result = operator new(0x20uLL);
  *result = &unk_1F5B34590;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

void mlir::anec::ANECDictionary::PListEntry(void **a1@<X1>, void *a2@<X8>)
{
  v2 = (*a1)[1];
  *a2 = **a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::PListEntry(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::Create(ZinIrUnitInfo const&)::$_0::__invoke(const __CFString *a1, const __CFString *a2, uint64_t *a3)
{
  __p = 0uLL;
  v9 = 0;
  ZinGetString(a1, &__p);
  plist::PListType::PListFromCF(&v6, a2);
  mlir::anec::ANECDictionary::Add(a3, &__p, &v6);
  v5 = v7;
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (SHIBYTE(v9) < 0)
  {
LABEL_4:
    operator delete(__p);
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

void std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void plist::PListType::PListFromCF(plist::PListReal **__return_ptr a1@<X8>, const __CFString *this@<X0>)
{
  if (!this)
  {
    goto LABEL_19;
  }

  v5 = CFGetTypeID(this);
  if (v5 == CFStringGetTypeID())
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    ZinGetString(this, __p);
    v6 = operator new(0x38uLL);
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = &unk_1F5B344E8;
    v7 = (v6 + 24);
    *(v6 + 3) = &unk_1F5B34628;
    if (SHIBYTE(v31) < 0)
    {
      v19 = v6;
      std::string::__init_copy_ctor_external((v6 + 32), __p[0], __p[1]);
      v20 = SHIBYTE(v31);
      *a1 = v7;
      a1[1] = v19;
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(v6 + 2) = *__p;
      *(v6 + 6) = v31;
      *a1 = v7;
      a1[1] = v6;
    }

    return;
  }

  v8 = CFGetTypeID(this);
  if (v8 == CFBooleanGetTypeID())
  {
    v9 = CFBooleanGetValue(this) != 0;
    v10 = operator new(0x28uLL);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_1F5B346F0;
    v11 = (v10 + 3);
    v10[3] = &unk_1F5B34678;
    *(v10 + 32) = v9;
LABEL_7:
    *a1 = v11;
    a1[1] = v10;
    return;
  }

  v12 = CFGetTypeID(this);
  if (v12 != CFNumberGetTypeID())
  {
    v21 = CFGetTypeID(this);
    if (v21 == CFDictionaryGetTypeID())
    {
      v22 = operator new(0x30uLL);
      *v22 = &unk_1F5B346C8;
      *(v22 + 1) = 0u;
      *(v22 + 3) = 0u;
      *(v22 + 10) = 1065353216;
      v23 = operator new(0x20uLL);
      *v23 = &unk_1F5B34798;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *(v23 + 3) = v22;
      CFDictionaryApplyFunction(this, plist::PListType::PListFromCF(void const*)::$_0::__invoke, v22);
LABEL_18:
      *a1 = v22;
      a1[1] = v23;
      return;
    }

    v24 = CFGetTypeID(this);
    if (v24 == CFArrayGetTypeID())
    {
      v22 = operator new(0x20uLL);
      *v22 = &unk_1F5B346A0;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = 0;
      v23 = operator new(0x20uLL);
      *v23 = &unk_1F5B347D0;
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *(v23 + 3) = v22;
      v32.length = CFArrayGetCount(this);
      v32.location = 0;
      CFArrayApplyFunction(this, v32, plist::PListType::PListFromCF(void const*)::$_1::__invoke, v22);
      goto LABEL_18;
    }

LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  Type = CFNumberGetType(this);
  v29 = 0.0;
  CFNumberGetValue(this, Type, &v29);
  IsFloatType = CFNumberIsFloatType(this);
  ByteSize = CFNumberGetByteSize(this);
  if (IsFloatType)
  {
    if (ByteSize == 4)
    {
      v16 = operator new(0x38uLL);
      v16[1] = 0;
      v16[2] = 0;
      *v16 = &unk_1F5B34728;
      v17 = (v16 + 3);
      v18 = *&v29;
    }

    else
    {
      CFNumberGetByteSize(this);
      v16 = operator new(0x38uLL);
      v16[1] = 0;
      v16[2] = 0;
      *v16 = &unk_1F5B34728;
      v17 = (v16 + 3);
      v18 = v29;
    }

    *a1 = plist::PListReal::PListReal(v17, v18);
    a1[1] = v16;
  }

  else
  {
    if (ByteSize == 1)
    {
      v10 = operator new(0x28uLL);
      v10[1] = 0;
      v10[2] = 0;
      *v10 = &unk_1F5B34760;
      v11 = (v10 + 3);
      v25 = SLOBYTE(v29);
      v10[3] = &unk_1F5B34650;
      v10[4] = v25;
      goto LABEL_7;
    }

    if (CFNumberGetByteSize(this) == 2)
    {
      v26 = operator new(0x28uLL);
      v26[1] = 0.0;
      v26[2] = 0.0;
      *v26 = &unk_1F5B34760;
      v27 = (v26 + 3);
      *&v28 = SLOWORD(v29);
    }

    else if (CFNumberGetByteSize(this) == 4)
    {
      v26 = operator new(0x28uLL);
      v26[1] = 0.0;
      v26[2] = 0.0;
      *v26 = &unk_1F5B34760;
      v27 = (v26 + 3);
      *&v28 = SLODWORD(v29);
    }

    else
    {
      CFNumberGetByteSize(this);
      v26 = operator new(0x28uLL);
      v26[1] = 0.0;
      v26[2] = 0.0;
      *v26 = &unk_1F5B34760;
      v27 = (v26 + 3);
      v28 = v29;
    }

    *(v26 + 3) = &unk_1F5B34650;
    v26[4] = v28;
    *a1 = v27;
    a1[1] = v26;
    __p[0] = 0;
    __p[1] = 0;
    std::shared_ptr<plist::PListInt>::~shared_ptr[abi:nn200100](__p);
  }
}

uint64_t std::shared_ptr<plist::PListInt>::~shared_ptr[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *plist::PListDict::Create@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *v3 = &unk_1F5B346C8;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 10) = 1065353216;
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_1F5B34798;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void *plist::PListArray::Create@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *v3 = &unk_1F5B346A0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_1F5B347D0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void *plist::PListString::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    p_b = operator new(v7);
    v26 = __len;
    v27 = v7 | 0x8000000000000000;
    __b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v27) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v27 >= 0)
  {
    v8 = &__b;
  }

  else
  {
    v8 = __b;
  }

  if (v27 >= 0)
  {
    v9 = HIBYTE(v27);
  }

  else
  {
    v9 = v26;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v8, v9);
  v24 = 8;
  strcpy(v23, "<string>");
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v23, 8);
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = *(v13 + 8);
  }

  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v16, v17);
  v22 = 10;
  strcpy(__p, "</string>\n");
  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, __p, 10);
  if ((v22 & 0x80000000) == 0)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v23[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return v19;
    }

LABEL_28:
    operator delete(__b);
    return v19;
  }

  operator delete(__p[0]);
  if (v24 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_28;
  }

  return v19;
}

plist::PListReal *plist::PListReal::PListReal(plist::PListReal *this, double a2)
{
  *this = &unk_1F5B34600;
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a2 == -INFINITY)
  {
    MEMORY[0x1E12E55D0](v3, "-infinity");
  }

  else if (a2 == INFINITY)
  {
    MEMORY[0x1E12E55D0](v3, "+infinity");
  }

  else if (a2 == 0.0)
  {
    MEMORY[0x1E12E55D0](v3, "0.0");
  }

  else
  {
    v4 = v3;
    memset(&v10, 0, sizeof(v10));
    v6 = snprintf(0, 0, "%.*g", 17, a2);
    begin = 0;
    v8 = v6 + 1;
    if (v6 != -1)
    {
      std::vector<char>::__append(&v10, v6 + 1);
      begin = v10.__begin_;
    }

    snprintf(begin, v8, "%.*g", 17, a2);
    MEMORY[0x1E12E55D0](v4, v10.__begin_);
    if (v10.__begin_)
    {
      v10.__end_ = v10.__begin_;
      operator delete(v10.__begin_);
    }
  }

  return this;
}

void *plist::PListReal::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    p_b = operator new(v7);
    v26 = __len;
    v27 = v7 | 0x8000000000000000;
    __b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v27) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v27 >= 0)
  {
    v8 = &__b;
  }

  else
  {
    v8 = __b;
  }

  if (v27 >= 0)
  {
    v9 = HIBYTE(v27);
  }

  else
  {
    v9 = v26;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v8, v9);
  v24 = 6;
  strcpy(v23, "<real>");
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v23, 6);
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = *(v13 + 8);
  }

  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v16, v17);
  v22 = 8;
  strcpy(__p, "</real>\n");
  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, __p, 8);
  if ((v22 & 0x80000000) == 0)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v23[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return v19;
    }

LABEL_28:
    operator delete(__b);
    return v19;
  }

  operator delete(__p[0]);
  if (v24 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_28;
  }

  return v19;
}

void *plist::PListInt::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    p_b = operator new(v7);
    v23 = __len;
    v24 = v7 | 0x8000000000000000;
    __b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v24) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v24 >= 0)
  {
    v8 = &__b;
  }

  else
  {
    v8 = __b;
  }

  if (v24 >= 0)
  {
    v9 = HIBYTE(v24);
  }

  else
  {
    v9 = v23;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v8, v9);
  v21 = 9;
  strcpy(__p, "<integer>");
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, __p, 9);
  std::to_string(&v19, *(a1 + 8));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v12, size);
  v18 = 11;
  strcpy(v17, "</integer>\n");
  v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, v17, 11);
  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      operator delete(__p[0]);
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        return v15;
      }

LABEL_30:
      operator delete(__b);
      return v15;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_30;
  }

  return v15;
}

void *plist::PListBool::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    p_b = operator new(v7);
    *(&__b + 1) = __len;
    v14 = v7 | 0x8000000000000000;
    *&__b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v14) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v14 >= 0)
  {
    v8 = &__b;
  }

  else
  {
    v8 = __b;
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = *(&__b + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v8, v9);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__b);
  }

  if (*(a1 + 8) == 1)
  {
    HIBYTE(v14) = 8;
    strcpy(&__b, "<true/>\n");
    v10 = a2;
    v11 = 8;
  }

  else
  {
    HIBYTE(v14) = 9;
    strcpy(&__b, "<false/>\n");
    v10 = a2;
    v11 = 9;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, &__b, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__b);
  }

  return a2;
}

void *plist::PListDict::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_70:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (__len | 7) + 1;
    }

    p_b = operator new(v9);
    v38 = __len;
    v39 = v9 | 0x8000000000000000;
    __b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v39) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v39 >= 0)
  {
    v10 = &__b;
  }

  else
  {
    v10 = __b;
  }

  if (v39 >= 0)
  {
    v11 = HIBYTE(v39);
  }

  else
  {
    v11 = v38;
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v10, v11);
  v36 = 7;
  strcpy(__p, "<dict>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __p, 7);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__b);
    v13 = *(a1 + 24);
    if (!v13)
    {
      goto LABEL_51;
    }

    goto LABEL_22;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
LABEL_22:
    v14 = a4 + __len;
    v15 = (a4 + __len) | 7;
    if (v15 == 23)
    {
      v16 = 25;
    }

    else
    {
      v16 = v15 + 1;
    }

    while (1)
    {
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_70;
      }

      if (v14 >= 0x17)
      {
        break;
      }

      HIBYTE(v39) = a4 + __len;
      v17 = &__b;
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_32:
      *(v17 + v14) = 0;
      if (v39 >= 0)
      {
        v18 = &__b;
      }

      else
      {
        v18 = __b;
      }

      if (v39 >= 0)
      {
        v19 = HIBYTE(v39);
      }

      else
      {
        v19 = v38;
      }

      v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v18, v19);
      v36 = 5;
      strcpy(__p, "<key>");
      v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, __p, 5);
      v22 = *(v13 + 39);
      if (v22 >= 0)
      {
        v23 = (v13 + 2);
      }

      else
      {
        v23 = v13[2];
      }

      if (v22 >= 0)
      {
        v24 = *(v13 + 39);
      }

      else
      {
        v24 = v13[3];
      }

      v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, v23, v24);
      v34 = 7;
      strcpy(v33, "</key>\n");
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v33, 7);
      if (v34 < 0)
      {
        operator delete(v33[0]);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_46:
          if (SHIBYTE(v39) < 0)
          {
            goto LABEL_50;
          }

          goto LABEL_25;
        }
      }

      else if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      operator delete(__p[0]);
      if (SHIBYTE(v39) < 0)
      {
LABEL_50:
        operator delete(__b);
      }

LABEL_25:
      (*(*v13[5] + 16))(v13[5], a2, v14, a4);
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_51;
      }
    }

    v17 = operator new(v16);
    v38 = a4 + __len;
    v39 = v16 | 0x8000000000000000;
    __b = v17;
LABEL_31:
    memset(v17, 32, v14);
    goto LABEL_32;
  }

LABEL_51:
  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (__len | 7) + 1;
    }

    v26 = operator new(v27);
    v38 = __len;
    v39 = v27 | 0x8000000000000000;
    __b = v26;
    goto LABEL_58;
  }

  HIBYTE(v39) = __len;
  v26 = &__b;
  if (__len)
  {
LABEL_58:
    memset(v26, 32, __len);
  }

  *(v26 + __len) = 0;
  if (v39 >= 0)
  {
    v28 = &__b;
  }

  else
  {
    v28 = __b;
  }

  if (v39 >= 0)
  {
    v29 = HIBYTE(v39);
  }

  else
  {
    v29 = v38;
  }

  v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v28, v29);
  v36 = 8;
  strcpy(__p, "</dict>\n");
  v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, __p, 8);
  if (v36 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return v31;
    }

LABEL_69:
    operator delete(__b);
    return v31;
  }

  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_69;
  }

  return v31;
}

void *plist::PListDict::Dump(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v8 = operator new(0x28uLL);
  strcpy(v8, "<?xml version=1.0 encoding=UTF-8?>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v8, 39);
  operator delete(v8);
  v9 = operator new(0x68uLL);
  strcpy(v9, "<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v9, 103);
  operator delete(v9);
  v10 = operator new(0x20uLL);
  strcpy(v10, "<plist version=1.0.2>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v10, 24);
  operator delete(v10);
  plist::PListDict::DoPrint(a1, a2, a3, a4);
  v15 = 8;
  strcpy(__p, "</plist>");
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, __p, 8);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  std::ostream::flush();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

uint64_t **plist::PListDict::GetValueForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 8), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void *plist::PListArray::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (__len | 7) + 1;
    }

    p_b = operator new(v9);
    v26 = __len;
    v27 = v9 | 0x8000000000000000;
    __b = p_b;
    goto LABEL_9;
  }

  HIBYTE(v27) = __len;
  p_b = &__b;
  if (__len)
  {
LABEL_9:
    memset(p_b, 32, __len);
  }

  *(p_b + __len) = 0;
  if (v27 >= 0)
  {
    v10 = &__b;
  }

  else
  {
    v10 = __b;
  }

  if (v27 >= 0)
  {
    v11 = HIBYTE(v27);
  }

  else
  {
    v11 = v26;
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v10, v11);
  v24 = 8;
  strcpy(__p, "<array>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __p, 8);
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__b);
LABEL_18:
  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  while (v14 != v13)
  {
    v15 = *v14;
    v14 += 2;
    (*(*v15 + 16))(v15, a2, a4 + __len, a4);
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (__len | 7) + 1;
    }

    v16 = operator new(v17);
    v26 = __len;
    v27 = v17 | 0x8000000000000000;
    __b = v16;
    goto LABEL_27;
  }

  HIBYTE(v27) = __len;
  v16 = &__b;
  if (__len)
  {
LABEL_27:
    memset(v16, 32, __len);
  }

  *(v16 + __len) = 0;
  if (v27 >= 0)
  {
    v18 = &__b;
  }

  else
  {
    v18 = __b;
  }

  if (v27 >= 0)
  {
    v19 = HIBYTE(v27);
  }

  else
  {
    v19 = v26;
  }

  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v18, v19);
  v24 = 9;
  strcpy(__p, "</array>\n");
  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, __p, 9);
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return v21;
    }

LABEL_40:
    operator delete(__b);
    return v21;
  }

  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_40;
  }

  return v21;
}

void plist::PListString::~PListString(void **this)
{
  *this = &unk_1F5B34628;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B34628;
  if (*(this + 31) < 0)
  {
    v2 = this;
    operator delete(this[1]);
    this = v2;
  }

  operator delete(this);
}

void plist::PListArray::~PListArray(plist::PListArray *this)
{
  *this = &unk_1F5B346A0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_1F5B346A0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  operator delete(this);
}

void plist::PListDict::~PListDict(plist::PListDict *this)
{
  *this = &unk_1F5B346C8;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F5B346C8;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);

  operator delete(this);
}

void plist::PListReal::~PListReal(void **this)
{
  *this = &unk_1F5B34600;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B34600;
  if (*(this + 31) < 0)
  {
    v2 = this;
    operator delete(this[1]);
    this = v2;
  }

  operator delete(this);
}

void plist::PListType::PListFromCF(void const*)::$_0::__invoke(const __CFString *a1, plist::PListType *a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  ZinGetString(a1, __p);
  plist::PListType::PListFromCF(&v11, a2, v5);
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a3 + 8), __p))
  {
    v15 = __p;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 8, __p, &std::piecewise_construct, &v15);
    v9 = v11;
    v8 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v7 + 6);
    *(v7 + 5) = v9;
    *(v7 + 6) = v8;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v6 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(v14) < 0)
  {
LABEL_5:
    operator delete(__p[0]);
  }
}

void plist::PListType::PListFromCF(void const*)::$_1::__invoke(plist::PListType *a1, void *a2)
{
  plist::PListType::PListFromCF(&v18, a1, a2);
  v3 = a2[2];
  v4 = a2[3];
  if (v3 >= v4)
  {
    v7 = a2[1];
    v8 = v3 - v7;
    v9 = (v3 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = operator new(16 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v9];
    v15 = &v13[16 * v12];
    v16 = *(&v18 + 1);
    *v14 = v18;
    v5 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = a2[1];
      v8 = a2[2] - v7;
      v9 = v8 >> 4;
    }

    v6 = v14 + 16;
    v17 = &v14[-16 * v9];
    memcpy(v17, v7, v8);
    a2[1] = v17;
    a2[2] = v6;
    a2[3] = v15;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *(&v18 + 1);
    *v3 = v18;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  a2[2] = v6;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__shared_ptr_emplace<plist::PListBool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B346F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<plist::PListReal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B34728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<plist::PListInt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B34760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  p_end = &this->__end_;
  end = this->__end_;
  v4 = p_end[1];
  if (v4 - end >= __n)
  {
    if (__n)
    {
      v14 = &end[__n];
      bzero(end, __n);
      end = v14;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = v7 + __n;
    if ((v7 + __n) < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = __n;
      v12 = operator new(v10);
      __n = v11;
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[v7 + __n];
    bzero(&v13[v7], __n);
    memcpy(v13, begin, v7);
    this->__begin_ = v13;
    this->__end_ = v15;
    this->__end_cap_.__value_ = &v13[v10];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void mlir::anec::getANECCanonicalizeQuantPatterns(uint64_t *a1)
{
  v236 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v234, 4);
  mlir::Pattern::Pattern((v3 + 1), "anec.gain_offset_control", 24, v234, v2, 0, 0);
  *v3 = &unk_1F5B34808;
  if (!v3[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_AddGocs]";
    *(&v234 + 1) = 97;
    v4 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(&v234 + 1);
    }

    v6 = v234 + v5;
    v7 = *(&v234 + 1) - v5;
    if (*(&v234 + 1) - v5 >= 0x12)
    {
      v8 = 18;
    }

    else
    {
      v8 = *(&v234 + 1) - v5;
    }

    v9 = v6 + v8;
    v10 = v7 - v8;
    if (v10 >= v10 - 1)
    {
      --v10;
    }

    v3[8] = v9;
    v3[9] = v10;
  }

  v11 = *(v3 + 22);
  if (v11 > *(v3 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v3 + 10), (v3 + 12), v11, 16);
    LODWORD(v11) = *(v3 + 22);
  }

  *(v3 + 22) = v11;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        goto LABEL_289;
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v3;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v3;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  v23 = *a1;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A18;
  v235 = *&off_1E86D3A28;
  mlir::Pattern::Pattern((v24 + 1), "anec.convolution", 16, v233, v23, &v234, 2uLL);
  *v24 = &unk_1F5B34848;
  if (!v24[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_ConvFilterGOC]";
    *(&v234 + 1) = 103;
    v25 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(&v234 + 1);
    }

    v27 = v234 + v26;
    v28 = *(&v234 + 1) - v26;
    if (*(&v234 + 1) - v26 >= 0x12)
    {
      v29 = 18;
    }

    else
    {
      v29 = *(&v234 + 1) - v26;
    }

    v30 = v27 + v29;
    v31 = v28 - v29;
    if (v31 >= v31 - 1)
    {
      --v31;
    }

    v24[8] = v30;
    v24[9] = v31;
  }

  v32 = *(v24 + 22);
  if (v32 > *(v24 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 10), (v24 + 12), v32, 16);
    LODWORD(v32) = *(v24 + 22);
  }

  *(v24 + 22) = v32;
  v34 = a1[2];
  v33 = a1[3];
  if (v34 >= v33)
  {
    v36 = a1[1];
    v37 = v34 - v36;
    v38 = (v34 - v36) >> 3;
    v39 = v38 + 1;
    if ((v38 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v40 = v33 - v36;
    if (v40 >> 2 > v39)
    {
      v39 = v40 >> 2;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      v41 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      if (v41 >> 61)
      {
        goto LABEL_289;
      }

      v42 = operator new(8 * v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = &v42[8 * v38];
    *v43 = v24;
    v35 = v43 + 8;
    memcpy(v42, v36, v37);
    a1[1] = v42;
    a1[2] = v35;
    a1[3] = &v42[8 * v41];
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v34 = v24;
    v35 = v34 + 8;
  }

  a1[2] = v35;
  v44 = *a1;
  v45 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A18;
  v235 = *&off_1E86D3A28;
  mlir::Pattern::Pattern((v45 + 1), "anec.convolution", 16, v233, v44, &v234, 2uLL);
  *v45 = &unk_1F5B34888;
  if (!v45[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_ConvFilterMult]";
    *(&v234 + 1) = 104;
    v46 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = *(&v234 + 1);
    }

    v48 = v234 + v47;
    v49 = *(&v234 + 1) - v47;
    if (*(&v234 + 1) - v47 >= 0x12)
    {
      v50 = 18;
    }

    else
    {
      v50 = *(&v234 + 1) - v47;
    }

    v51 = v48 + v50;
    v52 = v49 - v50;
    if (v52 >= v52 - 1)
    {
      --v52;
    }

    v45[8] = v51;
    v45[9] = v52;
  }

  v53 = *(v45 + 22);
  if (v53 > *(v45 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v45 + 10), (v45 + 12), v53, 16);
    LODWORD(v53) = *(v45 + 22);
  }

  *(v45 + 22) = v53;
  v55 = a1[2];
  v54 = a1[3];
  if (v55 >= v54)
  {
    v57 = a1[1];
    v58 = v55 - v57;
    v59 = (v55 - v57) >> 3;
    v60 = v59 + 1;
    if ((v59 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v61 = v54 - v57;
    if (v61 >> 2 > v60)
    {
      v60 = v61 >> 2;
    }

    if (v61 >= 0x7FFFFFFFFFFFFFF8)
    {
      v62 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v60;
    }

    if (v62)
    {
      if (v62 >> 61)
      {
        goto LABEL_289;
      }

      v63 = operator new(8 * v62);
    }

    else
    {
      v63 = 0;
    }

    v64 = &v63[8 * v59];
    *v64 = v45;
    v56 = v64 + 8;
    memcpy(v63, v57, v58);
    a1[1] = v63;
    a1[2] = v56;
    a1[3] = &v63[8 * v62];
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v55 = v45;
    v56 = v55 + 8;
  }

  a1[2] = v56;
  v65 = *a1;
  v66 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A18;
  v235 = *&off_1E86D3A28;
  mlir::Pattern::Pattern((v66 + 1), "anec.convolution", 16, v233, v65, &v234, 2uLL);
  *v66 = &unk_1F5B348C8;
  if (!v66[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_ConvInputGOC]";
    *(&v234 + 1) = 102;
    v67 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = *(&v234 + 1);
    }

    v69 = v234 + v68;
    v70 = *(&v234 + 1) - v68;
    if (*(&v234 + 1) - v68 >= 0x12)
    {
      v71 = 18;
    }

    else
    {
      v71 = *(&v234 + 1) - v68;
    }

    v72 = v69 + v71;
    v73 = v70 - v71;
    if (v73 >= v73 - 1)
    {
      --v73;
    }

    v66[8] = v72;
    v66[9] = v73;
  }

  v74 = *(v66 + 22);
  if (v74 > *(v66 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v66 + 10), (v66 + 12), v74, 16);
    LODWORD(v74) = *(v66 + 22);
  }

  *(v66 + 22) = v74;
  v76 = a1[2];
  v75 = a1[3];
  if (v76 >= v75)
  {
    v78 = a1[1];
    v79 = v76 - v78;
    v80 = (v76 - v78) >> 3;
    v81 = v80 + 1;
    if ((v80 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v82 = v75 - v78;
    if (v82 >> 2 > v81)
    {
      v81 = v82 >> 2;
    }

    if (v82 >= 0x7FFFFFFFFFFFFFF8)
    {
      v83 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = v81;
    }

    if (v83)
    {
      if (v83 >> 61)
      {
        goto LABEL_289;
      }

      v84 = operator new(8 * v83);
    }

    else
    {
      v84 = 0;
    }

    v85 = &v84[8 * v80];
    *v85 = v66;
    v77 = v85 + 8;
    memcpy(v84, v78, v79);
    a1[1] = v84;
    a1[2] = v77;
    a1[3] = &v84[8 * v83];
    if (v78)
    {
      operator delete(v78);
    }
  }

  else
  {
    *v76 = v66;
    v77 = v76 + 8;
  }

  a1[2] = v77;
  v86 = *a1;
  v87 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A38;
  v235 = *&off_1E86D3A48;
  mlir::Pattern::Pattern((v87 + 1), "anec.deconvolution", 18, v233, v86, &v234, 2uLL);
  *v87 = &unk_1F5B34908;
  if (!v87[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_DeconvFilterGOC]";
    *(&v234 + 1) = 105;
    v88 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v88)
    {
      v89 = v88;
    }

    else
    {
      v89 = *(&v234 + 1);
    }

    v90 = v234 + v89;
    v91 = *(&v234 + 1) - v89;
    if (*(&v234 + 1) - v89 >= 0x12)
    {
      v92 = 18;
    }

    else
    {
      v92 = *(&v234 + 1) - v89;
    }

    v93 = v90 + v92;
    v94 = v91 - v92;
    if (v94 >= v94 - 1)
    {
      --v94;
    }

    v87[8] = v93;
    v87[9] = v94;
  }

  v95 = *(v87 + 22);
  if (v95 > *(v87 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v87 + 10), (v87 + 12), v95, 16);
    LODWORD(v95) = *(v87 + 22);
  }

  *(v87 + 22) = v95;
  v97 = a1[2];
  v96 = a1[3];
  if (v97 >= v96)
  {
    v99 = a1[1];
    v100 = v97 - v99;
    v101 = (v97 - v99) >> 3;
    v102 = v101 + 1;
    if ((v101 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v103 = v96 - v99;
    if (v103 >> 2 > v102)
    {
      v102 = v103 >> 2;
    }

    if (v103 >= 0x7FFFFFFFFFFFFFF8)
    {
      v104 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v104 = v102;
    }

    if (v104)
    {
      if (v104 >> 61)
      {
        goto LABEL_289;
      }

      v105 = operator new(8 * v104);
    }

    else
    {
      v105 = 0;
    }

    v106 = &v105[8 * v101];
    *v106 = v87;
    v98 = v106 + 8;
    memcpy(v105, v99, v100);
    a1[1] = v105;
    a1[2] = v98;
    a1[3] = &v105[8 * v104];
    if (v99)
    {
      operator delete(v99);
    }
  }

  else
  {
    *v97 = v87;
    v98 = v97 + 8;
  }

  a1[2] = v98;
  v107 = *a1;
  v108 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A38;
  v235 = *&off_1E86D3A48;
  mlir::Pattern::Pattern((v108 + 1), "anec.deconvolution", 18, v233, v107, &v234, 2uLL);
  *v108 = &unk_1F5B34948;
  if (!v108[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_DeconvFilterMult]";
    *(&v234 + 1) = 106;
    v109 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v109)
    {
      v110 = v109;
    }

    else
    {
      v110 = *(&v234 + 1);
    }

    v111 = v234 + v110;
    v112 = *(&v234 + 1) - v110;
    if (*(&v234 + 1) - v110 >= 0x12)
    {
      v113 = 18;
    }

    else
    {
      v113 = *(&v234 + 1) - v110;
    }

    v114 = v111 + v113;
    v115 = v112 - v113;
    if (v115 >= v115 - 1)
    {
      --v115;
    }

    v108[8] = v114;
    v108[9] = v115;
  }

  v116 = *(v108 + 22);
  if (v116 > *(v108 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v108 + 10), (v108 + 12), v116, 16);
    LODWORD(v116) = *(v108 + 22);
  }

  *(v108 + 22) = v116;
  v118 = a1[2];
  v117 = a1[3];
  if (v118 >= v117)
  {
    v120 = a1[1];
    v121 = v118 - v120;
    v122 = (v118 - v120) >> 3;
    v123 = v122 + 1;
    if ((v122 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v124 = v117 - v120;
    if (v124 >> 2 > v123)
    {
      v123 = v124 >> 2;
    }

    if (v124 >= 0x7FFFFFFFFFFFFFF8)
    {
      v125 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v125 = v123;
    }

    if (v125)
    {
      if (v125 >> 61)
      {
        goto LABEL_289;
      }

      v126 = operator new(8 * v125);
    }

    else
    {
      v126 = 0;
    }

    v127 = &v126[8 * v122];
    *v127 = v108;
    v119 = v127 + 8;
    memcpy(v126, v120, v121);
    a1[1] = v126;
    a1[2] = v119;
    a1[3] = &v126[8 * v125];
    if (v120)
    {
      operator delete(v120);
    }
  }

  else
  {
    *v118 = v108;
    v119 = v118 + 8;
  }

  a1[2] = v119;
  v128 = *a1;
  v129 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 12);
  v234 = xmmword_1E86D3A38;
  v235 = *&off_1E86D3A48;
  mlir::Pattern::Pattern((v129 + 1), "anec.deconvolution", 18, v233, v128, &v234, 2uLL);
  *v129 = &unk_1F5B34988;
  if (!v129[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_DeconvInputGOC]";
    *(&v234 + 1) = 104;
    v130 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v130)
    {
      v131 = v130;
    }

    else
    {
      v131 = *(&v234 + 1);
    }

    v132 = v234 + v131;
    v133 = *(&v234 + 1) - v131;
    if (*(&v234 + 1) - v131 >= 0x12)
    {
      v134 = 18;
    }

    else
    {
      v134 = *(&v234 + 1) - v131;
    }

    v135 = v132 + v134;
    v136 = v133 - v134;
    if (v136 >= v136 - 1)
    {
      --v136;
    }

    v129[8] = v135;
    v129[9] = v136;
  }

  v137 = *(v129 + 22);
  if (v137 > *(v129 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v129 + 10), (v129 + 12), v137, 16);
    LODWORD(v137) = *(v129 + 22);
  }

  *(v129 + 22) = v137;
  v139 = a1[2];
  v138 = a1[3];
  if (v139 >= v138)
  {
    v141 = a1[1];
    v142 = v139 - v141;
    v143 = (v139 - v141) >> 3;
    v144 = v143 + 1;
    if ((v143 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v145 = v138 - v141;
    if (v145 >> 2 > v144)
    {
      v144 = v145 >> 2;
    }

    if (v145 >= 0x7FFFFFFFFFFFFFF8)
    {
      v146 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v146 = v144;
    }

    if (v146)
    {
      if (v146 >> 61)
      {
        goto LABEL_289;
      }

      v147 = operator new(8 * v146);
    }

    else
    {
      v147 = 0;
    }

    v148 = &v147[8 * v143];
    *v148 = v129;
    v140 = v148 + 8;
    memcpy(v147, v141, v142);
    a1[1] = v147;
    a1[2] = v140;
    a1[3] = &v147[8 * v146];
    if (v141)
    {
      operator delete(v141);
    }
  }

  else
  {
    *v139 = v129;
    v140 = v139 + 8;
  }

  a1[2] = v140;
  v149 = *a1;
  v150 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v234, 3);
  mlir::Pattern::Pattern((v150 + 1), "anec.mult", 9, v234, v149, 0, 0);
  *v150 = &unk_1F5B349C8;
  if (!v150[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_GOCDiv]";
    *(&v234 + 1) = 96;
    v151 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v151)
    {
      v152 = v151;
    }

    else
    {
      v152 = *(&v234 + 1);
    }

    v153 = v234 + v152;
    v154 = *(&v234 + 1) - v152;
    if (*(&v234 + 1) - v152 >= 0x12)
    {
      v155 = 18;
    }

    else
    {
      v155 = *(&v234 + 1) - v152;
    }

    v156 = v153 + v155;
    v157 = v154 - v155;
    if (v157 >= v157 - 1)
    {
      --v157;
    }

    v150[8] = v156;
    v150[9] = v157;
  }

  v158 = *(v150 + 22);
  if (v158 > *(v150 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v150 + 10), (v150 + 12), v158, 16);
    LODWORD(v158) = *(v150 + 22);
  }

  *(v150 + 22) = v158;
  v160 = a1[2];
  v159 = a1[3];
  if (v160 >= v159)
  {
    v162 = a1[1];
    v163 = v160 - v162;
    v164 = (v160 - v162) >> 3;
    v165 = v164 + 1;
    if ((v164 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v166 = v159 - v162;
    if (v166 >> 2 > v165)
    {
      v165 = v166 >> 2;
    }

    if (v166 >= 0x7FFFFFFFFFFFFFF8)
    {
      v167 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v167 = v165;
    }

    if (v167)
    {
      if (v167 >> 61)
      {
        goto LABEL_289;
      }

      v168 = operator new(8 * v167);
    }

    else
    {
      v168 = 0;
    }

    v169 = &v168[8 * v164];
    *v169 = v150;
    v161 = v169 + 8;
    memcpy(v168, v162, v163);
    a1[1] = v168;
    a1[2] = v161;
    a1[3] = &v168[8 * v167];
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v160 = v150;
    v161 = v160 + 8;
  }

  a1[2] = v161;
  v170 = *a1;
  v171 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v234, 2);
  mlir::Pattern::Pattern((v171 + 1), "anec.gain_offset_control", 24, v234, v170, 0, 0);
  *v171 = &unk_1F5B34A08;
  if (!v171[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_GOCGOC]";
    *(&v234 + 1) = 96;
    v172 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v172)
    {
      v173 = v172;
    }

    else
    {
      v173 = *(&v234 + 1);
    }

    v174 = v234 + v173;
    v175 = *(&v234 + 1) - v173;
    if (*(&v234 + 1) - v173 >= 0x12)
    {
      v176 = 18;
    }

    else
    {
      v176 = *(&v234 + 1) - v173;
    }

    v177 = v174 + v176;
    v178 = v175 - v176;
    if (v178 >= v178 - 1)
    {
      --v178;
    }

    v171[8] = v177;
    v171[9] = v178;
  }

  v179 = *(v171 + 22);
  if (v179 > *(v171 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v171 + 10), (v171 + 12), v179, 16);
    LODWORD(v179) = *(v171 + 22);
  }

  *(v171 + 22) = v179;
  v181 = a1[2];
  v180 = a1[3];
  if (v181 >= v180)
  {
    v183 = a1[1];
    v184 = v181 - v183;
    v185 = (v181 - v183) >> 3;
    v186 = v185 + 1;
    if ((v185 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v187 = v180 - v183;
    if (v187 >> 2 > v186)
    {
      v186 = v187 >> 2;
    }

    if (v187 >= 0x7FFFFFFFFFFFFFF8)
    {
      v188 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v188 = v186;
    }

    if (v188)
    {
      if (v188 >> 61)
      {
        goto LABEL_289;
      }

      v189 = operator new(8 * v188);
    }

    else
    {
      v189 = 0;
    }

    v190 = &v189[8 * v185];
    *v190 = v171;
    v182 = v190 + 8;
    memcpy(v189, v183, v184);
    a1[1] = v189;
    a1[2] = v182;
    a1[3] = &v189[8 * v188];
    if (v183)
    {
      operator delete(v183);
    }
  }

  else
  {
    *v181 = v171;
    v182 = v181 + 8;
  }

  a1[2] = v182;
  v191 = *a1;
  v192 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v233, 2);
  v234 = xmmword_1E86D3A58;
  v235 = *&off_1E86D3A68;
  mlir::Pattern::Pattern((v192 + 1), "anec.gain_offset_control", 24, v233, v191, &v234, 2uLL);
  *v192 = &unk_1F5B34A48;
  if (!v192[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::ANEC_GOCRelu]";
    *(&v234 + 1) = 97;
    v193 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v193)
    {
      v194 = v193;
    }

    else
    {
      v194 = *(&v234 + 1);
    }

    v195 = v234 + v194;
    v196 = *(&v234 + 1) - v194;
    if (*(&v234 + 1) - v194 >= 0x12)
    {
      v197 = 18;
    }

    else
    {
      v197 = *(&v234 + 1) - v194;
    }

    v198 = v195 + v197;
    v199 = v196 - v197;
    if (v199 >= v199 - 1)
    {
      --v199;
    }

    v192[8] = v198;
    v192[9] = v199;
  }

  v200 = *(v192 + 22);
  if (v200 > *(v192 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v192 + 10), (v192 + 12), v200, 16);
    LODWORD(v200) = *(v192 + 22);
  }

  *(v192 + 22) = v200;
  v202 = a1[2];
  v201 = a1[3];
  if (v202 >= v201)
  {
    v204 = a1[1];
    v205 = v202 - v204;
    v206 = (v202 - v204) >> 3;
    v207 = v206 + 1;
    if ((v206 + 1) >> 61)
    {
      goto LABEL_288;
    }

    v208 = v201 - v204;
    if (v208 >> 2 > v207)
    {
      v207 = v208 >> 2;
    }

    if (v208 >= 0x7FFFFFFFFFFFFFF8)
    {
      v209 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v209 = v207;
    }

    if (v209)
    {
      if (v209 >> 61)
      {
        goto LABEL_289;
      }

      v210 = operator new(8 * v209);
    }

    else
    {
      v210 = 0;
    }

    v211 = &v210[8 * v206];
    *v211 = v192;
    v203 = v211 + 8;
    memcpy(v210, v204, v205);
    a1[1] = v210;
    a1[2] = v203;
    a1[3] = &v210[8 * v209];
    if (v204)
    {
      operator delete(v204);
    }
  }

  else
  {
    *v202 = v192;
    v203 = v202 + 8;
  }

  a1[2] = v203;
  v212 = *a1;
  v213 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v234, 1);
  mlir::Pattern::Pattern((v213 + 1), "anec.concat", 11, v234, v212, 0, 0);
  *v213 = &unk_1F5B34A88;
  if (!v213[9])
  {
    *&v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeConcat]";
    *(&v234 + 1) = 103;
    v214 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v234 + 1) >= v214)
    {
      v215 = v214;
    }

    else
    {
      v215 = *(&v234 + 1);
    }

    v216 = v234 + v215;
    v217 = *(&v234 + 1) - v215;
    if (*(&v234 + 1) - v215 >= 0x12)
    {
      v218 = 18;
    }

    else
    {
      v218 = *(&v234 + 1) - v215;
    }

    v219 = v216 + v218;
    v220 = v217 - v218;
    if (v220 >= v220 - 1)
    {
      --v220;
    }

    v213[8] = v219;
    v213[9] = v220;
  }

  v221 = *(v213 + 22);
  if (v221 > *(v213 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v213 + 10), (v213 + 12), v221, 16);
    LODWORD(v221) = *(v213 + 22);
  }

  *(v213 + 22) = v221;
  v223 = a1[2];
  v222 = a1[3];
  if (v223 < v222)
  {
    *v223 = v213;
    v224 = v223 + 8;
    goto LABEL_287;
  }

  v225 = a1[1];
  v226 = v223 - v225;
  v227 = (v223 - v225) >> 3;
  v228 = v227 + 1;
  if ((v227 + 1) >> 61)
  {
LABEL_288:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v229 = v222 - v225;
  if (v229 >> 2 > v228)
  {
    v228 = v229 >> 2;
  }

  if (v229 >= 0x7FFFFFFFFFFFFFF8)
  {
    v230 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v230 = v228;
  }

  if (v230)
  {
    if (!(v230 >> 61))
    {
      v231 = operator new(8 * v230);
      goto LABEL_285;
    }

LABEL_289:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v231 = 0;
LABEL_285:
  v232 = &v231[8 * v227];
  *v232 = v213;
  v224 = v232 + 8;
  memcpy(v231, v225, v226);
  a1[1] = v231;
  a1[2] = v224;
  a1[3] = &v231[8 * v230];
  if (v225)
  {
    operator delete(v225);
  }

LABEL_287:
  a1[2] = v224;
}

double mlir::anec::createLegacyQuantizationCanonicalizationPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 2) = "builtin.module";
  *(v3 + 3) = 14;
  *(v3 + 32) = 1;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[8] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5B34AE0;
  *a1 = v3;
  return result;
}

void mlir::anec::anonymous namespace::ANEC_AddGocs::~ANEC_AddGocs(mlir::anec::_anonymous_namespace_::ANEC_AddGocs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_AddGocs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v143[1] = *MEMORY[0x1E69E9840];
  v137 = v139;
  v139[0] = a2;
  v138 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ArgOperands = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ArgOperands);
  if (!DefiningOp)
  {
    v10 = *(a3 + 2);
    if (!v10 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v5 + 3);
LABEL_15:
    (*(*v10 + 88))(v10, v11, v12, &ArgOperands);
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v7 = DefiningOp;
  v8 = *(*(DefiningOp + 48) + 16);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v9 = DefiningOp;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  ArgOperands = *(*(DefiningOp + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ArgOperands);
  if (!v15)
  {
    v10 = *(a3 + 2);
    if (!v10 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  v16 = *(*(v15 + 48) + 16);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10)
    {
      goto LABEL_16;
    }

    v18 = v15;
    if (!mlir::RewriterBase::Listener::classof(v10))
    {
      goto LABEL_16;
    }

    v11 = *(v18 + 24);
    goto LABEL_15;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v19 = *(v15 + 72);
    v20 = v19 + 32;
  }

  else
  {
    v19 = 0;
    v20 = 32;
  }

  *(v137 + v138) = v15;
  LODWORD(v138) = v138 + 1;
  ArgOperands = *(*(v7 + 72) + 56);
  v21 = mlir::Value::getDefiningOp(&ArgOperands);
  if (!v21)
  {
    v10 = *(a3 + 2);
    if (!v10 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_16;
    }

    v11 = *(v7 + 24);
    goto LABEL_15;
  }

  v22 = *(*(v21 + 48) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10)
    {
      goto LABEL_16;
    }

    v24 = v21;
    if (!mlir::RewriterBase::Listener::classof(v10))
    {
      goto LABEL_16;
    }

    v11 = *(v24 + 24);
    goto LABEL_15;
  }

  v132 = v23;
  if ((*(v21 + 46) & 0x80) != 0)
  {
    v25 = *(v21 + 72);
    v26 = v25 + 32;
  }

  else
  {
    v25 = 0;
    v26 = 32;
  }

  v133 = v26;
  v27 = v138;
  if (v138 >= HIDWORD(v138))
  {
    v131 = v25;
    v105 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v138 + 1, 8);
    v21 = v105;
    v25 = v131;
    v27 = v138;
  }

  *(v137 + v27) = v21;
  v28 = (v138 + 1);
  LODWORD(v138) = v28;
  if (v28 >= HIDWORD(v138))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v28 + 1, 8);
    LODWORD(v28) = v138;
  }

  *(v137 + v28) = v7;
  LODWORD(v138) = v138 + 1;
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v29 = *(v5 + 9);
    v30 = v29 + 32;
  }

  else
  {
    v29 = 0;
    v30 = 32;
  }

  v134 = v30;
  v135 = 0;
  v31 = *(v29 + 88);
  v136 = 0;
  v143[0] = &v135;
  ArgOperands = v31;
  v32 = mlir::Value::getDefiningOp(&ArgOperands);
  if (!v32 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v32))
  {
    goto LABEL_247;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
  v141 = v33;
  v34 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
  v130 = v25;
  if (v34 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v41 = 4 * v141 - 4;
      v42 = ArgOperands;
      do
      {
        v43 = *v42++;
        v44 = v43 == 0.0;
        v45 = v43 != 0.0 || v41 == 0;
        v41 -= 4;
      }

      while (!v45);
    }

    else
    {
      v44 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v44)
    {
      goto LABEL_247;
    }
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
    v141 = v35;
    if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_247;
    }

    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v36 = 4 * v141 - 4;
      v37 = ArgOperands;
      do
      {
        v38 = *v37++;
        v39 = v38 == 0.0;
        v40 = v38 != 0.0 || v36 == 0;
        v36 -= 4;
      }

      while (!v40);
    }

    else
    {
      v39 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v39)
    {
LABEL_247:
      v98 = *(a3 + 2);
      if (!v98 || !mlir::RewriterBase::Listener::classof(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v46 = *(v19 + 88);
  v135 = 0;
  v136 = 0;
  v143[0] = &v135;
  ArgOperands = v46;
  v47 = mlir::Value::getDefiningOp(&ArgOperands);
  if (!v47 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v47))
  {
    goto LABEL_284;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
  v141 = v48;
  v49 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
  v63 = v49 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v63 || v49 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v64 = 4 * v141 - 4;
      v65 = ArgOperands;
      do
      {
        v66 = *v65++;
        v67 = v66 == 0.0;
        v68 = v66 != 0.0 || v64 == 0;
        v64 -= 4;
      }

      while (!v68);
    }

    else
    {
      v67 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v67)
    {
      goto LABEL_284;
    }
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
    v141 = v108;
    if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_284;
    }

    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v109 = 4 * v141 - 4;
      v110 = ArgOperands;
      do
      {
        v111 = *v110++;
        v112 = v111 == 0.0;
        v113 = v111 != 0.0 || v109 == 0;
        v109 -= 4;
      }

      while (!v113);
    }

    else
    {
      v112 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v112)
    {
LABEL_284:
      v98 = *(a3 + 2);
      if (!v98 || !mlir::RewriterBase::Listener::classof(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v69 = *(v130 + 88);
  v135 = 0;
  v136 = 0;
  v143[0] = &v135;
  ArgOperands = v69;
  v70 = mlir::Value::getDefiningOp(&ArgOperands);
  if (!v70 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v143, v70))
  {
    goto LABEL_294;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
  v141 = v71;
  v72 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
  v86 = v72 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v86 || v72 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v87 = 4 * v141 - 4;
      v88 = ArgOperands;
      do
      {
        v89 = *v88++;
        v90 = v89 == 0.0;
        v91 = v89 != 0.0 || v87 == 0;
        v87 -= 4;
      }

      while (!v91);
    }

    else
    {
      v90 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v90)
    {
      goto LABEL_294;
    }
  }

  else
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v135);
    v141 = v116;
    if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_294;
    }

    ArgOperands = v142;
    v141 = 0xC00000000;
    mlir::getFloatValues<float>(v135, v136, &ArgOperands, 0);
    if (v141)
    {
      v117 = 4 * v141 - 4;
      v118 = ArgOperands;
      do
      {
        v119 = *v118++;
        v120 = v119 == 0.0;
        v121 = v119 != 0.0 || v117 == 0;
        v117 -= 4;
      }

      while (!v121);
    }

    else
    {
      v120 = 1;
    }

    if (ArgOperands != v142)
    {
      free(ArgOperands);
    }

    if (!v120)
    {
LABEL_294:
      v98 = *(a3 + 2);
      if (!v98 || !mlir::RewriterBase::Listener::classof(v98))
      {
        goto LABEL_16;
      }

      v99 = *(a2 + 3);
      goto LABEL_250;
    }
  }

  v92 = (*(*(v134 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v92)
  {
    v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
  }

  else
  {
    v93 = 0;
  }

  ArgOperands = v92;
  v141 = v93;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v95) != 1)
  {
    v98 = *(a3 + 2);
    if (!v98 || !mlir::RewriterBase::Listener::classof(v98))
    {
      goto LABEL_16;
    }

    v99 = *(a2 + 3);
LABEL_250:
    (*(*v98 + 88))(v98, v99, v100, &ArgOperands);
    goto LABEL_16;
  }

  v96 = (*(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v96)
  {
    v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
  }

  else
  {
    v97 = 0;
  }

  ArgOperands = v96;
  v141 = v97;
  v101 = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (mlir::ShapedType::getNumElements(v101, v102) == 1)
  {
    v103 = (*(*(v133 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v103)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
    }

    else
    {
      v104 = 0;
    }

    ArgOperands = v103;
    v141 = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (mlir::ShapedType::getNumElements(v106, v107) == 1)
    {
      if (*(*mlir::getElementTypeOrSelf((*(*(v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (*(*mlir::getElementTypeOrSelf((*(*(v130 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          if (*(v5 + 9))
          {
            v114 = v5 - 16;
          }

          else
          {
            v114 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v114, 0);
          if (*(*mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (*(v9 + 36))
            {
              v122 = v9 - 16;
            }

            else
            {
              v122 = 0;
            }

            v123 = mlir::detail::OpResultImpl::getNextResultAtOffset(v122, 0);
            ArgOperands = mlir::getElementTypeOrSelf((*(v123 + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isF16(&ArgOperands))
            {
              if (*(v17 + 36))
              {
                v124 = v17 - 16;
              }

              else
              {
                v124 = 0;
              }

              v125 = mlir::detail::OpResultImpl::getNextResultAtOffset(v124, 0);
              ArgOperands = mlir::getElementTypeOrSelf((*(v125 + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isF16(&ArgOperands))
              {
                if (*(v132 + 36))
                {
                  v126 = v132 - 16;
                }

                else
                {
                  v126 = 0;
                }

                v127 = mlir::detail::OpResultImpl::getNextResultAtOffset(v126, 0);
                ArgOperands = mlir::getElementTypeOrSelf((*(v127 + 8) & 0xFFFFFFFFFFFFFFF8));
                if (mlir::Type::isF16(&ArgOperands))
                {
                  v128 = *(*(v137 + 1) + 24);
                  ArgOperands = *(*v137 + 24);
                  v141 = v128;
                  v129 = *(*(v137 + 3) + 24);
                  v142[0] = *(*(v137 + 2) + 24);
                  v142[1] = v129;
                  mlir::Builder::getFusedLoc(a3 + 1, &ArgOperands, 4, 0);
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_17:
  if (v137 != v139)
  {
    free(v137);
  }

  return v13;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#13}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#14}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#15}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#16}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#17}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#18}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::canonicalizeAddGocs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v54 = a2;
  v51 = a6;
  v52 = a4;
  Loc = mlir::Value::getLoc(&v54);
  v14 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v50[0] = v14;
  v50[1] = v15;
  v16 = (*(v54 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v49[0] = v16;
  v49[1] = v17;
  v57 = 0uLL;
  v55 = &v57;
  v56 = a5;
  DefiningOp = mlir::Value::getDefiningOp(&v56);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, DefiningOp))
  {
    SplatFloat = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v20 = SplatFloat & 0xFFFFFF00;
    v21 = SplatFloat;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v57 = 0uLL;
  v55 = &v57;
  v56 = a7;
  v22 = mlir::Value::getDefiningOp(&v56);
  if (v22 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v22))
  {
    v23 = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v24 = v23 & 0xFFFFFF00;
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v57 = 0uLL;
  v55 = &v57;
  v56 = a8;
  v26 = mlir::Value::getDefiningOp(&v56);
  if (v26 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v26))
  {
    v28 = mlir::getSplatFloatValue<float>(v57, *(&v57 + 1));
    v29 = v28 & 0xFFFFFF00;
    v30 = v28;
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v47 = COERCE_FLOAT(v20 | v21) * COERCE_FLOAT(v24 | v25);
  v48 = COERCE_FLOAT(v29 | v30) / COERCE_FLOAT(v24 | v25);
  v57 = xmmword_1E0999A58;
  v58 = unk_1E0999A68;
  F32Type = mlir::Builder::getF32Type((a1 + 8), v27);
  v32 = mlir::RankedTensorType::get(&v57, 4, F32Type, 0);
  v57 = xmmword_1E0999A58;
  v58 = unk_1E0999A68;
  F16Type = mlir::Builder::getF16Type((a1 + 8), v33);
  v56 = mlir::MemRefType::get(&v57, 4, F16Type, 0, 0, 0);
  *&v57 = mlir::createRawElementsAttr(v32, &v48, 4uLL);
  *(&v57 + 1) = v35;
  v55 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v56, &v57);
  *&v57 = mlir::createRawElementsAttr(v32, &v47, 4uLL);
  *(&v57 + 1) = v36;
  v46 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v56, &v57);
  v38 = mlir::Builder::getF16Type((a1 + 8), v37);
  LOBYTE(v57) = 0;
  LOBYTE(v58) = 0;
  *&v57 = mlir::ShapedType::cloneWith(v50, &v57, v38);
  *(&v57 + 1) = v39;
  v45 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a1 + 8), Loc, &v57, &v52, &v55, &v51);
  v41 = mlir::Builder::getF16Type((a1 + 8), v40);
  LOBYTE(v57) = 0;
  LOBYTE(v58) = 0;
  *&v57 = mlir::ShapedType::cloneWith(v49, &v57, v41);
  *(&v57 + 1) = v42;
  v44 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ShapedType,mlir::Value &,mlir::anec::GOC &>((a1 + 8), Loc, &v57, &v53, &v45);
  return mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::anec::ElementwiseAdd &,mlir::mps::ConstantOp &,mlir::Value &>((a1 + 8), Loc, v49, &v44, &v46, &v51) - 16;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::ElementwiseAdd type";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::anec::GOC type";
  v13 = 39;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::anec::GOC type";
  v13 = 39;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 61;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 65;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 65;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'scale' failed to satisfy constraint: 'has only one element'";
  v13 = 69;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_scale' failed to satisfy constraint: 'has only one element'";
  v13 = 73;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_scale' failed to satisfy constraint: 'has only one element'";
  v13 = 73;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#13}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs' failed to satisfy constraint: 'is constant >= 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#14}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs' failed to satisfy constraint: 'is constant >= 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#15}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: 'is constant >= 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#16}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'add' failed to satisfy constraint: 'is FP16 value'";
  v13 = 60;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#17}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_goc' failed to satisfy constraint: 'is FP16 value'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_AddGocs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#18}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_goc' failed to satisfy constraint: 'is FP16 value'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::GOC::build(a1, v21, *a3, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ShapedType,mlir::Value &,mlir::anec::GOC &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::anec::ElementwiseAdd &,mlir::mps::ConstantOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::GOC::build(a1, v21, *a3, *a4 - 16, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::~ANEC_ConvFilterGOC(mlir::anec::_anonymous_namespace_::ANEC_ConvFilterGOC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_ConvFilterGOC *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v61 = v63;
  v63[0] = a2;
  v62 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v60[0] = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v60);
  if (!DefiningOp)
  {
    v27 = *(a3 + 2);
    if (!v27 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_67;
    }

    v28 = *(v5 + 3);
LABEL_59:
    (*(*v27 + 88))(v27, v28, v29, v60);
LABEL_67:
    v34 = 0;
    goto LABEL_68;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v7 = DefiningOp;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v27 = *(a3 + 2);
    if (!v27)
    {
      goto LABEL_67;
    }

    v33 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v27))
    {
      goto LABEL_67;
    }

    v28 = *(v33 + 24);
    goto LABEL_59;
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 72);
    v9 = v8 + 32;
  }

  else
  {
    v8 = 0;
    v9 = 32;
  }

  v10 = v62;
  if (v62 >= HIDWORD(v62))
  {
    v55 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v62 + 1, 8);
    DefiningOp = v55;
    v10 = v62;
  }

  v61[v10] = DefiningOp;
  LODWORD(v62) = v62 + 1;
  if (!*(a2 + 47) || (v64.var0 = "stride", v64.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(a2, v64), (v12 & 1) == 0))
  {
    v65.var0 = "stride";
    v65.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v65);
  }

  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
LABEL_66:
    (*(*v30 + 88))(v30, v31, v32, v60);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v66.var0 = "dilation", v66.var1 = 8, v13 = mlir::Operation::getInherentAttr(a2, v66), (v14 & 1) == 0))
  {
    v67.var0 = "dilation";
    v67.var1 = 8;
    v13 = mlir::DictionaryAttr::get((a2 + 56), v67);
  }

  if (!v13 || !mlir::DenseIntElementsAttr::classof(v13))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v68.var0 = "padding", v68.var1 = 7, v15 = mlir::Operation::getInherentAttr(a2, v68), (v16 & 1) == 0))
  {
    v69.var0 = "padding";
    v69.var1 = 7;
    v15 = mlir::DictionaryAttr::get((a2 + 56), v69);
  }

  if (!v15 || !mlir::DenseIntElementsAttr::classof(v15))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v70.var0 = "padding_mode", v70.var1 = 12, v17 = mlir::Operation::getInherentAttr(a2, v70), (v18 & 1) == 0))
  {
    v71.var0 = "padding_mode";
    v71.var1 = 12;
    v17 = mlir::DictionaryAttr::get((a2 + 56), v71);
  }

  if (!v17 || (mlir::anec::PaddingModeAttr::classof(v17) & 1) == 0)
  {
    mlir::arith::AtomicRMWKindAttr::get(*(a3 + 1), 0);
  }

  if (!*(a2 + 47) || (v72.var0 = "groups", v72.var1 = 6, v19 = mlir::Operation::getInherentAttr(a2, v72), (v20 & 1) == 0))
  {
    v73.var0 = "groups";
    v73.var1 = 6;
    v19 = mlir::DictionaryAttr::get((a2 + 56), v73);
  }

  if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 0);
    mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 1);
  }

  if (!*(a2 + 47) || (v74.var0 = "channel_wise", v74.var1 = 12, mlir::Operation::getInherentAttr(a2, v74), (v22 & 1) == 0))
  {
    v75.var0 = "channel_wise";
    v75.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v75);
  }

  if (!*(a2 + 47) || (v76.var0 = "kernel_scale", v76.var1 = 12, v23 = mlir::Operation::getInherentAttr(a2, v76), (v24 & 1) == 0))
  {
    v77.var0 = "kernel_scale";
    v77.var1 = 12;
    v23 = mlir::DictionaryAttr::get((a2 + 56), v77);
  }

  if (v23)
  {
    v25 = v23;
    if (mlir::DenseFPElementsAttr::classof(v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v58 = v26;
  if (!*(a2 + 47) || (v78.var0 = "kernel_zero_point", v78.var1 = 17, v36 = mlir::Operation::getInherentAttr(a2, v78), (v37 & 1) == 0))
  {
    v79.var0 = "kernel_zero_point";
    v79.var1 = 17;
    v36 = mlir::DictionaryAttr::get((a2 + 56), v79);
  }

  if (v36)
  {
    v38 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v59 = v39;
  if (!*(a2 + 47) || (v80.var0 = "kernel_palettized_LUT", v80.var1 = 21, v40 = mlir::Operation::getInherentAttr(a2, v80), (v41 & 1) == 0))
  {
    v81.var0 = "kernel_palettized_LUT";
    v81.var1 = 21;
    v40 = mlir::DictionaryAttr::get((a2 + 56), v81);
  }

  if (v40)
  {
    v42 = v40;
    if (mlir::DenseElementsAttr::classof(v40))
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  v57 = v43;
  if (!*(a2 + 47) || (v82.var0 = "kernel_mutable_palettized_LUT", v82.var1 = 29, mlir::Operation::getInherentAttr(a2, v82), (v44 & 1) == 0))
  {
    v83.var0 = "kernel_mutable_palettized_LUT";
    v83.var1 = 29;
    mlir::DictionaryAttr::get((a2 + 56), v83);
  }

  if (*(v5 + 9))
  {
    v45 = v5 - 16;
  }

  else
  {
    v45 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
  v60[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF16(v60))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  v60[0] = mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isF16(v60) && (*(v7 + 36) ? (v47 = v7 - 16) : (v47 = 0), v48 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0), *(*mlir::getElementTypeOrSelf((*(v48 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
  }

  else
  {
    if (*(v5 + 9))
    {
      v49 = v5 - 16;
    }

    else
    {
      v49 = 0;
    }

    v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    Owner = mlir::detail::OpResultImpl::getOwner(v50);
    {
      {
        if (*(*mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
LABEL_112:
          if (v58)
          {
          }

          else if (v59)
          {
          }

          else
          {
            if (!v57)
            {
              v56 = *(v61[1] + 24);
              v60[0] = *(*v61 + 24);
              v60[1] = v56;
              mlir::Builder::getFusedLoc(a3 + 1, v60, 2, 0);
            }
          }
        }

        else
        {
          if (*(v5 + 9))
          {
            v52 = v5 - 16;
          }

          else
          {
            v52 = 0;
          }

          v53 = mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0);
          while (1)
          {
            v53 = *v53;
            if (!v53)
            {
              break;
            }

            if (*(*(v53[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
            {
              goto LABEL_112;
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v34 = v54;
LABEL_68:
  if (v61 != v63)
  {
    free(v61);
  }

  return v34;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::isKernelScaleGOCCompatible(mlir::Operation *a1, void *a2)
{
  v3 = *(*(a1 + 6) + 16);
  if (!a1 || v3 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v36 = v8;
    v34 = a2;
    result = mlir::Value::getDefiningOp(&v34);
    if (!result)
    {
      return result;
    }

    {
      v29 = result;
      result = v29;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (!result)
    {
      return result;
    }

    v9 = v36;
    v10 = (*(*(*(v36 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v10)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v34 = v10;
    v35 = v11;
    if (*(v9 + 9))
    {
      v12 = v9 - 16;
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
    }

    else
    {
      v14 = 0;
    }

    v32 = v13;
    v33 = v14;
    v15 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    v31[0] = v15;
    v31[1] = v16;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v18);
    Groups = mlir::anec::Convolution::getGroups(&v36);
    if (*mlir::CallableOpInterface::getArgAttrsAttr(&v34) == Groups)
    {
      v21 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v34) + 8) != 1;
      if (NumElements != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v21 = 1;
      if (NumElements != 1)
      {
LABEL_37:
        if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v32) + 8) == NumElements)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v31);
          if (v22 == 4)
          {
            v23 = *(mlir::CallableOpInterface::getArgAttrsAttr(v31) + 8 * v21);
            return v23 == NumElements;
          }
        }

        return 0;
      }
    }

    return 1;
  }

  v31[0] = a1;
  v34 = a2;
  result = mlir::Value::getDefiningOp(&v34);
  if (result)
  {
    {
      v30 = result;
      result = v30;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (result)
    {
      if ((*(*(*(v31[0] + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(v31[0] + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

      if (*(v31[0] + 9))
      {
        v5 = v31[0] - 16;
      }

      else
      {
        v5 = 0;
      }

      v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v34 = v6;
      v35 = v7;
      v24 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
      if (v24)
      {
        v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      v32 = v24;
      v33 = v25;
      v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
      NumElements = mlir::ShapedType::getNumElements(v26, v27);
      mlir::anec::Convolution::getGroups(v31);
      if (NumElements == 1)
      {
        return 1;
      }

      if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v34) + 8) == NumElements)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v32);
        if (v28 == 4)
        {
          v23 = *mlir::CallableOpInterface::getArgAttrsAttr(&v32);
          return v23 == NumElements;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::checkConstantPred<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(double)#1}>(void *a1)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  v29 = &v30;
  ArgOperands = a1;
  result = mlir::Value::getDefiningOp(&ArgOperands);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, result);
    if (result)
    {
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v30);
      v33 = v2;
      v3 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
      v17 = v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        ArgOperands = v34;
        v33 = 0xC00000000;
        mlir::getFloatValues<float>(v30, v31, &ArgOperands, 0);
        v18 = ArgOperands;
        if (v33)
        {
          v19 = 4 * v33 - 4;
          v20 = ArgOperands;
          do
          {
            v21 = *v20++;
            result = v21 == 0.0;
            v22 = v21 != 0.0 || v19 == 0;
            v19 -= 4;
          }

          while (!v22);
          goto LABEL_68;
        }
      }

      else
      {
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v30);
        v33 = v23;
        if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          return 0;
        }

        ArgOperands = v34;
        v33 = 0xC00000000;
        mlir::getFloatValues<float>(v30, v31, &ArgOperands, 0);
        v18 = ArgOperands;
        if (v33)
        {
          v24 = 4 * v33 - 4;
          v25 = ArgOperands;
          do
          {
            v26 = *v25++;
            result = v26 == 0.0;
            v27 = v26 != 0.0 || v24 == 0;
            v24 -= 4;
          }

          while (!v27);
          goto LABEL_68;
        }
      }

      result = 1;
LABEL_68:
      if (v18 != v34)
      {
        v28 = result;
        free(v18);
        return v28;
      }
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::UnitAttr &,mlir::DenseFPElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DictionaryAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Convolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

uint64_t *llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::operator llvm::SmallVector<mlir::Value,4u><llvm::SmallVector<mlir::Value,4u>,void>@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v3 < 5)
  {
    if (!v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v5 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 2), v3, 8);
    v5 = *(a2 + 2);
  }

  v6 = 0;
  v7 = *a2 + 8 * v5;
  do
  {
    result = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6);
    *(v7 + 8 * v6++) = result;
  }

  while (v3 != v6);
  v8 = *(a2 + 2);
LABEL_8:
  *(a2 + 2) = v8 + v3;
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::GOC &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::GOC type";
  v13 = 39;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 96;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 97;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: 'is FP16 value'";
  v13 = 60;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, w_out' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out, w_scale' failed to satisfy constraint: ''";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w_bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, out' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_scale' failed to satisfy constraint: 'is nullptr'";
  v13 = 66;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_zp' failed to satisfy constraint: 'is nullptr'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_palettized_LUT, kernel_mutable_palettized_LUT_offset' failed to satisfy constraint: 'is nullptr'";
  v13 = 113;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_ConvFilterMult::~ANEC_ConvFilterMult(mlir::anec::_anonymous_namespace_::ANEC_ConvFilterMult *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_ConvFilterMult *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v62[4] = *MEMORY[0x1E69E9840];
  v60 = v62;
  v62[0] = a2;
  v61 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v59[0] = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v59);
  if (!DefiningOp)
  {
    v26 = *(a3 + 2);
    if (!v26 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_67;
    }

    v27 = *(v5 + 3);
LABEL_59:
    (*(*v26 + 88))(v26, v27, v28, v59);
LABEL_67:
    v33 = 0;
    goto LABEL_68;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
  {
    v7 = DefiningOp;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v26 = *(a3 + 2);
    if (!v26)
    {
      goto LABEL_67;
    }

    v32 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v26))
    {
      goto LABEL_67;
    }

    v27 = *(v32 + 24);
    goto LABEL_59;
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = v61;
  if (v61 >= HIDWORD(v61))
  {
    v54 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 8);
    DefiningOp = v54;
    v9 = v61;
  }

  v60[v9] = DefiningOp;
  LODWORD(v61) = v61 + 1;
  if (!*(a2 + 47) || (v63.var0 = "stride", v63.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(a2, v63), (v11 & 1) == 0))
  {
    v64.var0 = "stride";
    v64.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v64);
  }

  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
LABEL_66:
    (*(*v29 + 88))(v29, v30, v31, v59);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v65.var0 = "dilation", v65.var1 = 8, v12 = mlir::Operation::getInherentAttr(a2, v65), (v13 & 1) == 0))
  {
    v66.var0 = "dilation";
    v66.var1 = 8;
    v12 = mlir::DictionaryAttr::get((a2 + 56), v66);
  }

  if (!v12 || !mlir::DenseIntElementsAttr::classof(v12))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v67.var0 = "padding", v67.var1 = 7, v14 = mlir::Operation::getInherentAttr(a2, v67), (v15 & 1) == 0))
  {
    v68.var0 = "padding";
    v68.var1 = 7;
    v14 = mlir::DictionaryAttr::get((a2 + 56), v68);
  }

  if (!v14 || !mlir::DenseIntElementsAttr::classof(v14))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v69.var0 = "padding_mode", v69.var1 = 12, v16 = mlir::Operation::getInherentAttr(a2, v69), (v17 & 1) == 0))
  {
    v70.var0 = "padding_mode";
    v70.var1 = 12;
    v16 = mlir::DictionaryAttr::get((a2 + 56), v70);
  }

  if (!v16 || (mlir::anec::PaddingModeAttr::classof(v16) & 1) == 0)
  {
    mlir::arith::AtomicRMWKindAttr::get(*(a3 + 1), 0);
  }

  if (!*(a2 + 47) || (v71.var0 = "groups", v71.var1 = 6, v18 = mlir::Operation::getInherentAttr(a2, v71), (v19 & 1) == 0))
  {
    v72.var0 = "groups";
    v72.var1 = 6;
    v18 = mlir::DictionaryAttr::get((a2 + 56), v72);
  }

  if (!v18 || *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 0);
    mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 1);
  }

  if (!*(a2 + 47) || (v73.var0 = "channel_wise", v73.var1 = 12, mlir::Operation::getInherentAttr(a2, v73), (v21 & 1) == 0))
  {
    v74.var0 = "channel_wise";
    v74.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v74);
  }

  if (!*(a2 + 47) || (v75.var0 = "kernel_scale", v75.var1 = 12, v22 = mlir::Operation::getInherentAttr(a2, v75), (v23 & 1) == 0))
  {
    v76.var0 = "kernel_scale";
    v76.var1 = 12;
    v22 = mlir::DictionaryAttr::get((a2 + 56), v76);
  }

  if (v22)
  {
    v24 = v22;
    if (mlir::DenseFPElementsAttr::classof(v22))
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v57 = v25;
  if (!*(a2 + 47) || (v77.var0 = "kernel_zero_point", v77.var1 = 17, v35 = mlir::Operation::getInherentAttr(a2, v77), (v36 & 1) == 0))
  {
    v78.var0 = "kernel_zero_point";
    v78.var1 = 17;
    v35 = mlir::DictionaryAttr::get((a2 + 56), v78);
  }

  if (v35)
  {
    v37 = v35;
    if (mlir::DenseIntElementsAttr::classof(v35))
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v58 = v38;
  if (!*(a2 + 47) || (v79.var0 = "kernel_palettized_LUT", v79.var1 = 21, v39 = mlir::Operation::getInherentAttr(a2, v79), (v40 & 1) == 0))
  {
    v80.var0 = "kernel_palettized_LUT";
    v80.var1 = 21;
    v39 = mlir::DictionaryAttr::get((a2 + 56), v80);
  }

  if (v39)
  {
    v41 = v39;
    if (mlir::DenseElementsAttr::classof(v39))
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v56 = v42;
  if (!*(a2 + 47) || (v81.var0 = "kernel_mutable_palettized_LUT", v81.var1 = 29, mlir::Operation::getInherentAttr(a2, v81), (v43 & 1) == 0))
  {
    v82.var0 = "kernel_mutable_palettized_LUT";
    v82.var1 = 29;
    mlir::DictionaryAttr::get((a2 + 56), v82);
  }

  if (*(v5 + 9))
  {
    v44 = v5 - 16;
  }

  else
  {
    v44 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  v59[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF16(v59))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  v59[0] = mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isF16(v59) && (*(v7 + 36) ? (v46 = v7 - 16) : (v46 = 0), v47 = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0), *(*mlir::getElementTypeOrSelf((*(v47 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
  }

  else
  {
    if (*(v5 + 9))
    {
      v48 = v5 - 16;
    }

    else
    {
      v48 = 0;
    }

    v49 = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 0);
    Owner = mlir::detail::OpResultImpl::getOwner(v49);
    {
      if (*(*mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
LABEL_111:
        if (v57)
        {
        }

        else if (v58)
        {
        }

        else
        {
          if (!v56)
          {
            v55 = *(v60[1] + 24);
            v59[0] = *(*v60 + 24);
            v59[1] = v55;
            mlir::Builder::getFusedLoc(a3 + 1, v59, 2, 0);
          }
        }
      }

      else
      {
        if (*(v5 + 9))
        {
          v51 = v5 - 16;
        }

        else
        {
          v51 = 0;
        }

        v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0);
        while (1)
        {
          v52 = *v52;
          if (!v52)
          {
            break;
          }

          if (*(*(v52[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
          {
            goto LABEL_111;
          }
        }
      }
    }

    else
    {
    }
  }

  v33 = v53;
LABEL_68:
  if (v60 != v62)
  {
    free(v60);
  }

  return v33;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::reshapeConstantToGOCScale(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = a2;
  v20 = 0;
  v23[0] = &v20;
  v25[0] = a2;
  result = mlir::Value::getDefiningOp(v25);
  if (result)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v23, result))
    {
      NumElements = mlir::ElementsAttr::getNumElements(v20, v21);
      Loc = mlir::Value::getLoc(&v22);
      v25[0] = 1;
      v25[1] = NumElements;
      v16 = vdupq_n_s64(1uLL);
      v26 = v16;
      F16Type = mlir::Builder::getF16Type((a1 + 8), v6);
      v19 = mlir::MemRefType::get(v25, 4, F16Type, 0, 0, 0);
      v8 = v20;
      v9 = v21;
      v23[0] = 1;
      v23[1] = NumElements;
      v24 = v16;
      v17[0] = mlir::CallOpInterface::getArgOperands(&v20);
      v17[1] = v10;
      isSplat = mlir::ElementsAttr::isSplat(v17);
      v12 = mlir::RankedTensorType::get(v23, 4, isSplat, 0);
      v13 = v12;
      if (v12)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18[0] = mlir::reshapeElementsAttr(v8, v9, v13, v14);
      v18[1] = v15;
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v19, v18) - 16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::ElementwiseMult &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::ElementwiseMult type";
  v13 = 51;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 96;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 97;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: 'is FP16 value'";
  v13 = 60;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, w_out' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out, w_scale' failed to satisfy constraint: ''";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, out' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_scale' failed to satisfy constraint: 'is nullptr'";
  v13 = 66;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_zp' failed to satisfy constraint: 'is nullptr'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvFilterMult::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_palettized_LUT, kernel_mutable_palettized_LUT_offset' failed to satisfy constraint: 'is nullptr'";
  v13 = 113;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_ConvInputGOC::~ANEC_ConvInputGOC(mlir::anec::_anonymous_namespace_::ANEC_ConvInputGOC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_ConvInputGOC *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v65[4] = *MEMORY[0x1E69E9840];
  v63 = v65;
  v65[0] = a2;
  v64 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    v27 = *(a3 + 2);
    if (!v27 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_68;
    }

    v28 = *(v5 + 3);
LABEL_60:
    (*(*v27 + 88))(v27, v28, v29, &ElementTypeOrSelf);
LABEL_68:
    v34 = 0;
    goto LABEL_69;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v7 = DefiningOp;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v27 = *(a3 + 2);
    if (!v27)
    {
      goto LABEL_68;
    }

    v33 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v27))
    {
      goto LABEL_68;
    }

    v28 = *(v33 + 24);
    goto LABEL_60;
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 72);
    v9 = v8 + 32;
  }

  else
  {
    v8 = 0;
    v9 = 32;
  }

  v10 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v54 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 8);
    DefiningOp = v54;
    v10 = v64;
  }

  v63[v10] = DefiningOp;
  LODWORD(v64) = v64 + 1;
  if ((*(v5 + 46) & 0x80) != 0)
  {
    if (!*(a2 + 47))
    {
LABEL_16:
      v67.var0 = "stride";
      v67.var1 = 6;
      InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v67);
      goto LABEL_17;
    }
  }

  else if (!*(a2 + 47))
  {
    goto LABEL_16;
  }

  v66.var0 = "stride";
  v66.var1 = 6;
  InherentAttr = mlir::Operation::getInherentAttr(a2, v66);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_68;
    }

    v31 = *(a2 + 3);
LABEL_67:
    (*(*v30 + 88))(v30, v31, v32, &ElementTypeOrSelf);
    goto LABEL_68;
  }

  if (!*(a2 + 47) || (v68.var0 = "dilation", v68.var1 = 8, v13 = mlir::Operation::getInherentAttr(a2, v68), (v14 & 1) == 0))
  {
    v69.var0 = "dilation";
    v69.var1 = 8;
    v13 = mlir::DictionaryAttr::get((a2 + 56), v69);
  }

  if (!v13 || !mlir::DenseIntElementsAttr::classof(v13))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_68;
    }

    v31 = *(a2 + 3);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v70.var0 = "padding", v70.var1 = 7, v15 = mlir::Operation::getInherentAttr(a2, v70), (v16 & 1) == 0))
  {
    v71.var0 = "padding";
    v71.var1 = 7;
    v15 = mlir::DictionaryAttr::get((a2 + 56), v71);
  }

  if (!v15 || !mlir::DenseIntElementsAttr::classof(v15))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_68;
    }

    v31 = *(a2 + 3);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v72.var0 = "padding_mode", v72.var1 = 12, v17 = mlir::Operation::getInherentAttr(a2, v72), (v18 & 1) == 0))
  {
    v73.var0 = "padding_mode";
    v73.var1 = 12;
    v17 = mlir::DictionaryAttr::get((a2 + 56), v73);
  }

  if (!v17 || (mlir::anec::PaddingModeAttr::classof(v17) & 1) == 0)
  {
    mlir::arith::AtomicRMWKindAttr::get(*(a3 + 1), 0);
  }

  if (!*(a2 + 47) || (v74.var0 = "groups", v74.var1 = 6, v19 = mlir::Operation::getInherentAttr(a2, v74), (v20 & 1) == 0))
  {
    v75.var0 = "groups";
    v75.var1 = 6;
    v19 = mlir::DictionaryAttr::get((a2 + 56), v75);
  }

  if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 0);
    mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 1);
  }

  if (!*(a2 + 47) || (v76.var0 = "channel_wise", v76.var1 = 12, mlir::Operation::getInherentAttr(a2, v76), (v22 & 1) == 0))
  {
    v77.var0 = "channel_wise";
    v77.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v77);
  }

  if (!*(a2 + 47) || (v78.var0 = "kernel_scale", v78.var1 = 12, v23 = mlir::Operation::getInherentAttr(a2, v78), (v24 & 1) == 0))
  {
    v79.var0 = "kernel_scale";
    v79.var1 = 12;
    v23 = mlir::DictionaryAttr::get((a2 + 56), v79);
  }

  if (v23)
  {
    v25 = v23;
    if (mlir::DenseFPElementsAttr::classof(v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v57 = v26;
  if (!*(a2 + 47) || (v80.var0 = "kernel_zero_point", v80.var1 = 17, v36 = mlir::Operation::getInherentAttr(a2, v80), (v37 & 1) == 0))
  {
    v81.var0 = "kernel_zero_point";
    v81.var1 = 17;
    v36 = mlir::DictionaryAttr::get((a2 + 56), v81);
  }

  if (v36)
  {
    v38 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v58 = v39;
  if (!*(a2 + 47) || (v82.var0 = "kernel_palettized_LUT", v82.var1 = 21, v40 = mlir::Operation::getInherentAttr(a2, v82), (v41 & 1) == 0))
  {
    v83.var0 = "kernel_palettized_LUT";
    v83.var1 = 21;
    v40 = mlir::DictionaryAttr::get((a2 + 56), v83);
  }

  if (v40)
  {
    v42 = v40;
    if (mlir::DenseElementsAttr::classof(v40))
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  v56 = v43;
  if (!*(a2 + 47) || (v84.var0 = "kernel_mutable_palettized_LUT", v84.var1 = 29, mlir::Operation::getInherentAttr(a2, v84), (v44 & 1) == 0))
  {
    v85.var0 = "kernel_mutable_palettized_LUT";
    v85.var1 = 29;
    mlir::DictionaryAttr::get((a2 + 56), v85);
  }

  if (*(v5 + 9))
  {
    v45 = v5 - 16;
  }

  else
  {
    v45 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF16(&ElementTypeOrSelf))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_68;
    }

    v31 = *(a2 + 3);
    goto LABEL_67;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isF16(&ElementTypeOrSelf) && (*(v7 + 36) ? (v47 = v7 - 16) : (v47 = 0), v48 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0), *(*mlir::getElementTypeOrSelf((*(v48 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
  }

  else
  {
    v49 = *(v9 + 24);
    ElementTypeOrSelf = 0;
    v60 = 0;
    p_ElementTypeOrSelf = &ElementTypeOrSelf;
    v62 = v49;
    v50 = mlir::Value::getDefiningOp(&v62);
    if (v50 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_ElementTypeOrSelf, v50) & 1) != 0 && (mlir::ElementsAttr::isSplat(&ElementTypeOrSelf) & 1) != 0)
    {
      {
        if (*(*mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
LABEL_112:
          if (v57)
          {
          }

          else if (v58)
          {
          }

          else
          {
            if (!v56)
            {
              v55 = *(v63[1] + 24);
              ElementTypeOrSelf = *(*v63 + 24);
              v60 = v55;
              mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 2, 0);
            }
          }
        }

        else
        {
          if (*(v5 + 9))
          {
            v51 = v5 - 16;
          }

          else
          {
            v51 = 0;
          }

          v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0);
          while (1)
          {
            v52 = *v52;
            if (!v52)
            {
              break;
            }

            if (*(*(v52[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
            {
              goto LABEL_112;
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v34 = v53;
LABEL_69:
  if (v63 != v65)
  {
    free(v63);
  }

  return v34;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

void *mlir::anec::anonymous namespace::reduceSplatConst(uint64_t a1, void *a2)
{
  v2 = a2;
  v35[5] = *MEMORY[0x1E69E9840];
  v32 = a2;
  v4 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v31[0] = v4;
  v31[1] = v5;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v7) != 1)
  {
    v30[0] = 0;
    v30[1] = 0;
    v29[0] = v30;
    __b = v2;
    DefiningOp = mlir::Value::getDefiningOp(&__b);
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v29, DefiningOp);
    mlir::ElementsAttr::value_begin<mlir::TypedAttr,void>(v30, &__b);
    if (BYTE1(__b))
    {
      v9 = 0;
    }

    else
    {
      v9 = v35[0];
    }

    if (__b == 1)
    {
      v10 = *(v34 + 8 * v9);
    }

    else
    {
      v10 = (*(*v34 + 24))();
    }

    v11 = (v35[1])(v10);
    if ((__b & 1) == 0)
    {
      v13 = v34;
      v34 = 0;
      if (v13)
      {
        v14 = v11;
        v15 = v12;
        (*(*v13 + 8))(v13);
        v12 = v15;
        v11 = v14;
      }
    }

    v29[0] = v11;
    v29[1] = v12;
    mlir::CallableOpInterface::getArgAttrsAttr(v31);
    v17 = v16;
    __b = v35;
    HIDWORD(v34) = 5;
    if (v16 < 6)
    {
      if (v16)
      {
        memset_pattern16(v35, &unk_1E096FAE0, 8 * v16);
      }

      v18 = v35;
    }

    else
    {
      LODWORD(v34) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v35, v16, 8);
      v18 = __b;
      memset_pattern16(__b, &unk_1E096FAE0, 8 * v17);
    }

    LODWORD(v34) = v17;
    isSplat = mlir::ElementsAttr::isSplat(v31);
    v28 = mlir::MemRefType::get(v18, v17, isSplat, 0, 0, 0);
    v20 = __b;
    v21 = v34;
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v29);
    v23 = mlir::RankedTensorType::get(v20, v21, CallableForCallee, 0);
    v24 = *(mlir::Value::getDefiningOp(&v32) + 24);
    if (v23)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v25 = 0;
    }

    v27 = mlir::DenseElementsAttr::get(v23, v25, v29, 1uLL);
    v2 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a1 + 8), v24, &v28, &v27) - 16);
    if (__b != v35)
    {
      free(__b);
    }
  }

  return v2;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_2(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::GOC &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::GOC type";
  v13 = 39;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 96;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.convolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 97;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: 'is FP16 value'";
  v13 = 60;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, x_out' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x_scale' failed to satisfy constraint: 'splat constant value'";
  v13 = 71;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x_bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, out' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_scale' failed to satisfy constraint: 'is nullptr'";
  v13 = 66;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_zp' failed to satisfy constraint: 'is nullptr'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_ConvInputGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_palettized_LUT, kernel_mutable_palettized_LUT_offset' failed to satisfy constraint: 'is nullptr'";
  v13 = 113;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::~ANEC_DeconvFilterGOC(mlir::anec::_anonymous_namespace_::ANEC_DeconvFilterGOC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_DeconvFilterGOC *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v61 = v63;
  v63[0] = a2;
  v62 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v60[0] = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v60);
  if (!DefiningOp)
  {
    v27 = *(a3 + 2);
    if (!v27 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_67;
    }

    v28 = *(v5 + 3);
LABEL_59:
    (*(*v27 + 88))(v27, v28, v29, v60);
LABEL_67:
    v34 = 0;
    goto LABEL_68;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v7 = DefiningOp;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v27 = *(a3 + 2);
    if (!v27)
    {
      goto LABEL_67;
    }

    v33 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v27))
    {
      goto LABEL_67;
    }

    v28 = *(v33 + 24);
    goto LABEL_59;
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 72);
    v9 = v8 + 32;
  }

  else
  {
    v8 = 0;
    v9 = 32;
  }

  v10 = v62;
  if (v62 >= HIDWORD(v62))
  {
    v55 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v62 + 1, 8);
    DefiningOp = v55;
    v10 = v62;
  }

  v61[v10] = DefiningOp;
  LODWORD(v62) = v62 + 1;
  if (!*(a2 + 47) || (v64.var0 = "stride", v64.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(a2, v64), (v12 & 1) == 0))
  {
    v65.var0 = "stride";
    v65.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v65);
  }

  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
LABEL_66:
    (*(*v30 + 88))(v30, v31, v32, v60);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v66.var0 = "dilation", v66.var1 = 8, v13 = mlir::Operation::getInherentAttr(a2, v66), (v14 & 1) == 0))
  {
    v67.var0 = "dilation";
    v67.var1 = 8;
    v13 = mlir::DictionaryAttr::get((a2 + 56), v67);
  }

  if (!v13 || !mlir::DenseIntElementsAttr::classof(v13))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v68.var0 = "padding", v68.var1 = 7, v15 = mlir::Operation::getInherentAttr(a2, v68), (v16 & 1) == 0))
  {
    v69.var0 = "padding";
    v69.var1 = 7;
    v15 = mlir::DictionaryAttr::get((a2 + 56), v69);
  }

  if (!v15 || !mlir::DenseIntElementsAttr::classof(v15))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v70.var0 = "padding_mode", v70.var1 = 12, v17 = mlir::Operation::getInherentAttr(a2, v70), (v18 & 1) == 0))
  {
    v71.var0 = "padding_mode";
    v71.var1 = 12;
    v17 = mlir::DictionaryAttr::get((a2 + 56), v71);
  }

  if (!v17 || (mlir::anec::PaddingModeAttr::classof(v17) & 1) == 0)
  {
    mlir::arith::AtomicRMWKindAttr::get(*(a3 + 1), 0);
  }

  if (!*(a2 + 47) || (v72.var0 = "groups", v72.var1 = 6, v19 = mlir::Operation::getInherentAttr(a2, v72), (v20 & 1) == 0))
  {
    v73.var0 = "groups";
    v73.var1 = 6;
    v19 = mlir::DictionaryAttr::get((a2 + 56), v73);
  }

  if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 0);
    mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 1);
  }

  if (!*(a2 + 47) || (v74.var0 = "channel_wise", v74.var1 = 12, mlir::Operation::getInherentAttr(a2, v74), (v22 & 1) == 0))
  {
    v75.var0 = "channel_wise";
    v75.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v75);
  }

  if (!*(a2 + 47) || (v76.var0 = "kernel_scale", v76.var1 = 12, v23 = mlir::Operation::getInherentAttr(a2, v76), (v24 & 1) == 0))
  {
    v77.var0 = "kernel_scale";
    v77.var1 = 12;
    v23 = mlir::DictionaryAttr::get((a2 + 56), v77);
  }

  if (v23)
  {
    v25 = v23;
    if (mlir::DenseFPElementsAttr::classof(v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v58 = v26;
  if (!*(a2 + 47) || (v78.var0 = "kernel_zero_point", v78.var1 = 17, v36 = mlir::Operation::getInherentAttr(a2, v78), (v37 & 1) == 0))
  {
    v79.var0 = "kernel_zero_point";
    v79.var1 = 17;
    v36 = mlir::DictionaryAttr::get((a2 + 56), v79);
  }

  if (v36)
  {
    v38 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v59 = v39;
  if (!*(a2 + 47) || (v80.var0 = "kernel_palettized_LUT", v80.var1 = 21, v40 = mlir::Operation::getInherentAttr(a2, v80), (v41 & 1) == 0))
  {
    v81.var0 = "kernel_palettized_LUT";
    v81.var1 = 21;
    v40 = mlir::DictionaryAttr::get((a2 + 56), v81);
  }

  if (v40)
  {
    v42 = v40;
    if (mlir::DenseElementsAttr::classof(v40))
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  v57 = v43;
  if (!*(a2 + 47) || (v82.var0 = "kernel_mutable_palettized_LUT", v82.var1 = 29, mlir::Operation::getInherentAttr(a2, v82), (v44 & 1) == 0))
  {
    v83.var0 = "kernel_mutable_palettized_LUT";
    v83.var1 = 29;
    mlir::DictionaryAttr::get((a2 + 56), v83);
  }

  if (*(v5 + 9))
  {
    v45 = v5 - 16;
  }

  else
  {
    v45 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
  v60[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF16(v60))
  {
    v30 = *(a3 + 2);
    if (!v30 || !mlir::RewriterBase::Listener::classof(v30))
    {
      goto LABEL_67;
    }

    v31 = *(a2 + 3);
    goto LABEL_66;
  }

  v60[0] = mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isF16(v60) && (*(v7 + 36) ? (v47 = v7 - 16) : (v47 = 0), v48 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0), *(*mlir::getElementTypeOrSelf((*(v48 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
  }

  else
  {
    if (*(v5 + 9))
    {
      v49 = v5 - 16;
    }

    else
    {
      v49 = 0;
    }

    v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    Owner = mlir::detail::OpResultImpl::getOwner(v50);
    {
      {
        if (*(*mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
LABEL_112:
          if (v58)
          {
          }

          else if (v59)
          {
          }

          else
          {
            if (!v57)
            {
              v56 = *(v61[1] + 24);
              v60[0] = *(*v61 + 24);
              v60[1] = v56;
              mlir::Builder::getFusedLoc(a3 + 1, v60, 2, 0);
            }
          }
        }

        else
        {
          if (*(v5 + 9))
          {
            v52 = v5 - 16;
          }

          else
          {
            v52 = 0;
          }

          v53 = mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0);
          while (1)
          {
            v53 = *v53;
            if (!v53)
            {
              break;
            }

            if (*(*(v53[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
            {
              goto LABEL_112;
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v34 = v54;
LABEL_68:
  if (v61 != v63)
  {
    free(v61);
  }

  return v34;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::UnitAttr &,mlir::DenseFPElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DictionaryAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Deconvolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 100;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: 'is FP16 value'";
  v13 = 60;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, w_out' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out, w_scale' failed to satisfy constraint: ''";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w_bias' failed to satisfy constraint: 'is constant 0'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'w, out' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_scale' failed to satisfy constraint: 'is nullptr'";
  v13 = 66;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_zp' failed to satisfy constraint: 'is nullptr'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_DeconvFilterGOC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'kernel_palettized_LUT, kernel_mutable_palettized_LUT_offset' failed to satisfy constraint: 'is nullptr'";
  v13 = 113;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_DeconvFilterMult::~ANEC_DeconvFilterMult(mlir::anec::_anonymous_namespace_::ANEC_DeconvFilterMult *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::ANEC_DeconvFilterMult::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_DeconvFilterMult *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v62[4] = *MEMORY[0x1E69E9840];
  v60 = v62;
  v62[0] = a2;
  v61 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v59[0] = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v59);
  if (!DefiningOp)
  {
    v26 = *(a3 + 2);
    if (!v26 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_67;
    }

    v27 = *(v5 + 3);
LABEL_59:
    (*(*v26 + 88))(v26, v27, v28, v59);
LABEL_67:
    v33 = 0;
    goto LABEL_68;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
  {
    v7 = DefiningOp;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v26 = *(a3 + 2);
    if (!v26)
    {
      goto LABEL_67;
    }

    v32 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v26))
    {
      goto LABEL_67;
    }

    v27 = *(v32 + 24);
    goto LABEL_59;
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = v61;
  if (v61 >= HIDWORD(v61))
  {
    v54 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 8);
    DefiningOp = v54;
    v9 = v61;
  }

  v60[v9] = DefiningOp;
  LODWORD(v61) = v61 + 1;
  if (!*(a2 + 47) || (v63.var0 = "stride", v63.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(a2, v63), (v11 & 1) == 0))
  {
    v64.var0 = "stride";
    v64.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v64);
  }

  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
LABEL_66:
    (*(*v29 + 88))(v29, v30, v31, v59);
    goto LABEL_67;
  }

  if (!*(a2 + 47) || (v65.var0 = "dilation", v65.var1 = 8, v12 = mlir::Operation::getInherentAttr(a2, v65), (v13 & 1) == 0))
  {
    v66.var0 = "dilation";
    v66.var1 = 8;
    v12 = mlir::DictionaryAttr::get((a2 + 56), v66);
  }

  if (!v12 || !mlir::DenseIntElementsAttr::classof(v12))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v67.var0 = "padding", v67.var1 = 7, v14 = mlir::Operation::getInherentAttr(a2, v67), (v15 & 1) == 0))
  {
    v68.var0 = "padding";
    v68.var1 = 7;
    v14 = mlir::DictionaryAttr::get((a2 + 56), v68);
  }

  if (!v14 || !mlir::DenseIntElementsAttr::classof(v14))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  if (!*(a2 + 47) || (v69.var0 = "padding_mode", v69.var1 = 12, v16 = mlir::Operation::getInherentAttr(a2, v69), (v17 & 1) == 0))
  {
    v70.var0 = "padding_mode";
    v70.var1 = 12;
    v16 = mlir::DictionaryAttr::get((a2 + 56), v70);
  }

  if (!v16 || (mlir::anec::PaddingModeAttr::classof(v16) & 1) == 0)
  {
    mlir::arith::AtomicRMWKindAttr::get(*(a3 + 1), 0);
  }

  if (!*(a2 + 47) || (v71.var0 = "groups", v71.var1 = 6, v18 = mlir::Operation::getInherentAttr(a2, v71), (v19 & 1) == 0))
  {
    v72.var0 = "groups";
    v72.var1 = 6;
    v18 = mlir::DictionaryAttr::get((a2 + 56), v72);
  }

  if (!v18 || *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 0);
    mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 1);
  }

  if (!*(a2 + 47) || (v73.var0 = "channel_wise", v73.var1 = 12, mlir::Operation::getInherentAttr(a2, v73), (v21 & 1) == 0))
  {
    v74.var0 = "channel_wise";
    v74.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v74);
  }

  if (!*(a2 + 47) || (v75.var0 = "kernel_scale", v75.var1 = 12, v22 = mlir::Operation::getInherentAttr(a2, v75), (v23 & 1) == 0))
  {
    v76.var0 = "kernel_scale";
    v76.var1 = 12;
    v22 = mlir::DictionaryAttr::get((a2 + 56), v76);
  }

  if (v22)
  {
    v24 = v22;
    if (mlir::DenseFPElementsAttr::classof(v22))
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v57 = v25;
  if (!*(a2 + 47) || (v77.var0 = "kernel_zero_point", v77.var1 = 17, v35 = mlir::Operation::getInherentAttr(a2, v77), (v36 & 1) == 0))
  {
    v78.var0 = "kernel_zero_point";
    v78.var1 = 17;
    v35 = mlir::DictionaryAttr::get((a2 + 56), v78);
  }

  if (v35)
  {
    v37 = v35;
    if (mlir::DenseIntElementsAttr::classof(v35))
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v58 = v38;
  if (!*(a2 + 47) || (v79.var0 = "kernel_palettized_LUT", v79.var1 = 21, v39 = mlir::Operation::getInherentAttr(a2, v79), (v40 & 1) == 0))
  {
    v80.var0 = "kernel_palettized_LUT";
    v80.var1 = 21;
    v39 = mlir::DictionaryAttr::get((a2 + 56), v80);
  }

  if (v39)
  {
    v41 = v39;
    if (mlir::DenseElementsAttr::classof(v39))
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v56 = v42;
  if (!*(a2 + 47) || (v81.var0 = "kernel_mutable_palettized_LUT", v81.var1 = 29, mlir::Operation::getInherentAttr(a2, v81), (v43 & 1) == 0))
  {
    v82.var0 = "kernel_mutable_palettized_LUT";
    v82.var1 = 29;
    mlir::DictionaryAttr::get((a2 + 56), v82);
  }

  if (*(v5 + 9))
  {
    v44 = v5 - 16;
  }

  else
  {
    v44 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  v59[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF16(v59))
  {
    v29 = *(a3 + 2);
    if (!v29 || !mlir::RewriterBase::Listener::classof(v29))
    {
      goto LABEL_67;
    }

    v30 = *(a2 + 3);
    goto LABEL_66;
  }

  v59[0] = mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::isF16(v59) && (*(v7 + 36) ? (v46 = v7 - 16) : (v46 = 0), v47 = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0), *(*mlir::getElementTypeOrSelf((*(v47 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
  }

  else
  {
    if (*(v5 + 9))
    {
      v48 = v5 - 16;
    }

    else
    {
      v48 = 0;
    }

    v49 = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 0);
    Owner = mlir::detail::OpResultImpl::getOwner(v49);
    {
      if (*(*mlir::getElementTypeOrSelf((*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
LABEL_111:
        if (v57)
        {
        }

        else if (v58)
        {
        }

        else
        {
          if (!v56)
          {
            v55 = *(v60[1] + 24);
            v59[0] = *(*v60 + 24);
            v59[1] = v55;
            mlir::Builder::getFusedLoc(a3 + 1, v59, 2, 0);
          }
        }
      }

      else
      {
        if (*(v5 + 9))
        {
          v51 = v5 - 16;
        }

        else
        {
          v51 = 0;
        }

        v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0);
        while (1)
        {
          v52 = *v52;
          if (!v52)
          {
            break;
          }

          if (*(*(v52[2] + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
          {
            goto LABEL_111;
          }
        }
      }
    }

    else
    {
    }
  }

  v33 = v53;
LABEL_68:
  if (v60 != v62)
  {
    free(v60);
  }

  return v33;
}