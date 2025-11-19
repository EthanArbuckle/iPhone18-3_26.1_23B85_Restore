void sub_1C924599C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  if (*(v60 + 23) < 0)
  {
    operator delete(*v60);
  }

  AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(&STACK[0x4E8]);
  v62 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v62;
    operator delete(v62);
  }

  _Unwind_Resume(a1);
}

void std::vector<AudioDSPGraph::Language::V1::Macro const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void AudioDSPGraph::Language::V1::UndefineLocals::~UndefineLocals(AudioDSPGraph::Language::V1::UndefineLocals *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    AudioDSPGraph::Language::V1::Preprocessor::undef(*this, *v3++);
  }
}

void AudioDSPGraph::Language::V1::Preprocessor::undef(AudioDSPGraph::Language::V1::Preprocessor *this, const AudioDSPGraph::Language::V1::Macro *a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 == v3)
  {
    return;
  }

  v5 = *(this + 4);
  v6 = (v3 + 8 * (v5 >> 9));
  v7 = *v6;
  v8 = (*v6 + 8 * (v5 & 0x1FF));
  v9 = *(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF);
  v10 = v6;
  if (v8 == v9)
  {
    goto LABEL_10;
  }

  while (*v8 != a2)
  {
    if ((++v8 - v7) == 4096)
    {
      v11 = *(v10 + 1);
      v10 += 8;
      v7 = v11;
      v8 = v11;
    }

    if (v8 == v9)
    {
      v8 = (*(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF));
      break;
    }
  }

  if (v4 == v3)
  {
    if (!v8)
    {
      return;
    }

    v12 = 0;
  }

  else
  {
LABEL_10:
    if ((*(v3 + (((*(this + 5) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 5) + v5) & 0x1FF)) == v8)
    {
      return;
    }

    v12 = (*v6 + 8 * (v5 & 0x1FF));
  }

  if (v8 == v12)
  {
    v13 = *v6;
LABEL_20:
    v16 = (v3 + 8 * (v5 >> 9));
    v18 = v12;
LABEL_21:
    v19 = (v8 - v13) >> 3;
    if (v19 < 0)
    {
      v23 = 510 - v19;
      v21 = &v16[-(v23 >> 9)];
      v22 = (*v21 + 8 * (~v23 & 0x1FF));
    }

    else
    {
      v20 = v19 + 1;
      v21 = &v16[v20 >> 9];
      v22 = (*v21 + 8 * (v20 & 0x1FF));
    }

    if (v16 == v6)
    {
      v24 = v12;
      v25 = v18;
    }

    else
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v13, v18, v21, v22);
      v22 = v53;
      v21 = v52;
      v26 = v16 - 1;
      while (v26 != v6)
      {
        v27 = *v26--;
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v27, v27 + 4096, v21, v22);
        v22 = v53;
        v21 = v52;
      }

      v25 = *v6 + 4096;
      v24 = v12;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v24, v25, v21, v22);
    v28 = *v12;
    *v12 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = vaddq_s64(*(this + 2), xmmword_1C925F430);
    *(this + 2) = v29;
    if (v29.i64[0] >= 0x400uLL)
    {
      operator delete(**(this + 1));
      *(this + 1) += 8;
      *(this + 4) -= 512;
    }

    return;
  }

  v14 = ((v8 - *v10) >> 3) + ((v10 - v6) << 6);
  v13 = *v6;
  v15 = v14 - ((v12 - *v6) >> 3);
  if (v14 == (v12 - *v6) >> 3)
  {
    v8 = v12;
    goto LABEL_20;
  }

  if (v14 < 1)
  {
    v30 = 511 - v14;
    v16 = &v6[-(v30 >> 9)];
    v13 = *v16;
    v17 = ~v30 & 0x1FFLL;
  }

  else
  {
    v16 = &v6[v14 >> 9];
    v13 = *v16;
    v17 = v14 & 0x1FF;
  }

  v18 = (v13 + 8 * v17);
  v31 = *(this + 5);
  if (v15 <= (v31 - 1) >> 1)
  {
    v8 = v18;
    goto LABEL_21;
  }

  v32 = (v18 - v13) >> 3;
  if (v32 < 0)
  {
    v35 = 510 - v32;
    v33 = ~v35;
    v34 = &v16[-(v35 >> 9)];
  }

  else
  {
    v33 = v32 + 1;
    v34 = &v16[(v32 + 1) >> 9];
  }

  v36 = &(*v34)[v33 & 0x1FF];
  v37 = v5 + v31;
  v38 = (v3 + 8 * (v37 >> 9));
  if (v4 == v3)
  {
    v39 = 0;
  }

  else
  {
    v39 = &(*v38)[v37 & 0x1FF];
  }

  if (v34 == v38)
  {
    v44 = v39;
    v40 = v16;
    v41 = v18;
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v36, *v34 + 512, v16, v18);
    v41 = v53;
    v40 = v52;
    v42 = v34 + 1;
    while (v42 != v38)
    {
      v43 = *v42++;
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v43, v43 + 512, v40, v41);
      v41 = v53;
      v40 = v52;
    }

    v36 = *v38;
    v44 = v39;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(v51, v36, v44, v40, v41);
  v45 = *v53;
  *v53 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v47 = *(this + 1);
  v46 = *(this + 2);
  if (v46 == v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = ((v46 - v47) << 6) - 1;
  }

  v49 = *(this + 4);
  v50 = *(this + 5) - 1;
  *(this + 5) = v50;
  if ((v48 - (v50 + v49)) >= 0x400)
  {
    operator delete(*(v46 - 8));
    *(this + 2) -= 8;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(uint64_t result, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v14 = a2;
    goto LABEL_17;
  }

  v10 = *a4;
  while (1)
  {
    v11 = v10 - a5 + 4096;
    v12 = a3 - v7 >= v11 >> 3 ? v11 >> 3 : a3 - v7;
    if (v12)
    {
      break;
    }

LABEL_13:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a5 = v16;
  }

  v13 = 8 * v12;
  v14 = &v7[v12];
  do
  {
    v15 = *v7;
    *v7 = 0;
    result = *a5;
    *a5 = v15;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    ++v7;
    ++a5;
    v13 -= 8;
  }

  while (v13);
  if (v14 != a3)
  {
    v7 = v14;
    goto LABEL_13;
  }

  if ((*v6 + 4096) == a5)
  {
    v17 = v6[1];
    ++v6;
    a5 = v17;
  }

LABEL_17:
  *v8 = v14;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::__deque_iterator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro>,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::unique_ptr<AudioDSPGraph::Language::V1::Macro>&,std::unique_ptr<AudioDSPGraph::Language::V1::Macro> **,long,512l>,0>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      if (v13)
      {
        v14 = -8 * v13;
        v15 = (v11 - 8);
        do
        {
          v16 = *v15;
          *v15 = 0;
          v17 = *--a5;
          result = v17;
          *a5 = v16;
          if (v17)
          {
            result = (*(*result + 8))(result);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
      }

      v11 -= 8 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = (v18 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void AudioDSPGraph::Language::V1::ArgMacro::~ArgMacro(void **this)
{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);
}

void AudioDSPGraph::Language::V1::Macro::~Macro(void **this)
{
  *this = &unk_1F48D2368;
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(std::string::value_type **a1, char a2, std::string::value_type a3, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v8 = **a1;
  if (!v8)
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(v12, "preprocessor error: expected closing brace");
    AudioDSPGraph::ThrowException(1886548769, v12, off_1E8336FB0);
  }

  v9 = *a1 + 1;
  v10 = 1;
  while (1)
  {
    if (v8 != a3)
    {
      if (v8 == a2)
      {
        ++v10;
      }

      goto LABEL_11;
    }

    if (!--v10)
    {
      break;
    }

    v8 = a3;
LABEL_11:
    std::string::push_back(this, v8);
    v11 = *v9++;
    v8 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  *a1 = v9;
}

void sub_1C9246A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseToken(AudioDSPGraph::Language::V1 *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::skipspace(a1, a2);
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = AudioDSPGraph::Language::V1::endOfWord(**a1);
  if (!v4)
  {
    for (i = *a1; ; ++i)
    {
      v6 = *i;
      if (AudioDSPGraph::Language::V1::endOfWord(*i))
      {
        break;
      }

      std::string::push_back(a2, v6);
    }

    *a1 = i;
  }

  return !v4;
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::find(void *a1, const void **a2)
{
  v2 = a1[1];
  if (a1[2] == v2)
  {
    return 0;
  }

  v3 = a1[4];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *v4;
  v6 = *v4 + 8 * (v3 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v3) & 0x1FF);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  while (1)
  {
    v11 = *v6;
    v12 = *(*v6 + 31);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(*v6 + 16);
    }

    if (v12 == v9)
    {
      v14 = v13 >= 0 ? (v11 + 8) : *(v11 + 8);
      if (!memcmp(v14, v10, v9))
      {
        break;
      }
    }

    v6 += 8;
    if (v6 - v5 == 4096)
    {
      v15 = v4[1];
      ++v4;
      v5 = v15;
      v6 = v15;
    }

    if (v6 == v7)
    {
      return 0;
    }
  }

  return v11;
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseMacroBody(void *a1, AudioDSPGraph::Language::V1 *a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a2, a3) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    goto LABEL_23;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v6);
  if (**a2 == 40)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 40, 41, a3);
    v9 = (a3 + 8);
    v8 = *(a3 + 8);
    if (*(a3 + 23) >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v10 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    p_p->__r_.__value_.__s.__data_[0] = 40;
    v12 = &p_p->__r_.__value_.__l.__data_ + 1;
    if (v10)
    {
      if (*(a3 + 23) >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      memmove(v12, v13, v10);
    }

    *(v12 + v10) = 0;
    std::string::push_back(&__p, 41);
    v21[0] = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
    *(v21 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
      v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = v14;
      *v9 = v21[0];
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v15;
      if (v18 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a3 = v14;
      *v9 = v21[0];
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v15;
    }

    goto LABEL_23;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v7);
  if (**a2 == 123)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 123, 125, a3);
LABEL_23:
    v19 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v16 = *MEMORY[0x1E69E9840];

  return AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_1C9246E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::strToLong(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    if (a1[1])
    {
      __endptr = 0;
      a1 = *a1;
      goto LABEL_6;
    }

LABEL_13:
    caulk::make_string("empty %s argument", v13, a2);
    AudioDSPGraph::ThrowException(1886548769, v13, a3);
  }

  if (!*(a1 + 23))
  {
    goto LABEL_13;
  }

  __endptr = 0;
LABEL_6:
  v6 = strtol(a1, &__endptr, 10);
  if ((v6 - 0x7FFFFFFFFFFFFFFFLL) <= 1 && *__error())
  {
    if (*(v5 + 23) >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *v5;
    }

    caulk::make_string("out-of-range %s argument: %s", v11, a2, v9);
    AudioDSPGraph::ThrowException(1886548769, v11, a3);
  }

  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    if (__endptr != (*v5 + v5[1]))
    {
      v5 = *v5;
      goto LABEL_19;
    }
  }

  else if (__endptr != v5 + v7)
  {
LABEL_19:
    caulk::make_string("non-numerical characters in %s argument: %s", v10, a2, v5);
    AudioDSPGraph::ThrowException(1886548769, v10, a3);
  }

  return v6;
}

void sub_1C9246F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::numeric::exceptional_add<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_mul<long>(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t caulk::numeric::exceptional_sub<long>(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic subtraction overflow");
  }

  return result;
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::skipMacroBody(AudioDSPGraph::Language::V1::Preprocessor *this, const char **a2)
{
  memset(&__p, 0, sizeof(__p));
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(this, &__p) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(this, &__p) & 1) != 0)
  {
    goto LABEL_9;
  }

  AudioDSPGraph::Language::V1::skipspace(this, v3);
  v5 = *this;
  if (**this == 40)
  {
    v6 = 41;
    v7 = 40;
LABEL_8:
    *this = v5 + 1;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(this, v7, v6, &__p);
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  AudioDSPGraph::Language::V1::skipspace(this, v4);
  v5 = *this;
  if (**this == 123 || (AudioDSPGraph::Language::V1::skipspace(this, v8), v5 = *this, **this == 91))
  {
    v6 = 125;
    v7 = 123;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1C92471F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::parseString(AudioDSPGraph::Language::V1 *a1, uint64_t a2)
{
  AudioDSPGraph::Language::V1::skipspace(a1, a2);
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a1, a2))
  {
    return 1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (**a1 == 34)
  {
    std::string::push_back(a2, 34);
    v4 = *a1 - 1;
    do
    {
      v5 = *(v4 + 2);
      if (v5 == 10 || v5 == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v9, "unterminated string");
        AudioDSPGraph::ThrowException(1886548769, v9, off_1E8337010);
      }

      v7 = v5;
      std::string::push_back(a2, v5);
      ++v4;
    }

    while (v7 != 34);
    *a1 = v4 + 2;
    return 1;
  }

  return 0;
}

void sub_1C924730C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1C9247374(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1CCA846F0](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C9247550(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1CCA849E0](v1);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::emplace[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>,void>(std::string *this, void **a2, void **a3)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  v6 = *a2;
  v7 = *a3;
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  while (!v6)
  {
    v8 = 1;
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v7[3] == v7[4])
    {
      if ((*(*v7 + 72))(v7) == -1)
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        goto LABEL_29;
      }
    }

    else if (!v8)
    {
      goto LABEL_29;
    }

LABEL_23:
    v10 = v6[3];
    if (v10 == v6[4])
    {
      v11 = (*(*v6 + 72))(v6);
    }

    else
    {
      v11 = *v10;
    }

    std::string::push_back(this, v11);
    v12 = v6[3];
    if (v12 == v6[4])
    {
      (*(*v6 + 80))(v6);
    }

    else
    {
      v6[3] = v12 + 1;
    }
  }

  if (v6[3] != v6[4])
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v9 = (*(*v6 + 72))(v6);
  v8 = v9 == -1;
  if (v9 == -1)
  {
    v6 = 0;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_21:
  if (!v8)
  {
    v7 = 0;
    goto LABEL_23;
  }

LABEL_29:
  this[1].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

void sub_1C9247734(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1CCA84700](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1CCA849E0](a1 + 53);
  return a1;
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_1C92478D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1CCA846F0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C9247A70(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1CCA849E0](v1);
  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(uint64_t a1, AudioDSPGraph::Language::V1 *a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (AudioDSPGraph::Language::V1::Preprocessor::parseToken(a2, a3) || (AudioDSPGraph::Language::V1::Preprocessor::parseString(a2, a3) & 1) != 0)
  {
    goto LABEL_10;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v6);
  if (**a2 == 40)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 40, 41, a3);
    std::operator+<char>();
    v8 = std::string::append(&__p, ")", 1uLL);
    v9 = v8->__r_.__value_.__r.__words[0];
    v16[0] = v8->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v11 = v16[0];
    *a3 = v9;
    *(a3 + 8) = v11;
    *(a3 + 15) = *(v16 + 7);
    *(a3 + 23) = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_10;
  }

  AudioDSPGraph::Language::V1::skipspace(a2, v7);
  if (**a2 == 123)
  {
    ++*a2;
    AudioDSPGraph::Language::V1::Preprocessor::parseToEnd(a2, 123, 125, a3);
LABEL_10:
    v12 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v14 = *MEMORY[0x1E69E9840];

  return AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(a1, a2, a3);
}

void sub_1C9247C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t AudioDSPGraph::Language::V1::skipspace(AudioDSPGraph::Language::V1 *this, const char **a2)
{
  v3 = *this;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v3;
    if ((v5 & 0x80000000) != 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
      if (result)
      {
LABEL_4:
        v3 = (*this + 1);
        *this = v3;
        continue;
      }
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
      if (result)
      {
        goto LABEL_4;
      }
    }

    if (v5 != 59)
    {
      return result;
    }

    v3 = *this;
    do
    {
      v7 = *v3;
      if (!*v3)
      {
        break;
      }

      *this = ++v3;
    }

    while (v7 != 10);
  }

  while (result);
  return result;
}

BOOL AudioDSPGraph::Language::V1::Preprocessor::parseMacroCall(void *a1, const char **a2, uint64_t a3)
{
  v27 = *a2;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  AudioDSPGraph::Language::V1::skipspace(&v27, a2);
  v6 = *v27;
  if (v6 == 91)
  {
    v26 = 0;
    ++v27;
    v25[0] = 0;
    v25[1] = 0;
    if (!AudioDSPGraph::Language::V1::Preprocessor::parseToken(&v27, v25))
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "preprocessor error: expected macro name");
      AudioDSPGraph::ThrowException(1886548769, v24, off_1E8336FC8);
    }

    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (AudioDSPGraph::Language::V1::Preprocessor::parseActualArg(a1, &v27, __p))
    {
      v8 = v20;
      if (v20 >= v21)
      {
        v10 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v19, __p);
      }

      else
      {
        if (SHIBYTE(v23) < 0)
        {
          std::string::__init_copy_ctor_external(v20, __p[0], __p[1]);
        }

        else
        {
          v9 = *__p;
          v20->__r_.__value_.__r.__words[2] = v23;
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        v10 = v8 + 1;
      }

      v20 = v10;
    }

    AudioDSPGraph::Language::V1::skipspace(&v27, v7);
    v11 = v27;
    if (*v27 != 93)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "preprocessor error: expected closing brace");
      AudioDSPGraph::ThrowException(1886548769, v18, off_1E8336FE0);
    }

    v12 = AudioDSPGraph::Language::V1::Preprocessor::find(a1, v25);
    if (!v12)
    {
      if (v26 >= 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v25[0];
      }

      caulk::make_string("preprocessor error: macro %s not found.", v17, v14);
      AudioDSPGraph::ThrowException(1852204065, v17, off_1E8336FF8);
    }

    *a2 = v11 + 1;
    (*(*v12 + 16))(&v15);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v15;
    *(a3 + 16) = v16;
    *&v15 = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  return v6 == 91;
}

void sub_1C9247FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a11 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t AudioDSPGraph::Language::V1::CounterMacro::apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  std::to_string(a3, *(a1 + 56));
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (v6 - v5 != 24)
    {
      std::string::basic_string[abi:ne200100]<0>(v9, "too many arguments to counter");
      AudioDSPGraph::ThrowException(1886548769, v9, off_1E8337688);
    }

    v7 = AudioDSPGraph::Language::V1::strToLong(v5, "counter step", off_1E8337670);
    result = caulk::numeric::exceptional_add<long>(*(a1 + 56), v7);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_1C924810C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Language::V1::CounterMacro::~CounterMacro(void **this)
{
  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

BOOL AudioDSPGraph::Language::V1::endOfWord(unsigned int this)
{
  if (!this)
  {
    return 1;
  }

  if (this <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * this + 60) & 0x4000) != 0)
    {
      return 1;
    }
  }

  else if (__maskrune(this, 0x4000uLL))
  {
    return 1;
  }
}

void AudioDSPGraph::Language::V1::StringSubMacro::~StringSubMacro(void **this)
{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2398;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  AudioDSPGraph::Language::V1::Macro::~Macro(this);
}

void AudioDSPGraph::Boxes::RingBufferBox::uninitialize(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);

  AudioDSPGraph::SimpleABL::free((this + 800));
}

void AudioDSPGraph::Boxes::RingBufferBox::initialize(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = (*(*this + 664))(this);
  v3 = (*(*this + 632))(this);
  v4 = *(this + 191);
  if (v2)
  {
    v2 = *(this + 192);
  }

  v5 = (*(*this + 640))(this);
  v6 = (*(*this + 624))(this);
  if (v2 > v4)
  {
    caulk::make_string("numZeroes is greater than buffer capacity %u > %u", v12, v2, v4);
    AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337BE0);
  }

  v7 = v6;
  *(this + 204) = v4;
  v8 = v4 + 1;
  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  *(this + 205) = v8;
  *(this + 206) = v5;
  *(this + 828) = 0;
  *(this + 209) = 0;
  v9 = caulk::numeric::exceptional_mul<unsigned int>(v8, v5);
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3;
  }

  AudioDSPGraph::SimpleABL::alloc((this + 800), v10, v9, 0);
  if (v2)
  {

    AudioDSPGraph::RingBuffer::initialize((this + 800), v2);
  }
}

uint64_t AudioDSPGraph::Boxes::RingBufferBox::configureFromDryRun(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  v2 = *(this + 98);
  v3 = v2 * (*(*this + 648))(this);
  v4 = *(*(this + 2) + 848);
  v5 = (*(*this + 656))(this);
  v6 = (v4 * v5 + ~v3) / (v4 * v5);
  if (v6 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (HIDWORD(v6))
  {
    LODWORD(v6) = v7;
  }

  *(this + 192) = v6;
  v8 = *(this + 99) - *(this + 98);
  v9 = (*(*this + 648))(this);
  v10 = *(*(this + 2) + 848);
  result = (*(*this + 656))(this);
  v12 = (v10 * result + v8 * v9 - 1) / (v10 * result);
  if (v12 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (HIDWORD(v12))
  {
    LODWORD(v12) = v13;
  }

  *(this + 191) = v12;
  return result;
}

uint64_t AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::uninitialize(AudioDSPGraph::Boxes::SingleRateLPCMConverterBox *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  return AudioDSPGraph::Box::uninitialize(this);
}

uint64_t AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::initialize(AudioConverterRef *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = this[9];
  v3 = this[10];
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0x20 || (v4 = this[12], v5 = this[13], ((v5 - v4) & 0x1FFFFFFFE0) != 0x20))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "SingleRateLPCMConverterBox only supports 1 bus in 1 bus out");
    AudioDSPGraph::ThrowException(1718449215, v19, off_1E83376A0);
  }

  if (v3 == v2)
  {
    v9 = this + 5;
    if (*(this + 63) < 0)
    {
      v9 = *v9;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v20, v9, (v3 - v2) >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C60);
  }

  v6 = *(*(v2 + 2) + 120);
  if (v6->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "SingleRateLPCMConverterBox input format must be LPCM");
    AudioDSPGraph::ThrowException(1718449215, v18, off_1E83376B8);
  }

  if (!v6->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "SingleRateLPCMConverterBox input must have a non-zero number of channels");
    AudioDSPGraph::ThrowException(1718449215, v17, off_1E83376D0);
  }

  if (v5 == v4)
  {
    v10 = (v5 - v4) >> 5;
    v11 = this + 5;
    if (*(this + 63) < 0)
    {
      v11 = *v11;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v20, v11, v10, 0);
    AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C78);
  }

  v7 = *(*(v4 + 2) + 120);
  if (v7->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "SingleRateLPCMConverterBox output format must be non-interleaved float");
    AudioDSPGraph::ThrowException(1718449215, v16, off_1E83376E8);
  }

  if (!v7->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "SingleRateLPCMConverterBox output must have a non-zero number of channels");
    AudioDSPGraph::ThrowException(1718449215, v15, off_1E8337700);
  }

  if (v6->mSampleRate != v7->mSampleRate)
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "SingleRateLPCMConverterBox input and output sample rates must match");
    AudioDSPGraph::ThrowException(1718449215, v14, off_1E8337718);
  }

  result = AudioConverterNew(v6, v7, this + 96);
  if (result)
  {
    v12 = result;
    std::string::basic_string[abi:ne200100]<0>(v13, "Error in AudioConverterNew");
    AudioDSPGraph::ThrowException(v12, v13, off_1E8337730);
  }

  return result;
}

void sub_1C9248990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28814877e248;
  *a1 = xmmword_1C925F390;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::~SingleRateLPCMConverterBox(AudioDSPGraph::Boxes::SingleRateLPCMConverterBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::FCBox::isNoOp(AudioDSPGraph::Boxes::FCBox *this)
{
  v2 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this);
  if (v2 != AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this))
  {
    return 0;
  }

  v3 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
  if (v3 != AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this))
  {
    return 0;
  }

  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v15 = (this + 40);
    if (*(this + 63) < 0)
    {
      v15 = *v15;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v15, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v17, off_1E8337898);
  }

  v5 = *(*(v4 + 16) + 120);
  v6 = *(v5 + 8);
  v9 = v6 != 1718773105 && v6 != 1819304813 && *(v5 + 16) != 0;
  v10 = *(this + 12);
  if (*(this + 13) == v10)
  {
    v16 = (this + 40);
    if (*(this + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v16, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v17, off_1E83378B0);
  }

  v11 = *(*(v10 + 16) + 120);
  v12 = *(v11 + 8);
  v14 = v12 != 1718773105 && v12 != 1819304813 && *(v11 + 16) != 0;
  return v9 ^ v14 ^ 1u;
}

void sub_1C9248C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return **(*(v1 + 16) + 120);
}

void sub_1C9248CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return **(*(v1 + 16) + 120);
}

void sub_1C9248D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E8337898);
  }

  return *(*(*(v1 + 16) + 120) + 40);
}

void sub_1C9248E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 40);
}

void sub_1C9248EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::copyOutput(AudioDSPGraph::Boxes::FCBox *this, unsigned int a2)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v18 = (this + 40);
    if (*(this + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v21, v18, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v21, off_1E8337C78);
  }

  v5 = *(v3 + 16);
  v6 = *(*(v5 + 120) + 20);
  v7 = *(v5 + 56);
  *(v7 + 18) = 0;
  AudioDSPGraph::Buffer::setByteSize(v7, *(v7 + 25));
  v8 = *(this + 12);
  if (*(this + 13) == v8)
  {
    v19 = (this + 40);
    if (*(this + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v21, v19, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v21, off_1E8337C78);
  }

  result = AudioDSPGraph::RingBuffer::read((this + 800), a2 / v6, (*(*(v8 + 16) + 56) + 80));
  v10 = *(this + 12);
  if (*(this + 13) == v10)
  {
    v20 = (this + 40);
    if (*(this + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v21, v20, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v21, off_1E8337C78);
  }

  v11 = *(*(v10 + 16) + 56);
  *(v11 + 64) = 1;
  v12 = *(*(this + 106) + 256);
  *(v11 + 8) = v12;
  if (*(this + 856) == 1)
  {
    *(v11 + 64) = 3;
    v13 = v12 / AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this);
    v14 = *(this + 109);
    result = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this);
    *(v11 + 16) = *(this + 108) + llround((v13 - v14 / result) * 24000000.0);
  }

  v16 = *(this + 26);
  v15 = *(this + 27);
  while (v16 != v15)
  {
    v17 = *v16++;
    result = AudioDSPGraph::FileRecorder::record(v17);
  }

  return result;
}

void sub_1C92490D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::ringBufferFramesPerPacket(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 20);
}

void sub_1C924917C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::bytesPerPacket(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 16);
}

void sub_1C9249220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::FCBox::numChannels(AudioDSPGraph::Boxes::FCBox *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v3, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v4, off_1E83378B0);
  }

  return *(*(*(v1 + 16) + 120) + 28);
}

void sub_1C92492C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::FCBox::doProcess(AudioDSPGraph::Boxes::FCBox *this, uint64_t a2)
{
  if (atomic_fetch_or(this + 190, 0x80000000))
  {
    v4 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(this + 672);
    (*(*this + 464))(this);
    (*(*this + 472))(this);
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      while (v5 != v6)
      {
        if (*v5)
        {
          (*(**v5 + 16))(*v5, this, a2);
        }

        v5 += 2;
      }
    }

    (*(*this + 456))(this, a2);
    if ((*(*this + 680))(this))
    {
      v7 = *(this + 26);
      v8 = *(this + 27);
      while (v7 != v8)
      {
        AudioDSPGraph::FileRecorder::record(*v7++);
      }
    }

    v9 = *(this + 29);
    v10 = *(this + 30);
    while (v9 != v10)
    {
      AudioDSPGraph::FileInjector::inject(*v9++, a2);
    }

    if (v4)
    {
      v12 = *(v4 + 8);
      v11 = *(v4 + 16);
      while (v12 != v11)
      {
        if (*v12)
        {
          (*(**v12 + 24))(*v12, this, a2);
        }

        v12 += 2;
      }
    }
  }

  else
  {
    (*(*this + 456))(this, a2);
  }

  atomic_fetch_and(this + 190, 0x7FFFFFFFu);
}

void *AudioDSPGraph::Boxes::FCBox::isogroup(AudioDSPGraph::Box *a1, uint64_t a2, AudioDSPGraph::IsoGroup *a3)
{
  if ((*(*a1 + 680))(a1))
  {

    return AudioDSPGraph::Box::isogroup(a1, a2, a3);
  }

  else
  {
    result = std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::find<AudioDSPGraph::Box *>(*a2, *(a2 + 8), a1);
    if (!result)
    {
      std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box *>(a2, a1);
      AudioDSPGraph::IsoGroup::add(a3, a1);
      std::__hash_table<AudioDSPGraph::Boxes::FCBox *,std::hash<AudioDSPGraph::Boxes::FCBox *>,std::equal_to<AudioDSPGraph::Boxes::FCBox *>,std::allocator<AudioDSPGraph::Boxes::FCBox *>>::__emplace_unique_key_args<AudioDSPGraph::Boxes::FCBox *,AudioDSPGraph::Boxes::FCBox * const&>(a3 + 17, a1);
      *(a1 + 105) = a3;
      v7 = *(*a1 + 408);

      return v7(a1, a2, a3);
    }
  }

  return result;
}

AudioDSPGraph::Boxes::FCBox *AudioDSPGraph::Boxes::FCBox::asOperativeFCBox(AudioDSPGraph::Boxes::FCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

void AudioDSPGraph::Boxes::SRCBox::reset(AudioDSPGraph::Boxes::SRCBox *this)
{
  AudioDSPGraph::Boxes::RingBufferBox::reset(this);
  if (*(this + 888) == 1)
  {
    v2 = *(this + 110);
    AudioSampleRateConverterReset();
  }
}

void AudioDSPGraph::Boxes::SRCBox::uninitialize(AudioDSPGraph::Boxes::SRCBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    v2 = *(this + 110);
    AudioSampleRateConverterDispose();
    *(this + 888) = 0;
  }
}

void AudioDSPGraph::Boxes::SRCBox::initialize(AudioDSPGraph::Boxes::SRCBox *this)
{
  v47 = *MEMORY[0x1E69E9840];
  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v20 = (this + 40);
    if (*(this + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v41, v20, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
  }

  v3 = *(*(*(v2 + 16) + 120) + 28);
  v4 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this);
  v5 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this);
  v6 = *(this + 9);
  if (*(this + 10) == v6)
  {
    v21 = (this + 40);
    if (*(this + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v41, v21, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  if (*(*(*(v6 + 16) + 120) + 28) != v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v34, off_1E8337748);
  }

  v7 = v4;
  v8 = v5;
  v9 = *(this + 224);
  if (v9 == 1852797549)
  {
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v41, 0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D980], v3);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D978], v4);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D988], v8);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D960], *(this + 224));
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D998], *(this + 225));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D970], 0.0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D990], 2);
    v12 = __len[0];
    LOBYTE(valuePtr[0]) = 0;
    v13 = CFNumberCreate(0, kCFNumberCharType, valuePtr);
    v36 = v13;
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    CFDictionarySetValue(v12, *MEMORY[0x1E698D968], v13);
    CFRelease(v13);
    CA::AudioSampleRateConverterBuilder::Build(&v36);
    if ((v37 & 1) == 0)
    {
      v28 = v36;
      v29 = (this + 40);
      if (*(this + 63) < 0)
      {
        v29 = *v29;
      }

      caulk::make_string("failed to build %s sample rate converter", v32, v29);
      AudioDSPGraph::ThrowException(v28, v32, off_1E8337778);
    }

    if (*(this + 888) == 1)
    {
      v14 = *(this + 110);
      v15 = v36;
    }

    else
    {
      v14 = 0;
      v15 = v36;
      *(this + 888) = 1;
    }

    *(this + 110) = v15;
    v36 = v14;
    AudioSampleRateConverterDispose();
  }

  else
  {
    if (v9 != 1835626096)
    {
      v22 = (this + 40);
      if (*(this + 63) < 0)
      {
        v22 = *v22;
      }

      caulk::string_from_4cc(&v30, v9);
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      v24 = v30.__r_.__value_.__r.__words[0];
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v30;
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v39 = size;
      v40 = 428;
      valuePtr[2] = 428;
      v36 = v22;
      v38 = v24;
      v41 = v45;
      *__len = xmmword_1C925F110;
      v43 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v44 = 0;
      __p = v45;
      valuePtr[0] = 2;
      valuePtr[1] = &v36;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v41, "failed to build {} sample rate converter with unsupported algorithm {}", 72, valuePtr);
      std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
      if (__p != v45)
      {
        operator delete(__p);
      }

      AudioDSPGraph::ThrowException(1869640255, __dst, off_1E8337790);
    }

    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v41, 1);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D948], v3);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D938], v4);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D950], v8);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__len[0], *MEMORY[0x1E698D958], *(this + 225));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__len[0], *MEMORY[0x1E698D940], 0.0);
    CA::AudioSampleRateConverterBuilder::Build(&v36);
    if ((v37 & 1) == 0)
    {
      v25 = v36;
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::make_string("failed to build %s sample rate converter", v33, v26);
      AudioDSPGraph::ThrowException(v25, v33, off_1E8337760);
    }

    if (*(this + 888) == 1)
    {
      v10 = *(this + 110);
      v11 = v36;
    }

    else
    {
      v10 = 0;
      v11 = v36;
      *(this + 888) = 1;
    }

    *(this + 110) = v11;
    v36 = v10;
    AudioSampleRateConverterDispose();
  }

  CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&v41);
  v16 = *(this + 3);
  v17 = *(v16 + 268);
  if (v17 == 1)
  {
    v17 = *(v16 + 272);
  }

  v18 = vcvtpd_u64_f64(v8 * v17 / v7);
  *(this + 230) = v18;
  AudioDSPGraph::SimpleABL::alloc((this + 904), v3, 4 * v18, 0);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1C9249D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(a1 + 8) = Mutable;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C9249F48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA::AudioSampleRateConverterBuilder::SetAttribute<double>(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::AudioSampleRateConverterBuilder::Build(CA::AudioSampleRateConverterBuilder *this)
{
  v4 = *MEMORY[0x1E69E9840];
  result = AudioSampleRateConverterCreate();
  if (!result)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *this = result;
  *(this + 8) = 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C924A21C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(CA::AudioSampleRateConverterBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    AudioSampleRateConverterDispose();
  }

  return a1;
}

double AudioDSPGraph::Boxes::SRCBox::open(AudioDSPGraph::Boxes::SRCBox *this)
{
  result = *(*(this + 2) + 1040);
  *(this + 112) = result;
  return result;
}

__n128 AudioDSPGraph::Boxes::SRCBox::process(AudioDSPGraph::Boxes::SRCBox *this, int a2)
{
  if ((*(*this + 680))(this))
  {
    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v37, v26, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C78);
    }

    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v28 = (this + 40);
      if (*(this + 63) < 0)
      {
        v28 = *v28;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v37, v28, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
    }

    AudioDSPGraph::Buffer::copyFrom(*(*(v4 + 16) + 56), *(*(v5 + 16) + 56));
  }

  else
  {
    v7 = *(this + 9);
    if (*(this + 10) == v7)
    {
      v27 = (this + 40);
      if (*(this + 63) < 0)
      {
        v27 = *v27;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v37, v27, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
    }

    v8 = *(*(v7 + 16) + 56);
    v9 = *(v8 + 64);
    *(this + 856) = (v9 & 2) != 0;
    if ((v9 & 2) != 0)
    {
      *(this + 108) = *(v8 + 16);
      *(this + 109) = *(v8 + 8);
    }

    v35 = a2;
    v36 = a2;
    v10 = *(v8 + 80);
    v11 = *(this + 110);
    ExpectedNumberOfOutputFrames = AudioSampleRateConverterGetExpectedNumberOfOutputFrames();
    v34 = ExpectedNumberOfOutputFrames;
    v13 = *(this + 230);
    if (ExpectedNumberOfOutputFrames > v13)
    {
      v29 = (this + 40);
      if (*(this + 63) < 0)
      {
        v29 = *v29;
      }

      caulk::make_string("%s SRC output frame count %u is greater than output buffer frame capacity %u", v33, v29, ExpectedNumberOfOutputFrames, v13);
      AudioDSPGraph::ThrowException(1718775073, v33, off_1E83377A8);
    }

    v14 = *(this + 113);
    v15 = *(this + 110);
    v16 = AudioSampleRateConverterProcessAudioBufferLists();
    if (v16)
    {
      v30 = (this + 40);
      if (*(this + 63) < 0)
      {
        v30 = *v30;
      }

      caulk::string_from_4cc(&v37, v16);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v37;
      }

      else
      {
        v31 = v37.__r_.__value_.__r.__words[0];
      }

      caulk::make_string("%s SRC failed to process with status %s", v32, v30, v31);
      AudioDSPGraph::ThrowException(v16, v32, off_1E83377C0);
    }

    AudioDSPGraph::RingBuffer::write((this + 800), v34, (this + 904));
  }

  v17 = *(this + 9);
  if (*(this + 10) == v17)
  {
    v25 = (this + 40);
    if (*(this + 63) < 0)
    {
      v25 = *v25;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v37, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
  }

  v18 = *(this + 12);
  v19 = *(this + 13);
  if (v18 != v19)
  {
    v20 = *(*(v17 + 16) + 56);
    v21 = *(v20 + 72);
    do
    {
      v22 = *(*(v18 + 16) + 56);
      result = *(v20 + 8);
      v23 = *(v20 + 24);
      v24 = *(v20 + 40);
      *(v22 + 56) = *(v20 + 56);
      *(v22 + 40) = v24;
      *(v22 + 24) = v23;
      *(v22 + 8) = result;
      *(v22 + 72) = v21;
      v18 += 32;
    }

    while (v18 != v19);
  }

  return result;
}

void sub_1C924A624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::SRCBox::setProperty(AudioDSPGraph::Boxes::SRCBox *this, int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2 > 1936876384)
  {
    if (a2 != 1936876401)
    {
      if (a2 != 1936876385)
      {
        return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
      }

      goto LABEL_7;
    }

LABEL_9:
    if (a5 == 4)
    {
      v7 = 0;
      *(this + 225) = *a6;
      return v7;
    }

    return 561211770;
  }

  if (a2 == 26)
  {
    goto LABEL_9;
  }

  if (a2 != 3014)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

LABEL_7:
  if (a5 != 4)
  {
    return 561211770;
  }

  v7 = 0;
  *(this + 224) = *a6;
  return v7;
}

uint64_t AudioDSPGraph::Boxes::SRCBox::getProperty(AudioDSPGraph::Boxes::SRCBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 > 1936876384)
  {
    if (a2 != 1936876401)
    {
      if (a2 != 1936876385)
      {
        return AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
      }

      goto LABEL_7;
    }

LABEL_9:
    if (*a5 == 4)
    {
      v7 = 0;
      v8 = *(this + 225);
      goto LABEL_11;
    }

    return 561211770;
  }

  if (a2 == 26)
  {
    goto LABEL_9;
  }

  if (a2 != 3014)
  {
    return AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

LABEL_7:
  if (*a5 != 4)
  {
    return 561211770;
  }

  v7 = 0;
  v8 = *(this + 224);
LABEL_11:
  *a6 = v8;
  return v7;
}

uint64_t AudioDSPGraph::Boxes::SRCBox::getPropertyInfo(AudioDSPGraph::Boxes::SRCBox *this, int a2, int a3)
{
  result = 0x100000004;
  if (a2 > 1835626095)
  {
    if (a2 == 1835626096 || a2 == 1936876385 || a2 == 1936876401)
    {
      return result;
    }

    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  if (a2 != 26 && a2 != 3014)
  {
    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  return result;
}

AudioDSPGraph::Boxes::SRCBox *AudioDSPGraph::Boxes::SRCBox::asOperativeSRCBox(AudioDSPGraph::Boxes::SRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double AudioDSPGraph::Boxes::SRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.28569068e248;
  *a1 = xmmword_1C925F2A0;
  *(a1 + 16) = 0;
  return result;
}

unint64_t AudioDSPGraph::Boxes::SRCBox::selfLatencyInTicks(AudioDSPGraph::Boxes::SRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  v3 = 0.0;
  if (*(this + 888) == 1)
  {
    v4 = *(this + 110);
    AudioSampleRateConverterGetLatency();
  }

  v5 = *(*(this + 2) + 848);
  v6 = llround(ceil(v3 * v5));
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(this + 192);
  return v8 + v5 / (*(*this + 648))(this) * v9;
}

void AudioDSPGraph::Boxes::SRCBox::~SRCBox(AudioDSPGraph::Boxes::SRCBox *this)
{
  *this = &unk_1F48D2968;
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    v2 = *(this + 110);
    AudioSampleRateConverterDispose();
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2968;
  AudioDSPGraph::SimpleABL::free((this + 904));
  if (*(this + 888) == 1)
  {
    v2 = *(this + 110);
    AudioSampleRateConverterDispose();
  }

  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::ReblockerBox::initialize(AudioDSPGraph::Boxes::ReblockerBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "ReblockerBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v7, off_1E83377D8);
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v8, off_1E8337C78);
  }

  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v5 = (this + 40);
    if (*(this + 63) < 0)
    {
      v5 = *v5;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v8, v5, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v8, off_1E8337C60);
  }

  if (*(*(*(v3 + 16) + 120) + 28) != *(*(*(v2 + 16) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v6, off_1E83377F0);
  }
}

void sub_1C924AC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::ReblockerBox::process(AudioDSPGraph::Boxes::ReblockerBox *this, unsigned int a2)
{
  if ((*(*this + 680))(this))
  {
    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v17 = (this + 40);
      if (*(this + 63) < 0)
      {
        v17 = *v17;
      }

      caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v20, v17, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C78);
    }

    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v19 = (this + 40);
      if (*(this + 63) < 0)
      {
        v19 = *v19;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v20, v19, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C60);
    }

    AudioDSPGraph::Buffer::copyFrom(*(*(v4 + 16) + 56), *(*(v5 + 16) + 56));
  }

  else
  {
    v7 = *(this + 9);
    if (*(this + 10) == v7)
    {
      v18 = (this + 40);
      if (*(this + 63) < 0)
      {
        v18 = *v18;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v20, v18, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C60);
    }

    AudioDSPGraph::RingBuffer::write((this + 800), a2, (*(*(v7 + 16) + 56) + 80));
  }

  v8 = *(this + 9);
  if (*(this + 10) == v8)
  {
    v16 = (this + 40);
    if (*(this + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v20, v16, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v20, off_1E8337C60);
  }

  v9 = *(this + 12);
  v10 = *(this + 13);
  if (v9 != v10)
  {
    v11 = *(*(v8 + 16) + 56);
    v12 = *(v11 + 72);
    do
    {
      v13 = *(*(v9 + 16) + 56);
      result = *(v11 + 8);
      v14 = *(v11 + 24);
      v15 = *(v11 + 40);
      *(v13 + 56) = *(v11 + 56);
      *(v13 + 40) = v15;
      *(v13 + 24) = v14;
      *(v13 + 8) = result;
      *(v13 + 72) = v12;
      v9 += 32;
    }

    while (v9 != v10);
  }

  return result;
}

void sub_1C924AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ReblockerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.14073544e243;
  *a1 = xmmword_1C925F2B0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ReblockerBox::~ReblockerBox(AudioDSPGraph::Boxes::ReblockerBox *this)
{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

void AudioDSPGraph::Boxes::FreqSRCBox::uninitialize(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::SimpleABL::free((this + 880));
}

void AudioDSPGraph::Boxes::FreqSRCBox::initialize(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v11 = (this + 40);
    if (*(this + 63) < 0)
    {
      v11 = *v11;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v26, v11, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v26, off_1E8337C78);
  }

  v3 = *(this + 9);
  v4 = *(this + 10);
  if (((v4 - v3) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "FreqSRCBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v25, off_1E8337808);
  }

  if (v4 == v3)
  {
    v12 = (v4 - v3) >> 5;
    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v26, v13, v12, 0);
    AudioDSPGraph::ThrowException(1919837985, v26, off_1E8337C60);
  }

  v5 = *(*(*(v2 + 16) + 120) + 28);
  if (*(*(*(v3 + 16) + 120) + 28) != v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "FreqSRCBox input and output channel counts don't match");
    AudioDSPGraph::ThrowException(1667788321, v24, off_1E8337820);
  }

  if (!AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(this))
  {
    v14 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
    v15 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this);
    v16 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);
    v17 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this);
    caulk::make_string("FreqSRCBox I/O sample rates and block sizes invalid  %u / %u <> %u / %u", v23, v14, v15, v16, v17);
    AudioDSPGraph::ThrowException(1718444833, v23, off_1E8337838);
  }

  if (((*(*this + 424))(this) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "FreqSRCBox box can not have ring buffer padding zeros");
    AudioDSPGraph::ThrowException(1634628385, v22, off_1E8337850);
  }

  v6 = *(this + 9);
  if (*(this + 10) == v6)
  {
    v18 = (this + 40);
    if (*(this + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v26, v18, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v26, off_1E8337898);
  }

  v7 = *(*(v6 + 16) + 120);
  if (*(v7 + 16) != 8 || *(v7 + 8) != 1718773105)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "FreqSRCBox box needs 8 byte packets at input");
    AudioDSPGraph::ThrowException(1718449215, v21, off_1E8337868);
  }

  v8 = *(this + 12);
  if (*(this + 13) == v8)
  {
    v19 = (this + 40);
    if (*(this + 63) < 0)
    {
      v19 = *v19;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v26, v19, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v26, off_1E83378B0);
  }

  v9 = *(*(v8 + 16) + 120);
  if (*(v9 + 16) != 8 || *(v9 + 8) != 1718773105)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "FreqSRCBox box needs 8 byte packets at output");
    AudioDSPGraph::ThrowException(1718449215, v20, off_1E8337880);
  }

  AudioDSPGraph::Boxes::RingBufferBox::initialize(this);
  v10 = 8 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);

  AudioDSPGraph::SimpleABL::alloc((this + 880), v5, v10, 0);
}

void sub_1C924B39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 49) < 0)
  {
    operator delete(*(v37 - 72));
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  v2 = AudioDSPGraph::Boxes::FCBox::upstreamSampleRate(this);
  v3 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this) * v2;
  v4 = AudioDSPGraph::Boxes::FCBox::downstreamSampleRate(this);
  return v3 == AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this) * v4;
}

unsigned int *AudioDSPGraph::Boxes::FreqSRCBox::process(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  if (!AudioDSPGraph::Boxes::FreqSRCBox::isValidFreqSRCBoxConnection(this))
  {
    __assert_rtn("process", "SRCBox.cpp", 452, "isValidFreqSRCBoxConnection()");
  }

  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v39, v33, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v39, off_1E8337C60);
  }

  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v39, v34, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v39, off_1E8337C78);
  }

  v4 = *(*(*(v2 + 16) + 56) + 80);
  v5 = *v4;
  if (v5 != **(*(*(v3 + 16) + 56) + 80))
  {
    __assert_rtn("process", "SRCBox.cpp", 456, "inBuf->mNumberBuffers == outBuf->mNumberBuffers");
  }

  v6 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);
  v37 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
  v38 = v6;
  if (v6 <= v37)
  {
    v7 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);
    v9 = 0;
  }

  else
  {
    v7 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
    v8 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);
    v9 = 4 * (v8 - AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this));
  }

  v36 = (this + 880);
  if (v5)
  {
    v10 = (4 * v7);
    v11 = (v4 + 4);
    v12 = (*v36 + 16);
    while (1)
    {
      v13 = *v12;
      v14 = *v11;
      v15 = &v13[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this)];
      v16 = &v14[4 * AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this)];
      memcpy(v13, v14, v10);
      v17 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
      bzero(&v13[4 * v17], v9);
      memcpy(v15, v16, v10);
      v18 = AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this);
      bzero(&v15[4 * v18], v9);
      if (v38 > v37)
      {
        break;
      }

      v21 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);
      if (v21 < AudioDSPGraph::Boxes::FCBox::upstreamBlockSize(this))
      {
        v20 = *&v14[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this)];
        goto LABEL_14;
      }

LABEL_15:
      v11 += 2;
      v12 += 2;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    v19 = *v16;
    *&v13[4 * AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this)] = v19;
    v20 = 0;
LABEL_14:
    *v15 = v20;
    goto LABEL_15;
  }

LABEL_16:
  v22 = *(this + 9);
  if (*(this + 10) == v22)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v39, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v39, off_1E8337C60);
  }

  v23 = *(this + 12);
  v24 = *(this + 13);
  if (v23 != v24)
  {
    v25 = *(*(v22 + 16) + 56);
    v26 = *(v25 + 72);
    do
    {
      v27 = *(*(v23 + 16) + 56);
      v28 = *(v25 + 8);
      v29 = *(v25 + 24);
      v30 = *(v25 + 40);
      *(v27 + 56) = *(v25 + 56);
      *(v27 + 40) = v30;
      *(v27 + 24) = v29;
      *(v27 + 8) = v28;
      *(v27 + 72) = v26;
      v23 += 32;
    }

    while (v23 != v24);
  }

  v31 = AudioDSPGraph::Boxes::FCBox::downstreamBlockSize(this);

  return AudioDSPGraph::RingBuffer::write((this + 800), v31, v36);
}

void sub_1C924B810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

AudioDSPGraph::Boxes::FreqSRCBox *AudioDSPGraph::Boxes::FreqSRCBox::asOperativeFreqSRCBox(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  if ((*(*this + 680))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

double AudioDSPGraph::Boxes::FreqSRCBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.3052639e185;
  *a1 = xmmword_1C925F2C0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::FreqSRCBox::~FreqSRCBox(AudioDSPGraph::Boxes::FreqSRCBox *this)
{
  *this = &unk_1F48D2EE8;
  AudioDSPGraph::SimpleABL::free((this + 880));
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D2EE8;
  AudioDSPGraph::SimpleABL::free((this + 880));
  *this = &unk_1F48D31A8;
  AudioDSPGraph::SimpleABL::free((this + 800));
  AudioDSPGraph::SimpleABL::free((this + 800));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::SumBox::initialize(AudioDSPGraph::Boxes::SumBox *this)
{
  if (((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "SumBox has no inputs");
    AudioDSPGraph::ThrowException(1970168609, v20, off_1E83378C8);
  }

  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v15 = (this + 40);
    if (*(this + 63) < 0)
    {
      v15 = *v15;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v21, v15, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v21, off_1E8337C78);
  }

  v4 = *(*(v3 + 16) + 120);
  v5 = v4[2];
  if (v5 == 1819304813)
  {
    v6 = v4[3];
    if ((v6 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v5 != 1718773105 || v4[8] != 64)
    {
LABEL_29:
      std::string::basic_string[abi:ne200100]<0>(v19, "SumBox output format must be non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v19, off_1E83378E0);
    }

    v6 = v4[3];
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(this + 9);
  v8 = *(this + 10);
  if (v7 != v8)
  {
    v9 = (v8 - v7) & 0x1FFFFFFFE0;
    do
    {
      v10 = *(*(v7 + 16) + 120);
      v11 = v10[2];
      if (v11 == 1819304813)
      {
        v12 = v10[3];
        if ((v12 & 1) == 0 || v10[8] != 32)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11 != 1718773105 || v10[8] != 64)
        {
LABEL_26:
          std::string::basic_string[abi:ne200100]<0>(v18, "SumBox input format must be non-interleaved float");
          AudioDSPGraph::ThrowException(1718449215, v18, off_1E83378F8);
        }

        v12 = v10[3];
      }

      if ((v12 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      v13 = v10[7];
      v14 = v4[7];
      if (v13 != v14)
      {
        if (v9 != 32)
        {
          std::string::basic_string[abi:ne200100]<0>(v16, "SumBox channel mismatch");
          AudioDSPGraph::ThrowException(1718449215, v16, off_1E8337928);
        }

        if (v14 != 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v17, "SumBox output channel count must be mono or matched when input is single-bus");
          AudioDSPGraph::ThrowException(1718449215, v17, off_1E8337910);
        }
      }

      v7 += 32;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_1C924BC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 17) < 0)
  {
    operator delete(*(v30 - 40));
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::SumBox::process(AudioDSPGraph::Boxes::SumBox *this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v44, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v44, off_1E8337C78);
  }

  v4 = *(*(*(v3 + 16) + 56) + 80);
  v5 = *v4;
  v6 = *(this + 9);
  v7 = *(this + 10);
  v8 = v7 - v6;
  v9 = 4 * a2;
  if (((v7 - v6) & 0x1FFFFFFFE0) == 0)
  {
LABEL_30:
    if (v5)
    {
      v28 = (v4 + 4);
      do
      {
        v29 = *v28;
        *(v28 - 1) = v9;
        bzero(v29, v9);
        v28 += 2;
        --v5;
      }

      while (v5);
      v6 = *(v2 + 9);
      v7 = *(v2 + 10);
    }

    v30 = 16;
    goto LABEL_36;
  }

  v10 = 0;
  v11 = a2;
  v13 = v5 != 1 || ((v7 - v6) & 0x1FFFFFFFE0) != 32;
  v40 = v4;
  v42 = (v4 + 4);
  v43 = *v4;
  v14 = 1;
  do
  {
    if (v8 >> 5 <= v10)
    {
      v37 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v37 = *v37;
      }

      caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v44, v37, v8 >> 5, v10);
      AudioDSPGraph::ThrowException(1919837985, v44, off_1E8337C60);
    }

    v15 = *(*(v6 + 32 * v10 + 16) + 56);
    if ((*(v15 + 72) & 0x10) == 0)
    {
      v16 = *(v15 + 80);
      if (v14)
      {
        if (*v16)
        {
          v17 = 0;
          v18 = 0;
          v19 = 4;
          v20 = v42;
          do
          {
            v21 = *&v16[v19];
            v22 = *v20;
            *(v20 - 1) = v9;
            if (v18 == v17)
            {
              if (v21 != v22)
              {
                memcpy(v22, v21, v9);
              }
            }

            else
            {
              MEMORY[0x1CCA85330](v21, 1, v22, 1, v22, 1, v11);
            }

            ++v18;
            v17 += v13;
            v20 += 2 * v13;
            v19 += 4;
          }

          while (v18 < *v16);
          v14 = 0;
          v2 = this;
          goto LABEL_25;
        }
      }

      else if (v5)
      {
        v24 = (v16 + 4);
        v25 = v42;
        do
        {
          v26 = *v24;
          v24 += 2;
          v27 = *v25;
          *(v25 - 1) = v9;
          MEMORY[0x1CCA85330](v26, 1, v27, 1, v27, 1, v11);
          v25 += 2;
          --v5;
        }

        while (v5);
        v14 = 0;
LABEL_25:
        v5 = v43;
        goto LABEL_27;
      }

      v14 = 0;
    }

LABEL_27:
    ++v10;
    v6 = *(v2 + 9);
    v7 = *(v2 + 10);
    v8 = v7 - v6;
  }

  while (v10 < ((v7 - v6) >> 5));
  if (v14)
  {
    v4 = v40;
    goto LABEL_30;
  }

  v30 = 0;
LABEL_36:
  if (v7 == v6)
  {
    v39 = (v2 + 40);
    if (*(v2 + 63) < 0)
    {
      v39 = *v39;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v44, v39, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v44, off_1E8337C60);
  }

  v31 = *(v2 + 12);
  v32 = *(v2 + 13);
  if (v31 != v32)
  {
    v33 = *(*(v6 + 16) + 56);
    do
    {
      v34 = *(*(v31 + 16) + 56);
      result = *(v33 + 8);
      v35 = *(v33 + 24);
      v36 = *(v33 + 40);
      *(v34 + 56) = *(v33 + 56);
      *(v34 + 40) = v36;
      *(v34 + 24) = v35;
      *(v34 + 8) = result;
      *(v34 + 72) = v30;
      v31 += 32;
    }

    while (v31 != v32);
  }

  return result;
}

void sub_1C924BFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::SumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.49819016e248;
  *a1 = xmmword_1C925F270;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::SumBox::~SumBox(AudioDSPGraph::Boxes::SumBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 87) < 0)
      {
        operator delete(v2[8]);
      }

      MEMORY[0x1CCA84AD0](v2, 64);
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

uint64_t std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,void *>>>::operator()[abi:ne200100](uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

LABEL_5:

    JUMPOUT(0x1CCA84AD0);
  }

  if (a2)
  {
    goto LABEL_5;
  }

  return result;
}

void *non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 71, a2 + 5);
  if (result)
  {
    v5 = (result + 16);

    return AudioDSPGraph::Metrics::stop(v5, a3);
  }

  return result;
}

void *AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 72, a2 + 5);
  if (result)
  {
    v5 = (result + 16);

    return AudioDSPGraph::Metrics::stop(v5, a3);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (AudioDSPGraph::IR::BoxAlias::operator==(v11 + 8, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

double non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxWillProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 71, a2 + 5);
  if (v2)
  {
    v4 = (v2 + 16);

    *&result = AudioDSPGraph::Metrics::start(v4).u64[0];
  }

  return result;
}

double AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::boxWillProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Box *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::find<std::string>(this + 72, a2 + 5);
  if (v2)
  {
    v4 = (v2 + 16);

    *&result = AudioDSPGraph::Metrics::start(v4).u64[0];
  }

  return result;
}

void non-virtual thunk toAudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::~Implementation(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this)
{
  *(this - 1) = &unk_1F48D3750;
  *this = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 568);

  JUMPOUT(0x1CCA84AD0);
}

{
  *(this - 1) = &unk_1F48D3750;
  *this = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 568);
}

uint64_t AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::graphDidProcess(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this, const AudioDSPGraph::Graph *a2, double a3, double a4)
{
  v4 = 832;
  if (*(a2 + 920))
  {
    v4 = 880;
  }

  v5 = 836;
  if (*(a2 + 920))
  {
    v5 = 884;
  }

  LODWORD(a3) = *(a2 + v5);
  LODWORD(a4) = *(a2 + v4);
  *&v6 = *&a4;
  v7 = *&v6 / *&a3;
  LODWORD(v6) = *(a2 + 209);
  return AudioDSPGraph::Metrics::stop((this + 64), (v7 * v6));
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::~Implementation(AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation *this)
{
  *this = &unk_1F48D3750;
  *(this + 1) = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 576);

  JUMPOUT(0x1CCA84AD0);
}

{
  *this = &unk_1F48D3750;
  *(this + 1) = &unk_1F48D3790;
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Metrics>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Metrics>>>::~__hash_table(this + 576);
}

void std::__shared_ptr_emplace<AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F48D3718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA84AD0);
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::~ThreadCounterProfiler(AudioDSPGraph::Extras::ThreadCounterProfiler *this)
{
  v2 = *this;
  v3 = *(this + 3);
  v12[0] = *(this + 2);
  v12[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AudioDSPGraph::Graph::removeEventHandler(v2, v12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  for (i = *(*this + 32); i; i = *i)
  {
    v5 = i[2];
    v6 = *(this + 2);
    v7 = *(this + 3);
    if (v6)
    {
      v8 = v6 + 8;
    }

    else
    {
      v8 = 0;
    }

    v11[0] = v8;
    v11[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AudioDSPGraph::Box::removeEventHandler(v5, v11);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void AudioDSPGraph::Extras::ThreadCounterProfiler::Implementation::copyStatistics(AudioDSPGraph::Graph const&)const::{lambda(AudioDSPGraph::Metrics::Statistics const&)#1}::operator()(CFDictionaryRef *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v12, "WNumBlocks", a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v13, "WNumFrames", a2 + 1);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v14, "WCPUTime", a2 + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v15, "WCPUCycleCount", a2 + 3);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v16, "WCPUInstrCount", a2 + 4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v17, "WWallClockTime", a2 + 5);
  applesauce::CF::TypeRef::TypeRef(&v18, "WPeakCPU");
  valuePtr = a2[6];
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v20, "WPeakCPUBlockNum", a2 + 7);
  LODWORD(valuePtr) = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v21, "WAvgMemDelta", &valuePtr);
  v9 = 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(&v22, "CurrMem", &v9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v23, "TNumBlocks", a2 + 8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v24, "TNumFrames", a2 + 9);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v25, "TCPUTime", a2 + 10);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v26, "TCPUCycleCount", a2 + 11);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v27, "TCPUInstrCount", a2 + 12);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(v28, "TWallClockTime", a2 + 13);
  v10[0] = v12;
  v10[1] = 16;
  v4 = 0;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v10);
  do
  {
    v5 = *&v28[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v28[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -256);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1C924C938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v15 + 104));
  applesauce::CF::TypeRef::~TypeRef(v14);
  while (v14 != &a14)
  {
    v14 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,char const*,applesauce::CF::DictionaryRef,void,0>(applesauce::CF::TypeRef *a1, const char *a2, const void **a3)
{
  result = applesauce::CF::TypeRef::TypeRef(a1, a2);
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  *(a1 + 1) = v6;
  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !v4[1])
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
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
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v4[1];
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
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
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 2;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
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

void sub_1C924CCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
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

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::DictionaryRef,void,0>(void *a1, const UInt8 *a2, const void **a3)
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

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_1C924D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(applesauce::CF::TypeRef *a1, const char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1C924D21C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(applesauce::CF::TypeRef *a1, const char *a2, int *a3)
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

void sub_1C924D2E8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t *AudioDSPGraph::Boxes::TimeFreqBox::uninitialize(uint64_t **this)
{
  AudioDSPGraph::Box::uninitialize(this);
  result = this[97];
  v3 = this[96];
  while (result != v3)
  {
    result = std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](result - 1);
  }

  this[97] = v3;
  return result;
}

void *AudioDSPGraph::Boxes::TimeFreqBox::initialize(AudioDSPGraph::Boxes::TimeFreqBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v12 = (this + 40);
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v16, v12, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C60);
  }

  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v16, v13, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v16, off_1E8337C78);
  }

  v4 = *(*(v2 + 16) + 120);
  v5 = *(*(v3 + 16) + 120);
  v6 = *(v4 + 28);
  if (v6 != *(v5 + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "channel mismatch.");
    AudioDSPGraph::ThrowException(1718444833, v15, off_1E8337940);
  }

  v7 = *(v4 + 8);
  if (v7 != 1718773105)
  {
    if (v7 == 1819304813 && *(v5 + 8) == 1718773105)
    {
      v8 = 0;
      goto LABEL_10;
    }

LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(v14, "formats are not between freq and time domains.");
    AudioDSPGraph::ThrowException(1718444833, v14, off_1E8337958);
  }

  if (*(v5 + 8) != 1819304813)
  {
    goto LABEL_15;
  }

  v8 = 1;
LABEL_10:
  *(this + 198) = v8;
  result = std::vector<std::unique_ptr<TimeFreqConverter>>::reserve(this + 96, v6);
  if (v6)
  {
    v10 = *(this + 3);
    if (*(v10 + 268) == 1)
    {
      v11 = *(v10 + 272);
    }

    operator new();
  }

  return result;
}

void sub_1C924D660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::TimeFreqBox::process(AudioDSPGraph::Boxes::TimeFreqBox *this, unsigned int a2)
{
  if (*(*(this + 3) + 268) != a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "inNumFrames != blockSize.");
    AudioDSPGraph::ThrowException(1718188065, v35, off_1E83379A0);
  }

  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = (v4 - v3) >> 5;
  if (v4 == v3)
  {
    v29 = (this + 40);
    if (*(this + 63) < 0)
    {
      v29 = *v29;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v36, v29, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C60);
  }

  v6 = *(this + 12);
  if (*(this + 13) == v6)
  {
    v30 = (this + 40);
    if (*(this + 63) < 0)
    {
      v30 = *v30;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v36, v30, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C78);
  }

  v7 = *(*(*(v3 + 16) + 56) + 80);
  v8 = *v7;
  if (v8 != (*(this + 97) - *(this + 96)) >> 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "buffer list number of buffers doesn't match format channel count.");
    AudioDSPGraph::ThrowException(1667788321, v34, off_1E83379B8);
  }

  if (v8)
  {
    v9 = 0;
    v10 = *(v6 + 16);
    v11 = *(*(v10 + 120) + 24) * a2;
    v12 = a2;
    v13 = (v7 + 4);
    v14 = (*(*(v10 + 56) + 80) + 16);
    do
    {
      *(v14 - 1) = v11;
      v15 = *v13;
      v16 = *v14;
      if (*(this + 198))
      {
        v17 = TimeFreqConverter::Synthesize(*(*(this + 96) + 8 * v9), v15, v15 + v12, v16);
        if (v17)
        {
          v27 = v17;
          std::string::basic_string[abi:ne200100]<0>(v32, "TimeFreqConverter_Synthesize");
          AudioDSPGraph::ThrowException(v27, v32, off_1E83379E8);
        }
      }

      else
      {
        v36.realp = *v14;
        v36.imagp = &v16[v12];
        v19 = TimeFreqConverter::Analyze(*(*(this + 96) + 8 * v9), v15, &v36);
        if (v19)
        {
          v28 = v19;
          std::string::basic_string[abi:ne200100]<0>(v33, "TimeFreqConverter_Analyze");
          AudioDSPGraph::ThrowException(v28, v33, off_1E83379D0);
        }
      }

      ++v9;
      v13 += 2;
      v14 += 2;
    }

    while (v9 < *v7);
    v3 = *(this + 9);
    v4 = *(this + 10);
    v5 = (v4 - v3) >> 5;
  }

  if (v4 == v3)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v36, v31, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v36, off_1E8337C60);
  }

  v20 = *(this + 12);
  v21 = *(this + 13);
  if (v20 != v21)
  {
    v22 = *(*(v3 + 16) + 56);
    v23 = *(v22 + 72);
    do
    {
      v24 = *(*(v20 + 16) + 56);
      result = *(v22 + 8);
      v25 = *(v22 + 24);
      v26 = *(v22 + 40);
      *(v24 + 56) = *(v22 + 56);
      *(v24 + 40) = v26;
      *(v24 + 24) = v25;
      *(v24 + 8) = result;
      *(v24 + 72) = v23;
      v20 += 32;
    }

    while (v20 != v21);
  }

  return result;
}

void sub_1C924D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::TimeFreqBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.73591209e252;
  *a1 = xmmword_1C925F2D0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::TimeFreqBox::selfLatencyInTicks(AudioDSPGraph::Boxes::TimeFreqBox *this)
{
  if ((*(*(this + 2) + 921) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "not configured");
    AudioDSPGraph::ThrowException(1667655457, v10, off_1E8337970);
  }

  v1 = *(this + 9);
  if (*(this + 10) == v1)
  {
    v6 = (this + 40);
    if (*(this + 63) < 0)
    {
      v6 = *v6;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v11, v6, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v11, off_1E8337C60);
  }

  v2 = *(*(*(v1 + 16) + 120) + 8);
  if (v2 != 1718773105)
  {
    if (v2 == 1819304813)
    {
      v3 = *(this + 12);
      if (*(this + 13) == v3)
      {
        v7 = (this + 40);
        if (*(this + 63) < 0)
        {
          v7 = *v7;
        }

        caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v11, v7, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, v11, off_1E8337C78);
      }

      if (*(*(*(v3 + 16) + 120) + 8) == 1718773105)
      {
        return 0;
      }
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(v9, "formats are not between freq and time domains.");
    AudioDSPGraph::ThrowException(1718444833, v9, off_1E8337988);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v8 = (this + 40);
    if (*(this + 63) < 0)
    {
      v8 = *v8;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v11, v8, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v11, off_1E8337C78);
  }

  if (*(*(*(v5 + 16) + 120) + 8) != 1819304813)
  {
    goto LABEL_12;
  }

  return *(*(this + 3) + 296);
}

void sub_1C924DC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::TimeFreqBox::~TimeFreqBox(AudioDSPGraph::Boxes::TimeFreqBox *this)
{
  *this = &unk_1F48D37C0;
  v2 = (this + 768);
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D37C0;
  v2 = (this + 768);
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);

  AudioDSPGraph::Box::~Box(this);
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64x2_t CreateMagicalWindow(float *a1, int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v43 = vdupq_lane_s32(*result.i8, 0);
    v44 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_1C925F0F0;
    result = xmmword_1C925F100;
    v5 = xmmword_1C925F420;
    v6 = a1 + 2;
    __asm { FMOV            V1.4S, #4.0 }

    v42 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v53 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v40 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v41 = _Q4;
    __asm { FMOV            V1.2D, #-0.5 }

    v38 = _Q1;
    v39 = vdupq_n_s64(0x3FF921FB54442D18uLL);
    __asm { FMOV            V1.2D, #0.5 }

    v37 = _Q1;
    do
    {
      v51 = result;
      v52 = v4;
      v16 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v44, result), vcgeq_u64(v44, v4)));
      v50 = v5;
      v17 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v42), v43);
      v18 = vmovn_s32(vcgtq_f32(v53, v17));
      v19 = vbic_s8(v16, v18);
      v20.i64[0] = 0x4000000040000000;
      v20.i64[1] = 0x4000000040000000;
      v21 = vmovn_s32(vcgtq_f32(v20, v17));
      v22 = vbic_s8(v19, v21);
      v23 = vmovn_s32(vcgtq_f32(v41, v17));
      v24 = vbic_s8(v22, v23);
      v25 = vsubq_f32(v20, v17);
      v26 = vand_s8(v22, v23);
      v27.i64[0] = 0xC0000000C0000000;
      v27.i64[1] = 0xC0000000C0000000;
      v28 = vand_s8(v19, v21);
      v49 = vorr_s8(vorr_s8(v24, vorr_s8(vand_s8(v16, v18), v28)), v26);
      v29 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v25, v20), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), vaddq_f32(v17, v27), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v28), 0x1FuLL)), v25, v17)));
      v48 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v24, vorr_s8(v26, v28))), 0x1FuLL));
      v54 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vcvt_hight_f64_f32(v29), v40))), v39);
      __x = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v29.f32), v40))), v39);
      v46 = cos(__x.f64[1]);
      v30.f64[0] = cos(__x.f64[0]);
      v30.f64[1] = v46;
      v47 = v30;
      __x.f64[0] = cos(v54.f64[1]);
      v31.f64[0] = cos(v54.f64[0]);
      v31.f64[1] = __x.f64[0];
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v37, v38, v47)), vmlaq_f64(v37, v38, v31));
      v33 = vmulq_f32(v32, v32);
      v34 = vsqrtq_f32(vbslq_s8(v48, v33, vsubq_f32(v53, v33)));
      if (v49.i8[0])
      {
        *(v6 - 2) = v34.f32[0];
      }

      if (v49.i8[2])
      {
        *(v6 - 1) = v34.f32[1];
      }

      if (v49.i8[4])
      {
        *v6 = v34.f32[2];
      }

      if (v49.i8[6])
      {
        v6[1] = v34.f32[3];
      }

      v35 = vdupq_n_s64(4uLL);
      v4 = vaddq_s64(v52, v35);
      result = vaddq_s64(v51, v35);
      v36.i64[0] = 0x400000004;
      v36.i64[1] = 0x400000004;
      v5 = vaddq_s32(v50, v36);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void TimeFreqConverter::TimeFreqConverter(TimeFreqConverter *this, int a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  *(this + 72) = 0u;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 120) = 0u;
  *(this + 168) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 23) = 0;
  v3 = 2 * a3;
  if (2 * a3)
  {
    *this = 0;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a3;
    *(this + 4) = v3;
    *(this + 5) = v3;
    *(this + 6) = 1.0 / v3;
    *(this + 7) = a3 & 0x7FFFFFFF;
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v6 = 4;
  strcpy(v5, "....");
  caulk::make_string("failed to setup time-frequency converter with error %s", &v7, v5);
  std::runtime_error::runtime_error(exception, &v7);
}

void sub_1C924E728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C924E788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (v35)
  {
    __cxa_free_exception(v34);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v31 + 176) = v37;
    operator delete(v37);
  }

  v38 = *(v32 + 72);
  if (v38)
  {
    *(v31 + 152) = v38;
    operator delete(v38);
  }

  v39 = *a12;
  if (*a12)
  {
    *(v31 + 128) = v39;
    operator delete(v39);
  }

  v40 = *(v32 + 24);
  if (v40)
  {
    *(v31 + 104) = v40;
    operator delete(v40);
  }

  v41 = *v32;
  if (*v32)
  {
    *(v31 + 80) = v41;
    operator delete(v41);
  }

  if (*(v31 + 48) == 1)
  {
    v42 = *(v31 + 40);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C924E834(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t TimeFreqConverter::Analyze(TimeFreqConverter *this, const float *a2, DSPSplitComplex *a3)
{
  if ((*(this + 1) | 2) != 2)
  {
    return 1937006964;
  }

  v10 = v3;
  v11 = v4;
  if (*this)
  {
    return 4294967292;
  }

  memcpy(*(this + 9), (*(this + 9) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  memcpy((*(this + 9) + 4 * (*(this + 4) - *(this + 3))), a2, 4 * *(this + 3));
  MEMORY[0x1CCA85390](*(this + 18), 1, *(this + 9), 1, *(this + 12), 1, *(this + 4));
  MEMORY[0x1CCA853E0](*(this + 12), 1, this + 24, *(this + 12), 1, *(this + 4));
  vDSP_ctoz(*(this + 12), 2, a3, 1, **(this + 4) >> 1);
  vDSP_DFT_Execute(*(*(this + 4) + 8), a3->realp, a3->imagp, a3->realp, a3->imagp);
  v9 = 1056964608;
  MEMORY[0x1CCA853E0](a3->realp, 1, &v9, a3->realp, 1, **(this + 4) >> 1);
  MEMORY[0x1CCA853E0](a3->imagp, 1, &v9, a3->imagp, 1, **(this + 4) >> 1);
  return 0;
}

uint64_t TimeFreqConverter::Synthesize(TimeFreqConverter *this, const DSPSplitComplex *a2, float *a3, void *a4)
{
  if ((*(this + 1) - 1) > 1)
  {
    return 1937006964;
  }

  if (*this)
  {
    return 4294967292;
  }

  MultiRadixRealFFT::RealOutOfPlaceInverseTransform((this + 32), a2, a3, *(this + 12));
  MEMORY[0x1CCA85390](*(this + 12), 1, *(this + 21), 1, *(this + 12), 1, *(this + 4));
  MEMORY[0x1CCA85330](*(this + 12), 1, *(this + 15), 1, *(this + 15), 1, *(this + 4));
  memcpy(a4, *(this + 15), 4 * *(this + 3));
  memmove(*(this + 15), (*(this + 15) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  bzero((*(this + 15) + 4 * (*(this + 4) - *(this + 3))), 4 * *(this + 3));
  return 0;
}

BOOL AudioDSPGraph::MinimalSafetyCheck(AudioDSPGraph *this, const AudioStreamBasicDescription *a2)
{
  result = 0;
  if (*this >= 0.0 && *this < 3000000.0)
  {
    v4 = *(this + 4);
    if (v4 >= 0xF4240)
    {
      return 0;
    }

    v5 = *(this + 5);
    if (v5 >= 0xF4240)
    {
      return 0;
    }

    v6 = *(this + 6);
    if (v6 >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if ((*(this + 7) - 1) > 0x3FF || *(this + 8) > 0x400u)
    {
      return result;
    }

    v7 = *(this + 2);
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == 1 && v4 == v6;
    return v7 != 1819304813 || v9;
  }

  return result;
}

void AudioDSPGraph::printi(void *a1, unsigned int a2, char *__s)
{
  v4 = a2;
  if (a2 >= 0x40)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "                                                                ", 64);
      v4 -= 64;
    }

    while (v4 > 0x3F);
  }

  if (v4)
  {
    v6 = &asc_1C927C13D[-v4];
    v7 = strlen(v6 + 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, (v6 + 64), v7);
  }

  strlen(__s);
  operator new[]();
}

void *AudioDSPGraph::print4cc(void *a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  v17 = *MEMORY[0x1E69E9840];
  *__s = 0;
  v16 = 0;
  v14 = bswap32(a2);
  v5 = MEMORY[0x1E69E9830];
  do
  {
    v6 = __s[v4 - 4];
    if ((v6 & 0x80000000) != 0)
    {
      v7 = __maskrune(__s[v4 - 4], 0x40000uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x40000;
    }

    if (v6 == 92 || v7 == 0)
    {
      v9 = snprintf(&__s[v3], 16 - v3, "\\x%02x", v6);
      v3 += v9 & ~(v9 >> 31);
    }

    else
    {
      __s[v3++] = v6;
    }

    if (v4 > 2)
    {
      break;
    }

    ++v4;
  }

  while (v3 < 16);
  v10 = 15;
  if (v3 < 16)
  {
    v10 = v3;
  }

  __s[v10] = 0;
  v11 = strlen(__s);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v11);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *AudioDSPGraph::printACD(void *a1, unsigned int *a2, int a3)
{
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " (", 2);
  AudioDSPGraph::print4cc(v6, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  AudioDSPGraph::print4cc(v7, a2[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  AudioDSPGraph::print4cc(v8, a2[2]);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ") ", 3);
  if (a3)
  {
    v10 = 10;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v10, 1);
  }

  return result;
}

void AudioDSPGraph::asDecompileString(std::string *this, char *a2)
{
  LODWORD(v4) = a2[23];
  if (a2[23] < 0)
  {
    if (!*(a2 + 1))
    {
      v4 = 0;
      *&this->__r_.__value_.__l.__data_ = 0uLL;
      this->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_31;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (!a2[23])
    {
      *&this->__r_.__value_.__l.__data_ = 0uLL;
      this->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
      v4 = v4;
LABEL_31:
      std::string::reserve(this, v4 + 2);
      std::string::push_back(this, 34);
      v17 = a2[23];
      if (v17 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = a2[23];
      }

      else
      {
        v19 = *(a2 + 1);
      }

      std::string::append(this, v18, v19);
      std::string::push_back(this, 34);
      return;
    }
  }

  v6 = *v5;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = __maskrune(*v5, 0x500uLL);
    LODWORD(v4) = a2[23];
  }

  else
  {
    v7 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x500;
  }

  if (v6 != 95 && !v7)
  {
LABEL_11:
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    if ((v4 & 0x80) != 0)
    {
      v4 = *(a2 + 1);
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v8 = (v4 & 0x80u) != 0;
  v9 = *(a2 + 1);
  v10 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v10 = *(a2 + 1);
  }

  if (v10 >= 2)
  {
    v11 = 1;
    v12 = MEMORY[0x1E69E9830];
    do
    {
      v13 = *a2;
      if (!v8)
      {
        v13 = a2;
      }

      v14 = v13[v11];
      if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune(v13[v11], 0x500uLL))
        {
LABEL_23:
          v15 = memchr("_-+=|./:!@#$%^&*<>?~", v14, 0x15uLL);
          LODWORD(v4) = a2[23];
          if (!v15)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      else if ((*(v12 + 4 * v14 + 60) & 0x500) == 0)
      {
        goto LABEL_23;
      }

      LODWORD(v4) = a2[23];
LABEL_24:
      ++v11;
      v8 = (v4 & 0x80u) != 0;
      v9 = *(a2 + 1);
      v16 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v16 = *(a2 + 1);
      }
    }

    while (v11 < v16);
  }

  if ((v4 & 0x80) != 0)
  {
    v20 = *a2;

    std::string::__init_copy_ctor_external(this, v20, v9);
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }
}

void sub_1C924F084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::SimpleABL::alloc(AudioDSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3, int a4)
{
  AudioDSPGraph::SimpleABL::free(this);
  if (a2 && a3)
  {
    *(this + 8) = 1;
    if (a4)
    {
      v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
      *this = v8;
      if (!v8)
      {
        std::string::basic_string[abi:ne200100]<0>(v17, "AudioBufferList allocation failed");
        AudioDSPGraph::ThrowException(-108, v17, off_1E8337A00);
      }

      *v8 = 1;
      v8[2] = a2;
      v8[3] = a3;
      v9 = malloc_type_calloc(1uLL, a3, 0x6D00FF8EuLL);
      *(*this + 16) = v9;
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(v16, "AudioBufferList data allocation failed");
        AudioDSPGraph::ThrowException(-108, v16, off_1E8337A18);
      }
    }

    else
    {
      v10 = malloc_type_calloc(1uLL, 16 * (a2 - 1) + 24, 0x10800404ACF7207uLL);
      *this = v10;
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(v15, "AudioBufferList allocation failed");
        AudioDSPGraph::ThrowException(-108, v15, off_1E8337A30);
      }

      v11 = 0;
      *v10 = a2;
      do
      {
        v12 = &v10[v11];
        v12[2] = 1;
        v12[3] = a3;
        v13 = malloc_type_calloc(1uLL, a3, 0x5395335uLL);
        v10 = *this;
        *(*this + v11 * 4 + 16) = v13;
        if (!v13)
        {
          std::string::basic_string[abi:ne200100]<0>(v14, "AudioBufferList data allocation failed");
          AudioDSPGraph::ThrowException(-108, v14, off_1E8337A48);
        }

        v11 += 4;
      }

      while (4 * a2 != v11);
    }
  }
}

void sub_1C924F258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **AudioDSPGraph::SimpleABL::copy(unsigned int **this, AudioDSPGraph::SimpleABL *a2)
{
  v2 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "null internal ABL");
    AudioDSPGraph::ThrowException(1768843553, v15, off_1E8337A78);
  }

  if (!a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "null destination ABL");
    AudioDSPGraph::ThrowException(1768843553, v14, off_1E8337A90);
  }

  v4 = *v2;
  if (v4 != *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "mABL->mNumberBuffers != toABL->mNumberBuffers");
    AudioDSPGraph::ThrowException(1718444833, v13, off_1E8337AA8);
  }

  if (*v2)
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v2[v6 + 3];
      v9 = a2 + v6 * 4;
      v10 = *(a2 + v6 * 4 + 12);
      if (v8 > v10)
      {
        caulk::make_string("mABL->mBuffers[%u].mDataByteSize (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", v12, v7, v8, v7, v10);
        AudioDSPGraph::ThrowException(1718775073, v12, off_1E8337AC0);
      }

      v11 = *&v2[v6 + 4];
      this = *(v9 + 2);
      if (v11 != this)
      {
        this = memcpy(this, v11, v8);
        v2 = *v5;
        v4 = **v5;
      }

      *(v9 + 3) = v2[v6 + 3];
      ++v7;
      v6 += 4;
    }

    while (v7 < v4);
  }

  return this;
}

void sub_1C924F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::convert_to<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef>,0>(uint64_t a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  Count = CFDictionaryGetCount(a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::vector<void const*>::vector[abi:ne200100](keys, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v7 = keys[0][i];
      if (v7)
      {
        CFRetain(keys[0][i]);
        v21 = v7;
        v8 = CFGetTypeID(v7);
        if (v8 != CFStringGetTypeID())
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v19, "Could not construct");
        }
      }

      else
      {
        v21 = 0;
      }

      v9 = values[0][i];
      if (v9)
      {
        CFRetain(values[0][i]);
      }

      cf[0] = v21;
      cf[1] = v9;
      v10 = std::hash<applesauce::CF::StringRef>::operator()(v21);
      v11 = v10;
      v12 = *(a1 + 8);
      if (!*&v12)
      {
        goto LABEL_26;
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v15 = v10;
        if (v10 >= *&v12)
        {
          v15 = v10 % *&v12;
        }
      }

      else
      {
        v15 = (*&v12 - 1) & v10;
      }

      v16 = *(*a1 + 8 * v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v11)
        {
          break;
        }

        if (v14 > 1)
        {
          if (v18 >= *&v12)
          {
            v18 %= *&v12;
          }
        }

        else
        {
          v18 &= *&v12 - 1;
        }

        if (v18 != v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v17[2], cf))
      {
        goto LABEL_25;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(void *a1, const void **a2)
{
  v4 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], a2) == kCFCompareEqualTo)
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(void *result, CFTypeRef cf, const void **a3)
{
  v5 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v5 = cf;
  v6 = *a3;
  if (v6)
  {
    result = CFRetain(v6);
  }

  v5[1] = v6;
  return result;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
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
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>((16 * v3), *a2, a3);
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

uint64_t applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = v2[2];
      if (v5)
      {
        CFRelease(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a1 + 40);
    if (!v61)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v123);
      return v61;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    std::deque<std::__state<char>>::push_back(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v118 = a4;
    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v122 = 0;
    v68 = 0;
    v120 = 0;
    v69 = a3 - a2;
    v70 = *&v123[40];
    v71 = *&v123[8];
    v72 = *&v123[40] + *&v123[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v123[8] + 8 * v73) + 32 * v74 + 80) = v61;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v123[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v123[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v76 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v76 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if (v122)
            {
              v93 = v94;
            }

            if (v93 == v69)
            {
              v95 = *&v123[8];
              v96 = *&v123[16];
              if (*&v123[16] == *&v123[8])
              {
                v96 = *&v123[8];
              }

              else
              {
                v97 = (((*&v123[32] >> 1) * v77) >> 64) >> 4;
                v98 = (*&v123[8] + 8 * v97);
                v99 = (*v98 - 4032 * v97 + 96 * *&v123[32]);
                v100 = v77;
                v101 = ((((*&v123[40] + *&v123[32]) >> 1) * v77) >> 64) >> 4;
                v102 = *(*&v123[8] + 8 * v101) - 4032 * v101 + 96 * (*&v123[40] + *&v123[32]);
                if (v99 != v102)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v99);
                    v99 += 12;
                    if ((v99 - *v98) == 4032)
                    {
                      v103 = v98[1];
                      ++v98;
                      v99 = v103;
                    }
                  }

                  while (v99 != v102);
                  v95 = *&v123[8];
                  v96 = *&v123[16];
                }

                v76 = a5;
                v77 = v100;
              }

              *&v123[40] = 0;
              v106 = (v96 - v95) >> 3;
              if (v106 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (*&v123[8] + 8);
                  *&v123[8] = v95;
                  v106 = (*&v123[16] - v95) >> 3;
                }

                while (v106 > 2);
              }

              if (v106 == 1)
              {
                v107 = 21;
LABEL_172:
                *&v123[32] = v107;
              }

              else if (v106 == 2)
              {
                v107 = 42;
                goto LABEL_172;
              }

              v122 = 1;
              v120 = a3 - a2;
              break;
            }

            v120 = v93;
            std::deque<std::__state<char>>::pop_back(v123);
            v122 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v123[32];
            v86 = *&v123[8];
            v87 = *&v123[16];
            if (!*&v123[32])
            {
              v88 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
              if (*&v123[16] == *&v123[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v123[40]) < 0x2A)
              {
                if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
                {
                  if (*&v123[8] != *v123)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v123[24] == *v123)
                {
                  v108 = 1;
                }

                else
                {
                  v108 = (*&v123[24] - *v123) >> 2;
                }

                *&v127[32] = v123;
                std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v108);
              }

              *&v123[32] = 42;
              *v127 = *(*&v123[16] - 8);
              *&v123[16] -= 8;
              std::__split_buffer<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *,std::allocator<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *>>::emplace_front<std::unique_ptr<AudioDSPGraph::Language::V1::Macro> *&>(v123, v127);
              v85 = *&v123[32];
              v86 = *&v123[8];
              v87 = *&v123[16];
            }

            v109 = (((v85 >> 1) * v77) >> 64) >> 4;
            v110 = (v86 + 8 * v109);
            v111 = *v110 - 4032 * v109 + 96 * v85;
            if (v87 == v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = v111;
            }

            if (v112 == *v110)
            {
              v112 = *(v110 - 1) + 4032;
            }

            v113 = *(v81 + 16);
            *(v112 - 96) = *v81;
            *(v112 - 80) = v113;
            *(v112 - 56) = 0;
            *(v112 - 48) = 0;
            *(v112 - 64) = 0;
            *(v112 - 64) = *(v81 + 32);
            *(v112 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v112 - 40) = 0;
            *(v112 - 32) = 0;
            *(v112 - 24) = 0;
            *(v112 - 40) = *(v81 + 56);
            *(v112 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v114 = *v83;
            *(v112 - 11) = *(v81 + 85);
            *(v112 - 16) = v114;
            *&v123[32] = vaddq_s64(*&v123[32], xmmword_1C925F440);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v104 = *(v81 + 16);
            *v127 = *v81;
            *&v127[16] = v104;
            v128 = 0uLL;
            *&v127[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v129, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v129, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v105 = *v83;
            *(&v129[3] + 5) = *(v81 + 85);
            v129[3] = v105;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            std::deque<std::__state<char>>::push_back(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v123);
        }
      }

LABEL_182:
      v70 = *&v123[40];
      if (!*&v123[40])
      {
        if (v122)
        {
          v115 = *v118;
          *v115 = a2;
          *(v115 + 8) = &a2[v120];
          v61 = 1;
          *(v115 + 16) = 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_94:
    v61 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  *__p = 0uLL;
  memset(v125, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v117 = a4;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v131 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v119 = a3;
  v121 = a2;
  v17 = a3 - a2;
  v18 = v131;
  *(v131 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v123 = *v22;
          *&v123[16] = v36;
          memset(&v123[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v123[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v125[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v125[1] + 5) = *(v18 - 11);
          v125[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v125[1] + 24))(v125[1], 0, v123);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_188;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v121 || (a5 & 0x1000) != 0 && v24 != v119)
      {
LABEL_40:
        v35 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v127 = *v22;
        *&v127[16] = v26;
        if (v127 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v128 + 1);
          v31 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < (v28 - v27))
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v30 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v128;
          if (v128 - *&v127[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v128 != *&v127[32])
            {
              v39 = (v27 + v128 - *&v127[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v128 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v129[2];
          v45 = v129[0];
          if ((v129[2] - v129[0]) < (v42 - v41))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v44 = 0;
              memset(v129, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v48 = v129[1];
          if ((v129[1] - v129[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v129[1] != v129[0])
            {
              v49 = &v41[v129[1] - v129[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v129[1] = v45;
        }

        v50 = *v21;
        *(&v129[3] + 5) = *(v21 + 5);
        v129[3] = v50;
        v14 = v25;
      }

      v51 = v131;
      if (v14 == v17)
      {
        v52 = v130;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v131 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v131;
  }

  while (v130 != v131);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  v55 = *v117;
  *v55 = v121;
  *(v55 + 8) = &v121[v14];
  *(v55 + 16) = 1;
  if (v128 != *&v127[32])
  {
    v56 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
    v57 = (*&v127[32] + 16);
    v58 = 1;
    do
    {
      v59 = v55 + 24 * v58;
      *v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 24;
      *(v59 + 16) = v60;
      v19 = v56 > v58++;
    }

    while (v19);
  }

  v61 = 1;
LABEL_95:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v61;
}

void sub_1C9251598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1C9251BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9252244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C92522B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 16);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<std::string *>::emplace_back<std::string *&>(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_1C9252734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1C9252AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1CCA848F0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void sub_1C9252F78(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 14);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F48D3E38;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 15);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v19 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v19 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1CCA84610](exception, 7);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1CCA84AE0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_219;
    }

    j = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (j == a3)
    {
      goto LABEL_219;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *j == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++j;
    }

    if (j == a3)
    {
      v8 = j;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_219:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = j;
      v10 = j;
      if (j == a3)
      {
        goto LABEL_129;
      }

      v11 = *j;
      v10 = j;
      if (v11 == 93)
      {
        goto LABEL_129;
      }

      v12 = 0;
      v13 = (j + 1);
      __p[0] = 0;
      __p[1] = 0;
      v72 = 0;
      v14 = 0;
      v10 = v8;
      if (v8 + 1 == a3 || v11 != 91)
      {
        goto LABEL_46;
      }

      v15 = *v13;
      switch(v15)
      {
        case '.':
          v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, __p);
          v14 = HIBYTE(v72);
          v12 = __p[1];
          goto LABEL_46;
        case ':':
          LOWORD(__src[0]) = 23866;
          v20 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v20 == a3)
          {
LABEL_220:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
          }

          v17 = v20;
          v21 = *(a1 + 24);
          std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v8 + 2, v20, v20 - (v8 + 2));
          v22 = HIBYTE(v78);
          if (v78 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v78 < 0)
          {
            v22 = *(&__dst + 1);
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, p_dst + v22);
          if (v78 >= 0)
          {
            v24 = &__dst;
          }

          else
          {
            v24 = __dst;
          }

          classname = std::__get_classname(v24, v21 & 1);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(__dst);
          }

          if (!classname)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          v26 = 0;
          *(v7 + 160) |= classname;
          break;
        case '=':
          LOWORD(v69[0]) = 23869;
          v16 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, v69, v69 + 2);
          if (v16 == a3)
          {
            goto LABEL_220;
          }

          v17 = v16;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__src, a1, v8 + 2, v16);
          v18 = SHIBYTE(v76);
          if ((SHIBYTE(v76) & 0x8000000000000000) != 0)
          {
            v18 = __src[1];
            if (!__src[1])
            {
LABEL_221:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            v19 = __src[0];
          }

          else
          {
            if (!HIBYTE(v76))
            {
              goto LABEL_221;
            }

            v19 = __src;
          }

          std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v19, v19 + v18, v18);
          (*(**(a1 + 16) + 32))(__s);
          v30 = HIBYTE(v74);
          if (v74 < 0)
          {
            v30 = __s[1];
          }

          if (v30 != 1)
          {
            if (v30 == 12)
            {
              v31 = __s;
              if (v74 < 0)
              {
                v31 = __s[0];
              }

              *(v31 + 11) = *(v31 + 3);
            }

            else if (SHIBYTE(v74) < 0)
            {
              *__s[0] = 0;
              __s[1] = 0;
            }

            else
            {
              LOBYTE(__s[0]) = 0;
              HIBYTE(v74) = 0;
            }
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(__dst);
          }

          v36 = HIBYTE(v74);
          if (v74 < 0)
          {
            v36 = __s[1];
          }

          if (v36)
          {
            v37 = *(v7 + 144);
            if (v37 >= *(v7 + 152))
            {
              v41 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v7 + 136, __s);
            }

            else
            {
              if (SHIBYTE(v74) < 0)
              {
                std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
              }

              else
              {
                v38 = *__s;
                *(v37 + 16) = v74;
                *v37 = v38;
              }

              v41 = (v37 + 24);
              *(v7 + 144) = v37 + 24;
            }

            *(v7 + 144) = v41;
          }

          else
          {
            v39 = HIBYTE(v76);
            if (v76 < 0)
            {
              v39 = __src[1];
            }

            if (v39 == 2)
            {
              v42 = __src;
              if (v76 < 0)
              {
                v42 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v42, *(v42 + 1));
            }

            else
            {
              if (v39 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              v40 = __src;
              if (v76 < 0)
              {
                v40 = __src[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v40);
            }
          }

          if (SHIBYTE(v74) < 0)
          {
            operator delete(__s[0]);
          }

          if (SHIBYTE(v76) < 0)
          {
            operator delete(__src[0]);
          }

          v26 = 0;
          break;
        default:
          v12 = 0;
          v14 = 0;
          v10 = v8;
LABEL_46:
          j = *(a1 + 24) & 0x1F0;
          if (v14 >= 0)
          {
            v12 = v14;
          }

          if (!v12)
          {
            if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
            {
              v27 = *v10;
              if (v27 == 92)
              {
                if ((*(a1 + 24) & 0x1F0) != 0)
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, __p);
                }

                else
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, __p, v7);
                }

                v10 = v28;
                goto LABEL_71;
              }
            }

            else
            {
              LOBYTE(v27) = *v10;
            }

            if (v14 < 0)
            {
              v29 = __p[0];
              __p[1] = 1;
            }

            else
            {
              HIBYTE(v72) = 1;
              v29 = __p;
            }

            *v29 = v27;
            *(v29 + 1) = 0;
            ++v10;
          }

LABEL_71:
          if (v10 != a3)
          {
            v32 = *v10;
            if (v32 != 93)
            {
              v34 = v10 + 1;
              if (v10 + 1 != a3 && v32 == 45 && *v34 != 93)
              {
                v69[0] = 0;
                v69[1] = 0;
                v70 = 0;
                v10 += 2;
                if (v34 + 1 != a3 && *v34 == 91 && *v10 == 46)
                {
                  v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v34 + 2, a3, v69);
                  goto LABEL_135;
                }

                if ((j | 0x40) == 0x40)
                {
                  LODWORD(v34) = *v34;
                  if (v34 == 92)
                  {
                    if (j)
                    {
                      v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, v69);
                    }

                    else
                    {
                      v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, v69, v7);
                    }

LABEL_135:
                    v10 = v35;
LABEL_136:
                    *v67 = *__p;
                    v68 = v72;
                    __p[1] = 0;
                    v72 = 0;
                    *v65 = *v69;
                    v66 = v70;
                    v69[0] = 0;
                    v69[1] = 0;
                    v70 = 0;
                    __p[0] = 0;
                    if (*(v7 + 170) == 1)
                    {
                      if (*(v7 + 169) == 1)
                      {
                        for (i = 0; ; ++i)
                        {
                          if ((SHIBYTE(v68) & 0x8000000000000000) != 0)
                          {
                            if (i >= v67[1])
                            {
LABEL_184:
                              for (j = 0; ; ++j)
                              {
                                if ((SHIBYTE(v66) & 0x8000000000000000) != 0)
                                {
                                  if (j >= v65[1])
                                  {
                                    goto LABEL_194;
                                  }

                                  v58 = v65[0];
                                }

                                else
                                {
                                  if (j >= SHIBYTE(v66))
                                  {
                                    goto LABEL_194;
                                  }

                                  v58 = v65;
                                }

                                v59 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v58 + j));
                                if (v66 >= 0)
                                {
                                  v60 = v65;
                                }

                                else
                                {
                                  v60 = v65[0];
                                }

                                *(v60 + j) = v59;
                              }
                            }

                            v44 = v67[0];
                          }

                          else
                          {
                            if (i >= SHIBYTE(v68))
                            {
                              goto LABEL_184;
                            }

                            v44 = v67;
                          }

                          v45 = (*(**(v7 + 24) + 40))(*(v7 + 24), i[v44]);
                          if (v68 >= 0)
                          {
                            v46 = v67;
                          }

                          else
                          {
                            v46 = v67[0];
                          }

                          i[v46] = v45;
                        }
                      }

                      v56 = 0;
                      if (v68 < 0)
                      {
                        goto LABEL_175;
                      }

                      while (v56 < HIBYTE(v68))
                      {
                        while (1)
                        {
                          ++v56;
                          if ((v68 & 0x8000000000000000) == 0)
                          {
                            break;
                          }

LABEL_175:
                          if (v56 >= v67[1])
                          {
                            goto LABEL_178;
                          }
                        }
                      }

LABEL_178:
                      v57 = 0;
                      if (v66 < 0)
                      {
                        goto LABEL_181;
                      }

                      while (v57 < HIBYTE(v66))
                      {
                        while (1)
                        {
                          ++v57;
                          if ((v66 & 0x8000000000000000) == 0)
                          {
                            break;
                          }

LABEL_181:
                          if (v57 >= v65[1])
                          {
                            goto LABEL_194;
                          }
                        }
                      }

LABEL_194:
                      v61 = HIBYTE(v68);
                      if (v68 >= 0)
                      {
                        v62 = v67;
                      }

                      else
                      {
                        v62 = v67[0];
                      }

                      if (v68 < 0)
                      {
                        v61 = v67[1];
                      }

                      std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v62, &v61[v62]);
                      v63 = HIBYTE(v66);
                      if (v66 >= 0)
                      {
                        v64 = v65;
                      }

                      else
                      {
                        v64 = v65[0];
                      }

                      if (v66 < 0)
                      {
                        v63 = v65[1];
                      }

                      std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v64, &v63[v64]);
                      __dst = *__src;
                      v78 = v76;
                      __src[1] = 0;
                      v76 = 0;
                      v79 = *__s;
                      v80 = v74;
                      __s[0] = 0;
                      __s[1] = 0;
                      v74 = 0;
                      __src[0] = 0;
                      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                      if (SHIBYTE(v80) < 0)
                      {
                        operator delete(v79);
                      }

                      if (SHIBYTE(v78) < 0)
                      {
                        operator delete(__dst);
                      }

                      if (SHIBYTE(v74) < 0)
                      {
                        operator delete(__s[0]);
                      }

                      if (SHIBYTE(v76) < 0)
                      {
                        v55 = __src[0];
LABEL_212:
                        operator delete(v55);
                      }
                    }

                    else
                    {
                      v47 = HIBYTE(v68);
                      if (v68 < 0)
                      {
                        v47 = v67[1];
                      }

                      if (v47 != 1)
                      {
                        goto LABEL_223;
                      }

                      v48 = HIBYTE(v66);
                      if (v66 < 0)
                      {
                        v48 = v65[1];
                      }

                      if (v48 != 1)
                      {
LABEL_223:
                        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                      }

                      if (*(v7 + 169) == 1)
                      {
                        if (v68 >= 0)
                        {
                          v49 = v67;
                        }

                        else
                        {
                          v49 = v67[0];
                        }

                        v50 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v49);
                        if (v68 >= 0)
                        {
                          v51 = v67;
                        }

                        else
                        {
                          v51 = v67[0];
                        }

                        *v51 = v50;
                        if (v66 >= 0)
                        {
                          v52 = v65;
                        }

                        else
                        {
                          v52 = v65[0];
                        }

                        v53 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v52);
                        if (v66 >= 0)
                        {
                          v54 = v65;
                        }

                        else
                        {
                          v54 = v65[0];
                        }

                        *v54 = v53;
                      }

                      __dst = *v67;
                      v78 = v68;
                      v67[0] = 0;
                      v67[1] = 0;
                      v68 = 0;
                      v79 = *v65;
                      v80 = v66;
                      v65[0] = 0;
                      v65[1] = 0;
                      v66 = 0;
                      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                      if (SHIBYTE(v80) < 0)
                      {
                        operator delete(v79);
                      }

                      if (SHIBYTE(v78) < 0)
                      {
                        v55 = __dst;
                        goto LABEL_212;
                      }
                    }

                    if (SHIBYTE(v66) < 0)
                    {
                      operator delete(v65[0]);
                    }

                    if (SHIBYTE(v68) < 0)
                    {
                      operator delete(v67[0]);
                    }

                    if (SHIBYTE(v70) < 0)
                    {
                      operator delete(v69[0]);
                    }

LABEL_90:
                    v26 = 1;
                    goto LABEL_127;
                  }
                }

                else
                {
                  LOBYTE(v34) = *v34;
                }

                HIBYTE(v70) = 1;
                LOWORD(v69[0]) = v34;
                goto LABEL_136;
              }
            }
          }

          if (SHIBYTE(v72) < 0)
          {
            if (!__p[1])
            {
              operator delete(__p[0]);
LABEL_129:
              j = v10;
              goto LABEL_130;
            }

            if (__p[1] != 1)
            {
              v33 = __p[0];
LABEL_89:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v33, *(v33 + 1));
              goto LABEL_90;
            }

            v33 = __p[0];
          }

          else
          {
            if (!HIBYTE(v72))
            {
              goto LABEL_129;
            }

            v33 = __p;
            if (HIBYTE(v72) != 1)
            {
              goto LABEL_89;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v33);
          goto LABEL_90;
      }

      j = (v17 + 2);
      v10 = v8;
LABEL_127:
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p[0]);
        if ((v26 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      if (v26)
      {
        goto LABEL_129;
      }

LABEL_130:
      if (v8 == j)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}