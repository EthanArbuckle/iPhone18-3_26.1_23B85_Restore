void sub_1DDDB0500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void **a15, void **a16, void **a17, void **a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, SmartFIR **a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43, void **a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  v56 = *(v54 - 192);
  if (v56)
  {
    *(v54 - 184) = v56;
    operator delete(v56);
  }

  v57 = *(v54 - 168);
  if (v57)
  {
    *(v54 - 160) = v57;
    operator delete(v57);
  }

  v58 = *a17;
  if (*a17)
  {
    *(v53 + 3128) = v58;
    operator delete(v58);
  }

  v59 = *a18;
  if (*a18)
  {
    *(v53 + 3104) = v59;
    operator delete(v59);
  }

  v60 = *a19;
  if (*a19)
  {
    *(v53 + 3080) = v60;
    operator delete(v60);
  }

  *(v54 - 192) = a20;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a22;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a23;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a24;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  v61 = *a25;
  if (*a25)
  {
    *(v53 + 2936) = v61;
    operator delete(v61);
  }

  *(v54 - 192) = a26;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a28;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  *(v54 - 192) = a29;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
  v62 = (v53 + 2784);
  v63 = *a37;
  if (*a37)
  {
    *(v53 + 2816) = v63;
    operator delete(v63);
  }

  v64 = *v62;
  if (*v62)
  {
    *(v53 + 2792) = v64;
    operator delete(v64);
  }

  std::unique_ptr<SmartFIR>::reset[abi:ne200100](a30, 0);
  v65 = (v53 + 2760);
  v66 = -48;
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
      v68 = (v53 + 2712);
      v69 = -48;
      while (1)
      {
        v70 = *(v68 - 1);
        if (v70)
        {
          *v68 = v70;
          operator delete(v70);
        }

        v68 -= 3;
        v69 += 24;
        if (!v69)
        {
          v71 = (v53 + 2672);
          v72 = -16;
          do
          {
            std::unique_ptr<SmartFIR>::reset[abi:ne200100](v71--, 0);
            v72 += 8;
          }

          while (v72);
          *(v54 - 192) = a31;
          std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          *(v54 - 192) = a38;
          std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          v73 = *a32;
          if (*a32)
          {
            *(v53 + 2600) = v73;
            operator delete(v73);
          }

          v74 = *a43;
          if (*a43)
          {
            *(v53 + 2576) = v74;
            operator delete(v74);
          }

          v75 = *(v53 + 2552);
          *(v53 + 2552) = 0;
          if (v75)
          {
            (*(v53 + 2560))();
          }

          v76 = *a44;
          if (*a44)
          {
            *(v53 + 2536) = v76;
            operator delete(v76);
          }

          v77 = *a45;
          if (*a45)
          {
            *(v53 + 2512) = v77;
            operator delete(v77);
          }

          v78 = *(v53 + 2488);
          *(v53 + 2488) = 0;
          if (v78)
          {
            (*(v53 + 2496))();
          }

          v79 = *a10;
          if (*a10)
          {
            *(v53 + 2472) = v79;
            operator delete(v79);
          }

          *(v54 - 192) = a33;
          std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          *(v54 - 192) = a50;
          std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          *(v54 - 192) = a40;
          std::vector<CircularDelay>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          *a13 = a12;
          ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue(a11);
          std::unique_ptr<std::vector<std::vector<float>>>::reset[abi:ne200100]((v53 + 208), 0);
          *(v54 - 192) = a14;
          std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v54 - 192));
          v80 = *a53;
          if (*a53)
          {
            *(v53 + 168) = v80;
            operator delete(v80);
          }

          v81 = *a15;
          if (*a15)
          {
            *(v53 + 144) = v81;
            operator delete(v81);
          }

          std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*a16);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void *std::vector<FreqDomainConvolver>::reserve(void *result, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((result[2] - *result) >> 3) < a2)
  {
    std::allocator<FreqDomainConvolver>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void sub_1DDDB0D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FreqDomainConvolver>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<FreqDomainConvolver>::__emplace_back_slow_path<unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<FreqDomainConvolver>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 168 * v2;
  v14 = 168 * v2;
  FreqDomainConvolver::FreqDomainConvolver((168 * v2), *a2);
  *&v14 = 168 * v2 + 168;
  v6 = *(a1 + 8);
  v7 = (168 * v2 + *a1 - v6);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FreqDomainConvolver>,FreqDomainConvolver*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<FreqDomainConvolver>::~__split_buffer(&v12);
  return v11;
}

void sub_1DDDB0E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FreqDomainConvolver>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<float *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
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

    if (v10)
    {
      std::allocator<float *>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
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
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CDSPSplitComplex::CDSPSplitComplex(CDSPSplitComplex *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  CDSPSplitComplex::resize(this, a2);
}

uint64_t *std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 28);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void CircArrayKernel::CalcBeamMixingMat(CircArrayKernel *this)
{
  v51 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  __Z.realp = (&v46 - ((v2 + 15) & 0x7FFFFFFF0));
  __Z.imagp = &__Z.realp[v3];
  MEMORY[0x1EEE9AC00](v4);
  __B.realp = (&v46 - v6);
  __B.imagp = (&v46 + 4 * v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  if (*(v10 + 2368))
  {
    v11 = 0;
    v12 = v8;
    v47 = (&v46 - v9);
    do
    {
      v13 = *(this + 363);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 364) - v13) >> 3) <= v12)
      {
LABEL_28:
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = (v13 + 24 * v12);
      v14 = *v15;
      if (v11 >= (v15[1] - *v15) >> 2)
      {
        goto LABEL_27;
      }

      v16 = *(v14 + 4 * v11);
      v17 = *(this + 23);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - v17) >> 3) <= v16)
      {
        goto LABEL_26;
      }

      v19 = (v17 + 24 * v16);
      v18 = *v19;
      if ((v19[1] - *v19) <= 4)
      {
        goto LABEL_25;
      }

      vDSP_ctoz((v18 + 4), 2, &__Z, 1, *this);
      v20 = *this;
      if (v20)
      {
        v21 = *(this + 360);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 361) - v21) >> 3) <= v12)
        {
          goto LABEL_26;
        }

        v22 = (v21 + 24 * v12);
        v23 = *v22;
        if (v11 >= (v22[1] - *v22) >> 2)
        {
LABEL_25:
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v24 = 0;
        realp = __B.realp;
        imagp = __B.imagp;
        if ((v20 + 1) > 2)
        {
          v27 = (v20 + 1);
        }

        else
        {
          v27 = 2;
        }

        v28 = v27 - 1;
        do
        {
          v29 = (v24 + 1);
          realp[v24] = cosf(*(v23 + 4 * v11) * v29);
          imagp[v24++] = sinf(*(v23 + 4 * v11) * v29);
        }

        while (v28 != v24);
      }

      vDSP_zvmul(&__Z, 1, &__B, 1, &__Z, 1, v20, 1);
      v30 = *(this + 363);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 364) - v30) >> 3) <= v12)
      {
        goto LABEL_28;
      }

      v32 = (v30 + 24 * v12);
      v31 = *v32;
      v33 = v47;
      if (v11 >= (v32[1] - *v32) >> 2)
      {
LABEL_27:
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v34 = *(v31 + 4 * v11);
      v35 = *(this + 23);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - v35) >> 3) <= v34)
      {
        goto LABEL_26;
      }

      v37 = v35 + 24 * v34;
      v36 = *v37;
      if (*(v37 + 8) == *v37)
      {
        goto LABEL_25;
      }

      v38 = *(this + 375);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 376) - v38) >> 3) <= v12)
      {
        goto LABEL_26;
      }

      v40 = (v38 + 24 * v12);
      v39 = *v40;
      if (v11 >= (v40[1] - *v40) >> 2)
      {
        goto LABEL_25;
      }

      *(v39 + 4 * v11) = *v36;
      vDSP_ztoc(&__Z, 1, v33, 2, *this);
      v48 = 0;
      v41 = *(this + 375);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 376) - v41) >> 3) <= v12)
      {
LABEL_26:
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v42 = (v41 + 24 * v12);
      v43 = (*(this + 592) + v11);
      v45 = v42;
      v44 = *v42;
      if (v43 >= (v45[1] - v44) >> 2)
      {
        goto LABEL_25;
      }

      MEMORY[0x1E12BE8A0](v33, 1, &v48, v44 + 4 * v43);
      ++v11;
    }

    while (v11 < *(this + 592));
  }
}

void CircArrayKernel::Reset(CircArrayKernel *this)
{
  v2 = *(this + 366);
  v3 = *(this + 367) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = *(this + 308);
  v5 = *(this + 309) - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = *(this + 372);
  v7 = *(this + 373);
  while (v6 != v7)
  {
    v8 = *(v6 + 8) - *v6;
    if (v8 >= 1)
    {
      bzero(*v6, v8);
    }

    v6 += 24;
  }

  v9 = *(this + 378);
  v10 = *(this + 379);
  while (v9 != v10)
  {
    v11 = *(v9 + 8) - *v9;
    if (v11 >= 1)
    {
      bzero(*v9, v11);
    }

    v9 += 24;
  }

  v12 = *(this + 384);
  v13 = *(this + 385) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }

  v14 = *(this + 390);
  v15 = *(this + 391) - v14;
  if (v15 >= 1)
  {
    bzero(v14, v15);
  }

  vDSP_biquadm_ResetState(*(this + 319));
  if (*(this + 592))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(this + 369);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 370) - v20) >> 3) <= v19)
      {
        goto LABEL_38;
      }

      v21 = v20 + v18;
      v22 = *(v21 + 8) - *v21;
      if (v22 >= 1)
      {
        bzero(*v21, v22);
      }

      v23 = *(this + 354);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 355) - v23) >> 3) <= v19)
      {
LABEL_38:
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v24 = v23 + v18;
      v25 = *(v24 + 8) - *v24;
      if (v25 >= 1)
      {
        bzero(*v24, v25);
      }

      vDSP_biquadm_ResetState(*(this + 311));
      v26 = *(this + 327);
      if (0xCF3CF3CF3CF3CF3DLL * ((*(this + 328) - v26) >> 3) <= v19)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      FreqDomainConvolver::Reset((v26 + v17));
      v27 = *(this + 299);
      if (0x8E38E38E38E38E39 * ((*(this + 300) - v27) >> 3) <= v19)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v28 = v27 + v16;
      v29 = *(v27 + v16 + 16);
      v30 = *(v27 + v16 + 24) - v29;
      if (v30 >= 1)
      {
        bzero(v29, v30);
      }

      *(v28 + 40) = 0;
      v31 = *(v28 + 8);
      if (v31 < 1)
      {
        v32 = -v31;
      }

      else
      {
        v32 = *v28 - v31;
      }

      *(v27 + v16 + 48) = v32;
      ++v19;
      v18 += 24;
      v17 += 168;
      v16 += 72;
    }

    while (v19 < *(this + 592));
  }

  for (i = 0; i != 16; i += 8)
  {
    SmartFIR::Reset(*(this + i + 2664));
  }

  SmartFIR::Reset(*(this + 347));
  *(this + 129) = 1;
}

void std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CDSPSplitComplex::~CDSPSplitComplex((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CircularDelay>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 7);
        if (v6)
        {
          *(v4 - 6) = v6;
          operator delete(v6);
        }

        v4 -= 72;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F592AA40;
  ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::drain_trash(a1);
  v4 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v4))
  {
    v2 = v4;
    if (v4)
    {
      v5 = v4;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
      MEMORY[0x1E12BD160](v2, 0x20C40960023A9);
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ***std::unique_ptr<std::vector<std::vector<float>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1E12BD160](v2, 0x20C40960023A9);
  }

  return result;
}

BOOL ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::drain_trash(uint64_t a1)
{
  v4 = 0;
  while (1)
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &v4);
    if (!result)
    {
      break;
    }

    v3 = v4;
    if (!v4)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }

    v5 = v4;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1E12BD160](v3, 0x20C40960023A9);
  }

  return result;
}

BOOL boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>(atomic_uint *a1, void *a2)
{
  v2 = (a1 + 191) & 0xFFFFFFFFFFFFFFC0;
  while (1)
  {
    while (1)
    {
      do
      {
        explicit = atomic_load_explicit(a1, memory_order_acquire);
        v4 = explicit;
        v5 = explicit;
        v6 = (v2 + (explicit << 6));
        if (explicit == 11)
        {
          v7 = 0;
        }

        else
        {
          v7 = (v2 + (explicit << 6));
        }

        v8 = atomic_load_explicit(a1 + 16, memory_order_acquire);
        v9 = atomic_load_explicit(v7, memory_order_acquire);
        v10 = v2 + (v9 << 6);
        if (v9 == 11)
        {
          v10 = 0;
        }

        v11 = atomic_load_explicit(a1, memory_order_acquire);
        v13 = explicit == v11;
        v12 = (v11 ^ explicit) >> 16;
        v13 = v13 && v12 == 0;
      }

      while (!v13);
      if (explicit != v8)
      {
        break;
      }

      if (!v10)
      {
        return v4 != v8;
      }

      atomic_compare_exchange_strong(a1 + 16, &v15, (v8 & 0xFFFF0000 | v9) + 0x10000);
    }

    if (v10)
    {
      *a2 = *(v10 + 8);
      v14 = explicit;
      atomic_compare_exchange_strong(a1, &v14, (explicit & 0xFFFF0000 | v9) + 0x10000);
      if (v14 == explicit)
      {
        break;
      }
    }
  }

  v16 = atomic_load_explicit(a1 + 224, memory_order_acquire);
  *v6 = v16;
  v17 = v16;
  atomic_compare_exchange_strong(a1 + 224, &v17, v16 & 0xFFFF0000 | explicit);
  if (v17 != v16)
  {
    v18 = v17;
    do
    {
      *v6 = v17;
      atomic_compare_exchange_strong(a1 + 224, &v18, v17 & 0xFFFF0000 | v5);
      v13 = v18 == v17;
      v17 = v18;
    }

    while (!v13);
  }

  return v4 != v8;
}

void boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(uint64_t a1)
{
  v1 = (a1 + 191) & 0xFFFFFFFFFFFFFFC0;
  while (1)
  {
    while (1)
    {
      v2 = *a1;
      v3 = *a1;
      v4 = v2 == 11 ? 0 : (v1 + (v3 << 6));
      v5 = *(a1 + 64);
      v6 = *v4;
      v7 = v6 == 11 || v1 == 0;
      v8 = v7;
      if (v2 == v5)
      {
        break;
      }

      if (!v8)
      {
        atomic_store((*a1 & 0xFFFF0000 | v6) + 0x10000, a1);
        explicit = atomic_load_explicit((a1 + 896), memory_order_acquire);
        *(v1 + (v3 << 6)) = explicit;
        atomic_store(explicit & 0xFFFF0000 | v3, (a1 + 896));
      }
    }

    if (v8)
    {
      break;
    }

    atomic_store((v5 & 0xFFFF0000 | v6) + 0x10000, (a1 + 64));
  }

  v10 = *a1;
  v11 = atomic_load_explicit((a1 + 896), memory_order_acquire);
  *(v1 + (v10 << 6)) = v11;
  atomic_store(v11 & 0xFFFF0000 | v10, (a1 + 896));
}

void ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void std::allocator<CDSPSplitComplex>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CDSPSplitComplex>,CDSPSplitComplex*>(CDSPSplitComplex *a1, CDSPSplitComplex *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    v6 = a1;
    do
    {
      std::valarray<float>::valarray(a3 + 2, v6 + 2);
      v8 = a3[2];
      v9 = v8 + 4 * ((a3[3] - v8) >> 3);
      *a3 = v8;
      a3[1] = v9;
      a3 += 4;
      v6 = (v6 + 32);
      v5 -= 32;
    }

    while (v6 != a2);
    do
    {
      CDSPSplitComplex::~CDSPSplitComplex(v4);
      v4 = (v4 + 32);
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<CDSPSplitComplex>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    CDSPSplitComplex::~CDSPSplitComplex((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::valarray<float>::valarray(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t std::__split_buffer<CircularDelay>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 72;
    v4 = *(v2 - 56);
    if (v4)
    {
      *(v2 - 48) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<FreqDomainConvolver>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FreqDomainConvolver>,FreqDomainConvolver*>(int a1, FreqDomainConvolver *a2, FreqDomainConvolver *a3, FreqDomainConvolver *this)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v8 = a2;
    do
    {
      FreqDomainConvolver::FreqDomainConvolver(this, v8);
      v8 = (v8 + 168);
      this = (this + 168);
      v6 -= 168;
    }

    while (v8 != a3);
    do
    {
      std::allocator_traits<std::allocator<FreqDomainConvolver>>::destroy[abi:ne200100]<FreqDomainConvolver,void,0>(v5);
      v5 = (v5 + 168);
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<FreqDomainConvolver>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 168;
    std::allocator_traits<std::allocator<FreqDomainConvolver>>::destroy[abi:ne200100]<FreqDomainConvolver,void,0>((v3 - 168));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void FreqDomainConvolver::FreqDomainConvolver(FreqDomainConvolver *this, const FreqDomainConvolver *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::valarray<float>::valarray(this + 4, a2 + 4);
  v5 = *(this + 4);
  v6 = v5 + 4 * ((*(this + 5) - v5) >> 3);
  *(this + 2) = v5;
  *(this + 3) = v6;
  std::valarray<float>::valarray(this + 8, a2 + 8);
  v7 = *(this + 8);
  v8 = v7 + 4 * ((*(this + 9) - v7) >> 3);
  *(this + 6) = v7;
  *(this + 7) = v8;
  std::valarray<float>::valarray(this + 12, a2 + 12);
  *(this + 14) = 0;
  v9 = *(this + 12);
  v10 = v9 + 4 * ((*(this + 13) - v9) >> 3);
  *(this + 10) = v9;
  *(this + 11) = v10;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  *(this + 40) = *(a2 + 40);
}

void sub_1DDDB1F7C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[15] = v4;
    operator delete(v4);
  }

  CDSPSplitComplex::~CDSPSplitComplex((v1 + 10));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 6));
  CDSPSplitComplex::~CDSPSplitComplex((v1 + 2));
  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

unsigned int *boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::queue(unsigned int *a1)
{
  *a1 = 0;
  a1[16] = 0;
  bzero(a1 + 32, 0x300uLL);
  v2 = 0;
  a1[224] = 11;
  v3 = ((a1 + 191) & 0xFFFFFFFFFFFFFFC0);
  do
  {
    *v3 = 11;
    explicit = atomic_load_explicit(a1 + 224, memory_order_acquire);
    *v3 = explicit;
    v3 += 32;
    atomic_store(v2++ + (explicit & 0xFFFF0000), a1 + 224);
  }

  while (v2 != 11);
  boost::lockfree::detail::fixed_size_freelist<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,boost::lockfree::detail::compiletime_sized_freelist_storage<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,11ul>>::allocate<true>((a1 + 32));
  if (v5 == 11)
  {
    v6 = 0;
  }

  else
  {
    v6 = (((a1 + 191) & 0xFFFFFFFFFFFFFFC0) + (v5 << 6));
    *v6 = 11;
  }

  if (v6)
  {
    v7 = ((v6 - ((a1 + 191) & 0x3FFFC0)) >> 6);
  }

  else
  {
    v7 = 11;
  }

  *a1 = v7;
  atomic_store(v7, a1 + 16);
  return a1;
}

void boost::lockfree::detail::fixed_size_freelist<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,boost::lockfree::detail::compiletime_sized_freelist_storage<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,11ul>>::allocate<true>(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 768), memory_order_acquire);
  if (explicit != 11)
  {
    v2 = (a1 + 63) & 0xFFFFFFFFFFFFFFC0;
    v3 = explicit;
    atomic_compare_exchange_strong((a1 + 768), &v3, (explicit & 0xFFFF0000 | *(v2 + (explicit << 6))) + 0x10000);
    if (v3 != explicit)
    {
      do
      {
        if (v3 == 11)
        {
          break;
        }

        v4 = v3;
        atomic_compare_exchange_strong((a1 + 768), &v4, (v3 & 0xFFFF0000 | *(v2 + (v3 << 6))) + 0x10000);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }
  }
}

void ca::concurrent::deferred_deletion_stash<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592AA20;
  ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592AA20;
  ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

BOOL ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::pop(uint64_t a1, void ***a2)
{
  v10 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v10);
  if (v4)
  {
    v5 = v10;
    if (!v10)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v9 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v9))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }
    }

    std::unique_ptr<std::vector<std::vector<float>>>::reset[abi:ne200100](a2, v5);
  }

  return v4;
}

BOOL boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(uint64_t a1, void *a2)
{
  v4 = a1 + 128;
  boost::lockfree::detail::fixed_size_freelist<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,boost::lockfree::detail::compiletime_sized_freelist_storage<boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::node,11ul>>::allocate<true>(a1 + 128);
  if (v5 != 11)
  {
    v6 = (v4 + 63) & 0xFFFFFFFFFFFFFFC0;
    v7 = v6 + (v5 << 6);
    *(v7 + 8) = *a2;
    atomic_store((*v7 & 0xFFFF0000) + 65547, v7);
    v8 = (v4 + 63) & 0x3FFFC0;
    v9 = ((v7 - v8) >> 6);
    do
    {
      while (1)
      {
        do
        {
          explicit = atomic_load_explicit((a1 + 64), memory_order_acquire);
          v11 = (v6 + (explicit << 6));
          if (explicit == 11)
          {
            v11 = 0;
          }

          v12 = atomic_load_explicit(v11, memory_order_acquire);
          if (v12 == 11)
          {
            v13 = 0;
          }

          else
          {
            v13 = v6 + (v12 << 6);
          }

          v14 = atomic_load_explicit((a1 + 64), memory_order_acquire);
          v16 = explicit == v14;
          v15 = (v14 ^ explicit) >> 16;
          v16 = v16 && v15 == 0;
        }

        while (!v16);
        if (!v13)
        {
          break;
        }

        atomic_compare_exchange_strong((a1 + 64), &v17, (explicit & 0xFFFF0000 | ((v13 - v8) >> 6)) + 0x10000);
      }

      v18 = v12;
      atomic_compare_exchange_strong(v11, &v18, (v12 & 0xFFFF0000 | v9) + 0x10000);
    }

    while (v18 != v12);
    atomic_compare_exchange_strong((a1 + 64), &v19, (explicit & 0xFFFF0000 | v9) + 0x10000);
  }

  return v5 != 11;
}

void CircArrayKernel::Process(float const* const*,float * const*,unsigned int)::$_0::operator()(CircArrayKernel *a1, unsigned int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 592))
  {
    v2 = 0;
    v30 = (a1 + 2664);
    v31 = a2;
    v32 = a1;
    do
    {
      v33[0] = v2;
      *buf = v33;
      v3 = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 8, v2);
      v4 = *(v32 + 360);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v32 + 361) - v4) >> 3) <= a2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = (v4 + 24 * v31);
      v5 = *v6;
      if (v2 >= (v6[1] - *v6) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      *(v5 + 4 * v2) = (*(v3 + 8) * -3.1416) / 180.0;
      v33[0] = v2 + 8;
      *buf = v33;
      v7 = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v32 + 8, v2 + 8);
      v8 = v32;
      v9 = -1 - 1431655765 * ((*(v32 + 24) - *(v32 + 23)) >> 3);
      if (v9 > *(v7 + 8))
      {
        v33[0] = v2 + 8;
        *buf = v33;
        v9 = *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v32 + 8, v2 + 8) + 8);
        v8 = v32;
      }

      v10 = *(v8 + 363);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 364) - v10) >> 3) <= a2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = (v10 + 24 * v31);
      v11 = *v12;
      if (v2 >= (v12[1] - *v12) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      *(v11 + 4 * v2) = v9;
      v13 = **(v8 + 26);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*(v8 + 26) + 8) - v13) >> 3) <= v9)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = v13 + 24 * v9;
      v15 = *v14;
      if (*(v14 + 8) == *v14)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *&v30[2 * v31];
      if (v16[2] <= v2)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v33, 0xFFFFFFFF);
          *buf = 136315906;
          *&buf[4] = "SmartFIR.mm";
          v35 = 1024;
          v36 = 236;
          v37 = 2080;
          v38 = v33;
          v39 = 2080;
          v40 = "Trying to initialize channel out of bounds";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "Trying to initialize channel out of bounds", -1);
      }

      if (v16[1] >= *v16)
      {
        v17 = *v16;
      }

      else
      {
        v17 = v16[1];
      }

      FreqDomainConvolver::Initialize((v16[4] + 168 * v2), v15, v17);
      if (*(v16 + 14))
      {
        v18 = 0;
        v19 = 0;
        LODWORD(v20) = 0;
        v21 = v17 >> 1;
        v22 = *v16;
        do
        {
          bzero(*(*(v16[13] + 24 * v2) + v18), 4 * v22);
          bzero(*(*(v16[13] + 24 * v2) + v18 + 8), 4 * *v16);
          vDSP_ctoz((v15 + 4 * v20), 2, (*(v16[13] + 24 * v2) + v18), 1, v21);
          v23 = v16[8];
          if (v23)
          {
            v24 = *v23;
          }

          else
          {
            v24 = 0.0;
          }

          *buf = 1.0 / v24;
          v25 = *(*(v16[13] + 24 * v2) + v18);
          MEMORY[0x1E12BE940](v25, 1, buf, v25, 1, *v16);
          v26 = *(*(v16[13] + 24 * v2) + v18 + 8);
          v27 = MEMORY[0x1E12BE940](v26, 1, buf, v26, 1, *v16);
          MultiRadixRealFFT::RealInPlaceTransform((v16 + 8), (*(v16[13] + 24 * v2) + v18), 1, v27);
          v22 = *v16;
          v20 = *v16 + v20;
          ++v19;
          v18 += 16;
        }

        while (v19 < *(v16 + 14));
      }

      ++v2;
      a1 = v32;
    }

    while (v2 < *(v32 + 592));
  }

  CircArrayKernel::CalcBeamMixingMat(a1);
}

uint64_t AUECMIMO::ValidFormat(AUECMIMO *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel != 32 || a4->mFormatID != 1819304813 || a4->mChannelsPerFrame >= 9)
  {
    return 0;
  }

  else
  {
    return (a4->mFormatFlags >> 5) & 1;
  }
}

uint64_t AUECMIMO::SupportedNumChannels(AUECMIMO *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECMIMO::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUECMIMO::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUECMIMO::GetParameterInfo(AUECMIMO *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x29)
  {
    v6 = off_1E866B198[a3];
    v7 = dword_1DE0BAD70[a3];
    v8 = flt_1DE0BAE18[a3];
    v9 = flt_1DE0BAEC0[a3];
    v10 = flt_1DE0BAF68[a3];
    v11 = dword_1DE0BB010[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUECMIMO::GetParameterList(AUECMIMO *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 7) = xmmword_1DE09CD40;
    *(a3 + 8) = xmmword_1DE09CD50;
    *(a3 + 9) = xmmword_1DE09CD60;
    *(a3 + 20) = 0x2900000028;
  }

  result = 0;
  *a4 = 42;
  return result;
}

uint64_t AUECMIMO::SetBusCount(AUECMIMO *this, int a2, unsigned int a3)
{
  if (a2 == 1 && (a3 & 0xFFFFFFFE) == 2)
  {
    v3 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v3), a3);
    return 0;
  }

  v4 = 4294956445;
  if (a2 == 2 && a3 == 3)
  {
    v3 = 128;
    goto LABEL_7;
  }

  return v4;
}

uint64_t AUECMIMO::Render(AUECMIMO *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUECMIMO::ProcessMultipleBufferLists(AUECMIMO *this, unsigned int *a2, int a3, int a4, AudioBufferList **a5, int a6, AudioBufferList **a7, double a8, double a9)
{
  v130 = *MEMORY[0x1E69E9840];
  LODWORD(a8) = *(this + 138);
  LODWORD(a9) = *(this + 137);
  *(this + 81) = *(this + 81) + *&a8 / *&a9;
  if (*(this + 84) != a3)
  {
    if (AUECMIMOLogScope(void)::once != -1)
    {
      dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
    }

    if (AUECMIMOLogScope(void)::scope)
    {
      v21 = *AUECMIMOLogScope(void)::scope;
      if (!*AUECMIMOLogScope(void)::scope)
      {
        return 4294956422;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(this + 84);
      v120 = 4.8153e-34;
      v121 = "AUECMIMO.cpp";
      v122 = 1024;
      v123 = 1267;
      v124 = 1024;
      v125 = a3;
      v126 = 1024;
      v127 = v22;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECMIMO::ProcessMultipleBufferLists error - wrong (%u) block size expected (%u)\n", &v120, 0x1Eu);
    }

    return 4294956422;
  }

  result = 4294956428;
  if ((a4 & 0xFFFFFFFE) != 2 || a6 != 3)
  {
    return result;
  }

  v11 = *a5;
  v12 = *a5;
  if (a4 == 3)
  {
    v12 = a5[2];
  }

  v13 = *a7;
  if (*(this + 528) == 1)
  {
    if (v13 != v11 && *(this + 139))
    {
      v14 = 0;
      p_mData = &v11->mBuffers[0].mData;
      v16 = (v13 + 16);
      do
      {
        v18 = *v16;
        v16 += 2;
        v17 = v18;
        v19 = *p_mData;
        p_mData += 2;
        memcpy(v17, v19, 4 * *(this + 138));
        ++v14;
      }

      while (v14 < *(this + 139));
    }

    goto LABEL_117;
  }

  v23 = a5[1];
  v25 = a7[1];
  v24 = a7[2];
  v26 = *(this + 133);
  if (v26 != *(this + 134))
  {
    v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v28 & 1) == 0)
    {
      goto LABEL_121;
    }

    *(this + 164) = ausdk::AUElement::GetParameter(v27, 1u);
    v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v30 & 1) == 0)
    {
      goto LABEL_121;
    }

    Parameter = ausdk::AUElement::GetParameter(v29, 2u);
    *(this + 165) = Parameter;
    (*(**(this + 91) + 136))(*(this + 91), *(this + 164), Parameter);
    *(this + 134) = v26;
    v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v33 & 1) == 0)
    {
      goto LABEL_121;
    }

    v34 = ausdk::AUElement::GetParameter(v32, 0x27u);
    v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v34 == 0.0)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_121;
      }

      *(this + 172) = ausdk::AUElement::GetParameter(v35, 9u);
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_121;
      }

      v39 = 10;
    }

    else
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_121;
      }

      *(this + 172) = ausdk::AUElement::GetParameter(v35, 0x28u);
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_121;
      }

      v39 = 41;
    }

    *(this + 173) = ausdk::AUElement::GetParameter(v37, v39);
    (*(**(this + 91) + 152))(*(this + 91), *(this + 172));
    (*(**(this + 91) + 144))(*(this + 91), *(this + 173));
  }

  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_121;
  }

  v43 = ausdk::AUElement::GetParameter(v41, 0x25u) != 0.0;
  (*(**(this + 91) + 40))(*(this + 91), v11, v23, v12, v13, v25, v24, v43);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_121;
  }

  v46 = ausdk::AUElement::GetParameter(v44, 0x15u);
  v47 = (*(**(this + 91) + 160))(*(this + 91));
  if (v47)
  {
    goto LABEL_54;
  }

  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_121;
  }

  *(this + 150) = ausdk::AUElement::GetParameter(v48, 0x19u);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_121;
  }

  *(this + 151) = ausdk::AUElement::GetParameter(v50, 0x1Au);
  if (v11->mNumberBuffers)
  {
    v52 = 0;
    v53 = *(this + 138);
    v54 = 0.0;
    v55 = 16;
    v56 = 0.0;
    do
    {
      v120 = 0.0;
      vDSP_svesq(*(&v11->mNumberBuffers + v55), 1, &v120, v53);
      v53 = *(this + 138);
      v57 = log10f((v120 / v53) + 1.0e-20) * 10.0;
      if (v52)
      {
        v54 = v54 + v57;
      }

      else
      {
        v56 = v57;
      }

      ++v52;
      mNumberBuffers = v11->mNumberBuffers;
      v55 += 16;
    }

    while (v52 < mNumberBuffers);
    if (mNumberBuffers > 2)
    {
      v54 = v54 / (mNumberBuffers - 1);
    }
  }

  else
  {
    v56 = 0.0;
    v54 = 0.0;
  }

  if (v54 >= *(this + 150) || (v56 - v54) <= *(this + 151))
  {
LABEL_54:
    v61 = 0;
  }

  else
  {
    if (*(this + 73) > 0.0)
    {
      v59 = *(this + 98);
      if (v59)
      {
        if (!*MEMORY[0x1E69E3C08])
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v60 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v60 + 16) = 0;
        *v60 = &unk_1F5922858;
        *(v60 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v59, v60);
      }
    }

    v61 = 1;
  }

  v62 = (*(**(this + 91) + 168))(*(this + 91));
  v63 = v46 == 0.0 ? 1 : v47;
  v64 = v63 | v61;
  v65 = v46 == 0.0 ? v47 : 1;
  v66 = v64 ? 1.0 : 0.0;
  v67 = v65 | v61 ? 1.0 : 0.0;
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v69 & 1) == 0 || (ausdk::AUElement::SetParameter(v68, 0x16u, v47), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v71 & 1) == 0) || (ausdk::AUElement::SetParameter(v70, 0x17u, v66), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v73 & 1) == 0) || (ausdk::AUElement::SetParameter(v72, 0x18u, v67), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v75 & 1) == 0))
  {
LABEL_121:
    abort();
  }

  ausdk::AUElement::SetParameter(v74, 0x23u, v62);
  if (*(this + 152))
  {
    *(this + 156) = (*(**(this + 91) + 128))(*(this + 91));
    *(this + 157) = (*(**(this + 91) + 120))(*(this + 91));
    v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v77)
    {
      ausdk::AUElement::SetParameter(v76, 0x1Fu, *(this + 156));
      v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v79)
      {
        ausdk::AUElement::SetParameter(v78, 0x20u, *(this + 157));
        goto LABEL_75;
      }
    }

    goto LABEL_121;
  }

LABEL_75:
  v80 = (*(**(this + 91) + 72))(*(this + 91));
  v81 = (*(**(this + 91) + 88))(*(this + 91));
  v82 = (*(**(this + 91) + 80))(*(this + 91));
  v83 = v82;
  if (v80 && v81 && (v82 & 1) != 0)
  {
    goto LABEL_100;
  }

  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  v84 = v24;
  if (!AUECMIMOLogScope(void)::scope)
  {
    v85 = MEMORY[0x1E69E9C10];
LABEL_84:
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v120 = 4.8154e-34;
      v121 = "AUECMIMO.cpp";
      v122 = 1024;
      v123 = 1402;
      v124 = 1024;
      v125 = v80;
      v126 = 1024;
      v127 = v81;
      v128 = 1024;
      v129 = v83;
      _os_log_impl(&dword_1DDB85000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECMIMO: ********* Reset begins *********\nAUECMIMO: state variables have finite values (1 if True): %u\nAUECMIMO: ref-signal buffers have finite values (1 if True): %u\nAUECMIMO: EC output buffers have valid values (1 if True): %u\n", &v120, 0x24u);
    }

    goto LABEL_86;
  }

  v85 = *AUECMIMOLogScope(void)::scope;
  if (*AUECMIMOLogScope(void)::scope)
  {
    goto LABEL_84;
  }

LABEL_86:
  (*(**(this + 91) + 16))(*(this + 91));
  v86 = v84;
  if (*(this + 139))
  {
    v87 = 0;
    v88 = &v11->mBuffers[0].mData;
    v89 = &v25->mBuffers[0].mData;
    v90 = (v13 + 16);
    do
    {
      v91 = *v89;
      memcpy(*v90, *v88, 4 * *(this + 138));
      vDSP_vclr(v91, 1, *(this + 138));
      ++v87;
      v88 += 2;
      v89 += 2;
      v90 += 2;
    }

    while (v87 < *(this + 139));
  }

  if (*(this + 140))
  {
    v92 = 0;
    v93 = &v86->mBuffers[0].mData;
    do
    {
      vDSP_vclr(*v93, 1, *(this + 138));
      ++v92;
      v93 += 2;
    }

    while (v92 < *(this + 140));
  }

  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v94 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v94 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    v120 = 4.8151e-34;
    v121 = "AUECMIMO.cpp";
    v122 = 1024;
    v123 = 1425;
    _os_log_impl(&dword_1DDB85000, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECMIMO: ********* Reset ends *********\n", &v120, 0x12u);
  }

LABEL_100:
  v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_121;
  }

  v97 = ausdk::AUElement::GetParameter(v95, 0xEu);
  result = 0;
  *(this + 73) = v97;
  LODWORD(v98) = *(this + 138);
  LODWORD(v99) = *(this + 137);
  v100 = *(this + 80) + v98 / v99;
  if (v100 < 0.0)
  {
    v100 = 0.0;
  }

  *(this + 80) = v100;
  if (v97 > 0.0 && v100 > v97)
  {
    v101 = *(this + 98);
    if (!v101)
    {
      return 0;
    }

    v102 = (*(**(this + 91) + 72))(*(this + 91));
    v103 = (*(**(this + 91) + 88))(*(this + 91));
    v104 = (*(**(this + 91) + 80))(*(this + 91));
    v105 = MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v106 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v106 + 8) = 0;
      *(v106 + 16) = 0;
      *(v106 + 24) = *(this + 40);
      *(v106 + 40) = v102;
      *(v106 + 41) = v103;
      *(v106 + 42) = v104;
      *v106 = &unk_1F59227B8;
      caulk::concurrent::messenger::enqueue(v101, v106);
      if (*(this + 139))
      {
        v107 = 0;
        while (1)
        {
          v108 = *(this + 98);
          v109 = (*(**(this + 91) + 96))(*(this + 91), v107);
          (*(**(this + 91) + 104))(*(this + 91), v107);
          if (!*v105)
          {
            break;
          }

          v111 = v110;
          v112 = caulk::rt_safe_memory_resource::rt_allocate(*v105);
          *(v112 + 16) = 0;
          *(v112 + 24) = v107;
          *(v112 + 28) = v109;
          *(v112 + 32) = v111;
          *v112 = &unk_1F59227E0;
          *(v112 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v108, v112);
          v107 = (v107 + 1);
          if (v107 >= *(this + 139))
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
LABEL_111:
        if (*(this + 140))
        {
          v113 = 0;
          while (1)
          {
            v114 = *(this + 98);
            (*(**(this + 91) + 112))(*(this + 91), v113);
            if (!*v105)
            {
              break;
            }

            v116 = v115;
            v117 = caulk::rt_safe_memory_resource::rt_allocate(*v105);
            *(v117 + 16) = 0;
            *(v117 + 24) = v113;
            *(v117 + 28) = v116;
            *v117 = &unk_1F5922808;
            *(v117 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v114, v117);
            v113 = (v113 + 1);
            if (v113 >= *(this + 140))
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
LABEL_115:
          if (*v105)
          {
            v118 = *(this + 98);
            v119 = caulk::rt_safe_memory_resource::rt_allocate(*v105);
            *(v119 + 16) = 0;
            *v119 = &unk_1F5922830;
            *(v119 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v118, v119);
LABEL_117:
            result = 0;
            *(this + 80) = 0;
            return result;
          }
        }
      }
    }

    goto LABEL_120;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v3 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "AUECMIMO.cpp";
    v8 = 1024;
    v9 = 1469;
    v10 = 1024;
    v11 = v1;
    v12 = 2048;
    v13 = v2;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: energy measure in [dB] for ref-channel %u : %f\n", buf, 0x22u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
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

void caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v1 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUECMIMO.cpp";
    v6 = 1024;
    v7 = 1474;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: ********* Logging ends *********\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
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

void caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v4 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v8 = "AUECMIMO.cpp";
    v9 = 1024;
    v10 = 1461;
    v11 = 1024;
    v12 = v1;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: ERLE measure in [dB] for mic-channel %u , internal: %f (dB), external: %f (dB)\n", buf, 0x2Cu);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
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

void caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::perform(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v6 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v10 = "AUECMIMO.cpp";
    v11 = 1024;
    v12 = 1453;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v1;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: ********* Logging begins *********\nAUECMIMO: logging (period, timestamp): (%f, %f) (s)\nAUECMIMO: state variables have finite values (1 if True): %u\nAUECMIMO: ref-signal buffers have finite values (1 if True): %u\nAUECMIMO: EC output buffers have valid values (1 if True): %u\n", buf, 0x38u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
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

void caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMIMO::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v1 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUECMIMO.cpp";
    v6 = 1024;
    v7 = 1544;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: AOPMode detected (non-realtime logging).\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUECMIMO::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECMIMO::SetParameter(AUECMIMO *this, unsigned int a2, int a3, float a4)
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

uint64_t AUECMIMO::SetProperty(AUECMIMO *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
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

uint64_t AUECMIMO::GetProperty(AUECMIMO *this, int a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 7698)
  {
    if (a2 > 4698)
    {
      switch(a2)
      {
        case 4699:
          v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v22)
          {
            Parameter = ausdk::AUElement::GetParameter(v21, 0x17u);
            result = 0;
            v20 = Parameter == 1.0;
LABEL_37:
            v9 = v20;
            goto LABEL_44;
          }

LABEL_48:
          abort();
        case 5699:
          v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v24 & 1) == 0)
          {
            goto LABEL_48;
          }

          v12 = 24;
          break;
        case 6699:
          v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v11 & 1) == 0)
          {
            goto LABEL_48;
          }

          v12 = 22;
          break;
        default:
          return result;
      }

      v25 = ausdk::AUElement::GetParameter(v10, v12);
      result = 0;
      v9 = v25;
    }

    else
    {
      switch(a2)
      {
        case 21:
          result = 0;
          v9 = *(this + 528);
          break;
        case 3700:
          result = 0;
          v9 = *(this + 376);
          break;
        case 3800:
LABEL_27:
          (*(**(this + 91) + 48))(*(this + 91), this + 736);
          if (a2 == 103800)
          {
            v13 = (this + 736);
            goto LABEL_29;
          }

          v15 = *(this + 92);
          v16 = *(this + 140) * *(this + 139) * *(this + 144);
LABEL_47:
          memcpy(a5, v15, 4 * v16);
          return 0;
        default:
          return result;
      }
    }

LABEL_44:
    *a5 = v9;
    return result;
  }

  if (a2 <= 303799)
  {
    if (a2 != 7699)
    {
      if (a2 != 103800)
      {
        if (a2 != 203800)
        {
          return result;
        }

        result = 0;
        v9 = *(this + 139);
        goto LABEL_44;
      }

      goto LABEL_27;
    }

    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v18)
    {
      v19 = ausdk::AUElement::GetParameter(v17, 0x17u);
      result = 0;
      v20 = v19 == 0.0;
      goto LABEL_37;
    }

    goto LABEL_48;
  }

  if (a2 <= 503799)
  {
    if (a2 == 303800)
    {
      result = 0;
      v9 = *(this + 140);
    }

    else
    {
      if (a2 != 403800)
      {
        return result;
      }

      result = 0;
      v9 = *(this + 144);
    }

    goto LABEL_44;
  }

  if (a2 == 503800 || a2 == 603800)
  {
    (*(**(this + 91) + 64))(*(this + 91), this + 760);
    if (a2 == 603800)
    {
      v13 = (this + 760);
LABEL_29:
      CFArray = applesauce::CF::details::make_CFArrayRef<float>(v13);
      result = 0;
      *a5 = CFArray;
      return result;
    }

    v15 = *(this + 95);
    v16 = 2 * *(this + 139) * *(this + 140) * *(this + 148) * *(this + 138);
    goto LABEL_47;
  }

  return result;
}

uint64_t AUECMIMO::GetPropertyInfo(AUECMIMO *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 7698)
  {
    if (a2 <= 4698)
    {
      if (a2 == 21)
      {
        *a6 = 1;
        goto LABEL_21;
      }

      if (a2 != 3700)
      {
        if (a2 != 3800)
        {
          return result;
        }

        *a6 = 0;
        v9 = 4 * *(this + 139) * *(this + 140) * *(this + 144);
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a2 == 4699 || a2 == 5699)
    {
      goto LABEL_20;
    }

    v8 = 6699;
    goto LABEL_19;
  }

  if (a2 <= 303799)
  {
    if (a2 == 7699)
    {
      goto LABEL_20;
    }

    if (a2 == 103800)
    {
      goto LABEL_26;
    }

    v8 = 203800;
LABEL_19:
    if (a2 != v8)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a2 <= 503799)
  {
    if (a2 != 303800)
    {
      v8 = 403800;
      goto LABEL_19;
    }

LABEL_20:
    *a6 = 0;
LABEL_21:
    v9 = 4;
LABEL_22:
    result = 0;
    *a5 = v9;
    return result;
  }

  if (a2 == 503800)
  {
    *a6 = 0;
    v9 = 8 * *(this + 139) * *(this + 140) * *(this + 148) * *(this + 138);
    goto LABEL_22;
  }

  if (a2 == 603800)
  {
LABEL_26:
    *a6 = 0;
    v9 = 8;
    goto LABEL_22;
  }

  return result;
}

uint64_t AUECMIMO::Reset(AUECMIMO *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v2 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUECMIMO.cpp";
    v6 = 1024;
    v7 = 519;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Reset.\n", &v4, 0x12u);
  }

LABEL_9:
  if (*(this + 17) == 1)
  {
    (*(**(this + 91) + 16))(*(this + 91));
  }

  return 0;
}

uint64_t AUECMIMO::Initialize(AUECMIMO *this)
{
  *&v127[5] = *MEMORY[0x1E69E9840];
  if (AUECMIMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
  }

  if (AUECMIMOLogScope(void)::scope)
  {
    v2 = *AUECMIMOLogScope(void)::scope;
    if (!*AUECMIMOLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUECMIMO.cpp";
    v124 = 1024;
    v125 = 256;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Initialize.\n", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v4)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 1u);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = ausdk::AUScope::GetElement((this + 128), 2u);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  *(this + 139) = *(Element + 108);
  *(this + 140) = *(v4 + 108);
  *(this + 137) = *(Element + 80);
  v8 = *(this + 15);
  if (v8)
  {
    LODWORD(v9) = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v9 == 3)
  {
    v10 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (!v10)
    {
      ausdk::Throw(0xFFFFD583);
    }

    *(this + 141) = *(v10 + 108);
    v11 = *(v4 + 80);
    if (*(v10 + 80) != v11)
    {
      return 4294956428;
    }
  }

  else
  {
    *(this + 141) = *(this + 139);
    v11 = *(v4 + 80);
  }

  v12 = *(Element + 80);
  if (v12 != v11)
  {
    return 4294956428;
  }

  v14 = *(v5 + 80);
  result = 4294956428;
  if (v14 == v12 && v14 == *(v7 + 80) && v14 == *(v6 + 80))
  {
    v15 = *(v5 + 108);
    if (v15 == *(Element + 108) && v15 == *(v6 + 108) && *(v4 + 108) == *(v7 + 108))
    {
      v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 540) = ausdk::AUElement::GetParameter(v16, 0x24u) != 0.0;
      v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 142) = ausdk::AUElement::GetParameter(v18, 0x26u);
      v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 136) = ausdk::AUElement::GetParameter(v20, 0);
      v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 164) = ausdk::AUElement::GetParameter(v22, 1u);
      v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 165) = ausdk::AUElement::GetParameter(v24, 2u);
      v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 166) = ausdk::AUElement::GetParameter(v26, 3u);
      v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 167) = ausdk::AUElement::GetParameter(v28, 4u);
      *(this + 138) = *(this + 84);
      v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 168) = ausdk::AUElement::GetParameter(v30, 5u);
      v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 169) = ausdk::AUElement::GetParameter(v32, 6u);
      v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 170) = ausdk::AUElement::GetParameter(v34, 7u);
      v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v37 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 171) = ausdk::AUElement::GetParameter(v36, 8u);
      v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v39 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 172) = ausdk::AUElement::GetParameter(v38, 9u);
      v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 173) = ausdk::AUElement::GetParameter(v40, 0xAu);
      v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 174) = ausdk::AUElement::GetParameter(v42, 0xBu);
      v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 175) = ausdk::AUElement::GetParameter(v44, 0xCu);
      v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v47 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 149) = ausdk::AUElement::GetParameter(v46, 0xFu);
      v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v49 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 176) = ausdk::AUElement::GetParameter(v48, 0x10u);
      v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_149;
      }

      Parameter = ausdk::AUElement::GetParameter(v50, 0x11u);
      *(this + 177) = Parameter;
      *(this + 178) = vcvtps_u32_f32((Parameter * *(this + 137)) / 1000.0);
      v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 716) = ausdk::AUElement::GetParameter(v53, 0x12u) != 0.0;
      v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 180) = ausdk::AUElement::GetParameter(v55, 0x13u);
      v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 181) = ausdk::AUElement::GetParameter(v57, 0x14u);
      v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v60 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 150) = ausdk::AUElement::GetParameter(v59, 0x19u);
      v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v62 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 151) = ausdk::AUElement::GetParameter(v61, 0x1Au);
      v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v64 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 152) = ausdk::AUElement::GetParameter(v63, 0x1Bu);
      v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v66 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 153) = ausdk::AUElement::GetParameter(v65, 0x1Cu);
      v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v68 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 154) = ausdk::AUElement::GetParameter(v67, 0x1Du);
      v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v70 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 155) = ausdk::AUElement::GetParameter(v69, 0x1Eu);
      v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v72 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 156) = ausdk::AUElement::GetParameter(v71, 0x1Fu);
      v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v74 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 157) = ausdk::AUElement::GetParameter(v73, 0x20u);
      v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v76 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 158) = ausdk::AUElement::GetParameter(v75, 0x21u);
      v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v78 & 1) == 0)
      {
        goto LABEL_149;
      }

      *(this + 159) = ausdk::AUElement::GetParameter(v77, 0x22u);
      v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_149;
      }

      v81 = ausdk::AUElement::GetParameter(v79, 0xDu);
      *(this + 145) = v81;
      v82 = *(this + 138);
      v83 = *(this + 137);
      v84 = v82;
      v85 = v82 * vcvtps_u32_f32(((v83 * *(this + 136)) / 1000.0) / v82);
      *(this + 143) = v85;
      if (v85 <= v82)
      {
        *(this + 143) = v82;
        *(this + 136) = ((v84 / v83) * 1000.0);
        v85 = v82;
      }

      v86 = v82 * vcvtps_u32_f32(((v83 * v81) / 1000.0) / v84);
      *(this + 144) = v86;
      if (v86 <= v82)
      {
        *(this + 144) = v82;
        *(this + 145) = ((v84 / v83) * 1000.0);
        v86 = v82;
      }

      if (*(this + 176))
      {
        if (-858993459 * v85 >= 0x33333334)
        {
          v87 = 1;
        }

        else
        {
          v87 = 5;
        }

        if (-1431655765 * v85 >= 0x55555556)
        {
          v88 = 4;
        }

        else
        {
          v88 = 12;
        }

          ;
        }

        v85 = i;
        *(this + 143) = i;
        *(this + 136) = ((i / v83) * 1000.0);
      }

      if (v86 <= v85)
      {
        v90 = v85;
      }

      else
      {
        *(this + 144) = v85;
        v90 = v85;
        *(this + 145) = ((v85 / v83) * 1000.0);
      }

      *(this + 148) = vcvtps_u32_f32(v90 / v84);
      if (AUECMIMOLogScope(void)::once != -1)
      {
        dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
      }

      if (AUECMIMOLogScope(void)::scope)
      {
        v91 = *AUECMIMOLogScope(void)::scope;
        if (!*AUECMIMOLogScope(void)::scope)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v91 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = *(this + 143);
        v93 = *(this + 144);
        buf[0] = 136315906;
        *&buf[1] = "AUECMIMO.cpp";
        v124 = 1024;
        v125 = 352;
        v126 = 1024;
        v127[0] = v92;
        LOWORD(v127[1]) = 1024;
        *(&v127[1] + 2) = v93;
        _os_log_impl(&dword_1DDB85000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: filter (readout) length is set to %u (%u) samples.\n", buf, 0x1Eu);
      }

LABEL_89:
      if (!*(this + 176))
      {
        goto LABEL_100;
      }

      v94 = *(this + 143) - *(this + 138);
      if (*(this + 178) > v94)
      {
        *(this + 178) = v94;
      }

      if (AUECMIMOLogScope(void)::once != -1)
      {
        dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
      }

      if (AUECMIMOLogScope(void)::scope)
      {
        v95 = *AUECMIMOLogScope(void)::scope;
        if (!*AUECMIMOLogScope(void)::scope)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v95 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = *(this + 178);
        buf[0] = 136315650;
        *&buf[1] = "AUECMIMO.cpp";
        v124 = 1024;
        v125 = 357;
        v126 = 1024;
        v127[0] = v96;
        _os_log_impl(&dword_1DDB85000, v95, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: IQRD mode delay is set to %u samples.\n", buf, 0x18u);
      }

LABEL_100:
      *(this + 134) = *(this + 133);
      v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v98)
      {
        *(this + 73) = ausdk::AUElement::GetParameter(v97, 0xEu);
        *(this + 40) = 0u;
        v122 = 0;
        AppFloatValue = CACFPreferencesGetAppFloatValue(@"ecmimo_log_period_in_seconds", @"com.apple.coreaudio", &v122);
        if (!v122)
        {
          goto LABEL_112;
        }

        v101 = AppFloatValue;
        if (v101 <= 0.0)
        {
          goto LABEL_112;
        }

        *(this + 73) = v101;
        v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v103)
        {
          ausdk::AUElement::SetParameter(v102, 0xEu, v101);
          if (AUECMIMOLogScope(void)::once != -1)
          {
            dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
          }

          if (AUECMIMOLogScope(void)::scope)
          {
            v104 = *AUECMIMOLogScope(void)::scope;
            if (!*AUECMIMOLogScope(void)::scope)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v104 = MEMORY[0x1E69E9C10];
          }

          v99 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
          if (v99)
          {
            buf[0] = 136315650;
            *&buf[1] = "AUECMIMO.cpp";
            v124 = 1024;
            v125 = 372;
            v126 = 2048;
            *v127 = v101;
            _os_log_impl(&dword_1DDB85000, v104, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Using logPeriod of (%g)s as specified in defaults write ecmimo_log_period_in_seconds.\n", buf, 0x1Cu);
          }

LABEL_112:
          if (!*(this + 98) && *(this + 73) > 0.0)
          {
            caulk::concurrent::messenger::shared_logging_priority(v99);
            std::make_unique[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
          }

          v105 = *(this + 91);
          *(this + 91) = 0;
          if (v105)
          {
            (*(*v105 + 8))(v105);
          }

          if (*(this + 176))
          {
            if (AUECMIMOLogScope(void)::once != -1)
            {
              dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
            }

            if (AUECMIMOLogScope(void)::scope)
            {
              v106 = *AUECMIMOLogScope(void)::scope;
              if (!*AUECMIMOLogScope(void)::scope)
              {
LABEL_131:
                v108 = *(this + 91);
                if (!v108)
                {
                  operator new();
                }

                HIDWORD(v121) = *(this + 155);
                HIDWORD(v119) = *(this + 181);
                LODWORD(v121) = *(this + 152);
                LODWORD(v119) = *(this + 176);
                BYTE4(v117) = *(this + 716);
                HIDWORD(v115) = *(this + 144);
                LODWORD(v117) = *(this + 178);
                LODWORD(v115) = *(this + 138);
                (*(*v108 + 32))(v108, *(this + 540), *(this + 139), *(this + 140), *(this + 141), *(this + 142), *(this + 137), *(this + 143), *(this + 173), *(this + 172), *(this + 167), *(this + 168), *(this + 175), *(this + 180), *(this + 153), *(this + 154), v115, v117, v119, v121, *(this + 79));
                goto LABEL_140;
              }
            }

            else
            {
              v106 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 136315394;
              *&buf[1] = "AUECMIMO.cpp";
              v124 = 1024;
              v125 = 454;
              _os_log_impl(&dword_1DDB85000, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Set iQRD mode.\n", buf, 0x12u);
            }

            goto LABEL_131;
          }

          if (AUECMIMOLogScope(void)::once != -1)
          {
            dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
          }

          if (AUECMIMOLogScope(void)::scope)
          {
            v107 = *AUECMIMOLogScope(void)::scope;
            if (!*AUECMIMOLogScope(void)::scope)
            {
LABEL_137:
              v110 = *(this + 91);
              if (!v110)
              {
                operator new();
              }

              HIDWORD(v120) = *(this + 142);
              LODWORD(v120) = *(this + 144);
              LODWORD(v118) = *(this + 169);
              HIDWORD(v118) = *(this + 175);
              HIDWORD(v116) = *(this + 170);
              LODWORD(v116) = *(this + 168);
              v109 = (*(*v110 + 24))(v110, *(this + 540), *(this + 139), *(this + 140), *(this + 141), *(this + 137), *(this + 143), *(this + 138), *(this + 164), *(this + 165), *(this + 174), *(this + 171), *(this + 173), *(this + 172), *(this + 167), *(this + 166), v116, v118, v120, *(this + 149));
LABEL_140:
              v111 = (*(this + 140) * *(this + 139) * *(this + 144));
              buf[0] = 0;
              std::vector<float>::assign(this + 92, v111, buf, *&v109);
              v112 = (2 * *(this + 139) * *(this + 140) * *(this + 148) * *(this + 138));
              buf[0] = 0;
              std::vector<float>::assign(this + 95, v112, buf, v113);
              *(this + 80) = 0;
              *(this + 81) = 0;
              (*(*this + 72))(this, 0, 0);
              if (AUECMIMOLogScope(void)::once != -1)
              {
                dispatch_once(&AUECMIMOLogScope(void)::once, &__block_literal_global_8021);
              }

              if (AUECMIMOLogScope(void)::scope)
              {
                v114 = *AUECMIMOLogScope(void)::scope;
                if (!*AUECMIMOLogScope(void)::scope)
                {
                  return 0;
                }
              }

              else
              {
                v114 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
              {
                buf[0] = 136315394;
                *&buf[1] = "AUECMIMO.cpp";
                v124 = 1024;
                v125 = 388;
                _os_log_impl(&dword_1DDB85000, v114, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Successfully initialized.\n", buf, 0x12u);
              }

              return 0;
            }
          }

          else
          {
            v107 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 136315394;
            *&buf[1] = "AUECMIMO.cpp";
            v124 = 1024;
            v125 = 484;
            _os_log_impl(&dword_1DDB85000, v107, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMIMO: Set classic mode.\n", buf, 0x12u);
          }

          goto LABEL_137;
        }
      }

LABEL_149:
      abort();
    }
  }

  return result;
}

uint64_t std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x1E12BC1E0]();

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUECMIMO::~AUECMIMO(AUECMIMO *this)
{
  AUECMIMO::~AUECMIMO(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922548;
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 98, 0);
  v2 = *(this + 95);
  if (v2)
  {
    *(this + 96) = v2;
    operator delete(v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    *(this + 93) = v3;
    operator delete(v3);
  }

  v4 = *(this + 91);
  *(this + 91) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ausdk::AUBase::~AUBase(this);
}

double ParameterSwitchBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.16744447e233;
  *a1 = xmmword_1DE09CC60;
  *(a1 + 16) = 0;
  return result;
}

float ParameterSwitchBox::getParameter(ParameterSwitchBox *this)
{
  v1 = *(this + 200);
  v2 = *(this + 97);
  if (v1 >= (*(this + 98) - v2) >> 2)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 4 * v1);
}

uint64_t ParameterSwitchBox::setParameter(uint64_t this, unsigned int a2, float a3)
{
  v3 = *(this + 776);
  v4 = *(this + 784) - v3;
  if (a2)
  {
    v5 = v4 >> 2;
    if (v5 + 1 > a2)
    {
      v6 = a2 - 1;
      if (v5 <= v6)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      *(v3 + 4 * v6) = a3;
    }
  }

  else
  {
    v7 = a3;
    v8 = (v4 >> 2) - 1;
    if (v8 < a3)
    {
      v7 = v8;
    }

    *(this + 800) = v7 & ~(v7 >> 31);
  }

  return this;
}

void ParameterSwitchBox::~ParameterSwitchBox(ParameterSwitchBox *this)
{
  *this = &unk_1F5922880;
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922880;
  v2 = *(this + 97);
  if (v2)
  {
    *(this + 98) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);
}

uint64_t SourceExtentProcessor::initialize(uint64_t a1, float a2, uint64_t a3, uint64_t a4, int a5, CFTypeRef *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  *(a1 + 240) = 0;
  *(a1 + 208) = 0;
  if (a5)
  {
    *(a1 + 220) = a5;
  }

  v9 = *a6;
  if (*a6)
  {
    CFRetain(*a6);
    v50 = v9;
    IR::IRDataAttributes::IRDataAttributes(&v51, v9, 0, 1, 2, 0, 0.0);
  }

  else
  {
    IR::IRDataAttributes::IRDataAttributes(&v51, (a1 + 8));
  }

  v11 = (a1 + 8);
  v10 = *(a1 + 8);
  *(a1 + 8) = v51;
  *(a1 + 32) = v52;
  *(a1 + 48) = v53;
  *(a1 + 64) = v54;
  v12 = *(a1 + 72);
  v13 = cf;
  *(a1 + 72) = v55;
  v51.__r_.__value_.__r.__words[0] = v10;
  v55 = v12;
  *(a1 + 80) = v56;
  v14 = *(a1 + 96);
  *(a1 + 96) = v13;
  v15 = v58[0];
  *(a1 + 113) = *(v58 + 9);
  *(a1 + 104) = v15;
  v16 = *(a1 + 136);
  *(a1 + 152) = v61;
  v17 = v59;
  v18 = v60;
  cf = v14;
  v59 = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  if (v16)
  {
    CFRelease(v16);
    v14 = cf;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v51.__r_.__value_.__r.__words[0])
  {
    CFRelease(v51.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  IsReachable = CFURLResourceIsReachable(*v11, 0);
  if (IsReachable)
  {
    if (*(a1 + 224) != 2)
    {
LABEL_28:
      v24 = *(a1 + 160);
      if (*(a1 + 168) != v24)
      {
        operator new();
      }

      *(a1 + 240) = 0x3F80000000000000;
      (*(**(*v24 + 24) + 64))(&v49);
      v25 = v49.__r_.__value_.__r.__words[0];
      if (v49.__r_.__value_.__r.__words[0])
      {
        v26 = CFStringCreateWithBytes(0, "SourceExtentFilterDelay", 23, 0x8000100u, 0);
        v51.__r_.__value_.__r.__words[0] = v26;
        if (!v26)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        Value = CFDictionaryGetValue(v25, v26);
        if (v51.__r_.__value_.__r.__words[0])
        {
          CFRelease(v51.__r_.__value_.__l.__data_);
        }

        if (Value)
        {
          v28 = applesauce::CF::convert_as<float,0>(Value);
          if (HIDWORD(v28))
          {
            *(a1 + 240) = vcvtas_u32_f32(*&v28 * a2);
          }
        }

        if (!v49.__r_.__value_.__r.__words[0])
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
        }

        v29 = applesauce::CF::details::at_key<char const(&)[23]>(v49.__r_.__value_.__l.__data_, "SourceExtentSizeWeight");
        if (v29)
        {
          v30 = applesauce::CF::convert_as<float,0>(v29);
          if (HIDWORD(v30))
          {
            *(a1 + 244) = v30;
          }
        }

        if (v49.__r_.__value_.__r.__words[0])
        {
          CFRelease(v49.__r_.__value_.__l.__data_);
        }
      }

      result = 0;
      *(a1 + 208) = 1;
      return result;
    }

    v20 = IR::IRDataLoader::instance(IsReachable);
    v21 = IR::IRDataLoader::getAudioChannelLayoutTag(v20, (a1 + 8)) & 0xFFFF0000;
    v22 = 2 * (v21 != 12517376);
    if (v21 == 12451840)
    {
      v22 = 1;
    }

    v23 = v21 == 12517376 || v21 == 12451840;
    *(a1 + 232) = v22;
    if (v23 && (*(a1 + 236) & 1) != 0)
    {
      if (MEMORY[0x1E12BBF30](a1 + 8) > *(a1 + 228))
      {
        *(a1 + 108) = MEMORY[0x1E12BBF10](a1 + 8) & 0xFFFF0000 | *(a1 + 228);
      }

      goto LABEL_28;
    }

    v36 = *(a1 + 160);
    v35 = *(a1 + 168);
    while (v36 != v35)
    {
      std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v36++, 0);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v37 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v48, "SourceExtentProcessor");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, &v48, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v51, &v49, "initialize");
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v51;
      }

      else
      {
        v45 = v51.__r_.__value_.__r.__words[0];
      }

      *v63 = 136315138;
      *&v63[4] = v45;
      _os_log_error_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_ERROR, "%s: Unsupported normalization in the source extent IR file, Spatializer will ignore source size.", v63, 0xCu);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    if (*a6)
    {
      return 4294956445;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v33 = *(a1 + 160);
    v32 = *(a1 + 168);
    while (v33 != v32)
    {
      std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v33++, 0);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v34 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v48, "SourceExtentProcessor");
      v38 = std::string::append(&v48, "::", 2uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = std::string::append(&v49, "initialize", 0xAuLL);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v51;
      }

      else
      {
        v42 = v51.__r_.__value_.__r.__words[0];
      }

      v43 = CFCopyDescription(*v11);
      v62 = v43;
      applesauce::CF::details::CFString_get_value<true>(v63, v43);
      if (v43)
      {
        CFRelease(v43);
      }

      v44 = v63;
      if (v64 < 0)
      {
        v44 = *v63;
      }

      *buf = 136315394;
      v66 = v42;
      v67 = 2080;
      v68 = v44;
      _os_log_error_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "%s: Could not locate an IR file at %s", buf, 0x16u);
      if (v64 < 0)
      {
        operator delete(*v63);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }
}

void sub_1DDDB637C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a24);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DDDB5E68);
  }

  _Unwind_Resume(exception_object);
}

const void *applesauce::CF::details::at_key<char const(&)[23]>(const __CFDictionary *a1, char *__s)
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

void sub_1DDDB656C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDDB651CLL);
}

void SourceExtentProcessor::updateExtentParameters(SourceExtentProcessor *this, float a2, float a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 208))
  {
    v4 = *(this + 20);
    for (i = *(this + 21); v4 != i; v4 += 8)
    {
      if (*v4)
      {
        (*(**(*v4 + 24) + 48))(*(*v4 + 24), 0, (*(this + 61) * a2) * 360.0);
        (*(**(*v4 + 24) + 48))(*(*v4 + 24), 1, (*(this + 61) * a3) * 180.0);
      }
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "SourceExtentProcessor");
      v9 = std::string::append(&v14, "::", 2uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v15, "updateExtentParameters", 0x16uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v17 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = __p;
      if (v17 < 0)
      {
        v13 = __p[0];
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%s: Uninitialized", buf, 0xCu);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1DDDB6804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void StringArrayDecoder::BlobToStringArray_Priv(void *a1, uint64_t a2)
{
  std::vector<std::string>::clear[abi:ne200100](a2);
  v4 = (*a1 + 4);
  v5 = **a1 + 0.5;
  v6 = v5;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *a2) >> 3) < v5)
  {
    if (v6 < 0xAAAAAAAAAAAAAABLL)
    {
      v10.__end_cap_.__value_ = a2;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v5);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      memset(&v10, 0, 24);
      v8 = *v4;
      std::string::reserve(&v10, (*v4 + 0.5));
      v9 = &v4[v8 + 1];
      while (++v4 != v9)
      {
        std::string::push_back(&v10, (*v4 + 0.5));
      }

      std::vector<std::string>::push_back[abi:ne200100](a2, &v10);
      if (SHIBYTE(v10.__end_) < 0)
      {
        operator delete(v10.__first_);
      }

      v4 = v9;
    }
  }
}

void sub_1DDDB699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::__split_buffer<std::vector<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ViterbiOdep::normalizeLik(vDSP_Length *this, const float *__A)
{
  __C = 0.0;
  vDSP_sve(__A, 1, &__C, *this);
  __C = 1.0 / __C;
  return MEMORY[0x1E12BE940](__A, 1, &__C, __A, 1, *this);
}

char *HRTFNFSpatializer::getInHeadParams(HRTFNFSpatializer *this)
{
  v1 = *(*(this + 6) + 128);
  if (v1 <= 1)
  {
    if (v1)
    {
      return &SpatializerWithInHeadRendering::mInHeadParams_BinauralCompatibilityMode_Near;
    }

    else
    {
      return &SpatializerWithInHeadRendering::mInHeadParams_BinauralCompatibilityMode_Bypass;
    }
  }

  else if (v1 == 2)
  {
    return &SpatializerWithInHeadRendering::mInHeadParams_BinauralCompatibilityMode_Far;
  }

  else if (v1 == 4)
  {
    return this + 300;
  }

  else
  {
    return &SpatializerWithInHeadRendering::mInHeadParams_BinauralCompatibilityMode_Mid;
  }
}

uint64_t HRTFNFSpatializer::getLatencyFrames(HRTFNFSpatializer *this)
{
  if (*(this + 712))
  {
    return 256;
  }

  v2 = atomic_load((*(this + 40) + 160));
  return v2 + *(this + 91) + 5;
}

uint64_t HRTFNFSpatializer::setIRSource(uint64_t a1, void *a2)
{
  v2 = *(a1 + 320);
  v3 = *(v2 + 157);
  if (v3 == 1)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IR::DynamicIRProcessor::setIRSource(v2, v6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return v3;
}

void sub_1DDDB6D68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HRTFNFSpatializer::processAccumulating(HRTFNFSpatializer *this, const float *a2, float *const *a3, int a4, float **a5, unsigned int a6, vDSP_Length a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  v208 = *MEMORY[0x1E69E9840];
  if (a6 == a4)
  {
    if (*(this + 16))
    {
      if (*(this + 76) && (v14 = atomic_load(this + 290), (v14 & 1) != 0) && (v15 = *(this + 4)) != 0 && applesauce::CF::details::has_key<__CFString const*&>(v15, kBinauralSourceExtentIRCustomURLParamName))
      {
        v16 = *(this + 4);
        if (!v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(exception);
        }

        v17 = *(this + 76);
        v18 = *(this + 2);
        v19 = *(this + 3);
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&v207, v16, kBinauralSourceExtentIRCustomURLParamName);
        cf = v207.__r_.__value_.__r.__words[0];
        v207.__r_.__value_.__r.__words[0] = 0;
        v20 = (**v17)(v17, v19, 512, 512, &cf, 0, 0, v18);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v20)
        {
          *(this + 288) = 1;
        }

        v21 = *(this + 4);
        if (!v21)
        {
          v189 = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(v189);
        }

        v22 = *(this + 77);
        v23 = *(this + 2);
        v24 = *(this + 3);
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&v207, v21, kBinauralSourceExtentIRCustomURLParamName);
        v200 = v207.__r_.__value_.__r.__words[0];
        v207.__r_.__value_.__r.__words[0] = 0;
        v192 = (**v22)(v22, v24, 512, 512, &v200, 0, 0, v23);
        if (v200)
        {
          CFRelease(v200);
        }

        if (!v192)
        {
          *(this + 288) = 1;
        }

        atomic_store(0, this + 290);
      }

      else
      {
        v192 = 0;
      }

      v29 = *(this + 6);
      v30 = *(v29 + 8);
      v31 = *(v29 + 128);
      v32 = *(this + 149);
      v33 = *(this + 150);
      v193 = a2;
      if (v31 != 1)
      {
        if (v31 == 2)
        {
          v34 = 8.0;
        }

        else
        {
          if (v31 != 3)
          {
LABEL_51:
            if ((*(this + 288) & 1) == 0 && *(this + 17) != 1)
            {
LABEL_103:
              v86 = (*(*this + 352))(this);
              v88 = *(v86 + 4);
              v87 = *(v86 + 8);
              if (v88 >= v87)
              {
                v93 = v87 <= v30;
                v92 = 0.0;
                if (!v93)
                {
                  v92 = 1.0;
                }
              }

              else
              {
                v89 = (v30 - v88) / (v87 - v88);
                if (v89 <= 1.0)
                {
                  v90 = v89;
                }

                else
                {
                  v90 = 1.0;
                }

                v91 = 1.0 - v90;
                if (v89 >= 0.0)
                {
                  v92 = v91;
                }

                else
                {
                  v92 = 1.0;
                }
              }

              v195 = v92;
              v94 = (*(*this + 352))(this);
              v95 = *v94;
              v96 = v94[1];
              v97 = v193;
              if (*v94 >= v96)
              {
                v93 = v95 <= v30;
                v101 = 0.0;
                if (!v93)
                {
                  v101 = 1.0;
                }
              }

              else
              {
                v98 = (v30 - v95) / (v96 - v95);
                if (v98 <= 1.0)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = 1.0;
                }

                v100 = 1.0 - v99;
                if (v98 >= 0.0)
                {
                  v101 = v100;
                }

                else
                {
                  v101 = 1.0;
                }
              }

              v197 = v101;
              v102 = (*(*this + 352))(this);
              v103.n128_u32[0] = *v102;
              v104.n128_u32[0] = *(v102 + 8);
              if (v104.n128_f32[0] <= *v102)
              {
                if (v103.n128_f32[0] <= v30)
                {
                  v106 = 1.0;
                }

                else
                {
                  v106 = 0.0;
                }
              }

              else
              {
                v103.n128_f32[0] = (v30 - v103.n128_f32[0]) / (v104.n128_f32[0] - v103.n128_f32[0]);
                v105 = 1.0;
                if (v103.n128_f32[0] <= 1.0)
                {
                  v105 = v103.n128_f32[0];
                }

                v103.n128_u32[1] = 0;
                if (v103.n128_f32[0] >= 0.0)
                {
                  v106 = v105;
                }

                else
                {
                  v106 = 0.0;
                }
              }

              v107 = *(*(this + 6) + 56);
              v108 = v107 * a8;
              v109 = (*(this + 156) > 0.0 || v108 > 0.0) && *(this + 182) > 1u;
              v110 = *(v102 + 12);
              if (v195 > 0.0 || *(this + 144) > 0.0 || (__I = v193, (*(this + 712) & 1) == 0) && (__I = v193, v109))
              {
                IR::FixedIntegerDelay<float>::process();
              }

              if (!v109)
              {
LABEL_178:
                *(this + 156) = v108;
                v104.n128_u32[1] = 0;
                if (*(*(this + 6) + 82))
                {
                  v121 = (v106 + ((1.0 - v106) * v110)) * ((1.0 - v107) * a8);
                }

                else
                {
                  v121 = 0.0;
                }

                v194 = v121;
                v103.n128_f32[0] = (1.0 - v195) * v121;
                v122 = 1;
                v104.n128_f32[0] = v197;
                if (v197 >= 1.0 && v103.n128_f32[0] <= 0.0)
                {
                  v104.n128_u32[0] = *(this + 145);
                  if (v104.n128_f32[0] <= 0.0)
                  {
                    v122 = *(this + 148) < *(this + 5);
                  }
                }

                v123 = 0;
                if (*(this + 589) == 1 && v122)
                {
                  v124 = *(this + 41);
                  if (*(v124 + 208) == 1)
                  {
                    if (*(v124 + 212))
                    {
                      v123 = 1;
                    }

                    else
                    {
                      v123 = *(v124 + 209);
                    }
                  }

                  else
                  {
                    v123 = 0;
                  }
                }

                v190 = (1.0 - v195) * v121;
                if (v122)
                {
                  v125 = *(this + 76);
                  if (v125 && *(v125 + 208) == 1)
                  {
                    if (*(v125 + 212))
                    {
                      v126 = 1;
                    }

                    else
                    {
                      v126 = *(v125 + 209);
                    }
                  }

                  else
                  {
                    v126 = 0;
                  }

                  v128 = *(this + 50);
                  v129 = *v128;
                  v130 = v128[3];
                  v207.__r_.__value_.__r.__words[0] = v129;
                  v207.__r_.__value_.__l.__size_ = v130;
                  v131 = *(this + 40);
                  v132 = -1.0;
                  if (!*(this + 73))
                  {
                    v132 = 3000.0;
                  }

                  *(v131 + 80) = v132;
                  if (a6 >= 2)
                  {
                    v127 = 2;
                  }

                  else
                  {
                    v127 = a6;
                  }

                  v206.__r_.__value_.__r.__words[0] = v97;
                  IR::DynamicIRProcessor::processInternal(v131, &v206, a5, 1u, v127, a7, v103.n128_f32[0], &v207, 0, 0);
                  if (!a6)
                  {
                    goto LABEL_253;
                  }
                }

                else
                {
                  v126 = 0;
                  if (a6 >= 2)
                  {
                    v127 = 2;
                  }

                  else
                  {
                    v127 = a6;
                  }

                  if (!a6)
                  {
LABEL_253:
                    if (v126)
                    {
                      (*(**(this + 76) + 48))(*(this + 76), a7, v103, v104);
                    }

                    if (v123)
                    {
                      (*(**(this + 41) + 48))(*(this + 41), a7, v103, v104);
                    }

                    *(this + 146) = *(*(this + 6) + 82);
                    v156 = v190;
                    if (v195 >= 1.0 && *(this + 144) >= 1.0)
                    {
                      v157 = *(this + 148);
                      v158 = *(this + 5);
                      if (v157 < v158)
                      {
                        v159 = __CFADD__(v157, a7);
                        v160 = v157 + a7;
                        if (v159)
                        {
                          v160 = -1;
                        }

                        *(this + 148) = v160;
                        if (v160 >= v158)
                        {
                          IR::DynamicIRProcessor::reset(*(this + 40));
                          v161 = *(*(this + 40) + 32);
                          if (v161)
                          {
                            *(v161 + 168) = 0;
                          }

                          if (*(this + 589) == 1)
                          {
                            (*(**(this + 41) + 32))(*(this + 41), 0);
                          }

                          v162 = *(this + 76);
                          v156 = v190;
                          if (v162)
                          {
                            (*(*v162 + 32))(v162, 0);
                            v156 = v190;
                          }
                        }
                      }
                    }

                    else
                    {
                      *(this + 148) = 0;
                    }

                    *(this + 144) = v195;
                    *(this + 145) = v156;
                    *(this + 146) = v194;
                    *(this + 17) = 0;
                    return v192;
                  }
                }

                v133 = 0;
                v134 = v195 * v194;
                v135 = v127;
                do
                {
                  v136 = a5[v133];
                  if (v123)
                  {
                    v207.__r_.__value_.__r.__words[0] = 0;
                    v207.__r_.__value_.__r.__words[0] = **(this + 50);
                    v137 = *(this + 41);
                    if (*(this + 73))
                    {
                      v138 = -1.0;
                    }

                    else
                    {
                      v138 = 3000.0;
                    }

                    v139 = v137[20];
                    v140 = v137[21];
                    while (v139 != v140)
                    {
                      if (*v139)
                      {
                        *(*v139 + 160) = v138;
                      }

                      v139 += 8;
                    }

                    (*(*v137 + 8))(v137, v136, &v207, v133, 1, a7, 1.0);
                    (*(**(this + 41) + 24))(*(this + 41), a5[v133], v207.__r_.__value_.__r.__words[0], v133, 0, a7);
                    v136 = v207.__r_.__value_.__r.__words[0];
                  }

                  if (v126)
                  {
                    v207.__r_.__value_.__r.__words[0] = *(*(this + 50) + 24);
                    v141 = *(this + 76);
                    if (*(this + 73))
                    {
                      v142 = -1.0;
                    }

                    else
                    {
                      v142 = 3000.0;
                    }

                    v143 = v141[20];
                    v144 = v141[21];
                    while (v143 != v144)
                    {
                      if (*v143)
                      {
                        *(*v143 + 160) = v142;
                      }

                      v143 += 8;
                    }

                    (*(*v141 + 8))(v141, v136, &v207, v133, 1, a7, 1.0);
                    (*(**(this + 76) + 24))(*(this + 76), v136, v207.__r_.__value_.__r.__words[0], v133, 0, a7);
                    v136 = v207.__r_.__value_.__r.__words[0];
                  }

                  if (v134 <= 0.0 && (*(this + 146) * *(this + 144)) <= 0.0)
                  {
                    *(*(this + 47) + 4 * v133) = 0;
                  }

                  else
                  {
                    v145 = v134 * (((1.0 - v197) * 0.70711) + (v197 * *(*(*(this + 6) + 144) + 4 * v133)));
                    *&v207.__r_.__value_.__l.__data_ = v145;
                    if ((*(this + 17) & 1) != 0 || (v146 = (*(this + 47) + 4 * v133), v145 == *v146))
                    {
                      if (v122)
                      {
                        MEMORY[0x1E12BE8F0](__I, 1, &v207, v136, 1, v136, 1, a7);
                      }

                      else
                      {
                        MEMORY[0x1E12BE940](__I, 1, &v207, v136, 1, a7);
                      }
                    }

                    else if (a7)
                    {
                      *&v206.__r_.__value_.__l.__data_ = (v145 - *v146) / a7;
                      if (v122)
                      {
                        vDSP_vrampmuladd(__I, 1, v146, &v206, v136, 1, a7);
                      }

                      else
                      {
                        vDSP_vrampmul(__I, 1, v146, &v206, v136, 1, a7);
                      }
                    }

                    *(*(this + 47) + 4 * v133) = v207.__r_.__value_.__l.__data_;
                  }

                  v147 = *(*(this + 40) + 32);
                  v103.n128_u64[0] = 0;
                  v148 = 0.0;
                  if (v147)
                  {
                    v150 = v147 + 112;
                    v149 = *(v147 + 112);
                    if (v133 < ((*(v150 + 8) - v149) >> 2))
                    {
                      v148 = *(v149 + 4 * v133);
                    }
                  }

                  if (v123)
                  {
                    v103.n128_f32[0] = (*(**(this + 41) + 88))(*(this + 41), v133, 0, v103);
                  }

                  v151 = (1.0 - v197) * (v148 + v103.n128_f32[0]);
                  v152 = *(this + 92) + v151;
                  v153 = *(*(this + 42) + 8 * v133);
                  if (*(this + 73))
                  {
                    v154 = 1.0;
                  }

                  else
                  {
                    v154 = -0.00033333;
                  }

                  *(v153 + 96) = expf(v154);
                  IR::DelayLine<float>::setDelay(v153, v152);
                  v155 = *(*(this + 42) + 8 * v133);
                  v207.__r_.__value_.__r.__words[0] = v136;
                  IR::DelayLine<float>::process(v155, v136, &v207, a7);
                  MEMORY[0x1E12BE5D0](v136, 1, a3[v133], 1, a3[v133], 1, a7);
                  ++v133;
                }

                while (v133 != v135);
                goto LABEL_253;
              }

              if (*(this + 712))
              {
                v111 = v193;
              }

              else
              {
                v111 = __I;
              }

              v191 = *(this + 90);
              v112 = *(this + 182);
              if (*(*(this + 6) + 128))
              {
                if (*(this + 16))
                {
                  v192 = -50;
                  if (!v111 || !a3 || a6 < 2 || !v191 || v112 < 2 || !a5)
                  {
                    goto LABEL_178;
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 51) - *(this + 50)) >> 3) >= 2)
                  {
                    if (*(this + 94) && *(this + 95))
                    {
                      v113 = *(this + 77);
                      if (v113 && *(v113 + 208) == 1)
                      {
                        if (*(v113 + 212))
                        {
                          *&v207.__r_.__value_.__l.__data_ = *a5;
                          goto LABEL_307;
                        }

                        v170 = *(v113 + 209);
                        *&v207.__r_.__value_.__l.__data_ = *a5;
                        if (v170 == 1)
                        {
LABEL_307:
                          v171 = 0;
                          v172 = &v207;
                          v173 = 1;
                          do
                          {
                            v174 = v173;
                            v175 = *(this + 77);
                            if (*(this + 73))
                            {
                              v176 = -1.0;
                            }

                            else
                            {
                              v176 = 3000.0;
                            }

                            v177 = v175[20];
                            v178 = v175[21];
                            while (v177 != v178)
                            {
                              if (*v177)
                              {
                                *(*v177 + 160) = v176;
                              }

                              v177 += 8;
                            }

                            (*(*v175 + 8))(v175, v111, v172, v171, 1, a7, 1.0);
                            (*(**(this + 77) + 24))(*(this + 77), v111, v172->__r_.__value_.__r.__words[0], v171, 0, a7);
                            v173 = 0;
                            v171 = 1;
                            v172 = &v207.__r_.__value_.__r.__words[1];
                          }

                          while ((v174 & 1) != 0);
                          v202.__r_.__value_.__r.__words[0] = v207.__r_.__value_.__l.__size_;
                          v206.__r_.__value_.__r.__words[0] = v207.__r_.__value_.__r.__words[0];
LABEL_318:
                          IR::FixedIntegerDelay<float>::process();
                        }
                      }

                      else
                      {
                        *&v207.__r_.__value_.__l.__data_ = *a5;
                      }

                      v206.__r_.__value_.__r.__words[0] = v111;
                      v202.__r_.__value_.__r.__words[0] = v111;
                      goto LABEL_318;
                    }

                    goto LABEL_292;
                  }

                  goto LABEL_166;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v115 = getAUSMV2Log(void)::gLog;
                if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
                {
LABEL_176:
                  v114 = -10867;
                  goto LABEL_177;
                }

                std::string::basic_string[abi:ne200100]<0>(&v202, "HRTFNFSpatializer");
                v116 = std::string::append(&v202, "::", 2uLL);
                v117 = *&v116->__r_.__value_.__l.__data_;
                v206.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
                *&v206.__r_.__value_.__l.__data_ = v117;
                v116->__r_.__value_.__l.__size_ = 0;
                v116->__r_.__value_.__r.__words[2] = 0;
                v116->__r_.__value_.__r.__words[0] = 0;
                v118 = std::string::append(&v206, "processAccumulatingStereo", 0x19uLL);
                v119 = *&v118->__r_.__value_.__l.__data_;
                v207.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
                *&v207.__r_.__value_.__l.__data_ = v119;
                v118->__r_.__value_.__l.__size_ = 0;
                v118->__r_.__value_.__r.__words[2] = 0;
                v118->__r_.__value_.__r.__words[0] = 0;
                v120 = &v207;
                if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v120 = v207.__r_.__value_.__r.__words[0];
                }

                *buf = 136315138;
                *&buf[4] = v120;
LABEL_300:
                _os_log_debug_impl(&dword_1DDB85000, v115, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
                if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v207.__r_.__value_.__l.__data_);
                }

                v97 = v193;
                if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v206.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v202.__r_.__value_.__l.__data_);
                }

                goto LABEL_176;
              }

              if ((*(this + 16) & 1) == 0)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v115 = getAUSMV2Log(void)::gLog;
                if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_176;
                }

                std::string::basic_string[abi:ne200100]<0>(&v202, "HRTFNFSpatializer");
                v165 = std::string::append(&v202, "::", 2uLL);
                v166 = *&v165->__r_.__value_.__l.__data_;
                v206.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
                *&v206.__r_.__value_.__l.__data_ = v166;
                v165->__r_.__value_.__l.__size_ = 0;
                v165->__r_.__value_.__r.__words[2] = 0;
                v165->__r_.__value_.__r.__words[0] = 0;
                v167 = std::string::append(&v206, "processAccumulatingBCMStereo", 0x1CuLL);
                v168 = *&v167->__r_.__value_.__l.__data_;
                v207.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
                *&v207.__r_.__value_.__l.__data_ = v168;
                v167->__r_.__value_.__l.__size_ = 0;
                v167->__r_.__value_.__r.__words[2] = 0;
                v167->__r_.__value_.__r.__words[0] = 0;
                v169 = &v207;
                if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v169 = v207.__r_.__value_.__r.__words[0];
                }

                *buf = 136315138;
                *&buf[4] = v169;
                goto LABEL_300;
              }

              v192 = -50;
              if (!v111 || !a3 || a6 < 2 || !v191 || v112 < 2 || !a5)
              {
                goto LABEL_178;
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(this + 51) - *(this + 50)) >> 3) < 2)
              {
LABEL_166:
                v114 = -50;
LABEL_177:
                v192 = v114;
                goto LABEL_178;
              }

              if (!*(this + 94) || !*(this + 95))
              {
LABEL_292:
                v114 = -10851;
                goto LABEL_177;
              }

              v164 = *(this + 77);
              if (v164 && *(v164 + 208) == 1)
              {
                if (*(v164 + 212))
                {
                  *&v206.__r_.__value_.__l.__data_ = *a5;
                  goto LABEL_320;
                }

                v179 = *(v164 + 209);
                *&v206.__r_.__value_.__l.__data_ = *a5;
                if (v179 == 1)
                {
LABEL_320:
                  v180 = 0;
                  v181 = &v206;
                  v182 = 1;
                  do
                  {
                    v183 = v182;
                    v184 = *(this + 77);
                    if (*(this + 73))
                    {
                      v185 = -1.0;
                    }

                    else
                    {
                      v185 = 3000.0;
                    }

                    v186 = v184[20];
                    v187 = v184[21];
                    while (v186 != v187)
                    {
                      if (*v186)
                      {
                        *(*v186 + 160) = v185;
                      }

                      v186 += 8;
                    }

                    (*(*v184 + 8))(v184, v111, v181, v180, 1, a7, 1.0);
                    (*(**(this + 77) + 24))(*(this + 77), v111, v181->__r_.__value_.__r.__words[0], v180, 0, a7);
                    v182 = 0;
                    v180 = 1;
                    v181 = &v206.__r_.__value_.__r.__words[1];
                  }

                  while ((v183 & 1) != 0);
                  *buf = v206.__r_.__value_.__l.__size_;
                  v202.__r_.__value_.__r.__words[0] = v206.__r_.__value_.__r.__words[0];
LABEL_331:
                  IR::FixedIntegerDelay<float>::process();
                }
              }

              else
              {
                *&v206.__r_.__value_.__l.__data_ = *a5;
              }

              v202.__r_.__value_.__r.__words[0] = v111;
              *buf = v111;
              goto LABEL_331;
            }

            *(this + 288) = 0;
            v51 = *(this + 40);
            LODWORD(v206.__r_.__value_.__l.__data_) = 0;
            v207.__r_.__value_.__r.__words[0] = &v206;
            atomic_store(LODWORD(v32), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v51 + 96, 0) + 8);
            __dmb(0xBu);
            atomic_store(1u, (v51 + 120));
            v52 = *(this + 40);
            LODWORD(v206.__r_.__value_.__l.__data_) = 1;
            v207.__r_.__value_.__r.__words[0] = &v206;
            atomic_store(LODWORD(v33), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v52 + 96, 1u) + 8);
            __dmb(0xBu);
            atomic_store(1u, (v52 + 120));
            v53 = *(this + 40);
            LODWORD(v206.__r_.__value_.__l.__data_) = 2;
            v207.__r_.__value_.__r.__words[0] = &v206;
            atomic_store(LODWORD(v30), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v53 + 96, 2u) + 8);
            __dmb(0xBu);
            atomic_store(1u, (v53 + 120));
            v54 = *(this + 40);
            v55 = *(*(this + 6) + 136);
            LODWORD(v206.__r_.__value_.__l.__data_) = 7;
            v207.__r_.__value_.__r.__words[0] = &v206;
            atomic_store(COERCE_UNSIGNED_INT(v55), std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v54 + 96, 7u) + 8);
            __dmb(0xBu);
            atomic_store(1u, (v54 + 120));
            v56 = *(this + 76);
            if (v56)
            {
              if (v56[208] == 1)
              {
                v57 = fabsf(*(this + 19)) >= 0.00000011921 || fabsf(*(this + 20)) >= 0.00000011921;
                v64 = *(this + 6);
                v65 = fabsf(*(v64 + 12)) >= 0.00000011921 || fabsf(*(v64 + 16)) >= 0.00000011921;
                (*(*v56 + 56))(v56, v65);
                v66 = *(this + 40);
                if (*(*(this + 76) + 209) == 1)
                {
                  v67 = *(this + 6);
                  v68 = *(v67 + 12);
                  if (v68 < *(v67 + 16))
                  {
                    v68 = *(v67 + 16);
                  }

                  v69 = LODWORD(v68);
                }

                else
                {
                  v69 = 0;
                }

                LODWORD(v206.__r_.__value_.__l.__data_) = 8;
                v207.__r_.__value_.__r.__words[0] = &v206;
                atomic_store(v69, std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v66 + 96, 8u) + 8);
                __dmb(0xBu);
                atomic_store(1u, (v66 + 120));
                SourceExtentProcessor::updateExtentParameters(*(this + 76), *(*(this + 6) + 12), *(*(this + 6) + 16));
                (*(**(this + 76) + 40))(*(this + 76), *(this + 17), v57);
LABEL_77:
                v70 = *(this + 77);
                if (v70)
                {
                  if (v70[208] == 1)
                  {
                    v71 = fabsf(*(this + 19)) >= 0.00000011921 || fabsf(*(this + 20)) >= 0.00000011921;
                    v72 = *(this + 6);
                    v73 = fabsf(*(v72 + 12)) >= 0.00000011921 || fabsf(*(v72 + 16)) >= 0.00000011921;
                    (*(*v70 + 56))(v70, v73);
                    SourceExtentProcessor::updateExtentParameters(*(this + 77), *(*(this + 6) + 12), *(*(this + 6) + 16));
                    (*(**(this + 77) + 40))(*(this + 77), *(this + 17), v71);
                  }

                  else
                  {
                    (*(*v70 + 56))(v70, 0);
                  }
                }

                v74 = *(this + 6);
                *(this + 76) = *(v74 + 12);
                *(this + 21) = *(v74 + 20);
                if (*(this + 589) != 1)
                {
                  goto LABEL_102;
                }

                v75 = cosf(v33 * 0.017453);
                v76 = cosf((-100.0 - v32) * 0.017453);
                v77 = acosf(v76 * v75) * 57.296;
                v78 = cosf((100.0 - v32) * 0.017453);
                v79 = acosf(v78 * v75);
                (*(**(this + 41) + 72))(*(this + 41), 0, 0, v77);
                (*(**(this + 41) + 72))(*(this + 41), 2, 0, v30);
                (*(**(this + 41) + 72))(*(this + 41), 0, 1, v79 * 57.296);
                (*(**(this + 41) + 72))(*(this + 41), 2, 1, v30);
                v80 = v30 + 0.001;
                v81 = v30 + -0.001;
                v82 = *(this + 41);
                if (*(this + 17) == 1)
                {
                  v83 = v80 < 1.0 && v81 > *((*(*this + 352))(this) + 4);
                  (*(*v82 + 56))(v82, v83);
LABEL_96:
                  v85 = 0;
LABEL_101:
                  (*(**(this + 41) + 40))(*(this + 41), *(this + 17), v85);
LABEL_102:
                  *(this + 18) = *(*(this + 6) + 8);
                  goto LABEL_103;
                }

                v84 = v82[209];
                if (v81 <= 1.0)
                {
                  if (v80 >= *((*(*this + 352))(this) + 4) || !v84)
                  {
                    goto LABEL_272;
                  }

                  v82 = *(this + 41);
                }

                else if (!v82[209])
                {
LABEL_272:
                  if (v80 >= 1.0 || v81 <= *((*(*this + 352))(this) + 4) || (v84 & 1) != 0)
                  {
                    goto LABEL_102;
                  }

                  (*(**(this + 41) + 56))(*(this + 41), 1);
                  goto LABEL_96;
                }

                (*(*v82 + 56))(v82, 0);
                v85 = 1;
                goto LABEL_101;
              }

              (*(*v56 + 56))(v56, 0);
            }

            v58 = *(this + 40);
            LODWORD(v206.__r_.__value_.__l.__data_) = 8;
            v207.__r_.__value_.__r.__words[0] = &v206;
            atomic_store(0, std::__tree<std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::__map_value_compare<IR::IRCoordinateType,std::__value_type<IR::IRCoordinateType,std::atomic<float>>,std::less<IR::IRCoordinateType>,true>,std::allocator<std::__value_type<IR::IRCoordinateType,std::atomic<float>>>>::__emplace_unique_key_args<IR::IRCoordinateType,std::piecewise_construct_t const&,std::tuple<IR::IRCoordinateType const&>,std::tuple<>>(v58 + 96, 8u) + 8);
            __dmb(0xBu);
            atomic_store(1u, (v58 + 120));
            goto LABEL_77;
          }

          v34 = 4.0;
        }

        v30 = v30 * v34;
      }

      v35 = __sincosf_stret(v32 * 0.017453);
      v36 = __sincosf_stret(v33 * 0.017453);
      v37 = v36.__cosval * (v35.__sinval * v30);
      v38 = v36.__sinval * v30;
      v39 = v36.__cosval * -(v30 * v35.__cosval);
      v40 = fabsf(v37);
      v41 = fabsf(v36.__sinval * v30);
      v42 = fabsf(v39);
      v43 = fmaxf(v40, fmaxf(v41, v42));
      if (v43 <= 1.8447e19)
      {
        v45 = 1.0;
        if (v43 >= 5.421e-20)
        {
          goto LABEL_38;
        }

        *&v44 = 1.9343e25;
      }

      else
      {
        *&v44 = 5.1699e-26;
      }

      v45 = *&v44;
LABEL_38:
      v46 = sqrtf((((v38 * v45) * (v38 * v45)) + ((v37 * v45) * (v37 * v45))) + ((v39 * v45) * (v39 * v45))) / v45;
      if (v46 != 0.0)
      {
        if (v40 >= v41)
        {
          v47 = v40;
        }

        else
        {
          v47 = v41;
        }

        if (v47 < v42)
        {
          v47 = v42;
        }

        v48 = v47 / v46;
        v37 = v37 * v48;
        v38 = v38 * v48;
        v39 = v39 * v48;
        v43 = fmaxf(fabsf(v37), fmaxf(fabsf(v38), fabsf(v39)));
      }

      if (v43 <= 1.8447e19)
      {
        v50 = 1.0;
        if (v43 >= 5.421e-20)
        {
LABEL_50:
          v30 = sqrtf((((v38 * v50) * (v38 * v50)) + ((v37 * v50) * (v37 * v50))) + ((v39 * v50) * (v39 * v50))) / v50;
          goto LABEL_51;
        }

        *&v49 = 1.9343e25;
      }

      else
      {
        *&v49 = 5.1699e-26;
      }

      v50 = *&v49;
      goto LABEL_50;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v28 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v202, "HRTFNFSpatializer");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v206, &v202, "::");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v207, &v206, "processAccumulating");
      if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = &v207;
      }

      else
      {
        v163 = v207.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v163;
      _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
      if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v207.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }
    }

    return 4294956429;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v26 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v202, "HRTFNFSpatializer");
      v59 = std::string::append(&v202, "::", 2uLL);
      v60 = *&v59->__r_.__value_.__l.__data_;
      v206.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
      *&v206.__r_.__value_.__l.__data_ = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      v61 = std::string::append(&v206, "processAccumulating", 0x13uLL);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v207.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v207.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = &v207;
      if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v207.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v63;
      v204 = 1024;
      v205 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEBUG, "%s: ERROR: wrong number of output channels %d", buf, 0x12u);
      if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v207.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }
}

void HRTFNFSpatializer::RampedGain::processAccumulating(HRTFNFSpatializer::RampedGain *this, const float *__I, float *__O, vDSP_Length __N)
{
  v6 = *this;
  v7 = *(this + 1);
  if (*this == v7)
  {
    if (v7 != 0.0)
    {

      JUMPOUT(0x1E12BE8F0);
    }
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v9 = (v7 - v6) / __N;
    __Start = v6;
    vDSP_vrampmuladd(__I, 1, &__Start, &v9, __O, 1, __N);
  }
}

IR::DynamicIRProcessor *HRTFNFSpatializer::reset(IR::DynamicIRProcessor **this)
{
  IR::DynamicIRProcessor::reset(this[40]);
  v2 = this[76];
  if (v2)
  {
    (*(*v2 + 32))(v2, 1);
  }

  v3 = this[77];
  if (v3)
  {
    (*(*v3 + 32))(v3, 1);
  }

  v4 = this[41];
  if (v4)
  {
    (*(*v4 + 32))(v4, 1);
  }

  v5 = this[42];
  v6 = this[43];
  while (v5 != v6)
  {
    if (*v5)
    {
      IR::DelayLine<float>::reset(*v5);
    }

    ++v5;
  }

  if (this[85])
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  if (this[94])
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  result = this[95];
  if (result)
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  *(this + 17) = 1;
  *(this + 146) = *(this[6] + 82);
  *(this + 148) = -1;
  return result;
}

uint64_t HRTFNFSpatializer::setAuxStereoMixBuffersAndHeadLocking(uint64_t this, float *const *a2, int a3, BOOL *a4, float a5)
{
  *(this + 720) = a2;
  *(this + 728) = a3;
  *(this + 736) = a4;
  *(this + 744) = a5;
  return this;
}

void HRTFNFSpatializer::initialize(HRTFNFSpatializer *this, float a2, unsigned int a3, unsigned int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v7 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "HRTFNFSpatializer");
    v15 = std::string::append(&v20, "::", 2uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v21, "initialize", 0xAuLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v23 = v17->__r_.__value_.__r.__words[2];
    *v22 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = v22;
    if (v23 < 0)
    {
      v19 = v22[0];
    }

    buf[0] = 136315138;
    *&buf[1] = v19;
    _os_log_debug_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%s: Initializing.", buf, 0xCu);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 589) = *(this + 588);
  v9 = *(this + 42);
  v10 = *(this + 43);
  if (v10 != v9)
  {
    do
    {
      std::unique_ptr<IR::DelayLine<float>>::~unique_ptr[abi:ne200100](--v10);
    }

    while (v10 != v9);
    v10 = *(this + 42);
  }

  *(this + 43) = v9;
  if (*(this + 44) - v10 <= 8uLL)
  {
    v24 = this + 336;
    operator new();
  }

  LODWORD(v22[0]) = 0;
  std::vector<float>::assign(this + 47, 2uLL, v22, v8);
  v11 = *(this + 40);
  *v22 = xmmword_1DE09CD90;
  IR::DynamicIRProcessor::initialize(v11, a4, v22, a2);
  if (*(this + 589) == 1)
  {
    operator new();
  }

  v12 = *(this + 5);
  if (v12)
  {
    v13 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v12, kOptionalFeatureBinauralOffRotation);
    v14 = (v13 > 0xFFu) & v13;
  }

  else
  {
    v14 = 0;
  }

  *(this + 712) = v14;
  if (*(this + 589) == 1)
  {
    (*(**(this + 41) + 80))(*(this + 41), 0);
  }

  operator new();
}

void sub_1DDDBA028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<IR::DelayLine<float>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = IR::DelayLine<float>::~DelayLine(v2);
    MEMORY[0x1E12BD160](v3, 0x10B0C4065B77D96);
  }

  return a1;
}

uint64_t *std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F5931B68;
    v3 = (v2 + 184);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (v2 + 160);
    std::vector<std::unique_ptr<IR::IRProcessor>>::__destroy_vector::operator()[abi:ne200100](&v3);
    IR::IRDataAttributes::~IRDataAttributes((v2 + 8));
    return MEMORY[0x1E12BD160](v2, 0x10E1C40B0B4C639);
  }

  return result;
}

uint64_t HRTFNFSpatializer::setElevation(uint64_t this, float a2)
{
  *(*(this + 48) + 4) = a2;
  if (vabds_f32(a2, *(this + 600)) > 0.2)
  {
    *(this + 600) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t HRTFNFSpatializer::setAzimuth(uint64_t this, float a2)
{
  **(this + 48) = a2;
  if (vabds_f32(a2, *(this + 596)) > 0.2)
  {
    *(this + 596) = a2;
    *(this + 288) = 1;
  }

  return this;
}

double HRTFNFSpatializer::setParams(uint64_t a1, uint64_t a2)
{
  Spatializer::setParams(a1, a2);
  v3 = *(a1 + 48);
  result = *v3;
  *(a1 + 596) = *v3;
  return result;
}

void HRTFNFSpatializer::~HRTFNFSpatializer(HRTFNFSpatializer *this)
{
  HRTFNFSpatializer::~HRTFNFSpatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922B80;
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 95, 0);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 94, 0);
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 85, 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 77, 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 76, 0);
  IR::IRDataAttributes::~IRDataAttributes((this + 424));
  v4 = (this + 400);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 47);
  if (v3)
  {
    *(this + 48) = v3;
    operator delete(v3);
  }

  v4 = (this + 336);
  std::vector<std::unique_ptr<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100](this + 41, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](this + 40, 0);
  Spatializer::~Spatializer(this);
}

uint64_t *std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v2 + 104));
    v5 = (v2 + 56);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 48));
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 40));
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 32));
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return MEMORY[0x1E12BD160](v2, 0x1020C408A8CEB38);
  }

  return result;
}

IR::IRProcessor **std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100](IR::IRProcessor **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    IR::IRProcessor::~IRProcessor(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

void sub_1DDDBA5B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1DDDBA6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1E12BD160](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110unique_ptrIN11LeanSpatial17LSFilterProcessorIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    _ZN11LeanSpatial17LSFilterProcessorIDF16_ED2Ev(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t _ZN11LeanSpatial8LSSourceIDF16_E10initializeENS_12LSSamplerateEjNS_8BankModeE(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __assert_rtn("initialize", "LSSource.cpp", 39, "inMaxFramesPerSlice > 0");
  }

  if (a2 != 24000 && a2 != 48000)
  {
    __assert_rtn("initialize", "LSSource.cpp", 40, "inSampleRate == k24kHz || inSampleRate == k48kHz");
  }

  if (a4 >= 3)
  {
    __assert_rtn("initialize", "LSSource.cpp", 41, "inBankMode<kBankModeCount");
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 156) == a2 && *(a1 + 200) == a3 && *(a1 + 196) == a4)
    {
      return 0;
    }

    LSLog = getLSLog();
    if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 192);
      *buf = 67109120;
      v47 = v20;
      _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSSource(#%u) was already initialized with different settings, will reinitialize processors", buf, 8u);
    }
  }

  std::recursive_mutex::lock((a1 + 16));
  *(a1 + 156) = a2;
  *(a1 + 196) = a4;
  *(a1 + 200) = a3;
  if (a4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(a1 + 204) = v10;
  v11 = getLSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 192);
    *buf = 67109120;
    v47 = v19;
    _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "LSSource(#%u): setting up HRIR processor", buf, 8u);
  }

  *buf = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55 = 1;
  v56 = 0u;
  v57 = 0u;
  v58 = 128;
  v59 = 0;
  if (*(a1 + 156))
  {
    v12 = *(a1 + 156);
  }

  else
  {
    v12 = 24000;
  }

  v60 = 0;
  _ZN11LeanSpatial13LSBankStorageIDF16_E19SetupBankAttributesENS_12LSSamplerateERNS_16LSBankAttributesIDF16_EENS_13RenderingTypeE(v12, buf, 0);
  if (!*a1)
  {
    operator new();
  }

  v8 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E10initializeEmNS_8BankModeE(*a1, a3, a4);
  if (!v8)
  {
    v13 = getLSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 192);
      *v31 = 67109120;
      v32 = v21;
      _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "LSSource(#%u): setting up BRIR processor", v31, 8u);
    }

    *v31 = 0;
    v33 = 0;
    v34 = 0;
    *__p = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v40 = 1;
    v41 = 0u;
    v42 = 0u;
    v43 = 128;
    v44 = 0;
    v45 = 0;
    v14 = 24000;
    v15 = *(a1 + 156);
    if (v15 && v15 != 48000)
    {
      v14 = *(a1 + 156);
    }

    _ZN11LeanSpatial13LSBankStorageIDF16_E19SetupBankAttributesENS_12LSSamplerateERNS_16LSBankAttributesIDF16_EENS_13RenderingTypeE(v14, v31, 1);
    v16 = *(a1 + 8);
    if (!v16)
    {
      operator new();
    }

    v8 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E10initializeEmNS_8BankModeE(v16, a3, a4);
    if (!v8)
    {
      *(a1 + 80) = 1;
      v17 = getLSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 192);
        v23 = *(a1 + 156);
        v24[0] = 67109888;
        v24[1] = v22;
        v25 = 1024;
        v26 = v23;
        v27 = 1024;
        v28 = v12;
        v29 = 1024;
        v30 = v14;
        _os_log_debug_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "LSSource(#%u): source initialized at %uHz (HRIR=%uHz, BRIR=%uHz)", v24, 0x1Au);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }

  std::recursive_mutex::unlock((a1 + 16));
  return v8;
}

void sub_1DDDBAB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  MEMORY[0x1E12BD160](v38, 0x10E2C40EE4520C3);
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  std::recursive_mutex::unlock((v37 + 16));
  _Unwind_Resume(a1);
}

void _ZN11LeanSpatial8LSSourceIDF16_E5resetEv(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 16));
  _ZN11LeanSpatial17LSFilterProcessorIDF16_E5resetEv(*a1);
  _ZN11LeanSpatial17LSFilterProcessorIDF16_E5resetEv(*(a1 + 8));

  std::recursive_mutex::unlock((a1 + 16));
}

uint64_t _ZN11LeanSpatial8LSSourceIDF16_E19processAccumulatingEPKDF16_PKPDF16_jS6_jj(uint64_t a1, float16x8_t *a2, void **a3, int a4, void **a5, unsigned int a6, unsigned int a7)
{
  if (a6 != a4)
  {
    return 4294956445;
  }

  if (*(a1 + 80) != 1)
  {
    return 4294956429;
  }

  if (*(a1 + 204) != a6)
  {
    __assert_rtn("processAccumulating", "LSSource.cpp", 128, "inNumOutputs == mNumOutputChannels");
  }

  v13 = std::recursive_mutex::try_lock((a1 + 16));
  if (!v13)
  {
    if (!a6)
    {
      return 0;
    }

    v23 = 2 * a7;
    v24 = a6;
    do
    {
      v25 = *a3++;
      bzero(v25, v23);
      --v24;
    }

    while (v24);
LABEL_49:
    v22 = 0;
    goto LABEL_50;
  }

  if ((*(a1 + 81) & 1) != 0 || *(a1 + 82) == 1)
  {
    *(a1 + 81) = 0;
    v14 = *(a1 + 164);
    v15 = *(a1 + 168);
    v16 = __sincosf_stret(*(a1 + 160) * 0.017453);
    v17 = __sincosf_stret(v14 * 0.017453);
    v18 = *(a1 + 176);
    v19 = vmulq_f32(v18, v18);
    v20 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    if (vaddv_f32(v20) == 0.0)
    {
      v21 = xmmword_1DE097CE0;
    }

    else
    {
      v26 = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0];
      v27 = vrsqrte_f32(v26);
      v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
      v21 = vmulq_n_f32(v18, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]);
    }

    v29 = vmulq_f32(v21, xmmword_1DE09BFF0);
    v30 = vmulq_f32(v21, v21);
    *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    v30.i32[0] = vadd_f32(*v30.i8, vdup_lane_s32(*v30.i8, 1)).u32[0];
    v31 = vrecpe_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrecps_f32(v30.u32[0], v31));
    v33 = vmulq_n_f32(v29, vmul_f32(v32, vrecps_f32(v30.u32[0], v32)).f32[0]);
    v34 = vmulq_f32(v33, xmmword_1DE09BFF0);
    v35 = vnegq_f32(v34);
    v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
    v37 = vrev64q_s32(v34);
    v37.i32[0] = v35.i32[1];
    v37.i32[3] = v35.i32[2];
    v38 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vextq_s8(v34, v35, 8uLL), v16.__sinval * v17.__cosval), vextq_s8(v36, v36, 8uLL), v16.__cosval * v17.__cosval), v37, v17.__sinval);
    v39 = vnegq_f32(v38);
    v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
    v41 = vrev64q_s32(v38);
    v41.i32[0] = v39.i32[1];
    v41.i32[3] = v39.i32[2];
    v75 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v38, v33, 3), v41, v33, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v33.f32, 1), vextq_s8(v40, v40, 8uLL), v33.f32[0]));
    v42 = hypotf(v75.f32[0], v75.f32[1]);
    v74 = atan2f(v75.f32[2], v42);
    v43.f32[0] = atan2f(v75.f32[1], v75.f32[0]);
    v43.f32[1] = v74;
    v76 = vmul_f32(v43, vdup_n_s32(0x42652EE0u));
    v77 = v15;
    _ZN11LeanSpatial17LSFilterProcessorIDF16_E14setCoordinatesERNS_13LSCoordinatesE(*a1, &v76);
    _ZN11LeanSpatial17LSFilterProcessorIDF16_E14setCoordinatesERNS_13LSCoordinatesE(*(a1 + 8), &v76);
  }

  v44 = 1.0;
  v45 = 1.0;
  if (*(a1 + 88) == 1)
  {
    v47 = *(a1 + 168);
    v48 = *(a1 + 92);
    if (v47 >= v48)
    {
      v48 = *(a1 + 168);
    }

    v46 = *(a1 + 104);
    v44 = v46 / powf(v48, *(a1 + 116));
    v50 = *(a1 + 96);
    if (v47 >= v50)
    {
      v50 = v47;
    }

    v49 = *(a1 + 108);
    v45 = v49 / powf(v50, *(a1 + 120));
  }

  if (*(a1 + 85) == 1)
  {
    _S0 = ((v44 * *(a1 + 128)) * *(a1 + 132)) * *(a1 + 144);
    __asm { FCVT            H0, S0 }

    v22 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E7processEPKDF16_PKPDF16_jjDF16_(*a1, a2, a5, a6, a7);
    if (v22)
    {
LABEL_51:
      std::recursive_mutex::unlock((a1 + 16));
      return v22;
    }

    v56 = *a1;
    v57 = *(*a1 + 568);
    if (v57 < _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(*a1))
    {
      LODWORD(v58) = *(v56 + 556);
      v58 = v58 >= a6 ? a6 : v58;
      if (v58)
      {
        for (i = 0; i != v58; ++i)
        {
          if (a7)
          {
            v60 = a5[i];
            v61 = a3[i];
            v62 = a7;
            do
            {
              v63 = *v60++;
              *v61 = *v61 + v63;
              ++v61;
              --v62;
            }

            while (v62);
          }
        }
      }
    }
  }

  if (*(a1 + 86) != 1)
  {
    goto LABEL_49;
  }

  _S0 = ((v45 * *(a1 + 128)) * *(a1 + 136)) * *(a1 + 148);
  __asm { FCVT            H0, S0 }

  v22 = _ZN11LeanSpatial17LSFilterProcessorIDF16_E7processEPKDF16_PKPDF16_jjDF16_(*(a1 + 8), a2, a5, a6, a7);
  if (v22)
  {
    goto LABEL_50;
  }

  v65 = *(a1 + 8);
  v66 = *(v65 + 568);
  if (v66 >= _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(v65))
  {
    goto LABEL_49;
  }

  LODWORD(v67) = *(v65 + 556);
  v67 = v67 >= a6 ? a6 : v67;
  if (!v67)
  {
    goto LABEL_49;
  }

  for (j = 0; j != v67; ++j)
  {
    if (a7)
    {
      v69 = a5[j];
      v70 = a3[j];
      v71 = a7;
      do
      {
        v72 = *v69++;
        *v70 = *v70 + v72;
        ++v70;
        --v71;
      }

      while (v71);
    }

    v22 = 0;
  }

LABEL_50:
  if (v13)
  {
    goto LABEL_51;
  }

  return v22;
}

void EnvelopeDetector::SetAttackTime(EnvelopeDetector *this, float a2)
{
  *(this + 3) = a2;
  if (*(this + 5) == 3)
  {
    v4 = 1.0 - exp(-1.0 / (a2 * 0.001 * *this));
  }

  else
  {
    if (*(this + 24) == 1)
    {
      v5 = -0.435333936;
    }

    else
    {
      v5 = -2.0;
    }

    v4 = exp(v5 / ((*this * a2) * 0.001));
  }

  v6 = v4;
  *(this + 1) = v6;
  if (*(this + 32) == 1)
  {
    *(this + 2) = v6;
    *(this + 4) = a2;
  }
}

void EnvelopeDetector::SetReleaseTime(EnvelopeDetector *this, float a2)
{
  *(this + 4) = a2;
  if (*(this + 5) == 3)
  {
    v4 = 1.0 - exp(-1.0 / (a2 * 0.001 * *this));
  }

  else
  {
    if (*(this + 24) == 1)
    {
      v5 = -0.435333936;
    }

    else
    {
      v5 = -2.0;
    }

    v4 = exp(v5 / ((*this * a2) * 0.001));
  }

  v6 = v4;
  *(this + 2) = v6;
  if (*(this + 32) == 1)
  {
    *(this + 1) = v6;
    *(this + 3) = a2;
  }
}

void CADeprecated::CAAutoFree<float>::alloc(void **a1, uint64_t a2, int a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(4 * a2, 0xAFA3E4BEuLL);
    v8 = v7;
    if (!a2 || v7)
    {
      bzero(v7, 4 * a2);
      goto LABEL_9;
    }

LABEL_10:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v9 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  v8 = v9;
  if (a2 && !v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  *a1 = v8;
}

void ERDiffusionFilter::ERDiffusionFilter(uint64_t a1, int a2, uint64_t a3, float a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a3;
  *(a1 + 64) = a2;
  operator new();
}

void sub_1DDDBB64C(_Unwind_Exception *a1)
{
  v6 = v3;
  MEMORY[0x1E12BD160](v6, 0x1080C40C92309C1);
  std::recursive_mutex::~recursive_mutex((v4 + 64));
  v8 = *v5;
  if (*v5)
  {
    *(v4 + 40) = v8;
    operator delete(v8);
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100]((v4 + 8), 0);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v4, 0);
  MEMORY[0x1E12BD160](v4, 0x10A0C40FAD21E7CLL);
  v9 = *(v1 + 24);
  if (v9)
  {
    *(v1 + 32) = v9;
    operator delete(v9);
  }

  std::unique_ptr<TunableIntegerDelay>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<ScatteringFilter>::reset[abi:ne200100]((v1 + 8), 0);
  std::unique_ptr<ComplementaryFilters>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

vDSP_biquad_SetupStruct **std::unique_ptr<ComplementaryFilters>::reset[abi:ne200100](vDSP_biquad_SetupStruct ***a1, vDSP_biquad_SetupStruct **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ComplementaryFilters::~ComplementaryFilters(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<ScatteringFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::recursive_mutex::~recursive_mutex((v2 + 184));
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 96);
    if (v4)
    {
      *(v2 + 104) = v4;
      operator delete(v4);
    }

    for (i = 56; i != 24; i -= 8)
    {
      std::unique_ptr<AllPassComb>::reset[abi:ne200100]((v2 + i), 0);
    }

    do
    {
      std::unique_ptr<AllPassComb>::reset[abi:ne200100]((v2 + i), 0);
      i -= 8;
    }

    while (i != -8);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<TunableIntegerDelay>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::recursive_mutex::~recursive_mutex((v2 + 64));
    v3 = *(v2 + 32);
    if (v3)
    {
      *(v2 + 40) = v3;
      operator delete(v3);
    }

    std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100]((v2 + 8), 0);
    std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<AllPassComb>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ScatteringFilter::initializeFilter(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2 == 1)
  {
    v8 = 0;
    v9 = ((*(a1 + 168) / *(a1 + 172)) * *(a1 + 164)) / 1.4519;
    v10 = (a1 + 80);
    v11 = 4;
    do
    {
      v12 = vcvtas_u32_f32((v9 * *(a1 + 160)) / powf(3.1416, --v11));
      if (v12 <= 1)
      {
        v12 = 1;
      }

      *(v10 - 4) = v12;
      if (v8 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8;
      }

      v14 = 1.0 / pow(1.41421354, v13);
      *v10++ = v14;
      ++v8;
    }

    while (v11);
  }

  else if (!v2)
  {
    v3 = (((*(a1 + 168) * 14.0) / *(a1 + 172)) * *(a1 + 164)) * 0.11552;
    v4 = (a1 + 80);
    v5 = -4;
    do
    {
      v6 = vcvtas_u32_f32((v3 * *(a1 + 160)) / powf(3.1416, (v5 + 4)));
      if (v6 <= 1)
      {
        v6 = 1;
      }

      *(v4 - 4) = v6;
      *v4++ = 1060439283;
    }

    while (!__CFADD__(v5++, 1));
  }

  operator new();
}

void std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(void vdsp::biquad_DestroySetup<float>(vdsp::detail_biquad_Setup<float>::type))>>::reset[abi:ne200100](vDSP_biquad_SetupStruct **a1, vDSP_biquad_SetupStruct *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_biquad_DestroySetup(v3);
  }
}

void ComplementaryFilters::updateFilters(ComplementaryFilters *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = __exp10(*(this + 28) / 40.0);
  v3 = __sincos_stret(*(this + 27) * 6.28318531 / *(this + 26));
  v4 = sqrt(v2);
  v5 = (v4 + v4) * v3.__sinval * 0.707106781;
  v6 = v2 + 1.0;
  v7 = v2 + -1.0;
  v8 = v2 + 1.0 - (v2 + -1.0) * v3.__cosval;
  v9 = v2 + 1.0 + (v2 + -1.0) * v3.__cosval;
  v10 = v2 * (v9 + v5) / (v8 + v5);
  v11 = v2 * -2.0 * (v2 + -1.0 + (v2 + 1.0) * v3.__cosval) / (v8 + v5);
  v12 = v2 * (v9 - v5) / (v8 + v5);
  v13 = (v7 - v6 * v3.__cosval + v7 - v6 * v3.__cosval) / (v8 + v5);
  v14 = (v8 - v5) / (v8 + v5);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  vDSP_biquad_SetCoefficientsDouble(*this, &v19, 0, 1uLL);
  if (*(this + 28) == 0.0)
  {
    v22 = 0.0;
    v23 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  else
  {
    if (-(v14 - v10 * v12) >= 0.0)
    {
      v18 = -1.0;
    }

    else
    {
      v18 = 1.0;
    }

    v15 = sqrt(-(v10 * v12 - v14) / v18);
    v16 = -(v11 * v12 + v10 * v11 - (v13 + v13 * v14)) / (v15 + v15);
    v17 = v18 * v15;
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  vDSP_biquad_SetCoefficientsDouble(*(this + 1), &v19, 0, 1uLL);
}

void ComplementaryFilters::~ComplementaryFilters(vDSP_biquad_SetupStruct **this)
{
  if (*(this + 88) == 1)
  {
    std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(void vdsp::biquad_DestroySetup<float>(vdsp::detail_biquad_Setup<float>::type))>>::reset[abi:ne200100](this, 0);
    std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(void vdsp::biquad_DestroySetup<float>(vdsp::detail_biquad_Setup<float>::type))>>::reset[abi:ne200100](this + 1, 0);
    *(this + 88) = 0;
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }

  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(void vdsp::biquad_DestroySetup<float>(vdsp::detail_biquad_Setup<float>::type))>>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(void vdsp::biquad_DestroySetup<float>(vdsp::detail_biquad_Setup<float>::type))>>::reset[abi:ne200100](this, 0);
}

void ERDiffusionFilter::setSpecularAttenuation(float **this, float a2)
{
  if (a2 < 0.0)
  {
    __assert_rtn("setSpecularAttenuation", "ERDiffusionFilter.cpp", 34, "inAttenuation>=0.f");
  }

  v3 = *this;
  v4 = -a2;
  v5 = a2 <= 60.0;
  v6 = -60.0;
  if (v5)
  {
    v6 = v4;
  }

  if (v3[28] != v6)
  {
    v3[28] = v6;

    ComplementaryFilters::updateFilters(v3);
  }
}

void ERDiffusionFilter::setDiffusionCutoff(ComplementaryFilters *this, float a2, float a3)
{
  v3 = a2 * 0.5;
  if (v3 >= a3)
  {
    v3 = a3;
  }

  if (a3 < 20.0)
  {
    v3 = 20.0;
  }

  if (*(this + 27) != v3)
  {
    *(this + 27) = v3;
    ComplementaryFilters::updateFilters(this);
  }
}

void ERDiffusionFilter::process(ERDiffusionFilter *this, const float *__X, float *a3, vDSP_Length __N)
{
  v4 = __N;
  v8 = *(this + 3);
  v9 = &v8[*(this + 7)];
  v10 = *this;
  v11 = __N;
  vDSP_biquad(**this, *(*this + 16), __X, 1, v8, 1, __N);
  vDSP_biquad(*(v10 + 8), *(v10 + 40), __X, 1, v9, 1, v11);
  v12 = *(this + 1);
  if (std::recursive_mutex::try_lock((v12 + 184)))
  {
    if (*(v12 + 144) == 1)
    {
      if (*(v12 + 145) == 1)
      {
        ScatteringFilter::initializeFilter(v12);
      }

      ScatteringFilter::initializeFilter(v12);
    }

    v13 = 0;
    v14 = *(v12 + 96);
    do
    {
      if (v13 == 24)
      {
        v14 = a3;
      }

      AllPassComb::process(*(v12 + v13), v9, v14, v4);
      v9 = *(v12 + 96);
      v13 += 8;
    }

    while (v13 != 32);
    *(v12 + 145) = 0;
    std::recursive_mutex::unlock((v12 + 184));
  }

  v15 = *(this + 1);
  v16 = *(this + 2);
  if (v15[11].i32[0] == 1)
  {
    v17 = vaddvq_s32(v15[4]);
  }

  else
  {
    v17 = 0;
  }

  if (*(v16 + 16) != v17)
  {
    *(v16 + 16) = v17;
    *(v16 + 56) = 1;
  }

  if (v17 && std::recursive_mutex::try_lock((v16 + 64)))
  {
    if (*(v16 + 56) == 1)
    {
      if (*(v16 + 57) == 1)
      {
        operator new();
      }

      operator new();
    }

    IR::FixedIntegerDelay<float>::process();
  }

  JUMPOUT(0x1E12BE5D0);
}

void ecSUMO::fcn_set_gamma(ecSUMO *this, float a2, unsigned int a3)
{
  v5 = 0.0;
  v6 = a2 > 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v6)
  {
    v11 = -(*(this + 18) / *(this + 19));
    v12 = v11 / a2;
    v5 = expf(v12);
    v7 = sqrtf(v5);
    v8 = 1.0 / v7;
    v13 = v11 / (a3 * a2);
    v14 = expf(v13);
    *(this + 2) = v14;
    v9 = 1.0 / sqrtf(v14);
  }

  *(this + 1) = v5;
  *(this + 3) = v7;
  *(this + 4) = v8;
  *(this + 5) = v9;
}

uint64_t ecSUMO::ec_proc(ecSUMO *this, const AudioBufferList *a2, const AudioBufferList *a3, const AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7, AudioBufferList *a8)
{
  v228 = 0;
  v227 = 0.0;
  bzero(*(this + 19), 4 * *(this + 20));
  if (*(this + 15))
  {
    v12 = 0;
    v13 = 0;
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      v15 = *p_mData;
      p_mData += 2;
      memcpy(*(*(*(this + 88) + v12) + 24 * *(this + 29)), v15, 4 * *(this + 18));
      memcpy(*(*(this + 106) + v12), *(*(this + 103) + v12), 4 * *(this + 18));
      memcpy((*(*(this + 103) + v12) + 4 * *(this + 36)), v15, 4 * *(this + 18));
      memmove(*(*(this + 103) + v12), (*(*(this + 103) + v12) + 4 * *(this + 18)), 4 * *(this + 36));
      ecSUMO::fcn_wola_analysis_fb(this, *(this + 169), (*(this + 88) + v12), this + 34, this + 49, (*(this + 109) + v12), *(this + 22), *(this + 23), *(this + 14));
      memcpy(**(*(this + 115) + v12), *(*(this + 109) + v12), 8 * *(this + 24));
      ++v13;
      v12 += 24;
    }

    while (v13 < *(this + 15));
  }

  if (*(this + 17))
  {
    v16 = 0;
    v17 = 0;
    v18 = &a4->mBuffers[0].mData;
    do
    {
      v19 = *v18;
      v18 += 2;
      memcpy(*(*(*(this + 91) + v16) + 24 * *(this + 29)), v19, 4 * *(this + 18));
      ecSUMO::fcn_wola_analysis_fb(this, *(this + 169), (*(this + 91) + v16), this + 34, this + 49, (*(this + 112) + v16), *(this + 22), *(this + 23), *(this + 14));
      ++v17;
      v16 += 24;
    }

    while (v17 < *(this + 17));
  }

  if (*(this + 16))
  {
    v20 = 0;
    mBuffers = a3->mBuffers;
    while (1)
    {
      memcpy(*(*(*(this + 85) + 24 * v20) + 24 * *(this + 29)), mBuffers[v20].mData, 4 * *(this + 18));
      if (*(this + 129) != 1)
      {
        break;
      }

      if (*(this + 34) != 1)
      {
        v22 = (*(this + 34) - 1) - 1;
        v23 = 24 * (*(this + 34) - 1);
        do
        {
          v24 = v22;
          v25 = *(*(this + 160) + 24 * v20);
          memcpy(*(v25 + v23), *(v25 + 24 * v22--), 8 * *(this + 24));
          v23 -= 24;
        }

        while (v24);
      }

      ecSUMO::fcn_wola_analysis_fb(this, *(this + 169), (*(this + 85) + 24 * v20), this + 34, this + 49, *(*(this + 160) + 24 * v20), *(this + 22), *(this + 23), *(this + 14));
      if (v20 >= *(this + 17) >> 1)
      {
        memcpy(**(*(this + 121) + 24 * v20), **(*(this + 160) + 24 * v20), 8 * *(this + 24));
        LODWORD(__A.realp) = 1065353216;
        v26 = *(*(this + 130) + 24 * v20);
        v27 = (2 * *(this + 24));
        p_A = &__A;
        goto LABEL_17;
      }

      memcpy(*(*(this + 163) + 24 * v20), *(*(this + 109) + 24 * (*(this + 15) + ~v20)), 8 * *(this + 24));
      memcpy(**(*(this + 121) + 24 * v20), *(*(this + 112) + 24 * (*(this + 17) + ~v20)), 8 * *(this + 24));
      memcpy(*(*(this + 130) + 24 * v20), *(*(this + 112) + 24 * v20), 8 * *(this + 24));
LABEL_18:
      if (++v20 >= *(this + 16))
      {
        goto LABEL_19;
      }
    }

    memcpy(**(*(this + 121) + 24 * v20), *(*(this + 112) + 24 * v20), 8 * *(this + 24));
    HIDWORD(v228) = 1065353216;
    v26 = *(*(this + 130) + 24 * v20);
    v27 = (2 * *(this + 24));
    p_A = &v228 + 1;
LABEL_17:
    vDSP_vfill(p_A, v26, 1, v27);
    goto LABEL_18;
  }

LABEL_19:
  if (*(this + 20))
  {
    v29 = 0;
    v211 = 0;
    do
    {
      if (*(this + 129) == 1)
      {
        if (v29 < *(this + 17) >> 1)
        {
          v30 = *(this + 24);
          v216.realp = *(*(this + 130) + 24 * v29);
          v216.imagp = &v216.realp[v30];
          v31 = *(this + 121);
          v32 = (**(v31 + 24 * v29) + 4 * v30);
          v215.realp = **(v31 + 24 * v29);
          v215.imagp = v32;
          MEMORY[0x1E12BE940](**(v31 + 24 * v29), 1, this + 120, **(v31 + 24 * v29), 1, (2 * v30));
          MEMORY[0x1E12BE940](*(*(this + 130) + 24 * v29), 1, this + 120, *(*(this + 130) + 24 * v29), 1, (2 * *(this + 24)));
          vDSP_zvmags(&v216, 1, *(this + 40), 1, *(this + 24));
          vDSP_zvmags(&v215, 1, (*(this + 40) + 4 * *(this + 24)), 1, *(this + 24));
          MEMORY[0x1E12BE9A0](*(this + 40), 1, *(this + 40) + 4 * *(this + 24), 1, *(this + 43), 1);
          vDSP_vabs(*(this + 43), 1, *(this + 43), 1, *(this + 24));
          MEMORY[0x1E12BE5D0](*(this + 40), 1, *(this + 40) + 4 * *(this + 24), 1, *(this + 43) + 4 * *(this + 24), 1);
          v33 = *(this + 43) + 4 * *(this + 24);
          MEMORY[0x1E12BE8A0](v33, 1, this + 108, v33, 1);
          vDSP_vdiv((*(this + 43) + 4 * *(this + 24)), 1, *(this + 43), 1, *(this + 43), 1, *(this + 24));
          LODWORD(__A.realp) = *(this + 24);
          vvsqrtf((*(this + 43) + 4 * LODWORD(__A.realp)), *(this + 43), &__A);
          LODWORD(__C.realp) = 1065353216;
          vDSP_vclip((*(this + 43) + 4 * *(this + 24)), 1, this + 27, &__C, *(this + 43), 1, *(this + 24));
          memcpy(*(*(this + 130) + 24 * v29), *(this + 43), 4 * *(this + 24));
          memcpy((*(*(this + 130) + 24 * v29) + 4 * *(this + 24)), *(this + 43), 4 * *(this + 24));
        }

        MEMORY[0x1E12BE7F0](**(*(this + 121) + 24 * v29), 1, *(*(this + 130) + 24 * v29), 1, **(*(this + 121) + 24 * v29), 1, (2 * *(this + 24)));
      }

      memcpy(**(*(this + 127) + 24 * v29), **(*(this + 121) + 24 * v29), 4 * *(this + 24));
      memcpy((**(*(this + 127) + 24 * v29) + 4 * (2 * *(this + 24))), (**(*(this + 121) + 24 * v29) + 4 * *(this + 24)), 4 * *(this + 24));
      memcpy((**(*(this + 127) + 24 * v29) + 4 * *(this + 24)), **(*(this + 121) + 24 * v29), 4 * *(this + 24));
      memcpy((**(*(this + 127) + 24 * v29) + 4 * (3 * *(this + 24))), (**(*(this + 121) + 24 * v29) + 4 * *(this + 24)), 4 * *(this + 24));
      v34 = *(this + 31);
      *(v34 + 4 * v29) = 0;
      if (*(this + 14) == 1)
      {
        v35 = 0.0;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        v38 = *(this + 18);
        do
        {
          vDSP_svesq(*(*(*(this + 85) + 24 * v29) + v36), 1, &v228 + 1, v38);
          v39 = *(this + 14);
          v38 = *(this + 18);
          v34 = *(this + 31);
          v35 = *(v34 + 4 * v29) + (*(&v228 + 1) / (v38 * v39));
          *(v34 + 4 * v29) = v35;
          ++v37;
          v36 += 24;
        }

        while (v37 < (v39 - 1));
      }

      v40 = *(this + 22);
      v41 = *(v40 + 8 * (v29 >> 6));
      *(v40 + 8 * (v29 >> 6)) = v41 | (1 << v29);
      v42 = v35 + *(this + 27);
      *(v34 + 4 * v29) = v42;
      if ((log10f(v42) * 10.0) > *(this + 10))
      {
        *(*(this + 19) + 4 * v211++) = v29;
        *(v40 + 8 * (v29 >> 6)) = v41 & ~(1 << v29);
      }

      vDSP_vclr(a7->mBuffers[v29++].mData, 1, *(this + 18));
    }

    while (v29 < *(this + 20));
    v43 = *(this + 15);
    v44 = v211;
    if (v211)
    {
      *(this + 128) = 1;
      if ((*(this + 129) & 1) == 0)
      {
        v77 = *(this + 35);
        if (v43 < v77)
        {
          v77 = v43;
        }

        v208 = v77;
        goto LABEL_85;
      }

      LODWORD(v45) = *(this + 17);
      v46 = v43 - (v45 >> 1);
      if (v46 >= *(this + 35))
      {
        v46 = *(this + 35);
      }

      v208 = v46;
      if (*(this + 149))
      {
        LODWORD(v226.realp) = 0;
        LODWORD(v225.realp) = 0;
        LODWORD(v224.realp) = 0;
        if (v45 < 2)
        {
          goto LABEL_82;
        }

        v47 = 0;
        do
        {
          vDSP_vclr(*(this + 61), 1, (2 * *(this + 24)));
          v48 = *(this + 24);
          __A.realp = *(this + 61);
          __A.imagp = &__A.realp[v48];
          v49 = *(this + 163);
          __C.realp = *(v49 + 24 * v47);
          __C.imagp = &__C.realp[v48];
          if (*(this + 34))
          {
            v50 = 0;
            v51 = 0;
            do
            {
              __N = *(this + 24);
              __D.realp = *(*(*(this + 118) + 24 * v47) + v50);
              __D.imagp = &__D.realp[__N];
              v232.realp = *(*(*(this + 160) + 24 * v47) + v50);
              v232.imagp = &v232.realp[__N];
              __B.realp = *(*(*(this + 154) + 24 * v47) + v50);
              __B.imagp = &__B.realp[__N];
              vDSP_zvma(&v232, 1, &__B, 1, &__C, 1, &__D, 1, __N);
              v53 = *(this + 24);
              v231.realp = *(this + 58);
              v231.imagp = &v231.realp[v53];
              v230.realp = *(this + 79);
              v230.imagp = &v230.realp[v53];
              vDSP_zvmags(&__B, 1, *(this + 55), 1, v53);
              *&v226.realp = 1.0 - *(this + 2);
              v54 = *(*(*(this + 151) + 24 * v47) + v50);
              MEMORY[0x1E12BE8F0](*(this + 55), 1, &v226, v54, 1, v54, 1, *(this + 24));
              v55 = *(*(*(this + 151) + 24 * v47) + v50);
              MEMORY[0x1E12BE940](v55, 1, this + 20, v55, 1, *(this + 24));
              vDSP_zrvmul(&v232, 1, *(*(*(this + 151) + 24 * v47) + v50), 1, &v231, 1, *(this + 24));
              LODWORD(v226.realp) = 1120403456;
              MEMORY[0x1E12BE940](v231.realp, 1, &v226, v231.realp, 1, (2 * *(this + 24)));
              vDSP_zvmags(&v231, 1, *(this + 61), 1, *(this + 24));
              LODWORD(v226.realp) = 1065353216;
              MEMORY[0x1E12BE8A0](*(this + 61), 1, &v226, *(this + 73), 1, *(this + 24));
              LODWORD(v223.realp) = *(this + 24);
              vvsqrtf(*(this + 73), *(this + 73), &v223);
              vDSP_vthr(*(this + 73), 1, this + 6, *(this + 73), 1, *(this + 24));
              LODWORD(v226.realp) = 1065353216;
              vDSP_svdiv(&v226, *(this + 73), 1, *(this + 76), 1, *(this + 24));
              vDSP_zrvmul(&v231, 1, *(this + 76), 1, &v230, 1, *(this + 24));
              v56 = *(this + 24);
              v229.realp = *(*(*(this + 157) + 24 * v47) + v50);
              v229.imagp = &v229.realp[v56];
              vDSP_zrvmul(&v230, 1, *(*(*(this + 151) + 24 * v47) + v50), 1, &v229, 1, v56);
              v57 = *(*(*(this + 151) + 24 * v47) + v50);
              MEMORY[0x1E12BE7F0](v57, 1, *(this + 76), 1, v57, 1, *(this + 24));
              LODWORD(v226.realp) = -1027080192;
              MEMORY[0x1E12BE940](*(this + 76), 1, &v226, *(this + 73), 1, *(this + 24));
              vDSP_zrvmul(&v229, 1, *(this + 73), 1, &v229, 1, *(this + 24));
              vDSP_zvconj(&v229, 1, &v229, 1, *(this + 24));
              vDSP_zvma(&v229, 1, &__D, 1, &__B, 1, &__B, 1, *(this + 24));
              vDSP_zvma(&v232, 1, &__B, 1, &__C, 1, &__D, 1, *(this + 24));
              ++v51;
              v50 += 24;
            }

            while (v51 < *(this + 34));
            v49 = *(this + 163);
            LODWORD(v48) = *(this + 24);
          }

          vDSP_svesq(*(v49 + 24 * v47), 1, &v225, (2 * v48));
          vDSP_svesq(**(*(this + 118) + 24 * v47), 1, &v224, (2 * *(this + 24)));
          if (*(this + 34) < 2u)
          {
            v58 = 0;
            v61 = *&v224.realp;
          }

          else
          {
            v58 = 0;
            v59 = 24;
            v60 = 1;
            do
            {
              vDSP_svesq(*(*(*(this + 118) + 24 * v47) + v59), 1, &v226, (2 * *(this + 24)));
              v61 = *&v224.realp;
              if (*&v226.realp < *&v224.realp)
              {
                LODWORD(v224.realp) = v226.realp;
                v58 = v60;
                v61 = *&v226.realp;
              }

              ++v60;
              v59 += 24;
            }

            while (v60 < *(this + 34));
          }

          v62 = *(this + 24);
          __D.realp = *(*(*(this + 118) + 24 * v47) + 24 * v58);
          __D.imagp = &__D.realp[v62];
          if ((*(this + 8) * v61) >= *&v225.realp)
          {
            LODWORD(v226.realp) = *(this + 6);
            vDSP_zvsub(&__C, 1, &__D, 1, &__A, 1, v62);
            vDSP_zvmags(&__A, 1, *(this + 58), 1, *(this + 24));
            vDSP_zvmags(&__D, 1, (*(this + 58) + 4 * *(this + 24)), 1, *(this + 24));
            vDSP_vthr((*(this + 58) + 4 * *(this + 24)), 1, this + 6, (*(this + 58) + 4 * *(this + 24)), 1, *(this + 24));
            v63 = *(this + 58);
            v64 = v63 + 4 * *(this + 24);
            MEMORY[0x1E12BE5D0](v63, 1, v64, 1, v64, 1);
            vDSP_vdiv((*(this + 58) + 4 * *(this + 24)), 1, *(this + 58), 1, *(this + 55), 1, *(this + 24));
            for (i = 0; i != 4; ++i)
            {
              v66 = **(*(this + 127) + 24 * v47) + 4 * (*(this + 24) * i);
              MEMORY[0x1E12BE7F0](*(this + 55), 1, v66, 1, v66, 1);
              v67 = **(*(this + 127) + 24 * v47) + 4 * (*(this + 24) * i);
              MEMORY[0x1E12BE8A0](v67, 1, this + 24, v67, 1);
            }
          }

          ++v47;
          v45 = *(this + 17);
        }

        while (v47 < v45 >> 1);
      }

      else
      {
        LODWORD(v226.realp) = 0;
        LODWORD(v225.realp) = 0;
        LODWORD(v224.realp) = 0;
        if (v45 < 2)
        {
          goto LABEL_82;
        }

        v78 = 0;
        do
        {
          vDSP_vclr(*(this + 61), 1, (2 * *(this + 24)));
          v79 = *(this + 24);
          __A.realp = *(this + 61);
          __A.imagp = &__A.realp[v79];
          __C.realp = *(*(this + 163) + 24 * v78);
          __C.imagp = &__C.realp[v79];
          __D.realp = **(*(this + 118) + 24 * v78);
          __D.imagp = &__D.realp[v79];
          if (*(this + 34))
          {
            v80 = 0;
            v81 = 0;
            do
            {
              v82 = *(this + 24);
              v232.realp = *(*(*(this + 160) + 24 * v78) + v80);
              v232.imagp = &v232.realp[v82];
              __B.realp = *(*(*(this + 154) + 24 * v78) + v80);
              __B.imagp = &__B.realp[v82];
              vDSP_zvma(&v232, 1, &__B, 1, &__A, 1, &__A, 1, v82);
              ++v81;
              v80 += 24;
            }

            while (v81 < *(this + 34));
            v79 = *(this + 24);
          }

          vDSP_zvadd(&__C, 1, &__A, 1, &__D, 1, v79);
          if (*(this + 34))
          {
            v83 = 0;
            v84 = 0;
            do
            {
              v85 = *(this + 24);
              v232.realp = *(*(*(this + 160) + 24 * v78) + v83);
              v232.imagp = &v232.realp[v85];
              __B.realp = *(*(*(this + 154) + 24 * v78) + v83);
              __B.imagp = &__B.realp[v85];
              v231.realp = *(this + 58);
              v231.imagp = &v231.realp[v85];
              v230.realp = *(this + 79);
              v230.imagp = &v230.realp[v85];
              vDSP_zvmags(&__B, 1, *(this + 55), 1, v85);
              *&v226.realp = 1.0 - *(this + 2);
              v86 = *(*(*(this + 151) + 24 * v78) + v83);
              MEMORY[0x1E12BE8F0](*(this + 55), 1, &v226, v86, 1, v86, 1, *(this + 24));
              v87 = *(*(*(this + 151) + 24 * v78) + v83);
              MEMORY[0x1E12BE940](v87, 1, this + 20, v87, 1, *(this + 24));
              vDSP_zrvmul(&v232, 1, *(*(*(this + 151) + 24 * v78) + v83), 1, &v231, 1, *(this + 24));
              LODWORD(v226.realp) = 1120403456;
              MEMORY[0x1E12BE940](v231.realp, 1, &v226, v231.realp, 1, (2 * *(this + 24)));
              vDSP_zvmags(&v231, 1, *(this + 61), 1, *(this + 24));
              LODWORD(v226.realp) = 1065353216;
              MEMORY[0x1E12BE8A0](*(this + 61), 1, &v226, *(this + 73), 1, *(this + 24));
              LODWORD(v223.realp) = *(this + 24);
              vvsqrtf(*(this + 73), *(this + 73), &v223);
              vDSP_vthr(*(this + 73), 1, this + 6, *(this + 73), 1, *(this + 24));
              LODWORD(v226.realp) = 1065353216;
              vDSP_svdiv(&v226, *(this + 73), 1, *(this + 76), 1, *(this + 24));
              vDSP_zrvmul(&v231, 1, *(this + 76), 1, &v230, 1, *(this + 24));
              v88 = *(this + 24);
              v229.realp = *(*(*(this + 157) + 24 * v78) + v83);
              v229.imagp = &v229.realp[v88];
              vDSP_zrvmul(&v230, 1, *(*(*(this + 151) + 24 * v78) + v83), 1, &v229, 1, v88);
              v89 = *(*(*(this + 151) + 24 * v78) + v83);
              MEMORY[0x1E12BE7F0](v89, 1, *(this + 76), 1, v89, 1, *(this + 24));
              LODWORD(v226.realp) = -1027080192;
              MEMORY[0x1E12BE940](*(this + 76), 1, &v226, *(this + 73), 1, *(this + 24));
              vDSP_zrvmul(&v229, 1, *(this + 73), 1, &v229, 1, *(this + 24));
              vDSP_zvconj(&v229, 1, &v229, 1, *(this + 24));
              vDSP_zvma(&v229, 1, &__D, 1, &__B, 1, &__B, 1, *(this + 24));
              ++v84;
              v83 += 24;
            }

            while (v84 < *(this + 34));
          }

          vDSP_vclr(*(this + 61), 1, (2 * *(this + 24)));
          if (*(this + 34))
          {
            v90 = 0;
            v91 = 0;
            do
            {
              v92 = *(this + 24);
              v232.realp = *(*(*(this + 160) + 24 * v78) + v90);
              v232.imagp = &v232.realp[v92];
              __B.realp = *(*(*(this + 154) + 24 * v78) + v90);
              __B.imagp = &__B.realp[v92];
              vDSP_zvma(&v232, 1, &__B, 1, &__A, 1, &__A, 1, v92);
              ++v91;
              v90 += 24;
            }

            while (v91 < *(this + 34));
          }

          vDSP_zvadd(&__C, 1, &__A, 1, &__D, 1, *(this + 24));
          vDSP_svesq(*(*(this + 163) + 24 * v78), 1, &v225, (2 * *(this + 24)));
          vDSP_svesq(**(*(this + 118) + 24 * v78), 1, &v224, (2 * *(this + 24)));
          if ((*(this + 8) * *&v224.realp) >= *&v225.realp)
          {
            LODWORD(v226.realp) = *(this + 6);
            vDSP_zvmags(&__A, 1, *(this + 58), 1, *(this + 24));
            vDSP_zvmags(&__D, 1, (*(this + 58) + 4 * *(this + 24)), 1, *(this + 24));
            vDSP_vthr((*(this + 58) + 4 * *(this + 24)), 1, this + 6, (*(this + 58) + 4 * *(this + 24)), 1, *(this + 24));
            v93 = *(this + 58);
            v94 = v93 + 4 * *(this + 24);
            MEMORY[0x1E12BE5D0](v93, 1, v94, 1, v94, 1);
            vDSP_vdiv((*(this + 58) + 4 * *(this + 24)), 1, *(this + 58), 1, *(this + 55), 1, *(this + 24));
            for (j = 0; j != 4; ++j)
            {
              v96 = **(*(this + 127) + 24 * v78) + 4 * (*(this + 24) * j);
              MEMORY[0x1E12BE7F0](*(this + 55), 1, v96, 1, v96, 1);
              v97 = **(*(this + 127) + 24 * v78) + 4 * (*(this + 24) * j);
              MEMORY[0x1E12BE8A0](v97, 1, this + 24, v97, 1);
            }
          }

          ++v78;
          v45 = *(this + 17);
        }

        while (v78 < v45 >> 1);
      }

      v44 = v211;
LABEL_82:
      if (v45 >= 2)
      {
        v98 = 0;
        v99 = &a7->mBuffers[0].mData;
        do
        {
          v100 = *v99;
          v99 += 2;
          vDSP_vclr(v100, 1, *(this + 18));
          ++v98;
        }

        while (v98 < *(this + 17) >> 1);
      }

LABEL_85:
      vDSP_vclr(*(this + 61), 1, (2 * *(this + 24)));
      vDSP_vclr(*(this + 58), 1, (4 * *(this + 24)));
      vDSP_vclr(*(this + 55), 1, *(this + 24));
      HIDWORD(v228) = 1065353216;
      vDSP_vfill(&v228 + 1, *(this + 70), 1, (2 * *(this + 24)));
      vDSP_vfill(&v228 + 1, *(this + 64), 1, (2 * *(this + 24)));
      if (!*this)
      {
        goto LABEL_170;
      }

      v101 = 0;
      v102 = v44;
      while (1)
      {
        vDSP_vclr(*(this + 55), 1, *(this + 24));
        v103 = 3 * v101;
        if (v208)
        {
          for (k = 0; k != v208; ++k)
          {
            vDSP_vclr(*(this + 61), 1, (2 * *(this + 24)));
            v105 = 0;
            v106 = (*(this + 61) + 4 * *(this + 24));
            v220.realp = *(this + 61);
            v220.imagp = v106;
            do
            {
              v107 = *(this + 19);
              if (v105 >= (*(this + 20) - v107) >> 2)
              {
                goto LABEL_178;
              }

              v108 = 3 * *(v107 + 4 * v105);
              v109 = *(*(*(this + 127) + 8 * v108) + 24 * v101);
              v110 = *(this + 24);
              v226.realp = (v109 + 4 * v110);
              v226.imagp = (v109 + 4 * (3 * v110));
              v221.realp = *(*(*(*(this + 139) + 24 * k) + 8 * v108) + 24 * v101);
              v221.imagp = &v221.realp[v110];
              vDSP_zvma(&v226, 1, &v221, 1, &v220, 1, &v220, 1, v110);
              ++v105;
            }

            while (v102 != v105);
            v111 = *(this + 24);
            v112 = (*(*(*(this + 115) + 24 * k) + 24 * v101) + 4 * v111);
            v218.realp = *(*(*(this + 115) + 24 * k) + 24 * v101);
            v218.imagp = v112;
            v219.realp = *(*(*(this + 118) + 24 * k) + 24 * v101 + 24);
            v219.imagp = &v219.realp[v111];
            vDSP_zvadd(&v218, 1, &v220, 1, &v219, 1, v111);
            vDSP_zvmgsa(&v219, 1, *(this + 55), 1, *(this + 55), 1, *(this + 24));
          }
        }

        *(&v228 + 1) = *(this + 7) * ((1.0 / v208) * *(this + 7));
        MEMORY[0x1E12BE940](*(this + 55), 1, &v228 + 4, *(this + 55), 1, *(this + 24));
        v113 = *(this + 33);
        v212 = v101;
        if (v113 != 1)
        {
          break;
        }

        v214 = *(this + 24);
        vvsqrtf(*(this + 52), *(this + 55), &v214);
        vDSP_vthr(*(this + 52), 1, this + 6, *(this + 52), 1, *(this + 24));
        v133 = 0;
        do
        {
          v134 = *(this + 19);
          if (v133 >= (*(this + 20) - v134) >> 2)
          {
            goto LABEL_178;
          }

          vDSP_vclr(*(*(*(this + 136) + 24 * *(v134 + 4 * v133++)) + 24 * v101), 1, (4 * *(this + 24)));
        }

        while (v102 != v133);
        HIDWORD(v228) = 1065353216;
        vDSP_svdiv(&v228 + 1, *(this + 52), 1, *(this + 64), 1, *(this + 24));
        vDSP_svdiv(&v228 + 1, *(this + 52), 1, (*(this + 64) + 4 * *(this + 24)), 1, *(this + 24));
        v135 = 0;
        v136 = 1;
        do
        {
          v137 = *(this + 19);
          if (v135 >= (*(this + 20) - v137) >> 2)
          {
            goto LABEL_178;
          }

          v138 = 0;
          v139 = *(v137 + 4 * v135);
          LODWORD(v140) = v136;
          v141 = 2 * *(this + 24);
          __D.realp = *(this + 58);
          __D.imagp = &__D.realp[v141];
          v142 = (*(this + 79) + 4 * v141);
          v217.realp = *(this + 79);
          v217.imagp = v142;
          v143 = ~v139;
          do
          {
            v144 = *(this + 19);
            if (v138 >= (*(this + 20) - v144) >> 2)
            {
              goto LABEL_178;
            }

            v145 = 3 * *(v144 + 4 * v138);
            v146 = *(this + 24);
            v232.realp = *(*(*(this + 127) + 8 * v145) + 24 * v101);
            v232.imagp = &v232.realp[2 * v146];
            v230.realp = *(*(*(*(this + 148) + 24 * (*(this + 20) + v143)) + 8 * v145) + 24 * v101);
            v230.imagp = &v230.realp[2 * v146];
            MEMORY[0x1E12BE940](v230.realp, 1, this + 16, v230.realp, 1, (4 * v146));
            v147 = *(this + 24);
            if (v138)
            {
              vDSP_zvcma(&v230, 1, &v232, 1, &__D, 1, &__D, 1, (2 * v147));
            }

            else
            {
              vDSP_zvmul(&v230, 1, &v232, 1, &__D, 1, (2 * v147), -1);
            }

            ++v138;
          }

          while (v136 != v138);
          HIDWORD(v228) = 1065353216;
          vDSP_zvmags(&__D, 1, *(this + 61), 1, (2 * *(this + 24)));
          MEMORY[0x1E12BE7E0](*(this + 64), 1, *(this + 61), 1, &v228 + 4, *(this + 73), 1, (2 * *(this + 24)));
          vDSP_vthr(*(this + 73), 1, this + 6, *(this + 73), 1, (2 * *(this + 24)));
          vDSP_vdiv(*(this + 73), 1, *(this + 64), 1, *(this + 67), 1, (2 * *(this + 24)));
          vDSP_zrvmul(&__D, 1, *(this + 67), 1, &v217, 1, (2 * *(this + 24)));
          vDSP_zvconj(&v217, 1, &v217, 1, (2 * *(this + 24)));
          v213 = 2 * *(this + 24);
          vvsqrtf(*(this + 76), *(this + 73), &v213);
          vDSP_zvneg(&__D, 1, &__D, 1, (2 * *(this + 24)));
          if ((v135 & 0x80000000) == 0)
          {
            do
            {
              v140 = (v140 - 1);
              v148 = *(this + 19);
              if (v140 >= (*(this + 20) - v148) >> 2)
              {
                goto LABEL_178;
              }

              v149 = *(v148 + 4 * v140);
              v150 = *(this + 24);
              v231.realp = *(this + 40);
              v231.imagp = &v231.realp[2 * v150];
              memcpy(v231.realp, *(*(*(this + 136) + 24 * v149) + 24 * v101), 4 * (4 * v150));
              v151 = (2 * *(this + 24));
              v230.realp = *(*(*(*(this + 148) + 24 * (*(this + 20) + v143)) + 24 * v149) + 24 * v101);
              v230.imagp = &v230.realp[v151];
              aDSP_zvmama(&__D, 1, &v230, 1, &v231, 1, &v217, 1, &v230, 1, v151);
              vDSP_zrvmul(&v230, 1, *(this + 76), 1, &v230, 1, (2 * *(this + 24)));
              if (v135 == v140)
              {
                vDSP_dotpr(*(*(*(*(this + 148) + 24 * (*(this + 20) + v143)) + 24 * v149) + 24 * v101), 1, *(*(*(*(this + 148) + 24 * (*(this + 20) + v143)) + 24 * v149) + 24 * v101), 1, &v228 + 1, (2 * *(this + 24)));
                *(&v228 + 1) = (1.0 / *(&v228 + 1)) / (2 * *(this + 24));
                if (*(&v228 + 1) < sqrtf(*(this + 6)))
                {
                  *(*(this + 22) + ((v149 >> 3) & 0x1FFFFFF8)) |= 1 << v149;
                }
              }

              v152 = *(this + 19);
              if (v135 >= (*(this + 20) - v152) >> 2)
              {
                goto LABEL_178;
              }

              if (((*(*(this + 22) + ((*(v152 + 4 * v135) >> 3) & 0x1FFFFFF8)) >> *(v152 + 4 * v135)) & 1) == 0 || (*(this + 148) & 1) == 0)
              {
                memcpy(*(*(*(this + 136) + 24 * v149) + 24 * v101), *(this + 40), 4 * (4 * *(this + 24)));
              }
            }

            while (v140 > 0);
          }

          v153 = *(this + 19);
          if (v135 >= (*(this + 20) - v153) >> 2)
          {
            goto LABEL_178;
          }

          if (((*(*(this + 22) + ((*(v153 + 4 * v135) >> 3) & 0x1FFFFFF8)) >> *(v153 + 4 * v135)) & 1) == 0 || (*(this + 148) & 1) == 0)
          {
            memcpy(*(this + 64), *(this + 67), 8 * *(this + 24));
          }

          ++v135;
          ++v136;
        }

        while (v135 != v102);
        v154 = 0;
        do
        {
          v155 = *(this + 19);
          if (v154 >= (*(this + 20) - v155) >> 2)
          {
            goto LABEL_178;
          }

          v156 = (2 * *(this + 24));
          v231.realp = *(*(*(this + 136) + 24 * *(v155 + 4 * v154)) + 24 * v101);
          v231.imagp = &v231.realp[v156];
          vDSP_zrvmul(&v231, 1, *(this + 64), 1, &v231, 1, v156);
          ++v154;
        }

        while (v102 != v154);
        MEMORY[0x1E12BE7F0](*(this + 52), 1, *(this + 64), 1, *(this + 64), 1, *(this + 24));
        v157 = *(this + 64) + 4 * *(this + 24);
        MEMORY[0x1E12BE7F0](*(this + 52), 1, v157, 1, v157, 1);
        v213 = 2 * *(this + 24);
        vvsqrtf(*(this + 64), *(this + 64), &v213);
        MEMORY[0x1E12BE7F0](*(this + 64), 1, *(this + 70), 1, *(this + 70), 1, (2 * *(this + 24)));
LABEL_138:
        if (*(this + 130) == 1)
        {
          v158 = 0;
          do
          {
            v159 = *(this + 19);
            if (v158 >= (*(this + 20) - v159) >> 2)
            {
              goto LABEL_178;
            }

            v160 = (2 * *(this + 24));
            v231.realp = *(*(*(this + 136) + 24 * *(v159 + 4 * v158)) + 24 * v101);
            v231.imagp = &v231.realp[v160];
            vDSP_zvconj(&v231, 1, &v231, 1, v160);
          }

          while (v102 != ++v158);
        }

        v161 = 0;
        v209 = v101 + 1;
        do
        {
          v162 = *(this + 19);
          if (v161 >= (*(this + 20) - v162) >> 2)
          {
            goto LABEL_178;
          }

          v163 = *(v162 + 4 * v161);
          vDSP_vclr(*(this + 58), 1, (4 * *(this + 24)));
          v164 = 0;
          v165 = *(this + 24);
          __D.realp = *(this + 58);
          __D.imagp = &__D.realp[(2 * v165)];
          v225.realp = &__D.realp[v165];
          v225.imagp = &__D.realp[(3 * v165)];
          do
          {
            v166 = *(this + 19);
            if (v164 >= (*(this + 20) - v166) >> 2)
            {
              goto LABEL_178;
            }

            v167 = 3 * *(v166 + 4 * v164);
            v168 = *(this + 24);
            v226.realp = *(*(*(this + 124) + 24 * *(v166 + 4 * v164)) + 8 * v103);
            v226.imagp = &v226.realp[v168];
            __A.realp = *(*(*(*(this + 142) + 24 * v163) + 8 * v167) + 8 * v103);
            __A.imagp = &__A.realp[v168];
            vDSP_zvma(&v226, 1, &__A, 1, &__D, 1, &__D, 1, v168);
            v169 = *(this + 24);
            __C.realp = *(*(*(this + 127) + 8 * v167) + 8 * v103);
            __C.imagp = &__C.realp[(2 * v169)];
            v229.realp = *(*(*(*(this + 145) + 24 * v163) + 8 * v167) + 8 * v103);
            v229.imagp = &v229.realp[v169];
            vDSP_zvma(&__C, 1, &v229, 1, &v225, 1, &v225, 1, v169);
            ++v164;
          }

          while (v102 != v164);
          v170 = *(this + 127);
          v171 = *(this + 24);
          v232.realp = *(*(v170 + 24 * v163) + 8 * v103);
          v232.imagp = &v232.realp[(2 * v171)];
          __B.realp = *(*(v170 + 24 * v163) + 24 * v209);
          __B.imagp = &__B.realp[(2 * v171)];
          vDSP_zvadd(&v232, 1, &__D, 1, &__B, 1, v171);
          v172 = *(this + 24);
          v223.realp = *(*(*(this + 124) + 24 * v163) + 8 * v103);
          v223.imagp = &v223.realp[v172];
          v173 = *(*(*(this + 127) + 24 * v163) + 24 * v209);
          v224.realp = (v173 + 4 * v172);
          v224.imagp = (v173 + 4 * (3 * v172));
          vDSP_zvadd(&v223, 1, &v225, 1, &v224, 1, v172);
          v174 = 0;
          do
          {
            v175 = *(this + 19);
            if (v174 >= (*(this + 20) - v175) >> 2)
            {
              goto LABEL_178;
            }

            v176 = 3 * *(v175 + 4 * v174);
            v177 = *(*(*(*(this + 142) + 24 * v163) + 24 * *(v175 + 4 * v174)) + 8 * v103);
            v178 = *(this + 24);
            __A.realp = v177;
            __A.imagp = &v177[v178];
            v179 = (*(*(*(this + 133) + 8 * v176) + 8 * v103) + 4 * v178);
            v222.realp = *(*(*(this + 133) + 8 * v176) + 8 * v103);
            v222.imagp = v179;
            if (*(this + 130) == 1)
            {
              vDSP_zvma(&v222, 1, &__B, 1, &__A, 1, &__A, 1, v178);
            }

            else
            {
              vDSP_zvcma(&v222, 1, &__B, 1, &__A, 1, &__A, 1, v178);
            }

            v180 = *(this + 24);
            v229.realp = *(*(*(*(this + 145) + 24 * v163) + 8 * v176) + 8 * v103);
            v229.imagp = &v229.realp[v180];
            v231.realp = *(*(*(this + 136) + 8 * v176) + 8 * v103);
            v231.imagp = &v231.realp[(2 * v180)];
            if (*(this + 130) == 1)
            {
              vDSP_zvma(&v231, 1, &v224, 1, &v229, 1, &v229, 1, v180);
            }

            else
            {
              vDSP_zvcma(&v231, 1, &v224, 1, &v229, 1, &v229, 1, v180);
            }

            ++v174;
          }

          while (v102 != v174);
          vDSP_zrvmul(&__B, 1, *(*(this + 82) + 24 * v212), 1, &__B, 1, *(this + 24));
          vDSP_zrvmul(&v224, 1, *(this + 64), 1, &v224, 1, *(this + 24));
          vDSP_zrvmul(&__B, 1, *(*(this + 130) + 24 * v163), 1, &__B, 1, (2 * *(this + 24)));
          ++v161;
        }

        while (v161 != v102);
        if (v208)
        {
          for (m = 0; m != v208; ++m)
          {
            v182 = 0;
            v183 = *(this + 24);
            v184 = (*(*(*(this + 118) + 24 * m) + 24 * v209) + 4 * v183);
            v219.realp = *(*(*(this + 118) + 24 * m) + 24 * v209);
            v219.imagp = v184;
            v185 = (*(*(*(this + 115) + 24 * m) + 24 * v209) + 4 * v183);
            v220.realp = *(*(*(this + 115) + 24 * m) + 24 * v209);
            v220.imagp = v185;
            do
            {
              v186 = *(this + 19);
              if (v182 >= (*(this + 20) - v186) >> 2)
              {
                goto LABEL_178;
              }

              v187 = 3 * *(v186 + 4 * v182);
              v188 = *(*(*(*(this + 139) + 24 * m) + 24 * *(v186 + 4 * v182)) + 8 * v103);
              v189 = *(this + 24);
              v221.realp = v188;
              v221.imagp = &v188[v189];
              v190 = *(*(*(this + 136) + 8 * v187) + 8 * v103);
              v222.realp = (v190 + 4 * v189);
              v222.imagp = (v190 + 4 * (3 * v189));
              if (*(this + 130) == 1)
              {
                vDSP_zvma(&v222, 1, &v219, 1, &v221, 1, &v221, 1, v189);
              }

              else
              {
                vDSP_zvcma(&v222, 1, &v219, 1, &v221, 1, &v221, 1, v189);
              }

              ++v182;
            }

            while (v102 != v182);
            vDSP_zrvmul(&v219, 1, (*(this + 64) + 4 * *(this + 24)), 1, &v220, 1, *(this + 24));
          }
        }

        memcpy(*(*(this + 82) + 24 * v212), (*(this + 64) + 4 * *(this + 24)), 4 * *(this + 24));
        v191 = 0;
        do
        {
          v192 = *(this + 19);
          if (v191 >= (*(this + 20) - v192) >> 2)
          {
            goto LABEL_178;
          }

          v193 = 3 * *(v192 + 4 * v191);
          memcpy(*(*(*(this + 124) + 24 * *(v192 + 4 * v191)) + 8 * v103), (*(*(*(this + 127) + 24 * *(v192 + 4 * v191)) + 8 * v103) + 4 * *(this + 24)), 4 * *(this + 24));
          memcpy((*(*(*(this + 124) + 8 * v193) + 8 * v103) + 4 * *(this + 24)), (*(*(*(this + 127) + 8 * v193) + 8 * v103) + 4 * (3 * *(this + 24))), 4 * *(this + 24));
          memcpy(*(*(*(this + 133) + 8 * v193) + 8 * v103), (*(*(*(this + 136) + 8 * v193) + 8 * v103) + 4 * *(this + 24)), 4 * *(this + 24));
          memcpy((*(*(*(this + 133) + 8 * v193) + 8 * v103) + 4 * *(this + 24)), (*(*(*(this + 136) + 8 * v193) + 8 * v103) + 4 * (3 * *(this + 24))), 4 * *(this + 24));
          vDSP_vclr(*(*(*(this + 136) + 8 * v193) + 8 * v103), 1, (4 * *(this + 24)));
          ++v191;
        }

        while (v102 != v191);
        v101 = v209;
        if (v209 >= *this)
        {
LABEL_170:
          *(this + 150) = 0;
          if (*(this + 15))
          {
            v194 = 0;
            v195 = 0;
            v196 = &a6->mBuffers[0].mData;
            v197 = &a5->mBuffers[0].mData;
            v198 = &a8->mBuffers[0].mData;
            v199 = v208;
            do
            {
              v200 = *v198;
              v201 = *v197;
              v202 = *v196;
              if (v195 >= v199)
              {
                memcpy(*v198, *(*(*(this + 88) + v194) + 24 * *(*(this + 28) + 4 * *(this + 31))), 4 * *(this + 18));
                vDSP_vclr(v201, 1, *(this + 18));
                vDSP_vclr(v202, 1, *(this + 18));
              }

              else
              {
                v203 = *(this + 24);
                v204 = (*(*(*(this + 115) + v194) + 24 * *this) + 4 * v203);
                v220.realp = *(*(*(this + 115) + v194) + 24 * *this);
                v220.imagp = v204;
                vDSP_zrvmul(&v220, 1, (*(this + 70) + 4 * v203), 1, &v220, 1, v203);
                vDSP_svesq(**(*(this + 115) + v194), 1, &v228, (2 * *(this + 24)));
                vDSP_svesq(*(*(*(this + 115) + v194) + 24 * *this), 1, &v227, (2 * *(this + 24)));
                ecSUMO::fcn_wola_synthesis_fb(this, *(this + 170), **(*(this + 115) + v194), this + 37, (*(this + 97) + v194), this + 49, v200, *(this + 18), *(this + 23), *(this + 14));
                v199 = v208;
                ecSUMO::fcn_wola_synthesis_fb(this, *(this + 170), *(*(*(this + 115) + v194) + 24 * *this), this + 37, (*(this + 94) + v194), this + 49, v201, *(this + 18), *(this + 23), *(this + 14));
                MEMORY[0x1E12BE9A0](v201, 1, v200, 1, v202, 1, *(this + 18));
                if (v227 > (*&v228 * 3.0))
                {
                  memcpy(v201, v200, 4 * *(this + 18));
                  *(this + 150) = 1;
                }
              }

              ++v195;
              v194 += 24;
              v196 += 2;
              v197 += 2;
              v198 += 2;
            }

            while (v195 < *(this + 15));
          }

          return ecSUMO::fcn_ring_buffer_fwd(this, this + 28);
        }
      }

      if (v113)
      {
        goto LABEL_138;
      }

      v214 = *(this + 24);
      vvsqrtf(*(this + 52), *(this + 55), &v214);
      vvsqrtf(*(this + 55), *(this + 52), &v214);
      vDSP_vthr(*(this + 55), 1, this + 6, *(this + 52), 1, *(this + 24));
      memcpy((*(this + 52) + 4 * *(this + 24)), *(this + 52), 4 * *(this + 24));
      HIDWORD(v228) = 1065353216;
      vDSP_vfill(&v228 + 1, *(this + 64), 1, (2 * *(this + 24)));
      v114 = 0;
      v115 = 1;
      do
      {
        v116 = *(this + 19);
        if (v114 >= (*(this + 20) - v116) >> 2)
        {
          goto LABEL_178;
        }

        v117 = *(v116 + 4 * v114);
        vDSP_vclr(*(this + 58), 1, (4 * *(this + 24)));
        v118 = 0;
        v119 = 2 * *(this + 24);
        __D.realp = *(this + 58);
        __D.imagp = &__D.realp[v119];
        v120 = (*(this + 79) + 4 * v119);
        v217.realp = *(this + 79);
        v217.imagp = v120;
        v121 = ~v117;
        do
        {
          v122 = *(this + 19);
          if (v118 >= (*(this + 20) - v122) >> 2)
          {
            goto LABEL_178;
          }

          v123 = 3 * *(v122 + 4 * v118);
          v124 = *(this + 24);
          v232.realp = *(*(*(this + 127) + 8 * v123) + 24 * v101);
          v232.imagp = &v232.realp[2 * v124];
          v230.realp = *(*(*(*(this + 148) + 24 * (*(this + 20) + v121)) + 8 * v123) + 24 * v101);
          v230.imagp = &v230.realp[2 * v124];
          MEMORY[0x1E12BE940](v230.realp, 1, this + 16, v230.realp, 1, (4 * v124));
          vDSP_zvcma(&v232, 1, &v230, 1, &__D, 1, &__D, 1, (2 * *(this + 24)));
          ++v118;
        }

        while (v115 != v118);
        vDSP_zrvdiv(&__D, 1, *(this + 52), 1, &__D, 1, (2 * *(this + 24)));
        vDSP_zvabs(&__D, 1, *(this + 61), 1, (2 * *(this + 24)));
        vDSP_vdist(*(this + 61), 1, *(this + 64), 1, *(this + 73), 1, (2 * *(this + 24)));
        vDSP_vthr(*(this + 73), 1, this + 6, *(this + 73), 1, (2 * *(this + 24)));
        vDSP_vdiv(*(this + 73), 1, *(this + 64), 1, *(this + 76), 1, (2 * *(this + 24)));
        vDSP_zrvdiv(&__D, 1, *(this + 73), 1, &v217, 1, (2 * *(this + 24)));
        memcpy(*(this + 64), *(this + 73), 8 * *(this + 24));
        v125 = 0;
        do
        {
          v126 = *(this + 19);
          if (v125 >= (*(this + 20) - v126) >> 2)
          {
            goto LABEL_178;
          }

          v127 = 3 * *(v126 + 4 * v125);
          memcpy(*(this + 61), *(*(*(this + 136) + 24 * *(v126 + 4 * v125)) + 24 * v101), 16 * *(this + 24));
          v128 = (2 * *(this + 24));
          v231.realp = *(*(*(this + 136) + 8 * v127) + 24 * v101);
          v231.imagp = &v231.realp[v128];
          v230.realp = *(*(*(*(this + 148) + 24 * (*(this + 20) + v121)) + 8 * v127) + 24 * v101);
          v230.imagp = &v230.realp[v128];
          vDSP_zrvmul(&v231, 1, *(this + 76), 1, &v231, 1, v128);
          vDSP_zvcmul(&v217, 1, &v230, 1, &__D, 1, (2 * *(this + 24)));
          vDSP_zvsub(&v231, 1, &__D, 1, &v231, 1, (2 * *(this + 24)));
          v129 = (2 * *(this + 24));
          v231.realp = *(this + 61);
          v231.imagp = &v231.realp[v129];
          vDSP_zvmul(&v217, 1, &v231, 1, &__D, 1, v129, 1);
          vDSP_zrvmul(&v230, 1, *(this + 76), 1, &v230, 1, (2 * *(this + 24)));
          vDSP_zvadd(&__D, 1, &v230, 1, &v230, 1, (2 * *(this + 24)));
          ++v125;
        }

        while (v115 != v125);
        ++v114;
        ++v115;
      }

      while (v114 != v102);
      vDSP_vthr(*(this + 64), 1, this + 6, *(this + 64), 1, (2 * *(this + 24)));
      HIDWORD(v228) = 1065353216;
      vDSP_svdiv(&v228 + 1, *(this + 64), 1, *(this + 64), 1, (2 * *(this + 24)));
      MEMORY[0x1E12BE7F0](*(this + 64), 1, *(this + 70), 1, *(this + 70), 1, (2 * *(this + 24)));
      vDSP_vdiv(*(this + 52), 1, *(this + 64), 1, *(this + 73), 1, (2 * *(this + 24)));
      v130 = 0;
      while (1)
      {
        v131 = *(this + 19);
        if (v130 >= (*(this + 20) - v131) >> 2)
        {
          break;
        }

        v132 = (2 * *(this + 24));
        v231.realp = *(*(*(this + 136) + 24 * *(v131 + 4 * v130)) + 24 * v101);
        v231.imagp = &v231.realp[v132];
        vDSP_zrvmul(&v231, 1, *(this + 73), 1, &v231, 1, v132);
        if (v102 == ++v130)
        {
          goto LABEL_138;
        }
      }

LABEL_178:
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    v43 = *(this + 15);
  }

  if (v43)
  {
    v68 = 0;
    v69 = 0;
    v70 = &a6->mBuffers[0].mData;
    v71 = &a5->mBuffers[0].mData;
    v72 = &a8->mBuffers[0].mData;
    do
    {
      v73 = *v72;
      v74 = *v71;
      v75 = *v70;
      memcpy(*(*(*(this + 115) + v68) + 24 * *this), **(*(this + 115) + v68), 8 * *(this + 24));
      ecSUMO::fcn_wola_synthesis_fb(this, *(this + 170), **(*(this + 115) + v68), this + 37, (*(this + 97) + v68), this + 49, v73, *(this + 18), *(this + 23), *(this + 14));
      ecSUMO::fcn_wola_synthesis_fb(this, *(this + 170), *(*(*(this + 115) + v68) + 24 * *this), this + 37, (*(this + 94) + v68), this + 49, v74, *(this + 18), *(this + 23), *(this + 14));
      vDSP_vclr(v75, 1, *(this + 18));
      LODWORD(__A.realp) = 0;
      vDSP_svesq(*(*(this + 106) + v68), 1, &__A, *(this + 18));
      if (*&__A.realp == 0.0)
      {
        vDSP_vclr(v73, 1, *(this + 18));
        vDSP_vclr(v74, 1, *(this + 18));
      }

      ++v69;
      v68 += 24;
      v70 += 2;
      v71 += 2;
      v72 += 2;
    }

    while (v69 < *(this + 15));
  }

  result = ecSUMO::fcn_ring_buffer_fwd(this, this + 28);
  *(this + 128) = 0;
  return result;
}

float ecSUMO::fcn_wola_analysis_fb(uint64_t a1, const vDSP_DFT_SetupStruct *a2, void *a3, void *a4, float **a5, float **a6, vDSP_Length __N, int a8, int a9)
{
  LODWORD(v9) = a8;
  v10 = __N;
  v17 = (a8 + 1);
  v18 = &(*a6)[v17];
  __Z.realp = *a6;
  __Z.imagp = v18;
  vDSP_vclr(*a5, 1, __N);
  vDSP_vclr(*a6, 1, (v10 + 2));
  if (a9)
  {
    v23 = v17;
    v19 = 0;
    v20 = 0;
    v9 = v9;
    do
    {
      if (v20)
      {
        v21 = v9;
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x1E12BE780](*(*a3 + 24 * *(*(a1 + 224) + 4 * v20++)), 1, *(*a4 + v19), 1, &(*a5)[v21], 1, &(*a5)[v21], 1, v9);
      v19 += 24;
    }

    while (a9 != v20);
    v17 = v23;
  }

  else
  {
    v9 = v9;
  }

  vDSP_ctoz(*a5, 2, &__Z, 1, v9);
  vDSP_DFT_Execute(a2, __Z.realp, __Z.imagp, __Z.realp, __Z.imagp);
  result = (*a6)[v17];
  (*a6)[v9] = result;
  return result;
}

uint64_t ecSUMO::fcn_ring_buffer_fwd(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 116);
  v3 = *(result + 56);
  if (v2 + 1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 + 1;
  }

  *(result + 116) = v4;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = *a2;
      v7 = *(*a2 + 4 * v5);
      *(*a2 + 4 * v5) = v7 + 1;
      if (v7 + 1 == *(result + 56))
      {
        v8 = 0;
      }

      else
      {
        v8 = v7 + 1;
      }

      *(v6 + 4 * v5++) = v8;
    }

    while (v5 < *(result + 56));
  }

  return result;
}

void ecSUMO::fcn_wola_synthesis_fb(uint64_t a1, vDSP_DFT_SetupStruct *__Setup, float *__Or, void *a4, void *a5, DSPComplex **a6, void *a7, unsigned int a8, unsigned int a9, int a10)
{
  v15 = __Or[a9];
  v16 = &__Or[a9 + 1];
  *v16 = v15;
  __Z.realp = __Or;
  __Z.imagp = v16;
  vDSP_DFT_Execute(__Setup, __Or, v16, __Or, v16);
  vDSP_ztoc(&__Z, 1, *a6, 2, a9);
  if (a10)
  {
    v17 = 0;
    for (i = 0; i != a10; ++i)
    {
      v19 = *(*(a1 + 224) + 4 * i);
      if (i)
      {
        v20 = a9;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x1E12BE780](*a6 + 4 * v20, 1, *(*a4 + v17), 1, *(*a5 + 24 * v19), 1, *(*a5 + 24 * v19), 1, a9);
      v17 += 24;
    }
  }

  else
  {
    v19 = 0;
  }

  memcpy(a7, *(*a5 + 24 * v19), 4 * a8);
  vDSP_vclr(*(*a5 + 24 * v19), 1, a8);
}

void ecMIMO_iQRD::fcn_set_gammaX(ecMIMO_iQRD *this, float a2)
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (a2 > 0.0)
  {
    v9 = -(*(this + 12) / *(this + 7)) / a2;
    v4 = expf(v9);
    v5 = 1.0 - v4;
    v6 = 1.0 / (1.0 - v4);
    v7 = sqrtf(v4);
    v8 = 1.0 / v7;
  }

  *(this + 24) = v4;
  *(this + 25) = v5;
  *(this + 26) = v6;
  *(this + 27) = v7;
  *(this + 28) = v8;
}

void ecMIMO_iQRD::fcn_set_gammaS(ecMIMO_iQRD *this, float a2)
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 > 0.0)
  {
    v7 = -(*(this + 12) / *(this + 7)) / a2;
    v4 = expf(v7);
    v5 = 1.0 - v4;
    v6 = 1.0 / (1.0 - v4);
  }

  *(this + 21) = v4;
  *(this + 22) = v5;
  *(this + 23) = v6;
}

float ecMIMO_iQRD::fcn_get_sxx(ecMIMO_iQRD *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 43);
    v3 = 0.0;
    v4 = *(this + 4);
    do
    {
      v5 = *v2++;
      v3 = v3 + v5;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 / v1;
}

float ecMIMO_iQRD::fcn_get_erle_external_db(ecMIMO_iQRD *this, unsigned int a2)
{
  __C = 0;
  v3 = 24 * a2;
  vDSP_svesq((*(*(this + 79) + v3) + 4 * (*(this + 9) - *(this + 12))), 1, &__C + 1, *(this + 12));
  vDSP_svesq((*(*(this + 73) + v3) + 4 * (*(this + 9) - *(this + 12))), 1, &__C, *(this + 12));
  return log10f((*(&__C + 1) + *(this + 17)) / (*(this + 17) + *&__C)) * 10.0;
}

float ecMIMO_iQRD::fcn_get_erle_internal_db(ecMIMO_iQRD *this, unsigned int a2)
{
  __C = 0;
  v3 = 24 * a2;
  vDSP_svesq((*(*(this + 79) + v3) + 4 * (*(this + 9) - *(this + 12))), 1, &__C + 1, *(this + 12));
  vDSP_svesq((*(*(this + 76) + v3) + 4 * (*(this + 9) - *(this + 12))), 1, &__C, *(this + 12));
  return log10f((*(&__C + 1) + *(this + 17)) / (*(this + 17) + *&__C)) * 10.0;
}

BOOL ecMIMO_iQRD::fcn_isfinite_ref(ecMIMO_iQRD *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 1;
  }

  v2 = *(this + 43);
  if ((*v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v4 = 0;
  v5 = v2 + 1;
  while (v1 - 1 != v4)
  {
    v6 = v5[v4++] & 0x7FFFFFFF;
    if (v6 >= 2139095040)
    {
      return v4 >= v1;
    }
  }

  v4 = *(this + 4);
  return v4 >= v1;
}

BOOL ecMIMO_iQRD::fcn_isfinite_output(ecMIMO_iQRD *this)
{
  __C = 0.0;
  if (!*(this + 3))
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    vDSP_sve((*(*(this + 79) + v2) + 4 * (*(this + 9) - *(this + 12))), 1, &__C, *(this + 12));
    result = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
    if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    ++v3;
    v2 += 24;
    if (v3 >= *(this + 3))
    {
      return 1;
    }
  }

  return result;
}

BOOL ecMIMO_iQRD::fcn_isfinite_state(ecMIMO_iQRD *this)
{
  __C = 0.0;
  if (!*(this + 3))
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    vDSP_sve((*(*(this + 76) + v2) + 4 * (*(this + 9) - *(this + 12))), 1, &__C, *(this + 12));
    result = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
    if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    ++v3;
    v2 += 24;
    if (v3 >= *(this + 3))
    {
      return 1;
    }
  }

  return result;
}

_DWORD *ecMIMO_iQRD::fcn_tf_output(_DWORD *result, uint64_t *a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = result[4];
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = v7 * v5 * v4[19];
        v11 = *a2;
        do
        {
          v12 = v4[19];
          v13 = v10 + v12 * v9;
          if ((2 * (v13 + v12)) <= ((a2[1] - v11) >> 2))
          {
            memcpy((v11 + 4 * (2 * v13)), *(*(*(v4 + 100) + 24 * v5) + v8), 4 * v12);
            result = memcpy((*a2 + 4 * (v4[19] + 2 * v13)), (*(*(*(v4 + 100) + 24 * v5) + v8) + 4 * v4[11]), 4 * v4[19]);
            v6 = v4[4];
            v11 = *a2;
          }

          ++v9;
          v8 += 24;
        }

        while (v9 < v6);
        v2 = v4[3];
        v7 = v6;
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

void ecMIMO_iQRD::fcn_ir_input(uint64_t a1, uint64_t *a2)
{
  vDSP_vclr(*(a1 + 392), 1, *(a1 + 36));
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = v7 * v5 * *(a1 + 76);
        do
        {
          v11 = *(a1 + 76);
          v12 = v10 + v11 * v9;
          v13 = *a2;
          if (v12 + v11 <= ((a2[1] - *a2) >> 2))
          {
            v16.realp = 0;
            v16.imagp = 0;
            v14 = (*(*(*(a1 + 800) + 24 * v5) + v8) + 4 * *(a1 + 44));
            v16.realp = *(*(*(a1 + 800) + 24 * v5) + v8);
            v16.imagp = v14;
            memcpy(*(a1 + 392), (v13 + 4 * v12), 4 * v11);
            v15 = *(a1 + 1184);
            if (v15)
            {
              MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v15, *(a1 + 392), &v16, 1.0);
            }

            v6 = *(a1 + 16);
          }

          ++v9;
          v8 += 24;
        }

        while (v9 < v6);
        v4 = *(a1 + 12);
        v7 = v6;
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

uint64_t ecMIMO_iQRD::fcn_ir_output(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    LODWORD(v6) = *(result + 16);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = v6 * v5 * *(v4 + 76);
        do
        {
          v10 = *(v4 + 76);
          v11 = (*(*(*(v4 + 800) + 24 * v5) + v7) + 4 * *(v4 + 44));
          v14.realp = *(*(*(v4 + 800) + 24 * v5) + v7);
          v14.imagp = v11;
          v12 = *(v4 + 1184);
          if (v12)
          {
            MultiRadixRealFFT::RealOutOfPlaceInverseTransform(v12, &v14, *(v4 + 392));
            v13 = *(v4 + 76);
          }

          else
          {
            v13 = v10;
          }

          result = MEMORY[0x1E12BE940](*(v4 + 392), 1, v4 + 56, *a2 + 4 * (v10 * v8++ + v9), 1, v13);
          v6 = *(v4 + 16);
          v7 += 24;
        }

        while (v8 < v6);
        v2 = *(v4 + 12);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t ecMIMO_iQRD::ec_proc(ecMIMO_iQRD *this, const AudioBufferList *a2, const AudioBufferList *a3, const AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7, int a8)
{
  *(this + 145) = 0;
  v242 = *(this + 10);
  v243 = 0.0;
  bzero(*(this + 40), 4 * *(this + 4));
  LODWORD(v12) = *(this + 4);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    p_mData = &a7->mBuffers[0].mData;
    v18 = &a3->mBuffers[0].mData;
    do
    {
      v19 = *v18;
      memmove(*(*(this + 70) + v14), (*(*(this + 70) + v14) + 4 * *(this + 12)), 4 * (*(this + 9) - *(this + 12)));
      memcpy((*(*(this + 70) + v14) + 4 * (*(this + 9) - *(this + 12))), v19, 4 * *(this + 12));
      memcpy(*p_mData, v19, 4 * *(this + 12));
      vDSP_svesq(*(*(this + 70) + v14), 1, (*(this + 43) + v13), *(this + 9));
      v20 = *(this + 43);
      v21 = *(v20 + 4 * v15) / *(this + 9);
      *(v20 + 4 * v15) = v21;
      if ((v21 + *(this + 17)) <= *(this + 18))
      {
        v24 = *(this + 34);
        v25 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v26 = *(v24 + v25) | (1 << v15);
      }

      else
      {
        v22 = (*(*(this + 94) + v14) + 4 * *(this + 11));
        v257.realp = *(*(this + 94) + v14);
        v257.imagp = v22;
        v23 = *(this + 148);
        if (v23)
        {
          MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v23, *(*(this + 70) + v14), &v257, 1.0);
        }

        *(*(this + 40) + 4 * v16++) = v15;
        v24 = *(this + 34);
        v25 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v26 = *(v24 + v25) & ~(1 << v15);
      }

      *(v24 + v25) = v26;
      ++v15;
      v14 += 24;
      v12 = *(this + 4);
      v13 += 4;
      p_mData += 2;
      v18 += 2;
    }

    while (v15 < v12);
  }

  else
  {
    v16 = 0;
  }

  if (*(this + 8) == 1)
  {
    if (*(this + 5))
    {
      v27 = 0;
      v28 = 0;
      v29 = &a4->mBuffers[0].mData;
      do
      {
        v30 = *v29;
        v29 += 2;
        memmove(*(*(this + 139) + v27), (*(*(this + 139) + v27) + 4 * *(this + 12)), 4 * (*(this + 9) - *(this + 12)));
        memcpy((*(*(this + 139) + v27) + 4 * (*(this + 9) - *(this + 12))), v30, 4 * *(this + 12));
        ++v28;
        v27 += 24;
      }

      while (v28 < *(this + 5));
      LODWORD(v12) = *(this + 4);
    }

    if (v12)
    {
      v31 = 0;
      v32 = 0;
      v33 = -1;
      v233 = vdupq_n_s64(4uLL);
      do
      {
        if (((*(*(this + 34) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          v34 = *(this + 5);
          if (v32 >= v34 >> 1)
          {
            LODWORD(v262.realp) = 1065353216;
            vDSP_vfill(&v262, *(*(this + 145) + v31), 1, *(this + 10));
          }

          else
          {
            v35 = v33 + v34;
            v36 = *(this + 11);
            v257.realp = *(*(this + 94) + v31);
            v257.imagp = &v257.realp[v36];
            v37 = *(this + 142);
            v38 = (*(v37 + 24 * v35) + 4 * v36);
            __A.realp = *(v37 + 24 * v35);
            __A.imagp = v38;
            __B.realp = *(v37 + v31);
            __B.imagp = &__B.realp[v36];
            v39 = (*(this + 127) + 4 * v36);
            __C.realp = *(this + 127);
            __C.imagp = v39;
            v40 = (*(this + 130) + 4 * v36);
            v244.realp = *(this + 130);
            v244.imagp = v40;
            v41 = *(this + 148);
            if (v41)
            {
              MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v41, *(*(this + 139) + 24 * v35), &__A, 1.0);
              v42 = *(this + 148);
              if (v42)
              {
                MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v42, *(*(this + 139) + v31), &__B, 1.0);
              }
            }

            vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, *(this + 11));
            vDSP_zvsub(&__A, 1, &__B, 1, &v244, 1, *(this + 11));
            v43 = *(this + 127);
            v44 = *(this + 133);
            v45 = *(this + 11);
            v262.realp = v43 + 1;
            v262.imagp = &v43[(v45 + 1)];
            vDSP_zvmags(&v262, 1, v44 + 1, 1, (v45 - 1));
            *v44 = *v43 * *v43;
            v44[v45] = v43[v45] * v43[v45];
            v46 = *(this + 130);
            v47 = *(this + 136);
            v48 = *(this + 11);
            v262.realp = v46 + 1;
            v262.imagp = &v46[(v48 + 1)];
            vDSP_zvmags(&v262, 1, v47 + 1, 1, (v48 - 1));
            *v47 = *v46 * *v46;
            v47[v48] = v46[v48] * v46[v48];
            vDSP_vthr(*(this + 133), 1, this + 17, *(this + 133), 1, *(this + 10));
            vDSP_vthr(*(this + 136), 1, this + 17, *(this + 136), 1, *(this + 10));
            vDSP_vdiv(*(this + 133), 1, *(this + 136), 1, *(*(this + 145) + v31), 1, *(this + 10));
            vDSP_vclip(*(*(this + 145) + v31), 1, this + 17, this + 16, *(*(this + 145) + v31), 1, *(this + 10));
            vvsqrtf(*(*(this + 145) + v31), *(*(this + 145) + v31), &v242);
            v49 = *(*(this + 145) + v31);
            v50 = *(this + 11);
            v261 = vaddq_s64(v257, v233);
            v262 = vaddq_s64(__A, v233);
            vDSP_zrvmul(&v262, 1, (v49 + 4), 1, &v261, 1, (v50 - 1));
            *v257.realp = *__A.realp * *v49;
            *v257.imagp = *__A.imagp * *(v49 + 4 * v50);
          }
        }

        ++v32;
        v31 += 24;
        --v33;
      }

      while (v32 < *(this + 4));
    }
  }

  v51 = *(this + 3);
  if (!v51)
  {
    goto LABEL_108;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = &a2->mBuffers[0].mData;
  do
  {
    v56 = *v55;
    v57 = *(this + 11);
    v58 = *(this + 12);
    if (v57 != v58)
    {
      memmove((*(*(this + 73) + v52) + 4 * v57), (*(*(this + 73) + v52) + 4 * (v58 + v57)), 4 * (v57 - v58));
      LODWORD(v57) = *(this + 12);
    }

    memcpy((*(*(this + 73) + v52) + 4 * (*(this + 9) - v57)), v56, 4 * v57);
    vDSP_svesq(v56, 1, (*(this + 46) + v53), *(this + 12));
    v59 = *(this + 31);
    v60 = *(v59 + 8 * (v54 >> 6));
    *(v59 + 8 * (v54 >> 6)) = v60 & ~(1 << v54);
    if (*(*(this + 46) + 4 * v54) == 0.0)
    {
      --v51;
      *(v59 + 8 * (v54 >> 6)) = v60 | (1 << v54);
    }

    ++v54;
    v61 = *(this + 3);
    v53 += 4;
    v52 += 24;
    v55 += 2;
  }

  while (v54 < v61);
  if (!v16 || !v51)
  {
    if (v61)
    {
      v125 = 0;
      v126 = 0;
      v127 = &a6->mBuffers[0].mData;
      v128 = &a5->mBuffers[0].mData;
      v129 = &a2->mBuffers[0].mData;
      do
      {
        v130 = *v128;
        v131 = *v127;
        memcpy((*(*(this + 79) + v125) + 4 * (*(this + 9) - *(this + 12))), *v129, 4 * *(this + 12));
        vDSP_vclr((*(*(this + 76) + v125) + 4 * (*(this + 9) - *(this + 12))), 1, *(this + 12));
        v132 = *(this + 29);
        if (v132)
        {
          memcpy((*(*(this + 79) + v125) + 4 * (*(this + 9) - (v132 + *(this + 12)))), *(*(this + 88) + v125), 4 * v132);
          memcpy((*(*(this + 76) + v125) + 4 * (*(this + 9) - (*(this + 12) + *(this + 29)))), *(*(this + 91) + v125), 4 * *(this + 29));
          memcpy(*(*(this + 88) + v125), (*(*(this + 79) + v125) + 4 * (*(this + 9) - *(this + 29))), 4 * *(this + 29));
          memcpy(*(*(this + 91) + v125), (*(*(this + 76) + v125) + 4 * (*(this + 9) - *(this + 29))), 4 * *(this + 29));
          LODWORD(v132) = *(this + 29);
        }

        memcpy(v130, (*(*(this + 79) + v125) + 4 * (*(this + 9) - (*(this + 12) + v132))), 4 * *(this + 12));
        memcpy(v131, (*(*(this + 76) + v125) + 4 * (*(this + 9) - (*(this + 12) + *(this + 29)))), 4 * *(this + 12));
        ++v126;
        v125 += 24;
        v127 += 2;
        v128 += 2;
        v129 += 2;
      }

      while (v126 < *(this + 3));
    }

LABEL_108:
    *(this + 144) = 0;
    return 0;
  }

  *(this + 144) = 1;
  vDSP_vclr(*(this + 58), 1, *(this + 10));
  v62 = *(this + 6);
  if (v62)
  {
    v63 = 0;
    v227 = vdupq_n_s64(4uLL);
    do
    {
      if (((*(*(this + 31) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        v64 = 0;
        v65 = (*(this + 67) + 4 * *(this + 11));
        v256.realp = *(this + 67);
        v256.imagp = v65;
        do
        {
          v66 = *(this + 40);
          if (v64 >= (*(this + 41) - v66) >> 2)
          {
LABEL_176:
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v67 = 3 * *(v66 + 4 * v64);
          v68 = *(this + 11);
          v257.realp = *(*(this + 94) + 8 * v67);
          v257.imagp = &v257.realp[v68];
          v255.realp = *(*(*(this + 100) + 24 * v63) + 8 * v67);
          v255.imagp = &v255.realp[v68];
          if (v64)
          {
            ecutils::fcn_complex_mult_add(&v257, &v255, &v256, &v256, v68);
          }

          else
          {
            v234 = v255;
            v261 = vaddq_s64(v255, v227);
            v262 = vaddq_s64(v257, v227);
            v260 = vaddq_s64(v256, v227);
            vDSP_zvmul(&v262, 1, &v261, 1, &v260, 1, (v68 - 1), 1);
            *v256.realp = *v257.realp * *v234.realp;
            *v256.imagp = *v257.imagp * *v234.imagp;
          }

          ++v64;
        }

        while (v16 != v64);
        ecutils::fcn_otplace_fftReal_inverse(*(this + 148), &v256, *(*(this + 76) + 24 * v63), *(this + 11), *(this + 14));
        MEMORY[0x1E12BE5D0](*(*(this + 76) + 24 * v63) + 4 * *(this + 11), 1, *(*(this + 73) + 24 * v63) + 4 * *(this + 11), 1, *(*(this + 79) + 24 * v63) + 4 * *(this + 11), 1);
        v69 = *(this + 11);
        v254.realp = *(*(this + 82) + 24 * v63);
        v254.imagp = &v254.realp[v69];
        v70 = *(this + 148);
        if (v70)
        {
          MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v70, *(*(this + 79) + 24 * v63), &v254, 1.0);
          v69 = *(this + 11);
        }

        v71 = *(this + 58);
        v262 = vaddq_s64(v254, vdupq_n_s64(4uLL));
        vDSP_zvmgsa(&v262, 1, (v71 + 4), 1, (v71 + 4), 1, (v69 - 1));
        *v71 = *v71 + (*v254.realp * *v254.realp);
        *(v71 + 4 * v69) = *(v71 + 4 * v69) + (*v254.imagp * *v254.imagp);
        LODWORD(v262.realp) = 0;
        vDSP_svesq((*(*(this + 79) + 24 * v63) + 4 * (*(this + 9) - *(this + 12))), 1, &v262, *(this + 12));
        if (*&v262.realp > *(*(this + 46) + 4 * v63))
        {
          *(this + 145) = 1;
        }

        v62 = *(this + 6);
      }

      ++v63;
    }

    while (v63 < v62);
  }

  v72 = v51;
  v243 = 1.0 / v51;
  MEMORY[0x1E12BE910](*(this + 58), 1, &v243, this + 80, *(this + 58), 1, *(this + 10));
  if ((*(this + 120) & 1) == 0)
  {
    v73 = *(this + 6);
    if (v73)
    {
      v74 = 0;
      for (i = 0; i < v73; ++i)
      {
        if (((*(*(this + 31) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
          memcpy(*(*(this + 103) + v74), *(*(this + 82) + v74), 4 * *(this + 9));
          v73 = *(this + 6);
        }

        v74 += 24;
      }
    }

    v243 = 1.0;
    vDSP_vfill(&v243, *(this + 52), 1, *(this + 10));
    vDSP_svdiv(this + 22, *(this + 58), 1, *(this + 61), 1, *(this + 10));
    v76 = *(this + 6);
    if (v76)
    {
      v77 = 0;
      v78 = 1;
      v235 = vdupq_n_s64(4uLL);
      v79 = 24;
      do
      {
        if ((*(*(this + 31) + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v77))
        {
          v80 = v77 + 1;
        }

        else
        {
          v81 = *(this + 11);
          v254.realp = *(*(this + 103) + 24 * v77);
          v254.imagp = &v254.realp[v81];
          v249.realp = **(this + 97);
          v249.imagp = &v249.realp[v81];
          v82 = *(this + 55);
          v262 = vaddq_s64(v254, v235);
          vDSP_zvmags(&v262, 1, v82 + 1, 1, (v81 - 1));
          *v82 = *v254.realp * *v254.realp;
          v82[v81] = *v254.imagp * *v254.imagp;
          MEMORY[0x1E12BE7F0](*(this + 61), 1, *(this + 52), 1, *(this + 64), 1, *(this + 10));
          v83 = *(*(this + 106) + 24 * v77);
          MEMORY[0x1E12BE940](v83, 1, this + 84, v83, 1, *(this + 10));
          MEMORY[0x1E12BE780](*(this + 64), 1, *(this + 55), 1, *(*(this + 106) + 24 * v77), 1, *(*(this + 106) + 24 * v77), 1, *(this + 10));
          v84 = *(*(this + 106) + 24 * v77);
          vDSP_vthr(v84, 1, this + 20, v84, 1, *(this + 10));
          MEMORY[0x1E12BE810](*(this + 64), 1, *(this + 64), 1, *(this + 10));
          vDSP_vdiv(*(*(this + 106) + 24 * v77), 1, *(this + 64), 1, *(this + 64), 1, *(this + 10));
          v85 = *(this + 64);
          v86 = *(this + 11);
          v224 = v249;
          v228 = vaddq_s64(v249, v235);
          v261 = v228;
          v262 = vaddq_s64(v254, v235);
          vDSP_zrvmul(&v262, 1, (v85 + 4), 1, &v261, 1, (v86 - 1));
          *v224.realp = *v254.realp * *v85;
          *v224.imagp = *v254.imagp * *(v85 + 4 * v86);
          v87 = *(this + 11);
          v261 = v228;
          v262 = v228;
          vDSP_zvconj(&v262, 1, &v261, 1, (v87 - 1));
          v243 = 1.0;
          MEMORY[0x1E12BE7E0](*(this + 64), 1, *(this + 55), 1, &v243, *(this + 64), 1, *(this + 10));
          MEMORY[0x1E12BE7F0](*(this + 52), 1, *(this + 64), 1, *(this + 52), 1, *(this + 10));
          v80 = v77 + 1;
          v76 = *(this + 6);
          if (v77 + 1 < v76)
          {
            v88 = v79;
            v89 = v78;
            do
            {
              if (((*(*(this + 31) + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
              {
                v90 = *(this + 11);
                v91 = *(*(this + 109) + 24 * v77);
                v253.realp = *(*(this + 103) + v88);
                v253.imagp = &v253.realp[v90];
                v248.realp = *(v91 + v88);
                v248.imagp = &v248.realp[v90];
                ecutils::fcn_complex_mult_add_mult_add(&v254, &v248, &v253, &v249, &v248, v90);
                v76 = *(this + 6);
              }

              ++v89;
              v88 += 24;
            }

            while (v89 < v76);
          }
        }

        ++v78;
        v79 += 24;
        v77 = v80;
      }

      while (v80 < v76);
    }

    MEMORY[0x1E12BE810](*(this + 52), 1, *(this + 52), 1, *(this + 10));
    v243 = 1.0;
    MEMORY[0x1E12BE8A0](*(this + 52), 1, &v243, *(this + 52), 1, *(this + 10));
    MEMORY[0x1E12BE7F0](*(this + 58), 1, *(this + 52), 1, *(this + 58), 1, *(this + 10));
    v243 = *(this + 23) / v72;
    MEMORY[0x1E12BE910](*(this + 58), 1, &v243, this + 80, *(this + 58), 1, *(this + 10));
  }

  v92 = a8;
  if (*(this + 31) != 1.0)
  {
    vvpowsf(*(this + 58), this + 31, *(this + 58), &v242);
  }

  v93 = *(this + 32);
  if (v93 == 1)
  {
    v133 = 0;
    v134 = v16;
    do
    {
      v135 = *(this + 40);
      if (v133 >= (*(this + 41) - v135) >> 2)
      {
        goto LABEL_176;
      }

      vDSP_vclr(*(*(this + 97) + 24 * *(v135 + 4 * v133++)), 1, *(this + 9));
    }

    while (v16 != v133);
    v136 = 1;
    vDSP_svdiv(this + 25, *(this + 58), 1, *(this + 52), 1, *(this + 10));
    v137 = 0;
    v230 = vdupq_n_s64(4uLL);
    v223 = v134;
    do
    {
      v138 = *(this + 40);
      if (v137 >= (*(this + 41) - v138) >> 2)
      {
        goto LABEL_176;
      }

      v139 = 0;
      v140 = *(v138 + 4 * v137);
      v141 = *(this + 11);
      v256.realp = *(this + 67);
      v256.imagp = &v256.realp[v141];
      v142 = (*(this + 112) + 4 * v141);
      v252.realp = *(this + 112);
      v252.imagp = v142;
      v143 = ~v140;
      do
      {
        v144 = *(this + 40);
        if (v139 >= (*(this + 41) - v144) >> 2)
        {
          goto LABEL_176;
        }

        v145 = 3 * *(v144 + 4 * v139);
        v146 = *(this + 11);
        v257.realp = *(*(this + 94) + 8 * v145);
        v257.imagp = &v257.realp[v146];
        v250.realp = *(*(*(this + 115) + 24 * (*(this + 4) + v143)) + 8 * v145);
        v250.imagp = &v250.realp[v146];
        MEMORY[0x1E12BE940](v250.realp, 1, this + 112, v250.realp, 1, *(this + 9));
        v147 = *(this + 11);
        if (v139)
        {
          ecutils::fcn_complex_mult_add(&v250, &v257, &v256, &v256, v147);
        }

        else
        {
          v237 = v250;
          v261 = vaddq_s64(v257, v230);
          v262 = vaddq_s64(v250, v230);
          v260 = vaddq_s64(v256, v230);
          vDSP_zvmul(&v262, 1, &v261, 1, &v260, 1, (v147 - 1), 1);
          *v256.realp = *v237.realp * *v257.realp;
          *v256.imagp = *v237.imagp * *v257.imagp;
        }

        ++v139;
      }

      while (v136 != v139);
      v243 = 1.0;
      v148 = *(this + 64);
      v149 = *(this + 11);
      v238 = vdupq_n_s64(4uLL);
      v262 = vaddq_s64(v256, v238);
      vDSP_zvmags(&v262, 1, v148 + 1, 1, (v149 - 1));
      *v148 = *v256.realp * *v256.realp;
      v148[v149] = *v256.imagp * *v256.imagp;
      MEMORY[0x1E12BE7E0](*(this + 52), 1, *(this + 64), 1, &v243, *(this + 64), 1, *(this + 10));
      vDSP_vdiv(*(this + 64), 1, *(this + 52), 1, *(this + 52), 1, *(this + 10));
      v150 = *(this + 52);
      v151 = *(this + 11);
      v226 = v252;
      v261 = vaddq_s64(v252, v238);
      v262 = vaddq_s64(v256, v238);
      vDSP_zrvmul(&v262, 1, (v150 + 4), 1, &v261, 1, (v151 - 1));
      *v226.realp = *v256.realp * *v150;
      *v226.imagp = *v256.imagp * *(v150 + 4 * v151);
      vvsqrtf(*(this + 64), *(this + 64), &v242);
      MEMORY[0x1E12BE810](v256.realp, 1, v256.realp, 1, (*(this + 11) + 1));
      v152 = 0;
      do
      {
        v153 = *(this + 40);
        if (v152 >= (*(this + 41) - v153) >> 2)
        {
          goto LABEL_176;
        }

        v154 = 3 * *(v153 + 4 * v152);
        v155 = *(this + 11);
        v156 = *(*(this + 115) + 24 * (*(this + 4) + v143));
        v157 = (*(*(this + 97) + 8 * v154) + 4 * v155);
        v249.realp = *(*(this + 97) + 8 * v154);
        v249.imagp = v157;
        v250.realp = *(v156 + 8 * v154);
        v250.imagp = &v250.realp[v155];
        ecutils::fcn_complex_mult_add_mult_add(&v256, &v250, &v249, &v252, &v250, v155);
        v158 = *(this + 64);
        v159 = *(this + 11);
        v239 = v250;
        v261 = vaddq_s64(v250, vdupq_n_s64(4uLL));
        v262 = v261;
        vDSP_zrvmul(&v262, 1, (v158 + 4), 1, &v261, 1, (v159 - 1));
        *v239.realp = *v239.realp * *v158;
        *v239.imagp = *v239.imagp * *(v158 + 4 * v159);
        ++v152;
      }

      while (v136 != v152);
      ++v137;
      ++v136;
    }

    while (v137 != v223);
    MEMORY[0x1E12BE940](*(this + 52), 1, this + 52, *(this + 52), 1, *(this + 10));
    v160 = 0;
    v231 = vdupq_n_s64(4uLL);
    do
    {
      v161 = *(this + 40);
      if (v160 >= (*(this + 41) - v161) >> 2)
      {
        goto LABEL_176;
      }

      v162 = *(this + 11);
      v249.realp = *(*(this + 97) + 24 * *(v161 + 4 * v160));
      v249.imagp = &v249.realp[v162];
      v163 = *(this + 52);
      v240 = v249;
      v261 = vaddq_s64(v249, v231);
      v262 = v261;
      vDSP_zrvmul(&v262, 1, (v163 + 4), 1, &v261, 1, (v162 - 1));
      *v240.realp = *v240.realp * *v163;
      *v240.imagp = *v240.imagp * *(v163 + 4 * v162);
      ++v160;
    }

    while (v223 != v160);
    MEMORY[0x1E12BE7F0](*(this + 58), 1, *(this + 52), 1, *(this + 52), 1, *(this + 10));
    v243 = 1.0 - *(this + 13);
    MEMORY[0x1E12BE910](*(this + 52), 1, this + 104, &v243, *(this + 52), 1, *(this + 10));
  }

  else
  {
    if (v93 != 2)
    {
      goto LABEL_129;
    }

    v94 = *(this + 4);
    if (v94)
    {
      v95 = 0;
      for (j = 0; j < v94; ++j)
      {
        if (((*(*(this + 34) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
        {
          vDSP_vclr(*(*(this + 97) + v95), 1, *(this + 9));
          memcpy(*(*(this + 118) + v95), *(*(this + 94) + v95), 4 * *(this + 9));
          v94 = *(this + 4);
        }

        v95 += 24;
      }
    }

    v243 = 1.0;
    vDSP_vfill(&v243, *(this + 52), 1, *(this + 10));
    vDSP_svdiv(this + 25, *(this + 58), 1, *(this + 61), 1, *(this + 10));
    LODWORD(v97) = *(this + 4);
    if (v97)
    {
      v98 = 0;
      v236 = vdupq_n_s64(4uLL);
      v99 = 24;
      v100 = 1;
      do
      {
        if ((*(*(this + 34) + 8 * (v98 >> 6)) & (1 << v98)) == 0)
        {
          v101 = *(this + 11);
          v257.realp = *(*(this + 118) + 24 * v98);
          v257.imagp = &v257.realp[v101];
          v249.realp = *(*(this + 97) + 24 * v98);
          v249.imagp = &v249.realp[v101];
          v102 = *(this + 55);
          v262 = vaddq_s64(v257, v236);
          vDSP_zvmags(&v262, 1, v102 + 1, 1, (v101 - 1));
          *v102 = *v257.realp * *v257.realp;
          v102[v101] = *v257.imagp * *v257.imagp;
          MEMORY[0x1E12BE7F0](*(this + 61), 1, *(this + 52), 1, *(this + 64), 1, *(this + 10));
          v103 = *(*(this + 121) + 24 * v98);
          MEMORY[0x1E12BE940](v103, 1, this + 96, v103, 1, *(this + 10));
          MEMORY[0x1E12BE780](*(this + 64), 1, *(this + 55), 1, *(*(this + 121) + 24 * v98), 1, *(*(this + 121) + 24 * v98), 1, *(this + 10));
          vDSP_meanv(*(*(this + 121) + 24 * v98), 1, &v243, *(this + 10));
          if (v243 >= 0.00000011921)
          {
            v243 = 0.00000011921;
            vDSP_vthr(*(*(this + 121) + 24 * v98), 1, &v243, *(this + 58), 1, *(this + 10));
            MEMORY[0x1E12BE810](*(this + 64), 1, *(this + 64), 1, *(this + 10));
            vDSP_vdiv(*(this + 58), 1, *(this + 64), 1, *(this + 64), 1, *(this + 10));
            v104 = *(this + 64);
            v105 = *(this + 11);
            v106 = vdupq_n_s64(4uLL);
            v225 = v249;
            v229 = vaddq_s64(v249, v106);
            v261 = v229;
            v262 = vaddq_s64(v257, v106);
            vDSP_zrvmul(&v262, 1, (v104 + 4), 1, &v261, 1, (v105 - 1));
            *v225.realp = *v257.realp * *v104;
            *v225.imagp = *v257.imagp * *(v104 + 4 * v105);
            v107 = *(this + 11);
            v261 = v229;
            v262 = v229;
            vDSP_zvconj(&v262, 1, &v261, 1, (v107 - 1));
            v243 = 1.0;
            MEMORY[0x1E12BE7E0](*(this + 64), 1, *(this + 55), 1, &v243, *(this + 64), 1, *(this + 10));
            MEMORY[0x1E12BE7F0](*(this + 52), 1, *(this + 64), 1, *(this + 52), 1, *(this + 10));
            v97 = *(this + 4);
            if (v98 + 1 < v97)
            {
              v108 = v99;
              v109 = v100;
              do
              {
                if (((*(*(this + 34) + ((v109 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
                {
                  v110 = *(this + 11);
                  v111 = *(*(this + 124) + 24 * v98);
                  v252.realp = *(*(this + 118) + v108);
                  v252.imagp = &v252.realp[v110];
                  v250.realp = *(v111 + v108);
                  v250.imagp = &v250.realp[v110];
                  ecutils::fcn_complex_mult_add_mult_add(&v257, &v250, &v252, &v249, &v250, v110);
                  LODWORD(v97) = *(this + 4);
                }

                ++v109;
                v108 += 24;
              }

              while (v109 < v97);
            }
          }

          else
          {
            *(*(this + 34) + 8 * (v98 >> 6)) |= 1 << v98;
            LODWORD(v97) = *(this + 4);
          }
        }

        ++v98;
        ++v100;
        v99 += 24;
      }

      while (v98 < v97);
      v112 = (v97 - 1);
      if (v97 - 1 >= 0)
      {
        v113 = v97 - 2;
        do
        {
          if (((*(*(this + 34) + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
          {
            v114 = (*(*(this + 97) + 24 * v112) + 4 * *(this + 11));
            v257.realp = *(*(this + 97) + 24 * v112);
            v257.imagp = v114;
            if (v97 - 2 >= 0)
            {
              v115 = 24 * v113;
              v116 = v113;
              v117 = v112;
              do
              {
                if (((*(*(this + 34) + ((v116 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
                {
                  v118 = *(this + 11);
                  v252.realp = *(*(this + 97) + v115);
                  v252.imagp = &v252.realp[v118];
                  v250.realp = *(*(*(this + 124) + v115) + 24 * v112);
                  v250.imagp = &v250.realp[v118];
                  ecutils::fcn_complex_mult_add(&v257, &v250, &v252, &v252, v118);
                }

                --v116;
                --v117;
                v115 -= 24;
              }

              while (v117 > 0);
            }
          }

          LODWORD(v97) = v112;
          --v113;
        }

        while (v112-- > 0);
      }
    }

    v243 = 1.0 - *(this + 13);
    MEMORY[0x1E12BE910](*(this + 52), 1, this + 52, &v243, *(this + 52), 1, *(this + 10));
    v120 = *(this + 4);
    v92 = a8;
    if (!v120)
    {
      goto LABEL_129;
    }

    v121 = 0;
    v122 = 0;
    realp = v249.realp;
    imagp = v249.imagp;
    do
    {
      if (((*(*(this + 34) + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
      {
        realp = *(*(this + 97) + v121);
        imagp = &realp[*(this + 11)];
        MEMORY[0x1E12BE940](realp, 1, this + 52, realp, 1, *(this + 9));
        v120 = *(this + 4);
      }

      ++v122;
      v121 += 24;
    }

    while (v122 < v120);
    v249.realp = realp;
    v249.imagp = imagp;
  }

  v92 = a8;
LABEL_129:
  LODWORD(v164) = *(this + 6);
  if (v164)
  {
    v165 = 0;
    v241 = vdupq_n_s64(4uLL);
    do
    {
      if (((*(*(this + 31) + ((v165 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v165) & 1) == 0)
      {
        v166 = *(this + 11);
        v254.realp = *(*(this + 82) + 24 * v165);
        v254.imagp = &v254.realp[v166];
        v167 = *(this + 4);
        if (v167)
        {
          v168 = 0;
          for (k = 0; k < v167; ++k)
          {
            if (((*(*(this + 34) + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
            {
              v170 = *(this + 11);
              v171 = *(*(this + 100) + 24 * v165);
              v249.realp = *(*(this + 97) + v168);
              v249.imagp = &v249.realp[v170];
              v255.realp = *(v171 + v168);
              v255.imagp = &v255.realp[v170];
              ecutils::fcn_complex_mult_add(&v249, &v254, &v255, &v255, v170);
              v167 = *(this + 4);
            }

            v168 += 24;
          }

          v166 = *(this + 11);
        }

        v172 = *(this + 52);
        v261 = vaddq_s64(v254, v241);
        v262 = v261;
        vDSP_zrvmul(&v262, 1, (v172 + 4), 1, &v261, 1, (v166 - 1));
        *v254.realp = *v254.realp * *v172;
        *v254.imagp = *v254.imagp * *(v172 + 4 * v166);
        if (*(this + 145) == 1 && !*(this + 33))
        {
          v173 = *(this + 11);
          v174 = (*(*(this + 85) + 24 * v165) + 4 * v173);
          v251.realp = *(*(this + 85) + 24 * v165);
          v251.imagp = v174;
          v175 = *(this + 148);
          if (v175)
          {
            MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v175, *(*(this + 73) + 24 * v165), &v251, 1.0);
            v173 = *(this + 11);
          }

          v176 = *(this + 55);
          v232 = vdupq_n_s64(4uLL);
          v262 = vaddq_s64(v254, v232);
          vDSP_zvabs(&v262, 1, v176 + 1, 1, (v173 - 1));
          *v176 = fabsf(*v254.realp);
          v176[v173] = fabsf(*v254.imagp);
          v177 = *(this + 58);
          v178 = *(this + 11);
          v262 = vaddq_s64(v251, v232);
          vDSP_zvabs(&v262, 1, v177 + 1, 1, (v178 - 1));
          *v177 = fabsf(*v251.realp);
          v177[v178] = fabsf(*v251.imagp);
          vDSP_vthr(*(this + 55), 1, this + 17, *(this + 55), 1, *(this + 10));
          vDSP_vthr(*(this + 58), 1, this + 17, *(this + 58), 1, *(this + 10));
          vDSP_vmin(*(this + 58), 1, *(this + 55), 1, *(this + 58), 1, *(this + 10));
          vDSP_vdiv(*(this + 55), 1, *(this + 58), 1, *(this + 58), 1, *(this + 10));
          v179 = *(this + 58);
          v180 = *(this + 11);
          v261 = vaddq_s64(v254, v232);
          v262 = v261;
          vDSP_zrvmul(&v262, 1, (v179 + 4), 1, &v261, 1, (v180 - 1));
          *v254.realp = *v254.realp * *v179;
          *v254.imagp = *v254.imagp * *(v179 + 4 * v180);
        }

        ecutils::fcn_otplace_fftReal_inverse(*(this + 148), &v254, *(*(this + 79) + 24 * v165), *(this + 11), *(this + 14));
        if (*(this + 145) == 1)
        {
          if (*(this + 33))
          {
            LODWORD(v262.realp) = 0;
            vDSP_svesq((*(*(this + 79) + 24 * v165) + 4 * (*(this + 9) - *(this + 12))), 1, &v262, *(this + 12));
            v181.n128_u32[0] = v262.realp;
            if (*&v262.realp > (*(*(this + 46) + 4 * v165) * *(this + 33)))
            {
              memcpy((*(*(this + 79) + 24 * v165) + 4 * *(this + 11)), (*(*(this + 73) + 24 * v165) + 4 * *(this + 11)), 4 * *(this + 11));
            }
          }
        }

        MEMORY[0x1E12BE9A0](*(*(this + 79) + 24 * v165) + 4 * *(this + 11), 1, *(*(this + 73) + 24 * v165) + 4 * *(this + 11), 1, *(*(this + 76) + 24 * v165) + 4 * *(this + 11), 1, v181);
        if (v92 && *(this + 8) == 1)
        {
          if ((*(this + 5) >> 1) - 1 >= v165)
          {
            v182 = v165;
          }

          else
          {
            v182 = (*(this + 5) >> 1) - 1;
          }

          v183 = *(this + 67);
          v184 = *(this + 11);
          v256.realp = v183;
          v256.imagp = &v183[v184];
          if (*(this + 148))
          {
            MultiRadixRealFFT::RealOutOfPlaceForwardTransform(*(this + 148), *(*(this + 76) + 24 * v165), &v256, 1.0);
            v183 = *(this + 67);
            v184 = *(this + 11);
          }

          ecutils::fcn_complex_mult_by_psd(v183, *(*(this + 145) + 24 * v182), v183, v184);
          ecutils::fcn_otplace_fftReal_inverse(*(this + 148), &v256, *(*(this + 76) + 24 * v165), *(this + 11), *(this + 14));
        }
      }

      ++v165;
      v164 = *(this + 6);
    }

    while (v165 < v164);
    if (v164)
    {
      v185 = 0;
      v186 = 0;
      v187 = &a6->mBuffers[0].mData;
      v188 = &a5->mBuffers[0].mData;
      v189 = &a2->mBuffers[0].mData;
      do
      {
        v190 = *v188;
        v191 = *v187;
        if ((*(*(this + 31) + ((v186 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v186))
        {
          v192 = *v189;
          v193 = *(this + 29);
          if (v193)
          {
            memcpy((*(*(this + 79) + v185) + 4 * (*(this + 9) - (v193 + *(this + 12)))), *(*(this + 88) + v185), 4 * v193);
            memcpy((*(*(this + 76) + v185) + 4 * (*(this + 9) - (*(this + 12) + *(this + 29)))), *(*(this + 91) + v185), 4 * *(this + 29));
          }

          memcpy((*(*(this + 79) + v185) + 4 * (*(this + 9) - *(this + 12))), v192, 4 * *(this + 12));
          vDSP_vclr((*(*(this + 76) + v185) + 4 * (*(this + 9) - *(this + 12))), 1, *(this + 12));
        }

        v194 = *(this + 29);
        if (v194)
        {
          __E = (*(*(this + 79) + v185) + 4 * (*(this + 9) - (v194 + *(this + 12))));
          vDSP_vmma(__E, 1, *(this + 37), 1, *(*(this + 88) + v185), 1, (*(this + 37) + 4 * v194), 1, __E, 1, v194);
          v195 = *(this + 29);
          __Ea = (*(*(this + 76) + v185) + 4 * (*(this + 9) - (*(this + 12) + v195)));
          vDSP_vmma(__Ea, 1, *(this + 37), 1, *(*(this + 91) + v185), 1, (*(this + 37) + 4 * v195), 1, __Ea, 1, v195);
          memcpy(*(*(this + 88) + v185), (*(*(this + 79) + v185) + 4 * (*(this + 9) - *(this + 29))), 4 * *(this + 29));
          memcpy(*(*(this + 91) + v185), (*(*(this + 76) + v185) + 4 * (*(this + 9) - *(this + 29))), 4 * *(this + 29));
          LODWORD(v194) = *(this + 29);
        }

        memcpy(v190, (*(*(this + 79) + v185) + 4 * (*(this + 9) - (*(this + 12) + v194))), 4 * *(this + 12));
        memcpy(v191, (*(*(this + 76) + v185) + 4 * (*(this + 9) - (*(this + 12) + *(this + 29)))), 4 * *(this + 12));
        ++v186;
        v185 += 24;
        v164 = *(this + 6);
        v187 += 2;
        v188 += 2;
        v189 += 2;
      }

      while (v186 < v164);
    }
  }

  if (*(this + 8) == 1 && v164 < *(this + 3))
  {
    v196 = v164;
    v197 = 16 * v164 + 16;
    v198 = (a6 + v197);
    v199 = (a5 + v197);
    do
    {
      v201 = *v199;
      v199 += 2;
      v200 = v201;
      v202 = *v198;
      v198 += 2;
      vDSP_vclr(v200, 1, *(this + 12));
      vDSP_vclr(v202, 1, *(this + 12));
      ++v196;
    }

    while (v196 < *(this + 3));
  }

  v203 = *(this + 37);
  if (v203)
  {
    v204 = (v203 - 1);
    v205 = *(this + 39);
    v206 = *(this + 38);
    if (*(this + 145) != 1 || *(this + 33))
    {
      v207 = (*(*(this + 85) + 24 * v204) + 4 * *(this + 11));
      v262.realp = *(*(this + 85) + 24 * v204);
      v262.imagp = v207;
      v208 = *(this + 148);
      if (v208)
      {
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform(v208, *(*(this + 73) + 24 * v204), &v262, 1.0);
      }
    }

    v209 = *(*(this + 85) + 24 * v204);
    v210 = *(this + 11) + v206;
    v262.realp = (v209 + 4 * v206);
    v262.imagp = (v209 + 4 * v210);
    v211 = *(*(this + 82) + 24 * v204);
    v261.realp = (v211 + 4 * v206);
    v261.imagp = (v211 + 4 * v210);
    v212 = *(this + 67);
    v260.realp = (v212 + 4 * v206);
    v260.imagp = (v212 + 4 * v210);
    v213 = v205 - v206 + 1;
    vDSP_zvsub(&v262, 1, &v261, 1, &v260, 1, v213);
    v215 = *(this + 40);
    v214 = this + 160;
    v259 = 1.0 - v215;
    vDSP_zvmags(&v262, 1, *(v214 + 8), 1, v213);
    MEMORY[0x1E12BE930](*(v214 + 8), 1, &v259, *(v214 + 2) + 4 * v206, 1, v214, *(v214 + 2) + 4 * v206, 1, v213);
    vDSP_zvcmul(&v262, 1, &v260, 1, &v260, 1, v213);
    vDSP_zvabs(&v260, 1, *(v214 + 8), 1, v213);
    MEMORY[0x1E12BE930](*(v214 + 8), 1, &v259, *(v214 + 5) + 4 * v206, 1, v214, *(v214 + 5) + 4 * v206, 1, v213);
    v258 = 629145252;
    MEMORY[0x1E12BE8A0](*(v214 + 2) + 4 * v206, 1, &v258, *(v214 + 8), 1, v213);
    vDSP_vdiv(*(v214 + 8), 1, (*(v214 + 5) + 4 * v206), 1, *(v214 + 8), 1, v213);
    vDSP_meanv(*(v214 + 8), 1, v214 + 1, v213);
    *(v214 + 1) = fmaxf(fminf(*(v214 + 1), 1.0), 0.0);
  }

  return 0;
}

void ecMIMO_iQRD::ec_init(ecMIMO_iQRD *this, char a2, int a3, int a4, int a5, unsigned int a6, int a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, unsigned int a17, unsigned int a18, unsigned int a19, BOOL a20, unsigned int a21, unsigned int a22, unsigned int a23, float a24, float a25, float a26)
{
  *(this + 32) = a21;
  *(this + 8) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
  *(this + 7) = a7;
  *(this + 8) = a8;
  *(this + 12) = a17;
  *(this + 18) = __exp10f(a13 / 10.0);
  *(this + 34) = __exp10f(a25 / 10.0);
  *(this + 35) = __exp10f(a26 / 10.0);
  (*(*this + 144))(this, a9);
  (*(*this + 152))(this, a10);
  *(this + 17) = 507307272;
  *(this + 20) = __exp10f(a11 / 10.0);
  *(this + 13) = a12;
  *(this + 19) = a18;
  v32 = *(this + 3);
  if (*(this + 8) == 1)
  {
    v32 -= *(this + 5) >> 1;
    if (v32 >= a6)
    {
      v32 = a6;
    }
  }

  *(this + 6) = v32;
  v33 = *(this + 8);
  v34 = *(this + 12);
  if (v33 < v34)
  {
    *(this + 8) = v34;
    v33 = v34;
  }

  if (v34 > a18)
  {
    *(this + 19) = v34;
  }

  if (-858993459 * v33 >= 0x33333334)
  {
    v35 = 1;
  }

  else
  {
    v35 = 5;
  }

  if (-1431655765 * v33 >= 0x55555556)
  {
    v36 = 4;
  }

  else
  {
    v36 = 12;
  }

  v37 = v36 * v35;
  do
  {
    v38 = v37;
    v37 *= 2;
  }

  while (v38 < v33);
  *(this + 9) = v37;
  *(this + 10) = v38 | 1;
  *(this + 11) = v38;
  v39 = v38 - v34;
  if (v39 >= a19)
  {
    v39 = a19;
  }

  *(this + 29) = v39;
  *(this + 120) = a20;
  *(this + 31) = 1.0 - (a14 * 0.5);
  *(this + 33) = a22;
  MultiRadixRealFFT_Create();
}

void ecMIMO_iQRD::ec_state_reset(ecMIMO_iQRD *this, int16x4_t a2)
{
  if (*(this + 37))
  {
    v3 = *(this + 10);
    __u = 0;
    std::vector<float>::assign(this + 22, v3, &__u, a2);
    v4 = *(this + 10);
    __u = 0;
    std::vector<float>::assign(this + 25, v4, &__u, v5);
    v6 = *(this + 9);
    __u = 0;
    std::vector<float>::assign(this + 28, v6, &__u, v7);
  }

  v8 = *(this + 3);
  LOBYTE(__u) = 0;
  std::vector<BOOL>::assign(this + 31, v8, &__u);
  v9 = *(this + 4);
  LOBYTE(__u) = 0;
  std::vector<BOOL>::assign(this + 34, v9, &__u);
  v10 = *(this + 4);
  __u = 0;
  std::vector<unsigned int>::assign((this + 320), v10, &__u);
  v11 = *(this + 4);
  __u = 0;
  std::vector<float>::assign(this + 43, v11, &__u, v12);
  v13 = *(this + 3);
  __u = 0;
  std::vector<float>::assign(this + 46, v13, &__u, v14);
  v15 = *(this + 9);
  __u = 0;
  std::vector<float>::assign(this + 49, v15, &__u, v16);
  v17 = *(this + 10);
  __u = 0;
  std::vector<float>::assign(this + 52, v17, &__u, v18);
  v19 = *(this + 10);
  __u = 0;
  std::vector<float>::assign(this + 55, v19, &__u, v20);
  v21 = *(this + 10);
  __u = 0;
  std::vector<float>::assign(this + 58, v21, &__u, v22);
  v23 = *(this + 10);
  __u = 1065353216;
  std::vector<float>::assign(this + 61, v23, &__u, v24);
  v25 = *(this + 10);
  __u = 1065353216;
  std::vector<float>::assign(this + 64, v25, &__u, v26);
  v27 = *(this + 9);
  __u = 0;
  std::vector<float>::assign(this + 67, v27, &__u, v28);
  ecutils::fcn_vector_init<float>(this + 70, *(this + 4), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 73, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 76, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 79, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 82, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 85, *(this + 3), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 94, *(this + 4), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 97, *(this + 4), *(this + 9), 0.0);
  ecutils::fcn_vector_init<float>(this + 800, *(this + 3), *(this + 4), *(this + 9), 0.0);
  v30 = *(this + 29);
  if (v30)
  {
    __u = 0;
    std::vector<float>::assign(this + 37, (2 * v30), &__u, v29);
    ecutils::fcn_vector_init<float>(this + 88, *(this + 3), *(this + 29), 0.0);
    ecutils::fcn_vector_init<float>(this + 91, *(this + 3), *(this + 29), 0.0);
    v31 = (2 * *(this + 29));
    if (v31)
    {
      v32 = 0;
      v33 = vdupq_n_s64(v31 - 1);
      v34 = xmmword_1DE095150;
      v35 = xmmword_1DE095160;
      v64 = vdupq_n_s64(0x401921FB54442D18uLL);
      v36 = (v31 + 3) & 0x1FFFFFFFCLL;
      v62 = vdupq_lane_s64(COERCE__INT64(v31), 0);
      v63 = vdupq_n_s64(4uLL);
      v37 = (*(this + 37) + 8);
      v65 = v33;
      do
      {
        v68 = v35;
        v69 = v34;
        v38 = vorr_s8(vdup_n_s32(v32), 0x300000002);
        v39 = vmovn_s64(vcgeq_u64(v33, v35));
        v67 = vuzp1_s16(v39, v38);
        v40.i64[0] = v32;
        v40.i64[1] = (v32 + 1);
        v41 = vcvtq_f64_u64(v40);
        v40.i64[0] = v38.u32[0];
        v40.i64[1] = v38.u32[1];
        v70 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v40), v64), v62));
        v42 = vcvt_f32_f64(vdivq_f64(vmulq_f64(v41, v64), v62));
        v66 = v42.f32[0];
        v71 = cosf(v42.f32[1]);
        *&v43 = cosf(v66);
        *(&v43 + 1) = v71;
        v72 = v43;
        v44 = cosf(v70.f32[0]);
        v45 = v72;
        *(&v45 + 2) = v44;
        *v73 = v45;
        v46 = cosf(v70.f32[1]);
        v47 = v67;
        if (v67.i8[0])
        {
          *v47.i32 = (1.0 - v73[0]) * 0.5;
          *(v37 - 2) = *v47.i32;
        }

        if (vuzp1_s16(v39, v47).i8[2])
        {
          *(v37 - 1) = (1.0 - v73[1]) * 0.5;
        }

        v33 = v65;
        v48 = vmovn_s64(vcgeq_u64(v65, v69));
        if (vuzp1_s16(v48, v48).i32[1])
        {
          *v37 = (1.0 - v73[2]) * 0.5;
          v37[1] = (1.0 - v46) * 0.5;
        }

        v32 += 4;
        v29 = *v63.i8;
        v34 = vaddq_s64(v69, v63);
        v35 = vaddq_s64(v68, v63);
        v37 += 4;
      }

      while (v36 != v32);
    }
  }

  if ((*(this + 120) & 1) == 0)
  {
    ecutils::fcn_vector_init<float>(this + 103, *(this + 3), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 106, *(this + 3), *(this + 10), *(this + 35));
    ecutils::fcn_vector_init<float>(this + 872, *(this + 3), *(this + 3), *(this + 9), 0.0);
  }

  v49 = *(this + 32);
  if (v49 == 2)
  {
    ecutils::fcn_vector_init<float>(this + 118, *(this + 4), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 121, *(this + 4), *(this + 10), *(this + 34));
    ecutils::fcn_vector_init<float>(this + 992, *(this + 4), *(this + 4), *(this + 9), 0.0);
  }

  else if (v49 == 1)
  {
    v50 = *(this + 9);
    __u = 1065353216;
    std::vector<float>::assign(this + 112, v50, &__u, v29);
    ecutils::fcn_vector_init<float>(this + 920, *(this + 4), *(this + 4), *(this + 9), 0.0);
    LODWORD(v51) = *(this + 4);
    if (v51)
    {
      v52 = 0;
      v53 = 0;
      v54 = -1;
      do
      {
        __u = 1065353216;
        vDSP_vfill(&__u, *(*(*(this + 115) + v52) + 24 * (v51 + v54)), 1, *(this + 10));
        ++v53;
        v51 = *(this + 4);
        --v54;
        v52 += 24;
      }

      while (v53 < v51);
    }
  }

  if (*(this + 8) == 1)
  {
    v55 = *(this + 9);
    __u = 0;
    std::vector<float>::assign(this + 127, v55, &__u, v29);
    v56 = *(this + 9);
    __u = 0;
    std::vector<float>::assign(this + 130, v56, &__u, v57);
    v58 = *(this + 10);
    __u = 0;
    std::vector<float>::assign(this + 133, v58, &__u, v59);
    v60 = *(this + 10);
    __u = 0;
    std::vector<float>::assign(this + 136, v60, &__u, v61);
    ecutils::fcn_vector_init<float>(this + 139, *(this + 3), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 142, *(this + 3), *(this + 9), 0.0);
    ecutils::fcn_vector_init<float>(this + 145, *(this + 4), *(this + 10), 0.0);
  }
}

void ecMIMO_iQRD::~ecMIMO_iQRD(ecMIMO_iQRD *this)
{
  ecMIMO_iQRD::~ecMIMO_iQRD(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5922CF8;
  v2 = *(this + 148);
  if (v2)
  {
    MultiRadixFFT_Dispose(v2);
  }

  v24 = (this + 1160);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 1136);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 1112);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v3 = *(this + 136);
  if (v3)
  {
    *(this + 137) = v3;
    operator delete(v3);
  }

  v4 = *(this + 133);
  if (v4)
  {
    *(this + 134) = v4;
    operator delete(v4);
  }

  v5 = *(this + 130);
  if (v5)
  {
    *(this + 131) = v5;
    operator delete(v5);
  }

  v6 = *(this + 127);
  if (v6)
  {
    *(this + 128) = v6;
    operator delete(v6);
  }

  v24 = (this + 992);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 968);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 944);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 920);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v7 = *(this + 112);
  if (v7)
  {
    *(this + 113) = v7;
    operator delete(v7);
  }

  v24 = (this + 872);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 848);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 824);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 800);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 776);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 752);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 728);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 704);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 680);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 656);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 632);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 608);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 584);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = (this + 560);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v8 = *(this + 67);
  if (v8)
  {
    *(this + 68) = v8;
    operator delete(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    *(this + 65) = v9;
    operator delete(v9);
  }

  v10 = *(this + 61);
  if (v10)
  {
    *(this + 62) = v10;
    operator delete(v10);
  }

  v11 = *(this + 58);
  if (v11)
  {
    *(this + 59) = v11;
    operator delete(v11);
  }

  v12 = *(this + 55);
  if (v12)
  {
    *(this + 56) = v12;
    operator delete(v12);
  }

  v13 = *(this + 52);
  if (v13)
  {
    *(this + 53) = v13;
    operator delete(v13);
  }

  v14 = *(this + 49);
  if (v14)
  {
    *(this + 50) = v14;
    operator delete(v14);
  }

  v15 = *(this + 46);
  if (v15)
  {
    *(this + 47) = v15;
    operator delete(v15);
  }

  v16 = *(this + 43);
  if (v16)
  {
    *(this + 44) = v16;
    operator delete(v16);
  }

  v17 = *(this + 40);
  if (v17)
  {
    *(this + 41) = v17;
    operator delete(v17);
  }

  v18 = *(this + 37);
  if (v18)
  {
    *(this + 38) = v18;
    operator delete(v18);
  }

  v19 = *(this + 34);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(this + 31);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 28);
  if (v21)
  {
    *(this + 29) = v21;
    operator delete(v21);
  }

  v22 = *(this + 25);
  if (v22)
  {
    *(this + 26) = v22;
    operator delete(v22);
  }

  v23 = *(this + 22);
  if (v23)
  {
    *(this + 23) = v23;
    operator delete(v23);
  }
}