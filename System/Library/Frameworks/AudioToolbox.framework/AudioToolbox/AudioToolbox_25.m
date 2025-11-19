void sub_1DDD36B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(v2 + 624);
  v6 = *v4;
  *v4 = 0;
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](va);
  ausdk::AUBase::~AUBase(v2);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS1>::Factory()
{
  result = malloc_type_malloc(0x328uLL, 0x10F3040ADEB5B0CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS1>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS1>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBSS1>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F591EE10;
  *(v3 + 528) = 1;
  *(v3 + 133) = 1;
  *(v3 + 548) = 0;
  *(v3 + 652) = 0x3F80000000000000;
  *(v3 + 67) = 0;
  *(v3 + 544) = 0;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 633) = 0u;
  *(v3 + 83) = 0;
  *(v3 + 184) = 0;
  ausdk::AUBase::CreateElements(v3);
  a1[376] = 1;
  (*(*a1 + 512))(a1, 192);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0 || (ausdk::AUElement::SetParameter(v4, 0, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 1u, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 2u, 1.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 3u, 0.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 4u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 5u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 6u, 40.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v18, 7u, 0.0);
  v28 = 0x40CF400000000000;
  v29 = xmmword_1DE09BD50;
  v30 = xmmword_1DE09C4E0;
  v25 = 0x40CF400000000000;
  v26 = xmmword_1DE09BD50;
  v27 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v28), (v21 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v21 + 56))(v21, &v28), (v22 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v22 + 56))(v22, &v28), (v23 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v23 + 56))(v23, &v25);
  AUBSS1::UpdateState(a1);
  return a1;
}

void sub_1DDD36F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = (v14 + 624);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = (v14 + 600);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100]((v14 + 592), 0);
  v16 = *(v14 + 584);
  *(v14 + 584) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&a14);
  ausdk::AUBase::~AUBase(v14);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressorV4>::Factory()
{
  result = malloc_type_malloc(0x268uLL, 0x10F3040608F88C4uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressorV4>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressorV4>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressorV4>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 4, 4);
  *v3 = &unk_1F5929640;
  *(v3 + 528) = 0;
  *(v3 + 68) = 0;
  *(v3 + 532) = 0;
  *(v3 + 270) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 23), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 1u, -24.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 2u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 9u, 40.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 5u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 6u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 7u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 8u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 0xAu, 40.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 0, 2.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 0xBu, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xCu, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xDu, -24.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 3u, 80.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 4u, 2.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xEu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xFu, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x12u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x13u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x14u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x15u, 0.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v51 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v50, 0x16u, 0.0);
  a1[376] = 1;
  (*(*a1 + 512))(a1, 480);
  v64 = 0x40CF400000000000;
  v65 = xmmword_1DE09C190;
  v66 = xmmword_1DE09C600;
  v61 = 0x40CF400000000000;
  v63 = xmmword_1DE09BD60;
  v62 = xmmword_1DE09C7F0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v64), (v53 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v53 + 56))(v53, &v64), (v54 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v54 + 56))(v54, &v61), (v55 = ausdk::AUScope::GetElement((a1 + 80), 3u)) == 0) || ((*(*v55 + 56))(v55, &v61), (v56 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v56 + 56))(v56, &v64), (v57 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0) || ((*(*v57 + 56))(v57, &v61), (v58 = ausdk::AUScope::GetElement((a1 + 128), 2u)) == 0) || ((*(*v58 + 56))(v58, &v61), (v59 = ausdk::AUScope::GetElement((a1 + 128), 3u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v59 + 56))(v59, &v61);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressor>::Factory()
{
  result = malloc_type_malloc(0x268uLL, 0x10F3040608F88C4uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressor>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressor>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMagnitudeDifferenceNoiseSuppressor>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 3);
  *v3 = &unk_1F5936700;
  *(v3 + 528) = 0;
  *(v3 + 68) = 0;
  *(v3 + 532) = 0;
  *(v3 + 270) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 23), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 1u, -6.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 2u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 9u, 40.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 5u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 6u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 7u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 8u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 0xAu, 40.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 0, 2.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 0xBu, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xCu, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xDu, -24.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 3u, 80.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 4u, 2.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xEu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xFu, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x12u, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x13u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x14u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x15u, 0.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v51 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v50, 0x16u, 0.0);
  a1[376] = 1;
  (*(*a1 + 512))(a1, 480);
  v62 = 0x40D5888000000000;
  v63 = xmmword_1DE09C190;
  v64 = xmmword_1DE09C600;
  v59 = 0x40D5888000000000;
  v61 = xmmword_1DE09BD60;
  v60 = xmmword_1DE09C7F0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v62), (v53 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v53 + 56))(v53, &v62), (v54 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v54 + 56))(v54, &v59), (v55 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v55 + 56))(v55, &v62), (v56 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0) || ((*(*v56 + 56))(v56, &v59), (v57 = ausdk::AUScope::GetElement((a1 + 128), 2u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v57 + 56))(v57, &v59);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSelectorV2>::Factory()
{
  result = malloc_type_malloc(0x5D0uLL, 0x10F3040C198DD41uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSelectorV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSelectorV2>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMicSelectorV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 6, 1);
  *v3 = &unk_1F59212B8;
  *(v3 + 528) = 0;
  *(v3 + 121) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 1192) = 0u;
  *(v3 + 302) = 0;
  *(v3 + 76) = 0u;
  *(v3 + 308) = 0;
  *(v3 + 1240) = 0u;
  *(v3 + 314) = 0;
  *(v3 + 79) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 353) = 0;
  *(v3 + 1416) = 0;
  *(v3 + 1068) = 0u;
  *(v3 + 66) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 1132) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 68) = 0u;
  ausdk::AUBase::CreateElements(v3);
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 128);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 66), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 1u, 0.25), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 2u, 0.6), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 3u, 2.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 4u, 6.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 5u, 15.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 6u, 4.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 7u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 0x40u, -120.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 8u, 7.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 9u, 20.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xAu, 5.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xBu, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0x41u, -140.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xCu, 7.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xDu, 20.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0xEu, 4.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0xFu, -10.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x3Eu, -35.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x10u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x11u, 0.95), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x12u, 8.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x13u, 8.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x14u, 20.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x15u, 3.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x16u, 4.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x17u, 4.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x18u, 15.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x19u, 0.5), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x1Au, 0.5), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Bu, 0.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Eu, 0.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Fu, 0.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x20u, 0.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x21u, 0.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x22u, 0.0), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x23u, 0.0), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v81 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v80, 0x24u, 0.0), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v83 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v82, 0x25u, 0.0), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v85 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v84, 0x26u, 0.0), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v87 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v86, 0x27u, 0.0), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v89 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v88, 0x28u, 0.0), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v91 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v90, 0x29u, 0.0), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v93 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v92, 0x2Au, 0.0), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v95 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v94, 0x2Bu, 0.0), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v97 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v96, 0x30u, 0.0), v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v99 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v98, 0x31u, 0.0), v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v101 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v100, 0x2Cu, 0.0), v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v103 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v102, 0x2Du, -83.0), v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v105 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v104, 0x2Eu, -65.0), v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v107 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v106, 0x2Fu, -90.0), v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v109 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v108, 0x32u, 0.0), v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v111 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v110, 0x33u, 0.0), v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v113 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v112, 0x34u, 0.0), v114 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v115 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v114, 0x35u, 0.6), v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v117 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v116, 0x36u, 1.25), v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v119 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v118, 0x37u, 4.0), v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v121 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v120, 0x38u, 1.0), v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v123 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v122, 0x39u, 0.0), v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v125 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v124, 0x3Au, 0.0), v126 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v127 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v126, 0x1Cu, 2.0), v128 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v129 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v128, 0x3Bu, 0.0), v130 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v131 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v130, 0x3Cu, 0.0), v132 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v133 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v132, 0x3Du, 0.0);
  v134 = 0;
  *inDesc = 0x40BF400000000000;
  *&inDesc[8] = xmmword_1DE09BD50;
  v146 = xmmword_1DE09BD60;
  while (1)
  {
    v135 = *(a1 + 120);
    if (v135)
    {
      LODWORD(v136) = (*(*v135 + 24))(v135);
    }

    else
    {
      v136 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v134 >= v136)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v134);
    if (!Element)
    {
LABEL_87:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, inDesc);
    ++v134;
  }

  for (i = 0; ; ++i)
  {
    v139 = *(a1 + 168);
    if (v139)
    {
      LODWORD(v140) = (*(*v139 + 24))(v139);
    }

    else
    {
      v140 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v140)
    {
      break;
    }

    v141 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v141)
    {
      goto LABEL_87;
    }

    (*(*v141 + 56))(v141, inDesc);
  }

  inDesc[13] = 0;
  *&inDesc[14] = 0;
  *&inDesc[16] = 0;
  strcpy(inDesc, "xfuaqebnlppa");
  Next = AudioComponentFindNext(0, inDesc);
  v143 = -24;
  while (!AudioComponentInstanceNew(Next, (a1 + v143 + 560)) && !AudioComponentInstanceNew(Next, (a1 + v143 + 776)))
  {
    v143 += 8;
    if (!v143)
    {
      AudioComponentInstanceNew(Next, (a1 + 968));
      return a1;
    }
  }

  return a1;
}

void sub_1DDD386F0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 1264);
  if (v4)
  {
    MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
  }

  v5 = 0;
  v6 = (v1 + 1152);
  *(v1 + 1264) = 0;
  v7 = v1 + 1240;
  while (1)
  {
    v8 = *(v7 + v5);
    if (v8)
    {
      MEMORY[0x1E12BD130](v8, 0x1000C8052888210);
    }

    *(v7 + v5) = 0;
    v5 -= 24;
    if (v5 == -72)
    {
      if (*v6)
      {
        (*(ausdk::BufferAllocator::instance(void)::global + 3))();
        *v6 = 0;
      }

      *(v1 + 1160) = 0;
      *(v1 + 1144) = 0;
      if (*(v1 + 1088))
      {
        (*(ausdk::BufferAllocator::instance(void)::global + 3))();
        *v2 = 0;
      }

      *(v1 + 1096) = 0;
      *(v1 + 1080) = 0;
      ausdk::AUBase::~AUBase(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDeesser>::Factory()
{
  result = malloc_type_malloc(0x3E8uLL, 0x10F30405A3CC721uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDeesser>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDeesser>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUDeesser>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F592C6B0;
  *(v3 + 33) = 0u;
  *(v3 + 68) = 0x100000000;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 856) = 0;
  *(v3 + 864) = 0;
  *(v3 + 888) = 0;
  *(v3 + 896) = 0;
  *(v3 + 920) = 0;
  *(v3 + 232) = 0;
  *(v3 + 51) = 0u;
  *(v3 + 832) = 0;
  *(v3 + 71) = 0;
  *(v3 + 36) = 0u;
  *(v3 + 148) = 0;
  *(v3 + 77) = 0;
  *(v3 + 156) = 0;
  *(v3 + 600) = 0u;
  *(v3 + 324) = 0;
  *(v3 + 632) = 0u;
  ausdk::AUBase::CreateElements(v3);
  ausdk::AUBase::SetParameter(a1, 0, 0, 0, 2500.0);
  ausdk::AUBase::SetParameter(a1, 1u, 0, 0, 6000.0);
  ausdk::AUBase::SetParameter(a1, 2u, 0, 0, 48000.0);
  ausdk::AUBase::SetParameter(a1, 3u, 0, 0, -38.0);
  ausdk::AUBase::SetParameter(a1, 5u, 0, 0, -9.0);
  ausdk::AUBase::SetParameter(a1, 7u, 0, 0, 24.0);
  ausdk::AUBase::SetParameter(a1, 9u, 0, 0, 10.0);
  ausdk::AUBase::SetParameter(a1, 0xBu, 0, 0, 100.0);
  ausdk::AUBase::SetParameter(a1, 0xDu, 0, 0, -96.0);
  ausdk::AUBase::SetParameter(a1, 0xFu, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x11u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 4u, 0, 0, -48.0);
  ausdk::AUBase::SetParameter(a1, 6u, 0, 0, -9.0);
  ausdk::AUBase::SetParameter(a1, 8u, 0, 0, 24.0);
  ausdk::AUBase::SetParameter(a1, 0xAu, 0, 0, 10.0);
  ausdk::AUBase::SetParameter(a1, 0xCu, 0, 0, 100.0);
  ausdk::AUBase::SetParameter(a1, 0xEu, 0, 0, -96.0);
  ausdk::AUBase::SetParameter(a1, 0x10u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(a1, 0x12u, 0, 0, 0.0);
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || (v16 = 32, *inDesc = 0x40E5888000000000, v15 = 0x100000004, *&inDesc[8] = xmmword_1DE09BD50, (*(*Element + 56))(Element, inDesc), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v16 = 32;
  *inDesc = 0x40E5888000000000;
  v15 = 0x100000004;
  *&inDesc[8] = xmmword_1DE09BD50;
  (*(*v5 + 56))(v5, inDesc);
  inDesc[13] = 0;
  *&inDesc[14] = 0;
  *&inDesc[16] = 0;
  strcpy(inDesc, "xfuaqebnlppa");
  Next = AudioComponentFindNext(0, inDesc);
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  v7 = (a1 + 816);
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 736) = 0u;
  v8 = 736;
  do
  {
    v9 = AudioComponentInstanceNew(Next, (a1 + v8));
    if (v9)
    {
      break;
    }

    v10 = v8 == 808;
    v8 += 8;
  }

  while (!v10);
  if (!v9)
  {
    inDesc[13] = 0;
    *&inDesc[14] = 0;
    *&inDesc[16] = 0;
    strcpy(inDesc, "xfua2clvlppa");
    v11 = AudioComponentFindNext(0, inDesc);
    if (!AudioComponentInstanceNew(v11, (a1 + 816)))
    {
      AudioUnitSetParameter(*v7, 0xAu, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*v7, 0xBu, 0, 0, 0.0, 0);
      AudioUnitSetParameter(*v7, 0xDu, 0, 0, 2.0, 0);
      AudioUnitSetParameter(*v7, 0xEu, 0, 0, 2.0, 0);
      v12 = (a1 + 824);
      if (!AudioComponentInstanceNew(v11, (a1 + 824)))
      {
        AudioUnitSetParameter(*v12, 0xAu, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*v12, 0xBu, 0, 0, 0.0, 0);
        AudioUnitSetParameter(*v12, 0xDu, 0, 0, 2.0, 0);
        AudioUnitSetParameter(*v12, 0xEu, 0, 0, 2.0, 0);
      }
    }
  }

  return a1;
}

void sub_1DDD38DB0(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100](v1 + 896);
  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100](v1 + 864);
  std::__optional_destruct_base<ausdk::AUBufferList,false>::~__optional_destruct_base[abi:ne200100](v1 + 832);
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 616));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 584));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 552));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeCompressorV2>::Factory()
{
  result = malloc_type_malloc(0x738uLL, 0x10F304017B7079CuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeCompressorV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeCompressorV2>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessLookup,AUVolumeCompressorV2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v4 = 0;
  *v3 = &unk_1F59237B0;
  *(v3 + 93) = 0;
  *(v3 + 97) = 0;
  *(v3 + 66) = 0;
  *(v3 + 268) = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 784) = 0;
    *(v5 + 792) = 0;
    *(v5 + 800) = 0uLL;
    v4 += 32;
  }

  while (v4 != 256);
  bzero((a1 + 1040), 0x228uLL);
  *(a1 + 1676) = 5;
  *(a1 + 1680) = 0u;
  operator new();
}

void sub_1DDD39840(_Unwind_Exception *a1)
{
  std::valarray<float>::~valarray(v6);
  std::valarray<float>::~valarray(v5);
  std::valarray<float>::~valarray(v4);
  std::valarray<float>::~valarray(v3);
  std::valarray<float>::~valarray(v2);
  v8 = v1 + 198;
  v9 = -128;
  while (1)
  {
    v10 = *(v8 - 1);
    if (v10)
    {
      if (*v8 != v10)
      {
        *v8 = *v8 + ((v10 - *v8 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      }

      operator delete(v10);
      *(v8 - 1) = 0;
      *v8 = 0;
    }

    v8 -= 2;
    v9 += 16;
    if (!v9)
    {
      v11 = v1 + 182;
      v12 = -128;
      while (1)
      {
        v13 = *(v11 - 1);
        if (v13)
        {
          if (*v11 != v13)
          {
            *v11 = *v11 + ((v13 - *v11 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          }

          operator delete(v13);
          *(v11 - 1) = 0;
          *v11 = 0;
        }

        v11 -= 2;
        v12 += 16;
        if (!v12)
        {
          v14 = v1 + 166;
          v15 = -128;
          while (1)
          {
            v16 = *(v14 - 1);
            if (v16)
            {
              if (*v14 != v16)
              {
                *v14 = *v14 + ((v16 - *v14 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              }

              operator delete(v16);
              *(v14 - 1) = 0;
              *v14 = 0;
            }

            v14 -= 2;
            v15 += 16;
            if (!v15)
            {
              v17 = v1 + 150;
              v18 = -128;
              while (1)
              {
                v19 = *(v17 - 1);
                if (v19)
                {
                  if (*v17 != v19)
                  {
                    *v17 = *v17 + ((v19 - *v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  operator delete(v19);
                  *(v17 - 1) = 0;
                  *v17 = 0;
                }

                v17 -= 2;
                v18 += 16;
                if (!v18)
                {
                  v20 = (v1 + 126);
                  v21 = -256;
                  do
                  {
                    CDSPSplitComplex::~CDSPSplitComplex(v20);
                    v20 = (v22 - 32);
                    v21 += 32;
                  }

                  while (v21);
                  v23 = v1[93];
                  if (v23)
                  {
                    (*(*v23 + 8))(v23);
                    v1[93] = 0;
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
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoGateV3>::Factory()
{
  result = malloc_type_malloc(0x390uLL, 0x10F3040FDCFEE05uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoGateV3>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoGateV3>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoGateV3>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 8, 1);
  *v3 = &unk_1F591C800;
  *(v3 + 528) = 0;
  *(v3 + 67) = 0;
  *(v3 + 544) = 0;
  *(v3 + 568) = 0;
  *(v3 + 72) = 0;
  *(v3 + 146) = 0;
  *(v3 + 596) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 91) = 0;
  *(v3 + 92) = 0x3F800000447A0000;
  *(v3 + 93) = 1112014848;
  *(v3 + 188) = 1065353216;
  *(v3 + 195) = 0;
  *(v3 + 772) = 0;
  *(v3 + 756) = 0u;
  *(v3 + 98) = 1;
  *(v3 + 396) = 0;
  *(v3 + 796) = 0xF1000000F0;
  *(v3 + 101) = 0;
  *(v3 + 408) = 0;
  *(v3 + 103) = 0;
  v4 = egt3Subsystem();
  caulk::deferred_logger::create_v((a1 + 832), *v4, v5);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v7 & 1) == 0)
  {
    abort();
  }

  v8 = v6;
  ausdk::AUBase::CreateElements(a1);
  (*(*v8 + 40))(v8, 48);
  ausdk::AUElement::SetParameter(v8, 0, 0.0);
  ausdk::AUElement::SetParameter(v8, 1u, 0.0);
  ausdk::AUElement::SetParameter(v8, 2u, 0.0);
  ausdk::AUElement::SetParameter(v8, 3u, 0.0);
  ausdk::AUElement::SetParameter(v8, 5u, 0.0);
  ausdk::AUElement::SetParameter(v8, 4u, 0.0);
  ausdk::AUElement::SetParameter(v8, 6u, -95.0);
  ausdk::AUElement::SetParameter(v8, 7u, 0.0);
  ausdk::AUElement::SetParameter(v8, 8u, -70.0);
  ausdk::AUElement::SetParameter(v8, 9u, 10.0);
  ausdk::AUElement::SetParameter(v8, 0xAu, 5.0);
  ausdk::AUElement::SetParameter(v8, 0xBu, 1.0);
  ausdk::AUElement::SetParameter(v8, 0xCu, 2.0);
  ausdk::AUElement::SetParameter(v8, 0xDu, 0.0);
  ausdk::AUElement::SetParameter(v8, 0xEu, 0.0);
  ausdk::AUElement::SetParameter(v8, 0xFu, 20.0);
  ausdk::AUElement::SetParameter(v8, 0x10u, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x11u, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x12u, 10.0);
  ausdk::AUElement::SetParameter(v8, 0x13u, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x14u, 1.0);
  ausdk::AUElement::SetParameter(v8, 0x15u, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x16u, 1.0);
  ausdk::AUElement::SetParameter(v8, 0x17u, 1.0);
  ausdk::AUElement::SetParameter(v8, 0x18u, 10.0);
  ausdk::AUElement::SetParameter(v8, 0x19u, 15.0);
  ausdk::AUElement::SetParameter(v8, 0x1Au, 6.0);
  ausdk::AUElement::SetParameter(v8, 0x23u, -60.0);
  ausdk::AUElement::SetParameter(v8, 0x24u, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x25u, 200.0);
  ausdk::AUElement::SetParameter(v8, 0x26u, -14.0);
  ausdk::AUElement::SetParameter(v8, 0x27u, 18.0);
  ausdk::AUElement::SetParameter(v8, 0x28u, 0.5);
  ausdk::AUElement::SetParameter(v8, 0x29u, 2.0);
  ausdk::AUElement::SetParameter(v8, 0x2Au, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x2Bu, 48.0);
  ausdk::AUElement::SetParameter(v8, 0x2Cu, 60.0);
  ausdk::AUElement::SetParameter(v8, 0x2Du, 30.0);
  ausdk::AUElement::SetParameter(v8, 0x2Eu, 0.25);
  ausdk::AUElement::SetParameter(v8, 0x2Fu, -1.0);
  ausdk::AUElement::SetParameter(v8, 0x1Bu, 2.5);
  ausdk::AUElement::SetParameter(v8, 0x1Cu, 0.0);
  ausdk::AUElement::SetParameter(v8, 0x1Du, 2.0);
  ausdk::AUElement::SetParameter(v8, 0x1Eu, 2.0);
  ausdk::AUElement::SetParameter(v8, 0x1Fu, -5.0);
  ausdk::AUElement::SetParameter(v8, 0x20u, -12.0);
  ausdk::AUElement::SetParameter(v8, 0x21u, 10.0);
  ausdk::AUElement::SetParameter(v8, 0x22u, 4.0);
  v25 = 0x40D5888000000000;
  v26 = xmmword_1DE09BD50;
  v27 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v25), *(a1 + 588) = 0, (v10 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v10 + 56))(v10, &v25);
  v22 = 0x40D5888000000000;
  v24 = xmmword_1DE09C600;
  v23 = xmmword_1DE09C190;
  v11 = ausdk::AUScope::GetElement((a1 + 80), 2u);
  if (!v11 || ((*(*v11 + 56))(v11, &v22), *(a1 + 590) = 1, (v12 = ausdk::AUScope::GetElement((a1 + 80), 3u)) == 0) || ((*(*v12 + 56))(v12, &v22), *(a1 + 591) = 1, (v13 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v13 + 56))(v13, &v22);
  *(a1 + 589) = 1;
  v19 = 0x40D5888000000000;
  v20 = xmmword_1DE09C7F0;
  v21 = xmmword_1DE09BD60;
  v14 = ausdk::AUScope::GetElement((a1 + 80), 4u);
  if (!v14 || ((*(*v14 + 56))(v14, &v19), *(a1 + 592) = 0, (v15 = ausdk::AUScope::GetElement((a1 + 80), 5u)) == 0) || ((*(*v15 + 56))(v15, &v19), *(a1 + 593) = 0, (v16 = ausdk::AUScope::GetElement((a1 + 80), 6u)) == 0) || ((*(*v16 + 56))(v16, &v19), *(a1 + 594) = 0, (v17 = ausdk::AUScope::GetElement((a1 + 80), 7u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v17 + 56))(v17, &v19);
  *(a1 + 595) = 0;
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 240);
  return a1;
}

void sub_1DDD3A20C(_Unwind_Exception *a1)
{
  if (*(v1 + 783) < 0)
  {
    operator delete(*(v1 + 760));
  }

  v4 = *(v1 + 712);
  if (v4)
  {
    *(v1 + 720) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 688);
  if (v5)
  {
    *(v1 + 696) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 664);
  if (v6)
  {
    *(v1 + 672) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 640);
  if (v7)
  {
    *(v1 + 648) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 624) = v8;
    operator delete(v8);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV5>::Factory()
{
  result = malloc_type_malloc(0x308uLL, 0x10F3040F1A78AD0uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV5>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV5>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV5>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 540);
  v4 = ausdk::AUBase::AUBase(a1, a2, 6, 4);
  *(v4 + 69) = 0x1E1000001E0;
  v3[3] = 0x400000006;
  *v4 = &unk_1F591CCF0;
  *(v4 + 528) = 0;
  *(v4 + 532) = 0;
  *(v4 + 316) = 256;
  *(v4 + 36) = 0u;
  *(v4 + 159) = 1048576000;
  *(v4 + 41) = 0u;
  *(v4 + 42) = 0u;
  *(v4 + 86) = 24;
  *(v4 + 174) = 1065353216;
  *(v4 + 700) = 0;
  *(v4 + 176) = 1101004800;
  ausdk::AUBase::CreateElements(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    LODWORD(v6) = (*(*v5 + 24))(v5);
  }

  else
  {
    v6 = (*(a1 + 104) - *(a1 + 96)) >> 3;
  }

  *(a1 + 564) = v6;
  v7 = *(a1 + 168);
  if (v7)
  {
    LODWORD(v8) = (*(*v7 + 24))(v7);
  }

  else
  {
    v8 = (*(a1 + 152) - *(a1 + 144)) >> 3;
  }

  *(a1 + 568) = v8;
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_90;
  }

  (*(*v9 + 40))(v9, 50);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v11, 0, 1.0);
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v13, 1u, -15.0);
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v15, 2u, -15.0);
  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v17, 3u, 0.0);
  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v19, 4u, 0.0);
  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v21, 5u, 0.0);
  v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v23, 6u, 1.0);
  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v25, 6u, 0.0);
  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v27, 8u, 1.0);
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v29, 9u, 1.0);
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v31, 0xAu, 0.0);
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v33, 0xBu, -12.0);
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v35, 0xCu, -25.0);
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v37, 0xDu, 0.0);
  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v39, 0xEu, 0.92);
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v41, 0xFu, 0.87);
  v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v43, 0x10u, 25.0);
  v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v45, 0x11u, 25.0);
  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v47, 0x12u, 25.0);
  v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v49, 0x13u, 0.0);
  v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v51, 0x14u, 0.0);
  v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v53, 0x15u, 1.0);
  v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v55, 0x16u, -6.0);
  v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v57, 0x17u, -6.0);
  v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v59, 0x18u, 1.0);
  v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v61, 0x19u, 1.0);
  v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v63, 0x1Au, 2000.0);
  v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v65, 0x1Bu, -10.0);
  v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v67, 0x1Cu, -70.0);
  v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v69, 0x1Du, 0.0);
  v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v71, 0x1Eu, -6.0);
  v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v73, 0x1Fu, 10.0);
  v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v75, 0x20u, 0.0);
  v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v77, 0x21u, 80.0);
  v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v79, 0x22u, 2.0);
  v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v81, 0x23u, 40.0);
  v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v83, 0x24u, 0.0);
  v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v86 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v85, 0x25u, 0.0);
  v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v87, 0x26u, 0.0);
  v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v89, 0x27u, 0.0);
  v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v91, 0x28u, 1.0e-20);
  v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v93, 0x29u, 0.0);
  v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v95, 0x2Au, 0.0);
  v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v98 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v97, 0x2Bu, 0.0);
  v99 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v99, 0x2Cu, 0.0);
  v101 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v102 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v101, 0x2Du, 0.0);
  v103 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v103, 0x2Eu, 1.0);
  v105 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v105, 0x2Fu, 0.0);
  v107 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v107, 0x30u, 0.0);
  v109 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v110 & 1) == 0)
  {
    goto LABEL_90;
  }

  ausdk::AUElement::SetParameter(v109, 0x31u, 1.0);
  *(a1 + 616) = 0;
  *(a1 + 618) = 0;
  *(a1 + 620) = 0;
  v111 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_90;
  }

  *(a1 + 624) = ausdk::AUElement::GetParameter(v111, 0x28u);
  v113 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v114 & 1) == 0)
  {
    goto LABEL_90;
  }

  Parameter = ausdk::AUElement::GetParameter(v113, 0x2Bu);
  if (Parameter >= 2)
  {
    Parameter = 2;
  }

  *(a1 + 628) = Parameter;
  v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v117 & 1) == 0 || (*(a1 + 560) = ausdk::AUElement::GetParameter(v116, 8u), v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v119 & 1) == 0) || (*(a1 + 640) = ausdk::AUElement::GetParameter(v118, 0x2Cu) != 0.0, v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v121 & 1) == 0) || (*(a1 + 644) = ausdk::AUElement::GetParameter(v120, 0x2Du), v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v123 & 1) == 0) || (*(a1 + 648) = ausdk::AUElement::GetParameter(v122, 0x2Eu), v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v125 & 1) == 0) || (*(a1 + 652) = ausdk::AUElement::GetParameter(v124, 0x2Fu), v126 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v127 & 1) == 0) || (*(a1 + 692) = ausdk::AUElement::GetParameter(v126, 0x30u), v128 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v129 & 1) == 0))
  {
LABEL_90:
    abort();
  }

  *(a1 + 696) = ausdk::AUElement::GetParameter(v128, 0x31u);
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  v144 = 0x40D5888000000000;
  v145 = xmmword_1DE09C190;
  v146 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    goto LABEL_91;
  }

  (*(*Element + 56))(Element, &v144);
  v131 = ausdk::AUScope::GetElement((a1 + 80), 1u);
  if (!v131)
  {
    goto LABEL_91;
  }

  (*(*v131 + 56))(v131, &v144);
  v132 = ausdk::AUScope::GetElement((a1 + 80), 2u);
  if (!v132)
  {
    goto LABEL_91;
  }

  (*(*v132 + 56))(v132, &v144);
  v133 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v133)
  {
    goto LABEL_91;
  }

  (*(*v133 + 56))(v133, &v144);
  if (*(v3 + 6) >= 6u)
  {
    v134 = ausdk::AUScope::GetElement((a1 + 80), 5u);
    if (!v134)
    {
      goto LABEL_91;
    }

    (*(*v134 + 56))(v134, &v144);
  }

  if (*(a1 + 568) >= 2u)
  {
    v135 = ausdk::AUScope::GetElement((a1 + 128), 1u);
    if (!v135)
    {
      goto LABEL_91;
    }

    (*(*v135 + 56))(v135, &v144);
  }

  v141 = 0x40D5888000000000;
  v143 = xmmword_1DE09BD60;
  v142 = xmmword_1DE09BD50;
  if (*(v3 + 6) >= 4u)
  {
    v136 = ausdk::AUScope::GetElement((a1 + 80), 3u);
    if (!v136)
    {
      goto LABEL_91;
    }

    (*(*v136 + 56))(v136, &v141);
    if (*(v3 + 6) >= 5u)
    {
      v137 = ausdk::AUScope::GetElement((a1 + 80), 4u);
      if (!v137)
      {
        goto LABEL_91;
      }

      (*(*v137 + 56))(v137, &v141);
    }
  }

  if (*(a1 + 568) >= 3u)
  {
    v138 = ausdk::AUScope::GetElement((a1 + 128), 2u);
    if (!v138)
    {
      goto LABEL_91;
    }

    (*(*v138 + 56))(v138, &v141);
    if (*(a1 + 568) >= 4u)
    {
      v139 = ausdk::AUScope::GetElement((a1 + 128), 3u);
      if (v139)
      {
        (*(*v139 + 56))(v139, &v141);
        goto LABEL_89;
      }

LABEL_91:
      ausdk::Throw(0xFFFFD583);
    }
  }

LABEL_89:
  *v3 = 0x101010000010101;
  *(a1 + 548) = 0;
  (*(*a1 + 512))(a1, 480);
  *(a1 + 376) = 1;
  return a1;
}

void sub_1DDD3AEAC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 83);
  if (v3)
  {
    *(v1 + 84) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV4>::Factory()
{
  result = malloc_type_malloc(0x280uLL, 0x10F30406B502591uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV4>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV4>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV4>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 5, 2);
  *v3 = &unk_1F5931FC0;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 35) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 37), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 0, 1.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 1u, -15.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 2u, -15.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 4u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 5u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 6u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 6u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 8u, 1.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 9u, 1.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xAu, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xBu, -12.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xCu, -25.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0xDu, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xEu, 0.92), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xFu, 0.87), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 25.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 25.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x12u, 25.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x13u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x14u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x15u, 1.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x16u, -6.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x17u, -6.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x18u, 1.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x19u, 1.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x1Au, 2000.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x1Bu, -10.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x1Cu, -70.0), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x1Du, 0.0), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Eu, -6.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Fu, 10.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x20u, 0.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x21u, 80.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x22u, 2.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x23u, 40.0), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v79 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v78, 0x24u, 0.0);
  v91 = 0x40D5888000000000;
  v92 = xmmword_1DE09C190;
  v93 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v91), (v81 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v81 + 56))(v81, &v91), (v82 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v82 + 56))(v82, &v91), (v83 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v83 + 56))(v83, &v91), v88 = 0x40D5888000000000, v90 = xmmword_1DE09BD60, v89 = xmmword_1DE09BD50, (v84 = ausdk::AUScope::GetElement((a1 + 80), 3u)) == 0) || ((*(*v84 + 56))(v84, &v88), (v85 = ausdk::AUScope::GetElement((a1 + 80), 4u)) == 0) || ((*(*v85 + 56))(v85, &v88), (v86 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v86 + 56))(v86, &v88);
  *(a1 + 540) = 65793;
  *(a1 + 544) = 256;
  *(a1 + 546) = 0;
  (*(*a1 + 512))(a1, 480);
  *(a1 + 376) = 1;
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV3>::Factory()
{
  result = malloc_type_malloc(0x278uLL, 0x10F3040431BE3F2uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV3>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV3>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUResidualEchoSuppressorV3>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 4, 2);
  *v3 = &unk_1F592BD70;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 70) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0
    || ((*(*v4 + 40))(v4, 36), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v6, 0, 1.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v8, 1u, -15.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v10, 2u, -15.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 4u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 5u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 6u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 6u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 8u, 1.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 9u, 1.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 0xAu, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 0xBu, -12.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xCu, -25.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0xDu, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xEu, 0.92), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xFu, 0.87), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 25.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 25.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0x12u, 25.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0x13u, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x14u, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x15u, 1.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x16u, -6.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x17u, -6.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x18u, 1.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x19u, 1.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x1Au, 2000.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x1Bu, -10.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x1Cu, -70.0), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x1Du, 0.0), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Eu, -6.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Fu, 10.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x20u, 0.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x21u, 80.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x22u, 2.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v77 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v76, 0x23u, 40.0);
  v88 = 0x40D5888000000000;
  v89 = xmmword_1DE09C190;
  v90 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v88), (v79 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v79 + 56))(v79, &v88), (v80 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v80 + 56))(v80, &v88), (v81 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v81 + 56))(v81, &v88), v85 = 0x40D5888000000000, v87 = xmmword_1DE09BD60, v86 = xmmword_1DE09BD50, (v82 = ausdk::AUScope::GetElement((a1 + 80), 3u)) == 0) || ((*(*v82 + 56))(v82, &v85), (v83 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v83 + 56))(v83, &v85);
  *(a1 + 540) = 65793;
  *(a1 + 544) = 1;
  (*(*a1 + 512))(a1, 480);
  *(a1 + 376) = 1;
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechLevelEstimator>::Factory()
{
  result = malloc_type_malloc(0x320uLL, 0x10F30400C27506FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechLevelEstimator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechLevelEstimator>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSpeechLevelEstimator>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5933098;
  *(v3 + 66) = 1186693120;
  *(v3 + 134) = 0;
  *(v3 + 540) = 1;
  *(v3 + 68) = 0xF1000000F0;
  *(v3 + 138) = 0;
  *(v3 + 139) = 65793;
  *(v3 + 35) = xmmword_1DE09C830;
  *(v3 + 72) = 0;
  *(v3 + 74) = 0;
  *(v3 + 73) = 0;
  *(v3 + 300) = 0;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 90) = 0;
  *(v3 + 182) = 1065353216;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 16), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 64.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 1.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, 1.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 4u, 1.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 5u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 6u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 7u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 8u, 0.9), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 9u, -100.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 0xAu, 1.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xBu, -100.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xCu, 64.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xDu, 64.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xEu, 64.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v37 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v36, 0xFu, 64.0);
  v41 = 0x40E5888000000000;
  v42 = xmmword_1DE09C190;
  v43 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v41), (v39 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v39 + 56))(v39, &v41);
  a1[540] = 1;
  a1[376] = 1;
  return a1;
}

void sub_1DDD3C218(_Unwind_Exception *a1)
{
  v3 = v1[88];
  if (v3)
  {
    v1[89] = v3;
    operator delete(v3);
  }

  v4 = v1[85];
  if (v4)
  {
    v1[86] = v4;
    operator delete(v4);
  }

  v5 = v1[82];
  if (v5)
  {
    v1[83] = v5;
    operator delete(v5);
  }

  v6 = v1[79];
  if (v6)
  {
    v1[80] = v6;
    operator delete(v6);
  }

  v7 = v1[78];
  v1[78] = 0;
  if (v7)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v7);
  }

  v8 = v1[77];
  v1[77] = 0;
  if (v8)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v8);
  }

  std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](v1 + 76, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNoiseEstimator>::Factory()
{
  result = malloc_type_malloc(0x2B0uLL, 0x10F304091BEFB6FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNoiseEstimator>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNoiseEstimator>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNoiseEstimator>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59347F0;
  *(v3 + 66) = 0;
  *(v3 + 536) = 1;
  *(v3 + 135) = 240;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 76) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 4), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 64.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 64.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0), (v13 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v12, 3u, 64.0);
  v17 = 0x40E5888000000000;
  v18 = xmmword_1DE09C190;
  v19 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v17), (v15 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v15 + 56))(v15, &v17);
  a1[536] = 1;
  a1[376] = 1;
  return a1;
}

void sub_1DDD3C51C(_Unwind_Exception *a1)
{
  v3 = v1[74];
  if (v3)
  {
    v1[75] = v3;
    operator delete(v3);
  }

  v4 = v1[71];
  if (v4)
  {
    v1[72] = v4;
    operator delete(v4);
  }

  v5 = v1[70];
  v1[70] = 0;
  if (v5)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v5);
  }

  v6 = v1[69];
  v1[69] = 0;
  if (v6)
  {
    std::default_delete<SPLMeter<float,CWeight>>::operator()[abi:ne200100](v6);
  }

  std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::reset[abi:ne200100](v1 + 68, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNSV4>::Factory()
{
  result = malloc_type_malloc(0x2A0uLL, 0x10F3040DB3D334EuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNSV4>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNSV4>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNSV4>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 3);
  *v3 = &unk_1F5922078;
  *(v3 + 66) = 0;
  *(v3 + 536) = 0;
  *(v3 + 540) = 0;
  *(v3 + 274) = 0;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 11), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, -18.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 40.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 4u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 5u, 40.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 6u, 80.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 7u, 5.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 8u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 9u, 1000.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v26, 0xAu, 0.0);
  (*(*a1 + 512))(a1, 1024);
  v42 = 0x40CF400000000000;
  v43 = xmmword_1DE09C190;
  v44 = xmmword_1DE09C600;
  v39 = 0x40CF400000000000;
  v41 = xmmword_1DE09BD60;
  v40 = xmmword_1DE09C7F0;
  v28 = *(a1 + 120);
  if (v28)
  {
    LODWORD(v29) = (*(*v28 + 24))(v28);
  }

  else
  {
    v29 = (*(a1 + 104) - *(a1 + 96)) >> 3;
  }

  *(a1 + 600) = v29;
  v30 = *(a1 + 168);
  if (v30)
  {
    LODWORD(v31) = (*(*v30 + 24))(v30);
  }

  else
  {
    v31 = (*(a1 + 152) - *(a1 + 144)) >> 3;
  }

  *(a1 + 604) = v31;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    goto LABEL_33;
  }

  (*(*Element + 56))(Element, &v42);
  if (*(a1 + 600) >= 2u)
  {
    v33 = ausdk::AUScope::GetElement((a1 + 80), 1u);
    if (!v33)
    {
      goto LABEL_33;
    }

    (*(*v33 + 56))(v33, &v39);
    if (*(a1 + 600) >= 3u)
    {
      v34 = ausdk::AUScope::GetElement((a1 + 80), 2u);
      if (!v34)
      {
        goto LABEL_33;
      }

      (*(*v34 + 56))(v34, &v39);
    }
  }

  v35 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v35)
  {
LABEL_33:
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v35 + 56))(v35, &v42);
  if (*(a1 + 604) >= 2u)
  {
    v36 = ausdk::AUScope::GetElement((a1 + 128), 1u);
    if (!v36)
    {
      goto LABEL_33;
    }

    (*(*v36 + 56))(v36, &v39);
    if (*(a1 + 604) >= 3u)
    {
      v37 = ausdk::AUScope::GetElement((a1 + 128), 2u);
      if (v37)
      {
        (*(*v37 + 56))(v37, &v39);
        return a1;
      }

      goto LABEL_33;
    }
  }

  return a1;
}

void sub_1DDD3CA9C(_Unwind_Exception *a1)
{
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v1 + 66, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNS>::Factory()
{
  result = malloc_type_malloc(0x2B8uLL, 0x10F30405850333FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNS>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNS>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUOneChannelNS>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 2);
  *v3 = &unk_1F592ED10;
  *(v3 + 66) = 0;
  *(v3 + 536) = 0;
  *(v3 + 540) = 0;
  *(v3 + 274) = 0;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 580) = 0u;
  *(v3 + 75) = 1065353216;
  *(v3 + 152) = 0;
  *(v3 + 616) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 8), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, -6.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 40.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 4u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 5u, 40.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 6u, 80.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v20, 7u, 5.0);
  (*(*a1 + 512))(a1, 1024);
  v30 = 0x40D5888000000000;
  v31 = xmmword_1DE09C190;
  v32 = xmmword_1DE09C600;
  v27 = 0x40D5888000000000;
  v29 = xmmword_1DE09BD60;
  v28 = xmmword_1DE09C7F0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v30), (v23 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v23 + 56))(v23, &v27), (v24 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v24 + 56))(v24, &v30), (v25 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v25 + 56))(v25, &v27);
  return a1;
}

void sub_1DDD3CE7C(_Unwind_Exception *a1)
{
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](v1 + 66, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSubBandMultEchoCanceler>::Factory()
{
  result = malloc_type_malloc(0xED0uLL, 0x10F3040311FFC37uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSubBandMultEchoCanceler>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSubBandMultEchoCanceler>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSubBandMultEchoCanceler>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 3);
  *v3 = &unk_1F591DAE0;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 152) = 0;
  v4 = (v3 + 1576);
  *(v3 + 364) = 0;
  *(v3 + 1464) = 0u;
  *(v3 + 1480) = 0u;
  *(v3 + 1496) = 0u;
  *(v3 + 1512) = 0u;
  *(v3 + 1528) = 0u;
  *(v3 + 1544) = 0u;
  *(v3 + 1557) = 0u;
  v5 = v3 + 1792;
  *(v3 + 418) = 0;
  *(v3 + 105) = 0u;
  *(v3 + 106) = 0u;
  *(v3 + 107) = 0u;
  *(v3 + 108) = 0u;
  *(v3 + 109) = 0u;
  *(v3 + 110) = 0u;
  *(v3 + 1773) = 0u;
  v6 = (v3 + 2008);
  *(v3 + 472) = 0;
  *(v3 + 1896) = 0u;
  *(v3 + 1912) = 0u;
  *(v3 + 1928) = 0u;
  *(v3 + 1944) = 0u;
  *(v3 + 1960) = 0u;
  *(v3 + 1976) = 0u;
  *(v3 + 1989) = 0u;
  v7 = v3 + 2224;
  *(v3 + 526) = 0;
  *(v3 + 132) = 0u;
  *(v3 + 133) = 0u;
  *(v3 + 134) = 0u;
  *(v3 + 135) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 137) = 0u;
  *(v3 + 2205) = 0u;
  v8 = (v3 + 2440);
  *(v3 + 580) = 0;
  *(v3 + 2328) = 0u;
  *(v3 + 2344) = 0u;
  *(v3 + 2360) = 0u;
  *(v3 + 2376) = 0u;
  *(v3 + 2392) = 0u;
  *(v3 + 2408) = 0u;
  *(v3 + 2421) = 0u;
  *(v3 + 654) = 0;
  *(v3 + 326) = 0;
  *(v3 + 162) = 0u;
  *(v3 + 164) = 0u;
  *(v3 + 165) = 0u;
  *(v3 + 166) = 0u;
  *(v3 + 167) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 169) = 0u;
  *(v3 + 170) = 0u;
  *(v3 + 171) = 0u;
  *(v3 + 172) = 0u;
  *(v3 + 2764) = 0u;
  *(v3 + 716) = 0;
  *(v3 + 178) = 0u;
  *(v3 + 177) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 175) = 0u;
  *(v3 + 174) = 0u;
  *(v3 + 724) = 0;
  *(v3 + 361) = 0;
  *(v3 + 2872) = 0u;
  *(v3 + 3044) = 0u;
  *(v3 + 3016) = 0u;
  *(v3 + 3032) = 0u;
  *(v3 + 2984) = 0u;
  *(v3 + 3000) = 0u;
  *(v3 + 2952) = 0u;
  *(v3 + 2968) = 0u;
  *(v3 + 2920) = 0u;
  *(v3 + 2936) = 0u;
  *(v3 + 2904) = 0u;
  v9 = (v3 + 3256);
  *(v3 + 770) = 0;
  *(v3 + 3064) = 0u;
  *(v3 + 812) = 0;
  *(v3 + 202) = 0u;
  *(v3 + 201) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 199) = 0u;
  *(v3 + 198) = 0u;
  *(v3 + 197) = 0u;
  *(v3 + 196) = 0u;
  *(v3 + 195) = 0u;
  *(v3 + 194) = 0u;
  *(v3 + 193) = 0u;
  v10 = v3 + 3472;
  *(v3 + 866) = 0;
  *(v3 + 3432) = 0u;
  *(v3 + 3448) = 0u;
  *(v3 + 3400) = 0u;
  *(v3 + 3416) = 0u;
  *(v3 + 3368) = 0u;
  *(v3 + 3384) = 0u;
  *(v3 + 3336) = 0u;
  *(v3 + 3352) = 0u;
  *(v3 + 3304) = 0u;
  *(v3 + 3320) = 0u;
  v11 = v3 + 3536;
  *(v3 + 902) = 0;
  *(v3 + 450) = 0;
  *(v3 + 224) = 0u;
  *(v3 + 284) = 0;
  *(v3 + 570) = 0;
  *(v3 + 452) = 0;
  *(v3 + 906) = 0;
  *(v3 + 924) = 0;
  *(v3 + 230) = 0u;
  *(v3 + 229) = 0u;
  *(v3 + 228) = 0u;
  *(v3 + 227) = 0u;
  bzero(v3 + 616, 0x345uLL);
  *(v4 + 77) = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(v5 + 77) = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  *(v6 + 77) = 0u;
  *(v7 + 77) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2224) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[8] = 0u;
  *(a1 + 2584) = 0;
  *v9 = 0u;
  v9[1] = 0u;
  *(v9 + 28) = 0u;
  *(v10 + 44) = 0u;
  *(a1 + 3504) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3472) = 0u;
  *(v11 + 28) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3536) = 0u;
  *(a1 + 3700) = 3;
  *(a1 + 3704) = 0;
  ausdk::AUBase::CreateElements(a1);
  v12 = 0;
  v49 = 0x40CF400000000000;
  v50 = xmmword_1DE09BD50;
  v51 = xmmword_1DE09BD60;
  while (1)
  {
    v13 = *(a1 + 120);
    if (v13)
    {
      LODWORD(v14) = (*(*v13 + 24))(v13);
    }

    else
    {
      v14 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v12 >= v14)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v12);
    if (!Element)
    {
LABEL_30:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v49);
    ++v12;
  }

  for (i = 0; ; ++i)
  {
    v17 = *(a1 + 168);
    if (v17)
    {
      LODWORD(v18) = (*(*v17 + 24))(v17);
    }

    else
    {
      v18 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v18)
    {
      break;
    }

    v19 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v19)
    {
      goto LABEL_30;
    }

    (*(*v19 + 56))(v19, &v49);
  }

  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v21 & 1) == 0 || ((*(*v20 + 40))(v20, 13), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 0, 80.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 1u, 2.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 3u, 120.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 2u, 480.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 4u, 1.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 5u, 1.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 6u, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 7u, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0) || (ausdk::AUElement::SetParameter(v38, 8u, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0) || (ausdk::AUElement::SetParameter(v40, 9u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0) || (ausdk::AUElement::SetParameter(v42, 0xAu, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0) || (ausdk::AUElement::SetParameter(v44, 0xBu, 2.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v46, 0xBu, 1.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 120);
  *(a1 + 3704) = 0;
  *(a1 + 3712) = 0;
  return a1;
}

void sub_1DDD3D568(_Unwind_Exception *a1)
{
  AUsubMAEC::myAecCore::~myAecCore((v1 + 568));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTTYEchoSuppressor>::Factory()
{
  result = malloc_type_malloc(0x300uLL, 0x10F3040733F8B5BuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTTYEchoSuppressor>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTTYEchoSuppressor>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUTTYEchoSuppressor>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F5934AD8;
  *(v3 + 528) = 0;
  *(v3 + 133) = 1;
  *(v3 + 67) = 0;
  *(v3 + 140) = 0;
  *(v3 + 588) = 1;
  *(v3 + 153) = 0;
  *(v3 + 80) = 1;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || (ausdk::AUElement::SetParameter(v4, 0, -27.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 1u, -27.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 2u, -40.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 3u, 0.001), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 4u, 0.01), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 5u, 0.001), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 6u, 0.001), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 7u, 0.02), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v20, 8u, 0.01);
  v26 = 0x40E5888000000000;
  v27 = xmmword_1DE09BD50;
  v28 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v26), (v23 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v23 + 56))(v23, &v26), (v24 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v24 + 56))(v24, &v26);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMicRef>::Factory()
{
  result = malloc_type_malloc(0x360uLL, 0x10F30404351825DuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMicRef>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMicRef>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMicRef>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 3);
  *v3 = &unk_1F5927728;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 77) = 850045863;
  *(v3 + 39) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 41) = 0u;
  *(v3 + 84) = 0;
  v4 = (v3 + 728);
  *(v3 + 99) = 0;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 769) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v64 = 0x40CF400000000000;
  v65 = xmmword_1DE09BD50;
  v66 = xmmword_1DE09C560;
  v61 = 0x40CF400000000000;
  v62 = xmmword_1DE09BD50;
  v63 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v64), (v6 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v6 + 56))(v6, &v61), (v7 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v7 + 56))(v7, &v64), (v8 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v8 + 56))(v8, &v64), (v9 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0) || ((*(*v9 + 56))(v9, &v64), (v10 = ausdk::AUScope::GetElement((a1 + 128), 2u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v10 + 56))(v10, &v61);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v12 & 1) == 0
    || ((*(*v11 + 40))(v11, 23), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v13, 0, 160.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 1u, -60.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 2u, -60.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 3u, 7.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 4u, -120.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 5u, 2.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 6u, -20.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 7u, 2.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 8u, 3333.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 9u, 0.5), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 0xAu, 0.032), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xBu, 3.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xCu, -80.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xDu, 32.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0xEu, 0.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0xFu, 0.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0x10u, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x11u, 1.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0x12u, 0.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x13u, 2.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x14u, -160.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x15u, 30.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v57, 0x16u, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 512);
  v59 = *v4;
  *v4 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  *(a1 + 540) = 0x3E80000000A0;
  *(a1 + 548) = *(a1 + 336);
  *(a1 + 552) = 0x200000004;
  *(a1 + 572) = 32;
  *(a1 + 576) = 0;
  *(a1 + 588) = 2;
  *(a1 + 592) = 0x41F00000C3200000;
  *(a1 + 680) = xmmword_1DE09C840;
  *(a1 + 696) = xmmword_1DE09C850;
  *(a1 + 712) = xmmword_1DE09C860;
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 792), 0);
  return a1;
}

void sub_1DDD3DF54(_Unwind_Exception *a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v1 + 792), 0);
  v4 = *(v1 + 760);
  if (v4)
  {
    *(v1 + 768) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 736);
  if (v5)
  {
    *(v1 + 744) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::mutex::~mutex((v1 + 616));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMDF>::Factory()
{
  result = malloc_type_malloc(0x320uLL, 0x10F3040B6D2FCEEuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMDF>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMDF>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMDF>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 532);
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 3);
  *v4 = &unk_1F59355E8;
  *(v4 + 528) = 0;
  *v3 = xmmword_1DE09C870;
  v3[1] = xmmword_1DE09C880;
  v3[2] = xmmword_1DE09C890;
  *(v4 + 580) = 0x140800000;
  *(v4 + 147) = 1086324736;
  *(v4 + 592) = 1;
  *(v4 + 596) = 0x100000000;
  *(v4 + 151) = 1133903872;
  *(v4 + 76) = 0x3E99999A44E10000;
  *(v4 + 77) = 0;
  *(v4 + 39) = 0u;
  *(v4 + 160) = 1065353216;
  *(v4 + 644) = 0;
  *(v3 + 116) = xmmword_1DE09C8A0;
  *(v4 + 83) = 0xC08000003F800000;
  *(v4 + 672) = 0;
  *(v4 + 169) = 1008981770;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0;
  *(v4 + 696) = 0;
  *(v4 + 704) = 0;
  *(v4 + 712) = 0;
  v5 = (v4 + 720);
  *(v4 + 45) = 0u;
  ausdk::AUBase::CreateElements(v4);
  v80 = 0x40D7700000000000;
  v81 = xmmword_1DE09BD50;
  v82 = xmmword_1DE09C560;
  v77 = 0x40D7700000000000;
  v79 = xmmword_1DE09C4E0;
  v78 = xmmword_1DE09BD50;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    goto LABEL_47;
  }

  (*(*Element + 56))(Element, &v80);
  v7 = ausdk::AUScope::GetElement((a1 + 80), 1u);
  if (!v7)
  {
    goto LABEL_47;
  }

  (*(*v7 + 56))(v7, &v77);
  v8 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v8)
  {
    goto LABEL_47;
  }

  (*(*v8 + 56))(v8, &v80);
  v9 = *(a1 + 168);
  if (v9)
  {
    LODWORD(v10) = (*(*v9 + 24))(v9);
  }

  else
  {
    v10 = (*(a1 + 152) - *(a1 + 144)) >> 3;
  }

  if (v10 >= 2)
  {
    v11 = ausdk::AUScope::GetElement((a1 + 128), 1u);
    if (!v11)
    {
      goto LABEL_47;
    }

    (*(*v11 + 56))(v11, &v80);
    if (v10 != 2)
    {
      v12 = ausdk::AUScope::GetElement((a1 + 128), 2u);
      if (v12)
      {
        (*(*v12 + 56))(v12, &v77);
        goto LABEL_12;
      }

LABEL_47:
      ausdk::Throw(0xFFFFD583);
    }
  }

LABEL_12:
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0
    || ((*(*v13 + 40))(v13, 30), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 0, 360.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 1u, -120.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 2u, 20.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 3u, 3.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 4u, -120.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 5u, 4.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 6u, 1.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 7u, 6.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 8u, 1.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 9u, 0.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xAu, 1.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xBu, 300.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xCu, 1800.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0xDu, 0.3), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0xEu, 0.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0xFu, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x10u, 10.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0x11u, 0.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x12u, 0.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x13u, 1.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x14u, 0.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v57, 0x15u, 40.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v59, 0x16u, 120.0), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v62 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v61, 0x17u, 0.1), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v64 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v63, 0x18u, -10.0), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v66 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v65, 0x19u, 0.0), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v68 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v67, 0x1Au, -4.0), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v70 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v69, 0x1Bu, 0.0), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v72 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v71, 0x1Cu, 0.01), v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v74 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v73, 0x1Du, 0.0);
  *(a1 + 376) = 1;
  v75 = (*(*a1 + 512))(a1, 480);
  if (!*v5)
  {
    caulk::concurrent::messenger::shared_logging_priority(v75);
    operator new();
  }

  return a1;
}

void sub_1DDD3E768(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v3, 0x20C40A4A59CD2);
  std::unique_ptr<ecRMDF>::reset[abi:ne200100](v1 + 91, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v2, 0);
  std::optional<CA::AudioBuffersDeprecated>::~optional((v1 + 88));
  std::optional<CA::AudioBuffersDeprecated>::~optional((v1 + 86));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMGS>::Factory()
{
  result = malloc_type_malloc(0x2A8uLL, 0x10F3040CDD87062uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMGS>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMGS>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECRMGS>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 3);
  *v3 = &unk_1F59344E0;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 600) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v34 = 0x40D7700000000000;
  v35 = xmmword_1DE09C190;
  v36 = xmmword_1DE09C700;
  v31 = 0x40D7700000000000;
  v33 = xmmword_1DE09C5F0;
  v32 = xmmword_1DE09C190;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v34), (v5 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v5 + 56))(v5, &v31), (v6 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v6 + 56))(v6, &v34), (v7 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0) || ((*(*v7 + 56))(v7, &v34), (v8 = ausdk::AUScope::GetElement((a1 + 128), 2u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v8 + 56))(v8, &v31);
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v10 & 1) == 0 || ((*(*v9 + 40))(v9, 9), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 0, 360.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 1u, -120.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 2u, 0.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 3u, 6.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 4u, -120.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 5u, 3.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 6u, 4.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0) || (ausdk::AUElement::SetParameter(v25, 7u, 2.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v27, 8u, 0.0);
  *(a1 + 376) = 1;
  v29 = (*(*a1 + 512))(a1, 480);
  *(a1 + 560) = 360;
  *(a1 + 540) = 24000;
  *(a1 + 544) = *(a1 + 336);
  *(a1 + 548) = 0x200000004;
  *(a1 + 564) = xmmword_1DE09C8B0;
  *(a1 + 580) = 3;
  *(a1 + 584) = 0x200000004;
  *(a1 + 592) = 0;
  if (!*(a1 + 600))
  {
    caulk::concurrent::messenger::shared_logging_priority(v29);
    operator new();
  }

  return a1;
}

void sub_1DDD3EC50(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v3, 0x20C40A4A59CD2);
  std::unique_ptr<ecRMGS>::reset[abi:ne200100](v1 + 76, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v2, 0);
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECSUMO>::Factory()
{
  result = malloc_type_malloc(0x390uLL, 0x10F30407E82B5BDuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECSUMO>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECSUMO>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECSUMO>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 4);
  *v3 = &unk_1F59270B8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 78) = 850045863;
  *(v3 + 356) = 0;
  *(v3 + 378) = 0;
  v4 = (v3 + 760);
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 676) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 105) = 0;
  ausdk::AUBase::CreateElements(v3);
  v79 = 0x40CF400000000000;
  v80 = xmmword_1DE09BD50;
  v81 = xmmword_1DE09C4E0;
  v76 = 0x40CF400000000000;
  v77 = xmmword_1DE09BD50;
  v78 = xmmword_1DE09C4E0;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v79), (v6 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v6 + 56))(v6, &v76), (v7 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0) || ((*(*v7 + 56))(v7, &v79), (v8 = ausdk::AUScope::GetElement((a1 + 128), 1u)) == 0) || ((*(*v8 + 56))(v8, &v79), (v9 = ausdk::AUScope::GetElement((a1 + 128), 2u)) == 0) || ((*(*v9 + 56))(v9, &v76), (v10 = ausdk::AUScope::GetElement((a1 + 128), 3u)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v10 + 56))(v10, &v79);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v12 & 1) == 0
    || ((*(*v11 + 40))(v11, 32), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v13, 0, 32.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 1u, -120.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 2u, 1.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 3u, -120.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 4u, 0.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 5u, 1.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 6u, 0.64), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 7u, -80.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 8u, 32.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 9u, 0.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 0xAu, 0.0), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xBu, 1.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xCu, 8.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xDu, 1.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0xEu, 1.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0xFu, 0.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0x10u, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x11u, 1.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0x12u, 2.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x13u, -160.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x14u, 30.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x15u, 1.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v57, 0x16u, 0.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v59, 0x17u, 0.0), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v62 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v61, 0x18u, 0.0), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v64 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v63, 0x19u, 32.0), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v66 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v65, 0x1Au, 0.0), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v68 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v67, 0x1Bu, 0.32), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v70 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v69, 0x1Cu, 1.0), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v72 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v71, 0x1Du, 0.0), v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v74 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v73, 0x1Eu, 0.0);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 512);
  std::unique_ptr<ecSUMO>::reset[abi:ne200100](v4, 0);
  *(a1 + 540) = 0x3E8000000020;
  *(a1 + 548) = *(a1 + 336);
  *(a1 + 552) = 0x200000002;
  *(a1 + 560) = 2;
  *(a1 + 572) = 32;
  *(a1 + 576) = 0;
  *(a1 + 600) = 0x41F00000C3200000;
  *(a1 + 716) = xmmword_1DE09C8C0;
  *(a1 + 732) = 1065353216;
  *(a1 + 736) = 0xC2A000003F23D70ALL;
  *(a1 + 744) = 0x100000000;
  *(a1 + 588) = 8;
  *(a1 + 752) = 1;
  *(a1 + 592) = 0x23F800000;
  *(a1 + 692) = 1;
  *(a1 + 696) = 0x2000000000;
  *(a1 + 712) = 0;
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 840), 0);
  return a1;
}

void sub_1DDD3F41C(_Unwind_Exception *a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v1 + 840), 0);
  v4 = *(v1 + 816);
  if (v4)
  {
    *(v1 + 824) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 792);
  if (v5)
  {
    *(v1 + 800) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 768);
  if (v6)
  {
    *(v1 + 776) = v6;
    operator delete(v6);
  }

  std::unique_ptr<ecSUMO>::reset[abi:ne200100](v2, 0);
  std::mutex::~mutex((v1 + 624));
  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMO>::Factory()
{
  result = malloc_type_malloc(0x358uLL, 0x10F30407D9614F2uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMO>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMO>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUECMIMO>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 3, 3);
  *v3 = &unk_1F5922548;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  v4 = (v3 + 728);
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  ausdk::AUBase::CreateElements(v3);
  v106 = 0x40CF400000000000;
  v107 = xmmword_1DE09BD50;
  v108 = xmmword_1DE09BD60;
  v103 = 0x40CF400000000000;
  v104 = xmmword_1DE09BD50;
  v105 = xmmword_1DE09BD60;
  v100 = 0x40CF400000000000;
  v101 = xmmword_1DE09BD50;
  v102 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    goto LABEL_58;
  }

  (*(*Element + 56))(Element, &v106);
  v6 = ausdk::AUScope::GetElement((a1 + 80), 1u);
  if (!v6)
  {
    goto LABEL_58;
  }

  (*(*v6 + 56))(v6, &v103);
  v7 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v7)
  {
    goto LABEL_58;
  }

  (*(*v7 + 56))(v7, &v106);
  v8 = ausdk::AUScope::GetElement((a1 + 128), 1u);
  if (!v8)
  {
    goto LABEL_58;
  }

  (*(*v8 + 56))(v8, &v106);
  v9 = ausdk::AUScope::GetElement((a1 + 128), 2u);
  if (!v9)
  {
    goto LABEL_58;
  }

  (*(*v9 + 56))(v9, &v103);
  v10 = *(a1 + 120);
  if (v10)
  {
    LODWORD(v11) = (*(*v10 + 24))(v10);
  }

  else
  {
    v11 = (*(a1 + 104) - *(a1 + 96)) >> 3;
  }

  if (v11 == 3)
  {
    v12 = ausdk::AUScope::GetElement((a1 + 80), 2u);
    if (v12)
    {
      (*(*v12 + 56))(v12, &v100);
      goto LABEL_12;
    }

LABEL_58:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_12:
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v14 & 1) == 0
    || ((*(*v13 + 40))(v13, 42), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 0, 4.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 1u, -65.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 2u, -65.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 3u, 7.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 4u, -120.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 5u, 2.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 6u, -20.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 7u, 2.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 8u, 3333.0), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 9u, 0.5), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xAu, 0.032), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xBu, 3.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xCu, -160.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0xDu, 4.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0xEu, 0.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0xFu, 1.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x10u, 0.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0x11u, 0.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x12u, 0.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x13u, 0.0), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x14u, 0.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v57, 0x15u, 0.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v59, 0x16u, 0.0), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v62 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v61, 0x17u, 1.0), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v64 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v63, 0x18u, 0.0), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v66 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v65, 0x19u, -160.0), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v68 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v67, 0x1Au, 30.0), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v70 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v69, 0x1Bu, 0.0), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v72 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v71, 0x1Cu, 300.0), v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v74 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v73, 0x1Du, 1800.0), v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v76 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v75, 0x1Eu, 0.03), v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v78 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v77, 0x1Fu, 0.0), v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v80 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v79, 0x20u, 0.0), v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v82 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v81, 0x21u, 0.0), v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v84 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v83, 0x22u, 0.0), v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v86 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v85, 0x24u, 0.0), v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v88 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v87, 0x25u, 0.0), v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v90 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v89, 0x26u, 1.0), v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v92 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v91, 0x27u, 0.0), v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v94 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v93, 0x28u, 0.64), v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v96 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v95, 0x29u, 0.64);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 64);
  v97 = *v4;
  *v4 = 0;
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

  *(a1 + 540) = 0;
  *(a1 + 544) = 0x3E8000000004;
  *(a1 + 552) = *(a1 + 336);
  *&v98 = 0x100000001;
  *(&v98 + 1) = 0x100000001;
  *(a1 + 556) = v98;
  *(a1 + 580) = 4;
  *(a1 + 584) = 0;
  *(a1 + 596) = 1;
  *(a1 + 600) = 0x41F00000C3200000;
  *(a1 + 608) = 0x4396000000000000;
  *(a1 + 616) = 0x3CF5C28F44E10000;
  *(a1 + 624) = 0u;
  *(a1 + 656) = xmmword_1DE09C8D0;
  *(a1 + 672) = xmmword_1DE09C850;
  *(a1 + 688) = xmmword_1DE09C8E0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0;
  *(a1 + 709) = 0;
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 784), 0);
  return a1;
}

void sub_1DDD3FD6C(_Unwind_Exception *a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v1 + 98, 0);
  v4 = v1[95];
  if (v4)
  {
    v1[96] = v4;
    operator delete(v4);
  }

  v5 = v1[92];
  if (v5)
  {
    v1[93] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoCancelerV5>::Factory()
{
  result = malloc_type_malloc(0x2F8uLL, 0x10F3040E9E33FB2uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoCancelerV5>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoCancelerV5>::Destruct;
  return result;
}

int32x4_t *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUEchoCancelerV5>::Construct(int32x4_t *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 6);
  *v3 = &unk_1F592D1C0;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 85) = 0;
  *(v3 + 688) = 0;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 80) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v161 = 0x40D5888000000000;
  v162 = xmmword_1DE09BD50;
  v163 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = a1[7].i64[1];
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (a1[6].i64[1] - a1[6].i64[0]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement(&a1[5], v4);
    if (!Element)
    {
LABEL_91:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v161);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[10].i64[1];
    if (v9)
    {
      LODWORD(v10) = (*(*v9 + 24))(v9);
    }

    else
    {
      v10 = (a1[9].i64[1] - a1[9].i64[0]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement(&a1[8], i);
    if (!v11)
    {
      goto LABEL_91;
    }

    (*(*v11 + 56))(v11, &v161);
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0);
  if ((v13 & 1) == 0
    || ((*(*v12 + 40))(v12, 72), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 0, 79.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 1u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 2u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 3u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 4u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 5u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 6u, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 7u, 0.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 8u, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 9u, 1.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xAu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xBu, 1.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0xCu, 220.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0xDu, 20.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0xEu, 100.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0xFu, 200.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x10u, 150.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x11u, -35.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x12u, 0.4), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x13u, -0.5), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x14u, -6.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x15u, -90.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x16u, 20.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x17u, 0.35), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x18u, 0.15), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x19u, 0.86), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Au, 0.5), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Bu, 30.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Cu, 1.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x1Du, 0.01), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x1Eu, 0.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x1Fu, 0.04), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x20u, 0.79), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v81 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v80, 0x21u, 0.0), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v83 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v82, 0x22u, 0.0), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v85 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v84, 0x23u, -3.0), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v87 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v86, 0x24u, 0.0), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v89 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v88, 0x25u, 0.0), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v91 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v90, 0x26u, 1.0), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v93 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v92, 0x27u, 1.0), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v95 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v94, 0x28u, 40.0), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v97 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v96, 0x29u, 200.0), v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v99 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v98, 0x2Au, 0.0), v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v101 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v100, 0x2Bu, 3.0), v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v103 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v102, 0x2Cu, 1.0), v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v105 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v104, 0x2Du, 0.0), v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v107 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v106, 0x2Eu, 1.0), v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v109 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v108, 0x2Fu, 1.0), v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v111 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v110, 0x30u, 1.0), v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v113 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v112, 0x31u, 1.0), v114 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v115 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v114, 0x32u, 1.0), v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v117 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v116, 0x33u, 1.0), v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v119 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v118, 0x34u, 1.0), v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v121 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v120, 0x35u, 1.0), v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v123 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v122, 0x36u, 1.0), v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v125 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v124, 0x37u, 1.0), v126 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v127 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v126, 0x38u, -80.458), v128 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v129 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v128, 0x3Bu, 0.0), v130 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v131 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v130, 0x39u, 0.0), v132 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v133 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v132, 0x3Au, 1.0), v134 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v135 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v134, 0x3Cu, -6.0), v136 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v137 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v136, 0x3Du, 10.0), v138 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v139 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v138, 0x3Eu, 6.0), v140 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v141 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v140, 0x3Fu, 40.0), v142 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v143 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v142, 0x40u, 0.0), v144 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v145 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v144, 0x41u, 0.0), v146 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v147 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v146, 0x42u, 0.0), v148 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v149 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v148, 0x43u, 0.0), v150 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v151 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v150, 0x44u, 0.0), v152 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v153 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v152, 0x45u, 0.0), v154 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v155 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v154, 0x46u, -26.0), v156 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v157 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v156, 0x47u, 0.0), a1[23].i8[8] = 1, (*(a1->i64[0] + 512))(a1, 480), a1[35] = vdupq_n_s32(0xC2C80000), a1[41].i64[0] = 0, a1[41].i32[2] = 1, v158 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1[2].i64, 0), (v159 & 1) == 0))
  {
    abort();
  }

  a1[42].i8[0] = ausdk::AUElement::GetParameter(v158, 0x41u) != 0.0;
  return a1;
}

void sub_1DDD40918(_Unwind_Exception *a1)
{
  v3 = *(v1 + 79);
  if (v3)
  {
    v4 = *(v1 + 80);
    if (v4 != v3)
    {
      *(v1 + 80) = &v4[(v3 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v3);
    *(v1 + 79) = 0;
    *(v1 + 80) = 0;
  }

  v5 = *(v1 + 77);
  if (v5)
  {
    v6 = *(v1 + 78);
    if (v6 != v5)
    {
      *(v1 + 78) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *(v1 + 77) = 0;
    *(v1 + 78) = 0;
  }

  v7 = *(v1 + 75);
  if (v7)
  {
    v8 = *(v1 + 76);
    if (v8 != v7)
    {
      *(v1 + 76) = &v8[(v7 - v8 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v7);
    *(v1 + 75) = 0;
    *(v1 + 76) = 0;
  }

  v9 = *(v1 + 73);
  if (v9)
  {
    v10 = *(v1 + 74);
    if (v10 != v9)
    {
      *(v1 + 74) = &v10[(v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v9);
    *(v1 + 73) = 0;
    *(v1 + 74) = 0;
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiChanEchoCanceler>::Factory()
{
  result = malloc_type_malloc(0x360uLL, 0x10F3040D009B789uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiChanEchoCanceler>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiChanEchoCanceler>::Destruct;
  return result;
}

int32x2_t *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMultiChanEchoCanceler>::Construct(int32x2_t *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 3);
  *v3 = &unk_1F59242F8;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 94) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v129 = 0x40D5888000000000;
  v130 = xmmword_1DE09BD50;
  v131 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = a1[15];
    if (v5)
    {
      LODWORD(v6) = (*(**&v5 + 24))(v5);
    }

    else
    {
      v6 = (*&a1[13] - *&a1[12]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement(&a1[10], v4);
    if (!Element)
    {
LABEL_74:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v129);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[21];
    if (v9)
    {
      LODWORD(v10) = (*(**&v9 + 24))(v9);
    }

    else
    {
      v10 = (*&a1[19] - *&a1[18]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement(&a1[16], i);
    if (!v11)
    {
      goto LABEL_74;
    }

    (*(*v11 + 56))(v11, &v129);
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0);
  if ((v13 & 1) == 0
    || ((*(*v12 + 40))(v12, 57), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 0, 79.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 1u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 2u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 3u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 4u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 5u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 6u, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 7u, 0.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 8u, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 9u, 1.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xAu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xBu, 1.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0xCu, 220.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0xDu, 20.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0xEu, 100.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0xFu, 200.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x10u, 150.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x11u, -35.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x12u, 0.4), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x13u, -0.5), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x14u, -6.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x15u, -90.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x16u, 20.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x17u, 0.35), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x18u, 0.15), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x19u, 0.86), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Au, 0.5), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Bu, 30.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Cu, 1.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x1Du, 0.01), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x1Eu, 1.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x1Fu, 0.04), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x20u, 0.79), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v81 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v80, 0x21u, 0.0), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v83 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v82, 0x22u, 0.0), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v85 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v84, 0x23u, -3.0), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v87 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v86, 0x24u, 0.0), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v89 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v88, 0x25u, 0.0), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v91 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v90, 0x26u, 1.0), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v93 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v92, 0x27u, 1.0), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v95 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v94, 0x28u, 40.0), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v97 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v96, 0x29u, 200.0), v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v99 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v98, 0x2Au, 0.0), v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v101 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v100, 0x2Bu, 3.0), v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v103 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v102, 0x2Cu, 1.0), v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v105 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v104, 0x2Du, 0.0), v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v107 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v106, 0x2Eu, 1.0), v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v109 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v108, 0x2Fu, 1.0), v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v111 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v110, 0x30u, 1.0), v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v113 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v112, 0x31u, 1.0), v114 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v115 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v114, 0x32u, 1.0), v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v117 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v116, 0x33u, 1.0), v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v119 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v118, 0x34u, 1.0), v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v121 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v120, 0x35u, 1.0), v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v123 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v122, 0x36u, 1.0), v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v125 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v124, 0x37u, 1.0), v126 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v127 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v126, 0x38u, -80.458);
  a1[47].i8[0] = 1;
  (*(*a1 + 512))(a1, 480);
  a1[85] = vdup_n_s32(0xC2C80000);
  a1[97] = 0;
  a1[98] = 0x100000001;
  a1[96] = 0x100000001;
  a1[99].i32[0] = 1065353216;
  a1[95].i32[1] = 0;
  return a1;
}

void sub_1DDD41380(_Unwind_Exception *a1)
{
  v3 = *(v1 + 93);
  if (v3)
  {
    v4 = *(v1 + 94);
    if (v4 != v3)
    {
      *(v1 + 94) = &v4[(v3 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v3);
    *(v1 + 93) = 0;
    *(v1 + 94) = 0;
  }

  v5 = *(v1 + 91);
  if (v5)
  {
    v6 = *(v1 + 92);
    if (v6 != v5)
    {
      *(v1 + 92) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *(v1 + 91) = 0;
    *(v1 + 92) = 0;
  }

  v7 = *(v1 + 89);
  if (v7)
  {
    v8 = *(v1 + 90);
    if (v8 != v7)
    {
      *(v1 + 90) = &v8[(v7 - v8 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v7);
    *(v1 + 89) = 0;
    *(v1 + 90) = 0;
  }

  v9 = *(v1 + 87);
  if (v9)
  {
    v10 = *(v1 + 88);
    if (v10 != v9)
    {
      *(v1 + 88) = &v10[(v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v9);
    *(v1 + 87) = 0;
    *(v1 + 88) = 0;
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULinearEchoCancelerV3>::Factory()
{
  result = malloc_type_malloc(0x340uLL, 0x10F30402B7E2E6FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULinearEchoCancelerV3>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULinearEchoCancelerV3>::Destruct;
  return result;
}

int32x2_t *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULinearEchoCancelerV3>::Construct(int32x2_t *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 3);
  *v3 = &unk_1F5923258;
  *(v3 + 528) = 0;
  *(v3 + 532) = 0;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 94) = 0;
  ausdk::AUBase::CreateElements(v3);
  v4 = 0;
  v99 = 0x40D5888000000000;
  v100 = xmmword_1DE09BD50;
  v101 = xmmword_1DE09BD60;
  while (1)
  {
    v5 = a1[15];
    if (v5)
    {
      LODWORD(v6) = (*(**&v5 + 24))(v5);
    }

    else
    {
      v6 = (*&a1[13] - *&a1[12]) >> 3;
    }

    if (v4 >= v6)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement(&a1[10], v4);
    if (!Element)
    {
LABEL_59:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, &v99);
    ++v4;
  }

  for (i = 0; ; ++i)
  {
    v9 = a1[21];
    if (v9)
    {
      LODWORD(v10) = (*(**&v9 + 24))(v9);
    }

    else
    {
      v10 = (*&a1[19] - *&a1[18]) >> 3;
    }

    if (i >= v10)
    {
      break;
    }

    v11 = ausdk::AUScope::GetElement(&a1[16], i);
    if (!v11)
    {
      goto LABEL_59;
    }

    (*(*v11 + 56))(v11, &v99);
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0);
  if ((v13 & 1) == 0
    || ((*(*v12 + 40))(v12, 42), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 0, 79.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 1u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 2u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 3u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 4u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 5u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 6u, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 7u, 0.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 8u, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 9u, 1.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xAu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xBu, 1.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0xCu, 220.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0xDu, 20.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0xEu, 100.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0xFu, 200.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x10u, 150.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x11u, -35.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x12u, 0.4), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x13u, -0.5), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x14u, -6.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x15u, -90.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x16u, 20.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x17u, 0.35), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x18u, 0.15), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x19u, 0.86), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Au, 0.5), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Bu, 30.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Cu, 1.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x1Du, 0.01), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x1Eu, 1.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x1Fu, 0.04), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x20u, 0.79), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v81 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v80, 0x21u, 0.0), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v83 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v82, 0x22u, 0.0), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v85 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v84, 0x23u, -3.0), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v87 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v86, 0x24u, 0.0), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v89 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v88, 0x25u, 0.0), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v91 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v90, 0x26u, 1.0), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v93 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v92, 0x27u, 1.0), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v95 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v94, 0x28u, 40.0), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&a1[4], 0), (v97 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v96, 0x29u, 200.0);
  a1[47].i8[0] = 1;
  (*(*a1 + 512))(a1, 480);
  a1[85] = vdup_n_s32(0xC2C80000);
  return a1;
}

void sub_1DDD41C24(_Unwind_Exception *a1)
{
  v3 = *(v1 + 93);
  if (v3)
  {
    v4 = *(v1 + 94);
    if (v4 != v3)
    {
      *(v1 + 94) = &v4[(v3 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v3);
    *(v1 + 93) = 0;
    *(v1 + 94) = 0;
  }

  v5 = *(v1 + 91);
  if (v5)
  {
    v6 = *(v1 + 92);
    if (v6 != v5)
    {
      *(v1 + 92) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *(v1 + 91) = 0;
    *(v1 + 92) = 0;
  }

  v7 = *(v1 + 89);
  if (v7)
  {
    v8 = *(v1 + 90);
    if (v8 != v7)
    {
      *(v1 + 90) = &v8[(v7 - v8 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v7);
    *(v1 + 89) = 0;
    *(v1 + 90) = 0;
  }

  v9 = *(v1 + 87);
  if (v9)
  {
    v10 = *(v1 + 88);
    if (v10 != v9)
    {
      *(v1 + 88) = &v10[(v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v9);
    *(v1 + 87) = 0;
    *(v1 + 88) = 0;
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAGCV2>::Factory()
{
  result = malloc_type_malloc(0x298uLL, 0x10F30409CEB1E3DuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAGCV2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAGCV2>::Destruct;
  return result;
}

_BYTE *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUAGCV2>::Construct(_BYTE *a1, OpaqueAudioComponentInstance *a2)
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
  *v3 = &unk_1F5931668;
  *(v3 + 596) = 0;
  ausdk::AUBase::CreateElements(v3);
  a1[376] = 1;
  (*(*a1 + 512))(a1, 128);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((a1 + 32), 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  (*(*v4 + 40))(v4, 65);
  ausdk::AUEffectBase::SetParameter(a1, 0, -100.0);
  ausdk::AUEffectBase::SetParameter(a1, 1u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 2u, 2.0);
  ausdk::AUEffectBase::SetParameter(a1, 3u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 4u, 0.8);
  ausdk::AUEffectBase::SetParameter(a1, 5u, 10.0);
  ausdk::AUEffectBase::SetParameter(a1, 6u, 10.0);
  ausdk::AUEffectBase::SetParameter(a1, 7u, 40.0);
  ausdk::AUEffectBase::SetParameter(a1, 8u, 3.0);
  ausdk::AUEffectBase::SetParameter(a1, 9u, -35.0);
  ausdk::AUEffectBase::SetParameter(a1, 0xAu, 0.06);
  ausdk::AUEffectBase::SetParameter(a1, 0xBu, 0.25);
  ausdk::AUEffectBase::SetParameter(a1, 0xCu, 18.0);
  ausdk::AUEffectBase::SetParameter(a1, 0xDu, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0xEu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0xFu, 12.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x10u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x11u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x12u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x13u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x14u, 60.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x15u, 0.5);
  ausdk::AUEffectBase::SetParameter(a1, 0x16u, 6.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x17u, 2.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x18u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x19u, 4.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Au, 0.5);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Bu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Cu, -12.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Du, 0.03);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Eu, 300.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x1Fu, 60.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x20u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x21u, 0.125);
  ausdk::AUEffectBase::SetParameter(a1, 0x22u, -48.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x23u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x24u, 0.4);
  ausdk::AUEffectBase::SetParameter(a1, 0x25u, -100.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x26u, 4.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x27u, 10.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x28u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x29u, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Au, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Bu, -30.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Cu, 3.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Du, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Eu, 200.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x2Fu, 18.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x30u, 12.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x31u, 0.9);
  ausdk::AUEffectBase::SetParameter(a1, 0x32u, 15.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x33u, 70.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x34u, 350.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x35u, 15.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x36u, 0.2);
  ausdk::AUEffectBase::SetParameter(a1, 0x37u, 0.08);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Cu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x38u, 50.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x39u, 15.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Au, 0.2);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Bu, 0.02);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Du, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x40u, 1.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Eu, 0.0);
  ausdk::AUEffectBase::SetParameter(a1, 0x3Fu, 1.0);
  v9[0] = xmmword_1DE109B40;
  v9[1] = unk_1DE109B50;
  v10 = 32;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, v9), (v7 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v7 + 56))(v7, v9);
  a1[584] = 1;
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCPMSVolumeV1>::Factory()
{
  result = malloc_type_malloc(0x2B8uLL, 0x10F30400B3EAA37uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCPMSVolumeV1>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCPMSVolumeV1>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCPMSVolumeV1>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F5933C38;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((v3 + 528));
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  ausdk::AUBase::CreateElements(a1);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  v6 = v4;
  ausdk::AUElement::SetParameter(v4, 0, 1.0);
  atomic_store(1u, (a1 + 616));
  ausdk::AUElement::SetParameter(v6, 1u, 10.0);
  atomic_store(1u, (a1 + 617));
  ausdk::AUElement::SetParameter(v6, 2u, 0.0);
  atomic_store(1u, (a1 + 618));
  ausdk::AUElement::SetParameter(v6, 3u, 0.0);
  atomic_store(1u, (a1 + 619));
  *a1 = &unk_1F59339E8;
  *(a1 + 624) = 0;
  if ((*(a1 + 537) & 1) == 0)
  {
    *(a1 + 537) = 1;
  }

  *(a1 + 536) = 0;
  return a1;
}

uint64_t AUPropHolder<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem,cpms::VolumeV1::Properties::PowerBudget>::~AUPropHolder(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(a1 + 16));
  }

  return a1;
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetParameterInfo(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956430;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      *(a4 + 56) = 0;
      *(a4 + 80) = 0;
      *(a4 + 84) = 0x3F80000000000000;
      *(a4 + 92) = 0xC000000000000000;
      v7 = "Volume level";
      goto LABEL_17;
    }

    if (a3 == 3)
    {
      *(a4 + 56) = 0;
      *(a4 + 80) = 0;
      *(a4 + 84) = 3253731328;
      *(a4 + 92) = 0x4000800000000000;
      v7 = "Output gain (dB)";
      goto LABEL_17;
    }
  }

  else
  {
    if (!a3)
    {
      *(a4 + 56) = 0;
      *(a4 + 80) = 4;
      *(a4 + 84) = 0x4120000000000000;
      *(a4 + 92) = 0xC00000003F800000;
      v7 = "Gain smoothing attack TC";
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      *(a4 + 56) = 0;
      *(a4 + 80) = 4;
      *(a4 + 84) = 0x41A0000000000000;
      *(a4 + 92) = 0xC000000041200000;
      v7 = "Gain smoothing release TC";
LABEL_17:
      v9 = CFStringCreateWithCString(0, v7, 0x8000100u);
      *(a4 + 72) = v9;
      *(a4 + 96) |= 0x8000010u;
      CFStringGetCString(v9, a4, 52, 0x8000100u);
      return 0;
    }
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  if (!AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v8 = MEMORY[0x1E69E9C10];
LABEL_19:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "AUTemplateBase.h";
      v12 = 1024;
      v13 = 725;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Parameter info for unsupported parameter (%u) requested", &v10, 0x18u);
    }

    return 4294956418;
  }

  v8 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
  if (*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    goto LABEL_19;
  }

  return 4294956418;
}

double AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetParameterList(uint64_t a1, int a2, _OWORD *a3, _DWORD *a4)
{
  if (!a2)
  {
    *a4 = 4;
    if (a3)
    {
      *&result = 0x100000000;
      *a3 = xmmword_1DE096230;
    }
  }

  return result;
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::SetParameter(ausdk::AUBase *a1, signed int a2, unsigned int a3, unsigned int a4, float a5)
{
  Scope = ausdk::AUBase::GetScope(a1, a3);
  Element = ausdk::AUScope::GetElement(Scope, a4);
  if (!Element)
  {
    return 4294956419;
  }

  v11 = 4294956418;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = 618;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v12 = 619;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
      v12 = 616;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v12 = 617;
LABEL_12:
      ausdk::AUElement::SetParameter(Element, a2, a5);
      v11 = 0;
      atomic_store(1u, a1 + v12);
    }
  }

  return v11;
}

uint64_t ausdk::AUBase::GetScope(ausdk::AUBase *this, unsigned int a2)
{
  if (a2 < 4)
  {
    return this + 48 * a2 + 32;
  }

  result = (*(*this + 408))(this);
  if (!result)
  {
    ausdk::ThrowQuiet(0);
  }

  return result;
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetParameter(ausdk::AUBase *a1, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  Scope = ausdk::AUBase::GetScope(a1, a3);
  Element = ausdk::AUScope::GetElement(Scope, a4);
  if (!Element)
  {
    return 4294956419;
  }

  if (a2 > 3)
  {
    return 4294956418;
  }

  Parameter = ausdk::AUElement::GetParameter(Element, a2);
  result = 0;
  *a5 = Parameter;
  return result;
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::SetProperty(uint64_t a1, int a2, int a3, uint64_t a4, const void **a5, int a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 64101)
  {
    if (a5)
    {
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v13 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "AUTemplateBase.h";
        *&buf[12] = 1024;
        *&buf[14] = 801;
        *&buf[18] = 1024;
        *&buf[20] = 64101;
        v65[0] = 2080;
        *&v65[1] = "Characterized amplifier system";
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to set data for property %u (%s)", buf, 0x22u);
      }

LABEL_86:
      if (a6 == 8)
      {
        v30 = *a5;
      }

      else
      {
        v30 = 0;
      }

      applesauce::CF::DictionaryRef::from_get(&v60, v30);
      if (v60)
      {
        v31 = applesauce::CF::details::at_key<char const(&)[9]>(v60, "PowerLUT");
        if (v31)
        {
          v32 = v31;
          CFRetain(v31);
          theArray = v32;
          v33 = CFGetTypeID(v32);
          if (v33 != CFArrayGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          *&buf[8] = 0uLL;
          *buf = &buf[8];
          v34 = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            v36 = theArray;
            if (theArray)
            {
              v58 = CFArrayGetCount(theArray);
            }

            else
            {
              v58 = 0;
            }

            if (Count)
            {
              for (i = 0; i != Count; ++i)
              {
                if (v34 == v36 && i == v58)
                {
                  break;
                }

                applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v34, i);
                if (!cf)
                {
                  v48 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v48, "Could not construct");
                }

                v40 = applesauce::CF::details::at_key<char const(&)[12]>(cf, "VolumeLevel");
                if (!v40)
                {
                  v50 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v50, "Could not find item");
                }

                v41 = applesauce::CF::convert_to<float,0>(v40);
                if (!cf)
                {
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v49, "Could not construct");
                }

                v42 = v41;
                v43 = applesauce::CF::details::at_key<char const(&)[13]>(cf, "Measurements");
                if (!v43)
                {
                  v51 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v51, "Could not find item");
                }

                applesauce::CF::DictionaryRef::from_get(&v62, v43);
                if (!v62)
                {
                  goto LABEL_179;
                }

                if (applesauce::CF::details::has_key<char const* const&>(v62, "power_inst"))
                {
                  if (!v62)
                  {
                    goto LABEL_179;
                  }

                  applesauce::CF::details::find_at_key<int,char const* const&>(v62, "power_inst");
                }

                if (!v62)
                {
                  goto LABEL_179;
                }

                if (applesauce::CF::details::has_key<char const* const&>(v62, "power_100ms"))
                {
                  if (!v62)
                  {
                    goto LABEL_179;
                  }

                  applesauce::CF::details::find_at_key<int,char const* const&>(v62, "power_100ms");
                }

                if (!v62)
                {
                  goto LABEL_179;
                }

                if (applesauce::CF::details::has_key<char const* const&>(v62, "power_1000ms"))
                {
                  if (!v62)
                  {
                    goto LABEL_179;
                  }

                  applesauce::CF::details::find_at_key<int,char const* const&>(v62, "power_1000ms");
                }

                if (!v62)
                {
LABEL_179:
                  v52 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v52, "Could not construct");
                }

                if (applesauce::CF::details::has_key<char const* const&>(v62, "power_thermal"))
                {
                  if (!v62)
                  {
                    goto LABEL_179;
                  }

                  applesauce::CF::details::find_at_key<int,char const* const&>(v62, "power_thermal");
                }

                v44 = *&buf[8];
                if (!*&buf[8])
                {
LABEL_143:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v45 = v44;
                    v46 = *(v44 + 7);
                    if (v42 >= v46)
                    {
                      break;
                    }

                    v44 = *v44;
                    if (!*v45)
                    {
                      goto LABEL_143;
                    }
                  }

                  if (v46 >= v42)
                  {
                    break;
                  }

                  v44 = v44[1];
                  if (!v44)
                  {
                    goto LABEL_143;
                  }
                }

                if (v62)
                {
                  CFRelease(v62);
                }

                if (cf)
                {
                  CFRelease(cf);
                }
              }
            }

            if (theArray)
            {
              CFRelease(theArray);
            }
          }

          if (v60)
          {
            applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[19]>(&cf, v60, "AmpEfficiencyCoefs");
            cpms::efficiency::AmpModelFactory(v65, &cf);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v56, "Could not construct");
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v54, "Could not find item");
      }

      else
      {
        v54 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v54, "Could not construct");
      }
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v16 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
LABEL_162:
        if (*(a1 + 584) != 1)
        {
          return 0;
        }

        v47 = *(a1 + 568);
        *(a1 + 568) = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }

        std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(a1 + 552));
        result = 0;
        *(a1 + 584) = 0;
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "AUTemplateBase.h";
      *&buf[12] = 1024;
      *&buf[14] = 796;
      *&buf[18] = 1024;
      *&buf[20] = 64101;
      v65[0] = 2080;
      *&v65[1] = "Characterized amplifier system";
      _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Clearing the value of property %u (%s)", buf, 0x22u);
    }

    goto LABEL_162;
  }

  if (a2 != 64100)
  {
    if (a2 == 21)
    {
      if (a5)
      {
        if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
        {
          dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
        }

        if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          v11 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
          if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "AUTemplateBase.h";
          *&buf[12] = 1024;
          *&buf[14] = 801;
          *&buf[18] = 1024;
          *&buf[20] = 21;
          v65[0] = 2080;
          *&v65[1] = "Bypass";
          _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to set data for property %u (%s)", buf, 0x22u);
        }

LABEL_98:
        if (a6 != 4)
        {
          v53 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v53, "PODProp constructor: inDataSize did not match the given type.");
        }

        v37 = *a5 != 0;
        if ((*(a1 + 537) & 1) == 0)
        {
          *(a1 + 537) = 1;
        }

        *(a1 + 536) = v37;
        if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
        {
          dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
        }

        if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          v29 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
          if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
          {
            return 0;
          }
        }

        else
        {
          v29 = MEMORY[0x1E69E9C10];
        }

        result = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
        if (result)
        {
          *buf = 136315906;
          *&buf[4] = "AUTemplateBase.h";
          *&buf[12] = 1024;
          *&buf[14] = 812;
          *&buf[18] = 1024;
          *&buf[20] = 21;
          v65[0] = 2080;
          v38 = "Bypass";
LABEL_171:
          *&v65[1] = v38;
          _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully set data for property %u (%s)", buf, 0x22u);
          return 0;
        }

        return result;
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v17 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "AUTemplateBase.h";
        *&buf[12] = 1024;
        *&buf[14] = 796;
        *&buf[18] = 1024;
        *&buf[20] = 21;
        v65[0] = 2080;
        *&v65[1] = "Bypass";
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Clearing the value of property %u (%s)", buf, 0x22u);
      }

LABEL_169:
      if (*(a1 + 537) == 1)
      {
        result = 0;
        *(a1 + 537) = 0;
        return result;
      }

      return 0;
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v14 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 4294956417;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AUTemplateBase.h";
      *&buf[12] = 1024;
      *&buf[14] = 824;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempting to set an unsupported property: %u", buf, 0x18u);
    }

    return 4294956417;
  }

  if (!a5)
  {
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v15 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
LABEL_156:
        if (*(a1 + 608) == 1)
        {
          *(a1 + 608) = 0;
        }

        result = 0;
        atomic_store(1u, (a1 + 620));
        return result;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "AUTemplateBase.h";
      *&buf[12] = 1024;
      *&buf[14] = 796;
      *&buf[18] = 1024;
      *&buf[20] = 64100;
      v65[0] = 2080;
      *&v65[1] = "Power budget";
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Clearing the value of property %u (%s)", buf, 0x22u);
    }

    goto LABEL_156;
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  if (!AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v12 = MEMORY[0x1E69E9C10];
LABEL_50:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "AUTemplateBase.h";
      *&buf[12] = 1024;
      *&buf[14] = 801;
      *&buf[18] = 1024;
      *&buf[20] = 64100;
      v65[0] = 2080;
      *&v65[1] = "Power budget";
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Attempting to set data for property %u (%s)", buf, 0x22u);
    }

    goto LABEL_52;
  }

  v12 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
  if (*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    goto LABEL_50;
  }

LABEL_52:
  if (a6 == 8)
  {
    v18 = *a5;
  }

  else
  {
    v18 = 0;
  }

  applesauce::CF::DictionaryRef::from_get(&cf, v18);
  if (!cf)
  {
    goto LABEL_189;
  }

  if (applesauce::CF::details::has_key<char const* const&>(cf, "cpms_ts_i"))
  {
    if (!cf)
    {
      goto LABEL_189;
    }

    v19 = applesauce::CF::details::find_at_key<int,char const* const&>(cf, "cpms_ts_i");
    v20.i32[0] = 1112014848;
    v21 = vdupq_lane_s32(v20, 0);
    *v21.i32 = v19 / 1000.0;
    v59 = v21;
  }

  else
  {
    v59 = vdupq_n_s32(0x42480000u);
  }

  if (!cf)
  {
    goto LABEL_189;
  }

  if (applesauce::CF::details::has_key<char const* const&>(cf, "cpms_ts_100"))
  {
    if (!cf)
    {
      goto LABEL_189;
    }

    v22 = applesauce::CF::details::find_at_key<int,char const* const&>(cf, "cpms_ts_100");
    v23 = v59;
    *&v23.i32[1] = v22 / 1000.0;
    v59 = v23;
  }

  if (!cf)
  {
    goto LABEL_189;
  }

  if (applesauce::CF::details::has_key<char const* const&>(cf, "cpms_ts_1000"))
  {
    if (!cf)
    {
      goto LABEL_189;
    }

    v24 = applesauce::CF::details::find_at_key<int,char const* const&>(cf, "cpms_ts_1000");
    v25 = v59;
    *&v25.i32[2] = v24 / 1000.0;
    v59 = v25;
  }

  if (!cf)
  {
    goto LABEL_189;
  }

  if (!applesauce::CF::details::has_key<char const* const&>(cf, "cpms_ts_thermal"))
  {
    goto LABEL_72;
  }

  if (!cf)
  {
LABEL_189:
    v57 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v57, "Could not construct");
  }

  v26 = applesauce::CF::details::find_at_key<int,char const* const&>(cf, "cpms_ts_thermal");
  v27 = v59;
  *&v27.i32[3] = v26 / 1000.0;
  v59 = v27;
LABEL_72:
  if (cf)
  {
    CFRelease(cf);
  }

  caulk::pooled_semaphore_mutex::_lock((a1 + 528));
  if (atomic_load_explicit((a1 + 620), memory_order_acquire))
  {
    atomic_store(0, (a1 + 620));
  }

  v28 = *(a1 + 608);
  *(a1 + 592) = v59;
  if ((v28 & 1) == 0)
  {
    *(a1 + 608) = 1;
  }

  atomic_store(1u, (a1 + 620));
  caulk::pooled_semaphore_mutex::_unlock((a1 + 528));
  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v29 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
    if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136315906;
    *&buf[4] = "AUTemplateBase.h";
    *&buf[12] = 1024;
    *&buf[14] = 812;
    *&buf[18] = 1024;
    *&buf[20] = 64100;
    v65[0] = 2080;
    v38 = "Power budget";
    goto LABEL_171;
  }

  return result;
}

void sub_1DDD43E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, const void *a25, uint64_t a26, uint64_t a27, __int128 buf, __int16 a29, __int16 a30, int a31, __int128 a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v32);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a25);
  __cxa_begin_catch(exception_object);
  if (*(v34 + 3952) != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  v36 = *(v33 + 3960);
  if (v36)
  {
    v37 = *v36;
    if (!*v36)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315906;
    *(&buf + 4) = "AUTemplateBase.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 807;
    a30 = 1024;
    a31 = 64100;
    LOWORD(a32) = 2080;
    *(&a32 + 2) = "Power budget";
    _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set data for property %u (%s)", &buf, 0x22u);
  }

LABEL_12:
  __cxa_end_catch();
  JUMPOUT(0x1DDD42AD0);
}

BOOL applesauce::CF::details::has_key<char const* const&>(_BOOL8 a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    v8 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (!a1)
    {
LABEL_4:
      if (!v5)
      {
        return a1;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  a1 = CFDictionaryContainsKey(a1, v5) != 0;
  v5 = v8;
  if (v8)
  {
LABEL_8:
    CFRelease(v5);
  }

  return a1;
}

void sub_1DDD44450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key<int,char const* const&>(const __CFDictionary *a1, char *a2)
{
  v2 = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<int,0>(v2);
}

const void *applesauce::CF::details::at_key<char const* const&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_1DDD445C0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDD445ACLL);
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1DE09C010);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_1DE09C020), xmmword_1DE09C030);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::DictionaryRef,char const(&)[19]>(void *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const(&)[19]>(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, v4);
}

void cpms::efficiency::AmpModelFactory(cpms::efficiency *this, const __CFDictionary **a2)
{
  if (*a2)
  {
    v2 = applesauce::CF::details::at_key<char const(&)[13]>(*a2, "AmpModelType");
    if (v2)
    {
      applesauce::CF::convert_to<std::string,0>(v16, v2);
      if (v17 < 0)
      {
        if (*&v16[8] <= 13)
        {
          if (*&v16[8] != 5)
          {
            if (*&v16[8] != 8)
            {
              goto LABEL_54;
            }

            v3 = **v16;
            goto LABEL_12;
          }

          v8 = *v16;
          goto LABEL_42;
        }

        if (*&v16[8] != 14)
        {
          if (*&v16[8] == 19)
          {
            v6 = **v16 == 0x6974617264617551 && *(*v16 + 8) == 0x6F4D74736F6F4263;
            if (v6 && *(*v16 + 11) == 0x6C65646F4D74736FLL)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_54;
        }

        if (**v16 != 0x6974617264617551 || *(*v16 + 6) != 0x6C65646F4D636974)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v17 <= 0xDu)
        {
          if (v17 != 5)
          {
            if (v17 != 8)
            {
              goto LABEL_54;
            }

            v3 = *v16;
LABEL_12:
            if (v3 == 0x6C65646F4D676F4CLL)
            {
              operator new();
            }

            goto LABEL_54;
          }

          v8 = v16;
LABEL_42:
          v10 = *v8;
          v11 = v8[4];
          if (v10 == 1835889988 && v11 == 121)
          {
            operator new();
          }

          goto LABEL_54;
        }

        if (v17 != 14)
        {
          if (v17 != 19)
          {
            goto LABEL_54;
          }

          v4 = *v16 == 0x6974617264617551 && *&v16[8] == 0x6F4D74736F6F4263;
          if (!v4 || *&v16[11] != 0x6C65646F4D74736FLL)
          {
            goto LABEL_54;
          }

LABEL_34:
          operator new();
        }

        if (*v16 != 0x6974617264617551 || *&v16[6] != 0x6C65646F4D636974)
        {
LABEL_54:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "No valid AmpModelType entry found in plist.");
        }
      }

      operator new();
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v15);
  }

  else
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v15);
  }
}

void sub_1DDD45368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  MEMORY[0x1E12BD160](v22, 0x1081C402C4B44A1);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

float applesauce::CF::details::find_at_key<float,char const(&)[18]>(const __CFDictionary *a1, char *a2)
{
  v2 = applesauce::CF::details::at_key<char const(&)[18]>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(v2);
}

const void *applesauce::CF::details::at_key<char const(&)[18]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DDD45628(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDD455D8);
}

void cpms::efficiency::Dummy<float>::CreateCFDictionary(CFDictionaryRef *a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithBytes(0, "AmpModelType", 12, 0x8000100u, 0);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = CFStringCreateWithBytes(0, "Dummy", 5, 0x8000100u, 0);
  if (!v4)
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v3, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v7, v5, &v4);
  v6[0] = &v7;
  v6[1] = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1DDD457FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

float cpms::efficiency::Dummy<float>::ComputePower(uint64_t a1, float **a2)
{
  v2 = *a2;
  result = 0.0;
  while (v2 != a2[1])
  {
    v4 = *v2++;
    result = result + v4;
  }

  return result;
}

float applesauce::CF::details::find_at_key<float,char const(&)[2]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  if (!Value)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v9);
  }

  return applesauce::CF::convert_to<float,0>(Value);
}

float applesauce::CF::details::find_at_key<float,char const(&)[11]>(const __CFDictionary *a1, const UInt8 *a2)
{
  v2 = applesauce::CF::details::at_key<char const(&)[11]>(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<float,0>(v2);
}

void cpms::efficiency::LogModel<float>::toString(float *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v33, a1[2]);
  v4 = std::string::append(&v33, " * ln(x - ", 0xAuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v32, a1[3]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v32;
  }

  else
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v34, v6, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v35, ") + ", 4uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v31, a1[4]);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v31;
  }

  else
  {
    v12 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v31.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v36, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v37, ", for x in [", 0xCuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v30, a1[5]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v30;
  }

  else
  {
    v18 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v30.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v38, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v39, ", ", 2uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v29, a1[6]);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v29;
  }

  else
  {
    v24 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v29.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v40, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v41, "]", 1uLL);
  *a2 = *v28;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1DDD45E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 57) < 0)
  {
    operator delete(*(v59 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v59 - 89) < 0)
  {
    operator delete(*(v59 - 112));
  }

  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (*(v59 - 185) < 0)
  {
    operator delete(*(v59 - 208));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void cpms::efficiency::LogModel<float>::CreateCFDictionary(_DWORD *a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = CFStringCreateWithBytes(0, "a", 1, 0x8000100u, 0);
  if (!v30)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  LODWORD(valuePtr) = a1[2];
  v29 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!v29)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v32, v30, &v29);
  valuePtr = CFStringCreateWithBytes(0, "b", 1, 0x8000100u, 0);
  if (!valuePtr)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  LODWORD(v26) = a1[3];
  v27 = CFNumberCreate(0, kCFNumberFloatType, &v26);
  if (!v27)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v33, valuePtr, &v27);
  v26 = CFStringCreateWithBytes(0, "c", 1, 0x8000100u, 0);
  if (!v26)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  LODWORD(v24) = a1[4];
  v25 = CFNumberCreate(0, kCFNumberFloatType, &v24);
  if (!v25)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v34, v26, &v25);
  v24 = CFStringCreateWithBytes(0, "rangeMin_W", 10, 0x8000100u, 0);
  if (!v24)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  LODWORD(v22) = a1[5];
  v23 = CFNumberCreate(0, kCFNumberFloatType, &v22);
  if (!v23)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v35, v24, &v23);
  v22 = CFStringCreateWithBytes(0, "rangeMax_W", 10, 0x8000100u, 0);
  if (!v22)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
  }

  LODWORD(v20) = a1[6];
  v21 = CFNumberCreate(0, kCFNumberFloatType, &v20);
  if (!v21)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v36, v22, &v21);
  v20 = CFStringCreateWithBytes(0, "AmpModelType", 12, 0x8000100u, 0);
  if (!v20)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
  }

  cf = CFStringCreateWithBytes(0, "LogModel", 8, 0x8000100u, 0);
  if (!cf)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v37, v20, &cf);
  v31[0] = v32;
  v31[1] = 6;
  v4 = 0;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v31);
  do
  {
    v5 = v37[v4 + 1];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v37[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 2;
  }

  while (v4 != -12);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void sub_1DDD465D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, const void *a20, const void *a21, uint64_t a22, uint64_t a23, char a24)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  applesauce::CF::StringRef::~StringRef(&a11);
  applesauce::CF::NumberRef::~NumberRef(&a12);
  applesauce::CF::StringRef::~StringRef(&a13);
  applesauce::CF::NumberRef::~NumberRef(&a14);
  applesauce::CF::StringRef::~StringRef(&a15);
  applesauce::CF::NumberRef::~NumberRef(&a16);
  applesauce::CF::StringRef::~StringRef(&a17);
  applesauce::CF::NumberRef::~NumberRef(&a18);
  applesauce::CF::StringRef::~StringRef(&a19);
  applesauce::CF::NumberRef::~NumberRef(&a20);
  applesauce::CF::StringRef::~StringRef(&a21);
  while (v24 != &a24)
  {
    v24 = (v24 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v24);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

float cpms::efficiency::LogModel<float>::ComputePower(float *a1, float **a2)
{
  v2 = a1[6];
  if (v2 >= **a2)
  {
    v2 = **a2;
  }

  if (a1[5] >= v2)
  {
    v3 = a1[5];
  }

  else
  {
    v3 = v2;
  }

  v4 = a1[2];
  return v3 * (a1[4] + (v4 * logf(v3 - a1[3])));
}

void *cpms::Polynomial<float,1ul>::Polynomial(void *result, void *a2, uint64_t a3)
{
  *result = 0;
  if (a3 - a2 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v4, 2uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v5, "Polynomial needs ", &v4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, &v5, " coefficients");
    std::runtime_error::runtime_error(exception, &v6);
  }

  *result = *a2;
  return result;
}

void sub_1DDD46AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

uint64_t cpms::Polynomial<float,2ul>::Polynomial(uint64_t result, uint64_t **a2)
{
  *result = 0;
  *(result + 4) = 0;
  v2 = *a2;
  if (a2[1] - *a2 != 12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v5, 3uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v6, "Polynomial needs ", &v5);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, &v6, " coefficients");
    std::runtime_error::runtime_error(exception, &v7);
  }

  v3 = *v2;
  *(result + 8) = *(v2 + 2);
  *result = v3;
  return result;
}

void sub_1DDD46BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void cpms::efficiency::QuadraticBoostModel<float>::CreateCFDictionary(_DWORD *a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v41 = CFStringCreateWithBytes(0, "high_power_coefs", 16, 0x8000100u, 0);
  if (!v41)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  cpms::Polynomial<float,1ul>::as_vector(v39, (a1 + 2));
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(v39);
  v40 = CFArray;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(v43, v41, &v40);
  v38 = CFStringCreateWithBytes(0, "low_power_coefs", 15, 0x8000100u, 0);
  if (!v38)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  cpms::Polynomial<float,1ul>::as_vector(v36, (a1 + 4));
  v5 = applesauce::CF::details::make_CFArrayRef<float>(v36);
  v37 = v5;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(&v44, v38, &v37);
  v35 = CFStringCreateWithBytes(0, "boost_coefs", 11, 0x8000100u, 0);
  if (!v35)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  cpms::Polynomial<float,2ul>::as_vector(__p, (a1 + 6));
  v6 = applesauce::CF::details::make_CFArrayRef<float>(__p);
  v34 = v6;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(&v45, v35, &v34);
  v32 = CFStringCreateWithBytes(0, "high_power_threshold", 20, 0x8000100u, 0);
  if (!v32)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  LODWORD(valuePtr) = a1[9];
  v31 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!v31)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v46, v32, &v31);
  valuePtr = CFStringCreateWithBytes(0, "rangeMin_W", 10, 0x8000100u, 0);
  if (!valuePtr)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
  }

  LODWORD(v28) = a1[10];
  v29 = CFNumberCreate(0, kCFNumberFloatType, &v28);
  if (!v29)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v47, valuePtr, &v29);
  v28 = CFStringCreateWithBytes(0, "rangeMax_W", 10, 0x8000100u, 0);
  if (!v28)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
  }

  LODWORD(v26) = a1[11];
  v27 = CFNumberCreate(0, kCFNumberFloatType, &v26);
  if (!v27)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v48, v28, &v27);
  v26 = CFStringCreateWithBytes(0, "power_multiplier", 16, 0x8000100u, 0);
  if (!v26)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
  }

  LODWORD(v24) = a1[12];
  v25 = CFNumberCreate(0, kCFNumberFloatType, &v24);
  if (!v25)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v49, v26, &v25);
  v24 = CFStringCreateWithBytes(0, "AmpModelType", 12, 0x8000100u, 0);
  if (!v24)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
  }

  cf = CFStringCreateWithBytes(0, "QuadraticBoostModel", 19, 0x8000100u, 0);
  if (!cf)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v50, v24, &cf);
  v42[0] = v43;
  v42[1] = 8;
  v7 = 0;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v42);
  do
  {
    v8 = v50[v7 + 1];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v50[v7];
    if (v9)
    {
      CFRelease(v9);
    }

    v7 -= 2;
  }

  while (v7 != -16);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (CFArray)
  {
    CFRelease(CFArray);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v41)
  {
    CFRelease(v41);
  }
}

void sub_1DDD47424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, void *__p, uint64_t a20, uint64_t a21, const void *a22, const void *a23, void *a24, uint64_t a25, uint64_t a26, const void *a27, const void *a28, void *a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::NumberRef::~NumberRef(&a11);
  applesauce::CF::StringRef::~StringRef(&a12);
  applesauce::CF::NumberRef::~NumberRef(&a13);
  applesauce::CF::StringRef::~StringRef(&a14);
  applesauce::CF::NumberRef::~NumberRef(&a15);
  applesauce::CF::StringRef::~StringRef(&a16);
  applesauce::CF::NumberRef::~NumberRef(&a17);
  applesauce::CF::StringRef::~StringRef(&a18);
  applesauce::CF::ArrayRef::~ArrayRef(&a22);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a27);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  applesauce::CF::StringRef::~StringRef(&a28);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  applesauce::CF::StringRef::~StringRef(&a33);
  if ((v34 - 200) != v33)
  {
    do
    {
      v33 = (v33 - 16);
      applesauce::CF::TypeRefPair::~TypeRefPair(v33);
    }

    while (v33 != (v34 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t cpms::Polynomial<float,1ul>::as_vector(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1, a2, a2 + 8, 2uLL);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t cpms::Polynomial<float,2ul>::as_vector(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1, a2, a2 + 12, 3uLL);
}

uint64_t cpms::efficiency::QuadraticBoostModel<float>::ComputeNeededPowerGain(float *a1, float *a2, float **a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v5 = a3[1];
  MEMORY[0x1EEE9AC00](a1);
  v8 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v46 - v10);
  v12 = v5 - v6;
  if (v5 == v6)
  {
    result = std::__sort<std::__less<float,float> &,float *>();
  }

  else
  {
    v13 = a1[10];
    v14 = a1[11];
    v15 = v8;
    v16 = v6;
    do
    {
      v17 = *v16++;
      v18 = v17;
      if (v14 < v17)
      {
        v18 = v14;
      }

      if (v13 >= v18)
      {
        v18 = v13;
      }

      *v15++ = v18;
    }

    while (v16 != v5);
    result = std::__sort<std::__less<float,float> &,float *>();
    v20 = *v8;
    *v11 = *v8;
    v21 = v12 - 4;
    if (v12 != 4)
    {
      v22 = v8 + 1;
      v23 = (v11 + 1);
      do
      {
        v24 = *v22++;
        v20 = v20 + v24;
        *v23++ = v20;
        v21 -= 4;
      }

      while (v21);
    }
  }

  v25 = 0;
  v26 = *a2;
  v27 = 2.0;
  v28 = 0.0;
  do
  {
    v29 = (v27 + v28) * 0.5;
    if (v6 == v5)
    {
      v38 = 0;
    }

    else
    {
      v30 = v8;
      v31 = v12 >> 2;
      do
      {
        v32 = v31 >> 1;
        v33 = &v30[v31 >> 1];
        v35 = *v33;
        v34 = v33 + 1;
        v31 += ~(v31 >> 1);
        if (v35 < (a1[9] / v29))
        {
          v30 = v34;
        }

        else
        {
          v31 = v32;
        }
      }

      while (v31);
      v37 = v30 - v8;
      v36 = v30 == v8;
      v38 = v30 - v8;
      if (!v36)
      {
        v39 = *(v11 + v37 - 4);
        goto LABEL_24;
      }
    }

    v39 = 0.0;
LABEL_24:
    v40 = (a1[4] * v38) + (v29 * a1[5]) * v39 + 0.0;
    v41 = (a1[2] * ((v12 >> 2) - v38)) + (v29 * a1[3]) * (*(v11 + v12 - 4) - v39);
    v42 = v41 * 100.0;
    *&v41 = v41;
    *&v41 = v42 / (a1[6] + ((a1[7] + (a1[8] * *&v41)) * *&v41)) + v40;
    v43 = v26 < *&v41;
    v44 = v26 <= *&v41;
    v45 = (v27 + v28) * 0.5;
    if (v44)
    {
      v27 = (v27 + v28) * 0.5;
      v45 = v28;
      if (!v43)
      {
        break;
      }
    }

    ++v25;
    v28 = v45;
  }

  while (v25 != 8);
  return result;
}

float cpms::efficiency::QuadraticBoostModel<float>::ComputePower(float *a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      if (a1[11] >= *v2)
      {
        v6 = *v2;
      }

      else
      {
        v6 = a1[11];
      }

      if (a1[10] >= v6)
      {
        v6 = a1[10];
      }

      if (*v2 >= a1[9])
      {
        v4 = v4 + (a1[2] + (a1[3] * v6));
      }

      else
      {
        v5 = v5 + (a1[4] + (a1[5] * v6));
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return a1[12] * (v5 + (v4 / ((a1[6] + (v4 * ((v4 * a1[8]) + a1[7]))) / 100.0)));
}

void applesauce::CF::convert_to<std::vector<float>,0>(std::vector<unsigned int> *a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  Count = CFArrayGetCount(a2);
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  a1->__begin_ = 0;
  std::vector<unsigned int>::reserve(a1, Count);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      v9 = applesauce::CF::convert_to<float,0>(ValueAtIndex);
      end = a1->__end_;
      value = a1->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a1->__begin_;
        v14 = end - a1->__begin_;
        v15 = v14 >> 2;
        v16 = (v14 >> 2) + 1;
        if (v16 >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v17 = value - begin;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](a1, v18);
        }

        *(4 * v15) = v9;
        v12 = 4 * v15 + 4;
        memcpy(0, begin, v14);
        v19 = a1->__begin_;
        a1->__begin_ = 0;
        a1->__end_ = v12;
        a1->__end_cap_.__value_ = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *end = v9;
        v12 = (end + 1);
      }

      a1->__end_ = v12;
      ++v6;
    }

    while (v7 != v6);
  }
}

void cpms::efficiency::QuadraticModel<float>::toString(float *a1@<X0>, std::string *a2@<X8>)
{
  v20 = 0;
  v4 = a1 + 5;
  cpms::efficiency::QuadraticModel<float>::toString_impl<float const*>(&v21, &v20, a1 + 2, a1 + 5);
  v5 = std::string::append(&v21, ", for x in [", 0xCuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *v4);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v19;
  }

  else
  {
    v7 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v22, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v23, ", ", 2uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1[6]);
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
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v24, p_p, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v25, "]", 1uLL);
  *a2 = *v17;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1DDD47F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void cpms::efficiency::QuadraticModel<float>::toString_impl<float const*>(std::string *a1, int *a2, float *a3, float *a4)
{
  if (a3 == a4)
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  else
  {
    std::to_string(&v29, *a3);
    v8 = *a2;
    if (*a2 < 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
    }

    else
    {
      std::to_string(&v25, *a2);
      v9 = std::string::insert(&v25, 0, " * x^", 5uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v27 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
    }

    if (v27 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v27 >= 0)
    {
      v12 = HIBYTE(v27);
    }

    else
    {
      v12 = __p[1];
    }

    v13 = std::string::append(&v29, v11, v12);
    v28 = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 >= 1 && SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v24 = *a2 + 1;
    cpms::efficiency::QuadraticModel<float>::toString_impl<float const*>(__p, &v24, a3 + 1, a4);
    v14 = HIBYTE(v27);
    if (v27 < 0)
    {
      v14 = __p[1];
    }

    if (v14)
    {
      v15 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v17 = &v29;
      std::string::basic_string[abi:ne200100](&v29, size + 3);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v29.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v15 & 0x80000000) == 0)
        {
          v18 = &v28;
        }

        else
        {
          v18 = v28.__r_.__value_.__r.__words[0];
        }

        memmove(v17, v18, size);
      }

      *(&v17->__r_.__value_.__l.__data_ + size) = 2108192;
      if (v27 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v27 >= 0)
      {
        v20 = HIBYTE(v27);
      }

      else
      {
        v20 = __p[1];
      }

      v21 = std::string::append(&v29, v19, v20);
      v22 = v15 >> 63;
      v23 = *&v21->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&a1->__r_.__value_.__l.__data_ = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      LODWORD(v22) = 1;
    }

    else
    {
      LODWORD(v22) = 0;
      *a1 = v28;
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
      if (!v22)
      {
        return;
      }
    }

    else if (!v22)
    {
      return;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1DDD482BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void cpms::efficiency::QuadraticModel<float>::CreateCFDictionary(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v23 = CFStringCreateWithBytes(0, "rangeMin_W", 10, 0x8000100u, 0);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  LODWORD(valuePtr[0]) = *(a1 + 20);
  v22 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  if (!v22)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v25, v23, &v22);
  v21 = CFStringCreateWithBytes(0, "rangeMax_W", 10, 0x8000100u, 0);
  if (!v21)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  LODWORD(valuePtr[0]) = *(a1 + 24);
  v20 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  if (!v20)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::NumberRef>(&v26, v21, &v20);
  v19 = CFStringCreateWithBytes(0, "coefs", 5, 0x8000100u, 0);
  if (!v19)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  cpms::Polynomial<float,2ul>::as_vector(valuePtr, a1 + 8);
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(valuePtr);
  v18 = CFArray;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(&v27, v19, &v18);
  v16 = CFStringCreateWithBytes(0, "AmpModelType", 12, 0x8000100u, 0);
  if (!v16)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  cf = CFStringCreateWithBytes(0, "QuadraticModel", 14, 0x8000100u, 0);
  if (!cf)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef>(v28, v16, &cf);
  v24[0] = v25;
  v24[1] = 4;
  v5 = 0;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v24);
  do
  {
    v6 = v28[v5 + 1];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v28[v5];
    if (v7)
    {
      CFRelease(v7);
    }

    v5 -= 2;
  }

  while (v5 != -8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (CFArray)
  {
    CFRelease(CFArray);
  }

  if (valuePtr[0])
  {
    valuePtr[1] = valuePtr[0];
    operator delete(valuePtr[0]);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void sub_1DDD48788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, const void *a15, const void *a16, const void *a17, const void *a18, const void *a19, uint64_t a20, uint64_t a21, char a22)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::ArrayRef::~ArrayRef(&a14);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a15);
  applesauce::CF::NumberRef::~NumberRef(&a16);
  applesauce::CF::StringRef::~StringRef(&a17);
  applesauce::CF::NumberRef::~NumberRef(&a18);
  applesauce::CF::StringRef::~StringRef(&a19);
  while (v22 != &a22)
  {
    v22 = (v22 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v22);
  }

  _Unwind_Resume(a1);
}

float cpms::efficiency::QuadraticModel<float>::ComputeNeededPowerGain()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1EEE9AC00]();
  v5 = (v23 - v4);
  v6 = v2 - v3;
  v7 = v2 - v3;
  if (v2 == v3)
  {
    v13 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[6];
    v10 = v5;
    do
    {
      v11 = *v3++;
      v12 = v11;
      if (v9 < v11)
      {
        v12 = v9;
      }

      if (v8 >= v12)
      {
        v12 = v8;
      }

      *v10++ = v12;
    }

    while (v3 != v2);
    v13 = 0.0;
    v14 = v6;
    v15 = v5;
    do
    {
      v16 = *v15++;
      v13 = v13 + v16;
      v14 -= 4;
    }

    while (v14);
    v17 = 0.0;
    do
    {
      v18 = *v5++;
      v17 = v17 + (v18 * v18);
      v6 -= 4;
    }

    while (v6);
  }

  v19 = v0[2] * v7;
  v20 = v17 * v0[4];
  if (v20 < 0.00000011921)
  {
    v20 = 0.00000011921;
  }

  v21 = *v1;
  if (*v1 < v19)
  {
    v21 = v0[2] * v7;
  }

  return (sqrtf(((v20 * 4.0) * (v21 - v19)) + ((v13 * v0[3]) * (v13 * v0[3]))) - (v13 * v0[3])) / (v20 + v20);
}

double cpms::efficiency::QuadraticModel<float>::ComputePower(float *a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    v5 = *v2++;
    v6 = v5;
    if (a1[6] < v5)
    {
      v6 = a1[6];
    }

    if (a1[5] >= v6)
    {
      v6 = a1[5];
    }

    *&result = *&result + (a1[2] + (v6 * (a1[3] + (a1[4] * v6))));
  }

  while (v2 != v3);
  return result;
}

const void *applesauce::CF::details::at_key<char const(&)[19]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DDD48C00(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDD48BB0);
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetProperty(uint64_t a1, int a2, int a3, uint64_t a4, CFDictionaryRef *a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 64101)
  {
    if (*(a1 + 584) != 1)
    {
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *valuePtr = 136315906;
      *&valuePtr[4] = "AUTemplateBase.h";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 775;
      *&valuePtr[18] = 1024;
      *&valuePtr[20] = 64101;
      LOWORD(v68) = 2080;
      v39 = "Characterized amplifier system";
      goto LABEL_116;
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    v14 = *(a1 + 544);
    v15 = (a1 + 552);
    if (v14 != (a1 + 552))
    {
      do
      {
        applesauce::CF::TypeRef::TypeRef(&v63, "VolumeLevel");
        *valuePtr = *(v14 + 7);
        if (!CFNumberCreate(0, kCFNumberFloatType, valuePtr))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v56 = (*(v14 + 8) * 1000.0);
        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(valuePtr, "power_inst", &v56);
        v55 = (*(v14 + 9) * 1000.0);
        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(&valuePtr[16], "power_100ms", &v55);
        v54 = (*(v14 + 10) * 1000.0);
        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>((&v68 + 8), "power_1000ms", &v54);
        v53 = (*(v14 + 11) * 1000.0);
        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(v69, "power_thermal", &v53);
        v57[0] = valuePtr;
        v57[1] = 4;
        v16 = 0;
        cf = applesauce::CF::details::make_CFDictionaryRef(v57);
        do
        {
          v17 = *&v69[v16 + 8];
          if (v17)
          {
            CFRelease(v17);
          }

          v18 = *&v69[v16];
          if (v18)
          {
            CFRelease(v18);
          }

          v16 -= 16;
        }

        while (v16 != -64);
        applesauce::CF::TypeRef::TypeRef(v65, "Measurements");
        v19 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v66 = v19;
        v52[0] = &v63;
        v52[1] = 2;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v52);
        v21 = 0;
        v50 = CFDictionaryRef;
        do
        {
          v22 = *&valuePtr[v21 - 8];
          if (v22)
          {
            CFRelease(v22);
          }

          v23 = *&v65[v21];
          if (v23)
          {
            CFRelease(v23);
          }

          v21 -= 16;
        }

        while (v21 != -32);
        if (cf)
        {
          CFRelease(cf);
        }

        v24 = v48;
        if (v48 >= v49)
        {
          v26 = (v48 - v47) >> 3;
          if ((v26 + 1) >> 61)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v27 = (v49 - v47) >> 2;
          if (v27 <= v26 + 1)
          {
            v27 = v26 + 1;
          }

          if (v49 - v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          *(&v68 + 1) = &v47;
          if (v28)
          {
            std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v28);
          }

          *valuePtr = 0;
          *&valuePtr[8] = 8 * v26;
          *&v68 = 0;
          **&valuePtr[8] = CFDictionaryRef;
          v50 = 0;
          *&valuePtr[16] = 8 * v26 + 8;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v47, valuePtr);
          v25 = v48;
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(valuePtr);
        }

        else
        {
          *v48 = CFDictionaryRef;
          v25 = v24 + 1;
        }

        v48 = v25;
        v29 = v14[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v14[2];
            v31 = *v30 == v14;
            v14 = v30;
          }

          while (!v31);
        }

        v14 = v30;
      }

      while (v30 != v15);
    }

    v45 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v47);
    *valuePtr = &v47;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](valuePtr);
    applesauce::CF::TypeRef::TypeRef(&v58, "PowerLUT");
    if (v45)
    {
      CFRetain(v45);
    }

    v59 = v45;
    (*(**(a1 + 568) + 32))(valuePtr);
    applesauce::CF::TypeRef::TypeRef(v60, "AmpEfficiencyCoefs");
    v32 = *valuePtr;
    if (*valuePtr)
    {
      CFRetain(*valuePtr);
    }

    v60[1] = v32;
    v33 = *(a1 + 576);
    applesauce::CF::TypeRef::TypeRef(v61, "TargetGainLimitDB");
    v63 = log10f(v33) * 10.0;
    v62 = CFNumberCreate(0, kCFNumberFloatType, &v63);
    if (!v62)
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v43, "Could not construct");
    }

    v46[0] = &v58;
    v46[1] = 3;
    v34 = applesauce::CF::details::make_CFDictionaryRef(v46);
    for (i = 0; i != -48; i -= 16)
    {
      v36 = *(&v62 + i);
      if (v36)
      {
        CFRelease(v36);
      }

      v37 = *&v61[i];
      if (v37)
      {
        CFRelease(v37);
      }
    }

    if (*valuePtr)
    {
      CFRelease(*valuePtr);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    *a5 = v34;
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "AUTemplateBase.h";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 773;
    *&valuePtr[18] = 1024;
    *&valuePtr[20] = 64101;
    LOWORD(v68) = 2080;
    v40 = "Characterized amplifier system";
LABEL_123:
    *(&v68 + 2) = v40;
    v41 = "%25s:%-5d Retrieved property data for property %u (%s)";
    goto LABEL_124;
  }

  if (a2 == 64100)
  {
    if (*(a1 + 608) != 1)
    {
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *valuePtr = 136315906;
      *&valuePtr[4] = "AUTemplateBase.h";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 775;
      *&valuePtr[18] = 1024;
      *&valuePtr[20] = 64100;
      LOWORD(v68) = 2080;
      v39 = "Power budget";
      goto LABEL_116;
    }

    LODWORD(v63) = (*(a1 + 592) * 1000.0);
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(valuePtr, "cpms_ts_i", &v63);
    LODWORD(v47) = (*(a1 + 596) * 1000.0);
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(&valuePtr[16], "cpms_ts_100", &v47);
    LODWORD(v57[0]) = (*(a1 + 600) * 1000.0);
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>((&v68 + 8), "cpms_ts_1000", v57);
    LODWORD(v52[0]) = (*(a1 + 604) * 1000.0);
    applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(v69, "cpms_ts_thermal", v52);
    v58 = valuePtr;
    v59 = 4;
    v10 = applesauce::CF::details::make_CFDictionaryRef(&v58);
    for (j = 0; j != -64; j -= 16)
    {
      v12 = *&v69[j + 8];
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *&v69[j];
      if (v13)
      {
        CFRelease(v13);
      }
    }

    *a5 = v10;
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "AUTemplateBase.h";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 773;
    *&valuePtr[18] = 1024;
    *&valuePtr[20] = 64100;
    LOWORD(v68) = 2080;
    v40 = "Power budget";
    goto LABEL_123;
  }

  if (a2 != 21)
  {
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v38 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 4294956417;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "AUTemplateBase.h";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 786;
      *&valuePtr[18] = 1024;
      *&valuePtr[20] = a2;
      _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Property data for unsupported property (%u) requested.", valuePtr, 0x18u);
    }

    return 4294956417;
  }

  if (*(a1 + 537) == 1)
  {
    *a5 = *(a1 + 536);
    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
    {
      dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
    }

    if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
      if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "AUTemplateBase.h";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 773;
    *&valuePtr[18] = 1024;
    *&valuePtr[20] = 21;
    LOWORD(v68) = 2080;
    v40 = "Bypass";
    goto LABEL_123;
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
    if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!result)
  {
    return result;
  }

  *valuePtr = 136315906;
  *&valuePtr[4] = "AUTemplateBase.h";
  *&valuePtr[12] = 1024;
  *&valuePtr[14] = 775;
  *&valuePtr[18] = 1024;
  *&valuePtr[20] = 21;
  LOWORD(v68) = 2080;
  v39 = "Bypass";
LABEL_116:
  *(&v68 + 2) = v39;
  v41 = "%25s:%-5d Retrieved (unset) property data for property %u (%s)";
LABEL_124:
  _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_INFO, v41, valuePtr, 0x22u);
  return 0;
}

void sub_1DDD4973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v28 + 40));
  applesauce::CF::TypeRef::~TypeRef(v27);
  applesauce::CF::DictionaryRef::~DictionaryRef((v29 - 192));
  applesauce::CF::ArrayRef::~ArrayRef(&a13);
  do
  {
    v27 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v27);
  }

  while (v27 != &a27);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD49A24(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetPropertyInfo(uint64_t a1, int a2, int a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956430;
  }

  switch(a2)
  {
    case 64101:
      *a6 = *(a1 + 17) ^ 1;
      *a5 = 8;
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v8 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v11 = 136315906;
      v12 = "AUTemplateBase.h";
      v13 = 1024;
      v14 = 835;
      v15 = 1024;
      v16 = 64101;
      v17 = 2080;
      v10 = "Characterized amplifier system";
      goto LABEL_35;
    case 64100:
      *a6 = 1;
      *a5 = 8;
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v8 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v11 = 136315906;
      v12 = "AUTemplateBase.h";
      v13 = 1024;
      v14 = 835;
      v15 = 1024;
      v16 = 64100;
      v17 = 2080;
      v10 = "Power budget";
      goto LABEL_35;
    case 21:
      *a6 = 1;
      *a5 = 4;
      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
      {
        dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
      }

      if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
      {
        v8 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
        if (!*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v11 = 136315906;
      v12 = "AUTemplateBase.h";
      v13 = 1024;
      v14 = 835;
      v15 = 1024;
      v16 = 21;
      v17 = 2080;
      v10 = "Bypass";
LABEL_35:
      v18 = v10;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Retrieved info for property %u (%s)", &v11, 0x22u);
      return 0;
  }

  if (AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once != -1)
  {
    dispatch_once(&AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::once, &__block_literal_global_5676);
  }

  if (!AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_38:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "AUTemplateBase.h";
      v13 = 1024;
      v14 = 845;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Info for unsupported property (%u) requested.", &v11, 0x18u);
    }

    return 4294956417;
  }

  v9 = *AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope;
  if (*AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::GetLogScope(void)::scope)
  {
    goto LABEL_38;
  }

  return 4294956417;
}

void AUTemplateBase<AUCPMSVolumeV1,std::tuple<cpms::VolumeV1::Parameters::TC_smoother_attack,cpms::VolumeV1::Parameters::TC_smoother_release,cpms::VolumeV1::Parameters::VolumeLevel,cpms::VolumeV1::Parameters::OutputGain>,std::tuple<AUGeneric::Properties::Bypass,cpms::VolumeV1::Properties::LUTSystem>,std::tuple<cpms::VolumeV1::Properties::PowerBudget>>::~AUTemplateBase(ausdk::AUBase *this)
{
  *this = &unk_1F5933C38;
  if (*(this + 584) == 1)
  {
    v2 = *(this + 71);
    *(this + 71) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 69));
  }

  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5933C38;
  if (*(this + 584) == 1)
  {
    v2 = *(this + 71);
    *(this + 71) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 69));
  }

  ausdk::AUBase::~AUBase(this);
}

void *ausdk::APFactory<AUAuxVPLookup,AUAuxVPDownlink>::Factory()
{
  result = malloc_type_malloc(0x260uLL, 0x10F304085A51F27uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = AUAuxVPLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<AUAuxVPLookup,AUAuxVPDownlink>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<AUAuxVPLookup,AUAuxVPDownlink>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<AUAuxVPLookup,AUAuxVPDownlink>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 33) = 0u;
  *v3 = &unk_1F5939038;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 16), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 8u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 1u, 480.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, -15.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 2u, -15.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 0xAu, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 9u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 0xFu, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 4u, 100.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 5u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 6u, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 7u, 1.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xBu, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xCu, 0.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xEu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v36, 0xDu, 0.0);
  return a1;
}

void *ausdk::APFactory<AUAuxVPLookup,AUAuxVPUplink>::Factory()
{
  result = malloc_type_malloc(0x260uLL, 0x10F304085A51F27uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = AUAuxVPLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<AUAuxVPLookup,AUAuxVPUplink>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<AUAuxVPLookup,AUAuxVPUplink>::Destruct;
  return result;
}

ausdk::AUBase *ausdk::APFactory<AUAuxVPLookup,AUAuxVPUplink>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *(v3 + 33) = 0u;
  *v3 = &unk_1F5939288;
  ausdk::AUBase::CreateElements(v3);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0 || ((*(*v4 + 40))(v4, 19), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0, 0.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 1u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 2u, 10.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 3u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 4u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 5u, 0.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 6u, 0.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 7u, 0.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 8u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 9u, 0.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 0xAu, 0.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 0xBu, 0.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 0xCu, 0.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xFu, 480.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0x10u, 480.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 0x11u, 1.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v38, 0x12u, 0.0);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCNG>::Factory()
{
  result = malloc_type_malloc(0x258uLL, 0x10F3040D05B7F9AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCNG>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCNG>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessLookup,AUCNG>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591B810;
  *(v3 + 528) = 0;
  ausdk::AUBase::CreateElements(v3);
  v11 = 0x40BF400000000000;
  v12 = xmmword_1DE09BD50;
  v13 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, &v11), (v5 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v5 + 56))(v5, &v11);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v7 & 1) == 0 || (ausdk::AUElement::SetParameter(v6, 0, -120.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, 1u, 0.0);
  ausdk::AUBase::SetAFactoryPresetAsCurrent(a1, &sAUCNGPresets);
  srandom(5u);
  return a1;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Factory()
{
  result = malloc_type_malloc(0x758uLL, 0x10F3040EF2874D3uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULevelDrivenSuppressor>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = (a1 + 536);
  v4 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v4 = &unk_1F591D600;
  *(v4 + 132) = 0;
  *(v4 + 532) = 1;
  *(v4 + 67) = 1;
  *(v4 + 136) = 1;
  *(v4 + 548) = 0;
  *(v4 + 278) = 0;
  *(v4 + 140) = 2;
  *(v4 + 564) = 0u;
  *(v4 + 580) = 0u;
  *(v4 + 596) = 0u;
  *(v4 + 153) = 0;
  v3[5] = xmmword_1DE09C8F0;
  v3[6] = xmmword_1DE09C900;
  v3[7] = xmmword_1DE09C910;
  *(v4 + 166) = 1112014848;
  *(v4 + 84) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(v4 + 85) = _D1;
  *(v4 + 86) = 0;
  *(v4 + 174) = 0;
  *(v4 + 120) = 0;
  *(v4 + 58) = 0u;
  *(v4 + 59) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 57) = 0u;
  *(v4 + 54) = 0u;
  *(v4 + 55) = 0u;
  *(v4 + 52) = 0u;
  *(v4 + 53) = 0u;
  *(v4 + 50) = 0u;
  *(v4 + 51) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 49) = 0u;
  *(v4 + 46) = 0u;
  *(v4 + 47) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 45) = 0u;
  *(v4 + 980) = 0xC1000000C1000000;
  *(v4 + 1092) = 0;
  *(v4 + 62) = 0u;
  *(v4 + 63) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 65) = 0u;
  *(v4 + 132) = 0;
  *(v4 + 550) = 1;
  *(v4 + 138) = 0;
  *(v4 + 278) = 0;
  *(v4 + 70) = 0u;
  *(v4 + 71) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 73) = 0u;
  *(v4 + 74) = 0u;
  *(v4 + 75) = 0u;
  *(v4 + 76) = 0u;
  *(v4 + 77) = 0u;
  *(v4 + 78) = 0u;
  *(v4 + 79) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 81) = 0u;
  *(v4 + 82) = 0u;
  *(v4 + 83) = 0u;
  *(v4 + 84) = 0u;
  *(v4 + 85) = 0u;
  *(v4 + 86) = 0u;
  *(v4 + 87) = 0u;
  *(v4 + 352) = 7;
  *(v4 + 1416) = 0u;
  *(v4 + 1432) = 0u;
  *(v4 + 1448) = 0u;
  *(v4 + 1464) = 0u;
  *(v4 + 1480) = 0u;
  *(v4 + 1496) = 0u;
  *(v4 + 1512) = 0u;
  *(v4 + 1528) = 0u;
  *(v4 + 1544) = 0u;
  *(v4 + 1560) = 0u;
  *(v4 + 1576) = 0u;
  *(v4 + 1592) = 0u;
  *(v4 + 1608) = 0u;
  *(v4 + 203) = 0;
  *(v4 + 408) = 21;
  *(v4 + 429) = 1078788662;
  *(v4 + 1684) = xmmword_1DE115764;
  *(v4 + 1700) = unk_1DE115774;
  *(v4 + 1652) = unk_1DE115744;
  *(v4 + 1668) = xmmword_1DE115754;
  *(v4 + 1636) = NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table;
  *(v4 + 1720) = 0u;
  *(v4 + 1736) = 0u;
  *(v4 + 1752) = 0u;
  *(v4 + 1768) = 0u;
  *(v4 + 1784) = 0u;
  *(v4 + 1800) = 0u;
  ausdk::AUBase::CreateElements(v4);
  v10 = *(a1 + 120);
  if (v10)
  {
    LODWORD(v11) = (*(*v10 + 24))(v10);
  }

  else
  {
    v11 = (*(a1 + 104) - *(a1 + 96)) >> 3;
  }

  *(a1 + 560) = v11;
  v32 = 0x40D7700000000000;
  v33 = xmmword_1DE09C190;
  v34 = xmmword_1DE09C600;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element)
  {
    goto LABEL_17;
  }

  (*(*Element + 56))(Element, &v32);
  v13 = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!v13)
  {
    goto LABEL_17;
  }

  (*(*v13 + 56))(v13, &v32);
  if (*(a1 + 560) >= 2u)
  {
    v29 = 0x40D7700000000000;
    v31 = xmmword_1DE09BD60;
    v30 = xmmword_1DE09BD50;
    v14 = ausdk::AUScope::GetElement((a1 + 80), 1u);
    if (v14)
    {
      (*(*v14 + 56))(v14, &v29);
      goto LABEL_9;
    }

LABEL_17:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_9:
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v16 & 1) == 0 || ((*(*v15 + 40))(v15, 5), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 0, 0.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 1u, -26.0), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0) || (ausdk::AUElement::SetParameter(v21, 2u, -24.0), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0) || (ausdk::AUElement::SetParameter(v23, 3u, -75.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v25, 4u, 0.0);
  v27 = AULevelDrivenSuppressor::InitializeInternals(a1);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 480, v27);
  *(a1 + 644) = 0x1E046BB8000;
  *(a1 + 557) = 0;
  *v3 = xmmword_1DE095FA0;
  return a1;
}

void sub_1DDD4AC80(_Unwind_Exception *a1)
{
  v7 = *(v1 + 223);
  if (v7)
  {
    *(v1 + 224) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 220);
  if (v8)
  {
    *(v1 + 221) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 217);
  if (v9)
  {
    *(v1 + 218) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 216);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(v1 + 201);
  if (v11)
  {
    *(v1 + 202) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 198);
  if (v12)
  {
    *(v1 + 199) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 195);
  if (v13)
  {
    *(v1 + 196) = v13;
    operator delete(v13);
  }

  v14 = *(v1 + 192);
  if (v14)
  {
    *(v1 + 193) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 189);
  if (v15)
  {
    *(v1 + 190) = v15;
    operator delete(v15);
  }

  v16 = *(v1 + 186);
  if (v16)
  {
    *(v1 + 187) = v16;
    operator delete(v16);
  }

  v17 = *(v1 + 183);
  if (v17)
  {
    *(v1 + 184) = v17;
    operator delete(v17);
  }

  v18 = *(v1 + 180);
  if (v18)
  {
    *(v1 + 181) = v18;
    operator delete(v18);
  }

  v19 = *v5;
  if (*v5)
  {
    *(v1 + 178) = v19;
    operator delete(v19);
  }

  v20 = *(v1 + 173);
  if (v20)
  {
    *(v1 + 174) = v20;
    operator delete(v20);
  }

  v21 = *(v1 + 170);
  if (v21)
  {
    *(v1 + 171) = v21;
    operator delete(v21);
  }

  v22 = *(v1 + 167);
  if (v22)
  {
    *(v1 + 168) = v22;
    operator delete(v22);
  }

  v23 = *(v1 + 164);
  if (v23)
  {
    *(v1 + 165) = v23;
    operator delete(v23);
  }

  v24 = *(v1 + 161);
  if (v24)
  {
    *(v1 + 162) = v24;
    operator delete(v24);
  }

  v25 = *(v1 + 158);
  if (v25)
  {
    *(v1 + 159) = v25;
    operator delete(v25);
  }

  v26 = *(v1 + 155);
  if (v26)
  {
    *(v1 + 156) = v26;
    operator delete(v26);
  }

  v27 = *(v1 + 152);
  if (v27)
  {
    *(v1 + 153) = v27;
    operator delete(v27);
  }

  v28 = *(v1 + 149);
  if (v28)
  {
    *(v1 + 150) = v28;
    operator delete(v28);
  }

  v29 = *(v1 + 146);
  if (v29)
  {
    *(v1 + 147) = v29;
    operator delete(v29);
  }

  v30 = *(v1 + 143);
  if (v30)
  {
    *(v1 + 144) = v30;
    operator delete(v30);
  }

  v31 = *v4;
  if (*v4)
  {
    *(v1 + 141) = v31;
    operator delete(v31);
  }

  v32 = *(v1 + 130);
  if (v32)
  {
    *(v1 + 131) = v32;
    operator delete(v32);
  }

  v33 = *(v1 + 127);
  if (v33)
  {
    *(v1 + 128) = v33;
    operator delete(v33);
  }

  v34 = *v3;
  if (*v3)
  {
    *(v1 + 125) = v34;
    operator delete(v34);
  }

  v35 = *(v1 + 118);
  if (v35)
  {
    *(v1 + 119) = v35;
    operator delete(v35);
  }

  v36 = *(v1 + 115);
  if (v36)
  {
    *(v1 + 116) = v36;
    operator delete(v36);
  }

  v37 = *(v1 + 112);
  if (v37)
  {
    *(v1 + 113) = v37;
    operator delete(v37);
  }

  v38 = *(v1 + 109);
  if (v38)
  {
    *(v1 + 110) = v38;
    operator delete(v38);
  }

  v39 = *(v1 + 106);
  if (v39)
  {
    *(v1 + 107) = v39;
    operator delete(v39);
  }

  v40 = *(v1 + 103);
  if (v40)
  {
    *(v1 + 104) = v40;
    operator delete(v40);
  }

  v41 = *(v1 + 100);
  if (v41)
  {
    *(v1 + 101) = v41;
    operator delete(v41);
  }

  v42 = *(v1 + 97);
  if (v42)
  {
    *(v1 + 98) = v42;
    operator delete(v42);
  }

  v43 = *(v1 + 94);
  if (v43)
  {
    *(v1 + 95) = v43;
    operator delete(v43);
  }

  v44 = *(v1 + 91);
  if (v44)
  {
    *(v1 + 92) = v44;
    operator delete(v44);
  }

  v45 = *v2;
  if (*v2)
  {
    *(v1 + 89) = v45;
    operator delete(v45);
  }

  v46 = *(v1 + 74);
  if (v46)
  {
    *(v1 + 75) = v46;
    operator delete(v46);
  }

  v47 = *(v1 + 71);
  if (v47)
  {
    *(v1 + 72) = v47;
    operator delete(v47);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Factory()
{
  result = malloc_type_malloc(0x12E8uLL, 0x10F30403F22166DuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AULoudnessInNoise>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a1 + 612;
  v4 = ausdk::AUBase::AUBase(a1, a2, 3, 1);
  *v4 = &unk_1F5931300;
  *(v4 + 66) = 0;
  *(v4 + 67) = 0xC304000000000140;
  *(v4 + 34) = 0u;
  *(v4 + 35) = xmmword_1DE095FA0;
  *(v4 + 288) = 0;
  *(v4 + 580) = 0x467A00000000001ELL;
  *(v4 + 147) = 320;
  *(v4 + 74) = 0x14100000280;
  *(v4 + 600) = 0;
  *(v4 + 604) = 0;
  *v3 = xmmword_1DE09C920;
  *(v3 + 16) = xmmword_1DE09C930;
  *(v4 + 644) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 684) = 0xFFFFFFFFLL;
  *(v4 + 692) = 0x3C7DF3B600000000;
  bzero(v4 + 700, 0x39DuLL);
  *(a1 + 1652) = 1065353216;
  *(a1 + 1656) = 0;
  *(a1 + 4284) = 0;
  *(v3 + 3676) = 0;
  bzero((a1 + 1676), 0xA24uLL);
  *(a1 + 4640) = 0u;
  *(a1 + 4612) = 0u;
  *(a1 + 4628) = 0u;
  *(a1 + 4580) = 0u;
  *(a1 + 4596) = 0u;
  *(a1 + 4548) = 0u;
  *(a1 + 4564) = 0u;
  *(a1 + 4516) = 0u;
  *(a1 + 4532) = 0u;
  *(a1 + 4484) = 0u;
  *(a1 + 4500) = 0u;
  *(a1 + 4452) = 0u;
  *(a1 + 4468) = 0u;
  *(a1 + 4420) = 0u;
  *(a1 + 4436) = 0u;
  *(a1 + 4388) = 0u;
  *(a1 + 4404) = 0u;
  *(a1 + 4356) = 0u;
  *(a1 + 4372) = 0u;
  *(a1 + 4324) = 0u;
  *(a1 + 4340) = 0u;
  *(a1 + 4292) = 0u;
  *(a1 + 4308) = 0u;
  *(a1 + 4656) = xmmword_1DE1099D0;
  *(a1 + 4672) = unk_1DE1099E0;
  *(a1 + 4688) = xmmword_1DE1099F0;
  *(a1 + 4704) = 0x40E0000045FA0000;
  *(a1 + 4744) = 0;
  if (AULINNLogScope(void)::once != -1)
  {
    dispatch_once(&AULINNLogScope(void)::once, &__block_literal_global_25078);
  }

  if (AULINNLogScope(void)::scope)
  {
    v5 = *AULINNLogScope(void)::scope;
    if (!*AULINNLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AULoudnessInNoise.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 161;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AULoudnessInNoise: Initialize", buf, 0x12u);
  }

LABEL_9:
  ausdk::AUBase::CreateElements(a1);
  *buf = 0x40CF400000000000;
  v58 = xmmword_1DE09C600;
  *&buf[8] = xmmword_1DE09C190;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, buf), (v7 = ausdk::AUScope::GetElement((a1 + 80), 1u)) == 0) || ((*(*v7 + 56))(v7, buf), (v8 = ausdk::AUScope::GetElement((a1 + 80), 2u)) == 0) || ((*(*v8 + 56))(v8, buf), (v9 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v9 + 56))(v9, buf);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v11 & 1) == 0 || ((*(*v10 + 40))(v10, 67), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 0, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v15 & 1) == 0) || (ausdk::AUElement::SetParameter(v14, 1u, 0.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v17 & 1) == 0) || (ausdk::AUElement::SetParameter(v16, 2u, 1.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v19 & 1) == 0) || (ausdk::AUElement::SetParameter(v18, 3u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v21 & 1) == 0) || (ausdk::AUElement::SetParameter(v20, 4u, 90.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 5u, 0.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 6u, 0.5), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 7u, -80.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 8u, -80.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 9u, 200.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 0xAu, 5005.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 0xBu, 2.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v37 & 1) == 0) || (ausdk::AUElement::SetParameter(v36, 0xCu, 0.25), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v39 & 1) == 0) || (ausdk::AUElement::SetParameter(v38, 0x1Eu, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v41 & 1) == 0) || (ausdk::AUElement::SetParameter(v40, 0x20u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v43 & 1) == 0) || (ausdk::AUElement::SetParameter(v42, 0x3Du, 0.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v45 & 1) == 0) || (ausdk::AUElement::SetParameter(v44, 0x3Cu, 0.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v47 & 1) == 0) || (ausdk::AUElement::SetParameter(v46, 0x3Eu, 0.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v49 & 1) == 0) || (ausdk::AUElement::SetParameter(v48, 0x3Fu, -1.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v51 & 1) == 0) || (ausdk::AUElement::SetParameter(v50, 0x40u, 0.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v53 & 1) == 0) || (ausdk::AUElement::SetParameter(v52, 0x41u, 0.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v55 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v54, 0x42u, -200.0);
  *(a1 + 1656) = 0;
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 320);
  *(a1 + 596) = 321;
  *(a1 + 584) = 0x140467A0000;
  *(a1 + 577) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = xmmword_1DE095FA0;
  *(a1 + 1624) = 0;
  AULoudnessInNoise::Set_Level_Spreading_PropertyRelatedDefaults(a1, 1);
  return a1;
}

void sub_1DDD4B670(_Unwind_Exception *a1)
{
  v4 = v1[579];
  if (v4)
  {
    v1[580] = v4;
    operator delete(v4);
  }

  v5 = v1[576];
  if (v5)
  {
    v1[577] = v5;
    operator delete(v5);
  }

  v6 = v1[573];
  if (v6)
  {
    v1[574] = v6;
    operator delete(v6);
  }

  v7 = v1[570];
  if (v7)
  {
    v1[571] = v7;
    operator delete(v7);
  }

  v8 = v1[567];
  if (v8)
  {
    v1[568] = v8;
    operator delete(v8);
  }

  v9 = v1[564];
  if (v9)
  {
    v1[565] = v9;
    operator delete(v9);
  }

  v10 = v1[561];
  if (v10)
  {
    v1[562] = v10;
    operator delete(v10);
  }

  v11 = v1[558];
  if (v11)
  {
    v1[559] = v11;
    operator delete(v11);
  }

  v12 = v1[555];
  if (v12)
  {
    v1[556] = v12;
    operator delete(v12);
  }

  v13 = v1[552];
  if (v13)
  {
    v1[553] = v13;
    operator delete(v13);
  }

  v14 = v1[549];
  if (v14)
  {
    v1[550] = v14;
    operator delete(v14);
  }

  v15 = v1[546];
  if (v15)
  {
    v1[547] = v15;
    operator delete(v15);
  }

  v16 = v1[543];
  if (v16)
  {
    v1[544] = v16;
    operator delete(v16);
  }

  v17 = v1[540];
  if (v17)
  {
    v1[541] = v17;
    operator delete(v17);
  }

  v18 = v1[537];
  if (v18)
  {
    v1[538] = v18;
    operator delete(v18);
  }

  v19 = v1[531];
  if (v19)
  {
    v1[532] = v19;
    operator delete(v19);
  }

  v20 = v1[528];
  if (v20)
  {
    v1[529] = v20;
    operator delete(v20);
  }

  v21 = v1[525];
  if (v21)
  {
    v1[526] = v21;
    operator delete(v21);
  }

  v22 = v1[522];
  if (v22)
  {
    v1[523] = v22;
    operator delete(v22);
  }

  v23 = v1[519];
  if (v23)
  {
    v1[520] = v23;
    operator delete(v23);
  }

  v24 = v1[516];
  if (v24)
  {
    v1[517] = v24;
    operator delete(v24);
  }

  v25 = v1[513];
  if (v25)
  {
    v1[514] = v25;
    operator delete(v25);
  }

  v26 = v1[510];
  if (v26)
  {
    v1[511] = v26;
    operator delete(v26);
  }

  v27 = v1[507];
  if (v27)
  {
    v1[508] = v27;
    operator delete(v27);
  }

  v28 = v1[504];
  if (v28)
  {
    v1[505] = v28;
    operator delete(v28);
  }

  v29 = v1[501];
  if (v29)
  {
    v1[502] = v29;
    operator delete(v29);
  }

  v30 = v1 + 499;
  v31 = -720;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      v33 = v1[408];
      if (v33)
      {
        v1[409] = v33;
        operator delete(v33);
      }

      v34 = v1[405];
      if (v34)
      {
        v1[406] = v34;
        operator delete(v34);
      }

      v35 = v1[402];
      if (v35)
      {
        v1[403] = v35;
        operator delete(v35);
      }

      v36 = v1[399];
      if (v36)
      {
        v1[400] = v36;
        operator delete(v36);
      }

      v37 = v1 + 397;
      v38 = -720;
      while (1)
      {
        v39 = *(v37 - 1);
        if (v39)
        {
          *v37 = v39;
          operator delete(v39);
        }

        v37 -= 3;
        v38 += 24;
        if (!v38)
        {
          v40 = v1[306];
          if (v40)
          {
            v1[307] = v40;
            operator delete(v40);
          }

          v41 = v1 + 304;
          v42 = -720;
          while (1)
          {
            v43 = *(v41 - 1);
            if (v43)
            {
              *v41 = v43;
              operator delete(v43);
            }

            v41 -= 3;
            v42 += 24;
            if (!v42)
            {
              v44 = v1[213];
              if (v44)
              {
                v1[214] = v44;
                operator delete(v44);
              }

              v45 = v1[210];
              if (v45)
              {
                v1[211] = v45;
                operator delete(v45);
              }

              v46 = v1[200];
              if (v46)
              {
                v1[201] = v46;
                operator delete(v46);
              }

              v47 = v1[197];
              if (v47)
              {
                v1[198] = v47;
                operator delete(v47);
              }

              v48 = v1[194];
              if (v48)
              {
                v1[195] = v48;
                operator delete(v48);
              }

              v49 = v1[191];
              if (v49)
              {
                v1[192] = v49;
                operator delete(v49);
              }

              v50 = v1[187];
              if (v50)
              {
                v1[188] = v50;
                operator delete(v50);
              }

              v51 = v1[184];
              if (v51)
              {
                v1[185] = v51;
                operator delete(v51);
              }

              v52 = v1 + 182;
              v53 = -720;
              while (1)
              {
                v54 = *(v52 - 1);
                if (v54)
                {
                  *v52 = v54;
                  operator delete(v54);
                }

                v52 -= 3;
                v53 += 24;
                if (!v53)
                {
                  v55 = v1[91];
                  if (v55)
                  {
                    v1[92] = v55;
                    operator delete(v55);
                  }

                  v56 = v1[88];
                  if (v56)
                  {
                    v1[89] = v56;
                    operator delete(v56);
                  }

                  v57 = *v2;
                  if (*v2)
                  {
                    v1[83] = v57;
                    operator delete(v57);
                  }

                  v58 = v1[66];
                  v1[66] = 0;
                  if (v58)
                  {
                    MEMORY[0x1E12BD160](v58, 0x60C4044C4A2DFLL);
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
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFTSpatialAC>::Factory()
{
  result = malloc_type_malloc(0x1530uLL, 0x10F304042571755uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFTSpatialAC>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUFTSpatialAC>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUWindKill>::Factory()
{
  result = malloc_type_malloc(0x648uLL, 0x10F304007AC3297uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUWindKill>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUWindKill>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUWindKill>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 568);
  v4 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v4 = &unk_1F592CB90;
  *(v4 + 66) = 1;
  *(v4 + 536) = 0;
  *(v4 + 68) = 0x1AF1C9013F800000;
  *(v4 + 552) = 0;
  *(v4 + 70) = 0x40CF400000000000;
  *v3 = xmmword_1DE09C940;
  v3[1] = xmmword_1DE09C950;
  *(v4 + 75) = 0xEF00000000;
  *(v4 + 38) = 0u;
  *(v4 + 39) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 653) = 0;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0u;
  *(v4 + 888) = 0u;
  *(v4 + 904) = 0u;
  *(v4 + 920) = 0u;
  *(v4 + 117) = 0;
  v101 = 0x3F0000003E800000;
  LODWORD(v102) = 1048576000;
  *(v4 + 118) = 0;
  *(v4 + 120) = 0;
  *(v4 + 119) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v4 + 944, &v101, &v102 + 4, 3uLL);
  *(a1 + 1125) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1076) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 968) = 0u;
  LODWORD(v101) = 0;
  std::vector<float>::assign((a1 + 1040), 0xEuLL, &v101, 0);
  *(a1 + 664) = 0;
  *(v3 + 100) = xmmword_1DE09C960;
  *(v3 + 116) = xmmword_1DE09C970;
  *(v3 + 132) = xmmword_1DE09C980;
  *(a1 + 716) = 0x3F0000003F4CCCCDLL;
  *(a1 + 748) = 0;
  *(a1 + 732) = 0;
  *(a1 + 740) = 0;
  *(a1 + 724) = 0;
  *(a1 + 752) = xmmword_1DE09C990;
  *(a1 + 768) = xmmword_1DE09C9A0;
  *(a1 + 784) = 1056964608;
  *(a1 + 788) = 0;
  v3[14] = xmmword_1DE09C9B0;
  v3[15] = xmmword_1DE09C9C0;
  WindDetectorAndSuppressor::UpdateWindSuppressorCoreState((a1 + 544));
  ausdk::AUBase::CreateElements(a1);
  *(a1 + 376) = 1;
  (*(*a1 + 512))(a1, 1156);
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0
    || (ausdk::AUElement::SetParameter(v5, 0, 0.0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v7, 1u, 0.0), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v9, 0x1Bu, 160.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v11, 2u, 0.7), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v13, 3u, -12.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v15, 4u, 0.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v17, 5u, 300.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v19, 6u, 0.05), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v21, 7u, 0.5), v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v24 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v23, 8u, 6.0), v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v26 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v25, 0x13u, 0.0), v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v28 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v27, 9u, 500.0), v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v30 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v29, 0xAu, 4000.0), v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v32 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v31, 0xBu, 0.8), v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v34 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v33, 0xCu, 0.5), v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v36 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v35, 0xDu, 0.0), v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v38 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v37, 0xEu, 0.0), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v40 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v39, 0xFu, 0.0), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v42 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v41, 0x14u, 0.0), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v44 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v43, 0x1Cu, 0.0), v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v46 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v45, 0x1Du, 0.0), v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v48 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v47, 0x10u, 0.0), v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v50 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v49, 0x15u, 160.0), v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v52 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v51, 0x11u, 1000.0), v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v54 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v53, 0x16u, 0.02), v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v56 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v55, 0x12u, 24.0), v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v58 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v57, 0x1Eu, -80.0), v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v60 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v59, 0x17u, -110.0), v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v62 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v61, 0x18u, 0.03), v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v64 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v63, 0x19u, 0.5), v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v66 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v65, 0x1Au, 0.5), v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v68 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v67, 0x1Fu, 0.0), v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v70 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v69, 0x20u, 0.05), v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v72 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v71, 0x21u, 0.25), v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v74 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v73, 0x22u, 1.5), v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v76 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v75, 0x23u, 0.25), v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v78 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v77, 0x24u, 0.005), v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v80 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v79, 0x25u, -20.0), v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v82 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v81, 0x26u, 5.0), v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v84 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v83, 0x27u, 0.0);
  for (i = 0; ; ++i)
  {
    v86 = *(a1 + 120);
    if (v86)
    {
      LODWORD(v87) = (*(*v86 + 24))(v86);
    }

    else
    {
      v87 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (i >= v87)
    {
      break;
    }

    if (!i)
    {
      Element = ausdk::AUScope::GetElement((a1 + 80), 0);
      if (!Element)
      {
LABEL_67:
        ausdk::Throw(0xFFFFD583);
      }

      v101 = 0x40E5888000000000;
      v103 = xmmword_1DE09C5F0;
      v102 = xmmword_1DE09C190;
      (*(*Element + 56))(Element, &v101);
    }
  }

  for (j = 0; ; ++j)
  {
    v90 = *(a1 + 168);
    if (v90)
    {
      LODWORD(v91) = (*(*v90 + 24))(v90);
    }

    else
    {
      v91 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (j >= v91)
    {
      break;
    }

    switch(j)
    {
      case 2u:
        v94 = ausdk::AUScope::GetElement((a1 + 128), 2u);
        if (!v94)
        {
          goto LABEL_67;
        }

        v101 = 0x40E5888000000000;
        v102 = xmmword_1DE09BD50;
        v103 = xmmword_1DE09BD60;
        (*(*v94 + 56))(v94, &v101);
        break;
      case 1u:
        v93 = ausdk::AUScope::GetElement((a1 + 128), 1u);
        if (!v93)
        {
          goto LABEL_67;
        }

        v101 = 0x40E5888000000000;
        v103 = xmmword_1DE09C600;
        v102 = xmmword_1DE09C190;
        (*(*v93 + 56))(v93, &v101);
        break;
      case 0u:
        v92 = ausdk::AUScope::GetElement((a1 + 128), 0);
        if (!v92)
        {
          goto LABEL_67;
        }

        v101 = 0x40E5888000000000;
        v103 = xmmword_1DE09C5F0;
        v102 = xmmword_1DE09C190;
        (*(*v92 + 56))(v92, &v101);
        break;
    }
  }

  v95 = *(a1 + 776);
  *(a1 + 1480) = *(a1 + 760);
  *(a1 + 1496) = v95;
  v96 = *(a1 + 808);
  *(a1 + 1512) = *(a1 + 792);
  *(a1 + 1528) = v96;
  v97 = *(a1 + 712);
  *(a1 + 1416) = *(a1 + 696);
  *(a1 + 1432) = v97;
  v98 = *(a1 + 744);
  *(a1 + 1448) = *(a1 + 728);
  *(a1 + 1464) = v98;
  v99 = *(a1 + 680);
  *(a1 + 1384) = *(a1 + 664);
  *(a1 + 1400) = v99;
  return a1;
}

void sub_1DDD4C4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  WindSuppressorCore::~WindSuppressorCore(v21);
  v24 = *(v19 + 127);
  if (v24)
  {
    *(v19 + 128) = v24;
    operator delete(v24);
  }

  v25 = *(v19 + 124);
  if (v25)
  {
    *(v19 + 125) = v25;
    operator delete(v25);
  }

  v26 = *v23;
  if (*v23)
  {
    *(v19 + 122) = v26;
    operator delete(v26);
  }

  v27 = *v20;
  if (*v20)
  {
    *(v19 + 119) = v27;
    operator delete(v27);
  }

  v28 = *(v19 + 115);
  if (v28)
  {
    *(v19 + 116) = v28;
    operator delete(v28);
  }

  v29 = *(v19 + 112);
  if (v29)
  {
    *(v19 + 113) = v29;
    operator delete(v29);
  }

  v30 = *(v19 + 109);
  if (v30)
  {
    *(v19 + 110) = v30;
    operator delete(v30);
  }

  v31 = *(v19 + 106);
  if (v31)
  {
    *(v19 + 107) = v31;
    operator delete(v31);
  }

  v32 = *v22;
  if (*v22)
  {
    *(v19 + 104) = v32;
    operator delete(v32);
  }

  ausdk::AUBase::~AUBase(v19);
  _Unwind_Resume(a1);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNFNSwitch>::Factory()
{
  result = malloc_type_malloc(0x2E8uLL, 0x10F3040C2222E10uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNFNSwitch>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNFNSwitch>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNFNSwitch>::Construct(ausdk::AUBase *a1, OpaqueAudioComponentInstance *a2)
{
  v2 = ausdk::AUBase::AUBase(a1, a2, 3, 2);
  *v2 = &unk_1F5921948;
  *(v2 + 33) = xmmword_1DE095FA0;
  *(v2 + 544) = 0;
  *(v2 + 69) = 0;
  ausdk::AUBase::CreateElements(v2);
  operator new();
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Factory()
{
  result = malloc_type_malloc(0x4B8uLL, 0x10F3040618DCB56uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Destruct;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUBeamIt>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 4);
  *v3 = &unk_1F5927498;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 34) = xmmword_1DE09C160;
  *(v3 + 35) = xmmword_1DE09C160;
  *(v3 + 576) = 0;
  *(v3 + 73) = 0;
  *(v3 + 148) = 0;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 316) = 0;
  *(v3 + 634) = 1;
  *(v3 + 80) = 0;
  *(v3 + 142) = 0;
  ausdk::AUBase::CreateElements(v3);
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  ausdk::ComponentBase::GetComponentDescription(v5, *(a1 + 8));
  v4 = HIDWORD(v5[0]) == 1651340388;
  *(a1 + 633) = HIDWORD(v5[0]) == 1651340388;
  if (!v4)
  {
    operator new();
  }

  operator new();
}

void sub_1DDD4D8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void **a13, void **a14)
{
  std::unique_ptr<SubbandDOACalculator>::reset[abi:ne200100](v20, 0);
  v24 = v19[7];
  if (v24)
  {
    v19[8] = v24;
    operator delete(v24);
  }

  v25 = *v16;
  if (*v16)
  {
    v19[5] = v25;
    operator delete(v25);
  }

  v26 = -11520;
  while (1)
  {
    v27 = *(v19 - 1);
    if (v27)
    {
      *v19 = v27;
      operator delete(v27);
    }

    v19 -= 5;
    v26 += 40;
    if (!v26)
    {
      v28 = -110592;
      v29 = -184320;
      v30 = -184320;
      while (1)
      {
        v31 = *(v18 - 1);
        if (v31)
        {
          *v18 = v31;
          operator delete(v31);
        }

        v18 -= 5;
        v30 += 40;
        if (!v30)
        {
          while (1)
          {
            v32 = *(v17 - 1);
            if (v32)
            {
              *v17 = v32;
              operator delete(v32);
            }

            v17 -= 5;
            v29 += 40;
            if (!v29)
            {
              v33 = -110592;
              while (1)
              {
                v34 = *(v23 - 1);
                if (v34)
                {
                  *v23 = v34;
                  operator delete(v34);
                }

                v23 -= 3;
                v33 += 24;
                if (!v33)
                {
                  v35 = -110592;
                  while (1)
                  {
                    v36 = *(v22 - 1);
                    if (v36)
                    {
                      *v22 = v36;
                      operator delete(v36);
                    }

                    v22 -= 3;
                    v35 += 24;
                    if (!v35)
                    {
                      v37 = -6912;
                      while (1)
                      {
                        v38 = *(v21 - 1);
                        if (v38)
                        {
                          *v21 = v38;
                          operator delete(v38);
                        }

                        v21 -= 3;
                        v37 += 24;
                        if (!v37)
                        {
                          v39 = -6912;
                          while (1)
                          {
                            v41 = *(a10 - 1);
                            if (v41)
                            {
                              *a10 = v41;
                              operator delete(v41);
                            }

                            a10 -= 3;
                            v39 += 24;
                            if (!v39)
                            {
                              v42 = -110592;
                              while (1)
                              {
                                v44 = *(a11 - 1);
                                if (v44)
                                {
                                  *a11 = v44;
                                  operator delete(v44);
                                }

                                a11 -= 3;
                                v42 += 24;
                                if (!v42)
                                {
                                  while (1)
                                  {
                                    v46 = *(a12 - 1);
                                    if (v46)
                                    {
                                      *a12 = v46;
                                      operator delete(v46);
                                    }

                                    a12 -= 3;
                                    v28 += 24;
                                    if (!v28)
                                    {
                                      BeamformerBase::~BeamformerBase(v15);
                                      MEMORY[0x1E12BD160](v15, 0x10B1C403E6D1052);
                                      a14 = a13;
                                      std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&a14);
                                      ausdk::AUBase::~AUBase(v14);
                                      _Unwind_Resume(a1);
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
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDistance>::Factory()
{
  result = malloc_type_malloc(0x2D8uLL, 0x10F30406A353A2FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDistance>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDistance>::Destruct;
  return result;
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDistance>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 2, 1);
  *v3 = &unk_1F59329A8;
  *(v3 + 33) = xmmword_1DE09C160;
  *(v3 + 544) = 0;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0;
  *(v3 + 151) = 1156;
  *(v3 + 76) = 0x40E5888000000000;
  *(v3 + 154) = 16;
  *(v3 + 620) = 1;
  *(v3 + 82) = 0;
  ausdk::AUBase::CreateElements(v3);
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v4 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AUDistance.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 628;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting the default parameter values.", buf, 0x12u);
  }

LABEL_9:
  *(a1 + 624) = 50;
  *(a1 + 628) = xmmword_1DE09BBD0;
  *(a1 + 644) = 0x3F0000003DCCCCCDLL;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v6 & 1) == 0 || (ausdk::AUElement::SetParameter(v5, 0, 1.0), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v8 & 1) == 0) || (ausdk::AUElement::SetParameter(v7, 1u, 0.5), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v10 & 1) == 0) || (ausdk::AUElement::SetParameter(v9, 2u, 50.0), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v12 & 1) == 0) || (ausdk::AUElement::SetParameter(v11, 3u, 1.0), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v14 & 1) == 0) || (ausdk::AUElement::SetParameter(v13, 4u, 0.0), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v16 & 1) == 0) || (ausdk::AUElement::SetParameter(v15, 5u, 0.0), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v18 & 1) == 0) || (ausdk::AUElement::SetParameter(v17, 6u, 0.0), v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v20 & 1) == 0) || (ausdk::AUElement::SetParameter(v19, 7u, 0.1), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0), (v22 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v21, 8u, 0.5);
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (!getDistanceLogScope(void)::scope)
  {
    v23 = MEMORY[0x1E69E9C10];
LABEL_24:
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUDistance.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 652;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting the format defaults.", buf, 0x12u);
    }

    goto LABEL_26;
  }

  v23 = *getDistanceLogScope(void)::scope;
  if (*getDistanceLogScope(void)::scope)
  {
    goto LABEL_24;
  }

LABEL_26:
  v24 = 0;
  *(a1 + 608) = 0x40E5888000000000;
  *buf = 0x40E5888000000000;
  v36 = xmmword_1DE09CA20;
  *&buf[8] = xmmword_1DE09C190;
  while (1)
  {
    v25 = *(a1 + 120);
    if (v25)
    {
      LODWORD(v26) = (*(*v25 + 24))(v25);
    }

    else
    {
      v26 = (*(a1 + 104) - *(a1 + 96)) >> 3;
    }

    if (v24 >= v26)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((a1 + 80), v24);
    if (!Element)
    {
LABEL_49:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*Element + 56))(Element, buf);
    ++v24;
  }

  for (i = 0; ; ++i)
  {
    v29 = *(a1 + 168);
    if (v29)
    {
      LODWORD(v30) = (*(*v29 + 24))(v29);
    }

    else
    {
      v30 = (*(a1 + 152) - *(a1 + 144)) >> 3;
    }

    if (i >= v30)
    {
      break;
    }

    v31 = ausdk::AUScope::GetElement((a1 + 128), i);
    if (!v31)
    {
      goto LABEL_49;
    }

    (*(*v31 + 56))(v31, buf);
  }

  v32 = (*(*a1 + 512))(a1, 1156);
  *(a1 + 376) = 1;
  *(a1 + 620) = AUDebugFeature::IsNonFiniteHandlingEnabled(v32);
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v33 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      return a1;
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUDistance.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 70;
    _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d Constructed.", buf, 0x12u);
  }

  return a1;
}