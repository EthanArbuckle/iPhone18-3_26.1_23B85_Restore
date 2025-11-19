void std::allocator<AUParameterAutomationEvent>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<RecordedParameterEvent>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 result)
{
  if (*a2 < *a1)
  {
    if (*a3 < *a2)
    {
      result = *a1;
      v5 = *(a1 + 16);
      v6 = *(a1 + 32);
      v7 = *(a3 + 32);
      v8 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
    }

    else
    {
      result = *a1;
      v17 = *(a1 + 16);
      v18 = *(a1 + 32);
      v19 = *(a2 + 32);
      v20 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v20;
      *(a1 + 32) = v19;
      *(a2 + 32) = v18;
      *a2 = result;
      *(a2 + 16) = v17;
      if (*a3 >= *a2)
      {
        goto LABEL_14;
      }

      result = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v21 = *(a3 + 32);
      v22 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
    }

    *(a3 + 32) = v6;
    *a3 = result;
    *(a3 + 16) = v5;
    goto LABEL_14;
  }

  if (*a3 < *a2)
  {
    result = *a2;
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a3 + 32);
    v12 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *(a3 + 32) = v10;
    *a3 = result;
    *(a3 + 16) = v9;
    if (*a2 < *a1)
    {
      result = *a1;
      v13 = *(a1 + 16);
      v14 = *(a1 + 32);
      v15 = *(a2 + 32);
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      *(a1 + 32) = v15;
      *(a2 + 32) = v14;
      *a2 = result;
      *(a2 + 16) = v13;
    }
  }

LABEL_14:
  if (*a4 < *a3)
  {
    result = *a3;
    v23 = *(a3 + 16);
    v24 = *(a3 + 32);
    v25 = *(a4 + 32);
    v26 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v26;
    *(a3 + 32) = v25;
    *(a4 + 32) = v24;
    *a4 = result;
    *(a4 + 16) = v23;
    if (*a3 < *a2)
    {
      result = *a2;
      v27 = *(a2 + 16);
      v28 = *(a2 + 32);
      v29 = *(a3 + 32);
      v30 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v30;
      *(a2 + 32) = v29;
      *(a3 + 32) = v28;
      *a3 = result;
      *(a3 + 16) = v27;
      if (*a2 < *a1)
      {
        result = *a1;
        v31 = *(a1 + 16);
        v32 = *(a1 + 32);
        v33 = *(a2 + 32);
        v34 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v34;
        *(a1 + 32) = v33;
        *(a2 + 32) = v32;
        *a2 = result;
        *(a2 + 16) = v31;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a2 - 40;
        v21 = *(a1 + 48);
        if (*(a1 + 40) < *a1)
        {
          v22 = *(a2 - 32);
          if (v22 < v21 || v22 <= v21 && *v6 < *(a1 + 40))
          {
LABEL_15:
            v23 = *a1;
            v24 = *(a1 + 16);
            v25 = *(a1 + 32);
            v26 = *(v6 + 32);
            v27 = *(v6 + 16);
            *a1 = *v6;
            *(a1 + 16) = v27;
            *(a1 + 32) = v26;
LABEL_16:
            *(v6 + 32) = v25;
            result = 1;
            *v6 = v23;
            *(v6 + 16) = v24;
            goto LABEL_73;
          }

          v56 = *(a1 + 32);
          v58 = *a1;
          v57 = *(a1 + 16);
          v59 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v59;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v58;
          *(a1 + 56) = v57;
          *(a1 + 72) = v56;
          if (*(a2 - 40) < *(a1 + 40))
          {
            v23 = *(a1 + 40);
            v24 = *(a1 + 56);
            v25 = *(a1 + 72);
            v60 = *(a2 - 8);
            v61 = *(a2 - 24);
            *(a1 + 40) = *v6;
            *(a1 + 56) = v61;
            *(a1 + 72) = v60;
            goto LABEL_16;
          }

          goto LABEL_72;
        }

        v37 = *(a2 - 32);
        if (v37 >= v21 && (v37 > v21 || *v6 >= *(a1 + 40)))
        {
          goto LABEL_72;
        }

        v38 = *(a1 + 40);
        v39 = *(a1 + 56);
        v40 = *(a1 + 72);
        v41 = *(a2 - 8);
        v42 = *(a2 - 24);
        *(a1 + 40) = *v6;
        *(a1 + 56) = v42;
        *(a1 + 72) = v41;
        *(a2 - 8) = v40;
        *v6 = v38;
        *(a2 - 24) = v39;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,0>(a1, a1 + 40, a1 + 80, a2 - 40, a3);
        goto LABEL_72;
      case 5:
        v7 = (a2 - 40);
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterAutomationEvent *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a3);
        if (__PAIR128__(*(a2 - 32), *v7) >= *(a1 + 120))
        {
          goto LABEL_72;
        }

        v8 = *(a1 + 120);
        v9 = *(a1 + 136);
        v10 = *(a1 + 152);
        v11 = *(a2 - 8);
        v12 = *(a2 - 24);
        *(a1 + 120) = *v7;
        *(a1 + 136) = v12;
        *(a1 + 152) = v11;
        *(a2 - 8) = v10;
        *v7 = v8;
        *(a2 - 24) = v9;
        if (*(a1 + 120) >= *(a1 + 80))
        {
          goto LABEL_72;
        }

        v13 = *(a1 + 112);
        v15 = *(a1 + 80);
        v14 = *(a1 + 96);
        v16 = *(a1 + 136);
        *(a1 + 80) = *(a1 + 120);
        *(a1 + 96) = v16;
        *(a1 + 112) = *(a1 + 152);
        *(a1 + 120) = v15;
        *(a1 + 136) = v14;
        *(a1 + 152) = v13;
        if (*(a1 + 80) >= *(a1 + 40))
        {
LABEL_72:
          result = 1;
          goto LABEL_73;
        }

        v17 = *(a1 + 72);
        v18 = *(a1 + 40);
        v19 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        v20 = *(a1 + 56);
        *(a1 + 56) = v19;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v18;
        *(a1 + 96) = v20;
        *(a1 + 112) = v17;
        break;
      default:
        goto LABEL_17;
    }

    if (*(a1 + 40) < *a1)
    {
      v43 = *(a1 + 32);
      v45 = *a1;
      v44 = *(a1 + 16);
      v46 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v46;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v45;
      *(a1 + 56) = v44;
      result = 1;
      *(a1 + 72) = v43;
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v5 < 2)
  {
    goto LABEL_72;
  }

  if (v5 == 2)
  {
    v6 = a2 - 40;
    if (*(a2 - 40) >= *a1)
    {
      goto LABEL_72;
    }

    goto LABEL_15;
  }

LABEL_17:
  v29 = a1 + 80;
  v30 = *(a1 + 48);
  v31 = *(a1 + 8);
  if (*(a1 + 40) < *a1)
  {
    v32 = *(a1 + 88);
    if (v32 < v30 || v32 <= v30 && *v29 < *(a1 + 40))
    {
      v33 = *(a1 + 32);
      v35 = *a1;
      v34 = *(a1 + 16);
      v36 = *(a1 + 96);
      *a1 = *v29;
      *(a1 + 16) = v36;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v62 = *(a1 + 32);
      v64 = *a1;
      v63 = *(a1 + 16);
      v65 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v65;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v64;
      *(a1 + 56) = v63;
      *(a1 + 72) = v62;
      if (__PAIR128__(v32, *v29) >= *(a1 + 40))
      {
        goto LABEL_41;
      }

      v33 = *(a1 + 72);
      v34 = *(a1 + 56);
      v35 = *(a1 + 40);
      v66 = *(a1 + 96);
      *(a1 + 40) = *v29;
      *(a1 + 56) = v66;
      *(a1 + 72) = *(a1 + 112);
    }

    *v29 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v33;
    goto LABEL_41;
  }

  v47 = *(a1 + 88);
  if (v47 < v30 || v47 <= v30 && *v29 < *(a1 + 40))
  {
    v48 = *(a1 + 72);
    v49 = *(a1 + 56);
    v50 = *(a1 + 40);
    v51 = *(a1 + 96);
    *(a1 + 40) = *v29;
    *(a1 + 56) = v51;
    *(a1 + 72) = *(a1 + 112);
    *v29 = v50;
    *(a1 + 96) = v49;
    *(a1 + 112) = v48;
    if (*(a1 + 40) < __PAIR128__(v31, *a1))
    {
      v52 = *(a1 + 32);
      v54 = *a1;
      v53 = *(a1 + 16);
      v55 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v55;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v54;
      *(a1 + 56) = v53;
      *(a1 + 72) = v52;
    }
  }

LABEL_41:
  v67 = a1 + 120;
  if (a1 + 120 == a2)
  {
    goto LABEL_72;
  }

  v68 = 0;
  v69 = 0;
  while (2)
  {
    v70 = *(v67 + 8);
    v71 = *(v29 + 8);
    if (v70 >= v71)
    {
      if (v70 > v71)
      {
        goto LABEL_56;
      }

      v72 = *v67;
      if (*v67 >= *v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v72 = *v67;
    }

    v80 = *(v67 + 32);
    v79 = *(v67 + 16);
    v73 = *(v29 + 16);
    *v67 = *v29;
    *(v67 + 16) = v73;
    *(v67 + 32) = *(v29 + 32);
    v74 = v68;
    while (1)
    {
      v75 = a1 + v74;
      v76 = *(a1 + v74 + 48);
      if (v70 >= v76)
      {
        break;
      }

LABEL_49:
      v29 -= 40;
      v77 = *(v75 + 56);
      *(v75 + 80) = *(v75 + 40);
      *(v75 + 96) = v77;
      *(v75 + 112) = *(v75 + 72);
      v74 -= 40;
      if (v74 == -80)
      {
        v29 = a1;
        goto LABEL_55;
      }
    }

    if (v70 <= v76)
    {
      if (v72 >= *(v75 + 40))
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v29 = a1 + v74 + 80;
LABEL_55:
    *v29 = v72;
    *(v29 + 8) = v70;
    *(v29 + 16) = v79;
    *(v29 + 32) = v80;
    if (++v69 != 8)
    {
LABEL_56:
      v29 = v67;
      v68 += 40;
      v67 += 40;
      if (v67 == a2)
      {
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  result = v67 + 40 == a2;
LABEL_73:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__tree<AUObserverController::AddressOriginator>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *std::__tree<AUObserverController::AddressOriginator>::__find_leaf_high(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v4 = v5;
        v7 = v5[4];
        if (v7 <= a3 && (v7 < a3 || v5[5] <= a4))
        {
          break;
        }

        v5 = *v5;
        v8 = v4;
        if (!*v4)
        {
          goto LABEL_10;
        }
      }

      v5 = v5[1];
    }

    while (v5);
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

LABEL_10:
  *a2 = v4;
  return v8;
}

void std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F032F260;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F032F260;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1},std::allocator<AUObserverController::parameterChanged(EParamChangeFlags,unsigned long long,float,AUParameterObserverExtendedToken const&,unsigned long long,AUParameterAutomationEventType)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F032F260;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_18F7DDF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_18F7DF0F8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t ChunkyAudioFile::WriteChunkData(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a2 + 4);
  v7 = *(a2 + 16) + v6;
  v8 = *(a2 + 8) - v6;
  v14 = 0;
  result = (*(*a1[13] + 72))(a1[13], 0, v7, v8, a3, &v14);
  *a4 = v14;
  if (!result)
  {
    v10 = ((*a1)[100])(a1, v8) - v8;
    if (v10)
    {
      v13 = 0;
      v11 = *a4 + v7;
      while (1)
      {
        v12 = v10 >= 8 ? 8 : v10;
        result = (*(*a1[13] + 56))(a1[13], 0, v11, v12, &ChunkyAudioFile::WriteChunkData(ChunkInfo64 *,void const*,unsigned long long *)::sZeros, &v13);
        if (result)
        {
          break;
        }

        v11 += v13;
        v10 -= v13;
        if (!v10)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ChunkyAudioFile::WriteChunkHeader(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a2 + 4) != 8)
  {
    return 1869627199;
  }

  v14 = v3;
  v15 = v4;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v7 > 0xFFFFFFF7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 - 8;
  }

  v9 = bswap32(*a2);
  v10 = bswap32(v8);
  if (*(a1 + 189))
  {
    v8 = v10;
  }

  v13[0] = v9;
  v13[1] = v8;
  v12 = 0;
  result = (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v6, 8, v13, &v12);
  *a3 = v12;
  return result;
}

uint64_t ChunkyAudioFile::AddUniqueChunk(ChunkyAudioFile *this, uint64_t a2, uint64_t a3, const void *a4)
{
  result = ChunkyAudioFile::ReplaceChunk(this, a2, 0, a3, a4);
  if (result == -1)
  {
    v9 = *(*this + 768);

    return v9(this, a2, a3, a4);
  }

  return result;
}

uint64_t ChunkyAudioFile::ReplaceChunk(ChunkyAudioFile *this, uint64_t a2, int a3, unint64_t a4, const void *a5)
{
  if (a4 > 0xFFFFFFFE)
  {
    return 1869627199;
  }

  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = v8 - v7;
  if (v8 == v7)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(this + 45) + a4;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  v22 = 0;
  v21 = 0;
  v17 = 1;
  while (1)
  {
    v18 = v7 + 24 * v13;
    if (*v18 == a2)
    {
      break;
    }

LABEL_8:
    v13 = v17;
    if (v16 <= v17++)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v14 != a3)
  {
    ++v14;
    goto LABEL_8;
  }

  if (v15 == *(v18 + 8))
  {
    result = (*(*this + 784))(this, v18, &v21);
    if (!result)
    {
      return (*(*this + 792))(this, v18, a5, &v22);
    }
  }

  else
  {
    *v18 = 1179405394;
    ChunkyAudioFile::ConsolidateFillerChunks(this);
    v20 = *(*this + 768);

    return v20(this, a2, a4, a5);
  }

  return result;
}

void ChunkyAudioFile::ConsolidateFillerChunks(ChunkyAudioFile *this)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v1 = *(this + 18);
  v2 = (this + 144);
  v3 = *(this + 19) - v1;
  if (v3)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v6 = (v6 + 1);
      v8 = v1 + 24 * v5;
      v9 = *(v8 + 16);
      v15 = *v8;
      v16 = v9;
      if (v15 == 1179405394)
      {
        if (v7 > v6)
        {
          v10 = *(&v15 + 1);
          do
          {
            v11 = v1 + 24 * v6;
            if (*v11 != 1179405394)
            {
              break;
            }

            v6 = (v6 + 1);
            v10 += *(v11 + 8);
            *(&v15 + 1) = v10;
          }

          while (v7 > v6);
        }

        v14 = 0;
        (*(*this + 784))(this, &v15, &v14);
      }

      std::vector<ChunkInfo64>::push_back[abi:ne200100](&v17, &v15);
      v5 = v6;
      v1 = *(this + 18);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v1) >> 3);
    }

    while (v7 > v6);
    v13 = v17;
    v12 = v18;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  std::vector<ChunkInfo64>::__assign_with_size[abi:ne200100]<ChunkInfo64*,ChunkInfo64*>(v2, v13, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3));
  if (v13)
  {
    operator delete(v13);
  }
}

void sub_18F7DFDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<ChunkInfo64>::__assign_with_size[abi:ne200100]<ChunkInfo64*,ChunkInfo64*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v12);
      }
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

uint64_t ChunkyAudioFile::AddUserChunk(ChunkyAudioFile *this, unsigned int a2, int a3, const void *a4)
{
  v26 = 0;
  v25 = 0;
  v6 = (*(this + 45) + a3);
  v23 = (*(*this + 800))(this, v6);
  *&v27 = __PAIR64__(*(this + 45), a2);
  *(&v27 + 1) = v6;
  v7 = (*(*this + 800))(this, v6);
  v8 = *(this + 18);
  if (*(this + 19) == v8)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v14 = v8 + 24 * v10;
    if (*v14 != 1179405394)
    {
      goto LABEL_10;
    }

    v15 = (*(*this + 800))(this, *(v14 + 8));
    v16 = v15 - v9;
    if (v15 == v9)
    {
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else if (v16 > *(this + 45) && v16 < v13)
    {
LABEL_9:
      v12 = v11;
      v13 = v15 - v9;
    }

LABEL_10:
    v8 = *(this + 18);
    v10 = ++v11;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v8) >> 3) > v11);
  if (v12 == -1 || !v8)
  {
LABEL_19:
    v24 = 0;
    result = (*(**(this + 13) + 24))(*(this + 13), &v24);
    if (result)
    {
      return result;
    }

    v28 = v24;
    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v27);
    result = (*(*this + 784))(this, &v27, &v25);
    if (result)
    {
      return result;
    }

    result = (*(*this + 792))(this, &v27, a4, &v26);
    if (result)
    {
      return result;
    }

    *(this + 20) = 0;
    (*(*this + 64))(this);
    return 0;
  }

  v18 = v8 + 24 * v12;
  v19 = (*(*this + 800))(this, *(v18 + 8));
  if (v19 == v23)
  {
    *v18 = a2;
    *(v18 + 8) = v6;
    result = (*(*this + 784))(this, v18, &v25);
    if (!result)
    {
      return (*(*this + 792))(this, v18, a4, &v26);
    }

    return result;
  }

  v28 = *(v18 + 16);
  v21 = v28 + v23;
  *(v18 + 8) = v19 - v23;
  *(v18 + 16) = v21;
  result = (*(*this + 784))(this, v18, &v25);
  if (!result)
  {
    result = (*(*this + 784))(this, &v27, &v25);
    if (!result)
    {
      result = (*(*this + 792))(this, &v27, a4, &v26);
      if (!result)
      {
        std::vector<ChunkInfo64>::insert(this + 144, (*(this + 18) + 24 * v12), &v27);
        return 0;
      }
    }
  }

  return result;
}

void std::vector<ChunkInfo64>::insert(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = 8 * (v13 >> 3);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 3);
        }

        std::allocator<ChunkInfo64>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = 8 * (v13 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 16) = *(a3 + 16);
    *v17 = v24;
    v25 = v18 + 24;
    memcpy((v18 + 24), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 2) = *(a3 + 16);
    *v6 = v16;
    *(a1 + 8) = v6 + 24;
  }

  else
  {
    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 24;
      v10 = *(v6 - 24);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 24, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 24;
    if (v19)
    {
      v20 = 0;
    }

    v21 = a3 + v20;
    v22 = *v21;
    *(__src + 2) = *(v21 + 16);
    *__src = v22;
  }
}

void sub_18F7E06B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ChunkyAudioFile::GetUserChunk(ChunkyAudioFile *this, int a2, int a3, unint64_t a4, unsigned int *a5, void *a6)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    return 4294967256;
  }

  result = 1667787583;
  v10 = *(this + 18);
  v11 = *(this + 19);
  v12 = v11 - v10;
  if (v11 == v10)
  {
    return result;
  }

  v26 = v6;
  v27 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v17 = 1;
  while (1)
  {
    v18 = v10 + 24 * v14;
    if (*v18 == a2)
    {
      break;
    }

LABEL_7:
    v14 = v17;
    v19 = v16 > v17++;
    if (!v19)
    {
      return result;
    }
  }

  if (v15 != a3)
  {
    ++v15;
    goto LABEL_7;
  }

  v20 = *a5;
  if (!v20)
  {
    return 561211770;
  }

  v21 = *(v18 + 4);
  v22 = *(v18 + 8) - v21;
  v19 = v22 > a4;
  v23 = v22 - a4;
  if (!v19)
  {
    return 4294967256;
  }

  v24 = *(v18 + 16);
  if (v23 <= v20)
  {
    v20 = v23;
  }

  else
  {
    v20 = v20;
  }

  v25 = v20;
  (*(**(this + 13) + 48))(*(this + 13), 0, v21 + a4 + v24, v20, a6, &v25);
  result = 0;
  *a5 = v25;
  return result;
}

uint64_t ChunkyAudioFile::GetUserChunkSize64(ChunkyAudioFile *this, int a2, int a3, unint64_t *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = v6 + 24 * v10;
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          v16 = *(v14 + 4);
          v17 = *(v14 + 8);
          if (!__CFADD__(v16, v17))
          {
            result = 0;
            *a4 = v17 - v16;
          }

          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

uint64_t ChunkyAudioFile::RemoveUserData(ChunkyAudioFile *this, int a2, int a3)
{
  v6 = 1667787583;
  if ((*(*this + 736))(this) != a2)
  {
    v7 = *(this + 18);
    v8 = *(this + 19);
    v9 = v8 - v7;
    if (v8 != v7)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v13 = 1;
      do
      {
        v14 = (v7 + 24 * v10);
        if (*v14 == a2)
        {
          if (v11 == a3)
          {
            *v14 = 1179405394;
            ChunkyAudioFile::ConsolidateFillerChunks(this);
            return 0;
          }

          ++v11;
        }

        v10 = v13;
      }

      while (v12 > v13++);
    }
  }

  return v6;
}

uint64_t ChunkyAudioFile::SetUserData(ChunkyAudioFile *this, uint64_t a2, int a3, uint64_t a4, const void *a5)
{
  if ((*(*this + 736))(this) == a2)
  {
    return 1667787583;
  }

  result = ChunkyAudioFile::ReplaceChunk(this, a2, a3, a4, a5);
  if (result == -1)
  {
    v11 = *(*this + 768);

    return v11(this, a2, a4, a5);
  }

  return result;
}

uint64_t ChunkyAudioFile::GetUserDataAtOffset(ChunkyAudioFile *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if ((*(*this + 736))(this) == a2)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0;
  }

  else
  {
    v13 = *(*this + 760);

    return v13(this, a2, a3, a4, a5, a6);
  }
}

uint64_t ChunkyAudioFile::GetUserData(ChunkyAudioFile *this, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  if ((*(*this + 736))(this) == a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 0;
  }

  else
  {
    v11 = *(*this + 760);

    return v11(this, a2, a3, 0, a4, a5);
  }
}

uint64_t ChunkyAudioFile::GetUserDataSize64(ChunkyAudioFile *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if ((*(*this + 736))(this) == a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 1667787583;
  }

  else
  {
    v9 = *(*this + 752);

    return v9(this, a2, a3, a4);
  }
}

uint64_t ChunkyAudioFile::GetUserDataSize(ChunkyAudioFile *this, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if ((*(*this + 736))(this) == a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 1667787583;
  }

  else
  {
    v9 = *(*this + 744);

    return v9(this, a2, a3, a4);
  }
}

uint64_t ChunkyAudioFile::CountUserData(ChunkyAudioFile *this, int a2, unsigned int *a3)
{
  if ((*(*this + 736))(this) == a2)
  {
    v6 = 0;
    result = 1667787583;
  }

  else
  {
    v9 = *(this + 18);
    v8 = *(this + 19);
    v10 = v8 - v9;
    if (v8 == v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      v12 = 1;
      do
      {
        v13 = *v9;
        v9 += 24;
        if (v13 == a2)
        {
          ++v6;
        }
      }

      while (v11 > v12++);
    }

    result = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t ChunkyAudioFile::SetLoudnessInfo(ChunkyAudioFile *this, CFPropertyListRef *a2)
{
  XMLData = CFPropertyListCreateXMLData(*MEMORY[0x1E695E480], *a2);
  v8 = 1;
  Length = CFDataGetLength(XMLData);
  BytePtr = CFDataGetBytePtr(XMLData);
  v5 = (*(*this + 776))(this, 1819243876, Length, BytePtr);
  CACFData::~CACFData(&XMLData);
  return v5;
}

uint64_t CACFObject<void const*>::~CACFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

uint64_t ChunkyAudioFile::SetProperty(ChunkyAudioFile *this, int a2, unsigned int a3, uint64_t *a4)
{
  if (a2 == 1920168566)
  {
    result = 1869627199;
    if ((*(this + 100) & 2) == 0)
    {
      return result;
    }

    v7 = *(this + 15);
    if (v7)
    {
      if (*(v7 + 24))
      {
        return result;
      }
    }

    if (a3 < 8)
    {
      return 561211770;
    }

    v8 = *a4;
    if (((*(*this + 816))(this) & 1) != 0 || (v8 * *(this + 3)) * *(this + 12) <= 0xFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return 1868981823;
    }
  }

  else
  {
    if (a2 == 1751217000)
    {
      if (a3 == 20)
      {
        v5 = *(*this + 600);

        return v5();
      }

      return 561211770;
    }

    return AudioFileObject::SetProperty(this, a2, a3, a4);
  }
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t ChunkyAudioFile::Optimize(ChunkyAudioFile *this)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(this + 136) && !(*(*this + 224))(this))
  {
    *(this + 136) = 0;
  }

  v42 = 0;
  v3 = *(this + 18);
  v2 = *(this + 19);
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      if (*v3 == *(this + 42))
      {
        v4 += *(this + 44);
      }

      else if (v5 != 1179405394 && v5 != *(this + 43))
      {
        v4 += (*(*this + 800))(this, *(v3 + 1));
        v2 = *(this + 19);
      }

      v3 += 6;
    }

    while (v3 != v2);
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  CADeprecated::CAAutoFree<char>::CAAutoFree(&v38, v4);
  v6 = v38;
  if (!v38)
  {
    goto LABEL_25;
  }

  v8 = *(this + 18);
  v7 = *(this + 19);
  if (v8 == v7)
  {
    v7 = *(this + 18);
  }

  else
  {
    do
    {
      v9 = *v8;
      if (*v8 != 1179405394 && v9 != *(this + 43))
      {
        if (v9 == *(this + 42))
        {
          v10 = *(this + 44);
        }

        else
        {
          v10 = (*(*this + 800))(this, *(v8 + 1));
        }

        v45 = v10;
        *buf = *v8;
        *&buf[16] = v6 - v38;
        std::vector<ChunkInfo64>::push_back[abi:ne200100](&__p, buf);
        v11 = (*(**(this + 13) + 64))(*(this + 13), 0, *(v8 + 2), v45, v6, &v45);
        if (v11)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v46 = 136315394;
            *&v46[4] = "ChunkyAudioFile.cpp";
            v47 = 1024;
            v48 = 99;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  InfoChunksToMemory ReadBytes failed", v46, 0x12u);
          }

          exception = __cxa_allocate_exception(4uLL);
          *exception = v11;
          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
        }

        v6 += v45;
        v7 = *(this + 19);
      }

      v8 += 6;
    }

    while (v8 != v7);
    if (!v38)
    {
LABEL_25:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 4294967188;
        goto LABEL_36;
      }

      *buf = 136315394;
      *&buf[4] = "ChunkyAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 264;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't allocate memory for info chunks", buf, 0x12u);
      v12 = 4294967188;
      goto LABEL_34;
    }
  }

  v13 = *(this + 18);
  if (v7 == v13)
  {
LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = &v13[6 * v14];
    if (*v16 == *(this + 43))
    {
      break;
    }

    v14 = v15;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v13) >> 3) > v15++;
    if (!v17)
    {
      goto LABEL_33;
    }
  }

  *v43 = *v16;
  v20 = *(v16 + 2);
  v44 = v20;
  v21 = v4;
  if (!*(this + 138))
  {
    goto LABEL_44;
  }

  v22 = *(this + 45);
  v23 = (4096 - *(this + 46));
  v24 = v4 & 0xFFFFFFFFFFFFF000;
  if (v4 <= v23)
  {
    v24 = 0;
  }

  v21 = v24 + v23;
  v44 = v24 + v23;
  if (v24 + v23 - v22 <= v4)
  {
    v21 += 4096;
LABEL_44:
    v44 = v21;
  }

  v25 = v43[1];
  if (v20 <= v21)
  {
    v12 = (*(**(this + 13) + 32))(*(this + 13), v43[1] + v21);
    if (v12)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      *&buf[4] = "ChunkyAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 305;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  SetSize Failed";
      goto LABEL_61;
    }
  }

  if (v20 != v21)
  {
    v12 = AudioFileObject::MoveData(this, v20, v21, v25);
    if (v12)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      *&buf[4] = "ChunkyAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 310;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  MoveData Failed";
      goto LABEL_61;
    }

    *(this + 9) = v21 + *(this + 46);
  }

  if (v20 > v21)
  {
    v12 = (*(**(this + 13) + 32))(*(this + 13), v25 + v21);
    if (v12)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      *&buf[4] = "ChunkyAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 316;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  SetSize Failed";
      goto LABEL_61;
    }
  }

  v12 = (*(**(this + 13) + 72))(*(this + 13), 0, 0, v4, v38, &v42);
  if (!v12)
  {
    v37 = (*(*this + 800))(this, v42);
    if (*(this + 138))
    {
      ChunkyAudioFile::WriteFillerChunkIfNeeded(this, &v37, v21, &__p);
    }

    std::vector<ChunkInfo64>::push_back[abi:ne200100](&__p, v43);
    std::vector<ChunkInfo64>::__assign_with_size[abi:ne200100]<ChunkInfo64*,ChunkInfo64*>(this + 18, __p, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - __p) >> 3));
    *v46 = 0;
    v28 = (*(**(this + 13) + 24))(*(this + 13), v46);
    if (v28)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ChunkyAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 336;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(4uLL);
      *v36 = v28;
      __cxa_throw(v36, MEMORY[0x1E69E5478], 0);
    }

    v29 = *(this + 18);
    v30 = *(this + 19);
    if (v30 == v29)
    {
LABEL_69:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ChunkyAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 339;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't find container chunk", buf, 0x12u);
      }

      v34 = __cxa_allocate_exception(4uLL);
      *v34 = 1685348671;
    }

    v31 = 0;
    v32 = 1;
    while (1)
    {
      v33 = v29 + 24 * v31;
      if (*v33 == *(this + 42))
      {
        break;
      }

      v31 = v32;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3) > v32++;
      if (!v17)
      {
        goto LABEL_69;
      }
    }

    if (*(v33 + 8) != *v46)
    {
      *(this + 136) = 1;
      if (!(*(*this + 224))(this))
      {
        *(this + 136) = 0;
      }
    }

    v12 = 0;
    *(this + 20) = 1;
    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "ChunkyAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 321;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  FSWrite Failed";
LABEL_61:
    _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
  }

LABEL_34:
  if (v38)
  {
    free(v38);
  }

LABEL_36:
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F7E1AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p)
{
  if (a10)
  {
    free(a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ChunkyAudioFile::WriteFillerChunkIfNeeded(uint64_t result, unint64_t *a2, unint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(result + 180);
  if (*a2 + v5 < a3)
  {
    v8 = result;
    LODWORD(v13) = 1179405394;
    DWORD1(v13) = v5;
    *(&v13 + 1) = a3 - v4;
    v14 = v4;
    std::vector<ChunkInfo64>::push_back[abi:ne200100](a4, &v13);
    v12 = 0;
    result = (*(*v8 + 784))(v8, &v13, &v12);
    if (result)
    {
      v10 = result;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "ChunkyAudioFile.cpp";
        v17 = 1024;
        v18 = 183;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes failed", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = v10;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    *a2 = a3;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void ChunkyAudioFile::MoveUpTrailingChunks(ChunkyAudioFile *this, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 1);
  v4 = *(this + 18);
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v4) >> 3) > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    do
    {
      v7 = v4 + 24 * v3;
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v9 >= 0x1000000)
      {
        v10 = 0x1000000;
      }

      else
      {
        v10 = *(v7 + 8);
      }

      CADeprecated::CAAutoFree<char>::CAAutoFree(&v23, v10);
      v11 = v23;
      if (!v23)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "ChunkyAudioFile.cpp";
          v26 = 1024;
          v27 = 223;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  can't allocate memory for chunk", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(4uLL);
        *exception = 2003334207;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      v12 = v8 - a3;
      if (v9)
      {
        v13 = 0;
        while (1)
        {
          v14 = v10 >= v9 ? v9 : v10;
          v22 = 0;
          v15 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v7 + 16) + v13, v14, v23, &v22);
          if (v15)
          {
            break;
          }

          if (v22 != v14)
          {
            v15 = 2003334207;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v25 = "ChunkyAudioFile.cpp";
              v26 = 1024;
              v27 = 233;
              v17 = MEMORY[0x1E69E9C10];
              v18 = "%25s:%-5d  chunk size is wrong";
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          v15 = (*(**(this + 13) + 56))(*(this + 13), 0, v13 + v12, v14, v23, &v22);
          if (v15)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v25 = "ChunkyAudioFile.cpp";
              v26 = 1024;
              v27 = 237;
              v17 = MEMORY[0x1E69E9C10];
              v18 = "%25s:%-5d  MoveUpTrailingChunks write failed";
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          v13 += v14;
          v9 -= v14;
          if (!v9)
          {
            v11 = v23;
            *(v7 + 16) -= v12;
            if (!v11)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "ChunkyAudioFile.cpp";
          v26 = 1024;
          v27 = 232;
          v17 = MEMORY[0x1E69E9C10];
          v18 = "%25s:%-5d  MoveUpTrailingChunks read failed";
LABEL_32:
          _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
        }

LABEL_33:
        v19 = __cxa_allocate_exception(4uLL);
        *v19 = v15;
        __cxa_throw(v19, MEMORY[0x1E69E5478], 0);
      }

      *(v7 + 16) -= v12;
LABEL_22:
      free(v11);
LABEL_23:
      v4 = *(this + 18);
      if (!v4)
      {
        break;
      }

      v3 = (v3 + 1);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v4) >> 3) > v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18F7E2010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_PanningMatrix(const AudioPanningInfo *a1, float *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  mOutputChannelMap = a1->mOutputChannelMap;
  v74 = 0;
  v5 = AudioFormatProperty_NumberOfChannelsForLayout(mOutputChannelMap, &v74);
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = 1718449215;
  v8 = v74;
  if (v74 > 0x40)
  {
    goto LABEL_91;
  }

  mChannelLayoutTag = mOutputChannelMap->mChannelLayoutTag;
  if (mOutputChannelMap->mChannelLayoutTag == 0x10000)
  {
    AudioFormatProperty_ChannelLayoutForBitmap(mOutputChannelMap->mChannelBitmap, __dst, v6);
    mChannelLayoutTag = __dst[0].mChannelLayoutTag;
  }

  else if (mChannelLayoutTag)
  {
    v5 = AudioFormatProperty_ChannelLayoutForTag(mOutputChannelMap->mChannelLayoutTag, __dst);
    if (v5)
    {
LABEL_2:
      v7 = v5;
      goto LABEL_91;
    }
  }

  else
  {
    memcpy(__dst, mOutputChannelMap, 20 * mOutputChannelMap->mNumberChannelDescriptions + 12);
    SanitizeAudioChannelLayout(__dst, 1);
  }

  if (v8)
  {
    bzero(a2, 4 * v8);
  }

  if (a1->mPanningMode != kPanningMode_VectorBasedPanning)
  {
    if (a1->mPanningMode != kPanningMode_SoundField)
    {
      goto LABEL_91;
    }

    mCoordinateFlags = a1->mCoordinateFlags;
    if ((mCoordinateFlags & 2) != 0)
    {
      v43 = a1->mCoordinates[1] * 0.0174532925;
      v14 = a1->mCoordinates[2] * a1->mCoordinates[2];
      v44 = __sincos_stret(-a1->mCoordinates[0] * 0.0174532925);
      v45 = __sincos_stret(v43);
      sinval = v45.__sinval;
      v16 = v44.__cosval * v45.__cosval;
      v17 = v44.__sinval * v45.__cosval;
    }

    else
    {
      if ((mCoordinateFlags & 1) == 0)
      {
        goto LABEL_91;
      }

      v11 = a1->mCoordinates[1];
      v12 = a1->mCoordinates[0];
      v13 = a1->mCoordinates[2];
      v14 = v12 * v12 + v11 * v11 + v13 * v13;
      v15 = 1.0 / sqrt(v14);
      v16 = v15 * v11;
      v17 = v15 * v12;
      sinval = v15 * v13;
    }

    v46 = (a1->mGainScale + a1->mGainScale) / (v14 + 1.0);
    v47 = v46 * 0.707106781;
    v48 = v17 * v46;
    v72 = sinval * v46;
    v73 = v16 * v46;
    if (mChannelLayoutTag <= 6815745)
    {
      if (mChannelLayoutTag != 6619138 && mChannelLayoutTag != 6684674)
      {
        goto LABEL_77;
      }

      v53 = v48 * 0.5 + v47 * 0.707106781;
      v54 = -(v48 * 0.5 - v47 * 0.707106781);
    }

    else
    {
      if (mChannelLayoutTag == 6815746)
      {
        v55 = v47;
        v56 = v48;
        *a2 = v55;
        a2[1] = v56;
        if (!v8)
        {
          goto LABEL_90;
        }

        goto LABEL_72;
      }

      if (mChannelLayoutTag != 6881282)
      {
        if (mChannelLayoutTag == 7012356)
        {
          v49 = v47;
          v50 = v73;
          *a2 = v49;
          a2[1] = v50;
          v51 = v48;
          v52 = v72;
          a2[2] = v51;
          a2[3] = v52;
          if (!v8)
          {
            goto LABEL_90;
          }

          goto LABEL_72;
        }

LABEL_77:
        mNumberChannelDescriptions = __dst[0].mNumberChannelDescriptions;
        if (!__dst[0].mNumberChannelDescriptions)
        {
          goto LABEL_91;
        }

        v59 = 0;
        v60 = &__dst[0].mChannelDescriptions[0].mCoordinates[2];
        v61 = a2;
        do
        {
          if ((*(v60 - 3) & 2) != 0)
          {
            v62 = *(v60 - 1) * 0.0174532925;
            v63 = *v60;
            v64 = __sincos_stret(-*(v60 - 2) * 0.0174532925);
            v65 = __sincos_stret(v62);
            v66 = ((v48 * v64.__sinval * v65.__cosval + v73 * v64.__cosval * v65.__cosval + v72 * v65.__sinval) * 0.5 + v47 * 0.707106781) / (v63 * v63);
            *v61 = v66;
            ++v59;
          }

          ++v61;
          v60 += 5;
          --mNumberChannelDescriptions;
        }

        while (mNumberChannelDescriptions);
        v7 = v59 >= 3 ? 0 : 1718449215;
        if (v59 < 3 || !v8)
        {
          goto LABEL_91;
        }

LABEL_72:
        v7 = 0;
        do
        {
          if (*a2 < 0.0000001)
          {
            *a2 = 0.0;
          }

          ++a2;
          --v8;
        }

        while (v8);
        goto LABEL_91;
      }

      v53 = v48 * 0.707106781 + v73 * 0.707106781;
      v54 = -(v48 * 0.707106781 - v73 * 0.707106781);
    }

    v57 = v54;
    *a2 = v53;
    a2[1] = v57;
    if (!v8)
    {
LABEL_90:
      v7 = 0;
      goto LABEL_91;
    }

    goto LABEL_72;
  }

  if ((a1->mCoordinateFlags & 2) != 0)
  {
    v19 = a1->mCoordinates[0];
    if (fabsf(v19) <= 360.0)
    {
      if (__dst[0].mNumberChannelDescriptions)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 360.0;
        v24 = 360.0;
        v25 = 1718449215;
        do
        {
          v26 = &__dst[0].mChannelDescriptions[v22];
          if ((v26->mChannelFlags & 2) != 0)
          {
            v27 = v26->mCoordinates[0];
            if (fabsf(v27) > 360.0)
            {
              goto LABEL_91;
            }

              ;
            }

            while (i < 0.0)
            {
              i = i + 360.0;
            }

            v29 = i < v24 || v22 == 0;
            if (v29)
            {
              v20 = v22;
              v25 = 0;
            }

            else
            {
              v25 = v25;
            }

            if (v29)
            {
              v24 = i;
            }

              ;
            }

            while (j < 0.0)
            {
              j = j + 360.0;
            }

            if (j < v23 || v22 == 0)
            {
              v21 = v22;
              v23 = j;
            }
          }

          ++v22;
        }

        while (v22 < __dst[0].mNumberChannelDescriptions);
        v7 = v25;
        if (!v25)
        {
          v32 = &__dst[0].mChannelDescriptions[v20];
          v33 = v32->mCoordinates[0];
          v34 = &__dst[0].mChannelDescriptions[v21];
            ;
          }

          while (k < 0.0)
          {
            k = k + 360.0;
          }

            ;
          }

          v37 = v20;
            ;
          }

          v39 = (a1->mGainScale + a1->mGainScale) / ((a1->mCoordinates[2] * a1->mCoordinates[2]) + 1.0);
          v40 = v32->mCoordinates[2] * v32->mCoordinates[2] * v39;
          v41 = v34->mCoordinates[2] * v34->mCoordinates[2] * v39;
          if (fabs(k) >= 0.00100000005)
          {
            v67 = __sincos_stret(m / k * 1.57079633);
            v68 = v67.__sinval * v41;
            a2[n] = v68;
            v41 = v67.__cosval * v40;
            n = v37;
          }

          else
          {
            v42 = v40;
            a2[v20] = v42;
          }

          v69 = v41;
          a2[n] = v69;
          if (!v8)
          {
            goto LABEL_90;
          }

          goto LABEL_72;
        }
      }
    }
  }

LABEL_91:
  v70 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_18F7E2698(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void logSubsystem(void)
{
  {
    logSubsystem(void)::category = os_log_create("com.apple.coreaudio.utility", "AudioFormatPanningMixing");
  }
}

uint64_t transformSurroundsToSideDirect(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = (result + 20);
    do
    {
      v3 = *(v2 - 2);
      v4 = 10;
      v5 = -110.0;
      if (v3 != 5 && v3 != 33)
      {
        v5 = *v2;
        v6 = v3 == 34 || v3 == 6;
        v4 = v6 ? 11 : *(v2 - 2);
        if (v6)
        {
          v5 = 110.0;
        }
      }

      *(v2 - 2) = v4;
      if ((*(v2 - 1) & 2) != 0)
      {
        *v2 = v5;
      }

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t transformSurroundsToRear(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = (result + 20);
    do
    {
      v3 = *(v2 - 2);
      if (v3 == 5 || v3 == 10)
      {
        v3 = 33;
        v5 = -150.0;
      }

      else
      {
        v5 = *v2;
        v6 = v3 == 11 || v3 == 6;
        if (v6)
        {
          v3 = 34;
        }

        if (v6)
        {
          v5 = 150.0;
        }
      }

      *(v2 - 2) = v3;
      if ((*(v2 - 1) & 2) != 0)
      {
        *v2 = v5;
      }

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t transformSurroundsToSide(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = (result + 20);
    do
    {
      v3 = *(v2 - 2);
      v4 = 5;
      v5 = -110.0;
      if (v3 != 10 && v3 != 33)
      {
        v5 = *v2;
        v6 = v3 == 34 || v3 == 11;
        v4 = v6 ? 6 : *(v2 - 2);
        if (v6)
        {
          v5 = 110.0;
        }
      }

      *(v2 - 2) = v4;
      if ((*(v2 - 1) & 2) != 0)
      {
        *v2 = v5;
      }

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t AudioFormatProperty_ChannelMap(const AudioChannelLayout *const *a1, const AudioChannelLayout *a2, unsigned int *a3, _DWORD *a4)
{
  __dst = 0;
  v47 = 0;
  v45 = 0;
  v8 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v45);
  if (v8)
  {
    v9 = v8;
    goto LABEL_7;
  }

  v44 = 0;
  v10 = AudioFormatProperty_NumberOfChannelsForLayout(a2, &v44);
  if (v10)
  {
    v9 = v10;
    v11 = 0;
    goto LABEL_5;
  }

  mChannelLayoutTag = a2->mChannelLayoutTag;
  v14 = *a1;
  v15 = v44;
  v16 = *a3;
  if (v44 < *a3)
  {
    v16 = v44;
  }

  *a3 = v16;
  v43 = v45;
  v17 = 20 * v45 + 12;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v47, v17, 0);
  v18 = 20 * v15 + 12;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, v18, 0);
  if (mChannelLayoutTag == 0x10000)
  {
    v11 = __dst;
    AudioFormatProperty_ChannelLayoutForBitmap(a2->mChannelBitmap, __dst, v19);
  }

  else if (mChannelLayoutTag)
  {
    v11 = __dst;
    v21 = AudioFormatProperty_ChannelLayoutForTag(a2->mChannelLayoutTag, __dst);
    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = __dst;
    memcpy(__dst, a2, v18);
  }

  if (v14 == 0x10000)
  {
    v22 = v47;
    AudioFormatProperty_ChannelLayoutForBitmap(*(a1 + 1), v47, v20);
  }

  else
  {
    if (!v14)
    {
      v22 = v47;
      memcpy(v47, a1, v17);
      goto LABEL_23;
    }

    v22 = v47;
    v21 = AudioFormatProperty_ChannelLayoutForTag(*a1, v47);
    if (v21)
    {
LABEL_22:
      v9 = v21;
      goto LABEL_5;
    }
  }

LABEL_23:
  mNumberChannelDescriptions = v22->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions)
  {
    mChannelDescriptions = v22->mChannelDescriptions;
    while (1)
    {
      mChannelLabel = mChannelDescriptions->mChannelLabel;
      if (mChannelDescriptions->mChannelLabel <= 207)
      {
        break;
      }

      if (mChannelLabel <= 300)
      {
        if (mChannelLabel == 208)
        {
          goto LABEL_37;
        }

        if (mChannelLabel != 209)
        {
          goto LABEL_39;
        }

LABEL_36:
        mChannelLabel = 2;
        goto LABEL_39;
      }

      if (mChannelLabel == 301)
      {
        goto LABEL_37;
      }

      if (mChannelLabel == 302)
      {
        goto LABEL_36;
      }

LABEL_39:
      mChannelDescriptions->mChannelLabel = mChannelLabel;
      ++mChannelDescriptions;
      if (!--mNumberChannelDescriptions)
      {
        goto LABEL_40;
      }
    }

    if (mChannelLabel == 42)
    {
      mChannelLabel = 3;
      goto LABEL_39;
    }

    if (mChannelLabel == 206)
    {
LABEL_37:
      mChannelLabel = 1;
      goto LABEL_39;
    }

    if (mChannelLabel != 207)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_40:
  v26 = v11->mNumberChannelDescriptions;
  if (v26)
  {
    v27 = v11->mChannelDescriptions;
    while (1)
    {
      v28 = v27->mChannelLabel;
      if (v27->mChannelLabel <= 207)
      {
        break;
      }

      if (v28 <= 300)
      {
        if (v28 == 208)
        {
          goto LABEL_54;
        }

        if (v28 != 209)
        {
          goto LABEL_56;
        }

LABEL_53:
        v28 = 2;
        goto LABEL_56;
      }

      if (v28 == 301)
      {
        goto LABEL_54;
      }

      if (v28 == 302)
      {
        goto LABEL_53;
      }

LABEL_56:
      v27->mChannelLabel = v28;
      ++v27;
      if (!--v26)
      {
        goto LABEL_57;
      }
    }

    if (v28 == 42)
    {
      v28 = 3;
      goto LABEL_56;
    }

    if (v28 == 206)
    {
LABEL_54:
      v28 = 1;
      goto LABEL_56;
    }

    if (v28 != 207)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_57:
  octagonalCompatibility(v22, v11);
  singleSurroundPairCompatibility(v22, v11);
  if (*a3)
  {
    v29 = 0;
    do
    {
      a4[v29++] = -1;
      v30 = *a3;
    }

    while (v29 < v30);
    if (v14 == 6553601)
    {
      if (*a3)
      {
        v31 = 0;
        v32 = 12;
        do
        {
          if (*(&v11->mChannelLayoutTag + v32) - 1 <= 0xFFFFFFFD)
          {
            a4[v31] = 0;
            v30 = *a3;
          }

          ++v31;
          v32 += 20;
        }

        while (v31 < v30);
      }

      goto LABEL_68;
    }

LABEL_70:
    if (v14 == 6619138 && mChannelLayoutTag == 6553601)
    {
      v9 = 0;
      *a4 = 0;
    }

    else
    {
      v9 = 1718449215;
      if (v43)
      {
        v33 = 0;
        v34 = 1;
        v35 = v30;
        do
        {
          if (v35)
          {
            v36 = 0;
            v37 = v22->mChannelDescriptions[v33].mChannelLabel;
            v38 = v11->mChannelDescriptions;
            do
            {
              v40 = v38->mChannelLabel;
              ++v38;
              v39 = v40;
              v41 = v40 + 1;
              v42 = v40 == v37 && v41 >= 2;
              if (v42 && v39 != 100)
              {
                v34 = 0;
                a4[v36] = v33;
                v30 = *a3;
              }

              ++v36;
              v35 = v30;
            }

            while (v36 < v30);
          }

          ++v33;
        }

        while (v33 != v43);
        if (v34)
        {
          v9 = 1718449215;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    goto LABEL_5;
  }

  if (v14 != 6553601)
  {
    v30 = 0;
    goto LABEL_70;
  }

LABEL_68:
  v9 = 0;
LABEL_5:
  if (v11)
  {
    free(v11);
  }

LABEL_7:
  if (v47)
  {
    free(v47);
  }

  return v9;
}

void sub_18F7E2D30(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F7E29ACLL);
}

void sub_18F7E2D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a11)
  {
    free(a11);
  }

  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "inSecondsPerWindow is out of range (<= 0.0)");
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

uint64_t DSPGraph::Metrics::Metrics(uint64_t this, double a2)
{
  v2 = (a2 * 24000000.0);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *this = v2;
  *(this + 192) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 256) = 1;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 384) = 1;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  if (a2 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception);
  }

  return this;
}

int8x16_t DSPGraph::Metrics::start(DSPGraph::Metrics *this)
{
  if (!*(this + 1))
  {
    *(this + 1) = mach_absolute_time();
  }

  thread_selfcounts();
  *(this + 2) = 0;
  result = vextq_s8(0, 0, 8uLL);
  *(this + 24) = result;
  return result;
}

uint64_t DSPGraph::Metrics::stop(DSPGraph::Metrics *this, unsigned int a2)
{
  result = mach_absolute_time();
  v5 = result;
  if (*(this + 3))
  {
    result = thread_selfcounts();
    v6 = v5 - *(this + 1);
    v7 = -*(this + 2);
    v8 = v7 / v6 * 100.0;
    v28 = *(this + 6) - *(this + 2);
    v29 = v5;
    *(this + 6) = v28;
    v9 = vsubq_s64(vextq_s8(0, 0, 8uLL), *(this + 24));
    v27 = vaddq_s64(*(this + 56), v9);
    *(this + 56) = v27;
    v10 = *(this + 9) + v6;
    *(this + 9) = v10;
    v11 = *(this + 10);
    if (v8 <= v11)
    {
      v12 = *(this + 13);
    }

    else
    {
      *(this + 10) = v8;
      v12 = *(this + 13);
      *(this + 11) = v12;
      v11 = v7 / v6 * 100.0;
    }

    v13 = *(this + 12) + a2;
    v14 = *(this + 14);
    v15 = *(this + 15) + v7;
    v16 = *(this + 18) + v6;
    v17 = *(this + 5) + 1;
    *(this + 5) = v17;
    v18 = vaddq_s64(*(this + 8), v9);
    *(this + 8) = v18;
    *(this + 18) = v16;
    v19 = v14 + a2;
    *(this + 14) = v19;
    *(this + 15) = v15;
    v20 = v12 + 1;
    *(this + 12) = v13;
    *(this + 13) = v12 + 1;
    v21 = *this;
    if (v10 > *this || v16 < v21)
    {
      v26 = v18;
      v25 = *(this + 11);
      for (i = 0; ; result = caulk::concurrent::details::spinloop::spin(&i))
      {
        v22 = atomic_load(this + 48);
        if ((v22 & 1) == 0)
        {
          v23 = v22;
          atomic_compare_exchange_strong(this + 48, &v23, v22 | 1);
          if (v23 == v22)
          {
            break;
          }
        }
      }

      v24 = (this + 128 * ((v22 >> 2) & 1));
      atomic_store((2 * ((v22 >> 2) & 0x3FFFFFFF)) | 1, &v24[16]);
      v24[16].i64[1] = v17;
      v24[17].i64[0] = v13;
      v24[17].i64[1] = v28;
      v24[18] = v27;
      v24[19].i64[0] = v10;
      *&v24[19].i64[1] = v11;
      v24[20].i64[0] = v25;
      v24[20].i64[1] = v20;
      v24[21].i64[0] = v19;
      v24[21].i64[1] = v15;
      v24[22] = v26;
      v24[23].i64[0] = v16;
      __dmb(0xBu);
      atomic_store(2 * (v22 >> 2), &v24[16]);
      atomic_store(((v22 & 0xFFFFFFFC) + 5) & 0xFFFFFFFC | 2, this + 48);
      if (v10 > v21)
      {
        *(this + 72) = 0u;
        *(this + 88) = 0u;
        *(this + 40) = 0u;
        *(this + 56) = 0u;
      }
    }

    v5 = v29;
  }

  *(this + 1) = v5;
  return result;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

double DSPGraph::Metrics::getStatistics(DSPGraph::Metrics *this, uint64_t a2)
{
  v13 = 0;
  v3 = atomic_load((a2 + 192));
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 256;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = v5 + (((v3 & 4) == 0) << 7);
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = v5 + (v6 << 7), explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 56);
        v10 = *(v7 + 88);
        *(this + 4) = *(v7 + 72);
        *(this + 5) = v10;
        *(this + 6) = *(v7 + 104);
        v11 = *(v7 + 24);
        *this = *(v7 + 8);
        *(this + 1) = v11;
        *(this + 2) = *(v7 + 40);
        *(this + 3) = v9;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v13);
      v3 = atomic_load((a2 + 192));
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *&v9 = 0;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  return *&v9;
}

void sub_18F7E354C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AUAudioUnit_XH;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::TSingleton<AUExtensionInstanceMap>::instance()
{
  if (atomic_load_explicit(CADeprecated::TSingleton<AUExtensionInstanceMap>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(CADeprecated::TSingleton<AUExtensionInstanceMap>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AUExtensionInstanceMap>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AUExtensionInstanceMap>::sInstance;
}

void sub_18F7E3B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, id location, char a27)
{
  _Block_object_dispose(&a27, 8);

  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

Class ___ZL39getAUAudioUnitRemoteViewControllerClassv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_7522;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E72C14A8;
    v10 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAudioKitLibrary()"];
    [v4 handleFailureInFunction:v5 file:@"AUAudioUnit_Internal.h" lineNumber:359 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("AUAudioUnitRemoteViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAUAudioUnitRemoteViewControllerClass()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"AUAudioUnit_Internal.h" lineNumber:361 description:{@"Unable to find class %s", "AUAudioUnitRemoteViewController"}];

LABEL_10:
    __break(1u);
  }

  getAUAudioUnitRemoteViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7E3FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_18F7E40C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_7522(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) requestInterruptionBlock];

  if (!v3)
  {
    objc_initWeak(&location, *(a1 + 32));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke_2;
    v6[3] = &unk_1E72C1460;
    v7[1] = v2;
    objc_copyWeak(v7, &location);
    [*(a1 + 32) setRequestInterruptionBlock:v6];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke_39;
    v4[3] = &unk_1E72C1488;
    v5[1] = v2;
    objc_copyWeak(v5, &location);
    [*(a1 + 32) setRequestCancellationBlock:v4];
    objc_destroyWeak(v5);
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void sub_18F7E42A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 40) + 8) objectForKey:v3];
  if (kAUExtensionScope)
  {
    v5 = *kAUExtensionScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 136315906;
    v11 = "AUAudioUnit_XH.mm";
    v12 = 1024;
    v13 = 69;
    v14 = 2048;
    v15 = WeakRetained;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Extension request interrupted! (AU likely crashed. %p %p)", &v10, 0x26u);
  }

LABEL_8:
  [v4 didInvalidate];

  v9 = *MEMORY[0x1E69E9840];
}

void ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 40);
  if ([a3 code] == -66754)
  {
    v7 = [*(v6 + 8) objectForKey:v5];
    if (kAUExtensionScope)
    {
      v8 = *kAUExtensionScope;
      if (!v8)
      {
LABEL_9:
        [v7 didInvalidate];

        goto LABEL_10;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = 136315906;
      v14 = "AUAudioUnit_XH.mm";
      v15 = 1024;
      v16 = 81;
      v17 = 2048;
      v18 = WeakRetained;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Extension request cancelled! (AU timed out. %p %p)", &v13, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_18F7E477C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_DWORD *APAC::ImmersiveRendererData_V2_Manager::getACLPointer(_DWORD *a1)
{
  if (*a1 != 2)
  {
    __assert_rtn("getACLPointer", "APACImmersiveRendererDataV2.cpp", 13, "inIRD.mVersion == kIRDVersion");
  }

  if (a1[2] >= a1[3])
  {
    return a1 + 6;
  }

  else
  {
    return 0;
  }
}

uint64_t APAC::ImmersiveRendererData_V2_Manager::getNumRendererDescriptions(_DWORD *a1)
{
  if (*a1 != 2)
  {
    __assert_rtn("getNumRendererDescriptions", "APACImmersiveRendererDataV2.cpp", 30, "inIRD.mVersion == kIRDVersion");
  }

  return a1[4];
}

uint64_t APAC::ImmersiveRendererData_V2_Manager::getImmersiveRendererDescriptionPointer(_DWORD *a1)
{
  if (*a1 != 2)
  {
    __assert_rtn("getImmersiveRendererDescriptionPointer", "APACImmersiveRendererDataV2.cpp", 38, "inIRD.mVersion == kIRDVersion");
  }

  v1 = a1[3];
  v2 = v1 + 20 * a1[4] + a1[5] + 12;
  v3 = a1 + v1 + 24;
  if (v2 == a1[2])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t APAC::ImmersiveRendererData_V2_Manager::getACLByteSize(_DWORD *a1)
{
  if (*a1 != 2)
  {
    __assert_rtn("getACLByteSize", "APACImmersiveRendererDataV2.cpp", 50, "inIRD.mVersion == kIRDVersion");
  }

  return a1[3];
}

BOOL APAC::ImmersiveRendererData_V2_Manager::hasMetadataConfig(_DWORD *a1)
{
  if (*a1 != 2)
  {
    __assert_rtn("hasMetadataConfig", "APACImmersiveRendererDataV2.cpp", 57, "inIRD.mVersion == kIRDVersion");
  }

  return a1[5] != 0;
}

uint64_t APAC::ImmersiveRendererData_V2_Manager::getMetadataConfig(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    __assert_rtn("getMetadataConfig", "APACImmersiveRendererDataV2.cpp", 65, "inIRD.mVersion == kIRDVersion");
  }

  APAC::MetadataBitStreamParser::parseConfig(&v3, &a1[5 * a1[4] + 6] + a1[3], a1[5], a2);
  return 0;
}

uint64_t APAC::ImmersiveRendererData_V2_Manager::pack(std::vector<char> *a1, int a2, _DWORD *a3, const void *a4, unsigned int a5, uint64_t a6)
{
  a1->__end_ = a1->__begin_;
  std::vector<unsigned char>::__append(a1, 0x1CuLL);
  begin = a1->__begin_;
  *begin = 2;
  *(begin + 12) = 0;
  *(begin + 4) = 0;
  *(begin + 17) = 0;
  v12 = a1->__begin_;
  end = a1->__end_;
  v14 = end - a1->__begin_;
  v109 = a2;
  if (v14 > 0x17)
  {
    if (v14 != 24)
    {
      end = v12 + 24;
      a1->__end_ = v12 + 24;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 24 - v14);
    v12 = a1->__begin_;
    end = a1->__end_;
  }

  v15 = a3[2];
  if (v15 >= 0x1000)
  {
    v16 = 4096;
  }

  else
  {
    v16 = a3[2];
  }

  v17 = 20 * v16;
  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 20;
  }

  v110 = v18;
  v19 = v18 + 12;
  v20 = v18 + 12 + end - v12;
  if (end - v12 >= v20)
  {
    if (end - v12 > v20)
    {
      end = &v12[v20];
      a1->__end_ = &v12[v20];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v19);
    v21 = a1->__begin_;
    end = a1->__end_;
  }

  memcpy(&end[-v110 - 12], a3, v19);
  v22 = 20 * a5;
  v23 = a1->__begin_;
  v24 = a1->__end_;
  v25 = v24 - a1->__begin_;
  v26 = v25 + v22;
  if (v25 >= v25 + v22)
  {
    if (v25 > v25 + v22)
    {
      v24 = &v23[v26];
      a1->__end_ = &v23[v26];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 20 * a5);
    v27 = a1->__begin_;
    v24 = a1->__end_;
  }

  memcpy(&v24[-v22], a4, v22);
  if (*(a6 + 16) == 1 && (v28 = *(a6 + 18), *(a6 + 18)))
  {
    v29 = 0;
    v30 = (a6 + 20);
    do
    {
      v31 = *v30++;
      if (v31 == 9)
      {
        v32 = 14 * *(a6 + 4529);
      }

      else
      {
        v32 = 0;
      }

      v29 += v32;
      --v28;
    }

    while (v28);
    v33 = v29 + 4832;
  }

  else
  {
    v33 = 4832;
  }

  v34 = *(a6 + 8);
  if (*(a6 + 8))
  {
    v35 = 0;
    do
    {
      v36 = *(a6 + 4784) + 48 * v35;
      if (*(v36 + 2) & 1) != 0 || (*(v36 + 3) & 1) != 0 || (*(v36 + 20))
      {
        v37 = 0;
      }

      else
      {
        v37 = 2 * *(v36 + 18);
      }

      v38 = *(a6 + 4808) + 1248 * v35;
      v39 = *(v38 + 2);
      if (*(v38 + 2))
      {
        v40 = 0;
        v41 = 0;
        v42 = v38 + 4;
        v43 = *(v38 + 1200);
        v44 = 4 * (*(v38 + 1206) + 1) * (*(v38 + 1206) + 1) * *(v38 + 1208);
        v45 = *(v38 + 792);
        v46 = *(v38 + 968);
        v47 = *(v38 + 976);
        v48 = *(v38 + 808);
        v49 = *(v38 + 812);
        v50 = v43 == 2;
        v51 = 16 * v49;
        v52 = 12 * v49;
        if (v50)
        {
          v53 = v44;
        }

        else
        {
          v53 = 0;
        }

        v54 = v51 + 16;
        do
        {
          v55 = *(v42 + 2 * v40);
          if (v55 == 22)
          {
            v41 += v53;
          }

          else if (v55 == 11)
          {
            if (v45 == 4)
            {
              if (v46)
              {
                v58 = 0;
                v59 = v47;
                v60 = v46;
                do
                {
                  v61 = *v59++;
                  v58 += v61;
                  --v60;
                }

                while (v60);
                v62 = 4 * v58;
              }

              else
              {
                v62 = 0;
              }

              v41 += 2 * v46 + v62;
            }

            else
            {
              v56 = v54 + v41;
              v57 = v41 + v52;
              if (v48 != 1)
              {
                v57 = v41;
              }

              if (v48 != 2)
              {
                v56 = v57;
              }

              if (v45 == 3)
              {
                v41 = v56;
              }
            }
          }

          ++v40;
        }

        while (v40 != v39);
      }

      else
      {
        v41 = 0;
      }

      v33 += v37 + v41 + 1296;
      ++v35;
    }

    while (v35 != v34);
  }

  v63 = v33 + 4832;
  if (*(a6 + 1))
  {
    v64 = *(a6 + 18);
    if (*(a6 + 18))
    {
      v65 = 0;
      v66 = (a6 + 20);
      do
      {
        v67 = *v66++;
        if (v67 == 9)
        {
          v68 = 14 * *(a6 + 4529);
        }

        else
        {
          v68 = 0;
        }

        v65 += v68;
        --v64;
      }

      while (v64);
    }

    else
    {
      v65 = 0;
    }

    v63 += v65;
    if (*(a6 + 8))
    {
      v69 = 0;
      do
      {
        v70 = *(a6 + 4784) + 48 * v69;
        if (*(v70 + 2) & 1) != 0 || (*(v70 + 3) & 1) != 0 || (*(v70 + 20))
        {
          v71 = 0;
        }

        else
        {
          v71 = 2 * *(v70 + 18);
        }

        v72 = *(a6 + 4808) + 1248 * v69;
        v73 = *(v72 + 2);
        if (*(v72 + 2))
        {
          v74 = 0;
          v75 = 0;
          v76 = v72 + 4;
          v77 = *(v72 + 1200);
          v78 = 4 * (*(v72 + 1206) + 1) * (*(v72 + 1206) + 1) * *(v72 + 1208);
          v79 = *(v72 + 792);
          v80 = *(v72 + 968);
          v81 = *(v72 + 976);
          v82 = *(v72 + 808);
          v83 = *(v72 + 812);
          v50 = v77 == 2;
          v84 = 16 * v83;
          v85 = 12 * v83;
          if (v50)
          {
            v86 = v78;
          }

          else
          {
            v86 = 0;
          }

          v87 = v84 + 16;
          do
          {
            v88 = *(v76 + 2 * v74);
            if (v88 == 22)
            {
              v75 += v86;
            }

            else if (v88 == 11)
            {
              if (v79 == 4)
              {
                if (v80)
                {
                  v91 = 0;
                  v92 = v81;
                  v93 = v80;
                  do
                  {
                    v94 = *v92++;
                    v91 += v94;
                    --v93;
                  }

                  while (v93);
                  v95 = 4 * v91;
                }

                else
                {
                  v95 = 0;
                }

                v75 += 2 * v80 + v95;
              }

              else
              {
                v89 = v87 + v75;
                v90 = v75 + v85;
                if (v82 != 1)
                {
                  v90 = v75;
                }

                if (v82 != 2)
                {
                  v89 = v90;
                }

                if (v79 == 3)
                {
                  v75 = v89;
                }
              }
            }

            ++v74;
          }

          while (v74 != v73);
        }

        else
        {
          v75 = 0;
        }

        v63 += v71 + v75 + 40248;
        ++v69;
      }

      while (v69 != v34);
    }
  }

  v96 = a1->__begin_;
  v97 = a1->__end_;
  v98 = v97 - a1->__begin_;
  v99 = v63;
  v100 = v98 + v63;
  if (v98 >= v100)
  {
    if (v98 > v100)
    {
      v97 = &v96[v100];
      a1->__end_ = &v96[v100];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v99);
    v101 = a1->__begin_;
    v97 = a1->__end_;
  }

  v102 = APAC::MetadataBitStreamPacker::packConfig(&v112, &v97[-v99], v99, a6);
  v103 = a1->__begin_;
  v104 = a1->__end_;
  v103[4] = a5;
  v103[5] = v102;
  v105 = (v22 + v110 + v102 + 24);
  v103[1] = v109;
  v103[2] = v105;
  v103[3] = v19;
  v106 = v105 + 12;
  v107 = v104 - v103;
  if (v106 <= v107)
  {
    if (v106 < v107)
    {
      a1->__end_ = v103 + v106;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a1, v106 - v107);
  }

  return 0;
}

void AudioFileFormatRegistry::~AudioFileFormatRegistry(AudioFileFormatRegistry *this)
{
  AudioFileFormatRegistry::~AudioFileFormatRegistry(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032F2D0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AudioFileFormatRegistry::GetFormatForData(AudioFileFormatRegistry *this, uint64_t a2, const void *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    for (i = *(this + 1); i != *(this + 2); i += 16)
    {
      v3 = *(i + 8);
      if ((*(*v3 + 24))(v3, a2, a3) == 1)
      {
        return v3;
      }
    }

    AudioFileFormatRegistry::AddComponentFormats(this);
    for (j = *(this + 1); j != *(this + 2); j += 16)
    {
      v3 = *(j + 8);
      if ((*(*v3 + 24))(v3, a2, a3) == 1)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t AudioFileFormatRegistry::GetReadFormatsSize(AudioFileFormatRegistry *this)
{
  AudioFileFormatRegistry::AddComponentFormats(this);
  v2 = *(this + 4);
  if (v2 == *(this + 5))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if ((*(**(v2 + 8) + 40))(*(v2 + 8)))
    {
      v3 = (v3 + 4);
    }

    else
    {
      v3 = v3;
    }

    v2 += 16;
  }

  while (v2 != *(this + 5));
  return v3;
}

uint64_t AudioFileFormatRegistry::GetWriteFormatsSize(AudioFileFormatRegistry *this)
{
  AudioFileFormatRegistry::AddComponentFormats(this);
  v2 = *(this + 4);
  if (v2 == *(this + 5))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if ((*(**(v2 + 8) + 48))(*(v2 + 8)))
    {
      v3 = (v3 + 4);
    }

    else
    {
      v3 = v3;
    }

    v2 += 16;
  }

  while (v2 != *(this + 5));
  return v3;
}

uint64_t AudioFileFormatRegistry::GetExtensionsForType(AudioFileFormatRegistry *this, unsigned int a2, unsigned int *a3, void *a4)
{
  if (*a3 != 8)
  {
    return 561211770;
  }

  v6 = AudioFileFormatRegistry::Get(this, a2);
  if (v6)
  {
    *a4 = 0;
    (*(*v6 + 64))(v6, a4);
    if (*a4)
    {
      return 0;
    }

    else
    {
      return 1886681407;
    }
  }

  else
  {
    *a3 = 0;
    return 1954115647;
  }
}

uint64_t AudioFileFormatRegistry::GetUTIsForType(AudioFileFormatRegistry *this, unsigned int a2, unsigned int *a3, void *a4)
{
  if (*a3 != 8)
  {
    return 561211770;
  }

  v6 = AudioFileFormatRegistry::Get(this, a2);
  if (v6)
  {
    *a4 = 0;
    (*(*v6 + 72))(v6, a4);
    if (*a4)
    {
      return 0;
    }

    else
    {
      return 1886681407;
    }
  }

  else
  {
    *a3 = 0;
    return 1954115647;
  }
}

uint64_t AudioFileFormatRegistry::GetMIMETypesForType(AudioFileFormatRegistry *this, unsigned int a2, unsigned int *a3, void *a4)
{
  if (*a3 != 8)
  {
    return 561211770;
  }

  v6 = AudioFileFormatRegistry::Get(this, a2);
  if (v6)
  {
    *a4 = 0;
    (*(*v6 + 80))(v6, a4);
    if (*a4)
    {
      return 0;
    }

    else
    {
      return 1886681407;
    }
  }

  else
  {
    *a3 = 0;
    return 1954115647;
  }
}

uint64_t AudioFileFormatRegistry::GetHFSCodesForType(AudioFileFormatRegistry *this, unsigned int a2, unsigned int *a3, void *a4)
{
  if (!a3)
  {
    return 561211770;
  }

  v5 = AudioFileFormatRegistry::Get(this, a2);
  if (v5)
  {
    v6 = *(*v5 + 112);

    return v6();
  }

  else
  {
    *a3 = 0;
    return 1954115647;
  }
}

void AudioFileFormatRegistry::GetTypesForExtension(AudioFileFormatRegistry *this, const __CFString *a2, unsigned int *a3, _DWORD *a4)
{
  if (a4)
  {
    v8 = *a3 >> 2;
  }

  else
  {
    v8 = 0;
  }

  AudioFileFormatRegistry::AddComponentFormats(this);
  v9 = *(this + 4);
  if (v9 == *(this + 5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      theArray = 0;
      (*(**(v9 + 8) + 64))(*(v9 + 8), &theArray);
      if (theArray)
      {
        v13.length = CFArrayGetCount(theArray);
        v13.location = 0;
        if (CFArrayGetFirstIndexOfValue(theArray, v13, a2) != -1)
        {
          if (a4 && v10 < v8)
          {
            a4[v10] = *v9;
          }

          ++v10;
        }

        CFRelease(theArray);
      }

      v9 += 16;
    }

    while (v9 != *(this + 5));
  }

  if (v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (!a4)
  {
    v11 = v10;
  }

  *a3 = 4 * v11;
}

void AudioFileFormatRegistry::GetTypesForUTI(AudioFileFormatRegistry *this, const __CFString *a2, unsigned int *a3, _DWORD *a4)
{
  if (a4)
  {
    v8 = *a3 >> 2;
  }

  else
  {
    v8 = 0;
  }

  AudioFileFormatRegistry::AddComponentFormats(this);
  v9 = *(this + 4);
  if (v9 == *(this + 5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      theArray = 0;
      (*(**(v9 + 8) + 72))(*(v9 + 8), &theArray);
      if (theArray)
      {
        v13.length = CFArrayGetCount(theArray);
        v13.location = 0;
        if (CFArrayGetFirstIndexOfValue(theArray, v13, a2) != -1)
        {
          if (a4 && v10 < v8)
          {
            a4[v10] = *v9;
          }

          ++v10;
        }

        CFRelease(theArray);
      }

      v9 += 16;
    }

    while (v9 != *(this + 5));
  }

  if (v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (!a4)
  {
    v11 = v10;
  }

  *a3 = 4 * v11;
}

void AudioFileFormatRegistry::GetTypesForMIMEType(AudioFileFormatRegistry *this, const __CFString *a2, unsigned int *a3, _DWORD *a4)
{
  if (a4)
  {
    v8 = *a3 >> 2;
  }

  else
  {
    v8 = 0;
  }

  AudioFileFormatRegistry::AddComponentFormats(this);
  v9 = *(this + 4);
  if (v9 == *(this + 5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      theArray = 0;
      (*(**(v9 + 8) + 80))(*(v9 + 8), &theArray);
      if (theArray)
      {
        v13.length = CFArrayGetCount(theArray);
        v13.location = 0;
        if (CFArrayGetFirstIndexOfValue(theArray, v13, a2) != -1)
        {
          if (a4 && v10 < v8)
          {
            a4[v10] = *v9;
          }

          ++v10;
        }

        CFRelease(theArray);
      }

      v9 += 16;
    }

    while (v9 != *(this + 5));
  }

  if (v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (!a4)
  {
    v11 = v10;
  }

  *a3 = 4 * v11;
}

void AudioFileFormatRegistry::GetTypesForHFSCode(AudioFileFormatRegistry *this, int a2, unsigned int *a3, _DWORD *a4)
{
  if (a4)
  {
    v8 = *a3 >> 2;
  }

  else
  {
    v8 = 0;
  }

  AudioFileFormatRegistry::AddComponentFormats(this);
  v9 = *(this + 4);
  if (v9 != *(this + 5))
  {
    v10 = 0;
    while (1)
    {
      v23 = 0x7FFFFFFF;
      v11 = (*(**(v9 + 8) + 112))(*(v9 + 8), &v23, 0);
      v12 = v23;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = v23 == 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      v14 = malloc_type_malloc(v23 & 0xFFFFFFFC, 0xAFA3E4BEuLL);
      if (v12 >= 4 && v14 == 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(exception);
      }

      v16 = v14;
      bzero(v14, v12 & 0xFFFFFFFC);
      (*(**(v9 + 8) + 112))(*(v9 + 8), &v23, v16);
      if (v23 >= 4)
      {
        v17 = v23 >> 2;
        v18 = v16;
        while (1)
        {
          v19 = *v18++;
          if (v19 == a2)
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_25;
          }
        }

        if (a4 && v10 < v8)
        {
          a4[v10] = *v9;
        }

        ++v10;
      }

      else if (!v16)
      {
        goto LABEL_26;
      }

LABEL_25:
      free(v16);
LABEL_26:
      v9 += 16;
      if (v9 == *(this + 5))
      {
        goto LABEL_29;
      }
    }
  }

  v10 = 0;
LABEL_29:
  if (v8 >= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v8;
  }

  if (!a4)
  {
    v20 = v10;
  }

  *a3 = 4 * v20;
}

void sub_18F7E5A98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileFormatRegistry::GetNameForType(AudioFileFormatRegistry *this, unsigned int a2, unsigned int *a3, void *a4)
{
  if (*a3 != 8)
  {
    return 561211770;
  }

  v6 = AudioFileFormatRegistry::Get(this, a2);
  if (v6)
  {
    (*(*v6 + 88))(v6, a4);
    return 0;
  }

  else
  {
    *a3 = 0;
    return 1954115647;
  }
}

uint64_t AudioFileFormatRegistry::GetAllUTIs(AudioFileFormatRegistry *this, unsigned int *a2, void *a3)
{
  if (*a2 == 8)
  {
    theArray[2] = v10;
    theArray[3] = v9;
    theArray[4] = v8;
    theArray[5] = v7;
    theArray[6] = v6;
    theArray[7] = v5;
    theArray[8] = v4;
    theArray[9] = v3;
    theArray[10] = v11;
    theArray[11] = v12;
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    AudioFileFormatRegistry::AddComponentFormats(this);
    for (i = *(this + 4); i != *(this + 5); i += 16)
    {
      theArray[0] = 0;
      (*(**(i + 8) + 72))(*(i + 8), theArray);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        if (Count >= 1)
        {
          v17 = 0;
          v18 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v17);
            CFSetAddValue(Mutable, ValueAtIndex);
            ++v17;
          }

          while (v18 != v17);
        }

        CFRelease(theArray[0]);
      }
    }

    CFSetGetCount(Mutable);
    LODWORD(theArray[0]) = 0;
    operator new[]();
  }

  return 561211770;
}

uint64_t addToArray(uint64_t result, void *a2)
{
  v2 = a2[1];
  v3 = *a2;
  *a2 = v3 + 1;
  *(v2 + 8 * v3) = result;
  return result;
}

uint64_t AudioFileFormatRegistry::GetAllMIMETypes(AudioFileFormatRegistry *this, unsigned int *a2, void *a3)
{
  if (*a2 == 8)
  {
    theArray[2] = v10;
    theArray[3] = v9;
    theArray[4] = v8;
    theArray[5] = v7;
    theArray[6] = v6;
    theArray[7] = v5;
    theArray[8] = v4;
    theArray[9] = v3;
    theArray[10] = v11;
    theArray[11] = v12;
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    AudioFileFormatRegistry::AddComponentFormats(this);
    for (i = *(this + 4); i != *(this + 5); i += 16)
    {
      theArray[0] = 0;
      (*(**(i + 8) + 80))(*(i + 8), theArray);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        if (Count >= 1)
        {
          v17 = 0;
          v18 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v17);
            CFSetAddValue(Mutable, ValueAtIndex);
            ++v17;
          }

          while (v18 != v17);
        }

        CFRelease(theArray[0]);
      }
    }

    CFSetGetCount(Mutable);
    LODWORD(theArray[0]) = 0;
    operator new[]();
  }

  return 561211770;
}

uint64_t AudioFileFormatRegistry::GetAllExtensions(AudioFileFormatRegistry *this, unsigned int *a2, void *a3)
{
  if (*a2 == 8)
  {
    theArray[2] = v10;
    theArray[3] = v9;
    theArray[4] = v8;
    theArray[5] = v7;
    theArray[6] = v6;
    theArray[7] = v5;
    theArray[8] = v4;
    theArray[9] = v3;
    theArray[10] = v11;
    theArray[11] = v12;
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    AudioFileFormatRegistry::AddComponentFormats(this);
    for (i = *(this + 4); i != *(this + 5); i += 16)
    {
      theArray[0] = 0;
      (*(**(i + 8) + 64))(*(i + 8), theArray);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        if (Count >= 1)
        {
          v17 = 0;
          v18 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v17);
            CFSetAddValue(Mutable, ValueAtIndex);
            ++v17;
          }

          while (v18 != v17);
        }

        CFRelease(theArray[0]);
      }
    }

    CFSetGetCount(Mutable);
    LODWORD(theArray[0]) = 0;
    operator new[]();
  }

  return 561211770;
}

uint64_t AudioFileFormatRegistry::GetAllHFSTypeCodes(AudioFileFormatRegistry *this, unsigned int *a2, void *a3)
{
  if (!a2)
  {
    return 561211770;
  }

  AudioFileFormatRegistry::AddComponentFormats(this);
  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      LODWORD(__src) = -1;
      v8 = (*(**(v6 + 8) + 112))(*(v6 + 8), &__src, 0);
      v9 = __src;
      if (v8)
      {
        v9 = 0;
      }

      v7 += v9;
      v6 += 16;
    }

    while (v6 != *(this + 5));
  }

  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&__src, v7, 1);
  AudioFileFormatRegistry::AddComponentFormats(this);
  v11 = *(this + 4);
  if (v11 != *(this + 5))
  {
    v12 = v7;
    do
    {
      v23 = v12;
      v13 = (*(**(v11 + 8) + 112))(*(v11 + 8), &v23, __src + ((v7 - v12) & 0xFFFFFFFC));
      v14 = v23;
      if (v13)
      {
        v14 = 0;
      }

      v12 -= v14;
      v11 += 16;
    }

    while (v11 != *(this + 5));
  }

  if (v7 >= 4)
  {
    v18 = 0;
    v19 = 0;
    v20 = __src;
    do
    {
      if (v18)
      {
        v21 = 0;
        v22 = v20[v18];
        while (v22 != v20[v21])
        {
          if (v18 == ++v21)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v22 = *v20;
LABEL_28:
        v20[v19++] = v22;
      }

      ++v18;
    }

    while (v18 != v7 >> 2);
    v15 = 4 * v19;
    if (a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    if (a3)
    {
LABEL_17:
      if (*a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = *a2;
      }

      v17 = __src;
      memcpy(a3, __src, v16);
      goto LABEL_32;
    }
  }

  v17 = __src;
LABEL_32:
  *a2 = v15;
  if (v17)
  {
    free(v17);
  }

  return 0;
}

void sub_18F7E6248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void *CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  v5 = 4 * a2;
  if (a3)
  {
    v6 = malloc_type_malloc(4 * a2, 0xD7524C8FuLL);
    v7 = v6;
    if (!a2 || v6)
    {
      bzero(v6, v5);
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v8 = malloc_type_malloc(v5, 0x100004052888210uLL);
  v7 = v8;
  if (a2 && !v8)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a1 = v7;
  return a1;
}

OSStatus AudioFileOpenWithCallbacks(void *inClientData, AudioFile_ReadProc inReadFunc, AudioFile_WriteProc inWriteFunc, AudioFile_GetSizeProc inGetSizeFunc, AudioFile_SetSizeProc inSetSizeFunc, AudioFileTypeID inFileTypeHint, AudioFileID *outAudioFile)
{
  if (!outAudioFile)
  {
    return -50;
  }

  CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v28, 0x2000uLL, 1);
  v14 = 0;
  v27 = 0;
  FormatForData = v28;
  do
  {
    v16 = (inReadFunc)(inClientData, v14, 0x2000, FormatForData, &v27);
    LODWORD(FormatForData) = v16;
    if (v16)
    {
      v23 = 0;
      v19 = v16;
      goto LABEL_18;
    }

    if (v27 < 0xA)
    {
      break;
    }

    FormatForData = v28;
    v17 = ID3Size(v27, v28, &v26);
    v14 += v17;
  }

  while (v17);
  AudioFileFormatRegistry = GetAudioFileFormatRegistry();
  FormatForData = AudioFileFormatRegistry::GetFormatForData(AudioFileFormatRegistry, v27, v28);
  v19 = 1954115647;
  if (FormatForData)
  {
    goto LABEL_7;
  }

  if (inFileTypeHint)
  {
    v24 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, inFileTypeHint);
    FormatForData = v24;
    if (!v24)
    {
      v23 = 0;
      goto LABEL_18;
    }

    if ((*(*v24 + 24))(v24, v27, v28))
    {
LABEL_7:
      v20 = NewAudioFileHandle(FormatForData);
      v21 = v20;
      if (v20)
      {
        LODWORD(FormatForData) = (*(*v20 + 56))(v20, inClientData, inReadFunc, inWriteFunc, inGetSizeFunc, inSetSizeFunc);
        if (FormatForData)
        {
          (*(*v21 + 8))(v21);
          v22 = 0;
        }

        else
        {
          v22 = v21[2];
        }

        *outAudioFile = v22;
        v23 = 1;
        goto LABEL_18;
      }
    }
  }

  v23 = 0;
  LODWORD(FormatForData) = 0;
LABEL_18:
  if (v28)
  {
    free(v28);
  }

  if (v23)
  {
    return FormatForData;
  }

  return v19;
}

void sub_18F7E6520(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v13 = *v12;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E64F0);
}

void sub_18F7E6790(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E676CLL);
}

void sub_18F7E68C0(_Unwind_Exception *a1)
{
  AudioFileHandle::~AudioFileHandle(v1);
  MEMORY[0x193ADF220](v1, v2);
  _Unwind_Resume(a1);
}

OSStatus AudioFileOptimize(AudioFileID inAudioFile)
{
  v3 = inAudioFile;
  v4 = 0;
  if (AudioFileLocker::Lock(&v3))
  {
    if (v4)
    {
      v1 = (*(*v4 + 80))(v4);
    }

    else
    {
      v1 = -50;
    }
  }

  else
  {
    v1 = -38;
  }

  AudioFileLocker::~AudioFileLocker(&v3);
  return v1;
}

void sub_18F7E6968(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6954);
}

void sub_18F7E6A50(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6A38);
}

void sub_18F7E6B58(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6B3CLL);
}

uint64_t AudioFileWritePacketsWithDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v31 = a1;
  v32 = 0;
  if (AudioFileLocker::Lock(&v31))
  {
    v15 = v32;
    if (v32)
    {
      v16 = 0;
      if (a5 && a7)
      {
        v17 = *a7;
        if (v17)
        {
          v18 = *(v32 + 24);
          v19 = *(v32 + 32);
          v20 = (v19 - v18) >> 4;
          if (v17 <= v20)
          {
            if (v17 >= v20)
            {
              goto LABEL_21;
            }

            v26 = v18 + 16 * v17;
          }

          else
          {
            v21 = v17 - v20;
            v22 = *(v32 + 40);
            if (v21 > (v22 - v19) >> 4)
            {
              v23 = v22 - v18;
              if (v23 >> 3 > v17)
              {
                v17 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v17;
              }

              std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](v24);
            }

            v27 = v21;
            bzero(*(v32 + 32), 16 * v21);
            v26 = v19 + 16 * v27;
          }

          v15[4] = v26;
LABEL_21:
          v16 = v15[3];
          if (*a7)
          {
            v28 = 0;
            v29 = v15[3];
            do
            {
              *v29 = *a5 == 0;
              *(v29 + 4) = *(a5 + 4);
              *(v29 + 12) = *(a5 + 12);
              ++v28;
              v29 += 16;
              a5 += 16;
            }

            while (v28 < *a7);
          }

          goto LABEL_24;
        }

        v16 = 0;
      }

LABEL_24:
      v25 = (*(*v15 + 128))(v15, a2, a3, a4, v16, a6, a7, a8);
      goto LABEL_25;
    }

    v25 = 4294967246;
  }

  else
  {
    v25 = 4294967258;
  }

LABEL_25:
  AudioFileLocker::~AudioFileLocker(&v31);
  return v25;
}

void sub_18F7E6DA4(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AudioFileLocker::~AudioFileLocker(va);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v7 = *v6;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6D80);
}

uint64_t AudioFileWritePacketsWithDependencies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v18 = 0;
  if (AudioFileLocker::Lock(&v17))
  {
    if (v18)
    {
      v15 = (*(*v18 + 128))(v18, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v15 = 4294967246;
    }
  }

  else
  {
    v15 = 4294967258;
  }

  AudioFileLocker::~AudioFileLocker(&v17);
  return v15;
}

void sub_18F7E6EB4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6E94);
}

void sub_18F7E6FA0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E6F88);
}

void sub_18F7E7070(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E705CLL);
}

void sub_18F7E7150(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7138);
}

void sub_18F7E7230(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7218);
}

void sub_18F7E7328(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7310);
}

void sub_18F7E7430(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7414);
}

void sub_18F7E7518(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7500);
}

void sub_18F7E75E8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E75D4);
}

OSStatus AudioFileGetGlobalInfoSize(AudioFilePropertyID inPropertyID, UInt32 inSpecifierSize, void *inSpecifier, UInt32 *outDataSize)
{
  if (!outDataSize)
  {
    return -50;
  }

  v8 = 2003334207;
  AudioFileFormatRegistry = GetAudioFileFormatRegistry();
  if (inPropertyID <= 1718446435)
  {
    if (inPropertyID > 1634560364)
    {
      if (inPropertyID > 1717926003)
      {
        if (inPropertyID == 1717926004)
        {
          goto LABEL_26;
        }

        if (inPropertyID != 1718118003)
        {
          return v8;
        }

        if (inSpecifierSize == 4)
        {
          v12 = *inSpecifier;
          v18 = -1;
          HFSCodesForType = AudioFileFormatRegistry::GetHFSCodesForType(AudioFileFormatRegistry, v12, &v18, 0);
          goto LABEL_47;
        }

        return 561211770;
      }

      if (inPropertyID == 1634560365)
      {
        goto LABEL_26;
      }

      v11 = 1635087465;
    }

    else
    {
      if (inPropertyID <= 1634231922)
      {
        if (inPropertyID == 1634103910)
        {
          FormatsSize = AudioFileFormatRegistry::GetReadFormatsSize(AudioFileFormatRegistry);
        }

        else
        {
          if (inPropertyID != 1634105190)
          {
            return v8;
          }

          FormatsSize = AudioFileFormatRegistry::GetWriteFormatsSize(AudioFileFormatRegistry);
        }

        v8 = 0;
        *outDataSize = FormatsSize;
        return v8;
      }

      if (inPropertyID == 1634231923)
      {
        v18 = -1;
        HFSCodesForType = AudioFileFormatRegistry::GetAllHFSTypeCodes(AudioFileFormatRegistry, &v18, 0);
        goto LABEL_47;
      }

      v11 = 1634498676;
    }

LABEL_25:
    if (inPropertyID != v11)
    {
      return v8;
    }

LABEL_26:
    v8 = 0;
    *outDataSize = 8;
    return v8;
  }

  if (inPropertyID <= 1935960419)
  {
    if (inPropertyID > 1718906476)
    {
      if (inPropertyID == 1718906477)
      {
        goto LABEL_26;
      }

      v11 = 1718973545;
      goto LABEL_25;
    }

    if (inPropertyID != 1718446436)
    {
      v11 = 1718446445;
      goto LABEL_25;
    }

    if (inSpecifierSize == 4)
    {
      v14 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *inSpecifier);
      if (!v14)
      {
        goto LABEL_51;
      }

      v18 = -1;
      HFSCodesForType = (*(*v14 + 96))(v14, &v18, 0);
LABEL_47:
      if (!HFSCodesForType)
      {
        *outDataSize = v18;
      }

      return HFSCodesForType;
    }

    return 561211770;
  }

  if (inPropertyID > 1952999026)
  {
    switch(inPropertyID)
    {
      case 0x74686673u:
        AudioFileFormatRegistry::GetTypesForHFSCode(AudioFileFormatRegistry, *inSpecifier, outDataSize, 0);
        return 0;
      case 0x746D696Du:
        AudioFileFormatRegistry::GetTypesForMIMEType(AudioFileFormatRegistry, *inSpecifier, outDataSize, 0);
        return 0;
      case 0x74757469u:
        AudioFileFormatRegistry::GetTypesForUTI(AudioFileFormatRegistry, *inSpecifier, outDataSize, 0);
        return 0;
    }

    return v8;
  }

  if (inPropertyID == 1935960420)
  {
    if (inSpecifierSize < 8)
    {
      return 561211770;
    }

    v15 = *(inSpecifier + 1);
    v16 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *inSpecifier);
    if (v16)
    {
      v18 = -1;
      HFSCodesForType = (*(*v16 + 104))(v16, v15, &v18, 0);
      goto LABEL_47;
    }

LABEL_51:
    v8 = 1954115647;
    *outDataSize = 0;
    return v8;
  }

  if (inPropertyID == 1952807028)
  {
    AudioFileFormatRegistry::GetTypesForExtension(AudioFileFormatRegistry, *inSpecifier, outDataSize, 0);
    return 0;
  }

  return v8;
}

void sub_18F7E7978(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E794CLL);
}

OSStatus AudioFileGetGlobalInfo(AudioFilePropertyID inPropertyID, UInt32 inSpecifierSize, void *inSpecifier, UInt32 *ioDataSize, void *outPropertyData)
{
  v5 = -50;
  if (!ioDataSize || !outPropertyData)
  {
    return v5;
  }

  v5 = 0;
  AudioFileFormatRegistry = GetAudioFileFormatRegistry();
  v12 = AudioFileFormatRegistry;
  if (inPropertyID <= 1718446435)
  {
    if (inPropertyID > 1634560364)
    {
      if (inPropertyID > 1717926003)
      {
        if (inPropertyID == 1717926004)
        {
          if (inSpecifierSize == 4)
          {
            return AudioFileFormatRegistry::GetExtensionsForType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
          }
        }

        else
        {
          if (inPropertyID != 1718118003)
          {
            return v5;
          }

          if (inSpecifierSize == 4)
          {
            return AudioFileFormatRegistry::GetHFSCodesForType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
          }
        }
      }

      else if (inPropertyID == 1634560365)
      {
        if (*ioDataSize == 8)
        {
          return AudioFileFormatRegistry::GetAllMIMETypes(AudioFileFormatRegistry, ioDataSize, outPropertyData);
        }
      }

      else
      {
        if (inPropertyID != 1635087465)
        {
          return v5;
        }

        if (*ioDataSize == 8)
        {
          return AudioFileFormatRegistry::GetAllUTIs(AudioFileFormatRegistry, ioDataSize, outPropertyData);
        }
      }
    }

    else
    {
      if (inPropertyID <= 1634231922)
      {
        if (inPropertyID == 1634103910)
        {
          FormatsSize = AudioFileFormatRegistry::GetReadFormatsSize(AudioFileFormatRegistry);
          v24 = *ioDataSize;
          AudioFileFormatRegistry::AddComponentFormats(v12);
          v5 = 0;
          *ioDataSize = FormatsSize;
          v25 = *(v12 + 4);
          if (v25 != *(v12 + 5) && v24 >= 4)
          {
            v26 = 0;
            v27 = v24 >> 2;
            v28 = v25 + 16;
            do
            {
              if ((*(**(v28 - 8) + 40))(*(v28 - 8)))
              {
                *(outPropertyData + v26++) = *(v28 - 16);
              }

              v5 = 0;
              v19 = v28 == *(v12 + 5);
              v28 += 16;
            }

            while (!v19 && v26 < v27);
          }
        }

        else if (inPropertyID == 1634105190)
        {
          v13 = AudioFileFormatRegistry::GetWriteFormatsSize(AudioFileFormatRegistry);
          v14 = *ioDataSize;
          AudioFileFormatRegistry::AddComponentFormats(v12);
          v5 = 0;
          *ioDataSize = v13;
          v15 = *(v12 + 4);
          if (v15 != *(v12 + 5) && v14 >= 4)
          {
            v16 = 0;
            v17 = v14 >> 2;
            v18 = v15 + 16;
            do
            {
              if ((*(**(v18 - 8) + 48))(*(v18 - 8)))
              {
                *(outPropertyData + v16++) = *(v18 - 16);
              }

              v5 = 0;
              v19 = v18 == *(v12 + 5);
              v18 += 16;
            }

            while (!v19 && v16 < v17);
          }
        }

        return v5;
      }

      if (inPropertyID == 1634231923)
      {
        return AudioFileFormatRegistry::GetAllHFSTypeCodes(AudioFileFormatRegistry, ioDataSize, outPropertyData);
      }

      if (inPropertyID != 1634498676)
      {
        return v5;
      }

      if (*ioDataSize == 8)
      {
        return AudioFileFormatRegistry::GetAllExtensions(AudioFileFormatRegistry, ioDataSize, outPropertyData);
      }
    }

    return 561211770;
  }

  if (inPropertyID <= 1935960419)
  {
    if (inPropertyID > 1718906476)
    {
      if (inPropertyID != 1718906477)
      {
        if (inPropertyID != 1718973545)
        {
          return v5;
        }

        if (inSpecifierSize == 4)
        {
          return AudioFileFormatRegistry::GetUTIsForType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
        }

        return 561211770;
      }

      v5 = 561211770;
      if (inSpecifierSize != 4 || *ioDataSize != 8)
      {
        return v5;
      }

      return AudioFileFormatRegistry::GetNameForType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
    }

    else
    {
      if (inPropertyID != 1718446436)
      {
        if (inPropertyID != 1718446445)
        {
          return v5;
        }

        if (inSpecifierSize == 4)
        {
          return AudioFileFormatRegistry::GetMIMETypesForType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
        }

        return 561211770;
      }

      if (inSpecifierSize != 4)
      {
        return 561211770;
      }

      v22 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *inSpecifier);
      if (!v22)
      {
        goto LABEL_81;
      }

      return (*(*v22 + 96))(v22, ioDataSize, outPropertyData);
    }
  }

  if (inPropertyID > 1952999026)
  {
    switch(inPropertyID)
    {
      case 0x74686673u:
        AudioFileFormatRegistry::GetTypesForHFSCode(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
        return 0;
      case 0x746D696Du:
        AudioFileFormatRegistry::GetTypesForMIMEType(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
        return 0;
      case 0x74757469u:
        AudioFileFormatRegistry::GetTypesForUTI(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
        return 0;
    }

    return v5;
  }

  if (inPropertyID == 1935960420)
  {
    if (inSpecifierSize < 8)
    {
      return 561211770;
    }

    v30 = *(inSpecifier + 1);
    v31 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *inSpecifier);
    if (v31)
    {
      return (*(*v31 + 104))(v31, v30, ioDataSize, outPropertyData);
    }

LABEL_81:
    v5 = 1954115647;
    *ioDataSize = 0;
    return v5;
  }

  if (inPropertyID == 1952807028)
  {
    AudioFileFormatRegistry::GetTypesForExtension(AudioFileFormatRegistry, *inSpecifier, ioDataSize, outPropertyData);
    return 0;
  }

  return v5;
}

void sub_18F7E7F00(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F7E7ED4);
}

float64_t Float32ToNativeFloat64(void *a1, float64x2_t *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = *a1;
      v5 = a1[1];
      a1 += 2;
      v6 = vcvtq_f64_f32(v4);
      *a2 = v6;
      a2[1] = vcvtq_f64_f32(v5);
      a2 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v8 = *a1;
      a1 = (a1 + 4);
      v6.f64[0] = v8;
      a2->f64[0] = v8;
      a2 = (a2 + 8);
      --v7;
    }

    while (v7);
  }

  return v6.f64[0];
}

double Float32ToSwapFloat64(float *a1, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = a1[1];
      v5 = a1[2];
      v6 = a1[3];
      v7 = *a1;
      a2[1] = bswap32(LODWORD(v7));
      *a2 = bswap32(HIDWORD(v7));
      a2[3] = bswap32(COERCE_UNSIGNED_INT64(v4));
      a2[2] = bswap32(HIDWORD(COERCE_UNSIGNED_INT64(v4)));
      a2[5] = bswap32(COERCE_UNSIGNED_INT64(v5));
      a2[4] = bswap32(HIDWORD(COERCE_UNSIGNED_INT64(v5)));
      result = v6;
      a2[7] = bswap32(COERCE_UNSIGNED_INT64(v6));
      a2[6] = bswap32(HIDWORD(COERCE_UNSIGNED_INT64(v6)));
      a1 += 4;
      a2 += 8;
      --v3;
    }

    while (v3);
  }

  v9 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    v10 = a2 + 1;
    do
    {
      v11 = *a1++;
      result = v11;
      *v10 = bswap32(COERCE_UNSIGNED_INT64(v11));
      *(v10 - 1) = bswap32(HIDWORD(COERCE_UNSIGNED_INT64(v11)));
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

float NativeFloat64ToFloat32(_OWORD *a1, float32x4_t *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v5 = *a1;
      v4 = *(a1 + 1);
      a1 += 2;
      *a2++ = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
      --v3;
    }

    while (v3);
  }

  v6 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v7 = *a1;
      a1 = (a1 + 8);
      *v4.f64 = v7;
      a2->i32[0] = LODWORD(v4.f64[0]);
      a2 = (a2 + 4);
      --v6;
    }

    while (v6);
  }

  return *v4.f64;
}

float SwapFloat64ToFloat32(unsigned int *a1, float *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = COERCE_DOUBLE(bswap64(a1[4] | (a1[5] << 32)));
      v5 = COERCE_DOUBLE(bswap64(a1[6] | (a1[7] << 32)));
      v6 = COERCE_DOUBLE(bswap64(*a1 | (a1[1] << 32)));
      v7 = COERCE_DOUBLE(bswap64(a1[2] | (a1[3] << 32)));
      *a2 = v6;
      a2[1] = v7;
      result = v4;
      v9 = v5;
      a2[2] = result;
      a2[3] = v9;
      a1 += 8;
      a2 += 4;
      --v3;
    }

    while (v3);
  }

  v10 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    v11 = a1 + 1;
    do
    {
      result = COERCE_DOUBLE(bswap64(*(v11 - 1) | (*v11 << 32)));
      *a2++ = result;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

void ConvertIntToFloat<PCMSInt16Native,PCMFloat32>(__int16 *a1, float *a2, int a3, float a4)
{
  if (a4 == 0.0)
  {
    a4 = scalbnf(1.0, -15);
  }

  v7 = a3 - 4;
  if (a3 >= 4)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    *a2 = a4 * *a1;
    v11 = a2 + 1;
    a3 &= 3u;
    v12 = a4 * v8;
    a1 += 4;
    v13 = v9;
    if (v7 >= 4)
    {
      v14 = v7 >> 2;
      do
      {
        v15 = a1[1];
        v16 = *a1;
        v17 = a4 * v10;
        *v11 = v12;
        v11[1] = a4 * v13;
        v18 = a1[2];
        v10 = a1[3];
        v11[2] = v17;
        v11[3] = a4 * v16;
        v11 += 4;
        v12 = a4 * v15;
        a1 += 4;
        v13 = v18;
        --v14;
      }

      while (v14);
    }

    *v11 = v12;
    v11[1] = a4 * v13;
    v11[2] = a4 * v10;
    a2 = v11 + 3;
  }

  for (; a3; --a3)
  {
    v19 = *a1++;
    *a2++ = a4 * v19;
  }
}

void ConvertIntToFloat<PCMSInt16Swap,PCMFloat32>(unsigned __int16 *a1, float *a2, int a3, float a4)
{
  if (a4 == 0.0)
  {
    a4 = scalbnf(1.0, -15);
  }

  v7 = a3 - 4;
  if (a3 >= 4)
  {
    v8 = bswap32(a1[1]);
    v9 = bswap32(a1[2]);
    v10 = bswap32(a1[3]) >> 16;
    *a2 = a4 * (bswap32(*a1) >> 16);
    v11 = a2 + 1;
    a3 &= 3u;
    v12 = a4 * (v8 >> 16);
    a1 += 4;
    v13 = (v9 >> 16);
    if (v7 >= 4)
    {
      v14 = v7 >> 2;
      do
      {
        v15 = bswap32(*a1);
        *v11 = v12;
        v16 = bswap32(a1[1]);
        v11[1] = a4 * v13;
        v17 = bswap32(a1[2]);
        v11[2] = a4 * v10;
        v10 = bswap32(a1[3]) >> 16;
        v11[3] = a4 * (v15 >> 16);
        v11 += 4;
        v12 = a4 * (v16 >> 16);
        a1 += 4;
        v13 = (v17 >> 16);
        --v14;
      }

      while (v14);
    }

    *v11 = v12;
    v11[1] = a4 * v13;
    v11[2] = a4 * v10;
    a2 = v11 + 3;
  }

  for (; a3; --a3)
  {
    v18 = *a1++;
    *a2++ = a4 * (bswap32(v18) >> 16);
  }
}

float *ConvertFloatToInt<PCMFloat32,PCMSInt16Native>(float *result, _WORD *a2, unsigned int a3, float a4)
{
  if (a4 == 0.0)
  {
    v4 = 2147483650.0;
  }

  else
  {
    v4 = a4 * 0.0000305175781 * 2147483650.0;
  }

  if (a3 >= 8)
  {
    v5 = *result * v4 + 32768.0;
    v6 = result[1] * v4 + 32768.0;
    if (v5 > -2147483650.0)
    {
      v7 = v5 - (v5 < 0.0);
    }

    else
    {
      HIWORD(v7) = 0x8000;
    }

    if (v5 < 2147450880.0)
    {
      HIWORD(v8) = HIWORD(v7);
    }

    else
    {
      HIWORD(v8) = 0x7FFF;
    }

    v9 = result[2];
    v10 = (a3 - 4) >> 2;
    v11 = result + 3;
    do
    {
      v12 = a2;
      v13 = v11;
      v14 = (v6 - (v6 < 0.0)) >> 16;
      if (v6 <= -2147483650.0)
      {
        LOWORD(v14) = 0x8000;
      }

      v15 = v6 < 2147450880.0;
      v16 = v13[1];
      v17 = *v13;
      v18 = v9 * v4 + 32768.0;
      if (!v15)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *a2 = HIWORD(v8);
      v19 = v16;
      v20 = v17 * v4 + 32768.0;
      v21 = (v18 - (v18 < 0.0)) >> 16;
      if (v18 <= -2147483650.0)
      {
        LOWORD(v21) = 0x8000;
      }

      if (v18 >= 2147450880.0)
      {
        LOWORD(v21) = 0x7FFF;
      }

      a2[1] = v14;
      v22 = v13[2];
      v23 = v19 * v4 + 32768.0;
      v24 = (v20 - (v20 < 0.0)) >> 16;
      if (v20 <= -2147483650.0)
      {
        LOWORD(v24) = 0x8000;
      }

      if (v20 >= 2147450880.0)
      {
        LOWORD(v24) = 0x7FFF;
      }

      a2[2] = v21;
      if (v23 >= 2147450880.0)
      {
        HIWORD(v8) = 0x7FFF;
      }

      else if (v23 <= -2147483650.0)
      {
        HIWORD(v8) = 0x8000;
      }

      else
      {
        v8 = v23 - (v23 < 0.0);
      }

      v25 = v13[3];
      v6 = v22 * v4 + 32768.0;
      a2[3] = v24;
      v11 = v13 + 4;
      a2 += 4;
      v9 = v25;
      --v10;
    }

    while (v10);
    a3 &= 3u;
    v26 = *v11;
    v27 = v9 * v4 + 32768.0;
    if (v6 > -2147483650.0)
    {
      v28 = (v6 - (v6 < 0.0)) >> 16;
    }

    else
    {
      LOWORD(v28) = 0x8000;
    }

    if (v6 >= 2147450880.0)
    {
      LOWORD(v28) = 0x7FFF;
    }

    *a2 = HIWORD(v8);
    v29 = v26 * v4 + 32768.0;
    if (v27 > -2147483650.0)
    {
      v30 = (v27 - (v27 < 0.0)) >> 16;
    }

    else
    {
      LOWORD(v30) = 0x8000;
    }

    if (v27 < 2147450880.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0x7FFF;
    }

    v12[5] = v28;
    if (v29 >= 2147450880.0)
    {
      LOWORD(v32) = 0x7FFF;
    }

    else if (v29 <= -2147483650.0)
    {
      LOWORD(v32) = 0x8000;
    }

    else
    {
      v32 = (v29 - (v29 < 0.0)) >> 16;
    }

    v12[6] = v31;
    v12[7] = v32;
    result = v13 + 5;
    a2 = v12 + 8;
  }

  for (; a3; --a3)
  {
    v33 = *result * v4 + 32768.0;
    if (v33 >= 2147450880.0)
    {
      LOWORD(v34) = 0x7FFF;
    }

    else if (v33 <= -2147483650.0)
    {
      LOWORD(v34) = 0x8000;
    }

    else
    {
      v34 = (v33 - (v33 < 0.0)) >> 16;
    }

    *a2++ = v34;
    ++result;
  }

  return result;
}

float *ConvertFloatToInt<PCMFloat32,PCMSInt16Swap>(float *result, _WORD *a2, unsigned int a3, float a4)
{
  if (a4 == 0.0)
  {
    v4 = 2147483650.0;
  }

  else
  {
    v4 = a4 * 0.0000305175781 * 2147483650.0;
  }

  if (a3 >= 8)
  {
    v5 = *result * v4 + 32768.0;
    v6 = result[1] * v4 + 32768.0;
    if (v5 > -2147483650.0)
    {
      v7 = v5 - (v5 < 0.0);
    }

    else
    {
      v7 = 0x80000000;
    }

    if (v5 < 2147450880.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    v9 = result[2];
    v10 = (a3 - 4) >> 2;
    v11 = result + 3;
    do
    {
      v12 = a2;
      v13 = v11;
      v14 = *v11;
      v15 = (v6 - (v6 < 0.0)) >> 16;
      if (v6 <= -2147483650.0)
      {
        v15 = 0x8000;
      }

      if (v6 >= 2147450880.0)
      {
        v15 = 0x7FFF;
      }

      *a2 = bswap32(v8);
      v16 = v9 * v4 + 32768.0;
      v17 = v13[1];
      v18 = (v16 - (v16 < 0.0)) >> 16;
      if (v16 <= -2147483650.0)
      {
        v18 = 0x8000;
      }

      if (v16 >= 2147450880.0)
      {
        v18 = 0x7FFF;
      }

      a2[1] = __rev16(v15);
      v19 = v14 * v4 + 32768.0;
      v20 = v13[2];
      v21 = (v19 - (v19 < 0.0)) >> 16;
      if (v19 <= -2147483650.0)
      {
        v21 = 0x8000;
      }

      if (v19 >= 2147450880.0)
      {
        v21 = 0x7FFF;
      }

      a2[2] = __rev16(v18);
      v22 = v17 * v4 + 32768.0;
      if (v22 >= 2147450880.0)
      {
        v8 = 0x7FFFFFFF;
      }

      else if (v22 <= -2147483650.0)
      {
        v8 = 0x80000000;
      }

      else
      {
        v8 = v22 - (v22 < 0.0);
      }

      v23 = v13[3];
      a2[3] = __rev16(v21);
      v6 = v20 * v4 + 32768.0;
      v11 = v13 + 4;
      a2 += 4;
      v9 = v23;
      --v10;
    }

    while (v10);
    a3 &= 3u;
    v24 = *v11;
    if (v6 > -2147483650.0)
    {
      v25 = (v6 - (v6 < 0.0)) >> 16;
    }

    else
    {
      v25 = 0x8000;
    }

    if (v6 >= 2147450880.0)
    {
      v25 = 0x7FFF;
    }

    *a2 = bswap32(v8);
    v26 = v9 * v4 + 32768.0;
    if (v26 > -2147483650.0)
    {
      v27 = (v26 - (v26 < 0.0)) >> 16;
    }

    else
    {
      v27 = 0x8000;
    }

    if (v26 < 2147450880.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0x7FFF;
    }

    v12[5] = __rev16(v25);
    v29 = v24 * v4 + 32768.0;
    if (v29 >= 2147450880.0)
    {
      v30 = 0x7FFF;
    }

    else if (v29 <= -2147483650.0)
    {
      v30 = 0x8000;
    }

    else
    {
      v30 = (v29 - (v29 < 0.0)) >> 16;
    }

    v12[6] = __rev16(v28);
    v12[7] = __rev16(v30);
    result = v13 + 5;
    a2 = v12 + 8;
  }

  for (; a3; --a3)
  {
    v31 = *result * v4 + 32768.0;
    if (v31 >= 2147450880.0)
    {
      v32 = 0x7FFF;
    }

    else if (v31 <= -2147483650.0)
    {
      v32 = 0x8000;
    }

    else
    {
      v32 = (v31 - (v31 < 0.0)) >> 16;
    }

    *a2++ = __rev16(v32);
    ++result;
  }

  return result;
}

__int16 *StereoDeinterleaveInt16ToFloat32Scaled_Portable(__int16 *result, float *a2, float *a3, int a4, float a5)
{
  for (; a4; --a4)
  {
    v5 = result[1];
    *a2++ = *result * a5;
    *a3++ = v5 * a5;
    result += 2;
  }

  return result;
}

float *StereoInterleaveFloat32ToInt16Scaled_Portable(float *result, float *a2, _WORD *a3, int a4, float a5)
{
  for (; a4; --a4)
  {
    v5 = *result++;
    v6 = v5 * a5;
    if ((v5 * a5) <= 0.0)
    {
      v7 = (v6 + -0.5);
      if (v6 <= -32768.0)
      {
        LOWORD(v7) = 0x8000;
      }
    }

    else
    {
      v7 = (v6 + 0.5);
      if (v6 >= 32766.0)
      {
        LOWORD(v7) = 0x7FFF;
      }
    }

    v8 = *a2++;
    v9 = v8 * a5;
    *a3 = v7;
    if ((v8 * a5) <= 0.0)
    {
      v10 = (v9 + -0.5);
      if (v9 <= -32768.0)
      {
        LOWORD(v10) = 0x8000;
      }
    }

    else
    {
      v10 = (v9 + 0.5);
      if (v9 >= 32766.0)
      {
        LOWORD(v10) = 0x7FFF;
      }
    }

    a3[1] = v10;
    a3 += 2;
  }

  return result;
}

void ConvertIntToFloat<PCMSInt32Native,PCMFloat32>(int *a1, float *a2, int a3, int a4, float a5)
{
  if (a5 == 0.0)
  {
    a5 = scalbnf(1.0, 1 - a4);
  }

  v8 = a3 - 4;
  if (a3 >= 4)
  {
    v9 = a1[1];
    v10 = a1[3];
    v11 = a1[2];
    *a2 = a5 * *a1;
    v12 = a2 + 1;
    a3 &= 3u;
    v13 = a5 * v9;
    a1 += 4;
    v14 = v11;
    if (v8 >= 4)
    {
      v15 = v8 >> 2;
      do
      {
        v16 = *a1;
        *v12 = v13;
        v17 = v16;
        v18 = a5 * v10;
        v19 = a1[1];
        v12[1] = a5 * v14;
        v20 = a1[2];
        v10 = a1[3];
        v12[2] = v18;
        v12[3] = a5 * v17;
        v12 += 4;
        v13 = a5 * v19;
        a1 += 4;
        v14 = v20;
        --v15;
      }

      while (v15);
    }

    *v12 = v13;
    v12[1] = a5 * v14;
    v12[2] = a5 * v10;
    a2 = v12 + 3;
  }

  for (; a3; --a3)
  {
    v21 = *a1++;
    *a2++ = a5 * v21;
  }
}

void ConvertIntToFloat<PCMSInt32Swap,PCMFloat32>(unsigned int *a1, float *a2, int a3, float a4)
{
  if (a4 == 0.0)
  {
    a4 = scalbnf(1.0, -31);
  }

  v7 = a3 - 4;
  if (a3 >= 4)
  {
    v8 = bswap32(a1[1]);
    v9 = bswap32(a1[2]);
    v10 = bswap32(a1[3]);
    *a2 = a4 * bswap32(*a1);
    v11 = a2 + 1;
    a3 &= 3u;
    v12 = a4 * v8;
    a1 += 4;
    v13 = v9;
    if (v7 >= 4)
    {
      v14 = v7 >> 2;
      do
      {
        v15 = bswap32(*a1);
        *v11 = v12;
        v16 = bswap32(a1[1]);
        v11[1] = a4 * v13;
        v17 = bswap32(a1[2]);
        v11[2] = a4 * v10;
        v10 = bswap32(a1[3]);
        v11[3] = a4 * v15;
        v11 += 4;
        v12 = a4 * v16;
        a1 += 4;
        v13 = v17;
        --v14;
      }

      while (v14);
    }

    *v11 = v12;
    v11[1] = a4 * v13;
    v11[2] = a4 * v10;
    a2 = v11 + 3;
  }

  for (; a3; --a3)
  {
    v18 = *a1++;
    *a2++ = a4 * bswap32(v18);
  }
}

float *ConvertFloatToInt<PCMFloat32,PCMSInt32Native>(float *result, int *a2, unsigned int a3, int a4, float a5)
{
  v5 = (1 << (31 - a4));
  if (a4 == 32)
  {
    v5 = 0.0;
  }

  if (a5 == 0.0)
  {
    v6 = 2147483650.0;
  }

  else
  {
    v6 = a5;
    if (v5 != 0.0)
    {
      v6 = v6 / v5 * 2147483650.0;
    }
  }

  v7 = 32 - a4;
  v8 = 2147483650.0 - v5;
  if (a3 >= 8)
  {
    v9 = 0;
    v10 = v5 + *result * v6;
    v11 = v5 + result[1] * v6;
    v12 = v10 - (v10 < 0.0);
    if (v10 <= -2147483650.0)
    {
      v12 = 0x80000000;
    }

    if (v10 < v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    v14 = result[2];
    v15 = (a3 - 4) >> 2;
    do
    {
      v16 = &result[v9];
      v17 = v11 - (v11 < 0.0);
      if (v11 <= -2147483650.0)
      {
        v17 = 0x80000000;
      }

      v18 = v11 < v8;
      v19 = v16[4];
      v20 = v16[3];
      v21 = v5 + v14 * v6;
      if (v18)
      {
        v22 = v17;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      a2[v9] = v13 >> v7;
      v23 = v19;
      v24 = v5 + v20 * v6;
      v25 = v21 - (v21 < 0.0);
      if (v21 <= -2147483650.0)
      {
        v25 = 0x80000000;
      }

      if (v21 >= v8)
      {
        v25 = 0x7FFFFFFF;
      }

      v26 = &a2[v9];
      v27 = v22 >> v7;
      v28 = v16[5];
      v29 = v5 + v23 * v6;
      if (v24 > -2147483650.0)
      {
        v30 = v24 - (v24 < 0.0);
      }

      else
      {
        v30 = 0x80000000;
      }

      if (v24 >= v8)
      {
        v30 = 0x7FFFFFFF;
      }

      v26[1] = v27;
      v26[2] = v25 >> v7;
      if (v29 >= v8)
      {
        v13 = 0x7FFFFFFF;
      }

      else if (v29 <= -2147483650.0)
      {
        v13 = 0x80000000;
      }

      else
      {
        v13 = v29 - (v29 < 0.0);
      }

      v31 = v16[6];
      v11 = v5 + v28 * v6;
      v26[3] = v30 >> v7;
      v14 = v31;
      v9 += 4;
      --v15;
    }

    while (v15);
    v32 = &a2[v9 - 4];
    v33 = &result[v9 - 1];
    a3 &= 3u;
    v34 = result[v9 + 3];
    v35 = v5 + v14 * v6;
    if (v11 > -2147483650.0)
    {
      v36 = v11 - (v11 < 0.0);
    }

    else
    {
      v36 = 0x80000000;
    }

    a2[v9] = v13 >> v7;
    if (v11 < v8)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x7FFFFFFF;
    }

    v38 = v5 + v34 * v6;
    if (v35 > -2147483650.0)
    {
      v39 = v35 - (v35 < 0.0);
    }

    else
    {
      v39 = 0x80000000;
    }

    if (v35 < v8)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0x7FFFFFFF;
    }

    v32[5] = v37 >> v7;
    if (v38 >= v8)
    {
      v41 = 0x7FFFFFFF;
    }

    else if (v38 <= -2147483650.0)
    {
      v41 = 0x80000000;
    }

    else
    {
      v41 = v38 - (v38 < 0.0);
    }

    v32[6] = v40 >> v7;
    v32[7] = v41 >> v7;
    result = (v33 + 20);
    a2 = v32 + 8;
  }

  for (; a3; --a3)
  {
    v42 = v5 + *result * v6;
    if (v42 >= v8)
    {
      v43 = 0x7FFFFFFF;
    }

    else if (v42 <= -2147483650.0)
    {
      v43 = 0x80000000;
    }

    else
    {
      v43 = v42 - (v42 < 0.0);
    }

    *a2++ = v43 >> v7;
    ++result;
  }

  return result;
}

float *ConvertFloatToInt<PCMFloat32,PCMSInt32Swap>(float *result, _DWORD *a2, unsigned int a3, float a4)
{
  v4 = a4;
  v5 = a4 == 0.0;
  v6 = 2147483650.0;
  if (!v5)
  {
    v6 = v4;
  }

  if (a3 >= 8)
  {
    v7 = 0;
    v8 = *result * v6 + 0.0;
    v9 = result[1] * v6 + 0.0;
    v10 = v8 - (v8 < 0.0);
    if (v8 <= -2147483650.0)
    {
      v10 = 0x80000000;
    }

    if (v8 < 2147483650.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    v12 = result[2];
    v13 = (a3 - 4) >> 2;
    do
    {
      v14 = &result[v7];
      v15 = result[v7 + 3];
      v16 = v9 - (v9 < 0.0);
      if (v9 <= -2147483650.0)
      {
        v16 = 0x80000000;
      }

      if (v9 < 2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      a2[v7] = bswap32(v11);
      v18 = v12 * v6 + 0.0;
      v19 = v14[4];
      v20 = v18 - (v18 < 0.0);
      if (v18 <= -2147483650.0)
      {
        v20 = 0x80000000;
      }

      if (v18 >= 2147483650.0)
      {
        v20 = 0x7FFFFFFF;
      }

      v21 = &a2[v7];
      a2[v7 + 1] = bswap32(v17);
      v22 = v15 * v6 + 0.0;
      v23 = v14[5];
      v24 = v22 - (v22 < 0.0);
      if (v22 <= -2147483650.0)
      {
        v24 = 0x80000000;
      }

      if (v22 >= 2147483650.0)
      {
        v24 = 0x7FFFFFFF;
      }

      v21[2] = bswap32(v20);
      v25 = v19 * v6 + 0.0;
      if (v25 >= 2147483650.0)
      {
        v11 = 0x7FFFFFFF;
      }

      else if (v25 <= -2147483650.0)
      {
        v11 = 0x80000000;
      }

      else
      {
        v11 = v25 - (v25 < 0.0);
      }

      v26 = v14[6];
      v21[3] = bswap32(v24);
      v9 = v23 * v6 + 0.0;
      v12 = v26;
      v7 += 4;
      --v13;
    }

    while (v13);
    v27 = &a2[v7 - 4];
    v28 = &result[v7 - 1];
    a3 &= 3u;
    v29 = result[v7 + 3];
    if (v9 > -2147483650.0)
    {
      v30 = v9 - (v9 < 0.0);
    }

    else
    {
      v30 = 0x80000000;
    }

    if (v9 < 2147483650.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }

    a2[v7] = bswap32(v11);
    v32 = v12 * v6 + 0.0;
    if (v32 > -2147483650.0)
    {
      v33 = v32 - (v32 < 0.0);
    }

    else
    {
      v33 = 0x80000000;
    }

    if (v32 < 2147483650.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0x7FFFFFFF;
    }

    v27[5] = bswap32(v31);
    v35 = v29 * v6 + 0.0;
    if (v35 >= 2147483650.0)
    {
      v36 = 0x7FFFFFFF;
    }

    else if (v35 <= -2147483650.0)
    {
      v36 = 0x80000000;
    }

    else
    {
      v36 = v35 - (v35 < 0.0);
    }

    v27[6] = bswap32(v34);
    v27[7] = bswap32(v36);
    result = (v28 + 20);
    a2 = v27 + 8;
  }

  for (; a3; --a3)
  {
    v37 = *result * v6 + 0.0;
    if (v37 >= 2147483650.0)
    {
      v38 = 0x7FFFFFFF;
    }

    else if (v37 <= -2147483650.0)
    {
      v38 = 0x80000000;
    }

    else
    {
      v38 = v37 - (v37 < 0.0);
    }

    *a2++ = bswap32(v38);
    ++result;
  }

  return result;
}

void StereoDeinterleaveInt824ToFloat32_Portable(const DSPComplex *a1, float *a2, float *a3, vDSP_Length __N)
{
  v4 = __N;
  v7.realp = a2;
  v7.imagp = a3;
  vDSP_ctoz(a1, 2, &v7, 1, __N);
  ConvertIntToFloat<PCMSInt32Native,PCMFloat32>(a2, a2, v4, 25, 0.0);
  ConvertIntToFloat<PCMSInt32Native,PCMFloat32>(a3, a3, v4, 25, 0.0);
}

float *StereoInterleaveFloat32ToInt824_Portable(float *a1, float *a2, DSPComplex *a3, vDSP_Length __N)
{
  v4 = __N;
  v7.realp = a1;
  v7.imagp = a2;
  vDSP_ztoc(&v7, 1, a3, 2, __N);
  return ConvertFloatToInt<PCMFloat32,PCMSInt32Native>(a3, a3, 2 * v4, 25, 0.0);
}

float *Float32ToNativeInt24_Portable(float *result, uint64_t a2, unsigned int a3)
{
  if ((a2 & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      do
      {
        v4 = *result * 2147483650.0 + 128.0;
        v5 = result[1] * 2147483650.0 + 128.0;
        v6 = (v4 - (v4 < 0.0)) >> 8;
        if (v4 <= -2147483650.0)
        {
          v6 = 0x800000;
        }

        if (v4 >= 2147483520.0)
        {
          v6 = 0x7FFFFF;
        }

        if (v5 >= 2147483520.0)
        {
          v7 = 0x7FFFFF;
        }

        else
        {
          v7 = (v5 - (v5 < 0.0)) >> 8;
          if (v5 <= -2147483650.0)
          {
            v7 = -8388608;
          }
        }

        v8 = result[2] * 2147483650.0 + 128.0;
        if (v8 >= 2147483520.0)
        {
          v9 = 0x7FFFFF;
        }

        else
        {
          v9 = (v8 - (v8 < 0.0)) >> 8;
          if (v8 <= -2147483650.0)
          {
            v9 = -8388608;
          }
        }

        v10 = result[3] * 2147483650.0 + 128.0;
        if (v10 >= 2147483520.0)
        {
          v11 = 2147483392;
        }

        else if (v10 <= -2147483650.0)
        {
          v11 = 0x80000000;
        }

        else
        {
          v11 = (v10 - (v10 < 0.0)) & 0xFFFFFF00;
        }

        *a2 = v6 | (v7 << 24);
        *(a2 + 4) = (v7 >> 8) | (v9 << 16);
        *(a2 + 8) = v11 | BYTE2(v9);
        result += 4;
        a2 += 12;
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v12 = *result++;
    v13 = v12 * 2147483650.0 + 128.0;
    if (v13 >= 2147483520.0)
    {
      v14 = 0x7FFFFF;
    }

    else if (v13 <= -2147483650.0)
    {
      v14 = -8388608;
    }

    else
    {
      v14 = (v13 - (v13 < 0.0)) >> 8;
    }

    *a2 = v14;
    *(a2 + 2) = BYTE2(v14);
    a2 += 3;
  }

  return result;
}

float *Float32ToSwapInt24_Portable(float *result, int8x8_t *a2, unsigned int a3)
{
  if ((a2 & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      do
      {
        v4 = *result * 2147483650.0 + 128.0;
        if (v4 >= 2147483520.0)
        {
          v5 = 0x7FFFFF;
        }

        else if (v4 <= -2147483650.0)
        {
          v5 = -8388608;
        }

        else
        {
          v5 = (v4 - (v4 < 0.0)) >> 8;
        }

        v6 = result[1] * 2147483650.0 + 128.0;
        if (v6 >= 2147483520.0)
        {
          v7 = 0x7FFFFF;
        }

        else if (v6 <= -2147483650.0)
        {
          v7 = -8388608;
        }

        else
        {
          v7 = (v6 - (v6 < 0.0)) >> 8;
        }

        v8 = result[2] * 2147483650.0 + 128.0;
        if (v8 >= 2147483520.0)
        {
          v9 = 0x7FFFFF;
        }

        else if (v8 <= -2147483650.0)
        {
          v9 = -8388608;
        }

        else
        {
          v9 = (v8 - (v8 < 0.0)) >> 8;
        }

        v10 = result[3] * 2147483650.0 + 128.0;
        v11 = (v10 - (v10 < 0.0)) >> 8;
        if (v10 <= -2147483650.0)
        {
          v11 = 0x800000;
        }

        if (v10 >= 2147483520.0)
        {
          v11 = 0x7FFFFF;
        }

        v12 = vshl_u32(__PAIR64__(v7, v5), 0x800000010);
        v13.i32[0] = vdup_lane_s32(v12, 1).u32[0];
        v13.i32[1] = v9 << 16;
        *a2 = vorr_s8(vorr_s8(vorr_s8(vand_s8(v12, 0xFF0000FF0000), vand_s8(vshl_u32(__PAIR64__(v7, v5), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vand_s8(__PAIR64__(v9, v5), 0xFF00000000FF00)), vand_s8(v13, 0xFF000000FF000000));
        a2[1].i32[0] = bswap32(v11) & 0xFFFFFF00 | v9;
        result += 4;
        a2 = (a2 + 12);
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v14 = *result++;
    v15 = v14 * 2147483650.0 + 128.0;
    if (v15 >= 2147483520.0)
    {
      v16 = 0x7FFFFF;
    }

    else if (v15 <= -2147483650.0)
    {
      v16 = -8388608;
    }

    else
    {
      v16 = (v15 - (v15 < 0.0)) >> 8;
    }

    a2->i8[0] = BYTE2(v16);
    a2->i8[1] = BYTE1(v16);
    a2->i8[2] = v16;
    a2 = (a2 + 3);
  }

  return result;
}

float32_t NativeInt24ToFloat32_Portable(uint64_t a1, float32x4_t *a2, unsigned int a3, float32x4_t a4)
{
  if ((a1 & 3) == 0)
  {
    if (a3 >= 4)
    {
      v4 = a3 >> 2;
      a4.i64[0] = 0x3000000030000000;
      a4.i64[1] = 0x3000000030000000;
      do
      {
        v5.i32[0] = *a1 << 8;
        v5.i32[1] = (*a1 >> 16) & 0xFFFFFF00;
        v5.i32[2] = (*(a1 + 4) >> 8) & 0xFFFFFF00;
        v5.i32[3] = *(a1 + 8) & 0xFFFFFF00;
        *a2++ = vmulq_f32(vcvtq_f32_s32(v5), a4);
        a1 += 12;
        --v4;
      }

      while (v4);
    }

    a3 &= 3u;
  }

  if (a3)
  {
    v6 = (a1 + 2);
    do
    {
      a4.f32[0] = vcvts_n_f32_s32((*v6 << 24) | (*(v6 - 1) << 16) | (*(v6 - 2) << 8), 0x1FuLL);
      a2->i32[0] = a4.i32[0];
      a2 = (a2 + 4);
      v6 += 3;
      --a3;
    }

    while (a3);
  }

  return a4.f32[0];
}

float32_t SwapInt24ToFloat32_Portable(PCMSInt24Swap *this, float32x4_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6 = a3;
  v8 = this;
  if ((this & 3) == 0)
  {
    if (a3 >= 4)
    {
      v9 = a3 >> 2;
      do
      {
        --v9;
        v15 = 0;
        *v16 = 0;
        PCMSInt24Swap::load4(v8, &v16[4], v16, &v15 + 1, &v15, a6);
        v10.i64[0] = __PAIR64__(*v16, *&v16[4]);
        v10.i64[1] = __PAIR64__(v15, HIDWORD(v15));
        v11.i64[0] = 0x3000000030000000;
        v11.i64[1] = 0x3000000030000000;
        v12 = vmulq_f32(vcvtq_f32_s32(v10), v11);
        *a2++ = v12;
        v8 = (v8 + 12);
      }

      while (v9);
    }

    v6 &= 3u;
  }

  for (; v6; --v6)
  {
    v13 = (*v8 << 24) | (*(v8 + 1) << 16) | (*(v8 + 2) << 8);
    v8 = (v8 + 3);
    v12.f32[0] = vcvts_n_f32_s32(v13, 0x1FuLL);
    a2->i32[0] = v12.i32[0];
    a2 = (a2 + 4);
  }

  return v12.f32[0];
}

_DWORD *PCMSInt24Swap::load4(_DWORD *this, unsigned __int8 *a2, int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  *a2 = *this;
  *a3 = this[1];
  v6 = this[2];
  *a4 = v6;
  *a5 = v6 & 0xFF0000 | (BYTE1(v6) << 24) | (HIBYTE(v6) << 8);
  *a4 = (*a3 >> 8) & 0xFF0000 | (BYTE2(*a3) << 24) | (*a4 << 8);
  v7 = *a3 & 0xFF00;
  *a3 = *a3 & 0xFF00 | (a2[3] << 24) | (*a3 << 16);
  *a2 = bswap32(*a2 & 0xFFFFFF);
  return this;
}

uint64_t NativeInt24ToNativeInt16_Portable(uint64_t result, int8x8_t *a2, unsigned int a3)
{
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      v4 = vneg_f32(0xFFFF0000FFFF0000);
      do
      {
        v5.i32[0] = *result << 8;
        v5.i32[1] = *(result + 4) >> 8;
        v6.i32[0] = *result >> 16;
        v6.i32[1] = *(result + 8);
        v7 = vhadd_s32(vshr_n_s32(v5, 0xFuLL), 0x100000001);
        v8 = vcgt_s32(v7, 0x7F0000007FLL);
        v9 = vhadd_s32(vshr_n_s32(v6, 0xFuLL), 0x100000001);
        *a2++ = vorr_s8(vorr_s8(vbsl_s8(vcgt_s32(v9, 0x7F0000007FLL), v4, vshl_n_s32(v9, 0x10uLL)), vand_s8(v8, 0x7F0000007FLL)), vand_s8(vbic_s8(v7, v8), 0xFFFF0000FFFFLL));
        result += 12;
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  if (a3)
  {
    v10 = (result + 2);
    do
    {
      v11 = ((((*v10 << 24) | (*(v10 - 1) << 16) | (*(v10 - 2) << 8)) >> 15) + 1) >> 1;
      if (v11 >= 0x7FFF)
      {
        LOWORD(v11) = 0x7FFF;
      }

      a2->i16[0] = v11;
      a2 = (a2 + 2);
      v10 += 3;
      --a3;
    }

    while (a3);
  }

  return result;
}

unsigned __int8 *SwapInt24ToNativeInt16_Portable(unsigned __int8 *this, int8x8_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6 = a3;
  v7 = a2;
  v8 = this;
  if (((a2 | this) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v9 = a3 >> 2;
      v10 = vneg_f32(0xFFFF0000FFFF0000);
      do
      {
        --v9;
        v15 = 0;
        *v16 = 0;
        this = PCMSInt24Swap::load4(v8, &v16[4], v16, &v15 + 1, &v15, a6);
        v11 = vhadd_s32(vshr_n_s32(__PAIR64__(HIDWORD(v15), *&v16[4]), 0xFuLL), 0x100000001);
        v12 = vcgt_s32(v11, 0x7F0000007FLL);
        v13 = vhadd_s32(vshr_n_s32(__PAIR64__(v15, *v16), 0xFuLL), 0x100000001);
        *v7++ = vorr_s8(vorr_s8(vbsl_s8(vcgt_s32(v13, 0x7F0000007FLL), v10, vshl_n_s32(v13, 0x10uLL)), vand_s8(v12, 0x7F0000007FLL)), vand_s8(vbic_s8(v11, v12), 0xFFFF0000FFFFLL));
        v8 += 12;
      }

      while (v9);
    }

    v6 &= 3u;
  }

  for (; v6; --v6)
  {
    v14 = ((((*v8 << 24) | (v8[1] << 16) | (v8[2] << 8)) >> 15) + 1) >> 1;
    if (v14 >= 0x7FFF)
    {
      LOWORD(v14) = 0x7FFF;
    }

    v7->i16[0] = v14;
    v7 = (v7 + 2);
    v8 += 3;
  }

  return this;
}

unsigned int *NativeInt16ToNativeInt24_Portable(unsigned int *result, uint64_t a2, unsigned int a3)
{
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      do
      {
        v4 = *result;
        v5 = result[1];
        result += 2;
        *a2 = v4 << 8;
        *(a2 + 4) = HIWORD(v4) | (v5 << 24);
        *(a2 + 8) = v5 & 0xFFFF0000 | BYTE1(v5);
        a2 += 12;
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v6 = *result;
    result = (result + 2);
    *a2 = 0;
    *(a2 + 1) = v6;
    a2 += 3;
  }

  return result;
}

int *NativeInt16ToSwapInt24_Portable(int *result, int8x8_t *a2, unsigned int a3)
{
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      do
      {
        v4 = *result;
        v5 = result[1];
        result += 2;
        v6.i32[0] = v4 << 8;
        v6.i32[1] = (v4 >> 8) & 0xFFFFFF00;
        v7 = vshl_u32(v6, 0x800000010);
        v8 = vshl_u32(v6, 0xFFFFFFF8FFFFFFF0);
        v6.i32[1] = v5 << 8;
        v9.i32[0] = vdup_lane_s32(v7, 1).u32[0] & 0xFF00FFFF;
        v9.i32[1] = v5 << 24;
        *a2 = vorr_s8(vorr_s8(vorr_s8(vand_s8(v7, 0xFF0000FF0000), vand_s8(v8, 0xFF000000FFLL)), vand_s8(v6, 0xFF00000000FF00)), v9);
        a2[1].i32[0] = bswap32((v5 >> 8) & 0xFFFF00);
        a2 = (a2 + 12);
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v10 = *result;
    result = (result + 2);
    a2->i8[0] = HIBYTE(v10);
    a2->i8[1] = v10;
    a2->i8[2] = 0;
    a2 = (a2 + 3);
  }

  return result;
}

uint64_t NativeInt16ToUInt8_Portable(uint64_t result, _BYTE *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *(result + 1);
    result += 2;
    *a2++ = v3 ^ 0x80;
  }

  return result;
}

uint64_t NativeInt16ToSInt8_Portable(uint64_t result, _BYTE *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *(result + 1);
    result += 2;
    *a2++ = v3;
  }

  return result;
}

float *Float32ToUInt8(float *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = *result * 2147483650.0 + 8388608.0;
    v4 = result[1] * 2147483650.0 + 8388608.0;
    if (v3 > -2147483650.0)
    {
      v5 = v3 - (v3 < 0.0);
    }

    else
    {
      HIBYTE(v5) = 0x80;
    }

    if (v3 < 2139095040.0)
    {
      HIBYTE(v6) = HIBYTE(v5);
    }

    else
    {
      HIBYTE(v6) = 127;
    }

    v7 = result[2];
    v8 = (a3 - 4) >> 2;
    v9 = result + 3;
    do
    {
      v10 = a2;
      v11 = v9;
      v12 = *v9;
      v13 = v7 * 2147483650.0 + 8388608.0;
      v14 = ((v4 - (v4 < 0.0)) >> 24) ^ 0xFFFFFF80;
      if (v4 <= -2147483650.0)
      {
        LOBYTE(v14) = 0;
      }

      if (v4 >= 2139095040.0)
      {
        LOBYTE(v14) = -1;
      }

      *a2 = HIBYTE(v6) ^ 0x80;
      v15 = v11[1];
      v16 = v12 * 2147483650.0 + 8388608.0;
      v17 = ((v13 - (v13 < 0.0)) >> 24) ^ 0xFFFFFF80;
      if (v13 <= -2147483650.0)
      {
        LOBYTE(v17) = 0;
      }

      if (v13 >= 2139095040.0)
      {
        LOBYTE(v17) = -1;
      }

      a2[1] = v14;
      v18 = v11[2];
      v19 = v15 * 2147483650.0 + 8388608.0;
      v20 = ((v16 - (v16 < 0.0)) >> 24) ^ 0xFFFFFF80;
      if (v16 <= -2147483650.0)
      {
        LOBYTE(v20) = 0;
      }

      if (v16 >= 2139095040.0)
      {
        LOBYTE(v20) = -1;
      }

      a2[2] = v17;
      if (v19 >= 2139095040.0)
      {
        HIBYTE(v6) = 127;
      }

      else if (v19 <= -2147483650.0)
      {
        HIBYTE(v6) = 0x80;
      }

      else
      {
        v6 = v19 - (v19 < 0.0);
      }

      v21 = v11[3];
      v4 = v18 * 2147483650.0 + 8388608.0;
      a2[3] = v20;
      v9 = v11 + 4;
      a2 += 4;
      v7 = v21;
      --v8;
    }

    while (v8);
    a3 &= 3u;
    v22 = *v9;
    v23 = v7 * 2147483650.0 + 8388608.0;
    v24 = ((v4 - (v4 < 0.0)) >> 24) ^ 0xFFFFFF80;
    if (v4 <= -2147483650.0)
    {
      LOBYTE(v24) = 0;
    }

    if (v4 >= 2139095040.0)
    {
      LOBYTE(v24) = -1;
    }

    *a2 = HIBYTE(v6) ^ 0x80;
    v25 = v22 * 2147483650.0 + 8388608.0;
    v26 = ((v23 - (v23 < 0.0)) >> 24) ^ 0xFFFFFF80;
    if (v23 <= -2147483650.0)
    {
      LOBYTE(v26) = 0;
    }

    if (v23 < 2139095040.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = -1;
    }

    v10[5] = v24;
    if (v25 >= 2139095040.0)
    {
      LOBYTE(v28) = -1;
    }

    else if (v25 <= -2147483650.0)
    {
      LOBYTE(v28) = 0;
    }

    else
    {
      v28 = ((v25 - (v25 < 0.0)) >> 24) ^ 0xFFFFFF80;
    }

    v10[6] = v27;
    v10[7] = v28;
    result = v11 + 5;
    a2 = v10 + 8;
  }

  for (; a3; --a3)
  {
    v29 = *result * 2147483650.0 + 8388608.0;
    if (v29 >= 2139095040.0)
    {
      LOBYTE(v30) = -1;
    }

    else if (v29 <= -2147483650.0)
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = ((v29 - (v29 < 0.0)) >> 24) ^ 0xFFFFFF80;
    }

    *a2++ = v30;
    ++result;
  }

  return result;
}

float *Float32ToSInt8(float *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = *result * 2147483650.0 + 8388608.0;
    v4 = result[1] * 2147483650.0 + 8388608.0;
    if (v3 > -2147483650.0)
    {
      v5 = v3 - (v3 < 0.0);
    }

    else
    {
      HIBYTE(v5) = 0x80;
    }

    if (v3 < 2139095040.0)
    {
      HIBYTE(v6) = HIBYTE(v5);
    }

    else
    {
      HIBYTE(v6) = 127;
    }

    v7 = result[2];
    v8 = (a3 - 4) >> 2;
    v9 = result + 3;
    do
    {
      v10 = a2;
      v11 = v9;
      v12 = *v9;
      v13 = v7 * 2147483650.0 + 8388608.0;
      v14 = (v4 - (v4 < 0.0)) >> 24;
      if (v4 <= -2147483650.0)
      {
        LOBYTE(v14) = 0x80;
      }

      if (v4 >= 2139095040.0)
      {
        LOBYTE(v14) = 127;
      }

      *a2 = HIBYTE(v6);
      v15 = v11[1];
      v16 = v12 * 2147483650.0 + 8388608.0;
      v17 = (v13 - (v13 < 0.0)) >> 24;
      if (v13 <= -2147483650.0)
      {
        LOBYTE(v17) = 0x80;
      }

      if (v13 >= 2139095040.0)
      {
        LOBYTE(v17) = 127;
      }

      a2[1] = v14;
      v18 = v11[2];
      v19 = v15 * 2147483650.0 + 8388608.0;
      v20 = (v16 - (v16 < 0.0)) >> 24;
      if (v16 <= -2147483650.0)
      {
        LOBYTE(v20) = 0x80;
      }

      if (v16 >= 2139095040.0)
      {
        LOBYTE(v20) = 127;
      }

      a2[2] = v17;
      if (v19 >= 2139095040.0)
      {
        HIBYTE(v6) = 127;
      }

      else if (v19 <= -2147483650.0)
      {
        HIBYTE(v6) = 0x80;
      }

      else
      {
        v6 = v19 - (v19 < 0.0);
      }

      v21 = v11[3];
      v4 = v18 * 2147483650.0 + 8388608.0;
      a2[3] = v20;
      v9 = v11 + 4;
      a2 += 4;
      v7 = v21;
      --v8;
    }

    while (v8);
    a3 &= 3u;
    v22 = *v9;
    v23 = v7 * 2147483650.0 + 8388608.0;
    if (v4 > -2147483650.0)
    {
      v24 = (v4 - (v4 < 0.0)) >> 24;
    }

    else
    {
      LOBYTE(v24) = 0x80;
    }

    if (v4 >= 2139095040.0)
    {
      LOBYTE(v24) = 127;
    }

    *a2 = HIBYTE(v6);
    v25 = v22 * 2147483650.0 + 8388608.0;
    if (v23 > -2147483650.0)
    {
      v26 = (v23 - (v23 < 0.0)) >> 24;
    }

    else
    {
      LOBYTE(v26) = 0x80;
    }

    if (v23 < 2139095040.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 127;
    }

    v10[5] = v24;
    if (v25 >= 2139095040.0)
    {
      LOBYTE(v28) = 127;
    }

    else if (v25 <= -2147483650.0)
    {
      LOBYTE(v28) = 0x80;
    }

    else
    {
      v28 = (v25 - (v25 < 0.0)) >> 24;
    }

    v10[6] = v27;
    v10[7] = v28;
    result = v11 + 5;
    a2 = v10 + 8;
  }

  for (; a3; --a3)
  {
    v29 = *result * 2147483650.0 + 8388608.0;
    if (v29 >= 2139095040.0)
    {
      LOBYTE(v30) = 127;
    }

    else if (v29 <= -2147483650.0)
    {
      LOBYTE(v30) = 0x80;
    }

    else
    {
      v30 = (v29 - (v29 < 0.0)) >> 24;
    }

    *a2++ = v30;
    ++result;
  }

  return result;
}

void UInt8ToFloat32(char *a1, float *a2, int a3)
{
  v6 = scalbnf(1.0, -7);
  v7 = a3 - 4;
  if (a3 >= 4)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    *a2 = v6 * (*a1 ^ 0x80);
    v11 = a2 + 1;
    a3 &= 3u;
    v12 = (v9 ^ 0x80);
    v13 = v10 ^ 0x80;
    v14 = v6 * (v8 ^ 0x80);
    a1 += 4;
    v15 = v12;
    if (v7 >= 4)
    {
      v16 = v7 >> 2;
      do
      {
        v17 = (*a1 ^ 0x80);
        v18 = v13;
        *v11 = v14;
        v19 = a1[1];
        v20 = v17;
        v11[1] = v6 * v15;
        LOBYTE(v17) = a1[2];
        v11[2] = v6 * v18;
        v21 = a1[3];
        v11[3] = v6 * v20;
        v11 += 4;
        v22 = (v19 ^ 0x80);
        v13 = v21 ^ 0x80;
        v14 = v6 * v22;
        a1 += 4;
        v15 = (v17 ^ 0x80);
        --v16;
      }

      while (v16);
    }

    *v11 = v14;
    v11[1] = v6 * v15;
    v11[2] = v6 * v13;
    a2 = v11 + 3;
  }

  for (; a3; --a3)
  {
    v23 = *a1++;
    *a2++ = v6 * (v23 ^ 0x80);
  }
}

void SInt8ToFloat32(char *a1, float *a2, int a3)
{
  v6 = scalbnf(1.0, -7);
  v7 = a3 - 4;
  if (a3 >= 4)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    *a2 = v6 * *a1;
    v11 = a2 + 1;
    a3 &= 3u;
    v12 = v6 * v8;
    a1 += 4;
    v13 = v9;
    if (v7 >= 4)
    {
      v14 = v7 >> 2;
      do
      {
        v15 = *a1;
        *v11 = v12;
        v16 = a1[1];
        v17 = v15;
        v11[1] = v6 * v13;
        v18 = a1[2];
        v11[2] = v6 * v10;
        v10 = a1[3];
        v11[3] = v6 * v17;
        v11 += 4;
        v12 = v6 * v16;
        a1 += 4;
        v13 = v18;
        --v14;
      }

      while (v14);
    }

    *v11 = v12;
    v11[1] = v6 * v13;
    v11[2] = v6 * v10;
    a2 = v11 + 3;
  }

  for (; a3; --a3)
  {
    v19 = *a1++;
    *a2++ = v6 * v19;
  }
}

unsigned __int8 *UInt8ToNativeInt16_Portable(unsigned __int8 *result, uint64_t a2, unsigned int a3)
{
  if (((a2 | result) & 3) != 0)
  {
    for (; a3; --a3)
    {
      v3 = *result++;
      *a2 = (v3 ^ 0x80) << 8;
      a2 += 2;
    }
  }

  else
  {
    if (a3 >= 4)
    {
      v4 = a3 >> 2;
      do
      {
        v5 = *result;
        result += 4;
        *a2 = ((v5 ^ 0x80808080) << 16) & 0xFF000000 | ((v5 ^ 0x80) << 8);
        *(a2 + 4) = ((v5 ^ 0x80808080) >> 8) & 0xFF00 | (v5 ^ 0x80808080) & 0xFF000000;
        a2 += 8;
        --v4;
      }

      while (v4);
    }

    v6 = a3 & 3;
    if ((a3 & 3) != 0)
    {
      do
      {
        v7 = *result++;
        *a2 = (v7 ^ 0x80) << 8;
        a2 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

unsigned __int8 *SInt8ToNativeInt16_Portable(unsigned __int8 *result, uint64_t a2, unsigned int a3)
{
  if (((a2 | result) & 3) != 0)
  {
    for (; a3; --a3)
    {
      v3 = *result++;
      *a2 = v3 << 8;
      a2 += 2;
    }
  }

  else
  {
    if (a3 >= 4)
    {
      v4 = a3 >> 2;
      do
      {
        v5 = *result;
        result += 4;
        *a2 = (v5 << 16) & 0xFF000000 | (v5 << 8);
        *(a2 + 4) = (v5 >> 8) & 0xFF00 | v5 & 0xFF000000;
        a2 += 8;
        --v4;
      }

      while (v4);
    }

    v6 = a3 & 3;
    if ((a3 & 3) != 0)
    {
      do
      {
        v7 = *result++;
        *a2 = v7 << 8;
        a2 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

unsigned int *SwapPCM64_Portable(unsigned int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    do
    {
      v4 = *result;
      v5 = result[2];
      v6 = result[3];
      *a2 = bswap32(result[1]);
      a2[1] = bswap32(v4);
      a2[2] = bswap32(v6);
      a2[3] = bswap32(v5);
      result += 4;
      a2 += 4;
      --v3;
    }

    while (v3);
  }

  if (a3)
  {
    v7 = *result;
    *a2 = bswap32(result[1]);
    a2[1] = bswap32(v7);
  }

  return result;
}

unsigned int *SwapPCM32_Portable(unsigned int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = result[1];
      v5 = result[2];
      v6 = result[3];
      *a2 = bswap32(*result);
      a2[1] = bswap32(v4);
      a2[2] = bswap32(v5);
      a2[3] = bswap32(v6);
      result += 4;
      a2 += 4;
      --v3;
    }

    while (v3);
  }

  v7 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v8 = *result++;
      *a2++ = bswap32(v8);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t SwapPCM24_Portable(uint64_t result, int8x8_t *a2, unsigned int a3)
{
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v3 = a3 >> 2;
      do
      {
        v4 = *(result + 8);
        v5 = *(result + 4) >> 8;
        v6.i32[0] = *result << 8;
        v6.i32[1] = *result >> 16;
        v7 = vshr_n_s32(v6, 8uLL);
        v8 = vshl_u32(v7, 0x800000010);
        v9 = vshl_u32(v7, 0xFFFFFFF8FFFFFFF0);
        v7.i32[1] = v5 >> 8;
        v10.i32[0] = vdup_lane_s32(v8, 1).u32[0];
        v10.i32[1] = v5 >> 8 << 16;
        *a2 = vorr_s8(vorr_s8(vorr_s8(vand_s8(v8, 0xFF0000FF0000), vand_s8(v9, 0xFF000000FFLL)), vand_s8(v7, 0xFF00000000FF00)), vand_s8(v10, 0xFF000000FF000000));
        a2[1].i32[0] = BYTE1(v5) | (bswap32(v4) << 8);
        result += 12;
        a2 = (a2 + 12);
        --v3;
      }

      while (v3);
    }

    a3 &= 3u;
  }

  if (a3)
  {
    v11 = (result + 2);
    do
    {
      v12 = ((*v11 << 24) | (*(v11 - 1) << 16) | (*(v11 - 2) << 8)) >> 8;
      a2->i8[0] = BYTE2(v12);
      a2->i8[1] = BYTE1(v12);
      a2->i8[2] = v12;
      a2 = (a2 + 3);
      v11 += 3;
      --a3;
    }

    while (a3);
  }

  return result;
}

unsigned __int16 *SwapPCM16_Portable(unsigned __int16 *result, _WORD *a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = result[1];
      v5 = result[2];
      v6 = result[3];
      *a2 = bswap32(*result) >> 16;
      a2[1] = bswap32(v4) >> 16;
      a2[2] = bswap32(v5) >> 16;
      a2[3] = bswap32(v6) >> 16;
      result += 4;
      a2 += 4;
      --v3;
    }

    while (v3);
  }

  v7 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v8 = *result++;
      *a2++ = bswap32(v8) >> 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x2_t *StereoInterleave32_Portable(float32x2_t *result, float32x2_t *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = a4 >> 1;
    do
    {
      v5 = *result++;
      v7.val[0] = v5;
      v6 = *a2++;
      v7.val[1] = v6;
      vst2_f32(a3, v7);
      a3 += 16;
      --v4;
    }

    while (v4);
  }

  if (a4)
  {
    *a3 = result->i32[0];
    *(a3 + 4) = a2->i32[0];
  }

  return result;
}

__int16 *UpmixMonoToStereoInterleaved16_Portable(__int16 *result, _WORD *a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    do
    {
      v4 = *result;
      v5 = result[1];
      result += 2;
      *a2 = v4;
      a2[1] = v4;
      a2[2] = v5;
      a2[3] = v5;
      a2 += 4;
      --v3;
    }

    while (v3);
  }

  if (a3)
  {
    v6 = *result;
    a2[1] = *result;
    *a2 = v6;
  }

  return result;
}

float32x2_t *UpmixMonoToStereoInterleaved32_Portable(float32x2_t *result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    do
    {
      v4 = *result++;
      v6.val[0] = v4;
      v6.val[1] = v4;
      vst2_f32(a2, v6);
      a2 += 16;
      --v3;
    }

    while (v3);
  }

  if (a3)
  {
    v5 = result->i32[0];
    *a2 = result->i32[0];
    *(a2 + 4) = v5;
  }

  return result;
}

__int16 *DownmixStereoInterleavedInt16ToMono_Portable(__int16 *result, _WORD *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    if ((a3 & 1) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v3 = a3 >> 1;
  do
  {
    v4 = result;
    v5 = (23170 * (result[1] + *result)) >> 15;
    if ((v5 & 0x80000000) != 0)
    {
      if (v5 < 0xFFFF8000)
      {
        LOWORD(v5) = 0x8000;
      }
    }

    else if (v5 >> 15)
    {
      LOWORD(v5) = 0x7FFF;
    }

    v6 = result[2];
    v7 = result[3];
    *a2 = v5;
    v8 = (23170 * (v7 + v6)) >> 15;
    if ((v8 & 0x80000000) != 0)
    {
      if (v8 < 0xFFFF8000)
      {
        LOWORD(v8) = 0x8000;
      }
    }

    else if (v8 >> 15)
    {
      LOWORD(v8) = 0x7FFF;
    }

    a2[1] = v8;
    a2 += 2;
    result += 4;
    --v3;
  }

  while (v3);
  result = v4 + 4;
  if (a3)
  {
LABEL_17:
    v9 = (23170 * (result[1] + *result)) >> 15;
    if ((v9 & 0x80000000) != 0)
    {
      if (v9 < 0xFFFF8000)
      {
        LOWORD(v9) = 0x8000;
      }
    }

    else if (v9 >> 15)
    {
      LOWORD(v9) = 0x7FFF;
    }

    *a2 = v9;
  }

  return result;
}

int *DownmixStereoInterleavedInt32ToMono_Portable(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    if (a3)
    {
      goto LABEL_19;
    }

    return result;
  }

  v3 = a3 >> 1;
  do
  {
    v4 = result;
    v5 = 1518500250 * (result[1] + *result);
    v6 = v5 >> 31;
    if (v5 >> 31 < 0)
    {
      if (v6 < 0xFFFFFFFF80000000)
      {
        LODWORD(v7) = 0x80000000;
        goto LABEL_11;
      }
    }

    else if (v6 >> 31)
    {
      LODWORD(v7) = 0x7FFFFFFF;
      goto LABEL_11;
    }

    v7 = v5 >> 31;
LABEL_11:
    v8 = result[2];
    v9 = result[3];
    *a2 = v7;
    v10 = 1518500250 * (v9 + v8);
    v11 = v10 >> 31;
    if (v10 >> 31 < 0)
    {
      if (v11 < 0xFFFFFFFF80000000)
      {
        LODWORD(v12) = 0x80000000;
        goto LABEL_17;
      }
    }

    else if (v11 >> 31)
    {
      LODWORD(v12) = 0x7FFFFFFF;
      goto LABEL_17;
    }

    v12 = v10 >> 31;
LABEL_17:
    a2[1] = v12;
    a2 += 2;
    result += 4;
    --v3;
  }

  while (v3);
  result = v4 + 4;
  if (a3)
  {
LABEL_19:
    v13 = 1518500250 * (result[1] + *result);
    v14 = v13 >> 31;
    if (v13 >> 31 < 0)
    {
      if (v14 >= 0xFFFFFFFF80000000)
      {
        goto LABEL_24;
      }

      LODWORD(v15) = 0x80000000;
    }

    else
    {
      if (v14 >> 31)
      {
        LODWORD(v15) = 0x7FFFFFFF;
        goto LABEL_25;
      }

LABEL_24:
      v15 = v13 >> 31;
    }

LABEL_25:
    *a2 = v15;
  }

  return result;
}

float DownmixStereoInterleavedFloat32ToMono_Portable(uint64_t a1, float32x2_t *a2, unsigned int a3, double a4)
{
  if (a3 < 2)
  {
    if ((a3 & 1) == 0)
    {
      return *&a4;
    }

    goto LABEL_7;
  }

  v4 = a3 >> 1;
  a4 = COERCE_DOUBLE(vdup_n_s32(0x3F3504F3u));
  do
  {
    v5.i32[0] = *a1;
    v6 = a1 + 16;
    v5.i32[1] = *(a1 + 12);
    *a2++ = vmul_f32(vadd_f32(*(a1 + 4), v5), *&a4);
    a1 += 16;
    --v4;
  }

  while (v4);
  a1 = v6;
  if (a3)
  {
LABEL_7:
    *&a4 = (*a1 + *(a1 + 4)) * 0.70711;
    a2->i32[0] = LODWORD(a4);
  }

  return *&a4;
}

unsigned __int16 *NativeInt16ToNativeInt32_Portable(unsigned __int16 *result, __n128 *a2, unsigned int a3, int a4, double a5, double a6, int32x4_t a7)
{
  v7 = 16 - a4;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v8 = a3 >> 2;
      v9.i64[0] = 0xFFFF0000FFFF0000;
      v9.i64[1] = 0xFFFF0000FFFF0000;
      v10 = vnegq_s32(vdupq_n_s32(v7));
      do
      {
        v11 = *result;
        result += 4;
        a7.i64[0] = v11;
        v12 = vzip1q_s32(a7, a7);
        a7 = vshlq_s32(vtrn2q_s32(vrev64q_s32(vshlq_n_s32(v12, 0x10uLL)), vandq_s8(v12, v9)), v10);
        *a2++ = a7;
        --v8;
      }

      while (v8);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v13 = *result++;
    a2->n128_u32[0] = v13 << 16 >> v7;
    a2 = (a2 + 4);
  }

  return result;
}

int8x8_t *SwapInt16ToNativeInt32_Portable(int8x8_t *result, int32x4_t *a2, unsigned int a3, int a4)
{
  v4 = 16 - a4;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v5 = a3 >> 2;
      v6 = vnegq_s32(vdupq_n_s32(v4));
      do
      {
        *a2++ = vshlq_s32(vshll_n_s16(vrev16_s8(*result++), 0x10uLL), v6);
        --v5;
      }

      while (v5);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v7 = result->u16[0];
    result = (result + 2);
    a2->i32[0] = (bswap32(v7) & 0xFFFF0000) >> v4;
    a2 = (a2 + 4);
  }

  return result;
}

uint64_t NativeInt24ToNativeInt32_Portable(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  v4 = 8 - a4;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v5 = a3 >> 2;
      v6 = vneg_s32(vdup_n_s32(v4));
      do
      {
        v7 = (*(result + 8) & 0xFFFFFF00) >> v4;
        v8 = vorr_s8(vand_s8(vshl_u32(*result, 0xFFFFFFF8FFFFFFF0), 0xFFFF000000FF00), vshl_u32(*(result + 4), 0x1800000010));
        *a2 = (*result << 8) >> v4;
        *(a2 + 4) = vshl_s32(v8, v6);
        *(a2 + 12) = v7;
        result += 12;
        a2 += 16;
        --v5;
      }

      while (v5);
    }

    a3 &= 3u;
  }

  if (a3)
  {
    v9 = (result + 2);
    do
    {
      *a2 = ((*v9 << 24) | (*(v9 - 1) << 16) | (*(v9 - 2) << 8)) >> v4;
      a2 += 4;
      v9 += 3;
      --a3;
    }

    while (a3);
  }

  return result;
}

unsigned __int8 *SwapInt24ToNativeInt32_Portable(unsigned __int8 *this, int *a2, unsigned int a3, char a4, uint64_t a5, int *a6)
{
  v6 = a3;
  v7 = a2;
  v8 = this;
  v9 = 8 - a4;
  if (((a2 | this) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v10 = a3 >> 2;
      do
      {
        --v10;
        *v14 = 0;
        *v15 = 0;
        this = PCMSInt24Swap::load4(v8, &v15[4], v15, &v14[1], v14, a6);
        v11 = *v15 >> v9;
        v12 = v14[1] >> v9;
        v13 = v14[0] >> v9;
        *v7 = *&v15[4] >> v9;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v8 += 12;
        v7 += 4;
      }

      while (v10);
    }

    v6 &= 3u;
  }

  for (; v6; --v6)
  {
    *v7++ = ((*v8 << 24) | (v8[1] << 16) | (v8[2] << 8)) >> v9;
    v8 += 3;
  }

  return this;
}

int *NativeInt32ToNativeInt16_Portable(int *result, unsigned int *a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      for (i = a3 >> 2; i; --i)
      {
        v6 = (*result >> v4) + 1;
        v7 = v6 >> 1;
        if (v6 >> 1 < 0)
        {
          if (v7 < 0xFFFF8000)
          {
            v8 = 0x8000;
            goto LABEL_10;
          }
        }

        else if (v7 >> 15)
        {
          v8 = 0x7FFF;
          goto LABEL_10;
        }

        v8 = (v6 >> 1);
LABEL_10:
        v9 = ((result[1] >> v4) + 1) >> 1;
        if ((v9 & 0x80000000) != 0)
        {
          if (v9 < 0xFFFF8000)
          {
            v10 = 0x80000000;
            goto LABEL_16;
          }
        }

        else if (v9 >> 15)
        {
          v10 = 2147418112;
          goto LABEL_16;
        }

        v10 = v9 << 16;
LABEL_16:
        v11 = (result[2] >> v4) + 1;
        v12 = v11 >> 1;
        if (v11 >> 1 < 0)
        {
          if (v12 < 0xFFFF8000)
          {
            v13 = 0x8000;
            goto LABEL_22;
          }
        }

        else if (v12 >> 15)
        {
          v13 = 0x7FFF;
          goto LABEL_22;
        }

        v13 = (v11 >> 1);
LABEL_22:
        v14 = ((result[3] >> v4) + 1) >> 1;
        if ((v14 & 0x80000000) != 0)
        {
          if (v14 >= 0xFFFF8000)
          {
LABEL_27:
            v15 = v14 << 16;
            goto LABEL_28;
          }

          v15 = 0x80000000;
        }

        else
        {
          if (!(v14 >> 15))
          {
            goto LABEL_27;
          }

          v15 = 2147418112;
        }

LABEL_28:
        *a2 = v10 | v8;
        a2[1] = v15 | v13;
        a2 += 2;
        result += 4;
      }
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v16 = ((*result >> v4) + 1) >> 1;
    if ((v16 & 0x80000000) != 0)
    {
      if (v16 < 0xFFFF8000)
      {
        LOWORD(v16) = 0x8000;
      }
    }

    else if (v16 >> 15)
    {
      LOWORD(v16) = 0x7FFF;
    }

    *a2 = v16;
    a2 = (a2 + 2);
    ++result;
  }

  return result;
}

int *NativeInt32ToSwapInt16_Portable(int *result, _WORD *a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      v5 = a3 >> 2;
      do
      {
        v6 = ((*result >> v4) + 1) >> 1;
        if ((v6 & 0x80000000) != 0)
        {
          if (v6 < 0xFFFF8000)
          {
            v6 = 0x8000;
          }
        }

        else if (v6 >> 15)
        {
          v6 = 0x7FFF;
        }

        v7 = ((result[1] >> v4) + 1) >> 1;
        if ((v7 & 0x80000000) != 0)
        {
          if (v7 < 0xFFFF8000)
          {
            v7 = 0x8000;
          }
        }

        else if (v7 >> 15)
        {
          v7 = 0x7FFF;
        }

        v8 = ((result[2] >> v4) + 1) >> 1;
        if ((v8 & 0x80000000) != 0)
        {
          if (v8 < 0xFFFF8000)
          {
            v8 = 0x8000;
          }
        }

        else if (v8 >> 15)
        {
          v8 = 0x7FFF;
        }

        v9 = ((result[3] >> v4) + 1) >> 1;
        if ((v9 & 0x80000000) != 0)
        {
          if (v9 < 0xFFFF8000)
          {
            v9 = 0x8000;
          }
        }

        else if (v9 >> 15)
        {
          v9 = 0x7FFF;
        }

        *a2 = bswap32(v6) >> 16;
        a2[1] = bswap32(v7) >> 16;
        a2[2] = bswap32(v8) >> 16;
        a2[3] = bswap32(v9) >> 16;
        result += 4;
        a2 += 4;
        --v5;
      }

      while (v5);
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v10 = ((*result >> v4) + 1) >> 1;
    if ((v10 & 0x80000000) != 0)
    {
      if (v10 < 0xFFFF8000)
      {
        v10 = 0x8000;
      }
    }

    else if (v10 >> 15)
    {
      v10 = 0x7FFF;
    }

    *a2++ = bswap32(v10) >> 16;
    ++result;
  }

  return result;
}

int *NativeInt32ToNativeInt24_Portable(int *result, uint64_t a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      for (i = a3 >> 2; i; --i)
      {
        v6 = (*result >> v4) + 1;
        v7 = v6 >> 1;
        if (v6 >> 1 < 0)
        {
          if (v7 < 0xFF800000)
          {
            v8 = 0x800000;
            goto LABEL_10;
          }
        }

        else if (v7 >> 23)
        {
          v8 = 0x7FFFFF;
          goto LABEL_10;
        }

        v8 = (v6 >> 1) & 0xFFFFFF;
LABEL_10:
        v9 = ((result[1] >> v4) + 1) >> 1;
        if ((v9 & 0x80000000) != 0)
        {
          if (v9 < 0xFF800000)
          {
            v9 = -8388608;
          }
        }

        else if (v9 >> 23)
        {
          v9 = 0x7FFFFF;
        }

        v10 = ((result[2] >> v4) + 1) >> 1;
        if ((v10 & 0x80000000) != 0)
        {
          if (v10 < 0xFF800000)
          {
            v10 = -8388608;
          }
        }

        else if (v10 >> 23)
        {
          v10 = 0x7FFFFF;
        }

        v11 = ((result[3] >> v4) + 1) >> 1;
        if ((v11 & 0x80000000) != 0)
        {
          if (v11 >= 0xFF800000)
          {
LABEL_25:
            v12 = v11 << 8;
            goto LABEL_26;
          }

          v12 = 0x80000000;
        }

        else
        {
          if (!(v11 >> 23))
          {
            goto LABEL_25;
          }

          v12 = 2147483392;
        }

LABEL_26:
        *a2 = v8 | (v9 << 24);
        *(a2 + 4) = (v9 >> 8) | (v10 << 16);
        *(a2 + 8) = v12 | BYTE2(v10);
        result += 4;
        a2 += 12;
      }
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v13 = ((*result >> v4) + 1) >> 1;
    if ((v13 & 0x80000000) != 0)
    {
      if (v13 < 0xFF800000)
      {
        v13 = -8388608;
      }
    }

    else if (v13 >> 23)
    {
      v13 = 0x7FFFFF;
    }

    *a2 = v13;
    *(a2 + 2) = BYTE2(v13);
    ++result;
    a2 += 3;
  }

  return result;
}

int *NativeInt32ToSwapInt24_Portable(int *result, int8x8_t *a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      for (i = a3 >> 2; i; --i)
      {
        v6 = ((*result >> v4) + 1) >> 1;
        if ((v6 & 0x80000000) != 0)
        {
          if (v6 < 0xFF800000)
          {
            v6 = -8388608;
          }
        }

        else if (v6 >> 23)
        {
          v6 = 0x7FFFFF;
        }

        v7 = ((result[1] >> v4) + 1) >> 1;
        if ((v7 & 0x80000000) != 0)
        {
          if (v7 < 0xFF800000)
          {
            v7 = -8388608;
          }
        }

        else if (v7 >> 23)
        {
          v7 = 0x7FFFFF;
        }

        v8 = ((result[2] >> v4) + 1) >> 1;
        if ((v8 & 0x80000000) != 0)
        {
          if (v8 < 0xFF800000)
          {
            v8 = -8388608;
          }
        }

        else if (v8 >> 23)
        {
          v8 = 0x7FFFFF;
        }

        v9 = (result[3] >> v4) + 1;
        v10 = v9 >> 1;
        if (v9 >> 1 < 0)
        {
          if (v10 >= 0xFF800000)
          {
LABEL_24:
            v11 = (v9 >> 1) & 0xFFFFFF;
            goto LABEL_25;
          }

          v11 = 0x800000;
        }

        else
        {
          if (!(v10 >> 23))
          {
            goto LABEL_24;
          }

          v11 = 0x7FFFFF;
        }

LABEL_25:
        v12 = vshl_u32(__PAIR64__(v7, v6), 0x800000010);
        v13.i32[0] = vdup_lane_s32(v12, 1).u32[0];
        v13.i32[1] = v8 << 16;
        *a2 = vorr_s8(vorr_s8(vorr_s8(vand_s8(v12, 0xFF0000FF0000), vand_s8(vshl_u32(__PAIR64__(v7, v6), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vand_s8(__PAIR64__(v8, v6), 0xFF00000000FF00)), vand_s8(v13, 0xFF000000FF000000));
        a2[1].i32[0] = bswap32(v11) & 0xFFFFFF00 | v8;
        result += 4;
        a2 = (a2 + 12);
      }
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v14 = ((*result >> v4) + 1) >> 1;
    if ((v14 & 0x80000000) != 0)
    {
      if (v14 < 0xFF800000)
      {
        v14 = -8388608;
      }
    }

    else if (v14 >> 23)
    {
      v14 = 0x7FFFFF;
    }

    a2->i8[0] = BYTE2(v14);
    a2->i8[1] = BYTE1(v14);
    a2->i8[2] = v14;
    ++result;
    a2 = (a2 + 3);
  }

  return result;
}

unsigned int *SwapInt32ToNativeInt16_Portable(unsigned int *result, unsigned int *a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      for (i = a3 >> 2; i; --i)
      {
        v6 = (bswap32(*result) >> v4) + 1;
        v7 = v6 >> 1;
        if (v6 >> 1 < 0)
        {
          if (v7 < 0xFFFF8000)
          {
            v8 = 0x8000;
            goto LABEL_10;
          }
        }

        else if (v7 >> 15)
        {
          v8 = 0x7FFF;
          goto LABEL_10;
        }

        v8 = (v6 >> 1);
LABEL_10:
        v9 = ((bswap32(result[1]) >> v4) + 1) >> 1;
        if ((v9 & 0x80000000) != 0)
        {
          if (v9 < 0xFFFF8000)
          {
            v10 = 0x80000000;
            goto LABEL_16;
          }
        }

        else if (v9 >> 15)
        {
          v10 = 2147418112;
          goto LABEL_16;
        }

        v10 = v9 << 16;
LABEL_16:
        v11 = (bswap32(result[2]) >> v4) + 1;
        v12 = v11 >> 1;
        if (v11 >> 1 < 0)
        {
          if (v12 < 0xFFFF8000)
          {
            v13 = 0x8000;
            goto LABEL_22;
          }
        }

        else if (v12 >> 15)
        {
          v13 = 0x7FFF;
          goto LABEL_22;
        }

        v13 = (v11 >> 1);
LABEL_22:
        v14 = ((bswap32(result[3]) >> v4) + 1) >> 1;
        if ((v14 & 0x80000000) != 0)
        {
          if (v14 >= 0xFFFF8000)
          {
LABEL_27:
            v15 = v14 << 16;
            goto LABEL_28;
          }

          v15 = 0x80000000;
        }

        else
        {
          if (!(v14 >> 15))
          {
            goto LABEL_27;
          }

          v15 = 2147418112;
        }

LABEL_28:
        *a2 = v10 | v8;
        a2[1] = v15 | v13;
        a2 += 2;
        result += 4;
      }
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v16 = ((bswap32(*result) >> v4) + 1) >> 1;
    if ((v16 & 0x80000000) != 0)
    {
      if (v16 < 0xFFFF8000)
      {
        LOWORD(v16) = 0x8000;
      }
    }

    else if (v16 >> 15)
    {
      LOWORD(v16) = 0x7FFF;
    }

    *a2 = v16;
    a2 = (a2 + 2);
    ++result;
  }

  return result;
}

unsigned int *SwapInt32ToNativeInt24_Portable(unsigned int *result, uint64_t a2, unsigned int a3, char a4)
{
  v4 = a4 - 1;
  if (((a2 | result) & 3) == 0)
  {
    if (a3 >= 4)
    {
      for (i = a3 >> 2; i; --i)
      {
        v6 = (bswap32(*result) >> v4) + 1;
        v7 = v6 >> 1;
        if (v6 >> 1 < 0)
        {
          if (v7 < 0xFF800000)
          {
            v8 = 0x800000;
            goto LABEL_10;
          }
        }

        else if (v7 >> 23)
        {
          v8 = 0x7FFFFF;
          goto LABEL_10;
        }

        v8 = (v6 >> 1) & 0xFFFFFF;
LABEL_10:
        v9 = ((bswap32(result[1]) >> v4) + 1) >> 1;
        if ((v9 & 0x80000000) != 0)
        {
          if (v9 < 0xFF800000)
          {
            v9 = -8388608;
          }
        }

        else if (v9 >> 23)
        {
          v9 = 0x7FFFFF;
        }

        v10 = ((bswap32(result[2]) >> v4) + 1) >> 1;
        if ((v10 & 0x80000000) != 0)
        {
          if (v10 < 0xFF800000)
          {
            v10 = -8388608;
          }
        }

        else if (v10 >> 23)
        {
          v10 = 0x7FFFFF;
        }

        v11 = ((bswap32(result[3]) >> v4) + 1) >> 1;
        if ((v11 & 0x80000000) != 0)
        {
          if (v11 >= 0xFF800000)
          {
LABEL_25:
            v12 = v11 << 8;
            goto LABEL_26;
          }

          v12 = 0x80000000;
        }

        else
        {
          if (!(v11 >> 23))
          {
            goto LABEL_25;
          }

          v12 = 2147483392;
        }

LABEL_26:
        *a2 = v8 | (v9 << 24);
        *(a2 + 4) = (v9 >> 8) | (v10 << 16);
        *(a2 + 8) = v12 | BYTE2(v10);
        result += 4;
        a2 += 12;
      }
    }

    a3 &= 3u;
  }

  for (; a3; --a3)
  {
    v13 = ((bswap32(*result) >> v4) + 1) >> 1;
    if ((v13 & 0x80000000) != 0)
    {
      if (v13 < 0xFF800000)
      {
        v13 = -8388608;
      }
    }

    else if (v13 >> 23)
    {
      v13 = 0x7FFFFF;
    }

    *a2 = v13;
    *(a2 + 2) = BYTE2(v13);
    ++result;
    a2 += 3;
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt32_Portable(int32x4_t *result, int32x4_t *a2, unsigned int a3, signed int a4)
{
  if (a4 < 1)
  {
    v15 = -a4;
    if (((a2 | result) & 3) == 0)
    {
      if (a3 >= 4)
      {
        v16 = a3 >> 2;
        v17 = vnegq_s32(vdupq_n_s32(v15));
        do
        {
          v18 = *result++;
          *a2++ = vshlq_s32(v18, v17);
          --v16;
        }

        while (v16);
      }

      a3 &= 3u;
    }

    for (; a3; --a3)
    {
      v19 = result->i32[0];
      result = (result + 4);
      a2->i32[0] = v19 >> v15;
      a2 = (a2 + 4);
    }
  }

  else
  {
    v4 = -1 << ~a4;
    v5 = ~v4;
    if (((a2 | result) & 3) == 0)
    {
      if (a3 >= 4)
      {
        v6 = a3 >> 2;
        v7 = vdupq_n_s32(v4);
        v8 = vdupq_n_s32(v5);
        v9 = vdupq_n_s32(a4);
        do
        {
          v10 = *result++;
          *a2++ = vshlq_u32(vbslq_s8(vcgtq_s32(v7, v10), v7, vminq_s32(v10, v8)), v9);
          --v6;
        }

        while (v6);
      }

      a3 &= 3u;
    }

    while (a3)
    {
      v12 = result->i32[0];
      result = (result + 4);
      v11 = v12;
      if (v12 >= v5)
      {
        v13 = ~v4;
      }

      else
      {
        v13 = v11;
      }

      if (v11 >= v4)
      {
        v14 = v13;
      }

      else
      {
        v14 = -1 << ~a4;
      }

      a2->i32[0] = v14 << a4;
      a2 = (a2 + 4);
      --a3;
    }
  }

  return result;
}

int *NativeInt32ToSwapInt32_Portable(int *result, _DWORD *a2, unsigned int a3, int a4)
{
  if (a4 < 1)
  {
    v22 = -a4;
    if (((a2 | result) & 3) == 0)
    {
      if (a3 >= 4)
      {
        v23 = a3 >> 2;
        do
        {
          v24 = result[1] >> v22;
          v25 = result[2] >> v22;
          v26 = result[3] >> v22;
          *a2 = bswap32(*result >> v22);
          a2[1] = bswap32(v24);
          a2[2] = bswap32(v25);
          a2[3] = bswap32(v26);
          result += 4;
          a2 += 4;
          --v23;
        }

        while (v23);
      }

      a3 &= 3u;
    }

    for (; a3; --a3)
    {
      v27 = *result++;
      *a2++ = bswap32(v27 >> v22);
    }
  }

  else
  {
    v4 = -1 << ~a4;
    v5 = ~v4;
    if (((a2 | result) & 3) == 0)
    {
      if (a3 >= 4)
      {
        v6 = a3 >> 2;
        do
        {
          v7 = result[1];
          v8 = result[2];
          v9 = result[3];
          if (*result >= v5)
          {
            v10 = ~v4;
          }

          else
          {
            v10 = *result;
          }

          if (*result >= v4)
          {
            v11 = v10;
          }

          else
          {
            v11 = -1 << ~a4;
          }

          if (v7 >= v5)
          {
            v12 = ~v4;
          }

          else
          {
            v12 = result[1];
          }

          if (v7 >= v4)
          {
            v13 = v12;
          }

          else
          {
            v13 = -1 << ~a4;
          }

          if (v8 >= v5)
          {
            v14 = ~v4;
          }

          else
          {
            v14 = result[2];
          }

          if (v8 >= v4)
          {
            v15 = v14;
          }

          else
          {
            v15 = -1 << ~a4;
          }

          if (v9 >= v5)
          {
            v16 = ~v4;
          }

          else
          {
            v16 = result[3];
          }

          if (v9 >= v4)
          {
            v17 = v16;
          }

          else
          {
            v17 = -1 << ~a4;
          }

          *a2 = bswap32(v11 << a4);
          a2[1] = bswap32(v13 << a4);
          a2[2] = bswap32(v15 << a4);
          a2[3] = bswap32(v17 << a4);
          result += 4;
          a2 += 4;
          --v6;
        }

        while (v6);
      }

      a3 &= 3u;
    }

    while (a3)
    {
      v19 = *result++;
      v18 = v19;
      if (v19 >= v5)
      {
        v20 = ~v4;
      }

      else
      {
        v20 = v18;
      }

      if (v18 >= v4)
      {
        v21 = v20;
      }

      else
      {
        v21 = -1 << ~a4;
      }

      *a2++ = bswap32(v21 << a4);
      --a3;
    }
  }

  return result;
}