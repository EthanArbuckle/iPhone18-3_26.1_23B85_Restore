void sub_1DDD4E248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<DistanceEstimator>::reset[abi:ne200100](v2 + 82, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialProbability>::Factory()
{
  result = malloc_type_malloc(0x400uLL, 0x10F3040B6008A53uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialProbability>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialProbability>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialProbability>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5921E28;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 35) = xmmword_1DE09C160;
  *(v3 + 576) = 0;
  *(v3 + 145) = 1156;
  *(v3 + 73) = 0x40E5888000000000;
  *(v3 + 148) = 16;
  *(v3 + 596) = 1;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 119) = 0;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 600) = 0;
  *(a1 + 608) = 0x3F80000000000000;
  *(a1 + 616) = xmmword_1DE095160;
  *(a1 + 632) = 1092616192;
  *(a1 + 640) = 0x3F00000000000000;
  *(a1 + 648) = 1056964608;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 1056964608;
  *(a1 + 672) = 0x3F80000026901D7DLL;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 700) = 0x457A000026901D7DLL;
  *(a1 + 708) = 0;
  *(a1 + 712) = 1036831949;
  *(a1 + 720) = 1028443341;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || (ausdk::AUElement::SetParameter(v4, 0, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 1u, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 2u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 3u, 1.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 4u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 5u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 6u, 1.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 7u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 8u, 10.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 9u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 0xAu, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xBu, 0.5), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xCu, 0.5), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xDu, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0xEu, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xFu, 0.5), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0x10u, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x11u, -300.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x12u, 1.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x13u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x14u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x15u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x16u, 0.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x17u, 0.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x18u, -300.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x19u, 4000.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x1Au, 0.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x1Bu, -20.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x1Cu, 0.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v62, 0x1Du, 0.05);
  v64 = 0;
  *(a1 + 584) = 0x40E5888000000000;
  v75 = 0x40E5888000000000;
  v76 = xmmword_1DE09C190;
  v77 = xmmword_1DE09CA20;
  v72 = 0x40E5888000000000;
  v74 = xmmword_1DE09CA20;
  v73 = xmmword_1DE09C190;
  while (1)
  {
    v65 = *(a1 + 120);
    if (v65)
    {
      LODWORD(v66) = (*(*v65 + 24))(v65);
    }

    else
    {
      v66 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v64 >= v66)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v64);
    if (!Element)
    {
      goto LABEL_46;
    }

    (*(*Element + 56))(Element, &v75);
    ++v64;
  }

  for (i = 0; ; ++i)
  {
    v69 = *(a1 + 168);
    if (v69)
    {
      LODWORD(v70) = (*(*v69 + 24))(v69);
    }

    else
    {
      v70 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v70)
    {
      (*(*a1 + 512))(a1, 1156);
      *(a1 + 376) = 1;
      operator new();
    }

    v71 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v71)
    {
      break;
    }

    (*(*v71 + 56))(v71, &v72);
  }

LABEL_46:
  ausdk::Throw(0xFFFFD583);
}

void sub_1DDD4E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  v17 = v15;
  v19 = v17;
  *(v17 + 64) = 0;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = v19;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a14);
  MEMORY[0x1E12BD160](v19, 0x1020C40A98CFEF5);
  v20 = v14[117];
  if (v20)
  {
    v14[118] = v20;
    operator delete(v20);
  }

  v21 = v14[114];
  if (v21)
  {
    v14[115] = v21;
    operator delete(v21);
  }

  v22 = v14[111];
  if (v22)
  {
    v14[112] = v22;
    operator delete(v22);
  }

  v23 = v14[108];
  if (v23)
  {
    v14[109] = v23;
    operator delete(v23);
  }

  v24 = v14[105];
  if (v24)
  {
    v14[106] = v24;
    operator delete(v24);
  }

  v25 = v14[102];
  if (v25)
  {
    v14[103] = v25;
    operator delete(v25);
  }

  v26 = v14[99];
  if (v26)
  {
    v14[100] = v26;
    operator delete(v26);
  }

  v27 = v14[96];
  if (v27)
  {
    v14[97] = v27;
    operator delete(v27);
  }

  v28 = v14[93];
  if (v28)
  {
    v14[94] = v28;
    operator delete(v28);
  }

  std::unique_ptr<stvPlistHolder>::reset[abi:ne200100](v14 + 92, 0);
  v29 = *v16;
  *v16 = 0;
  if (v29)
  {
    (*(*v29 + 32))(v29);
  }

  ausdk::AUBase::~AUBase(v14);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSeparate>::Factory()
{
  result = malloc_type_malloc(0x300uLL, 0x10F304008971752uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSeparate>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSeparate>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSeparate>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5937900;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 544) = 0;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 150) = 512;
  *(v3 + 76) = 0x40E5888000000000;
  *(v3 + 154) = 3;
  *(v3 + 620) = 1;
  *(v3 + 43) = 0u;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 624) = 0;
  *(a1 + 628) = xmmword_1DE09CA30;
  *(a1 + 644) = -1046478848;
  *(a1 + 648) = 0;
  *(a1 + 652) = -1041235968;
  *(a1 + 660) = xmmword_1DE09CA40;
  *(a1 + 676) = -1027080192;
  *(a1 + 680) = 0xC2C80000C2B40000;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || (ausdk::AUElement::SetParameter(v4, 0, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 1u, 2.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 2u, 0.9), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 3u, -30.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 4u, 9.5424), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 5u, -20.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 6u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 7u, -30.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 8u, 60.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 9u, 7000.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 0xAu, 0.1), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 0xBu, 6.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xCu, -100.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xDu, -90.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v32, 0xEu, -100.0);
  v34 = 0;
  *(a1 + 608) = 0x40E5888000000000;
  v47 = 0x40E5888000000000;
  v48 = xmmword_1DE09C190;
  v49 = xmmword_1DE09C180;
  v44 = 0x40E5888000000000;
  v46 = xmmword_1DE09C180;
  v45 = xmmword_1DE09C190;
  while (1)
  {
    v35 = *(a1 + 120);
    if (v35)
    {
      LODWORD(v36) = (*(*v35 + 24))(v35);
    }

    else
    {
      v36 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v34 >= v36)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v34);
    if (!Element)
    {
LABEL_31:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v47);
    ++v34;
  }

  for (i = 0; ; ++i)
  {
    v39 = *(a1 + 168);
    if (v39)
    {
      LODWORD(v40) = (*(*v39 + 24))(v39);
    }

    else
    {
      v40 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v40)
    {
      break;
    }

    v41 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v41)
    {
      goto LABEL_31;
    }

    (*(*v41 + 56))(v41, &v44);
  }

  (*(*a1 + 512))(a1, 512);
  *(a1 + 376) = 1;
  AUSeparate::InitializeIVAClasses(a1);
  *(a1 + 620) = AUDebugFeature::IsNonFiniteHandlingEnabled(v42);
  return a1;
}

void sub_1DDD4F040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<IVA_DirectiV_Rank1A>::reset[abi:ne200100](v2 + 87, 0);
  std::unique_ptr<IVA_HRLS_Rank1>::reset[abi:ne200100](v2 + 86, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVADV2>::Factory()
{
  result = malloc_type_malloc(0x360uLL, 0x10F304067A36201uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVADV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVADV2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVADV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591B4B0;
  *(v3 + 528) = 0;
  *(v3 + 560) = 0;
  *(v3 + 71) = 0;
  *(v3 + 73) = 0;
  *(v3 + 72) = 0;
  *(v3 + 148) = 0;
  *(v3 + 75) = 0;
  *(v3 + 77) = 0;
  *(v3 + 76) = 0;
  *(v3 + 156) = 0;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 85) = 0;
  *(v3 + 344) = 1;
  *(v3 + 690) = 1;
  *(v3 + 173) = 1156;
  *(v3 + 87) = 0x40E5888000000000;
  *(v3 + 88) = 0x100000002;
  *(v3 + 356) = 0;
  *(v3 + 179) = 1;
  *(v3 + 750) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 16), *(a1 + 744) = xmmword_1DE09BCE0, *(a1 + 760) = 2, v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 7u, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 1u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v12, 9u, 2.0);
  v14 = 0;
  *v27 = 0x40E5888000000000;
  *&v27[8] = xmmword_1DE09BD50;
  v28 = 0x100000004;
  v29 = 32;
  while (1)
  {
    v15 = *(a1 + 120);
    if (v15)
    {
      LODWORD(v16) = (*(*v15 + 24))(v15);
    }

    else
    {
      v16 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v14 >= v16)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v14);
    if (!Element)
    {
LABEL_26:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v27);
    ++v14;
  }

  for (i = 0; ; ++i)
  {
    v19 = *(a1 + 168);
    if (v19)
    {
      LODWORD(v20) = (*(*v19 + 24))(v19);
    }

    else
    {
      v20 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v20)
    {
      break;
    }

    v21 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v21)
    {
      goto LABEL_26;
    }

    (*(*v21 + 56))(v21, v27);
  }

  v22 = (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  *(a1 + 690) = AUDebugFeature::IsNonFiniteHandlingEnabled(v22);
  if (getAUNeuralNetVADV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUNeuralNetVADV2Log(void)::onceToken, &__block_literal_global_121);
  }

  caulk::deferred_logger::create_v(v27, getAUNeuralNetVADV2Log(void)::gLog, v23);
  v24 = *v27;
  *v27 = 0uLL;
  v25 = *(a1 + 784);
  *(a1 + 776) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if (*&v27[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v27[8]);
    }
  }

  return a1;
}

void sub_1DDD4F4B8(_Unwind_Exception *a1)
{
  v5 = (v1 + 768);
  std::unique_ptr<caulk::concurrent::messenger>::~unique_ptr[abi:ne200100]((v1 + 792));
  v6 = *(v1 + 784);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v5)
  {
    CFRelease(*v5);
  }

  v7 = *(v1 + 736);
  *(v1 + 736) = 0;
  if (v7)
  {
    MEMORY[0x1E12BD160](v7, 0x1000C405EC8D984);
  }

  std::unique_ptr<BlockProcessorLowDelay>::reset[abi:ne200100]((v1 + 728), 0);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v2, 0);
  v8 = *(v1 + 680);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v1 + 672);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v1 + 648);
  if (v10)
  {
    *(v1 + 656) = v10;
    operator delete(v10);
  }

  if (*v3)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *v3 = 0;
  }

  *(v1 + 640) = 0;
  *(v1 + 624) = 0;
  if (*(v1 + 623) < 0)
  {
    operator delete(*(v1 + 600));
  }

  if (*(v1 + 560) == 1)
  {
    NeuralNet::~NeuralNet((v1 + 528));
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Factory()
{
  result = malloc_type_malloc(0x348uLL, 0x10F30406D6B50C8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5924080;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 544) = 0;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 300) = 256;
  *(v3 + 151) = 1156;
  *(v3 + 38) = xmmword_1DE09CA50;
  *(v3 + 156) = 1;
  v4 = (v3 + 736);
  *(v3 + 628) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 677) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 725) = 0;
  *(v3 + 96) = 0;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 688) = 0;
  *(a1 + 656) = 0u;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0
    || (ausdk::AUElement::SetParameter(v5, 0, 0.0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v7, 1u, 1.0), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v9, 2u, 0.3), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v11, 3u, 0.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v13, 4u, 0.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 5u, 0.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 6u, 0.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 7u, 0.5), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 8u, 10.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 9u, 0.1), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 0xAu, 0.1), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 0xBu, 0.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 0x16u, 0.0), *(a1 + 692) = 0, *(a1 + 696) = 0, *(a1 + 704) = 0, *(a1 + 708) = 0x3F0000003F800000, *(a1 + 716) = 2, *(a1 + 720) = 0, *(a1 + 728) = 1162039296, v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 0xCu, 0.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 0xDu, 0.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xEu, 0.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xFu, 0.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0x10u, 1.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0x11u, 0.5), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0x12u, 2.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0x13u, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x14u, 0.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v49, 0x15u, 3125.0);
  v51 = 0;
  *(a1 + 608) = 0x40E5888000000000;
  v61 = 0x40E5888000000000;
  v62 = xmmword_1DE09C190;
  v63 = xmmword_1DE09C600;
  while (1)
  {
    v52 = *(a1 + 120);
    if (v52)
    {
      LODWORD(v53) = (*(*v52 + 24))(v52);
    }

    else
    {
      v53 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v51 >= v53)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v51);
    if (!Element)
    {
LABEL_39:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v61);
    ++v51;
  }

  for (i = 0; ; ++i)
  {
    v56 = *(a1 + 168);
    if (v56)
    {
      LODWORD(v57) = (*(*v56 + 24))(v56);
    }

    else
    {
      v57 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v57)
    {
      break;
    }

    v58 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v58)
    {
      goto LABEL_39;
    }

    (*(*v58 + 56))(v58, &v61);
  }

  (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  *(a1 + 744) = *(a1 + 736);
  std::vector<float>::resize(v4, (*(a1 + 604) + 1));
  *(a1 + 601) = AUDebugFeature::IsNonFiniteHandlingEnabled(v59);
  return a1;
}

void sub_1DDD4FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::unique_ptr<caulk::concurrent::messenger>::~unique_ptr[abi:ne200100](v9 + 96);
  std::unique_ptr<DirectionalVAD>::reset[abi:ne200100](v9 + 95, 0);
  v13 = *v11;
  if (*v11)
  {
    v9[93] = v13;
    operator delete(v13);
  }

  std::unique_ptr<NeuralNetVAD>::reset[abi:ne200100](v10, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetSPP>::Factory()
{
  result = malloc_type_malloc(0x458uLL, 0x10F3040665BF302uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetSPP>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetSPP>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetSPP>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v3 = &unk_1F59360B0;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 560) = 0;
  *(v3 + 71) = 0;
  *(v3 + 144) = 0;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 308) = 0;
  *(v3 + 155) = 1156;
  *(v3 + 78) = 0x40E5888000000000;
  *(v3 + 158) = 16;
  *(v3 + 636) = 1;
  *(v3 + 984) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 1032) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0;
  *(a1 + 660) = 228737632;
  for (i = 664; ; i += 20)
  {
    v11 = *(a1 + 608);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (v4 >= v12)
    {
      break;
    }

    v13 = a1 + i;
    ++v4;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v15 & 1) == 0 || (ausdk::AUElement::SetParameter(v14, 0, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 1u, 1.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 2u, 0.3), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 3u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 4u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 5u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 6u, 1.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 7u, 0.3), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 8u, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 9u, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xAu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v36, 0xBu, -300.0);
  for (j = 0; ; ++j)
  {
    v39 = *(a1 + 608);
    if (v39)
    {
      LODWORD(v40) = (*(*v39 + 24))(v39);
    }

    else
    {
      v40 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (j >= v40)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(Element, 0x64u, 0.0);
    v42 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v42, 0x65u, 0.0);
    v43 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v43, 0x66u, 0.0);
    v44 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v44, 0x67u, 0.0);
    v45 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v45, 0x68u, 0.0);
  }

  v46 = 0;
  *(a1 + 624) = 0x40E5888000000000;
  v56 = 0x40E5888000000000;
  v57 = xmmword_1DE09C190;
  v58 = xmmword_1DE09CA20;
  while (1)
  {
    v47 = *(a1 + 120);
    if (v47)
    {
      LODWORD(v48) = (*(*v47 + 24))(v47);
    }

    else
    {
      v48 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v46 >= v48)
    {
      break;
    }

    v49 = ausdk::AUScope::GetElement((a1 + 80), v46);
    if (!v49)
    {
LABEL_40:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v49 + 56))(v49, &v56);
    ++v46;
  }

  for (k = 0; ; ++k)
  {
    v51 = *(a1 + 168);
    if (v51)
    {
      LODWORD(v52) = (*(*v51 + 24))(v51);
    }

    else
    {
      v52 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (k >= v52)
    {
      break;
    }

    v53 = ausdk::AUScope::GetElement((a1 + 128), k);
    if (!v53)
    {
      goto LABEL_40;
    }

    (*(*v53 + 56))(v53, &v56);
  }

  v54 = (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  *(a1 + 636) = AUDebugFeature::IsNonFiniteHandlingEnabled(v54);
  return a1;
}

void sub_1DDD501CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](v9 + 130, 0);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](v9 + 129, 0);
  v12 = v9[126];
  if (v12)
  {
    v9[127] = v12;
    operator delete(v12);
  }

  v13 = *v10;
  if (*v10)
  {
    v9[124] = v13;
    operator delete(v13);
  }

  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a9);
  ausdk::AUBase::~AUBase(v9);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetRES>::Factory()
{
  result = malloc_type_malloc(0x410uLL, 0x10F304033F499E6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetRES>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetRES>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetRES>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F5921BB8;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 560) = 0;
  *(v3 + 71) = 0;
  *(v3 + 144) = 0;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0;
  *(v3 + 155) = 1156;
  *(v3 + 78) = 0x40E5888000000000;
  *(v3 + 158) = 16;
  *(v3 + 636) = 1;
  *(v3 + 121) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  *(a1 + 640) = 646978941;
  *(a1 + 644) = 0;
  for (i = 648; ; i += 20)
  {
    v6 = *(a1 + 608);
    if (v6)
    {
      LODWORD(v7) = (*(*v6 + 24))(v6);
    }

    else
    {
      v7 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (v4 >= v7)
    {
      break;
    }

    v8 = a1 + i;
    ++v4;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0 || (ausdk::AUElement::SetParameter(v9, 0, 0.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 1u, 1.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 2u, 0.3), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 3u, -300.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v17, 4u, 0.0);
  for (j = 0; ; ++j)
  {
    v20 = *(a1 + 608);
    if (v20)
    {
      LODWORD(v21) = (*(*v20 + 24))(v20);
    }

    else
    {
      v21 = (*(a1 + 592) - *(a1 + 584)) >> 3;
    }

    if (j >= v21)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(Element, 0x64u, 0.0);
    v23 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v23, 0x65u, 0.0);
    v24 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v24, 0x66u, 0.0);
    v25 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v25, 0x67u, 0.0);
    v26 = ausdk::AUScope::GetElement((a1 + 568), j);
    ausdk::AUElement::SetParameter(v26, 0x68u, 0.0);
  }

  v27 = 0;
  *(a1 + 624) = 0x40E5888000000000;
  v40 = 0x40E5888000000000;
  v41 = xmmword_1DE09C190;
  v42 = xmmword_1DE09CA20;
  v37 = 0x40E5888000000000;
  v39 = xmmword_1DE09C600;
  v38 = xmmword_1DE09C190;
  while (1)
  {
    v28 = *(a1 + 120);
    if (v28)
    {
      LODWORD(v29) = (*(*v28 + 24))(v28);
    }

    else
    {
      v29 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v27 >= v29)
    {
      break;
    }

    v30 = ausdk::AUScope::GetElement((a1 + 80), v27);
    if (!v30)
    {
LABEL_33:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v30 + 56))(v30, &v40);
    ++v27;
  }

  for (k = 0; ; ++k)
  {
    v32 = *(a1 + 168);
    if (v32)
    {
      LODWORD(v33) = (*(*v32 + 24))(v32);
    }

    else
    {
      v33 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (k >= v33)
    {
      break;
    }

    v34 = ausdk::AUScope::GetElement((a1 + 128), k);
    if (!v34)
    {
      goto LABEL_33;
    }

    (*(*v34 + 56))(v34, &v37);
  }

  v35 = (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  *(a1 + 636) = AUDebugFeature::IsNonFiniteHandlingEnabled(v35);
  return a1;
}

void sub_1DDD506FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NeuralNetRES>::reset[abi:ne200100](v2 + 121, 0);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFIRFilter>::Factory()
{
  result = malloc_type_malloc(0x2E0uLL, 0x10F30404643C725uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFIRFilter>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFIRFilter>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFIRFilter>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 147) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0;
  *v3 = &unk_1F5924E70;
  *(v3 + 656) = 0;
  *(v3 + 83) = 0;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 617) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v7 = 0x40E5888000000000;
  v8 = xmmword_1DE09BD50;
  v9 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v7), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v7);
  return a1;
}

void sub_1DDD5091C(_Unwind_Exception *a1)
{
  if (*(v1 + 656) == 1)
  {
    v4 = *(v1 + 632);
    if (v4)
    {
      *(v1 + 640) = v4;
      operator delete(v4);
    }
  }

  applesauce::CF::NumberRef::~NumberRef((v1 + 624));
  applesauce::CF::StringRef::~StringRef((v1 + 616));
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 600) = v5;
    operator delete(v5);
  }

  ausdk::AUEffectBase::~AUEffectBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitchNF>::Factory()
{
  result = malloc_type_malloc(0x2C0uLL, 0x10F30407F6C8019uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitchNF>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitchNF>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitchNF>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F5926968;
  *(v3 + 528) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 79) = 1148846080;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*v4 + 40))(v4, 1);
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || (ausdk::Owned<__CFString const*>::operator=((Element + 72), @"Mic 1 EC LEE"), (v7 = ausdk::AUScope::GetElement((a1 + 80), 0)) == 0) || ((*(*v7 + 40))(v7, 5), (v8 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || (ausdk::Owned<__CFString const*>::operator=((v8 + 72), @"Mic 4 EC LEE"), (v9 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v9 + 40))(v9, 5), (v10 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || (ausdk::Owned<__CFString const*>::operator=((v10 + 72), @"EC LEE Output"), (v11 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
LABEL_30:
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v11 + 40))(v11, 5);
  *(a1 + 376) = 1;
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v13 & 1) == 0)
  {
LABEL_31:
    abort();
  }

  ausdk::AUElement::SetParameter(v12, 0, 0.0);
  v14 = 0;
  *&v26[0] = 0x100000000;
  do
  {
    v15 = *(v26 + v14);
    AUMixSwitch::SetParameter(a1, 0, v15);
    AUMixSwitch::SetParameter(a1, 1u, v15);
    AUMixSwitch::SetParameter(a1, 2u, v15);
    AUMixSwitch::SetParameter(a1, 3u, v15);
    AUMixSwitch::SetParameter(a1, 4u, v15);
    v14 += 4;
  }

  while (v14 != 8);
  AUMixSwitch::SetParameter(a1, 0, 0.0);
  AUMixSwitch::SetParameter(a1, 1u, 0.0);
  AUMixSwitch::SetParameter(a1, 2u, 0.0);
  AUMixSwitch::SetParameter(a1, 3u, 0.0);
  AUMixSwitch::SetParameter(a1, 4u, 0.0);
  v16 = 0;
  v26[0] = xmmword_1DE0D9228;
  v26[1] = unk_1DE0D9238;
  v27 = 64;
  while (1)
  {
    v17 = *(a1 + 120);
    if (v17)
    {
      LODWORD(v18) = (*(*v17 + 24))(v17);
    }

    else
    {
      v18 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v16 >= v18)
    {
      break;
    }

    v19 = ausdk::AUScope::GetElement((a1 + 80), v16);
    if (!v19)
    {
      goto LABEL_30;
    }

    (*(*v19 + 56))(v19, v26);
    ++v16;
  }

  for (i = 0; ; ++i)
  {
    v21 = *(a1 + 168);
    if (v21)
    {
      LODWORD(v22) = (*(*v21 + 24))(v21);
    }

    else
    {
      v22 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v22)
    {
      break;
    }

    v23 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v23)
    {
      goto LABEL_30;
    }

    (*(*v23 + 56))(v23, v26);
  }

  if (getAUMixSwitchNFLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
  }

  v24 = getAUMixSwitchNFLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    LODWORD(v26[0]) = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_INFO, "[%p] created", v26, 0xCu);
  }

  return a1;
}

void sub_1DDD50E9C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 76);
  if (v4)
  {
    *(v1 + 77) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 73);
  if (v5)
  {
    *(v1 + 74) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 70);
  if (v6)
  {
    *(v1 + 71) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 68) = v7;
    operator delete(v7);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitch>::Factory()
{
  result = malloc_type_malloc(0x290uLL, 0x10F30409390ED5CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitch>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitch>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitch>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F591C048;
  *(v3 + 528) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 73) = 1148846080;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*v4 + 40))(v4, 1);
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || (ausdk::Owned<__CFString const*>::operator=((Element + 72), @"Front mic EC LEE"), (v7 = ausdk::AUScope::GetElement((a1 + 80), 0)) == 0) || ((*(*v7 + 40))(v7, 5), (v8 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || (ausdk::Owned<__CFString const*>::operator=((v8 + 72), @"Back mic EC LEE"), (v9 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v9 + 40))(v9, 5), (v10 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || (ausdk::Owned<__CFString const*>::operator=((v10 + 72), @"EC LEE Output"), (v11 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
LABEL_30:
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v11 + 40))(v11, 5);
  *(a1 + 376) = 1;
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v13 & 1) == 0)
  {
LABEL_31:
    abort();
  }

  ausdk::AUElement::SetParameter(v12, 0, 0.0);
  v14 = 0;
  *&v26[0] = 0x100000000;
  do
  {
    v15 = *(v26 + v14);
    AUMixSwitch::SetParameter(a1, 0, v15);
    AUMixSwitch::SetParameter(a1, 1u, v15);
    AUMixSwitch::SetParameter(a1, 2u, v15);
    AUMixSwitch::SetParameter(a1, 3u, v15);
    AUMixSwitch::SetParameter(a1, 4u, v15);
    v14 += 4;
  }

  while (v14 != 8);
  AUMixSwitch::SetParameter(a1, 0, 0.0);
  AUMixSwitch::SetParameter(a1, 1u, 0.0);
  AUMixSwitch::SetParameter(a1, 2u, 0.0);
  AUMixSwitch::SetParameter(a1, 3u, 0.0);
  AUMixSwitch::SetParameter(a1, 4u, 0.0);
  v16 = 0;
  v26[0] = xmmword_1DE0D9228;
  v26[1] = unk_1DE0D9238;
  v27 = 64;
  while (1)
  {
    v17 = *(a1 + 120);
    if (v17)
    {
      LODWORD(v18) = (*(*v17 + 24))(v17);
    }

    else
    {
      v18 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v16 >= v18)
    {
      break;
    }

    v19 = ausdk::AUScope::GetElement((a1 + 80), v16);
    if (!v19)
    {
      goto LABEL_30;
    }

    (*(*v19 + 56))(v19, v26);
    ++v16;
  }

  for (i = 0; ; ++i)
  {
    v21 = *(a1 + 168);
    if (v21)
    {
      LODWORD(v22) = (*(*v21 + 24))(v21);
    }

    else
    {
      v22 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v22)
    {
      break;
    }

    v23 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v23)
    {
      goto LABEL_30;
    }

    (*(*v23 + 56))(v23, v26);
  }

  if (getAUMixSwitchLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchLog(void)::onceToken, &__block_literal_global_349);
  }

  v24 = getAUMixSwitchLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    LODWORD(v26[0]) = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_INFO, "[%p] created", v26, 0xCu);
  }

  return a1;
}

void sub_1DDD51424(_Unwind_Exception *a1)
{
  v4 = *(v1 + 70);
  if (v4)
  {
    *(v1 + 71) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 68) = v5;
    operator delete(v5);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNFSelector>::Factory()
{
  result = malloc_type_malloc(0x580uLL, 0x10F304003C3E2B2uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNFSelector>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNFSelector>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNFSelector>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 5, 2);
  *v3 = &unk_1F5930158;
  *(v3 + 66) = 1;
  *(v3 + 536) = 0;
  *(v3 + 135) = 0;
  *(v3 + 68) = 0x48400000000;
  *(v3 + 69) = 0x40E5888000000000;
  *(v3 + 140) = 0;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 178) = 0;
  *(v3 + 716) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 166) = 0;
  *(v3 + 153) = 0;
  *(v3 + 1192) = 0u;
  *(v3 + 1208) = 0u;
  *(v3 + 1160) = 0u;
  *(v3 + 1176) = 0u;
  *(v3 + 1128) = 0u;
  *(v3 + 1144) = 0u;
  *(v3 + 1096) = 0u;
  *(v3 + 1112) = 0u;
  *(v3 + 1064) = 0u;
  *(v3 + 1080) = 0u;
  *(v3 + 1032) = 0u;
  *(v3 + 1048) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 968) = 0u;
  *(v3 + 984) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 728) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 27), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 2u, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 0, 1.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 4u, 1.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 5u, 4.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 6u, 7.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 7u, 4.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 8u, 60.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 9u, 75.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xAu, 60.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xBu, 0.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xCu, 1.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0xDu, 0.84), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xEu, -0.13), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xFu, 160.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 800.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x12u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x13u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x14u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x15u, 0.1), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x16u, 0.5), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x17u, 0.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x18u, 0.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x19u, 0.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v58, 0x1Au, 5.0);
  *(a1 + 1232) = xmmword_1DE09C160;
  *(a1 + 1248) = 1;
  *(a1 + 1252) = xmmword_1DE09CA60;
  *(a1 + 1268) = 1117126656;
  *(a1 + 1272) = 1114636288;
  *(a1 + 1280) = 0;
  *(a1 + 1284) = 1065353216;
  *(a1 + 1288) = 0xBE051EB83F570A3DLL;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1308) = 0u;
  *(a1 + 1324) = 0u;
  *(a1 + 1340) = 5;
  (*(*a1 + 112))(a1, 2, AUBeamNFSelector::SampleRateChangedCallback, a1);
  (*(*a1 + 112))(a1, 8, AUBeamNFSelector::SampleRateChangedCallback, a1);
  (*(*a1 + 112))(a1, 14, AUBeamNFSelector::BlockSizeChangedCallback, a1);
  v60 = 0;
  *(a1 + 376) = 1;
  v69 = 0x40E5888000000000;
  v70 = xmmword_1DE09C190;
  v71 = xmmword_1DE09C600;
  while (1)
  {
    v61 = *(a1 + 120);
    if (v61)
    {
      LODWORD(v62) = (*(*v61 + 24))(v61);
    }

    else
    {
      v62 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v60 >= v62)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v60);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v69);
    ++v60;
  }

  for (i = 0; ; ++i)
  {
    v65 = *(a1 + 168);
    if (v65)
    {
      LODWORD(v66) = (*(*v65 + 24))(v65);
    }

    else
    {
      v66 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v66)
    {
      break;
    }

    v67 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v67)
    {
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v67 + 56))(v67, &v69);
  }

  return a1;
}

void sub_1DDD51BE0(_Unwind_Exception *a1)
{
  v5 = *(v1 + 1208);
  if (v5)
  {
    *(v1 + 1216) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 1184);
  if (v6)
  {
    *(v1 + 1192) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 1160);
  if (v7)
  {
    *(v1 + 1168) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 1136);
  if (v8)
  {
    *(v1 + 1144) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 1112);
  if (v9)
  {
    *(v1 + 1120) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 1088);
  if (v10)
  {
    *(v1 + 1096) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 1064);
  if (v11)
  {
    *(v1 + 1072) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 1040);
  if (v12)
  {
    *(v1 + 1048) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 1016);
  if (v13)
  {
    *(v1 + 1024) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 992);
  if (v14)
  {
    *(v1 + 1000) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 968);
  if (v15)
  {
    *(v1 + 976) = v15;
    operator delete(v15);
  }

  v16 = *(v1 + 944);
  if (v16)
  {
    *(v1 + 952) = v16;
    operator delete(v16);
  }

  v17 = *(v1 + 920);
  if (v17)
  {
    *(v1 + 928) = v17;
    operator delete(v17);
  }

  v18 = *(v1 + 896);
  if (v18)
  {
    *(v1 + 904) = v18;
    operator delete(v18);
  }

  v19 = *(v1 + 872);
  if (v19)
  {
    *(v1 + 880) = v19;
    operator delete(v19);
  }

  v20 = *(v1 + 848);
  if (v20)
  {
    *(v1 + 856) = v20;
    operator delete(v20);
  }

  v21 = *(v1 + 824);
  if (v21)
  {
    *(v1 + 832) = v21;
    operator delete(v21);
  }

  v22 = *(v1 + 800);
  if (v22)
  {
    *(v1 + 808) = v22;
    operator delete(v22);
  }

  v23 = *(v1 + 776);
  if (v23)
  {
    *(v1 + 784) = v23;
    operator delete(v23);
  }

  v24 = *(v1 + 752);
  if (v24)
  {
    *(v1 + 760) = v24;
    operator delete(v24);
  }

  v25 = (v1 + 672);
  v26 = *v3;
  if (*v3)
  {
    *(v1 + 736) = v26;
    operator delete(v26);
  }

  v27 = *v25;
  if (*v25)
  {
    *(v1 + 680) = v27;
    operator delete(v27);
  }

  v28 = *(v1 + 632);
  if (v28)
  {
    *(v1 + 640) = v28;
    operator delete(v28);
  }

  v29 = *(v1 + 608);
  if (v29)
  {
    *(v1 + 616) = v29;
    operator delete(v29);
  }

  v30 = *(v1 + 584);
  if (v30)
  {
    *(v1 + 592) = v30;
    operator delete(v30);
  }

  if (*v2)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *v2 = 0;
  }

  *(v1 + 576) = 0;
  *(v1 + 560) = 0;
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNF>::Factory()
{
  result = malloc_type_malloc(0xAC8uLL, 0x10F30409D34521AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNF>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNF>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNF>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 2);
  *v3 = &unk_1F59266F0;
  *(v3 + 66) = 0x200000000;
  *(v3 + 536) = 0;
  *(v3 + 540) = 0;
  *(v3 + 68) = 0;
  *(v3 + 552) = 1;
  *(v3 + 70) = 0;
  *(v3 + 72) = 0;
  *(v3 + 71) = 0;
  *(v3 + 146) = 0;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 620) = 0u;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v124, *(v3 + 1));
  *(a1 + 636) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_random_input", @"com.apple.coreaudio", 0))
  {
    *(a1 + 636) = 1;
  }

  *(a1 + 637) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_dump_diffr", @"com.apple.coreaudio", 0))
  {
    *(a1 + 637) = 1;
  }

  *(a1 + 638) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_dump_eq", @"com.apple.coreaudio", 0))
  {
    *(a1 + 638) = 1;
  }

  *(a1 + 639) = 0;
  v4 = CFPreferencesCopyAppValue(@"beam2_custom_diffr_path", @"com.apple.coreaudio");
  v5 = v4;
  if (v4)
  {
    CFStringGetCString(v4, (a1 + 640), 1024, 0x600u);
    CFRelease(v5);
    *(a1 + 639) = 1;
  }

  *(a1 + 1664) = 0;
  v6 = CFPreferencesCopyAppValue(@"beam2_custom_eq_path", @"com.apple.coreaudio");
  v9 = v6;
  if (v6)
  {
    CFStringGetCString(v6, (a1 + 1665), 1024, 0x600u);
    CFRelease(v9);
    *(a1 + 1664) = 1;
  }

  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope && (*(AUBeamNFLogScope(void)::scope + 8) & 1) != 0 && (v10 = *AUBeamNFLogScope(void)::scope) != 0 && os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "AUBeamNF.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 222;
    *&buf[18] = 2048;
    v136 = a1;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::AUBeamNF (%p)", buf, 0x1Cu);
    v11 = AUBeamNFLogScope(void)::once == -1;
  }

  else
  {
    v11 = 1;
  }

  v8.i32[0] = HIDWORD(v124);
  v7.i32[0] = v124;
  v12 = vrev64_s16(*&vmovl_u8(v7));
  v122 = vuzp1_s8(v12, v12).u32[0];
  v123 = 0;
  v13 = vrev64_s16(*&vmovl_u8(v8));
  v14 = vuzp1_s8(v13, v13);
  v120 = v14.i32[0];
  v121 = 0;
  v14.i32[0] = v125;
  v15 = vrev64_s16(*&vmovl_u8(v14));
  v118 = vuzp1_s8(v15, v15).u32[0];
  v119 = 0;
  if (!v11)
  {
    v117 = HIDWORD(v124);
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    v8.i32[0] = v117;
  }

  v16 = v8.i32[0];
  if (!AUBeamNFLogScope(void)::scope)
  {
    v17 = MEMORY[0x1E69E9C10];
LABEL_25:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "AUBeamNF.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 227;
      *&buf[18] = 2080;
      v136 = &v122;
      *v137 = 2080;
      *&v137[2] = &v120;
      *&v137[10] = 2080;
      v138 = &v118;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Component info: %s %s %s", buf, 0x30u);
    }

    goto LABEL_27;
  }

  v17 = *AUBeamNFLogScope(void)::scope;
  if (*AUBeamNFLogScope(void)::scope)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v16 == 1650814258)
  {
    *(a1 + 552) = 1;
  }

  else
  {
    *(a1 + 552) = 0;
    *(a1 + 376) = 1;
    (*(*a1 + 512))(a1, 240);
  }

  ausdk::AUBase::CreateElements(a1);
  v18 = *(a1 + 552);
  *buf = 0x40E5888000000000;
  v19.n128_u64[0] = 0x296C70636DLL;
  if (v18)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  *&buf[8] = 0x296C70636DLL;
  if (v18)
  {
    v21 = 32;
  }

  else
  {
    v21 = 64;
  }

  *&buf[16] = v20;
  LODWORD(v136) = 1;
  HIDWORD(v136) = v20;
  *v137 = 2;
  *&v137[4] = v21;
  *&v137[8] = 0;
  v127 = 0x40E5888000000000;
  v128 = 0x296C70636DLL;
  v129 = v20;
  v130 = 1;
  v131 = v20;
  v132 = 1;
  v133 = v21;
  v134 = 0;
  if ((v18 & 1) == 0)
  {
    LODWORD(v128) = 1718773105;
    *&buf[8] = 1718773105;
  }

  for (i = 0; ; ++i)
  {
    v23 = *(a1 + 120);
    if (v23)
    {
      LODWORD(v24) = (*(*v23 + 24))(v23, v19);
    }

    else
    {
      v24 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (i >= v24)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), i);
    if (!Element)
    {
LABEL_58:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, buf);
  }

  for (j = 0; ; ++j)
  {
    v27 = *(a1 + 168);
    if (v27)
    {
      LODWORD(v28) = (*(*v27 + 24))(v27);
    }

    else
    {
      v28 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (j >= v28)
    {
      break;
    }

    v29 = ausdk::AUScope::GetElement((a1 + 128), j);
    if (!v29)
    {
      goto LABEL_58;
    }

    (*(*v29 + 56))(v29, &v127);
  }

  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_59;
  }

  ausdk::AUElement::SetParameter(v30, 0, 0.0);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_59;
  }

  ausdk::AUElement::SetParameter(v32, 0x20u, 0.0);
  v34 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v34, 1u, 1.0);
  v35 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v35, 1u, 1.0);
  v36 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v36, 2u, 1.0);
  v37 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v37, 2u, 1.0);
  v38 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v38, 3u, 0.0);
  v39 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v39, 3u, 0.0);
  v40 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v40, 0x2Au, 1.0);
  v41 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v41, 0x2Au, 1.0);
  v42 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v42, 4u, 0.0);
  v43 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v43, 4u, 0.0);
  if (*(a1 + 552) == 1)
  {
    v44 = ausdk::AUScope::GetElement((a1 + 576), 0);
    ausdk::AUElement::SetParameter(v44, 5u, 0.0);
    v45 = ausdk::AUScope::GetElement((a1 + 576), 1u);
    ausdk::AUElement::SetParameter(v45, 5u, 0.0);
    v46 = ausdk::AUScope::GetElement((a1 + 576), 0);
    ausdk::AUElement::SetParameter(v46, 6u, 0.5);
    v47 = ausdk::AUScope::GetElement((a1 + 576), 1u);
    ausdk::AUElement::SetParameter(v47, 6u, 0.5);
    v48 = ausdk::AUScope::GetElement((a1 + 576), 0);
    ausdk::AUElement::SetParameter(v48, 0x29u, 1.0);
    v49 = ausdk::AUScope::GetElement((a1 + 576), 1u);
    ausdk::AUElement::SetParameter(v49, 0x29u, 1.0);
  }

  v50 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v50, 7u, 0.0);
  v51 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v51, 7u, 0.0);
  v52 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v52, 8u, 0.5);
  v53 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v53, 8u, 0.5);
  v54 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v54, 9u, -100.0);
  v55 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v55, 9u, -100.0);
  v56 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v56, 0xAu, 0.0);
  v57 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v57, 0xAu, 0.0);
  v58 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v58, 0xBu, 24000.0);
  v59 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v59, 0xBu, 24000.0);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v61 & 1) == 0)
  {
LABEL_59:
    abort();
  }

  ausdk::AUElement::SetParameter(v60, 0xCu, 26.0);
  v62 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v62, 0xDu, 1.0);
  v63 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v63, 0xDu, 1.0);
  v64 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v64, 0xEu, 5.0);
  v65 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v65, 0xEu, 5.0);
  v66 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v66, 0xFu, 26.0);
  v67 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v67, 0xFu, 26.0);
  v68 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v68, 0x10u, 145.0);
  v69 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v69, 0x10u, 145.0);
  v70 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v70, 0x11u, 12.0);
  v71 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v71, 0x11u, 12.0);
  v72 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v72, 0x12u, 1.0);
  v73 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v73, 0x12u, 1.0);
  v74 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v74, 0x13u, 45.0);
  v75 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v75, 0x13u, 45.0);
  v76 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v76, 0x14u, 90.0);
  v77 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v77, 0x14u, 90.0);
  v78 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v78, 0x15u, 3072.0);
  v79 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v79, 0x15u, 3072.0);
  v80 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v80, 0x16u, 3072.0);
  v81 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v81, 0x16u, 3072.0);
  v82 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v82, 0x17u, 9.3132e-13);
  v83 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v83, 0x17u, 9.3132e-13);
  v84 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v84, 0x18u, 768.0);
  v85 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v85, 0x18u, 768.0);
  v86 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v86, 0x19u, -2304.0);
  v87 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v87, 0x19u, -2304.0);
  v88 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v88, 0x1Au, -512.0);
  v89 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v89, 0x1Au, -512.0);
  v90 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v90, 0x1Bu, 768.0);
  v91 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v91, 0x1Bu, 768.0);
  v92 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v92, 0x1Cu, 250.0);
  v93 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v93, 0x1Cu, 250.0);
  v94 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v94, 0x1Du, 1625.0);
  v95 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v95, 0x1Du, 1625.0);
  v96 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v96, 0x1Eu, 800.0);
  v97 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v97, 0x1Eu, 800.0);
  v98 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v98, 0x1Fu, 800.0);
  v99 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v99, 0x1Fu, 800.0);
  v100 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v100, 0x21u, 0.0);
  v101 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v101, 0x21u, 0.0);
  v102 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v102, 0x22u, 0.0);
  v103 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v103, 0x22u, 0.0);
  v104 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v104, 0x23u, 2500.0);
  v105 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v105, 0x23u, 2500.0);
  v106 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v106, 0x24u, 0.7);
  v107 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v107, 0x24u, 0.7);
  v108 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v108, 0x25u, 0.5);
  v109 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v109, 0x25u, 0.5);
  v110 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v110, 0x27u, 1.0);
  v111 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v111, 0x27u, 1.0);
  v112 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v112, 0x26u, 750.0);
  v113 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v113, 0x26u, 750.0);
  v114 = ausdk::AUScope::GetElement((a1 + 576), 0);
  ausdk::AUElement::SetParameter(v114, 0x28u, 0.0);
  v115 = ausdk::AUScope::GetElement((a1 + 576), 1u);
  ausdk::AUElement::SetParameter(v115, 0x28u, 0.0);
  return a1;
}

void sub_1DDD52CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v7);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Factory()
{
  result = malloc_type_malloc(0xB18uLL, 0x10F30406B5CB40FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5937E58;
  *(v3 + 33) = xmmword_1DE09C710;
  *(v3 + 136) = 0;
  *(v3 + 274) = 1;
  *(v3 + 632) = 0;
  *(v3 + 80) = 0;
  *(v3 + 162) = 0;
  *(v3 + 2760) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 684) = 0u;
  std::unique_ptr<CmhBEAM>::reset[abi:ne200100](v3 + 69, 0);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v124, *(a1 + 8));
  *(a1 + 700) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_random_input", @"com.apple.coreaudio", 0))
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 701) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_dump_diffr", @"com.apple.coreaudio", 0))
  {
    *(a1 + 701) = 1;
  }

  *(a1 + 702) = 0;
  if (CACFPreferencesGetAppIntegerValue(@"beam2_dump_eq", @"com.apple.coreaudio", 0))
  {
    *(a1 + 702) = 1;
  }

  *(a1 + 703) = 0;
  v4 = CFPreferencesCopyAppValue(@"beam2_custom_diffr_path", @"com.apple.coreaudio");
  v5 = v4;
  if (v4)
  {
    CFStringGetCString(v4, (a1 + 704), 1024, 0x600u);
    CFRelease(v5);
    *(a1 + 703) = 1;
  }

  *(a1 + 1728) = 0;
  v6 = CFPreferencesCopyAppValue(@"beam2_custom_eq_path", @"com.apple.coreaudio");
  v9 = v6;
  if (v6)
  {
    CFStringGetCString(v6, (a1 + 1729), 1024, 0x600u);
    CFRelease(v9);
    *(a1 + 1728) = 1;
  }

  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope && (*(AUBeam2LogScope(void)::scope + 8) & 1) != 0 && (v10 = *AUBeam2LogScope(void)::scope) != 0 && os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "AUBeam2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 227;
    *&buf[18] = 2048;
    v136 = a1;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::AUBeam2 (%p)", buf, 0x1Cu);
    v11 = AUBeam2LogScope(void)::once == -1;
  }

  else
  {
    v11 = 1;
  }

  v8.i32[0] = HIDWORD(v124);
  v7.i32[0] = v124;
  v12 = vrev64_s16(*&vmovl_u8(v7));
  v122 = vuzp1_s8(v12, v12).u32[0];
  v123 = 0;
  v13 = vrev64_s16(*&vmovl_u8(v8));
  v14 = vuzp1_s8(v13, v13);
  v120 = v14.i32[0];
  v121 = 0;
  v14.i32[0] = v125;
  v15 = vrev64_s16(*&vmovl_u8(v14));
  v118 = vuzp1_s8(v15, v15).u32[0];
  v119 = 0;
  if (!v11)
  {
    v117 = HIDWORD(v124);
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    v8.i32[0] = v117;
  }

  v16 = v8.i32[0];
  if (!AUBeam2LogScope(void)::scope)
  {
    v17 = MEMORY[0x1E69E9C10];
LABEL_25:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "AUBeam2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 232;
      *&buf[18] = 2080;
      v136 = &v122;
      *v137 = 2080;
      *&v137[2] = &v120;
      *&v137[10] = 2080;
      v138 = &v118;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Component info: %s %s %s", buf, 0x30u);
    }

    goto LABEL_27;
  }

  v17 = *AUBeam2LogScope(void)::scope;
  if (*AUBeam2LogScope(void)::scope)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v16 == 1650814258)
  {
    *(a1 + 548) = 1;
  }

  else
  {
    *(a1 + 548) = 0;
    *(a1 + 376) = 1;
    (*(*a1 + 96))(a1, 3701, 0, 0, &kAUBeam2Default_TransformSize, 4);
    (*(*a1 + 512))(a1, 240);
  }

  (*(*a1 + 96))(a1, 3709, 0, 0, &kAUBeam2Default_ReverseMicChannelFlag, 4);
  ausdk::AUBase::CreateElements(a1);
  v18 = *(a1 + 548);
  *buf = 0x40E5888000000000;
  v19.n128_u64[0] = 0x296C70636DLL;
  if (v18)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  *&buf[8] = 0x296C70636DLL;
  if (v18)
  {
    v21 = 32;
  }

  else
  {
    v21 = 64;
  }

  *&buf[16] = v20;
  LODWORD(v136) = 1;
  HIDWORD(v136) = v20;
  *v137 = 2;
  *&v137[4] = v21;
  *&v137[8] = 0;
  v127 = 0x40E5888000000000;
  v128 = 0x296C70636DLL;
  v129 = v20;
  v130 = 1;
  v131 = v20;
  v132 = 1;
  v133 = v21;
  v134 = 0;
  if ((v18 & 1) == 0)
  {
    LODWORD(v128) = 1718773105;
    *&buf[8] = 1718773105;
  }

  for (i = 0; ; ++i)
  {
    v23 = *(a1 + 120);
    if (v23)
    {
      LODWORD(v24) = (*(*v23 + 24))(v23, v19);
    }

    else
    {
      v24 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (i >= v24)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), i);
    if (!Element)
    {
LABEL_58:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, buf);
  }

  for (j = 0; ; ++j)
  {
    v27 = *(a1 + 168);
    if (v27)
    {
      LODWORD(v28) = (*(*v27 + 24))(v27);
    }

    else
    {
      v28 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (j >= v28)
    {
      break;
    }

    v29 = ausdk::AUScope::GetElement((a1 + 128), j);
    if (!v29)
    {
      goto LABEL_58;
    }

    (*(*v29 + 56))(v29, &v127);
  }

  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_59;
  }

  ausdk::AUElement::SetParameter(v30, 0, 0.0);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_59;
  }

  ausdk::AUElement::SetParameter(v32, 0x20u, 0.0);
  v34 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v34, 1u, 1.0);
  v35 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v35, 1u, 1.0);
  v36 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v36, 2u, 1.0);
  v37 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v37, 2u, 1.0);
  v38 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v38, 3u, 0.0);
  v39 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v39, 3u, 0.0);
  v40 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v40, 0x2Au, 1.0);
  v41 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v41, 0x2Au, 1.0);
  v42 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v42, 4u, 1.0);
  v43 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v43, 4u, 1.0);
  if (*(a1 + 548) == 1)
  {
    v44 = ausdk::AUScope::GetElement((a1 + 640), 0);
    ausdk::AUElement::SetParameter(v44, 5u, 0.0);
    v45 = ausdk::AUScope::GetElement((a1 + 640), 1u);
    ausdk::AUElement::SetParameter(v45, 5u, 0.0);
    v46 = ausdk::AUScope::GetElement((a1 + 640), 0);
    ausdk::AUElement::SetParameter(v46, 6u, 0.5);
    v47 = ausdk::AUScope::GetElement((a1 + 640), 1u);
    ausdk::AUElement::SetParameter(v47, 6u, 0.5);
    v48 = ausdk::AUScope::GetElement((a1 + 640), 0);
    ausdk::AUElement::SetParameter(v48, 0x29u, 1.0);
    v49 = ausdk::AUScope::GetElement((a1 + 640), 1u);
    ausdk::AUElement::SetParameter(v49, 0x29u, 1.0);
  }

  v50 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v50, 7u, 0.0);
  v51 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v51, 7u, 0.0);
  v52 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v52, 8u, 0.5);
  v53 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v53, 8u, 0.5);
  v54 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v54, 9u, -100.0);
  v55 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v55, 9u, -100.0);
  v56 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v56, 0xAu, 0.0);
  v57 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v57, 0xAu, 0.0);
  v58 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v58, 0xBu, 24000.0);
  v59 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v59, 0xBu, 24000.0);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v61 & 1) == 0)
  {
LABEL_59:
    abort();
  }

  ausdk::AUElement::SetParameter(v60, 0xCu, 26.0);
  v62 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v62, 0xDu, 1.0);
  v63 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v63, 0xDu, 1.0);
  v64 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v64, 0xEu, 5.0);
  v65 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v65, 0xEu, 5.0);
  v66 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v66, 0xFu, 26.0);
  v67 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v67, 0xFu, 26.0);
  v68 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v68, 0x10u, 145.0);
  v69 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v69, 0x10u, 145.0);
  v70 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v70, 0x11u, 4.0);
  v71 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v71, 0x11u, 4.0);
  v72 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v72, 0x12u, 1.0);
  v73 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v73, 0x12u, 1.0);
  v74 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v74, 0x13u, 45.0);
  v75 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v75, 0x13u, 45.0);
  v76 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v76, 0x14u, 90.0);
  v77 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v77, 0x14u, 90.0);
  v78 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v78, 0x15u, 3072.0);
  v79 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v79, 0x15u, 3072.0);
  v80 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v80, 0x16u, 3072.0);
  v81 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v81, 0x16u, 3072.0);
  v82 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v82, 0x17u, 9.3132e-13);
  v83 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v83, 0x17u, 9.3132e-13);
  v84 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v84, 0x18u, 768.0);
  v85 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v85, 0x18u, 768.0);
  v86 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v86, 0x19u, -2304.0);
  v87 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v87, 0x19u, -2304.0);
  v88 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v88, 0x1Au, -512.0);
  v89 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v89, 0x1Au, -512.0);
  v90 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v90, 0x1Bu, 768.0);
  v91 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v91, 0x1Bu, 768.0);
  v92 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v92, 0x1Cu, 250.0);
  v93 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v93, 0x1Cu, 250.0);
  v94 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v94, 0x1Du, 1625.0);
  v95 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v95, 0x1Du, 1625.0);
  v96 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v96, 0x1Eu, 800.0);
  v97 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v97, 0x1Eu, 800.0);
  v98 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v98, 0x1Fu, 800.0);
  v99 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v99, 0x1Fu, 800.0);
  v100 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v100, 0x21u, 0.0);
  v101 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v101, 0x21u, 0.0);
  v102 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v102, 0x22u, 0.0);
  v103 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v103, 0x22u, 0.0);
  v104 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v104, 0x23u, 2500.0);
  v105 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v105, 0x23u, 2500.0);
  v106 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v106, 0x24u, 0.7);
  v107 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v107, 0x24u, 0.7);
  v108 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v108, 0x25u, 0.5);
  v109 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v109, 0x25u, 0.5);
  v110 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v110, 0x27u, 0.0);
  v111 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v111, 0x27u, 0.0);
  v112 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v112, 0x26u, 24000.0);
  v113 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v113, 0x26u, 24000.0);
  v114 = ausdk::AUScope::GetElement((a1 + 640), 0);
  ausdk::AUElement::SetParameter(v114, 0x28u, 0.0);
  v115 = ausdk::AUScope::GetElement((a1 + 640), 1u);
  ausdk::AUElement::SetParameter(v115, 0x28u, 0.0);
  return a1;
}

void sub_1DDD53C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v11 = *(v7 + 2760);
  if (v11)
  {
    v12 = *(v7 + 2768);
    if (v12 != v11)
    {
      *(v7 + 2768) = &v12[(v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v11);
    *v9 = 0;
    v9[1] = 0;
  }

  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v7 + 632) == 1)
  {
    BlockBuffer::~BlockBuffer((v7 + 592));
    BlockBuffer::~BlockBuffer((v7 + 568));
  }

  std::unique_ptr<CmhBEAM2NOpt>::reset[abi:ne200100]((v7 + 560), 0);
  std::unique_ptr<CmhBEAM>::reset[abi:ne200100](v8, 0);
  ausdk::AUBase::~AUBase(v7);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeakerProtectionV3>::Factory()
{
  result = malloc_type_malloc(0x5A0uLL, 0x10F3040CA527D4DuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeakerProtectionV3>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeakerProtectionV3>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeakerProtectionV3>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F592DF58;
  *(v3 + 584) = 0;
  *(v3 + 592) = 0;
  *(v3 + 616) = 0;
  *(v3 + 132) = 0;
  *(v3 + 266) = 0;
  *(v3 + 67) = 0;
  *(v3 + 34) = 0u;
  *(v3 + 560) = 0;
  *(v3 + 39) = 0u;
  *(v3 + 40) = xmmword_1DE09CA70;
  *(a1 + 656) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 664) = 257;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 956) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 897) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 960) = 1148846080;
  *buf = vdupq_n_s32(0x42480000u);
  *(a1 + 968) = 0;
  *(a1 + 984) = 0;
  *(a1 + 976) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1 + 968, buf, v16, 4uLL);
  cpms::TimeScale<float>::TimeScale(buf, "cpms_ts_i");
  cpms::TimeScale<float>::TimeScale(&cf, "cpms_ts_100");
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v16[2] = v4;
  v17 = v14;
  v19 = 1;
  v18 = 1036831949;
  cpms::TimeScale<float>::TimeScale(&v9, "cpms_ts_1000");
  v5 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v20 = v5;
  v21 = v10;
  v23 = 1;
  v22 = 1065353216;
  cpms::TimeScale<float>::TimeScale(&v7, "cpms_ts_thermal");
  v6 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v24 = v6;
  v25 = v8;
  v27 = 1;
  v26 = 1114636288;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0;
  v11 = a1 + 992;
  v12 = 0;
  operator new();
}

void sub_1DDD54E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CAExtAudioFile *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSpatialMap>::Factory()
{
  result = malloc_type_malloc(0x508uLL, 0x10F304080060727uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSpatialMap>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSpatialMap>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSpatialMap>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591FC48;
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 90) = 0;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  *(v3 + 51) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 54) = 0u;
  *(v3 + 55) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 57) = 0u;
  *(v3 + 58) = 0u;
  *(v3 + 59) = 0u;
  *(v3 + 60) = 0u;
  *(v3 + 61) = 0u;
  *(v3 + 62) = 0u;
  *(v3 + 63) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 66) = 0u;
  *(v3 + 67) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 71) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 73) = 0u;
  *(v3 + 148) = 0x40000000080;
  *(v3 + 150) = 0x43FA000044FA0000;
  *(v3 + 151) = 0;
  *(v3 + 1216) = 0;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, *(a1 + 1188));
  v10 = 0x40E5888000000000;
  v11 = xmmword_1DE09BD50;
  v12 = xmmword_1DE09C560;
  v7 = 0x40E5888000000000;
  v8 = xmmword_1DE09BD50;
  v9 = xmmword_1DE09C560;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v10), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v7);
  return a1;
}

void sub_1DDD55350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[145];
  if (v5)
  {
    v2[146] = v5;
    operator delete(v5);
  }

  v6 = v2[142];
  if (v6)
  {
    v2[143] = v6;
    operator delete(v6);
  }

  RotationUtilities::~RotationUtilities((v2 + 122));
  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = v2[116];
  if (v7)
  {
    v2[117] = v7;
    operator delete(v7);
  }

  v8 = v2[111];
  if (v8)
  {
    v2[112] = v8;
    operator delete(v8);
  }

  v9 = v2[106];
  if (v9)
  {
    v2[107] = v9;
    operator delete(v9);
  }

  v10 = v2[103];
  if (v10)
  {
    v2[104] = v10;
    operator delete(v10);
  }

  v11 = v2[100];
  if (v11)
  {
    v2[101] = v11;
    operator delete(v11);
  }

  v12 = v2[95];
  if (v12)
  {
    v2[96] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v2[93] = v13;
    operator delete(v13);
  }

  v14 = v2[88];
  if (v14)
  {
    v2[89] = v14;
    operator delete(v14);
  }

  v15 = v2[83];
  if (v15)
  {
    v2[84] = v15;
    operator delete(v15);
  }

  v16 = v2[78];
  if (v16)
  {
    v2[79] = v16;
    operator delete(v16);
  }

  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](va);
  v17 = v2[70];
  if (v17)
  {
    v2[71] = v17;
    operator delete(v17);
  }

  v18 = v2[67];
  v2[67] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  std::unique_ptr<ParametricProcessor>::reset[abi:ne200100](v2 + 66, 0);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolume>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F30403525CFACuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolume>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolume>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolume>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 588) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0;
  *v3 = &unk_1F59303C8;
  *(v3 + 75) = 0;
  *(v3 + 595) = 0;
  ausdk::AUEffectBase::SetParameter(v3, 0x7063676Eu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x5F737776u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x766F6C74u, 0.05);
  ausdk::AUEffectBase::SetParameter(a1, 0x6365696Cu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x636C6970u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x6D6F6465u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x766F6C76u, 0.05);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSoftClip>::Factory()
{
  result = malloc_type_malloc(0x298uLL, 0x10F3040FF1AFD65uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSoftClip>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSoftClip>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSoftClip>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 588) = 0;
  *(v3 + 568) = 0u;
  *v3 = &unk_1F592BFD0;
  *(v3 + 584) = 1;
  ausdk::AUEffectBase::SetParameter(v3, 0x736F6674u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x68617264u, 0.0);
  ausdk::AUBase::CreateElements(a1);
  v7 = 0x40E5888000000000;
  v8 = xmmword_1DE09CA80;
  v9 = xmmword_1DE09CA90;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v7), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v7);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBoostClip>::Factory()
{
  result = malloc_type_malloc(0x298uLL, 0x10F304014D41E0EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBoostClip>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBoostClip>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBoostClip>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 147) = 0;
  *(v3 + 568) = 0u;
  *v3 = &unk_1F5931D20;
  *(v3 + 74) = 0;
  *(v3 + 584) = 1;
  ausdk::AUEffectBase::SetParameter(v3, 0x626F6F66u, 0.2);
  ausdk::AUEffectBase::SetParameter(a1, 0x63757466u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x7063676Eu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x5F737776u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x6D617867u, 12.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x766F6C74u, 0.05);
  ausdk::AUEffectBase::SetParameter(a1, 0x6E61746Bu, 0.05);
  ausdk::AUEffectBase::SetParameter(a1, 0x6E72656Cu, 0.05);
  ausdk::AUEffectBase::SetParameter(a1, 0x61746B74u, 0.5);
  ausdk::AUEffectBase::SetParameter(a1, 0x72656C74u, 0.5);
  ausdk::AUEffectBase::SetParameter(a1, 0x6365696Cu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x636C6970u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x74687273u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x6E6F6973u, -100.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x6D6F6465u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x7363656Eu, 1.0);
  return a1;
}

AudioComponent RegisterInternalAudioUnits_iOS(uint64_t a1)
{
  qmemcpy(&inDesc, "xfuadqbplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBiquad", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBiquad>::Factory);
  qmemcpy(&inDesc, "xfuadvpelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEndpointVAD", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD>::Factory);
  qmemcpy(&inDesc, "xfua2vpelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEndpointVAD2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD2>::Factory);
  qmemcpy(&inDesc, "xfua3vpelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEndpointVAD3", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD3>::Factory);
  qmemcpy(&inDesc, "xfuaecsplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAcousticPasscodeEnc", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeEnc>::Factory);
  qmemcpy(&inDesc, "xfuadcsplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAcousticPasscodeDec", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeDec>::Factory);
  qmemcpy(&inDesc, "xfuailcblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBoostClip", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBoostClip>::Factory);
  qmemcpy(&inDesc, "xfualcfslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSoftClip", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSoftClip>::Factory);
  qmemcpy(&inDesc, "xfuailovlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUVolume", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolume>::Factory);
  qmemcpy(&inDesc, "xfuapmpslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpatialMap", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSpatialMap>::Factory);
  qmemcpy(&inDesc, "xfua3ppslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpeakerProtectionV3", 0x10001u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeakerProtectionV3>::Factory);
  qmemcpy(&inDesc, "xfua2meblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeam2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Factory);
  qmemcpy(&inDesc, "xfuan2mblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeam2N", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeam2>::Factory);
  qmemcpy(&inDesc, "xfuafnmblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeamNF", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNF>::Factory);
  qmemcpy(&inDesc, "xfuasfnblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeamNFSelector", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamNFSelector>::Factory);
  qmemcpy(&inDesc, "xfuatwsmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMixSwitch", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitch>::Factory);
  qmemcpy(&inDesc, "xfuafnsmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMixSwitchNF", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMixSwitchNF>::Factory);
  qmemcpy(&inDesc, "xfuafriflppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUFIRFilter", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFIRFilter>::Factory);
  qmemcpy(&inDesc, "xfuaverdlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDereverb", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDereverb>::Factory);
  qmemcpy(&inDesc, "xfuasondlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDenoise", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDenoise>::Factory);
  qmemcpy(&inDesc, "xfuasrnnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNeuralNetRES", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetRES>::Factory);
  qmemcpy(&inDesc, "xfuapsnnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNeuralNetSPP", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetSPP>::Factory);
  qmemcpy(&inDesc, "xfuatennlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNeuralNet", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory);
  qmemcpy(&inDesc, "xfuaavnnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNeuralNetVAD", 0x10601u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Factory);
  qmemcpy(&inDesc, "xfua2vnnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNeuralNetVADV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVADV2>::Factory);
  qmemcpy(&inDesc, "xfuassualppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSeparate", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSeparate>::Factory);
  qmemcpy(&inDesc, "xfuaorpslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpatialProbability", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialProbability>::Factory);
  qmemcpy(&inDesc, "xfuantsdlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDistance", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDistance>::Factory);
  qmemcpy(&inDesc, "xfuadfmblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeamItFD", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Factory);
  qmemcpy(&inDesc, "xfuadtmblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBeamItTD", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Factory);
  qmemcpy(&inDesc, "xfuasnfnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNFNSwitch", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNFNSwitch>::Factory);
  qmemcpy(&inDesc, "xfuakdnwlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUWindKill", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUWindKill>::Factory);
  qmemcpy(&inDesc, "xfuacatflppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUFTSpatialAC", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFTSpatialAC>::Factory);
  qmemcpy(&inDesc, "xfuannillppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudnessInNoise", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Factory);
  qmemcpy(&inDesc, "xfuapusllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULevelDrivenSuppressor", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Factory);
  qmemcpy(&inDesc, "xfuangnclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUCNG", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCNG>::Factory);
  qmemcpy(&inDesc, "xauauvxalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAuxVPUplink", 0x10600u, ausdk::APFactory<AUAuxVPLookup,AUAuxVPUplink>::Factory);
  qmemcpy(&inDesc, "xauadvxalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAuxVPDownlink", 0x10600u, ausdk::APFactory<AUAuxVPLookup,AUAuxVPDownlink>::Factory);
  qmemcpy(&inDesc, "xfua1mpclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUCPMSVolumeV1", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCPMSVolumeV1>::Factory);
  qmemcpy(&inDesc, "xfua2cgalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAGCV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAGCV2>::Factory);
  qmemcpy(&inDesc, "xfua3cellppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULinearEchoCancelerV3", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULinearEchoCancelerV3>::Factory);
  qmemcpy(&inDesc, "xfuacecmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMultiChanEchoCanceler", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiChanEchoCanceler>::Factory);
  qmemcpy(&inDesc, "xfua5cellppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEchoCancelerV5", 0x10601u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoCancelerV5>::Factory);
  qmemcpy(&inDesc, "xfuaomcelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECMIMO", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMO>::Factory);
  qmemcpy(&inDesc, "xfuaoscelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECSUMO", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECSUMO>::Factory);
  qmemcpy(&inDesc, "xfuasgcelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECRMGS", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMGS>::Factory);
  qmemcpy(&inDesc, "xfuamrcelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECRMDF", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMDF>::Factory);
  qmemcpy(&inDesc, "xfuarmcelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECMicRef", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMicRef>::Factory);
  qmemcpy(&inDesc, "xfuaeyttlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUTTYEchoSuppressor", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTTYEchoSuppressor>::Factory);
  qmemcpy(&inDesc, "xfuacemslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSubBandMultEchoCanceler", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSubBandMultEchoCanceler>::Factory);
  qmemcpy(&inDesc, "xfuasncolppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUOneChannelNS", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNS>::Factory);
  qmemcpy(&inDesc, "xfua4snolppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUOneChannelNSV4", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNSV4>::Factory);
  qmemcpy(&inDesc, "xfuaencolppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUOneChannelNoiseEstimator", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNoiseEstimator>::Factory);
  qmemcpy(&inDesc, "xfuaelpslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpeechLevelEstimator", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechLevelEstimator>::Factory);
  qmemcpy(&inDesc, "xfua3serlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUResidualEchoSuppressorV3", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV3>::Factory);
  qmemcpy(&inDesc, "xfua4serlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUResidualEchoSuppressorV4", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV4>::Factory);
  qmemcpy(&inDesc, "xfua5serlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUResidualEchoSuppressorV5", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV5>::Factory);
  qmemcpy(&inDesc, "xfua3tgelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEchoGateV3", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoGateV3>::Factory);
  qmemcpy(&inDesc, "xfua2clvlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUVolumeCompressorV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeCompressorV2>::Factory);
  qmemcpy(&inDesc, "xfuaseedlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDeesser", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDeesser>::Factory);
  qmemcpy(&inDesc, "xfua2lsmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMicSelectorV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSelectorV2>::Factory);
  qmemcpy(&inDesc, "xfuasndmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMagnitudeDifferenceNoiseSuppressor", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressor>::Factory);
  qmemcpy(&inDesc, "xfua4snmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMagnitudeDifferenceNoiseSuppressorV4", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressorV4>::Factory);
  qmemcpy(&inDesc, "xfua1ssblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBSS1", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS1>::Factory);
  qmemcpy(&inDesc, "xfua2ssblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBSS2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS2>::Factory);
  qmemcpy(&inDesc, "xfuaqenhlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHandsetNoiseEQ", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Factory);
  qmemcpy(&inDesc, "xfualesnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNoiseSelector", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Factory);
  qmemcpy(&inDesc, "xfuabvrdlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUReverbSuppressor", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReverbSuppressor>::Factory);
  qmemcpy(&inDesc, "xfua2pdmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMultiBandDynamicsProcessorV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiBandDynamicsProcessorV2>::Factory);
  qmemcpy(&inDesc, "xfuakdydlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDynamicDucker", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDucker>::Factory);
  qmemcpy(&inDesc, "xfua2vddlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDynamicDuckerV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDynamicDuckerV2>::Factory);
  qmemcpy(&inDesc, "xfuadmnalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAnomalyDetection", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAnomalyDetection>::Factory);
  qmemcpy(&inDesc, "xfua2qrvlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUVariableEQV2", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVariableEQV2>::Factory);
  qmemcpy(&inDesc, "xfuaqebmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMNBandEQ", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMNBandEQ>::Factory);
  qmemcpy(&inDesc, "xfuaxmsrlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUReferenceSignalMixer", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUReferenceSignalMixer>::Factory);
  qmemcpy(&inDesc, "xfuahsorlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AURotationShading", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AURotationShading>::Factory);
  qmemcpy(&inDesc, "xfuagulplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEarPlug", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUEarPlug>::Factory);
  qmemcpy(&inDesc, "xfuabccdlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDCBlocker", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDCBlocker>::Factory);
  qmemcpy(&inDesc, "xfuarikllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUTweakaLeakIR", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTweakaLeakIR>::Factory);
  qmemcpy(&inDesc, "xfuarcedlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDecorrelator", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDecorrelator>::Factory);
  ausdk::AUBaseProcessMultipleFactory<AUDSPGraph>::Register(@"Apple: AUDSPGraph", a1);
  qmemcpy(&inDesc, "xfua1psdlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUDSPGraph_v1", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Factory);
  qmemcpy(&inDesc, "xfuarhcplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMatrixPatcher", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMatrixPatcher>::Factory);
  qmemcpy(&inDesc, "xfuaeriflppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUFIREngine", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFIREngine>::Factory);
  qmemcpy(&inDesc, "xfuatraclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUCarter", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCarter>::Factory);
  qmemcpy(&inDesc, "xfuadnallppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULando", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULando>::Factory);
  qmemcpy(&inDesc, "xfuaytcslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUScotty", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUScotty>::Factory);
  qmemcpy(&inDesc, "xfuaapsllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULeanSpatial", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULeanSpatial>::Factory);
  qmemcpy(&inDesc, "xfuaacrclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUCircArray", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUCircArray>::Factory);
  qmemcpy(&inDesc, "xfuaduollppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudnessWarrior", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessWarrior>::Factory);
  qmemcpy(&inDesc, "xfuappahlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHapticsProtection", 0x20000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHapticsProtection>::Factory);
  qmemcpy(&inDesc, "xfuangxflppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUFixedGain", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUFixedGain>::Factory);
  qmemcpy(&inDesc, "xfuayldclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUChannelSpecificDelay", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUChannelSpecificDelay>::Factory);
  qmemcpy(&inDesc, "xfuapcpslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpatialCapture", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialCapture>::Factory);
  qmemcpy(&inDesc, "xfuarbmalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHOARotator", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOARotator>::Factory);
  qmemcpy(&inDesc, "xfuazaohlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHOAZoom", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoom>::Factory);
  qmemcpy(&inDesc, "xfuazbmalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHOAZoomV2", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHOAZoomV2>::Factory);
  qmemcpy(&inDesc, "xfuasneslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMicSense", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSense>::Factory);
  qmemcpy(&inDesc, "xfuacgamlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMultiChannelAGC", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMultiChannelAGC>::Factory);
  qmemcpy(&inDesc, "xfualslclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUChannelSelector", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUChannelSelector>::Factory);
  qmemcpy(&inDesc, "xfuaisimlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMidSide", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMidSide>::Factory);
  qmemcpy(&inDesc, "xfuanepslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSpeechEnhancer", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechEnhancer>::Factory);
  qmemcpy(&inDesc, "xfuaraehlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHearingLossCompensator", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHearingLossCompensator>::Factory);
  qmemcpy(&inDesc, "xfuaobwllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULimitWindBoost", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULimitWindBoost>::Factory);
  qmemcpy(&inDesc, "xfuatdlclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUClipDetector", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUClipDetector>::Factory);
  qmemcpy(&inDesc, "xfuatcxelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUExpanseController", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUExpanseController>::Factory);
  qmemcpy(&inDesc, "xfuamcislppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSignalCombiner", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSignalCombiner>::Factory);
  qmemcpy(&inDesc, "xfuadsimlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMicIssueDetector", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicIssueDetector>::Factory);
  qmemcpy(&inDesc, "xfuaernslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSNREstimator", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSNREstimator>::Factory);
  qmemcpy(&inDesc, "xfua2vpplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUParametricProcessorV2", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUParametricProcessorV2>::Factory);
  qmemcpy(&inDesc, "xfuagceslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSiriECGate", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSiriECGate>::Factory);
  qmemcpy(&inDesc, "xfuakrfclppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUControlFreak", 0x1020000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUControlFreak>::Factory);
  qmemcpy(&inDesc, "xfuakzublppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBuzzKill", 0x20700u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBuzzKill>::Factory);
  qmemcpy(&inDesc, "xfuanebvlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUVirtualBass", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVirtualBass>::Factory);
  qmemcpy(&inDesc, "xfuagnkblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBassKoenig", 0x30300u, ausdk::APFactory<ausdk::AUBaseProcessLookup,BassKoenig>::Factory);
  qmemcpy(&inDesc, "xfuanqsblppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUBassQueen", 0x1080000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBassQueen>::Factory);
  qmemcpy(&inDesc, "xfuawolflppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULowFlow", 0x30500u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULowFlow>::Factory);
  qmemcpy(&inDesc, "xfuaktsmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMeisterStueck", 0x1000000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMeisterStueck>::Factory);
  qmemcpy(&inDesc, "xfuatsmtlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUToneMeister", 0x1030000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Factory);
  qmemcpy(&inDesc, "xfuatmdllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudnessMeter", 0x30000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudnessMeter>::Factory);
  qmemcpy(&inDesc, "xfuaszomlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMozartCompressorSingleBand", 0x20304u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMozartCompressorSingleBand>::Factory);
  qmemcpy(&inDesc, "xfuamnlllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULittleLateNightMode", 0, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULittleLateNightMode>::Factory);
  qmemcpy(&inDesc, "xfuagppalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUPeakPowerGuard", 0x10403u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUPeakPowerGuard>::Factory);
  qmemcpy(&inDesc, "xfuapstalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUThermalSpeakerProtection", 0x20301u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUThermalSpeakerProtection>::Factory);
  qmemcpy(&inDesc, "xfuactxalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUXTC", 0x30502u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUXTC>::Factory);
  qmemcpy(&inDesc, "xfuamndllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudnessNormalizer", 0x3050000u, ausdk::APFactory<ausdk::AUBaseProcessAndMultipleLookup,AULoudnessNormalizer>::Factory);
  qmemcpy(&inDesc, "xfuaetlplppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULexiPlate", 0x1000000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULexiPlate>::Factory);
  qmemcpy(&inDesc, "xfuagmsllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudspeakerManager", 1u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManager>::Factory);
  qmemcpy(&inDesc, "xfua2msllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudspeakerManagerV2", 4u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudspeakerManagerV2>::Factory);
  qmemcpy(&inDesc, "xfuadisllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudspeakerSystemIDV2", 0x3000000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AULoudspeakerSystemIDV2>::Factory);
  qmemcpy(&inDesc, "xfuatlovlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUVolumeTaper", 0x101000Au, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeTaper>::Factory);
  qmemcpy(&inDesc, "xfuavelalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUAmbienceLeveler", 0x2040000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAmbienceLeveler>::Factory);
  qmemcpy(&inDesc, "xfuapcgmlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUMixGainCompensation", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUMixGainCompensation>::Factory);
  qmemcpy(&inDesc, "xfualesnlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUNoiseSelector", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNoiseSelector>::Factory);
  qmemcpy(&inDesc, "xfuaqenhlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUHandsetNoiseEQ", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUHandsetNoiseEQ>::Factory);
  qmemcpy(&inDesc, "xfuaalislppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSilenceNonFiniteAnalyzer", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Factory);
  qmemcpy(&inDesc, "xfuaoccelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUEcConvergenceOversight", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEcConvergenceOversight>::Factory);
  qmemcpy(&inDesc, "xfuannillppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULoudnessInNoise", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Factory);
  qmemcpy(&inDesc, "xfuapusllppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AULevelDrivenSuppressor", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Factory);
  qmemcpy(&inDesc, "xfuahmcelppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUECMIMOHelper", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMOHelper>::Factory);
  qmemcpy(&inDesc, "xfuamlpslppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUSPLMeter", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Factory);
  qmemcpy(&inDesc, "xfuarocxlppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  AudioComponentRegister(&inDesc, @"Apple: AUCrossCorrelator", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Factory);
  qmemcpy(&inDesc, "xfuaksmalppa", 12);
  inDesc.componentFlags = a1;
  inDesc.componentFlagsMask = 0;
  return AudioComponentRegister(&inDesc, @"Apple: AUADAMSink", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUADAMSink>::Factory);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeDec>::Factory()
{
  result = malloc_type_malloc(0xCF0uLL, 0x10F3040123CF3A8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeDec>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeDec>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeDec>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591D870;
  *(v3 + 528) = 0;
  v4 = (v3 + 532);
  *(v3 + 532) = 0;
  *(v3 + 540) = 0;
  *(v3 + 68) = 0x46BB800000000001;
  *(v3 + 69) = 0x100000000;
  *(v3 + 140) = 1;
  *(v3 + 149) = 1;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 172) = 0u;
  *(v3 + 173) = 0u;
  *(v3 + 174) = 0u;
  *(v3 + 175) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 177) = 0u;
  *(v3 + 178) = 0u;
  *(v3 + 179) = 0u;
  *(v3 + 180) = 0u;
  *(v3 + 181) = 0u;
  *(v3 + 182) = 0u;
  *(v3 + 183) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 185) = 0u;
  *(v3 + 186) = 0u;
  *(v3 + 187) = 0u;
  *(v3 + 188) = 0u;
  *(v3 + 189) = 0u;
  *(v3 + 190) = 0u;
  *(v3 + 191) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 193) = 0u;
  *(v3 + 194) = 0u;
  *(v3 + 195) = 0u;
  *(v3 + 294) = 0;
  *(v3 + 146) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v5 = 0;
  v6 = a1 + 568;
  *v18 = 0x40D7700000000000;
  *&v18[8] = xmmword_1DE09BD50;
  v19 = xmmword_1DE09BD60;
  while (1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      LODWORD(v8) = (*(*v7 + 24))(v7);
    }

    else
    {
      v8 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v5 >= v8)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v5);
    if (!Element)
    {
LABEL_35:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v18);
    ++v5;
  }

  for (i = 0; ; ++i)
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v12)
    {
      break;
    }

    v13 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v13)
    {
      goto LABEL_35;
    }

    (*(*v13 + 56))(v13, v18);
  }

  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v15 & 1) == 0)
  {
    abort();
  }

  (*(*v14 + 40))(v14, 59);
  ausdk::AUBase::SetParameter(a1, 0, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 1u, 0, 0, 20.0);
  ausdk::AUBase::SetParameter(a1, 2u, 0, 0, 2.0);
  ausdk::AUBase::SetParameter(a1, 3u, 0, 0, 1.0);
  ausdk::AUBase::SetParameter(a1, 4u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 5u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 6u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x12u, 0, 0, 9500.0);
  ausdk::AUBase::SetParameter(a1, 0x13u, 0, 0, 5500.0);
  ausdk::AUBase::SetParameter(a1, 0xAu, 0, 0, 3.0);
  ausdk::AUBase::SetParameter(a1, 0xBu, 0, 0, 1.0);
  ausdk::AUBase::SetParameter(a1, 0xCu, 0, 0, 2.0);
  ausdk::AUBase::SetParameter(a1, 0x11u, 0, 0, 2.0);
  ausdk::AUBase::SetParameter(a1, 0xDu, 0, 0, 125.0);
  ausdk::AUBase::SetParameter(a1, 0xEu, 0, 0, 125.0);
  ausdk::AUBase::SetParameter(a1, 0xFu, 0, 0, 3.0);
  ausdk::AUBase::SetParameter(a1, 0x10u, 0, 0, 20.0);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x1Eu, 0, 0, 0.0);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x1Fu, 0, 0, -90.0);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x20u, 0, 0, 0.02);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x21u, 0, 0, 0.5);
  ausdk::AUBase::SetParameter(a1, 0x22u, 0, 0, 12000.0);
  ausdk::AUBase::SetParameter(a1, 0x23u, 0, 0, 8000.0);
  ausdk::AUBase::SetParameter(a1, 0x24u, 0, 0, 5000.0);
  ausdk::AUBase::SetParameter(a1, 0x25u, 0, 0, 400.0);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x26u, 0, 0, 5.0);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x27u, 0, 0, 0.25);
  if (*(a1 + 17) == 1)
  {
    ++*v4;
  }

  ausdk::AUBase::SetParameter(a1, 0x28u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x32u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x33u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x35u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x36u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x34u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x39u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x3Au, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x37u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x38u, 0, 0, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 120);
  *(a1 + 540) = 0;
  *(a1 + 528) = 0;
  InitValuesOnPlist(a1 + 2616);
  *(a1 + 2352) = v6;
  *(a1 + 2360) = v6;
  *(a1 + 984) = 0;
  *(a1 + 724) = 0;
  *(a1 + 573) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 1;
  *(a1 + 727) = 0;
  *(a1 + 725) = 0;
  *(a1 + 1784) = 0x1400000014;
  *(a1 + 1792) = 20;
  memset((a1 + 1800), 48, 20);
  strcpy((a1 + 1900), "00000000000000000000");
  *(a1 + 1921) = 0;
  *(a1 + 1922) = 0;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0;
  *(a1 + 752) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1328) = 1048576000;
  *(a1 + 1333) = 1;
  *(a1 + 1004) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 944) = 0;
  *(a1 + 1068) = 0;
  *(a1 + 757) = 0;
  *(a1 + 759) = 0;
  *(a1 + 920) = 0;
  *(a1 + 940) = 0;
  *(a1 + 2304) = 507307272;
  *(a1 + 976) = 0;
  *(a1 + 756) = 0;
  *(a1 + 572) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0x1400000014;
  *(a1 + 580) = 1;
  *(a1 + 592) = 0x300000002;
  *(a1 + 600) = 1;
  *(a1 + 604) = 0x200000002;
  *(a1 + 612) = vdup_n_s32(0x42FA0000u);
  *(a1 + 620) = 0x341A00000;
  *(a1 + 652) = 0;
  *(a1 + 656) = xmmword_1DE09CAA0;
  *(a1 + 672) = 0x3E80000000000000;
  *(a1 + 628) = xmmword_1DE09CAB0;
  *(a1 + 644) = 0x43C80000459C4000;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 707) = 0;
  *(a1 + 700) = 0;
  InitValuesOnMusicCode(a1 + 1416);
  *(a1 + 2308) = 0;
  memset((a1 + 2312), 48, 20);
  *(a1 + 2200) = 0;
  *(a1 + 2220) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1140) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 888) = 0;
  *(a1 + 760) = 0;
  *(a1 + 2160) = 0;
  *(a1 + 768) = 0;
  *(a1 + 1332) = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 1340) = 0u;
  *(a1 + 2184) = 0;
  *(a1 + 2168) = 0u;
  *(a1 + 2192) = 0;
  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

  v16 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 134217984;
    *&v18[4] = a1;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "[%p] Construct AU and Kernel", v18, 0xCu);
  }

  return a1;
}

void sub_1DDD58614(_Unwind_Exception *a1)
{
  v4 = v1 + 390;
  v5 = -240;
  while (1)
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      *v4 = v6;
      operator delete(v6);
    }

    v4 -= 3;
    v5 += 24;
    if (!v5)
    {
      v7 = v1 + 360;
      v8 = -72;
      while (1)
      {
        v9 = *(v7 - 1);
        if (v9)
        {
          *v7 = v9;
          operator delete(v9);
        }

        v7 -= 3;
        v8 += 24;
        if (!v8)
        {
          v10 = v1 + 351;
          v11 = -72;
          while (1)
          {
            v12 = *(v10 - 1);
            if (v12)
            {
              *v10 = v12;
              operator delete(v12);
            }

            v10 -= 3;
            v11 += 24;
            if (!v11)
            {
              v13 = v1[293];
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }

              v14 = v1[108];
              if (v14)
              {
                v1[109] = v14;
                operator delete(v14);
              }

              v15 = *v2;
              if (*v2)
              {
                v1[106] = v15;
                operator delete(v15);
              }

              ausdk::AUBase::~AUBase(v1);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeEnc>::Factory()
{
  result = malloc_type_malloc(0x948uLL, 0x10F304096DC473AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeEnc>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeEnc>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAcousticPasscodeEnc>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 3);
  *v3 = &unk_1F591F0C8;
  *(v3 + 540) = 0;
  *(v3 + 66) = 0;
  *(v3 + 268) = 0;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 696) = xmmword_1DE09CAC0;
  *(v3 + 178) = 0;
  *(v3 + 90) = 0;
  *(v3 + 182) = 0;
  *(v3 + 732) = 0;
  *(v3 + 184) = 0;
  *(v3 + 740) = 0x42FA000042FA0000;
  *(v3 + 748) = 0;
  *(v3 + 756) = 0;
  *(v3 + 95) = 0xBB846BB8000;
  *(v3 + 96) = 0x3CA3D70A00000BB8;
  *(v3 + 97) = 0x300000001;
  *(v3 + 789) = 0;
  *(v3 + 98) = 0;
  *(v3 + 100) = 0x3F66666600000000;
  *(v3 + 904) = 0;
  *(v3 + 227) = 0;
  *(v3 + 129) = 0x100000001;
  *(v3 + 266) = 1065353216;
  *(v3 + 67) = 0u;
  *(v3 + 272) = 3;
  *(v3 + 364) = 0;
  *(v3 + 1460) = 0x3BE8A71EC22C0000;
  *(v3 + 367) = 0;
  *(v3 + 184) = 0x3BE8A71EC22C0000;
  *(v3 + 1480) = 0;
  *(v3 + 371) = 0;
  *(v3 + 1488) = 0;
  *(v3 + 1492) = 20;
  *(v3 + 800) = 0;
  *(v3 + 1604) = 0x404147AE404147AELL;
  *(v3 + 806) = 0;
  *(v3 + 413) = 507307272;
  *(v3 + 135) = 0u;
  *(v3 + 134) = 0u;
  *(v3 + 133) = 0u;
  *(v3 + 132) = 0u;
  *(v3 + 131) = 0u;
  *(v3 + 130) = 0u;
  *(v3 + 129) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 127) = 0u;
  *(v3 + 126) = 0u;
  *(v3 + 125) = 0u;
  *(v3 + 124) = 0u;
  *(v3 + 123) = 0u;
  *(v3 + 122) = 0u;
  *(v3 + 121) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 119) = 0u;
  *(v3 + 118) = 0u;
  *(v3 + 117) = 0u;
  *(v3 + 116) = 0u;
  *(v3 + 115) = 0u;
  *(v3 + 114) = 0u;
  *(v3 + 113) = 0u;
  *(v3 + 112) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  *v58 = 0x40D7700000000000;
  *&v58[8] = xmmword_1DE09BD50;
  v59 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v4);
    if (!Element)
    {
LABEL_42:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, v58);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = *(a1 + 168);
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v11)
    {
      goto LABEL_42;
    }

    (*(*v11 + 56))(v11, v58);
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v13 & 1) == 0 || ((*(*v12 + 40))(v12, 55), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 0, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 1u, 20.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 0xAu, 3.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 0xBu, 1.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 0xCu, 2.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 0x10u, 2.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 0xDu, 125.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xEu, 125.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xFu, 3.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0x1Eu, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0x1Fu, -38.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 0x20u, 0.94), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0) || (ausdk::AUElement::SetParameter(v38, 0x21u, -30.77), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0) || (ausdk::AUElement::SetParameter(v40, 0x22u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0) || (ausdk::AUElement::SetParameter(v42, 0x23u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0) || (ausdk::AUElement::SetParameter(v44, 0x24u, 3.02), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0) || (ausdk::AUElement::SetParameter(v46, 0x32u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0) || (ausdk::AUElement::SetParameter(v48, 0x33u, 0.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0) || (ausdk::AUElement::SetParameter(v50, 0x34u, 0.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0) || (ausdk::AUElement::SetParameter(v52, 0x35u, 0.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v54, 0x36u, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 120);
  *(a1 + 756) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 2184) = 0;
  *(a1 + 532) = 0;
  memset((a1 + 1500), 48, 20);
  *(a1 + 796) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1613) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 880) = 0;
  *(a1 + 896) = 0;
  *(a1 + 888) = 0;
  *(a1 + 936) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 1652) = 507307272;
  *(a1 + 748) = 0;
  InitValuesOnMusicCode(a1 + 1096);
  InitValuesOnPlist(a1 + 1656);
  *(a1 + 2288) = 0;
  memset((a1 + 2292), 48, 20);
  *(a1 + 536) = 0;
  if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
  }

  v56 = getAUAcousticPasscodeEncLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 134217984;
    *&v58[4] = a1;
    _os_log_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_DEFAULT, "[%p] Construct AU", v58, 0xCu);
  }

  return a1;
}

void sub_1DDD58EB0(_Unwind_Exception *a1)
{
  v3 = (v1 + 78);
  v4 = v1 + 270;
  v5 = -240;
  while (1)
  {
    v6 = *(v4 - 1);
    if (v6)
    {
      *v4 = v6;
      operator delete(v6);
    }

    v4 -= 3;
    v5 += 24;
    if (!v5)
    {
      v7 = v1 + 240;
      v8 = -72;
      while (1)
      {
        v9 = *(v7 - 1);
        if (v9)
        {
          *v7 = v9;
          operator delete(v9);
        }

        v7 -= 3;
        v8 += 24;
        if (!v8)
        {
          v10 = v1 + 231;
          v11 = -72;
          while (1)
          {
            v12 = *(v10 - 1);
            if (v12)
            {
              *v10 = v12;
              operator delete(v12);
            }

            v10 -= 3;
            v11 += 24;
            if (!v11)
            {
              v13 = v1[135];
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }

              v14 = v1[81];
              if (v14)
              {
                v1[82] = v14;
                operator delete(v14);
              }

              v15 = *v3;
              if (*v3)
              {
                v1[79] = v15;
                operator delete(v15);
              }

              ausdk::AUBase::~AUBase(v1);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD3>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F30404E7EC4EAuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD3>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD3>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD3>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v2 = &unk_1F59326F0;
  *(v2 + 66) = &unk_1F5932960;
  *(v2 + 536) = 0;
  operator new();
}

void sub_1DDD593E0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 71) = v4;
    operator delete(v4);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD2>::Factory()
{
  result = malloc_type_malloc(0x2C8uLL, 0x10F30406BF031FDuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD2>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD2>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v2 = &unk_1F592B848;
  *(v2 + 66) = &unk_1F592BAB8;
  *(v2 + 536) = 0;
  operator new();
}

void sub_1DDD59910(_Unwind_Exception *a1)
{
  v3 = *(v1 + 75);
  if (v3)
  {
    *(v1 + 76) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD>::Factory()
{
  result = malloc_type_malloc(0x2B0uLL, 0x10F3040929E548DuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEndpointVAD>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5928588;
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 70) = 0;
  *(v3 + 568) = xmmword_1DE09CAE0;
  *(v3 + 146) = 0;
  *(v3 + 74) = 0;
  *(v3 + 150) = 0;
  *(v3 + 76) = 0;
  *(v3 + 154) = 0;
  *(v3 + 620) = 0;
  ausdk::AUBase::CreateElements(v3);
  (*(*a1 + 512))(a1, 1024);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 4);
  v9 = 0x40CF400000000000;
  v10 = xmmword_1DE09BD50;
  v11 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v9), (v7 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v7 + 56))(v7, &v9);
  return a1;
}

void sub_1DDD59BB0(_Unwind_Exception *a1)
{
  std::unique_ptr<EndpointVADSegmentHeuristics>::reset[abi:ne200100](v1 + 67, 0);
  std::unique_ptr<EndpointVAD>::reset[abi:ne200100](v1 + 66, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBiquad>::Factory()
{
  result = malloc_type_malloc(0x2E0uLL, 0x10F30400637189CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBiquad>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBiquad>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUBiquad>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 276) = 0;
  *(v3 + 68) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 554) = 1;
  *(v3 + 139) = 0;
  *(v3 + 560) = 0;
  *(v3 + 147) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0;
  *v3 = &unk_1F59280B0;
  *(v3 + 150) = 0x1000000;
  *(v3 + 74) = 0;
  *(v3 + 604) = 0u;
  *(v3 + 620) = 0u;
  *(v3 + 636) = 0;
  *(v3 + 162) = 0;
  *(v3 + 82) = 0;
  *(v3 + 664) = 1;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 553) = 1;
  ausdk::AUEffectBase::SetParameter(a1, 0x62717470u, 2.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x66726571u, 1000.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x6761696Eu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x62647774u, 1.0);
  return a1;
}

AudioComponent RegisterPublicAudioUnits()
{
  *&v1.componentType = xmmword_1DE09CAF0;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUSpatialMixer", 0x10608u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialMixerV2>::Factory);
  ausdk::AUBaseProcessMultipleFactory<AUSoundIsolation>::Register(0);
  *&v1.componentType = xmmword_1DE09CB00;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUAudioMix", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAudioMix>::Factory);
  *&v1.componentType = xmmword_1DE09CB10;
  v1.componentFlagsMask = 0;
  return AudioComponentRegister(&v1, @"Apple: AULoudnessNormalizer", 0x3050000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessNormalizer>::Factory);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessNormalizer>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessNormalizer>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessNormalizer>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAudioMix>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F3040D9245712uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAudioMix>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAudioMix>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAudioMix>::Construct(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v69 = *MEMORY[0x1E69E9840];
  v4 = ausdk::AUBase::AUBase(v1, v3, 1, 1);
  *v4 = &unk_1F5930A50;
  v5 = (v4 + 528);
  v6 = (v4 + 536);
  *(v4 + 33) = 0u;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *(v4 + 38) = 0u;
  *(v4 + 78) = 0;
  *(v4 + 79) = 1;
  *(v4 + 640) = 0;
  *(v4 + 644) = 3;
  *(v4 + 41) = 0u;
  *(v4 + 672) = 0;
  ausdk::AUBase::CreateElements(v4);
  inData = 0x40E7700000000000;
  v65 = xmmword_1DE09BD50;
  v66 = xmmword_1DE09C560;
  Element = ausdk::AUScope::GetElement((v2 + 80), 0);
  if (Element)
  {
    (*(*Element + 56))(Element, &inData);
    v61 = 0x40E7700000000000;
    v62 = xmmword_1DE09BD50;
    v63 = xmmword_1DE09CB20;
    v8 = ausdk::AUScope::GetElement((v2 + 128), 0);
    if (v8)
    {
      (*(*v8 + 56))(v8, &v61);
      if (registerInternalAUs(void)::s_predicate != -1)
      {
        dispatch_once(&registerInternalAUs(void)::s_predicate, &__block_literal_global_4);
      }

      outInstance = 0;
      *&inDesc.componentType = *"xfuagpsdlppa";
      inDesc.componentFlagsMask = 0;
      Next = AudioComponentFindNext(0, &inDesc);
      v10 = AudioComponentInstanceNew(Next, &outInstance);
      v11 = v10;
      if (!outInstance || v10)
      {
        v37 = getAUAudioMixLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "Failed to create AUDSPGraph instance", buf, 2u);
        }

        v12 = (v11 | (outInstance == 0));
      }

      else
      {
        std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](v5, outInstance);
        v12 = AudioUnitSetProperty(*v5, 8u, 1u, 0, &inData, 0x28u);
        if (v12)
        {
          v38 = getAUAudioMixLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEFAULT, "Failed to set AUDSPGraph input stream format", buf, 2u);
          }
        }

        else
        {
          v12 = AudioUnitSetProperty(*v5, 8u, 2u, 0, &v61, 0x28u);
          if (v12)
          {
            v38 = getAUAudioMixLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEFAULT, "Failed to set AUDSPGraph output stream format", buf, 2u);
            }
          }

          else
          {
            if (!AudioUnitSetProperty(*v5, 0x64737067u, 0, 0, kGraphLocation, 8u))
            {
              goto LABEL_13;
            }

            v13 = getAUAudioMixLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "Failed to set AUDSPGraph graph test file path, trying legacy location", buf, 2u);
            }

            v12 = AudioUnitSetProperty(*v5, 0x64737067u, 0, 0, &kGraphLocation_old, 8u);
            if (!v12)
            {
LABEL_13:
              v14 = *MEMORY[0x1E695E480];
              v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Audio/Tunings/Generic/CinematicSeparation/Tunings/separate_and_remix.propstrip", kCFURLPOSIXPathStyle, 0);
              v58 = v15;
              if (v15)
              {
                v16 = CFGetTypeID(v15);
                if (v16 != CFURLGetTypeID())
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                }

                v17 = v58;
              }

              else
              {
                v17 = 0;
              }

              v18 = CFReadStreamCreateWithFile(v14, v17);
              if (!v18)
              {
                v19 = getAUAudioMixLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "Failed to open propstrip file, trying legacy location", buf, 2u);
                }

                v20 = CFURLCreateWithFileSystemPath(v14, @"/Library/Audio/Tunings/Generic/CinematicSeparation/Tunings/separate_and_remix.propstrip", kCFURLPOSIXPathStyle, 0);
                *buf = v20;
                if (v20)
                {
                  v21 = CFGetTypeID(v20);
                  if (v21 != CFURLGetTypeID())
                  {
                    v47 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v47, "Could not construct");
                  }

                  v22 = *buf;
                }

                else
                {
                  v22 = 0;
                }

                v18 = CFReadStreamCreateWithFile(v14, v22);
                if (!v18)
                {
                  v45 = getAUAudioMixLog();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *v68 = 0;
                    _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEFAULT, "Failed to open propstrip file", v68, 2u);
                  }

                  ausdk::Throw(0xFFFFFFFFLL);
                }

                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              CFReadStreamOpen(v18);
              cf = CFPropertyListCreateWithStream(v14, v18, 0, 0, 0, 0);
              CFReadStreamClose(v18);
              CFRelease(v18);
              if (cf)
              {
                v23 = AudioUnitSetProperty(*v5, 0x70727370u, 0, 0, &cf, 8u);
                CFRelease(cf);
                if (!v23)
                {
                  v24 = CFURLCreateWithFileSystemPath(v14, @"/System/Library/Audio/Tunings/Generic/CinematicSeparation/Tunings/separate_and_remix.austrip", kCFURLPOSIXPathStyle, 0);
                  v56 = v24;
                  if (v24)
                  {
                    v25 = CFGetTypeID(v24);
                    if (v25 != CFURLGetTypeID())
                    {
                      v44 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v44, "Could not construct");
                    }

                    v26 = v56;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  v27 = CFReadStreamCreateWithFile(v14, v26);
                  if (!v27)
                  {
                    v28 = getAUAudioMixLog();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEFAULT, "Failed to open austrip file, trying legacy location", buf, 2u);
                    }

                    v29 = CFURLCreateWithFileSystemPath(v14, @"/Library/Audio/Tunings/Generic/CinematicSeparation/Tunings/separate_and_remix.austrip", kCFURLPOSIXPathStyle, 0);
                    *buf = v29;
                    if (v29)
                    {
                      v30 = CFGetTypeID(v29);
                      if (v30 != CFURLGetTypeID())
                      {
                        v48 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v48, "Could not construct");
                      }

                      v31 = *buf;
                    }

                    else
                    {
                      v31 = 0;
                    }

                    v27 = CFReadStreamCreateWithFile(v14, v31);
                    if (!v27)
                    {
                      v46 = getAUAudioMixLog();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        *v68 = 0;
                        _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEFAULT, "Failed to open austrip file", v68, 2u);
                      }

                      ausdk::Throw(0xFFFFFFFFLL);
                    }

                    if (*buf)
                    {
                      CFRelease(*buf);
                    }
                  }

                  CFReadStreamOpen(v27);
                  v55 = CFPropertyListCreateWithStream(v14, v27, 0, 0, 0, 0);
                  CFReadStreamClose(v27);
                  CFRelease(v27);
                  if (v55)
                  {
                    v32 = AudioUnitSetProperty(*v5, 0x61757370u, 0, 0, &v55, 8u);
                    CFRelease(v55);
                    if (!v32)
                    {
                      v54 = 0;
                      *&v53.componentType = *"xmuamed3lppa";
                      v53.componentFlagsMask = 0;
                      v33 = AudioComponentFindNext(0, &v53);
                      v34 = AudioComponentInstanceNew(v33, &v54);
                      v35 = v34;
                      if (!v54 || v34)
                      {
                        v41 = getAUAudioMixLog();
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEFAULT, "Failed to create AUSpatialMixer instance", buf, 2u);
                        }

                        v36 = (v35 | (v54 == 0));
                      }

                      else
                      {
                        std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](v6, v54);
                        v36 = AudioUnitSetProperty(*v6, 8u, 1u, 0, &v61, 0x28u);
                        if (!v36)
                        {
                          __p = 0;
                          v51 = 0;
                          v52 = 0;
                          buf[0] = 0;
                          std::vector<char>::vector[abi:ne200100](&v49, 32);
                        }

                        v42 = getAUAudioMixLog();
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEFAULT, "Failed to set AUSpatialMixer input stream format", buf, 2u);
                        }
                      }

                      ausdk::Throw(v36);
                    }

                    v40 = getAUAudioMixLog();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_DEFAULT, "Failed to set austrip on AUDSPGraph", buf, 2u);
                    }
                  }

                  else
                  {
                    v40 = getAUAudioMixLog();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_DEFAULT, "Failed to create austrip plist", buf, 2u);
                    }

                    v32 = 0xFFFFFFFFLL;
                  }

                  ausdk::Throw(v32);
                }

                v39 = getAUAudioMixLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "Failed to set propstrip on AUDSPGraph", buf, 2u);
                }
              }

              else
              {
                v39 = getAUAudioMixLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "Failed to create propstrip plist", buf, 2u);
                }

                v23 = 0xFFFFFFFFLL;
              }

              ausdk::Throw(v23);
            }

            v38 = getAUAudioMixLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEFAULT, "Failed to set AUDSPGraph graph test file path", buf, 2u);
            }
          }
        }
      }

      ausdk::Throw(v12);
    }

    ausdk::Throw(0xFFFFD583);
  }

  ausdk::Throw(0xFFFFD583);
}

void sub_1DDD5AF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41)
{
  __cxa_free_exception(v44);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(&a41);
  applesauce::CF::URLRef::~URLRef(&a22);
  applesauce::CF::URLRef::~URLRef(&a24);
  if (*(v41 + 656))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(v41 + 656) = 0;
  }

  *(v41 + 664) = 0;
  *(v41 + 648) = 0;
  v46 = *(v41 + 552);
  if (v46)
  {
    *(v41 + 560) = v46;
    operator delete(v46);
  }

  applesauce::CF::DataRef::~DataRef((v41 + 544));
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](v43, 0);
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](v42, 0);
  ausdk::AUBase::~AUBase(v41);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialMixerV2>::Factory()
{
  result = malloc_type_malloc(0x3360uLL, 0x10F30408EDA01DEuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialMixerV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpatialMixerV2>::Destruct;
  return result;
}

AudioComponent RegisterAudioUnits_Analyzer()
{
  *&v1.componentType = xmmword_1DE09CB40;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUSilenceNonFiniteAnalyzer", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSilenceNonFiniteAnalyzer>::Factory);
  *&v1.componentType = xmmword_1DE09CB50;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUSPLMeter", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUSPLMeter>::Factory);
  *&v1.componentType = xmmword_1DE09CB60;
  v1.componentFlagsMask = 0;
  return AudioComponentRegister(&v1, @"Apple: AUCrossCorrelator", 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCrossCorrelator>::Factory);
}

AudioComponent RegisterAudioUnits_Internal()
{
  if (CACFPreferencesGetAppBooleanValue(@"AllAUsPublic", @"com.apple.coreaudio", 0))
  {
    v0 = 0;
  }

  else
  {
    v0 = 0x8000;
  }

  return RegisterInternalAudioUnits_iOS(v0);
}

AudioComponent RegisterAudioUnits_InternalUnsearchable()
{
  if (CACFPreferencesGetAppBooleanValue(@"AllAUsPublic", @"com.apple.coreaudio", 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = 32769;
  }

  return RegisterInternalAudioUnits_iOS(v0);
}

AudioComponent RegisterAUVoiceIsolation_Unsearchable()
{
  v1.componentFlagsMask = 0;
  *&v1.componentType = *"xfuasiovlppa";
  result = AudioComponentFindNext(0, &v1);
  if (!result)
  {
    return ausdk::AUBaseProcessMultipleFactory<AUSoundIsolation>::Register(1u);
  }

  return result;
}

AudioComponent RegisterMovieRemixAUs_Unsearchable()
{
  *&v1.componentType = xmmword_1DE09C130;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUNeuralNet", 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory);
  *&v1.componentType = xmmword_1DE09CB70;
  v1.componentFlagsMask = 0;
  AudioComponentRegister(&v1, @"Apple: AUAmbienceLeveler", 0x2040000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAmbienceLeveler>::Factory);
  *&v1.componentType = xmmword_1DE09CB80;
  v1.componentFlagsMask = 0;
  return AudioComponentRegister(&v1, @"Apple: AULoudnessMeter", 0x30000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessMeter>::Factory);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessMeter>::Factory()
{
  result = malloc_type_malloc(0x8C0uLL, 0x10F30406F1CA3E8uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessMeter>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessMeter>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessMeter>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLibWithNewParameters::AUDspLibWithNewParameters(a1, a2, &DspLib::kLegacyConverters, &DspLib::LoudnessMeter::Parameters::kSystemDefinition, @"AULoudnessMeter_ViewFactory");
  *result = &unk_1F5925AE0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAmbienceLeveler>::Factory()
{
  result = malloc_type_malloc(0x4B50uLL, 0x10F304051C722A6uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAmbienceLeveler>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUAmbienceLeveler>::Destruct;
  return result;
}

uint64_t std::__function::__value_func<void ()(long long,applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::default_delete<AU::FTSpatialAC::MetricsReporter>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 160);
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

    v4 = *(v1 + 144);
    *(v1 + 144) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(v1 + 112);
    if (v5)
    {
      *(v1 + 120) = v5;
      operator delete(v5);
    }

    std::mutex::~mutex((v1 + 48));
    std::__function::__value_func<void ()(long long,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v1 + 16);
    v6 = *(v1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::__shared_ptr_pointer<AU::FTSpatialAC::MetricsReporter *,std::shared_ptr<AU::FTSpatialAC::MetricsReporter>::__shared_ptr_default_delete<AU::FTSpatialAC::MetricsReporter,AU::FTSpatialAC::MetricsReporter>,std::allocator<AU::FTSpatialAC::MetricsReporter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void AU::FTSpatialAC::MetricsReporter::getCAReporterIDs(AU::FTSpatialAC::MetricsReporter *this, uint64_t a2)
{
  std::mutex::lock((a2 + 48));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);

  std::mutex::unlock((a2 + 48));
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD5B814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::perform(uint64_t a1)
{
  v2 = a1;
  AU::FTSpatialAC::MetricsReporter::report(*(a1 + 24), a1 + 40, (a1 + 96), (a1 + 104));
  return caulk::concurrent::details::rt_message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1DDD5B878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void AU::FTSpatialAC::MetricsReporter::report(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  std::mutex::lock((a1 + 48));
  v8 = *a3;
  v9 = *(a1 + 152);
  if (!*&v9)
  {
    goto LABEL_33;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *a3;
    if (*&v9 <= v8)
    {
      v11 = v8 % v9.i32[0];
    }
  }

  else
  {
    v11 = (v9.i32[0] - 1) & v8;
  }

  v12 = *(*(a1 + 144) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    if (v10.u32[0] > 1uLL)
    {
      v15 = *a3;
      if (*&v9 <= v8)
      {
        v15 = v8 % v9.i32[0];
      }
    }

    else
    {
      v15 = (v9.i32[0] - 1) & v8;
    }

    v16 = *(*(a1 + 144) + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v18 == v8)
        {
          if (*(i + 4) == v8)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v18 >= *&v9)
            {
              v18 %= *&v9;
            }
          }

          else
          {
            v18 &= *&v9 - 1;
          }

          if (v18 != v15)
          {
            break;
          }
        }
      }
    }

LABEL_33:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_17;
  }

  if ((*a4 - v13[3]) / 1000000 >= *(a1 + 136))
  {
    v13[3] = *a4;
LABEL_34:
    v35 = 0u;
    v36 = 0u;
    v37 = 1065353216;
    if (*(a2 + 4) == 1)
    {
      std::to_string(&v39, *a2);
      std::string::basic_string[abi:ne200100]<0>(__p, "ftac_invalid_window_x");
      v38 = __p;
      v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, __p);
      v20 = v19;
      if (*(v19 + 63) < 0)
      {
        operator delete(v19[5]);
      }

      *(v20 + 5) = v39;
      *(&v39.__r_.__value_.__s + 23) = 0;
      v39.__r_.__value_.__s.__data_[0] = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a2 + 12) == 1)
    {
      std::to_string(&v39, *(a2 + 8));
      std::string::basic_string[abi:ne200100]<0>(__p, "ftac_invalid_window_y");
      v38 = __p;
      v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, __p);
      v22 = v21;
      if (*(v21 + 63) < 0)
      {
        operator delete(v21[5]);
      }

      *(v22 + 5) = v39;
      *(&v39.__r_.__value_.__s + 23) = 0;
      v39.__r_.__value_.__s.__data_[0] = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a2 + 20) == 1)
    {
      std::to_string(&v39, *(a2 + 16));
      std::string::basic_string[abi:ne200100]<0>(__p, "ftac_invalid_aspect_ratio_in_portrait_orientation");
      v38 = __p;
      v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, __p);
      v24 = v23;
      if (*(v23 + 63) < 0)
      {
        operator delete(v23[5]);
      }

      *(v24 + 5) = v39;
      *(&v39.__r_.__value_.__s + 23) = 0;
      v39.__r_.__value_.__s.__data_[0] = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a2 + 28) == 1)
    {
      std::to_string(&v39, *(a2 + 24));
      std::string::basic_string[abi:ne200100]<0>(__p, "ftac_invalid_aspect_ratio_in_landscape_orientation");
      v38 = __p;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v35, __p);
      v26 = v25;
      if (*(v25 + 63) < 0)
      {
        operator delete(v25[5]);
      }

      *(v26 + 5) = v39;
      *(&v39.__r_.__value_.__s + 23) = 0;
      v39.__r_.__value_.__s.__data_[0] = 0;
      if (v34 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a2 + 32))
    {
      std::bitset<32ul>::to_string[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>();
    }

    if (*(a2 + 40))
    {
      std::bitset<32ul>::to_string[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>();
    }

    if (*(a2 + 48))
    {
      std::bitset<32ul>::to_string[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>();
    }

    memset(&v39, 0, sizeof(v39));
    std::vector<applesauce::CF::TypeRefPair>::reserve(&v39, *(&v36 + 1));
    v27 = v36;
    if (v36)
    {
      size = v39.__r_.__value_.__l.__size_;
      do
      {
        if (size >= v39.__r_.__value_.__r.__words[2])
        {
          size = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(&v39, v27 + 16, (v27 + 40));
        }

        else
        {
          applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(size, v27 + 16, (v27 + 40));
          size += 2;
        }

        v39.__r_.__value_.__l.__size_ = size;
        v27 = *v27;
      }

      while (v27);
    }

    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v39);
    __p[0] = &v39;
    std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v35);
    v30 = *(a1 + 112);
    v31 = *(a1 + 120);
    while (v30 != v31)
    {
      v32 = *v30;
      CFRetain(CFDictionaryRef);
      std::function<void ()(long long,applesauce::CF::DictionaryRef)>::operator()(*(a1 + 40), v32);
      if (CFDictionaryRef)
      {
        CFRelease(CFDictionaryRef);
      }

      ++v30;
    }

    CFRelease(CFDictionaryRef);
  }

  std::mutex::unlock((a1 + 48));
}

void sub_1DDD5C1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a21);
  std::mutex::unlock((v21 + 48));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = &unk_1F5920C80;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1DDD5C5D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  return a1;
}

void sub_1DDD5C790(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v3), a2, a3);
  v16 = (16 * v3 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void sub_1DDD5C8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
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

uint64_t std::function<void ()(long long,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void caulk::concurrent::details::rt_message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F5920C80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920C80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<AU::FTSpatialAC::MetricsReporter::reportAsync(AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&)::$_0,AU::FTSpatialAC::MetricsReporter::Issue const&,caulk::option_set<AU::FTSpatialAC::MetricsReporter::IssueTag,unsigned int> const&,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F5920C80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920C80;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
}

void AUScotty::GetChannelLayoutTags(AUScotty *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    *v11 = 0x7E000800790006;
    *&v11[8] = 6553601;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v5 = &v11[12];
    v6 = a3;
    v7 = 3;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    *&v11[16] = 8388616;
    *v11 = xmmword_1DE0B8010;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v5 = &v11[20];
    v6 = a3;
    v7 = 5;
LABEL_5:
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v6, v11, v5, v7);
    return;
  }

  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v9 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v10 = (this + 528);
    if (*(this + 551) < 0)
    {
      v10 = *v10;
    }

    *v11 = 136315650;
    *&v11[4] = v10;
    *&v11[12] = 2080;
    *&v11[14] = "GetChannelLayoutTags";
    v12 = 1024;
    v13 = a2;
    _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid scope %u", v11, 0x1Cu);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t AUScotty::SupportedNumChannels(AUScotty *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &sChannels;
  }

  return 15;
}

void AUScotty::GetLatency(AUScotty *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    (*(*v2 + 80))(v2);
    AUDspLib::GetSampleRate(this);
  }
}

uint64_t AUScotty::NewFactoryPresetSet(AUScotty *this, const AUPreset *a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 576);
  v4 = 0;
  presetNumber = a2->presetNumber;
  v6 = 1;
  while (1)
  {
    v7 = &kPresets[4 * v4];
    if (presetNumber == v7->presetNumber)
    {
      break;
    }

    v8 = v6;
    v6 = 0;
    v4 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (presetNumber > 1)
  {
LABEL_11:
    v10 = 4294956445;
    goto LABEL_12;
  }

  for (i = 0; i != 34; ++i)
  {
    v12 = 0.0;
    if (ScottyUpmixer::GetParamDefault(i, presetNumber, &v12))
    {
      ausdk::AUBase::SetParameter(this, i, 0, 0, v12);
    }
  }

  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, v7);
  v10 = 0;
  atomic_store(1u, this + 568);
LABEL_12:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 576);
  return v10;
}

uint64_t AUScotty::GetPresets(AUScotty *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, 2, 0);
    CFArrayAppendValue(Mutable, kPresets);
    CFArrayAppendValue(Mutable, &dword_1E866AD48);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AUScotty::GetParameterValueStrings(AUScotty *this, int a2, int a3, const __CFArray **a4)
{
  if (a2)
  {
    return 0;
  }

  switch(a3)
  {
    case 4:
      goto LABEL_6;
    case 14:
      if (a4)
      {
        v6 = ScottyUpmixer::kAllpass_Labels;
        v7 = 6;
        goto LABEL_10;
      }

      return 0;
    case 6:
LABEL_6:
      if (a4)
      {
        v6 = ScottyUpmixer::kCrossover_OrderLabels;
        v7 = 5;
LABEL_10:
        v8 = CFArrayCreate(0, v6, v7, 0);
        result = 0;
        *a4 = v8;
        return result;
      }

      return 0;
  }

  return 4294956417;
}

uint64_t AUScotty::RestoreState(AUScotty *this, const void *a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 576);
  v4 = ausdk::AUBase::RestoreState(this, a2);
  if (!v4)
  {
    atomic_store(1u, this + 568);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 576);
  return v4;
}

uint64_t AUScotty::GetParameterInfo(AUScotty *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  a4->flags = 0;
  a4->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  v18 = v4;
  v19 = v5;
  v13 = -1;
  theString = 0;
  v15 = 2;
  v17 = 0;
  v16 = 0;
  if (!ScottyUpmixer::GetParamInfo(a3, &v13))
  {
    return 4294956418;
  }

  if (v13 == -1)
  {
    return 4294956418;
  }

  v9 = theString;
  a4->cfNameString = theString;
  a4->flags |= 0x8000000u;
  CFStringGetCString(v9, a4->name, 52, 0x8000100u);
  *&a4->minValue = v17;
  LODWORD(a4->defaultValue) = v16;
  flags = a4->flags;
  a4->flags = flags | 0xC0000000;
  if (a3 > 0x21)
  {
    return 4294956418;
  }

  result = 0;
  v11 = dword_1DE0B80F0[a3];
  v12 = dword_1DE0B8178[a3];
  a4->unit = dword_1DE0B8068[a3];
  a4->clumpID = v11;
  a4->flags = flags | v12;
  return result;
}

ausdk::AUInputElement *AUScotty::Render(AUScotty *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13[0] = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, v13, 1, &v12);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUScotty::ProcessMultipleBufferLists(AUScotty *this, unsigned int *a2, vDSP_Length a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v112 = *MEMORY[0x1E69E9840];
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v13 = *(Element + 108), (v14 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if ((v13 - 9) <= 0xFFFFFFF7)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUScotty.cpp", 823, "numIn > 0 && numIn <= kScotty_MaxNumIn");
  }

  v15 = *(v14 + 108);
  if ((v15 - 9) <= 0xFFFFFFF7)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUScotty.cpp", 824, "numOut > 0 && numOut <= kScotty_MaxNumOut");
  }

  if (*(this + 561) != 1)
  {
    *v105 = 0;
    v101.mBuffers[0] = xmmword_1DE09BD50;
    v102 = 4;
    v103 = v13;
    v104 = 32;
    *&v97.mNumberBuffers = AUDspLib::GetSampleRate(this);
    v97.mBuffers[0] = xmmword_1DE09BD50;
    v98 = 4;
    v99 = v15;
    v95 = v15;
    v100 = 32;
    *&v101.mNumberBuffers = *&v97.mNumberBuffers;
    AudioDSP::Utility::DetectNonFinites(a3, *a5, &v101, &v105[1], v20);
    if (v105[1] == 1 && *(this + 563) == 1)
    {
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v22 = getScottyLog(void)::gLog;
      if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v86 = (this + 528);
        if (*(this + 551) < 0)
        {
          v86 = *v86;
        }

        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = v86;
        WORD2(buf[1]) = 2080;
        *(&buf[1] + 6) = "ProcessMultipleBufferLists";
        HIWORD(buf[2]) = 1024;
        LODWORD(buf[3]) = v105[1];
        _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "[%s|%s] (InputSignals) is NOT finite: (%d)", buf, 0x1Cu);
      }

      v23 = 0;
      do
      {
        bzero((*a7)->mBuffers[v23].mData, (*a7)->mBuffers[v23].mDataByteSize);
        ++v23;
        --v15;
      }

      while (v15);
LABEL_129:
      AudioDSP::Utility::DetectNonFinites(a3, *a7, &v97, v105, v21);
      if (v105[0] == 1 && *(this + 563) == 1)
      {
        if (getScottyLog(void)::onceToken != -1)
        {
          dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
        }

        v82 = getScottyLog(void)::gLog;
        if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          v87 = (this + 528);
          if (*(this + 551) < 0)
          {
            v87 = *v87;
          }

          LODWORD(buf[0]) = 136315650;
          *(buf + 4) = v87;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = "ProcessMultipleBufferLists";
          HIWORD(buf[2]) = 1024;
          LODWORD(buf[3]) = v105[0];
          _os_log_error_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_ERROR, "[%s|%s] (OutputSignals) is NOT finite: (%d)", buf, 0x1Cu);
        }

        (*(**(this + 91) + 32))(*(this + 91));
        if (v95)
        {
          v83 = 0;
          v84 = 0;
          do
          {
            v85 = (*a7 + v83 * 16);
            if (v84 >= v13)
            {
              bzero(v85[2], *(v85 + 3));
            }

            else
            {
              memcpy(v85[2], (*a5)->mBuffers[v83].mData, (*a5)->mBuffers[v83].mDataByteSize);
            }

            ++v84;
            ++v83;
          }

          while (v95 != v83);
        }
      }

      return 0;
    }

    v24 = *a5;
    v25 = *a7;
    v26 = *a2;
    v27 = *(this + 562);
    *(this + 562) = (v26 & 0x10) != 0;
    if ((v26 & 0x10) != 0)
    {
      v46 = v26 & 0x10;
      if (*v25)
      {
        v47 = 0;
        v48 = (v25 + 4);
        do
        {
          bzero(*v48, *(v48 - 1));
          ++v47;
          v48 += 2;
        }

        while (v47 < *v25);
      }

      if (v27 != v46 >> 4)
      {
        (*(**(this + 91) + 32))(*(this + 91));
      }

      goto LABEL_129;
    }

    v28 = atomic_load(this + 568);
    if ((v28 & 1) != 0 && caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 576))
    {
      AUScotty::UpdateParametersFromAU(this);
      atomic_store(0, this + 568);
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 576);
    }

    v29 = *v24;
    if (*v24 >= 8u)
    {
      v30 = 8;
    }

    else
    {
      v30 = v29;
    }

    v31 = *v25;
    if (*v25 >= 8)
    {
      v32 = 8;
    }

    else
    {
      v32 = v31;
    }

    v109 = 0u;
    v110 = 0u;
    memset(buf, 0, sizeof(buf));
    v106 = 0u;
    v107 = 0u;
    memset(&v105[10], 0, 32);
    if (v29)
    {
      v33 = (v24 + 4);
      v34 = buf;
      v35 = v30;
      do
      {
        v36 = *v33;
        v33 += 2;
        *v34++ = v36;
        --v35;
      }

      while (v35);
      if (v29 <= 7)
      {
        v37 = 0;
        v38 = *&v24[4 * (v30 - 1) + 4];
        v39 = (9 - v30) & 0xE;
        v40 = vdupq_n_s64(7 - v30);
        v41 = &buf[v30];
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v37), xmmword_1DE095160)));
          if (v42.i8[0])
          {
            v41[v37] = v38;
          }

          if (v42.i8[4])
          {
            v41[v37 + 1] = v38;
          }

          v37 += 2;
        }

        while (v39 != v37);
      }
    }

    v43 = *(this + 139);
    if (v43)
    {
      if (v43 != 2)
      {
        if (v31)
        {
          v51 = (v25 + 4);
          v52 = &v105[10];
          do
          {
            v53 = *v51;
            v51 += 2;
            *v52++ = v53;
            --v32;
          }

          while (v32);
        }

        goto LABEL_55;
      }

      v44 = &v105[26];
      v45 = 4;
    }

    else
    {
      v44 = &v105[34];
      v49 = *(v25 + 4);
      *&v105[10] = *(v25 + 2);
      *&v105[18] = v49;
      v50 = *(v25 + 12);
      *&v106 = *(v25 + 10);
      *(&v106 + 1) = v50;
      *&v105[26] = *(v25 + 6);
      v45 = 16;
    }

    *v44 = *&v25[v45];
LABEL_55:
    v54 = *(this + 91);
    if (v54 && *(v54 + 8) == 1)
    {
      v93 = (*(*v54 + 72))(*(this + 91));
      if (*(v54 + 8) == 1 && *(v54 + 9) == 1 && (*(v54 + 116) != 1 || *(v54 + 120)))
      {
        if (a3)
        {
          v55 = 0;
          v96 = v54 + 216;
          v94 = (v54 + 96);
          v56 = a3;
          v88 = a3;
          do
          {
            v57 = *(v54 + 280);
            if (v93 < v57)
            {
              __assert_rtn("Process", "ScottyUpmixer.cpp", 419, "nativeFrameSize >= mInputStagingBufferOffset");
            }

            if (v93 - v57 >= v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = v93 - v57;
            }

            v91 = v55;
            if (v58)
            {
              v59 = a3 - v56;
              if (v58 + v59 > a3)
              {
                __assert_rtn("Process", "ScottyUpmixer.cpp", 423, "(inFramesToProcess-inFramesPending+inFramesToCopy) <= inFramesToProcess");
              }

              if (v58 + v57 > v93)
              {
                __assert_rtn("Process", "ScottyUpmixer.cpp", 424, "(mInputStagingBufferOffset+inFramesToCopy) <= nativeFrameSize");
              }

              for (i = 0; i != 8; ++i)
              {
                if ((*(*v54 + 128))(v54, i))
                {
                  v61 = buf[i];
                  if (v61)
                  {
                    memmove((*(v54 + 8 * i + 152) + 4 * *(v54 + 280)), (v61 + 4 * v59), 4 * v58);
                  }
                }
              }

              v56 -= v58;
              v57 = *(v54 + 280) + v58;
              *(v54 + 280) = v57;
              a3 = v88;
              v55 = v91;
            }

            if (v57 == v93 && !*(v54 + 288))
            {
              v62 = caulk::pooled_semaphore_mutex::try_lock((v54 + 72));
              v55 = v91;
              if (v62)
              {
                (*(*v54 + 144))(v54, v54 + 152, v96);
                *(v54 + 288) = v93;
                *(v54 + 280) = 0;
                caulk::pooled_semaphore_mutex::_unlock((v54 + 72));
                v55 = v91;
              }
            }

            v63 = *(v54 + 288);
            if (a3 - v55 >= v63)
            {
              v64 = v63;
            }

            else
            {
              v64 = a3 - v55;
            }

            if (v64)
            {
              if (v64 + v55 > a3)
              {
                __assert_rtn("Process", "ScottyUpmixer.cpp", 453, "(outFramesCompleted+outFramesToCopy) <= inFramesToProcess");
              }

              v90 = v64 + v55;
              if ((*(v54 + 284) + v64) > *(v54 + 120))
              {
                __assert_rtn("Process", "ScottyUpmixer.cpp", 454, "(mOutputStagingBufferOffset+outFramesToCopy) <= mOutputBufSize");
              }

              v65 = COERCE_FLOAT(atomic_load((*(v54 + 40) + 124)));
              v66 = *(v54 + 100);
              v89 = v56;
              if (fabsf(v65) > 0.01 || fabsf(v66) > 0.01)
              {
                if (v66 == v65)
                {
                  v67 = 0;
                  v111 = xmmword_1DE09BC60;
                  do
                  {
                    v68 = *(&v111 + v67);
                    if ((*(*v54 + 136))(v54, v68))
                    {
                      v69 = *(v96 + 8 * v68) + 4 * *(v54 + 284);
                      MEMORY[0x1E12BE940](v69, 1, v94, v69, 1, v64);
                    }

                    v67 += 4;
                  }

                  while (v67 != 16);
                }

                else
                {
                  v70 = __exp10f(v65 / 20.0);
                  v71 = 0;
                  *&v105[6] = (v70 - *v94) / v64;
                  v111 = xmmword_1DE09BC60;
                  do
                  {
                    v72 = *(&v111 + v71);
                    if ((*(*v54 + 136))(v54, v72))
                    {
                      *&v105[2] = *(v54 + 96);
                      v73 = (*(v96 + 8 * v72) + 4 * *(v54 + 284));
                      vDSP_vrampmul(v73, 1, &v105[2], &v105[6], v73, 1, v64);
                    }

                    v71 += 4;
                  }

                  while (v71 != 16);
                  *(v54 + 100) = v65;
                  *(v54 + 96) = v70;
                }

                v55 = v91;
              }

              v74 = *(v54 + 16);
              if (v74 == 2)
              {
                if (*&v105[26])
                {
                  memmove((*&v105[26] + 4 * v55), (*(v54 + 232) + 4 * *(v54 + 284)), 4 * v64);
                }
              }

              else if (v74)
              {
                v78 = 0;
                v79 = v55;
                do
                {
                  if ((*(*v54 + 136))(v54, v78))
                  {
                    v80 = *&v105[8 * v78 + 10];
                    if (v80)
                    {
                      memmove((v80 + 4 * v79), (*(v54 + 8 * v78 + 216) + 4 * *(v54 + 284)), 4 * v64);
                    }
                  }

                  ++v78;
                }

                while (v78 != 8);
              }

              else
              {
                v75 = 0;
                v92 = v55;
                do
                {
                  v76 = dword_1DE114498[v75];
                  if ((*(*v54 + 136))(v54, v76))
                  {
                    v77 = *&v105[8 * v76 + 10];
                    if (v77)
                    {
                      memmove((v77 + 4 * v92), (*(v96 + 8 * v76) + 4 * *(v54 + 284)), 4 * v64);
                    }
                  }

                  ++v75;
                }

                while (v75 != 6);
                if (((*(*v54 + 136))(v54, 4) & 1) != 0 && (*(*v54 + 136))(v54, 6) && v106)
                {
                  MEMORY[0x1E12BE5D0](*(v54 + 264) + 4 * *(v54 + 284), 1, v106 + 4 * v92, 1, v106 + 4 * v92, 1, v64);
                }

                if ((*(*v54 + 136))(v54, 5) && (*(*v54 + 136))(v54, 7) && *(&v106 + 1))
                {
                  MEMORY[0x1E12BE5D0](*(v54 + 272) + 4 * *(v54 + 284), 1, *(&v106 + 1) + 4 * v92, 1, *(&v106 + 1) + 4 * v92, 1, v64);
                }
              }

              v81 = *(v54 + 288) - v64;
              *(v54 + 288) = v81;
              if (v81)
              {
                v81 = *(v54 + 284) + v64;
              }

              v56 = v89;
              v55 = v90;
              *(v54 + 284) = v81;
            }
          }

          while (v56 || v55 < a3);
        }
      }

      else
      {
        ScottyUpmixer::ProcessBypass(buf, &v105[10], a3);
      }
    }

    goto LABEL_129;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = (*a7 + v16 * 16);
    if (v17 >= v13)
    {
      bzero(v18[2], *(v18 + 3));
    }

    else
    {
      memcpy(v18[2], (*a5)->mBuffers[v16].mData, (*a5)->mBuffers[v16].mDataByteSize);
    }

    ++v17;
    ++v16;
  }

  while (v15 != v16);
  return 0;
}

void AUScotty::UpdateParametersFromAU(AUScotty *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(this + 91))
  {
    return;
  }

  v2 = 0;
  for (i = 0; i != 34; ++i)
  {
    *buf = 0.0;
    ausdk::AUBase::GetParameter(this, i, 0, 0, buf);
    v4 = *buf;
    if (i > 24)
    {
      if (i == 25)
      {
        if (vabds_f32(*buf, *(this + 189)) <= 0.01)
        {
          goto LABEL_23;
        }

        *(this + 189) = *buf;
        goto LABEL_22;
      }

      if (i == 28)
      {
        if (vabds_f32(*buf, *(this + 186)) <= 0.01)
        {
          goto LABEL_23;
        }

        *(this + 186) = *buf;
        goto LABEL_22;
      }

      if (i == 27 && vabds_f32(*buf, *(this + 184)) > 0.01)
      {
        *(this + 184) = *buf;
        goto LABEL_22;
      }
    }

    else
    {
      if (i == 4)
      {
        if (vabds_f32(*buf, *(this + 185)) <= 0.01)
        {
          goto LABEL_23;
        }

        *(this + 185) = *buf;
        goto LABEL_22;
      }

      if (i == 6)
      {
        if (vabds_f32(*buf, *(this + 187)) <= 0.01)
        {
          goto LABEL_23;
        }

        *(this + 187) = *buf;
        goto LABEL_22;
      }

      if (i == 24 && vabds_f32(*buf, *(this + 188)) > 0.01)
      {
        *(this + 188) = *buf;
LABEL_22:
        v2 = 1;
      }
    }

LABEL_23:
    AUScotty::SetParameterImmediately(this, i, v4);
  }

  (*(**(this + 91) + 56))(*(this + 91));
  (*(**(this + 91) + 64))(*(this + 91), *(this + 141));
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v5 = getScottyLog(void)::gLog;
  v6 = os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v6)
    {
      v12 = (this + 528);
      if (*(this + 551) < 0)
      {
        v12 = *v12;
      }

      *buf = 4.8151e-34;
      v16 = v12;
      v17 = 2080;
      v18 = "UpdateParametersFromAU";
      _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "[%s|%s] Sufficient filter parameter changes occurred --- recalculate filters", buf, 0x16u);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 576);
    *buf = 0.0;
    ausdk::AUBase::GetParameter(this, 5u, 0, 0, buf);
    v14 = 0.0;
    ausdk::AUBase::GetParameter(this, 7u, 0, 0, &v14);
    if (*buf != -1.0)
    {
      v7 = *buf & ~(*buf >> 31);
      if (v7 >= 8)
      {
        v7 = 8;
      }

      v8 = flt_1DE0B8024[v7];
      *(this + 184) = v8;
      ausdk::AUBase::SetParameter(this, 0x1Bu, 0, 0, v8);
      ausdk::AUBase::SetParameter(this, 5u, 0, 0, -1.0);
      AUScotty::SetParameterImmediately(this, 0x1Bu, *(this + 184));
    }

    if (v14 != -1.0)
    {
      v9 = v14 & ~(v14 >> 31);
      if (v9 >= 3)
      {
        v9 = 3;
      }

      v10 = flt_1DE09E870[v9];
      *(this + 186) = v10;
      ausdk::AUBase::SetParameter(this, 0x1Cu, 0, 0, v10);
      ausdk::AUBase::SetParameter(this, 7u, 0, 0, -1.0);
      AUScotty::SetParameterImmediately(this, 0x1Cu, *(this + 186));
    }

    v11 = *(this + 91);
    if (v11)
    {
      ScottyUpmixer::UpdateCrossover(v11);
      ScottyUpmixer::UpdateSurroundFilters(*(this + 91));
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 576);
  }

  else if (v6)
  {
    v13 = (this + 528);
    if (*(this + 551) < 0)
    {
      v13 = *v13;
    }

    *buf = 4.8151e-34;
    v16 = v13;
    v17 = 2080;
    v18 = "UpdateParametersFromAU";
    _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "[%s|%s] Filter parameter changes were not signficant; filters will not be recalculated", buf, 0x16u);
  }
}

void AUScotty::SetParameterImmediately(uint64_t a1, unsigned int a2, float a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x21)
  {
    v12 = -1;
    v13 = 0;
    v14 = 2;
    *v16 = 0;
    v15 = 0;
    if (ScottyUpmixer::GetParamInfo(a2, &v12))
    {
      v6 = roundf(a3);
      v7 = 0.0;
      if (a3 != 0.0)
      {
        v7 = 1.0;
      }

      if (v14)
      {
        v7 = a3;
      }

      if (v14 != 1)
      {
        v6 = v7;
      }

      v8 = v16[1];
      if (v16[1] >= v6)
      {
        v8 = v6;
      }

      if (v6 >= v16[0])
      {
        v9 = v8;
      }

      else
      {
        v9 = v16[0];
      }

      atomic_store(LODWORD(v9), (a1 + 592 + 4 * a2));
    }

    else
    {
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v10 = getScottyLog(void)::gLog;
      if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v11 = (a1 + 528);
        if (*(a1 + 551) < 0)
        {
          v11 = *v11;
        }

        *buf = 136315650;
        v18 = v11;
        v19 = 2080;
        v20 = "SetParameterImmediately";
        v21 = 1024;
        v22 = a2;
        _os_log_debug_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set parameter %i immediately - Not Found", buf, 0x1Cu);
      }
    }
  }
}

uint64_t AUScotty::SetParameter(AUScotty *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 576);
  v10 = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!v10)
  {
    atomic_store(1u, this + 568);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 576);
  return v10;
}

uint64_t AUScotty::SetProperty(AUScotty *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != 21 || a3)
  {
    if (a2 == 3700)
    {
      if (!a3)
      {
        result = 0;
        *(this + 376) = *a5 != 0;
        return result;
      }
    }

    else
    {
      if (a2 != 1885566051)
      {
        return 4294956417;
      }

      if (!a5)
      {
        __assert_rtn("SetProperty", "AUScotty.cpp", 418, "inData");
      }

      if (!a3)
      {
        result = 0;
        *(this + 141) = *a5;
        atomic_store(1u, this + 568);
        return result;
      }
    }

    return 4294956430;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  v8 = *a5 != 0;
  if (*(this + 561) == v8)
  {
    return 0;
  }

  if (*(this + 17) == 1)
  {
    (*(*this + 72))(this, 0, 0);
  }

  *(this + 561) = v8;
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v9 = getScottyLog(void)::gLog;
  result = os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v10 = (this + 528);
    if (*(this + 551) < 0)
    {
      v10 = *v10;
    }

    v11 = *(this + 561);
    v12 = 136315650;
    v13 = v10;
    v14 = 2080;
    v15 = "SetProperty";
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Scotty Bypass %i", &v12, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t AUScotty::GetProperty(AUScotty *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 21 && !a3)
  {
    result = 0;
    v7 = *(this + 561);
LABEL_4:
    *a5 = v7;
    return result;
  }

  if (a2 == 1885566051)
  {
    if (!a3)
    {
      v7 = *(this + 141);
      goto LABEL_13;
    }

    return 4294956430;
  }

  if (a2 == 3700)
  {
    if (!a3)
    {
      v7 = *(this + 376);
LABEL_13:
      result = 0;
      goto LABEL_4;
    }

    return 4294956430;
  }

  return 4294956417;
}

uint64_t AUScotty::GetPropertyInfo(AUScotty *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 21 && !a3)
  {
    goto LABEL_3;
  }

  if (a2 != 1885566051 && a2 != 3700)
  {
    return 4294956417;
  }

  if (!a3)
  {
LABEL_3:
    result = 0;
    *a6 = 1;
    *a5 = 4;
    return result;
  }

  return 4294956430;
}

uint64_t AUScotty::Reset(AUScotty *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 528);
    if (*(this + 551) < 0)
    {
      v3 = *v3;
    }

    v6 = 136315394;
    v7 = v3;
    v8 = 2080;
    v9 = "Reset";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Resetting", &v6, 0x16u);
  }

  v4 = *(this + 91);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  return 0;
}

uint64_t AUScotty::Cleanup(AUScotty *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 528);
    if (*(this + 551) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = "Cleanup";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Cleanup", &v5, 0x16u);
  }

  result = *(this + 91);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t AUScotty::Initialize(AUScotty *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 528);
    if (*(this + 551) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = "Initialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing", buf, 0x16u);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(Element + 108);
  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(v6 + 108);
  (*(*this + 392))(&v21, this, 1, 0);
  *buf = v21;
  *&buf[16] = v22;
  v25 = v23;
  (*(*this + 392))(v19, this, 2, 0);
  v21 = *v19;
  v22 = *&v19[16];
  v23 = v20;
  *&v19[8] = xmmword_1DE09BD50;
  *&v19[24] = 4;
  *&v19[28] = v5;
  v20 = 32;
  v14 = *buf;
  v15 = xmmword_1DE09BD50;
  v16 = 4;
  v17 = v7;
  v18 = 32;
  *v19 = *buf;
  v8 = (*(*this + 400))(this, 1, 0, buf, v19);
  if (v8)
  {
    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v9 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v10 = (this + 528);
      if (*(this + 551) < 0)
      {
        v10 = *v10;
      }

      *v26 = 136315650;
      v27 = v10;
      v28 = 2080;
      v29 = "Initialize";
      v30 = 1024;
      LODWORD(v31) = v8;
      v11 = "[%s|%s] Error with input stream format with error code %d";
LABEL_23:
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v11, v26, 0x1Cu);
    }
  }

  else
  {
    v8 = (*(*this + 400))(this, 2, 0, &v21, &v14);
    if (!v8)
    {
      AUDspLib::GetSampleRate(this);
      operator new();
    }

    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v9 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v12 = (this + 528);
      if (*(this + 551) < 0)
      {
        v12 = *v12;
      }

      *v26 = 136315650;
      v27 = v12;
      v28 = 2080;
      v29 = "Initialize";
      v30 = 1024;
      LODWORD(v31) = v8;
      v11 = "[%s|%s] Error with output stream format with error code %d";
      goto LABEL_23;
    }
  }

  return v8;
}

void sub_1DDD6006C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v43 = v39 + 304;
  v44 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v43--, 0);
    v44 += 8;
  }

  while (v44);
  v45 = v39 + 301;
  v46 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v45--, 0);
    v46 += 8;
  }

  while (v46);
  v47 = v39 + 298;
  v48 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v47--, 0);
    v48 += 8;
  }

  while (v48);
  v49 = v39 + 295;
  v50 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v49--, 0);
    v50 += 8;
  }

  while (v50);
  v51 = v39 + 292;
  v52 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v51--, 0);
    v52 += 8;
  }

  while (v52);
  v53 = v39 + 289;
  v54 = -24;
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](v53--, 0);
    v54 += 8;
  }

  while (v54);
  v55 = v39[284];
  if (v55)
  {
    v39[285] = v55;
    operator delete(v55);
  }

  v56 = v39[281];
  if (v56)
  {
    v39[282] = v56;
    operator delete(v56);
  }

  v57 = v39[280];
  v39[280] = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = v39[279];
  v39[279] = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = v39[278];
  v39[278] = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = v39[277];
  v39[277] = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = v39[276];
  v39[276] = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = v39[275];
  v39[275] = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = v39[274];
  v39[274] = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *v41;
  *v41 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = v39 + 239;
  v66 = -96;
  while (1)
  {
    v67 = *(v65 - 1);
    if (v67)
    {
      *v65 = v67;
      operator delete(v67);
    }

    v65 -= 3;
    v66 += 24;
    if (!v66)
    {
      ScottySTFTUpmixer::STFT_tables_t::~STFT_tables_t((v39 + 199));
      ScottySTFTUpmixer::STFT_state_t::~STFT_state_t((v39 + 81));
      v68 = *v40;
      *v40 = 0;
      if (v68)
      {
        MultiRadixFFT_Dispose(v68);
      }

      ScottyUpmixer::~ScottyUpmixer(v39);
      if (a32 < 0)
      {
        operator delete(__p);
      }

      MEMORY[0x1E12BD160](v39, 0x10F3C406FF32ED7);
      _Unwind_Resume(a1);
    }
  }
}

void AUScotty::~AUScotty(AUScotty *this)
{
  AUScotty::~AUScotty(this);

  JUMPOUT(0x1E12BD160);
}

{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5920CA8;
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 528);
    if (*(this + 551) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = "~AUScotty";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Destructing", &v5, 0x16u);
  }

  v4 = *(this + 91);
  *(this + 91) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  ausdk::AUBase::~AUBase(this);
}

double CplxPolynomial::evaluate(uint64_t a1, double *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 8);
  if (*(a1 + 24) >= 2uLL)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = std::operator*[abi:ne200100]<double,0>(*a2, a2[1], v2, v3);
      v9 = *a1 + v6;
      v2 = v8 + *(v9 + 16);
      v3 = v10 + *(v9 + 24);
      ++v7;
      v6 += 16;
    }

    while (*(a1 + 24) > v7);
  }

  return v2;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::sqrt[abi:ne200100]<double>(long double a1, long double a2)
{
  if (fabs(a2) != INFINITY && fabs(a1) != INFINITY)
  {
    v2 = sqrt(hypot(a1, a2));
    v3 = atan2(a2, a1);
    std::polar[abi:ne200100]<double>(v2, v3 * 0.5);
  }
}

void sub_1DDD6081C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CplxPolynomial::CplxPolynomial(uint64_t *result, uint64_t *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  result[3] = v4 >> 4;
  if (result != a2)
  {
    if (v2 != v3)
    {
      if (!((v4 >> 4) >> 60))
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    result[1] = v4;
  }

  return result;
}

void sub_1DDD608F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::polar[abi:ne200100]<double>(double a1, double a2)
{
  if ((*&a1 & 0x8000000000000000) == 0 && fabs(a2) != INFINITY)
  {
    __sincos_stret(a2);
  }
}

uint64_t AUAnomalyDetection::SupportedNumChannels(AUAnomalyDetection *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUAnomalyDetection::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUAnomalyDetection::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUAnomalyDetection::GetParameterInfo(AUAnomalyDetection *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  if (a3 > 6)
  {
    return 4294956430;
  }

  v6 = *(&off_1E866AD58 + a3);
  v7 = dword_1DE0B8234[a3];
  v8 = flt_1DE0B8250[a3];
  v9 = flt_1DE0B826C[a3];
  v10 = flt_1DE0B8288[a3];
  v11 = dword_1DE0B82A4[a3];
  buffer->cfNameString = v6;
  buffer->flags = 1207959552;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = v8;
  buffer->maxValue = v9;
  buffer->defaultValue = v10;
  buffer->flags |= v11;
  return result;
}

uint64_t AUAnomalyDetection::GetParameterList(AUAnomalyDetection *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 2) = 0x500000004;
    a3[6] = 6;
  }

  result = 0;
  *a4 = 7;
  return result;
}

uint64_t AUAnomalyDetection::Render(AUAnomalyDetection *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v31[3] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_36;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v14 = v13;
  if (v15)
  {
    v14 = ausdk::AUInputElement::PullInput(v13, a2, a3, 0, a4);
  }

  if (!v14)
  {
    if (!*(v11 + 144))
    {
      goto LABEL_41;
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
  }

  v16 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (v16 && *(v16 + 172))
  {
    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
    if (v18)
    {
      v14 = ausdk::AUInputElement::PullInput(v17, a2, a3, 1, a4);
      if (v14)
      {
        return v14;
      }
    }

    else
    {
      v14 = v17;
      if (v17)
      {
        return v14;
      }
    }

    v19 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v19)
    {
      goto LABEL_36;
    }

    if (!*(v19 + 144))
    {
      goto LABEL_41;
    }

    v14 = 0;
    v20 = *(v19 + 152) + 48;
  }

  else
  {
    v20 = 0;
  }

  v22 = ausdk::AUScope::GetElement((this + 80), 2u);
  if (v22 && *(v22 + 172))
  {
    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
    if (v24)
    {
      v14 = ausdk::AUInputElement::PullInput(v23, a2, a3, 2, a4);
      if (v14)
      {
        return v14;
      }
    }

    else
    {
      v14 = v23;
      if (v23)
      {
        return v14;
      }
    }

    v25 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (!v25)
    {
      goto LABEL_36;
    }

    if (!*(v25 + 144))
    {
      goto LABEL_41;
    }

    v14 = 0;
    v26 = *(v25 + 152) + 48;
  }

  else
  {
    v26 = 0;
  }

  v27 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (v27)
  {
    if (*(v27 + 172))
    {
      v28 = ausdk::AUScope::GetElement((this + 80), 2u);
      if (v28)
      {
        if (*(v28 + 172))
        {
          v29 = ausdk::AUScope::GetElement((this + 80), 0);
          if (v29)
          {
            if (*(v29 + 144))
            {
              v31[0] = *(v29 + 152) + 48;
              v31[1] = v20;
              v31[2] = v26;
              if (*(v11 + 144))
              {
                v30 = *(v11 + 152) + 48;
                return (*(*this + 184))(this, a2, a4, 3, v31, 1, &v30);
              }
            }

LABEL_41:
            ausdk::Throw(0xFFFFFFFFLL);
          }

LABEL_36:
          ausdk::Throw(0xFFFFD583);
        }
      }
    }
  }

  return v14;
}

uint64_t AUAnomalyDetection::ProcessMultipleBufferLists(AUAnomalyDetection *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[2];
  v12 = *a7;
  Element = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v14 = Element;
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v16 & 1) == 0)
  {
LABEL_41:
    abort();
  }

  *(this + 144) = ausdk::AUElement::GetParameter(v15, 4u);
  v17 = v12[3];
  if (*(this + 528) != 1)
  {
    v21 = *v9;
    mNumberBuffers = v10->mNumberBuffers;
    *(this + 139) = 0;
    if (v21 != mNumberBuffers)
    {
      v20 = 4294956428;
      goto LABEL_38;
    }

    v55 = v10;
    __N_4 = v9;
    __N = a3;
    if (*(v14 + 108))
    {
      v23 = 0;
      p_mData = &v10->mBuffers[0].mData;
      v25 = (v9 + 4);
      while (1)
      {
        v26 = *v25;
        v27 = *p_mData;
        __C = 0;
        vDSP_svesq(v26, 1, &__C + 1, __N);
        vDSP_svesq(v27, 1, &__C, __N);
        v28 = *&__C;
        if ((__C & 0x7FFFFFFF) > 0x7F7FFFFF)
        {
          break;
        }

        v29 = *(&__C + 1) + 1.0e-20;
        v30 = log10f(v29) * 10.0;
        v31 = v28 + 1.0e-20;
        if (((log10f(v31) * 10.0) - v30) > *(this + 138))
        {
          break;
        }

        ++v23;
        p_mData += 2;
        v25 += 2;
        if (v23 >= *(v14 + 108))
        {
          goto LABEL_17;
        }
      }

      *(this + 139) = 1;
    }

LABEL_17:
    if (*(this + 142))
    {
      v32 = *(this + 139);
    }

    else
    {
      v35 = v11->mNumberBuffers;
      v32 = *(this + 139);
      v33 = __N;
      v34 = v9;
      if (v11->mNumberBuffers <= *v12)
      {
        goto LABEL_29;
      }

      if (v32)
      {
        goto LABEL_30;
      }

      v32 = *v9;
      v54 = *(this + 73);
      __C = 0;
      v58 = 0.0;
      if (!v32)
      {
LABEL_29:
        if (!v32)
        {
          if (*v12)
          {
            v48 = 0;
            v49 = 4;
            do
            {
              memcpy(*&v12[v49], *(&v11->mNumberBuffers + v49 * 4), v17);
              ++v48;
              v49 += 4;
            }

            while (v48 < *v12);
          }

          goto LABEL_37;
        }

LABEL_30:
        MEMORY[0x1E12BE940](*(v34 + 2), 1, this + 560, *(v12 + 2), 1, v33);
        if (*v12 >= 2)
        {
          v46 = 1;
          v47 = 8;
          do
          {
            bzero(*&v12[v47], v17);
            ++v46;
            v47 += 4;
          }

          while (v46 < *v12);
        }

LABEL_37:
        v20 = 0;
        goto LABEL_38;
      }

      v36 = 0;
      v53 = v11 + 16 * (v35 - v32);
      v37 = 4;
      while (1)
      {
        v38 = *&v34[v37];
        v39 = *(&v55->mNumberBuffers + v37 * 4);
        MEMORY[0x1E12BE5D0](v39, 1, *&v53[v37 * 4], 1, v54, 1, __N);
        vDSP_svesq(v38, 1, &__C + 1, __N);
        vDSP_svesq(v54, 1, &__C, __N);
        vDSP_svesq(v39, 1, &v58, __N);
        v40 = *(&__C + 1) + 1.0e-20;
        v41 = log10f(v40) * 10.0;
        *(&__C + 1) = v41;
        v42 = v58 + 1.0e-20;
        v43 = log10f(v42) * 10.0;
        v58 = v43;
        v44 = *&__C + 1.0e-20;
        *&__C = log10f(v44) * 10.0;
        v45 = *(this + 143);
        if (vabds_f32(v41, *&__C) >= v45 && (*(this + 144) != 1.0 || vabds_f32(v41, v43) >= v45))
        {
          break;
        }

        *(this + 139) = 0;
        v34 = __N_4;
        ++v36;
        v37 += 4;
        if (*__N_4 <= v36)
        {
          v32 = 0;
          v33 = __N;
          goto LABEL_29;
        }
      }

      v32 = 1;
      *(this + 139) = 1;
    }

    v33 = __N;
    v34 = __N_4;
    goto LABEL_29;
  }

  if (*v12)
  {
    v18 = 0;
    v19 = 4;
    do
    {
      memcpy(*&v12[v19], *(&v11->mNumberBuffers + v19 * 4), v17);
      ++v18;
      v19 += 4;
    }

    while (v18 < *v12);
  }

  v20 = 0;
  *(this + 139) = 0;
LABEL_38:
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_41;
  }

  ausdk::AUElement::SetParameter(v50, 1u, *(this + 139));
  return v20;
}

uint64_t AUAnomalyDetection::SetParameter(AUAnomalyDetection *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUAnomalyDetection::SetProperty(AUAnomalyDetection *this, int a2, int a3, unsigned int a4, _BYTE *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 0;
    *(this + 376) = *a5;
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUAnomalyDetection::GetProperty(AUAnomalyDetection *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUAnomalyDetection::GetPropertyInfo(AUAnomalyDetection *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUAnomalyDetection::Initialize(AUAnomalyDetection *this)
{
  v2 = AUAnomalyDetectionLogScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "Initialize.", buf, 2u);
  }

  v3 = *(this + 15);
  if (v3)
  {
    LODWORD(v4) = (*(*v3 + 24))(v3);
  }

  else
  {
    v4 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v5 = *(this + 21);
  if (v5)
  {
    LODWORD(v6) = (*(*v5 + 24))(v5);
  }

  else
  {
    v6 = (*(this + 19) - *(this + 18)) >> 3;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 2u);
  if (!Element)
  {
    goto LABEL_36;
  }

  v8 = *(Element + 108);
  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    goto LABEL_36;
  }

  if (v8 < *(v9 + 108))
  {
    return 4294956428;
  }

  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v12)
  {
    goto LABEL_36;
  }

  *(this + 136) = *(v11 + 108);
  *(this + 137) = *(v12 + 108);
  v13 = *(v11 + 80);
  *(this + 135) = v13;
  v14 = *(this + 84);
  v39 = 0;
  std::vector<float>::assign(this + 73, v14, &v39, *&v13);
  if (*(this + 136) != *(this + 137))
  {
    return 4294956428;
  }

  if (v4)
  {
    v15 = 0;
    while (1)
    {
      v16 = ausdk::AUScope::GetElement((this + 80), v15);
      if (!v16)
      {
        break;
      }

      LODWORD(v17) = *(this + 135);
      if (*(v16 + 80) != v17)
      {
        return 4294956428;
      }

      if (v4 == ++v15)
      {
        goto LABEL_20;
      }
    }

LABEL_36:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_20:
  if (v6)
  {
    v18 = 0;
    do
    {
      v19 = ausdk::AUScope::GetElement((this + 128), v18);
      if (!v19)
      {
        goto LABEL_36;
      }

      LODWORD(v20) = *(this + 135);
      if (*(v19 + 80) != v20)
      {
        return 4294956428;
      }
    }

    while (v6 != ++v18);
  }

  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v22 & 1) == 0 || (*(this + 138) = ausdk::AUElement::GetParameter(v21, 0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v24 & 1) == 0) || (*(this + 139) = ausdk::AUElement::GetParameter(v23, 1u), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v26 & 1) == 0) || (*(this + 140) = ausdk::AUElement::GetParameter(v25, 2u), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v28 & 1) == 0) || (*(this + 141) = ausdk::AUElement::GetParameter(v27, 3u), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v30 & 1) == 0) || (*(this + 144) = ausdk::AUElement::GetParameter(v29, 4u), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v32 & 1) == 0) || (*(this + 143) = ausdk::AUElement::GetParameter(v31, 5u), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v34 & 1) == 0))
  {
    abort();
  }

  *(this + 142) = ausdk::AUElement::GetParameter(v33, 6u);
  *(this + 134) = *(this + 133);
  (*(*this + 72))(this, 0, 0);
  v35 = AUAnomalyDetectionLogScope();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v36)
  {
    *v38 = 0;
    _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEFAULT, "Successfully initialized.", v38, 2u);
    return 0;
  }

  return result;
}

uint64_t AUAnomalyDetectionLogScope(void)
{
  v0 = &unk_1ECDA8000;
  {
    v0 = &unk_1ECDA8000;
    if (v2)
    {
      AUAnomalyDetectionLogScope(void)::gLog = os_log_create("com.apple.coreaudio", " AUAnomalyDetection");
      v0 = &unk_1ECDA8000;
    }
  }

  return v0[334];
}

void AUAnomalyDetection::~AUAnomalyDetection(AUAnomalyDetection *this)
{
  AUAnomalyDetection::~AUAnomalyDetection(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920EF8;
  v2 = *(this + 73);
  if (v2)
  {
    *(this + 74) = v2;
    operator delete(v2);
  }

  ausdk::AUBase::~AUBase(this);
}

void CmhBEAM2NOpt::CmhBEAM2NOpt(CmhBEAM2NOpt *this)
{
  *(this + 72) = 0u;
  *(this + 20) = 0;
  *(this + 31) = 0;
  *(this + 34) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 72) = 0;
  *(this + 73) = 0;
  *(this + 120) = 0;
  *(this + 29) = 0u;
  *(this + 28) = 0u;
  *(this + 27) = 0u;
  *(this + 26) = 0u;
  *(this + 61) = 0x100000000;
  *(this + 124) = 0;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  v1 = &MC_default_param;
  v2 = 125;
  *(this + 96) = 0;
  do
  {
    v3 = *v1++;
    *(this + v2++) = v3;
  }

  while (v2 != 144);
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 103) = 0;
  operator new[]();
}

uint64_t CmhBEAM2NOpt::deallocate_memory(uint64_t this)
{
  if (*this)
  {
    v1 = this;
    *this = 0;
    if (*(this + 160))
    {
      v2 = *(this + 44);
      if (v2 < 1)
      {
        goto LABEL_9;
      }

      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(v1 + 160) + 8 * i);
        if (v4)
        {
          MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
          v2 = *(v1 + 44);
        }
      }

      if (*(v1 + 160))
      {
LABEL_9:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 160) = 0;
    }

    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = (v1 + 168 + 16 * v5);
      if (*v8)
      {
        MEMORY[0x1E12BD130](*v8, 0x1000C8052888210);
      }

      v6 = 0;
      *v8 = 0;
      v8[1] = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    if (*(v1 + 408))
    {
      if (*(v1 + 8) < 1)
      {
        goto LABEL_36;
      }

      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v1 + 408);
        v12 = *(v11 + v9);
        if (v12)
        {
          MEMORY[0x1E12BD130](v12, 0x1000C8052888210);
          v11 = *(v1 + 408);
          v13 = (v11 + v9);
          *v13 = 0;
          v13[1] = 0;
        }

        v14 = *(v11 + v9 + 16);
        if (v14)
        {
          MEMORY[0x1E12BD130](v14, 0x1000C8052888210);
          v11 = *(v1 + 408);
        }

        v15 = *(v11 + v9 + 24);
        if (v15)
        {
          MEMORY[0x1E12BD130](v15, 0x1000C8052888210);
          v11 = *(v1 + 408);
        }

        v16 = *(v11 + v9 + 32);
        if (v16)
        {
          MEMORY[0x1E12BD130](v16, 0x1000C8052888210);
          v11 = *(v1 + 408);
        }

        v17 = *(v11 + v9 + 40);
        if (v17)
        {
          MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
          v11 = *(v1 + 408);
        }

        v18 = *(v11 + v9 + 48);
        if (v18)
        {
          MEMORY[0x1E12BD130](v18, 0x1000C8052888210);
          *(*(v1 + 408) + v9 + 48) = 0;
          v11 = *(v1 + 408);
        }

        v19 = *(v11 + v9 + 56);
        if (v19)
        {
          MEMORY[0x1E12BD130](v19, 0x1000C8052888210);
          *(*(v1 + 408) + v9 + 56) = 0;
          v11 = *(v1 + 408);
        }

        v20 = *(v11 + v9 + 120);
        if (v20)
        {
          MEMORY[0x1E12BD130](v20, 0x1000C8052888210);
        }

        ++v10;
        v9 += 136;
      }

      while (v10 < *(v1 + 8));
      if (*(v1 + 408))
      {
LABEL_36:
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 408) = 0;
    }

    v21 = *(v1 + 416);
    if (v21)
    {
      MEMORY[0x1E12BD130](v21, 0x1000C8052888210);
      *(v1 + 416) = 0;
    }

    v22 = *(v1 + 424);
    if (v22)
    {
      MEMORY[0x1E12BD130](v22, 0x1000C8052888210);
      *(v1 + 424) = 0;
    }

    v23 = *(v1 + 432);
    if (v23)
    {
      MEMORY[0x1E12BD130](v23, 0x1000C8052888210);
      *(v1 + 432) = 0;
    }

    v24 = *(v1 + 440);
    if (v24)
    {
      MEMORY[0x1E12BD130](v24, 0x1000C8052888210);
      *(v1 + 440) = 0;
    }

    v25 = *(v1 + 448);
    if (v25)
    {
      MEMORY[0x1E12BD130](v25, 0x1000C8052888210);
      *(v1 + 448) = 0;
    }

    v26 = *(v1 + 456);
    if (v26)
    {
      MEMORY[0x1E12BD130](v26, 0x1000C8052888210);
      *(v1 + 456) = 0;
    }

    v27 = *(v1 + 248);
    if (v27)
    {
      MEMORY[0x1E12BD130](v27, 0x1000C8052888210);
    }

    v28 = *(v1 + 296);
    if (v28)
    {
      MEMORY[0x1E12BD130](v28, 0x1000C8052888210);
    }

    v29 = *(v1 + 304);
    if (v29)
    {
      MEMORY[0x1E12BD130](v29, 0x1000C8052888210);
    }

    v30 = *(v1 + 312);
    if (v30)
    {
      MEMORY[0x1E12BD130](v30, 0x1000C8052888210);
    }

    v31 = *(v1 + 320);
    if (v31)
    {
      MEMORY[0x1E12BD130](v31, 0x1000C8052888210);
    }

    v32 = *(v1 + 352);
    if (v32)
    {
      MEMORY[0x1E12BD130](v32, 0x1000C8052888210);
    }

    v33 = *(v1 + 328);
    if (v33)
    {
      MEMORY[0x1E12BD130](v33, 0x1000C8052888210);
    }

    v34 = *(v1 + 336);
    if (v34)
    {
      MEMORY[0x1E12BD130](v34, 0x1000C8052888210);
    }

    v35 = *(v1 + 344);
    if (v35)
    {
      MEMORY[0x1E12BD130](v35, 0x1000C8052888210);
    }

    v36 = *(v1 + 200);
    if (v36)
    {
      MEMORY[0x1E12BD130](v36, 0x1000C8052888210);
      v37 = *(v1 + 208);
      if (v37)
      {
        MEMORY[0x1E12BD130](v37, 0x1000C8052888210);
      }
    }

    v38 = *(v1 + 216);
    if (v38)
    {
      MEMORY[0x1E12BD130](v38, 0x1000C8052888210);
      v39 = *(v1 + 224);
      if (v39)
      {
        MEMORY[0x1E12BD130](v39, 0x1000C8052888210);
      }
    }

    v40 = *(v1 + 232);
    if (v40)
    {
      if (*v40)
      {
        MEMORY[0x1E12BD130](*v40, 0x1000C8052888210);
        v40 = *(v1 + 232);
      }

      if (!v40[1] || (MEMORY[0x1E12BD130](v40[1], 0x1000C8052888210), *(v1 + 232)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 232) = 0;
    }

    v41 = *(v1 + 96);
    if (v41)
    {
      if (*v41)
      {
        MEMORY[0x1E12BD130](*v41, 0x1000C8052888210);
        v41 = *(v1 + 96);
      }

      if (!v41[1] || (MEMORY[0x1E12BD130](v41[1], 0x1000C8052888210), *(v1 + 96)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 96) = 0;
    }

    v42 = *(v1 + 104);
    if (v42)
    {
      if (*v42)
      {
        MEMORY[0x1E12BD130](*v42, 0x1000C8052888210);
        v42 = *(v1 + 104);
      }

      if (!v42[1] || (MEMORY[0x1E12BD130](v42[1], 0x1000C8052888210), *(v1 + 104)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 104) = 0;
    }

    v43 = *(v1 + 112);
    if (v43)
    {
      if (*v43)
      {
        MEMORY[0x1E12BD130](*v43, 0x1000C8052888210);
        v43 = *(v1 + 112);
      }

      if (!v43[1] || (MEMORY[0x1E12BD130](v43[1], 0x1000C8052888210), *(v1 + 112)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 112) = 0;
    }

    v44 = *(v1 + 272);
    if (v44)
    {
      MEMORY[0x1E12BD130](v44, 0x1000C8052888210);
    }

    v45 = *(v1 + 808);
    if (v45)
    {
      if (*v45)
      {
        MEMORY[0x1E12BD130](*v45, 0x1000C8052888210);
        v45 = *(v1 + 808);
      }

      if (!v45[1] || (MEMORY[0x1E12BD130](v45[1], 0x1000C8052888210), *(v1 + 808)))
      {
        MEMORY[0x1E12BD130]();
      }

      *(v1 + 808) = 0;
    }

    if (*(v1 + 784))
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = v47;
        v49 = *(*(v1 + 784) + 8 * v46);
        if (v49)
        {
          MEMORY[0x1E12BD130](v49, 0x1000C8052888210);
        }

        v47 = 0;
        v46 = 1;
      }

      while ((v48 & 1) != 0);
      v50 = *(v1 + 784);
      if (v50)
      {
        MEMORY[0x1E12BD130](v50, 0x80C80B8603338);
      }

      *(v1 + 784) = 0;
    }

    if (*(v1 + 792))
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = v52;
        v54 = *(*(v1 + 792) + 8 * v51);
        if (v54)
        {
          MEMORY[0x1E12BD130](v54, 0x1000C8052888210);
        }

        v52 = 0;
        v51 = 1;
      }

      while ((v53 & 1) != 0);
      v55 = *(v1 + 792);
      if (v55)
      {
        MEMORY[0x1E12BD130](v55, 0x80C80B8603338);
      }

      *(v1 + 792) = 0;
    }

    this = *(v1 + 800);
    if (this)
    {
      if (*this)
      {
        MEMORY[0x1E12BD130](*this, 0x1000C8052888210);
        this = *(v1 + 800);
      }

      if (!*(this + 8) || (MEMORY[0x1E12BD130](*(this + 8), 0x1000C8052888210), (this = *(v1 + 800)) != 0))
      {
        this = MEMORY[0x1E12BD130]();
      }

      *(v1 + 800) = 0;
    }
  }

  return this;
}

void CmhBEAM2NOpt::~CmhBEAM2NOpt(CmhBEAM2NOpt *this)
{
  CmhBEAM2NOpt::deallocate_memory(this);
  v2 = *(this + 103);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8015A9971DLL);
  }

  CmhMicCheck::deallocate_memory(this + 464);
}

uint64_t CmhBEAM2NOpt::initialize(CmhBEAM2NOpt *this, int a2, int a3, int a4, int a5, int a6)
{
  CmhBEAM2NOpt::deallocate_memory(this);
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 12) = a5;
  v12 = a5 * 0.001;
  *(this + 13) = v12;
  *(this + 2) = a6;
  *(this + 3) = a2;
  *(this + 3) = vadd_s32(vdup_n_s32(a3 / 2), 0x1FFFFFFFFLL);
  CmhBEAM2NOpt::deallocate_memory(this);
  if (*this)
  {
LABEL_2:
    CmhBEAM2NOpt::calc_cr_ci_vect(this, *(this + 25), *(this + 27));
    CmhBEAM2NOpt::calc_cr_ci_vect(this, *(this + 26), *(this + 28));
    *(this + 7) = 0x40A0000041C00000;
    v13 = *(this + 13);
    v14 = *(this + 3);
    v15 = *(this + 4);
    v16 = v15 / 2;
    if (v15 >= -1)
    {
      v17 = 0;
      v18 = v13 * 6.28318531 * v14 / (343 * v15);
      v19 = *(this + 29);
      v20 = *v19;
      v21 = v19[1];
      do
      {
        v22 = sinf(v18 * v17);
        v23 = v22 + v22;
        v24 = 1.0 / v23 >= 15.8489323 || v23 <= 0.032;
        v25 = 1.0 / v23;
        if (v24)
        {
          v25 = 15.849;
        }

        *(v20 + 4 * v17) = v25;
        *(v21 + 4 * v17++) = v25;
      }

      while (v16 + 1 != v17);
      v13 = *(this + 13);
    }

    v26 = vcvtmd_s64_f64(343.0 / (v13 + v13) * 0.9 / (v14 / v15));
    v27 = *(this + 6);
    v28 = v26 & ~(v26 >> 31);
    v29 = v27 - 1;
    if (v27 > v28)
    {
      v29 = v28;
    }

    *(this + 64) = v29;
    *(this + 8) = 24000;
    if (v29 <= v16)
    {
      v30 = *(this + 29);
      v32 = *v30;
      v31 = v30[1];
      v33 = v16 - v29 + 1;
      v34 = (v31 + 4 * v29);
      v35 = (v32 + 4 * v29);
      do
      {
        *v35 = fminf(*v35, 1.7783);
        ++v35;
        *v34 = fminf(*v34, 1.7783);
        ++v34;
        --v33;
      }

      while (v33);
    }

    v36 = *(this + 7);
    if (v36 >= 1)
    {
      v37 = *(this + 29);
      v38 = *(this + 12);
      v39 = *v37;
      v40 = v37[1];
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *(this + 7);
      do
      {
        v44 = *v39++;
        *v41++ = v44;
        v45 = *v40++;
        *v42++ = v45;
        --v43;
      }

      while (v43);
      v46 = *(this + 13);
      v47 = 4 * v36;
      memset_pattern16(*v46, &unk_1DE095DF0, 4 * v36);
      memset_pattern16(v46[1], &unk_1DE095DF0, v47);
      v48 = *(this + 14);
      memset_pattern16(*v48, &unk_1DE095DF0, v47);
      memset_pattern16(v48[1], &unk_1DE095DF0, v47);
    }

    if (*(this + 2) <= 0)
    {
      v78 = (v14 / *(this + 5));
    }

    else
    {
      v49 = 0;
      v50 = *(this + 51);
      do
      {
        *(v50 + 136 * v49 + 64) = 0x3F0000003F000000;
        v51 = *(this + 4);
        v52 = v51 / 2;
        if (v51 < 2)
        {
          v76 = *(v50 + 136 * v49 + 48);
        }

        else
        {
          v53 = 32767.0 / v51 * 0.0000305175781;
          *&v53 = v53;
          v54 = (v52 - 1);
          v55 = (v54 + 4) & 0x1FFFFFFFCLL;
          v56 = vdupq_n_s64(v54);
          v57 = (*(v50 + 136 * v49 + 16) + 8);
          v58 = 3;
          v59 = v55;
          do
          {
            v60 = vdupq_n_s64(v58 - 3);
            v61 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_1DE095160)));
            if (vuzp1_s16(v61, *&v53).u8[0])
            {
              *(v57 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v61, *&v53).i8[2])
            {
              *(v57 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_1DE095150)))).i32[1])
            {
              *v57 = LODWORD(v53);
              v57[1] = LODWORD(v53);
            }

            v58 += 4;
            v57 += 4;
            v59 -= 4;
          }

          while (v59);
          v62 = (*(v50 + 136 * v49 + 24) + 8);
          v63 = 3;
          v64 = (v54 + 4) & 0x1FFFFFFFCLL;
          do
          {
            v65 = vdupq_n_s64(v63 - 3);
            v66 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v65, xmmword_1DE095160)));
            if (vuzp1_s16(v66, *&v53).u8[0])
            {
              *(v62 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v66, *&v53).i8[2])
            {
              *(v62 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v65, xmmword_1DE095150)))).i32[1])
            {
              *v62 = LODWORD(v53);
              v62[1] = LODWORD(v53);
            }

            v63 += 4;
            v62 += 4;
            v64 -= 4;
          }

          while (v64);
          v67 = (*(v50 + 136 * v49 + 32) + 8);
          v68 = 3;
          v69 = (v54 + 4) & 0x1FFFFFFFCLL;
          do
          {
            v70 = vdupq_n_s64(v68 - 3);
            v71 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v70, xmmword_1DE095160)));
            if (vuzp1_s16(v71, *&v53).u8[0])
            {
              *(v67 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v71, *&v53).i8[2])
            {
              *(v67 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v70, xmmword_1DE095150)))).i32[1])
            {
              *v67 = LODWORD(v53);
              v67[1] = LODWORD(v53);
            }

            v68 += 4;
            v67 += 4;
            v69 -= 4;
          }

          while (v69);
          v72 = (*(v50 + 136 * v49 + 40) + 8);
          v73 = 3;
          do
          {
            v74 = vdupq_n_s64(v73 - 3);
            v75 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v74, xmmword_1DE095160)));
            if (vuzp1_s16(v75, *&v53).u8[0])
            {
              *(v72 - 2) = LODWORD(v53);
            }

            if (vuzp1_s16(v75, *&v53).i8[2])
            {
              *(v72 - 1) = LODWORD(v53);
            }

            if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v74, xmmword_1DE095150)))).i32[1])
            {
              *v72 = LODWORD(v53);
              v72[1] = LODWORD(v53);
            }

            v73 += 4;
            v72 += 4;
            v55 -= 4;
          }

          while (v55);
          v76 = *(v50 + 136 * v49 + 48);
          memset_pattern16(v76, &unk_1DE09EA60, 4 * v54 + 4);
        }

        *v76 = 0;
        bzero(*(v50 + 136 * v49 + 56), 4 * v52);
        v50 = *(this + 51);
        v77 = v50 + 136 * v49;
        *(v77 + 76) = 1048600;
        *(v77 + 80) = xmmword_1DE09CC00;
        *(v77 + 96) = 1065353216;
        v78 = (*(this + 3) / *(this + 5));
        v79 = exp(-1.0 / (v78 * 0.3));
        *&v79 = v79;
        *(v77 + 100) = vdup_lane_s32(*&v79, 0);
        ++v49;
      }

      while (v49 < *(this + 2));
    }

    v96 = exp(-1.0 / (v78 * 0.123745791));
    *(this + 16) = v96;
    CmhBEAM2NOpt::calc_wng_beta_bound(this, *(this + 70));
    v98 = *(this + 6);
    *(this + 93) = v98;
    *(this + 364) = 0x3F0000003E800000;
    if (v98 >= 1)
    {
      memset_pattern16(*(this + 40), &unk_1DE095DF0, 4 * v98);
    }

    v99 = *(this + 7);
    v100 = *(this + 3);
    v101 = *(this + 4);
    if (v99 <= 0)
    {
      *v97.i32 = v101;
    }

    else
    {
      *v97.i32 = v101;
      v102 = vdupq_n_s64(v99 - 1);
      v103 = vdupq_n_s32(v100);
      v104 = vdupq_lane_s32(v97, 0);
      v105 = (v99 + 3) & 0xFFFFFFFC;
      v106 = xmmword_1DE095150;
      v107 = xmmword_1DE095160;
      v108 = xmmword_1DE096230;
      v109 = (*(this + 43) + 8);
      v110 = vdupq_n_s32(0xBA15CBEC);
      v111 = vdupq_n_s32(0x3F524925u);
      __asm { FMOV            V17.4S, #0.75 }

      v117 = vdupq_n_s64(4uLL);
      v118.i64[0] = 0x400000004;
      v118.i64[1] = 0x400000004;
      do
      {
        v119 = vmovn_s64(vcgeq_u64(v102, v107));
        v120 = vminnmq_f32(vmlaq_f32(v111, v110, vdivq_f32(vcvtq_f32_s32(vmulq_s32(v103, v108)), v104)), _Q17);
        if (vuzp1_s16(v119, v97).u8[0])
        {
          *(v109 - 2) = fmaxf(v120.f32[0], 0.25);
        }

        if (vuzp1_s16(v119, v97).i8[2])
        {
          *(v109 - 1) = fmaxf(v120.f32[1], 0.25);
        }

        if (vuzp1_s16(v97, vmovn_s64(vcgeq_u64(v102, *&v106))).i32[1])
        {
          *v109 = fmaxf(v120.f32[2], 0.25);
          v109[1] = fmaxf(v120.f32[3], 0.25);
        }

        v106 = vaddq_s64(v106, v117);
        v107 = vaddq_s64(v107, v117);
        v108 = vaddq_s32(v108, v118);
        v109 += 4;
        v105 -= 4;
      }

      while (v105);
    }

    CmhBEAM2NOpt::interpolateFrequencyVector(&model_env_tc_vector_attack_sec, 0x41, *(this + 42), 125.0, v99, v100 / *v97.i32);
    v121 = *(this + 7);
    v122 = *(this + 42);
    if (v121 >= 1)
    {
      v123 = *(this + 41);
      v124 = *(this + 42);
      v125 = *(this + 7);
      do
      {
        v126 = 0.0;
        if (*v124 > 0.0)
        {
          v126 = exp(-1.0 / (*v124 * (*(this + 3) / *(this + 5))));
        }

        *v123 = v126;
        v123 += 2;
        ++v124;
        --v125;
      }

      while (v125);
    }

    CmhBEAM2NOpt::interpolateFrequencyVector(&model_env_tc_vector_decay_sec, 0x41, v122, 125.0, v121, *(this + 3) / *(this + 4));
    v127 = *(this + 7);
    if (v127 >= 1)
    {
      v128 = *(this + 42);
      v129 = (*(this + 41) + 4);
      do
      {
        v130 = 0.0;
        if (*v128 > 0.0)
        {
          v130 = exp(-1.0 / (*v128 * (*(this + 3) / *(this + 5))));
        }

        *v129 = v130;
        v129 += 2;
        ++v128;
        --v127;
      }

      while (v127);
    }

    CmhBEAM2NOpt::loadRVSSSuppressionLimits(this);
    v131 = *(this + 3);
    v132 = *(this + 4);
    *(this + 35) = (v131 / 2);
    *(this + 96) = *(this + 7);
    *v133.i32 = v131;
    v134 = *(this + 5);
    v263 = v131;
    v135 = vmul_n_f32(vdiv_f32(0x441C4000443B8000, vdup_lane_s32(v133, 0)), v132);
    __sz = v132;
    v136 = vmvn_s8(vcgez_f32(v135));
    v137.i64[0] = v136.i32[0];
    v137.i64[1] = v136.i32[1];
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v140 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v137, _Q3, _Q2), vcvtq_f64_f32(v135))));
    *(this + 104) = v140;
    *v136.i32 = (2000.0 / v131) * v132;
    v141 = *v136.i32;
    if (*v136.i32 >= 0.0)
    {
      v142 = 0.5;
    }

    else
    {
      v142 = -0.5;
    }

    *(this + 210) = (v142 + v141) - v140.i32[1] + 1;
    *(this + 211) = v132 / 2 - 1;
    v143 = (v131 / v134);
    v144 = exp(-1.0 / (v143 * 0.123745791));
    *(this + 212) = v144;
    v145 = (200.0 / v263) * __sz;
    v146 = v145;
    if (v145 >= 0.0)
    {
      v147 = 0.5;
    }

    else
    {
      v147 = -0.5;
    }

    *(this + 213) = (v147 + v146);
    v148 = *(this + 103);
    v149 = exp(-1.0 / (v143 * 0.01));
    v150 = exp(-1.0 / (v143 * 0.1));
    v151 = exp(-1.0 / (v143 * 0.03));
    v152 = exp(-1.0 / (v143 + v143));
    *v148 = 0;
    *(v148 + 4) = v149;
    *(v148 + 8) = v150;
    *(v148 + 12) = xmmword_1DE09CC10;
    *(v148 + 28) = 0;
    *(v148 + 36) = v149;
    *(v148 + 40) = v151;
    v153 = vdup_n_s32(0x39400000u);
    *(v148 + 48) = v153;
    *(v148 + 56) = v152;
    *(v148 + 60) = xmmword_1DE09CC20;
    *(v148 + 76) = 0;
    *(v148 + 80) = v149;
    *(v148 + 84) = v150;
    *(v148 + 88) = xmmword_1DE09CC10;
    *(v148 + 104) = 0;
    *(v148 + 112) = v149;
    *(v148 + 116) = v151;
    *(v148 + 124) = v153;
    *(v148 + 132) = v152;
    *(v148 + 136) = xmmword_1DE09CC20;
    *(v148 + 44) = 0;
    *(v148 + 120) = 1;
    CmhBEAM2NOpt::interpolateFrequencyVector(&sns_gain_table, 0x3F, *(this + 31), 125.0, *(this + 6), *(this + 3) / *(this + 4));
    v154 = *(this + 2);
    v155 = *(this + 51);
    if (v154 >= 1)
    {
      v156 = 0;
      v157 = *(this + 6);
      do
      {
        v158 = (v155 + 136 * v156);
        *(v158 + 108) = 0x3F00000000000000;
        if (v157 >= 1)
        {
          v159 = 0;
          v160 = v158[15];
          do
          {
            *(v160 + 4 * v159++) = 1065353216;
          }

          while (v157 > v159);
        }

        v158[16] = 0x3F8000003DE38E39;
        ++v156;
      }

      while (v156 != v154);
    }

    *(this + 60) = 1;
    *(this + 260) = 0;
    *(this + 94) = 0;
    *(this + 396) = 0;
    *(this + 101) = *(v155 + 108);
    v161 = *(this + 5);
    v162 = *(this + 3);
    v163 = *(this + 4) / 2 + 1;

    return CmhMicCheck::initialize((this + 464), v162, v161, v163, this + 25, this + 27);
  }

  else
  {
    *this = 1;
    LODWORD(v80) = *(this + 2);
    if (is_mul_ok(v80, 0x88uLL))
    {
      v81 = 136 * v80;
    }

    else
    {
      v81 = -1;
    }

    v82 = operator new[](v81, MEMORY[0x1E69E5398]);
    if (v82)
    {
      if (v80)
      {
        v83 = 136 * v80;
        v84 = v82 + 120;
        do
        {
          *v84 = 0;
          *(v84 - 13) = 0uLL;
          *(v84 - 11) = 0uLL;
          *(v84 - 9) = 0uLL;
          v84 += 17;
          v83 -= 136;
        }

        while (v83);
      }

      *(this + 51) = v82;
      v85 = *(this + 11);
      v86 = 8 * v85;
      if (v85 < 0)
      {
        v87 = -1;
      }

      else
      {
        v87 = 8 * v85;
      }

      v88 = operator new[](v87, MEMORY[0x1E69E5398]);
      *(this + 20) = v88;
      if (v88)
      {
        v89 = v88;
        bzero(v88, 8 * v85);
        v90 = *(this + 4);
        if (v85 <= 0)
        {
          v92 = 4 * v90;
LABEL_123:
          v165 = 0;
          if (v90 < 0)
          {
            v166 = -1;
          }

          else
          {
            v166 = v92;
          }

          v264 = v90 / 2;
          v167 = (v90 + (v90 >> 31)) >> 1;
          v168 = 1;
          v169 = MEMORY[0x1E69E5398];
          while (1)
          {
            v170 = v168;
            v171 = operator new[](v166, v169);
            v172 = (this + 16 * v165 + 168);
            *v172 = v171;
            if (!v171)
            {
              break;
            }

            v172[1] = &v171[4 * v167];
            bzero(v171, v92);
            v168 = 0;
            v165 = 1;
            if ((v170 & 1) == 0)
            {
              if (v80 < 1)
              {
LABEL_159:
                if (v90 < -1)
                {
                  v196 = -1;
                }

                else
                {
                  v196 = 4 * v167;
                }

                v197 = operator new[](v196, MEMORY[0x1E69E5398]);
                *(this + 52) = v197;
                if (v197)
                {
                  v198 = operator new[](v196, MEMORY[0x1E69E5398]);
                  *(this + 53) = v198;
                  if (v198)
                  {
                    v199 = operator new[](v196, MEMORY[0x1E69E5398]);
                    *(this + 54) = v199;
                    if (v199)
                    {
                      v200 = operator new[](v196, MEMORY[0x1E69E5398]);
                      *(this + 55) = v200;
                      if (v200)
                      {
                        v201 = operator new[](v196, MEMORY[0x1E69E5398]);
                        *(this + 56) = v201;
                        if (v201)
                        {
                          v202 = operator new[](v196, MEMORY[0x1E69E5398]);
                          *(this + 57) = v202;
                          if (v202)
                          {
                            v203 = *(this + 6);
                            v204 = v203 < 0 ? -1 : 4 * v203;
                            v205 = operator new[](v204, MEMORY[0x1E69E5398]);
                            *(this + 31) = v205;
                            if (v205)
                            {
                              if (v203 < 1)
                              {
                                v210 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 37) = v210;
                                if (!v210)
                                {
                                  return 4294967294;
                                }

                                v211 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 38) = v211;
                                if (!v211)
                                {
                                  return 4294967294;
                                }

                                v212 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 39) = v212;
                                if (!v212)
                                {
                                  return 4294967294;
                                }

                                v213 = operator new[](v204, MEMORY[0x1E69E5398]);
                                *(this + 40) = v213;
                                if (!v213)
                                {
                                  return 4294967294;
                                }
                              }

                              else
                              {
                                bzero(v205, 4 * v203);
                                v206 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 37) = v206;
                                if (!v206)
                                {
                                  return 4294967294;
                                }

                                bzero(v206, 4 * v203);
                                v207 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 38) = v207;
                                if (!v207)
                                {
                                  return 4294967294;
                                }

                                bzero(v207, 4 * v203);
                                v208 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 39) = v208;
                                if (!v208)
                                {
                                  return 4294967294;
                                }

                                bzero(v208, 4 * v203);
                                v209 = operator new[](4 * v203, MEMORY[0x1E69E5398]);
                                *(this + 40) = v209;
                                if (!v209)
                                {
                                  return 4294967294;
                                }

                                bzero(v209, 4 * v203);
                              }

                              v214 = *(this + 7);
                              if (v214 < 0)
                              {
                                v215 = -1;
                              }

                              else
                              {
                                v215 = 8 * v214;
                              }

                              v216 = operator new[](v215, MEMORY[0x1E69E5398]);
                              *(this + 41) = v216;
                              if (v216)
                              {
                                v217 = v214;
                                if (v214 >= 1)
                                {
                                  bzero(v216, 4 * (2 * v214));
                                }

                                v218 = v214 < 0 ? -1 : 4 * v214;
                                __sza = v218;
                                v219 = operator new[](v218, MEMORY[0x1E69E5398]);
                                *(this + 42) = v219;
                                if (v219)
                                {
                                  if (v214 < 1)
                                  {
                                    v221 = operator new[](__sza, MEMORY[0x1E69E5398]);
                                    *(this + 44) = v221;
                                    if (!v221)
                                    {
                                      return 4294967294;
                                    }
                                  }

                                  else
                                  {
                                    bzero(v219, 4 * v214);
                                    v220 = operator new[](4 * v214, MEMORY[0x1E69E5398]);
                                    *(this + 44) = v220;
                                    if (!v220)
                                    {
                                      return 4294967294;
                                    }

                                    bzero(v220, 4 * v214);
                                  }

                                  __len = v264 + 1;
                                  if (v90 < -3)
                                  {
                                    v222 = -1;
                                  }

                                  else
                                  {
                                    v222 = 4 * __len;
                                  }

                                  v260 = v222;
                                  v223 = operator new[](v222, MEMORY[0x1E69E5398]);
                                  *(this + 43) = v223;
                                  if (v223)
                                  {
                                    if (v90 >= -1)
                                    {
                                      bzero(v223, 4 * (v264 + 1));
                                    }

                                    v224 = operator new[](v260, MEMORY[0x1E69E5398]);
                                    *(this + 25) = v224;
                                    if (v224)
                                    {
                                      v225 = v224;
                                      v226 = operator new[](v260, MEMORY[0x1E69E5398]);
                                      *(this + 26) = v226;
                                      if (v226)
                                      {
                                        if (v90 >= -1)
                                        {
                                          v227 = v226;
                                          bzero(v225, 4 * (v264 + 1));
                                          bzero(v227, 4 * (v264 + 1));
                                        }

                                        v228 = operator new[](v260, MEMORY[0x1E69E5398]);
                                        *(this + 27) = v228;
                                        if (v228)
                                        {
                                          v229 = v228;
                                          v230 = operator new[](v260, MEMORY[0x1E69E5398]);
                                          *(this + 28) = v230;
                                          if (v230)
                                          {
                                            v257 = 4 * __len;
                                            if (v90 >= -1)
                                            {
                                              v231 = v230;
                                              bzero(v229, v257);
                                              bzero(v231, v257);
                                            }

                                            v232 = MEMORY[0x1E69E5398];
                                            *(this + 29) = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                            *(this + 12) = operator new[](0x10uLL, v232);
                                            *(this + 13) = operator new[](0x10uLL, v232);
                                            v233 = operator new[](0x10uLL, v232);
                                            v234 = 0;
                                            *(this + 14) = v233;
                                            __lena = 4 * v217;
                                            v235 = 1;
                                            while (1)
                                            {
                                              v236 = v235;
                                              *(*(this + 29) + 8 * v234) = operator new[](v260, MEMORY[0x1E69E5398]);
                                              v237 = *(*(this + 29) + 8 * v234);
                                              if (!v237)
                                              {
                                                break;
                                              }

                                              if (v90 >= -1)
                                              {
                                                bzero(v237, v257);
                                              }

                                              *(*(this + 12) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v238 = *(*(this + 12) + 8 * v234);
                                              if (!v238)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v238, __lena);
                                              }

                                              *(*(this + 13) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v239 = *(*(this + 13) + 8 * v234);
                                              if (!v239)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v239, __lena);
                                              }

                                              *(*(this + 14) + 8 * v234) = operator new[](__sza, MEMORY[0x1E69E5398]);
                                              v240 = *(*(this + 14) + 8 * v234);
                                              if (!v240)
                                              {
                                                break;
                                              }

                                              if (v217 >= 1)
                                              {
                                                bzero(v240, __lena);
                                              }

                                              v235 = 0;
                                              v234 = 1;
                                              if ((v236 & 1) == 0)
                                              {
                                                v241 = operator new[](v204, MEMORY[0x1E69E5398]);
                                                *(this + 34) = v241;
                                                if (v241)
                                                {
                                                  if (v203 >= 1)
                                                  {
                                                    bzero(v241, 4 * v203);
                                                  }

                                                  v242 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                  *(this + 98) = v242;
                                                  if (v242)
                                                  {
                                                    *v242 = 0;
                                                    v242[1] = 0;
                                                    v243 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                    *(this + 99) = v243;
                                                    if (v243)
                                                    {
                                                      *v243 = 0;
                                                      v243[1] = 0;
                                                      if (v80 < 1)
                                                      {
LABEL_241:
                                                        v249 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                        *(this + 101) = v249;
                                                        if (v249)
                                                        {
                                                          v250 = operator new[](0x10uLL, MEMORY[0x1E69E5398]);
                                                          *(this + 100) = v250;
                                                          if (v250)
                                                          {
                                                            v251 = 0;
                                                            v252 = 1;
                                                            v253 = MEMORY[0x1E69E5398];
                                                            while (1)
                                                            {
                                                              v254 = v252;
                                                              *(*(this + 101) + 8 * v251) = operator new[](__sza, v253);
                                                              v255 = *(*(this + 101) + 8 * v251);
                                                              if (!v255)
                                                              {
                                                                break;
                                                              }

                                                              if (v217 >= 1)
                                                              {
                                                                memset_pattern16(v255, &unk_1DE095DF0, __lena);
                                                              }

                                                              *(*(this + 100) + 8 * v251) = operator new[](v196, v253);
                                                              v256 = *(*(this + 100) + 8 * v251);
                                                              if (!v256)
                                                              {
                                                                break;
                                                              }

                                                              if (v90 >= 2)
                                                              {
                                                                bzero(v256, (4 * v264));
                                                              }

                                                              v252 = 0;
                                                              v251 = 1;
                                                              if ((v254 & 1) == 0)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v244 = 0;
                                                        if (v90 < 0)
                                                        {
                                                          v245 = -1;
                                                        }

                                                        else
                                                        {
                                                          v245 = 4 * v90;
                                                        }

                                                        v246 = MEMORY[0x1E69E5398];
                                                        while (1)
                                                        {
                                                          *(*(this + 98) + v244) = operator new[](v245, v246);
                                                          v247 = *(*(this + 98) + v244);
                                                          if (!v247)
                                                          {
                                                            break;
                                                          }

                                                          if (v90 >= 1)
                                                          {
                                                            bzero(v247, 4 * v90);
                                                          }

                                                          *(*(this + 99) + v244) = operator new[](v245, v246);
                                                          v248 = *(*(this + 99) + v244);
                                                          if (!v248)
                                                          {
                                                            break;
                                                          }

                                                          if (v90 >= 1)
                                                          {
                                                            bzero(v248, 4 * v90);
                                                          }

                                                          v244 += 8;
                                                          if (8 * v80 == v244)
                                                          {
                                                            goto LABEL_241;
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                return 4294967294;
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
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v173 = 0;
                v174 = 120;
                v175 = MEMORY[0x1E69E5398];
                while (1)
                {
                  v176 = *(this + 4);
                  v177 = v176 < 0 ? -1 : 4 * v176;
                  v178 = operator new[](v177, v175);
                  v179 = *(this + 51) + v174;
                  *(v179 - 120) = v178;
                  if (!v178)
                  {
                    break;
                  }

                  v180 = v176 / 2;
                  *(v179 - 112) = &v178[4 * (v176 / 2)];
                  bzero(v178, 4 * v176);
                  v181 = v176 < -1 ? -1 : 4 * v180;
                  *(v179 - 104) = operator new[](v181, v175);
                  v182 = *(this + 51) + v174;
                  if (!*(v182 - 104))
                  {
                    break;
                  }

                  *(v182 - 96) = operator new[](v181, v175);
                  v183 = *(this + 51);
                  v184 = *(v183 + v174 - 96);
                  if (!v184)
                  {
                    break;
                  }

                  if (v176 >= 2)
                  {
                    bzero(*(v183 + v174 - 104), (4 * v180));
                    v175 = MEMORY[0x1E69E5398];
                    bzero(v184, (4 * v180));
                  }

                  *(v183 + v174 - 88) = operator new[](v181, v175);
                  v185 = *(this + 51) + v174;
                  if (!*(v185 - 88))
                  {
                    break;
                  }

                  *(v185 - 80) = operator new[](v181, v175);
                  v186 = *(this + 51);
                  v187 = *(v186 + v174 - 80);
                  if (!v187)
                  {
                    break;
                  }

                  if (v176 >= 2)
                  {
                    bzero(*(v186 + v174 - 88), (4 * v180));
                    v175 = MEMORY[0x1E69E5398];
                    bzero(v187, (4 * v180));
                  }

                  *(v186 + v174 - 72) = operator new[](v181, v175);
                  v188 = *(*(this + 51) + v174 - 72);
                  if (!v188)
                  {
                    break;
                  }

                  bzero(v188, 4 * v180);
                  v189 = *(this + 4);
                  v190 = 4 * (v189 / 2);
                  v191 = v189 < -1 ? -1 : 4 * (v189 / 2);
                  *(*(this + 51) + v174 - 64) = operator new[](v191, v175);
                  v192 = *(*(this + 51) + v174 - 64);
                  if (!v192)
                  {
                    break;
                  }

                  bzero(v192, v190);
                  v193 = *(this + 6);
                  v194 = v193 < 0 ? -1 : 4 * v193;
                  v195 = operator new[](v194, v175);
                  *(*(this + 51) + v174) = v195;
                  if (!v195)
                  {
                    break;
                  }

                  if (v193 >= 1)
                  {
                    bzero(v195, 4 * v193);
                  }

                  ++v173;
                  v80 = *(this + 2);
                  v174 += 136;
                  if (v173 >= v80)
                  {
                    LODWORD(v90) = *(this + 4);
                    v264 = v90 / 2;
                    v167 = (v90 + (v90 >> 31)) >> 1;
                    goto LABEL_159;
                  }
                }
              }

              return 4294967294;
            }
          }
        }

        else
        {
          v91 = 0;
          v92 = 4 * v90;
          if (v90 < 0)
          {
            v93 = -1;
          }

          else
          {
            v93 = 4 * v90;
          }

          v94 = MEMORY[0x1E69E5398];
          while (1)
          {
            *&v89[v91] = operator new[](v93, v94);
            v89 = *(this + 20);
            v95 = *&v89[v91];
            if (!v95)
            {
              break;
            }

            if (v90 >= 1)
            {
              bzero(v95, 4 * v90);
            }

            v91 += 8;
            if (v86 == v91)
            {
              goto LABEL_123;
            }
          }
        }
      }
    }

    else
    {
      *(this + 51) = 0;
    }

    return 4294967294;
  }
}