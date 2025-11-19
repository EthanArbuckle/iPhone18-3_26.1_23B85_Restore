void sub_23C496B58()
{
  v2 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F66F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F66F0))
  {
    v1[4] = xmmword_278BBF030;
    v1[5] = *&off_278BBF040;
    v1[6] = xmmword_278BBF050;
    v1[0] = xmmword_278BBEFF0;
    v1[1] = *&off_278BBF000;
    v1[2] = xmmword_278BBF010;
    v1[3] = *&off_278BBF020;
    sub_23C496C28(v1, 0xEuLL);
    __cxa_atexit(sub_23C496CB4, &qword_27E1F66D8, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F66F0);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void sub_23C496C28(uint64_t a1, unint64_t a2)
{
  qword_27E1F66D8 = 0;
  qword_27E1F66E0 = 0;
  qword_27E1F66E8 = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_23C496CE8();
  }
}

uint64_t sub_23C496CB4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23C496CF8()
{
  if ((atomic_load_explicit(&qword_27E1F6710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6710))
  {
    qword_27E1F6708 = 0;
    qword_27E1F6700 = 0;
    qword_27E1F66F8 = &qword_27E1F6700;
    __cxa_atexit(sub_23C496D80, &qword_27E1F66F8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F6710);
  }
}

void sub_23C496DAC(char *a1)
{
  if (a1)
  {
    sub_23C496DAC(*a1);
    sub_23C496DAC(*(a1 + 1));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C496E18()
{
  v0 = 0x27E1F6000uLL;
  if ((atomic_load_explicit(&qword_27E1F6720, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_27E1F6720);
    v0 = 10705920000;
    if (v2)
    {
      qword_27E1F6718 = os_log_create("com.apple.agx", "AGCEnv");
      __cxa_guard_release(&qword_27E1F6720);
      v0 = 10705920000;
    }
  }

  return *(v0 + 1816);
}

BOOL sub_23C496E8C(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 1744);
  if (!v3)
  {
    return 1;
  }

  v6 = strlen(*(a1 + 1744));
  if (a3 < v6)
  {
    return 0;
  }

  return !v6 || memcmp(a2, v3, v6) == 0;
}

uint64_t *sub_23C49707C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v97 = *MEMORY[0x277D85DE8];
  v76 = *a2;
  v77 = *(a2 + 16);
  if (v77)
  {
    llvm::MetadataTracking::track();
  }

  v78 = *(a2 + 24);
  sub_23C497620(a1, &v76);
  if (v77)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*(a4 + 1) & 0xF) != 0)
  {
    v73 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (a1 + 8));
    v75 = *(a1 + 104);
    a3 = sub_23C4A28C8(a1, &v73, a3, a5, 0);
    if (v74)
    {
      llvm::MetadataTracking::untrack();
    }

    v70 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (a1 + 8));
    v10 = *(a1 + 104);
    v72 = v10;
    v82 = v70;
    v83 = v71;
    if (v71)
    {
      llvm::MetadataTracking::track();
      v10 = v72;
    }

    v84 = v10;
    sub_23C497620(a1, &v82);
    if (v83)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*(a4 + 1) & 1) != 0 && (*a3 == *(a1 + 272) || *a3 == *(a1 + 264)))
    {
      v11 = sub_23C505670(a1, a3, 3, 1);
      LOWORD(v80) = 257;
      v12 = *(a1 + 192);
      v13 = llvm::ConstantInt::get();
      v14 = sub_23C5057E8(a1 + 8, a3, v13, v79);
      v93 = 0;
      v94 = &v93;
      v95 = 0x2000000000;
      v96 = *(a1 + 160);
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 0x40000000;
      v79[2] = sub_23C4A2BD0;
      v79[3] = &unk_278BBF088;
      v80 = &v93;
      v81 = a1;
      v15 = sub_23C5063B8(a1, v11, v79);
      v16 = sub_23C505300(a1, v15, *v14);
      a3 = sub_23C5067B4(a1, v16, v14);
      _Block_object_dispose(&v93, 8);
    }

    if (v71)
    {
      llvm::MetadataTracking::untrack();
    }

    v67 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (a1 + 8));
    v17 = *(a1 + 104);
    v69 = v17;
    v82 = v67;
    v83 = v68;
    if (v68)
    {
      llvm::MetadataTracking::track();
      v17 = v69;
    }

    v84 = v17;
    sub_23C497620(a1, &v82);
    if (v83)
    {
      llvm::MetadataTracking::untrack();
    }

    v18 = (*a4 >> 9) & 7;
    if (v18)
    {
      v19 = *a3;
      v20 = sub_23C505670(a1, a3, 3, 1);
      v21 = 152;
      if (v19 == *(a1 + 272))
      {
        v21 = 160;
      }

      v22 = *(a1 + v21);
      v23 = llvm::ConstantFP::get();
      v24 = sub_23C5067B4(a1, v20, v23);
      if (v18 <= 4)
      {
        v25 = v24;
        v26 = *(&off_278BBF0A8 + v18 - 1);
        v27 = *v26;
        v28 = *(a1 + 152);
        v93 = llvm::ConstantFP::get();
        v29 = v26[1];
        v30 = *(a1 + 152);
        v94 = llvm::ConstantFP::get();
        v31 = v26[2];
        v32 = *(a1 + 152);
        v95 = llvm::ConstantFP::get();
        v33 = v26[3];
        v34 = *(a1 + 152);
        v96 = llvm::ConstantFP::get();
        v35 = v26[4];
        v36 = *(a1 + 152);
        v89 = llvm::ConstantFP::get();
        v37 = v26[5];
        v38 = *(a1 + 152);
        v90 = llvm::ConstantFP::get();
        v39 = v26[6];
        v40 = *(a1 + 152);
        v91 = llvm::ConstantFP::get();
        v41 = v26[7];
        v42 = *(a1 + 152);
        v92 = llvm::ConstantFP::get();
        v43 = v26[8];
        v44 = *(a1 + 152);
        v85 = llvm::ConstantFP::get();
        v45 = v26[9];
        v46 = *(a1 + 152);
        v86 = llvm::ConstantFP::get();
        v47 = v26[10];
        v48 = *(a1 + 152);
        v87 = llvm::ConstantFP::get();
        v49 = v26[11];
        v50 = *(a1 + 152);
        v88 = llvm::ConstantFP::get();
        v51 = llvm::ConstantVector::get();
        v52 = llvm::ConstantVector::get();
        v53 = llvm::ConstantVector::get();
        if (v19 == *(a1 + 272))
        {
          v51 = sub_23C504E2C(a1, v51, 0);
          v52 = sub_23C504E2C(a1, v52, 0);
          v53 = sub_23C504E2C(a1, v53, 0);
        }

        v54 = sub_23C50654C(a1, v51, v25);
        v55 = sub_23C50654C(a1, v52, v25);
        v56 = sub_23C50654C(a1, v53, v25);
        LOWORD(v80) = 257;
        v57 = *(a1 + 192);
        v58 = llvm::ConstantInt::get();
        v59 = sub_23C505AA8(a1 + 8, a3, v54, v58, v79);
        LOWORD(v80) = 257;
        v60 = *(a1 + 192);
        v61 = llvm::ConstantInt::get();
        v62 = sub_23C505AA8(a1 + 8, v59, v55, v61, v79);
        LOWORD(v80) = 257;
        v63 = *(a1 + 192);
        v64 = llvm::ConstantInt::get();
        a3 = sub_23C505AA8(a1 + 8, v62, v56, v64, v79);
      }
    }

    if (v68)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v65 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_23C497620(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 6);
  result = sub_23C49769C(&v5, a1 + 8);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t sub_23C49769C(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    sub_23C497720(a2, *a1, *(a1 + 8));
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  v4 = *(a1 + 16);
  v6 = v4;
  if (v4)
  {
    llvm::MetadataTracking::track();
    v4 = v6;
  }

  result = sub_23C49779C(a2, v4);
  if (v6)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *(a2 + 96) = *(a1 + 24);
  return result;
}

uint64_t sub_23C497720(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  if (a2 + 40 != a3)
  {
    v3 = result;
    v4 = a3 - 24;
    if (!a3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = v5;
    if (v5)
    {
      llvm::MetadataTracking::track();
      v5 = v6;
    }

    result = sub_23C49779C(v3, v5);
    if (v6)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  return result;
}

uint64_t sub_23C49779C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *result + 16 * v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 16 * v3;
      while (*v2)
      {
        v2 += 16;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      *(v2 + 8) = a2;
    }

    else
    {
LABEL_6:
      if (v3 >= *(result + 12))
      {
        return sub_23C49786C(result, 0, a2);
      }

      else
      {
        *v4 = 0;
        *(v4 + 8) = a2;
        *(result + 8) = v3 + 1;
      }
    }
  }

  else
  {
    if (v3)
    {
      v6 = 16 * v3;
      v7 = *result;
      while (*v7)
      {
        v7 += 16;
        v6 -= 16;
        if (!v6)
        {
          v7 = v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v7 = *result;
    }

    if (v7 != v4)
    {
      for (i = v7 + 16; i != v4; i += 16)
      {
        if (*i)
        {
          *v7 = *i;
          *(v7 + 8) = *(i + 8);
          v7 += 16;
        }
      }
    }

LABEL_21:
    *(result + 8) = (v7 - v2) >> 4;
  }

  return result;
}

uint64_t sub_23C49786C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C4978E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1448))
  {
    v6 = strlen(*(a1 + 1448));
  }

  v7 = *(a1 + 192);
  v18[0] = v19;
  v18[1] = 0x100000000;
  llvm::FunctionType::get();
  v8 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v10 = v9;
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v20 = 257;
  v11 = sub_23C497A7C(a1 + 8, **(*v10 + 16), v10, 0, 0, v18);
  v20 = 257;
  v12 = sub_23C497C88((a1 + 8), **(*a3 + 16), a3, 0, v18);
  v20 = 257;
  result = sub_23C497D84((a1 + 8), 32, v11, v12, v18);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C497A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  v10 = 0;
  if (v8)
  {
    v11 = 48 * v8;
    v12 = (v9 + 32);
    do
    {
      v10 += (*v12 - *(v12 - 1)) >> 3;
      v12 += 6;
      v11 -= 48;
    }

    while (v11);
  }

  v13 = llvm::User::operator new(0x50);
  v14 = **(a2 + 16);
  if (v8)
  {
    v15 = 0;
    v16 = 48 * v8;
    v17 = (v9 + 32);
    v18 = 48 * v8;
    do
    {
      v15 += (*v17 - *(v17 - 1)) >> 3;
      v17 += 6;
      v18 -= 48;
    }

    while (v18);
    v19 = 0;
    v20 = (v9 + 32);
    do
    {
      v19 += (*v20 - *(v20 - 1)) >> 3;
      v20 += 6;
      v16 -= 48;
    }

    while (v16);
  }

  llvm::Instruction::Instruction();
  *(v13 + 8) = 0;
  llvm::CallInst::init();
  if (*(a1 + 100) == 1)
  {
    llvm::Value::getContext(v13);
    *(v13 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (sub_23C497EEC(v13))
  {
    v21 = *(a1 + 96);
    sub_23C497F98(a1, v13);
  }

  (*(**(a1 + 80) + 16))(*(a1 + 80), v13, a6, *(a1 + 48), *(a1 + 56));
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = *a1;
    v24 = &v23[4 * v22];
    do
    {
      v25 = *v23;
      v26 = *(v23 + 1);
      llvm::Instruction::setMetadata();
      v23 += 4;
    }

    while (v23 != v24);
  }

  return v13;
}

uint64_t sub_23C497C88(unsigned int **a1, llvm::Type *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, a2);
  }

  v10 = llvm::User::operator new(0x40);
  llvm::LoadInst::LoadInst();
  (*(*a1[10] + 16))(a1[10], v10, a5, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = &v12[4 * v11];
    do
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      llvm::Instruction::setMetadata();
      v12 += 4;
    }

    while (v12 != v13);
  }

  return v10;
}

uint64_t sub_23C497D84(unsigned int **a1, uint64_t a2, llvm::Type ***a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1[9] + 40))(a1[9]);
  if (!v8)
  {
    v8 = llvm::User::operator new(0x40);
    v9 = *a3;
    v10 = (*a3)[1] & 0xFE;
    llvm::Type::getInt1Ty(**a3, v11);
    if (v9)
    {
      v12 = v10 == 18;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = *(v9 + 8);
      v14 = *(v9 + 8);
      llvm::VectorType::get();
    }

    llvm::CmpInst::CmpInst();
    (*(*a1[10] + 16))(a1[10], v8, a5, a1[6], a1[7]);
    v15 = *(a1 + 2);
    if (v15)
    {
      v16 = *a1;
      v17 = &v16[4 * v15];
      do
      {
        v18 = *v16;
        v19 = *(v16 + 1);
        llvm::Instruction::setMetadata();
        v16 += 4;
      }

      while (v16 != v17);
    }
  }

  return v8;
}

BOOL sub_23C497EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!a1 || (v2 = v1 - 28, v1 < 0x1C))
  {
    v3 = 0;
    if (!a1 || v1 != 5)
    {
      return v3;
    }

    v2 = *(a1 + 18);
  }

  if (v2 > 0x39)
  {
    return 0;
  }

  if (((1 << v2) & 0x40000001255000) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x380000000000000) == 0)
  {
    return 0;
  }

  do
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    a1 = *a1 + 24;
    if (v4)
    {
      v6 = v5 == 17;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  return v5 < 7;
}

uint64_t sub_23C497F98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    llvm::Instruction::setMetadata();
  }

  llvm::Instruction::setFastMathFlags();
  return a2;
}

void sub_23C497FE0(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

uint64_t sub_23C498004(uint64_t a1, _DWORD *a2)
{
  result = *a2;
  *a2 = result + 1;
  return result;
}

uint64_t *sub_23C49801C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v287 = *MEMORY[0x277D85DE8];
  v271 = *a2;
  v272 = *(a2 + 16);
  if (v272)
  {
    llvm::MetadataTracking::track();
  }

  v273 = *(a2 + 24);
  sub_23C497620(a1, &v271);
  if (v272)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *a3;
  if ((*a3 - 4) >= 2)
  {
    if (v6 == 1)
    {
      v10 = *(a3 + 192);
      v11 = v10 & 0xFFFFFFFE;
      v12 = (v10 & 0xFFFFFFFE) == 2;
    }

    else
    {
      v12 = 0;
      v10 = *(a3 + 192);
      v11 = v10 & 0xFFFFFFFE;
    }

    v13 = *(a1 + 1976) ^ 1;
    v281 = v283;
    v282 = 0x1000000000;
    v14 = *(a3 + 4);
    v15 = v11 == 2 && v6 == 1;
    if (!v15 && (v13 & 1) == 0)
    {
      v16 = **(a3 + 120);
      if ((*(v16 + 8) & 0xFE) == 0x12)
      {
        v17 = *(**(v16 + 16) + 8);
      }

      else
      {
        v17 = *(v16 + 8);
      }

      memset(&v278, 0, sizeof(v278));
      if (v6 == 1)
      {
        if (v10 == 3)
        {
          v110 = *(a1 + 296);
          v111 = *v110;
          __dst.__r_.__value_.__r.__words[0] = v110;
          __dst.__r_.__value_.__l.__size_ = v110;
          __dst.__r_.__value_.__r.__words[2] = v110;
          v285 = v110;
          v88 = llvm::StructType::get();
          v89 = v14 == 2;
          v90 = 1800;
          v91 = 1848;
LABEL_101:
          if (v89)
          {
            v90 = v91;
          }

          MEMORY[0x23EED4E90](&v278, *(a1 + v90 + 8 * (*(a3 + 144) == 2)));
          v92 = (a1 + 184);
          sub_23C49B500(&v281, *(a1 + 184));
          if (v88)
          {
LABEL_106:
            v112 = *(a1 + 160);
            v113 = llvm::PointerType::get();
            sub_23C49B500(&v281, v113);
            v114 = *(a1 + 160);
            v115 = llvm::PointerType::get();
            sub_23C49B500(&v281, v115);
            if (v88)
            {
              goto LABEL_189;
            }

            v116 = v12;
            v117 = *(a3 + 136);
            v270 = *(a3 + 184);
            v118 = *(a3 + 200);
            v119 = *(a1 + 176);
            v120 = llvm::PointerType::get();
            sub_23C49B500(&v281, v120);
            if (v14 > 1)
            {
              if (v14 == 2)
              {
                std::string::append(&v278, ".cube");
                sub_23C49B500(&v281, *(a1 + 272));
                v121 = v118;
                v12 = v116;
LABEL_153:
                if (!v270)
                {
                  goto LABEL_156;
                }

                std::string::append(&v278, ".shadow");
                v125 = *(a1 + 160);
                goto LABEL_155;
              }

              v15 = v14 == 3;
              v121 = v118;
              v12 = v116;
              if (v15)
              {
                if (v17 == 13)
                {
                  v123 = ".3d.i";
                }

                else
                {
                  v123 = ".3d";
                }

                if (v17 == 13)
                {
                  v124 = 296;
                }

                else
                {
                  v124 = 272;
                }

                std::string::append(&v278, v123);
                v125 = *(a1 + v124);
LABEL_155:
                sub_23C49B500(&v281, v125);
              }
            }

            else
            {
              if (v14)
              {
                v15 = v14 == 1;
                v121 = v118;
                v12 = v116;
                if (!v15)
                {
                  goto LABEL_156;
                }

                std::string::append(&v278, ".2d");
                v122 = 216;
                if (v17 == 13)
                {
                  v122 = 240;
                }

                sub_23C49B500(&v281, *(a1 + v122));
                if (v117)
                {
                  std::string::append(&v278, ".array");
                  sub_23C49B500(&v281, *(a1 + 200));
                }

                else if (v121)
                {
                  std::string::append(&v278, ".msaa");
                }

                if (v17 == 13)
                {
LABEL_152:
                  std::string::append(&v278, ".i");
                  goto LABEL_156;
                }

                goto LABEL_153;
              }

              std::string::append(&v278, ".1d");
              v126 = 160;
              if (v17 == 13)
              {
                v126 = 192;
              }

              sub_23C49B500(&v281, *(a1 + v126));
              if (v117)
              {
                std::string::append(&v278, ".array");
                sub_23C49B500(&v281, *(a1 + 200));
              }

              v121 = v118;
              v12 = v116;
              if (v17 == 13)
              {
                goto LABEL_152;
              }
            }

LABEL_156:
            v136 = *(a3 + 144);
            if (v136 > 1)
            {
              if (v136 != 3)
              {
                if (v136 == 2)
                {
                  std::string::append(&v278, ".grad");
                  v138 = *(a3 + 4);
                  if (v138 <= 3)
                  {
                    v139 = dword_23C532670[v138];
                    do
                    {
                      sub_23C49B500(&v281, *(a1 + 216));
                      --v139;
                    }

                    while (v139);
                  }
                }

LABEL_172:
                if (*(a3 + 128))
                {
                  sub_23C49B500(&v281, *(a1 + 184));
                  std::string::append(&v278, ".offset");
                }

                if (v6 == 3)
                {
                  v141 = *(a1 + 144);
                  sub_23C49B500(&v281, *(a1 + 272));
                  std::string::append(&v278, ".4xf");
                }

                else
                {
                  v142 = 272;
                  if (*(a3 + 8) == 1)
                  {
                    v142 = 264;
                    v143 = ".4xh";
                  }

                  else
                  {
                    v143 = ".4xf";
                  }

                  v144 = *(a1 + v142);
                  std::string::append(&v278, v143);
                  v145 = *(a1 + 176);
                  v146 = *v144;
                  __dst.__r_.__value_.__r.__words[0] = v144;
                  __dst.__r_.__value_.__l.__size_ = v145;
                  llvm::StructType::get();
                  sub_23C49B500(&v281, *(a1 + 152));
                }

                if (v117)
                {
                  std::string::append(&v278, ".i64");
                }

                if (v121)
                {
                  std::string::append(&v278, ".i16");
                }

                v147 = *(a3 + 144);
                v148 = ".f32";
                if (v147)
                {
                  if (v147 != 1)
                  {
                    goto LABEL_189;
                  }

                  if (v17 == 13)
                  {
                    v148 = ".i32";
                  }
                }

                std::string::append(&v278, v148);
LABEL_189:
                llvm::FunctionType::get();
                if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
                {
                  v149 = v278.__r_.__value_.__r.__words[0];
                  if (!v278.__r_.__value_.__r.__words[0])
                  {
LABEL_193:
                    v150 = *(a1 + 320);
                    llvm::Module::getOrInsertFunction();
                    v135 = v151;
                    if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v278.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_195;
                  }
                }

                else
                {
                  v149 = &v278;
                }

                strlen(v149);
                goto LABEL_193;
              }

              if (!*(a3 + 200))
              {
                goto LABEL_172;
              }

              v140 = *(a1 + 184);
            }

            else
            {
              if (v136)
              {
                if (v136 == 1)
                {
                  v137 = 160;
                  if (v17 == 13)
                  {
                    v137 = 192;
                  }

                  sub_23C49B500(&v281, *(a1 + v137));
                  std::string::append(&v278, ".lod");
                }

                goto LABEL_172;
              }

              v140 = *(a1 + 160);
            }

            sub_23C49B500(&v281, v140);
            goto LABEL_172;
          }

          goto LABEL_104;
        }

        if (v10 == 2)
        {
          v86 = *(a1 + 296);
          v87 = *v86;
          __dst.__r_.__value_.__r.__words[0] = v86;
          __dst.__r_.__value_.__l.__size_ = v86;
          v88 = llvm::StructType::get();
          v89 = v14 == 2;
          v90 = 1784;
          v91 = 1832;
          goto LABEL_101;
        }
      }

      else if (v6 == 3)
      {
        MEMORY[0x23EED4E90](&v278, *(a1 + 1744));
LABEL_105:
        v88 = 0;
        goto LABEL_106;
      }

      MEMORY[0x23EED4E90](&v278, *(a1 + 1728));
      v92 = (a1 + 184);
      sub_23C49B500(&v281, *(a1 + 184));
LABEL_104:
      sub_23C49B500(&v281, *v92);
      goto LABEL_105;
    }

    v18 = *(a1 + 296);
    v19 = llvm::PointerType::get();
    sub_23C49B500(&v281, v19);
    v20 = *(a1 + 296);
    v21 = llvm::PointerType::get();
    sub_23C49B500(&v281, v21);
    Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + 336), 2);
    sub_23C49B500(&v281, Int8PtrTy);
    sub_23C49B500(&v281, *(a1 + 168));
    if (v14 > 3)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a1 + qword_23C5326A8[v14]);
    }

    sub_23C49B500(&v281, v23);
    if (*(a3 + 144) == 2)
    {
      v84 = *(a3 + 4);
      if (v84 > 3)
      {
        v85 = 0;
      }

      else
      {
        v85 = dword_23C532670[v84];
      }

      v93 = v85;
      v94 = *(a1 + 216);
      v95 = v282;
      if (v282 + v85 > HIDWORD(v282))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v85)
      {
        v96 = 0;
        v97 = v281 + 8 * v282;
        v98 = vdupq_n_s64(v93 - 1);
        do
        {
          v99 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(vdupq_n_s64(v96), xmmword_23C5324B0)));
          if (v99.i8[0])
          {
            *&v97[8 * v96] = v94;
          }

          if (v99.i8[4])
          {
            *&v97[8 * v96 + 8] = v94;
          }

          v96 += 2;
        }

        while (((v93 + 1) & 0xFFFFFFFE) != v96);
      }

      LODWORD(v282) = v95 + v93;
    }

    else
    {
      sub_23C49B500(&v281, *(a1 + 168));
      sub_23C49B500(&v281, *(a1 + 160));
    }

    sub_23C49B500(&v281, *(a1 + 168));
    sub_23C49B500(&v281, *(a1 + 168));
    sub_23C49B500(&v281, *(a1 + 168));
    sub_23C49B500(&v281, *(a1 + 192));
    v100 = *a3;
    if (*a3 > 1)
    {
      if (v100 == 3)
      {
        v109 = *(a1 + 144);
        sub_23C49B500(&v281, *(a1 + 272));
        v101 = 0;
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v107 = (a1 + 1896);
          }

          else
          {
            if (v14 != 3)
            {
              goto LABEL_146;
            }

            v107 = (a1 + 1904);
          }
        }

        else if (v14)
        {
          if (v14 != 1)
          {
            goto LABEL_146;
          }

          v107 = (a1 + 1888);
        }

        else
        {
          v107 = (a1 + 1880);
        }

        goto LABEL_145;
      }

      v101 = 0;
      if (v100 != 2)
      {
        goto LABEL_146;
      }
    }

    else if (v100)
    {
      v101 = 0;
      if (v100 != 1)
      {
        goto LABEL_146;
      }

      v102 = *(a3 + 192);
      switch(v102)
      {
        case 3:
          v130 = *(a1 + 296);
          v131 = *v130;
          __dst.__r_.__value_.__r.__words[0] = v130;
          __dst.__r_.__value_.__l.__size_ = v130;
          __dst.__r_.__value_.__r.__words[2] = v130;
          v285 = v130;
          llvm::StructType::get();
          v104 = v14 == 2;
          v132 = a1 + 8 * (*(a3 + 144) == 2);
          v106 = (v132 + 1800);
          v107 = (v132 + 1848);
          break;
        case 2:
          v127 = *(a1 + 296);
          v128 = *v127;
          __dst.__r_.__value_.__r.__words[0] = v127;
          __dst.__r_.__value_.__l.__size_ = v127;
          llvm::StructType::get();
          v104 = v14 == 2;
          v129 = a1 + 8 * (*(a3 + 144) == 2);
          v106 = (v129 + 1784);
          v107 = (v129 + 1832);
          break;
        case 1:
          v103 = *(a1 + 272);
          v104 = v14 == 2;
          v105 = a1 + 8 * (*(a3 + 144) == 2);
          v106 = (v105 + 1768);
          v107 = (v105 + 1816);
          break;
        default:
          v101 = 0;
LABEL_146:
          llvm::FunctionType::get();
          if (v101)
          {
            strlen(v101);
          }

          v133 = *(a1 + 320);
          llvm::Module::getOrInsertFunction();
          v135 = v134;
LABEL_195:
          if (v281 != v283)
          {
            free(v281);
          }

          if ((v12 | v13))
          {
            v281 = v283;
            v282 = 0x1000000000;
            v152 = *(a3 + 120);
            if ((*(*v152 + 8) & 0xFE) == 0x12)
            {
              v153 = *(**(*v152 + 16) + 8);
            }

            else
            {
              v153 = *(*v152 + 8);
            }

            v155 = *(a3 + 136);
            v156 = *(a3 + 4);
            v157 = 32;
            if (*a3 == 3)
            {
              v157 = 40;
            }

            sub_23C49B500(&v281, *(a3 + v157));
            sub_23C49B500(&v281, *(a3 + 72));
            if (v155)
            {
              v158 = sub_23C49A1F8(a1, a3);
            }

            else
            {
              v205 = llvm::Type::getInt8PtrTy(*(a1 + 336), 2);
              v158 = llvm::ConstantPointerNull::get(v205, v206);
            }

            sub_23C49B500(&v281, v158);
            v207 = *(a1 + 168);
            v208 = llvm::ConstantInt::get();
            sub_23C49B500(&v281, v208);
            if (*(a3 + 128) && v153 == 13 && (*(a1 + 1633) & 1) != 0)
            {
              v209 = 0;
            }

            else
            {
              v209 = sub_23C504E2C(a1, v152, 1);
            }

            sub_23C49B500(&v281, v209);
            v210 = *(a3 + 144);
            if (v210 == 3)
            {
              v228 = *(a1 + 168);
              v229 = llvm::ConstantInt::get();
              sub_23C49B500(&v281, v229);
              v230 = *(a1 + 160);
              v231 = llvm::ConstantFP::get();
            }

            else
            {
              if (v210 == 2)
              {
                v211 = *(a3 + 4);
                if (v211 <= 3)
                {
                  v212 = 0;
                  v213 = dword_23C532670[v211];
                  do
                  {
                    *&v278.__r_.__value_.__l.__data_ = 0uLL;
                    v214 = *(a1 + 192);
                    v278.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                    v215 = *(a1 + 192);
                    v278.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                    v216 = llvm::ConstantVector::get();
                    v217 = *(a3 + 160);
                    v218 = *(a3 + 168);
                    v286 = 257;
                    v219 = sub_23C49A3AC(a1 + 8, v217, v218, v216, &__dst);
                    sub_23C49B500(&v281, v219);
                    ++v212;
                  }

                  while (v213 != v212);
                }

LABEL_277:
                v237 = *(a3 + 200);
                v238 = *(a1 + 168);
                v239 = llvm::ConstantInt::get();
                sub_23C49B500(&v281, v239);
                v240 = *(a3 + 128);
                v241 = *(a1 + 168);
                v242 = llvm::ConstantInt::get();
                sub_23C49B500(&v281, v242);
                v243 = *(a3 + 8);
                v244 = *(a1 + 168);
                v245 = llvm::ConstantInt::get();
                sub_23C49B500(&v281, v245);
                v246 = *(a3 + 128);
                if (v246)
                {
                  if (v153 != 13 || *(a1 + 1633) != 1)
                  {
                    v250 = sub_23C49A528(a1, a3);
                    goto LABEL_288;
                  }

                  if ((v156 & 0xFFFFFFFE) == 2)
                  {
                    v246 = sub_23C50593C(a1, *(a3 + 128), 4);
                  }

                  v286 = 257;
                  v247 = sub_23C49A474(a1 + 8, v152, v246, &__dst);
                  v248 = sub_23C504E2C(a1, v247, 1);
                  *(v281 + 4) = v248;
                  v249 = *(a1 + 192);
                }

                else
                {
                  v251 = *(a3 + 200);
                  if (v251)
                  {
                    v252 = sub_23C504FD4(a1, v251, *v251, 0, 0);
                    v286 = 257;
                    v253 = *v252;
                    v254 = llvm::ConstantInt::get();
                    v250 = sub_23C49A668(a1 + 8, v252, v254, &__dst);
                    goto LABEL_288;
                  }

                  v255 = *(a1 + 192);
                }

                v250 = llvm::ConstantInt::get();
LABEL_288:
                sub_23C49B500(&v281, v250);
                if (*a3 == 3)
                {
                  v256 = sub_23C499BF0(a1, a3);
                  sub_23C49B500(&v281, v256);
                }

                v286 = 257;
                v68 = sub_23C497A7C(a1 + 8, *(v135 + 24), v135, v281, v282, &__dst);
                if (*a3 != 3 && *(a3 + 17) == 1)
                {
                  v68 = (**a1)(a1, v68, *(a3 + 8));
                }

                if (*(a3 + 16) == 1 && (*(*v68 + 8) & 0xFE) == 0x12)
                {
                  v286 = 257;
                  v257 = *(a1 + 192);
                  v258 = llvm::ConstantInt::get();
                  v68 = sub_23C5057E8(a1 + 8, v68, v258, &__dst);
                }

                if (*(a3 + 19) == 1)
                {
                  v259 = *(a1 + 176);
                  v260 = **v68;
                  __dst.__r_.__value_.__r.__words[0] = *v68;
                  __dst.__r_.__value_.__l.__size_ = v259;
                  llvm::StructType::get();
                  v261 = llvm::UndefValue::get();
                  LODWORD(v278.__r_.__value_.__l.__data_) = 0;
                  v286 = 257;
                  v262 = sub_23C49A744(a1 + 8, v261, v68, &v278, 1, &__dst);
                  v263 = *(a1 + 176);
                  v264 = llvm::ConstantInt::get();
                  LODWORD(v278.__r_.__value_.__l.__data_) = 1;
                  v286 = 257;
                  v68 = sub_23C49A744(a1 + 8, v262, v264, &v278, 1, &__dst);
                }

                v81 = v281;
                if (v281 != v283)
                {
                  goto LABEL_55;
                }

                goto LABEL_56;
              }

              if (*(a3 + 4) == 1 && v155 && *a3 == 1)
              {
                v232 = *(a1 + 160);
                v233 = llvm::ConstantFP::get();
              }

              else
              {
                v233 = sub_23C504E2C(a1, *(a3 + 152), 1);
              }

              v231 = v233;
              v234 = *(a3 + 144);
              v235 = *(a1 + 168);
              v236 = llvm::ConstantInt::get();
              sub_23C49B500(&v281, v236);
            }

            sub_23C49B500(&v281, v231);
            goto LABEL_277;
          }

          if (*a3 == 3)
          {
            v154 = sub_23C499BF0(a1, a3);
          }

          else
          {
            v154 = 0;
          }

          v159 = *(a3 + 120);
          if ((*(*v159 + 8) & 0xFE) == 0x12)
          {
            v160 = *(**(*v159 + 16) + 8);
          }

          else
          {
            v160 = *(*v159 + 8);
          }

          v161 = v135;
          v162 = *(a3 + 136);
          v163 = *(a3 + 184);
          v269 = v154;
          v281 = v283;
          v282 = 0x1000000000;
          v267 = *(a3 + 168);
          v268 = *(a3 + 160);
          v164 = *(a3 + 4);
          if (*a3 == 3)
          {
            v165 = 40;
          }

          else
          {
            v166 = *(a1 + 184);
            v167 = llvm::ConstantInt::get();
            sub_23C49B500(&v281, v167);
            v168 = *(a1 + 184);
            v169 = llvm::ConstantInt::get();
            sub_23C49B500(&v281, v169);
            v165 = 32;
          }

          v170 = *(a1 + 160);
          v171 = llvm::PointerType::get();
          v172 = *(a3 + v165);
          v286 = 257;
          v173 = sub_23C49ACF8(a1 + 8, 49, v172, v171, &__dst);
          sub_23C49B500(&v281, v173);
          v174 = *(a3 + 72);
          v286 = 257;
          v175 = sub_23C49ACF8(a1 + 8, 49, v174, v171, &__dst);
          sub_23C49B500(&v281, v175);
          v176 = *(a1 + 200);
          v177 = llvm::ConstantInt::get();
          v178 = *(a1 + 176);
          v179 = llvm::PointerType::get();
          v286 = 257;
          v180 = sub_23C49ACF8(a1 + 8, 48, v177, v179, &__dst);
          sub_23C49B500(&v281, v180);
          if (v164 == 2)
          {
            v159 = sub_23C50593C(a1, v159, 4);
          }

          if (v160 == 13)
          {
            v181 = *v159;
            if ((*(*v159 + 8) & 0xFE) == 0x12)
            {
              v181 = **(v181 + 16);
            }

            v159 = sub_23C504FD4(a1, v159, v181, 0, 0);
            v182 = *(a3 + 128);
            if (v182 && *(a1 + 1633) == 1)
            {
              if ((*(a3 + 4) & 0xFFFFFFFE) == 2)
              {
                v182 = sub_23C50593C(a1, *(a3 + 128), 4);
              }

              v286 = 257;
              v159 = sub_23C49A474(a1 + 8, v159, v182, &__dst);
            }
          }

          sub_23C49B500(&v281, v159);
          if (v162)
          {
            v183 = sub_23C49A1F8(a1, a3);
            v184 = *(a1 + 200);
            v286 = 257;
            v185 = sub_23C49ACF8(a1 + 8, 47, v183, v184, &__dst);
            sub_23C49B500(&v281, v185);
          }

          if (v163)
          {
            sub_23C49B500(&v281, *(a3 + 184));
          }

          v186 = *(a3 + 200);
          if (v186)
          {
            v187 = *(a1 + 184);
            v286 = 257;
            v188 = sub_23C49ACF8(a1 + 8, 38, v186, v187, &__dst);
          }

          else
          {
            v220 = *(a3 + 144);
            if (v220)
            {
              if (v220 != 1)
              {
                if (v220 == 2)
                {
                  v221 = *(a3 + 4);
                  if (v221 <= 3)
                  {
                    v222 = 0;
                    v223 = dword_23C532670[v221];
                    do
                    {
                      *&v278.__r_.__value_.__l.__data_ = 0uLL;
                      v224 = *(a1 + 192);
                      v278.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                      v225 = *(a1 + 192);
                      v278.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                      v226 = llvm::ConstantVector::get();
                      v286 = 257;
                      v227 = sub_23C49A3AC(a1 + 8, v268, v267, v226, &__dst);
                      sub_23C49B500(&v281, v227);
                      ++v222;
                    }

                    while (v223 != v222);
                  }
                }

LABEL_231:
                if (*(a3 + 128))
                {
                  if (v160 == 13 && *(a1 + 1633) == 1)
                  {
                    v189 = *(a1 + 184);
                    v190 = llvm::ConstantInt::get();
                  }

                  else
                  {
                    v191 = sub_23C49A528(a1, a3);
                    v192 = *(a1 + 184);
                    v286 = 257;
                    v190 = sub_23C49ACF8(a1 + 8, 38, v191, v192, &__dst);
                  }

                  sub_23C49B500(&v281, v190);
                }

                v193 = v269;
                if (*a3 != 3)
                {
                  v194 = *(a1 + 152);
                  v193 = llvm::ConstantFP::get();
                }

                sub_23C49B500(&v281, v193);
                v286 = 257;
                v68 = sub_23C497A7C(a1 + 8, *(v161 + 24), v161, v281, v282, &__dst);
                if (*a3 != 3)
                {
                  LODWORD(v278.__r_.__value_.__l.__data_) = 0;
                  v286 = 257;
                  v195 = sub_23C49B32C(a1 + 8, v68, &v278, 1, &__dst);
                  if (*(a3 + 17) == 1)
                  {
                    v195 = (**a1)(a1, v195, *(a3 + 8));
                  }

                  if (*(a3 + 16) == 1 && (*(*v195 + 8) & 0xFE) == 0x12)
                  {
                    v286 = 257;
                    v196 = *(a1 + 192);
                    v197 = llvm::ConstantInt::get();
                    v195 = sub_23C5057E8(a1 + 8, v195, v197, &__dst);
                  }

                  if (*(a3 + 19) == 1)
                  {
                    v198 = *(a1 + 176);
                    v199 = **v195;
                    __dst.__r_.__value_.__r.__words[0] = *v195;
                    __dst.__r_.__value_.__l.__size_ = v198;
                    llvm::StructType::get();
                    v200 = llvm::UndefValue::get();
                    LODWORD(v278.__r_.__value_.__l.__data_) = 0;
                    v286 = 257;
                    v201 = sub_23C49A744(a1 + 8, v200, v195, &v278, 1, &__dst);
                    v277 = 1;
                    v286 = 257;
                    v202 = sub_23C49B32C(a1 + 8, v68, &v277, 1, &__dst);
                    v203 = *(a1 + 176);
                    v280 = 257;
                    v204 = sub_23C49ACF8(a1 + 8, 38, v202, v203, &v278);
                    v276 = 1;
                    v275 = 257;
                    v68 = sub_23C49A744(a1 + 8, v201, v204, &v276, 1, v274);
                  }

                  else
                  {
                    v68 = v195;
                  }
                }

                v81 = v281;
                if (v281 != v283)
                {
                  goto LABEL_55;
                }

                goto LABEL_56;
              }

              v265 = *(a3 + 152);
              if (v160 == 13)
              {
                v266 = *(a1 + 192);
                if (*(*v265 + 8) == 13)
                {
                  v286 = 257;
                  v188 = sub_23C49B1E4(a1 + 8, v265, v266, 0, &__dst);
                }

                else
                {
                  v286 = 257;
                  v188 = sub_23C49B2C8(a1 + 8, v265, v266, &__dst);
                }

                goto LABEL_230;
              }
            }

            else
            {
              v265 = *(a3 + 152);
            }

            v188 = sub_23C505300(a1, v265, *(a1 + 160));
          }

LABEL_230:
          sub_23C49B500(&v281, v188);
          goto LABEL_231;
      }

      if (!v104)
      {
        v107 = v106;
      }

      goto LABEL_145;
    }

    v101 = 0;
    v108 = *(a1 + 272);
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v107 = (a1 + 8 * (*(a3 + 144) == 2) + 1816);
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_146;
        }

        v107 = (a1 + 8 * (*(a3 + 144) == 2) + 1864);
      }
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_146;
      }

      v107 = (a1 + 8 * (*(a3 + 144) == 2) + 1768);
    }

    else
    {
      v107 = (a1 + 8 * (*(a3 + 144) == 2) + 1752);
    }

LABEL_145:
    v101 = *v107;
    goto LABEL_146;
  }

  v7 = *(a1 + 1736);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v281 = v283;
  v282 = 0x800000000;
  sub_23C49B500(&v281, *(a1 + 184));
  sub_23C49B500(&v281, *(a1 + 184));
  v24 = *(a1 + 160);
  v25 = llvm::PointerType::get();
  sub_23C49B500(&v281, v25);
  v26 = *(a1 + 160);
  v27 = llvm::PointerType::get();
  sub_23C49B500(&v281, v27);
  v28 = *(a1 + 176);
  v29 = llvm::PointerType::get();
  sub_23C49B500(&v281, v29);
  v30 = *(a3 + 4);
  if (v30 == 1)
  {
    v31 = ".2d";
    v32 = 216;
  }

  else
  {
    if (v30 != 2)
    {
      goto LABEL_29;
    }

    v31 = ".cube";
    v32 = 272;
  }

  std::string::append(&__dst, v31);
  sub_23C49B500(&v281, *(a1 + v32));
LABEL_29:
  if (*(a3 + 136))
  {
    sub_23C49B500(&v281, *(a1 + 200));
    std::string::append(&__dst, ".array");
  }

  std::string::append(&__dst, ".gather");
  if (*(a3 + 128))
  {
    sub_23C49B500(&v281, *(a1 + 184));
    std::string::append(&__dst, ".offset");
  }

  sub_23C49B500(&v281, *(a1 + 184));
  sub_23C49B500(&v281, *(a1 + 152));
  std::string::append(&__dst, ".4xf");
  if (*(a3 + 136))
  {
    std::string::append(&__dst, ".i64");
  }

  v33 = *(a1 + 176);
  v34 = **(a1 + 272);
  v278.__r_.__value_.__r.__words[0] = *(a1 + 272);
  v278.__r_.__value_.__l.__size_ = v33;
  llvm::StructType::get();
  llvm::FunctionType::get();
  v35 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v37 = v36;
  if (v281 != v283)
  {
    free(v281);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v281 = v283;
  v282 = 0x800000000;
  v38 = *(a1 + 184);
  v39 = llvm::ConstantInt::get();
  sub_23C49B500(&v281, v39);
  v40 = *(a1 + 184);
  v41 = llvm::ConstantInt::get();
  sub_23C49B500(&v281, v41);
  v42 = *(a1 + 160);
  v43 = llvm::PointerType::get();
  v44 = *(a3 + 32);
  v286 = 257;
  v45 = sub_23C49ACF8(a1 + 8, 49, v44, v43, &__dst);
  sub_23C49B500(&v281, v45);
  v46 = *(a3 + 72);
  v286 = 257;
  v47 = sub_23C49ACF8(a1 + 8, 49, v46, v43, &__dst);
  sub_23C49B500(&v281, v47);
  v48 = *(a1 + 200);
  v49 = llvm::ConstantInt::get();
  v50 = *(a1 + 176);
  v51 = llvm::PointerType::get();
  v286 = 257;
  v52 = sub_23C49ACF8(a1 + 8, 48, v49, v51, &__dst);
  sub_23C49B500(&v281, v52);
  v53 = *(a3 + 4);
  if (v53 == 2)
  {
    v55 = sub_23C504E2C(a1, *(a3 + 120), 1);
    v54 = sub_23C50593C(a1, v55, 4);
  }

  else
  {
    if (v53 != 1)
    {
      goto LABEL_44;
    }

    v54 = sub_23C504E2C(a1, *(a3 + 120), 1);
  }

  sub_23C49B500(&v281, v54);
LABEL_44:
  if (*(a3 + 136))
  {
    v56 = sub_23C49A1F8(a1, a3);
    v57 = *(a1 + 200);
    v286 = 257;
    v58 = sub_23C49ACF8(a1 + 8, 47, v56, v57, &__dst);
    sub_23C49B500(&v281, v58);
  }

  if (*(a3 + 128))
  {
    v59 = sub_23C49A528(a1, a3);
    v60 = *(a1 + 184);
    v286 = 257;
    v61 = sub_23C49ACF8(a1 + 8, 38, v59, v60, &__dst);
    sub_23C49B500(&v281, v61);
  }

  v62 = *(a3 + 224);
  v63 = *(a1 + 184);
  v64 = llvm::ConstantInt::get();
  sub_23C49B500(&v281, v64);
  v65 = *(a1 + 152);
  v66 = llvm::ConstantFP::get();
  sub_23C49B500(&v281, v66);
  v286 = 257;
  v67 = sub_23C497A7C(a1 + 8, *(v37 + 24), v37, v281, v282, &__dst);
  LODWORD(v278.__r_.__value_.__l.__data_) = 0;
  v286 = 257;
  v68 = sub_23C49B32C(a1 + 8, v67, &v278, 1, &__dst);
  if (*(a3 + 225) == 1)
  {
    v69 = *(a1 + 192);
    v278.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    v70 = *(a1 + 192);
    v278.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
    v71 = *(a1 + 192);
    v278.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
    v72 = *(a1 + 192);
    v279 = llvm::ConstantInt::get();
    v73 = llvm::ConstantVector::get();
    v286 = 257;
    v68 = sub_23C49A3AC(a1 + 8, v68, v68, v73, &__dst);
  }

  if (*(a3 + 17) == 1)
  {
    v68 = (**a1)(a1, v68, *(a3 + 8));
  }

  if (*(a3 + 19) == 1)
  {
    v74 = *(a1 + 176);
    v75 = **v68;
    __dst.__r_.__value_.__r.__words[0] = *v68;
    __dst.__r_.__value_.__l.__size_ = v74;
    llvm::StructType::get();
    v76 = llvm::UndefValue::get();
    LODWORD(v278.__r_.__value_.__l.__data_) = 0;
    v286 = 257;
    v77 = sub_23C49A744(a1 + 8, v76, v68, &v278, 1, &__dst);
    v277 = 1;
    v286 = 257;
    v78 = sub_23C49B32C(a1 + 8, v67, &v277, 1, &__dst);
    v79 = *(a1 + 176);
    v280 = 257;
    v80 = sub_23C49ACF8(a1 + 8, 38, v78, v79, &v278);
    v276 = 1;
    v275 = 257;
    v68 = sub_23C49A744(a1 + 8, v77, v80, &v276, 1, v274);
  }

  v81 = v281;
  if (v281 != v283)
  {
LABEL_55:
    free(v81);
  }

LABEL_56:
  v82 = *MEMORY[0x277D85DE8];
  return v68;
}

uint64_t sub_23C499BF0(uint64_t a1, uint64_t a2)
{
  v76[3] = *MEMORY[0x277D85DE8];
  v75[0] = v76;
  v75[1] = 0x300000000;
  v4 = *(a2 + 64);
  v74 = 257;
  v5 = sub_23C497C88((a1 + 8), **(*v4 + 16), v4, 0, &v71);
  sub_23C49B500(v75, *(a1 + 160));
  v6 = *(a1 + 184);
  v74 = 257;
  v63 = sub_23C49ACF8(a1 + 8, 38, v5, v6, &v71);
  sub_23C49B500(v75, *(a1 + 184));
  v7 = *(a1 + 1144);
  v8 = *(a1 + 192);
  llvm::FunctionType::get();
  if (v7)
  {
    strlen(v7);
  }

  v9 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v11 = v10;
  v12 = sub_23C504E2C(a1, *(a2 + 208), (*(a2 + 8) - 3) < 2);
  v14 = (*(a1 + 1696) & 0xFFFFFFFE) == 2 && *(a2 + 8) < 2u;
  if (v14)
  {
    v74 = 257;
    v15 = *v5;
    v16 = llvm::ConstantInt::get();
    v17 = sub_23C49B560(a1 + 8, v5, v16, &v71);
    v18 = *(a1 + 192);
    v19 = llvm::ConstantInt::get();
    v70 = 257;
    v20 = sub_23C49A8E0(a1 + 8, v17, v19, v69);
    v21 = *(a1 + 192);
    v22 = llvm::ConstantInt::get();
    v68 = 257;
    sub_23C497D84((a1 + 8), 33, v20, v22, v67);
  }

  v23 = *(a1 + 272);
  v24 = llvm::UndefValue::get();
  v25 = 0;
  v26 = !v14;
  do
  {
    v71 = v73;
    v72 = 0x300000000;
    v70 = 257;
    v27 = *(a1 + 192);
    v28 = llvm::ConstantInt::get();
    Select = sub_23C5057E8(a1 + 8, v12, v28, v69);
    if (v25 == 3)
    {
      v30 = 1;
    }

    else
    {
      v30 = v26;
    }

    if ((v30 & 1) == 0)
    {
      v64 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (a1 + 8));
      v66 = *(a1 + 104);
      (*(*a1 + 136))(a1, &v64, Select, 0, *(a1 + 160));
      if (v65)
      {
        llvm::MetadataTracking::untrack();
      }

      v70 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
    }

    sub_23C49B500(&v71, Select);
    sub_23C49B500(&v71, v63);
    v70 = 257;
    v31 = sub_23C497A7C(a1 + 8, *(v11 + 24), v11, v71, v72, v69);
    v32 = *(a1 + 160);
    v70 = 257;
    v33 = sub_23C49ACF8(a1 + 8, 49, v31, v32, v69);
    v70 = 257;
    v34 = *(a1 + 192);
    v35 = llvm::ConstantInt::get();
    v24 = sub_23C505AA8(a1 + 8, v24, v33, v35, v69);
    if (v71 != v73)
    {
      free(v71);
    }

    ++v25;
  }

  while (v25 != 4);
  v36 = **(a2 + 208);
  if ((*(v36 + 8) & 0xFE) == 0x12)
  {
    v36 = **(v36 + 16);
  }

  if (v36 == *(a1 + 160) || v36 == *(a1 + 192))
  {
    v74 = 257;
    v37 = *v5;
    v38 = llvm::ConstantInt::get();
    v39 = sub_23C49B560(a1 + 8, v5, v38, &v71);
    v40 = *(a1 + 192);
    v41 = llvm::ConstantInt::get();
    v70 = 257;
    v42 = sub_23C49A8E0(a1 + 8, v39, v41, v69);
    v43 = *(a1 + 192);
    v44 = llvm::ConstantInt::get();
    v68 = 257;
    sub_23C497D84((a1 + 8), 33, v42, v44, v67);
    v45 = *(a2 + 208);
    v46 = *(a1 + 272);
    v74 = 257;
    sub_23C49ACF8(a1 + 8, 49, v45, v46, &v71);
    v70 = 257;
    v24 = llvm::IRBuilderBase::CreateSelect();
  }

  v74 = 257;
  v47 = *v5;
  v48 = llvm::ConstantInt::get();
  v49 = sub_23C49B560(a1 + 8, v5, v48, &v71);
  v50 = *(a1 + 192);
  v51 = llvm::ConstantInt::get();
  v70 = 257;
  v52 = sub_23C49A8E0(a1 + 8, v49, v51, v69);
  v53 = *(a1 + 192);
  v54 = llvm::ConstantInt::get();
  v68 = 257;
  sub_23C497D84((a1 + 8), 33, v52, v54, v67);
  v55 = *(a1 + 192);
  v69[0] = llvm::ConstantInt::get();
  v56 = *(a1 + 192);
  v69[1] = llvm::ConstantInt::get();
  v57 = *(a1 + 192);
  v69[2] = llvm::ConstantInt::get();
  v58 = *(a1 + 192);
  v69[3] = llvm::ConstantInt::get();
  v59 = llvm::ConstantVector::get();
  v74 = 257;
  sub_23C49A3AC(a1 + 8, v24, v24, v59, &v71);
  v74 = 257;
  v60 = llvm::IRBuilderBase::CreateSelect();
  if (v75[0] != v76)
  {
    free(v75[0]);
  }

  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t sub_23C49A1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C49ABAC(a1, *(a2 + 56));
  v5 = sub_23C49ABAC(a1, *(a2 + 56));
  v6 = sub_23C49ABAC(a1, *(a2 + 56));
  v7 = sub_23C504FD4(a1, *(a2 + 136), **(a2 + 136), 0, 0);
  v23 = 257;
  v8 = sub_23C497C88((a1 + 8), **(*v6 + 16), v6, 0, v22);
  v23 = 257;
  sub_23C497D84((a1 + 8), 37, v7, v8, v22);
  v23 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v23 = 257;
  v10 = sub_23C497C88((a1 + 8), **(*v5 + 16), v5, 0, v22);
  v11 = *(a1 + 200);
  v23 = 257;
  v12 = sub_23C49ACF8(a1 + 8, 39, v10, v11, v22);
  v13 = *(a1 + 200);
  v21 = 257;
  v14 = sub_23C49ACF8(a1 + 8, 39, Select, v13, v20);
  v19 = 257;
  v15 = sub_23C49ADDC(a1 + 8, v12, v14, v18);
  v23 = 257;
  v16 = sub_23C497C88((a1 + 8), **(*v4 + 16), v4, 0, v22);
  v23 = 257;
  return sub_23C49AEB8(a1, v16, v15, v22);
}

uint64_t sub_23C49A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  v9 = sub_23C49AA38(a1, a2, a3, v12, 0, a5);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23C49A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49A528(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  v5 = llvm::ConstantInt::get();
  v6 = *(a2 + 4);
  if (v6 <= 3)
  {
    v7 = 0;
    v8 = dword_23C532670[v6];
    do
    {
      v9 = *(a2 + 128);
      v23 = 257;
      v10 = *(a1 + 192);
      v11 = llvm::ConstantInt::get();
      v12 = sub_23C5057E8(a1 + 8, v9, v11, v22);
      v13 = dword_23C532690[v7];
      v23 = 257;
      v14 = *v12;
      v15 = llvm::ConstantInt::get();
      v16 = sub_23C49A668(a1 + 8, v12, v15, v22);
      v17 = dword_23C53269C[v7];
      v23 = 257;
      v18 = *v16;
      v19 = llvm::ConstantInt::get();
      v20 = sub_23C49A8E0(a1 + 8, v16, v19, v22);
      v23 = 257;
      v5 = sub_23C49A98C(a1 + 8, v5, v20, v22);
      ++v7;
    }

    while (v8 != v7);
  }

  return v5;
}

uint64_t sub_23C49A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 152))(*(a1 + 72));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49A744(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v9 = (*(**(a1 + 72) + 352))(*(a1 + 72), a2, a3, a4, a5);
    if (v9)
    {
      v10 = *(v9 + 16) >= 0x1Cu;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      sub_23C49B15C(a1, v9, a6);
    }
  }

  else
  {
    v9 = llvm::User::operator new(0x60);
    v11 = *a2;
    v12 = llvm::Instruction::Instruction();
    *(v12 + 64) = v12 + 80;
    *(v12 + 72) = 0x400000000;
    llvm::InsertValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v9, a6, *(a1 + 48), *(a1 + 56));
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = *a1;
      v15 = &v14[4 * v13];
      do
      {
        v16 = *v14;
        v17 = *(v14 + 1);
        llvm::Instruction::setMetadata();
        v14 += 4;
      }

      while (v14 != v15);
    }
  }

  return v9;
}

uint64_t sub_23C49A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 24))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
    if (v12)
    {
      v13 = *(v12 + 16) >= 0x1Cu;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      sub_23C49B15C(a1, v12, a6);
    }
  }

  else
  {
    v12 = llvm::User::operator new(0x68);
    v21 = 257;
    MEMORY[0x23EED4270](v12, a2, a3, a4, a5, v20, 0);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v12, a6, *(a1 + 48), *(a1 + 56));
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = *a1;
      v16 = &v15[4 * v14];
      do
      {
        v17 = *v15;
        v18 = *(v15 + 1);
        llvm::Instruction::setMetadata();
        v15 += 4;
      }

      while (v15 != v16);
    }
  }

  return v12;
}

llvm::GetElementPtrInst *sub_23C49ABAC(uint64_t a1, llvm::LLVMContext *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v4 = **(v4 + 16);
  }

  v5 = **(v4 + 16);
  v11 = 257;
  llvm::Type::getInt32Ty(*(a1 + 72), a2);
  v13[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(*(a1 + 72), v6);
  v13[1] = llvm::ConstantInt::get();
  v7 = (*(**(a1 + 80) + 48))(*(a1 + 80), v5, a2, v13, 2, 1);
  if (!v7)
  {
    v12 = 257;
    v7 = sub_23C49AFDC(v5, a2, v13, 2);
    llvm::GetElementPtrInst::setIsInBounds(v7);
    sub_23C49B15C((a1 + 8), v7, v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_23C49ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (*a3 != a4)
  {
    if (*(a3 + 16) > 0x14u)
    {
      v5 = llvm::CastInst::Create();
      sub_23C49B15C(a1, v5, a5);
    }

    else
    {
      v5 = (*(**(a1 + 72) + 224))(*(a1 + 72), a2, a3, a4);
      if (v5)
      {
        v8 = *(v5 + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        sub_23C49B15C(a1, v5, a5);
      }
    }
  }

  return v5;
}

uint64_t sub_23C49ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 88))(*(a1 + 72));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49AEB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v4 = **(v4 + 16);
  }

  return sub_23C49AEF0(a1 + 8, **(v4 + 16), a2, a3, a4);
}

uint64_t sub_23C49AEF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a4;
  v9 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, &v13, 1, 0);
  if (!v9)
  {
    v14 = 257;
    v9 = sub_23C49AFDC(a2, a3, &v12, 1);
    sub_23C49B15C(a1, v9, a5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23C49AFDC(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x50);
  v9 = *a2;
  v10 = *(*a2 + 8);
  if ((v10 & 0xFE) == 0x12)
  {
    v9 = **(v9 + 16);
    v10 = *(v9 + 8);
  }

  v11 = (v10 >> 8);
  llvm::GetElementPtrInst::getIndexedType();
  if (*(v9 + 24))
  {
    llvm::PointerType::get();
  }

  else
  {
    llvm::PointerType::get(*v9, v11);
  }

  v12 = *a2;
  if (!*a2 || (*(v12 + 8) & 0xFE) != 0x12)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v14 = 8 * a4;
    v15 = a3;
    while (1)
    {
      v12 = **v15;
      if (v12 && (*(v12 + 8) & 0xFE) == 18)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = *(v12 + 32);
  llvm::VectorType::get();
LABEL_16:
  llvm::Instruction::Instruction();
  *(v8 + 64) = a1;
  *(v8 + 72) = llvm::GetElementPtrInst::getIndexedType();
  llvm::GetElementPtrInst::init();
  return v8;
}

uint64_t sub_23C49B15C(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = &v6[4 * v5];
    do
    {
      v8 = *v6;
      v9 = *(v6 + 1);
      llvm::Instruction::setMetadata();
      v6 += 4;
    }

    while (v6 != v7);
  }

  return a2;
}

uint64_t sub_23C49B1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  IntegerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      IntegerCast = llvm::CastInst::CreateIntegerCast();
      sub_23C49B15C(a1, IntegerCast, a5);
    }

    else
    {
      IntegerCast = (*(**(a1 + 72) + 248))(*(a1 + 72), a2);
      if (IntegerCast)
      {
        v8 = *(IntegerCast + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        sub_23C49B15C(a1, IntegerCast, a5);
      }
    }
  }

  return IntegerCast;
}

uint64_t sub_23C49B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 41, a2, a3, a4);
}

uint64_t sub_23C49B32C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    v8 = (*(**(a1 + 72) + 344))(*(a1 + 72), a2, a3, a4);
    if (v8)
    {
      v9 = *(v8 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_23C49B15C(a1, v8, a5);
    }
  }

  else
  {
    v8 = llvm::User::operator new(0x60);
    v10 = *a2;
    llvm::ExtractValueInst::getIndexedType();
    llvm::Instruction::Instruction();
    if (*(v8 - 32))
    {
      v11 = *(v8 - 24);
      **(v8 - 16) = v11;
      if (v11)
      {
        *(v11 + 16) = *(v8 - 16);
      }
    }

    *(v8 - 32) = a2;
    v14 = a2[1];
    v13 = a2 + 1;
    v12 = v14;
    *(v8 - 24) = v14;
    if (v14)
    {
      *(v12 + 16) = v8 - 24;
    }

    *(v8 - 16) = v13;
    *v13 = v8 - 32;
    *(v8 + 64) = v8 + 80;
    *(v8 + 72) = 0x400000000;
    llvm::ExtractValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v8, a5, *(a1 + 48), *(a1 + 56));
    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = *a1;
      v17 = &v16[4 * v15];
      do
      {
        v18 = *v16;
        v19 = *(v16 + 1);
        llvm::Instruction::setMetadata();
        v16 += 4;
      }

      while (v16 != v17);
    }
  }

  return v8;
}

uint64_t sub_23C49B500(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C49B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 160))(*(a1 + 72));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t *sub_23C49B638(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = *a2;
  v35 = *(a2 + 16);
  if (v35)
  {
    llvm::MetadataTracking::track();
  }

  v36 = *(a2 + 24);
  sub_23C497620(a1, &v34);
  if (v35)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = a1[20];
  v12 = (a3 - 1);
  if (a3 != 1)
  {
    v13 = a1[20];
    v11 = llvm::FixedVectorType::get();
  }

  v14 = a1[34];
  v15 = llvm::PointerType::get();
  v16 = &a1[v12];
  if (a6)
  {
    v17 = v16[243];
    if (v17)
    {
      v18 = strlen(v16[243]);
    }

    else
    {
      v18 = 0;
    }

    v21 = sub_23C49B858(a1, v17, v18, v11, a1[24], v15, v15);
    v22 = a1[24];
    v37 = llvm::ConstantInt::get();
    v38 = a5;
    v39 = a6;
    v33 = 257;
    v23 = *(v21 + 24);
    v24 = (a1 + 1);
    v25 = v21;
    v26 = 3;
  }

  else
  {
    v19 = v16[239];
    if (v19)
    {
      v20 = strlen(v16[239]);
    }

    else
    {
      v20 = 0;
    }

    v27 = sub_23C49B938(a1, v19, v20, v11, a1[24], v15);
    v28 = a1[24];
    v37 = llvm::ConstantInt::get();
    v38 = a5;
    v33 = 257;
    v23 = *(v27 + 24);
    v24 = (a1 + 1);
    v25 = v27;
    v26 = 2;
  }

  v29 = sub_23C497A7C(v24, v23, v25, &v37, v26, v32);
  if ((a3 ^ v12) <= v12)
  {
    v29 = sub_23C505670(a1, v29, a3, 1);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t sub_23C49B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  v14[0] = v15;
  v14[1] = 0x300000000;
  sub_23C49BA18(v14, __src, v14);
  llvm::FunctionType::get();
  v8 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v10 = v9;
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_23C49B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  v13[0] = v14;
  v13[1] = 0x200000000;
  sub_23C49BA18(v13, __src, v13);
  llvm::FunctionType::get();
  v7 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v9 = v8;
  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

unsigned int *sub_23C49BA18(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

void sub_23C49BAC0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t sub_23C49BBA0(llvm::DataLayout *a1, llvm::Type *a2)
{
  v4 = sub_23C49BBFC(a1, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(a1, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

unint64_t sub_23C49BBFC(llvm::DataLayout *a1, uint64_t a2)
{
  result = 16;
  switch(*(a2 + 8))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      JUMPOUT(0x23C49BD4CLL);
    case 8u:
      v6 = a1;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 8) >> 8;
    case 0xFu:
      if ((*(a2 + 8) & 0xFE) == 0x12)
      {
        v7 = *(**(a2 + 16) + 8);
      }

      v6 = a1;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v8 = *llvm::DataLayout::getStructLayout();
      goto LABEL_16;
    case 0x11u:
      v9 = *(a2 + 32);
      v8 = v9 * sub_23C49BBA0(a1, *(a2 + 24));
LABEL_16:
      result = 8 * v8;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 32);
      result = sub_23C49BBFC(a1, *(a2 + 24)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x23EED4B20](a2);
      result = sub_23C49BBFC(a1, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_23C49BF14(uint64_t a1, llvm::StringMapImpl *a2)
{
  v4 = *sub_23C4C126C(a2, "acos", 4uLL);
  *(v4 + 8) = sub_23C4C27B0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 3;
  *(v4 + 28) = 257;
  v5 = *sub_23C4C126C(a2, "asin", 4uLL);
  *(v5 + 8) = sub_23C4C278C;
  *(v5 + 16) = 0;
  *(v5 + 24) = 3;
  *(v5 + 28) = 257;
  v6 = *sub_23C4C126C(a2, "atan", 4uLL);
  *(v6 + 8) = sub_23C4C2768;
  *(v6 + 16) = 0;
  *(v6 + 24) = 3;
  *(v6 + 28) = 257;
  v7 = *sub_23C4C126C(a2, "atan2", 5uLL);
  *(v7 + 8) = sub_23C4BC958;
  *(v7 + 16) = 0;
  *(v7 + 24) = 5;
  *(v7 + 28) = 257;
  v8 = *sub_23C4C126C(a2, "acosh", 5uLL);
  *(v8 + 8) = sub_23C4BD164;
  *(v8 + 16) = 0;
  *(v8 + 24) = 3;
  *(v8 + 28) = 257;
  v9 = *sub_23C4C126C(a2, "asinh", 5uLL);
  *(v9 + 8) = sub_23C4BD2CC;
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  *(v9 + 28) = 257;
  v10 = *sub_23C4C126C(a2, "atanh", 5uLL);
  *(v10 + 8) = sub_23C4BD370;
  *(v10 + 16) = 0;
  *(v10 + 24) = 3;
  *(v10 + 28) = 257;
  v11 = *sub_23C4C126C(a2, "pow", 3uLL);
  *(v11 + 8) = sub_23C4C2744;
  *(v11 + 16) = 0;
  *(v11 + 24) = 5;
  *(v11 + 28) = 257;
  v12 = *sub_23C4C126C(a2, "powr", 4uLL);
  *(v12 + 8) = sub_23C4BB80C;
  *(v12 + 16) = 0;
  *(v12 + 24) = 5;
  *(v12 + 28) = 257;
  v13 = *sub_23C4C126C(a2, "cosh", 4uLL);
  *(v13 + 8) = sub_23C4BD440;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  *(v13 + 28) = 257;
  v14 = *sub_23C4C126C(a2, "sinh", 4uLL);
  *(v14 + 8) = sub_23C4BDD84;
  *(v14 + 16) = 0;
  *(v14 + 24) = 3;
  *(v14 + 28) = 257;
  v15 = *sub_23C4C126C(a2, "tanh", 4uLL);
  *(v15 + 8) = sub_23C4BDE24;
  *(v15 + 16) = 0;
  *(v15 + 24) = 3;
  *(v15 + 28) = 257;
  v16 = *sub_23C4C126C(a2, "exp10", 5uLL);
  *(v16 + 8) = sub_23C4BD964;
  *(v16 + 16) = 0;
  *(v16 + 24) = 3;
  *(v16 + 28) = 257;
  v17 = *sub_23C4C126C(a2, "log10", 5uLL);
  *(v17 + 8) = sub_23C4BDA8C;
  *(v17 + 16) = 0;
  *(v17 + 24) = 3;
  *(v17 + 28) = 257;
  v18 = *(a1 + 40);
  v19 = *sub_23C4C126C(a2, "cos", 3uLL);
  *(v19 + 8) = sub_23C4C273C;
  *(v19 + 16) = 0;
  *(v19 + 24) = 3;
  *(v19 + 28) = v18;
  *(v19 + 29) = 1;
  v20 = *(a1 + 40);
  v21 = *sub_23C4C126C(a2, "sin", 3uLL);
  *(v21 + 8) = sub_23C4C2734;
  *(v21 + 16) = 0;
  *(v21 + 24) = 3;
  *(v21 + 28) = v20;
  *(v21 + 29) = 1;
  v22 = *(a1 + 40);
  v23 = *sub_23C4C126C(a2, "tan", 3uLL);
  *(v23 + 8) = sub_23C4BCEB4;
  *(v23 + 16) = 0;
  *(v23 + 24) = 3;
  *(v23 + 28) = v22;
  *(v23 + 29) = 1;
  v24 = *(a1 + 40);
  v25 = *sub_23C4C126C(a2, "sincos", 6uLL);
  *(v25 + 8) = sub_23C4BCF20;
  *(v25 + 16) = 0;
  *(v25 + 24) = 5;
  *(v25 + 28) = v24;
  *(v25 + 29) = 0;
  v26 = *sub_23C4C126C(a2, "rint", 4uLL);
  *(v26 + 8) = sub_23C4C2710;
  *(v26 + 16) = 0;
  *(v26 + 24) = 3;
  *(v26 + 28) = 257;
  v27 = *sub_23C4C126C(a2, "round", 5uLL);
  *(v27 + 8) = sub_23C4BDBC0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 3;
  *(v27 + 28) = 257;
  v28 = *sub_23C4C126C(a2, "fmod", 4uLL);
  *(v28 + 8) = sub_23C4BD5A4;
  *(v28 + 16) = 0;
  *(v28 + 24) = 5;
  *(v28 + 28) = 1;
  v29 = *sub_23C4C126C(a2, "mod", 3uLL);
  *(v29 + 8) = sub_23C4BD6C4;
  *(v29 + 16) = 0;
  *(v29 + 24) = 5;
  *(v29 + 28) = 1;
  v30 = *sub_23C4C126C(a2, "ceil", 4uLL);
  *(v30 + 8) = sub_23C4C26EC;
  *(v30 + 16) = 0;
  *(v30 + 24) = 3;
  *(v30 + 28) = 256;
  v31 = *sub_23C4C126C(a2, "exp", 3uLL);
  *(v31 + 8) = sub_23C4BD4E0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 3;
  *(v31 + 28) = 1;
  v32 = *sub_23C4C126C(a2, "exp2", 4uLL);
  *(v32 + 8) = sub_23C4BD9C8;
  *(v32 + 16) = 0;
  *(v32 + 24) = 3;
  *(v32 + 28) = 0;
  v33 = *sub_23C4C126C(a2, "fabs", 4uLL);
  *(v33 + 8) = sub_23C4BB410;
  *(v33 + 16) = 0;
  *(v33 + 24) = 3;
  *(v33 + 28) = 0;
  v34 = *sub_23C4C126C(a2, "floor", 5uLL);
  *(v34 + 8) = sub_23C4BBA04;
  *(v34 + 16) = 0;
  *(v34 + 24) = 3;
  *(v34 + 28) = 0;
  v35 = *sub_23C4C126C(a2, "fma", 3uLL);
  *(v35 + 8) = sub_23C4BC6B8;
  *(v35 + 16) = 0;
  *(v35 + 24) = 6;
  *(v35 + 28) = 0;
  v36 = *sub_23C4C126C(a2, "fmax", 4uLL);
  *(v36 + 8) = sub_23C4C0B1C;
  *(v36 + 16) = 0;
  *(v36 + 24) = 5;
  *(v36 + 28) = 256;
  v37 = *sub_23C4C126C(a2, "fmin", 4uLL);
  *(v37 + 8) = sub_23C4C0A44;
  *(v37 + 16) = 0;
  *(v37 + 24) = 5;
  *(v37 + 28) = 256;
  v38 = *sub_23C4C126C(a2, "fract", 5uLL);
  *(v38 + 8) = sub_23C4BD74C;
  *(v38 + 16) = 0;
  *(v38 + 24) = 3;
  *(v38 + 28) = 0;
  v39 = *sub_23C4C126C(a2, "ldexp", 5uLL);
  *(v39 + 8) = sub_23C4C26E4;
  *(v39 + 16) = 0;
  *(v39 + 24) = 7;
  *(v39 + 28) = 256;
  v40 = *sub_23C4C126C(a2, "log", 3uLL);
  *(v40 + 8) = sub_23C4BD208;
  *(v40 + 16) = 0;
  *(v40 + 24) = 3;
  *(v40 + 28) = 1;
  v41 = *sub_23C4C126C(a2, "log2", 4uLL);
  *(v41 + 8) = sub_23C4BDAFC;
  *(v41 + 16) = 0;
  *(v41 + 24) = 3;
  *(v41 + 28) = 0;
  v42 = *sub_23C4C126C(a2, "mad", 3uLL);
  *(v42 + 8) = sub_23C4BD904;
  *(v42 + 16) = 0;
  *(v42 + 24) = 6;
  *(v42 + 28) = 0;
  v43 = *sub_23C4C126C(a2, "rsqrt", 5uLL);
  *(v43 + 8) = sub_23C4BC894;
  *(v43 + 16) = 0;
  *(v43 + 24) = 3;
  *(v43 + 28) = 256;
  v44 = *sub_23C4C126C(a2, "sqrt", 4uLL);
  *(v44 + 8) = sub_23C4BBBDC;
  *(v44 + 16) = 0;
  *(v44 + 24) = 3;
  *(v44 + 28) = 0;
  v45 = *sub_23C4C126C(a2, "trunc", 5uLL);
  *(v45 + 8) = sub_23C4C26C0;
  *(v45 + 16) = 0;
  *(v45 + 24) = 3;
  *(v45 + 28) = 256;
  v46 = *sub_23C4C126C(a2, "fast_acos", 9uLL);
  *(v46 + 8) = sub_23C4C27B0;
  *(v46 + 16) = 0;
  *(v46 + 24) = 3;
  *(v46 + 28) = 257;
  v47 = *sub_23C4C126C(a2, "fast_asin", 9uLL);
  *(v47 + 8) = sub_23C4C278C;
  *(v47 + 16) = 0;
  *(v47 + 24) = 3;
  *(v47 + 28) = 257;
  v48 = *sub_23C4C126C(a2, "fast_atan", 9uLL);
  *(v48 + 8) = sub_23C4C2768;
  *(v48 + 16) = 0;
  *(v48 + 24) = 3;
  *(v48 + 28) = 257;
  v49 = *sub_23C4C126C(a2, "fast_atan2", 0xAuLL);
  *(v49 + 8) = sub_23C4BC958;
  *(v49 + 16) = 0;
  *(v49 + 24) = 5;
  *(v49 + 28) = 257;
  v50 = *sub_23C4C126C(a2, "fast_exp10", 0xAuLL);
  *(v50 + 8) = sub_23C4BD964;
  *(v50 + 16) = 0;
  *(v50 + 24) = 3;
  *(v50 + 28) = 0;
  v51 = *sub_23C4C126C(a2, "fast_log10", 0xAuLL);
  *(v51 + 8) = sub_23C4BDA8C;
  *(v51 + 16) = 0;
  *(v51 + 24) = 3;
  *(v51 + 28) = 1;
  v52 = *sub_23C4C126C(a2, "fast_acosh", 0xAuLL);
  *(v52 + 8) = sub_23C4BD164;
  *(v52 + 16) = 0;
  *(v52 + 24) = 3;
  *(v52 + 28) = 257;
  v53 = *sub_23C4C126C(a2, "fast_asinh", 0xAuLL);
  *(v53 + 8) = sub_23C4BD2CC;
  *(v53 + 16) = 0;
  *(v53 + 24) = 3;
  *(v53 + 28) = 257;
  v54 = *sub_23C4C126C(a2, "fast_atanh", 0xAuLL);
  *(v54 + 8) = sub_23C4BD370;
  *(v54 + 16) = 0;
  *(v54 + 24) = 3;
  *(v54 + 28) = 257;
  v55 = *sub_23C4C126C(a2, "fast_pow", 8uLL);
  *(v55 + 8) = sub_23C4C2744;
  *(v55 + 16) = 0;
  *(v55 + 24) = 5;
  *(v55 + 28) = 257;
  v56 = *sub_23C4C126C(a2, "fast_powr", 9uLL);
  *(v56 + 8) = sub_23C4BB80C;
  *(v56 + 16) = 0;
  *(v56 + 24) = 5;
  *(v56 + 28) = 257;
  v57 = *sub_23C4C126C(a2, "fast_cosh", 9uLL);
  *(v57 + 8) = sub_23C4BD440;
  *(v57 + 16) = 0;
  *(v57 + 24) = 3;
  *(v57 + 28) = 1;
  *(v57 + 29) = 1;
  v58 = *sub_23C4C126C(a2, "fast_sinh", 9uLL);
  *(v58 + 8) = sub_23C4BDD84;
  *(v58 + 16) = 0;
  *(v58 + 24) = 3;
  *(v58 + 28) = 1;
  *(v58 + 29) = 1;
  v59 = *sub_23C4C126C(a2, "fast_tanh", 9uLL);
  *(v59 + 8) = sub_23C4BDE24;
  *(v59 + 16) = 0;
  *(v59 + 24) = 3;
  *(v59 + 28) = 1;
  *(v59 + 29) = 1;
  v60 = *(a1 + 40);
  v61 = *sub_23C4C126C(a2, "fast_cos", 8uLL);
  *(v61 + 8) = sub_23C4C273C;
  *(v61 + 16) = 0;
  *(v61 + 24) = 3;
  *(v61 + 28) = v60;
  *(v61 + 29) = 1;
  v62 = *(a1 + 40);
  v63 = *sub_23C4C126C(a2, "fast_sin", 8uLL);
  *(v63 + 8) = sub_23C4C2734;
  *(v63 + 16) = 0;
  *(v63 + 24) = 3;
  *(v63 + 28) = v62;
  *(v63 + 29) = 1;
  v64 = *sub_23C4C126C(a2, "fast_tan", 8uLL);
  *(v64 + 8) = sub_23C4BCEB4;
  *(v64 + 16) = 0;
  *(v64 + 24) = 3;
  *(v64 + 28) = 1;
  *(v64 + 29) = 1;
  v65 = *(a1 + 40);
  v66 = *sub_23C4C126C(a2, "fast_sincos", 0xBuLL);
  *(v66 + 8) = sub_23C4BCF20;
  *(v66 + 16) = 0;
  *(v66 + 24) = 5;
  *(v66 + 28) = v65;
  *(v66 + 29) = 0;
  v67 = *sub_23C4C126C(a2, "fast_round", 0xAuLL);
  *(v67 + 8) = sub_23C4BDBC0;
  *(v67 + 16) = 0;
  *(v67 + 24) = 3;
  *(v67 + 28) = 1;
  *(v67 + 29) = 1;
  v68 = *sub_23C4C126C(a2, "fast_fmod", 9uLL);
  *(v68 + 8) = sub_23C4BD5A4;
  *(v68 + 16) = 0;
  *(v68 + 24) = 5;
  *(v68 + 28) = 1;
  v69 = *sub_23C4C126C(a2, "fast_mod", 8uLL);
  *(v69 + 8) = sub_23C4BD6C4;
  *(v69 + 16) = 0;
  *(v69 + 24) = 5;
  *(v69 + 28) = 1;
  v70 = *sub_23C4C126C(a2, "fast_exp", 8uLL);
  *(v70 + 8) = sub_23C4BD4E0;
  *(v70 + 16) = 0;
  *(v70 + 24) = 3;
  *(v70 + 28) = 0;
  v71 = *sub_23C4C126C(a2, "fast_exp2", 9uLL);
  *(v71 + 8) = sub_23C4BD9C8;
  *(v71 + 16) = 0;
  *(v71 + 24) = 3;
  *(v71 + 28) = 0;
  v72 = *sub_23C4C126C(a2, "fast_ldexp", 0xAuLL);
  *(v72 + 8) = sub_23C4C26E4;
  *(v72 + 16) = 0;
  *(v72 + 24) = 7;
  *(v72 + 28) = 0;
  *(v72 + 29) = 1;
  v73 = *sub_23C4C126C(a2, "fast_log", 8uLL);
  *(v73 + 8) = sub_23C4BD208;
  *(v73 + 16) = 0;
  *(v73 + 24) = 3;
  *(v73 + 28) = 0;
  v74 = *sub_23C4C126C(a2, "fast_log2", 9uLL);
  *(v74 + 8) = sub_23C4BDAFC;
  *(v74 + 16) = 0;
  *(v74 + 24) = 3;
  *(v74 + 28) = 0;
  v75 = *sub_23C4C126C(a2, "fast_rsqrt", 0xAuLL);
  *(v75 + 8) = sub_23C4BC894;
  *(v75 + 16) = 0;
  *(v75 + 24) = 3;
  *(v75 + 28) = 0;
  *(v75 + 29) = 1;
  v76 = *sub_23C4C126C(a2, "fast_sqrt", 9uLL);
  *(v76 + 8) = sub_23C4BBBDC;
  *(v76 + 16) = 0;
  *(v76 + 24) = 3;
  *(v76 + 28) = 0;
  v77 = *sub_23C4C126C(a2, "fast_ceil", 9uLL);
  *(v77 + 8) = sub_23C4C26EC;
  *(v77 + 16) = 0;
  *(v77 + 24) = 3;
  *(v77 + 28) = 0;
  *(v77 + 29) = 1;
  v78 = *sub_23C4C126C(a2, "fast_fabs", 9uLL);
  *(v78 + 8) = sub_23C4BB410;
  *(v78 + 16) = 0;
  *(v78 + 24) = 3;
  *(v78 + 28) = 0;
  v79 = *sub_23C4C126C(a2, "fast_floor", 0xAuLL);
  *(v79 + 8) = sub_23C4BBA04;
  *(v79 + 16) = 0;
  *(v79 + 24) = 3;
  *(v79 + 28) = 0;
  v80 = *sub_23C4C126C(a2, "fast_fract", 0xAuLL);
  *(v80 + 8) = sub_23C4BD74C;
  *(v80 + 16) = 0;
  *(v80 + 24) = 3;
  *(v80 + 28) = 0;
  v81 = *sub_23C4C126C(a2, "fast_rint", 9uLL);
  *(v81 + 8) = sub_23C4C2710;
  *(v81 + 16) = 0;
  *(v81 + 24) = 3;
  *(v81 + 28) = 1;
  *(v81 + 29) = 1;
  v82 = *sub_23C4C126C(a2, "fast_trunc", 0xAuLL);
  *(v82 + 8) = sub_23C4C26C0;
  *(v82 + 16) = 0;
  *(v82 + 24) = 3;
  *(v82 + 28) = 0;
  *(v82 + 29) = 1;
  v83 = *sub_23C4C126C(a2, "fast_fmax", 9uLL);
  *(v83 + 8) = sub_23C4BCDAC;
  *(v83 + 16) = 0;
  *(v83 + 24) = 5;
  *(v83 + 28) = 0;
  *(v83 + 29) = 1;
  v84 = *sub_23C4C126C(a2, "fast_fmin", 9uLL);
  *(v84 + 8) = sub_23C4BCCA4;
  *(v84 + 16) = 0;
  *(v84 + 24) = 5;
  *(v84 + 28) = 0;
  *(v84 + 29) = 1;
  v85 = *sub_23C4C126C(a2, "gamma_expand", 0xCuLL);
  *(v85 + 8) = sub_23C4C26B8;
  *(v85 + 16) = 0;
  *(v85 + 24) = 3;
  *(v85 + 28) = 0;
  v86 = *sub_23C4C126C(a2, "gamma_compress", 0xEuLL);
  *(v86 + 8) = sub_23C4C26B0;
  *(v86 + 16) = 0;
  *(v86 + 24) = 3;
  *(v86 + 28) = 0;
  v87 = *sub_23C4C126C(a2, "gamma_expand_xr", 0xFuLL);
  *(v87 + 8) = sub_23C4C26A8;
  *(v87 + 16) = 0;
  *(v87 + 24) = 3;
  *(v87 + 28) = 0;
  v88 = *sub_23C4C126C(a2, "gamma_compress_xr", 0x11uLL);
  *(v88 + 8) = sub_23C4C26A0;
  *(v88 + 16) = 0;
  *(v88 + 24) = 3;
  *(v88 + 28) = 0;
  v89 = *sub_23C4C126C(a2, "convert", 7uLL);
  *(v89 + 8) = sub_23C4BDEF4;
  *(v89 + 16) = 0;
  *(v89 + 24) = 7;
  *(v89 + 28) = 0;
  *(v89 + 29) = 1;
  v90 = *sub_23C4C126C(a2, "pack", 4uLL);
  *(v90 + 8) = sub_23C4BE840;
  *(v90 + 16) = 0;
  *(v90 + 24) = 7;
  *(v90 + 28) = 0;
  v91 = *sub_23C4C126C(a2, "unpack", 6uLL);
  *(v91 + 8) = sub_23C4BF378;
  *(v91 + 16) = 0;
  *(v91 + 24) = 7;
  *(v91 + 28) = 0;
  v92 = *sub_23C4C126C(a2, "abs", 3uLL);
  *(v92 + 8) = sub_23C4C24B0;
  *(v92 + 16) = 0;
  *(v92 + 24) = 7;
  *(v92 + 28) = 0;
  *(v92 + 29) = 1;
  v93 = *sub_23C4C126C(a2, "abs_diff", 8uLL);
  *(v93 + 8) = sub_23C4C23DC;
  *(v93 + 16) = 0;
  *(v93 + 24) = 7;
  *(v93 + 28) = 0;
  *(v93 + 29) = 1;
  v94 = *sub_23C4C126C(a2, "add_sat", 7uLL);
  *(v94 + 8) = sub_23C4C20FC;
  *(v94 + 16) = 0;
  *(v94 + 24) = 7;
  *(v94 + 28) = 0;
  *(v94 + 29) = 1;
  v95 = *sub_23C4C126C(a2, "sub_sat", 7uLL);
  *(v95 + 8) = sub_23C4C1DC0;
  *(v95 + 16) = 0;
  *(v95 + 24) = 7;
  *(v95 + 28) = 0;
  *(v95 + 29) = 1;
  v96 = *sub_23C4C126C(a2, "hadd", 4uLL);
  *(v96 + 8) = sub_23C4C26E4;
  *(v96 + 16) = 0;
  *(v96 + 24) = 7;
  *(v96 + 28) = 0;
  *(v96 + 29) = 1;
  v97 = *sub_23C4C126C(a2, "rhadd", 5uLL);
  *(v97 + 8) = sub_23C4C26E4;
  *(v97 + 16) = 0;
  *(v97 + 24) = 7;
  *(v97 + 28) = 0;
  *(v97 + 29) = 1;
  v98 = *sub_23C4C126C(a2, "clamp", 5uLL);
  *(v98 + 8) = sub_23C4BF8B0;
  *(v98 + 16) = 0;
  *(v98 + 24) = 7;
  *(v98 + 28) = 0;
  *(v98 + 29) = 1;
  v99 = *sub_23C4C126C(a2, "clz", 3uLL);
  *(v99 + 8) = sub_23C4C26E4;
  *(v99 + 16) = 0;
  *(v99 + 24) = 7;
  *(v99 + 28) = 0;
  *(v99 + 29) = 1;
  v100 = *sub_23C4C126C(a2, "ctz", 3uLL);
  *(v100 + 8) = sub_23C4C26E4;
  *(v100 + 16) = 0;
  *(v100 + 24) = 7;
  *(v100 + 28) = 0;
  *(v100 + 29) = 1;
  v101 = *sub_23C4C126C(a2, "mad_hi", 6uLL);
  *(v101 + 8) = sub_23C4C26E4;
  *(v101 + 16) = 0;
  *(v101 + 24) = 7;
  *(v101 + 28) = 0;
  *(v101 + 29) = 1;
  v102 = *sub_23C4C126C(a2, "mad_sat", 7uLL);
  *(v102 + 8) = sub_23C4C1A30;
  *(v102 + 16) = 0;
  *(v102 + 24) = 7;
  *(v102 + 28) = 0;
  *(v102 + 29) = 1;
  v103 = *sub_23C4C126C(a2, "max", 3uLL);
  *(v103 + 8) = sub_23C4C1A10;
  *(v103 + 16) = 0;
  *(v103 + 24) = 7;
  *(v103 + 28) = 0;
  *(v103 + 29) = 1;
  v104 = *sub_23C4C126C(a2, "min", 3uLL);
  *(v104 + 8) = sub_23C4C19F0;
  *(v104 + 16) = 0;
  *(v104 + 24) = 7;
  *(v104 + 28) = 0;
  *(v104 + 29) = 1;
  v105 = *sub_23C4C126C(a2, "mul_hi", 6uLL);
  *(v105 + 8) = sub_23C4C26E4;
  *(v105 + 16) = 0;
  *(v105 + 24) = 7;
  *(v105 + 28) = 0;
  *(v105 + 29) = 1;
  v106 = *sub_23C4C126C(a2, "rotate", 6uLL);
  *(v106 + 8) = sub_23C4C26E4;
  *(v106 + 16) = 0;
  *(v106 + 24) = 7;
  *(v106 + 28) = 0;
  *(v106 + 29) = 1;
  v107 = *sub_23C4C126C(a2, "popcount", 8uLL);
  *(v107 + 8) = sub_23C4BFA14;
  *(v107 + 16) = 0;
  *(v107 + 24) = 3;
  *(v107 + 28) = 0;
  *(v107 + 29) = 1;
  v108 = *sub_23C4C126C(a2, "extract_bits", 0xCuLL);
  *(v108 + 8) = sub_23C4BFB98;
  *(v108 + 16) = 0;
  *(v108 + 24) = 7;
  *(v108 + 28) = 0;
  *(v108 + 29) = 1;
  v109 = *sub_23C4C126C(a2, "insert_bits", 0xBuLL);
  *(v109 + 8) = sub_23C4BFDAC;
  *(v109 + 16) = 0;
  *(v109 + 24) = 7;
  *(v109 + 28) = 0;
  *(v109 + 29) = 1;
  v110 = *sub_23C4C126C(a2, "reverse_bits", 0xCuLL);
  *(v110 + 8) = sub_23C4C0018;
  *(v110 + 16) = 0;
  *(v110 + 24) = 3;
  *(v110 + 28) = 0;
  *(v110 + 29) = 1;
  v111 = *sub_23C4C126C(a2, "any", 3uLL);
  *(v111 + 8) = sub_23C4C19E8;
  *(v111 + 16) = 0;
  *(v111 + 24) = 3;
  *(v111 + 28) = 0;
  v112 = *sub_23C4C126C(a2, "all", 3uLL);
  *(v112 + 8) = sub_23C4C19E0;
  *(v112 + 16) = 0;
  *(v112 + 24) = 3;
  *(v112 + 28) = 0;
  v113 = *sub_23C4C126C(a2, "any_msb", 7uLL);
  *(v113 + 8) = sub_23C4C26E4;
  *(v113 + 16) = 0;
  *(v113 + 24) = 7;
  *(v113 + 28) = 0;
  *(v113 + 29) = 1;
  v114 = *sub_23C4C126C(a2, "all_msb", 7uLL);
  *(v114 + 8) = sub_23C4C26E4;
  *(v114 + 16) = 0;
  *(v114 + 24) = 7;
  *(v114 + 28) = 0;
  *(v114 + 29) = 1;
  v115 = *sub_23C4C126C(a2, "saturate", 8uLL);
  *(v115 + 8) = sub_23C4C1918;
  *(v115 + 16) = 0;
  *(v115 + 24) = 3;
  *(v115 + 28) = 0;
  *(v115 + 29) = 1;
  v116 = *sub_23C4C126C(a2, "mix", 3uLL);
  *(v116 + 8) = sub_23C4C0320;
  *(v116 + 16) = 0;
  *(v116 + 24) = 6;
  *(v116 + 28) = 0;
  v117 = *sub_23C4C126C(a2, "sign", 4uLL);
  *(v117 + 8) = sub_23C4C0224;
  *(v117 + 16) = 0;
  *(v117 + 24) = 3;
  *(v117 + 28) = 0;
  *(v117 + 29) = 1;
  v118 = *sub_23C4C126C(a2, "dot", 3uLL);
  *(v118 + 8) = sub_23C4C03D8;
  *(v118 + 16) = 0;
  *(v118 + 24) = 5;
  *(v118 + 28) = 0;
  v119 = *sub_23C4C126C(a2, "fast_clamp", 0xAuLL);
  *(v119 + 8) = sub_23C4C185C;
  *(v119 + 16) = 0;
  *(v119 + 24) = 6;
  *(v119 + 28) = 0;
  *(v119 + 29) = 1;
  v120 = *sub_23C4C126C(a2, "fast_saturate", 0xDuLL);
  *(v120 + 8) = sub_23C4C17B8;
  *(v120 + 16) = 0;
  *(v120 + 24) = 3;
  *(v120 + 28) = 0;
  *(v120 + 29) = 1;
  v121 = *(a1 + 41);
  v122 = *sub_23C4C126C(a2, "dfdx", 4uLL);
  *(v122 + 8) = sub_23C4C042C;
  *(v122 + 16) = 0;
  *(v122 + 24) = 3;
  *(v122 + 28) = v121;
  *(v122 + 29) = 1;
  v123 = *(a1 + 41);
  v124 = *sub_23C4C126C(a2, "dfdy", 4uLL);
  *(v124 + 8) = sub_23C4C0510;
  *(v124 + 16) = 0;
  *(v124 + 24) = 3;
  *(v124 + 28) = v123;
  *(v124 + 29) = 1;
  v125 = *(a1 + 41);
  v126 = *sub_23C4C126C(a2, "fwidth", 6uLL);
  *(v126 + 8) = sub_23C4C0608;
  *(v126 + 16) = 0;
  *(v126 + 24) = 3;
  *(v126 + 28) = v125;
  *(v126 + 29) = 1;
  v127 = *sub_23C4C126C(a2, "atomic", 6uLL);
  *(v127 + 8) = sub_23C4C1794;
  *(v127 + 16) = 0;
  *(v127 + 24) = 7;
  *(v127 + 28) = 0;
  v128 = *sub_23C4C126C(a2, "assert", 6uLL);
  *(v128 + 8) = sub_23C4C0FA4;
  *(v128 + 16) = 0;
  *(v128 + 24) = 1;
  *(v128 + 28) = 0;
  v129 = *sub_23C4C126C(a2, "get_simd_width", 0xEuLL);
  *(v129 + 8) = sub_23C4C0FAC;
  *(v129 + 16) = 0;
  *(v129 + 24) = 7;
  *(v129 + 28) = 0;
  v130 = *sub_23C4C126C(a2, "get_thread_execution_width", 0x1AuLL);
  *(v130 + 8) = sub_23C4C1008;
  *(v130 + 16) = 0;
  *(v130 + 24) = 7;
  *(v130 + 28) = 0;
  v131 = *sub_23C4C126C(a2, "simdgroup", 9uLL);
  *(v131 + 8) = sub_23C4C1768;
  *(v131 + 16) = 0;
  *(v131 + 24) = 7;
  *(v131 + 28) = 0;
  v132 = *sub_23C4C126C(a2, "is_uniform", 0xAuLL);
  *(v132 + 8) = sub_23C4C1064;
  *(v132 + 16) = 0;
  *(v132 + 24) = 9;
  *(v132 + 28) = 0;
  v133 = *sub_23C4C126C(a2, "mul24", 5uLL);
  *(v133 + 8) = sub_23C4C1730;
  *(v133 + 16) = 0;
  *(v133 + 24) = 7;
  *(v133 + 28) = 0;
  *(v133 + 29) = 1;
  v134 = *sub_23C4C126C(a2, "mad24", 5uLL);
  *(v134 + 8) = sub_23C4C16C8;
  *(v134 + 16) = 0;
  *(v134 + 24) = 7;
  *(v134 + 28) = 0;
  *(v134 + 29) = 1;
  v135 = *sub_23C4C126C(a2, "min3", 4uLL);
  *(v135 + 8) = sub_23C4C1658;
  *(v135 + 16) = 0;
  *(v135 + 24) = 7;
  *(v135 + 28) = 0;
  *(v135 + 29) = 1;
  v136 = *sub_23C4C126C(a2, "fmin3", 5uLL);
  *(v136 + 8) = sub_23C4C160C;
  *(v136 + 16) = 0;
  *(v136 + 24) = 7;
  *(v136 + 28) = 0;
  *(v136 + 29) = 1;
  v137 = *sub_23C4C126C(a2, "fast_fmin3", 0xAuLL);
  *(v137 + 8) = sub_23C4C15C0;
  *(v137 + 16) = 0;
  *(v137 + 24) = 7;
  *(v137 + 28) = 0;
  *(v137 + 29) = 1;
  v138 = *sub_23C4C126C(a2, "max3", 4uLL);
  *(v138 + 8) = sub_23C4C1550;
  *(v138 + 16) = 0;
  *(v138 + 24) = 7;
  *(v138 + 28) = 0;
  *(v138 + 29) = 1;
  v139 = *sub_23C4C126C(a2, "fmax3", 5uLL);
  *(v139 + 8) = sub_23C4C1504;
  *(v139 + 16) = 0;
  *(v139 + 24) = 7;
  *(v139 + 28) = 0;
  *(v139 + 29) = 1;
  v140 = *sub_23C4C126C(a2, "fast_fmax3", 0xAuLL);
  *(v140 + 8) = sub_23C4C14B8;
  *(v140 + 16) = 0;
  *(v140 + 24) = 7;
  *(v140 + 28) = 0;
  *(v140 + 29) = 1;
  v141 = *sub_23C4C126C(a2, "median3", 7uLL);
  *(v141 + 8) = sub_23C4C1364;
  *(v141 + 16) = 0;
  *(v141 + 24) = 7;
  *(v141 + 28) = 0;
  *(v141 + 29) = 1;
  v142 = *sub_23C4C126C(a2, "fmedian3", 8uLL);
  *(v142 + 8) = sub_23C4C081C;
  *(v142 + 16) = 0;
  *(v142 + 24) = 7;
  *(v142 + 28) = 0;
  *(v142 + 29) = 1;
  v143 = *sub_23C4C126C(a2, "fast_fmedian3", 0xDuLL);
  *(v143 + 8) = sub_23C4C0BF4;
  *(v143 + 16) = 0;
  *(v143 + 24) = 7;
  *(v143 + 28) = 0;
  *(v143 + 29) = 1;
  v144 = *sub_23C4C126C(a2, "projective_coordinates", 0x16uLL);
  *(v144 + 8) = sub_23C4C0CE8;
  *(v144 + 16) = 0;
  *(v144 + 24) = 3;
  *(v144 + 28) = 0;
  v145 = *sub_23C4C126C(a2, "get_unique_identifier_compute_pipeline_state", 0x2CuLL);
  *(v145 + 8) = sub_23C4C1230;
  *(v145 + 16) = 0;
  *(v145 + 24) = 3;
  *(v145 + 28) = 0;
  *(v145 + 29) = 1;
  v146 = *sub_23C4C126C(a2, "get_unique_identifier_render_pipeline_state", 0x2BuLL);
  *(v146 + 8) = sub_23C4C1230;
  *(v146 + 16) = 0;
  *(v146 + 24) = 3;
  *(v146 + 28) = 0;
  *(v146 + 29) = 1;
  v147 = *sub_23C4C126C(a2, "get_unique_identifier_indirect_command_buffer", 0x2DuLL);
  *(v147 + 8) = sub_23C4C1230;
  *(v147 + 16) = 0;
  *(v147 + 24) = 3;
  *(v147 + 28) = 0;
  *(v147 + 29) = 1;
  result = sub_23C4C126C(a2, "get_threads_per_simdgroup", 0x19uLL);
  v149 = *result;
  *(v149 + 8) = sub_23C4C1008;
  *(v149 + 16) = 0;
  *(v149 + 24) = 7;
  *(v149 + 28) = 0;
  return result;
}

void sub_23C49DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a3, __p);
  if ((atomic_load_explicit(&qword_27E1F7328, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F7328))
    {
      qword_27E1F7318 = 0;
      unk_27E1F7320 = 0;
      __cxa_guard_release(&qword_27E1F7328);
    }
  }

  operator new();
}

void sub_23C49DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a3, __p);
  if ((atomic_load_explicit(&qword_27E1F7310, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F7310))
    {
      qword_27E1F7300 = 0;
      *algn_27E1F7308 = 0;
      __cxa_guard_release(&qword_27E1F7310);
    }
  }

  operator new();
}

void sub_23C49DCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, "pds_patchup_compute");
  sub_23C4AF200(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&qword_27E1F72F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F72F8))
    {
      qword_27E1F72E8 = 0;
      unk_27E1F72F0 = 0;
      __cxa_guard_release(&qword_27E1F72F8);
    }
  }

  operator new();
}

void sub_23C49DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, "gpu_gather_compute");
  sub_23C4AF200(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&qword_27E1F72E0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F72E0))
    {
      qword_27E1F72D0 = 0;
      *algn_27E1F72D8 = 0;
      __cxa_guard_release(&qword_27E1F72E0);
    }
  }

  operator new();
}

uint64_t sub_23C49E398(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &unk_23C53270F + 9 * a2;
  v12 = *v11;
  llvm::FixedVectorType::get();
  v13 = llvm::UndefValue::get();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = (*(*a1 + 568))(a1, a4, v11[i + 5], v11[i + 1], a5, a6);
      v16 = sub_23C505300(a1, v15, a3);
      v21 = 257;
      v17 = a1[24];
      v18 = llvm::ConstantInt::get();
      v13 = sub_23C505AA8((a1 + 1), v13, v16, v18, v20);
    }
  }

  return v13;
}

uint64_t sub_23C49E4C4(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[24];
  v13 = llvm::ConstantInt::get();
  v14 = &unk_23C53270F + 9 * a2;
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    do
    {
      v23 = 257;
      v17 = a1[24];
      v18 = llvm::ConstantInt::get();
      v19 = sub_23C5057E8((a1 + 1), a4, v18, v22);
      v20 = (*(*a1 + 576))(a1, v19, v14[v16 + 1], v14[v16 + 5], a5, a6);
      v23 = 257;
      v13 = sub_23C49A98C((a1 + 1), v13, v20, v22);
      ++v16;
    }

    while (v15 != v16);
  }

  return sub_23C505300(a1, v13, a3);
}

uint64_t sub_23C49E64C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  return (*(*a1 + 616))(a1, v5, a3, a2);
}

uint64_t sub_23C49E68C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  v5 = llvm::ConstantInt::get();
  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    v20 = 257;
    v8 = *(a1 + 192);
    v9 = llvm::ConstantInt::get();
    v10 = sub_23C5057E8(a1 + 8, a2, v9, v19);
    if (i == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 10;
    }

    v12 = sub_23C5066D8(a1, v10, v11, 0);
    v13 = *(a1 + 192);
    v20 = 257;
    v14 = sub_23C49B1E4(a1 + 8, v12, v13, 0, v19);
    v20 = 257;
    v15 = *v14;
    v16 = llvm::ConstantInt::get();
    v17 = sub_23C49A668(a1 + 8, v14, v16, v19);
    v20 = 257;
    result = sub_23C49A98C(a1 + 8, v5, v17, v19);
    v5 = result;
    v6 += 10;
  }

  return result;
}

uint64_t sub_23C49E7B8(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5, int a6)
{
  v10 = sub_23C504E2C(a1, a2, 1);
  v30 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (a1 + 8));
  v32 = *(a1 + 104);
  v11 = *(a1 + 160);
  v12 = llvm::ConstantFP::get();
  v13 = *(a1 + 160);
  v14 = llvm::ConstantFP::get();
  v15 = (*(*a1 + 72))(a1, &v30, v10, v12, v14, 0);
  if (v31)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = *(a1 + 160);
  v17 = llvm::ConstantFP::get();
  v29 = 257;
  v33 = sub_23C49EA2C(a1 + 8, v15, v17, v28);
  v18 = *(a1 + 1160);
  if (v18)
  {
    v19 = strlen(*(a1 + 1160));
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_23C49EB10(a1, v18, v19, *(a1 + 192), *(a1 + 160));
  v29 = 257;
  v21 = sub_23C497A7C(a1 + 8, **(*v20 + 16), v20, &v33, 1, v28);
  v22 = v21;
  if ((a4 + a3) <= 0x1F && a6)
  {
    v29 = 257;
    v23 = *v21;
    v24 = llvm::ConstantInt::get();
    v22 = sub_23C49A8E0(a1 + 8, v22, v24, v28);
  }

  v29 = 257;
  v25 = *v22;
  v26 = llvm::ConstantInt::get();
  return sub_23C49A668(a1 + 8, v22, v26, v28);
}

uint64_t sub_23C49EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 18, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    sub_23C497F98(a1, v7);
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C49EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  __src = a5;
  v12[0] = v13;
  v12[1] = 0x100000000;
  sub_23C49BA18(v12, &__src, v12);
  llvm::FunctionType::get();
  v6 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23C49EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (*(a3 + 16) >= 0x15u)
  {
    a3 = 0;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    a4 = 0;
  }

  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = (*(**(a1 + 72) + 184))(*(a1 + 72));
    if (v5)
    {
      v9 = *(v5 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_23C49B15C(a1, v5, a5);
    }
  }

  return v5;
}

uint64_t sub_23C49EC90(uint64_t a1, uint64_t *a2, int a3, int a4, int a5, int a6)
{
  v40 = 257;
  v12 = *a2;
  v13 = llvm::ConstantInt::get();
  v14 = sub_23C49B560(a1 + 8, a2, v13, v39);
  v15 = *(a1 + 184);
  v40 = 257;
  v16 = sub_23C49B1E4(a1 + 8, v14, v15, 0, v39);
  v17 = v16;
  if (a6)
  {
    v40 = 257;
    v18 = *v16;
    v19 = llvm::ConstantInt::get();
    v20 = sub_23C49A668(a1 + 8, v17, v19, v39);
    v38[16] = 257;
    v21 = *v20;
    v22 = llvm::ConstantInt::get();
    if (*(v20 + 16) > 0x14u || (v22 ? (v23 = *(v22 + 16) > 0x14u) : (v23 = 1), v23))
    {
      v40 = 257;
      v24 = llvm::BinaryOperator::Create();
      sub_23C49B15C((a1 + 8), v24, v38);
    }

    else
    {
      v36 = (*(**(a1 + 80) + 168))(*(a1 + 80), v20, v22, 0);
      v24 = v36;
      if (v36)
      {
        v37 = *(v36 + 16) >= 0x1Cu;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        sub_23C49B15C((a1 + 8), v36, v38);
      }
    }

    if (a5)
    {
      v25 = *(a1 + 184);
      v26 = llvm::ConstantInt::get();
      v24 = sub_23C506630(a1, v24, v26, 38);
    }

    v27 = *(a1 + 160);
    v40 = 257;
    v28 = sub_23C49EF30(a1 + 8, v24, v27, v39);
  }

  else
  {
    if ((a4 + a3) <= 0x1F)
    {
      v40 = 257;
      v29 = *v16;
      v30 = llvm::ConstantInt::get();
      v17 = sub_23C49A8E0(a1 + 8, v17, v30, v39);
    }

    v31 = *(a1 + 160);
    v40 = 257;
    v28 = sub_23C49EF94(a1 + 8, v17, v31, v39);
  }

  v32 = v28;
  if (a5)
  {
    v33 = *(a1 + 160);
    v34 = llvm::ConstantFP::get();
    v40 = 257;
    return sub_23C49EA2C(a1 + 8, v32, v34, v39);
  }

  return v32;
}

uint64_t sub_23C49EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 44, a2, a3, a4);
}

uint64_t sub_23C49EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 43, a2, a3, a4);
}

uint64_t sub_23C49EFF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12 && (v7 = *(v6 + 32), v7 != 1))
  {
    v12 = *(a1 + 160);
    v13 = *(v6 + 32);
    llvm::FixedVectorType::get();
    v9 = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v23 = 257;
        v15 = *(a1 + 192);
        v16 = llvm::ConstantInt::get();
        v17 = sub_23C5057E8(a1 + 8, a2, v16, v22);
        v24 = sub_23C50593C(a1, v17, 2);
        v25 = 0;
        v18 = *(a1 + 192);
        v25 = llvm::ConstantInt::get();
        v23 = 257;
        v19 = sub_23C497A7C(a1 + 8, *(a3 + 24), a3, &v24, 2, v22);
        v23 = 257;
        v20 = *(a1 + 192);
        v21 = llvm::ConstantInt::get();
        v9 = sub_23C505AA8(a1 + 8, v9, v19, v21, v22);
      }
    }
  }

  else
  {
    v24 = sub_23C50593C(a1, a2, 2);
    v8 = *(a1 + 192);
    v25 = llvm::ConstantInt::get();
    v23 = 257;
    v9 = sub_23C497A7C(a1 + 8, *(a3 + 24), a3, &v24, 2, v22);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23C49F1B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    v6 = sub_23C50593C(a1, a2, 4);
    goto LABEL_8;
  }

  v5 = *(*a2 + 32);
  v6 = sub_23C50593C(a1, a2, 4);
  if (v5 == 1)
  {
LABEL_8:
    v19 = v6;
    v14 = *(a1 + 192);
    v20 = llvm::ConstantInt::get();
    v18 = 257;
    v8 = sub_23C497A7C(a1 + 8, *(a3 + 24), a3, &v19, 2, v17);
    goto LABEL_9;
  }

  v7 = *(a1 + 160);
  llvm::FixedVectorType::get();
  v8 = llvm::UndefValue::get();
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v19 = v6;
      v20 = 0;
      v10 = *(a1 + 192);
      v20 = llvm::ConstantInt::get();
      v18 = 257;
      v11 = sub_23C497A7C(a1 + 8, *(a3 + 24), a3, &v19, 2, v17);
      v18 = 257;
      v12 = *(a1 + 192);
      v13 = llvm::ConstantInt::get();
      v8 = sub_23C505AA8(a1 + 8, v8, v11, v13, v17);
    }
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C49F34C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a5 + a2;
  v13 = a6 + a3;
  v14 = a7 + a4;
  sub_23C49F8D0(&v65, &unk_23C53F34D);
  v15 = (*(**(a1 + 792) + 24))(*(a1 + 792), a8);
  v16 = (*(**(a1 + 792) + 16))(*(a1 + 792));
  v17 = v16;
  if (v12 <= v15)
  {
    if (v14 <= 0x10 && v13 <= v16)
    {
      v31 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v59, v12);
    v18 = std::string::insert(&v59, 0, " buffers (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, "/");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = (*(**(a1 + 792) + 24))(*(a1 + 792), a8);
    std::to_string(&__p, v22);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v61, p_p, size);
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v62, ")");
    v28 = v27->__r_.__value_.__r.__words[2];
    v63 = *&v27->__r_.__value_.__l.__data_;
    v64 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63;
    }

    if (v64 >= 0)
    {
      v30 = HIBYTE(v64);
    }

    else
    {
      v30 = *(&v63 + 1);
    }

    std::string::append(&v65, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v13 > v17)
  {
    std::to_string(&v59, v13);
    v32 = std::string::insert(&v59, 0, " textures (");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v60, "/");
    v35 = v34->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = (*(**(a1 + 792) + 16))(*(a1 + 792));
    std::to_string(&__p, v36);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v61, v37, v38);
    v40 = v39->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v62, ")");
    v42 = v41->__r_.__value_.__r.__words[2];
    v63 = *&v41->__r_.__value_.__l.__data_;
    v64 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v43 = &v63;
    }

    else
    {
      v43 = v63;
    }

    if (v64 >= 0)
    {
      v44 = HIBYTE(v64);
    }

    else
    {
      v44 = *(&v63 + 1);
    }

    std::string::append(&v65, v43, v44);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v14 >= 0x11)
  {
    std::to_string(&v59, v14);
    v45 = std::string::insert(&v59, 0, " samplers (");
    v46 = v45->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v60, "/");
    v48 = v47->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v61, v49, v50);
    v52 = v51->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v62, ")");
    v54 = v53->__r_.__value_.__r.__words[2];
    v63 = *&v53->__r_.__value_.__l.__data_;
    v64 = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v55 = &v63;
    }

    else
    {
      v55 = v63;
    }

    if (v64 >= 0)
    {
      v56 = HIBYTE(v64);
    }

    else
    {
      v56 = *(&v63 + 1);
    }

    std::string::append(&v65, v55, v56);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  v31 = 1;
LABEL_80:
  *a9 = v31;
  v57 = (a9 + 8);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v57 = v65;
  }
}

_BYTE *sub_23C49F8D0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *sub_23C49F988(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_23C496CE8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_23C49FA2C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

llvm::Value *sub_23C49FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 800);
  v8 = llvm::IntegerType::get();
  v9 = *(a1 + 1376);
  if (v9)
  {
    v10 = strlen(*(a1 + 1376));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23C49EB10(a1, v9, v10, *(a1 + 144), v8);
  v14 = 257;
  v18 = sub_23C49B1E4(a1 + 8, a3, v8, 1, v13);
  v14 = 257;
  return sub_23C497A7C(a1 + 8, *(v11 + 24), v11, &v18, 1, v13);
}

llvm::Value *sub_23C49FB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  sub_23C497620(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = *(a1 + 1368);
  if (v5)
  {
    v6 = strlen(*(a1 + 1368));
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_23C49EB10(a1, v5, v6, *(a1 + 144), *(a1 + 160));
  v10 = 257;
  return sub_23C497A7C(a1 + 8, *(v7 + 24), v7, &v14, 1, v9);
}

uint64_t sub_23C49FC1C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v36 = *a2;
  v37 = *(a2 + 16);
  if (v37)
  {
    llvm::MetadataTracking::track();
  }

  v38 = *(a2 + 24);
  sub_23C497620(a1, &v36);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 1))
  {
    v8 = sub_23C505670(a1, a3, 3, 1);
    v9 = a1[33];
    v10 = llvm::UndefValue::get();
    v11 = *(*v8 + 32);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v35 = 257;
        v13 = a1[24];
        v14 = llvm::ConstantInt::get();
        v15 = sub_23C5057E8((a1 + 1), v8, v14, v34);
        v31 = *(a1 + 7);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 1));
        v33 = *(a1 + 26);
        v16 = a1[23];
        v35 = 257;
        v17 = sub_23C49ACF8((a1 + 1), 39, v15, v16, v34);
        v18 = (*(*a1 + 144))(a1, &v31, v17, 0, a1[19]);
        if (v32)
        {
          llvm::MetadataTracking::untrack();
        }

        v35 = 257;
        v19 = a1[24];
        v20 = llvm::ConstantInt::get();
        v10 = sub_23C505AA8((a1 + 1), v10, v18, v20, v34);
      }
    }

    v28 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 1));
    v30 = *(a1 + 26);
    v35 = 257;
    v21 = a1[24];
    v22 = llvm::ConstantInt::get();
    v23 = sub_23C5057E8((a1 + 1), a3, v22, v34);
    v24 = (*(*a1 + 88))(a1, &v28, v23, 8, 0, 32);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }

    v25 = a1[19];
    v35 = 257;
    v26 = sub_23C49FEB4((a1 + 1), v24, v25, v34);
    return sub_23C5067B4(a1, v10, v26);
  }

  return a3;
}

uint64_t sub_23C49FEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 45, a2, a3, a4);
}

uint64_t sub_23C49FF18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = vdupq_n_s64(a3);
  do
  {
    if (((*(a2 + 32) >> v3) & 1) == 0)
    {
      goto LABEL_23;
    }

    v7 = *(a2 + v4);
    v8 = ((v7 >> 15) * *(a1 + 828)) >> 1;
    v9 = v7 & 0x1F;
    if (v9 > 0x13)
    {
      goto LABEL_14;
    }

    if (((1 << v9) & 0x3E3C0) != 0)
    {
      v10 = vshlq_u32(xmmword_23C5324C0, vdupq_n_s32(v8));
      v11.i64[0] = v10.i32[2];
      v11.i64[1] = v10.i32[3];
      v12 = v11;
      v11.i64[0] = v10.i32[0];
      v11.i64[1] = v10.i32[1];
      v13 = vbicq_s8(xmmword_23C5324C0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v11)), vceqzq_s64(vandq_s8(v6, v12))));
    }

    else
    {
      if (((1 << v9) & 0x41C00) == 0)
      {
        if (v9 == 19)
        {
          if ((a3 & (1 << v8)) != 0)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = 2 << v8;
          v25 = v23 | 0xE;
        }

        else
        {
LABEL_14:
          if (v9 - 2 >= 4)
          {
            v22 = 0;
            goto LABEL_22;
          }

          if ((a3 & (1 << v8)) != 0)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = 2 << v8;
          v25 = v23 | 0xC;
        }

        if ((a3 & v24) != 0)
        {
          v22 = v25;
        }

        else
        {
          v22 = v23;
        }

        goto LABEL_22;
      }

      v14 = vdupq_n_s32(v8);
      v15 = vshlq_u32(xmmword_23C5324C0, v14);
      v16.i64[0] = v15.i32[2];
      v16.i64[1] = v15.i32[3];
      v17 = v16;
      v16.i64[0] = v15.i32[0];
      v16.i64[1] = v15.i32[1];
      v18 = vbicq_s8(xmmword_23C5324D0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v17))));
      v19 = vshlq_u32(xmmword_23C5324E0, v14);
      v16.i64[0] = v19.i32[2];
      v16.i64[1] = v19.i32[3];
      v20 = v16;
      v16.i64[0] = v19.i32[0];
      v16.i64[1] = v19.i32[1];
      v13 = vorrq_s8(vbicq_s8(xmmword_23C5324F0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v20)))), v18);
    }

    v21 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v22 = v21.i32[0] | v21.i32[1];
LABEL_22:
    v5 |= ((-1 << (v7 >> 5)) & (((v22 & ~(-1 << (v7 >> 5))) >> ((v7 >> 5) - 1) << 31) >> 31) & 0xF | v22 & ~(-1 << (v7 >> 5))) << v4;
LABEL_23:
    v4 += 4;
    ++v3;
  }

  while (v4 != 32);
  return v5;
}

void *sub_23C4A00E4@<X0>(void *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 0;
  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 31) = 0;
  v5 = 35;
  if (a2 <= 9)
  {
    if ((a2 - 2) >= 4)
    {
      if ((a2 - 6) >= 4)
      {
        goto LABEL_21;
      }

      v5 = 36;
    }
  }

  else if (a2 < 13)
  {
    v5 = 37;
  }

  else if ((a2 - 13) >= 5)
  {
    if (a2 == 18)
    {
      v4 = result[34];
      *a4 = v4;
      goto LABEL_21;
    }

    if (a2 != 19)
    {
LABEL_21:
      *(a4 + 8) = v4;
LABEL_22:
      *(a4 + 16) = v4;
      switch(a2)
      {
        case 2:
        case 6:
        case 14:
          *(a4 + 33) = 257;
          *(a4 + 36) = xmmword_23C532500;
          goto LABEL_25;
        case 3:
        case 7:
        case 10:
        case 15:
          goto LABEL_23;
        case 4:
        case 8:
        case 11:
          *(a4 + 34) = 1;
          break;
        case 13:
        case 18:
          *(a4 + 33) = 1;
          goto LABEL_26;
        case 16:
          *(a4 + 33) = 257;
          v8 = 1.251;
          if (a3)
          {
            v8 = 1.6689;
          }

          v9 = -0.75294;
          if (a3)
          {
            v9 = -0.5271;
          }

          *(a4 + 36) = v9;
          *(a4 + 40) = 0;
          *(a4 + 44) = v8;
          *(a4 + 48) = 1065353216;
          *(a4 + 52) = 1;
          goto LABEL_27;
        default:
          return result;
      }

      return result;
    }
  }

  else
  {
    v5 = 33;
  }

  v4 = result[v5];
  *a4 = v4;
  if (a2 <= 9)
  {
    if ((a2 - 2) < 2)
    {
      *(a4 + 8) = result[33];
      v4 = result[35];
      goto LABEL_22;
    }

    if ((a2 - 6) < 2)
    {
      *(a4 + 8) = result[34];
      v4 = result[36];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2 != 10)
  {
    if (a2 == 19)
    {
      v6 = result[36];
      *(a4 + 8) = v6;
      *(a4 + 16) = v6;
      *(a4 + 24) = 0x200000001;
      return result;
    }

    goto LABEL_21;
  }

  v7 = result[37];
  *(a4 + 8) = result[34];
  *(a4 + 16) = v7;
LABEL_23:
  *(a4 + 33) = 1;
  *(a4 + 36) = xmmword_23C532510;
LABEL_25:
  *(a4 + 52) = 1;
LABEL_26:
  if ((a2 - 14) <= 2)
  {
LABEL_27:
    *(a4 + 32) = 1;
  }

  return result;
}

uint64_t sub_23C4A0310(uint64_t a1, uint64_t a2)
{
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  sub_23C497620(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1448))
  {
    v4 = strlen(*(a1 + 1448));
  }

  v5 = *(a1 + 192);
  v6 = sub_23C4A0414(a1);
  v12 = 257;
  v7 = sub_23C497A7C(a1 + 8, **(*v6 + 16), v6, 0, 0, v11);
  v8 = *(a1 + 192);
  v9 = llvm::ConstantInt::get();
  v12 = 257;
  return sub_23C497D84((a1 + 8), 32, v7, v9, v11);
}

uint64_t sub_23C4A0414(uint64_t a1)
{
  llvm::FunctionType::get();
  v2 = *(a1 + 320);
  llvm::Module::getOrInsertFunction();
  return v3;
}

uint64_t sub_23C4A0498(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 176);
  v7 = **a3;
  v18[0] = *a3;
  v18[1] = v6;
  llvm::StructType::get();
  v8 = llvm::UndefValue::get();
  v14 = 0;
  v19 = 257;
  v9 = sub_23C49A744(a1 + 8, v8, a3, &v14, 1, v18);
  v10 = *(a1 + 176);
  v11 = llvm::ConstantInt::get();
  v14 = 1;
  v19 = 257;
  result = sub_23C49A744(a1 + 8, v9, v11, &v14, 1, v18);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4A05CC(void *a1, __int128 *a2, int a3, uint64_t a4, unsigned int *a5, llvm::Type *this)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v26 = v11;
  v12 = llvm::TypeSize::operator unsigned long long();
  v13 = *a5;
  v14 = *a5 & 0x1F;
  v15 = *a5 >> 5;
  v24 = this;
  if (v14 <= 0x16)
  {
    if (((1 << v14) & 0x3E3C0) != 0)
    {
      v16 = 2 * v15;
      goto LABEL_11;
    }

    if (((1 << v14) & 0x41C00) != 0)
    {
      v16 = 4 * v15;
      goto LABEL_11;
    }

    if (((1 << v14) & 0x780000) != 0)
    {
      v16 = 4;
      goto LABEL_11;
    }
  }

  if (v14 - 2 >= 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a5 >> 5;
  }

LABEL_11:
  if (v12 == 32)
  {
    v31 = *a2;
    v32 = *(a2 + 2);
    if (v32)
    {
      llvm::MetadataTracking::track();
      v13 = *a5;
    }

    v33 = *(a2 + 6);
    v17 = (*(*a1 + 216))(a1, &v31, (v13 >> 15), a4);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v18 = a1[24];
    llvm::FixedVectorType::get();
    v17 = llvm::UndefValue::get();
    if (v16)
    {
      v19 = 0;
      do
      {
        v28 = *a2;
        v29 = *(a2 + 2);
        if (v29)
        {
          llvm::MetadataTracking::track();
        }

        v30 = *(a2 + 6);
        v20 = (*(*a1 + 216))(a1, &v28, v19 + (*a5 >> 15), a4);
        if (v29)
        {
          llvm::MetadataTracking::untrack();
        }

        v27 = 257;
        v21 = a1[24];
        v22 = llvm::ConstantInt::get();
        v17 = sub_23C505AA8((a1 + 1), v17, v20, v22, &PrimitiveSizeInBits);
        ++v19;
      }

      while ((v16 + 3) >> 2 != v19);
    }
  }

  v27 = 257;
  return sub_23C49ACF8((a1 + 1), 49, v17, v24, &PrimitiveSizeInBits);
}

uint64_t sub_23C4A0838(void *a1, __int128 *a2, int a3, uint64_t a4, unsigned int *a5, llvm::Type *this, uint64_t a7)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v34 = v12;
  v13 = llvm::TypeSize::operator unsigned long long();
  v14 = *a5;
  v15 = *a5 & 0x1F;
  v16 = *a5 >> 5;
  if (v15 <= 0x16)
  {
    if (((1 << v15) & 0x3E3C0) != 0)
    {
      v17 = 2 * v16;
      goto LABEL_11;
    }

    if (((1 << v15) & 0x41C00) != 0)
    {
      v17 = 4 * v16;
      goto LABEL_11;
    }

    if (((1 << v15) & 0x780000) != 0)
    {
      v17 = 4;
      goto LABEL_11;
    }
  }

  if (v15 - 2 >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a5 >> 5;
  }

LABEL_11:
  if (v13 == 32)
  {
    v36 = *a2;
    v37 = *(a2 + 2);
    if (v37)
    {
      llvm::MetadataTracking::track();
      v14 = *a5;
    }

    v38 = *(a2 + 6);
    v18 = (v14 >> 15);
    v19 = a1[24];
    v35 = 257;
    v20 = sub_23C49ACF8((a1 + 1), 49, a7, v19, &PrimitiveSizeInBits);
    result = (*(*a1 + 208))(a1, &v36, v18, v20, a4);
    if (v37)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v22 = a1[24];
    v23 = llvm::FixedVectorType::get();
    v35 = 257;
    result = sub_23C49ACF8((a1 + 1), 49, a7, v23, &PrimitiveSizeInBits);
    if (v17)
    {
      v24 = result;
      v25 = 0;
      v26 = (v17 + 3) >> 2;
      do
      {
        v35 = 257;
        v27 = a1[24];
        v28 = llvm::ConstantInt::get();
        v29 = sub_23C5057E8((a1 + 1), v24, v28, &PrimitiveSizeInBits);
        v30 = *a2;
        v31 = *(a2 + 2);
        if (v31)
        {
          llvm::MetadataTracking::track();
        }

        v32 = *(a2 + 6);
        result = (*(*a1 + 208))(a1, &v30, v25 + (*a5 >> 15), v29, a4);
        if (v31)
        {
          result = llvm::MetadataTracking::untrack();
        }

        ++v25;
      }

      while (v26 != v25);
    }
  }

  return result;
}

uint64_t sub_23C4A0AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  sub_23C497620(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 264);
  v7 = llvm::ConstantFP::get();
  v20 = 257;
  v8 = sub_23C49EA2C(a1 + 8, a3, v7, v19);
  v9 = *(a1 + 264);
  v10 = llvm::ConstantFP::get();
  v18 = 257;
  v11 = sub_23C4A0BD4(a1 + 8, v8, v10, v17);
  v12 = *(a1 + 288);
  v20 = 257;
  v13 = sub_23C49B2C8(a1 + 8, v11, v12, v19);
  v14 = *(a1 + 288);
  v15 = llvm::ConstantInt::get();
  v18 = 257;
  return sub_23C49A668(a1 + 8, v13, v15, v17);
}

uint64_t sub_23C4A0BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 14, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    sub_23C497F98(a1, v7);
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4A0CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *a2;
  v34 = *(a2 + 16);
  if (v34)
  {
    llvm::MetadataTracking::track();
  }

  v35 = *(a2 + 24);
  sub_23C497620(a1, &v33);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 288);
  v7 = llvm::ConstantInt::get();
  v37 = 257;
  v8 = sub_23C49B560(a1 + 8, a3, v7, v36);
  v9 = *(a1 + 264);
  v37 = 257;
  v10 = sub_23C49EF94(a1 + 8, v8, v9, v36);
  v11 = *(a1 + 264);
  v12 = llvm::ConstantFP::get();
  v32 = 257;
  v13 = sub_23C4A0EC4(a1 + 8, v10, v12, v31);
  v14 = *(a1 + 264);
  v15 = llvm::ConstantFP::get();
  v37 = 257;
  v16 = sub_23C49EA2C(a1 + 8, v13, v15, v36);
  v28 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
  v30 = *(a1 + 104);
  v37 = 257;
  v17 = *(a1 + 192);
  v18 = llvm::ConstantInt::get();
  v19 = sub_23C5057E8(a1 + 8, v16, v18, v36);
  v20 = *(a1 + 160);
  v21 = llvm::ConstantFP::get();
  v22 = *(a1 + 160);
  v23 = llvm::ConstantFP::get();
  v24 = (*(*a1 + 72))(a1, &v28, v19, v21, v23, 0);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v37 = 257;
  v25 = *(a1 + 192);
  v26 = llvm::ConstantInt::get();
  return sub_23C505AA8(a1 + 8, v16, v24, v26, v36);
}

uint64_t sub_23C4A0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 16, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    sub_23C497F98(a1, v7);
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4A0FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  sub_23C497620(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return (*(*a1 + 624))(a1, a5, a4);
      }

      else if (a3 == 8)
      {
        return (*(*a1 + 640))(a1, a5, a4);
      }
    }

    else if (a3 == 5)
    {
      return (*(*a1 + 592))(a1, a5, a4, 4, a6, a7);
    }

    else
    {
      v15 = (*(*a1 + 592))(a1, a5, a1[19], 4, a6, a7);
      v16 = a1[36];
      v18 = 257;
      return sub_23C49B2C8((a1 + 1), v15, v16, v17);
    }
  }

  else if (a3 >= 4)
  {
    if (a3 == 4)
    {
      return (*(*a1 + 592))(a1, a5, a4, 3, a6, a7);
    }
  }

  else
  {
    return (*(*a1 + 616))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_23C4A1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return (*(*a1 + 632))(a1, a5);
      }

      else if (a3 == 8)
      {
        return (*(*a1 + 648))(a1, a5);
      }
    }

    else if (a3 == 5)
    {
      return (*(*a1 + 600))(a1, a5, a6, a7);
    }

    else
    {
      return (*(*a1 + 584))(a1, a5);
    }
  }

  else if (a3 < 4)
  {
    return (*(*a1 + 608))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_23C4A1428(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  sub_23C497620(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 16)
  {
    v15 = 149;
    if (a5)
    {
      v15 = 147;
    }

    v16 = a1[v15];
    if (v16)
    {
      v17 = strlen(a1[v15]);
    }

    else
    {
      v17 = 0;
    }

    v21 = sub_23C49B938(a1, v16, v17, a1[20], a1[29], a1[24]);
    v20 = (*(*a1 + 560))(a1, a3, v21);
  }

  else
  {
    if (a4 != 8)
    {
      return 0;
    }

    v12 = 150;
    if (a5)
    {
      v12 = 148;
    }

    v13 = a1[v12];
    if (v13)
    {
      v14 = strlen(a1[v12]);
    }

    else
    {
      v14 = 0;
    }

    v19 = sub_23C49B938(a1, v13, v14, a1[20], a1[35], a1[24]);
    v20 = (*(*a1 + 552))(a1, a3, v19);
  }

  v18 = v20;
  if (a6 != 32)
  {
    v22 = a1[19];
    v25 = 257;
    return sub_23C49FEB4((a1 + 1), v20, v22, v24);
  }

  return v18;
}

uint64_t sub_23C4A161C(uint64_t a1, uint64_t a2, llvm::Constant *a3, llvm::Constant *a4, llvm::Constant *a5, char a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  sub_23C497620(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 0x40000000;
  v21 = sub_23C4A182C;
  v22 = &unk_278BBF060;
  v23 = a1;
  v24 = a6;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v12 = llvm::UndefValue::get();
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
    memset(v30, 0, sizeof(v30));
    sub_23C505D44(a1, a3, v32);
    sub_23C505D44(a1, a4, v31);
    sub_23C505D44(a1, a5, v30);
    v13 = *(*a3 + 32);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = v21(v20, *(v32 + i), *(v31 + i), *(v30 + i));
        v29 = 257;
        v16 = *(a1 + 192);
        v17 = llvm::ConstantInt::get();
        v12 = sub_23C505AA8(a1 + 8, v12, v15, v17, v28);
      }
    }
  }

  else
  {
    v12 = sub_23C4A182C(v20, a3, a4, a5);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_23C4A182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  if (*(a4 + 16) == 17)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (!a3 || *(a3 + 16) != 17)
  {
    goto LABEL_16;
  }

  v10 = *(a3 + 32);
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1) == v10 ? *(a3 + 40) : a3 + 24;
  if ((*(v11 + 28) & 7) != 3 || v9 == 0)
  {
    goto LABEL_16;
  }

  v30 = 0;
  v13 = llvm::detail::IEEEFloat::IEEEFloat(v31, 1.0);
  v14 = llvm::APFloatBase::IEEEdouble(v13);
  MEMORY[0x23EED4770](v32, v31, v14);
  llvm::detail::IEEEFloat::~IEEEFloat(v31);
  v15 = *(v9 + 32);
  llvm::APFloat::convert();
  isExactlyValue = llvm::ConstantFP::isExactlyValue();
  sub_23C4A1A98(v32);
  if (isExactlyValue)
  {
    v27 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (v8 + 8));
    v29 = *(v8 + 104);
    v17 = (*(*v8 + 40))(v8, &v27, a2, *(a1 + 40));
    if (v28)
    {
LABEL_19:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
LABEL_16:
    v24 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v8 + 8));
    v26 = *(v8 + 104);
    v18 = (*(*v8 + 56))(v8, &v24, a2, a3, *(a1 + 40));
    if (v25)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v8 + 8));
    v23 = *(v8 + 104);
    v17 = (*(*v8 + 48))(v8, &v21, v18, a4, *(a1 + 40));
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::detail::IEEEFloat *sub_23C4A1A98(llvm::detail::IEEEFloat *a1)
{
  v2 = *a1;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = v3 + 32 * v5 - 24;
        v7 = -32 * v5;
        do
        {
          v6 = sub_23C4A1A98(v6) - 32;
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x23EED50A0](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
  }

  return a1;
}

uint64_t sub_23C4A1B2C(uint64_t a1, __int128 *a2, llvm::Constant *a3, llvm::Constant *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = sub_23C4A1C80(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = sub_23C4A1C80(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = sub_23C4A1EE4(a1, &v12, v9, a4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4A1C80(uint64_t a1, uint64_t a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  sub_23C497620(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  sub_23C49F8D0(&v22, *(a1 + 1704));
  v8 = *a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 16);
  }

  if (v8 == *(a1 + 152))
  {
    v9 = ".f16";
  }

  else
  {
    v9 = ".f32";
  }

  std::string::append(&v22, v9);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v22;
  }

  else
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v12 = sub_23C49B938(a1, v10, size, v8, v8, v8);
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v13 = llvm::UndefValue::get();
    memset(v30, 0, 32);
    memset(v29, 0, sizeof(v29));
    sub_23C505D44(a1, a3, v30);
    sub_23C505D44(a1, a4, v29);
    v14 = *(*a3 + 32);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = *(v29 + i);
        v28[0] = v30[i];
        v28[1] = v16;
        v27 = 257;
        v17 = sub_23C497A7C(a1 + 8, *(v12 + 24), v12, v28, 2, v26);
        v27 = 257;
        v18 = *(a1 + 192);
        v19 = llvm::ConstantInt::get();
        v13 = sub_23C505AA8(a1 + 8, v13, v17, v19, v26);
      }
    }
  }

  else
  {
    v30[0] = a3;
    v30[1] = a4;
    v27 = 257;
    v13 = sub_23C497A7C(a1 + 8, *(v12 + 24), v12, v30, 2, v26);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_23C4A1EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  sub_23C497620(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*a3 != *a4)
  {
    sub_23C5060BC(a1, *(*a3 + 32), a4);
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4A1FE0(uint64_t a1, __int128 *a2, llvm::Constant *a3, llvm::Constant *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = sub_23C4A1C80(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = sub_23C4A1C80(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = sub_23C4A1EE4(a1, &v12, v9, a4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4A2134(uint64_t a1, uint64_t a2, llvm::Constant *a3, char a4)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1174405120;
  v10[2] = sub_23C4A225C;
  v10[3] = &unk_284F12978;
  v10[4] = a1;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  v14 = a4;
  v8 = sub_23C5063B8(a1, a3, v10);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *sub_23C4A225C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == 1 && *(v4 + 1712) != 1)
  {
    v5 = 1104;
  }

  else
  {
    v5 = 1096;
  }

  v6 = sub_23C4A2368(v4, &v8, a2, *(v4 + v5));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4A2310(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = a1 + 56;
  if (v2)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t sub_23C4A2320(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  result = a1 + 56;
  if (v4)
  {
    result = llvm::MetadataTracking::track();
  }

  *(a1 + 64) = *(a2 + 64);
  return result;
}

llvm::Value *sub_23C4A2368(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  sub_23C497620(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  sub_23C49F8D0(&v26, a4);
  std::string::append(&v26, ".");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v25, *(v8 + 32));
    v10 = std::string::insert(&v25, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v23 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v23 >= 0)
    {
      v13 = HIBYTE(v23);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v26, v12, v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(a1 + 152))
  {
    v16 = "f16";
  }

  else
  {
    v16 = "f32";
  }

  std::string::append(&v26, v16);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v19 = sub_23C49EB10(a1, v17, size, v8, v8);
  v24 = 257;
  v20 = sub_23C497A7C(a1 + 8, *(v19 + 24), v19, &v30, 1, __p);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t sub_23C4A2554(uint64_t a1)
{
  *a1 = &unk_284F128D8;
  *(a1 + 16) = "e-p:64:64:64-f32:32:32-i64:64:64-i32:32:32-i16:16:16-v32:32:32-n32-S64";
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  if (qword_27E1F6728 != -1)
  {
    dispatch_once(&qword_27E1F6728, &unk_284F12958);
  }

  *(a1 + 44) = 60;
  return a1;
}

uint64_t *sub_23C4A25DC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 12))
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = 0;
        v5 = 8 * v3;
        do
        {
          v6 = *(*v2 + v4);
          if (v6 != -8 && v6 != 0)
          {
            llvm::deallocate_buffer(v6, (*v6 + 33));
          }

          v4 += 8;
        }

        while (v5 != v4);
      }
    }

    free(*v2);

    JUMPOUT(0x23EED50C0);
  }

  return result;
}

void *sub_23C4A2690(char *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_23C496CF8();
  v2 = __p;
  sub_23C49F8D0(__p, a1);
  v3 = qword_27E1F6700;
  v4 = HIBYTE(v28);
  if (!qword_27E1F6700)
  {
    goto LABEL_39;
  }

  if (v28 >= 0)
  {
    v5 = HIBYTE(v28);
  }

  else
  {
    v5 = *&__p[8];
  }

  if (v28 < 0)
  {
    v2 = *__p;
  }

  v6 = &qword_27E1F6700;
  do
  {
    v7 = *(v3 + 55);
    if (v7 >= 0)
    {
      v8 = *(v3 + 55);
    }

    else
    {
      v8 = *(v3 + 40);
    }

    if (v7 >= 0)
    {
      v9 = (v3 + 32);
    }

    else
    {
      v9 = *(v3 + 32);
    }

    if (v5 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = memcmp(v9, v2, v10);
    v12 = v8 < v5;
    if (v11)
    {
      v12 = v11 < 0;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v6 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v6 == &qword_27E1F6700)
  {
    goto LABEL_39;
  }

  v15 = *(v6 + 55);
  if (v15 >= 0)
  {
    v16 = *(v6 + 55);
  }

  else
  {
    v16 = v6[5];
  }

  if (v15 >= 0)
  {
    v17 = v6 + 4;
  }

  else
  {
    v17 = v6[4];
  }

  if (v16 >= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v16;
  }

  v19 = memcmp(v2, v17, v18);
  v20 = v5 < v16;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v20)
  {
LABEL_39:
    v6 = &qword_27E1F6700;
  }

  if (v4 < 0)
  {
    operator delete(*__p);
  }

  if (v6 == &qword_27E1F6700)
  {
    v21 = 0;
  }

  else
  {
    v21 = v6 + 7;
    if (*(v6 + 79) < 0)
    {
      v21 = *v21;
    }

    v22 = sub_23C496E18();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(v6 + 55);
      if (v23 < 0)
      {
        v23 = v6[5];
      }

      v24 = *(v6 + 79);
      if (v24 < 0)
      {
        v24 = v6[8];
      }

      *__p = 136316162;
      *&__p[4] = "static const char *AGCEnv::getValue(const char *)";
      *&__p[12] = 2080;
      *&__p[14] = a1;
      v28 = 2048;
      v29 = v23;
      v30 = 2080;
      v31 = v21;
      v32 = 2048;
      v33 = v24;
      _os_log_debug_impl(&dword_23C496000, v22, OS_LOG_TYPE_DEBUG, "%s: %s[%lu] = %s[%lu]\n", __p, 0x34u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_23C4A28C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v42 = *a2;
  v43 = *(a2 + 16);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 24);
  sub_23C497620(a1, &v42);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 16) == 1 && (*a3 == *(a1 + 272) || *a3 == *(a1 + 264)))
  {
    if (*a4 == *(a4 + 4) && *(a4 + 8) == *(a4 + 12))
    {
      v10 = *a3;
      v11 = llvm::ConstantFP::get();
      v12 = *(a4 + 8);
      v13 = llvm::ConstantFP::get();
      v39 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v40, (a1 + 8));
      v41 = *(a1 + 104);
      a3 = (*(*a1 + 72))(a1, &v39, a3, v11, v13, a5);
      if (v40)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v14 = sub_23C505670(a1, a3, 3, 1);
      v46 = 257;
      v15 = *(a1 + 192);
      v16 = llvm::ConstantInt::get();
      v17 = sub_23C5057E8(a1 + 8, a3, v16, v45);
      v18 = *v14;
      v19 = *a4;
      v20 = llvm::ConstantFP::get();
      v21 = *v14;
      v22 = *(a4 + 8);
      v23 = llvm::ConstantFP::get();
      v24 = *v17;
      v25 = *(a4 + 4);
      v26 = llvm::ConstantFP::get();
      v27 = *v17;
      v28 = *(a4 + 12);
      v29 = llvm::ConstantFP::get();
      v36 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
      v38 = *(a1 + 104);
      v30 = (*(*a1 + 72))(a1, &v36, v14, v20, v23, a5);
      if (v37)
      {
        llvm::MetadataTracking::untrack();
      }

      v33 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
      v35 = *(a1 + 104);
      v31 = (*(*a1 + 72))(a1, &v33, v17, v26, v29, a5);
      if (v34)
      {
        llvm::MetadataTracking::untrack();
      }

      return sub_23C5067B4(a1, v30, v31);
    }
  }

  return a3;
}

uint64_t sub_23C4A2BD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v7 = *(v4 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (v4 + 8));
  v9 = *(v4 + 104);
  v5 = (*(*v4 + 136))(v4, &v7, a2, 0, *(*(*(a1 + 32) + 8) + 24));
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

int32x2_t *sub_23C4A2C80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36[32] = *MEMORY[0x277D85DE8];
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*(a1 + 48) + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (i[2] == a2)
          {
            v24 = (i + 3);
            goto LABEL_41;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v9)
            {
              v14 %= *&v9;
            }
          }

          else
          {
            v14 &= *&v9 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v30 = 1;
  v28 = 3;
  v29 = 0;
  v32 = 0;
  v31 = 0u;
  v33 = 1;
  v34 = v36;
  v35 = 0x800000000;
  if (!*&v9)
  {
    goto LABEL_34;
  }

  v15 = vcnt_s8(v9);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (v8 >= *&v9)
    {
      v16 = v8 % *&v9;
    }
  }

  else
  {
    v16 = v8 & (*&v9 - 1);
  }

  v17 = *(*(a1 + 48) + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (*&v19 == v8)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (*&v19 >= *&v9)
      {
        *&v19 %= *&v9;
      }
    }

    else
    {
      *&v19 &= *&v9 - 1;
    }

    if (*&v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  if (*&v18[2] != a2)
  {
    goto LABEL_33;
  }

  v24 = v18 + 3;
  sub_23C4A4068(&v31, &v28, 0);
  sub_23C4A4158(v25, a1, a2, a3, 0, &v18[3], &v31);
  sub_23C4A5714(&v31);
  v20 = v31;
  v18[10].i32[0] = HIDWORD(v30);
  v18[10].i32[1] = v20;
  v18[11] = vrev64_s32(*(&v31 + 4));
  v18[12] = a3;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  v21 = v29;
  v29 = 0;
  if (v21)
  {
    MEMORY[0x23EED50C0](v21, 0x1000C4052888210);
  }

LABEL_41:
  v22 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_23C4A328C(char *a1, char *a2)
{
  if (a2 != a1)
  {
    v3 = a2 - 40;
    do
    {
      v4 = *(v3 - 2);
      if (v3 != v4)
      {
        free(v4);
      }

      v5 = *(v3 - 8);
      if (v3 - 48 != v5)
      {
        free(v5);
      }

      v6 = v3 - 64;
      v3 -= 104;
    }

    while (v6 != a1);
  }
}

uint64_t sub_23C4A32F0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > a2 || v5 + 104 * v4 <= a2)
    {
      sub_23C4A3F54();
    }

    sub_23C4A3F54();
  }

  v6 = v5 + 104 * *(a1 + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (a2[2])
  {
    sub_23C4A3E4C(v6, a2);
  }

  *(v6 + 48) = v6 + 64;
  result = v6 + 48;
  *(v6 + 56) = 0x400000000;
  if (a2[14])
  {
    result = sub_23C4A3E4C(result, (a2 + 12));
  }

  *(v6 + 96) = a2[24];
  ++*(a1 + 8);
  return result;
}

uint64_t sub_23C4A33E0(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  sub_23C4A3B74(a1);
  sub_23C4A72DC(a1 + 1000, *(*(a1 + 152) + 104 * *(a1 + 160) - 96));
  sub_23C4A3B0C(a1);
  v26 = v28;
  v27 = 0x400000000;
  if (*(a1 + 64))
  {
    sub_23C4A3D80(&v26, a1 + 56);
    v29 = &v31;
    v30 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
    if (v27)
    {
      sub_23C4A3D80(&v33, &v26);
    }
  }

  else
  {
    v29 = &v31;
    v30 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
  }

  LODWORD(v36) = 0;
  sub_23C4A32F0(a1 + 152, &v29);
  if (v33 != v35)
  {
    free(v33);
  }

  if (v29 != &v31)
  {
    free(v29);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 152) + 104 * *(a1 + 160);
  *(v4 - 8) = *(v4 - 96);
  sub_23C49B500(v4 - 104, 0);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 8);
    v8 = 8 * v5;
    do
    {
      if (*v7)
      {
        v6 |= sub_23C4A3760(a1, *v7);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  LODWORD(v29) = 7;
  v30 = v32;
  v31 = 0x400000000;
  v36 = v38;
  v37 = 0x800000000;
  v39 = v41;
  v40 = 0x400000000;
  v41[4] = 0;
  v42 = 0;
  v43 = 0;
  if (v6)
  {
    sub_23C4A3AAC(a1);
    v43 = *(a1 + 24);
    sub_23C4A3888(a1, &v29);
  }

  sub_23C4A3B74(a1);
  v9 = *(a1 + 152) + 104 * *(a1 + 160);
  sub_23C4A3D80(a1 + 56, v9 - 56);
  v10 = *(a1 + 16);
  v11 = *(v9 - 104);
  v12 = *(v9 - 96);
  v13 = llvm::StructType::get();
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(a1 + 56) + 8 * v14;
    do
    {
      v16 = *(v15 - 8);
      v15 -= 8;
      v13 = llvm::ArrayType::get(v13, *(v16 + 16));
    }

    while (v15 != *(a1 + 56));
    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = *(a1 + 1056) - v17;
      v19 = *(a1 + 1008) - v17;
      *(a1 + 1056) = v18;
      *(a1 + 1008) = v19;
    }
  }

  --*(a1 + 1008);
  v20 = *(a1 + 160) - 1;
  *(a1 + 160) = v20;
  v21 = *(a1 + 152) + 104 * v20;
  v22 = *(v21 + 48);
  if (v22 != (v21 + 64))
  {
    free(v22);
  }

  if (*v21 != v21 + 16)
  {
    free(*v21);
  }

  sub_23C49B500(*(a1 + 152) + 104 * *(a1 + 160) - 104, v13);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v23 = *(a1 + 152) + 104 * *(a1 + 160);
  *(v23 - 8) = *(v23 - 96);
  sub_23C49B500(v23 - 104, 0);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t sub_23C4A3760(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a2;
    if (*a2)
    {
      break;
    }

    a2 = *(a2 + 8);
  }

  if (v3 <= 2)
  {

    return sub_23C4A33E0();
  }

  else
  {
    result = 0;
    if (v3 > 4)
    {
      switch(v3)
      {
        case 5:
          v5 = (a1 + 40);
          break;
        case 6:
          v5 = (a1 + 44);
          break;
        case 7:
          sub_23C4A3888(a1, a2);
          return 0;
        default:
          return result;
      }

LABEL_17:
      sub_23C4A3988(a1, a2, v5);
      return 1;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

      v5 = (a1 + 48);
      goto LABEL_17;
    }

    v6 = *(a1 + 64);
    if (v6 >= *(a1 + 68))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 56) + 8 * v6) = a2;
    ++*(a1 + 64);
    result = sub_23C4A3760(a1, *(a2 + 8));
    --*(a1 + 64);
  }

  return result;
}

uint64_t sub_23C4A3888(uint64_t a1, uint64_t a2)
{
  sub_23C4A72DC(a1 + 1000, *(*(a1 + 152) + 104 * *(a1 + 160) - 96));
  sub_23C4A72DC(a1 + 1000, *(a1 + 112));
  sub_23C4A3B0C(a1);
  sub_23C4A3D80(a2 + 176, a1 + 1048);
  v4 = *(a1 + 1008);
  if (v4)
  {
    v5 = *(a1 + 1000);
    v6 = 4 * v4;
    do
    {
      v7 = *(a1 + 24);
      v8 = *v5++;
      v9 = llvm::ConstantInt::get();
      sub_23C49B500(a2 + 96, v9);
      v6 -= 4;
    }

    while (v6);
  }

  v10 = *(a2 + 240);
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 56) + 8 * v11;
    do
    {
      v13 = *(v12 - 8);
      v12 -= 8;
      v10 = llvm::ArrayType::get(v10, *(v13 + 16));
    }

    while (v12 != *(a1 + 56));
  }

  result = sub_23C49B500(a1 + 104, v10);
  v15 = *(a1 + 64);
  v16 = *(a1 + 1008);
  if (v15)
  {
    v16 -= v15;
    *(a1 + 1056) -= v15;
  }

  *(a1 + 1008) = v16 - 2;
  return result;
}

uint64_t sub_23C4A3988(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C4A3AAC(a1);
  *(a2 + 92) = *a3;
  sub_23C4A3D80(a2 + 176, a1 + 1048);
  v6 = *(a1 + 1008);
  if (v6)
  {
    v7 = *(a1 + 1000);
    v8 = 4 * v6;
    do
    {
      v9 = *(a1 + 24);
      v10 = *v7++;
      v11 = llvm::ConstantInt::get();
      sub_23C49B500(a2 + 96, v11);
      v8 -= 4;
    }

    while (v8);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = 8 * v12;
    v15 = 1;
    do
    {
      v16 = *v13++;
      v15 *= *(v16 + 16);
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v15 = 1;
  }

  v17 = *(a1 + 24);
  v18 = *(*(a1 + 152) + 104 * *(a1 + 160) - 8);
  v19 = llvm::ConstantInt::get();
  sub_23C49B500(a2 + 96, v19);
  v20 = *(a1 + 24);
  v21 = llvm::ConstantInt::get();
  sub_23C49B500(a2 + 96, v21);
  v22 = *(a1 + 24);
  v23 = llvm::ConstantInt::get();
  result = sub_23C49B500(a2 + 96, v23);
  *a3 += v15;
  return result;
}

uint64_t sub_23C4A3AAC(uint64_t result)
{
  if (*(result + 112))
  {
    v1 = result;
    v2 = *(result + 152) + 104 * *(result + 160) - 104;
    v3 = *(result + 16);
    v4 = *(v1 + 104);
    v5 = llvm::StructType::get();
    result = sub_23C49B500(v2, v5);
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t sub_23C4A3B0C(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 56);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      sub_23C49B500(v2 + 1048, *(v5 + 24) | (*(v2 + 1008) << 32));
      result = sub_23C4A72DC(v2 + 1000, 0);
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_23C4A3B74(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 52);
  v4 = *(a1 + 53);
  v5 = llvm::ArrayType::get(v2, *(*(a1 + 8) + 1608));
  v6 = llvm::ArrayType::get(v5, *(a1 + 40));
  v7 = llvm::ArrayType::get(*(a1 + 32), *(*(a1 + 8) + 1612));
  v8 = llvm::ArrayType::get(v7, *(a1 + 44));
  v9 = llvm::ArrayType::get(*(a1 + 24), *(*(a1 + 8) + 1680));
  v10 = *(a1 + 32);
  llvm::ArrayType::get(v10, 0);
  v11 = *(a1 + 48);
  if (v11)
  {
    llvm::ArrayType::get(v2, v11);
  }

  if (*(a1 + 40))
  {
    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    llvm::ArrayType::get(v6, v12);
  }

  if (*(a1 + 44))
  {
    if (v4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    llvm::ArrayType::get(v8, v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    llvm::ArrayType::get(v9, v14);
    v15 = *(a1 + 40);
    if (v15)
    {
      llvm::ArrayType::get(v10, v15);
    }
  }

  v16 = *(a1 + 44);
  if (v16)
  {
    llvm::ArrayType::get(v10, v16);
  }

  if (*(a1 + 48) || *(a1 + 40))
  {
    v17 = *(a1 + 152) + 104 * *(a1 + 160) - 104;
  }

  else
  {
    v17 = *(a1 + 152) + 104 * *(a1 + 160) - 104;
    if (!*(a1 + 44))
    {
      v22 = *(a1 + 16);
      v19 = llvm::StructType::get();
      goto LABEL_22;
    }
  }

  v18 = *(a1 + 16);
  v19 = llvm::StructType::get();
LABEL_22:
  *(*v17 + 8 * *(v17 + 96)) = v19;
  result = sub_23C4A3AAC(a1);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4A3D80(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t sub_23C4A3E4C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 8 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 8 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 8 * v8), (*a2 + 8 * v8), 8 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

__n128 sub_23C4A4068(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  v4 = a1 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  *v13 = a2;
  v13[8] = a3;
  *&v13[12] = 0;
  *&v13[20] = 0;
  *&v13[24] = v7;
  v8 = *(v4 + 8);
  if (v8 >= *(v4 + 12))
  {
    if (v5 > v13 || v5 + 32 * v8 <= v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (v5 + 32 * *(a1 + 40));
  result = *v13;
  v11 = *&v13[16];
  *v9 = *v13;
  v9[1] = v11;
  ++*(a1 + 40);
  LODWORD(v9) = *(a1 + 24) * *(a2 + 16);
  v12 = *(a1 + 20) + a3;
  *(a1 + 20) = v12 + 1;
  *(a1 + 24) = v9;
  *(a2 + 24) = v12;
  return result;
}

void sub_23C4A4158(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int32x2_t *a7)
{
  v12 = a1;
  *&v115[4] = *MEMORY[0x277D85DE8];
  *a1 = 1;
  *(a1 + 1) = 0;
  v13 = (a1 + 8);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::string::push_back((a1 + 8), 123);
  v14 = *(a4 + 12);
  v15 = v114;
  v112 = v114;
  v113 = 0x400000000;
  if (v14 >= 5)
  {
    LODWORD(v113) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v16 = 0;
    v17 = vdupq_n_s64(v14 - 1);
    v18 = v115;
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_23C5324B0)));
      if (vuzp1_s16(v20, *v17.i8).u8[0])
      {
        *(v18 - 3) = 0;
      }

      if (vuzp1_s16(v20, *&v17).i8[2])
      {
        *(v18 - 2) = 0;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_23C532520)))).i32[1])
      {
        *(v18 - 1) = 0;
        *v18 = 0;
      }

      v16 += 4;
      v18 += 4;
    }

    while (((v14 + 3) & 0xC) != v16);
  }

  LODWORD(v113) = v14;
  v21 = *&a7[4] + 32 * a7[5].u32[0];
  if ((*(v21 - 16) & 1) == 0)
  {
    *(v21 - 16) = 1;
    *(v21 - 20) = a5;
  }

  a7[2] = vadd_s32(a7[2], 0x100000001);
  v22 = *(a6 + 16);
  v101 = v12;
  if (v22 != v14)
  {
    if (v22 <= v14)
    {
      if (*(a6 + 20) < v14)
      {
        v111[0] = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v22 != v14)
      {
        bzero((*(a6 + 8) + 8 * v22), 8 * v14 - 8 * v22);
      }
    }

    else
    {
      v23 = 8 * v14 - 8 * v22;
      v24 = (*(a6 + 8) + 8 * v22 - 8);
      do
      {
        v25 = *v24;
        *v24 = 0;
        if (v25)
        {
          MEMORY[0x23EED50C0](v25, 0x1000C4052888210);
        }

        --v24;
        v23 += 8;
      }

      while (v23);
    }

    *(a6 + 16) = v14;
    v12 = v101;
  }

  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      llvm::Type::getInt32Ty(*(a2 + 8), v15);
      v111[0] = llvm::ConstantInt::get();
      v111[1] = llvm::ConstantInt::get();
      v27 = *(a2 + 16);
      v112[i] = llvm::DataLayout::getIndexedOffsetInType();
    }
  }

  v99 = a4;
  v103 = *(a3 + 8);
  if (v103)
  {
    v28 = 0;
    v98 = a6;
    do
    {
      v110 = 0;
      v108 = -1;
      v109 = 0;
      if (sub_23C4A57A0(*(a3 - 8 * *(a3 + 8) + 8 * v28), "air.struct_type_info"))
      {
        v29 = *(a3 - 8 * *(a3 + 8) + 8 * (v28 + 1));
        if (v29 && ((*v29 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v29)) == 0)
        {
          v29 = 0;
        }

        v52 = v29 == 0;
        v30 = *v12;
        if (v52)
        {
          v30 = 0;
        }

        *v12 = v30;
        v28 += 2;
      }

      LODWORD(v111[0]) = v28;
      *v12 &= sub_23C506AF0(0, a3, v111, &v110 + 1);
      LODWORD(v111[0]) = v28 + 1;
      *v12 &= sub_23C506AF0(0, a3, v111, &v110);
      LODWORD(v111[0]) = v28 + 2;
      v31 = sub_23C506AF0(0, a3, v111, &v109);
      v32 = a3 - 8 * *(a3 + 8);
      v33 = *(v32 + 8 * (v28 + 3));
      if (v33)
      {
        if (*v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v32 + 8 * (v28 + 3));
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = v31 & *v12;
      if (!v34)
      {
        v35 = 0;
      }

      v36 = *(v32 + 8 * (v28 + 4));
      if (v36)
      {
        if (*v36)
        {
          v37 = 0;
        }

        else
        {
          v37 = v36;
        }
      }

      else
      {
        v37 = 0;
      }

      if (!v37)
      {
        v35 = 0;
      }

      *v12 = v35;
      llvm::MDString::getString(v34);
      llvm::MDString::getString(v37);
      v38 = v113;
      if (v113)
      {
        v39 = v112;
        do
        {
          v40 = v38 >> 1;
          v41 = &v39[4 * (v38 >> 1)];
          v43 = *v41;
          v42 = v41 + 1;
          v38 += ~(v38 >> 1);
          if (v43 < HIDWORD(v110))
          {
            v39 = v42;
          }

          else
          {
            v38 = v40;
          }
        }

        while (v38);
      }

      else
      {
        v39 = v112;
      }

      v44 = (v39 - v112) >> 2;
      v45 = *(a6 + 8) + 8 * v44;
      v46 = *(*(v99 + 16) + 8 * v44);
      if (*(v46 + 8) == 17)
      {
        operator new();
      }

      v100 = (v46 + 8);
      v28 += 5;
      while (v28 < v103)
      {
        v47 = *(a3 - 8 * *(a3 + 8) + 8 * v28);
        if (sub_23C4A57A0(v47, "air.render_target"))
        {
          goto LABEL_68;
        }

        if (!sub_23C4A57A0(v47, "air.indirect_argument"))
        {
          break;
        }

        LODWORD(v111[0]) = v28 + 1;
        if (sub_23C506AF0(0, a3, v111, &v108))
        {
          v108 += a5;
          operator new();
        }

        v48 = *(a3 - 8 * *(a3 + 8) + 8 * (v28 + 1));
        if (v48)
        {
          v49 = *v48;
          if (v49 <= 0x22 && ((0x7FFFFFFF0uLL >> v49) & 1) != 0)
          {
            String = llvm::MDString::getString(*&v48[-8 * *(v48 + 2) + 8]);
            *__c = 0;
            v106 = 0;
            if (v51 <= 20)
            {
              if (v51 > 17)
              {
                if (v51 == 18)
                {
                  if (*String == 0x6D6D6F632E726961 && *(String + 8) == 0x666675625F646E61 && *(String + 16) == 29285)
                  {
                    goto LABEL_168;
                  }
                }

                else if (v51 == 19)
                {
                  v58 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
                  if (v58 && *(String + 11) == 0x7265666675625F74)
                  {
LABEL_128:
                    v64 = *v100;
                    if (*v100 == 16)
                    {
                      LODWORD(v111[0]) = 2;
                      sub_23C506BD8(v48, v111, &v108, __c);
                      v65 = LODWORD(v111[0])++;
                      if (sub_23C4A57A0(*&v48[8 * LODWORD(v111[0]) + -8 * *(v48 + 2)], "air.arg_type_name"))
                      {
                        LODWORD(v111[0]) = v65 + 2;
                        v66 = llvm::MDString::getString(*&v48[8 * (v65 + 2) + -8 * *(v48 + 2)]);
                        v68 = v67 >= 5 && *v66 == 1634890337 && *(v66 + 4) == 121;
                        HIBYTE(v106) = v68;
                      }

                      v108 += a5;
                      sub_23C4A65EC();
                    }

                    v105 = 0;
                    v111[0] = 0;
                    v104 = 0;
                    if ((v64 & 0xFE) == 0x12)
                    {
                      v64 = *(**(v46 + 16) + 8);
                    }

                    *v12 &= sub_23C5075AC(v48, v64 >> 8, &v108, __c, &v105 + 1, &v105, v111, &v106, &v104);
                    v108 += a5;
                    operator new();
                  }
                }
              }

              else if (v51 == 10)
              {
                if (*String == 0x666675622E726961 && *(String + 8) == 29285)
                {
                  goto LABEL_128;
                }
              }

              else if (v51 == 11)
              {
                v52 = *String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL;
                if (v52)
                {
                  LOBYTE(v111[0]) = 0;
                  BYTE4(v105) = 0;
                  *v12 &= sub_23C506E20(v48, &v108, __c, v111, &v105 + 4, &v106 + 1, &v106);
                  v108 += a5;
                  if (HIBYTE(v106) == 1)
                  {
                    sub_23C4A65EC();
                  }

                  operator new();
                }

                if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
                {
                  *v12 &= sub_23C506C8C(v48, &v108, __c, &v106 + 1);
                  v108 += a5;
                  if (HIBYTE(v106) == 1)
                  {
                    sub_23C4A65EC();
                  }

                  operator new();
                }
              }

              goto LABEL_68;
            }

            if (v51 <= 25)
            {
              if (v51 == 21)
              {
                if (*String == 0x69646E692E726961 && *(String + 8) == 0x6E6F635F74636572 && *(String + 13) == 0x746E6174736E6F63)
                {
                  v71 = sub_23C4A57A0(*&v48[-8 * *(v48 + 2) + 8], "air.indirect_constant");
                  if (v71)
                  {
                    v96 = v71;
                    v72 = *(v48 + 2);
                    LODWORD(v111[0]) = 2;
                    if (v72 >= 3)
                    {
                      do
                      {
                        v73 = sub_23C506BD8(v48, v111, &v108, __c);
                        v74 = v111[0];
                        if ((v73 & 1) == 0)
                        {
                          v74 = ++LODWORD(v111[0]);
                        }
                      }

                      while (v74 < v72);
                    }

                    LOBYTE(v71) = v96;
                  }

                  *v12 &= v71;
                  v108 += a5;
                  operator new();
                }

                goto LABEL_68;
              }

              if (v51 != 25)
              {
                goto LABEL_68;
              }

              v54 = *(String + 24);
              v56 = *String == 0x646E65722E726961 && *(String + 8) == 0x6C657069705F7265 && *(String + 16) == 0x746174735F656E69;
              v57 = 101;
              goto LABEL_163;
            }

            if (v51 == 26)
            {
              v54 = *(String + 24);
              v56 = *String == 0x706D6F632E726961 && *(String + 8) == 0x657069705F657475 && *(String + 16) == 0x6174735F656E696CLL;
              v57 = 25972;
LABEL_163:
              if (v56 && v54 == v57)
              {
                goto LABEL_168;
              }

              goto LABEL_68;
            }

            if (v51 == 27)
            {
              v60 = *String == 0x69646E692E726961 && *(String + 8) == 0x6D6F635F74636572;
              v61 = v60 && *(String + 16) == 0x6675625F646E616DLL;
              if (v61 && *(String + 19) == 0x7265666675625F64)
              {
LABEL_168:
                if (sub_23C4A57A0(*&v48[-8 * *(v48 + 2) + 8], "air.indirect_command_buffer") || sub_23C4A57A0(*&v48[-8 * *(v48 + 2) + 8], "air.command_buffer") || sub_23C4A57A0(*&v48[-8 * *(v48 + 2) + 8], "air.compute_pipeline_state") || sub_23C4A57A0(*&v48[-8 * *(v48 + 2) + 8], "air.render_pipeline_state"))
                {
                  v97 = 0;
                  HIBYTE(v106) = 0;
                  *__c = 1;
                  v79 = *(v48 + 2);
                  LODWORD(v111[0]) = 2;
                  if (v79 >= 3)
                  {
                    v97 = 0;
                    do
                    {
                      v80 = sub_23C506BD8(v48, v111, &v108, __c);
                      v81 = v111[0];
                      if ((v80 & 1) == 0)
                      {
                        v82 = LODWORD(v111[0]) + 1;
                        if (sub_23C4A57A0(*&v48[8 * LODWORD(v111[0]) + -8 * *(v48 + 2)], "air.arg_type_name"))
                        {
                          v83 = llvm::MDString::getString(*&v48[8 * v82 + -8 * *(v48 + 2)]);
                          if (v84 >= 5)
                          {
                            v86 = *v83 == 1634890337 && *(v83 + 4) == 121;
                            v97 = v86;
                          }

                          else
                          {
                            v97 = 0;
                          }

                          v82 = v81 + 2;
                        }

                        v81 = v82 + 1;
                        LODWORD(v111[0]) = v82 + 1;
                        v12 = v101;
                      }
                    }

                    while (v81 < v79);
                    HIBYTE(v106) = v97;
                  }

                  v87 = 1;
                  v88 = v97;
                }

                else
                {
                  v88 = 0;
                  v87 = 0;
                }

                *v12 &= v87;
                v108 += a5;
                if (v88)
                {
                  sub_23C4A65EC();
                }

                operator new();
              }
            }

LABEL_68:
            v28 += 2;
          }
        }
      }

      a6 = v98;
    }

    while (v28 < v103);
  }

  std::string::push_back(v13, 125);
  if (v12[1])
  {
    v90 = v12[31];
    if ((v90 & 0x80u) == 0)
    {
      v91 = v13;
    }

    else
    {
      v91 = *(v12 + 1);
    }

    if ((v90 & 0x80u) != 0)
    {
      v90 = *(v12 + 2);
    }

    if (v90)
    {
      v92 = -1;
      do
      {
        v93 = v91->__r_.__value_.__s.__data_[0];
        v91 = (v91 + 1);
        v92 = word_23C5328D0[v93 ^ ((v92 & 0xFF00) >> 8)] ^ (v92 << 8);
        --v90;
      }

      while (v90);
      v94 = v92 | 0x7FE00000;
    }

    else
    {
      v94 = 2145452031;
    }

    *a2 = v94;
  }

  a7[2] = vadd_s32(a7[2], -1);
  if (v112 != v114)
  {
    free(v112);
  }

  v95 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4A5714(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = v1 + 32 * v2;
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  v6 = *(v3 - 20);
  v7 = *(v3 - 12);
  v8 = *(v4 + 16);
  *(result + 24) /= v8;
  v9 = v7 - v6 + 1;
  *(v4 + 20) = v9;
  v10 = (v2 - 1);
  *(result + 40) = v10;
  if (v10)
  {
    v11 = v1 + 32 * v10;
    if ((*(v11 - 16) & 1) == 0)
    {
      *(v11 - 20) = v6;
      v8 = *(v4 + 16);
      v9 = *(v4 + 20);
    }

    v12 = v6 + v9 * v8 - 1;
    if (*(v11 - 12) > v12)
    {
      v12 = *(v11 - 12);
    }

    *(v11 - 12) = v12;
  }

  if (v5)
  {
    v13 = -2;
  }

  else
  {
    v13 = -1;
  }

  *(result + 20) += v13;
  return result;
}

BOOL sub_23C4A57A0(llvm::MDString *a1, const char *a2)
{
  if (*a1)
  {
    return 0;
  }

  String = llvm::MDString::getString(a1);
  v6 = v5;
  if (a2)
  {
    v7 = String;
    v8 = strlen(a2);
    if (v6 != v8)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }

    return memcmp(v7, a2, v8) == 0;
  }

  else
  {
    return v5 == 0;
  }
}

uint64_t sub_23C4A5830(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v4 = *(result + 40);
  if (v4 == 1)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v17 = *(result + 32) + 32 * v4;
    v5 = *(a2 + 16);
    v18 = 1;
    do
    {
      v20 = *(v17 - 32);
      v17 -= 32;
      v19 = v20;
      if (v5 >= *(a2 + 20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v3 = v3 & 0xFFFFFFFF00000000 | v18;
      v21 = (*(a2 + 8) + 16 * v5);
      *v21 = v19;
      v21[1] = v3;
      v5 = *(a2 + 16) + 1;
      *(a2 + 16) = v5;
      v18 *= *(*v17 + 16);
    }

    while (v17 != *(result + 32) + 32);
  }

  v6 = *(a2 + 8);
  v7 = (v6 + 16 * v5 - 16);
  if (v5)
  {
    v8 = v7 > v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v6 + 16;
    do
    {
      v10 = *(v9 - 16);
      *(v9 - 16) = *v7;
      *v7-- = v10;
      v11 = v9 >= v7;
      v9 += 16;
    }

    while (!v11);
  }

  v12 = *(result + 32);
  v13 = v12 + 32;
  v14 = *(result + 40);
  v15 = v12 + 32 * v14;
  if (v14 == 1)
  {
    v16 = v13;
  }

  else
  {
    v22 = 32 * v14 - 32;
    v16 = v13;
    while (*(v16 + 24) != *(result + 16))
    {
      v16 += 32;
      v22 -= 32;
      if (!v22)
      {
        v16 = v15;
        break;
      }
    }
  }

  *(a2 + 88) = (v16 - v13) >> 5;
  v23 = *(a2 + 224);
  if ((*(v15 - 16) & 1) == 0)
  {
    *(v15 - 16) = 1;
    *(v15 - 20) = v23;
  }

  if (*(v15 - 12) > v23)
  {
    v23 = *(v15 - 12);
  }

  *(v15 - 12) = v23;
  v24 = *(result + 24);
  *(a2 + 228) = *a3;
  *(a2 + 232) = v24;
  *a3 += v24;
  return result;
}

void sub_23C4A59E0()
{
  v183 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&unk_27E1F6748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&unk_27E1F6748))
  {
    sub_23C49F8D0(v3, "float");
    v4 = 3;
    sub_23C49F8D0(v5, "float2");
    v6 = 4;
    sub_23C49F8D0(v7, "float3");
    v8 = 5;
    sub_23C49F8D0(v9, "float4");
    v10 = 6;
    sub_23C49F8D0(v11, "packed_float");
    v12 = 3;
    sub_23C49F8D0(v13, "packed_float2");
    v14 = 4;
    sub_23C49F8D0(v15, "packed_float3");
    v16 = 5;
    sub_23C49F8D0(v17, "packed_float4");
    v18 = 6;
    sub_23C49F8D0(v19, "half");
    v20 = 16;
    sub_23C49F8D0(v21, "half2");
    v22 = 17;
    sub_23C49F8D0(v23, "half3");
    v24 = 18;
    sub_23C49F8D0(v25, "half4");
    v26 = 19;
    sub_23C49F8D0(v27, "packed_half");
    v28 = 16;
    sub_23C49F8D0(v29, "packed_half2");
    v30 = 17;
    sub_23C49F8D0(v31, "packed_half3");
    v32 = 18;
    sub_23C49F8D0(v33, "packed_half4");
    v34 = 19;
    sub_23C49F8D0(v35, "int");
    v36 = 29;
    sub_23C49F8D0(v37, "int2");
    v38 = 30;
    sub_23C49F8D0(v39, "int3");
    v40 = 31;
    sub_23C49F8D0(v41, "int4");
    v42 = 32;
    sub_23C49F8D0(v43, "packed_int");
    v44 = 29;
    sub_23C49F8D0(v45, "packed_int2");
    v46 = 30;
    sub_23C49F8D0(v47, "packed_int3");
    v48 = 31;
    sub_23C49F8D0(v49, "packed_int4");
    v50 = 32;
    sub_23C49F8D0(v51, "uint");
    v52 = 33;
    sub_23C49F8D0(v53, "uint2");
    v54 = 34;
    sub_23C49F8D0(v55, "uint3");
    v56 = 35;
    sub_23C49F8D0(v57, "uint4");
    v58 = 36;
    sub_23C49F8D0(v59, "packed_uint");
    v60 = 33;
    sub_23C49F8D0(v61, "packed_uint2");
    v62 = 34;
    sub_23C49F8D0(v63, "packed_uint3");
    v64 = 35;
    sub_23C49F8D0(v65, "packed_uint4");
    v66 = 36;
    sub_23C49F8D0(v67, "short");
    v68 = 37;
    sub_23C49F8D0(v69, "short2");
    v70 = 38;
    sub_23C49F8D0(v71, "short3");
    v72 = 39;
    sub_23C49F8D0(v73, "short4");
    v74 = 40;
    sub_23C49F8D0(v75, "packed_short");
    v76 = 37;
    sub_23C49F8D0(v77, "packed_short2");
    v78 = 38;
    sub_23C49F8D0(v79, "packed_short3");
    v80 = 39;
    sub_23C49F8D0(v81, "packed_short4");
    v82 = 40;
    sub_23C49F8D0(v83, "ushort");
    v84 = 41;
    sub_23C49F8D0(v85, "ushort2");
    v86 = 42;
    sub_23C49F8D0(v87, "ushort3");
    v88 = 43;
    sub_23C49F8D0(v89, "ushort4");
    v90 = 44;
    sub_23C49F8D0(v91, "packed_ushort");
    v92 = 41;
    sub_23C49F8D0(v93, "packed_ushort2");
    v94 = 42;
    sub_23C49F8D0(v95, "packed_ushort3");
    v96 = 43;
    sub_23C49F8D0(v97, "packed_ushort4");
    v98 = 44;
    sub_23C49F8D0(v99, "char");
    v100 = 45;
    sub_23C49F8D0(v101, "char2");
    v102 = 46;
    sub_23C49F8D0(v103, "char3");
    v104 = 47;
    sub_23C49F8D0(v105, "char4");
    v106 = 48;
    sub_23C49F8D0(v107, "packed_char");
    v108 = 45;
    sub_23C49F8D0(v109, "packed_char2");
    v110 = 46;
    sub_23C49F8D0(v111, "packed_char3");
    v112 = 47;
    sub_23C49F8D0(v113, "packed_char4");
    v114 = 48;
    sub_23C49F8D0(v115, "uchar");
    v116 = 49;
    sub_23C49F8D0(v117, "uchar2");
    v118 = 50;
    sub_23C49F8D0(v119, "uchar3");
    v120 = 51;
    sub_23C49F8D0(v121, "uchar4");
    v122 = 52;
    sub_23C49F8D0(v123, "packed_uchar");
    v124 = 49;
    sub_23C49F8D0(v125, "packed_uchar2");
    v126 = 50;
    sub_23C49F8D0(v127, "packed_uchar3");
    v128 = 51;
    sub_23C49F8D0(v129, "packed_uchar4");
    v130 = 52;
    sub_23C49F8D0(v131, "BOOL");
    v132 = 53;
    sub_23C49F8D0(v133, "BOOL2");
    v134 = 54;
    sub_23C49F8D0(v135, "BOOL3");
    v136 = 55;
    sub_23C49F8D0(v137, "BOOL4");
    v138 = 56;
    sub_23C49F8D0(v139, "packed_BOOL");
    v140 = 53;
    sub_23C49F8D0(v141, "packed_BOOL2");
    v142 = 54;
    sub_23C49F8D0(v143, "packed_BOOL3");
    v144 = 55;
    sub_23C49F8D0(v145, "packed_BOOL4");
    v146 = 56;
    sub_23C49F8D0(v147, "float2x2");
    v148 = 7;
    sub_23C49F8D0(v149, "float2x3");
    v150 = 8;
    sub_23C49F8D0(v151, "float2x4");
    v152 = 9;
    sub_23C49F8D0(v153, "float3x2");
    v154 = 10;
    sub_23C49F8D0(v155, "float3x3");
    v156 = 11;
    sub_23C49F8D0(v157, "float3x4");
    v158 = 12;
    sub_23C49F8D0(v159, "float4x2");
    v160 = 13;
    sub_23C49F8D0(v161, "float4x3");
    v162 = 14;
    sub_23C49F8D0(v163, "float4x4");
    v164 = 15;
    sub_23C49F8D0(v165, "half2x2");
    v166 = 20;
    sub_23C49F8D0(v167, "half2x3");
    v168 = 21;
    sub_23C49F8D0(v169, "half2x4");
    v170 = 22;
    sub_23C49F8D0(v171, "half3x2");
    v172 = 23;
    sub_23C49F8D0(v173, "half3x3");
    v174 = 24;
    sub_23C49F8D0(v175, "half3x4");
    v176 = 25;
    sub_23C49F8D0(v177, "half4x2");
    v178 = 26;
    sub_23C49F8D0(v179, "half4x3");
    v180 = 27;
    sub_23C49F8D0(v181, "half4x4");
    v1 = 0;
    v182 = 28;
    qword_27E1F6740 = 0;
    qword_27E1F6738 = 0;
    unk_27E1F6730 = &qword_27E1F6738;
    do
    {
      sub_23C4A66D8(&unk_27E1F6730, &qword_27E1F6738, &v3[v1]);
      v1 += 32;
    }

    while (v1 != 2880);
    v2 = 2880;
    do
    {
      if (v3[v2 - 9] < 0)
      {
        operator delete(*&v3[v2 - 32]);
      }

      v2 -= 32;
    }

    while (v2);
    __cxa_atexit(sub_23C4A68E0, &unk_27E1F6730, &dword_23C496000);
    __cxa_guard_release(&unk_27E1F6748);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4A62D8(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_23C4A6B04((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_23C4A6B04(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_23C4A635C()
{
  v35 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F6768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6768))
  {
    sub_23C49F8D0(v3, "r8unorm");
    v4 = 62;
    sub_23C49F8D0(v5, "r8snorm");
    v6 = 63;
    sub_23C49F8D0(v7, "r16unorm");
    v8 = 64;
    sub_23C49F8D0(v9, "r16snorm");
    v10 = 65;
    sub_23C49F8D0(v11, "rg8unorm");
    v12 = 66;
    sub_23C49F8D0(v13, "rg8snorm");
    v14 = 67;
    sub_23C49F8D0(v15, "rg16unorm");
    v16 = 68;
    sub_23C49F8D0(v17, "rg16snorm");
    v18 = 69;
    sub_23C49F8D0(v19, "rgba8unorm");
    v20 = 70;
    sub_23C49F8D0(v21, "srgba8unorm");
    v22 = 71;
    sub_23C49F8D0(v23, "rgba8snorm");
    v24 = 72;
    sub_23C49F8D0(v25, "rgba16unorm");
    v26 = 73;
    sub_23C49F8D0(v27, "rgba16snorm");
    v28 = 74;
    sub_23C49F8D0(v29, "rgb10a2");
    v30 = 75;
    sub_23C49F8D0(v31, "rg11b10f");
    v32 = 76;
    sub_23C49F8D0(v33, "rgb9e5");
    v1 = 0;
    v34 = 77;
    qword_27E1F6760 = 0;
    qword_27E1F6758 = 0;
    qword_27E1F6750 = &qword_27E1F6758;
    do
    {
      sub_23C4A66D8(&qword_27E1F6750, &qword_27E1F6758, &v3[v1]);
      v1 += 32;
    }

    while (v1 != 512);
    v2 = 512;
    do
    {
      if (v3[v2 - 9] < 0)
      {
        operator delete(*&v3[v2 - 32]);
      }

      v2 -= 32;
    }

    while (v2);
    __cxa_atexit(sub_23C4A68E0, &qword_27E1F6750, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F6768);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void *sub_23C4A66D8(void *result, void *a2, void *a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2 || (result = sub_23C4A6B04(a3, a2 + 4), result))
  {
    v7 = *a2;
    if (*v5 == a2)
    {
      v9 = a2;
LABEL_17:
      if (!v7)
      {
        v16 = a2;
        goto LABEL_31;
      }

      v16 = v9;
      v12 = v9 + 1;
LABEL_30:
      if (!*v12)
      {
        goto LABEL_31;
      }

      return result;
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = sub_23C4A6B04(v9 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = sub_23C4A6B70(v5, &v16, a3);
    v12 = result;
    goto LABEL_30;
  }

  result = sub_23C4A6B04(a2 + 4, a3);
  if (result)
  {
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 == v6 || (result = sub_23C4A6B04(a3, v12 + 4), result))
    {
      if (v10)
      {
        v16 = v12;
      }

      else
      {
        v16 = a2;
        v12 = a2 + 1;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v16 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void sub_23C4A690C(char *a1)
{
  if (a1)
  {
    sub_23C4A690C(*a1);
    sub_23C4A690C(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_23C4A6968(uint64_t *result, uint64_t *a2)
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

BOOL sub_23C4A6B04(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void *sub_23C4A6B70(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_23C4A6B04(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_23C4A6B04(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

int *sub_23C4A6BF8(int *a1, unint64_t a2, unint64_t *a3, _BYTE *a4)
{
  *a4 = 1;
  v6 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64;
  if (v6 < a2)
  {
    v9 = 1;
    while (1)
    {
      v10 = *v6;
      if (*v6 && *(*v6 + 16) == 16)
      {
        v13 = *(v10 + 32);
        v14 = v13 > 0x40 ? llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) == v13 : *(v10 + 24) == 0;
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      v9 &= v12;
      *a4 = v9;
      v15 = *a1;
      if ((*a1 - 3) >= 0xFFFFFFFE)
      {
        break;
      }

      if (!v15 || v15 == 3)
      {
        v16 = (a1 + 2);
LABEL_21:
        a1 = *v16;
        goto LABEL_22;
      }

      if ((v15 - 5) >= 2)
      {
        goto LABEL_25;
      }

LABEL_22:
      v6 += 32;
      if (v6 >= a2)
      {
        goto LABEL_25;
      }
    }

    v17 = (v10 + 24);
    if (*(v10 + 32) >= 0x41u)
    {
      v17 = *v17;
    }

    v16 = (*(a1 + 1) + 8 * *v17);
    goto LABEL_21;
  }

LABEL_25:
  *a3 = v6;
  return a1;
}

_DWORD *sub_23C4A6D18(_DWORD *a1, llvm::Constant *this)
{
  AggregateElement = llvm::Constant::getAggregateElement(this);
  v5 = llvm::Constant::getAggregateElement(this);
  v6 = (AggregateElement + 24);
  if (*(AggregateElement + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  *a1 = *v6;
  v7 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  a1[1] = *v7;
  return a1;
}

uint64_t sub_23C4A6D9C(unsigned int *a1, llvm::Type **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  llvm::Type::getInt32Ty(a2[8], a2);
  llvm::ConstantInt::get();
  v5 = a1[1];
  llvm::Type::getInt32Ty(a2[8], v6);
  llvm::ConstantInt::get();
  result = llvm::ConstantVector::get();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4A6E40(uint64_t a1, llvm::Type **a2, uint64_t a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  v7 = llvm::ConstantInt::get();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 8);
    v10 = &v9[4 * v8];
    do
    {
      v11 = *(a3 + 32 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * *(*v9 + 24));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v20 = 257;
      v13 = sub_23C4A6F5C(a2, v11, Int32Ty, v19);
      v14 = v9[2];
      llvm::Type::getInt32Ty(a2[8], v15);
      v16 = llvm::ConstantInt::get();
      v20 = 257;
      v17 = sub_23C49ADDC(a2, v16, v13, v19);
      v20 = 257;
      v7 = sub_23C49A474(a2, v7, v17, v19);
      v9 += 4;
    }

    while (v9 != v10);
  }

  return v7;
}

uint64_t sub_23C4A6F5C(uint64_t a1, llvm::Type **a2, llvm::Type *a3, uint64_t a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 39;
  }

  return sub_23C49ACF8(a1, v10, a2, a3, a4);
}

unint64_t sub_23C4A6FFC(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v5 = *(v2 + 32);
  v4 = v2 + 32;
  v3 = v5;
  v6 = *(v5 + 16);
  if (v5)
  {
    v7 = v6 == 16;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 32);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v3 + 24)) != v9)
    {
      goto LABEL_8;
    }
  }

  else if (*(v3 + 24))
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    return v11 | v10;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    LODWORD(v10) = 0;
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*(a1 + 8) + 8);
    do
    {
      v16 = *(v15 - 1);
      v17 = *(v4 + 32 * *(v16 + 24));
      if (v17)
      {
        v18 = *(v17 + 16) == 16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = (v17 + 24);
        if (*(v17 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        LODWORD(v10) = v10 + *v15 * *v19;
      }

      else
      {
        v13 += (*(v16 + 16) - 1) * *v15;
      }

      v15 += 4;
      v14 -= 16;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
    LODWORD(v10) = 0;
  }

  v11 = v10 & 0xFFFFFF00 | ((v10 + v13) << 32);
  v10 = v10;
  return v11 | v10;
}

uint64_t sub_23C4A7118(uint64_t a1, llvm::Type **a2, void *a3)
{
  v6 = *(a1 + 92);
  llvm::Type::getInt32Ty(a2[8], a2);
  v8 = llvm::ConstantInt::get();
  v9 = *(a1 + 88);
  if (v9 != *(a1 + 16))
  {
    v10 = (*(a1 + 8) + 16 * v9);
    do
    {
      v11 = *(*a3 + 8 * *(*v10 + 24));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v7);
      v20 = 257;
      v13 = sub_23C4A6F5C(a2, v11, Int32Ty, v19);
      v14 = v10[2];
      llvm::Type::getInt32Ty(a2[8], v15);
      v16 = llvm::ConstantInt::get();
      v20 = 257;
      v17 = sub_23C49ADDC(a2, v13, v16, v19);
      v20 = 257;
      v8 = sub_23C49A474(a2, v8, v17, v19);
      v10 += 4;
    }

    while (v10 != (*(a1 + 8) + 16 * *(a1 + 16)));
  }

  return v8;
}

uint64_t sub_23C4A7234(void *a1, uint64_t a2, llvm::Type **a3, void *a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (*(a2 + 104))
  {
    sub_23C4A3D80(a1, a2 + 96);
  }

  v8 = *(a2 + 184);
  if (v8)
  {
    v9 = *(a2 + 176);
    v10 = &v9[2 * v8];
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      *(*a1 + 8 * v12) = *(*a4 + 8 * v11);
    }

    while (v9 != v10);
  }

  result = sub_23C4A7118(a2, a3, a4);
  *(*a1 + 8 * *(a1 + 2) - 8) = result;
  return result;
}

uint64_t sub_23C4A72DC(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C4A733C(void *a1, uint64_t a2, llvm::Type *this)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  Int64Ty = llvm::Type::getInt64Ty(this, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 1612));
  sub_23C49B500(a1, v7);
  if (*(a2 + 1646) == 1)
  {
    v9 = llvm::Type::getInt64Ty(this, v8);
    v10 = llvm::ArrayType::get(v9, *(a2 + 1612));
    sub_23C49B500(a1, v10);
  }

  v11 = llvm::Type::getInt64Ty(this, v8);

  return sub_23C49B500(a1, v11);
}

uint64_t sub_23C4A73E4(void *a1, uint64_t a2, llvm::Type *this)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  Int64Ty = llvm::Type::getInt64Ty(this, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 1608));
  sub_23C49B500(a1, v7);
  if (*(a2 + 1645) == 1)
  {
    v9 = llvm::Type::getInt64Ty(this, v8);
    v10 = llvm::ArrayType::get(v9, *(a2 + 1608));
    sub_23C49B500(a1, v10);
  }

  Int32Ty = llvm::Type::getInt32Ty(this, v8);
  v12 = llvm::ArrayType::get(Int32Ty, *(a2 + 1680));
  sub_23C49B500(a1, v12);
  v14 = llvm::Type::getInt64Ty(this, v13);

  return sub_23C49B500(a1, v14);
}

void *sub_23C4A74A8(void *result, uint64_t a2, void *a3)
{
  *result = result + 2;
  result[1] = 0x800000000;
  if (*(a2 + 104))
  {
    result = sub_23C4A3D80(result, a2 + 96);
  }

  v5 = *(a2 + 184);
  if (v5)
  {
    v6 = *(a2 + 176);
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v6 += 2;
      *(*result + 8 * v9) = *(*a3 + 8 * v8);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t GLCompilerCreate(void *__src, size_t __len, uint64_t a3)
{
  v4 = sub_23C4A7590(&__dst, __src, __len);
  v5 = sub_23C4A7640(v4, a3, 0);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return v5;
}

_BYTE *sub_23C4A7590(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_23C4A7640(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v346[20] = *MEMORY[0x277D85DE8];
  if (LLVMAGXRuntimeMajorVersion() == 1)
  {
    if (!MGGetBoolAnswer())
    {
      goto LABEL_68;
    }

    v5 = sub_23C496E18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v345[0].st_dev = 136315138;
      *&v345[0].st_mode = "load";
      _os_log_debug_impl(&dword_23C496000, v5, OS_LOG_TYPE_DEBUG, "%s(){\n", v345, 0xCu);
    }

    sub_23C49F8D0(&__p, "/System/Library/PrivateFrameworks/AGXCompilerCore-S2A8.framework/EnvVars.txt");
    v346[6] = 0;
    v6 = MEMORY[0x277D82858] + 24;
    v7 = MEMORY[0x277D82858] + 64;
    v346[0] = MEMORY[0x277D82858] + 64;
    v8 = *(MEMORY[0x277D82808] + 16);
    *&v345[0].st_dev = *(MEMORY[0x277D82808] + 8);
    *(&v345[0].st_dev + *(*&v345[0].st_dev - 24)) = v8;
    v345[0].st_ino = 0;
    v9 = (v345 + *(*&v345[0].st_dev - 24));
    std::ios_base::init(v9, &v345[0].st_uid);
    v9[1].__vftable = 0;
    v9[1].__fmtflags_ = -1;
    *&v345[0].st_dev = v6;
    v346[0] = v7;
    MEMORY[0x23EED4F20](&v345[0].st_uid);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((v345 + *(*&v345[0].st_dev - 24)), *(&v345[0].st_atimespec.tv_sec + *(*&v345[0].st_dev - 24)) | 4);
    }

    v10 = *(&v345[0].st_atimespec.tv_sec + *(*&v345[0].st_dev - 24)) & 5;
    v11 = sub_23C496E18();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      v13 = MEMORY[0x277D82808];
      if (v12)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_debug_impl(&dword_23C496000, v11, OS_LOG_TYPE_DEBUG, "}\n", &buf, 2u);
      }

      goto LABEL_66;
    }

    if (v12)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_debug_impl(&dword_23C496000, v11, OS_LOG_TYPE_DEBUG, "Reading environment variables from '%s'", &buf, 0xCu);
    }

    sub_23C496B58();
    sub_23C496CF8();
    v14 = MEMORY[0x277D82680];
    memset(&__str, 0, sizeof(__str));
LABEL_13:
    std::ios_base::getloc((v345 + *(*&v345[0].st_dev - 24)));
    v15 = std::locale::use_facet(&buf, v14);
    v16 = (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&buf);
    MEMORY[0x23EED4F40](&buf, v345, 1);
    if (buf.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_30;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      *__str.__r_.__value_.__l.__data_ = 0;
      __str.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      *(&__str.__r_.__value_.__s + 23) = 0;
    }

    v17 = 0;
    while (1)
    {
      v18 = *(&v345[0].st_atimespec.tv_nsec + *(*&v345[0].st_dev - 24));
      v19 = v18[3];
      if (v19 == v18[4])
      {
        LODWORD(v18) = (*(*v18 + 80))(v18);
        if (v18 == -1)
        {
          if (v17)
          {
            v20 = 2;
          }

          else
          {
            v20 = 6;
          }

LABEL_29:
          std::ios_base::clear((v345 + *(*&v345[0].st_dev - 24)), *(&v345[0].st_atimespec.tv_sec + *(*&v345[0].st_dev - 24)) | v20);
LABEL_30:
          if ((*(&v345[0].st_atimespec.tv_sec + *(*&v345[0].st_dev - 24)) & 5) == 0)
          {
            v21 = std::string::find(&__str, 61, 0);
            if (v21 == -1)
            {
              v27 = sub_23C496E18();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_debug_impl(&dword_23C496000, v27, OS_LOG_TYPE_DEBUG, "Skipped line with no '=' character in EnvVars.txt", &buf, 2u);
              }
            }

            else
            {
              v22 = v21;
              std::string::basic_string(&v338, &__str, 0, v21, &buf);
              std::string::basic_string(&v337, &__str, v22 + 1, 0xFFFFFFFFFFFFFFFFLL, &buf);
              sub_23C4AA9EC(&v338);
              sub_23C4AA9EC(&v337);
              size = HIBYTE(v338.__r_.__value_.__r.__words[2]);
              if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v338.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v24 = qword_27E1F66D8;
                v25 = qword_27E1F66E0;
                if (qword_27E1F66D8 != qword_27E1F66E0)
                {
                  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v26 = &v338;
                  }

                  else
                  {
                    v26 = v338.__r_.__value_.__r.__words[0];
                  }

                  while (strcmp(*v24, v26))
                  {
                    if (++v24 == v25)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                if (v24 == v25)
                {
LABEL_53:
                  v38 = sub_23C496E18();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    v39 = &v338;
                    if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v39 = v338.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = v39;
                    v34 = v38;
                    v35 = "Read unknown variable from EnvVars.txt: %s";
                    v36 = 12;
                    goto LABEL_61;
                  }
                }

                else
                {
                  buf.__r_.__value_.__r.__words[0] = &v338;
                  v28 = sub_23C4AA84C(&v338.__r_.__value_.__l.__data_);
                  std::string::operator=((v28 + 7), &v337);
                  v29 = sub_23C496E18();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    v30 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
                    v31 = &v338;
                    if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v30 = v338.__r_.__value_.__l.__size_;
                      v31 = v338.__r_.__value_.__r.__words[0];
                    }

                    v32 = HIBYTE(v337.__r_.__value_.__r.__words[2]);
                    v33 = &v337;
                    if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v32 = v337.__r_.__value_.__l.__size_;
                      v33 = v337.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                    *(buf.__r_.__value_.__r.__words + 4) = v31;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v30;
                    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                    v342 = v33;
                    v343 = 2048;
                    v344 = v32;
                    v34 = v29;
                    v35 = "%s[%lu] = %s[%lu]\n";
                    v36 = 42;
LABEL_61:
                    _os_log_debug_impl(&dword_23C496000, v34, OS_LOG_TYPE_DEBUG, v35, &buf, v36);
                  }
                }
              }

              else
              {
                v37 = sub_23C496E18();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  v34 = v37;
                  v35 = "Skipped line with empty variable name in EnvVars.txt";
                  v36 = 2;
                  goto LABEL_61;
                }
              }

              if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v337.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v338.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_13;
          }

          v40 = sub_23C496E18();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_debug_impl(&dword_23C496000, v40, OS_LOG_TYPE_DEBUG, "}\n", &buf, 2u);
          }

          v13 = MEMORY[0x277D82808];
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_66:
          *&v345[0].st_dev = *v13;
          *(&v345[0].st_dev + *(*&v345[0].st_dev - 24)) = v13[3];
          MEMORY[0x23EED4F30](&v345[0].st_uid);
          std::istream::~istream();
          MEMORY[0x23EED5050](v346);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_68:
          v41 = *(a1 + 23);
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(a1 + 8);
          }

          if (v41 && MGGetBoolAnswer())
          {
            v42 = *(a1 + 23);
            if ((v42 & 0x80u) != 0)
            {
              v42 = *(a1 + 8);
            }

            if (v42)
            {
              sub_23C496CF8();
              v43 = sub_23C496E18();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v345[0].st_dev = 136315138;
                *&v345[0].st_mode = "deserialize";
                _os_log_debug_impl(&dword_23C496000, v43, OS_LOG_TYPE_DEBUG, "%s(){\n", v345, 0xCu);
              }

              v44 = 0;
              do
              {
                v45 = *(a1 + 23);
                if ((v45 & 0x80u) != 0)
                {
                  v45 = *(a1 + 8);
                }

                if (v44 >= v45)
                {
                  break;
                }

                v46 = std::string::find(a1, 10, v44);
                if (v46 == -1)
                {
                  break;
                }

                v47 = v46;
                std::string::basic_string(&buf, a1, v44, v46 - v44, v345);
                v44 = v47 + 1;
                v48 = std::string::find(a1, 10, v47 + 1);
                v49 = v48;
                if (v48 != -1)
                {
                  std::string::basic_string(&__p, a1, v44, v48 - v44, v345);
                  *&v345[0].st_dev = &buf;
                  v50 = sub_23C4AA84C(&buf.__r_.__value_.__l.__data_);
                  std::string::operator=((v50 + 7), &__p);
                  v51 = sub_23C496E18();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                  {
                    v52 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_buf = &buf;
                    }

                    else
                    {
                      p_buf = buf.__r_.__value_.__r.__words[0];
                    }

                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v52 = buf.__r_.__value_.__l.__size_;
                    }

                    v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v55 = &__p;
                    }

                    else
                    {
                      v55 = __p.__r_.__value_.__r.__words[0];
                    }

                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v54 = __p.__r_.__value_.__l.__size_;
                    }

                    v345[0].st_dev = 136315906;
                    *&v345[0].st_mode = p_buf;
                    WORD2(v345[0].st_ino) = 2048;
                    *(&v345[0].st_ino + 6) = v52;
                    HIWORD(v345[0].st_gid) = 2080;
                    *&v345[0].st_rdev = v55;
                    LOWORD(v345[0].st_atimespec.tv_sec) = 2048;
                    *(&v345[0].st_atimespec.tv_sec + 2) = v54;
                    _os_log_debug_impl(&dword_23C496000, v51, OS_LOG_TYPE_DEBUG, "\t%s[%lu] = %s[%lu]\n", v345, 0x2Au);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v44 = v49 + 1;
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              while (v49 != -1);
              v56 = sub_23C496E18();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v345[0].st_dev) = 0;
                _os_log_debug_impl(&dword_23C496000, v56, OS_LOG_TYPE_DEBUG, "}\n", v345, 2u);
              }
            }
          }

          if (MGGetBoolAnswer())
          {
            sub_23C4A2690("USE_MONOLITHIC_COMPILER");
          }

          qword_27E1F74F0 = 0;
          v57 = MGGetBoolAnswer();
          if (v57)
          {
            v57 = sub_23C4A2690("AGC_ENABLE_STATUS_FILE");
            if (v57)
            {
              if (*v57 != 48)
              {
                v57 = atoi(v57);
                if (v57)
                {
                  sub_23C4AA7CC();
                  if (byte_27E1F678F < 0)
                  {
                    *qword_27E1F6778 = 0;
                    qword_27E1F6780 = 0;
                  }

                  else
                  {
                    LOBYTE(qword_27E1F6778) = 0;
                    byte_27E1F678F = 0;
                  }

                  if (!MGGetBoolAnswer() || (v64 = sub_23C4A2690("AGC_ENABLE_STATUS_FILE_STDERR")) == 0 || *v64 == 48 || !atoi(v64))
                  {
                    memset(v345, 0, 24);
                    v65 = sub_23C4A2690("AGC_STATUS_LOG_DIRECTORY");
                    if (v65 && (v66 = v65, (v67 = sub_23C4A2690("USE_MONOLITHIC_COMPILER")) != 0))
                    {
                      v68 = "/private/var/mobile/Library/Logs/";
                      if (*v67 != 48 && atoi(v67))
                      {
                        v68 = v66;
                      }
                    }

                    else
                    {
                      v68 = "/private/var/mobile/Library/Logs/";
                    }

                    std::string::append(v345, v68);
                    st_gid_high = HIBYTE(v345[0].st_gid);
                    if ((v345[0].st_gid & 0x80000000) == 0)
                    {
                      v70 = v345;
                    }

                    else
                    {
                      v70 = *&v345[0].st_dev;
                    }

                    if ((v345[0].st_gid & 0x80000000) != 0)
                    {
                      st_gid_high = v345[0].st_ino;
                    }

                    if (*(v70 + st_gid_high - 1) != 47)
                    {
                      std::string::push_back(v345, 47);
                    }

                    if (a3 >= 2)
                    {
                      v71 = "Metal";
                    }

                    else
                    {
                      v71 = "OpenGL";
                    }

                    std::string::append(v345, v71);
                    if ((v345[0].st_gid & 0x80000000) == 0)
                    {
                      v72 = v345;
                    }

                    else
                    {
                      v72 = *&v345[0].st_dev;
                    }

                    if ((v345[0].st_gid & 0x80000000) == 0)
                    {
                      st_ino = HIBYTE(v345[0].st_gid);
                    }

                    else
                    {
                      st_ino = v345[0].st_ino;
                    }

                    std::string::append(&qword_27E1F6778, v72, st_ino);
                    if (SHIBYTE(v345[0].st_gid) < 0)
                    {
                      operator delete(*&v345[0].st_dev);
                    }

                    if (byte_27E1F678F >= 0)
                    {
                      v74 = &qword_27E1F6778;
                    }

                    else
                    {
                      v74 = qword_27E1F6778;
                    }

                    if (stat(v74, v345))
                    {
                      if (byte_27E1F678F >= 0)
                      {
                        v75 = &qword_27E1F6778;
                      }

                      else
                      {
                        v75 = qword_27E1F6778;
                      }

                      v76 = mkdir(v75, 0x1FFu);
                      if (byte_27E1F678F >= 0)
                      {
                        v77 = &qword_27E1F6778;
                      }

                      else
                      {
                        v77 = qword_27E1F6778;
                      }

                      if (v76)
                      {
                        v78 = *__error();
                        syslog(3, "Failed to create: %s, with error code %d");
                      }

                      else if (chown(v77, 0x1F5u, 0xFFFFFFFF))
                      {
                        v79 = *__error();
                        syslog(3, "Failed to modify: %s, with error code %d");
                      }
                    }

                    std::string::append(&qword_27E1F6778, "/");
                    if (!MGGetBoolAnswer() || (v80 = sub_23C4A2690("AGC_CLIENT_PROCESS_NAME")) == 0)
                    {
                      if (a3 >= 2)
                      {
                        v80 = "agc_mtl_status";
                      }

                      else
                      {
                        v80 = "agc_gl_status";
                      }
                    }

                    std::string::append(&qword_27E1F6778, v80);
                    if (!MGGetBoolAnswer() || (v81 = sub_23C4A2690("AGC_STATUS_FILE_NO_PID")) == 0 || *v81 == 48 || !atoi(v81))
                    {
                      v82 = getpid();
                      std::to_string(&__p, v82);
                      v83 = std::string::insert(&__p, 0, "_");
                      v84 = v83->__r_.__value_.__r.__words[2];
                      *&buf.__r_.__value_.__l.__data_ = *&v83->__r_.__value_.__l.__data_;
                      buf.__r_.__value_.__r.__words[2] = v84;
                      v83->__r_.__value_.__l.__size_ = 0;
                      v83->__r_.__value_.__r.__words[2] = 0;
                      v83->__r_.__value_.__r.__words[0] = 0;
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v85 = &buf;
                      }

                      else
                      {
                        v85 = buf.__r_.__value_.__r.__words[0];
                      }

                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v86 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v86 = buf.__r_.__value_.__l.__size_;
                      }

                      std::string::append(&qword_27E1F6778, v85, v86);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    LODWORD(v87) = MGGetBoolAnswer();
                    if (v87)
                    {
                      v87 = sub_23C4A2690("AGC_STATUS_FILE_MAX_SIZE_IN_BYTES");
                      if (v87)
                      {
                        if (*v87 == 48)
                        {
                          LODWORD(v87) = 0;
                        }

                        else
                        {
                          LODWORD(v87) = atoi(v87);
                        }
                      }
                    }

                    dword_27E1F74F8 = v87;
                    if (byte_27E1F678F >= 0)
                    {
                      v88 = &qword_27E1F6778;
                    }

                    else
                    {
                      v88 = qword_27E1F6778;
                    }

                    stat(v88, v345);
                    operator new();
                  }

                  qword_27E1F74F0 = MEMORY[0x277D82670];
                  v57 = std::ostream::flush();
                }
              }
            }
          }

          sub_23C4AA240(v57, "Running LLVM version %d.", v58, v59, v60, v61, v62, v63, 23);
          sub_23C49F8D0(&__p, "Active environment variable values:\n");
          v89 = MGGetBoolAnswer();
          if (v89)
          {
            sub_23C496B58();
            v96 = qword_27E1F66D8;
            if (qword_27E1F66E0 != qword_27E1F66D8)
            {
              v97 = 0;
              v98 = 1;
              do
              {
                v99 = *(v96 + 8 * v97);
                v89 = sub_23C4A2690(v99);
                if (v89)
                {
                  v100 = v89;
                  std::string::append(&__p, v99);
                  std::string::append(&__p, "=");
                  std::string::append(&__p, v100);
                  v89 = std::string::append(&__p, "\n");
                }

                v97 = v98;
                v96 = qword_27E1F66D8;
                ++v98;
              }

              while (v97 < (qword_27E1F66E0 - qword_27E1F66D8) >> 3);
            }
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v101 = &__p;
          }

          else
          {
            v101 = __p.__r_.__value_.__r.__words[0];
          }

          sub_23C4AA240(v89, v101, v90, v91, v92, v93, v94, v95, v284);
          sub_23C4D819C();
          *(*sub_23C4D8220("half", 4uLL) + 8) = 1;
          *(*sub_23C4D8220("float", 5uLL) + 8) = 0;
          *(*sub_23C4D8220("i16", 3uLL) + 8) = 4;
          *(*sub_23C4D8220("i32", 3uLL) + 8) = 3;
          sub_23C4B8D20();
          *(*sub_23C4B8E28("air.perspective", 0xFuLL) + 8) = 0;
          *(*sub_23C4B8E28("air.flat", 8uLL) + 8) = 1;
          *(*sub_23C4B8E28("air.no_perspective", 0x12uLL) + 8) = 2;
          sub_23C4B8DA4();
          *(*sub_23C4B8F30("air.center", 0xAuLL) + 8) = 0;
          *(*sub_23C4B8F30("air.centroid", 0xCuLL) + 8) = 2;
          *(*sub_23C4B8F30("air.sample", 0xAuLL) + 8) = 1;
          sub_23C4B8970();
          if (!dword_27E1F745C)
          {
            v102 = 0;
            *&v345[0].st_dev = &v345[0].st_rdev;
            *&v345[0].st_ino = xmmword_23C532530;
            do
            {
              v103 = 0;
              v285 = v102;
              v104 = &(&off_278BBFA68)[2 * v102];
              v332 = *(v104 + 2);
              v315 = v104;
              v105 = *(v104 + 12);
              if (v332 == 1)
              {
                v106 = 1;
              }

              else
              {
                v106 = *(v104 + 12);
              }

              v107 = 8;
              if (!v106)
              {
                v107 = 0;
              }

              v307 = v107;
              v286 = v105;
              if (v105)
              {
                v108 = 3;
              }

              else
              {
                v108 = 2;
              }

              if (v105)
              {
                v109 = 2;
              }

              else
              {
                v109 = 0;
              }

              v301 = v109;
              v298 = v108 + 1;
              v304 = v108;
              v295 = v108 + 2;
              __s = "1d";
              v110 = &off_278BBFB98;
              v310 = v106;
              do
              {
                v288 = v103;
                v111 = *(v110 + 2);
                if (!v286 || v111 != 3)
                {
                  v112 = 0;
                  v113 = 1;
                  v321 = &unk_23C53F34D;
                  v324 = &off_278BBFCC0;
                  v317 = v110;
                  do
                  {
                    v292 = v113;
                    v290 = v112;
                    v114 = off_278BBFC18;
                    v115 = 6;
                    do
                    {
                      if (!v106 || *(v114 + 20) == 1)
                      {
                        v116 = *v315;
                        if (*v315)
                        {
                          v117 = strlen(*v315);
                          v345[0].st_ino = 0;
                          sub_23C4B01BC(v345, v116, &v116[v117]);
                        }

                        else
                        {
                          v345[0].st_ino = 0;
                        }

                        v118 = strlen(__s);
                        sub_23C4B01BC(v345, __s, &__s[v118]);
                        v119 = strlen(v321);
                        sub_23C4B01BC(v345, v321, &v321[v119]);
                        v120 = *(v114 + v307);
                        if (v120)
                        {
                          v121 = strlen(*(v114 + v307));
                          sub_23C4B01BC(v345, v120, &v120[v121]);
                        }

                        else if (*&v345[0].st_uid < v345[0].st_ino)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }

                        v122 = v298;
                        v123 = v295;
                        if (!*(v110 + 12))
                        {
                          v123 = v298;
                          v122 = 0;
                        }

                        v328 = v122;
                        v124 = v123 + (v332 == 1);
                        if (v332 == 1)
                        {
                          v125 = v123;
                        }

                        else
                        {
                          v125 = 0;
                        }

                        v126 = *(v324 + 2);
                        if (v126 == 1)
                        {
                          v130 = 0;
                          v129 = v124 + 2;
                          if (v111 == 2)
                          {
                            v131 = 0;
                          }

                          else
                          {
                            v131 = v124 + 3;
                          }

                          if (v111 == 2)
                          {
                            v133 = v124 + 3;
                          }

                          else
                          {
                            v133 = v124 + 5;
                          }

                          v132 = v124;
                        }

                        else
                        {
                          v127 = v124 + 2;
                          if (v111 == 2)
                          {
                            v128 = 0;
                          }

                          else
                          {
                            v128 = v124;
                          }

                          if (v111 == 2)
                          {
                            v127 = v124;
                          }

                          if (v126)
                          {
                            v129 = v124;
                          }

                          else
                          {
                            v129 = v127 + 2;
                          }

                          if (v126)
                          {
                            v130 = 0;
                          }

                          else
                          {
                            v130 = v127;
                          }

                          if (v126)
                          {
                            v131 = 0;
                          }

                          else
                          {
                            v131 = v128;
                          }

                          v132 = 0;
                          if (v126)
                          {
                            v133 = v124 + 1;
                          }

                          else
                          {
                            v133 = v127 + 3;
                          }
                        }

                        v134 = *(v114 + 4);
                        v135 = *sub_23C4FED68(*&v345[0].st_dev, v345[0].st_ino);
                        *(v135 + 8) = v332;
                        *(v135 + 12) = v111;
                        *(v135 + 16) = 0;
                        *(v135 + 20) = v134;
                        *(v135 + 24) = 0;
                        v106 = v310;
                        *(v135 + 28) = v310;
                        *(v135 + 29) = v133;
                        *(v135 + 30) = 256;
                        *(v135 + 32) = 0;
                        *(v135 + 33) = v301;
                        *(v135 + 34) = v304;
                        *(v135 + 35) = v131;
                        *(v135 + 36) = v130;
                        *(v135 + 37) = v132;
                        *(v135 + 38) = 0;
                        *(v135 + 39) = v328;
                        *(v135 + 40) = v125;
                        *(v135 + 41) = 0;
                        *(v135 + 45) = v129;
                        *(v135 + 46) = 0;
                        v110 = v317;
                      }

                      v114 += 3;
                      --v115;
                    }

                    while (v115);
                    v324 = &off_278BBFCC0 + 2 * v292;
                    v321 = *v324;
                    v112 = 1;
                    v113 = 2;
                  }

                  while ((v290 & 1) == 0);
                }

                v103 = v288 + 1;
                v110 = &(&off_278BBFB98)[2 * v288 + 2];
                __s = *v110;
              }

              while (v288 != 6);
              v102 = v285 + 1;
            }

            while (v285 != 3);
            do
            {
              v136 = 0;
              v287 = v102;
              v137 = &(&off_278BBFA68)[2 * v102];
              v138 = *(v137 + 12);
              v139 = 8;
              if (!*(v137 + 12))
              {
                v139 = 0;
              }

              v308 = v139;
              if (*(v137 + 12))
              {
                v140 = 2;
              }

              else
              {
                v140 = 1;
              }

              v291 = v140 + 1;
              v305 = v140;
              v289 = v140 + 2;
              v302 = "1d";
              v141 = &off_278BBFB98;
              v311 = *(v137 + 12);
              do
              {
                v293 = v136;
                __sa = *(v141 + 2);
                if (!v138 || __sa != 3)
                {
                  v142 = 0;
                  v143 = v291;
                  v144 = v289;
                  if (__sa != 2)
                  {
                    v144 = v291;
                    v143 = 0;
                  }

                  v313 = v143;
                  v316 = v144;
                  v145 = 1;
                  do
                  {
                    v296 = v145;
                    v146 = 0;
                    v333 = v142 & 1;
                    v147 = off_278BBFC18;
                    do
                    {
                      v299 = v146;
                      v148 = 0;
                      v149 = 1;
                      v150 = 1;
                      v151 = &unk_278BBFCF0;
                      do
                      {
                        v152 = v148;
                        if (!v138 || *(v147 + 20) == 1)
                        {
                          v322 = v150;
                          v325 = v148;
                          v329 = v149;
                          v153 = *v137;
                          if (*v137)
                          {
                            v154 = strlen(*v137);
                            v345[0].st_ino = 0;
                            sub_23C4B01BC(v345, v153, &v153[v154]);
                          }

                          else
                          {
                            v345[0].st_ino = 0;
                          }

                          if (v333)
                          {
                            if (*(v141 + 12))
                            {
                              v155 = "2d_ms_array";
                            }

                            else
                            {
                              v155 = "2d_ms";
                            }

                            v156 = 5;
                            if (*(v141 + 12))
                            {
                              v156 = 11;
                            }

                            v157 = &v155[v156];
                          }

                          else
                          {
                            v157 = &v302[strlen(v302)];
                            v155 = v302;
                          }

                          sub_23C4B01BC(v345, v155, v157);
                          v158 = *(v151 + 1);
                          if (v158)
                          {
                            v159 = strlen(*(v151 + 1));
                            sub_23C4B01BC(v345, v158, &v158[v159]);
                          }

                          else if (*&v345[0].st_uid < v345[0].st_ino)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }

                          v160 = *(v147 + v308);
                          if (v160)
                          {
                            v161 = strlen(*(v147 + v308));
                            sub_23C4B01BC(v345, v160, &v160[v161]);
                            v162 = v345[0].st_ino;
                          }

                          else
                          {
                            v162 = v345[0].st_ino;
                            if (*&v345[0].st_uid < v345[0].st_ino)
                            {
                              llvm::SmallVectorBase<unsigned long long>::grow_pod();
                            }
                          }

                          v163 = *(v141 + 12) + v316;
                          if (*(v141 + 12))
                          {
                            v164 = v316;
                          }

                          else
                          {
                            v164 = 0;
                          }

                          v165 = *(v137 + 2);
                          if (v165 == 3)
                          {
                            v166 = v163 + v333 + 1;
                          }

                          else
                          {
                            v166 = v163 + v333;
                          }

                          if (v165 == 3)
                          {
                            v167 = v163 + v333;
                          }

                          else
                          {
                            v167 = 0;
                          }

                          v168 = v141;
                          v169 = v137;
                          if (v333)
                          {
                            v170 = v163;
                          }

                          else
                          {
                            v170 = 0;
                          }

                          v171 = v166 + (v333 == 0);
                          if (v333)
                          {
                            v172 = 0;
                          }

                          else
                          {
                            v172 = v166;
                          }

                          v173 = *(v147 + 4);
                          v174 = *sub_23C4FED68(*&v345[0].st_dev, v162);
                          *(v174 + 8) = v165;
                          *(v174 + 12) = __sa;
                          *(v174 + 16) = v322;
                          *(v174 + 20) = v173;
                          *(v174 + 24) = 0;
                          v138 = v311;
                          *(v174 + 28) = v311;
                          *(v174 + 29) = v171;
                          *(v174 + 30) = 0;
                          *(v174 + 31) = 0;
                          *(v174 + 33) = v311;
                          *(v174 + 34) = v305;
                          *(v174 + 37) = 0;
                          *(v174 + 35) = 0;
                          *(v174 + 38) = v172;
                          *(v174 + 39) = v164;
                          *(v174 + 40) = 0;
                          *(v174 + 41) = v170;
                          v137 = v169;
                          v141 = v168;
                          *(v174 + 42) = v167;
                          *(v174 + 43) = v313;
                          *(v174 + 44) = 0;
                          v149 = v329;
                          v152 = v325;
                        }

                        v151 = &unk_278BBFCF0 + 16 * v149;
                        v150 = *v151;
                        v148 = 1;
                        v149 = 2;
                      }

                      while ((v152 & 1) == 0);
                      v146 = v299 + 1;
                      v147 = &off_278BBFC18[3 * v299 + 3];
                    }

                    while (v299 != 5);
                    v142 = 1;
                    v145 = 0;
                  }

                  while (((__sa == 1) & v296) != 0);
                }

                v136 = v293 + 1;
                v141 = &(&off_278BBFB98)[2 * v293 + 2];
                v302 = *v141;
              }

              while (v293 != 6);
              v102 = v287 + 1;
            }

            while (v287 != 7);
            do
            {
              v175 = 0;
              v294 = v102;
              v176 = &(&off_278BBFA68)[2 * v102];
              v334 = *(v176 + 2);
              __sb = v176;
              v177 = *(v176 + 12);
              if (v177)
              {
                v178 = 3;
              }

              else
              {
                v178 = 2;
              }

              if (v177)
              {
                v179 = 2;
              }

              else
              {
                v179 = 0;
              }

              v312 = v179;
              v314 = v178;
              v309 = v178 + 1;
              v306 = v178 + 2;
              v303 = v177 | (v334 == 5);
              v300 = (v177 & 1 | (v334 == 5)) == 0;
              v326 = "1d";
              v180 = &off_278BBFB98;
              do
              {
                v297 = v175;
                v323 = *(v180 + 2);
                if ((v323 - 1) <= 1)
                {
                  v181 = off_278BBFC18;
                  v182 = 6;
                  do
                  {
                    if (v334 != 5 || *(v181 + 20) == 1)
                    {
                      v183 = *__sb;
                      if (*__sb)
                      {
                        v184 = strlen(*__sb);
                        v345[0].st_ino = 0;
                        sub_23C4B01BC(v345, v183, &v183[v184]);
                      }

                      else
                      {
                        v345[0].st_ino = 0;
                      }

                      v185 = strlen(v326);
                      sub_23C4B01BC(v345, v326, &v326[v185]);
                      v186 = v181[v334 == 5];
                      if (v186)
                      {
                        v187 = strlen(v181[v334 == 5]);
                        sub_23C4B01BC(v345, v186, &v186[v187]);
                        v188 = v345[0].st_ino;
                      }

                      else
                      {
                        v188 = v345[0].st_ino;
                        if (*&v345[0].st_uid < v345[0].st_ino)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }
                      }

                      v189 = v306;
                      v190 = v309;
                      if (!*(v180 + 12))
                      {
                        v189 = v309;
                        v190 = 0;
                      }

                      v330 = v190;
                      v191 = v189 + (v334 == 5);
                      if (v334 == 5)
                      {
                        v192 = v189;
                      }

                      else
                      {
                        v192 = 0;
                      }

                      v193 = v191 + 2;
                      if (v323 == 2)
                      {
                        v194 = 0;
                      }

                      else
                      {
                        v194 = v191;
                      }

                      if (v323 == 2)
                      {
                        v193 = v191;
                      }

                      v195 = v193 + v300;
                      if (v303)
                      {
                        v196 = 0;
                      }

                      else
                      {
                        v196 = v193;
                      }

                      v197 = *(v181 + 4);
                      v198 = *sub_23C4FED68(*&v345[0].st_dev, v188);
                      *(v198 + 8) = v334;
                      *(v198 + 12) = v323;
                      *(v198 + 16) = 0;
                      *(v198 + 20) = v197;
                      *(v198 + 28) = 0;
                      *(v198 + 24) = 0;
                      *(v198 + 29) = v195;
                      *(v198 + 30) = 256;
                      *(v198 + 32) = 0;
                      *(v198 + 33) = v312;
                      *(v198 + 34) = v314;
                      *(v198 + 35) = v194;
                      *(v198 + 38) = 0;
                      *(v198 + 36) = 0;
                      *(v198 + 39) = v330;
                      *(v198 + 40) = v192;
                      *(v198 + 43) = 0;
                      *(v198 + 41) = 0;
                      *(v198 + 44) = v196;
                      *(v198 + 47) = 0;
                      *(v198 + 45) = 0;
                    }

                    v181 += 3;
                    --v182;
                  }

                  while (v182);
                }

                v175 = v297 + 1;
                v180 = &(&off_278BBFB98)[2 * v297 + 2];
                v326 = *v180;
              }

              while (v297 != 6);
              v102 = v294 + 1;
            }

            while (v294 != 11);
            v199 = 0;
            do
            {
              v200 = 0;
              v327 = v199;
              v335 = &(&off_278BBFA68)[2 * v102];
              v201 = *v335;
              v202 = ".v4f32";
              v203 = off_278BBFC18;
              do
              {
                v331 = v200;
                v204 = 0;
                v205 = 1;
                v206 = 1;
                v207 = &unk_278BBFCF0;
                do
                {
                  v208 = v204;
                  if (v201)
                  {
                    v209 = strlen(v201);
                    v345[0].st_ino = 0;
                    sub_23C4B01BC(v345, v201, &v201[v209]);
                  }

                  else
                  {
                    v345[0].st_ino = 0;
                  }

                  v210 = *(v207 + 1);
                  if (v210)
                  {
                    v211 = strlen(v210);
                    sub_23C4B01BC(v345, v210, &v210[v211]);
                  }

                  else if (*&v345[0].st_uid < v345[0].st_ino)
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod();
                  }

                  v212 = strlen(v202);
                  sub_23C4B01BC(v345, v202, &v202[v212]);
                  v213 = *(v335 + 2);
                  if (v213 == 3)
                  {
                    v214 = 3;
                  }

                  else
                  {
                    v214 = 2;
                  }

                  v215 = *(v203 + 4);
                  v216 = *sub_23C4FED68(*&v345[0].st_dev, v345[0].st_ino);
                  v204 = 1;
                  *(v216 + 8) = v213;
                  *(v216 + 12) = 1;
                  *(v216 + 16) = v206;
                  *(v216 + 20) = v215;
                  *(v216 + 28) = 0;
                  *(v216 + 24) = 0;
                  *(v216 + 29) = v214;
                  *(v216 + 30) = 0;
                  *(v216 + 34) = 1;
                  *(v216 + 38) = 0;
                  *(v216 + 35) = 0;
                  *(v216 + 42) = 2 * (v213 == 3);
                  *(v216 + 43) = 0;
                  *(v216 + 47) = 1;
                  v207 = &unk_278BBFCF0 + 16 * v205;
                  v205 = 2;
                  v206 = *v207;
                }

                while ((v208 & 1) == 0);
                v200 = v331 + 1;
                v203 = &off_278BBFC18[3 * v331 + 3];
                v202 = *v203;
              }

              while (v331 != 5);
              v199 = 1;
              v102 = 13;
            }

            while ((v327 & 1) == 0);
            sub_23C4E8E90();
            v217 = 0;
            while (2)
            {
              v218 = 0;
              v336 = v217;
              v219 = &(&off_278BBFD20)[2 * v217];
              v220 = *(v219 + 2);
              v221 = "1d";
              v222 = &off_278BBFB98;
              while (2)
              {
                if (v220 != 3)
                {
                  if (v220 == 2 && *(v222 + 2) != 3)
                  {
                    goto LABEL_386;
                  }

LABEL_369:
                  v223 = *(v222 + 2);
                  v224 = 1;
                  while (2)
                  {
                    if (v224)
                    {
                      v225 = 5;
                    }

                    else
                    {
                      v225 = 4;
                    }

                    if (v220 != v225)
                    {
                      v226 = *v219;
                      if (*v219)
                      {
                        v227 = strlen(*v219);
                        v345[0].st_ino = 0;
                        sub_23C4B01BC(v345, v226, &v226[v227]);
                        if (v224)
                        {
                          goto LABEL_376;
                        }

LABEL_378:
                        if (*(v222 + 12))
                        {
                          v229 = "2d_ms_array";
                        }

                        else
                        {
                          v229 = "2d_ms";
                        }

                        v230 = 5;
                        if (*(v222 + 12))
                        {
                          v230 = 11;
                        }

                        v228 = &v229[v230];
                      }

                      else
                      {
                        v345[0].st_ino = 0;
                        if ((v224 & 1) == 0)
                        {
                          goto LABEL_378;
                        }

LABEL_376:
                        v228 = &v221[strlen(v221)];
                        v229 = v221;
                      }

                      sub_23C4B01BC(v345, v229, v228);
                      v231 = *sub_23C4FEE6C(*&v345[0].st_dev, v345[0].st_ino);
                      *(v231 + 12) = v220;
                      *(v231 + 16) = 0;
                    }

                    v232 = (v223 == 1) & v224;
                    v224 = 0;
                    if ((v232 & 1) == 0)
                    {
                      goto LABEL_386;
                    }

                    continue;
                  }
                }

                if (*(v222 + 12) == 1)
                {
                  goto LABEL_369;
                }

LABEL_386:
                ++v218;
                v222 = &(&off_278BBFB98)[2 * v218];
                v221 = *v222;
                if (v218 != 7)
                {
                  continue;
                }

                break;
              }

              v217 = v336 + 1;
              if (v336 != 10)
              {
                continue;
              }

              break;
            }

            v345[0].st_ino = 0;
            sub_23C4B01BC(v345, "air.get_width_texture_buffer_1d", "");
            v233 = *sub_23C4FEE6C(*&v345[0].st_dev, v345[0].st_ino);
            *(v233 + 12) = 0;
            *(v233 + 16) = 1;
            sub_23C4E8F14();
            v234 = 0;
            v235 = "1d";
            v236 = &off_278BBFB98;
            do
            {
              v237 = *(v236 + 2);
              v238 = 1;
              do
              {
                v345[0].st_ino = 0;
                sub_23C4B01BC(v345, "air.fence_texture_", "");
                if (v238)
                {
                  v239 = &v235[strlen(v235)];
                  v240 = v235;
                }

                else
                {
                  if (*(v236 + 12))
                  {
                    v240 = "2d_ms_array";
                  }

                  else
                  {
                    v240 = "2d_ms";
                  }

                  if (*(v236 + 12))
                  {
                    v241 = 11;
                  }

                  else
                  {
                    v241 = 5;
                  }

                  v239 = &v240[v241];
                }

                sub_23C4B01BC(v345, v240, v239);
                sub_23C4FEF70(&qword_27E1F7380, *&v345[0].st_dev, v345[0].st_ino);
                v242 = (v237 == 1) & v238;
                v238 = 0;
              }

              while ((v242 & 1) != 0);
              ++v234;
              v236 = &(&off_278BBFB98)[2 * v234];
              v235 = *v236;
            }

            while (v234 != 7);
            v345[0].st_ino = 0;
            sub_23C4B01BC(v345, "air.fence_texture_", "");
            sub_23C4B01BC(v345, "buffer_1d", "");
            sub_23C4FEF70(&qword_27E1F7380, *&v345[0].st_dev, v345[0].st_ino);
            sub_23C4E8F98();
            for (i = 0; i != 16; ++i)
            {
              v345[0].st_ino = 0;
              sub_23C4B01BC(v345, "air.is_null_", "");
              v244 = strlen(off_278BBFDD0[i]);
              sub_23C4B01BC(v345, off_278BBFDD0[i], &off_278BBFDD0[i][v244]);
              sub_23C4FEF70(&qword_27E1F73A8, *&v345[0].st_dev, v345[0].st_ino);
            }

            sub_23C4F0968();
            for (j = 0; j != 16; ++j)
            {
              v345[0].st_ino = 0;
              sub_23C4B01BC(v345, "air.get_null_", "");
              v246 = strlen(off_278BBFDD0[j]);
              sub_23C4B01BC(v345, off_278BBFDD0[j], &off_278BBFDD0[j][v246]);
              sub_23C4FEF70(&qword_27E1F73D0, *&v345[0].st_dev, v345[0].st_ino);
            }

            sub_23C4E901C();
            for (k = 0; k != 16; ++k)
            {
              v345[0].st_ino = 0;
              sub_23C4B01BC(v345, "air.get_unique_identifier_", "");
              v248 = strlen(off_278BBFDD0[k]);
              sub_23C4B01BC(v345, off_278BBFDD0[k], &off_278BBFDD0[k][v248]);
              sub_23C4FEF70(&qword_27E1F73F8, *&v345[0].st_dev, v345[0].st_ino);
            }

            v345[0].st_ino = 0;
            sub_23C4B01BC(v345, "air.get_unique_identifier_", "");
            sub_23C4B01BC(v345, "sampler", "");
            sub_23C4FEF70(&qword_27E1F73F8, *&v345[0].st_dev, v345[0].st_ino);
            if (*&v345[0].st_dev != &v345[0].st_rdev)
            {
              free(*&v345[0].st_dev);
            }
          }

          sub_23C4FE87C();
          if (!dword_27E1F742C)
          {
            v250 = *sub_23C4FF048("air.vertex_id", 0xDuLL);
            *(v250 + 8) = "air.get_vertex_id";
            *(v250 + 16) = 17;
            *(v250 + 24) = 1;
            v251 = *sub_23C4FF048("air.instance_id", 0xFuLL);
            *(v251 + 8) = "air.get_instance_id";
            *(v251 + 16) = 19;
            *(v251 + 24) = 1;
            v252 = *sub_23C4FF048("air.base_vertex", 0xFuLL);
            *(v252 + 8) = "air.get_base_vertex";
            *(v252 + 16) = 19;
            *(v252 + 24) = 1;
            v253 = *sub_23C4FF048("air.base_instance", 0x11uLL);
            *(v253 + 8) = "air.get_base_instance";
            *(v253 + 16) = 21;
            *(v253 + 24) = 1;
            v254 = *sub_23C4FF048("air.thread_position_in_grid", 0x1BuLL);
            *(v254 + 8) = "air.get_global_id";
            *(v254 + 16) = 17;
            *(v254 + 24) = 0;
            v255 = *sub_23C4FF048("air.thread_position_in_threadgroup", 0x22uLL);
            *(v255 + 8) = "air.get_local_id";
            *(v255 + 16) = 16;
            *(v255 + 24) = 0;
            v256 = *sub_23C4FF048("air.thread_index_in_threadgroup", 0x1FuLL);
            *(v256 + 8) = "air.get_local_linear_id";
            *(v256 + 16) = 23;
            *(v256 + 24) = 1;
            v257 = *sub_23C4FF048("air.threadgroup_position_in_grid", 0x20uLL);
            *(v257 + 8) = "air.get_group_id";
            *(v257 + 16) = 16;
            *(v257 + 24) = 0;
            v258 = *sub_23C4FF048("air.threads_per_grid", 0x14uLL);
            *(v258 + 8) = "air.get_global_size";
            *(v258 + 16) = 19;
            *(v258 + 24) = 0;
            v259 = *sub_23C4FF048("air.threads_per_threadgroup", 0x1BuLL);
            *(v259 + 8) = "air.get_local_size";
            *(v259 + 16) = 18;
            *(v259 + 24) = 0;
            v260 = *sub_23C4FF048("air.threadgroups_per_grid", 0x19uLL);
            *(v260 + 8) = "air.get_num_groups";
            *(v260 + 16) = 18;
            *(v260 + 24) = 0;
            v261 = *sub_23C4FF048("air.thread_execution_width", 0x1AuLL);
            *(v261 + 8) = "air.get_thread_execution_width";
            *(v261 + 16) = 30;
            *(v261 + 24) = 1;
            v262 = *sub_23C4FF048("air.dispatch_threads_per_threadgroup", 0x24uLL);
            *(v262 + 8) = "air.get_dispatch_local_size";
            *(v262 + 16) = 27;
            *(v262 + 24) = 0;
            v263 = *sub_23C4FF048("air.thread_index_in_quadgroup", 0x1DuLL);
            *(v263 + 8) = "air.get_quad_element";
            *(v263 + 16) = 20;
            *(v263 + 24) = 1;
            v264 = *sub_23C4FF048("air.quadgroup_index_in_threadgroup", 0x22uLL);
            *(v264 + 8) = "air.get_quad_group";
            *(v264 + 16) = 18;
            *(v264 + 24) = 1;
            v265 = *sub_23C4FF048("air.quadgroups_per_threadgroup", 0x1EuLL);
            *(v265 + 8) = "air.get_quadgroups_per_threadgroup";
            *(v265 + 16) = 34;
            *(v265 + 24) = 1;
            v266 = *sub_23C4FF048("air.dispatch_quadgroups_per_threadgroup", 0x27uLL);
            *(v266 + 8) = "air.get_dispatch_quadgroups_per_threadgroup";
            *(v266 + 16) = 43;
            *(v266 + 24) = 1;
            v267 = *sub_23C4FF048("air.threads_per_simdgroup", 0x19uLL);
            *(v267 + 8) = "air.get_threads_per_simdgroup";
            *(v267 + 16) = 29;
            *(v267 + 24) = 1;
            v268 = *sub_23C4FF048("air.thread_index_in_simdgroup", 0x1DuLL);
            *(v268 + 8) = "air.get_thread_index_in_simdgroup";
            *(v268 + 16) = 33;
            *(v268 + 24) = 1;
            v269 = *sub_23C4FF048("air.simdgroup_index_in_threadgroup", 0x22uLL);
            *(v269 + 8) = "air.get_simdgroup_index_in_threadgroup";
            *(v269 + 16) = 38;
            *(v269 + 24) = 1;
            v270 = *sub_23C4FF048("air.simdgroups_per_threadgroup", 0x1EuLL);
            *(v270 + 8) = "air.get_simdgroups_per_threadgroup";
            *(v270 + 16) = 34;
            *(v270 + 24) = 1;
            v249 = sub_23C4FF048("air.dispatch_simdgroups_per_threadgroup", 0x27uLL);
            v271 = *v249;
            *(v271 + 8) = "air.get_dispatch_simdgroups_per_threadgroup";
            *(v271 + 16) = 43;
            *(v271 + 24) = 1;
          }

          PassRegistry = llvm::PassRegistry::getPassRegistry(v249);
          llvm::initializeCore(PassRegistry, v273);
          llvm::initializeScalarOpts(PassRegistry, v274);
          llvm::initializeVectorization(PassRegistry, v275);
          llvm::initializeIPO(PassRegistry, v276);
          llvm::initializeAnalysis(PassRegistry, v277);
          llvm::initializeTransformUtils(PassRegistry, v278);
          llvm::initializeInstCombine(PassRegistry, v279);
          llvm::initializeTarget(PassRegistry, v280);
          operator new();
        }
      }

      else
      {
        v18[3] = v19 + 1;
        LOBYTE(v18) = *v19;
      }

      if (v16 == v18)
      {
        v20 = 0;
        goto LABEL_29;
      }

      ++v17;
      std::string::push_back(&__str, v18);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v20 = 4;
        goto LABEL_29;
      }
    }
  }

  v281 = *MEMORY[0x277D85DE8];
  return 0;
}