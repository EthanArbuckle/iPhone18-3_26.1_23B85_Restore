void sub_18F632680()
{
  __cxa_end_catch();
  if (v1 < 0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x18F6326B0);
}

void sub_18F6326A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F6326B0);
  }

  __clang_call_terminate(a1);
}

unint64_t DSPGraph::Graph::generateSerialNumber(DSPGraph::Graph *this)
{
  {
    std::random_device::random_device[abi:ne200100](&v5);
    v4 = MEMORY[0x193ADEEE0](&v5);
    DSPGraph::Graph::generateSerialNumber(void)::sSerialNo = DSPGraph::intHash(v4);
    std::random_device::~random_device(&v5);
  }

  std::mutex::lock(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  v1 = atomic_load(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  atomic_store(v1 + 1 + (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) | (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) << 63)), &DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  v2 = atomic_load(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  std::mutex::unlock(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  return v2;
}

void sub_18F63278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::AUBox::getProperty(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, void *outData)
{
  ioDataSize = *a5;
  result = AudioUnitGetProperty(this[106], a2, a3, a4, outData, &ioDataSize);
  *a5 = ioDataSize;
  return result;
}

uint64_t AUPBRegister(uint64_t a1, uint64_t a2, OpaqueAUPB **a3)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  result = 4294967246;
  if (a1)
  {
    if (a3)
    {
      v7 = [+[AUPBServer sharedInstance](AUPBServer registerBlock:"registerBlock:withUserData:" withUserData:a1, a2];
      result = 0;
      *a3 = v7;
    }
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void DSPGraph::ThrowException(int a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  exception = __cxa_allocate_exception(0x60uLL);
  v11 = exception;
  *exception = &unk_1F032CEF8;
  *(exception + 2) = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((exception + 16), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(exception + 4) = *(a2 + 2);
    *(exception + 1) = v12;
  }

  *(v11 + 10) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11 + 2, *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(v11 + 8) = *(a4 + 2);
    *(v11 + 3) = v13;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11 + 3, *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    *(v11 + 11) = *(a5 + 2);
    *(v11 + 72) = v14;
  }
}

void sub_18F632B34(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::exception::~exception(v1);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

void DSPGraph::Exception::~Exception(std::exception *this)
{
  this->__vftable = &unk_1F032CEF8;
  if (SHIBYTE(this[11].__vftable) < 0)
  {
    operator delete(this[9].__vftable);
  }

  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F032CEF8;
  if (SHIBYTE(this[11].__vftable) < 0)
  {
    operator delete(this[9].__vftable);
  }

  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUPBPropertiesChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  [+[AUPBServer sharedInstance](AUPBServer processingBlock:"processingBlock:properties:count:changedWithQualifierData:length:" properties:a1 count:a3 changedWithQualifierData:a2 length:a4, a5];
  return 0;
}

std::__split_buffer<std::string>::pointer DSPGraph::Graph::getFormatNames@<X0>(DSPGraph::Graph *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(this + 78);
  if (result)
  {
    if (result < 0xAAAAAAAAAAAAAABLL)
    {
      v7.__end_cap_.__value_ = a2;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](result);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v5 = (this + 616);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = *(a2 + 8);
    if (v6 >= *(a2 + 16))
    {
      result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, v5 + 1);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a2, v5 + 1);
      result = v6 + 1;
    }

    *(a2 + 8) = result;
  }

  return result;
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t DSPGraph::Graph::getFormat(int8x8_t *a1, void *a2, void *a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v7 = a1[76];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a1[75] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a2))
            {
              *a3 = v13 + 5;
              return 1;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              return 0;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  return 0;
}

void DSPGraph::Graph::configure(DSPGraph::Graph *this)
{
  if (*(this + 761))
  {
    return;
  }

  if (!*(this + 172) || !*(this + 173))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(v243, "configure");
    std::string::basic_string[abi:ne200100]<0>(&v242, "slice duration must be set before configure.");
    DSPGraph::ThrowException(1718775073, __p, 716, v243, &v242);
  }

  v2 = *(this + 3);
  for (i = (this + 24); v2; v2 = *v2)
  {
    v3 = v2[2];
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    if (((v5 - v4) & 0x1FFFFFFFE0) != 0)
    {
      if (v5 == v4)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v243, "in");
        v195 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v195 = *v195;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v194, v195, (*(v3 + 72) - *(v3 + 64)) >> 5, 0);
      }

      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (!(*(*(v4 + v6) + 40))())
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v243, "checkConnectivity");
          std::to_string(&v235, v7);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v236, "input port ", &v235);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v237, &v236, " on '");
          v227 = v2[2];
          v228 = (v227 + 32);
          if (*(v227 + 55) < 0)
          {
            v228 = *v228;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v238, &v237, v228);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v242, &v238, "' box is not connected to anything");
          DSPGraph::ThrowException(1970168609, __p, 2709, v243, &v242);
        }

        ++v7;
        v3 = v2[2];
        v4 = *(v3 + 64);
        if (v7 >= ((*(v3 + 72) - v4) >> 5))
        {
          break;
        }

        v6 += 32;
      }
    }

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    if (((v9 - v8) & 0x1FFFFFFFE0) != 0)
    {
      if (v9 == v8)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v243, "out");
        v197 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v197 = *v197;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v196, v197, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
      }

      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (!(*(*(v8 + v10) + 40))())
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v243, "checkConnectivity");
          std::to_string(&v235, v11);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v236, "output port ", &v235);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v237, &v236, " on '");
          v229 = v2[2];
          v230 = (v229 + 32);
          if (*(v229 + 55) < 0)
          {
            v230 = *v230;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v238, &v237, v230);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v242, &v238, "' box is not connected to anything");
          DSPGraph::ThrowException(1970168609, __p, 2714, v243, &v242);
        }

        ++v11;
        v8 = *(v2[2] + 88);
        if (v11 >= ((*(v2[2] + 96) - v8) >> 5))
        {
          break;
        }

        v10 += 32;
      }
    }
  }

  for (j = *(this + 8); j; j = *j)
  {
    DSPGraph::Wire::initializeFormat(j[2]);
  }

  *__p = 0u;
  v240 = 0u;
  v241 = 1065353216;
  for (k = *(this + 43); k; k = *k)
  {
    if (!std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(__p[0], __p[1], k[2]))
    {
      operator new();
    }
  }

  for (m = *(this + 48); m; m = *m)
  {
    v15 = m[2];
    if (((*(*v15 + 712))(v15) & 1) == 0 && !std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(__p[0], __p[1], v15))
    {
      operator new();
    }
  }

  v234 = this;
  for (n = *(this + 29); n; n = *n)
  {
    v17 = *(n[2] + 32);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v17[2];
        v22 = *(v21 + 64);
        v23 = *(v21 + 72);
        if (v22 == v23)
        {
          v26 = v20;
        }

        else
        {
          v24 = *(v21 + 64);
          do
          {
            if (!(*(*v24 + 40))(v24))
            {
              std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
              v208 = (v21 + 32);
              if (*(v21 + 55) < 0)
              {
                v208 = *v208;
              }

              v209 = (*(*v21 + 16))(v21);
              DSPGraph::strprintf("box %s %s input port is not connected.", v210, v208, v209);
            }

            v25 = **((*(*v24 + 40))(v24) + 120);
            if (v20)
            {
              v19 = *(*((*(*v24 + 40))(v24) + 120) + 40);
              v18 = v25;
            }

            else
            {
              if (v18 != v25)
              {
                std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
                v217 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v217 = *v217;
                }

                v218 = (*(*v24 + 40))(v24);
                DSPGraph::strprintf("boxes within a group have different sample rates! group has sample rate %u, but box %s has sample rate %u on one of its input ports", v219, v18, v217, **(v218 + 120));
              }

              if (*(*((*(*v24 + 40))(v24) + 120) + 40) != v19)
              {
                std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
                v214 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v214 = *v214;
                }

                v215 = (*(*v24 + 40))(v24);
                DSPGraph::strprintf("boxes within a group have different block sizes! group has block size %u, but box %s has block size %u on one of its input ports", v216, v19, v214, *(*(v215 + 120) + 40));
              }
            }

            v26 = 0;
            LOBYTE(v20) = 0;
            v24 += 32;
            v22 += 32;
          }

          while (v24 != v23);
        }

        v27 = *(v21 + 88);
        v28 = *(v21 + 96);
        if (v27 == v28)
        {
          v20 = v26;
        }

        else
        {
          v29 = *(v21 + 88);
          do
          {
            if (!(*(*v29 + 40))(v29))
            {
              std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
              v211 = (v21 + 32);
              if (*(v21 + 55) < 0)
              {
                v211 = *v211;
              }

              v212 = (*(*v21 + 16))(v21);
              DSPGraph::strprintf("box %s %s output port is not connected.", v213, v211, v212);
            }

            if (v26)
            {
              v18 = **((*(*v29 + 40))(v29) + 120);
              v19 = *(*((*(*v29 + 40))(v29) + 120) + 40);
            }

            else if (!(*(*v21 + 272))(v21))
            {
              if (v18 != **((*(*v29 + 40))(v29) + 120))
              {
                std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
                v220 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v220 = *v220;
                }

                v221 = (*(*v21 + 16))(v21);
                v222 = (*(*v29 + 40))(v29);
                DSPGraph::strprintf("boxes within a group have different sample rates! group has sample rate %u, but box %s %s has sample rate %u on one of its output ports", v223, v18, v220, v221, **(v222 + 120));
              }

              if (*(*((*(*v29 + 40))(v29) + 120) + 40) != v19)
              {
                std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v242, "createIsoGroups");
                v224 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v224 = *v224;
                }

                v225 = (*(*v29 + 40))(v29);
                DSPGraph::strprintf("boxes within a group have different block sizes! group has block size %u, but box %s has block size %u on one of its output ports", v226, v19, v224, *(*(v225 + 120) + 40));
              }
            }

            v20 = 0;
            LOBYTE(v26) = 0;
            v29 += 32;
            v27 += 32;
          }

          while (v29 != v28);
        }

        v17 = *v17;
      }

      while (v17);
    }
  }

  *__p = 0u;
  v240 = 0u;
  v241 = 1065353216;
  v30 = i;
  v31 = *i;
  if (*i)
  {
    do
    {
      *(v31[2] + 745) = 0;
      v31 = *v31;
    }

    while (v31);
  }

  v32 = v234;
  v33 = *(v234 + 29);
  if (v33)
  {
    do
    {
      v34 = v33[2];
      *(v34 + 248) = 0;
      if (!*(v34 + 160))
      {
        v35 = 0x9DDFEA08EB382D69 * ((8 * (v34 & 0x1FFFFFFF) + 8) ^ HIDWORD(v34));
        v36 = 0x9DDFEA08EB382D69 * (HIDWORD(v34) ^ (v35 >> 47) ^ v35);
        v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
        if (__p[1])
        {
          v38 = vcnt_s8(__p[1]);
          v38.i16[0] = vaddlv_u8(v38);
          if (v38.u32[0] > 1uLL)
          {
            v39 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
            if (v37 >= __p[1])
            {
              v39 = v37 % __p[1];
            }
          }

          else
          {
            v39 = v37 & (__p[1] - 1);
          }

          v40 = *(__p[0] + v39);
          if (v40)
          {
            for (ii = *v40; ii; ii = *ii)
            {
              v42 = ii[1];
              if (v42 == v37)
              {
                if (ii[2] == v34)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (v38.u32[0] > 1uLL)
                {
                  if (v42 >= __p[1])
                  {
                    v42 %= __p[1];
                  }
                }

                else
                {
                  v42 &= __p[1] - 1;
                }

                if (v42 != v39)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

LABEL_76:
      v33 = *v33;
    }

    while (v33);
    v43 = v240;
    v32 = v234;
    for (*(v234 + 33) = *(v234 + 32); v43; v43 = *v43)
    {
      DSPGraph::IsoGroup::topologicalSort(v43[2], v234 + 256);
    }
  }

  else
  {
    *(v234 + 33) = *(v234 + 32);
  }

  while (1)
  {
    v30 = *v30;
    if (!v30)
    {
      break;
    }

    if ((*(v30[2] + 745) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v243, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v242, "topologicalSort");
      v44 = v30[2];
      v45 = v44 + 32;
      if (v44[55] < 0)
      {
        v45 = *v45;
      }

      v46 = (*(*v44 + 16))(v44);
      DSPGraph::strprintf("%s %s box not connected", v47, v45, v46);
    }
  }

  v48 = *(v32 + 32);
  v49 = *(v32 + 33);
  if (v48 != v49)
  {
    do
    {
      v50 = *v48++;
      DSPGraph::IsoGroup::checkIsochronicity(v50);
    }

    while (v48 != v49);
    v48 = *(v32 + 32);
    v49 = *(v32 + 33);
  }

  if (v48 == v49)
  {
    *(v32 + 766) = 1;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v48;
    do
    {
      if (*(*v55 + 66))
      {
        v53 = *(*v55 + 67);
        v51 |= v53 > 1;
        ++v52;
        v54 = *(*v55 + 66);
      }

      ++v55;
    }

    while (v55 != v49);
    if (v52 == 1)
    {
      v56 = v53 * *(v32 + 173) == v54 * *(v32 + 172);
      v52 = 1;
    }

    else
    {
      v56 = 0;
    }

    if (((v52 < 2) & v51) == 1)
    {
      v57 = v56 & ~*(v32 + 760);
      *(v32 + 766) = v57 & 1;
      if ((v57 & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      *(v32 + 766) = v52 < 2;
      if (v52 > 1)
      {
LABEL_114:
        *(v32 + 763) = 0;
        goto LABEL_115;
      }
    }
  }

  if (((*(v32 + 36) - *(v32 + 35)) & 0x7FFFFFFF8) != 8 || ((*(v32 + 39) - *(v32 + 38)) & 0x7FFFFFFF8) != 8)
  {
    goto LABEL_114;
  }

  *(v32 + 763) = 1;
  if (v48 != v49)
  {
    do
    {
      v58 = *(*v48 + 28);
      v59 = *(*v48 + 29);
      while (v58 != v59)
      {
        v60 = *v58;
        if (((*(*v58 + 72) - *(*v58 + 64)) & 0x1FFFFFFFC0) != 0 || ((v60[12] - v60[11]) & 0x1FFFFFFFC0) != 0 || ((*(*v60 + 64))(v60) & 1) == 0)
        {
          *(v32 + 763) = 0;
          break;
        }

        v58 += 8;
      }

      ++v48;
    }

    while (v48 != v49);
    v48 = *(v32 + 32);
    v49 = *(v32 + 33);
  }

LABEL_115:
  v61 = *(v32 + 173);
  *(v32 + 87) = v61;
  if (v48 == v49)
  {
    *(v32 + 94) = 24000000.0 / v61;
    v68 = 1;
    *(v32 + 92) = 1;
    v62 = v61;
  }

  else
  {
    v62 = v61;
    v63 = v48;
    do
    {
      v64 = *(*v63 + 66);
      if (v64)
      {
        v65 = v62;
        v66 = *(*v63 + 66);
        do
        {
          v67 = v66;
          v66 = v65 % v66;
          v65 = v67;
        }

        while (v66);
        v62 = v62 / v67 * v64;
        *(v32 + 87) = v62;
      }

      ++v63;
    }

    while (v63 != v49);
    *(v32 + 94) = 24000000.0 / v62;
    v68 = 1;
    *(v32 + 92) = 1;
    v69 = v48;
    do
    {
      v70 = *v69;
      v71 = *(*v69 + 66);
      if (v71)
      {
        v72 = v62 / v71;
        v73 = v62 / v71 * *(v70 + 67);
        *(v70 + 37) = v73;
        *(v70 + 38) = v72;
        v74 = v68;
        if (v73)
        {
          v75 = v68;
          v76 = v73;
          do
          {
            v74 = v76;
            v76 = v75 % v76;
            v75 = v74;
          }

          while (v76);
        }

        v68 = v68 / v74 * v73;
        *(v32 + 92) = v68;
      }

      ++v69;
    }

    while (v69 != v49);
  }

  v77 = v61 + v62 * *(v32 + 172) - 1;
  v78 = v77 / v61;
  *(v32 + 90) = v77 / v61;
  v79 = (v32 + 712);
  *(v32 + 89) = v77 / v61;
  v80 = v68;
  if (v77 >= v61)
  {
    v81 = v68;
    do
    {
      v80 = v78;
      v78 = v81 % v78;
      v81 = v80;
    }

    while (v78);
  }

  *(v32 + 93) = v68 / v80;
  while (v48 != v49)
  {
    v82 = *v48;
    if (*(*v48 + 66))
    {
      v83 = *(v82 + 37);
      v84 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(*v79 / v83);
      v85 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((v83 + *v79 - 1) / v83);
      *(v82 + 70) = v84;
      *(v82 + 69) = v85;
      *(v82 + 39) = v83 * v85;
      v86 = *(v82 + 37);
      v87 = *(v82 + 14);
      if (v87)
      {
        v88 = 0;
        do
        {
          v89 = *(*(v87[2] + 848) + 296);
          v90 = *(v82 + 37);
          if (v89)
          {
            v91 = *(v82 + 37);
            do
            {
              v90 = v89;
              v89 = v91 % v89;
              v91 = v90;
            }

            while (v89);
          }

          if (v88 <= v86 - v90)
          {
            v88 = v86 - v90;
          }

          v87 = *v87;
        }

        while (v87);
      }

      else
      {
        v88 = 0;
      }

      if (*(v82 + 23) != *(v82 + 22))
      {
        v92 = *(v32 + 760) ? (v82 + 304) : (v32 + 712);
        v93 = *v92;
        if (v93)
        {
          v94 = *(v82 + 37);
          do
          {
            v95 = v93;
            v93 = v94 % v93;
            v94 = v95;
          }

          while (v93);
        }

        else
        {
          v95 = *(v82 + 37);
        }

        v96 = v86 - v95;
        if (v88 <= v96)
        {
          v88 = v96;
        }
      }
    }

    else
    {
      v88 = 0;
      *(v82 + 276) = 0;
      *(v82 + 39) = 0;
    }

    *(v82 + 40) = v88;
    *(v82 + 36) = 0;
    ++v48;
  }

  if (*(v32 + 766))
  {
    goto LABEL_253;
  }

  if ((*(v32 + 765) & 1) == 0)
  {
    v97 = *(v32 + 32);
    v98 = *(v32 + 33);
LABEL_252:
    while (v97 != v98)
    {
      v160 = *v97;
      v161 = *(*v97 + 264);
      if (v161)
      {
        v162 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v32 + 87) + *(v160 + 320) * v161 - 1) / *(v32 + 87));
        v163 = v162;
        v164 = *(v160 + 176);
        v165 = *(v160 + 184);
        if (v164 != v165)
        {
          v166 = v162 - 1;
          do
          {
            v167 = *v164;
            v168 = *(*v164 + 88);
            if (*(*v164 + 96) == v168)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v243, "out");
              v199 = (v167 + 32);
              if (*(v167 + 55) < 0)
              {
                v199 = *v199;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v198, v199, (*(v167 + 96) - *(v167 + 88)) >> 5, 0);
            }

            v169 = *(*((*(*v168 + 40))(v168) + 120) + 20);
            if (*(v234 + 760))
            {
              v170 = 1;
            }

            else
            {
              v170 = *(v234 + 89);
            }

            v171 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v234 + 87) + *(v160 + 264) + *(v160 + 264) * (*(v234 + 89) + *(v160 + 320) + (*(v234 + 89) - 1) % v170) - 1) / *(v234 + 87));
            v172 = *(v167 + 88);
            if (*(v167 + 96) == v172)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v243, "out");
              v201 = (v167 + 32);
              if (*(v167 + 55) < 0)
              {
                v201 = *v201;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v200, v201, (*(v167 + 96) - *(v167 + 88)) >> 5, 0);
            }

            v173 = (*(*v172 + 40))(v172);
            (*(*v167 + 680))(v167, (v171 + *(*(v173 + 120) + 20) - 1) / *(*(v173 + 120) + 20), (v166 + v169) / v169);
            ++v164;
          }

          while (v164 != v165);
        }

        v174 = *(v160 + 112);
        v32 = v234;
        if (v174)
        {
          v175 = v163 - 1;
          do
          {
            v176 = v174[2];
            v177 = *(v176 + 88);
            if (*(v176 + 96) == v177)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v243, "out");
              v203 = (v176 + 32);
              if (*(v176 + 55) < 0)
              {
                v203 = *v203;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v202, v203, (*(v176 + 96) - *(v176 + 88)) >> 5, 0);
            }

            v178 = *(*((*(*v177 + 40))(v177) + 120) + 20);
            v179 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v234 + 87) + *(v160 + 264) + *(v160 + 264) * (*(*(v176 + 848) + 312) + *(v160 + 320) + (*(v234 + 89) - 1) % *(*(v176 + 848) + 296)) - 1) / *(v234 + 87));
            v180 = *(v176 + 88);
            if (*(v176 + 96) == v180)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v243, "out");
              v205 = (v176 + 32);
              if (*(v176 + 55) < 0)
              {
                v205 = *v205;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v204, v205, (*(v176 + 96) - *(v176 + 88)) >> 5, 0);
            }

            v181 = (*(*v180 + 40))(v180);
            (*(*v176 + 680))(v176, (v179 + *(*(v181 + 120) + 20) - 1) / *(*(v181 + 120) + 20), (v175 + v178) / v178);
            v174 = *v174;
          }

          while (v174);
        }

        v182 = *(v160 + 200);
        v183 = *(v160 + 208);
        while (v182 != v183)
        {
          v184 = *v182;
          v185 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v234 + 87) + *(v160 + 264) + *(v160 + 264) * (*(v160 + 312) + (*(v234 + 89) - 1) % *(v160 + 296)) - 1) / *(v234 + 87));
          v186 = *(v184 + 64);
          if (*(v184 + 72) == v186)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v243, "in");
            v207 = (v184 + 32);
            if (*(v184 + 55) < 0)
            {
              v207 = *v207;
            }

            DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v206, v207, (*(v184 + 72) - *(v184 + 64)) >> 5, 0);
          }

          v187 = (*(*v186 + 40))(v186);
          (*(*v184 + 680))(v184, (v185 + *(*(v187 + 120) + 20) - 1) / *(*(v187 + 120) + 20), 0);
          ++v182;
        }
      }

      ++v97;
    }

    goto LABEL_253;
  }

  v97 = *(v32 + 32);
  v98 = *(v32 + 33);
  if (*(v32 + 760))
  {
    goto LABEL_252;
  }

  *(v32 + 88) = 0;
  *(v32 + 90) = *(v32 + 89);
  if (v97 != v98)
  {
    do
    {
      v99 = *v97;
      v99[36] = 0;
      v100 = v99[22];
      v101 = v99[23];
      while (v100 != v101)
      {
        v102 = *v100++;
        *(v102 + 800) = 0;
        *(v102 + 784) = 0uLL;
      }

      v103 = v99[25];
      v104 = v99[26];
      while (v103 != v104)
      {
        v105 = *v103++;
        *(v105 + 800) = 0;
        *(v105 + 784) = 0uLL;
      }

      for (jj = v99[14]; jj; jj = *jj)
      {
        v107 = jj[2];
        *(v107 + 800) = 0;
        *(v107 + 784) = 0uLL;
      }

      for (kk = v99[19]; kk; kk = *kk)
      {
        v109 = kk[2];
        *(v109 + 800) = 0;
        *(v109 + 784) = 0uLL;
      }

      ++v97;
    }

    while (v97 != v98);
    v97 = *(v32 + 32);
    v98 = *(v32 + 33);
  }

  v110 = *(v32 + 93);
  if (v110)
  {
    v111 = 0;
    v112 = *(v32 + 35);
    v113 = *(v32 + 36);
    do
    {
      if (v112 != v113)
      {
        v114 = *v79;
        v115 = v112;
        do
        {
          v117 = *v115++;
          v116 = v117;
          v118 = *(v117 + 784) + v114;
          *(v117 + 784) = v118;
          v119 = *(v117 + 800);
          if (v119 > v118)
          {
            v118 = v119;
          }

          *(v116 + 800) = v118;
        }

        while (v115 != v113);
      }

      for (mm = v97; mm != v98; ++mm)
      {
        v121 = *mm;
        if (*(*mm + 264))
        {
          v122 = *(*(v121 + 8) + 720) + *(*(v121 + 8) + 704);
          v123 = *(v121 + 288);
          if (v122 <= v123)
          {
            v124 = 0;
          }

          else
          {
            v124 = (v122 + ~v123 + *(v121 + 296)) / *(v121 + 296);
          }

          if (v124 < *(v121 + 280) || v124 > *(v121 + 276))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v243, "dryRunProcess");
            DSPGraph::strprintf("number of blocks to process is out of range  %u   %u %u", v232, v124, *(v121 + 280), *(v121 + 276));
          }

          v125 = *(v121 + 296) * v124;
          v126 = *(v121 + 176);
          v127 = *(v121 + 184);
          while (v126 != v127)
          {
            v129 = *v126++;
            v128 = v129;
            v130 = *(v129 + 784) - v125;
            *(v129 + 784) = v130;
            v131 = *(v129 + 792);
            if (v130 >= v131)
            {
              v130 = v131;
            }

            *(v128 + 792) = v130;
          }

          for (nn = *(v121 + 112); nn; nn = *nn)
          {
            v133 = nn[2];
            v134 = *(v133 + 784) - v125;
            *(v133 + 784) = v134;
            if (v134 >= *(v133 + 792))
            {
              v134 = *(v133 + 792);
            }

            *(v133 + 792) = v134;
          }

          for (i1 = *(v121 + 152); i1; i1 = *i1)
          {
            v136 = i1[2];
            v137 = *(v136 + 784) + v125;
            *(v136 + 784) = v137;
            if (*(v136 + 800) > v137)
            {
              v137 = *(v136 + 800);
            }

            *(v136 + 800) = v137;
          }

          v138 = *(v121 + 200);
          v139 = *(v121 + 208);
          while (v138 != v139)
          {
            v141 = *v138++;
            v140 = v141;
            v142 = *(v141 + 784) + v125;
            *(v141 + 784) = v142;
            v143 = *(v141 + 800);
            if (v143 > v142)
            {
              v142 = v143;
            }

            *(v140 + 800) = v142;
          }

          *(v121 + 288) = v123 + v125;
        }
      }

      v144 = *(v32 + 38);
      v145 = *(v32 + 39);
      if (v144 != v145)
      {
        v146 = *v79;
        do
        {
          v148 = *v144++;
          v147 = v148;
          v149 = *(v148 + 784) - v146;
          *(v148 + 784) = v149;
          v150 = *(v148 + 792);
          if (v149 >= v150)
          {
            v149 = v150;
          }

          *(v147 + 792) = v149;
        }

        while (v144 != v145);
      }

      *(v32 + 88) += *(v32 + 90);
      ++v111;
    }

    while (v111 != v110);
  }

  while (v97 != v98)
  {
    v151 = *v97;
    if (*(*v97 + 264))
    {
      v152 = v151[22];
      v153 = v151[23];
      while (v152 != v153)
      {
        v154 = *v152++;
        DSPGraph::RingBufferBox::configureFromDryRun(v154);
      }

      for (i2 = v151[14]; i2; i2 = *i2)
      {
        DSPGraph::RingBufferBox::configureFromDryRun(i2[2]);
      }

      for (i3 = v151[19]; i3; i3 = *i3)
      {
        DSPGraph::RingBufferBox::configureFromDryRun(i3[2]);
      }

      v157 = v151[25];
      v158 = v151[26];
      while (v157 != v158)
      {
        v159 = *v157++;
        DSPGraph::RingBufferBox::configureFromDryRun(v159);
      }

      v151[36] = 0;
    }

    ++v97;
  }

  *(v32 + 88) = 0;
LABEL_253:
  for (i4 = *(v32 + 72); i4; i4 = *i4)
  {
    v189 = i4[9];
    v190 = i4[10];
    while (v189 != v190)
    {
      if ((i4[8] & 1) == 0 && *(i4 + 56) == 1)
      {
        if ((i4[5] - i4[4]) >> 32)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v243, "setGraphPropertiesInitialValues");
          DSPGraph::strprintf("graph property size is too large to accept: %zu bytes > %u", v231, i4[5] - i4[4], 0xFFFFFFFFLL);
        }

        (*(**v189 + 312))(*v189, v189[2], v189[3], v189[4]);
      }

      v189 += 6;
    }
  }

  for (i5 = *(v32 + 67); i5; i5 = *i5)
  {
    v192 = *(i5 + 5);
    v193 = *(i5 + 6);
    while (v192 != v193)
    {
      if ((i5[8] & 1) == 0)
      {
        (*(**v192 + 80))(*v192, v192[2], v192[3], v192[4], 0, i5[7]);
      }

      v192 += 6;
    }
  }

  *(v32 + 761) = 1;
}

void sub_18F635084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 113) < 0)
  {
    operator delete(*(v46 - 136));
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Wire::initializeFormat(DSPGraph::Wire *this)
{
  if (*(this + 64) != 1)
  {
    if (!*(this + 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
      std::string::basic_string[abi:ne200100]<0>(v12, "initializeFormat");
      v4 = *(*(this + 1) + 8);
      v5 = v4 + 32;
      if (v4[55] < 0)
      {
        v5 = *v5;
      }

      v6 = (*(*v4 + 16))(v4);
      DSPGraph::strprintf("box %s %s output %u is not connected", v7, v5, v6, *(*(this + 1) + 24));
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(v12, "initializeFormat");
    v8 = *(*(this + 1) + 8);
    v9 = v8 + 32;
    if (v8[55] < 0)
    {
      v9 = *v9;
    }

    v10 = (*(*v8 + 16))(v8);
    DSPGraph::strprintf("no format was ever set on the wire from box %s %s output %u", v11, v9, v10, *(*(this + 1) + 24));
  }

  result = (*(**(this + 1) + 48))(*(this + 1), *(this + 15));
  for (i = *(this + 4); i; i = *i)
  {
    result = (*(*i[2] + 48))(i[2], *(this + 15));
  }

  return result;
}

void sub_18F635520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::setFormatOnUnit(AudioUnit *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  result = AudioUnitSetProperty(this[106], 8u, a3, a4, inData, 0x28u);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v14, "setFormatOnUnit");
    v7 = (*(*this + 2))(this);
    v8 = this + 4;
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    v9 = *&inData->mBytesPerPacket;
    v16[0] = *&inData->mSampleRate;
    v16[1] = v9;
    v17 = *&inData->mBitsPerChannel;
    CA::StreamDescription::AsString(v12, v16, *v16, *&v9);
    if (v13 >= 0)
    {
      v11 = v12;
    }

    else
    {
      v11 = v12[0];
    }

    DSPGraph::strprintf("AUBox::setFormatOnUnit %s %s : %s", v10, v7, v8, v11);
  }

  return result;
}

void sub_18F6356C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(uint64_t a1, unint64_t a2, unint64_t a3)
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

void *DSPGraph::Box::isogroup(DSPGraph::Box *a1, uint64_t a2, DSPGraph::IsoGroup *a3)
{
  result = std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(*a2, *(a2 + 8), a1);
  if (!result)
  {
    std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(a2, a1);
    DSPGraph::IsoGroup::add(a3, a1);
    (*(*a1 + 424))(a1, a2, a3);
    v7 = *(*a1 + 432);

    return v7(a1, a2, a3);
  }

  return result;
}

void *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(void *result, unint64_t a2)
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

void DSPGraph::IsoGroup::add(DSPGraph::IsoGroup *this, DSPGraph::Box *a2)
{
  std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(this + 2, a2);
  *(a2 + 2) = this;
  if (((*(a2 + 12) - *(a2 + 11)) & 0x1FFFFFFFE0) == 0 || (*(*a2 + 272))(a2))
  {
    std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(this + 7, a2);
  }

  v4 = (*(*a2 + 232))(a2);
  if (v4)
  {
    v5 = v4;
    v7 = *(this + 23);
    v6 = *(this + 24);
    if (v7 >= v6)
    {
      v14 = *(this + 22);
      v15 = (v7 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v16 = v6 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v18);
      }

      *(8 * v15) = v5;
      v8 = 8 * v15 + 8;
      v24 = *(this + 22);
      v25 = *(this + 23) - v24;
      v26 = (8 * v15 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 22);
      *(this + 22) = v26;
      *(this + 23) = v8;
      *(this + 24) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v7 = v4;
      v8 = (v7 + 1);
    }

    *(this + 23) = v8;
  }

  else
  {
    v9 = (*(*a2 + 240))(a2);
    if (v9)
    {
      v10 = v9;
      v12 = *(this + 26);
      v11 = *(this + 27);
      if (v12 >= v11)
      {
        v19 = *(this + 25);
        v20 = (v12 - v19) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v21 = v11 - v19;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v23);
        }

        v28 = (8 * v20);
        *v28 = v10;
        v13 = 8 * v20 + 8;
        v29 = *(this + 25);
        v30 = *(this + 26) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 25);
        *(this + 25) = v31;
        *(this + 26) = v13;
        *(this + 27) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v12 = v9;
        v13 = (v12 + 1);
      }

      *(this + 26) = v13;
    }
  }
}

void *std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__emplace_unique_key_args<std::unique_ptr<DSPGraph::IsoGroup>,std::unique_ptr<DSPGraph::IsoGroup>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
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

  v8 = *(*a1 + 8 * v7);
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

  return v9;
}

void *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(void *result, unint64_t a2)
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

uint64_t DSPGraph::Box::isogroupTraceInputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 64);
  v4 = *(result + 72);
  if (v3 != v4)
  {
    v7 = result;
    v8 = *(result + 64);
    do
    {
      v9 = (*(*v8 + 40))(v8);
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(v16, "isogroupTraceInputs");
        v13 = v7 + 32;
        if (v7[55] < 0)
        {
          v13 = *v13;
        }

        v14 = (*(*v7 + 16))(v7);
        DSPGraph::strprintf("box %s %s input port is not connected.", v15, v13, v14);
      }

      v10 = *(*(v9 + 8) + 8);
      v11 = (*(*v10 + 272))(v10);
      if (v11)
      {
        v12 = v11;
        v17[0] = v11;
        std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>((a3 + 96), v11);
        v12[107] = a3;
        result = (*(*v12 + 432))(v12, a2, a3);
      }

      else
      {
        result = (*(*v10 + 416))(v10, a2, a3);
      }

      v8 += 32;
      v3 += 32;
    }

    while (v8 != v4);
  }

  return result;
}

void sub_18F636678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
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
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_18F901990);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_18F901730), xmmword_18F9019A0);
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

uint64_t DSPGraph::NonFiniteProtectionBox::setParameter(uint64_t this, int a2, int a3, int a4, float a5)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10866, &v8, 191, &v7, &v6);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10877, &v8, 194, &v7, &v6);
  }

  if (a2 == 71)
  {
    atomic_store(a5 != 0.0, (this + 780));
  }

  else
  {
    if (a2 == 70)
    {
      if (a5 < 0.0)
      {
        a5 = 0.0;
      }

      v5 = (this + 776);
    }

    else
    {
      if (a2)
      {
        std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
        std::string::basic_string[abi:ne200100]<0>(&v6, "");
        DSPGraph::ThrowException(-10878, &v8, 203, &v7, &v6);
      }

      if (a5 < 0.0)
      {
        a5 = 0.0;
      }

      v5 = (this + 772);
    }

    atomic_store(LODWORD(a5), v5);
  }

  return this;
}

void sub_18F636B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::uninitialize(void *this)
{
  if (*(this + 762) == 1)
  {
    v1 = this;
    for (i = this[3]; i; i = *i)
    {
      (*(*i[2] + 584))(i[2]);
      (*(*i[2] + 616))();
    }

    for (j = v1[8]; j; j = *j)
    {
      *(j[2] + 56) = 0;
    }

    this = std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](v1 + 24);
    *(v1 + 762) = 0;
  }

  return this;
}

uint64_t DSPGraph::AUBox::uninitialize(AudioUnit *this)
{
  DSPGraph::Box::uninitialize(this);
  this[98] = this[97];
  this[101] = this[100];
  result = AudioUnitUninitialize(this[106]);
  if (result)
  {
    v3 = result;
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "uninitialize");
    std::operator+<char>();
    DSPGraph::ThrowException(v3, &v6, 2000, &v5, &v4);
  }

  return result;
}

void sub_18F636D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::uninitialize(DSPGraph::Box *this)
{
  v2 = *(this + 25);
  v3 = *(this + 26);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    *(*v2 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v4[6];
    v7 = v4[7];
    while (v7 != v6)
    {
      v9 = *--v7;
      v8 = v9;
      *v7 = 0;
      if (v9)
      {
        VPTimeFreqConverter_Dispose(v8);
      }
    }

    v4[7] = v6;
    DSPGraph::SimpleABL::free((v4 + 9));
    v2 += 8;
  }

  v10 = *(this + 28);
  v11 = *(this + 29);
  while (v10 != v11)
  {
    v12 = *v10;
    DSPGraph::SimpleABL::free((*v10 + 16));
    v13 = *(v12 + 80);
    v14 = *(v12 + 88);
    while (v14 != v13)
    {
      v16 = *--v14;
      v15 = v16;
      *v14 = 0;
      if (v16)
      {
        VPTimeFreqConverter_Dispose(v15);
      }
    }

    *(v12 + 88) = v13;
    ++v10;
  }

  result = (*(*this + 600))(this);
  if (*(this + 760) == 1)
  {
    *(this + 760) = 0;
  }

  return result;
}

void DSPGraph::Box::uninitializeAnalysis(DSPGraph::Box *this)
{
  std::mutex::lock((this + 248));
  v2 = *(this + 39);
  v3 = *(this + 40);
  while (v2 != v3)
  {
    caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 336, *(*v2 + 6));
    DSPGraph::Analyzer::uninitialize(*v2++);
  }

  std::mutex::unlock((this + 248));
}

uint64_t DSPGraph::Box::uninitializePropertyTaps(uint64_t this)
{
  v1 = *(this + 176);
  v2 = *(this + 184);
  while (v1 != v2)
  {
    *(v1 + 48) = *(v1 + 40);
    v1 += 64;
  }

  return this;
}

void DSPGraph::RingBufferBox::uninitialize(DSPGraph::RingBufferBox *this)
{
  DSPGraph::Box::uninitialize(this);

  DSPGraph::SimpleABL::free((this + 808));
}

void DSPGraph::InternalBuffer::~InternalBuffer(DSPGraph::InternalBuffer *this)
{
  *this = &unk_1F033EB20;
  DSPGraph::SimpleABL::free((this + 80));

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EB20;
  DSPGraph::SimpleABL::free((this + 80));
}

void *std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[2];
      v1[2] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void DSPGraph::Graph::unconfigure(DSPGraph::Graph *this)
{
  if (*(this + 762) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v16, "unconfigure");
    std::string::basic_string[abi:ne200100]<0>(&v15, "graph is initialized. uninitialize before unconfiguring");
    DSPGraph::ThrowException(1768843553, &v17, 814, &v16, &v15);
  }

  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 624))(i[2]);
  }

  v3 = *(this + 32);
  v4 = *(this + 33);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 176);
      v7 = *(*v3 + 184);
      while (v6 != v7)
      {
        v8 = *v6++;
        (*(*v8 + 688))(v8);
      }

      for (j = v5[14]; j; j = *j)
      {
        (*(*j[2] + 688))(j[2]);
      }

      v11 = v5[25];
      v10 = v5[26];
      while (v11 != v10)
      {
        v12 = *v11++;
        (*(*v12 + 688))(v12);
      }

      v3 += 8;
    }

    while (v3 != v4);
    v3 = *(this + 32);
  }

  *(this + 33) = v3;
  if (*(this + 30))
  {
    std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(*(this + 29));
    *(this + 29) = 0;
    v13 = *(this + 28);
    if (v13)
    {
      for (k = 0; k != v13; ++k)
      {
        *(*(this + 27) + 8 * k) = 0;
      }
    }

    *(this + 30) = 0;
  }

  *(this + 761) = 0;
}

void sub_18F6372B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::~IsoGroup(DSPGraph::IsoGroup *this)
{
  *this = &unk_1F033F6E0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F6E0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::~unordered_map[abi:ne200100](uint64_t a1)
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

void DSPGraph::NewBoxRegistry::NewBoxRegistry(DSPGraph::NewBoxRegistry *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F03315A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "gain");
  v2 = xmmword_18F9019D0;
  v3 = 0;
  v6[0] = &unk_1F0331730;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amul");
  v2 = xmmword_18F9019E0;
  v3 = 0;
  v6[0] = &unk_1F0331778;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adiv");
  v2 = xmmword_18F9019F0;
  v3 = 0;
  v6[0] = &unk_1F0331DE0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amin");
  v2 = xmmword_18F901A00;
  v3 = 0;
  v6[0] = &unk_1F0332448;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amax");
  v2 = xmmword_18F901A10;
  v3 = 0;
  v6[0] = &unk_1F03329F0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adif");
  v2 = xmmword_18F901A20;
  v3 = 0;
  v6[0] = &unk_1F0332F98;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asum");
  v2 = xmmword_18F901A30;
  v3 = 0;
  v6[0] = &unk_1F0333600;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "aabs");
  v2 = xmmword_18F901A40;
  v3 = 0;
  v6[0] = &unk_1F0333C68;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vcgn");
  v2 = xmmword_18F901A50;
  v3 = 0;
  v6[0] = &unk_1F0333CB0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbgn");
  v2 = xmmword_18F901A60;
  v3 = 0;
  v6[0] = &unk_1F0333CF8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "copy");
  v2 = xmmword_18F901A70;
  v3 = 0;
  v6[0] = &unk_1F0333D40;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sum");
  v2 = xmmword_18F901A80;
  v3 = 0;
  v6[0] = &unk_1F0333D88;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix");
  v2 = xmmword_18F901A90;
  v3 = 0;
  v6[0] = &unk_1F0333DD0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "average");
  v2 = xmmword_18F901AA0;
  v3 = 0;
  v6[0] = &unk_1F0333E18;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "test");
  v2 = xmmword_18F901AB0;
  v3 = 0;
  v6[0] = &unk_1F0333E60;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "src");
  v2 = xmmword_18F901AC0;
  v3 = 0;
  v6[0] = &unk_1F0333EA8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reblocker");
  v2 = xmmword_18F901AD0;
  v3 = 0;
  v6[0] = &unk_1F0333EF0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "freqsrc");
  v2 = xmmword_18F901AE0;
  v3 = 0;
  v6[0] = &unk_1F0333F38;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fft");
  v2 = xmmword_18F9019B0;
  v3 = 0;
  v6[0] = &unk_1F0333F80;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "join");
  v2 = xmmword_18F901AF0;
  v3 = 0;
  v6[0] = &unk_1F0333FC8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split");
  v2 = xmmword_18F901B00;
  v3 = 0;
  v6[0] = &unk_1F0334010;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chancopy");
  v2 = xmmword_18F901B10;
  v3 = 0;
  v6[0] = &unk_1F0334058;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "delay");
  v2 = xmmword_18F901B20;
  v3 = 0;
  v6[0] = &unk_1F03340A0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dead");
  v2 = xmmword_18F901B30;
  v3 = 0;
  v6[0] = &unk_1F03340E8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "constant");
  v2 = xmmword_18F901B40;
  v3 = 0;
  v6[0] = &unk_1F0334130;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbcontrol");
  v2 = xmmword_18F901B50;
  v3 = 0;
  v6[0] = &unk_1F0334178;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "denormalzero");
  v2 = xmmword_18F901B60;
  v3 = 0;
  v6[0] = &unk_1F03341C0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mantissarandom");
  v2 = xmmword_18F9017D0;
  v3 = 0;
  v6[0] = &unk_1F0334208;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volumecurve");
  v2 = xmmword_18F901760;
  v3 = 0;
  v6[0] = &unk_1F0334250;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nfnp");
  v2 = xmmword_18F901B70;
  v3 = 0;
  v6[0] = &unk_1F0334528;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "srlconverter");
  v2 = xmmword_18F901B80;
  v3 = 0;
  v6[0] = &unk_1F0334570;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_31::operator()<char const*,int,DSPGraph::CalculationBox::OperatorDomain,DSPGraph::CalculationBox::OperatorCodomain,DSPGraph::CalculationBox::Operator>(this, "parameter_add", 1885298475);
}

void sub_18F63875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

void DSPGraph::NewBoxRegistry::add(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = (a1 + 8);
  v9 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v10 = v9;
  v11 = *(a1 + 16);
  if (!*&v11)
  {
    goto LABEL_18;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *&v11)
    {
      v14 = v9 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v9;
  }

  v15 = *(*v8 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v16 + 2, a2))
  {
    goto LABEL_17;
  }

  std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=((v16 + 5), a4);
  v18 = a3[1] + *a3 + a3[2];
  v19 = *(a1 + 56);
  if (!*&v19)
  {
    goto LABEL_40;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = a3[1] + *a3 + a3[2];
    if (v18 >= *&v19)
    {
      v21 = v18 % *&v19;
    }
  }

  else
  {
    v21 = (*&v19 - 1) & v18;
  }

  v22 = *(*(a1 + 48) + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v24 = v23[1];
    if (v24 != v18)
    {
      if (v20.u32[0] > 1uLL)
      {
        if (v24 >= *&v19)
        {
          v24 %= *&v19;
        }
      }

      else
      {
        v24 &= *&v19 - 1;
      }

      if (v24 != v21)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v23[2] != *a3 || *(v23 + 6) != a3[2])
    {
LABEL_39:
      v23 = *v23;
      if (!v23)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=((v23 + 5), a4);
  v27 = *(a1 + 96);
  v26 = *(a1 + 104);
  if (v27 >= v26)
  {
    v29 = *(a1 + 88);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v29) >> 4);
    if (v30 + 1 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v29) >> 4);
    v32 = 2 * v31;
    if (2 * v31 <= v30 + 1)
    {
      v32 = v30 + 1;
    }

    if (v31 >= 0x2AAAAAAAAAAAAAALL)
    {
      v33 = 0x555555555555555;
    }

    else
    {
      v33 = v32;
    }

    v51 = a1 + 88;
    if (v33)
    {
      std::allocator<std::pair<std::string,AudioComponentDescription>>::allocate_at_least[abi:ne200100](v33);
    }

    v36 = 48 * v30;
    v47 = 0;
    v48 = v36;
    v37 = 0;
    v49 = v36;
    v50 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v36, *a2, *(a2 + 8));
      v39 = v48;
      v40 = v49;
      v37 = v50;
    }

    else
    {
      v38 = *a2;
      *(v36 + 16) = *(a2 + 16);
      *v36 = v38;
      v39 = v36;
      v40 = v36;
    }

    v41 = *a3;
    *(v36 + 40) = a3[4];
    *(v36 + 24) = v41;
    v35 = v40 + 48;
    v42 = *(a1 + 88);
    v43 = *(a1 + 96) - v42;
    v44 = v39 - v43;
    memcpy((v39 - v43), v42, v43);
    v45 = *(a1 + 88);
    *(a1 + 88) = v44;
    *(a1 + 96) = v35;
    v46 = *(a1 + 104);
    *(a1 + 104) = v37;
    v49 = v45;
    v50 = v46;
    v47 = v45;
    v48 = v45;
    std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(&v47);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 96), *a2, *(a2 + 8));
    }

    else
    {
      v28 = *a2;
      *(v27 + 16) = *(a2 + 16);
      *v27 = v28;
    }

    v34 = *a3;
    *(v27 + 40) = a3[4];
    *(v27 + 24) = v34;
    v35 = v27 + 48;
    *(a1 + 96) = v27 + 48;
  }

  *(a1 + 96) = v35;
}

void sub_18F638EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6391D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void std::allocator<std::pair<std::string,AudioComponentDescription>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSPGraph::RingBuffer::alloc(DSPGraph::RingBuffer *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  if (a4 > a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(v16, "alloc");
    DSPGraph::strprintf("numZeroes is greater than buffer capacity %u > %u", v15, a4, a3);
  }

  *(this + 4) = a3;
  v11 = caulk::numeric::exceptional_add<unsigned int>(a3, 1);
  *(this + 5) = v11;
  *(this + 6) = a5;
  *(this + 4) = 0;
  *(this + 7) = 0;
  v12 = caulk::numeric::exceptional_mul<unsigned int>(v11, a5);
  if (a6)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  DSPGraph::SimpleABL::alloc(this, v13, v12, 0);
  if (a4)
  {

    DSPGraph::RingBuffer::initialize(this, a4);
  }
}

void sub_18F639620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GraphInput::interleaved(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return (*(*((*(*v2 + 40))(v2) + 120) + 12) & 0x20) == 0;
}

void sub_18F639748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::numeric::exceptional_add<unsigned int>(int a1, int a2)
{
  v2 = __CFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

void DSPGraph::SimpleABL::alloc(DSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3, int a4)
{
  DSPGraph::SimpleABL::free(this);
  if (a2 && a3)
  {
    *(this + 8) = 1;
    if (a4)
    {
      v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
      *this = v8;
      if (!v8)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList allocation failed");
        DSPGraph::ThrowException(-108, &v16, 548, &v15, &v14);
      }

      *v8 = 1;
      v8[2] = a2;
      v8[3] = a3;
      v9 = malloc_type_calloc(1uLL, a3, 0xA3BC3272uLL);
      *(*this + 16) = v9;
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList data allocation failed");
        DSPGraph::ThrowException(-108, &v16, 555, &v15, &v14);
      }
    }

    else
    {
      v10 = malloc_type_calloc(1uLL, 16 * (a2 - 1) + 24, 0x10800404ACF7207uLL);
      *this = v10;
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList allocation failed");
        DSPGraph::ThrowException(-108, &v16, 560, &v15, &v14);
      }

      v11 = 0;
      *v10 = a2;
      do
      {
        v12 = &v10[v11];
        v12[2] = 1;
        v12[3] = a3;
        v13 = malloc_type_calloc(1uLL, a3, 0x4741BD24uLL);
        v10 = *this;
        *(*this + v11 * 4 + 16) = v13;
        if (!v13)
        {
          std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
          std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList data allocation failed");
          DSPGraph::ThrowException(-108, &v16, 568, &v15, &v14);
        }

        v11 += 4;
      }

      while (4 * a2 != v11);
    }
  }
}

void sub_18F639A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::topologicalSort(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 249) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "topologicalSort");
    std::string::basic_string[abi:ne200100]<0>(&v16, "IsoGroup::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    DSPGraph::ThrowException(1953460257, &v18, 251, &v17, &v16);
  }

  if ((*(a1 + 248) & 1) == 0)
  {
    *(a1 + 249) = 1;
    for (i = *(a1 + 112); i; i = *i)
    {
      DSPGraph::IsoGroup::topologicalSort(*(i[2] + 848), a2);
    }

    v5 = *(a1 + 224);
    *(a1 + 249) = 0;
    *(a1 + 232) = v5;
    for (j = *(a1 + 72); j; j = *j)
    {
      (*(*j[2] + 400))(j[2], a1, a1 + 224, a2);
    }

    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = a1;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a1;
      v9 = (v8 + 1);
    }

    *(a2 + 8) = v9;
    *(a1 + 248) = 1;
  }
}

void sub_18F639CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::topologicalSort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 746) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "topologicalSort");
    std::string::basic_string[abi:ne200100]<0>(&v17, "Box::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    DSPGraph::ThrowException(1953460257, &v19, 487, &v18, &v17);
  }

  if ((*(a1 + 745) & 1) == 0)
  {
    v5 = *(a1 + 16);
    if (v5 == a2)
    {
      *(a1 + 746) = 1;
      (*(*a1 + 408))(a1, a3, a4);
      *(a1 + 746) = 0;
      v8 = *(a3 + 8);
      v7 = *(a3 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a3) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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
          std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v13);
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
      *(a1 + 745) = 1;
    }

    else
    {

      DSPGraph::IsoGroup::topologicalSort(v5, a4);
    }
  }
}

uint64_t DSPGraph::Box::sortUpstream(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 64);
  v7 = *(result + 72);
  if (v6 != v7)
  {
    result = *(result + 64);
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 4;
      v10 = (*(v9 + 40))(result);
      v11 = v5[2];
      (*(**(*(v10 + 8) + 8) + 400))();
      v6 += 4;
      result = v8;
    }

    while (v8 != v7);
  }

  v12 = v5[19];
  v13 = v5[20];
  while (v12 != v13)
  {
    if (v12[36] == 1)
    {
      result = (*(**v12 + 400))(*v12, v5[2], a2, a3);
    }

    v12 += 40;
  }

  v14 = v5[22];
  v15 = v5[23];
  while (v14 != v15)
  {
    if (v14[36] == 1)
    {
      result = (*(**v14 + 400))(*v14, v5[2], a2, a3);
    }

    v14 += 64;
  }

  for (i = v5[16]; i; i = *i)
  {
    result = (*(*i[2] + 400))(i[2], v5[2], a2, a3);
  }

  return result;
}

void DSPGraph::IsoGroup::checkIsochronicity(DSPGraph::IsoGroup *this)
{
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "IsoGroup::checkIsochronicity", buf, 2u);
  }

  for (i = *(this + 4); i; i = *i)
  {
    v4 = i[2];
    v5 = v4[8];
    v6 = v4[9];
    if (v5 != v6)
    {
      v7 = v4[8];
      do
      {
        v8 = *(this + 66);
        if (v8 != **((*(*v7 + 40))(v7) + 120))
        {
          if (*(this + 66))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v32, "checkIsochronicity");
            v20 = *(this + 66);
            v21 = **((*(*v7 + 40))(v7) + 120);
            v22 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("sample rates in group do not match  %u %u %s", v23, v20, v21, v22);
          }

          *(this + 66) = **((*(*v7 + 40))(v7) + 120);
        }

        v9 = *(this + 67);
        if (v9 != *(*((*(*v7 + 40))(v7) + 120) + 40))
        {
          if (*(this + 67) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v32, "checkIsochronicity");
            v16 = *(this + 67);
            v17 = *(*((*(*v7 + 40))(v7) + 120) + 40);
            v18 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("block sizes in group do not match  %u %u %s", v19, v16, v17, v18);
          }

          *(this + 67) = *(*((*(*v7 + 40))(v7) + 120) + 40);
        }

        v7 += 32;
        v5 += 32;
      }

      while (v7 != v6);
    }

    v10 = v4[11];
    v11 = v4[12];
    if (v10 != v11)
    {
      v12 = v4[11];
      do
      {
        v13 = *(this + 66);
        if (v13 != **((*(*v12 + 40))(v12) + 120) && !(*(*v4 + 280))(v4) && !(*(*v4 + 288))(v4))
        {
          if (*(this + 66))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v32, "checkIsochronicity");
            v28 = *(this + 66);
            v29 = **((*(*v12 + 40))(v12) + 120);
            v30 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("sample rates in group do not match  %u %u %s", v31, v28, v29, v30);
          }

          *(this + 66) = **((*(*v12 + 40))(v12) + 120);
        }

        v14 = *(this + 67);
        if (v14 != *(*((*(*v12 + 40))(v12) + 120) + 40) && !(*(*v4 + 272))(v4))
        {
          if (*(this + 67) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v32, "checkIsochronicity");
            v24 = *(this + 67);
            v25 = *(*((*(*v12 + 40))(v12) + 120) + 40);
            v26 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("block sizes in group do not match  %u %u %s", v27, v24, v25, v26);
          }

          *(this + 67) = *(*((*(*v12 + 40))(v12) + 120) + 40);
        }

        v12 += 32;
        v10 += 32;
      }

      while (v12 != v11);
    }
  }

  v15 = *(this + 67);
  if (v15 == 1)
  {
    v15 = (*(*(this + 1) + 692) + *(*(this + 1) + 688) * *(this + 66) - 1) / *(*(this + 1) + 692);
  }

  *(this + 68) = v15;
  *(this + 36) = 0;
}

void sub_18F63A790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

void DSPGraph::Graph::initialize(DSPGraph::Graph *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  DSPGraph::Graph::initializeWithFlags(this, v2);
}

void DSPGraph::Graph::initializeWithFlags(DSPGraph::Graph *this, int a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
  }

  v4 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, ">>>>>>>>>>>> INITIALIZE GRAPH", buf, 2u);
  }

  if ((*(this + 762) & 1) == 0)
  {
    if ((*(this + 761) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v54, "initializeWithFlags");
      std::string::basic_string[abi:ne200100]<0>(&v61, "graph is not configured. configure the graph before initializing");
      DSPGraph::ThrowException(1667655457, buf, 743, &v54, &v61);
    }

    if ((a2 & 0x30) != 0)
    {
      if ((a2 & 0x30) == 0x30)
      {
        if (DSPGraph::getLog(void)::onceToken != -1)
        {
          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
        }

        v53 = DSPGraph::getLog(void)::gLog;
        if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18F5DF000, v53, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: Init flag error: only one kDSPGraph_EnableNonFiniteValidateMode can be set at a time!", buf, 2u);
        }

        qword_1EAD0BBC0 = buf;
        __break(1u);
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *buf = &unk_1F033F718;
      *&buf[8] = a2;
      __p[0] = buf;
      for (i = *(this + 3); i; i = *i)
      {
        v6 = i[2];
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v55, buf);
        DSPGraph::Box::addRenderCallback(v6, v55, 1u, 1);
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v55);
      }

      std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](buf);
    }

    *(this + 88) = 0;
    *(this + 91) = 0;
    v7 = *(this + 32);
    v8 = *(this + 33);
    if (v7 != v8)
    {
      do
      {
        DSPGraph::IsoGroup::initializeBoxes(*v7++);
      }

      while (v7 != v8);
      v7 = *(this + 32);
      v8 = *(this + 33);
    }

    while (v7 != v8)
    {
      v9 = *(*v7 + 28);
      v10 = *(*v7 + 29);
      while (v9 != v10)
      {
        (*(**v9 + 608))(*v9);
        ++v9;
      }

      ++v7;
    }

    if ((a2 & 2) != 0)
    {
      v11 = 0uLL;
      memset(buf, 0, sizeof(buf));
      v12 = *(this + 3);
      if (v12)
      {
        do
        {
          *&v54 = v12[2];
          std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](buf, &v54);
          v12 = *v12;
        }

        while (v12);
        v11 = *buf;
      }

      v13 = v11;
      if (v11 != *(&v11 + 1))
      {
        v14 = v11;
        do
        {
          v15 = *v14;
          DSPGraph::Box::upstreamLatencyInTicks(*v14);
          (*(*v15 + 384))(v15);
          ++v14;
        }

        while (v14 != *(&v13 + 1));
        if (v13 != *(&v13 + 1))
        {
          v16 = v13;
          do
          {
            v17 = *v16;
            (*(**v16 + 376))(*v16);
            if (*(v17 + 760) == 1)
            {
              *(v17 + 760) = 0;
            }

            ++v16;
          }

          while (v16 != *(&v13 + 1));
        }
      }

      if (v13)
      {
        operator delete(v13);
      }
    }

    if ((a2 & 8) != 0)
    {
      v18 = *(this + 763);
    }

    else
    {
      v18 = 0;
    }

    *(this + 764) = v18 & 1;
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    v19 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = DSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
      {
        v21 = (this + 408);
        if (*(this + 431) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    *buf = this;
    *&buf[8] = 0u;
    *__p = 0u;
    LODWORD(v58) = 1065353216;
    memset(v59, 0, sizeof(v59));
    v60 = 1065353216;
    v22 = *(this + 32);
    v23 = *(this + 33);
    while (v22 != v23)
    {
      v24 = *(*v22 + 224);
      v25 = *(*v22 + 232);
      while (v24 != v25)
      {
        v26 = *v24;
        if ((*(**v24 + 8))(*v24))
        {
          DSPGraph::BufferColorist::consumeInputs(buf, v26);
          DSPGraph::BufferColorist::allocOutputs(buf, v26[11], v26[12]);
        }

        else
        {
          DSPGraph::BufferColorist::allocOutputs(buf, v26[11], v26[12]);
          DSPGraph::BufferColorist::consumeInputs(buf, v26);
        }

        ++v24;
      }

      v22 += 8;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(v59);
    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(&buf[8]);
    for (j = *(this + 8); j; j = *j)
    {
      v28 = j[2];
      v29 = v28[15];
      v30 = v29[10];
      if (v30 == 1)
      {
        v30 = *(*(*(*(v28[4] + 16) + 8) + 16) + 272);
      }

      v31 = v28[7];
      v32 = v29[2];
      v33 = v29[4];
      v34 = 2 * v30 * v33;
      v35 = v33 * v30;
      if (v32 == 1819304813)
      {
        v33 = v35;
      }

      if (v32 == 1718773105)
      {
        v33 = v34;
      }

      if (v33 <= *(v31 + 100))
      {
        v33 = *(v31 + 100);
      }

      *(v31 + 100) = v33;
    }

    if ((*(this + 764) & 1) == 0)
    {
      v50 = *(this + 24);
      v51 = *(this + 25);
      while (v50 != v51)
      {
        v52 = *v50;
        DSPGraph::SimpleABL::free((*v50 + 80));
        DSPGraph::SimpleABL::alloc((v52 + 80), *(v52 + 96), *(v52 + 100), *(v52 + 108));
        ++v50;
      }
    }

    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v36 = DSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
      {
        v37 = (this + 408);
        if (*(this + 431) < 0)
        {
          v37 = *v37;
        }

        *buf = 136315138;
        *&buf[4] = v37;
        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v36, OS_SIGNPOST_INTERVAL_END, v19, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    v38 = *(this + 124);
    v39 = *(this + 125);
    while (v38 != v39)
    {
      v40 = *(v38 + 32);
      v41 = *(v38 + 40);
      if (v40 != v41)
      {
        v42 = (v40 + 8);
        do
        {
          v43 = (*(*this + 64))(this, LODWORD(v42[-1].__end_cap_.__value_));
          v44 = v43;
          if ((v45 & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v54, "initializeBridges");
            std::string::basic_string[abi:ne200100]<0>(&v61, "graph bridge property size could not be queried");
            DSPGraph::ThrowException(v44, buf, 2490, &v54, &v61);
          }

          v46 = v42->__end_ - v42->__begin_;
          if (v43 <= v46)
          {
            if (v43 < v46)
            {
              v42->__end_ = &v42->__begin_[v43];
            }
          }

          else
          {
            std::vector<unsigned char>::__append(v42, v43 - v46);
          }

          v47 = v42 + 1;
          v42 = (v42 + 32);
        }

        while (v47 != v41);
      }

      v38 += 56;
    }

    if ((a2 & 4) != 0)
    {
      operator new();
    }

    *(this + 762) = 1;
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    v48 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_DEBUG, "<<<<<<<<<<<< INITIALIZE GRAPH", buf, 2u);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void sub_18F63B690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::RingBufferBox::initialize(DSPGraph::RingBufferBox *this)
{
  v23 = *MEMORY[0x1E69E9840];
  DSPGraph::Box::initialize(this);
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10133);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v9 = (*(*this + 648))(this);
    v10 = *(this + 194);
    v11 = *(this + 193);
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    v13 = 134219010;
    v14 = this + 808;
    v15 = 1024;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v11;
    v21 = 2080;
    v22 = v12;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "RingBufferBox::initialize %p   ch %u   nz %4u   cap %4u  %s", &v13, 0x28u);
  }

  v3 = (*(*this + 696))(this);
  v4 = (*(*this + 648))(this);
  v5 = *(this + 193);
  if (v3)
  {
    v3 = *(this + 194);
  }

  v6 = (*(*this + 656))(this);
  v7 = (*(*this + 640))(this);
  DSPGraph::RingBuffer::alloc((this + 808), v4, v5, v3, v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

void DSPGraph::GraphInput::initialize(DSPGraph::GraphInput *this)
{
  if (*(this + 913) == 1)
  {
    if (*(this + 115))
    {
      v2 = *(this + 115);
    }

    else
    {
      v2 = 4130;
    }

    v3 = (this + 888);
    if (*(this + 911) < 0)
    {
      v3 = *v3;
    }

    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v12, "out");
      v10 = (this + 32);
      if (*(this + 55) < 0)
      {
        v10 = *v10;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v9, v10, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v5 = *(*(this + 1) + 940);
    v6 = *((*(*v4 + 40))(v4) + 120);
    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
    {
      dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_6591);
    }

    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
    {
      v7 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v2, 0, v3, v5, 0, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(this + 110);
    *(this + 110) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v7 = *(this + 110);
    }

    if (!v7)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_GraphIOBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v12, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v11, "NewAudioCapturer for DSP graph raw input returned null");
      DSPGraph::ThrowException(1852204065, &v13, 107, &v12, &v11);
    }
  }

  DSPGraph::RingBufferBox::initialize(this);
}

void sub_18F63BBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphInput::numChannels(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F63BD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
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

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t a1, size_t __n)
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

char *DSPGraph::Box::isogroupTraceOutputs(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 11);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      if (!(*(*v3 + 40))(v3))
      {
        std::string::basic_string[abi:ne200100]<0>(v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(v15, "isogroupTraceOutputs");
        v12 = v7 + 32;
        if (v7[55] < 0)
        {
          v12 = *v12;
        }

        v13 = (*(*v7 + 16))(v7);
        DSPGraph::strprintf("box %s %s output port is not connected.", v14, v12, v13);
      }

      result = (*(*v3 + 40))(v3);
      for (i = *(result + 4); i; i = *i)
      {
        v9 = *(i[2] + 8);
        v10 = (*(*v9 + 272))(v9);
        if (v10)
        {
          v11 = v10;
          v16[0] = v10;
          std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>((a3 + 136), v10);
          *(v11 + 848) = a3;
        }

        result = (*(*v9 + 416))(v9, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_18F63C220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetOutputFormatListFromCodec(OpaqueAudioComponentInstance *a1, const AudioFormatInfo *a2, unsigned int *a3, AudioFormatListItem *a4)
{
  outSize = 0;
  if (!a3)
  {
    return 561211770;
  }

  PropertyInfo = AudioCodecGetPropertyInfo(a1, 0x6F663469u, &outSize, 0);
  if (!PropertyInfo)
  {
    v9 = outSize;
    v10 = outSize / 0x28;
    if (a4)
    {
      outSize = 40 * v10;
      if (v9 >= 0x28)
      {
        v12 = 40 * v10;
        v13 = malloc_type_malloc(v12, 0xD7524C8FuLL);
        if (!v13)
        {
          exception = __cxa_allocate_exception(8uLL);
          v24 = std::bad_alloc::bad_alloc(exception);
        }

        v14 = v13;
        bzero(v13, v12);
        v15 = *&a2->mASBD.mSampleRate;
        v16 = *&a2->mASBD.mBytesPerPacket;
        v14[4] = *&a2->mASBD.mBitsPerChannel;
        *v14 = v15;
        *(v14 + 1) = v16;
        PropertyInfo = AudioCodecGetProperty(a1, 0x6F663469u, &outSize, v14);
        if (!PropertyInfo)
        {
          LODWORD(v17) = outSize / 0x28;
          v18 = *a3 / 0x30;
          if (v18 >= outSize / 0x28)
          {
            v17 = v17;
          }

          else
          {
            v17 = v18;
          }

          if (v17)
          {
            v19 = v14;
            v20 = v17;
            do
            {
              v21 = *v19;
              v22 = *(v19 + 1);
              *&a4->mASBD.mBitsPerChannel = v19[4];
              *&a4->mASBD.mSampleRate = v21;
              *&a4->mASBD.mBytesPerPacket = v22;
              a4->mChannelLayoutTag = 0;
              ++a4;
              v19 += 5;
              --v20;
            }

            while (v20);
          }

          *a3 = 48 * v17;
        }

        free(v14);
      }

      else
      {
        return 2003329396;
      }
    }

    else
    {
      PropertyInfo = 0;
      *a3 = 48 * v10;
    }
  }

  return PropertyInfo;
}

void AudioCodecAutoDisposer::~AudioCodecAutoDisposer(OpaqueAudioComponentInstance **this)
{
  v1 = *this;
  if (v1)
  {
    AudioComponentInstanceDispose(v1);
  }
}

uint64_t acv2::ConverterRegistry::GetDecoders(acv2::ConverterRegistry **this, unsigned int a2, unsigned int *a3, char *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  acv2::ConverterRegistry::MakeDecoderFactories(this, a2, 1819304813);
  if (a4)
  {
    if (a3)
    {
      v8 = *a3;
      v10 = this[1];
      v9 = this[2];
      if (v10 != v9 && v8 >= 0xC)
      {
        v24 = 0;
        v25 = v8 / 0xC;
        v26 = (v10 + 8);
        do
        {
          v27 = *(v26 - 1);
          v30 = *(v27 + 16);
          v28 = (v27 + 16);
          v29 = v30;
          v31 = v30 == 1852597349 || v29 == 1633969507;
          if (v31 && *(*(v26 - 1) + 20) == a2)
          {
            v32 = &a4[12 * v24++];
            v33 = *v28;
            *(v32 + 2) = *(v28 + 2);
            *v32 = v33;
            v9 = this[2];
          }

          if (v26 == v9)
          {
            break;
          }

          v26 = (v26 + 8);
        }

        while (v24 < v25);
        v12 = 12 * v24;
      }

      else
      {
        v12 = 0;
      }

      v17 = 0;
      *a3 = v12;
    }

    else
    {
      v17 = 561211770;
    }
  }

  else
  {
    v13 = this[1];
    v14 = this[2];
    if (v13 == v14)
    {
LABEL_16:
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v17 = 1718449215;
      v18 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v19.i32[0] = bswap32(a2);
        v20 = vzip1_s8(v19, v19);
        v21.i64[0] = 0x1F0000001FLL;
        v21.i64[1] = 0x1F0000001FLL;
        v22.i64[0] = 0x5F0000005FLL;
        v22.i64[1] = 0x5F0000005FLL;
        v23 = vbsl_s8(vmovn_s32(vcgtq_u32(v22, vsraq_n_s32(v21, vshlq_n_s32(vmovl_u16(v20), 0x18uLL), 0x18uLL))), v20, 0x2E002E002E002ELL);
        v37 = 4;
        LODWORD(__p) = vuzp1_s8(v23, v23).u32[0];
        BYTE4(__p) = 0;
        *buf = 136315906;
        v39 = "ConverterFactory.cpp";
        v40 = 1024;
        v41 = 587;
        v42 = 2080;
        p_p = &__p;
        v44 = 1024;
        v45 = a2;
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d no decoder found for format ID '%s' (%d)", buf, 0x22u);
        if (v37 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      while (1)
      {
        v15 = *(*v13 + 16);
        v16 = v15 == 1852597349 || v15 == 1633969507;
        if (v16 && *(*v13 + 20) == a2)
        {
          break;
        }

        v13 = (v13 + 8);
        if (v13 == v14)
        {
          goto LABEL_16;
        }
      }

      v17 = 0;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t acv2::ConverterRegistry::MakeDecoderFactories(acv2::ConverterRegistry **this, int a2, int a3)
{
  if (acv2::ConverterRegistry::HaveDecoderFactory(this[1], this[2], a2, a3))
  {
    return 0;
  }

  if (a2 == 1970037111)
  {
    operator new();
  }

  if (a2 == 1634492791)
  {
    operator new();
  }

  LODWORD(v7) = vdup_n_s32(0x61646563u).u32[0];
  HIDWORD(v7) = a2;

  return acv2::ConverterRegistry::MakeFactories(this, 0, a3, v7);
}

uint64_t acv2::ConverterRegistry::GetDecodersSize(acv2::ConverterRegistry **this, int a2, unsigned int *a3)
{
  acv2::ConverterRegistry::MakeDecoderFactories(this, a2, 1819304813);
  v6 = this[1];
  v7 = this[2];
  if (v6 == v7)
  {
    v11 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v8 = 0;
  do
  {
    v9 = *(*v6 + 16);
    v10 = v9 == 1852597349 || v9 == 1633969507;
    if (v10 && *(*v6 + 20) == a2)
    {
      ++v8;
    }

    v6 = (v6 + 8);
  }

  while (v6 != v7);
  v11 = 12 * v8;
  if (a3)
  {
LABEL_12:
    *a3 = v11;
  }

  return 0;
}

uint64_t acv2::ConverterRegistry::HaveDecoderFactory(acv2::ConverterRegistry *this, acv2::ConverterRegistry *a2, int a3, int a4)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *this;
    if (*(*this + 12) == a4 && *(v4 + 20) == a3)
    {
      v5 = *(v4 + 16);
      if (v5 == 1633969507 || v5 == 1852597349)
      {
        break;
      }
    }

    this = (this + 8);
    if (this == a2)
    {
      return 0;
    }
  }

  return 1;
}

void newAudioConverterOOP(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, unsigned int a3, const AudioClassDescription *a4, int a5)
{
  if ((~a5 & 6) != 0)
  {
    task_info_outCnt.val[0] = 8;
    if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, &task_info_out, task_info_outCnt.val))
    {
      task_info_outCnt = task_info_out;
      v10 = SecTaskCreateWithAuditToken(0, &task_info_outCnt);
      if (v10)
      {
        v11 = v10;
        v12 = SecTaskCopyValueForEntitlement(v10, @"com.apple.coreaudio.LoadConvertersInProcessXPC", 0);
        if (v12)
        {
          v13 = v12;
          v14 = CFGetTypeID(v12);
          v15 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v13) != 0;
          CFRelease(v13);
        }

        else
        {
          v15 = 0;
        }

        CFRelease(v11);
        if ((a5 & 0x20000000) == 0 && v15)
        {
          newAudioConverterInProcessXPC(a1, a2, a3, a4);
        }
      }

      {
        switchToPooledRendererFlow(void)::usePooledRenderersCodepath = _os_feature_enabled_impl();
      }

      if (switchToPooledRendererFlow(void)::usePooledRenderersCodepath == 1)
      {
        operator new();
      }

      operator new();
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -50;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void FormatChecker::FormatChecker(FormatChecker *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_36:
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v23 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *task_info_outCnt = 136315394;
      *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
      *&task_info_outCnt[12] = 1024;
      *&task_info_outCnt[14] = 253;
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d inSourceFormat == NULL", task_info_outCnt, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (!a3)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v25 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *task_info_outCnt = 136315394;
      *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
      *&task_info_outCnt[12] = 1024;
      *&task_info_outCnt[14] = 254;
      _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d inDestinationFormat == NULL", task_info_outCnt, 0x12u);
    }

    v26 = __cxa_allocate_exception(4uLL);
    *v26 = -50;
    __cxa_throw(v26, MEMORY[0x1E69E5478], 0);
  }

  if (!MinimalSafetyCheck(a2) || (MinimalSafetyCheck(a3) & 1) == 0)
  {
    v35 = __cxa_allocate_exception(4uLL);
    *v35 = -50;
    __cxa_throw(v35, MEMORY[0x1E69E5478], 0);
  }

  v5 = 0;
  mFormatID = a3->mFormatID;
  v48[0] = a2->mFormatID;
  v48[1] = mFormatID;
  do
  {
    v7 = v48[v5];
    if (v7 > 1885564202)
    {
      if (v7 == 1885564203 || v7 == 1970037111)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 1634492791 || v7 == 1819304813)
    {
      goto LABEL_17;
    }

    if ((v5 * 4))
    {
      v10 = 1634037347;
    }

    else
    {
      v10 = 1633969507;
    }

    inDesc.componentType = v10;
    inDesc.componentSubType = v7;
    *&inDesc.componentManufacturer = 1634758764;
    inDesc.componentFlagsMask = 0;
    if (!AudioComponentFindNext(0, &inDesc))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v27 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v28.i32[0] = bswap32(v7);
        v29 = vzip1_s8(v28, v28);
        v30.i64[0] = 0x1F0000001FLL;
        v30.i64[1] = 0x1F0000001FLL;
        v31.i64[0] = 0x5F0000005FLL;
        v31.i64[1] = 0x5F0000005FLL;
        BYTE7(v42) = 4;
        v32 = vbsl_s8(vmovn_s32(vcgtq_u32(v31, vsraq_n_s32(v30, vshlq_n_s32(vmovl_u16(v29), 0x18uLL), 0x18uLL))), v29, 0x2E002E002E002ELL);
        task_info_out[0] = vuzp1_s8(v32, v32).u32[0];
        LOBYTE(task_info_out[1]) = 0;
        *task_info_outCnt = 136316162;
        v33 = "encoder";
        *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
        *&task_info_outCnt[12] = 1024;
        *&task_info_outCnt[14] = 276;
        *&task_info_outCnt[18] = 2080;
        if (!(v5 * 4))
        {
          v33 = "decoder";
        }

        *&task_info_outCnt[20] = v33;
        *&task_info_outCnt[28] = 2080;
        *&task_info_outCnt[30] = task_info_out;
        v46 = 2048;
        v47 = this;
        _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d The client can't access the audio %s %s requested for converter ->  %p", task_info_outCnt, 0x30u);
        if (SBYTE7(v42) < 0)
        {
          operator delete(*task_info_out);
        }
      }

      v34 = __cxa_allocate_exception(4uLL);
      *v34 = 1718449215;
      __cxa_throw(v34, MEMORY[0x1E69E5478], 0);
    }

    v43 = 1969977198;
    AudioFormatEncryptedFormatTranslator::DecryptFormatID(v7, &v43);
    if (v43 != 1969977198)
    {
      *task_info_out = 0u;
      v42 = 0u;
      *task_info_outCnt = 8;
      if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_36;
      }

      *task_info_outCnt = *task_info_out;
      *&task_info_outCnt[16] = v42;
      if (sandbox_check_by_audit_token() || (*task_info_outCnt = *task_info_out, *&task_info_outCnt[16] = v42, sandbox_check_by_audit_token()))
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v11 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          v12.i32[0] = bswap32(a2->mFormatID);
          v13 = vzip1_s8(v12, v12);
          v14.i64[0] = 0x1F0000001FLL;
          v14.i64[1] = 0x1F0000001FLL;
          v15.i64[0] = 0x1F0000001FLL;
          v15.i64[1] = 0x1F0000001FLL;
          v16.i64[0] = 0x5F0000005FLL;
          v16.i64[1] = 0x5F0000005FLL;
          v17 = vbsl_s8(vmovn_s32(vcgtq_u32(v16, vsraq_n_s32(v15, vshlq_n_s32(vmovl_u16(v13), 0x18uLL), 0x18uLL))), v13, 0x2E002E002E002ELL);
          v40 = 4;
          v18 = vuzp1_s8(v17, v17);
          LODWORD(v39) = v18.i32[0];
          BYTE4(v39) = 0;
          v18.i32[0] = bswap32(a3->mFormatID);
          v19 = vzip1_s8(v18, v18);
          v38 = 4;
          v20 = vbsl_s8(vmovn_s32(vcgtq_u32(v16, vsraq_n_s32(v14, vshlq_n_s32(vmovl_u16(v19), 0x18uLL), 0x18uLL))), v19, 0x2E002E002E002ELL);
          LODWORD(__p) = vuzp1_s8(v20, v20).u32[0];
          BYTE4(__p) = 0;
          *task_info_outCnt = 136316162;
          *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
          *&task_info_outCnt[12] = 1024;
          *&task_info_outCnt[14] = 296;
          *&task_info_outCnt[18] = 2080;
          *&task_info_outCnt[20] = &v39;
          *&task_info_outCnt[28] = 2080;
          *&task_info_outCnt[30] = &__p;
          v46 = 2048;
          v47 = this;
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d The client lacks permissions for dealing with encrypted codecs,required to convert from %s to %s, as requested for converter ->  %p", task_info_outCnt, 0x30u);
          if (v38 < 0)
          {
            operator delete(__p);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }
        }

        v21 = __cxa_allocate_exception(4uLL);
        *v21 = 1718449215;
        __cxa_throw(v21, MEMORY[0x1E69E5478], 0);
      }
    }

LABEL_17:
    ++v5;
  }

  while (v5 != 2);
  v22 = *MEMORY[0x1E69E9840];
}

void AudioConverterClientBufferManager::AudioConverterClientBufferManager(AudioConverterClientBufferManager *this, const CA::StreamDescription *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *this = v3;
  *(this + 1) = v4;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v5 = *(a2 + 7);
  }

  else
  {
    v5 = 1;
  }

  CA::AudioBuffersBase::AudioBuffersBase(this + 5, v6, 1);
  operator new();
}

uint64_t std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

os_unfair_lock_s **std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100](os_unfair_lock_s ***a1, os_unfair_lock_s **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    auoop::WorkgroupPropagator::~WorkgroupPropagator(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

const std::__fs::filesystem::path *std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](const std::__fs::filesystem::path **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    AudioConverterCapturer::~AudioConverterCapturer(result);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void pooledRenderer::AudioConverterOOP::AudioConverterOOP(BaseOpaqueObject *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *(v1 + 12) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F033CC60;
  *(v1 + 40) = 0;
  *(v1 + 80) = 0;
  operator new();
}

void sub_18F63F0CC()
{
  if (v0)
  {
    caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>((v1 - 240));
  }

  JUMPOUT(0x18F63F134);
}

void sub_18F63F0FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    JUMPOUT(0x18F63F124);
  }

  JUMPOUT(0x18F63F134);
}

void sub_18F63F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a71)
  {
    operator delete(a71);
  }

  if (v71)
  {
    operator delete(v71);
  }

  JUMPOUT(0x18F63F18CLL);
}

void sub_18F63F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::optional<swix::connection_config>::~optional(v76 - 240);
  swix::connection_config::~connection_config(&a71);
  MEMORY[0x193ADF220](v71, 0xA1C409BE6959DLL);
  os_unfair_lock_unlock(v75 + 4);
  swix::connection_config::~connection_config(&a39);
  swix::connection_config::~connection_config(&a55);
  std::unique_ptr<auoop::WorkgroupPropagator>::reset[abi:ne200100]((v72 + 408), 0);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager((v72 + 312));
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager((v74 + 1));
  std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100](v74, 0);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v72 + 160));
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100](v73);
  xpc_release(a11);
  MEMORY[0x193ADF220](v72, 0x1060C40E6A37438);
  JUMPOUT(0x18F63F364);
}

void sub_18F63F21C()
{
  std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v1 - 240);
  MEMORY[0x193ADF220](v0, 0x1030C405B15B6DALL);
  JUMPOUT(0x18F63F300);
}

void sub_18F63F384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_18F63F628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AT::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::ChannelSplitterBox::initialize(DSPGraph::ChannelSplitterBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v38 = (this + 32);
    if (*(this + 55) < 0)
    {
      v38 = *v38;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v37, v38, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[7];
  v6 = *(this + 11);
  v7 = *(this + 12);
  if (((v7 - v6) & 0x1FFFFFFFE0) != 0)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = (v7 - v6) >> 5;
    do
    {
      if (v11 <= v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v48, "out");
        v30 = (this + 32);
        if (*(this + 55) < 0)
        {
          v30 = *v30;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, v30, (*(this + 12) - *(this + 11)) >> 5, v9);
      }

      result = (*(*(v6 + v8) + 40))();
      v10 = (*(*(result + 120) + 28) + v10);
      ++v9;
      v6 = *(this + 11);
      v7 = *(this + 12);
      v11 = (v7 - v6) >> 5;
      v8 += 32;
    }

    while (v9 < v11);
  }

  else
  {
    v10 = 0;
  }

  v12 = v4[2];
  if (v12 == 1819304813)
  {
    v13 = v4[3];
    if ((v13 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (v12 != 1718773105 || v4[8] != 64)
    {
LABEL_69:
      std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v48, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v47, "ChannelSplitterBox input format must be non-interleaved float");
      DSPGraph::ThrowException(1718449215, &v49, 3459, &v48, &v47);
    }

    v13 = v4[3];
  }

  if ((v13 & 0x20) == 0)
  {
    goto LABEL_69;
  }

  if (v5 != v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v48, "initialize");
    v46 = (this + 32);
    if (*(this + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("ChannelSplitterBox %s input has %u channels but output has %u channels", v45, v46, v5, v10);
  }

  v14 = v7 - v6;
  if ((v14 & 0x1FFFFFFFE0) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = v14 >> 5;
    do
    {
      if (v17 <= v16)
      {
        std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v48, "out");
        v32 = (this + 32);
        if (*(this + 55) < 0)
        {
          v32 = *v32;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v31, v32, (*(this + 12) - *(this + 11)) >> 5, v16);
      }

      result = (*(*(v6 + v15) + 40))();
      v18 = *(result + 120);
      v19 = v18[2];
      if (v19 == 1819304813)
      {
        v20 = v18[3];
        if ((v20 & 1) == 0 || v18[8] != 32)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v19 != 1718773105 || v18[8] != 64)
        {
LABEL_60:
          std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v48, "initialize");
          v40 = (this + 32);
          if (*(this + 55) < 0)
          {
            v40 = *v40;
          }

          DSPGraph::strprintf("ChannelSplitterBox %s output format must be non-interleaved float in time- of frequency-domain", v39, v40);
        }

        v20 = v18[3];
      }

      if ((v20 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      ++v16;
      v6 = *(this + 11);
      v21 = *(this + 12) - v6;
      v17 = v21 >> 5;
      v15 += 32;
    }

    while (v16 < (v21 >> 5));
    v22 = v21 & 0x1FFFFFFFE0;
    if (v4[2] == 1718773105 && v4[8] == 64)
    {
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        do
        {
          if (v17 <= v24)
          {
            std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(&v48, "out");
            v36 = (this + 32);
            if (*(this + 55) < 0)
            {
              v36 = *v36;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v35, v36, (*(this + 12) - *(this + 11)) >> 5, v24);
          }

          result = (*(*(v6 + v23) + 40))();
          v25 = *(result + 120);
          if (*(v25 + 8) != 1718773105 || *(v25 + 32) != 64)
          {
            std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v48, "initialize");
            v44 = (this + 32);
            if (*(this + 55) < 0)
            {
              v44 = *v44;
            }

            DSPGraph::strprintf("ChannelSplitterBox %s output is in time-domain but input is in frequency-domain", v43, v44);
          }

          ++v24;
          v6 = *(this + 11);
          v17 = (*(this + 12) - v6) >> 5;
          v23 += 32;
        }

        while (v24 < v17);
      }
    }

    else if (v22)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (v17 <= v27)
        {
          std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(&v48, "out");
          v34 = (this + 32);
          if (*(this + 55) < 0)
          {
            v34 = *v34;
          }

          DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, v34, (*(this + 12) - *(this + 11)) >> 5, v27);
        }

        result = (*(*(v6 + v26) + 40))();
        v28 = *(result + 120);
        if (*(v28 + 8) == 1718773105 && *(v28 + 32) == 64)
        {
          std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v48, "initialize");
          v42 = (this + 32);
          if (*(this + 55) < 0)
          {
            v42 = *v42;
          }

          DSPGraph::strprintf("ChannelSplitterBox %s output is in frequency-domain but input is in time-domain", v41, v42);
        }

        ++v27;
        v6 = *(this + 11);
        v17 = (*(this + 12) - v6) >> 5;
        v26 += 32;
      }

      while (v27 < v17);
    }
  }

  return result;
}

void sub_18F63FD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::initialize(AudioUnit *this)
{
  DSPGraph::Box::initialize(this);
  v2 = this[97];
  v4 = this[8];
  v3 = this[9];
  *&v80 = 0;
  v5 = v3 - v4;
  if (v3 == v4)
  {
    goto LABEL_47;
  }

  v6 = v5 >> 5;
  v7 = this[99];
  v8 = this[98];
  v9 = (v8 - v2) >> 3;
  if (v5 >> 5 <= ((v7 - v8) >> 3))
  {
    if (v6 <= v9)
    {
      v17 = this[98];
      v9 = v5 >> 5;
    }

    else
    {
      v13 = 0;
      v14 = ((v5 >> 2) - (v8 - v2) - 8) >> 3;
      v15 = vdupq_n_s64(v14);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_18F9016C0)));
        if (v16.i8[0])
        {
          *(v8 + v13) = 0;
        }

        if (v16.i8[4])
        {
          *(v8 + v13 + 1) = 0;
        }

        v13 += 2;
      }

      while (((v14 + 2) & 0x3FFFFFFFFFFFFFFELL) != v13);
      v17 = (v8 + 8 * (v6 - v9));
      this[98] = v17;
      if (v8 == v2)
      {
        goto LABEL_47;
      }
    }

    v18 = (v2 + 8 * v6);
    v19 = (v17 - 8 * v6);
    v20 = v17;
    if (v19 < v8)
    {
      v20 = v17;
      do
      {
        v21 = *v19++;
        *v20 = v21;
        v20 = (v20 + 8);
      }

      while (v19 < v8);
    }

    this[98] = v20;
    if (v17 != v18)
    {
      memmove(v2 + 8 * v6, v2, v17 - v18);
    }

    v22 = &v80;
    if (v2 <= &v80)
    {
      if (this[98] <= &v80)
      {
        v23 = 0;
      }

      else
      {
        v23 = v6;
      }

      v22 = (&v80 + 8 * v23);
    }

    v24 = 0;
    v25 = *v22;
    v26 = vdupq_n_s64(v9 - 1);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v24), xmmword_18F9016C0)));
      if (v27.i8[0])
      {
        *&v2[v24 / 2] = v25;
      }

      if (v27.i8[4])
      {
        *(&v2[v24 / 2] + 1) = v25;
      }

      v24 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v24);
    goto LABEL_47;
  }

  v10 = v9 + v6;
  if ((v9 + v6) >> 61)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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

    goto LABEL_101;
  }

  v28 = 0;
  v29 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v30 = vdupq_n_s64(v29);
  do
  {
    v31 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_18F9016C0)));
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
  v33 = this[98] - v2;
  memcpy(v32, v2, v33);
  v34 = &v32[v33];
  this[98] = v2;
  v35 = this[97];
  v36 = v2 - v35;
  v37 = (v35 - v2);
  memcpy(v37, v35, v36);
  this[97] = v37;
  this[98] = v34;
  this[99] = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_47:
  v38 = this[100];
  v40 = this[11];
  v39 = this[12];
  *&v80 = 0;
  v41 = v39 - v40;
  if (v39 == v40)
  {
    goto LABEL_93;
  }

  v42 = v41 >> 5;
  v43 = this[102];
  v44 = this[101];
  v45 = (v44 - v38) >> 3;
  if (v41 >> 5 <= ((v43 - v44) >> 3))
  {
    if (v42 <= v45)
    {
      v53 = this[101];
      v45 = v41 >> 5;
    }

    else
    {
      v49 = 0;
      v50 = ((v41 >> 2) - (v44 - v38) - 8) >> 3;
      v51 = vdupq_n_s64(v50);
      do
      {
        v52 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v49), xmmword_18F9016C0)));
        if (v52.i8[0])
        {
          *(v44 + v49) = 0;
        }

        if (v52.i8[4])
        {
          *(v44 + v49 + 1) = 0;
        }

        v49 += 2;
      }

      while (((v50 + 2) & 0x3FFFFFFFFFFFFFFELL) != v49);
      v53 = (v44 + 8 * (v42 - v45));
      this[101] = v53;
      if (v44 == v38)
      {
        goto LABEL_93;
      }
    }

    v54 = (v38 + 8 * v42);
    v55 = (v53 - 8 * v42);
    v56 = v53;
    if (v55 < v44)
    {
      v56 = v53;
      do
      {
        v57 = *v55++;
        *v56 = v57;
        v56 = (v56 + 8);
      }

      while (v55 < v44);
    }

    this[101] = v56;
    if (v53 != v54)
    {
      memmove(v38 + 8 * v42, v38, v53 - v54);
    }

    v58 = &v80;
    if (v38 <= &v80)
    {
      if (this[101] <= &v80)
      {
        v59 = 0;
      }

      else
      {
        v59 = v42;
      }

      v58 = (&v80 + 8 * v59);
    }

    v60 = 0;
    v61 = *v58;
    v62 = vdupq_n_s64(v45 - 1);
    do
    {
      v63 = vmovn_s64(vcgeq_u64(v62, vorrq_s8(vdupq_n_s64(v60), xmmword_18F9016C0)));
      if (v63.i8[0])
      {
        *&v38[v60 / 2] = v61;
      }

      if (v63.i8[4])
      {
        *(&v38[v60 / 2] + 1) = v61;
      }

      v60 += 2;
    }

    while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v60);
    goto LABEL_93;
  }

  v46 = v45 + v42;
  if ((v45 + v42) >> 61)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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

LABEL_101:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v64 = 0;
  v65 = (v42 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v66 = vdupq_n_s64(v65);
  do
  {
    v67 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(vdupq_n_s64(v64), xmmword_18F9016C0)));
    if (v67.i8[0])
    {
      *(8 * v64) = 0;
    }

    if (v67.i8[4])
    {
      *(8 * v64 + 8) = 0;
    }

    v64 += 2;
  }

  while (v65 - ((v42 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v64);
  v68 = (8 * v42);
  v69 = this[101] - v38;
  memcpy(v68, v38, v69);
  v70 = &v68[v69];
  this[101] = v38;
  v71 = this[100];
  v72 = v38 - v71;
  v73 = (v71 - v38);
  memcpy(v73, v71, v72);
  this[100] = v73;
  this[101] = v70;
  this[102] = 0;
  if (v71)
  {
    operator delete(v71);
  }

LABEL_93:
  if (((this[9] - this[8]) & 0x1FFFFFFFE0) != 0)
  {
    v74 = 0;
    do
    {
      LODWORD(v80) = 0;
      (*(*this + 39))(this, 51, 1, v74, 4, &v80);
      v74 = (v74 + 1);
    }

    while (v74 < ((this[9] - this[8]) >> 5));
  }

  if (((this[12] - this[11]) & 0x1FFFFFFFE0) != 0)
  {
    v75 = 0;
    do
    {
      LODWORD(v80) = 0;
      (*(*this + 39))(this, 51, 2, v75, 4, &v80);
      v75 = (v75 + 1);
    }

    while (v75 < ((this[12] - this[11]) >> 5));
  }

  result = AudioUnitInitialize(this[106]);
  if (result)
  {
    v77 = result;
    std::string::basic_string[abi:ne200100]<0>(&v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v79, "initialize");
    std::operator+<char>();
    DSPGraph::ThrowException(v77, &v80, 1987, &v79, &v78);
  }

  return result;
}

void sub_18F640518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::initializeBoxes(DSPGraph::IsoGroup *this)
{
  v17 = *MEMORY[0x1E69E9840];
  *(this + 32) = 0;
  *(this + 36) = 0;
  v2 = *(this + 67);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = *(this + 68);
  }

  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
  }

  v4 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
  v5 = *(this + 28);
  v6 = *(this + 29);
  if (v5 != v6)
  {
    v7 = v4;
    v8 = v4 - 1;
    do
    {
      v9 = *v5;
      (*(**v5 + 112))(*v5, v3);
      if (v2 >= 2)
      {
        (*(*v9 + 120))(v9, 1);
      }

      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
      }

      if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = DSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
        {
          v11 = v9 + 32;
          if (v9[55] < 0)
          {
            v11 = *v11;
          }

          *buf = 136315138;
          v16 = v11;
          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Box::initialize", "%s", buf, 0xCu);
        }
      }

      (*(*v9 + 576))(v9);
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
      }

      if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = DSPGraph::getLog(void)::gLog;
        if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
        {
          v13 = v9 + 32;
          if (v9[55] < 0)
          {
            v13 = *v13;
          }

          *buf = 136315138;
          v16 = v13;
          _os_signpost_emit_with_name_impl(&dword_18F5DF000, v12, OS_SIGNPOST_INTERVAL_END, v7, "Box::initialize", "%s", buf, 0xCu);
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t DSPGraph::Box::initialize(DSPGraph::Box *this)
{
  v1 = *(this + 25);
  v2 = *(this + 26);
  if (v1 != v2)
  {
    v3 = &unk_1EAD30000;
    v4 = &unk_1EAD30000;
    v76 = *(this + 26);
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8);
      v7 = v6[15];
      if (*(v7 + 2) == 1718773105)
      {
        v8 = *(*(*(v6[4] + 16) + 8) + 16);
        if (*(v8 + 268) == 1)
        {
          v9 = *(v8 + 272);
        }

        v10 = *(v7 + 7);
        std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::reserve((v5 + 48), v10);
        if (v10)
        {
          *&v87[0] = 0;
          VPTimeFreqConverter_Create();
        }

        v11 = *(*(*(*(*(v5 + 8) + 32) + 16) + 8) + 16);
        v12 = *(v11 + 268);
        if (v12 == 1)
        {
          v12 = *(v11 + 272);
        }

        DSPGraph::SimpleABL::alloc((v5 + 72), 0, 4 * v12, 0);
        v6 = *(v5 + 8);
        v7 = v6[15];
        v2 = v76;
        v3 = &unk_1EAD30000;
        v4 = &unk_1EAD30000;
      }

      v13 = (v5 + 24);
      if (*(v5 + 47) < 0)
      {
        v13 = *v13;
      }

      v80 = 0;
      memset(v79, 0, sizeof(v79));
      v14 = *v7;
      v15 = *(v7 + 7);
      if (*(v7 + 2) == 1718773105)
      {
        *(&v79[0] + 1) = 0x296C70636DLL;
        *&v79[1] = 0x100000004;
        DWORD2(v79[1]) = 4;
        LODWORD(v80) = 32;
        v6 = *(v5 + 8);
      }

      else
      {
        v16 = v7[4];
        DWORD2(v79[0]) = *(v7 + 2);
        *(v79 + 12) = *(v7 + 12);
        v80 = v16;
      }

      *&v79[0] = v14;
      HIDWORD(v79[1]) = v15;
      v17 = *(v5 + 96);
      v18 = *(*(*(v6[1] + 8) + 8) + 940);
      if (v3[502] != -1)
      {
        dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_6386);
      }

      v19 = v4[501];
      if (v19)
      {
        v20 = v19(v17, 0, v13, v18, 0, v79);
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
        std::string::basic_string[abi:ne200100]<0>(v87, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v86, "initialize");
        std::string::basic_string[abi:ne200100]<0>(inURL, "NewAudioCapturer returned null");
        DSPGraph::ThrowException(1852204065, v87, 255, &v86, inURL);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  v22 = *(this + 28);
  v77 = *(this + 29);
  if (v22 != v77)
  {
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v23 = *v22;
      v24 = *(*v22 + 8);
      v25 = *(v24 + 120);
      if (*(v25 + 8) == 1718773105)
      {
        v26 = *(*(*(*(v24 + 32) + 16) + 8) + 16);
        if (*(v26 + 268) == 1)
        {
          v27 = *(v26 + 272);
        }

        v28 = *(v25 + 28);
        std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::reserve((v23 + 80), v28);
        if (v28)
        {
          *&v87[0] = 0;
          VPTimeFreqConverter_Create();
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
        goto LABEL_69;
      }

      v32 = CFGetTypeID(v31);
      if (v32 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (!inURL[0])
      {
LABEL_69:
        std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v87, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v86, "couldn't convert path to CFURLRef");
        DSPGraph::ThrowException(-4960, v79, 97, v87, &v86);
      }

      outExtAudioFile = 0;
      v33 = ExtAudioFileOpenURL(inURL[0], &outExtAudioFile);
      if (v33)
      {
        std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v87, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v86, "ExtAudioFileOpenURL failed");
        DSPGraph::ThrowException(v33, v79, 102, v87, &v86);
      }

      v34 = outExtAudioFile;
      outPropertyData = 0;
      v84 = outExtAudioFile;
      ioPropertyDataSize = 8;
      Property = ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v87, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v86, "ExtAudioFileGetProperty(FileLengthFrames) failed");
        DSPGraph::ThrowException(Property, v79, 110, v87, &v86);
      }

      v36 = outPropertyData;
      if ((outPropertyData & 0x8000000000000000) != 0)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "numerical cast overflow: could not retain value in conversion type");
        v66->__vftable = (MEMORY[0x1E69E55C0] + 16);
      }

      v37 = *(v23 + 8);
      v38 = *(v37 + 120);
      *(v23 + 36) = *(v38 + 24);
      v39 = *(*(*(*(v37 + 32) + 16) + 8) + 16);
      v40 = *(v39 + 268);
      if (v40 == 1)
      {
        v40 = *(v39 + 272);
      }

      v41 = *(v38 + 28);
      *(v23 + 40) = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36);
      v42 = *(v23 + 36);
      v43 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(v36 + v40);
      v44 = caulk::numeric::exceptional_mul<unsigned int>(v42, v43);
      DSPGraph::SimpleABL::alloc((v23 + 16), v41, v44, 0);
      v45 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, *(*(v23 + 8) + 120));
      if (v45)
      {
        std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v87, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v86, "ExtAudioFileSetProperty(ClientDataFormat) failed");
        DSPGraph::ThrowException(v45, v79, 117, v87, &v86);
      }

      ioNumberFrames = *(v23 + 40);
      v46 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, *(v23 + 16));
      if (v46)
      {
        std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(v87, "readFile");
        std::string::basic_string[abi:ne200100]<0>(&v86, "ExtAudioFileRead failed");
        DSPGraph::ThrowException(v46, v79, 124, v87, &v86);
      }

      v47 = ioNumberFrames;
      *(v23 + 40) = ioNumberFrames;
      v48 = *(*(*(*(*(v23 + 8) + 32) + 16) + 8) + 16);
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

      v84 = 0;
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

    while (v22 != v77);
  }

  (*(*this + 592))(this);
  v56 = *(this + 39);
  v57 = *(this + 40);
  while (v56 != v57)
  {
    v58 = *v56++;
    (*(*v58 + 128))(v58);
  }

  result = (*(*this + 440))(this);
  if ((result & 1) == 0)
  {
    v60 = *(this + 8);
    v61 = *(this + 9);
    if (v60 != v61)
    {
      v62 = *(this + 8);
      do
      {
        result = (*(*v62 + 40))(v62);
        if (*(*(result + 120) + 8) == 1718773105)
        {
          std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(v87, "initialize");
          v68 = (this + 32);
          if (*(this + 55) < 0)
          {
            v68 = *v68;
          }

          v69 = (*(*this + 16))(this);
          DSPGraph::strprintf("frequency data is passed through a No Frequency Safe Box-> %s %s", v70, v68, v69);
        }

        v62 += 32;
        v60 += 32;
      }

      while (v62 != v61);
    }

    v63 = *(this + 11);
    v64 = *(this + 12);
    if (v63 != v64)
    {
      v65 = *(this + 11);
      do
      {
        result = (*(*v65 + 40))(v65);
        if (*(*(result + 120) + 8) == 1718773105)
        {
          std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(v87, "initialize");
          v71 = (this + 32);
          if (*(this + 55) < 0)
          {
            v71 = *v71;
          }

          v72 = (*(*this + 16))(this);
          DSPGraph::strprintf("frequency data is passed through a No Frequency Safe Box-> %s %s", v73, v71, v72);
        }

        v65 += 32;
        v63 += 32;
      }

      while (v65 != v64);
    }
  }

  return result;
}

void sub_18F641324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, OpaqueExtAudioFile *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](&a30);
  applesauce::CF::URLRef::~URLRef(&a14);
  _Unwind_Resume(a1);
}

void DSPGraph::Box::initializeAnalysis(DSPGraph::Box *this)
{
  std::mutex::lock((this + 248));
  v2 = *(this + 39);
  v3 = *(this + 40);
  if (v2 == v3)
  {
    goto LABEL_58;
  }

  v48 = *(this + 40);
  do
  {
    v4 = *(*v2 + 24);
    caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v55) = v4;
    v5 = *(caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v55, 0) + 8);
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v6);
    if (v5 == v4)
    {
      goto LABEL_57;
    }

    v7 = *(*v2 + 80);
    v8 = *(this + 11);
    if (v7 >= (*(this + 12) - v8) >> 5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v54, "out");
      v44 = (this + 32);
      if (*(this + 55) < 0)
      {
        v44 = *v44;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(this + 12) - *(this + 11)) >> 5, v7);
    }

    if (!(*(*(v8 + 32 * v7) + 40))(v8 + 32 * v7))
    {
      std::string::basic_string[abi:ne200100]<0>(&v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v54, "initializeAnalysis");
      std::string::basic_string[abi:ne200100]<0>(&v53, "Box::initializeAnalysis, Port Not Connected to Box.");
      DSPGraph::ThrowException(1970168609, &v55, 155, &v54, &v53);
    }

    v9 = *v2;
    *(*v2 + 16) = this;
    v10 = *(this + 11);
    if (v7 >= (*(this + 12) - v10) >> 5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v54, "out");
      v46 = (this + 32);
      if (*(this + 55) < 0)
      {
        v46 = *v46;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v45, v46, (*(this + 12) - *(this + 11)) >> 5, v7);
    }

    *(v9 + 8) = (*(*(v10 + 32 * v7) + 40))(v10 + 32 * v7);
    v11 = *v2;
    v12 = *(*v2 + 24);
    if (*(this + 86) >= v12 || *(this + 132) <= v12)
    {
      __break(1u);
      return;
    }

    v49 = v2;
    caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    LODWORD(v55) = v12;
    v13 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v55, 0);
    v15 = *(v13 + 8);
    if (v15 == v12)
    {
      goto LABEL_56;
    }

    v16 = v13;
    v17 = v14;
    v18 = v12;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v50 = v18;
    do
    {
      if (v21 == 1)
      {
        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine();
        v22 = 0;
        while (1)
        {
          v23 = &caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22 + 2504;
          if ((atomic_exchange(v23, 1u) & 1) == 0)
          {
            break;
          }

          v22 += 2512;
          if (v22 == 10048)
          {
            v22 = 0;
          }
        }

        v20 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>((&caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine + v22), dword_1EAD30C50);
        atomic_store(0, v23);
        v19 = 3;
      }

      if ((v19 & ~v20) != 0)
      {
        break;
      }

      ++v21;
      v19 *= 4;
    }

    while (v21 != 9);
    v24 = 0;
    while (1)
    {
      v25 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v24];
      if (v25 >= *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v21 - 8])
      {
        break;
      }

      if (++v24 == 10)
      {
        v26 = 0;
        goto LABEL_27;
      }
    }

    v47 = *(this + 72);
    v51 = v47 + 32 * v24 + 48;
    v27 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (v27)
    {
      v26 = v27;
      atomic_fetch_add((v51 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v26 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v47, v25);
    }

LABEL_27:
    v26[12] = v21;
    *(v26 + 13) = 1;
    v26[15] = v21;
    v28 = v50;
    *(v26 + 2) = v50;
    *v26 = v11;
    *(v26 + 3) = 0;
    v52 = (v26 + 24);
    *(v26 + 2) = 0;
    *(v26 + 4) = 0;
    if (v21)
    {
      v29 = (v26 + 32);
      v30 = v21;
      do
      {
        atomic_store(0, v29 - 1);
        atomic_store(0, v29);
        v29 += 2;
        --v30;
      }

      while (v30);
    }

    v31 = 0;
    __dmb(0xBu);
    while (2)
    {
      if (*(v16 + 8) == *(v26 + 2))
      {
        v32 = 0;
        goto LABEL_51;
      }

      while (1)
      {
        v33 = (v16 + 16 * v31 + 24);
        v34 = atomic_load(v33);
        if ((v34 & 2) == 0)
        {
          break;
        }

        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v34 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_41:
        v38 = *(v26 + 2);
        while (1)
        {
          v39 = atomic_load((v16 + 16 * v31 + 24));
          v17 = v39 & 0xFFFFFFFFFFFFFFFCLL;
          if (v38 < *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 8))
          {
            break;
          }

          v40 = atomic_load((v17 + 24));
          if (v40)
          {
            v16 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(this + 336, v31, v16, v17);
            if (!v41)
            {
              caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v17);
            }
          }

          else
          {
            v16 = v17;
          }
        }

        if (*(v16 + 8) == *(v26 + 2))
        {
          v32 = 0;
          goto LABEL_50;
        }
      }

      atomic_store(v17, &v52[2 * v31]);
      v35 = v17;
      atomic_compare_exchange_strong(v33, &v35, v26);
      if (v35 != v17)
      {
        if ((v35 & 2) != 0)
        {
          caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(this + 336, v31, v16, v35 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v36 = atomic_load(v33);
        if (v36)
        {
          do
          {
            v16 = atomic_load((v16 + 16 * v31 + 32));
            v37 = atomic_load((v16 + 16 * v31 + 24));
          }

          while ((v37 & 1) != 0);
        }

        goto LABEL_41;
      }

      v32 = v26;
LABEL_50:
      v28 = v50;
LABEL_51:
      if (v32 | v31)
      {
        v15 = atomic_load(v52);
        if ((v15 & 1) == 0 && ++v31 != v21)
        {
          LODWORD(v55) = v28;
          v16 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(this + 336, &v55, v31);
          v17 = v42;
          continue;
        }
      }

      else
      {
        caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(this + 72), v26, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v26[12] - 8]);
      }

      break;
    }

LABEL_56:
    caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 560, v15);
    v3 = v48;
    v2 = v49;
LABEL_57:
    ++v2;
  }

  while (v2 != v3);
LABEL_58:

  std::mutex::unlock((this + 248));
}

void sub_18F641AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  std::mutex::unlock((v29 + 248));
  _Unwind_Resume(a1);
}

const char *audioipc::eventlink_primitive::activate(uint64_t *a1)
{
  v2 = *a1;
  v3 = os_eventlink_activate();
  if (v3)
  {
    audioipc::log_and_throw("os_eventlink_activate failed", v3);
  }

  v4 = *a1;
  result = os_eventlink_associate();
  if (result)
  {
    audioipc::log_and_throw("os_eventlink_associate failed", result);
  }

  return result;
}

OpaqueAudioComponentInstance *acv2::CodecConverter::CodecSupportsProperty(OpaqueAudioComponentInstance *this, AudioCodecPropertyID a2)
{
  if (this)
  {
    outWritable = 0;
    outSize = 0;
    return (AudioCodecGetPropertyInfo(this, a2, &outSize, &outWritable) == 0);
  }

  return this;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>(caulk::thread::attributes *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  voucher_adopt();
  (*(*v3 + 24))(v3);
  voucher_adopt();
  std::unique_ptr<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>::~unique_ptr[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CheckProperty(int a1, void *a2, const void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a1 <= 1684496751)
  {
    if (a1 <= 1651401827)
    {
      if ((a1 == 1633776744 || a1 == 1633904233) && !a2[5])
      {
        goto LABEL_21;
      }

LABEL_34:
      result = 0;
      goto LABEL_35;
    }

    if (a1 != 1651401828)
    {
      if (a1 != 1668312419 || a2[1])
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

LABEL_20:
    if (*a2)
    {
      goto LABEL_34;
    }

LABEL_21:
    result = 2003329396;
    goto LABEL_35;
  }

  if (a1 > 1832022883)
  {
    if (a1 != 1832022884)
    {
      if (a1 != 1986946671)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    result = 2003329396;
    if (a2[1] && a2[3])
    {
      goto LABEL_34;
    }
  }

  else if (a1 == 1684496752)
  {
    result = 2003329396;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = 0;
        v11[0] = *a2;
        v11[1] = v5;
        while (1)
        {
          v7 = v11[v6];
          v8 = *v7;
          if (v8)
          {
            break;
          }

LABEL_30:
          if (++v6 == 2)
          {
            goto LABEL_34;
          }
        }

        v9 = v7 + 4;
        while (!*(v9 - 1) || *v9)
        {
          v9 += 2;
          if (!--v8)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  else
  {
    if (a1 != 1685218164)
    {
      goto LABEL_34;
    }

    result = 2003329396;
    v4 = *a2;
    if (*a2)
    {
      if (*(v4 + 48) && *(v4 + 64))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = *(a1 + 36);
      caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(v2);
      v4 = *a1;
      v5 = *(a1 + 32);
      *(*a1 + v5 + 8) = 0;
      v6 = v4 + 24 * v5;
      v9 = *(v6 + 2);
      v8 = v6 + 16;
      v7 = v9;
      if (v9)
      {
        *(v8 + 1) = v7;
        operator delete(v7);
      }
    }
  }

  if (*(a1 + 24) == 1)
  {
    os_unfair_lock_unlock(*(a1 + 16));
  }

  return a1;
}

void std::allocator<std::pair<unsigned long long,AudioConverterRenderServer *>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,AudioConverterServer::setup(char const*)::{lambda(void)#1},std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x193ADF220](v2, 0x1032C4045CCBDCCLL);
  }

  return a1;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::copy_previous(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 32);
  if (*(*result + v2 + 8))
  {
    v3 = result;
    v4 = v1 + 24 * v2;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = v6 - v5;
    if (v6 != v5)
    {
      if (!((v7 >> 4) >> 60))
      {
        std::allocator<std::pair<unsigned long long,AudioConverterRenderServer *>>::allocate_at_least[abi:ne200100](v7 >> 4);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0uLL;
    v9 = *(result + 36);
    v10 = v1 + 24 * v9 + 16;
    if (*(v1 + 8 + v9) == 1)
    {
      v11 = *v10;
      if (*v10)
      {
        *(v1 + 24 * v9 + 24) = v11;
        operator delete(v11);
        v8 = 0uLL;
      }
    }

    else
    {
      *(v1 + 8 + v9) = 1;
    }

    *v10 = v8;
    *(v10 + 16) = 0;
    *(v3 + 8) = v10;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TMarshaller<unsigned int>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 4) == 4)
  {
    Marshaller::CheckDest(a1, a3, a4, 4uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_31::operator()<char const*,int,DSPGraph::CalculationBox::OperatorDomain,DSPGraph::CalculationBox::OperatorCodomain,DSPGraph::CalculationBox::Operator>(uint64_t a1, char *a2, int a3)
{
  __p[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 1668183148;
  v5 = a3;
  v6 = 1633841016;
  v7 = 0;
  operator new();
}

void sub_18F642600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t APComponentInstance::selectorToMethodPtr(APComponentInstance *this, std::__shared_weak_count *a2, int a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(this + 19) == 24949)
  {
    v3 = *(this + 14);
    switch(a3)
    {
      case 1:
        break;
      case 2:
        v3 += 8;
        break;
      case 3:
        v3 += 16;
        break;
      case 4:
        v3 += 24;
        break;
      case 5:
        v3 += 32;
        break;
      case 6:
        v3 += 80;
        break;
      case 7:
        v3 += 88;
        break;
      case 9:
        v3 += 104;
        break;
      case 10:
        v3 += 40;
        break;
      case 11:
        v3 += 48;
        break;
      case 14:
        v3 += 112;
        break;
      case 15:
        v3 += 64;
        break;
      case 16:
        v3 += 72;
        break;
      case 17:
        v3 += 96;
        break;
      case 18:
        v3 += 56;
        break;
      case 20:
        v3 += 128;
        break;
      case 21:
        v3 += 136;
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v3;
}

void std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

uint64_t DSPGraph::TimeFreqBox::uninitialize(DSPGraph::TimeFreqBox *this)
{
  DSPGraph::Box::uninitialize(this);
  v2 = *(this + 97);

  return std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](this + 776, v2);
}

uint64_t std::vector<std::unique_ptr<void,int (*)(void *)>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 2);
      v5 -= 2;
      result = v6;
      *v5 = 0;
      if (v6)
      {
        result = (*(v4 - 1))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t VPTimeFreqConverter_Dispose(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      MEMORY[0x193ADF1F0](v2, 0x1000C8052888210);
    }

    v3 = a1[7];
    if (v3)
    {
      MEMORY[0x193ADF1F0](v3, 0x1000C8052888210);
    }

    v4 = a1[20];
    if (v4)
    {
      a1[21] = v4;
      operator delete(v4);
    }

    v5 = a1[17];
    if (v5)
    {
      a1[18] = v5;
      operator delete(v5);
    }

    v6 = a1[14];
    if (v6)
    {
      a1[15] = v6;
      operator delete(v6);
    }

    v7 = a1[11];
    if (v7)
    {
      a1[12] = v7;
      operator delete(v7);
    }

    v8 = a1[8];
    if (v8)
    {
      a1[9] = v8;
      operator delete(v8);
    }

    v9 = a1[5];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    MEMORY[0x193ADF220](a1, 0x10A0C406C6E14A4);
  }

  return 0;
}

uint64_t acv2::CodecConverterFactory::EmploysDependentPackets(AudioComponent *this, unsigned int *a2)
{
  os_unfair_lock_lock(&acv2::sCodecConverterFactoryLocker);
  if (*(this + 68) != 1)
  {
    outInstance = 0;
    v4 = AudioComponentInstanceNew(this[4], &outInstance);
    if (v4)
    {
      goto LABEL_10;
    }

    v8 = 0;
    ioPropertyDataSize = 4;
    Property = AudioCodecGetProperty(outInstance, 0x64706B3Fu, &ioPropertyDataSize, &v8);
    v4 = Property;
    if (Property == 2003332927)
    {
      v6 = 0;
      v8 = 0;
    }

    else
    {
      if (Property)
      {
LABEL_9:
        AudioComponentInstanceDispose(outInstance);
        goto LABEL_10;
      }

      v6 = v8;
    }

    v4 = 0;
    *a2 = v6;
    *(this + 16) = v6;
    *(this + 68) = 1;
    goto LABEL_9;
  }

  v4 = 0;
  *a2 = *(this + 16);
LABEL_10:
  os_unfair_lock_unlock(&acv2::sCodecConverterFactoryLocker);
  return v4;
}

uint64_t SetMatrixCoefficient(uint64_t result, AudioChannelLayout *a2, int a3, int a4, float *a5, float a6)
{
  v6 = *(result + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*(result + 12 + 20 * i) == a3)
      {
        mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
        if (mNumberChannelDescriptions)
        {
          v9 = mNumberChannelDescriptions * i;
          mChannelDescriptions = a2->mChannelDescriptions;
          do
          {
            mChannelLabel = mChannelDescriptions->mChannelLabel;
            ++mChannelDescriptions;
            if (mChannelLabel == a4)
            {
              a5[v9] = a6;
            }

            ++v9;
            --mNumberChannelDescriptions;
          }

          while (mNumberChannelDescriptions);
        }
      }
    }
  }

  return result;
}

uint64_t AudioFormatProperty_BalanceFade(const AudioBalanceFade *a1, unsigned int *a2, float *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  mChannelLayout = a1->mChannelLayout;
  v37 = 0;
  result = AudioFormatProperty_NumberOfChannelsForLayout(mChannelLayout, &v37);
  if (!result)
  {
    v9 = v37;
    if (v37 > 0x40)
    {
      result = 1718449215;
      goto LABEL_104;
    }

    if (v37 >= *a2)
    {
      v10 = *a2;
    }

    else
    {
      v10 = v37;
    }

    *a2 = v10;
    mChannelLayoutTag = mChannelLayout->mChannelLayoutTag;
    if (mChannelLayout->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(mChannelLayout->mChannelBitmap, __dst, v8);
    }

    else if (mChannelLayoutTag)
    {
      result = AudioFormatProperty_ChannelLayoutForTag(mChannelLayoutTag, __dst);
      if (result)
      {
        goto LABEL_104;
      }
    }

    else
    {
      memcpy(__dst, mChannelLayout, 20 * v9 + 12);
    }

    SanitizeAudioChannelLayout(__dst, 0);
    mNumberChannelDescriptions = __dst[0].mNumberChannelDescriptions;
    if (__dst[0].mNumberChannelDescriptions)
    {
      mChannelDescriptions = __dst[0].mChannelDescriptions;
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
            goto LABEL_26;
          }

          if (mChannelLabel != 209)
          {
            goto LABEL_28;
          }

LABEL_25:
          mChannelLabel = 2;
          goto LABEL_28;
        }

        if (mChannelLabel == 301)
        {
          goto LABEL_26;
        }

        if (mChannelLabel == 302)
        {
          goto LABEL_25;
        }

LABEL_28:
        mChannelDescriptions->mChannelLabel = mChannelLabel;
        ++mChannelDescriptions;
        if (!--mNumberChannelDescriptions)
        {
          goto LABEL_29;
        }
      }

      if (mChannelLabel == 42)
      {
        mChannelLabel = 3;
        goto LABEL_28;
      }

      if (mChannelLabel == 206)
      {
LABEL_26:
        mChannelLabel = 1;
        goto LABEL_28;
      }

      if (mChannelLabel != 207)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_29:
    if (v9)
    {
      v15 = __dst[0].mChannelDescriptions;
      while (1)
      {
        v36 = *v15;
        SetDefaultChannelPosition(&v36);
        if (v36.mChannelFlags)
        {
          v16 = fmodf(v36.mCoordinates[0], 360.0);
          if (v16 < 0.0)
          {
            v16 = v16 + 360.0;
          }

          if (v16 > 100.0 && v16 <= 260.0)
          {
            break;
          }
        }

        ++v15;
        if (!--v9)
        {
          goto LABEL_40;
        }
      }

      v18 = 1;
    }

    else
    {
LABEL_40:
      v18 = 0;
    }

    mLeftRightBalance = a1->mLeftRightBalance;
    mBackFrontFade = a1->mBackFrontFade;
    mType = a1->mType;
    if (mType == kAudioBalanceFadeType_EqualPower)
    {
      if (mLeftRightBalance <= -1.0)
      {
        v25 = 0.0;
        v24 = 1.4142;
      }

      else if (mLeftRightBalance >= 1.0)
      {
        v24 = 0.0;
        v25 = 1.4142;
      }

      else
      {
        v30 = __sincos_stret(mLeftRightBalance * 0.785398163 + 0.785398163);
        v25 = v30.__sinval * 1.41421356;
        v24 = v30.__cosval * 1.41421356;
      }

      v27 = 1.0;
      if (v18)
      {
        if (mBackFrontFade <= -1.0)
        {
          v27 = 0.0;
          v29 = 1.4142;
        }

        else if (mBackFrontFade >= 1.0)
        {
          v29 = 0.0;
          v27 = 1.4142;
        }

        else
        {
          v31 = __sincos_stret(mBackFrontFade * 0.785398163 + 0.785398163);
          v27 = v31.__sinval * 1.41421356;
          v29 = v31.__cosval * 1.41421356;
        }
      }

      else
      {
        v29 = 1.0;
      }
    }

    else
    {
      if (mType)
      {
        result = 4294967246;
        goto LABEL_104;
      }

      v22 = mLeftRightBalance + 1.0;
      v23 = 1.0 - mLeftRightBalance;
      if (mLeftRightBalance >= 1.0)
      {
        v23 = 0.0;
      }

      if (mLeftRightBalance >= 0.0)
      {
        v22 = 1.0;
      }

      if (mLeftRightBalance <= 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v23;
      }

      if (mLeftRightBalance <= -1.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v22;
      }

      v26 = mBackFrontFade + 1.0;
      if (mBackFrontFade >= 0.0)
      {
        v26 = 1.0;
      }

      if (mBackFrontFade <= -1.0)
      {
        v26 = 0.0;
      }

      if (v18)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1.0;
      }

      v28 = 1.0 - mBackFrontFade;
      if (mBackFrontFade >= 1.0)
      {
        v28 = 0.0;
      }

      if ((v18 & (mBackFrontFade > 0.0)) != 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 1.0;
      }
    }

    if (!v10)
    {
LABEL_103:
      result = 0;
      goto LABEL_104;
    }

    v32 = __dst[0].mChannelDescriptions;
    while (1)
    {
      v36 = *v32;
      SetDefaultChannelPosition(&v36);
      if (v36.mChannelFlags)
      {
        v33 = fmodf(v36.mCoordinates[0], 360.0);
        if (v33 < 0.0)
        {
          v33 = v33 + 360.0;
        }

        if (v33 > 10.0)
        {
          if (v33 <= 80.0)
          {
            *a3 = v25 * v27;
            goto LABEL_100;
          }

          if (v33 <= 100.0)
          {
            *a3 = v25;
            goto LABEL_100;
          }

          if (v33 <= 170.0)
          {
            *a3 = v25 * v29;
            goto LABEL_100;
          }

          if (v33 <= 190.0)
          {
            *a3 = v29;
            goto LABEL_100;
          }

          if (v33 <= 260.0)
          {
            v34 = v24 * v29;
LABEL_98:
            *a3 = v34;
            goto LABEL_100;
          }

          if (v33 <= 280.0)
          {
            *a3 = v24;
            goto LABEL_100;
          }

          if (v33 <= 350.0)
          {
            v34 = v24 * v27;
            goto LABEL_98;
          }
        }

        *a3 = v27;
      }

      else
      {
        *a3 = 1.0;
      }

LABEL_100:
      ++a3;
      ++v32;
      if (!--v10)
      {
        goto LABEL_103;
      }
    }
  }

LABEL_104:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SanitizeAudioChannelLayout(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= 2)
  {
    v3 = result;
    v4 = result + 12;
    v5 = (result + 28);
    v6 = *(result + 8);
    while ((*(v5 - 3) & 1) != 0 && *(v5 - 2) == 0.0 && *(v5 - 1) == 0.0 && *v5 == 0.0)
    {
      v5 += 5;
      if (!--v6)
      {
        v7 = (v2 + 3) & 0x1FFFFFFFCLL;
        v8 = vdupq_n_s64(v2 - 1);
        v9 = xmmword_18F9016B0;
        v10 = xmmword_18F9016C0;
        v11 = (result + 56);
        v12 = vdupq_n_s64(4uLL);
        do
        {
          v13 = vmovn_s64(vcgeq_u64(v8, v10));
          if (vuzp1_s16(v13, *v8.i8).u8[0])
          {
            *(v11 - 10) = 0;
          }

          if (vuzp1_s16(v13, *&v8).i8[2])
          {
            *(v11 - 5) = 0;
          }

          if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
          {
            *v11 = 0;
            v11[5] = 0;
          }

          v9 = vaddq_s64(v9, v12);
          v10 = vaddq_s64(v10, v12);
          v11 += 20;
          v7 -= 4;
        }

        while (v7);
        break;
      }
    }

    if (a2)
    {
      v14 = 0;
      do
      {
        result = SetDefaultChannelPosition(v4);
        ++v14;
        v4 += 20;
      }

      while (v14 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t acv2::PCMConverterFactory::AddSRC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == *(a1 + 40))
  {
    return 0;
  }

  v5 = *(a1 + 28);
  v6 = *(a1 + 12) & 0x20 | 9;
  v7 = 4 * v5;
  if ((*(a1 + 12) & 0x20) != 0)
  {
    v7 = 4;
  }

  v22 = 0;
  v23 = 1819304813;
  v24 = v6;
  v25 = v7;
  v26 = 1;
  v27 = v7;
  v28 = v5;
  v29 = 32;
  v3 = acv2::PCMConverterFactory::AddPCMToGoal(&v22, a1, a2, a3, 0);
  if (!v3)
  {
    v16 = *a1;
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    *a1 = *(a1 + 40);
    v8 = *(a1 + 28);
    v9 = *(a1 + 52) & 0x20;
    v10 = *(a1 + 12);
    if ((v10 & 0x20) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 28);
      if (!v8)
      {
        v12 = (*(a1 + 32) + 7) >> 3;
        goto LABEL_11;
      }
    }

    v12 = *(a1 + 24) / v11;
LABEL_11:
    v13 = v10 & 0xFFFFFFDF;
    if (v9)
    {
      v8 = 1;
    }

    v14 = v12 * v8;
    *(a1 + 20) = 1;
    *(a1 + 24) = v14;
    *(a1 + 12) = v13 | v9;
    *(a1 + 16) = v14;
    v19 = *a1;
    v21 = *(a1 + 32);
    v20 = *(a1 + 16);
    operator new();
  }

  return v3;
}

void sub_18F6435E8(_Unwind_Exception *a1)
{
  ACAudioSpan::~ACAudioSpan((v1 + 21));
  v3 = v1[20];
  v1[20] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  acv2::AudioConverterBase::~AudioConverterBase(v1);
  MEMORY[0x193ADF220]();
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<Resampler2>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void acv2::SampleRateConverter::ReplaceResampler(acv2::SampleRateConverter *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  v2 = *(this + 37);
  v3 = *(this + 69);
  v6 = *(this + 11);
  if (*(this + 68) != 1835626096 && (*(this + 312) & 1) == 0)
  {
    v4 = *(this + 70);
    v5 = *(this + 38);
    operator new();
  }

  operator new();
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F6440D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<ACOutputBuffer>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[14];
    if (v3)
    {
      v2[15] = v3;
      operator delete(v3);
    }

    ACAudioSpan::~ACAudioSpan((v2 + 1));
    MEMORY[0x193ADF220](v2, 0x1072C402891EA91);
  }

  return a1;
}

uint64_t acv2::SampleRateConverter::SetProperty(acv2::SampleRateConverter *this, int a2, int a3, _DWORD *a4)
{
  result = 1886547824;
  if (a2 <= 1936876392)
  {
    if (a2 == 1835626096)
    {
      if (a3 == 4)
      {
        *(this + 312) = *a4 != 0;
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 != 1886547309)
      {
        v7 = 25441;
        goto LABEL_8;
      }

      if (a3 == 4)
      {
        result = (*(**(this + 20) + 32))(*(this + 20));
        if (!result)
        {
          return result;
        }

        *(this + 70) = *a4;
        (*(**(this + 20) + 48))(*(this + 20));
        return 0;
      }
    }

    return 561211770;
  }

  if (a2 == 1936876401)
  {
    if (a3 != 4)
    {
      return 561211770;
    }

    v10 = *a4;
    if (*a4 <= 0x7Fu)
    {
      if (*(this + 69) != v10)
      {
        *(this + 69) = v10;
      }

LABEL_34:
      acv2::SampleRateConverter::ReplaceResampler(this);
    }

    return 4294967246;
  }

  if (a2 == 1936876400)
  {
    if (a3 != 8)
    {
      return 561211770;
    }

    v11 = *a4;
    if (*a4 >= 0.0 && v11 < 1.0)
    {
      *(this + 38) = v11;
      (*(**(this + 20) + 64))(*(this + 20));
      return 0;
    }

    return 4294967246;
  }

  v7 = 25449;
LABEL_8:
  if (a2 == (v7 | 0x73720000))
  {
    if (a3 == 4)
    {
      v8 = *a4;
      if (*a4 > 1835626095)
      {
        if (v8 != 1852797549)
        {
          v9 = 1835626096;
LABEL_31:
          if (v8 != v9)
          {
            goto LABEL_34;
          }
        }
      }

      else if (v8 != 1650553971)
      {
        v9 = 1818848869;
        goto LABEL_31;
      }

      if (a2 != 1936876393)
      {
        *(this + 68) = v8;
      }

      goto LABEL_34;
    }

    return 561211770;
  }

  return result;
}

void acv2::Resampler2Wrapper::~Resampler2Wrapper(const std::__fs::filesystem::path **this)
{
  *this = &unk_1F03352A0;
  v2 = (this + 3);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 8);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 7);
  v3 = v2;
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  acv2::Resampler2Wrapper::~Resampler2Wrapper(this);

  JUMPOUT(0x193ADF220);
}

const std::__fs::filesystem::path **std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](const std::__fs::filesystem::path **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AudioConverterCapturer::~AudioConverterCapturer(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

void DSPGraph::Graph::~Graph(DSPGraph::Graph *this)
{
  *this = &unk_1F033EA38;
  DSPGraph::Graph::uninitialize(this);
  DSPGraph::Graph::unconfigure(this);
  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 568))(i[2]);
  }

  for (j = *(this + 8); j; j = *j)
  {
    v4 = j[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 9))
  {
    v5 = *(this + 8);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(this + 8) = 0;
    v7 = *(this + 7);
    if (v7)
    {
      for (k = 0; k != v7; ++k)
      {
        *(*(this + 6) + 8 * k) = 0;
      }
    }

    *(this + 9) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Graph::profiler_t>>>::~__hash_table(this + 1056);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](this + 1024);
  std::unique_ptr<DSPGraph::Graph::profiler_t>::reset[abi:ne200100](this + 127, 0);
  v14 = (this + 992);
  std::vector<DSPGraph::Graph::GraphBridge>::__destroy_vector::operator()[abi:ne200100](&v14);
  *(this + 118) = &unk_1F033EA98;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 952);
  v14 = (this + 904);
  std::vector<std::unique_ptr<DSPGraph::Subset>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 784);
  std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Graph>>::reset[abi:ne200100](this + 85, 0);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 640);
  std::__hash_table<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 600);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphProperty>>>::~__hash_table(this + 560);
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::Graph::GraphParameter>>>::~__hash_table(this + 520);
  v9 = *(this + 62);
  if (v9)
  {
    *(this + 63) = v9;
    operator delete(v9);
  }

  v10 = *(this + 59);
  if (v10)
  {
    *(this + 60) = v10;
    operator delete(v10);
  }

  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  v11 = *(this + 38);
  if (v11)
  {
    *(this + 39) = v11;
    operator delete(v11);
  }

  v12 = *(this + 35);
  if (v12)
  {
    *(this + 36) = v12;
    operator delete(v12);
  }

  v13 = *(this + 32);
  if (v13)
  {
    *(this + 33) = v13;
    operator delete(v13);
  }

  std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::~__hash_table(this + 216);
  v14 = (this + 192);
  std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::mutex::~mutex(this + 2);
  std::__hash_table<std::unique_ptr<DSPGraph::Box>,std::hash<std::unique_ptr<DSPGraph::Box>>,std::equal_to<std::unique_ptr<DSPGraph::Box>>,std::allocator<std::unique_ptr<DSPGraph::Box>>>::~__hash_table(this + 8);
}

{
  DSPGraph::Graph::~Graph(this);

  JUMPOUT(0x193ADF220);
}

OpaqueAudioComponentInstance *DSPGraph::AUBox::close(DSPGraph::AUBox *this)
{
  result = *(this + 106);
  if (result)
  {
    result = AudioComponentInstanceDispose(result);
    *(this + 106) = 0;
    if (result)
    {
      v3 = result;
      std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v5, "close");
      std::operator+<char>();
      DSPGraph::ThrowException(v3, &v6, 1963, &v5, &v4);
    }
  }

  return result;
}

void sub_18F64475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void TSimpleMarshaller<unsigned int>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

BOOL TMarshaller<unsigned int>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 4;
}

uint64_t CAFAudioFile::WriteChunkHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= 0)
  {
    v5 -= 12;
  }

  v7 = bswap32(*a2);
  v8 = bswap64(v5);
  return (*(**(a1 + 104) + 56))(*(a1 + 104), 0, v4, 12, &v7, a3);
}

uint64_t pooledRenderer::AudioConverterOOP::reset(pooledRenderer::AudioConverterOOP *this, double a2)
{
  v3 = *(this + 11);
  v4 = *(v3 + 168);
  if (v4)
  {
    v5 = 0;
LABEL_3:
    v6 = AudioConverterRenderClient::sendReset(v4, a2);
    goto LABEL_8;
  }

  v5 = *(v3 + 8);
  v7 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v5, 1);
  v4 = v7;
  if (v8)
  {
    AudioConverterRenderClient::setConfiguration(v7, v3 + 24);
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

  else
  {
    v6 = v7;
    v4 = 0;
  }

LABEL_8:
  if (v5)
  {
    ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v5, v4);
  }

  v9 = *(this + 11);
  *(*(v9 + 256) + 60) = 0;
  *(v9 + 264) = 0;
  *(v9 + 292) = 0;
  *(v9 + 304) = 0;
  return v6;
}

void sub_18F644970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v1, v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioConverterRenderClient::sendReset(AudioConverterRenderClient *this, double a2)
{
  v3 = *(this + 34);
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(this + 8, a2);
  v5 = can_send;
  v6 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    *v3 = 3;
    v7 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(this + 8);
    v5 = v7;
    v6 = HIDWORD(v7);
  }

  if (!v6)
  {
    v8 = 560164718;
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (!message)
    {
      return v8;
    }

    v11 = message;
    v12 = _os_log_pack_fill();
    v13 = *(this + 48);
    *v12 = 134218240;
    *(v12 + 4) = v13;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v5;
    v14 = *(gAudioConverterDeferredLog + 16);
    v15 = v11;
LABEL_11:
    caulk::concurrent::messenger::enqueue(v14, v15);
    return v8;
  }

  if (!v5)
  {
    v8 = 561277293;
    v16 = _os_log_pack_size();
    v17 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
    if (!v17)
    {
      return v8;
    }

    v18 = v17;
    v19 = _os_log_pack_fill();
    v20 = *(this + 48);
    *v19 = 134217984;
    *(v19 + 4) = v20;
    v14 = *(gAudioConverterDeferredLog + 16);
    v15 = v18;
    goto LABEL_11;
  }

  return *(v3 + 4);
}

BOOL acv2::CodecConverter::ConverterSupportsProperty(OpaqueAudioComponentInstance **this, AudioCodecPropertyID a2)
{
  if (acv2::CodecConverter::CodecSupportsProperty(this[21], a2))
  {
    return 1;
  }

  v5 = this[90];
  if (!v5)
  {
    return 0;
  }

  outWritable = 0;
  outDataSize = 0;
  return AudioUnitGetPropertyInfo(*(v5 + 1), a2, 0, 0, &outDataSize, &outWritable) == 0;
}

uint64_t pooledRenderer::AudioConverterOOP::setProperty(pooledRenderer::AudioConverterOOP *this, unsigned int a2, const void *a3, _DWORD *a4)
{
  v5 = a3;
  v51[1] = *MEMORY[0x1E69E9840];
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    *buf_4 = 2753;
    *&buf_4[4] = a2;
    *&buf_4[12] = 0;
    *&buf_4[20] = 0;
    v50 = 0;
    kdebug_trace();
    v42 = 2753;
    v43 = a2;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    LOBYTE(buf) = 0;
    AT::ScopedTrace::~ScopedTrace(&buf);
    v8 = 1;
  }

  v41[0] = v8;
  v47 = v8;
  if (a4)
  {
    switch(a2)
    {
      case 0x726E6472u:
        if (v5 == 4)
        {
          v16 = *(this + 11);
          if (*a4)
          {
            v17 = 0;
            v18 = 0;
          }

          else
          {
            v17 = *(v16 + 68);
            v18 = *(v16 + 124);
          }

          v24 = 0;
          v25 = v16 + 24;
          buf = v17;
          *buf_4 = v18;
          v51[0] = 0x100000000;
          do
          {
            *(v25 + 56 * *(v51 + v24) + 44) = *&buf_4[4 * *(v51 + v24) - 4];
            v24 += 4;
          }

          while (v24 != 8);
        }

        goto LABEL_28;
      case 0x72667368u:
        v11 = 0;
        *(*(this + 11) + 417) = *a4 == 1;
        goto LABEL_36;
      case 0x646D6763u:
        if (v5)
        {
          v9 = *(*(this + 11) + 152);
          if (v9)
          {
            AudioConverterCapturer::setDecompressionCookie(v9, a4, v5);
          }
        }

        break;
    }

    v10 = CheckProperty(a2, a4, a3);
    if (v10)
    {
      v11 = v10;
      v12 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v12 + 88, 16);
      if (message)
      {
        v14 = message;
        v15 = _os_log_pack_fill();
        *v15 = 134218496;
        *(v15 + 4) = this;
        *(v15 + 12) = 1024;
        *(v15 + 14) = a2;
        *(v15 + 18) = 1024;
        *(v15 + 20) = v11;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v14);
      }

      goto LABEL_36;
    }

    if (a2 != 1970103906)
    {
      PropertyMarshaller::PropertyMarshaller(&buf, 0);
    }

    if (v5 != 4)
    {
      v11 = 561211770;
      goto LABEL_36;
    }

    v11 = 560164718;
    v19 = atomic_load((*(this + 11) + 416));
    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }

    v20 = *(this + 11);
    v21 = *(v20 + 208);
    if (*a4)
    {
      if (!v21)
      {
        v22 = *MEMORY[0x1E69E9AC8];
        v23 = *(v20 + 200);
        operator new();
      }

      goto LABEL_28;
    }

    if (!v21)
    {
LABEL_28:
      v11 = 0;
      goto LABEL_36;
    }

    v26 = *(v20 + 16);
    v27 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v26, 1);
    v28 = v27;
    if (v29)
    {
      v30 = atomic_load((*(this + 11) + 416));
      v31 = v27;
      if (v30)
      {
        if (!v27)
        {
          v31 = 0;
LABEL_46:
          std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((*(this + 11) + 208), 0);
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v36 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            *buf_4 = "AudioConverterOOP.cpp";
            *&buf_4[8] = 1024;
            *&buf_4[10] = 1044;
            *&buf_4[14] = 2048;
            *&buf_4[16] = this;
            _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Stopped using messenger for bundle data", &buf, 0x1Cu);
          }

          v11 = 0;
          goto LABEL_54;
        }

        v31 = v27;
        v28 = AudioConverterXPC_Client::stopMessengerForProperties(v27, *(*(this + 11) + 208));
        if (HIDWORD(v28))
        {
          goto LABEL_46;
        }

LABEL_40:
        if (v28)
        {
          v11 = v28;
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v35 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            buf = 136315650;
            *buf_4 = "AudioConverterOOP.cpp";
            *&buf_4[8] = 1024;
            *&buf_4[10] = 1047;
            *&buf_4[14] = 2048;
            *&buf_4[16] = this;
            _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP -> %p: Unable to stop using messenger for bundle data", &buf, 0x1Cu);
          }

          goto LABEL_54;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v31 = 0;
      v34 = atomic_load((*(this + 11) + 416));
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_54:
    if (v26)
    {
      ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v26, v31);
    }

    goto LABEL_36;
  }

  v37 = _os_log_pack_size();
  v38 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v37 + 88, 16);
  if (v38)
  {
    v39 = v38;
    v40 = _os_log_pack_fill();
    *v40 = 67109120;
    v40[1] = a2;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v39);
  }

  v11 = 4294967246;
LABEL_36:
  if (v47 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v41);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18F645484(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioCodecUninitialize(AudioCodec inCodec)
{
  if (!inCodec)
  {
    return -50;
  }

  v1 = (*(*inCodec + 8))(inCodec);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  v3 = *(*((**v1)(v1) + 112) + 32);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

uint64_t CAFAudioFile::CalcSoundDataAlign(CAFAudioFile *this)
{
  v2 = *(this + 40);
  outPropertyData = *(this + 24);
  v24 = v2;
  v25 = *(this + 7);
  ioPropertyDataSize = 40;
  result = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData);
  if (result == 1718449215 && *(this + 11) && !*(this + 10))
  {
    v6 = *(this + 40);
    outPropertyData = *(this + 24);
    v24 = v6;
    v25 = *(this + 7);
    v4 = DWORD1(v6);
  }

  else if (result || v24 || (v4 = DWORD1(v24)) == 0)
  {
    v5 = 4096;
    goto LABEL_21;
  }

  v7 = 2.0;
  if (DWORD2(outPropertyData) == 1634492771)
  {
    v7 = 3.0;
  }

  v8 = vcvtpd_s64_f64(*(this + 25) * (*&outPropertyData / v4 * v7));
  v20 = 0;
  v21 = 0;
  v9 = *(this + 18);
  v10 = *(this + 19) - v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    v13 = 1;
    do
    {
      v14 = (v9 + 24 * v11);
      v15 = *v14;
      v16 = v14[2];
      if (v15 == 1718773093)
      {
        v17 = &v21;
      }

      else
      {
        if (v15 == 1684108385)
        {
          break;
        }

        v17 = &v20;
      }

      *v17 += v16;
      v11 = v13;
    }

    while (v12 > v13++);
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  v5 = (v8 + 4120 + v19) & 0xFFFFFFFFFFFFF000;
LABEL_21:
  *(this + 24) = v5;
  return result;
}

uint64_t AudioFormatProperty_FormatInfo(uint64_t a1, const void *a2, AudioStreamBasicDescription *a3)
{
  mFormatID = a3->mFormatID;
  if (mFormatID > 1819304812)
  {
    if (mFormatID == 1970037111)
    {
      Property = 0;
      a3->mBitsPerChannel = 8;
      mChannelsPerFrame = a3->mChannelsPerFrame;
      a3->mFramesPerPacket = 1;
      a3->mBytesPerFrame = mChannelsPerFrame;
      a3->mBytesPerPacket = mChannelsPerFrame;
      v8 = 1970037111;
      goto LABEL_30;
    }

    if (mFormatID != 1819304813)
    {
      goto LABEL_14;
    }

    a3->mFramesPerPacket = 1;
    mBitsPerChannel = a3->mBitsPerChannel;
    if (!mBitsPerChannel)
    {
      return 0;
    }

    v10 = a3->mChannelsPerFrame;
    if (!v10)
    {
      return 0;
    }

    mFormatFlags = a3->mFormatFlags;
    if ((mFormatFlags & 8) != 0)
    {
      if ((mBitsPerChannel & 7) != 0)
      {
        return 1718449215;
      }

      Property = 0;
      v27 = mBitsPerChannel >> 3;
      if ((mFormatFlags & 0x20) != 0)
      {
        v10 = 1;
      }

      mBytesPerFrame = v27 * v10;
      a3->mBytesPerFrame = mBytesPerFrame;
    }

    else
    {
      mBytesPerFrame = a3->mBytesPerFrame;
      mBytesPerPacket = a3->mBytesPerPacket;
      if (!mBytesPerFrame)
      {
        Property = 0;
        a3->mBytesPerFrame = mBytesPerPacket;
        return Property;
      }

      if (mBytesPerPacket)
      {
        if (mBytesPerFrame == mBytesPerPacket)
        {
          return 0;
        }

        return 1718449215;
      }

      Property = 0;
    }

    a3->mBytesPerPacket = mBytesPerFrame;
    return Property;
  }

  if (mFormatID == 1634492791)
  {
    Property = 0;
    a3->mBitsPerChannel = 8;
    v21 = a3->mChannelsPerFrame;
    a3->mFramesPerPacket = 1;
    a3->mBytesPerFrame = v21;
    a3->mBytesPerPacket = v21;
    v8 = 1634492791;
    goto LABEL_30;
  }

  if (mFormatID == 1768775988)
  {
    Property = 0;
    a3->mBitsPerChannel = 0;
    *&a3->mFramesPerPacket = 64;
    a3->mBytesPerPacket = 34 * a3->mChannelsPerFrame;
    v8 = 1768775988;
LABEL_30:
    *&a3->mFormatID = v8;
    return Property;
  }

LABEL_14:
  v37 = 1969977198;
  v14 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(mFormatID, &v37);
  inCodec[0] = 0;
  if (OpenCodecComponent(v14, inCodec, 0x61646563u))
  {
    if (OpenCodecComponent(v14, inCodec, 0x61656E63u))
    {
      v15 = OpenCodecComponent(v14, inCodec, 0x61636463u);
      if (v15)
      {
        goto LABEL_19;
      }
    }
  }

  *v36 = inCodec[0];
  outSize = 0;
  outWritable = 0;
  if (AudioCodecGetPropertyInfo(inCodec[0], 0x61636669u, &outSize, &outWritable))
  {
    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(v36);
LABEL_19:
    if (!a1 || !a2)
    {
      goto LABEL_49;
    }

    v16 = *&a3->mBytesPerPacket;
    *&outPropertyData.mASBD.mSampleRate = *&a3->mSampleRate;
    *&outPropertyData.mASBD.mBytesPerPacket = v16;
    v17 = *&a3->mBitsPerChannel;
    outPropertyData.mASBD.mFormatID = v14;
    *&outPropertyData.mASBD.mBitsPerChannel = v17;
    outPropertyData.mMagicCookie = a2;
    outPropertyData.mMagicCookieSize = a1;
    v36[0] = 0;
    Property = AudioFormatProperty_FormatListSize(&outPropertyData, 0x38u, v36);
    if (!Property)
    {
      Property = 2003329396;
      if (v36[0] >= 0x30)
      {
        std::vector<unsigned char>::vector[abi:ne200100](inCodec, v36[0]);
        v18 = inCodec[0];
        v19 = AudioFormatProperty_FormatList(&outPropertyData, 0x38u, v36, inCodec[0]);
        Property = v19;
        if (v19 == -9405 || v19 == 2003332927)
        {
          v20 = 1;
        }

        else if (v19)
        {
          v20 = 0;
        }

        else if (v36[0] >= 0x30)
        {
          v29 = v18 + 48 * (v36[0] / 0x30);
          v30 = *(v29 - 3);
          v31 = *(v29 - 2);
          *&a3->mBitsPerChannel = *(v29 - 2);
          *&a3->mSampleRate = v30;
          *&a3->mBytesPerPacket = v31;
          v20 = 0;
          Property = 0;
          if (v37 != 1969977198)
          {
            a3->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a3->mFormatID, v37);
          }
        }

        else
        {
          v20 = 0;
          Property = 2003329396;
        }

        v15 = inCodec[0];
        if (inCodec[0])
        {
          inCodec[1] = inCodec[0];
          operator delete(inCodec[0]);
        }

        if (v20)
        {
LABEL_49:
          RegistryAccess::instance(v15);
          v28 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          Property = (*(*v28 + 88))(v28, a1, a2, a3);
          os_unfair_recursive_lock_unlock();
        }
      }
    }

    return Property;
  }

  v24 = *&a3->mBytesPerPacket;
  *&outPropertyData.mASBD.mSampleRate = *&a3->mSampleRate;
  *&outPropertyData.mASBD.mBytesPerPacket = v24;
  v25 = *&a3->mBitsPerChannel;
  outPropertyData.mASBD.mFormatID = v14;
  *&outPropertyData.mASBD.mBitsPerChannel = v25;
  outPropertyData.mMagicCookie = a2;
  outPropertyData.mMagicCookieSize = a1;
  outSize = 56;
  Property = AudioCodecGetProperty(*v36, 0x61636669u, &outSize, &outPropertyData);
  if (!Property)
  {
    v26 = *&outPropertyData.mASBD.mBytesPerPacket;
    *&a3->mSampleRate = *&outPropertyData.mASBD.mSampleRate;
    *&a3->mBytesPerPacket = v26;
    *&a3->mBitsPerChannel = *&outPropertyData.mASBD.mBitsPerChannel;
    if (v37 != 1969977198)
    {
      a3->mFormatID = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(a3->mFormatID, v37);
    }
  }

  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(v36);
  return Property;
}

void sub_18F645C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileObject::DoCreate(AudioFileObject *this, const AudioStreamBasicDescription *a2, AudioStreamBasicDescription *a3, char a4)
{
  if (!AudioFileObject::IsDataFormatValid(a3, a2) || !(*(*this + 624))(this, a3))
  {
    return 1718449215;
  }

  *(this + 100) = 3;
  *(this + 138) = (a4 & 2) == 0;
  v8 = *(*this + 16);

  return v8(this, a2, a3);
}

uint64_t CAFAudioFile::Create(CAFAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AudioFileObject::Create(this, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "CAFAudioFile.cpp";
      v12 = 1024;
      v13 = 1133;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  Couldn't create a new audio file object";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, &v10, 0x12u);
    }
  }

  else
  {
    v5 = CAFAudioFile::InitializeCAFChunks(this);
    if (v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "CAFAudioFile.cpp";
      v12 = 1024;
      v13 = 1136;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  InitializeCAFChunks";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t AudioFileObject::Create(AudioFileObject *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v5 = AudioFileObject::CreateDataFile(this, a2, &v9);
  if (!v5)
  {
    AudioFileObject::SetURL(this, a2);
    AudioFileObject::OpenFile(this);
  }

  v6 = v5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "AudioFileObject.cpp";
    v12 = 1024;
    v13 = 53;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CreateDataFile failed", buf, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t auoop::WorkgroupPropagator::WorkgroupPropagator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = a2;
  v5 = a1 + 8;
  v6 = (a3 + 24);
  v7 = *(a3 + 24);
  if (!v7)
  {
    v6 = (a1 + 32);
    goto LABEL_5;
  }

  if (v7 != a3)
  {
    *(a1 + 32) = v7;
LABEL_5:
    *v6 = 0;
    goto LABEL_7;
  }

  *(a1 + 32) = v5;
  (*(**v6 + 24))(*v6, v5);
  v3 = *a1;
LABEL_7:
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  os_unfair_lock_lock((v3 + 32));
  v9 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v9 >= v8)
  {
    v11 = *(v3 + 40);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v9 - v11) >> 3;
    v18 = (8 * v13);
    v19 = (8 * v13 - 8 * v17);
    *v18 = a1;
    v10 = v18 + 1;
    memcpy(v19, v11, v12);
    *(v3 + 40) = v19;
    *(v3 + 48) = v10;
    *(v3 + 56) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = a1;
    v10 = v9 + 1;
  }

  *(v3 + 48) = v10;
  os_unfair_lock_unlock((v3 + 32));
  os_unfair_lock_lock(v3);
  v21 = 0uLL;
  v22 = 0;
  std::vector<auoop::TrackedWorkgroup>::__init_with_size[abi:ne200100]<auoop::TrackedWorkgroup*,auoop::TrackedWorkgroup*>(&v21, *(v3 + 8), *(v3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 16) - *(v3 + 8)) >> 3));
  os_unfair_lock_unlock(v3);
  v23 = v21;
  v24 = v22;
  v25 = &v21;
  v22 = 0;
  v21 = 0uLL;
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&v25);
  auoop::WorkgroupPropagator::propagate(a1, &v23);
  *&v21 = &v23;
  std::vector<auoop::TrackedWorkgroup>::__destroy_vector::operator()[abi:ne200100](&v21);
  return a1;
}