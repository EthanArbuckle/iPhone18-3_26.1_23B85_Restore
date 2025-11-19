uint64_t sub_23C4EC4B4(uint64_t a1, llvm::GlobalValue *this, unsigned int a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v6 = sub_23C4EC884(this);
  if (v6)
  {
    result = *(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF) + 32 * a3);
LABEL_3:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a3 != 8)
  {
    v9 = sub_23C4EC914(a1, this);
    if (v9)
    {
      goto LABEL_20;
    }
  }

  v10 = a1 + *(*a1 - 24);
  if ((*(*(v10 + 344) + 1678) & 1) == 0 && (a3 > 8 || ((1 << a3) & 0x103) == 0))
  {
    v9 = sub_23C4ED304(a1, this);
LABEL_20:
    v34 = *MEMORY[0x277D85DE8];

    return sub_23C4EC9BC(a1, v9, a3);
  }

  v11 = a1 + 56 * a3;
  v12 = *(v11 + 1000);
  if (v12)
  {
    v13 = *(v10 + 184);
    v37 = 257;
    v14 = sub_23C49ACF8(v10 + 8, 47, this, v13, v36);
    if (*(a1 + 2385) == 1)
    {
      v15 = a1 + *(*a1 - 24);
      v38 = sub_23C49BBA0((a1 + 168), *(*(v15 + 344) + 1576));
      LODWORD(v39) = v16;
      llvm::TypeSize::operator unsigned long long();
      v17 = *(v15 + 184);
      v18 = llvm::ConstantInt::get();
      v37 = 257;
      v14 = sub_23C4CBA68(v15 + 8, v14, v18, v36);
    }

    v19 = a1 + *(*a1 - 24);
    if (a3 > 1 || *(v14 + 16) < 0x15u)
    {
      v33 = *(v19 + 192);
      v38 = llvm::ConstantInt::get();
      v39 = v14;
      v37 = 257;
      result = sub_23C4ED3A0(v19, v12, &v38, 2, v36);
    }

    else
    {
      v20 = *(v19 + 160);
      v21 = llvm::PointerType::get();
      v22 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.textureState", 21, v21, v21, *(a1 + *(*a1 - 24) + 200));
      v23 = a1 + *(*a1 - 24);
      v37 = 257;
      v41[0] = sub_23C49ACF8(v23 + 8, 49, v12, v21, v36);
      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 200);
      v40 = 257;
      v41[1] = sub_23C49ACF8(v24 + 8, 39, v14, v25, &v38);
      v35[16] = 257;
      v26 = sub_23C497A7C(v23 + 8, *(v22 + 24), v22, v41, 2, v35);
      v27 = a1 + *(*a1 - 24);
      v28 = *(*(v27 + 344) + 1576);
      v29 = llvm::PointerType::get();
      v37 = 257;
      result = sub_23C49ACF8(v27 + 8, 49, v26, v29, v36);
    }

    goto LABEL_3;
  }

  v30 = *(v11 + 1016);
  v31 = *(v11 + 1032);
  llvm::PointerType::get();
  v32 = *MEMORY[0x277D85DE8];

  return llvm::UndefValue::get();
}

uint64_t sub_23C4EC884(llvm::GlobalValue *this)
{
  while (1)
  {
    v2 = *(this + 16);
    if (v2 > 0x1B)
    {
      if (v2 != 77)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (v2 != 5)
    {
      break;
    }

    if (*(this + 9) != 49)
    {
      return 0;
    }

LABEL_6:
    v3 = *(this + 5);
    if ((v3 & 0x40000000) != 0)
    {
      v4 = *(this - 1);
    }

    else
    {
      v4 = (this - 32 * (v3 & 0x7FFFFFF));
    }

    this = *v4;
  }

  if (v2 != 3 || (llvm::GlobalValue::isDeclaration(this) & 1) != 0)
  {
    return 0;
  }

  return *(this - 4);
}

uint64_t sub_23C4EC914(uint64_t a1, void *a2)
{
  v4 = a1 + 888;
  v5 = sub_23C4ED7D8((a1 + 888), a2);
  v6 = *(a1 + 896);
  v7 = 16;
  if (v6 == *(a1 + 888))
  {
    v7 = 20;
  }

  if (v5 == (v6 + 8 * *(v4 + v7)))
  {
    return 0;
  }

  v8 = a1 + *(*a1 - 24);
  v9 = *(v8 + 192);
  v12 = 257;
  return sub_23C49ACF8(v8 + 8, 47, a2, v9, v11);
}

uint64_t sub_23C4EC9BC(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = a3 == 1;
  v7 = a1 + 24 * v6;
  v8 = *(v7 + 1904);
  if (!v8)
  {
    if ((atomic_load_explicit(&qword_27E1F7350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7350))
    {
      v46 = *(*(a1 + *(*a1 - 24) + 344) + 792);
      dword_27E1F7330[0] = (*(*v46 + 304))(v46);
      v47 = *(*(a1 + *(*a1 - 24) + 344) + 792);
      dword_27E1F7334 = (*(*v47 + 160))(v47);
      dword_27E1F7338 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 312))();
      v48 = *(*(a1 + *(*a1 - 24) + 344) + 792);
      dword_27E1F733C = (*(*v48 + 168))(v48);
      dword_27E1F7340 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 320))();
      v49 = *(*(a1 + *(*a1 - 24) + 344) + 792);
      dword_27E1F7344 = (*(*v49 + 176))(v49);
      dword_27E1F7348 = (*(**(*(a1 + *(*a1 - 24) + 344) + 792) + 328))();
      v50 = *(*(a1 + *(*a1 - 24) + 344) + 792);
      dword_27E1F734C = (*(*v50 + 184))(v50);
      __cxa_guard_release(&qword_27E1F7350);
    }

    v9 = (v7 + 1888);
    v10 = *(a1 + 2385);
    v11 = (*(*(a1 + *(*a1 - 24)) + 32))(a1 + *(*a1 - 24)) != 2 && (*(*(a1 + *(*a1 - 24)) + 32))(a1 + *(*a1 - 24)) != 16;
    v12 = dword_27E1F7330[4 * v10 + 2 * v6 + v11];
    v13 = *(a1 + *(*a1 - 24) + 160);
    v14 = llvm::PointerType::get();
    v72[0] = "agc.texture_heap.";
    v72[2] = v12;
    v73 = 2051;
    v15 = sub_23C4ED494(a1, v14, v72, v12, 0);
    sub_23C4D56F8(v9, v15);
    v8 = *(v9 + 2);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0;
    }

    if (a3 == 9)
    {
      v19 = sub_23C506824(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 200));
      v20 = a1 + *(*a1 - 24);
      v21 = *(v20 + 200);
      v73 = 257;
      v22 = sub_23C49ACF8(v20 + 8, 39, a2, v21, v72);
      sub_23C4BA8C0((v20 + 8), v22, v19, 0);
      return v19;
    }
  }

  else
  {
    if (a3 < 2)
    {
      v16 = a1 + *(*a1 - 24);
      v17 = *(*(v16 + 344) + 1576);
      v18 = llvm::PointerType::get();
      v73 = 257;
      return sub_23C49ACF8(v16 + 8, 49, v8, v18, v72);
    }

    if (a3 == 2)
    {
      v23 = *(a1 + *(*a1 - 24) + 192);
      v24 = llvm::FixedVectorType::get();
      v25 = *a1;
      goto LABEL_17;
    }
  }

  v25 = *a1;
  v24 = *(a1 + *(*a1 - 24) + 192);
LABEL_17:
  v26 = *(a1 + *(v25 - 24) + 176);
  v27 = llvm::PointerType::get();
  v28 = *(a1 + *(*a1 - 24) + 200);
  v29 = llvm::PointerType::get();
  v19 = sub_23C506824(a1 + *(*a1 - 24), v24);
  v30 = a1 + *(*a1 - 24);
  v73 = 257;
  v31 = sub_23C497C88((v30 + 8), **(*v8 + 16), v8, 0, v72);
  v71 = 257;
  v32 = sub_23C49ACF8(v30 + 8, 49, v31, v27, v70);
  v69 = 257;
  v33 = sub_23C49AEB8(v30, v32, a2, v68);
  v67 = 257;
  v34 = sub_23C49ACF8(v30 + 8, 49, v33, v29, v66);
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v39 = a1 + *(*a1 - 24);
        v40 = *(v39 + 344);
        v60 = *(v39 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v61, (v39 + 8));
        v62 = *(v39 + 104);
        (*(*v40 + 456))(v40, &v60, v34, v19);
        if (!v61)
        {
          return v19;
        }

        break;
      case 6:
        v42 = a1 + *(*a1 - 24);
        v43 = *(v42 + 344);
        v57 = *(v42 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v58, (v42 + 8));
        v59 = *(v42 + 104);
        (*(*v43 + 464))(v43, &v57, v34, v19);
        if (!v58)
        {
          return v19;
        }

        break;
      case 7:
        v35 = a1 + *(*a1 - 24);
        v36 = *(v35 + 344);
        v54 = *(v35 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v55, (v35 + 8));
        v56 = *(v35 + 104);
        (*(*v36 + 472))(v36, &v54, v34, v19);
        if (!v55)
        {
          return v19;
        }

        break;
      default:
        return v19;
    }

    goto LABEL_28;
  }

  if (a3 == 2)
  {
    v44 = a1 + *(*a1 - 24);
    v45 = *(v44 + 344);
    v63 = *(v44 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v64, (v44 + 8));
    v65 = *(v44 + 104);
    (*(*v45 + 448))(v45, &v63, v34, v19);
    if (!v64)
    {
      return v19;
    }

    goto LABEL_28;
  }

  if (a3 == 4)
  {
    v37 = a1 + *(*a1 - 24);
    v38 = *(v37 + 344);
    v51 = *(v37 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v37 + 8));
    v53 = *(v37 + 104);
    (*(*v38 + 480))(v38, &v51, v34, v19);
    if (v52)
    {
LABEL_28:
      llvm::MetadataTracking::untrack();
    }
  }

  return v19;
}

uint64_t sub_23C4ED304(uint64_t a1, llvm::GlobalValue *this)
{
  if ((*(a1 + 2385) & 1) != 0 || (result = sub_23C4EC914(a1, this)) == 0)
  {
    v5 = a1 + *(*a1 - 24);
    v6 = sub_23C4EC4B4(a1, this);
    v8 = 257;
    return sub_23C497C88((v5 + 8), **(*v6 + 16), v6, 0, v7);
  }

  return result;
}

uint64_t sub_23C4ED3A0(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v10 = **(v10 + 16);
  }

  v11 = **(v10 + 16);
  v12 = (*(**(a1 + 80) + 48))(*(a1 + 80), v11, a2, a3, a4, 0);
  if (!v12)
  {
    v12 = sub_23C49AFDC(v11, a2, a3, a4);
    sub_23C49B15C((a1 + 8), v12, a5);
  }

  return v12;
}

uint64_t sub_23C4ED494(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 2304);
  v9 = *(a1 + 2312);
  v10 = &v8[2 * v9];
  if (v9)
  {
    do
    {
      v11 = v9 >> 1;
      v12 = &v8[2 * (v9 >> 1)];
      v14 = *v12;
      v13 = v12 + 4;
      v9 += ~(v9 >> 1);
      if (v14 < a4)
      {
        v8 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v9);
  }

  if (v8 != v10)
  {
    v15 = v8[1];
  }

  v16 = llvm::User::operator new(0x58);
  v17 = *(a1 + *(*a1 - 24) + 320);
  v18 = llvm::GlobalVariable::GlobalVariable();
  *(v18 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v19 = *(a1 + 2304);
  v20 = *(a1 + 2312);
  if ((v19 + 16 * v20) == v8)
  {
    if (v20 >= *(a1 + 2316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = (v19 + 16 * v20);
    *v23 = a4;
    v23[1] = v16;
    ++*(a1 + 2312);
  }

  else
  {
    if (v20 >= *(a1 + 2316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v19 + 16 * v20) = *(v19 + 16 * v20 - 16);
    v21 = *(a1 + 2312);
    v22 = *(a1 + 2304) + 16 * v21 - 16;
    if (v22 != v8)
    {
      memmove(v8 + 2, v8, v22 - v8);
      LODWORD(v21) = *(a1 + 2312);
    }

    *(a1 + 2312) = v21 + 1;
    *v8 = a4;
    v8[1] = v16;
  }

  v24 = llvm::ValueAsMetadata::get();
  v25 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  v26 = llvm::ValueAsMetadata::get();
  v27 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  v36[0] = v37;
  v37[0] = v24;
  v37[1] = v26;
  v37[2] = llvm::ValueAsMetadata::get();
  v36[1] = 0x400000003;
  if (a5)
  {
    v28 = *(a1 + *(*a1 - 24) + 192);
    llvm::ConstantInt::get();
    v29 = llvm::ValueAsMetadata::get();
    sub_23C49B500(v36, v29);
  }

  v30 = a1 + *(*a1 - 24);
  v32 = *(v30 + 328);
  v31 = *(v30 + 336);
  Impl = llvm::MDTuple::getImpl();
  sub_23C49B500(v32, Impl);
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v16;
}

void **sub_23C4ED7D8(void ***this, void *a2)
{
  result = *this;
  v5 = this[1];
  if (v5 != result)
  {
    result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
    if (*result == a2)
    {
      return result;
    }

    v5 = this[1];
    v7 = 16;
    if (v5 == *this)
    {
      v7 = 20;
    }

    v8 = *(this + v7);
    return &v5[v8];
  }

  v8 = *(this + 5);
  if (!v8)
  {
    return &v5[v8];
  }

  v9 = 8 * v8;
  while (*result != a2)
  {
    ++result;
    v9 -= 8;
    if (!v9)
    {
      return &v5[v8];
    }
  }

  return result;
}

void sub_23C4ED864(void *a1)
{
  if (a1)
  {
    sub_23C4ED864(*a1);
    sub_23C4ED864(a1[1]);
    v2 = a1[6];
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C4ED8D0(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    sub_23C4ED91C(result);
    result = llvm::deallocate_buffer(*v1, (16 * *(v1 + 16)));
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_23C4ED91C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23C4ED97C(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_284F1B7D8;
    sub_23C4DDEAC((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F1B7D8;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F1B7D8;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C4EDC90(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

llvm::ValueHandleBase *sub_23C4EDBD4(llvm::ValueHandleBase *this, unsigned int a2, void *a3)
{
  *this = 2 * a2;
  *(this + 1) = 0;
  v4 = a3[2];
  *(this + 2) = v4;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::AddToExistingUseList(this, (*a3 & 0xFFFFFFFFFFFFFFF8));
  }

  return this;
}

void *sub_23C4EDC2C(void *a1, uint64_t a2)
{
  a1[1] = 2;
  a1[2] = 0;
  v3 = (a1 + 1);
  *(v3 + 2) = a2;
  if (a2 != -8192 && a2 != -4096 && a2)
  {
    llvm::ValueHandleBase::AddToUseList(v3);
  }

  *a1 = MEMORY[0x277D821C0] + 16;
  return a1;
}

uint64_t sub_23C4EDC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C4EDD44(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C4EDD44(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4EDF58(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B7D8;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4EDF58(a1);
  }
}

uint64_t sub_23C4EDF58(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B7D8;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C4EE038(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B7D8;
    result = sub_23C4DDEAC((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t sub_23C4EE154(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_284F1B7D8;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23C4EE264(void *a1, llvm::GlobalValue *this, unsigned int a3)
{
  v6 = sub_23C4EC884(this);
  if (v6)
  {
    v7 = *(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF) + 32 * a3);
    if (a3 == 2)
    {
      v8 = (a1 + *(*a1 - 24));
      v19 = 257;
      return sub_23C497C88(v8 + 1, **(*v7 + 16), v7, 0, &v18);
    }

    return v7;
  }

  v9 = &a1[7 * a3];
  v10 = v9[195];
  v11 = v9[216];
  if (v10)
  {
    if (v11)
    {
      v12 = a1 + *(*a1 - 24);
      v14 = *(v12 + 7);
      v13 = *(v12 + 8);
      v18 = "pick_sampler";
      v19 = 259;
      llvm::BasicBlock::splitBasicBlock();
      v15 = *(a1 + *(*a1 - 24) + 336);
      v18 = "non_constant_sampler";
      v19 = 259;
      v16 = *(v14 + 56);
      operator new();
    }

    goto LABEL_11;
  }

  if (!v11)
  {
LABEL_11:

    return sub_23C4EE9CC(a1, this, a3);
  }

  return sub_23C4EE72C(a1, this, a3);
}

uint64_t sub_23C4EE72C(void *a1, uint64_t a2, unsigned int a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = &a1[7 * a3];
  v6 = v5[216];
  if (v6)
  {
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 23);
    v33 = 257;
    v9 = sub_23C49ACF8((v7 + 8), 47, a2, v8, v32);
    v10 = a1 + *(*a1 - 24);
    if (!a3 && *(v9 + 16) >= 0x15u)
    {
      v11 = *(v10 + 160);
      v12 = llvm::PointerType::get();
      v13 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.samplerState", 21, v12, v12, *(a1 + *(*a1 - 24) + 200));
      v14 = a1 + *(*a1 - 24);
      v33 = 257;
      v36[0] = sub_23C49ACF8((v14 + 8), 49, v6, v12, v32);
      v15 = a1 + *(*a1 - 24);
      v16 = *(v15 + 25);
      v35 = 257;
      v36[1] = sub_23C49ACF8((v15 + 8), 39, v9, v16, v34);
      v31[16] = 257;
      v17 = sub_23C497A7C((v14 + 8), *(v13 + 24), v13, v36, 2, v31);
      v18 = a1 + *(*a1 - 24);
      v19 = *(*(v18 + 43) + 1584);
      v20 = llvm::PointerType::get();
      v33 = 257;
      v21 = sub_23C49ACF8((v18 + 8), 49, v17, v20, v32);
LABEL_9:
      v27 = v21;
      goto LABEL_10;
    }

    v26 = *(v10 + 192);
    v34[0] = llvm::ConstantInt::get();
    v34[1] = v9;
    v33 = 257;
    v25 = sub_23C4ED3A0(v10, v6, v34, 2, v32);
  }

  else
  {
    v22 = v5 + 214;
    v23 = v22[4];
    v24 = *(v22 + 12);
    llvm::PointerType::get();
    v25 = llvm::UndefValue::get();
  }

  v27 = v25;
  if (a3 == 2)
  {
    v28 = (a1 + *(*a1 - 24));
    v33 = 257;
    v21 = sub_23C497C88(v28 + 1, **(*v25 + 16), v25, 0, v32);
    goto LABEL_9;
  }

LABEL_10:
  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t sub_23C4EE9CC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v5 = a1 + 56 * a3;
  v6 = *(v5 + 1560);
  if (v6)
  {
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 184);
    v46 = 257;
    v10 = sub_23C49ACF8(v8 + 8, 47, a2, v9, v45);
    v11 = (a1 + *(*a1 - 24));
    if (!a3 && *(v10 + 16) >= 0x15u)
    {
      v12 = v11[20];
      v13 = llvm::PointerType::get();
      v14 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.samplerState", 21, v13, v13, *(a1 + *(*a1 - 24) + 200));
      v15 = a1 + *(*a1 - 24);
      v46 = 257;
      v51[0] = sub_23C49ACF8(v15 + 8, 49, v6, v13, v45);
      v16 = a1 + *(*a1 - 24);
      v17 = *(v16 + 200);
      v50 = 257;
      v51[1] = sub_23C49ACF8(v16 + 8, 39, v10, v17, v49);
      v48 = 257;
      v18 = sub_23C497A7C(v15 + 8, *(v14 + 24), v14, v51, 2, v47);
      v19 = a1 + *(*a1 - 24);
      v20 = *(*(v19 + 344) + 1584);
      v21 = llvm::PointerType::get();
      v46 = 257;
      v22 = sub_23C49ACF8(v19 + 8, 49, v18, v21, v45);
LABEL_13:
      v40 = v22;
      goto LABEL_14;
    }

    if (a3 == 2 && (*(v11[43] + 1678) & 1) == 0 && *(a1 + 2160))
    {
      v27 = *(**(*v6 + 16) + 32);
      v28 = v11[23];
      v29 = llvm::ConstantInt::get();
      v30 = sub_23C506630(v11, v10, v29, 36);
      v31 = a1 + *(*a1 - 24);
      v32 = *(v31 + 192);
      v47[0] = llvm::ConstantInt::get();
      v47[1] = v30;
      v46 = 257;
      v33 = sub_23C4ED3A0(v31, v6, v47, 2, v45);
      v50 = 257;
      sub_23C497C88((v31 + 8), **(*v33 + 16), v33, 0, v49);
      v34 = a1 + *(*a1 - 24);
      v35 = *(v34 + 200);
      v46 = 257;
      sub_23C49ACF8(v34 + 8, 47, a2, v35, v45);
      v36 = a1 + *(*a1 - 24);
      v37 = *(v36 + 184);
      v38 = llvm::ConstantInt::get();
      v46 = 257;
      sub_23C497D84((v36 + 8), 36, v10, v38, v45);
      v50 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v40 = sub_23C506824(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 200));
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), Select, v40, 0);
LABEL_12:
      v42 = a1 + *(*a1 - 24);
      v46 = 257;
      v22 = sub_23C497C88((v42 + 8), **(*v40 + 16), v40, 0, v45);
      goto LABEL_13;
    }

    v41 = v11[24];
    v49[0] = llvm::ConstantInt::get();
    v49[1] = v10;
    v46 = 257;
    v26 = sub_23C4ED3A0(v11, v6, v49, 2, v45);
  }

  else
  {
    v23 = v5 + 1544;
    v24 = *(v23 + 32);
    v25 = *(v23 + 48);
    llvm::PointerType::get();
    v26 = llvm::UndefValue::get();
  }

  v40 = v26;
  if (a3 == 2)
  {
    goto LABEL_12;
  }

LABEL_14:
  v43 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t sub_23C4EEE44(char *a1, llvm::GlobalValue *this)
{
  v4 = &a1[*(*a1 - 24)];
  if (*(v4[43] + 1678) == 1)
  {
    v5 = sub_23C4EC4B4(a1, this, 2u);
    v31 = 257;
    v6 = sub_23C497C88(v4 + 1, **(*v5 + 16), v5, 0, v30);
    v7 = &a1[*(*a1 - 24)];
    v31 = 257;
    v8 = *(v7 + 24);
    v9 = llvm::ConstantInt::get();
    return sub_23C5057E8((v7 + 8), v6, v9, v30);
  }

  else
  {
    v11 = *(a1 + 244);
    if (!v11)
    {
      if ((*(*v4 + 4))(&a1[*(*a1 - 24)]) == 2 || (*(*&a1[*(*a1 - 24)] + 32))(&a1[*(*a1 - 24)]) == 16)
      {
        v12 = *(*&a1[*(*a1 - 24) + 344] + 792);
        v13 = (*(*v12 + 336))(v12);
      }

      else
      {
        v14 = *(*&a1[*(*a1 - 24) + 344] + 792);
        v13 = (*(*v14 + 192))(v14);
      }

      v15 = v13;
      v16 = *&a1[*(*a1 - 24) + 192];
      v17 = llvm::PointerType::get();
      v30[0] = "agc.texture_heap.";
      v30[2] = v15;
      v31 = 2051;
      v18 = sub_23C4ED494(a1, v17, v30, v15, 0);
      sub_23C4D56F8((a1 + 1936), v18);
      v11 = *(a1 + 244);
    }

    v19 = sub_23C4ED304(a1, this);
    v20 = &a1[*(*a1 - 24)];
    v21 = *(*(v20 + 43) + 1608);
    v22 = *(v20 + 24);
    v23 = llvm::ConstantInt::get();
    v31 = 257;
    v24 = sub_23C4CBA68((v20 + 8), v19, v23, v30);
    v25 = &a1[*(*a1 - 24)];
    v31 = 257;
    v26 = sub_23C497C88((v25 + 8), **(*v11 + 16), v11, 0, v30);
    v29[16] = 257;
    v27 = sub_23C49AEB8(v25, v26, v24, v29);
    v28 = &a1[*(*a1 - 24)];
    v31 = 257;
    return sub_23C497C88(v28 + 1, **(*v27 + 16), v27, 0, v30);
  }
}

uint64_t sub_23C4EF198(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23[0] = "agc.const_sampler_state_struct_ptr_";
  v24 = &v22;
  v25 = 3587;
  llvm::Twine::str(&__p, v23);
  v3 = *(a1 + *(*a1 - 24) + 320);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v7 = (a1[99] - a1[98]) >> 3;
    sub_23C4E9244((a1 + 98), &v22);
    v8 = (*(*a1 + 296))(a1);
    v9 = 1584;
    if (v8)
    {
      v9 = 1592;
    }

    v10 = *(*(a1 + *(*a1 - 24) + 344) + v9);
    v11 = llvm::User::operator new(0x58);
    v12 = *(a1 + *(*a1 - 24) + 320);
    v23[0] = "agc.const_sampler_state_words_";
    v24 = &v22;
    v25 = 3587;
    v13 = llvm::GlobalVariable::GlobalVariable();
    *(v13 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v14 = __clz(*(*(a1 + *(*a1 - 24) + 344) + 1604)) ^ 0x13F;
    llvm::GlobalObject::setAlignment();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v15 = llvm::PointerType::get();
    v16 = *v15;
    v23[0] = v15;
    llvm::StructType::get();
    v23[0] = v11;
    llvm::ConstantStruct::get();
    GlobalVariable = llvm::User::operator new(0x58);
    v17 = *(a1 + *(*a1 - 24) + 320);
    v25 = 260;
    v23[0] = &__p;
    v18 = llvm::GlobalVariable::GlobalVariable();
    *(v18 + 80) |= 1u;
    llvm::GlobalVariable::setInitializer();
    v23[0] = 4;
    v23[1] = 0;
    v24 = GlobalVariable;
    v19 = GlobalVariable;
    if (GlobalVariable != -8192)
    {
      v19 = GlobalVariable;
      if (GlobalVariable != -4096)
      {
        v19 = GlobalVariable;
        if (GlobalVariable)
        {
          llvm::ValueHandleBase::AddToUseList(v23);
          v19 = v24;
        }
      }
    }

    sub_23C4EF514((a1 + 95), v19);
    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  v5 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

uint64_t sub_23C4EF514(uint64_t result, unint64_t a2)
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
      v4 = v2[6];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_23C4EF5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TruncOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      TruncOrBitCast = llvm::CastInst::CreateTruncOrBitCast();
      sub_23C49B15C(a1, TruncOrBitCast, a4);
    }

    else
    {
      TruncOrBitCast = (*(**(a1 + 72) + 304))(*(a1 + 72), a2, a3);
      if (TruncOrBitCast)
      {
        v7 = *(TruncOrBitCast + 16) >= 0x1Cu;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        sub_23C49B15C(a1, TruncOrBitCast, a4);
      }
    }
  }

  return TruncOrBitCast;
}

uint64_t sub_23C4EF6D8(void *a1, void *a2)
{
  v3 = sub_23C4EC914(a1, a2);
  v4 = a1 + *(*a1 - 24);
  if (v3)
  {
    v5 = v3;
    v6 = *(v4 + 22);
  }

  else
  {
    v7 = *(v4 + 25);
    v5 = llvm::ConstantInt::get();
    v8 = *(a1 + *(*a1 - 24) + 176);
  }

  v9 = llvm::PointerType::get();
  v12 = 257;
  return sub_23C49ACF8((v4 + 8), 48, v5, v9, v11);
}

uint64_t sub_23C4EF78C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return a1 + 48 * a2;
  }

  v3 = a2 - 1;
  v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v5 = a1 + 48 * v4;
  v6 = *(v5 + 24);
  if (v6 != a3)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = a1 + 48 * (v8 & v3);
      v6 = *(v5 + 24);
      if (v6 == a3)
      {
        return v5;
      }
    }

    return a1 + 48 * a2;
  }

  return v5;
}

uint64_t sub_23C4EF7F0(void *a1, uint64_t a2, __int16 *a3)
{
  v3 = a3;
  v4 = a2;
  v166 = *MEMORY[0x277D85DE8];
  if (*a2 == 5)
  {
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 43);
    v151 = *(v7 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v152, (v7 + 8));
    v153 = *(v7 + 26);
    (*(*v8 + 248))(v8, &v151, v4);
    if (v152)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*v3 & 0xF) != 0)
    {
      v9 = *(v4 + 184);
      if ((*v3 & 0x10) != 0)
      {
        v10 = a1 + *(*a1 - 24);
        v11 = *(v10 + 43);
        v155 = *(v10 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v156, (v10 + 8));
        v157 = *(v10 + 26);
        v9 = (*(*v11 + 40))(v11, &v155, v9, 0);
        if (v156)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      sub_23C5060BC(a1 + *(*a1 - 24), 4, v9);
      v12 = a1 + *(*a1 - 24);
      v13 = *(v12 + 160);
      v14 = llvm::ConstantFP::get();
      sub_23C5060BC(v12, 4, v14);
      v15 = a1 + *(*a1 - 24);
      v16 = *(v15 + 160);
      v17 = llvm::ConstantFP::get();
      sub_23C5060BC(v15, 4, v17);
      v18 = (*v3 & 0xF) - 2;
      if (v18 <= 6)
      {
        v19 = dword_23C532DB0[v18];
      }

      v23 = a1 + *(*a1 - 24);
      v165 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v24 = a1 + *(*a1 - 24);
      v165 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v4 + 8) = v6;
    v25 = **(a1 + *(*a1 - 24));
LABEL_47:
    result = v25();
    goto LABEL_48;
  }

  v20 = *(a2 + 184);
  v141 = *(a2 + 8);
  v21 = *a3;
  v22 = (*a3 & 0xF) == 0 || (*a3 & 0x1C0) == 0;
  if (v22 || sub_23C4F0890(a1, *(a2 + 4), *a3))
  {
    *(v4 + 192) = 1;
    if ((*v3 & 0xF) != 0)
    {
      *(v4 + 8) = 0;
    }
  }

  else
  {
    if ((v21 & 0x40) != 0)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *(v4 + 192) = v26;
  }

  v142 = v4;
  if (sub_23C4F0890(a1, *(v4 + 4), *v3))
  {
    v139 = v3;
    v140 = v20;
    v27 = sub_23C49EB10(a1 + *(*a1 - 24), "llvm.floor.f32", 14, *(a1 + *(*a1 - 24) + 160), *(a1 + *(*a1 - 24) + 160));
    llvm::Function::addFnAttr();
    v28 = *(v4 + 120);
    v137 = *(v4 + 152);
    v136 = *(v4 + 144);
    *v4 = 4;
    *(v4 + 152) = 0;
    *(v4 + 144) = 3;
    *(v4 + 224) = 0;
    v29 = (a1 + *(*a1 - 24));
    v30 = *(v4 + 48);
    v165 = 257;
    v31 = sub_23C497C88(v29 + 1, **(*v30 + 16), v30, 0, v164);
    v32 = a1 + *(*a1 - 24);
    v33 = sub_23C505670(v32, v31, 2, 1);
    v34 = *(a1 + *(*a1 - 24) + 216);
    v165 = 257;
    v35 = sub_23C49EF30(v32 + 8, v33, v34, v164);
    v36 = a1 + *(*a1 - 24);
    v165 = 257;
    v138 = v28;
    v37 = sub_23C49EA2C((v36 + 8), v28, v35, v164);
    v38 = *(a1 + *(*a1 - 24) + 216);
    v39 = llvm::ConstantFP::get();
    v154 = 257;
    v40 = sub_23C4A0BD4((v36 + 8), v37, v39, &v151);
    v41 = sub_23C506244(a1 + *(*a1 - 24), v27, v40);
    v42 = a1 + *(*a1 - 24);
    v165 = 257;
    v43 = sub_23C4A0EC4((v42 + 8), v40, v41, v164);
    v44 = *(a1 + *(*a1 - 24) + 208);
    v154 = 257;
    v45 = sub_23C49FEB4((v42 + 8), v43, v44, &v151);
    v46 = a1 + *(*a1 - 24);
    v47 = *(v46 + 26);
    v48 = llvm::ConstantFP::get();
    v165 = 257;
    v49 = sub_23C4A0EC4((v46 + 8), v48, v45, v164);
    v50 = a1 + *(*a1 - 24);
    v165 = 257;
    *(v4 + 120) = sub_23C4BBCA0((v50 + 8), v41, v35, v164);
    v51 = a1 + *(*a1 - 24);
    v52 = *(v51 + 43);
    v161 = *(v51 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v162, (v51 + 8));
    v163 = *(v51 + 26);
    v135 = (*(*v52 + 248))(v52, &v161, v4);
    if (v162)
    {
      llvm::MetadataTracking::untrack();
    }

    v143 = a1 + 24;
    v53 = *(a1 + *(*a1 - 24) + 264);
    v54 = llvm::UndefValue::get();
    v55 = 0;
    v56 = 0;
    v144 = v49;
    do
    {
      v159 = 0;
      v160 = 0;
      v57 = *(v143 + *(*a1 - 24));
      v159 = llvm::ConstantInt::get();
      v58 = *(v143 + *(*a1 - 24));
      v160 = llvm::ConstantInt::get();
      v59 = llvm::ConstantVector::get();
      v60 = *(*a1 - 24);
      v165 = 257;
      v61 = sub_23C49A3AC(a1 + v60 + 8, v45, v49, v59, v164);
      v62 = v45;
      v63 = v61;
      v64 = a1 + *(*a1 - 24);
      v165 = 257;
      v65 = *(v64 + 24);
      v66 = llvm::ConstantInt::get();
      v67 = sub_23C5057E8((v64 + 8), v63, v66, v164);
      v68 = a1 + *(*a1 - 24);
      v154 = 257;
      v69 = *(v68 + 24);
      v70 = llvm::ConstantInt::get();
      v71 = sub_23C5057E8((v68 + 8), v63, v70, &v151);
      v158 = 257;
      v72 = sub_23C49EA2C((v64 + 8), v67, v71, &v155);
      v73 = a1 + *(*a1 - 24);
      v165 = 257;
      v74 = *(v73 + 24);
      v75 = llvm::ConstantInt::get();
      v76 = v72;
      v45 = v62;
      v49 = v144;
      v54 = sub_23C505AA8((v73 + 8), v54, v76, v75, v164);
      ++v56;
      v55 += 2;
    }

    while (v56 != 4);
    v77 = a1 + *(*a1 - 24);
    v78 = *(v77 + 34);
    v165 = 257;
    v79 = sub_23C4B284C((v77 + 8), v54, v78, v164);
    v80 = *(a1 + *(*a1 - 24) + 296);
    v81 = *v80;
    v164[0] = v80;
    v164[1] = v80;
    llvm::StructType::get();
    v82 = llvm::UndefValue::get();
    v83 = a1 + *(*a1 - 24);
    v84 = *(v83 + 37);
    v165 = 257;
    v85 = sub_23C49ACF8((v83 + 8), 49, v135, v84, v164);
    LODWORD(v155) = 0;
    v154 = 257;
    v86 = sub_23C49A744((v83 + 8), v82, v85, &v155, 1, &v151);
    v87 = a1 + *(*a1 - 24);
    v88 = *(v87 + 37);
    v165 = 257;
    v89 = sub_23C49ACF8((v87 + 8), 49, v79, v88, v164);
    LODWORD(v155) = 1;
    v154 = 257;
    v90 = sub_23C49A744((v87 + 8), v86, v89, &v155, 1, &v151);
    v4 = v142;
    *(v142 + 120) = v138;
    *(v142 + 152) = v137;
    *(v142 + 144) = v136;
    *v142 = 1;
    v3 = v139;
    v20 = v140;
  }

  else
  {
    v91 = a1 + *(*a1 - 24);
    v92 = *(v91 + 43);
    v148 = *(v91 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v149, (v91 + 8));
    v150 = *(v91 + 26);
    v90 = (*(*v92 + 248))(v92, &v148, v4);
    if (v149)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if ((*v3 & 0xF) != 0)
  {
    v93 = (*v3 & 0xF) - 2;
    if (v93 <= 6)
    {
      v94 = dword_23C532DB0[v93];
    }

    if ((*v3 & 0x10) != 0)
    {
      v98 = a1 + *(*a1 - 24);
      v99 = *(v98 + 43);
      v145 = *(v98 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v146, (v98 + 8));
      v147 = *(v98 + 26);
      (*(*v99 + 40))(v99, &v145, v20, 0);
      if (v146)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((*v3 & 0x1C0) != 0)
    {
      *(&v155 + 1) = 0;
      *(&v161 + 1) = 0;
      v100 = *(a1 + *(*a1 - 24) + 152);
      Select = llvm::ConstantFP::get();
      v102 = a1 + *(*a1 - 24);
      LODWORD(v151) = 0;
      v165 = 257;
      v103 = sub_23C49B32C(v102 + 8, v90, &v151, 1, v164);
      *&v155 = sub_23C505600(v102, v103, *(a1 + *(*a1 - 24) + 160));
      v104 = a1 + *(*a1 - 24);
      LODWORD(v159) = 1;
      v165 = 257;
      v105 = sub_23C49B32C(v104 + 8, v90, &v159, 1, v164);
      v106 = sub_23C505600(v104, v105, *(a1 + *(*a1 - 24) + 160));
      v107 = *(a1 + *(*a1 - 24) + 264);
      v154 = 257;
      *&v161 = sub_23C49FEB4(v104 + 8, v106, v107, &v151);
      if ((*v3 & 0x40) != 0)
      {
        v112 = a1 + *(*a1 - 24);
        LODWORD(v151) = 2;
        v165 = 257;
        v113 = sub_23C49B32C(v112 + 8, v90, &v151, 1, v164);
        *(&v155 + 1) = sub_23C505600(v112, v113, *(a1 + *(*a1 - 24) + 160));
        v114 = a1 + *(*a1 - 24);
        LODWORD(v159) = 3;
        v165 = 257;
        v115 = sub_23C49B32C(v114 + 8, v90, &v159, 1, v164);
        v116 = sub_23C505600(v114, v115, *(a1 + *(*a1 - 24) + 160));
        v117 = *(a1 + *(*a1 - 24) + 264);
        v154 = 257;
        *(&v161 + 1) = sub_23C49FEB4(v114 + 8, v116, v117, &v151);
        v108 = 8;
      }

      else
      {
        v108 = 4;
      }

      for (i = 0; i != v108; ++i)
      {
        v119 = a1 + *(*a1 - 24);
        v120 = *(&v155 + (i >> 2));
        v121 = Select;
        v165 = 257;
        v122 = *(v119 + 24);
        v123 = llvm::ConstantInt::get();
        sub_23C5057E8((v119 + 8), v120, v123, v164);
        v124 = a1 + *(*a1 - 24);
        v125 = *(&v161 + (i >> 2));
        v165 = 257;
        v126 = *(v124 + 24);
        v127 = llvm::ConstantInt::get();
        v128 = sub_23C5057E8((v124 + 8), v125, v127, v164);
        v129 = *(*a1 - 24);
        v165 = 257;
        llvm::IRBuilderBase::CreateFCmpHelper();
        v130 = *(*a1 - 24);
        v165 = 257;
        sub_23C4A0BD4(a1 + v130 + 8, v121, v128, v164);
        v131 = *(*a1 - 24);
        v165 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      v132 = a1 + *(*a1 - 24);
      v133 = *(v132 + 20);
      v165 = 257;
      sub_23C4B284C((v132 + 8), Select, v133, v164);
    }

    else
    {
      v109 = a1 + *(*a1 - 24);
      sub_23C4F08E0(a1, v90);
      v165 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v110 = *(a1 + *(*a1 - 24) + 160);
      llvm::ConstantFP::get();
      v111 = *(a1 + *(*a1 - 24) + 160);
      llvm::ConstantFP::get();
      v165 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v142 + 8) = v141;
    v25 = **(a1 + *(*a1 - 24));
    goto LABEL_47;
  }

  v95 = *(*a1 - 24);
  v96 = sub_23C4F08E0(a1, v90);
  result = (**(a1 + v95))(a1 + v95, v96, *(v4 + 8));
LABEL_48:
  v134 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F0890(void *a1, int a2, __int16 a3)
{
  v3 = 0;
  if ((a3 & 0xF) != 0 && (a3 & 0x1C0) != 0)
  {
    v3 = 0;
    if ((a3 & 0x20) == 0 && a2 != 2)
    {
      v3 = *(*(a1 + *(*a1 - 24) + 344) + 1643);
    }
  }

  return v3 & 1;
}

uint64_t sub_23C4F08E0(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v3 = a1 + *(*a1 - 24);
    v8 = 257;
    v4 = *(v3 + 24);
    v5 = llvm::ConstantInt::get();
    return sub_23C5057E8((v3 + 8), v2, v5, v7);
  }

  return v2;
}

void sub_23C4F0968()
{
  if ((atomic_load_explicit(&qword_27E1F73F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73F0))
  {
    qword_27E1F73D0 = 0;
    *&dword_27E1F73D8 = 0;
    qword_27E1F73E0 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73D0, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73F0);
  }
}

uint64_t sub_23C4F09EC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 9));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4F0A68(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4F0AE4(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_23C4F0BAC(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void sub_23C4F0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = &unk_284F1B880;
  v11[1] = v12;
  v17[1] = 0x400000000;
  v15[0] = &unk_284F1BEC8;
  v15[1] = v11;
  v16 = v15;
  v17[0] = v18;
  for (i = *(a2 + 24); i; i = *i)
  {
    sub_23C4F0FC4(v16, i[5]);
  }

  sub_23C4F1014(v15);
  v13[0] = &unk_284F1BF58;
  v13[1] = v11;
  v14 = v13;
  for (j = *(a3 + 24); j; j = *j)
  {
    sub_23C4F0FC4(v14, j[5]);
  }

  sub_23C4F1014(v13);
  sub_23C4F1094(v11, v17, a4);
  sub_23C4F11DC(a1, v17);
  v10 = a1;
  v9 = 1;
  operator new();
}

uint64_t sub_23C4F0F88(uint64_t a1)
{
  sub_23C4F2F50(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23C4F0FC4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  sub_23C4F3D38();
  return sub_23C4F1014(v3);
}

uint64_t sub_23C4F1014(uint64_t a1)
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

uint64_t sub_23C4F1094(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      v13 = *(a2 + 8);
      *(v3 + 9) = v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        result = sub_23C4F7ED0((v9 + 4), i);
        if (v13 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = (*a2 + 16 * v13);
        *v16 = result;
        v16[1] = v15;
        v13 = *(a2 + 8) + 1;
        *(a2 + 8) = v13;
      }

      v17 = v3[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v3[2];
          v19 = *v18 == v3;
          v3 = v18;
        }

        while (!v19);
      }

      v3 = v18;
    }

    while (v18 != v4);
  }

  return result;
}

void sub_23C4F11DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    if (MGGetBoolAnswer() && (v4 = sub_23C4A2690("AGX_FORCE_CS_SAMPLERS")) != 0 && *v4 != 48 && atoi(v4) && *(*(a1 + *(*a1 - 24) + 344) + 1678) != 1)
    {
      v18 = *(a1 + 1576);
      v19 = *(a1 + 1592);
      v20 = llvm::PointerType::get();
      NullValue = llvm::Constant::getNullValue(v20, v21);
      sub_23C4D56F8((a1 + 1544), NullValue);
    }

    else
    {
      sub_23C4F7C4C(a1, a2, a1 + 1544);
    }

    sub_23C4F7C4C(a1, a2, a1 + 1600);
    sub_23C4F7C4C(a1, a2, a1 + 1656);
    v5 = (a1 + 600);
    v6 = *(a2 + 8);
    v7 = *(a1 + 608);
    if (v7 != v6)
    {
      if (v7 <= v6)
      {
        if (*(a1 + 612) < v6)
        {
          v8 = *(a2 + 8);
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7 != v6)
        {
          bzero((*v5 + 4 * v7), 4 * v6 - 4 * v7);
        }
      }

      *(a1 + 608) = v6;
      LODWORD(v6) = *(a2 + 8);
    }

    if (v6)
    {
      v9 = 0;
      v10 = *a2;
      v11 = *v5;
      do
      {
        v12 = *v10;
        v10 += 4;
        *(v11 + 4 * v9++) = v12;
      }

      while (v9 < *(a2 + 8));
    }
  }

  else if ((*(*(a1 + *(*a1 - 24) + 344) + 1678) & 1) == 0 && *(a1 + 2160))
  {
    v13 = *(a1 + 1576);
    v14 = *(a1 + 1592);
    v15 = llvm::PointerType::get();
    v17 = llvm::Constant::getNullValue(v15, v16);
    sub_23C4D56F8((a1 + 1544), v17);

    sub_23C4F7C4C(a1, a2, a1 + 1656);
  }
}

void *sub_23C4F13BC(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t sub_23C4F1538(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v205 = *MEMORY[0x277D85DE8];
  v198 = 0x400000000;
  v180[0] = 0;
  v180[1] = 0;
  v178 = &unk_284F1B880;
  v179 = v180;
  v195[0] = &unk_284F1C270;
  v195[1] = &v178;
  v196 = v195;
  v197 = v199;
  for (i = *(a2 + 24); i; i = *i)
  {
    sub_23C4F0FC4(v196, i[5]);
  }

  sub_23C4F1014(v195);
  v193[0] = &unk_284F1C300;
  v193[1] = &v178;
  v194 = v193;
  v162 = a3;
  for (j = *(a3 + 24); j; j = *j)
  {
    sub_23C4F0FC4(v194, j[5]);
  }

  sub_23C4F1014(v193);
  memset(v176, 0, sizeof(v176));
  v177 = 1065353216;
  v9 = v179;
  if (v179 == v180)
  {
LABEL_82:
    *&v200 = v176;
    LOBYTE(v184) = 1;
    v191[0] = &unk_284F1C390;
    v191[1] = &v184;
    v191[2] = &v200;
    v192 = v191;
    for (k = *(a2 + 24); k; k = *k)
    {
      sub_23C4F0FC4(v192, k[5]);
    }

    sub_23C4F1014(v191);
    v189[0] = &unk_284F1C420;
    v189[1] = &v184;
    v189[2] = &v200;
    v190 = v189;
    for (m = *(v162 + 24); m; m = *m)
    {
      sub_23C4F0FC4(v190, m[5]);
    }

    sub_23C4F1014(v189);
    v150 = v184;
  }

  else
  {
    v10 = (a4 + 8);
    v164 = a1 + 24;
    v11 = a1 + 43;
    v12 = a1 + 40;
    v163 = (a4 + 8);
    while (1)
    {
      v13 = *v10;
      if (!*v10)
      {
        break;
      }

      v14 = *(v9 + 9);
      v15 = v10;
      do
      {
        v16 = *(v13 + 36) + *(v13 + 32);
        v17 = v16 > v14;
        v18 = v16 <= v14;
        if (v17)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * v18);
      }

      while (v13);
      if (v15 == v10)
      {
        break;
      }

      v20 = *(v15 + 8);
      v19 = (v15 + 4);
      if (v14 < v20)
      {
        break;
      }

      v21 = *(v9 + 7);
      if (*(v9 + 8) != v21)
      {
        break;
      }

      sub_23C4F3374(&v171, v19, v21);
      Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(*a1 - 24) + 336), 2);
      v23 = *(v164 + *(*a1 - 24));
      v24 = *Int8PtrTy;
      *&v200 = Int8PtrTy;
      *(&v200 + 1) = v23;
      *&v201 = v23;
      llvm::StructType::get();
      if ((*(v175 + 9) & 1) == 0)
      {
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v200 = 0u;
        v25 = *(*(v11 + *(*a1 - 24)) + 1576);
        *&v200 = llvm::PointerType::get();
        v26 = *(*(v11 + *(*a1 - 24)) + 1576);
        *(&v200 + 1) = llvm::PointerType::get();
        v27 = *(v164 + *(*a1 - 24));
        llvm::FixedVectorType::get();
        v28 = *(*(v11 + *(*a1 - 24)) + 836);
        *&v201 = llvm::PointerType::get();
        v29 = *(*(v11 + *(*a1 - 24)) + 836);
        *(&v201 + 1) = llvm::PointerType::get();
        v30 = a1 + *(*a1 - 24);
        v31 = *(v30 + 24);
        v32 = *(*(v30 + 43) + 836);
        *&v202 = llvm::PointerType::get();
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 24);
        v35 = *(*(v33 + 43) + 836);
        *(&v202 + 1) = llvm::PointerType::get();
        v36 = a1 + *(*a1 - 24);
        v37 = *(v36 + 24);
        v38 = *(*(v36 + 43) + 836);
        *&v203 = llvm::PointerType::get();
        v39 = a1 + *(*a1 - 24);
        v40 = *(v39 + 24);
        v41 = *(*(v39 + 43) + 836);
        *(&v203 + 1) = llvm::PointerType::get();
        v42 = a1 + *(*a1 - 24);
        v43 = *(v42 + 24);
        v44 = *(*(v42 + 43) + 836);
        *&v204 = llvm::PointerType::get();
        v45 = a1 + *(*a1 - 24);
        v46 = *(v45 + 25);
        v47 = *(*(v45 + 43) + 836);
        *(&v204 + 1) = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v48 = v171;
      v169 = (v171 >> 16) & 0x7FFF;
      v170 = v171;
      if (v173 == 1)
      {
        v49 = llvm::User::operator new(0x58);
        v50 = *(*a1 - 24);
        if ((v48 & 0x80000000) != 0)
        {
          v181[0] = v169;
          v182 = ".";
          v183 = 776;
          v51 = 2;
          v52 = 8;
          v53 = &v184;
          v184 = v181;
          v186 = v170;
        }

        else
        {
          LODWORD(v184) = v170;
          v51 = 8;
          v52 = 1;
          v53 = v184;
        }

        v54 = a1 + v50;
        v55 = *(v54 + 40);
        v56 = *(*(v54 + 43) + 1576);
        v187 = v51;
        v188 = v52;
        *&v200 = "agc.read_image_words";
        *&v201 = v53;
        *(&v201 + 1) = v185;
        LOBYTE(v202) = 3;
        BYTE1(v202) = v51;
        llvm::GlobalVariable::GlobalVariable();
        *(v49 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        v57 = __clz(*(*(v11 + *(*a1 - 24)) + 1600)) ^ 0x13F;
        llvm::GlobalObject::setAlignment();
        v58 = (a1 + *(*a1 - 24));
        v167 = v49;
        if (*(v58[43] + 1647) == 1)
        {
          sub_23C4F6FDC(a1);
        }

        else
        {
          sub_23C506A1C(v58);
        }

        if (v172 != -1)
        {
          v59 = *(v11 + *(*a1 - 24));
          (*(*v59 + 168))(v59, v49);
        }
      }

      else
      {
        v167 = 0;
      }

      if (v174 == 1)
      {
        v60 = llvm::User::operator new(0x58);
        v61 = *(*a1 - 24);
        if ((v48 & 0x80000000) != 0)
        {
          v181[0] = v169;
          v182 = ".";
          v183 = 776;
          v184 = v181;
          v186 = v170;
          v62 = 2;
          v63 = 8;
          v64 = &v184;
        }

        else
        {
          LODWORD(v184) = v170;
          v62 = 8;
          v63 = 1;
          v64 = v184;
        }

        v65 = a1 + v61;
        v66 = *(v65 + 40);
        v67 = *(*(v65 + 43) + 1576);
        v187 = v62;
        v188 = v63;
        *&v200 = "agc.write_image_words";
        *&v201 = v64;
        *(&v201 + 1) = v185;
        LOBYTE(v202) = 3;
        BYTE1(v202) = v62;
        llvm::GlobalVariable::GlobalVariable();
        *(v60 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        v68 = __clz(*(*(v11 + *(*a1 - 24)) + 1600)) ^ 0x13F;
        llvm::GlobalObject::setAlignment();
        v69 = (a1 + *(*a1 - 24));
        v166 = v60;
        if (*(v69[43] + 1647) == 1)
        {
          sub_23C4F6FDC(a1);
        }

        else
        {
          sub_23C506A1C(v69);
        }

        if (v172 != -1)
        {
          v70 = *(v11 + *(*a1 - 24));
          (*(*v70 + 168))(v70, v60);
        }
      }

      else
      {
        v166 = 0;
      }

      v168 = llvm::User::operator new(0x58);
      v71 = a1 + *(*a1 - 24);
      v72 = *(v71 + 40);
      v73 = *(v71 + 24);
      llvm::FixedVectorType::get();
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v74 = 2;
        v75 = 8;
        v76 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v74 = 8;
        v75 = 1;
        v76 = v184;
      }

      v187 = v74;
      v188 = v75;
      *&v200 = "agc.image_dim";
      *&v201 = v76;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v74;
      v153 = *(*(v11 + *(*a1 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v168 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v77 = llvm::User::operator new(0x58);
      v78 = *a1;
      v79 = *(v12 + *(*a1 - 24));
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v80 = 2;
        v81 = 8;
        v82 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v80 = 8;
        v81 = 1;
        v82 = v184;
      }

      v187 = v80;
      v188 = v81;
      *&v200 = "agc.image_array_info";
      *&v201 = v82;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v80;
      v154 = *(*(v11 + *(v78 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v77 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v165 = v77;
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v83 = llvm::User::operator new(0x58);
      v84 = *a1;
      v85 = a1 + *(*a1 - 24);
      v86 = *(v85 + 40);
      v87 = *(v85 + 24);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v88 = 2;
        v89 = 8;
        v90 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v88 = 8;
        v89 = 1;
        v90 = v184;
      }

      v187 = v88;
      v188 = v89;
      *&v200 = "agc.image_pack_format";
      *&v201 = v90;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v88;
      v155 = *(*(v11 + *(v84 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v83 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v91 = llvm::User::operator new(0x58);
      v92 = *a1;
      v93 = a1 + *(*a1 - 24);
      v94 = *(v93 + 40);
      v95 = *(v93 + 24);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v96 = 2;
        v97 = 8;
        v98 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v96 = 8;
        v97 = 1;
        v98 = v184;
      }

      v187 = v96;
      v188 = v97;
      *&v200 = "agc.image_mipmap_count";
      *&v201 = v98;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v96;
      v156 = *(*(v11 + *(v92 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v91 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v99 = llvm::User::operator new(0x58);
      v100 = *a1;
      v101 = a1 + *(*a1 - 24);
      v102 = *(v101 + 40);
      v103 = *(v101 + 24);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v104 = 2;
        v105 = 8;
        v106 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v104 = 8;
        v105 = 1;
        v106 = v184;
      }

      v187 = v104;
      v188 = v105;
      *&v200 = "agc.image_sample_count";
      *&v201 = v106;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v104;
      v157 = *(*(v11 + *(v100 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v99 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v107 = llvm::User::operator new(0x58);
      v108 = *a1;
      v109 = a1 + *(*a1 - 24);
      v110 = *(v109 + 40);
      v111 = *(v109 + 24);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v112 = 2;
        v113 = 8;
        v114 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v112 = 8;
        v113 = 1;
        v114 = v184;
      }

      v187 = v112;
      v188 = v113;
      *&v200 = "agc.image_base_level";
      *&v201 = v114;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v112;
      v115 = v11;
      v158 = *(*(v11 + *(v108 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v107 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v116 = llvm::User::operator new(0x58);
      v117 = *a1;
      v118 = a1 + *(*a1 - 24);
      v119 = *(v118 + 40);
      v120 = *(v118 + 24);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v121 = 2;
        v122 = 8;
        v123 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v121 = 8;
        v122 = 1;
        v123 = v184;
      }

      v187 = v121;
      v188 = v122;
      *&v200 = "agc.image_heap_index";
      *&v201 = v123;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v121;
      v159 = *(*(v115 + *(v117 - 24)) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v116 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v124 = llvm::User::operator new(0x58);
      v125 = (a1 + *(*a1 - 24));
      v126 = v125[40];
      v127 = v125[25];
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v128 = 2;
        v129 = 8;
        v130 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v128 = 8;
        v129 = 1;
        v130 = v184;
      }

      v187 = v128;
      v188 = v129;
      *&v200 = "agc.image_unique_id";
      *&v201 = v130;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v128;
      v160 = *(v125[43] + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v124 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      NullValue = v167;
      if (!v167)
      {
        v132 = *(*(v115 + *(*a1 - 24)) + 1576);
        v133 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v133, v134);
      }

      *&v200 = NullValue;
      v135 = v166;
      if (!v166)
      {
        v136 = *(*(v115 + *(*a1 - 24)) + 1576);
        v137 = llvm::PointerType::get();
        v135 = llvm::Constant::getNullValue(v137, v138);
      }

      *(&v200 + 1) = v135;
      *&v201 = v168;
      *(&v201 + 1) = v165;
      *&v202 = v83;
      *(&v202 + 1) = v91;
      *&v203 = v99;
      *(&v203 + 1) = v107;
      *&v204 = v116;
      *(&v204 + 1) = v124;
      llvm::ConstantStruct::get();
      v139 = llvm::User::operator new(0x58);
      v12 = a1 + 40;
      v140 = *(a1 + *(*a1 - 24) + 320);
      if ((v48 & 0x80000000) != 0)
      {
        v181[0] = v169;
        v182 = ".";
        v183 = 776;
        v184 = v181;
        v186 = v170;
        v141 = 2;
        v142 = 8;
        v143 = &v184;
      }

      else
      {
        LODWORD(v184) = v170;
        v141 = 8;
        v142 = 1;
        v143 = v184;
      }

      v11 = v115;
      v187 = v141;
      v188 = v142;
      *&v200 = "agc.image_state_struct_ptr";
      *&v201 = v143;
      *(&v201 + 1) = v185;
      LOBYTE(v202) = 3;
      BYTE1(v202) = v141;
      llvm::GlobalVariable::GlobalVariable();
      *(v139 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      v200 = 4uLL;
      v144 = v139;
      *&v201 = v139;
      if (v139 != -8192)
      {
        v144 = v139;
        if (v139 != -4096)
        {
          v144 = v139;
          if (v139)
          {
            llvm::ValueHandleBase::AddToUseList(&v200);
            v144 = v201;
          }
        }
      }

      sub_23C4EF514((a1 + 95), v144);
      if (v201 != -8192 && v201 != -4096 && v201)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v200);
      }

      *&v200 = v9 + 28;
      sub_23C4F6718(v176, *(v9 + 7))[3] = v139;
      v145 = v9[1];
      if (v145)
      {
        do
        {
          v146 = v145;
          v145 = *v145;
        }

        while (v145);
      }

      else
      {
        do
        {
          v146 = v9[2];
          v147 = *v146 == v9;
          v9 = v146;
        }

        while (!v147);
      }

      v9 = v146;
      v10 = v163;
      if (v146 == v180)
      {
        goto LABEL_82;
      }
    }

    v150 = 0;
  }

  sub_23C4F6B10(v176);
  sub_23C4B1570(v180[0]);
  if (v197 != v199)
  {
    free(v197);
  }

  v151 = *MEMORY[0x277D85DE8];
  return v150 & 1;
}

uint64_t sub_23C4F2B4C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 1;
  v6[0] = &unk_284F1BC40;
  v6[1] = &v5;
  v6[2] = a1;
  v7 = v6;
  if (a2)
  {
    v2 = a2;
    do
    {
      sub_23C4F0FC4(v7, v2[5]);
      v2 = *v2;
    }

    while (v2);
  }

  sub_23C4F1014(v6);
  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23C4F2BF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      *(v3 + 9) = *(a2 + 8);
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        sub_23C4F3374(v19, (v9 + 4), i);
        result = sub_23C4F33F4(a2, v19);
        v14 = *a2 + 24 * *(a2 + 8);
        v15 = *result;
        *(v14 + 16) = *(result + 16);
        *v14 = v15;
        ++*(a2 + 8);
      }

      v16 = v3[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  return result;
}

void sub_23C4F2D2C(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  *(a1 + 1880) = *(a2 + 8);
  v19[0] = 0;
  LOWORD(v18) = 0;
  BYTE2(v18) = 0;
  v17 = 0xFFFFFFFF00040000;
  v4 = &v17;
  v5 = sub_23C4F33F4(a2, &v17);
  v6 = *a2 + 24 * *(a2 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a2 + 8);
  v8 = sub_23C4F45F4(a1, a2, a1 + 1432);
  v17 = v19;
  v18 = 0x800000000;
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 4;
    do
    {
      v14 = *(*a2 + v13);
      if (v14 != -1)
      {
        v4 = v4 & 0xFFFFFF0000000000 | 4;
        sub_23C49786C(&v17, v11 + v14, v4);
        v9 = *(a2 + 8);
      }

      ++v12;
      v11 += 0x400000000;
      v13 += 24;
    }

    while (v12 < v9);
    if (v18)
    {
      v15 = *(a1 + *(*a1 - 24) + 344);
      (*(*v15 + 176))(v15, v10, &v17);
    }
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C4F2EE0(void *a1)
{
  for (i = a1[3]; i; i = *i)
  {
    llvm::Function::eraseFromParent(i[5]);
  }

  if (a1[4])
  {
    sub_23C4F2F50(a1[3]);
    a1[3] = 0;
    v3 = a1[2];
    if (v3)
    {
      for (j = 0; j != v3; ++j)
      {
        *(a1[1] + 8 * j) = 0;
      }
    }

    a1[4] = 0;
  }
}

void sub_23C4F2F50(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[5];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v2 + 3));
      }

      operator delete(v2);
    }

    while (v1);
  }
}

BOOL sub_23C4F2FAC(const char **a1, llvm::Value *this)
{
  Name = llvm::Value::getName(this);
  v5 = *a1;
  if (!v5)
  {
    return 1;
  }

  v6 = Name;
  v7 = v4;
  v8 = strlen(v5);
  if (v7 < v8)
  {
    return 0;
  }

  return !v8 || memcmp(v6, v5, v8) == 0;
}

void sub_23C4F3028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_41;
  }

  v9 = (a1 + 16);
  v10 = *(a1 + 16);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  v14 = (a1 + 16);
  do
  {
    v15 = *(v7 + 28);
    v16 = v15 > HIDWORD(a2);
    v17 = v15 <= HIDWORD(a2);
    if (v16)
    {
      v14 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v9 == v14)
  {
    v14 = v9;
  }

  else
  {
    v18 = v9;
    do
    {
      if (*(v18 + 7) < v4)
      {
        v4 = *(v18 + 7);
      }

      if (v6 <= *(v18 + 8))
      {
        LODWORD(v6) = *(v18 + 8);
      }

      (**a1)(a1, a3, *(v18 + 9));
      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v21 = *v20 == v18;
          v18 = v20;
        }

        while (!v21);
      }

      v18 = v20;
    }

    while (v20 != v14);
  }

  v22 = (a1 + 8);
  if (v9 != v14)
  {
    do
    {
      v23 = v9[1];
      v24 = v9;
      if (v23)
      {
        do
        {
          v25 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v25 = v24[2];
          v21 = *v25 == v24;
          v24 = v25;
        }

        while (!v21);
      }

      if (*v22 == v9)
      {
        *v22 = v25;
      }

      v26 = *(a1 + 16);
      --*(a1 + 24);
      sub_23C4F49F0(v26, v9);
      operator delete(v9);
      v9 = v25;
    }

    while (v25 != v14);
  }

LABEL_40:
  v27 = *v8;
  if (!*v8)
  {
LABEL_41:
    operator new();
  }

  while (1)
  {
    v8 = v27;
    if (v6 < *(v27 + 28))
    {
      goto LABEL_40;
    }

    if (*(v27 + 32) >= v4)
    {
      break;
    }

    v27 = *(v27 + 8);
    if (!v27)
    {
      goto LABEL_41;
    }
  }
}

uint64_t sub_23C4F3268(void *a1, uint64_t a2)
{
  v4 = sub_23C4F45F4(a1, a2, (a1 + 123));
  sub_23C4F4880(a1, a2, v4);
  v5 = sub_23C4F45F4(a1, a2, (a1 + 130));
  result = sub_23C4F4880(a1, a2, v5);
  if (*(*(a1 + *(*a1 - 24) + 344) + 1678) == 1)
  {
    sub_23C4F45F4(a1, a2, (a1 + 137));
    sub_23C4F45F4(a1, a2, (a1 + 144));
    sub_23C4F45F4(a1, a2, (a1 + 158));
    sub_23C4F45F4(a1, a2, (a1 + 165));
    sub_23C4F45F4(a1, a2, (a1 + 151));
    sub_23C4F45F4(a1, a2, (a1 + 172));

    return sub_23C4F45F4(a1, a2, (a1 + 186));
  }

  return result;
}

uint64_t sub_23C4F3374(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(v3 + 224);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = *(v3 + 8);
      v7 = &v6[4 * v5];
      v8 = a3 - *(v3 + 228);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 20) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFFF0000 | v4;
  }

  *(result + 16) = *(a2 + 32);
  *(result + 8) = *(a2 + 9);
  *(result + 9) = *(a2 + 8);
  v11 = *(a2 + 12);
  *(result + 10) = *(a2 + 16) == 1;
  *result = a3;
  *(result + 4) = v11;
  return result;
}

unint64_t sub_23C4F33F4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 24 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t sub_23C4F3474(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = 16;
  if (v3 == *a1)
  {
    v4 = 20;
  }

  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = a1[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a1[1];
  }

  v8 = (v3 + 8 * v5);
  if (i == v8)
  {
    return 1;
  }

  while (1)
  {
    v13 = *i;
    v9 = *(a2 + 24);
    if (!v9)
    {
      break;
    }

    result = (*(*v9 + 48))(v9, &v13);
    ++i;
    if (result)
    {
      v11 = i == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      while (*i >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++i == v8)
        {
          return result;
        }
      }

      if (i != v8)
      {
        continue;
      }
    }

    return result;
  }

  sub_23C4F3D38();
  return sub_23C4F356C(v12);
}

uint64_t sub_23C4F356C(uint64_t a1)
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

uint64_t sub_23C4F35EC(uint64_t a1)
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

uint64_t sub_23C4F366C(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v6[0] = &unk_284F1BBF8;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F36F8(llvm::Constant *this, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = *(this + 1);
    while (v4)
    {
      v14 = v18;
      v15 = v18;
      v16 = 4;
      v17 = 0;
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v6 + 16) == 5;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        for (i = *(v6 + 8); i; i = *(i + 8))
        {
          sub_23C4FB9F8(v13, &v14, *(i + 24));
        }
      }

      else
      {
        sub_23C4FB9F8(v13, &v14, v6);
      }

      v9 = *(a2 + 24);
      if (v9)
      {
        if (v9 == a2)
        {
          v20 = v19;
          (*(*v9 + 24))(v9, v19);
        }

        else
        {
          v20 = (*(*v9 + 16))(v9);
        }
      }

      else
      {
        v20 = 0;
      }

      v10 = sub_23C4F3474(&v14, v19);
      sub_23C4F356C(v19);
      if (v15 != v14)
      {
        free(v15);
      }

      v4 = v5;
      if ((v10 & 1) == 0)
      {
        result = 0;
        goto LABEL_22;
      }
    }

    llvm::Constant::removeDeadConstantUsers(this);
  }

  result = 1;
LABEL_22:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F3890(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = v4[4];
  if (v5)
  {
    v6 = v5 == v4[5] + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 - 24;
  }

  sub_23C4C30FC(v3 + *(*v3 - 24) + 8, v7);
  v8 = (v3 + *(*v3 - 24));
  v12 = 257;
  v9 = sub_23C497C88(v8 + 1, **(*v4 + 16), v4, 0, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (sub_23C4F3988((v3 + 111), v2))
  {
    sub_23C4FB9F8(v11, (v3 + 111), v9);
  }

  return 1;
}

BOOL sub_23C4F3988(uint64_t a1, void *a2)
{
  v3 = sub_23C4ED7D8(a1, a2);
  v4 = *(a1 + 8);
  v5 = 16;
  if (v4 == *a1)
  {
    v5 = 20;
  }

  v6 = (v4 + 8 * *(a1 + v5));
  if (v3 != v6)
  {
    *v3 = -2;
    ++*(a1 + 24);
  }

  return v3 != v6;
}

uint64_t sub_23C4F39F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BBF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F3A90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BBB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F3B24(uint64_t a1, llvm::Constant **a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v7[0] = &unk_284F1BB68;
  v7[1] = v4;
  v7[3] = v7;
  v8[0] = &unk_284F1BB20;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v8;
  sub_23C4F36F8(v2, v8);
  sub_23C4F356C(v8);
  result = sub_23C4F35EC(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23C4F3BDC(uint64_t a1, llvm::Instruction **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4A6D18(&v16, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = (v3 - 4 * (*(v3 + 5) & 0x7FFFFFF))[8];
    v14 = (v13 + 24);
    if (*(v13 + 32) >= 0x41u)
    {
      v14 = *v14;
    }

    sub_23C4F3CE0(*(*(a1 + 16) + 24), v3, *(v8 + 36) - *(v8 + 28) + *v14);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

void sub_23C4F3CE0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v3 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v4, &v3);
  }

  else
  {
    sub_23C4F3D38();
    sub_23C4F3D38();
  }
}

__n128 sub_23C4F3D58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BB20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const void *sub_23C4F3DF4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  sub_23C4C30FC(v5 + *(*v5 - 24) + 8, *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF)];
  v8 = *(v6 + 24);
  v9 = llvm::ConstantInt::get();
  v20 = 257;
  v10 = sub_23C49A474((v6 + 8), v7, v9, v19);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v20 = 257;
  v13 = sub_23C49ACF8((v11 + 8), 48, v10, v12, v19);
  v14 = sub_23C4ED304(v5, v13);
  v15 = v5 + *(*v5 - 24);
  v16 = *v3;
  v20 = 257;
  v17 = sub_23C49ACF8((v15 + 8), 48, v14, v16, v19);
  if (sub_23C4F3988((v5 + 111), v3))
  {
    sub_23C4FB9F8(v19, (v5 + 111), v17);
  }

  return v17;
}

uint64_t sub_23C4F3F50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BB68;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F3FEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BAD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F4088(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1BA90;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F4110(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F4194(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA90;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F4230(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA48;
  a2[1] = v2;
  return result;
}

BOOL sub_23C4F42C4(uint64_t a1, llvm::Instruction **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4A6D18(&v16, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = (v3 - 4 * (*(v3 + 5) & 0x7FFFFFF))[8];
    v14 = (v13 + 24);
    if (*(v13 + 32) >= 0x41u)
    {
      v14 = *v14;
    }

    sub_23C4F3CE0(*(*(a1 + 16) + 24), v3, *(v8 + 36) - *(v8 + 28) + *v14);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

__n128 sub_23C4F43D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F446C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  sub_23C4C30FC(v5 + *(*v5 - 24) + 8, *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v8 = *(v6 + 24);
  v9 = llvm::ConstantInt::get();
  v15 = 257;
  v10 = sub_23C49A474((v6 + 8), v7, v9, v14);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v15 = 257;
  return sub_23C49ACF8((v11 + 8), 48, v10, v12, v14);
}

uint64_t sub_23C4F4560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA00;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F45F4(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = llvm::User::operator new(0x58);
  v8 = *(a1 + *(*a1 - 24) + 320);
  llvm::ArrayType::get(*(a3 + 32), *(a2 + 8));
  v9 = *(a3 + 24);
  v10 = "_indirect";
  if (*v9)
  {
    v30[0] = "_indirect";
    v6 = 3;
    v10 = v9;
  }

  v29[0] = v10;
  v31 = 3;
  v32 = v6;
  v28 = *(a3 + 48) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    v11 = strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v29[0] = v30;
  v29[1] = 0x2000000000;
  v12 = llvm::ValueAsMetadata::get();
  sub_23C49B500(v29, v12);
  v13 = *(a3 + 52);
  v14 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = *a2;
    v17 = 24 * v15;
    do
    {
      v18 = *v16;
      v16 += 6;
      v19 = *(a1 + *(*a1 - 24) + 192);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v20 = *(a1 + *(*a1 - 24) + 336);
      Impl = llvm::MDTuple::getImpl();
      sub_23C49B500(v29, Impl);
      v17 -= 24;
    }

    while (v17);
  }

  v22 = a1 + *(*a1 - 24);
  v24 = *(v22 + 41);
  v23 = *(v22 + 42);
  v25 = llvm::MDTuple::getImpl();
  sub_23C49B500(v24, v25);
  sub_23C4D56F8(a3, v7);
  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_23C4F4880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 344;
    v9 = 4;
    do
    {
      v10 = *(*a2 + v9);
      if (v10 != -1)
      {
        v11 = *(v8 + *(*v6 - 24));
        result = (*(*v11 + 168))(v11, a3, v10, 1, v7);
      }

      ++v7;
      v9 += 24;
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t sub_23C4F493C(llvm::SmallPtrSetImplBase *a1, const void *a2)
{
  v2 = *a1;
  if (*(a1 + 1) != *a1)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(a1, a2);
  }

  v5 = *(a1 + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(a1 + 4))
    {
      *(a1 + 5) = v5 + 1;
      v2[v5] = a2;
      return *a1 + 8 * v5;
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(a1, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *a1;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(a1 + 6);
      return v6;
    }
  }

  return v3;
}

uint64_t *sub_23C4F49F0(uint64_t *result, uint64_t *a2)
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
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_23C4F4D68(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_284F1B928;
  v7 = *v3;
  v8 = &v6;
  sub_23C4F36F8(v2, &v6);
  result = sub_23C4F356C(&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F4DF8(uint64_t a1, uint64_t *a2)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v17 = v21;
  v18 = v21;
  v19 = 8;
  v20 = 0;
  v4 = *(v3 + 8);
  v22 = v24;
  v23 = 0x800000000;
  sub_23C4F5074(&v22, v4);
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F14();
  sub_23C4E8F98();
  for (i = v23; v23; i = v23)
  {
    v6 = *(v22 + i - 1);
    LODWORD(v23) = i - 1;
    sub_23C4FB9F8(v15, &v17, v6);
    if (v16 == 1)
    {
      sub_23C4F5074(&v22, *(v6 + 8));
      if (v6)
      {
        if (*(v6 + 16) == 84)
        {
          v7 = *(v6 - 32);
          if (v7)
          {
            if (!*(v7 + 16) && *(v7 + 24) == *(v6 + 72))
            {
              llvm::Value::getName(v7);
              Key = llvm::StringMapImpl::FindKey();
              if (Key == -1 || Key == dword_27E1F7458)
              {
                v9 = llvm::StringMapImpl::FindKey();
                if (v9 == -1 || v9 == dword_27E1F7360)
                {
                  v10 = llvm::StringMapImpl::FindKey();
                  if (v10 == -1 || v10 == dword_27E1F7388)
                  {
                    v11 = llvm::StringMapImpl::FindKey();
                    if (v11 == -1 || v11 == dword_27E1F73B0)
                    {
                      v12 = *(a1 + 8);
                      sub_23C4A6D18(v15, *(v3 + 32 - 32 * (*(v3 + 20) & 0x7FFFFFF)));
                      sub_23C4F3028(v12, v15[0], **(a1 + 16));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_23C4F5074(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  if (a2)
  {
    v4 = a2;
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = *(result + 8);
  if (v3 + v5 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = (*result + 8 * v5);
    do
    {
      *v6++ = *(v2 + 24);
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  *(result + 8) = v5 + v3;
  return result;
}

__n128 sub_23C4F5108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F51AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1B970;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5240(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_284F1B928;
  v7 = *v3;
  v8 = &v6;
  sub_23C4F36F8(v2, &v6);
  result = sub_23C4F356C(&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F52D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1B8E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5374(uint64_t result, llvm::Constant **a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v9 = &unk_284F1C738;
    v10 = *v6;
    v11 = &v9;
    v12[0] = &unk_284F1BB20;
    v12[1] = v5;
    v12[2] = &v9;
    v12[3] = v12;
    v7 = sub_23C4F36F8(v4, v12);
    sub_23C4F356C(v12);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(&v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const void *sub_23C4F545C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  sub_23C4C30FC(v6 + *(*v6 - 24) + 8, *a2);
  v7 = v6 + *(*v6 - 24);
  v8 = v4[-4 * (*(v4 + 5) & 0x7FFFFFF)];
  v9 = *(v7 + 24);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = sub_23C49A474((v7 + 8), v8, v10, v21);
  v12 = v6 + *(*v6 - 24);
  v13 = **(a1 + 16);
  v14 = *(v12 + 24);
  v15 = llvm::ConstantInt::get();
  v22 = 257;
  v16 = sub_23C49ADDC((v12 + 8), v11, v15, v21);
  v17 = v6 + *(*v6 - 24);
  v18 = *v4;
  v22 = 257;
  v19 = sub_23C49ACF8((v17 + 8), 48, v16, v18, v21);
  if (sub_23C4F3988((v6 + 111), v4))
  {
    sub_23C4FB9F8(v21, (v6 + 111), v19);
  }

  return v19;
}

__n128 sub_23C4F55CC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_23C4F5670(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C6F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F571C(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C6A8;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F57A4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F5828(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C6A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F58C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C660;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5958(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_284F1C5D0;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_284F1BB20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = sub_23C4F36F8(v4, v10);
    sub_23C4F356C(v10);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F5A3C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  sub_23C4C30FC(v5 + *(*v5 - 24) + 8, *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v8 = *(v6 + 24);
  v9 = llvm::ConstantInt::get();
  v15 = 257;
  v10 = sub_23C49A474((v6 + 8), v7, v9, v14);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v15 = 257;
  return sub_23C49ACF8((v11 + 8), 48, v10, v12, v14);
}

uint64_t sub_23C4F5B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C5D0;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F5BCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F5C78(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_284F1C5D0;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_284F1BB20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = sub_23C4F36F8(v4, v10);
    sub_23C4F356C(v10);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_23C4F5D64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F5E10(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C540;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F5E98(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F5F1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C540;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5FB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C4F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F604C(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C4B0;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F60D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F6158(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C4B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F61F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C468;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F6288(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v7[0] = &unk_284F1BC88;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F6338(uint64_t a1, uint64_t *a2)
{
  v20[32] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  sub_23C4A6D18(v17, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  if (v17[1] == v17[0])
  {
    sub_23C4B8970();
    sub_23C4E901C();
    sub_23C4E8F14();
    sub_23C4E8F98();
    sub_23C4E8E90();
    v18 = v20;
    v19 = 0x2000000000;
    sub_23C49B500(&v18, v2);
    v3 = v19;
    if (v19)
    {
      while (1)
      {
        v4 = *(v18 + --v3);
        LODWORD(v19) = v3;
        v5 = *(v4 + 8);
        if (v5)
        {
          break;
        }

LABEL_27:
        if (!v3)
        {
          goto LABEL_28;
        }
      }

      while (1)
      {
        v6 = *(v5 + 24);
        v7 = *(v6 + 16);
        if (v7 <= 0x1B)
        {
          break;
        }

        if (v7 != 84)
        {
          if (v7 != 77)
          {
            goto LABEL_30;
          }

LABEL_10:
          sub_23C49B500(&v18, v6);
          goto LABEL_11;
        }

        v8 = *(v6 - 32);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v6 + 72))
        {
          goto LABEL_30;
        }

        llvm::Value::getName(v8);
        Key = llvm::StringMapImpl::FindKey();
        if (Key == -1 || Key == dword_27E1F7458)
        {
          v10 = llvm::StringMapImpl::FindKey();
          if (v10 == -1 || v10 == dword_27E1F7400)
          {
            v11 = llvm::StringMapImpl::FindKey();
            if (v11 == -1 || v11 == dword_27E1F7388)
            {
              v12 = llvm::StringMapImpl::FindKey();
              if (v12 == -1 || v12 == dword_27E1F73B0)
              {
                v13 = llvm::StringMapImpl::FindKey();
                v14 = 0;
                if (v13 == -1 || v13 == dword_27E1F7360)
                {
                  goto LABEL_31;
                }
              }
            }
          }
        }

LABEL_11:
        v5 = *(v5 + 8);
        if (!v5)
        {
          v3 = v19;
          goto LABEL_27;
        }
      }

      if (v7 != 5 || *(v6 + 18) != 49)
      {
LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }

      goto LABEL_10;
    }

LABEL_28:
    v14 = 1;
LABEL_31:
    if (v18 != v20)
    {
      free(v18);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_23C4F65E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BC88;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F667C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BC40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_23C4F6718(void *a1, unsigned int a2)
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

uint64_t sub_23C4F6B10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_23C4F6B5C(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_284F1C3D8;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23C4F6C10(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v9, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v4 = sub_23C4F6C90(v3, v9);
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    v7 = *v2;
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v5 != 0;
}

uint64_t *sub_23C4F6C90(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C4F6D4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C3D8;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F6DE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C420;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F6E84(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_284F1C3D8;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_23C4F6F40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C390;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F6FDC(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::ValueAsMetadata::get();
  v2 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v3 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v4 = *(a1 + *(*a1 - 24) + 336);
  llvm::MDString::get();
  v5 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v6 = a1 + *(*a1 - 24);
  v8 = *(v6 + 41);
  v7 = *(v6 + 42);
  Impl = llvm::MDTuple::getImpl();
  result = sub_23C49B500(v8, Impl);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F714C(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C348;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F71D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F7258(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C348;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F72F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C300;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F7388(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C2B8;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F7410(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F7494(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C2B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F7530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C270;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F75C4(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_284F1C228;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F7678(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = v4[4];
  if (v5)
  {
    v6 = v5 == v4[5] + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 - 24;
  }

  sub_23C4C30FC(v3 + *(*v3 - 24) + 8, v7);
  v8 = (v3 + *(*v3 - 24));
  v11 = 257;
  sub_23C497C88(v8 + 1, **(*v4 + 16), v4, 0, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t sub_23C4F7754(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C228;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F77F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C1E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F788C(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_284F1C198;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_284F1BB20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = sub_23C4F36F8(v4, v10);
    sub_23C4F356C(v10);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F7970(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  sub_23C4C30FC(v5 + *(*v5 - 24) + 8, *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v8 = *(v6 + 24);
  v9 = llvm::ConstantInt::get();
  v23 = 257;
  v10 = sub_23C49A474((v6 + 8), v7, v9, v22);
  v11 = v5 + *(*v5 - 24);
  v12 = v5[209];
  v13 = *(v11 + 192);
  v24[0] = llvm::ConstantInt::get();
  v24[1] = v10;
  v23 = 257;
  v14 = sub_23C4ED3A0(v11, v12, v24, 2, v22);
  v21 = 257;
  v15 = sub_23C497C88((v11 + 8), **(*v14 + 16), v14, 0, v20);
  v16 = v5 + *(*v5 - 24);
  v17 = *v3;
  v23 = 257;
  result = sub_23C49ACF8((v16 + 8), 48, v15, v17, v22);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F7B04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C198;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F7BA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_23C4F7C4C(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = llvm::User::operator new(0x58);
  v8 = *(a1 + *(*a1 - 24) + 320);
  llvm::ArrayType::get(*(a3 + 32), *(a2 + 8));
  v9 = *(a3 + 24);
  v10 = "_indirect";
  if (*v9)
  {
    v29[0] = "_indirect";
    v6 = 3;
    v10 = v9;
  }

  v28[0] = v10;
  v30 = 3;
  v31 = v6;
  v27 = *(a3 + 48) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    v11 = strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v28[0] = v29;
  v28[1] = 0x2000000000;
  v12 = llvm::ValueAsMetadata::get();
  sub_23C49B500(v28, v12);
  v13 = *(a3 + 52);
  v14 = *(a1 + *(*a1 - 24) + 192);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = *a2;
    v17 = 16 * v15;
    do
    {
      v18 = *v16;
      v16 += 4;
      v19 = *(a1 + *(*a1 - 24) + 192);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v20 = *(a1 + *(*a1 - 24) + 336);
      Impl = llvm::MDTuple::getImpl();
      sub_23C49B500(v28, Impl);
      v17 -= 16;
    }

    while (v17);
  }

  v22 = a1 + *(*a1 - 24);
  v24 = *(v22 + 41);
  v23 = *(v22 + 42);
  v25 = llvm::MDTuple::getImpl();
  sub_23C49B500(v24, v25);
  sub_23C4D56F8(a3, v7);
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4F7ED0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v2 + 8);
      v6 = &v5[4 * v4];
      v7 = a2 - *(v2 + 228);
      do
      {
        v8 = v5[2];
        v9 = v7 / v8;
        v7 %= v8;
        v3 += *(*v5 + 20) * v9;
        v5 += 4;
      }

      while (v5 != v6);
    }

    a2 = a2 & 0xFFFF0000 | v3;
  }

  v10 = *(a1 + 16);
  return a2;
}

uint64_t sub_23C4F7F30(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1C108;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F7FB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F803C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C108;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F80D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C0C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8170(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_284F1C030;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_284F1BB20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = sub_23C4F36F8(v4, v10);
    sub_23C4F356C(v10);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F8254(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  sub_23C4C30FC(v5 + *(*v5 - 24) + 8, *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v8 = *(v6 + 24);
  v9 = llvm::ConstantInt::get();
  v15 = 257;
  v10 = sub_23C49A474((v6 + 8), v7, v9, v14);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v15 = 257;
  return sub_23C49ACF8((v11 + 8), 48, v10, v12, v14);
}

uint64_t sub_23C4F8348(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C030;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F83E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C078;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8490(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_284F1C030;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_284F1BB20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = sub_23C4F36F8(v4, v10);
    sub_23C4F356C(v10);
    **(v3 + 8) = v7;
    result = sub_23C4F35EC(v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_23C4F857C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BFE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8628(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1BFA0;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F86B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F8734(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BFA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F87D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BF58;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8864(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1BF10;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F88EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F8970(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BF10;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8A0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BEC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8AA0(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_284F1BE38;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23C4F8B54(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v9, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v4 = sub_23C4F6C90(v3, v9);
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    v7 = *v2;
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v5 != 0;
}

uint64_t sub_23C4F8BDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BE38;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F8C78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BE80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8D14(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_284F1BE38;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = sub_23C4F36F8(v4, v7);
    result = sub_23C4F356C(v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_23C4F8DD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BDF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C4F8F20(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C4F8F20(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4F9130(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B800;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = v4 + 24;
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          v12 = *v10;
          *(v14 + 32) = *(v10 + 1);
          *(v14 + 40) = *(v10 + 4);
          ++*(a1 + 8);
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 16));
        }

        v10 += 48;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4F9130(a1);
  }
}

uint64_t sub_23C4F9130(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B800;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C4F9210(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = *v4 + 48 * v4[2].u32[0];
  }

  v7 = v14;
  if (*v14 + 48 * v14[2].u32[0] != v6)
  {
    v8 = *(v6 + 40);
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_284F1B800;
    sub_23C4DDEAC((v6 + 8), v20);
    v9 = v21;
    *(v6 + 32) = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F1B800;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F1B800;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C4F8E6C(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 8), v20);
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t sub_23C4F946C(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B800;
    result = sub_23C4DDEAC((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t sub_23C4F9588(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1BDA8;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F9610(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F9694(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BDA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F9730(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BD60;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F97C4(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_284F1BD18;
  v6[1] = v3;
  v6[3] = v6;
  sub_23C4F36F8(v2, v6);
  result = sub_23C4F356C(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4F984C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F98D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BD18;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F996C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BCD0;
  a2[1] = v2;
  return result;
}

BOOL sub_23C4F9A00(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a2 && *(a2 + 16) == 61)
  {
    v4 = **(a2 - 32);
    v5 = *(v4 + 8);
    if ((v5 & 0xFE) == 0x12)
    {
      v5 = *(**(v4 + 16) + 8);
    }

    if (v5 <= 0xFF)
    {
      return *(a2 - 64) == a3;
    }

    return 0;
  }

  return result;
}

BOOL sub_23C4F9A5C(void *a1, uint64_t a2)
{
  v2 = a2;
  if (**(*a2 + 16) == *(a1 + *(*a1 - 24) + 176))
  {
    while (1)
    {
      v2 = *(v2 + 8);
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      if (*(*(v2 + 24) + 16) != 84)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v2 = *(v2 + 8);
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      if (*(*(v2 + 24) + 16) != 77 || (sub_23C4F9A5C(a1) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C4F9B04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  v8 = v6[1];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a2;
      if (v8 <= a2)
      {
        v10 = a2 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & a2;
    }

    v11 = *(*v6 + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a2)
        {
          if (*(i + 4) == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  v14 = *a1;
  v15 = *a1 + *(**a1 - 24);
  v32 = *(v15 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v15 + 8));
  v34 = *(v15 + 104);
  v16 = *(v14[20] + 80);
  if (v16)
  {
    v17 = v16 - 24;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 40);
  if (v18)
  {
    v19 = v18 - 24;
  }

  else
  {
    v19 = 0;
  }

  sub_23C4C30FC(v14 + *(*v14 - 24) + 8, v19);
  v20 = (a3 + 264);
  if (!*(a3 + 268))
  {
    v20 = &unk_23C532CD4;
  }

  sub_23C4FA868(v14, *(a3 + 256), a2, **(a1 + 16), *(a3 + 248), *v20);
  v21 = *(a1 + 8);
  v22 = v21[1];
  if (!*&v22)
  {
    goto LABEL_42;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = v7;
    if (*&v22 <= v7)
    {
      v24 = a2 % v22.i32[0];
    }
  }

  else
  {
    v24 = (v22.i32[0] - 1) & v7;
  }

  v25 = *(*v21 + 8 * v24);
  if (!v25 || (i = *v25) == 0)
  {
LABEL_42:
    operator new();
  }

  while (1)
  {
    v26 = i[1];
    if (v26 == v7)
    {
      break;
    }

    if (v23.u32[0] > 1uLL)
    {
      if (v26 >= *&v22)
      {
        v26 %= *&v22;
      }
    }

    else
    {
      v26 &= *&v22 - 1;
    }

    if (v26 != v24)
    {
      goto LABEL_42;
    }

LABEL_41:
    i = *i;
    if (!i)
    {
      goto LABEL_42;
    }
  }

  if (*(i + 4) != a2)
  {
    goto LABEL_41;
  }

  v27 = v14 + *(*v14 - 24);
  v29 = v32;
  v30 = v33;
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v31 = v34;
  sub_23C49769C(&v29, (v27 + 8));
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  return i[3];
}

uint64_t sub_23C4FA0E4(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

unsigned int *sub_23C4FA168(unsigned int *result, unsigned __int16 a2, int a3)
{
  *result = a2;
  if (a3 > -5)
  {
    if (a3 <= -3)
    {
      if (a3 == -4)
      {
        v3 = a2 | 0x30000;
      }

      else
      {
        v3 = a2 | 0x20000;
      }

      goto LABEL_19;
    }

    if (a3 == -1)
    {
      return result;
    }

    if (a3 == -2)
    {
      v3 = a2 | 0x10000;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3 > -8)
  {
    if (a3 == -7)
    {
      v3 = a2 | 0x60000;
      goto LABEL_19;
    }

    if (a3 == -5)
    {
      v3 = a2 | 0x40000;
      goto LABEL_19;
    }

LABEL_18:
    v3 = a2 | (a3 << 16) | 0x80000000;
    goto LABEL_19;
  }

  if (a3 == -9)
  {
    v3 = a2 | 0x80000;
    goto LABEL_19;
  }

  if (a3 != -8)
  {
    goto LABEL_18;
  }

  v3 = a2 | 0x70000;
LABEL_19:
  *result = v3;
  return result;
}

uint64_t sub_23C4FA210(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_23C4FA2D8(unsigned __int8 ***a1, uint64_t a2, unint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = a1[2];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = a1[1][v10];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    llvm::FunctionType::get();
    v14 = *a1;
    v15 = **a1;
    v28 = a1[4];
    v16 = &v28;
    if (v15)
    {
      v29[2] = &v28;
      v17 = 10;
      v18 = 3;
      v16 = v14;
    }

    else
    {
      v17 = 1;
      v18 = 10;
    }

    v29[0] = v16;
    v30 = v18;
    v31 = v17;
    llvm::Twine::str(&__p, v29);
    llvm::Module::getOrInsertFunction();
    v27 = v19;
    if (v33 < 0)
    {
      operator delete(__p);
    }

    v20 = a1[2];
    if (!*&v20)
    {
      goto LABEL_39;
    }

    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v7;
      if (v7 >= *&v20)
      {
        v22 = v7 % *&v20;
      }
    }

    else
    {
      v22 = v7 & (*&v20 - 1);
    }

    v23 = a1[1][v22];
    if (!v23 || (v24 = *v23) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v25 = v24[1];
      if (v25 == v7)
      {
        if (v24[2] == a3)
        {
          sub_23C4D56F8((v24 + 3), v27);
          return v27;
        }
      }

      else
      {
        if (v21.u32[0] > 1uLL)
        {
          if (v25 >= *&v20)
          {
            v25 %= *&v20;
          }
        }

        else
        {
          v25 &= *&v20 - 1;
        }

        if (v25 != v22)
        {
          goto LABEL_39;
        }
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != a3)
  {
    goto LABEL_16;
  }

  return v12[5];
}

uint64_t sub_23C4FA868(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v12 = *(a2 + 8);
  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(a2 + 16) + 8);
  }

  if ((v12 & 0xFFFFFF00) == 0x300)
  {
    v13 = llvm::User::operator new(0x58);
    v14 = (a1 + *(*a1 - 24));
    v15 = v14[40];
    v16 = v14[24];
    v33[0] = "agc.local_buffer_pointers.";
    v34 = a3;
    v35 = 2051;
    v27 = *(v14[43] + 836) | 0x100000000;
    v17 = llvm::GlobalVariable::GlobalVariable();
    *(v17 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v18 = a1 + *(*a1 - 24);
    v35 = 257;
    v19 = sub_23C497C88((v18 + 8), **(*v13 + 16), v13, 0, v33);
    v32 = 257;
    v20 = sub_23C49ACF8(v18 + 8, 48, v19, a2, v31);
  }

  else
  {
    if (a4 == -1)
    {
      LODWORD(v31[0]) = a3;
      v21 = 8;
      v22 = 1;
      v23 = v31[0];
    }

    else
    {
      v29[0] = a4;
      v29[2] = ".";
      v30 = 776;
      v31[0] = v29;
      v31[2] = a3;
      v21 = 2;
      v22 = 8;
      v23 = v31;
    }

    LOBYTE(v32) = v21;
    HIBYTE(v32) = v22;
    v33[0] = "agc.buffer_pointers.";
    v34 = v23;
    LOBYTE(v35) = 3;
    HIBYTE(v35) = v21;
    sub_23C4FA168(&v28, a3, a4);
    v13 = sub_23C4ED494(a1, a2, v33, v28, a5);
    v24 = a1 + *(*a1 - 24);
    v35 = 257;
    v20 = sub_23C497C88((v24 + 8), **(*v13 + 16), v13, 0, v33);
    if (a4 == -1)
    {
      ++*(a1 + 2280);
    }
  }

  if (a6 != -1)
  {
    v25 = *(a1 + *(*a1 - 24) + 344);
    (*(*v25 + 168))(v25, v13, a6, 0, 0);
  }

  return v20;
}

int32x2_t sub_23C4FAB6C(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  sub_23C4DDEAC((a2 + 8), v7);
  v4 = v8;
  *(a2 + 32) = v9;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t sub_23C4FAC14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 336);
  v7 = *a3;
  v8 = *(a3 + 8);
  llvm::StructType::get();
  v9 = *(a2 - 64);
  v10 = llvm::PointerType::get();
  v11 = sub_23C4FAF94(a1, v9, v10);
  v12 = (a1 + *(*a1 - 24));
  v44 = 257;
  v13 = sub_23C497C88(v12 + 1, **(*v11 + 16), v11, 0, v43);
  v14 = **(a2 - 32);
  if ((*(v14 + 8) & 0xFE) == 0x12)
  {
    v15 = *(**(v14 + 16) + 8);
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    v17 = *a3;
    v18 = 8 * v16;
    do
    {
      v19 = *v17;
      *v17++ = llvm::PointerType::get();
      v18 -= 8;
    }

    while (v18);
  }

  v20 = *(a1 + *(*a1 - 24) + 192);
  v21 = llvm::PointerType::get();
  sub_23C49B500(a3, v21);
  sub_23C49B500(a3, *(a1 + *(*a1 - 24) + 192));
  v22 = *(a1 + *(*a1 - 24) + 336);
  v23 = *a3;
  v24 = *(a3 + 8);
  llvm::StructType::get();
  v25 = *(a2 - 32);
  v26 = llvm::PointerType::get();
  v27 = sub_23C4FAF94(a1, v25, v26);
  v28 = a1 + 1;
  v29 = *(*a1 - 24);
  v44 = 257;
  v30 = sub_23C497C88((a1 + v29 + 8), **(*v27 + 16), v27, 0, v43);
  v42 = 0;
  if (*(a3 + 8) == 2)
  {
    v31 = 0;
  }

  else
  {
    do
    {
      v32 = *(*a1 - 24);
      v44 = 257;
      v33 = sub_23C49B32C(v28 + v32, v13, &v42, 1, v43);
      v34 = *(*a1 - 24);
      v44 = 257;
      v35 = sub_23C49B32C(v28 + v34, v30, &v42, 1, v43);
      sub_23C4BA8C0((v28 + *(*a1 - 24)), v33, v35, 0);
      v31 = ++v42;
    }

    while (*(a3 + 8) - 2 > v42);
  }

  v36 = a1 + *(*a1 - 24);
  v41 = v31;
  v42 = v31 + 1;
  v44 = 257;
  v37 = sub_23C49B32C((v36 + 8), v30, &v41, 1, v43);
  v38 = a1 + *(*a1 - 24);
  v44 = 257;
  v39 = sub_23C49B32C((v38 + 8), v30, &v42, 1, v43);
  return sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v39, v37, 0);
}

uint64_t sub_23C4FAF94(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  v6 = *(v5 + 25);
  v11 = 257;
  v7 = sub_23C49ACF8((v5 + 8), 47, a2, v6, v10);
  v8 = a1 + *(*a1 - 24);
  v11 = 257;
  return sub_23C49ACF8((v8 + 8), 48, v7, a3, v10);
}

uint64_t sub_23C4FB034(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 336);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = llvm::StructType::get();
  v10 = llvm::UndefValue::get();
  v11 = sub_23C506824(a1 + *(*a1 - 24), v9);
  v12 = **(a2 - 4);
  if ((*(v12 + 8) & 0xFE) == 0x12)
  {
    v13 = *(**(v12 + 16) + 8);
  }

  v14 = *a3;
  v15 = *(a3 + 8);
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v17 = *v14;
      *v14++ = llvm::PointerType::get();
      v16 -= 8;
    }

    while (v16);
    v18 = *a3;
    v19 = *(a3 + 8);
  }

  v20 = *(a1 + *(*a1 - 24) + 336);
  llvm::StructType::get();
  v21 = *(a2 - 4);
  v22 = llvm::PointerType::get();
  v23 = sub_23C4FAF94(a1, v21, v22);
  v24 = a1 + 1;
  v25 = *(*a1 - 24);
  v37 = 257;
  v26 = sub_23C497C88((a1 + v25 + 8), **(*v23 + 16), v23, 0, v36);
  v35 = 0;
  if (*(a3 + 8))
  {
    v27 = v26;
    do
    {
      v28 = *(*a1 - 24);
      v37 = 257;
      v29 = sub_23C49B32C(v24 + v28, v27, &v35, 1, v36);
      v30 = *(*a1 - 24);
      v37 = 257;
      v31 = sub_23C497C88((v24 + v30), **(*v29 + 16), v29, 0, v36);
      v34 = 257;
      v10 = sub_23C49A744(v24 + v30, v10, v31, &v35, 1, v33);
      ++v35;
    }

    while (*(a3 + 8) > v35);
  }

  sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v10, v11, 0);
  return sub_23C4FAF94(a1, v11, *a2);
}

uint64_t sub_23C4FB2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  v5 = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  v6 = *v4;
  if (v5)
  {
    v7 = v19;
  }

  else
  {
    v7 = *v4 + 48 * v4[2].u32[0];
  }

  result = v14;
  if (*v14 + 48 * v14[2].u32[0] != v7)
  {
    v9 = *(v7 + 40);
    sub_23C4FAB6C(v14, v7);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F1B7B0;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F1B7B0;
    v22 = v18;
    v23 = v9;
    v24 = 0;
    result = sub_23C4FB49C(*v10, v10[2].i32[0], v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C4FB534(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t sub_23C4FB49C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 48 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = a1 + 48 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t sub_23C4FB534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C4FB5E8(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C4FB5E8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4FB7FC(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B7B0;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4FB7FC(a1);
  }
}

uint64_t sub_23C4FB7FC(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B7B0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C4FB8DC(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B7B0;
    result = sub_23C4DDEAC((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

void *sub_23C4FB9F8(uint64_t a1, llvm::SmallPtrSetImplBase *a2, const void *a3)
{
  result = sub_23C4F493C(a2, a3);
  v7 = *(a2 + 1);
  v8 = 16;
  if (v7 == *a2)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a2 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_23C4FBA78(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && (v2 = *a1, *(*(a1 + *(v1 - 24) + 344) + 1674) != 1))
  {
    v4 = 0;
  }

  else
  {
    v3 = *a1;
    v4 = *(*(a1 + *(v1 - 24) + 344) + 1660);
  }

  return v4 & 1;
}

uint64_t sub_23C4FBAE0(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && (v2 = *a1, *(*(a1 + *(v1 - 24) + 344) + 1674) != 1))
  {
    v4 = 0;
  }

  else
  {
    v3 = *a1;
    v4 = *(*(a1 + *(v1 - 24) + 344) + 1659);
  }

  return v4 & 1;
}

uint64_t sub_23C4FBB48(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && (v2 = *a1, *(*(a1 + *(v1 - 24) + 344) + 1674) != 1))
  {
    v4 = 0;
  }

  else
  {
    v3 = *a1;
    v4 = *(*(a1 + *(v1 - 24) + 344) + 1658);
  }

  return v4 & 1;
}

uint64_t sub_23C4FBBB0(void *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  if (*(*(v1 + 43) + 1662) == 1)
  {
    v2 = *(v1 + 40);
    v3 = v2 + 8;
    v4 = *(v2 + 16);
    if (v4 != v2 + 8)
    {
      while (1)
      {
        v6 = v4 ? (v4 - 56) : 0;
        v7 = *v6;
        if (*v6)
        {
          if ((llvm::GlobalValue::isDeclaration(v6) & 1) == 0)
          {
            v8 = *(v7 + 8);
            if ((v8 & 0xFE) == 0x12)
            {
              v8 = *(**(v7 + 16) + 8);
            }

            if ((v8 & 0xFFFFFF00) == 0x200 && *(v6 + 1))
            {
              break;
            }
          }
        }

        v4 = *(v4 + 8);
        if (v4 == v3)
        {
          goto LABEL_13;
        }
      }

      v11 = a1 + *(*a1 - 24);
      v12 = *(v11 + 50);
      v13 = *(v11 + 40);
      sub_23C4AEA64(v12);
      llvm::legacy::PassManager::run(*(v12 + 336), v13);
      v14 = a1 + *(*a1 - 24);
      v15 = *(v14 + 50);
      v16 = *(v14 + 40);
      sub_23C4AEAD4(v15);
      llvm::legacy::PassManager::run(*(v15 + 344), v16);
      v121 = 128;
      v120[0] = MEMORY[0x23EED4160](0x2000, 8);
      sub_23C4FC698(v120);
      v122[0] = 0;
      v122[24] = 0;
      v115 = &v117;
      v116 = 0x2000000000;
      v17 = *(a1 + *(*a1 - 24) + 320);
      v18 = v17 + 8;
      v19 = *(v17 + 16);
      if (v19 != v17 + 8)
      {
        do
        {
          if (v19)
          {
            v20 = v19 - 56;
          }

          else
          {
            v20 = 0;
          }

          v21 = *v20;
          if (*v20 && (llvm::GlobalValue::isDeclaration(v20) & 1) == 0)
          {
            v22 = *(v21 + 8);
            if ((v22 & 0xFE) == 0x12)
            {
              v22 = *(**(v21 + 16) + 8);
            }

            if ((v22 & 0xFFFFFF00) == 0x200)
            {
              v23 = llvm::User::operator new(0x58);
              v24 = *(a1 + *(*a1 - 24) + 320);
              v25 = **(v21 + 16);
              v26 = *(v20 + 32);
              v27 = *(v20 + 80);
              Name = llvm::Value::getName(v20);
              LOWORD(v114) = 261;
              v110 = Name;
              v111 = v29;
              v99 = (*(v20 + 32) >> 10) & 7;
              v30 = llvm::GlobalVariable::GlobalVariable();
              llvm::GlobalVariable::copyAttributesFrom(v30, v20);
              llvm::GlobalObject::setSection();
              if ((llvm::GlobalValue::isDeclaration(v20) & 1) == 0)
              {
                v31 = *(v20 - 32);
                llvm::ValueMapper::ValueMapper();
                llvm::ValueMapper::mapConstant();
                MEMORY[0x23EED3DD0](&v110);
                llvm::GlobalVariable::setInitializer();
              }

              v32 = sub_23C4FC774(v120, v20);
              sub_23C4D56F8(v32, v23);
              if (v116 >= HIDWORD(v116))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v115 + v116) = v20;
              LODWORD(v116) = v116 + 1;
            }
          }

          v19 = *(v19 + 8);
        }

        while (v19 != v18);
        v33 = v115;
        if (v116)
        {
          v107 = 0;
          v108 = 0;
          v34 = v115 + 8 * v116;
          v109 = 0;
          do
          {
            for (i = *(*v33 + 8); i; i = *(i + 8))
            {
              v36 = *(i + 24);
              v37 = *(v36 + 16);
              if (v36)
              {
                v38 = v37 >= 0x1C;
              }

              else
              {
                v38 = 0;
              }

              if (!v38 && (!v36 || v37 != 5))
              {
                continue;
              }

              v110 = *(i + 24);
              sub_23C4FC844(&v107, &v110);
            }

            v33 += 8;
          }

          while (v33 != v34);
          v41 = v107;
          v40 = v108;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          if (v107 == v108)
          {
            v84 = 0;
          }

          else
          {
            do
            {
              v42 = *(v40 - 1);
              v108 = (v40 - 1);
              v43 = *(v42 + 16);
              if (v42 && v43 == 60 || v42 && v43 == 84)
              {
                llvm::Instruction::clone(v42);
                v44 = *(v42 + 40);
                llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList();
              }

              if (v42 && v43 == 77)
              {
                if (*(*v42 + 24))
                {
                  llvm::PointerType::get();
                }

                else
                {
                  llvm::PointerType::get(**v42, 0x40);
                }

                v53 = llvm::User::operator new(0x40);
                v54 = sub_23C4FC774(v120, *(v42 - 32))[2];
                v55 = llvm::Value::getName(v42);
                LOWORD(v114) = 261;
                v110 = v55;
                v111 = v56;
                llvm::BitCastInst::BitCastInst();
                v57 = sub_23C4FC774(v120, v42);
                sub_23C4D56F8(v57, v53);
                for (j = *(v42 + 8); j; j = *(j + 8))
                {
                  v110 = *(j + 24);
                  sub_23C4FC844(&v107, &v110);
                }

                v110 = v42;
                sub_23C4FC844(&v104, &v110);
              }

              else if (v42 && v43 == 62)
              {
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v45 = *(v42 + 20) & 0x7FFFFFF;
                if (v42 - 32 * v45 + 32 == v42)
                {
                  v48 = 0;
                  v49 = 0;
                  v47 = -v45;
                }

                else
                {
                  v46 = 32 - 32 * v45;
                  do
                  {
                    v110 = *(v42 + v46);
                    sub_23C4FC844(&v100, &v110);
                    v46 += 32;
                  }

                  while (v46);
                  v47 = -(*(v42 + 20) & 0x7FFFFFF);
                  v49 = v100;
                  v48 = v101;
                }

                v66 = sub_23C4FC774(v120, *(v42 + 32 * v47))[2];
                v67 = llvm::Value::getName(v42);
                LOWORD(v114) = 261;
                v110 = v67;
                v111 = v68;
                v69 = sub_23C4FC914(v66, v49, (v48 - v49) >> 3);
                llvm::GetElementPtrInst::isInBounds(v42);
                llvm::GetElementPtrInst::setIsInBounds(v69);
                v70 = sub_23C4FC774(v120, v42);
                sub_23C4D56F8(v70, v69);
                for (k = *(v42 + 8); k; k = *(k + 8))
                {
                  v110 = *(k + 24);
                  sub_23C4FC844(&v107, &v110);
                }

                v110 = v42;
                sub_23C4FC844(&v104, &v110);
                if (v49)
                {
                  operator delete(v49);
                }
              }

              else
              {
                if (v43 != 5)
                {
                  v42 = 0;
                }

                if (*(v42 + 18) == 34)
                {
                  v110 = &v112;
                  v111 = 0x2000000000;
                  v50 = *(v42 + 20) & 0x7FFFFFF;
                  v51 = v50 - 1;
                  if (v50 == 1)
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v72 = v42 + 32;
                    do
                    {
                      sub_23C49B500(&v110, *(v72 - 32 * (*(v42 + 20) & 0x7FFFFFF)));
                      v72 += 32;
                      --v51;
                    }

                    while (v51);
                    v52 = *(v42 + 20) & 0x7FFFFFF;
                  }

                  v73 = sub_23C4FC774(v120, *(v42 - 32 * v52))[2];
                  if (v73)
                  {
                    v74 = *(v73 + 16) >= 0x1Cu;
                  }

                  else
                  {
                    v74 = 0;
                  }

                  if (v74)
                  {
                    v103 = 257;
                    ElementPtr = sub_23C4FC914(v73, v110, v111);
                    llvm::Instruction::insertAfter();
                  }

                  else
                  {
                    v75 = *v73;
                    if ((*(*v73 + 8) & 0xFE) == 0x12)
                    {
                      v75 = **(v75 + 16);
                    }

                    v76 = **(v75 + 16);
                    ElementPtr = llvm::ConstantExpr::getGetElementPtr();
                  }

                  v81 = sub_23C4FC774(v120, v42);
                  sub_23C4D56F8(v81, ElementPtr);
                  for (m = *(v42 + 8); m; m = *(m + 8))
                  {
                    v100 = *(m + 24);
                    sub_23C4FC844(&v107, &v100);
                  }

                  if (v110 != &v112)
                  {
                    free(v110);
                  }
                }

                else
                {
                  v59 = sub_23C4FC774(v120, *(v42 - 32 * (*(v42 + 20) & 0x7FFFFFF)));
                  v60 = v59[2];
                  v61 = *(v60 + 16);
                  if (v60)
                  {
                    v62 = v61 >= 0x1C;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  if (v62)
                  {
                    BitCast = llvm::User::operator new(0x40);
                    v78 = **(*v42 + 16);
                    llvm::PointerType::get();
                    LOWORD(v114) = 257;
                    llvm::BitCastInst::BitCastInst();
                    llvm::Instruction::insertAfter();
                  }

                  else
                  {
                    if (v61 < 0x15)
                    {
                      v63 = v59[2];
                    }

                    v64 = **(*v42 + 16);
                    llvm::PointerType::get();
                    BitCast = llvm::ConstantExpr::getBitCast();
                  }

                  v79 = sub_23C4FC774(v120, v42);
                  sub_23C4D56F8(v79, BitCast);
                  for (n = *(v42 + 8); n; n = *(n + 8))
                  {
                    v110 = *(n + 24);
                    sub_23C4FC844(&v107, &v110);
                  }
                }
              }

              v41 = v107;
              v40 = v108;
            }

            while (v107 != v108);
            v84 = v104;
            for (ii = v105; ii != v84; ii -= 8)
            {
              v85 = *(ii - 1);
              llvm::Instruction::eraseFromParent(v85);
            }
          }

          if (v116)
          {
            v86 = v115;
            v87 = 8 * v116;
            do
            {
              v88 = *v86;
              if ((llvm::GlobalValue::isDeclaration(*v86) & 1) == 0)
              {
                if (*(v88 + 1))
                {
                  llvm::Constant::getNullValue(*v88, v89);
                  llvm::Value::replaceAllUsesWith();
                }

                llvm::GlobalVariable::eraseFromParent(v88);
              }

              ++v86;
              v87 -= 8;
            }

            while (v87);
          }

          if (v84)
          {
            v105 = v84;
            operator delete(v84);
          }

          if (v41)
          {
            operator delete(v41);
          }

          v33 = v115;
        }

        if (v33 != &v117)
        {
          free(v33);
        }
      }

      sub_23C4ED8D0(v122);
      v90 = v120[0];
      if (v121)
      {
        v116 = 2;
        v117 = 0;
        v118 = -4096;
        v119 = 0;
        v115 = &unk_284F1B840;
        v111 = 2;
        v112 = 0;
        v113 = -8192;
        v114 = 0;
        v110 = &unk_284F1B840;
        v91 = (v120[0] + 40);
        v92 = v121 << 6;
        do
        {
          v93 = *(v91 - 2);
          if (v93 != v118 && v93 != v113)
          {
            v95 = *(v91 + 2);
            if (v95 != -8192 && v95 != -4096 && v95 != 0)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v91);
              v93 = *(v91 - 2);
            }
          }

          if (v93 != -8192 && v93 != -4096 && v93 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v91 - 32));
          }

          v91 = (v91 + 64);
          v92 -= 64;
        }

        while (v92);
        if (v113 != -8192 && v113 != -4096 && v113)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v111);
        }

        if (v118 != -8192 && v118 != -4096 && v118)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v116);
        }

        v90 = v120[0];
        v98 = (v121 << 6);
      }

      else
      {
        v98 = 0;
      }

      llvm::deallocate_buffer(v90, v98);
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_23C4FC698(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 6));
    result = *result + 8;
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B840;
      *(v4 + 3) = v9;
      v5 = v4 + 56;
      result = v4 + 64;
      v2 += 64;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *sub_23C4FC774(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F1B840;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FCC68(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C4FCCFC(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 6;
    v4[6] = 0;
    v4[7] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

void sub_23C4FC844(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_23C496CE8();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_23C4D97E0(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_23C4FC914(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v3 = *a1;
  if ((*(*a1 + 8) & 0xFE) == 0x12)
  {
    v3 = **(v3 + 16);
  }

  return sub_23C49AFDC(**(v3 + 16), a1, a2, a3);
}

uint64_t sub_23C4FC950(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v18, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = &unk_284F1B840;
  v20 = v4;
  v25 = 0;
  result = sub_23C4FCC68(*v4, v4[2].i32[0], v19, &v25);
  if (result)
  {
    v6 = v25;
  }

  else
  {
    v6 = (*v4 + (v4[2].u32[0] << 6));
  }

  if ((*v20 + (v20[2].u32[0] << 6)) != v6)
  {
    sub_23C4EDBD4(v15, 3u, v6 + 5);
    v7 = v20;
    v8 = v6[7];
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v6 + 5));
    }

    v26[0] = 2;
    v26[1] = 0;
    v27 = -8192;
    v28 = 0;
    v25 = &unk_284F1B840;
    sub_23C4DDEAC((v6 + 1), v26);
    v10 = v27;
    v6[4] = v28;
    if (v10 != -8192 && v10 != -4096 && v10)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v11 = v20;
    sub_23C4EDBD4(v13, 3u, v15);
    sub_23C4EDC2C(&v21, a2);
    v21 = &unk_284F1B840;
    v24 = v11;
    sub_23C4EDBD4(v26, (LODWORD(v22[0]) >> 1) & 3, v22);
    v25 = &unk_284F1B840;
    v28 = v24;
    sub_23C4EDBD4(v29, 3u, v13);
    v31 = 0;
    result = sub_23C4FCC68(*v11, *(v11 + 16), v27, &v31);
    if ((result & 1) == 0)
    {
      v12 = sub_23C4FCCFC(v11, &v25, v31);
      sub_23C4DDEAC((v12 + 1), v26);
      v12[4] = v28;
      result = sub_23C4EDBD4((v12 + 5), 3u, v29);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v27 != -8192 && v27 != -4096 && v27)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    if (v14 != -8192 && v14 != -4096 && v14)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }

  if (v19 != -8192 && v19 != -4096)
  {
    if (v19)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v18);
    }
  }

  return result;
}

uint64_t sub_23C4FCC68(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 6);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 6);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t sub_23C4FCCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C4FCDB0(a1, v6);
  v8 = 0;
  sub_23C4FCC68(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t sub_23C4FCDB0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 6, 8);
  if (v4)
  {
    sub_23C4FC698(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F1B840;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 6);
    if (v3)
    {
      v10 = (v4 + 32);
      v11 = v9;
      do
      {
        v12 = *(v10 - 1);
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C4FCC68(*a1, *(a1 + 16), v12, &v26);
          v16 = v26;
          sub_23C4DDEAC((v26 + 8), v10 - 3);
          *(v16 + 32) = *v10;
          sub_23C4EDBD4((v16 + 40), 3u, v10 + 1);
          ++*(a1 + 8);
          v17 = v10[3];
          if (v17 != -8192 && v17 != -4096 && v17)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v10 + 1));
          }
        }

        v14 = *(v10 - 1);
        if (v14 != -8192 && v14 != -4096 && v14 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 3));
        }

        v10 += 8;
        v11 -= 64;
      }

      while (v11);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C4FC698(a1);
  }
}

uint64_t sub_23C4FCFF0(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v9, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v11 = v2;
  v12 = 0;
  result = sub_23C4FCC68(*v2, *(v2 + 16), v10, &v12);
  if (result)
  {
    v4 = v12;
    v5 = v12[7];
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v12 + 5));
    }

    v13[0] = 2;
    v13[1] = 0;
    v14 = -8192;
    v15 = 0;
    v12 = &unk_284F1B840;
    result = sub_23C4DDEAC((v4 + 1), v13);
    v7 = v14;
    v4[4] = v15;
    if (v7 != -8192 && v7 != -4096 && v7)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v10 != -8192 && v10 != -4096 && v10 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  return result;
}

uint64_t sub_23C4FD12C(uint64_t *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = sub_23C4AEB44(*(a1 + *(*a1 - 24) + 400), *(a1 + *(*a1 - 24) + 320), 2);
  if (v2)
  {
    v3 = v2;
    v4 = v2 + 24;
    for (i = *(v2 + 32); i != v4; i = *(i + 8))
    {
      if (i)
      {
        v6 = (i - 56);
      }

      else
      {
        v6 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v6))
      {
        if ((*(v6 + 34) & 0x80) != 0)
        {
          sub_23C4AF1B0(v6, 3);
        }
      }
    }

    v7 = *(*(a1 + *(*a1 - 24) + 400) + 32);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = strlen(*(v7 + 8));
    }

    else
    {
      v9 = 0;
    }

    sub_23C4AF090(v3, v8, v9);
    v11 = *(*(a1 + *(*a1 - 24) + 400) + 32);
    if (*(v11 + 16))
    {
      v12 = strlen(*(v11 + 16));
    }

    llvm::Module::setDataLayout();
    v13 = *(a1 + *(*a1 - 24) + 320);
    v35 = v3;
    v37 = 0;
    v14 = llvm::Linker::linkModules();
    sub_23C4AF0E8(v36);
    v15 = MEMORY[0x23EED4710](v35);
    MEMORY[0x23EED50C0](v15, 0x10B2C407FF26C1CLL);
    if ((v14 & 1) == 0)
    {
      v16 = *a1;
      v17 = *a1;
      v18 = a1 + *(*a1 - 24);
      if (*(*(v18 + 344) + 1674) == 1)
      {
        v19 = *(v18 + 320);
        v20 = *(v19 + 32);
        v21 = v19 + 24;
        if (v20 != v19 + 24)
        {
          do
          {
            v22 = *(v20 + 8);
            if (v20)
            {
              v23 = v20 - 56;
            }

            else
            {
              v23 = 0;
            }

            if (v23 != a1[19] && !*(v20 - 48))
            {
              llvm::Function::eraseFromParent((v20 - 56));
            }

            v20 = v22;
          }

          while (v22 != v21);
        }
      }

      else
      {
        *(a1 + 8) = 1;
        v24 = *(a1 + *(v17 - 24) + 320);
        v25 = *(v24 + 32);
        v26 = v24 + 24;
        if (v25 != v24 + 24)
        {
          do
          {
            v27 = *(v25 + 8);
            if (v25)
            {
              v28 = v25 - 56;
            }

            else
            {
              v28 = 0;
            }

            if (v28 != a1[19])
            {
              if (*(v25 - 48))
              {
                if ((*(v25 - 23) & 0x20) == 0 && (llvm::GlobalValue::isDeclaration((v25 - 56)) & 1) == 0)
                {
                  *(v25 - 24) = *(v25 - 24) & 0xFFFFBFC0 | 0x4007;
                  llvm::Function::addFnAttr();
                  ++*(a1 + 8);
                }
              }

              else
              {
                llvm::Function::eraseFromParent((v25 - 56));
              }
            }

            v25 = v27;
          }

          while (v27 != v26);
          v16 = *a1;
        }

        v29 = *(a1 + *(v16 - 24) + 320);
        v30 = *(v29 + 16);
        v31 = v29 + 8;
        if (v30 != v29 + 8)
        {
          do
          {
            v32 = *(v30 + 8);
            if (v30)
            {
              v33 = (v30 - 56);
            }

            else
            {
              v33 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v33) & 1) == 0)
            {
              if (*(v30 - 48))
              {
                *(v30 - 24) = *(v30 - 24) & 0xFFFFBFC0 | 0x4007;
              }

              else
              {
                llvm::GlobalVariable::eraseFromParent((v30 - 56));
              }
            }

            v30 = v32;
          }

          while (v32 != v31);
        }

        if (*(a1 + 8) > 1u)
        {
          llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 320), *(a1 + *(*a1 - 24) + 320));
          *(a1 + 8) = 1;
        }
      }
    }

    result = v14 ^ 1u;
  }

  else
  {
    result = 1;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4FD508(uint64_t *a1, int a2)
{
  if (*(a1 + 10))
  {
    return 1;
  }

  v45[12] = v2;
  v45[13] = v3;
  (*(**(a1 + *(*a1 - 24) + 344) + 336))(&v44);
  v6 = v44;
  if (v44 != v45)
  {
    v7 = a1 + 40;
    do
    {
      v8 = *(v7 + *(*a1 - 24));
      v9 = *(v6 + 55);
      if (v9 < 0)
      {
        v10 = v6[4];
      }

      v11 = v6[5];
      if (v9 >= 0)
      {
        v12 = *(v6 + 55);
      }

      else
      {
        v12 = v6[5];
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        v14 = Function;
        if (*(v6 + 55) < 0)
        {
          sub_23C49F988(&__dst, v6[4], v6[5]);
        }

        else
        {
          __dst = *(v6 + 4);
        }

        std::string::insert(&__dst, 0, "agx.");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        sub_23C4ADD34(&v40, size + 5);
        if (v42 >= 0)
        {
          v16 = &v40;
        }

        else
        {
          v16 = v40;
        }

        if (size)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v16, p_dst, size);
        }

        strcpy(v16 + size, ".fast");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __dst.__r_.__value_.__l.__size_;
        }

        sub_23C4ADD34(&__p, v18 + 8);
        if (v39 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v18)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &__dst;
          }

          else
          {
            v20 = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(p_p, v20, v18);
        }

        strcpy(p_p + v18, ".nonfast");
        v21 = *(v14 + 8);
        while (v21)
        {
          v22 = *(v21 + 24);
          v21 = *(v21 + 8);
          FastMathFlags = llvm::Instruction::getFastMathFlags(v22);
          v24 = *a1;
          if (FastMathFlags)
          {
            v25 = v42 < 0;
            v26 = &v41;
          }

          else
          {
            v25 = v39 < 0;
            v26 = &v38;
          }

          v27 = *(v14 + 24);
          v28 = *(v7 + *(*a1 - 24));
          v29 = *v26;
          if (v25)
          {
            v30 = *v26;
          }

          llvm::Module::getOrInsertFunction();
          *(v22 + 9) = *(v31 + 24);
          sub_23C4C11E8(v22, v31);
        }

        if (v39 < 0)
        {
          operator delete(__p);
        }

        if (v42 < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      v32 = v6[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v6[2];
          v34 = *v33 == v6;
          v6 = v33;
        }

        while (!v34);
      }

      v6 = v33;
    }

    while (v33 != v45);
  }

  sub_23C4A690C(v45[0]);
  v35 = sub_23C4AEB44(*(a1 + *(*a1 - 24) + 400), *(a1 + *(*a1 - 24) + 320), a2);
  if (v35)
  {
    return sub_23C4AEDDC(a1 + *(*a1 - 24), v35, *(*(a1 + *(*a1 - 24) + 344) + 1674), a1[19]);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23C4FD8A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + *(*a1 - 24) + 320);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 != v3 + 24)
  {
    do
    {
      if (v5)
      {
        v6 = v5 - 56;
      }

      else
      {
        v6 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v6) && *(v6 + 8) && (*(v6 + 33) & 0x20) == 0)
      {
        v12 = *MEMORY[0x277D85DF8];
        Name = llvm::Value::getName(v6);
        v18 = v13;
        sub_23C4AE5DC(&__dst, &Name);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        fprintf(v12, "AGC: %s:%d:%s: !!! Encountered unlowered function call to %s\n", "agc_llvm_air_user_object.cpp", 8296, "virtual BOOL AGCLLVMUserObject::verifyLoweredIR()", p_dst);
        std::string::~string(&__dst);
        Name = llvm::Value::getName(v6);
        v18 = v15;
        sub_23C4AE5DC(&__dst, &Name);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__dst;
        }

        else
        {
          v16 = __dst.__r_.__value_.__r.__words[0];
        }

        syslog(3, "AGC: %s:%d:%s: !!! Encountered unlowered function call to %s\n", "agc_llvm_air_user_object.cpp", 8296, "virtual BOOL AGCLLVMUserObject::verifyLoweredIR()", v16);
        std::string::~string(&__dst);
        abort();
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v2 = *a1;
  }

  v7 = *(a1 + *(v2 - 24) + 320);
  v8 = *(v7 + 32);
  if (v8 != v7 + 24)
  {
    v9 = *(v7 + 32);
    do
    {
      if (v9 != v8)
      {
        if (v9)
        {
          v10 = v9 - 56;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == a1[19])
        {
          llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList();
        }
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v7 + 24);
  }

  return 1;
}

uint64_t sub_23C4FDAAC(void *a1)
{
  v1 = (*(**(a1 + *(*a1 - 24) + 344) + 488))(*(a1 + *(*a1 - 24) + 344), a1, *(a1 + *(*a1 - 24) + 320));
  v2 = *(v1 + 320);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v17[0] = 0;
    v17[1] = 0;
    v15 = 0;
    v16 = 0;
    if (sub_23C4C28BC(Name, v8, v17, &v15) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(v1 + 712);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(v1 + 712) + 8 * *(*(v1 + 712) + 8)) && llvm::StringRef::find() != -1)
      {
        sub_23C4C2978(v1 + 352, v5, *v12 + 8, v15, v16);
      }
    }
  }

  v13 = *(v1 + 720);
  (*(*v1 + 16))(v1);
  return v13;
}

uint64_t sub_23C4FDC38(void *a1)
{
  v1 = (*(**(a1 + *(*a1 - 24) + 344) + 488))(*(a1 + *(*a1 - 24) + 344), a1, *(a1 + *(*a1 - 24) + 320));
  v2 = sub_23C4C27D4(v1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  return v2;
}

uint64_t sub_23C4FDCE0(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  (*(*a1 + 80))();
  v3 = *(v2 + 40);
  llvm::Module::getOrInsertFunction();
  a1[19] = v4;
  v5 = a1[20];
  if (*(v5 + 72) != v5 + 72)
  {
    sub_23C4FE3AC(v4 + 72, v4 + 72, v5 + 72, *(v5 + 80), v5 + 72);
    v5 = a1[20];
  }

  v25[0] = *(v5 + 112);
  FnAttrs = llvm::AttributeList::getFnAttrs(v25);
  v6 = *(a1 + *(*a1 - 24) + 336);
  v7 = llvm::AttributeSet::removeAttribute();
  FnAttrs = v7;
  if (v7)
  {
    v8 = a1[19];
    v9 = *(a1 + *(*a1 - 24) + 336);
    LODWORD(v25[0]) = -1;
    v25[1] = v7;
    *(v8 + 112) = llvm::AttributeList::get();
  }

  v10 = *(a1[19] + 80);
  if (v10)
  {
    v11 = (v10 - 24);
  }

  else
  {
    v11 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v11);
  sub_23C4FE424(v11, &FirstInsertionPt);
  v26 = 257;
  llvm::BasicBlock::splitBasicBlock();
  v12 = *(v11 + 5);
  if (v12 == (v11 + 40))
  {
    v15 = 0;
  }

  else
  {
    v13 = (v12 - 3);
    if (v12)
    {
      v14 = v12 - 3;
    }

    else
    {
      v14 = 0;
    }

    if (*(v14 + 16) - 29 >= 0xB)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }
  }

  llvm::Instruction::eraseFromParent(v15);
  v16 = a1 + *(*a1 - 24);
  *(v16 + 7) = v11;
  *(v16 + 8) = v11 + 40;
  v17 = (*(*a1 + 64))(a1);
  if (v17)
  {
    v18 = *(a1 + *(*a1 - 24) + 344);
    (*(*v18 + 296))(v18, a1[19]);
    sub_23C4BC31C((a1 + *(*a1 - 24) + 8));
    v19 = *(a1 + *(*a1 - 24) + 336);
    v25[0] = "wrapper_exit";
    v26 = 259;
    v20 = a1[19];
    operator new();
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_23C4FE3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList();
  }
}

uint64_t sub_23C4FE424(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = result + 40;
  while (v2 != v3)
  {
    result = v2 - 24;
    v5 = v2 == 0;
    v2 = *(v2 + 8);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = result;
    }

    if (*(v6 + 16) == 59)
    {
      if (*a2)
      {
        v7 = *a2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (result == v7)
      {
        *a2 = *(*a2 + 8);
      }

      else
      {
        result = llvm::Instruction::moveBefore();
      }
    }
  }

  return result;
}

void sub_23C4FE4A8(uint64_t a1)
{
  sub_23C4FE87C();
  v2 = *(a1 + 160);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v4 = *(a1 + 160);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    v6 = a1 + 8;
    v7 = a1 + 192;
    v43 = v5;
    do
    {
      v8 = *(*(a1 + 72) + 8 * *(v3 + 32));
      if (!v8 || !*(v3 + 8))
      {
        goto LABEL_42;
      }

      llvm::MDString::getString(*(v8 - 8 * *(v8 + 8) + 8));
      Key = llvm::StringMapImpl::FindKey();
      v10 = Key;
      if (Key == -1 || Key == dword_27E1F7428)
      {
        goto LABEL_42;
      }

      v12 = qword_27E1F7420;
      v13 = *(*a1 - 24);
      v14 = *(*(a1 + 160) + 80);
      if (v14)
      {
        v15 = (v14 - 24);
      }

      else
      {
        v15 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v15);
      sub_23C497720(v6 + v13, v15, FirstInsertionPt);
      v17 = *v3;
      if ((*(*v3 + 8) & 0xFE) == 0x12)
      {
        v17 = **(v17 + 16);
      }

      v18 = *(v12 + 8 * v10);
      sub_23C4AE5DC(&__dst, v18 + 8);
      if (v17 == *(v7 + *(*a1 - 24)))
      {
        v19 = ".i32";
      }

      else
      {
        v19 = ".i16";
      }

      v20 = std::string::append(&__dst, v19);
      v21 = v20->__r_.__value_.__r.__words[2];
      *__p = *&v20->__r_.__value_.__l.__data_;
      v48 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v22 = a1 + *(*a1 - 24);
      if (v48 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      if (v48 >= 0)
      {
        v24 = SHIBYTE(v48);
      }

      else
      {
        v24 = __p[1];
      }

      if (*(v18 + 24) == 1)
      {
        v25 = sub_23C4A0414(v22);
        v26 = *(*a1 - 24);
        v46 = 257;
        v27 = **(*v25 + 16);
        v28 = v6 + v26;
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v31 = sub_23C49EB10(v22, v23, v24, v17, *(v22 + 192));
        if ((*(*v3 + 8) & 0xFE) == 0x12)
        {
          v32 = *(*v3 + 32);
          v33 = llvm::UndefValue::get();
          if (v32)
          {
            for (i = 0; i != v32; ++i)
            {
              v35 = *(*a1 - 24);
              v36 = *(a1 + 192 + v35);
              v44 = llvm::ConstantInt::get();
              v46 = 257;
              v37 = sub_23C497A7C(a1 + 8 + v35, *(v31 + 24), v31, &v44, 1, &__dst);
              v38 = a1 + *(*a1 - 24);
              v46 = 257;
              v39 = *(v38 + 192);
              v40 = llvm::ConstantInt::get();
              v33 = sub_23C505AA8(v38 + 8, v33, v37, v40, &__dst);
            }
          }

          goto LABEL_39;
        }

        v41 = a1 + *(*a1 - 24);
        v42 = *(v41 + 192);
        v44 = llvm::ConstantInt::get();
        v46 = 257;
        v27 = *(v31 + 24);
        v28 = v41 + 8;
        v29 = &v44;
        v25 = v31;
        v30 = 1;
      }

      sub_23C497A7C(v28, v27, v25, v29, v30, &__dst);
LABEL_39:
      llvm::Value::replaceAllUsesWith();
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = v43;
      v6 = a1 + 8;
      v7 = a1 + 192;
LABEL_42:
      v3 += 40;
    }

    while (v3 != v5);
  }
}

void sub_23C4FE87C()
{
  if ((atomic_load_explicit(&qword_27E1F7440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7440))
  {
    qword_27E1F7420 = 0;
    *&dword_27E1F7428 = 0;
    qword_27E1F7430 = 0x2000000000;
    __cxa_atexit(sub_23C4FE900, &qword_27E1F7420, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7440);
  }
}

uint64_t sub_23C4FE900(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 33));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4FE97C(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 320);
  v4 = *(*(v2 + 400) + 32);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = strlen(*(v4 + 8));
  }

  else
  {
    v6 = 0;
  }

  sub_23C4AF090(v3, v5, v6);
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 320);
  v9 = *(*(v7 + 400) + 32);
  if (*(v9 + 16))
  {
    v10 = strlen(*(v9 + 16));
  }

  llvm::Module::setDataLayout();
  sub_23C4B2A60((a1 + *(*a1 - 24)));
  sub_23C4B2B20((a1 + *(*a1 - 24)));
  v11 = *(a1 + *(*a1 - 24) + 320);
  llvm::Module::getOrInsertNamedMetadata();
  v12 = *(a1 + *(*a1 - 24) + 336);
  v26 = llvm::MDString::get();
  v13 = a1 + *(*a1 - 24);
  (*(*a1 + 200))(a1);
  v14 = *(v13 + 192);
  llvm::ConstantInt::get();
  v27 = llvm::ValueAsMetadata::get();
  v15 = *(a1 + *(*a1 - 24) + 336);
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (*(a1 + 32) >= 2u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 304), *(a1 + *(*a1 - 24) + 320));
  }

  v16 = (a1 + *(*a1 - 24));
  if (*(v16[43] + 1690) == 1 && (*(*v16 + 32))(v16) <= 3)
  {
    v17 = *(a1 + *(*a1 - 24) + 320);
    llvm::Module::getOrInsertNamedMetadata();
    v18 = *(a1 + *(*a1 - 24) + 336);
    v24[1] = llvm::MDString::get();
    v19 = *(a1 + *(*a1 - 24) + 192);
    llvm::ConstantInt::get();
    v24[2] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  v20 = *(*(a1 + 160) + 80);
  if (v20)
  {
    v21 = (v20 - 24);
  }

  else
  {
    v21 = 0;
  }

  v24[0] = llvm::BasicBlock::getFirstInsertionPt(v21);
  sub_23C4FE424(v21, v24);
  v25 = 257;
  llvm::BasicBlock::splitBasicBlock();
  (*(*a1 + 56))(a1);
  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t *sub_23C4FED68(const void *a1, size_t a2)
{
  i = (qword_27E1F7450 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7460) = qword_27E1F7460 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 49, 8);
  v9 = v8;
  v10 = v8 + 48;
  if (a2)
  {
    memcpy((v8 + 48), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F745C;
    ;
  }

  return i;
}

uint64_t *sub_23C4FEE6C(const void *a1, size_t a2)
{
  i = (qword_27E1F7358 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7368) = qword_27E1F7368 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F7364;
    ;
  }

  return i;
}

uint64_t sub_23C4FEF70(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v7 = *a1;
  v8 = *(*a1 + 8 * result);
  if (v8)
  {
    if (v8 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v9 = result;
  v10 = MEMORY[0x23EED4160](a3 + 9, 8);
  v11 = v10;
  v12 = v10 + 8;
  if (a3)
  {
    memcpy((v10 + 8), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v7 + 8 * v9) = v11;
  *v11 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}

uint64_t *sub_23C4FF048(const void *a1, size_t a2)
{
  i = (qword_27E1F7420 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7430) = qword_27E1F7430 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 33, 8);
  v9 = v8;
  v10 = v8 + 32;
  if (a2)
  {
    memcpy((v8 + 32), a1, a2);
  }

  *(v10 + a2) = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F742C;
    ;
  }

  return i;
}