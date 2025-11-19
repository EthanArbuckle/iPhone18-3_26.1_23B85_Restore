void sub_1C920538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a34);
  MEMORY[0x1CCA849E0](a10);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void AudioDSPGraph::AnalyzerBuilder::~AnalyzerBuilder(AudioDSPGraph::AnalyzerBuilder *this)
{
  *this = &unk_1F48D0D00;
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 8);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0D00;
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,AudioDSPGraph::AnalyzerBuilder::Info>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,AudioDSPGraph::AnalyzerBuilder::Info>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](a1 + 56);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AudioDSPGraph::Analyzer::Analyzer(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F48CC1E8;
  *(a1 + 24) = a2;
  *(a1 + 28) = 0;
  v5 = *a3;
  *(a1 + 48) = *(a3 + 4);
  *(a1 + 32) = v5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA84720](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1CCA84730](v20);
  return a1;
}

void sub_1C9205A74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84730](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C9205A48);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::string *AudioDSPGraph::stringFromFourCharCode<int>(std::string *retstr, unsigned int __val)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v6 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v7 = 39;
    v5 = 39;
    result = std::string::basic_string[abi:ne200100]<0>(retstr, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C9205C34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,char const*,std::string,std::string const>(void *result, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *result = 12;
  *a2 = a3;
  v5 = *(a4 + 23);
  v6 = v5;
  v7 = *a4;
  v8 = a4[1];
  *result |= 0x1A0uLL;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v8;
  }

  if (v6 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7;
  }

  a2[2] = v9;
  a2[3] = v5;
  v10 = *(a5 + 23);
  v11 = v10;
  v12 = *a5;
  v13 = a5[1];
  *result |= 0x3400uLL;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v13;
  }

  if (v11 >= 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = v12;
  }

  a2[4] = v14;
  a2[5] = v10;
  return result;
}

uint64_t AudioDSPGraph::Boxes::AUBox::uninitialize(AudioDSPGraph::Boxes::AUBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);
  *(this + 97) = *(this + 96);
  *(this + 100) = *(this + 99);
  v2 = AudioUnitUninitialize(*(this + 105));

  return AudioDSPGraph::Boxes::Detail::throwOnError(v2, "AudioUnitUninitialize", this + 5, off_1E8334A40);
}

uint64_t AudioDSPGraph::Boxes::AUBox::initialize(AudioDSPGraph::Boxes::AUBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 96);
  v4 = *(this + 9);
  v3 = *(this + 10);
  v76 = 0;
  v5 = v3 - v4;
  if (v3 == v4)
  {
    goto LABEL_47;
  }

  v6 = v5 >> 5;
  v7 = *(this + 98);
  v8 = *(this + 97);
  v9 = (v8 - v2) >> 3;
  if (v5 >> 5 <= ((v7 - v8) >> 3))
  {
    if (v6 <= v9)
    {
      v17 = *(this + 97);
      v9 = v5 >> 5;
    }

    else
    {
      v13 = 0;
      v14 = ((v5 >> 2) - (v8 - v2) - 8) >> 3;
      v15 = vdupq_n_s64(v14);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_1C925F100)));
        if (v16.i8[0])
        {
          v8[v13] = 0;
        }

        if (v16.i8[4])
        {
          v8[v13 + 1] = 0;
        }

        v13 += 2;
      }

      while (((v14 + 2) & 0x3FFFFFFFFFFFFFFELL) != v13);
      v17 = &v8[v6 - v9];
      *(this + 97) = v17;
      if (v8 == v2)
      {
        goto LABEL_47;
      }
    }

    v18 = &v2[8 * v6];
    v19 = &v17[-8 * v6];
    v20 = v17;
    if (v19 < v8)
    {
      v20 = v17;
      do
      {
        v21 = *v19++;
        *v20 = v21;
        v20 += 8;
      }

      while (v19 < v8);
    }

    *(this + 97) = v20;
    if (v17 != v18)
    {
      memmove(&v2[8 * v6], v2, v17 - v18);
    }

    v22 = &v76;
    if (v2 <= &v76)
    {
      if (*(this + 97) <= &v76)
      {
        v23 = 0;
      }

      else
      {
        v23 = v6;
      }

      v22 = &v76 + v23;
    }

    v24 = 0;
    v25 = *v22;
    v26 = vdupq_n_s64(v9 - 1);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v24), xmmword_1C925F100)));
      if (v27.i8[0])
      {
        *&v2[8 * v24] = v25;
      }

      if (v27.i8[4])
      {
        *&v2[8 * v24 + 8] = v25;
      }

      v24 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v24);
    goto LABEL_47;
  }

  v10 = v9 + v6;
  if ((v9 + v6) >> 61)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v2;
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
    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_97;
  }

  v28 = 0;
  v29 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v30 = vdupq_n_s64(v29);
  do
  {
    v31 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_1C925F100)));
    if (v31.i8[0])
    {
      *(8 * v28) = 0;
    }

    if (v31.i8[4])
    {
      *(8 * v28 + 8) = 0;
    }

    v28 += 2;
  }

  while (v29 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v28);
  v32 = (8 * v6);
  v33 = *(this + 97) - v2;
  memcpy(v32, v2, v33);
  v34 = &v32[v33];
  *(this + 97) = v2;
  v35 = *(this + 96);
  v36 = v2 - v35;
  v37 = (v35 - v2);
  memcpy(v37, v35, v36);
  *(this + 96) = v37;
  *(this + 97) = v34;
  *(this + 98) = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_47:
  v38 = *(this + 99);
  v40 = *(this + 12);
  v39 = *(this + 13);
  v76 = 0;
  v41 = v39 - v40;
  if (v39 == v40)
  {
    goto LABEL_90;
  }

  v42 = v41 >> 5;
  v43 = *(this + 101);
  v44 = *(this + 100);
  v45 = (v44 - v38) >> 3;
  if (v41 >> 5 <= ((v43 - v44) >> 3))
  {
    if (v42 <= v45)
    {
      v53 = *(this + 100);
      v45 = v41 >> 5;
    }

    else
    {
      v49 = 0;
      v50 = ((v41 >> 2) - (v44 - v38) - 8) >> 3;
      v51 = vdupq_n_s64(v50);
      do
      {
        v52 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v49), xmmword_1C925F100)));
        if (v52.i8[0])
        {
          v44[v49] = 0;
        }

        if (v52.i8[4])
        {
          v44[v49 + 1] = 0;
        }

        v49 += 2;
      }

      while (((v50 + 2) & 0x3FFFFFFFFFFFFFFELL) != v49);
      v53 = &v44[v42 - v45];
      *(this + 100) = v53;
      if (v44 == v38)
      {
        goto LABEL_90;
      }
    }

    v54 = &v38[8 * v42];
    v55 = &v53[-8 * v42];
    v56 = v53;
    if (v55 < v44)
    {
      v56 = v53;
      do
      {
        v57 = *v55++;
        *v56 = v57;
        v56 += 8;
      }

      while (v55 < v44);
    }

    *(this + 100) = v56;
    if (v53 != v54)
    {
      memmove(&v38[8 * v42], v38, v53 - v54);
    }

    v58 = 0;
    v59 = v76;
    if (v38 > &v76)
    {
      v59 = 0;
    }

    v60 = vdupq_n_s64(v45 - 1);
    do
    {
      v61 = vmovn_s64(vcgeq_u64(v60, vorrq_s8(vdupq_n_s64(v58), xmmword_1C925F100)));
      if (v61.i8[0])
      {
        *&v38[8 * v58] = v59;
      }

      if (v61.i8[4])
      {
        *&v38[8 * v58 + 8] = v59;
      }

      v58 += 2;
    }

    while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v58);
    goto LABEL_90;
  }

  v46 = v45 + v42;
  if ((v45 + v42) >> 61)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  v47 = v43 - v38;
  if (v47 >> 2 > v46)
  {
    v46 = v47 >> 2;
  }

  if (v47 >= 0x7FFFFFFFFFFFFFF8)
  {
    v48 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v46;
  }

  if (v48)
  {
    if (!(v48 >> 61))
    {
      operator new();
    }

LABEL_97:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v62 = 0;
  v63 = (v42 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v64 = vdupq_n_s64(v63);
  do
  {
    v65 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(vdupq_n_s64(v62), xmmword_1C925F100)));
    if (v65.i8[0])
    {
      *(8 * v62) = 0;
    }

    if (v65.i8[4])
    {
      *(8 * v62 + 8) = 0;
    }

    v62 += 2;
  }

  while (v63 - ((v42 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v62);
  v66 = (8 * v42);
  v67 = *(this + 100) - v38;
  memcpy(v66, v38, v67);
  v68 = &v66[v67];
  *(this + 100) = v38;
  v69 = *(this + 99);
  v70 = v38 - v69;
  v71 = (v69 - v38);
  memcpy(v71, v69, v70);
  *(this + 99) = v71;
  *(this + 100) = v68;
  *(this + 101) = 0;
  if (v69)
  {
    operator delete(v69);
  }

LABEL_90:
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) != 0)
  {
    v72 = 0;
    do
    {
      LODWORD(v76) = 0;
      (*(*this + 312))(this, 51, 1, v72, 4, &v76);
      v72 = (v72 + 1);
    }

    while (v72 < ((*(this + 10) - *(this + 9)) >> 5));
  }

  if (((*(this + 13) - *(this + 12)) & 0x1FFFFFFFE0) != 0)
  {
    v73 = 0;
    do
    {
      LODWORD(v76) = 0;
      (*(*this + 312))(this, 51, 2, v73, 4, &v76);
      v73 = (v73 + 1);
    }

    while (v73 < ((*(this + 13) - *(this + 12)) >> 5));
  }

  v74 = AudioUnitInitialize(*(this + 105));
  return AudioDSPGraph::Boxes::Detail::throwOnError(v74, "AudioUnitInitialize", this + 5, off_1E8334A28);
}

OpaqueAudioComponentInstance *AudioDSPGraph::Boxes::AUBox::close(AudioDSPGraph::Boxes::AUBox *this)
{
  result = *(this + 105);
  if (result)
  {
    v3 = AudioComponentInstanceDispose(result);
    *(this + 105) = 0;

    return AudioDSPGraph::Boxes::Detail::throwOnError(v3, "AudioUnitProcessMultiple", this + 5, off_1E8334A10);
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::AUBox::open(uint64_t this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(this + 840))
  {
    goto LABEL_20;
  }

  v1 = this;
  Next = AudioComponentFindNext(0, (this + 816));
  if (!Next)
  {
    v24 = 0;
    v19 = cf;
    LODWORD(v16.__r_.__value_.__l.__data_) = 0;
    v26 = (v1 + 5);
    *&v27 = &v16;
    *(&v27 + 1) = &v24;
    v28 = &v19;
    std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const>(unsigned long long &,std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>> *,std::string const &)::{lambda(void)#1}::operator()(&v26);
    v26 = v30;
    v27 = xmmword_1C925F110;
    v28 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v29 = 0;
    __p = v30;
    v19 = 1;
    v20 = cf;
    v21 = v24;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v26, "AudioComponentFindNext error in {}", 34, &v19);
    std::string::basic_string<std::string_view,0>(__dst, __p, *(&v27 + 1));
    if (__p != v30)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1633906209, __dst, off_1E83349C8);
  }

  v3 = (v1 + 105);
  v4 = AudioComponentInstanceNew(Next, v1 + 105);
  v5 = v4;
  if (v4)
  {
    AudioDSPGraph::Boxes::Detail::throwOnError(v4, "AudioComponentInstanceNew", v1 + 5, off_1E83349E0);
  }

  if (!*v3)
  {
    AudioDSPGraph::stringFromFourCharCode<int>(&v16, v5);
    v25[0] = 0;
    std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(v25, cf, &v16, v1 + 5);
    v26 = v30;
    v27 = xmmword_1C925F110;
    v28 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v29 = 0;
    __p = v30;
    v19 = 2;
    v20 = cf;
    v21 = v25[0];
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v26, "AudioComponentInstanceNew error {} in {}", 40, &v19);
    std::string::basic_string<std::string_view,0>(v17, __p, *(&v27 + 1));
    if (__p != v30)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1633906209, v17, off_1E83349F8);
  }

  v6 = AudioComponentInstanceCanDo(*v3, 20) && ((v1[10] - v1[9]) & 0x1FFFFFFFE0) == 0x20 && ((v1[13] - v1[12]) & 0x1FFFFFFFE0) == 32;
  *(v1 + 848) = v6;
  v7 = *(v1 + 63);
  v8 = (v1 + 5);
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v8 = v1[5];
  if (v8)
  {
    v7 = v1[6];
LABEL_13:
    v9 = CFStringCreateWithBytes(0, v8, v7, 0x8000100u, 0);
    cf[0] = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_14;
  }

  v9 = 0;
  cf[0] = 0;
LABEL_14:
  v26 = v9;
  (*(*v1 + 312))(v1, 54, 0, 0, 8, &v26);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v10 = (v1[10] - v1[9]) >> 5;
  LODWORD(v26) = v10;
  v11 = (v1[13] - v1[12]) >> 5;
  LODWORD(v19) = 0;
  LODWORD(v16.__r_.__value_.__l.__data_) = 0;
  v22 = 4;
  LODWORD(cf[0]) = v11;
  (*(*v1 + 304))(v1, 11, 1, 0, &v22, &v19);
  this = (*(*v1 + 304))(v1, 11, 2, 0, &v22, &v16);
  if (v19 != v10)
  {
    v12 = (*(*v1 + 312))(v1, 11, 1, 0, 4, &v26);
    this = AudioDSPGraph::Boxes::Detail::throwOnError(v12, "AudioUnitSetProperty", v1 + 5, off_1E8334AA0);
  }

  if (LODWORD(v16.__r_.__value_.__l.__data_) != v11)
  {
    v13 = (*(*v1 + 312))(v1, 11, 2, 0, 4, cf);
    this = AudioDSPGraph::Boxes::Detail::throwOnError(v13, "AudioUnitSetProperty", v1 + 5, off_1E8334AB8);
  }

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1C9206880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(void *result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a3 + 23);
  v5 = v4;
  v6 = *a3;
  v7 = a3[1];
  *result = 13;
  if ((v4 & 0x80u) != 0)
  {
    v4 = v7;
  }

  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  *a2 = v8;
  a2[1] = v4;
  v9 = *(a4 + 23);
  v10 = v9;
  v11 = *a4;
  v12 = a4[1];
  *result |= 0x1A0uLL;
  if ((v9 & 0x80u) != 0)
  {
    v9 = v12;
  }

  if (v10 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v11;
  }

  a2[2] = v13;
  a2[3] = v9;
  return result;
}

void AudioDSPGraph::Boxes::AUBox::decompileBox(uint64_t a1, void *a2, char a3)
{
  v5 = (a1 + 40);
  if (a3)
  {
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v9 = *(a1 + 64);
    std::string::basic_string[abi:ne200100]<0>(v13, v5);
    AudioDSPGraph::asDecompileString(&__p, v13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("box %qu %s ", &v16, v9, p_p);
    if ((v18 & 0x80u) == 0)
    {
      v7 = &v16;
    }

    else
    {
      v7 = v16;
    }

    if ((v18 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v17;
    }
  }

  else
  {
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    std::string::basic_string[abi:ne200100]<0>(v13, v5);
    AudioDSPGraph::asDecompileString(&__p, v13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("box %s ", &v16, v6);
    if ((v18 & 0x80u) == 0)
    {
      v7 = &v16;
    }

    else
    {
      v7 = v16;
    }

    if ((v18 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v17;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, v8);
  if (v18 < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  AudioDSPGraph::printACD(a2, (a1 + 816), 0);
  caulk::make_string(" %u %u\n", &v16, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
  if ((v18 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v16;
  }

  if ((v18 & 0x80u) == 0)
  {
    v12 = v18;
  }

  else
  {
    v12 = v17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, v12);
  if (v18 < 0)
  {
    operator delete(v16);
  }
}

void sub_1C9206B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::AUBox::getFormatFromUnit@<X0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, AudioUnitScope inScope@<W1>, AudioUnitElement inElement@<W2>, void *a4@<X8>)
{
  a4[4] = 0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  ioDataSize = 40;
  Property = AudioUnitGetProperty(*(this + 105), 8u, inScope, inElement, a4, &ioDataSize);
  return AudioDSPGraph::Boxes::Detail::throwOnError(Property, "AudioUnitGetProperty", this + 5, off_1E8334A88);
}

uint64_t AudioDSPGraph::Boxes::AUBox::setFormatOnUnit(AudioDSPGraph::Boxes::AUBox *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  v5 = AudioUnitSetProperty(*(this + 105), 8u, a3, a4, inData, 0x28u);

  return AudioDSPGraph::Boxes::Detail::throwOnError(v5, "AudioUnitGetProperty", this + 5, off_1E8334A70);
}

void AudioDSPGraph::Boxes::AUBox::getComponentName(AudioComponentInstance *this@<X0>, uint64_t a2@<X8>)
{
  Component = AudioComponentInstanceGetComponent(this[105]);
  if (Component && (outName = 0, !AudioComponentCopyName(Component, &outName)))
  {
    v10 = outName;
    if (!outName)
    {
      goto LABEL_10;
    }

    v4 = CFGetTypeID(outName);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (!v10)
    {
LABEL_10:
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(&v8, v10);
    *a2 = v8;
    v5 = v10;
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_1C9206D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

const void *AudioDSPGraph::Boxes::AUBox::getPreset@<X0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, CFTypeRef *a2@<X8>)
{
  cf = 0;
  v9 = 8;
  v3 = (*(*this + 304))(this, 0, 0, 0, &v9, &cf);
  if (v3)
  {
    v6 = v3;
    std::string::basic_string[abi:ne200100]<0>(v8, "AudioUnitGetProperty ClassInfo");
    AudioDSPGraph::ThrowException(v6, v8, off_1E8334968);
  }

  result = cf;
  *a2 = cf;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_1C9206EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v15);
  _Unwind_Resume(a1);
}

unint64_t AudioDSPGraph::Boxes::AUBox::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[105], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

__n128 AudioDSPGraph::Boxes::AUBox::desc@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[51];
  *a2 = result;
  a2[1].n128_u32[0] = this[52].n128_u32[0];
  return result;
}

BOOL AudioDSPGraph::Boxes::AUBox::usesFixedBlockSize(AudioDSPGraph::Boxes::AUBox *this)
{
  v4 = 4;
  v5 = 0;
  (*(*this + 304))(this, 3700, 0, 0, &v4, &v5);
  v2 = (*(*this + 304))(this, 3700, 0, 0, &v4, &v5);
  AudioDSPGraph::Boxes::Detail::throwOnError(v2, "AudioUnitGetProperty", this + 5, off_1E8334A58);
  return v5 != 0;
}

uint64_t AudioDSPGraph::Boxes::AUBox::setUsesFixedBlockSize(AudioDSPGraph::Boxes::AUBox *this, int a2)
{
  result = (*(*this + 296))(this, 3700, 0, 0);
  if ((v5 & 1) != 0 && (result & 0x100000000) != 0)
  {
    v6 = a2;
    return (*(*this + 312))(this, 3700, 0, 0, 4, &v6);
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::AUBox::getParameterInfo@<X0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 104;
  result = (*(*this + 304))();
  if (result)
  {
    v4 = 0;
    *a2 = result;
  }

  else
  {
    v5 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v5;
    *(a2 + 96) = v16;
    v6 = v11;
    *a2 = v10;
    *(a2 + 16) = v6;
    v7 = v13;
    v4 = 1;
    *(a2 + 32) = v12;
    *(a2 + 48) = v7;
  }

  *(a2 + 104) = v4;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C92072E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double AudioDSPGraph::Boxes::AUBox::getParameterList@<D0>(AudioDSPGraph::Boxes::AUBox *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*this + 296))(this, 3, a2, 0);
  if ((v8 & 1) != 0 && (v9 = v6, v6 > 3))
  {
    std::vector<unsigned int>::vector[abi:ne200100](__p, v6 >> 2);
    v10 = v9 & 0xFFFFFFFC;
    if ((*(*this + 304))(this, 3, a2, 0, &v10, __p[0]))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      result = *__p;
      *a3 = *__p;
      a3[2] = v12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_1C9207410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *AudioDSPGraph::Error::setDescription<>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 1)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  (*(*v4 + 24))(*(a1 + 16));
  (**v4)(v4);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
LABEL_5:
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
    return a1;
  }

  __break(1u);
  return result;
}

void AudioDSPGraph::Error::~Error(AudioDSPGraph::Error *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
LABEL_6:
    *(this + 2) = 0;
    return;
  }

  if (v2 == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 24))(*(this + 2));
      (**v3)(v3);
      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return;
      }

      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v3);
      goto LABEL_6;
    }
  }
}

void AudioDSPGraph::Boxes::AUBox::setParameter(AudioUnit *this@<X0>, AudioUnitParameterValue a2@<S0>, AudioUnitParameterID a3@<W1>, AudioUnitScope a4@<W2>, AudioUnitElement a5@<W3>, UInt32 a6@<W4>, uint64_t a7@<X8>)
{
  v12 = AudioUnitSetParameter(this[105], a3, a4, a5, a2, a6);
  if (v12)
  {
    v15.mEventType = v12;
    v15.mArgument.mParameter.mAudioUnit = off_1E8334938;
    *&v15.mArgument.mProperty.mPropertyID = 0;
    v15.mArgument.mParameter.mElement = 0;
    AudioDSPGraph::Error::setDescription<>(&v15, "AudioUnitSetParameter");
    *a7 = *&v15.mEventType;
    v13 = *&v15.mArgument.mProperty.mPropertyID;
    *&v15.mArgument.mProperty.mPropertyID = 0;
    *(a7 + 16) = v13;
    LODWORD(v13) = v15.mArgument.mParameter.mElement;
    v15.mArgument.mParameter.mElement = 0;
    *(a7 + 24) = v13;
    *(a7 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v15);
  }

  else
  {
    v14 = this[2];
    if (v14)
    {
      if (*(v14 + 926) == 1)
      {
        memset(&v15, 0, sizeof(v15));
        v15.mArgument.mParameter.mAudioUnit = this[105];
        *&v15.mArgument.mProperty.mPropertyID = __PAIR64__(a4, a3);
        v15.mArgument.mParameter.mElement = a5;
        AUEventListenerNotify(0, 0, &v15);
      }
    }

    *(a7 + 32) = 1;
  }
}

uint64_t AudioDSPGraph::Boxes::AUBox::selfTailTimeInTicks(AudioDSPGraph::Boxes::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 20, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 2) + 848));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t AudioDSPGraph::Boxes::AUBox::selfLatencyInTicks(AudioDSPGraph::Boxes::AUBox *this)
{
  v8 = 0.0;
  v7 = 8;
  v2 = (*(*this + 304))(this, 12, 0, 0, &v7, &v8);
  v3 = v8;
  if (v2)
  {
    v3 = 0.0;
  }

  v4 = llround(v3 * *(*(this + 2) + 848));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

BOOL AudioDSPGraph::Boxes::AUBox::isBypassed(AudioDSPGraph::Boxes::AUBox *this)
{
  v4 = 0;
  v3 = 4;
  if ((*(*this + 304))(this, 21, 0, 0, &v3, &v4))
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  return !v1;
}

uint64_t AudioDSPGraph::Boxes::AUBox::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    AudioDSPGraph::Box::print(result, a2, a3, a4);
    v7 = *(v6 + 840);
    AudioDSPGraph::printi(a2, v4 + 4, "AU %p\n");
  }

  return result;
}

void AudioDSPGraph::Boxes::AUBox::~AUBox(AudioDSPGraph::Boxes::AUBox *this)
{
  *this = &unk_1F48CCA58;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CCA58;
  v2 = *(this + 99);
  if (v2)
  {
    *(this + 100) = v2;
    operator delete(v2);
  }

  v3 = *(this + 96);
  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::AverageBox::process(AudioDSPGraph::Boxes::AverageBox *this, unsigned int a2)
{
  AudioDSPGraph::Boxes::SumBox::process(this, a2);
  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v12 = (this + 40);
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v15, v12, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C78);
  }

  v5 = *(*(v4 + 16) + 56);
  if ((*(v5 + 72) & 0x10) == 0)
  {
    v6 = *(v5 + 80);
    v7 = *(this + 9);
    v8 = *(this + 10);
    v9 = (v8 - v7) >> 5;
    if (v9 < 2)
    {
      if (v8 == v7)
      {
        v13 = (v8 - v7) >> 5;
        v14 = (this + 40);
        if (*(this + 63) < 0)
        {
          v14 = *v14;
        }

        caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v15, v14, v13, 0);
        AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C60);
      }

      *v15 = 1.0 / **(*(*(v7 + 16) + 56) + 80);
      MEMORY[0x1CCA853E0](*(v6 + 2), 1, v15, *(v6 + 2), 1, a2);
    }

    else
    {
      *v15 = 1.0 / v9;
      if (*v6)
      {
        v10 = 0;
        v11 = 4;
        do
        {
          MEMORY[0x1CCA853E0](*&v6[v11], 1, v15, *&v6[v11], 1, a2);
          ++v10;
          v11 += 4;
        }

        while (v10 < *v6);
      }
    }
  }
}

void sub_1C9207D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::AverageBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.15583197e161;
  *a1 = xmmword_1C925F1A0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::AverageBox::~AverageBox(AudioDSPGraph::Boxes::AverageBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void *AudioDSPGraph::Boxes::SumBox::SumBox(void *a1, uint64_t a2, unsigned int a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, a3, 1u);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D3498;
  return a1;
}

void sub_1C9207E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::uninitializePropertyTaps(uint64_t this)
{
  v1 = *(this + 184);
  v2 = *(this + 192);
  while (v1 != v2)
  {
    *(v1 + 48) = *(v1 + 40);
    v1 += 64;
  }

  return this;
}

void AudioDSPGraph::Box::initializePropertyTaps(AudioDSPGraph::Box *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(this + 23);
  v2 = *(this + 24);
  while (v1 != v2)
  {
    v3 = (*(**v1 + 296))(*v1, *(v1 + 2), *(v1 + 3), *(v1 + 4));
    if ((v4 & 1) == 0)
    {
      v8 = v3;
      v10 = *v1;
      v9 = v1 + 1;
      v11 = (v10 + 40);
      if (*(v10 + 63) < 0)
      {
        v11 = *v11;
      }

      __dst[2] = 492;
      v13[0] = v11;
      v13[2] = v9;
      v13[3] = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
      v13[4] = 492;
      *__c = v18;
      *__len = xmmword_1C925F110;
      v16 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v17 = 0;
      __p = v18;
      __dst[0] = 2;
      __dst[1] = v13;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__c, "'{}' failed to get property info for {}", 39, __dst);
      std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
      if (__p != v18)
      {
        operator delete(__p);
      }

      AudioDSPGraph::ThrowException(v8, __dst, off_1E8334BD8);
    }

    v5 = v1[5];
    if (v1[6] - v5 != v3)
    {
      v1[6] = v5;
      LOBYTE(__c[0]) = 0;
      v6 = v3;
      if (v3)
      {
        if (v1[7] - v5 < v3)
        {
          operator new();
        }

        bzero(v5, v3);
        v1[6] = &v5[v6];
      }
    }

    v1 += 8;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void *std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke(uint64_t a1, void **a2, unsigned int *a3)
{
  v10[9] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a3[1];
  v10[0] = *a3;
  v10[1] = 0;
  v10[2] = v5;
  v10[3] = 0;
  v6 = a3[2];
  v10[5] = 0;
  v10[6] = 6342;
  v10[4] = v6;
  v9[0] = 3;
  v9[1] = v10;
  v9[2] = 6342;
  result = std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v4, "ID {}, scope {}, element {}", 27, v9);
  *a2 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void AudioDSPGraph::Box::uninitializeAnalyzers(std::mutex *this)
{
  v10 = *MEMORY[0x1E69E9840];
  std::mutex::lock(this + 4);
  sig = this[5].__m_.__sig;
  for (i = *this[5].__m_.__opaque; sig != i; sig += 8)
  {
    caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(&this[5].__m_.__opaque[24], *(*sig + 24));
    v4 = *sig;
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v5 = AudioDSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v4 + 56);
      if (*(v4 + 79) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315138;
      v9 = v6;
      _os_log_debug_impl(&dword_1C91AE000, v5, OS_LOG_TYPE_DEBUG, "Analyzer::uninitialize %s", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  std::mutex::unlock(this + 4);
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(unint64_t a1, int a2)
{
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v17 = a2;
  v4 = -1;
  v5 = 40;
  do
  {
    v6 = atomic_load((a1 + v5));
    ++v4;
    v5 += 16;
  }

  while (*((v6 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v7 = a1;
  if (v4)
  {
    v7 = a1;
    do
    {
      v7 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v4--, v7, &v17);
    }

    while (v4);
  }

  v8 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v7, &v17);
  v10 = *(v9 + 8);
  if (v10 == a2)
  {
    v11 = v9;
    v12 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v8, v9);
    v14 = v13;
    if (!v13)
    {
      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v12, v11);
    }

    if ((v14 & 0x100000000) != 0 && v11)
    {
      v16 = a2;
      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v16, 0);
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, v10);
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, _DWORD *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 40;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = atomic_load((v2 + 16));
      v5 = *(v3 + 32);
      if (*(v5 + 32) == 1 && !*(v2 + 14))
      {
        (*v5)(v3 + 40, v2);
      }

      result = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(v3 + 16), v2, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v2 + 12) - 8]);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (*&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v4] < a3)
  {
    if (++v4 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 24);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 32));
        v13 = atomic_load((a3 + 16 * a2 + 24));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 8);
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 24));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 8))
      {
        break;
      }

      v17 = atomic_load((v16 + 24));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 24);
  atomic_store(a3, (v8 + 32));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 24), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 15), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 16));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 16));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

void AudioDSPGraph::Box::initializeAnalyzers(AudioDSPGraph::Box *this)
{
  std::mutex::lock(this + 4);
  v2 = *(this + 40);
  v3 = *(this + 41);
  if (v2 == v3)
  {
    goto LABEL_81;
  }

  v56 = *(this + 41);
  do
  {
    v4 = *(*v2 + 24);
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v65[0]) = v4;
    v5 = *(caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, v65, 0) + 8);
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 576, v6);
    if (v5 == v4)
    {
      goto LABEL_80;
    }

    v7 = *v2;
    v8 = *(*v2 + 80);
    v9 = *(this + 12);
    v10 = (*(this + 13) - v9) >> 5;
    if (v10 <= v8)
    {
      v55 = (this + 40);
      if (*(this + 63) < 0)
      {
        v55 = *v55;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v65, v55, v10, v8);
      AudioDSPGraph::ThrowException(1919837985, v65, off_1E8337C78);
    }

    v11 = *(v9 + 32 * v8 + 16);
    if (!v11)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "Box::initializeAnalyzers, Port Not Connected to Box.");
      AudioDSPGraph::ThrowException(1970168609, v64, off_1E8334B00);
    }

    *(v7 + 8) = v11;
    *(v7 + 16) = this;
    v12 = *(v7 + 24);
    if (*(this + 90) >= v12 || *(this + 136) <= v12)
    {
      __break(1u);
      return;
    }

    v59 = v7;
    v60 = v2;
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v65[0]) = v12;
    v13 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, v65, 0);
    v15 = *(v13 + 8);
    v61 = v12;
    if (v15 == v12)
    {
      goto LABEL_79;
    }

    v16 = v13;
    v17 = v14;
    v18 = 0;
    v19 = 0;
    for (i = 1; i != 9; ++i)
    {
      if (i == 1)
      {
        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v21 = 0;
        while (1)
        {
          v22 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v21 + 2504;
          if ((atomic_exchange(v22, 1u) & 1) == 0)
          {
            break;
          }

          v21 += 2512;
          if (v21 == 10048)
          {
            v21 = 0;
          }
        }

        v19 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v21), &qword_1EC395550);
        atomic_store(0, v22);
        v18 = 3;
      }

      if ((v18 & ~v19) != 0)
      {
        break;
      }

      v18 *= 4;
    }

    v23 = 0;
    v24 = *(this + 74);
    while (1)
    {
      v25 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v23];
      if (v25 >= *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * i - 8])
      {
        break;
      }

      if (++v23 == 10)
      {
        v26 = 0;
        goto LABEL_51;
      }
    }

    v27 = v24 + 32 * v23 + 48;
    v28 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (v28)
    {
      v26 = v28;
      atomic_fetch_add((v27 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      atomic_fetch_add((v24 + 36), 0x801u);
      explicit = *(v24 + 24);
      if (explicit)
      {
        v57 = 0;
      }

      else
      {
        explicit = atomic_load_explicit((v24 + 16), memory_order_acquire);
        v57 = explicit;
      }

      v62 = v24;
      if (explicit)
      {
        v30 = explicit;
        while (1)
        {
          v31 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v30 + 2, v25);
          if (v31)
          {
            break;
          }

          v30 = atomic_load(v30);
          if (!v30)
          {
            v30 = atomic_load_explicit((v24 + 16), memory_order_acquire);
            v57 = v30;
          }

          if (v30 == explicit)
          {
            v32 = atomic_load_explicit((v24 + 16), memory_order_acquire);
            goto LABEL_36;
          }
        }

        v26 = v31;
      }

      else
      {
        v32 = 0;
LABEL_36:
        v58 = v32;
        if (!v32)
        {
          goto LABEL_44;
        }

        v30 = v32;
        if (v32 == v57)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v33 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v30 + 2, v25);
          if (v33)
          {
            break;
          }

          v30 = atomic_load(v30);
          if (v30)
          {
            v34 = v57 == v30;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
LABEL_44:
            while (1)
            {
              v35 = v62;
              v30 = caulk::alloc::details::caching_page_allocator_base::allocate(*(v62 + 8));
              *v30 = 0;
              v30[1] = v36;
              v30[2] = 0;
              __dmb(0xBu);
              v37 = v58;
              atomic_store(v58, v30);
              v38 = (v35 + 16);
              v32 = v37;
              atomic_compare_exchange_strong(v38, &v32, v30);
              if (v32 != v37)
              {
                break;
              }

              v33 = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v30 + 2, v25);
              if (v33)
              {
                goto LABEL_48;
              }
            }

            v39 = v30[1];
            v40 = *(v62 + 8);
            caulk::alloc::details::caching_page_allocator_base::deallocate();
            v57 = v58;
            goto LABEL_36;
          }
        }

LABEL_48:
        v26 = v33;
      }

      *(v62 + 24) = v30;
      atomic_fetch_add((v62 + 36), 0xFFFFFFFF);
    }

LABEL_51:
    *(v26 + 12) = i;
    *(v26 + 13) = 1;
    *(v26 + 15) = i;
    *(v26 + 8) = v61;
    *v26 = v59;
    *(v26 + 24) = 0;
    v63 = (v26 + 24);
    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
    if (i)
    {
      v41 = (v26 + 32);
      v42 = i;
      do
      {
        atomic_store(0, v41 - 1);
        atomic_store(0, v41);
        v41 += 2;
        --v42;
      }

      while (v42);
    }

    v43 = 0;
    __dmb(0xBu);
    while (2)
    {
      if (*(v16 + 8) == *(v26 + 8))
      {
        v44 = 0;
        goto LABEL_74;
      }

      while (1)
      {
        v45 = (v16 + 16 * v43 + 24);
        v46 = atomic_load(v45);
        if ((v46 & 2) == 0)
        {
          break;
        }

        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v43, v16, v46 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_65:
        v50 = *(v26 + 8);
        while (1)
        {
          v51 = atomic_load((v16 + 16 * v43 + 24));
          v17 = v51 & 0xFFFFFFFFFFFFFFFCLL;
          if (v50 < *((v51 & 0xFFFFFFFFFFFFFFFCLL) + 8))
          {
            break;
          }

          v52 = atomic_load((v17 + 24));
          if (v52)
          {
            v16 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(this + 352, v43, v16, v17);
            if (!v53)
            {
              caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v43, v16, v17);
            }
          }

          else
          {
            v16 = v17;
          }
        }

        if (*(v16 + 8) == *(v26 + 8))
        {
          v44 = 0;
          goto LABEL_74;
        }
      }

      atomic_store(v17, &v63[2 * v43]);
      v47 = v17;
      atomic_compare_exchange_strong(v45, &v47, v26);
      if (v47 != v17)
      {
        if ((v47 & 2) != 0)
        {
          caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 352, v43, v16, v47 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v48 = atomic_load(v45);
        if (v48)
        {
          do
          {
            v16 = atomic_load((v16 + 16 * v43 + 32));
            v49 = atomic_load((v16 + 16 * v43 + 24));
          }

          while ((v49 & 1) != 0);
        }

        goto LABEL_65;
      }

      v44 = v26;
LABEL_74:
      if (v44 | v43)
      {
        v15 = atomic_load(v63);
        if ((v15 & 1) == 0 && ++v43 != i)
        {
          LODWORD(v65[0]) = v61;
          v16 = caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 352, v65, v43);
          v17 = v54;
          continue;
        }
      }

      else
      {
        caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(this + 74), v26, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v26 + 12) - 8]);
      }

      break;
    }

LABEL_79:
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 576, v15);
    v2 = v60;
    v3 = v56;
LABEL_80:
    ++v2;
  }

  while (v2 != v3);
LABEL_81:

  std::mutex::unlock(this + 4);
}

void sub_1C920906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v30 + 4);
  _Unwind_Resume(a1);
}

unint64_t *caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load(result);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

char *caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0x7FF8;
  v3 = a2 > 0x3FF0 || v2 == 0;
  if (v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = ~(a1 + 23 + *a1) & 7;
  v6 = *a1 + v2 + v5;
  if (v6 > 0x3FE0)
  {
    return 0;
  }

  v8 = *a1;
  atomic_compare_exchange_strong(a1, &v8, v6);
  if (v8 != v4)
  {
    do
    {
      v5 = ~(a1 + 23 + v8) & 7;
      v9 = v8 + v2 + v5;
      if (v9 >= 0x3FE1)
      {
        return 0;
      }

      v4 = v8;
      v10 = v8;
      atomic_compare_exchange_strong(a1, &v10, v9);
      v3 = v10 == v8;
      v8 = v10;
    }

    while (!v3);
  }

  result = a1 + v4 + v5 + 16;
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random();
  }
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random()
{
  v0 = 0;
  v1 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine;
  do
  {
    v2 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v0;
    v3 = 5489;
    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v0) = 5489;
    for (i = 1; i != 624; ++i)
    {
      v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
      v1[i] = v3;
    }

    *(v2 + 312) = 0;
    v2[2504] = 0;
    v0 += 2512;
    v1 += 628;
  }

  while (v0 != 10048);
  v5 = 0;
  qword_1EC395550 = 0xFFFFFFFF00000000;
  v6 = &caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine;
  do
  {
    LODWORD(result) = mach_absolute_time();
    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v5) = result;
    for (j = 1; j != 624; ++j)
    {
      result = j + 1812433253 * (result ^ (result >> 30));
      v6[j] = result;
    }

    *(&caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v5 + 2496) = 0;
    v5 += 2512;
    v6 += 628;
  }

  while (v5 != 10048);
  return result;
}

uint64_t AudioDSPGraph::Box::uninitialize(AudioDSPGraph::Box *this)
{
  v2 = *(this + 26);
  v3 = *(this + 27);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    *(*v2 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v7 = v4[6];
      ;
    }

    v4[7] = v7;
    AudioDSPGraph::SimpleABL::free((v4 + 9));
    v2 += 8;
  }

  v8 = *(this + 29);
  v9 = *(this + 30);
  while (v8 != v9)
  {
    v10 = *v8;
    AudioDSPGraph::SimpleABL::free((*v8 + 16));
    v12 = *(v10 + 80);
      ;
    }

    *(v10 + 88) = v12;
    ++v8;
  }

  result = (*(*this + 584))(this);
  if (*(this + 752) == 1)
  {
    *(this + 752) = 0;
  }

  return result;
}

uint64_t AudioDSPGraph::Box::initialize(AudioDSPGraph::Box *this)
{
  v1 = *(this + 26);
  v2 = *(this + 27);
  if (v1 != v2)
  {
    v3 = &unk_1EC395000;
    v4 = &unk_1EC395000;
    v72 = *(this + 27);
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8);
      v7 = v6[15];
      if (*(v7 + 2) == 1718773105)
      {
        v8 = v6[4];
        if (v8)
        {
          v8 = *(*(*(v8 + 16) + 8) + 24);
        }

        if (*(v8 + 268) == 1)
        {
          v9 = *(v8 + 272);
        }

        v10 = *(v7 + 7);
        std::vector<std::unique_ptr<TimeFreqConverter>>::reserve((v5 + 48), v10);
        if (v10)
        {
          operator new();
        }

        v11 = *(*(v5 + 8) + 32);
        if (v11)
        {
          v11 = *(*(*(v11 + 16) + 8) + 24);
        }

        v2 = v72;
        v3 = &unk_1EC395000;
        v4 = &unk_1EC395000;
        v12 = *(v11 + 268);
        if (v12 == 1)
        {
          v12 = *(v11 + 272);
        }

        AudioDSPGraph::SimpleABL::alloc((v5 + 72), 0, 4 * v12, 0);
        v6 = *(v5 + 8);
        v7 = v6[15];
      }

      v13 = (v5 + 24);
      if (*(v5 + 47) < 0)
      {
        v13 = *v13;
      }

      v78 = 0;
      memset(v77, 0, sizeof(v77));
      v14 = *v7;
      v15 = *(v7 + 7);
      if (*(v7 + 2) == 1718773105)
      {
        *(&v77[0] + 1) = 0x296C70636DLL;
        *&v77[1] = 0x100000004;
        DWORD2(v77[1]) = 4;
        LODWORD(v78) = 32;
        v6 = *(v5 + 8);
      }

      else
      {
        v16 = v7[4];
        DWORD2(v77[0]) = *(v7 + 2);
        *(v77 + 12) = *(v7 + 12);
        v78 = v16;
      }

      *&v77[0] = v14;
      HIDWORD(v77[1]) = v15;
      v17 = *(v5 + 96);
      v18 = *(*(*(v6[1] + 8) + 16) + 1048);
      if (v3[183] != -1)
      {
        dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_2987);
      }

      v19 = v4[182];
      if (v19)
      {
        v20 = v19(v17, 0, v13, v18, 0, v77);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v5 + 16);
      *(v5 + 16) = v20;
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v20 = *(v5 + 16);
      }

      if (!v20)
      {
        std::string::basic_string[abi:ne200100]<0>(inURL, "NewAudioCapturer returned null");
        AudioDSPGraph::ThrowException(1852204065, inURL, off_1E83359B8);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  v22 = *(this + 29);
  v73 = *(this + 30);
  if (v22 != v73)
  {
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v23 = *v22;
      v24 = *(*v22 + 8);
      v25 = *(v24 + 120);
      if (*(v25 + 8) == 1718773105)
      {
        v26 = *(v24 + 32);
        if (v26)
        {
          v26 = *(*(*(v26 + 16) + 8) + 24);
        }

        if (*(v26 + 268) == 1)
        {
          v27 = *(v26 + 272);
        }

        v28 = *(v25 + 28);
        std::vector<std::unique_ptr<TimeFreqConverter>>::reserve((v23 + 80), v28);
        if (v28)
        {
          operator new();
        }
      }

      v29 = *(v23 + 71);
      if (v29 < 0)
      {
        v30 = *(v23 + 48);
        v29 = *(v23 + 56);
      }

      else
      {
        v30 = (v23 + 48);
      }

      v31 = CFURLCreateFromFileSystemRepresentation(allocator, v30, v29, 0);
      inURL[0] = v31;
      if (!v31)
      {
        goto LABEL_77;
      }

      v32 = CFGetTypeID(v31);
      if (v32 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (!inURL[0])
      {
LABEL_77:
        std::string::basic_string[abi:ne200100]<0>(v77, "couldn't convert path to CFURLRef");
        AudioDSPGraph::ThrowException(-4960, v77, off_1E8335928);
      }

      outExtAudioFile = 0;
      v33 = ExtAudioFileOpenURL(inURL[0], &outExtAudioFile);
      if (v33)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "ExtAudioFileOpenURL failed");
        AudioDSPGraph::ThrowException(v33, v77, off_1E8335940);
      }

      v34 = outExtAudioFile;
      outPropertyData = 0;
      v82 = outExtAudioFile;
      ioPropertyDataSize = 8;
      Property = ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "ExtAudioFileGetProperty(FileLengthFrames) failed");
        AudioDSPGraph::ThrowException(Property, v77, off_1E8335958);
      }

      v36 = outPropertyData;
      if ((outPropertyData & 0x8000000000000000) != 0)
      {
        v65 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v65, "numerical cast overflow: could not retain value in conversion type");
        v65->__vftable = (MEMORY[0x1E69E55C0] + 16);
      }

      v37 = *(v23 + 8);
      v38 = *(v37 + 120);
      *(v23 + 36) = *(v38 + 24);
      v39 = *(v37 + 32);
      if (v39)
      {
        v39 = *(*(*(v39 + 16) + 8) + 24);
      }

      v40 = *(v38 + 28);
      v41 = *(v39 + 268);
      if (v41 == 1)
      {
        v41 = *(v39 + 272);
      }

      *(v23 + 40) = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36);
      v42 = *(v23 + 36);
      v43 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36 + v41);
      v44 = caulk::numeric::exceptional_mul<unsigned int>(v42, v43);
      AudioDSPGraph::SimpleABL::alloc((v23 + 16), v40, v44, 0);
      v45 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, *(*(v23 + 8) + 120));
      if (v45)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "ExtAudioFileSetProperty(ClientDataFormat) failed");
        AudioDSPGraph::ThrowException(v45, v77, off_1E8335970);
      }

      ioNumberFrames = *(v23 + 40);
      v46 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, *(v23 + 16));
      if (v46)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "ExtAudioFileRead failed");
        AudioDSPGraph::ThrowException(v46, v77, off_1E8335988);
      }

      v47 = ioNumberFrames;
      *(v23 + 40) = ioNumberFrames;
      v48 = *(*(v23 + 8) + 32);
      if (v48)
      {
        v48 = *(*(*(v48 + 16) + 8) + 24);
      }

      v49 = *(v48 + 268);
      if (v49 == 1)
      {
        v49 = *(v48 + 272);
      }

      v50 = *(v23 + 16);
      if (v50 && *v50)
      {
        v51 = 0;
        v52 = *(v23 + 36);
        v53 = v52 * v47;
        v54 = (v49 * v52);
        v55 = 4;
        do
        {
          bzero((*&v50[v55] + v53), v54);
          ++v51;
          v50 = *(v23 + 16);
          v55 += 4;
        }

        while (v51 < *v50);
      }

      v82 = 0;
      if (v34)
      {
        ExtAudioFileDispose(v34);
      }

      if (inURL[0])
      {
        CFRelease(inURL[0]);
      }

      *(v23 + 32) = 0;
      ++v22;
    }

    while (v22 != v73);
  }

  (*(*this + 576))(this);
  v56 = *(this + 40);
  v57 = *(this + 41);
  while (v56 != v57)
  {
    v58 = *v56++;
    (*(*v58 + 128))(v58);
  }

  result = (*(*this + 424))(this);
  if ((result & 1) == 0)
  {
    v60 = *(this + 9);
    for (i = *(this + 10); v60 != i; v60 += 32)
    {
      if (*(*(*(v60 + 16) + 120) + 8) == 1718773105)
      {
        v66 = (this + 40);
        if (*(this + 63) < 0)
        {
          v66 = *v66;
        }

        v67 = (*(*this + 16))(this);
        caulk::make_string("frequency data is passed through a No Frequency Safe Box-> %s %s", v75, v66, v67);
        AudioDSPGraph::ThrowException(1718773025, v75, off_1E8334AD0);
      }
    }

    v62 = *(this + 12);
    for (j = *(this + 13); v62 != j; v62 += 32)
    {
      if (*(*(*(v62 + 16) + 120) + 8) == 1718773105)
      {
        v68 = (this + 40);
        if (*(this + 63) < 0)
        {
          v68 = *v68;
        }

        v69 = (*(*this + 16))(this);
        caulk::make_string("frequency data is passed through a No Frequency Safe Box-> %s %s", v74, v68, v69);
        AudioDSPGraph::ThrowException(1718773025, v74, off_1E8334AE8);
      }
    }
  }

  return result;
}

void sub_1C9209F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_free_exception(v37);
  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100]((v38 - 120));
  applesauce::CF::URLRef::~URLRef(&a26);
  _Unwind_Resume(a1);
}

void *AudioDSPGraph::Box::decompileAnalyzers(void *result, void *a2, char a3)
{
  v4 = result[40];
  v3 = result[41];
  if (v4 != v3)
  {
    v7 = result;
    v8 = (result + 5);
    do
    {
      if (a3)
      {
        caulk::make_string("analysis %qu", __p, *(*v4 + 88));
        if (v28 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if (v28 >= 0)
        {
          v16 = HIBYTE(v28);
        }

        else
        {
          v16 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v15, v16);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        v17 = *v4;
        std::operator+<char>();
        v18 = std::string::append(&v26, " ", 1uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v28 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (v28 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v28 >= 0)
        {
          v21 = HIBYTE(v28);
        }

        else
        {
          v21 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v20, v21);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        AudioDSPGraph::print4cc(a2, *(*v4 + 24));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        if ((*(**v4 + 40))())
        {
          AudioDSPGraph::printACD(a2, (*v4 + 32), 0);
        }

        v22 = v8;
        if (*(v7 + 63) < 0)
        {
          v22 = *v8;
        }

        std::string::basic_string[abi:ne200100]<0>(v24, v22);
        AudioDSPGraph::asDecompileString(&v26, v24);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        caulk::make_string("(%s %u)", __p, v23, *(*v4 + 80));
        if (v28 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v28 >= 0)
        {
          v14 = HIBYTE(v28);
        }

        else
        {
          v14 = __p[1];
        }
      }

      else
      {
        caulk::make_string("analysis ", __p);
        if (v28 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if (v28 >= 0)
        {
          v10 = HIBYTE(v28);
        }

        else
        {
          v10 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, v10);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        AudioDSPGraph::print4cc(a2, *(*v4 + 24));
        v11 = v8;
        if (*(v7 + 63) < 0)
        {
          v11 = *v8;
        }

        std::string::basic_string[abi:ne200100]<0>(v24, v11);
        AudioDSPGraph::asDecompileString(&v26, v24);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v26;
        }

        else
        {
          v12 = v26.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(" (%s %u)", __p, v12, *(*v4 + 80));
        if (v28 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v28 >= 0)
        {
          v14 = HIBYTE(v28);
        }

        else
        {
          v14 = __p[1];
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v13, v14);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_1C920A3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileAntecedents(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = v2[2];
      v7 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v16, v7);
      AudioDSPGraph::asDecompileString(&v18, v16);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      v9 = v5;
      if (*(a1 + 63) < 0)
      {
        v9 = *v5;
      }

      std::string::basic_string[abi:ne200100]<0>(v13, v9);
      AudioDSPGraph::asDecompileString(&__p, v13);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("order %s %s\n", v19, v8, p_p);
      if ((v20 & 0x80u) == 0)
      {
        v11 = v19;
      }

      else
      {
        v11 = v19[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v12 = v20;
      }

      else
      {
        v12 = v19[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, v12);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1C920A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompilePropertyTaps(uint64_t a1, void *a2)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  if (v2 != v3)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = (*v2 + 40);
      if (*(*v2 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v20, v7);
      AudioDSPGraph::asDecompileString(&v22, v20);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v22;
      }

      else
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      v9 = v6;
      if (*(a1 + 63) < 0)
      {
        v9 = *v6;
      }

      v10 = *(v2 + 8);
      v11 = *(v2 + 12);
      v12 = *(v2 + 16);
      std::string::basic_string[abi:ne200100]<0>(v17, v9);
      AudioDSPGraph::asDecompileString(&__p, v17);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v14 = &byte_1C9279A7A;
      if (*(v2 + 36))
      {
        v14 = "true";
      }

      caulk::make_string("wireProperty (%s %u %u %u) (%s %u %u %u) %s\n", v23, v8, v10, v11, v12, p_p, *(v2 + 24), *(v2 + 28), *(v2 + 32), v14);
      if ((v24 & 0x80u) == 0)
      {
        v15 = v23;
      }

      else
      {
        v15 = v23[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v16 = v24;
      }

      else
      {
        v16 = v23[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v15, v16);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v2 += 64;
    }

    while (v2 != v3);
  }
}

void sub_1C920A7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileParameterTaps(uint64_t a1, void *a2)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  if (v2 != v3)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = (*v2 + 40);
      if (*(*v2 + 63) < 0)
      {
        v7 = *v7;
      }

      std::string::basic_string[abi:ne200100]<0>(v20, v7);
      AudioDSPGraph::asDecompileString(&v22, v20);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v22;
      }

      else
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      v9 = v6;
      if (*(a1 + 63) < 0)
      {
        v9 = *v6;
      }

      v10 = *(v2 + 8);
      v11 = *(v2 + 12);
      v12 = *(v2 + 16);
      std::string::basic_string[abi:ne200100]<0>(v17, v9);
      AudioDSPGraph::asDecompileString(&__p, v17);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v14 = &byte_1C9279A7A;
      if (*(v2 + 36))
      {
        v14 = "true";
      }

      caulk::make_string("wireParam (%s %u %u %u) (%s %u %u %u) %s\n", v23, v8, v10, v11, v12, p_p, *(v2 + 24), *(v2 + 28), *(v2 + 32), v14);
      if ((v24 & 0x80u) == 0)
      {
        v15 = v23;
      }

      else
      {
        v15 = v23[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v16 = v24;
      }

      else
      {
        v16 = v23[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v15, v16);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v2 += 40;
    }

    while (v2 != v3);
  }
}

void sub_1C920AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileWires(uint64_t a1, void *a2)
{
  v98[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 96);
  v88 = *(a1 + 104);
  if (v2 != v88)
  {
    v4 = a1;
    v91 = (a1 + 40);
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v92 = v2;
      v90 = *(v2 + 16);
      v6 = *(v90 + 32);
      if (v6)
      {
        break;
      }

LABEL_229:
      v2 = v92 + 32;
      if (v92 + 32 == v88)
      {
        goto LABEL_230;
      }
    }

    while (1)
    {
      v7 = v6[2];
      v8 = *(v7 + 8);
      caulk::make_string("wire ", &v97);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v97;
      }

      else
      {
        v9 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v97.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, size);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (*(v92 + 24))
      {
        v11 = v91;
        if (*(v4 + 63) < 0)
        {
          v11 = *v91;
        }

        std::string::basic_string[abi:ne200100]<0>(&v95, v11);
        AudioDSPGraph::asDecompileString(&__p, &v95);
        v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string("(%s %u) ", &v97, v12, *(v92 + 24));
        v13 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
        v14 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
      }

      else
      {
        v15 = v91;
        if (*(v4 + 63) < 0)
        {
          v15 = *v91;
        }

        std::string::basic_string[abi:ne200100]<0>(&v95, v15);
        AudioDSPGraph::asDecompileString(&__p, &v95);
        v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string("%s ", &v97, v16);
        v13 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
        v14 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v13, v14);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      v17 = (v8 + 40);
      if (*(v7 + 24))
      {
        if (*(v8 + 63) < 0)
        {
          v17 = *v17;
        }

        std::string::basic_string[abi:ne200100]<0>(&v95, v17);
        AudioDSPGraph::asDecompileString(&__p, &v95);
        v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string("(%s %u) ", &v97, v18, *(v7 + 24));
        v19 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
        v20 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
      }

      else
      {
        if (*(v8 + 63) < 0)
        {
          v17 = *v17;
        }

        std::string::basic_string[abi:ne200100]<0>(&v95, v17);
        AudioDSPGraph::asDecompileString(&__p, &v95);
        v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        caulk::make_string("%s ", &v97, v21);
        v19 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
        v20 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v19, v20);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      v22 = *(v90 + 120);
      v23 = *(v22 + 40);
      memset(&v93, 0, sizeof(v93));
      v24 = *(v22 + 8);
      if (v24 != 1819304813)
      {
        break;
      }

      if ((~*(v22 + 12) & 0x21) != 0 || *(v22 + 32) != 32)
      {
        memset(&__p, 0, sizeof(__p));
        v56 = 1;
        v57 = *(v22 + 12);
        if ((v57 & 2) != 0)
        {
          std::string::append(&__p, "BE", 2uLL);
          v57 = *(v22 + 12);
        }

        v58 = "F";
        if ((v57 & 1) == 0)
        {
          v58 = "UI";
        }

        if ((v57 & 4) != 0)
        {
          v59 = "I";
        }

        else
        {
          v59 = v58;
        }

        if ((v57 & 5) != 0)
        {
          v60 = 1;
        }

        else
        {
          v60 = 2;
        }

        std::string::append(&__p, v59, v60);
        std::to_string(&v97, *(v22 + 32));
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v97;
        }

        else
        {
          v61 = v97.__r_.__value_.__r.__words[0];
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v62 = v97.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v61, v62);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

LABEL_153:
        std::string::push_back(&__p, 64);
        std::to_string(&v97, *v22);
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v97;
        }

        else
        {
          v63 = v97.__r_.__value_.__r.__words[0];
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = v97.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v63, v64);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
          if ((v56 & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v56)
          {
            goto LABEL_191;
          }

LABEL_163:
          if (*(v22 + 12))
          {
            std::string::append(&__p, "/", 1uLL);
            v65 = *(v22 + 12);
            if (v65)
            {
              memset(&v97, 0, sizeof(v97));
              do
              {
                std::string::push_back(&v97, a0123456789abcd_1[v65 & 0xF]);
                v66 = v65 >= 0x10;
                v65 >>= 4;
              }

              while (v66);
              v67 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
              v68 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
              v70 = v97.__r_.__value_.__l.__size_;
              v69 = v97.__r_.__value_.__r.__words[0];
              if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v71 = &v97;
              }

              else
              {
                v71 = v97.__r_.__value_.__r.__words[0];
              }

              if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v72 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v72 = v97.__r_.__value_.__l.__size_;
              }

              v73 = (v71 + v72 - 1);
              if (v72)
              {
                v74 = v73 > v71;
              }

              else
              {
                v74 = 0;
              }

              if (v74)
              {
                v75 = &v71->__r_.__value_.__s.__data_[1];
                v4 = a1;
                do
                {
                  v76 = *(v75 - 1);
                  *(v75 - 1) = v73->__r_.__value_.__s.__data_[0];
                  v73->__r_.__value_.__s.__data_[0] = v76;
                  v73 = (v73 - 1);
                  v66 = v75++ >= v73;
                }

                while (!v66);
                v67 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
                v70 = v97.__r_.__value_.__l.__size_;
                v69 = v97.__r_.__value_.__r.__words[0];
                v68 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v4 = a1;
              }

              if (v68 >= 0)
              {
                v77 = &v97;
              }

              else
              {
                v77 = v69;
              }

              if (v68 >= 0)
              {
                v78 = v67;
              }

              else
              {
                v78 = v70;
              }

              std::string::append(&__p, v77, v78);
              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              std::string::append(&__p, "0", 1uLL);
              v4 = a1;
            }
          }
        }

LABEL_191:
        if (*(v22 + 20) != 1)
        {
          std::string::push_back(&__p, 35);
          std::to_string(&v97, *(v22 + 20));
          v79 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
          v80 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
          std::string::append(&__p, v79, v80);
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        if (*(v22 + 28) >= 2u)
        {
          std::string::push_back(&__p, 44);
          std::to_string(&v97, *(v22 + 28));
          if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = &v97;
          }

          else
          {
            v81 = v97.__r_.__value_.__r.__words[0];
          }

          if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v82 = v97.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v81, v82);
          if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (!v56)
            {
              goto LABEL_215;
            }

LABEL_211:
            if ((*(v22 + 12) & 0x20) != 0)
            {
              v83 = 68;
            }

            else
            {
              v83 = 73;
            }

            std::string::push_back(&__p, v83);
            goto LABEL_215;
          }

          operator delete(v97.__r_.__value_.__l.__data_);
          if (v56)
          {
            goto LABEL_211;
          }
        }

LABEL_215:
        v93 = __p;
        goto LABEL_216;
      }

      std::to_string(&v95, *v22);
      v38 = std::string::insert(&v95, 0, "(", 1uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = std::string::append(&__p, " ", 1uLL);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v94, *(v22 + 28));
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v94;
      }

      else
      {
        v42 = v94.__r_.__value_.__r.__words[0];
      }

      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v94.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&v97, v42, v43);
      v45 = v44->__r_.__value_.__r.__words[0];
      v98[0] = v44->__r_.__value_.__l.__size_;
      *(v98 + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
      v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v93.__r_.__value_.__r.__words[0] = v45;
      *(&v93.__r_.__value_.__r.__words[1] + 7) = *(v98 + 7);
      v93.__r_.__value_.__l.__size_ = v98[0];
      *(&v93.__r_.__value_.__s + 23) = v46;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (v23 >= 2)
      {
        std::to_string(&__p, v23);
        v47 = std::string::insert(&__p, 0, " ", 1uLL);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &v97;
        }

        else
        {
          v49 = v97.__r_.__value_.__r.__words[0];
        }

        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = v97.__r_.__value_.__l.__size_;
        }

        std::string::append(&v93, v49, v50);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_96:
      std::string::append(&v93, ")", 1uLL);
LABEL_216:
      v84 = &v93;
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v84 = v93.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("%s\n", &v97, v84);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &v97;
      }

      else
      {
        v85 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = v97.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v85, v86);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_229;
      }
    }

    if (v24 == 1718773105)
    {
      std::to_string(&v95, *v22);
      v25 = std::string::insert(&v95, 0, "(freq ", 6uLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&__p, " ", 1uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v94, *(v22 + 28));
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v94;
      }

      else
      {
        v29 = v94.__r_.__value_.__r.__words[0];
      }

      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v94.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v97, v29, v30);
      v32 = v31->__r_.__value_.__r.__words[0];
      v98[0] = v31->__r_.__value_.__l.__size_;
      *(v98 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
      v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v93.__r_.__value_.__r.__words[0] = v32;
      *(&v93.__r_.__value_.__r.__words[1] + 7) = *(v98 + 7);
      v93.__r_.__value_.__l.__size_ = v98[0];
      *(&v93.__r_.__value_.__s + 23) = v33;
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      std::to_string(&__p, v23);
      v34 = std::string::insert(&__p, 0, " ", 1uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v97;
      }

      else
      {
        v36 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v97.__r_.__value_.__l.__size_;
      }

      std::string::append(&v93, v36, v37);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_96;
    }

    memset(&__p, 0, sizeof(__p));
    v51 = 24;
    while (1)
    {
      v52 = *(v22 + 8);
      v53 = v52 >> v51;
      v54 = (v52 >> v51);
      if (v54 < 0x80)
      {
        v55 = *(v5 + 4 * (v52 >> v51) + 60);
        if ((v55 & 0x500) != 0 || (v55 & 0x2000) != 0)
        {
          goto LABEL_133;
        }
      }

      else if (__maskrune((v52 >> v51), 0x500uLL) || __maskrune(v54, 0x2000uLL))
      {
        goto LABEL_133;
      }

      std::string::append(&__p, "\\x", 2uLL);
      std::string::push_back(&__p, a0123456789abcd_1[v53 >> 4]);
      LOBYTE(v53) = a0123456789abcd_1[v53 & 0xF];
LABEL_133:
      std::string::push_back(&__p, v53);
      v51 -= 8;
      if (v51 == -8)
      {
        v56 = 0;
        v4 = a1;
        goto LABEL_153;
      }
    }
  }

LABEL_230:
  v87 = *MEMORY[0x1E69E9840];
}

void sub_1C920B584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::decompileBox(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, v5);
    AudioDSPGraph::asDecompileString(&v33, &v32);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v33;
    }

    else
    {
      v6 = v33.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("box %s ", &__p, v6);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v8 = v30;
    }

    else
    {
      v8 = v29;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, p_p, v8);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    (*(*a1 + 216))(&__p, a1);
    AudioDSPGraph::printACD(a2, &__p, 0);
    caulk::make_string(" %u %u\n", &__p, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
    if ((v30 & 0x80u) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v10 = v30;
    }

    else
    {
      v10 = v29;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, v10);
LABEL_74:
    if (v30 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v11 = (a1 + 40);
  v12 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v12 = *v11;
  }

  v13 = *(a1 + 64);
  std::string::basic_string[abi:ne200100]<0>(&v32, v12);
  AudioDSPGraph::asDecompileString(&v33, &v32);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v33;
  }

  else
  {
    v14 = v33.__r_.__value_.__r.__words[0];
  }

  caulk::make_string("box %qu %s ", &__p, v13, v14);
  if ((v30 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v16 = v30;
  }

  else
  {
    v16 = v29;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v15, v16);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 216))(&__p, a1);
  AudioDSPGraph::printACD(a2, &__p, 0);
  caulk::make_string(" %u %u\n", &__p, (*(a1 + 80) - *(a1 + 72)) >> 5, (*(a1 + 104) - *(a1 + 96)) >> 5);
  if ((v30 & 0x80u) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v29;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v17, v18);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  (*(*a1 + 352))(&__p, a1);
  if (v31 == 1)
  {
    if (*(a1 + 63) < 0)
    {
      v11 = *v11;
    }

    std::string::basic_string[abi:ne200100]<0>(v26, v11);
    AudioDSPGraph::asDecompileString(&v32, v26);
    v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    v20 = v32.__r_.__value_.__r.__words[0];
    AudioDSPGraph::asDecompileString(&v25, &__p);
    v21 = &v32;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v25;
    }

    else
    {
      v22 = v25.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("componentName %s %s\n", &v33, v21, v22);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v33;
    }

    else
    {
      v23 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v23, size);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (v31)
    {
      goto LABEL_74;
    }
  }
}

void sub_1C920BAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Box::writeDotEdges(void *result, void *a2)
{
  v2 = result[12];
  v14 = result[13];
  if (v2 != v14)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      for (i = *(v5 + 32); i; i = *i)
      {
        v7 = v4[8];
        caulk::make_string("B%qu -> B%qu", __p, v7, *(*(i[2] + 8) + 64));
        if ((SBYTE7(v18) & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if ((SBYTE7(v18) & 0x80u) == 0)
        {
          v9 = BYTE7(v18);
        }

        else
        {
          v9 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v8, v9);
        if (SBYTE7(v18) < 0)
        {
          operator delete(__p[0]);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [label=", 9);
        v10 = *(v5 + 120);
        *__p = *v10;
        v18 = *(v10 + 16);
        v19 = *(v10 + 32);
        CA::StreamDescription::AsString(v15, __p, *&v18, v11);
        if ((v16 & 0x80u) == 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = v15[0];
        }

        if ((v16 & 0x80u) == 0)
        {
          v13 = v16;
        }

        else
        {
          v13 = v15[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v12, v13);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "];\n", 4);
      }

      v2 += 32;
    }

    while (v2 != v14);
  }

  return result;
}

void sub_1C920BD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::writeDotAttributes(AudioDSPGraph::Box *a1, void *a2)
{
  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  caulk::make_string("B%qu [shape=box, label=%s\\n", &__p, *(a1 + 8), v4);
  if ((v18 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, p_p, v6);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  (*(*a1 + 496))(a1, a2, 0);
  v7 = *(a1 + 2);
  v8 = (*(*a1 + 72))(a1) / *(v7 + 848);
  v9 = *(a1 + 2);
  v10 = (*(*a1 + 72))(a1);
  v11 = AudioDSPGraph::Box::upstreamLatencyInTicks(a1);
  caulk::make_string("latency %f (%f)", &__p, *&v8, (v11 + v10) / *(v9 + 848));
  if ((v18 & 0x80u) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  if ((v18 & 0x80u) == 0)
  {
    v13 = v18;
  }

  else
  {
    v13 = v17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v12, v13);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  caulk::make_string("];\n", &__p);
  if ((v18 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = v17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, v15);
  if (v18 < 0)
  {
    operator delete(__p);
  }
}

void sub_1C920BF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getFormatFromUnit(AudioDSPGraph::Box *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "Box::getFormatFromUnit ");
  v2 = (*(*this + 16))(this);
  v3 = strlen(v2);
  v4 = std::string::append(&v5, v2, v3);
  v6 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  AudioDSPGraph::ThrowException(1869640255, &v6, off_1E8334C20);
}

void sub_1C920BFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::isogroupTraceOutputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 96);
  v4 = *(result + 104);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(v3 + 16);
      if (!v8)
      {
        v13 = v7 + 40;
        if (v7[63] < 0)
        {
          v13 = *v13;
        }

        v14 = (*(*v7 + 16))(v7);
        caulk::make_string("box %s %s output port is not connected.", v15, v13, v14);
        AudioDSPGraph::ThrowException(1970168609, v15, off_1E8334B78);
      }

      for (i = *(v8 + 32); i; i = *i)
      {
        v10 = *(i[2] + 8);
        v11 = (*(*v10 + 272))(v10);
        if (v11)
        {
          v12 = v11;
          v15[3] = v11;
          std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>((a3 + 136), v11);
          *(v12 + 840) = a3;
        }

        result = (*(*v10 + 400))(v10, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_1C920C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::isogroupTraceInputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 72);
  v4 = *(result + 80);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(v3 + 16);
      if (!v8)
      {
        v12 = v7 + 40;
        if (v7[63] < 0)
        {
          v12 = *v12;
        }

        v13 = (*(*v7 + 16))(v7);
        caulk::make_string("box %s %s input port is not connected.", v14, v12, v13);
        AudioDSPGraph::ThrowException(1970168609, v14, off_1E8334B60);
      }

      v9 = *(*(v8 + 8) + 8);
      v10 = (*(*v9 + 272))(v9);
      if (v10)
      {
        v11 = v10;
        v14[3] = v10;
        std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>((a3 + 96), v10);
        v11[106] = a3;
        result = (*(*v11 + 416))(v11, a2, a3);
      }

      else
      {
        result = (*(*v9 + 400))(v9, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_1C920C360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Box::isogroup(AudioDSPGraph::Box *a1, uint64_t a2, AudioDSPGraph::IsoGroup *a3)
{
  result = std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(*a2, *(a2 + 8), a1);
  if (!result)
  {
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(a2, a1);
    AudioDSPGraph::IsoGroup::add(a3, a1);
    (*(*a1 + 408))(a1, a2, a3);
    v7 = *(*a1 + 416);

    return v7(a1, a2, a3);
  }

  return result;
}

void *std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }
        }

        else
        {
          v10 &= a2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t AudioDSPGraph::Box::sortUpstream(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 72);
  v7 = *(result + 80);
  while (v6 != v7)
  {
    v8 = *(*(*(v6 + 16) + 8) + 8);
    result = (*(*v8 + 384))(v8, v5[3], a2, a3);
    v6 += 32;
  }

  v9 = v5[20];
  v10 = v5[21];
  while (v9 != v10)
  {
    if (v9[36] == 1)
    {
      result = (*(**v9 + 384))(*v9, v5[3], a2, a3);
    }

    v9 += 40;
  }

  v11 = v5[23];
  v12 = v5[24];
  while (v11 != v12)
  {
    if (v11[36] == 1)
    {
      result = (*(**v11 + 384))(*v11, v5[3], a2, a3);
    }

    v11 += 64;
  }

  for (i = v5[17]; i; i = *i)
  {
    result = (*(*i[2] + 384))(i[2], v5[3], a2, a3);
  }

  return result;
}

void AudioDSPGraph::Box::topologicalSort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 737) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "Box::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    AudioDSPGraph::ThrowException(1953460257, v17, off_1E8334B48);
  }

  if ((*(a1 + 736) & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (v5 == a2)
    {
      *(a1 + 737) = 1;
      (*(*a1 + 392))(a1, a3, a4);
      *(a1 + 737) = 0;
      v8 = *(a3 + 8);
      v7 = *(a3 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a3) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - *a3;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v13);
        }

        *(8 * v10) = a1;
        v9 = 8 * v10 + 8;
        v14 = *(a3 + 8) - *a3;
        v15 = (8 * v10 - v14);
        memcpy(v15, *a3, v14);
        v16 = *a3;
        *a3 = v15;
        *(a3 + 8) = v9;
        *(a3 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = a1;
        v9 = (v8 + 1);
      }

      *(a3 + 8) = v9;
      *(a1 + 736) = 1;
    }

    else
    {

      AudioDSPGraph::IsoGroup::topologicalSort(v5, a4);
    }
  }
}

void AudioDSPGraph::Box::calculateLatencyDelays(AudioDSPGraph::Box *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFC0) != 0)
  {
    v2 = AudioDSPGraph::Box::upstreamLatencyInTicks(this);
    v4 = *(this + 9);
    v3 = *(this + 10);
    if (v4 != v3)
    {
      v5 = v2;
      do
      {
        *(v4 + 28) = 0;
        v6 = *(*(*(v4 + 16) + 8) + 8);
        if (((*(*v6 + 376))(v6) & 1) == 0)
        {
          v7 = *(*(*(v4 + 16) + 8) + 8);
          v8 = (*(*v7 + 72))(v7);
          v9 = AudioDSPGraph::Box::upstreamLatencyInTicks(v7);
          if (v5 <= v9 + v8)
          {
            if (*(v4 + 28))
            {
LABEL_9:
              if (*(*(*(v4 + 16) + 120) + 8) == 1718773105)
              {
                {
                  AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
                }

                v11 = AudioDSPGraph::getLog(void)::gLog;
                if (os_log_type_enabled(AudioDSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
                {
                  v12 = *(*(*(v4 + 16) + 8) + 8);
                  v13 = (v12 + 40);
                  if (*(v12 + 63) < 0)
                  {
                    v13 = *v13;
                  }

                  v14 = this + 40;
                  if (*(this + 63) < 0)
                  {
                    v14 = *(this + 5);
                  }

                  v15 = *(v4 + 28);
                  *buf = 67109634;
                  v18 = v15;
                  v19 = 2080;
                  v20 = v13;
                  v21 = 2080;
                  v22 = v14;
                  _os_log_debug_impl(&dword_1C91AE000, v11, OS_LOG_TYPE_DEBUG, "Latency compensation of %u samples required at frequency-domain wire : %s -> %s", buf, 0x1Cu);
                }
              }
            }
          }

          else
          {
            v10 = (v5 - (v9 + v8)) * **(*(v4 + 16) + 120) / *(*(this + 2) + 848);
            *(v4 + 28) = v10;
            if (v10)
            {
              goto LABEL_9;
            }
          }
        }

        v4 += 32;
      }

      while (v4 != v3);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t AudioDSPGraph::Box::insertLatencyDelayBoxes(uint64_t this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 72);
  v1 = *(this + 80);
  v7 = v1;
  if (((v1 - v2) & 0x1FFFFFFFC0) != 0 && v2 != v1)
  {
    do
    {
      v4 = *(*(*(v2 + 16) + 8) + 8);
      this = (*(*v4 + 376))(v4);
      v5 = *(v2 + 28);
      if (this)
      {
        AudioDSPGraph::Boxes::DelayBox::setDelayFrames(v9, v4, v5);
        if ((v9[32] & 1) == 0)
        {
          AudioDSPGraph::Error::~Error(v9);
        }

        this = (*(*v4 + 560))(v4);
      }

      else if (v5)
      {
        if (*(*(*(v2 + 16) + 120) + 8) != 1718773105)
        {
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(v8, "Latency Boxes cannot be inserted at frequency-domain wires");
        AudioDSPGraph::ThrowException(1869640255, v8, off_1E8334B90);
      }

      v2 += 32;
    }

    while (v2 != v7);
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1C920D878(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<AudioDSPGraph::Wire *,std::hash<AudioDSPGraph::Wire *>,std::equal_to<AudioDSPGraph::Wire *>,std::allocator<AudioDSPGraph::Wire *>>::__emplace_unique_key_args<AudioDSPGraph::Wire *,AudioDSPGraph::Wire * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void AudioDSPGraph::Box::getPreset(AudioDSPGraph::Box *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = 0;
  v37 = Mutable;
  do
  {
    v6 = _ZGRN13AudioDSPGraphL22kPresetParameterScopesE_[v5];
    v7 = (*(*this + 320))(this, v6);
    if (!v7)
    {
      goto LABEL_16;
    }

    (*(*this + 104))(&v34, this, v6);
    v8 = v34;
    v9 = v35;
    if (v34 == v35)
    {
      v12 = v34;
      if (v34)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v11 = bswap32(v6);
      do
      {
        *bytes = v11;
        *&bytes[4] = bswap32(v10);
        LODWORD(v32) = bswap32((v9 - v8) >> 2);
        CFDataAppendBytes(Mutable, bytes, 12);
        v12 = v34;
        v8 = v35;
        if (v35 == v34)
        {
          v9 = v35;
        }

        else
        {
          v13 = 0;
          do
          {
            (*(*this + 96))(&v38, this, *&v12[4 * v13], v6, v10);
            if ((v41 & 1) == 0)
            {
              AudioDSPGraph::Error::throwException(&v38);
            }

            *v33 = 0;
            *v33 = bswap32(*&v34[4 * v13]);
            *&v33[4] = bswap32(v38);
            CFDataAppendBytes(Mutable, v33, 8);
            if ((v41 & 1) == 0)
            {
              AudioDSPGraph::Error::~Error(&v38);
            }

            ++v13;
            v12 = v34;
            v9 = v35;
          }

          while (v13 < (v35 - v34) >> 2);
          v8 = v34;
        }

        v10 = (v10 + 1);
      }

      while (v10 != v7);
      if (v12)
      {
LABEL_15:
        v35 = v12;
        operator delete(v12);
      }
    }

LABEL_16:
    ++v5;
  }

  while (v5 != 3);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  (*(*this + 216))(&v34, this);
  applesauce::CF::StringRef::from_get(&cf, @"version");
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v38 = v14;
  LODWORD(valuePtr) = 0;
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::StringRef::from_get(&valuePtr, @"type");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v40, valuePtr, &v34);
  applesauce::CF::StringRef::from_get(&v28, @"subtype");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v41, v28, &v34 + 1);
  applesauce::CF::StringRef::from_get(&v27, @"manufacturer");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v42, v27, &v35);
  applesauce::CF::StringRef::from_get(&v26, @"classname");
  v25 = (*(*this + 16))(this);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v43, v26, &v25);
  *bytes = &v38;
  v32 = 5;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(bytes);
  v16 = 0;
  *v33 = CFDictionaryRef;
  do
  {
    v17 = v43[v16 + 1];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = v43[v16];
    if (v18)
    {
      CFRelease(v18);
    }

    v16 -= 2;
  }

  while (v16 != -10);
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

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (CFDataGetLength(Mutable) < 1)
  {
    CFRetain(CFDictionaryRef);
    *a2 = CFDictionaryRef;
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, CFDictionaryRef);
    CFDictionaryAddValue(MutableCopy, @"data", Mutable);
    *a2 = MutableCopy;
    if (MutableCopy)
    {
      v20 = CFGetTypeID(MutableCopy);
      if (v20 != CFDictionaryGetTypeID())
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not construct");
      }
    }
  }

  CFRelease(CFDictionaryRef);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1C920E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const void **a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, const void *a30, void *__p, uint64_t a32, uint64_t a33, const void *a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __cxa_free_exception(v41);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
  applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(&a34);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C920E4E8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(void *a1, CFTypeRef cf, char **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  a1[1] = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C920E5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(v15);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1C920E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

const void **applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
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

uint64_t AudioDSPGraph::Box::setPreset(AudioDSPGraph::Box *this, CFTypeRef cf)
{
  if (!cf)
  {
    v35 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_50;
  }

  CFRetain(cf);
  v35 = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  v5 = v35;
  v6 = applesauce::CF::details::at_key<__CFString const* const&>(v35, @"version");
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
    goto LABEL_50;
  }

  v7 = applesauce::CF::convert_as<int,0>(v6);
  if ((v7 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
LABEL_50:
  }

  if (v7)
  {
    v8 = 4294956445;
LABEL_44:
    CFRelease(v5);
    return v8;
  }

  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(__s1, v35, @"classname");
  v9 = (*(*this + 16))(this);
  v10 = strlen(v9);
  v11 = v10;
  v12 = v34;
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v10 != v34)
    {
      v8 = 4294956445;
      goto LABEL_43;
    }

    v13 = __s1;
LABEL_13:
    if (memcmp(v13, v9, v11))
    {
      v8 = 4294956445;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v35)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
    }

    v14 = applesauce::CF::details::at_key<__CFString const* const&>(v35, @"data");
    if (v14)
    {
      v15 = v14;
      CFRetain(v14);
      v16 = CFGetTypeID(v15);
      if (v16 == CFDataGetTypeID())
      {
        cfa = v15;
        v32 = 1;
        BytePtr = CFDataGetBytePtr(v15);
        Length = CFDataGetLength(v15);
        if (Length >= 1)
        {
          v19 = BytePtr + Length;
          do
          {
            if ((BytePtr + 1) > v19)
            {
              break;
            }

            if ((BytePtr + 2) > v19)
            {
              break;
            }

            v20 = BytePtr + 3;
            if ((BytePtr + 3) > v19)
            {
              break;
            }

            v21 = BytePtr[2];
            if (v21)
            {
              v22 = bswap32(*BytePtr);
              v23 = bswap32(BytePtr[1]);
              v24 = bswap32(v21);
              while ((v20 + 1) <= v19)
              {
                BytePtr = v20 + 2;
                if ((v20 + 2) > v19)
                {
                  BytePtr = v20 + 1;
                  goto LABEL_36;
                }

                (*(*this + 88))(v29, this, bswap32(*v20), v22, v23, 0, COERCE_FLOAT(bswap32(v20[1])));
                if ((v30 & 1) == 0)
                {
                  AudioDSPGraph::Error::~Error(v29);
                }

                v20 = BytePtr;
                if (!--v24)
                {
                  goto LABEL_36;
                }
              }
            }

            BytePtr = v20;
LABEL_36:
            ;
          }

          while (BytePtr < v19);
        }

        if (cfa)
        {
          CFRelease(cfa);
        }

LABEL_41:
        v8 = 0;
        if ((v34 & 0x80) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      CFRelease(v15);
    }

    LOBYTE(cfa) = 0;
    v32 = 0;
    goto LABEL_41;
  }

  if (v10 == __s1[1])
  {
    if (v10 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v13 = __s1[0];
    goto LABEL_13;
  }

  v8 = 4294956445;
LABEL_42:
  operator delete(__s1[0]);
LABEL_43:
  v5 = v35;
  if (v35)
  {
    goto LABEL_44;
  }

  return v8;
}

void sub_1C920EE30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v22 - 56));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C920ED0CLL);
}

_BYTE *applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
}

uint64_t std::optional<applesauce::CF::DataRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
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
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1C925F120);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_1C925F130), xmmword_1C925F140);
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

uint64_t AudioDSPGraph::Box::getElementCount(AudioDSPGraph::Box *this, int a2)
{
  switch(a2)
  {
    case 0:
      return 1;
    case 2:
      return (*(this + 13) - *(this + 12)) >> 5;
    case 1:
      return (*(this + 10) - *(this + 9)) >> 5;
  }

  return 0;
}

uint64_t AudioDSPGraph::Box::setProperty(AudioDSPGraph::Box *this, int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2)
  {
    if (a2 == 21)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          (*(*this + 56))(this, *a6 != 0);
          return 0;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return 4294956417;
  }

  else
  {
    if (a5 != 8)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    v8 = *a6;
    v9 = *(*this + 336);

    return v9();
  }
}

uint64_t AudioDSPGraph::Box::getProperty(AudioDSPGraph::Box *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  result = 4294956417;
  if (a2 <= 10)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 2)
        {
          goto LABEL_58;
        }

        if (*a5 != 8)
        {
          goto LABEL_57;
        }

        if (a6)
        {
          if (a3 == 2)
          {
            v13 = AudioDSPGraph::Box::out(this, a4);
          }

          else
          {
            if (a3 != 1)
            {
              goto LABEL_56;
            }

            v13 = AudioDSPGraph::Box::in(this, a4);
          }

          v31 = v13;
          result = 0;
          v20 = **(*(v31 + 16) + 120);
          goto LABEL_72;
        }

LABEL_59:
        result = 4294967246;
        goto LABEL_58;
      }

      if (*a5 != 8)
      {
        goto LABEL_57;
      }

      if (a3)
      {
        goto LABEL_56;
      }

      (*(*this + 344))(v36, this);
      v14 = *&v36[0];
      *&v36[0] = 0;
      *a6 = v14;
      applesauce::CF::DictionaryRef::~DictionaryRef(v36);
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          if (*a5 != 104)
          {
            goto LABEL_57;
          }

          if (a6)
          {
            (*(*this + 112))(v36, this, a3, a4);
            if (v38 == 1)
            {
              result = 0;
              a6[12] = v37;
              v15 = v36[5];
              *(a6 + 4) = v36[4];
              *(a6 + 5) = v15;
              v16 = v36[1];
              *a6 = v36[0];
              *(a6 + 1) = v16;
              v17 = v36[3];
              *(a6 + 2) = v36[2];
              *(a6 + 3) = v17;
            }

            else
            {
              result = LODWORD(v36[0]);
            }

            goto LABEL_58;
          }
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_58;
          }

          if (*a5 != 40)
          {
            goto LABEL_57;
          }

          if (a6)
          {
            if (a3 == 2)
            {
              v10 = AudioDSPGraph::Box::out(this, a4);
            }

            else
            {
              if (a3 != 1)
              {
                goto LABEL_56;
              }

              v10 = AudioDSPGraph::Box::in(this, a4);
            }

            v32 = v10;
            result = 0;
            v33 = *(*(v32 + 16) + 120);
            v34 = *(v33 + 32);
            v35 = *(v33 + 16);
            *a6 = *v33;
            *(a6 + 1) = v35;
            a6[4] = v34;
            goto LABEL_58;
          }
        }

        goto LABEL_59;
      }

      (*(*this + 104))(v36, this, a3);
      v22 = *&v36[0];
      v23 = DWORD2(v36[0]) - LODWORD(v36[0]);
      v24 = (DWORD2(v36[0]) - LODWORD(v36[0])) & 0xFFFFFFFC;
      if (*a5 < v24)
      {
        if (*&v36[0])
        {
          *(&v36[0] + 1) = *&v36[0];
          operator delete(*&v36[0]);
        }

        goto LABEL_57;
      }

      *a5 = v24;
      memcpy(a6, v22, v23 & 0xFFFFFFFC);
      if (v22)
      {
        *(&v36[0] + 1) = v22;
        operator delete(v22);
      }
    }

    result = 0;
    goto LABEL_58;
  }

  if (a2 > 20)
  {
    switch(a2)
    {
      case 21:
        if (*a5 != 4)
        {
          goto LABEL_57;
        }

        if (a3)
        {
          goto LABEL_56;
        }

        v21 = (*(*this + 48))(this);
        break;
      case 29:
        if (*a5 != 4)
        {
          goto LABEL_57;
        }

        if (a3)
        {
          goto LABEL_56;
        }

        v21 = (*(*this + 64))(this);
        break;
      case 54:
        if (*a5 != 8)
        {
          goto LABEL_57;
        }

        if (a3)
        {
          goto LABEL_56;
        }

        v11 = this + 40;
        if (*(this + 63) < 0)
        {
          v11 = *v11;
        }

        v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v11, 0x8000100u);
        result = 0;
        *a6 = v12;
        goto LABEL_58;
      default:
        goto LABEL_58;
    }

    v29 = v21;
    result = 0;
LABEL_69:
    *a6 = v29;
    goto LABEL_58;
  }

  switch(a2)
  {
    case 11:
      if (*a5 != 4)
      {
        goto LABEL_57;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          result = 0;
          v30 = this + 96;
          v26 = *(this + 12);
          v25 = *(v30 + 1);
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_56;
          }

          result = 0;
          v27 = this + 72;
          v26 = *(this + 9);
          v25 = *(v27 + 1);
        }

        *a6 = (v25 - v26) >> 5;
        break;
      }

      result = 0;
      v29 = 1;
      goto LABEL_69;
    case 12:
      if (*a5 != 8)
      {
        goto LABEL_57;
      }

      if (a3)
      {
        goto LABEL_56;
      }

      v18 = *(this + 2);
      v19 = (*(*this + 72))(this);
      result = 0;
      v20 = v19 / *(v18 + 848);
LABEL_72:
      *a6 = v20;
      break;
    case 20:
      if (*a5 == 8)
      {
        if (!a3)
        {
          result = 0;
          *a6 = 0;
          break;
        }

LABEL_56:
        result = 4294956430;
        break;
      }

LABEL_57:
      result = 561211770;
      break;
  }

LABEL_58:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioDSPGraph::Box::getPropertyInfo(AudioDSPGraph::Box *this, int a2, int a3)
{
  if (a2 > 10)
  {
    if (a2 > 20)
    {
      if (a2 != 21)
      {
        if (a2 == 29)
        {
          v3 = 0;
          v5 = a3 == 0;
          v6 = 4;
LABEL_21:
          if (v5)
          {
            v4 = v6;
          }

          else
          {
            v4 = -10866;
          }

          return v3 | v4;
        }

        if (a2 != 54)
        {
LABEL_18:
          v3 = 0;
          v4 = -10879;
          return v3 | v4;
        }

LABEL_15:
        v3 = 0;
        v5 = a3 == 0;
        v6 = 8;
        goto LABEL_21;
      }

      if (a3)
      {
        v3 = 0;
        v4 = -10866;
        return v3 | v4;
      }

      v8 = (*(*this + 40))(this);
      v3 = 0x100000000;
      if (!v8)
      {
        v3 = 0;
      }
    }

    else
    {
      if (a2 != 11)
      {
        if (a2 != 12 && a2 != 20)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v3 = 0;
    }

    v4 = 4;
    return v3 | v4;
  }

  if (a2 <= 2)
  {
    v3 = 0;
    v4 = 8;
    if (a2 && a2 != 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        (*(*this + 104))(&v10);
        v7 = v11 - v10;
        if (v10)
        {
          v11 = v10;
          operator delete(v10);
        }

        v3 = 0;
        v4 = v7 & 0xFFFFFFFC;
        break;
      case 4:
        v3 = 0;
        v4 = 104;
        return v3 | v4;
      case 8:
        v3 = 0;
        v4 = 40;
        break;
      default:
        goto LABEL_18;
    }
  }

  return v3 | v4;
}

uint64_t AudioDSPGraph::Box::getAnalyzer(AudioDSPGraph::Box *this, unsigned int a2, int a3)
{
  v3 = *(this + 12);
  v4 = *(this + 13) - v3;
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v5 = v4 >> 5;
  if (v5 <= a2)
  {
    v10 = (this + 40);
    if (*(this + 63) < 0)
    {
      v10 = *v10;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v11, v10, v5, a2);
    AudioDSPGraph::ThrowException(1919837985, v11, off_1E8337C78);
  }

  v6 = *(v3 + 32 * a2 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(this + 40);
  v8 = *(this + 41);
  if (v7 != v8)
  {
    while (*(*v7 + 8) != v6 || *(*v7 + 24) != a3)
    {
      v7 += 8;
      if (v7 == v8)
      {
        return 0;
      }
    }
  }

  if (v7 != v8)
  {
    return *v7;
  }

  else
  {
    return 0;
  }
}

void sub_1C920FB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getAnalyzerList(AudioDSPGraph::Box *this@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 12);
  v5 = *(this + 13) - v4;
  if ((v5 & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_20;
  }

  v6 = v5 >> 5;
  if (v6 <= a2)
  {
    v19 = (this + 40);
    if (*(this + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v20, v19, v6, a2);
    AudioDSPGraph::ThrowException(1919837985, v20, off_1E83378B0);
  }

  v7 = *(v4 + 32 * a2 + 16);
  if (v7)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *(this + 40);
    v9 = *(this + 41);
    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (*(*v8 + 8) == v7)
        {
          v12 = v10 - v11;
          v13 = (v10 - v11) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            a3[1] = v10;
            a3[2] = 0;
            *a3 = v11;
            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          if (-v11 >> 1 > v14)
          {
            v14 = -v11 >> 1;
          }

          if (-v11 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v15);
          }

          v16 = (v10 - v11) >> 2;
          v17 = (4 * v13);
          v18 = (4 * v13 - 4 * v16);
          *v17 = *(*v8 + 24);
          v10 = v17 + 1;
          memcpy(v18, v11, v12);
          if (v11)
          {
            operator delete(v11);
          }

          v11 = v18;
        }

        v8 += 8;
      }

      while (v8 != v9);
      a3[1] = v10;
      a3[2] = 0;
      *a3 = v11;
    }
  }

  else
  {
LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1C920FD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::analyzeEnable(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v9 = (this + 40);
      if (*(this + 63) < 0)
      {
        v9 = *v9;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v10, v9, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, v10, off_1E8337C78);
    }

    v6 = *(v3 + 32 * a2 + 16);
    if (v6)
    {
      v7 = *(this + 320);
      v8 = *(this + 328);
      if (v7 != v8)
      {
        while (*(*v7 + 8) != v6)
        {
          v7 += 8;
          if (v7 == v8)
          {
            return this;
          }
        }
      }

      if (v7 != v8)
      {
        *(*v7 + 28) = a3;
      }
    }
  }

  return this;
}

void sub_1C920FE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::stopAnalyzing(AudioDSPGraph::Box *this, unsigned int a2)
{
  std::mutex::lock(this + 4);
  v4 = *(this + 12);
  v5 = *(this + 13) - v4;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    v6 = v5 >> 5;
    if (v6 <= a2)
    {
      v16 = (this + 40);
      if (*(this + 63) < 0)
      {
        v16 = *v16;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v16, v6, a2);
      AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C78);
    }

    v7 = *(v4 + 32 * a2 + 16);
    if (v7)
    {
      v8 = *(this + 40);
      v9 = *(this + 41);
      while (1)
      {
        if (v8 == v9)
        {
          v8 = *(this + 41);
          goto LABEL_9;
        }

        if (*(*v8 + 8) == v7)
        {
          break;
        }

        ++v8;
      }

      caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 352, *(*v8 + 24));
      atomic_fetch_add(this + 190, 0xFFFFFFFF);
      if (v8 != v9)
      {
        for (i = v8 + 1; i != v9; ++i)
        {
          v14 = *i;
          if (*(*i + 8) == v7)
          {
            caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 352, *(v14 + 24));
            atomic_fetch_add(this + 190, 0xFFFFFFFF);
          }

          else
          {
            *i = 0;
            v15 = *v8;
            *v8 = v14;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            ++v8;
          }
        }
      }

LABEL_9:
      v10 = *(this + 41);
      if (v8 != v10)
      {
        while (v10 != v8)
        {
          v12 = *--v10;
          v11 = v12;
          *v10 = 0;
          if (v12)
          {
            (*(*v11 + 8))(v11);
          }
        }

        *(this + 41) = v8;
      }
    }
  }

  std::mutex::unlock(this + 4);
}

void sub_1C92100C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v17 + 4);
  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Box::recordEnable(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v13, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, v13, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v12 = (this + 40);
      if (*(this + 63) < 0)
      {
        v12 = *v12;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v13, v12, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, v13, off_1E8337C60);
    }
  }

  v8 = (v3 + 32 * a2 + 16);
  v9 = *(this + 208);
  v10 = *(this + 216);
  if (v9 != v10)
  {
    v11 = *v8;
    while (*(*v9 + 8) != v11)
    {
      v9 += 8;
      if (v9 == v10)
      {
        return this;
      }
    }
  }

  if (v9 != v10)
  {
    *(*v9 + 88) = a3;
  }

  return this;
}

void sub_1C921020C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::stopRecording(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v16 = (this + 40);
      if (*(this + 63) < 0)
      {
        v16 = *v16;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v16, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C60);
    }
  }

  v8 = *(v3 + 32 * a2 + 16);
  v9 = *(this + 208);
  v10 = *(this + 216);
  if (v9 != v10)
  {
    while (*(*v9 + 8) != v8)
    {
      if (++v9 == v10)
      {
        v11 = *(this + 216);
        goto LABEL_23;
      }
    }

    atomic_fetch_add((this + 760), 0xFFFFFFFF);
  }

  v11 = v10;
  if (v9 != v10)
  {
    v12 = v9 + 1;
    if (v9 + 1 == v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      do
      {
        v13 = *v12;
        if (*(*v12 + 8) == v8)
        {
          atomic_fetch_add((v2 + 760), 0xFFFFFFFF);
        }

        else
        {
          *v12 = 0;
          this = *v11;
          *v11 = v13;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          ++v11;
        }

        ++v12;
      }

      while (v12 != v10);
    }
  }

LABEL_23:
  v14 = *(v2 + 216);
  if (v11 != v14)
  {
    while (v14 != v11)
    {
      v15 = *--v14;
      this = v15;
      *v14 = 0;
      if (v15)
      {
        this = (*(*this + 8))(this);
      }
    }

    *(v2 + 216) = v11;
  }

  return this;
}

void sub_1C9210494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::record(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 > a3)
    {
      v6 = *(v3 + 32 * a3 + 16);
      operator new();
    }

    v13 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v15, v13, v5, a3);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C78);
  }

  v7 = *(a1 + 72);
  v8 = (*(a1 + 80) - v7) >> 5;
  if (v8 <= a3)
  {
    v14 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v14 = *v14;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v15, v14, v8, a3);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C60);
  }

  v9 = *(*(v7 + 32 * a3 + 16) + 8);
  v10 = *(v9 + 24);
  v11 = *(**(v9 + 8) + 160);

  return v11();
}

void sub_1C9210778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::stopInjecting(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 96);
  v4 = *(this + 104) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 <= a2)
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v6, v5, a2);
      AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C78);
    }
  }

  else
  {
    v3 = *(this + 72);
    v7 = (*(this + 80) - v3) >> 5;
    if (v7 <= a2)
    {
      v16 = (this + 40);
      if (*(this + 63) < 0)
      {
        v16 = *v16;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v16, v7, a2);
      AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337C60);
    }
  }

  v8 = *(v3 + 32 * a2 + 16);
  v9 = *(this + 232);
  v10 = *(this + 240);
  if (v9 != v10)
  {
    while (*(*v9 + 8) != v8)
    {
      if (++v9 == v10)
      {
        v11 = *(this + 240);
        goto LABEL_23;
      }
    }

    atomic_fetch_add((this + 760), 0xFFFFFFFF);
  }

  v11 = v10;
  if (v9 != v10)
  {
    v12 = v9 + 1;
    if (v9 + 1 == v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      do
      {
        v13 = *v12;
        if (*(*v12 + 8) == v8)
        {
          atomic_fetch_add((v2 + 760), 0xFFFFFFFF);
        }

        else
        {
          *v12 = 0;
          this = *v11;
          *v11 = v13;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          ++v11;
        }

        ++v12;
      }

      while (v12 != v10);
    }
  }

LABEL_23:
  v14 = *(v2 + 240);
  if (v11 != v14)
  {
    while (v14 != v11)
    {
      v15 = *--v14;
      this = v15;
      *v14 = 0;
      if (v15)
      {
        this = (*(*this + 8))(this);
      }
    }

    *(v2 + 240) = v11;
  }

  return this;
}

void sub_1C9210A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::inject(AudioDSPGraph::Box *this, const char *a2, unsigned int a3)
{
  v3 = *(this + 12);
  v4 = *(this + 13) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    if (v5 > a3)
    {
      v6 = *(v3 + 32 * a3 + 16);
      operator new();
    }

    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v15, v13, v5, a3);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C78);
  }

  v7 = *(this + 9);
  v8 = (*(this + 10) - v7) >> 5;
  if (v8 <= a3)
  {
    v14 = (this + 40);
    if (*(this + 63) < 0)
    {
      v14 = *v14;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v15, v14, v8, a3);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337C60);
  }

  v9 = *(*(v7 + 32 * a3 + 16) + 8);
  v10 = *(v9 + 24);
  v11 = *(**(v9 + 8) + 144);

  return v11();
}

void sub_1C9210D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Box::getParameterList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void AudioDSPGraph::Box::getParameter(uint64_t a1@<X8>)
{
  LODWORD(v2) = -10878;
  *(&v2 + 1) = off_1E8334BA8;
  v3 = 0;
  *a1 = v2;
  *(a1 + 16) = 0;
  v4 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v2);
}

void AudioDSPGraph::Box::setParameter(uint64_t a1@<X8>)
{
  LODWORD(v3) = -10878;
  *(&v3 + 1) = off_1E8334BC0;
  v4 = 0;
  *a1 = v3;
  *(a1 + 16) = 0;
  v5 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v3);
}

void AudioDSPGraph::Box::printShort(uint64_t a1, void *a2, unsigned int a3)
{
  (*(*a1 + 16))(a1);
  if (*(a1 + 63) < 0)
  {
    v6 = *(a1 + 40);
  }

  v7 = *(a1 + 64);
  AudioDSPGraph::printi(a2, a3, "%s '%s' %qu %p ");
}

uint64_t AudioDSPGraph::Box::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 16);
    AudioDSPGraph::printi(a2, v4 + 4, "graph %p\n");
  }

  return result;
}

uint64_t AudioDSPGraph::Box::Box(uint64_t a1, __int128 *a2, unsigned int a3, unsigned int a4)
{
  *a1 = &unk_1F48CC660;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v7 = *a2;
  *(a1 + 56) = *(a2 + 2);
  *(a1 + 40) = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 208) = 0u;
  v8 = a1 + 208;
  *(a1 + 72) = 0u;
  v9 = (a1 + 72);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 256) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_1EC392E08 || (v10 = std::__shared_weak_count::lock(qword_1EC392E08)) == 0)
  {
LABEL_5:
    operator new();
  }

  v11 = v10;
  v12 = qword_1EC392E00;
  if (!qword_1EC392E00)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_5;
  }

  v13 = (v8 - 112);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a1 + 592) = v12;
  v14 = *(a1 + 600);
  *(a1 + 600) = v11;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  *(a1 + 608) = &caulk::inplace_function_detail::rt_vtable<void,caulk::concurrent::details::skiplist_node<unsigned int,AudioDSPGraph::Analyzer *>::layout_vk const&>::empty;
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
  v15 = 0;
  *(a1 + 352) = 0;
  *(a1 + 364) = 167837706;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  do
  {
    atomic_store(0, (a1 + v15 + 376));
    atomic_store(0, (a1 + v15 + 384));
    v15 += 16;
  }

  while (v15 != 160);
  *(a1 + 536) = 0;
  *(a1 + 548) = 16908289;
  *(a1 + 544) = -1;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  atomic_store(0, (a1 + 560));
  atomic_store(0, (a1 + 568));
  for (i = 376; i != 536; i += 16)
  {
    atomic_store(v8 + 328, (a1 + i));
  }

  __dmb(0xBu);
  *(a1 + 656) = &unk_1F48CC910;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  v44 = 0;
  std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v44);
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 656) = &unk_1F48CC8E0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  if (a3 > ((*(a1 + 88) - *(a1 + 72)) >> 5))
  {
    v17 = *(a1 + 80);
    v47 = v9;
    std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](a3);
  }

  if (a4 > ((*(a1 + 112) - *(a1 + 96)) >> 5))
  {
    v18 = *(a1 + 104);
    v47 = (v8 - 112);
    std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](a4);
  }

  if (a3)
  {
    v19 = 0;
    v20 = *(a1 + 80);
    do
    {
      v21 = *(a1 + 88);
      if (v20 >= v21)
      {
        v22 = *v9;
        v23 = (v20 - *v9) >> 5;
        v24 = v23 + 1;
        if ((v23 + 1) >> 59)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v21 - v22;
        if (v25 >> 4 > v24)
        {
          v24 = v25 >> 4;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFE0)
        {
          v26 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        v47 = v9;
        if (v26)
        {
          std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 32 * v23;
        v44 = 0;
        v45 = v27;
        *(&v46 + 1) = 0;
        *(v27 + 8) = a1;
        *(v27 + 16) = 0;
        *(v27 + 24) = v19;
        *(v27 + 28) = 0;
        *v27 = &unk_1F48D2320;
        *&v46 = 32 * v23 + 32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::InputPort>,AudioDSPGraph::InputPort*>(v22, v20, 0);
        v28 = *(a1 + 72);
        *(a1 + 72) = 0;
        v29 = *(a1 + 88);
        v42 = v46;
        *(a1 + 80) = v46;
        *&v46 = v28;
        *(&v46 + 1) = v29;
        v44 = v28;
        v45 = v28;
        std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(&v44);
        v20 = v42;
      }

      else
      {
        *(v20 + 8) = a1;
        *(v20 + 16) = 0;
        *(v20 + 24) = v19;
        *(v20 + 28) = 0;
        *v20 = &unk_1F48D2320;
        v20 += 32;
        *(a1 + 80) = v20;
      }

      *(a1 + 80) = v20;
      ++v19;
    }

    while (a3 != v19);
  }

  if (a4)
  {
    v30 = 0;
    v31 = *(a1 + 104);
    do
    {
      v32 = *(a1 + 112);
      if (v31 >= v32)
      {
        v33 = *v13;
        v34 = (v31 - *v13) >> 5;
        v35 = v34 + 1;
        if ((v34 + 1) >> 59)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v36 = v32 - v33;
        if (v36 >> 4 > v35)
        {
          v35 = v36 >> 4;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFE0)
        {
          v37 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        v47 = (v8 - 112);
        if (v37)
        {
          std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](v37);
        }

        v38 = 32 * v34;
        v44 = 0;
        v45 = v38;
        *(&v46 + 1) = 0;
        *(v38 + 8) = a1;
        *(v38 + 16) = 0;
        *(v38 + 24) = v30;
        *v38 = &unk_1F48D22D8;
        *&v46 = 32 * v34 + 32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::OutputPort>,AudioDSPGraph::OutputPort*>(v33, v31, 0);
        v39 = *(a1 + 96);
        *(a1 + 96) = 0;
        v40 = *(a1 + 112);
        v43 = v46;
        *(a1 + 104) = v46;
        *&v46 = v39;
        *(&v46 + 1) = v40;
        v44 = v39;
        v45 = v39;
        std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(&v44);
        v31 = v43;
      }

      else
      {
        *(v31 + 8) = a1;
        *(v31 + 16) = 0;
        *(v31 + 24) = v30;
        *v31 = &unk_1F48D22D8;
        v31 += 32;
        *(a1 + 104) = v31;
      }

      *(a1 + 104) = v31;
      ++v30;
    }

    while (a4 != v30);
  }

  return a1;
}

void sub_1C9211788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, AudioDSPGraph::BoxEventHandlerTree *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(&a18);
  AudioDSPGraph::BoxEventHandlerTree::~BoxEventHandlerTree(a9);
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(v19 + 144);
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(v18 + 576);
  a17 = a11;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::mutex::~mutex(a13);
  a17 = a12;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v19;
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = a10;
  std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&a17);
  v21 = *(v18 + 160);
  if (v21)
  {
    *(v18 + 168) = v21;
    operator delete(v21);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(a14);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (*(v18 + 63) < 0)
  {
    operator delete(*(v18 + 40));
  }

  _Unwind_Resume(a1);
}

unint64_t caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  for (i = atomic_load((a1 + 24)); ; i = atomic_load((v3 + 24)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 184 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 14) != 2)
    {
      v4 = atomic_load((v3 + 24));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(a1, *(v3 + 8));
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, i);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(unint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(a1, _X2);
  }

  (*(*(a1 + 32) + 24))(a1 + 40);
  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(uint64_t a1)
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

void std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<AudioDSPGraph::OutputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::OutputPort>,AudioDSPGraph::OutputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F48D2290;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F48D22D8;
      a3 += 32;
      v5 += 4;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

void std::allocator<AudioDSPGraph::InputPort>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AudioDSPGraph::InputPort>,AudioDSPGraph::InputPort*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_1F48D2290;
      v6 = *(v5 + 1);
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 8) = v6;
      *a3 = &unk_1F48D2320;
      *(a3 + 28) = *(v5 + 7);
      v5 += 4;
      a3 += 32;
      v4 += 32;
    }

    while (v5 != a2);
    v7 = result;
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      (*v9)();
      v7 += 4;
      result = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<AudioDSPGraph::InputPort>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

caulk::alloc::base_allocator *std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    v4 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v2];
    while (1)
    {
      result = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!result)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
      atomic_fetch_add((a1 + 68), 0x801u);
      v6 = *(a1 + 48);
      if (v6)
      {
        while (v6 + 4 > result || result + v4 > (v6 + 2048))
        {
          v6 = atomic_load(v6);
          if (!v6)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v6 = atomic_load((a1 + 72));
        if (v6)
        {
          v8 = v6 + 4 > result;
        }

        else
        {
          v8 = 1;
        }

        if (v8 || result + v4 > (v6 + 2048))
        {
          caulk::alloc::base_allocator::bad_dealloc(result);
        }
      }

      if (v6 + 4 > result || result + v4 > (v6 + 2048))
      {
        caulk::alloc::base_allocator::bad_dealloc(result);
      }

      atomic_fetch_add((a1 + 68), 0xFFFFFFFF);
    }

    ++v2;
  }

  while (v2 != 10);
  v10 = *(a1 + 48);
  if (v10)
  {
    do
    {
      v11 = atomic_load(v10);
      v12 = v10[1];
      v13 = *(a1 + 40);
      result = caulk::alloc::details::caching_page_allocator_base::deallocate();
      v10 = v11;
    }

    while (v11);
  }

  return result;
}

void caulk::alloc::base_allocator::bad_dealloc(caulk::alloc::base_allocator *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  caulk::alloc::alloc_error::alloc_error(exception, v2);
}

std::runtime_error *caulk::alloc::alloc_error::alloc_error(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, "deallocate() called for unowned block");
  result->__vftable = &unk_1F48CC990;
  return result;
}

void caulk::alloc::alloc_error::~alloc_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48CC940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Box::~Box(AudioDSPGraph::Box *this)
{
  *this = &unk_1F48CC660;
  *(this + 82) = &unk_1F48CC910;
  v3 = (this + 704);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](&v3);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(this + 672);
  caulk::concurrent::skiplist<unsigned int,AudioDSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::clear(this + 352);
  caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(this + 576);
  v3 = (this + 320);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::mutex::~mutex(this + 4);
  v3 = (this + 232);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 208);
  std::vector<std::unique_ptr<AudioDSPGraph::Analyzer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 184);
  std::vector<AudioDSPGraph::PropertyTap>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 120);
  v3 = (this + 96);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<AudioDSPGraph::OutputPort>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void *std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

void AudioDSPGraph::Box::addEventHandler(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::addLeaf((a1 + 656), &v4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  if (v3)
  {
    atomic_fetch_add((a1 + 760), 1u);
  }
}

void sub_1C921258C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AudioDSPGraph::Box::removeEventHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 712);
  v4 = *(a1 + 704);
  v5 = (v3 - v4);
  if (v3 == v4)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 704);
  while (*v7 != *a2)
  {
    v7 += 16;
    if (v7 == v3)
    {
      goto LABEL_21;
    }
  }

  if (v7 != v3)
  {
    v8 = v7 + 16;
    if (v7 + 16 != v3)
    {
      do
      {
        v9 = *v8;
        if (*v8 != *a2)
        {
          v10 = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = 0;
          v11 = *(v7 + 1);
          *v7 = v9;
          *(v7 + 1) = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v7 += 16;
        }

        v8 += 16;
      }

      while (v8 != v3);
      v3 = *(a1 + 712);
      v4 = *(a1 + 704);
    }
  }

  if (v7 == v3)
  {
LABEL_21:
    v7 = v3;
  }

  else
  {
    while (v3 != v7)
    {
      v12 = *(v3 - 1);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v3 -= 16;
    }

    *(a1 + 712) = v7;
    v4 = *(a1 + 704);
  }

  v13 = v7 - v4;
  if (v5 != v13)
  {
    operator new();
  }

  caulk::concurrent::exchanged_pointer_base<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::extract_retired(&v15, v13);
  return std::unique_ptr<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root,std::default_delete<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>>::~unique_ptr[abi:ne200100](&v15);
}

unint64_t AudioDSPGraph::Box::upstreamTailTimeInTicks(AudioDSPGraph::Box *this)
{
  v1 = *(this + 9);
  v2 = *(this + 10);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *(*(*(v1 + 16) + 8) + 8);
    v5 = (*(*v4 + 80))(v4);
    v6 = AudioDSPGraph::Box::upstreamTailTimeInTicks(v4);
    if (v3 <= v6 + v5)
    {
      v3 = v6 + v5;
    }

    v1 += 32;
  }

  while (v1 != v2);
  return v3;
}

uint64_t std::__split_buffer<AudioDSPGraph::PropertyTap>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AudioDSPGraph::BoxRegistry::add(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v15 + 2, a2))
  {
    goto LABEL_17;
  }

  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=((v15 + 5), a4);
  v17 = a3[1] + *a3 + a3[2];
  v18 = *(a1 + 48);
  if (!*&v18)
  {
    goto LABEL_40;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = a3[1] + *a3 + a3[2];
    if (v17 >= *&v18)
    {
      v20 = v17 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v17;
  }

  v21 = *(*(a1 + 40) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != v17)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }
      }

      else
      {
        v23 &= *&v18 - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v22[2] != *a3 || *(v22 + 6) != a3[2])
    {
LABEL_39:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=((v22 + 5), a4);
  v26 = *(a1 + 88);
  v25 = *(a1 + 96);
  if (v26 >= v25)
  {
    v28 = *(a1 + 80);
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v28) >> 4);
    if (v29 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v28) >> 4);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x2AAAAAAAAAAAAAALL)
    {
      v32 = 0x555555555555555;
    }

    else
    {
      v32 = v31;
    }

    v48 = a1 + 80;
    if (v32)
    {
      if (v32 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = 48 * v29;
    v44 = 0;
    v45 = v35;
    v36 = 0;
    v46 = v35;
    v47 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v35, *a2, *(a2 + 8));
      v37 = v45;
      v38 = v46;
      v36 = v47;
    }

    else
    {
      *v35 = *a2;
      *(v35 + 16) = *(a2 + 16);
      v37 = v35;
      v38 = v35;
    }

    *(v35 + 24) = *a3;
    *(v35 + 40) = a3[4];
    v34 = v38 + 48;
    v39 = *(a1 + 80);
    v40 = *(a1 + 88) - v39;
    v41 = v37 - v40;
    memcpy((v37 - v40), v39, v40);
    v42 = *(a1 + 80);
    *(a1 + 80) = v41;
    *(a1 + 88) = v34;
    v43 = *(a1 + 96);
    *(a1 + 96) = v36;
    v46 = v42;
    v47 = v43;
    v44 = v42;
    v45 = v42;
    std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(&v44);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 88), *a2, *(a2 + 8));
    }

    else
    {
      v27 = *a2;
      *(v26 + 16) = *(a2 + 16);
      *v26 = v27;
    }

    v33 = *a3;
    *(v26 + 40) = a3[4];
    *(v26 + 24) = v33;
    v34 = v26 + 48;
    *(a1 + 88) = v26 + 48;
  }

  *(a1 + 88) = v34;
}

void sub_1C92132E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_31::operator()<char const*,int,AudioDSPGraph::Boxes::CalculationBox::OperatorDomain,AudioDSPGraph::Boxes::CalculationBox::OperatorCodomain,AudioDSPGraph::Boxes::CalculationBox::Operator>(uint64_t a1, char *a2, int a3)
{
  __p[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 1668183148;
  v5 = a3;
  v6 = 1633841016;
  v7 = 0;
  operator new();
}

void sub_1C9213434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN13AudioDSPGraph11BoxRegistryC1EvENK4__31clIPKciNS2_5Boxes14CalculationBox14OperatorDomainENS9_16OperatorCodomainENS9_8OperatorEEEDaT_T0_T1_T2_T3_EUlNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjjE_NSM_ISP_EEFNS_10unique_ptrINS2_3BoxENS_14default_deleteISS_EEEESO_jjEEclEOSO_OjSZ_(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v8[0] = a2[1];
  *(v8 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!*a3)
  {
    if (!*a4)
    {
      v6 = *(a1 + 16);
      operator new();
    }

    caulk::make_string("wrong number of output for '%s' box (must be 0)", &__p, *(a1 + 8));
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C50);
  }

  caulk::make_string("wrong number of inputs for '%s' box (must be 0)", &__p, *(a1 + 8));
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C38);
}

void sub_1C9213674(_Unwind_Exception *a1)
{
  if (*v3)
  {
    *(v1 + 792) = *v3;
    if ((*(v1 + 840) & 1) == 0)
    {
      sub_1C921369C();
    }

    *v2 = 0;
  }

  AudioDSPGraph::Box::~Box(v1);
  MEMORY[0x1CCA84AE0](v1, 0x10F3C40ACE73096);
  _Unwind_Resume(a1);
}

void sub_1C92136A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v16, 0x10F3C40ACE73096);
  JUMPOUT(0x1C92136FCLL);
}

void sub_1C92136D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZN13AudioDSPGraph11BoxRegistryC1EvENK4__31clIPKciNS2_5Boxes14CalculationBox14OperatorDomainENS9_16OperatorCodomainENS9_8OperatorEEEDaT_T0_T1_T2_T3_EUlNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEjjE_NSM_ISP_EEFNS_10unique_ptrINS2_3BoxENS_14default_deleteISS_EEEESO_jjEE7__cloneEPNS0_6__baseISW_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F48CCA10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_30,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_30>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for SingleRateLPCMConverterBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83354C0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for SingleRateLPCMConverterBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83354A8);
}

void sub_1C9213914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_29,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_29>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (!*a4)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for parameter smoothing box. This box does not produce any meaningful output");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335490);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for parameter smoothing box. Need 1 input to infer sample rate and block size.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335478);
}

void sub_1C9213B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_28,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_28>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for NonFiniteProtectionBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335460);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for NonFiniteProtectionBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335448);
}

void sub_1C9213E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_27,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_27>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4[0] = a2[1];
  *(v4 + 7) = *(a2 + 15);
  v3 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_1C921403C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40223C9748);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_26,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_26>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for MantissaRandomizerBox (must be 1)");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335430);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for MantissaRandomizerBox (must be 1)");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335418);
}

void sub_1C92142B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_25,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_25>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*a4 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for DenormalEliminatorBox (must be 1)");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8335400);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for DenormalEliminatorBox (must be 1)");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353E8);
}

void sub_1C92144F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_24,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_24>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4[0] = a2[1];
  *(v4 + 7) = *(a2 + 15);
  v3 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_1C92146D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C400BD6F747);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_23,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_23>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = *a4;
  operator new();
}

void sub_1C92148B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40B4C743D6);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_22,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_22>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6[0] = a2[1];
  *(v6 + 7) = *(a2 + 15);
  v4 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = *a3;
  operator new();
}

void sub_1C9214A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12);
  _Unwind_Resume(a1);
}

double AudioDSPGraph::Boxes::DeadEndBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23042584e175;
  *a1 = xmmword_1C925F1C0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DeadEndBox::~DeadEndBox(AudioDSPGraph::Boxes::DeadEndBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_21,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_21>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4[0] = a2[1];
  *(v4 + 7) = *(a2 + 15);
  v3 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_1C9214C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C40CAD27F97);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_20,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_20>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4[0] = a2[1];
  *(v4 + 7) = *(a2 + 15);
  v3 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_1C9214E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_19,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_19>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = *a4;
  operator new();
}

void sub_1C9214FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_18,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_18>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6[0] = a2[1];
  *(v6 + 7) = *(a2 + 15);
  v4 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = *a3;
  operator new();
}

void sub_1C92151B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA84AE0](v14, 0x10F3C4047313C12);
  _Unwind_Resume(a1);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_17,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_17>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1 && *a4 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "TimeFreqBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353D0);
}

void sub_1C92153C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_16,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_16>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[0] = a2[1];
  *(v7 + 7) = *(a2 + 15);
  v5 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*a3 == 1 && *a4 == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "FreqSRCBox number of inputs and outputs must be one.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E83353B8);
}

void sub_1C92155D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::FCBox(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(a1, __p, 1u, 1u);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D26A8;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 864) = 0u;
  return a1;
}

void sub_1C92156C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::RingBufferBox::RingBufferBox(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D31A8;
  *(a1 + 764) = 0;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_1C9215780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}